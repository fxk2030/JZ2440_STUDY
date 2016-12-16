/****************************************************************
*Copyright (C) ,2016 fxk
*File name:	nand.c
*Aunthor:	fxk       Version: V0.1    Date: 2016.12.16
*Description: This is my first JZ2440 nandflash code.	  				 	
*Function List:  
*History: 
*<author>  <time>  <version>  <desc>
*
*****************************************************************/

#define LARGER_NAND_PAGE      //nand 大页模式 2048

#define GSTATUS1			(*(volatile unsigned int *)0x560000b0)  //ID 寄存器
#define BUSY		1    

#define NAND_SECTOR_SIZE	512  //小页 
#define NAND_BLOCK_MASK		(NAND_SECTOR_SIZE - 1)  //

#define NAND_SECTOR_SIZE_LP		2048 //大页
#define NAND_BLOCK_MASK_LP		(NAND_SECTOR_SIZE_LP - 1)

typedef unsigned int	S3C24X0_REG32

/*
*Function:			
*Description:       
*Aunthor:			
*History:
*
*--------------------------
*Input:				
*Output:           
*Return:			
*Others:			
*										 
*--------------------------
*/
