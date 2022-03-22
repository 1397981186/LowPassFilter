        .file "C:\Users\Mihtop\Desktop\ECS\201124\"
        .file 1, "../bw_cvifft_f.asm"















        .file "C:\Users\Mihtop\Desktop\ECS\201124\"
        .file 2, "bw_cvifft_f.asm"
        .loc 2, 16
.global __bw_cvifft_f
        .loc 2, 18
.text
        .loc 2, 19
__bw_cvifft_f:
        .loc 2, 20
u10=1||v10=4||u11=1||xr8=r3 pos1||yr1=u2
        .loc 2, 21
xr7=r3 lshift -2||xr0=u1||xr1=u2||w15=xr3


        .loc 2, 24
_cfft4:
        .loc 2, 25
u12=13||xr4=r3 lshift -6||u6=u0+12||w13=xr0||v0=xr1||xr6=r8||zr1=u0

        .loc 2, 27
fr0=0.7071067811865475244008443621<BB>||v12=28||u7=xr8||xr6-=4

        .loc 2, 29
r31:30=br(u7)[u6+=u10,u11]
        .loc 2, 30
||fr1=0.92387953251128675612818319<BB>									
        .loc 2, 31
||fr2=-0.38268343236508977172846<BB>
        .loc 2, 32
||lc1=xr4
        .loc 2, 33
||u4=u0+8
        .loc 2, 34
||w0=w13+0
        .loc 2, 35
||u13=xr1
        .loc 2, 36
||xr7+=1

        .loc 2, 38
r33:32=br(u7)[u6+=u10,u11]
        .loc 2, 39
||fr0=0.7071067811865475244008443621
        .loc 2, 40
||fr3=1.0
        .loc 2, 41
||xr6+=1
        .loc 2, 42
||u5=u0+9
        .loc 2, 43
||v1=v0+2
        .loc 2, 44
||w10=w13+0
        .loc 2, 45
||v13=zr1

        .loc 2, 47
r35:34=br(u7)[u6+=u10,u11]
        .loc 2, 48
||u2=u0+4
        .loc 2, 49
||v2=v0+8
        .loc 2, 50
||v11=xr7
        .loc 2, 51
||fr3=1.0<BB>

        .loc 2, 53
r37:36=br(u7)[u6+=u12,u11]
        .loc 2, 54
||u3=u0+5
        .loc 2, 55
||v3=v0+10
        .loc 2, 56
||xr6=r6 lshift -1


        .loc 2, 59
r23:22=br(u7)[u4+=u10,u11]
        .loc 2, 60
||fr31=fr30+fr32||fr30=fr31+fr33||fr33=fr30-fr32||fr32=fr31-fr33 
        .loc 2, 61
||u1=u0+1
        .loc 2, 62
||v4=v0+16

        .loc 2, 64
r25:24=br(u7)[u4+=u10,u11]
        .loc 2, 65
||v5=v0+18
        .loc 2, 66
||w4=xr6


        .loc 2, 69
r27:26=br(u7)[u4+=u10,u11]
        .loc 2, 70
||fr35=fr34+fr36||fr34=fr35+fr37||fr37=fr34-fr36||fr36=fr35-fr37
        .loc 2, 71
||v6=v0+24

        .loc 2, 73
r29:28=br(u7)[u4+=u12,u11]
        .loc 2, 74
||v7=v0+26
        .loc 2, 75
||lc0=xr6


        .loc 2, 78
r15:14=br(u7)[u2+=u10,u11]
        .loc 2, 79
||fr23=fr22+fr24||fr22=fr23+fr25||fr25=fr22-fr24||fr24=fr23-fr25
        .loc 2, 80
||u14=32
        .loc 2, 81
||v14=32


        .loc 2, 84
r17:16=br(u7)[u2+=u10,u11]
        .loc 2, 85
||cfr33:32=cfr33:32-jcfr37:36
        .loc 2, 86
||cfr37:36=cfr33:32+jcfr37:36
        .loc 2, 87
||w12=32
        .loc 2, 88
||w14=64
        .loc 2, 89
||cfr31:30_35:34=cfr31:30+/-cfr35:34



        .loc 2, 93
r19:18=br(u7)[u2+=u10,u11]
        .loc 2, 94
||u15=96
        .loc 2, 95
||v15=96
        .loc 2, 96
||fr27=fr26+fr28||fr26=fr27+fr29||fr29=fr26-fr28||fr28=fr27-fr29

        .loc 2, 98
r21:20=br(u7)[u2+=u12,u11]
        .loc 2, 99
||w5=8
        .loc 2, 100
||w6=1
        .loc 2, 101
||cfr33:32=cfr33:32*fr0||cfr37:36=cfr37:36*fr0



        .loc 2, 105
r7:6=br(u7)[u0+=u10,u11]
        .loc 2, 106
||fr15=fr14+fr16||fr14=fr15+fr17||fr17=fr14-fr16||fr16=fr15-fr17


        .loc 2, 109
r9:8=br(u7)[u0+=u10,u11]
        .loc 2, 110
||cfr25:24=cfr25:24-jcfr29:28
        .loc 2, 111
||cfr29:28=cfr25:24+jcfr29:28
        .loc 2, 112
||cfr23:22_27:26=cfr23:22+/-cfr27:26


        .loc 2, 115
r11:10=br(u7)[u0+=u10,u11]
        .loc 2, 116
||fr19=fr18+fr20||fr18=fr19+fr21||fr21=fr18-fr20||fr20=fr19-fr21
        .loc 2, 117
||fr57=fr33+fr32||fr56=fr32-fr33
        .loc 2, 118
||fr37=fr36-fr37||fr36=fr37+fr36


        .loc 2, 121
r13:12=br(u7)[u0+=u12,u11]


        .loc 2, 124
r31:30=br(u7)[u6+=u10,u11]
        .loc 2, 125
||cfr27:26=cfr27:26-jcfr35:34<BA>
        .loc 2, 126
||cfr35:34=cfr27:26+jcfr35:34<BA>
        .loc 2, 127
||cfr23:22=cfr23:22+cfr31:30<BA>
        .loc 2, 128
||cfr31:30=cfr23:22-cfr31:30<BA>

        .loc 2, 130
r33:32=br(u7)[u6+=u10,u11]
        .loc 2, 131
||cfr15:14_19:18=cfr15:14+/-cfr19:18
        .loc 2, 132
||cfr17:16=cfr17:16-jcfr21:20
        .loc 2, 133
||cfr21:20=cfr17:16+jcfr21:20


        .loc 2, 136
r35:34=br(u7)[u6+=u10,u11]
        .loc 2, 137
||fr7=fr6+fr8||fr6=fr7+fr9||fr9=fr6-fr8||fr8=fr7-fr9
        .loc 2, 138
||fr11=fr10+fr12||fr10=fr11+fr13||fr13=fr10-fr12||fr12=fr11-fr13 
        .loc 2, 139
||cfr35:34=cfr35:34*fr0<BB>||cfr27:26=cfr27:26*fr0<BB>

        .loc 2, 141
r37:36=br(u7)[u6+=u12,u11]
        .loc 2, 142
||cfr25:24=cfr25:24+cfr57:56<BA>
        .loc 2, 143
||cfr33:32=cfr25:24-cfr57:56<BA>
        .loc 2, 144
||fr29=fr29+fr37<BA>||fr28=fr28-fr36<BA>
        .loc 2, 145
||fr37=fr29-fr37<BA>||fr36=fr28+fr36<BA>
        .loc 2, 146
||cfr17:16=cfr17:16*fr0||cfr21:20=cfr21:20*fr0


        .loc 2, 149
r23:22=br(u7)[u4+=u10,u11]
        .loc 2, 150
||fr31=fr30+fr32||fr30=fr31+fr33||fr33=fr30-fr32||fr32=fr31-fr33
        .loc 2, 151
||fr35=fr34-fr35<BB>||fr34=fr34+fr35<BB>
        .loc 2, 152
||fr27=fr26+fr27<BB>||fr26=fr26-fr27<BB>

        .loc 2, 154
r25:24=br(u7)[u4+=u10,u11]
        .loc 2, 155
||cfr57:56=cfr33:32*fr2<BB>||fr5=fr32*fr1<BB>||fr4=fr33*fr1<BB>
        .loc 2, 156
||cfr49:48=cfr25:24*fr1<BB>||fr63=fr24*fr2<BB>||fr62=fr25*fr2<BB>
        .loc 2, 157
||cfr7:6_11:10=cfr7:6+/-cfr11:10
        .loc 2, 158
||fr41=fr17+fr16||fr40=fr16-fr17
        .loc 2, 159
||fr45=fr20-fr21||fr44=fr21+fr20
        .loc 2, 160
||r43:42=r19:18

        .loc 2, 162
r27:26=br(u7)[u4+=u10,u11]
        .loc 2, 163
||fr53=fr28*fr1<BB>||fr29=fr29*fr2<BB>||fr52=fr29*fr1<BB>||fr28=fr28*fr2<BB>
        .loc 2, 164
||cfr61:60=cfr37:36*fr1<BB>||cfr37:36=cfr37:36*fr2<BB>
        .loc 2, 165
