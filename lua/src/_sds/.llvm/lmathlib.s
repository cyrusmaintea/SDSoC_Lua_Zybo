; ModuleID = 'C:/Users/DevolutionX/workspace/lua/src/lmathlib.c'
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-n32-S64"
target triple = "armv7--linux-gnueabihf"

%struct.luaL_Reg = type { i8*, i32 (%struct.lua_State*)* }
%struct.lua_State = type opaque

@mathlib = internal constant [36 x %struct.luaL_Reg] [%struct.luaL_Reg { i8* getelementptr inbounds ([4 x i8]* @.str4, i32 0, i32 0), i32 (%struct.lua_State*)* @math_abs }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8]* @.str5, i32 0, i32 0), i32 (%struct.lua_State*)* @math_acos }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8]* @.str6, i32 0, i32 0), i32 (%struct.lua_State*)* @math_asin }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8]* @.str7, i32 0, i32 0), i32 (%struct.lua_State*)* @math_atan }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8]* @.str8, i32 0, i32 0), i32 (%struct.lua_State*)* @math_ceil }, %struct.luaL_Reg { i8* getelementptr inbounds ([4 x i8]* @.str9, i32 0, i32 0), i32 (%struct.lua_State*)* @math_cos }, %struct.luaL_Reg { i8* getelementptr inbounds ([4 x i8]* @.str10, i32 0, i32 0), i32 (%struct.lua_State*)* @math_deg }, %struct.luaL_Reg { i8* getelementptr inbounds ([4 x i8]* @.str11, i32 0, i32 0), i32 (%struct.lua_State*)* @math_exp }, %struct.luaL_Reg { i8* getelementptr inbounds ([10 x i8]* @.str12, i32 0, i32 0), i32 (%struct.lua_State*)* @math_toint }, %struct.luaL_Reg { i8* getelementptr inbounds ([6 x i8]* @.str13, i32 0, i32 0), i32 (%struct.lua_State*)* @math_floor }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8]* @.str14, i32 0, i32 0), i32 (%struct.lua_State*)* @math_fmod }, %struct.luaL_Reg { i8* getelementptr inbounds ([4 x i8]* @.str15, i32 0, i32 0), i32 (%struct.lua_State*)* @math_ult }, %struct.luaL_Reg { i8* getelementptr inbounds ([4 x i8]* @.str16, i32 0, i32 0), i32 (%struct.lua_State*)* @math_log }, %struct.luaL_Reg { i8* getelementptr inbounds ([4 x i8]* @.str17, i32 0, i32 0), i32 (%struct.lua_State*)* @math_max }, %struct.luaL_Reg { i8* getelementptr inbounds ([4 x i8]* @.str18, i32 0, i32 0), i32 (%struct.lua_State*)* @math_min }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8]* @.str19, i32 0, i32 0), i32 (%struct.lua_State*)* @math_modf }, %struct.luaL_Reg { i8* getelementptr inbounds ([4 x i8]* @.str20, i32 0, i32 0), i32 (%struct.lua_State*)* @math_rad }, %struct.luaL_Reg { i8* getelementptr inbounds ([7 x i8]* @.str21, i32 0, i32 0), i32 (%struct.lua_State*)* @math_random }, %struct.luaL_Reg { i8* getelementptr inbounds ([11 x i8]* @.str22, i32 0, i32 0), i32 (%struct.lua_State*)* @math_randomseed }, %struct.luaL_Reg { i8* getelementptr inbounds ([4 x i8]* @.str23, i32 0, i32 0), i32 (%struct.lua_State*)* @math_sin }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8]* @.str24, i32 0, i32 0), i32 (%struct.lua_State*)* @math_sqrt }, %struct.luaL_Reg { i8* getelementptr inbounds ([4 x i8]* @.str25, i32 0, i32 0), i32 (%struct.lua_State*)* @math_tan }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8]* @.str26, i32 0, i32 0), i32 (%struct.lua_State*)* @math_type }, %struct.luaL_Reg { i8* getelementptr inbounds ([6 x i8]* @.str27, i32 0, i32 0), i32 (%struct.lua_State*)* @math_atan }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8]* @.str28, i32 0, i32 0), i32 (%struct.lua_State*)* @math_cosh }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8]* @.str29, i32 0, i32 0), i32 (%struct.lua_State*)* @math_sinh }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8]* @.str30, i32 0, i32 0), i32 (%struct.lua_State*)* @math_tanh }, %struct.luaL_Reg { i8* getelementptr inbounds ([4 x i8]* @.str31, i32 0, i32 0), i32 (%struct.lua_State*)* @math_pow }, %struct.luaL_Reg { i8* getelementptr inbounds ([6 x i8]* @.str32, i32 0, i32 0), i32 (%struct.lua_State*)* @math_frexp }, %struct.luaL_Reg { i8* getelementptr inbounds ([6 x i8]* @.str33, i32 0, i32 0), i32 (%struct.lua_State*)* @math_ldexp }, %struct.luaL_Reg { i8* getelementptr inbounds ([6 x i8]* @.str34, i32 0, i32 0), i32 (%struct.lua_State*)* @math_log10 }, %struct.luaL_Reg { i8* getelementptr inbounds ([3 x i8]* @.str, i32 0, i32 0), i32 (%struct.lua_State*)* null }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8]* @.str1, i32 0, i32 0), i32 (%struct.lua_State*)* null }, %struct.luaL_Reg { i8* getelementptr inbounds ([11 x i8]* @.str2, i32 0, i32 0), i32 (%struct.lua_State*)* null }, %struct.luaL_Reg { i8* getelementptr inbounds ([11 x i8]* @.str3, i32 0, i32 0), i32 (%struct.lua_State*)* null }, %struct.luaL_Reg zeroinitializer], align 4
@.str = private unnamed_addr constant [3 x i8] c"pi\00", align 1
@.str1 = private unnamed_addr constant [5 x i8] c"huge\00", align 1
@.str2 = private unnamed_addr constant [11 x i8] c"maxinteger\00", align 1
@.str3 = private unnamed_addr constant [11 x i8] c"mininteger\00", align 1
@.str4 = private unnamed_addr constant [4 x i8] c"abs\00", align 1
@.str5 = private unnamed_addr constant [5 x i8] c"acos\00", align 1
@.str6 = private unnamed_addr constant [5 x i8] c"asin\00", align 1
@.str7 = private unnamed_addr constant [5 x i8] c"atan\00", align 1
@.str8 = private unnamed_addr constant [5 x i8] c"ceil\00", align 1
@.str9 = private unnamed_addr constant [4 x i8] c"cos\00", align 1
@.str10 = private unnamed_addr constant [4 x i8] c"deg\00", align 1
@.str11 = private unnamed_addr constant [4 x i8] c"exp\00", align 1
@.str12 = private unnamed_addr constant [10 x i8] c"tointeger\00", align 1
@.str13 = private unnamed_addr constant [6 x i8] c"floor\00", align 1
@.str14 = private unnamed_addr constant [5 x i8] c"fmod\00", align 1
@.str15 = private unnamed_addr constant [4 x i8] c"ult\00", align 1
@.str16 = private unnamed_addr constant [4 x i8] c"log\00", align 1
@.str17 = private unnamed_addr constant [4 x i8] c"max\00", align 1
@.str18 = private unnamed_addr constant [4 x i8] c"min\00", align 1
@.str19 = private unnamed_addr constant [5 x i8] c"modf\00", align 1
@.str20 = private unnamed_addr constant [4 x i8] c"rad\00", align 1
@.str21 = private unnamed_addr constant [7 x i8] c"random\00", align 1
@.str22 = private unnamed_addr constant [11 x i8] c"randomseed\00", align 1
@.str23 = private unnamed_addr constant [4 x i8] c"sin\00", align 1
@.str24 = private unnamed_addr constant [5 x i8] c"sqrt\00", align 1
@.str25 = private unnamed_addr constant [4 x i8] c"tan\00", align 1
@.str26 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str27 = private unnamed_addr constant [6 x i8] c"atan2\00", align 1
@.str28 = private unnamed_addr constant [5 x i8] c"cosh\00", align 1
@.str29 = private unnamed_addr constant [5 x i8] c"sinh\00", align 1
@.str30 = private unnamed_addr constant [5 x i8] c"tanh\00", align 1
@.str31 = private unnamed_addr constant [4 x i8] c"pow\00", align 1
@.str32 = private unnamed_addr constant [6 x i8] c"frexp\00", align 1
@.str33 = private unnamed_addr constant [6 x i8] c"ldexp\00", align 1
@.str34 = private unnamed_addr constant [6 x i8] c"log10\00", align 1
@.str35 = private unnamed_addr constant [8 x i8] c"integer\00", align 1
@.str36 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@.str37 = private unnamed_addr constant [26 x i8] c"wrong number of arguments\00", align 1
@.str38 = private unnamed_addr constant [18 x i8] c"interval is empty\00", align 1
@.str39 = private unnamed_addr constant [19 x i8] c"interval too large\00", align 1
@.str40 = private unnamed_addr constant [15 x i8] c"value expected\00", align 1
@.str41 = private unnamed_addr constant [5 x i8] c"zero\00", align 1

; Function Attrs: nounwind
define i32 @luaopen_math(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !255), !dbg !256
  %2 = load %struct.lua_State** %1, align 4, !dbg !257
  call void @luaL_checkversion_(%struct.lua_State* %2, double 5.030000e+02, i32 136), !dbg !257
  %3 = load %struct.lua_State** %1, align 4, !dbg !257
  call void @lua_createtable(%struct.lua_State* %3, i32 0, i32 35), !dbg !257
  %4 = load %struct.lua_State** %1, align 4, !dbg !257
  call void @luaL_setfuncs(%struct.lua_State* %4, %struct.luaL_Reg* getelementptr inbounds ([36 x %struct.luaL_Reg]* @mathlib, i32 0, i32 0), i32 0), !dbg !257
  %5 = load %struct.lua_State** %1, align 4, !dbg !258
  call void @lua_pushnumber(%struct.lua_State* %5, double 0x400921FB54442D18), !dbg !258
  %6 = load %struct.lua_State** %1, align 4, !dbg !259
  call void @lua_setfield(%struct.lua_State* %6, i32 -2, i8* getelementptr inbounds ([3 x i8]* @.str, i32 0, i32 0)), !dbg !259
  %7 = load %struct.lua_State** %1, align 4, !dbg !260
  call void @lua_pushnumber(%struct.lua_State* %7, double 0x7FF0000000000000), !dbg !260
  %8 = load %struct.lua_State** %1, align 4, !dbg !261
  call void @lua_setfield(%struct.lua_State* %8, i32 -2, i8* getelementptr inbounds ([5 x i8]* @.str1, i32 0, i32 0)), !dbg !261
  %9 = load %struct.lua_State** %1, align 4, !dbg !262
  call void @lua_pushinteger(%struct.lua_State* %9, i64 9223372036854775807), !dbg !262
  %10 = load %struct.lua_State** %1, align 4, !dbg !263
  call void @lua_setfield(%struct.lua_State* %10, i32 -2, i8* getelementptr inbounds ([11 x i8]* @.str2, i32 0, i32 0)), !dbg !263
  %11 = load %struct.lua_State** %1, align 4, !dbg !264
  call void @lua_pushinteger(%struct.lua_State* %11, i64 -9223372036854775808), !dbg !264
  %12 = load %struct.lua_State** %1, align 4, !dbg !265
  call void @lua_setfield(%struct.lua_State* %12, i32 -2, i8* getelementptr inbounds ([11 x i8]* @.str3, i32 0, i32 0)), !dbg !265
  ret i32 1, !dbg !266
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

declare void @luaL_checkversion_(%struct.lua_State*, double, i32) #2

declare void @lua_createtable(%struct.lua_State*, i32, i32) #2

declare void @luaL_setfuncs(%struct.lua_State*, %struct.luaL_Reg*, i32) #2

declare void @lua_pushnumber(%struct.lua_State*, double) #2

declare void @lua_setfield(%struct.lua_State*, i32, i8*) #2

declare void @lua_pushinteger(%struct.lua_State*, i64) #2

; Function Attrs: nounwind
define internal i32 @math_abs(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %n = alloca i64, align 8
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !267), !dbg !268
  %2 = load %struct.lua_State** %1, align 4, !dbg !269
  %3 = call i32 @lua_isinteger(%struct.lua_State* %2, i32 1), !dbg !269
  %4 = icmp ne i32 %3, 0, !dbg !269
  br i1 %4, label %5, label %16, !dbg !269

; <label>:5                                       ; preds = %0
  call void @llvm.dbg.declare(metadata !{i64* %n}, metadata !271), !dbg !275
  %6 = load %struct.lua_State** %1, align 4, !dbg !276
  %7 = call i64 @lua_tointegerx(%struct.lua_State* %6, i32 1, i32* null), !dbg !276
  store i64 %7, i64* %n, align 8, !dbg !276
  %8 = load i64* %n, align 8, !dbg !277
  %9 = icmp slt i64 %8, 0, !dbg !277
  br i1 %9, label %10, label %13, !dbg !277

; <label>:10                                      ; preds = %5
  %11 = load i64* %n, align 8, !dbg !279
  %12 = sub i64 0, %11, !dbg !279
  store i64 %12, i64* %n, align 8, !dbg !279
  br label %13, !dbg !279

; <label>:13                                      ; preds = %10, %5
  %14 = load %struct.lua_State** %1, align 4, !dbg !281
  %15 = load i64* %n, align 8, !dbg !281
  call void @lua_pushinteger(%struct.lua_State* %14, i64 %15), !dbg !281
  br label %21, !dbg !282

; <label>:16                                      ; preds = %0
  %17 = load %struct.lua_State** %1, align 4, !dbg !283
  %18 = load %struct.lua_State** %1, align 4, !dbg !284
  %19 = call double @luaL_checknumber(%struct.lua_State* %18, i32 1), !dbg !284
  %20 = call double @fabs(double %19) #1, !dbg !285
  call void @lua_pushnumber(%struct.lua_State* %17, double %20), !dbg !283
  br label %21

; <label>:21                                      ; preds = %16, %13
  ret i32 1, !dbg !286
}

; Function Attrs: nounwind
define internal i32 @math_acos(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !287), !dbg !288
  %2 = load %struct.lua_State** %1, align 4, !dbg !289
  %3 = load %struct.lua_State** %1, align 4, !dbg !290
  %4 = call double @luaL_checknumber(%struct.lua_State* %3, i32 1), !dbg !290
  %5 = call double @acos(double %4) #4, !dbg !291
  call void @lua_pushnumber(%struct.lua_State* %2, double %5), !dbg !289
  ret i32 1, !dbg !292
}

; Function Attrs: nounwind
define internal i32 @math_asin(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !293), !dbg !294
  %2 = load %struct.lua_State** %1, align 4, !dbg !295
  %3 = load %struct.lua_State** %1, align 4, !dbg !296
  %4 = call double @luaL_checknumber(%struct.lua_State* %3, i32 1), !dbg !296
  %5 = call double @asin(double %4) #4, !dbg !297
  call void @lua_pushnumber(%struct.lua_State* %2, double %5), !dbg !295
  ret i32 1, !dbg !298
}

