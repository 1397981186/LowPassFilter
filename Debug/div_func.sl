    .file "C:/Users/Mihtop/Desktop/ECS/201124/"
    .file 1, "../div_func.asm"






    .file "C:/Users/Mihtop/Desktop/ECS/201124/"
    .file 2, "div_func.asm"
    .loc 2, 7
    .global __div_func
    .loc 2, 8
    .text
    .loc 2, 9
__div_func :
    .loc 2, 10
    0x06000001 0x0d814000    $2
    .loc 2, 11
    0x0a515054    $0
    .loc 2, 12
    0x0ac16540    $0
    .loc 2, 13
    0x06000000 0x0d817000 || 0x001C0000 || 0x001C0000 || 0x001C0000 || 0x001C0000 || 0x001C0000 || 0x001C0000 || 0x001C0000 || 0x001C0000 || 0x001C0000 || 0x001C0000    $40
    .loc 2, 14
_do_div :

    .loc 2, 16

    .loc 2, 17
    if xr23 == r22  b _do_div_end    $2

    .loc 2, 19
    0x27000000 0x0c50a000    $2
    .loc 2, 20
    0x09d0c282    $0
    .loc 2, 21
    0x27000001 0x0c40c000    $2

    .loc 2, 23
    0x08b17001 || 0x001C0000 || 0x001C0000 || 0x001C0000 || 0x001C0000 || 0x001C0000 || 0x001C0000 || 0x001C0000 || 0x001C0000    $24

    .loc 2, 25

    .loc 2, 26
    b _do_div    $2

    .loc 2, 28
_do_div_end :
    .loc 2, 29
    0x00200000 || 0x001C0000 || 0x001C0000 || 0x001C0000 || 0x001C0000 || 0x001C0000 || 0x001C0000 || 0x001C0000 || 0x001C0000 || 0x001C0000 || 0x001C0000 || 0x001C0000 || 0x001C0000 || 0x001C0000    $49

    .loc 2, 31

    .loc 2, 32
    0x00440000    $0
    0x001C0000 || 0x001C0000 || 0x001C0000    $3

