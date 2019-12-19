/*
 * dma.h
 *
 *  Created on: 2019年7月2日
 *      Author: Administrator
 */


#include"include.h"

#ifndef SRC_DMA_H_
#define SRC_DMA_H_
#define DMA_BASSE_ADDR	0x40400000

#define SG_TX_BASSE_ADDR		 0x11000000
#define SG_TX_BASSE_ADDR0		 SG_TX_BASSE_ADDR + 0x00
#define SG_TX_BASSE_ADDR1		 SG_TX_BASSE_ADDR + 0x40
#define SG_RX_BASSE_ADDR0		 SG_TX_BASSE_ADDR + 0x80
#define SG_RX_BASSE_ADDR1		 SG_TX_BASSE_ADDR + 0xc0

#define DB_NUM					1//8
#define DB_NUM_AB				1//(DB_NUM + DB_NUM) // A 和B 总的DB_NUM
#define DB_NUM_C				DB_NUM
#define DB_BUFF_LEN				640*480//32//256

//dma_0
#define DMA0_BASSE_ADDR			0x40400000
#define DMA0_TX_DB_BASSE_ADDR	0x11000000
#define DMA0_TX_BUFF_BASSE_ADDR 0x17000000
#define DMA0_RX_BUFF_BASSE_ADDR (DMA0_TX_BUFF_BASSE_ADDR + DB_BUFF_LEN * DB_NUM_AB)

//dma_1
#define DMA1_BASSE_ADDR			0x40410000
#define DMA1_TX_DB_BASSE_ADDR	0x11000000
#define DMA1_TX_BUFF_BASSE_ADDR DATA_SOURCE_ADDR//0x17000000
#define DMA1_RX_BUFF_BASSE_ADDR DATA_DST_FPGA_ADDR//(DMA1_TX_BUFF_BASSE_ADDR + DB_BUFF_LEN * DB_NUM_AB)
//dma_2
#define DMA2_BASSE_ADDR			0x40420000
#define DMA2_TX_DB_BASSE_ADDR	0x11000000
#define DMA2_TX_BUFF_BASSE_ADDR 0x17000000
#define DMA2_RX_BUFF_BASSE_ADDR (DMA2_TX_BUFF_BASSE_ADDR + DB_BUFF_LEN * DB_NUM_AB)

//dma_3
#define DMA3_BASSE_ADDR			0x40430000
#define DMA3_TX_DB_BASSE_ADDR	0x11000000
#define DMA3_TX_BUFF_BASSE_ADDR 0x17000000
#define DMA3_RX_BUFF_BASSE_ADDR (DMA3_TX_BUFF_BASSE_ADDR + DB_BUFF_LEN * DB_NUM_AB)










struct SG_Reg_def
{
	unsigned int MM2S_DMACR;
	unsigned int MM2S_DMASR;
	unsigned int MM2S_CURDESC;
	unsigned int MM2S_CURDESC_MSB;
	unsigned int MM2S_TAILDESC;
	unsigned int MM2S_TAILDESC_MSB;
	unsigned int reserve0;
	unsigned int reserve1;
	unsigned int reserve2;
	unsigned int reserve3;
	unsigned int reserve4;

	unsigned int SG_CTL;
	unsigned int S2MM_DMACR;
	unsigned int S2MM_DMASR;
	unsigned int S2MM_CURDESC;
	unsigned int S2MM_CURDESC_MSB;
	unsigned int S2MM_TAILDESC;
	unsigned int S2MM_TAILDESC_MSB;

};

struct SG_Desc_def
{
	unsigned int NXTDESC;
	unsigned int NXTDESC_MSB;
	unsigned int BUFFER_ADDRESS;
	unsigned int BUFFER_ADDRESS_MSB;
	unsigned int RESERVED0;
	unsigned int RESERVED1;
	unsigned int CONTROL;
	unsigned int STATUS;
	unsigned int APP0;
	unsigned int APP1;
	unsigned int APP2;
	unsigned int APP3;
	unsigned int APP4;
	unsigned int reserve0;
	unsigned int reserve1;
	unsigned int reserve2;

};

struct SG_Desc_Chain_def
{
	struct SG_Desc_def SG_Descriptor0;
	struct SG_Desc_def SG_Descriptor1;
	struct SG_Desc_def SG_Descriptor2;
	struct SG_Desc_def SG_Descriptor3;
	struct SG_Desc_def SG_Descriptor4;
	struct SG_Desc_def SG_Descriptor5;
	struct SG_Desc_def SG_Descriptor6;
	struct SG_Desc_def SG_Descriptor7;
	struct SG_Desc_def SG_Descriptor8;
	struct SG_Desc_def SG_Descriptor9;

} ;

float A_VALUE_BUFF[DB_NUM*DB_BUFF_LEN];
float B_VALUE_BUFF[DB_NUM*DB_BUFF_LEN];
float CPU_CACLU_BUFF[DB_NUM*DB_BUFF_LEN];

void dma_init(void);


#endif /* SRC_DMA_H_ */
