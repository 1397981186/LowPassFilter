# LowPassFilter
LowPassFilter-for Hunxin
对带宽为20 MHz，中心频率为0 MHz的线性调频脉冲信号进行谱估计；
设计FIR低通滤波器，滤波器阶数为256阶，采样频率40 MHz，截止频率为2.5 MHz。
![image](https://user-images.githubusercontent.com/31915159/159480775-52e57a9a-927d-4459-92ce-196cc0d80299.png)

使用中国魂芯 ECS编译器编译，主要语言为c

关键变量
struct complex{
double real;
double image;} 自定义的结构体，用来表示一个复数。
double fir[257]；double类型的数组，用于存储低通滤波器的系数。
double fuReal[512]; double类型的数组，用于存储LFM信号经过DFT变换后的实部值。double outReal[512];double类型的数组，用于存储LFM信号经过FIr滤波器后的实部值。
double outRealFFT[512];double类型的数组，用于存储LFM信号经过FIr滤波器后在进行DFT变化的实部值。


关键函数
void init(Complex *fx,double *real,double *image);
用于初始化数据，将matlab中LFM信号512点采点值转换为complex结构。
void DFT(Complex *fu,Complex *fx,clock_t FFTstartTime,clock_t FFTendTime);
实现了信号的离散傅里叶变换，输入复数信号，输出傅里叶变化后的复数信号值。
void Fir(Complex *Firout,Complex *fx,double *fir,clock_t FirstartTime,clock_t FirendTime);
实现了信号的低通滤波，输入复数信号，进行时域卷积滤波，输出滤波后的复数信号（时域）。

入口为 init.c
