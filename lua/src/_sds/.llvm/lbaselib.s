; ModuleID = 'C:/Users/DevolutionX/workspace/lua/src/lbaselib.c'
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-n32-S64"
target triple = "armv7--linux-gnueabihf"

%struct.luaL_Reg = type { i8*, i32 (%struct.lua_State*)* }
%struct.lua_State = type opaque
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i32, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i32, i32, [40 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@base_funcs = internal constant [25 x %struct.luaL_Reg] [%struct.luaL_Reg { i8* getelementptr inbounds ([7 x i8]* @.str3, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_assert }, %struct.luaL_Reg { i8* getelementptr inbounds ([15 x i8]* @.str4, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_collectgarbage }, %struct.luaL_Reg { i8* getelementptr inbounds ([7 x i8]* @.str5, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_dofile }, %struct.luaL_Reg { i8* getelementptr inbounds ([6 x i8]* @.str6, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_error }, %struct.luaL_Reg { i8* getelementptr inbounds ([13 x i8]* @.str7, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_getmetatable }, %struct.luaL_Reg { i8* getelementptr inbounds ([7 x i8]* @.str8, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_ipairs }, %struct.luaL_Reg { i8* getelementptr inbounds ([9 x i8]* @.str9, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_loadfile }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8]* @.str10, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_load }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8]* @.str11, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_next }, %struct.luaL_Reg { i8* getelementptr inbounds ([6 x i8]* @.str12, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_pairs }, %struct.luaL_Reg { i8* getelementptr inbounds ([6 x i8]* @.str13, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_pcall }, %struct.luaL_Reg { i8* getelementptr inbounds ([6 x i8]* @.str14, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_print }, %struct.luaL_Reg { i8* getelementptr inbounds ([9 x i8]* @.str15, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_rawequal }, %struct.luaL_Reg { i8* getelementptr inbounds ([7 x i8]* @.str16, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_rawlen }, %struct.luaL_Reg { i8* getelementptr inbounds ([7 x i8]* @.str17, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_rawget }, %struct.luaL_Reg { i8* getelementptr inbounds ([7 x i8]* @.str18, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_rawset }, %struct.luaL_Reg { i8* getelementptr inbounds ([7 x i8]* @.str19, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_select }, %struct.luaL_Reg { i8* getelementptr inbounds ([13 x i8]* @.str20, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_setmetatable }, %struct.luaL_Reg { i8* getelementptr inbounds ([9 x i8]* @.str21, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_tonumber }, %struct.luaL_Reg { i8* getelementptr inbounds ([9 x i8]* @.str22, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_tostring }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8]* @.str23, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_type }, %struct.luaL_Reg { i8* getelementptr inbounds ([7 x i8]* @.str24, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_xpcall }, %struct.luaL_Reg { i8* getelementptr inbounds ([3 x i8]* @.str, i32 0, i32 0), i32 (%struct.lua_State*)* null }, %struct.luaL_Reg { i8* getelementptr inbounds ([9 x i8]* @.str2, i32 0, i32 0), i32 (%struct.lua_State*)* null }, %struct.luaL_Reg zeroinitializer], align 4
@.str = private unnamed_addr constant [3 x i8] c"_G\00", align 1
@.str1 = private unnamed_addr constant [8 x i8] c"Lua 5.3\00", align 1
@.str2 = private unnamed_addr constant [9 x i8] c"_VERSION\00", align 1
@.str3 = private unnamed_addr constant [7 x i8] c"assert\00", align 1
@.str4 = private unnamed_addr constant [15 x i8] c"collectgarbage\00", align 1
@.str5 = private unnamed_addr constant [7 x i8] c"dofile\00", align 1
@.str6 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str7 = private unnamed_addr constant [13 x i8] c"getmetatable\00", align 1
@.str8 = private unnamed_addr constant [7 x i8] c"ipairs\00", align 1
@.str9 = private unnamed_addr constant [9 x i8] c"loadfile\00", align 1
@.str10 = private unnamed_addr constant [5 x i8] c"load\00", align 1
@.str11 = private unnamed_addr constant [5 x i8] c"next\00", align 1
@.str12 = private unnamed_addr constant [6 x i8] c"pairs\00", align 1
@.str13 = private unnamed_addr constant [6 x i8] c"pcall\00", align 1
@.str14 = private unnamed_addr constant [6 x i8] c"print\00", align 1
@.str15 = private unnamed_addr constant [9 x i8] c"rawequal\00", align 1
@.str16 = private unnamed_addr constant [7 x i8] c"rawlen\00", align 1
@.str17 = private unnamed_addr constant [7 x i8] c"rawget\00", align 1
@.str18 = private unnamed_addr constant [7 x i8] c"rawset\00", align 1
@.str19 = private unnamed_addr constant [7 x i8] c"select\00", align 1
@.str20 = private unnamed_addr constant [13 x i8] c"setmetatable\00", align 1
@.str21 = private unnamed_addr constant [9 x i8] c"tonumber\00", align 1
@.str22 = private unnamed_addr constant [9 x i8] c"tostring\00", align 1
@.str23 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str24 = private unnamed_addr constant [7 x i8] c"xpcall\00", align 1
@.str25 = private unnamed_addr constant [15 x i8] c"value expected\00", align 1
@.str26 = private unnamed_addr constant [18 x i8] c"base out of range\00", align 1
@.str27 = private unnamed_addr constant [7 x i8] c" \0C\0A\0D\09\0B\00", align 1
@.str28 = private unnamed_addr constant [22 x i8] c"nil or table expected\00", align 1
@.str29 = private unnamed_addr constant [12 x i8] c"__metatable\00", align 1
@.str30 = private unnamed_addr constant [36 x i8] c"cannot change a protected metatable\00", align 1
@.str31 = private unnamed_addr constant [19 x i8] c"index out of range\00", align 1
@.str32 = private unnamed_addr constant [25 x i8] c"table or string expected\00", align 1
@.str33 = private unnamed_addr constant [43 x i8] c"'tostring' must return a string to 'print'\00", align 1
@.str34 = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@stdout = external global %struct._IO_FILE*
@.str35 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str36 = private unnamed_addr constant [8 x i8] c"__pairs\00", align 1
@.str37 = private unnamed_addr constant [3 x i8] c"bt\00", align 1
@.str38 = private unnamed_addr constant [8 x i8] c"=(load)\00", align 1
@.str39 = private unnamed_addr constant [26 x i8] c"too many nested functions\00", align 1
@.str40 = private unnamed_addr constant [37 x i8] c"reader function must return a string\00", align 1
@.str41 = private unnamed_addr constant [9 x i8] c"__ipairs\00", align 1
@luaB_collectgarbage.opts = internal constant [9 x i8*] [i8* getelementptr inbounds ([5 x i8]* @.str42, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @.str43, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @.str44, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str45, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str46, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str47, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @.str48, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @.str49, i32 0, i32 0), i8* null], align 4
@.str42 = private unnamed_addr constant [5 x i8] c"stop\00", align 1
@.str43 = private unnamed_addr constant [8 x i8] c"restart\00", align 1
@.str44 = private unnamed_addr constant [8 x i8] c"collect\00", align 1
@.str45 = private unnamed_addr constant [6 x i8] c"count\00", align 1
@.str46 = private unnamed_addr constant [5 x i8] c"step\00", align 1
@.str47 = private unnamed_addr constant [9 x i8] c"setpause\00", align 1
@.str48 = private unnamed_addr constant [11 x i8] c"setstepmul\00", align 1
@.str49 = private unnamed_addr constant [10 x i8] c"isrunning\00", align 1
@luaB_collectgarbage.optsnum = internal constant [8 x i32] [i32 0, i32 1, i32 2, i32 3, i32 5, i32 6, i32 7, i32 9], align 4
@.str50 = private unnamed_addr constant [18 x i8] c"assertion failed!\00", align 1

; Function Attrs: nounwind
define i32 @luaopen_base(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !327), !dbg !328
  %2 = load %struct.lua_State** %1, align 4, !dbg !329
  %3 = call i32 @lua_rawgeti(%struct.lua_State* %2, i32 -1001000, i64 2), !dbg !329
  %4 = load %struct.lua_State** %1, align 4, !dbg !330
  call void @luaL_setfuncs(%struct.lua_State* %4, %struct.luaL_Reg* getelementptr inbounds ([25 x %struct.luaL_Reg]* @base_funcs, i32 0, i32 0), i32 0), !dbg !330
  %5 = load %struct.lua_State** %1, align 4, !dbg !331
  call void @lua_pushvalue(%struct.lua_State* %5, i32 -1), !dbg !331
  %6 = load %struct.lua_State** %1, align 4, !dbg !332
  call void @lua_setfield(%struct.lua_State* %6, i32 -2, i8* getelementptr inbounds ([3 x i8]* @.str, i32 0, i32 0)), !dbg !332
  %7 = load %struct.lua_State** %1, align 4, !dbg !333
  %8 = call i8* @lua_pushstring(%struct.lua_State* %7, i8* getelementptr inbounds ([8 x i8]* @.str1, i32 0, i32 0)), !dbg !333
  %9 = load %struct.lua_State** %1, align 4, !dbg !334
  call void @lua_setfield(%struct.lua_State* %9, i32 -2, i8* getelementptr inbounds ([9 x i8]* @.str2, i32 0, i32 0)), !dbg !334
  ret i32 1, !dbg !335
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

declare i32 @lua_rawgeti(%struct.lua_State*, i32, i64) #2

declare void @luaL_setfuncs(%struct.lua_State*, %struct.luaL_Reg*, i32) #2

declare void @lua_pushvalue(%struct.lua_State*, i32) #2

declare void @lua_setfield(%struct.lua_State*, i32, i8*) #2

declare i8* @lua_pushstring(%struct.lua_State*, i8*) #2

; Function Attrs: nounwind
define internal i32 @luaB_assert(%struct.lua_State* %L) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.lua_State*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %2}, metadata !336), !dbg !337
  %3 = load %struct.lua_State** %2, align 4, !dbg !338
  %4 = call i32 @lua_toboolean(%struct.lua_State* %3, i32 1), !dbg !338
  %5 = icmp ne i32 %4, 0, !dbg !338
  br i1 %5, label %6, label %9, !dbg !338

; <label>:6                                       ; preds = %0
  %7 = load %struct.lua_State** %2, align 4, !dbg !340
  %8 = call i32 @lua_gettop(%struct.lua_State* %7), !dbg !340
  store i32 %8, i32* %1, !dbg !340
  br label %18, !dbg !340

; <label>:9                                       ; preds = %0
  %10 = load %struct.lua_State** %2, align 4, !dbg !341
  call void @luaL_checkany(%struct.lua_State* %10, i32 1), !dbg !341
  %11 = load %struct.lua_State** %2, align 4, !dbg !343
  call void @lua_rotate(%struct.lua_State* %11, i32 1, i32 -1), !dbg !343
  %12 = load %struct.lua_State** %2, align 4, !dbg !343
  call void @lua_settop(%struct.lua_State* %12, i32 -2), !dbg !343
  %13 = load %struct.lua_State** %2, align 4, !dbg !344
  %14 = call i8* @lua_pushstring(%struct.lua_State* %13, i8* getelementptr inbounds ([18 x i8]* @.str50, i32 0, i32 0)), !dbg !344
  %15 = load %struct.lua_State** %2, align 4, !dbg !345
  call void @lua_settop(%struct.lua_State* %15, i32 1), !dbg !345
  %16 = load %struct.lua_State** %2, align 4, !dbg !346
  %17 = call i32 @luaB_error(%struct.lua_State* %16), !dbg !346
  store i32 %17, i32* %1, !dbg !346
  br label %18, !dbg !346

; <label>:18                                      ; preds = %9, %6
  %19 = load i32* %1, !dbg !347
  ret i32 %19, !dbg !347
}

; Function Attrs: nounwind
define internal i32 @luaB_collectgarbage(%struct.lua_State* %L) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.lua_State*, align 4
  %o = alloca i32, align 4
  %ex = alloca i32, align 4
  %res = alloca i32, align 4
  %b = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %2}, metadata !348), !dbg !349
  call void @llvm.dbg.declare(metadata !{i32* %o}, metadata !350), !dbg !351
  %3 = load %struct.lua_State** %2, align 4, !dbg !352
  %4 = call i32 @luaL_checkoption(%struct.lua_State* %3, i32 1, i8* getelementptr inbounds ([8 x i8]* @.str44, i32 0, i32 0), i8** getelementptr inbounds ([9 x i8*]* @luaB_collectgarbage.opts, i32 0, i32 0)), !dbg !352
  %5 = getelementptr inbounds [8 x i32]* @luaB_collectgarbage.optsnum, i32 0, i32 %4, !dbg !352
  %6 = load i32* %5, align 4, !dbg !352
  store i32 %6, i32* %o, align 4, !dbg !352
  call void @llvm.dbg.declare(metadata !{i32* %ex}, metadata !353), !dbg !354
  %7 = load %struct.lua_State** %2, align 4, !dbg !355
  %8 = call i64 @luaL_optinteger(%struct.lua_State* %7, i32 2, i64 0), !dbg !355
  %9 = trunc i64 %8 to i32, !dbg !355
  store i32 %9, i32* %ex, align 4, !dbg !355
  call void @llvm.dbg.declare(metadata !{i32* %res}, metadata !356), !dbg !357
  %10 = load %struct.lua_State** %2, align 4, !dbg !358
  %11 = load i32* %o, align 4, !dbg !358
  %12 = load i32* %ex, align 4, !dbg !358
  %13 = call i32 @lua_gc(%struct.lua_State* %10, i32 %11, i32 %12), !dbg !358
  store i32 %13, i32* %res, align 4, !dbg !358
  %14 = load i32* %o, align 4, !dbg !359
  switch i32 %14, label %28 [
    i32 3, label %15
    i32 5, label %25
    i32 9, label %25
  ], !dbg !359

; <label>:15                                      ; preds = %0
  call void @llvm.dbg.declare(metadata !{i32* %b}, metadata !360), !dbg !363
  %16 = load %struct.lua_State** %2, align 4, !dbg !364
  %17 = call i32 @lua_gc(%struct.lua_State* %16, i32 4, i32 0), !dbg !364
  store i32 %17, i32* %b, align 4, !dbg !364
  %18 = load %struct.lua_State** %2, align 4, !dbg !365
  %19 = load i32* %res, align 4, !dbg !365
  %20 = sitofp i32 %19 to double, !dbg !365
  %21 = load i32* %b, align 4, !dbg !365
  %22 = sitofp i32 %21 to double, !dbg !365
  %23 = fdiv double %22, 1.024000e+03, !dbg !365
  %24 = fadd double %20, %23, !dbg !365
  call void @lua_pushnumber(%struct.lua_State* %18, double %24), !dbg !365
  store i32 1, i32* %1, !dbg !366
  br label %32, !dbg !366

; <label>:25                                      ; preds = %0, %0
  %26 = load %struct.lua_State** %2, align 4, !dbg !367
  %27 = load i32* %res, align 4, !dbg !367
  call void @lua_pushboolean(%struct.lua_State* %26, i32 %27), !dbg !367
  store i32 1, i32* %1, !dbg !369
  br label %32, !dbg !369

; <label>:28                                      ; preds = %0
  %29 = load %struct.lua_State** %2, align 4, !dbg !370
  %30 = load i32* %res, align 4, !dbg !370
  %31 = sext i32 %30 to i64, !dbg !370
  call void @lua_pushinteger(%struct.lua_State* %29, i64 %31), !dbg !370
  store i32 1, i32* %1, !dbg !372
  br label %32, !dbg !372

; <label>:32                                      ; preds = %28, %25, %15
  %33 = load i32* %1, !dbg !373
  ret i32 %33, !dbg !373
}

; Function Attrs: nounwind
define internal i32 @luaB_dofile(%struct.lua_State* %L) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.lua_State*, align 4
  %fname = alloca i8*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %2}, metadata !374), !dbg !375
  call void @llvm.dbg.declare(metadata !{i8** %fname}, metadata !376), !dbg !377
  %3 = load %struct.lua_State** %2, align 4, !dbg !378
  %4 = call i8* @luaL_optlstring(%struct.lua_State* %3, i32 1, i8* null, i32* null), !dbg !378
  store i8* %4, i8** %fname, align 4, !dbg !378
  %5 = load %struct.lua_State** %2, align 4, !dbg !379
  call void @lua_settop(%struct.lua_State* %5, i32 1), !dbg !379
  %6 = load %struct.lua_State** %2, align 4, !dbg !380
  %7 = load i8** %fname, align 4, !dbg !380
  %8 = call i32 @luaL_loadfilex(%struct.lua_State* %6, i8* %7, i8* null), !dbg !380
  %9 = icmp ne i32 %8, 0, !dbg !380
  br i1 %9, label %10, label %13, !dbg !380

; <label>:10                                      ; preds = %0
  %11 = load %struct.lua_State** %2, align 4, !dbg !382
  %12 = call i32 @lua_error(%struct.lua_State* %11), !dbg !382
  store i32 %12, i32* %1, !dbg !382
  br label %17, !dbg !382

; <label>:13                                      ; preds = %0
  %14 = load %struct.lua_State** %2, align 4, !dbg !383
  call void @lua_callk(%struct.lua_State* %14, i32 0, i32 -1, i32 0, i32 (%struct.lua_State*, i32, i32)* @dofilecont), !dbg !383
  %15 = load %struct.lua_State** %2, align 4, !dbg !384
  %16 = call i32 @dofilecont(%struct.lua_State* %15, i32 0, i32 0), !dbg !384
  store i32 %16, i32* %1, !dbg !384
  br label %17, !dbg !384

; <label>:17                                      ; preds = %13, %10
  %18 = load i32* %1, !dbg !385
  ret i32 %18, !dbg !385
}

; Function Attrs: nounwind
define internal i32 @luaB_error(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %level = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !386), !dbg !387
  call void @llvm.dbg.declare(metadata !{i32* %level}, metadata !388), !dbg !389
  %2 = load %struct.lua_State** %1, align 4, !dbg !390
  %3 = call i64 @luaL_optinteger(%struct.lua_State* %2, i32 2, i64 1), !dbg !390
  %4 = trunc i64 %3 to i32, !dbg !390
  store i32 %4, i32* %level, align 4, !dbg !390
  %5 = load %struct.lua_State** %1, align 4, !dbg !391
  call void @lua_settop(%struct.lua_State* %5, i32 1), !dbg !391
  %6 = load %struct.lua_State** %1, align 4, !dbg !392
  %7 = call i32 @lua_type(%struct.lua_State* %6, i32 1), !dbg !392
  %8 = icmp eq i32 %7, 4, !dbg !392
  br i1 %8, label %9, label %17, !dbg !392

; <label>:9                                       ; preds = %0
  %10 = load i32* %level, align 4, !dbg !394
  %11 = icmp sgt i32 %10, 0, !dbg !394
  br i1 %11, label %12, label %17, !dbg !394

; <label>:12                                      ; preds = %9
  %13 = load %struct.lua_State** %1, align 4, !dbg !396
  %14 = load i32* %level, align 4, !dbg !396
  call void @luaL_where(%struct.lua_State* %13, i32 %14), !dbg !396
  %15 = load %struct.lua_State** %1, align 4, !dbg !398
  call void @lua_pushvalue(%struct.lua_State* %15, i32 1), !dbg !398
  %16 = load %struct.lua_State** %1, align 4, !dbg !399
  call void @lua_concat(%struct.lua_State* %16, i32 2), !dbg !399
  br label %17, !dbg !400

; <label>:17                                      ; preds = %12, %9, %0
  %18 = load %struct.lua_State** %1, align 4, !dbg !401
  %19 = call i32 @lua_error(%struct.lua_State* %18), !dbg !401
  ret i32 %19, !dbg !401
}

; Function Attrs: nounwind
define internal i32 @luaB_getmetatable(%struct.lua_State* %L) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.lua_State*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %2}, metadata !402), !dbg !403
  %3 = load %struct.lua_State** %2, align 4, !dbg !404
  call void @luaL_checkany(%struct.lua_State* %3, i32 1), !dbg !404
  %4 = load %struct.lua_State** %2, align 4, !dbg !405
  %5 = call i32 @lua_getmetatable(%struct.lua_State* %4, i32 1), !dbg !405
  %6 = icmp ne i32 %5, 0, !dbg !405
  br i1 %6, label %9, label %7, !dbg !405

; <label>:7                                       ; preds = %0
  %8 = load %struct.lua_State** %2, align 4, !dbg !407
  call void @lua_pushnil(%struct.lua_State* %8), !dbg !407
  store i32 1, i32* %1, !dbg !409
  br label %12, !dbg !409

; <label>:9                                       ; preds = %0
  %10 = load %struct.lua_State** %2, align 4, !dbg !410
  %11 = call i32 @luaL_getmetafield(%struct.lua_State* %10, i32 1, i8* getelementptr inbounds ([12 x i8]* @.str29, i32 0, i32 0)), !dbg !410
  store i32 1, i32* %1, !dbg !411
  br label %12, !dbg !411

; <label>:12                                      ; preds = %9, %7
  %13 = load i32* %1, !dbg !412
  ret i32 %13, !dbg !412
}

; Function Attrs: nounwind
define internal i32 @luaB_ipairs(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !413), !dbg !414
  %2 = load %struct.lua_State** %1, align 4, !dbg !415
  %3 = call i32 @pairsmeta(%struct.lua_State* %2, i8* getelementptr inbounds ([9 x i8]* @.str41, i32 0, i32 0), i32 1, i32 (%struct.lua_State*)* @ipairsaux), !dbg !415
  ret i32 %3, !dbg !415
}

