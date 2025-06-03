	.equ SCREEN_WIDTH, 		640
	.equ SCREEN_HEIGH, 		480
	.equ BITS_PER_PIXEL,  	32
	.extern fondo
	.extern figuras_basicas
	.globl main

main:
	//Informacion para modificar las gotas
	/*
	En la linea ~125 aparece cómo modificar el ancho y largo de las gotas
	y en la línea ~139 el color
	*/
	// x0 contiene la direccion base del framebuffer
 	mov x20, x0	// Guarda la dirección base del framebuffer en x20
	//---------------- CODE HERE ------------------------------------
	bl fondo
	//---------INICIALIZACION POSICIONES DE LAS GOTAS----------
		sub sp, sp, 160
		//---------GUARDAR EN STACK GOTA 1-----------
		mov x9, 50
		stur x9, [sp]
		mov x9, 3
		stur x9, [sp, #8]
		
		//---------GUARDAR EN STACK GOTA 2-----------
		mov x9, 150
		stur x9, [sp, #16]
		mov x9, 260
		stur x9, [sp, #24]
		//---------GUARDAR EN STACK GOTA 3-----------
		mov x9, 250
		stur x9, [sp, #32]
		mov x9, 50
		stur x9, [sp, #40]
		//---------GUARDAR EN STACK GOTA 9-----------
		mov x9, 300
		stur x9, [sp, #128]
		mov x9, 300
		stur x9, [sp, #136]
		//---------GUARDAR EN STACK GOTA 10-----------
		mov x9, 190
		stur x9, [sp, #144]
		mov x9, 60
		stur x9, [sp, #152]
		//---------GUARDAR EN STACK GOTA 4-----------
		mov x9, 350
		stur x9, [sp, #48]
		mov x9, 390
		stur x9, [sp, #56]
		//---------GUARDAR EN STACK GOTA 5-----------
		mov x9, 450
		stur x9, [sp, #64]
		mov x9, 20
		stur x9, [sp, #72]
		//------------------------------------------
		//---------GUARDAR EN STACK GOTA 6-----------
		mov x9, 550
		stur x9, [sp, #80]
		mov x9, 300
		stur x9, [sp, #88]
		//------------------------------------------
		//---------GUARDAR EN STACK GOTA 7-----------
		mov x9, 600
		stur x9, [sp, #96]
		mov x9, 40
		stur x9, [sp, #104]
		//---------GUARDAR EN STACK GOTA 8-----------
		mov x9, 90
		stur x9, [sp, #112]
		mov x9, 380
		stur x9, [sp, #120]
		

	b reloj_universal

//x21 -----> reloj_universal
reloj_universal:
	mov x21, #0
	loop_reloj_universal:
		//-------Animaciones-----
		bl animacion_lluvia
		//-----------------------
		//----------PERDEMOS TIEMPO-------------------
		delay:
			movz x9, #0x0000
			movk x9, #0x00A0, lsl #16
			delay_loop:
				sub x9, x9, #1
				cmp x9, #0
				b.gt delay_loop  //salto si el resultado no es cero
		//--------------------------------------------
		//------ACTUALIZAMOS EL RELOJ--------------
		add x21, x21, #1
		b loop_reloj_universal		 
		//-----------------------------------------



//x16 ----> reloj_animacion_gota
//x28 ----> program counter de repuesto
animacion_lluvia:
	//--------------------------------------------
	mov x28, x30
	mov x16, #1
	//------CALCULAR MODULO X21 % X16-----------------
	udiv x9, x21, x16 //x9 = x21 / 3
	mul x9, x9, x16  //x9 = (x21 / 3)*3
	sub x9, x21, x9 //x9 = x21 - (x21 / 3)*3

	//-----------¿ES MULTIPLO?----------------------
	cmp x9, #0
	b.ne final_animacion
	//--------------DIBUJA RECTANGULO-------------------------
	//---> Dibujar Fondo
	bl fondo
	//---> Mover más abajo la gota1
	ldr x1, [sp]
	ldr x9, [sp, #8]
	add x9, x9, #10
	stur x9, [sp, #8]
	mov x2, x9
	add x5, x1, #4
	add x6, x2, #32 
	//acá se modifica el largo de la gota, para modificar el ancho de todas
	//hay que subrayar "add x6, x2, #32" apretar ctrl+h, y modificar el valor de #32
	//Lo mismo para add x5, x1, #4, que modifica el ancho de la gota
	//---> LLegó al final?
	mov x9, SCREEN_HEIGH
	cmp x2, x9
	b.le dibujar_gota_1
	//--->Inicializar gota
	mov x10, #8
	bl inicializar_gota 
	//---> Dibujar gota
	dibujar_gota_1: //#346ed1
	movz w7, #0x595c, lsl #0
	movk w7, #0x0055, lsl #16 
	//acá se modfica el color de las gotas para camiarlo hacer lo mismo que
	//se expresa en la linea 120 pero con movz w7, #0x595c, lsl #0 y 
	//movk w7, #0x0055, lsl #16 
	bl rectangulo
	//---------------------gota2------------------ //#9fb0bd
	//---> Mover más abajo la gota1
	ldr x1, [sp, #16]
	ldr x9, [sp, #24]
	add x9, x9, #10
	stur x9, [sp, #24]
	mov x2, x9
	add x5, x1, #4
	add x6, x2, #32
	//---> LLegó al final?
	mov x9, SCREEN_HEIGH
	cmp x2, x9
	b.le dibujar_gota_2
	//--->Inicializar gota
	mov x10, #24
	bl inicializar_gota 
	//---> Dibujar gota
	dibujar_gota_2:
	movz w7, #0x595c, lsl #0
	movk w7, #0x0055, lsl #16  
	bl rectangulo
	//--------------------------------------------
	//---------------------gota3------------------
	//---> Mover más abajo la gota1
	ldr x1, [sp, #32]
	ldr x9, [sp, #40]
	add x9, x9, #10
	stur x9, [sp, #40]
	mov x2, x9
	add x5, x1, #4
	add x6, x2, #32
	//---> LLegó al final?
	mov x9, SCREEN_HEIGH
	cmp x2, x9
	b.le dibujar_gota_3
	//--->Inicializar gota
	mov x10, #40
	bl inicializar_gota 
	//---> Dibujar gota
	dibujar_gota_3:
	movz w7, #0x595c, lsl #0
	movk w7, #0x0055, lsl #16 
	bl rectangulo
	//--------------------------------------------
	//---------------------gota4------------------
	//---> Mover más abajo la gota1
	ldr x1, [sp, #48]
	ldr x9, [sp, #56]
	add x9, x9, #10
	stur x9, [sp, #56]
	mov x2, x9
	add x5, x1, #4
	add x6, x2, #32
	//---> LLegó al final?
	mov x9, SCREEN_HEIGH
	cmp x2, x9
	b.le dibujar_gota_4
	//--->Inicializar gota
	mov x10, #56
	bl inicializar_gota 
	//---> Dibujar gota
	dibujar_gota_4:
	movz w7, #0x595c, lsl #0
	movk w7, #0x0055, lsl #16 
	bl rectangulo
	//--------------------------------------------
	//---------------------gota5------------------
	//---> Mover más abajo la gota1
	ldr x1, [sp, #64]
	ldr x9, [sp, #72]
	add x9, x9, #10
	stur x9, [sp, #72]
	mov x2, x9
	add x5, x1, #4
	add x6, x2, #32
	//---> LLegó al final?
	mov x9, SCREEN_HEIGH
	cmp x2, x9
	b.le dibujar_gota_5
	//--->Inicializar gota
	mov x10, #72
	bl inicializar_gota 
	//---> Dibujar gota
	dibujar_gota_5:
	movz w7, #0x595c, lsl #0
	movk w7, #0x0055, lsl #16 
	bl rectangulo
	//--------------------------------------------
	//---------------------gota6------------------
	//---> Mover más abajo la gota1
	ldr x1, [sp, #80]
	ldr x9, [sp, #88]
	add x9, x9, #10
	stur x9, [sp, #88]
	mov x2, x9
	add x5, x1, #4
	add x6, x2, #32
	//---> LLegó al final?
	mov x9, SCREEN_HEIGH
	cmp x2, x9
	b.le dibujar_gota_6
	//--->Inicializar gota
	mov x10, #88
	bl inicializar_gota 
	//---> Dibujar gota
	dibujar_gota_6:
	movz w7, #0x595c, lsl #0
	movk w7, #0x0055, lsl #16  
	bl rectangulo
	//--------------------------------------------
	//---------------------gota7------------------
	//---> Mover más abajo la gota1
	ldr x1, [sp, #96]
	ldr x9, [sp, #104]
	add x9, x9, #10
	stur x9, [sp, #104]
	mov x2, x9
	add x5, x1, #4
	add x6, x2, #32
	//---> LLegó al final?
	mov x9, SCREEN_HEIGH
	cmp x2, x9
	b.le dibujar_gota_7
	//--->Inicializar gota
	mov x10, #104
	bl inicializar_gota 
	//---> Dibujar gota
	dibujar_gota_7:
	movz w7, #0x595c, lsl #0
	movk w7, #0x0055, lsl #16 
	bl rectangulo
	//--------------------------------------------
	//---------------------gota8------------------
	//---> Mover más abajo la gota1
	ldr x1, [sp, #112]
	ldr x9, [sp, #120]
	add x9, x9, #10
	stur x9, [sp, #120]
	mov x2, x9
	add x5, x1, #4
	add x6, x2, #32
	//---> LLegó al final?
	mov x9, SCREEN_HEIGH
	cmp x2, x9
	b.le dibujar_gota_8
	//--->Inicializar gota
	mov x10, #120
	bl inicializar_gota 
	//---> Dibujar gota
	dibujar_gota_8:
	movz w7, #0x595c, lsl #0
	movk w7, #0x0055, lsl #16 
	bl rectangulo
	//--------------------------------------------
	//---------------------gota9------------------
	//---> Mover más abajo la gota1
	ldr x1, [sp, #128]
	ldr x9, [sp, #136]
	add x9, x9, #10
	stur x9, [sp, #136]
	mov x2, x9
	add x5, x1, #4
	add x6, x2, #32
	//---> LLegó al final?
	mov x9, SCREEN_HEIGH
	cmp x2, x9
	b.le dibujar_gota_9
	//--->Inicializar gota
	mov x10, #136
	bl inicializar_gota 
	//---> Dibujar gota
	dibujar_gota_9:
	movz w7, #0x595c, lsl #0
	movk w7, #0x0055, lsl #16 
	bl rectangulo
	//--------------------------------------------
	//---------------------gota10------------------
	//---> Mover más abajo la gota1
	ldr x1, [sp, #144]
	ldr x9, [sp, #152]
	add x9, x9, #10
	stur x9, [sp, #152]
	mov x2, x9
	add x5, x1, #4
	add x6, x2, #32
	//---> LLegó al final?
	mov x9, SCREEN_HEIGH
	cmp x2, x9
	b.le dibujar_gota_10
	//--->Inicializar gota
	mov x10, #152
	bl inicializar_gota 
	//---> Dibujar gota
	dibujar_gota_10:
	movz w7, #0x595c, lsl #0
	movk w7, #0x0055, lsl #16 
	bl rectangulo
	//--------------------------------------------
	//---> Salir
	b final_animacion
	//-------------------------------------------
	inicializar_gota:
		add sp, sp, x10
		mov x9, #1
		stur x9, [sp]
		mov x2, x9
		add x6, x2, #32
		sub sp, sp, x10
		ret
	
	final_animacion:
		br x28


InfLoop:
	b InfLoop

