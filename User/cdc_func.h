/*
 * cdc_func.h
 *
 *  Created on: Aug 21, 2023
 *      Author: alexey sergeevich
 */

#ifndef USER_CDC_FUNC_H_
#define USER_CDC_FUNC_H_


#define usb_buf_length  (4 * 512)
#define usb_rx_buf_length DEF_USB_HS_PACK_LEN*4


#include "stdio.h"
#include "string.h"
#include "debug.h"
#include "string.h"
#include "PRINTF.h"
#include "ch32v30x_usbhs_device.h"
#include "ch32v30x_conf.h"

void usb_send(uint8_t* data,uint8_t packlen);



#endif /* USER_CDC_FUNC_H_ */
