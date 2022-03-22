/*
 *  COPYRIGHT (c) 1989-2008.
 *  On-Line Applications Research Corporation (OAR).
 *
 *  The license and distribution terms for this file may be
 *  found in the file LICENSE in this distribution or at
 *  http://www.epos.com/license/LICENSE.
 *
 *  $Id: bspstart.c,v 1.1 2008/09/16 19:10:15 joel Exp $
 */


#include <bsp.h>
#include <bootcard.h>


/*功能
 * 1)初始化中断控制器
 * 2)配置PLL时钟等相关
 * 3)配置系统主频和定时器的计数值
 */

void bsp_start( void )
{
  /*配置系统频率为500MHZ*/
  float freq = 500*1000000;
  float microsecond_per_tick = Configuration.microseconds_per_tick;
  float microsecond_per_cycle = (1000000.0/(freq*1.0));
  float timer_count_per_tick = microsecond_per_tick / (microsecond_per_cycle);
//  Configuration.timer_count_per_tick = timer_count_per_tick;
}
