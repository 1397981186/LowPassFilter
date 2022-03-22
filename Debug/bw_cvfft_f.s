        .file "C:\Users\Mihtop\Desktop\ECS\201124\"
        .file 1, "../bw_cvfft_f.asm"


































        .file "C:\Users\Mihtop\Desktop\ECS\201124\"
        .file 2, "bw_cvfft_f.asm"
        .loc 2, 35
.global __bw_cfft

        .loc 2, 39
.text
        .loc 2, 40
__bw_cfft:
        .loc 2, 41
xr63=8
        .loc 2, 42
.code_align 16
        .loc 2, 43
if xr3==r63 b _bw_fft_8 ||xr63=16    

        .loc 2, 45
.code_align 16
        .loc 2, 46
if xr3==r63 b _bw_fft_16 ||xr63=32    


        .loc 2, 49
.code_align 16
        .loc 2, 50
if xr3==r63 b _bw_fft_32     
        .loc 2, 51
.code_align 16
        .loc 2, 52
b _fft_start
        .loc 2, 53
_bw_fft_8:
        .loc 2, 54
u4=u0+2||xr1=u2
        .loc 2, 55
u2=u0+6||xfr0=0.707107
        .loc 2, 56
u3=u0+4
        .loc 2, 57
xr15:14=[u4+=8,1]
        .loc 2, 58
||v0=xr1
        .loc 2, 59
xr17:16=[u4+=8,1]
        .loc 2, 60
xr19:18=[u2+=8,1]
        .loc 2, 61
xr21:20=[u2+=8,1]
        .loc 2, 62
||v1=v0+4
        .loc 2, 63
xr7:6  =[u0+=8,1]
        .loc 2, 64
||xcfr15:14_17:16=cfr15:14+/-cfr17:16
        .loc 2, 65
xr9:8  =[u0+=8,1]
        .loc 2, 66
||v2=v0+2
        .loc 2, 67
xr11:10=[u3+=8,1]
        .loc 2, 68
||xcfr19:18_21:20=cfr19:18+/-cfr21:20
        .loc 2, 69
xr13:12=[u3+=8,1]
        .loc 2, 70
||v3=v0+6
        .loc 2, 71
xcfr7:6_9:8=cfr7:6+/-cfr9:8
        .loc 2, 72
xcfr15:14_19:18=cfr15:14+/-cfr19:18
        .loc 2, 73
||xcfr17:16=cfr17:16-jcfr21:20||xcfr21:20=cfr17:16+jcfr21:20
        .loc 2, 74
xcfr11:10_13:12=cfr11:10+/-cfr13:12
        .loc 2, 75
nop
        .loc 2, 76
xcfr17:16=cfr17:16*fr0||xcfr21:20=cfr21:20*fr0
        .loc 2, 77
xcfr7:6_11:10=cfr7:6+/-cfr11:10
        .loc 2, 78
||xcfr9:8=cfr9:8-jcfr13:12||xcfr13:12=cfr9:8+jcfr13:12
        .loc 2, 79
nop
        .loc 2, 80
xfr17=fr17+fr16||xfr16=fr16-fr17
        .loc 2, 81
||xfr21=fr20-fr21||xfr20=fr21+fr20
        .loc 2, 82
xcfr7:6_15:14=cfr7:6+/-cfr15:14
        .loc 2, 83
||xcfr11:10=cfr11:10-jcfr19:18||xcfr19:18=cfr11:10+jcfr19:18
        .loc 2, 84
nop
        .loc 2, 85
xcfr9:8_17:16=cfr9:8+/-cfr17:16
        .loc 2, 86
||xfr13=fr13+fr21||xfr12=fr12-fr20||xfr21=fr13-fr21||xfr20=fr12+fr20
        .loc 2, 87
[v0+=8,1]=xr7:6
        .loc 2, 88
[v0+=8,1]=xr15:14
        .loc 2, 89
[v1+=8,1]=xr11:10
        .loc 2, 90
[v1+=8,1]=xr19:18
        .loc 2, 91
[v2+=8,1]=xr9:8
        .loc 2, 92
[v2+=8,1]=xr17:16
        .loc 2, 93
[v3+=8,1]=xr13:12
        .loc 2, 94
[v3+=8,1]=xr21:20
        .loc 2, 95
.code_align 16
        .loc 2, 96
b _fft_end

        .loc 2, 98
_bw_fft_16:
        .loc 2, 99
u4=u0+16

        .loc 2, 101
r11:10=[u4+=8,1]
        .loc 2, 102
r13:12=[u4+=8,1]
        .loc 2, 103
r7:6=[u0+=8,1]
        .loc 2, 104
r9:8=[u0+=8,1]
        .loc 2, 105
nop
        .loc 2, 106
cfr7:6_11:10=cfr7:6+/-cfr11:10
        .loc 2, 107
cfr9:8_13:12=cfr9:8+/-cfr13:12
        .loc 2, 108
nop
        .loc 2, 109
nop
        .loc 2, 110
cfr7:6_9:8=cfr7:6+/-cfr9:8
        .loc 2, 111
||cfr11:10=cfr11:10-jcfr13:12||cfr13:12=cfr11:10+jcfr13:12
        .loc 2, 112
fr3=0.707107
        .loc 2, 113
fr4=0


        .loc 2, 119
yr9:8=zr11:10||zr11:10=yr9:8||xr13:12=tr7:6||tr7:6=xr13:12
        .loc 2, 120
xr11:10=yr7:6||yr7:6=xr11:10||zr13:12=tr9:8||tr9:8=zr13:12
        .loc 2, 121
tr11:10=yr13:12||yr13:12=tr11:10||zr7:6=xr9:8||xr9:8=zr7:6


        .loc 2, 124
ycfr9:8=cfr9:8*fr3
        .loc 2, 125
||zfr9=fr8+fr4||zfr8=fr4-fr9

        .loc 2, 127
tcfr9:8=cfr9:8*fr3
        .loc 2, 128
||zfr13=fr12+fr4||zfr12=fr4-fr13

        .loc 2, 130
ycfr13:12=cfr13:12*fr3
        .loc 2, 131
||tcfr13:12=cfr13:12*fr3

        .loc 2, 133
yfr9=fr9+fr8||yfr8=fr8-fr9
        .loc 2, 134
tfr9=fr8-fr9||tfr8=fr9+fr8
        .loc 2, 135
r1:0=[u1+=16,2]

        .loc 2, 137
yfr13=fr13+fr12||yfr12=fr12-fr13
        .loc 2, 138
||tfr13=fr12-fr13||tfr12=fr13+fr12
        .loc 2, 139
r3:2=[u1+=16,2]

        .loc 2, 141
xyzcfr7:6_9:8=cfr7:6+/-cfr9:8
        .loc 2, 142
tfr7=fr7+fr9||tfr6=fr6-fr8||tfr9=fr7-fr9||tfr8=fr6+fr8

        .loc 2, 144
xyzcfr11:10_13:12=cfr11:10+/-cfr13:12
        .loc 2, 145
tfr11=fr11+fr13||tfr10=fr10-fr12||tfr13=fr11-fr13||tfr12=fr10+fr12
        .loc 2, 146
nop
        .loc 2, 147
nop
        .loc 2, 148
qfr11:10_1:0=cfr11:10*cfr1:0
        .loc 2, 149
||qfr13:12_3:2=cfr13:12*cfr3:2
        .loc 2, 150
nop
        .loc 2, 151
nop
        .loc 2, 152
fr11=fr11-fr1||fr10=fr10+fr0
        .loc 2, 153
||fr13=fr13-fr3||fr12=fr12+fr2
        .loc 2, 154
nop
        .loc 2, 155
nop
        .loc 2, 156
cfr7:6_11:10=cfr7:6+/-cfr11:10
        .loc 2, 157
||cfr9:8_13:12=cfr9:8+/-cfr13:12
        .loc 2, 158
nop
        .loc 2, 159
nop
        .loc 2, 160
[u2+=8,1]=r7:6
        .loc 2, 161
[u2+=8,1]=r9:8
        .loc 2, 162
[u2+=8,1]=r11:10
        .loc 2, 163
[u2+=8,1]=r13:12

        .loc 2, 165
.code_align 16
        .loc 2, 166
b _fft_end


        .loc 2, 169
_bw_fft_32:
        .loc 2, 170
u4=1||xr0=u2||u3=u0+4
        .loc 2, 171
