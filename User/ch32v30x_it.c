/********************************** (C) COPYRIGHT *******************************
* File Name          : ch32v30x_it.c
* Author             : WCH
* Version            : V1.0.0
* Date               : 2021/06/06
* Description        : Main Interrupt Service Routines.
*********************************************************************************
* Copyright (c) 2021 Nanjing Qinheng Microelectronics Co., Ltd.
* Attention: This software (modified or not) and binary are used for 
* microcontroller manufactured by Nanjing Qinheng Microelectronics.
*******************************************************************************/
#include "ch32v30x_it.h"
#include "UART.h"
extern u16 buf;
extern TIM_TimeBaseInitTypeDef TIM_TimeBaseInitStructure;
extern u16 up_Time_period, down_Time_period;
void NMI_Handler(void) __attribute__((interrupt("WCH-Interrupt-fast")));
void HardFault_Handler(void) __attribute__((interrupt("WCH-Interrupt-fast")));
void TIM2_IRQHandler( void )__attribute__((interrupt("WCH-Interrupt-fast")));
void TIM7_IRQHandler( void )__attribute__((interrupt("WCH-Interrupt-fast")));
void DMA2_Channel4_IRQHandler(void) __attribute__((interrupt("WCH-Interrupt-fast")));
/*********************************************************************
 * @fn      NMI_Handler
 *
 * @brief   This function handles NMI exception.
 *
 * @return  none
 */
void NMI_Handler(void)
{
}

/*********************************************************************
 * @fn      TIM2_IRQHandler
 *
 * @brief   This function handles TIM2 exception.
 *
 * @return  none
 */
void TIM2_IRQHandler( void )
{
    /* Test IO */
    static uint8_t tog;
    tog ? (GPIOA->BSHR = GPIO_Pin_15):(GPIOA->BCR = GPIO_Pin_15);
    tog ^= 1;
    /* uart timeout counts */
    Uart.Rx_TimeOut++;
    Uart.USB_Up_TimeOut++;

    /* clear status */
    TIM2->INTFR = (uint16_t)~TIM_IT_Update;
}

// void TIM7_IRQHandler( void )
// {
//     /* clear status */
//     TIM7->INTFR = (uint16_t)~TIM_IT_Update;
//     DAC_SetChannel1Data(DAC_Align_8b_R, cnt);
//     cnt++;
//     if (cnt == 255) {
//         cnt = 0;
//         // DAC_Cmd(DAC_Channel_1, DISABLE);
//     }
// }

void DMA2_Channel4_IRQHandler(void){
    if(DMA_GetFlagStatus(DMA2_FLAG_TC4)){
        DMA_ClearFlag(DMA2_FLAG_TC4);
        DMA_ClearITPendingBit(DMA2_IT_TC4);
        TIM_TimeBaseInitStructure.TIM_Period = up_Time_period;
        TIM_TimeBaseInit(TIM7, &TIM_TimeBaseInitStructure);
        cnt--;
        if(cnt > 0){
            DMA_Cmd(DMA2_Channel4, DISABLE);
            DMA2_CH4_Init();
        }
        // DMA2->INTFCR =(1<<1);
    }
    if(DMA_GetFlagStatus(DMA2_FLAG_HT4)){
        DMA_ClearFlag(DMA2_FLAG_HT4);
        DMA_ClearITPendingBit(DMA2_IT_HT4);
        TIM_TimeBaseInitStructure.TIM_Period = down_Time_period;
        TIM_TimeBaseInit(TIM7, &TIM_TimeBaseInitStructure);
        // DMA2->INTFCR =(1<<2);
    }
}

/*********************************************************************
 * @fn      HardFault_Handler
 *
 * @brief   This function handles Hard Fault exception.
 *
 * @return  none
 */
void HardFault_Handler(void)
{
    printf( "hardfault\r\n" );
    while (1)
    {}
}