||fr35=fr34+fr36||fr34=fr35+fr37||fr37=fr34-fr36||fr36=fr35-fr37
        .loc 2, 166
||cfr47:46=cfr9:8-jcfr13:12
        .loc 2, 167
||cfr13:12=cfr9:8+jcfr13:12

        .loc 2, 169
r29:28=br(u7)[u4+=u12,u11]
        .loc 2, 170
||fr25=fr49-fr63<BB>||fr24=fr48+fr62<BB>
        .loc 2, 171
||fr33=fr57+fr5<BB>||fr32=fr56-fr4<BB>
        .loc 2, 172
||r39:38=r15:14

        .loc 2, 174
r15:14=br(u7)[u2+=u10,u11]
        .loc 2, 175
||fr23=fr22+fr24||fr22=fr23+fr25||fr25=fr22-fr24||fr24=fr23-fr25
        .loc 2, 176
||fr37=fr61+fr36<BB>||fr36=fr37-fr60<BB>
        .loc 2, 177
||fr29=fr53-fr29<BB>||fr28=fr28+fr52<BB>

        .loc 2, 179
r17:16=br(u7)[u2+=u10,u11]
        .loc 2, 180
||cfr31:30_35:34=cfr31:30+/-cfr35:34
        .loc 2, 181
||cfr33:32=cfr33:32-jcfr37:36
        .loc 2, 182
||cfr37:36=cfr33:32+jcfr37:36

        .loc 2, 184
r19:18=br(u7)[u2+=u10,u11]
        .loc 2, 185
||fr27=fr26+fr28||fr26=fr27+fr29||fr29=fr26-fr28||fr28=fr27-fr29
        .loc 2, 186
||cfr7:6=cfr7:6+cfr39:38<BA>
        .loc 2, 187
||cfr15:14=cfr7:6-cfr39:38<BA>



        .loc 2, 191
r21:20=br(u7)[u2+=u12,u11]
        .loc 2, 192
||cfr11:10=cfr11:10-jcfr43:42<BA>
        .loc 2, 193
||cfr19:18=cfr11:10+jcfr43:42<BA>
        .loc 2, 194
||cfr33:32=cfr33:32*fr0||cfr37:36=cfr37:36*fr0
        .loc 2, 195
||cfr9:8=cfr47:46+cfr41:40<BA>
        .loc 2, 196
||cfr17:16=cfr47:46-cfr41:40<BA>

        .loc 2, 198
r7:6=br(u7)[u0+=u10,u11]
        .loc 2, 199
||fr15=fr14+fr16||fr14=fr15+fr17||fr17=fr14-fr16||fr16=fr15-fr17
        .loc 2, 200
||fr13=fr13+fr45<BA>||fr12=fr12-fr44<BA>
        .loc 2, 201
||fr21=fr13-fr45<BA>||fr20=fr12+fr44<BA>


        .loc 2, 204
r9:8=br(u7)[u0+=u10,u11]
        .loc 2, 205
||cfr25:24=cfr25:24-jcfr29:28
        .loc 2, 206
||cfr29:28=cfr25:24+jcfr29:28
        .loc 2, 207
||cfr23:22_27:26=cfr23:22+/-cfr27:26


        .loc 2, 210
r11:10=br(u7)[u0+=u10,u11]
        .loc 2, 211
||fr57=fr33+fr32||fr56=fr32-fr33
        .loc 2, 212
||fr37=fr36-fr37||fr36=fr37+fr36
        .loc 2, 213
||cfr7:6=cfr7:6+cfr23:22<BB>||cfr47:46=cfr7:6-cfr23:22<BB>


        .loc 2, 216
r13:12=br(u7)[u0+=u12,u11]
        .loc 2, 217
||fr19=fr18+fr20||fr18=fr19+fr21||fr21=fr18-fr20||fr20=fr19-fr21
        .loc 2, 218
||cfr15:14=cfr15:14-jcfr31:30<BB>
        .loc 2, 219
||cfr55:54=cfr15:14+jcfr31:30<BB>



        .loc 2, 223
cfr11:10=cfr11:10+cfr27:26<BB>||cfr51:50=cfr11:10-cfr27:26<BB>
        .loc 2, 224
||fr19=fr19+fr35<BB>||fr18=fr18-fr34<BB>
        .loc 2, 225
||fr59=fr19-fr35<BB>||fr58=fr18+fr34<BB>

        .loc 2, 227
cfr9:8=cfr9:8+cfr25:24<BB>||cfr49:48=cfr9:8-cfr25:24<BB>
        .loc 2, 228
||cfr17:16=cfr17:16+cfr33:32<BB>||cfr57:56=cfr17:16-cfr33:32<BB>

        .loc 2, 230
fr13=fr13+fr29<BB>||fr12=fr12-fr28<BB>
        .loc 2, 231
||fr53=fr13-fr29<BB>||fr52=fr12+fr28<BB>
        .loc 2, 232
||fr21=fr21-fr37<BB>||fr20=fr20+fr36<BB>
        .loc 2, 233
||fr61=fr21+fr37<BB>||fr60=fr20-fr36<BB>

        .loc 2, 235
r31:30=br(u7)[u6+=u10,u11]
        .loc 2, 236
||cfr27:26=cfr27:26-jcfr35:34<BA>
        .loc 2, 237
||cfr35:34=cfr27:26+jcfr35:34<BA>
        .loc 2, 238
||cfr23:22=cfr23:22+cfr31:30<BA>
        .loc 2, 239
||cfr31:30=cfr23:22-cfr31:30<BA>

        .loc 2, 241
_cfftloop4:
        .loc 2, 242
.code_align 16
        .loc 2, 243
m[v0+=v10,v11]=xr7:6yr9:8zr11:10tr13:12<BB>
        .loc 2, 244
||r33:32=br(u7)[u6+=u10,u11]
        .loc 2, 245
||cfr15:14_19:18=cfr15:14+/-cfr19:18
        .loc 2, 246
||cfr17:16=cfr17:16-jcfr21:20
        .loc 2, 247
||cfr21:20=cfr17:16+jcfr21:20

        .loc 2, 249
m[v1+=v10,v11]=xr9:8yr11:10zr13:12tr7:6<BB>
        .loc 2, 250
||r35:34=br(u7)[u6+=u10,u11]
        .loc 2, 251
||fr7=fr6+fr8||fr6=fr7+fr9||fr9=fr6-fr8||fr8=fr7-fr9
        .loc 2, 252
||fr11=fr10+fr12||fr10=fr11+fr13||fr13=fr10-fr12||fr12=fr11-fr13
        .loc 2, 253
||cfr35:34=cfr35:34*fr0<BB>||cfr27:26=cfr27:26*fr0<BB>

        .loc 2, 255
m[v0+=v12,v11]=xr11:10yr13:12zr7:6tr9:8<BB>
        .loc 2, 256
||r37:36=br(u7)[u6+=u12,u11]
        .loc 2, 257
||cfr25:24=cfr25:24+cfr57:56<BA>
        .loc 2, 258
||cfr33:32=cfr25:24-cfr57:56<BA>
        .loc 2, 259
||fr29=fr29+fr37<BA>||fr28=fr28-fr36<BA>
        .loc 2, 260
||fr37=fr29-fr37<BA>||fr36=fr28+fr36<BA>
        .loc 2, 261
||cfr17:16=cfr17:16*fr0||cfr21:20=cfr21:20*fr0


        .loc 2, 264
m[v1+=v12,v11]=xr13:12yr7:6zr9:8tr11:10<BB>
        .loc 2, 265
||r23:22=br(u7)[u4+=u10,u11]
        .loc 2, 266
||fr31=fr30+fr32||fr30=fr31+fr33||fr33=fr30-fr32||fr32=fr31-fr33
        .loc 2, 267
||fr35=fr34-fr35<BB>||fr34=fr34+fr35<BB>
        .loc 2, 268
||fr27=fr26+fr27<BB>||fr26=fr26-fr27<BB>


        .loc 2, 271
m[v4+=v10,v11]=xr47:46yr49:48zr51:50tr53:52<BB>
        .loc 2, 272
||r25:24=br(u7)[u4+=u10,u11]
        .loc 2, 273
||cfr45:44=cfr33:32*fr2<BB>||cfr5:4=cfr33:32*fr1<BB>
        .loc 2, 274
||cfr25:24=cfr25:24*fr1<BB>||cfr63:62=cfr25:24*fr2<BB>
        .loc 2, 275
||cfr7:6_11:10=cfr7:6+/-cfr11:10
        .loc 2, 276
||fr41=fr17+fr16||fr40=fr16-fr17
        .loc 2, 277
||fr45=fr20-fr21||fr44=fr21+fr20
        .loc 2, 278
||r43:42=r19:18

        .loc 2, 280
m[v5+=v10,v11]=xr49:48yr51:50zr53:52tr47:46<BB>
        .loc 2, 281
||r27:26=br(u7)[u4+=u10,u11]
        .loc 2, 282
||cfr43:42=cfr29:28*fr1<BB>||cfr29:28=cfr29:28*fr2<BB>
        .loc 2, 283
||cfr7:6=cfr37:36*fr1<BB>||cfr37:36=cfr37:36*fr2<BB>
        .loc 2, 284