u5=1||xr63=u1


        .loc 2, 174
        r15:14 = br(5)[u3 += u4,u5]
        .loc 2, 175
        ||fr3=0.707107
        .loc 2, 176
        r17:16 = br(5)[u3 += u4,u5]
        .loc 2, 177
        ||v0=xr0
        .loc 2, 178
        r19:18 = br(5)[u3 += u4,u5]
        .loc 2, 179
        r21:20 = br(5)[u3 += u4,u5]
        .loc 2, 180
	    r7:6   = br(5)[u0 += u4,u5]
        .loc 2, 181
	    ||cfr15:14_17:16=cfr15:14+/-cfr17:16
        .loc 2, 182
	    ||v1=v0+32
        .loc 2, 183
        r9:8   = br(5)[u0 += u4,u5]
        .loc 2, 184
        ||v2=v0+16
        .loc 2, 185
        r11:10 = br(5)[u0 += u4,u5]
        .loc 2, 186
        ||cfr19:18_21:20=cfr19:18+/-cfr21:20
        .loc 2, 187
        r13:12 = br(5)[u0 += u4,u5]
        .loc 2, 188
        v3=v0+48
        .loc 2, 189
		cfr7:6_9:8=cfr7:6+/-cfr9:8
        .loc 2, 190
		cfr15:14=cfr15:14+cfr19:18||cfr19:18=cfr15:14-cfr19:18
        .loc 2, 191
		||cfr17:16=cfr17:16-jcfr21:20||cfr21:20=cfr17:16+jcfr21:20
        .loc 2, 192
		cfr11:10_13:12=cfr11:10+/-cfr13:12
        .loc 2, 193
		nop
        .loc 2, 194
		cfr17:16=cfr17:16*fr3||cfr21:20=cfr21:20*fr3
        .loc 2, 195
		cfr7:6=cfr7:6+cfr11:10||cfr11:10=cfr7:6-cfr11:10
        .loc 2, 196
		||cfr9:8=cfr9:8-jcfr13:12||cfr13:12=cfr9:8+jcfr13:12

        .loc 2, 198
		r3:2=[u1+=16,2]

        .loc 2, 200
		fr17=fr17+fr16||fr16=fr16-fr17
        .loc 2, 201
		||fr21=fr20-fr21||fr20=fr21+fr20

        .loc 2, 203
		cfr7:6_15:14=cfr7:6+/-cfr15:14
        .loc 2, 204
		||cfr11:10=cfr11:10-jcfr19:18||cfr19:18=cfr11:10+jcfr19:18

        .loc 2, 206
		r5:4=[u1+=16,2]

        .loc 2, 208
		cfr9:8=cfr9:8+cfr17:16||cfr17:16=cfr9:8-cfr17:16
        .loc 2, 209
		||fr13=fr13+fr21||fr12=fr12-fr20||fr21=fr13-fr21||fr20=fr12+fr20

		
        .loc 2, 224
		yr7:6=xr9:8||xr9:8=yr7:6||tr11:10=zr13:12||zr13:12=tr11:10
        .loc 2, 225
		xr11:10=zr7:6||zr7:6=xr11:10||yr13:12=tr9:8||tr9:8=yr13:12
        .loc 2, 226
		xr13:12=tr7:6||tr7:6=xr13:12||yr11:10=zr9:8||zr9:8=yr11:10

        .loc 2, 228
		yr15:14=xr17:16||xr17:16=yr15:14||tr19:18=zr21:20||zr21:20=tr19:18
        .loc 2, 229
		xr19:18=zr15:14||zr15:14=xr19:18||tr17:16=yr21:20||yr21:20=tr17:16

        .loc 2, 231
		qfr33:30=cfr11:10*cfr3:2
        .loc 2, 232
		||qfr37:34=cfr13:12*cfr3:2

        .loc 2, 234
		xr21:20=tr15:14||tr15:14=xr21:20||zr17:16=yr19:18||yr19:18=zr17:16
        .loc 2, 235
		u1=xr63

        .loc 2, 237
		fr11=fr33-fr30||fr10=fr31+fr32
        .loc 2, 238
		||fr13=fr37-fr34||fr12=fr35+fr36

        .loc 2, 240
		qfr33:30=cfr19:18*cfr5:4
        .loc 2, 241
		||qfr37:34=cfr21:20*cfr5:4

        .loc 2, 243
		r1:0=[u1+=8,1]
        .loc 2, 244
		cfr7:6_11:10=cfr7:6+/-cfr11:10
        .loc 2, 245
		||cfr9:8_13:12=cfr9:8+/-cfr13:12
        .loc 2, 246
		||r3:2=[u1+=8,1]

        .loc 2, 248
		fr19=fr33-fr30||fr18=fr31+fr32
        .loc 2, 249
		||fr21=fr37-fr34||fr20=fr35+fr36
        .loc 2, 250
		||r5:4=[u1+=8,1]

        .loc 2, 252
		r25:24=[u1+=8,1]

        .loc 2, 254
		qfr9:8_1:0=cfr9:8*cfr1:0

        .loc 2, 256
		cfr15:14_19:18=cfr15:14+/-cfr19:18
        .loc 2, 257
		||cfr17:16_21:20=cfr17:16+/-cfr21:20
        .loc 2, 258
		||qfr13:12_5:4=cfr13:12*cfr5:4
        .loc 2, 259
		nop
        .loc 2, 260
		fr9=fr9-fr1||fr8=fr8+fr0

        .loc 2, 262
		fr13=fr13-fr5||fr12=fr12+fr4
        .loc 2, 263
		||qfr17:16_3:2=cfr17:16*cfr3:2

        .loc 2, 265
		qfr21:20_25:24=cfr21:20*cfr25:24

        .loc 2, 267
		cfr7:6_9:8=cfr7:6+/-cfr9:8

        .loc 2, 269
		cfr11:10_13:12=cfr11:10+/-cfr13:12
        .loc 2, 270
		||fr17=fr17-fr3||fr16=fr16+fr2

        .loc 2, 272
		fr21=fr21-fr25||fr20=fr20+fr24

        .loc 2, 274
		[v0+=8,1]=r7:6

        .loc 2, 276
		[v1+=8,1]=r9:8
        .loc 2, 277
		||cfr15:14_17:16=cfr15:14+/-cfr17:16

        .loc 2, 279
		[v2+=8,1]=r11:10
        .loc 2, 280
		||cfr19:18_21:20=cfr19:18+/-cfr21:20

        .loc 2, 282
		[v3+=8,1]=r13:12

        .loc 2, 284
		[v0+=8,1]=r15:14
        .loc 2, 285
		[v1+=8,1]=r17:16
        .loc 2, 286
		[v2+=8,1]=r19:18
        .loc 2, 287
		[v3+=8,1]=r21:20
        .loc 2, 288
.code_align 16
        .loc 2, 289
b _fft_end

        .loc 2, 291
_fft_start:

        .loc 2, 293
u8=u8+-1
        .loc 2, 294
[u8+=-8,-1]=r63:62||xr0=u10||yr0=u11||zr0=u12||tr0=u13
        .loc 2, 295
[u8+=-8,-1]=r61:60||xr1=u14||yr1=u15||zr1=v8||tr1=v9
        .loc 2, 296
[u8+=-8,-1]=r59:58||xr2=v10||yr2=v11||zr2=v12||tr2=v13
        .loc 2, 297
[u8+=-8,-1]=r57:56||xr4=v14||yr4=v15||zr4=w8||tr4=w9
        .loc 2, 298
[u8+=-8,-1]=r55:54||xr5=w10||yr5=w11||zr5=w12||tr5=w13
        .loc 2, 299
[u8+=-8,-1]=r53:52||xr6=w14||yr6=w15
        .loc 2, 300
[u8+=-8,-1]=r51:50
        .loc 2, 301
[u8+=-8,-1]=r49:48
        .loc 2, 302
[u8+=-8,-1]=r47:46
        .loc 2, 303
[u8+=-8,-1]=r45:44
        .loc 2, 304
[u8+=-8,-1]=r43:42
        .loc 2, 305
[u8+=-8,-1]=r41:40
        .loc 2, 306
[u8+=-8,-1]=r1:0
        .loc 2, 307
[u8+=-8,-1]=r3:2
        .loc 2, 308
[u8+=-7,-1]=r5:4
        .loc 2, 309
[u8+=-2,-1]=xyr6||xr63=64


        .loc 2, 312
u10=1||v10=4||u11=1||xr8=r3 pos1||yr1=u2
        .loc 2, 313
xr7=r3 lshift -2||xr0=u1||xr1=u2||w15=xr3


        .loc 2, 316
_cfft4:
        .loc 2, 317
u12=13||xr4=r3 lshift -6||u6=u0+12||w13=xr0||v0=xr1||xr6=r8||zr1=u0

        .loc 2, 319
fr0=0.7071067811865475244008443621<BB>||v12=28||u7=xr8||xr6-=4

        .loc 2, 321
r31:30=br(u7)[u6+=u10,u11]
        .loc 2, 322
||fr1=0.92387953251128675612818319<BB>									
        .loc 2, 323
||fr2=-0.38268343236508977172846<BB>
        .loc 2, 324
||lc1=xr4
        .loc 2, 325
||u4=u0+8
        .loc 2, 326
||w0=w13+0
        .loc 2, 327
||u13=xr1
        .loc 2, 328
||xr7+=1

        .loc 2, 330
r33:32=br(u7)[u6+=u10,u11]
        .loc 2, 331
||fr0=0.7071067811865475244008443621
        .loc 2, 332
||fr3=1.0
        .loc 2, 333
||xr6+=1
        .loc 2, 334
||u5=u0+9
        .loc 2, 335
||v1=v0+2
        .loc 2, 336
||w10=w13+0
        .loc 2, 337
||v13=zr1

        .loc 2, 339
r35:34=br(u7)[u6+=u10,u11]
        .loc 2, 340
||u2=u0+4
        .loc 2, 341
||v2=v0+8
        .loc 2, 342
||v11=xr7
        .loc 2, 343
||fr3=1.0<BB>

        .loc 2, 345
r37:36=br(u7)[u6+=u12,u11]
        .loc 2, 346
||u3=u0+5
        .loc 2, 347
||v3=v0+10
        .loc 2, 348
||xr6=r6 lshift -1


        .loc 2, 351
r23:22=br(u7)[u4+=u10,u11]
        .loc 2, 352
||cfr31:30_33:32=cfr31:30+/-cfr33:32
        .loc 2, 353
||u1=u0+1
        .loc 2, 354
||v4=v0+16

        .loc 2, 356
r25:24=br(u7)[u4+=u10,u11]
        .loc 2, 357
||v5=v0+18
        .loc 2, 358
||w4=xr6


        .loc 2, 361
r27:26=br(u7)[u4+=u10,u11]
        .loc 2, 362
||cfr35:34_37:36=cfr35:34+/-cfr37:36
        .loc 2, 363
||v6=v0+24

        .loc 2, 365
r29:28=br(u7)[u4+=u12,u11]
        .loc 2, 366
||v7=v0+26
        .loc 2, 367
||lc0=xr6


        .loc 2, 370
r15:14=br(u7)[u2+=u10,u11]
        .loc 2, 371
||cfr23:22_25:24=cfr23:22+/-cfr25:24
        .loc 2, 372
||u14=32
        .loc 2, 373
||v14=32


        .loc 2, 376
r17:16=br(u7)[u2+=u10,u11]
        .loc 2, 377
||cfr33:32=cfr33:32-jcfr37:36
        .loc 2, 378
||cfr37:36=cfr33:32+jcfr37:36
        .loc 2, 379
||w12=32
        .loc 2, 380
||w14=64
        .loc 2, 381
||cfr31:30_35:34=cfr31:30+/-cfr35:34



        .loc 2, 385
r19:18=br(u7)[u2+=u10,u11]
        .loc 2, 386
||u15=96
        .loc 2, 387
||v15=96
        .loc 2, 388
||cfr27:26_29:28=cfr27:26+/-cfr29:28

        .loc 2, 390
r21:20=br(u7)[u2+=u12,u11]
        .loc 2, 391
||w5=8
        .loc 2, 392
||w6=1
        .loc 2, 393
||cfr33:32=cfr33:32*fr0||cfr37:36=cfr37:36*fr0



        .loc 2, 397
r7:6=br(u7)[u0+=u10,u11]
        .loc 2, 398
||cfr15:14_17:16=cfr15:14+/-cfr17:16


        .loc 2, 401
r9:8=br(u7)[u0+=u10,u11]
        .loc 2, 402
||cfr25:24=cfr25:24-jcfr29:28
        .loc 2, 403
||cfr29:28=cfr25:24+jcfr29:28
        .loc 2, 404
||cfr23:22_27:26=cfr23:22+/-cfr27:26


        .loc 2, 407
r11:10=br(u7)[u0+=u10,u11]
        .loc 2, 408
||cfr19:18_21:20=cfr19:18+/-cfr21:20
        .loc 2, 409
||fr57=fr33+fr32||fr56=fr32-fr33
        .loc 2, 410
||fr37=fr36-fr37||fr36=fr37+fr36


        .loc 2, 413
r13:12=br(u7)[u0+=u12,u11]


        .loc 2, 416
r31:30=br(u7)[u6+=u10,u11]
        .loc 2, 417
||cfr27:26=cfr27:26-jcfr35:34<BA>
        .loc 2, 418
||cfr35:34=cfr27:26+jcfr35:34<BA>
        .loc 2, 419
||cfr23:22=cfr23:22+cfr31:30<BA>
        .loc 2, 420
||cfr31:30=cfr23:22-cfr31:30<BA>

        .loc 2, 422
r33:32=br(u7)[u6+=u10,u11]
        .loc 2, 423
||cfr15:14_19:18=cfr15:14+/-cfr19:18
        .loc 2, 424
||cfr17:16=cfr17:16-jcfr21:20
        .loc 2, 425
||cfr21:20=cfr17:16+jcfr21:20


        .loc 2, 428
r35:34=br(u7)[u6+=u10,u11]
        .loc 2, 429
||cfr7:6_9:8=cfr7:6+/-cfr9:8
        .loc 2, 430
||cfr11:10_13:12=cfr11:10+/-cfr13:12
        .loc 2, 431
