; ModuleID = 'C:/Users/DevolutionX/workspace/lua/src/ldblib.c'
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-n32-S64"
target triple = "armv7--linux-gnueabihf"

%struct.luaL_Reg = type { i8*, i32 (%struct.lua_State*)* }
%struct.lua_State = type opaque
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i32, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i32, i32, [40 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.lua_Debug = type { i32, i8*, i8*, i8*, i8*, i32, i32, i32, i8, i8, i8, i8, [60 x i8], %struct.CallInfo* }
%struct.CallInfo = type opaque

@dblib = internal constant [17 x %struct.luaL_Reg] [%struct.luaL_Reg { i8* getelementptr inbounds ([6 x i8]* @.str, i32 0, i32 0), i32 (%struct.lua_State*)* @db_debug }, %struct.luaL_Reg { i8* getelementptr inbounds ([13 x i8]* @.str1, i32 0, i32 0), i32 (%struct.lua_State*)* @db_getuservalue }, %struct.luaL_Reg { i8* getelementptr inbounds ([8 x i8]* @.str2, i32 0, i32 0), i32 (%struct.lua_State*)* @db_gethook }, %struct.luaL_Reg { i8* getelementptr inbounds ([8 x i8]* @.str3, i32 0, i32 0), i32 (%struct.lua_State*)* @db_getinfo }, %struct.luaL_Reg { i8* getelementptr inbounds ([9 x i8]* @.str4, i32 0, i32 0), i32 (%struct.lua_State*)* @db_getlocal }, %struct.luaL_Reg { i8* getelementptr inbounds ([12 x i8]* @.str5, i32 0, i32 0), i32 (%struct.lua_State*)* @db_getregistry }, %struct.luaL_Reg { i8* getelementptr inbounds ([13 x i8]* @.str6, i32 0, i32 0), i32 (%struct.lua_State*)* @db_getmetatable }, %struct.luaL_Reg { i8* getelementptr inbounds ([11 x i8]* @.str7, i32 0, i32 0), i32 (%struct.lua_State*)* @db_getupvalue }, %struct.luaL_Reg { i8* getelementptr inbounds ([12 x i8]* @.str8, i32 0, i32 0), i32 (%struct.lua_State*)* @db_upvaluejoin }, %struct.luaL_Reg { i8* getelementptr inbounds ([10 x i8]* @.str9, i32 0, i32 0), i32 (%struct.lua_State*)* @db_upvalueid }, %struct.luaL_Reg { i8* getelementptr inbounds ([13 x i8]* @.str10, i32 0, i32 0), i32 (%struct.lua_State*)* @db_setuservalue }, %struct.luaL_Reg { i8* getelementptr inbounds ([8 x i8]* @.str11, i32 0, i32 0), i32 (%struct.lua_State*)* @db_sethook }, %struct.luaL_Reg { i8* getelementptr inbounds ([9 x i8]* @.str12, i32 0, i32 0), i32 (%struct.lua_State*)* @db_setlocal }, %struct.luaL_Reg { i8* getelementptr inbounds ([13 x i8]* @.str13, i32 0, i32 0), i32 (%struct.lua_State*)* @db_setmetatable }, %struct.luaL_Reg { i8* getelementptr inbounds ([11 x i8]* @.str14, i32 0, i32 0), i32 (%struct.lua_State*)* @db_setupvalue }, %struct.luaL_Reg { i8* getelementptr inbounds ([10 x i8]* @.str15, i32 0, i32 0), i32 (%struct.lua_State*)* @db_traceback }, %struct.luaL_Reg zeroinitializer], align 4
@.str = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@.str1 = private unnamed_addr constant [13 x i8] c"getuservalue\00", align 1
@.str2 = private unnamed_addr constant [8 x i8] c"gethook\00", align 1
@.str3 = private unnamed_addr constant [8 x i8] c"getinfo\00", align 1
@.str4 = private unnamed_addr constant [9 x i8] c"getlocal\00", align 1
@.str5 = private unnamed_addr constant [12 x i8] c"getregistry\00", align 1
@.str6 = private unnamed_addr constant [13 x i8] c"getmetatable\00", align 1
@.str7 = private unnamed_addr constant [11 x i8] c"getupvalue\00", align 1
@.str8 = private unnamed_addr constant [12 x i8] c"upvaluejoin\00", align 1
@.str9 = private unnamed_addr constant [10 x i8] c"upvalueid\00", align 1
@.str10 = private unnamed_addr constant [13 x i8] c"setuservalue\00", align 1
@.str11 = private unnamed_addr constant [8 x i8] c"sethook\00", align 1
@.str12 = private unnamed_addr constant [9 x i8] c"setlocal\00", align 1
@.str13 = private unnamed_addr constant [13 x i8] c"setmetatable\00", align 1
@.str14 = private unnamed_addr constant [11 x i8] c"setupvalue\00", align 1
@.str15 = private unnamed_addr constant [10 x i8] c"traceback\00", align 1
@.str16 = private unnamed_addr constant [22 x i8] c"nil or table expected\00", align 1
@.str17 = private unnamed_addr constant [19 x i8] c"level out of range\00", align 1
@.str18 = private unnamed_addr constant [15 x i8] c"stack overflow\00", align 1
@HOOKKEY = internal constant i32 0, align 4
@.str19 = private unnamed_addr constant [2 x i8] c"k\00", align 1
@.str20 = private unnamed_addr constant [7 x i8] c"__mode\00", align 1
@hookf.hooknames = internal constant [5 x i8*] [i8* getelementptr inbounds ([5 x i8]* @.str21, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str22, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str23, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str24, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @.str25, i32 0, i32 0)], align 4
@.str21 = private unnamed_addr constant [5 x i8] c"call\00", align 1
@.str22 = private unnamed_addr constant [7 x i8] c"return\00", align 1
@.str23 = private unnamed_addr constant [5 x i8] c"line\00", align 1
@.str24 = private unnamed_addr constant [6 x i8] c"count\00", align 1
@.str25 = private unnamed_addr constant [10 x i8] c"tail call\00", align 1
@.str26 = private unnamed_addr constant [22 x i8] c"invalid upvalue index\00", align 1
@.str27 = private unnamed_addr constant [22 x i8] c"Lua function expected\00", align 1
@.str28 = private unnamed_addr constant [7 x i8] c"flnStu\00", align 1
@.str29 = private unnamed_addr constant [4 x i8] c">%s\00", align 1
@.str30 = private unnamed_addr constant [15 x i8] c"invalid option\00", align 1
@.str31 = private unnamed_addr constant [7 x i8] c"source\00", align 1
@.str32 = private unnamed_addr constant [10 x i8] c"short_src\00", align 1
@.str33 = private unnamed_addr constant [12 x i8] c"linedefined\00", align 1
@.str34 = private unnamed_addr constant [16 x i8] c"lastlinedefined\00", align 1
@.str35 = private unnamed_addr constant [5 x i8] c"what\00", align 1
@.str36 = private unnamed_addr constant [12 x i8] c"currentline\00", align 1
@.str37 = private unnamed_addr constant [5 x i8] c"nups\00", align 1
@.str38 = private unnamed_addr constant [8 x i8] c"nparams\00", align 1
@.str39 = private unnamed_addr constant [9 x i8] c"isvararg\00", align 1
@.str40 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str41 = private unnamed_addr constant [9 x i8] c"namewhat\00", align 1
@.str42 = private unnamed_addr constant [11 x i8] c"istailcall\00", align 1
@.str43 = private unnamed_addr constant [12 x i8] c"activelines\00", align 1
@.str44 = private unnamed_addr constant [5 x i8] c"func\00", align 1
@.str45 = private unnamed_addr constant [14 x i8] c"external hook\00", align 1
@stderr = external global %struct._IO_FILE*
@.str46 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str47 = private unnamed_addr constant [12 x i8] c"lua_debug> \00", align 1
@stdin = external global %struct._IO_FILE*
@.str48 = private unnamed_addr constant [6 x i8] c"cont\0A\00", align 1
@.str49 = private unnamed_addr constant [17 x i8] c"=(debug command)\00", align 1
@.str50 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: nounwind
define i32 @luaopen_debug(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !341), !dbg !342
  %2 = load %struct.lua_State** %1, align 4, !dbg !343
  call void @luaL_checkversion_(%struct.lua_State* %2, double 5.030000e+02, i32 136), !dbg !343
  %3 = load %struct.lua_State** %1, align 4, !dbg !343
  call void @lua_createtable(%struct.lua_State* %3, i32 0, i32 16), !dbg !343
  %4 = load %struct.lua_State** %1, align 4, !dbg !343
  call void @luaL_setfuncs(%struct.lua_State* %4, %struct.luaL_Reg* getelementptr inbounds ([17 x %struct.luaL_Reg]* @dblib, i32 0, i32 0), i32 0), !dbg !343
  ret i32 1, !dbg !344
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

declare void @luaL_checkversion_(%struct.lua_State*, double, i32) #2

declare void @lua_createtable(%struct.lua_State*, i32, i32) #2

declare void @luaL_setfuncs(%struct.lua_State*, %struct.luaL_Reg*, i32) #2

; Function Attrs: nounwind
define internal i32 @db_debug(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %buffer = alloca [250 x i8], align 1
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !345), !dbg !346
  br label %2, !dbg !347

; <label>:2                                       ; preds = %34, %0
  call void @llvm.dbg.declare(metadata !{[250 x i8]* %buffer}, metadata !349), !dbg !354
  %3 = load %struct._IO_FILE** @stderr, align 4, !dbg !355
  %4 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([3 x i8]* @.str46, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8]* @.str47, i32 0, i32 0)), !dbg !355
  %5 = load %struct._IO_FILE** @stderr, align 4, !dbg !355
  %6 = call i32 @fflush(%struct._IO_FILE* %5), !dbg !355
  %7 = getelementptr inbounds [250 x i8]* %buffer, i32 0, i32 0, !dbg !356
  %8 = load %struct._IO_FILE** @stdin, align 4, !dbg !356
  %9 = call i8* @fgets(i8* %7, i32 250, %struct._IO_FILE* %8), !dbg !356
  %10 = icmp eq i8* %9, null, !dbg !356
  br i1 %10, label %15, label %11, !dbg !356

; <label>:11                                      ; preds = %2
  %12 = getelementptr inbounds [250 x i8]* %buffer, i32 0, i32 0, !dbg !358
  %13 = call i32 @strcmp(i8* %12, i8* getelementptr inbounds ([6 x i8]* @.str48, i32 0, i32 0)) #4, !dbg !358
  %14 = icmp eq i32 %13, 0, !dbg !358
  br i1 %14, label %15, label %16, !dbg !358

; <label>:15                                      ; preds = %11, %2
  ret i32 0, !dbg !359

; <label>:16                                      ; preds = %11
  %17 = load %struct.lua_State** %1, align 4, !dbg !360
  %18 = getelementptr inbounds [250 x i8]* %buffer, i32 0, i32 0, !dbg !360
  %19 = getelementptr inbounds [250 x i8]* %buffer, i32 0, i32 0, !dbg !360
  %20 = call i32 @strlen(i8* %19) #4, !dbg !360
  %21 = call i32 @luaL_loadbufferx(%struct.lua_State* %17, i8* %18, i32 %20, i8* getelementptr inbounds ([17 x i8]* @.str49, i32 0, i32 0), i8* null), !dbg !360
  %22 = icmp ne i32 %21, 0, !dbg !360
  br i1 %22, label %27, label %23, !dbg !360

; <label>:23                                      ; preds = %16
  %24 = load %struct.lua_State** %1, align 4, !dbg !362
  %25 = call i32 @lua_pcallk(%struct.lua_State* %24, i32 0, i32 0, i32 0, i32 0, i32 (%struct.lua_State*, i32, i32)* null), !dbg !362
  %26 = icmp ne i32 %25, 0, !dbg !362
  br i1 %26, label %27, label %34, !dbg !362

; <label>:27                                      ; preds = %23, %16
  %28 = load %struct._IO_FILE** @stderr, align 4, !dbg !363
  %29 = load %struct.lua_State** %1, align 4, !dbg !363
  %30 = call i8* @lua_tolstring(%struct.lua_State* %29, i32 -1, i32* null), !dbg !363
  %31 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %28, i8* getelementptr inbounds ([4 x i8]* @.str50, i32 0, i32 0), i8* %30), !dbg !363
  %32 = load %struct._IO_FILE** @stderr, align 4, !dbg !363
  %33 = call i32 @fflush(%struct._IO_FILE* %32), !dbg !363
  br label %34, !dbg !363

; <label>:34                                      ; preds = %27, %23
  %35 = load %struct.lua_State** %1, align 4, !dbg !364
  call void @lua_settop(%struct.lua_State* %35, i32 0), !dbg !364
  br label %2, !dbg !365
}

; Function Attrs: nounwind
define internal i32 @db_getuservalue(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !366), !dbg !367
  %2 = load %struct.lua_State** %1, align 4, !dbg !368
  %3 = call i32 @lua_type(%struct.lua_State* %2, i32 1), !dbg !368
  %4 = icmp ne i32 %3, 7, !dbg !368
  br i1 %4, label %5, label %7, !dbg !368

; <label>:5                                       ; preds = %0
  %6 = load %struct.lua_State** %1, align 4, !dbg !370
  call void @lua_pushnil(%struct.lua_State* %6), !dbg !370
  br label %10, !dbg !370

; <label>:7                                       ; preds = %0
  %8 = load %struct.lua_State** %1, align 4, !dbg !371
  %9 = call i32 @lua_getuservalue(%struct.lua_State* %8, i32 1), !dbg !371
  br label %10

; <label>:10                                      ; preds = %7, %5
  ret i32 1, !dbg !372
}

; Function Attrs: nounwind
define internal i32 @db_gethook(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %arg = alloca i32, align 4
  %L1 = alloca %struct.lua_State*, align 4
  %buff = alloca [5 x i8], align 1
  %mask = alloca i32, align 4
  %hook = alloca void (%struct.lua_State*, %struct.lua_Debug*)*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !373), !dbg !374
  call void @llvm.dbg.declare(metadata !{i32* %arg}, metadata !375), !dbg !376
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %L1}, metadata !377), !dbg !378
  %2 = load %struct.lua_State** %1, align 4, !dbg !379
  %3 = call %struct.lua_State* @getthread(%struct.lua_State* %2, i32* %arg), !dbg !379
  store %struct.lua_State* %3, %struct.lua_State** %L1, align 4, !dbg !379
  call void @llvm.dbg.declare(metadata !{[5 x i8]* %buff}, metadata !380), !dbg !382
  call void @llvm.dbg.declare(metadata !{i32* %mask}, metadata !383), !dbg !384
  %4 = load %struct.lua_State** %L1, align 4, !dbg !385
  %5 = call i32 @lua_gethookmask(%struct.lua_State* %4), !dbg !385
  store i32 %5, i32* %mask, align 4, !dbg !385
  call void @llvm.dbg.declare(metadata !{void (%struct.lua_State*, %struct.lua_Debug*)** %hook}, metadata !386), !dbg !389
  %6 = load %struct.lua_State** %L1, align 4, !dbg !390
  %7 = call void (%struct.lua_State*, %struct.lua_Debug*)* (%struct.lua_State*)* @lua_gethook(%struct.lua_State* %6), !dbg !390
  store void (%struct.lua_State*, %struct.lua_Debug*)* %7, void (%struct.lua_State*, %struct.lua_Debug*)** %hook, align 4, !dbg !390
  %8 = load void (%struct.lua_State*, %struct.lua_Debug*)** %hook, align 4, !dbg !391
  %9 = icmp eq void (%struct.lua_State*, %struct.lua_Debug*)* %8, null, !dbg !391
  br i1 %9, label %10, label %12, !dbg !391

; <label>:10                                      ; preds = %0
  %11 = load %struct.lua_State** %1, align 4, !dbg !393
  call void @lua_pushnil(%struct.lua_State* %11), !dbg !393
  br label %32, !dbg !393

; <label>:12                                      ; preds = %0
  %13 = load void (%struct.lua_State*, %struct.lua_Debug*)** %hook, align 4, !dbg !394
  %14 = icmp ne void (%struct.lua_State*, %struct.lua_Debug*)* %13, @hookf, !dbg !394
  br i1 %14, label %15, label %18, !dbg !394

; <label>:15                                      ; preds = %12
  %16 = load %struct.lua_State** %1, align 4, !dbg !396
  %17 = call i8* @lua_pushstring(%struct.lua_State* %16, i8* getelementptr inbounds ([14 x i8]* @.str45, i32 0, i32 0)), !dbg !396
  br label %31, !dbg !396

; <label>:18                                      ; preds = %12
  %19 = load %struct.lua_State** %1, align 4, !dbg !397
  %20 = call i32 @lua_rawgetp(%struct.lua_State* %19, i32 -1001000, i8* bitcast (i32* @HOOKKEY to i8*)), !dbg !397
  %21 = load %struct.lua_State** %1, align 4, !dbg !399
  %22 = load %struct.lua_State** %L1, align 4, !dbg !399
  call void @checkstack(%struct.lua_State* %21, %struct.lua_State* %22, i32 1), !dbg !399
  %23 = load %struct.lua_State** %L1, align 4, !dbg !400
  %24 = call i32 @lua_pushthread(%struct.lua_State* %23), !dbg !400
  %25 = load %struct.lua_State** %L1, align 4, !dbg !401
  %26 = load %struct.lua_State** %1, align 4, !dbg !401
  call void @lua_xmove(%struct.lua_State* %25, %struct.lua_State* %26, i32 1), !dbg !401
  %27 = load %struct.lua_State** %1, align 4, !dbg !402
  %28 = call i32 @lua_rawget(%struct.lua_State* %27, i32 -2), !dbg !402
  %29 = load %struct.lua_State** %1, align 4, !dbg !403
  call void @lua_rotate(%struct.lua_State* %29, i32 -2, i32 -1), !dbg !403
  %30 = load %struct.lua_State** %1, align 4, !dbg !403
  call void @lua_settop(%struct.lua_State* %30, i32 -2), !dbg !403
  br label %31

; <label>:31                                      ; preds = %18, %15
  br label %32

; <label>:32                                      ; preds = %31, %10
  %33 = load %struct.lua_State** %1, align 4, !dbg !404
  %34 = load i32* %mask, align 4, !dbg !405
  %35 = getelementptr inbounds [5 x i8]* %buff, i32 0, i32 0, !dbg !405
  %36 = call i8* @unmakemask(i32 %34, i8* %35), !dbg !405
  %37 = call i8* @lua_pushstring(%struct.lua_State* %33, i8* %36), !dbg !404
  %38 = load %struct.lua_State** %1, align 4, !dbg !406
  %39 = load %struct.lua_State** %L1, align 4, !dbg !407
  %40 = call i32 @lua_gethookcount(%struct.lua_State* %39), !dbg !407
  %41 = sext i32 %40 to i64, !dbg !407
  call void @lua_pushinteger(%struct.lua_State* %38, i64 %41), !dbg !406
  ret i32 3, !dbg !408
}

; Function Attrs: nounwind
define internal i32 @db_getinfo(%struct.lua_State* %L) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.lua_State*, align 4
  %ar = alloca %struct.lua_Debug, align 4
  %arg = alloca i32, align 4
  %L1 = alloca %struct.lua_State*, align 4
  %options = alloca i8*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %2}, metadata !409), !dbg !410
  call void @llvm.dbg.declare(metadata !{%struct.lua_Debug* %ar}, metadata !411), !dbg !412
  call void @llvm.dbg.declare(metadata !{i32* %arg}, metadata !413), !dbg !414
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %L1}, metadata !415), !dbg !416
  %3 = load %struct.lua_State** %2, align 4, !dbg !417
  %4 = call %struct.lua_State* @getthread(%struct.lua_State* %3, i32* %arg), !dbg !417
  store %struct.lua_State* %4, %struct.lua_State** %L1, align 4, !dbg !417
  call void @llvm.dbg.declare(metadata !{i8** %options}, metadata !418), !dbg !419
  %5 = load %struct.lua_State** %2, align 4, !dbg !420
  %6 = load i32* %arg, align 4, !dbg !420
  %7 = add nsw i32 %6, 2, !dbg !420
  %8 = call i8* @luaL_optlstring(%struct.lua_State* %5, i32 %7, i8* getelementptr inbounds ([7 x i8]* @.str28, i32 0, i32 0), i32* null), !dbg !420
  store i8* %8, i8** %options, align 4, !dbg !420
  %9 = load %struct.lua_State** %2, align 4, !dbg !421
  %10 = load %struct.lua_State** %L1, align 4, !dbg !421
  call void @checkstack(%struct.lua_State* %9, %struct.lua_State* %10, i32 3), !dbg !421
  %11 = load %struct.lua_State** %2, align 4, !dbg !422
  %12 = load i32* %arg, align 4, !dbg !422
  %13 = add nsw i32 %12, 1, !dbg !422
  %14 = call i32 @lua_type(%struct.lua_State* %11, i32 %13), !dbg !422
  %15 = icmp eq i32 %14, 6, !dbg !422
  br i1 %15, label %16, label %25, !dbg !422

; <label>:16                                      ; preds = %0
  %17 = load %struct.lua_State** %2, align 4, !dbg !424
  %18 = load i8** %options, align 4, !dbg !424
  %19 = call i8* (%struct.lua_State*, i8*, ...)* @lua_pushfstring(%struct.lua_State* %17, i8* getelementptr inbounds ([4 x i8]* @.str29, i32 0, i32 0), i8* %18), !dbg !424
  store i8* %19, i8** %options, align 4, !dbg !424
  %20 = load %struct.lua_State** %2, align 4, !dbg !426
  %21 = load i32* %arg, align 4, !dbg !426
  %22 = add nsw i32 %21, 1, !dbg !426
  call void @lua_pushvalue(%struct.lua_State* %20, i32 %22), !dbg !426
  %23 = load %struct.lua_State** %2, align 4, !dbg !427
  %24 = load %struct.lua_State** %L1, align 4, !dbg !427
  call void @lua_xmove(%struct.lua_State* %23, %struct.lua_State* %24, i32 1), !dbg !427
  br label %37, !dbg !428

