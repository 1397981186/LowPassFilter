        .file "C:\Users\Mihtop\Desktop\ECS\201124\"
        .file 1, "../div_func.asm"






        .file "C:\Users\Mihtop\Desktop\ECS\201124\"
        .file 2, "div_func.asm"
        .loc 2, 7
.global __div_func
        .loc 2, 8
.text
        .loc 2, 9
__div_func:
        .loc 2, 10
	xr20 = 1	
        .loc 2, 11
	xr21 = r1 ashift r20
        .loc 2, 12
	xr22 = r21
        .loc 2, 13
	xr23 = 0	
        .loc 2, 14
_do_div:

        .loc 2, 16
	.code_align 16
        .loc 2, 17
	if xr23 == r22 b _do_div_end

        .loc 2, 19
	xr10 = [u0+=0,0]
        .loc 2, 20
	xfr12 = fr10 * fr2
        .loc 2, 21
	[u0+=1,0] = xr12

        .loc 2, 23
	xr23 += 1

        .loc 2, 25
	.code_align 16
        .loc 2, 26
	b _do_div

        .loc 2, 28
_do_div_end:
        .loc 2, 29
	nop

        .loc 2, 31
.code_align 16
        .loc 2, 32
ret