||cfr35:34=cfr35:34*fr0<BB>||cfr27:26=cfr27:26*fr0<BB>

        .loc 2, 433
r37:36=br(u7)[u6+=u12,u11]
        .loc 2, 434
||cfr25:24=cfr25:24+cfr57:56<BA>
        .loc 2, 435
||cfr33:32=cfr25:24-cfr57:56<BA>
        .loc 2, 436
||fr29=fr29+fr37<BA>||fr28=fr28-fr36<BA>
        .loc 2, 437
||fr37=fr29-fr37<BA>||fr36=fr28+fr36<BA>
        .loc 2, 438
||cfr17:16=cfr17:16*fr0||cfr21:20=cfr21:20*fr0


        .loc 2, 441
r23:22=br(u7)[u4+=u10,u11]
        .loc 2, 442
||cfr31:30_33:32=cfr31:30+/-cfr33:32
        .loc 2, 443
||fr35=fr34-fr35<BB>||fr34=fr34+fr35<BB>
        .loc 2, 444
||fr27=fr26+fr27<BB>||fr26=fr26-fr27<BB>

        .loc 2, 446
r25:24=br(u7)[u4+=u10,u11]
        .loc 2, 447
||cfr57:56=cfr33:32*fr2<BB>||fr5=fr32*fr1<BB>||fr4=fr33*fr1<BB>
        .loc 2, 448
||cfr49:48=cfr25:24*fr1<BB>||fr63=fr24*fr2<BB>||fr62=fr25*fr2<BB>
        .loc 2, 449
||cfr7:6_11:10=cfr7:6+/-cfr11:10
        .loc 2, 450
||fr41=fr17+fr16||fr40=fr16-fr17
        .loc 2, 451
||fr45=fr20-fr21||fr44=fr21+fr20
        .loc 2, 452
||r43:42=r19:18

        .loc 2, 454
r27:26=br(u7)[u4+=u10,u11]
        .loc 2, 455
||fr53=fr28*fr1<BB>||fr29=fr29*fr2<BB>||fr52=fr29*fr1<BB>||fr28=fr28*fr2<BB>
        .loc 2, 456
||cfr61:60=cfr37:36*fr1<BB>||cfr37:36=cfr37:36*fr2<BB>
        .loc 2, 457
||cfr35:34_37:36=cfr35:34+/-cfr37:36
        .loc 2, 458
||cfr47:46=cfr9:8-jcfr13:12
        .loc 2, 459
||cfr13:12=cfr9:8+jcfr13:12

        .loc 2, 461
r29:28=br(u7)[u4+=u12,u11]
        .loc 2, 462
||fr25=fr49-fr63<BB>||fr24=fr48+fr62<BB>
        .loc 2, 463
||fr33=fr57+fr5<BB>||fr32=fr56-fr4<BB>
        .loc 2, 464
||r39:38=r15:14

        .loc 2, 466
r15:14=br(u7)[u2+=u10,u11]
        .loc 2, 467
||cfr23:22_25:24=cfr23:22+/-cfr25:24
        .loc 2, 468
||fr37=fr61+fr36<BB>||fr36=fr37-fr60<BB>
        .loc 2, 469
||fr29=fr53-fr29<BB>||fr28=fr28+fr52<BB>

        .loc 2, 471
r17:16=br(u7)[u2+=u10,u11]
        .loc 2, 472
||cfr31:30_35:34=cfr31:30+/-cfr35:34
        .loc 2, 473
||cfr33:32=cfr33:32-jcfr37:36
        .loc 2, 474
||cfr37:36=cfr33:32+jcfr37:36

        .loc 2, 476
r19:18=br(u7)[u2+=u10,u11]
        .loc 2, 477
||cfr27:26_29:28=cfr27:26+/-cfr29:28
        .loc 2, 478
||cfr7:6=cfr7:6+cfr39:38<BA>
        .loc 2, 479
||cfr15:14=cfr7:6-cfr39:38<BA>



        .loc 2, 483
r21:20=br(u7)[u2+=u12,u11]
        .loc 2, 484
||cfr11:10=cfr11:10-jcfr43:42<BA>
        .loc 2, 485
||cfr19:18=cfr11:10+jcfr43:42<BA>
        .loc 2, 486
||cfr33:32=cfr33:32*fr0||cfr37:36=cfr37:36*fr0
        .loc 2, 487
||cfr9:8=cfr47:46+cfr41:40<BA>
        .loc 2, 488
||cfr17:16=cfr47:46-cfr41:40<BA>

        .loc 2, 490
r7:6=br(u7)[u0+=u10,u11]
        .loc 2, 491
||cfr15:14_17:16=cfr15:14+/-cfr17:16
        .loc 2, 492
||fr13=fr13+fr45<BA>||fr12=fr12-fr44<BA>
        .loc 2, 493
||fr21=fr13-fr45<BA>||fr20=fr12+fr44<BA>


        .loc 2, 496
r9:8=br(u7)[u0+=u10,u11]
        .loc 2, 497
||cfr25:24=cfr25:24-jcfr29:28
        .loc 2, 498
||cfr29:28=cfr25:24+jcfr29:28
        .loc 2, 499
||cfr23:22_27:26=cfr23:22+/-cfr27:26


        .loc 2, 502
r11:10=br(u7)[u0+=u10,u11]
        .loc 2, 503
||fr57=fr33+fr32||fr56=fr32-fr33
        .loc 2, 504
||fr37=fr36-fr37||fr36=fr37+fr36
        .loc 2, 505
||cfr7:6=cfr7:6+cfr23:22<BB>||cfr47:46=cfr7:6-cfr23:22<BB>


        .loc 2, 508
r13:12=br(u7)[u0+=u12,u11]
        .loc 2, 509
||cfr19:18_21:20=cfr19:18+/-cfr21:20
        .loc 2, 510
||cfr15:14=cfr15:14-jcfr31:30<BB>
        .loc 2, 511
||cfr55:54=cfr15:14+jcfr31:30<BB>



        .loc 2, 515
cfr11:10=cfr11:10+cfr27:26<BB>||cfr51:50=cfr11:10-cfr27:26<BB>
        .loc 2, 516
||fr19=fr19+fr35<BB>||fr18=fr18-fr34<BB>
        .loc 2, 517
||fr59=fr19-fr35<BB>||fr58=fr18+fr34<BB>

        .loc 2, 519
cfr9:8=cfr9:8+cfr25:24<BB>||cfr49:48=cfr9:8-cfr25:24<BB>
        .loc 2, 520
||cfr17:16=cfr17:16+cfr33:32<BB>||cfr57:56=cfr17:16-cfr33:32<BB>

        .loc 2, 522
fr13=fr13+fr29<BB>||fr12=fr12-fr28<BB>
        .loc 2, 523
||fr53=fr13-fr29<BB>||fr52=fr12+fr28<BB>
        .loc 2, 524
||fr21=fr21-fr37<BB>||fr20=fr20+fr36<BB>
        .loc 2, 525
||fr61=fr21+fr37<BB>||fr60=fr20-fr36<BB>

        .loc 2, 527
r31:30=br(u7)[u6+=u10,u11]
        .loc 2, 528
||cfr27:26=cfr27:26-jcfr35:34<BA>
        .loc 2, 529
||cfr35:34=cfr27:26+jcfr35:34<BA>
        .loc 2, 530
||cfr23:22=cfr23:22+cfr31:30<BA>
        .loc 2, 531
||cfr31:30=cfr23:22-cfr31:30<BA>

        .loc 2, 533
_cfftloop4:
        .loc 2, 534
.code_align 16
        .loc 2, 535
m[v0+=v10,v11]=xr7:6yr9:8zr11:10tr13:12<BB>
        .loc 2, 536
||r33:32=br(u7)[u6+=u10,u11]
        .loc 2, 537
||cfr15:14_19:18=cfr15:14+/-cfr19:18
        .loc 2, 538
||cfr17:16=cfr17:16-jcfr21:20
        .loc 2, 539
||cfr21:20=cfr17:16+jcfr21:20

        .loc 2, 541
m[v1+=v10,v11]=xr9:8yr11:10zr13:12tr7:6<BB>
        .loc 2, 542
||r35:34=br(u7)[u6+=u10,u11]
        .loc 2, 543
||cfr7:6_9:8=cfr7:6+/-cfr9:8
        .loc 2, 544
||cfr11:10_13:12=cfr11:10+/-cfr13:12
        .loc 2, 545
||cfr35:34=cfr35:34*fr0<BB>||cfr27:26=cfr27:26*fr0<BB>

        .loc 2, 547
m[v0+=v12,v11]=xr11:10yr13:12zr7:6tr9:8<BB>
        .loc 2, 548
||r37:36=br(u7)[u6+=u12,u11]
        .loc 2, 549
||cfr25:24=cfr25:24+cfr57:56<BA>
        .loc 2, 550
||cfr33:32=cfr25:24-cfr57:56<BA>
        .loc 2, 551
||fr29=fr29+fr37<BA>||fr28=fr28-fr36<BA>
        .loc 2, 552
||fr37=fr29-fr37<BA>||fr36=fr28+fr36<BA>
        .loc 2, 553
||cfr17:16=cfr17:16*fr0||cfr21:20=cfr21:20*fr0


        .loc 2, 556
m[v1+=v12,v11]=xr13:12yr7:6zr9:8tr11:10<BB>
        .loc 2, 557
||r23:22=br(u7)[u4+=u10,u11]
        .loc 2, 558
||cfr31:30_33:32=cfr31:30+/-cfr33:32
        .loc 2, 559
||fr35=fr34-fr35<BB>||fr34=fr34+fr35<BB>
        .loc 2, 560
||fr27=fr26+fr27<BB>||fr26=fr26-fr27<BB>


        .loc 2, 563
m[v4+=v10,v11]=xr47:46yr49:48zr51:50tr53:52<BB>
        .loc 2, 564
||r25:24=br(u7)[u4+=u10,u11]
        .loc 2, 565
||cfr45:44=cfr33:32*fr2<BB>||cfr5:4=cfr33:32*fr1<BB>
        .loc 2, 566
||cfr25:24=cfr25:24*fr1<BB>||cfr63:62=cfr25:24*fr2<BB>
        .loc 2, 567
||cfr7:6_11:10=cfr7:6+/-cfr11:10
        .loc 2, 568
||fr41=fr17+fr16||fr40=fr16-fr17
        .loc 2, 569
||fr45=fr20-fr21||fr44=fr21+fr20
        .loc 2, 570
||r43:42=r19:18

        .loc 2, 572
m[v5+=v10,v11]=xr49:48yr51:50zr53:52tr47:46<BB>
        .loc 2, 573
||r27:26=br(u7)[u4+=u10,u11]
        .loc 2, 574
||fr43=fr28*fr1<BB>||fr29=fr29*fr2<BB>||fr42=fr29*fr1<BB>||fr28=fr28*fr2<BB>
        .loc 2, 575
||cfr7:6=cfr37:36*fr1<BB>||cfr37:36=cfr37:36*fr2<BB>
        .loc 2, 576
||cfr35:34_37:36=cfr35:34+/-cfr37:36
        .loc 2, 577
||cfr47:46=cfr9:8-jcfr13:12
        .loc 2, 578
||cfr13:12=cfr9:8+jcfr13:12

        .loc 2, 580