; <label>:25                                      ; preds = %0
  %26 = load %struct.lua_State** %L1, align 4, !dbg !429
  %27 = load %struct.lua_State** %2, align 4, !dbg !432
  %28 = load i32* %arg, align 4, !dbg !432
  %29 = add nsw i32 %28, 1, !dbg !432
  %30 = call i64 @luaL_checkinteger(%struct.lua_State* %27, i32 %29), !dbg !432
  %31 = trunc i64 %30 to i32, !dbg !432
  %32 = call i32 @lua_getstack(%struct.lua_State* %26, i32 %31, %struct.lua_Debug* %ar), !dbg !429
  %33 = icmp ne i32 %32, 0, !dbg !429
  br i1 %33, label %36, label %34, !dbg !429

; <label>:34                                      ; preds = %25
  %35 = load %struct.lua_State** %2, align 4, !dbg !433
  call void @lua_pushnil(%struct.lua_State* %35), !dbg !433
  store i32 1, i32* %1, !dbg !435
  br label %128, !dbg !435

; <label>:36                                      ; preds = %25
  br label %37

; <label>:37                                      ; preds = %36, %16
  %38 = load %struct.lua_State** %L1, align 4, !dbg !436
  %39 = load i8** %options, align 4, !dbg !436
  %40 = call i32 @lua_getinfo(%struct.lua_State* %38, i8* %39, %struct.lua_Debug* %ar), !dbg !436
  %41 = icmp ne i32 %40, 0, !dbg !436
  br i1 %41, label %47, label %42, !dbg !436

; <label>:42                                      ; preds = %37
  %43 = load %struct.lua_State** %2, align 4, !dbg !438
  %44 = load i32* %arg, align 4, !dbg !438
  %45 = add nsw i32 %44, 2, !dbg !438
  %46 = call i32 @luaL_argerror(%struct.lua_State* %43, i32 %45, i8* getelementptr inbounds ([15 x i8]* @.str30, i32 0, i32 0)), !dbg !438
  store i32 %46, i32* %1, !dbg !438
  br label %128, !dbg !438

; <label>:47                                      ; preds = %37
  %48 = load %struct.lua_State** %2, align 4, !dbg !439
  call void @lua_createtable(%struct.lua_State* %48, i32 0, i32 0), !dbg !439
  %49 = load i8** %options, align 4, !dbg !440
  %50 = call i8* @strchr(i8* %49, i32 83) #4, !dbg !440
  %51 = icmp ne i8* %50, null, !dbg !440
  br i1 %51, label %52, label %68, !dbg !440

; <label>:52                                      ; preds = %47
  %53 = load %struct.lua_State** %2, align 4, !dbg !442
  %54 = getelementptr inbounds %struct.lua_Debug* %ar, i32 0, i32 4, !dbg !442
  %55 = load i8** %54, align 4, !dbg !442
  call void @settabss(%struct.lua_State* %53, i8* getelementptr inbounds ([7 x i8]* @.str31, i32 0, i32 0), i8* %55), !dbg !442
  %56 = load %struct.lua_State** %2, align 4, !dbg !444
  %57 = getelementptr inbounds %struct.lua_Debug* %ar, i32 0, i32 12, !dbg !444
  %58 = getelementptr inbounds [60 x i8]* %57, i32 0, i32 0, !dbg !444
  call void @settabss(%struct.lua_State* %56, i8* getelementptr inbounds ([10 x i8]* @.str32, i32 0, i32 0), i8* %58), !dbg !444
  %59 = load %struct.lua_State** %2, align 4, !dbg !445
  %60 = getelementptr inbounds %struct.lua_Debug* %ar, i32 0, i32 6, !dbg !445
  %61 = load i32* %60, align 4, !dbg !445
  call void @settabsi(%struct.lua_State* %59, i8* getelementptr inbounds ([12 x i8]* @.str33, i32 0, i32 0), i32 %61), !dbg !445
  %62 = load %struct.lua_State** %2, align 4, !dbg !446
  %63 = getelementptr inbounds %struct.lua_Debug* %ar, i32 0, i32 7, !dbg !446
  %64 = load i32* %63, align 4, !dbg !446
  call void @settabsi(%struct.lua_State* %62, i8* getelementptr inbounds ([16 x i8]* @.str34, i32 0, i32 0), i32 %64), !dbg !446
  %65 = load %struct.lua_State** %2, align 4, !dbg !447
  %66 = getelementptr inbounds %struct.lua_Debug* %ar, i32 0, i32 3, !dbg !447
  %67 = load i8** %66, align 4, !dbg !447
  call void @settabss(%struct.lua_State* %65, i8* getelementptr inbounds ([5 x i8]* @.str35, i32 0, i32 0), i8* %67), !dbg !447
  br label %68, !dbg !448

; <label>:68                                      ; preds = %52, %47
  %69 = load i8** %options, align 4, !dbg !449
  %70 = call i8* @strchr(i8* %69, i32 108) #4, !dbg !449
  %71 = icmp ne i8* %70, null, !dbg !449
  br i1 %71, label %72, label %76, !dbg !449

; <label>:72                                      ; preds = %68
  %73 = load %struct.lua_State** %2, align 4, !dbg !451
  %74 = getelementptr inbounds %struct.lua_Debug* %ar, i32 0, i32 5, !dbg !451
  %75 = load i32* %74, align 4, !dbg !451
  call void @settabsi(%struct.lua_State* %73, i8* getelementptr inbounds ([12 x i8]* @.str36, i32 0, i32 0), i32 %75), !dbg !451
  br label %76, !dbg !451

; <label>:76                                      ; preds = %72, %68
  %77 = load i8** %options, align 4, !dbg !452
  %78 = call i8* @strchr(i8* %77, i32 117) #4, !dbg !452
  %79 = icmp ne i8* %78, null, !dbg !452
  br i1 %79, label %80, label %93, !dbg !452

; <label>:80                                      ; preds = %76
  %81 = load %struct.lua_State** %2, align 4, !dbg !454
  %82 = getelementptr inbounds %struct.lua_Debug* %ar, i32 0, i32 8, !dbg !454
  %83 = load i8* %82, align 1, !dbg !454
  %84 = zext i8 %83 to i32, !dbg !454
  call void @settabsi(%struct.lua_State* %81, i8* getelementptr inbounds ([5 x i8]* @.str37, i32 0, i32 0), i32 %84), !dbg !454
  %85 = load %struct.lua_State** %2, align 4, !dbg !456
  %86 = getelementptr inbounds %struct.lua_Debug* %ar, i32 0, i32 9, !dbg !456
  %87 = load i8* %86, align 1, !dbg !456
  %88 = zext i8 %87 to i32, !dbg !456
  call void @settabsi(%struct.lua_State* %85, i8* getelementptr inbounds ([8 x i8]* @.str38, i32 0, i32 0), i32 %88), !dbg !456
  %89 = load %struct.lua_State** %2, align 4, !dbg !457
  %90 = getelementptr inbounds %struct.lua_Debug* %ar, i32 0, i32 10, !dbg !457
  %91 = load i8* %90, align 1, !dbg !457
  %92 = zext i8 %91 to i32, !dbg !457
  call void @settabsb(%struct.lua_State* %89, i8* getelementptr inbounds ([9 x i8]* @.str39, i32 0, i32 0), i32 %92), !dbg !457
  br label %93, !dbg !458

; <label>:93                                      ; preds = %80, %76
  %94 = load i8** %options, align 4, !dbg !459
  %95 = call i8* @strchr(i8* %94, i32 110) #4, !dbg !459
  %96 = icmp ne i8* %95, null, !dbg !459
  br i1 %96, label %97, label %104, !dbg !459

; <label>:97                                      ; preds = %93
  %98 = load %struct.lua_State** %2, align 4, !dbg !461
  %99 = getelementptr inbounds %struct.lua_Debug* %ar, i32 0, i32 1, !dbg !461
  %100 = load i8** %99, align 4, !dbg !461
  call void @settabss(%struct.lua_State* %98, i8* getelementptr inbounds ([5 x i8]* @.str40, i32 0, i32 0), i8* %100), !dbg !461
  %101 = load %struct.lua_State** %2, align 4, !dbg !463
  %102 = getelementptr inbounds %struct.lua_Debug* %ar, i32 0, i32 2, !dbg !463
  %103 = load i8** %102, align 4, !dbg !463
  call void @settabss(%struct.lua_State* %101, i8* getelementptr inbounds ([9 x i8]* @.str41, i32 0, i32 0), i8* %103), !dbg !463
  br label %104, !dbg !464

; <label>:104                                     ; preds = %97, %93
  %105 = load i8** %options, align 4, !dbg !465
  %106 = call i8* @strchr(i8* %105, i32 116) #4, !dbg !465
  %107 = icmp ne i8* %106, null, !dbg !465
  br i1 %107, label %108, label %113, !dbg !465

; <label>:108                                     ; preds = %104
  %109 = load %struct.lua_State** %2, align 4, !dbg !467
  %110 = getelementptr inbounds %struct.lua_Debug* %ar, i32 0, i32 11, !dbg !467
  %111 = load i8* %110, align 1, !dbg !467
  %112 = zext i8 %111 to i32, !dbg !467
  call void @settabsb(%struct.lua_State* %109, i8* getelementptr inbounds ([11 x i8]* @.str42, i32 0, i32 0), i32 %112), !dbg !467
  br label %113, !dbg !467

; <label>:113                                     ; preds = %108, %104
  %114 = load i8** %options, align 4, !dbg !468
  %115 = call i8* @strchr(i8* %114, i32 76) #4, !dbg !468
  %116 = icmp ne i8* %115, null, !dbg !468
  br i1 %116, label %117, label %120, !dbg !468

; <label>:117                                     ; preds = %113
  %118 = load %struct.lua_State** %2, align 4, !dbg !470
  %119 = load %struct.lua_State** %L1, align 4, !dbg !470
  call void @treatstackoption(%struct.lua_State* %118, %struct.lua_State* %119, i8* getelementptr inbounds ([12 x i8]* @.str43, i32 0, i32 0)), !dbg !470
  br label %120, !dbg !470

; <label>:120                                     ; preds = %117, %113
  %121 = load i8** %options, align 4, !dbg !471
  %122 = call i8* @strchr(i8* %121, i32 102) #4, !dbg !471
  %123 = icmp ne i8* %122, null, !dbg !471
  br i1 %123, label %124, label %127, !dbg !471

; <label>:124                                     ; preds = %120
  %125 = load %struct.lua_State** %2, align 4, !dbg !473
  %126 = load %struct.lua_State** %L1, align 4, !dbg !473
  call void @treatstackoption(%struct.lua_State* %125, %struct.lua_State* %126, i8* getelementptr inbounds ([5 x i8]* @.str44, i32 0, i32 0)), !dbg !473
  br label %127, !dbg !473

; <label>:127                                     ; preds = %124, %120
  store i32 1, i32* %1, !dbg !474
  br label %128, !dbg !474

; <label>:128                                     ; preds = %127, %42, %34
  %129 = load i32* %1, !dbg !475
  ret i32 %129, !dbg !475
}

; Function Attrs: nounwind
define internal i32 @db_getlocal(%struct.lua_State* %L) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.lua_State*, align 4
  %arg = alloca i32, align 4
  %L1 = alloca %struct.lua_State*, align 4
  %ar = alloca %struct.lua_Debug, align 4
  %name = alloca i8*, align 4
  %nvar = alloca i32, align 4
  %level = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %2}, metadata !476), !dbg !477
  call void @llvm.dbg.declare(metadata !{i32* %arg}, metadata !478), !dbg !479
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %L1}, metadata !480), !dbg !481
  %3 = load %struct.lua_State** %2, align 4, !dbg !482
  %4 = call %struct.lua_State* @getthread(%struct.lua_State* %3, i32* %arg), !dbg !482
  store %struct.lua_State* %4, %struct.lua_State** %L1, align 4, !dbg !482
  call void @llvm.dbg.declare(metadata !{%struct.lua_Debug* %ar}, metadata !483), !dbg !484
  call void @llvm.dbg.declare(metadata !{i8** %name}, metadata !485), !dbg !486
  call void @llvm.dbg.declare(metadata !{i32* %nvar}, metadata !487), !dbg !488
  %5 = load %struct.lua_State** %2, align 4, !dbg !489
  %6 = load i32* %arg, align 4, !dbg !489
  %7 = add nsw i32 %6, 2, !dbg !489
  %8 = call i64 @luaL_checkinteger(%struct.lua_State* %5, i32 %7), !dbg !489
  %9 = trunc i64 %8 to i32, !dbg !489
  store i32 %9, i32* %nvar, align 4, !dbg !489
  %10 = load %struct.lua_State** %2, align 4, !dbg !490
  %11 = load i32* %arg, align 4, !dbg !490
  %12 = add nsw i32 %11, 1, !dbg !490
  %13 = call i32 @lua_type(%struct.lua_State* %10, i32 %12), !dbg !490
  %14 = icmp eq i32 %13, 6, !dbg !490
  br i1 %14, label %15, label %24, !dbg !490

; <label>:15                                      ; preds = %0
  %16 = load %struct.lua_State** %2, align 4, !dbg !492
  %17 = load i32* %arg, align 4, !dbg !492
  %18 = add nsw i32 %17, 1, !dbg !492
  call void @lua_pushvalue(%struct.lua_State* %16, i32 %18), !dbg !492
  %19 = load %struct.lua_State** %2, align 4, !dbg !494
  %20 = load %struct.lua_State** %2, align 4, !dbg !495
  %21 = load i32* %nvar, align 4, !dbg !495
  %22 = call i8* @lua_getlocal(%struct.lua_State* %20, %struct.lua_Debug* null, i32 %21), !dbg !495
  %23 = call i8* @lua_pushstring(%struct.lua_State* %19, i8* %22), !dbg !494
  store i32 1, i32* %1, !dbg !496
  br label %56, !dbg !496

; <label>:24                                      ; preds = %0
  call void @llvm.dbg.declare(metadata !{i32* %level}, metadata !497), !dbg !499
  %25 = load %struct.lua_State** %2, align 4, !dbg !500
  %26 = load i32* %arg, align 4, !dbg !500
  %27 = add nsw i32 %26, 1, !dbg !500
  %28 = call i64 @luaL_checkinteger(%struct.lua_State* %25, i32 %27), !dbg !500
  %29 = trunc i64 %28 to i32, !dbg !500
  store i32 %29, i32* %level, align 4, !dbg !500
  %30 = load %struct.lua_State** %L1, align 4, !dbg !501
  %31 = load i32* %level, align 4, !dbg !501
  %32 = call i32 @lua_getstack(%struct.lua_State* %30, i32 %31, %struct.lua_Debug* %ar), !dbg !501
  %33 = icmp ne i32 %32, 0, !dbg !501
  br i1 %33, label %39, label %34, !dbg !501

; <label>:34                                      ; preds = %24
  %35 = load %struct.lua_State** %2, align 4, !dbg !503
  %36 = load i32* %arg, align 4, !dbg !503
  %37 = add nsw i32 %36, 1, !dbg !503
  %38 = call i32 @luaL_argerror(%struct.lua_State* %35, i32 %37, i8* getelementptr inbounds ([19 x i8]* @.str17, i32 0, i32 0)), !dbg !503
  store i32 %38, i32* %1, !dbg !503
  br label %56, !dbg !503

; <label>:39                                      ; preds = %24
  %40 = load %struct.lua_State** %2, align 4, !dbg !504
  %41 = load %struct.lua_State** %L1, align 4, !dbg !504
  call void @checkstack(%struct.lua_State* %40, %struct.lua_State* %41, i32 1), !dbg !504
  %42 = load %struct.lua_State** %L1, align 4, !dbg !505
  %43 = load i32* %nvar, align 4, !dbg !505
  %44 = call i8* @lua_getlocal(%struct.lua_State* %42, %struct.lua_Debug* %ar, i32 %43), !dbg !505
  store i8* %44, i8** %name, align 4, !dbg !505
  %45 = load i8** %name, align 4, !dbg !506
  %46 = icmp ne i8* %45, null, !dbg !506
  br i1 %46, label %47, label %54, !dbg !506

; <label>:47                                      ; preds = %39
  %48 = load %struct.lua_State** %L1, align 4, !dbg !508
  %49 = load %struct.lua_State** %2, align 4, !dbg !508
  call void @lua_xmove(%struct.lua_State* %48, %struct.lua_State* %49, i32 1), !dbg !508
  %50 = load %struct.lua_State** %2, align 4, !dbg !510
  %51 = load i8** %name, align 4, !dbg !510
  %52 = call i8* @lua_pushstring(%struct.lua_State* %50, i8* %51), !dbg !510
  %53 = load %struct.lua_State** %2, align 4, !dbg !511
  call void @lua_rotate(%struct.lua_State* %53, i32 -2, i32 1), !dbg !511
  store i32 2, i32* %1, !dbg !512
  br label %56, !dbg !512

; <label>:54                                      ; preds = %39
  %55 = load %struct.lua_State** %2, align 4, !dbg !513
  call void @lua_pushnil(%struct.lua_State* %55), !dbg !513
  store i32 1, i32* %1, !dbg !515
  br label %56, !dbg !515

; <label>:56                                      ; preds = %54, %47, %34, %15
  %57 = load i32* %1, !dbg !516
  ret i32 %57, !dbg !516
}

; Function Attrs: nounwind
define internal i32 @db_getregistry(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !517), !dbg !518
  %2 = load %struct.lua_State** %1, align 4, !dbg !519
  call void @lua_pushvalue(%struct.lua_State* %2, i32 -1001000), !dbg !519
  ret i32 1, !dbg !520
}

; Function Attrs: nounwind
define internal i32 @db_getmetatable(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !521), !dbg !522
  %2 = load %struct.lua_State** %1, align 4, !dbg !523
  call void @luaL_checkany(%struct.lua_State* %2, i32 1), !dbg !523
  %3 = load %struct.lua_State** %1, align 4, !dbg !524
  %4 = call i32 @lua_getmetatable(%struct.lua_State* %3, i32 1), !dbg !524
  %5 = icmp ne i32 %4, 0, !dbg !524
  br i1 %5, label %8, label %6, !dbg !524

; <label>:6                                       ; preds = %0
  %7 = load %struct.lua_State** %1, align 4, !dbg !526
  call void @lua_pushnil(%struct.lua_State* %7), !dbg !526
  br label %8, !dbg !528

; <label>:8                                       ; preds = %6, %0
  ret i32 1, !dbg !529
}

; Function Attrs: nounwind
define internal i32 @db_getupvalue(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !530), !dbg !531
  %2 = load %struct.lua_State** %1, align 4, !dbg !532
  %3 = call i32 @auxupvalue(%struct.lua_State* %2, i32 1), !dbg !532
  ret i32 %3, !dbg !532
}

; Function Attrs: nounwind
define internal i32 @db_upvaluejoin(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %n1 = alloca i32, align 4
  %n2 = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !533), !dbg !534
  call void @llvm.dbg.declare(metadata !{i32* %n1}, metadata !535), !dbg !536
  %2 = load %struct.lua_State** %1, align 4, !dbg !537
  %3 = call i32 @checkupval(%struct.lua_State* %2, i32 1, i32 2), !dbg !537
  store i32 %3, i32* %n1, align 4, !dbg !537
  call void @llvm.dbg.declare(metadata !{i32* %n2}, metadata !538), !dbg !539
  %4 = load %struct.lua_State** %1, align 4, !dbg !540
  %5 = call i32 @checkupval(%struct.lua_State* %4, i32 3, i32 4), !dbg !540
  store i32 %5, i32* %n2, align 4, !dbg !540
  %6 = load %struct.lua_State** %1, align 4, !dbg !541
  %7 = call i32 @lua_iscfunction(%struct.lua_State* %6, i32 1), !dbg !541
  %8 = icmp ne i32 %7, 0, !dbg !541
  br i1 %8, label %9, label %13, !dbg !541

; <label>:9                                       ; preds = %0
  %10 = load %struct.lua_State** %1, align 4, !dbg !542
  %11 = call i32 @luaL_argerror(%struct.lua_State* %10, i32 1, i8* getelementptr inbounds ([22 x i8]* @.str27, i32 0, i32 0)), !dbg !542
  %12 = icmp ne i32 %11, 0, !dbg !542
  br label %13, !dbg !542

; <label>:13                                      ; preds = %9, %0
  %14 = phi i1 [ true, %0 ], [ %12, %9 ]
  %15 = zext i1 %14 to i32, !dbg !544
  %16 = load %struct.lua_State** %1, align 4, !dbg !547
  %17 = call i32 @lua_iscfunction(%struct.lua_State* %16, i32 3), !dbg !547
  %18 = icmp ne i32 %17, 0, !dbg !547
  br i1 %18, label %19, label %23, !dbg !547

; <label>:19                                      ; preds = %13
  %20 = load %struct.lua_State** %1, align 4, !dbg !548
  %21 = call i32 @luaL_argerror(%struct.lua_State* %20, i32 3, i8* getelementptr inbounds ([22 x i8]* @.str27, i32 0, i32 0)), !dbg !548
  %22 = icmp ne i32 %21, 0, !dbg !548
  br label %23, !dbg !548

; <label>:23                                      ; preds = %19, %13
  %24 = phi i1 [ true, %13 ], [ %22, %19 ]
  %25 = zext i1 %24 to i32, !dbg !550
  %26 = load %struct.lua_State** %1, align 4, !dbg !553
  %27 = load i32* %n1, align 4, !dbg !553
  %28 = load i32* %n2, align 4, !dbg !553
  call void @lua_upvaluejoin(%struct.lua_State* %26, i32 1, i32 %27, i32 3, i32 %28), !dbg !553
  ret i32 0, !dbg !554
}

