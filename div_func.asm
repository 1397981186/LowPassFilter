// ����ԭ��:	void div_func(float *input, unsigned int n, float divisor);
// ���������
// xr0/u0: ���������׵�ַ������������룩
// xr1: ��������
// xr2: �����ĵ���

.global __div_func
.text
__div_func:
	xr20 = 1	// ����Ҫ����2���㣬������һλ���
	xr21 = r1 ashift r20// xr1�Ǵ��ݽ�������Ҫ��������ĸ����ĸ���
	xr22 = r21
	xr23 = 0	// xr23��Ϊһ���������������Ѿ�������ĵ���
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
