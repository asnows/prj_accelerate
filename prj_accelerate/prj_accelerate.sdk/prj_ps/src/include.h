/*
 * include.h
 *
 *  Created on: 2019Äê7ÔÂ17ÈÕ
 *      Author: Administrator
 */

#ifndef SRC_INCLUDE_H_
#define SRC_INCLUDE_H_


#include"dma.h"
#include"xil_types.h"
#include"string.h"
#include "xtime_l.h" //#include "sleep.h"

#include <stdio.h>
#include "sleep.h"
#include "xil_io.h"
#include "xtime_l.h"
#include "xil_printf.h"
#include "xpm_counter.h"
#include "xparameters.h"
#include"math.h"

#include"algorithm_ARM.h"
#include"arm_comp_fpga.h"


#define DATA_SOURCE_ADDR	0X16000000
#define DATA_DST_ARM_ADDR   0X17000000
#define DATA_DST_FPGA_ADDR	0X19000000


#endif /* SRC_INCLUDE_H_ */
