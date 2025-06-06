.extern funciones_basicas

.globl finn



	mov x20, x0	// dirección base del framebuffer en x20 (por las dudas)

	/*  
            x0 contiene la dirección base del framebuffer
	    x1 coordenada X inicio del dibujo
	    x2 coordenada Y inicio del dibujo
	    x5 cuántas líneas pintar en X
  	    x6 cuántas líneas pintar en Y
  	    x7 color
  	*/

finn:
        sub sp, sp, #8         // guardo memoria
        stur lr, [sp]
//pierna1
	mov x1, 388
	mov x2, 377
	mov x5, 400
	mov x6, 425

	movz x7, 0x00FF, lsl 16
	movk x7, 0xEBCD, lsl 00

	bl rectangulo
	
//pierna2
	mov x1, 368
	mov x2, 377
	mov x5, 380
	mov x6, 425

	movz x7, 0x00FF, lsl 16
	movk x7, 0xEBCD, lsl 00

	bl rectangulo

//media pie1 
	mov x1, 368
	mov x2, 403
	mov x5, 380
	mov x6, 425

	movz x7, 0x00FF, lsl 16
	movk x7, 0xFFFF, lsl 00

	bl rectangulo   
	
//pie1	
	mov x1, 368
	mov x2, 410
	mov x5, 380
	mov x6, 425

	movz x7, 0x0000, lsl 16
	movk x7, 0x0000, lsl 00

	bl rectangulo
	
	mov x1, 358
	mov x2, 418
	mov x5, 370
	mov x6, 425

	movz x7, 0x0000, lsl 16
	movk x7, 0x0000, lsl 00

	bl rectangulo
	
//media pie2
	mov x1, 388
	mov x2, 403
	mov x5, 400
	mov x6, 425

	movz x7, 0x00FF, lsl 16
	movk x7, 0xFFFF, lsl 00

	bl rectangulo  
	
//pie2
	
	mov x1, 388
	mov x2, 410
	mov x5, 400
	mov x6, 425

	movz x7, 0x0000, lsl 16
	movk x7, 0x0000, lsl 00

	bl rectangulo

//pantalon
	mov x1, 368
	mov x2, 374
	mov x5, 400
	mov x6, 382

	movz x7, 0x0000, lsl 16
	movk x7, 0x00FF, lsl 00

	bl rectangulo
	
	mov x1, 368
	mov x2, 382
	mov x5, 380
	mov x6, 387

	movz x7, 0x0000, lsl 16
	movk x7, 0x00FF, lsl 00

	bl rectangulo
	
	mov x1, 388
	mov x2, 382
	mov x5, 400
	mov x6, 387

	movz x7, 0x0000, lsl 16
	movk x7, 0x00FF, lsl 00

	bl rectangulo
	
//brazo der
	mov x1, 400
	mov x2, 344
	mov x5, 408
	mov x6, 382

	movz x7, 0x00FF, lsl 16
	movk x7, 0xEBCD, lsl 00

	bl rectangulo
	
//brazo izq
	mov x1, 340
	mov x2, 357
	mov x5, 368
	mov x6, 365

	movz x7, 0x00FF, lsl 16
	movk x7, 0xEBCD, lsl 00

	bl rectangulo

//remera
	mov x1, 368
	mov x2, 344
	mov x5, 400
	mov x6, 374

	movz x7, 0x0000, lsl 16
	movk x7, 0x9999, lsl 00

	bl rectangulo
	
	mov x1, 400
	mov x2, 344
	mov x5, 408
	mov x6, 357

	movz x7, 0x0000, lsl 16
	movk x7, 0x9999, lsl 00

	bl rectangulo
	
	mov x1, 360 
	mov x2, 344 
	mov x5, 368
	mov x6, 357

	movz x7, 0x0000, lsl 16
	movk x7, 0x9999, lsl 00

	bl rectangulo
	
	mov x1, 360
	mov x2, 337
	mov x5, 398
	mov x6, 345

	movz x7, 0x0000, lsl 16
	movk x7, 0x9999, lsl 00

	bl rectangulo
	

//cabeza
	mov x1, 350
	mov x2, 287
	mov x5, 410
	mov x6, 329

	movz x7, 0x00FF, lsl 16
	movk x7, 0xEBCD, lsl 00
	
	bl rectangulo
	
	mov x1, 390
	mov x2, 309
	mov x5, 399
	mov x6, 319

	movz x7, 0x0000, lsl 16
	movk x7, 0x0000, lsl 00

	bl rectangulo
	
	mov x1, 362
	mov x2, 309
	mov x5, 371
	mov x6, 319

	movz x7, 0x0000, lsl 16
	movk x7, 0x0000, lsl 00

	bl rectangulo
	
