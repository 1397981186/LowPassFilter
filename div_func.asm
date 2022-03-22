// 函数原型:	void div_func(float *input, unsigned int n, float divisor);
// 输入参数：
// xr0/u0: 输入向量首地址（输出覆盖输入）
// xr1: 向量长度
// xr2: 除数的倒数

.global __div_func
.text
__div_func:
	xr20 = 1	// 下面要做乘2运算，用左移一位完成
	xr21 = r1 ashift r20// xr1是传递进来的需要进行运算的复数的个数
	xr22 = r21
	xr23 = 0	// xr23作为一个计数器，保存已经运算过的点数
_do_div:

	.code_align 16
	if xr23 == r22 b _do_div_end

	xr10 = [u0+=0,0]
	xfr12 = fr10 * fr2
	[u0+=1,0] = xr12

	xr23 += 1

	.code_align 16
	b _do_div

_do_div_end:
	nop

.code_align 16
ret