; Function Attrs: nounwind
define internal i32 @luaB_loadfile(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %fname = alloca i8*, align 4
  %mode = alloca i8*, align 4
  %env = alloca i32, align 4
  %status = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !416), !dbg !417
  call void @llvm.dbg.declare(metadata !{i8** %fname}, metadata !418), !dbg !419
  %2 = load %struct.lua_State** %1, align 4, !dbg !420
  %3 = call i8* @luaL_optlstring(%struct.lua_State* %2, i32 1, i8* null, i32* null), !dbg !420
  store i8* %3, i8** %fname, align 4, !dbg !420
  call void @llvm.dbg.declare(metadata !{i8** %mode}, metadata !421), !dbg !422
  %4 = load %struct.lua_State** %1, align 4, !dbg !423
  %5 = call i8* @luaL_optlstring(%struct.lua_State* %4, i32 2, i8* null, i32* null), !dbg !423
  store i8* %5, i8** %mode, align 4, !dbg !423
  call void @llvm.dbg.declare(metadata !{i32* %env}, metadata !424), !dbg !425
  %6 = load %struct.lua_State** %1, align 4, !dbg !426
  %7 = call i32 @lua_type(%struct.lua_State* %6, i32 3), !dbg !426
  %8 = icmp eq i32 %7, -1, !dbg !426
  %9 = xor i1 %8, true, !dbg !426
  %10 = select i1 %9, i32 3, i32 0, !dbg !426
  store i32 %10, i32* %env, align 4, !dbg !426
  call void @llvm.dbg.declare(metadata !{i32* %status}, metadata !427), !dbg !428
  %11 = load %struct.lua_State** %1, align 4, !dbg !429
  %12 = load i8** %fname, align 4, !dbg !429
  %13 = load i8** %mode, align 4, !dbg !429
  %14 = call i32 @luaL_loadfilex(%struct.lua_State* %11, i8* %12, i8* %13), !dbg !429
  store i32 %14, i32* %status, align 4, !dbg !429
  %15 = load %struct.lua_State** %1, align 4, !dbg !430
  %16 = load i32* %status, align 4, !dbg !430
  %17 = load i32* %env, align 4, !dbg !430
  %18 = call i32 @load_aux(%struct.lua_State* %15, i32 %16, i32 %17), !dbg !430
  ret i32 %18, !dbg !430
}

; Function Attrs: nounwind
define internal i32 @luaB_load(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %status = alloca i32, align 4
  %l = alloca i32, align 4
  %s = alloca i8*, align 4
  %mode = alloca i8*, align 4
  %env = alloca i32, align 4
  %chunkname = alloca i8*, align 4
  %chunkname1 = alloca i8*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !431), !dbg !432
  call void @llvm.dbg.declare(metadata !{i32* %status}, metadata !433), !dbg !434
  call void @llvm.dbg.declare(metadata !{i32* %l}, metadata !435), !dbg !436
  call void @llvm.dbg.declare(metadata !{i8** %s}, metadata !437), !dbg !438
  %2 = load %struct.lua_State** %1, align 4, !dbg !439
  %3 = call i8* @lua_tolstring(%struct.lua_State* %2, i32 1, i32* %l), !dbg !439
  store i8* %3, i8** %s, align 4, !dbg !439
  call void @llvm.dbg.declare(metadata !{i8** %mode}, metadata !440), !dbg !441
  %4 = load %struct.lua_State** %1, align 4, !dbg !442
  %5 = call i8* @luaL_optlstring(%struct.lua_State* %4, i32 3, i8* getelementptr inbounds ([3 x i8]* @.str37, i32 0, i32 0), i32* null), !dbg !442
  store i8* %5, i8** %mode, align 4, !dbg !442
  call void @llvm.dbg.declare(metadata !{i32* %env}, metadata !443), !dbg !444
  %6 = load %struct.lua_State** %1, align 4, !dbg !445
  %7 = call i32 @lua_type(%struct.lua_State* %6, i32 4), !dbg !445
  %8 = icmp eq i32 %7, -1, !dbg !445
  %9 = xor i1 %8, true, !dbg !445
  %10 = select i1 %9, i32 4, i32 0, !dbg !445
  store i32 %10, i32* %env, align 4, !dbg !445
  %11 = load i8** %s, align 4, !dbg !446
  %12 = icmp ne i8* %11, null, !dbg !446
  br i1 %12, label %13, label %23, !dbg !446

; <label>:13                                      ; preds = %0
  call void @llvm.dbg.declare(metadata !{i8** %chunkname}, metadata !448), !dbg !450
  %14 = load %struct.lua_State** %1, align 4, !dbg !451
  %15 = load i8** %s, align 4, !dbg !451
  %16 = call i8* @luaL_optlstring(%struct.lua_State* %14, i32 2, i8* %15, i32* null), !dbg !451
  store i8* %16, i8** %chunkname, align 4, !dbg !451
  %17 = load %struct.lua_State** %1, align 4, !dbg !452
  %18 = load i8** %s, align 4, !dbg !452
  %19 = load i32* %l, align 4, !dbg !452
  %20 = load i8** %chunkname, align 4, !dbg !452
  %21 = load i8** %mode, align 4, !dbg !452
  %22 = call i32 @luaL_loadbufferx(%struct.lua_State* %17, i8* %18, i32 %19, i8* %20, i8* %21), !dbg !452
  store i32 %22, i32* %status, align 4, !dbg !452
  br label %32, !dbg !453

; <label>:23                                      ; preds = %0
  call void @llvm.dbg.declare(metadata !{i8** %chunkname1}, metadata !454), !dbg !456
  %24 = load %struct.lua_State** %1, align 4, !dbg !457
  %25 = call i8* @luaL_optlstring(%struct.lua_State* %24, i32 2, i8* getelementptr inbounds ([8 x i8]* @.str38, i32 0, i32 0), i32* null), !dbg !457
  store i8* %25, i8** %chunkname1, align 4, !dbg !457
  %26 = load %struct.lua_State** %1, align 4, !dbg !458
  call void @luaL_checktype(%struct.lua_State* %26, i32 1, i32 6), !dbg !458
  %27 = load %struct.lua_State** %1, align 4, !dbg !459
  call void @lua_settop(%struct.lua_State* %27, i32 5), !dbg !459
  %28 = load %struct.lua_State** %1, align 4, !dbg !460
  %29 = load i8** %chunkname1, align 4, !dbg !460
  %30 = load i8** %mode, align 4, !dbg !460
  %31 = call i32 @lua_load(%struct.lua_State* %28, i8* (%struct.lua_State*, i8*, i32*)* @generic_reader, i8* null, i8* %29, i8* %30), !dbg !460
  store i32 %31, i32* %status, align 4, !dbg !460
  br label %32

; <label>:32                                      ; preds = %23, %13
  %33 = load %struct.lua_State** %1, align 4, !dbg !461
  %34 = load i32* %status, align 4, !dbg !461
  %35 = load i32* %env, align 4, !dbg !461
  %36 = call i32 @load_aux(%struct.lua_State* %33, i32 %34, i32 %35), !dbg !461
  ret i32 %36, !dbg !461
}

; Function Attrs: nounwind
define internal i32 @luaB_next(%struct.lua_State* %L) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.lua_State*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %2}, metadata !462), !dbg !463
  %3 = load %struct.lua_State** %2, align 4, !dbg !464
  call void @luaL_checktype(%struct.lua_State* %3, i32 1, i32 5), !dbg !464
  %4 = load %struct.lua_State** %2, align 4, !dbg !465
  call void @lua_settop(%struct.lua_State* %4, i32 2), !dbg !465
  %5 = load %struct.lua_State** %2, align 4, !dbg !466
  %6 = call i32 @lua_next(%struct.lua_State* %5, i32 1), !dbg !466
  %7 = icmp ne i32 %6, 0, !dbg !466
  br i1 %7, label %8, label %9, !dbg !466

; <label>:8                                       ; preds = %0
  store i32 2, i32* %1, !dbg !468
  br label %11, !dbg !468

; <label>:9                                       ; preds = %0
  %10 = load %struct.lua_State** %2, align 4, !dbg !469
  call void @lua_pushnil(%struct.lua_State* %10), !dbg !469
  store i32 1, i32* %1, !dbg !471
  br label %11, !dbg !471

; <label>:11                                      ; preds = %9, %8
  %12 = load i32* %1, !dbg !472
  ret i32 %12, !dbg !472
}

; Function Attrs: nounwind
define internal i32 @luaB_pairs(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !473), !dbg !474
  %2 = load %struct.lua_State** %1, align 4, !dbg !475
  %3 = call i32 @pairsmeta(%struct.lua_State* %2, i8* getelementptr inbounds ([8 x i8]* @.str36, i32 0, i32 0), i32 0, i32 (%struct.lua_State*)* @luaB_next), !dbg !475
  ret i32 %3, !dbg !475
}

; Function Attrs: nounwind
define internal i32 @luaB_pcall(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %status = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !476), !dbg !477
  call void @llvm.dbg.declare(metadata !{i32* %status}, metadata !478), !dbg !479
  %2 = load %struct.lua_State** %1, align 4, !dbg !480
  call void @luaL_checkany(%struct.lua_State* %2, i32 1), !dbg !480
  %3 = load %struct.lua_State** %1, align 4, !dbg !481
  call void @lua_pushboolean(%struct.lua_State* %3, i32 1), !dbg !481
  %4 = load %struct.lua_State** %1, align 4, !dbg !482
  call void @lua_rotate(%struct.lua_State* %4, i32 1, i32 1), !dbg !482
  %5 = load %struct.lua_State** %1, align 4, !dbg !483
  %6 = load %struct.lua_State** %1, align 4, !dbg !484
  %7 = call i32 @lua_gettop(%struct.lua_State* %6), !dbg !484
  %8 = sub nsw i32 %7, 2, !dbg !484
  %9 = call i32 @lua_pcallk(%struct.lua_State* %5, i32 %8, i32 -1, i32 0, i32 0, i32 (%struct.lua_State*, i32, i32)* @finishpcall), !dbg !483
  store i32 %9, i32* %status, align 4, !dbg !483
  %10 = load %struct.lua_State** %1, align 4, !dbg !485
  %11 = load i32* %status, align 4, !dbg !485
  %12 = call i32 @finishpcall(%struct.lua_State* %10, i32 %11, i32 0), !dbg !485
  ret i32 %12, !dbg !485
}

; Function Attrs: nounwind
define internal i32 @luaB_print(%struct.lua_State* %L) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.lua_State*, align 4
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %s = alloca i8*, align 4
  %l = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %2}, metadata !486), !dbg !487
  call void @llvm.dbg.declare(metadata !{i32* %n}, metadata !488), !dbg !489
  %3 = load %struct.lua_State** %2, align 4, !dbg !490
  %4 = call i32 @lua_gettop(%struct.lua_State* %3), !dbg !490
  store i32 %4, i32* %n, align 4, !dbg !490
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !491), !dbg !492
  %5 = load %struct.lua_State** %2, align 4, !dbg !493
  %6 = call i32 @lua_getglobal(%struct.lua_State* %5, i8* getelementptr inbounds ([9 x i8]* @.str22, i32 0, i32 0)), !dbg !493
  store i32 1, i32* %i, align 4, !dbg !494
  br label %7, !dbg !494

; <label>:7                                       ; preds = %35, %0
  %8 = load i32* %i, align 4, !dbg !496
  %9 = load i32* %n, align 4, !dbg !496
  %10 = icmp sle i32 %8, %9, !dbg !496
  br i1 %10, label %11, label %38, !dbg !496

; <label>:11                                      ; preds = %7
  call void @llvm.dbg.declare(metadata !{i8** %s}, metadata !499), !dbg !501
  call void @llvm.dbg.declare(metadata !{i32* %l}, metadata !502), !dbg !503
  %12 = load %struct.lua_State** %2, align 4, !dbg !504
  call void @lua_pushvalue(%struct.lua_State* %12, i32 -1), !dbg !504
  %13 = load %struct.lua_State** %2, align 4, !dbg !505
  %14 = load i32* %i, align 4, !dbg !505
  call void @lua_pushvalue(%struct.lua_State* %13, i32 %14), !dbg !505
  %15 = load %struct.lua_State** %2, align 4, !dbg !506
  call void @lua_callk(%struct.lua_State* %15, i32 1, i32 1, i32 0, i32 (%struct.lua_State*, i32, i32)* null), !dbg !506
  %16 = load %struct.lua_State** %2, align 4, !dbg !507
  %17 = call i8* @lua_tolstring(%struct.lua_State* %16, i32 -1, i32* %l), !dbg !507
  store i8* %17, i8** %s, align 4, !dbg !507
  %18 = load i8** %s, align 4, !dbg !508
  %19 = icmp eq i8* %18, null, !dbg !508
  br i1 %19, label %20, label %23, !dbg !508

; <label>:20                                      ; preds = %11
  %21 = load %struct.lua_State** %2, align 4, !dbg !510
  %22 = call i32 (%struct.lua_State*, i8*, ...)* @luaL_error(%struct.lua_State* %21, i8* getelementptr inbounds ([43 x i8]* @.str33, i32 0, i32 0)), !dbg !510
  store i32 %22, i32* %1, !dbg !510
  br label %43, !dbg !510

; <label>:23                                      ; preds = %11
  %24 = load i32* %i, align 4, !dbg !511
  %25 = icmp sgt i32 %24, 1, !dbg !511
  br i1 %25, label %26, label %29, !dbg !511

; <label>:26                                      ; preds = %23
  %27 = load %struct._IO_FILE** @stdout, align 4, !dbg !513
  %28 = call i32 @fwrite(i8* getelementptr inbounds ([2 x i8]* @.str34, i32 0, i32 0), i32 1, i32 1, %struct._IO_FILE* %27), !dbg !513
  br label %29, !dbg !513

; <label>:29                                      ; preds = %26, %23
  %30 = load i8** %s, align 4, !dbg !515
  %31 = load i32* %l, align 4, !dbg !515
  %32 = load %struct._IO_FILE** @stdout, align 4, !dbg !515
  %33 = call i32 @fwrite(i8* %30, i32 1, i32 %31, %struct._IO_FILE* %32), !dbg !515
  %34 = load %struct.lua_State** %2, align 4, !dbg !516
  call void @lua_settop(%struct.lua_State* %34, i32 -2), !dbg !516
  br label %35, !dbg !517

; <label>:35                                      ; preds = %29
  %36 = load i32* %i, align 4, !dbg !518
  %37 = add nsw i32 %36, 1, !dbg !518
  store i32 %37, i32* %i, align 4, !dbg !518
  br label %7, !dbg !518

; <label>:38                                      ; preds = %7
  %39 = load %struct._IO_FILE** @stdout, align 4, !dbg !519
  %40 = call i32 @fwrite(i8* getelementptr inbounds ([2 x i8]* @.str35, i32 0, i32 0), i32 1, i32 1, %struct._IO_FILE* %39), !dbg !519
  %41 = load %struct._IO_FILE** @stdout, align 4, !dbg !519
  %42 = call i32 @fflush(%struct._IO_FILE* %41), !dbg !519
  store i32 0, i32* %1, !dbg !520
  br label %43, !dbg !520

; <label>:43                                      ; preds = %38, %20
  %44 = load i32* %1, !dbg !521
  ret i32 %44, !dbg !521
}

; Function Attrs: nounwind
define internal i32 @luaB_rawequal(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !522), !dbg !523
  %2 = load %struct.lua_State** %1, align 4, !dbg !524
  call void @luaL_checkany(%struct.lua_State* %2, i32 1), !dbg !524
  %3 = load %struct.lua_State** %1, align 4, !dbg !525
  call void @luaL_checkany(%struct.lua_State* %3, i32 2), !dbg !525
  %4 = load %struct.lua_State** %1, align 4, !dbg !526
  %5 = load %struct.lua_State** %1, align 4, !dbg !527
  %6 = call i32 @lua_rawequal(%struct.lua_State* %5, i32 1, i32 2), !dbg !527
  call void @lua_pushboolean(%struct.lua_State* %4, i32 %6), !dbg !526
  ret i32 1, !dbg !528
}

; Function Attrs: nounwind
define internal i32 @luaB_rawlen(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %t = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !529), !dbg !530
  call void @llvm.dbg.declare(metadata !{i32* %t}, metadata !531), !dbg !532
  %2 = load %struct.lua_State** %1, align 4, !dbg !533
  %3 = call i32 @lua_type(%struct.lua_State* %2, i32 1), !dbg !533
  store i32 %3, i32* %t, align 4, !dbg !533
  %4 = load i32* %t, align 4, !dbg !534
  %5 = icmp eq i32 %4, 5, !dbg !534
  br i1 %5, label %13, label %6, !dbg !534

; <label>:6                                       ; preds = %0
  %7 = load i32* %t, align 4, !dbg !535
  %8 = icmp eq i32 %7, 4, !dbg !535
  br i1 %8, label %13, label %9, !dbg !535

; <label>:9                                       ; preds = %6
  %10 = load %struct.lua_State** %1, align 4, !dbg !537
  %11 = call i32 @luaL_argerror(%struct.lua_State* %10, i32 1, i8* getelementptr inbounds ([25 x i8]* @.str32, i32 0, i32 0)), !dbg !537
  %12 = icmp ne i32 %11, 0, !dbg !537
  br label %13, !dbg !537

; <label>:13                                      ; preds = %9, %6, %0
  %14 = phi i1 [ true, %6 ], [ true, %0 ], [ %12, %9 ]
  %15 = zext i1 %14 to i32, !dbg !539
  %16 = load %struct.lua_State** %1, align 4, !dbg !543
  %17 = load %struct.lua_State** %1, align 4, !dbg !544
  %18 = call i32 @lua_rawlen(%struct.lua_State* %17, i32 1), !dbg !544
  %19 = zext i32 %18 to i64, !dbg !544
  call void @lua_pushinteger(%struct.lua_State* %16, i64 %19), !dbg !543
  ret i32 1, !dbg !545
}

; Function Attrs: nounwind
define internal i32 @luaB_rawget(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !546), !dbg !547
  %2 = load %struct.lua_State** %1, align 4, !dbg !548
  call void @luaL_checktype(%struct.lua_State* %2, i32 1, i32 5), !dbg !548
  %3 = load %struct.lua_State** %1, align 4, !dbg !549
  call void @luaL_checkany(%struct.lua_State* %3, i32 2), !dbg !549
  %4 = load %struct.lua_State** %1, align 4, !dbg !550
  call void @lua_settop(%struct.lua_State* %4, i32 2), !dbg !550
  %5 = load %struct.lua_State** %1, align 4, !dbg !551
  %6 = call i32 @lua_rawget(%struct.lua_State* %5, i32 1), !dbg !551
  ret i32 1, !dbg !552
}

; Function Attrs: nounwind
define internal i32 @luaB_rawset(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !553), !dbg !554
  %2 = load %struct.lua_State** %1, align 4, !dbg !555
  call void @luaL_checktype(%struct.lua_State* %2, i32 1, i32 5), !dbg !555
  %3 = load %struct.lua_State** %1, align 4, !dbg !556
  call void @luaL_checkany(%struct.lua_State* %3, i32 2), !dbg !556
  %4 = load %struct.lua_State** %1, align 4, !dbg !557
  call void @luaL_checkany(%struct.lua_State* %4, i32 3), !dbg !557
  %5 = load %struct.lua_State** %1, align 4, !dbg !558
  call void @lua_settop(%struct.lua_State* %5, i32 3), !dbg !558
  %6 = load %struct.lua_State** %1, align 4, !dbg !559
  call void @lua_rawset(%struct.lua_State* %6, i32 1), !dbg !559
  ret i32 1, !dbg !560
}

; Function Attrs: nounwind
define internal i32 @luaB_select(%struct.lua_State* %L) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.lua_State*, align 4
  %n = alloca i32, align 4
  %i = alloca i64, align 8
  store %struct.lua_State* %L, %struct.lua_State** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %2}, metadata !561), !dbg !562
  call void @llvm.dbg.declare(metadata !{i32* %n}, metadata !563), !dbg !564
  %3 = load %struct.lua_State** %2, align 4, !dbg !565
  %4 = call i32 @lua_gettop(%struct.lua_State* %3), !dbg !565
  store i32 %4, i32* %n, align 4, !dbg !565
  %5 = load %struct.lua_State** %2, align 4, !dbg !566
  %6 = call i32 @lua_type(%struct.lua_State* %5, i32 1), !dbg !566
  %7 = icmp eq i32 %6, 4, !dbg !566
  br i1 %7, label %8, label %19, !dbg !566

; <label>:8                                       ; preds = %0
  %9 = load %struct.lua_State** %2, align 4, !dbg !568
  %10 = call i8* @lua_tolstring(%struct.lua_State* %9, i32 1, i32* null), !dbg !568
  %11 = load i8* %10, align 1, !dbg !568
  %12 = zext i8 %11 to i32, !dbg !568
  %13 = icmp eq i32 %12, 35, !dbg !568
  br i1 %13, label %14, label %19, !dbg !568