; Function Attrs: nounwind
define internal i32 @math_atan(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %y = alloca double, align 8
  %x = alloca double, align 8
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !299), !dbg !300
  call void @llvm.dbg.declare(metadata !{double* %y}, metadata !301), !dbg !302
  %2 = load %struct.lua_State** %1, align 4, !dbg !303
  %3 = call double @luaL_checknumber(%struct.lua_State* %2, i32 1), !dbg !303
  store double %3, double* %y, align 8, !dbg !303
  call void @llvm.dbg.declare(metadata !{double* %x}, metadata !304), !dbg !305
  %4 = load %struct.lua_State** %1, align 4, !dbg !306
  %5 = call double @luaL_optnumber(%struct.lua_State* %4, i32 2, double 1.000000e+00), !dbg !306
  store double %5, double* %x, align 8, !dbg !306
  %6 = load %struct.lua_State** %1, align 4, !dbg !307
  %7 = load double* %y, align 8, !dbg !308
  %8 = load double* %x, align 8, !dbg !308
  %9 = call double @atan2(double %7, double %8) #4, !dbg !308
  call void @lua_pushnumber(%struct.lua_State* %6, double %9), !dbg !307
  ret i32 1, !dbg !309
}

; Function Attrs: nounwind
define internal i32 @math_ceil(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %d = alloca double, align 8
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !310), !dbg !311
  %2 = load %struct.lua_State** %1, align 4, !dbg !312
  %3 = call i32 @lua_isinteger(%struct.lua_State* %2, i32 1), !dbg !312
  %4 = icmp ne i32 %3, 0, !dbg !312
  br i1 %4, label %5, label %7, !dbg !312

; <label>:5                                       ; preds = %0
  %6 = load %struct.lua_State** %1, align 4, !dbg !314
  call void @lua_settop(%struct.lua_State* %6, i32 1), !dbg !314
  br label %13, !dbg !314

; <label>:7                                       ; preds = %0
  call void @llvm.dbg.declare(metadata !{double* %d}, metadata !315), !dbg !317
  %8 = load %struct.lua_State** %1, align 4, !dbg !318
  %9 = call double @luaL_checknumber(%struct.lua_State* %8, i32 1), !dbg !318
  %10 = call double @ceil(double %9) #1, !dbg !319
  store double %10, double* %d, align 8, !dbg !319
  %11 = load %struct.lua_State** %1, align 4, !dbg !320
  %12 = load double* %d, align 8, !dbg !320
  call void @pushnumint(%struct.lua_State* %11, double %12), !dbg !320
  br label %13

; <label>:13                                      ; preds = %7, %5
  ret i32 1, !dbg !321
}

; Function Attrs: nounwind
define internal i32 @math_cos(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !322), !dbg !323
  %2 = load %struct.lua_State** %1, align 4, !dbg !324
  %3 = load %struct.lua_State** %1, align 4, !dbg !325
  %4 = call double @luaL_checknumber(%struct.lua_State* %3, i32 1), !dbg !325
  %5 = call double @cos(double %4) #4, !dbg !326
  call void @lua_pushnumber(%struct.lua_State* %2, double %5), !dbg !324
  ret i32 1, !dbg !327
}

; Function Attrs: nounwind
define internal i32 @math_deg(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !328), !dbg !329
  %2 = load %struct.lua_State** %1, align 4, !dbg !330
  %3 = load %struct.lua_State** %1, align 4, !dbg !331
  %4 = call double @luaL_checknumber(%struct.lua_State* %3, i32 1), !dbg !331
  %5 = fmul double %4, 0x404CA5DC1A63C1F8, !dbg !331
  call void @lua_pushnumber(%struct.lua_State* %2, double %5), !dbg !330
  ret i32 1, !dbg !332
}

; Function Attrs: nounwind
define internal i32 @math_exp(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !333), !dbg !334
  %2 = load %struct.lua_State** %1, align 4, !dbg !335
  %3 = load %struct.lua_State** %1, align 4, !dbg !336
  %4 = call double @luaL_checknumber(%struct.lua_State* %3, i32 1), !dbg !336
  %5 = call double @exp(double %4) #4, !dbg !337
  call void @lua_pushnumber(%struct.lua_State* %2, double %5), !dbg !335
  ret i32 1, !dbg !338
}

; Function Attrs: nounwind
define internal i32 @math_toint(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %valid = alloca i32, align 4
  %n = alloca i64, align 8
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !339), !dbg !340
  call void @llvm.dbg.declare(metadata !{i32* %valid}, metadata !341), !dbg !342
  call void @llvm.dbg.declare(metadata !{i64* %n}, metadata !343), !dbg !344
  %2 = load %struct.lua_State** %1, align 4, !dbg !345
  %3 = call i64 @lua_tointegerx(%struct.lua_State* %2, i32 1, i32* %valid), !dbg !345
  store i64 %3, i64* %n, align 8, !dbg !345
  %4 = load i32* %valid, align 4, !dbg !346
  %5 = icmp ne i32 %4, 0, !dbg !346
  br i1 %5, label %6, label %9, !dbg !346

; <label>:6                                       ; preds = %0
  %7 = load %struct.lua_State** %1, align 4, !dbg !348
  %8 = load i64* %n, align 8, !dbg !348
  call void @lua_pushinteger(%struct.lua_State* %7, i64 %8), !dbg !348
  br label %12, !dbg !348

; <label>:9                                       ; preds = %0
  %10 = load %struct.lua_State** %1, align 4, !dbg !349
  call void @luaL_checkany(%struct.lua_State* %10, i32 1), !dbg !349
  %11 = load %struct.lua_State** %1, align 4, !dbg !351
  call void @lua_pushnil(%struct.lua_State* %11), !dbg !351
  br label %12

; <label>:12                                      ; preds = %9, %6
  ret i32 1, !dbg !352
}

; Function Attrs: nounwind
define internal i32 @math_floor(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %d = alloca double, align 8
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !353), !dbg !354
  %2 = load %struct.lua_State** %1, align 4, !dbg !355
  %3 = call i32 @lua_isinteger(%struct.lua_State* %2, i32 1), !dbg !355
  %4 = icmp ne i32 %3, 0, !dbg !355
  br i1 %4, label %5, label %7, !dbg !355

; <label>:5                                       ; preds = %0
  %6 = load %struct.lua_State** %1, align 4, !dbg !357
  call void @lua_settop(%struct.lua_State* %6, i32 1), !dbg !357
  br label %13, !dbg !357

; <label>:7                                       ; preds = %0
  call void @llvm.dbg.declare(metadata !{double* %d}, metadata !358), !dbg !360
  %8 = load %struct.lua_State** %1, align 4, !dbg !361
  %9 = call double @luaL_checknumber(%struct.lua_State* %8, i32 1), !dbg !361
  %10 = call double @floor(double %9) #1, !dbg !362
  store double %10, double* %d, align 8, !dbg !362
  %11 = load %struct.lua_State** %1, align 4, !dbg !363
  %12 = load double* %d, align 8, !dbg !363
  call void @pushnumint(%struct.lua_State* %11, double %12), !dbg !363
  br label %13

; <label>:13                                      ; preds = %7, %5
  ret i32 1, !dbg !364
}

; Function Attrs: nounwind
define internal i32 @math_fmod(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %d = alloca i64, align 8
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !365), !dbg !366
  %2 = load %struct.lua_State** %1, align 4, !dbg !367
  %3 = call i32 @lua_isinteger(%struct.lua_State* %2, i32 1), !dbg !367
  %4 = icmp ne i32 %3, 0, !dbg !367
  br i1 %4, label %5, label %33, !dbg !367

; <label>:5                                       ; preds = %0
  %6 = load %struct.lua_State** %1, align 4, !dbg !369
  %7 = call i32 @lua_isinteger(%struct.lua_State* %6, i32 2), !dbg !369
  %8 = icmp ne i32 %7, 0, !dbg !369
  br i1 %8, label %9, label %33, !dbg !369

; <label>:9                                       ; preds = %5
  call void @llvm.dbg.declare(metadata !{i64* %d}, metadata !371), !dbg !373
  %10 = load %struct.lua_State** %1, align 4, !dbg !374
  %11 = call i64 @lua_tointegerx(%struct.lua_State* %10, i32 2, i32* null), !dbg !374
  store i64 %11, i64* %d, align 8, !dbg !374
  %12 = load i64* %d, align 8, !dbg !375
  %13 = add i64 %12, 1, !dbg !375
  %14 = icmp ule i64 %13, 1, !dbg !375
  br i1 %14, label %15, label %26, !dbg !375

; <label>:15                                      ; preds = %9
  %16 = load i64* %d, align 8, !dbg !377
  %17 = icmp ne i64 %16, 0, !dbg !377
  br i1 %17, label %22, label %18, !dbg !377

; <label>:18                                      ; preds = %15
  %19 = load %struct.lua_State** %1, align 4, !dbg !379
  %20 = call i32 @luaL_argerror(%struct.lua_State* %19, i32 2, i8* getelementptr inbounds ([5 x i8]* @.str41, i32 0, i32 0)), !dbg !379
  %21 = icmp ne i32 %20, 0, !dbg !379
  br label %22, !dbg !379

; <label>:22                                      ; preds = %18, %15
  %23 = phi i1 [ true, %15 ], [ %21, %18 ]
  %24 = zext i1 %23 to i32, !dbg !381
  %25 = load %struct.lua_State** %1, align 4, !dbg !384
  call void @lua_pushinteger(%struct.lua_State* %25, i64 0), !dbg !384
  br label %32, !dbg !385

; <label>:26                                      ; preds = %9
  %27 = load %struct.lua_State** %1, align 4, !dbg !386
  %28 = load %struct.lua_State** %1, align 4, !dbg !387
  %29 = call i64 @lua_tointegerx(%struct.lua_State* %28, i32 1, i32* null), !dbg !387
  %30 = load i64* %d, align 8, !dbg !387
  %31 = srem i64 %29, %30, !dbg !387
  call void @lua_pushinteger(%struct.lua_State* %27, i64 %31), !dbg !386
  br label %32

; <label>:32                                      ; preds = %26, %22
  br label %40, !dbg !388

; <label>:33                                      ; preds = %5, %0
  %34 = load %struct.lua_State** %1, align 4, !dbg !389
  %35 = load %struct.lua_State** %1, align 4, !dbg !390
  %36 = call double @luaL_checknumber(%struct.lua_State* %35, i32 1), !dbg !390
  %37 = load %struct.lua_State** %1, align 4, !dbg !391
  %38 = call double @luaL_checknumber(%struct.lua_State* %37, i32 2), !dbg !391
  %39 = call double @fmod(double %36, double %38) #4, !dbg !392
  call void @lua_pushnumber(%struct.lua_State* %34, double %39), !dbg !389
  br label %40

; <label>:40                                      ; preds = %33, %32
  ret i32 1, !dbg !393
}

; Function Attrs: nounwind
define internal i32 @math_ult(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %a = alloca i64, align 8
  %b = alloca i64, align 8
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !394), !dbg !395
  call void @llvm.dbg.declare(metadata !{i64* %a}, metadata !396), !dbg !397
  %2 = load %struct.lua_State** %1, align 4, !dbg !398
  %3 = call i64 @luaL_checkinteger(%struct.lua_State* %2, i32 1), !dbg !398
  store i64 %3, i64* %a, align 8, !dbg !398
  call void @llvm.dbg.declare(metadata !{i64* %b}, metadata !399), !dbg !400
  %4 = load %struct.lua_State** %1, align 4, !dbg !401
  %5 = call i64 @luaL_checkinteger(%struct.lua_State* %4, i32 2), !dbg !401
  store i64 %5, i64* %b, align 8, !dbg !401
  %6 = load %struct.lua_State** %1, align 4, !dbg !402
  %7 = load i64* %a, align 8, !dbg !402
  %8 = load i64* %b, align 8, !dbg !402
  %9 = icmp ult i64 %7, %8, !dbg !402
  %10 = zext i1 %9 to i32, !dbg !402
  call void @lua_pushboolean(%struct.lua_State* %6, i32 %10), !dbg !402
  ret i32 1, !dbg !403
}

; Function Attrs: nounwind
define internal i32 @math_log(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %x = alloca double, align 8
  %res = alloca double, align 8
  %base = alloca double, align 8
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !404), !dbg !405
  call void @llvm.dbg.declare(metadata !{double* %x}, metadata !406), !dbg !407
  %2 = load %struct.lua_State** %1, align 4, !dbg !408
  %3 = call double @luaL_checknumber(%struct.lua_State* %2, i32 1), !dbg !408
  store double %3, double* %x, align 8, !dbg !408
  call void @llvm.dbg.declare(metadata !{double* %res}, metadata !409), !dbg !410
  %4 = load %struct.lua_State** %1, align 4, !dbg !411
  %5 = call i32 @lua_type(%struct.lua_State* %4, i32 2), !dbg !411
  %6 = icmp sle i32 %5, 0, !dbg !411
  br i1 %6, label %7, label %10, !dbg !411

; <label>:7                                       ; preds = %0
  %8 = load double* %x, align 8, !dbg !413
  %9 = call double @log(double %8) #4, !dbg !413
  store double %9, double* %res, align 8, !dbg !413
  br label %32, !dbg !413

; <label>:10                                      ; preds = %0
  call void @llvm.dbg.declare(metadata !{double* %base}, metadata !414), !dbg !416
  %11 = load %struct.lua_State** %1, align 4, !dbg !417
  %12 = call double @luaL_checknumber(%struct.lua_State* %11, i32 2), !dbg !417
  store double %12, double* %base, align 8, !dbg !417
  %13 = load double* %base, align 8, !dbg !418
  %14 = fcmp oeq double %13, 2.000000e+00, !dbg !418
  br i1 %14, label %15, label %18, !dbg !418

; <label>:15                                      ; preds = %10
  %16 = load double* %x, align 8, !dbg !420
  %17 = call double @log2(double %16) #4, !dbg !420
  store double %17, double* %res, align 8, !dbg !420
  br label %31, !dbg !420

; <label>:18                                      ; preds = %10
  %19 = load double* %base, align 8, !dbg !422
  %20 = fcmp oeq double %19, 1.000000e+01, !dbg !422
  br i1 %20, label %21, label %24, !dbg !422

; <label>:21                                      ; preds = %18
  %22 = load double* %x, align 8, !dbg !424
  %23 = call double @log10(double %22) #4, !dbg !424
  store double %23, double* %res, align 8, !dbg !424
  br label %30, !dbg !424

; <label>:24                                      ; preds = %18
  %25 = load double* %x, align 8, !dbg !426
  %26 = call double @log(double %25) #4, !dbg !426
  %27 = load double* %base, align 8, !dbg !427
  %28 = call double @log(double %27) #4, !dbg !427
  %29 = fdiv double %26, %28, !dbg !427
  store double %29, double* %res, align 8, !dbg !427
  br label %30

; <label>:30                                      ; preds = %24, %21
  br label %31

; <label>:31                                      ; preds = %30, %15
  br label %32

; <label>:32                                      ; preds = %31, %7
  %33 = load %struct.lua_State** %1, align 4, !dbg !428
  %34 = load double* %res, align 8, !dbg !428
  call void @lua_pushnumber(%struct.lua_State* %33, double %34), !dbg !428
  ret i32 1, !dbg !429
}

