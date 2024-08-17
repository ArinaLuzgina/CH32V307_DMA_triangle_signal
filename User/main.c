/********************************** (C) COPYRIGHT *******************************
* File Name          : main.c
* Author             : WCH
* Version            : V1.0.0
* Date               : 2021/06/06
* Description        : Main program body.
*********************************************************************************
* Copyright (c) 2021 Nanjing Qinheng Microelectronics Co., Ltd.
* Attention: This software (modified or not) and binary are used for 
* microcontroller manufactured by Nanjing Qinheng Microelectronics.
*******************************************************************************/

/*
 *@Note
 *Example routine to emulate a simulate USB-CDC Device, USE USART2(PA2/PA3);
 *Please note: This code uses the default serial port 1 for debugging,
 *if you need to modify the debugging serial port, please do not use USART2
*/


#include "UART.h"
#include "debug.h"
#include "cdc_func.h"

/* Global define */
#define TIM7_CNT 0x40001424 
#define TIM2_CNT 0x40000024
#define DAC_R8BDHR1 0x40007410
#define Buf_Size    512
/* Global Variable */
volatile u16 buf = 0,buf2=123;
struct bufferInput
{
    u16 timeUp;
    u16 timeDown;
    u16 iter;
    u16 amplitude;
};

u16 buffer[Buf_Size] = {};
// u32 SRC_BUF[Buf_Size] = {0x01020304, 0x05060708, 0x090A0B0C, 0x0D0E0F10,
//                          0x11121314, 0x15161718, 0x191A1B1C, 0x1D1E1F20,
//                          0x21222324, 0x25262728, 0x292A2B2C, 0x2D2E2F30,
//                          0x31323334, 0x35363738, 0x393A3B3C, 0x3D3E3F40,
//                          0x41424344, 0x45464748, 0x494A4B4C, 0x4D4E4F50,
//                          0x51525354, 0x55565758, 0x595A5B5C, 0x5D5E5F60,
//                          0x61626364, 0x65666768, 0x696A6B6C, 0x6D6E6F70,
//                          0x71727374, 0x75767778, 0x797A7B7C, 0x7D7E7F80};

// u32 DST_BUF[Buf_Size] = {0};
u8  Flag = 0;
uint16_t cnt = 1;
TIM_TimeBaseInitTypeDef TIM_TimeBaseInitStructure = {0};
u16 up_Time_period = 255;
u16 down_Time_period = 3;

// void Dac_Init(void)
// {
//     GPIO_InitTypeDef GPIO_InitStructure = {0};
//     DAC_InitTypeDef  DAC_InitType = {0};

//     RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOA, ENABLE);
//     RCC_APB1PeriphClockCmd(RCC_APB1Periph_DAC, ENABLE);

//     GPIO_InitStructure.GPIO_Pin = GPIO_Pin_4;
//     GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AIN;
//     GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
//     GPIO_Init(GPIOA, &GPIO_InitStructure);
//     GPIO_SetBits(GPIOA, GPIO_Pin_4);

//     DAC_InitType.DAC_Trigger = DAC_Trigger_T7_TRGO;
//     DAC_InitType.DAC_WaveGeneration = DAC_WaveGeneration_Triangle;
//     DAC_InitType.DAC_LFSRUnmask_TriangleAmplitude = DAC_TriangleAmplitude_4095;
//     DAC_InitType.DAC_OutputBuffer = DAC_OutputBuffer_Disable;
//     DAC_Init(DAC_Channel_1, &DAC_InitType);
//     /* TEN = 1 */
//     DAC->CTLR |= 0x04;
//     DAC_Cmd(DAC_Channel_1, ENABLE);

//     DAC_SetChannel1Data(DAC_Align_8b_R, 0);
// }

/*********************************************************************
 * @fn      DMA2_CH4_Init
 *
 * @brief   Initializes Channel4 of DMA2 collection.
 *
 * @return  none
 */

