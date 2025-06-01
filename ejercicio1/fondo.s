.extern funciones_basicas

.global fondo
.global rectangulo_duplicado

rectangulo_duplicado:
//-----------------------GUARDAR DATOS-----------------------
	sub sp, sp, #24
	stur x28, [sp]
	stur x10, [sp, #8]
	stur x9, [sp, #16]
//----------------------------------------------------------
//-----------------------GUARDAR DIRECCION DE RETORNO-----------------------
	mov x28, x30
//-------------------------------------------------------------------------
//-----------------------IMPLEMENTACION RECTANGULO DOBLE----------------
	bl rectangulo 
	mov x10, 641
	mov x9, x1
	sub x1, x10, x5
	sub x5, x10, x9
	bl rectangulo
	mov x30, x28
	//-----------------------CARGAR DATOS-----------------------
	ldr x28, [sp]
	ldr x10, [sp, #8]
	ldr x9, [sp, #16]
	add sp, sp, #24
//----------------------------------------------------------
	ret


fondo:
	sub sp,sp, #8
	stur x28, [sp]
	mov x28, x30
// 263121
	mov x1, 1
	mov x2, 371
	mov x5, 10
	mov x6, 384
	movz w7, 0x3121
	movk w7, 0x26, lsl #16 
	bl rectangulo_duplicado
	

// (1,363) (10,370) 334329
	mov x1, 1
	mov x2, 363
	mov x5, 10
	mov x6, 371
	movz w7, 0x4329
	movk w7, 0x33, lsl #16 
	bl rectangulo_duplicado

// (1,350) (10,363) 364332
	mov x1, 1
	mov x2, 350
	mov x5, 10
	mov x6, 363
	movz w7, 0x4329
	movk w7, 0x36, lsl #16 
	bl rectangulo_duplicado

// (1,343) (10,360) 3e5135
	mov x1, 1
	mov x2, 343
	mov x5, 10
	mov x6, 360
	movz w7, 0x5135
	movk w7, 0x3e, lsl #16 
	bl rectangulo_duplicado

// (1,309) (10,343) 3a4b30
	mov x1, 1
	mov x2, 309
	mov x5, 10
	mov x6, 343
	movz w7, 0x4b30
	movk w7, 0x3a, lsl #16 
	bl rectangulo_duplicado

// (1,259) (10,309) 262f21
	mov x1, 1
	mov x2, 259
	mov x5, 10
	mov x6, 309
	movz w7, 0x2f21
	movk w7, 0x26, lsl #16 
	bl rectangulo_duplicado

// (1,158) (10,259) 182018
	mov x1, 1
	mov x2, 158
	mov x5, 10
	mov x6, 259
	movz w7, 0x2018
	movk w7, 0x18, lsl #16 
	bl rectangulo_duplicado

// (1,148) (10,158) 212c1f
	mov x1, 1
	mov x2, 148
	mov x5, 10
	mov x6, 158
	movz w7, 0x2c1f
	movk w7, 0x21, lsl #16 
	bl rectangulo_duplicado
// (1,138) (10,148) 1b2119
	mov x1, 1
	mov x2, 138
	mov x5, 10
	mov x6, 148
	movz w7, 0x2119
	movk w7, 0x1b, lsl #16 
	bl rectangulo_duplicado
// (1,117) (10,138) 1f281d
	mov x1, 1
	mov x2, 117
	mov x5, 10
	mov x6, 138
	movz w7, 0x281d
	movk w7, 0x1f, lsl #16 
	bl rectangulo_duplicado
// (1,108) (10,116) 1c2418
	mov x1, 1
	mov x2, 108
	mov x5, 10
	mov x6, 117
	movz w7, 0x2418
	movk w7, 0x1c, lsl #16 
	bl rectangulo_duplicado
// (1,1) (10,108) 182018
	mov x1, 1
	mov x2, 1
	mov x5, 10
	mov x6, 108
	movz w7, 0x2018
	movk w7, 0x18, lsl #16 
	bl rectangulo_duplicado
// (11,143) (17,384) 425538
	mov x1, 10
	mov x2, 342
	mov x5, 17
	mov x6, 384
	movz w7, 0x5538
	movk w7, 0x42, lsl #16 
	bl rectangulo_duplicado

// (10,336) (17,343) 3a4b30
	mov x1, 10
	mov x2, 336
	mov x5, 17
	mov x6, 343
	movz w7, 0x4b30
	movk w7, 0x3a, lsl #16 
	bl rectangulo_duplicado
// (10,322) (17,335) 283424
	mov x1, 10
	mov x2, 322
	mov x5, 17
	mov x6, 336
	movz w7, 0x3424
	movk w7, 0x28, lsl #16 
	bl rectangulo_duplicado
// (10,295) (17,322) 283424
	mov x1, 10
	mov x2, 295
	mov x5, 17
	mov x6, 323
	movz w7, 0x3424
	movk w7, 0x28, lsl #16 
	bl rectangulo_duplicado

// (10,272) (17,295) 252d23
	mov x1, 10
	mov x2, 272
	mov x5, 17
	mov x6, 295
	movz w7, 0x2d23
	movk w7, 0x25, lsl #16 
	bl rectangulo_duplicado

// (10,254) (17,272) 212c1f
	mov x1, 10
	mov x2, 254
	mov x5, 17
	mov x6, 272
	movz w7, 0x2c1f
	movk w7, 0x21, lsl #16 
	bl rectangulo_duplicado
// (10,226) (17,254) 192018
	mov x1, 10
	mov x2, 226
	mov x5, 17
	mov x6, 254
	movz w7, 0x2018
	movk w7, 0x19, lsl #16 
	bl rectangulo_duplicado
// (10,219) (17,226) 202b1c
	mov x1, 10
	mov x2, 219
	mov x5, 17
	mov x6, 226
	movz w7, 0x2b1c
	movk w7, 0x20, lsl #16 
	bl rectangulo_duplicado

// (10,192) (17,219) 182018
	mov x1, 10
	mov x2, 192
	mov x5, 17
	mov x6, 219
	movz w7, 0x2018
	movk w7, 0x18, lsl #16 
	bl rectangulo_duplicado
// (10,182) (17,192) 1d251b
	mov x1, 10
	mov x2, 182
	mov x5, 17
	mov x6, 192
	movz w7, 0x251b
	movk w7, 0x1d, lsl #16 
	bl rectangulo_duplicado

// (10,164) (17,182) 1c231b
	mov x1, 10
	mov x2, 164
	mov x5, 17
	mov x6, 182
	movz w7, 0x231b
	movk w7, 0x1c, lsl #16 
	bl rectangulo_duplicado

// (10,149) (17,164) 1f2719
	mov x1, 10
	mov x2, 149
	mov x5, 17
	mov x6, 164
	movz w7, 0x2719
	movk w7, 0x1f, lsl #16 
	bl rectangulo_duplicado
// (10,135) (17,149) 182018
	mov x1, 10
	mov x2, 135
	mov x5, 17
	mov x6, 149
	movz w7, 0x2018
	movk w7, 0x18, lsl #16 
	bl rectangulo_duplicado
// (10,108) (17,135) 20281d
	mov x1, 10
	mov x2, 108
	mov x5, 17
	mov x6, 135
	movz w7, 0x281d
	movk w7, 0x20, lsl #16 
	bl rectangulo_duplicado
// (10,67) (17,108) 192018
	mov x1, 10
	mov x2, 67
	mov x5, 17
	mov x6, 108
	movz w7, 0x2018
	movk w7, 0x19, lsl #16 
	bl rectangulo_duplicado
// (10,11) (17,67) 1b2119
	mov x1, 10
	mov x2, 11
	mov x5, 17
	mov x6, 67
	movz w7, 0x2119
	movk w7, 0x1b, lsl #16 
	bl rectangulo_duplicado
// (10,1) (17,11) 151c14
	mov x1, 10
	mov x2, 1
	mov x5, 17
	mov x6, 11
	movz w7, 0x1c14
	movk w7, 0x15, lsl #16 
	bl rectangulo_duplicado
// (17,343) (24,384) 2b3725
	mov x1, 17
	mov x2, 343
	mov x5, 24
	mov x6, 384
	movz w7, 0x3725
	movk w7, 0x2b, lsl #16 
	bl rectangulo_duplicado
// (17,323) (24,343) 475c3d
	mov x1, 17
	mov x2, 323
	mov x5, 24
	mov x6, 343
	movz w7, 0x5c3d
	movk w7, 0x47, lsl #16 
	bl rectangulo_duplicado
// (18,295) (24,323) 344030
	mov x1, 17
	mov x2, 295
	mov x5, 24
	mov x6, 323
	movz w7, 0x4030
	movk w7, 0x34, lsl #16 
	bl rectangulo_duplicado
// (18,272) (24,295) 252d23
	mov x1, 17
	mov x2, 272
	mov x5, 24
	mov x6, 295
	movz w7, 0x2d23
	movk w7, 0x25, lsl #16 
	bl rectangulo_duplicado
// (18,254) (24,272) 212c1f
	mov x1, 17
	mov x2, 254
	mov x5, 24
	mov x6, 272
	movz w7, 0x2c1f
	movk w7, 0x21, lsl #16 
	bl rectangulo_duplicado
// (18,226) (24,254) 1b2119
	mov x1, 17
	mov x2, 226
	mov x5, 24
	mov x6, 254
	movz w7, 0x2119
	movk w7, 0x1b, lsl #16 
	bl rectangulo_duplicado
// (18,211) (24,226) 20281c
	mov x1, 17
	mov x2, 211
	mov x5, 24
	mov x6, 226
	movz w7, 0x281c
	movk w7, 0x20, lsl #16 
	bl rectangulo_duplicado
// (18,184) (24,211) 192018
	mov x1, 17
	mov x2, 184
	mov x5, 24
	mov x6, 211
	movz w7, 0x2018
	movk w7, 0x19, lsl #16 
	bl rectangulo_duplicado
// (18,177) (24,184) 20281d
	mov x1, 17
	mov x2, 177
	mov x5, 24
	mov x6, 184
	movz w7, 0x281d
	movk w7, 0x20, lsl #16 
	bl rectangulo_duplicado
// (18,150) (24,177) 182018
	mov x1, 17
	mov x2, 150
	mov x5, 24
	mov x6, 177
	movz w7, 0x2018
	movk w7, 0x18, lsl #16 
	bl rectangulo_duplicado
// (18,108) (24,150) 1b2318
	mov x1, 17
	mov x2, 108
	mov x5, 24
	mov x6, 150
	movz w7, 0x2318
	movk w7, 0x1b, lsl #16 
	bl rectangulo_duplicado
// (18,89) (24,108) 192018
	mov x1, 17
	mov x2, 89
	mov x5, 24
	mov x6, 108
	movz w7, 0x2018
	movk w7, 0x19, lsl #16 
	bl rectangulo_duplicado
// (18,67) (24,89) 181d17
	mov x1, 17
	mov x2, 67
	mov x5, 24
	mov x6, 89
	movz w7, 0x1d17
	movk w7, 0x18, lsl #16 
	bl rectangulo_duplicado
// (18,40) (24,67) 1b2119
	mov x1, 17
	mov x2, 40
	mov x5, 24
	mov x6, 67
	movz w7, 0x2119
	movk w7, 0x1b, lsl #16 
	bl rectangulo_duplicado
// (18,1) (24,40) 181d17
	mov x1, 17
	mov x2, 1
	mov x5, 24
	mov x6, 40
	movz w7, 0x1d17
	movk w7, 0x18, lsl #16 
	bl rectangulo_duplicado
// (24, 364) (31,384) 2a3527
	mov x1, 24
	mov x2, 364
	mov x5, 31
	mov x6, 384
	movz w7, 0x3527
	movk w7, 0x2a, lsl #16 
	bl rectangulo_duplicado
// (24, 357) (31,364) 35422f
	mov x1, 24
	mov x2, 357
	mov x5, 31
	mov x6, 364
	movz w7, 0x422f
	movk w7, 0x35, lsl #16 
	bl rectangulo_duplicado
// (24, 329) (31,357) 2b3726
	mov x1, 24
	mov x2, 329
	mov x5, 31
	mov x6, 357
	movz w7, 0x3726
	movk w7, 0x2b, lsl #16 
	bl rectangulo_duplicado
// (24, 315) (31,329) 425738
	mov x1, 24
	mov x2, 315
	mov x5, 31
	mov x6, 329
	movz w7, 0x5738
	movk w7, 0x42, lsl #16 
	bl rectangulo_duplicado
// (24, 289) (31,315) 344130
	mov x1, 24
	mov x2, 289
	mov x5, 31
	mov x6, 315
	movz w7, 0x4130
	movk w7, 0x34, lsl #16 
	bl rectangulo_duplicado
// (24, 260) (31,289) 242c20
	mov x1, 24
	mov x2, 260
	mov x5, 31
	mov x6, 289
	movz w7, 0x2c20
	movk w7, 0x24, lsl #16 
	bl rectangulo_duplicado
// (24, 240) (31,260) 1c231b
	mov x1, 24
	mov x2, 240
	mov x5, 31
	mov x6, 260
	movz w7, 0x231b
	movk w7, 0x1c, lsl #16 
	bl rectangulo_duplicado
// (24, 227) (31,240) 202818
	mov x1, 24
	mov x2, 227
	mov x5, 31
	mov x6, 240
	movz w7, 0x2818
	movk w7, 0x20, lsl #16 
	bl rectangulo_duplicado
// (24, 218) (31,227) 181f18
	mov x1, 24
	mov x2, 218
	mov x5, 31
	mov x6, 227
	movz w7, 0x1f18
	movk w7, 0x18, lsl #16 
	bl rectangulo_duplicado
// (24, 211) (31,218) 21291c
	mov x1, 24
	mov x2, 211
	mov x5, 31
	mov x6, 218
	movz w7, 0x291c
	movk w7, 0x21, lsl #16 
	bl rectangulo_duplicado
// (24, 184) (31,211) 192018
	mov x1, 24
	mov x2, 184
	mov x5, 31
	mov x6, 211
	movz w7, 0x2018
	movk w7, 0x19, lsl #16 
	bl rectangulo_duplicado
// (24, 164) (31,184) 242c1c
	mov x1, 24
	mov x2, 164
	mov x5, 31
	mov x6, 184
	movz w7, 0x2c1c
	movk w7, 0x24, lsl #16 
	bl rectangulo_duplicado
// (24, 136) (31,164) 192018
	mov x1, 24
	mov x2, 136
	mov x5, 31
	mov x6, 164
	movz w7, 0x2018
	movk w7, 0x19, lsl #16 
	bl rectangulo_duplicado
// (24, 108) (31,136) 1b2318
	mov x1, 24
	mov x2, 108
	mov x5, 31
	mov x6, 136
	movz w7, 0x2318
	movk w7, 0x1b, lsl #16 
	bl rectangulo_duplicado

// (24, 89) (31,108) 182018
	mov x1, 24
	mov x2, 89
	mov x5, 31
	mov x6, 108
	movz w7, 0x2018
	movk w7, 0x18, lsl #16 
	bl rectangulo_duplicado
// (24, 70) (31,89) 181f17
	mov x1, 24
	mov x2, 48
	mov x5, 31
	mov x6, 89
	movz w7, 0x1f17
	movk w7, 0x18, lsl #16 
	bl rectangulo_duplicado
// (24, 40) (31,48) 192018
	mov x1, 24
	mov x2, 40
	mov x5, 31
	mov x6, 48
	movz w7, 0x2018
	movk w7, 0x19, lsl #16 
	bl rectangulo_duplicado
// (24, 17) (31,40) 181f17
	mov x1, 24
	mov x2, 17
	mov x5, 31
	mov x6, 40
	movz w7, 0x1f17
	movk w7, 0x18, lsl #16 
	bl rectangulo_duplicado
// (24, 1) (31,17) 192018
	mov x1, 24
	mov x2, 1
	mov x5, 31
	mov x6, 17
	movz w7, 0x2018
	movk w7, 0x19, lsl #16 
	bl rectangulo_duplicado
// (31, 371) (37,384) 283424
	mov x1, 31
	mov x2, 371
	mov x5, 37
	mov x6, 384
	movz w7, 0x3424
	movk w7, 0x28, lsl #16 
	bl rectangulo_duplicado
// (31, 364) (37,371) 3a4b30
	mov x1, 31
	mov x2, 364
	mov x5, 37
	mov x6, 371
	movz w7, 0x4b30
	movk w7, 0x3a, lsl #16 
	bl rectangulo_duplicado
// (31, 350) (37,364) 38472f
	mov x1, 31
	mov x2, 350
	mov x5, 37
	mov x6, 364
	movz w7, 0x472f
	movk w7, 0x38, lsl #16 
	bl rectangulo_duplicado
// (31, 343) (37,350) 2c3827
	mov x1, 31
	mov x2, 343
	mov x5, 37
	mov x6, 350
	movz w7, 0x3827
	movk w7, 0x2c, lsl #16 
	bl rectangulo_duplicado
// (31, 322) (37,343) 44573a
	mov x1, 31
	mov x2, 322
	mov x5, 37
	mov x6, 343
	movz w7, 0x573a
	movk w7, 0x44, lsl #16 
	bl rectangulo_duplicado
// (31, 309) (37,322) 293724
	mov x1, 31
	mov x2, 309
	mov x5, 37
	mov x6, 322
	movz w7, 0x3724
	movk w7, 0x29, lsl #16 
	bl rectangulo_duplicado
// (31, 281) (37,309) 323f2f
	mov x1, 31
	mov x2, 281
	mov x5, 37
	mov x6, 309
	movz w7, 0x3f2f
	movk w7, 0x32, lsl #16 
	bl rectangulo_duplicado
// (31, 260) (37,281) 242c20
	mov x1, 31
	mov x2, 260
	mov x5, 37
	mov x6, 281
	movz w7, 0x2c20
	movk w7, 0x24, lsl #16 
	bl rectangulo_duplicado
// (31, 240) (37,260) 1c231b
	mov x1, 31
	mov x2, 240
	mov x5, 37
	mov x6, 260
	movz w7, 0x231b
	movk w7, 0x1c, lsl #16 
	bl rectangulo_duplicado
// (31, 219) (37,240) 232b1c
	mov x1, 31
	mov x2, 219
	mov x5, 37
	mov x6, 240
	movz w7, 0x2b1c
	movk w7, 0x23, lsl #16 
	bl rectangulo_duplicado
// (31, 214) (37,219) 1c201b
	mov x1, 31
	mov x2, 214
	mov x5, 37
	mov x6, 219
	movz w7, 0x201b
	movk w7, 0x1c, lsl #16 
	bl rectangulo_duplicado
// (31, 199) (37,214) 151b14
	mov x1, 31
	mov x2, 199
	mov x5, 37
	mov x6, 214
	movz w7, 0x1b14
	movk w7, 0x15, lsl #16 
	bl rectangulo_duplicado
// (31, 184) (37,199) 171c15
	mov x1, 31
	mov x2, 184
	mov x5, 37
	mov x6, 199
	movz w7, 0x1c15
	movk w7, 0x17, lsl #16 
	bl rectangulo_duplicado
// (31, 170) (37,184) 111710
	mov x1, 31
	mov x2, 170
	mov x5, 37
	mov x6, 184
	movz w7, 0x1710
	movk w7, 0x11, lsl #16 
	bl rectangulo_duplicado
// (31, 158) (37,170) 171c14
	mov x1, 31
	mov x2, 158
	mov x5, 37
	mov x6, 170
	movz w7, 0x1c14
	movk w7, 0x17, lsl #16 
	bl rectangulo_duplicado
// (31, 143) (37,158) 182018
	mov x1, 31
	mov x2, 143
	mov x5, 37
	mov x6, 158
	movz w7, 0x2018
	movk w7, 0x18, lsl #16 
	bl rectangulo_duplicado
// (31, 137) (37,143) 21291c
	mov x1, 31
	mov x2, 137
	mov x5, 37
	mov x6, 143
	movz w7, 0x291c
	movk w7, 0x21, lsl #16 
	bl rectangulo_duplicado
// (31, 123) (37,137) 20281c
	mov x1, 31
	mov x2, 123
	mov x5, 37
	mov x6, 137
	movz w7, 0x281c
	movk w7, 0x20, lsl #16 
	bl rectangulo_duplicado
// (31, 116) (37,123) 181f17
	mov x1, 31
	mov x2, 116
	mov x5, 37
	mov x6, 123
	movz w7, 0x1f17
	movk w7, 0x18, lsl #16 
	bl rectangulo_duplicado
// (31, 109) (37,116) 1d251b
	mov x1, 31
	mov x2, 109
	mov x5, 37
	mov x6, 116
	movz w7, 0x251b
	movk w7, 0x1d, lsl #16 
	bl rectangulo_duplicado
// (31, 91) (37,109) 182018
	mov x1, 31
	mov x2, 91
	mov x5, 37
	mov x6, 109
	movz w7, 0x2018
	movk w7, 0x18, lsl #16 
	bl rectangulo_duplicado
// (31, 69) (37,91) 181d17
	mov x1, 31
	mov x2, 69
	mov x5, 37
	mov x6, 91
	movz w7, 0x1d17
	movk w7, 0x18, lsl #16 
	bl rectangulo_duplicado
// (31, 54) (37,69) 182018
	mov x1, 31
	mov x2, 54
	mov x5, 37
	mov x6, 69
	movz w7, 0x2018
	movk w7, 0x18, lsl #16 
	bl rectangulo_duplicado
// (31, 40) (37,54) 181f17
	mov x1, 31
	mov x2, 40
	mov x5, 37
	mov x6, 54
	movz w7, 0x1f17
	movk w7, 0x18, lsl #16 
	bl rectangulo_duplicado
// (31, 38) (37,40) 181d17
	mov x1, 31
	mov x2, 38
	mov x5, 37
	mov x6, 40
	movz w7, 0x1d17
	movk w7, 0x18, lsl #16 
	bl rectangulo_duplicado
// (31, 23) (37,38) 182018
	mov x1, 31
	mov x2, 23
	mov x5, 37
	mov x6, 38
	movz w7, 0x2018
	movk w7, 0x18, lsl #16 
	bl rectangulo_duplicado
// (31, 1) (37,23) 181f17
	mov x1, 31
	mov x2, 1
	mov x5, 37
	mov x6, 23
	movz w7, 0x1f17
	movk w7, 0x18, lsl #16 
	bl rectangulo_duplicado
// (37, 364) (44,384) 2f382c
	mov x1, 37
	mov x2, 364
	mov x5, 44
	mov x6, 384
	movz w7, 0x382c
	movk w7, 0x2f, lsl #16 
	bl rectangulo_duplicado
// (37, 350) (44,364) 38472f
	mov x1, 37
	mov x2, 350
	mov x5, 44
	mov x6, 364
	movz w7, 0x472f
	movk w7, 0x38, lsl #16 
	bl rectangulo_duplicado
// (37, 343) (44,350) 2c3827
	mov x1, 37
	mov x2, 343
	mov x5, 44
	mov x6, 350
	movz w7, 0x3827
	movk w7, 0x2c, lsl #16 
	bl rectangulo_duplicado
// (37, 309) (44,343) 44563a
	mov x1, 37
	mov x2, 309
	mov x5, 44
	mov x6, 343
	movz w7, 0x563a
	movk w7, 0x44, lsl #16 
	bl rectangulo_duplicado
// (37, 294) (44,309) 384535
	mov x1, 37
	mov x2, 294
	mov x5, 44
	mov x6, 309
	movz w7, 0x4535
	movk w7, 0x38, lsl #16 
	bl rectangulo_duplicado
// (37, 274) (44,294) 414a3c
	mov x1, 37
	mov x2, 274
	mov x5, 44
	mov x6, 294
	movz w7, 0x4a3c
	movk w7, 0x41, lsl #16 
	bl rectangulo_duplicado
// (37, 253) (44,274) 2c3728
	mov x1, 37
	mov x2, 253
	mov x5, 44
	mov x6, 274
	movz w7, 0x3728
	movk w7, 0x2c, lsl #16 
	bl rectangulo_duplicado
// (37, 232) (44,253) 1b2119
	mov x1, 37
	mov x2, 232
	mov x5, 44
	mov x6, 253
	movz w7, 0x2119
	movk w7, 0x1b, lsl #16 
	bl rectangulo_duplicado
// (37, 219) (44,232) 20281c
	mov x1, 37
	mov x2, 219
	mov x5, 44
	mov x6, 232
	movz w7, 0x281c
	movk w7, 0x20, lsl #16 
	bl rectangulo_duplicado
// (37, 210) (44,219) 1c231b
	mov x1, 37
	mov x2, 210
	mov x5, 44
	mov x6, 219
	movz w7, 0x231b
	movk w7, 0x1c, lsl #16 
	bl rectangulo_duplicado
// (37, 193) (44,210) 192018
	mov x1, 37
	mov x2, 193
	mov x5, 44
	mov x6, 210
	movz w7, 0x2018
	movk w7, 0x19, lsl #16 
	bl rectangulo_duplicado
// (37, 184) (44,193) 182018
	mov x1, 37
	mov x2, 184
	mov x5, 44
	mov x6, 193
	movz w7, 0x2018
	movk w7, 0x18, lsl #16 
	bl rectangulo_duplicado
// (37, 164) (44,184) 21291c
	mov x1, 37
	mov x2, 164
	mov x5, 44
	mov x6, 184
	movz w7, 0x291c
	movk w7, 0x21, lsl #16 
	bl rectangulo_duplicado
// (37, 143) (44,164) 182018
	mov x1, 37
	mov x2, 143
	mov x5, 44
	mov x6, 164
	movz w7, 0x2018
	movk w7, 0x18, lsl #16 
	bl rectangulo_duplicado
// (37, 130) (44,143) 20281b
	mov x1, 37
	mov x2, 130
	mov x5, 44
	mov x6, 143
	movz w7, 0x281b
	movk w7, 0x20, lsl #16 
	bl rectangulo_duplicado
// (37, 117) (44,130) 181f18
	mov x1, 37
	mov x2, 117
	mov x5, 44
	mov x6, 130
	movz w7, 0x1f18
	movk w7, 0x18, lsl #16 
	bl rectangulo_duplicado
// (37, 104) (44,117) 181c15
	mov x1, 37
	mov x2, 104
	mov x5, 44
	mov x6, 117
	movz w7, 0x1c15
	movk w7, 0x18, lsl #16 
	bl rectangulo_duplicado
// (37, 86) (44,104) 141711
	mov x1, 37
	mov x2, 86
	mov x5, 44
	mov x6, 104
	movz w7, 0x1711
	movk w7, 0x14, lsl #16 
	bl rectangulo_duplicado
// (37, 69) (44,86) 151b14
	mov x1, 37
	mov x2, 69
	mov x5, 44
	mov x6, 86
	movz w7, 0x1b14
	movk w7, 0x15, lsl #16 
	bl rectangulo_duplicado
// (37, 1) (44,69) 1b2018
	mov x1, 37
	mov x2, 1
	mov x5, 44
	mov x6, 69
	movz w7, 0x2018
	movk w7, 0x1b, lsl #16 
	bl rectangulo_duplicado	
// (44, 351) (51,384) 2d3828
	mov x1, 44
	mov x2, 351
	mov x5, 51
	mov x6, 384
	movz w7, 0x3828
	movk w7, 0x2d, lsl #16 
	bl rectangulo_duplicado	
// (44, 343) (51,351) 415438
	mov x1, 44
	mov x2, 343
	mov x5, 51
	mov x6, 351
	movz w7, 0x5438
	movk w7, 0x41, lsl #16 
	bl rectangulo_duplicado
// (44, 309) (51,343) 44573a
	mov x1, 44
	mov x2, 309
	mov x5, 51
	mov x6, 343
	movz w7, 0x573a
	movk w7, 0x44, lsl #16 
	bl rectangulo_duplicado
// (44, 281) (51,309) 384535
	mov x1, 44
	mov x2, 281
	mov x5, 51
	mov x6, 309
	movz w7, 0x4535
	movk w7, 0x38, lsl #16 
	bl rectangulo_duplicado
// (44, 267) (51,281) 34412f
	mov x1, 44
	mov x2, 267
	mov x5, 51
	mov x6, 281
	movz w7, 0x412f
	movk w7, 0x34, lsl #16 
	bl rectangulo_duplicado
// (44, 260) (51,267) 2f3422
	mov x1, 44
	mov x2, 260
	mov x5, 51
	mov x6, 267
	movz w7, 0x3422
	movk w7, 0x2f, lsl #16 
	bl rectangulo_duplicado
// (44, 226) (51,260) 192018
	mov x1, 44
	mov x2, 226
	mov x5, 51
	mov x6, 260
	movz w7, 0x2018
	movk w7, 0x19, lsl #16 
	bl rectangulo_duplicado
// (44, 212) (51,226) 212819
	mov x1, 44
	mov x2, 212
	mov x5, 51
	mov x6, 226
	movz w7, 0x2819
	movk w7, 0x21, lsl #16 
	bl rectangulo_duplicado
// (44, 193) (51,212) 181f17
	mov x1, 44
	mov x2, 193
	mov x5, 51
	mov x6, 212
	movz w7, 0x1f17
	movk w7, 0x18, lsl #16 
	bl rectangulo_duplicado
// (44, 172) (51,193) 20281c
	mov x1, 44
	mov x2, 172
	mov x5, 51
	mov x6, 193
	movz w7, 0x281c
	movk w7, 0x20, lsl #16 
	bl rectangulo_duplicado
// (44, 143) (51,172) 192018
	mov x1, 44
	mov x2, 116
	mov x5, 51
	mov x6, 172
	movz w7, 0x2018
	movk w7, 0x19, lsl #16 
	bl rectangulo_duplicado
// (44, 78) (51,116) 182018
	mov x1, 44
	mov x2, 78
	mov x5, 51
	mov x6, 116
	movz w7, 0x2018
	movk w7, 0x18, lsl #16 
	bl rectangulo_duplicado
// (44, 44) (51,78) 181d17
	mov x1, 44
	mov x2, 44
	mov x5, 51
	mov x6, 78
	movz w7, 0x1d17
	movk w7, 0x18, lsl #16 
	bl rectangulo_duplicado
// (44, 40) (51,44) 181c15
	mov x1, 44
	mov x2, 40
	mov x5, 51
	mov x6, 44
	movz w7, 0x1c15
	movk w7, 0x18, lsl #16 
	bl rectangulo_duplicado
// (44, 13) (51,40) 181d17
	mov x1, 44
	mov x2, 13
	mov x5, 51
	mov x6, 40
	movz w7, 0x1d17
	movk w7, 0x18, lsl #16 
	bl rectangulo_duplicado
// (44, 1) (51,13) 181c15
	mov x1, 44
	mov x2, 1
	mov x5, 51
	mov x6, 13
	movz w7, 0x1c15
	movk w7, 0x18, lsl #16 
	bl rectangulo_duplicado
// (51, 337) (57,384) 283424
	mov x1, 51
	mov x2, 337
	mov x5, 57
	mov x6, 384
	movz w7, 0x3424
	movk w7, 0x28, lsl #16 
	bl rectangulo_duplicado
// (51, 315) (57,337) 45593a
	mov x1, 51
	mov x2, 315
	mov x5, 57
	mov x6, 337
	movz w7, 0x593a
	movk w7, 0x45, lsl #16 
	bl rectangulo_duplicado
// (51, 309) (57,315) 2f3828
	mov x1, 51
	mov x2, 309
	mov x5, 57
	mov x6, 315
	movz w7, 0x3828
	movk w7, 0x2f, lsl #16 
	bl rectangulo_duplicado
// (51, 281) (57,309) 283424
	mov x1, 51
	mov x2, 281
	mov x5, 57
	mov x6, 309
	movz w7, 0x3424
	movk w7, 0x28, lsl #16 
	bl rectangulo_duplicado
// (51, 274) (57,281) 34412f
	mov x1, 51
	mov x2, 274
	mov x5, 57
	mov x6, 281
	movz w7, 0x412f
	movk w7, 0x34, lsl #16 
	bl rectangulo_duplicado
// (51, 233) (57,274) 282d1b
	mov x1, 51
	mov x2, 233
	mov x5, 57
	mov x6, 274
	movz w7, 0x2d1b
	movk w7, 0x28, lsl #16 
	bl rectangulo_duplicado
// (51, 193) (57,233) 192018
	mov x1, 51
	mov x2, 193
	mov x5, 57
	mov x6, 233
	movz w7, 0x2018
	movk w7, 0x19, lsl #16 
	bl rectangulo_duplicado
// (51, 177) (57,193) 20281c
	mov x1, 51
	mov x2, 177
	mov x5, 57
	mov x6, 193
	movz w7, 0x281c
	movk w7, 0x20, lsl #16 
	bl rectangulo_duplicado
// (51, 122) (57,177) 192018
	mov x1, 51
	mov x2, 122
	mov x5, 57
	mov x6, 177
	movz w7, 0x2018
	movk w7, 0x19, lsl #16 
	bl rectangulo_duplicado
// (51, 116) (57,122) 1f2919
	mov x1, 51
	mov x2, 116
	mov x5, 57
	mov x6, 122
	movz w7, 0x2919
	movk w7, 0x1f, lsl #16 
	bl rectangulo_duplicado
// (51, 1) (57,116) 192018
	mov x1, 51
	mov x2, 1
	mov x5, 57
	mov x6, 116
	movz w7, 0x2018
	movk w7, 0x19, lsl #16 
	bl rectangulo_duplicado
// (57, 358) (63,384) 2c3527
	mov x1, 57
	mov x2, 358
	mov x5, 63
	mov x6, 384
	movz w7, 0x3527
	movk w7, 0x2c, lsl #16 
	bl rectangulo_duplicado
// (57, 349) (63,358) 445738
	mov x1, 57
	mov x2, 349
	mov x5, 63
	mov x6, 358
	movz w7, 0x5738
	movk w7, 0x44, lsl #16 
	bl rectangulo_duplicado
// (57, 323) (63,349) 38492f
	mov x1, 57
	mov x2, 323
	mov x5, 63
	mov x6, 349
	movz w7, 0x492f
	movk w7, 0x38, lsl #16 
	bl rectangulo_duplicado
// (57, 315) (63,323) 495e3f
	mov x1, 57
	mov x2, 315
	mov x5, 63
	mov x6, 323
	movz w7, 0x5e3f
	movk w7, 0x49, lsl #16 
	bl rectangulo_duplicado
// (57, 309) (63,315) 2f3828
	mov x1, 57
	mov x2, 309
	mov x5, 63
	mov x6, 315
	movz w7, 0x3828
	movk w7, 0x2f, lsl #16 
	bl rectangulo_duplicado
// (57, 295) (63,309) 4a5e3f
	mov x1, 57
	mov x2, 295
	mov x5, 63
	mov x6, 309
	movz w7, 0x5e3f
	movk w7, 0x4a, lsl #16 
	bl rectangulo_duplicado
// (57, 288) (63,295) 354230
	mov x1, 57
	mov x2, 288
	mov x5, 63
	mov x6, 295
	movz w7, 0x4230
	movk w7, 0x35, lsl #16 
	bl rectangulo_duplicado
// (57, 261) (63,288) 384a30
	mov x1, 57
	mov x2, 261
	mov x5, 63
	mov x6, 288
	movz w7, 0x4a30
	movk w7, 0x38, lsl #16 
	bl rectangulo_duplicado
// (57, 240) (63,261) 32341b
	mov x1, 57
	mov x2, 240
	mov x5, 63
	mov x6, 261
	movz w7, 0x341b
	movk w7, 0x32, lsl #16 
	bl rectangulo_duplicado
// (57, 226) (63,240) 414127
	mov x1, 57
	mov x2, 226
	mov x5, 63
	mov x6, 240
	movz w7, 0x4127
	movk w7, 0x41, lsl #16 
	bl rectangulo_duplicado
// (57, 198) (63,226) 32321d
	mov x1, 57
	mov x2, 198
	mov x5, 63
	mov x6, 226
	movz w7, 0x321d
	movk w7, 0x32, lsl #16 
	bl rectangulo_duplicado
// (57, 184) (63,198) 414527
	mov x1, 57
	mov x2, 184
	mov x5, 63
	mov x6, 198
	movz w7, 0x4527
	movk w7, 0x41, lsl #16 
	bl rectangulo_duplicado
// (57, 176) (63,184) 2a2f24
	mov x1, 57
	mov x2, 176
	mov x5, 63
	mov x6, 184
	movz w7, 0x2f24
	movk w7, 0x2a, lsl #16 
	bl rectangulo_duplicado
// (57, 136) (63,176) 252d20
	mov x1, 57
	mov x2, 136
	mov x5, 63
	mov x6, 176
	movz w7, 0x2d20
	movk w7, 0x25, lsl #16 
	bl rectangulo_duplicado
// (57, 101) (63,136) 283424
	mov x1, 57
	mov x2, 101
	mov x5, 63
	mov x6, 136
	movz w7, 0x3424
	movk w7, 0x28, lsl #16 
	bl rectangulo_duplicado
// (57, 1) (63,101) 181d17
	mov x1, 57
	mov x2, 1
	mov x5, 63
	mov x6, 101
	movz w7, 0x1d17
	movk w7, 0x18, lsl #16 
	bl rectangulo_duplicado
// (63, 358) (71,384) 2c3527
	mov x1, 63
	mov x2, 358
	mov x5, 71
	mov x6, 384
	movz w7, 0x3527
	movk w7, 0x2c, lsl #16 
	bl rectangulo_duplicado
// (63, 351) (71,358) 445738
	mov x1, 63
	mov x2, 351
	mov x5, 71
	mov x6, 358
	movz w7, 0x5738
	movk w7, 0x44, lsl #16 
	bl rectangulo_duplicado
// (63, 329) (71,351) 303828
	mov x1, 63
	mov x2, 329
	mov x5, 71
	mov x6, 351
	movz w7, 0x3828
	movk w7, 0x30, lsl #16 
	bl rectangulo_duplicado
// (63, 315) (71,329) 495e3f
	mov x1, 63
	mov x2, 315
	mov x5, 71
	mov x6, 329
	movz w7, 0x5e3f
	movk w7, 0x49, lsl #16 
	bl rectangulo_duplicado
// (63, 309) (71,315) 2f3828
	mov x1, 63
	mov x2, 309
	mov x5, 71
	mov x6, 315
	movz w7, 0x3828
	movk w7, 0x2f, lsl #16 
	bl rectangulo_duplicado
// (63, 295) (71,309) 4a5e3f
	mov x1, 63
	mov x2, 295
	mov x5, 71
	mov x6, 309
	movz w7, 0x5e3f
	movk w7, 0x4a, lsl #16 
	bl rectangulo_duplicado
// (63, 288) (71,295) 354230
	mov x1, 63
	mov x2, 288
	mov x5, 71
	mov x6, 295
	movz w7, 0x4230
	movk w7, 0x35, lsl #16 
	bl rectangulo_duplicado
// (63, 261) (71,288) 384a30
	mov x1, 63
	mov x2, 261
	mov x5, 71
	mov x6, 288
	movz w7, 0x4a30
	movk w7, 0x38, lsl #16 
	bl rectangulo_duplicado
// (63, 247) (71,261) 2c3727
	mov x1, 63
	mov x2, 247
	mov x5, 71
	mov x6, 261
	movz w7, 0x3727
	movk w7, 0x2c, lsl #16 
	bl rectangulo_duplicado
// (63, 240) (71,247) 3c3c20
	mov x1, 63
	mov x2, 240
	mov x5, 71
	mov x6, 247
	movz w7, 0x3c20
	movk w7, 0x3c, lsl #16 
	bl rectangulo_duplicado
// (63, 226) (71,240) 2f2d18
	mov x1, 63
	mov x2, 226
	mov x5, 71
	mov x6, 240
	movz w7, 0x2d18
	movk w7, 0x2f, lsl #16 
	bl rectangulo_duplicado
// (63, 184) (71,226) 3c3f27
	mov x1, 63
	mov x2, 184
	mov x5, 71
	mov x6, 226
	movz w7, 0x3f27
	movk w7, 0x3c, lsl #16 
	bl rectangulo_duplicado
// (63, 177) (71,184) 2f3c2d
	mov x1, 63
	mov x2, 177
	mov x5, 71
	mov x6, 184
	movz w7, 0x3c2d
	movk w7, 0x2f, lsl #16 
	bl rectangulo_duplicado
// (63, 163) (71,177) 3c371f
	mov x1, 63
	mov x2, 163
	mov x5, 71
	mov x6, 177
	movz w7, 0x371f
	movk w7, 0x3c, lsl #16 
	bl rectangulo_duplicado
// (63, 136) (71,163) 252c21
	mov x1, 63
	mov x2, 136
	mov x5, 71
	mov x6, 163
	movz w7, 0x2c21
	movk w7, 0x25, lsl #16 
	bl rectangulo_duplicado
// (63, 101) (71,136) 2b2f20
	mov x1, 63
	mov x2, 101
	mov x5, 71
	mov x6, 136
	movz w7, 0x2f20
	movk w7, 0x2b, lsl #16 
	bl rectangulo_duplicado
// (63, 81) (71,101) 3f3f22
	mov x1, 63
	mov x2, 81
	mov x5, 71
	mov x6, 101
	movz w7, 0x3f22
	movk w7, 0x3f, lsl #16 
	bl rectangulo_duplicado
// (63, 8) (71,81) 24281a
	mov x1, 63
	mov x2, 8
	mov x5, 71
	mov x6, 81
	movz w7, 0x281a
	movk w7, 0x24, lsl #16 
	bl rectangulo_duplicado
// (63, 1) (71,8) 444427
	mov x1, 63
	mov x2, 1
	mov x5, 71
	mov x6, 8
	movz w7, 0x4427
	movk w7, 0x44, lsl #16 
	bl rectangulo_duplicado
// (71, 364) (77,384) 303c2c
	mov x1, 71
	mov x2, 364
	mov x5, 77
	mov x6, 384
	movz w7, 0x3c2c
	movk w7, 0x30, lsl #16 
	bl rectangulo_duplicado
// (71, 337) (77,364) 425637
	mov x1, 71
	mov x2, 337
	mov x5, 77
	mov x6, 364
	movz w7, 0x5637
	movk w7, 0x42, lsl #16 
	bl rectangulo_duplicado
// (71, 316) (77,337) 2c3727
	mov x1, 71
	mov x2, 316
	mov x5, 77
	mov x6, 337
	movz w7, 0x3727
	movk w7, 0x2c, lsl #16 
	bl rectangulo_duplicado
// (71, 288) (77,316) 475a3f
	mov x1, 71
	mov x2, 288
	mov x5, 77
	mov x6, 316
	movz w7, 0x5a3f
	movk w7, 0x47, lsl #16 
	bl rectangulo_duplicado
// (71, 281) (77,288) 2c3727
	mov x1, 71
	mov x2, 281
	mov x5, 77
	mov x6, 288
	movz w7, 0x3727
	movk w7, 0x2c, lsl #16 
	bl rectangulo_duplicado
// (71, 267) (77,281) 384a30
	mov x1, 71
	mov x2, 267
	mov x5, 77
	mov x6, 281
	movz w7, 0x4a30
	movk w7, 0x38, lsl #16 
	bl rectangulo_duplicado
// (71, 254) (77,267) 2c3727
	mov x1, 71
	mov x2, 254
	mov x5, 77
	mov x6, 267
	movz w7, 0x3727
	movk w7, 0x2c, lsl #16 
	bl rectangulo_duplicado
// (71, 240) (77,267) 3c3c20
	mov x1, 71
	mov x2, 240
	mov x5, 77
	mov x6, 267
	movz w7, 0x3c20
	movk w7, 0x3c, lsl #16 
	bl rectangulo_duplicado
// (71, 226) (77,240) 2f2d18
	mov x1, 71
	mov x2, 226
	mov x5, 77
	mov x6, 240
	movz w7, 0x2d18
	movk w7, 0x2f, lsl #16 
	bl rectangulo_duplicado
// (71, 218) (77,226) 3c3f27
	mov x1, 71
	mov x2, 218
	mov x5, 77
	mov x6, 226
	movz w7, 0x3f27
	movk w7, 0x3c, lsl #16 
	bl rectangulo_duplicado
// (71, 192) (77,218) 414527
	mov x1, 71
	mov x2, 192
	mov x5, 77
	mov x6, 218
	movz w7, 0x4527
	movk w7, 0x41, lsl #16 
	bl rectangulo_duplicado
// (71, 142) (77,192) 37371a
	mov x1, 71
	mov x2, 142
	mov x5, 77
	mov x6, 192
	movz w7, 0x371a
	movk w7, 0x37, lsl #16 
	bl rectangulo_duplicado
// (71, 122) (77,142) 4a4525
	mov x1, 71
	mov x2, 122
	mov x5, 77
	mov x6, 142
	movz w7, 0x4525
	movk w7, 0x4a, lsl #16 
	bl rectangulo_duplicado
// (71, 101) (77,122) 3c3c1d
	mov x1, 71
	mov x2, 101
	mov x5, 77
	mov x6, 122
	movz w7, 0x3c1d
	movk w7, 0x3c, lsl #16 
	bl rectangulo_duplicado
// (71, 81) (77,101) 3f3f22
	mov x1, 71
	mov x2, 81
	mov x5, 77
	mov x6, 101
	movz w7, 0x3f22
	movk w7, 0x3f, lsl #16 
	bl rectangulo_duplicado
// (71, 9) (77,81) 3a351d
	mov x1, 71
	mov x2, 9
	mov x5, 77
	mov x6, 81
	movz w7, 0x351d
	movk w7, 0x3a, lsl #16 
	bl rectangulo_duplicado
// (71, 1) (77,9) 282c1b
	mov x1, 71
	mov x2, 1
	mov x5, 77
	mov x6, 9
	movz w7, 0x2c1b
	movk w7, 0x28, lsl #16 
	bl rectangulo_duplicado
// (77, 364) (84,384) 303c2c
	mov x1, 77
	mov x2, 364
	mov x5, 84
	mov x6, 384
	movz w7, 0x3c2c
	movk w7, 0x30, lsl #16 
	bl rectangulo_duplicado
// (77, 344) (84,364) 45593c
	mov x1, 77
	mov x2, 344
	mov x5, 84
	mov x6, 364
	movz w7, 0x593c
	movk w7, 0x45, lsl #16 
	bl rectangulo_duplicado
// (77, 337) (84,344) 3a4a2f
	mov x1, 77
	mov x2, 337
	mov x5, 84
	mov x6, 344
	movz w7, 0x4a2f
	movk w7, 0x3a, lsl #16 
	bl rectangulo_duplicado
// (77, 330) (84,337) 2a3527
	mov x1, 77
	mov x2, 330
	mov x5, 84
	mov x6, 337
	movz w7, 0x3527
	movk w7, 0x2a, lsl #16 
	bl rectangulo_duplicado
// (77, 316) (84,330) 38492f
	mov x1, 77
	mov x2, 316
	mov x5, 84
	mov x6, 330
	movz w7, 0x492f
	movk w7, 0x38, lsl #16 
	bl rectangulo_duplicado
// (77, 302) (84,316) 3d4c35
	mov x1, 77
	mov x2, 302
	mov x5, 84
	mov x6, 316
	movz w7, 0x4c35
	movk w7, 0x3d, lsl #16 
	bl rectangulo_duplicado
// (77, 288) (84,302) 4a5f41
	mov x1, 77
	mov x2, 288
	mov x5, 84
	mov x6, 302
	movz w7, 0x5f41
	movk w7, 0x4a, lsl #16 
	bl rectangulo_duplicado
// (77, 268) (84,288) 2c3727
	mov x1, 77
	mov x2, 268
	mov x5, 84
	mov x6, 288
	movz w7, 0x3727
	movk w7, 0x2c, lsl #16 
	bl rectangulo_duplicado
// (77, 232) (84,268) 38371d
	mov x1, 77
	mov x2, 232
	mov x5, 84
	mov x6, 268
	movz w7, 0x371d
	movk w7, 0x38, lsl #16 
	bl rectangulo_duplicado
// (77, 226) (84,232) 3c3c20
	mov x1, 77
	mov x2, 226
	mov x5, 84
	mov x6, 232
	movz w7, 0x3c20
	movk w7, 0x3c, lsl #16 
	bl rectangulo_duplicado
// (77, 192) (84,226) 54512f
	mov x1, 77
	mov x2, 192
	mov x5, 84
	mov x6, 226
	movz w7, 0x512f
	movk w7, 0x54, lsl #16 
	bl rectangulo_duplicado
// (77, 171) (84,192) 37371a
	mov x1, 77
	mov x2, 171
	mov x5, 84
	mov x6, 192
	movz w7, 0x371a
	movk w7, 0x37, lsl #16 
	bl rectangulo_duplicado
// (77, 142) (84,171) 3a371f
	mov x1, 77
	mov x2, 142
	mov x5, 84
	mov x6, 171
	movz w7, 0x371f
	movk w7, 0x3a, lsl #16 
	bl rectangulo_duplicado
// (77, 101) (84,142) 3d3d24
	mov x1, 77
	mov x2, 101
	mov x5, 84
	mov x6, 142
	movz w7, 0x3d24
	movk w7, 0x3d, lsl #16 
	bl rectangulo_duplicado
// (77, 61) (84,101) 272a1b
	mov x1, 77
	mov x2, 61
	mov x5, 84
	mov x6, 101
	movz w7, 0x2a1b
	movk w7, 0x27, lsl #16 
	bl rectangulo_duplicado
// (77, 40) (84,61) 35341a
	mov x1, 77
	mov x2, 40
	mov x5, 84
	mov x6, 61
	movz w7, 0x341a
	movk w7, 0x35, lsl #16 
	bl rectangulo_duplicado
// (77, 30) (84,40) 272a1b
	mov x1, 77
	mov x2, 30
	mov x5, 84
	mov x6, 40
	movz w7, 0x2a1b
	movk w7, 0x27, lsl #16 
	bl rectangulo_duplicado
// (77, 1) (84,30) 35341a
	mov x1, 77
	mov x2, 1
	mov x5, 84
	mov x6, 30
	movz w7, 0x341a
	movk w7, 0x35, lsl #16 
	bl rectangulo_duplicado
// (84, 372) (91,384) 303c2c
	mov x1, 82
	mov x2, 372
	mov x5, 91
	mov x6, 384
	movz w7, 0x3c2c
	movk w7, 0x30, lsl #16 
	bl rectangulo_duplicado
// (84, 364) (91,372) 2f3a2a
	mov x1, 82
	mov x2, 364
	mov x5, 91
	mov x6, 372
	movz w7, 0x3a2a
	movk w7, 0x2f, lsl #16 
	bl rectangulo_duplicado
// (84, 351) (91,364) 35442d
	mov x1, 82
	mov x2, 351
	mov x5, 91
	mov x6, 364
	movz w7, 0x442d
	movk w7, 0x35, lsl #16 
	bl rectangulo_duplicado
// (84, 344) (91,351) 44593a
	mov x1, 82
	mov x2, 344
	mov x5, 91
	mov x6, 351
	movz w7, 0x593a
	movk w7, 0x44, lsl #16 
	bl rectangulo_duplicado
// (84, 330) (91,344) 3c4a30
	mov x1, 82
	mov x2, 330
	mov x5, 91
	mov x6, 344
	movz w7, 0x4a30
	movk w7, 0x3c, lsl #16 
	bl rectangulo_duplicado
// (84, 316) (91,330) 38492f
	mov x1, 82
	mov x2, 316
	mov x5, 91
	mov x6, 330
	movz w7, 0x492f
	movk w7, 0x38, lsl #16 
	bl rectangulo_duplicado
// (84, 295) (91,316) 415435
	mov x1, 82
	mov x2, 295
	mov x5, 91
	mov x6, 316
	movz w7, 0x5435
	movk w7, 0x41, lsl #16 
	bl rectangulo_duplicado
// (84, 274) (91,295) 2c3727
	mov x1, 82
	mov x2, 274
	mov x5, 91
	mov x6, 295
	movz w7, 0x3727
	movk w7, 0x2c, lsl #16 
	bl rectangulo_duplicado
// (84, 267) (91,274) 3d3d22
	mov x1, 82
	mov x2, 267
	mov x5, 91
	mov x6, 274
	movz w7, 0x3d22
	movk w7, 0x3d, lsl #16 
	bl rectangulo_duplicado
// (84, 253) (91,267) 4f4c2c
	mov x1, 82
	mov x2, 253
	mov x5, 91
	mov x6, 267
	movz w7, 0x4c2c
	movk w7, 0x4f, lsl #16 
	bl rectangulo_duplicado
// (84, 232) (91,253) 413f22
	mov x1, 82
	mov x2, 232
	mov x5, 91
	mov x6, 253
	movz w7, 0x3f22
	movk w7, 0x41, lsl #16 
	bl rectangulo_duplicado
// (84, 226) (91,232) 3c3c20
	mov x1, 82
	mov x2, 226
	mov x5, 91
	mov x6, 232
	movz w7, 0x3c20
	movk w7, 0x3c, lsl #16 
	bl rectangulo_duplicado
// (84, 201) (91,226) 413f22
	mov x1, 82
	mov x2, 201
	mov x5, 91
	mov x6, 226
	movz w7, 0x3f22
	movk w7, 0x41, lsl #16 
	bl rectangulo_duplicado
// (84, 174) (91,201) 4f4c2c
	mov x1, 82
	mov x2, 174
	mov x5, 91
	mov x6, 201
	movz w7, 0x4c2c
	movk w7, 0x4f, lsl #16 
	bl rectangulo_duplicado
// (84, 142) (91,174) 4c4722
	mov x1, 82
	mov x2, 142
	mov x5, 91
	mov x6, 174
	movz w7, 0x4722
	movk w7, 0x4c, lsl #16 
	bl rectangulo_duplicado
// (84, 128) (91,142) 424122
	mov x1, 82
	mov x2, 128
	mov x5, 91
	mov x6, 142
	movz w7, 0x4122
	movk w7, 0x42, lsl #16 
	bl rectangulo_duplicado
// (84, 101) (91,128) 514d2a
	mov x1, 82
	mov x2, 101
	mov x5, 91
	mov x6, 128
	movz w7, 0x4d2a
	movk w7, 0x51, lsl #16 
	bl rectangulo_duplicado
// (84, 72) (91,101) 38371d
	mov x1, 82
	mov x2, 72
	mov x5, 91
	mov x6, 101
	movz w7, 0x371d
	movk w7, 0x38, lsl #16 
	bl rectangulo_duplicado
// (84, 1) (91,72) 3a381f
	mov x1, 82
	mov x2, 1
	mov x5, 91
	mov x6, 72
	movz w7, 0x381f
	movk w7, 0x3a, lsl #16 
	bl rectangulo_duplicado
// (91, 364) (98,384) 2f3a2a
	mov x1, 91
	mov x2, 364
	mov x5, 98
	mov x6, 384
	movz w7, 0x3a2a
	movk w7, 0x2f, lsl #16 
	bl rectangulo_duplicado
// (91, 351) (98,364) 35442d
	mov x1, 91
	mov x2, 351
	mov x5, 98
	mov x6, 364
	movz w7, 0x442d
	movk w7, 0x35, lsl #16 
	bl rectangulo_duplicado
// (91, 344) (98,351) 303c2c
	mov x1, 91
	mov x2, 344
	mov x5, 98
	mov x6, 351
	movz w7, 0x3c2c
	movk w7, 0x30, lsl #16 
	bl rectangulo_duplicado
// (91, 330) (98,344) 3c4a30
	mov x1, 91
	mov x2, 330
	mov x5, 98
	mov x6, 344
	movz w7, 0x4a30
	movk w7, 0x3c, lsl #16 
	bl rectangulo_duplicado
// (91, 316) (98,330) 38492f
	mov x1, 91
	mov x2, 316
	mov x5, 98
	mov x6, 330
	movz w7, 0x492f
	movk w7, 0x38, lsl #16 
	bl rectangulo_duplicado
// (91, 295) (98,316) 415435
	mov x1, 91
	mov x2, 295
	mov x5, 98
	mov x6, 316
	movz w7, 0x5435
	movk w7, 0x41, lsl #16 
	bl rectangulo_duplicado
// (91, 274) (98,295) 2c3727
	mov x1, 91
	mov x2, 274
	mov x5, 98
	mov x6, 295
	movz w7, 0x3727
	movk w7, 0x2c, lsl #16 
	bl rectangulo_duplicado
// (91, 247) (98,274) 49492a
	mov x1, 91
	mov x2, 247
	mov x5, 98
	mov x6, 274
	movz w7, 0x492a
	movk w7, 0x49, lsl #16 
	bl rectangulo_duplicado
// (91, 214) (98,247) 4c4728
	mov x1, 91
	mov x2, 214
	mov x5, 98
	mov x6, 247
	movz w7, 0x4728
	movk w7, 0x4c, lsl #16 
	bl rectangulo_duplicado
// (91, 195) (98,214) 4d4f30
	mov x1, 91
	mov x2, 195
	mov x5, 98
	mov x6, 214
	movz w7, 0x4f30
	movk w7, 0x4d, lsl #16 
	bl rectangulo_duplicado
// (91, 176) (98,195) 453c20
	mov x1, 91
	mov x2, 176
	mov x5, 98
	mov x6, 195
	movz w7, 0x3c20
	movk w7, 0x45, lsl #16 
	bl rectangulo_duplicado
// (91, 156) (98,176) 4f4c2c
	mov x1, 91
	mov x2, 156
	mov x5, 98
	mov x6, 176
	movz w7, 0x4c2c
	movk w7, 0x4f, lsl #16 
	bl rectangulo_duplicado
// (91, 101) (98,156) 424124
	mov x1, 91
	mov x2, 101
	mov x5, 98
	mov x6, 156
	movz w7, 0x4124
	movk w7, 0x42, lsl #16 
	bl rectangulo_duplicado
// (91, 93) (98,101) 413d20
	mov x1, 91
	mov x2, 93
	mov x5, 98
	mov x6, 101
	movz w7, 0x3d20
	movk w7, 0x41, lsl #16 
	bl rectangulo_duplicado
// (91, 73) (98,93) 4a4728
	mov x1, 91
	mov x2, 73
	mov x5, 98
	mov x6, 93
	movz w7, 0x4728
	movk w7, 0x4a, lsl #16 
	bl rectangulo_duplicado
// (91, 46) (98,73) 3a3a1d
	mov x1, 91
	mov x2, 46
	mov x5, 98
	mov x6, 73
	movz w7, 0x3a1d
	movk w7, 0x3a, lsl #16 
	bl rectangulo_duplicado
// (91, 40) (98,46) 524f2f
	mov x1, 91
	mov x2, 40
	mov x5, 98
	mov x6, 46
	movz w7, 0x4f2f
	movk w7, 0x52, lsl #16 
	bl rectangulo_duplicado
// (91, 15) (98,40) 3a3a1d
	mov x1, 91
	mov x2, 15
	mov x5, 98
	mov x6, 40
	movz w7, 0x3a1d
	movk w7, 0x3a, lsl #16 
	bl rectangulo_duplicado
// (91, 1) (98,15) 524f2f
	mov x1, 91
	mov x2, 1
	mov x5, 98
	mov x6, 15
	movz w7, 0x4f2f
	movk w7, 0x52, lsl #16 
	bl rectangulo_duplicado
// (98, 372) (104,384) 303c2c
	mov x1, 98
	mov x2, 372
	mov x5, 104
	mov x6, 384
	movz w7, 0x3c2c
	movk w7, 0x30, lsl #16 
	bl rectangulo_duplicado
// (98, 364) (104,372) 2f3a2a
	mov x1, 98
	mov x2, 364
	mov x5, 104
	mov x6, 372
	movz w7, 0x3a2a
	movk w7, 0x2f, lsl #16 
	bl rectangulo_duplicado
// (98, 351) (104,364) 35442d
	mov x1, 98
	mov x2, 351
	mov x5, 104
	mov x6, 364
	movz w7, 0x442d
	movk w7, 0x35, lsl #16 
	bl rectangulo_duplicado
// (98, 344) (104,351) 303c2c
	mov x1, 98
	mov x2, 344
	mov x5, 104
	mov x6, 351
	movz w7, 0x3c2c
	movk w7, 0x30, lsl #16 
	bl rectangulo_duplicado
// (98, 330) (104,344) 3c4a30
	mov x1, 98
	mov x2, 330
	mov x5, 104
	mov x6, 344
	movz w7, 0x4a30
	movk w7, 0x3c, lsl #16 
	bl rectangulo_duplicado
// (98, 316) (104,330) 38492f
	mov x1, 98
	mov x2, 316
	mov x5, 104
	mov x6, 330
	movz w7, 0x492f
	movk w7, 0x38, lsl #16 
	bl rectangulo_duplicado
// (98, 295) (104,316) 415435
	mov x1, 98
	mov x2, 295
	mov x5, 104
	mov x6, 316
	movz w7, 0x5435
	movk w7, 0x41, lsl #16 
	bl rectangulo_duplicado
// (98, 281) (104,295) 2c3727
	mov x1, 98
	mov x2, 281
	mov x5, 104
	mov x6, 295
	movz w7, 0x3727
	movk w7, 0x2c, lsl #16 
	bl rectangulo_duplicado
// (98, 274) (104,281) 37452f
	mov x1, 98
	mov x2, 274
	mov x5, 104
	mov x6, 281
	movz w7, 0x452f
	movk w7, 0x37, lsl #16 
	bl rectangulo_duplicado
// (98, 247) (104,274) 4f4c2c
	mov x1, 98
	mov x2, 247
	mov x5, 104
	mov x6, 274
	movz w7, 0x4c2c
	movk w7, 0x4f, lsl #16 
	bl rectangulo_duplicado
// (98, 226) (104,247) 413f22
	mov x1, 98
	mov x2, 226
	mov x5, 104
	mov x6, 247
	movz w7, 0x3f22
	movk w7, 0x41, lsl #16 
	bl rectangulo_duplicado
// (98, 216) (104,226) 54512f
	mov x1, 98
	mov x2, 216
	mov x5, 104
	mov x6, 226
	movz w7, 0x512f
	movk w7, 0x54, lsl #16 
	bl rectangulo_duplicado
// (98, 177) (104,216) 444020
	mov x1, 98
	mov x2, 177
	mov x5, 104
	mov x6, 216
	movz w7, 0x4020
	movk w7, 0x44, lsl #16 
	bl rectangulo_duplicado
// (98, 164) (104,177) 453c20
	mov x1, 98
	mov x2, 164
	mov x5, 104
	mov x6, 177
	movz w7, 0x3c20
	movk w7, 0x45, lsl #16 
	bl rectangulo_duplicado
// (98, 156) (104,164) 4f4c2c
	mov x1, 98
	mov x2, 156
	mov x5, 104
	mov x6, 164
	movz w7, 0x4c2c
	movk w7, 0x4f, lsl #16 
	bl rectangulo_duplicado
// (98, 121) (104,156) 504c29
	mov x1, 98
	mov x2, 121
	mov x5, 104
	mov x6, 156
	movz w7, 0x4c29
	movk w7, 0x50, lsl #16 
	bl rectangulo_duplicado
// (98, 93) (104,121) 3d3c1f
	mov x1, 98
	mov x2, 93
	mov x5, 104
	mov x6, 121
	movz w7, 0x3c1f
	movk w7, 0x3d, lsl #16 
	bl rectangulo_duplicado
// (98, 73) (104,93) 4f4c2c
	mov x1, 98
	mov x2, 73
	mov x5, 104
	mov x6, 93
	movz w7, 0x4c2c
	movk w7, 0x4f, lsl #16 
	bl rectangulo_duplicado
// (98, 53) (104,73) 434123
	mov x1, 98
	mov x2, 53
	mov x5, 104
	mov x6, 73
	movz w7, 0x4123
	movk w7, 0x43, lsl #16 
	bl rectangulo_duplicado
// (98, 46) (104,53) 414122
	mov x1, 98
	mov x2, 46
	mov x5, 104
	mov x6, 53
	movz w7, 0x4122
	movk w7, 0x41, lsl #16 
	bl rectangulo_duplicado
// (98, 40) (104,46) 3d3c1f
	mov x1, 98
	mov x2, 40
	mov x5, 104
	mov x6, 46
	movz w7, 0x3c1f
	movk w7, 0x3d, lsl #16 
	bl rectangulo_duplicado
// (98, 22) (104,40) 434123
	mov x1, 98
	mov x2, 22
	mov x5, 104
	mov x6, 40
	movz w7, 0x4123
	movk w7, 0x43, lsl #16 
	bl rectangulo_duplicado
// (98, 15) (104,22) 414122
	mov x1, 98
	mov x2, 15
	mov x5, 104
	mov x6, 22
	movz w7, 0x4122
	movk w7, 0x41, lsl #16 
	bl rectangulo_duplicado
// (98, 1) (104,15) 3d3c1f
	mov x1, 98
	mov x2, 1
	mov x5, 104
	mov x6, 15
	movz w7, 0x3c1f
	movk w7, 0x3d, lsl #16 
	bl rectangulo_duplicado
// (104,371) (111,384) 303c2c
	mov x1, 104
	mov x2, 371
	mov x5, 111
	mov x6, 384
	movz w7, 0x3c2c
	movk w7, 0x30, lsl #16 
	bl rectangulo_duplicado
// (104,344) (111,371) 384930
	mov x1, 104
	mov x2, 344
	mov x5, 111
	mov x6, 371
	movz w7, 0x4930
	movk w7, 0x38, lsl #16 
	bl rectangulo_duplicado
// (104,329) (111,344) 2c3828
	mov x1, 104
	mov x2, 329
	mov x5, 111
	mov x6, 344
	movz w7, 0x3828
	movk w7, 0x2c, lsl #16 
	bl rectangulo_duplicado
// (104,295) (111,329) 394930
	mov x1, 104
	mov x2, 295
	mov x5, 111
	mov x6, 329
	movz w7, 0x4930
	movk w7, 0x39, lsl #16 
	bl rectangulo_duplicado
// (104,281) (111,295) 283425
	mov x1, 104
	mov x2, 281
	mov x5, 111
	mov x6, 295
	movz w7, 0x3425
	movk w7, 0x28, lsl #16 
	bl rectangulo_duplicado
// (104,274) (111,281) 37452f
	mov x1, 104
	mov x2, 274
	mov x5, 111
	mov x6, 281
	movz w7, 0x452f
	movk w7, 0x37, lsl #16 
	bl rectangulo_duplicado
// (104,254) (111,274) 434528
	mov x1, 104
	mov x2, 254
	mov x5, 111
	mov x6, 274
	movz w7, 0x4528
	movk w7, 0x43, lsl #16 
	bl rectangulo_duplicado
// (104,234) (111,254) 535030
	mov x1, 104
	mov x2, 234
	mov x5, 111
	mov x6, 254
	movz w7, 0x5030
	movk w7, 0x53, lsl #16 
	bl rectangulo_duplicado
// (104,220) (111,234) 3f4123
	mov x1, 104
	mov x2, 220
	mov x5, 111
	mov x6, 234
	movz w7, 0x4123
	movk w7, 0x3f, lsl #16 
	bl rectangulo_duplicado
// (104,196) (111,220) 4f4c2c
	mov x1, 104
	mov x2, 196
	mov x5, 111
	mov x6, 220
	movz w7, 0x4c2c
	movk w7, 0x4f, lsl #16 
	bl rectangulo_duplicado
// (104,170) (111,196) 454427
	mov x1, 104
	mov x2, 170
	mov x5, 111
	mov x6, 196
	movz w7, 0x4427
	movk w7, 0x45, lsl #16 
	bl rectangulo_duplicado
// (104,117) (111,170) 55512f
	mov x1, 104
	mov x2, 117
	mov x5, 111
	mov x6, 170
	movz w7, 0x512f
	movk w7, 0x55, lsl #16 
	bl rectangulo_duplicado
// (104,89) (111,117) 534f29
	mov x1, 104
	mov x2, 89
	mov x5, 111
	mov x6, 117
	movz w7, 0x4f29
	movk w7, 0x53, lsl #16 
	bl rectangulo_duplicado
// (104,80) (111,89) 5f5a3c
	mov x1, 104
	mov x2, 80
	mov x5, 111
	mov x6, 89
	movz w7, 0x5a3c
	movk w7, 0x5f, lsl #16 
	bl rectangulo_duplicado
// (104,58) (111,80) 494928
	mov x1, 104
	mov x2, 58
	mov x5, 111
	mov x6, 80
	movz w7, 0x4928
	movk w7, 0x49, lsl #16 
	bl rectangulo_duplicado
// (104,40) (111,58) 55502c
	mov x1, 104
	mov x2, 40
	mov x5, 111
	mov x6, 58
	movz w7, 0x502c
	movk w7, 0x55, lsl #16 
	bl rectangulo_duplicado
// (104,27) (111,58) 494928
	mov x1, 104
	mov x2, 27
	mov x5, 111
	mov x6, 58
	movz w7, 0x4928
	movk w7, 0x49, lsl #16 
	bl rectangulo_duplicado
// (104,1) (111,27) 55502c
	mov x1, 104
	mov x2, 1
	mov x5, 111
	mov x6, 27
	movz w7, 0x502c
	movk w7, 0x55, lsl #16 
	bl rectangulo_duplicado
// (111,371) (118, 384) 303c2c
	mov x1, 111
	mov x2, 371
	mov x5, 118
	mov x6, 384
	movz w7, 0x3c2c
	movk w7, 0x30, lsl #16 
	bl rectangulo_duplicado
// (111,337) (118, 371) 394930
	mov x1, 111
	mov x2, 337
	mov x5, 118
	mov x6, 371
	movz w7, 0x4930
	movk w7, 0x39, lsl #16 
	bl rectangulo_duplicado
// (111,329) (118, 337) 2b3528
	mov x1, 111
	mov x2, 329
	mov x5, 118
	mov x6, 337
	movz w7, 0x3528
	movk w7, 0x2b, lsl #16 
	bl rectangulo_duplicado
// (111,302) (118, 329) 3b4d31
	mov x1, 111
	mov x2, 302
	mov x5, 118
	mov x6, 329
	movz w7, 0x4d31
	movk w7, 0x3b, lsl #16 
	bl rectangulo_duplicado
// (111,288) (118, 302) 2c3728
	mov x1, 111
	mov x2, 288
	mov x5, 118
	mov x6, 302
	movz w7, 0x3728
	movk w7, 0x2c, lsl #16 
	bl rectangulo_duplicado
// (111,281) (118, 288) 3b4b30
	mov x1, 111
	mov x2, 281
	mov x5, 118
	mov x6, 288
	movz w7, 0x4b30
	movk w7, 0x3b, lsl #16 
	bl rectangulo_duplicado
// (111,274) (118, 281) 37452f
	mov x1, 111
	mov x2, 274
	mov x5, 118
	mov x6, 281
	movz w7, 0x452f
	movk w7, 0x37, lsl #16 
	bl rectangulo_duplicado
// (111,267) (118, 274) 434528
	mov x1, 111
	mov x2, 267
	mov x5, 118
	mov x6, 274
	movz w7, 0x4528
	movk w7, 0x43, lsl #16 
	bl rectangulo_duplicado
// (111,226) (118, 267) 4d4f30
	mov x1, 111
	mov x2, 226
	mov x5, 118
	mov x6, 267
	movz w7, 0x4f30
	movk w7, 0x4d, lsl #16 
	bl rectangulo_duplicado
// (111,193) (118, 226) 413f22
	mov x1, 111
	mov x2, 193
	mov x5, 118
	mov x6, 226
	movz w7, 0x3f22
	movk w7, 0x41, lsl #16 
	bl rectangulo_duplicado
// (111,177) (118, 193) 544d2c
	mov x1, 111
	mov x2, 177
	mov x5, 118
	mov x6, 193
	movz w7, 0x4d2c
	movk w7, 0x54, lsl #16 
	bl rectangulo_duplicado
// (111,142) (118, 177) 4b492c
	mov x1, 111
	mov x2, 142
	mov x5, 118
	mov x6, 177
	movz w7, 0x492c
	movk w7, 0x4b, lsl #16 
	bl rectangulo_duplicado
// (111,117) (118, 142) 645f3f
	mov x1, 111
	mov x2, 117
	mov x5, 118
	mov x6, 142
	movz w7, 0x5f3f
	movk w7, 0x64, lsl #16 
	bl rectangulo_duplicado
// (111,76) (118, 117) 55512c
	mov x1, 111
	mov x2, 76
	mov x5, 118
	mov x6, 117
	movz w7, 0x512c
	movk w7, 0x55, lsl #16 
	bl rectangulo_duplicado
// (111,61) (118, 76) 5c5833
	mov x1, 111
	mov x2, 61
	mov x5, 118
	mov x6, 76
	movz w7, 0x5833
	movk w7, 0x5c, lsl #16 
	bl rectangulo_duplicado
// (111,40) (118, 61) 534f28
	mov x1, 111
	mov x2, 40
	mov x5, 118
	mov x6, 61
	movz w7, 0x4f28
	movk w7, 0x53, lsl #16 
	bl rectangulo_duplicado
// (111,30) (118, 40) 5c5833
	mov x1, 111
	mov x2, 30
	mov x5, 118
	mov x6, 40
	movz w7, 0x5833
	movk w7, 0x5c, lsl #16 
	bl rectangulo_duplicado
// (111,1) (118, 30) 534f28
	mov x1, 111
	mov x2, 1
	mov x5, 118
	mov x6, 30
	movz w7, 0x4f28
	movk w7, 0x53, lsl #16 
	bl rectangulo_duplicado
// (118,364) (124, 384) 2d3828
	mov x1, 118
	mov x2, 364
	mov x5, 124
	mov x6, 384
	movz w7, 0x3828
	movk w7, 0x2d, lsl #16 
	bl rectangulo_duplicado
// (118,344) (124, 364) 394930
	mov x1, 118
	mov x2, 344
	mov x5, 124
	mov x6, 364
	movz w7, 0x4930
	movk w7, 0x39, lsl #16 
	bl rectangulo_duplicado
// (118,337) (124, 344) 283425
	mov x1, 118
	mov x2, 337
	mov x5, 124
	mov x6, 344
	movz w7, 0x3425
	movk w7, 0x28, lsl #16 
	bl rectangulo_duplicado
// (118,329) (124, 337) 2b3528
	mov x1, 118
	mov x2, 329
	mov x5, 124
	mov x6, 337
	movz w7, 0x3528
	movk w7, 0x2b, lsl #16 
	bl rectangulo_duplicado
// (118,323) (124, 329) 283427
	mov x1, 118
	mov x2, 323
	mov x5, 124
	mov x6, 329
	movz w7, 0x3427
	movk w7, 0x28, lsl #16 
	bl rectangulo_duplicado
// (118,309) (124, 323) 394831
	mov x1, 118
	mov x2, 309
	mov x5, 124
	mov x6, 323
	movz w7, 0x4831
	movk w7, 0x39, lsl #16 
	bl rectangulo_duplicado
// (118,288) (124, 309) 2c3728
	mov x1, 118
	mov x2, 288
	mov x5, 124
	mov x6, 309
	movz w7, 0x3728
	movk w7, 0x2c, lsl #16 
	bl rectangulo_duplicado
// (118,276) (124, 288) 283120
	mov x1, 118
	mov x2, 276
	mov x5, 124
	mov x6, 288
	movz w7, 0x3120
	movk w7, 0x28, lsl #16 
	bl rectangulo_duplicado
// (118,267) (124, 276) 384028
	mov x1, 118
	mov x2, 267
	mov x5, 124
	mov x6, 276
	movz w7, 0x4028
	movk w7, 0x38, lsl #16 
	bl rectangulo_duplicado
// (118,233) (124, 267) 444324
	mov x1, 118
	mov x2, 233
	mov x5, 124
	mov x6, 267
	movz w7, 0x4324
	movk w7, 0x44, lsl #16 
	bl rectangulo_duplicado
// (118,218) (124, 233) 4c4728
	mov x1, 118
	mov x2, 218
	mov x5, 124
	mov x6, 233
	movz w7, 0x4728
	movk w7, 0x4c, lsl #16 
	bl rectangulo_duplicado
// (118,200) (124, 218) 4f4c2c
	mov x1, 118
	mov x2, 200
	mov x5, 124
	mov x6, 218
	movz w7, 0x4c2c
	movk w7, 0x4f, lsl #16 
	bl rectangulo_duplicado
// (118,184) (124, 200) 453c20
	mov x1, 118
	mov x2, 184
	mov x5, 124
	mov x6, 200
	movz w7, 0x3c20
	movk w7, 0x45, lsl #16 
	bl rectangulo_duplicado
// (118,170) (124, 184) 444020
	mov x1, 118
	mov x2, 170
	mov x5, 124
	mov x6, 184
	movz w7, 0x4020
	movk w7, 0x44, lsl #16 
	bl rectangulo_duplicado
// (118,129) (124, 170) 544d2c
	mov x1, 118
	mov x2, 129
	mov x5, 124
	mov x6, 170
	movz w7, 0x4d2c
	movk w7, 0x54, lsl #16 
	bl rectangulo_duplicado
// (118,111) (124, 129) 444024
	mov x1, 118
	mov x2, 111
	mov x5, 124
	mov x6, 129
	movz w7, 0x4024
	movk w7, 0x44, lsl #16 
	bl rectangulo_duplicado
// (118,84) (124, 111) 414023
	mov x1, 118
	mov x2, 84
	mov x5, 124
	mov x6, 111
	movz w7, 0x4023
	movk w7, 0x41, lsl #16 
	bl rectangulo_duplicado
// (118,61) (124, 84) 434125
	mov x1, 118
	mov x2, 61
	mov x5, 124
	mov x6, 84
	movz w7, 0x4125
	movk w7, 0x43, lsl #16 
	bl rectangulo_duplicado
// (118,40) (124, 61) 504c29
	mov x1, 118
	mov x2, 40
	mov x5, 124
	mov x6, 61
	movz w7, 0x4c29
	movk w7, 0x50, lsl #16 
	bl rectangulo_duplicado
// (118,30) (124, 40) 434125
	mov x1, 118
	mov x2, 30
	mov x5, 124
	mov x6, 40
	movz w7, 0x4125
	movk w7, 0x43, lsl #16 
	bl rectangulo_duplicado
// (118,1) (124, 30) 504c29
	mov x1, 118
	mov x2, 1
	mov x5, 124
	mov x6, 30
	movz w7, 0x4c29
	movk w7, 0x50, lsl #16 
	bl rectangulo_duplicado
// (124,364) (131, 384) 2d3828
	mov x1, 124
	mov x2, 364
	mov x5, 131
	mov x6, 384
	movz w7, 0x3828
	movk w7, 0x2d, lsl #16 
	bl rectangulo_duplicado
// (124,351) (131, 364) 394930
	mov x1, 124
	mov x2, 351
	mov x5, 131
	mov x6, 364
	movz w7, 0x4930
	movk w7, 0x39, lsl #16 
	bl rectangulo_duplicado
// (124,344) (131, 351) 2c3829
	mov x1, 124
	mov x2, 344
	mov x5, 131
	mov x6, 351
	movz w7, 0x3829
	movk w7, 0x2c, lsl #16 
	bl rectangulo_duplicado
// (124,337) (131, 344) 283425
	mov x1, 124
	mov x2, 337
	mov x5, 131
	mov x6, 344
	movz w7, 0x3425
	movk w7, 0x28, lsl #16 
	bl rectangulo_duplicado
// (124,329) (131, 337) 38482d
	mov x1, 124
	mov x2, 329
	mov x5, 131
	mov x6, 337
	movz w7, 0x482d
	movk w7, 0x38, lsl #16 
	bl rectangulo_duplicado
// (124,309) (131, 329) 2b3525
	mov x1, 124
	mov x2, 309
	mov x5, 131
	mov x6, 329
	movz w7, 0x3525
	movk w7, 0x2b, lsl #16 
	bl rectangulo_duplicado
// (124,302) (131, 309) 2d3828
	mov x1, 124
	mov x2, 302
	mov x5, 131
	mov x6, 309
	movz w7, 0x3828
	movk w7, 0x2d, lsl #16 
	bl rectangulo_duplicado
// (124,289) (131, 302) 3b4b30
	mov x1, 124
	mov x2, 289
	mov x5, 131
	mov x6, 302
	movz w7, 0x4b30
	movk w7, 0x3b, lsl #16 
	bl rectangulo_duplicado
// (124,281) (131, 289) 38492f
	mov x1, 124
	mov x2, 281
	mov x5, 131
	mov x6, 289
	movz w7, 0x492f
	movk w7, 0x38, lsl #16 
	bl rectangulo_duplicado
// (124,261) (131, 281) 293424
	mov x1, 124
	mov x2, 261
	mov x5, 131
	mov x6, 281
	movz w7, 0x3424
	movk w7, 0x29, lsl #16 
	bl rectangulo_duplicado
// (124,253) (131, 261) 414023
	mov x1, 124
	mov x2, 253
	mov x5, 131
	mov x6, 261
	movz w7, 0x4023
	movk w7, 0x41, lsl #16 
	bl rectangulo_duplicado
// (124,233) (131, 253) 454427
	mov x1, 124
	mov x2, 233
	mov x5, 131
	mov x6, 253
	movz w7, 0x4427
	movk w7, 0x45, lsl #16 
	bl rectangulo_duplicado
// (124,212) (131, 233) 444025
	mov x1, 124
	mov x2, 212
	mov x5, 131
	mov x6, 233
	movz w7, 0x4025
	movk w7, 0x44, lsl #16 
	bl rectangulo_duplicado
// (124,191) (131, 212) 4f4c2c
	mov x1, 124
	mov x2, 191
	mov x5, 131
	mov x6, 212
	movz w7, 0x4c2c
	movk w7, 0x4f, lsl #16 
	bl rectangulo_duplicado
// (124,157) (131, 191) 454428
	mov x1, 124
	mov x2, 157
	mov x5, 131
	mov x6, 191
	movz w7, 0x4428
	movk w7, 0x45, lsl #16 
	bl rectangulo_duplicado
// (124,109) (131, 157) 383921
	mov x1, 124
	mov x2, 109
	mov x5, 131
	mov x6, 157
	movz w7, 0x3921
	movk w7, 0x38, lsl #16 
	bl rectangulo_duplicado
// (124,83) (131, 109) 403f20
	mov x1, 124
	mov x2, 83
	mov x5, 131
	mov x6, 109
	movz w7, 0x3f20
	movk w7, 0x40, lsl #16 
	bl rectangulo_duplicado
// (124,53) (131, 83) 434124
	mov x1, 124
	mov x2, 53
	mov x5, 131
	mov x6, 83
	movz w7, 0x4124
	movk w7, 0x43, lsl #16 
	bl rectangulo_duplicado
// (124,40) (131, 53) 303020
	mov x1, 124
	mov x2, 40
	mov x5, 131
	mov x6, 53
	movz w7, 0x3020
	movk w7, 0x30, lsl #16 
	bl rectangulo_duplicado
// (124,22) (131, 40) 434124
	mov x1, 124
	mov x2, 22
	mov x5, 131
	mov x6, 40
	movz w7, 0x4124
	movk w7, 0x43, lsl #16 
	bl rectangulo_duplicado
// (124,1) (131, 22) 303020
	mov x1, 124
	mov x2, 1
	mov x5, 131
	mov x6, 22
	movz w7, 0x3020
	movk w7, 0x30, lsl #16 
	bl rectangulo_duplicado
// (131,364) (138, 384) 2d3828
	mov x1, 131
	mov x2, 364
	mov x5, 138
	mov x6, 384
	movz w7, 0x3828
	movk w7, 0x2d, lsl #16 
	bl rectangulo_duplicado
// (131,351) (138, 364) 2b3525
	mov x1, 131
	mov x2, 351
	mov x5, 138
	mov x6, 364
	movz w7, 0x3525
	movk w7, 0x2b, lsl #16 
	bl rectangulo_duplicado
// (131,342) (138, 351) 2c3829
	mov x1, 131
	mov x2, 342
	mov x5, 138
	mov x6, 351
	movz w7, 0x3829
	movk w7, 0x2c, lsl #16 
	bl rectangulo_duplicado
// (131,309) (138, 342) 384833
	mov x1, 131
	mov x2, 309
	mov x5, 138
	mov x6, 342
	movz w7, 0x4833
	movk w7, 0x38, lsl #16 
	bl rectangulo_duplicado
// (131,302) (138, 309) 2d3828
	mov x1, 131
	mov x2, 302
	mov x5, 138
	mov x6, 309
	movz w7, 0x3828
	movk w7, 0x2d, lsl #16 
	bl rectangulo_duplicado
// (131,289) (138, 302) 3b4b30
	mov x1, 131
	mov x2, 289
	mov x5, 138
	mov x6, 302
	movz w7, 0x4b30
	movk w7, 0x3b, lsl #16 
	bl rectangulo_duplicado
// (131,281) (138, 289) 38492f
	mov x1, 131
	mov x2, 281
	mov x5, 138
	mov x6, 289
	movz w7, 0x492f
	movk w7, 0x38, lsl #16 
	bl rectangulo_duplicado
// (131,267) (138, 281) 283424
	mov x1, 131
	mov x2, 267
	mov x5, 138
	mov x6, 281
	movz w7, 0x3424
	movk w7, 0x28, lsl #16 
	bl rectangulo_duplicado
// (131,261) (138, 267) 313119
	mov x1, 131
	mov x2, 261
	mov x5, 138
	mov x6, 267
	movz w7, 0x3119
	movk w7, 0x31, lsl #16 
	bl rectangulo_duplicado
// (131,253) (138, 261) 414023
	mov x1, 131
	mov x2, 253
	mov x5, 138
	mov x6, 261
	movz w7, 0x4023
	movk w7, 0x41, lsl #16 
	bl rectangulo_duplicado
// (131,233) (138, 253) 454427
	mov x1, 131
	mov x2, 233
	mov x5, 138
	mov x6, 253
	movz w7, 0x4427
	movk w7, 0x45, lsl #16 
	bl rectangulo_duplicado
// (131,196) (138, 233) 444021
	mov x1, 131
	mov x2, 196
	mov x5, 138
	mov x6, 233
	movz w7, 0x4021
	movk w7, 0x44, lsl #16 
	bl rectangulo_duplicado
// (131,179) (138, 196) 3f4423
	mov x1, 131
	mov x2, 179
	mov x5, 138
	mov x6, 196
	movz w7, 0x4423
	movk w7, 0x3f, lsl #16 
	bl rectangulo_duplicado
// (131,157) (138, 179) 504d2c
	mov x1, 131
	mov x2, 157
	mov x5, 138
	mov x6, 179
	movz w7, 0x4d2c
	movk w7, 0x50, lsl #16 
	bl rectangulo_duplicado
// (131,95) (138, 157) 454427
	mov x1, 131
	mov x2, 95
	mov x5, 138
	mov x6, 157
	movz w7, 0x4427
	movk w7, 0x45, lsl #16 
	bl rectangulo_duplicado
// (131,67) (138, 95) 282c1c
	mov x1, 131
	mov x2, 67
	mov x5, 138
	mov x6, 95
	movz w7, 0x2c1c
	movk w7, 0x28, lsl #16 
	bl rectangulo_duplicado
// (131,40) (138, 67) 302f18
	mov x1, 131
	mov x2, 40
	mov x5, 138
	mov x6, 67
	movz w7, 0x2f18
	movk w7, 0x30, lsl #16 
	bl rectangulo_duplicado
// (131,36) (138, 40) 282c1c
	mov x1, 131
	mov x2, 36
	mov x5, 138
	mov x6, 40
	movz w7, 0x2c1c
	movk w7, 0x28, lsl #16 
	bl rectangulo_duplicado
// (131,8) (138, 36) 302f18
	mov x1, 131
	mov x2, 8
	mov x5, 138
	mov x6, 36
	movz w7, 0x2f18
	movk w7, 0x30, lsl #16 
	bl rectangulo_duplicado
// (131,1) (138, 8) 353321
	mov x1, 131
	mov x2, 1
	mov x5, 138
	mov x6, 8
	movz w7, 0x3321
	movk w7, 0x35, lsl #16 
	bl rectangulo_duplicado
// (138,364) (144, 384) 2d3828
	mov x1, 138
	mov x2, 364
	mov x5, 144
	mov x6, 384
	movz w7, 0x3828
	movk w7, 0x2d, lsl #16 
	bl rectangulo_duplicado
// (138,357) (144, 364) 293424
	mov x1, 138
	mov x2, 357
	mov x5, 144
	mov x6, 364
	movz w7, 0x3424
	movk w7, 0x29, lsl #16 
	bl rectangulo_duplicado
// (138,343) (144, 357) 303c2c
	mov x1, 138
	mov x2, 343
	mov x5, 144
	mov x6, 357
	movz w7, 0x3c2c
	movk w7, 0x30, lsl #16 
	bl rectangulo_duplicado
// (138,329) (144, 343) 384833
	mov x1, 138
	mov x2, 329
	mov x5, 144
	mov x6, 343
	movz w7, 0x4833
	movk w7, 0x38, lsl #16 
	bl rectangulo_duplicado
// (138,295) (144, 329) 34402f
	mov x1, 138
	mov x2, 295
	mov x5, 144
	mov x6, 329
	movz w7, 0x402f
	movk w7, 0x34, lsl #16 
	bl rectangulo_duplicado
// (138,267) (144, 295) 39492f
	mov x1, 138
	mov x2, 267
	mov x5, 144
	mov x6, 295
	movz w7, 0x492f
	movk w7, 0x39, lsl #16 
	bl rectangulo_duplicado
// (138,253) (144, 267) 313119
	mov x1, 138
	mov x2, 253
	mov x5, 144
	mov x6, 267
	movz w7, 0x3119
	movk w7, 0x31, lsl #16 
	bl rectangulo_duplicado
// (138,233) (144, 253) 454427
	mov x1, 138
	mov x2, 233
	mov x5, 144
	mov x6, 253
	movz w7, 0x4427
	movk w7, 0x45, lsl #16 
	bl rectangulo_duplicado
// (138,217) (144, 233) 2b2c1e
	mov x1, 138
	mov x2, 217
	mov x5, 144
	mov x6, 233
	movz w7, 0x2c1e
	movk w7, 0x2b, lsl #16 
	bl rectangulo_duplicado
// (138,185) (144, 217) 2b2e1a
	mov x1, 138
	mov x2, 185
	mov x5, 144
	mov x6, 217
	movz w7, 0x2e1a
	movk w7, 0x2b, lsl #16 
	bl rectangulo_duplicado
// (138,137) (144, 185) 3f3d21
	mov x1, 138
	mov x2, 137
	mov x5, 144
	mov x6, 185
	movz w7, 0x3d21
	movk w7, 0x3f, lsl #16 
	bl rectangulo_duplicado
// (138,123) (144, 137) 2c2f19
	mov x1, 138
	mov x2, 123
	mov x5, 144
	mov x6, 137
	movz w7, 0x2f19
	movk w7, 0x2c, lsl #16 
	bl rectangulo_duplicado
// (138,87) (144, 123) 414023
	mov x1, 138
	mov x2, 87
	mov x5, 144
	mov x6, 123
	movz w7, 0x4023
	movk w7, 0x41, lsl #16 
	bl rectangulo_duplicado
// (138,67) (144, 87) 343520
	mov x1, 138
	mov x2, 67
	mov x5, 144
	mov x6, 87
	movz w7, 0x3520
	movk w7, 0x34, lsl #16 
	bl rectangulo_duplicado
// (138,40) (144, 67) 242c1f
	mov x1, 138
	mov x2, 40
	mov x5, 144
	mov x6, 67
	movz w7, 0x2c1f
	movk w7, 0x24, lsl #16 
	bl rectangulo_duplicado
// (138,36) (144, 40) 343520
	mov x1, 138
	mov x2, 36
	mov x5, 144
	mov x6, 40
	movz w7, 0x3520
	movk w7, 0x34, lsl #16 
	bl rectangulo_duplicado
// (138,8) (144, 36) 242c1f
	mov x1, 138
	mov x2, 8
	mov x5, 144
	mov x6, 36
	movz w7, 0x2c1f
	movk w7, 0x24, lsl #16 
	bl rectangulo_duplicado
// (138,1) (144, 8) 353321
	mov x1, 138
	mov x2, 1
	mov x5, 144
	mov x6, 8
	movz w7, 0x3321
	movk w7, 0x35, lsl #16 
	bl rectangulo_duplicado
// (144,364) (151, 384) 2d3828
	mov x1, 144
	mov x2, 364
	mov x5, 151
	mov x6, 384
	movz w7, 0x3828
	movk w7, 0x2d, lsl #16 
	bl rectangulo_duplicado
// (144,357) (151, 364) 293424
	mov x1, 144
	mov x2, 357
	mov x5, 151
	mov x6, 364
	movz w7, 0x3424
	movk w7, 0x29, lsl #16 
	bl rectangulo_duplicado
// (144,343) (151, 357) 303c2c
	mov x1, 144
	mov x2, 343
	mov x5, 151
	mov x6, 357
	movz w7, 0x3c2c
	movk w7, 0x30, lsl #16 
	bl rectangulo_duplicado
// (144,329) (151, 343) 47593d
	mov x1, 144
	mov x2, 329
	mov x5, 151
	mov x6, 343
	movz w7, 0x593d
	movk w7, 0x47, lsl #16 
	bl rectangulo_duplicado
// (144,321) (151, 329) 394834
	mov x1, 144
	mov x2, 321
	mov x5, 151
	mov x6, 329
	movz w7, 0x4834
	movk w7, 0x39, lsl #16 
	bl rectangulo_duplicado
// (144,308) (151, 321) 384433
	mov x1, 144
	mov x2, 308
	mov x5, 151
	mov x6, 321
	movz w7, 0x4433
	movk w7, 0x38, lsl #16 
	bl rectangulo_duplicado
// (144,301) (151, 308) 394734
	mov x1, 144
	mov x2, 301
	mov x5, 151
	mov x6, 308
	movz w7, 0x4734
	movk w7, 0x39, lsl #16 
	bl rectangulo_duplicado
// (144,282) (151, 301) 35492f
	mov x1, 144
	mov x2, 282
	mov x5, 151
	mov x6, 301
	movz w7, 0x492f
	movk w7, 0x35, lsl #16 
	bl rectangulo_duplicado
// (144,267) (151, 282) 283023
	mov x1, 144
	mov x2, 267
	mov x5, 151
	mov x6, 282
	movz w7, 0x3023
	movk w7, 0x28, lsl #16 
	bl rectangulo_duplicado
// (144,261) (151, 267) 273322
	mov x1, 144
	mov x2, 261
	mov x5, 151
	mov x6, 267
	movz w7, 0x3322
	movk w7, 0x27, lsl #16 
	bl rectangulo_duplicado
// (144,252) (151, 261) 262817
	mov x1, 144
	mov x2, 252
	mov x5, 151
	mov x6, 261
	movz w7, 0x2817
	movk w7, 0x26, lsl #16 
	bl rectangulo_duplicado
// (144,233) (151, 252) 282c1b
	mov x1, 144
	mov x2, 233
	mov x5, 151
	mov x6, 252
	movz w7, 0x2c1b
	movk w7, 0x28, lsl #16 
	bl rectangulo_duplicado
// (144,219) (151, 233) 2b2e1d
	mov x1, 144
	mov x2, 219
	mov x5, 151
	mov x6, 233
	movz w7, 0x2e1d
	movk w7, 0x2b, lsl #16 
	bl rectangulo_duplicado
// (144,201) (151, 219) 39391f
	mov x1, 144
	mov x2, 201
	mov x5, 151
	mov x6, 219
	movz w7, 0x391f
	movk w7, 0x39, lsl #16 
	bl rectangulo_duplicado
// (144,183) (151, 201) 37371d
	mov x1, 144
	mov x2, 183
	mov x5, 151
	mov x6, 201
	movz w7, 0x371d
	movk w7, 0x37, lsl #16 
	bl rectangulo_duplicado
// (144,157) (151, 183) 35351b
	mov x1, 144
	mov x2, 157
	mov x5, 151
	mov x6, 183
	movz w7, 0x351b
	movk w7, 0x35, lsl #16 
	bl rectangulo_duplicado
// (144,139) (151, 157) 383820
	mov x1, 144
	mov x2, 139
	mov x5, 151
	mov x6, 157
	movz w7, 0x3820
	movk w7, 0x38, lsl #16 
	bl rectangulo_duplicado
// (144,108) (151, 139) 3c3c21
	mov x1, 144
	mov x2, 108
	mov x5, 151
	mov x6, 139
	movz w7, 0x3c21
	movk w7, 0x3c, lsl #16 
	bl rectangulo_duplicado
// (144,63) (151, 108) 35351c
	mov x1, 144
	mov x2, 63
	mov x5, 151
	mov x6, 108
	movz w7, 0x351c
	movk w7, 0x35, lsl #16 
	bl rectangulo_duplicado
// (144,40) (151, 63) 2f301b
	mov x1, 144
	mov x2, 40
	mov x5, 151
	mov x6, 63
	movz w7, 0x301b
	movk w7, 0x2f, lsl #16 
	bl rectangulo_duplicado
// (144,32) (151, 40) 35351c
	mov x1, 144
	mov x2, 32
	mov x5, 151
	mov x6, 40
	movz w7, 0x351c
	movk w7, 0x35, lsl #16 
	bl rectangulo_duplicado
// (144,9) (151, 31) 2f301b
	mov x1, 144
	mov x2, 9
	mov x5, 151
	mov x6, 32
	movz w7, 0x301b
	movk w7, 0x2f, lsl #16 
	bl rectangulo_duplicado
// (144,1) (151, 9) 202415
	mov x1, 144
	mov x2, 1
	mov x5, 151
	mov x6, 9
	movz w7, 0x2415
	movk w7, 0x20, lsl #16 
	bl rectangulo_duplicado
// (151,372) (157, 384) 3f4f34
	mov x1, 151
	mov x2, 372
	mov x5, 157
	mov x6, 384
	movz w7, 0x4f34
	movk w7, 0x3f, lsl #16 
	bl rectangulo_duplicado
// (151,358) (157, 372) 293424
	mov x1, 151
	mov x2, 358
	mov x5, 157
	mov x6, 372
	movz w7, 0x3424
	movk w7, 0x29, lsl #16 
	bl rectangulo_duplicado
// (151,350) (157, 358) 2b3528
	mov x1, 151
	mov x2, 350
	mov x5, 157
	mov x6, 358
	movz w7, 0x3528
	movk w7, 0x2b, lsl #16 
	bl rectangulo_duplicado
// (151,322) (157, 350) 415438
	mov x1, 151
	mov x2, 322
	mov x5, 157
	mov x6, 350
	movz w7, 0x5438
	movk w7, 0x41, lsl #16 
	bl rectangulo_duplicado
// (151,309) (157, 322) 384433
	mov x1, 151
	mov x2, 309
	mov x5, 157
	mov x6, 322
	movz w7, 0x4433
	movk w7, 0x38, lsl #16 
	bl rectangulo_duplicado
// (151,301) (157, 309) 293427
	mov x1, 151
	mov x2, 301
	mov x5, 157
	mov x6, 309
	movz w7, 0x3427
	movk w7, 0x29, lsl #16 
	bl rectangulo_duplicado
// (151,289) (157, 301) 38492f
	mov x1, 151
	mov x2, 289
	mov x5, 157
	mov x6, 301
	movz w7, 0x492f
	movk w7, 0x38, lsl #16 
	bl rectangulo_duplicado
// (151,274) (157, 289) 263021
	mov x1, 151
	mov x2, 274
	mov x5, 157
	mov x6, 289
	movz w7, 0x3021
	movk w7, 0x26, lsl #16 
	bl rectangulo_duplicado
// (151,261) (157, 274) 374930
	mov x1, 151
	mov x2, 261
	mov x5, 157
	mov x6, 274
	movz w7, 0x4930
	movk w7, 0x37, lsl #16 
	bl rectangulo_duplicado
// (151,253) (157, 261) 26271a
	mov x1, 151
	mov x2, 253
	mov x5, 157
	mov x6, 261
	movz w7, 0x271a
	movk w7, 0x26, lsl #16 
	bl rectangulo_duplicado
// (151,246) (157, 253) 2c382a
	mov x1, 151
	mov x2, 246
	mov x5, 157
	mov x6, 253
	movz w7, 0x382a
	movk w7, 0x2c, lsl #16 
	bl rectangulo_duplicado
// (151,217) (157, 246) 38381f
	mov x1, 151
	mov x2, 217
	mov x5, 157
	mov x6, 246
	movz w7, 0x381f
	movk w7, 0x38, lsl #16 
	bl rectangulo_duplicado
// (151,196) (157, 217) 3c3c22
	mov x1, 151
	mov x2, 196
	mov x5, 157
	mov x6, 217
	movz w7, 0x3c22
	movk w7, 0x3c, lsl #16 
	bl rectangulo_duplicado
// (151,183) (157, 196) 33341d
	mov x1, 151
	mov x2, 183
	mov x5, 157
	mov x6, 196
	movz w7, 0x341d
	movk w7, 0x33, lsl #16 
	bl rectangulo_duplicado
// (151,156) (157, 183) 2b2e1a
	mov x1, 151
	mov x2, 156
	mov x5, 157
	mov x6, 183
	movz w7, 0x2e1a
	movk w7, 0x2b, lsl #16 
	bl rectangulo_duplicado
// (151,143) (157, 156) 282a1b
	mov x1, 151
	mov x2, 143
	mov x5, 157
	mov x6, 156
	movz w7, 0x2a1b
	movk w7, 0x28, lsl #16 
	bl rectangulo_duplicado
// (151,125) (157, 143) 37371f
	mov x1, 151
	mov x2, 125
	mov x5, 157
	mov x6, 143
	movz w7, 0x371f
	movk w7, 0x37, lsl #16 
	bl rectangulo_duplicado
// (151,95) (157, 125) 34341c
	mov x1, 151
	mov x2, 95
	mov x5, 157
	mov x6, 125
	movz w7, 0x341c
	movk w7, 0x34, lsl #16 
	bl rectangulo_duplicado
// (151,84) (157, 95) 242819
	mov x1, 151
	mov x2, 84
	mov x5, 157
	mov x6, 95
	movz w7, 0x2819
	movk w7, 0x24, lsl #16 
	bl rectangulo_duplicado
// (151,46) (157, 84) 27281b
	mov x1, 151
	mov x2, 46
	mov x5, 157
	mov x6, 84
	movz w7, 0x281b
	movk w7, 0x27, lsl #16 
	bl rectangulo_duplicado
// (151,40) (157, 46) 282b19
	mov x1, 151
	mov x2, 40
	mov x5, 157
	mov x6, 46
	movz w7, 0x2b19
	movk w7, 0x28, lsl #16 
	bl rectangulo_duplicado
// (151,15) (157, 40) 27281b
	mov x1, 151
	mov x2, 15
	mov x5, 157
	mov x6, 40
	movz w7, 0x281b
	movk w7, 0x27, lsl #16 
	bl rectangulo_duplicado
// (151,1) (157, 15) 282b19
	mov x1, 151
	mov x2, 1
	mov x5, 157
	mov x6, 15
	movz w7, 0x2b19
	movk w7, 0x28, lsl #16 
	bl rectangulo_duplicado
// (157,358) (164, 384) 38482d
	mov x1, 157
	mov x2, 358
	mov x5, 164
	mov x6, 384
	movz w7, 0x482d
	movk w7, 0x38, lsl #16 
	bl rectangulo_duplicado
// (157,350) (164, 358) 2b3528
	mov x1, 157
	mov x2, 350
	mov x5, 164
	mov x6, 358
	movz w7, 0x3528
	movk w7, 0x2b, lsl #16 
	bl rectangulo_duplicado
// (157,322) (164, 350) 415438
	mov x1, 157
	mov x2, 322
	mov x5, 164
	mov x6, 350
	movz w7, 0x5438
	movk w7, 0x41, lsl #16 
	bl rectangulo_duplicado
// (157,315) (164, 322) 2b3524
	mov x1, 157
	mov x2, 315
	mov x5, 164
	mov x6, 322
	movz w7, 0x3524
	movk w7, 0x2b, lsl #16 
	bl rectangulo_duplicado
// (157,309) (164, 315) 354330
	mov x1, 157
	mov x2, 309
	mov x5, 164
	mov x6, 315
	movz w7, 0x4330
	movk w7, 0x35, lsl #16 
	bl rectangulo_duplicado
// (157,289) (164, 309) 283423
	mov x1, 157
	mov x2, 289
	mov x5, 164
	mov x6, 309
	movz w7, 0x3423
	movk w7, 0x28, lsl #16 
	bl rectangulo_duplicado
// (157,274) (164, 289) 262f24
	mov x1, 157
	mov x2, 274
	mov x5, 164
	mov x6, 289
	movz w7, 0x2f24
	movk w7, 0x26, lsl #16 
	bl rectangulo_duplicado
// (157,247) (164, 274) 35452b
	mov x1, 157
	mov x2, 247
	mov x5, 164
	mov x6, 274
	movz w7, 0x452b
	movk w7, 0x35, lsl #16 
	bl rectangulo_duplicado
// (157,231) (164, 247) 2f341e
	mov x1, 157
	mov x2, 231
	mov x5, 164
	mov x6, 247
	movz w7, 0x341e
	movk w7, 0x2f, lsl #16 
	bl rectangulo_duplicado
// (157,213) (164, 231) 2e301f
	mov x1, 157
	mov x2, 213
	mov x5, 164
	mov x6, 231
	movz w7, 0x301f
	movk w7, 0x2e, lsl #16 
	bl rectangulo_duplicado
// (157,200) (164, 213) 2a2f19
	mov x1, 157
	mov x2, 200
	mov x5, 164
	mov x6, 213
	movz w7, 0x2f19
	movk w7, 0x2a, lsl #16 
	bl rectangulo_duplicado
// (157,186) (164, 200) 24281a
	mov x1, 157
	mov x2, 186
	mov x5, 164
	mov x6, 200
	movz w7, 0x281a
	movk w7, 0x24, lsl #16 
	bl rectangulo_duplicado
// (157,137) (164, 186) 262b1e
	mov x1, 157
	mov x2, 137
	mov x5, 164
	mov x6, 186
	movz w7, 0x2b1e
	movk w7, 0x26, lsl #16 
	bl rectangulo_duplicado
// (157,90) (164, 137) 242718
	mov x1, 157
	mov x2, 90
	mov x5, 164
	mov x6, 137
	movz w7, 0x2718
	movk w7, 0x24, lsl #16 
	bl rectangulo_duplicado
// (157,62) (164, 90) 282b19
	mov x1, 157
	mov x2, 62
	mov x5, 164
	mov x6, 90
	movz w7, 0x2b19
	movk w7, 0x28, lsl #16 
	bl rectangulo_duplicado
// (157,40) (164, 62) 242818
	mov x1, 157
	mov x2, 40
	mov x5, 164
	mov x6, 62
	movz w7, 0x2818
	movk w7, 0x24, lsl #16 
	bl rectangulo_duplicado
// (157,31) (164, 40) 282b19
	mov x1, 157
	mov x2, 31
	mov x5, 164
	mov x6, 40
	movz w7, 0x2b19
	movk w7, 0x28, lsl #16 
	bl rectangulo_duplicado
// (157,1) (164, 31) 242818
	mov x1, 157
	mov x2, 1
	mov x5, 164
	mov x6, 31
	movz w7, 0x2818
	movk w7, 0x24, lsl #16 
	bl rectangulo_duplicado
// (164,358) (171, 384) 38482d
	mov x1, 164
	mov x2, 358
	mov x5, 171
	mov x6, 384
	movz w7, 0x482d
	movk w7, 0x38, lsl #16 
	bl rectangulo_duplicado
// (164,350) (171, 358) 2b3528
	mov x1, 164
	mov x2, 350
	mov x5, 171
	mov x6, 358
	movz w7, 0x3528
	movk w7, 0x2b, lsl #16 
	bl rectangulo_duplicado
// (164,343) (171, 350) 283427
	mov x1, 164
	mov x2, 343
	mov x5, 171
	mov x6, 350
	movz w7, 0x3427
	movk w7, 0x28, lsl #16 
	bl rectangulo_duplicado
// (164,329) (171, 343) 435538
	mov x1, 164
	mov x2, 329
	mov x5, 171
	mov x6, 343
	movz w7, 0x5538
	movk w7, 0x43, lsl #16 
	bl rectangulo_duplicado
// (164,322) (171, 329) 293427
	mov x1, 164
	mov x2, 322
	mov x5, 171
	mov x6, 329
	movz w7, 0x3427
	movk w7, 0x29, lsl #16 
	bl rectangulo_duplicado
// (164,315) (171, 322) 2b3524
	mov x1, 164
	mov x2, 315
	mov x5, 171
	mov x6, 322
	movz w7, 0x3524
	movk w7, 0x2b, lsl #16 
	bl rectangulo_duplicado
// (164,302) (171, 315) 394930
	mov x1, 164
	mov x2, 302
	mov x5, 171
	mov x6, 315
	movz w7, 0x4930
	movk w7, 0x39, lsl #16 
	bl rectangulo_duplicado
// (164,295) (171, 302) 2c3827
	mov x1, 164
	mov x2, 295
	mov x5, 171
	mov x6, 302
	movz w7, 0x3827
	movk w7, 0x2c, lsl #16 
	bl rectangulo_duplicado
// (164,281) (171, 295) 31412e
	mov x1, 164
	mov x2, 281
	mov x5, 171
	mov x6, 295
	movz w7, 0x412e
	movk w7, 0x31, lsl #16 
	bl rectangulo_duplicado
// (164,273) (171, 281) 34412f
	mov x1, 164
	mov x2, 273
	mov x5, 171
	mov x6, 281
	movz w7, 0x412f
	movk w7, 0x34, lsl #16 
	bl rectangulo_duplicado
// (164,240) (171, 273) 38462f
	mov x1, 164
	mov x2, 240
	mov x5, 171
	mov x6, 273
	movz w7, 0x462f
	movk w7, 0x38, lsl #16 
	bl rectangulo_duplicado
// (164,225) (171, 240) 2b2f1b
	mov x1, 164
	mov x2, 225
	mov x5, 171
	mov x6, 240
	movz w7, 0x2f1b
	movk w7, 0x2b, lsl #16 
	bl rectangulo_duplicado
// (164,189) (171, 225) 191e15
	mov x1, 164
	mov x2, 189
	mov x5, 171
	mov x6, 225
	movz w7, 0x1e15
	movk w7, 0x19, lsl #16 
	bl rectangulo_duplicado
// (164,177) (171, 189) 1a2116
	mov x1, 164
	mov x2, 177
	mov x5, 171
	mov x6, 189
	movz w7, 0x2116
	movk w7, 0x1a, lsl #16 
	bl rectangulo_duplicado
// (164,157) (171, 177) 191e16
	mov x1, 164
	mov x2, 157
	mov x5, 171
	mov x6, 177
	movz w7, 0x1e16
	movk w7, 0x19, lsl #16 
	bl rectangulo_duplicado
// (164,90) (171, 157) 242718
	mov x1, 164
	mov x2, 90
	mov x5, 171
	mov x6, 157
	movz w7, 0x2718
	movk w7, 0x24, lsl #16 
	bl rectangulo_duplicado
// (164,59) (171, 90) 282b19
	mov x1, 164
	mov x2, 59
	mov x5, 171
	mov x6, 90
	movz w7, 0x2b19
	movk w7, 0x28, lsl #16 
	bl rectangulo_duplicado
// (164,40) (171, 59) 1a1e1a
	mov x1, 164
	mov x2, 40
	mov x5, 171
	mov x6, 59
	movz w7, 0x1e1a
	movk w7, 0x1a, lsl #16 
	bl rectangulo_duplicado
// (164,28) (171, 40) 282b19
	mov x1, 164
	mov x2, 28
	mov x5, 171
	mov x6, 40
	movz w7, 0x2b19
	movk w7, 0x28, lsl #16 
	bl rectangulo_duplicado
// (164,1) (171, 28) 1a1e1a
	mov x1, 164
	mov x2, 1
	mov x5, 171
	mov x6, 28
	movz w7, 0x1e1a
	movk w7, 0x1a, lsl #16 
	bl rectangulo_duplicado
// (171,372) (178, 384) 34442c
	mov x1, 171
	mov x2, 372
	mov x5, 178
	mov x6, 384
	movz w7, 0x442c
	movk w7, 0x34, lsl #16 
	bl rectangulo_duplicado
// (171,364) (178, 372) 283424
	mov x1, 171
	mov x2, 364
	mov x5, 178
	mov x6, 372
	movz w7, 0x3424
	movk w7, 0x28, lsl #16 
	bl rectangulo_duplicado
// (171,358) (178, 364) 2f3c2b
	mov x1, 171
	mov x2, 358
	mov x5, 178
	mov x6, 364
	movz w7, 0x3c2b
	movk w7, 0x2f, lsl #16 
	bl rectangulo_duplicado
// (171,343) (178, 358) 283427
	mov x1, 171
	mov x2, 343
	mov x5, 178
	mov x6, 358
	movz w7, 0x3427
	movk w7, 0x28, lsl #16 
	bl rectangulo_duplicado
// (171,329) (178, 343) 435538
	mov x1, 171
	mov x2, 329
	mov x5, 178
	mov x6, 343
	movz w7, 0x5538
	movk w7, 0x43, lsl #16 
	bl rectangulo_duplicado
// (171,322) (178, 329) 293427
	mov x1, 171
	mov x2, 322
	mov x5, 178
	mov x6, 329
	movz w7, 0x3427
	movk w7, 0x29, lsl #16 
	bl rectangulo_duplicado
// (171,302) (178, 322) 394930
	mov x1, 171
	mov x2, 302
	mov x5, 178
	mov x6, 322
	movz w7, 0x4930
	movk w7, 0x39, lsl #16 
	bl rectangulo_duplicado
// (171,295) (178, 302) 37452f
	mov x1, 171
	mov x2, 295
	mov x5, 178
	mov x6, 302
	movz w7, 0x452f
	movk w7, 0x37, lsl #16 
	bl rectangulo_duplicado
// (171,280) (178, 295) 2b2f1e
	mov x1, 171
	mov x2, 280
	mov x5, 178
	mov x6, 295
	movz w7, 0x2f1e
	movk w7, 0x2b, lsl #16 
	bl rectangulo_duplicado
// (171,257) (178, 280) 2e3121
	mov x1, 171
	mov x2, 257
	mov x5, 178
	mov x6, 280
	movz w7, 0x3121
	movk w7, 0x2e, lsl #16 
	bl rectangulo_duplicado
// (171,225) (178, 257) 272a1b
	mov x1, 171
	mov x2, 225
	mov x5, 178
	mov x6, 257
	movz w7, 0x2a1b
	movk w7, 0x27, lsl #16 
	bl rectangulo_duplicado
// (171,208) (178, 225) 1e2419
	mov x1, 171
	mov x2, 208
	mov x5, 178
	mov x6, 225
	movz w7, 0x2419
	movk w7, 0x1e, lsl #16 
	bl rectangulo_duplicado
// (171,191) (178, 208) 232a1b
	mov x1, 171
	mov x2, 191
	mov x5, 178
	mov x6, 208
	movz w7, 0x2a1b
	movk w7, 0x23, lsl #16 
	bl rectangulo_duplicado
// (171,151) (178, 191) 242c1e
	mov x1, 171
	mov x2, 151
	mov x5, 178
	mov x6, 191
	movz w7, 0x2c1e
	movk w7, 0x24, lsl #16 
	bl rectangulo_duplicado
// (171,101) (178, 151) 222b1b
	mov x1, 171
	mov x2, 101
	mov x5, 178
	mov x6, 151
	movz w7, 0x2b1b
	movk w7, 0x22, lsl #16 
	bl rectangulo_duplicado
// (171,81) (178, 101) 1a2119
	mov x1, 171
	mov x2, 81
	mov x5, 178
	mov x6, 101
	movz w7, 0x2119
	movk w7, 0x1a, lsl #16 
	bl rectangulo_duplicado
// (171,46) (178, 81) 1a1e17
	mov x1, 171
	mov x2, 46
	mov x5, 178
	mov x6, 81
	movz w7, 0x1e17
	movk w7, 0x1a, lsl #16 
	bl rectangulo_duplicado
// (171,40) (178, 46) 262b23
	mov x1, 171
	mov x2, 40
	mov x5, 178
	mov x6, 46
	movz w7, 0x2b23
	movk w7, 0x26, lsl #16 
	bl rectangulo_duplicado
// (171,15) (178, 40) 1a1e17
	mov x1, 171
	mov x2, 15
	mov x5, 178
	mov x6, 40
	movz w7, 0x1e17
	movk w7, 0x1a, lsl #16 
	bl rectangulo_duplicado
// (171,1) (178, 15) 262b23
	mov x1, 171
	mov x2, 1
	mov x5, 178
	mov x6, 15
	movz w7, 0x2b23
	movk w7, 0x26, lsl #16 
	bl rectangulo_duplicado
// (178,372) (185, 384) 262b23
	mov x1, 178
	mov x2, 372
	mov x5, 185
	mov x6, 384
	movz w7, 0x2b23
	movk w7, 0x26, lsl #16 
	bl rectangulo_duplicado
// (178,364) (185, 372) 283424
	mov x1, 178
	mov x2, 364
	mov x5, 185
	mov x6, 372
	movz w7, 0x3424
	movk w7, 0x28, lsl #16 
	bl rectangulo_duplicado
// (178,356) (185, 364) 2f3c2b
	mov x1, 178
	mov x2, 356
	mov x5, 185
	mov x6, 364
	movz w7, 0x3c2b
	movk w7, 0x2f, lsl #16 
	bl rectangulo_duplicado
// (178,342) (185, 356) 3b4b30
	mov x1, 178
	mov x2, 342
	mov x5, 185
	mov x6, 356
	movz w7, 0x4b30
	movk w7, 0x3b, lsl #16 
	bl rectangulo_duplicado
// (178,322) (185, 342) 293424
	mov x1, 178
	mov x2, 322
	mov x5, 185
	mov x6, 342
	movz w7, 0x3424
	movk w7, 0x29, lsl #16 
	bl rectangulo_duplicado
// (178,315) (185, 322) 3c4c31
	mov x1, 178
	mov x2, 315
	mov x5, 185
	mov x6, 322
	movz w7, 0x4c31
	movk w7, 0x3c, lsl #16 
	bl rectangulo_duplicado
// (178,302) (185, 315) 394930
	mov x1, 178
	mov x2, 302
	mov x5, 185
	mov x6, 315
	movz w7, 0x4930
	movk w7, 0x39, lsl #16 
	bl rectangulo_duplicado
// (178,288) (185, 302) 253023
	mov x1, 178
	mov x2, 288
	mov x5, 185
	mov x6, 302
	movz w7, 0x3023
	movk w7, 0x25, lsl #16 
	bl rectangulo_duplicado
// (178,254) (185, 288) 3b4a30
	mov x1, 178
	mov x2, 254
	mov x5, 185
	mov x6, 288
	movz w7, 0x4a30
	movk w7, 0x3b, lsl #16 
	bl rectangulo_duplicado
// (178,240) (185, 254) 272b1d
	mov x1, 178
	mov x2, 240
	mov x5, 185
	mov x6, 254
	movz w7, 0x2b1d
	movk w7, 0x27, lsl #16 
	bl rectangulo_duplicado
// (178,226) (185, 240) 232a1b
	mov x1, 178
	mov x2, 226
	mov x5, 185
	mov x6, 240
	movz w7, 0x2a1b
	movk w7, 0x23, lsl #16 
	bl rectangulo_duplicado
// (178,197) (185, 226) 222f21
	mov x1, 178
	mov x2, 197
	mov x5, 185
	mov x6, 226
	movz w7, 0x2f21
	movk w7, 0x22, lsl #16 
	bl rectangulo_duplicado
// (178,178) (185, 197) 1f2b1a
	mov x1, 178
	mov x2, 178
	mov x5, 185
	mov x6, 197
	movz w7, 0x2b1a
	movk w7, 0x1f, lsl #16 
	bl rectangulo_duplicado
// (178,149) (185, 178) 1f2b1a
	mov x1, 178
	mov x2, 149
	mov x5, 185
	mov x6, 178
	movz w7, 0x2b1a
	movk w7, 0x1f, lsl #16 
	bl rectangulo_duplicado
// (178,133) (185, 149) 1a2119
	mov x1, 178
	mov x2, 133
	mov x5, 185
	mov x6, 149
	movz w7, 0x2119
	movk w7, 0x1a, lsl #16 
	bl rectangulo_duplicado
// (178,115) (185, 133) 1a1e17
	mov x1, 178
	mov x2, 115
	mov x5, 185
	mov x6, 133
	movz w7, 0x1e17
	movk w7, 0x1a, lsl #16 
	bl rectangulo_duplicado
// (178,101) (185, 115) 1a2119
	mov x1, 178
	mov x2, 101
	mov x5, 185
	mov x6, 115
	movz w7, 0x2119
	movk w7, 0x1a, lsl #16 
	bl rectangulo_duplicado
// (178,93) (185, 101) 27301f
	mov x1, 178
	mov x2, 93
	mov x5, 185
	mov x6, 101
	movz w7, 0x301f
	movk w7, 0x27, lsl #16 
	bl rectangulo_duplicado
// (178,69) (185, 93) 191f17
	mov x1, 178
	mov x2, 69
	mov x5, 185
	mov x6, 93
	movz w7, 0x1f17
	movk w7, 0x19, lsl #16 
	bl rectangulo_duplicado
// (178,1) (185, 69) 1a2119
	mov x1, 178
	mov x2, 1
	mov x5, 185
	mov x6, 69
	movz w7, 0x2119
	movk w7, 0x1a, lsl #16 
	bl rectangulo_duplicado
// (185,372) (191, 384) 2c3727
	mov x1, 185
	mov x2, 372
	mov x5, 191
	mov x6, 384
	movz w7, 0x3727
	movk w7, 0x2c, lsl #16 
	bl rectangulo_duplicado
// (185,364) (191, 372) 283424
	mov x1, 185
	mov x2, 364
	mov x5, 191
	mov x6, 372
	movz w7, 0x3424
	movk w7, 0x28, lsl #16 
	bl rectangulo_duplicado
// (185,356) (191, 364) 2f3c2b
	mov x1, 185
	mov x2, 356
	mov x5, 191
	mov x6, 364
	movz w7, 0x3c2b
	movk w7, 0x2f, lsl #16 
	bl rectangulo_duplicado
// (185,336) (191, 356) 3b4b30
	mov x1, 185
	mov x2, 336
	mov x5, 191
	mov x6, 356
	movz w7, 0x4b30
	movk w7, 0x3b, lsl #16 
	bl rectangulo_duplicado
// (185,323) (191, 336) 283323
	mov x1, 185
	mov x2, 323
	mov x5, 191
	mov x6, 336
	movz w7, 0x3323
	movk w7, 0x28, lsl #16 
	bl rectangulo_duplicado
// (185,309) (191, 323) 394930
	mov x1, 185
	mov x2, 309
	mov x5, 191
	mov x6, 323
	movz w7, 0x4930
	movk w7, 0x39, lsl #16 
	bl rectangulo_duplicado
// (185,295) (191, 309) 283323
	mov x1, 185
	mov x2, 295
	mov x5, 191
	mov x6, 309
	movz w7, 0x3323
	movk w7, 0x28, lsl #16 
	bl rectangulo_duplicado
// (185,272) (191, 295) 38492f
	mov x1, 185
	mov x2, 272
	mov x5, 191
	mov x6, 295
	movz w7, 0x492f
	movk w7, 0x38, lsl #16 
	bl rectangulo_duplicado
// (185,251) (191, 272) 35452b
	mov x1, 185
	mov x2, 251
	mov x5, 191
	mov x6, 272
	movz w7, 0x452b
	movk w7, 0x35, lsl #16 
	bl rectangulo_duplicado
// (185,226) (191, 251) 30382b
	mov x1, 185
	mov x2, 226
	mov x5, 191
	mov x6, 251
	movz w7, 0x382b
	movk w7, 0x30, lsl #16 
	bl rectangulo_duplicado
// (185,198) (191, 226) 21271a
	mov x1, 185
	mov x2, 198
	mov x5, 191
	mov x6, 226
	movz w7, 0x271a
	movk w7, 0x21, lsl #16 
	bl rectangulo_duplicado
// (185,186) (191, 198) 1a2119
	mov x1, 185
	mov x2, 186
	mov x5, 191
	mov x6, 198
	movz w7, 0x2119
	movk w7, 0x1a, lsl #16 
	bl rectangulo_duplicado
// (185,177) (191, 186) 222b1a
	mov x1, 185
	mov x2, 177
	mov x5, 191
	mov x6, 186
	movz w7, 0x2b1a
	movk w7, 0x22, lsl #16 
	bl rectangulo_duplicado
// (185,162) (191, 177) 1a221a
	mov x1, 185
	mov x2, 162
	mov x5, 191
	mov x6, 177
	movz w7, 0x221a
	movk w7, 0x1a, lsl #16 
	bl rectangulo_duplicado
// (185,147) (191, 162) 171e16
	mov x1, 185
	mov x2, 147
	mov x5, 191
	mov x6, 162
	movz w7, 0x1e16
	movk w7, 0x17, lsl #16 
	bl rectangulo_duplicado
// (185,137) (191, 147) 1a2119
	mov x1, 185
	mov x2, 137
	mov x5, 191
	mov x6, 147
	movz w7, 0x2119
	movk w7, 0x1a, lsl #16 
	bl rectangulo_duplicado
// (185,122) (191, 137) 1b221a
	mov x1, 185
	mov x2, 122
	mov x5, 191
	mov x6, 137
	movz w7, 0x221a
	movk w7, 0x1b, lsl #16 
	bl rectangulo_duplicado
// (185,101) (191, 122) 1a2119
	mov x1, 185
	mov x2, 101
	mov x5, 191
	mov x6, 122
	movz w7, 0x2119
	movk w7, 0x1a, lsl #16 
	bl rectangulo_duplicado
// (185,87) (191, 101) 212b1b
	mov x1, 185
	mov x2, 87
	mov x5, 191
	mov x6, 101
	movz w7, 0x2b1b
	movk w7, 0x21, lsl #16 
	bl rectangulo_duplicado
// (185,1) (191, 87) 191f17
	mov x1, 185
	mov x2, 1
	mov x5, 191
	mov x6, 87
	movz w7, 0x1f17
	movk w7, 0x19, lsl #16 
	bl rectangulo_duplicado
// (191,372) (198, 384) 2c3727
	mov x1, 191
	mov x2, 372
	mov x5, 198
	mov x6, 384
	movz w7, 0x3727
	movk w7, 0x2c, lsl #16 
	bl rectangulo_duplicado
// (191,364) (198, 372) 283424
	mov x1, 191
	mov x2, 364
	mov x5, 198
	mov x6, 372
	movz w7, 0x3424
	movk w7, 0x28, lsl #16 
	bl rectangulo_duplicado
// (191,336) (198, 364) 384730
	mov x1, 191
	mov x2, 336
	mov x5, 198
	mov x6, 364
	movz w7, 0x4730
	movk w7, 0x38, lsl #16 
	bl rectangulo_duplicado
// (191,329) (198, 336) 283425
	mov x1, 191
	mov x2, 329
	mov x5, 198
	mov x6, 336
	movz w7, 0x3425
	movk w7, 0x28, lsl #16 
	bl rectangulo_duplicado
// (191,302) (198, 329) 38452c
	mov x1, 191
	mov x2, 302
	mov x5, 198
	mov x6, 329
	movz w7, 0x452c
	movk w7, 0x38, lsl #16 
	bl rectangulo_duplicado
// (191,295) (198, 302) 2b3525
	mov x1, 191
	mov x2, 295
	mov x5, 198
	mov x6, 302
	movz w7, 0x3525
	movk w7, 0x2b, lsl #16 
	bl rectangulo_duplicado
// (191,289) (198, 295) 3b4933
	mov x1, 191
	mov x2, 289
	mov x5, 198
	mov x6, 295
	movz w7, 0x4933
	movk w7, 0x3b, lsl #16 
	bl rectangulo_duplicado
// (191,281) (198, 289) 293424
	mov x1, 191
	mov x2, 281
	mov x5, 198
	mov x6, 289
	movz w7, 0x3424
	movk w7, 0x29, lsl #16 
	bl rectangulo_duplicado
// (191,247) (198, 281) 38482e
	mov x1, 191
	mov x2, 247
	mov x5, 198
	mov x6, 281
	movz w7, 0x482e
	movk w7, 0x38, lsl #16 
	bl rectangulo_duplicado
// (191,233) (198, 247) 1f2617
	mov x1, 191
	mov x2, 233
	mov x5, 198
	mov x6, 247
	movz w7, 0x2617
	movk w7, 0x1f, lsl #16 
	bl rectangulo_duplicado
// (191,221) (198, 233) 1b2215
	mov x1, 191
	mov x2, 221
	mov x5, 198
	mov x6, 233
	movz w7, 0x2215
	movk w7, 0x1b, lsl #16 
	bl rectangulo_duplicado
// (191,171) (198, 221) 161e15
	mov x1, 191
	mov x2, 171
	mov x5, 198
	mov x6, 221
	movz w7, 0x1e15
	movk w7, 0x16, lsl #16 
	bl rectangulo_duplicado
// (191,154) (198, 171) 191f17
	mov x1, 191
	mov x2, 154
	mov x5, 198
	mov x6, 171
	movz w7, 0x1f17
	movk w7, 0x19, lsl #16 
	bl rectangulo_duplicado
// (191,137) (198, 154) 151d15
	mov x1, 191
	mov x2, 137
	mov x5, 198
	mov x6, 154
	movz w7, 0x1d15
	movk w7, 0x15, lsl #16 
	bl rectangulo_duplicado
// (191,129) (198, 137) 191f17
	mov x1, 191
	mov x2, 129
	mov x5, 198
	mov x6, 137
	movz w7, 0x1f17
	movk w7, 0x19, lsl #16 
	bl rectangulo_duplicado
// (191,122) (198, 129) 1e2616
	mov x1, 191
	mov x2, 122
	mov x5, 198
	mov x6, 129
	movz w7, 0x2616
	movk w7, 0x1e, lsl #16 
	bl rectangulo_duplicado
// (191,95) (198, 122) 1a2119
	mov x1, 191
	mov x2, 95
	mov x5, 198
	mov x6, 122
	movz w7, 0x2119
	movk w7, 0x1e, lsl #16 
	bl rectangulo_duplicado
// (191,87) (198, 95) 222a1a
	mov x1, 191
	mov x2, 87
	mov x5, 198
	mov x6, 95
	movz w7, 0x2a1a
	movk w7, 0x22, lsl #16 
	bl rectangulo_duplicado
// (191,1) (198, 87) 191f17
	mov x1, 191
	mov x2, 1
	mov x5, 198
	mov x6, 87
	movz w7, 0x1f17
	movk w7, 0x19, lsl #16 
	bl rectangulo_duplicado
// (198,372) (205, 384) 2c3727
	mov x1, 198
	mov x2, 372
	mov x5, 205
	mov x6, 384
	movz w7, 0x3727
	movk w7, 0x2c, lsl #16 
	bl rectangulo_duplicado
// (198,364) (205, 372) 283424
	mov x1, 198
	mov x2, 364
	mov x5, 205
	mov x6, 372
	movz w7, 0x3424
	movk w7, 0x28, lsl #16 
	bl rectangulo_duplicado
// (198,344) (205, 364) 445439
	mov x1, 198
	mov x2, 344
	mov x5, 205
	mov x6, 364
	movz w7, 0x5439
	movk w7, 0x44, lsl #16 
	bl rectangulo_duplicado
// (198,336) (205, 344) 344429
	mov x1, 198
	mov x2, 336
	mov x5, 205
	mov x6, 344
	movz w7, 0x4429
	movk w7, 0x34, lsl #16 
	bl rectangulo_duplicado
// (198,309) (205, 336) 283425
	mov x1, 198
	mov x2, 309
	mov x5, 205
	mov x6, 336
	movz w7, 0x3425
	movk w7, 0x28, lsl #16 
	bl rectangulo_duplicado
// (198,302) (205, 309) 374431
	mov x1, 198
	mov x2, 302
	mov x5, 205
	mov x6, 309
	movz w7, 0x4431
	movk w7, 0x37, lsl #16 
	bl rectangulo_duplicado
// (198,295) (205, 302) 2b3525
	mov x1, 198
	mov x2, 295
	mov x5, 205
	mov x6, 302
	movz w7, 0x3525
	movk w7, 0x2b, lsl #16 
	bl rectangulo_duplicado
// (198,274) (205, 295) 283323
	mov x1, 198
	mov x2, 274
	mov x5, 205
	mov x6, 295
	movz w7, 0x3323
	movk w7, 0x28, lsl #16 
	bl rectangulo_duplicado
// (198,260) (205, 274) 38492f
	mov x1, 198
	mov x2, 260
	mov x5, 205
	mov x6, 274
	movz w7, 0x492f
	movk w7, 0x38, lsl #16 
	bl rectangulo_duplicado
// (198,233) (205, 260) 222819
	mov x1, 198
	mov x2, 233
	mov x5, 205
	mov x6, 260
	movz w7, 0x2819
	movk w7, 0x22, lsl #16 
	bl rectangulo_duplicado
// (198,168) (205, 233) 171e16
	mov x1, 198
	mov x2, 168
	mov x5, 205
	mov x6, 233
	movz w7, 0x1e16
	movk w7, 0x17, lsl #16 
	bl rectangulo_duplicado
// (198,129) (205, 168) 1a221a
	mov x1, 198
	mov x2, 129
	mov x5, 205
	mov x6, 168
	movz w7, 0x221a
	movk w7, 0x1a, lsl #16 
	bl rectangulo_duplicado
// (198,115) (205, 129) 222a1e
	mov x1, 198
	mov x2, 115
	mov x5, 205
	mov x6, 129
	movz w7, 0x2a1e
	movk w7, 0x22, lsl #16 
	bl rectangulo_duplicado
// (198,87) (205, 115) 191e16
	mov x1, 198
	mov x2, 87
	mov x5, 205
	mov x6, 115
	movz w7, 0x1e16
	movk w7, 0x19, lsl #16 
	bl rectangulo_duplicado
// (198,60) (205, 87) 1a2119
	mov x1, 198
	mov x2, 60
	mov x5, 205
	mov x6, 87
	movz w7, 0x2119
	movk w7, 0x1a, lsl #16 
	bl rectangulo_duplicado
// (198,1) (205, 60) 171d15
	mov x1, 198
	mov x2, 1
	mov x5, 205
	mov x6, 60
	movz w7, 0x1d15
	movk w7, 0x17, lsl #16 
	bl rectangulo_duplicado
// (205,372) (211, 384) 2c3728
	mov x1, 205
	mov x2, 372
	mov x5, 211
	mov x6, 384
	movz w7, 0x3728
	movk w7, 0x2c, lsl #16 
	bl rectangulo_duplicado
// (205,350) (211, 372) 384830
	mov x1, 205
	mov x2, 350
	mov x5, 211
	mov x6, 372
	movz w7, 0x4830
	movk w7, 0x38, lsl #16 
	bl rectangulo_duplicado
// (205,344) (211, 350) 3d5033
	mov x1, 205
	mov x2, 344
	mov x5, 211
	mov x6, 350
	movz w7, 0x5033
	movk w7, 0x3d, lsl #16 
	bl rectangulo_duplicado
// (205,323) (211, 344) 38482d
	mov x1, 205
	mov x2, 323
	mov x5, 211
	mov x6, 344
	movz w7, 0x482d
	movk w7, 0x38, lsl #16 
	bl rectangulo_duplicado
// (205,288) (211, 323) 2c3728
	mov x1, 205
	mov x2, 288
	mov x5, 211
	mov x6, 323
	movz w7, 0x3728
	movk w7, 0x2c, lsl #16 
	bl rectangulo_duplicado
// (205,281) (211, 288) 344429
	mov x1, 205
	mov x2, 281
	mov x5, 211
	mov x6, 288
	movz w7, 0x4429
	movk w7, 0x34, lsl #16 
	bl rectangulo_duplicado
// (205,260) (211, 281) 283424
	mov x1, 205
	mov x2, 260
	mov x5, 211
	mov x6, 281
	movz w7, 0x3424
	movk w7, 0x28, lsl #16 
	bl rectangulo_duplicado
// (205,199) (211, 260) 1a2119
	mov x1, 205
	mov x2, 199
	mov x5, 211
	mov x6, 260
	movz w7, 0x2119
	movk w7, 0x1a, lsl #16 
	bl rectangulo_duplicado
// (205,172) (211, 199) 171e16
	mov x1, 205
	mov x2, 172
	mov x5, 211
	mov x6, 199
	movz w7, 0x1e16
	movk w7, 0x17, lsl #16 
	bl rectangulo_duplicado
// (205,136) (211, 172) 191f17
	mov x1, 205
	mov x2, 136
	mov x5, 211
	mov x6, 172
	movz w7, 0x1f17
	movk w7, 0x19, lsl #16 
	bl rectangulo_duplicado
// (205,122) (211, 136) 1f271a
	mov x1, 205
	mov x2, 122
	mov x5, 211
	mov x6, 136
	movz w7, 0x271a
	movk w7, 0x1f, lsl #16 
	bl rectangulo_duplicado
// (205,87) (211, 122) 191f17
	mov x1, 205
	mov x2, 87
	mov x5, 211
	mov x6, 122
	movz w7, 0x1f17
	movk w7, 0x19, lsl #16 
	bl rectangulo_duplicado
// (205,60) (211, 87) 1a2119
	mov x1, 205
	mov x2, 60
	mov x5, 211
	mov x6, 87
	movz w7, 0x2119
	movk w7, 0x1a, lsl #16 
	bl rectangulo_duplicado
// (205,1) (211, 60) 171d15
	mov x1, 205
	mov x2, 1
	mov x5, 211
	mov x6, 60
	movz w7, 0x1d15
	movk w7, 0x17, lsl #16 
	bl rectangulo_duplicado
// (211,371) (219, 384) 37442c
	mov x1, 211
	mov x2, 371
	mov x5, 219
	mov x6, 384
	movz w7, 0x442c
	movk w7, 0x37, lsl #16 
	bl rectangulo_duplicado
// (211,337) (219, 371) 394930
	mov x1, 211
	mov x2, 337
	mov x5, 219
	mov x6, 371
	movz w7, 0x4930
	movk w7, 0x39, lsl #16 
	bl rectangulo_duplicado
// (211,329) (219, 337) 44573b
	mov x1, 211
	mov x2, 329
	mov x5, 219
	mov x6, 337
	movz w7, 0x573b
	movk w7, 0x44, lsl #16 
	bl rectangulo_duplicado
// (211,316) (219, 329) 37472c
	mov x1, 211
	mov x2, 316
	mov x5, 219
	mov x6, 329
	movz w7, 0x472c
	movk w7, 0x37, lsl #16 
	bl rectangulo_duplicado
// (211,303) (219, 316) 293427
	mov x1, 211
	mov x2, 303
	mov x5, 219
	mov x6, 316
	movz w7, 0x3427
	movk w7, 0x29, lsl #16 
	bl rectangulo_duplicado
// (211,281) (219, 303) 38482f
	mov x1, 211
	mov x2, 281
	mov x5, 219
	mov x6, 303
	movz w7, 0x482f
	movk w7, 0x38, lsl #16 
	bl rectangulo_duplicado
// (211,274) (219, 281) 283425
	mov x1, 211
	mov x2, 274
	mov x5, 219
	mov x6, 281
	movz w7, 0x3425
	movk w7, 0x28, lsl #16 
	bl rectangulo_duplicado
// (211,253) (219, 274) 303c2c
	mov x1, 211
	mov x2, 253
	mov x5, 219
	mov x6, 274
	movz w7, 0x3c2c
	movk w7, 0x30, lsl #16 
	bl rectangulo_duplicado
// (211,240) (219, 253) 1a2119
	mov x1, 211
	mov x2, 240
	mov x5, 219
	mov x6, 253
	movz w7, 0x2119
	movk w7, 0x1a, lsl #16 
	bl rectangulo_duplicado
// (211,177) (219, 240) 171e16
	mov x1, 211
	mov x2, 177
	mov x5, 219
	mov x6, 240
	movz w7, 0x1e16
	movk w7, 0x17, lsl #16 
	bl rectangulo_duplicado
// (211,170) (219, 177) 1f2719
	mov x1, 211
	mov x2, 170
	mov x5, 219
	mov x6, 177
	movz w7, 0x2719
	movk w7, 0x1f, lsl #16 
	bl rectangulo_duplicado
// (211,61) (219, 170) 191e16
	mov x1, 211
	mov x2, 61
	mov x5, 219
	mov x6, 170
	movz w7, 0x1e16
	movk w7, 0x19, lsl #16 
	bl rectangulo_duplicado
// (211,40) (219, 61) 171d15
	mov x1, 211
	mov x2, 40
	mov x5, 219
	mov x6, 61
	movz w7, 0x1d15
	movk w7, 0x17, lsl #16 
	bl rectangulo_duplicado
// (211,30) (219, 40) 191e16
	mov x1, 211
	mov x2, 30
	mov x5, 219
	mov x6, 40
	movz w7, 0x1e16
	movk w7, 0x19, lsl #16 
	bl rectangulo_duplicado
// (211,1) (219, 30) 171d15
	mov x1, 211
	mov x2, 1
	mov x5, 219
	mov x6, 30
	movz w7, 0x1d15
	movk w7, 0x17, lsl #16 
	bl rectangulo_duplicado
// (219,371) (226, 384) 37442c
	mov x1, 219
	mov x2, 371
	mov x5, 226
	mov x6, 384
	movz w7, 0x442c
	movk w7, 0x37, lsl #16 
	bl rectangulo_duplicado
// (219,357) (226, 371) 435538
	mov x1, 219
	mov x2, 357
	mov x5, 226
	mov x6, 371
	movz w7, 0x5538
	movk w7, 0x43, lsl #16 
	bl rectangulo_duplicado
// (219,350) (226, 357) 37472c
	mov x1, 219
	mov x2, 350
	mov x5, 226
	mov x6, 357
	movz w7, 0x472c
	movk w7, 0x37, lsl #16 
	bl rectangulo_duplicado
// (219,343) (226, 350) 283423
	mov x1, 219
	mov x2, 343
	mov x5, 226
	mov x6, 350
	movz w7, 0x3423
	movk w7, 0x28, lsl #16 
	bl rectangulo_duplicado
// (219,329) (226, 343) 44573b
	mov x1, 219
	mov x2, 329
	mov x5, 226
	mov x6, 343
	movz w7, 0x573b
	movk w7, 0x44, lsl #16 
	bl rectangulo_duplicado
// (219,316) (226, 329) 37472c
	mov x1, 219
	mov x2, 316
	mov x5, 226
	mov x6, 329
	movz w7, 0x472c
	movk w7, 0x37, lsl #16 
	bl rectangulo_duplicado
// (219,295) (226, 316) 2b3528
	mov x1, 219
	mov x2, 295
	mov x5, 226
	mov x6, 316
	movz w7, 0x3528
	movk w7, 0x2b, lsl #16 
	bl rectangulo_duplicado
// (219,274) (226, 295) 38482f
	mov x1, 219
	mov x2, 274
	mov x5, 226
	mov x6, 295
	movz w7, 0x482f
	movk w7, 0x38, lsl #16 
	bl rectangulo_duplicado
// (219,253) (226, 274) 303c2c
	mov x1, 219
	mov x2, 253
	mov x5, 226
	mov x6, 274
	movz w7, 0x3c2c
	movk w7, 0x30, lsl #16 
	bl rectangulo_duplicado
// (219,240) (226, 253) 1a2119
	mov x1, 219
	mov x2, 240
	mov x5, 226
	mov x6, 253
	movz w7, 0x2119
	movk w7, 0x1a, lsl #16 
	bl rectangulo_duplicado
// (219,192) (226, 240) 141912
	mov x1, 219
	mov x2, 192
	mov x5, 226
	mov x6, 240
	movz w7, 0x1912
	movk w7, 0x14, lsl #16 
	bl rectangulo_duplicado
// (219,177) (226, 192) 151a12
	mov x1, 219
	mov x2, 177
	mov x5, 226
	mov x6, 192
	movz w7, 0x1a12
	movk w7, 0x15, lsl #16 
	bl rectangulo_duplicado
// (219,170) (226, 177) 1f271a
	mov x1, 219
	mov x2, 170
	mov x5, 226
	mov x6, 177
	movz w7, 0x271a
	movk w7, 0x1f, lsl #16 
	bl rectangulo_duplicado
// (219,163) (226, 170) 191f17
	mov x1, 219
	mov x2, 163
	mov x5, 226
	mov x6, 170
	movz w7, 0x1f17
	movk w7, 0x19, lsl #16 
	bl rectangulo_duplicado
// (219,151) (226, 163) 171e16
	mov x1, 219
	mov x2, 151
	mov x5, 226
	mov x6, 163
	movz w7, 0x1e16
	movk w7, 0x17, lsl #16 
	bl rectangulo_duplicado
// (219,115) (226, 151) 1a2119
	mov x1, 219
	mov x2, 115
	mov x5, 226
	mov x6, 151
	movz w7, 0x2119
	movk w7, 0x1a, lsl #16 
	bl rectangulo_duplicado
// (219,39) (226, 115) 191e16
	mov x1, 219
	mov x2, 39
	mov x5, 226
	mov x6, 115
	movz w7, 0x1e16
	movk w7, 0x19, lsl #16 
	bl rectangulo_duplicado
// (219,23) (226, 39) 171d15
	mov x1, 219
	mov x2, 23
	mov x5, 226
	mov x6, 39
	movz w7, 0x1d15
	movk w7, 0x17, lsl #16 
	bl rectangulo_duplicado
// (219,1) (226, 23) 191e16
	mov x1, 219
	mov x2, 1
	mov x5, 226
	mov x6, 23
	movz w7, 0x1e16
	movk w7, 0x19, lsl #16 
	bl rectangulo_duplicado
// (226,371) (232, 384) 47593c
	mov x1, 226
	mov x2, 371
	mov x5, 232
	mov x6, 384
	movz w7, 0x593c
	movk w7, 0x47, lsl #16 
	bl rectangulo_duplicado
// (226,357) (232, 371) 435538
	mov x1, 226
	mov x2, 357
	mov x5, 232
	mov x6, 371
	movz w7, 0x5538
	movk w7, 0x43, lsl #16 
	bl rectangulo_duplicado
// (226,350) (232, 357) 2b3525
	mov x1, 226
	mov x2, 350
	mov x5, 232
	mov x6, 357
	movz w7, 0x3525
	movk w7, 0x2b, lsl #16 
	bl rectangulo_duplicado
// (226,343) (232, 350) 283423
	mov x1, 226
	mov x2, 343
	mov x5, 232
	mov x6, 350
	movz w7, 0x3423
	movk w7, 0x28, lsl #16 
	bl rectangulo_duplicado
// (226,338) (232, 343) 415438
	mov x1, 226
	mov x2, 338
	mov x5, 232
	mov x6, 343
	movz w7, 0x5438
	movk w7, 0x41, lsl #16 
	bl rectangulo_duplicado
// (226,332) (232, 338) 3f5135
	mov x1, 226
	mov x2, 332
	mov x5, 232
	mov x6, 338
	movz w7, 0x5135
	movk w7, 0x3f, lsl #16 
	bl rectangulo_duplicado
// (226,329) (232, 332) 3c4c33
	mov x1, 226
	mov x2, 329
	mov x5, 232
	mov x6, 332
	movz w7, 0x4c33
	movk w7, 0x3c, lsl #16 
	bl rectangulo_duplicado
// (226,309) (232, 329) 38482f
	mov x1, 226
	mov x2, 309
	mov x5, 232
	mov x6, 329
	movz w7, 0x482f
	movk w7, 0x38, lsl #16 
	bl rectangulo_duplicado
// (226,295) (232, 309) 293424
	mov x1, 226
	mov x2, 295
	mov x5, 232
	mov x6, 309
	movz w7, 0x3424
	movk w7, 0x29, lsl #16 
	bl rectangulo_duplicado
// (226,288) (232, 295) 38482d
	mov x1, 226
	mov x2, 288
	mov x5, 232
	mov x6, 295
	movz w7, 0x482d
	movk w7, 0x38, lsl #16 
	bl rectangulo_duplicado
// (226,274) (232, 288) 20291f
	mov x1, 226
	mov x2, 274
	mov x5, 232
	mov x6, 288
	movz w7, 0x291f
	movk w7, 0x20, lsl #16 
	bl rectangulo_duplicado
// (226,253) (232, 274) 303c2c
	mov x1, 226
	mov x2, 253
	mov x5, 232
	mov x6, 274
	movz w7, 0x3c2c
	movk w7, 0x30, lsl #16 
	bl rectangulo_duplicado
// (226,226) (232, 253) 1a2119
	mov x1, 226
	mov x2, 226
	mov x5, 232
	mov x6, 253
	movz w7, 0x2119
	movk w7, 0x1a, lsl #16 
	bl rectangulo_duplicado
// (226,217) (232, 226) 1e271a
	mov x1, 226
	mov x2, 217
	mov x5, 232
	mov x6, 226
	movz w7, 0x271a
	movk w7, 0x1e, lsl #16 
	bl rectangulo_duplicado
// (226,184) (232, 217) 1a1e17
	mov x1, 226
	mov x2, 184
	mov x5, 232
	mov x6, 217
	movz w7, 0x1e17
	movk w7, 0x1a, lsl #16 
	bl rectangulo_duplicado
// (226,163) (232, 184) 1f271a
	mov x1, 226
	mov x2, 163
	mov x5, 232
	mov x6, 184
	movz w7, 0x271a
	movk w7, 0x1f, lsl #16 
	bl rectangulo_duplicado
// (226,142) (232, 163) 191f17
	mov x1, 226
	mov x2, 142
	mov x5, 232
	mov x6, 163
	movz w7, 0x1f17
	movk w7, 0x19, lsl #16 
	bl rectangulo_duplicado
// (226,136) (232, 142) 1e281a
	mov x1, 226
	mov x2, 136
	mov x5, 232
	mov x6, 142
	movz w7, 0x281a
	movk w7, 0x1e, lsl #16 
	bl rectangulo_duplicado
// (226,129) (232, 136) 191f17
	mov x1, 226
	mov x2, 129
	mov x5, 232
	mov x6, 136
	movz w7, 0x1f17
	movk w7, 0x19, lsl #16 
	bl rectangulo_duplicado
// (226,115) (232, 129) 232b1d
	mov x1, 226
	mov x2, 115
	mov x5, 232
	mov x6, 129
	movz w7, 0x2b1d
	movk w7, 0x23, lsl #16 
	bl rectangulo_duplicado
// (226,1) (232, 115) 191e16
	mov x1, 226
	mov x2, 1
	mov x5, 232
	mov x6, 115
	movz w7, 0x1e16
	movk w7, 0x19, lsl #16 
	bl rectangulo_duplicado
// (232,371) (238, 384) 47593c
	mov x1, 232
	mov x2, 371
	mov x5, 238
	mov x6, 384
	movz w7, 0x593c
	movk w7, 0x47, lsl #16 
	bl rectangulo_duplicado
// (232,350) (238, 371) 2b3525
	mov x1, 232
	mov x2, 350
	mov x5, 238
	mov x6, 371
	movz w7, 0x3525
	movk w7, 0x2b, lsl #16 
	bl rectangulo_duplicado
// (232,343) (238, 350) 283423
	mov x1, 232
	mov x2, 343
	mov x5, 238
	mov x6, 350
	movz w7, 0x3423
	movk w7, 0x28, lsl #16 
	bl rectangulo_duplicado
// (232,332) (238, 343) 3f5135
	mov x1, 232
	mov x2, 332
	mov x5, 238
	mov x6, 343
	movz w7, 0x5135
	movk w7, 0x3f, lsl #16 
	bl rectangulo_duplicado
// (232,329) (238, 332) 3c4c33
	mov x1, 232
	mov x2, 329
	mov x5, 238
	mov x6, 332
	movz w7, 0x4c33
	movk w7, 0x3c, lsl #16 
	bl rectangulo_duplicado
// (232,322) (238, 329) 415438
	mov x1, 232
	mov x2, 322
	mov x5, 238
	mov x6, 329
	movz w7, 0x5438
	movk w7, 0x41, lsl #16 
	bl rectangulo_duplicado
// (232,315) (238, 322) 2d382b
	mov x1, 232
	mov x2, 315
	mov x5, 238
	mov x6, 322
	movz w7, 0x382b
	movk w7, 0x2d, lsl #16 
	bl rectangulo_duplicado
// (232,302) (238, 315) 35442d
	mov x1, 232
	mov x2, 302
	mov x5, 238
	mov x6, 315
	movz w7, 0x442d
	movk w7, 0x35, lsl #16 
	bl rectangulo_duplicado
// (232,274) (238, 302) 253023
	mov x1, 232
	mov x2, 274
	mov x5, 238
	mov x6, 302
	movz w7, 0x3023
	movk w7, 0x25, lsl #16 
	bl rectangulo_duplicado
// (232,191) (238, 274) 1a2119
	mov x1, 232
	mov x2, 191
	mov x5, 238
	mov x6, 274
	movz w7, 0x2119
	movk w7, 0x1a, lsl #16 
	bl rectangulo_duplicado
// (232,184) (238, 191) 1e2619
	mov x1, 232
	mov x2, 184
	mov x5, 238
	mov x6, 191
	movz w7, 0x2619
	movk w7, 0x1e, lsl #16 
	bl rectangulo_duplicado
// (232,170) (238, 184) 1f271a
	mov x1, 232
	mov x2, 170
	mov x5, 238
	mov x6, 184
	movz w7, 0x271a
	movk w7, 0x1f, lsl #16 
	bl rectangulo_duplicado
// (232,142) (238, 170) 191e16
	mov x1, 232
	mov x2, 142
	mov x5, 238
	mov x6, 170
	movz w7, 0x1e16
	movk w7, 0x19, lsl #16 
	bl rectangulo_duplicado
// (232,136) (238, 142) 1e281a
	mov x1, 232
	mov x2, 136
	mov x5, 238
	mov x6, 142
	movz w7, 0x281a
	movk w7, 0x1e, lsl #16 
	bl rectangulo_duplicado
// (232,109) (238, 136) 232b1d
	mov x1, 232
	mov x2, 109
	mov x5, 238
	mov x6, 136
	movz w7, 0x2b1d
	movk w7, 0x23, lsl #16 
	bl rectangulo_duplicado
// (232,1) (238, 109) 171e16
	mov x1, 232
	mov x2, 1
	mov x5, 238
	mov x6, 109
	movz w7, 0x1e16
	movk w7, 0x17, lsl #16 
	bl rectangulo_duplicado
// (238,371) (245, 384) 293424
	mov x1, 238
	mov x2, 371
	mov x5, 245
	mov x6, 384
	movz w7, 0x3424
	movk w7, 0x29, lsl #16 
	bl rectangulo_duplicado
// (238,350) (245, 371) 2b3525
	mov x1, 238
	mov x2, 350
	mov x5, 245
	mov x6, 371
	movz w7, 0x3525
	movk w7, 0x2b, lsl #16 
	bl rectangulo_duplicado
// (238,343) (245, 350) 283423
	mov x1, 238
	mov x2, 343
	mov x5, 245
	mov x6, 350
	movz w7, 0x3423
	movk w7, 0x28, lsl #16 
	bl rectangulo_duplicado
// (238,336) (245, 343) 293723
	mov x1, 238
	mov x2, 336
	mov x5, 245
	mov x6, 343
	movz w7, 0x3723
	movk w7, 0x29, lsl #16 
	bl rectangulo_duplicado
// (238,322) (245, 336) 415438
	mov x1, 238
	mov x2, 322
	mov x5, 245
	mov x6, 336
	movz w7, 0x5438
	movk w7, 0x41, lsl #16 
	bl rectangulo_duplicado
// (238,315) (245, 322) 2d382b
	mov x1, 238
	mov x2, 315
	mov x5, 245
	mov x6, 322
	movz w7, 0x382b
	movk w7, 0x2d, lsl #16 
	bl rectangulo_duplicado
// (238,309) (245, 315) 35442d
	mov x1, 238
	mov x2, 309
	mov x5, 245
	mov x6, 315
	movz w7, 0x442d
	movk w7, 0x35, lsl #16 
	bl rectangulo_duplicado
// (238,274) (245, 309) 253023
	mov x1, 238
	mov x2, 274
	mov x5, 245
	mov x6, 309
	movz w7, 0x3023
	movk w7, 0x25, lsl #16 
	bl rectangulo_duplicado
// (238,253) (245, 274) 192018
	mov x1, 238
	mov x2, 253
	mov x5, 245
	mov x6, 274
	movz w7, 0x2018
	movk w7, 0x19, lsl #16 
	bl rectangulo_duplicado
// (238,239) (245, 253) 17211b
	mov x1, 238
	mov x2, 239
	mov x5, 245
	mov x6, 253
	movz w7, 0x211b
	movk w7, 0x17, lsl #16 
	bl rectangulo_duplicado
// (238,206) (245, 239) 191f17
	mov x1, 238
	mov x2, 206
	mov x5, 245
	mov x6, 239
	movz w7, 0x1f17
	movk w7, 0x19, lsl #16 
	bl rectangulo_duplicado
// (238,200) (245, 206) 172219
	mov x1, 238
	mov x2, 200
	mov x5, 245
	mov x6, 206
	movz w7, 0x2219
	movk w7, 0x17, lsl #16 
	bl rectangulo_duplicado
// (238,185) (245, 200) 21281b
	mov x1, 238
	mov x2, 185
	mov x5, 245
	mov x6, 200
	movz w7, 0x281b
	movk w7, 0x21, lsl #16 
	bl rectangulo_duplicado
// (238,149) (245, 185) 1a1e17
	mov x1, 238
	mov x2, 149
	mov x5, 245
	mov x6, 185
	movz w7, 0x1e17
	movk w7, 0x1a, lsl #16 
	bl rectangulo_duplicado
// (238,136) (245, 149) 1f271a
	mov x1, 238
	mov x2, 136
	mov x5, 245
	mov x6, 149
	movz w7, 0x271a
	movk w7, 0x1f, lsl #16 
	bl rectangulo_duplicado
// (238,115) (245, 136) 232b1d
	mov x1, 238
	mov x2, 115
	mov x5, 245
	mov x6, 136
	movz w7, 0x2b1d
	movk w7, 0x23, lsl #16 
	bl rectangulo_duplicado
// (238,90) (245, 115) 171e16
	mov x1, 238
	mov x2, 90
	mov x5, 245
	mov x6, 115
	movz w7, 0x1e16
	movk w7, 0x17, lsl #16 
	bl rectangulo_duplicado
// (238,13) (245, 90) 191e16
	mov x1, 238
	mov x2, 13
	mov x5, 245
	mov x6, 90
	movz w7, 0x1e16
	movk w7, 0x19, lsl #16 
	bl rectangulo_duplicado
// (238,1) (245, 13) 151a14
	mov x1, 238
	mov x2, 1
	mov x5, 245
	mov x6, 13
	movz w7, 0x1a14
	movk w7, 0x15, lsl #16 
	bl rectangulo_duplicado
// (245,350) (252, 384) 2b3528
	mov x1, 245
	mov x2, 350
	mov x5, 252
	mov x6, 384
	movz w7, 0x3528
	movk w7, 0x2b, lsl #16 
	bl rectangulo_duplicado
// (245,343) (252, 350) 384c2d
	mov x1, 245
	mov x2, 343
	mov x5, 252
	mov x6, 350
	movz w7, 0x4c2d
	movk w7, 0x38, lsl #16 
	bl rectangulo_duplicado
// (245,310) (252, 343) 2b3325
	mov x1, 245
	mov x2, 310
	mov x5, 252
	mov x6, 343
	movz w7, 0x3325
	movk w7, 0x2b, lsl #16 
	bl rectangulo_duplicado
// (245,281) (252, 310) 243021
	mov x1, 245
	mov x2, 281
	mov x5, 252
	mov x6, 310
	movz w7, 0x3021
	movk w7, 0x24, lsl #16 
	bl rectangulo_duplicado
// (245,253) (252, 281) 1b2119
	mov x1, 245
	mov x2, 253
	mov x5, 252
	mov x6, 281
	movz w7, 0x2119
	movk w7, 0x1b, lsl #16 
	bl rectangulo_duplicado
// (245,143) (252, 253) 171d15
	mov x1, 245
	mov x2, 243
	mov x5, 252
	mov x6, 253
	movz w7, 0x1d15
	movk w7, 0x17, lsl #16 
	bl rectangulo_duplicado
// (245,129) (252, 243) 1f2719
	mov x1, 245
	mov x2, 129
	mov x5, 252
	mov x6, 243
	movz w7, 0x2719
	movk w7, 0x1f, lsl #16 
	bl rectangulo_duplicado
// (245,115) (252, 129) 171e16
	mov x1, 245
	mov x2, 115
	mov x5, 252
	mov x6, 129
	movz w7, 0x1e16
	movk w7, 0x17, lsl #16 
	bl rectangulo_duplicado
// (245,90) (252, 115) 151d15
	mov x1, 245
	mov x2, 90
	mov x5, 252
	mov x6, 115
	movz w7, 0x1d15
	movk w7, 0x15, lsl #16 
	bl rectangulo_duplicado
// (245,13) (252, 90) 191e16
	mov x1, 245
	mov x2, 13
	mov x5, 252
	mov x6, 90
	movz w7, 0x1e16
	movk w7, 0x19, lsl #16 
	bl rectangulo_duplicado
// (245,1) (252, 13) 151a14
	mov x1, 245
	mov x2, 1
	mov x5, 252
	mov x6, 13
	movz w7, 0x1a14
	movk w7, 0x15, lsl #16 
	bl rectangulo_duplicado
// (252,365) (258, 384) 242c1c
	mov x1, 252
	mov x2, 365
	mov x5, 258
	mov x6, 384
	movz w7, 0x2c1c
	movk w7, 0x24, lsl #16 
	bl rectangulo_duplicado
// (252,351) (258, 365) 384c2d
	mov x1, 252
	mov x2, 351
	mov x5, 258
	mov x6, 365
	movz w7, 0x4c2d
	movk w7, 0x38, lsl #16 
	bl rectangulo_duplicado
// (252,309) (258, 351) 2d3828
	mov x1, 252
	mov x2, 309
	mov x5, 258
	mov x6, 351
	movz w7, 0x3828
	movk w7, 0x2d, lsl #16 
	bl rectangulo_duplicado
// (252,289) (258, 309) 343f30
	mov x1, 252
	mov x2, 289
	mov x5, 258
	mov x6, 309
	movz w7, 0x3f30
	movk w7, 0x34, lsl #16 
	bl rectangulo_duplicado
// (252,281) (258, 289) 2c3428
	mov x1, 252
	mov x2, 281
	mov x5, 258
	mov x6, 289
	movz w7, 0x3428
	movk w7, 0x2c, lsl #16 
	bl rectangulo_duplicado
// (252,225) (258, 281) 191f17
	mov x1, 252
	mov x2, 225
	mov x5, 258
	mov x6, 281
	movz w7, 0x1f17
	movk w7, 0x19, lsl #16 
	bl rectangulo_duplicado
// (252,192) (258, 225) 1a221a
	mov x1, 252
	mov x2, 192
	mov x5, 258
	mov x6, 225
	movz w7, 0x221a
	movk w7, 0x1a, lsl #16 
	bl rectangulo_duplicado
// (252,183) (258, 192) 21281a
	mov x1, 252
	mov x2, 183
	mov x5, 258
	mov x6, 192
	movz w7, 0x281a
	movk w7, 0x21, lsl #16 
	bl rectangulo_duplicado
// (252,143) (258, 183) 1a2119
	mov x1, 252
	mov x2, 143
	mov x5, 258
	mov x6, 183
	movz w7, 0x2119
	movk w7, 0x1a, lsl #16 
	bl rectangulo_duplicado
// (252,122) (258, 143) 1e2717
	mov x1, 252
	mov x2, 122
	mov x5, 258
	mov x6, 143
	movz w7, 0x2717
	movk w7, 0x1e, lsl #16 
	bl rectangulo_duplicado
// (252,115) (258, 122) 171e16
	mov x1, 252
	mov x2, 115
	mov x5, 258
	mov x6, 122
	movz w7, 0x1e16
	movk w7, 0x17, lsl #16 
	bl rectangulo_duplicado
// (252,90) (258, 115) 141912
	mov x1, 252
	mov x2, 90
	mov x5, 258
	mov x6, 115
	movz w7, 0x1912
	movk w7, 0x14, lsl #16 
	bl rectangulo_duplicado
// (252,1) (258, 90) 151a15
	mov x1, 252
	mov x2, 1
	mov x5, 258
	mov x6, 90
	movz w7, 0x1a15
	movk w7, 0x15, lsl #16 
	bl rectangulo_duplicado
// (258,351) (266, 384) 2b3525
	mov x1, 258
	mov x2, 351
	mov x5, 266
	mov x6, 384
	movz w7, 0x3525
	movk w7, 0x2b, lsl #16 
	bl rectangulo_duplicado
// (258,329) (266, 351) 283324
	mov x1, 258
	mov x2, 329
	mov x5, 266
	mov x6, 351
	movz w7, 0x3324
	movk w7, 0x28, lsl #16 
	bl rectangulo_duplicado
// (258,322) (266, 329) 38452c
	mov x1, 258
	mov x2, 322
	mov x5, 266
	mov x6, 329
	movz w7, 0x452c
	movk w7, 0x38, lsl #16 
	bl rectangulo_duplicado
// (258,301) (266, 322) 283324
	mov x1, 258
	mov x2, 301
	mov x5, 266
	mov x6, 322
	movz w7, 0x3324
	movk w7, 0x28, lsl #16 
	bl rectangulo_duplicado
// (258,288) (266, 301) 242c21
	mov x1, 258
	mov x2, 288
	mov x5, 266
	mov x6, 301
	movz w7, 0x2c21
	movk w7, 0x24, lsl #16 
	bl rectangulo_duplicado
// (258,218) (266, 288) 191f17
	mov x1, 258
	mov x2, 218
	mov x5, 266
	mov x6, 288
	movz w7, 0x1f17
	movk w7, 0x19, lsl #16 
	bl rectangulo_duplicado
// (258,129) (266, 218) 171e16
	mov x1, 258
	mov x2, 129
	mov x5, 266
	mov x6, 218
	movz w7, 0x1e16
	movk w7, 0x17, lsl #16 
	bl rectangulo_duplicado
// (258,115) (266, 129) 171e16
	mov x1, 258
	mov x2, 115
	mov x5, 266
	mov x6, 129
	movz w7, 0x1e16
	movk w7, 0x17, lsl #16 
	bl rectangulo_duplicado
// (258,1) (266, 115) 191e16
	mov x1, 258
	mov x2, 1
	mov x5, 266
	mov x6, 115
	movz w7, 0x1e16
	movk w7, 0x19, lsl #16 
	bl rectangulo_duplicado
// (266,361) (272, 384) 283127
	mov x1, 266
	mov x2, 361
	mov x5, 272
	mov x6, 384
	movz w7, 0x3127
	movk w7, 0x28, lsl #16 
	bl rectangulo_duplicado
// (266,336) (272, 361) 242c1c
	mov x1, 266
	mov x2, 336
	mov x5, 272
	mov x6, 361
	movz w7, 0x2c1c
	movk w7, 0x24, lsl #16 
	bl rectangulo_duplicado
// (266,309) (272, 336) 273124
	mov x1, 266
	mov x2, 309
	mov x5, 272
	mov x6, 336
	movz w7, 0x3124
	movk w7, 0x27, lsl #16 
	bl rectangulo_duplicado
// (266,281) (272, 309) 272f24
	mov x1, 266
	mov x2, 281
	mov x5, 272
	mov x6, 309
	movz w7, 0x2f24
	movk w7, 0x27, lsl #16 
	bl rectangulo_duplicado
// (266,241) (272, 281) 182018
	mov x1, 266
	mov x2, 241
	mov x5, 272
	mov x6, 281
	movz w7, 0x2018
	movk w7, 0x18, lsl #16 
	bl rectangulo_duplicado
// (266,218) (272, 241) 1b1e17
	mov x1, 266
	mov x2, 218
	mov x5, 272
	mov x6, 241
	movz w7, 0x1e17
	movk w7, 0x1b, lsl #16 
	bl rectangulo_duplicado
// (266,178) (272, 218) 1b1e17
	mov x1, 266
	mov x2, 178
	mov x5, 272
	mov x6, 218
	movz w7, 0x1e17
	movk w7, 0x1b, lsl #16 
	bl rectangulo_duplicado
// (266,163) (272, 178) 1e2619
	mov x1, 266
	mov x2, 163
	mov x5, 272
	mov x6, 178
	movz w7, 0x2619
	movk w7, 0x1e, lsl #16 
	bl rectangulo_duplicado
// (266,122) (272, 163) 1a1e17
	mov x1, 266
	mov x2, 122
	mov x5, 272
	mov x6, 163
	movz w7, 0x1e17
	movk w7, 0x1a, lsl #16 
	bl rectangulo_duplicado
// (266,115) (272, 122) 1e2717
	mov x1, 266
	mov x2, 115
	mov x5, 272
	mov x6, 122
	movz w7, 0x2717
	movk w7, 0x1e, lsl #16 
	bl rectangulo_duplicado
// (266,49) (272, 115) 191e16
	mov x1, 266
	mov x2, 49
	mov x5, 272
	mov x6, 115
	movz w7, 0x1e16
	movk w7, 0x19, lsl #16 
	bl rectangulo_duplicado
// (266,40) (272, 49) 1a2119
	mov x1, 266
	mov x2, 40
	mov x5, 272
	mov x6, 49
	movz w7, 0x2119
	movk w7, 0x1a, lsl #16 
	bl rectangulo_duplicado
// (266,18) (272, 40) 191e16
	mov x1, 266
	mov x2, 18
	mov x5, 272
	mov x6, 40
	movz w7, 0x1e16
	movk w7, 0x19, lsl #16 
	bl rectangulo_duplicado
// (266,1) (272, 18) 1a2119
	mov x1, 266
	mov x2, 1
	mov x5, 272
	mov x6, 18
	movz w7, 0x2119
	movk w7, 0x1a, lsl #16 
	bl rectangulo_duplicado
// (272,354) (279, 384) 242c1c
	mov x1, 272
	mov x2, 354
	mov x5, 279
	mov x6, 384
	movz w7, 0x2c1c
	movk w7, 0x24, lsl #16 
	bl rectangulo_duplicado
// (272,336) (279, 354) 273124
	mov x1, 272
	mov x2, 336
	mov x5, 279
	mov x6, 354
	movz w7, 0x3124
	movk w7, 0x27, lsl #16 
	bl rectangulo_duplicado
// (272,301) (279,336) 293427
	mov x1, 272
	mov x2, 301
	mov x5, 279
	mov x6, 336
	movz w7, 0x3427
	movk w7, 0x29, lsl #16 
	bl rectangulo_duplicado
// (272,281) (279,301) 272f24
	mov x1, 272
	mov x2, 281
	mov x5, 279
	mov x6, 301
	movz w7, 0x2f24
	movk w7, 0x27, lsl #16 
	bl rectangulo_duplicado
// (272,254) (279,281) 182018
	mov x1, 272
	mov x2, 254
	mov x5, 279
	mov x6, 281
	movz w7, 0x2018
	movk w7, 0x18, lsl #16 
	bl rectangulo_duplicado
// (272,219) (279,254) 1b1e17
	mov x1, 272
	mov x2, 219
	mov x5, 279
	mov x6, 254
	movz w7, 0x1e17
	movk w7, 0x1b, lsl #16 
	bl rectangulo_duplicado
// (272,211) (279,219) 161e15
	mov x1, 272
	mov x2, 211
	mov x5, 279
	mov x6, 219
	movz w7, 0x1e15
	movk w7, 0x16, lsl #16 
	bl rectangulo_duplicado
// (272,205) (279,211) 1e2619
	mov x1, 272
	mov x2, 205
	mov x5, 279
	mov x6, 211
	movz w7, 0x2619
	movk w7, 0x1e, lsl #16 
	bl rectangulo_duplicado
// (272,178) (279,205) 191f19
	mov x1, 272
	mov x2, 178
	mov x5, 279
	mov x6, 205
	movz w7, 0x1f19
	movk w7, 0x19, lsl #16 
	bl rectangulo_duplicado
// (272,155) (279,178) 1e2619
	mov x1, 272
	mov x2, 155
	mov x5, 279
	mov x6, 178
	movz w7, 0x2619
	movk w7, 0x1e, lsl #16 
	bl rectangulo_duplicado
// (272,122) (279,155) 191f17
	mov x1, 272
	mov x2, 122
	mov x5, 279
	mov x6, 155
	movz w7, 0x1f17
	movk w7, 0x19, lsl #16 
	bl rectangulo_duplicado
// (272,115) (279,122) 1e2717
	mov x1, 272
	mov x2, 115
	mov x5, 279
	mov x6, 122
	movz w7, 0x2717
	movk w7, 0x1e, lsl #16 
	bl rectangulo_duplicado
// (272,101) (279,115) 161e15
	mov x1, 272
	mov x2, 101
	mov x5, 279
	mov x6, 115
	movz w7, 0x1e15
	movk w7, 0x16, lsl #16 
	bl rectangulo_duplicado
// (272,81) (279,101) 1a221a
	mov x1, 272
	mov x2, 81
	mov x5, 279
	mov x6, 101
	movz w7, 0x221a
	movk w7, 0x1a, lsl #16 
	bl rectangulo_duplicado
// (272,1) (279,81) 191e16
	mov x1, 272
	mov x2, 1
	mov x5, 279
	mov x6, 81
	movz w7, 0x1e16
	movk w7, 0x19, lsl #16 
	bl rectangulo_duplicado
// (279,379) (286,384) 242c1c
	mov x1, 279
	mov x2, 379
	mov x5, 286
	mov x6, 384
	movz w7, 0x2c1c
	movk w7, 0x24, lsl #16 
	bl rectangulo_duplicado
// (279,352) (286,379) 2d3725
	mov x1, 279
	mov x2, 352
	mov x5, 286
	mov x6, 379
	movz w7, 0x3725
	movk w7, 0x2d, lsl #16 
	bl rectangulo_duplicado
// (279,336) (286,352) 283127
	mov x1, 279
	mov x2, 336
	mov x5, 286
	mov x6, 352
	movz w7, 0x3127
	movk w7, 0x28, lsl #16 
	bl rectangulo_duplicado
// (279,315) (286,336) 2c3728
	mov x1, 279
	mov x2, 315
	mov x5, 286
	mov x6, 336
	movz w7, 0x3728
	movk w7, 0x2c, lsl #16 
	bl rectangulo_duplicado
// (279,281) (286,315) 303b2c
	mov x1, 279
	mov x2, 281
	mov x5, 286
	mov x6, 315
	movz w7, 0x3b2c
	movk w7, 0x30, lsl #16 
	bl rectangulo_duplicado
// (279,218) (286,281) 182018
	mov x1, 279
	mov x2, 218
	mov x5, 286
	mov x6, 281
	movz w7, 0x2018
	movk w7, 0x18, lsl #16 
	bl rectangulo_duplicado
// (279,205) (286,218) 191e16
	mov x1, 279
	mov x2, 205
	mov x5, 286
	mov x6, 218
	movz w7, 0x1e16
	movk w7, 0x19, lsl #16 
	bl rectangulo_duplicado
// (279,191) (286,205) 1e271a
	mov x1, 279
	mov x2, 191
	mov x5, 286
	mov x6, 205
	movz w7, 0x271a
	movk w7, 0x1e, lsl #16 
	bl rectangulo_duplicado
// (279,164) (286,191) 191f17
	mov x1, 279
	mov x2, 164
	mov x5, 286
	mov x6, 191
	movz w7, 0x1f17
	movk w7, 0x19, lsl #16 
	bl rectangulo_duplicado
// (279,149) (286,164) 1f271a
	mov x1, 279
	mov x2, 149
	mov x5, 286
	mov x6, 164
	movz w7, 0x271a
	movk w7, 0x1f, lsl #16 
	bl rectangulo_duplicado
// (279,115) (286,149) 191f17
	mov x1, 279
	mov x2, 115
	mov x5, 286
	mov x6, 149
	movz w7, 0x1f17
	movk w7, 0x19, lsl #16 
	bl rectangulo_duplicado
// (279,1) (286,115) 1b211a
	mov x1, 279
	mov x2, 1
	mov x5, 286
	mov x6, 115
	movz w7, 0x211a
	movk w7, 0x1b, lsl #16 
	bl rectangulo_duplicado
// (286,367) (292,384) 283425
	mov x1, 286
	mov x2, 367
	mov x5, 292
	mov x6, 384
	movz w7, 0x3425
	movk w7, 0x28, lsl #16 
	bl rectangulo_duplicado
// (286,356) (292,367) 2d3725
	mov x1, 286
	mov x2, 356
	mov x5, 292
	mov x6, 367
	movz w7, 0x3725
	movk w7, 0x2d, lsl #16 
	bl rectangulo_duplicado
// (286,336) (292,356) 283127
	mov x1, 286
	mov x2, 336
	mov x5, 292
	mov x6, 356
	movz w7, 0x3127
	movk w7, 0x28, lsl #16 
	bl rectangulo_duplicado
// (286,315) (292,336) 293427
	mov x1, 286
	mov x2, 315
	mov x5, 292
	mov x6, 336
	movz w7, 0x3427
	movk w7, 0x29, lsl #16 
	bl rectangulo_duplicado
// (286,295) (292,315) 20281d
	mov x1, 286
	mov x2, 295
	mov x5, 292
	mov x6, 315
	movz w7, 0x281d
	movk w7, 0x20, lsl #16 
	bl rectangulo_duplicado
// (286,281) (292,295) 232c21
	mov x1, 286
	mov x2, 281
	mov x5, 292
	mov x6, 295
	movz w7, 0x2c21
	movk w7, 0x23, lsl #16 
	bl rectangulo_duplicado
// (286,247) (292,281) 1c231b
	mov x1, 286
	mov x2, 247
	mov x5, 292
	mov x6, 281
	movz w7, 0x231b
	movk w7, 0x1c, lsl #16 
	bl rectangulo_duplicado
// (286,205) (292,247) 1c231b
	mov x1, 286
	mov x2, 205
	mov x5, 292
	mov x6, 247
	movz w7, 0x231b
	movk w7, 0x1c, lsl #16 
	bl rectangulo_duplicado
// (286,197) (292,205) 1e271a
	mov x1, 286
	mov x2, 197
	mov x5, 292
	mov x6, 205
	movz w7, 0x271a
	movk w7, 0x1e, lsl #16 
	bl rectangulo_duplicado
// (286,164) (292,197) 1a1e17
	mov x1, 286
	mov x2, 164
	mov x5, 292
	mov x6, 197
	movz w7, 0x1e17
	movk w7, 0x1a, lsl #16 
	bl rectangulo_duplicado
// (286,149) (292,164) 1f271a
	mov x1, 286
	mov x2, 149
	mov x5, 292
	mov x6, 164
	movz w7, 0x271a
	movk w7, 0x1f, lsl #16 
	bl rectangulo_duplicado
// (286,1) (292,149) 1a1e17
	mov x1, 286
	mov x2, 1
	mov x5, 292
	mov x6, 149
	movz w7, 0x1e17
	movk w7, 0x1a, lsl #16 
	bl rectangulo_duplicado
// (292,374) (298,384) 242c21
	mov x1, 292
	mov x2, 374
	mov x5, 298
	mov x6, 384
	movz w7, 0x2c21
	movk w7, 0x24, lsl #16 
	bl rectangulo_duplicado
// (292,366) (298,374) 2b3325
	mov x1, 292
	mov x2, 366
	mov x5, 298
	mov x6, 374
	movz w7, 0x3325
	movk w7, 0x2b, lsl #16 
	bl rectangulo_duplicado
// (292,344) (298,366) 272f21
	mov x1, 292
	mov x2, 344
	mov x5, 298
	mov x6, 366
	movz w7, 0x2f21
	movk w7, 0x27, lsl #16 
	bl rectangulo_duplicado
// (292,337) (298,344) 243021
	mov x1, 292
	mov x2, 337
	mov x5, 298
	mov x6, 344
	movz w7, 0x3021
	movk w7, 0x24, lsl #16 
	bl rectangulo_duplicado
// (292,330) (298,337) 283127
	mov x1, 292
	mov x2, 330
	mov x5, 298
	mov x6, 337
	movz w7, 0x3127
	movk w7, 0x28, lsl #16 
	bl rectangulo_duplicado
// (292,320) (298,330) 2c3424
	mov x1, 292
	mov x2, 320
	mov x5, 298
	mov x6, 330
	movz w7, 0x3424
	movk w7, 0x2c, lsl #16 
	bl rectangulo_duplicado
// (292,316) (298,320) 21291f
	mov x1, 292
	mov x2, 316
	mov x5, 298
	mov x6, 320
	movz w7, 0x291f
	movk w7, 0x21, lsl #16 
	bl rectangulo_duplicado
// (292,281) (298,316) 232c21
	mov x1, 292
	mov x2, 281
	mov x5, 298
	mov x6, 316
	movz w7, 0x2c21
	movk w7, 0x23, lsl #16 
	bl rectangulo_duplicado
// (292,218) (298,281) 1b2018
	mov x1, 292
	mov x2, 218
	mov x5, 298
	mov x6, 281
	movz w7, 0x2018
	movk w7, 0x1b, lsl #16 
	bl rectangulo_duplicado
// (292,205) (298,218) 161e15
	mov x1, 292
	mov x2, 205
	mov x5, 298
	mov x6, 218
	movz w7, 0x1e15
	movk w7, 0x16, lsl #16 
	bl rectangulo_duplicado
// (292,157) (298,205) 171e16
	mov x1, 292
	mov x2, 157
	mov x5, 298
	mov x6, 205
	movz w7, 0x1e16
	movk w7, 0x17, lsl #16 
	bl rectangulo_duplicado
// (292,149) (298,157) 1e271a
	mov x1, 292
	mov x2, 149
	mov x5, 298
	mov x6, 157
	movz w7, 0x271a
	movk w7, 0x1e, lsl #16 
	bl rectangulo_duplicado
// (292,1) (298,149) 191f17
	mov x1, 292
	mov x2, 1
	mov x5, 298
	mov x6, 149
	movz w7, 0x1f17
	movk w7, 0x19, lsl #16 
	bl rectangulo_duplicado
// (298,367) (305,384) 283324
	mov x1, 298
	mov x2, 367
	mov x5, 305
	mov x6, 384
	movz w7, 0x3324
	movk w7, 0x28, lsl #16 
	bl rectangulo_duplicado
// (298,343) (305,367) 283023
	mov x1, 298
	mov x2, 343
	mov x5, 305
	mov x6, 367
	movz w7, 0x3023
	movk w7, 0x28, lsl #16 
	bl rectangulo_duplicado
// (298,336) (305,343) 2c3728
	mov x1, 298
	mov x2, 336
	mov x5, 305
	mov x6, 343
	movz w7, 0x3728
	movk w7, 0x2c, lsl #16 
	bl rectangulo_duplicado
// (298,322) (305,336) 21291f
	mov x1, 298
	mov x2, 322
	mov x5, 305
	mov x6, 336
	movz w7, 0x291f
	movk w7, 0x21, lsl #16 
	bl rectangulo_duplicado
// (298,281) (305,322) 232c21
	mov x1, 298
	mov x2, 281
	mov x5, 305
	mov x6, 322
	movz w7, 0x2c21
	movk w7, 0x23, lsl #16 
	bl rectangulo_duplicado
// (298,191) (305,281) 191e16
	mov x1, 298
	mov x2, 191
	mov x5, 305
	mov x6, 281
	movz w7, 0x1e16
	movk w7, 0x19, lsl #16 
	bl rectangulo_duplicado
// (298,183) (305,191) 1e261a
	mov x1, 298
	mov x2, 183
	mov x5, 305
	mov x6, 191
	movz w7, 0x261a
	movk w7, 0x1e, lsl #16 
	bl rectangulo_duplicado
// (298,142) (305,183) 191f17
	mov x1, 298
	mov x2, 142
	mov x5, 305
	mov x6, 183
	movz w7, 0x1f17
	movk w7, 0x19, lsl #16 
	bl rectangulo_duplicado
// (298,135) (305,142) 1e2619
	mov x1, 298
	mov x2, 135
	mov x5, 305
	mov x6, 142
	movz w7, 0x2619
	movk w7, 0x1e, lsl #16 
	bl rectangulo_duplicado
// (298,1) (305,135) 191f17
	mov x1, 298
	mov x2, 1
	mov x5, 305
	mov x6, 135
	movz w7, 0x1f17
	movk w7, 0x19, lsl #16 
	bl rectangulo_duplicado
// (305,364) (312,384) 20281c
	mov x1, 305
	mov x2, 364
	mov x5, 312
	mov x6, 384
	movz w7, 0x281c
	movk w7, 0x20, lsl #16 
	bl rectangulo_duplicado
// (305,336) (312,364) 272c20
	mov x1, 305
	mov x2, 336
	mov x5, 312
	mov x6, 364
	movz w7, 0x2c20
	movk w7, 0x27, lsl #16 
	bl rectangulo_duplicado
// (305,308) (312,336) 20281d
	mov x1, 305
	mov x2, 308
	mov x5, 312
	mov x6, 336
	movz w7, 0x281d
	movk w7, 0x20, lsl #16 
	bl rectangulo_duplicado
// (305,281) (312,308) 232c21
	mov x1, 305
	mov x2, 281
	mov x5, 312
	mov x6, 308
	movz w7, 0x2c21
	movk w7, 0x23, lsl #16 
	bl rectangulo_duplicado
// (305,226) (312,281) 1c231b
	mov x1, 305
	mov x2, 226
	mov x5, 312
	mov x6, 281
	movz w7, 0x231b
	movk w7, 0x1c, lsl #16 
	bl rectangulo_duplicado
// (305,185) (312,226) 161e15
	mov x1, 305
	mov x2, 185
	mov x5, 312
	mov x6, 226
	movz w7, 0x1e15
	movk w7, 0x16, lsl #16 
	bl rectangulo_duplicado
// (305,164) (312,185) 1a2119
	mov x1, 305
	mov x2, 164
	mov x5, 312
	mov x6, 185
	movz w7, 0x2119
	movk w7, 0x1a, lsl #16 
	bl rectangulo_duplicado
// (305,142) (312,164) 171e16
	mov x1, 305
	mov x2, 142
	mov x5, 312
	mov x6, 164
	movz w7, 0x1e16
	movk w7, 0x17, lsl #16 
	bl rectangulo_duplicado
// (305,135) (312,142) 1e2619
	mov x1, 305
	mov x2, 135
	mov x5, 312
	mov x6, 142
	movz w7, 0x2619
	movk w7, 0x1e, lsl #16 
	bl rectangulo_duplicado
// (305,115) (312,135) 1a2119
	mov x1, 305
	mov x2, 115
	mov x5, 312
	mov x6, 135
	movz w7, 0x2119
	movk w7, 0x1a, lsl #16 
	bl rectangulo_duplicado
// (305,1) (312,115) 171e16
	mov x1, 305
	mov x2, 1
	mov x5, 312
	mov x6, 115
	movz w7, 0x1e16
	movk w7, 0x17, lsl #16 
	bl rectangulo_duplicado
// (312,379) (321,384) 272f24
	mov x1, 312
	mov x2, 379
	mov x5, 321
	mov x6, 384
	movz w7, 0x2f24
	movk w7, 0x27, lsl #16 
	bl rectangulo_duplicado
// (312,365) (321,379) 2b3728
	mov x1, 312
	mov x2, 365
	mov x5, 321
	mov x6, 379
	movz w7, 0x3728
	movk w7, 0x2b, lsl #16 
	bl rectangulo_duplicado
// (312,337) (321,365) 242c20
	mov x1, 312
	mov x2, 337
	mov x5, 321
	mov x6, 365
	movz w7, 0x2c20
	movk w7, 0x24, lsl #16 
	bl rectangulo_duplicado
// (312,329) (321,337) 21291f
	mov x1, 312
	mov x2, 329
	mov x5, 321
	mov x6, 337
	movz w7, 0x291f
	movk w7, 0x21, lsl #16 
	bl rectangulo_duplicado
// (312,302) (321,329) 273124
	mov x1, 312
	mov x2, 302
	mov x5, 321
	mov x6, 329
	movz w7, 0x3124
	movk w7, 0x27, lsl #16 
	bl rectangulo_duplicado
// (312,281) (321,302) 20281d
	mov x1, 312
	mov x2, 281
	mov x5, 321
	mov x6, 302
	movz w7, 0x281d
	movk w7, 0x20, lsl #16 
	bl rectangulo_duplicado
// (312,267) (321,281) 1c231b
	mov x1, 312
	mov x2, 267
	mov x5, 321
	mov x6, 281
	movz w7, 0x231b
	movk w7, 0x1c, lsl #16 
	bl rectangulo_duplicado
// (312,235) (321,267) 20251c
	mov x1, 312
	mov x2, 235
	mov x5, 321
	mov x6, 267
	movz w7, 0x251c
	movk w7, 0x20, lsl #16 
	bl rectangulo_duplicado
// (312,149) (321,235) 191f17
	mov x1, 312
	mov x2, 149
	mov x5, 321
	mov x6, 235
	movz w7, 0x1f17
	movk w7, 0x19, lsl #16 
	bl rectangulo_duplicado
// (312,135) (321,149) 1d271b
	mov x1, 312
	mov x2, 135
	mov x5, 321
	mov x6, 149
	movz w7, 0x271b
	movk w7, 0x1d, lsl #16 
	bl rectangulo_duplicado
// (312,129) (321,135) 1b221a
	mov x1, 312
	mov x2, 129
	mov x5, 321
	mov x6, 135
	movz w7, 0x221a
	movk w7, 0x1b, lsl #16 
	bl rectangulo_duplicado
// (312,1) (321,129) 171e16
	mov x1, 312
	mov x2, 1
	mov x5, 321
	mov x6, 129
	movz w7, 0x1e16
	movk w7, 0x17, lsl #16 
	bl rectangulo_duplicado

	ldr x28, [sp]
	add sp, sp, #8
	mov x30, x28
	ret