||fr35=fr34+fr36||fr34=fr35+fr37||fr37=fr34-fr36||fr36=fr35-fr37
        .loc 2, 285
||cfr47:46=cfr9:8-jcfr13:12
        .loc 2, 286
||cfr13:12=cfr9:8+jcfr13:12

        .loc 2, 288
m[v4+=v12,v11]=xr51:50yr53:52zr47:46tr49:48<BB>
        .loc 2, 289
||r29:28=br(u7)[u4+=u12,u11]
        .loc 2, 290
||fr25=fr25-fr62<BB>||fr24=fr24+fr63<BB>
        .loc 2, 291
||fr33=fr45+fr4<BB>||fr32=fr44-fr5<BB>

        .loc 2, 293
m[v5+=v12,v11]=xr53:52yr47:46zr49:48tr51:50<BB>
        .loc 2, 294
||r15:14=br(u7)[u2+=u10,u11]
        .loc 2, 295
||fr23=fr22+fr24||fr22=fr23+fr25||fr25=fr22-fr24||fr24=fr23-fr25
        .loc 2, 296
||fr37=fr7+fr36<BB>||fr36=fr37-fr6<BB>
        .loc 2, 297
||fr29=fr42-fr29<BB>||fr28=fr28+fr43<BB>
        .loc 2, 298
||r39:38=r15:14

        .loc 2, 300
m[v2+=v10,v11]=xr15:14yr17:16zr19:18tr21:20<BB>
        .loc 2, 301
||r17:16=br(u7)[u2+=u10,u11]
        .loc 2, 302
||cfr31:30_35:34=cfr31:30+/-cfr35:34
        .loc 2, 303
||cfr33:32=cfr33:32-jcfr37:36
        .loc 2, 304
||cfr37:36=cfr33:32+jcfr37:36

        .loc 2, 306
m[v3+=v10,v11]=xr17:16yr19:18zr21:20tr15:14<BB>
        .loc 2, 307
||r19:18=br(u7)[u2+=u10,u11]
        .loc 2, 308
||fr27=fr26+fr28||fr26=fr27+fr29||fr29=fr26-fr28||fr28=fr27-fr29
        .loc 2, 309
||cfr7:6=cfr7:6+cfr39:38<BA>
        .loc 2, 310
||cfr47:46=cfr7:6-cfr39:38<BA>

        .loc 2, 312
m[v2+=v12,v11]=xr19:18yr21:20zr15:14tr17:16<BB>
        .loc 2, 313
||r21:20=br(u7)[u2+=u12,u11]
        .loc 2, 314
||cfr11:10=cfr11:10-jcfr43:42<BA>
        .loc 2, 315
||cfr43:42=cfr11:10+jcfr43:42<BA>
        .loc 2, 316
||cfr33:32=cfr33:32*fr0||cfr37:36=cfr37:36*fr0
        .loc 2, 317
||cfr9:8=cfr47:46+cfr41:40<BA>
        .loc 2, 318
||cfr49:48=cfr47:46-cfr41:40<BA>

        .loc 2, 320
m[v3+=v12,v11]=xr21:20yr15:14zr17:16tr19:18<BB>
        .loc 2, 321
||r7:6=br(u7)[u0+=u10,u11]
        .loc 2, 322
||fr15=fr14+fr16||fr14=fr15+fr17||fr17=fr14-fr16||fr16=fr15-fr17
        .loc 2, 323
||fr13=fr13+fr45<BA>||fr12=fr12-fr44<BA>
        .loc 2, 324
||fr21=fr13-fr45<BA>||fr20=fr12+fr44<BA>


        .loc 2, 327
m[v6+=v10,v11]=xr55:54yr57:56zr59:58tr61:60<BB>
        .loc 2, 328
||r9:8=br(u7)[u0+=u10,u11]
        .loc 2, 329
||cfr25:24=cfr25:24-jcfr29:28
        .loc 2, 330
||cfr29:28=cfr25:24+jcfr29:28
        .loc 2, 331
||cfr23:22_27:26=cfr23:22+/-cfr27:26


        .loc 2, 334
m[v7+=v10,v11]=xr57:56yr59:58zr61:60tr55:54<BB>
        .loc 2, 335
||r11:10=br(u7)[u0+=u10,u11]
        .loc 2, 336
||fr57=fr33+fr32||fr56=fr32-fr33
        .loc 2, 337
||fr37=fr36-fr37||fr36=fr37+fr36
        .loc 2, 338
||cfr7:6=cfr7:6+cfr23:22<BB>||cfr47:46=cfr7:6-cfr23:22<BB>
        .loc 2, 339
||cfr23:22=cfr47:46*fr3<BB>
        .loc 2, 340
||r5:4 = r49:48<BB>
        .loc 2, 341
.code_align 16
        .loc 2, 342
m[v6+=v12,v11]=xr59:58yr61:60zr55:54tr57:56<BB>
        .loc 2, 343
||r13:12=br(u7)[u0+=u12,u11]
        .loc 2, 344
||fr19=fr18+fr20||fr18=fr19+fr21||fr21=fr18-fr20||fr20=fr19-fr21
        .loc 2, 345
||cfr11:10=cfr11:10+cfr27:26<BB>||cfr51:50=cfr11:10-cfr27:26<BB>

        .loc 2, 347
m[v7+=v12,v11]=xr61:60yr55:54zr57:56tr59:58<BB>
        .loc 2, 348
||cfr15:14=cfr23:22-jcfr31:30<BB>
        .loc 2, 349
||cfr55:54=cfr23:22+jcfr31:30<BB>
        .loc 2, 350
||fr19=fr43+fr35<BB>||fr18=fr42-fr34<BB>
        .loc 2, 351
||fr59=fr43-fr35<BB>||fr58=fr42+fr34<BB>

        .loc 2, 353
cfr9:8=cfr9:8+cfr25:24<BB>||cfr49:48=cfr9:8-cfr25:24<BB>
        .loc 2, 354
||fr13=fr13+fr29<BB>||fr12=fr12-fr28<BB>
        .loc 2, 355
||fr53=fr13-fr29<BB>||fr52=fr12+fr28<BB>

        .loc 2, 357
cfr17:16=cfr5:4+cfr33:32<BB>||cfr57:56=cfr5:4-cfr33:32<BB>
        .loc 2, 358
||fr21=fr21-fr37<BB>||fr20=fr20+fr36<BB>
        .loc 2, 359
||fr61=fr21+fr37<BB>||fr60=fr20-fr36<BB>

        .loc 2, 361
.code_align 4
        .loc 2, 362
if lc1 b _cfftloop4
        .loc 2, 363
||r31:30=br(u7)[u6+=u10,u11]
        .loc 2, 364
||cfr27:26=cfr27:26-jcfr35:34<BA>
        .loc 2, 365
||cfr35:34=cfr27:26+jcfr35:34<BA>
        .loc 2, 366
||cfr23:22=cfr23:22+cfr31:30<BA>
        .loc 2, 367
||cfr31:30=cfr23:22-cfr31:30<BA>




        .loc 2, 372
u11=1||v11=1
        .loc 2, 373
||xr1=87381||xr0=0
        .loc 2, 374
||u0=u13+0||v0=v13+0
        .loc 2, 375
||xr3=w15
        .loc 2, 376
||w11=w12+w14


        .loc 2, 379
u12=128||v12=128
        .loc 2, 380
||yr4=4||w7=0
        .loc 2, 381
||tr4=w4
        .loc 2, 382
||u1=u13+u14||v1=v13+v14

        .loc 2, 384
u10=8||v10=8
        .loc 2, 385
||u3=u13+u15
        .loc 2, 386
||v3=v13+v15
        .loc 2, 387
||xr4=r3 ashift -7
        .loc 2, 388
||w2=w0+w12
        .loc 2, 389
||xr1=r1 & r3
        .loc 2, 390
.code_align 16
        .loc 2, 391
if nlc0 b _cfftlast||u2=u1+u14||v2=v1+v14||tr4-=1

        .loc 2, 393
.code_align 16
        .loc 2, 394
 if xr1>r0 b _cfft2stage
        .loc 2, 395
 _cfft1:
        .loc 2, 396
u4=40
        .loc 2, 397
||v4=40
        .loc 2, 398
||w10=-24
        .loc 2, 399
||xr5=r3 lshift -5
        .loc 2, 400
||r7:6=[u1+=u10,u11]
        .loc 2, 401
||r11:10=[w0+=w5,w6]

        .loc 2, 403
u14=64
        .loc 2, 404
||v14=64
        .loc 2, 405
||r9:8=[u0+=u10,u11]

        .loc 2, 407
u15=192
        .loc 2, 408
||v15=192
        .loc 2, 409
||r13:12=[u1+=u10,u11]
        .loc 2, 410
||r17:16=[w0+=w5,w6]


        .loc 2, 413
w12=64
        .loc 2, 414
||w14=128
        .loc 2, 415
||r15:14=[u0+=u10,u11]
        .loc 2, 416
||cfr7:6=cfr7:6*fr11
        .loc 2, 417
||cfr11:10=cfr7:6*fr10
        .loc 2, 418
||lc1=xr5

        .loc 2, 420
