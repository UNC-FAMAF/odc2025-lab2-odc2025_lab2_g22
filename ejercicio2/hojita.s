    .globl pintar_hojita

pintar_hojita:

    sub sp, sp, #40         // guardo memoria
    stur lr, [sp]
    stur x9, [sp, #8]
    stur x10, [sp, #16]
    stur x11, [sp, #24]
    stur x20, [sp, #32]

    movz x7, 0xA9, lsl 16   // color base de hojita
    movk x7, 0xB72C, lsl 00

    mov x10, x1
    mov x11, x2

    add x5, x1, 50
    add x6, x2, 5
    bl rectangulo
    sub x1, x1, 5
    add x2, x2, 5
    add x5, x1, 60
    add x6, x2, 10
    bl rectangulo
    add x1, x1, 17
    add x2, x2, 5
    add x5, x1, 62
    add x6, x6, 5
    bl rectangulo
    add x1, x1, 10
    add x2, x2, 5
    add x5, x1, 40
    add x6, x6, 5
    bl rectangulo
    add x1, x5, 7
    sub x2, x2, 12
    add x5, x1, 10
    add x6, x2, 10
    bl rectangulo
    mov x1, x5
    mov x6, x2
    sub x2, x6, 5
    add x5, x1, 5
    bl rectangulo

    movz x7, 0x84, lsl 16   // color detalles de hojita
    movk x7, 0x9017, lsl 00

    mov x9, 0               // contador
    sub x1, x10, 15
    sub x2, x11, 13

loop_hojita_1:
    add x1, x1, 5
    add x2, x2, 4
    add x5, x1, 5
    add x6, x2, 5
    bl rectangulo
    add x9, x9, 1           // sumo 1 al contador
    cmp x9, 2               // comparo el contador con 2
    b.ne loop_hojita_1      // si no es igual, salto a loop_hojita_1
    mov x9, 0               // contador
loop_hojita_2:
    mov x1, x5
    add x2, x2, 5
    add x5, x1, 10
    add x6, x2, 5
    bl rectangulo
    add x9, x9, 1           // sumo 1 al contador
    cmp x9, 3               // comparo el contador con 3
    b.ne loop_hojita_2      // si no es igual, salto a loop_hojita_2
    add x1, x1, 55
    sub x2, x2, 7
    add x5, x1, 5
    add x6, x2, 10
    bl rectangulo

    ldur lr, [sp]
    ldur x9, [sp, #8]
    ldur x10, [sp, #16]
    ldur x11, [sp, #24]
    ldur x20, [sp, #32]
    add sp, sp, #40         // libero memoria

    br lr
