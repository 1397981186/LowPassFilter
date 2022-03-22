/*
 * get_coreid.asm
 *
 *  Created on: 2017-2-24
 *      Author: jiaguangs
 */




.global __get_coreid
.text
__get_coreid:

xr0=CINF||xr1=0x1
xr8= r0 ashift -8
xr8=r8 & r1


.code_align 4
ret