void DMA2_CH4_Init(void)
{
    DMA_InitTypeDef DMA_InitStructure = {0};
    RCC_AHBPeriphClockCmd(RCC_AHBPeriph_DMA2, ENABLE);

    DMA_StructInit(&DMA_InitStructure);
    // DMA_InitStructure.DMA_PeripheralBaseAddr = (u32)(&(TIM2->CNT));
    // DMA_InitStructure.DMA_PeripheralBaseAddr = (u32)((0x40020448));
    DMA_InitStructure.DMA_PeripheralBaseAddr = (u32)((buffer));

    DMA_InitStructure.DMA_MemoryBaseAddr = (u32)(&(DAC->R12BDHR1));
    // DMA_InitStructure.DMA_MemoryBaseAddr = (u32)(&buf);
    DMA_InitStructure.DMA_DIR = DMA_DIR_PeripheralSRC;
    DMA_InitStructure.DMA_BufferSize = Buf_Size;
    DMA_InitStructure.DMA_PeripheralInc = DMA_PeripheralInc_Enable;
    DMA_InitStructure.DMA_MemoryInc = DMA_MemoryInc_Disable;
    DMA_InitStructure.DMA_PeripheralDataSize = DMA_PeripheralDataSize_HalfWord;
    DMA_InitStructure.DMA_MemoryDataSize = DMA_MemoryDataSize_HalfWord;
    DMA_InitStructure.DMA_Mode = DMA_Mode_Normal;
    DMA_InitStructure.DMA_Priority = DMA_Priority_VeryHigh;
    DMA_InitStructure.DMA_M2M = DMA_M2M_Disable;
    DMA_Init(DMA2_Channel4, &DMA_InitStructure);
    DMA_ClearFlag(DMA2_FLAG_TC4);
    // TIM_DMACmd(TIM7, TIM_DMA_Update, ENABLE);
    DMA_ITConfig(DMA2_Channel4, DMA_IT_HT | DMA_IT_TC, ENABLE);
    DMA_ClearFlag(DMA2_FLAG_HT4);

    NVIC_ClearPendingIRQ(DMA2_Channel4_IRQn);
    NVIC_EnableIRQ(DMA2_Channel4_IRQn);
    DMA_Cmd(DMA2_Channel4, ENABLE);
}

/*********************************************************************
 * @fn      Dac_Init
 *
 * @brief   Initializes DAC collection.
 *
 * @return  none
 */

void Dac_Init(void)
{
    GPIO_InitTypeDef GPIO_InitStructure = {0};
    DAC_InitTypeDef  DAC_InitType = {0};

    RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOA, ENABLE);
    RCC_APB1PeriphClockCmd(RCC_APB1Periph_DAC, ENABLE);

    GPIO_InitStructure.GPIO_Pin = GPIO_Pin_4;
    GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AIN;
    GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
    GPIO_Init(GPIOA, &GPIO_InitStructure);
    GPIO_SetBits(GPIOA, GPIO_Pin_4);

    DAC_InitType.DAC_Trigger = DAC_Trigger_None;
    DAC_InitType.DAC_WaveGeneration = DAC_WaveGeneration_None;
    DAC_InitType.DAC_LFSRUnmask_TriangleAmplitude = DAC_LFSRUnmask_Bit0;
    DAC_InitType.DAC_OutputBuffer = DAC_OutputBuffer_Disable;
    DAC_Init(DAC_Channel_1, &DAC_InitType);
    DAC_Cmd(DAC_Channel_1, ENABLE);

    DAC_SetChannel1Data(DAC_Align_12b_R, 0);

}


void TIM1_PWM_In(u16 arr, u16 psc)
{
    GPIO_InitTypeDef        GPIO_InitStructure = {0};

    RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOA|RCC_APB2Periph_TIM1, ENABLE);
    RCC_APB1PeriphClockCmd(RCC_APB1Periph_TIM7,ENABLE);

    GPIO_InitStructure.GPIO_Pin = GPIO_Pin_4;
    GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AIN;
    GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
    GPIO_Init(GPIOA, &GPIO_InitStructure);

    TIM_TimeBaseInitStructure.TIM_Period = arr;
    TIM_TimeBaseInitStructure.TIM_Prescaler = psc;
    TIM_TimeBaseInitStructure.TIM_ClockDivision = TIM_CKD_DIV1;
    TIM_TimeBaseInitStructure.TIM_CounterMode = TIM_CounterMode_Up;
    TIM_TimeBaseInit(TIM7, &TIM_TimeBaseInitStructure);
    TIM_TimeBaseInit(TIM1, &TIM_TimeBaseInitStructure);