r19:18=[u1+=u10,u11]
        .loc 2, 421
||r23:22=[w0+=w5,w6]


        .loc 2, 424
r21:20=[u0+=u10,u11]
        .loc 2, 425
||cfr13:12=cfr13:12*fr17
        .loc 2, 426
||cfr17:16=cfr13:12*fr16
        .loc 2, 427
||fr7=fr7-fr10||fr6=fr6+fr11

        .loc 2, 429
r25:24=[u1+=u4,u11]
        .loc 2, 430
||r29:28=[w0+=w10,w6]

        .loc 2, 432
r27:26=[u0+=u4,u11]
        .loc 2, 433
||cfr19:18=cfr19:18*fr23
        .loc 2, 434
||cfr23:22=cfr19:18*fr22
        .loc 2, 435
||fr13=fr13-fr16||fr12=fr12+fr17


        .loc 2, 438
r7:6=[u1+=u10,u11]
        .loc 2, 439
||r11:10=[w0+=w5,w6]
        .loc 2, 440
||cfr31:30=cfr9:8+cfr7:6
        .loc 2, 441
||cfr33:32=cfr9:8-cfr7:6

        .loc 2, 443
r9:8=[u0+=u10,u11]
        .loc 2, 444
||cfr25:24=cfr25:24*fr29
        .loc 2, 445
||cfr29:28=cfr25:24*fr28
        .loc 2, 446
||fr19=fr19-fr22||fr18=fr18+fr23

        .loc 2, 448
r13:12=[u1+=u10,u11]
        .loc 2, 449
||r17:16=[w0+=w5,w6]
        .loc 2, 450
||cfr35:34=cfr15:14+cfr13:12
        .loc 2, 451
||cfr37:36=cfr15:14-cfr13:12


        .loc 2, 454
_cfft1loop:

        .loc 2, 456
[v0+=v10,v11]=r31:30
        .loc 2, 457
||r15:14=[u0+=u10,u11]
        .loc 2, 458
||fr25=fr25-fr28||fr24=fr24+fr29
        .loc 2, 459
||cfr7:6=cfr7:6*fr11
        .loc 2, 460
||cfr11:10=cfr7:6*fr10

        .loc 2, 462
[v1+=v10,v11]=r33:32
        .loc 2, 463
||r19:18=[u1+=u10,u11]
        .loc 2, 464
||r23:22=[w0+=w5,w6]
        .loc 2, 465
||cfr41:40=cfr21:20+cfr19:18
        .loc 2, 466
||cfr43:42=cfr21:20-cfr19:18


        .loc 2, 469
[v0+=v10,v11]=r35:34
        .loc 2, 470
||r21:20=[u0+=u10,u11]
        .loc 2, 471
||cfr13:12=cfr13:12*fr17
        .loc 2, 472
||cfr17:16=cfr13:12*fr16
        .loc 2, 473
||fr7=fr7-fr10||fr6=fr6+fr11



        .loc 2, 477
[v1+=v10,v11]=r37:36
        .loc 2, 478
||r25:24=[u1+=u4,u11]
        .loc 2, 479
||r29:28=[w0+=w10,w6]
        .loc 2, 480
||cfr45:44=cfr27:26+cfr25:24
        .loc 2, 481
||cfr47:46=cfr27:26-cfr25:24


        .loc 2, 484
[v0+=v10,v11]=r41:40
        .loc 2, 485
||r27:26=[u0+=u4,u11]
        .loc 2, 486
||fr13=fr13-fr16||fr12=fr12+fr17
        .loc 2, 487
||cfr19:18=cfr19:18*fr23
        .loc 2, 488
||cfr23:22=cfr19:18*fr22


        .loc 2, 491
[v1+=v10,v11]=r43:42
        .loc 2, 492
||r7:6=[u1+=u10,u11]
        .loc 2, 493
||r11:10=[w0+=w5,w6]
        .loc 2, 494
||cfr31:30=cfr9:8+cfr7:6
        .loc 2, 495
||cfr33:32=cfr9:8-cfr7:6


        .loc 2, 498
[v0+=v4,v11]=r45:44
        .loc 2, 499
||r9:8=[u0+=u10,u11]
        .loc 2, 500
||cfr25:24=cfr25:24*fr29
        .loc 2, 501
||cfr29:28=cfr25:24*fr28
        .loc 2, 502
||fr19=fr19-fr22||fr18=fr18+fr23

        .loc 2, 504
.code_align 16
        .loc 2, 505
if lc1 b _cfft1loop
        .loc 2, 506
||[v1+=v4,v11]=r47:46
        .loc 2, 507
||r13:12=[u1+=u10,u11]
        .loc 2, 508
||r17:16=[w0+=w5,w6]
        .loc 2, 509
||cfr35:34=cfr15:14+cfr13:12
        .loc 2, 510
||cfr37:36=cfr15:14-cfr13:12


        .loc 2, 513
zr0=u13||tr0=v13
        .loc 2, 514
u13=tr0||v13=zr0

        .loc 2, 516
u0=u13+0||v0=v13+0
        .loc 2, 517
||w0=w13+32

        .loc 2, 519
.code_align 16
        .loc 2, 520
u12=256||v12=256
        .loc 2, 521
||yr4=8||w7=0
        .loc 2, 522
||u1=u13+u14
        .loc 2, 523
||v1=v13+v14
        .loc 2, 524
||w11=w12+w14

        .loc 2, 526
u3=u13+u15
        .loc 2, 527
||v3=v13+v15
        .loc 2, 528
||xr4=r3 ashift -8
        .loc 2, 529
||w2=w0+w12

        .loc 2, 531
.code_align 16
        .loc 2, 532
if nlc0 b _cfftlast||w10=w0+0||u2=u1+u14||v2=v1+v14||tr4-=1

        .loc 2, 534
_cfft2stage:
        .loc 2, 535
r7:6=[u3+=u10,u11]||r11:10=[w0+=w5,w6]
        .loc 2, 536
||u7=u3+u12||v7=v3+v12
        .loc 2, 537
||lc0=xr4
        .loc 2, 538
||yr4-=3
        .loc 2, 539
||w3=w0+w14

        .loc 2, 541
r9:8=[u1+=u10,u11]
        .loc 2, 542
||u5=u1+u12||v5=v1+v12

        .loc 2, 544
r13:12=[u2+=u10,u11]||r17:16=[w2+=w5,w6]<BB>
        .loc 2, 545
||u6=u2+u12||v6=v2+v12


        .loc 2, 548
r15:14=[u0+=u10,u11]||r19:18=[w3+=w5,w6]<BB>
        .loc 2, 549
||fr7=fr7*fr11||fr33=fr6*fr10||fr6=fr6*fr11||fr32=fr7*fr10
        .loc 2, 550
||u4=u0+u12||v4=v0+v12
        .loc 2, 551
||lc1=yr4

        .loc 2, 553
r21:20=[u7+=u10,u11]
        .loc 2, 554
||fr9=fr9*fr11||fr35=fr8*fr10||fr8=fr8*fr11||fr34=fr9*fr10
        .loc 2, 555
||u14=u15+u12||v14=v15+v12

        .loc 2, 557
r23:22=[u5+=u10,u11]
        .loc 2, 558
||fr7=fr7-fr33||fr6=fr6+fr32
        .loc 2, 559
||tr3=u12

        .loc 2, 561
r25:24=[u6+=u10,u11]
        .loc 2, 562
||fr9=fr9-fr35||fr8=fr8+fr34



        .loc 2, 566
u14=u14+u10||v14=v14+v10
        .loc 2, 567
||r27:26=[u4+=u10,u11]
        .loc 2, 568
||fr21=fr21*fr11||fr29=fr20*fr10||fr20=fr20*fr11||fr28=fr21*fr10


        .loc 2, 571
r7:6=[u3+=u10,u11]
        .loc 2, 572
||r11:10=[w0+=w5,w6]
        .loc 2, 573
||fr23=fr23*fr11||fr31=fr22*fr10||fr22=fr22*fr11||fr30=fr23*fr10
        .loc 2, 574
||cfr13:12_7:6=cfr13:12+/-cfr7:6<BA>
        .loc 2, 575
||u12=u14-u10



        .loc 2, 579
r9:8=[u1+=u10,u11]
        .loc 2, 580
||fr21=fr21-fr29||fr20=fr20+fr28
        .loc 2, 581
||cfr43:42=cfr15:14+cfr9:8<BA>
        .loc 2, 582
||cfr41:40=cfr15:14-cfr9:8<BA>





        .loc 2, 588
r13:12=[u2+=u10,u11]
        .loc 2, 589
||fr23=fr23-fr31||fr22=fr22+fr30





        .loc 2, 595
r15:14=[u0+=u10,u11]
        .loc 2, 596
||fr37=fr7*fr19<BB>||fr35=fr6*fr18<BB>||fr36=fr6*fr19<BB>||fr34=fr7*fr18<BB>
        .loc 2, 597
||fr7=fr7*fr11||fr35=fr6*fr10||fr6=fr6*fr11||fr34=fr7*fr10






        .loc 2, 604
r21:20=[u7+=u10,u11]
        .loc 2, 605
