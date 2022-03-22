// ����ԭ��:	void complex_multi(float *input1,float *input2, float *output, unsigned int n);
// ���������
// xr0/u0: ���������׵�ַ
// xr1/u1: �������׵�ַ
// xr2/u2: �����׵�ַ���ɿ��������
// xr3: Ҫ����ĸ������ݸ���
.global __complex_multi
.text
__complex_multi:
	xr20 = r3	// xr3�Ǵ��ݽ�������Ҫ��������ĸ����ĸ���
	xr21 = 0	// xr21��Ϊһ���������������Ѿ�������ĵ���
_do_multi:

	.code_align 16
	if xr21 == r20 b _do_multi_end

	xr4 = [u0+=1,0]	//���������鲿
	xr5 = [u0+=1,0] //��������ʵ��
	xr6 = [u1+=1,0] //�������鲿
	xr7 = [u1+=1,0] //������ʵ��
	//XQFR11:10_9:8 = CFR5:4 * CFR7:6
	xfr11 = fr5 * fr7
	xfr10 = fr5 * fr6
	xfr9 = fr4 * fr6
	xfr8 = fr4 * fr7

	xfr12 = fr10 + fr8
	xfr13 = fr11 - fr9
// ������оһ�š�Ҫ��ĸ�����ʽ�洢��������ǰʵ���ں�
	[u2+=1,0] = xr12	  // �˷����������鲿
	[u2+=1,0] = xr13  // �˷���������ʵ��
	xr21 += 1

	.code_align 16
	b _do_multi

_do_multi_end:
	nop

.code_align 16
ret
