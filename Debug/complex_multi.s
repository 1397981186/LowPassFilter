        .file "C:\Users\Mihtop\Desktop\ECS\201124\"
        .file 1, "../complex_multi.asm"






        .file "C:\Users\Mihtop\Desktop\ECS\201124\"
        .file 2, "complex_multi.asm"
        .loc 2, 7
.global __complex_multi
        .loc 2, 8
.text
        .loc 2, 9
__complex_multi:
        .loc 2, 10
	xr20 = r3	
        .loc 2, 11
	xr21 = 0	
        .loc 2, 12
_do_multi:

        .loc 2, 14
	.code_align 16
        .loc 2, 15
	if xr21 == r20 b _do_multi_end

        .loc 2, 17
	xr4 = [u0+=1,0]	
        .loc 2, 18
	xr5 = [u0+=1,0] 
        .loc 2, 19
	xr6 = [u1+=1,0] 
        .loc 2, 20
	xr7 = [u1+=1,0] 
	
        .loc 2, 22
	xfr11 = fr5 * fr7
        .loc 2, 23
	xfr10 = fr5 * fr6
        .loc 2, 24
	xfr9 = fr4 * fr6
        .loc 2, 25
	xfr8 = fr4 * fr7

        .loc 2, 27
	xfr12 = fr10 + fr8
        .loc 2, 28
	xfr13 = fr11 - fr9

        .loc 2, 30
	[u2+=1,0] = xr12	  
        .loc 2, 31
	[u2+=1,0] = xr13  
        .loc 2, 32
	xr21 += 1

        .loc 2, 34
	.code_align 16
        .loc 2, 35
	b _do_multi

        .loc 2, 37
_do_multi_end:
        .loc 2, 38
	nop

        .loc 2, 40
.code_align 16
        .loc 2, 41
ret