; Function Attrs: nounwind
define internal i32 @db_upvalueid(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %n = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !555), !dbg !556
  call void @llvm.dbg.declare(metadata !{i32* %n}, metadata !557), !dbg !558
  %2 = load %struct.lua_State** %1, align 4, !dbg !559
  %3 = call i32 @checkupval(%struct.lua_State* %2, i32 1, i32 2), !dbg !559
  store i32 %3, i32* %n, align 4, !dbg !559
  %4 = load %struct.lua_State** %1, align 4, !dbg !560
  %5 = load %struct.lua_State** %1, align 4, !dbg !561
  %6 = load i32* %n, align 4, !dbg !561
  %7 = call i8* @lua_upvalueid(%struct.lua_State* %5, i32 1, i32 %6), !dbg !561
  call void @lua_pushlightuserdata(%struct.lua_State* %4, i8* %7), !dbg !560
  ret i32 1, !dbg !562
}

; Function Attrs: nounwind
define internal i32 @db_setuservalue(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !563), !dbg !564
  %2 = load %struct.lua_State** %1, align 4, !dbg !565
  call void @luaL_checktype(%struct.lua_State* %2, i32 1, i32 7), !dbg !565
  %3 = load %struct.lua_State** %1, align 4, !dbg !566
  call void @luaL_checkany(%struct.lua_State* %3, i32 2), !dbg !566
  %4 = load %struct.lua_State** %1, align 4, !dbg !567
  call void @lua_settop(%struct.lua_State* %4, i32 2), !dbg !567
  %5 = load %struct.lua_State** %1, align 4, !dbg !568
  call void @lua_setuservalue(%struct.lua_State* %5, i32 1), !dbg !568
  ret i32 1, !dbg !569
}

; Function Attrs: nounwind
define internal i32 @db_sethook(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %arg = alloca i32, align 4
  %mask = alloca i32, align 4
  %count = alloca i32, align 4
  %func = alloca void (%struct.lua_State*, %struct.lua_Debug*)*, align 4
  %L1 = alloca %struct.lua_State*, align 4
  %smask = alloca i8*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !570), !dbg !571
  call void @llvm.dbg.declare(metadata !{i32* %arg}, metadata !572), !dbg !573
  call void @llvm.dbg.declare(metadata !{i32* %mask}, metadata !574), !dbg !575
  call void @llvm.dbg.declare(metadata !{i32* %count}, metadata !576), !dbg !577
  call void @llvm.dbg.declare(metadata !{void (%struct.lua_State*, %struct.lua_Debug*)** %func}, metadata !578), !dbg !579
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %L1}, metadata !580), !dbg !581
  %2 = load %struct.lua_State** %1, align 4, !dbg !582
  %3 = call %struct.lua_State* @getthread(%struct.lua_State* %2, i32* %arg), !dbg !582
  store %struct.lua_State* %3, %struct.lua_State** %L1, align 4, !dbg !582
  %4 = load %struct.lua_State** %1, align 4, !dbg !583
  %5 = load i32* %arg, align 4, !dbg !583
  %6 = add nsw i32 %5, 1, !dbg !583
  %7 = call i32 @lua_type(%struct.lua_State* %4, i32 %6), !dbg !583
  %8 = icmp sle i32 %7, 0, !dbg !583
  br i1 %8, label %9, label %13, !dbg !583

; <label>:9                                       ; preds = %0
  %10 = load %struct.lua_State** %1, align 4, !dbg !585
  %11 = load i32* %arg, align 4, !dbg !585
  %12 = add nsw i32 %11, 1, !dbg !585
  call void @lua_settop(%struct.lua_State* %10, i32 %12), !dbg !585
  store void (%struct.lua_State*, %struct.lua_Debug*)* null, void (%struct.lua_State*, %struct.lua_Debug*)** %func, align 4, !dbg !587
  store i32 0, i32* %mask, align 4, !dbg !588
  store i32 0, i32* %count, align 4, !dbg !589
  br label %29, !dbg !590

; <label>:13                                      ; preds = %0
  call void @llvm.dbg.declare(metadata !{i8** %smask}, metadata !591), !dbg !593
  %14 = load %struct.lua_State** %1, align 4, !dbg !594
  %15 = load i32* %arg, align 4, !dbg !594
  %16 = add nsw i32 %15, 2, !dbg !594
  %17 = call i8* @luaL_checklstring(%struct.lua_State* %14, i32 %16, i32* null), !dbg !594
  store i8* %17, i8** %smask, align 4, !dbg !594
  %18 = load %struct.lua_State** %1, align 4, !dbg !595
  %19 = load i32* %arg, align 4, !dbg !595
  %20 = add nsw i32 %19, 1, !dbg !595
  call void @luaL_checktype(%struct.lua_State* %18, i32 %20, i32 6), !dbg !595
  %21 = load %struct.lua_State** %1, align 4, !dbg !596
  %22 = load i32* %arg, align 4, !dbg !596
  %23 = add nsw i32 %22, 3, !dbg !596
  %24 = call i64 @luaL_optinteger(%struct.lua_State* %21, i32 %23, i64 0), !dbg !596
  %25 = trunc i64 %24 to i32, !dbg !596
  store i32 %25, i32* %count, align 4, !dbg !596
  store void (%struct.lua_State*, %struct.lua_Debug*)* @hookf, void (%struct.lua_State*, %struct.lua_Debug*)** %func, align 4, !dbg !597
  %26 = load i8** %smask, align 4, !dbg !598
  %27 = load i32* %count, align 4, !dbg !598
  %28 = call i32 @makemask(i8* %26, i32 %27), !dbg !598
  store i32 %28, i32* %mask, align 4, !dbg !598
  br label %29

; <label>:29                                      ; preds = %13, %9
  %30 = load %struct.lua_State** %1, align 4, !dbg !599
  %31 = call i32 @lua_rawgetp(%struct.lua_State* %30, i32 -1001000, i8* bitcast (i32* @HOOKKEY to i8*)), !dbg !599
  %32 = icmp eq i32 %31, 0, !dbg !599
  br i1 %32, label %33, label %43, !dbg !599

; <label>:33                                      ; preds = %29
  %34 = load %struct.lua_State** %1, align 4, !dbg !601
  call void @lua_createtable(%struct.lua_State* %34, i32 0, i32 2), !dbg !601
  %35 = load %struct.lua_State** %1, align 4, !dbg !603
  call void @lua_pushvalue(%struct.lua_State* %35, i32 -1), !dbg !603
  %36 = load %struct.lua_State** %1, align 4, !dbg !604
  call void @lua_rawsetp(%struct.lua_State* %36, i32 -1001000, i8* bitcast (i32* @HOOKKEY to i8*)), !dbg !604
  %37 = load %struct.lua_State** %1, align 4, !dbg !605
  %38 = call i8* @lua_pushstring(%struct.lua_State* %37, i8* getelementptr inbounds ([2 x i8]* @.str19, i32 0, i32 0)), !dbg !605
  %39 = load %struct.lua_State** %1, align 4, !dbg !606
  call void @lua_setfield(%struct.lua_State* %39, i32 -2, i8* getelementptr inbounds ([7 x i8]* @.str20, i32 0, i32 0)), !dbg !606
  %40 = load %struct.lua_State** %1, align 4, !dbg !607
  call void @lua_pushvalue(%struct.lua_State* %40, i32 -1), !dbg !607
  %41 = load %struct.lua_State** %1, align 4, !dbg !608
  %42 = call i32 @lua_setmetatable(%struct.lua_State* %41, i32 -2), !dbg !608
  br label %43, !dbg !609

; <label>:43                                      ; preds = %33, %29
  %44 = load %struct.lua_State** %1, align 4, !dbg !610
  %45 = load %struct.lua_State** %L1, align 4, !dbg !610
  call void @checkstack(%struct.lua_State* %44, %struct.lua_State* %45, i32 1), !dbg !610
  %46 = load %struct.lua_State** %L1, align 4, !dbg !611
  %47 = call i32 @lua_pushthread(%struct.lua_State* %46), !dbg !611
  %48 = load %struct.lua_State** %L1, align 4, !dbg !612
  %49 = load %struct.lua_State** %1, align 4, !dbg !612
  call void @lua_xmove(%struct.lua_State* %48, %struct.lua_State* %49, i32 1), !dbg !612
  %50 = load %struct.lua_State** %1, align 4, !dbg !613
  %51 = load i32* %arg, align 4, !dbg !613
  %52 = add nsw i32 %51, 1, !dbg !613
  call void @lua_pushvalue(%struct.lua_State* %50, i32 %52), !dbg !613
  %53 = load %struct.lua_State** %1, align 4, !dbg !614
  call void @lua_rawset(%struct.lua_State* %53, i32 -3), !dbg !614
  %54 = load %struct.lua_State** %L1, align 4, !dbg !615
  %55 = load void (%struct.lua_State*, %struct.lua_Debug*)** %func, align 4, !dbg !615
  %56 = load i32* %mask, align 4, !dbg !615
  %57 = load i32* %count, align 4, !dbg !615
  call void @lua_sethook(%struct.lua_State* %54, void (%struct.lua_State*, %struct.lua_Debug*)* %55, i32 %56, i32 %57), !dbg !615
  ret i32 0, !dbg !616
}

; Function Attrs: nounwind
define internal i32 @db_setlocal(%struct.lua_State* %L) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.lua_State*, align 4
  %arg = alloca i32, align 4
  %name = alloca i8*, align 4
  %L1 = alloca %struct.lua_State*, align 4
  %ar = alloca %struct.lua_Debug, align 4
  %level = alloca i32, align 4
  %nvar = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %2}, metadata !617), !dbg !618
  call void @llvm.dbg.declare(metadata !{i32* %arg}, metadata !619), !dbg !620
  call void @llvm.dbg.declare(metadata !{i8** %name}, metadata !621), !dbg !622
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %L1}, metadata !623), !dbg !624
  %3 = load %struct.lua_State** %2, align 4, !dbg !625
  %4 = call %struct.lua_State* @getthread(%struct.lua_State* %3, i32* %arg), !dbg !625
  store %struct.lua_State* %4, %struct.lua_State** %L1, align 4, !dbg !625
  call void @llvm.dbg.declare(metadata !{%struct.lua_Debug* %ar}, metadata !626), !dbg !627
  call void @llvm.dbg.declare(metadata !{i32* %level}, metadata !628), !dbg !629
  %5 = load %struct.lua_State** %2, align 4, !dbg !630
  %6 = load i32* %arg, align 4, !dbg !630
  %7 = add nsw i32 %6, 1, !dbg !630
  %8 = call i64 @luaL_checkinteger(%struct.lua_State* %5, i32 %7), !dbg !630
  %9 = trunc i64 %8 to i32, !dbg !630
  store i32 %9, i32* %level, align 4, !dbg !630
  call void @llvm.dbg.declare(metadata !{i32* %nvar}, metadata !631), !dbg !632
  %10 = load %struct.lua_State** %2, align 4, !dbg !633
  %11 = load i32* %arg, align 4, !dbg !633
  %12 = add nsw i32 %11, 2, !dbg !633
  %13 = call i64 @luaL_checkinteger(%struct.lua_State* %10, i32 %12), !dbg !633
  %14 = trunc i64 %13 to i32, !dbg !633
  store i32 %14, i32* %nvar, align 4, !dbg !633
  %15 = load %struct.lua_State** %L1, align 4, !dbg !634
  %16 = load i32* %level, align 4, !dbg !634
  %17 = call i32 @lua_getstack(%struct.lua_State* %15, i32 %16, %struct.lua_Debug* %ar), !dbg !634
  %18 = icmp ne i32 %17, 0, !dbg !634
  br i1 %18, label %24, label %19, !dbg !634

; <label>:19                                      ; preds = %0
  %20 = load %struct.lua_State** %2, align 4, !dbg !636
  %21 = load i32* %arg, align 4, !dbg !636
  %22 = add nsw i32 %21, 1, !dbg !636
  %23 = call i32 @luaL_argerror(%struct.lua_State* %20, i32 %22, i8* getelementptr inbounds ([19 x i8]* @.str17, i32 0, i32 0)), !dbg !636
  store i32 %23, i32* %1, !dbg !636
  br label %46, !dbg !636

; <label>:24                                      ; preds = %0
  %25 = load %struct.lua_State** %2, align 4, !dbg !637
  %26 = load i32* %arg, align 4, !dbg !637
  %27 = add nsw i32 %26, 3, !dbg !637
  call void @luaL_checkany(%struct.lua_State* %25, i32 %27), !dbg !637
  %28 = load %struct.lua_State** %2, align 4, !dbg !638
  %29 = load i32* %arg, align 4, !dbg !638
  %30 = add nsw i32 %29, 3, !dbg !638
  call void @lua_settop(%struct.lua_State* %28, i32 %30), !dbg !638
  %31 = load %struct.lua_State** %2, align 4, !dbg !639
  %32 = load %struct.lua_State** %L1, align 4, !dbg !639
  call void @checkstack(%struct.lua_State* %31, %struct.lua_State* %32, i32 1), !dbg !639
  %33 = load %struct.lua_State** %2, align 4, !dbg !640
  %34 = load %struct.lua_State** %L1, align 4, !dbg !640
  call void @lua_xmove(%struct.lua_State* %33, %struct.lua_State* %34, i32 1), !dbg !640
  %35 = load %struct.lua_State** %L1, align 4, !dbg !641
  %36 = load i32* %nvar, align 4, !dbg !641
  %37 = call i8* @lua_setlocal(%struct.lua_State* %35, %struct.lua_Debug* %ar, i32 %36), !dbg !641
  store i8* %37, i8** %name, align 4, !dbg !641
  %38 = load i8** %name, align 4, !dbg !642
  %39 = icmp eq i8* %38, null, !dbg !642
  br i1 %39, label %40, label %42, !dbg !642

; <label>:40                                      ; preds = %24
  %41 = load %struct.lua_State** %L1, align 4, !dbg !644
  call void @lua_settop(%struct.lua_State* %41, i32 -2), !dbg !644
  br label %42, !dbg !644

; <label>:42                                      ; preds = %40, %24
  %43 = load %struct.lua_State** %2, align 4, !dbg !645
  %44 = load i8** %name, align 4, !dbg !645
  %45 = call i8* @lua_pushstring(%struct.lua_State* %43, i8* %44), !dbg !645
  store i32 1, i32* %1, !dbg !646
  br label %46, !dbg !646

; <label>:46                                      ; preds = %42, %19
  %47 = load i32* %1, !dbg !647
  ret i32 %47, !dbg !647
}

; Function Attrs: nounwind
define internal i32 @db_setmetatable(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %t = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !648), !dbg !649
  call void @llvm.dbg.declare(metadata !{i32* %t}, metadata !650), !dbg !651
  %2 = load %struct.lua_State** %1, align 4, !dbg !652
  %3 = call i32 @lua_type(%struct.lua_State* %2, i32 2), !dbg !652
  store i32 %3, i32* %t, align 4, !dbg !652
  %4 = load i32* %t, align 4, !dbg !653
  %5 = icmp eq i32 %4, 0, !dbg !653
  br i1 %5, label %13, label %6, !dbg !653

; <label>:6                                       ; preds = %0
  %7 = load i32* %t, align 4, !dbg !654
  %8 = icmp eq i32 %7, 5, !dbg !654
  br i1 %8, label %13, label %9, !dbg !654

; <label>:9                                       ; preds = %6
  %10 = load %struct.lua_State** %1, align 4, !dbg !656
  %11 = call i32 @luaL_argerror(%struct.lua_State* %10, i32 2, i8* getelementptr inbounds ([22 x i8]* @.str16, i32 0, i32 0)), !dbg !656
  %12 = icmp ne i32 %11, 0, !dbg !656
  br label %13, !dbg !656

; <label>:13                                      ; preds = %9, %6, %0
  %14 = phi i1 [ true, %6 ], [ true, %0 ], [ %12, %9 ]
  %15 = zext i1 %14 to i32, !dbg !658
  %16 = load %struct.lua_State** %1, align 4, !dbg !662
  call void @lua_settop(%struct.lua_State* %16, i32 2), !dbg !662
  %17 = load %struct.lua_State** %1, align 4, !dbg !663
  %18 = call i32 @lua_setmetatable(%struct.lua_State* %17, i32 1), !dbg !663
  ret i32 1, !dbg !664
}

; Function Attrs: nounwind
define internal i32 @db_setupvalue(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !665), !dbg !666
  %2 = load %struct.lua_State** %1, align 4, !dbg !667
  call void @luaL_checkany(%struct.lua_State* %2, i32 3), !dbg !667
  %3 = load %struct.lua_State** %1, align 4, !dbg !668
  %4 = call i32 @auxupvalue(%struct.lua_State* %3, i32 0), !dbg !668
  ret i32 %4, !dbg !668
}

; Function Attrs: nounwind
define internal i32 @db_traceback(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %arg = alloca i32, align 4
  %L1 = alloca %struct.lua_State*, align 4
  %msg = alloca i8*, align 4
  %level = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !669), !dbg !670
  call void @llvm.dbg.declare(metadata !{i32* %arg}, metadata !671), !dbg !672
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %L1}, metadata !673), !dbg !674
  %2 = load %struct.lua_State** %1, align 4, !dbg !675
  %3 = call %struct.lua_State* @getthread(%struct.lua_State* %2, i32* %arg), !dbg !675
  store %struct.lua_State* %3, %struct.lua_State** %L1, align 4, !dbg !675
  call void @llvm.dbg.declare(metadata !{i8** %msg}, metadata !676), !dbg !677
  %4 = load %struct.lua_State** %1, align 4, !dbg !678
  %5 = load i32* %arg, align 4, !dbg !678
  %6 = add nsw i32 %5, 1, !dbg !678
  %7 = call i8* @lua_tolstring(%struct.lua_State* %4, i32 %6, i32* null), !dbg !678
  store i8* %7, i8** %msg, align 4, !dbg !678
  %8 = load i8** %msg, align 4, !dbg !679
  %9 = icmp eq i8* %8, null, !dbg !679
  br i1 %9, label %10, label %20, !dbg !679

; <label>:10                                      ; preds = %0
  %11 = load %struct.lua_State** %1, align 4, !dbg !681
  %12 = load i32* %arg, align 4, !dbg !681
  %13 = add nsw i32 %12, 1, !dbg !681
  %14 = call i32 @lua_type(%struct.lua_State* %11, i32 %13), !dbg !681
  %15 = icmp sle i32 %14, 0, !dbg !681
  br i1 %15, label %20, label %16, !dbg !681

; <label>:16                                      ; preds = %10
  %17 = load %struct.lua_State** %1, align 4, !dbg !683
  %18 = load i32* %arg, align 4, !dbg !683
  %19 = add nsw i32 %18, 1, !dbg !683
  call void @lua_pushvalue(%struct.lua_State* %17, i32 %19), !dbg !683
  br label %35, !dbg !683

; <label>:20                                      ; preds = %10, %0
  call void @llvm.dbg.declare(metadata !{i32* %level}, metadata !684), !dbg !686
  %21 = load %struct.lua_State** %1, align 4, !dbg !687
  %22 = load i32* %arg, align 4, !dbg !687
  %23 = add nsw i32 %22, 2, !dbg !687
  %24 = load %struct.lua_State** %1, align 4, !dbg !687
  %25 = load %struct.lua_State** %L1, align 4, !dbg !687
  %26 = icmp eq %struct.lua_State* %24, %25, !dbg !687
  %27 = select i1 %26, i32 1, i32 0, !dbg !687
  %28 = sext i32 %27 to i64, !dbg !687
  %29 = call i64 @luaL_optinteger(%struct.lua_State* %21, i32 %23, i64 %28), !dbg !687
  %30 = trunc i64 %29 to i32, !dbg !687
  store i32 %30, i32* %level, align 4, !dbg !687
  %31 = load %struct.lua_State** %1, align 4, !dbg !688
  %32 = load %struct.lua_State** %L1, align 4, !dbg !688
  %33 = load i8** %msg, align 4, !dbg !688
  %34 = load i32* %level, align 4, !dbg !688
  call void @luaL_traceback(%struct.lua_State* %31, %struct.lua_State* %32, i8* %33, i32 %34), !dbg !688
  br label %35

; <label>:35                                      ; preds = %20, %16
  ret i32 1, !dbg !689
}

; Function Attrs: nounwind
define internal %struct.lua_State* @getthread(%struct.lua_State* %L, i32* %arg) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca %struct.lua_State*, align 4
  %3 = alloca i32*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %2}, metadata !690), !dbg !691
  store i32* %arg, i32** %3, align 4
  call void @llvm.dbg.declare(metadata !{i32** %3}, metadata !692), !dbg !693
  %4 = load %struct.lua_State** %2, align 4, !dbg !694
  %5 = call i32 @lua_type(%struct.lua_State* %4, i32 1), !dbg !694
  %6 = icmp eq i32 %5, 8, !dbg !694
  br i1 %6, label %7, label %11, !dbg !694

; <label>:7                                       ; preds = %0
  %8 = load i32** %3, align 4, !dbg !696
  store i32 1, i32* %8, align 4, !dbg !696
  %9 = load %struct.lua_State** %2, align 4, !dbg !698
  %10 = call %struct.lua_State* @lua_tothread(%struct.lua_State* %9, i32 1), !dbg !698
  store %struct.lua_State* %10, %struct.lua_State** %1, !dbg !698
  br label %14, !dbg !698

