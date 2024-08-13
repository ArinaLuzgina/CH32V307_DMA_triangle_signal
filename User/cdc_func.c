/*
 * cdc_func.c
 *
 *  Created on: Aug 21, 2023
 *      Author: alexey sergeevich
 */


#include "cdc_func.h"

__attribute__ ((aligned(4))) uint8_t  USB_tx_Buf[ usb_buf_length ];  /* transmit data buffer */
__attribute__ ((aligned(4))) uint8_t  USB_rx_Buf[ usb_rx_buf_length ];  /* receive data buffer */
uint8_t usb_rx_flg1=0;
uint16_t usb_rx_len=0;


void init_usb_recieve(void){
    /* restart usb receive  */
    USBHSD->UEP2_RX_DMA = (uint32_t)(uint8_t *)&UART2_Tx_Buf[ 0 ];
    USBHSD->UEP2_RX_CTRL &= ~USBFS_UEP_R_RES_MASK;
    USBHSD->UEP2_RX_CTRL |= USBFS_UEP_R_RES_ACK;


//    if( ( Uart.USB_Down_StopFlag == 0x01 ) && ( Uart.Tx_RemainNum < 2 ) )
//        {
//            USBHSD->UEP2_RX_CTRL &= ~USBFS_UEP_R_RES_MASK;
//            USBHSD->UEP2_RX_CTRL |= USBFS_UEP_R_RES_ACK;
//            Uart.USB_Down_StopFlag = 0x00;
//        }
}


void usb_send(uint8_t* data,uint8_t packlen){
    memcpy(USB_tx_Buf,data,packlen);
    NVIC_DisableIRQ( USBHS_IRQn );
//    NVIC_DisableIRQ( USBHS_IRQn );

    USBHSD->UEP2_TX_DMA = (uint32_t)(uint8_t *)&USB_tx_Buf[ 0 ];
    USBHSD->UEP2_TX_LEN  = packlen;
    USBHSD->UEP2_TX_CTRL &= ~USBHS_UEP_T_RES_MASK;
    USBHSD->UEP2_TX_CTRL |= USBHS_UEP_T_RES_ACK;
    NVIC_EnableIRQ( USBHS_IRQn );
}


void reset_usb_send(void){
//    USBHSD->UEP2_RX_CTRL &= ~USBFS_UEP_R_RES_MASK;
//    USBHSD->UEP2_RX_CTRL |= USBFS_UEP_R_RES_ACK;
//
    /* Set the upload success flag directly if the upload is not successful after the timeout */
//                if( Uart.USB_Up_TimeOut >= DEF_UARTx_USB_UP_TIMEOUT )
//                {
    USBHS_Endp_Busy[ DEF_UEP2 ] = 0;
}
