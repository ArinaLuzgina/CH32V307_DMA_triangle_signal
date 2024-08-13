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
};

u16 buffer[Buf_Size] = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 255, 255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 83, 82, 81, 80, 79, 78, 77, 76, 75, 74, 73, 72, 71, 70, 69, 68, 67, 66, 65, 64, 63, 62, 61, 60, 59, 58, 57, 56, 55, 54, 53, 52, 51, 50, 49, 48, 47, 46, 45, 44, 43, 42, 41, 40, 39, 38, 37, 36, 35, 34, 33, 32, 31, 30, 29, 28, 27, 26, 25, 24, 23, 22, 21, 20, 19, 18, 17, 16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1, 0};
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

    DMA_InitStructure.DMA_MemoryBaseAddr = (u32)DAC_R8BDHR1;
    // DMA_InitStructure.DMA_MemoryBaseAddr = (u32)(&buf);
    DMA_InitStructure.DMA_DIR = DMA_DIR_PeripheralSRC;
    DMA_InitStructure.DMA_BufferSize = Buf_Size;
    DMA_InitStructure.DMA_PeripheralInc = DMA_PeripheralInc_Enable;
    DMA_InitStructure.DMA_MemoryInc = DMA_MemoryInc_Disable;
    DMA_InitStructure.DMA_PeripheralDataSize = DMA_PeripheralDataSize_HalfWord;
    DMA_InitStructure.DMA_MemoryDataSize = DMA_MemoryDataSize_Byte;
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

    DAC_SetChannel1Data(DAC_Align_8b_R, 0);

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
            if(ptr->timeUp > 3 && ptr->timeDown > 3 && ptr->iter > 0){
            cnt = ptr->iter;
            up_Time_period = ptr->timeUp;
            down_Time_period = ptr->timeDown;
            TIM_TimeBaseInitStructure.TIM_Period = up_Time_period;
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