m[v4+=v12,v11]=xr51:50yr53:52zr47:46tr49:48<BB>
        .loc 2, 581
||r29:28=br(u7)[u4+=u12,u11]
        .loc 2, 582
||fr25=fr25-fr62<BB>||fr24=fr24+fr63<BB>
        .loc 2, 583
||fr33=fr45+fr4<BB>||fr32=fr44-fr5<BB>

        .loc 2, 585
m[v5+=v12,v11]=xr53:52yr47:46zr49:48tr51:50<BB>
        .loc 2, 586
||r15:14=br(u7)[u2+=u10,u11]
        .loc 2, 587
||cfr23:22_25:24=cfr23:22+/-cfr25:24
        .loc 2, 588
||fr37=fr7+fr36<BB>||fr36=fr37-fr6<BB>
        .loc 2, 589
||fr29=fr43-fr29<BB>||fr28=fr28+fr42<BB>
        .loc 2, 590
||r39:38=r15:14

        .loc 2, 592
m[v2+=v10,v11]=xr15:14yr17:16zr19:18tr21:20<BB>
        .loc 2, 593
||r17:16=br(u7)[u2+=u10,u11]
        .loc 2, 594
||cfr31:30_35:34=cfr31:30+/-cfr35:34
        .loc 2, 595
||cfr33:32=cfr33:32-jcfr37:36
        .loc 2, 596
||cfr37:36=cfr33:32+jcfr37:36

        .loc 2, 598
m[v3+=v10,v11]=xr17:16yr19:18zr21:20tr15:14<BB>
        .loc 2, 599
||r19:18=br(u7)[u2+=u10,u11]
        .loc 2, 600
||cfr27:26_29:28=cfr27:26+/-cfr29:28
        .loc 2, 601
||cfr7:6=cfr7:6+cfr39:38<BA>
        .loc 2, 602
||cfr47:46=cfr7:6-cfr39:38<BA>

        .loc 2, 604
m[v2+=v12,v11]=xr19:18yr21:20zr15:14tr17:16<BB>
        .loc 2, 605
||r21:20=br(u7)[u2+=u12,u11]
        .loc 2, 606
||cfr11:10=cfr11:10-jcfr43:42<BA>
        .loc 2, 607
||cfr43:42=cfr11:10+jcfr43:42<BA>
        .loc 2, 608
||cfr33:32=cfr33:32*fr0||cfr37:36=cfr37:36*fr0
        .loc 2, 609
||cfr9:8=cfr47:46+cfr41:40<BA>
        .loc 2, 610
||cfr49:48=cfr47:46-cfr41:40<BA>

        .loc 2, 612
m[v3+=v12,v11]=xr21:20yr15:14zr17:16tr19:18<BB>
        .loc 2, 613
||r7:6=br(u7)[u0+=u10,u11]
        .loc 2, 614
||cfr15:14_17:16=cfr15:14+/-cfr17:16
        .loc 2, 615
||fr13=fr13+fr45<BA>||fr12=fr12-fr44<BA>
        .loc 2, 616
||fr21=fr13-fr45<BA>||fr20=fr12+fr44<BA>


        .loc 2, 619
m[v6+=v10,v11]=xr55:54yr57:56zr59:58tr61:60<BB>
        .loc 2, 620
||r9:8=br(u7)[u0+=u10,u11]
        .loc 2, 621
||cfr25:24=cfr25:24-jcfr29:28
        .loc 2, 622
||cfr29:28=cfr25:24+jcfr29:28
        .loc 2, 623
||cfr23:22_27:26=cfr23:22+/-cfr27:26


        .loc 2, 626
m[v7+=v10,v11]=xr57:56yr59:58zr61:60tr55:54<BB>
        .loc 2, 627
||r11:10=br(u7)[u0+=u10,u11]
        .loc 2, 628
||fr57=fr33+fr32||fr56=fr32-fr33
        .loc 2, 629
||fr37=fr36-fr37||fr36=fr37+fr36
        .loc 2, 630
||cfr7:6=cfr7:6+cfr23:22<BB>||cfr47:46=cfr7:6-cfr23:22<BB>
        .loc 2, 631
||cfr23:22=cfr47:46*fr3<BB>
        .loc 2, 632
||r5:4 = r49:48<BB>
        .loc 2, 633
.code_align 16
        .loc 2, 634
m[v6+=v12,v11]=xr59:58yr61:60zr55:54tr57:56<BB>
        .loc 2, 635
||r13:12=br(u7)[u0+=u12,u11]
        .loc 2, 636
||cfr19:18_21:20=cfr19:18+/-cfr21:20
        .loc 2, 637
||cfr11:10=cfr11:10+cfr27:26<BB>||cfr51:50=cfr11:10-cfr27:26<BB>

        .loc 2, 639
m[v7+=v12,v11]=xr61:60yr55:54zr57:56tr59:58<BB>
        .loc 2, 640
||cfr15:14=cfr23:22-jcfr31:30<BB>
        .loc 2, 641
||cfr55:54=cfr23:22+jcfr31:30<BB>
        .loc 2, 642
||fr19=fr43+fr35<BB>||fr18=fr42-fr34<BB>
        .loc 2, 643
||fr59=fr43-fr35<BB>||fr58=fr42+fr34<BB>

        .loc 2, 645
cfr9:8=cfr9:8+cfr25:24<BB>||cfr49:48=cfr9:8-cfr25:24<BB>
        .loc 2, 646
||fr13=fr13+fr29<BB>||fr12=fr12-fr28<BB>
        .loc 2, 647
||fr53=fr13-fr29<BB>||fr52=fr12+fr28<BB>

        .loc 2, 649
cfr17:16=cfr5:4+cfr33:32<BB>||cfr57:56=cfr5:4-cfr33:32<BB>
        .loc 2, 650
||fr21=fr21-fr37<BB>||fr20=fr20+fr36<BB>
        .loc 2, 651
||fr61=fr21+fr37<BB>||fr60=fr20-fr36<BB>

        .loc 2, 653
.code_align 4
        .loc 2, 654
if lc1 b _cfftloop4
        .loc 2, 655
||r31:30=br(u7)[u6+=u10,u11]
        .loc 2, 656
||cfr27:26=cfr27:26-jcfr35:34<BA>
        .loc 2, 657
||cfr35:34=cfr27:26+jcfr35:34<BA>
        .loc 2, 658
||cfr23:22=cfr23:22+cfr31:30<BA>
        .loc 2, 659
||cfr31:30=cfr23:22-cfr31:30<BA>




        .loc 2, 664
u11=1||v11=1
        .loc 2, 665
||xr1=87381||xr0=0
        .loc 2, 666
||u0=u13+0||v0=v13+0
        .loc 2, 667
||xr3=w15
        .loc 2, 668
||w11=w12+w14


        .loc 2, 671
u12=128||v12=128
        .loc 2, 672
||yr4=4||w7=0
        .loc 2, 673
||tr4=w4
        .loc 2, 674
||u1=u13+u14||v1=v13+v14

        .loc 2, 676
u10=8||v10=8
        .loc 2, 677
||u3=u13+u15
        .loc 2, 678
||v3=v13+v15
        .loc 2, 679
||xr4=r3 ashift -7
        .loc 2, 680
||w2=w0+w12
        .loc 2, 681
||xr1=r1 & r3
        .loc 2, 682
.code_align 16
        .loc 2, 683
if nlc0 b _cfftlast||u2=u1+u14||v2=v1+v14||tr4-=1

        .loc 2, 685
.code_align 16
        .loc 2, 686
 if xr1>r0 b _cfft2stage
        .loc 2, 687
 _cfft1:
        .loc 2, 688
u4=40
        .loc 2, 689
||v4=40
        .loc 2, 690
||w10=-24
        .loc 2, 691
||xr5=r3 lshift -5
        .loc 2, 692
||r7:6=[u1+=u10,u11]
        .loc 2, 693
||r11:10=[w0+=w5,w6]

        .loc 2, 695
u14=64
        .loc 2, 696
||v14=64
        .loc 2, 697
||r9:8=[u0+=u10,u11]

        .loc 2, 699
u15=192
        .loc 2, 700
||v15=192
        .loc 2, 701
||r13:12=[u1+=u10,u11]
        .loc 2, 702
||r17:16=[w0+=w5,w6]


        .loc 2, 705
w12=64
        .loc 2, 706
||w14=128
        .loc 2, 707
||r15:14=[u0+=u10,u11]
        .loc 2, 708
||cfr7:6=cfr7:6*fr11
        .loc 2, 709
||cfr11:10=cfr7:6*fr10
        .loc 2, 710
||lc1=xr5

        .loc 2, 712
r19:18=[u1+=u10,u11]
        .loc 2, 713
||r23:22=[w0+=w5,w6]


        .loc 2, 716
r21:20=[u0+=u10,u11]
        .loc 2, 717
||cfr13:12=cfr13:12*fr17
        .loc 2, 718
||cfr17:16=cfr13:12*fr16
        .loc 2, 719
||fr7=fr7-fr10||fr6=fr6+fr11

        .loc 2, 721
r25:24=[u1+=u4,u11]
        .loc 2, 722
||r29:28=[w0+=w10,w6]

        .loc 2, 724
r27:26=[u0+=u4,u11]
        .loc 2, 725
||cfr19:18=cfr19:18*fr23
        .loc 2, 726
||cfr23:22=cfr19:18*fr22
        .loc 2, 727
||fr13=fr13-fr16||fr12=fr12+fr17


        .loc 2, 730
r7:6=[u1+=u10,u11]
        .loc 2, 731
||r11:10=[w0+=w5,w6]
        .loc 2, 732
||cfr31:30=cfr9:8+cfr7:6
        .loc 2, 733
||cfr33:32=cfr9:8-cfr7:6

        .loc 2, 735
r9:8=[u0+=u10,u11]
        .loc 2, 736
||cfr25:24=cfr25:24*fr29
        .loc 2, 737
||cfr29:28=cfr25:24*fr28
        .loc 2, 738
||fr19=fr19-fr22||fr18=fr18+fr23

        .loc 2, 740
r13:12=[u1+=u10,u11]
        .loc 2, 741
||r17:16=[w0+=w5,w6]
        .loc 2, 742
||cfr35:34=cfr15:14+cfr13:12
        .loc 2, 743
||cfr37:36=cfr15:14-cfr13:12


        .loc 2, 746
_cfft1loop:

        .loc 2, 748
[v0+=v10,v11]=r31:30
        .loc 2, 749
||r15:14=[u0+=u10,u11]
        .loc 2, 750
||fr25=fr25-fr28||fr24=fr24+fr29
        .loc 2, 751
||cfr7:6=cfr7:6*fr11
        .loc 2, 752
||cfr11:10=cfr7:6*fr10

        .loc 2, 754
[v1+=v10,v11]=r33:32
        .loc 2, 755
||r19:18=[u1+=u10,u11]
        .loc 2, 756
||r23:22=[w0+=w5,w6]
        .loc 2, 757
||cfr41:40=cfr21:20+cfr19:18
        .loc 2, 758
||cfr43:42=cfr21:20-cfr19:18


        .loc 2, 761
[v0+=v10,v11]=r35:34
        .loc 2, 762
||r21:20=[u0+=u10,u11]
        .loc 2, 763