//    TIM_OC1PreloadConfig(TIM7, TIM_OCPreload_Disable);
    TIM_ARRPreloadConfig(TIM7, ENABLE);
    TIM_SelectOutputTrigger(TIM7, TIM_TRGOSource_Update);//TIM_TRGOSource_Reset

    //TIM_DMAConfig(TIM7, TIM_DMABase_CNT, TIM_DMABurstLength_1Transfer);
    TIM_DMACmd(TIM7, TIM_DMA_Update, ENABLE);
	// NVIC_EnableIRQ( TIM7_IRQn );

    TIM_Cmd(TIM7, ENABLE);
    TIM_Cmd(TIM1, ENABLE);
}





/*********************************************************************
 * @fn      main
 *
 * @brief   Main program.
 *
 * @return  none
 */
int main(void)
{
	NVIC_PriorityGroupConfig(NVIC_PriorityGroup_2);
	SystemCoreClockUpdate( );
	Delay_Init( );
	USART_Printf_Init( 115200 );
	Dac_Init();	
    TIM1_PWM_In(255,0);
    //DAC_SetChannel1Data(DAC_Align_8b_R, 255);
    // *(u8*)DAC_R8BDHR1 = 127;
    DMA2_CH4_Init();


    // while(DMA_GetFlagStatus(DMA2_FLAG_TC4) == RESET)
    // {
    // }
	// while(1){}
	RCC_Configuration( );

	/* Tim2 init */
	TIM2_Init( );

	// /* Usart1 init */
	UART2_Init( 1, DEF_UARTx_BAUDRATE, DEF_UARTx_STOPBIT, DEF_UARTx_PARITY );

	// /* USB20 device init */
	USBHS_RCC_Init( );
	USBHS_Device_Init( ENABLE );
	uint16_t i=0;
    usb_send("Hi there!\n",strlen("Hi there!\n"));
	while(1)
	{
	    // i=i+1;
		// UART2_DataRx_Deal( );
		// UART2_DataTx_Deal( );
		// if(i>60000){
		//     i=0;
		//     usb_send("Hi there!\n",strlen("Hi there!\n"));
		// }
		if(usb_rx_flg1){


		    *&usb_rx_flg1=0;
            if(usb_rx_len >= sizeof(struct bufferInput)){
            struct bufferInput * ptr = (struct bufferInput *)USB_rx_Buf;
            if(ptr->timeUp > 3 && ptr->timeDown > 3 && ptr->iter > 0 && ptr->amplitude > 100){
            cnt = ptr->iter;
            up_Time_period = ptr->timeUp;
            down_Time_period = ptr->timeDown;
            TIM_TimeBaseInitStructure.TIM_Period = up_Time_period;
            
            for(u16 i = 0; i < Buf_Size / 2; i ++){
                buffer[i] = 15 + (u16)((u32)i * ptr->amplitude * 16 / 3300);
            }
            for(u16 i = Buf_Size / 2; i < Buf_Size; i ++){
                buffer[i] = buffer[Buf_Size / 2 - 1] - (u16)((u32)(i - Buf_Size / 2) * ptr->amplitude * 16 / 3300);
            }
            buffer[Buf_Size -1] = 15;

            TIM_TimeBaseInit(TIM7, &TIM_TimeBaseInitStructure);
            DMA_Cmd(DMA2_Channel4, DISABLE);
            DMA2_CH4_Init();
            }
            }

			// usb_send("Hi there!\n",strlen("Hi there!\n"));
		    //usb_send(USB_rx_Buf,usb_rx_len);
		}
	}
}