; <label>:11                                      ; preds = %0
  %12 = load i32** %3, align 4, !dbg !699
  store i32 0, i32* %12, align 4, !dbg !699
  %13 = load %struct.lua_State** %2, align 4, !dbg !701
  store %struct.lua_State* %13, %struct.lua_State** %1, !dbg !701
  br label %14, !dbg !701

; <label>:14                                      ; preds = %11, %7
  %15 = load %struct.lua_State** %1, !dbg !702
  ret %struct.lua_State* %15, !dbg !702
}

declare i8* @lua_tolstring(%struct.lua_State*, i32, i32*) #2

declare i32 @lua_type(%struct.lua_State*, i32) #2

declare void @lua_pushvalue(%struct.lua_State*, i32) #2

declare i64 @luaL_optinteger(%struct.lua_State*, i32, i64) #2

declare void @luaL_traceback(%struct.lua_State*, %struct.lua_State*, i8*, i32) #2

declare %struct.lua_State* @lua_tothread(%struct.lua_State*, i32) #2

declare void @luaL_checkany(%struct.lua_State*, i32) #2

; Function Attrs: nounwind
define internal i32 @auxupvalue(%struct.lua_State* %L, i32 %get) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.lua_State*, align 4
  %3 = alloca i32, align 4
  %name = alloca i8*, align 4
  %n = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %2}, metadata !703), !dbg !704
  store i32 %get, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !705), !dbg !706
  call void @llvm.dbg.declare(metadata !{i8** %name}, metadata !707), !dbg !708
  call void @llvm.dbg.declare(metadata !{i32* %n}, metadata !709), !dbg !710
  %4 = load %struct.lua_State** %2, align 4, !dbg !711
  %5 = call i64 @luaL_checkinteger(%struct.lua_State* %4, i32 2), !dbg !711
  %6 = trunc i64 %5 to i32, !dbg !711
  store i32 %6, i32* %n, align 4, !dbg !711
  %7 = load %struct.lua_State** %2, align 4, !dbg !712
  call void @luaL_checktype(%struct.lua_State* %7, i32 1, i32 6), !dbg !712
  %8 = load i32* %3, align 4, !dbg !713
  %9 = icmp ne i32 %8, 0, !dbg !713
  br i1 %9, label %10, label %14, !dbg !713

; <label>:10                                      ; preds = %0
  %11 = load %struct.lua_State** %2, align 4, !dbg !714
  %12 = load i32* %n, align 4, !dbg !714
  %13 = call i8* @lua_getupvalue(%struct.lua_State* %11, i32 1, i32 %12), !dbg !714
  br label %18, !dbg !714

; <label>:14                                      ; preds = %0
  %15 = load %struct.lua_State** %2, align 4, !dbg !716
  %16 = load i32* %n, align 4, !dbg !716
  %17 = call i8* @lua_setupvalue(%struct.lua_State* %15, i32 1, i32 %16), !dbg !716
  br label %18, !dbg !716

; <label>:18                                      ; preds = %14, %10
  %19 = phi i8* [ %13, %10 ], [ %17, %14 ], !dbg !718
  store i8* %19, i8** %name, align 4, !dbg !719
  %20 = load i8** %name, align 4, !dbg !722
  %21 = icmp eq i8* %20, null, !dbg !722
  br i1 %21, label %22, label %23, !dbg !722

; <label>:22                                      ; preds = %18
  store i32 0, i32* %1, !dbg !724
  br label %33, !dbg !724

; <label>:23                                      ; preds = %18
  %24 = load %struct.lua_State** %2, align 4, !dbg !726
  %25 = load i8** %name, align 4, !dbg !726
  %26 = call i8* @lua_pushstring(%struct.lua_State* %24, i8* %25), !dbg !726
  %27 = load %struct.lua_State** %2, align 4, !dbg !727
  %28 = load i32* %3, align 4, !dbg !727
  %29 = add nsw i32 %28, 1, !dbg !727
  %30 = sub nsw i32 0, %29, !dbg !727
  call void @lua_rotate(%struct.lua_State* %27, i32 %30, i32 1), !dbg !727
  %31 = load i32* %3, align 4, !dbg !728
  %32 = add nsw i32 %31, 1, !dbg !728
  store i32 %32, i32* %1, !dbg !728
  br label %33, !dbg !728

; <label>:33                                      ; preds = %23, %22
  %34 = load i32* %1, !dbg !729
  ret i32 %34, !dbg !729
}

declare i64 @luaL_checkinteger(%struct.lua_State*, i32) #2

declare void @luaL_checktype(%struct.lua_State*, i32, i32) #2

declare i8* @lua_getupvalue(%struct.lua_State*, i32, i32) #2

declare i8* @lua_setupvalue(%struct.lua_State*, i32, i32) #2

declare i8* @lua_pushstring(%struct.lua_State*, i8*) #2

declare void @lua_rotate(%struct.lua_State*, i32, i32) #2

declare i32 @luaL_argerror(%struct.lua_State*, i32, i8*) #2

declare void @lua_settop(%struct.lua_State*, i32) #2

declare i32 @lua_setmetatable(%struct.lua_State*, i32) #2

declare i32 @lua_getstack(%struct.lua_State*, i32, %struct.lua_Debug*) #2

; Function Attrs: nounwind
define internal void @checkstack(%struct.lua_State* %L, %struct.lua_State* %L1, i32 %n) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca %struct.lua_State*, align 4
  %3 = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !730), !dbg !731
  store %struct.lua_State* %L1, %struct.lua_State** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %2}, metadata !732), !dbg !733
  store i32 %n, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !734), !dbg !735
  %4 = load %struct.lua_State** %1, align 4, !dbg !736
  %5 = load %struct.lua_State** %2, align 4, !dbg !736
  %6 = icmp ne %struct.lua_State* %4, %5, !dbg !736
  br i1 %6, label %7, label %15, !dbg !736

; <label>:7                                       ; preds = %0
  %8 = load %struct.lua_State** %2, align 4, !dbg !738
  %9 = load i32* %3, align 4, !dbg !738
  %10 = call i32 @lua_checkstack(%struct.lua_State* %8, i32 %9), !dbg !738
  %11 = icmp ne i32 %10, 0, !dbg !738
  br i1 %11, label %15, label %12, !dbg !738

; <label>:12                                      ; preds = %7
  %13 = load %struct.lua_State** %1, align 4, !dbg !740
  %14 = call i32 (%struct.lua_State*, i8*, ...)* @luaL_error(%struct.lua_State* %13, i8* getelementptr inbounds ([15 x i8]* @.str18, i32 0, i32 0)), !dbg !740
  br label %15, !dbg !740

; <label>:15                                      ; preds = %12, %7, %0
  ret void, !dbg !741
}

declare void @lua_xmove(%struct.lua_State*, %struct.lua_State*, i32) #2

declare i8* @lua_setlocal(%struct.lua_State*, %struct.lua_Debug*, i32) #2

declare i32 @lua_checkstack(%struct.lua_State*, i32) #2

declare i32 @luaL_error(%struct.lua_State*, i8*, ...) #2

declare i8* @luaL_checklstring(%struct.lua_State*, i32, i32*) #2

; Function Attrs: nounwind
define internal void @hookf(%struct.lua_State* %L, %struct.lua_Debug* %ar) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca %struct.lua_Debug*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !742), !dbg !743
  store %struct.lua_Debug* %ar, %struct.lua_Debug** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_Debug** %2}, metadata !744), !dbg !745
  %3 = load %struct.lua_State** %1, align 4, !dbg !746
  %4 = call i32 @lua_rawgetp(%struct.lua_State* %3, i32 -1001000, i8* bitcast (i32* @HOOKKEY to i8*)), !dbg !746
  %5 = load %struct.lua_State** %1, align 4, !dbg !747
  %6 = call i32 @lua_pushthread(%struct.lua_State* %5), !dbg !747
  %7 = load %struct.lua_State** %1, align 4, !dbg !748
  %8 = call i32 @lua_rawget(%struct.lua_State* %7, i32 -2), !dbg !748
  %9 = icmp eq i32 %8, 6, !dbg !748
  br i1 %9, label %10, label %32, !dbg !748

; <label>:10                                      ; preds = %0
  %11 = load %struct.lua_State** %1, align 4, !dbg !750
  %12 = load %struct.lua_Debug** %2, align 4, !dbg !750
  %13 = getelementptr inbounds %struct.lua_Debug* %12, i32 0, i32 0, !dbg !750
  %14 = load i32* %13, align 4, !dbg !750
  %15 = getelementptr inbounds [5 x i8*]* @hookf.hooknames, i32 0, i32 %14, !dbg !750
  %16 = load i8** %15, align 4, !dbg !750
  %17 = call i8* @lua_pushstring(%struct.lua_State* %11, i8* %16), !dbg !750
  %18 = load %struct.lua_Debug** %2, align 4, !dbg !752
  %19 = getelementptr inbounds %struct.lua_Debug* %18, i32 0, i32 5, !dbg !752
  %20 = load i32* %19, align 4, !dbg !752
  %21 = icmp sge i32 %20, 0, !dbg !752
  br i1 %21, label %22, label %28, !dbg !752

; <label>:22                                      ; preds = %10
  %23 = load %struct.lua_State** %1, align 4, !dbg !754
  %24 = load %struct.lua_Debug** %2, align 4, !dbg !754
  %25 = getelementptr inbounds %struct.lua_Debug* %24, i32 0, i32 5, !dbg !754
  %26 = load i32* %25, align 4, !dbg !754
  %27 = sext i32 %26 to i64, !dbg !754
  call void @lua_pushinteger(%struct.lua_State* %23, i64 %27), !dbg !754
  br label %30, !dbg !754

; <label>:28                                      ; preds = %10
  %29 = load %struct.lua_State** %1, align 4, !dbg !755
  call void @lua_pushnil(%struct.lua_State* %29), !dbg !755
  br label %30

; <label>:30                                      ; preds = %28, %22
  %31 = load %struct.lua_State** %1, align 4, !dbg !756
  call void @lua_callk(%struct.lua_State* %31, i32 2, i32 0, i32 0, i32 (%struct.lua_State*, i32, i32)* null), !dbg !756
  br label %32, !dbg !757

; <label>:32                                      ; preds = %30, %0
  ret void, !dbg !758
}

; Function Attrs: nounwind
define internal i32 @makemask(i8* %smask, i32 %count) #0 {
  %1 = alloca i8*, align 4
  %2 = alloca i32, align 4
  %mask = alloca i32, align 4
  store i8* %smask, i8** %1, align 4
  call void @llvm.dbg.declare(metadata !{i8** %1}, metadata !759), !dbg !760
  store i32 %count, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !761), !dbg !762
  call void @llvm.dbg.declare(metadata !{i32* %mask}, metadata !763), !dbg !764
  store i32 0, i32* %mask, align 4, !dbg !765
  %3 = load i8** %1, align 4, !dbg !766
  %4 = call i8* @strchr(i8* %3, i32 99) #4, !dbg !766
  %5 = icmp ne i8* %4, null, !dbg !766
  br i1 %5, label %6, label %9, !dbg !766

; <label>:6                                       ; preds = %0
  %7 = load i32* %mask, align 4, !dbg !768
  %8 = or i32 %7, 1, !dbg !768
  store i32 %8, i32* %mask, align 4, !dbg !768
  br label %9, !dbg !768

; <label>:9                                       ; preds = %6, %0
  %10 = load i8** %1, align 4, !dbg !770
  %11 = call i8* @strchr(i8* %10, i32 114) #4, !dbg !770
  %12 = icmp ne i8* %11, null, !dbg !770
  br i1 %12, label %13, label %16, !dbg !770

; <label>:13                                      ; preds = %9
  %14 = load i32* %mask, align 4, !dbg !772
  %15 = or i32 %14, 2, !dbg !772
  store i32 %15, i32* %mask, align 4, !dbg !772
  br label %16, !dbg !772

; <label>:16                                      ; preds = %13, %9
  %17 = load i8** %1, align 4, !dbg !774
  %18 = call i8* @strchr(i8* %17, i32 108) #4, !dbg !774
  %19 = icmp ne i8* %18, null, !dbg !774
  br i1 %19, label %20, label %23, !dbg !774

; <label>:20                                      ; preds = %16
  %21 = load i32* %mask, align 4, !dbg !776
  %22 = or i32 %21, 4, !dbg !776
  store i32 %22, i32* %mask, align 4, !dbg !776
  br label %23, !dbg !776

; <label>:23                                      ; preds = %20, %16
  %24 = load i32* %2, align 4, !dbg !778
  %25 = icmp sgt i32 %24, 0, !dbg !778
  br i1 %25, label %26, label %29, !dbg !778

; <label>:26                                      ; preds = %23
  %27 = load i32* %mask, align 4, !dbg !780
  %28 = or i32 %27, 8, !dbg !780
  store i32 %28, i32* %mask, align 4, !dbg !780
  br label %29, !dbg !780

; <label>:29                                      ; preds = %26, %23
  %30 = load i32* %mask, align 4, !dbg !782
  ret i32 %30, !dbg !782
}

declare i32 @lua_rawgetp(%struct.lua_State*, i32, i8*) #2

declare void @lua_rawsetp(%struct.lua_State*, i32, i8*) #2

declare void @lua_setfield(%struct.lua_State*, i32, i8*) #2

declare i32 @lua_pushthread(%struct.lua_State*) #2

declare void @lua_rawset(%struct.lua_State*, i32) #2

declare void @lua_sethook(%struct.lua_State*, void (%struct.lua_State*, %struct.lua_Debug*)*, i32, i32) #2

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #3

declare i32 @lua_rawget(%struct.lua_State*, i32) #2

declare void @lua_pushinteger(%struct.lua_State*, i64) #2

declare void @lua_pushnil(%struct.lua_State*) #2

declare void @lua_callk(%struct.lua_State*, i32, i32, i32, i32 (%struct.lua_State*, i32, i32)*) #2

declare void @lua_setuservalue(%struct.lua_State*, i32) #2

; Function Attrs: nounwind
define internal i32 @checkupval(%struct.lua_State* %L, i32 %argf, i32 %argnup) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %nup = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !783), !dbg !784
  store i32 %argf, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !785), !dbg !786
  store i32 %argnup, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !787), !dbg !788
  call void @llvm.dbg.declare(metadata !{i32* %nup}, metadata !789), !dbg !790
  %4 = load %struct.lua_State** %1, align 4, !dbg !791
  %5 = load i32* %3, align 4, !dbg !791
  %6 = call i64 @luaL_checkinteger(%struct.lua_State* %4, i32 %5), !dbg !791
  %7 = trunc i64 %6 to i32, !dbg !791
  store i32 %7, i32* %nup, align 4, !dbg !791
  %8 = load %struct.lua_State** %1, align 4, !dbg !792
  %9 = load i32* %2, align 4, !dbg !792
  call void @luaL_checktype(%struct.lua_State* %8, i32 %9, i32 6), !dbg !792
  %10 = load %struct.lua_State** %1, align 4, !dbg !793
  %11 = load i32* %2, align 4, !dbg !793
  %12 = load i32* %nup, align 4, !dbg !793
  %13 = call i8* @lua_getupvalue(%struct.lua_State* %10, i32 %11, i32 %12), !dbg !793
  %14 = icmp ne i8* %13, null, !dbg !793
  br i1 %14, label %20, label %15, !dbg !793

; <label>:15                                      ; preds = %0
  %16 = load %struct.lua_State** %1, align 4, !dbg !794
  %17 = load i32* %3, align 4, !dbg !794
  %18 = call i32 @luaL_argerror(%struct.lua_State* %16, i32 %17, i8* getelementptr inbounds ([22 x i8]* @.str26, i32 0, i32 0)), !dbg !794
  %19 = icmp ne i32 %18, 0, !dbg !794
  br label %20, !dbg !794

; <label>:20                                      ; preds = %15, %0
  %21 = phi i1 [ true, %0 ], [ %19, %15 ]
  %22 = zext i1 %21 to i32, !dbg !796
  %23 = load i32* %nup, align 4, !dbg !799
  ret i32 %23, !dbg !799
}

declare void @lua_pushlightuserdata(%struct.lua_State*, i8*) #2

declare i8* @lua_upvalueid(%struct.lua_State*, i32, i32) #2

declare i32 @lua_iscfunction(%struct.lua_State*, i32) #2

declare void @lua_upvaluejoin(%struct.lua_State*, i32, i32, i32, i32) #2

declare i32 @lua_getmetatable(%struct.lua_State*, i32) #2

declare i8* @lua_getlocal(%struct.lua_State*, %struct.lua_Debug*, i32) #2

declare i8* @luaL_optlstring(%struct.lua_State*, i32, i8*, i32*) #2

declare i8* @lua_pushfstring(%struct.lua_State*, i8*, ...) #2

declare i32 @lua_getinfo(%struct.lua_State*, i8*, %struct.lua_Debug*) #2

; Function Attrs: nounwind
define internal void @settabss(%struct.lua_State* %L, i8* %k, i8* %v) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca i8*, align 4
  %3 = alloca i8*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !800), !dbg !801
  store i8* %k, i8** %2, align 4
  call void @llvm.dbg.declare(metadata !{i8** %2}, metadata !802), !dbg !803
  store i8* %v, i8** %3, align 4
  call void @llvm.dbg.declare(metadata !{i8** %3}, metadata !804), !dbg !805
  %4 = load %struct.lua_State** %1, align 4, !dbg !806
  %5 = load i8** %3, align 4, !dbg !806
  %6 = call i8* @lua_pushstring(%struct.lua_State* %4, i8* %5), !dbg !806
  %7 = load %struct.lua_State** %1, align 4, !dbg !807
  %8 = load i8** %2, align 4, !dbg !807
  call void @lua_setfield(%struct.lua_State* %7, i32 -2, i8* %8), !dbg !807
  ret void, !dbg !808
}

; Function Attrs: nounwind
define internal void @settabsi(%struct.lua_State* %L, i8* %k, i32 %v) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca i8*, align 4
  %3 = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !809), !dbg !810
  store i8* %k, i8** %2, align 4
  call void @llvm.dbg.declare(metadata !{i8** %2}, metadata !811), !dbg !812
  store i32 %v, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !813), !dbg !814
  %4 = load %struct.lua_State** %1, align 4, !dbg !815
  %5 = load i32* %3, align 4, !dbg !815
  %6 = sext i32 %5 to i64, !dbg !815
  call void @lua_pushinteger(%struct.lua_State* %4, i64 %6), !dbg !815
  %7 = load %struct.lua_State** %1, align 4, !dbg !816
  %8 = load i8** %2, align 4, !dbg !816
  call void @lua_setfield(%struct.lua_State* %7, i32 -2, i8* %8), !dbg !816
  ret void, !dbg !817
}

; Function Attrs: nounwind
define internal void @settabsb(%struct.lua_State* %L, i8* %k, i32 %v) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca i8*, align 4
  %3 = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !818), !dbg !819
  store i8* %k, i8** %2, align 4
  call void @llvm.dbg.declare(metadata !{i8** %2}, metadata !820), !dbg !821
  store i32 %v, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !822), !dbg !823
  %4 = load %struct.lua_State** %1, align 4, !dbg !824
  %5 = load i32* %3, align 4, !dbg !824
  call void @lua_pushboolean(%struct.lua_State* %4, i32 %5), !dbg !824
  %6 = load %struct.lua_State** %1, align 4, !dbg !825
  %7 = load i8** %2, align 4, !dbg !825
  call void @lua_setfield(%struct.lua_State* %6, i32 -2, i8* %7), !dbg !825
  ret void, !dbg !826
}

; Function Attrs: nounwind
define internal void @treatstackoption(%struct.lua_State* %L, %struct.lua_State* %L1, i8* %fname) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca %struct.lua_State*, align 4
  %3 = alloca i8*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !827), !dbg !828
  store %struct.lua_State* %L1, %struct.lua_State** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %2}, metadata !829), !dbg !830
  store i8* %fname, i8** %3, align 4
  call void @llvm.dbg.declare(metadata !{i8** %3}, metadata !831), !dbg !832
  %4 = load %struct.lua_State** %1, align 4, !dbg !833
  %5 = load %struct.lua_State** %2, align 4, !dbg !833
  %6 = icmp eq %struct.lua_State* %4, %5, !dbg !833
  br i1 %6, label %7, label %9, !dbg !833

; <label>:7                                       ; preds = %0
  %8 = load %struct.lua_State** %1, align 4, !dbg !835
  call void @lua_rotate(%struct.lua_State* %8, i32 -2, i32 1), !dbg !835
  br label %12, !dbg !835

; <label>:9                                       ; preds = %0
  %10 = load %struct.lua_State** %2, align 4, !dbg !836
  %11 = load %struct.lua_State** %1, align 4, !dbg !836
  call void @lua_xmove(%struct.lua_State* %10, %struct.lua_State* %11, i32 1), !dbg !836
  br label %12

; <label>:12                                      ; preds = %9, %7
  %13 = load %struct.lua_State** %1, align 4, !dbg !837
  %14 = load i8** %3, align 4, !dbg !837
  call void @lua_setfield(%struct.lua_State* %13, i32 -2, i8* %14), !dbg !837
  ret void, !dbg !838
}

declare void @lua_pushboolean(%struct.lua_State*, i32) #2

declare i32 @lua_gethookmask(%struct.lua_State*) #2

declare void (%struct.lua_State*, %struct.lua_Debug*)* @lua_gethook(%struct.lua_State*) #2

; Function Attrs: nounwind
define internal i8* @unmakemask(i32 %mask, i8* %smask) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 4
  %i = alloca i32, align 4
  store i32 %mask, i32* %1, align 4
  call void @llvm.dbg.declare(metadata !{i32* %1}, metadata !839), !dbg !840
  store i8* %smask, i8** %2, align 4
  call void @llvm.dbg.declare(metadata !{i8** %2}, metadata !841), !dbg !842
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !843), !dbg !844
  store i32 0, i32* %i, align 4, !dbg !845
  %3 = load i32* %1, align 4, !dbg !846
  %4 = and i32 %3, 1, !dbg !846
  %5 = icmp ne i32 %4, 0, !dbg !846
  br i1 %5, label %6, label %11, !dbg !846