||cfr13:12=cfr13:12*fr17
        .loc 2, 764
||cfr17:16=cfr13:12*fr16
        .loc 2, 765
||fr7=fr7-fr10||fr6=fr6+fr11



        .loc 2, 769
[v1+=v10,v11]=r37:36
        .loc 2, 770
||r25:24=[u1+=u4,u11]
        .loc 2, 771
||r29:28=[w0+=w10,w6]
        .loc 2, 772
||cfr45:44=cfr27:26+cfr25:24
        .loc 2, 773
||cfr47:46=cfr27:26-cfr25:24


        .loc 2, 776
[v0+=v10,v11]=r41:40
        .loc 2, 777
||r27:26=[u0+=u4,u11]
        .loc 2, 778
||fr13=fr13-fr16||fr12=fr12+fr17
        .loc 2, 779
||cfr19:18=cfr19:18*fr23
        .loc 2, 780
||cfr23:22=cfr19:18*fr22


        .loc 2, 783
[v1+=v10,v11]=r43:42
        .loc 2, 784
||r7:6=[u1+=u10,u11]
        .loc 2, 785
||r11:10=[w0+=w5,w6]
        .loc 2, 786
||cfr31:30=cfr9:8+cfr7:6
        .loc 2, 787
||cfr33:32=cfr9:8-cfr7:6


        .loc 2, 790
[v0+=v4,v11]=r45:44
        .loc 2, 791
||r9:8=[u0+=u10,u11]
        .loc 2, 792
||cfr25:24=cfr25:24*fr29
        .loc 2, 793
||cfr29:28=cfr25:24*fr28
        .loc 2, 794
||fr19=fr19-fr22||fr18=fr18+fr23

        .loc 2, 796
.code_align 16
        .loc 2, 797
if lc1 b _cfft1loop
        .loc 2, 798
||[v1+=v4,v11]=r47:46
        .loc 2, 799
||r13:12=[u1+=u10,u11]
        .loc 2, 800
||r17:16=[w0+=w5,w6]
        .loc 2, 801
||cfr35:34=cfr15:14+cfr13:12
        .loc 2, 802
||cfr37:36=cfr15:14-cfr13:12


        .loc 2, 805
zr0=u13||tr0=v13
        .loc 2, 806
u13=tr0||v13=zr0

        .loc 2, 808
u0=u13+0||v0=v13+0
        .loc 2, 809
||w0=w13+32

        .loc 2, 811
.code_align 16
        .loc 2, 812
u12=256||v12=256
        .loc 2, 813
||yr4=8||w7=0
        .loc 2, 814
||u1=u13+u14
        .loc 2, 815
||v1=v13+v14
        .loc 2, 816
||w11=w12+w14

        .loc 2, 818
u3=u13+u15
        .loc 2, 819
||v3=v13+v15
        .loc 2, 820
||xr4=r3 ashift -8
        .loc 2, 821
||w2=w0+w12

        .loc 2, 823
.code_align 16
        .loc 2, 824
if nlc0 b _cfftlast||w10=w0+0||u2=u1+u14||v2=v1+v14||tr4-=1

        .loc 2, 826
_cfft2stage:
        .loc 2, 827
r7:6=[u3+=u10,u11]||r11:10=[w0+=w5,w6]
        .loc 2, 828
||u7=u3+u12||v7=v3+v12
        .loc 2, 829
||lc0=xr4
        .loc 2, 830
||yr4-=3
        .loc 2, 831
||w3=w0+w14

        .loc 2, 833
r9:8=[u1+=u10,u11]
        .loc 2, 834
||u5=u1+u12||v5=v1+v12

        .loc 2, 836
r13:12=[u2+=u10,u11]||r17:16=[w2+=w5,w6]<BB>
        .loc 2, 837
||u6=u2+u12||v6=v2+v12


        .loc 2, 840
r15:14=[u0+=u10,u11]||r19:18=[w3+=w5,w6]<BB>
        .loc 2, 841
||fr7=fr7*fr11||fr33=fr6*fr10||fr6=fr6*fr11||fr32=fr7*fr10
        .loc 2, 842
||u4=u0+u12||v4=v0+v12
        .loc 2, 843
||lc1=yr4

        .loc 2, 845
r21:20=[u7+=u10,u11]
        .loc 2, 846
||fr9=fr9*fr11||fr35=fr8*fr10||fr8=fr8*fr11||fr34=fr9*fr10
        .loc 2, 847
||u14=u15+u12||v14=v15+v12

        .loc 2, 849
r23:22=[u5+=u10,u11]
        .loc 2, 850
||fr7=fr7-fr33||fr6=fr6+fr32
        .loc 2, 851
||tr3=u12

        .loc 2, 853
r25:24=[u6+=u10,u11]
        .loc 2, 854
||fr9=fr9-fr35||fr8=fr8+fr34



        .loc 2, 858
u14=u14+u10||v14=v14+v10
        .loc 2, 859
||r27:26=[u4+=u10,u11]
        .loc 2, 860
||fr21=fr21*fr11||fr29=fr20*fr10||fr20=fr20*fr11||fr28=fr21*fr10


        .loc 2, 863
r7:6=[u3+=u10,u11]
        .loc 2, 864
||r11:10=[w0+=w5,w6]
        .loc 2, 865
||fr23=fr23*fr11||fr31=fr22*fr10||fr22=fr22*fr11||fr30=fr23*fr10
        .loc 2, 866
||cfr13:12_7:6=cfr13:12+/-cfr7:6<BA>
        .loc 2, 867
||u12=u14-u10



        .loc 2, 871
r9:8=[u1+=u10,u11]
        .loc 2, 872
||fr21=fr21-fr29||fr20=fr20+fr28
        .loc 2, 873
||cfr43:42=cfr15:14+cfr9:8<BA>
        .loc 2, 874
||cfr41:40=cfr15:14-cfr9:8<BA>





        .loc 2, 880
r13:12=[u2+=u10,u11]
        .loc 2, 881
||fr23=fr23-fr31||fr22=fr22+fr30





        .loc 2, 887
r15:14=[u0+=u10,u11]
        .loc 2, 888
||fr37=fr7*fr19<BB>||fr35=fr6*fr18<BB>||fr36=fr6*fr19<BB>||fr34=fr7*fr18<BB>
        .loc 2, 889
||fr7=fr7*fr11||fr35=fr6*fr10||fr6=fr6*fr11||fr34=fr7*fr10






        .loc 2, 896
r21:20=[u7+=u10,u11]
        .loc 2, 897
||fr39=fr13*fr17<BB>||fr33=fr12*fr16<BB>||fr38=fr12*fr17<BB>||fr32=fr13*fr16<BB>
        .loc 2, 898
||fr9=fr9*fr11||fr33=fr8*fr10||fr8=fr8*fr11||fr32=fr9*fr10
        .loc 2, 899
||cfr47:46=cfr25:24+cfr21:20<BA>
        .loc 2, 900
||cfr45:44=cfr25:24-cfr21:20<BA>
        .loc 2, 901
||r63:62=r11:10




        .loc 2, 906
r23:22=[u5+=u10,u11]
        .loc 2, 907
||fr37=fr37-fr35<BB>||fr36=fr36+fr34<BB>
        .loc 2, 908
||fr7=fr7-fr35||fr6=fr6+fr34
        .loc 2, 909
||cfr51:50=cfr27:26+cfr23:22<BA>
        .loc 2, 910
||cfr55:54=cfr27:26-cfr23:22<BA>


        .loc 2, 913
r25:24=[u6+=u10,u11]
        .loc 2, 914
||r11:10=[w0+=w5,w6]
        .loc 2, 915
||fr39=fr39-fr33<BB>||fr38=fr38+fr32<BB>
        .loc 2, 916
||fr9=fr9-fr33||fr8=fr8+fr32


        .loc 2, 919
r27:26=[u4+=u10,u11]
        .loc 2, 920
||r17:16=[w2+=w5,w6]<BB>
        .loc 2, 921
||fr47=fr47*fr17<BB>||fr29=fr46*fr16<BB>||fr46=fr46*fr17<BB>||fr28=fr47*fr16<BB>
        .loc 2, 922
||cfr21:20=cfr21:20*fr63||cfr29:28=cfr21:20*fr62
        .loc 2, 923
||r33:32=r43:42<BB>

        .loc 2, 925
r7:6=[u3+=u10,u11]
        .loc 2, 926
||r19:18=[w3+=w5,w6]<BB>
        .loc 2, 927
||fr45=fr45*fr19<BB>||fr30=fr44*fr18<BB>||fr44=fr44*fr19<BB>||fr31=fr45*fr18<BB>
        .loc 2, 928
||cfr23:22=cfr23:22*fr63||cfr31:30=cfr23:22*fr62
        .loc 2, 929
||cfr9:8   = cfr41:40+cfr37:36<BB>
        .loc 2, 930
||cfr11:10 = cfr41:40-cfr37:36<BB>
        .loc 2, 931
||cfr13:12_7:6=cfr13:12+/-cfr7:6<BA>


        .loc 2, 934
r9:8=[u1+=u10,u11]
        .loc 2, 935
||fr47=fr47-fr29<BB>||fr46=fr46+fr28<BB>
        .loc 2, 936
||cfr21:20=cfr21:20+jcfr29:28
        .loc 2, 937
||cfr41:40=cfr15:14-cfr9:8<BA>
        .loc 2, 938
||cfr43:42=cfr15:14+cfr9:8<BA>

        .loc 2, 940
r13:12=[u2+=u10,u11]
        .loc 2, 941
||fr45=fr45-fr30<BB>||fr44=fr44+fr31<BB>
        .loc 2, 942
||cfr23:22=cfr23:22+jcfr31:30
        .loc 2, 943
||cfr53:52=cfr33:32+cfr39:38<BB>
        .loc 2, 944
||cfr63:62=cfr33:32-cfr39:38<BB>


        .loc 2, 947
_cfft2loop:
        .loc 2, 948
.code_align 16
        .loc 2, 949
r15:14=[u0+=u10,u11]
        .loc 2, 950
||cfr37:36=cfr7:6*fr19<BB>||cfr35:34=cfr7:6*fr18<BB>
        .loc 2, 951
||fr7=fr7*fr11||fr35=fr6*fr10||fr6=fr6*fr11||fr34=fr7*fr10
        .loc 2, 952
||[v1+=v10,v11]=r9:8<BB>
        .loc 2, 953
||r31:30=r55:54<BB>

        .loc 2, 955
r21:20=[u7+=u10,u11]
        .loc 2, 956
||cfr39:38=cfr13:12*fr17<BB>||cfr33:32=cfr13:12*fr16<BB>
        .loc 2, 957
||fr9=fr9*fr11||fr33=fr8*fr10||fr8=fr8*fr11||fr32=fr9*fr10
        .loc 2, 958
||cfr59:58=cfr51:50+cfr47:46<BB>
        .loc 2, 959
||cfr61:60=cfr51:50-cfr47:46<BB>
        .loc 2, 960
||cfr25:24=cfr25:24+cfr21:20<BA>
        .loc 2, 961
||cfr21:20=cfr25:24-cfr21:20<BA>
        .loc 2, 962
||[v3+=v10,v11]=r11:10<BB>
        .loc 2, 963
||r63:62=r11:10


        .loc 2, 966
