// 函数原型:	void complex_multi(float *input1,float *input2, float *output, unsigned int n);
// 输入参数：
// xr0/u0: 被乘数的首地址
// xr1/u1: 乘数的首地址
// xr2/u2: 积的首地址（可看成输出）
// xr3: 要运算的复数数据个数
.global __complex_multi
.text
__complex_multi:
	xr20 = r3	// xr3是传递进来的需要进行运算的复数的个数
	xr21 = 0	// xr21作为一个计数器，保存已经运算过的点数
_do_multi:

	.code_align 16
	if xr21 == r20 b _do_multi_end

	xr4 = [u0+=1,0]	//被乘数的虚部
	xr5 = [u0+=1,0] //被乘数的实部
	xr6 = [u1+=1,0] //乘数的虚部
	xr7 = [u1+=1,0] //乘数的实部
	//XQFR11:10_9:8 = CFR5:4 * CFR7:6
	xfr11 = fr5 * fr7
	xfr10 = fr5 * fr6
	xfr9 = fr4 * fr6
	xfr8 = fr4 * fr7

	xfr12 = fr10 + fr8
	xfr13 = fr11 - fr9
// 按”魂芯一号”要求的复数格式存储，虚数在前实数在后
	[u2+=1,0] = xr12	  // 乘法运算结果的虚部
	[u2+=1,0] = xr13  // 乘法运算结果的实部
	xr21 += 1

	.code_align 16
	b _do_multi

_do_multi_end:
	nop

.code_align 16
ret