; <label>:14                                      ; preds = %8
  %15 = load %struct.lua_State** %2, align 4, !dbg !570
  %16 = load i32* %n, align 4, !dbg !570
  %17 = sub nsw i32 %16, 1, !dbg !570
  %18 = sext i32 %17 to i64, !dbg !570
  call void @lua_pushinteger(%struct.lua_State* %15, i64 %18), !dbg !570
  store i32 1, i32* %1, !dbg !572
  br label %52, !dbg !572

; <label>:19                                      ; preds = %8, %0
  call void @llvm.dbg.declare(metadata !{i64* %i}, metadata !573), !dbg !575
  %20 = load %struct.lua_State** %2, align 4, !dbg !576
  %21 = call i64 @luaL_checkinteger(%struct.lua_State* %20, i32 1), !dbg !576
  store i64 %21, i64* %i, align 8, !dbg !576
  %22 = load i64* %i, align 8, !dbg !577
  %23 = icmp slt i64 %22, 0, !dbg !577
  br i1 %23, label %24, label %29, !dbg !577

; <label>:24                                      ; preds = %19
  %25 = load i32* %n, align 4, !dbg !579
  %26 = sext i32 %25 to i64, !dbg !579
  %27 = load i64* %i, align 8, !dbg !579
  %28 = add nsw i64 %26, %27, !dbg !579
  store i64 %28, i64* %i, align 8, !dbg !579
  br label %38, !dbg !579

; <label>:29                                      ; preds = %19
  %30 = load i64* %i, align 8, !dbg !581
  %31 = load i32* %n, align 4, !dbg !581
  %32 = sext i32 %31 to i64, !dbg !581
  %33 = icmp sgt i64 %30, %32, !dbg !581
  br i1 %33, label %34, label %37, !dbg !581

; <label>:34                                      ; preds = %29
  %35 = load i32* %n, align 4, !dbg !583
  %36 = sext i32 %35 to i64, !dbg !583
  store i64 %36, i64* %i, align 8, !dbg !583
  br label %37, !dbg !583

; <label>:37                                      ; preds = %34, %29
  br label %38

; <label>:38                                      ; preds = %37, %24
  %39 = load i64* %i, align 8, !dbg !585
  %40 = icmp sle i64 1, %39, !dbg !585
  br i1 %40, label %45, label %41, !dbg !585

; <label>:41                                      ; preds = %38
  %42 = load %struct.lua_State** %2, align 4, !dbg !586
  %43 = call i32 @luaL_argerror(%struct.lua_State* %42, i32 1, i8* getelementptr inbounds ([19 x i8]* @.str31, i32 0, i32 0)), !dbg !586
  %44 = icmp ne i32 %43, 0, !dbg !586
  br label %45, !dbg !586

; <label>:45                                      ; preds = %41, %38
  %46 = phi i1 [ true, %38 ], [ %44, %41 ]
  %47 = zext i1 %46 to i32, !dbg !588
  %48 = load i32* %n, align 4, !dbg !591
  %49 = load i64* %i, align 8, !dbg !591
  %50 = trunc i64 %49 to i32, !dbg !591
  %51 = sub nsw i32 %48, %50, !dbg !591
  store i32 %51, i32* %1, !dbg !591
  br label %52, !dbg !591

; <label>:52                                      ; preds = %45, %14
  %53 = load i32* %1, !dbg !592
  ret i32 %53, !dbg !592
}

; Function Attrs: nounwind
define internal i32 @luaB_setmetatable(%struct.lua_State* %L) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.lua_State*, align 4
  %t = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %2}, metadata !593), !dbg !594
  call void @llvm.dbg.declare(metadata !{i32* %t}, metadata !595), !dbg !596
  %3 = load %struct.lua_State** %2, align 4, !dbg !597
  %4 = call i32 @lua_type(%struct.lua_State* %3, i32 2), !dbg !597
  store i32 %4, i32* %t, align 4, !dbg !597
  %5 = load %struct.lua_State** %2, align 4, !dbg !598
  call void @luaL_checktype(%struct.lua_State* %5, i32 1, i32 5), !dbg !598
  %6 = load i32* %t, align 4, !dbg !599
  %7 = icmp eq i32 %6, 0, !dbg !599
  br i1 %7, label %15, label %8, !dbg !599

; <label>:8                                       ; preds = %0
  %9 = load i32* %t, align 4, !dbg !600
  %10 = icmp eq i32 %9, 5, !dbg !600
  br i1 %10, label %15, label %11, !dbg !600

; <label>:11                                      ; preds = %8
  %12 = load %struct.lua_State** %2, align 4, !dbg !602
  %13 = call i32 @luaL_argerror(%struct.lua_State* %12, i32 2, i8* getelementptr inbounds ([22 x i8]* @.str28, i32 0, i32 0)), !dbg !602
  %14 = icmp ne i32 %13, 0, !dbg !602
  br label %15, !dbg !602

; <label>:15                                      ; preds = %11, %8, %0
  %16 = phi i1 [ true, %8 ], [ true, %0 ], [ %14, %11 ]
  %17 = zext i1 %16 to i32, !dbg !604
  %18 = load %struct.lua_State** %2, align 4, !dbg !608
  %19 = call i32 @luaL_getmetafield(%struct.lua_State* %18, i32 1, i8* getelementptr inbounds ([12 x i8]* @.str29, i32 0, i32 0)), !dbg !608
  %20 = icmp ne i32 %19, 0, !dbg !608
  br i1 %20, label %21, label %24, !dbg !608

; <label>:21                                      ; preds = %15
  %22 = load %struct.lua_State** %2, align 4, !dbg !610
  %23 = call i32 (%struct.lua_State*, i8*, ...)* @luaL_error(%struct.lua_State* %22, i8* getelementptr inbounds ([36 x i8]* @.str30, i32 0, i32 0)), !dbg !610
  store i32 %23, i32* %1, !dbg !610
  br label %28, !dbg !610

; <label>:24                                      ; preds = %15
  %25 = load %struct.lua_State** %2, align 4, !dbg !611
  call void @lua_settop(%struct.lua_State* %25, i32 2), !dbg !611
  %26 = load %struct.lua_State** %2, align 4, !dbg !612
  %27 = call i32 @lua_setmetatable(%struct.lua_State* %26, i32 1), !dbg !612
  store i32 1, i32* %1, !dbg !613
  br label %28, !dbg !613

; <label>:28                                      ; preds = %24, %21
  %29 = load i32* %1, !dbg !614
  ret i32 %29, !dbg !614
}

; Function Attrs: nounwind
define internal i32 @luaB_tonumber(%struct.lua_State* %L) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.lua_State*, align 4
  %l = alloca i32, align 4
  %s = alloca i8*, align 4
  %l1 = alloca i32, align 4
  %s2 = alloca i8*, align 4
  %n = alloca i64, align 8
  %base = alloca i64, align 8
  store %struct.lua_State* %L, %struct.lua_State** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %2}, metadata !615), !dbg !616
  %3 = load %struct.lua_State** %2, align 4, !dbg !617
  %4 = call i32 @lua_type(%struct.lua_State* %3, i32 2), !dbg !617
  %5 = icmp sle i32 %4, 0, !dbg !617
  br i1 %5, label %6, label %28, !dbg !617

; <label>:6                                       ; preds = %0
  %7 = load %struct.lua_State** %2, align 4, !dbg !619
  call void @luaL_checkany(%struct.lua_State* %7, i32 1), !dbg !619
  %8 = load %struct.lua_State** %2, align 4, !dbg !621
  %9 = call i32 @lua_type(%struct.lua_State* %8, i32 1), !dbg !621
  %10 = icmp eq i32 %9, 3, !dbg !621
  br i1 %10, label %11, label %13, !dbg !621

; <label>:11                                      ; preds = %6
  %12 = load %struct.lua_State** %2, align 4, !dbg !623
  call void @lua_settop(%struct.lua_State* %12, i32 1), !dbg !623
  store i32 1, i32* %1, !dbg !625
  br label %60, !dbg !625

; <label>:13                                      ; preds = %6
  call void @llvm.dbg.declare(metadata !{i32* %l}, metadata !626), !dbg !628
  call void @llvm.dbg.declare(metadata !{i8** %s}, metadata !629), !dbg !630
  %14 = load %struct.lua_State** %2, align 4, !dbg !631
  %15 = call i8* @lua_tolstring(%struct.lua_State* %14, i32 1, i32* %l), !dbg !631
  store i8* %15, i8** %s, align 4, !dbg !631
  %16 = load i8** %s, align 4, !dbg !632
  %17 = icmp ne i8* %16, null, !dbg !632
  br i1 %17, label %18, label %26, !dbg !632

; <label>:18                                      ; preds = %13
  %19 = load %struct.lua_State** %2, align 4, !dbg !634
  %20 = load i8** %s, align 4, !dbg !634
  %21 = call i32 @lua_stringtonumber(%struct.lua_State* %19, i8* %20), !dbg !634
  %22 = load i32* %l, align 4, !dbg !634
  %23 = add i32 %22, 1, !dbg !634
  %24 = icmp eq i32 %21, %23, !dbg !634
  br i1 %24, label %25, label %26, !dbg !634

; <label>:25                                      ; preds = %18
  store i32 1, i32* %1, !dbg !636
  br label %60, !dbg !636

; <label>:26                                      ; preds = %18, %13
  br label %27

; <label>:27                                      ; preds = %26
  br label %58, !dbg !637

; <label>:28                                      ; preds = %0
  call void @llvm.dbg.declare(metadata !{i32* %l1}, metadata !638), !dbg !640
  call void @llvm.dbg.declare(metadata !{i8** %s2}, metadata !641), !dbg !642
  call void @llvm.dbg.declare(metadata !{i64* %n}, metadata !643), !dbg !644
  store i64 0, i64* %n, align 8, !dbg !645
  call void @llvm.dbg.declare(metadata !{i64* %base}, metadata !646), !dbg !647
  %29 = load %struct.lua_State** %2, align 4, !dbg !648
  %30 = call i64 @luaL_checkinteger(%struct.lua_State* %29, i32 2), !dbg !648
  store i64 %30, i64* %base, align 8, !dbg !648
  %31 = load %struct.lua_State** %2, align 4, !dbg !649
  call void @luaL_checktype(%struct.lua_State* %31, i32 1, i32 4), !dbg !649
  %32 = load %struct.lua_State** %2, align 4, !dbg !650
  %33 = call i8* @lua_tolstring(%struct.lua_State* %32, i32 1, i32* %l1), !dbg !650
  store i8* %33, i8** %s2, align 4, !dbg !650
  %34 = load i64* %base, align 8, !dbg !651
  %35 = icmp sle i64 2, %34, !dbg !651
  br i1 %35, label %36, label %39, !dbg !651

; <label>:36                                      ; preds = %28
  %37 = load i64* %base, align 8, !dbg !652
  %38 = icmp sle i64 %37, 36, !dbg !652
  br i1 %38, label %43, label %39, !dbg !652

; <label>:39                                      ; preds = %36, %28
  %40 = load %struct.lua_State** %2, align 4, !dbg !654
  %41 = call i32 @luaL_argerror(%struct.lua_State* %40, i32 2, i8* getelementptr inbounds ([18 x i8]* @.str26, i32 0, i32 0)), !dbg !654
  %42 = icmp ne i32 %41, 0, !dbg !654
  br label %43, !dbg !654

; <label>:43                                      ; preds = %39, %36
  %44 = phi i1 [ true, %36 ], [ %42, %39 ]
  %45 = zext i1 %44 to i32, !dbg !657
  %46 = load i8** %s2, align 4, !dbg !660
  %47 = load i64* %base, align 8, !dbg !660
  %48 = trunc i64 %47 to i32, !dbg !660
  %49 = call i8* @b_str2int(i8* %46, i32 %48, i64* %n), !dbg !660
  %50 = load i8** %s2, align 4, !dbg !660
  %51 = load i32* %l1, align 4, !dbg !660
  %52 = getelementptr inbounds i8* %50, i32 %51, !dbg !660
  %53 = icmp eq i8* %49, %52, !dbg !660
  br i1 %53, label %54, label %57, !dbg !660

; <label>:54                                      ; preds = %43
  %55 = load %struct.lua_State** %2, align 4, !dbg !662
  %56 = load i64* %n, align 8, !dbg !662
  call void @lua_pushinteger(%struct.lua_State* %55, i64 %56), !dbg !662
  store i32 1, i32* %1, !dbg !664
  br label %60, !dbg !664

; <label>:57                                      ; preds = %43
  br label %58

; <label>:58                                      ; preds = %57, %27
  %59 = load %struct.lua_State** %2, align 4, !dbg !665
  call void @lua_pushnil(%struct.lua_State* %59), !dbg !665
  store i32 1, i32* %1, !dbg !666
  br label %60, !dbg !666

; <label>:60                                      ; preds = %58, %54, %25, %11
  %61 = load i32* %1, !dbg !667
  ret i32 %61, !dbg !667
}

; Function Attrs: nounwind
define internal i32 @luaB_tostring(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !668), !dbg !669
  %2 = load %struct.lua_State** %1, align 4, !dbg !670
  call void @luaL_checkany(%struct.lua_State* %2, i32 1), !dbg !670
  %3 = load %struct.lua_State** %1, align 4, !dbg !671
  %4 = call i8* @luaL_tolstring(%struct.lua_State* %3, i32 1, i32* null), !dbg !671
  ret i32 1, !dbg !672
}

; Function Attrs: nounwind
define internal i32 @luaB_type(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %t = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !673), !dbg !674
  call void @llvm.dbg.declare(metadata !{i32* %t}, metadata !675), !dbg !676
  %2 = load %struct.lua_State** %1, align 4, !dbg !677
  %3 = call i32 @lua_type(%struct.lua_State* %2, i32 1), !dbg !677
  store i32 %3, i32* %t, align 4, !dbg !677
  %4 = load i32* %t, align 4, !dbg !678
  %5 = icmp ne i32 %4, -1, !dbg !678
  br i1 %5, label %10, label %6, !dbg !678

; <label>:6                                       ; preds = %0
  %7 = load %struct.lua_State** %1, align 4, !dbg !679
  %8 = call i32 @luaL_argerror(%struct.lua_State* %7, i32 1, i8* getelementptr inbounds ([15 x i8]* @.str25, i32 0, i32 0)), !dbg !679
  %9 = icmp ne i32 %8, 0, !dbg !679
  br label %10, !dbg !679

; <label>:10                                      ; preds = %6, %0
  %11 = phi i1 [ true, %0 ], [ %9, %6 ]
  %12 = zext i1 %11 to i32, !dbg !681
  %13 = load %struct.lua_State** %1, align 4, !dbg !684
  %14 = load %struct.lua_State** %1, align 4, !dbg !685
  %15 = load i32* %t, align 4, !dbg !685
  %16 = call i8* @lua_typename(%struct.lua_State* %14, i32 %15), !dbg !685
  %17 = call i8* @lua_pushstring(%struct.lua_State* %13, i8* %16), !dbg !684
  ret i32 1, !dbg !686
}

; Function Attrs: nounwind
define internal i32 @luaB_xpcall(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %status = alloca i32, align 4
  %n = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !687), !dbg !688
  call void @llvm.dbg.declare(metadata !{i32* %status}, metadata !689), !dbg !690
  call void @llvm.dbg.declare(metadata !{i32* %n}, metadata !691), !dbg !692
  %2 = load %struct.lua_State** %1, align 4, !dbg !693
  %3 = call i32 @lua_gettop(%struct.lua_State* %2), !dbg !693
  store i32 %3, i32* %n, align 4, !dbg !693
  %4 = load %struct.lua_State** %1, align 4, !dbg !694
  call void @luaL_checktype(%struct.lua_State* %4, i32 2, i32 6), !dbg !694
  %5 = load %struct.lua_State** %1, align 4, !dbg !695
  call void @lua_pushboolean(%struct.lua_State* %5, i32 1), !dbg !695
  %6 = load %struct.lua_State** %1, align 4, !dbg !696
  call void @lua_pushvalue(%struct.lua_State* %6, i32 1), !dbg !696
  %7 = load %struct.lua_State** %1, align 4, !dbg !697
  call void @lua_rotate(%struct.lua_State* %7, i32 3, i32 2), !dbg !697
  %8 = load %struct.lua_State** %1, align 4, !dbg !698
  %9 = load i32* %n, align 4, !dbg !698
  %10 = sub nsw i32 %9, 2, !dbg !698
  %11 = call i32 @lua_pcallk(%struct.lua_State* %8, i32 %10, i32 -1, i32 2, i32 2, i32 (%struct.lua_State*, i32, i32)* @finishpcall), !dbg !698
  store i32 %11, i32* %status, align 4, !dbg !698
  %12 = load %struct.lua_State** %1, align 4, !dbg !699
  %13 = load i32* %status, align 4, !dbg !699
  %14 = call i32 @finishpcall(%struct.lua_State* %12, i32 %13, i32 2), !dbg !699
  ret i32 %14, !dbg !699
}

declare i32 @lua_gettop(%struct.lua_State*) #2

declare void @luaL_checktype(%struct.lua_State*, i32, i32) #2

declare void @lua_pushboolean(%struct.lua_State*, i32) #2

declare void @lua_rotate(%struct.lua_State*, i32, i32) #2

declare i32 @lua_pcallk(%struct.lua_State*, i32, i32, i32, i32, i32 (%struct.lua_State*, i32, i32)*) #2

; Function Attrs: nounwind
define internal i32 @finishpcall(%struct.lua_State* %L, i32 %status, i32 %extra) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.lua_State*, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %2}, metadata !700), !dbg !701
  store i32 %status, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !702), !dbg !703
  store i32 %extra, i32* %4, align 4
  call void @llvm.dbg.declare(metadata !{i32* %4}, metadata !704), !dbg !705
  %5 = load i32* %3, align 4, !dbg !706
  %6 = icmp ne i32 %5, 0, !dbg !706
  br i1 %6, label %7, label %13, !dbg !706

; <label>:7                                       ; preds = %0
  %8 = load i32* %3, align 4, !dbg !708
  %9 = icmp ne i32 %8, 1, !dbg !708
  br i1 %9, label %10, label %13, !dbg !708

; <label>:10                                      ; preds = %7
  %11 = load %struct.lua_State** %2, align 4, !dbg !710
  call void @lua_pushboolean(%struct.lua_State* %11, i32 0), !dbg !710
  %12 = load %struct.lua_State** %2, align 4, !dbg !712
  call void @lua_pushvalue(%struct.lua_State* %12, i32 -2), !dbg !712
  store i32 2, i32* %1, !dbg !713
  br label %18, !dbg !713

; <label>:13                                      ; preds = %7, %0
  %14 = load %struct.lua_State** %2, align 4, !dbg !714
  %15 = call i32 @lua_gettop(%struct.lua_State* %14), !dbg !714
  %16 = load i32* %4, align 4, !dbg !714
  %17 = sub nsw i32 %15, %16, !dbg !714
  store i32 %17, i32* %1, !dbg !714
  br label %18, !dbg !714

; <label>:18                                      ; preds = %13, %10
  %19 = load i32* %1, !dbg !715
  ret i32 %19, !dbg !715
}

declare i32 @lua_type(%struct.lua_State*, i32) #2

declare i32 @luaL_argerror(%struct.lua_State*, i32, i8*) #2

declare i8* @lua_typename(%struct.lua_State*, i32) #2

declare void @luaL_checkany(%struct.lua_State*, i32) #2

declare i8* @luaL_tolstring(%struct.lua_State*, i32, i32*) #2

declare void @lua_settop(%struct.lua_State*, i32) #2

declare i8* @lua_tolstring(%struct.lua_State*, i32, i32*) #2

declare i32 @lua_stringtonumber(%struct.lua_State*, i8*) #2

declare i64 @luaL_checkinteger(%struct.lua_State*, i32) #2

; Function Attrs: nounwind
define internal i8* @b_str2int(i8* %s, i32 %base, i64* %pn) #0 {
  %1 = alloca i8*, align 4
  %2 = alloca i8*, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 4
  %n = alloca i64, align 8
  %neg = alloca i32, align 4
  %digit = alloca i32, align 4
  store i8* %s, i8** %2, align 4
  call void @llvm.dbg.declare(metadata !{i8** %2}, metadata !716), !dbg !717
  store i32 %base, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !718), !dbg !719
  store i64* %pn, i64** %4, align 4
  call void @llvm.dbg.declare(metadata !{i64** %4}, metadata !720), !dbg !721
  call void @llvm.dbg.declare(metadata !{i64* %n}, metadata !722), !dbg !725
  store i64 0, i64* %n, align 8, !dbg !726
  call void @llvm.dbg.declare(metadata !{i32* %neg}, metadata !727), !dbg !728
  store i32 0, i32* %neg, align 4, !dbg !729
  %5 = load i8** %2, align 4, !dbg !730
  %6 = call i32 @strspn(i8* %5, i8* getelementptr inbounds ([7 x i8]* @.str27, i32 0, i32 0)) #5, !dbg !730
  %7 = load i8** %2, align 4, !dbg !730
  %8 = getelementptr inbounds i8* %7, i32 %6, !dbg !730
  store i8* %8, i8** %2, align 4, !dbg !730
  %9 = load i8** %2, align 4, !dbg !731
  %10 = load i8* %9, align 1, !dbg !731
  %11 = zext i8 %10 to i32, !dbg !731
  %12 = icmp eq i32 %11, 45, !dbg !731
  br i1 %12, label %13, label %16, !dbg !731

