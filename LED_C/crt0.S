@****************************************************************
@Copyright (C) ,2016 fxk
@File name:	crt0.S
@Aunthor:	fxk       Version: V0.1    Date:2016.12.05
@Description: This is C Startup file.	  				 	
@Function List:  
@History: 
@<author>  <time>  <version>  <desc>
@
@****************************************************************

.text				 @ compiled code will be in the code segment
.global _start
_start:
	LDR	R0,=0x53000000
	MOV	R1,#0x00
	STR	R1,[R0]              @ 将看门狗控制器写0  关看门狗

	LDR	sp,1024*4	     @ 设置堆栈大小	

	BL	main		     @ 调用C库中的main函数
LOOP:
	B	LOOP