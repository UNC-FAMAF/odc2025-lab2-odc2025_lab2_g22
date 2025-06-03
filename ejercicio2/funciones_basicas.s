	.equ SCREEN_WIDTH, 		640
	.equ SCREEN_HEIGHT, 	480
	.equ BITS_PER_PIXEL,  	32

	.equ GPIO_BASE,      0x3f200000
	.equ GPIO_GPFSEL0,   0x00
	.equ GPIO_GPLEV0,    0x34

	.globl main
	.global rectangulo

pixel_x_y:

/*
	REGISTROS  x1, X
			   x2, Y
			   x9, devuelve dirección del pixel
*/

	sub sp, sp, #16 		// guardo memoria
	stur lr, [sp]
	stur x20, [sp, #8]

	mov x9, #SCREEN_WIDTH	// ancho de la pantalla
	mul x9, x2, x9	    	// y * 640
	add x9, x9, x1			// y * 640 + x
	lsl x9, x9, #2 			// (y * 640 + x) * 4
	add x9, x9, x20 		// DIRECCIÓN DEL PIXEL. framebuffer + (y * 640 + x) * 4

 	ldur lr, [sp]
 	ldur x20, [sp, #8]
 	add sp, sp, #16 		// libero memoria

 	br lr

rectangulo:

/*
	"PARÁMETROS"  x1, fila inicial
			   	  x2, columna inicial
			      x5, fila final
			      x6, columna final
			      x7, color
*/

	sub sp, sp, #48		// guardo memoria
	stur lr, [sp]		// lr para volver a main
	stur x9, [sp, #8]	// dirección inicial (pixel_x_y)
	stur x10, [sp, #16] // contador
	stur x11, [sp, #24] // contador
	stur x12, [sp, #32]
	stur x20, [sp, #40] 

	bl pixel_x_y

  	mov x20, x9			// guardo dirección inicial dibujo
  	mov x12, x20		// guardo inicio fila

	mov x11, x2    		// x11 = contador desde inicio columna
loop_y:
    mov x10, x1   		// x10 = contador desde inicio fila
loop_x:
 	stur w7, [x20]    	// pinto pixel
 	add x20, x20, 4    	// avanzo pixel
 	add x10, x10, 1    	// incremento contador X
 	cmp x10, x5			// comparo contador X con hasta dónde quiero que vaya
 	b.ne loop_x			// si no es igual, sigo en X
	add x12, x12, 2560	// salto de línea (ancho de la pantalla *4)
 	mov x20, x12  		// actualizo posición del framebuffer
 	add x11, x11, 1 	// incremento contador Y
 	cmp x11, x6			// comparo contador Y con hasta dónde quiero que vaya
 	b.ne loop_y			// si no es igual, pinto la fila

	ldur lr, [sp]
	ldur x9, [sp, #8]
	ldur x10, [sp, #16]
	ldur x11, [sp, #24]
	ldur x12, [sp, #32]
	ldur x20, [sp, #40]
	add sp, sp, #48		// libero memoria


 	br lr
 