; <label>:6                                       ; preds = %0
  %7 = load i32* %i, align 4, !dbg !848
  %8 = add nsw i32 %7, 1, !dbg !848
  store i32 %8, i32* %i, align 4, !dbg !848
  %9 = load i8** %2, align 4, !dbg !848
  %10 = getelementptr inbounds i8* %9, i32 %7, !dbg !848
  store i8 99, i8* %10, align 1, !dbg !848
  br label %11, !dbg !848

; <label>:11                                      ; preds = %6, %0
  %12 = load i32* %1, align 4, !dbg !850
  %13 = and i32 %12, 2, !dbg !850
  %14 = icmp ne i32 %13, 0, !dbg !850
  br i1 %14, label %15, label %20, !dbg !850

; <label>:15                                      ; preds = %11
  %16 = load i32* %i, align 4, !dbg !852
  %17 = add nsw i32 %16, 1, !dbg !852
  store i32 %17, i32* %i, align 4, !dbg !852
  %18 = load i8** %2, align 4, !dbg !852
  %19 = getelementptr inbounds i8* %18, i32 %16, !dbg !852
  store i8 114, i8* %19, align 1, !dbg !852
  br label %20, !dbg !852

; <label>:20                                      ; preds = %15, %11
  %21 = load i32* %1, align 4, !dbg !854
  %22 = and i32 %21, 4, !dbg !854
  %23 = icmp ne i32 %22, 0, !dbg !854
  br i1 %23, label %24, label %29, !dbg !854

; <label>:24                                      ; preds = %20
  %25 = load i32* %i, align 4, !dbg !856
  %26 = add nsw i32 %25, 1, !dbg !856
  store i32 %26, i32* %i, align 4, !dbg !856
  %27 = load i8** %2, align 4, !dbg !856
  %28 = getelementptr inbounds i8* %27, i32 %25, !dbg !856
  store i8 108, i8* %28, align 1, !dbg !856
  br label %29, !dbg !856

; <label>:29                                      ; preds = %24, %20
  %30 = load i32* %i, align 4, !dbg !858
  %31 = load i8** %2, align 4, !dbg !858
  %32 = getelementptr inbounds i8* %31, i32 %30, !dbg !858
  store i8 0, i8* %32, align 1, !dbg !858
  %33 = load i8** %2, align 4, !dbg !859
  ret i8* %33, !dbg !859
}

declare i32 @lua_gethookcount(%struct.lua_State*) #2

declare i32 @lua_getuservalue(%struct.lua_State*, i32) #2

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

declare i32 @fflush(%struct._IO_FILE*) #2

declare i8* @fgets(i8*, i32, %struct._IO_FILE*) #2

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

declare i32 @luaL_loadbufferx(%struct.lua_State*, i8*, i32, i8*, i8*) #2

; Function Attrs: nounwind readonly
declare i32 @strlen(i8*) #3

