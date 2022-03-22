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


/*����
 * 1)��ʼ���жϿ�����
 * 2)����PLLʱ�ӵ����
 * 3)����ϵͳ��Ƶ�Ͷ�ʱ���ļ���ֵ
 */

void bsp_start( void )
{
  /*����ϵͳƵ��Ϊ500MHZ*/
  float freq = 500*1000000;
  float microsecond_per_tick = Configuration.microseconds_per_tick;
  float microsecond_per_cycle = (1000000.0/(freq*1.0));
  float timer_count_per_tick = microsecond_per_tick / (microsecond_per_cycle);
//  Configuration.timer_count_per_tick = timer_count_per_tick;
}