; <label>:13                                      ; preds = %0
  %14 = load i8** %2, align 4, !dbg !733
  %15 = getelementptr inbounds i8* %14, i32 1, !dbg !733
  store i8* %15, i8** %2, align 4, !dbg !733
  store i32 1, i32* %neg, align 4, !dbg !736
  br label %25, !dbg !737

; <label>:16                                      ; preds = %0
  %17 = load i8** %2, align 4, !dbg !738
  %18 = load i8* %17, align 1, !dbg !738
  %19 = zext i8 %18 to i32, !dbg !738
  %20 = icmp eq i32 %19, 43, !dbg !738
  br i1 %20, label %21, label %24, !dbg !738

; <label>:21                                      ; preds = %16
  %22 = load i8** %2, align 4, !dbg !740
  %23 = getelementptr inbounds i8* %22, i32 1, !dbg !740
  store i8* %23, i8** %2, align 4, !dbg !740
  br label %24, !dbg !740

; <label>:24                                      ; preds = %21, %16
  br label %25

; <label>:25                                      ; preds = %24, %13
  %26 = load i8** %2, align 4, !dbg !742
  %27 = load i8* %26, align 1, !dbg !742
  %28 = zext i8 %27 to i32, !dbg !742
  %29 = call i16** @__ctype_b_loc() #1, !dbg !744
  %30 = load i16** %29, align 4, !dbg !744
  %31 = getelementptr inbounds i16* %30, i32 %28, !dbg !744
  %32 = load i16* %31, align 2, !dbg !744
  %33 = zext i16 %32 to i32, !dbg !744
  %34 = and i32 %33, 8, !dbg !744
  %35 = icmp ne i32 %34, 0, !dbg !744
  br i1 %35, label %37, label %36, !dbg !744

; <label>:36                                      ; preds = %25
  store i8* null, i8** %1, !dbg !745
  br label %104, !dbg !745

; <label>:37                                      ; preds = %25
  br label %38, !dbg !746

; <label>:38                                      ; preds = %77, %37
  call void @llvm.dbg.declare(metadata !{i32* %digit}, metadata !747), !dbg !749
  %39 = load i8** %2, align 4, !dbg !750
  %40 = load i8* %39, align 1, !dbg !750
  %41 = zext i8 %40 to i32, !dbg !750
  %42 = call i16** @__ctype_b_loc() #1, !dbg !751
  %43 = load i16** %42, align 4, !dbg !751
  %44 = getelementptr inbounds i16* %43, i32 %41, !dbg !751
  %45 = load i16* %44, align 2, !dbg !751
  %46 = zext i16 %45 to i32, !dbg !751
  %47 = and i32 %46, 2048, !dbg !751
  %48 = icmp ne i32 %47, 0, !dbg !751
  br i1 %48, label %49, label %54, !dbg !751

; <label>:49                                      ; preds = %38
  %50 = load i8** %2, align 4, !dbg !752
  %51 = load i8* %50, align 1, !dbg !752
  %52 = zext i8 %51 to i32, !dbg !752
  %53 = sub nsw i32 %52, 48, !dbg !752
  br label %61, !dbg !752

; <label>:54                                      ; preds = %38
  %55 = load i8** %2, align 4, !dbg !754
  %56 = load i8* %55, align 1, !dbg !754
  %57 = zext i8 %56 to i32, !dbg !754
  %58 = call i32 @toupper(i32 %57) #6, !dbg !754
  %59 = sub nsw i32 %58, 65, !dbg !754
  %60 = add nsw i32 %59, 10, !dbg !754
  br label %61, !dbg !754

; <label>:61                                      ; preds = %54, %49
  %62 = phi i32 [ %53, %49 ], [ %60, %54 ], !dbg !754
  store i32 %62, i32* %digit, align 4, !dbg !755
  %63 = load i32* %digit, align 4, !dbg !757
  %64 = load i32* %3, align 4, !dbg !757
  %65 = icmp sge i32 %63, %64, !dbg !757
  br i1 %65, label %66, label %67, !dbg !757

; <label>:66                                      ; preds = %61
  store i8* null, i8** %1, !dbg !759
  br label %104, !dbg !759

; <label>:67                                      ; preds = %61
  %68 = load i64* %n, align 8, !dbg !761
  %69 = load i32* %3, align 4, !dbg !761
  %70 = sext i32 %69 to i64, !dbg !761
  %71 = mul i64 %68, %70, !dbg !761
  %72 = load i32* %digit, align 4, !dbg !761
  %73 = sext i32 %72 to i64, !dbg !761
  %74 = add i64 %71, %73, !dbg !761
  store i64 %74, i64* %n, align 8, !dbg !761
  %75 = load i8** %2, align 4, !dbg !762
  %76 = getelementptr inbounds i8* %75, i32 1, !dbg !762
  store i8* %76, i8** %2, align 4, !dbg !762
  br label %77, !dbg !763

; <label>:77                                      ; preds = %67
  %78 = load i8** %2, align 4, !dbg !764
  %79 = load i8* %78, align 1, !dbg !764
  %80 = zext i8 %79 to i32, !dbg !764
  %81 = call i16** @__ctype_b_loc() #1, !dbg !766
  %82 = load i16** %81, align 4, !dbg !766
  %83 = getelementptr inbounds i16* %82, i32 %80, !dbg !766
  %84 = load i16* %83, align 2, !dbg !766
  %85 = zext i16 %84 to i32, !dbg !766
  %86 = and i32 %85, 8, !dbg !766
  %87 = icmp ne i32 %86, 0, !dbg !766
  br i1 %87, label %38, label %88, !dbg !766

; <label>:88                                      ; preds = %77
  %89 = load i8** %2, align 4, !dbg !767
  %90 = call i32 @strspn(i8* %89, i8* getelementptr inbounds ([7 x i8]* @.str27, i32 0, i32 0)) #5, !dbg !767
  %91 = load i8** %2, align 4, !dbg !767
  %92 = getelementptr inbounds i8* %91, i32 %90, !dbg !767
  store i8* %92, i8** %2, align 4, !dbg !767
  %93 = load i32* %neg, align 4, !dbg !768
  %94 = icmp ne i32 %93, 0, !dbg !768
  br i1 %94, label %95, label %98, !dbg !768

; <label>:95                                      ; preds = %88
  %96 = load i64* %n, align 8, !dbg !769
  %97 = sub i64 0, %96, !dbg !769
  br label %100, !dbg !769

; <label>:98                                      ; preds = %88
  %99 = load i64* %n, align 8, !dbg !771
  br label %100, !dbg !771

; <label>:100                                     ; preds = %98, %95
  %101 = phi i64 [ %97, %95 ], [ %99, %98 ], !dbg !768
  %102 = load i64** %4, align 4, !dbg !773
  store i64 %101, i64* %102, align 8, !dbg !773
  %103 = load i8** %2, align 4, !dbg !776
  store i8* %103, i8** %1, !dbg !776
  br label %104, !dbg !776

; <label>:104                                     ; preds = %100, %66, %36
  %105 = load i8** %1, !dbg !777
  ret i8* %105, !dbg !777
}

declare void @lua_pushinteger(%struct.lua_State*, i64) #2

declare void @lua_pushnil(%struct.lua_State*) #2

; Function Attrs: nounwind readonly
declare i32 @strspn(i8*, i8*) #3

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #4

; Function Attrs: nounwind
declare i32 @toupper(i32) #0

declare i32 @luaL_getmetafield(%struct.lua_State*, i32, i8*) #2

declare i32 @luaL_error(%struct.lua_State*, i8*, ...) #2

declare i32 @lua_setmetatable(%struct.lua_State*, i32) #2

declare void @lua_rawset(%struct.lua_State*, i32) #2

declare i32 @lua_rawget(%struct.lua_State*, i32) #2

declare i32 @lua_rawlen(%struct.lua_State*, i32) #2

declare i32 @lua_rawequal(%struct.lua_State*, i32, i32) #2

declare i32 @lua_getglobal(%struct.lua_State*, i8*) #2

declare void @lua_callk(%struct.lua_State*, i32, i32, i32, i32 (%struct.lua_State*, i32, i32)*) #2

declare i32 @fwrite(i8*, i32, i32, %struct._IO_FILE*) #2

declare i32 @fflush(%struct._IO_FILE*) #2

; Function Attrs: nounwind
define internal i32 @pairsmeta(%struct.lua_State* %L, i8* %method, i32 %iszero, i32 (%struct.lua_State*)* %iter) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca i8*, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32 (%struct.lua_State*)*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !778), !dbg !779
  store i8* %method, i8** %2, align 4
  call void @llvm.dbg.declare(metadata !{i8** %2}, metadata !780), !dbg !781
  store i32 %iszero, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !782), !dbg !783
  store i32 (%struct.lua_State*)* %iter, i32 (%struct.lua_State*)** %4, align 4
  call void @llvm.dbg.declare(metadata !{i32 (%struct.lua_State*)** %4}, metadata !784), !dbg !785
  %5 = load %struct.lua_State** %1, align 4, !dbg !786
  %6 = load i8** %2, align 4, !dbg !786
  %7 = call i32 @luaL_getmetafield(%struct.lua_State* %5, i32 1, i8* %6), !dbg !786
  %8 = icmp eq i32 %7, 0, !dbg !786
  br i1 %8, label %9, label %21, !dbg !786

; <label>:9                                       ; preds = %0
  %10 = load %struct.lua_State** %1, align 4, !dbg !788
  call void @luaL_checktype(%struct.lua_State* %10, i32 1, i32 5), !dbg !788
  %11 = load %struct.lua_State** %1, align 4, !dbg !790
  %12 = load i32 (%struct.lua_State*)** %4, align 4, !dbg !790
  call void @lua_pushcclosure(%struct.lua_State* %11, i32 (%struct.lua_State*)* %12, i32 0), !dbg !790
  %13 = load %struct.lua_State** %1, align 4, !dbg !791
  call void @lua_pushvalue(%struct.lua_State* %13, i32 1), !dbg !791
  %14 = load i32* %3, align 4, !dbg !792
  %15 = icmp ne i32 %14, 0, !dbg !792
  br i1 %15, label %16, label %18, !dbg !792

; <label>:16                                      ; preds = %9
  %17 = load %struct.lua_State** %1, align 4, !dbg !794
  call void @lua_pushinteger(%struct.lua_State* %17, i64 0), !dbg !794
  br label %20, !dbg !794

; <label>:18                                      ; preds = %9
  %19 = load %struct.lua_State** %1, align 4, !dbg !796
  call void @lua_pushnil(%struct.lua_State* %19), !dbg !796
  br label %20

; <label>:20                                      ; preds = %18, %16
  br label %24, !dbg !797

; <label>:21                                      ; preds = %0
  %22 = load %struct.lua_State** %1, align 4, !dbg !798
  call void @lua_pushvalue(%struct.lua_State* %22, i32 1), !dbg !798
  %23 = load %struct.lua_State** %1, align 4, !dbg !800
  call void @lua_callk(%struct.lua_State* %23, i32 1, i32 3, i32 0, i32 (%struct.lua_State*, i32, i32)* null), !dbg !800
  br label %24

; <label>:24                                      ; preds = %21, %20
  ret i32 3, !dbg !801
}

declare void @lua_pushcclosure(%struct.lua_State*, i32 (%struct.lua_State*)*, i32) #2

declare i32 @lua_next(%struct.lua_State*, i32) #2

declare i8* @luaL_optlstring(%struct.lua_State*, i32, i8*, i32*) #2

declare i32 @luaL_loadbufferx(%struct.lua_State*, i8*, i32, i8*, i8*) #2

declare i32 @lua_load(%struct.lua_State*, i8* (%struct.lua_State*, i8*, i32*)*, i8*, i8*, i8*) #2

; Function Attrs: nounwind
define internal i8* @generic_reader(%struct.lua_State* %L, i8* %ud, i32* %size) #0 {
  %1 = alloca i8*, align 4
  %2 = alloca %struct.lua_State*, align 4
  %3 = alloca i8*, align 4
  %4 = alloca i32*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %2}, metadata !802), !dbg !803
  store i8* %ud, i8** %3, align 4
  call void @llvm.dbg.declare(metadata !{i8** %3}, metadata !804), !dbg !805
  store i32* %size, i32** %4, align 4
  call void @llvm.dbg.declare(metadata !{i32** %4}, metadata !806), !dbg !807
  %5 = load i8** %3, align 4, !dbg !808
  %6 = load %struct.lua_State** %2, align 4, !dbg !809
  call void @luaL_checkstack(%struct.lua_State* %6, i32 2, i8* getelementptr inbounds ([26 x i8]* @.str39, i32 0, i32 0)), !dbg !809
  %7 = load %struct.lua_State** %2, align 4, !dbg !810
  call void @lua_pushvalue(%struct.lua_State* %7, i32 1), !dbg !810
  %8 = load %struct.lua_State** %2, align 4, !dbg !811
  call void @lua_callk(%struct.lua_State* %8, i32 0, i32 1, i32 0, i32 (%struct.lua_State*, i32, i32)* null), !dbg !811
  %9 = load %struct.lua_State** %2, align 4, !dbg !812
  %10 = call i32 @lua_type(%struct.lua_State* %9, i32 -1), !dbg !812
  %11 = icmp eq i32 %10, 0, !dbg !812
  br i1 %11, label %12, label %15, !dbg !812

; <label>:12                                      ; preds = %0
  %13 = load %struct.lua_State** %2, align 4, !dbg !814
  call void @lua_settop(%struct.lua_State* %13, i32 -2), !dbg !814
  %14 = load i32** %4, align 4, !dbg !816
  store i32 0, i32* %14, align 4, !dbg !816
  store i8* null, i8** %1, !dbg !817
  br label %29, !dbg !817

; <label>:15                                      ; preds = %0
  %16 = load %struct.lua_State** %2, align 4, !dbg !818
  %17 = call i32 @lua_isstring(%struct.lua_State* %16, i32 -1), !dbg !818
  %18 = icmp ne i32 %17, 0, !dbg !818
  br i1 %18, label %22, label %19, !dbg !818

; <label>:19                                      ; preds = %15
  %20 = load %struct.lua_State** %2, align 4, !dbg !820
  %21 = call i32 (%struct.lua_State*, i8*, ...)* @luaL_error(%struct.lua_State* %20, i8* getelementptr inbounds ([37 x i8]* @.str40, i32 0, i32 0)), !dbg !820
  br label %22, !dbg !820

; <label>:22                                      ; preds = %19, %15
  br label %23

; <label>:23                                      ; preds = %22
  %24 = load %struct.lua_State** %2, align 4, !dbg !821
  call void @lua_copy(%struct.lua_State* %24, i32 -1, i32 5), !dbg !821
  %25 = load %struct.lua_State** %2, align 4, !dbg !821
  call void @lua_settop(%struct.lua_State* %25, i32 -2), !dbg !821
  %26 = load %struct.lua_State** %2, align 4, !dbg !822
  %27 = load i32** %4, align 4, !dbg !822
  %28 = call i8* @lua_tolstring(%struct.lua_State* %26, i32 5, i32* %27), !dbg !822
  store i8* %28, i8** %1, !dbg !822
  br label %29, !dbg !822

; <label>:29                                      ; preds = %23, %12
  %30 = load i8** %1, !dbg !823
  ret i8* %30, !dbg !823
}

; Function Attrs: nounwind
define internal i32 @load_aux(%struct.lua_State* %L, i32 %status, i32 %envidx) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.lua_State*, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %2}, metadata !824), !dbg !825
  store i32 %status, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !826), !dbg !827
  store i32 %envidx, i32* %4, align 4
  call void @llvm.dbg.declare(metadata !{i32* %4}, metadata !828), !dbg !829
  %5 = load i32* %3, align 4, !dbg !830
  %6 = icmp eq i32 %5, 0, !dbg !830
  br i1 %6, label %7, label %20, !dbg !830

; <label>:7                                       ; preds = %0
  %8 = load i32* %4, align 4, !dbg !832
  %9 = icmp ne i32 %8, 0, !dbg !832
  br i1 %9, label %10, label %19, !dbg !832

; <label>:10                                      ; preds = %7
  %11 = load %struct.lua_State** %2, align 4, !dbg !835
  %12 = load i32* %4, align 4, !dbg !835
  call void @lua_pushvalue(%struct.lua_State* %11, i32 %12), !dbg !835
  %13 = load %struct.lua_State** %2, align 4, !dbg !837
  %14 = call i8* @lua_setupvalue(%struct.lua_State* %13, i32 -2, i32 1), !dbg !837
  %15 = icmp ne i8* %14, null, !dbg !837
  br i1 %15, label %18, label %16, !dbg !837

; <label>:16                                      ; preds = %10
  %17 = load %struct.lua_State** %2, align 4, !dbg !839
  call void @lua_settop(%struct.lua_State* %17, i32 -2), !dbg !839
  br label %18, !dbg !839

; <label>:18                                      ; preds = %16, %10
  br label %19, !dbg !840

; <label>:19                                      ; preds = %18, %7
  store i32 1, i32* %1, !dbg !841
  br label %23, !dbg !841

; <label>:20                                      ; preds = %0
  %21 = load %struct.lua_State** %2, align 4, !dbg !842
  call void @lua_pushnil(%struct.lua_State* %21), !dbg !842
  %22 = load %struct.lua_State** %2, align 4, !dbg !844
  call void @lua_rotate(%struct.lua_State* %22, i32 -2, i32 1), !dbg !844
  store i32 2, i32* %1, !dbg !845
  br label %23, !dbg !845

; <label>:23                                      ; preds = %20, %19
  %24 = load i32* %1, !dbg !846
  ret i32 %24, !dbg !846
}

declare i8* @lua_setupvalue(%struct.lua_State*, i32, i32) #2

declare void @luaL_checkstack(%struct.lua_State*, i32, i8*) #2

declare i32 @lua_isstring(%struct.lua_State*, i32) #2

declare void @lua_copy(%struct.lua_State*, i32, i32) #2

declare i32 @luaL_loadfilex(%struct.lua_State*, i8*, i8*) #2

; Function Attrs: nounwind
define internal i32 @ipairsaux(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %i = alloca i64, align 8
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !847), !dbg !848
  call void @llvm.dbg.declare(metadata !{i64* %i}, metadata !849), !dbg !850
  %2 = load %struct.lua_State** %1, align 4, !dbg !851
  %3 = call i64 @luaL_checkinteger(%struct.lua_State* %2, i32 2), !dbg !851
  %4 = add nsw i64 %3, 1, !dbg !851
  store i64 %4, i64* %i, align 8, !dbg !851
  %5 = load %struct.lua_State** %1, align 4, !dbg !852
  %6 = load i64* %i, align 8, !dbg !852
  call void @lua_pushinteger(%struct.lua_State* %5, i64 %6), !dbg !852
  %7 = load %struct.lua_State** %1, align 4, !dbg !853
  %8 = load i64* %i, align 8, !dbg !853
  %9 = call i32 @lua_geti(%struct.lua_State* %7, i32 1, i64 %8), !dbg !853
  %10 = icmp eq i32 %9, 0, !dbg !853
  %11 = select i1 %10, i32 1, i32 2, !dbg !853
  ret i32 %11, !dbg !853
}

declare i32 @lua_geti(%struct.lua_State*, i32, i64) #2

declare i32 @lua_getmetatable(%struct.lua_State*, i32) #2

declare i64 @luaL_optinteger(%struct.lua_State*, i32, i64) #2

declare void @luaL_where(%struct.lua_State*, i32) #2

declare void @lua_concat(%struct.lua_State*, i32) #2

declare i32 @lua_error(%struct.lua_State*) #2

; Function Attrs: nounwind
define internal i32 @dofilecont(%struct.lua_State* %L, i32 %d1, i32 %d2) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !854), !dbg !855
  store i32 %d1, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !856), !dbg !857
  store i32 %d2, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !858), !dbg !859
  %4 = load i32* %2, align 4, !dbg !860
  %5 = load i32* %3, align 4, !dbg !861
  %6 = load %struct.lua_State** %1, align 4, !dbg !862
  %7 = call i32 @lua_gettop(%struct.lua_State* %6), !dbg !862
  %8 = sub nsw i32 %7, 1, !dbg !862
  ret i32 %8, !dbg !862
}

declare i32 @luaL_checkoption(%struct.lua_State*, i32, i8*, i8**) #2

declare i32 @lua_gc(%struct.lua_State*, i32, i32) #2

declare void @lua_pushnumber(%struct.lua_State*, double) #2

