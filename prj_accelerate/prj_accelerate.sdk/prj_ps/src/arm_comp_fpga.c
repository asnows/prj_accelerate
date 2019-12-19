/*
 * arm_comp_fpga.c
 *
 *  Created on: 2019Äê7ÔÂ17ÈÕ
 *      Author: Administrator
 */


#include"include.h"

void arm_comp_fpga(void)
{

	unsigned char*armResult;
	unsigned char*fpgaResult;
	unsigned int bytes;
	unsigned int total_err ;
	unsigned int i;

	armResult  = (unsigned char*)DATA_DST_ARM_ADDR;
	fpgaResult = (unsigned char*)DATA_DST_FPGA_ADDR;
	bytes = DB_BUFF_LEN;
	total_err = 0;


	for( i=0; i<bytes; i++ )
	{

		if(*armResult == *fpgaResult)
		{

			//printf("i=%d	 a_= %x,f_= %x \r\n",i,*armResult,*fpgaResult);

		}
		else
		{
			printf("i=%d err a_= %x,f_= %x;   ",i,*armResult,*fpgaResult);
			total_err = total_err + 1;
		}

		if(total_err == 1)
		{
			//printf("i=%d err a_= %x,f_= %x \r\n",i,*armResult,*fpgaResult);

		}
		armResult++;
		fpgaResult++;

	}

	printf("i = %d total_err= %d \r\n",i, total_err);



}