declare i32 @lua_pcallk(%struct.lua_State*, i32, i32, i32, i32, i32 (%struct.lua_State*, i32, i32)*) #2

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!xidane.fname = !{!111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282}
!xidane.function_declaration_type = !{!111, !283, !113, !284, !115, !285, !117, !286, !119, !283, !121, !283, !123, !283, !125, !283, !127, !283, !129, !283, !131, !283, !133, !283, !135, !283, !137, !283, !139, !283, !141, !283, !143, !283, !145, !283, !147, !283, !149, !283, !151, !287, !153, !288, !155, !289, !157, !290, !159, !291, !161, !292, !163, !293, !165, !290, !167, !289, !169, !294, !171, !285, !173, !295, !175, !295, !177, !296, !179, !285, !181, !297, !183, !290, !185, !289, !187, !298, !189, !299, !191, !299, !193, !300, !195, !289, !197, !301, !199, !288, !201, !302, !203, !303, !205, !304, !207, !305, !209, !306, !211, !283, !213, !290, !215, !307, !217, !308, !219, !289, !221, !309, !223, !310, !225, !311, !227, !290, !229, !312, !231, !313, !233, !314, !235, !289, !237, !315, !239, !289, !241, !300, !243, !316, !245, !296, !247, !317, !249, !318, !251, !319, !253, !319, !255, !320, !257, !290, !259, !283, !261, !321, !263, !322, !265, !283, !267, !289, !269, !323, !271, !324, !273, !325, !275, !326, !277, !327, !279, !328, !281, !329}
!xidane.function_declaration_filename = !{!111, !330, !113, !331, !115, !332, !117, !331, !119, !333, !121, !333, !123, !333, !125, !333, !127, !333, !129, !333, !131, !333, !133, !333, !135, !333, !137, !333, !139, !333, !141, !333, !143, !333, !145, !333, !147, !333, !149, !333, !151, !333, !153, !332, !155, !332, !157, !332, !159, !331, !161, !331, !163, !332, !165, !331, !167, !333, !169, !331, !171, !331, !173, !332, !175, !332, !177, !332, !179, !332, !181, !331, !183, !332, !185, !332, !187, !332, !189, !333, !191, !332, !193, !332, !195, !332, !197, !331, !199, !331, !201, !333, !203, !333, !205, !332, !207, !332, !209, !332, !211, !332, !213, !332, !215, !332, !217, !334, !219, !332, !221, !332, !223, !332, !225, !332, !227, !332, !229, !333, !231, !332, !233, !332, !235, !332, !237, !332, !239, !332, !241, !332, !243, !331, !245, !332, !247, !332, !249, !333, !251, !333, !253, !333, !255, !333, !257, !332, !259, !332, !261, !332, !263, !333, !265, !332, !267, !332, !269, !335, !271, !335, !273, !335, !275, !334, !277, !331, !279, !334, !281, !332}
!xidane.ExternC = !{!111, !113, !115, !117, !153, !155, !157, !159, !161, !163, !165, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !191, !193, !195, !197, !199, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !231, !233, !235, !237, !239, !241, !243, !245, !247, !257, !259, !261, !265, !267, !269, !271, !273, !275, !277, !279, !281}
!llvm.module.flags = !{!336, !337, !338, !339}
!llvm.ident = !{!340}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.0 (tags/RELEASE_350/final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !90, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src\ldblib.c] [DW_LANG_C99]
!1 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src\5Cldblib.c", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!2 = metadata !{}
!3 = metadata !{metadata !4, metadata !14, metadata !15, metadata !19, metadata !20, metadata !23, metadata !24, metadata !25, metadata !28, metadata !29, metadata !35, metadata !62, metadata !63, metadata !64, metadata !67, metadata !68, metadata !69, metadata !70, metadata !71, metadata !72, metadata !73, metadata !76, metadata !79, metadata !80, metadata !83, metadata !84, metadata !88, metadata !89}
!4 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"luaopen_debug", metadata !"luaopen_debug", metadata !"", i32 452, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @luaopen_debug, null, null, metadata !2, i32 452} ; [ DW_TAG_subprogram ] [line 452] [def] [luaopen_debug]
!5 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/ldblib.c", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!6 = metadata !{i32 786473, metadata !5}          ; [ DW_TAG_file_type ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldblib.c]
!7 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!8 = metadata !{metadata !9, metadata !10}
!9 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!10 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !11} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from lua_State]
!11 = metadata !{i32 786454, metadata !12, null, metadata !"lua_State", i32 56, i64 0, i64 0, i64 0, i32 0, metadata !13} ; [ DW_TAG_typedef ] [lua_State] [line 56, size 0, align 0, offset 0] [from lua_State]
!12 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lua.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!13 = metadata !{i32 786451, metadata !12, null, metadata !"lua_State", i32 56, i64 0, i64 0, i32 0, i32 4, null, null, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [lua_State] [line 56, size 0, align 0, offset 0] [decl] [from ]
!14 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"db_traceback", metadata !"db_traceback", metadata !"", i32 417, metadata !7, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @db_traceback, null, null, metadata !2, i32 417} ; [ DW_TAG_subprogram ] [line 417] [local] [def] [db_traceback]
!15 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"getthread", metadata !"getthread", metadata !"", i32 90, metadata !16, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, %struct.lua_State* (%struct.lua_State*, i32*)* @getthread, null, null, metadata !2, i32 90} ; [ DW_TAG_subprogram ] [line 90] [local] [def] [getthread]
!16 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !17, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!17 = metadata !{metadata !10, metadata !10, metadata !18}
!18 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from int]
!19 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"db_setupvalue", metadata !"db_setupvalue", metadata !"", i32 265, metadata !7, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @db_setupvalue, null, null, metadata !2, i32 265} ; [ DW_TAG_subprogram ] [line 265] [local] [def] [db_setupvalue]
!20 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"auxupvalue", metadata !"auxupvalue", metadata !"", i32 248, metadata !21, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*, i32)* @auxupvalue, null, null, metadata !2, i32 248} ; [ DW_TAG_subprogram ] [line 248] [local] [def] [auxupvalue]
!21 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !22, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!22 = metadata !{metadata !9, metadata !10, metadata !9}
!23 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"db_setmetatable", metadata !"db_setmetatable", metadata !"", i32 56, metadata !7, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @db_setmetatable, null, null, metadata !2, i32 56} ; [ DW_TAG_subprogram ] [line 56] [local] [def] [db_setmetatable]
!24 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"db_setlocal", metadata !"db_setlocal", metadata !"", i32 224, metadata !7, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @db_setlocal, null, null, metadata !2, i32 224} ; [ DW_TAG_subprogram ] [line 224] [local] [def] [db_setlocal]
!25 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"checkstack", metadata !"checkstack", metadata !"", i32 35, metadata !26, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.lua_State*, %struct.lua_State*, i32)* @checkstack, null, null, metadata !2, i32 35} ; [ DW_TAG_subprogram ] [line 35] [local] [def] [checkstack]
!26 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !27, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!27 = metadata !{null, metadata !10, metadata !10, metadata !9}
!28 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"db_sethook", metadata !"db_sethook", metadata !"", i32 347, metadata !7, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @db_sethook, null, null, metadata !2, i32 347} ; [ DW_TAG_subprogram ] [line 347] [local] [def] [db_sethook]
!29 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"makemask", metadata !"makemask", metadata !"", i32 324, metadata !30, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i8*, i32)* @makemask, null, null, metadata !2, i32 324} ; [ DW_TAG_subprogram ] [line 324] [local] [def] [makemask]
!30 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !31, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!31 = metadata !{metadata !9, metadata !32, metadata !9}
!32 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !33} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!33 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !34} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!34 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!35 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"hookf", metadata !"hookf", metadata !"", i32 305, metadata !36, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.lua_State*, %struct.lua_Debug*)* @hookf, null, null, metadata !2, i32 305} ; [ DW_TAG_subprogram ] [line 305] [local] [def] [hookf]
!36 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !37, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!37 = metadata !{null, metadata !10, metadata !38}
!38 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !39} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from lua_Debug]
!39 = metadata !{i32 786454, metadata !12, null, metadata !"lua_Debug", i32 417, i64 0, i64 0, i64 0, i32 0, metadata !40} ; [ DW_TAG_typedef ] [lua_Debug] [line 417, size 0, align 0, offset 0] [from lua_Debug]
!40 = metadata !{i32 786451, metadata !12, null, metadata !"lua_Debug", i32 441, i64 800, i64 32, i32 0, i32 0, null, metadata !41, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [lua_Debug] [line 441, size 800, align 32, offset 0] [def] [from ]
!41 = metadata !{metadata !42, metadata !43, metadata !44, metadata !45, metadata !46, metadata !47, metadata !48, metadata !49, metadata !50, metadata !52, metadata !53, metadata !54, metadata !55, metadata !59}
!42 = metadata !{i32 786445, metadata !12, metadata !40, metadata !"event", i32 442, i64 32, i64 32, i64 0, i32 0, metadata !9} ; [ DW_TAG_member ] [event] [line 442, size 32, align 32, offset 0] [from int]
!43 = metadata !{i32 786445, metadata !12, metadata !40, metadata !"name", i32 443, i64 32, i64 32, i64 32, i32 0, metadata !32} ; [ DW_TAG_member ] [name] [line 443, size 32, align 32, offset 32] [from ]
!44 = metadata !{i32 786445, metadata !12, metadata !40, metadata !"namewhat", i32 444, i64 32, i64 32, i64 64, i32 0, metadata !32} ; [ DW_TAG_member ] [namewhat] [line 444, size 32, align 32, offset 64] [from ]
!45 = metadata !{i32 786445, metadata !12, metadata !40, metadata !"what", i32 445, i64 32, i64 32, i64 96, i32 0, metadata !32} ; [ DW_TAG_member ] [what] [line 445, size 32, align 32, offset 96] [from ]
!46 = metadata !{i32 786445, metadata !12, metadata !40, metadata !"source", i32 446, i64 32, i64 32, i64 128, i32 0, metadata !32} ; [ DW_TAG_member ] [source] [line 446, size 32, align 32, offset 128] [from ]
!47 = metadata !{i32 786445, metadata !12, metadata !40, metadata !"currentline", i32 447, i64 32, i64 32, i64 160, i32 0, metadata !9} ; [ DW_TAG_member ] [currentline] [line 447, size 32, align 32, offset 160] [from int]
!48 = metadata !{i32 786445, metadata !12, metadata !40, metadata !"linedefined", i32 448, i64 32, i64 32, i64 192, i32 0, metadata !9} ; [ DW_TAG_member ] [linedefined] [line 448, size 32, align 32, offset 192] [from int]
!49 = metadata !{i32 786445, metadata !12, metadata !40, metadata !"lastlinedefined", i32 449, i64 32, i64 32, i64 224, i32 0, metadata !9} ; [ DW_TAG_member ] [lastlinedefined] [line 449, size 32, align 32, offset 224] [from int]
!50 = metadata !{i32 786445, metadata !12, metadata !40, metadata !"nups", i32 450, i64 8, i64 8, i64 256, i32 0, metadata !51} ; [ DW_TAG_member ] [nups] [line 450, size 8, align 8, offset 256] [from unsigned char]
!51 = metadata !{i32 786468, null, null, metadata !"unsigned char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [unsigned char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!52 = metadata !{i32 786445, metadata !12, metadata !40, metadata !"nparams", i32 451, i64 8, i64 8, i64 264, i32 0, metadata !51} ; [ DW_TAG_member ] [nparams] [line 451, size 8, align 8, offset 264] [from unsigned char]
!53 = metadata !{i32 786445, metadata !12, metadata !40, metadata !"isvararg", i32 452, i64 8, i64 8, i64 272, i32 0, metadata !34} ; [ DW_TAG_member ] [isvararg] [line 452, size 8, align 8, offset 272] [from char]
!54 = metadata !{i32 786445, metadata !12, metadata !40, metadata !"istailcall", i32 453, i64 8, i64 8, i64 280, i32 0, metadata !34} ; [ DW_TAG_member ] [istailcall] [line 453, size 8, align 8, offset 280] [from char]
!55 = metadata !{i32 786445, metadata !12, metadata !40, metadata !"short_src", i32 454, i64 480, i64 8, i64 288, i32 0, metadata !56} ; [ DW_TAG_member ] [short_src] [line 454, size 480, align 8, offset 288] [from ]
!56 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 480, i64 8, i32 0, i32 0, metadata !34, metadata !57, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 480, align 8, offset 0] [from char]
!57 = metadata !{metadata !58}
!58 = metadata !{i32 786465, i64 0, i64 60}       ; [ DW_TAG_subrange_type ] [0, 59]
!59 = metadata !{i32 786445, metadata !12, metadata !40, metadata !"i_ci", i32 456, i64 32, i64 32, i64 768, i32 0, metadata !60} ; [ DW_TAG_member ] [i_ci] [line 456, size 32, align 32, offset 768] [from ]
!60 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !61} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from CallInfo]
!61 = metadata !{i32 786451, metadata !12, null, metadata !"CallInfo", i32 456, i64 0, i64 0, i32 0, i32 4, null, null, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [CallInfo] [line 456, size 0, align 0, offset 0] [decl] [from ]
!62 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"db_setuservalue", metadata !"db_setuservalue", metadata !"", i32 75, metadata !7, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @db_setuservalue, null, null, metadata !2, i32 75} ; [ DW_TAG_subprogram ] [line 75] [local] [def] [db_setuservalue]
!63 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"db_upvalueid", metadata !"db_upvalueid", metadata !"", i32 284, metadata !7, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @db_upvalueid, null, null, metadata !2, i32 284} ; [ DW_TAG_subprogram ] [line 284] [local] [def] [db_upvalueid]
!64 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"checkupval", metadata !"checkupval", metadata !"", i32 275, metadata !65, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*, i32, i32)* @checkupval, null, null, metadata !2, i32 275} ; [ DW_TAG_subprogram ] [line 275] [local] [def] [checkupval]
!65 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !66, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!66 = metadata !{metadata !9, metadata !10, metadata !9, metadata !9}
!67 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"db_upvaluejoin", metadata !"db_upvaluejoin", metadata !"", i32 291, metadata !7, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @db_upvaluejoin, null, null, metadata !2, i32 291} ; [ DW_TAG_subprogram ] [line 291] [local] [def] [db_upvaluejoin]
!68 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"db_getupvalue", metadata !"db_getupvalue", metadata !"", i32 260, metadata !7, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @db_getupvalue, null, null, metadata !2, i32 260} ; [ DW_TAG_subprogram ] [line 260] [local] [def] [db_getupvalue]
!69 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"db_getmetatable", metadata !"db_getmetatable", metadata !"", i32 47, metadata !7, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @db_getmetatable, null, null, metadata !2, i32 47} ; [ DW_TAG_subprogram ] [line 47] [local] [def] [db_getmetatable]
!70 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"db_getregistry", metadata !"db_getregistry", metadata !"", i32 41, metadata !7, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @db_getregistry, null, null, metadata !2, i32 41} ; [ DW_TAG_subprogram ] [line 41] [local] [def] [db_getregistry]
!71 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"db_getlocal", metadata !"db_getlocal", metadata !"", i32 193, metadata !7, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @db_getlocal, null, null, metadata !2, i32 193} ; [ DW_TAG_subprogram ] [line 193] [local] [def] [db_getlocal]
!72 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"db_getinfo", metadata !"db_getinfo", metadata !"", i32 145, metadata !7, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @db_getinfo, null, null, metadata !2, i32 145} ; [ DW_TAG_subprogram ] [line 145] [local] [def] [db_getinfo]
!73 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"treatstackoption", metadata !"treatstackoption", metadata !"", i32 130, metadata !74, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.lua_State*, %struct.lua_State*, i8*)* @treatstackoption, null, null, metadata !2, i32 130} ; [ DW_TAG_subprogram ] [line 130] [local] [def] [treatstackoption]
!74 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !75, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!75 = metadata !{null, metadata !10, metadata !10, metadata !32}
!76 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"settabsb", metadata !"settabsb", metadata !"", i32 117, metadata !77, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.lua_State*, i8*, i32)* @settabsb, null, null, metadata !2, i32 117} ; [ DW_TAG_subprogram ] [line 117] [local] [def] [settabsb]
!77 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !78, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!78 = metadata !{null, metadata !10, metadata !32, metadata !9}
!79 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"settabsi", metadata !"settabsi", metadata !"", i32 112, metadata !77, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.lua_State*, i8*, i32)* @settabsi, null, null, metadata !2, i32 112} ; [ DW_TAG_subprogram ] [line 112] [local] [def] [settabsi]
!80 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"settabss", metadata !"settabss", metadata !"", i32 107, metadata !81, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.lua_State*, i8*, i8*)* @settabss, null, null, metadata !2, i32 107} ; [ DW_TAG_subprogram ] [line 107] [local] [def] [settabss]
!81 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !82, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!82 = metadata !{null, metadata !10, metadata !32, metadata !32}
!83 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"db_gethook", metadata !"db_gethook", metadata !"", i32 379, metadata !7, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @db_gethook, null, null, metadata !2, i32 379} ; [ DW_TAG_subprogram ] [line 379] [local] [def] [db_gethook]
!84 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"unmakemask", metadata !"unmakemask", metadata !"", i32 337, metadata !85, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (i32, i8*)* @unmakemask, null, null, metadata !2, i32 337} ; [ DW_TAG_subprogram ] [line 337] [local] [def] [unmakemask]
!85 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !86, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!86 = metadata !{metadata !87, metadata !9, metadata !87}
!87 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !34} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from char]
!88 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"db_getuservalue", metadata !"db_getuservalue", metadata !"", i32 66, metadata !7, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @db_getuservalue, null, null, metadata !2, i32 66} ; [ DW_TAG_subprogram ] [line 66] [local] [def] [db_getuservalue]
!89 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"db_debug", metadata !"db_debug", metadata !"", i32 402, metadata !7, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @db_debug, null, null, metadata !2, i32 402} ; [ DW_TAG_subprogram ] [line 402] [local] [def] [db_debug]
!90 = metadata !{metadata !91, metadata !104, metadata !106}
!91 = metadata !{i32 786484, i32 0, null, metadata !"dblib", metadata !"dblib", metadata !"", metadata !6, i32 431, metadata !92, i32 1, i32 1, [17 x %struct.luaL_Reg]* @dblib, null} ; [ DW_TAG_variable ] [dblib] [line 431] [local] [def]
!92 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1088, i64 32, i32 0, i32 0, metadata !93, metadata !102, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 1088, align 32, offset 0] [from ]
!93 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !94} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from luaL_Reg]
!94 = metadata !{i32 786454, metadata !95, null, metadata !"luaL_Reg", i32 26, i64 0, i64 0, i64 0, i32 0, metadata !96} ; [ DW_TAG_typedef ] [luaL_Reg] [line 26, size 0, align 0, offset 0] [from luaL_Reg]
!95 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lauxlib.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!96 = metadata !{i32 786451, metadata !95, null, metadata !"luaL_Reg", i32 23, i64 64, i64 32, i32 0, i32 0, null, metadata !97, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [luaL_Reg] [line 23, size 64, align 32, offset 0] [def] [from ]
!97 = metadata !{metadata !98, metadata !99}
!98 = metadata !{i32 786445, metadata !95, metadata !96, metadata !"name", i32 24, i64 32, i64 32, i64 0, i32 0, metadata !32} ; [ DW_TAG_member ] [name] [line 24, size 32, align 32, offset 0] [from ]
!99 = metadata !{i32 786445, metadata !95, metadata !96, metadata !"func", i32 25, i64 32, i64 32, i64 32, i32 0, metadata !100} ; [ DW_TAG_member ] [func] [line 25, size 32, align 32, offset 32] [from lua_CFunction]
!100 = metadata !{i32 786454, metadata !12, null, metadata !"lua_CFunction", i32 105, i64 0, i64 0, i64 0, i32 0, metadata !101} ; [ DW_TAG_typedef ] [lua_CFunction] [line 105, size 0, align 0, offset 0] [from ]
!101 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !7} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!102 = metadata !{metadata !103}
!103 = metadata !{i32 786465, i64 0, i64 17}      ; [ DW_TAG_subrange_type ] [0, 16]
!104 = metadata !{i32 786484, i32 0, null, metadata !"HOOKKEY", metadata !"HOOKKEY", metadata !"", metadata !6, i32 27, metadata !105, i32 1, i32 1, i32* @HOOKKEY, null} ; [ DW_TAG_variable ] [HOOKKEY] [line 27] [local] [def]
!105 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !9} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from int]
!106 = metadata !{i32 786484, i32 0, metadata !35, metadata !"hooknames", metadata !"hooknames", metadata !"", metadata !6, i32 306, metadata !107, i32 1, i32 1, [5 x i8*]* @hookf.hooknames, null} ; [ DW_TAG_variable ] [hooknames] [line 306] [local] [def]
!107 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 160, i64 32, i32 0, i32 0, metadata !108, metadata !109, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 160, align 32, offset 0] [from ]
!108 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !32} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from ]
!109 = metadata !{metadata !110}
!110 = metadata !{i32 786465, i64 0, i64 5}       ; [ DW_TAG_subrange_type ] [0, 4]
!111 = metadata !{i32 (%struct.lua_State*)* @luaopen_debug}
!112 = metadata !{metadata !"luaopen_debug"}
!113 = metadata !{void (%struct.lua_State*, double, i32)* @luaL_checkversion_}
!114 = metadata !{metadata !"luaL_checkversion_"}
!115 = metadata !{void (%struct.lua_State*, i32, i32)* @lua_createtable}
!116 = metadata !{metadata !"lua_createtable"}
!117 = metadata !{void (%struct.lua_State*, %struct.luaL_Reg*, i32)* @luaL_setfuncs}
!118 = metadata !{metadata !"luaL_setfuncs"}
!119 = metadata !{i32 (%struct.lua_State*)* @db_debug}
!120 = metadata !{metadata !"db_debug"}
!121 = metadata !{i32 (%struct.lua_State*)* @db_getuservalue}
!122 = metadata !{metadata !"db_getuservalue"}
!123 = metadata !{i32 (%struct.lua_State*)* @db_gethook}
!124 = metadata !{metadata !"db_gethook"}
!125 = metadata !{i32 (%struct.lua_State*)* @db_getinfo}
!126 = metadata !{metadata !"db_getinfo"}
!127 = metadata !{i32 (%struct.lua_State*)* @db_getlocal}
!128 = metadata !{metadata !"db_getlocal"}
!129 = metadata !{i32 (%struct.lua_State*)* @db_getregistry}
!130 = metadata !{metadata !"db_getregistry"}
!131 = metadata !{i32 (%struct.lua_State*)* @db_getmetatable}
!132 = metadata !{metadata !"db_getmetatable"}
!133 = metadata !{i32 (%struct.lua_State*)* @db_getupvalue}
!134 = metadata !{metadata !"db_getupvalue"}
!135 = metadata !{i32 (%struct.lua_State*)* @db_upvaluejoin}
!136 = metadata !{metadata !"db_upvaluejoin"}
!137 = metadata !{i32 (%struct.lua_State*)* @db_upvalueid}
!138 = metadata !{metadata !"db_upvalueid"}
!139 = metadata !{i32 (%struct.lua_State*)* @db_setuservalue}
!140 = metadata !{metadata !"db_setuservalue"}
!141 = metadata !{i32 (%struct.lua_State*)* @db_sethook}
!142 = metadata !{metadata !"db_sethook"}
!143 = metadata !{i32 (%struct.lua_State*)* @db_setlocal}
!144 = metadata !{metadata !"db_setlocal"}
!145 = metadata !{i32 (%struct.lua_State*)* @db_setmetatable}
!146 = metadata !{metadata !"db_setmetatable"}
!147 = metadata !{i32 (%struct.lua_State*)* @db_setupvalue}
!148 = metadata !{metadata !"db_setupvalue"}
!149 = metadata !{i32 (%struct.lua_State*)* @db_traceback}
!150 = metadata !{metadata !"db_traceback"}
!151 = metadata !{%struct.lua_State* (%struct.lua_State*, i32*)* @getthread}
!152 = metadata !{metadata !"getthread"}
!153 = metadata !{i8* (%struct.lua_State*, i32, i32*)* @lua_tolstring}
!154 = metadata !{metadata !"lua_tolstring"}
!155 = metadata !{i32 (%struct.lua_State*, i32)* @lua_type}
!156 = metadata !{metadata !"lua_type"}
!157 = metadata !{void (%struct.lua_State*, i32)* @lua_pushvalue}
!158 = metadata !{metadata !"lua_pushvalue"}
!159 = metadata !{i64 (%struct.lua_State*, i32, i64)* @luaL_optinteger}
!160 = metadata !{metadata !"luaL_optinteger"}
!161 = metadata !{void (%struct.lua_State*, %struct.lua_State*, i8*, i32)* @luaL_traceback}
!162 = metadata !{metadata !"luaL_traceback"}
!163 = metadata !{%struct.lua_State* (%struct.lua_State*, i32)* @lua_tothread}
!164 = metadata !{metadata !"lua_tothread"}
!165 = metadata !{void (%struct.lua_State*, i32)* @luaL_checkany}
!166 = metadata !{metadata !"luaL_checkany"}
!167 = metadata !{i32 (%struct.lua_State*, i32)* @auxupvalue}
!168 = metadata !{metadata !"auxupvalue"}
!169 = metadata !{i64 (%struct.lua_State*, i32)* @luaL_checkinteger}
!170 = metadata !{metadata !"luaL_checkinteger"}
!171 = metadata !{void (%struct.lua_State*, i32, i32)* @luaL_checktype}
!172 = metadata !{metadata !"luaL_checktype"}
!173 = metadata !{i8* (%struct.lua_State*, i32, i32)* @lua_getupvalue}
!174 = metadata !{metadata !"lua_getupvalue"}
!175 = metadata !{i8* (%struct.lua_State*, i32, i32)* @lua_setupvalue}
!176 = metadata !{metadata !"lua_setupvalue"}
!177 = metadata !{i8* (%struct.lua_State*, i8*)* @lua_pushstring}
!178 = metadata !{metadata !"lua_pushstring"}
!179 = metadata !{void (%struct.lua_State*, i32, i32)* @lua_rotate}
!180 = metadata !{metadata !"lua_rotate"}
!181 = metadata !{i32 (%struct.lua_State*, i32, i8*)* @luaL_argerror}
!182 = metadata !{metadata !"luaL_argerror"}
!183 = metadata !{void (%struct.lua_State*, i32)* @lua_settop}
!184 = metadata !{metadata !"lua_settop"}
!185 = metadata !{i32 (%struct.lua_State*, i32)* @lua_setmetatable}
!186 = metadata !{metadata !"lua_setmetatable"}
!187 = metadata !{i32 (%struct.lua_State*, i32, %struct.lua_Debug*)* @lua_getstack}
!188 = metadata !{metadata !"lua_getstack"}
!189 = metadata !{void (%struct.lua_State*, %struct.lua_State*, i32)* @checkstack}
!190 = metadata !{metadata !"checkstack"}
!191 = metadata !{void (%struct.lua_State*, %struct.lua_State*, i32)* @lua_xmove}
!192 = metadata !{metadata !"lua_xmove"}
!193 = metadata !{i8* (%struct.lua_State*, %struct.lua_Debug*, i32)* @lua_setlocal}
!194 = metadata !{metadata !"lua_setlocal"}
!195 = metadata !{i32 (%struct.lua_State*, i32)* @lua_checkstack}
!196 = metadata !{metadata !"lua_checkstack"}
!197 = metadata !{i32 (%struct.lua_State*, i8*, ...)* @luaL_error}
!198 = metadata !{metadata !"luaL_error"}
!199 = metadata !{i8* (%struct.lua_State*, i32, i32*)* @luaL_checklstring}
!200 = metadata !{metadata !"luaL_checklstring"}
!201 = metadata !{void (%struct.lua_State*, %struct.lua_Debug*)* @hookf}
!202 = metadata !{metadata !"hookf"}
!203 = metadata !{i32 (i8*, i32)* @makemask}
!204 = metadata !{metadata !"makemask"}
!205 = metadata !{i32 (%struct.lua_State*, i32, i8*)* @lua_rawgetp}
!206 = metadata !{metadata !"lua_rawgetp"}
!207 = metadata !{void (%struct.lua_State*, i32, i8*)* @lua_rawsetp}
!208 = metadata !{metadata !"lua_rawsetp"}
!209 = metadata !{void (%struct.lua_State*, i32, i8*)* @lua_setfield}
!210 = metadata !{metadata !"lua_setfield"}
!211 = metadata !{i32 (%struct.lua_State*)* @lua_pushthread}
!212 = metadata !{metadata !"lua_pushthread"}
!213 = metadata !{void (%struct.lua_State*, i32)* @lua_rawset}
!214 = metadata !{metadata !"lua_rawset"}
!215 = metadata !{void (%struct.lua_State*, void (%struct.lua_State*, %struct.lua_Debug*)*, i32, i32)* @lua_sethook}
!216 = metadata !{metadata !"lua_sethook"}
!217 = metadata !{i8* (i8*, i32)* @strchr}
!218 = metadata !{metadata !"strchr"}
!219 = metadata !{i32 (%struct.lua_State*, i32)* @lua_rawget}
!220 = metadata !{metadata !"lua_rawget"}
!221 = metadata !{void (%struct.lua_State*, i64)* @lua_pushinteger}
!222 = metadata !{metadata !"lua_pushinteger"}
!223 = metadata !{void (%struct.lua_State*)* @lua_pushnil}
!224 = metadata !{metadata !"lua_pushnil"}
!225 = metadata !{void (%struct.lua_State*, i32, i32, i32, i32 (%struct.lua_State*, i32, i32)*)* @lua_callk}
!226 = metadata !{metadata !"lua_callk"}
!227 = metadata !{void (%struct.lua_State*, i32)* @lua_setuservalue}
!228 = metadata !{metadata !"lua_setuservalue"}
!229 = metadata !{i32 (%struct.lua_State*, i32, i32)* @checkupval}
!230 = metadata !{metadata !"checkupval"}
!231 = metadata !{void (%struct.lua_State*, i8*)* @lua_pushlightuserdata}
!232 = metadata !{metadata !"lua_pushlightuserdata"}
!233 = metadata !{i8* (%struct.lua_State*, i32, i32)* @lua_upvalueid}
!234 = metadata !{metadata !"lua_upvalueid"}
!235 = metadata !{i32 (%struct.lua_State*, i32)* @lua_iscfunction}
!236 = metadata !{metadata !"lua_iscfunction"}
!237 = metadata !{void (%struct.lua_State*, i32, i32, i32, i32)* @lua_upvaluejoin}
!238 = metadata !{metadata !"lua_upvaluejoin"}
!239 = metadata !{i32 (%struct.lua_State*, i32)* @lua_getmetatable}
!240 = metadata !{metadata !"lua_getmetatable"}
!241 = metadata !{i8* (%struct.lua_State*, %struct.lua_Debug*, i32)* @lua_getlocal}
!242 = metadata !{metadata !"lua_getlocal"}
!243 = metadata !{i8* (%struct.lua_State*, i32, i8*, i32*)* @luaL_optlstring}
!244 = metadata !{metadata !"luaL_optlstring"}
!245 = metadata !{i8* (%struct.lua_State*, i8*, ...)* @lua_pushfstring}
!246 = metadata !{metadata !"lua_pushfstring"}
!247 = metadata !{i32 (%struct.lua_State*, i8*, %struct.lua_Debug*)* @lua_getinfo}
!248 = metadata !{metadata !"lua_getinfo"}
!249 = metadata !{void (%struct.lua_State*, i8*, i8*)* @settabss}
!250 = metadata !{metadata !"settabss"}
!251 = metadata !{void (%struct.lua_State*, i8*, i32)* @settabsi}
!252 = metadata !{metadata !"settabsi"}
!253 = metadata !{void (%struct.lua_State*, i8*, i32)* @settabsb}
!254 = metadata !{metadata !"settabsb"}
!255 = metadata !{void (%struct.lua_State*, %struct.lua_State*, i8*)* @treatstackoption}
!256 = metadata !{metadata !"treatstackoption"}
!257 = metadata !{void (%struct.lua_State*, i32)* @lua_pushboolean}
!258 = metadata !{metadata !"lua_pushboolean"}
!259 = metadata !{i32 (%struct.lua_State*)* @lua_gethookmask}
!260 = metadata !{metadata !"lua_gethookmask"}
!261 = metadata !{void (%struct.lua_State*, %struct.lua_Debug*)* (%struct.lua_State*)* @lua_gethook}
!262 = metadata !{metadata !"lua_gethook"}
!263 = metadata !{i8* (i32, i8*)* @unmakemask}
!264 = metadata !{metadata !"unmakemask"}
!265 = metadata !{i32 (%struct.lua_State*)* @lua_gethookcount}
!266 = metadata !{metadata !"lua_gethookcount"}
!267 = metadata !{i32 (%struct.lua_State*, i32)* @lua_getuservalue}
!268 = metadata !{metadata !"lua_getuservalue"}
!269 = metadata !{i32 (%struct._IO_FILE*, i8*, ...)* @fprintf}
!270 = metadata !{metadata !"fprintf"}
!271 = metadata !{i32 (%struct._IO_FILE*)* @fflush}
!272 = metadata !{metadata !"fflush"}
!273 = metadata !{i8* (i8*, i32, %struct._IO_FILE*)* @fgets}
!274 = metadata !{metadata !"fgets"}
!275 = metadata !{i32 (i8*, i8*)* @strcmp}
!276 = metadata !{metadata !"strcmp"}
!277 = metadata !{i32 (%struct.lua_State*, i8*, i32, i8*, i8*)* @luaL_loadbufferx}
!278 = metadata !{metadata !"luaL_loadbufferx"}
!279 = metadata !{i32 (i8*)* @strlen}
!280 = metadata !{metadata !"strlen"}
!281 = metadata !{i32 (%struct.lua_State*, i32, i32, i32, i32, i32 (%struct.lua_State*, i32, i32)*)* @lua_pcallk}
!282 = metadata !{metadata !"lua_pcallk"}
!283 = metadata !{metadata !"int.lua_State *.1"}
!284 = metadata !{metadata !"void.lua_State *.1.lua_Number.0.size_t.0"}
!285 = metadata !{metadata !"void.lua_State *.1.int.0.int.0"}
!286 = metadata !{metadata !"void.lua_State *.1.const luaL_Reg *.1.int.0"}
!287 = metadata !{metadata !"lua_State .lua_State *.1.int *.1"}
!288 = metadata !{metadata !"const char .lua_State *.1.int.0.size_t *.1"}
!289 = metadata !{metadata !"int.lua_State *.1.int.0"}
!290 = metadata !{metadata !"void.lua_State *.1.int.0"}
!291 = metadata !{metadata !"lua_Integer.lua_State *.1.int.0.lua_Integer.0"}
!292 = metadata !{metadata !"void.lua_State *.1.lua_State *.1.const char *.1.int.0"}
!293 = metadata !{metadata !"lua_State .lua_State *.1.int.0"}
!294 = metadata !{metadata !"lua_Integer.lua_State *.1.int.0"}
!295 = metadata !{metadata !"const char .lua_State *.1.int.0.int.0"}
!296 = metadata !{metadata !"const char .lua_State *.1.const char *.1"}
!297 = metadata !{metadata !"int.lua_State *.1.int.0.const char *.1"}
!298 = metadata !{metadata !"int.lua_State *.1.int.0.lua_Debug *.1"}
!299 = metadata !{metadata !"void.lua_State *.1.lua_State *.1.int.0"}
!300 = metadata !{metadata !"const char .lua_State *.1.const lua_Debug *.1.int.0"}
!301 = metadata !{metadata !"int.lua_State *.1.const char *.1"}
!302 = metadata !{metadata !"void.lua_State *.1.lua_Debug *.1"}
!303 = metadata !{metadata !"int.const char *.1.int.0"}
!304 = metadata !{metadata !"int.lua_State *.1.int.0.const void *.1"}
!305 = metadata !{metadata !"void.lua_State *.1.int.0.const void *.1"}
!306 = metadata !{metadata !"void.lua_State *.1.int.0.const char *.1"}
!307 = metadata !{metadata !"void.lua_State *.1.lua_Hook.1.int.0.int.0"}
!308 = metadata !{metadata !"char .const char *.1.int.0"}
!309 = metadata !{metadata !"void.lua_State *.1.lua_Integer.0"}
!310 = metadata !{metadata !"void.lua_State *.1"}
!311 = metadata !{metadata !"void.lua_State *.1.int.0.int.0.lua_KContext.0.lua_KFunction.1"}
!312 = metadata !{metadata !"int.lua_State *.1.int.0.int.0"}
!313 = metadata !{metadata !"void.lua_State *.1.void *.1"}
!314 = metadata !{metadata !"void .lua_State *.1.int.0.int.0"}
!315 = metadata !{metadata !"void.lua_State *.1.int.0.int.0.int.0.int.0"}
!316 = metadata !{metadata !"const char .lua_State *.1.int.0.const char *.1.size_t *.1"}
!317 = metadata !{metadata !"int.lua_State *.1.const char *.1.lua_Debug *.1"}
!318 = metadata !{metadata !"void.lua_State *.1.const char *.1.const char *.1"}
!319 = metadata !{metadata !"void.lua_State *.1.const char *.1.int.0"}
!320 = metadata !{metadata !"void.lua_State *.1.lua_State *.1.const char *.1"}
!321 = metadata !{metadata !"lua_Hook.lua_State *.1"}
!322 = metadata !{metadata !"char .int.0.char *.1"}
!323 = metadata !{metadata !"int.FILE *restrict.1.const char *restrict.1"}
!324 = metadata !{metadata !"int.FILE *.1"}
!325 = metadata !{metadata !"char .char *restrict.1.int.0.FILE *restrict.1"}
!326 = metadata !{metadata !"int.const char *.1.const char *.1"}
!327 = metadata !{metadata !"int.lua_State *.1.const char *.1.size_t.0.const char *.1.const char *.1"}
!328 = metadata !{metadata !"unsigned int.const char *.1"}
!329 = metadata !{metadata !"int.lua_State *.1.int.0.int.0.int.0.lua_KContext.0.lua_KFunction.1"}
!330 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lualib.h"}
!331 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lauxlib.h"}
!332 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lua.h"}
!333 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/ldblib.c"}
!334 = metadata !{metadata !"D:/Xilinx/SDx/2016.3/SDK/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include\5Cstring.h"}
!335 = metadata !{metadata !"D:/Xilinx/SDx/2016.3/SDK/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include\5Cstdio.h"}
!336 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!337 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!338 = metadata !{i32 1, metadata !"wchar_size", i32 4}
!339 = metadata !{i32 1, metadata !"min_enum_size", i32 4}
!340 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
!341 = metadata !{i32 786689, metadata !4, metadata !"L", metadata !6, i32 16777668, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 452]
!342 = metadata !{i32 452, i32 42, metadata !4, null}
!343 = metadata !{i32 453, i32 3, metadata !4, null}
!344 = metadata !{i32 454, i32 3, metadata !4, null}
!345 = metadata !{i32 786689, metadata !89, metadata !"L", metadata !6, i32 16777618, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 402]
!346 = metadata !{i32 402, i32 33, metadata !89, null}
!347 = metadata !{i32 403, i32 3, metadata !348, null}
!348 = metadata !{i32 786443, metadata !5, metadata !89, i32 403, i32 3, i32 0, i32 54} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldblib.c]
!349 = metadata !{i32 786688, metadata !350, metadata !"buffer", metadata !6, i32 404, metadata !351, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buffer] [line 404]
!350 = metadata !{i32 786443, metadata !5, metadata !348, i32 403, i32 12, i32 0, i32 55} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldblib.c]
!351 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 2000, i64 8, i32 0, i32 0, metadata !34, metadata !352, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 2000, align 8, offset 0] [from char]
!352 = metadata !{metadata !353}
!353 = metadata !{i32 786465, i64 0, i64 250}     ; [ DW_TAG_subrange_type ] [0, 249]
!354 = metadata !{i32 404, i32 10, metadata !350, null}
!355 = metadata !{i32 405, i32 5, metadata !350, null}
!356 = metadata !{i32 406, i32 9, metadata !357, null}
!357 = metadata !{i32 786443, metadata !5, metadata !350, i32 406, i32 9, i32 0, i32 56} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldblib.c]
!358 = metadata !{i32 407, i32 9, metadata !357, null}
!359 = metadata !{i32 408, i32 7, metadata !357, null}
!360 = metadata !{i32 409, i32 9, metadata !361, null}
!361 = metadata !{i32 786443, metadata !5, metadata !350, i32 409, i32 9, i32 0, i32 57} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldblib.c]
!362 = metadata !{i32 410, i32 9, metadata !361, null}
!363 = metadata !{i32 411, i32 7, metadata !361, null}
!364 = metadata !{i32 412, i32 5, metadata !350, null}
!365 = metadata !{i32 413, i32 3, metadata !350, null}
!366 = metadata !{i32 786689, metadata !88, metadata !"L", metadata !6, i32 16777282, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 66]
!367 = metadata !{i32 66, i32 40, metadata !88, null}
!368 = metadata !{i32 67, i32 7, metadata !369, null}
!369 = metadata !{i32 786443, metadata !5, metadata !88, i32 67, i32 7, i32 0, i32 53} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldblib.c]
!370 = metadata !{i32 68, i32 5, metadata !369, null}
!371 = metadata !{i32 70, i32 5, metadata !369, null}
!372 = metadata !{i32 71, i32 3, metadata !88, null}
!373 = metadata !{i32 786689, metadata !83, metadata !"L", metadata !6, i32 16777595, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 379]
!374 = metadata !{i32 379, i32 35, metadata !83, null}
!375 = metadata !{i32 786688, metadata !83, metadata !"arg", metadata !6, i32 380, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [arg] [line 380]
!376 = metadata !{i32 380, i32 7, metadata !83, null}
!377 = metadata !{i32 786688, metadata !83, metadata !"L1", metadata !6, i32 381, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [L1] [line 381]
!378 = metadata !{i32 381, i32 14, metadata !83, null}
!379 = metadata !{i32 381, i32 19, metadata !83, null}
!380 = metadata !{i32 786688, metadata !83, metadata !"buff", metadata !6, i32 382, metadata !381, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buff] [line 382]
!381 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 40, i64 8, i32 0, i32 0, metadata !34, metadata !109, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 40, align 8, offset 0] [from char]
!382 = metadata !{i32 382, i32 8, metadata !83, null}
!383 = metadata !{i32 786688, metadata !83, metadata !"mask", metadata !6, i32 383, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mask] [line 383]
!384 = metadata !{i32 383, i32 7, metadata !83, null}
!385 = metadata !{i32 383, i32 14, metadata !83, null}
!386 = metadata !{i32 786688, metadata !83, metadata !"hook", metadata !6, i32 384, metadata !387, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [hook] [line 384]
!387 = metadata !{i32 786454, metadata !12, null, metadata !"lua_Hook", i32 421, i64 0, i64 0, i64 0, i32 0, metadata !388} ; [ DW_TAG_typedef ] [lua_Hook] [line 421, size 0, align 0, offset 0] [from ]
!388 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !36} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!389 = metadata !{i32 384, i32 12, metadata !83, null}
!390 = metadata !{i32 384, i32 19, metadata !83, null}
!391 = metadata !{i32 385, i32 7, metadata !392, null}
!392 = metadata !{i32 786443, metadata !5, metadata !83, i32 385, i32 7, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldblib.c]
!393 = metadata !{i32 386, i32 5, metadata !392, null}
!394 = metadata !{i32 387, i32 12, metadata !395, null}
!395 = metadata !{i32 786443, metadata !5, metadata !392, i32 387, i32 12, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldblib.c]
!396 = metadata !{i32 388, i32 5, metadata !395, null}
!397 = metadata !{i32 390, i32 5, metadata !398, null}
!398 = metadata !{i32 786443, metadata !5, metadata !395, i32 389, i32 8, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldblib.c]
!399 = metadata !{i32 391, i32 5, metadata !398, null}
!400 = metadata !{i32 392, i32 5, metadata !398, null}
!401 = metadata !{i32 392, i32 25, metadata !398, null}
!402 = metadata !{i32 393, i32 5, metadata !398, null}
!403 = metadata !{i32 394, i32 5, metadata !398, null}
!404 = metadata !{i32 396, i32 3, metadata !83, null}
!405 = metadata !{i32 396, i32 21, metadata !83, null}
!406 = metadata !{i32 397, i32 3, metadata !83, null}
!407 = metadata !{i32 397, i32 22, metadata !83, null}
!408 = metadata !{i32 398, i32 3, metadata !83, null}
!409 = metadata !{i32 786689, metadata !72, metadata !"L", metadata !6, i32 16777361, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 145]
!410 = metadata !{i32 145, i32 35, metadata !72, null}
!411 = metadata !{i32 786688, metadata !72, metadata !"ar", metadata !6, i32 146, metadata !39, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ar] [line 146]
!412 = metadata !{i32 146, i32 13, metadata !72, null}
!413 = metadata !{i32 786688, metadata !72, metadata !"arg", metadata !6, i32 147, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [arg] [line 147]
!414 = metadata !{i32 147, i32 7, metadata !72, null}
!415 = metadata !{i32 786688, metadata !72, metadata !"L1", metadata !6, i32 148, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [L1] [line 148]
!416 = metadata !{i32 148, i32 14, metadata !72, null}
!417 = metadata !{i32 148, i32 19, metadata !72, null}
!418 = metadata !{i32 786688, metadata !72, metadata !"options", metadata !6, i32 149, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [options] [line 149]
!419 = metadata !{i32 149, i32 15, metadata !72, null}
!420 = metadata !{i32 149, i32 25, metadata !72, null}
!421 = metadata !{i32 150, i32 3, metadata !72, null}
!422 = metadata !{i32 151, i32 7, metadata !423, null}
!423 = metadata !{i32 786443, metadata !5, metadata !72, i32 151, i32 7, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldblib.c]
!424 = metadata !{i32 152, i32 15, metadata !425, null}
!425 = metadata !{i32 786443, metadata !5, metadata !423, i32 151, i32 35, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldblib.c]
!426 = metadata !{i32 153, i32 5, metadata !425, null}
!427 = metadata !{i32 154, i32 5, metadata !425, null}
!428 = metadata !{i32 155, i32 3, metadata !425, null}
!429 = metadata !{i32 157, i32 10, metadata !430, null}
!430 = metadata !{i32 786443, metadata !5, metadata !431, i32 157, i32 9, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldblib.c]
!431 = metadata !{i32 786443, metadata !5, metadata !423, i32 156, i32 8, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldblib.c]
!432 = metadata !{i32 157, i32 32, metadata !430, null}
!433 = metadata !{i32 158, i32 7, metadata !434, null}
!434 = metadata !{i32 786443, metadata !5, metadata !430, i32 157, i32 69, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldblib.c]
!435 = metadata !{i32 159, i32 7, metadata !434, null}
!436 = metadata !{i32 162, i32 8, metadata !437, null}
!437 = metadata !{i32 786443, metadata !5, metadata !72, i32 162, i32 7, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldblib.c]
!438 = metadata !{i32 163, i32 12, metadata !437, null}
!439 = metadata !{i32 164, i32 3, metadata !72, null}
!440 = metadata !{i32 165, i32 7, metadata !441, null}
!441 = metadata !{i32 786443, metadata !5, metadata !72, i32 165, i32 7, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldblib.c]
!442 = metadata !{i32 166, i32 5, metadata !443, null}
!443 = metadata !{i32 786443, metadata !5, metadata !441, i32 165, i32 29, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldblib.c]
!444 = metadata !{i32 167, i32 5, metadata !443, null}
!445 = metadata !{i32 168, i32 5, metadata !443, null}
!446 = metadata !{i32 169, i32 5, metadata !443, null}
!447 = metadata !{i32 170, i32 5, metadata !443, null}
!448 = metadata !{i32 171, i32 3, metadata !443, null}
!449 = metadata !{i32 172, i32 7, metadata !450, null}
!450 = metadata !{i32 786443, metadata !5, metadata !72, i32 172, i32 7, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldblib.c]
!451 = metadata !{i32 173, i32 5, metadata !450, null}
!452 = metadata !{i32 174, i32 7, metadata !453, null}
!453 = metadata !{i32 786443, metadata !5, metadata !72, i32 174, i32 7, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldblib.c]
!454 = metadata !{i32 175, i32 5, metadata !455, null}
!455 = metadata !{i32 786443, metadata !5, metadata !453, i32 174, i32 29, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldblib.c]
!456 = metadata !{i32 176, i32 5, metadata !455, null}
!457 = metadata !{i32 177, i32 5, metadata !455, null}
!458 = metadata !{i32 178, i32 3, metadata !455, null}
!459 = metadata !{i32 179, i32 7, metadata !460, null}
!460 = metadata !{i32 786443, metadata !5, metadata !72, i32 179, i32 7, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldblib.c]
!461 = metadata !{i32 180, i32 5, metadata !462, null}
!462 = metadata !{i32 786443, metadata !5, metadata !460, i32 179, i32 29, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldblib.c]
!463 = metadata !{i32 181, i32 5, metadata !462, null}
!464 = metadata !{i32 182, i32 3, metadata !462, null}
!465 = metadata !{i32 183, i32 7, metadata !466, null}
!466 = metadata !{i32 786443, metadata !5, metadata !72, i32 183, i32 7, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldblib.c]
!467 = metadata !{i32 184, i32 5, metadata !466, null}
!468 = metadata !{i32 185, i32 7, metadata !469, null}
!469 = metadata !{i32 786443, metadata !5, metadata !72, i32 185, i32 7, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldblib.c]
!470 = metadata !{i32 186, i32 5, metadata !469, null}
!471 = metadata !{i32 187, i32 7, metadata !472, null}
!472 = metadata !{i32 786443, metadata !5, metadata !72, i32 187, i32 7, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldblib.c]
!473 = metadata !{i32 188, i32 5, metadata !472, null}
!474 = metadata !{i32 189, i32 3, metadata !72, null}
!475 = metadata !{i32 190, i32 1, metadata !72, null}
!476 = metadata !{i32 786689, metadata !71, metadata !"L", metadata !6, i32 16777409, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 193]
!477 = metadata !{i32 193, i32 36, metadata !71, null}
!478 = metadata !{i32 786688, metadata !71, metadata !"arg", metadata !6, i32 194, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [arg] [line 194]
!479 = metadata !{i32 194, i32 7, metadata !71, null}
!480 = metadata !{i32 786688, metadata !71, metadata !"L1", metadata !6, i32 195, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [L1] [line 195]
!481 = metadata !{i32 195, i32 14, metadata !71, null}
!482 = metadata !{i32 195, i32 19, metadata !71, null}
!483 = metadata !{i32 786688, metadata !71, metadata !"ar", metadata !6, i32 196, metadata !39, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ar] [line 196]
!484 = metadata !{i32 196, i32 13, metadata !71, null}
!485 = metadata !{i32 786688, metadata !71, metadata !"name", metadata !6, i32 197, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [name] [line 197]
!486 = metadata !{i32 197, i32 15, metadata !71, null}
!487 = metadata !{i32 786688, metadata !71, metadata !"nvar", metadata !6, i32 198, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nvar] [line 198]
!488 = metadata !{i32 198, i32 7, metadata !71, null}
!489 = metadata !{i32 198, i32 19, metadata !71, null}
!490 = metadata !{i32 199, i32 7, metadata !491, null}
!491 = metadata !{i32 786443, metadata !5, metadata !71, i32 199, i32 7, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldblib.c]
!492 = metadata !{i32 200, i32 5, metadata !493, null}
!493 = metadata !{i32 786443, metadata !5, metadata !491, i32 199, i32 35, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldblib.c]
!494 = metadata !{i32 201, i32 5, metadata !493, null}
!495 = metadata !{i32 201, i32 23, metadata !493, null}
!496 = metadata !{i32 202, i32 5, metadata !493, null}
!497 = metadata !{i32 786688, metadata !498, metadata !"level", metadata !6, i32 205, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [level] [line 205]
!498 = metadata !{i32 786443, metadata !5, metadata !491, i32 204, i32 8, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldblib.c]
!499 = metadata !{i32 205, i32 9, metadata !498, null}
!500 = metadata !{i32 205, i32 22, metadata !498, null}
!501 = metadata !{i32 206, i32 10, metadata !502, null}
!502 = metadata !{i32 786443, metadata !5, metadata !498, i32 206, i32 9, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldblib.c]
!503 = metadata !{i32 207, i32 14, metadata !502, null}
!504 = metadata !{i32 208, i32 5, metadata !498, null}
!505 = metadata !{i32 209, i32 12, metadata !498, null}
!506 = metadata !{i32 210, i32 9, metadata !507, null}
!507 = metadata !{i32 786443, metadata !5, metadata !498, i32 210, i32 9, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldblib.c]
!508 = metadata !{i32 211, i32 7, metadata !509, null}
!509 = metadata !{i32 786443, metadata !5, metadata !507, i32 210, i32 15, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldblib.c]
!510 = metadata !{i32 212, i32 7, metadata !509, null}
!511 = metadata !{i32 213, i32 7, metadata !509, null}
!512 = metadata !{i32 214, i32 7, metadata !509, null}
!513 = metadata !{i32 217, i32 7, metadata !514, null}
!514 = metadata !{i32 786443, metadata !5, metadata !507, i32 216, i32 10, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldblib.c]
!515 = metadata !{i32 218, i32 7, metadata !514, null}
!516 = metadata !{i32 221, i32 1, metadata !71, null}
!517 = metadata !{i32 786689, metadata !70, metadata !"L", metadata !6, i32 16777257, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 41]
!518 = metadata !{i32 41, i32 39, metadata !70, null}
!519 = metadata !{i32 42, i32 3, metadata !70, null}
!520 = metadata !{i32 43, i32 3, metadata !70, null}
!521 = metadata !{i32 786689, metadata !69, metadata !"L", metadata !6, i32 16777263, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 47]
!522 = metadata !{i32 47, i32 40, metadata !69, null}
!523 = metadata !{i32 48, i32 3, metadata !69, null}
!524 = metadata !{i32 49, i32 8, metadata !525, null}
!525 = metadata !{i32 786443, metadata !5, metadata !69, i32 49, i32 7, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldblib.c]
!526 = metadata !{i32 50, i32 5, metadata !527, null}
!527 = metadata !{i32 786443, metadata !5, metadata !525, i32 49, i32 32, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldblib.c]
!528 = metadata !{i32 51, i32 3, metadata !527, null}
!529 = metadata !{i32 52, i32 3, metadata !69, null}
!530 = metadata !{i32 786689, metadata !68, metadata !"L", metadata !6, i32 16777476, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 260]
!531 = metadata !{i32 260, i32 38, metadata !68, null}
!532 = metadata !{i32 261, i32 10, metadata !68, null}
!533 = metadata !{i32 786689, metadata !67, metadata !"L", metadata !6, i32 16777507, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 291]
!534 = metadata !{i32 291, i32 39, metadata !67, null}
!535 = metadata !{i32 786688, metadata !67, metadata !"n1", metadata !6, i32 292, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n1] [line 292]
!536 = metadata !{i32 292, i32 7, metadata !67, null}
!537 = metadata !{i32 292, i32 12, metadata !67, null}
!538 = metadata !{i32 786688, metadata !67, metadata !"n2", metadata !6, i32 293, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n2] [line 293]
!539 = metadata !{i32 293, i32 7, metadata !67, null}
!540 = metadata !{i32 293, i32 12, metadata !67, null}
!541 = metadata !{i32 294, i32 3, metadata !67, null}
!542 = metadata !{i32 294, i32 3, metadata !543, null}
!543 = metadata !{i32 786443, metadata !5, metadata !67, i32 294, i32 3, i32 1, i32 58} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldblib.c]
!544 = metadata !{i32 294, i32 3, metadata !545, null}
!545 = metadata !{i32 786443, metadata !5, metadata !546, i32 294, i32 3, i32 3, i32 60} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldblib.c]
!546 = metadata !{i32 786443, metadata !5, metadata !67, i32 294, i32 3, i32 2, i32 59} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldblib.c]
!547 = metadata !{i32 295, i32 3, metadata !67, null}
!548 = metadata !{i32 295, i32 3, metadata !549, null}
!549 = metadata !{i32 786443, metadata !5, metadata !67, i32 295, i32 3, i32 1, i32 61} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldblib.c]
!550 = metadata !{i32 295, i32 3, metadata !551, null}
!551 = metadata !{i32 786443, metadata !5, metadata !552, i32 295, i32 3, i32 3, i32 63} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldblib.c]
!552 = metadata !{i32 786443, metadata !5, metadata !67, i32 295, i32 3, i32 2, i32 62} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldblib.c]
!553 = metadata !{i32 296, i32 3, metadata !67, null}
!554 = metadata !{i32 297, i32 3, metadata !67, null}
!555 = metadata !{i32 786689, metadata !63, metadata !"L", metadata !6, i32 16777500, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 284]
!556 = metadata !{i32 284, i32 37, metadata !63, null}
!557 = metadata !{i32 786688, metadata !63, metadata !"n", metadata !6, i32 285, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 285]
!558 = metadata !{i32 285, i32 7, metadata !63, null}
!559 = metadata !{i32 285, i32 11, metadata !63, null}
!560 = metadata !{i32 286, i32 3, metadata !63, null}
!561 = metadata !{i32 286, i32 28, metadata !63, null}
!562 = metadata !{i32 287, i32 3, metadata !63, null}
!563 = metadata !{i32 786689, metadata !62, metadata !"L", metadata !6, i32 16777291, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 75]
!564 = metadata !{i32 75, i32 40, metadata !62, null}
!565 = metadata !{i32 76, i32 3, metadata !62, null}
!566 = metadata !{i32 77, i32 3, metadata !62, null}
!567 = metadata !{i32 78, i32 3, metadata !62, null}
!568 = metadata !{i32 79, i32 3, metadata !62, null}
!569 = metadata !{i32 80, i32 3, metadata !62, null}
!570 = metadata !{i32 786689, metadata !28, metadata !"L", metadata !6, i32 16777563, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 347]
!571 = metadata !{i32 347, i32 35, metadata !28, null}
!572 = metadata !{i32 786688, metadata !28, metadata !"arg", metadata !6, i32 348, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [arg] [line 348]
!573 = metadata !{i32 348, i32 7, metadata !28, null}
!574 = metadata !{i32 786688, metadata !28, metadata !"mask", metadata !6, i32 348, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mask] [line 348]
!575 = metadata !{i32 348, i32 12, metadata !28, null}
!576 = metadata !{i32 786688, metadata !28, metadata !"count", metadata !6, i32 348, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [count] [line 348]
!577 = metadata !{i32 348, i32 18, metadata !28, null}
!578 = metadata !{i32 786688, metadata !28, metadata !"func", metadata !6, i32 349, metadata !387, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [func] [line 349]
!579 = metadata !{i32 349, i32 12, metadata !28, null}
!580 = metadata !{i32 786688, metadata !28, metadata !"L1", metadata !6, i32 350, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [L1] [line 350]
!581 = metadata !{i32 350, i32 14, metadata !28, null}
!582 = metadata !{i32 350, i32 19, metadata !28, null}
!583 = metadata !{i32 351, i32 7, metadata !584, null}
!584 = metadata !{i32 786443, metadata !5, metadata !28, i32 351, i32 7, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldblib.c]
!585 = metadata !{i32 352, i32 5, metadata !586, null}
!586 = metadata !{i32 786443, metadata !5, metadata !584, i32 351, i32 34, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldblib.c]
!587 = metadata !{i32 353, i32 5, metadata !586, null}
!588 = metadata !{i32 353, i32 18, metadata !586, null}
!589 = metadata !{i32 353, i32 28, metadata !586, null}
!590 = metadata !{i32 354, i32 3, metadata !586, null}
!591 = metadata !{i32 786688, metadata !592, metadata !"smask", metadata !6, i32 356, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [smask] [line 356]
!592 = metadata !{i32 786443, metadata !5, metadata !584, i32 355, i32 8, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldblib.c]
!593 = metadata !{i32 356, i32 17, metadata !592, null}
!594 = metadata !{i32 356, i32 25, metadata !592, null}
!595 = metadata !{i32 357, i32 5, metadata !592, null}
!596 = metadata !{i32 358, i32 18, metadata !592, null}
!597 = metadata !{i32 359, i32 5, metadata !592, null}
!598 = metadata !{i32 359, i32 26, metadata !592, null}
!599 = metadata !{i32 361, i32 7, metadata !600, null}
!600 = metadata !{i32 786443, metadata !5, metadata !28, i32 361, i32 7, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldblib.c]
!601 = metadata !{i32 362, i32 5, metadata !602, null}
!602 = metadata !{i32 786443, metadata !5, metadata !600, i32 361, i32 64, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldblib.c]
!603 = metadata !{i32 363, i32 5, metadata !602, null}
!604 = metadata !{i32 364, i32 5, metadata !602, null}
!605 = metadata !{i32 365, i32 5, metadata !602, null}
!606 = metadata !{i32 366, i32 5, metadata !602, null}
!607 = metadata !{i32 367, i32 5, metadata !602, null}
!608 = metadata !{i32 368, i32 5, metadata !602, null}
!609 = metadata !{i32 369, i32 3, metadata !602, null}
!610 = metadata !{i32 370, i32 3, metadata !28, null}
!611 = metadata !{i32 371, i32 3, metadata !28, null}
!612 = metadata !{i32 371, i32 23, metadata !28, null}
!613 = metadata !{i32 372, i32 3, metadata !28, null}
!614 = metadata !{i32 373, i32 3, metadata !28, null}
!615 = metadata !{i32 374, i32 3, metadata !28, null}
!616 = metadata !{i32 375, i32 3, metadata !28, null}
!617 = metadata !{i32 786689, metadata !24, metadata !"L", metadata !6, i32 16777440, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 224]
!618 = metadata !{i32 224, i32 36, metadata !24, null}
!619 = metadata !{i32 786688, metadata !24, metadata !"arg", metadata !6, i32 225, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [arg] [line 225]
!620 = metadata !{i32 225, i32 7, metadata !24, null}
!621 = metadata !{i32 786688, metadata !24, metadata !"name", metadata !6, i32 226, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [name] [line 226]
!622 = metadata !{i32 226, i32 15, metadata !24, null}
!623 = metadata !{i32 786688, metadata !24, metadata !"L1", metadata !6, i32 227, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [L1] [line 227]
!624 = metadata !{i32 227, i32 14, metadata !24, null}
!625 = metadata !{i32 227, i32 19, metadata !24, null}
!626 = metadata !{i32 786688, metadata !24, metadata !"ar", metadata !6, i32 228, metadata !39, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ar] [line 228]
!627 = metadata !{i32 228, i32 13, metadata !24, null}
!628 = metadata !{i32 786688, metadata !24, metadata !"level", metadata !6, i32 229, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [level] [line 229]
!629 = metadata !{i32 229, i32 7, metadata !24, null}
!630 = metadata !{i32 229, i32 20, metadata !24, null}
!631 = metadata !{i32 786688, metadata !24, metadata !"nvar", metadata !6, i32 230, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nvar] [line 230]
!632 = metadata !{i32 230, i32 7, metadata !24, null}
!633 = metadata !{i32 230, i32 19, metadata !24, null}
!634 = metadata !{i32 231, i32 8, metadata !635, null}
!635 = metadata !{i32 786443, metadata !5, metadata !24, i32 231, i32 7, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldblib.c]
!636 = metadata !{i32 232, i32 12, metadata !635, null}
!637 = metadata !{i32 233, i32 3, metadata !24, null}
!638 = metadata !{i32 234, i32 3, metadata !24, null}
!639 = metadata !{i32 235, i32 3, metadata !24, null}
!640 = metadata !{i32 236, i32 3, metadata !24, null}
!641 = metadata !{i32 237, i32 10, metadata !24, null}
!642 = metadata !{i32 238, i32 7, metadata !643, null}
!643 = metadata !{i32 786443, metadata !5, metadata !24, i32 238, i32 7, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldblib.c]
!644 = metadata !{i32 239, i32 5, metadata !643, null}
!645 = metadata !{i32 240, i32 3, metadata !24, null}
!646 = metadata !{i32 241, i32 3, metadata !24, null}
!647 = metadata !{i32 242, i32 1, metadata !24, null}
!648 = metadata !{i32 786689, metadata !23, metadata !"L", metadata !6, i32 16777272, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 56]
!649 = metadata !{i32 56, i32 40, metadata !23, null}
!650 = metadata !{i32 786688, metadata !23, metadata !"t", metadata !6, i32 57, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [t] [line 57]
!651 = metadata !{i32 57, i32 7, metadata !23, null}
!652 = metadata !{i32 57, i32 11, metadata !23, null}
!653 = metadata !{i32 58, i32 3, metadata !23, null} ; [ DW_TAG_imported_module ]
!654 = metadata !{i32 58, i32 3, metadata !655, null} ; [ DW_TAG_imported_module ]
!655 = metadata !{i32 786443, metadata !5, metadata !23, i32 58, i32 3, i32 2, i32 65} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldblib.c]
!656 = metadata !{i32 58, i32 3, metadata !657, null} ; [ DW_TAG_imported_module ]
!657 = metadata !{i32 786443, metadata !5, metadata !23, i32 58, i32 3, i32 4, i32 67} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldblib.c]
!658 = metadata !{i32 58, i32 3, metadata !659, null} ; [ DW_TAG_imported_module ]
!659 = metadata !{i32 786443, metadata !5, metadata !660, i32 58, i32 3, i32 5, i32 68} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldblib.c]
!660 = metadata !{i32 786443, metadata !5, metadata !661, i32 58, i32 3, i32 3, i32 66} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldblib.c]
!661 = metadata !{i32 786443, metadata !5, metadata !23, i32 58, i32 3, i32 1, i32 64} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldblib.c]
!662 = metadata !{i32 60, i32 3, metadata !23, null}
!663 = metadata !{i32 61, i32 3, metadata !23, null}
!664 = metadata !{i32 62, i32 3, metadata !23, null}
!665 = metadata !{i32 786689, metadata !19, metadata !"L", metadata !6, i32 16777481, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 265]
!666 = metadata !{i32 265, i32 38, metadata !19, null}
!667 = metadata !{i32 266, i32 3, metadata !19, null}
!668 = metadata !{i32 267, i32 10, metadata !19, null}
!669 = metadata !{i32 786689, metadata !14, metadata !"L", metadata !6, i32 16777633, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 417]
!670 = metadata !{i32 417, i32 37, metadata !14, null}
!671 = metadata !{i32 786688, metadata !14, metadata !"arg", metadata !6, i32 418, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [arg] [line 418]
!672 = metadata !{i32 418, i32 7, metadata !14, null}
!673 = metadata !{i32 786688, metadata !14, metadata !"L1", metadata !6, i32 419, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [L1] [line 419]
!674 = metadata !{i32 419, i32 14, metadata !14, null}
!675 = metadata !{i32 419, i32 19, metadata !14, null}
!676 = metadata !{i32 786688, metadata !14, metadata !"msg", metadata !6, i32 420, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [msg] [line 420]
!677 = metadata !{i32 420, i32 15, metadata !14, null}
!678 = metadata !{i32 420, i32 21, metadata !14, null}
!679 = metadata !{i32 421, i32 7, metadata !680, null}
!680 = metadata !{i32 786443, metadata !5, metadata !14, i32 421, i32 7, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldblib.c]
!681 = metadata !{i32 421, i32 23, metadata !682, null}
!682 = metadata !{i32 786443, metadata !5, metadata !680, i32 421, i32 23, i32 1, i32 69} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldblib.c]
!683 = metadata !{i32 422, i32 5, metadata !680, null}
!684 = metadata !{i32 786688, metadata !685, metadata !"level", metadata !6, i32 424, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [level] [line 424]
!685 = metadata !{i32 786443, metadata !5, metadata !680, i32 423, i32 8, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldblib.c]
!686 = metadata !{i32 424, i32 9, metadata !685, null}
!687 = metadata !{i32 424, i32 22, metadata !685, null}
!688 = metadata !{i32 425, i32 5, metadata !685, null}
!689 = metadata !{i32 427, i32 3, metadata !14, null}
!690 = metadata !{i32 786689, metadata !15, metadata !"L", metadata !6, i32 16777306, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 90]
!691 = metadata !{i32 90, i32 41, metadata !15, null}
!692 = metadata !{i32 786689, metadata !15, metadata !"arg", metadata !6, i32 33554522, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [arg] [line 90]
!693 = metadata !{i32 90, i32 49, metadata !15, null}
!694 = metadata !{i32 91, i32 7, metadata !695, null}
!695 = metadata !{i32 786443, metadata !5, metadata !15, i32 91, i32 7, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldblib.c]
!696 = metadata !{i32 92, i32 5, metadata !697, null}
!697 = metadata !{i32 786443, metadata !5, metadata !695, i32 91, i32 27, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldblib.c]
!698 = metadata !{i32 93, i32 12, metadata !697, null}
!699 = metadata !{i32 96, i32 5, metadata !700, null}
!700 = metadata !{i32 786443, metadata !5, metadata !695, i32 95, i32 8, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldblib.c]
!701 = metadata !{i32 97, i32 5, metadata !700, null}
!702 = metadata !{i32 99, i32 1, metadata !15, null}
!703 = metadata !{i32 786689, metadata !20, metadata !"L", metadata !6, i32 16777464, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 248]
!704 = metadata !{i32 248, i32 35, metadata !20, null}
!705 = metadata !{i32 786689, metadata !20, metadata !"get", metadata !6, i32 33554680, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [get] [line 248]
!706 = metadata !{i32 248, i32 42, metadata !20, null}
!707 = metadata !{i32 786688, metadata !20, metadata !"name", metadata !6, i32 249, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [name] [line 249]
!708 = metadata !{i32 249, i32 15, metadata !20, null}
!709 = metadata !{i32 786688, metadata !20, metadata !"n", metadata !6, i32 250, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 250]
!710 = metadata !{i32 250, i32 7, metadata !20, null}
!711 = metadata !{i32 250, i32 16, metadata !20, null}
!712 = metadata !{i32 251, i32 3, metadata !20, null}
!713 = metadata !{i32 252, i32 3, metadata !20, null}
!714 = metadata !{i32 252, i32 16, metadata !715, null}
!715 = metadata !{i32 786443, metadata !5, metadata !20, i32 252, i32 16, i32 1, i32 70} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldblib.c]
!716 = metadata !{i32 252, i32 42, metadata !717, null}
!717 = metadata !{i32 786443, metadata !5, metadata !20, i32 252, i32 42, i32 2, i32 71} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldblib.c]
!718 = metadata !{i32 252, i32 42, metadata !20, null}
!719 = metadata !{i32 252, i32 42, metadata !720, null}
!720 = metadata !{i32 786443, metadata !5, metadata !721, i32 252, i32 42, i32 4, i32 73} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldblib.c]
!721 = metadata !{i32 786443, metadata !5, metadata !20, i32 252, i32 42, i32 3, i32 72} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldblib.c]
!722 = metadata !{i32 253, i32 7, metadata !723, null}
!723 = metadata !{i32 786443, metadata !5, metadata !20, i32 253, i32 7, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldblib.c]
!724 = metadata !{i32 253, i32 21, metadata !725, null}
!725 = metadata !{i32 786443, metadata !5, metadata !723, i32 253, i32 21, i32 1, i32 74} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldblib.c]
!726 = metadata !{i32 254, i32 3, metadata !20, null}
!727 = metadata !{i32 255, i32 3, metadata !20, null}
!728 = metadata !{i32 256, i32 3, metadata !20, null}
!729 = metadata !{i32 257, i32 1, metadata !20, null}
!730 = metadata !{i32 786689, metadata !25, metadata !"L", metadata !6, i32 16777251, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 35]
!731 = metadata !{i32 35, i32 36, metadata !25, null}
!732 = metadata !{i32 786689, metadata !25, metadata !"L1", metadata !6, i32 33554467, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L1] [line 35]
!733 = metadata !{i32 35, i32 50, metadata !25, null}
!734 = metadata !{i32 786689, metadata !25, metadata !"n", metadata !6, i32 50331683, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 35]
!735 = metadata !{i32 35, i32 58, metadata !25, null}
!736 = metadata !{i32 36, i32 7, metadata !737, null}
!737 = metadata !{i32 786443, metadata !5, metadata !25, i32 36, i32 7, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldblib.c]
!738 = metadata !{i32 36, i32 19, metadata !739, null}
!739 = metadata !{i32 786443, metadata !5, metadata !737, i32 36, i32 19, i32 1, i32 75} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldblib.c]
!740 = metadata !{i32 37, i32 5, metadata !737, null}
!741 = metadata !{i32 38, i32 1, metadata !25, null}
!742 = metadata !{i32 786689, metadata !35, metadata !"L", metadata !6, i32 16777521, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 305]
!743 = metadata !{i32 305, i32 31, metadata !35, null}
!744 = metadata !{i32 786689, metadata !35, metadata !"ar", metadata !6, i32 33554737, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ar] [line 305]
!745 = metadata !{i32 305, i32 45, metadata !35, null}
!746 = metadata !{i32 308, i32 3, metadata !35, null}
!747 = metadata !{i32 309, i32 3, metadata !35, null}
!748 = metadata !{i32 310, i32 7, metadata !749, null}
!749 = metadata !{i32 786443, metadata !5, metadata !35, i32 310, i32 7, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldblib.c]
!750 = metadata !{i32 311, i32 5, metadata !751, null}
!751 = metadata !{i32 786443, metadata !5, metadata !749, i32 310, i32 43, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldblib.c]
!752 = metadata !{i32 312, i32 9, metadata !753, null}
!753 = metadata !{i32 786443, metadata !5, metadata !751, i32 312, i32 9, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldblib.c]
!754 = metadata !{i32 313, i32 7, metadata !753, null}
!755 = metadata !{i32 314, i32 10, metadata !753, null}
!756 = metadata !{i32 316, i32 5, metadata !751, null}
!757 = metadata !{i32 317, i32 3, metadata !751, null}
!758 = metadata !{i32 318, i32 1, metadata !35, null}
!759 = metadata !{i32 786689, metadata !29, metadata !"smask", metadata !6, i32 16777540, metadata !32, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [smask] [line 324]
!760 = metadata !{i32 324, i32 34, metadata !29, null}
!761 = metadata !{i32 786689, metadata !29, metadata !"count", metadata !6, i32 33554756, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [count] [line 324]
!762 = metadata !{i32 324, i32 45, metadata !29, null}
!763 = metadata !{i32 786688, metadata !29, metadata !"mask", metadata !6, i32 325, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mask] [line 325]
!764 = metadata !{i32 325, i32 7, metadata !29, null}
!765 = metadata !{i32 325, i32 3, metadata !29, null}
!766 = metadata !{i32 326, i32 7, metadata !767, null}
!767 = metadata !{i32 786443, metadata !5, metadata !29, i32 326, i32 7, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldblib.c]
!768 = metadata !{i32 326, i32 27, metadata !769, null}
!769 = metadata !{i32 786443, metadata !5, metadata !767, i32 326, i32 27, i32 1, i32 76} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldblib.c]
!770 = metadata !{i32 327, i32 7, metadata !771, null}
!771 = metadata !{i32 786443, metadata !5, metadata !29, i32 327, i32 7, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldblib.c]
!772 = metadata !{i32 327, i32 27, metadata !773, null}
!773 = metadata !{i32 786443, metadata !5, metadata !771, i32 327, i32 27, i32 1, i32 77} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldblib.c]
!774 = metadata !{i32 328, i32 7, metadata !775, null}
!775 = metadata !{i32 786443, metadata !5, metadata !29, i32 328, i32 7, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldblib.c]
!776 = metadata !{i32 328, i32 27, metadata !777, null}
!777 = metadata !{i32 786443, metadata !5, metadata !775, i32 328, i32 27, i32 1, i32 78} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldblib.c]
!778 = metadata !{i32 329, i32 7, metadata !779, null}
!779 = metadata !{i32 786443, metadata !5, metadata !29, i32 329, i32 7, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldblib.c]
!780 = metadata !{i32 329, i32 18, metadata !781, null}
!781 = metadata !{i32 786443, metadata !5, metadata !779, i32 329, i32 18, i32 1, i32 79} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldblib.c]
!782 = metadata !{i32 330, i32 3, metadata !29, null}
!783 = metadata !{i32 786689, metadata !64, metadata !"L", metadata !6, i32 16777491, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 275]
!784 = metadata !{i32 275, i32 35, metadata !64, null}
!785 = metadata !{i32 786689, metadata !64, metadata !"argf", metadata !6, i32 33554707, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argf] [line 275]
!786 = metadata !{i32 275, i32 42, metadata !64, null}
!787 = metadata !{i32 786689, metadata !64, metadata !"argnup", metadata !6, i32 50331923, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argnup] [line 275]
!788 = metadata !{i32 275, i32 52, metadata !64, null}
!789 = metadata !{i32 786688, metadata !64, metadata !"nup", metadata !6, i32 276, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nup] [line 276]
!790 = metadata !{i32 276, i32 7, metadata !64, null}
!791 = metadata !{i32 276, i32 18, metadata !64, null}
!792 = metadata !{i32 277, i32 3, metadata !64, null}
!793 = metadata !{i32 278, i32 3, metadata !64, null}
!794 = metadata !{i32 278, i32 3, metadata !795, null}
!795 = metadata !{i32 786443, metadata !5, metadata !64, i32 278, i32 3, i32 2, i32 81} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldblib.c]
!796 = metadata !{i32 278, i32 3, metadata !797, null}
!797 = metadata !{i32 786443, metadata !5, metadata !798, i32 278, i32 3, i32 3, i32 82} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldblib.c]
!798 = metadata !{i32 786443, metadata !5, metadata !64, i32 278, i32 3, i32 1, i32 80} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldblib.c]
!799 = metadata !{i32 280, i32 3, metadata !64, null}
!800 = metadata !{i32 786689, metadata !80, metadata !"L", metadata !6, i32 16777323, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 107]
!801 = metadata !{i32 107, i32 34, metadata !80, null}
!802 = metadata !{i32 786689, metadata !80, metadata !"k", metadata !6, i32 33554539, metadata !32, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [k] [line 107]
!803 = metadata !{i32 107, i32 49, metadata !80, null}
!804 = metadata !{i32 786689, metadata !80, metadata !"v", metadata !6, i32 50331755, metadata !32, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [v] [line 107]
!805 = metadata !{i32 107, i32 64, metadata !80, null}
!806 = metadata !{i32 108, i32 3, metadata !80, null}
!807 = metadata !{i32 109, i32 3, metadata !80, null}
!808 = metadata !{i32 110, i32 1, metadata !80, null}
!809 = metadata !{i32 786689, metadata !79, metadata !"L", metadata !6, i32 16777328, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 112]
!810 = metadata !{i32 112, i32 34, metadata !79, null}
!811 = metadata !{i32 786689, metadata !79, metadata !"k", metadata !6, i32 33554544, metadata !32, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [k] [line 112]
!812 = metadata !{i32 112, i32 49, metadata !79, null}
!813 = metadata !{i32 786689, metadata !79, metadata !"v", metadata !6, i32 50331760, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [v] [line 112]
!814 = metadata !{i32 112, i32 56, metadata !79, null}
!815 = metadata !{i32 113, i32 3, metadata !79, null}
!816 = metadata !{i32 114, i32 3, metadata !79, null}
!817 = metadata !{i32 115, i32 1, metadata !79, null}
!818 = metadata !{i32 786689, metadata !76, metadata !"L", metadata !6, i32 16777333, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 117]
!819 = metadata !{i32 117, i32 34, metadata !76, null}
!820 = metadata !{i32 786689, metadata !76, metadata !"k", metadata !6, i32 33554549, metadata !32, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [k] [line 117]
!821 = metadata !{i32 117, i32 49, metadata !76, null}
!822 = metadata !{i32 786689, metadata !76, metadata !"v", metadata !6, i32 50331765, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [v] [line 117]
!823 = metadata !{i32 117, i32 56, metadata !76, null}
!824 = metadata !{i32 118, i32 3, metadata !76, null}
!825 = metadata !{i32 119, i32 3, metadata !76, null}
!826 = metadata !{i32 120, i32 1, metadata !76, null}
!827 = metadata !{i32 786689, metadata !73, metadata !"L", metadata !6, i32 16777346, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 130]
!828 = metadata !{i32 130, i32 42, metadata !73, null}
!829 = metadata !{i32 786689, metadata !73, metadata !"L1", metadata !6, i32 33554562, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L1] [line 130]
!830 = metadata !{i32 130, i32 56, metadata !73, null}
!831 = metadata !{i32 786689, metadata !73, metadata !"fname", metadata !6, i32 50331778, metadata !32, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fname] [line 130]
!832 = metadata !{i32 130, i32 72, metadata !73, null}
!833 = metadata !{i32 131, i32 7, metadata !834, null}
!834 = metadata !{i32 786443, metadata !5, metadata !73, i32 131, i32 7, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldblib.c]
!835 = metadata !{i32 132, i32 5, metadata !834, null}
!836 = metadata !{i32 134, i32 5, metadata !834, null}
!837 = metadata !{i32 135, i32 3, metadata !73, null}
!838 = metadata !{i32 136, i32 1, metadata !73, null}
!839 = metadata !{i32 786689, metadata !84, metadata !"mask", metadata !6, i32 16777553, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mask] [line 337]
!840 = metadata !{i32 337, i32 30, metadata !84, null}
!841 = metadata !{i32 786689, metadata !84, metadata !"smask", metadata !6, i32 33554769, metadata !87, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [smask] [line 337]
!842 = metadata !{i32 337, i32 42, metadata !84, null}
!843 = metadata !{i32 786688, metadata !84, metadata !"i", metadata !6, i32 338, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 338]
!844 = metadata !{i32 338, i32 7, metadata !84, null}
!845 = metadata !{i32 338, i32 3, metadata !84, null}
!846 = metadata !{i32 339, i32 7, metadata !847, null}
!847 = metadata !{i32 786443, metadata !5, metadata !84, i32 339, i32 7, i32 0, i32 50} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldblib.c]
!848 = metadata !{i32 339, i32 28, metadata !849, null}
!849 = metadata !{i32 786443, metadata !5, metadata !847, i32 339, i32 28, i32 1, i32 83} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldblib.c]
!850 = metadata !{i32 340, i32 7, metadata !851, null}
!851 = metadata !{i32 786443, metadata !5, metadata !84, i32 340, i32 7, i32 0, i32 51} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldblib.c]
!852 = metadata !{i32 340, i32 27, metadata !853, null}
!853 = metadata !{i32 786443, metadata !5, metadata !851, i32 340, i32 27, i32 1, i32 84} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldblib.c]
!854 = metadata !{i32 341, i32 7, metadata !855, null}
!855 = metadata !{i32 786443, metadata !5, metadata !84, i32 341, i32 7, i32 0, i32 52} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldblib.c]
!856 = metadata !{i32 341, i32 28, metadata !857, null}
!857 = metadata !{i32 786443, metadata !5, metadata !855, i32 341, i32 28, i32 1, i32 85} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldblib.c]
!858 = metadata !{i32 342, i32 3, metadata !84, null}
!859 = metadata !{i32 343, i32 3, metadata !84, null}
