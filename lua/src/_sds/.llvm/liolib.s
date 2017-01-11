; ModuleID = 'C:/Users/DevolutionX/workspace/lua/src/liolib.c'
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-n32-S64"
target triple = "armv7--linux-gnueabihf"

%struct.luaL_Reg = type { i8*, i32 (%struct.lua_State*)* }
%struct.lua_State = type opaque
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i32, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i32, i32, [40 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.luaL_Stream = type { %struct._IO_FILE*, i32 (%struct.lua_State*)* }
%struct.luaL_Buffer = type { i8*, i32, i32, %struct.lua_State*, [8192 x i8] }
%struct.RN = type { %struct._IO_FILE*, i32, i32, [201 x i8] }
%struct.lconv = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }

@iolib = internal constant [12 x %struct.luaL_Reg] [%struct.luaL_Reg { i8* getelementptr inbounds ([6 x i8]* @.str8, i32 0, i32 0), i32 (%struct.lua_State*)* @io_close }, %struct.luaL_Reg { i8* getelementptr inbounds ([6 x i8]* @.str9, i32 0, i32 0), i32 (%struct.lua_State*)* @io_flush }, %struct.luaL_Reg { i8* getelementptr inbounds ([6 x i8]* @.str39, i32 0, i32 0), i32 (%struct.lua_State*)* @io_input }, %struct.luaL_Reg { i8* getelementptr inbounds ([6 x i8]* @.str10, i32 0, i32 0), i32 (%struct.lua_State*)* @io_lines }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8]* @.str40, i32 0, i32 0), i32 (%struct.lua_State*)* @io_open }, %struct.luaL_Reg { i8* getelementptr inbounds ([7 x i8]* @.str41, i32 0, i32 0), i32 (%struct.lua_State*)* @io_output }, %struct.luaL_Reg { i8* getelementptr inbounds ([6 x i8]* @.str42, i32 0, i32 0), i32 (%struct.lua_State*)* @io_popen }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8]* @.str11, i32 0, i32 0), i32 (%struct.lua_State*)* @io_read }, %struct.luaL_Reg { i8* getelementptr inbounds ([8 x i8]* @.str43, i32 0, i32 0), i32 (%struct.lua_State*)* @io_tmpfile }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8]* @.str44, i32 0, i32 0), i32 (%struct.lua_State*)* @io_type }, %struct.luaL_Reg { i8* getelementptr inbounds ([6 x i8]* @.str14, i32 0, i32 0), i32 (%struct.lua_State*)* @io_write }, %struct.luaL_Reg zeroinitializer], align 4
@stdin = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [10 x i8] c"_IO_input\00", align 1
@.str1 = private unnamed_addr constant [6 x i8] c"stdin\00", align 1
@stdout = external global %struct._IO_FILE*
@.str2 = private unnamed_addr constant [11 x i8] c"_IO_output\00", align 1
@.str3 = private unnamed_addr constant [7 x i8] c"stdout\00", align 1
@stderr = external global %struct._IO_FILE*
@.str4 = private unnamed_addr constant [7 x i8] c"stderr\00", align 1
@.str5 = private unnamed_addr constant [6 x i8] c"FILE*\00", align 1
@.str6 = private unnamed_addr constant [27 x i8] c"cannot close standard file\00", align 1
@.str7 = private unnamed_addr constant [8 x i8] c"__index\00", align 1
@flib = internal constant [10 x %struct.luaL_Reg] [%struct.luaL_Reg { i8* getelementptr inbounds ([6 x i8]* @.str8, i32 0, i32 0), i32 (%struct.lua_State*)* @io_close }, %struct.luaL_Reg { i8* getelementptr inbounds ([6 x i8]* @.str9, i32 0, i32 0), i32 (%struct.lua_State*)* @f_flush }, %struct.luaL_Reg { i8* getelementptr inbounds ([6 x i8]* @.str10, i32 0, i32 0), i32 (%struct.lua_State*)* @f_lines }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8]* @.str11, i32 0, i32 0), i32 (%struct.lua_State*)* @f_read }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8]* @.str12, i32 0, i32 0), i32 (%struct.lua_State*)* @f_seek }, %struct.luaL_Reg { i8* getelementptr inbounds ([8 x i8]* @.str13, i32 0, i32 0), i32 (%struct.lua_State*)* @f_setvbuf }, %struct.luaL_Reg { i8* getelementptr inbounds ([6 x i8]* @.str14, i32 0, i32 0), i32 (%struct.lua_State*)* @f_write }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8]* @.str15, i32 0, i32 0), i32 (%struct.lua_State*)* @f_gc }, %struct.luaL_Reg { i8* getelementptr inbounds ([11 x i8]* @.str16, i32 0, i32 0), i32 (%struct.lua_State*)* @f_tostring }, %struct.luaL_Reg zeroinitializer], align 4
@.str8 = private unnamed_addr constant [6 x i8] c"close\00", align 1
@.str9 = private unnamed_addr constant [6 x i8] c"flush\00", align 1
@.str10 = private unnamed_addr constant [6 x i8] c"lines\00", align 1
@.str11 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@.str12 = private unnamed_addr constant [5 x i8] c"seek\00", align 1
@.str13 = private unnamed_addr constant [8 x i8] c"setvbuf\00", align 1
@.str14 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str15 = private unnamed_addr constant [5 x i8] c"__gc\00", align 1
@.str16 = private unnamed_addr constant [11 x i8] c"__tostring\00", align 1
@.str17 = private unnamed_addr constant [14 x i8] c"file (closed)\00", align 1
@.str18 = private unnamed_addr constant [10 x i8] c"file (%p)\00", align 1
@.str19 = private unnamed_addr constant [5 x i8] c"%lld\00", align 1
@.str20 = private unnamed_addr constant [6 x i8] c"%.14g\00", align 1
@.str21 = private unnamed_addr constant [29 x i8] c"attempt to use a closed file\00", align 1
@f_setvbuf.mode = internal constant [3 x i32] [i32 2, i32 0, i32 1], align 4
@f_setvbuf.modenames = internal constant [4 x i8*] [i8* getelementptr inbounds ([3 x i8]* @.str22, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str23, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str24, i32 0, i32 0), i8* null], align 4
@.str22 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str23 = private unnamed_addr constant [5 x i8] c"full\00", align 1
@.str24 = private unnamed_addr constant [5 x i8] c"line\00", align 1
@f_seek.mode = internal constant [3 x i32] [i32 0, i32 1, i32 2], align 4
@f_seek.modenames = internal constant [4 x i8*] [i8* getelementptr inbounds ([4 x i8]* @.str25, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str26, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str27, i32 0, i32 0), i8* null], align 4
@.str25 = private unnamed_addr constant [4 x i8] c"set\00", align 1
@.str26 = private unnamed_addr constant [4 x i8] c"cur\00", align 1
@.str27 = private unnamed_addr constant [4 x i8] c"end\00", align 1
@.str28 = private unnamed_addr constant [31 x i8] c"not an integer in proper range\00", align 1
@.str29 = private unnamed_addr constant [19 x i8] c"too many arguments\00", align 1
@.str30 = private unnamed_addr constant [15 x i8] c"invalid format\00", align 1
@.str31 = private unnamed_addr constant [3 x i8] c"-+\00", align 1
@.str32 = private unnamed_addr constant [3 x i8] c"00\00", align 1
@.str33 = private unnamed_addr constant [3 x i8] c"xX\00", align 1
@.str34 = private unnamed_addr constant [3 x i8] c"pP\00", align 1
@.str35 = private unnamed_addr constant [3 x i8] c"eE\00", align 1
@.str36 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str37 = private unnamed_addr constant [23 x i8] c"file is already closed\00", align 1
@.str38 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str39 = private unnamed_addr constant [6 x i8] c"input\00", align 1
@.str40 = private unnamed_addr constant [5 x i8] c"open\00", align 1
@.str41 = private unnamed_addr constant [7 x i8] c"output\00", align 1
@.str42 = private unnamed_addr constant [6 x i8] c"popen\00", align 1
@.str43 = private unnamed_addr constant [8 x i8] c"tmpfile\00", align 1
@.str44 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str45 = private unnamed_addr constant [27 x i8] c"standard %s file is closed\00", align 1
@.str46 = private unnamed_addr constant [12 x i8] c"closed file\00", align 1
@.str47 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str48 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str49 = private unnamed_addr constant [22 x i8] c"'popen' not supported\00", align 1
@.str50 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str51 = private unnamed_addr constant [27 x i8] c"cannot open file '%s' (%s)\00", align 1
@.str52 = private unnamed_addr constant [4 x i8] c"rwa\00", align 1
@.str53 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str54 = private unnamed_addr constant [13 x i8] c"invalid mode\00", align 1

; Function Attrs: nounwind
define i32 @luaopen_io(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !511), !dbg !512
  %2 = load %struct.lua_State** %1, align 4, !dbg !513
  call void @luaL_checkversion_(%struct.lua_State* %2, double 5.030000e+02, i32 136), !dbg !513
  %3 = load %struct.lua_State** %1, align 4, !dbg !513
  call void @lua_createtable(%struct.lua_State* %3, i32 0, i32 11), !dbg !513
  %4 = load %struct.lua_State** %1, align 4, !dbg !513
  call void @luaL_setfuncs(%struct.lua_State* %4, %struct.luaL_Reg* getelementptr inbounds ([12 x %struct.luaL_Reg]* @iolib, i32 0, i32 0), i32 0), !dbg !513
  %5 = load %struct.lua_State** %1, align 4, !dbg !514
  call void @createmeta(%struct.lua_State* %5), !dbg !514
  %6 = load %struct.lua_State** %1, align 4, !dbg !515
  %7 = load %struct._IO_FILE** @stdin, align 4, !dbg !515
  call void @createstdfile(%struct.lua_State* %6, %struct._IO_FILE* %7, i8* getelementptr inbounds ([10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str1, i32 0, i32 0)), !dbg !515
  %8 = load %struct.lua_State** %1, align 4, !dbg !516
  %9 = load %struct._IO_FILE** @stdout, align 4, !dbg !516
  call void @createstdfile(%struct.lua_State* %8, %struct._IO_FILE* %9, i8* getelementptr inbounds ([11 x i8]* @.str2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str3, i32 0, i32 0)), !dbg !516
  %10 = load %struct.lua_State** %1, align 4, !dbg !517
  %11 = load %struct._IO_FILE** @stderr, align 4, !dbg !517
  call void @createstdfile(%struct.lua_State* %10, %struct._IO_FILE* %11, i8* null, i8* getelementptr inbounds ([7 x i8]* @.str4, i32 0, i32 0)), !dbg !517
  ret i32 1, !dbg !518
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

declare void @luaL_checkversion_(%struct.lua_State*, double, i32) #2

declare void @lua_createtable(%struct.lua_State*, i32, i32) #2

declare void @luaL_setfuncs(%struct.lua_State*, %struct.luaL_Reg*, i32) #2

; Function Attrs: nounwind
define internal void @createmeta(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !519), !dbg !520
  %2 = load %struct.lua_State** %1, align 4, !dbg !521
  %3 = call i32 @luaL_newmetatable(%struct.lua_State* %2, i8* getelementptr inbounds ([6 x i8]* @.str5, i32 0, i32 0)), !dbg !521
  %4 = load %struct.lua_State** %1, align 4, !dbg !522
  call void @lua_pushvalue(%struct.lua_State* %4, i32 -1), !dbg !522
  %5 = load %struct.lua_State** %1, align 4, !dbg !523
  call void @lua_setfield(%struct.lua_State* %5, i32 -2, i8* getelementptr inbounds ([8 x i8]* @.str7, i32 0, i32 0)), !dbg !523
  %6 = load %struct.lua_State** %1, align 4, !dbg !524
  call void @luaL_setfuncs(%struct.lua_State* %6, %struct.luaL_Reg* getelementptr inbounds ([10 x %struct.luaL_Reg]* @flib, i32 0, i32 0), i32 0), !dbg !524
  %7 = load %struct.lua_State** %1, align 4, !dbg !525
  call void @lua_settop(%struct.lua_State* %7, i32 -2), !dbg !525
  ret void, !dbg !526
}

; Function Attrs: nounwind
define internal void @createstdfile(%struct.lua_State* %L, %struct._IO_FILE* %f, i8* %k, i8* %fname) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca %struct._IO_FILE*, align 4
  %3 = alloca i8*, align 4
  %4 = alloca i8*, align 4
  %p = alloca %struct.luaL_Stream*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !527), !dbg !528
  store %struct._IO_FILE* %f, %struct._IO_FILE** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct._IO_FILE** %2}, metadata !529), !dbg !530
  store i8* %k, i8** %3, align 4
  call void @llvm.dbg.declare(metadata !{i8** %3}, metadata !531), !dbg !532
  store i8* %fname, i8** %4, align 4
  call void @llvm.dbg.declare(metadata !{i8** %4}, metadata !533), !dbg !534
  call void @llvm.dbg.declare(metadata !{%struct.luaL_Stream** %p}, metadata !535), !dbg !536
  %5 = load %struct.lua_State** %1, align 4, !dbg !537
  %6 = call %struct.luaL_Stream* @newprefile(%struct.lua_State* %5), !dbg !537
  store %struct.luaL_Stream* %6, %struct.luaL_Stream** %p, align 4, !dbg !537
  %7 = load %struct._IO_FILE** %2, align 4, !dbg !538
  %8 = load %struct.luaL_Stream** %p, align 4, !dbg !538
  %9 = getelementptr inbounds %struct.luaL_Stream* %8, i32 0, i32 0, !dbg !538
  store %struct._IO_FILE* %7, %struct._IO_FILE** %9, align 4, !dbg !538
  %10 = load %struct.luaL_Stream** %p, align 4, !dbg !539
  %11 = getelementptr inbounds %struct.luaL_Stream* %10, i32 0, i32 1, !dbg !539
  store i32 (%struct.lua_State*)* @io_noclose, i32 (%struct.lua_State*)** %11, align 4, !dbg !539
  %12 = load i8** %3, align 4, !dbg !540
  %13 = icmp ne i8* %12, null, !dbg !540
  br i1 %13, label %14, label %18, !dbg !540

; <label>:14                                      ; preds = %0
  %15 = load %struct.lua_State** %1, align 4, !dbg !542
  call void @lua_pushvalue(%struct.lua_State* %15, i32 -1), !dbg !542
  %16 = load %struct.lua_State** %1, align 4, !dbg !544
  %17 = load i8** %3, align 4, !dbg !544
  call void @lua_setfield(%struct.lua_State* %16, i32 -1001000, i8* %17), !dbg !544
  br label %18, !dbg !545

; <label>:18                                      ; preds = %14, %0
  %19 = load %struct.lua_State** %1, align 4, !dbg !546
  %20 = load i8** %4, align 4, !dbg !546
  call void @lua_setfield(%struct.lua_State* %19, i32 -2, i8* %20), !dbg !546
  ret void, !dbg !547
}

; Function Attrs: nounwind
define internal %struct.luaL_Stream* @newprefile(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %p = alloca %struct.luaL_Stream*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !548), !dbg !549
  call void @llvm.dbg.declare(metadata !{%struct.luaL_Stream** %p}, metadata !550), !dbg !551
  %2 = load %struct.lua_State** %1, align 4, !dbg !552
  %3 = call i8* @lua_newuserdata(%struct.lua_State* %2, i32 8), !dbg !552
  %4 = bitcast i8* %3 to %struct.luaL_Stream*, !dbg !552
  store %struct.luaL_Stream* %4, %struct.luaL_Stream** %p, align 4, !dbg !552
  %5 = load %struct.luaL_Stream** %p, align 4, !dbg !553
  %6 = getelementptr inbounds %struct.luaL_Stream* %5, i32 0, i32 1, !dbg !553
  store i32 (%struct.lua_State*)* null, i32 (%struct.lua_State*)** %6, align 4, !dbg !553
  %7 = load %struct.lua_State** %1, align 4, !dbg !554
  call void @luaL_setmetatable(%struct.lua_State* %7, i8* getelementptr inbounds ([6 x i8]* @.str5, i32 0, i32 0)), !dbg !554
  %8 = load %struct.luaL_Stream** %p, align 4, !dbg !555
  ret %struct.luaL_Stream* %8, !dbg !555
}

; Function Attrs: nounwind
define internal i32 @io_noclose(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %p = alloca %struct.luaL_Stream*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !556), !dbg !557
  call void @llvm.dbg.declare(metadata !{%struct.luaL_Stream** %p}, metadata !558), !dbg !559
  %2 = load %struct.lua_State** %1, align 4, !dbg !560
  %3 = call i8* @luaL_checkudata(%struct.lua_State* %2, i32 1, i8* getelementptr inbounds ([6 x i8]* @.str5, i32 0, i32 0)), !dbg !560
  %4 = bitcast i8* %3 to %struct.luaL_Stream*, !dbg !560
  store %struct.luaL_Stream* %4, %struct.luaL_Stream** %p, align 4, !dbg !560
  %5 = load %struct.luaL_Stream** %p, align 4, !dbg !561
  %6 = getelementptr inbounds %struct.luaL_Stream* %5, i32 0, i32 1, !dbg !561
  store i32 (%struct.lua_State*)* @io_noclose, i32 (%struct.lua_State*)** %6, align 4, !dbg !561
  %7 = load %struct.lua_State** %1, align 4, !dbg !562
  call void @lua_pushnil(%struct.lua_State* %7), !dbg !562
  %8 = load %struct.lua_State** %1, align 4, !dbg !563
  %9 = call i8* @lua_pushstring(%struct.lua_State* %8, i8* getelementptr inbounds ([27 x i8]* @.str6, i32 0, i32 0)), !dbg !563
  ret i32 2, !dbg !564
}

declare void @lua_pushvalue(%struct.lua_State*, i32) #2

declare void @lua_setfield(%struct.lua_State*, i32, i8*) #2

declare i8* @luaL_checkudata(%struct.lua_State*, i32, i8*) #2

declare void @lua_pushnil(%struct.lua_State*) #2

declare i8* @lua_pushstring(%struct.lua_State*, i8*) #2

declare i8* @lua_newuserdata(%struct.lua_State*, i32) #2

declare void @luaL_setmetatable(%struct.lua_State*, i8*) #2

declare i32 @luaL_newmetatable(%struct.lua_State*, i8*) #2

declare void @lua_settop(%struct.lua_State*, i32) #2

; Function Attrs: nounwind
define internal i32 @io_close(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !565), !dbg !566
  %2 = load %struct.lua_State** %1, align 4, !dbg !567
  %3 = call i32 @lua_type(%struct.lua_State* %2, i32 1), !dbg !567
  %4 = icmp eq i32 %3, -1, !dbg !567
  br i1 %4, label %5, label %8, !dbg !567

; <label>:5                                       ; preds = %0
  %6 = load %struct.lua_State** %1, align 4, !dbg !569
  %7 = call i32 @lua_getfield(%struct.lua_State* %6, i32 -1001000, i8* getelementptr inbounds ([11 x i8]* @.str2, i32 0, i32 0)), !dbg !569
  br label %8, !dbg !569

; <label>:8                                       ; preds = %5, %0
  %9 = load %struct.lua_State** %1, align 4, !dbg !570
  %10 = call %struct._IO_FILE* @tofile(%struct.lua_State* %9), !dbg !570
  %11 = load %struct.lua_State** %1, align 4, !dbg !571
  %12 = call i32 @aux_close(%struct.lua_State* %11), !dbg !571
  ret i32 %12, !dbg !571
}

; Function Attrs: nounwind
define internal i32 @f_flush(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !572), !dbg !573
  %2 = load %struct.lua_State** %1, align 4, !dbg !574
  %3 = load %struct.lua_State** %1, align 4, !dbg !575
  %4 = call %struct._IO_FILE* @tofile(%struct.lua_State* %3), !dbg !575
  %5 = call i32 @fflush(%struct._IO_FILE* %4), !dbg !576
  %6 = icmp eq i32 %5, 0, !dbg !576
  %7 = zext i1 %6 to i32, !dbg !576
  %8 = call i32 @luaL_fileresult(%struct.lua_State* %2, i32 %7, i8* null), !dbg !574
  ret i32 %8, !dbg !574
}

; Function Attrs: nounwind
define internal i32 @f_lines(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !577), !dbg !578
  %2 = load %struct.lua_State** %1, align 4, !dbg !579
  %3 = call %struct._IO_FILE* @tofile(%struct.lua_State* %2), !dbg !579
  %4 = load %struct.lua_State** %1, align 4, !dbg !580
  call void @aux_lines(%struct.lua_State* %4, i32 0), !dbg !580
  ret i32 1, !dbg !581
}

; Function Attrs: nounwind
define internal i32 @f_read(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !582), !dbg !583
  %2 = load %struct.lua_State** %1, align 4, !dbg !584
  %3 = load %struct.lua_State** %1, align 4, !dbg !585
  %4 = call %struct._IO_FILE* @tofile(%struct.lua_State* %3), !dbg !585
  %5 = call i32 @g_read(%struct.lua_State* %2, %struct._IO_FILE* %4, i32 2), !dbg !584
  ret i32 %5, !dbg !584
}

; Function Attrs: nounwind
define internal i32 @f_seek(%struct.lua_State* %L) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.lua_State*, align 4
  %f = alloca %struct._IO_FILE*, align 4
  %op = alloca i32, align 4
  %p3 = alloca i64, align 8
  %offset = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %2}, metadata !586), !dbg !587
  call void @llvm.dbg.declare(metadata !{%struct._IO_FILE** %f}, metadata !588), !dbg !589
  %3 = load %struct.lua_State** %2, align 4, !dbg !590
  %4 = call %struct._IO_FILE* @tofile(%struct.lua_State* %3), !dbg !590
  store %struct._IO_FILE* %4, %struct._IO_FILE** %f, align 4, !dbg !590
  call void @llvm.dbg.declare(metadata !{i32* %op}, metadata !591), !dbg !592
  %5 = load %struct.lua_State** %2, align 4, !dbg !593
  %6 = call i32 @luaL_checkoption(%struct.lua_State* %5, i32 2, i8* getelementptr inbounds ([4 x i8]* @.str26, i32 0, i32 0), i8** getelementptr inbounds ([4 x i8*]* @f_seek.modenames, i32 0, i32 0)), !dbg !593
  store i32 %6, i32* %op, align 4, !dbg !593
  call void @llvm.dbg.declare(metadata !{i64* %p3}, metadata !594), !dbg !596
  %7 = load %struct.lua_State** %2, align 4, !dbg !597
  %8 = call i64 @luaL_optinteger(%struct.lua_State* %7, i32 3, i64 0), !dbg !597
  store i64 %8, i64* %p3, align 8, !dbg !597
  call void @llvm.dbg.declare(metadata !{i32* %offset}, metadata !598), !dbg !599
  %9 = load i64* %p3, align 8, !dbg !600
  %10 = trunc i64 %9 to i32, !dbg !600
  store i32 %10, i32* %offset, align 4, !dbg !600
  %11 = load i32* %offset, align 4, !dbg !601
  %12 = sext i32 %11 to i64, !dbg !601
  %13 = load i64* %p3, align 8, !dbg !601
  %14 = icmp eq i64 %12, %13, !dbg !601
  br i1 %14, label %19, label %15, !dbg !601

; <label>:15                                      ; preds = %0
  %16 = load %struct.lua_State** %2, align 4, !dbg !602
  %17 = call i32 @luaL_argerror(%struct.lua_State* %16, i32 3, i8* getelementptr inbounds ([31 x i8]* @.str28, i32 0, i32 0)), !dbg !602
  %18 = icmp ne i32 %17, 0, !dbg !602
  br label %19, !dbg !602

; <label>:19                                      ; preds = %15, %0
  %20 = phi i1 [ true, %0 ], [ %18, %15 ]
  %21 = zext i1 %20 to i32, !dbg !604
  %22 = load %struct._IO_FILE** %f, align 4, !dbg !607
  %23 = load i32* %offset, align 4, !dbg !607
  %24 = load i32* %op, align 4, !dbg !607
  %25 = getelementptr inbounds [3 x i32]* @f_seek.mode, i32 0, i32 %24, !dbg !607
  %26 = load i32* %25, align 4, !dbg !607
  %27 = call i32 @fseek(%struct._IO_FILE* %22, i32 %23, i32 %26), !dbg !607
  store i32 %27, i32* %op, align 4, !dbg !607
  %28 = load i32* %op, align 4, !dbg !608
  %29 = icmp ne i32 %28, 0, !dbg !608
  br i1 %29, label %30, label %33, !dbg !608

; <label>:30                                      ; preds = %19
  %31 = load %struct.lua_State** %2, align 4, !dbg !610
  %32 = call i32 @luaL_fileresult(%struct.lua_State* %31, i32 0, i8* null), !dbg !610
  store i32 %32, i32* %1, !dbg !610
  br label %38, !dbg !610

; <label>:33                                      ; preds = %19
  %34 = load %struct.lua_State** %2, align 4, !dbg !611
  %35 = load %struct._IO_FILE** %f, align 4, !dbg !613
  %36 = call i32 @ftell(%struct._IO_FILE* %35), !dbg !613
  %37 = sext i32 %36 to i64, !dbg !613
  call void @lua_pushinteger(%struct.lua_State* %34, i64 %37), !dbg !611
  store i32 1, i32* %1, !dbg !614
  br label %38, !dbg !614

; <label>:38                                      ; preds = %33, %30
  %39 = load i32* %1, !dbg !615
  ret i32 %39, !dbg !615
}

; Function Attrs: nounwind
define internal i32 @f_setvbuf(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %f = alloca %struct._IO_FILE*, align 4
  %op = alloca i32, align 4
  %sz = alloca i64, align 8
  %res = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !616), !dbg !617
  call void @llvm.dbg.declare(metadata !{%struct._IO_FILE** %f}, metadata !618), !dbg !619
  %2 = load %struct.lua_State** %1, align 4, !dbg !620
  %3 = call %struct._IO_FILE* @tofile(%struct.lua_State* %2), !dbg !620
  store %struct._IO_FILE* %3, %struct._IO_FILE** %f, align 4, !dbg !620
  call void @llvm.dbg.declare(metadata !{i32* %op}, metadata !621), !dbg !622
  %4 = load %struct.lua_State** %1, align 4, !dbg !623
  %5 = call i32 @luaL_checkoption(%struct.lua_State* %4, i32 2, i8* null, i8** getelementptr inbounds ([4 x i8*]* @f_setvbuf.modenames, i32 0, i32 0)), !dbg !623
  store i32 %5, i32* %op, align 4, !dbg !623
  call void @llvm.dbg.declare(metadata !{i64* %sz}, metadata !624), !dbg !625
  %6 = load %struct.lua_State** %1, align 4, !dbg !626
  %7 = call i64 @luaL_optinteger(%struct.lua_State* %6, i32 3, i64 8192), !dbg !626
  store i64 %7, i64* %sz, align 8, !dbg !626
  call void @llvm.dbg.declare(metadata !{i32* %res}, metadata !627), !dbg !628
  %8 = load %struct._IO_FILE** %f, align 4, !dbg !629
  %9 = load i32* %op, align 4, !dbg !629
  %10 = getelementptr inbounds [3 x i32]* @f_setvbuf.mode, i32 0, i32 %9, !dbg !629
  %11 = load i32* %10, align 4, !dbg !629
  %12 = load i64* %sz, align 8, !dbg !629
  %13 = trunc i64 %12 to i32, !dbg !629
  %14 = call i32 @setvbuf(%struct._IO_FILE* %8, i8* null, i32 %11, i32 %13) #5, !dbg !629
  store i32 %14, i32* %res, align 4, !dbg !629
  %15 = load %struct.lua_State** %1, align 4, !dbg !630
  %16 = load i32* %res, align 4, !dbg !630
  %17 = icmp eq i32 %16, 0, !dbg !630
  %18 = zext i1 %17 to i32, !dbg !630
  %19 = call i32 @luaL_fileresult(%struct.lua_State* %15, i32 %18, i8* null), !dbg !630
  ret i32 %19, !dbg !630
}

; Function Attrs: nounwind
define internal i32 @f_write(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %f = alloca %struct._IO_FILE*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !631), !dbg !632
  call void @llvm.dbg.declare(metadata !{%struct._IO_FILE** %f}, metadata !633), !dbg !634
  %2 = load %struct.lua_State** %1, align 4, !dbg !635
  %3 = call %struct._IO_FILE* @tofile(%struct.lua_State* %2), !dbg !635
  store %struct._IO_FILE* %3, %struct._IO_FILE** %f, align 4, !dbg !635
  %4 = load %struct.lua_State** %1, align 4, !dbg !636
  call void @lua_pushvalue(%struct.lua_State* %4, i32 1), !dbg !636
  %5 = load %struct.lua_State** %1, align 4, !dbg !637
  %6 = load %struct._IO_FILE** %f, align 4, !dbg !637
  %7 = call i32 @g_write(%struct.lua_State* %5, %struct._IO_FILE* %6, i32 2), !dbg !637
  ret i32 %7, !dbg !637
}

; Function Attrs: nounwind
define internal i32 @f_gc(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %p = alloca %struct.luaL_Stream*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !638), !dbg !639
  call void @llvm.dbg.declare(metadata !{%struct.luaL_Stream** %p}, metadata !640), !dbg !641
  %2 = load %struct.lua_State** %1, align 4, !dbg !642
  %3 = call i8* @luaL_checkudata(%struct.lua_State* %2, i32 1, i8* getelementptr inbounds ([6 x i8]* @.str5, i32 0, i32 0)), !dbg !642
  %4 = bitcast i8* %3 to %struct.luaL_Stream*, !dbg !642
  store %struct.luaL_Stream* %4, %struct.luaL_Stream** %p, align 4, !dbg !642
  %5 = load %struct.luaL_Stream** %p, align 4, !dbg !643
  %6 = getelementptr inbounds %struct.luaL_Stream* %5, i32 0, i32 1, !dbg !643
  %7 = load i32 (%struct.lua_State*)** %6, align 4, !dbg !643
  %8 = icmp eq i32 (%struct.lua_State*)* %7, null, !dbg !643
  br i1 %8, label %17, label %9, !dbg !643

; <label>:9                                       ; preds = %0
  %10 = load %struct.luaL_Stream** %p, align 4, !dbg !645
  %11 = getelementptr inbounds %struct.luaL_Stream* %10, i32 0, i32 0, !dbg !645
  %12 = load %struct._IO_FILE** %11, align 4, !dbg !645
  %13 = icmp ne %struct._IO_FILE* %12, null, !dbg !645
  br i1 %13, label %14, label %17, !dbg !645

; <label>:14                                      ; preds = %9
  %15 = load %struct.lua_State** %1, align 4, !dbg !647
  %16 = call i32 @aux_close(%struct.lua_State* %15), !dbg !647
  br label %17, !dbg !647

; <label>:17                                      ; preds = %14, %9, %0
  ret i32 0, !dbg !648
}

; Function Attrs: nounwind
define internal i32 @f_tostring(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %p = alloca %struct.luaL_Stream*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !649), !dbg !650
  call void @llvm.dbg.declare(metadata !{%struct.luaL_Stream** %p}, metadata !651), !dbg !652
  %2 = load %struct.lua_State** %1, align 4, !dbg !653
  %3 = call i8* @luaL_checkudata(%struct.lua_State* %2, i32 1, i8* getelementptr inbounds ([6 x i8]* @.str5, i32 0, i32 0)), !dbg !653
  %4 = bitcast i8* %3 to %struct.luaL_Stream*, !dbg !653
  store %struct.luaL_Stream* %4, %struct.luaL_Stream** %p, align 4, !dbg !653
  %5 = load %struct.luaL_Stream** %p, align 4, !dbg !654
  %6 = getelementptr inbounds %struct.luaL_Stream* %5, i32 0, i32 1, !dbg !654
  %7 = load i32 (%struct.lua_State*)** %6, align 4, !dbg !654
  %8 = icmp eq i32 (%struct.lua_State*)* %7, null, !dbg !654
  br i1 %8, label %9, label %12, !dbg !654

; <label>:9                                       ; preds = %0
  %10 = load %struct.lua_State** %1, align 4, !dbg !656
  %11 = call i8* @lua_pushstring(%struct.lua_State* %10, i8* getelementptr inbounds ([14 x i8]* @.str17, i32 0, i32 0)), !dbg !656
  br label %18, !dbg !656

; <label>:12                                      ; preds = %0
  %13 = load %struct.lua_State** %1, align 4, !dbg !657
  %14 = load %struct.luaL_Stream** %p, align 4, !dbg !657
  %15 = getelementptr inbounds %struct.luaL_Stream* %14, i32 0, i32 0, !dbg !657
  %16 = load %struct._IO_FILE** %15, align 4, !dbg !657
  %17 = call i8* (%struct.lua_State*, i8*, ...)* @lua_pushfstring(%struct.lua_State* %13, i8* getelementptr inbounds ([10 x i8]* @.str18, i32 0, i32 0), %struct._IO_FILE* %16), !dbg !657
  br label %18

; <label>:18                                      ; preds = %12, %9
  ret i32 1, !dbg !658
}

declare i8* @lua_pushfstring(%struct.lua_State*, i8*, ...) #2

