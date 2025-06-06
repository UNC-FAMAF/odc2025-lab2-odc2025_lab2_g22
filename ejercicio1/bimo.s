.extern funciones_basicas
.globl bimo
bimo:

    sub sp, sp, #8         // guardo memoria
    stur lr, [sp]
    // Framebuffer en x20 

 // ---------------------
    // DIBUJAR CUERPO DE BMO 
    // ---------------------
    mov x1, #265         // fila inicial //300 //modifico el anchoo
    mov x2, #367         // columna inicial //
    mov x5, #305       // fila final //380
    mov x6, #417         // columna final //modifico el largoooo
    movz x7, #0xD0C0         
    movk x7, #0xFF80, lsl #16 

    bl rectangulo

// ---------------------
// DIBUJAR PANTALLA
// ---------------------
mov x1, #270
mov x2, #372
mov x5, #300
mov x6, #392
movz x7, #0xE0E0              
 movk x7, #0xFFB0, lsl #16     
bl rectangulo

 // ---------------------

//sombra cuerpo
mov x1, #300
mov x2, #367
mov x5, #305
mov x6, #417
movz x7, #0xA8A8              
movk x7, #0xFF80, lsl #16   
 
bl rectangulo

//DIBUJAR PATITAS
//patita izquierda
mov x1, #275
mov x2, #418
mov x5, #278
mov x6, #425
movz x7, #0xD0C0         
movk x7, #0xFF80, lsl #16 
bl rectangulo

//patita derecha
mov x1, #292
mov x2, #418
mov x5, #295
mov x6, #425
movz x7, #0xD0C0         
movk x7, #0xFF80, lsl #16 
bl rectangulo

// DIBUJAR OJOS 
// ---------------------
//izquiwrdo
mov x1, #275      // fila inicial
mov x2, #377        // columna inicial
mov x5, #280
mov x6, #384
movz x7, #0x0000
movk x7, #0x0000, lsl #16
bl rectangulo

//derecho
mov x1, #290
mov x2, #377
mov x5, #295
mov x6, #384
movz x7, #0x0000
movk x7, #0x0000, lsl #16
bl rectangulo

//DIBUJAR BOCA
mov x1, #280
mov x2, #387
mov x5, #285
mov x6, #389
movz x7, #0x0000
movk x7, #0x0000, lsl #16
bl rectangulo


// ---------------------
// BOTÓN AMARILLO
// ---------------------
mov x1, #270 //fila inicial
mov x2, #397    // columna inicial
mov x5, #275     // fila final 
mov x6, #402    // columna final 
movz x7, #0xFF00
movk x7, #0xFFFF, lsl #16
bl rectangulo

// ---------------------
// BOTÓN VERDE
// ---------------------
mov x1, #280
mov x2, #397
mov x5, #285
mov x6, #402
movz x7, #0x00FF
movk x7, #0xFF00, lsl #16
bl rectangulo

// ---------------------
// BOTÓN ROJO
// ---------------------
mov x1, #290
mov x2, #397
mov x5, #295
mov x6, #402
movz x7, #0x0000
movk x7, #0xFFFF, lsl #16
bl rectangulo


//dibujar_cartel:

    // --- BASE del cartel (gris oscuro) ---
    mov x1, #97    // fila inicial
    mov x2, #227    // columna inicial
    mov x5, #106 //fila final
    mov x6, #229    // columna final
    movz x7, #0xAAAA    // gris claro base
    movk x7, #0xFFAA, lsl #16
    bl rectangulo

    // --- POSTE vertical (gris más claro) ---
    mov x1, #100
    mov x2, #230
    mov x5, #103
    mov x6, #417
    movz x7, #0xCCCC    // gris más claro
    movk x7, #0xFFDD, lsl #16
    bl rectangulo

    //circulo externo (azul)
    mov x1, #80
    mov x2, #170
    mov x5, #124
    mov x6, #230
    movz x7, #0x3250          // parte baja: 0x00003250
    movk x7, #0x0028, lsl #16 // parte media: 0x00283250

    bl rectangulo


