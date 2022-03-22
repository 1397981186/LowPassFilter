        .file "C:\Users\Mihtop\Desktop\ECS\201124\"
        .file 1, "../get_coreid.asm"





        .file "C:\Users\Mihtop\Desktop\ECS\201124\"
        .file 2, "get_coreid.asm"
        .loc 2, 11
.global __get_coreid
        .loc 2, 12
.text
        .loc 2, 13
__get_coreid:

        .loc 2, 15
xr0=CINF||xr1=0x1
        .loc 2, 16
xr8= r0 ashift -8
        .loc 2, 17
xr8=r8 & r1


        .loc 2, 20
.code_align 4
        .loc 2, 21
ret