; Function Attrs: nounwind
define internal i32 @aux_close(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %p = alloca %struct.luaL_Stream*, align 4
  %cf = alloca i32 (%struct.lua_State*)*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !659), !dbg !660
  call void @llvm.dbg.declare(metadata !{%struct.luaL_Stream** %p}, metadata !661), !dbg !662
  %2 = load %struct.lua_State** %1, align 4, !dbg !663
  %3 = call i8* @luaL_checkudata(%struct.lua_State* %2, i32 1, i8* getelementptr inbounds ([6 x i8]* @.str5, i32 0, i32 0)), !dbg !663
  %4 = bitcast i8* %3 to %struct.luaL_Stream*, !dbg !663
  store %struct.luaL_Stream* %4, %struct.luaL_Stream** %p, align 4, !dbg !663
  call void @llvm.dbg.declare(metadata !{i32 (%struct.lua_State*)** %cf}, metadata !664), !dbg !666
  %5 = load %struct.luaL_Stream** %p, align 4, !dbg !667
  %6 = getelementptr inbounds %struct.luaL_Stream* %5, i32 0, i32 1, !dbg !667
  %7 = load i32 (%struct.lua_State*)** %6, align 4, !dbg !667
  store volatile i32 (%struct.lua_State*)* %7, i32 (%struct.lua_State*)** %cf, align 4, !dbg !667
  %8 = load %struct.luaL_Stream** %p, align 4, !dbg !668
  %9 = getelementptr inbounds %struct.luaL_Stream* %8, i32 0, i32 1, !dbg !668
  store i32 (%struct.lua_State*)* null, i32 (%struct.lua_State*)** %9, align 4, !dbg !668
  %10 = load volatile i32 (%struct.lua_State*)** %cf, align 4, !dbg !669
  %11 = load %struct.lua_State** %1, align 4, !dbg !669
  %12 = call i32 %10(%struct.lua_State* %11), !dbg !669
  ret i32 %12, !dbg !669
}

; Function Attrs: nounwind
define internal %struct._IO_FILE* @tofile(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %p = alloca %struct.luaL_Stream*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !670), !dbg !671
  call void @llvm.dbg.declare(metadata !{%struct.luaL_Stream** %p}, metadata !672), !dbg !673
  %2 = load %struct.lua_State** %1, align 4, !dbg !674
  %3 = call i8* @luaL_checkudata(%struct.lua_State* %2, i32 1, i8* getelementptr inbounds ([6 x i8]* @.str5, i32 0, i32 0)), !dbg !674
  %4 = bitcast i8* %3 to %struct.luaL_Stream*, !dbg !674
  store %struct.luaL_Stream* %4, %struct.luaL_Stream** %p, align 4, !dbg !674
  %5 = load %struct.luaL_Stream** %p, align 4, !dbg !675
  %6 = getelementptr inbounds %struct.luaL_Stream* %5, i32 0, i32 1, !dbg !675
  %7 = load i32 (%struct.lua_State*)** %6, align 4, !dbg !675
  %8 = icmp eq i32 (%struct.lua_State*)* %7, null, !dbg !675
  br i1 %8, label %9, label %12, !dbg !675

; <label>:9                                       ; preds = %0
  %10 = load %struct.lua_State** %1, align 4, !dbg !677
  %11 = call i32 (%struct.lua_State*, i8*, ...)* @luaL_error(%struct.lua_State* %10, i8* getelementptr inbounds ([29 x i8]* @.str21, i32 0, i32 0)), !dbg !677
  br label %12, !dbg !677

; <label>:12                                      ; preds = %9, %0
  %13 = load %struct.luaL_Stream** %p, align 4, !dbg !678
  %14 = getelementptr inbounds %struct.luaL_Stream* %13, i32 0, i32 0, !dbg !678
  %15 = load %struct._IO_FILE** %14, align 4, !dbg !678
  ret %struct._IO_FILE* %15, !dbg !678
}

; Function Attrs: nounwind
define internal i32 @g_write(%struct.lua_State* %L, %struct._IO_FILE* %f, i32 %arg) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.lua_State*, align 4
  %3 = alloca %struct._IO_FILE*, align 4
  %4 = alloca i32, align 4
  %nargs = alloca i32, align 4
  %status = alloca i32, align 4
  %len = alloca i32, align 4
  %l = alloca i32, align 4
  %s = alloca i8*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %2}, metadata !679), !dbg !680
  store %struct._IO_FILE* %f, %struct._IO_FILE** %3, align 4
  call void @llvm.dbg.declare(metadata !{%struct._IO_FILE** %3}, metadata !681), !dbg !682
  store i32 %arg, i32* %4, align 4
  call void @llvm.dbg.declare(metadata !{i32* %4}, metadata !683), !dbg !684
  call void @llvm.dbg.declare(metadata !{i32* %nargs}, metadata !685), !dbg !686
  %5 = load %struct.lua_State** %2, align 4, !dbg !687
  %6 = call i32 @lua_gettop(%struct.lua_State* %5), !dbg !687
  %7 = load i32* %4, align 4, !dbg !687
  %8 = sub nsw i32 %6, %7, !dbg !687
  store i32 %8, i32* %nargs, align 4, !dbg !687
  call void @llvm.dbg.declare(metadata !{i32* %status}, metadata !688), !dbg !689
  store i32 1, i32* %status, align 4, !dbg !690
  br label %9, !dbg !691

; <label>:9                                       ; preds = %62, %0
  %10 = load i32* %nargs, align 4, !dbg !693
  %11 = add nsw i32 %10, -1, !dbg !693
  store i32 %11, i32* %nargs, align 4, !dbg !693
  %12 = icmp ne i32 %10, 0, !dbg !693
  br i1 %12, label %13, label %65, !dbg !693

; <label>:13                                      ; preds = %9
  %14 = load %struct.lua_State** %2, align 4, !dbg !696
  %15 = load i32* %4, align 4, !dbg !696
  %16 = call i32 @lua_type(%struct.lua_State* %14, i32 %15), !dbg !696
  %17 = icmp eq i32 %16, 3, !dbg !696
  br i1 %17, label %18, label %45, !dbg !696

; <label>:18                                      ; preds = %13
  call void @llvm.dbg.declare(metadata !{i32* %len}, metadata !699), !dbg !701
  %19 = load %struct.lua_State** %2, align 4, !dbg !702
  %20 = load i32* %4, align 4, !dbg !702
  %21 = call i32 @lua_isinteger(%struct.lua_State* %19, i32 %20), !dbg !702
  %22 = icmp ne i32 %21, 0, !dbg !702
  br i1 %22, label %23, label %29, !dbg !702

; <label>:23                                      ; preds = %18
  %24 = load %struct._IO_FILE** %3, align 4, !dbg !703
  %25 = load %struct.lua_State** %2, align 4, !dbg !704
  %26 = load i32* %4, align 4, !dbg !704
  %27 = call i64 @lua_tointegerx(%struct.lua_State* %25, i32 %26, i32* null), !dbg !704
  %28 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %24, i8* getelementptr inbounds ([5 x i8]* @.str19, i32 0, i32 0), i64 %27), !dbg !703
  br label %35, !dbg !703

; <label>:29                                      ; preds = %18
  %30 = load %struct._IO_FILE** %3, align 4, !dbg !705
  %31 = load %struct.lua_State** %2, align 4, !dbg !706
  %32 = load i32* %4, align 4, !dbg !706
  %33 = call double @lua_tonumberx(%struct.lua_State* %31, i32 %32, i32* null), !dbg !706
  %34 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %30, i8* getelementptr inbounds ([6 x i8]* @.str20, i32 0, i32 0), double %33), !dbg !705
  br label %35, !dbg !705

; <label>:35                                      ; preds = %29, %23
  %36 = phi i32 [ %28, %23 ], [ %34, %29 ], !dbg !705
  store i32 %36, i32* %len, align 4, !dbg !707
  %37 = load i32* %status, align 4, !dbg !709
  %38 = icmp ne i32 %37, 0, !dbg !709
  br i1 %38, label %39, label %42, !dbg !709

; <label>:39                                      ; preds = %35
  %40 = load i32* %len, align 4, !dbg !710
  %41 = icmp sgt i32 %40, 0, !dbg !710
  br label %42

; <label>:42                                      ; preds = %39, %35
  %43 = phi i1 [ false, %35 ], [ %41, %39 ]
  %44 = zext i1 %43 to i32, !dbg !712
  store i32 %44, i32* %status, align 4, !dbg !712
  br label %61, !dbg !714

; <label>:45                                      ; preds = %13
  call void @llvm.dbg.declare(metadata !{i32* %l}, metadata !715), !dbg !717
  call void @llvm.dbg.declare(metadata !{i8** %s}, metadata !718), !dbg !719
  %46 = load %struct.lua_State** %2, align 4, !dbg !720
  %47 = load i32* %4, align 4, !dbg !720
  %48 = call i8* @luaL_checklstring(%struct.lua_State* %46, i32 %47, i32* %l), !dbg !720
  store i8* %48, i8** %s, align 4, !dbg !720
  %49 = load i32* %status, align 4, !dbg !721
  %50 = icmp ne i32 %49, 0, !dbg !721
  br i1 %50, label %51, label %58, !dbg !721

; <label>:51                                      ; preds = %45
  %52 = load i8** %s, align 4, !dbg !722
  %53 = load i32* %l, align 4, !dbg !722
  %54 = load %struct._IO_FILE** %3, align 4, !dbg !722
  %55 = call i32 @fwrite(i8* %52, i32 1, i32 %53, %struct._IO_FILE* %54), !dbg !722
  %56 = load i32* %l, align 4, !dbg !722
  %57 = icmp eq i32 %55, %56, !dbg !722
  br label %58

; <label>:58                                      ; preds = %51, %45
  %59 = phi i1 [ false, %45 ], [ %57, %51 ]
  %60 = zext i1 %59 to i32, !dbg !724
  store i32 %60, i32* %status, align 4, !dbg !724
  br label %61

; <label>:61                                      ; preds = %58, %42
  br label %62, !dbg !726

; <label>:62                                      ; preds = %61
  %63 = load i32* %4, align 4, !dbg !727
  %64 = add nsw i32 %63, 1, !dbg !727
  store i32 %64, i32* %4, align 4, !dbg !727
  br label %9, !dbg !727

; <label>:65                                      ; preds = %9
  %66 = load i32* %status, align 4, !dbg !728
  %67 = icmp ne i32 %66, 0, !dbg !728
  br i1 %67, label %68, label %69, !dbg !728

; <label>:68                                      ; preds = %65
  store i32 1, i32* %1, !dbg !730
  br label %73, !dbg !730

; <label>:69                                      ; preds = %65
  %70 = load %struct.lua_State** %2, align 4, !dbg !732
  %71 = load i32* %status, align 4, !dbg !732
  %72 = call i32 @luaL_fileresult(%struct.lua_State* %70, i32 %71, i8* null), !dbg !732
  store i32 %72, i32* %1, !dbg !732
  br label %73, !dbg !732

; <label>:73                                      ; preds = %69, %68
  %74 = load i32* %1, !dbg !733
  ret i32 %74, !dbg !733
}

declare i32 @lua_gettop(%struct.lua_State*) #2

declare i32 @lua_type(%struct.lua_State*, i32) #2

declare i32 @lua_isinteger(%struct.lua_State*, i32) #2

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

declare i64 @lua_tointegerx(%struct.lua_State*, i32, i32*) #2

declare double @lua_tonumberx(%struct.lua_State*, i32, i32*) #2

declare i8* @luaL_checklstring(%struct.lua_State*, i32, i32*) #2

declare i32 @fwrite(i8*, i32, i32, %struct._IO_FILE*) #2

declare i32 @luaL_fileresult(%struct.lua_State*, i32, i8*) #2

declare i32 @luaL_error(%struct.lua_State*, i8*, ...) #2

declare i32 @luaL_checkoption(%struct.lua_State*, i32, i8*, i8**) #2

declare i64 @luaL_optinteger(%struct.lua_State*, i32, i64) #2

; Function Attrs: nounwind
declare i32 @setvbuf(%struct._IO_FILE*, i8*, i32, i32) #0

declare i32 @luaL_argerror(%struct.lua_State*, i32, i8*) #2

declare i32 @fseek(%struct._IO_FILE*, i32, i32) #2

declare void @lua_pushinteger(%struct.lua_State*, i64) #2

declare i32 @ftell(%struct._IO_FILE*) #2

; Function Attrs: nounwind
define internal i32 @g_read(%struct.lua_State* %L, %struct._IO_FILE* %f, i32 %first) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.lua_State*, align 4
  %3 = alloca %struct._IO_FILE*, align 4
  %4 = alloca i32, align 4
  %nargs = alloca i32, align 4
  %success = alloca i32, align 4
  %n = alloca i32, align 4
  %l = alloca i32, align 4
  %p = alloca i8*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %2}, metadata !734), !dbg !735
  store %struct._IO_FILE* %f, %struct._IO_FILE** %3, align 4
  call void @llvm.dbg.declare(metadata !{%struct._IO_FILE** %3}, metadata !736), !dbg !737
  store i32 %first, i32* %4, align 4
  call void @llvm.dbg.declare(metadata !{i32* %4}, metadata !738), !dbg !739
  call void @llvm.dbg.declare(metadata !{i32* %nargs}, metadata !740), !dbg !741
  %5 = load %struct.lua_State** %2, align 4, !dbg !742
  %6 = call i32 @lua_gettop(%struct.lua_State* %5), !dbg !742
  %7 = sub nsw i32 %6, 1, !dbg !742
  store i32 %7, i32* %nargs, align 4, !dbg !742
  call void @llvm.dbg.declare(metadata !{i32* %success}, metadata !743), !dbg !744
  call void @llvm.dbg.declare(metadata !{i32* %n}, metadata !745), !dbg !746
  %8 = load %struct._IO_FILE** %3, align 4, !dbg !747
  call void @clearerr(%struct._IO_FILE* %8) #5, !dbg !747
  %9 = load i32* %nargs, align 4, !dbg !748
  %10 = icmp eq i32 %9, 0, !dbg !748
  br i1 %10, label %11, label %17, !dbg !748

; <label>:11                                      ; preds = %0
  %12 = load %struct.lua_State** %2, align 4, !dbg !750
  %13 = load %struct._IO_FILE** %3, align 4, !dbg !750
  %14 = call i32 @read_line(%struct.lua_State* %12, %struct._IO_FILE* %13, i32 1), !dbg !750
  store i32 %14, i32* %success, align 4, !dbg !750
  %15 = load i32* %4, align 4, !dbg !752
  %16 = add nsw i32 %15, 1, !dbg !752
  store i32 %16, i32* %n, align 4, !dbg !752
  br label %94, !dbg !753

; <label>:17                                      ; preds = %0
  %18 = load %struct.lua_State** %2, align 4, !dbg !754
  %19 = load i32* %nargs, align 4, !dbg !754
  %20 = add nsw i32 %19, 20, !dbg !754
  call void @luaL_checkstack(%struct.lua_State* %18, i32 %20, i8* getelementptr inbounds ([19 x i8]* @.str29, i32 0, i32 0)), !dbg !754
  store i32 1, i32* %success, align 4, !dbg !756
  %21 = load i32* %4, align 4, !dbg !757
  store i32 %21, i32* %n, align 4, !dbg !757
  br label %22, !dbg !757

; <label>:22                                      ; preds = %90, %17
  %23 = load i32* %nargs, align 4, !dbg !759
  %24 = add nsw i32 %23, -1, !dbg !759
  store i32 %24, i32* %nargs, align 4, !dbg !759
  %25 = icmp ne i32 %23, 0, !dbg !759
  br i1 %25, label %26, label %29, !dbg !759

; <label>:26                                      ; preds = %22
  %27 = load i32* %success, align 4, !dbg !762
  %28 = icmp ne i32 %27, 0, !dbg !762
  br label %29

; <label>:29                                      ; preds = %26, %22
  %30 = phi i1 [ false, %22 ], [ %28, %26 ]
  br i1 %30, label %31, label %93, !dbg !764

; <label>:31                                      ; preds = %29
  %32 = load %struct.lua_State** %2, align 4, !dbg !766
  %33 = load i32* %n, align 4, !dbg !766
  %34 = call i32 @lua_type(%struct.lua_State* %32, i32 %33), !dbg !766
  %35 = icmp eq i32 %34, 3, !dbg !766
  br i1 %35, label %36, label %54, !dbg !766

; <label>:36                                      ; preds = %31
  call void @llvm.dbg.declare(metadata !{i32* %l}, metadata !769), !dbg !771
  %37 = load %struct.lua_State** %2, align 4, !dbg !772
  %38 = load i32* %n, align 4, !dbg !772
  %39 = call i64 @luaL_checkinteger(%struct.lua_State* %37, i32 %38), !dbg !772
  %40 = trunc i64 %39 to i32, !dbg !772
  store i32 %40, i32* %l, align 4, !dbg !772
  %41 = load i32* %l, align 4, !dbg !773
  %42 = icmp eq i32 %41, 0, !dbg !773
  br i1 %42, label %43, label %47, !dbg !773

; <label>:43                                      ; preds = %36
  %44 = load %struct.lua_State** %2, align 4, !dbg !774
  %45 = load %struct._IO_FILE** %3, align 4, !dbg !774
  %46 = call i32 @test_eof(%struct.lua_State* %44, %struct._IO_FILE* %45), !dbg !774
  br label %52, !dbg !774

; <label>:47                                      ; preds = %36
  %48 = load %struct.lua_State** %2, align 4, !dbg !776
  %49 = load %struct._IO_FILE** %3, align 4, !dbg !776
  %50 = load i32* %l, align 4, !dbg !776
  %51 = call i32 @read_chars(%struct.lua_State* %48, %struct._IO_FILE* %49, i32 %50), !dbg !776
  br label %52, !dbg !776

; <label>:52                                      ; preds = %47, %43
  %53 = phi i32 [ %46, %43 ], [ %51, %47 ], !dbg !778
  store i32 %53, i32* %success, align 4, !dbg !779
  br label %89, !dbg !782

; <label>:54                                      ; preds = %31
  call void @llvm.dbg.declare(metadata !{i8** %p}, metadata !783), !dbg !785
  %55 = load %struct.lua_State** %2, align 4, !dbg !786
  %56 = load i32* %n, align 4, !dbg !786
  %57 = call i8* @luaL_checklstring(%struct.lua_State* %55, i32 %56, i32* null), !dbg !786
  store i8* %57, i8** %p, align 4, !dbg !786
  %58 = load i8** %p, align 4, !dbg !787
  %59 = load i8* %58, align 1, !dbg !787
  %60 = zext i8 %59 to i32, !dbg !787
  %61 = icmp eq i32 %60, 42, !dbg !787
  br i1 %61, label %62, label %65, !dbg !787

; <label>:62                                      ; preds = %54
  %63 = load i8** %p, align 4, !dbg !789
  %64 = getelementptr inbounds i8* %63, i32 1, !dbg !789
  store i8* %64, i8** %p, align 4, !dbg !789
  br label %65, !dbg !789

; <label>:65                                      ; preds = %62, %54
  %66 = load i8** %p, align 4, !dbg !791
  %67 = load i8* %66, align 1, !dbg !791
  %68 = zext i8 %67 to i32, !dbg !791
  switch i32 %68, label %84 [
    i32 110, label %69
    i32 108, label %73
    i32 76, label %77
    i32 97, label %81
  ], !dbg !791

; <label>:69                                      ; preds = %65
  %70 = load %struct.lua_State** %2, align 4, !dbg !792
  %71 = load %struct._IO_FILE** %3, align 4, !dbg !792
  %72 = call i32 @read_number(%struct.lua_State* %70, %struct._IO_FILE* %71), !dbg !792
  store i32 %72, i32* %success, align 4, !dbg !792
  br label %88, !dbg !794

; <label>:73                                      ; preds = %65
  %74 = load %struct.lua_State** %2, align 4, !dbg !795
  %75 = load %struct._IO_FILE** %3, align 4, !dbg !795
  %76 = call i32 @read_line(%struct.lua_State* %74, %struct._IO_FILE* %75, i32 1), !dbg !795
  store i32 %76, i32* %success, align 4, !dbg !795
  br label %88, !dbg !796

; <label>:77                                      ; preds = %65
  %78 = load %struct.lua_State** %2, align 4, !dbg !797
  %79 = load %struct._IO_FILE** %3, align 4, !dbg !797
  %80 = call i32 @read_line(%struct.lua_State* %78, %struct._IO_FILE* %79, i32 0), !dbg !797
  store i32 %80, i32* %success, align 4, !dbg !797
  br label %88, !dbg !798

; <label>:81                                      ; preds = %65
  %82 = load %struct.lua_State** %2, align 4, !dbg !799
  %83 = load %struct._IO_FILE** %3, align 4, !dbg !799
  call void @read_all(%struct.lua_State* %82, %struct._IO_FILE* %83), !dbg !799
  store i32 1, i32* %success, align 4, !dbg !800
  br label %88, !dbg !801

; <label>:84                                      ; preds = %65
  %85 = load %struct.lua_State** %2, align 4, !dbg !802
  %86 = load i32* %n, align 4, !dbg !802
  %87 = call i32 @luaL_argerror(%struct.lua_State* %85, i32 %86, i8* getelementptr inbounds ([15 x i8]* @.str30, i32 0, i32 0)), !dbg !802
  store i32 %87, i32* %1, !dbg !802
  br label %111, !dbg !802

; <label>:88                                      ; preds = %81, %77, %73, %69
  br label %89

; <label>:89                                      ; preds = %88, %52
  br label %90, !dbg !803

; <label>:90                                      ; preds = %89
  %91 = load i32* %n, align 4, !dbg !804
  %92 = add nsw i32 %91, 1, !dbg !804
  store i32 %92, i32* %n, align 4, !dbg !804
  br label %22, !dbg !804

; <label>:93                                      ; preds = %29
  br label %94

; <label>:94                                      ; preds = %93, %11
  %95 = load %struct._IO_FILE** %3, align 4, !dbg !805
  %96 = call i32 @ferror(%struct._IO_FILE* %95) #5, !dbg !805
  %97 = icmp ne i32 %96, 0, !dbg !805
  br i1 %97, label %98, label %101, !dbg !805

; <label>:98                                      ; preds = %94
  %99 = load %struct.lua_State** %2, align 4, !dbg !807
  %100 = call i32 @luaL_fileresult(%struct.lua_State* %99, i32 0, i8* null), !dbg !807
  store i32 %100, i32* %1, !dbg !807
  br label %111, !dbg !807

; <label>:101                                     ; preds = %94
  %102 = load i32* %success, align 4, !dbg !808
  %103 = icmp ne i32 %102, 0, !dbg !808
  br i1 %103, label %107, label %104, !dbg !808

; <label>:104                                     ; preds = %101
  %105 = load %struct.lua_State** %2, align 4, !dbg !810
  call void @lua_settop(%struct.lua_State* %105, i32 -2), !dbg !810
  %106 = load %struct.lua_State** %2, align 4, !dbg !812
  call void @lua_pushnil(%struct.lua_State* %106), !dbg !812
  br label %107, !dbg !813

; <label>:107                                     ; preds = %104, %101
  %108 = load i32* %n, align 4, !dbg !814
  %109 = load i32* %4, align 4, !dbg !814
  %110 = sub nsw i32 %108, %109, !dbg !814
  store i32 %110, i32* %1, !dbg !814
  br label %111, !dbg !814

; <label>:111                                     ; preds = %107, %98, %84
  %112 = load i32* %1, !dbg !815
  ret i32 %112, !dbg !815
}

; Function Attrs: nounwind
declare void @clearerr(%struct._IO_FILE*) #0

; Function Attrs: nounwind
define internal i32 @read_line(%struct.lua_State* %L, %struct._IO_FILE* %f, i32 %chop) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca %struct._IO_FILE*, align 4
  %3 = alloca i32, align 4
  %b = alloca %struct.luaL_Buffer, align 4
  %c = alloca i32, align 4
  %buff = alloca i8*, align 4
  %i = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !816), !dbg !817
  store %struct._IO_FILE* %f, %struct._IO_FILE** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct._IO_FILE** %2}, metadata !818), !dbg !819
  store i32 %chop, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !820), !dbg !821
  call void @llvm.dbg.declare(metadata !{%struct.luaL_Buffer* %b}, metadata !822), !dbg !834
  call void @llvm.dbg.declare(metadata !{i32* %c}, metadata !835), !dbg !836
  store i32 0, i32* %c, align 4, !dbg !837
  %4 = load %struct.lua_State** %1, align 4, !dbg !838
  call void @luaL_buffinit(%struct.lua_State* %4, %struct.luaL_Buffer* %b), !dbg !838
  br label %5, !dbg !839

; <label>:5                                       ; preds = %34, %0
  %6 = load i32* %c, align 4, !dbg !840
  %7 = icmp ne i32 %6, -1, !dbg !840
  br i1 %7, label %8, label %11, !dbg !840

; <label>:8                                       ; preds = %5
  %9 = load i32* %c, align 4, !dbg !842
  %10 = icmp ne i32 %9, 10, !dbg !842
  br label %11

; <label>:11                                      ; preds = %8, %5
  %12 = phi i1 [ false, %5 ], [ %10, %8 ]
  br i1 %12, label %13, label %39, !dbg !844

; <label>:13                                      ; preds = %11
  call void @llvm.dbg.declare(metadata !{i8** %buff}, metadata !846), !dbg !848
  %14 = call i8* @luaL_prepbuffsize(%struct.luaL_Buffer* %b, i32 8192), !dbg !849
  store i8* %14, i8** %buff, align 4, !dbg !849
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !850), !dbg !851
  store i32 0, i32* %i, align 4, !dbg !852
  br label %15, !dbg !853

; <label>:15                                      ; preds = %27, %13
  %16 = load i32* %i, align 4, !dbg !854
  %17 = icmp slt i32 %16, 8192, !dbg !854
  br i1 %17, label %18, label %25, !dbg !854

; <label>:18                                      ; preds = %15
  %19 = load %struct._IO_FILE** %2, align 4, !dbg !856
  %20 = call i32 @_IO_getc(%struct._IO_FILE* %19), !dbg !856
  store i32 %20, i32* %c, align 4, !dbg !856
  %21 = icmp ne i32 %20, -1, !dbg !856
  br i1 %21, label %22, label %25, !dbg !856

; <label>:22                                      ; preds = %18
  %23 = load i32* %c, align 4, !dbg !858
  %24 = icmp ne i32 %23, 10, !dbg !858
  br label %25

; <label>:25                                      ; preds = %22, %18, %15
  %26 = phi i1 [ false, %18 ], [ false, %15 ], [ %24, %22 ]
  br i1 %26, label %27, label %34, !dbg !860

; <label>:27                                      ; preds = %25
  %28 = load i32* %c, align 4, !dbg !863
  %29 = trunc i32 %28 to i8, !dbg !863
  %30 = load i32* %i, align 4, !dbg !863
  %31 = add nsw i32 %30, 1, !dbg !863
  store i32 %31, i32* %i, align 4, !dbg !863
  %32 = load i8** %buff, align 4, !dbg !863
  %33 = getelementptr inbounds i8* %32, i32 %30, !dbg !863
  store i8 %29, i8* %33, align 1, !dbg !863
  br label %15, !dbg !863

; <label>:34                                      ; preds = %25
  %35 = load i32* %i, align 4, !dbg !864
  %36 = getelementptr inbounds %struct.luaL_Buffer* %b, i32 0, i32 2, !dbg !864
  %37 = load i32* %36, align 4, !dbg !864
  %38 = add i32 %37, %35, !dbg !864
  store i32 %38, i32* %36, align 4, !dbg !864
  br label %5, !dbg !865

; <label>:39                                      ; preds = %11
  %40 = load i32* %3, align 4, !dbg !866
  %41 = icmp ne i32 %40, 0, !dbg !866
  br i1 %41, label %65, label %42, !dbg !866

; <label>:42                                      ; preds = %39
  %43 = load i32* %c, align 4, !dbg !868
  %44 = icmp eq i32 %43, 10, !dbg !868
  br i1 %44, label %45, label %65, !dbg !868

; <label>:45                                      ; preds = %42
  %46 = getelementptr inbounds %struct.luaL_Buffer* %b, i32 0, i32 2, !dbg !870
  %47 = load i32* %46, align 4, !dbg !870
  %48 = getelementptr inbounds %struct.luaL_Buffer* %b, i32 0, i32 1, !dbg !870
  %49 = load i32* %48, align 4, !dbg !870
  %50 = icmp ult i32 %47, %49, !dbg !870
  br i1 %50, label %54, label %51, !dbg !870

; <label>:51                                      ; preds = %45
  %52 = call i8* @luaL_prepbuffsize(%struct.luaL_Buffer* %b, i32 1), !dbg !871
  %53 = icmp ne i8* %52, null, !dbg !871
  br label %54, !dbg !871

; <label>:54                                      ; preds = %51, %45
  %55 = phi i1 [ true, %45 ], [ %53, %51 ]
  %56 = zext i1 %55 to i32, !dbg !873
  %57 = load i32* %c, align 4, !dbg !873
  %58 = trunc i32 %57 to i8, !dbg !873
  %59 = getelementptr inbounds %struct.luaL_Buffer* %b, i32 0, i32 2, !dbg !873
  %60 = load i32* %59, align 4, !dbg !873
  %61 = add i32 %60, 1, !dbg !873
  store i32 %61, i32* %59, align 4, !dbg !873
  %62 = getelementptr inbounds %struct.luaL_Buffer* %b, i32 0, i32 0, !dbg !873
  %63 = load i8** %62, align 4, !dbg !873
  %64 = getelementptr inbounds i8* %63, i32 %60, !dbg !873
  store i8 %58, i8* %64, align 1, !dbg !873
  br label %65, !dbg !873

; <label>:65                                      ; preds = %54, %42, %39
  call void @luaL_pushresult(%struct.luaL_Buffer* %b), !dbg !876
  %66 = load i32* %c, align 4, !dbg !877
  %67 = icmp eq i32 %66, 10, !dbg !877
  br i1 %67, label %72, label %68, !dbg !877

; <label>:68                                      ; preds = %65
  %69 = load %struct.lua_State** %1, align 4, !dbg !878
  %70 = call i32 @lua_rawlen(%struct.lua_State* %69, i32 -1), !dbg !878
  %71 = icmp ugt i32 %70, 0, !dbg !878
  br label %72, !dbg !878

; <label>:72                                      ; preds = %68, %65
  %73 = phi i1 [ true, %65 ], [ %71, %68 ]
  %74 = zext i1 %73 to i32, !dbg !880
  ret i32 %74, !dbg !880
}

declare void @luaL_checkstack(%struct.lua_State*, i32, i8*) #2

declare i64 @luaL_checkinteger(%struct.lua_State*, i32) #2

; Function Attrs: nounwind
define internal i32 @test_eof(%struct.lua_State* %L, %struct._IO_FILE* %f) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca %struct._IO_FILE*, align 4
  %c = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !883), !dbg !884
  store %struct._IO_FILE* %f, %struct._IO_FILE** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct._IO_FILE** %2}, metadata !885), !dbg !886
  call void @llvm.dbg.declare(metadata !{i32* %c}, metadata !887), !dbg !888
  %3 = load %struct._IO_FILE** %2, align 4, !dbg !889
  %4 = call i32 @_IO_getc(%struct._IO_FILE* %3), !dbg !889
  store i32 %4, i32* %c, align 4, !dbg !889
  %5 = load i32* %c, align 4, !dbg !890
  %6 = load %struct._IO_FILE** %2, align 4, !dbg !890
  %7 = call i32 @ungetc(i32 %5, %struct._IO_FILE* %6), !dbg !890
  %8 = load %struct.lua_State** %1, align 4, !dbg !891
  %9 = call i8* @lua_pushstring(%struct.lua_State* %8, i8* getelementptr inbounds ([1 x i8]* @.str36, i32 0, i32 0)), !dbg !891
  %10 = load i32* %c, align 4, !dbg !892
  %11 = icmp ne i32 %10, -1, !dbg !892
  %12 = zext i1 %11 to i32, !dbg !892
  ret i32 %12, !dbg !892
}

; Function Attrs: nounwind
define internal i32 @read_chars(%struct.lua_State* %L, %struct._IO_FILE* %f, i32 %n) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca %struct._IO_FILE*, align 4
  %3 = alloca i32, align 4
  %nr = alloca i32, align 4
  %p = alloca i8*, align 4
  %b = alloca %struct.luaL_Buffer, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !893), !dbg !894
  store %struct._IO_FILE* %f, %struct._IO_FILE** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct._IO_FILE** %2}, metadata !895), !dbg !896
  store i32 %n, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !897), !dbg !898
  call void @llvm.dbg.declare(metadata !{i32* %nr}, metadata !899), !dbg !900
  call void @llvm.dbg.declare(metadata !{i8** %p}, metadata !901), !dbg !902
  call void @llvm.dbg.declare(metadata !{%struct.luaL_Buffer* %b}, metadata !903), !dbg !904
  %4 = load %struct.lua_State** %1, align 4, !dbg !905
  call void @luaL_buffinit(%struct.lua_State* %4, %struct.luaL_Buffer* %b), !dbg !905
  %5 = load i32* %3, align 4, !dbg !906
  %6 = call i8* @luaL_prepbuffsize(%struct.luaL_Buffer* %b, i32 %5), !dbg !906
  store i8* %6, i8** %p, align 4, !dbg !906
  %7 = load i8** %p, align 4, !dbg !907
  %8 = load i32* %3, align 4, !dbg !907
  %9 = load %struct._IO_FILE** %2, align 4, !dbg !907
  %10 = call i32 @fread(i8* %7, i32 1, i32 %8, %struct._IO_FILE* %9), !dbg !907
  store i32 %10, i32* %nr, align 4, !dbg !907
  %11 = load i32* %nr, align 4, !dbg !908
  %12 = getelementptr inbounds %struct.luaL_Buffer* %b, i32 0, i32 2, !dbg !908
  %13 = load i32* %12, align 4, !dbg !908
  %14 = add i32 %13, %11, !dbg !908
  store i32 %14, i32* %12, align 4, !dbg !908
  call void @luaL_pushresult(%struct.luaL_Buffer* %b), !dbg !909
  %15 = load i32* %nr, align 4, !dbg !910
  %16 = icmp ugt i32 %15, 0, !dbg !910
  %17 = zext i1 %16 to i32, !dbg !910
  ret i32 %17, !dbg !910
}