r23:22=[u5+=u10,u11]
        .loc 2, 967
||cfr37:36=cfr37:36+jcfr35:34<BB>
        .loc 2, 968
||fr7=fr7-fr35||fr6=fr6+fr34
        .loc 2, 969
||cfr51:50=cfr27:26+cfr23:22<BA>
        .loc 2, 970
||cfr55:54=cfr27:26-cfr23:22<BA>
        .loc 2, 971
||[v0+=v10,v11]=r53:52<BB>

        .loc 2, 973
r25:24=[u6+=u10,u11]
        .loc 2, 974
||r11:10=[w0+=w5,w6]
        .loc 2, 975
||cfr39:38=cfr39:38+jcfr33:32<BB>
        .loc 2, 976
||fr9=fr9-fr33||fr8=fr8+fr32
        .loc 2, 977
||cfr49:48=cfr31:30+cfr45:44<BB>
        .loc 2, 978
||cfr45:44=cfr31:30-cfr45:44<BB>
        .loc 2, 979
||[v2+=v10,v11]=r63:62<BB>


        .loc 2, 982
r27:26=[u4+=u10,u11]
        .loc 2, 983
||r17:16=[w2+=w5,w6]<BB>
        .loc 2, 984
||cfr47:46=cfr25:24*fr17<BB>||cfr29:28=cfr25:24*fr16<BB>
        .loc 2, 985
||cfr21:20=cfr21:20*fr63||cfr29:28=cfr21:20*fr62
        .loc 2, 986
||[v4+=v10,v11]=r59:58<BB>
        .loc 2, 987
||r33:32=r43:42<BB>

        .loc 2, 989
r7:6=[u3+=u10,u11]
        .loc 2, 990
||r19:18=[w3+=w5,w6]<BB>
        .loc 2, 991
||cfr21:20=cfr21:20*fr19<BB>||cfr31:30=cfr21:20*fr18<BB>
        .loc 2, 992
||cfr23:22=cfr23:22*fr63||cfr31:30=cfr23:22*fr62
        .loc 2, 993
||cfr9:8   = cfr41:40+cfr37:36<BB>
        .loc 2, 994
||cfr11:10 = cfr41:40-cfr37:36<BB>
        .loc 2, 995
||cfr13:12_7:6=cfr13:12+/-cfr7:6<BA>
        .loc 2, 996
||[v6+=v10,v11]=r61:60<BB>

        .loc 2, 998
r9:8=[u1+=u10,u11]
        .loc 2, 999
||fr47=fr47-fr28<BB>||fr46=fr46+fr29<BB>
        .loc 2, 1000
||cfr21:20=cfr21:20+jcfr29:28
        .loc 2, 1001
||cfr41:40=cfr15:14-cfr9:8<BA>
        .loc 2, 1002
||cfr43:42=cfr15:14+cfr9:8<BA>
        .loc 2, 1003
||[v7+=v10,v11]=r45:44<BB>

        .loc 2, 1005
.code_align 16
        .loc 2, 1006
if lc1 b _cfft2loop
        .loc 2, 1007
||r13:12=[u2+=u10,u11]
        .loc 2, 1008
||fr45=fr21-fr30<BB>||fr44=fr20+fr31<BB>
        .loc 2, 1009
||cfr23:22=cfr23:22+jcfr31:30
        .loc 2, 1010
||cfr53:52=cfr33:32+cfr39:38<BB>
        .loc 2, 1011
||cfr63:62=cfr33:32-cfr39:38<BB>
        .loc 2, 1012
||[v5+=v10,v11]=r49:48<BB>

        .loc 2, 1014
r15:14=[u0+=u14,u11]
        .loc 2, 1015
||cfr37:36=cfr7:6*fr19<BB>||cfr35:34=cfr7:6*fr18<BB>
        .loc 2, 1016
||fr7=fr7*fr11||fr35=fr6*fr10||fr6=fr6*fr11||fr34=fr7*fr10
        .loc 2, 1017
||[v1+=v10,v11]=r9:8<BB>
        .loc 2, 1018
||r31:30=r55:54<BB>
        .loc 2, 1019
||lc1=yr4

        .loc 2, 1021
r21:20=[u7+=u14,u11]
        .loc 2, 1022
||cfr39:38=cfr13:12*fr17<BB>||cfr33:32=cfr13:12*fr16<BB>
        .loc 2, 1023
||fr9=fr9*fr11||fr33=fr8*fr10||fr8=fr8*fr11||fr32=fr9*fr10
        .loc 2, 1024
||cfr59:58=cfr51:50+cfr47:46<BB>
        .loc 2, 1025
||cfr61:60=cfr51:50-cfr47:46<BB>
        .loc 2, 1026
||cfr25:24=cfr25:24+cfr21:20<BA>
        .loc 2, 1027
||cfr21:20=cfr25:24-cfr21:20<BA>
        .loc 2, 1028
||[v3+=v10,v11]=r11:10<BB>
        .loc 2, 1029
||r63:62=r11:10

        .loc 2, 1031
r23:22=[u5+=u14,u11]
        .loc 2, 1032
||cfr37:36=cfr37:36+jcfr35:34<BB>
        .loc 2, 1033
||fr7=fr7-fr35||fr6=fr6+fr34
        .loc 2, 1034
||cfr51:50=cfr27:26+cfr23:22<BA>
        .loc 2, 1035
||cfr55:54=cfr27:26-cfr23:22<BA>
        .loc 2, 1036
||[v0+=v10,v11]=r53:52<BB>

        .loc 2, 1038
r25:24=[u6+=u14,u11]
        .loc 2, 1039
||r11:10=[w10+=w7,w6]
        .loc 2, 1040
||cfr39:38=cfr39:38+jcfr33:32<BB>
        .loc 2, 1041
||fr9=fr9-fr33||fr8=fr8+fr32
        .loc 2, 1042
||cfr49:48=cfr31:30+cfr45:44<BB>
        .loc 2, 1043
||cfr45:44=cfr31:30-cfr45:44<BB>
        .loc 2, 1044
||[v2+=v10,v11]=r63:62<BB>


        .loc 2, 1047
r27:26=[u4+=u14,u11]
        .loc 2, 1048
||r17:16=[w2+=w5,w6]<BB>
        .loc 2, 1049
||cfr47:46=cfr25:24*fr17<BB>||cfr29:28=cfr25:24*fr16<BB>
        .loc 2, 1050
||cfr21:20=cfr21:20*fr63||cfr29:28=cfr21:20*fr62
        .loc 2, 1051
||[v4+=v10,v11]=r59:58<BB>
        .loc 2, 1052
||r33:32=r43:42<BB>

        .loc 2, 1054
r7:6=[u3+u12,u11]
        .loc 2, 1055
||r19:18=[w3+=w5,w6]<BB>
        .loc 2, 1056
||cfr21:20=cfr21:20*fr19<BB>||cfr31:30=cfr21:20*fr18<BB>
        .loc 2, 1057
||cfr23:22=cfr23:22*fr63||cfr31:30=cfr23:22*fr62
        .loc 2, 1058
||cfr9:8   = cfr41:40+cfr37:36<BB>
        .loc 2, 1059
||cfr11:10 = cfr41:40-cfr37:36<BB>
        .loc 2, 1060
||cfr13:12_7:6=cfr13:12+/-cfr7:6<BA>
        .loc 2, 1061
||[v6+=v10,v11]=r61:60<BB>
        .loc 2, 1062
||w0=w10+w5||u3=u3+u14

        .loc 2, 1064
r9:8=[u1+u12,u11]
        .loc 2, 1065
||fr47=fr47-fr28<BB>||fr46=fr46+fr29<BB>
        .loc 2, 1066
||cfr21:20=cfr21:20+jcfr29:28
        .loc 2, 1067
||cfr41:40=cfr15:14-cfr9:8<BA>
        .loc 2, 1068
||cfr43:42=cfr15:14+cfr9:8<BA>
        .loc 2, 1069
||[v7+=v10,v11]=r45:44<BB>
        .loc 2, 1070
||u1=u1+u14

        .loc 2, 1072
r13:12=[u2+u12,u11]
        .loc 2, 1073
||fr45=fr21-fr30<BB>||fr44=fr20+fr31<BB>
        .loc 2, 1074
||cfr23:22=cfr23:22+jcfr31:30
        .loc 2, 1075
||cfr53:52=cfr33:32+cfr39:38<BB>
        .loc 2, 1076
||cfr63:62=cfr33:32-cfr39:38<BB>
        .loc 2, 1077
||[v5+=v10,v11]=r49:48<BB>
        .loc 2, 1078
||u2=u2+u14

        .loc 2, 1080
r15:14=[u0+=u10,u11]
        .loc 2, 1081
||cfr37:36=cfr7:6*fr19<BB>||cfr35:34=cfr7:6*fr18<BB>
        .loc 2, 1082
||fr7=fr7*fr11||fr35=fr6*fr10||fr6=fr6*fr11||fr34=fr7*fr10
        .loc 2, 1083
||[v1+=v10,v11]=r9:8<BB>
        .loc 2, 1084
||r31:30=r55:54<BB>
        .loc 2, 1085
||w2=w10+w12

        .loc 2, 1087
r21:20=[u7+=u10,u11]
        .loc 2, 1088
||cfr39:38=cfr13:12*fr17<BB>||cfr33:32=cfr13:12*fr16<BB>
        .loc 2, 1089
||fr9=fr9*fr11||fr33=fr8*fr10||fr8=fr8*fr11||fr32=fr9*fr10
        .loc 2, 1090
||cfr59:58=cfr51:50+cfr47:46<BB>
        .loc 2, 1091
||cfr61:60=cfr51:50-cfr47:46<BB>
        .loc 2, 1092
||cfr25:24=cfr25:24+cfr21:20<BA>
        .loc 2, 1093
||cfr21:20=cfr25:24-cfr21:20<BA>
        .loc 2, 1094
||[v3+=v10,v11]=r11:10<BB>
        .loc 2, 1095
||w3=w10+w14
        .loc 2, 1096
||r63:62=r11:10


        .loc 2, 1099
r23:22=[u5+=u10,u11]
        .loc 2, 1100
||cfr37:36=cfr37:36+jcfr35:34<BB>
        .loc 2, 1101
||fr7=fr7-fr35||fr6=fr6+fr34
        .loc 2, 1102
||cfr51:50=cfr27:26+cfr23:22<BA>
        .loc 2, 1103
||cfr55:54=cfr27:26-cfr23:22<BA>
        .loc 2, 1104
||[v0+=v10,v11]=r53:52<BB>

        .loc 2, 1106
r25:24=[u6+=u10,u11]
        .loc 2, 1107
||r11:10=[w0+=w5,w6]
        .loc 2, 1108
||cfr39:38=cfr39:38+jcfr33:32<BB>
        .loc 2, 1109
||fr9=fr9-fr33||fr8=fr8+fr32
        .loc 2, 1110
||cfr49:48=cfr31:30+cfr45:44<BB>
        .loc 2, 1111
||cfr45:44=cfr31:30-cfr45:44<BB>
        .loc 2, 1112
||[v2+=v10,v11]=r63:62<BB>


        .loc 2, 1115
r27:26=[u4+=u10,u11]
        .loc 2, 1116
||r17:16=[w2+=w5,w6]<BB>
        .loc 2, 1117