||fr39=fr13*fr17<BB>||fr33=fr12*fr16<BB>||fr38=fr12*fr17<BB>||fr32=fr13*fr16<BB>
        .loc 2, 606
||fr9=fr9*fr11||fr33=fr8*fr10||fr8=fr8*fr11||fr32=fr9*fr10
        .loc 2, 607
||cfr47:46=cfr25:24+cfr21:20<BA>
        .loc 2, 608
||cfr45:44=cfr25:24-cfr21:20<BA>
        .loc 2, 609
||r63:62=r11:10




        .loc 2, 614
r23:22=[u5+=u10,u11]
        .loc 2, 615
||fr37=fr37-fr35<BB>||fr36=fr36+fr34<BB>
        .loc 2, 616
||fr7=fr7-fr35||fr6=fr6+fr34
        .loc 2, 617
||cfr51:50=cfr27:26+cfr23:22<BA>
        .loc 2, 618
||cfr55:54=cfr27:26-cfr23:22<BA>


        .loc 2, 621
r25:24=[u6+=u10,u11]
        .loc 2, 622
||r11:10=[w0+=w5,w6]
        .loc 2, 623
||fr39=fr39-fr33<BB>||fr38=fr38+fr32<BB>
        .loc 2, 624
||fr9=fr9-fr33||fr8=fr8+fr32


        .loc 2, 627
r27:26=[u4+=u10,u11]
        .loc 2, 628
||r17:16=[w2+=w5,w6]<BB>
        .loc 2, 629
||fr47=fr47*fr17<BB>||fr29=fr46*fr16<BB>||fr46=fr46*fr17<BB>||fr28=fr47*fr16<BB>
        .loc 2, 630
||cfr21:20=cfr21:20*fr63||cfr29:28=cfr21:20*fr62
        .loc 2, 631
||r33:32=r43:42<BB>

        .loc 2, 633
r7:6=[u3+=u10,u11]
        .loc 2, 634
||r19:18=[w3+=w5,w6]<BB>
        .loc 2, 635
||fr45=fr45*fr19<BB>||fr30=fr44*fr18<BB>||fr44=fr44*fr19<BB>||fr31=fr45*fr18<BB>
        .loc 2, 636
||cfr23:22=cfr23:22*fr63||cfr31:30=cfr23:22*fr62
        .loc 2, 637
||cfr9:8   = cfr41:40+cfr37:36<BB>
        .loc 2, 638
||cfr11:10 = cfr41:40-cfr37:36<BB>
        .loc 2, 639
||cfr13:12_7:6=cfr13:12+/-cfr7:6<BA>


        .loc 2, 642
r9:8=[u1+=u10,u11]
        .loc 2, 643
||fr47=fr47-fr29<BB>||fr46=fr46+fr28<BB>
        .loc 2, 644
||cfr21:20=cfr21:20+jcfr29:28
        .loc 2, 645
||cfr41:40=cfr15:14-cfr9:8<BA>
        .loc 2, 646
||cfr43:42=cfr15:14+cfr9:8<BA>

        .loc 2, 648
r13:12=[u2+=u10,u11]
        .loc 2, 649
||fr45=fr45-fr30<BB>||fr44=fr44+fr31<BB>
        .loc 2, 650
||cfr23:22=cfr23:22+jcfr31:30
        .loc 2, 651
||cfr53:52=cfr33:32+cfr39:38<BB>
        .loc 2, 652
||cfr63:62=cfr33:32-cfr39:38<BB>


        .loc 2, 655
_cfft2loop:
        .loc 2, 656
.code_align 16
        .loc 2, 657
r15:14=[u0+=u10,u11]
        .loc 2, 658
||cfr37:36=cfr7:6*fr19<BB>||cfr35:34=cfr7:6*fr18<BB>
        .loc 2, 659
||fr7=fr7*fr11||fr35=fr6*fr10||fr6=fr6*fr11||fr34=fr7*fr10
        .loc 2, 660
||[v1+=v10,v11]=r9:8<BB>
        .loc 2, 661
||r31:30=r55:54<BB>

        .loc 2, 663
r21:20=[u7+=u10,u11]
        .loc 2, 664
||cfr39:38=cfr13:12*fr17<BB>||cfr33:32=cfr13:12*fr16<BB>
        .loc 2, 665
||fr9=fr9*fr11||fr33=fr8*fr10||fr8=fr8*fr11||fr32=fr9*fr10
        .loc 2, 666
||cfr59:58=cfr51:50+cfr47:46<BB>
        .loc 2, 667
||cfr61:60=cfr51:50-cfr47:46<BB>
        .loc 2, 668
||cfr25:24=cfr25:24+cfr21:20<BA>
        .loc 2, 669
||cfr21:20=cfr25:24-cfr21:20<BA>
        .loc 2, 670
||[v3+=v10,v11]=r11:10<BB>
        .loc 2, 671
||r63:62=r11:10


        .loc 2, 674
r23:22=[u5+=u10,u11]
        .loc 2, 675
||cfr37:36=cfr37:36+jcfr35:34<BB>
        .loc 2, 676
||fr7=fr7-fr35||fr6=fr6+fr34
        .loc 2, 677
||cfr51:50=cfr27:26+cfr23:22<BA>
        .loc 2, 678
||cfr55:54=cfr27:26-cfr23:22<BA>
        .loc 2, 679
||[v0+=v10,v11]=r53:52<BB>

        .loc 2, 681
r25:24=[u6+=u10,u11]
        .loc 2, 682
||r11:10=[w0+=w5,w6]
        .loc 2, 683
||cfr39:38=cfr39:38+jcfr33:32<BB>
        .loc 2, 684
||fr9=fr9-fr33||fr8=fr8+fr32
        .loc 2, 685
||cfr49:48=cfr31:30+cfr45:44<BB>
        .loc 2, 686
||cfr45:44=cfr31:30-cfr45:44<BB>
        .loc 2, 687
||[v2+=v10,v11]=r63:62<BB>


        .loc 2, 690
r27:26=[u4+=u10,u11]
        .loc 2, 691
||r17:16=[w2+=w5,w6]<BB>
        .loc 2, 692
||cfr47:46=cfr25:24*fr17<BB>||cfr29:28=cfr25:24*fr16<BB>
        .loc 2, 693
||cfr21:20=cfr21:20*fr63||cfr29:28=cfr21:20*fr62
        .loc 2, 694
||[v4+=v10,v11]=r59:58<BB>
        .loc 2, 695
||r33:32=r43:42<BB>

        .loc 2, 697
r7:6=[u3+=u10,u11]
        .loc 2, 698
||r19:18=[w3+=w5,w6]<BB>
        .loc 2, 699
||cfr21:20=cfr21:20*fr19<BB>||cfr31:30=cfr21:20*fr18<BB>
        .loc 2, 700
||cfr23:22=cfr23:22*fr63||cfr31:30=cfr23:22*fr62
        .loc 2, 701
||cfr9:8   = cfr41:40+cfr37:36<BB>
        .loc 2, 702
||cfr11:10 = cfr41:40-cfr37:36<BB>
        .loc 2, 703
||cfr13:12_7:6=cfr13:12+/-cfr7:6<BA>
        .loc 2, 704
||[v6+=v10,v11]=r61:60<BB>

        .loc 2, 706
r9:8=[u1+=u10,u11]
        .loc 2, 707
||fr47=fr47-fr28<BB>||fr46=fr46+fr29<BB>
        .loc 2, 708
||cfr21:20=cfr21:20+jcfr29:28
        .loc 2, 709
||cfr41:40=cfr15:14-cfr9:8<BA>
        .loc 2, 710
||cfr43:42=cfr15:14+cfr9:8<BA>
        .loc 2, 711
||[v7+=v10,v11]=r45:44<BB>

        .loc 2, 713
.code_align 16
        .loc 2, 714
if lc1 b _cfft2loop
        .loc 2, 715
||r13:12=[u2+=u10,u11]
        .loc 2, 716
||fr45=fr21-fr30<BB>||fr44=fr20+fr31<BB>
        .loc 2, 717
||cfr23:22=cfr23:22+jcfr31:30
        .loc 2, 718
||cfr53:52=cfr33:32+cfr39:38<BB>
        .loc 2, 719
||cfr63:62=cfr33:32-cfr39:38<BB>
        .loc 2, 720
||[v5+=v10,v11]=r49:48<BB>

        .loc 2, 722
r15:14=[u0+=u14,u11]
        .loc 2, 723
||cfr37:36=cfr7:6*fr19<BB>||cfr35:34=cfr7:6*fr18<BB>
        .loc 2, 724
||fr7=fr7*fr11||fr35=fr6*fr10||fr6=fr6*fr11||fr34=fr7*fr10
        .loc 2, 725
||[v1+=v10,v11]=r9:8<BB>
        .loc 2, 726
||r31:30=r55:54<BB>
        .loc 2, 727
||lc1=yr4

        .loc 2, 729
r21:20=[u7+=u14,u11]
        .loc 2, 730
||cfr39:38=cfr13:12*fr17<BB>||cfr33:32=cfr13:12*fr16<BB>
        .loc 2, 731
