@****************************************************************
@Copyright (C) ,2016 fxk
@File name:	led_on.S
@Aunthor:	fxk       Version: V0.1    Date:2016.12.05
@Description: This is my first JZ2440 assembly code.	  				 	
@Function List:  
@History: 
@<author>  <time>  <version>  <desc>
@
@****************************************************************

.text				 @ compiled code will be in the code segment
.global _start			 @ 告诉编译器后续跟的是一个全局可见的名字
_start:
	LDR	R0,=0x56000050   @ 将R0设置为 GPFCON寄存器 PF口控制器 见手册
	MOV	R1,#0x00000100
	STR	R1,[R0]		 @向 GFCON 写数据 即将 GPF4设置成输出

	LDR	R0,=0x56000054	 @将R0设置为 GPFDAT寄存器
	MOV	R1,#0x00000000	 @全部输出0  点亮LED
	STR	R1,[R0]

LOOP:	
	D	LOOP	


