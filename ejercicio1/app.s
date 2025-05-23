.include "funciones_basicas.s"

main:

	mov x20, x0	// dirección base del framebuffer en x20 (por las dudas)

	/*  
		x0 contiene la dirección base del framebuffer
		x1 coordenada X inicio del dibujo
		x2 coordenada Y inicio del dibujo
		x5 cuántas líneas pintar en X
  	    x6 cuántas líneas pintar en Y
  	    x7 color
  	*/

// EJEMPLO:

	mov x1, 0
	mov x2, 0
	mov x5, SCREEN_WIDTH
	mov x6, SCREEN_HEIGHT

	movz x7, 0x0C, lsl 16
	movk x7, 0x6F15, lsl 00

	bl rectangulo

	mov x1, 20
	mov x2, 20
	mov x5, 100
	mov x6, 100

	movz x7, 0xFFFF, lsl 16
	movk x7, 0xFFFF, lsl 00

	bl rectangulo

	mov x1, 200
	mov x2, 150
	mov x5, 300
	mov x6, 300

	movz x7, 0x0C, lsl 16
	movk x7, 0xFBAF, lsl 00

	bl rectangulo

// FIN DE EJEMPLO

InfLoop:

	b InfLoop
