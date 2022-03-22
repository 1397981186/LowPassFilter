/********************************************************************************
**                                                                             **
**                     (c) COPYRIGHT 2008 ICDC of ECRIEE.                      **
**                            ALL RIGHTS RESERVED                              **
**                                                                             **
*********************************************************************************
	File name:		_cabs.asm											      
	Author:		 	Qin Yan			     										  
	Create Date:	2010-03-21	    											                                  
********************************************************************************/

/*____________________________________________________________________________
  Func name   : __cabs

  C-Syntax    : void __cabs(
  									complex_float *c_pInput, 
  									float *c_pOutput, 
  									int c_iElemNum
  							);
 				 
  ----------------------------------------------------------------------------
  Purpose     : Compute the complex modulus (magnitude) of the elements of X
                
  Inputs      : u0-point to the first address of input numbers
                u1-point to the first address of output
                xr2-the number of input
                
  Outputs     : none

  Modified    : xr0-xr39,u0-u3,v0-v2

  Accuracy    :	10^-6

  Data Memory : 0 words

  Prog Memory : 464 words

  Stack Memory: 20 words
               
  Cycles      : xr2=100,  cycle=146
	        xr2=1000, cycle=846
	        xr2=10000,cycle=7846 
  ____________________________________________________________________________*/
.global __bw_cvabs_f
.text
__bw_cvabs_f:
nop
rtrap 22
nop

xr30 = u8 // low addr of function calling stack
xr31 = u8 // high addr of function calling stack
xr30+=-23
rtrap 28
nop
nop
//------------------push--------------------
[u8+=-4,-1]=r40||xr5=mulcr||yr5=mulcr||zr5=mulcr||tr5=mulcr
[u8+=-4,-1]=r41
[u8+=-4,-1]=r42
[u8+=-4,-1]=r43
[u8+=-4,-1]=r44
[u8+=-4,-1]=r5
//------------------------------------------
xmulcr=0x2||ymulcr=0x2||zmulcr=0x2||tmulcr=0x2
xr0=0
xr0=r2 fext(0:2,0)||xr1=r2 lshift -2
u2=8||u3=1||xr1+=1||xr0+=1
fr3=1.5||fr4=0||u4=4||lc0=xr1||lc1=xr0||xr0=u1
r6:5=[u0+=u2,u3]
v1=4||v2=1||v0=xr0
r8:7=[u0+=u2,u3]
fr23=fr5*fr5||fr24=fr6*fr6
r10:9=[u0+=u2,u3]
fr25=fr7*fr7||fr26=fr8*fr8||fr27=fr23+fr24
r12:11=[u0+=u2,u3]
fr23=fr9*fr9||fr24=fr10*fr10||fr28=fr25+fr26||fr31=sqrt(abs fr27)||fr32=(fr27+fr4)/2
r14:13=[u0+=u2,u3]||fr33=1/fr31
fr25=fr11*fr11||fr26=fr12*fr12||fr29=fr23+fr24||fr36=sqrt(abs fr28)||fr37=(fr28+fr4)/2
r16:15=[u0+=u2,u3]||fr34=fr33*fr33||fr35=fr33*fr27||fr38=1/fr36
fr23=fr13*fr13||fr24=fr14*fr14||fr27=fr25+fr26||fr31=sqrt(abs fr29)||fr41=(fr29+fr4)/2
r18:17=[u0+=u2,u3]||fr34=fr34*fr32||fr39=fr38*fr38||fr40=fr38*fr28
fr25=fr15*fr15||fr26=fr16*fr16||fr28=fr23+fr24||fr36=sqrt(abs fr27)||fr32=(fr27+fr4)/2
r20:19=[u0+=u2,u3]||fr42=1/fr31
fr34=fr3-fr34||fr39=fr39*fr37||fr33=1/fr36
fr43=fr42*fr42||fr44=fr42*fr29
fr23=fr17*fr17||fr24=fr18*fr18||fr29=fr25+fr26||fr31=sqrt(abs fr28)||fr37=(fr28+fr4)/2
r22:21=[u0+=u2,u3]||fr30=fr34*fr35||fr39=fr3-fr39||fr34=fr33*fr33||fr35=fr33*fr27||fr43=fr43*fr41