; Function Attrs: nounwind
define internal i32 @math_max(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %n = alloca i32, align 4
  %imax = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !430), !dbg !431
  call void @llvm.dbg.declare(metadata !{i32* %n}, metadata !432), !dbg !433
  %2 = load %struct.lua_State** %1, align 4, !dbg !434
  %3 = call i32 @lua_gettop(%struct.lua_State* %2), !dbg !434
  store i32 %3, i32* %n, align 4, !dbg !434
  call void @llvm.dbg.declare(metadata !{i32* %imax}, metadata !435), !dbg !436
  store i32 1, i32* %imax, align 4, !dbg !437
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !438), !dbg !439
  %4 = load i32* %n, align 4, !dbg !440
  %5 = icmp sge i32 %4, 1, !dbg !440
  br i1 %5, label %10, label %6, !dbg !440

; <label>:6                                       ; preds = %0
  %7 = load %struct.lua_State** %1, align 4, !dbg !441
  %8 = call i32 @luaL_argerror(%struct.lua_State* %7, i32 1, i8* getelementptr inbounds ([15 x i8]* @.str40, i32 0, i32 0)), !dbg !441
  %9 = icmp ne i32 %8, 0, !dbg !441
  br label %10, !dbg !441

; <label>:10                                      ; preds = %6, %0
  %11 = phi i1 [ true, %0 ], [ %9, %6 ]
  %12 = zext i1 %11 to i32, !dbg !443
  store i32 2, i32* %i, align 4, !dbg !446
  br label %13, !dbg !446

; <label>:13                                      ; preds = %26, %10
  %14 = load i32* %i, align 4, !dbg !448
  %15 = load i32* %n, align 4, !dbg !448
  %16 = icmp sle i32 %14, %15, !dbg !448
  br i1 %16, label %17, label %29, !dbg !448

; <label>:17                                      ; preds = %13
  %18 = load %struct.lua_State** %1, align 4, !dbg !451
  %19 = load i32* %imax, align 4, !dbg !451
  %20 = load i32* %i, align 4, !dbg !451
  %21 = call i32 @lua_compare(%struct.lua_State* %18, i32 %19, i32 %20, i32 1), !dbg !451
  %22 = icmp ne i32 %21, 0, !dbg !451
  br i1 %22, label %23, label %25, !dbg !451

; <label>:23                                      ; preds = %17
  %24 = load i32* %i, align 4, !dbg !454
  store i32 %24, i32* %imax, align 4, !dbg !454
  br label %25, !dbg !454

; <label>:25                                      ; preds = %23, %17
  br label %26, !dbg !455

; <label>:26                                      ; preds = %25
  %27 = load i32* %i, align 4, !dbg !456
  %28 = add nsw i32 %27, 1, !dbg !456
  store i32 %28, i32* %i, align 4, !dbg !456
  br label %13, !dbg !456

; <label>:29                                      ; preds = %13
  %30 = load %struct.lua_State** %1, align 4, !dbg !457
  %31 = load i32* %imax, align 4, !dbg !457
  call void @lua_pushvalue(%struct.lua_State* %30, i32 %31), !dbg !457
  ret i32 1, !dbg !458
}

; Function Attrs: nounwind
define internal i32 @math_min(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %n = alloca i32, align 4
  %imin = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !459), !dbg !460
  call void @llvm.dbg.declare(metadata !{i32* %n}, metadata !461), !dbg !462
  %2 = load %struct.lua_State** %1, align 4, !dbg !463
  %3 = call i32 @lua_gettop(%struct.lua_State* %2), !dbg !463
  store i32 %3, i32* %n, align 4, !dbg !463
  call void @llvm.dbg.declare(metadata !{i32* %imin}, metadata !464), !dbg !465
  store i32 1, i32* %imin, align 4, !dbg !466
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !467), !dbg !468
  %4 = load i32* %n, align 4, !dbg !469
  %5 = icmp sge i32 %4, 1, !dbg !469
  br i1 %5, label %10, label %6, !dbg !469

; <label>:6                                       ; preds = %0
  %7 = load %struct.lua_State** %1, align 4, !dbg !470
  %8 = call i32 @luaL_argerror(%struct.lua_State* %7, i32 1, i8* getelementptr inbounds ([15 x i8]* @.str40, i32 0, i32 0)), !dbg !470
  %9 = icmp ne i32 %8, 0, !dbg !470
  br label %10, !dbg !470

; <label>:10                                      ; preds = %6, %0
  %11 = phi i1 [ true, %0 ], [ %9, %6 ]
  %12 = zext i1 %11 to i32, !dbg !472
  store i32 2, i32* %i, align 4, !dbg !475
  br label %13, !dbg !475

; <label>:13                                      ; preds = %26, %10
  %14 = load i32* %i, align 4, !dbg !477
  %15 = load i32* %n, align 4, !dbg !477
  %16 = icmp sle i32 %14, %15, !dbg !477
  br i1 %16, label %17, label %29, !dbg !477

; <label>:17                                      ; preds = %13
  %18 = load %struct.lua_State** %1, align 4, !dbg !480
  %19 = load i32* %i, align 4, !dbg !480
  %20 = load i32* %imin, align 4, !dbg !480
  %21 = call i32 @lua_compare(%struct.lua_State* %18, i32 %19, i32 %20, i32 1), !dbg !480
  %22 = icmp ne i32 %21, 0, !dbg !480
  br i1 %22, label %23, label %25, !dbg !480

; <label>:23                                      ; preds = %17
  %24 = load i32* %i, align 4, !dbg !483
  store i32 %24, i32* %imin, align 4, !dbg !483
  br label %25, !dbg !483

; <label>:25                                      ; preds = %23, %17
  br label %26, !dbg !484

; <label>:26                                      ; preds = %25
  %27 = load i32* %i, align 4, !dbg !485
  %28 = add nsw i32 %27, 1, !dbg !485
  store i32 %28, i32* %i, align 4, !dbg !485
  br label %13, !dbg !485

; <label>:29                                      ; preds = %13
  %30 = load %struct.lua_State** %1, align 4, !dbg !486
  %31 = load i32* %imin, align 4, !dbg !486
  call void @lua_pushvalue(%struct.lua_State* %30, i32 %31), !dbg !486
  ret i32 1, !dbg !487
}

; Function Attrs: nounwind
define internal i32 @math_modf(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %n = alloca double, align 8
  %ip = alloca double, align 8
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !488), !dbg !489
  %2 = load %struct.lua_State** %1, align 4, !dbg !490
  %3 = call i32 @lua_isinteger(%struct.lua_State* %2, i32 1), !dbg !490
  %4 = icmp ne i32 %3, 0, !dbg !490
  br i1 %4, label %5, label %8, !dbg !490

; <label>:5                                       ; preds = %0
  %6 = load %struct.lua_State** %1, align 4, !dbg !492
  call void @lua_settop(%struct.lua_State* %6, i32 1), !dbg !492
  %7 = load %struct.lua_State** %1, align 4, !dbg !494
  call void @lua_pushnumber(%struct.lua_State* %7, double 0.000000e+00), !dbg !494
  br label %34, !dbg !495

; <label>:8                                       ; preds = %0
  call void @llvm.dbg.declare(metadata !{double* %n}, metadata !496), !dbg !498
  %9 = load %struct.lua_State** %1, align 4, !dbg !499
  %10 = call double @luaL_checknumber(%struct.lua_State* %9, i32 1), !dbg !499
  store double %10, double* %n, align 8, !dbg !499
  call void @llvm.dbg.declare(metadata !{double* %ip}, metadata !500), !dbg !501
  %11 = load double* %n, align 8, !dbg !502
  %12 = fcmp olt double %11, 0.000000e+00, !dbg !502
  br i1 %12, label %13, label %16, !dbg !502

; <label>:13                                      ; preds = %8
  %14 = load double* %n, align 8, !dbg !503
  %15 = call double @ceil(double %14) #1, !dbg !503
  br label %19, !dbg !503

; <label>:16                                      ; preds = %8
  %17 = load double* %n, align 8, !dbg !505
  %18 = call double @floor(double %17) #1, !dbg !505
  br label %19, !dbg !505

; <label>:19                                      ; preds = %16, %13
  %20 = phi double [ %15, %13 ], [ %18, %16 ], !dbg !507
  store double %20, double* %ip, align 8, !dbg !508
  %21 = load %struct.lua_State** %1, align 4, !dbg !511
  %22 = load double* %ip, align 8, !dbg !511
  call void @pushnumint(%struct.lua_State* %21, double %22), !dbg !511
  %23 = load %struct.lua_State** %1, align 4, !dbg !512
  %24 = load double* %n, align 8, !dbg !512
  %25 = load double* %ip, align 8, !dbg !512
  %26 = fcmp oeq double %24, %25, !dbg !512
  br i1 %26, label %27, label %28, !dbg !512

; <label>:27                                      ; preds = %19
  br label %32, !dbg !513

; <label>:28                                      ; preds = %19
  %29 = load double* %n, align 8, !dbg !515
  %30 = load double* %ip, align 8, !dbg !515
  %31 = fsub double %29, %30, !dbg !515
  br label %32, !dbg !515

; <label>:32                                      ; preds = %28, %27
  %33 = phi double [ 0.000000e+00, %27 ], [ %31, %28 ], !dbg !512
  call void @lua_pushnumber(%struct.lua_State* %23, double %33), !dbg !517
  br label %34

; <label>:34                                      ; preds = %32, %5
  ret i32 2, !dbg !520
}

; Function Attrs: nounwind
define internal i32 @math_rad(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !521), !dbg !522
  %2 = load %struct.lua_State** %1, align 4, !dbg !523
  %3 = load %struct.lua_State** %1, align 4, !dbg !524
  %4 = call double @luaL_checknumber(%struct.lua_State* %3, i32 1), !dbg !524
  %5 = fmul double %4, 0x3F91DF46A2529D39, !dbg !524
  call void @lua_pushnumber(%struct.lua_State* %2, double %5), !dbg !523
  ret i32 1, !dbg !525
}

; Function Attrs: nounwind
define internal i32 @math_random(%struct.lua_State* %L) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.lua_State*, align 4
  %low = alloca i64, align 8
  %up = alloca i64, align 8
  %r = alloca double, align 8
  store %struct.lua_State* %L, %struct.lua_State** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %2}, metadata !526), !dbg !527
  call void @llvm.dbg.declare(metadata !{i64* %low}, metadata !528), !dbg !529
  call void @llvm.dbg.declare(metadata !{i64* %up}, metadata !530), !dbg !531
  call void @llvm.dbg.declare(metadata !{double* %r}, metadata !532), !dbg !533
  %3 = call i32 @rand() #4, !dbg !534
  %4 = sitofp i32 %3 to double, !dbg !534
  %5 = fmul double %4, 0x3E00000000000000, !dbg !534
  store double %5, double* %r, align 8, !dbg !534
  %6 = load %struct.lua_State** %2, align 4, !dbg !535
  %7 = call i32 @lua_gettop(%struct.lua_State* %6), !dbg !535
  switch i32 %7, label %19 [
    i32 0, label %8
    i32 1, label %11
    i32 2, label %14
  ], !dbg !535

; <label>:8                                       ; preds = %0
  %9 = load %struct.lua_State** %2, align 4, !dbg !536
  %10 = load double* %r, align 8, !dbg !536
  call void @lua_pushnumber(%struct.lua_State* %9, double %10), !dbg !536
  store i32 1, i32* %1, !dbg !539
  br label %59, !dbg !539

; <label>:11                                      ; preds = %0
  store i64 1, i64* %low, align 8, !dbg !540
  %12 = load %struct.lua_State** %2, align 4, !dbg !542
  %13 = call i64 @luaL_checkinteger(%struct.lua_State* %12, i32 1), !dbg !542
  store i64 %13, i64* %up, align 8, !dbg !542
  br label %22, !dbg !543

; <label>:14                                      ; preds = %0
  %15 = load %struct.lua_State** %2, align 4, !dbg !544
  %16 = call i64 @luaL_checkinteger(%struct.lua_State* %15, i32 1), !dbg !544
  store i64 %16, i64* %low, align 8, !dbg !544
  %17 = load %struct.lua_State** %2, align 4, !dbg !546
  %18 = call i64 @luaL_checkinteger(%struct.lua_State* %17, i32 2), !dbg !546
  store i64 %18, i64* %up, align 8, !dbg !546
  br label %22, !dbg !547

; <label>:19                                      ; preds = %0
  %20 = load %struct.lua_State** %2, align 4, !dbg !548
  %21 = call i32 (%struct.lua_State*, i8*, ...)* @luaL_error(%struct.lua_State* %20, i8* getelementptr inbounds ([26 x i8]* @.str37, i32 0, i32 0)), !dbg !548
  store i32 %21, i32* %1, !dbg !548
  br label %59, !dbg !548

; <label>:22                                      ; preds = %14, %11
  %23 = load i64* %low, align 8, !dbg !549
  %24 = load i64* %up, align 8, !dbg !549
  %25 = icmp sle i64 %23, %24, !dbg !549
  br i1 %25, label %30, label %26, !dbg !549

; <label>:26                                      ; preds = %22
  %27 = load %struct.lua_State** %2, align 4, !dbg !550
  %28 = call i32 @luaL_argerror(%struct.lua_State* %27, i32 1, i8* getelementptr inbounds ([18 x i8]* @.str38, i32 0, i32 0)), !dbg !550
  %29 = icmp ne i32 %28, 0, !dbg !550
  br label %30, !dbg !550

; <label>:30                                      ; preds = %26, %22
  %31 = phi i1 [ true, %22 ], [ %29, %26 ]
  %32 = zext i1 %31 to i32, !dbg !552
  %33 = load i64* %low, align 8, !dbg !555
  %34 = icmp sge i64 %33, 0, !dbg !555
  br i1 %34, label %44, label %35, !dbg !555

; <label>:35                                      ; preds = %30
  %36 = load i64* %up, align 8, !dbg !556
  %37 = load i64* %low, align 8, !dbg !556
  %38 = add nsw i64 9223372036854775807, %37, !dbg !556
  %39 = icmp sle i64 %36, %38, !dbg !556
  br i1 %39, label %44, label %40, !dbg !556

; <label>:40                                      ; preds = %35
  %41 = load %struct.lua_State** %2, align 4, !dbg !558
  %42 = call i32 @luaL_argerror(%struct.lua_State* %41, i32 1, i8* getelementptr inbounds ([19 x i8]* @.str39, i32 0, i32 0)), !dbg !558
  %43 = icmp ne i32 %42, 0, !dbg !558
  br label %44, !dbg !558

; <label>:44                                      ; preds = %40, %35, %30
  %45 = phi i1 [ true, %35 ], [ true, %30 ], [ %43, %40 ]
  %46 = zext i1 %45 to i32, !dbg !560
  %47 = load i64* %up, align 8, !dbg !564
  %48 = load i64* %low, align 8, !dbg !564
  %49 = sub nsw i64 %47, %48, !dbg !564
  %50 = sitofp i64 %49 to double, !dbg !564
  %51 = fadd double %50, 1.000000e+00, !dbg !564
  %52 = load double* %r, align 8, !dbg !564
  %53 = fmul double %52, %51, !dbg !564
  store double %53, double* %r, align 8, !dbg !564
  %54 = load %struct.lua_State** %2, align 4, !dbg !565
  %55 = load double* %r, align 8, !dbg !565
  %56 = fptosi double %55 to i64, !dbg !565
  %57 = load i64* %low, align 8, !dbg !565
  %58 = add nsw i64 %56, %57, !dbg !565
  call void @lua_pushinteger(%struct.lua_State* %54, i64 %58), !dbg !565
  store i32 1, i32* %1, !dbg !566
  br label %59, !dbg !566