||fr9=fr9*fr11||fr33=fr8*fr10||fr8=fr8*fr11||fr32=fr9*fr10
        .loc 2, 732
||cfr59:58=cfr51:50+cfr47:46<BB>
        .loc 2, 733
||cfr61:60=cfr51:50-cfr47:46<BB>
        .loc 2, 734
||cfr25:24=cfr25:24+cfr21:20<BA>
        .loc 2, 735
||cfr21:20=cfr25:24-cfr21:20<BA>
        .loc 2, 736
||[v3+=v10,v11]=r11:10<BB>
        .loc 2, 737
||r63:62=r11:10

        .loc 2, 739
r23:22=[u5+=u14,u11]
        .loc 2, 740
||cfr37:36=cfr37:36+jcfr35:34<BB>
        .loc 2, 741
||fr7=fr7-fr35||fr6=fr6+fr34
        .loc 2, 742
||cfr51:50=cfr27:26+cfr23:22<BA>
        .loc 2, 743
||cfr55:54=cfr27:26-cfr23:22<BA>
        .loc 2, 744
||[v0+=v10,v11]=r53:52<BB>

        .loc 2, 746
r25:24=[u6+=u14,u11]
        .loc 2, 747
||r11:10=[w10+=w7,w6]
        .loc 2, 748
||cfr39:38=cfr39:38+jcfr33:32<BB>
        .loc 2, 749
||fr9=fr9-fr33||fr8=fr8+fr32
        .loc 2, 750
||cfr49:48=cfr31:30+cfr45:44<BB>
        .loc 2, 751
||cfr45:44=cfr31:30-cfr45:44<BB>
        .loc 2, 752
||[v2+=v10,v11]=r63:62<BB>


        .loc 2, 755
r27:26=[u4+=u14,u11]
        .loc 2, 756
||r17:16=[w2+=w5,w6]<BB>
        .loc 2, 757
||cfr47:46=cfr25:24*fr17<BB>||cfr29:28=cfr25:24*fr16<BB>
        .loc 2, 758
||cfr21:20=cfr21:20*fr63||cfr29:28=cfr21:20*fr62
        .loc 2, 759
||[v4+=v10,v11]=r59:58<BB>
        .loc 2, 760
||r33:32=r43:42<BB>

        .loc 2, 762
r7:6=[u3+u12,u11]
        .loc 2, 763
||r19:18=[w3+=w5,w6]<BB>
        .loc 2, 764
||cfr21:20=cfr21:20*fr19<BB>||cfr31:30=cfr21:20*fr18<BB>
        .loc 2, 765
||cfr23:22=cfr23:22*fr63||cfr31:30=cfr23:22*fr62
        .loc 2, 766
||cfr9:8   = cfr41:40+cfr37:36<BB>
        .loc 2, 767
||cfr11:10 = cfr41:40-cfr37:36<BB>
        .loc 2, 768
||cfr13:12_7:6=cfr13:12+/-cfr7:6<BA>
        .loc 2, 769
||[v6+=v10,v11]=r61:60<BB>
        .loc 2, 770
||w0=w10+w5||u3=u3+u14

        .loc 2, 772
r9:8=[u1+u12,u11]
        .loc 2, 773
||fr47=fr47-fr28<BB>||fr46=fr46+fr29<BB>
        .loc 2, 774
||cfr21:20=cfr21:20+jcfr29:28
        .loc 2, 775
||cfr41:40=cfr15:14-cfr9:8<BA>
        .loc 2, 776
||cfr43:42=cfr15:14+cfr9:8<BA>
        .loc 2, 777
||[v7+=v10,v11]=r45:44<BB>
        .loc 2, 778
||u1=u1+u14

        .loc 2, 780
r13:12=[u2+u12,u11]
        .loc 2, 781
||fr45=fr21-fr30<BB>||fr44=fr20+fr31<BB>
        .loc 2, 782
||cfr23:22=cfr23:22+jcfr31:30
        .loc 2, 783
||cfr53:52=cfr33:32+cfr39:38<BB>
        .loc 2, 784
||cfr63:62=cfr33:32-cfr39:38<BB>
        .loc 2, 785
||[v5+=v10,v11]=r49:48<BB>
        .loc 2, 786
||u2=u2+u14

        .loc 2, 788
r15:14=[u0+=u10,u11]
        .loc 2, 789
||cfr37:36=cfr7:6*fr19<BB>||cfr35:34=cfr7:6*fr18<BB>
        .loc 2, 790
||fr7=fr7*fr11||fr35=fr6*fr10||fr6=fr6*fr11||fr34=fr7*fr10
        .loc 2, 791
||[v1+=v10,v11]=r9:8<BB>
        .loc 2, 792
||r31:30=r55:54<BB>
        .loc 2, 793
||w2=w10+w12

        .loc 2, 795
r21:20=[u7+=u10,u11]
        .loc 2, 796
||cfr39:38=cfr13:12*fr17<BB>||cfr33:32=cfr13:12*fr16<BB>
        .loc 2, 797
||fr9=fr9*fr11||fr33=fr8*fr10||fr8=fr8*fr11||fr32=fr9*fr10
        .loc 2, 798
||cfr59:58=cfr51:50+cfr47:46<BB>
        .loc 2, 799
||cfr61:60=cfr51:50-cfr47:46<BB>
        .loc 2, 800
||cfr25:24=cfr25:24+cfr21:20<BA>
        .loc 2, 801
||cfr21:20=cfr25:24-cfr21:20<BA>
        .loc 2, 802
||[v3+=v10,v11]=r11:10<BB>
        .loc 2, 803
||w3=w10+w14
        .loc 2, 804
||r63:62=r11:10


        .loc 2, 807
r23:22=[u5+=u10,u11]
        .loc 2, 808
||cfr37:36=cfr37:36+jcfr35:34<BB>
        .loc 2, 809
||fr7=fr7-fr35||fr6=fr6+fr34
        .loc 2, 810
||cfr51:50=cfr27:26+cfr23:22<BA>
        .loc 2, 811
||cfr55:54=cfr27:26-cfr23:22<BA>
        .loc 2, 812
||[v0+=v10,v11]=r53:52<BB>

        .loc 2, 814
r25:24=[u6+=u10,u11]
        .loc 2, 815
||r11:10=[w0+=w5,w6]
        .loc 2, 816
||cfr39:38=cfr39:38+jcfr33:32<BB>
        .loc 2, 817
||fr9=fr9-fr33||fr8=fr8+fr32
        .loc 2, 818
||cfr49:48=cfr31:30+cfr45:44<BB>
        .loc 2, 819
||cfr45:44=cfr31:30-cfr45:44<BB>
        .loc 2, 820
||[v2+=v10,v11]=r63:62<BB>


        .loc 2, 823
r27:26=[u4+=u10,u11]
        .loc 2, 824
||r17:16=[w2+=w5,w6]<BB>
        .loc 2, 825
||cfr47:46=cfr25:24*fr17<BB>||cfr29:28=cfr25:24*fr16<BB>
        .loc 2, 826
||cfr21:20=cfr21:20*fr63||cfr29:28=cfr21:20*fr62
        .loc 2, 827
||[v4+=v10,v11]=r59:58<BB>
        .loc 2, 828
||r33:32=r43:42<BB>

        .loc 2, 830
r7:6=[u3+=u10,u11]
        .loc 2, 831
||r19:18=[w3+=w5,w6]<BB>
        .loc 2, 832
||cfr21:20=cfr21:20*fr19<BB>||cfr31:30=cfr21:20*fr18<BB>
        .loc 2, 833
||cfr23:22=cfr23:22*fr63||cfr31:30=cfr23:22*fr62
        .loc 2, 834
||cfr9:8   = cfr41:40+cfr37:36<BB>
        .loc 2, 835
||cfr11:10 = cfr41:40-cfr37:36<BB>
        .loc 2, 836
||cfr13:12_7:6=cfr13:12+/-cfr7:6<BA>
        .loc 2, 837
||[v6+=v10,v11]=r61:60<BB>

        .loc 2, 839
r9:8=[u1+=u10,u11]
        .loc 2, 840
||fr47=fr47-fr28<BB>||fr46=fr46+fr29<BB>
        .loc 2, 841
||cfr21:20=cfr21:20+jcfr29:28
        .loc 2, 842
||cfr41:40=cfr15:14-cfr9:8<BA>
        .loc 2, 843
||cfr43:42=cfr15:14+cfr9:8<BA>
        .loc 2, 844
||[v7+=v10,v11]=r45:44<BB>


        .loc 2, 847
r13:12=[u2+=u10,u11]
        .loc 2, 848
||fr45=fr21-fr30<BB>||fr44=fr20+fr31<BB>
        .loc 2, 849
||cfr23:22=cfr23:22+jcfr31:30
        .loc 2, 850
||cfr53:52=cfr33:32+cfr39:38<BB>
        .loc 2, 851
||cfr63:62=cfr33:32-cfr39:38<BB>
        .loc 2, 852
||[v5+=v10,v11]=r49:48<BB>

        .loc 2, 854
r15:14=[u0+=u10,u11]
        .loc 2, 855
||cfr37:36=cfr7:6*fr19<BB>||cfr35:34=cfr7:6*fr18<BB>
        .loc 2, 856