_cabsproc4:
.code_align 16
if nlc0 b _cabsproc1||fr38=1/fr31
r6:5=[u0+=u2,u3]||fr25=fr19*fr19||fr26=fr20*fr20||fr27=fr23+fr24||fr36=sqrt(abs fr29)||fr41=(fr29+fr4)/2
[v0+=v1,v2]=r30||fr30=fr39*fr40||fr43=fr3-fr43||fr34=fr34*fr32||fr39=fr38*fr38||fr40=fr38*fr28
.code_align 16
if nlc0 b _cabsproc1||fr42=1/fr36
r8:7=[u0+=u2,u3]||fr23=fr21*fr21||fr24=fr22*fr22||fr28=fr25+fr26||fr31=sqrt(abs fr27)||fr32=(fr27+fr4)/2
[v0+=v1,v2]=r30||fr30=fr43*fr44||fr34=fr3-fr34||fr39=fr39*fr37||fr43=fr42*fr42||fr44=fr42*fr29
.code_align 16
if nlc0 b _cabsproc1||fr33=1/fr31
r10:9=[u0+=u2,u3]||fr25=fr5*fr5||fr26=fr6*fr6||fr29=fr23+fr24||fr36=sqrt(abs fr28)||fr37=(fr28+fr4)/2
[v0+=v1,v2]=r30||fr30=fr34*fr35||fr39=fr3-fr39||fr43=fr43*fr41||fr34=fr33*fr33||fr35=fr33*fr27
.code_align 16
if nlc0 b _cabsproc1||fr38=1/fr36
r12:11=[u0+=u2,u3]||fr23=fr7*fr7||fr24=fr8*fr8||fr27=fr25+fr26||fr31=sqrt(abs fr29)||fr41=(fr29+fr4)/2
[v0+=v1,v2]=r30||fr30=fr39*fr40||fr43=fr3-fr43||fr34=fr34*fr32||fr39=fr38*fr38||fr40=fr38*fr28
.code_align 16
if nlc0 b _cabsproc1||fr42=1/fr31
r14:13=[u0+=u2,u3]||fr25=fr9*fr9||fr26=fr10*fr10||fr28=fr23+fr24||fr36=sqrt(abs fr27)||fr32=(fr27+fr4)/2
[v0+=v1,v2]=r30||fr30=fr43*fr44||fr34=fr3-fr34||fr39=fr39*fr37||fr43=fr42*fr42||fr44=fr42*fr29
.code_align 16
if nlc0 b _cabsproc1||fr33=1/fr36
r16:15=[u0+=u2,u3]||fr23=fr11*fr11||fr24=fr12*fr12||fr29=fr25+fr26||fr31=sqrt(abs fr28)||fr37=(fr28+fr4)/2
[v0+=v1,v2]=r30||fr30=fr34*fr35||fr39=fr3-fr39||fr43=fr43*fr41||fr34=fr33*fr33||fr35=fr33*fr27
.code_align 16
if nlc0 b _cabsproc1||fr38=1/fr31
r18:17=[u0+=u2,u3]||fr25=fr13*fr13||fr26=fr14*fr14||fr27=fr23+fr24||fr36=sqrt(abs fr29)||fr41=(fr29+fr4)/2
[v0+=v1,v2]=r30||fr30=fr39*fr40||fr43=fr3-fr43||fr34=fr34*fr32||fr39=fr38*fr38||fr40=fr38*fr28
.code_align 16
if nlc0 b _cabsproc1||fr42=1/fr36
r20:19=[u0+=u2,u3]||fr23=fr15*fr15||fr24=fr16*fr16||fr28=fr25+fr26||fr31=sqrt(abs fr27)||fr32=(fr27+fr4)/2
[v0+=v1,v2]=r30||fr30=fr43*fr44||fr34=fr3-fr34||fr39=fr39*fr37||fr43=fr42*fr42||fr44=fr42*fr29
.code_align 16
if nlc0 b _cabsproc1||fr33=1/fr31
r22:21=[u0+=u2,u3]||fr23=fr17*fr17||fr24=fr18*fr18||fr29=fr23+fr24||fr31=sqrt(abs fr28)||fr37=(fr28+fr4)/2
.code_align 16
b _cabsproc4||[v0+=v1,v2]=r30||fr30=fr34*fr35||fr39=fr3-fr39||fr43=fr43*fr41||fr34=fr33*fr33||fr35=fr33*fr27

_cabsproc1:
.code_align 16
if nlc1 b _end
.code_align 16
if nlc1 b _end||[v0+=v2,v2]=xr30
.code_align 16
if nlc1 b _end||[v0+=v2,v2]=yr30
.code_align 16
if nlc1 b _end||[v0+=v2,v2]=zr30

_end:
//-------------------pop--------------------
r5=[u8+4,-1]||u8=u8+4
r44=[u8+4,-1]||u8=u8+4
r43=[u8+4,-1]||u8=u8+4
r42=[u8+4,-1]||u8=u8+4
r41=[u8+4,-1]||u8=u8+4
r40=[u8+4,-1]||u8=u8+4||xmulcr=r5||ymulcr=r5||zmulcr=r5||tmulcr=r5
//------------------------------------------
nop
rtrap 23
nop
.code_align 16
ret   