; <label>:59                                      ; preds = %44, %19, %8
  %60 = load i32* %1, !dbg !567
  ret i32 %60, !dbg !567
}

; Function Attrs: nounwind
define internal i32 @math_randomseed(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !568), !dbg !569
  %2 = load %struct.lua_State** %1, align 4, !dbg !570
  %3 = call double @luaL_checknumber(%struct.lua_State* %2, i32 1), !dbg !570
  %4 = fptosi double %3 to i64, !dbg !570
  %5 = trunc i64 %4 to i32, !dbg !570
  call void @srand(i32 %5) #4, !dbg !570
  %6 = call i32 @rand() #4, !dbg !571
  ret i32 0, !dbg !572
}

; Function Attrs: nounwind
define internal i32 @math_sin(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !573), !dbg !574
  %2 = load %struct.lua_State** %1, align 4, !dbg !575
  %3 = load %struct.lua_State** %1, align 4, !dbg !576
  %4 = call double @luaL_checknumber(%struct.lua_State* %3, i32 1), !dbg !576
  %5 = call double @sin(double %4) #4, !dbg !577
  call void @lua_pushnumber(%struct.lua_State* %2, double %5), !dbg !575
  ret i32 1, !dbg !578
}

; Function Attrs: nounwind
define internal i32 @math_sqrt(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !579), !dbg !580
  %2 = load %struct.lua_State** %1, align 4, !dbg !581
  %3 = load %struct.lua_State** %1, align 4, !dbg !582
  %4 = call double @luaL_checknumber(%struct.lua_State* %3, i32 1), !dbg !582
  %5 = call double @sqrt(double %4) #4, !dbg !583
  call void @lua_pushnumber(%struct.lua_State* %2, double %5), !dbg !581
  ret i32 1, !dbg !584
}

; Function Attrs: nounwind
define internal i32 @math_tan(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !585), !dbg !586
  %2 = load %struct.lua_State** %1, align 4, !dbg !587
  %3 = load %struct.lua_State** %1, align 4, !dbg !588
  %4 = call double @luaL_checknumber(%struct.lua_State* %3, i32 1), !dbg !588
  %5 = call double @tan(double %4) #4, !dbg !589
  call void @lua_pushnumber(%struct.lua_State* %2, double %5), !dbg !587
  ret i32 1, !dbg !590
}

; Function Attrs: nounwind
define internal i32 @math_type(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !591), !dbg !592
  %2 = load %struct.lua_State** %1, align 4, !dbg !593
  %3 = call i32 @lua_type(%struct.lua_State* %2, i32 1), !dbg !593
  %4 = icmp eq i32 %3, 3, !dbg !593
  br i1 %4, label %5, label %16, !dbg !593

; <label>:5                                       ; preds = %0
  %6 = load %struct.lua_State** %1, align 4, !dbg !595
  %7 = call i32 @lua_isinteger(%struct.lua_State* %6, i32 1), !dbg !595
  %8 = icmp ne i32 %7, 0, !dbg !595
  br i1 %8, label %9, label %12, !dbg !595

; <label>:9                                       ; preds = %5
  %10 = load %struct.lua_State** %1, align 4, !dbg !598
  %11 = call i8* @lua_pushstring(%struct.lua_State* %10, i8* getelementptr inbounds ([8 x i8]* @.str35, i32 0, i32 0)), !dbg !598
  br label %15, !dbg !598

; <label>:12                                      ; preds = %5
  %13 = load %struct.lua_State** %1, align 4, !dbg !599
  %14 = call i8* @lua_pushstring(%struct.lua_State* %13, i8* getelementptr inbounds ([6 x i8]* @.str36, i32 0, i32 0)), !dbg !599
  br label %15

; <label>:15                                      ; preds = %12, %9
  br label %19, !dbg !600

; <label>:16                                      ; preds = %0
  %17 = load %struct.lua_State** %1, align 4, !dbg !601
  call void @luaL_checkany(%struct.lua_State* %17, i32 1), !dbg !601
  %18 = load %struct.lua_State** %1, align 4, !dbg !603
  call void @lua_pushnil(%struct.lua_State* %18), !dbg !603
  br label %19

; <label>:19                                      ; preds = %16, %15
  ret i32 1, !dbg !604
}

; Function Attrs: nounwind
define internal i32 @math_cosh(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !605), !dbg !606
  %2 = load %struct.lua_State** %1, align 4, !dbg !607
  %3 = load %struct.lua_State** %1, align 4, !dbg !608
  %4 = call double @luaL_checknumber(%struct.lua_State* %3, i32 1), !dbg !608
  %5 = call double @cosh(double %4) #4, !dbg !609
  call void @lua_pushnumber(%struct.lua_State* %2, double %5), !dbg !607
  ret i32 1, !dbg !610
}

; Function Attrs: nounwind
define internal i32 @math_sinh(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !611), !dbg !612
  %2 = load %struct.lua_State** %1, align 4, !dbg !613
  %3 = load %struct.lua_State** %1, align 4, !dbg !614
  %4 = call double @luaL_checknumber(%struct.lua_State* %3, i32 1), !dbg !614
  %5 = call double @sinh(double %4) #4, !dbg !615
  call void @lua_pushnumber(%struct.lua_State* %2, double %5), !dbg !613
  ret i32 1, !dbg !616
}

; Function Attrs: nounwind
define internal i32 @math_tanh(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !617), !dbg !618
  %2 = load %struct.lua_State** %1, align 4, !dbg !619
  %3 = load %struct.lua_State** %1, align 4, !dbg !620
  %4 = call double @luaL_checknumber(%struct.lua_State* %3, i32 1), !dbg !620
  %5 = call double @tanh(double %4) #4, !dbg !621
  call void @lua_pushnumber(%struct.lua_State* %2, double %5), !dbg !619
  ret i32 1, !dbg !622
}

; Function Attrs: nounwind
define internal i32 @math_pow(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %x = alloca double, align 8
  %y = alloca double, align 8
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !623), !dbg !624
  call void @llvm.dbg.declare(metadata !{double* %x}, metadata !625), !dbg !626
  %2 = load %struct.lua_State** %1, align 4, !dbg !627
  %3 = call double @luaL_checknumber(%struct.lua_State* %2, i32 1), !dbg !627
  store double %3, double* %x, align 8, !dbg !627
  call void @llvm.dbg.declare(metadata !{double* %y}, metadata !628), !dbg !629
  %4 = load %struct.lua_State** %1, align 4, !dbg !630
  %5 = call double @luaL_checknumber(%struct.lua_State* %4, i32 2), !dbg !630
  store double %5, double* %y, align 8, !dbg !630
  %6 = load %struct.lua_State** %1, align 4, !dbg !631
  %7 = load double* %x, align 8, !dbg !632
  %8 = load double* %y, align 8, !dbg !632
  %9 = call double @pow(double %7, double %8) #4, !dbg !632
  call void @lua_pushnumber(%struct.lua_State* %6, double %9), !dbg !631
  ret i32 1, !dbg !633
}

; Function Attrs: nounwind
define internal i32 @math_frexp(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %e = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !634), !dbg !635
  call void @llvm.dbg.declare(metadata !{i32* %e}, metadata !636), !dbg !637
  %2 = load %struct.lua_State** %1, align 4, !dbg !638
  %3 = load %struct.lua_State** %1, align 4, !dbg !639
  %4 = call double @luaL_checknumber(%struct.lua_State* %3, i32 1), !dbg !639
  %5 = call double @frexp(double %4, i32* %e) #4, !dbg !640
  call void @lua_pushnumber(%struct.lua_State* %2, double %5), !dbg !638
  %6 = load %struct.lua_State** %1, align 4, !dbg !641
  %7 = load i32* %e, align 4, !dbg !641
  %8 = sext i32 %7 to i64, !dbg !641
  call void @lua_pushinteger(%struct.lua_State* %6, i64 %8), !dbg !641
  ret i32 2, !dbg !642
}

; Function Attrs: nounwind
define internal i32 @math_ldexp(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %x = alloca double, align 8
  %ep = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !643), !dbg !644
  call void @llvm.dbg.declare(metadata !{double* %x}, metadata !645), !dbg !646
  %2 = load %struct.lua_State** %1, align 4, !dbg !647
  %3 = call double @luaL_checknumber(%struct.lua_State* %2, i32 1), !dbg !647
  store double %3, double* %x, align 8, !dbg !647
  call void @llvm.dbg.declare(metadata !{i32* %ep}, metadata !648), !dbg !649
  %4 = load %struct.lua_State** %1, align 4, !dbg !650
  %5 = call i64 @luaL_checkinteger(%struct.lua_State* %4, i32 2), !dbg !650
  %6 = trunc i64 %5 to i32, !dbg !650
  store i32 %6, i32* %ep, align 4, !dbg !650
  %7 = load %struct.lua_State** %1, align 4, !dbg !651
  %8 = load double* %x, align 8, !dbg !652
  %9 = load i32* %ep, align 4, !dbg !652
  %10 = call double @ldexp(double %8, i32 %9) #4, !dbg !652
  call void @lua_pushnumber(%struct.lua_State* %7, double %10), !dbg !651
  ret i32 1, !dbg !653
}

; Function Attrs: nounwind
define internal i32 @math_log10(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !654), !dbg !655
  %2 = load %struct.lua_State** %1, align 4, !dbg !656
  %3 = load %struct.lua_State** %1, align 4, !dbg !657
  %4 = call double @luaL_checknumber(%struct.lua_State* %3, i32 1), !dbg !657
  %5 = call double @log10(double %4) #4, !dbg !658
  call void @lua_pushnumber(%struct.lua_State* %2, double %5), !dbg !656
  ret i32 1, !dbg !659
}

; Function Attrs: nounwind
declare double @log10(double) #0

declare double @luaL_checknumber(%struct.lua_State*, i32) #2

declare i64 @luaL_checkinteger(%struct.lua_State*, i32) #2

; Function Attrs: nounwind
declare double @ldexp(double, i32) #0

; Function Attrs: nounwind
declare double @frexp(double, i32*) #0

; Function Attrs: nounwind
declare double @pow(double, double) #0

; Function Attrs: nounwind
declare double @tanh(double) #0

; Function Attrs: nounwind
declare double @sinh(double) #0

; Function Attrs: nounwind
declare double @cosh(double) #0

declare i32 @lua_type(%struct.lua_State*, i32) #2

declare i32 @lua_isinteger(%struct.lua_State*, i32) #2

declare i8* @lua_pushstring(%struct.lua_State*, i8*) #2

declare void @luaL_checkany(%struct.lua_State*, i32) #2

declare void @lua_pushnil(%struct.lua_State*) #2

; Function Attrs: nounwind
declare double @tan(double) #0

; Function Attrs: nounwind
declare double @sqrt(double) #0

; Function Attrs: nounwind
declare double @sin(double) #0

; Function Attrs: nounwind
declare void @srand(i32) #0

; Function Attrs: nounwind
declare i32 @rand() #0

declare i32 @lua_gettop(%struct.lua_State*) #2

declare i32 @luaL_error(%struct.lua_State*, i8*, ...) #2

declare i32 @luaL_argerror(%struct.lua_State*, i32, i8*) #2

declare void @lua_settop(%struct.lua_State*, i32) #2

; Function Attrs: nounwind readnone
declare double @ceil(double) #3

; Function Attrs: nounwind readnone
declare double @floor(double) #3

; Function Attrs: nounwind
define internal void @pushnumint(%struct.lua_State* %L, double %d) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca double, align 8
  %n = alloca i64, align 8
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !660), !dbg !661
  store double %d, double* %2, align 8
  call void @llvm.dbg.declare(metadata !{double* %2}, metadata !662), !dbg !663
  call void @llvm.dbg.declare(metadata !{i64* %n}, metadata !664), !dbg !665
  %3 = load double* %2, align 8, !dbg !666
  %4 = fcmp oge double %3, 0xC3E0000000000000, !dbg !666
  br i1 %4, label %5, label %14, !dbg !666

; <label>:5                                       ; preds = %0
  %6 = load double* %2, align 8, !dbg !668
  %7 = fcmp olt double %6, 0x43E0000000000000, !dbg !668
  br i1 %7, label %8, label %14, !dbg !668

; <label>:8                                       ; preds = %5
  %9 = load double* %2, align 8, !dbg !670
  %10 = fptosi double %9 to i64, !dbg !670
  store i64 %10, i64* %n, align 8, !dbg !670
  br i1 true, label %11, label %14, !dbg !670

; <label>:11                                      ; preds = %8
  %12 = load %struct.lua_State** %1, align 4, !dbg !672
  %13 = load i64* %n, align 8, !dbg !672
  call void @lua_pushinteger(%struct.lua_State* %12, i64 %13), !dbg !672
  br label %17, !dbg !672

; <label>:14                                      ; preds = %8, %5, %0
  %15 = load %struct.lua_State** %1, align 4, !dbg !673
  %16 = load double* %2, align 8, !dbg !673
  call void @lua_pushnumber(%struct.lua_State* %15, double %16), !dbg !673
  br label %17

; <label>:17                                      ; preds = %14, %11
  ret void, !dbg !674
}

declare i32 @lua_compare(%struct.lua_State*, i32, i32, i32) #2

declare void @lua_pushvalue(%struct.lua_State*, i32) #2

; Function Attrs: nounwind
declare double @log(double) #0

; Function Attrs: nounwind
declare double @log2(double) #0

declare void @lua_pushboolean(%struct.lua_State*, i32) #2

declare i64 @lua_tointegerx(%struct.lua_State*, i32, i32*) #2

; Function Attrs: nounwind
declare double @fmod(double, double) #0

; Function Attrs: nounwind
declare double @exp(double) #0

; Function Attrs: nounwind
declare double @cos(double) #0

declare double @luaL_optnumber(%struct.lua_State*, i32, double) #2

; Function Attrs: nounwind
declare double @atan2(double, double) #0

; Function Attrs: nounwind
declare double @asin(double) #0

; Function Attrs: nounwind
declare double @acos(double) #0

