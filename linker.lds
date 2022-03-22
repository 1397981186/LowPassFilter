MEMORY
{
  SHARED_PROG(rx)  			: ORIGIN = 0x0,      LENGTH = 96K     /*片内共享程序存储器*/
  LOCAL_SRAM(rx)   			: ORIGIN = 0xe20000, LENGTH = 64K     /*核内私有程序存储器*/
  ENP_SEC(rw)		   		: ORIGIN = 0x200000, LENGTH = 1K      /*操作系统保留数据区*/
  DATA0_LIB(rw)  	 		: ORIGIN = 0x200400, LENGTH = 32K     /*库数据区,包含操作系统、标准C函数库、通信中间件和算法库*/
  DATA0_APP(rw)				: ORIGIN = 0x208400, LENGTH = 223K    /*应用数据区0*/
  DATA1_WK(rw)				: ORIGIN = 0x400000, LENGTH = 32K     /*workspace空间*/			 
  DATA1_INITSTACK(rw)  		: ORIGIN = 0x408000, LENGTH = 64K     /*栈空间*/ 
  DATA1_APP(rw)				: ORIGIN = 0x418000, LENGTH = 160K    /*应用数据区1*/    
  DATA2_HAEP(rw)			: ORIGIN = 0x600000, LENGTH = 48K     /*堆空间*/     
  DATA2_APP(rw) 			: ORIGIN = 0x60c000, LENGTH = 208K    /*应用数据区2*/
  DATA3(rw)  		 		: ORIGIN = 0x800000, LENGTH = 256K    /*应用数据区3*/
  DATA4(rw)  		 		: ORIGIN = 0xA00000, LENGTH = 256K    /*应用数据区4*/
  DATA5(rw)  		 		: ORIGIN = 0xC00000, LENGTH = 262142   /*应用数据区5，保留2个字,加载核使用*/
  DEBUG_INFO       			: ORIGIN =0x0,  	 LENGTH = 25600K  
  DEBUG_ARANGES    			: ORIGIN =0x0 , 	 LENGTH = 25600K
  DEBUG_PUBNAMES   			: ORIGIN =0x0 , 	 LENGTH = 25600K
  DEBUG_LINE       			: ORIGIN =0x0 , 	 LENGTH = 25600K
  DEBUG_ABBREV     			: ORIGIN =0x0 , 	 LENGTH = 25600K
  DEBUG_STR					: ORIGIN =0x0, 	   	 LENGTH = 25600K
}

SECTIONS
{
  .lib_text :
  {
     *(.ostext)		  
     *(.libtext)
     *(.mltext)
   } > SHARED_PROG
  .lib_data :
  {
     *(.osdata)
     *(.libdata)
     *(.mldata)
   } > DATA0_LIB
  .lib_bss :
  {
   ____libbss_start = . ;
     *(.osbss)
     *(.libbss)
     *(.mlbss)
   ____libbss_end = . ;
   } > DATA0_LIB
  .lib_rodata :
  {
     *(.osrodata)
     *(.librodata)
     *(.mlrodata)
   } > DATA0_LIB
   .text :
   {
     *(.text)
   } > LOCAL_SRAM
  .data :
  {
	*(.data)
   }  > DATA0_APP
   .bss :
   {
   ____bss_start = . ;
  	 *(.bss)
   ____bss_end = . ;
   }  > DATA0_APP
   .rodata :  
   {
       *(.rodata)
   } > DATA0_APP
   .entry_point_sec :     
  {
  		*(.entry_point_sec)
  } > ENP_SEC

  ____stack_start = 0x417FFF * 4;
  
   .ccdata0 :
   {
	*(.ccdata0)

   }  > DATA0_APP
   .ccdata1 :
   {
	*(.ccdata1)

   }  > DATA1_APP
   .ccdata2 :
   {
	*(.ccdata2)

   }  > DATA2_APP
   .ccdata3 :
   {
	*(.ccdata3)

   }  > DATA3
    .ccdata4 :
   {
	*(.ccdata4)

   }  > DATA4
    .ccdata5 :
   {
	*(.ccdata5)

   }  > DATA5
  
  
  .debug_info :
  {
    *(.debug_info)
  } > DEBUG_INFO
  .debug_aranges : 
  {
    *(.debug_aranges)
  } > DEBUG_ARANGES
  .debug_pubnames :
  {
    *(.debug_pubnames)
  } > DEBUG_PUBNAMES
  .debug_line :
  {
    *(.debug_line)
  } > DEBUG_LINE
  .debug_abbrev :
  {
     *(.debug_abbrev)
  } > DEBUG_ABBREV
  
  .debug_str :
  {
    *(.debug_str)
  } > DEBUG_STR
  
 } 


