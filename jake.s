	.globl pintar_jake

pintar_base:

	sub sp, sp, #24 		// guardo memoria
	stur lr, [sp]
	stur x9, [sp, #8]
	stur x20, [sp, #16]

    movz x7, 0xE2, lsl 16   // color de la sombra
    movk x7, 0xAE03, lsl 00

	mov x1, 485				// patas
	mov x2, 405
    mov x5, 495
    mov x6, 425
    bl rectangulo
    add x1, x1, 100
    add x5, x5, 100
    bl rectangulo

    sub x1, x1, 110			// cuerpo
    mov x6, x2
	sub x2, x2, 5
    add x5, x5, 5
    bl rectangulo
    mov x9, 0  				// contador
loop_base_1:
    sub x1, x1, 5
    mov x6, x2
    add x5, x5, 5
    sub x2, x2, 7
    bl rectangulo
    add x9, x9, 1 			// sumo 1 al contador
    cmp x9, 3   			// comparo el contador con 3
    b.ne loop_base_1  		// si no es igual salto a loop_base_1
    sub x1, x1, 5
    mov x6, x2
    add x5, x5, 5
    sub x2, x2, 20
    bl rectangulo
    sub x1, x1, 5
    mov x6, x2
    add x5, x5, 5
    sub x2, x2, 70
    bl rectangulo
    add x1, x1, 5
    mov x6, x2
    sub x5, x5, 5
    sub x2, x2, 35
    bl rectangulo
    add x1, x1, 5
    mov x6, x2
    sub x5, x5, 5
    sub x2, x2, 20
    bl rectangulo
    add x1, x1, 5
    mov x6, x2
    sub x5, x5, 5
    sub x2, x2, 15
    bl rectangulo
    add x1, x1, 5
    mov x6, x2
    sub x5, x5, 5
    sub x2, x2, 10
    bl rectangulo
    mov x9, 0
loop_base_2:
    add x1, x1, 7
    mov x6, x2
    sub x5, x5, 7
    sub x2, x2, 7
    bl rectangulo
    add x9, x9, 1           // aumento contador
    cmp x9, 4               // comparo el contador con 4
    b.ne loop_base_2        // si no es igual, vuelvo a loop_base_2

 	ldur lr, [sp]
 	ldur x9, [sp, #8]
 	ldur x20, [sp, #16]
 	add sp, sp, #24 		// libero memoria

 	br lr

parte_sin_sombra:

    sub sp, sp, #24         // guardo memoria
    stur lr, [sp]
    stur x9, [sp, #8]
    stur x20, [sp, #16]

    movz x7, 0xFA, lsl 16   // color del cuerpo
    movk x7, 0xC90B, lsl 00

    mov x1, 475
    mov x2, 400
    mov x5, 520
    mov x6, 403
    bl rectangulo
    mov x9, 0               // contador
loop_sombra_1:
    sub x1, x1, 5
    mov x6, x2
    add x5, x5, 8
    sub x2, x2, 7
    bl rectangulo
    add x9, x9, 1           // sumo 1 al contador
    cmp x9, 3               // comparo el contador con 3
    b.ne loop_sombra_1      // si no es igual salto a loop_sombra_1
    mov x9, 0               // contador
loop_sombra_2:
    sub x1, x1, 5
    mov x6, x2
    add x5, x5, 5
    sub x2, x2, 10
    bl rectangulo
    add x9, x9, 1           // sumo 1 al contador
    cmp x9, 1               // comparo el contador con 1
    b.ne loop_sombra_2      // si no es igual salto a loop_sombra_2
    sub x1, x1, 5
    mov x6, x2
    sub x2, x2, 40
    bl rectangulo
    mov x9, 0               // contador
loop_sombra_3:
    mov x6, x2
    sub x5, x5, 3
    sub x2, x2, 10
    bl rectangulo
    add x9, x9, 1           // sumo 1 al contador
    cmp x9, 4               // comparo el contador con 4
    b.ne loop_sombra_3      // si no es igual, salto a loop_sombra_3
    add x1, x1, 5
    sub x5, x5, 5
    sub x2, x2, 15
    bl rectangulo
    mov x9, 0               // contador
loop_sombra_4:
    mov x6, x2
    sub x5, x5, 10
    sub x2, x2, 7
    bl rectangulo
    add x9, x9, 1           // sumo 1 al contador
    cmp x9, 3               // comparo el contador con 3
    b.ne loop_sombra_4      // si no es igual, salto a loop_sombra_4
    mov x9, 0
    add x1, x1, 5
loop_sombra_5:
    mov x6, x2
    sub x2, x2, 5
    sub x5, x5, 10
    bl rectangulo
    add x9, x9, 1           // sumo 1 al contador
    cmp x9, 2               // comparo el contador con 2
    b.ne loop_sombra_5      // si no es igual, salto a loop_sombra_5

    ldur lr, [sp]
    ldur x9, [sp, #8]
    ldur x20, [sp, #16]
    add sp, sp, #24         // libero memoria

    br lr

cara:

    sub sp, sp, #16         // guardo memoria
    stur lr, [sp]
    stur x20, [sp, #8]

    movz x7, 0x0000, lsl 16 // color de los ojos y nariz
    movk x7, 0x0000, lsl 00

    mov x1, 490             // ojos
    mov x2, 235
    add x5, x1, 13
    add x6, x2, 5
    bl rectangulo
    add x1, x1, 80
    add x5, x5, 80
    bl rectangulo

    mov x1, 527             // nariz
    mov x5, 548
    bl rectangulo
    mov x2, x6
    add x1, x1, 5
    sub x5, x5, 5
    add x6, x6, 4
    bl rectangulo

    ldur lr, [sp]
    ldur x20, [sp, #8]
    add sp, sp, #16         // libero memoria

    br lr

orejas:

    sub sp, sp, #16         // guardo memoria
    stur lr, [sp]
    stur x20, [sp, #8]

    movz x7, 0xB5, lsl 16   // color de orejas
    movk x7, 0x8605, lsl 00

    mov x1, 480
    mov x2, 235
    add x5, x1, 5
    add x6, x2, 5
    bl rectangulo
    sub x1, x1, 15
    mov x2, x6
    add x5, x1, 15
    add x6, x2, 5
    bl rectangulo
    sub x1, x1, 5
    mov x6, x2
    sub x2, x2, 7
    add x5, x1, 5
    bl rectangulo
    add x1, x1, 5
    mov x6, x2
    sub x2, x2, 10
    add x5, x1, 5
    bl rectangulo
    add x1, x1, 5
    mov x6, x2
    sub x2, x2, 5
    add x5, x1, 5
    bl rectangulo

    mov x5, 0
    mov x6, 0
    mov x1, 590
    mov x2, 235
    add x5, x1, 5
    add x6, x2, 5
    bl rectangulo
    add x1, x1, 5
    mov x2, x6
    add x5, x1, 15
    add x6, x2, 5
    bl rectangulo
    add x1, x1, 15
    mov x6, x2
    sub x2, x2, 7
    add x5, x1, 5
    bl rectangulo
    sub x1, x1, 5
    mov x6, x2
    sub x2, x2, 10
    add x5, x1, 5
    bl rectangulo
    sub x1, x1, 5
    mov x6, x2
    sub x2, x2, 5
    add x5, x1, 5
    bl rectangulo

    ldur lr, [sp]
    ldur x20, [sp, #8]
    add sp, sp, #16         // libero memoria

    br lr

mofletes:

    sub sp, sp, #24         // guardo memoria
    stur lr, [sp]
    stur x9, [sp, #8]
    stur x20, [sp, #16]

    movz x7, 0xB5, lsl 16   // color de mofletes
    movk x7, 0x8605, lsl 00

    mov x1, 518
    mov x2, 235
    mov x5, 525
    add x6, x2, 5
    bl rectangulo
    sub x1, x1, 5
    mov x2, x6
    add x5, x1, 5
    add x6, x2, 5
    bl rectangulo
    sub x1, x1, 5
    mov x2, x6
    add x5, x1, 5
    add x6, x2, 10
    bl rectangulo
    add x1, x1, 5
    mov x2, x6
    add x5, x1, 10
    add x6, x2, 5
    bl rectangulo
    mov x9, 0
loop_mofletes_1:
    mov x1, x5
    mov x6, x2
    sub x2, x6, 5
    add x5, x1, 5
    bl rectangulo
    add x9, x9, 1           // sumo 1 al contador
    cmp x9, 2               // comparo el contador con 2
    b.ne loop_mofletes_1    // si no es igual, salto a loop_mofletes_1
    mov x1, x5
    mov x2, x6
    add x5, x1, 10
    add x6, x2, 3
    bl rectangulo

    mov x1, 550
    mov x2, 235
    mov x5, 557
    add x6, x2, 5
    bl rectangulo
    mov x1, x5
    mov x2, x6
    add x5, x1, 5
    add x6, x2, 5
    bl rectangulo
    mov x1, x5
    mov x2, x6
    add x5, x1, 5
    add x6, x2, 10
    bl rectangulo
    sub x1, x1, 10
    mov x2, x6
    add x5, x1, 10
    add x6, x2, 5
    bl rectangulo
    mov x9, 0
loop_mofletes_2:
    sub x1, x1, 5
    mov x6, x2
    sub x2, x6, 5
    add x5, x1, 5
    bl rectangulo
    add x9, x9, 1           // sumo 1 al contador
    cmp x9, 2               // comparo el contador con 2
    b.ne loop_mofletes_2    // si no es igual, salto a lloop_mofletes_2

    ldur lr, [sp]
    ldur x9, [sp, #8]
    ldur x20, [sp, #16]
    add sp, sp, #24         // libero memoria

    br lr

detalles:

    sub sp, sp, #24         // guardo memoria
    stur lr, [sp]
    stur x9, [sp, #8]
    stur x20, [sp, #16]

    movz x7, 0xE6, lsl 16   // color de detalles
    movk x7, 0xB203, lsl 00

    mov x1, 475
    mov x2, 350
    add x5, x1, 5
    add x6, x2, 5
    bl rectangulo
    add x1, x1, 10
    add x2, x2, 20
    add x5, x1, 5
    add x6, x2, 5
    bl rectangulo
    add x1, x1, 15
    add x2, x2, 15
    add x5, x1, 5
    add x6, x2, 5
    bl rectangulo
    mov x1, 475
    mov x2, 300
    add x5, x1, 5
    add x6, x2, 30
    bl rectangulo

    movz x7, 0xB7, lsl 16   // color de detalles
    movk x7, 0x8801, lsl 00

    mov x1, 600
    mov x2, 290
    add x5, x1, 5
    add x6, x2, 5
    bl rectangulo
    sub x1, x5, 2
    add x5, x1, 5
    mov x2, x6
    add x6, x2, 5
    bl rectangulo
    sub x1, x1, 30
    add x2, x2, 50
    add x5, x1, 5
    add x6, x2, 5
    bl rectangulo

    ldur lr, [sp]
    ldur x9, [sp, #8]
    ldur x20, [sp, #16]
    add sp, sp, #24         // libero memoria

    br lr

pintar_jake:

	sub sp, sp, #16 	    // guardo memoria
	stur lr, [sp]
	stur x20, [sp, #8]

    bl pintar_base
    bl parte_sin_sombra
    bl cara
    bl orejas
    bl mofletes
    bl detalles

 	ldur lr, [sp]
 	ldur x20, [sp, #8]
 	add sp, sp, #16 		// libero memoria

 	br lr
