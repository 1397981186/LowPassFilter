        .file "C:\Users\Mihtop\Desktop\ECS\201124\"
        .file 1, "../bw_cvabs_f.asm"



        .file "C:\Users\Mihtop\Desktop\ECS\201124\"
        .file 2, "bw_cvabs_f.asm"
        .loc 2, 44
.global __bw_cvabs_f
        .loc 2, 45
.text
        .loc 2, 46
__bw_cvabs_f:
        .loc 2, 47
nop
        .loc 2, 48
rtrap 22
        .loc 2, 49
nop

        .loc 2, 51
xr30 = u8 
        .loc 2, 52
xr31 = u8 
        .loc 2, 53
xr30+=-23
        .loc 2, 54
rtrap 28
        .loc 2, 55
nop
        .loc 2, 56
nop

        .loc 2, 58
[u8+=-4,-1]=r40||xr5=mulcr||yr5=mulcr||zr5=mulcr||tr5=mulcr
        .loc 2, 59
[u8+=-4,-1]=r41
        .loc 2, 60
[u8+=-4,-1]=r42
        .loc 2, 61
[u8+=-4,-1]=r43
        .loc 2, 62
[u8+=-4,-1]=r44
        .loc 2, 63
[u8+=-4,-1]=r5

        .loc 2, 65
xmulcr=0x2||ymulcr=0x2||zmulcr=0x2||tmulcr=0x2
        .loc 2, 66
xr0=0
        .loc 2, 67
xr0=r2 fext(0:2,0)||xr1=r2 lshift -2
        .loc 2, 68
u2=8||u3=1||xr1+=1||xr0+=1
        .loc 2, 69
fr3=1.5||fr4=0||u4=4||lc0=xr1||lc1=xr0||xr0=u1
        .loc 2, 70
r6:5=[u0+=u2,u3]
        .loc 2, 71
v1=4||v2=1||v0=xr0
        .loc 2, 72
r8:7=[u0+=u2,u3]
        .loc 2, 73
fr23=fr5*fr5||fr24=fr6*fr6
        .loc 2, 74
r10:9=[u0+=u2,u3]
        .loc 2, 75
fr25=fr7*fr7||fr26=fr8*fr8||fr27=fr23+fr24
        .loc 2, 76
r12:11=[u0+=u2,u3]
        .loc 2, 77
fr23=fr9*fr9||fr24=fr10*fr10||fr28=fr25+fr26||fr31=sqrt(abs fr27)||fr32=(fr27+fr4)/2
        .loc 2, 78
r14:13=[u0+=u2,u3]||fr33=1/fr31
        .loc 2, 79
fr25=fr11*fr11||fr26=fr12*fr12||fr29=fr23+fr24||fr36=sqrt(abs fr28)||fr37=(fr28+fr4)/2
        .loc 2, 80
r16:15=[u0+=u2,u3]||fr34=fr33*fr33||fr35=fr33*fr27||fr38=1/fr36
        .loc 2, 81
fr23=fr13*fr13||fr24=fr14*fr14||fr27=fr25+fr26||fr31=sqrt(abs fr29)||fr41=(fr29+fr4)/2
        .loc 2, 82
r18:17=[u0+=u2,u3]||fr34=fr34*fr32||fr39=fr38*fr38||fr40=fr38*fr28
        .loc 2, 83
fr25=fr15*fr15||fr26=fr16*fr16||fr28=fr23+fr24||fr36=sqrt(abs fr27)||fr32=(fr27+fr4)/2
        .loc 2, 84
r20:19=[u0+=u2,u3]||fr42=1/fr31
        .loc 2, 85
fr34=fr3-fr34||fr39=fr39*fr37||fr33=1/fr36
        .loc 2, 86
fr43=fr42*fr42||fr44=fr42*fr29
        .loc 2, 87
fr23=fr17*fr17||fr24=fr18*fr18||fr29=fr25+fr26||fr31=sqrt(abs fr28)||fr37=(fr28+fr4)/2
        .loc 2, 88
r22:21=[u0+=u2,u3]||fr30=fr34*fr35||fr39=fr3-fr39||fr34=fr33*fr33||fr35=fr33*fr27||fr43=fr43*fr41

        .loc 2, 90
_cabsproc4:
        .loc 2, 91
.code_align 16
        .loc 2, 92
if nlc0 b _cabsproc1||fr38=1/fr31
        .loc 2, 93
r6:5=[u0+=u2,u3]||fr25=fr19*fr19||fr26=fr20*fr20||fr27=fr23+fr24||fr36=sqrt(abs fr29)||fr41=(fr29+fr4)/2
        .loc 2, 94
[v0+=v1,v2]=r30||fr30=fr39*fr40||fr43=fr3-fr43||fr34=fr34*fr32||fr39=fr38*fr38||fr40=fr38*fr28
        .loc 2, 95
.code_align 16
        .loc 2, 96
if nlc0 b _cabsproc1||fr42=1/fr36
        .loc 2, 97
r8:7=[u0+=u2,u3]||fr23=fr21*fr21||fr24=fr22*fr22||fr28=fr25+fr26||fr31=sqrt(abs fr27)||fr32=(fr27+fr4)/2
        .loc 2, 98
[v0+=v1,v2]=r30||fr30=fr43*fr44||fr34=fr3-fr34||fr39=fr39*fr37||fr43=fr42*fr42||fr44=fr42*fr29
        .loc 2, 99