||fr7=fr7*fr11||fr35=fr6*fr10||fr6=fr6*fr11||fr34=fr7*fr10
        .loc 2, 857
||[v1+=v14,v11]=r9:8<BB>
        .loc 2, 858
||r31:30=r55:54<BB>


        .loc 2, 861
r21:20=[u7+=u10,u11]
        .loc 2, 862
||cfr39:38=cfr13:12*fr17<BB>||cfr33:32=cfr13:12*fr16<BB>
        .loc 2, 863
||fr9=fr9*fr11||fr33=fr8*fr10||fr8=fr8*fr11||fr32=fr9*fr10
        .loc 2, 864
||cfr59:58=cfr51:50+cfr47:46<BB>
        .loc 2, 865
||cfr61:60=cfr51:50-cfr47:46<BB>
        .loc 2, 866
||cfr25:24=cfr25:24+cfr21:20<BA>
        .loc 2, 867
||cfr21:20=cfr25:24-cfr21:20<BA>
        .loc 2, 868
||[v3+=v14,v11]=r11:10<BB>
        .loc 2, 869
||r63:62=r11:10


        .loc 2, 872
r23:22=[u5+=u10,u11]
        .loc 2, 873
||cfr37:36=cfr37:36+jcfr35:34<BB>
        .loc 2, 874
||fr7=fr7-fr35||fr6=fr6+fr34
        .loc 2, 875
||cfr51:50=cfr27:26+cfr23:22<BA>
        .loc 2, 876
||cfr55:54=cfr27:26-cfr23:22<BA>
        .loc 2, 877
||[v0+=v14,v11]=r53:52<BB>

        .loc 2, 879
r25:24=[u6+=u10,u11]
        .loc 2, 880
||r11:10=[w0+=w5,w6]
        .loc 2, 881
||cfr39:38=cfr39:38+jcfr33:32<BB>
        .loc 2, 882
||fr9=fr9-fr33||fr8=fr8+fr32
        .loc 2, 883
||cfr49:48=cfr31:30+cfr45:44<BB>
        .loc 2, 884
||cfr45:44=cfr31:30-cfr45:44<BB>
        .loc 2, 885
||[v2+=v14,v11]=r63:62<BB>


        .loc 2, 888
r27:26=[u4+=u10,u11]
        .loc 2, 889
||r17:16=[w2+=w5,w6]<BB>
        .loc 2, 890
||cfr47:46=cfr25:24*fr17<BB>||cfr29:28=cfr25:24*fr16<BB>
        .loc 2, 891
||cfr21:20=cfr21:20*fr63||cfr29:28=cfr21:20*fr62
        .loc 2, 892
||[v4+=v14,v11]=r59:58<BB>
        .loc 2, 893
||r33:32=r43:42<BB>

        .loc 2, 895
r7:6=[u3+=u10,u11]
        .loc 2, 896
||r19:18=[w3+=w5,w6]<BB>
        .loc 2, 897
||cfr21:20=cfr21:20*fr19<BB>||cfr31:30=cfr21:20*fr18<BB>
        .loc 2, 898
||cfr23:22=cfr23:22*fr63||cfr31:30=cfr23:22*fr62
        .loc 2, 899
||cfr9:8   = cfr41:40+cfr37:36<BB>
        .loc 2, 900
||cfr11:10 = cfr41:40-cfr37:36<BB>
        .loc 2, 901
||cfr13:12_7:6=cfr13:12+/-cfr7:6<BA>
        .loc 2, 902
||[v6+=v14,v11]=r61:60<BB>

        .loc 2, 904
r9:8=[u1+=u10,u11]
        .loc 2, 905
||fr47=fr47-fr28<BB>||fr46=fr46+fr29<BB>
        .loc 2, 906
||cfr21:20=cfr21:20+jcfr29:28
        .loc 2, 907
||cfr41:40=cfr15:14-cfr9:8<BA>
        .loc 2, 908
||cfr43:42=cfr15:14+cfr9:8<BA>
        .loc 2, 909
||[v7+=v14,v11]=r45:44<BB>


        .loc 2, 912
.code_align 16
        .loc 2, 913
if lc0 b _cfft2loop
        .loc 2, 914
||r13:12=[u2+=u10,u11]
        .loc 2, 915
||fr45=fr21-fr30<BB>||fr44=fr20+fr31<BB>
        .loc 2, 916
||cfr23:22=cfr23:22+jcfr31:30
        .loc 2, 917
||cfr53:52=cfr33:32+cfr39:38<BB>
        .loc 2, 918
||cfr63:62=cfr33:32-cfr39:38<BB>
        .loc 2, 919
||[v5+=v14,v11]=r49:48<BB>

        .loc 2, 921
zr0=u13||tr0=v13
        .loc 2, 922
u13=tr0||v13=zr0||u12=tr3

        .loc 2, 924
yr4+=3||u0=u13+0||v0=v13+0||w0=w10+w11||lc1=tr4
        .loc 2, 925
u15=u15 ashift 2||v15=v15 ashift 2||w10=w10+w11||xr4=r4 lshift -2
        .loc 2, 926
u1=u13+u12||v1=v13+v12||w12=w12 ashift 2
        .loc 2, 927
.code_align 16
        .loc 2, 928
u3=u13+u15||v3=v13+v15||yr4=r4 lshift 2||w14=w14 ashift 2
        .loc 2, 929
u2=u1+u12||v2=v1+v12||w2=w0+w12
        .loc 2, 930
.code_align 16
        .loc 2, 931
if lc1 b _cfft2stage
        .loc 2, 932
||u12=u12 ashift 2||v12=v12 ashift 2||w11=w12+w14||tr4-=1

        .loc 2, 934
_cfftlast:
        .loc 2, 935
r7:6=[u3+=u10,u11]
        .loc 2, 936
||r11:10=[w0+=w5,w6]
        .loc 2, 937
||fr1=fr1-fr1
        .loc 2, 938
||fr0=fr0-fr0
        .loc 2, 939
||w3=w0+w14
        .loc 2, 940
||v0=yr1||v12=v12 ashift -2

        .loc 2, 942
xr5=r3 lshift -5
        .loc 2, 943
||r9:8=[u2+=u10,u11]

        .loc 2, 945
r13:12=[u1+=u10,u11]||r17:16=[w2+=w5,w6]<BB>


        .loc 2, 948
r15:14=[u0+=u10,u11]
        .loc 2, 949
||r19:18=[w3+=w5,w6]<BB>
        .loc 2, 950
||fr7=fr7*fr11||fr33=fr6*fr10||fr6=fr6*fr11||fr32=fr7*fr10


        .loc 2, 953
r21:20=[u3+=u10,u11]
        .loc 2, 954
||r11:10=[w0+=w5,w6]
        .loc 2, 955
||fr9=fr9*fr11||fr35=fr8*fr10||fr8=fr8*fr11||fr34=fr9*fr10
        .loc 2, 956
||lc1=xr5
        .loc 2, 957
||v1=v0+v12

        .loc 2, 959
r23:22=[u2+=u10,u11]
        .loc 2, 960
||fr7=fr7-fr33||fr6=fr6+fr32




        .loc 2, 965
r25:24=[u1+=u10,u11]
        .loc 2, 966
||fr9=fr9-fr35||fr8=fr8+fr34
        .loc 2, 967
||v3=v0+v15

        .loc 2, 969
r27:26=[u0+=u10,u11]
        .loc 2, 970
||fr21=fr21*fr11||fr29=fr20*fr10||fr20=fr20*fr11||fr28=fr21*fr10
        .loc 2, 971
||v2=v1+v12

        .loc 2, 973
r7:6=[u3+=u10,u11]
        .loc 2, 974
||r11:10=[w0+=w5,w6]
        .loc 2, 975
||fr23=fr23*fr11||fr31=fr22*fr10||fr22=fr22*fr11||fr30=fr23*fr10
        .loc 2, 976
||cfr13:12_7:6=cfr13:12+/-cfr7:6<BA>

        .loc 2, 978
r9:8=[u2+=u10,u11]
        .loc 2, 979
||fr21=fr21-fr29||fr20=fr20+fr28
        .loc 2, 980
||cfr43:42=cfr15:14+cfr9:8<BA>
        .loc 2, 981
||cfr41:40=cfr15:14-cfr9:8<BA>

        .loc 2, 983
r13:12=[u1+=u10,u11]
        .loc 2, 984
||fr23=fr23-fr31||fr22=fr22+fr30
        .loc 2, 985
||r63:62=[w0+=w5,w6]

        .loc 2, 987
r15:14=[u0+=u10,u11]
        .loc 2, 988
||fr37=fr7*fr19<BB>||fr35=fr6*fr18<BB>||fr36=fr6*fr19<BB>||fr34=fr7*fr18<BB>
        .loc 2, 989
||fr7=fr7*fr11||fr35=fr6*fr10||fr6=fr6*fr11||fr34=fr7*fr10
        .loc 2, 990
||r19:18=[w3+=w5,w6]<BB>

        .loc 2, 992
r21:20=[u3+=u10,u11]
        .loc 2, 993
||r17:16=[w2+=w5,w6]<BB>
        .loc 2, 994
