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
	ldr sp, =4096		 @设置栈指针，给C函数调用
	bl  disable_watch_dog    @关看门狗
	bl  memsetup		 @设置存储控制器以使用SDRAM
	bl  copy_2th_to_sdram    @将第二部分代码复制到SDRAM
	bl  create_page_table    @设置页表
	bl  mmu_init		 @启动MMU
	ldr sp, =0xB4000000                 @ 重设栈指针，指向SDRAM顶端(使用虚拟地址)
	ldr pc, =0xB0004000                 @ 跳到SDRAM中继续执行第二部分代码
halt_loop:
    b   halt_loop