.code_align 16
        .loc 2, 100
if nlc0 b _cabsproc1||fr33=1/fr31
        .loc 2, 101
r10:9=[u0+=u2,u3]||fr25=fr5*fr5||fr26=fr6*fr6||fr29=fr23+fr24||fr36=sqrt(abs fr28)||fr37=(fr28+fr4)/2
        .loc 2, 102
[v0+=v1,v2]=r30||fr30=fr34*fr35||fr39=fr3-fr39||fr43=fr43*fr41||fr34=fr33*fr33||fr35=fr33*fr27
        .loc 2, 103
.code_align 16
        .loc 2, 104
if nlc0 b _cabsproc1||fr38=1/fr36
        .loc 2, 105
r12:11=[u0+=u2,u3]||fr23=fr7*fr7||fr24=fr8*fr8||fr27=fr25+fr26||fr31=sqrt(abs fr29)||fr41=(fr29+fr4)/2
        .loc 2, 106
[v0+=v1,v2]=r30||fr30=fr39*fr40||fr43=fr3-fr43||fr34=fr34*fr32||fr39=fr38*fr38||fr40=fr38*fr28
        .loc 2, 107
.code_align 16
        .loc 2, 108
if nlc0 b _cabsproc1||fr42=1/fr31
        .loc 2, 109
r14:13=[u0+=u2,u3]||fr25=fr9*fr9||fr26=fr10*fr10||fr28=fr23+fr24||fr36=sqrt(abs fr27)||fr32=(fr27+fr4)/2
        .loc 2, 110
[v0+=v1,v2]=r30||fr30=fr43*fr44||fr34=fr3-fr34||fr39=fr39*fr37||fr43=fr42*fr42||fr44=fr42*fr29
        .loc 2, 111
.code_align 16
        .loc 2, 112
if nlc0 b _cabsproc1||fr33=1/fr36
        .loc 2, 113
r16:15=[u0+=u2,u3]||fr23=fr11*fr11||fr24=fr12*fr12||fr29=fr25+fr26||fr31=sqrt(abs fr28)||fr37=(fr28+fr4)/2
        .loc 2, 114
[v0+=v1,v2]=r30||fr30=fr34*fr35||fr39=fr3-fr39||fr43=fr43*fr41||fr34=fr33*fr33||fr35=fr33*fr27
        .loc 2, 115
.code_align 16
        .loc 2, 116
if nlc0 b _cabsproc1||fr38=1/fr31
        .loc 2, 117
r18:17=[u0+=u2,u3]||fr25=fr13*fr13||fr26=fr14*fr14||fr27=fr23+fr24||fr36=sqrt(abs fr29)||fr41=(fr29+fr4)/2
        .loc 2, 118
[v0+=v1,v2]=r30||fr30=fr39*fr40||fr43=fr3-fr43||fr34=fr34*fr32||fr39=fr38*fr38||fr40=fr38*fr28
        .loc 2, 119
.code_align 16
        .loc 2, 120
if nlc0 b _cabsproc1||fr42=1/fr36
        .loc 2, 121
r20:19=[u0+=u2,u3]||fr23=fr15*fr15||fr24=fr16*fr16||fr28=fr25+fr26||fr31=sqrt(abs fr27)||fr32=(fr27+fr4)/2
        .loc 2, 122
[v0+=v1,v2]=r30||fr30=fr43*fr44||fr34=fr3-fr34||fr39=fr39*fr37||fr43=fr42*fr42||fr44=fr42*fr29
        .loc 2, 123
.code_align 16
        .loc 2, 124
if nlc0 b _cabsproc1||fr33=1/fr31
        .loc 2, 125
r22:21=[u0+=u2,u3]||fr23=fr17*fr17||fr24=fr18*fr18||fr29=fr23+fr24||fr31=sqrt(abs fr28)||fr37=(fr28+fr4)/2
        .loc 2, 126
.code_align 16
        .loc 2, 127
b _cabsproc4||[v0+=v1,v2]=r30||fr30=fr34*fr35||fr39=fr3-fr39||fr43=fr43*fr41||fr34=fr33*fr33||fr35=fr33*fr27

        .loc 2, 129
_cabsproc1:
        .loc 2, 130
.code_align 16
        .loc 2, 131
if nlc1 b _end
        .loc 2, 132
.code_align 16
        .loc 2, 133
if nlc1 b _end||[v0+=v2,v2]=xr30
        .loc 2, 134
.code_align 16
        .loc 2, 135
if nlc1 b _end||[v0+=v2,v2]=yr30
        .loc 2, 136
.code_align 16
        .loc 2, 137
if nlc1 b _end||[v0+=v2,v2]=zr30

        .loc 2, 139
_end:

        .loc 2, 141
r5=[u8+4,-1]||u8=u8+4
        .loc 2, 142
r44=[u8+4,-1]||u8=u8+4
        .loc 2, 143
r43=[u8+4,-1]||u8=u8+4
        .loc 2, 144
r42=[u8+4,-1]||u8=u8+4
        .loc 2, 145
r41=[u8+4,-1]||u8=u8+4
        .loc 2, 146
r40=[u8+4,-1]||u8=u8+4||xmulcr=r5||ymulcr=r5||zmulcr=r5||tmulcr=r5

        .loc 2, 148
nop
        .loc 2, 149
rtrap 23
        .loc 2, 150
nop
        .loc 2, 151
.code_align 16
        .loc 2, 152
ret   