; Function Attrs: nounwind
define internal i32 @read_number(%struct.lua_State* %L, %struct._IO_FILE* %f) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.lua_State*, align 4
  %3 = alloca %struct._IO_FILE*, align 4
  %rn = alloca %struct.RN, align 4
  %count = alloca i32, align 4
  %hex = alloca i32, align 4
  %decp = alloca [2 x i8], align 1
  store %struct.lua_State* %L, %struct.lua_State** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %2}, metadata !911), !dbg !912
  store %struct._IO_FILE* %f, %struct._IO_FILE** %3, align 4
  call void @llvm.dbg.declare(metadata !{%struct._IO_FILE** %3}, metadata !913), !dbg !914
  call void @llvm.dbg.declare(metadata !{%struct.RN* %rn}, metadata !915), !dbg !916
  call void @llvm.dbg.declare(metadata !{i32* %count}, metadata !917), !dbg !918
  store i32 0, i32* %count, align 4, !dbg !919
  call void @llvm.dbg.declare(metadata !{i32* %hex}, metadata !920), !dbg !921
  store i32 0, i32* %hex, align 4, !dbg !922
  call void @llvm.dbg.declare(metadata !{[2 x i8]* %decp}, metadata !923), !dbg !927
  %4 = load %struct._IO_FILE** %3, align 4, !dbg !928
  %5 = getelementptr inbounds %struct.RN* %rn, i32 0, i32 0, !dbg !928
  store %struct._IO_FILE* %4, %struct._IO_FILE** %5, align 4, !dbg !928
  %6 = getelementptr inbounds %struct.RN* %rn, i32 0, i32 2, !dbg !929
  store i32 0, i32* %6, align 4, !dbg !929
  %7 = call %struct.lconv* @localeconv() #5, !dbg !930
  %8 = getelementptr inbounds %struct.lconv* %7, i32 0, i32 0, !dbg !930
  %9 = load i8** %8, align 4, !dbg !930
  %10 = getelementptr inbounds i8* %9, i32 0, !dbg !930
  %11 = load i8* %10, align 1, !dbg !930
  %12 = getelementptr inbounds [2 x i8]* %decp, i32 0, i32 0, !dbg !930
  store i8 %11, i8* %12, align 1, !dbg !930
  %13 = getelementptr inbounds [2 x i8]* %decp, i32 0, i32 1, !dbg !931
  store i8 46, i8* %13, align 1, !dbg !931
  br label %14, !dbg !932

; <label>:14                                      ; preds = %19, %0
  %15 = getelementptr inbounds %struct.RN* %rn, i32 0, i32 0, !dbg !933
  %16 = load %struct._IO_FILE** %15, align 4, !dbg !933
  %17 = call i32 @_IO_getc(%struct._IO_FILE* %16), !dbg !933
  %18 = getelementptr inbounds %struct.RN* %rn, i32 0, i32 1, !dbg !933
  store i32 %17, i32* %18, align 4, !dbg !933
  br label %19, !dbg !937

; <label>:19                                      ; preds = %14
  %20 = getelementptr inbounds %struct.RN* %rn, i32 0, i32 1, !dbg !938
  %21 = load i32* %20, align 4, !dbg !938
  %22 = call i16** @__ctype_b_loc() #1, !dbg !940
  %23 = load i16** %22, align 4, !dbg !940
  %24 = getelementptr inbounds i16* %23, i32 %21, !dbg !940
  %25 = load i16* %24, align 2, !dbg !940
  %26 = zext i16 %25 to i32, !dbg !940
  %27 = and i32 %26, 8192, !dbg !940
  %28 = icmp ne i32 %27, 0, !dbg !940
  br i1 %28, label %14, label %29, !dbg !940

; <label>:29                                      ; preds = %19
  %30 = call i32 @test2(%struct.RN* %rn, i8* getelementptr inbounds ([3 x i8]* @.str31, i32 0, i32 0)), !dbg !941
  %31 = call i32 @test2(%struct.RN* %rn, i8* getelementptr inbounds ([3 x i8]* @.str32, i32 0, i32 0)), !dbg !942
  %32 = icmp ne i32 %31, 0, !dbg !942
  br i1 %32, label %33, label %39, !dbg !942

; <label>:33                                      ; preds = %29
  %34 = call i32 @test2(%struct.RN* %rn, i8* getelementptr inbounds ([3 x i8]* @.str33, i32 0, i32 0)), !dbg !944
  %35 = icmp ne i32 %34, 0, !dbg !944
  br i1 %35, label %36, label %37, !dbg !944

; <label>:36                                      ; preds = %33
  store i32 1, i32* %hex, align 4, !dbg !947
  br label %38, !dbg !947

; <label>:37                                      ; preds = %33
  store i32 1, i32* %count, align 4, !dbg !949
  br label %38

; <label>:38                                      ; preds = %37, %36
  br label %39, !dbg !950

; <label>:39                                      ; preds = %38, %29
  %40 = load i32* %hex, align 4, !dbg !951
  %41 = call i32 @readdigits(%struct.RN* %rn, i32 %40), !dbg !951
  %42 = load i32* %count, align 4, !dbg !951
  %43 = add nsw i32 %42, %41, !dbg !951
  store i32 %43, i32* %count, align 4, !dbg !951
  %44 = getelementptr inbounds [2 x i8]* %decp, i32 0, i32 0, !dbg !952
  %45 = call i32 @test2(%struct.RN* %rn, i8* %44), !dbg !952
  %46 = icmp ne i32 %45, 0, !dbg !952
  br i1 %46, label %47, label %52, !dbg !952

; <label>:47                                      ; preds = %39
  %48 = load i32* %hex, align 4, !dbg !954
  %49 = call i32 @readdigits(%struct.RN* %rn, i32 %48), !dbg !954
  %50 = load i32* %count, align 4, !dbg !954
  %51 = add nsw i32 %50, %49, !dbg !954
  store i32 %51, i32* %count, align 4, !dbg !954
  br label %52, !dbg !954

; <label>:52                                      ; preds = %47, %39
  %53 = load i32* %count, align 4, !dbg !955
  %54 = icmp sgt i32 %53, 0, !dbg !955
  br i1 %54, label %55, label %64, !dbg !955

; <label>:55                                      ; preds = %52
  %56 = load i32* %hex, align 4, !dbg !957
  %57 = icmp ne i32 %56, 0, !dbg !957
  %58 = select i1 %57, i8* getelementptr inbounds ([3 x i8]* @.str34, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str35, i32 0, i32 0), !dbg !957
  %59 = call i32 @test2(%struct.RN* %rn, i8* %58), !dbg !957
  %60 = icmp ne i32 %59, 0, !dbg !957
  br i1 %60, label %61, label %64, !dbg !957

; <label>:61                                      ; preds = %55
  %62 = call i32 @test2(%struct.RN* %rn, i8* getelementptr inbounds ([3 x i8]* @.str31, i32 0, i32 0)), !dbg !959
  %63 = call i32 @readdigits(%struct.RN* %rn, i32 0), !dbg !961
  br label %64, !dbg !962

; <label>:64                                      ; preds = %61, %55, %52
  %65 = getelementptr inbounds %struct.RN* %rn, i32 0, i32 1, !dbg !963
  %66 = load i32* %65, align 4, !dbg !963
  %67 = getelementptr inbounds %struct.RN* %rn, i32 0, i32 0, !dbg !963
  %68 = load %struct._IO_FILE** %67, align 4, !dbg !963
  %69 = call i32 @ungetc(i32 %66, %struct._IO_FILE* %68), !dbg !963
  %70 = getelementptr inbounds %struct.RN* %rn, i32 0, i32 2, !dbg !964
  %71 = load i32* %70, align 4, !dbg !964
  %72 = getelementptr inbounds %struct.RN* %rn, i32 0, i32 3, !dbg !964
  %73 = getelementptr inbounds [201 x i8]* %72, i32 0, i32 %71, !dbg !964
  store i8 0, i8* %73, align 1, !dbg !964
  %74 = load %struct.lua_State** %2, align 4, !dbg !965
  %75 = getelementptr inbounds %struct.RN* %rn, i32 0, i32 3, !dbg !965
  %76 = getelementptr inbounds [201 x i8]* %75, i32 0, i32 0, !dbg !965
  %77 = call i32 @lua_stringtonumber(%struct.lua_State* %74, i8* %76), !dbg !965
  %78 = icmp ne i32 %77, 0, !dbg !965
  br i1 %78, label %79, label %80, !dbg !965

; <label>:79                                      ; preds = %64
  store i32 1, i32* %1, !dbg !967
  br label %82, !dbg !967

; <label>:80                                      ; preds = %64
  %81 = load %struct.lua_State** %2, align 4, !dbg !968
  call void @lua_pushnil(%struct.lua_State* %81), !dbg !968
  store i32 0, i32* %1, !dbg !970
  br label %82, !dbg !970

; <label>:82                                      ; preds = %80, %79
  %83 = load i32* %1, !dbg !971
  ret i32 %83, !dbg !971
}

; Function Attrs: nounwind
define internal void @read_all(%struct.lua_State* %L, %struct._IO_FILE* %f) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca %struct._IO_FILE*, align 4
  %nr = alloca i32, align 4
  %b = alloca %struct.luaL_Buffer, align 4
  %p = alloca i8*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !972), !dbg !973
  store %struct._IO_FILE* %f, %struct._IO_FILE** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct._IO_FILE** %2}, metadata !974), !dbg !975
  call void @llvm.dbg.declare(metadata !{i32* %nr}, metadata !976), !dbg !977
  call void @llvm.dbg.declare(metadata !{%struct.luaL_Buffer* %b}, metadata !978), !dbg !979
  %3 = load %struct.lua_State** %1, align 4, !dbg !980
  call void @luaL_buffinit(%struct.lua_State* %3, %struct.luaL_Buffer* %b), !dbg !980
  br label %4, !dbg !981

; <label>:4                                       ; preds = %13, %0
  call void @llvm.dbg.declare(metadata !{i8** %p}, metadata !982), !dbg !984
  %5 = call i8* @luaL_prepbuffsize(%struct.luaL_Buffer* %b, i32 8192), !dbg !985
  store i8* %5, i8** %p, align 4, !dbg !985
  %6 = load i8** %p, align 4, !dbg !986
  %7 = load %struct._IO_FILE** %2, align 4, !dbg !986
  %8 = call i32 @fread(i8* %6, i32 1, i32 8192, %struct._IO_FILE* %7), !dbg !986
  store i32 %8, i32* %nr, align 4, !dbg !986
  %9 = load i32* %nr, align 4, !dbg !987
  %10 = getelementptr inbounds %struct.luaL_Buffer* %b, i32 0, i32 2, !dbg !987
  %11 = load i32* %10, align 4, !dbg !987
  %12 = add i32 %11, %9, !dbg !987
  store i32 %12, i32* %10, align 4, !dbg !987
  br label %13, !dbg !988

; <label>:13                                      ; preds = %4
  %14 = load i32* %nr, align 4, !dbg !989
  %15 = icmp eq i32 %14, 8192, !dbg !989
  br i1 %15, label %4, label %16, !dbg !989

; <label>:16                                      ; preds = %13
  call void @luaL_pushresult(%struct.luaL_Buffer* %b), !dbg !991
  ret void, !dbg !992
}

; Function Attrs: nounwind
declare i32 @ferror(%struct._IO_FILE*) #0

declare void @luaL_buffinit(%struct.lua_State*, %struct.luaL_Buffer*) #2

declare i8* @luaL_prepbuffsize(%struct.luaL_Buffer*, i32) #2

declare i32 @fread(i8*, i32, i32, %struct._IO_FILE*) #2

declare void @luaL_pushresult(%struct.luaL_Buffer*) #2

; Function Attrs: nounwind
declare %struct.lconv* @localeconv() #0

declare i32 @_IO_getc(%struct._IO_FILE*) #2

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #3

; Function Attrs: nounwind
define internal i32 @test2(%struct.RN* %rn, i8* %set) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.RN*, align 4
  %3 = alloca i8*, align 4
  store %struct.RN* %rn, %struct.RN** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.RN** %2}, metadata !993), !dbg !994
  store i8* %set, i8** %3, align 4
  call void @llvm.dbg.declare(metadata !{i8** %3}, metadata !995), !dbg !996
  %4 = load %struct.RN** %2, align 4, !dbg !997
  %5 = getelementptr inbounds %struct.RN* %4, i32 0, i32 1, !dbg !997
  %6 = load i32* %5, align 4, !dbg !997
  %7 = load i8** %3, align 4, !dbg !997
  %8 = getelementptr inbounds i8* %7, i32 0, !dbg !997
  %9 = load i8* %8, align 1, !dbg !997
  %10 = zext i8 %9 to i32, !dbg !997
  %11 = icmp eq i32 %6, %10, !dbg !997
  br i1 %11, label %21, label %12, !dbg !997

; <label>:12                                      ; preds = %0
  %13 = load %struct.RN** %2, align 4, !dbg !999
  %14 = getelementptr inbounds %struct.RN* %13, i32 0, i32 1, !dbg !999
  %15 = load i32* %14, align 4, !dbg !999
  %16 = load i8** %3, align 4, !dbg !999
  %17 = getelementptr inbounds i8* %16, i32 1, !dbg !999
  %18 = load i8* %17, align 1, !dbg !999
  %19 = zext i8 %18 to i32, !dbg !999
  %20 = icmp eq i32 %15, %19, !dbg !999
  br i1 %20, label %21, label %24, !dbg !999

; <label>:21                                      ; preds = %12, %0
  %22 = load %struct.RN** %2, align 4, !dbg !1001
  %23 = call i32 @nextc(%struct.RN* %22), !dbg !1001
  store i32 %23, i32* %1, !dbg !1001
  br label %25, !dbg !1001

; <label>:24                                      ; preds = %12
  store i32 0, i32* %1, !dbg !1002
  br label %25, !dbg !1002

; <label>:25                                      ; preds = %24, %21
  %26 = load i32* %1, !dbg !1003
  ret i32 %26, !dbg !1003
}

; Function Attrs: nounwind
define internal i32 @readdigits(%struct.RN* %rn, i32 %hex) #0 {
  %1 = alloca %struct.RN*, align 4
  %2 = alloca i32, align 4
  %count = alloca i32, align 4
  store %struct.RN* %rn, %struct.RN** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.RN** %1}, metadata !1004), !dbg !1005
  store i32 %hex, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !1006), !dbg !1007
  call void @llvm.dbg.declare(metadata !{i32* %count}, metadata !1008), !dbg !1009
  store i32 0, i32* %count, align 4, !dbg !1010
  br label %3, !dbg !1011

; <label>:3                                       ; preds = %34, %0
  %4 = load i32* %2, align 4, !dbg !1012
  %5 = icmp ne i32 %4, 0, !dbg !1012
  br i1 %5, label %6, label %17, !dbg !1012

; <label>:6                                       ; preds = %3
  %7 = load %struct.RN** %1, align 4, !dbg !1014
  %8 = getelementptr inbounds %struct.RN* %7, i32 0, i32 1, !dbg !1014
  %9 = load i32* %8, align 4, !dbg !1014
  %10 = call i16** @__ctype_b_loc() #1, !dbg !1016
  %11 = load i16** %10, align 4, !dbg !1016
  %12 = getelementptr inbounds i16* %11, i32 %9, !dbg !1016
  %13 = load i16* %12, align 2, !dbg !1016
  %14 = zext i16 %13 to i32, !dbg !1016
  %15 = and i32 %14, 4096, !dbg !1016
  %16 = icmp ne i32 %15, 0, !dbg !1016
  br i1 %16, label %28, label %32, !dbg !1016

; <label>:17                                      ; preds = %3
  %18 = load %struct.RN** %1, align 4, !dbg !1017
  %19 = getelementptr inbounds %struct.RN* %18, i32 0, i32 1, !dbg !1017
  %20 = load i32* %19, align 4, !dbg !1017
  %21 = call i16** @__ctype_b_loc() #1, !dbg !1019
  %22 = load i16** %21, align 4, !dbg !1019
  %23 = getelementptr inbounds i16* %22, i32 %20, !dbg !1019
  %24 = load i16* %23, align 2, !dbg !1019
  %25 = zext i16 %24 to i32, !dbg !1019
  %26 = and i32 %25, 2048, !dbg !1019
  %27 = icmp ne i32 %26, 0, !dbg !1019
  br i1 %27, label %28, label %32, !dbg !1019

; <label>:28                                      ; preds = %17, %6
  %29 = load %struct.RN** %1, align 4, !dbg !1020
  %30 = call i32 @nextc(%struct.RN* %29), !dbg !1020
  %31 = icmp ne i32 %30, 0, !dbg !1020
  br label %32

; <label>:32                                      ; preds = %28, %17, %6
  %33 = phi i1 [ false, %17 ], [ false, %6 ], [ %31, %28 ]
  br i1 %33, label %34, label %37, !dbg !1023

; <label>:34                                      ; preds = %32
  %35 = load i32* %count, align 4, !dbg !1026
  %36 = add nsw i32 %35, 1, !dbg !1026
  store i32 %36, i32* %count, align 4, !dbg !1026
  br label %3, !dbg !1026

; <label>:37                                      ; preds = %32
  %38 = load i32* %count, align 4, !dbg !1027
  ret i32 %38, !dbg !1027
}

declare i32 @ungetc(i32, %struct._IO_FILE*) #2

declare i32 @lua_stringtonumber(%struct.lua_State*, i8*) #2

; Function Attrs: nounwind
define internal i32 @nextc(%struct.RN* %rn) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.RN*, align 4
  store %struct.RN* %rn, %struct.RN** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.RN** %2}, metadata !1028), !dbg !1029
  %3 = load %struct.RN** %2, align 4, !dbg !1030
  %4 = getelementptr inbounds %struct.RN* %3, i32 0, i32 2, !dbg !1030
  %5 = load i32* %4, align 4, !dbg !1030
  %6 = icmp sge i32 %5, 200, !dbg !1030
  br i1 %6, label %7, label %11, !dbg !1030

; <label>:7                                       ; preds = %0
  %8 = load %struct.RN** %2, align 4, !dbg !1032
  %9 = getelementptr inbounds %struct.RN* %8, i32 0, i32 3, !dbg !1032
  %10 = getelementptr inbounds [201 x i8]* %9, i32 0, i32 0, !dbg !1032
  store i8 0, i8* %10, align 1, !dbg !1032
  store i32 0, i32* %1, !dbg !1034
  br label %29, !dbg !1034

; <label>:11                                      ; preds = %0
  %12 = load %struct.RN** %2, align 4, !dbg !1035
  %13 = getelementptr inbounds %struct.RN* %12, i32 0, i32 1, !dbg !1035
  %14 = load i32* %13, align 4, !dbg !1035
  %15 = trunc i32 %14 to i8, !dbg !1035
  %16 = load %struct.RN** %2, align 4, !dbg !1035
  %17 = getelementptr inbounds %struct.RN* %16, i32 0, i32 2, !dbg !1035
  %18 = load i32* %17, align 4, !dbg !1035
  %19 = add nsw i32 %18, 1, !dbg !1035
  store i32 %19, i32* %17, align 4, !dbg !1035
  %20 = load %struct.RN** %2, align 4, !dbg !1035
  %21 = getelementptr inbounds %struct.RN* %20, i32 0, i32 3, !dbg !1035
  %22 = getelementptr inbounds [201 x i8]* %21, i32 0, i32 %18, !dbg !1035
  store i8 %15, i8* %22, align 1, !dbg !1035
  %23 = load %struct.RN** %2, align 4, !dbg !1037
  %24 = getelementptr inbounds %struct.RN* %23, i32 0, i32 0, !dbg !1037
  %25 = load %struct._IO_FILE** %24, align 4, !dbg !1037
  %26 = call i32 @_IO_getc(%struct._IO_FILE* %25), !dbg !1037
  %27 = load %struct.RN** %2, align 4, !dbg !1037
  %28 = getelementptr inbounds %struct.RN* %27, i32 0, i32 1, !dbg !1037
  store i32 %26, i32* %28, align 4, !dbg !1037
  store i32 1, i32* %1, !dbg !1038
  br label %29, !dbg !1038

; <label>:29                                      ; preds = %11, %7
  %30 = load i32* %1, !dbg !1039
  ret i32 %30, !dbg !1039
}

declare i32 @lua_rawlen(%struct.lua_State*, i32) #2

; Function Attrs: nounwind
define internal void @aux_lines(%struct.lua_State* %L, i32 %toclose) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca i32, align 4
  %n = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !1040), !dbg !1041
  store i32 %toclose, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !1042), !dbg !1043
  call void @llvm.dbg.declare(metadata !{i32* %n}, metadata !1044), !dbg !1045
  %3 = load %struct.lua_State** %1, align 4, !dbg !1046
  %4 = call i32 @lua_gettop(%struct.lua_State* %3), !dbg !1046
  %5 = sub nsw i32 %4, 1, !dbg !1046
  store i32 %5, i32* %n, align 4, !dbg !1046
  %6 = load i32* %n, align 4, !dbg !1047
  %7 = icmp sle i32 %6, 250, !dbg !1047
  br i1 %7, label %12, label %8, !dbg !1047

; <label>:8                                       ; preds = %0
  %9 = load %struct.lua_State** %1, align 4, !dbg !1048
  %10 = call i32 @luaL_argerror(%struct.lua_State* %9, i32 252, i8* getelementptr inbounds ([19 x i8]* @.str29, i32 0, i32 0)), !dbg !1048
  %11 = icmp ne i32 %10, 0, !dbg !1048
  br label %12, !dbg !1048

; <label>:12                                      ; preds = %8, %0
  %13 = phi i1 [ true, %0 ], [ %11, %8 ]
  %14 = zext i1 %13 to i32, !dbg !1050
  %15 = load %struct.lua_State** %1, align 4, !dbg !1053
  %16 = load i32* %n, align 4, !dbg !1053
  %17 = sext i32 %16 to i64, !dbg !1053
  call void @lua_pushinteger(%struct.lua_State* %15, i64 %17), !dbg !1053
  %18 = load %struct.lua_State** %1, align 4, !dbg !1054
  %19 = load i32* %2, align 4, !dbg !1054
  call void @lua_pushboolean(%struct.lua_State* %18, i32 %19), !dbg !1054
  %20 = load %struct.lua_State** %1, align 4, !dbg !1055
  call void @lua_rotate(%struct.lua_State* %20, i32 2, i32 2), !dbg !1055
  %21 = load %struct.lua_State** %1, align 4, !dbg !1056
  %22 = load i32* %n, align 4, !dbg !1056
  %23 = add nsw i32 3, %22, !dbg !1056
  call void @lua_pushcclosure(%struct.lua_State* %21, i32 (%struct.lua_State*)* @io_readline, i32 %23), !dbg !1056
  ret void, !dbg !1057
}

declare void @lua_pushboolean(%struct.lua_State*, i32) #2

declare void @lua_rotate(%struct.lua_State*, i32, i32) #2

declare void @lua_pushcclosure(%struct.lua_State*, i32 (%struct.lua_State*)*, i32) #2

; Function Attrs: nounwind
define internal i32 @io_readline(%struct.lua_State* %L) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.lua_State*, align 4
  %p = alloca %struct.luaL_Stream*, align 4
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %2}, metadata !1058), !dbg !1059
  call void @llvm.dbg.declare(metadata !{%struct.luaL_Stream** %p}, metadata !1060), !dbg !1061
  %3 = load %struct.lua_State** %2, align 4, !dbg !1062
  %4 = call i8* @lua_touserdata(%struct.lua_State* %3, i32 -1001001), !dbg !1062
  %5 = bitcast i8* %4 to %struct.luaL_Stream*, !dbg !1062
  store %struct.luaL_Stream* %5, %struct.luaL_Stream** %p, align 4, !dbg !1062
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !1063), !dbg !1064
  call void @llvm.dbg.declare(metadata !{i32* %n}, metadata !1065), !dbg !1066
  %6 = load %struct.lua_State** %2, align 4, !dbg !1067
  %7 = call i64 @lua_tointegerx(%struct.lua_State* %6, i32 -1001002, i32* null), !dbg !1067
  %8 = trunc i64 %7 to i32, !dbg !1067
  store i32 %8, i32* %n, align 4, !dbg !1067
  %9 = load %struct.luaL_Stream** %p, align 4, !dbg !1068
  %10 = getelementptr inbounds %struct.luaL_Stream* %9, i32 0, i32 1, !dbg !1068
  %11 = load i32 (%struct.lua_State*)** %10, align 4, !dbg !1068
  %12 = icmp eq i32 (%struct.lua_State*)* %11, null, !dbg !1068
  br i1 %12, label %13, label %16, !dbg !1068

; <label>:13                                      ; preds = %0
  %14 = load %struct.lua_State** %2, align 4, !dbg !1070
  %15 = call i32 (%struct.lua_State*, i8*, ...)* @luaL_error(%struct.lua_State* %14, i8* getelementptr inbounds ([23 x i8]* @.str37, i32 0, i32 0)), !dbg !1070
  store i32 %15, i32* %1, !dbg !1070
  br label %66, !dbg !1070

; <label>:16                                      ; preds = %0
  %17 = load %struct.lua_State** %2, align 4, !dbg !1071
  call void @lua_settop(%struct.lua_State* %17, i32 1), !dbg !1071
  %18 = load %struct.lua_State** %2, align 4, !dbg !1072
  %19 = load i32* %n, align 4, !dbg !1072
  call void @luaL_checkstack(%struct.lua_State* %18, i32 %19, i8* getelementptr inbounds ([19 x i8]* @.str29, i32 0, i32 0)), !dbg !1072
  store i32 1, i32* %i, align 4, !dbg !1073
  br label %20, !dbg !1073

; <label>:20                                      ; preds = %29, %16
  %21 = load i32* %i, align 4, !dbg !1075
  %22 = load i32* %n, align 4, !dbg !1075
  %23 = icmp sle i32 %21, %22, !dbg !1075
  br i1 %23, label %24, label %32, !dbg !1075

; <label>:24                                      ; preds = %20
  %25 = load %struct.lua_State** %2, align 4, !dbg !1078
  %26 = load i32* %i, align 4, !dbg !1078
  %27 = add nsw i32 3, %26, !dbg !1078
  %28 = sub nsw i32 -1001000, %27, !dbg !1078
  call void @lua_pushvalue(%struct.lua_State* %25, i32 %28), !dbg !1078
  br label %29, !dbg !1078

; <label>:29                                      ; preds = %24
  %30 = load i32* %i, align 4, !dbg !1079
  %31 = add nsw i32 %30, 1, !dbg !1079
  store i32 %31, i32* %i, align 4, !dbg !1079
  br label %20, !dbg !1079

; <label>:32                                      ; preds = %20
  %33 = load %struct.lua_State** %2, align 4, !dbg !1080
  %34 = load %struct.luaL_Stream** %p, align 4, !dbg !1080
  %35 = getelementptr inbounds %struct.luaL_Stream* %34, i32 0, i32 0, !dbg !1080
  %36 = load %struct._IO_FILE** %35, align 4, !dbg !1080
  %37 = call i32 @g_read(%struct.lua_State* %33, %struct._IO_FILE* %36, i32 2), !dbg !1080
  store i32 %37, i32* %n, align 4, !dbg !1080
  %38 = load %struct.lua_State** %2, align 4, !dbg !1081
  %39 = load i32* %n, align 4, !dbg !1081
  %40 = sub nsw i32 0, %39, !dbg !1081
  %41 = call i32 @lua_toboolean(%struct.lua_State* %38, i32 %40), !dbg !1081
  %42 = icmp ne i32 %41, 0, !dbg !1081
  br i1 %42, label %43, label %45, !dbg !1081

; <label>:43                                      ; preds = %32
  %44 = load i32* %n, align 4, !dbg !1083
  store i32 %44, i32* %1, !dbg !1083
  br label %66, !dbg !1083

; <label>:45                                      ; preds = %32
  %46 = load i32* %n, align 4, !dbg !1084
  %47 = icmp sgt i32 %46, 1, !dbg !1084
  br i1 %47, label %48, label %56, !dbg !1084

; <label>:48                                      ; preds = %45
  %49 = load %struct.lua_State** %2, align 4, !dbg !1087
  %50 = load %struct.lua_State** %2, align 4, !dbg !1089
  %51 = load i32* %n, align 4, !dbg !1089
  %52 = sub nsw i32 0, %51, !dbg !1089
  %53 = add nsw i32 %52, 1, !dbg !1089
  %54 = call i8* @lua_tolstring(%struct.lua_State* %50, i32 %53, i32* null), !dbg !1089
  %55 = call i32 (%struct.lua_State*, i8*, ...)* @luaL_error(%struct.lua_State* %49, i8* getelementptr inbounds ([3 x i8]* @.str38, i32 0, i32 0), i8* %54), !dbg !1087
  store i32 %55, i32* %1, !dbg !1087
  br label %66, !dbg !1087

; <label>:56                                      ; preds = %45
  %57 = load %struct.lua_State** %2, align 4, !dbg !1090
  %58 = call i32 @lua_toboolean(%struct.lua_State* %57, i32 -1001003), !dbg !1090
  %59 = icmp ne i32 %58, 0, !dbg !1090
  br i1 %59, label %60, label %65, !dbg !1090

; <label>:60                                      ; preds = %56
  %61 = load %struct.lua_State** %2, align 4, !dbg !1092
  call void @lua_settop(%struct.lua_State* %61, i32 0), !dbg !1092
  %62 = load %struct.lua_State** %2, align 4, !dbg !1094
  call void @lua_pushvalue(%struct.lua_State* %62, i32 -1001001), !dbg !1094
  %63 = load %struct.lua_State** %2, align 4, !dbg !1095
  %64 = call i32 @aux_close(%struct.lua_State* %63), !dbg !1095
  br label %65, !dbg !1096

; <label>:65                                      ; preds = %60, %56
  store i32 0, i32* %1, !dbg !1097
  br label %66, !dbg !1097

; <label>:66                                      ; preds = %65, %48, %43, %13
  %67 = load i32* %1, !dbg !1098
  ret i32 %67, !dbg !1098
}

declare i8* @lua_touserdata(%struct.lua_State*, i32) #2

declare i32 @lua_toboolean(%struct.lua_State*, i32) #2

declare i8* @lua_tolstring(%struct.lua_State*, i32, i32*) #2

declare i32 @fflush(%struct._IO_FILE*) #2

declare i32 @lua_getfield(%struct.lua_State*, i32, i8*) #2

; Function Attrs: nounwind
define internal i32 @io_flush(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !1099), !dbg !1100
  %2 = load %struct.lua_State** %1, align 4, !dbg !1101
  %3 = load %struct.lua_State** %1, align 4, !dbg !1102
  %4 = call %struct._IO_FILE* @getiofile(%struct.lua_State* %3, i8* getelementptr inbounds ([11 x i8]* @.str2, i32 0, i32 0)), !dbg !1102
  %5 = call i32 @fflush(%struct._IO_FILE* %4), !dbg !1103
  %6 = icmp eq i32 %5, 0, !dbg !1103
  %7 = zext i1 %6 to i32, !dbg !1103
  %8 = call i32 @luaL_fileresult(%struct.lua_State* %2, i32 %7, i8* null), !dbg !1101
  ret i32 %8, !dbg !1101
}

; Function Attrs: nounwind
define internal i32 @io_input(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !1104), !dbg !1105
  %2 = load %struct.lua_State** %1, align 4, !dbg !1106
  %3 = call i32 @g_iofile(%struct.lua_State* %2, i8* getelementptr inbounds ([10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str48, i32 0, i32 0)), !dbg !1106
  ret i32 %3, !dbg !1106
}

; Function Attrs: nounwind
define internal i32 @io_lines(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %toclose = alloca i32, align 4
  %filename = alloca i8*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !1107), !dbg !1108
  call void @llvm.dbg.declare(metadata !{i32* %toclose}, metadata !1109), !dbg !1110
  %2 = load %struct.lua_State** %1, align 4, !dbg !1111
  %3 = call i32 @lua_type(%struct.lua_State* %2, i32 1), !dbg !1111
  %4 = icmp eq i32 %3, -1, !dbg !1111
  br i1 %4, label %5, label %7, !dbg !1111

; <label>:5                                       ; preds = %0
  %6 = load %struct.lua_State** %1, align 4, !dbg !1113
  call void @lua_pushnil(%struct.lua_State* %6), !dbg !1113
  br label %7, !dbg !1113

; <label>:7                                       ; preds = %5, %0
  %8 = load %struct.lua_State** %1, align 4, !dbg !1115
  %9 = call i32 @lua_type(%struct.lua_State* %8, i32 1), !dbg !1115
  %10 = icmp eq i32 %9, 0, !dbg !1115
  br i1 %10, label %11, label %18, !dbg !1115

