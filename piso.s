.extern funciones_basicas
.global piso
piso:
    sub sp, sp, #8
    stur x30, [sp]
    // (312,149) (321,235) 343729
	mov x1, 1
	mov x2, 378
	mov x5, 640
	mov x6, 480
	movz w7, 0x3729
	movk w7, 0x34, lsl #16 
	bl rectangulo
    // (384,1) (433,11) 73663a
	mov x1, 1
	mov x2, 378
	mov x5, 11
	mov x6, 433
	movz w7, 0x663a
	movk w7, 0x73, lsl #16 
	bl rectangulo
    // (11, 378) (70, 426) 73663a
	mov x1, 11
	mov x2, 378
	mov x5, 70
	mov x6, 426
	movz w7, 0x663a
	movk w7, 0x73, lsl #16 
	bl rectangulo
    // (18, 399) (24, 405) 4a462b
	mov x1, 18
	mov x2, 399
	mov x5, 24
	mov x6, 405
	movz w7, 0x462b
	movk w7, 0x4a, lsl #16 
	bl rectangulo
    // (70, 385) (77, 426) 73663a
	mov x1, 70
	mov x2, 385
	mov x5, 77
	mov x6, 426
	movz w7, 0x663a
	movk w7, 0x73, lsl #16 
	bl rectangulo
    // (77, 385) (124, 419) 73663a
	mov x1, 71
	mov x2, 385
	mov x5, 124
	mov x6, 419
	movz w7, 0x663a
	movk w7, 0x73, lsl #16 
	bl rectangulo

    ldr x30, [sp]
    add sp, sp, #8
    ret