; Function Attrs: nounwind readnone
declare double @fabs(double) #3

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!0}
!xidane.fname = !{!66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219}
!xidane.function_declaration_type = !{!66, !220, !68, !221, !70, !222, !72, !223, !74, !224, !76, !225, !78, !226, !80, !220, !82, !220, !84, !220, !86, !220, !88, !220, !90, !220, !92, !220, !94, !220, !96, !220, !98, !220, !100, !220, !102, !220, !104, !220, !106, !220, !108, !220, !110, !220, !112, !220, !114, !220, !116, !220, !118, !220, !120, !220, !122, !220, !124, !220, !126, !220, !128, !220, !130, !220, !132, !220, !134, !220, !136, !220, !138, !220, !140, !227, !142, !228, !144, !229, !146, !230, !148, !231, !150, !232, !152, !227, !154, !227, !156, !227, !158, !233, !160, !233, !162, !234, !164, !235, !166, !236, !168, !227, !170, !227, !172, !227, !174, !237, !176, !238, !178, !220, !180, !239, !182, !240, !184, !235, !186, !227, !188, !227, !190, !224, !192, !241, !194, !235, !196, !227, !198, !227, !200, !235, !202, !242, !204, !232, !206, !227, !208, !227, !210, !243, !212, !232, !214, !227, !216, !227, !218, !227}
!xidane.function_declaration_filename = !{!66, !244, !68, !245, !70, !246, !72, !245, !74, !246, !76, !246, !78, !246, !80, !247, !82, !247, !84, !247, !86, !247, !88, !247, !90, !247, !92, !247, !94, !247, !96, !247, !98, !247, !100, !247, !102, !247, !104, !247, !106, !247, !108, !247, !110, !247, !112, !247, !114, !247, !116, !247, !118, !247, !120, !247, !122, !247, !124, !247, !126, !247, !128, !247, !130, !247, !132, !247, !134, !247, !136, !247, !138, !247, !140, !248, !142, !245, !144, !245, !146, !248, !148, !248, !150, !248, !152, !248, !154, !248, !156, !248, !158, !246, !160, !246, !162, !246, !164, !245, !166, !246, !168, !248, !170, !248, !172, !248, !174, !249, !176, !249, !178, !246, !180, !245, !182, !245, !184, !246, !186, !248, !188, !248, !190, !247, !192, !246, !194, !246, !196, !248, !198, !248, !200, !246, !202, !246, !204, !248, !206, !248, !208, !248, !210, !245, !212, !248, !214, !248, !216, !248, !218, !248}
!xidane.ExternC = !{!66, !68, !70, !72, !74, !76, !78, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218}
!llvm.module.flags = !{!250, !251, !252, !253}
!llvm.ident = !{!254}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.0 (tags/RELEASE_350/final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !49, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src\lmathlib.c] [DW_LANG_C99]
!1 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src\5Clmathlib.c", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!2 = metadata !{}
!3 = metadata !{metadata !4, metadata !14, metadata !15, metadata !16, metadata !17, metadata !18, metadata !19, metadata !20, metadata !21, metadata !22, metadata !23, metadata !24, metadata !25, metadata !26, metadata !27, metadata !28, metadata !29, metadata !34, metadata !35, metadata !36, metadata !37, metadata !38, metadata !39, metadata !40, metadata !41, metadata !42, metadata !43, metadata !44, metadata !45, metadata !46, metadata !47, metadata !48}
!4 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"luaopen_math", metadata !"luaopen_math", metadata !"", i32 395, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @luaopen_math, null, null, metadata !2, i32 395} ; [ DW_TAG_subprogram ] [line 395] [def] [luaopen_math]
!5 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lmathlib.c", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!6 = metadata !{i32 786473, metadata !5}          ; [ DW_TAG_file_type ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lmathlib.c]
!7 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!8 = metadata !{metadata !9, metadata !10}
!9 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!10 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !11} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from lua_State]
!11 = metadata !{i32 786454, metadata !12, null, metadata !"lua_State", i32 56, i64 0, i64 0, i64 0, i32 0, metadata !13} ; [ DW_TAG_typedef ] [lua_State] [line 56, size 0, align 0, offset 0] [from lua_State]
!12 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lua.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!13 = metadata !{i32 786451, metadata !12, null, metadata !"lua_State", i32 56, i64 0, i64 0, i32 0, i32 4, null, null, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [lua_State] [line 56, size 0, align 0, offset 0] [decl] [from ]
!14 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"math_log10", metadata !"math_log10", metadata !"", i32 339, metadata !7, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @math_log10, null, null, metadata !2, i32 339} ; [ DW_TAG_subprogram ] [line 339] [local] [def] [math_log10]
!15 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"math_ldexp", metadata !"math_ldexp", metadata !"", i32 332, metadata !7, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @math_ldexp, null, null, metadata !2, i32 332} ; [ DW_TAG_subprogram ] [line 332] [local] [def] [math_ldexp]
!16 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"math_frexp", metadata !"math_frexp", metadata !"", i32 325, metadata !7, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @math_frexp, null, null, metadata !2, i32 325} ; [ DW_TAG_subprogram ] [line 325] [local] [def] [math_frexp]
!17 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"math_pow", metadata !"math_pow", metadata !"", i32 318, metadata !7, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @math_pow, null, null, metadata !2, i32 318} ; [ DW_TAG_subprogram ] [line 318] [local] [def] [math_pow]
!18 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"math_tanh", metadata !"math_tanh", metadata !"", i32 313, metadata !7, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @math_tanh, null, null, metadata !2, i32 313} ; [ DW_TAG_subprogram ] [line 313] [local] [def] [math_tanh]
!19 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"math_sinh", metadata !"math_sinh", metadata !"", i32 308, metadata !7, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @math_sinh, null, null, metadata !2, i32 308} ; [ DW_TAG_subprogram ] [line 308] [local] [def] [math_sinh]
!20 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"math_cosh", metadata !"math_cosh", metadata !"", i32 303, metadata !7, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @math_cosh, null, null, metadata !2, i32 303} ; [ DW_TAG_subprogram ] [line 303] [local] [def] [math_cosh]
!21 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"math_type", metadata !"math_type", metadata !"", i32 281, metadata !7, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @math_type, null, null, metadata !2, i32 281} ; [ DW_TAG_subprogram ] [line 281] [local] [def] [math_type]
!22 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"math_tan", metadata !"math_tan", metadata !"", i32 60, metadata !7, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @math_tan, null, null, metadata !2, i32 60} ; [ DW_TAG_subprogram ] [line 60] [local] [def] [math_tan]
!23 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"math_sqrt", metadata !"math_sqrt", metadata !"", i32 166, metadata !7, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @math_sqrt, null, null, metadata !2, i32 166} ; [ DW_TAG_subprogram ] [line 166] [local] [def] [math_sqrt]
!24 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"math_sin", metadata !"math_sin", metadata !"", i32 50, metadata !7, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @math_sin, null, null, metadata !2, i32 50} ; [ DW_TAG_subprogram ] [line 50] [local] [def] [math_sin]
!25 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"math_randomseed", metadata !"math_randomseed", metadata !"", i32 274, metadata !7, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @math_randomseed, null, null, metadata !2, i32 274} ; [ DW_TAG_subprogram ] [line 274] [local] [def] [math_randomseed]
!26 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"math_random", metadata !"math_random", metadata !"", i32 244, metadata !7, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @math_random, null, null, metadata !2, i32 244} ; [ DW_TAG_subprogram ] [line 244] [local] [def] [math_random]
!27 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"math_rad", metadata !"math_rad", metadata !"", i32 206, metadata !7, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @math_rad, null, null, metadata !2, i32 206} ; [ DW_TAG_subprogram ] [line 206] [local] [def] [math_rad]
!28 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"math_modf", metadata !"math_modf", metadata !"", i32 149, metadata !7, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @math_modf, null, null, metadata !2, i32 149} ; [ DW_TAG_subprogram ] [line 149] [local] [def] [math_modf]
!29 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"pushnumint", metadata !"pushnumint", metadata !"", i32 96, metadata !30, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.lua_State*, double)* @pushnumint, null, null, metadata !2, i32 96} ; [ DW_TAG_subprogram ] [line 96] [local] [def] [pushnumint]
!30 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !31, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!31 = metadata !{null, metadata !10, metadata !32}
!32 = metadata !{i32 786454, metadata !12, null, metadata !"lua_Number", i32 89, i64 0, i64 0, i64 0, i32 0, metadata !33} ; [ DW_TAG_typedef ] [lua_Number] [line 89, size 0, align 0, offset 0] [from double]
!33 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!34 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"math_min", metadata !"math_min", metadata !"", i32 212, metadata !7, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @math_min, null, null, metadata !2, i32 212} ; [ DW_TAG_subprogram ] [line 212] [local] [def] [math_min]
!35 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"math_max", metadata !"math_max", metadata !"", i32 226, metadata !7, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @math_max, null, null, metadata !2, i32 226} ; [ DW_TAG_subprogram ] [line 226] [local] [def] [math_max]
!36 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"math_log", metadata !"math_log", metadata !"", i32 179, metadata !7, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @math_log, null, null, metadata !2, i32 179} ; [ DW_TAG_subprogram ] [line 179] [local] [def] [math_log]
!37 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"math_ult", metadata !"math_ult", metadata !"", i32 172, metadata !7, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @math_ult, null, null, metadata !2, i32 172} ; [ DW_TAG_subprogram ] [line 172] [local] [def] [math_ult]
!38 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"math_fmod", metadata !"math_fmod", metadata !"", i32 127, metadata !7, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @math_fmod, null, null, metadata !2, i32 127} ; [ DW_TAG_subprogram ] [line 127] [local] [def] [math_fmod]
!39 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"math_floor", metadata !"math_floor", metadata !"", i32 105, metadata !7, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @math_floor, null, null, metadata !2, i32 105} ; [ DW_TAG_subprogram ] [line 105] [local] [def] [math_floor]
!40 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"math_toint", metadata !"math_toint", metadata !"", i32 83, metadata !7, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @math_toint, null, null, metadata !2, i32 83} ; [ DW_TAG_subprogram ] [line 83] [local] [def] [math_toint]
!41 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"math_exp", metadata !"math_exp", metadata !"", i32 196, metadata !7, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @math_exp, null, null, metadata !2, i32 196} ; [ DW_TAG_subprogram ] [line 196] [local] [def] [math_exp]
!42 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"math_deg", metadata !"math_deg", metadata !"", i32 201, metadata !7, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @math_deg, null, null, metadata !2, i32 201} ; [ DW_TAG_subprogram ] [line 201] [local] [def] [math_deg]
!43 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"math_cos", metadata !"math_cos", metadata !"", i32 55, metadata !7, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @math_cos, null, null, metadata !2, i32 55} ; [ DW_TAG_subprogram ] [line 55] [local] [def] [math_cos]
!44 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"math_ceil", metadata !"math_ceil", metadata !"", i32 116, metadata !7, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @math_ceil, null, null, metadata !2, i32 116} ; [ DW_TAG_subprogram ] [line 116] [local] [def] [math_ceil]
!45 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"math_atan", metadata !"math_atan", metadata !"", i32 75, metadata !7, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @math_atan, null, null, metadata !2, i32 75} ; [ DW_TAG_subprogram ] [line 75] [local] [def] [math_atan]
!46 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"math_asin", metadata !"math_asin", metadata !"", i32 65, metadata !7, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @math_asin, null, null, metadata !2, i32 65} ; [ DW_TAG_subprogram ] [line 65] [local] [def] [math_asin]
!47 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"math_acos", metadata !"math_acos", metadata !"", i32 70, metadata !7, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @math_acos, null, null, metadata !2, i32 70} ; [ DW_TAG_subprogram ] [line 70] [local] [def] [math_acos]
!48 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"math_abs", metadata !"math_abs", metadata !"", i32 39, metadata !7, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @math_abs, null, null, metadata !2, i32 39} ; [ DW_TAG_subprogram ] [line 39] [local] [def] [math_abs]
!49 = metadata !{metadata !50}
!50 = metadata !{i32 786484, i32 0, null, metadata !"mathlib", metadata !"mathlib", metadata !"", metadata !6, i32 349, metadata !51, i32 1, i32 1, [36 x %struct.luaL_Reg]* @mathlib, null} ; [ DW_TAG_variable ] [mathlib] [line 349] [local] [def]
!51 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 2304, i64 32, i32 0, i32 0, metadata !52, metadata !64, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 2304, align 32, offset 0] [from ]
!52 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !53} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from luaL_Reg]
!53 = metadata !{i32 786454, metadata !54, null, metadata !"luaL_Reg", i32 26, i64 0, i64 0, i64 0, i32 0, metadata !55} ; [ DW_TAG_typedef ] [luaL_Reg] [line 26, size 0, align 0, offset 0] [from luaL_Reg]
!54 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lauxlib.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!55 = metadata !{i32 786451, metadata !54, null, metadata !"luaL_Reg", i32 23, i64 64, i64 32, i32 0, i32 0, null, metadata !56, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [luaL_Reg] [line 23, size 64, align 32, offset 0] [def] [from ]
!56 = metadata !{metadata !57, metadata !61}
!57 = metadata !{i32 786445, metadata !54, metadata !55, metadata !"name", i32 24, i64 32, i64 32, i64 0, i32 0, metadata !58} ; [ DW_TAG_member ] [name] [line 24, size 32, align 32, offset 0] [from ]
!58 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !59} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!59 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !60} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!60 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!61 = metadata !{i32 786445, metadata !54, metadata !55, metadata !"func", i32 25, i64 32, i64 32, i64 32, i32 0, metadata !62} ; [ DW_TAG_member ] [func] [line 25, size 32, align 32, offset 32] [from lua_CFunction]
!62 = metadata !{i32 786454, metadata !12, null, metadata !"lua_CFunction", i32 105, i64 0, i64 0, i64 0, i32 0, metadata !63} ; [ DW_TAG_typedef ] [lua_CFunction] [line 105, size 0, align 0, offset 0] [from ]
!63 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !7} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!64 = metadata !{metadata !65}
!65 = metadata !{i32 786465, i64 0, i64 36}       ; [ DW_TAG_subrange_type ] [0, 35]
!66 = metadata !{i32 (%struct.lua_State*)* @luaopen_math}
!67 = metadata !{metadata !"luaopen_math"}
!68 = metadata !{void (%struct.lua_State*, double, i32)* @luaL_checkversion_}
!69 = metadata !{metadata !"luaL_checkversion_"}
!70 = metadata !{void (%struct.lua_State*, i32, i32)* @lua_createtable}
!71 = metadata !{metadata !"lua_createtable"}
!72 = metadata !{void (%struct.lua_State*, %struct.luaL_Reg*, i32)* @luaL_setfuncs}
!73 = metadata !{metadata !"luaL_setfuncs"}
!74 = metadata !{void (%struct.lua_State*, double)* @lua_pushnumber}
!75 = metadata !{metadata !"lua_pushnumber"}
!76 = metadata !{void (%struct.lua_State*, i32, i8*)* @lua_setfield}
!77 = metadata !{metadata !"lua_setfield"}
!78 = metadata !{void (%struct.lua_State*, i64)* @lua_pushinteger}
!79 = metadata !{metadata !"lua_pushinteger"}
!80 = metadata !{i32 (%struct.lua_State*)* @math_abs}
!81 = metadata !{metadata !"math_abs"}
!82 = metadata !{i32 (%struct.lua_State*)* @math_acos}
!83 = metadata !{metadata !"math_acos"}
!84 = metadata !{i32 (%struct.lua_State*)* @math_asin}
!85 = metadata !{metadata !"math_asin"}
!86 = metadata !{i32 (%struct.lua_State*)* @math_atan}
!87 = metadata !{metadata !"math_atan"}
!88 = metadata !{i32 (%struct.lua_State*)* @math_ceil}
!89 = metadata !{metadata !"math_ceil"}
!90 = metadata !{i32 (%struct.lua_State*)* @math_cos}
!91 = metadata !{metadata !"math_cos"}
!92 = metadata !{i32 (%struct.lua_State*)* @math_deg}
!93 = metadata !{metadata !"math_deg"}
!94 = metadata !{i32 (%struct.lua_State*)* @math_exp}
!95 = metadata !{metadata !"math_exp"}
!96 = metadata !{i32 (%struct.lua_State*)* @math_toint}
!97 = metadata !{metadata !"math_toint"}
!98 = metadata !{i32 (%struct.lua_State*)* @math_floor}
!99 = metadata !{metadata !"math_floor"}
!100 = metadata !{i32 (%struct.lua_State*)* @math_fmod}
!101 = metadata !{metadata !"math_fmod"}
!102 = metadata !{i32 (%struct.lua_State*)* @math_ult}
!103 = metadata !{metadata !"math_ult"}
!104 = metadata !{i32 (%struct.lua_State*)* @math_log}
!105 = metadata !{metadata !"math_log"}
!106 = metadata !{i32 (%struct.lua_State*)* @math_max}
!107 = metadata !{metadata !"math_max"}
!108 = metadata !{i32 (%struct.lua_State*)* @math_min}
!109 = metadata !{metadata !"math_min"}
!110 = metadata !{i32 (%struct.lua_State*)* @math_modf}
!111 = metadata !{metadata !"math_modf"}
!112 = metadata !{i32 (%struct.lua_State*)* @math_rad}
!113 = metadata !{metadata !"math_rad"}
!114 = metadata !{i32 (%struct.lua_State*)* @math_random}
!115 = metadata !{metadata !"math_random"}
!116 = metadata !{i32 (%struct.lua_State*)* @math_randomseed}
!117 = metadata !{metadata !"math_randomseed"}
!118 = metadata !{i32 (%struct.lua_State*)* @math_sin}
!119 = metadata !{metadata !"math_sin"}
!120 = metadata !{i32 (%struct.lua_State*)* @math_sqrt}
!121 = metadata !{metadata !"math_sqrt"}
!122 = metadata !{i32 (%struct.lua_State*)* @math_tan}
!123 = metadata !{metadata !"math_tan"}
!124 = metadata !{i32 (%struct.lua_State*)* @math_type}
!125 = metadata !{metadata !"math_type"}
!126 = metadata !{i32 (%struct.lua_State*)* @math_cosh}
!127 = metadata !{metadata !"math_cosh"}
!128 = metadata !{i32 (%struct.lua_State*)* @math_sinh}
!129 = metadata !{metadata !"math_sinh"}
!130 = metadata !{i32 (%struct.lua_State*)* @math_tanh}
!131 = metadata !{metadata !"math_tanh"}
!132 = metadata !{i32 (%struct.lua_State*)* @math_pow}
!133 = metadata !{metadata !"math_pow"}
!134 = metadata !{i32 (%struct.lua_State*)* @math_frexp}
!135 = metadata !{metadata !"math_frexp"}
!136 = metadata !{i32 (%struct.lua_State*)* @math_ldexp}
!137 = metadata !{metadata !"math_ldexp"}
!138 = metadata !{i32 (%struct.lua_State*)* @math_log10}
!139 = metadata !{metadata !"math_log10"}
!140 = metadata !{double (double)* @log10}
!141 = metadata !{metadata !"log10"}
!142 = metadata !{double (%struct.lua_State*, i32)* @luaL_checknumber}
!143 = metadata !{metadata !"luaL_checknumber"}
!144 = metadata !{i64 (%struct.lua_State*, i32)* @luaL_checkinteger}
!145 = metadata !{metadata !"luaL_checkinteger"}
!146 = metadata !{double (double, i32)* @ldexp}
!147 = metadata !{metadata !"ldexp"}
!148 = metadata !{double (double, i32*)* @frexp}
!149 = metadata !{metadata !"frexp"}
!150 = metadata !{double (double, double)* @pow}
!151 = metadata !{metadata !"pow"}
!152 = metadata !{double (double)* @tanh}
!153 = metadata !{metadata !"tanh"}
!154 = metadata !{double (double)* @sinh}
!155 = metadata !{metadata !"sinh"}
!156 = metadata !{double (double)* @cosh}
!157 = metadata !{metadata !"cosh"}
!158 = metadata !{i32 (%struct.lua_State*, i32)* @lua_type}
!159 = metadata !{metadata !"lua_type"}
!160 = metadata !{i32 (%struct.lua_State*, i32)* @lua_isinteger}
!161 = metadata !{metadata !"lua_isinteger"}
!162 = metadata !{i8* (%struct.lua_State*, i8*)* @lua_pushstring}
!163 = metadata !{metadata !"lua_pushstring"}
!164 = metadata !{void (%struct.lua_State*, i32)* @luaL_checkany}
!165 = metadata !{metadata !"luaL_checkany"}
!166 = metadata !{void (%struct.lua_State*)* @lua_pushnil}
!167 = metadata !{metadata !"lua_pushnil"}
!168 = metadata !{double (double)* @tan}
!169 = metadata !{metadata !"tan"}
!170 = metadata !{double (double)* @sqrt}
!171 = metadata !{metadata !"sqrt"}
!172 = metadata !{double (double)* @sin}
!173 = metadata !{metadata !"sin"}
!174 = metadata !{void (i32)* @srand}
!175 = metadata !{metadata !"srand"}
!176 = metadata !{i32 ()* @rand}
!177 = metadata !{metadata !"rand"}
!178 = metadata !{i32 (%struct.lua_State*)* @lua_gettop}
!179 = metadata !{metadata !"lua_gettop"}
!180 = metadata !{i32 (%struct.lua_State*, i8*, ...)* @luaL_error}
!181 = metadata !{metadata !"luaL_error"}
!182 = metadata !{i32 (%struct.lua_State*, i32, i8*)* @luaL_argerror}
!183 = metadata !{metadata !"luaL_argerror"}
!184 = metadata !{void (%struct.lua_State*, i32)* @lua_settop}
!185 = metadata !{metadata !"lua_settop"}
!186 = metadata !{double (double)* @ceil}
!187 = metadata !{metadata !"ceil"}
!188 = metadata !{double (double)* @floor}
!189 = metadata !{metadata !"floor"}
!190 = metadata !{void (%struct.lua_State*, double)* @pushnumint}
!191 = metadata !{metadata !"pushnumint"}
!192 = metadata !{i32 (%struct.lua_State*, i32, i32, i32)* @lua_compare}
!193 = metadata !{metadata !"lua_compare"}
!194 = metadata !{void (%struct.lua_State*, i32)* @lua_pushvalue}
!195 = metadata !{metadata !"lua_pushvalue"}
!196 = metadata !{double (double)* @log}
!197 = metadata !{metadata !"log"}
!198 = metadata !{double (double)* @log2}
!199 = metadata !{metadata !"log2"}
!200 = metadata !{void (%struct.lua_State*, i32)* @lua_pushboolean}
!201 = metadata !{metadata !"lua_pushboolean"}
!202 = metadata !{i64 (%struct.lua_State*, i32, i32*)* @lua_tointegerx}
!203 = metadata !{metadata !"lua_tointegerx"}
!204 = metadata !{double (double, double)* @fmod}
!205 = metadata !{metadata !"fmod"}
!206 = metadata !{double (double)* @exp}
!207 = metadata !{metadata !"exp"}
!208 = metadata !{double (double)* @cos}
!209 = metadata !{metadata !"cos"}
!210 = metadata !{double (%struct.lua_State*, i32, double)* @luaL_optnumber}
!211 = metadata !{metadata !"luaL_optnumber"}
!212 = metadata !{double (double, double)* @atan2}
!213 = metadata !{metadata !"atan2"}
!214 = metadata !{double (double)* @asin}
!215 = metadata !{metadata !"asin"}
!216 = metadata !{double (double)* @acos}
!217 = metadata !{metadata !"acos"}
!218 = metadata !{double (double)* @fabs}
!219 = metadata !{metadata !"fabs"}
!220 = metadata !{metadata !"int.lua_State *.1"}
!221 = metadata !{metadata !"void.lua_State *.1.lua_Number.0.size_t.0"}
!222 = metadata !{metadata !"void.lua_State *.1.int.0.int.0"}
!223 = metadata !{metadata !"void.lua_State *.1.const luaL_Reg *.1.int.0"}
!224 = metadata !{metadata !"void.lua_State *.1.lua_Number.0"}
!225 = metadata !{metadata !"void.lua_State *.1.int.0.const char *.1"}
!226 = metadata !{metadata !"void.lua_State *.1.lua_Integer.0"}
!227 = metadata !{metadata !"double.double.0"}
!228 = metadata !{metadata !"lua_Number.lua_State *.1.int.0"}
!229 = metadata !{metadata !"lua_Integer.lua_State *.1.int.0"}
!230 = metadata !{metadata !"double.double.0.int.0"}
!231 = metadata !{metadata !"double.double.0.int *.1"}
!232 = metadata !{metadata !"double.double.0.double.0"}
!233 = metadata !{metadata !"int.lua_State *.1.int.0"}
!234 = metadata !{metadata !"const char .lua_State *.1.const char *.1"}
!235 = metadata !{metadata !"void.lua_State *.1.int.0"}
!236 = metadata !{metadata !"void.lua_State *.1"}
!237 = metadata !{metadata !"void.unsigned int.0"}
!238 = metadata !{metadata !"int."}
!239 = metadata !{metadata !"int.lua_State *.1.const char *.1"}
!240 = metadata !{metadata !"int.lua_State *.1.int.0.const char *.1"}
!241 = metadata !{metadata !"int.lua_State *.1.int.0.int.0.int.0"}
!242 = metadata !{metadata !"lua_Integer.lua_State *.1.int.0.int *.1"}
!243 = metadata !{metadata !"lua_Number.lua_State *.1.int.0.lua_Number.0"}
!244 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lualib.h"}
!245 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lauxlib.h"}
!246 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lua.h"}
!247 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lmathlib.c"}
!248 = metadata !{metadata !"D:/Xilinx/SDx/2016.3/SDK/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include\5Cbits/mathcalls.h"}
!249 = metadata !{metadata !"D:/Xilinx/SDx/2016.3/SDK/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include\5Cstdlib.h"}
!250 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!251 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!252 = metadata !{i32 1, metadata !"wchar_size", i32 4}
!253 = metadata !{i32 1, metadata !"min_enum_size", i32 4}
!254 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
!255 = metadata !{i32 786689, metadata !4, metadata !"L", metadata !6, i32 16777611, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 395]
!256 = metadata !{i32 395, i32 41, metadata !4, null}
!257 = metadata !{i32 396, i32 3, metadata !4, null}
!258 = metadata !{i32 397, i32 3, metadata !4, null}
!259 = metadata !{i32 398, i32 3, metadata !4, null}
!260 = metadata !{i32 399, i32 3, metadata !4, null}
!261 = metadata !{i32 400, i32 3, metadata !4, null}
!262 = metadata !{i32 401, i32 3, metadata !4, null}
!263 = metadata !{i32 402, i32 3, metadata !4, null}
!264 = metadata !{i32 403, i32 3, metadata !4, null}
!265 = metadata !{i32 404, i32 3, metadata !4, null}
!266 = metadata !{i32 405, i32 3, metadata !4, null}
!267 = metadata !{i32 786689, metadata !48, metadata !"L", metadata !6, i32 16777255, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 39]
!268 = metadata !{i32 39, i32 33, metadata !48, null}
!269 = metadata !{i32 40, i32 7, metadata !270, null}
!270 = metadata !{i32 786443, metadata !5, metadata !48, i32 40, i32 7, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lmathlib.c]
!271 = metadata !{i32 786688, metadata !272, metadata !"n", metadata !6, i32 41, metadata !273, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 41]
!272 = metadata !{i32 786443, metadata !5, metadata !270, i32 40, i32 28, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lmathlib.c]
!273 = metadata !{i32 786454, metadata !12, null, metadata !"lua_Integer", i32 93, i64 0, i64 0, i64 0, i32 0, metadata !274} ; [ DW_TAG_typedef ] [lua_Integer] [line 93, size 0, align 0, offset 0] [from long long int]
!274 = metadata !{i32 786468, null, null, metadata !"long long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!275 = metadata !{i32 41, i32 17, metadata !272, null}
!276 = metadata !{i32 41, i32 21, metadata !272, null}
!277 = metadata !{i32 42, i32 9, metadata !278, null}
!278 = metadata !{i32 786443, metadata !5, metadata !272, i32 42, i32 9, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lmathlib.c]
!279 = metadata !{i32 42, i32 16, metadata !280, null}
!280 = metadata !{i32 786443, metadata !5, metadata !278, i32 42, i32 16, i32 1, i32 35} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lmathlib.c]
!281 = metadata !{i32 43, i32 5, metadata !272, null}
!282 = metadata !{i32 44, i32 3, metadata !272, null}
!283 = metadata !{i32 46, i32 5, metadata !270, null}
!284 = metadata !{i32 46, i32 38, metadata !270, null}
!285 = metadata !{i32 46, i32 23, metadata !270, null}
!286 = metadata !{i32 47, i32 3, metadata !48, null}
!287 = metadata !{i32 786689, metadata !47, metadata !"L", metadata !6, i32 16777286, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 70]
!288 = metadata !{i32 70, i32 34, metadata !47, null}
!289 = metadata !{i32 71, i32 3, metadata !47, null}
!290 = metadata !{i32 71, i32 36, metadata !47, null}
!291 = metadata !{i32 71, i32 21, metadata !47, null}
!292 = metadata !{i32 72, i32 3, metadata !47, null}
!293 = metadata !{i32 786689, metadata !46, metadata !"L", metadata !6, i32 16777281, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 65]
!294 = metadata !{i32 65, i32 34, metadata !46, null}
!295 = metadata !{i32 66, i32 3, metadata !46, null}
!296 = metadata !{i32 66, i32 36, metadata !46, null}
!297 = metadata !{i32 66, i32 21, metadata !46, null}
!298 = metadata !{i32 67, i32 3, metadata !46, null}
!299 = metadata !{i32 786689, metadata !45, metadata !"L", metadata !6, i32 16777291, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 75]
!300 = metadata !{i32 75, i32 34, metadata !45, null}
!301 = metadata !{i32 786688, metadata !45, metadata !"y", metadata !6, i32 76, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [y] [line 76]
!302 = metadata !{i32 76, i32 14, metadata !45, null}
!303 = metadata !{i32 76, i32 18, metadata !45, null}
!304 = metadata !{i32 786688, metadata !45, metadata !"x", metadata !6, i32 77, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 77]
!305 = metadata !{i32 77, i32 14, metadata !45, null}
!306 = metadata !{i32 77, i32 18, metadata !45, null}
!307 = metadata !{i32 78, i32 3, metadata !45, null}
!308 = metadata !{i32 78, i32 21, metadata !45, null}
!309 = metadata !{i32 79, i32 3, metadata !45, null}
!310 = metadata !{i32 786689, metadata !44, metadata !"L", metadata !6, i32 16777332, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 116]
!311 = metadata !{i32 116, i32 34, metadata !44, null}
!312 = metadata !{i32 117, i32 7, metadata !313, null}
!313 = metadata !{i32 786443, metadata !5, metadata !44, i32 117, i32 7, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lmathlib.c]
!314 = metadata !{i32 118, i32 5, metadata !313, null}
!315 = metadata !{i32 786688, metadata !316, metadata !"d", metadata !6, i32 120, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [d] [line 120]
!316 = metadata !{i32 786443, metadata !5, metadata !313, i32 119, i32 8, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lmathlib.c]
!317 = metadata !{i32 120, i32 16, metadata !316, null}
!318 = metadata !{i32 120, i32 35, metadata !316, null}
!319 = metadata !{i32 120, i32 20, metadata !316, null}
!320 = metadata !{i32 121, i32 5, metadata !316, null}
!321 = metadata !{i32 123, i32 3, metadata !44, null}
!322 = metadata !{i32 786689, metadata !43, metadata !"L", metadata !6, i32 16777271, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 55]
!323 = metadata !{i32 55, i32 33, metadata !43, null}
!324 = metadata !{i32 56, i32 3, metadata !43, null}
!325 = metadata !{i32 56, i32 35, metadata !43, null}
!326 = metadata !{i32 56, i32 21, metadata !43, null}
!327 = metadata !{i32 57, i32 3, metadata !43, null}
!328 = metadata !{i32 786689, metadata !42, metadata !"L", metadata !6, i32 16777417, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 201]
!329 = metadata !{i32 201, i32 33, metadata !42, null}
!330 = metadata !{i32 202, i32 3, metadata !42, null}
!331 = metadata !{i32 202, i32 21, metadata !42, null}
!332 = metadata !{i32 203, i32 3, metadata !42, null}
!333 = metadata !{i32 786689, metadata !41, metadata !"L", metadata !6, i32 16777412, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 196]
!334 = metadata !{i32 196, i32 33, metadata !41, null}
!335 = metadata !{i32 197, i32 3, metadata !41, null}
!336 = metadata !{i32 197, i32 35, metadata !41, null}
!337 = metadata !{i32 197, i32 21, metadata !41, null}
!338 = metadata !{i32 198, i32 3, metadata !41, null}
!339 = metadata !{i32 786689, metadata !40, metadata !"L", metadata !6, i32 16777299, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 83]
!340 = metadata !{i32 83, i32 35, metadata !40, null}
!341 = metadata !{i32 786688, metadata !40, metadata !"valid", metadata !6, i32 84, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [valid] [line 84]
!342 = metadata !{i32 84, i32 7, metadata !40, null}
!343 = metadata !{i32 786688, metadata !40, metadata !"n", metadata !6, i32 85, metadata !273, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 85]
!344 = metadata !{i32 85, i32 15, metadata !40, null}
!345 = metadata !{i32 85, i32 19, metadata !40, null}
!346 = metadata !{i32 86, i32 7, metadata !347, null}
!347 = metadata !{i32 786443, metadata !5, metadata !40, i32 86, i32 7, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lmathlib.c]
!348 = metadata !{i32 87, i32 5, metadata !347, null}
!349 = metadata !{i32 89, i32 5, metadata !350, null}
!350 = metadata !{i32 786443, metadata !5, metadata !347, i32 88, i32 8, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lmathlib.c]
!351 = metadata !{i32 90, i32 5, metadata !350, null}
!352 = metadata !{i32 92, i32 3, metadata !40, null}
!353 = metadata !{i32 786689, metadata !39, metadata !"L", metadata !6, i32 16777321, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 105]
!354 = metadata !{i32 105, i32 35, metadata !39, null}
!355 = metadata !{i32 106, i32 7, metadata !356, null}
!356 = metadata !{i32 786443, metadata !5, metadata !39, i32 106, i32 7, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lmathlib.c]
!357 = metadata !{i32 107, i32 5, metadata !356, null}
!358 = metadata !{i32 786688, metadata !359, metadata !"d", metadata !6, i32 109, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [d] [line 109]
!359 = metadata !{i32 786443, metadata !5, metadata !356, i32 108, i32 8, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lmathlib.c]
!360 = metadata !{i32 109, i32 16, metadata !359, null}
!361 = metadata !{i32 109, i32 36, metadata !359, null}
!362 = metadata !{i32 109, i32 20, metadata !359, null}
!363 = metadata !{i32 110, i32 5, metadata !359, null}
!364 = metadata !{i32 112, i32 3, metadata !39, null}
!365 = metadata !{i32 786689, metadata !38, metadata !"L", metadata !6, i32 16777343, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 127]
!366 = metadata !{i32 127, i32 34, metadata !38, null}
!367 = metadata !{i32 128, i32 7, metadata !368, null}
!368 = metadata !{i32 786443, metadata !5, metadata !38, i32 128, i32 7, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lmathlib.c]
!369 = metadata !{i32 128, i32 30, metadata !370, null}
!370 = metadata !{i32 786443, metadata !5, metadata !368, i32 128, i32 30, i32 1, i32 36} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lmathlib.c]
!371 = metadata !{i32 786688, metadata !372, metadata !"d", metadata !6, i32 129, metadata !273, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [d] [line 129]
!372 = metadata !{i32 786443, metadata !5, metadata !368, i32 128, i32 51, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lmathlib.c]
!373 = metadata !{i32 129, i32 17, metadata !372, null}
!374 = metadata !{i32 129, i32 21, metadata !372, null}
!375 = metadata !{i32 130, i32 9, metadata !376, null}
!376 = metadata !{i32 786443, metadata !5, metadata !372, i32 130, i32 9, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lmathlib.c]
!377 = metadata !{i32 131, i32 7, metadata !378, null}
!378 = metadata !{i32 786443, metadata !5, metadata !376, i32 130, i32 37, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lmathlib.c]
!379 = metadata !{i32 131, i32 7, metadata !380, null}
!380 = metadata !{i32 786443, metadata !5, metadata !378, i32 131, i32 7, i32 2, i32 38} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lmathlib.c]
!381 = metadata !{i32 131, i32 7, metadata !382, null}
!382 = metadata !{i32 786443, metadata !5, metadata !383, i32 131, i32 7, i32 3, i32 39} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lmathlib.c]
!383 = metadata !{i32 786443, metadata !5, metadata !378, i32 131, i32 7, i32 1, i32 37} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lmathlib.c]
!384 = metadata !{i32 132, i32 7, metadata !378, null}
!385 = metadata !{i32 133, i32 5, metadata !378, null}
!386 = metadata !{i32 135, i32 7, metadata !376, null}
!387 = metadata !{i32 135, i32 26, metadata !376, null}
!388 = metadata !{i32 136, i32 3, metadata !372, null}
!389 = metadata !{i32 138, i32 5, metadata !368, null}
!390 = metadata !{i32 138, i32 38, metadata !368, null}
!391 = metadata !{i32 139, i32 38, metadata !368, null}
!392 = metadata !{i32 138, i32 23, metadata !368, null}
!393 = metadata !{i32 140, i32 3, metadata !38, null}
!394 = metadata !{i32 786689, metadata !37, metadata !"L", metadata !6, i32 16777388, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 172]
!395 = metadata !{i32 172, i32 33, metadata !37, null}
!396 = metadata !{i32 786688, metadata !37, metadata !"a", metadata !6, i32 173, metadata !273, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a] [line 173]
!397 = metadata !{i32 173, i32 15, metadata !37, null}
!398 = metadata !{i32 173, i32 19, metadata !37, null}
!399 = metadata !{i32 786688, metadata !37, metadata !"b", metadata !6, i32 174, metadata !273, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b] [line 174]
!400 = metadata !{i32 174, i32 15, metadata !37, null}
!401 = metadata !{i32 174, i32 19, metadata !37, null}
!402 = metadata !{i32 175, i32 3, metadata !37, null}
!403 = metadata !{i32 176, i32 3, metadata !37, null}
!404 = metadata !{i32 786689, metadata !36, metadata !"L", metadata !6, i32 16777395, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 179]
!405 = metadata !{i32 179, i32 33, metadata !36, null}
!406 = metadata !{i32 786688, metadata !36, metadata !"x", metadata !6, i32 180, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 180]
!407 = metadata !{i32 180, i32 14, metadata !36, null}
!408 = metadata !{i32 180, i32 18, metadata !36, null}
!409 = metadata !{i32 786688, metadata !36, metadata !"res", metadata !6, i32 181, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [res] [line 181]
!410 = metadata !{i32 181, i32 14, metadata !36, null}
!411 = metadata !{i32 182, i32 7, metadata !412, null}
!412 = metadata !{i32 786443, metadata !5, metadata !36, i32 182, i32 7, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lmathlib.c]
!413 = metadata !{i32 183, i32 11, metadata !412, null}
!414 = metadata !{i32 786688, metadata !415, metadata !"base", metadata !6, i32 185, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [base] [line 185]
!415 = metadata !{i32 786443, metadata !5, metadata !412, i32 184, i32 8, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lmathlib.c]
!416 = metadata !{i32 185, i32 16, metadata !415, null}
!417 = metadata !{i32 185, i32 23, metadata !415, null}
!418 = metadata !{i32 187, i32 9, metadata !419, null}
!419 = metadata !{i32 786443, metadata !5, metadata !415, i32 187, i32 9, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lmathlib.c]
!420 = metadata !{i32 187, i32 28, metadata !421, null}
!421 = metadata !{i32 786443, metadata !5, metadata !419, i32 187, i32 28, i32 1, i32 40} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lmathlib.c]
!422 = metadata !{i32 189, i32 9, metadata !423, null}
!423 = metadata !{i32 786443, metadata !5, metadata !419, i32 189, i32 9, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lmathlib.c]
!424 = metadata !{i32 189, i32 29, metadata !425, null}
!425 = metadata !{i32 786443, metadata !5, metadata !423, i32 189, i32 29, i32 1, i32 41} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lmathlib.c]
!426 = metadata !{i32 190, i32 16, metadata !423, null}
!427 = metadata !{i32 190, i32 33, metadata !423, null}
!428 = metadata !{i32 192, i32 3, metadata !36, null}
!429 = metadata !{i32 193, i32 3, metadata !36, null}
!430 = metadata !{i32 786689, metadata !35, metadata !"L", metadata !6, i32 16777442, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 226]
!431 = metadata !{i32 226, i32 33, metadata !35, null}
!432 = metadata !{i32 786688, metadata !35, metadata !"n", metadata !6, i32 227, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 227]
!433 = metadata !{i32 227, i32 7, metadata !35, null}
!434 = metadata !{i32 227, i32 11, metadata !35, null}
!435 = metadata !{i32 786688, metadata !35, metadata !"imax", metadata !6, i32 228, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [imax] [line 228]
!436 = metadata !{i32 228, i32 7, metadata !35, null}
!437 = metadata !{i32 228, i32 3, metadata !35, null}
!438 = metadata !{i32 786688, metadata !35, metadata !"i", metadata !6, i32 229, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 229]
!439 = metadata !{i32 229, i32 7, metadata !35, null}
!440 = metadata !{i32 230, i32 3, metadata !35, null}
!441 = metadata !{i32 230, i32 3, metadata !442, null}
!442 = metadata !{i32 786443, metadata !5, metadata !35, i32 230, i32 3, i32 2, i32 43} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lmathlib.c]
!443 = metadata !{i32 230, i32 3, metadata !444, null}
!444 = metadata !{i32 786443, metadata !5, metadata !445, i32 230, i32 3, i32 3, i32 44} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lmathlib.c]
!445 = metadata !{i32 786443, metadata !5, metadata !35, i32 230, i32 3, i32 1, i32 42} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lmathlib.c]
!446 = metadata !{i32 231, i32 8, metadata !447, null}
!447 = metadata !{i32 786443, metadata !5, metadata !35, i32 231, i32 3, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lmathlib.c]
!448 = metadata !{i32 231, i32 8, metadata !449, null}
!449 = metadata !{i32 786443, metadata !5, metadata !450, i32 231, i32 8, i32 2, i32 46} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lmathlib.c]
!450 = metadata !{i32 786443, metadata !5, metadata !447, i32 231, i32 8, i32 1, i32 45} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lmathlib.c]
!451 = metadata !{i32 232, i32 9, metadata !452, null}
!452 = metadata !{i32 786443, metadata !5, metadata !453, i32 232, i32 9, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lmathlib.c]
!453 = metadata !{i32 786443, metadata !5, metadata !447, i32 231, i32 28, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lmathlib.c]
!454 = metadata !{i32 233, i32 7, metadata !452, null}
!455 = metadata !{i32 234, i32 3, metadata !453, null}
!456 = metadata !{i32 231, i32 23, metadata !447, null}
!457 = metadata !{i32 235, i32 3, metadata !35, null}
!458 = metadata !{i32 236, i32 3, metadata !35, null}
!459 = metadata !{i32 786689, metadata !34, metadata !"L", metadata !6, i32 16777428, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 212]
!460 = metadata !{i32 212, i32 33, metadata !34, null}
!461 = metadata !{i32 786688, metadata !34, metadata !"n", metadata !6, i32 213, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 213]
!462 = metadata !{i32 213, i32 7, metadata !34, null}
!463 = metadata !{i32 213, i32 11, metadata !34, null}
!464 = metadata !{i32 786688, metadata !34, metadata !"imin", metadata !6, i32 214, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [imin] [line 214]
!465 = metadata !{i32 214, i32 7, metadata !34, null}
!466 = metadata !{i32 214, i32 3, metadata !34, null}
!467 = metadata !{i32 786688, metadata !34, metadata !"i", metadata !6, i32 215, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 215]
!468 = metadata !{i32 215, i32 7, metadata !34, null}
!469 = metadata !{i32 216, i32 3, metadata !34, null}
!470 = metadata !{i32 216, i32 3, metadata !471, null}
!471 = metadata !{i32 786443, metadata !5, metadata !34, i32 216, i32 3, i32 2, i32 48} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lmathlib.c]
!472 = metadata !{i32 216, i32 3, metadata !473, null}
!473 = metadata !{i32 786443, metadata !5, metadata !474, i32 216, i32 3, i32 3, i32 49} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lmathlib.c]
!474 = metadata !{i32 786443, metadata !5, metadata !34, i32 216, i32 3, i32 1, i32 47} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lmathlib.c]
!475 = metadata !{i32 217, i32 8, metadata !476, null}
!476 = metadata !{i32 786443, metadata !5, metadata !34, i32 217, i32 3, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lmathlib.c]
!477 = metadata !{i32 217, i32 8, metadata !478, null}
!478 = metadata !{i32 786443, metadata !5, metadata !479, i32 217, i32 8, i32 2, i32 51} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lmathlib.c]
!479 = metadata !{i32 786443, metadata !5, metadata !476, i32 217, i32 8, i32 1, i32 50} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lmathlib.c]
!480 = metadata !{i32 218, i32 9, metadata !481, null}
!481 = metadata !{i32 786443, metadata !5, metadata !482, i32 218, i32 9, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lmathlib.c]
!482 = metadata !{i32 786443, metadata !5, metadata !476, i32 217, i32 28, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lmathlib.c]
!483 = metadata !{i32 219, i32 7, metadata !481, null}
!484 = metadata !{i32 220, i32 3, metadata !482, null}
!485 = metadata !{i32 217, i32 23, metadata !476, null}
!486 = metadata !{i32 221, i32 3, metadata !34, null}
!487 = metadata !{i32 222, i32 3, metadata !34, null}
!488 = metadata !{i32 786689, metadata !28, metadata !"L", metadata !6, i32 16777365, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 149]
!489 = metadata !{i32 149, i32 34, metadata !28, null}
!490 = metadata !{i32 150, i32 7, metadata !491, null}
!491 = metadata !{i32 786443, metadata !5, metadata !28, i32 150, i32 7, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lmathlib.c]
!492 = metadata !{i32 151, i32 5, metadata !493, null}
!493 = metadata !{i32 786443, metadata !5, metadata !491, i32 150, i32 28, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lmathlib.c]
!494 = metadata !{i32 152, i32 5, metadata !493, null}
!495 = metadata !{i32 153, i32 3, metadata !493, null}
!496 = metadata !{i32 786688, metadata !497, metadata !"n", metadata !6, i32 155, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 155]
!497 = metadata !{i32 786443, metadata !5, metadata !491, i32 154, i32 8, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lmathlib.c]
!498 = metadata !{i32 155, i32 16, metadata !497, null}
!499 = metadata !{i32 155, i32 20, metadata !497, null}
!500 = metadata !{i32 786688, metadata !497, metadata !"ip", metadata !6, i32 157, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ip] [line 157]
!501 = metadata !{i32 157, i32 16, metadata !497, null}
!502 = metadata !{i32 157, i32 5, metadata !497, null}
!503 = metadata !{i32 157, i32 31, metadata !504, null}
!504 = metadata !{i32 786443, metadata !5, metadata !497, i32 157, i32 31, i32 1, i32 52} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lmathlib.c]
!505 = metadata !{i32 157, i32 51, metadata !506, null}
!506 = metadata !{i32 786443, metadata !5, metadata !497, i32 157, i32 51, i32 2, i32 53} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lmathlib.c]
!507 = metadata !{i32 157, i32 51, metadata !497, null}
!508 = metadata !{i32 157, i32 51, metadata !509, null}
!509 = metadata !{i32 786443, metadata !5, metadata !510, i32 157, i32 51, i32 4, i32 55} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lmathlib.c]
!510 = metadata !{i32 786443, metadata !5, metadata !497, i32 157, i32 51, i32 3, i32 54} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lmathlib.c]
!511 = metadata !{i32 158, i32 5, metadata !497, null}
!512 = metadata !{i32 160, i32 5, metadata !497, null}
!513 = metadata !{i32 160, i32 5, metadata !514, null}
!514 = metadata !{i32 786443, metadata !5, metadata !497, i32 160, i32 5, i32 1, i32 56} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lmathlib.c]
!515 = metadata !{i32 160, i32 5, metadata !516, null}
!516 = metadata !{i32 786443, metadata !5, metadata !497, i32 160, i32 5, i32 2, i32 57} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lmathlib.c]
!517 = metadata !{i32 160, i32 5, metadata !518, null}
!518 = metadata !{i32 786443, metadata !5, metadata !519, i32 160, i32 5, i32 4, i32 59} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lmathlib.c]
!519 = metadata !{i32 786443, metadata !5, metadata !497, i32 160, i32 5, i32 3, i32 58} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lmathlib.c]
!520 = metadata !{i32 162, i32 3, metadata !28, null}
!521 = metadata !{i32 786689, metadata !27, metadata !"L", metadata !6, i32 16777422, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 206]
!522 = metadata !{i32 206, i32 33, metadata !27, null}
!523 = metadata !{i32 207, i32 3, metadata !27, null}
!524 = metadata !{i32 207, i32 21, metadata !27, null}
!525 = metadata !{i32 208, i32 3, metadata !27, null}
!526 = metadata !{i32 786689, metadata !26, metadata !"L", metadata !6, i32 16777460, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 244]
!527 = metadata !{i32 244, i32 36, metadata !26, null}
!528 = metadata !{i32 786688, metadata !26, metadata !"low", metadata !6, i32 245, metadata !273, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [low] [line 245]
!529 = metadata !{i32 245, i32 15, metadata !26, null}
!530 = metadata !{i32 786688, metadata !26, metadata !"up", metadata !6, i32 245, metadata !273, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [up] [line 245]
!531 = metadata !{i32 245, i32 20, metadata !26, null}
!532 = metadata !{i32 786688, metadata !26, metadata !"r", metadata !6, i32 246, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 246]
!533 = metadata !{i32 246, i32 10, metadata !26, null}
!534 = metadata !{i32 246, i32 22, metadata !26, null}
!535 = metadata !{i32 247, i32 11, metadata !26, null}
!536 = metadata !{i32 249, i32 7, metadata !537, null}
!537 = metadata !{i32 786443, metadata !5, metadata !538, i32 248, i32 13, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lmathlib.c]
!538 = metadata !{i32 786443, metadata !5, metadata !26, i32 247, i32 26, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lmathlib.c]
!539 = metadata !{i32 250, i32 7, metadata !537, null}
!540 = metadata !{i32 253, i32 7, metadata !541, null}
!541 = metadata !{i32 786443, metadata !5, metadata !538, i32 252, i32 13, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lmathlib.c]
!542 = metadata !{i32 254, i32 12, metadata !541, null}
!543 = metadata !{i32 255, i32 7, metadata !541, null}
!544 = metadata !{i32 258, i32 13, metadata !545, null}
!545 = metadata !{i32 786443, metadata !5, metadata !538, i32 257, i32 13, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lmathlib.c]
!546 = metadata !{i32 259, i32 12, metadata !545, null}
!547 = metadata !{i32 260, i32 7, metadata !545, null}
!548 = metadata !{i32 262, i32 21, metadata !538, null}
!549 = metadata !{i32 265, i32 3, metadata !26, null}
!550 = metadata !{i32 265, i32 3, metadata !551, null}
!551 = metadata !{i32 786443, metadata !5, metadata !26, i32 265, i32 3, i32 2, i32 61} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lmathlib.c]
!552 = metadata !{i32 265, i32 3, metadata !553, null}
!553 = metadata !{i32 786443, metadata !5, metadata !554, i32 265, i32 3, i32 3, i32 62} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lmathlib.c]
!554 = metadata !{i32 786443, metadata !5, metadata !26, i32 265, i32 3, i32 1, i32 60} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lmathlib.c]
!555 = metadata !{i32 266, i32 3, metadata !26, null}
!556 = metadata !{i32 266, i32 3, metadata !557, null}
!557 = metadata !{i32 786443, metadata !5, metadata !26, i32 266, i32 3, i32 2, i32 64} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lmathlib.c]
!558 = metadata !{i32 266, i32 3, metadata !559, null}
!559 = metadata !{i32 786443, metadata !5, metadata !26, i32 266, i32 3, i32 4, i32 66} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lmathlib.c]
!560 = metadata !{i32 266, i32 3, metadata !561, null}
!561 = metadata !{i32 786443, metadata !5, metadata !562, i32 266, i32 3, i32 5, i32 67} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lmathlib.c]
!562 = metadata !{i32 786443, metadata !5, metadata !563, i32 266, i32 3, i32 3, i32 65} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lmathlib.c]
!563 = metadata !{i32 786443, metadata !5, metadata !26, i32 266, i32 3, i32 1, i32 63} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lmathlib.c]
!564 = metadata !{i32 268, i32 3, metadata !26, null}
!565 = metadata !{i32 269, i32 3, metadata !26, null}
!566 = metadata !{i32 270, i32 3, metadata !26, null}
!567 = metadata !{i32 271, i32 1, metadata !26, null}
!568 = metadata !{i32 786689, metadata !25, metadata !"L", metadata !6, i32 16777490, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 274]
!569 = metadata !{i32 274, i32 40, metadata !25, null}
!570 = metadata !{i32 275, i32 3, metadata !25, null}
!571 = metadata !{i32 276, i32 9, metadata !25, null}
!572 = metadata !{i32 277, i32 3, metadata !25, null}
!573 = metadata !{i32 786689, metadata !24, metadata !"L", metadata !6, i32 16777266, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 50]
!574 = metadata !{i32 50, i32 33, metadata !24, null}
!575 = metadata !{i32 51, i32 3, metadata !24, null}
!576 = metadata !{i32 51, i32 35, metadata !24, null}
!577 = metadata !{i32 51, i32 21, metadata !24, null}
!578 = metadata !{i32 52, i32 3, metadata !24, null}
!579 = metadata !{i32 786689, metadata !23, metadata !"L", metadata !6, i32 16777382, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 166]
!580 = metadata !{i32 166, i32 34, metadata !23, null}
!581 = metadata !{i32 167, i32 3, metadata !23, null}
!582 = metadata !{i32 167, i32 36, metadata !23, null}
!583 = metadata !{i32 167, i32 21, metadata !23, null}
!584 = metadata !{i32 168, i32 3, metadata !23, null}
!585 = metadata !{i32 786689, metadata !22, metadata !"L", metadata !6, i32 16777276, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 60]
!586 = metadata !{i32 60, i32 33, metadata !22, null}
!587 = metadata !{i32 61, i32 3, metadata !22, null}
!588 = metadata !{i32 61, i32 35, metadata !22, null}
!589 = metadata !{i32 61, i32 21, metadata !22, null}
!590 = metadata !{i32 62, i32 3, metadata !22, null}
!591 = metadata !{i32 786689, metadata !21, metadata !"L", metadata !6, i32 16777497, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 281]
!592 = metadata !{i32 281, i32 34, metadata !21, null}
!593 = metadata !{i32 282, i32 7, metadata !594, null}
!594 = metadata !{i32 786443, metadata !5, metadata !21, i32 282, i32 7, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lmathlib.c]
!595 = metadata !{i32 283, i32 11, metadata !596, null}
!596 = metadata !{i32 786443, metadata !5, metadata !597, i32 283, i32 11, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lmathlib.c]
!597 = metadata !{i32 786443, metadata !5, metadata !594, i32 282, i32 38, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lmathlib.c]
!598 = metadata !{i32 284, i32 9, metadata !596, null}
!599 = metadata !{i32 286, i32 9, metadata !596, null}
!600 = metadata !{i32 287, i32 3, metadata !597, null}
!601 = metadata !{i32 289, i32 5, metadata !602, null}
!602 = metadata !{i32 786443, metadata !5, metadata !594, i32 288, i32 8, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lmathlib.c]
!603 = metadata !{i32 290, i32 5, metadata !602, null}
!604 = metadata !{i32 292, i32 3, metadata !21, null}
!605 = metadata !{i32 786689, metadata !20, metadata !"L", metadata !6, i32 16777519, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 303]
!606 = metadata !{i32 303, i32 34, metadata !20, null}
!607 = metadata !{i32 304, i32 3, metadata !20, null}
!608 = metadata !{i32 304, i32 36, metadata !20, null}
!609 = metadata !{i32 304, i32 21, metadata !20, null}
!610 = metadata !{i32 305, i32 3, metadata !20, null}
!611 = metadata !{i32 786689, metadata !19, metadata !"L", metadata !6, i32 16777524, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 308]
!612 = metadata !{i32 308, i32 34, metadata !19, null}
!613 = metadata !{i32 309, i32 3, metadata !19, null}
!614 = metadata !{i32 309, i32 36, metadata !19, null}
!615 = metadata !{i32 309, i32 21, metadata !19, null}
!616 = metadata !{i32 310, i32 3, metadata !19, null}
!617 = metadata !{i32 786689, metadata !18, metadata !"L", metadata !6, i32 16777529, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 313]
!618 = metadata !{i32 313, i32 34, metadata !18, null}
!619 = metadata !{i32 314, i32 3, metadata !18, null}
!620 = metadata !{i32 314, i32 36, metadata !18, null}
!621 = metadata !{i32 314, i32 21, metadata !18, null}
!622 = metadata !{i32 315, i32 3, metadata !18, null}
!623 = metadata !{i32 786689, metadata !17, metadata !"L", metadata !6, i32 16777534, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 318]
!624 = metadata !{i32 318, i32 33, metadata !17, null}
!625 = metadata !{i32 786688, metadata !17, metadata !"x", metadata !6, i32 319, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 319]
!626 = metadata !{i32 319, i32 14, metadata !17, null}
!627 = metadata !{i32 319, i32 18, metadata !17, null}
!628 = metadata !{i32 786688, metadata !17, metadata !"y", metadata !6, i32 320, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [y] [line 320]
!629 = metadata !{i32 320, i32 14, metadata !17, null}
!630 = metadata !{i32 320, i32 18, metadata !17, null}
!631 = metadata !{i32 321, i32 3, metadata !17, null}
!632 = metadata !{i32 321, i32 21, metadata !17, null}
!633 = metadata !{i32 322, i32 3, metadata !17, null}
!634 = metadata !{i32 786689, metadata !16, metadata !"L", metadata !6, i32 16777541, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 325]
!635 = metadata !{i32 325, i32 35, metadata !16, null}
!636 = metadata !{i32 786688, metadata !16, metadata !"e", metadata !6, i32 326, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [e] [line 326]
!637 = metadata !{i32 326, i32 7, metadata !16, null}
!638 = metadata !{i32 327, i32 3, metadata !16, null}
!639 = metadata !{i32 327, i32 37, metadata !16, null}
!640 = metadata !{i32 327, i32 21, metadata !16, null}
!641 = metadata !{i32 328, i32 3, metadata !16, null}
!642 = metadata !{i32 329, i32 3, metadata !16, null}
!643 = metadata !{i32 786689, metadata !15, metadata !"L", metadata !6, i32 16777548, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 332]
!644 = metadata !{i32 332, i32 35, metadata !15, null}
!645 = metadata !{i32 786688, metadata !15, metadata !"x", metadata !6, i32 333, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 333]
!646 = metadata !{i32 333, i32 14, metadata !15, null}
!647 = metadata !{i32 333, i32 18, metadata !15, null}
!648 = metadata !{i32 786688, metadata !15, metadata !"ep", metadata !6, i32 334, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ep] [line 334]
!649 = metadata !{i32 334, i32 7, metadata !15, null}
!650 = metadata !{i32 334, i32 17, metadata !15, null}
!651 = metadata !{i32 335, i32 3, metadata !15, null}
!652 = metadata !{i32 335, i32 21, metadata !15, null}
!653 = metadata !{i32 336, i32 3, metadata !15, null}
!654 = metadata !{i32 786689, metadata !14, metadata !"L", metadata !6, i32 16777555, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 339]
!655 = metadata !{i32 339, i32 35, metadata !14, null}
!656 = metadata !{i32 340, i32 3, metadata !14, null}
!657 = metadata !{i32 340, i32 37, metadata !14, null}
!658 = metadata !{i32 340, i32 21, metadata !14, null}
!659 = metadata !{i32 341, i32 3, metadata !14, null}
!660 = metadata !{i32 786689, metadata !29, metadata !"L", metadata !6, i32 16777312, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 96]
!661 = metadata !{i32 96, i32 36, metadata !29, null}
!662 = metadata !{i32 786689, metadata !29, metadata !"d", metadata !6, i32 33554528, metadata !32, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [d] [line 96]
!663 = metadata !{i32 96, i32 50, metadata !29, null}
!664 = metadata !{i32 786688, metadata !29, metadata !"n", metadata !6, i32 97, metadata !273, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 97]
!665 = metadata !{i32 97, i32 15, metadata !29, null}
!666 = metadata !{i32 98, i32 7, metadata !667, null}
!667 = metadata !{i32 786443, metadata !5, metadata !29, i32 98, i32 7, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lmathlib.c]
!668 = metadata !{i32 98, i32 7, metadata !669, null}
!669 = metadata !{i32 786443, metadata !5, metadata !667, i32 98, i32 7, i32 1, i32 68} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lmathlib.c]
!670 = metadata !{i32 98, i32 7, metadata !671, null}
!671 = metadata !{i32 786443, metadata !5, metadata !667, i32 98, i32 7, i32 2, i32 69} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lmathlib.c]
!672 = metadata !{i32 99, i32 5, metadata !667, null}
!673 = metadata !{i32 101, i32 5, metadata !667, null}
!674 = metadata !{i32 102, i32 1, metadata !29, null}