; <label>:11                                      ; preds = %7
  %12 = load %struct.lua_State** %1, align 4, !dbg !1117
  %13 = call i32 @lua_getfield(%struct.lua_State* %12, i32 -1001000, i8* getelementptr inbounds ([10 x i8]* @.str, i32 0, i32 0)), !dbg !1117
  %14 = load %struct.lua_State** %1, align 4, !dbg !1119
  call void @lua_copy(%struct.lua_State* %14, i32 -1, i32 1), !dbg !1119
  %15 = load %struct.lua_State** %1, align 4, !dbg !1119
  call void @lua_settop(%struct.lua_State* %15, i32 -2), !dbg !1119
  %16 = load %struct.lua_State** %1, align 4, !dbg !1120
  %17 = call %struct._IO_FILE* @tofile(%struct.lua_State* %16), !dbg !1120
  store i32 0, i32* %toclose, align 4, !dbg !1121
  br label %25, !dbg !1122

; <label>:18                                      ; preds = %7
  call void @llvm.dbg.declare(metadata !{i8** %filename}, metadata !1123), !dbg !1125
  %19 = load %struct.lua_State** %1, align 4, !dbg !1126
  %20 = call i8* @luaL_checklstring(%struct.lua_State* %19, i32 1, i32* null), !dbg !1126
  store i8* %20, i8** %filename, align 4, !dbg !1126
  %21 = load %struct.lua_State** %1, align 4, !dbg !1127
  %22 = load i8** %filename, align 4, !dbg !1127
  call void @opencheck(%struct.lua_State* %21, i8* %22, i8* getelementptr inbounds ([2 x i8]* @.str48, i32 0, i32 0)), !dbg !1127
  %23 = load %struct.lua_State** %1, align 4, !dbg !1128
  call void @lua_copy(%struct.lua_State* %23, i32 -1, i32 1), !dbg !1128
  %24 = load %struct.lua_State** %1, align 4, !dbg !1128
  call void @lua_settop(%struct.lua_State* %24, i32 -2), !dbg !1128
  store i32 1, i32* %toclose, align 4, !dbg !1129
  br label %25

; <label>:25                                      ; preds = %18, %11
  %26 = load %struct.lua_State** %1, align 4, !dbg !1130
  %27 = load i32* %toclose, align 4, !dbg !1130
  call void @aux_lines(%struct.lua_State* %26, i32 %27), !dbg !1130
  ret i32 1, !dbg !1131
}

; Function Attrs: nounwind
define internal i32 @io_open(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %filename = alloca i8*, align 4
  %mode = alloca i8*, align 4
  %p = alloca %struct.luaL_Stream*, align 4
  %md = alloca i8*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !1132), !dbg !1133
  call void @llvm.dbg.declare(metadata !{i8** %filename}, metadata !1134), !dbg !1135
  %2 = load %struct.lua_State** %1, align 4, !dbg !1136
  %3 = call i8* @luaL_checklstring(%struct.lua_State* %2, i32 1, i32* null), !dbg !1136
  store i8* %3, i8** %filename, align 4, !dbg !1136
  call void @llvm.dbg.declare(metadata !{i8** %mode}, metadata !1137), !dbg !1138
  %4 = load %struct.lua_State** %1, align 4, !dbg !1139
  %5 = call i8* @luaL_optlstring(%struct.lua_State* %4, i32 2, i8* getelementptr inbounds ([2 x i8]* @.str48, i32 0, i32 0), i32* null), !dbg !1139
  store i8* %5, i8** %mode, align 4, !dbg !1139
  call void @llvm.dbg.declare(metadata !{%struct.luaL_Stream** %p}, metadata !1140), !dbg !1141
  %6 = load %struct.lua_State** %1, align 4, !dbg !1142
  %7 = call %struct.luaL_Stream* @newfile(%struct.lua_State* %6), !dbg !1142
  store %struct.luaL_Stream* %7, %struct.luaL_Stream** %p, align 4, !dbg !1142
  call void @llvm.dbg.declare(metadata !{i8** %md}, metadata !1143), !dbg !1144
  %8 = load i8** %mode, align 4, !dbg !1145
  store i8* %8, i8** %md, align 4, !dbg !1145
  %9 = load i8** %md, align 4, !dbg !1146
  %10 = load i8* %9, align 1, !dbg !1146
  %11 = zext i8 %10 to i32, !dbg !1146
  %12 = icmp ne i32 %11, 0, !dbg !1146
  br i1 %12, label %13, label %34, !dbg !1146

; <label>:13                                      ; preds = %0
  %14 = load i8** %md, align 4, !dbg !1147
  %15 = getelementptr inbounds i8* %14, i32 1, !dbg !1147
  store i8* %15, i8** %md, align 4, !dbg !1147
  %16 = load i8* %14, align 1, !dbg !1147
  %17 = zext i8 %16 to i32, !dbg !1147
  %18 = call i8* @strchr(i8* getelementptr inbounds ([4 x i8]* @.str52, i32 0, i32 0), i32 %17) #6, !dbg !1147
  %19 = icmp ne i8* %18, null, !dbg !1147
  br i1 %19, label %20, label %34, !dbg !1147

; <label>:20                                      ; preds = %13
  %21 = load i8** %md, align 4, !dbg !1149
  %22 = load i8* %21, align 1, !dbg !1149
  %23 = zext i8 %22 to i32, !dbg !1149
  %24 = icmp ne i32 %23, 43, !dbg !1149
  br i1 %24, label %28, label %25, !dbg !1149

; <label>:25                                      ; preds = %20
  %26 = load i8** %md, align 4, !dbg !1151
  %27 = getelementptr inbounds i8* %26, i32 1, !dbg !1151
  store i8* %27, i8** %md, align 4, !dbg !1151
  br i1 true, label %28, label %34, !dbg !1151

; <label>:28                                      ; preds = %25, %20
  %29 = load i8** %md, align 4, !dbg !1153
  %30 = call i32 @strspn(i8* %29, i8* getelementptr inbounds ([2 x i8]* @.str53, i32 0, i32 0)) #6, !dbg !1153
  %31 = load i8** %md, align 4, !dbg !1153
  %32 = call i32 @strlen(i8* %31) #6, !dbg !1153
  %33 = icmp eq i32 %30, %32, !dbg !1153
  br i1 %33, label %38, label %34, !dbg !1153

; <label>:34                                      ; preds = %28, %25, %13, %0
  %35 = load %struct.lua_State** %1, align 4, !dbg !1156
  %36 = call i32 @luaL_argerror(%struct.lua_State* %35, i32 2, i8* getelementptr inbounds ([13 x i8]* @.str54, i32 0, i32 0)), !dbg !1156
  %37 = icmp ne i32 %36, 0, !dbg !1156
  br label %38, !dbg !1156

; <label>:38                                      ; preds = %34, %28
  %39 = phi i1 [ true, %28 ], [ %37, %34 ]
  %40 = zext i1 %39 to i32, !dbg !1161
  %41 = load i8** %filename, align 4, !dbg !1164
  %42 = load i8** %mode, align 4, !dbg !1164
  %43 = call %struct._IO_FILE* @fopen64(i8* %41, i8* %42), !dbg !1164
  %44 = load %struct.luaL_Stream** %p, align 4, !dbg !1164
  %45 = getelementptr inbounds %struct.luaL_Stream* %44, i32 0, i32 0, !dbg !1164
  store %struct._IO_FILE* %43, %struct._IO_FILE** %45, align 4, !dbg !1164
  %46 = load %struct.luaL_Stream** %p, align 4, !dbg !1165
  %47 = getelementptr inbounds %struct.luaL_Stream* %46, i32 0, i32 0, !dbg !1165
  %48 = load %struct._IO_FILE** %47, align 4, !dbg !1165
  %49 = icmp eq %struct._IO_FILE* %48, null, !dbg !1165
  br i1 %49, label %50, label %54, !dbg !1165

; <label>:50                                      ; preds = %38
  %51 = load %struct.lua_State** %1, align 4, !dbg !1166
  %52 = load i8** %filename, align 4, !dbg !1166
  %53 = call i32 @luaL_fileresult(%struct.lua_State* %51, i32 0, i8* %52), !dbg !1166
  br label %55, !dbg !1166

; <label>:54                                      ; preds = %38
  br label %55, !dbg !1168

; <label>:55                                      ; preds = %54, %50
  %56 = phi i32 [ %53, %50 ], [ 1, %54 ], !dbg !1170
  ret i32 %56, !dbg !1171
}

; Function Attrs: nounwind
define internal i32 @io_output(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !1174), !dbg !1175
  %2 = load %struct.lua_State** %1, align 4, !dbg !1176
  %3 = call i32 @g_iofile(%struct.lua_State* %2, i8* getelementptr inbounds ([11 x i8]* @.str2, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str50, i32 0, i32 0)), !dbg !1176
  ret i32 %3, !dbg !1176
}

; Function Attrs: nounwind
define internal i32 @io_popen(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %filename = alloca i8*, align 4
  %mode = alloca i8*, align 4
  %p = alloca %struct.luaL_Stream*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !1177), !dbg !1178
  call void @llvm.dbg.declare(metadata !{i8** %filename}, metadata !1179), !dbg !1180
  %2 = load %struct.lua_State** %1, align 4, !dbg !1181
  %3 = call i8* @luaL_checklstring(%struct.lua_State* %2, i32 1, i32* null), !dbg !1181
  store i8* %3, i8** %filename, align 4, !dbg !1181
  call void @llvm.dbg.declare(metadata !{i8** %mode}, metadata !1182), !dbg !1183
  %4 = load %struct.lua_State** %1, align 4, !dbg !1184
  %5 = call i8* @luaL_optlstring(%struct.lua_State* %4, i32 2, i8* getelementptr inbounds ([2 x i8]* @.str48, i32 0, i32 0), i32* null), !dbg !1184
  store i8* %5, i8** %mode, align 4, !dbg !1184
  call void @llvm.dbg.declare(metadata !{%struct.luaL_Stream** %p}, metadata !1185), !dbg !1186
  %6 = load %struct.lua_State** %1, align 4, !dbg !1187
  %7 = call %struct.luaL_Stream* @newprefile(%struct.lua_State* %6), !dbg !1187
  store %struct.luaL_Stream* %7, %struct.luaL_Stream** %p, align 4, !dbg !1187
  %8 = load i8** %filename, align 4, !dbg !1188
  %9 = load i8** %mode, align 4, !dbg !1188
  %10 = load %struct.lua_State** %1, align 4, !dbg !1189
  %11 = call i32 (%struct.lua_State*, i8*, ...)* @luaL_error(%struct.lua_State* %10, i8* getelementptr inbounds ([22 x i8]* @.str49, i32 0, i32 0)), !dbg !1189
  %12 = load %struct.luaL_Stream** %p, align 4, !dbg !1189
  %13 = getelementptr inbounds %struct.luaL_Stream* %12, i32 0, i32 0, !dbg !1189
  store %struct._IO_FILE* null, %struct._IO_FILE** %13, align 4, !dbg !1189
  %14 = load %struct.luaL_Stream** %p, align 4, !dbg !1190
  %15 = getelementptr inbounds %struct.luaL_Stream* %14, i32 0, i32 1, !dbg !1190
  store i32 (%struct.lua_State*)* @io_pclose, i32 (%struct.lua_State*)** %15, align 4, !dbg !1190
  %16 = load %struct.luaL_Stream** %p, align 4, !dbg !1191
  %17 = getelementptr inbounds %struct.luaL_Stream* %16, i32 0, i32 0, !dbg !1191
  %18 = load %struct._IO_FILE** %17, align 4, !dbg !1191
  %19 = icmp eq %struct._IO_FILE* %18, null, !dbg !1191
  br i1 %19, label %20, label %24, !dbg !1191

; <label>:20                                      ; preds = %0
  %21 = load %struct.lua_State** %1, align 4, !dbg !1192
  %22 = load i8** %filename, align 4, !dbg !1192
  %23 = call i32 @luaL_fileresult(%struct.lua_State* %21, i32 0, i8* %22), !dbg !1192
  br label %25, !dbg !1192

; <label>:24                                      ; preds = %0
  br label %25, !dbg !1194

; <label>:25                                      ; preds = %24, %20
  %26 = phi i32 [ %23, %20 ], [ 1, %24 ], !dbg !1196
  ret i32 %26, !dbg !1197
}

; Function Attrs: nounwind
define internal i32 @io_read(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !1200), !dbg !1201
  %2 = load %struct.lua_State** %1, align 4, !dbg !1202
  %3 = load %struct.lua_State** %1, align 4, !dbg !1203
  %4 = call %struct._IO_FILE* @getiofile(%struct.lua_State* %3, i8* getelementptr inbounds ([10 x i8]* @.str, i32 0, i32 0)), !dbg !1203
  %5 = call i32 @g_read(%struct.lua_State* %2, %struct._IO_FILE* %4, i32 1), !dbg !1202
  ret i32 %5, !dbg !1202
}

; Function Attrs: nounwind
define internal i32 @io_tmpfile(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %p = alloca %struct.luaL_Stream*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !1204), !dbg !1205
  call void @llvm.dbg.declare(metadata !{%struct.luaL_Stream** %p}, metadata !1206), !dbg !1207
  %2 = load %struct.lua_State** %1, align 4, !dbg !1208
  %3 = call %struct.luaL_Stream* @newfile(%struct.lua_State* %2), !dbg !1208
  store %struct.luaL_Stream* %3, %struct.luaL_Stream** %p, align 4, !dbg !1208
  %4 = call %struct._IO_FILE* @tmpfile64(), !dbg !1209
  %5 = load %struct.luaL_Stream** %p, align 4, !dbg !1209
  %6 = getelementptr inbounds %struct.luaL_Stream* %5, i32 0, i32 0, !dbg !1209
  store %struct._IO_FILE* %4, %struct._IO_FILE** %6, align 4, !dbg !1209
  %7 = load %struct.luaL_Stream** %p, align 4, !dbg !1210
  %8 = getelementptr inbounds %struct.luaL_Stream* %7, i32 0, i32 0, !dbg !1210
  %9 = load %struct._IO_FILE** %8, align 4, !dbg !1210
  %10 = icmp eq %struct._IO_FILE* %9, null, !dbg !1210
  br i1 %10, label %11, label %14, !dbg !1210

; <label>:11                                      ; preds = %0
  %12 = load %struct.lua_State** %1, align 4, !dbg !1211
  %13 = call i32 @luaL_fileresult(%struct.lua_State* %12, i32 0, i8* null), !dbg !1211
  br label %15, !dbg !1211

; <label>:14                                      ; preds = %0
  br label %15, !dbg !1213

; <label>:15                                      ; preds = %14, %11
  %16 = phi i32 [ %13, %11 ], [ 1, %14 ], !dbg !1215
  ret i32 %16, !dbg !1216
}

; Function Attrs: nounwind
define internal i32 @io_type(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %p = alloca %struct.luaL_Stream*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !1219), !dbg !1220
  call void @llvm.dbg.declare(metadata !{%struct.luaL_Stream** %p}, metadata !1221), !dbg !1222
  %2 = load %struct.lua_State** %1, align 4, !dbg !1223
  call void @luaL_checkany(%struct.lua_State* %2, i32 1), !dbg !1223
  %3 = load %struct.lua_State** %1, align 4, !dbg !1224
  %4 = call i8* @luaL_testudata(%struct.lua_State* %3, i32 1, i8* getelementptr inbounds ([6 x i8]* @.str5, i32 0, i32 0)), !dbg !1224
  %5 = bitcast i8* %4 to %struct.luaL_Stream*, !dbg !1224
  store %struct.luaL_Stream* %5, %struct.luaL_Stream** %p, align 4, !dbg !1224
  %6 = load %struct.luaL_Stream** %p, align 4, !dbg !1225
  %7 = icmp eq %struct.luaL_Stream* %6, null, !dbg !1225
  br i1 %7, label %8, label %10, !dbg !1225

; <label>:8                                       ; preds = %0
  %9 = load %struct.lua_State** %1, align 4, !dbg !1227
  call void @lua_pushnil(%struct.lua_State* %9), !dbg !1227
  br label %22, !dbg !1227

; <label>:10                                      ; preds = %0
  %11 = load %struct.luaL_Stream** %p, align 4, !dbg !1228
  %12 = getelementptr inbounds %struct.luaL_Stream* %11, i32 0, i32 1, !dbg !1228
  %13 = load i32 (%struct.lua_State*)** %12, align 4, !dbg !1228
  %14 = icmp eq i32 (%struct.lua_State*)* %13, null, !dbg !1228
  br i1 %14, label %15, label %18, !dbg !1228

; <label>:15                                      ; preds = %10
  %16 = load %struct.lua_State** %1, align 4, !dbg !1230
  %17 = call i8* @lua_pushstring(%struct.lua_State* %16, i8* getelementptr inbounds ([12 x i8]* @.str46, i32 0, i32 0)), !dbg !1230
  br label %21, !dbg !1230

; <label>:18                                      ; preds = %10
  %19 = load %struct.lua_State** %1, align 4, !dbg !1231
  %20 = call i8* @lua_pushstring(%struct.lua_State* %19, i8* getelementptr inbounds ([5 x i8]* @.str47, i32 0, i32 0)), !dbg !1231
  br label %21

; <label>:21                                      ; preds = %18, %15
  br label %22

; <label>:22                                      ; preds = %21, %8
  ret i32 1, !dbg !1232
}

; Function Attrs: nounwind
define internal i32 @io_write(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !1233), !dbg !1234
  %2 = load %struct.lua_State** %1, align 4, !dbg !1235
  %3 = load %struct.lua_State** %1, align 4, !dbg !1236
  %4 = call %struct._IO_FILE* @getiofile(%struct.lua_State* %3, i8* getelementptr inbounds ([11 x i8]* @.str2, i32 0, i32 0)), !dbg !1236
  %5 = call i32 @g_write(%struct.lua_State* %2, %struct._IO_FILE* %4, i32 1), !dbg !1235
  ret i32 %5, !dbg !1235
}

; Function Attrs: nounwind
define internal %struct._IO_FILE* @getiofile(%struct.lua_State* %L, i8* %findex) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca i8*, align 4
  %p = alloca %struct.luaL_Stream*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !1237), !dbg !1238
  store i8* %findex, i8** %2, align 4
  call void @llvm.dbg.declare(metadata !{i8** %2}, metadata !1239), !dbg !1240
  call void @llvm.dbg.declare(metadata !{%struct.luaL_Stream** %p}, metadata !1241), !dbg !1242
  %3 = load %struct.lua_State** %1, align 4, !dbg !1243
  %4 = load i8** %2, align 4, !dbg !1243
  %5 = call i32 @lua_getfield(%struct.lua_State* %3, i32 -1001000, i8* %4), !dbg !1243
  %6 = load %struct.lua_State** %1, align 4, !dbg !1244
  %7 = call i8* @lua_touserdata(%struct.lua_State* %6, i32 -1), !dbg !1244
  %8 = bitcast i8* %7 to %struct.luaL_Stream*, !dbg !1244
  store %struct.luaL_Stream* %8, %struct.luaL_Stream** %p, align 4, !dbg !1244
  %9 = load %struct.luaL_Stream** %p, align 4, !dbg !1245
  %10 = getelementptr inbounds %struct.luaL_Stream* %9, i32 0, i32 1, !dbg !1245
  %11 = load i32 (%struct.lua_State*)** %10, align 4, !dbg !1245
  %12 = icmp eq i32 (%struct.lua_State*)* %11, null, !dbg !1245
  br i1 %12, label %13, label %18, !dbg !1245

; <label>:13                                      ; preds = %0
  %14 = load %struct.lua_State** %1, align 4, !dbg !1247
  %15 = load i8** %2, align 4, !dbg !1247
  %16 = getelementptr inbounds i8* %15, i32 4, !dbg !1247
  %17 = call i32 (%struct.lua_State*, i8*, ...)* @luaL_error(%struct.lua_State* %14, i8* getelementptr inbounds ([27 x i8]* @.str45, i32 0, i32 0), i8* %16), !dbg !1247
  br label %18, !dbg !1247

; <label>:18                                      ; preds = %13, %0
  %19 = load %struct.luaL_Stream** %p, align 4, !dbg !1248
  %20 = getelementptr inbounds %struct.luaL_Stream* %19, i32 0, i32 0, !dbg !1248
  %21 = load %struct._IO_FILE** %20, align 4, !dbg !1248
  ret %struct._IO_FILE* %21, !dbg !1248
}

declare void @luaL_checkany(%struct.lua_State*, i32) #2

declare i8* @luaL_testudata(%struct.lua_State*, i32, i8*) #2

; Function Attrs: nounwind
define internal %struct.luaL_Stream* @newfile(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %p = alloca %struct.luaL_Stream*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !1249), !dbg !1250
  call void @llvm.dbg.declare(metadata !{%struct.luaL_Stream** %p}, metadata !1251), !dbg !1252
  %2 = load %struct.lua_State** %1, align 4, !dbg !1253
  %3 = call %struct.luaL_Stream* @newprefile(%struct.lua_State* %2), !dbg !1253
  store %struct.luaL_Stream* %3, %struct.luaL_Stream** %p, align 4, !dbg !1253
  %4 = load %struct.luaL_Stream** %p, align 4, !dbg !1254
  %5 = getelementptr inbounds %struct.luaL_Stream* %4, i32 0, i32 0, !dbg !1254
  store %struct._IO_FILE* null, %struct._IO_FILE** %5, align 4, !dbg !1254
  %6 = load %struct.luaL_Stream** %p, align 4, !dbg !1255
  %7 = getelementptr inbounds %struct.luaL_Stream* %6, i32 0, i32 1, !dbg !1255
  store i32 (%struct.lua_State*)* @io_fclose, i32 (%struct.lua_State*)** %7, align 4, !dbg !1255
  %8 = load %struct.luaL_Stream** %p, align 4, !dbg !1256
  ret %struct.luaL_Stream* %8, !dbg !1256
}

declare %struct._IO_FILE* @tmpfile64() #2

; Function Attrs: nounwind
define internal i32 @io_fclose(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %p = alloca %struct.luaL_Stream*, align 4
  %res = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !1257), !dbg !1258
  call void @llvm.dbg.declare(metadata !{%struct.luaL_Stream** %p}, metadata !1259), !dbg !1260
  %2 = load %struct.lua_State** %1, align 4, !dbg !1261
  %3 = call i8* @luaL_checkudata(%struct.lua_State* %2, i32 1, i8* getelementptr inbounds ([6 x i8]* @.str5, i32 0, i32 0)), !dbg !1261
  %4 = bitcast i8* %3 to %struct.luaL_Stream*, !dbg !1261
  store %struct.luaL_Stream* %4, %struct.luaL_Stream** %p, align 4, !dbg !1261
  call void @llvm.dbg.declare(metadata !{i32* %res}, metadata !1262), !dbg !1263
  %5 = load %struct.luaL_Stream** %p, align 4, !dbg !1264
  %6 = getelementptr inbounds %struct.luaL_Stream* %5, i32 0, i32 0, !dbg !1264
  %7 = load %struct._IO_FILE** %6, align 4, !dbg !1264
  %8 = call i32 @fclose(%struct._IO_FILE* %7), !dbg !1264
  store i32 %8, i32* %res, align 4, !dbg !1264
  %9 = load %struct.lua_State** %1, align 4, !dbg !1265
  %10 = load i32* %res, align 4, !dbg !1265
  %11 = icmp eq i32 %10, 0, !dbg !1265
  %12 = zext i1 %11 to i32, !dbg !1265
  %13 = call i32 @luaL_fileresult(%struct.lua_State* %9, i32 %12, i8* null), !dbg !1265
  ret i32 %13, !dbg !1265
}

declare i32 @fclose(%struct._IO_FILE*) #2

declare i8* @luaL_optlstring(%struct.lua_State*, i32, i8*, i32*) #2

; Function Attrs: nounwind
define internal i32 @io_pclose(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %p = alloca %struct.luaL_Stream*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !1266), !dbg !1267
  call void @llvm.dbg.declare(metadata !{%struct.luaL_Stream** %p}, metadata !1268), !dbg !1269
  %2 = load %struct.lua_State** %1, align 4, !dbg !1270
  %3 = call i8* @luaL_checkudata(%struct.lua_State* %2, i32 1, i8* getelementptr inbounds ([6 x i8]* @.str5, i32 0, i32 0)), !dbg !1270
  %4 = bitcast i8* %3 to %struct.luaL_Stream*, !dbg !1270
  store %struct.luaL_Stream* %4, %struct.luaL_Stream** %p, align 4, !dbg !1270
  %5 = load %struct.lua_State** %1, align 4, !dbg !1271
  %6 = load %struct.lua_State** %1, align 4, !dbg !1271
  %7 = load %struct.luaL_Stream** %p, align 4, !dbg !1271
  %8 = getelementptr inbounds %struct.luaL_Stream* %7, i32 0, i32 0, !dbg !1271
  %9 = load %struct._IO_FILE** %8, align 4, !dbg !1271
  %10 = call i32 @luaL_execresult(%struct.lua_State* %5, i32 -1), !dbg !1271
  ret i32 %10, !dbg !1271
}

declare i32 @luaL_execresult(%struct.lua_State*, i32) #2

; Function Attrs: nounwind
define internal i32 @g_iofile(%struct.lua_State* %L, i8* %f, i8* %mode) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca i8*, align 4
  %3 = alloca i8*, align 4
  %filename = alloca i8*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !1272), !dbg !1273
  store i8* %f, i8** %2, align 4
  call void @llvm.dbg.declare(metadata !{i8** %2}, metadata !1274), !dbg !1275
  store i8* %mode, i8** %3, align 4
  call void @llvm.dbg.declare(metadata !{i8** %3}, metadata !1276), !dbg !1277
  %4 = load %struct.lua_State** %1, align 4, !dbg !1278
  %5 = call i32 @lua_type(%struct.lua_State* %4, i32 1), !dbg !1278
  %6 = icmp sle i32 %5, 0, !dbg !1278
  br i1 %6, label %23, label %7, !dbg !1278

; <label>:7                                       ; preds = %0
  call void @llvm.dbg.declare(metadata !{i8** %filename}, metadata !1280), !dbg !1282
  %8 = load %struct.lua_State** %1, align 4, !dbg !1283
  %9 = call i8* @lua_tolstring(%struct.lua_State* %8, i32 1, i32* null), !dbg !1283
  store i8* %9, i8** %filename, align 4, !dbg !1283
  %10 = load i8** %filename, align 4, !dbg !1284
  %11 = icmp ne i8* %10, null, !dbg !1284
  br i1 %11, label %12, label %16, !dbg !1284

; <label>:12                                      ; preds = %7
  %13 = load %struct.lua_State** %1, align 4, !dbg !1286
  %14 = load i8** %filename, align 4, !dbg !1286
  %15 = load i8** %3, align 4, !dbg !1286
  call void @opencheck(%struct.lua_State* %13, i8* %14, i8* %15), !dbg !1286
  br label %20, !dbg !1286

; <label>:16                                      ; preds = %7
  %17 = load %struct.lua_State** %1, align 4, !dbg !1287
  %18 = call %struct._IO_FILE* @tofile(%struct.lua_State* %17), !dbg !1287
  %19 = load %struct.lua_State** %1, align 4, !dbg !1289
  call void @lua_pushvalue(%struct.lua_State* %19, i32 1), !dbg !1289
  br label %20

; <label>:20                                      ; preds = %16, %12
  %21 = load %struct.lua_State** %1, align 4, !dbg !1290
  %22 = load i8** %2, align 4, !dbg !1290
  call void @lua_setfield(%struct.lua_State* %21, i32 -1001000, i8* %22), !dbg !1290
  br label %23, !dbg !1291

; <label>:23                                      ; preds = %20, %0
  %24 = load %struct.lua_State** %1, align 4, !dbg !1292
  %25 = load i8** %2, align 4, !dbg !1292
  %26 = call i32 @lua_getfield(%struct.lua_State* %24, i32 -1001000, i8* %25), !dbg !1292
  ret i32 1, !dbg !1293
}

; Function Attrs: nounwind
define internal void @opencheck(%struct.lua_State* %L, i8* %fname, i8* %mode) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca i8*, align 4
  %3 = alloca i8*, align 4
  %p = alloca %struct.luaL_Stream*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !1294), !dbg !1295
  store i8* %fname, i8** %2, align 4
  call void @llvm.dbg.declare(metadata !{i8** %2}, metadata !1296), !dbg !1297
  store i8* %mode, i8** %3, align 4
  call void @llvm.dbg.declare(metadata !{i8** %3}, metadata !1298), !dbg !1299
  call void @llvm.dbg.declare(metadata !{%struct.luaL_Stream** %p}, metadata !1300), !dbg !1301
  %4 = load %struct.lua_State** %1, align 4, !dbg !1302
  %5 = call %struct.luaL_Stream* @newfile(%struct.lua_State* %4), !dbg !1302
  store %struct.luaL_Stream* %5, %struct.luaL_Stream** %p, align 4, !dbg !1302
  %6 = load i8** %2, align 4, !dbg !1303
  %7 = load i8** %3, align 4, !dbg !1303
  %8 = call %struct._IO_FILE* @fopen64(i8* %6, i8* %7), !dbg !1303
  %9 = load %struct.luaL_Stream** %p, align 4, !dbg !1303
  %10 = getelementptr inbounds %struct.luaL_Stream* %9, i32 0, i32 0, !dbg !1303
  store %struct._IO_FILE* %8, %struct._IO_FILE** %10, align 4, !dbg !1303
  %11 = load %struct.luaL_Stream** %p, align 4, !dbg !1304
  %12 = getelementptr inbounds %struct.luaL_Stream* %11, i32 0, i32 0, !dbg !1304
  %13 = load %struct._IO_FILE** %12, align 4, !dbg !1304
  %14 = icmp eq %struct._IO_FILE* %13, null, !dbg !1304
  br i1 %14, label %15, label %22, !dbg !1304

; <label>:15                                      ; preds = %0
  %16 = load %struct.lua_State** %1, align 4, !dbg !1306
  %17 = load i8** %2, align 4, !dbg !1306
  %18 = call i32* @__errno_location() #1, !dbg !1307
  %19 = load i32* %18, align 4, !dbg !1307
  %20 = call i8* @strerror(i32 %19) #5, !dbg !1308
  %21 = call i32 (%struct.lua_State*, i8*, ...)* @luaL_error(%struct.lua_State* %16, i8* getelementptr inbounds ([27 x i8]* @.str51, i32 0, i32 0), i8* %17, i8* %20), !dbg !1306
  br label %22, !dbg !1306

; <label>:22                                      ; preds = %15, %0
  ret void, !dbg !1309
}

declare %struct._IO_FILE* @fopen64(i8*, i8*) #2

; Function Attrs: nounwind
declare i8* @strerror(i32) #0

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #3

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #4

; Function Attrs: nounwind readonly
declare i32 @strspn(i8*, i8*) #4

; Function Attrs: nounwind readonly
declare i32 @strlen(i8*) #4

