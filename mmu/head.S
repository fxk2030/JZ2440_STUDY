@****************************************************************
@Copyright (C) ,2016 fxk
@File name:	head.S
@Aunthor:	fxk       Version: V0.1    Date:2016.12.15
@Description: 	  				 	
@Function List:  
@History: 
@<author>  <time>  <version>  <desc>
@
@****************************************************************

.text				 @ compiled code will be in the code segment
.global _start
_start:
	ldr sp, =4096		 @����ջָ�룬��C��������
	bl  disable_watch_dog    @�ؿ��Ź�
	bl  memsetup		 @���ô洢��������ʹ��SDRAM
	bl  copy_2th_to_sdram    @���ڶ����ִ��븴�Ƶ�SDRAM
	bl  create_page_table    @����ҳ��
	bl  mmu_init		 @����MMU
	ldr sp, =0xB4000000                 @ ����ջָ�룬ָ��SDRAM����(ʹ�������ַ)
	ldr pc, =0xB0004000                 @ ����SDRAM�м���ִ�еڶ����ִ���
halt_loop:
    b   halt_loop