||fr39=fr13*fr17<BB>||fr33=fr12*fr16<BB>||fr38=fr12*fr17<BB>||fr32=fr13*fr16<BB>
        .loc 2, 995
||fr9=fr9*fr11||fr33=fr8*fr10||fr8=fr8*fr11||fr32=fr9*fr10
        .loc 2, 996
||cfr47:46=cfr25:24+cfr21:20<BA>
        .loc 2, 997
||cfr45:44=cfr25:24-cfr21:20<BA>

        .loc 2, 999
r23:22=[u2+=u10,u11]
        .loc 2, 1000
||r11:10=[w0+=w5,w6]
        .loc 2, 1001
||fr37=fr37-fr35<BB>||fr36=fr36+fr34<BB>
        .loc 2, 1002
||fr7=fr7-fr35||fr6=fr6+fr34
        .loc 2, 1003
||cfr51:50=cfr27:26+cfr23:22<BA>
        .loc 2, 1004
||cfr55:54=cfr27:26-cfr23:22<BA>

        .loc 2, 1006
r25:24=[u1+=u10,u11]
        .loc 2, 1007
||fr39=fr39-fr33<BB>||fr38=fr38+fr32<BB>
        .loc 2, 1008
||fr9=fr9-fr33||fr8=fr8+fr32

        .loc 2, 1010
r27:26=[u0+=u10,u11]
        .loc 2, 1011
||fr47=fr47*fr17<BB>||fr29=fr46*fr16<BB>||fr46=fr46*fr17<BB>||fr28=fr47*fr16<BB>
        .loc 2, 1012
||cfr21:20=cfr21:20*fr63||cfr29:28=cfr21:20*fr62
        .loc 2, 1013
||r33:32=r43:42<BB>
        .loc 2, 1014
||r17:16=[w2+=w5,w6]<BB>

        .loc 2, 1016
r7:6=[u3+=u10,u11]
        .loc 2, 1017
||r19:18=[w3+=w5,w6]<BB>
        .loc 2, 1018
||fr45=fr45*fr19<BB>||fr30=fr44*fr18<BB>||fr44=fr44*fr19<BB>||fr31=fr45*fr18<BB>
        .loc 2, 1019
||cfr23:22=cfr23:22*fr63||cfr31:30=cfr23:22*fr62
        .loc 2, 1020
||fr9=fr40+fr36<BB>||fr8=fr41+fr37<BB>
        .loc 2, 1021
||fr11=fr40-fr36<BB>||fr10=fr41-fr37<BB>
        .loc 2, 1022
||cfr13:12_7:6=cfr13:12+/-cfr7:6<BA>

        .loc 2, 1024
r9:8=[u2+=u10,u11]
        .loc 2, 1025
||r63:62=[w0+=w5,w6]
        .loc 2, 1026
||fr47=fr47-fr29<BB>||fr46=fr46+fr28<BB>
        .loc 2, 1027
||cfr21:20=cfr21:20+jcfr29:28
        .loc 2, 1028
||cfr41:40=cfr15:14-cfr9:8<BA>
        .loc 2, 1029
||cfr43:42=cfr15:14+cfr9:8<BA>

        .loc 2, 1031
r13:12=[u1+=u10,u11]
        .loc 2, 1032
||fr45=fr45-fr30<BB>||fr44=fr44+fr31<BB>
        .loc 2, 1033
||cfr23:22=cfr23:22+jcfr31:30
        .loc 2, 1034
||fr53=fr32+fr38<BB>||fr52=fr33+fr39<BB>
        .loc 2, 1035
||fr63=fr32-fr38<BB>||fr62=fr33-fr39<BB>

        .loc 2, 1037
_cfftlastloop:
        .loc 2, 1038
.code_align 16
        .loc 2, 1039
r15:14=[u0+=u10,u11]
        .loc 2, 1040
||r19:18=[w3+=w5,w6]<BB>
        .loc 2, 1041
||cfr37:36=cfr7:6*fr19<BB>||cfr35:34=cfr7:6*fr18<BB>
        .loc 2, 1042
||fr7=fr7*fr11||fr35=fr6*fr10||fr6=fr6*fr11||fr34=fr7*fr10
        .loc 2, 1043
||[v1+=v10,v11]=r9:8<BB>
        .loc 2, 1044
||r31:30=r55:54<BB>

        .loc 2, 1046
r21:20=[u3+=u10,u11]
        .loc 2, 1047
||cfr39:38=cfr13:12*fr17<BB>||cfr33:32=cfr13:12*fr16<BB>
        .loc 2, 1048
||cfr9:8=cfr9:8*fr11||cfr33:32=cfr9:8*fr10
        .loc 2, 1049
||fr59=fr50+fr46<BB>||fr58=fr51+fr47<BB>
        .loc 2, 1050
||fr61=fr50-fr46<BB>||fr60=fr51-fr47<BB>
        .loc 2, 1051
||cfr25:24=cfr25:24+cfr21:20<BA>
        .loc 2, 1052
||cfr21:20=cfr25:24-cfr21:20<BA>
        .loc 2, 1053
||[v3+=v10,v11]=r11:10<BB>
        .loc 2, 1054
||r17:16=[w2+=w5,w6]<BB>


        .loc 2, 1057
r23:22=[u2+=u10,u11]
        .loc 2, 1058
||r11:10=[w0+=w5,w6]
        .loc 2, 1059
||cfr37:36=cfr37:36+jcfr35:34<BB>
        .loc 2, 1060
||fr7=fr7-fr35||fr6=fr6+fr34
        .loc 2, 1061
||cfr51:50=cfr27:26+cfr23:22<BA>
        .loc 2, 1062
||cfr55:54=cfr27:26-cfr23:22<BA>
        .loc 2, 1063
||[v0+=v10,v11]=r53:52<BB>

        .loc 2, 1065
r25:24=[u1+=u10,u11]
        .loc 2, 1066
||cfr39:38=cfr39:38+jcfr33:32<BB>
        .loc 2, 1067
||fr9=fr9-fr32||fr8=fr8+fr33
        .loc 2, 1068
||fr49=fr30+fr44<BB>||fr48=fr31+fr45<BB>
        .loc 2, 1069
||fr45=fr30-fr44<BB>||fr44=fr31-fr45<BB>
        .loc 2, 1070
||[v2+=v10,v11]=r63:62<BB>


        .loc 2, 1073
r27:26=[u0+=u10,u11]
        .loc 2, 1074
||r17:16=[w2+=w5,w6]<BB>
        .loc 2, 1075
||cfr47:46=cfr25:24*fr17<BB>||cfr29:28=cfr25:24*fr16<BB>
        .loc 2, 1076
||cfr21:20=cfr21:20*fr63||cfr29:28=cfr21:20*fr62
        .loc 2, 1077
||[v0+=v10,v11]=r59:58<BB>
        .loc 2, 1078
||r33:32=r43:42<BB>

        .loc 2, 1080
r7:6=[u3+=u10,u11]
        .loc 2, 1081
||r19:18=[w3+=w5,w6]<BB>
        .loc 2, 1082
||cfr21:20=cfr21:20*fr19<BB>||cfr31:30=cfr21:20*fr18<BB>
        .loc 2, 1083
||cfr23:22=cfr23:22*fr63||cfr31:30=cfr23:22*fr62
        .loc 2, 1084
||fr9=fr40+fr36<BB>||fr8=fr41+fr37<BB>
        .loc 2, 1085
||fr11=fr40-fr36<BB>||fr10=fr41-fr37<BB>
        .loc 2, 1086
||cfr13:12_7:6=cfr13:12+/-cfr7:6<BA>
        .loc 2, 1087
||[v2+=v10,v11]=r61:60<BB>

        .loc 2, 1089
r9:8=[u2+=u10,u11]
        .loc 2, 1090
||r63:62=[w0+=w5,w6]
        .loc 2, 1091
||fr47=fr47-fr28<BB>||fr46=fr46+fr29<BB>
        .loc 2, 1092
||cfr21:20=cfr21:20+jcfr29:28
        .loc 2, 1093
||cfr41:40=cfr15:14-cfr9:8<BA>
        .loc 2, 1094
||cfr43:42=cfr15:14+cfr9:8<BA>
        .loc 2, 1095
||[v3+=v10,v11]=r45:44<BB>

        .loc 2, 1097
.code_align 16
        .loc 2, 1098
if lc1 b _cfftlastloop
        .loc 2, 1099
||r13:12=[u1+=u10,u11]
        .loc 2, 1100
||fr45=fr21-fr30<BB>||fr44=fr20+fr31<BB>
        .loc 2, 1101
||cfr23:22=cfr23:22+jcfr31:30
        .loc 2, 1102
||fr53=fr32+fr38<BB>||fr52=fr33+fr39<BB>
        .loc 2, 1103
||fr63=fr32-fr38<BB>||fr62=fr33-fr39<BB>
        .loc 2, 1104
||[v1+=v10,v11]=r49:48<BB>




        .loc 2, 1109
_cfftexit:

        .loc 2, 1111
nop
        .loc 2, 1112
rtrap 23
        .loc 2, 1113
nop

        .loc 2, 1115
.code_align 16
        .loc 2, 1116
ret