//CARTEL INTERNO
    mov x1, #80
    mov x2, #190
    mov x5, #124
    mov x6, #210
    movz x7, #0xCCCC    // gris más claro
    movk x7, #0xFFDD, lsl #16
    bl rectangulo
    // Terminar (loop infinito para que no salga)

//DIBUJAR_ODC:

//DIBUJO D
//vertical izq
    mov x1, #89
    mov x2, #195
    mov x5, #91
    mov x6, #205
    movz x7, #0x0000
    movk x7, #0x0000, lsl #16

    bl rectangulo
//horizontal arriba
    mov x1, #91
    mov x2, #195
    mov x5, #95
    mov x6, #197
    movz x7, #0x0000
    movk x7, #0x0000, lsl #16

    bl rectangulo
//vertical der
    mov x1, #95
    mov x2, #195
    mov x5, #97
    mov x6, #205
    movz x7, #0x0000
    movk x7, #0x0000, lsl #16

    bl rectangulo
//horizontal abajo
    mov x1, #91
    mov x2, #203
    mov x5, #95
    mov x6, #205
    movz x7, #0x0000
    movk x7, #0x0000, lsl #16

    bl rectangulo

    //DIBUJO LA D
    //vertical izq
    mov x1, #99
    mov x2, #195
    mov x5, #101
    mov x6, #205
    movz x7, #0x0000
    movk x7, #0x0000, lsl #16

    bl rectangulo

    //horizontal arriba
    mov x1, #101
    mov x2, #195
    mov x5, #104
    mov x6, #197
    movz x7, #0x0000
    movk x7, #0x0000, lsl #16

    bl rectangulo

    //horizontal abajo
    mov x1, #101
    mov x2, #203
    mov x5, #104
    mov x6, #205
    movz x7, #0x0000
    movk x7, #0x0000, lsl #16

    bl rectangulo

    //pancita de la D
    mov x1, #104
    mov x2, #197
    mov x5, #106
    mov x6, #199
    movz x7, #0x0000
    movk x7, #0x0000, lsl #16

    bl rectangulo

    mov x1, #105
    mov x2, #199
    mov x5, #107
    mov x6, #201
    movz x7, #0x0000
    movk x7, #0x0000, lsl #16

    bl rectangulo

    mov x1, #103
    mov x2, #201
    mov x5, #105
    mov x6, #204
    movz x7, #0x0000
    movk x7, #0x0000, lsl #16

    bl rectangulo

    // DIBUJAR C
    //vertical izq
    mov x1, #109
    mov x2, #195
    mov x5, #111
    mov x6, #205
    movz x7, #0x0000
    movk x7, #0x0000, lsl #16

    bl rectangulo

    //HORIZONTAL ARRIBA
    mov x1, #111
    mov x2, #195
    mov x5, #114
    mov x6, #197
    movz x7, #0x0000
    movk x7, #0x0000, lsl #16

    bl rectangulo

    //HORIZONTAL abajo
    mov x1, #111
    mov x2, #203
    mov x5, #114
    mov x6, #205
    movz x7, #0x0000
    movk x7, #0x0000, lsl #16

    bl rectangulo

    //DIBUJO 2025
//DIBUJO 2
//HORIZONTAL ARRIBA
    mov x1, #88
    mov x2, #215
    mov x5, #93
    mov x6, #217
    movz x7, #0xCCCC    // gris más claro
    movk x7, #0xFFDD, lsl #16
    bl rectangulo

//HORIZONTAL ABAJO
    mov x1, #88
    mov x2, #223
    mov x5, #93
    mov x6, #225
    movz x7, #0xCCCC    // gris más claro
    movk x7, #0xFFDD, lsl #16
    bl rectangulo

//HORIZONTAL MEDIO
    mov x1, #88
    mov x2, #219
    mov x5, #93
    mov x6, #221
    movz x7, #0xCCCC    // gris más claro
    movk x7, #0xFFDD, lsl #16
    bl rectangulo

//VERTICAL DERECHO
    mov x1, #91
    mov x2, #217
    mov x5, #93
    mov x6, #219
    movz x7, #0xCCCC    // gris más claro
    movk x7, #0xFFDD, lsl #16
    bl rectangulo