declare i32 @lua_toboolean(%struct.lua_State*, i32) #2

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!0}
!xidane.fname = !{!107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276}
!xidane.function_declaration_type = !{!107, !277, !109, !278, !111, !279, !113, !280, !115, !281, !117, !282, !119, !277, !121, !277, !123, !277, !125, !277, !127, !277, !129, !277, !131, !277, !133, !277, !135, !277, !137, !277, !139, !277, !141, !277, !143, !277, !145, !277, !147, !277, !149, !277, !151, !277, !153, !277, !155, !277, !157, !277, !159, !277, !161, !277, !163, !277, !165, !283, !167, !280, !169, !283, !171, !284, !173, !285, !175, !286, !177, !287, !179, !288, !181, !280, !183, !289, !185, !280, !187, !289, !189, !290, !191, !291, !193, !292, !195, !293, !197, !294, !199, !295, !201, !296, !203, !297, !205, !287, !207, !298, !209, !286, !211, !280, !213, !286, !215, !299, !217, !300, !219, !298, !221, !301, !223, !302, !225, !303, !227, !304, !229, !305, !231, !286, !233, !306, !235, !307, !237, !308, !239, !309, !241, !300, !243, !310, !245, !281, !247, !286, !249, !283, !251, !311, !253, !277, !255, !278, !257, !286, !259, !312, !261, !280, !263, !280, !265, !277, !267, !285, !269, !313, !271, !300, !273, !314, !275, !286}
!xidane.function_declaration_filename = !{!107, !315, !109, !316, !111, !317, !113, !316, !115, !316, !117, !316, !119, !318, !121, !318, !123, !318, !125, !318, !127, !318, !129, !318, !131, !318, !133, !318, !135, !318, !137, !318, !139, !318, !141, !318, !143, !318, !145, !318, !147, !318, !149, !318, !151, !318, !153, !318, !155, !318, !157, !318, !159, !318, !161, !318, !163, !316, !165, !317, !167, !316, !169, !316, !171, !316, !173, !318, !175, !316, !177, !317, !179, !316, !181, !317, !183, !317, !185, !316, !187, !316, !189, !316, !191, !317, !193, !318, !195, !316, !197, !316, !199, !319, !201, !320, !203, !320, !205, !317, !207, !317, !209, !316, !211, !316, !213, !316, !215, !316, !217, !316, !219, !316, !221, !316, !223, !321, !225, !321, !227, !318, !229, !316, !231, !316, !233, !317, !235, !317, !237, !316, !239, !318, !241, !318, !243, !316, !245, !317, !247, !316, !249, !316, !251, !317, !253, !318, !255, !316, !257, !316, !259, !317, !261, !317, !263, !316, !265, !316, !267, !318, !269, !317, !271, !316, !273, !316, !275, !316}
!xidane.ExternC = !{!107, !109, !111, !113, !115, !117, !163, !165, !167, !169, !171, !175, !177, !179, !181, !183, !185, !187, !189, !191, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !229, !231, !233, !235, !237, !243, !245, !247, !249, !251, !255, !257, !259, !261, !263, !265, !269, !271, !273, !275}
!llvm.module.flags = !{!322, !323, !324, !325}
!llvm.ident = !{!326}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.0 (tags/RELEASE_350/final)", i1 false, metadata !"", i32 0, metadata !2, metadata !18, metadata !19, metadata !85, metadata !18, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src\lbaselib.c] [DW_LANG_C99]
!1 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src\5Clbaselib.c", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!2 = metadata !{metadata !3}
!3 = metadata !{i32 786436, metadata !4, null, metadata !"", i32 46, i64 32, i64 32, i32 0, i32 0, null, metadata !5, i32 0, null, null, null} ; [ DW_TAG_enumeration_type ] [line 46, size 32, align 32, offset 0] [def] [from ]
!4 = metadata !{metadata !"D:/Xilinx/SDx/2016.3/SDK/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include\5Cctype.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!5 = metadata !{metadata !6, metadata !7, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !13, metadata !14, metadata !15, metadata !16, metadata !17}
!6 = metadata !{i32 786472, metadata !"_ISupper", i64 256} ; [ DW_TAG_enumerator ] [_ISupper :: 256]
!7 = metadata !{i32 786472, metadata !"_ISlower", i64 512} ; [ DW_TAG_enumerator ] [_ISlower :: 512]
!8 = metadata !{i32 786472, metadata !"_ISalpha", i64 1024} ; [ DW_TAG_enumerator ] [_ISalpha :: 1024]
!9 = metadata !{i32 786472, metadata !"_ISdigit", i64 2048} ; [ DW_TAG_enumerator ] [_ISdigit :: 2048]
!10 = metadata !{i32 786472, metadata !"_ISxdigit", i64 4096} ; [ DW_TAG_enumerator ] [_ISxdigit :: 4096]
!11 = metadata !{i32 786472, metadata !"_ISspace", i64 8192} ; [ DW_TAG_enumerator ] [_ISspace :: 8192]
!12 = metadata !{i32 786472, metadata !"_ISprint", i64 16384} ; [ DW_TAG_enumerator ] [_ISprint :: 16384]
!13 = metadata !{i32 786472, metadata !"_ISgraph", i64 32768} ; [ DW_TAG_enumerator ] [_ISgraph :: 32768]
!14 = metadata !{i32 786472, metadata !"_ISblank", i64 1} ; [ DW_TAG_enumerator ] [_ISblank :: 1]
!15 = metadata !{i32 786472, metadata !"_IScntrl", i64 2} ; [ DW_TAG_enumerator ] [_IScntrl :: 2]
!16 = metadata !{i32 786472, metadata !"_ISpunct", i64 4} ; [ DW_TAG_enumerator ] [_ISpunct :: 4]
!17 = metadata !{i32 786472, metadata !"_ISalnum", i64 8} ; [ DW_TAG_enumerator ] [_ISalnum :: 8]
!18 = metadata !{}
!19 = metadata !{metadata !20, metadata !30, metadata !31, metadata !37, metadata !38, metadata !39, metadata !40, metadata !49, metadata !50, metadata !51, metadata !52, metadata !53, metadata !54, metadata !55, metadata !56, metadata !57, metadata !58, metadata !63, metadata !64, metadata !65, metadata !68, metadata !76, metadata !77, metadata !78, metadata !79, metadata !80, metadata !81, metadata !82, metadata !83, metadata !84}
!20 = metadata !{i32 786478, metadata !21, metadata !22, metadata !"luaopen_base", metadata !"luaopen_base", metadata !"", i32 486, metadata !23, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @luaopen_base, null, null, metadata !18, i32 486} ; [ DW_TAG_subprogram ] [line 486] [def] [luaopen_base]
!21 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lbaselib.c", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!22 = metadata !{i32 786473, metadata !21}        ; [ DW_TAG_file_type ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lbaselib.c]
!23 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !24, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!24 = metadata !{metadata !25, metadata !26}
!25 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!26 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !27} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from lua_State]
!27 = metadata !{i32 786454, metadata !28, null, metadata !"lua_State", i32 56, i64 0, i64 0, i64 0, i32 0, metadata !29} ; [ DW_TAG_typedef ] [lua_State] [line 56, size 0, align 0, offset 0] [from lua_State]
!28 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lua.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!29 = metadata !{i32 786451, metadata !28, null, metadata !"lua_State", i32 56, i64 0, i64 0, i32 0, i32 4, null, null, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [lua_State] [line 56, size 0, align 0, offset 0] [decl] [from ]
!30 = metadata !{i32 786478, metadata !21, metadata !22, metadata !"luaB_xpcall", metadata !"luaB_xpcall", metadata !"", i32 434, metadata !23, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @luaB_xpcall, null, null, metadata !18, i32 434} ; [ DW_TAG_subprogram ] [line 434] [local] [def] [luaB_xpcall]
!31 = metadata !{i32 786478, metadata !21, metadata !22, metadata !"finishpcall", metadata !"finishpcall", metadata !"", i32 408, metadata !32, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*, i32, i32)* @finishpcall, null, null, metadata !18, i32 408} ; [ DW_TAG_subprogram ] [line 408] [local] [def] [finishpcall]
!32 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !33, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!33 = metadata !{metadata !25, metadata !26, metadata !25, metadata !34}
!34 = metadata !{i32 786454, metadata !28, null, metadata !"lua_KContext", i32 99, i64 0, i64 0, i64 0, i32 0, metadata !35} ; [ DW_TAG_typedef ] [lua_KContext] [line 99, size 0, align 0, offset 0] [from intptr_t]
!35 = metadata !{i32 786454, metadata !36, null, metadata !"intptr_t", i32 125, i64 0, i64 0, i64 0, i32 0, metadata !25} ; [ DW_TAG_typedef ] [intptr_t] [line 125, size 0, align 0, offset 0] [from int]
!36 = metadata !{metadata !"D:/Xilinx/SDx/2016.3/SDK/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include\5Cstdint.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!37 = metadata !{i32 786478, metadata !21, metadata !22, metadata !"luaB_type", metadata !"luaB_type", metadata !"", i32 201, metadata !23, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @luaB_type, null, null, metadata !18, i32 201} ; [ DW_TAG_subprogram ] [line 201] [local] [def] [luaB_type]
!38 = metadata !{i32 786478, metadata !21, metadata !22, metadata !"luaB_tostring", metadata !"luaB_tostring", metadata !"", i32 446, metadata !23, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @luaB_tostring, null, null, metadata !18, i32 446} ; [ DW_TAG_subprogram ] [line 446] [local] [def] [luaB_tostring]
!39 = metadata !{i32 786478, metadata !21, metadata !22, metadata !"luaB_tonumber", metadata !"luaB_tonumber", metadata !"", i32 69, metadata !23, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @luaB_tonumber, null, null, metadata !18, i32 69} ; [ DW_TAG_subprogram ] [line 69] [local] [def] [luaB_tonumber]
!40 = metadata !{i32 786478, metadata !21, metadata !22, metadata !"b_str2int", metadata !"b_str2int", metadata !"", i32 48, metadata !41, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (i8*, i32, i64*)* @b_str2int, null, null, metadata !18, i32 48} ; [ DW_TAG_subprogram ] [line 48] [local] [def] [b_str2int]
!41 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !42, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!42 = metadata !{metadata !43, metadata !43, metadata !25, metadata !46}
!43 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !44} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!44 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !45} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!45 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!46 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !47} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from lua_Integer]
!47 = metadata !{i32 786454, metadata !28, null, metadata !"lua_Integer", i32 93, i64 0, i64 0, i64 0, i32 0, metadata !48} ; [ DW_TAG_typedef ] [lua_Integer] [line 93, size 0, align 0, offset 0] [from long long int]
!48 = metadata !{i32 786468, null, null, metadata !"long long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!49 = metadata !{i32 786478, metadata !21, metadata !22, metadata !"luaB_setmetatable", metadata !"luaB_setmetatable", metadata !"", i32 125, metadata !23, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @luaB_setmetatable, null, null, metadata !18, i32 125} ; [ DW_TAG_subprogram ] [line 125] [local] [def] [luaB_setmetatable]
!50 = metadata !{i32 786478, metadata !21, metadata !22, metadata !"luaB_select", metadata !"luaB_select", metadata !"", i32 385, metadata !23, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @luaB_select, null, null, metadata !18, i32 385} ; [ DW_TAG_subprogram ] [line 385] [local] [def] [luaB_select]
!51 = metadata !{i32 786478, metadata !21, metadata !22, metadata !"luaB_rawset", metadata !"luaB_rawset", metadata !"", i32 163, metadata !23, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @luaB_rawset, null, null, metadata !18, i32 163} ; [ DW_TAG_subprogram ] [line 163] [local] [def] [luaB_rawset]
!52 = metadata !{i32 786478, metadata !21, metadata !22, metadata !"luaB_rawget", metadata !"luaB_rawget", metadata !"", i32 155, metadata !23, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @luaB_rawget, null, null, metadata !18, i32 155} ; [ DW_TAG_subprogram ] [line 155] [local] [def] [luaB_rawget]
!53 = metadata !{i32 786478, metadata !21, metadata !22, metadata !"luaB_rawlen", metadata !"luaB_rawlen", metadata !"", i32 146, metadata !23, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @luaB_rawlen, null, null, metadata !18, i32 146} ; [ DW_TAG_subprogram ] [line 146] [local] [def] [luaB_rawlen]
!54 = metadata !{i32 786478, metadata !21, metadata !22, metadata !"luaB_rawequal", metadata !"luaB_rawequal", metadata !"", i32 138, metadata !23, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @luaB_rawequal, null, null, metadata !18, i32 138} ; [ DW_TAG_subprogram ] [line 138] [local] [def] [luaB_rawequal]
!55 = metadata !{i32 786478, metadata !21, metadata !22, metadata !"luaB_print", metadata !"luaB_print", metadata !"", i32 24, metadata !23, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @luaB_print, null, null, metadata !18, i32 24} ; [ DW_TAG_subprogram ] [line 24] [local] [def] [luaB_print]
!56 = metadata !{i32 786478, metadata !21, metadata !22, metadata !"luaB_pcall", metadata !"luaB_pcall", metadata !"", i32 419, metadata !23, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @luaB_pcall, null, null, metadata !18, i32 419} ; [ DW_TAG_subprogram ] [line 419] [local] [def] [luaB_pcall]
!57 = metadata !{i32 786478, metadata !21, metadata !22, metadata !"luaB_pairs", metadata !"luaB_pairs", metadata !"", i32 238, metadata !23, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @luaB_pairs, null, null, metadata !18, i32 238} ; [ DW_TAG_subprogram ] [line 238] [local] [def] [luaB_pairs]
!58 = metadata !{i32 786478, metadata !21, metadata !22, metadata !"pairsmeta", metadata !"pairsmeta", metadata !"", i32 209, metadata !59, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*, i8*, i32, i32 (%struct.lua_State*)*)* @pairsmeta, null, null, metadata !18, i32 210} ; [ DW_TAG_subprogram ] [line 209] [local] [def] [scope 210] [pairsmeta]
!59 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !60, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!60 = metadata !{metadata !25, metadata !26, metadata !43, metadata !25, metadata !61}
!61 = metadata !{i32 786454, metadata !28, null, metadata !"lua_CFunction", i32 105, i64 0, i64 0, i64 0, i32 0, metadata !62} ; [ DW_TAG_typedef ] [lua_CFunction] [line 105, size 0, align 0, offset 0] [from ]
!62 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !23} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!63 = metadata !{i32 786478, metadata !21, metadata !22, metadata !"luaB_next", metadata !"luaB_next", metadata !"", i32 226, metadata !23, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @luaB_next, null, null, metadata !18, i32 226} ; [ DW_TAG_subprogram ] [line 226] [local] [def] [luaB_next]
!64 = metadata !{i32 786478, metadata !21, metadata !22, metadata !"luaB_load", metadata !"luaB_load", metadata !"", i32 334, metadata !23, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @luaB_load, null, null, metadata !18, i32 334} ; [ DW_TAG_subprogram ] [line 334] [local] [def] [luaB_load]
!65 = metadata !{i32 786478, metadata !21, metadata !22, metadata !"load_aux", metadata !"load_aux", metadata !"", i32 270, metadata !66, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*, i32, i32)* @load_aux, null, null, metadata !18, i32 270} ; [ DW_TAG_subprogram ] [line 270] [local] [def] [load_aux]
!66 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !67, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!67 = metadata !{metadata !25, metadata !26, metadata !25, metadata !25}
!68 = metadata !{i32 786478, metadata !21, metadata !22, metadata !"generic_reader", metadata !"generic_reader", metadata !"", i32 317, metadata !69, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (%struct.lua_State*, i8*, i32*)* @generic_reader, null, null, metadata !18, i32 317} ; [ DW_TAG_subprogram ] [line 317] [local] [def] [generic_reader]
!69 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !70, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!70 = metadata !{metadata !43, metadata !26, metadata !71, metadata !72}
!71 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!72 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !73} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from size_t]
!73 = metadata !{i32 786454, metadata !74, null, metadata !"size_t", i32 216, i64 0, i64 0, i64 0, i32 0, metadata !75} ; [ DW_TAG_typedef ] [size_t] [line 216, size 0, align 0, offset 0] [from unsigned int]
!74 = metadata !{metadata !"D:/Xilinx/SDx/2016.3/SDK/gnu/aarch32/nt/gcc-arm-linux-gnueabi/lib/gcc/arm-linux-gnueabihf/5.2.1/include\5Cstddef.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!75 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!76 = metadata !{i32 786478, metadata !21, metadata !22, metadata !"luaB_loadfile", metadata !"luaB_loadfile", metadata !"", i32 287, metadata !23, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @luaB_loadfile, null, null, metadata !18, i32 287} ; [ DW_TAG_subprogram ] [line 287] [local] [def] [luaB_loadfile]
!77 = metadata !{i32 786478, metadata !21, metadata !22, metadata !"luaB_ipairs", metadata !"luaB_ipairs", metadata !"", i32 257, metadata !23, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @luaB_ipairs, null, null, metadata !18, i32 257} ; [ DW_TAG_subprogram ] [line 257] [local] [def] [luaB_ipairs]
!78 = metadata !{i32 786478, metadata !21, metadata !22, metadata !"ipairsaux", metadata !"ipairsaux", metadata !"", i32 246, metadata !23, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @ipairsaux, null, null, metadata !18, i32 246} ; [ DW_TAG_subprogram ] [line 246] [local] [def] [ipairsaux]
!79 = metadata !{i32 786478, metadata !21, metadata !22, metadata !"luaB_getmetatable", metadata !"luaB_getmetatable", metadata !"", i32 114, metadata !23, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @luaB_getmetatable, null, null, metadata !18, i32 114} ; [ DW_TAG_subprogram ] [line 114] [local] [def] [luaB_getmetatable]
!80 = metadata !{i32 786478, metadata !21, metadata !22, metadata !"luaB_error", metadata !"luaB_error", metadata !"", i32 102, metadata !23, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @luaB_error, null, null, metadata !18, i32 102} ; [ DW_TAG_subprogram ] [line 102] [local] [def] [luaB_error]
!81 = metadata !{i32 786478, metadata !21, metadata !22, metadata !"luaB_dofile", metadata !"luaB_dofile", metadata !"", i32 362, metadata !23, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @luaB_dofile, null, null, metadata !18, i32 362} ; [ DW_TAG_subprogram ] [line 362] [local] [def] [luaB_dofile]
!82 = metadata !{i32 786478, metadata !21, metadata !22, metadata !"dofilecont", metadata !"dofilecont", metadata !"", i32 356, metadata !32, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*, i32, i32)* @dofilecont, null, null, metadata !18, i32 356} ; [ DW_TAG_subprogram ] [line 356] [local] [def] [dofilecont]
!83 = metadata !{i32 786478, metadata !21, metadata !22, metadata !"luaB_collectgarbage", metadata !"luaB_collectgarbage", metadata !"", i32 173, metadata !23, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @luaB_collectgarbage, null, null, metadata !18, i32 173} ; [ DW_TAG_subprogram ] [line 173] [local] [def] [luaB_collectgarbage]
!84 = metadata !{i32 786478, metadata !21, metadata !22, metadata !"luaB_assert", metadata !"luaB_assert", metadata !"", i32 372, metadata !23, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @luaB_assert, null, null, metadata !18, i32 372} ; [ DW_TAG_subprogram ] [line 372] [local] [def] [luaB_assert]
!85 = metadata !{metadata !86, metadata !97, metadata !102}
!86 = metadata !{i32 786484, i32 0, null, metadata !"base_funcs", metadata !"base_funcs", metadata !"", metadata !22, i32 453, metadata !87, i32 1, i32 1, [25 x %struct.luaL_Reg]* @base_funcs, null} ; [ DW_TAG_variable ] [base_funcs] [line 453] [local] [def]
!87 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1600, i64 32, i32 0, i32 0, metadata !88, metadata !95, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 1600, align 32, offset 0] [from ]
!88 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !89} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from luaL_Reg]
!89 = metadata !{i32 786454, metadata !90, null, metadata !"luaL_Reg", i32 26, i64 0, i64 0, i64 0, i32 0, metadata !91} ; [ DW_TAG_typedef ] [luaL_Reg] [line 26, size 0, align 0, offset 0] [from luaL_Reg]
!90 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lauxlib.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!91 = metadata !{i32 786451, metadata !90, null, metadata !"luaL_Reg", i32 23, i64 64, i64 32, i32 0, i32 0, null, metadata !92, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [luaL_Reg] [line 23, size 64, align 32, offset 0] [def] [from ]
!92 = metadata !{metadata !93, metadata !94}
!93 = metadata !{i32 786445, metadata !90, metadata !91, metadata !"name", i32 24, i64 32, i64 32, i64 0, i32 0, metadata !43} ; [ DW_TAG_member ] [name] [line 24, size 32, align 32, offset 0] [from ]
!94 = metadata !{i32 786445, metadata !90, metadata !91, metadata !"func", i32 25, i64 32, i64 32, i64 32, i32 0, metadata !61} ; [ DW_TAG_member ] [func] [line 25, size 32, align 32, offset 32] [from lua_CFunction]
!95 = metadata !{metadata !96}
!96 = metadata !{i32 786465, i64 0, i64 25}       ; [ DW_TAG_subrange_type ] [0, 24]
!97 = metadata !{i32 786484, i32 0, metadata !83, metadata !"opts", metadata !"opts", metadata !"", metadata !22, i32 174, metadata !98, i32 1, i32 1, [9 x i8*]* @luaB_collectgarbage.opts, null} ; [ DW_TAG_variable ] [opts] [line 174] [local] [def]
!98 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 288, i64 32, i32 0, i32 0, metadata !99, metadata !100, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 288, align 32, offset 0] [from ]
!99 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !43} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from ]
!100 = metadata !{metadata !101}
!101 = metadata !{i32 786465, i64 0, i64 9}       ; [ DW_TAG_subrange_type ] [0, 8]
!102 = metadata !{i32 786484, i32 0, metadata !83, metadata !"optsnum", metadata !"optsnum", metadata !"", metadata !22, i32 177, metadata !103, i32 1, i32 1, [8 x i32]* @luaB_collectgarbage.optsnum, null} ; [ DW_TAG_variable ] [optsnum] [line 177] [local] [def]
!103 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 256, i64 32, i32 0, i32 0, metadata !104, metadata !105, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 256, align 32, offset 0] [from ]
!104 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !25} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from int]
!105 = metadata !{metadata !106}
!106 = metadata !{i32 786465, i64 0, i64 8}       ; [ DW_TAG_subrange_type ] [0, 7]
!107 = metadata !{i32 (%struct.lua_State*)* @luaopen_base}
!108 = metadata !{metadata !"luaopen_base"}
!109 = metadata !{i32 (%struct.lua_State*, i32, i64)* @lua_rawgeti}
!110 = metadata !{metadata !"lua_rawgeti"}
!111 = metadata !{void (%struct.lua_State*, %struct.luaL_Reg*, i32)* @luaL_setfuncs}
!112 = metadata !{metadata !"luaL_setfuncs"}
!113 = metadata !{void (%struct.lua_State*, i32)* @lua_pushvalue}
!114 = metadata !{metadata !"lua_pushvalue"}
!115 = metadata !{void (%struct.lua_State*, i32, i8*)* @lua_setfield}
!116 = metadata !{metadata !"lua_setfield"}
!117 = metadata !{i8* (%struct.lua_State*, i8*)* @lua_pushstring}
!118 = metadata !{metadata !"lua_pushstring"}
!119 = metadata !{i32 (%struct.lua_State*)* @luaB_assert}
!120 = metadata !{metadata !"luaB_assert"}
!121 = metadata !{i32 (%struct.lua_State*)* @luaB_collectgarbage}
!122 = metadata !{metadata !"luaB_collectgarbage"}
!123 = metadata !{i32 (%struct.lua_State*)* @luaB_dofile}
!124 = metadata !{metadata !"luaB_dofile"}
!125 = metadata !{i32 (%struct.lua_State*)* @luaB_error}
!126 = metadata !{metadata !"luaB_error"}
!127 = metadata !{i32 (%struct.lua_State*)* @luaB_getmetatable}
!128 = metadata !{metadata !"luaB_getmetatable"}
!129 = metadata !{i32 (%struct.lua_State*)* @luaB_ipairs}
!130 = metadata !{metadata !"luaB_ipairs"}
!131 = metadata !{i32 (%struct.lua_State*)* @luaB_loadfile}
!132 = metadata !{metadata !"luaB_loadfile"}
!133 = metadata !{i32 (%struct.lua_State*)* @luaB_load}
!134 = metadata !{metadata !"luaB_load"}
!135 = metadata !{i32 (%struct.lua_State*)* @luaB_next}
!136 = metadata !{metadata !"luaB_next"}
!137 = metadata !{i32 (%struct.lua_State*)* @luaB_pairs}
!138 = metadata !{metadata !"luaB_pairs"}
!139 = metadata !{i32 (%struct.lua_State*)* @luaB_pcall}
!140 = metadata !{metadata !"luaB_pcall"}
!141 = metadata !{i32 (%struct.lua_State*)* @luaB_print}
!142 = metadata !{metadata !"luaB_print"}
!143 = metadata !{i32 (%struct.lua_State*)* @luaB_rawequal}
!144 = metadata !{metadata !"luaB_rawequal"}
!145 = metadata !{i32 (%struct.lua_State*)* @luaB_rawlen}
!146 = metadata !{metadata !"luaB_rawlen"}
!147 = metadata !{i32 (%struct.lua_State*)* @luaB_rawget}
!148 = metadata !{metadata !"luaB_rawget"}
!149 = metadata !{i32 (%struct.lua_State*)* @luaB_rawset}
!150 = metadata !{metadata !"luaB_rawset"}
!151 = metadata !{i32 (%struct.lua_State*)* @luaB_select}
!152 = metadata !{metadata !"luaB_select"}
!153 = metadata !{i32 (%struct.lua_State*)* @luaB_setmetatable}
!154 = metadata !{metadata !"luaB_setmetatable"}
!155 = metadata !{i32 (%struct.lua_State*)* @luaB_tonumber}
!156 = metadata !{metadata !"luaB_tonumber"}
!157 = metadata !{i32 (%struct.lua_State*)* @luaB_tostring}
!158 = metadata !{metadata !"luaB_tostring"}
!159 = metadata !{i32 (%struct.lua_State*)* @luaB_type}
!160 = metadata !{metadata !"luaB_type"}
!161 = metadata !{i32 (%struct.lua_State*)* @luaB_xpcall}
!162 = metadata !{metadata !"luaB_xpcall"}
!163 = metadata !{i32 (%struct.lua_State*)* @lua_gettop}
!164 = metadata !{metadata !"lua_gettop"}
!165 = metadata !{void (%struct.lua_State*, i32, i32)* @luaL_checktype}
!166 = metadata !{metadata !"luaL_checktype"}
!167 = metadata !{void (%struct.lua_State*, i32)* @lua_pushboolean}
!168 = metadata !{metadata !"lua_pushboolean"}
!169 = metadata !{void (%struct.lua_State*, i32, i32)* @lua_rotate}
!170 = metadata !{metadata !"lua_rotate"}
!171 = metadata !{i32 (%struct.lua_State*, i32, i32, i32, i32, i32 (%struct.lua_State*, i32, i32)*)* @lua_pcallk}
!172 = metadata !{metadata !"lua_pcallk"}
!173 = metadata !{i32 (%struct.lua_State*, i32, i32)* @finishpcall}
!174 = metadata !{metadata !"finishpcall"}
!175 = metadata !{i32 (%struct.lua_State*, i32)* @lua_type}
!176 = metadata !{metadata !"lua_type"}
!177 = metadata !{i32 (%struct.lua_State*, i32, i8*)* @luaL_argerror}
!178 = metadata !{metadata !"luaL_argerror"}
!179 = metadata !{i8* (%struct.lua_State*, i32)* @lua_typename}
!180 = metadata !{metadata !"lua_typename"}
!181 = metadata !{void (%struct.lua_State*, i32)* @luaL_checkany}
!182 = metadata !{metadata !"luaL_checkany"}
!183 = metadata !{i8* (%struct.lua_State*, i32, i32*)* @luaL_tolstring}
!184 = metadata !{metadata !"luaL_tolstring"}
!185 = metadata !{void (%struct.lua_State*, i32)* @lua_settop}
!186 = metadata !{metadata !"lua_settop"}
!187 = metadata !{i8* (%struct.lua_State*, i32, i32*)* @lua_tolstring}
!188 = metadata !{metadata !"lua_tolstring"}
!189 = metadata !{i32 (%struct.lua_State*, i8*)* @lua_stringtonumber}
!190 = metadata !{metadata !"lua_stringtonumber"}
!191 = metadata !{i64 (%struct.lua_State*, i32)* @luaL_checkinteger}
!192 = metadata !{metadata !"luaL_checkinteger"}
!193 = metadata !{i8* (i8*, i32, i64*)* @b_str2int}
!194 = metadata !{metadata !"b_str2int"}
!195 = metadata !{void (%struct.lua_State*, i64)* @lua_pushinteger}
!196 = metadata !{metadata !"lua_pushinteger"}
!197 = metadata !{void (%struct.lua_State*)* @lua_pushnil}
!198 = metadata !{metadata !"lua_pushnil"}
!199 = metadata !{i32 (i8*, i8*)* @strspn}
!200 = metadata !{metadata !"strspn"}
!201 = metadata !{i16** ()* @__ctype_b_loc}
!202 = metadata !{metadata !"__ctype_b_loc"}
!203 = metadata !{i32 (i32)* @toupper}
!204 = metadata !{metadata !"toupper"}
!205 = metadata !{i32 (%struct.lua_State*, i32, i8*)* @luaL_getmetafield}
!206 = metadata !{metadata !"luaL_getmetafield"}
!207 = metadata !{i32 (%struct.lua_State*, i8*, ...)* @luaL_error}
!208 = metadata !{metadata !"luaL_error"}
!209 = metadata !{i32 (%struct.lua_State*, i32)* @lua_setmetatable}
!210 = metadata !{metadata !"lua_setmetatable"}
!211 = metadata !{void (%struct.lua_State*, i32)* @lua_rawset}
!212 = metadata !{metadata !"lua_rawset"}
!213 = metadata !{i32 (%struct.lua_State*, i32)* @lua_rawget}
!214 = metadata !{metadata !"lua_rawget"}
!215 = metadata !{i32 (%struct.lua_State*, i32)* @lua_rawlen}
!216 = metadata !{metadata !"lua_rawlen"}
!217 = metadata !{i32 (%struct.lua_State*, i32, i32)* @lua_rawequal}
!218 = metadata !{metadata !"lua_rawequal"}
!219 = metadata !{i32 (%struct.lua_State*, i8*)* @lua_getglobal}
!220 = metadata !{metadata !"lua_getglobal"}
!221 = metadata !{void (%struct.lua_State*, i32, i32, i32, i32 (%struct.lua_State*, i32, i32)*)* @lua_callk}
!222 = metadata !{metadata !"lua_callk"}
!223 = metadata !{i32 (i8*, i32, i32, %struct._IO_FILE*)* @fwrite}
!224 = metadata !{metadata !"fwrite"}
!225 = metadata !{i32 (%struct._IO_FILE*)* @fflush}
!226 = metadata !{metadata !"fflush"}
!227 = metadata !{i32 (%struct.lua_State*, i8*, i32, i32 (%struct.lua_State*)*)* @pairsmeta}
!228 = metadata !{metadata !"pairsmeta"}
!229 = metadata !{void (%struct.lua_State*, i32 (%struct.lua_State*)*, i32)* @lua_pushcclosure}
!230 = metadata !{metadata !"lua_pushcclosure"}
!231 = metadata !{i32 (%struct.lua_State*, i32)* @lua_next}
!232 = metadata !{metadata !"lua_next"}
!233 = metadata !{i8* (%struct.lua_State*, i32, i8*, i32*)* @luaL_optlstring}
!234 = metadata !{metadata !"luaL_optlstring"}
!235 = metadata !{i32 (%struct.lua_State*, i8*, i32, i8*, i8*)* @luaL_loadbufferx}
!236 = metadata !{metadata !"luaL_loadbufferx"}
!237 = metadata !{i32 (%struct.lua_State*, i8* (%struct.lua_State*, i8*, i32*)*, i8*, i8*, i8*)* @lua_load}
!238 = metadata !{metadata !"lua_load"}
!239 = metadata !{i8* (%struct.lua_State*, i8*, i32*)* @generic_reader}
!240 = metadata !{metadata !"generic_reader"}
!241 = metadata !{i32 (%struct.lua_State*, i32, i32)* @load_aux}
!242 = metadata !{metadata !"load_aux"}
!243 = metadata !{i8* (%struct.lua_State*, i32, i32)* @lua_setupvalue}
!244 = metadata !{metadata !"lua_setupvalue"}
!245 = metadata !{void (%struct.lua_State*, i32, i8*)* @luaL_checkstack}
!246 = metadata !{metadata !"luaL_checkstack"}
!247 = metadata !{i32 (%struct.lua_State*, i32)* @lua_isstring}
!248 = metadata !{metadata !"lua_isstring"}
!249 = metadata !{void (%struct.lua_State*, i32, i32)* @lua_copy}
!250 = metadata !{metadata !"lua_copy"}
!251 = metadata !{i32 (%struct.lua_State*, i8*, i8*)* @luaL_loadfilex}
!252 = metadata !{metadata !"luaL_loadfilex"}
!253 = metadata !{i32 (%struct.lua_State*)* @ipairsaux}
!254 = metadata !{metadata !"ipairsaux"}
!255 = metadata !{i32 (%struct.lua_State*, i32, i64)* @lua_geti}
!256 = metadata !{metadata !"lua_geti"}
!257 = metadata !{i32 (%struct.lua_State*, i32)* @lua_getmetatable}
!258 = metadata !{metadata !"lua_getmetatable"}
!259 = metadata !{i64 (%struct.lua_State*, i32, i64)* @luaL_optinteger}
!260 = metadata !{metadata !"luaL_optinteger"}
!261 = metadata !{void (%struct.lua_State*, i32)* @luaL_where}
!262 = metadata !{metadata !"luaL_where"}
!263 = metadata !{void (%struct.lua_State*, i32)* @lua_concat}
!264 = metadata !{metadata !"lua_concat"}
!265 = metadata !{i32 (%struct.lua_State*)* @lua_error}
!266 = metadata !{metadata !"lua_error"}
!267 = metadata !{i32 (%struct.lua_State*, i32, i32)* @dofilecont}
!268 = metadata !{metadata !"dofilecont"}
!269 = metadata !{i32 (%struct.lua_State*, i32, i8*, i8**)* @luaL_checkoption}
!270 = metadata !{metadata !"luaL_checkoption"}
!271 = metadata !{i32 (%struct.lua_State*, i32, i32)* @lua_gc}
!272 = metadata !{metadata !"lua_gc"}
!273 = metadata !{void (%struct.lua_State*, double)* @lua_pushnumber}
!274 = metadata !{metadata !"lua_pushnumber"}
!275 = metadata !{i32 (%struct.lua_State*, i32)* @lua_toboolean}
!276 = metadata !{metadata !"lua_toboolean"}
!277 = metadata !{metadata !"int.lua_State *.1"}
!278 = metadata !{metadata !"int.lua_State *.1.int.0.lua_Integer.0"}
!279 = metadata !{metadata !"void.lua_State *.1.const luaL_Reg *.1.int.0"}
!280 = metadata !{metadata !"void.lua_State *.1.int.0"}
!281 = metadata !{metadata !"void.lua_State *.1.int.0.const char *.1"}
!282 = metadata !{metadata !"const char .lua_State *.1.const char *.1"}
!283 = metadata !{metadata !"void.lua_State *.1.int.0.int.0"}
!284 = metadata !{metadata !"int.lua_State *.1.int.0.int.0.int.0.lua_KContext.0.lua_KFunction.1"}
!285 = metadata !{metadata !"int.lua_State *.1.int.0.lua_KContext.0"}
!286 = metadata !{metadata !"int.lua_State *.1.int.0"}
!287 = metadata !{metadata !"int.lua_State *.1.int.0.const char *.1"}
!288 = metadata !{metadata !"const char .lua_State *.1.int.0"}
!289 = metadata !{metadata !"const char .lua_State *.1.int.0.size_t *.1"}
!290 = metadata !{metadata !"size_t.lua_State *.1.const char *.1"}
!291 = metadata !{metadata !"lua_Integer.lua_State *.1.int.0"}
!292 = metadata !{metadata !"const char .const char *.1.int.0.lua_Integer *.1"}
!293 = metadata !{metadata !"void.lua_State *.1.lua_Integer.0"}
!294 = metadata !{metadata !"void.lua_State *.1"}
!295 = metadata !{metadata !"unsigned int.const char *.1.const char *.1"}
!296 = metadata !{metadata !"const unsigned short *."}
!297 = metadata !{metadata !"int.int.0"}
!298 = metadata !{metadata !"int.lua_State *.1.const char *.1"}
!299 = metadata !{metadata !"size_t.lua_State *.1.int.0"}
!300 = metadata !{metadata !"int.lua_State *.1.int.0.int.0"}
!301 = metadata !{metadata !"void.lua_State *.1.int.0.int.0.lua_KContext.0.lua_KFunction.1"}
!302 = metadata !{metadata !"size_t.const void *restrict.1.size_t.0.size_t.0.FILE *restrict.1"}
!303 = metadata !{metadata !"int.FILE *.1"}
!304 = metadata !{metadata !"int.lua_State *.1.const char *.1.int.0.lua_CFunction.1"}
!305 = metadata !{metadata !"void.lua_State *.1.lua_CFunction.1.int.0"}
!306 = metadata !{metadata !"const char .lua_State *.1.int.0.const char *.1.size_t *.1"}
!307 = metadata !{metadata !"int.lua_State *.1.const char *.1.size_t.0.const char *.1.const char *.1"}
!308 = metadata !{metadata !"int.lua_State *.1.lua_Reader.1.void *.1.const char *.1.const char *.1"}
!309 = metadata !{metadata !"const char .lua_State *.1.void *.1.size_t *.1"}
!310 = metadata !{metadata !"const char .lua_State *.1.int.0.int.0"}
!311 = metadata !{metadata !"int.lua_State *.1.const char *.1.const char *.1"}
!312 = metadata !{metadata !"lua_Integer.lua_State *.1.int.0.lua_Integer.0"}
!313 = metadata !{metadata !"int.lua_State *.1.int.0.const char *.1.const char *const [].1"}
!314 = metadata !{metadata !"void.lua_State *.1.lua_Number.0"}
!315 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lualib.h"}
!316 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lua.h"}
!317 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lauxlib.h"}
!318 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lbaselib.c"}
!319 = metadata !{metadata !"D:/Xilinx/SDx/2016.3/SDK/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include\5Cstring.h"}
!320 = metadata !{metadata !"D:/Xilinx/SDx/2016.3/SDK/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include\5Cctype.h"}
!321 = metadata !{metadata !"D:/Xilinx/SDx/2016.3/SDK/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include\5Cstdio.h"}
!322 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!323 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!324 = metadata !{i32 1, metadata !"wchar_size", i32 4}
!325 = metadata !{i32 1, metadata !"min_enum_size", i32 4}
!326 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
!327 = metadata !{i32 786689, metadata !20, metadata !"L", metadata !22, i32 16777702, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 486]
!328 = metadata !{i32 486, i32 41, metadata !20, null}
!329 = metadata !{i32 488, i32 3, metadata !20, null}
!330 = metadata !{i32 489, i32 3, metadata !20, null}
!331 = metadata !{i32 491, i32 3, metadata !20, null}
!332 = metadata !{i32 492, i32 3, metadata !20, null}
!333 = metadata !{i32 494, i32 3, metadata !20, null}
!334 = metadata !{i32 495, i32 3, metadata !20, null}
!335 = metadata !{i32 496, i32 3, metadata !20, null}
!336 = metadata !{i32 786689, metadata !84, metadata !"L", metadata !22, i32 16777588, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 372]
!337 = metadata !{i32 372, i32 36, metadata !84, null}
!338 = metadata !{i32 373, i32 7, metadata !339, null}
!339 = metadata !{i32 786443, metadata !21, metadata !84, i32 373, i32 7, i32 0, i32 54} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lbaselib.c]
!340 = metadata !{i32 374, i32 12, metadata !339, null}
!341 = metadata !{i32 376, i32 5, metadata !342, null}
!342 = metadata !{i32 786443, metadata !21, metadata !339, i32 375, i32 8, i32 0, i32 55} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lbaselib.c]
!343 = metadata !{i32 377, i32 5, metadata !342, null}
!344 = metadata !{i32 378, i32 5, metadata !342, null}
!345 = metadata !{i32 379, i32 5, metadata !342, null}
!346 = metadata !{i32 380, i32 12, metadata !342, null}
!347 = metadata !{i32 382, i32 1, metadata !84, null}
!348 = metadata !{i32 786689, metadata !83, metadata !"L", metadata !22, i32 16777389, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 173]
!349 = metadata !{i32 173, i32 44, metadata !83, null}
!350 = metadata !{i32 786688, metadata !83, metadata !"o", metadata !22, i32 180, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [o] [line 180]
!351 = metadata !{i32 180, i32 7, metadata !83, null}
!352 = metadata !{i32 180, i32 19, metadata !83, null}
!353 = metadata !{i32 786688, metadata !83, metadata !"ex", metadata !22, i32 181, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ex] [line 181]
!354 = metadata !{i32 181, i32 7, metadata !83, null}
!355 = metadata !{i32 181, i32 17, metadata !83, null}
!356 = metadata !{i32 786688, metadata !83, metadata !"res", metadata !22, i32 182, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [res] [line 182]
!357 = metadata !{i32 182, i32 7, metadata !83, null}
!358 = metadata !{i32 182, i32 13, metadata !83, null}
!359 = metadata !{i32 183, i32 3, metadata !83, null}
!360 = metadata !{i32 786688, metadata !361, metadata !"b", metadata !22, i32 185, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b] [line 185]
!361 = metadata !{i32 786443, metadata !21, metadata !362, i32 184, i32 23, i32 0, i32 51} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lbaselib.c]
!362 = metadata !{i32 786443, metadata !21, metadata !83, i32 183, i32 14, i32 0, i32 50} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lbaselib.c]
!363 = metadata !{i32 185, i32 11, metadata !361, null}
!364 = metadata !{i32 185, i32 15, metadata !361, null}
!365 = metadata !{i32 186, i32 7, metadata !361, null}
!366 = metadata !{i32 187, i32 7, metadata !361, null}
!367 = metadata !{i32 190, i32 7, metadata !368, null}
!368 = metadata !{i32 786443, metadata !21, metadata !362, i32 189, i32 44, i32 0, i32 52} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lbaselib.c]
!369 = metadata !{i32 191, i32 7, metadata !368, null}
!370 = metadata !{i32 194, i32 7, metadata !371, null}
!371 = metadata !{i32 786443, metadata !21, metadata !362, i32 193, i32 14, i32 0, i32 53} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lbaselib.c]
!372 = metadata !{i32 195, i32 7, metadata !371, null}
!373 = metadata !{i32 198, i32 1, metadata !83, null}
!374 = metadata !{i32 786689, metadata !81, metadata !"L", metadata !22, i32 16777578, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 362]
!375 = metadata !{i32 362, i32 36, metadata !81, null}
!376 = metadata !{i32 786688, metadata !81, metadata !"fname", metadata !22, i32 363, metadata !43, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fname] [line 363]
!377 = metadata !{i32 363, i32 15, metadata !81, null}
!378 = metadata !{i32 363, i32 23, metadata !81, null}
!379 = metadata !{i32 364, i32 3, metadata !81, null}
!380 = metadata !{i32 365, i32 7, metadata !381, null}
!381 = metadata !{i32 786443, metadata !21, metadata !81, i32 365, i32 7, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lbaselib.c]
!382 = metadata !{i32 366, i32 12, metadata !381, null}
!383 = metadata !{i32 367, i32 3, metadata !81, null}
!384 = metadata !{i32 368, i32 10, metadata !81, null}
!385 = metadata !{i32 369, i32 1, metadata !81, null}
!386 = metadata !{i32 786689, metadata !80, metadata !"L", metadata !22, i32 16777318, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 102]
!387 = metadata !{i32 102, i32 35, metadata !80, null}
!388 = metadata !{i32 786688, metadata !80, metadata !"level", metadata !22, i32 103, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [level] [line 103]
!389 = metadata !{i32 103, i32 7, metadata !80, null}
!390 = metadata !{i32 103, i32 20, metadata !80, null}
!391 = metadata !{i32 104, i32 3, metadata !80, null}
!392 = metadata !{i32 105, i32 7, metadata !393, null}
!393 = metadata !{i32 786443, metadata !21, metadata !80, i32 105, i32 7, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lbaselib.c]
!394 = metadata !{i32 105, i32 7, metadata !395, null}
!395 = metadata !{i32 786443, metadata !21, metadata !393, i32 105, i32 7, i32 1, i32 56} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lbaselib.c]
!396 = metadata !{i32 106, i32 5, metadata !397, null}
!397 = metadata !{i32 786443, metadata !21, metadata !393, i32 105, i32 51, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lbaselib.c]
!398 = metadata !{i32 107, i32 5, metadata !397, null}
!399 = metadata !{i32 108, i32 5, metadata !397, null}
!400 = metadata !{i32 109, i32 3, metadata !397, null}
!401 = metadata !{i32 110, i32 10, metadata !80, null}
!402 = metadata !{i32 786689, metadata !79, metadata !"L", metadata !22, i32 16777330, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 114]
!403 = metadata !{i32 114, i32 42, metadata !79, null}
!404 = metadata !{i32 115, i32 3, metadata !79, null}
!405 = metadata !{i32 116, i32 8, metadata !406, null}
!406 = metadata !{i32 786443, metadata !21, metadata !79, i32 116, i32 7, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lbaselib.c]
!407 = metadata !{i32 117, i32 5, metadata !408, null}
!408 = metadata !{i32 786443, metadata !21, metadata !406, i32 116, i32 32, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lbaselib.c]
!409 = metadata !{i32 118, i32 5, metadata !408, null}
!410 = metadata !{i32 120, i32 3, metadata !79, null}
!411 = metadata !{i32 121, i32 3, metadata !79, null}
!412 = metadata !{i32 122, i32 1, metadata !79, null}
!413 = metadata !{i32 786689, metadata !77, metadata !"L", metadata !22, i32 16777473, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 257]
!414 = metadata !{i32 257, i32 36, metadata !77, null}
!415 = metadata !{i32 259, i32 10, metadata !77, null}
!416 = metadata !{i32 786689, metadata !76, metadata !"L", metadata !22, i32 16777503, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 287]
!417 = metadata !{i32 287, i32 38, metadata !76, null}
!418 = metadata !{i32 786688, metadata !76, metadata !"fname", metadata !22, i32 288, metadata !43, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fname] [line 288]
!419 = metadata !{i32 288, i32 15, metadata !76, null}
!420 = metadata !{i32 288, i32 23, metadata !76, null}
!421 = metadata !{i32 786688, metadata !76, metadata !"mode", metadata !22, i32 289, metadata !43, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mode] [line 289]
!422 = metadata !{i32 289, i32 15, metadata !76, null}
!423 = metadata !{i32 289, i32 22, metadata !76, null}
!424 = metadata !{i32 786688, metadata !76, metadata !"env", metadata !22, i32 290, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [env] [line 290]
!425 = metadata !{i32 290, i32 7, metadata !76, null}
!426 = metadata !{i32 290, i32 15, metadata !76, null}
!427 = metadata !{i32 786688, metadata !76, metadata !"status", metadata !22, i32 291, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [status] [line 291]
!428 = metadata !{i32 291, i32 7, metadata !76, null}
!429 = metadata !{i32 291, i32 16, metadata !76, null}
!430 = metadata !{i32 292, i32 10, metadata !76, null}
!431 = metadata !{i32 786689, metadata !64, metadata !"L", metadata !22, i32 16777550, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 334]
!432 = metadata !{i32 334, i32 34, metadata !64, null}
!433 = metadata !{i32 786688, metadata !64, metadata !"status", metadata !22, i32 335, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [status] [line 335]
!434 = metadata !{i32 335, i32 7, metadata !64, null}
!435 = metadata !{i32 786688, metadata !64, metadata !"l", metadata !22, i32 336, metadata !73, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [l] [line 336]
!436 = metadata !{i32 336, i32 10, metadata !64, null}
!437 = metadata !{i32 786688, metadata !64, metadata !"s", metadata !22, i32 337, metadata !43, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s] [line 337]
!438 = metadata !{i32 337, i32 15, metadata !64, null}
!439 = metadata !{i32 337, i32 19, metadata !64, null}
!440 = metadata !{i32 786688, metadata !64, metadata !"mode", metadata !22, i32 338, metadata !43, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mode] [line 338]
!441 = metadata !{i32 338, i32 15, metadata !64, null}
!442 = metadata !{i32 338, i32 22, metadata !64, null}
!443 = metadata !{i32 786688, metadata !64, metadata !"env", metadata !22, i32 339, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [env] [line 339]
!444 = metadata !{i32 339, i32 7, metadata !64, null}
!445 = metadata !{i32 339, i32 15, metadata !64, null}
!446 = metadata !{i32 340, i32 7, metadata !447, null}
!447 = metadata !{i32 786443, metadata !21, metadata !64, i32 340, i32 7, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lbaselib.c]
!448 = metadata !{i32 786688, metadata !449, metadata !"chunkname", metadata !22, i32 341, metadata !43, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [chunkname] [line 341]
!449 = metadata !{i32 786443, metadata !21, metadata !447, i32 340, i32 18, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lbaselib.c]
!450 = metadata !{i32 341, i32 17, metadata !449, null}
!451 = metadata !{i32 341, i32 29, metadata !449, null}
!452 = metadata !{i32 342, i32 14, metadata !449, null}
!453 = metadata !{i32 343, i32 3, metadata !449, null}
!454 = metadata !{i32 786688, metadata !455, metadata !"chunkname", metadata !22, i32 345, metadata !43, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [chunkname] [line 345]
!455 = metadata !{i32 786443, metadata !21, metadata !447, i32 344, i32 8, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lbaselib.c]
!456 = metadata !{i32 345, i32 17, metadata !455, null}
!457 = metadata !{i32 345, i32 29, metadata !455, null}
!458 = metadata !{i32 346, i32 5, metadata !455, null}
!459 = metadata !{i32 347, i32 5, metadata !455, null}
!460 = metadata !{i32 348, i32 14, metadata !455, null}
!461 = metadata !{i32 350, i32 10, metadata !64, null}
!462 = metadata !{i32 786689, metadata !63, metadata !"L", metadata !22, i32 16777442, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 226]
!463 = metadata !{i32 226, i32 34, metadata !63, null}
!464 = metadata !{i32 227, i32 3, metadata !63, null}
!465 = metadata !{i32 228, i32 3, metadata !63, null}
!466 = metadata !{i32 229, i32 7, metadata !467, null}
!467 = metadata !{i32 786443, metadata !21, metadata !63, i32 229, i32 7, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lbaselib.c]
!468 = metadata !{i32 230, i32 5, metadata !467, null}
!469 = metadata !{i32 232, i32 5, metadata !470, null}
!470 = metadata !{i32 786443, metadata !21, metadata !467, i32 231, i32 8, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lbaselib.c]
!471 = metadata !{i32 233, i32 5, metadata !470, null}
!472 = metadata !{i32 235, i32 1, metadata !63, null}
!473 = metadata !{i32 786689, metadata !57, metadata !"L", metadata !22, i32 16777454, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 238]
!474 = metadata !{i32 238, i32 35, metadata !57, null}
!475 = metadata !{i32 239, i32 10, metadata !57, null}
!476 = metadata !{i32 786689, metadata !56, metadata !"L", metadata !22, i32 16777635, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 419]
!477 = metadata !{i32 419, i32 35, metadata !56, null}
!478 = metadata !{i32 786688, metadata !56, metadata !"status", metadata !22, i32 420, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [status] [line 420]
!479 = metadata !{i32 420, i32 7, metadata !56, null}
!480 = metadata !{i32 421, i32 3, metadata !56, null}
!481 = metadata !{i32 422, i32 3, metadata !56, null}
!482 = metadata !{i32 423, i32 3, metadata !56, null}
!483 = metadata !{i32 424, i32 12, metadata !56, null}
!484 = metadata !{i32 424, i32 26, metadata !56, null}
!485 = metadata !{i32 425, i32 10, metadata !56, null}
!486 = metadata !{i32 786689, metadata !55, metadata !"L", metadata !22, i32 16777240, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 24]
!487 = metadata !{i32 24, i32 35, metadata !55, null}
!488 = metadata !{i32 786688, metadata !55, metadata !"n", metadata !22, i32 25, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 25]
!489 = metadata !{i32 25, i32 7, metadata !55, null}
!490 = metadata !{i32 25, i32 11, metadata !55, null}
!491 = metadata !{i32 786688, metadata !55, metadata !"i", metadata !22, i32 26, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 26]
!492 = metadata !{i32 26, i32 7, metadata !55, null}
!493 = metadata !{i32 27, i32 3, metadata !55, null}
!494 = metadata !{i32 28, i32 8, metadata !495, null}
!495 = metadata !{i32 786443, metadata !21, metadata !55, i32 28, i32 3, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lbaselib.c]
!496 = metadata !{i32 28, i32 8, metadata !497, null}
!497 = metadata !{i32 786443, metadata !21, metadata !498, i32 28, i32 8, i32 2, i32 59} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lbaselib.c]
!498 = metadata !{i32 786443, metadata !21, metadata !495, i32 28, i32 8, i32 1, i32 57} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lbaselib.c]
!499 = metadata !{i32 786688, metadata !500, metadata !"s", metadata !22, i32 29, metadata !43, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s] [line 29]
!500 = metadata !{i32 786443, metadata !21, metadata !495, i32 28, i32 24, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lbaselib.c]
!501 = metadata !{i32 29, i32 17, metadata !500, null}
!502 = metadata !{i32 786688, metadata !500, metadata !"l", metadata !22, i32 30, metadata !73, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [l] [line 30]
!503 = metadata !{i32 30, i32 12, metadata !500, null}
!504 = metadata !{i32 31, i32 5, metadata !500, null}
!505 = metadata !{i32 32, i32 5, metadata !500, null}
!506 = metadata !{i32 33, i32 5, metadata !500, null}
!507 = metadata !{i32 34, i32 9, metadata !500, null}
!508 = metadata !{i32 35, i32 9, metadata !509, null}
!509 = metadata !{i32 786443, metadata !21, metadata !500, i32 35, i32 9, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lbaselib.c]
!510 = metadata !{i32 36, i32 14, metadata !509, null}
!511 = metadata !{i32 37, i32 9, metadata !512, null}
!512 = metadata !{i32 786443, metadata !21, metadata !500, i32 37, i32 9, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lbaselib.c]
!513 = metadata !{i32 37, i32 14, metadata !514, null}
!514 = metadata !{i32 786443, metadata !21, metadata !512, i32 37, i32 14, i32 1, i32 58} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lbaselib.c]
!515 = metadata !{i32 38, i32 5, metadata !500, null}
!516 = metadata !{i32 39, i32 5, metadata !500, null}
!517 = metadata !{i32 40, i32 3, metadata !500, null}
!518 = metadata !{i32 28, i32 19, metadata !495, null}
!519 = metadata !{i32 41, i32 3, metadata !55, null}
!520 = metadata !{i32 42, i32 3, metadata !55, null}
!521 = metadata !{i32 43, i32 1, metadata !55, null}
!522 = metadata !{i32 786689, metadata !54, metadata !"L", metadata !22, i32 16777354, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 138]
!523 = metadata !{i32 138, i32 38, metadata !54, null}
!524 = metadata !{i32 139, i32 3, metadata !54, null}
!525 = metadata !{i32 140, i32 3, metadata !54, null}
!526 = metadata !{i32 141, i32 3, metadata !54, null}
!527 = metadata !{i32 141, i32 22, metadata !54, null}
!528 = metadata !{i32 142, i32 3, metadata !54, null}
!529 = metadata !{i32 786689, metadata !53, metadata !"L", metadata !22, i32 16777362, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 146]
!530 = metadata !{i32 146, i32 36, metadata !53, null}
!531 = metadata !{i32 786688, metadata !53, metadata !"t", metadata !22, i32 147, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [t] [line 147]
!532 = metadata !{i32 147, i32 7, metadata !53, null}
!533 = metadata !{i32 147, i32 11, metadata !53, null}
!534 = metadata !{i32 148, i32 3, metadata !53, null}
!535 = metadata !{i32 148, i32 3, metadata !536, null}
!536 = metadata !{i32 786443, metadata !21, metadata !53, i32 148, i32 3, i32 2, i32 61} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lbaselib.c]
!537 = metadata !{i32 148, i32 3, metadata !538, null}
!538 = metadata !{i32 786443, metadata !21, metadata !53, i32 148, i32 3, i32 4, i32 63} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lbaselib.c]
!539 = metadata !{i32 148, i32 3, metadata !540, null}
!540 = metadata !{i32 786443, metadata !21, metadata !541, i32 148, i32 3, i32 5, i32 64} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lbaselib.c]
!541 = metadata !{i32 786443, metadata !21, metadata !542, i32 148, i32 3, i32 3, i32 62} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lbaselib.c]
!542 = metadata !{i32 786443, metadata !21, metadata !53, i32 148, i32 3, i32 1, i32 60} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lbaselib.c]
!543 = metadata !{i32 150, i32 3, metadata !53, null}
!544 = metadata !{i32 150, i32 22, metadata !53, null}
!545 = metadata !{i32 151, i32 3, metadata !53, null}
!546 = metadata !{i32 786689, metadata !52, metadata !"L", metadata !22, i32 16777371, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 155]
!547 = metadata !{i32 155, i32 36, metadata !52, null}
!548 = metadata !{i32 156, i32 3, metadata !52, null}
!549 = metadata !{i32 157, i32 3, metadata !52, null}
!550 = metadata !{i32 158, i32 3, metadata !52, null}
!551 = metadata !{i32 159, i32 3, metadata !52, null}
!552 = metadata !{i32 160, i32 3, metadata !52, null}
!553 = metadata !{i32 786689, metadata !51, metadata !"L", metadata !22, i32 16777379, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 163]
!554 = metadata !{i32 163, i32 36, metadata !51, null}
!555 = metadata !{i32 164, i32 3, metadata !51, null}
!556 = metadata !{i32 165, i32 3, metadata !51, null}
!557 = metadata !{i32 166, i32 3, metadata !51, null}
!558 = metadata !{i32 167, i32 3, metadata !51, null}
!559 = metadata !{i32 168, i32 3, metadata !51, null}
!560 = metadata !{i32 169, i32 3, metadata !51, null}
!561 = metadata !{i32 786689, metadata !50, metadata !"L", metadata !22, i32 16777601, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 385]
!562 = metadata !{i32 385, i32 36, metadata !50, null}
!563 = metadata !{i32 786688, metadata !50, metadata !"n", metadata !22, i32 386, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 386]
!564 = metadata !{i32 386, i32 7, metadata !50, null}
!565 = metadata !{i32 386, i32 11, metadata !50, null}
!566 = metadata !{i32 387, i32 7, metadata !567, null}
!567 = metadata !{i32 786443, metadata !21, metadata !50, i32 387, i32 7, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lbaselib.c]
!568 = metadata !{i32 387, i32 41, metadata !569, null}
!569 = metadata !{i32 786443, metadata !21, metadata !567, i32 387, i32 41, i32 1, i32 65} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lbaselib.c]
!570 = metadata !{i32 388, i32 5, metadata !571, null}
!571 = metadata !{i32 786443, metadata !21, metadata !567, i32 387, i32 68, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lbaselib.c]
!572 = metadata !{i32 389, i32 5, metadata !571, null}
!573 = metadata !{i32 786688, metadata !574, metadata !"i", metadata !22, i32 392, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 392]
!574 = metadata !{i32 786443, metadata !21, metadata !567, i32 391, i32 8, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lbaselib.c]
!575 = metadata !{i32 392, i32 17, metadata !574, null}
!576 = metadata !{i32 392, i32 21, metadata !574, null}
!577 = metadata !{i32 393, i32 9, metadata !578, null}
!578 = metadata !{i32 786443, metadata !21, metadata !574, i32 393, i32 9, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lbaselib.c]
!579 = metadata !{i32 393, i32 16, metadata !580, null}
!580 = metadata !{i32 786443, metadata !21, metadata !578, i32 393, i32 16, i32 1, i32 66} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lbaselib.c]
!581 = metadata !{i32 394, i32 14, metadata !582, null}
!582 = metadata !{i32 786443, metadata !21, metadata !578, i32 394, i32 14, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lbaselib.c]
!583 = metadata !{i32 394, i32 21, metadata !584, null}
!584 = metadata !{i32 786443, metadata !21, metadata !582, i32 394, i32 21, i32 1, i32 67} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lbaselib.c]
!585 = metadata !{i32 395, i32 5, metadata !574, null}
!586 = metadata !{i32 395, i32 5, metadata !587, null}
!587 = metadata !{i32 786443, metadata !21, metadata !574, i32 395, i32 5, i32 2, i32 69} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lbaselib.c]
!588 = metadata !{i32 395, i32 5, metadata !589, null}
!589 = metadata !{i32 786443, metadata !21, metadata !590, i32 395, i32 5, i32 3, i32 70} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lbaselib.c]
!590 = metadata !{i32 786443, metadata !21, metadata !574, i32 395, i32 5, i32 1, i32 68} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lbaselib.c]
!591 = metadata !{i32 396, i32 5, metadata !574, null}
!592 = metadata !{i32 398, i32 1, metadata !50, null}
!593 = metadata !{i32 786689, metadata !49, metadata !"L", metadata !22, i32 16777341, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 125]
!594 = metadata !{i32 125, i32 42, metadata !49, null}
!595 = metadata !{i32 786688, metadata !49, metadata !"t", metadata !22, i32 126, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [t] [line 126]
!596 = metadata !{i32 126, i32 7, metadata !49, null}
!597 = metadata !{i32 126, i32 11, metadata !49, null}
!598 = metadata !{i32 127, i32 3, metadata !49, null}
!599 = metadata !{i32 128, i32 3, metadata !49, null}
!600 = metadata !{i32 128, i32 3, metadata !601, null}
!601 = metadata !{i32 786443, metadata !21, metadata !49, i32 128, i32 3, i32 2, i32 72} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lbaselib.c]
!602 = metadata !{i32 128, i32 3, metadata !603, null}
!603 = metadata !{i32 786443, metadata !21, metadata !49, i32 128, i32 3, i32 4, i32 74} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lbaselib.c]
!604 = metadata !{i32 128, i32 3, metadata !605, null}
!605 = metadata !{i32 786443, metadata !21, metadata !606, i32 128, i32 3, i32 5, i32 75} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lbaselib.c]
!606 = metadata !{i32 786443, metadata !21, metadata !607, i32 128, i32 3, i32 3, i32 73} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lbaselib.c]
!607 = metadata !{i32 786443, metadata !21, metadata !49, i32 128, i32 3, i32 1, i32 71} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lbaselib.c]
!608 = metadata !{i32 130, i32 7, metadata !609, null}
!609 = metadata !{i32 786443, metadata !21, metadata !49, i32 130, i32 7, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lbaselib.c]
!610 = metadata !{i32 131, i32 12, metadata !609, null}
!611 = metadata !{i32 132, i32 3, metadata !49, null}
!612 = metadata !{i32 133, i32 3, metadata !49, null}
!613 = metadata !{i32 134, i32 3, metadata !49, null}
!614 = metadata !{i32 135, i32 1, metadata !49, null}
!615 = metadata !{i32 786689, metadata !39, metadata !"L", metadata !22, i32 16777285, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 69]
!616 = metadata !{i32 69, i32 38, metadata !39, null}
!617 = metadata !{i32 70, i32 7, metadata !618, null}
!618 = metadata !{i32 786443, metadata !21, metadata !39, i32 70, i32 7, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lbaselib.c]
!619 = metadata !{i32 71, i32 5, metadata !620, null}
!620 = metadata !{i32 786443, metadata !21, metadata !618, i32 70, i32 30, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lbaselib.c]
!621 = metadata !{i32 72, i32 9, metadata !622, null}
!622 = metadata !{i32 786443, metadata !21, metadata !620, i32 72, i32 9, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lbaselib.c]
!623 = metadata !{i32 73, i32 7, metadata !624, null}
!624 = metadata !{i32 786443, metadata !21, metadata !622, i32 72, i32 40, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lbaselib.c]
!625 = metadata !{i32 74, i32 7, metadata !624, null}
!626 = metadata !{i32 786688, metadata !627, metadata !"l", metadata !22, i32 77, metadata !73, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [l] [line 77]
!627 = metadata !{i32 786443, metadata !21, metadata !622, i32 76, i32 10, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lbaselib.c]
!628 = metadata !{i32 77, i32 14, metadata !627, null}
!629 = metadata !{i32 786688, metadata !627, metadata !"s", metadata !22, i32 78, metadata !43, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s] [line 78]
!630 = metadata !{i32 78, i32 19, metadata !627, null}
!631 = metadata !{i32 78, i32 23, metadata !627, null}
!632 = metadata !{i32 79, i32 11, metadata !633, null}
!633 = metadata !{i32 786443, metadata !21, metadata !627, i32 79, i32 11, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lbaselib.c]
!634 = metadata !{i32 79, i32 24, metadata !635, null}
!635 = metadata !{i32 786443, metadata !21, metadata !633, i32 79, i32 24, i32 1, i32 76} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lbaselib.c]
!636 = metadata !{i32 80, i32 9, metadata !633, null}
!637 = metadata !{i32 83, i32 3, metadata !620, null}
!638 = metadata !{i32 786688, metadata !639, metadata !"l", metadata !22, i32 85, metadata !73, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [l] [line 85]
!639 = metadata !{i32 786443, metadata !21, metadata !618, i32 84, i32 8, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lbaselib.c]
!640 = metadata !{i32 85, i32 12, metadata !639, null}
!641 = metadata !{i32 786688, metadata !639, metadata !"s", metadata !22, i32 86, metadata !43, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s] [line 86]
!642 = metadata !{i32 86, i32 17, metadata !639, null}
!643 = metadata !{i32 786688, metadata !639, metadata !"n", metadata !22, i32 87, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 87]
!644 = metadata !{i32 87, i32 17, metadata !639, null}
!645 = metadata !{i32 87, i32 5, metadata !639, null}
!646 = metadata !{i32 786688, metadata !639, metadata !"base", metadata !22, i32 88, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [base] [line 88]
!647 = metadata !{i32 88, i32 17, metadata !639, null}
!648 = metadata !{i32 88, i32 24, metadata !639, null}
!649 = metadata !{i32 89, i32 5, metadata !639, null}
!650 = metadata !{i32 90, i32 9, metadata !639, null}
!651 = metadata !{i32 91, i32 5, metadata !639, null}
!652 = metadata !{i32 91, i32 5, metadata !653, null}
!653 = metadata !{i32 786443, metadata !21, metadata !639, i32 91, i32 5, i32 1, i32 77} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lbaselib.c]
!654 = metadata !{i32 91, i32 5, metadata !655, null}
!655 = metadata !{i32 786443, metadata !21, metadata !656, i32 91, i32 5, i32 4, i32 80} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lbaselib.c]
!656 = metadata !{i32 786443, metadata !21, metadata !639, i32 91, i32 5, i32 2, i32 78} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lbaselib.c]
!657 = metadata !{i32 91, i32 5, metadata !658, null}
!658 = metadata !{i32 786443, metadata !21, metadata !659, i32 91, i32 5, i32 5, i32 81} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lbaselib.c]
!659 = metadata !{i32 786443, metadata !21, metadata !639, i32 91, i32 5, i32 3, i32 79} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lbaselib.c]
!660 = metadata !{i32 92, i32 9, metadata !661, null}
!661 = metadata !{i32 786443, metadata !21, metadata !639, i32 92, i32 9, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lbaselib.c]
!662 = metadata !{i32 93, i32 7, metadata !663, null}
!663 = metadata !{i32 786443, metadata !21, metadata !661, i32 92, i32 47, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lbaselib.c]
!664 = metadata !{i32 94, i32 7, metadata !663, null}
!665 = metadata !{i32 97, i32 3, metadata !39, null}
!666 = metadata !{i32 98, i32 3, metadata !39, null}
!667 = metadata !{i32 99, i32 1, metadata !39, null}
!668 = metadata !{i32 786689, metadata !38, metadata !"L", metadata !22, i32 16777662, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 446]
!669 = metadata !{i32 446, i32 38, metadata !38, null}
!670 = metadata !{i32 447, i32 3, metadata !38, null}
!671 = metadata !{i32 448, i32 3, metadata !38, null}
!672 = metadata !{i32 449, i32 3, metadata !38, null}
!673 = metadata !{i32 786689, metadata !37, metadata !"L", metadata !22, i32 16777417, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 201]
!674 = metadata !{i32 201, i32 34, metadata !37, null}
!675 = metadata !{i32 786688, metadata !37, metadata !"t", metadata !22, i32 202, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [t] [line 202]
!676 = metadata !{i32 202, i32 7, metadata !37, null}
!677 = metadata !{i32 202, i32 11, metadata !37, null}
!678 = metadata !{i32 203, i32 3, metadata !37, null}
!679 = metadata !{i32 203, i32 3, metadata !680, null}
!680 = metadata !{i32 786443, metadata !21, metadata !37, i32 203, i32 3, i32 2, i32 83} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lbaselib.c]
!681 = metadata !{i32 203, i32 3, metadata !682, null}
!682 = metadata !{i32 786443, metadata !21, metadata !683, i32 203, i32 3, i32 3, i32 84} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lbaselib.c]
!683 = metadata !{i32 786443, metadata !21, metadata !37, i32 203, i32 3, i32 1, i32 82} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lbaselib.c]
!684 = metadata !{i32 204, i32 3, metadata !37, null}
!685 = metadata !{i32 204, i32 21, metadata !37, null}
!686 = metadata !{i32 205, i32 3, metadata !37, null}
!687 = metadata !{i32 786689, metadata !30, metadata !"L", metadata !22, i32 16777650, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 434]
!688 = metadata !{i32 434, i32 36, metadata !30, null}
!689 = metadata !{i32 786688, metadata !30, metadata !"status", metadata !22, i32 435, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [status] [line 435]
!690 = metadata !{i32 435, i32 7, metadata !30, null}
!691 = metadata !{i32 786688, metadata !30, metadata !"n", metadata !22, i32 436, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 436]
!692 = metadata !{i32 436, i32 7, metadata !30, null}
!693 = metadata !{i32 436, i32 11, metadata !30, null}
!694 = metadata !{i32 437, i32 3, metadata !30, null}
!695 = metadata !{i32 438, i32 3, metadata !30, null}
!696 = metadata !{i32 439, i32 3, metadata !30, null}
!697 = metadata !{i32 440, i32 3, metadata !30, null}
!698 = metadata !{i32 441, i32 12, metadata !30, null}
!699 = metadata !{i32 442, i32 10, metadata !30, null}
!700 = metadata !{i32 786689, metadata !31, metadata !"L", metadata !22, i32 16777624, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 408]
!701 = metadata !{i32 408, i32 36, metadata !31, null}
!702 = metadata !{i32 786689, metadata !31, metadata !"status", metadata !22, i32 33554840, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [status] [line 408]
!703 = metadata !{i32 408, i32 43, metadata !31, null}
!704 = metadata !{i32 786689, metadata !31, metadata !"extra", metadata !22, i32 50332056, metadata !34, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [extra] [line 408]
!705 = metadata !{i32 408, i32 64, metadata !31, null}
!706 = metadata !{i32 409, i32 7, metadata !707, null}
!707 = metadata !{i32 786443, metadata !21, metadata !31, i32 409, i32 7, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lbaselib.c]
!708 = metadata !{i32 409, i32 7, metadata !709, null}
!709 = metadata !{i32 786443, metadata !21, metadata !707, i32 409, i32 7, i32 1, i32 85} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lbaselib.c]
!710 = metadata !{i32 410, i32 5, metadata !711, null}
!711 = metadata !{i32 786443, metadata !21, metadata !707, i32 409, i32 48, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lbaselib.c]
!712 = metadata !{i32 411, i32 5, metadata !711, null}
!713 = metadata !{i32 412, i32 5, metadata !711, null}
!714 = metadata !{i32 415, i32 12, metadata !707, null}
!715 = metadata !{i32 416, i32 1, metadata !31, null}
!716 = metadata !{i32 786689, metadata !40, metadata !"s", metadata !22, i32 16777264, metadata !43, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 48]
!717 = metadata !{i32 48, i32 43, metadata !40, null}
!718 = metadata !{i32 786689, metadata !40, metadata !"base", metadata !22, i32 33554480, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [base] [line 48]
!719 = metadata !{i32 48, i32 50, metadata !40, null}
!720 = metadata !{i32 786689, metadata !40, metadata !"pn", metadata !22, i32 50331696, metadata !46, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pn] [line 48]
!721 = metadata !{i32 48, i32 69, metadata !40, null}
!722 = metadata !{i32 786688, metadata !40, metadata !"n", metadata !22, i32 49, metadata !723, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 49]
!723 = metadata !{i32 786454, metadata !28, null, metadata !"lua_Unsigned", i32 96, i64 0, i64 0, i64 0, i32 0, metadata !724} ; [ DW_TAG_typedef ] [lua_Unsigned] [line 96, size 0, align 0, offset 0] [from long long unsigned int]
!724 = metadata !{i32 786468, null, null, metadata !"long long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!725 = metadata !{i32 49, i32 16, metadata !40, null}
!726 = metadata !{i32 49, i32 3, metadata !40, null}
!727 = metadata !{i32 786688, metadata !40, metadata !"neg", metadata !22, i32 50, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [neg] [line 50]
!728 = metadata !{i32 50, i32 7, metadata !40, null}
!729 = metadata !{i32 50, i32 3, metadata !40, null}
!730 = metadata !{i32 51, i32 8, metadata !40, null}
!731 = metadata !{i32 52, i32 7, metadata !732, null}
!732 = metadata !{i32 786443, metadata !21, metadata !40, i32 52, i32 7, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lbaselib.c]
!733 = metadata !{i32 52, i32 20, metadata !734, null}
!734 = metadata !{i32 786443, metadata !21, metadata !735, i32 52, i32 20, i32 1, i32 86} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lbaselib.c]
!735 = metadata !{i32 786443, metadata !21, metadata !732, i32 52, i32 18, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lbaselib.c]
!736 = metadata !{i32 52, i32 25, metadata !735, null}
!737 = metadata !{i32 52, i32 34, metadata !735, null}
!738 = metadata !{i32 53, i32 12, metadata !739, null}
!739 = metadata !{i32 786443, metadata !21, metadata !732, i32 53, i32 12, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lbaselib.c]
!740 = metadata !{i32 53, i32 23, metadata !741, null}
!741 = metadata !{i32 786443, metadata !21, metadata !739, i32 53, i32 23, i32 1, i32 87} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lbaselib.c]
!742 = metadata !{i32 54, i32 7, metadata !743, null}
!743 = metadata !{i32 786443, metadata !21, metadata !40, i32 54, i32 7, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lbaselib.c]
!744 = metadata !{i32 54, i32 8, metadata !743, null}
!745 = metadata !{i32 55, i32 5, metadata !743, null}
!746 = metadata !{i32 56, i32 3, metadata !40, null}
!747 = metadata !{i32 786688, metadata !748, metadata !"digit", metadata !22, i32 57, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [digit] [line 57]
!748 = metadata !{i32 786443, metadata !21, metadata !40, i32 56, i32 6, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lbaselib.c]
!749 = metadata !{i32 57, i32 9, metadata !748, null}
!750 = metadata !{i32 57, i32 5, metadata !748, null}
!751 = metadata !{i32 57, i32 18, metadata !748, null}
!752 = metadata !{i32 57, i32 18, metadata !753, null}
!753 = metadata !{i32 786443, metadata !21, metadata !748, i32 57, i32 18, i32 1, i32 88} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lbaselib.c]
!754 = metadata !{i32 58, i32 23, metadata !748, null} ; [ DW_TAG_imported_module ]
!755 = metadata !{i32 58, i32 23, metadata !756, null} ; [ DW_TAG_imported_module ]
!756 = metadata !{i32 786443, metadata !21, metadata !748, i32 58, i32 23, i32 1, i32 89} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lbaselib.c]
!757 = metadata !{i32 59, i32 9, metadata !758, null}
!758 = metadata !{i32 786443, metadata !21, metadata !748, i32 59, i32 9, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lbaselib.c]
!759 = metadata !{i32 59, i32 24, metadata !760, null}
!760 = metadata !{i32 786443, metadata !21, metadata !758, i32 59, i32 24, i32 1, i32 90} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lbaselib.c]
!761 = metadata !{i32 60, i32 5, metadata !748, null}
!762 = metadata !{i32 61, i32 5, metadata !748, null}
!763 = metadata !{i32 62, i32 3, metadata !748, null}
!764 = metadata !{i32 62, i32 3, metadata !765, null}
!765 = metadata !{i32 786443, metadata !21, metadata !748, i32 62, i32 3, i32 1, i32 91} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lbaselib.c]
!766 = metadata !{i32 62, i32 12, metadata !40, null}
!767 = metadata !{i32 63, i32 8, metadata !40, null}
!768 = metadata !{i32 64, i32 3, metadata !40, null}
!769 = metadata !{i32 64, i32 3, metadata !770, null}
!770 = metadata !{i32 786443, metadata !21, metadata !40, i32 64, i32 3, i32 1, i32 92} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lbaselib.c]
!771 = metadata !{i32 64, i32 3, metadata !772, null}
!772 = metadata !{i32 786443, metadata !21, metadata !40, i32 64, i32 3, i32 2, i32 93} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lbaselib.c]
!773 = metadata !{i32 64, i32 3, metadata !774, null}
!774 = metadata !{i32 786443, metadata !21, metadata !775, i32 64, i32 3, i32 4, i32 95} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lbaselib.c]
!775 = metadata !{i32 786443, metadata !21, metadata !40, i32 64, i32 3, i32 3, i32 94} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lbaselib.c]
!776 = metadata !{i32 65, i32 3, metadata !40, null}
!777 = metadata !{i32 66, i32 1, metadata !40, null}
!778 = metadata !{i32 786689, metadata !58, metadata !"L", metadata !22, i32 16777425, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 209]
!779 = metadata !{i32 209, i32 34, metadata !58, null}
!780 = metadata !{i32 786689, metadata !58, metadata !"method", metadata !22, i32 33554641, metadata !43, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [method] [line 209]
!781 = metadata !{i32 209, i32 49, metadata !58, null}
!782 = metadata !{i32 786689, metadata !58, metadata !"iszero", metadata !22, i32 50331857, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [iszero] [line 209]
!783 = metadata !{i32 209, i32 61, metadata !58, null}
!784 = metadata !{i32 786689, metadata !58, metadata !"iter", metadata !22, i32 67109074, metadata !61, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [iter] [line 210]
!785 = metadata !{i32 210, i32 37, metadata !58, null}
!786 = metadata !{i32 211, i32 7, metadata !787, null}
!787 = metadata !{i32 786443, metadata !21, metadata !58, i32 211, i32 7, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lbaselib.c]
!788 = metadata !{i32 212, i32 5, metadata !789, null}
!789 = metadata !{i32 786443, metadata !21, metadata !787, i32 211, i32 52, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lbaselib.c]
!790 = metadata !{i32 213, i32 5, metadata !789, null}
!791 = metadata !{i32 214, i32 5, metadata !789, null}
!792 = metadata !{i32 215, i32 9, metadata !793, null}
!793 = metadata !{i32 786443, metadata !21, metadata !789, i32 215, i32 9, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lbaselib.c]
!794 = metadata !{i32 215, i32 17, metadata !795, null}
!795 = metadata !{i32 786443, metadata !21, metadata !793, i32 215, i32 17, i32 1, i32 96} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lbaselib.c]
!796 = metadata !{i32 216, i32 10, metadata !793, null}
!797 = metadata !{i32 217, i32 3, metadata !789, null}
!798 = metadata !{i32 219, i32 5, metadata !799, null}
!799 = metadata !{i32 786443, metadata !21, metadata !787, i32 218, i32 8, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lbaselib.c]
!800 = metadata !{i32 220, i32 5, metadata !799, null}
!801 = metadata !{i32 222, i32 3, metadata !58, null}
!802 = metadata !{i32 786689, metadata !68, metadata !"L", metadata !22, i32 16777533, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 317]
!803 = metadata !{i32 317, i32 47, metadata !68, null}
!804 = metadata !{i32 786689, metadata !68, metadata !"ud", metadata !22, i32 33554749, metadata !71, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ud] [line 317]
!805 = metadata !{i32 317, i32 56, metadata !68, null}
!806 = metadata !{i32 786689, metadata !68, metadata !"size", metadata !22, i32 50331965, metadata !72, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 317]
!807 = metadata !{i32 317, i32 68, metadata !68, null}
!808 = metadata !{i32 318, i32 3, metadata !68, null}
!809 = metadata !{i32 319, i32 3, metadata !68, null}
!810 = metadata !{i32 320, i32 3, metadata !68, null}
!811 = metadata !{i32 321, i32 3, metadata !68, null}
!812 = metadata !{i32 322, i32 7, metadata !813, null}
!813 = metadata !{i32 786443, metadata !21, metadata !68, i32 322, i32 7, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lbaselib.c]
!814 = metadata !{i32 323, i32 5, metadata !815, null}
!815 = metadata !{i32 786443, metadata !21, metadata !813, i32 322, i32 25, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lbaselib.c]
!816 = metadata !{i32 324, i32 5, metadata !815, null}
!817 = metadata !{i32 325, i32 5, metadata !815, null}
!818 = metadata !{i32 327, i32 13, metadata !819, null}
!819 = metadata !{i32 786443, metadata !21, metadata !813, i32 327, i32 12, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lbaselib.c]
!820 = metadata !{i32 328, i32 5, metadata !819, null}
!821 = metadata !{i32 329, i32 3, metadata !68, null}
!822 = metadata !{i32 330, i32 10, metadata !68, null}
!823 = metadata !{i32 331, i32 1, metadata !68, null}
!824 = metadata !{i32 786689, metadata !65, metadata !"L", metadata !22, i32 16777486, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 270]
!825 = metadata !{i32 270, i32 33, metadata !65, null}
!826 = metadata !{i32 786689, metadata !65, metadata !"status", metadata !22, i32 33554702, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [status] [line 270]
!827 = metadata !{i32 270, i32 40, metadata !65, null}
!828 = metadata !{i32 786689, metadata !65, metadata !"envidx", metadata !22, i32 50331918, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [envidx] [line 270]
!829 = metadata !{i32 270, i32 52, metadata !65, null}
!830 = metadata !{i32 271, i32 7, metadata !831, null}
!831 = metadata !{i32 786443, metadata !21, metadata !65, i32 271, i32 7, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lbaselib.c]
!832 = metadata !{i32 272, i32 9, metadata !833, null}
!833 = metadata !{i32 786443, metadata !21, metadata !834, i32 272, i32 9, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lbaselib.c]
!834 = metadata !{i32 786443, metadata !21, metadata !831, i32 271, i32 25, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lbaselib.c]
!835 = metadata !{i32 273, i32 7, metadata !836, null}
!836 = metadata !{i32 786443, metadata !21, metadata !833, i32 272, i32 22, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lbaselib.c]
!837 = metadata !{i32 274, i32 12, metadata !838, null}
!838 = metadata !{i32 786443, metadata !21, metadata !836, i32 274, i32 11, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lbaselib.c]
!839 = metadata !{i32 275, i32 9, metadata !838, null}
!840 = metadata !{i32 276, i32 5, metadata !836, null}
!841 = metadata !{i32 277, i32 5, metadata !834, null}
!842 = metadata !{i32 280, i32 5, metadata !843, null}
!843 = metadata !{i32 786443, metadata !21, metadata !831, i32 279, i32 8, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lbaselib.c]
!844 = metadata !{i32 281, i32 5, metadata !843, null}
!845 = metadata !{i32 282, i32 5, metadata !843, null}
!846 = metadata !{i32 284, i32 1, metadata !65, null}
!847 = metadata !{i32 786689, metadata !78, metadata !"L", metadata !22, i32 16777462, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 246]
!848 = metadata !{i32 246, i32 34, metadata !78, null}
!849 = metadata !{i32 786688, metadata !78, metadata !"i", metadata !22, i32 247, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 247]
!850 = metadata !{i32 247, i32 15, metadata !78, null}
!851 = metadata !{i32 247, i32 19, metadata !78, null}
!852 = metadata !{i32 248, i32 3, metadata !78, null}
!853 = metadata !{i32 249, i32 11, metadata !78, null}
!854 = metadata !{i32 786689, metadata !82, metadata !"L", metadata !22, i32 16777572, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 356]
!855 = metadata !{i32 356, i32 35, metadata !82, null}
!856 = metadata !{i32 786689, metadata !82, metadata !"d1", metadata !22, i32 33554788, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [d1] [line 356]
!857 = metadata !{i32 356, i32 42, metadata !82, null}
!858 = metadata !{i32 786689, metadata !82, metadata !"d2", metadata !22, i32 50332004, metadata !34, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [d2] [line 356]
!859 = metadata !{i32 356, i32 59, metadata !82, null}
!860 = metadata !{i32 357, i32 3, metadata !82, null}
!861 = metadata !{i32 357, i32 14, metadata !82, null}
!862 = metadata !{i32 358, i32 10, metadata !82, null}