||cfr47:46=cfr25:24*fr17<BB>||cfr29:28=cfr25:24*fr16<BB>
        .loc 2, 1118
||cfr21:20=cfr21:20*fr63||cfr29:28=cfr21:20*fr62
        .loc 2, 1119
||[v4+=v10,v11]=r59:58<BB>
        .loc 2, 1120
||r33:32=r43:42<BB>

        .loc 2, 1122
r7:6=[u3+=u10,u11]
        .loc 2, 1123
||r19:18=[w3+=w5,w6]<BB>
        .loc 2, 1124
||cfr21:20=cfr21:20*fr19<BB>||cfr31:30=cfr21:20*fr18<BB>
        .loc 2, 1125
||cfr23:22=cfr23:22*fr63||cfr31:30=cfr23:22*fr62
        .loc 2, 1126
||cfr9:8   = cfr41:40+cfr37:36<BB>
        .loc 2, 1127
||cfr11:10 = cfr41:40-cfr37:36<BB>
        .loc 2, 1128
||cfr13:12_7:6=cfr13:12+/-cfr7:6<BA>
        .loc 2, 1129
||[v6+=v10,v11]=r61:60<BB>

        .loc 2, 1131
r9:8=[u1+=u10,u11]
        .loc 2, 1132
||fr47=fr47-fr28<BB>||fr46=fr46+fr29<BB>
        .loc 2, 1133
||cfr21:20=cfr21:20+jcfr29:28
        .loc 2, 1134
||cfr41:40=cfr15:14-cfr9:8<BA>
        .loc 2, 1135
||cfr43:42=cfr15:14+cfr9:8<BA>
        .loc 2, 1136
||[v7+=v10,v11]=r45:44<BB>


        .loc 2, 1139
r13:12=[u2+=u10,u11]
        .loc 2, 1140
||fr45=fr21-fr30<BB>||fr44=fr20+fr31<BB>
        .loc 2, 1141
||cfr23:22=cfr23:22+jcfr31:30
        .loc 2, 1142
||cfr53:52=cfr33:32+cfr39:38<BB>
        .loc 2, 1143
||cfr63:62=cfr33:32-cfr39:38<BB>
        .loc 2, 1144
||[v5+=v10,v11]=r49:48<BB>

        .loc 2, 1146
r15:14=[u0+=u10,u11]
        .loc 2, 1147
||cfr37:36=cfr7:6*fr19<BB>||cfr35:34=cfr7:6*fr18<BB>
        .loc 2, 1148
||fr7=fr7*fr11||fr35=fr6*fr10||fr6=fr6*fr11||fr34=fr7*fr10
        .loc 2, 1149
||[v1+=v14,v11]=r9:8<BB>
        .loc 2, 1150
||r31:30=r55:54<BB>


        .loc 2, 1153
r21:20=[u7+=u10,u11]
        .loc 2, 1154
||cfr39:38=cfr13:12*fr17<BB>||cfr33:32=cfr13:12*fr16<BB>
        .loc 2, 1155
||fr9=fr9*fr11||fr33=fr8*fr10||fr8=fr8*fr11||fr32=fr9*fr10
        .loc 2, 1156
||cfr59:58=cfr51:50+cfr47:46<BB>
        .loc 2, 1157
||cfr61:60=cfr51:50-cfr47:46<BB>
        .loc 2, 1158
||cfr25:24=cfr25:24+cfr21:20<BA>
        .loc 2, 1159
||cfr21:20=cfr25:24-cfr21:20<BA>
        .loc 2, 1160
||[v3+=v14,v11]=r11:10<BB>
        .loc 2, 1161
||r63:62=r11:10


        .loc 2, 1164
r23:22=[u5+=u10,u11]
        .loc 2, 1165
||cfr37:36=cfr37:36+jcfr35:34<BB>
        .loc 2, 1166
||fr7=fr7-fr35||fr6=fr6+fr34
        .loc 2, 1167
||cfr51:50=cfr27:26+cfr23:22<BA>
        .loc 2, 1168
||cfr55:54=cfr27:26-cfr23:22<BA>
        .loc 2, 1169
||[v0+=v14,v11]=r53:52<BB>

        .loc 2, 1171
r25:24=[u6+=u10,u11]
        .loc 2, 1172
||r11:10=[w0+=w5,w6]
        .loc 2, 1173
||cfr39:38=cfr39:38+jcfr33:32<BB>
        .loc 2, 1174
||fr9=fr9-fr33||fr8=fr8+fr32
        .loc 2, 1175
||cfr49:48=cfr31:30+cfr45:44<BB>
        .loc 2, 1176
||cfr45:44=cfr31:30-cfr45:44<BB>
        .loc 2, 1177
||[v2+=v14,v11]=r63:62<BB>


        .loc 2, 1180
r27:26=[u4+=u10,u11]
        .loc 2, 1181
||r17:16=[w2+=w5,w6]<BB>
        .loc 2, 1182
||cfr47:46=cfr25:24*fr17<BB>||cfr29:28=cfr25:24*fr16<BB>
        .loc 2, 1183
||cfr21:20=cfr21:20*fr63||cfr29:28=cfr21:20*fr62
        .loc 2, 1184
||[v4+=v14,v11]=r59:58<BB>
        .loc 2, 1185
||r33:32=r43:42<BB>

        .loc 2, 1187
r7:6=[u3+=u10,u11]
        .loc 2, 1188
||r19:18=[w3+=w5,w6]<BB>
        .loc 2, 1189
||cfr21:20=cfr21:20*fr19<BB>||cfr31:30=cfr21:20*fr18<BB>
        .loc 2, 1190
||cfr23:22=cfr23:22*fr63||cfr31:30=cfr23:22*fr62
        .loc 2, 1191
||cfr9:8   = cfr41:40+cfr37:36<BB>
        .loc 2, 1192
||cfr11:10 = cfr41:40-cfr37:36<BB>
        .loc 2, 1193
||cfr13:12_7:6=cfr13:12+/-cfr7:6<BA>
        .loc 2, 1194
||[v6+=v14,v11]=r61:60<BB>

        .loc 2, 1196
r9:8=[u1+=u10,u11]
        .loc 2, 1197
||fr47=fr47-fr28<BB>||fr46=fr46+fr29<BB>
        .loc 2, 1198
||cfr21:20=cfr21:20+jcfr29:28
        .loc 2, 1199
||cfr41:40=cfr15:14-cfr9:8<BA>
        .loc 2, 1200
||cfr43:42=cfr15:14+cfr9:8<BA>
        .loc 2, 1201
||[v7+=v14,v11]=r45:44<BB>


        .loc 2, 1204
.code_align 16
        .loc 2, 1205
if lc0 b _cfft2loop
        .loc 2, 1206
||r13:12=[u2+=u10,u11]
        .loc 2, 1207
||fr45=fr21-fr30<BB>||fr44=fr20+fr31<BB>
        .loc 2, 1208
||cfr23:22=cfr23:22+jcfr31:30
        .loc 2, 1209
||cfr53:52=cfr33:32+cfr39:38<BB>
        .loc 2, 1210
||cfr63:62=cfr33:32-cfr39:38<BB>
        .loc 2, 1211
||[v5+=v14,v11]=r49:48<BB>

        .loc 2, 1213
zr0=u13||tr0=v13
        .loc 2, 1214
u13=tr0||v13=zr0||u12=tr3

        .loc 2, 1216
yr4+=3||u0=u13+0||v0=v13+0||w0=w10+w11||lc1=tr4
        .loc 2, 1217
u15=u15 ashift 2||v15=v15 ashift 2||w10=w10+w11||xr4=r4 lshift -2
        .loc 2, 1218
u1=u13+u12||v1=v13+v12||w12=w12 ashift 2
        .loc 2, 1219
.code_align 16
        .loc 2, 1220
u3=u13+u15||v3=v13+v15||yr4=r4 lshift 2||w14=w14 ashift 2
        .loc 2, 1221
u2=u1+u12||v2=v1+v12||w2=w0+w12
        .loc 2, 1222
.code_align 16
        .loc 2, 1223
if lc1 b _cfft2stage
        .loc 2, 1224
||u12=u12 ashift 2||v12=v12 ashift 2||w11=w12+w14||tr4-=1

        .loc 2, 1226
_cfftlast:
        .loc 2, 1227
r7:6=[u3+=u10,u11]
        .loc 2, 1228
||r11:10=[w0+=w5,w6]
        .loc 2, 1229
||fr1=fr1-fr1
        .loc 2, 1230
||fr0=fr0-fr0
        .loc 2, 1231
||w3=w0+w14
        .loc 2, 1232
||v0=yr1||v12=v12 ashift -2

        .loc 2, 1234
xr5=r3 lshift -5
        .loc 2, 1235
||r9:8=[u2+=u10,u11]

        .loc 2, 1237
r13:12=[u1+=u10,u11]||r17:16=[w2+=w5,w6]<BB>


        .loc 2, 1240
r15:14=[u0+=u10,u11]
        .loc 2, 1241
||r19:18=[w3+=w5,w6]<BB>
        .loc 2, 1242
||fr7=fr7*fr11||fr33=fr6*fr10||fr6=fr6*fr11||fr32=fr7*fr10


        .loc 2, 1245
r21:20=[u3+=u10,u11]
        .loc 2, 1246
||r11:10=[w0+=w5,w6]
        .loc 2, 1247
||fr9=fr9*fr11||fr35=fr8*fr10||fr8=fr8*fr11||fr34=fr9*fr10
        .loc 2, 1248
||lc1=xr5
        .loc 2, 1249
||v1=v0+v12

        .loc 2, 1251
r23:22=[u2+=u10,u11]
        .loc 2, 1252
||fr7=fr7-fr33||fr6=fr6+fr32




        .loc 2, 1257
r25:24=[u1+=u10,u11]
        .loc 2, 1258
||fr9=fr9-fr35||fr8=fr8+fr34
        .loc 2, 1259
||v3=v0+v15

        .loc 2, 1261
r27:26=[u0+=u10,u11]
        .loc 2, 1262
||fr21=fr21*fr11||fr29=fr20*fr10||fr20=fr20*fr11||fr28=fr21*fr10
        .loc 2, 1263
||v2=v1+v12

        .loc 2, 1265
r7:6=[u3+=u10,u11]
        .loc 2, 1266
||r11:10=[w0+=w5,w6]
        .loc 2, 1267
||fr23=fr23*fr11||fr31=fr22*fr10||fr22=fr22*fr11||fr30=fr23*fr10
        .loc 2, 1268
||cfr13:12_7:6=cfr13:12+/-cfr7:6<BA>

        .loc 2, 1270
r9:8=[u2+=u10,u11]
        .loc 2, 1271
||fr21=fr21-fr29||fr20=fr20+fr28
        .loc 2, 1272
||cfr43:42=cfr15:14+cfr9:8<BA>
        .loc 2, 1273
||cfr41:40=cfr15:14-cfr9:8<BA>

        .loc 2, 1275
r13:12=[u1+=u10,u11]
        .loc 2, 1276
||fr23=fr23-fr31||fr22=fr22+fr30
        .loc 2, 1277
||r63:62=[w0+=w5,w6]

        .loc 2, 1279
r15:14=[u0+=u10,u11]
        .loc 2, 1280