//VERTICAL IZQUIERDO
    mov x1, #88
    mov x2, #221
    mov x5, #90
    mov x6, #223
    movz x7, #0xCCCC    // gris más claro
    movk x7, #0xFFDD, lsl #16
    bl rectangulo

//DIBUJO EL 0
//HORIZONTAL ARRIBA
    mov x1, #94
    mov x2, #215
    mov x5, #99
    mov x6, #217
    movz x7, #0xCCCC    // gris más claro
    movk x7, #0xFFDD, lsl #16
    bl rectangulo

//HORIZONTAL ABAJO
    mov x1, #94
    mov x2, #223
    mov x5, #99
    mov x6, #225
    movz x7, #0xCCCC    // gris más claro
    movk x7, #0xFFDD, lsl #16
    bl rectangulo

//VERTICAL IZQ
    mov x1, #94
    mov x2, #215
    mov x5, #96
    mov x6, #225
    movz x7, #0xCCCC    // gris más claro
    movk x7, #0xFFDD, lsl #16
    bl rectangulo

//VERTICAL DERECHO
    mov x1, #97
    mov x2, #215
    mov x5, #99
    mov x6, #225
    movz x7, #0xCCCC    // gris más claro
    movk x7, #0xFFDD, lsl #16
    bl rectangulo

//DIBUJO 2
//HORIZONTAL ARRIBA
    mov x1, #101
    mov x2, #215
    mov x5, #106
    mov x6, #217
    movz x7, #0xCCCC    // gris más claro
    movk x7, #0xFFDD, lsl #16
    bl rectangulo

//HORIZONTAL ABAJO
    mov x1, #101
    mov x2, #223
    mov x5, #106
    mov x6, #225
    movz x7, #0xCCCC    // gris más claro
    movk x7, #0xFFDD, lsl #16
    bl rectangulo

//HORIZONTAL MEDIO
    mov x1, #101
    mov x2, #219
    mov x5, #106
    mov x6, #221
    movz x7, #0xCCCC    // gris más claro
    movk x7, #0xFFDD, lsl #16
    bl rectangulo

//VERTICAL DERECHO
    mov x1, #104
    mov x2, #217
    mov x5, #106
    mov x6, #219
    movz x7, #0xCCCC    // gris más claro
    movk x7, #0xFFDD, lsl #16
    bl rectangulo

//VERTICAL IZQUIERDO
    mov x1, #101
    mov x2, #221
    mov x5, #103
    mov x6, #223
    movz x7, #0xCCCC    // gris más claro
    movk x7, #0xFFDD, lsl #16
    bl rectangulo

//DIBUJO EL 5
//HORIZONTAL ARRIBA
    mov x1, #108
    mov x2, #215
    mov x5, #114
    mov x6, #217
    movz x7, #0xCCCC    // gris más claro
    movk x7, #0xFFDD, lsl #16
    bl rectangulo

//HORIZONTAL ABAJO
    mov x1, #108
    mov x2, #223
    mov x5, #114
    mov x6, #225
    movz x7, #0xCCCC    // gris más claro
    movk x7, #0xFFDD, lsl #16
    bl rectangulo

//HORIZONTAL MEDIO
    mov x1, #108
    mov x2, #219
    mov x5, #114
    mov x6, #221
    movz x7, #0xCCCC    // gris más claro
    movk x7, #0xFFDD, lsl #16
    bl rectangulo

//VERTICAL DERECHO
    mov x1, #108
    mov x2, #217
    mov x5, #110
    mov x6, #219
    movz x7, #0xCCCC    // gris más claro
    movk x7, #0xFFDD, lsl #16
    bl rectangulo

//VERTICAL IZQUIERDO
    mov x1, #112
    mov x2, #221
    mov x5, #114
    mov x6, #223
    movz x7, #0xCCCC    // gris más claro
    movk x7, #0xFFDD, lsl #16
    bl rectangulo



    ldur lr, [sp]
        add sp, sp, #8         // libero memoria
        ret
