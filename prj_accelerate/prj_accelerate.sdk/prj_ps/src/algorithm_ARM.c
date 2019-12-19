/*
 * algorithm_ARM.c
 *
 *  Created on: 2019��7��17��
 *      Author: Administrator
 */
#include"include.h"


//void get_img_grads(unsigned char *dstImg,unsigned char *srcImg,unsigned int img_h,unsigned int img_w)
void get_img_grads(float *dstImg,unsigned char *srcImg,unsigned int img_h,unsigned int img_w)
{
	//unsigned char Gx,Gy;
	float Gx,Gy;
	float tmp;



	for(int i=1;i<img_h -1;i++)
	{

		for(int j=1;j<img_w-1;j++)
		{
			if(srcImg[i*img_w + j - 1] > srcImg[i*img_w + j + 1 ])
			{
				Gx = srcImg[i*img_w  + j - 1] - srcImg[i*img_w  + j + 1];
			}
			else
			{
				Gx = srcImg[i*img_w  + j + 1 ] - srcImg[i*img_w  + j - 1];
			}

			if(srcImg[(i-1)*img_w + j] > srcImg[(i+1)*img_w + j])
			{
				Gy = srcImg[(i-1)*img_w + j] - srcImg[(i+1)*img_w + j];
			}
			else
			{
				Gy = srcImg[(i+1)*img_w + j] - srcImg[(i-1)*img_w + j];

			}

			tmp = powf(Gx,2) + powf(Gy,2);


			//dstImg[i*img_w + j] = ((Gx + Gy) > 255)?255:(Gx + Gy);
		    dstImg[i*img_w + j] = sqrtf(tmp);

		}


	}

	printf("\r\n-------------srcImg------------------\r\n ");
	for(int i=1;i<3;i++)
	{

		for(int j=0; j<img_w-1;j++)
		{
			printf("%x ",srcImg[i*img_w + j]);

		}
		printf("\r\n-------------------------------\r\n ");

	}

	printf("\r\n-------------dstImg------------------\r\n ");
	for(int i=1;i<3;i++)
	{

		for(int j=0; j<img_w-1;j++)
		{
			printf("%x ",dstImg[i*img_w + j]);

		}
		printf("\r\n-------------------------------\r\n ");

	}




}

void canny(float *dstImg,unsigned char *srcImg,unsigned int img_h,unsigned int img_w)
{
	unsigned char Gx,Gy;

	unsigned char dir[img_w*img_h];
	unsigned char theta;
	char Gx_s,Gy_s;
	float tan_value;
	float tan_225 = 6.625;
	float tan_675 = 38.625;
	unsigned char maxVal = 200;
	unsigned char minVal = 180;





	for(int i=1;i<img_h -1;i++)
	{

		for(int j=1;j<img_w-1;j++)
		{
			if(srcImg[i*img_w + j - 1] > srcImg[i*img_w + j + 1 ])
			{
				Gx = srcImg[i*img_w  + j - 1] - srcImg[i*img_w  + j + 1];
				Gx_s = -1;
			}
			else
			{
				Gx = srcImg[i*img_w  + j + 1 ] - srcImg[i*img_w  + j - 1];
				Gx_s = 1;
			}

			if(srcImg[(i-1)*img_w + j] > srcImg[(i+1)*img_w + j])
			{
				Gy = srcImg[(i-1)*img_w + j] - srcImg[(i+1)*img_w + j];
				Gy_s = -1;
			}
			else
			{
				Gy = srcImg[(i+1)*img_w + j] - srcImg[(i-1)*img_w + j];
				Gy_s = 1;

			}



			dstImg[i*img_w + j] = ((Gx + Gy) > 255)?255:(Gx + Gy);

			tan_value = (float)Gy / (float)Gx;

			if(tan_value <= tan_225)
			{
				theta = 0;

			}
			else if(tan_value > tan_675)
			{

				theta = 2;
			}
			else
			{
				if(Gx_s != Gy_s)
				{
					theta = 3;
				}
				else
				{
					theta = 1;

				}


			}

			dir[i*img_w + j] = theta;


		}


	}

	// �Ǽ���ֵ����
	for(int i=1;i<img_h -1;i++)
	{
		for(int j=1;j<img_w-1;j++)
		{

			switch(dir[i*img_w + j])
			{
			case	0:
					if((dstImg[i*img_w + j -1] <= dstImg[i*img_w + j])&&(dstImg[i*img_w + j] >= dstImg[i*img_w + j+1]))
					{

					}
					else
					{
						dstImg[i*img_w + j] = 0;
					}

				break;

			case	1:

				if((dstImg[(i +1)*img_w + j -1] <= dstImg[i*img_w + j])&&(dstImg[i*img_w + j] >= dstImg[(i - 1)*img_w + j+1]))
				{

				}
				else
				{
					dstImg[i*img_w + j] = 0;
				}


				break;

			case	2:

				if((dstImg[(i -1)*img_w + j] <= dstImg[i*img_w + j])&&(dstImg[i *img_w + j] >= dstImg[(i + 1)*img_w + j]))
				{

				}
				else
				{
					dstImg[i*img_w + j] = 0;
				}


				break;

			case	3:

				if((dstImg[(i - 1)*img_w + j -1] <= dstImg[i*img_w + j])&&(dstImg[i*img_w + j] >= dstImg[(i + 1)*img_w + j+1]))
				{

				}
				else
				{
					dstImg[i*img_w + j] = 0;
				}


				break;

			}



		}



	}




	// ˫��ֵ����
	for(int i=1;i<img_h -1;i++)
	{
		for(int j=1;j<img_w-1;j++)
		{

			if(dstImg[i*img_w + j] < minVal)
			{
				dstImg[i*img_w + j] = 0;
			}
			else
			{
				if((dstImg[i*img_w + j] >= minVal) && (dstImg[i*img_w + j] < maxVal) )
				{

					if((  dstImg[(i -1 )*img_w + j -1] + dstImg[(i -1 )*img_w + j] + dstImg[(i -1 )*img_w + j +1]
						+ dstImg[(i  )*img_w + j -1]  + dstImg[(i )*img_w + j +1]
						+ dstImg[(i +1 )*img_w + j -1] + dstImg[(i +1 )*img_w + j] + dstImg[(i +1 )*img_w + j +1])
						== 0)
					{
						dstImg[i*img_w + j] = 0;
					}


				}



			}




		}



	}




}


void arm_caclu(void)
{

	XTime tEnd,tCur;
	u32 tUsed;
	//unsigned char *dstImg;
	float *dstImg;
	unsigned char *srcImg;
	unsigned int img_h;
	unsigned int img_w;

	dstImg = (unsigned char *)DATA_DST_ARM_ADDR;
	srcImg = (unsigned char *)DATA_SOURCE_ADDR;
	img_h = 480;
	img_w = 640;


	XTime_GetTime(&tCur);


	//get_img_grads(dstImg,srcImg,img_h,img_w);
	canny(dstImg,srcImg,img_h,img_w);
	//usleep(4096);

	XTime_GetTime(&tEnd);
	tUsed =((tEnd-tCur)*1000000)/(COUNTS_PER_SECOND);

	printf("time elapsed = %d us\r\n",tUsed);




}