||fr37=fr7*fr19<BB>||fr35=fr6*fr18<BB>||fr36=fr6*fr19<BB>||fr34=fr7*fr18<BB>
        .loc 2, 1281
||fr7=fr7*fr11||fr35=fr6*fr10||fr6=fr6*fr11||fr34=fr7*fr10
        .loc 2, 1282
||r19:18=[w3+=w5,w6]<BB>

        .loc 2, 1284
r21:20=[u3+=u10,u11]
        .loc 2, 1285
||r17:16=[w2+=w5,w6]<BB>
        .loc 2, 1286
||fr39=fr13*fr17<BB>||fr33=fr12*fr16<BB>||fr38=fr12*fr17<BB>||fr32=fr13*fr16<BB>
        .loc 2, 1287
||fr9=fr9*fr11||fr33=fr8*fr10||fr8=fr8*fr11||fr32=fr9*fr10
        .loc 2, 1288
||cfr47:46=cfr25:24+cfr21:20<BA>
        .loc 2, 1289
||cfr45:44=cfr25:24-cfr21:20<BA>

        .loc 2, 1291
r23:22=[u2+=u10,u11]
        .loc 2, 1292
||r11:10=[w0+=w5,w6]
        .loc 2, 1293
||fr37=fr37-fr35<BB>||fr36=fr36+fr34<BB>
        .loc 2, 1294
||fr7=fr7-fr35||fr6=fr6+fr34
        .loc 2, 1295
||cfr51:50=cfr27:26+cfr23:22<BA>
        .loc 2, 1296
||cfr55:54=cfr27:26-cfr23:22<BA>

        .loc 2, 1298
r25:24=[u1+=u10,u11]
        .loc 2, 1299
||fr39=fr39-fr33<BB>||fr38=fr38+fr32<BB>
        .loc 2, 1300
||fr9=fr9-fr33||fr8=fr8+fr32

        .loc 2, 1302
r27:26=[u0+=u10,u11]
        .loc 2, 1303
||fr47=fr47*fr17<BB>||fr29=fr46*fr16<BB>||fr46=fr46*fr17<BB>||fr28=fr47*fr16<BB>
        .loc 2, 1304
||cfr21:20=cfr21:20*fr63||cfr29:28=cfr21:20*fr62
        .loc 2, 1305
||r33:32=r43:42<BB>
        .loc 2, 1306
||r17:16=[w2+=w5,w6]<BB>

        .loc 2, 1308
r7:6=[u3+=u10,u11]
        .loc 2, 1309
||r19:18=[w3+=w5,w6]<BB>
        .loc 2, 1310
||fr45=fr45*fr19<BB>||fr30=fr44*fr18<BB>||fr44=fr44*fr19<BB>||fr31=fr45*fr18<BB>
        .loc 2, 1311
||cfr23:22=cfr23:22*fr63||cfr31:30=cfr23:22*fr62
        .loc 2, 1312
||cfr9:8   = cfr41:40+cfr37:36<BB>
        .loc 2, 1313
||cfr11:10 = cfr41:40-cfr37:36<BB>
        .loc 2, 1314
||cfr13:12_7:6=cfr13:12+/-cfr7:6<BA>

        .loc 2, 1316
r9:8=[u2+=u10,u11]
        .loc 2, 1317
||r63:62=[w0+=w5,w6]
        .loc 2, 1318
||fr47=fr47-fr29<BB>||fr46=fr46+fr28<BB>
        .loc 2, 1319
||cfr21:20=cfr21:20+jcfr29:28
        .loc 2, 1320
||cfr41:40=cfr15:14-cfr9:8<BA>
        .loc 2, 1321
||cfr43:42=cfr15:14+cfr9:8<BA>

        .loc 2, 1323
r13:12=[u1+=u10,u11]
        .loc 2, 1324
||fr45=fr45-fr30<BB>||fr44=fr44+fr31<BB>
        .loc 2, 1325
||cfr23:22=cfr23:22+jcfr31:30
        .loc 2, 1326
||cfr53:52=cfr33:32+cfr39:38<BB>
        .loc 2, 1327
||cfr63:62=cfr33:32-cfr39:38<BB>

        .loc 2, 1329
_cfftlastloop:
        .loc 2, 1330
.code_align 16
        .loc 2, 1331
r15:14=[u0+=u10,u11]
        .loc 2, 1332
||r19:18=[w3+=w5,w6]<BB>
        .loc 2, 1333
||cfr37:36=cfr7:6*fr19<BB>||cfr35:34=cfr7:6*fr18<BB>
        .loc 2, 1334
||fr7=fr7*fr11||fr35=fr6*fr10||fr6=fr6*fr11||fr34=fr7*fr10
        .loc 2, 1335
||[v1+=v10,v11]=r9:8<BB>
        .loc 2, 1336
||r31:30=r55:54<BB>

        .loc 2, 1338
r21:20=[u3+=u10,u11]
        .loc 2, 1339
||cfr39:38=cfr13:12*fr17<BB>||cfr33:32=cfr13:12*fr16<BB>
        .loc 2, 1340
||fr9=fr9*fr11||fr33=fr8*fr10||fr8=fr8*fr11||fr32=fr9*fr10
        .loc 2, 1341
||cfr59:58=cfr51:50+cfr47:46<BB>
        .loc 2, 1342
||cfr61:60=cfr51:50-cfr47:46<BB>
        .loc 2, 1343
||cfr25:24=cfr25:24+cfr21:20<BA>
        .loc 2, 1344
||cfr21:20=cfr25:24-cfr21:20<BA>
        .loc 2, 1345
||[v3+=v10,v11]=r11:10<BB>
        .loc 2, 1346
||r17:16=[w2+=w5,w6]<BB>


        .loc 2, 1349
r23:22=[u2+=u10,u11]
        .loc 2, 1350
||r11:10=[w0+=w5,w6]
        .loc 2, 1351
||cfr37:36=cfr37:36+jcfr35:34<BB>
        .loc 2, 1352
||fr7=fr7-fr35||fr6=fr6+fr34
        .loc 2, 1353
||cfr51:50=cfr27:26+cfr23:22<BA>
        .loc 2, 1354
||cfr55:54=cfr27:26-cfr23:22<BA>
        .loc 2, 1355
||[v0+=v10,v11]=r53:52<BB>

        .loc 2, 1357
r25:24=[u1+=u10,u11]
        .loc 2, 1358
||cfr39:38=cfr39:38+jcfr33:32<BB>
        .loc 2, 1359
||fr9=fr9-fr33||fr8=fr8+fr32
        .loc 2, 1360
||cfr49:48=cfr31:30+cfr45:44<BB>
        .loc 2, 1361
||cfr45:44=cfr31:30-cfr45:44<BB>
        .loc 2, 1362
||[v2+=v10,v11]=r63:62<BB>


        .loc 2, 1365
r27:26=[u0+=u10,u11]
        .loc 2, 1366
||r17:16=[w2+=w5,w6]<BB>
        .loc 2, 1367
||cfr47:46=cfr25:24*fr17<BB>||cfr29:28=cfr25:24*fr16<BB>
        .loc 2, 1368
||cfr21:20=cfr21:20*fr63||cfr29:28=cfr21:20*fr62
        .loc 2, 1369
||[v0+=v10,v11]=r59:58<BB>
        .loc 2, 1370
||r33:32=r43:42<BB>

        .loc 2, 1372
r7:6=[u3+=u10,u11]
        .loc 2, 1373
||r19:18=[w3+=w5,w6]<BB>
        .loc 2, 1374
||cfr21:20=cfr21:20*fr19<BB>||cfr31:30=cfr21:20*fr18<BB>
        .loc 2, 1375
||cfr23:22=cfr23:22*fr63||cfr31:30=cfr23:22*fr62
        .loc 2, 1376
||cfr9:8   = cfr41:40+cfr37:36<BB>
        .loc 2, 1377
||cfr11:10 = cfr41:40-cfr37:36<BB>
        .loc 2, 1378
||cfr13:12_7:6=cfr13:12+/-cfr7:6<BA>
        .loc 2, 1379
||[v2+=v10,v11]=r61:60<BB>

        .loc 2, 1381
r9:8=[u2+=u10,u11]
        .loc 2, 1382
||r63:62=[w0+=w5,w6]
        .loc 2, 1383
||fr47=fr47-fr28<BB>||fr46=fr46+fr29<BB>
        .loc 2, 1384
||cfr21:20=cfr21:20+jcfr29:28
        .loc 2, 1385
||cfr41:40=cfr15:14-cfr9:8<BA>
        .loc 2, 1386
||cfr43:42=cfr15:14+cfr9:8<BA>
        .loc 2, 1387
||[v3+=v10,v11]=r45:44<BB>

        .loc 2, 1389
.code_align 16
        .loc 2, 1390
if lc1 b _cfftlastloop
        .loc 2, 1391
||r13:12=[u1+=u10,u11]
        .loc 2, 1392
||fr45=fr21-fr30<BB>||fr44=fr20+fr31<BB>
        .loc 2, 1393
||cfr23:22=cfr23:22+jcfr31:30
        .loc 2, 1394
||cfr53:52=cfr33:32+cfr39:38<BB>
        .loc 2, 1395
||cfr63:62=cfr33:32-cfr39:38<BB>
        .loc 2, 1396
||[v1+=v10,v11]=r49:48<BB>




        .loc 2, 1401
_cfftexit:

        .loc 2, 1403
xyr6=[u8+2,-1]||u8=u8+2
        .loc 2, 1404
r5:4=[u8+7,-1]||u8=u8+7
        .loc 2, 1405
r3:2=[u8+8,-1]||u8=u8+8
        .loc 2, 1406
r1:0=[u8+8,-1]||u8=u8+8
        .loc 2, 1407
r41:40=[u8+8,-1]||u8=u8+8
        .loc 2, 1408
r43:42=[u8+8,-1]||u8=u8+8
        .loc 2, 1409
r45:44=[u8+8,-1]||u8=u8+8
        .loc 2, 1410
r47:46=[u8+8,-1]||u8=u8+8
        .loc 2, 1411
r49:48=[u8+8,-1]||u8=u8+8
        .loc 2, 1412
r51:50=[u8+8,-1]||u8=u8+8
        .loc 2, 1413
r53:52=[u8+8,-1]||u8=u8+8||w14=xr6||w15=yr6
        .loc 2, 1414
r55:54=[u8+8,-1]||u8=u8+8||w10=xr5||w11=yr5||w12=zr5||w13=tr5
        .loc 2, 1415
r57:56=[u8+8,-1]||u8=u8+8||v14=xr4||v15=yr4||w8=zr4||w9=tr4
        .loc 2, 1416
r59:58=[u8+8,-1]||u8=u8+8||v10=xr2||v11=yr2||v12=zr2||v13=tr2
        .loc 2, 1417
r61:60=[u8+8,-1]||u8=u8+8||u14=xr1||u15=yr1||v8=zr1||v9=tr1
        .loc 2, 1418
r63:62=[u8+8,-1]||u8=u8+8||u10=xr0||u11=yr0||u12=zr0||u13=tr0
        .loc 2, 1419
u8=u8+1

        .loc 2, 1421
nop
        .loc 2, 1422
rtrap 23
        .loc 2, 1423
nop

        .loc 2, 1425
_fft_end:

        .loc 2, 1427
.code_align 16
        .loc 2, 1428
ret