//gorro
	mov x1, 353 
	mov x2, 329
	mov x5, 417 
	mov x6, 337

	movz x7, 0x00FF, lsl 16
	movk x7, 0xFFFF, lsl 00

	bl rectangulo
	
	mov x1, 343
	mov x2, 287
	mov x5, 353
	mov x6, 329

	movz x7, 0x00FF, lsl 16
	movk x7, 0xFFFF, lsl 00

	bl rectangulo
	
	mov x1, 343
	mov x2, 287
	mov x5, 363
	mov x6, 297

	movz x7, 0x00FF, lsl 16
	movk x7, 0xFFFF, lsl 00

	bl rectangulo
	
	mov x1, 353
	mov x2, 277
	mov x5, 363
	mov x6, 295

	movz x7, 0x00FF, lsl 16
	movk x7, 0xFFFF, lsl 00

	bl rectangulo
	
	//cuernito del gorro
	mov x1, 363
	mov x2, 267
	mov x5, 373
	mov x6, 287

	movz x7, 0x00FF, lsl 16
	movk x7, 0xFFFF, lsl 00

	bl rectangulo   
	
	//cuernito del gorro
	mov x1, 403
	mov x2, 267
	mov x5, 413
	mov x6, 287

	movz x7, 0x00E0, lsl 16
	movk x7, 0xE0E0, lsl 00

	bl rectangulo   
	
	mov x1, 353
	mov x2, 277
	mov x5, 418
	mov x6, 287

	movz x7, 0x00E0, lsl 16
	movk x7, 0xE0E0, lsl 00

	bl rectangulo                ///sombreado
	
	mov x1, 353
	mov x2, 277
	mov x5, 383
	mov x6, 287

	movz x7, 0x00FF, lsl 16
	movk x7, 0xFFFF, lsl 00

	bl rectangulo
	
	mov x1, 393
	mov x2, 287
	mov x5, 417
	mov x6, 297

	movz x7, 0x00E0, lsl 16
	movk x7, 0xE0E0, lsl 00
	
	bl rectangulo
	
	mov x1, 408
	mov x2, 295
	mov x5, 417
	mov x6, 329

	movz x7, 0x00E0, lsl 16
	movk x7, 0xE0E0, lsl 00

	bl rectangulo
	
	mov x1, 417
	mov x2, 285
	mov x5, 425
	mov x6, 329

	movz x7, 0x00E0, lsl 16
	movk x7, 0xE0E0, lsl 00

	bl rectangulo
	
	mov x1, 403 
	mov x2, 329
	mov x5, 417 
	mov x6, 337

	movz x7, 0x00E0, lsl 16
	movk x7, 0xE0E0, lsl 00

	bl rectangulo
	
//mochila

        //tira del brazo derecho
	mov x1, 392
	mov x2, 355
	mov x5, 400
	mov x6, 365

	movz x7, 0x0000, lsl 16
	movk x7, 0x6600, lsl 00

	bl rectangulo
	
	mov x1, 392
	mov x2, 344
	mov x5, 400
	mov x6, 357

	movz x7, 0x004C, lsl 16
	movk x7, 0x9900, lsl 00

	bl rectangulo
	
	
	mov x1, 392
	mov x2, 336
	mov x5, 400
	mov x6, 344

	movz x7, 0x0066, lsl 16
	movk x7, 0xCC00, lsl 00

	bl rectangulo
	
	mov x1, 400
	mov x2, 336
	mov x5, 408
	mov x6, 344

	movz x7, 0x004C, lsl 16
	movk x7, 0x9900, lsl 00

	bl rectangulo  
	
	//tira del brazo izquierdo
	mov x1, 368
	mov x2, 355
	mov x5, 376
	mov x6, 365

	movz x7, 0x0000, lsl 16
	movk x7, 0x6600, lsl 00

	bl rectangulo
	
	mov x1, 368
	mov x2, 344
	mov x5, 376
	mov x6, 357

	movz x7, 0x004C, lsl 16
	movk x7, 0x9900, lsl 00

	bl rectangulo
	
	mov x1, 368
	mov x2, 336
	mov x5, 376
	mov x6, 344

	movz x7, 0x004C, lsl 16
	movk x7, 0x9900, lsl 00

	bl rectangulo
	
	//parte de atras de la mochila
	mov x1, 408
	mov x2, 336
	mov x5, 417
	mov x6, 380

	movz x7, 0x004C, lsl 16
	movk x7, 0x9900, lsl 00

	bl rectangulo
	
	mov x1, 408
	mov x2, 356
	mov x5, 417
	mov x6, 380

	movz x7, 0x0000, lsl 16
	movk x7, 0x6600, lsl 00

	bl rectangulo
	
	mov x1, 416
	mov x2, 339
	mov x5, 424
	mov x6, 374

	movz x7, 0x004C, lsl 16
	movk x7, 0x9900, lsl 00

	bl rectangulo
	
	mov x1, 416
	mov x2, 356
	mov x5, 424
	mov x6, 374

	movz x7, 0x0000, lsl 16
	movk x7, 0x6600, lsl 00

	bl rectangulo
	