declare void @lua_copy(%struct.lua_State*, i32, i32) #2

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!xidane.fname = !{!217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434}
!xidane.function_declaration_type = !{!217, !435, !219, !436, !221, !437, !223, !438, !225, !439, !227, !440, !229, !441, !231, !435, !233, !442, !235, !443, !237, !444, !239, !439, !241, !445, !243, !446, !245, !447, !247, !448, !249, !442, !251, !435, !253, !435, !255, !435, !257, !435, !259, !435, !261, !435, !263, !435, !265, !435, !267, !435, !269, !445, !271, !435, !273, !449, !275, !450, !277, !435, !279, !451, !281, !451, !283, !452, !285, !453, !287, !454, !289, !455, !291, !456, !293, !457, !295, !448, !297, !458, !299, !459, !301, !460, !303, !457, !305, !461, !307, !462, !309, !463, !311, !450, !313, !464, !315, !450, !317, !443, !319, !465, !321, !466, !323, !467, !325, !466, !327, !468, !329, !469, !331, !470, !333, !471, !335, !472, !337, !473, !339, !474, !341, !475, !343, !476, !345, !477, !347, !478, !349, !479, !351, !480, !353, !481, !355, !482, !357, !442, !359, !442, !361, !437, !363, !483, !365, !435, !367, !484, !369, !451, !371, !455, !373, !469, !375, !457, !377, !435, !379, !435, !381, !435, !383, !435, !385, !435, !387, !435, !389, !435, !391, !435, !393, !435, !395, !435, !397, !485, !399, !442, !401, !444, !403, !441, !405, !486, !407, !435, !409, !469, !411, !487, !413, !435, !415, !451, !417, !488, !419, !489, !421, !490, !423, !491, !425, !492, !427, !493, !429, !494, !431, !495, !433, !437}
!xidane.function_declaration_filename = !{!217, !496, !219, !497, !221, !498, !223, !497, !225, !499, !227, !499, !229, !499, !231, !499, !233, !498, !235, !498, !237, !497, !239, !498, !241, !498, !243, !498, !245, !497, !247, !497, !249, !498, !251, !499, !253, !499, !255, !499, !257, !499, !259, !499, !261, !499, !263, !499, !265, !499, !267, !499, !269, !498, !271, !499, !273, !499, !275, !499, !277, !498, !279, !498, !281, !498, !283, !500, !285, !498, !287, !498, !289, !497, !291, !500, !293, !497, !295, !497, !297, !497, !299, !497, !301, !500, !303, !497, !305, !500, !307, !498, !309, !500, !311, !499, !313, !500, !315, !499, !317, !497, !319, !497, !321, !499, !323, !499, !325, !499, !327, !499, !329, !500, !331, !497, !333, !497, !335, !500, !337, !497, !339, !501, !341, !502, !343, !503, !345, !499, !347, !499, !349, !500, !351, !498, !353, !499, !355, !498, !357, !499, !359, !498, !361, !498, !363, !498, !365, !499, !367, !498, !369, !498, !371, !498, !373, !500, !375, !498, !377, !499, !379, !499, !381, !499, !383, !499, !385, !499, !387, !499, !389, !499, !391, !499, !393, !499, !395, !499, !397, !499, !399, !497, !401, !497, !403, !499, !405, !500, !407, !499, !409, !500, !411, !497, !413, !499, !415, !497, !417, !499, !419, !499, !421, !500, !423, !504, !425, !505, !427, !504, !429, !504, !431, !504, !433, !498}
!xidane.ExternC = !{!217, !219, !221, !223, !233, !235, !237, !239, !241, !243, !245, !247, !249, !269, !277, !279, !281, !283, !285, !287, !289, !291, !293, !295, !297, !299, !301, !303, !305, !307, !309, !313, !317, !319, !329, !331, !333, !335, !337, !339, !341, !343, !349, !351, !355, !359, !361, !363, !367, !369, !371, !373, !375, !399, !401, !405, !409, !411, !415, !421, !423, !425, !427, !429, !431, !433}
!llvm.module.flags = !{!506, !507, !508, !509}
!llvm.ident = !{!510}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.0 (tags/RELEASE_350/final)", i1 false, metadata !"", i32 0, metadata !2, metadata !18, metadata !19, metadata !190, metadata !18, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src\liolib.c] [DW_LANG_C99]
!1 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src\5Cliolib.c", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
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
!19 = metadata !{metadata !20, metadata !30, metadata !99, metadata !100, metadata !113, metadata !116, metadata !117, metadata !118, metadata !119, metadata !120, metadata !123, metadata !126, metadata !127, metadata !128, metadata !129, metadata !130, metadata !133, metadata !136, metadata !150, metadata !153, metadata !156, metadata !159, metadata !160, metadata !161, metadata !162, metadata !165, metadata !166, metadata !167, metadata !168, metadata !169, metadata !172, metadata !173, metadata !174, metadata !175, metadata !176, metadata !177, metadata !178, metadata !179, metadata !180, metadata !183, metadata !186, metadata !187, metadata !188, metadata !189}
!20 = metadata !{i32 786478, metadata !21, metadata !22, metadata !"luaopen_io", metadata !"luaopen_io", metadata !"", i32 759, metadata !23, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @luaopen_io, null, null, metadata !18, i32 759} ; [ DW_TAG_subprogram ] [line 759] [def] [luaopen_io]
!21 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/liolib.c", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!22 = metadata !{i32 786473, metadata !21}        ; [ DW_TAG_file_type ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/liolib.c]
!23 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !24, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!24 = metadata !{metadata !25, metadata !26}
!25 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!26 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !27} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from lua_State]
!27 = metadata !{i32 786454, metadata !28, null, metadata !"lua_State", i32 56, i64 0, i64 0, i64 0, i32 0, metadata !29} ; [ DW_TAG_typedef ] [lua_State] [line 56, size 0, align 0, offset 0] [from lua_State]
!28 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lua.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!29 = metadata !{i32 786451, metadata !28, null, metadata !"lua_State", i32 56, i64 0, i64 0, i32 0, i32 4, null, null, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [lua_State] [line 56, size 0, align 0, offset 0] [decl] [from ]
!30 = metadata !{i32 786478, metadata !21, metadata !22, metadata !"createstdfile", metadata !"createstdfile", metadata !"", i32 746, metadata !31, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.lua_State*, %struct._IO_FILE*, i8*, i8*)* @createstdfile, null, null, metadata !18, i32 747} ; [ DW_TAG_subprogram ] [line 746] [local] [def] [scope 747] [createstdfile]
!31 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !32, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!32 = metadata !{null, metadata !26, metadata !33, metadata !97, metadata !97}
!33 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !34} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from FILE]
!34 = metadata !{i32 786454, metadata !35, null, metadata !"FILE", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !36} ; [ DW_TAG_typedef ] [FILE] [line 48, size 0, align 0, offset 0] [from _IO_FILE]
!35 = metadata !{metadata !"D:/Xilinx/SDx/2016.3/SDK/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include\5Cstdio.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!36 = metadata !{i32 786451, metadata !37, null, metadata !"_IO_FILE", i32 245, i64 1216, i64 64, i32 0, i32 0, null, metadata !38, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [_IO_FILE] [line 245, size 1216, align 64, offset 0] [def] [from ]
!37 = metadata !{metadata !"D:/Xilinx/SDx/2016.3/SDK/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include\5Clibio.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!38 = metadata !{metadata !39, metadata !40, metadata !43, metadata !44, metadata !45, metadata !46, metadata !47, metadata !48, metadata !49, metadata !50, metadata !51, metadata !52, metadata !53, metadata !61, metadata !62, metadata !63, metadata !64, metadata !68, metadata !70, metadata !72, metadata !76, metadata !79, metadata !83, metadata !85, metadata !86, metadata !87, metadata !88, metadata !92, metadata !93}
!39 = metadata !{i32 786445, metadata !37, metadata !36, metadata !"_flags", i32 246, i64 32, i64 32, i64 0, i32 0, metadata !25} ; [ DW_TAG_member ] [_flags] [line 246, size 32, align 32, offset 0] [from int]
!40 = metadata !{i32 786445, metadata !37, metadata !36, metadata !"_IO_read_ptr", i32 251, i64 32, i64 32, i64 32, i32 0, metadata !41} ; [ DW_TAG_member ] [_IO_read_ptr] [line 251, size 32, align 32, offset 32] [from ]
!41 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !42} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from char]
!42 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!43 = metadata !{i32 786445, metadata !37, metadata !36, metadata !"_IO_read_end", i32 252, i64 32, i64 32, i64 64, i32 0, metadata !41} ; [ DW_TAG_member ] [_IO_read_end] [line 252, size 32, align 32, offset 64] [from ]
!44 = metadata !{i32 786445, metadata !37, metadata !36, metadata !"_IO_read_base", i32 253, i64 32, i64 32, i64 96, i32 0, metadata !41} ; [ DW_TAG_member ] [_IO_read_base] [line 253, size 32, align 32, offset 96] [from ]
!45 = metadata !{i32 786445, metadata !37, metadata !36, metadata !"_IO_write_base", i32 254, i64 32, i64 32, i64 128, i32 0, metadata !41} ; [ DW_TAG_member ] [_IO_write_base] [line 254, size 32, align 32, offset 128] [from ]
!46 = metadata !{i32 786445, metadata !37, metadata !36, metadata !"_IO_write_ptr", i32 255, i64 32, i64 32, i64 160, i32 0, metadata !41} ; [ DW_TAG_member ] [_IO_write_ptr] [line 255, size 32, align 32, offset 160] [from ]
!47 = metadata !{i32 786445, metadata !37, metadata !36, metadata !"_IO_write_end", i32 256, i64 32, i64 32, i64 192, i32 0, metadata !41} ; [ DW_TAG_member ] [_IO_write_end] [line 256, size 32, align 32, offset 192] [from ]
!48 = metadata !{i32 786445, metadata !37, metadata !36, metadata !"_IO_buf_base", i32 257, i64 32, i64 32, i64 224, i32 0, metadata !41} ; [ DW_TAG_member ] [_IO_buf_base] [line 257, size 32, align 32, offset 224] [from ]
!49 = metadata !{i32 786445, metadata !37, metadata !36, metadata !"_IO_buf_end", i32 258, i64 32, i64 32, i64 256, i32 0, metadata !41} ; [ DW_TAG_member ] [_IO_buf_end] [line 258, size 32, align 32, offset 256] [from ]
!50 = metadata !{i32 786445, metadata !37, metadata !36, metadata !"_IO_save_base", i32 260, i64 32, i64 32, i64 288, i32 0, metadata !41} ; [ DW_TAG_member ] [_IO_save_base] [line 260, size 32, align 32, offset 288] [from ]
!51 = metadata !{i32 786445, metadata !37, metadata !36, metadata !"_IO_backup_base", i32 261, i64 32, i64 32, i64 320, i32 0, metadata !41} ; [ DW_TAG_member ] [_IO_backup_base] [line 261, size 32, align 32, offset 320] [from ]
!52 = metadata !{i32 786445, metadata !37, metadata !36, metadata !"_IO_save_end", i32 262, i64 32, i64 32, i64 352, i32 0, metadata !41} ; [ DW_TAG_member ] [_IO_save_end] [line 262, size 32, align 32, offset 352] [from ]
!53 = metadata !{i32 786445, metadata !37, metadata !36, metadata !"_markers", i32 264, i64 32, i64 32, i64 384, i32 0, metadata !54} ; [ DW_TAG_member ] [_markers] [line 264, size 32, align 32, offset 384] [from ]
!54 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !55} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from _IO_marker]
!55 = metadata !{i32 786451, metadata !37, null, metadata !"_IO_marker", i32 160, i64 96, i64 32, i32 0, i32 0, null, metadata !56, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [_IO_marker] [line 160, size 96, align 32, offset 0] [def] [from ]
!56 = metadata !{metadata !57, metadata !58, metadata !60}
!57 = metadata !{i32 786445, metadata !37, metadata !55, metadata !"_next", i32 161, i64 32, i64 32, i64 0, i32 0, metadata !54} ; [ DW_TAG_member ] [_next] [line 161, size 32, align 32, offset 0] [from ]
!58 = metadata !{i32 786445, metadata !37, metadata !55, metadata !"_sbuf", i32 162, i64 32, i64 32, i64 32, i32 0, metadata !59} ; [ DW_TAG_member ] [_sbuf] [line 162, size 32, align 32, offset 32] [from ]
!59 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !36} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from _IO_FILE]
!60 = metadata !{i32 786445, metadata !37, metadata !55, metadata !"_pos", i32 166, i64 32, i64 32, i64 64, i32 0, metadata !25} ; [ DW_TAG_member ] [_pos] [line 166, size 32, align 32, offset 64] [from int]
!61 = metadata !{i32 786445, metadata !37, metadata !36, metadata !"_chain", i32 266, i64 32, i64 32, i64 416, i32 0, metadata !59} ; [ DW_TAG_member ] [_chain] [line 266, size 32, align 32, offset 416] [from ]
!62 = metadata !{i32 786445, metadata !37, metadata !36, metadata !"_fileno", i32 268, i64 32, i64 32, i64 448, i32 0, metadata !25} ; [ DW_TAG_member ] [_fileno] [line 268, size 32, align 32, offset 448] [from int]
!63 = metadata !{i32 786445, metadata !37, metadata !36, metadata !"_flags2", i32 272, i64 32, i64 32, i64 480, i32 0, metadata !25} ; [ DW_TAG_member ] [_flags2] [line 272, size 32, align 32, offset 480] [from int]
!64 = metadata !{i32 786445, metadata !37, metadata !36, metadata !"_old_offset", i32 274, i64 32, i64 32, i64 512, i32 0, metadata !65} ; [ DW_TAG_member ] [_old_offset] [line 274, size 32, align 32, offset 512] [from __off_t]
!65 = metadata !{i32 786454, metadata !66, null, metadata !"__off_t", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !67} ; [ DW_TAG_typedef ] [__off_t] [line 131, size 0, align 0, offset 0] [from long int]
!66 = metadata !{metadata !"D:/Xilinx/SDx/2016.3/SDK/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include\5Cbits/types.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!67 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!68 = metadata !{i32 786445, metadata !37, metadata !36, metadata !"_cur_column", i32 278, i64 16, i64 16, i64 544, i32 0, metadata !69} ; [ DW_TAG_member ] [_cur_column] [line 278, size 16, align 16, offset 544] [from unsigned short]
!69 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!70 = metadata !{i32 786445, metadata !37, metadata !36, metadata !"_vtable_offset", i32 279, i64 8, i64 8, i64 560, i32 0, metadata !71} ; [ DW_TAG_member ] [_vtable_offset] [line 279, size 8, align 8, offset 560] [from signed char]
!71 = metadata !{i32 786468, null, null, metadata !"signed char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [signed char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!72 = metadata !{i32 786445, metadata !37, metadata !36, metadata !"_shortbuf", i32 280, i64 8, i64 8, i64 568, i32 0, metadata !73} ; [ DW_TAG_member ] [_shortbuf] [line 280, size 8, align 8, offset 568] [from ]
!73 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8, i64 8, i32 0, i32 0, metadata !42, metadata !74, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 8, align 8, offset 0] [from char]
!74 = metadata !{metadata !75}
!75 = metadata !{i32 786465, i64 0, i64 1}        ; [ DW_TAG_subrange_type ] [0, 0]
!76 = metadata !{i32 786445, metadata !37, metadata !36, metadata !"_lock", i32 284, i64 32, i64 32, i64 576, i32 0, metadata !77} ; [ DW_TAG_member ] [_lock] [line 284, size 32, align 32, offset 576] [from ]
!77 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !78} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from _IO_lock_t]
!78 = metadata !{i32 786454, metadata !37, null, metadata !"_IO_lock_t", i32 154, i64 0, i64 0, i64 0, i32 0, null} ; [ DW_TAG_typedef ] [_IO_lock_t] [line 154, size 0, align 0, offset 0] [from ]
!79 = metadata !{i32 786445, metadata !37, metadata !36, metadata !"_offset", i32 293, i64 64, i64 64, i64 640, i32 0, metadata !80} ; [ DW_TAG_member ] [_offset] [line 293, size 64, align 64, offset 640] [from __off64_t]
!80 = metadata !{i32 786454, metadata !66, null, metadata !"__off64_t", i32 132, i64 0, i64 0, i64 0, i32 0, metadata !81} ; [ DW_TAG_typedef ] [__off64_t] [line 132, size 0, align 0, offset 0] [from __quad_t]
!81 = metadata !{i32 786454, metadata !66, null, metadata !"__quad_t", i32 55, i64 0, i64 0, i64 0, i32 0, metadata !82} ; [ DW_TAG_typedef ] [__quad_t] [line 55, size 0, align 0, offset 0] [from long long int]
!82 = metadata !{i32 786468, null, null, metadata !"long long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!83 = metadata !{i32 786445, metadata !37, metadata !36, metadata !"__pad1", i32 302, i64 32, i64 32, i64 704, i32 0, metadata !84} ; [ DW_TAG_member ] [__pad1] [line 302, size 32, align 32, offset 704] [from ]
!84 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!85 = metadata !{i32 786445, metadata !37, metadata !36, metadata !"__pad2", i32 303, i64 32, i64 32, i64 736, i32 0, metadata !84} ; [ DW_TAG_member ] [__pad2] [line 303, size 32, align 32, offset 736] [from ]
!86 = metadata !{i32 786445, metadata !37, metadata !36, metadata !"__pad3", i32 304, i64 32, i64 32, i64 768, i32 0, metadata !84} ; [ DW_TAG_member ] [__pad3] [line 304, size 32, align 32, offset 768] [from ]
!87 = metadata !{i32 786445, metadata !37, metadata !36, metadata !"__pad4", i32 305, i64 32, i64 32, i64 800, i32 0, metadata !84} ; [ DW_TAG_member ] [__pad4] [line 305, size 32, align 32, offset 800] [from ]
!88 = metadata !{i32 786445, metadata !37, metadata !36, metadata !"__pad5", i32 306, i64 32, i64 32, i64 832, i32 0, metadata !89} ; [ DW_TAG_member ] [__pad5] [line 306, size 32, align 32, offset 832] [from size_t]
!89 = metadata !{i32 786454, metadata !90, null, metadata !"size_t", i32 216, i64 0, i64 0, i64 0, i32 0, metadata !91} ; [ DW_TAG_typedef ] [size_t] [line 216, size 0, align 0, offset 0] [from unsigned int]
!90 = metadata !{metadata !"D:/Xilinx/SDx/2016.3/SDK/gnu/aarch32/nt/gcc-arm-linux-gnueabi/lib/gcc/arm-linux-gnueabihf/5.2.1/include\5Cstddef.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!91 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!92 = metadata !{i32 786445, metadata !37, metadata !36, metadata !"_mode", i32 308, i64 32, i64 32, i64 864, i32 0, metadata !25} ; [ DW_TAG_member ] [_mode] [line 308, size 32, align 32, offset 864] [from int]
!93 = metadata !{i32 786445, metadata !37, metadata !36, metadata !"_unused2", i32 310, i64 320, i64 8, i64 896, i32 0, metadata !94} ; [ DW_TAG_member ] [_unused2] [line 310, size 320, align 8, offset 896] [from ]
!94 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 320, i64 8, i32 0, i32 0, metadata !42, metadata !95, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 320, align 8, offset 0] [from char]
!95 = metadata !{metadata !96}
!96 = metadata !{i32 786465, i64 0, i64 40}       ; [ DW_TAG_subrange_type ] [0, 39]
!97 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !98} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!98 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !42} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!99 = metadata !{i32 786478, metadata !21, metadata !22, metadata !"io_noclose", metadata !"io_noclose", metadata !"", i32 737, metadata !23, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @io_noclose, null, null, metadata !18, i32 737} ; [ DW_TAG_subprogram ] [line 737] [local] [def] [io_noclose]
!100 = metadata !{i32 786478, metadata !21, metadata !22, metadata !"newprefile", metadata !"newprefile", metadata !"", i32 187, metadata !101, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, %struct.luaL_Stream* (%struct.lua_State*)* @newprefile, null, null, metadata !18, i32 187} ; [ DW_TAG_subprogram ] [line 187] [local] [def] [newprefile]
!101 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !102, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!102 = metadata !{metadata !103, metadata !26}
!103 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !104} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from LStream]
!104 = metadata !{i32 786454, metadata !21, null, metadata !"LStream", i32 141, i64 0, i64 0, i64 0, i32 0, metadata !105} ; [ DW_TAG_typedef ] [LStream] [line 141, size 0, align 0, offset 0] [from luaL_Stream]
!105 = metadata !{i32 786454, metadata !106, null, metadata !"luaL_Stream", i32 188, i64 0, i64 0, i64 0, i32 0, metadata !107} ; [ DW_TAG_typedef ] [luaL_Stream] [line 188, size 0, align 0, offset 0] [from luaL_Stream]
!106 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lauxlib.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!107 = metadata !{i32 786451, metadata !106, null, metadata !"luaL_Stream", i32 185, i64 64, i64 32, i32 0, i32 0, null, metadata !108, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [luaL_Stream] [line 185, size 64, align 32, offset 0] [def] [from ]
!108 = metadata !{metadata !109, metadata !110}
!109 = metadata !{i32 786445, metadata !106, metadata !107, metadata !"f", i32 186, i64 32, i64 32, i64 0, i32 0, metadata !33} ; [ DW_TAG_member ] [f] [line 186, size 32, align 32, offset 0] [from ]
!110 = metadata !{i32 786445, metadata !106, metadata !107, metadata !"closef", i32 187, i64 32, i64 32, i64 32, i32 0, metadata !111} ; [ DW_TAG_member ] [closef] [line 187, size 32, align 32, offset 32] [from lua_CFunction]
!111 = metadata !{i32 786454, metadata !28, null, metadata !"lua_CFunction", i32 105, i64 0, i64 0, i64 0, i32 0, metadata !112} ; [ DW_TAG_typedef ] [lua_CFunction] [line 105, size 0, align 0, offset 0] [from ]
!112 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !23} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!113 = metadata !{i32 786478, metadata !21, metadata !22, metadata !"createmeta", metadata !"createmeta", metadata !"", i32 725, metadata !114, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.lua_State*)* @createmeta, null, null, metadata !18, i32 725} ; [ DW_TAG_subprogram ] [line 725] [local] [def] [createmeta]
!114 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !115, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!115 = metadata !{null, metadata !26}
!116 = metadata !{i32 786478, metadata !21, metadata !22, metadata !"f_tostring", metadata !"f_tostring", metadata !"", i32 163, metadata !23, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @f_tostring, null, null, metadata !18, i32 163} ; [ DW_TAG_subprogram ] [line 163] [local] [def] [f_tostring]
!117 = metadata !{i32 786478, metadata !21, metadata !22, metadata !"f_gc", metadata !"f_gc", metadata !"", i32 216, metadata !23, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @f_gc, null, null, metadata !18, i32 216} ; [ DW_TAG_subprogram ] [line 216] [local] [def] [f_gc]
!118 = metadata !{i32 786478, metadata !21, metadata !22, metadata !"aux_close", metadata !"aux_close", metadata !"", i32 200, metadata !23, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @aux_close, null, null, metadata !18, i32 200} ; [ DW_TAG_subprogram ] [line 200] [local] [def] [aux_close]
!119 = metadata !{i32 786478, metadata !21, metadata !22, metadata !"f_write", metadata !"f_write", metadata !"", i32 641, metadata !23, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @f_write, null, null, metadata !18, i32 641} ; [ DW_TAG_subprogram ] [line 641] [local] [def] [f_write]
!120 = metadata !{i32 786478, metadata !21, metadata !22, metadata !"g_write", metadata !"g_write", metadata !"", i32 614, metadata !121, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*, %struct._IO_FILE*, i32)* @g_write, null, null, metadata !18, i32 614} ; [ DW_TAG_subprogram ] [line 614] [local] [def] [g_write]
!121 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !122, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!122 = metadata !{metadata !25, metadata !26, metadata !33, metadata !25}
!123 = metadata !{i32 786478, metadata !21, metadata !22, metadata !"tofile", metadata !"tofile", metadata !"", i32 173, metadata !124, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, %struct._IO_FILE* (%struct.lua_State*)* @tofile, null, null, metadata !18, i32 173} ; [ DW_TAG_subprogram ] [line 173] [local] [def] [tofile]
!124 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !125, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!125 = metadata !{metadata !33, metadata !26}
!126 = metadata !{i32 786478, metadata !21, metadata !22, metadata !"f_setvbuf", metadata !"f_setvbuf", metadata !"", i32 667, metadata !23, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @f_setvbuf, null, null, metadata !18, i32 667} ; [ DW_TAG_subprogram ] [line 667] [local] [def] [f_setvbuf]
!127 = metadata !{i32 786478, metadata !21, metadata !22, metadata !"f_seek", metadata !"f_seek", metadata !"", i32 648, metadata !23, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @f_seek, null, null, metadata !18, i32 648} ; [ DW_TAG_subprogram ] [line 648] [local] [def] [f_seek]
!128 = metadata !{i32 786478, metadata !21, metadata !22, metadata !"f_read", metadata !"f_read", metadata !"", i32 578, metadata !23, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @f_read, null, null, metadata !18, i32 578} ; [ DW_TAG_subprogram ] [line 578] [local] [def] [f_read]
!129 = metadata !{i32 786478, metadata !21, metadata !22, metadata !"g_read", metadata !"g_read", metadata !"", i32 523, metadata !121, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*, %struct._IO_FILE*, i32)* @g_read, null, null, metadata !18, i32 523} ; [ DW_TAG_subprogram ] [line 523] [local] [def] [g_read]
!130 = metadata !{i32 786478, metadata !21, metadata !22, metadata !"read_all", metadata !"read_all", metadata !"", i32 497, metadata !131, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.lua_State*, %struct._IO_FILE*)* @read_all, null, null, metadata !18, i32 497} ; [ DW_TAG_subprogram ] [line 497] [local] [def] [read_all]
!131 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !132, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!132 = metadata !{null, metadata !26, metadata !33}
!133 = metadata !{i32 786478, metadata !21, metadata !22, metadata !"read_number", metadata !"read_number", metadata !"", i32 434, metadata !134, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*, %struct._IO_FILE*)* @read_number, null, null, metadata !18, i32 434} ; [ DW_TAG_subprogram ] [line 434] [local] [def] [read_number]
!134 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !135, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!135 = metadata !{metadata !25, metadata !26, metadata !33}
!136 = metadata !{i32 786478, metadata !21, metadata !22, metadata !"readdigits", metadata !"readdigits", metadata !"", i32 421, metadata !137, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.RN*, i32)* @readdigits, null, null, metadata !18, i32 421} ; [ DW_TAG_subprogram ] [line 421] [local] [def] [readdigits]
!137 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !138, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!138 = metadata !{metadata !25, metadata !139, metadata !25}
!139 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !140} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from RN]
!140 = metadata !{i32 786454, metadata !21, null, metadata !"RN", i32 389, i64 0, i64 0, i64 0, i32 0, metadata !141} ; [ DW_TAG_typedef ] [RN] [line 389, size 0, align 0, offset 0] [from ]
!141 = metadata !{i32 786451, metadata !21, null, metadata !"", i32 384, i64 1728, i64 32, i32 0, i32 0, null, metadata !142, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 384, size 1728, align 32, offset 0] [def] [from ]
!142 = metadata !{metadata !143, metadata !144, metadata !145, metadata !146}
!143 = metadata !{i32 786445, metadata !21, metadata !141, metadata !"f", i32 385, i64 32, i64 32, i64 0, i32 0, metadata !33} ; [ DW_TAG_member ] [f] [line 385, size 32, align 32, offset 0] [from ]
!144 = metadata !{i32 786445, metadata !21, metadata !141, metadata !"c", i32 386, i64 32, i64 32, i64 32, i32 0, metadata !25} ; [ DW_TAG_member ] [c] [line 386, size 32, align 32, offset 32] [from int]
!145 = metadata !{i32 786445, metadata !21, metadata !141, metadata !"n", i32 387, i64 32, i64 32, i64 64, i32 0, metadata !25} ; [ DW_TAG_member ] [n] [line 387, size 32, align 32, offset 64] [from int]
!146 = metadata !{i32 786445, metadata !21, metadata !141, metadata !"buff", i32 388, i64 1608, i64 8, i64 96, i32 0, metadata !147} ; [ DW_TAG_member ] [buff] [line 388, size 1608, align 8, offset 96] [from ]
!147 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1608, i64 8, i32 0, i32 0, metadata !42, metadata !148, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 1608, align 8, offset 0] [from char]
!148 = metadata !{metadata !149}
!149 = metadata !{i32 786465, i64 0, i64 201}     ; [ DW_TAG_subrange_type ] [0, 200]
!150 = metadata !{i32 786478, metadata !21, metadata !22, metadata !"nextc", metadata !"nextc", metadata !"", i32 395, metadata !151, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.RN*)* @nextc, null, null, metadata !18, i32 395} ; [ DW_TAG_subprogram ] [line 395] [local] [def] [nextc]
!151 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !152, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!152 = metadata !{metadata !25, metadata !139}
!153 = metadata !{i32 786478, metadata !21, metadata !22, metadata !"test2", metadata !"test2", metadata !"", i32 411, metadata !154, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.RN*, i8*)* @test2, null, null, metadata !18, i32 411} ; [ DW_TAG_subprogram ] [line 411] [local] [def] [test2]
!154 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !155, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!155 = metadata !{metadata !25, metadata !139, metadata !97}
!156 = metadata !{i32 786478, metadata !21, metadata !22, metadata !"read_chars", metadata !"read_chars", metadata !"", i32 510, metadata !157, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*, %struct._IO_FILE*, i32)* @read_chars, null, null, metadata !18, i32 510} ; [ DW_TAG_subprogram ] [line 510] [local] [def] [read_chars]
!157 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !158, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!158 = metadata !{metadata !25, metadata !26, metadata !33, metadata !89}
!159 = metadata !{i32 786478, metadata !21, metadata !22, metadata !"test_eof", metadata !"test_eof", metadata !"", i32 468, metadata !134, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*, %struct._IO_FILE*)* @test_eof, null, null, metadata !18, i32 468} ; [ DW_TAG_subprogram ] [line 468] [local] [def] [test_eof]
!160 = metadata !{i32 786478, metadata !21, metadata !22, metadata !"read_line", metadata !"read_line", metadata !"", i32 476, metadata !121, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*, %struct._IO_FILE*, i32)* @read_line, null, null, metadata !18, i32 476} ; [ DW_TAG_subprogram ] [line 476] [local] [def] [read_line]
!161 = metadata !{i32 786478, metadata !21, metadata !22, metadata !"f_lines", metadata !"f_lines", metadata !"", i32 343, metadata !23, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @f_lines, null, null, metadata !18, i32 343} ; [ DW_TAG_subprogram ] [line 343] [local] [def] [f_lines]
!162 = metadata !{i32 786478, metadata !21, metadata !22, metadata !"aux_lines", metadata !"aux_lines", metadata !"", i32 333, metadata !163, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.lua_State*, i32)* @aux_lines, null, null, metadata !18, i32 333} ; [ DW_TAG_subprogram ] [line 333] [local] [def] [aux_lines]
!163 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !164, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!164 = metadata !{null, metadata !26, metadata !25}
!165 = metadata !{i32 786478, metadata !21, metadata !22, metadata !"io_readline", metadata !"io_readline", metadata !"", i32 583, metadata !23, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @io_readline, null, null, metadata !18, i32 583} ; [ DW_TAG_subprogram ] [line 583] [local] [def] [io_readline]
!166 = metadata !{i32 786478, metadata !21, metadata !22, metadata !"f_flush", metadata !"f_flush", metadata !"", i32 684, metadata !23, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @f_flush, null, null, metadata !18, i32 684} ; [ DW_TAG_subprogram ] [line 684] [local] [def] [f_flush]
!167 = metadata !{i32 786478, metadata !21, metadata !22, metadata !"io_close", metadata !"io_close", metadata !"", i32 208, metadata !23, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @io_close, null, null, metadata !18, i32 208} ; [ DW_TAG_subprogram ] [line 208] [local] [def] [io_close]
!168 = metadata !{i32 786478, metadata !21, metadata !22, metadata !"io_write", metadata !"io_write", metadata !"", i32 636, metadata !23, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @io_write, null, null, metadata !18, i32 636} ; [ DW_TAG_subprogram ] [line 636] [local] [def] [io_write]
!169 = metadata !{i32 786478, metadata !21, metadata !22, metadata !"getiofile", metadata !"getiofile", metadata !"", i32 287, metadata !170, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, %struct._IO_FILE* (%struct.lua_State*, i8*)* @getiofile, null, null, metadata !18, i32 287} ; [ DW_TAG_subprogram ] [line 287] [local] [def] [getiofile]
!170 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !171, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!171 = metadata !{metadata !33, metadata !26, metadata !97}
!172 = metadata !{i32 786478, metadata !21, metadata !22, metadata !"io_type", metadata !"io_type", metadata !"", i32 149, metadata !23, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @io_type, null, null, metadata !18, i32 149} ; [ DW_TAG_subprogram ] [line 149] [local] [def] [io_type]
!173 = metadata !{i32 786478, metadata !21, metadata !22, metadata !"io_tmpfile", metadata !"io_tmpfile", metadata !"", i32 280, metadata !23, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @io_tmpfile, null, null, metadata !18, i32 280} ; [ DW_TAG_subprogram ] [line 280] [local] [def] [io_tmpfile]
!174 = metadata !{i32 786478, metadata !21, metadata !22, metadata !"newfile", metadata !"newfile", metadata !"", i32 234, metadata !101, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, %struct.luaL_Stream* (%struct.lua_State*)* @newfile, null, null, metadata !18, i32 234} ; [ DW_TAG_subprogram ] [line 234] [local] [def] [newfile]
!175 = metadata !{i32 786478, metadata !21, metadata !22, metadata !"io_fclose", metadata !"io_fclose", metadata !"", i32 227, metadata !23, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @io_fclose, null, null, metadata !18, i32 227} ; [ DW_TAG_subprogram ] [line 227] [local] [def] [io_fclose]
!176 = metadata !{i32 786478, metadata !21, metadata !22, metadata !"io_read", metadata !"io_read", metadata !"", i32 573, metadata !23, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @io_read, null, null, metadata !18, i32 573} ; [ DW_TAG_subprogram ] [line 573] [local] [def] [io_read]
!177 = metadata !{i32 786478, metadata !21, metadata !22, metadata !"io_popen", metadata !"io_popen", metadata !"", i32 270, metadata !23, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @io_popen, null, null, metadata !18, i32 270} ; [ DW_TAG_subprogram ] [line 270] [local] [def] [io_popen]
!178 = metadata !{i32 786478, metadata !21, metadata !22, metadata !"io_pclose", metadata !"io_pclose", metadata !"", i32 264, metadata !23, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @io_pclose, null, null, metadata !18, i32 264} ; [ DW_TAG_subprogram ] [line 264] [local] [def] [io_pclose]
!179 = metadata !{i32 786478, metadata !21, metadata !22, metadata !"io_output", metadata !"io_output", metadata !"", i32 319, metadata !23, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @io_output, null, null, metadata !18, i32 319} ; [ DW_TAG_subprogram ] [line 319] [local] [def] [io_output]
!180 = metadata !{i32 786478, metadata !21, metadata !22, metadata !"g_iofile", metadata !"g_iofile", metadata !"", i32 297, metadata !181, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*, i8*, i8*)* @g_iofile, null, null, metadata !18, i32 297} ; [ DW_TAG_subprogram ] [line 297] [local] [def] [g_iofile]
!181 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !182, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!182 = metadata !{metadata !25, metadata !26, metadata !97, metadata !97}
!183 = metadata !{i32 786478, metadata !21, metadata !22, metadata !"opencheck", metadata !"opencheck", metadata !"", i32 242, metadata !184, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.lua_State*, i8*, i8*)* @opencheck, null, null, metadata !18, i32 242} ; [ DW_TAG_subprogram ] [line 242] [local] [def] [opencheck]
!184 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !185, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!185 = metadata !{null, metadata !26, metadata !97, metadata !97}
!186 = metadata !{i32 786478, metadata !21, metadata !22, metadata !"io_open", metadata !"io_open", metadata !"", i32 250, metadata !23, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @io_open, null, null, metadata !18, i32 250} ; [ DW_TAG_subprogram ] [line 250] [local] [def] [io_open]
!187 = metadata !{i32 786478, metadata !21, metadata !22, metadata !"io_lines", metadata !"io_lines", metadata !"", i32 350, metadata !23, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @io_lines, null, null, metadata !18, i32 350} ; [ DW_TAG_subprogram ] [line 350] [local] [def] [io_lines]
!188 = metadata !{i32 786478, metadata !21, metadata !22, metadata !"io_input", metadata !"io_input", metadata !"", i32 314, metadata !23, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @io_input, null, null, metadata !18, i32 314} ; [ DW_TAG_subprogram ] [line 314] [local] [def] [io_input]
!189 = metadata !{i32 786478, metadata !21, metadata !22, metadata !"io_flush", metadata !"io_flush", metadata !"", i32 679, metadata !23, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @io_flush, null, null, metadata !18, i32 679} ; [ DW_TAG_subprogram ] [line 679] [local] [def] [io_flush]
!190 = metadata !{metadata !191, metadata !201, metadata !206, metadata !211, metadata !212, metadata !213}
!191 = metadata !{i32 786484, i32 0, null, metadata !"flib", metadata !"flib", metadata !"", metadata !22, i32 711, metadata !192, i32 1, i32 1, [10 x %struct.luaL_Reg]* @flib, null} ; [ DW_TAG_variable ] [flib] [line 711] [local] [def]
!192 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 640, i64 32, i32 0, i32 0, metadata !193, metadata !199, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 640, align 32, offset 0] [from ]
!193 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !194} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from luaL_Reg]
!194 = metadata !{i32 786454, metadata !106, null, metadata !"luaL_Reg", i32 26, i64 0, i64 0, i64 0, i32 0, metadata !195} ; [ DW_TAG_typedef ] [luaL_Reg] [line 26, size 0, align 0, offset 0] [from luaL_Reg]
!195 = metadata !{i32 786451, metadata !106, null, metadata !"luaL_Reg", i32 23, i64 64, i64 32, i32 0, i32 0, null, metadata !196, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [luaL_Reg] [line 23, size 64, align 32, offset 0] [def] [from ]
!196 = metadata !{metadata !197, metadata !198}
!197 = metadata !{i32 786445, metadata !106, metadata !195, metadata !"name", i32 24, i64 32, i64 32, i64 0, i32 0, metadata !97} ; [ DW_TAG_member ] [name] [line 24, size 32, align 32, offset 0] [from ]
!198 = metadata !{i32 786445, metadata !106, metadata !195, metadata !"func", i32 25, i64 32, i64 32, i64 32, i32 0, metadata !111} ; [ DW_TAG_member ] [func] [line 25, size 32, align 32, offset 32] [from lua_CFunction]
!199 = metadata !{metadata !200}
!200 = metadata !{i32 786465, i64 0, i64 10}      ; [ DW_TAG_subrange_type ] [0, 9]
!201 = metadata !{i32 786484, i32 0, metadata !126, metadata !"mode", metadata !"mode", metadata !"", metadata !22, i32 668, metadata !202, i32 1, i32 1, [3 x i32]* @f_setvbuf.mode, null} ; [ DW_TAG_variable ] [mode] [line 668] [local] [def]
!202 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 96, i64 32, i32 0, i32 0, metadata !203, metadata !204, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 96, align 32, offset 0] [from ]
!203 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !25} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from int]
!204 = metadata !{metadata !205}
!205 = metadata !{i32 786465, i64 0, i64 3}       ; [ DW_TAG_subrange_type ] [0, 2]
!206 = metadata !{i32 786484, i32 0, metadata !126, metadata !"modenames", metadata !"modenames", metadata !"", metadata !22, i32 669, metadata !207, i32 1, i32 1, [4 x i8*]* @f_setvbuf.modenames, null} ; [ DW_TAG_variable ] [modenames] [line 669] [local] [def]
!207 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 128, i64 32, i32 0, i32 0, metadata !208, metadata !209, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 128, align 32, offset 0] [from ]
!208 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !97} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from ]
!209 = metadata !{metadata !210}
!210 = metadata !{i32 786465, i64 0, i64 4}       ; [ DW_TAG_subrange_type ] [0, 3]
!211 = metadata !{i32 786484, i32 0, metadata !127, metadata !"mode", metadata !"mode", metadata !"", metadata !22, i32 649, metadata !202, i32 1, i32 1, [3 x i32]* @f_seek.mode, null} ; [ DW_TAG_variable ] [mode] [line 649] [local] [def]
!212 = metadata !{i32 786484, i32 0, metadata !127, metadata !"modenames", metadata !"modenames", metadata !"", metadata !22, i32 650, metadata !207, i32 1, i32 1, [4 x i8*]* @f_seek.modenames, null} ; [ DW_TAG_variable ] [modenames] [line 650] [local] [def]
!213 = metadata !{i32 786484, i32 0, null, metadata !"iolib", metadata !"iolib", metadata !"", metadata !22, i32 692, metadata !214, i32 1, i32 1, [12 x %struct.luaL_Reg]* @iolib, null} ; [ DW_TAG_variable ] [iolib] [line 692] [local] [def]
!214 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 768, i64 32, i32 0, i32 0, metadata !193, metadata !215, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 768, align 32, offset 0] [from ]
!215 = metadata !{metadata !216}
!216 = metadata !{i32 786465, i64 0, i64 12}      ; [ DW_TAG_subrange_type ] [0, 11]
!217 = metadata !{i32 (%struct.lua_State*)* @luaopen_io}
!218 = metadata !{metadata !"luaopen_io"}
!219 = metadata !{void (%struct.lua_State*, double, i32)* @luaL_checkversion_}
!220 = metadata !{metadata !"luaL_checkversion_"}
!221 = metadata !{void (%struct.lua_State*, i32, i32)* @lua_createtable}
!222 = metadata !{metadata !"lua_createtable"}
!223 = metadata !{void (%struct.lua_State*, %struct.luaL_Reg*, i32)* @luaL_setfuncs}
!224 = metadata !{metadata !"luaL_setfuncs"}
!225 = metadata !{void (%struct.lua_State*)* @createmeta}
!226 = metadata !{metadata !"createmeta"}
!227 = metadata !{void (%struct.lua_State*, %struct._IO_FILE*, i8*, i8*)* @createstdfile}
!228 = metadata !{metadata !"createstdfile"}
!229 = metadata !{%struct.luaL_Stream* (%struct.lua_State*)* @newprefile}
!230 = metadata !{metadata !"newprefile"}
!231 = metadata !{i32 (%struct.lua_State*)* @io_noclose}
!232 = metadata !{metadata !"io_noclose"}
!233 = metadata !{void (%struct.lua_State*, i32)* @lua_pushvalue}
!234 = metadata !{metadata !"lua_pushvalue"}
!235 = metadata !{void (%struct.lua_State*, i32, i8*)* @lua_setfield}
!236 = metadata !{metadata !"lua_setfield"}
!237 = metadata !{i8* (%struct.lua_State*, i32, i8*)* @luaL_checkudata}
!238 = metadata !{metadata !"luaL_checkudata"}
!239 = metadata !{void (%struct.lua_State*)* @lua_pushnil}
!240 = metadata !{metadata !"lua_pushnil"}
!241 = metadata !{i8* (%struct.lua_State*, i8*)* @lua_pushstring}
!242 = metadata !{metadata !"lua_pushstring"}
!243 = metadata !{i8* (%struct.lua_State*, i32)* @lua_newuserdata}
!244 = metadata !{metadata !"lua_newuserdata"}
!245 = metadata !{void (%struct.lua_State*, i8*)* @luaL_setmetatable}
!246 = metadata !{metadata !"luaL_setmetatable"}
!247 = metadata !{i32 (%struct.lua_State*, i8*)* @luaL_newmetatable}
!248 = metadata !{metadata !"luaL_newmetatable"}
!249 = metadata !{void (%struct.lua_State*, i32)* @lua_settop}
!250 = metadata !{metadata !"lua_settop"}
!251 = metadata !{i32 (%struct.lua_State*)* @io_close}
!252 = metadata !{metadata !"io_close"}
!253 = metadata !{i32 (%struct.lua_State*)* @f_flush}
!254 = metadata !{metadata !"f_flush"}
!255 = metadata !{i32 (%struct.lua_State*)* @f_lines}
!256 = metadata !{metadata !"f_lines"}
!257 = metadata !{i32 (%struct.lua_State*)* @f_read}
!258 = metadata !{metadata !"f_read"}
!259 = metadata !{i32 (%struct.lua_State*)* @f_seek}
!260 = metadata !{metadata !"f_seek"}
!261 = metadata !{i32 (%struct.lua_State*)* @f_setvbuf}
!262 = metadata !{metadata !"f_setvbuf"}
!263 = metadata !{i32 (%struct.lua_State*)* @f_write}
!264 = metadata !{metadata !"f_write"}
!265 = metadata !{i32 (%struct.lua_State*)* @f_gc}
!266 = metadata !{metadata !"f_gc"}
!267 = metadata !{i32 (%struct.lua_State*)* @f_tostring}
!268 = metadata !{metadata !"f_tostring"}
!269 = metadata !{i8* (%struct.lua_State*, i8*, ...)* @lua_pushfstring}
!270 = metadata !{metadata !"lua_pushfstring"}
!271 = metadata !{i32 (%struct.lua_State*)* @aux_close}
!272 = metadata !{metadata !"aux_close"}
!273 = metadata !{%struct._IO_FILE* (%struct.lua_State*)* @tofile}
!274 = metadata !{metadata !"tofile"}
!275 = metadata !{i32 (%struct.lua_State*, %struct._IO_FILE*, i32)* @g_write}
!276 = metadata !{metadata !"g_write"}
!277 = metadata !{i32 (%struct.lua_State*)* @lua_gettop}
!278 = metadata !{metadata !"lua_gettop"}
!279 = metadata !{i32 (%struct.lua_State*, i32)* @lua_type}
!280 = metadata !{metadata !"lua_type"}
!281 = metadata !{i32 (%struct.lua_State*, i32)* @lua_isinteger}
!282 = metadata !{metadata !"lua_isinteger"}
!283 = metadata !{i32 (%struct._IO_FILE*, i8*, ...)* @fprintf}
!284 = metadata !{metadata !"fprintf"}
!285 = metadata !{i64 (%struct.lua_State*, i32, i32*)* @lua_tointegerx}
!286 = metadata !{metadata !"lua_tointegerx"}
!287 = metadata !{double (%struct.lua_State*, i32, i32*)* @lua_tonumberx}
!288 = metadata !{metadata !"lua_tonumberx"}
!289 = metadata !{i8* (%struct.lua_State*, i32, i32*)* @luaL_checklstring}
!290 = metadata !{metadata !"luaL_checklstring"}
!291 = metadata !{i32 (i8*, i32, i32, %struct._IO_FILE*)* @fwrite}
!292 = metadata !{metadata !"fwrite"}
!293 = metadata !{i32 (%struct.lua_State*, i32, i8*)* @luaL_fileresult}
!294 = metadata !{metadata !"luaL_fileresult"}
!295 = metadata !{i32 (%struct.lua_State*, i8*, ...)* @luaL_error}
!296 = metadata !{metadata !"luaL_error"}
!297 = metadata !{i32 (%struct.lua_State*, i32, i8*, i8**)* @luaL_checkoption}
!298 = metadata !{metadata !"luaL_checkoption"}
!299 = metadata !{i64 (%struct.lua_State*, i32, i64)* @luaL_optinteger}
!300 = metadata !{metadata !"luaL_optinteger"}
!301 = metadata !{i32 (%struct._IO_FILE*, i8*, i32, i32)* @setvbuf}
!302 = metadata !{metadata !"setvbuf"}
!303 = metadata !{i32 (%struct.lua_State*, i32, i8*)* @luaL_argerror}
!304 = metadata !{metadata !"luaL_argerror"}
!305 = metadata !{i32 (%struct._IO_FILE*, i32, i32)* @fseek}
!306 = metadata !{metadata !"fseek"}
!307 = metadata !{void (%struct.lua_State*, i64)* @lua_pushinteger}
!308 = metadata !{metadata !"lua_pushinteger"}
!309 = metadata !{i32 (%struct._IO_FILE*)* @ftell}
!310 = metadata !{metadata !"ftell"}
!311 = metadata !{i32 (%struct.lua_State*, %struct._IO_FILE*, i32)* @g_read}
!312 = metadata !{metadata !"g_read"}
!313 = metadata !{void (%struct._IO_FILE*)* @clearerr}
!314 = metadata !{metadata !"clearerr"}
!315 = metadata !{i32 (%struct.lua_State*, %struct._IO_FILE*, i32)* @read_line}
!316 = metadata !{metadata !"read_line"}
!317 = metadata !{void (%struct.lua_State*, i32, i8*)* @luaL_checkstack}
!318 = metadata !{metadata !"luaL_checkstack"}
!319 = metadata !{i64 (%struct.lua_State*, i32)* @luaL_checkinteger}
!320 = metadata !{metadata !"luaL_checkinteger"}
!321 = metadata !{i32 (%struct.lua_State*, %struct._IO_FILE*)* @test_eof}
!322 = metadata !{metadata !"test_eof"}
!323 = metadata !{i32 (%struct.lua_State*, %struct._IO_FILE*, i32)* @read_chars}
!324 = metadata !{metadata !"read_chars"}
!325 = metadata !{i32 (%struct.lua_State*, %struct._IO_FILE*)* @read_number}
!326 = metadata !{metadata !"read_number"}
!327 = metadata !{void (%struct.lua_State*, %struct._IO_FILE*)* @read_all}
!328 = metadata !{metadata !"read_all"}
!329 = metadata !{i32 (%struct._IO_FILE*)* @ferror}
!330 = metadata !{metadata !"ferror"}
!331 = metadata !{void (%struct.lua_State*, %struct.luaL_Buffer*)* @luaL_buffinit}
!332 = metadata !{metadata !"luaL_buffinit"}
!333 = metadata !{i8* (%struct.luaL_Buffer*, i32)* @luaL_prepbuffsize}
!334 = metadata !{metadata !"luaL_prepbuffsize"}
!335 = metadata !{i32 (i8*, i32, i32, %struct._IO_FILE*)* @fread}
!336 = metadata !{metadata !"fread"}
!337 = metadata !{void (%struct.luaL_Buffer*)* @luaL_pushresult}
!338 = metadata !{metadata !"luaL_pushresult"}
!339 = metadata !{%struct.lconv* ()* @localeconv}
!340 = metadata !{metadata !"localeconv"}
!341 = metadata !{i32 (%struct._IO_FILE*)* @_IO_getc}
!342 = metadata !{metadata !"_IO_getc"}
!343 = metadata !{i16** ()* @__ctype_b_loc}
!344 = metadata !{metadata !"__ctype_b_loc"}
!345 = metadata !{i32 (%struct.RN*, i8*)* @test2}
!346 = metadata !{metadata !"test2"}
!347 = metadata !{i32 (%struct.RN*, i32)* @readdigits}
!348 = metadata !{metadata !"readdigits"}
!349 = metadata !{i32 (i32, %struct._IO_FILE*)* @ungetc}
!350 = metadata !{metadata !"ungetc"}
!351 = metadata !{i32 (%struct.lua_State*, i8*)* @lua_stringtonumber}
!352 = metadata !{metadata !"lua_stringtonumber"}
!353 = metadata !{i32 (%struct.RN*)* @nextc}
!354 = metadata !{metadata !"nextc"}
!355 = metadata !{i32 (%struct.lua_State*, i32)* @lua_rawlen}
!356 = metadata !{metadata !"lua_rawlen"}
!357 = metadata !{void (%struct.lua_State*, i32)* @aux_lines}
!358 = metadata !{metadata !"aux_lines"}
!359 = metadata !{void (%struct.lua_State*, i32)* @lua_pushboolean}
!360 = metadata !{metadata !"lua_pushboolean"}
!361 = metadata !{void (%struct.lua_State*, i32, i32)* @lua_rotate}
!362 = metadata !{metadata !"lua_rotate"}
!363 = metadata !{void (%struct.lua_State*, i32 (%struct.lua_State*)*, i32)* @lua_pushcclosure}
!364 = metadata !{metadata !"lua_pushcclosure"}
!365 = metadata !{i32 (%struct.lua_State*)* @io_readline}
!366 = metadata !{metadata !"io_readline"}
!367 = metadata !{i8* (%struct.lua_State*, i32)* @lua_touserdata}
!368 = metadata !{metadata !"lua_touserdata"}
!369 = metadata !{i32 (%struct.lua_State*, i32)* @lua_toboolean}
!370 = metadata !{metadata !"lua_toboolean"}
!371 = metadata !{i8* (%struct.lua_State*, i32, i32*)* @lua_tolstring}
!372 = metadata !{metadata !"lua_tolstring"}
!373 = metadata !{i32 (%struct._IO_FILE*)* @fflush}
!374 = metadata !{metadata !"fflush"}
!375 = metadata !{i32 (%struct.lua_State*, i32, i8*)* @lua_getfield}
!376 = metadata !{metadata !"lua_getfield"}
!377 = metadata !{i32 (%struct.lua_State*)* @io_flush}
!378 = metadata !{metadata !"io_flush"}
!379 = metadata !{i32 (%struct.lua_State*)* @io_input}
!380 = metadata !{metadata !"io_input"}
!381 = metadata !{i32 (%struct.lua_State*)* @io_lines}
!382 = metadata !{metadata !"io_lines"}
!383 = metadata !{i32 (%struct.lua_State*)* @io_open}
!384 = metadata !{metadata !"io_open"}
!385 = metadata !{i32 (%struct.lua_State*)* @io_output}
!386 = metadata !{metadata !"io_output"}
!387 = metadata !{i32 (%struct.lua_State*)* @io_popen}
!388 = metadata !{metadata !"io_popen"}
!389 = metadata !{i32 (%struct.lua_State*)* @io_read}
!390 = metadata !{metadata !"io_read"}
!391 = metadata !{i32 (%struct.lua_State*)* @io_tmpfile}
!392 = metadata !{metadata !"io_tmpfile"}
!393 = metadata !{i32 (%struct.lua_State*)* @io_type}
!394 = metadata !{metadata !"io_type"}
!395 = metadata !{i32 (%struct.lua_State*)* @io_write}
!396 = metadata !{metadata !"io_write"}
!397 = metadata !{%struct._IO_FILE* (%struct.lua_State*, i8*)* @getiofile}
!398 = metadata !{metadata !"getiofile"}
!399 = metadata !{void (%struct.lua_State*, i32)* @luaL_checkany}
!400 = metadata !{metadata !"luaL_checkany"}
!401 = metadata !{i8* (%struct.lua_State*, i32, i8*)* @luaL_testudata}
!402 = metadata !{metadata !"luaL_testudata"}
!403 = metadata !{%struct.luaL_Stream* (%struct.lua_State*)* @newfile}
!404 = metadata !{metadata !"newfile"}
!405 = metadata !{%struct._IO_FILE* ()* @tmpfile64}
!406 = metadata !{metadata !"tmpfile"}
!407 = metadata !{i32 (%struct.lua_State*)* @io_fclose}
!408 = metadata !{metadata !"io_fclose"}
!409 = metadata !{i32 (%struct._IO_FILE*)* @fclose}
!410 = metadata !{metadata !"fclose"}
!411 = metadata !{i8* (%struct.lua_State*, i32, i8*, i32*)* @luaL_optlstring}
!412 = metadata !{metadata !"luaL_optlstring"}
!413 = metadata !{i32 (%struct.lua_State*)* @io_pclose}
!414 = metadata !{metadata !"io_pclose"}
!415 = metadata !{i32 (%struct.lua_State*, i32)* @luaL_execresult}
!416 = metadata !{metadata !"luaL_execresult"}
!417 = metadata !{i32 (%struct.lua_State*, i8*, i8*)* @g_iofile}
!418 = metadata !{metadata !"g_iofile"}
!419 = metadata !{void (%struct.lua_State*, i8*, i8*)* @opencheck}
!420 = metadata !{metadata !"opencheck"}
!421 = metadata !{%struct._IO_FILE* (i8*, i8*)* @fopen64}
!422 = metadata !{metadata !"fopen"}
!423 = metadata !{i8* (i32)* @strerror}
!424 = metadata !{metadata !"strerror"}
!425 = metadata !{i32* ()* @__errno_location}
!426 = metadata !{metadata !"__errno_location"}
!427 = metadata !{i8* (i8*, i32)* @strchr}
!428 = metadata !{metadata !"strchr"}
!429 = metadata !{i32 (i8*, i8*)* @strspn}
!430 = metadata !{metadata !"strspn"}
!431 = metadata !{i32 (i8*)* @strlen}
!432 = metadata !{metadata !"strlen"}
!433 = metadata !{void (%struct.lua_State*, i32, i32)* @lua_copy}
!434 = metadata !{metadata !"lua_copy"}
!435 = metadata !{metadata !"int.lua_State *.1"}
!436 = metadata !{metadata !"void.lua_State *.1.lua_Number.0.size_t.0"}
!437 = metadata !{metadata !"void.lua_State *.1.int.0.int.0"}
!438 = metadata !{metadata !"void.lua_State *.1.const luaL_Reg *.1.int.0"}
!439 = metadata !{metadata !"void.lua_State *.1"}
!440 = metadata !{metadata !"void.lua_State *.1.FILE *.1.const char *.1.const char *.1"}
!441 = metadata !{metadata !"LStream .lua_State *.1"}
!442 = metadata !{metadata !"void.lua_State *.1.int.0"}
!443 = metadata !{metadata !"void.lua_State *.1.int.0.const char *.1"}
!444 = metadata !{metadata !"void .lua_State *.1.int.0.const char *.1"}
!445 = metadata !{metadata !"const char .lua_State *.1.const char *.1"}
!446 = metadata !{metadata !"void .lua_State *.1.size_t.0"}
!447 = metadata !{metadata !"void.lua_State *.1.const char *.1"}
!448 = metadata !{metadata !"int.lua_State *.1.const char *.1"}
!449 = metadata !{metadata !"FILE .lua_State *.1"}
!450 = metadata !{metadata !"int.lua_State *.1.FILE *.1.int.0"}
!451 = metadata !{metadata !"int.lua_State *.1.int.0"}
!452 = metadata !{metadata !"int.FILE *restrict.1.const char *restrict.1"}
!453 = metadata !{metadata !"lua_Integer.lua_State *.1.int.0.int *.1"}
!454 = metadata !{metadata !"lua_Number.lua_State *.1.int.0.int *.1"}
!455 = metadata !{metadata !"const char .lua_State *.1.int.0.size_t *.1"}
!456 = metadata !{metadata !"size_t.const void *restrict.1.size_t.0.size_t.0.FILE *restrict.1"}
!457 = metadata !{metadata !"int.lua_State *.1.int.0.const char *.1"}
!458 = metadata !{metadata !"int.lua_State *.1.int.0.const char *.1.const char *const [].1"}
!459 = metadata !{metadata !"lua_Integer.lua_State *.1.int.0.lua_Integer.0"}
!460 = metadata !{metadata !"int.FILE *restrict.1.char *restrict.1.int.0.size_t.0"}
!461 = metadata !{metadata !"int.FILE *.1.long.0.int.0"}
!462 = metadata !{metadata !"void.lua_State *.1.lua_Integer.0"}
!463 = metadata !{metadata !"long.FILE *.1"}
!464 = metadata !{metadata !"void.FILE *.1"}
!465 = metadata !{metadata !"lua_Integer.lua_State *.1.int.0"}
!466 = metadata !{metadata !"int.lua_State *.1.FILE *.1"}
!467 = metadata !{metadata !"int.lua_State *.1.FILE *.1.size_t.0"}
!468 = metadata !{metadata !"void.lua_State *.1.FILE *.1"}
!469 = metadata !{metadata !"int.FILE *.1"}
!470 = metadata !{metadata !"void.lua_State *.1.luaL_Buffer *.1"}
!471 = metadata !{metadata !"char .luaL_Buffer *.1.size_t.0"}
!472 = metadata !{metadata !"size_t.void *restrict.1.size_t.0.size_t.0.FILE *restrict.1"}
!473 = metadata !{metadata !"void.luaL_Buffer *.1"}
!474 = metadata !{metadata !"struct lconv ."}
!475 = metadata !{metadata !"int._IO_FILE *.1"}
!476 = metadata !{metadata !"const unsigned short *."}
!477 = metadata !{metadata !"int.RN *.1.const char *.1"}
!478 = metadata !{metadata !"int.RN *.1.int.0"}
!479 = metadata !{metadata !"int.int.0.FILE *.1"}
!480 = metadata !{metadata !"size_t.lua_State *.1.const char *.1"}
!481 = metadata !{metadata !"int.RN *.1"}
!482 = metadata !{metadata !"size_t.lua_State *.1.int.0"}
!483 = metadata !{metadata !"void.lua_State *.1.lua_CFunction.1.int.0"}
!484 = metadata !{metadata !"void .lua_State *.1.int.0"}
!485 = metadata !{metadata !"FILE .lua_State *.1.const char *.1"}
!486 = metadata !{metadata !"FILE ."}
!487 = metadata !{metadata !"const char .lua_State *.1.int.0.const char *.1.size_t *.1"}
!488 = metadata !{metadata !"int.lua_State *.1.const char *.1.const char *.1"}
!489 = metadata !{metadata !"void.lua_State *.1.const char *.1.const char *.1"}
!490 = metadata !{metadata !"FILE .const char *restrict.1.const char *restrict.1"}
!491 = metadata !{metadata !"char .int.0"}
!492 = metadata !{metadata !"int ."}
!493 = metadata !{metadata !"char .const char *.1.int.0"}
!494 = metadata !{metadata !"unsigned int.const char *.1.const char *.1"}
!495 = metadata !{metadata !"unsigned int.const char *.1"}
!496 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lualib.h"}
!497 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lauxlib.h"}
!498 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lua.h"}
!499 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/liolib.c"}
!500 = metadata !{metadata !"D:/Xilinx/SDx/2016.3/SDK/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include\5Cstdio.h"}
!501 = metadata !{metadata !"D:/Xilinx/SDx/2016.3/SDK/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include\5Clocale.h"}
!502 = metadata !{metadata !"D:/Xilinx/SDx/2016.3/SDK/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include\5Clibio.h"}
!503 = metadata !{metadata !"D:/Xilinx/SDx/2016.3/SDK/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include\5Cctype.h"}
!504 = metadata !{metadata !"D:/Xilinx/SDx/2016.3/SDK/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include\5Cstring.h"}
!505 = metadata !{metadata !"D:/Xilinx/SDx/2016.3/SDK/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include\5Cbits/errno.h"}
!506 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!507 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!508 = metadata !{i32 1, metadata !"wchar_size", i32 4}
!509 = metadata !{i32 1, metadata !"min_enum_size", i32 4}
!510 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
!511 = metadata !{i32 786689, metadata !20, metadata !"L", metadata !22, i32 16777975, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 759]
!512 = metadata !{i32 759, i32 39, metadata !20, null}
!513 = metadata !{i32 760, i32 3, metadata !20, null}
!514 = metadata !{i32 761, i32 3, metadata !20, null}
!515 = metadata !{i32 763, i32 3, metadata !20, null}
!516 = metadata !{i32 764, i32 3, metadata !20, null}
!517 = metadata !{i32 765, i32 3, metadata !20, null}
!518 = metadata !{i32 766, i32 3, metadata !20, null}
!519 = metadata !{i32 786689, metadata !113, metadata !"L", metadata !22, i32 16777941, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 725]
!520 = metadata !{i32 725, i32 36, metadata !113, null}
!521 = metadata !{i32 726, i32 3, metadata !113, null}
!522 = metadata !{i32 727, i32 3, metadata !113, null}
!523 = metadata !{i32 728, i32 3, metadata !113, null}
!524 = metadata !{i32 729, i32 3, metadata !113, null}
!525 = metadata !{i32 730, i32 3, metadata !113, null}
!526 = metadata !{i32 731, i32 1, metadata !113, null}
!527 = metadata !{i32 786689, metadata !30, metadata !"L", metadata !22, i32 16777962, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 746]
!528 = metadata !{i32 746, i32 39, metadata !30, null}
!529 = metadata !{i32 786689, metadata !30, metadata !"f", metadata !22, i32 33555178, metadata !33, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [f] [line 746]
!530 = metadata !{i32 746, i32 48, metadata !30, null}
!531 = metadata !{i32 786689, metadata !30, metadata !"k", metadata !22, i32 50332394, metadata !97, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [k] [line 746]
!532 = metadata !{i32 746, i32 63, metadata !30, null}
!533 = metadata !{i32 786689, metadata !30, metadata !"fname", metadata !22, i32 67109611, metadata !97, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fname] [line 747]
!534 = metadata !{i32 747, i32 40, metadata !30, null}
!535 = metadata !{i32 786688, metadata !30, metadata !"p", metadata !22, i32 748, metadata !103, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 748]
!536 = metadata !{i32 748, i32 12, metadata !30, null}
!537 = metadata !{i32 748, i32 16, metadata !30, null}
!538 = metadata !{i32 749, i32 3, metadata !30, null}
!539 = metadata !{i32 750, i32 3, metadata !30, null}
!540 = metadata !{i32 751, i32 7, metadata !541, null}
!541 = metadata !{i32 786443, metadata !21, metadata !30, i32 751, i32 7, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/liolib.c]
!542 = metadata !{i32 752, i32 5, metadata !543, null}
!543 = metadata !{i32 786443, metadata !21, metadata !541, i32 751, i32 18, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/liolib.c]
!544 = metadata !{i32 753, i32 5, metadata !543, null}
!545 = metadata !{i32 754, i32 3, metadata !543, null}
!546 = metadata !{i32 755, i32 3, metadata !30, null}
!547 = metadata !{i32 756, i32 1, metadata !30, null}
!548 = metadata !{i32 786689, metadata !100, metadata !"L", metadata !22, i32 16777403, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 187]
!549 = metadata !{i32 187, i32 40, metadata !100, null}
!550 = metadata !{i32 786688, metadata !100, metadata !"p", metadata !22, i32 188, metadata !103, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 188]
!551 = metadata !{i32 188, i32 12, metadata !100, null}
!552 = metadata !{i32 188, i32 27, metadata !100, null}
!553 = metadata !{i32 189, i32 3, metadata !100, null}
!554 = metadata !{i32 190, i32 3, metadata !100, null}
!555 = metadata !{i32 191, i32 3, metadata !100, null}
!556 = metadata !{i32 786689, metadata !99, metadata !"L", metadata !22, i32 16777953, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 737]
!557 = metadata !{i32 737, i32 35, metadata !99, null}
!558 = metadata !{i32 786688, metadata !99, metadata !"p", metadata !22, i32 738, metadata !103, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 738]
!559 = metadata !{i32 738, i32 12, metadata !99, null}
!560 = metadata !{i32 738, i32 16, metadata !99, null}
!561 = metadata !{i32 739, i32 3, metadata !99, null}
!562 = metadata !{i32 740, i32 3, metadata !99, null}
!563 = metadata !{i32 741, i32 3, metadata !99, null}
!564 = metadata !{i32 742, i32 3, metadata !99, null}
!565 = metadata !{i32 786689, metadata !167, metadata !"L", metadata !22, i32 16777424, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 208]
!566 = metadata !{i32 208, i32 33, metadata !167, null}
!567 = metadata !{i32 209, i32 7, metadata !568, null}
!568 = metadata !{i32 786443, metadata !21, metadata !167, i32 209, i32 7, i32 0, i32 50} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/liolib.c]
!569 = metadata !{i32 210, i32 5, metadata !568, null}
!570 = metadata !{i32 211, i32 3, metadata !167, null}
!571 = metadata !{i32 212, i32 10, metadata !167, null}
!572 = metadata !{i32 786689, metadata !166, metadata !"L", metadata !22, i32 16777900, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 684]
!573 = metadata !{i32 684, i32 32, metadata !166, null}
!574 = metadata !{i32 685, i32 10, metadata !166, null}
!575 = metadata !{i32 685, i32 36, metadata !166, null}
!576 = metadata !{i32 685, i32 29, metadata !166, null}
!577 = metadata !{i32 786689, metadata !161, metadata !"L", metadata !22, i32 16777559, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 343]
!578 = metadata !{i32 343, i32 32, metadata !161, null}
!579 = metadata !{i32 344, i32 3, metadata !161, null}
!580 = metadata !{i32 345, i32 3, metadata !161, null}
!581 = metadata !{i32 346, i32 3, metadata !161, null}
!582 = metadata !{i32 786689, metadata !128, metadata !"L", metadata !22, i32 16777794, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 578]
!583 = metadata !{i32 578, i32 31, metadata !128, null}
!584 = metadata !{i32 579, i32 10, metadata !128, null}
!585 = metadata !{i32 579, i32 20, metadata !128, null}
!586 = metadata !{i32 786689, metadata !127, metadata !"L", metadata !22, i32 16777864, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 648]
!587 = metadata !{i32 648, i32 31, metadata !127, null}
!588 = metadata !{i32 786688, metadata !127, metadata !"f", metadata !22, i32 651, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [f] [line 651]
!589 = metadata !{i32 651, i32 9, metadata !127, null}
!590 = metadata !{i32 651, i32 13, metadata !127, null}
!591 = metadata !{i32 786688, metadata !127, metadata !"op", metadata !22, i32 652, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [op] [line 652]
!592 = metadata !{i32 652, i32 7, metadata !127, null}
!593 = metadata !{i32 652, i32 12, metadata !127, null}
!594 = metadata !{i32 786688, metadata !127, metadata !"p3", metadata !22, i32 653, metadata !595, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p3] [line 653]
!595 = metadata !{i32 786454, metadata !28, null, metadata !"lua_Integer", i32 93, i64 0, i64 0, i64 0, i32 0, metadata !82} ; [ DW_TAG_typedef ] [lua_Integer] [line 93, size 0, align 0, offset 0] [from long long int]
!596 = metadata !{i32 653, i32 15, metadata !127, null}
!597 = metadata !{i32 653, i32 20, metadata !127, null}
!598 = metadata !{i32 786688, metadata !127, metadata !"offset", metadata !22, i32 654, metadata !67, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [offset] [line 654]
!599 = metadata !{i32 654, i32 13, metadata !127, null}
!600 = metadata !{i32 654, i32 3, metadata !127, null}
!601 = metadata !{i32 655, i32 3, metadata !127, null}
!602 = metadata !{i32 655, i32 3, metadata !603, null}
!603 = metadata !{i32 786443, metadata !21, metadata !127, i32 655, i32 3, i32 2, i32 64} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/liolib.c]
!604 = metadata !{i32 655, i32 3, metadata !605, null}
!605 = metadata !{i32 786443, metadata !21, metadata !606, i32 655, i32 3, i32 3, i32 65} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/liolib.c]
!606 = metadata !{i32 786443, metadata !21, metadata !127, i32 655, i32 3, i32 1, i32 63} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/liolib.c]
!607 = metadata !{i32 657, i32 8, metadata !127, null}
!608 = metadata !{i32 658, i32 7, metadata !609, null}
!609 = metadata !{i32 786443, metadata !21, metadata !127, i32 658, i32 7, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/liolib.c]
!610 = metadata !{i32 659, i32 12, metadata !609, null}
!611 = metadata !{i32 661, i32 5, metadata !612, null}
!612 = metadata !{i32 786443, metadata !21, metadata !609, i32 660, i32 8, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/liolib.c]
!613 = metadata !{i32 661, i32 37, metadata !612, null}
!614 = metadata !{i32 662, i32 5, metadata !612, null}
!615 = metadata !{i32 664, i32 1, metadata !127, null}
!616 = metadata !{i32 786689, metadata !126, metadata !"L", metadata !22, i32 16777883, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 667]
!617 = metadata !{i32 667, i32 34, metadata !126, null}
!618 = metadata !{i32 786688, metadata !126, metadata !"f", metadata !22, i32 670, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [f] [line 670]
!619 = metadata !{i32 670, i32 9, metadata !126, null}
!620 = metadata !{i32 670, i32 13, metadata !126, null}
!621 = metadata !{i32 786688, metadata !126, metadata !"op", metadata !22, i32 671, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [op] [line 671]
!622 = metadata !{i32 671, i32 7, metadata !126, null}
!623 = metadata !{i32 671, i32 12, metadata !126, null}
!624 = metadata !{i32 786688, metadata !126, metadata !"sz", metadata !22, i32 672, metadata !595, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sz] [line 672]
!625 = metadata !{i32 672, i32 15, metadata !126, null}
!626 = metadata !{i32 672, i32 20, metadata !126, null}
!627 = metadata !{i32 786688, metadata !126, metadata !"res", metadata !22, i32 673, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [res] [line 673]
!628 = metadata !{i32 673, i32 7, metadata !126, null}
!629 = metadata !{i32 673, i32 13, metadata !126, null}
!630 = metadata !{i32 674, i32 10, metadata !126, null}
!631 = metadata !{i32 786689, metadata !119, metadata !"L", metadata !22, i32 16777857, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 641]
!632 = metadata !{i32 641, i32 32, metadata !119, null}
!633 = metadata !{i32 786688, metadata !119, metadata !"f", metadata !22, i32 642, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [f] [line 642]
!634 = metadata !{i32 642, i32 9, metadata !119, null}
!635 = metadata !{i32 642, i32 13, metadata !119, null}
!636 = metadata !{i32 643, i32 3, metadata !119, null}
!637 = metadata !{i32 644, i32 10, metadata !119, null}
!638 = metadata !{i32 786689, metadata !117, metadata !"L", metadata !22, i32 16777432, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 216]
!639 = metadata !{i32 216, i32 29, metadata !117, null}
!640 = metadata !{i32 786688, metadata !117, metadata !"p", metadata !22, i32 217, metadata !103, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 217]
!641 = metadata !{i32 217, i32 12, metadata !117, null}
!642 = metadata !{i32 217, i32 16, metadata !117, null}
!643 = metadata !{i32 218, i32 7, metadata !644, null}
!644 = metadata !{i32 786443, metadata !21, metadata !117, i32 218, i32 7, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/liolib.c]
!645 = metadata !{i32 218, i32 7, metadata !646, null}
!646 = metadata !{i32 786443, metadata !21, metadata !644, i32 218, i32 7, i32 1, i32 66} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/liolib.c]
!647 = metadata !{i32 219, i32 5, metadata !644, null}
!648 = metadata !{i32 220, i32 3, metadata !117, null}
!649 = metadata !{i32 786689, metadata !116, metadata !"L", metadata !22, i32 16777379, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 163]
!650 = metadata !{i32 163, i32 35, metadata !116, null}
!651 = metadata !{i32 786688, metadata !116, metadata !"p", metadata !22, i32 164, metadata !103, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 164]
!652 = metadata !{i32 164, i32 12, metadata !116, null}
!653 = metadata !{i32 164, i32 16, metadata !116, null}
!654 = metadata !{i32 165, i32 7, metadata !655, null}
!655 = metadata !{i32 786443, metadata !21, metadata !116, i32 165, i32 7, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/liolib.c]
!656 = metadata !{i32 166, i32 5, metadata !655, null}
!657 = metadata !{i32 168, i32 5, metadata !655, null}
!658 = metadata !{i32 169, i32 3, metadata !116, null}
!659 = metadata !{i32 786689, metadata !118, metadata !"L", metadata !22, i32 16777416, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 200]
!660 = metadata !{i32 200, i32 34, metadata !118, null}
!661 = metadata !{i32 786688, metadata !118, metadata !"p", metadata !22, i32 201, metadata !103, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 201]
!662 = metadata !{i32 201, i32 12, metadata !118, null}
!663 = metadata !{i32 201, i32 16, metadata !118, null}
!664 = metadata !{i32 786688, metadata !118, metadata !"cf", metadata !22, i32 202, metadata !665, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cf] [line 202]
!665 = metadata !{i32 786485, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !111} ; [ DW_TAG_volatile_type ] [line 0, size 0, align 0, offset 0] [from lua_CFunction]
!666 = metadata !{i32 202, i32 26, metadata !118, null}
!667 = metadata !{i32 202, i32 3, metadata !118, null}
!668 = metadata !{i32 203, i32 3, metadata !118, null}
!669 = metadata !{i32 204, i32 10, metadata !118, null}
!670 = metadata !{i32 786689, metadata !123, metadata !"L", metadata !22, i32 16777389, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 173]
!671 = metadata !{i32 173, i32 33, metadata !123, null}
!672 = metadata !{i32 786688, metadata !123, metadata !"p", metadata !22, i32 174, metadata !103, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 174]
!673 = metadata !{i32 174, i32 12, metadata !123, null}
!674 = metadata !{i32 174, i32 16, metadata !123, null}
!675 = metadata !{i32 175, i32 7, metadata !676, null}
!676 = metadata !{i32 786443, metadata !21, metadata !123, i32 175, i32 7, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/liolib.c]
!677 = metadata !{i32 176, i32 5, metadata !676, null}
!678 = metadata !{i32 178, i32 3, metadata !123, null}
!679 = metadata !{i32 786689, metadata !120, metadata !"L", metadata !22, i32 16777830, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 614]
!680 = metadata !{i32 614, i32 32, metadata !120, null}
!681 = metadata !{i32 786689, metadata !120, metadata !"f", metadata !22, i32 33555046, metadata !33, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [f] [line 614]
!682 = metadata !{i32 614, i32 41, metadata !120, null}
!683 = metadata !{i32 786689, metadata !120, metadata !"arg", metadata !22, i32 50332262, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [arg] [line 614]
!684 = metadata !{i32 614, i32 48, metadata !120, null}
!685 = metadata !{i32 786688, metadata !120, metadata !"nargs", metadata !22, i32 615, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nargs] [line 615]
!686 = metadata !{i32 615, i32 7, metadata !120, null}
!687 = metadata !{i32 615, i32 15, metadata !120, null}
!688 = metadata !{i32 786688, metadata !120, metadata !"status", metadata !22, i32 616, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [status] [line 616]
!689 = metadata !{i32 616, i32 7, metadata !120, null}
!690 = metadata !{i32 616, i32 3, metadata !120, null}
!691 = metadata !{i32 617, i32 3, metadata !692, null}
!692 = metadata !{i32 786443, metadata !21, metadata !120, i32 617, i32 3, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/liolib.c]
!693 = metadata !{i32 617, i32 3, metadata !694, null}
!694 = metadata !{i32 786443, metadata !21, metadata !695, i32 617, i32 3, i32 2, i32 73} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/liolib.c]
!695 = metadata !{i32 786443, metadata !21, metadata !692, i32 617, i32 3, i32 1, i32 67} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/liolib.c]
!696 = metadata !{i32 618, i32 9, metadata !697, null}
!697 = metadata !{i32 786443, metadata !21, metadata !698, i32 618, i32 9, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/liolib.c]
!698 = metadata !{i32 786443, metadata !21, metadata !692, i32 617, i32 26, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/liolib.c]
!699 = metadata !{i32 786688, metadata !700, metadata !"len", metadata !22, i32 620, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [len] [line 620]
!700 = metadata !{i32 786443, metadata !21, metadata !697, i32 618, i32 42, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/liolib.c]
!701 = metadata !{i32 620, i32 11, metadata !700, null}
!702 = metadata !{i32 620, i32 17, metadata !700, null}
!703 = metadata !{i32 621, i32 19, metadata !700, null}
!704 = metadata !{i32 621, i32 47, metadata !700, null}
!705 = metadata !{i32 622, i32 19, metadata !700, null}
!706 = metadata !{i32 622, i32 46, metadata !700, null}
!707 = metadata !{i32 622, i32 19, metadata !708, null}
!708 = metadata !{i32 786443, metadata !21, metadata !700, i32 622, i32 19, i32 1, i32 68} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/liolib.c]
!709 = metadata !{i32 623, i32 7, metadata !700, null}
!710 = metadata !{i32 623, i32 7, metadata !711, null}
!711 = metadata !{i32 786443, metadata !21, metadata !700, i32 623, i32 7, i32 1, i32 69} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/liolib.c]
!712 = metadata !{i32 623, i32 7, metadata !713, null}
!713 = metadata !{i32 786443, metadata !21, metadata !700, i32 623, i32 7, i32 2, i32 70} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/liolib.c]
!714 = metadata !{i32 624, i32 5, metadata !700, null}
!715 = metadata !{i32 786688, metadata !716, metadata !"l", metadata !22, i32 626, metadata !89, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [l] [line 626]
!716 = metadata !{i32 786443, metadata !21, metadata !697, i32 625, i32 10, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/liolib.c]
!717 = metadata !{i32 626, i32 14, metadata !716, null}
!718 = metadata !{i32 786688, metadata !716, metadata !"s", metadata !22, i32 627, metadata !97, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s] [line 627]
!719 = metadata !{i32 627, i32 19, metadata !716, null}
!720 = metadata !{i32 627, i32 23, metadata !716, null}
!721 = metadata !{i32 628, i32 7, metadata !716, null}
!722 = metadata !{i32 628, i32 27, metadata !723, null}
!723 = metadata !{i32 786443, metadata !21, metadata !716, i32 628, i32 27, i32 1, i32 71} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/liolib.c]
!724 = metadata !{i32 628, i32 27, metadata !725, null}
!725 = metadata !{i32 786443, metadata !21, metadata !716, i32 628, i32 27, i32 2, i32 72} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/liolib.c]
!726 = metadata !{i32 630, i32 3, metadata !698, null}
!727 = metadata !{i32 617, i32 19, metadata !692, null}
!728 = metadata !{i32 631, i32 7, metadata !729, null}
!729 = metadata !{i32 786443, metadata !21, metadata !120, i32 631, i32 7, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/liolib.c]
!730 = metadata !{i32 631, i32 15, metadata !731, null}
!731 = metadata !{i32 786443, metadata !21, metadata !729, i32 631, i32 15, i32 1, i32 74} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/liolib.c]
!732 = metadata !{i32 632, i32 15, metadata !729, null}
!733 = metadata !{i32 633, i32 1, metadata !120, null}
!734 = metadata !{i32 786689, metadata !129, metadata !"L", metadata !22, i32 16777739, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 523]
!735 = metadata !{i32 523, i32 31, metadata !129, null}
!736 = metadata !{i32 786689, metadata !129, metadata !"f", metadata !22, i32 33554955, metadata !33, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [f] [line 523]
!737 = metadata !{i32 523, i32 40, metadata !129, null}
!738 = metadata !{i32 786689, metadata !129, metadata !"first", metadata !22, i32 50332171, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [first] [line 523]
!739 = metadata !{i32 523, i32 47, metadata !129, null}
!740 = metadata !{i32 786688, metadata !129, metadata !"nargs", metadata !22, i32 524, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nargs] [line 524]
!741 = metadata !{i32 524, i32 7, metadata !129, null}
!742 = metadata !{i32 524, i32 15, metadata !129, null}
!743 = metadata !{i32 786688, metadata !129, metadata !"success", metadata !22, i32 525, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [success] [line 525]
!744 = metadata !{i32 525, i32 7, metadata !129, null}
!745 = metadata !{i32 786688, metadata !129, metadata !"n", metadata !22, i32 526, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 526]
!746 = metadata !{i32 526, i32 7, metadata !129, null}
!747 = metadata !{i32 527, i32 3, metadata !129, null}
!748 = metadata !{i32 528, i32 7, metadata !749, null}
!749 = metadata !{i32 786443, metadata !21, metadata !129, i32 528, i32 7, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/liolib.c]
!750 = metadata !{i32 529, i32 15, metadata !751, null}
!751 = metadata !{i32 786443, metadata !21, metadata !749, i32 528, i32 19, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/liolib.c]
!752 = metadata !{i32 530, i32 5, metadata !751, null}
!753 = metadata !{i32 531, i32 3, metadata !751, null}
!754 = metadata !{i32 533, i32 5, metadata !755, null}
!755 = metadata !{i32 786443, metadata !21, metadata !749, i32 532, i32 8, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/liolib.c]
!756 = metadata !{i32 534, i32 5, metadata !755, null}
!757 = metadata !{i32 535, i32 10, metadata !758, null}
!758 = metadata !{i32 786443, metadata !21, metadata !755, i32 535, i32 5, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/liolib.c]
!759 = metadata !{i32 535, i32 10, metadata !760, null}
!760 = metadata !{i32 786443, metadata !21, metadata !761, i32 535, i32 10, i32 4, i32 83} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/liolib.c]
!761 = metadata !{i32 786443, metadata !21, metadata !758, i32 535, i32 10, i32 1, i32 75} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/liolib.c]
!762 = metadata !{i32 535, i32 10, metadata !763, null}
!763 = metadata !{i32 786443, metadata !21, metadata !758, i32 535, i32 10, i32 2, i32 76} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/liolib.c]
!764 = metadata !{i32 535, i32 10, metadata !765, null}
!765 = metadata !{i32 786443, metadata !21, metadata !758, i32 535, i32 10, i32 3, i32 77} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/liolib.c]
!766 = metadata !{i32 536, i32 11, metadata !767, null}
!767 = metadata !{i32 786443, metadata !21, metadata !768, i32 536, i32 11, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/liolib.c]
!768 = metadata !{i32 786443, metadata !21, metadata !758, i32 535, i32 46, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/liolib.c]
!769 = metadata !{i32 786688, metadata !770, metadata !"l", metadata !22, i32 537, metadata !89, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [l] [line 537]
!770 = metadata !{i32 786443, metadata !21, metadata !767, i32 536, i32 42, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/liolib.c]
!771 = metadata !{i32 537, i32 16, metadata !770, null}
!772 = metadata !{i32 537, i32 28, metadata !770, null}
!773 = metadata !{i32 538, i32 9, metadata !770, null}
!774 = metadata !{i32 538, i32 30, metadata !775, null}
!775 = metadata !{i32 786443, metadata !21, metadata !770, i32 538, i32 30, i32 1, i32 78} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/liolib.c]
!776 = metadata !{i32 538, i32 47, metadata !777, null}
!777 = metadata !{i32 786443, metadata !21, metadata !770, i32 538, i32 47, i32 2, i32 79} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/liolib.c]
!778 = metadata !{i32 538, i32 47, metadata !770, null}
!779 = metadata !{i32 538, i32 47, metadata !780, null}
!780 = metadata !{i32 786443, metadata !21, metadata !781, i32 538, i32 47, i32 4, i32 81} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/liolib.c]
!781 = metadata !{i32 786443, metadata !21, metadata !770, i32 538, i32 47, i32 3, i32 80} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/liolib.c]
!782 = metadata !{i32 539, i32 7, metadata !770, null}
!783 = metadata !{i32 786688, metadata !784, metadata !"p", metadata !22, i32 541, metadata !97, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 541]
!784 = metadata !{i32 786443, metadata !21, metadata !767, i32 540, i32 12, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/liolib.c]
!785 = metadata !{i32 541, i32 21, metadata !784, null}
!786 = metadata !{i32 541, i32 25, metadata !784, null}
!787 = metadata !{i32 542, i32 13, metadata !788, null}
!788 = metadata !{i32 786443, metadata !21, metadata !784, i32 542, i32 13, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/liolib.c]
!789 = metadata !{i32 542, i32 24, metadata !790, null}
!790 = metadata !{i32 786443, metadata !21, metadata !788, i32 542, i32 24, i32 1, i32 82} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/liolib.c]
!791 = metadata !{i32 543, i32 9, metadata !784, null}
!792 = metadata !{i32 545, i32 23, metadata !793, null}
!793 = metadata !{i32 786443, metadata !21, metadata !784, i32 543, i32 21, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/liolib.c]
!794 = metadata !{i32 546, i32 13, metadata !793, null}
!795 = metadata !{i32 548, i32 23, metadata !793, null}
!796 = metadata !{i32 549, i32 13, metadata !793, null}
!797 = metadata !{i32 551, i32 23, metadata !793, null}
!798 = metadata !{i32 552, i32 13, metadata !793, null}
!799 = metadata !{i32 554, i32 13, metadata !793, null}
!800 = metadata !{i32 555, i32 13, metadata !793, null}
!801 = metadata !{i32 556, i32 13, metadata !793, null}
!802 = metadata !{i32 558, i32 20, metadata !793, null}
!803 = metadata !{i32 561, i32 5, metadata !768, null}
!804 = metadata !{i32 535, i32 41, metadata !758, null}
!805 = metadata !{i32 563, i32 7, metadata !806, null}
!806 = metadata !{i32 786443, metadata !21, metadata !129, i32 563, i32 7, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/liolib.c]
!807 = metadata !{i32 564, i32 12, metadata !806, null}
!808 = metadata !{i32 565, i32 7, metadata !809, null}
!809 = metadata !{i32 786443, metadata !21, metadata !129, i32 565, i32 7, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/liolib.c]
!810 = metadata !{i32 566, i32 5, metadata !811, null}
!811 = metadata !{i32 786443, metadata !21, metadata !809, i32 565, i32 17, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/liolib.c]
!812 = metadata !{i32 567, i32 5, metadata !811, null}
!813 = metadata !{i32 568, i32 3, metadata !811, null}
!814 = metadata !{i32 569, i32 3, metadata !129, null}
!815 = metadata !{i32 570, i32 1, metadata !129, null}
!816 = metadata !{i32 786689, metadata !160, metadata !"L", metadata !22, i32 16777692, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 476]
!817 = metadata !{i32 476, i32 34, metadata !160, null}
!818 = metadata !{i32 786689, metadata !160, metadata !"f", metadata !22, i32 33554908, metadata !33, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [f] [line 476]
!819 = metadata !{i32 476, i32 43, metadata !160, null}
!820 = metadata !{i32 786689, metadata !160, metadata !"chop", metadata !22, i32 50332124, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [chop] [line 476]
!821 = metadata !{i32 476, i32 50, metadata !160, null}
!822 = metadata !{i32 786688, metadata !160, metadata !"b", metadata !22, i32 477, metadata !823, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b] [line 477]
!823 = metadata !{i32 786454, metadata !106, null, metadata !"luaL_Buffer", i32 146, i64 0, i64 0, i64 0, i32 0, metadata !824} ; [ DW_TAG_typedef ] [luaL_Buffer] [line 146, size 0, align 0, offset 0] [from luaL_Buffer]
!824 = metadata !{i32 786451, metadata !106, null, metadata !"luaL_Buffer", i32 140, i64 65664, i64 32, i32 0, i32 0, null, metadata !825, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [luaL_Buffer] [line 140, size 65664, align 32, offset 0] [def] [from ]
!825 = metadata !{metadata !826, metadata !827, metadata !828, metadata !829, metadata !830}
!826 = metadata !{i32 786445, metadata !106, metadata !824, metadata !"b", i32 141, i64 32, i64 32, i64 0, i32 0, metadata !41} ; [ DW_TAG_member ] [b] [line 141, size 32, align 32, offset 0] [from ]
!827 = metadata !{i32 786445, metadata !106, metadata !824, metadata !"size", i32 142, i64 32, i64 32, i64 32, i32 0, metadata !89} ; [ DW_TAG_member ] [size] [line 142, size 32, align 32, offset 32] [from size_t]
!828 = metadata !{i32 786445, metadata !106, metadata !824, metadata !"n", i32 143, i64 32, i64 32, i64 64, i32 0, metadata !89} ; [ DW_TAG_member ] [n] [line 143, size 32, align 32, offset 64] [from size_t]
!829 = metadata !{i32 786445, metadata !106, metadata !824, metadata !"L", i32 144, i64 32, i64 32, i64 96, i32 0, metadata !26} ; [ DW_TAG_member ] [L] [line 144, size 32, align 32, offset 96] [from ]
!830 = metadata !{i32 786445, metadata !106, metadata !824, metadata !"initb", i32 145, i64 65536, i64 8, i64 128, i32 0, metadata !831} ; [ DW_TAG_member ] [initb] [line 145, size 65536, align 8, offset 128] [from ]
!831 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 65536, i64 8, i32 0, i32 0, metadata !42, metadata !832, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 65536, align 8, offset 0] [from char]
!832 = metadata !{metadata !833}
!833 = metadata !{i32 786465, i64 0, i64 8192}    ; [ DW_TAG_subrange_type ] [0, 8191]
!834 = metadata !{i32 477, i32 15, metadata !160, null}
!835 = metadata !{i32 786688, metadata !160, metadata !"c", metadata !22, i32 478, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c] [line 478]
!836 = metadata !{i32 478, i32 7, metadata !160, null}
!837 = metadata !{i32 478, i32 3, metadata !160, null}
!838 = metadata !{i32 479, i32 3, metadata !160, null}
!839 = metadata !{i32 480, i32 3, metadata !160, null}
!840 = metadata !{i32 480, i32 3, metadata !841, null}
!841 = metadata !{i32 786443, metadata !21, metadata !160, i32 480, i32 3, i32 1, i32 84} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/liolib.c]
!842 = metadata !{i32 480, i32 3, metadata !843, null}
!843 = metadata !{i32 786443, metadata !21, metadata !160, i32 480, i32 3, i32 2, i32 85} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/liolib.c]
!844 = metadata !{i32 480, i32 3, metadata !845, null}
!845 = metadata !{i32 786443, metadata !21, metadata !160, i32 480, i32 3, i32 3, i32 86} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/liolib.c]
!846 = metadata !{i32 786688, metadata !847, metadata !"buff", metadata !22, i32 481, metadata !41, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buff] [line 481]
!847 = metadata !{i32 786443, metadata !21, metadata !160, i32 480, i32 33, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/liolib.c]
!848 = metadata !{i32 481, i32 11, metadata !847, null}
!849 = metadata !{i32 481, i32 18, metadata !847, null}
!850 = metadata !{i32 786688, metadata !847, metadata !"i", metadata !22, i32 482, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 482]
!851 = metadata !{i32 482, i32 9, metadata !847, null}
!852 = metadata !{i32 482, i32 5, metadata !847, null}
!853 = metadata !{i32 484, i32 5, metadata !847, null}
!854 = metadata !{i32 484, i32 5, metadata !855, null}
!855 = metadata !{i32 786443, metadata !21, metadata !847, i32 484, i32 5, i32 1, i32 87} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/liolib.c]
!856 = metadata !{i32 484, i32 40, metadata !857, null}
!857 = metadata !{i32 786443, metadata !21, metadata !847, i32 484, i32 40, i32 2, i32 88} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/liolib.c]
!858 = metadata !{i32 484, i32 40, metadata !859, null}
!859 = metadata !{i32 786443, metadata !21, metadata !847, i32 484, i32 40, i32 4, i32 90} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/liolib.c]
!860 = metadata !{i32 484, i32 40, metadata !861, null}
!861 = metadata !{i32 786443, metadata !21, metadata !862, i32 484, i32 40, i32 5, i32 91} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/liolib.c]
!862 = metadata !{i32 786443, metadata !21, metadata !847, i32 484, i32 40, i32 3, i32 89} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/liolib.c]
!863 = metadata !{i32 485, i32 7, metadata !847, null}
!864 = metadata !{i32 487, i32 5, metadata !847, null}
!865 = metadata !{i32 488, i32 3, metadata !847, null}
!866 = metadata !{i32 489, i32 7, metadata !867, null}
!867 = metadata !{i32 786443, metadata !21, metadata !160, i32 489, i32 7, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/liolib.c]
!868 = metadata !{i32 489, i32 7, metadata !869, null}
!869 = metadata !{i32 786443, metadata !21, metadata !867, i32 489, i32 7, i32 1, i32 92} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/liolib.c]
!870 = metadata !{i32 490, i32 5, metadata !867, null}
!871 = metadata !{i32 490, i32 5, metadata !872, null}
!872 = metadata !{i32 786443, metadata !21, metadata !867, i32 490, i32 5, i32 2, i32 94} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/liolib.c]
!873 = metadata !{i32 490, i32 5, metadata !874, null}
!874 = metadata !{i32 786443, metadata !21, metadata !875, i32 490, i32 5, i32 3, i32 95} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/liolib.c]
!875 = metadata !{i32 786443, metadata !21, metadata !867, i32 490, i32 5, i32 1, i32 93} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/liolib.c]
!876 = metadata !{i32 491, i32 3, metadata !160, null}
!877 = metadata !{i32 493, i32 3, metadata !160, null}
!878 = metadata !{i32 493, i32 24, metadata !879, null}
!879 = metadata !{i32 786443, metadata !21, metadata !160, i32 493, i32 24, i32 2, i32 97} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/liolib.c]
!880 = metadata !{i32 493, i32 24, metadata !881, null}
!881 = metadata !{i32 786443, metadata !21, metadata !882, i32 493, i32 24, i32 3, i32 98} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/liolib.c]
!882 = metadata !{i32 786443, metadata !21, metadata !160, i32 493, i32 24, i32 1, i32 96} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/liolib.c]
!883 = metadata !{i32 786689, metadata !159, metadata !"L", metadata !22, i32 16777684, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 468]
!884 = metadata !{i32 468, i32 33, metadata !159, null}
!885 = metadata !{i32 786689, metadata !159, metadata !"f", metadata !22, i32 33554900, metadata !33, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [f] [line 468]
!886 = metadata !{i32 468, i32 42, metadata !159, null}
!887 = metadata !{i32 786688, metadata !159, metadata !"c", metadata !22, i32 469, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c] [line 469]
!888 = metadata !{i32 469, i32 7, metadata !159, null}
!889 = metadata !{i32 469, i32 11, metadata !159, null}
!890 = metadata !{i32 470, i32 3, metadata !159, null}
!891 = metadata !{i32 471, i32 3, metadata !159, null}
!892 = metadata !{i32 472, i32 3, metadata !159, null}
!893 = metadata !{i32 786689, metadata !156, metadata !"L", metadata !22, i32 16777726, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 510]
!894 = metadata !{i32 510, i32 35, metadata !156, null}
!895 = metadata !{i32 786689, metadata !156, metadata !"f", metadata !22, i32 33554942, metadata !33, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [f] [line 510]
!896 = metadata !{i32 510, i32 44, metadata !156, null}
!897 = metadata !{i32 786689, metadata !156, metadata !"n", metadata !22, i32 50332158, metadata !89, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 510]
!898 = metadata !{i32 510, i32 54, metadata !156, null}
!899 = metadata !{i32 786688, metadata !156, metadata !"nr", metadata !22, i32 511, metadata !89, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nr] [line 511]
!900 = metadata !{i32 511, i32 10, metadata !156, null}
!901 = metadata !{i32 786688, metadata !156, metadata !"p", metadata !22, i32 512, metadata !41, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 512]
!902 = metadata !{i32 512, i32 9, metadata !156, null}
!903 = metadata !{i32 786688, metadata !156, metadata !"b", metadata !22, i32 513, metadata !823, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b] [line 513]
!904 = metadata !{i32 513, i32 15, metadata !156, null}
!905 = metadata !{i32 514, i32 3, metadata !156, null}
!906 = metadata !{i32 515, i32 7, metadata !156, null}
!907 = metadata !{i32 516, i32 8, metadata !156, null}
!908 = metadata !{i32 517, i32 3, metadata !156, null}
!909 = metadata !{i32 518, i32 3, metadata !156, null}
!910 = metadata !{i32 519, i32 3, metadata !156, null}
!911 = metadata !{i32 786689, metadata !133, metadata !"L", metadata !22, i32 16777650, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 434]
!912 = metadata !{i32 434, i32 36, metadata !133, null}
!913 = metadata !{i32 786689, metadata !133, metadata !"f", metadata !22, i32 33554866, metadata !33, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [f] [line 434]
!914 = metadata !{i32 434, i32 45, metadata !133, null}
!915 = metadata !{i32 786688, metadata !133, metadata !"rn", metadata !22, i32 435, metadata !140, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rn] [line 435]
!916 = metadata !{i32 435, i32 6, metadata !133, null}
!917 = metadata !{i32 786688, metadata !133, metadata !"count", metadata !22, i32 436, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [count] [line 436]
!918 = metadata !{i32 436, i32 7, metadata !133, null}
!919 = metadata !{i32 436, i32 3, metadata !133, null}
!920 = metadata !{i32 786688, metadata !133, metadata !"hex", metadata !22, i32 437, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [hex] [line 437]
!921 = metadata !{i32 437, i32 7, metadata !133, null}
!922 = metadata !{i32 437, i32 3, metadata !133, null}
!923 = metadata !{i32 786688, metadata !133, metadata !"decp", metadata !22, i32 438, metadata !924, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [decp] [line 438]
!924 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 16, i64 8, i32 0, i32 0, metadata !42, metadata !925, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 16, align 8, offset 0] [from char]
!925 = metadata !{metadata !926}
!926 = metadata !{i32 786465, i64 0, i64 2}       ; [ DW_TAG_subrange_type ] [0, 1]
!927 = metadata !{i32 438, i32 8, metadata !133, null}
!928 = metadata !{i32 439, i32 3, metadata !133, null}
!929 = metadata !{i32 439, i32 13, metadata !133, null}
!930 = metadata !{i32 440, i32 13, metadata !133, null}
!931 = metadata !{i32 441, i32 3, metadata !133, null}
!932 = metadata !{i32 443, i32 3, metadata !133, null}
!933 = metadata !{i32 443, i32 15, metadata !934, null}
!934 = metadata !{i32 786443, metadata !21, metadata !935, i32 443, i32 15, i32 3, i32 101} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/liolib.c]
!935 = metadata !{i32 786443, metadata !21, metadata !936, i32 443, i32 15, i32 1, i32 99} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/liolib.c]
!936 = metadata !{i32 786443, metadata !21, metadata !133, i32 443, i32 6, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/liolib.c]
!937 = metadata !{i32 443, i32 29, metadata !936, null}
!938 = metadata !{i32 443, i32 29, metadata !939, null}
!939 = metadata !{i32 786443, metadata !21, metadata !936, i32 443, i32 29, i32 2, i32 100} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/liolib.c]
!940 = metadata !{i32 443, i32 38, metadata !133, null}
!941 = metadata !{i32 444, i32 3, metadata !133, null}
!942 = metadata !{i32 445, i32 7, metadata !943, null}
!943 = metadata !{i32 786443, metadata !21, metadata !133, i32 445, i32 7, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/liolib.c]
!944 = metadata !{i32 446, i32 9, metadata !945, null}
!945 = metadata !{i32 786443, metadata !21, metadata !946, i32 446, i32 9, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/liolib.c]
!946 = metadata !{i32 786443, metadata !21, metadata !943, i32 445, i32 25, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/liolib.c]
!947 = metadata !{i32 446, i32 27, metadata !948, null}
!948 = metadata !{i32 786443, metadata !21, metadata !945, i32 446, i32 27, i32 1, i32 102} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/liolib.c]
!949 = metadata !{i32 447, i32 10, metadata !945, null}
!950 = metadata !{i32 448, i32 3, metadata !946, null}
!951 = metadata !{i32 449, i32 12, metadata !133, null}
!952 = metadata !{i32 450, i32 7, metadata !953, null}
!953 = metadata !{i32 786443, metadata !21, metadata !133, i32 450, i32 7, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/liolib.c]
!954 = metadata !{i32 451, i32 14, metadata !953, null}
!955 = metadata !{i32 452, i32 7, metadata !956, null}
!956 = metadata !{i32 786443, metadata !21, metadata !133, i32 452, i32 7, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/liolib.c]
!957 = metadata !{i32 452, i32 20, metadata !958, null}
!958 = metadata !{i32 786443, metadata !21, metadata !956, i32 452, i32 20, i32 1, i32 103} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/liolib.c]
!959 = metadata !{i32 453, i32 5, metadata !960, null}
!960 = metadata !{i32 786443, metadata !21, metadata !956, i32 452, i32 53, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/liolib.c]
!961 = metadata !{i32 454, i32 5, metadata !960, null}
!962 = metadata !{i32 455, i32 3, metadata !960, null}
!963 = metadata !{i32 456, i32 3, metadata !133, null}
!964 = metadata !{i32 458, i32 3, metadata !133, null}
!965 = metadata !{i32 459, i32 7, metadata !966, null}
!966 = metadata !{i32 786443, metadata !21, metadata !133, i32 459, i32 7, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/liolib.c]
!967 = metadata !{i32 460, i32 5, metadata !966, null}
!968 = metadata !{i32 462, i32 4, metadata !969, null}
!969 = metadata !{i32 786443, metadata !21, metadata !966, i32 461, i32 8, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/liolib.c]
!970 = metadata !{i32 463, i32 4, metadata !969, null}
!971 = metadata !{i32 465, i32 1, metadata !133, null}
!972 = metadata !{i32 786689, metadata !130, metadata !"L", metadata !22, i32 16777713, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 497]
!973 = metadata !{i32 497, i32 34, metadata !130, null}
!974 = metadata !{i32 786689, metadata !130, metadata !"f", metadata !22, i32 33554929, metadata !33, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [f] [line 497]
!975 = metadata !{i32 497, i32 43, metadata !130, null}
!976 = metadata !{i32 786688, metadata !130, metadata !"nr", metadata !22, i32 498, metadata !89, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nr] [line 498]
!977 = metadata !{i32 498, i32 10, metadata !130, null}
!978 = metadata !{i32 786688, metadata !130, metadata !"b", metadata !22, i32 499, metadata !823, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b] [line 499]
!979 = metadata !{i32 499, i32 15, metadata !130, null}
!980 = metadata !{i32 500, i32 3, metadata !130, null}
!981 = metadata !{i32 501, i32 3, metadata !130, null}
!982 = metadata !{i32 786688, metadata !983, metadata !"p", metadata !22, i32 502, metadata !41, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 502]
!983 = metadata !{i32 786443, metadata !21, metadata !130, i32 501, i32 6, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/liolib.c]
!984 = metadata !{i32 502, i32 11, metadata !983, null}
!985 = metadata !{i32 502, i32 15, metadata !983, null}
!986 = metadata !{i32 503, i32 10, metadata !983, null}
!987 = metadata !{i32 504, i32 5, metadata !983, null}
!988 = metadata !{i32 505, i32 3, metadata !983, null}
!989 = metadata !{i32 505, i32 3, metadata !990, null}
!990 = metadata !{i32 786443, metadata !21, metadata !983, i32 505, i32 3, i32 1, i32 104} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/liolib.c]
!991 = metadata !{i32 506, i32 3, metadata !130, null}
!992 = metadata !{i32 507, i32 1, metadata !130, null}
!993 = metadata !{i32 786689, metadata !153, metadata !"rn", metadata !22, i32 16777627, metadata !139, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rn] [line 411]
!994 = metadata !{i32 411, i32 23, metadata !153, null}
!995 = metadata !{i32 786689, metadata !153, metadata !"set", metadata !22, i32 33554843, metadata !97, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [set] [line 411]
!996 = metadata !{i32 411, i32 39, metadata !153, null}
!997 = metadata !{i32 412, i32 7, metadata !998, null}
!998 = metadata !{i32 786443, metadata !21, metadata !153, i32 412, i32 7, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/liolib.c]
!999 = metadata !{i32 412, i32 7, metadata !1000, null}
!1000 = metadata !{i32 786443, metadata !21, metadata !998, i32 412, i32 7, i32 1, i32 105} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/liolib.c]
!1001 = metadata !{i32 413, i32 12, metadata !998, null}
!1002 = metadata !{i32 414, i32 8, metadata !998, null}
!1003 = metadata !{i32 415, i32 1, metadata !153, null}
!1004 = metadata !{i32 786689, metadata !136, metadata !"rn", metadata !22, i32 16777637, metadata !139, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rn] [line 421]
!1005 = metadata !{i32 421, i32 28, metadata !136, null}
!1006 = metadata !{i32 786689, metadata !136, metadata !"hex", metadata !22, i32 33554853, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [hex] [line 421]
!1007 = metadata !{i32 421, i32 36, metadata !136, null}
!1008 = metadata !{i32 786688, metadata !136, metadata !"count", metadata !22, i32 422, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [count] [line 422]
!1009 = metadata !{i32 422, i32 7, metadata !136, null}
!1010 = metadata !{i32 422, i32 3, metadata !136, null}
!1011 = metadata !{i32 423, i32 3, metadata !136, null}
!1012 = metadata !{i32 423, i32 3, metadata !1013, null}
!1013 = metadata !{i32 786443, metadata !21, metadata !136, i32 423, i32 3, i32 1, i32 106} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/liolib.c]
!1014 = metadata !{i32 423, i32 3, metadata !1015, null}
!1015 = metadata !{i32 786443, metadata !21, metadata !136, i32 423, i32 3, i32 2, i32 107} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/liolib.c]
!1016 = metadata !{i32 423, i32 17, metadata !136, null}
!1017 = metadata !{i32 423, i32 17, metadata !1018, null}
!1018 = metadata !{i32 786443, metadata !21, metadata !136, i32 423, i32 17, i32 3, i32 108} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/liolib.c]
!1019 = metadata !{i32 423, i32 35, metadata !136, null}
!1020 = metadata !{i32 423, i32 54, metadata !1021, null}
!1021 = metadata !{i32 786443, metadata !21, metadata !1022, i32 423, i32 54, i32 6, i32 111} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/liolib.c]
!1022 = metadata !{i32 786443, metadata !21, metadata !136, i32 423, i32 54, i32 4, i32 109} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/liolib.c]
!1023 = metadata !{i32 423, i32 54, metadata !1024, null}
!1024 = metadata !{i32 786443, metadata !21, metadata !1025, i32 423, i32 54, i32 7, i32 112} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/liolib.c]
!1025 = metadata !{i32 786443, metadata !21, metadata !136, i32 423, i32 54, i32 5, i32 110} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/liolib.c]
!1026 = metadata !{i32 424, i32 5, metadata !136, null}
!1027 = metadata !{i32 425, i32 3, metadata !136, null}
!1028 = metadata !{i32 786689, metadata !150, metadata !"rn", metadata !22, i32 16777611, metadata !139, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rn] [line 395]
!1029 = metadata !{i32 395, i32 23, metadata !150, null}
!1030 = metadata !{i32 396, i32 7, metadata !1031, null}
!1031 = metadata !{i32 786443, metadata !21, metadata !150, i32 396, i32 7, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/liolib.c]
!1032 = metadata !{i32 397, i32 5, metadata !1033, null}
!1033 = metadata !{i32 786443, metadata !21, metadata !1031, i32 396, i32 29, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/liolib.c]
!1034 = metadata !{i32 398, i32 5, metadata !1033, null}
!1035 = metadata !{i32 401, i32 5, metadata !1036, null}
!1036 = metadata !{i32 786443, metadata !21, metadata !1031, i32 400, i32 8, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/liolib.c]
!1037 = metadata !{i32 402, i32 13, metadata !1036, null}
!1038 = metadata !{i32 403, i32 5, metadata !1036, null}
!1039 = metadata !{i32 405, i32 1, metadata !150, null}
!1040 = metadata !{i32 786689, metadata !162, metadata !"L", metadata !22, i32 16777549, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 333]
!1041 = metadata !{i32 333, i32 35, metadata !162, null}
!1042 = metadata !{i32 786689, metadata !162, metadata !"toclose", metadata !22, i32 33554765, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [toclose] [line 333]
!1043 = metadata !{i32 333, i32 42, metadata !162, null}
!1044 = metadata !{i32 786688, metadata !162, metadata !"n", metadata !22, i32 334, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 334]
!1045 = metadata !{i32 334, i32 7, metadata !162, null}
!1046 = metadata !{i32 334, i32 11, metadata !162, null}
!1047 = metadata !{i32 335, i32 3, metadata !162, null}
!1048 = metadata !{i32 335, i32 3, metadata !1049, null}
!1049 = metadata !{i32 786443, metadata !21, metadata !162, i32 335, i32 3, i32 2, i32 114} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/liolib.c]
!1050 = metadata !{i32 335, i32 3, metadata !1051, null}
!1051 = metadata !{i32 786443, metadata !21, metadata !1052, i32 335, i32 3, i32 3, i32 115} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/liolib.c]
!1052 = metadata !{i32 786443, metadata !21, metadata !162, i32 335, i32 3, i32 1, i32 113} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/liolib.c]
!1053 = metadata !{i32 336, i32 3, metadata !162, null}
!1054 = metadata !{i32 337, i32 3, metadata !162, null}
!1055 = metadata !{i32 338, i32 3, metadata !162, null}
!1056 = metadata !{i32 339, i32 3, metadata !162, null}
!1057 = metadata !{i32 340, i32 1, metadata !162, null}
!1058 = metadata !{i32 786689, metadata !165, metadata !"L", metadata !22, i32 16777799, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 583]
!1059 = metadata !{i32 583, i32 36, metadata !165, null}
!1060 = metadata !{i32 786688, metadata !165, metadata !"p", metadata !22, i32 584, metadata !103, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 584]
!1061 = metadata !{i32 584, i32 12, metadata !165, null}
!1062 = metadata !{i32 584, i32 27, metadata !165, null}
!1063 = metadata !{i32 786688, metadata !165, metadata !"i", metadata !22, i32 585, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 585]
!1064 = metadata !{i32 585, i32 7, metadata !165, null}
!1065 = metadata !{i32 786688, metadata !165, metadata !"n", metadata !22, i32 586, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 586]
!1066 = metadata !{i32 586, i32 7, metadata !165, null}
!1067 = metadata !{i32 586, i32 16, metadata !165, null}
!1068 = metadata !{i32 587, i32 7, metadata !1069, null}
!1069 = metadata !{i32 786443, metadata !21, metadata !165, i32 587, i32 7, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/liolib.c]
!1070 = metadata !{i32 588, i32 12, metadata !1069, null}
!1071 = metadata !{i32 589, i32 3, metadata !165, null}
!1072 = metadata !{i32 590, i32 3, metadata !165, null}
!1073 = metadata !{i32 591, i32 8, metadata !1074, null}
!1074 = metadata !{i32 786443, metadata !21, metadata !165, i32 591, i32 3, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/liolib.c]
!1075 = metadata !{i32 591, i32 8, metadata !1076, null}
!1076 = metadata !{i32 786443, metadata !21, metadata !1077, i32 591, i32 8, i32 2, i32 117} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/liolib.c]
!1077 = metadata !{i32 786443, metadata !21, metadata !1074, i32 591, i32 8, i32 1, i32 116} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/liolib.c]
!1078 = metadata !{i32 592, i32 5, metadata !1074, null}
!1079 = metadata !{i32 591, i32 23, metadata !1074, null}
!1080 = metadata !{i32 593, i32 7, metadata !165, null}
!1081 = metadata !{i32 595, i32 7, metadata !1082, null}
!1082 = metadata !{i32 786443, metadata !21, metadata !165, i32 595, i32 7, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/liolib.c]
!1083 = metadata !{i32 596, i32 5, metadata !1082, null}
!1084 = metadata !{i32 598, i32 9, metadata !1085, null}
!1085 = metadata !{i32 786443, metadata !21, metadata !1086, i32 598, i32 9, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/liolib.c]
!1086 = metadata !{i32 786443, metadata !21, metadata !1082, i32 597, i32 8, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/liolib.c]
!1087 = metadata !{i32 600, i32 14, metadata !1088, null}
!1088 = metadata !{i32 786443, metadata !21, metadata !1085, i32 598, i32 16, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/liolib.c]
!1089 = metadata !{i32 600, i32 34, metadata !1088, null}
!1090 = metadata !{i32 602, i32 9, metadata !1091, null}
!1091 = metadata !{i32 786443, metadata !21, metadata !1086, i32 602, i32 9, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/liolib.c]
!1092 = metadata !{i32 603, i32 7, metadata !1093, null}
!1093 = metadata !{i32 786443, metadata !21, metadata !1091, i32 602, i32 48, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/liolib.c]
!1094 = metadata !{i32 604, i32 7, metadata !1093, null}
!1095 = metadata !{i32 605, i32 7, metadata !1093, null}
!1096 = metadata !{i32 606, i32 5, metadata !1093, null}
!1097 = metadata !{i32 607, i32 5, metadata !1086, null}
!1098 = metadata !{i32 609, i32 1, metadata !165, null}
!1099 = metadata !{i32 786689, metadata !189, metadata !"L", metadata !22, i32 16777895, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 679]
!1100 = metadata !{i32 679, i32 33, metadata !189, null}
!1101 = metadata !{i32 680, i32 10, metadata !189, null}
!1102 = metadata !{i32 680, i32 36, metadata !189, null}
!1103 = metadata !{i32 680, i32 29, metadata !189, null}
!1104 = metadata !{i32 786689, metadata !188, metadata !"L", metadata !22, i32 16777530, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 314]
!1105 = metadata !{i32 314, i32 33, metadata !188, null}
!1106 = metadata !{i32 315, i32 10, metadata !188, null}
!1107 = metadata !{i32 786689, metadata !187, metadata !"L", metadata !22, i32 16777566, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 350]
!1108 = metadata !{i32 350, i32 33, metadata !187, null}
!1109 = metadata !{i32 786688, metadata !187, metadata !"toclose", metadata !22, i32 351, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [toclose] [line 351]
!1110 = metadata !{i32 351, i32 7, metadata !187, null}
!1111 = metadata !{i32 352, i32 7, metadata !1112, null}
!1112 = metadata !{i32 786443, metadata !21, metadata !187, i32 352, i32 7, i32 0, i32 59} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/liolib.c]
!1113 = metadata !{i32 352, i32 25, metadata !1114, null}
!1114 = metadata !{i32 786443, metadata !21, metadata !1112, i32 352, i32 25, i32 1, i32 118} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/liolib.c]
!1115 = metadata !{i32 353, i32 7, metadata !1116, null}
!1116 = metadata !{i32 786443, metadata !21, metadata !187, i32 353, i32 7, i32 0, i32 60} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/liolib.c]
!1117 = metadata !{i32 354, i32 5, metadata !1118, null}
!1118 = metadata !{i32 786443, metadata !21, metadata !1116, i32 353, i32 24, i32 0, i32 61} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/liolib.c]
!1119 = metadata !{i32 355, i32 5, metadata !1118, null}
!1120 = metadata !{i32 356, i32 5, metadata !1118, null}
!1121 = metadata !{i32 357, i32 5, metadata !1118, null}
!1122 = metadata !{i32 358, i32 3, metadata !1118, null}
!1123 = metadata !{i32 786688, metadata !1124, metadata !"filename", metadata !22, i32 360, metadata !97, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [filename] [line 360]
!1124 = metadata !{i32 786443, metadata !21, metadata !1116, i32 359, i32 8, i32 0, i32 62} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/liolib.c]
!1125 = metadata !{i32 360, i32 17, metadata !1124, null}
!1126 = metadata !{i32 360, i32 28, metadata !1124, null}
!1127 = metadata !{i32 361, i32 5, metadata !1124, null}
!1128 = metadata !{i32 362, i32 5, metadata !1124, null}
!1129 = metadata !{i32 363, i32 5, metadata !1124, null}
!1130 = metadata !{i32 365, i32 3, metadata !187, null}
!1131 = metadata !{i32 366, i32 3, metadata !187, null}
!1132 = metadata !{i32 786689, metadata !186, metadata !"L", metadata !22, i32 16777466, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 250]
!1133 = metadata !{i32 250, i32 32, metadata !186, null}
!1134 = metadata !{i32 786688, metadata !186, metadata !"filename", metadata !22, i32 251, metadata !97, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [filename] [line 251]
!1135 = metadata !{i32 251, i32 15, metadata !186, null}
!1136 = metadata !{i32 251, i32 26, metadata !186, null}
!1137 = metadata !{i32 786688, metadata !186, metadata !"mode", metadata !22, i32 252, metadata !97, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mode] [line 252]
!1138 = metadata !{i32 252, i32 15, metadata !186, null}
!1139 = metadata !{i32 252, i32 22, metadata !186, null}
!1140 = metadata !{i32 786688, metadata !186, metadata !"p", metadata !22, i32 253, metadata !103, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 253]
!1141 = metadata !{i32 253, i32 12, metadata !186, null}
!1142 = metadata !{i32 253, i32 16, metadata !186, null}
!1143 = metadata !{i32 786688, metadata !186, metadata !"md", metadata !22, i32 254, metadata !97, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [md] [line 254]
!1144 = metadata !{i32 254, i32 15, metadata !186, null}
!1145 = metadata !{i32 254, i32 3, metadata !186, null}
!1146 = metadata !{i32 255, i32 3, metadata !186, null}
!1147 = metadata !{i32 255, i32 3, metadata !1148, null}
!1148 = metadata !{i32 786443, metadata !21, metadata !186, i32 255, i32 3, i32 1, i32 119} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/liolib.c]
!1149 = metadata !{i32 255, i32 3, metadata !1150, null}
!1150 = metadata !{i32 786443, metadata !21, metadata !186, i32 255, i32 3, i32 3, i32 121} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/liolib.c]
!1151 = metadata !{i32 255, i32 3, metadata !1152, null}
!1152 = metadata !{i32 786443, metadata !21, metadata !186, i32 255, i32 3, i32 6, i32 124} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/liolib.c]
!1153 = metadata !{i32 255, i32 3, metadata !1154, null}
!1154 = metadata !{i32 786443, metadata !21, metadata !1155, i32 255, i32 3, i32 7, i32 125} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/liolib.c]
!1155 = metadata !{i32 786443, metadata !21, metadata !186, i32 255, i32 3, i32 5, i32 123} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/liolib.c]
!1156 = metadata !{i32 255, i32 3, metadata !1157, null}
!1157 = metadata !{i32 786443, metadata !21, metadata !1158, i32 255, i32 3, i32 10, i32 128} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/liolib.c]
!1158 = metadata !{i32 786443, metadata !21, metadata !1159, i32 255, i32 3, i32 8, i32 126} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/liolib.c]
!1159 = metadata !{i32 786443, metadata !21, metadata !1160, i32 255, i32 3, i32 4, i32 122} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/liolib.c]
!1160 = metadata !{i32 786443, metadata !21, metadata !186, i32 255, i32 3, i32 2, i32 120} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/liolib.c]
!1161 = metadata !{i32 255, i32 3, metadata !1162, null}
!1162 = metadata !{i32 786443, metadata !21, metadata !1163, i32 255, i32 3, i32 11, i32 129} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/liolib.c]
!1163 = metadata !{i32 786443, metadata !21, metadata !186, i32 255, i32 3, i32 9, i32 127} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/liolib.c]
!1164 = metadata !{i32 256, i32 10, metadata !186, null}
!1165 = metadata !{i32 257, i32 3, metadata !186, null}
!1166 = metadata !{i32 257, i32 27, metadata !1167, null}
!1167 = metadata !{i32 786443, metadata !21, metadata !186, i32 257, i32 27, i32 1, i32 130} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/liolib.c]
!1168 = metadata !{i32 257, i32 27, metadata !1169, null}
!1169 = metadata !{i32 786443, metadata !21, metadata !186, i32 257, i32 27, i32 2, i32 131} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/liolib.c]
!1170 = metadata !{i32 257, i32 27, metadata !186, null}
!1171 = metadata !{i32 257, i32 27, metadata !1172, null}
!1172 = metadata !{i32 786443, metadata !21, metadata !1173, i32 257, i32 27, i32 4, i32 133} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/liolib.c]
!1173 = metadata !{i32 786443, metadata !21, metadata !186, i32 257, i32 27, i32 3, i32 132} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/liolib.c]
!1174 = metadata !{i32 786689, metadata !179, metadata !"L", metadata !22, i32 16777535, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 319]
!1175 = metadata !{i32 319, i32 34, metadata !179, null}
!1176 = metadata !{i32 320, i32 10, metadata !179, null}
!1177 = metadata !{i32 786689, metadata !177, metadata !"L", metadata !22, i32 16777486, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 270]
!1178 = metadata !{i32 270, i32 33, metadata !177, null}
!1179 = metadata !{i32 786688, metadata !177, metadata !"filename", metadata !22, i32 271, metadata !97, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [filename] [line 271]
!1180 = metadata !{i32 271, i32 15, metadata !177, null}
!1181 = metadata !{i32 271, i32 26, metadata !177, null}
!1182 = metadata !{i32 786688, metadata !177, metadata !"mode", metadata !22, i32 272, metadata !97, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mode] [line 272]
!1183 = metadata !{i32 272, i32 15, metadata !177, null}
!1184 = metadata !{i32 272, i32 22, metadata !177, null}
!1185 = metadata !{i32 786688, metadata !177, metadata !"p", metadata !22, i32 273, metadata !103, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 273]
!1186 = metadata !{i32 273, i32 12, metadata !177, null}
!1187 = metadata !{i32 273, i32 16, metadata !177, null}
!1188 = metadata !{i32 274, i32 3, metadata !177, null}
!1189 = metadata !{i32 274, i32 10, metadata !177, null}
!1190 = metadata !{i32 275, i32 3, metadata !177, null}
!1191 = metadata !{i32 276, i32 3, metadata !177, null}
!1192 = metadata !{i32 276, i32 27, metadata !1193, null}
!1193 = metadata !{i32 786443, metadata !21, metadata !177, i32 276, i32 27, i32 1, i32 134} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/liolib.c]
!1194 = metadata !{i32 276, i32 27, metadata !1195, null}
!1195 = metadata !{i32 786443, metadata !21, metadata !177, i32 276, i32 27, i32 2, i32 135} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/liolib.c]
!1196 = metadata !{i32 276, i32 27, metadata !177, null}
!1197 = metadata !{i32 276, i32 27, metadata !1198, null}
!1198 = metadata !{i32 786443, metadata !21, metadata !1199, i32 276, i32 27, i32 4, i32 137} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/liolib.c]
!1199 = metadata !{i32 786443, metadata !21, metadata !177, i32 276, i32 27, i32 3, i32 136} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/liolib.c]
!1200 = metadata !{i32 786689, metadata !176, metadata !"L", metadata !22, i32 16777789, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 573]
!1201 = metadata !{i32 573, i32 32, metadata !176, null}
!1202 = metadata !{i32 574, i32 10, metadata !176, null}
!1203 = metadata !{i32 574, i32 20, metadata !176, null}
!1204 = metadata !{i32 786689, metadata !173, metadata !"L", metadata !22, i32 16777496, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 280]
!1205 = metadata !{i32 280, i32 35, metadata !173, null}
!1206 = metadata !{i32 786688, metadata !173, metadata !"p", metadata !22, i32 281, metadata !103, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 281]
!1207 = metadata !{i32 281, i32 12, metadata !173, null}
!1208 = metadata !{i32 281, i32 16, metadata !173, null}
!1209 = metadata !{i32 282, i32 10, metadata !173, null}
!1210 = metadata !{i32 283, i32 3, metadata !173, null}
!1211 = metadata !{i32 283, i32 27, metadata !1212, null}
!1212 = metadata !{i32 786443, metadata !21, metadata !173, i32 283, i32 27, i32 1, i32 138} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/liolib.c]
!1213 = metadata !{i32 283, i32 27, metadata !1214, null}
!1214 = metadata !{i32 786443, metadata !21, metadata !173, i32 283, i32 27, i32 2, i32 139} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/liolib.c]
!1215 = metadata !{i32 283, i32 27, metadata !173, null}
!1216 = metadata !{i32 283, i32 27, metadata !1217, null}
!1217 = metadata !{i32 786443, metadata !21, metadata !1218, i32 283, i32 27, i32 4, i32 141} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/liolib.c]
!1218 = metadata !{i32 786443, metadata !21, metadata !173, i32 283, i32 27, i32 3, i32 140} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/liolib.c]
!1219 = metadata !{i32 786689, metadata !172, metadata !"L", metadata !22, i32 16777365, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 149]
!1220 = metadata !{i32 149, i32 32, metadata !172, null}
!1221 = metadata !{i32 786688, metadata !172, metadata !"p", metadata !22, i32 150, metadata !103, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 150]
!1222 = metadata !{i32 150, i32 12, metadata !172, null}
!1223 = metadata !{i32 151, i32 3, metadata !172, null}
!1224 = metadata !{i32 152, i32 18, metadata !172, null}
!1225 = metadata !{i32 153, i32 7, metadata !1226, null}
!1226 = metadata !{i32 786443, metadata !21, metadata !172, i32 153, i32 7, i32 0, i32 52} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/liolib.c]
!1227 = metadata !{i32 154, i32 5, metadata !1226, null}
!1228 = metadata !{i32 155, i32 12, metadata !1229, null}
!1229 = metadata !{i32 786443, metadata !21, metadata !1226, i32 155, i32 12, i32 0, i32 53} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/liolib.c]
!1230 = metadata !{i32 156, i32 5, metadata !1229, null}
!1231 = metadata !{i32 158, i32 5, metadata !1229, null}
!1232 = metadata !{i32 159, i32 3, metadata !172, null}
!1233 = metadata !{i32 786689, metadata !168, metadata !"L", metadata !22, i32 16777852, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 636]
!1234 = metadata !{i32 636, i32 33, metadata !168, null}
!1235 = metadata !{i32 637, i32 10, metadata !168, null}
!1236 = metadata !{i32 637, i32 21, metadata !168, null}
!1237 = metadata !{i32 786689, metadata !169, metadata !"L", metadata !22, i32 16777503, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 287]
!1238 = metadata !{i32 287, i32 36, metadata !169, null}
!1239 = metadata !{i32 786689, metadata !169, metadata !"findex", metadata !22, i32 33554719, metadata !97, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [findex] [line 287]
!1240 = metadata !{i32 287, i32 51, metadata !169, null}
!1241 = metadata !{i32 786688, metadata !169, metadata !"p", metadata !22, i32 288, metadata !103, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 288]
!1242 = metadata !{i32 288, i32 12, metadata !169, null}
!1243 = metadata !{i32 289, i32 3, metadata !169, null}
!1244 = metadata !{i32 290, i32 18, metadata !169, null}
!1245 = metadata !{i32 291, i32 7, metadata !1246, null}
!1246 = metadata !{i32 786443, metadata !21, metadata !169, i32 291, i32 7, i32 0, i32 51} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/liolib.c]
!1247 = metadata !{i32 292, i32 5, metadata !1246, null}
!1248 = metadata !{i32 293, i32 3, metadata !169, null}
!1249 = metadata !{i32 786689, metadata !174, metadata !"L", metadata !22, i32 16777450, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 234]
!1250 = metadata !{i32 234, i32 37, metadata !174, null}
!1251 = metadata !{i32 786688, metadata !174, metadata !"p", metadata !22, i32 235, metadata !103, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 235]
!1252 = metadata !{i32 235, i32 12, metadata !174, null}
!1253 = metadata !{i32 235, i32 16, metadata !174, null}
!1254 = metadata !{i32 236, i32 3, metadata !174, null}
!1255 = metadata !{i32 237, i32 3, metadata !174, null}
!1256 = metadata !{i32 238, i32 3, metadata !174, null}
!1257 = metadata !{i32 786689, metadata !175, metadata !"L", metadata !22, i32 16777443, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 227]
!1258 = metadata !{i32 227, i32 34, metadata !175, null}
!1259 = metadata !{i32 786688, metadata !175, metadata !"p", metadata !22, i32 228, metadata !103, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 228]
!1260 = metadata !{i32 228, i32 12, metadata !175, null}
!1261 = metadata !{i32 228, i32 16, metadata !175, null}
!1262 = metadata !{i32 786688, metadata !175, metadata !"res", metadata !22, i32 229, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [res] [line 229]
!1263 = metadata !{i32 229, i32 7, metadata !175, null}
!1264 = metadata !{i32 229, i32 13, metadata !175, null}
!1265 = metadata !{i32 230, i32 10, metadata !175, null}
!1266 = metadata !{i32 786689, metadata !178, metadata !"L", metadata !22, i32 16777480, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 264]
!1267 = metadata !{i32 264, i32 34, metadata !178, null}
!1268 = metadata !{i32 786688, metadata !178, metadata !"p", metadata !22, i32 265, metadata !103, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 265]
!1269 = metadata !{i32 265, i32 12, metadata !178, null}
!1270 = metadata !{i32 265, i32 16, metadata !178, null}
!1271 = metadata !{i32 266, i32 10, metadata !178, null}
!1272 = metadata !{i32 786689, metadata !180, metadata !"L", metadata !22, i32 16777513, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 297]
!1273 = metadata !{i32 297, i32 33, metadata !180, null}
!1274 = metadata !{i32 786689, metadata !180, metadata !"f", metadata !22, i32 33554729, metadata !97, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [f] [line 297]
!1275 = metadata !{i32 297, i32 48, metadata !180, null}
!1276 = metadata !{i32 786689, metadata !180, metadata !"mode", metadata !22, i32 50331945, metadata !97, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mode] [line 297]
!1277 = metadata !{i32 297, i32 63, metadata !180, null}
!1278 = metadata !{i32 298, i32 8, metadata !1279, null}
!1279 = metadata !{i32 786443, metadata !21, metadata !180, i32 298, i32 7, i32 0, i32 54} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/liolib.c]
!1280 = metadata !{i32 786688, metadata !1281, metadata !"filename", metadata !22, i32 299, metadata !97, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [filename] [line 299]
!1281 = metadata !{i32 786443, metadata !21, metadata !1279, i32 298, i32 31, i32 0, i32 55} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/liolib.c]
!1282 = metadata !{i32 299, i32 17, metadata !1281, null}
!1283 = metadata !{i32 299, i32 28, metadata !1281, null}
!1284 = metadata !{i32 300, i32 9, metadata !1285, null}
!1285 = metadata !{i32 786443, metadata !21, metadata !1281, i32 300, i32 9, i32 0, i32 56} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/liolib.c]
!1286 = metadata !{i32 301, i32 7, metadata !1285, null}
!1287 = metadata !{i32 303, i32 7, metadata !1288, null}
!1288 = metadata !{i32 786443, metadata !21, metadata !1285, i32 302, i32 10, i32 0, i32 57} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/liolib.c]
!1289 = metadata !{i32 304, i32 7, metadata !1288, null}
!1290 = metadata !{i32 306, i32 5, metadata !1281, null}
!1291 = metadata !{i32 307, i32 3, metadata !1281, null}
!1292 = metadata !{i32 309, i32 3, metadata !180, null}
!1293 = metadata !{i32 310, i32 3, metadata !180, null}
!1294 = metadata !{i32 786689, metadata !183, metadata !"L", metadata !22, i32 16777458, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 242]
!1295 = metadata !{i32 242, i32 35, metadata !183, null}
!1296 = metadata !{i32 786689, metadata !183, metadata !"fname", metadata !22, i32 33554674, metadata !97, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fname] [line 242]
!1297 = metadata !{i32 242, i32 50, metadata !183, null}
!1298 = metadata !{i32 786689, metadata !183, metadata !"mode", metadata !22, i32 50331890, metadata !97, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mode] [line 242]
!1299 = metadata !{i32 242, i32 69, metadata !183, null}
!1300 = metadata !{i32 786688, metadata !183, metadata !"p", metadata !22, i32 243, metadata !103, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 243]
!1301 = metadata !{i32 243, i32 12, metadata !183, null}
!1302 = metadata !{i32 243, i32 16, metadata !183, null}
!1303 = metadata !{i32 244, i32 10, metadata !183, null}
!1304 = metadata !{i32 245, i32 7, metadata !1305, null}
!1305 = metadata !{i32 786443, metadata !21, metadata !183, i32 245, i32 7, i32 0, i32 58} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/liolib.c]
!1306 = metadata !{i32 246, i32 5, metadata !1305, null}
!1307 = metadata !{i32 246, i32 65, metadata !1305, null}
!1308 = metadata !{i32 246, i32 56, metadata !1305, null}
!1309 = metadata !{i32 247, i32 1, metadata !183, null}