//paraguas

        //paraguas palo 
	mov x1, 333 
	mov x2, 267
	mov x5, 340 
	mov x6, 365

	movz x7, 0x008B, lsl 16
	movk x7, 0x4513, lsl 00

	bl rectangulo  
	
	//paraguas raya1
	mov x1, 253 
	mov x2, 261
	mov x5, 423 
	mov x6, 269

	movz x7, 0x008B, lsl 16
	movk x7, 0x0000, lsl 00

	bl rectangulo  
        
        //paraguas raya2
	mov x1, 263 
	mov x2, 253
	mov x5, 413 
	mov x6, 261

	movz x7, 0x00B2, lsl 16
	movk x7, 0x2222, lsl 00

	bl rectangulo 

        
	mov x1, 263 
	mov x2, 253
	mov x5, 273
	mov x6, 261

	movz x7, 0x008B, lsl 16
	movk x7, 0x0000, lsl 00

	bl rectangulo
	
	mov x1, 403 
	mov x2, 253
	mov x5, 413
	mov x6, 261

	movz x7, 0x008B, lsl 16
	movk x7, 0x0000, lsl 00

	bl rectangulo
	
        //paraguas raya3
	mov x1, 273 
	mov x2, 245
	mov x5, 403 
	mov x6, 253

	movz x7, 0x00B2, lsl 16
	movk x7, 0x2222, lsl 00

	bl rectangulo  
	
        
	mov x1, 393 
	mov x2, 245
	mov x5, 403
	mov x6, 253

	movz x7, 0x008B, lsl 16
	movk x7, 0x0000, lsl 00

	bl rectangulo
	
	mov x1, 273 
	mov x2, 245
	mov x5, 283
	mov x6, 253

	movz x7, 0x008B, lsl 16
	movk x7, 0x0000, lsl 00

	bl rectangulo
	
	//paraguas raya4
	mov x1, 283 
	mov x2, 235
	mov x5, 393 
	mov x6, 245

	movz x7, 0x00B2, lsl 16
	movk x7, 0x2222, lsl 00
	
	bl rectangulo  
	
	mov x1, 283 
	mov x2, 235
	mov x5, 303
	mov x6, 243

	movz x7, 0x008B, lsl 16
	movk x7, 0x0000, lsl 00

	bl rectangulo
	
	mov x1, 373 
	mov x2, 235
	mov x5, 393
	mov x6, 243

	movz x7, 0x008B, lsl 16
	movk x7, 0x0000, lsl 00

	bl rectangulo
	
	//paraguas raya5
	mov x1, 303 
	mov x2, 225
	mov x5, 373 
	mov x6, 235

	movz x7, 0x008B, lsl 16
	movk x7, 0x0000, lsl 00

	bl rectangulo  
	
	//paraguas raya6
	mov x1, 333 
	mov x2, 215
	mov x5, 343 
	mov x6, 225

	movz x7, 0x008B, lsl 16
	movk x7, 0x0000, lsl 00

	bl rectangulo 
	
	//manija
	mov x1, 333
	mov x2, 365
	mov x5, 340 
	mov x6, 375

	movz x7, 0x0080, lsl 16
	movk x7, 0x0000, lsl 00

	bl rectangulo
	
	mov x1, 316
	mov x2, 365
	mov x5, 324 
	mov x6, 375

	movz x7, 0x0080, lsl 16
	movk x7, 0x0000, lsl 00

	bl rectangulo
	
	mov x1, 324
	mov x2, 375
	mov x5, 333 
	mov x6, 385

	movz x7, 0x0080, lsl 16
	movk x7, 0x0000, lsl 00

	bl rectangulo
	
        ldur lr, [sp]
        add sp, sp, #8         // libero memoria
        ret
