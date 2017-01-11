; ModuleID = 'C:/Users/DevolutionX/workspace/lua/src/lua.c'
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-n32-S64"
target triple = "armv7--linux-gnueabihf"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i32, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i32, i32, [40 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.lua_State = type opaque
%struct.lua_Debug = type { i32, i8*, i8*, i8*, i8*, i32, i32, i32, i8, i8, i8, i8, [60 x i8], %struct.CallInfo* }
%struct.CallInfo = type opaque

@.str = private unnamed_addr constant [39 x i8] c"cannot create state: not enough memory\00", align 1
@progname = internal global i8* getelementptr inbounds ([4 x i8]* @.str1, i32 0, i32 0), align 4
@.str1 = private unnamed_addr constant [4 x i8] c"lua\00", align 1
@.str2 = private unnamed_addr constant [10 x i8] c"LUA_NOENV\00", align 1
@.str3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@stdout = external global %struct._IO_FILE*
@.str4 = private unnamed_addr constant [26 x i8] c"too many results to print\00", align 1
@.str5 = private unnamed_addr constant [6 x i8] c"print\00", align 1
@.str6 = private unnamed_addr constant [27 x i8] c"error calling 'print' (%s)\00", align 1
@globalL = internal global %struct.lua_State* null, align 4
@.str7 = private unnamed_addr constant [13 x i8] c"interrupted!\00", align 1
@.str8 = private unnamed_addr constant [11 x i8] c"__tostring\00", align 1
@.str9 = private unnamed_addr constant [29 x i8] c"(error object is a %s value)\00", align 1
@.str10 = private unnamed_addr constant [7 x i8] c"=stdin\00", align 1
@.str11 = private unnamed_addr constant [6 x i8] c"<eof>\00", align 1
@.str12 = private unnamed_addr constant [11 x i8] c"return %s;\00", align 1
@stdin = external global %struct._IO_FILE*
@.str13 = private unnamed_addr constant [10 x i8] c"return %s\00", align 1
@.str14 = private unnamed_addr constant [8 x i8] c"_PROMPT\00", align 1
@.str15 = private unnamed_addr constant [9 x i8] c"_PROMPT2\00", align 1
@.str16 = private unnamed_addr constant [3 x i8] c"> \00", align 1
@.str17 = private unnamed_addr constant [4 x i8] c">> \00", align 1
@.str18 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str19 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str20 = private unnamed_addr constant [4 x i8] c"arg\00", align 1
@.str21 = private unnamed_addr constant [21 x i8] c"'arg' is not a table\00", align 1
@.str22 = private unnamed_addr constant [29 x i8] c"too many arguments to script\00", align 1
@.str23 = private unnamed_addr constant [16 x i8] c"=(command line)\00", align 1
@.str24 = private unnamed_addr constant [8 x i8] c"require\00", align 1
@.str25 = private unnamed_addr constant [14 x i8] c"=LUA_INIT_5_3\00", align 1
@.str26 = private unnamed_addr constant [10 x i8] c"=LUA_INIT\00", align 1
@.str27 = private unnamed_addr constant [52 x i8] c"Lua 5.3.3  Copyright (C) 1994-2016 Lua.org, PUC-Rio\00", align 1
@stderr = external global %struct._IO_FILE*
@.str28 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@.str29 = private unnamed_addr constant [21 x i8] c"'%s' needs argument\0A\00", align 1
@.str30 = private unnamed_addr constant [26 x i8] c"unrecognized option '%s'\0A\00", align 1
@.str31 = private unnamed_addr constant [346 x i8] c"usage: %s [options] [script [args]]\0AAvailable options are:\0A  -e stat  execute string 'stat'\0A  -i       enter interactive mode after executing 'script'\0A  -l name  require library 'name'\0A  -v       show version information\0A  -E       ignore environment variables\0A  --       stop handling options\0A  -        stop handling options and execute stdin\0A\00", align 1
@.str32 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: nounwind
define i32 @main(i32 %argc, i8** %argv) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 4
  %status = alloca i32, align 4
  %result = alloca i32, align 4
  %L = alloca %struct.lua_State*, align 4
  store i32 0, i32* %1
  store i32 %argc, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !313), !dbg !314
  store i8** %argv, i8*** %3, align 4
  call void @llvm.dbg.declare(metadata !{i8*** %3}, metadata !315), !dbg !316
  call void @llvm.dbg.declare(metadata !{i32* %status}, metadata !317), !dbg !318
  call void @llvm.dbg.declare(metadata !{i32* %result}, metadata !319), !dbg !320
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %L}, metadata !321), !dbg !322
  %4 = call %struct.lua_State* @luaL_newstate(), !dbg !323
  store %struct.lua_State* %4, %struct.lua_State** %L, align 4, !dbg !323
  %5 = load %struct.lua_State** %L, align 4, !dbg !324
  %6 = icmp eq %struct.lua_State* %5, null, !dbg !324
  br i1 %6, label %7, label %11, !dbg !324

; <label>:7                                       ; preds = %0
  %8 = load i8*** %3, align 4, !dbg !326
  %9 = getelementptr inbounds i8** %8, i32 0, !dbg !326
  %10 = load i8** %9, align 4, !dbg !326
  call void @l_message(i8* %10, i8* getelementptr inbounds ([39 x i8]* @.str, i32 0, i32 0)), !dbg !326
  store i32 1, i32* %1, !dbg !328
  br label %35, !dbg !328

; <label>:11                                      ; preds = %0
  %12 = load %struct.lua_State** %L, align 4, !dbg !329
  call void @lua_pushcclosure(%struct.lua_State* %12, i32 (%struct.lua_State*)* @pmain, i32 0), !dbg !329
  %13 = load %struct.lua_State** %L, align 4, !dbg !330
  %14 = load i32* %2, align 4, !dbg !330
  %15 = sext i32 %14 to i64, !dbg !330
  call void @lua_pushinteger(%struct.lua_State* %13, i64 %15), !dbg !330
  %16 = load %struct.lua_State** %L, align 4, !dbg !331
  %17 = load i8*** %3, align 4, !dbg !331
  %18 = bitcast i8** %17 to i8*, !dbg !331
  call void @lua_pushlightuserdata(%struct.lua_State* %16, i8* %18), !dbg !331
  %19 = load %struct.lua_State** %L, align 4, !dbg !332
  %20 = call i32 @lua_pcallk(%struct.lua_State* %19, i32 2, i32 1, i32 0, i32 0, i32 (%struct.lua_State*, i32, i32)* null), !dbg !332
  store i32 %20, i32* %status, align 4, !dbg !332
  %21 = load %struct.lua_State** %L, align 4, !dbg !333
  %22 = call i32 @lua_toboolean(%struct.lua_State* %21, i32 -1), !dbg !333
  store i32 %22, i32* %result, align 4, !dbg !333
  %23 = load %struct.lua_State** %L, align 4, !dbg !334
  %24 = load i32* %status, align 4, !dbg !334
  %25 = call i32 @report(%struct.lua_State* %23, i32 %24), !dbg !334
  %26 = load %struct.lua_State** %L, align 4, !dbg !335
  call void @lua_close(%struct.lua_State* %26), !dbg !335
  %27 = load i32* %result, align 4, !dbg !336
  %28 = icmp ne i32 %27, 0, !dbg !336
  br i1 %28, label %29, label %32, !dbg !336

; <label>:29                                      ; preds = %11
  %30 = load i32* %status, align 4, !dbg !337
  %31 = icmp eq i32 %30, 0, !dbg !337
  br label %32

; <label>:32                                      ; preds = %29, %11
  %33 = phi i1 [ false, %11 ], [ %31, %29 ]
  %34 = select i1 %33, i32 0, i32 1, !dbg !339
  store i32 %34, i32* %1, !dbg !339
  br label %35, !dbg !339

; <label>:35                                      ; preds = %32, %7
  %36 = load i32* %1, !dbg !341
  ret i32 %36, !dbg !341
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

declare %struct.lua_State* @luaL_newstate() #2

; Function Attrs: nounwind
define internal void @l_message(i8* %pname, i8* %msg) #0 {
  %1 = alloca i8*, align 4
  %2 = alloca i8*, align 4
  store i8* %pname, i8** %1, align 4
  call void @llvm.dbg.declare(metadata !{i8** %1}, metadata !342), !dbg !343
  store i8* %msg, i8** %2, align 4
  call void @llvm.dbg.declare(metadata !{i8** %2}, metadata !344), !dbg !345
  %3 = load i8** %1, align 4, !dbg !346
  %4 = icmp ne i8* %3, null, !dbg !346
  br i1 %4, label %5, label %11, !dbg !346

; <label>:5                                       ; preds = %0
  %6 = load %struct._IO_FILE** @stderr, align 4, !dbg !348
  %7 = load i8** %1, align 4, !dbg !348
  %8 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([5 x i8]* @.str28, i32 0, i32 0), i8* %7), !dbg !348
  %9 = load %struct._IO_FILE** @stderr, align 4, !dbg !348
  %10 = call i32 @fflush(%struct._IO_FILE* %9), !dbg !348
  br label %11, !dbg !348

; <label>:11                                      ; preds = %5, %0
  %12 = load %struct._IO_FILE** @stderr, align 4, !dbg !350
  %13 = load i8** %2, align 4, !dbg !350
  %14 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([4 x i8]* @.str32, i32 0, i32 0), i8* %13), !dbg !350
  %15 = load %struct._IO_FILE** @stderr, align 4, !dbg !350
  %16 = call i32 @fflush(%struct._IO_FILE* %15), !dbg !350
  ret void, !dbg !351
}

declare void @lua_pushcclosure(%struct.lua_State*, i32 (%struct.lua_State*)*, i32) #2

; Function Attrs: nounwind
define internal i32 @pmain(%struct.lua_State* %L) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.lua_State*, align 4
  %argc = alloca i32, align 4
  %argv = alloca i8**, align 4
  %script = alloca i32, align 4
  %args = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %2}, metadata !352), !dbg !353
  call void @llvm.dbg.declare(metadata !{i32* %argc}, metadata !354), !dbg !355
  %3 = load %struct.lua_State** %2, align 4, !dbg !356
  %4 = call i64 @lua_tointegerx(%struct.lua_State* %3, i32 1, i32* null), !dbg !356
  %5 = trunc i64 %4 to i32, !dbg !356
  store i32 %5, i32* %argc, align 4, !dbg !356
  call void @llvm.dbg.declare(metadata !{i8*** %argv}, metadata !357), !dbg !358
  %6 = load %struct.lua_State** %2, align 4, !dbg !359
  %7 = call i8* @lua_touserdata(%struct.lua_State* %6, i32 2), !dbg !359
  %8 = bitcast i8* %7 to i8**, !dbg !359
  store i8** %8, i8*** %argv, align 4, !dbg !359
  call void @llvm.dbg.declare(metadata !{i32* %script}, metadata !360), !dbg !361
  call void @llvm.dbg.declare(metadata !{i32* %args}, metadata !362), !dbg !363
  %9 = load i8*** %argv, align 4, !dbg !364
  %10 = call i32 @collectargs(i8** %9, i32* %script), !dbg !364
  store i32 %10, i32* %args, align 4, !dbg !364
  %11 = load %struct.lua_State** %2, align 4, !dbg !365
  call void @luaL_checkversion_(%struct.lua_State* %11, double 5.030000e+02, i32 136), !dbg !365
  %12 = load i8*** %argv, align 4, !dbg !366
  %13 = getelementptr inbounds i8** %12, i32 0, !dbg !366
  %14 = load i8** %13, align 4, !dbg !366
  %15 = icmp ne i8* %14, null, !dbg !366
  br i1 %15, label %16, label %28, !dbg !366

; <label>:16                                      ; preds = %0
  %17 = load i8*** %argv, align 4, !dbg !368
  %18 = getelementptr inbounds i8** %17, i32 0, !dbg !368
  %19 = load i8** %18, align 4, !dbg !368
  %20 = getelementptr inbounds i8* %19, i32 0, !dbg !368
  %21 = load i8* %20, align 1, !dbg !368
  %22 = zext i8 %21 to i32, !dbg !368
  %23 = icmp ne i32 %22, 0, !dbg !368
  br i1 %23, label %24, label %28, !dbg !368

; <label>:24                                      ; preds = %16
  %25 = load i8*** %argv, align 4, !dbg !370
  %26 = getelementptr inbounds i8** %25, i32 0, !dbg !370
  %27 = load i8** %26, align 4, !dbg !370
  store i8* %27, i8** @progname, align 4, !dbg !370
  br label %28, !dbg !370

; <label>:28                                      ; preds = %24, %16, %0
  %29 = load i32* %args, align 4, !dbg !372
  %30 = icmp eq i32 %29, 1, !dbg !372
  br i1 %30, label %31, label %36, !dbg !372

; <label>:31                                      ; preds = %28
  %32 = load i32* %script, align 4, !dbg !374
  %33 = load i8*** %argv, align 4, !dbg !374
  %34 = getelementptr inbounds i8** %33, i32 %32, !dbg !374
  %35 = load i8** %34, align 4, !dbg !374
  call void @print_usage(i8* %35), !dbg !374
  store i32 0, i32* %1, !dbg !376
  br label %101, !dbg !376

; <label>:36                                      ; preds = %28
  %37 = load i32* %args, align 4, !dbg !377
  %38 = and i32 %37, 4, !dbg !377
  %39 = icmp ne i32 %38, 0, !dbg !377
  br i1 %39, label %40, label %41, !dbg !377

; <label>:40                                      ; preds = %36
  call void @print_version(), !dbg !379
  br label %41, !dbg !379

; <label>:41                                      ; preds = %40, %36
  %42 = load i32* %args, align 4, !dbg !380
  %43 = and i32 %42, 16, !dbg !380
  %44 = icmp ne i32 %43, 0, !dbg !380
  br i1 %44, label %45, label %48, !dbg !380

; <label>:45                                      ; preds = %41
  %46 = load %struct.lua_State** %2, align 4, !dbg !382
  call void @lua_pushboolean(%struct.lua_State* %46, i32 1), !dbg !382
  %47 = load %struct.lua_State** %2, align 4, !dbg !384
  call void @lua_setfield(%struct.lua_State* %47, i32 -1001000, i8* getelementptr inbounds ([10 x i8]* @.str2, i32 0, i32 0)), !dbg !384
  br label %48, !dbg !385

; <label>:48                                      ; preds = %45, %41
  %49 = load %struct.lua_State** %2, align 4, !dbg !386
  call void @luaL_openlibs(%struct.lua_State* %49), !dbg !386
  %50 = load %struct.lua_State** %2, align 4, !dbg !387
  %51 = load i8*** %argv, align 4, !dbg !387
  %52 = load i32* %argc, align 4, !dbg !387
  %53 = load i32* %script, align 4, !dbg !387
  call void @createargtable(%struct.lua_State* %50, i8** %51, i32 %52, i32 %53), !dbg !387
  %54 = load i32* %args, align 4, !dbg !388
  %55 = and i32 %54, 16, !dbg !388
  %56 = icmp ne i32 %55, 0, !dbg !388
  br i1 %56, label %63, label %57, !dbg !388

; <label>:57                                      ; preds = %48
  %58 = load %struct.lua_State** %2, align 4, !dbg !390
  %59 = call i32 @handle_luainit(%struct.lua_State* %58), !dbg !390
  %60 = icmp ne i32 %59, 0, !dbg !390
  br i1 %60, label %61, label %62, !dbg !390

; <label>:61                                      ; preds = %57
  store i32 0, i32* %1, !dbg !393
  br label %101, !dbg !393

; <label>:62                                      ; preds = %57
  br label %63, !dbg !394

; <label>:63                                      ; preds = %62, %48
  %64 = load %struct.lua_State** %2, align 4, !dbg !395
  %65 = load i8*** %argv, align 4, !dbg !395
  %66 = load i32* %script, align 4, !dbg !395
  %67 = call i32 @runargs(%struct.lua_State* %64, i8** %65, i32 %66), !dbg !395
  %68 = icmp ne i32 %67, 0, !dbg !395
  br i1 %68, label %70, label %69, !dbg !395

; <label>:69                                      ; preds = %63
  store i32 0, i32* %1, !dbg !397
  br label %101, !dbg !397

; <label>:70                                      ; preds = %63
  %71 = load i32* %script, align 4, !dbg !398
  %72 = load i32* %argc, align 4, !dbg !398
  %73 = icmp slt i32 %71, %72, !dbg !398
  br i1 %73, label %74, label %82, !dbg !398

; <label>:74                                      ; preds = %70
  %75 = load %struct.lua_State** %2, align 4, !dbg !400
  %76 = load i8*** %argv, align 4, !dbg !400
  %77 = load i32* %script, align 4, !dbg !400
  %78 = getelementptr inbounds i8** %76, i32 %77, !dbg !400
  %79 = call i32 @handle_script(%struct.lua_State* %75, i8** %78), !dbg !400
  %80 = icmp ne i32 %79, 0, !dbg !400
  br i1 %80, label %81, label %82, !dbg !400

; <label>:81                                      ; preds = %74
  store i32 0, i32* %1, !dbg !401
  br label %101, !dbg !401

; <label>:82                                      ; preds = %74, %70
  %83 = load i32* %args, align 4, !dbg !402
  %84 = and i32 %83, 2, !dbg !402
  %85 = icmp ne i32 %84, 0, !dbg !402
  br i1 %85, label %86, label %88, !dbg !402

; <label>:86                                      ; preds = %82
  %87 = load %struct.lua_State** %2, align 4, !dbg !404
  call void @doREPL(%struct.lua_State* %87), !dbg !404
  br label %99, !dbg !404

; <label>:88                                      ; preds = %82
  %89 = load i32* %script, align 4, !dbg !405
  %90 = load i32* %argc, align 4, !dbg !405
  %91 = icmp eq i32 %89, %90, !dbg !405
  br i1 %91, label %92, label %98, !dbg !405

; <label>:92                                      ; preds = %88
  %93 = load i32* %args, align 4, !dbg !407
  %94 = and i32 %93, 12, !dbg !407
  %95 = icmp ne i32 %94, 0, !dbg !407
  br i1 %95, label %98, label %96, !dbg !407

; <label>:96                                      ; preds = %92
  call void @print_version(), !dbg !409
  %97 = load %struct.lua_State** %2, align 4, !dbg !413
  call void @doREPL(%struct.lua_State* %97), !dbg !413
  br label %98, !dbg !414

; <label>:98                                      ; preds = %96, %92, %88
  br label %99

; <label>:99                                      ; preds = %98, %86
  %100 = load %struct.lua_State** %2, align 4, !dbg !415
  call void @lua_pushboolean(%struct.lua_State* %100, i32 1), !dbg !415
  store i32 1, i32* %1, !dbg !416
  br label %101, !dbg !416

; <label>:101                                     ; preds = %99, %81, %69, %61, %31
  %102 = load i32* %1, !dbg !417
  ret i32 %102, !dbg !417
}

declare void @lua_pushinteger(%struct.lua_State*, i64) #2

declare void @lua_pushlightuserdata(%struct.lua_State*, i8*) #2

declare i32 @lua_pcallk(%struct.lua_State*, i32, i32, i32, i32, i32 (%struct.lua_State*, i32, i32)*) #2

declare i32 @lua_toboolean(%struct.lua_State*, i32) #2

; Function Attrs: nounwind
define internal i32 @report(%struct.lua_State* %L, i32 %status) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca i32, align 4
  %msg = alloca i8*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !418), !dbg !419
  store i32 %status, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !420), !dbg !421
  %3 = load i32* %2, align 4, !dbg !422
  %4 = icmp ne i32 %3, 0, !dbg !422
  br i1 %4, label %5, label %11, !dbg !422

; <label>:5                                       ; preds = %0
  call void @llvm.dbg.declare(metadata !{i8** %msg}, metadata !424), !dbg !426
  %6 = load %struct.lua_State** %1, align 4, !dbg !427
  %7 = call i8* @lua_tolstring(%struct.lua_State* %6, i32 -1, i32* null), !dbg !427
  store i8* %7, i8** %msg, align 4, !dbg !427
  %8 = load i8** @progname, align 4, !dbg !428
  %9 = load i8** %msg, align 4, !dbg !428
  call void @l_message(i8* %8, i8* %9), !dbg !428
  %10 = load %struct.lua_State** %1, align 4, !dbg !429
  call void @lua_settop(%struct.lua_State* %10, i32 -2), !dbg !429
  br label %11, !dbg !430

; <label>:11                                      ; preds = %5, %0
  %12 = load i32* %2, align 4, !dbg !431
  ret i32 %12, !dbg !431
}

declare void @lua_close(%struct.lua_State*) #2

declare i8* @lua_tolstring(%struct.lua_State*, i32, i32*) #2

declare void @lua_settop(%struct.lua_State*, i32) #2

declare i64 @lua_tointegerx(%struct.lua_State*, i32, i32*) #2

declare i8* @lua_touserdata(%struct.lua_State*, i32) #2

; Function Attrs: nounwind
define internal i32 @collectargs(i8** %argv, i32* %first) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8**, align 4
  %3 = alloca i32*, align 4
  %args = alloca i32, align 4
  %i = alloca i32, align 4
  store i8** %argv, i8*** %2, align 4
  call void @llvm.dbg.declare(metadata !{i8*** %2}, metadata !432), !dbg !433
  store i32* %first, i32** %3, align 4
  call void @llvm.dbg.declare(metadata !{i32** %3}, metadata !434), !dbg !435
  call void @llvm.dbg.declare(metadata !{i32* %args}, metadata !436), !dbg !437
  store i32 0, i32* %args, align 4, !dbg !438
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !439), !dbg !440
  store i32 1, i32* %i, align 4, !dbg !441
  br label %4, !dbg !441

; <label>:4                                       ; preds = %111, %0
  %5 = load i32* %i, align 4, !dbg !443
  %6 = load i8*** %2, align 4, !dbg !443
  %7 = getelementptr inbounds i8** %6, i32 %5, !dbg !443
  %8 = load i8** %7, align 4, !dbg !443
  %9 = icmp ne i8* %8, null, !dbg !443
  br i1 %9, label %10, label %114, !dbg !443

; <label>:10                                      ; preds = %4
  %11 = load i32* %i, align 4, !dbg !446
  %12 = load i32** %3, align 4, !dbg !446
  store i32 %11, i32* %12, align 4, !dbg !446
  %13 = load i32* %i, align 4, !dbg !448
  %14 = load i8*** %2, align 4, !dbg !448
  %15 = getelementptr inbounds i8** %14, i32 %13, !dbg !448
  %16 = load i8** %15, align 4, !dbg !448
  %17 = getelementptr inbounds i8* %16, i32 0, !dbg !448
  %18 = load i8* %17, align 1, !dbg !448
  %19 = zext i8 %18 to i32, !dbg !448
  %20 = icmp ne i32 %19, 45, !dbg !448
  br i1 %20, label %21, label %23, !dbg !448

; <label>:21                                      ; preds = %10
  %22 = load i32* %args, align 4, !dbg !450
  store i32 %22, i32* %1, !dbg !450
  br label %118, !dbg !450

; <label>:23                                      ; preds = %10
  %24 = load i32* %i, align 4, !dbg !451
  %25 = load i8*** %2, align 4, !dbg !451
  %26 = getelementptr inbounds i8** %25, i32 %24, !dbg !451
  %27 = load i8** %26, align 4, !dbg !451
  %28 = getelementptr inbounds i8* %27, i32 1, !dbg !451
  %29 = load i8* %28, align 1, !dbg !451
  %30 = zext i8 %29 to i32, !dbg !451
  switch i32 %30, label %109 [
    i32 45, label %31
    i32 0, label %46
    i32 69, label %48
    i32 105, label %61
    i32 118, label %64
    i32 101, label %77
    i32 108, label %80
  ], !dbg !451

; <label>:31                                      ; preds = %23
  %32 = load i32* %i, align 4, !dbg !452
  %33 = load i8*** %2, align 4, !dbg !452
  %34 = getelementptr inbounds i8** %33, i32 %32, !dbg !452
  %35 = load i8** %34, align 4, !dbg !452
  %36 = getelementptr inbounds i8* %35, i32 2, !dbg !452
  %37 = load i8* %36, align 1, !dbg !452
  %38 = zext i8 %37 to i32, !dbg !452
  %39 = icmp ne i32 %38, 0, !dbg !452
  br i1 %39, label %40, label %41, !dbg !452

; <label>:40                                      ; preds = %31
  store i32 1, i32* %1, !dbg !455
  br label %118, !dbg !455

; <label>:41                                      ; preds = %31
  %42 = load i32* %i, align 4, !dbg !456
  %43 = add nsw i32 %42, 1, !dbg !456
  %44 = load i32** %3, align 4, !dbg !456
  store i32 %43, i32* %44, align 4, !dbg !456
  %45 = load i32* %args, align 4, !dbg !457
  store i32 %45, i32* %1, !dbg !457
  br label %118, !dbg !457

; <label>:46                                      ; preds = %23
  %47 = load i32* %args, align 4, !dbg !458
  store i32 %47, i32* %1, !dbg !458
  br label %118, !dbg !458

; <label>:48                                      ; preds = %23
  %49 = load i32* %i, align 4, !dbg !459
  %50 = load i8*** %2, align 4, !dbg !459
  %51 = getelementptr inbounds i8** %50, i32 %49, !dbg !459
  %52 = load i8** %51, align 4, !dbg !459
  %53 = getelementptr inbounds i8* %52, i32 2, !dbg !459
  %54 = load i8* %53, align 1, !dbg !459
  %55 = zext i8 %54 to i32, !dbg !459
  %56 = icmp ne i32 %55, 0, !dbg !459
  br i1 %56, label %57, label %58, !dbg !459

; <label>:57                                      ; preds = %48
  store i32 1, i32* %1, !dbg !461
  br label %118, !dbg !461

; <label>:58                                      ; preds = %48
  %59 = load i32* %args, align 4, !dbg !462
  %60 = or i32 %59, 16, !dbg !462
  store i32 %60, i32* %args, align 4, !dbg !462
  br label %110, !dbg !463

; <label>:61                                      ; preds = %23
  %62 = load i32* %args, align 4, !dbg !464
  %63 = or i32 %62, 2, !dbg !464
  store i32 %63, i32* %args, align 4, !dbg !464
  br label %64, !dbg !464

; <label>:64                                      ; preds = %23, %61
  %65 = load i32* %i, align 4, !dbg !465
  %66 = load i8*** %2, align 4, !dbg !465
  %67 = getelementptr inbounds i8** %66, i32 %65, !dbg !465
  %68 = load i8** %67, align 4, !dbg !465
  %69 = getelementptr inbounds i8* %68, i32 2, !dbg !465
  %70 = load i8* %69, align 1, !dbg !465
  %71 = zext i8 %70 to i32, !dbg !465
  %72 = icmp ne i32 %71, 0, !dbg !465
  br i1 %72, label %73, label %74, !dbg !465

; <label>:73                                      ; preds = %64
  store i32 1, i32* %1, !dbg !467
  br label %118, !dbg !467

; <label>:74                                      ; preds = %64
  %75 = load i32* %args, align 4, !dbg !468
  %76 = or i32 %75, 4, !dbg !468
  store i32 %76, i32* %args, align 4, !dbg !468
  br label %110, !dbg !469

; <label>:77                                      ; preds = %23
  %78 = load i32* %args, align 4, !dbg !470
  %79 = or i32 %78, 8, !dbg !470
  store i32 %79, i32* %args, align 4, !dbg !470
  br label %80, !dbg !470

; <label>:80                                      ; preds = %23, %77
  %81 = load i32* %i, align 4, !dbg !471
  %82 = load i8*** %2, align 4, !dbg !471
  %83 = getelementptr inbounds i8** %82, i32 %81, !dbg !471
  %84 = load i8** %83, align 4, !dbg !471
  %85 = getelementptr inbounds i8* %84, i32 2, !dbg !471
  %86 = load i8* %85, align 1, !dbg !471
  %87 = zext i8 %86 to i32, !dbg !471
  %88 = icmp eq i32 %87, 0, !dbg !471
  br i1 %88, label %89, label %108, !dbg !471

; <label>:89                                      ; preds = %80
  %90 = load i32* %i, align 4, !dbg !473
  %91 = add nsw i32 %90, 1, !dbg !473
  store i32 %91, i32* %i, align 4, !dbg !473
  %92 = load i32* %i, align 4, !dbg !475
  %93 = load i8*** %2, align 4, !dbg !475
  %94 = getelementptr inbounds i8** %93, i32 %92, !dbg !475
  %95 = load i8** %94, align 4, !dbg !475
  %96 = icmp eq i8* %95, null, !dbg !475
  br i1 %96, label %106, label %97, !dbg !475

; <label>:97                                      ; preds = %89
  %98 = load i32* %i, align 4, !dbg !477
  %99 = load i8*** %2, align 4, !dbg !477
  %100 = getelementptr inbounds i8** %99, i32 %98, !dbg !477
  %101 = load i8** %100, align 4, !dbg !477
  %102 = getelementptr inbounds i8* %101, i32 0, !dbg !477
  %103 = load i8* %102, align 1, !dbg !477
  %104 = zext i8 %103 to i32, !dbg !477
  %105 = icmp eq i32 %104, 45, !dbg !477
  br i1 %105, label %106, label %107, !dbg !477

; <label>:106                                     ; preds = %97, %89
  store i32 1, i32* %1, !dbg !479
  br label %118, !dbg !479

; <label>:107                                     ; preds = %97
  br label %108, !dbg !480

; <label>:108                                     ; preds = %107, %80
  br label %110, !dbg !481

; <label>:109                                     ; preds = %23
  store i32 1, i32* %1, !dbg !482
  br label %118, !dbg !482

; <label>:110                                     ; preds = %108, %74, %58
  br label %111, !dbg !483

; <label>:111                                     ; preds = %110
  %112 = load i32* %i, align 4, !dbg !484
  %113 = add nsw i32 %112, 1, !dbg !484
  store i32 %113, i32* %i, align 4, !dbg !484
  br label %4, !dbg !484

; <label>:114                                     ; preds = %4
  %115 = load i32* %i, align 4, !dbg !485
  %116 = load i32** %3, align 4, !dbg !485
  store i32 %115, i32* %116, align 4, !dbg !485
  %117 = load i32* %args, align 4, !dbg !486
  store i32 %117, i32* %1, !dbg !486
  br label %118, !dbg !486

; <label>:118                                     ; preds = %114, %109, %106, %73, %57, %46, %41, %40, %21
  %119 = load i32* %1, !dbg !487
  ret i32 %119, !dbg !487
}

declare void @luaL_checkversion_(%struct.lua_State*, double, i32) #2

; Function Attrs: nounwind
define internal void @print_usage(i8* %badoption) #0 {
  %1 = alloca i8*, align 4
  store i8* %badoption, i8** %1, align 4
  call void @llvm.dbg.declare(metadata !{i8** %1}, metadata !488), !dbg !489
  %2 = load %struct._IO_FILE** @stderr, align 4, !dbg !490
  %3 = load i8** @progname, align 4, !dbg !490
  %4 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([5 x i8]* @.str28, i32 0, i32 0), i8* %3), !dbg !490
  %5 = load %struct._IO_FILE** @stderr, align 4, !dbg !490
  %6 = call i32 @fflush(%struct._IO_FILE* %5), !dbg !490
  %7 = load i8** %1, align 4, !dbg !491
  %8 = getelementptr inbounds i8* %7, i32 1, !dbg !491
  %9 = load i8* %8, align 1, !dbg !491
  %10 = zext i8 %9 to i32, !dbg !491
  %11 = icmp eq i32 %10, 101, !dbg !491
  br i1 %11, label %18, label %12, !dbg !491

; <label>:12                                      ; preds = %0
  %13 = load i8** %1, align 4, !dbg !493
  %14 = getelementptr inbounds i8* %13, i32 1, !dbg !493
  %15 = load i8* %14, align 1, !dbg !493
  %16 = zext i8 %15 to i32, !dbg !493
  %17 = icmp eq i32 %16, 108, !dbg !493
  br i1 %17, label %18, label %24, !dbg !493

; <label>:18                                      ; preds = %12, %0
  %19 = load %struct._IO_FILE** @stderr, align 4, !dbg !495
  %20 = load i8** %1, align 4, !dbg !495
  %21 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([21 x i8]* @.str29, i32 0, i32 0), i8* %20), !dbg !495
  %22 = load %struct._IO_FILE** @stderr, align 4, !dbg !495
  %23 = call i32 @fflush(%struct._IO_FILE* %22), !dbg !495
  br label %30, !dbg !495

; <label>:24                                      ; preds = %12
  %25 = load %struct._IO_FILE** @stderr, align 4, !dbg !496
  %26 = load i8** %1, align 4, !dbg !496
  %27 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %25, i8* getelementptr inbounds ([26 x i8]* @.str30, i32 0, i32 0), i8* %26), !dbg !496
  %28 = load %struct._IO_FILE** @stderr, align 4, !dbg !496
  %29 = call i32 @fflush(%struct._IO_FILE* %28), !dbg !496
  br label %30

; <label>:30                                      ; preds = %24, %18
  %31 = load %struct._IO_FILE** @stderr, align 4, !dbg !497
  %32 = load i8** @progname, align 4, !dbg !497
  %33 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %31, i8* getelementptr inbounds ([346 x i8]* @.str31, i32 0, i32 0), i8* %32), !dbg !497
  %34 = load %struct._IO_FILE** @stderr, align 4, !dbg !497
  %35 = call i32 @fflush(%struct._IO_FILE* %34), !dbg !497
  ret void, !dbg !498
}

; Function Attrs: nounwind
define internal void @print_version() #0 {
  %1 = load %struct._IO_FILE** @stdout, align 4, !dbg !499
  %2 = call i32 @fwrite(i8* getelementptr inbounds ([52 x i8]* @.str27, i32 0, i32 0), i32 1, i32 51, %struct._IO_FILE* %1), !dbg !499
  %3 = load %struct._IO_FILE** @stdout, align 4, !dbg !500
  %4 = call i32 @fwrite(i8* getelementptr inbounds ([2 x i8]* @.str3, i32 0, i32 0), i32 1, i32 1, %struct._IO_FILE* %3), !dbg !500
  %5 = load %struct._IO_FILE** @stdout, align 4, !dbg !500
  %6 = call i32 @fflush(%struct._IO_FILE* %5), !dbg !500
  ret void, !dbg !501
}

declare void @lua_pushboolean(%struct.lua_State*, i32) #2

declare void @lua_setfield(%struct.lua_State*, i32, i8*) #2

declare void @luaL_openlibs(%struct.lua_State*) #2

; Function Attrs: nounwind
define internal void @createargtable(%struct.lua_State* %L, i8** %argv, i32 %argc, i32 %script) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca i8**, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %i = alloca i32, align 4
  %narg = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !502), !dbg !503
  store i8** %argv, i8*** %2, align 4
  call void @llvm.dbg.declare(metadata !{i8*** %2}, metadata !504), !dbg !505
  store i32 %argc, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !506), !dbg !507
  store i32 %script, i32* %4, align 4
  call void @llvm.dbg.declare(metadata !{i32* %4}, metadata !508), !dbg !509
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !510), !dbg !511
  call void @llvm.dbg.declare(metadata !{i32* %narg}, metadata !512), !dbg !513
  %5 = load i32* %4, align 4, !dbg !514
  %6 = load i32* %3, align 4, !dbg !514
  %7 = icmp eq i32 %5, %6, !dbg !514
  br i1 %7, label %8, label %9, !dbg !514

; <label>:8                                       ; preds = %0
  store i32 0, i32* %4, align 4, !dbg !516
  br label %9, !dbg !516

; <label>:9                                       ; preds = %8, %0
  %10 = load i32* %3, align 4, !dbg !518
  %11 = load i32* %4, align 4, !dbg !518
  %12 = add nsw i32 %11, 1, !dbg !518
  %13 = sub nsw i32 %10, %12, !dbg !518
  store i32 %13, i32* %narg, align 4, !dbg !518
  %14 = load %struct.lua_State** %1, align 4, !dbg !519
  %15 = load i32* %narg, align 4, !dbg !519
  %16 = load i32* %4, align 4, !dbg !519
  %17 = add nsw i32 %16, 1, !dbg !519
  call void @lua_createtable(%struct.lua_State* %14, i32 %15, i32 %17), !dbg !519
  store i32 0, i32* %i, align 4, !dbg !520
  br label %18, !dbg !520

; <label>:18                                      ; preds = %34, %9
  %19 = load i32* %i, align 4, !dbg !522
  %20 = load i32* %3, align 4, !dbg !522
  %21 = icmp slt i32 %19, %20, !dbg !522
  br i1 %21, label %22, label %37, !dbg !522

; <label>:22                                      ; preds = %18
  %23 = load %struct.lua_State** %1, align 4, !dbg !525
  %24 = load i32* %i, align 4, !dbg !525
  %25 = load i8*** %2, align 4, !dbg !525
  %26 = getelementptr inbounds i8** %25, i32 %24, !dbg !525
  %27 = load i8** %26, align 4, !dbg !525
  %28 = call i8* @lua_pushstring(%struct.lua_State* %23, i8* %27), !dbg !525
  %29 = load %struct.lua_State** %1, align 4, !dbg !527
  %30 = load i32* %i, align 4, !dbg !527
  %31 = load i32* %4, align 4, !dbg !527
  %32 = sub nsw i32 %30, %31, !dbg !527
  %33 = sext i32 %32 to i64, !dbg !527
  call void @lua_rawseti(%struct.lua_State* %29, i32 -2, i64 %33), !dbg !527
  br label %34, !dbg !528

; <label>:34                                      ; preds = %22
  %35 = load i32* %i, align 4, !dbg !529
  %36 = add nsw i32 %35, 1, !dbg !529
  store i32 %36, i32* %i, align 4, !dbg !529
  br label %18, !dbg !529

; <label>:37                                      ; preds = %18
  %38 = load %struct.lua_State** %1, align 4, !dbg !530
  call void @lua_setglobal(%struct.lua_State* %38, i8* getelementptr inbounds ([4 x i8]* @.str20, i32 0, i32 0)), !dbg !530
  ret void, !dbg !531
}

; Function Attrs: nounwind
define internal i32 @handle_luainit(%struct.lua_State* %L) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.lua_State*, align 4
  %name = alloca i8*, align 4
  %init = alloca i8*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %2}, metadata !532), !dbg !533
  call void @llvm.dbg.declare(metadata !{i8** %name}, metadata !534), !dbg !535
  store i8* getelementptr inbounds ([14 x i8]* @.str25, i32 0, i32 0), i8** %name, align 4, !dbg !536
  call void @llvm.dbg.declare(metadata !{i8** %init}, metadata !537), !dbg !538
  %3 = load i8** %name, align 4, !dbg !539
  %4 = getelementptr inbounds i8* %3, i32 1, !dbg !539
  %5 = call i8* @getenv(i8* %4) #4, !dbg !539
  store i8* %5, i8** %init, align 4, !dbg !539
  %6 = load i8** %init, align 4, !dbg !540
  %7 = icmp eq i8* %6, null, !dbg !540
  br i1 %7, label %8, label %12, !dbg !540

; <label>:8                                       ; preds = %0
  store i8* getelementptr inbounds ([10 x i8]* @.str26, i32 0, i32 0), i8** %name, align 4, !dbg !542
  %9 = load i8** %name, align 4, !dbg !544
  %10 = getelementptr inbounds i8* %9, i32 1, !dbg !544
  %11 = call i8* @getenv(i8* %10) #4, !dbg !544
  store i8* %11, i8** %init, align 4, !dbg !544
  br label %12, !dbg !545

; <label>:12                                      ; preds = %8, %0
  %13 = load i8** %init, align 4, !dbg !546
  %14 = icmp eq i8* %13, null, !dbg !546
  br i1 %14, label %15, label %16, !dbg !546

; <label>:15                                      ; preds = %12
  store i32 0, i32* %1, !dbg !548
  br label %32, !dbg !548

; <label>:16                                      ; preds = %12
  %17 = load i8** %init, align 4, !dbg !550
  %18 = getelementptr inbounds i8* %17, i32 0, !dbg !550
  %19 = load i8* %18, align 1, !dbg !550
  %20 = zext i8 %19 to i32, !dbg !550
  %21 = icmp eq i32 %20, 64, !dbg !550
  br i1 %21, label %22, label %27, !dbg !550

; <label>:22                                      ; preds = %16
  %23 = load %struct.lua_State** %2, align 4, !dbg !552
  %24 = load i8** %init, align 4, !dbg !552
  %25 = getelementptr inbounds i8* %24, i32 1, !dbg !552
  %26 = call i32 @dofile(%struct.lua_State* %23, i8* %25), !dbg !552
  store i32 %26, i32* %1, !dbg !552
  br label %32, !dbg !552

; <label>:27                                      ; preds = %16
  %28 = load %struct.lua_State** %2, align 4, !dbg !553
  %29 = load i8** %init, align 4, !dbg !553
  %30 = load i8** %name, align 4, !dbg !553
  %31 = call i32 @dostring(%struct.lua_State* %28, i8* %29, i8* %30), !dbg !553
  store i32 %31, i32* %1, !dbg !553
  br label %32, !dbg !553

; <label>:32                                      ; preds = %27, %22, %15
  %33 = load i32* %1, !dbg !554
  ret i32 %33, !dbg !554
}

; Function Attrs: nounwind
define internal i32 @runargs(%struct.lua_State* %L, i8** %argv, i32 %n) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.lua_State*, align 4
  %3 = alloca i8**, align 4
  %4 = alloca i32, align 4
  %i = alloca i32, align 4
  %option = alloca i32, align 4
  %status = alloca i32, align 4
  %extra = alloca i8*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %2}, metadata !555), !dbg !556
  store i8** %argv, i8*** %3, align 4
  call void @llvm.dbg.declare(metadata !{i8*** %3}, metadata !557), !dbg !558
  store i32 %n, i32* %4, align 4
  call void @llvm.dbg.declare(metadata !{i32* %4}, metadata !559), !dbg !560
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !561), !dbg !562
  store i32 1, i32* %i, align 4, !dbg !563
  br label %5, !dbg !563

; <label>:5                                       ; preds = %56, %0
  %6 = load i32* %i, align 4, !dbg !565
  %7 = load i32* %4, align 4, !dbg !565
  %8 = icmp slt i32 %6, %7, !dbg !565
  br i1 %8, label %9, label %59, !dbg !565

; <label>:9                                       ; preds = %5
  call void @llvm.dbg.declare(metadata !{i32* %option}, metadata !568), !dbg !570
  %10 = load i32* %i, align 4, !dbg !571
  %11 = load i8*** %3, align 4, !dbg !571
  %12 = getelementptr inbounds i8** %11, i32 %10, !dbg !571
  %13 = load i8** %12, align 4, !dbg !571
  %14 = getelementptr inbounds i8* %13, i32 1, !dbg !571
  %15 = load i8* %14, align 1, !dbg !571
  %16 = zext i8 %15 to i32, !dbg !571
  store i32 %16, i32* %option, align 4, !dbg !571
  %17 = load i32* %option, align 4, !dbg !572
  %18 = icmp eq i32 %17, 101, !dbg !572
  br i1 %18, label %22, label %19, !dbg !572

; <label>:19                                      ; preds = %9
  %20 = load i32* %option, align 4, !dbg !574
  %21 = icmp eq i32 %20, 108, !dbg !574
  br i1 %21, label %22, label %55, !dbg !574

; <label>:22                                      ; preds = %19, %9
  call void @llvm.dbg.declare(metadata !{i32* %status}, metadata !576), !dbg !578
  call void @llvm.dbg.declare(metadata !{i8** %extra}, metadata !579), !dbg !580
  %23 = load i32* %i, align 4, !dbg !581
  %24 = load i8*** %3, align 4, !dbg !581
  %25 = getelementptr inbounds i8** %24, i32 %23, !dbg !581
  %26 = load i8** %25, align 4, !dbg !581
  %27 = getelementptr inbounds i8* %26, i32 2, !dbg !581
  store i8* %27, i8** %extra, align 4, !dbg !581
  %28 = load i8** %extra, align 4, !dbg !582
  %29 = load i8* %28, align 1, !dbg !582
  %30 = zext i8 %29 to i32, !dbg !582
  %31 = icmp eq i32 %30, 0, !dbg !582
  br i1 %31, label %32, label %38, !dbg !582

; <label>:32                                      ; preds = %22
  %33 = load i32* %i, align 4, !dbg !584
  %34 = add nsw i32 %33, 1, !dbg !584
  store i32 %34, i32* %i, align 4, !dbg !584
  %35 = load i8*** %3, align 4, !dbg !584
  %36 = getelementptr inbounds i8** %35, i32 %34, !dbg !584
  %37 = load i8** %36, align 4, !dbg !584
  store i8* %37, i8** %extra, align 4, !dbg !584
  br label %38, !dbg !584

; <label>:38                                      ; preds = %32, %22
  %39 = load i32* %option, align 4, !dbg !586
  %40 = icmp eq i32 %39, 101, !dbg !586
  br i1 %40, label %41, label %45, !dbg !586

; <label>:41                                      ; preds = %38
  %42 = load %struct.lua_State** %2, align 4, !dbg !587
  %43 = load i8** %extra, align 4, !dbg !587
  %44 = call i32 @dostring(%struct.lua_State* %42, i8* %43, i8* getelementptr inbounds ([16 x i8]* @.str23, i32 0, i32 0)), !dbg !587
  br label %49, !dbg !587

; <label>:45                                      ; preds = %38
  %46 = load %struct.lua_State** %2, align 4, !dbg !588
  %47 = load i8** %extra, align 4, !dbg !588
  %48 = call i32 @dolibrary(%struct.lua_State* %46, i8* %47), !dbg !588
  br label %49, !dbg !588

; <label>:49                                      ; preds = %45, %41
  %50 = phi i32 [ %44, %41 ], [ %48, %45 ], !dbg !588
  store i32 %50, i32* %status, align 4, !dbg !589
  %51 = load i32* %status, align 4, !dbg !591
  %52 = icmp ne i32 %51, 0, !dbg !591
  br i1 %52, label %53, label %54, !dbg !591

; <label>:53                                      ; preds = %49
  store i32 0, i32* %1, !dbg !593
  br label %60, !dbg !593

; <label>:54                                      ; preds = %49
  br label %55, !dbg !595

; <label>:55                                      ; preds = %54, %19
  br label %56, !dbg !596

; <label>:56                                      ; preds = %55
  %57 = load i32* %i, align 4, !dbg !597
  %58 = add nsw i32 %57, 1, !dbg !597
  store i32 %58, i32* %i, align 4, !dbg !597
  br label %5, !dbg !597

; <label>:59                                      ; preds = %5
  store i32 1, i32* %1, !dbg !598
  br label %60, !dbg !598

; <label>:60                                      ; preds = %59, %53
  %61 = load i32* %1, !dbg !599
  ret i32 %61, !dbg !599
}

; Function Attrs: nounwind
define internal i32 @handle_script(%struct.lua_State* %L, i8** %argv) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca i8**, align 4
  %status = alloca i32, align 4
  %fname = alloca i8*, align 4
  %n = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !600), !dbg !601
  store i8** %argv, i8*** %2, align 4
  call void @llvm.dbg.declare(metadata !{i8*** %2}, metadata !602), !dbg !603
  call void @llvm.dbg.declare(metadata !{i32* %status}, metadata !604), !dbg !605
  call void @llvm.dbg.declare(metadata !{i8** %fname}, metadata !606), !dbg !607
  %3 = load i8*** %2, align 4, !dbg !608
  %4 = getelementptr inbounds i8** %3, i32 0, !dbg !608
  %5 = load i8** %4, align 4, !dbg !608
  store i8* %5, i8** %fname, align 4, !dbg !608
  %6 = load i8** %fname, align 4, !dbg !609
  %7 = call i32 @strcmp(i8* %6, i8* getelementptr inbounds ([2 x i8]* @.str18, i32 0, i32 0)) #5, !dbg !609
  %8 = icmp eq i32 %7, 0, !dbg !609
  br i1 %8, label %9, label %16, !dbg !609

; <label>:9                                       ; preds = %0
  %10 = load i8*** %2, align 4, !dbg !611
  %11 = getelementptr inbounds i8** %10, i32 -1, !dbg !611
  %12 = load i8** %11, align 4, !dbg !611
  %13 = call i32 @strcmp(i8* %12, i8* getelementptr inbounds ([3 x i8]* @.str19, i32 0, i32 0)) #5, !dbg !611
  %14 = icmp ne i32 %13, 0, !dbg !611
  br i1 %14, label %15, label %16, !dbg !611

; <label>:15                                      ; preds = %9
  store i8* null, i8** %fname, align 4, !dbg !613
  br label %16, !dbg !613

; <label>:16                                      ; preds = %15, %9, %0
  %17 = load %struct.lua_State** %1, align 4, !dbg !614
  %18 = load i8** %fname, align 4, !dbg !614
  %19 = call i32 @luaL_loadfilex(%struct.lua_State* %17, i8* %18, i8* null), !dbg !614
  store i32 %19, i32* %status, align 4, !dbg !614
  %20 = load i32* %status, align 4, !dbg !615
  %21 = icmp eq i32 %20, 0, !dbg !615
  br i1 %21, label %22, label %28, !dbg !615

; <label>:22                                      ; preds = %16
  call void @llvm.dbg.declare(metadata !{i32* %n}, metadata !617), !dbg !619
  %23 = load %struct.lua_State** %1, align 4, !dbg !620
  %24 = call i32 @pushargs(%struct.lua_State* %23), !dbg !620
  store i32 %24, i32* %n, align 4, !dbg !620
  %25 = load %struct.lua_State** %1, align 4, !dbg !621
  %26 = load i32* %n, align 4, !dbg !621
  %27 = call i32 @docall(%struct.lua_State* %25, i32 %26, i32 -1), !dbg !621
  store i32 %27, i32* %status, align 4, !dbg !621
  br label %28, !dbg !622

; <label>:28                                      ; preds = %22, %16
  %29 = load %struct.lua_State** %1, align 4, !dbg !623
  %30 = load i32* %status, align 4, !dbg !623
  %31 = call i32 @report(%struct.lua_State* %29, i32 %30), !dbg !623
  ret i32 %31, !dbg !623
}

; Function Attrs: nounwind
define internal void @doREPL(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %status = alloca i32, align 4
  %oldprogname = alloca i8*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !624), !dbg !625
  call void @llvm.dbg.declare(metadata !{i32* %status}, metadata !626), !dbg !627
  call void @llvm.dbg.declare(metadata !{i8** %oldprogname}, metadata !628), !dbg !629
  %2 = load i8** @progname, align 4, !dbg !630
  store i8* %2, i8** %oldprogname, align 4, !dbg !630
  store i8* null, i8** @progname, align 4, !dbg !631
  br label %3, !dbg !632

; <label>:3                                       ; preds = %22, %0
  %4 = load %struct.lua_State** %1, align 4, !dbg !633
  %5 = call i32 @loadline(%struct.lua_State* %4), !dbg !633
  store i32 %5, i32* %status, align 4, !dbg !633
  %6 = icmp ne i32 %5, -1, !dbg !633
  br i1 %6, label %7, label %23, !dbg !633

; <label>:7                                       ; preds = %3
  %8 = load i32* %status, align 4, !dbg !635
  %9 = icmp eq i32 %8, 0, !dbg !635
  br i1 %9, label %10, label %13, !dbg !635

; <label>:10                                      ; preds = %7
  %11 = load %struct.lua_State** %1, align 4, !dbg !638
  %12 = call i32 @docall(%struct.lua_State* %11, i32 0, i32 -1), !dbg !638
  store i32 %12, i32* %status, align 4, !dbg !638
  br label %13, !dbg !638

; <label>:13                                      ; preds = %10, %7
  %14 = load i32* %status, align 4, !dbg !639
  %15 = icmp eq i32 %14, 0, !dbg !639
  br i1 %15, label %16, label %18, !dbg !639

; <label>:16                                      ; preds = %13
  %17 = load %struct.lua_State** %1, align 4, !dbg !641
  call void @l_print(%struct.lua_State* %17), !dbg !641
  br label %22, !dbg !641

; <label>:18                                      ; preds = %13
  %19 = load %struct.lua_State** %1, align 4, !dbg !643
  %20 = load i32* %status, align 4, !dbg !643
  %21 = call i32 @report(%struct.lua_State* %19, i32 %20), !dbg !643
  br label %22

; <label>:22                                      ; preds = %18, %16
  br label %3, !dbg !644

; <label>:23                                      ; preds = %3
  %24 = load %struct.lua_State** %1, align 4, !dbg !645
  call void @lua_settop(%struct.lua_State* %24, i32 0), !dbg !645
  %25 = load %struct._IO_FILE** @stdout, align 4, !dbg !646
  %26 = call i32 @fwrite(i8* getelementptr inbounds ([2 x i8]* @.str3, i32 0, i32 0), i32 1, i32 1, %struct._IO_FILE* %25), !dbg !646
  %27 = load %struct._IO_FILE** @stdout, align 4, !dbg !646
  %28 = call i32 @fflush(%struct._IO_FILE* %27), !dbg !646
  %29 = load i8** %oldprogname, align 4, !dbg !647
  store i8* %29, i8** @progname, align 4, !dbg !647
  ret void, !dbg !648
}

; Function Attrs: nounwind
define internal i32 @loadline(%struct.lua_State* %L) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.lua_State*, align 4
  %status = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %2}, metadata !649), !dbg !650
  call void @llvm.dbg.declare(metadata !{i32* %status}, metadata !651), !dbg !652
  %3 = load %struct.lua_State** %2, align 4, !dbg !653
  call void @lua_settop(%struct.lua_State* %3, i32 0), !dbg !653
  %4 = load %struct.lua_State** %2, align 4, !dbg !654
  %5 = call i32 @pushline(%struct.lua_State* %4, i32 1), !dbg !654
  %6 = icmp ne i32 %5, 0, !dbg !654
  br i1 %6, label %8, label %7, !dbg !654

; <label>:7                                       ; preds = %0
  store i32 -1, i32* %1, !dbg !656
  br label %19, !dbg !656

; <label>:8                                       ; preds = %0
  %9 = load %struct.lua_State** %2, align 4, !dbg !657
  %10 = call i32 @addreturn(%struct.lua_State* %9), !dbg !657
  store i32 %10, i32* %status, align 4, !dbg !657
  %11 = icmp ne i32 %10, 0, !dbg !657
  br i1 %11, label %12, label %15, !dbg !657

; <label>:12                                      ; preds = %8
  %13 = load %struct.lua_State** %2, align 4, !dbg !659
  %14 = call i32 @multiline(%struct.lua_State* %13), !dbg !659
  store i32 %14, i32* %status, align 4, !dbg !659
  br label %15, !dbg !659

; <label>:15                                      ; preds = %12, %8
  %16 = load %struct.lua_State** %2, align 4, !dbg !660
  call void @lua_rotate(%struct.lua_State* %16, i32 1, i32 -1), !dbg !660
  %17 = load %struct.lua_State** %2, align 4, !dbg !660
  call void @lua_settop(%struct.lua_State* %17, i32 -2), !dbg !660
  %18 = load i32* %status, align 4, !dbg !661
  store i32 %18, i32* %1, !dbg !661
  br label %19, !dbg !661

; <label>:19                                      ; preds = %15, %7
  %20 = load i32* %1, !dbg !662
  ret i32 %20, !dbg !662
}

; Function Attrs: nounwind
define internal i32 @docall(%struct.lua_State* %L, i32 %narg, i32 %nres) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %status = alloca i32, align 4
  %base = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !663), !dbg !664
  store i32 %narg, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !665), !dbg !666
  store i32 %nres, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !667), !dbg !668
  call void @llvm.dbg.declare(metadata !{i32* %status}, metadata !669), !dbg !670
  call void @llvm.dbg.declare(metadata !{i32* %base}, metadata !671), !dbg !672
  %4 = load %struct.lua_State** %1, align 4, !dbg !673
  %5 = call i32 @lua_gettop(%struct.lua_State* %4), !dbg !673
  %6 = load i32* %2, align 4, !dbg !673
  %7 = sub nsw i32 %5, %6, !dbg !673
  store i32 %7, i32* %base, align 4, !dbg !673
  %8 = load %struct.lua_State** %1, align 4, !dbg !674
  call void @lua_pushcclosure(%struct.lua_State* %8, i32 (%struct.lua_State*)* @msghandler, i32 0), !dbg !674
  %9 = load %struct.lua_State** %1, align 4, !dbg !675
  %10 = load i32* %base, align 4, !dbg !675
  call void @lua_rotate(%struct.lua_State* %9, i32 %10, i32 1), !dbg !675
  %11 = load %struct.lua_State** %1, align 4, !dbg !676
  store %struct.lua_State* %11, %struct.lua_State** @globalL, align 4, !dbg !676
  %12 = call void (i32)* (i32, void (i32)*)* @__sysv_signal(i32 2, void (i32)* @laction) #4, !dbg !677
  %13 = load %struct.lua_State** %1, align 4, !dbg !678
  %14 = load i32* %2, align 4, !dbg !678
  %15 = load i32* %3, align 4, !dbg !678
  %16 = load i32* %base, align 4, !dbg !678
  %17 = call i32 @lua_pcallk(%struct.lua_State* %13, i32 %14, i32 %15, i32 %16, i32 0, i32 (%struct.lua_State*, i32, i32)* null), !dbg !678
  store i32 %17, i32* %status, align 4, !dbg !678
  %18 = call void (i32)* (i32, void (i32)*)* @__sysv_signal(i32 2, void (i32)* null) #4, !dbg !679
  %19 = load %struct.lua_State** %1, align 4, !dbg !680
  %20 = load i32* %base, align 4, !dbg !680
  call void @lua_rotate(%struct.lua_State* %19, i32 %20, i32 -1), !dbg !680
  %21 = load %struct.lua_State** %1, align 4, !dbg !680
  call void @lua_settop(%struct.lua_State* %21, i32 -2), !dbg !680
  %22 = load i32* %status, align 4, !dbg !681
  ret i32 %22, !dbg !681
}

; Function Attrs: nounwind
define internal void @l_print(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %n = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !682), !dbg !683
  call void @llvm.dbg.declare(metadata !{i32* %n}, metadata !684), !dbg !685
  %2 = load %struct.lua_State** %1, align 4, !dbg !686
  %3 = call i32 @lua_gettop(%struct.lua_State* %2), !dbg !686
  store i32 %3, i32* %n, align 4, !dbg !686
  %4 = load i32* %n, align 4, !dbg !687
  %5 = icmp sgt i32 %4, 0, !dbg !687
  br i1 %5, label %6, label %22, !dbg !687

; <label>:6                                       ; preds = %0
  %7 = load %struct.lua_State** %1, align 4, !dbg !689
  call void @luaL_checkstack(%struct.lua_State* %7, i32 20, i8* getelementptr inbounds ([26 x i8]* @.str4, i32 0, i32 0)), !dbg !689
  %8 = load %struct.lua_State** %1, align 4, !dbg !691
  %9 = call i32 @lua_getglobal(%struct.lua_State* %8, i8* getelementptr inbounds ([6 x i8]* @.str5, i32 0, i32 0)), !dbg !691
  %10 = load %struct.lua_State** %1, align 4, !dbg !692
  call void @lua_rotate(%struct.lua_State* %10, i32 1, i32 1), !dbg !692
  %11 = load %struct.lua_State** %1, align 4, !dbg !693
  %12 = load i32* %n, align 4, !dbg !693
  %13 = call i32 @lua_pcallk(%struct.lua_State* %11, i32 %12, i32 0, i32 0, i32 0, i32 (%struct.lua_State*, i32, i32)* null), !dbg !693
  %14 = icmp ne i32 %13, 0, !dbg !693
  br i1 %14, label %15, label %21, !dbg !693

; <label>:15                                      ; preds = %6
  %16 = load i8** @progname, align 4, !dbg !695
  %17 = load %struct.lua_State** %1, align 4, !dbg !696
  %18 = load %struct.lua_State** %1, align 4, !dbg !697
  %19 = call i8* @lua_tolstring(%struct.lua_State* %18, i32 -1, i32* null), !dbg !697
  %20 = call i8* (%struct.lua_State*, i8*, ...)* @lua_pushfstring(%struct.lua_State* %17, i8* getelementptr inbounds ([27 x i8]* @.str6, i32 0, i32 0), i8* %19), !dbg !696
  call void @l_message(i8* %16, i8* %20), !dbg !695
  br label %21, !dbg !695

; <label>:21                                      ; preds = %15, %6
  br label %22, !dbg !698

; <label>:22                                      ; preds = %21, %0
  ret void, !dbg !699
}

declare i32 @fwrite(i8*, i32, i32, %struct._IO_FILE*) #2

declare i32 @fflush(%struct._IO_FILE*) #2

declare i32 @lua_gettop(%struct.lua_State*) #2

declare void @luaL_checkstack(%struct.lua_State*, i32, i8*) #2

declare i32 @lua_getglobal(%struct.lua_State*, i8*) #2

declare void @lua_rotate(%struct.lua_State*, i32, i32) #2

declare i8* @lua_pushfstring(%struct.lua_State*, i8*, ...) #2

; Function Attrs: nounwind
define internal i32 @msghandler(%struct.lua_State* %L) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.lua_State*, align 4
  %msg = alloca i8*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %2}, metadata !700), !dbg !701
  call void @llvm.dbg.declare(metadata !{i8** %msg}, metadata !702), !dbg !703
  %3 = load %struct.lua_State** %2, align 4, !dbg !704
  %4 = call i8* @lua_tolstring(%struct.lua_State* %3, i32 1, i32* null), !dbg !704
  store i8* %4, i8** %msg, align 4, !dbg !704
  %5 = load i8** %msg, align 4, !dbg !705
  %6 = icmp eq i8* %5, null, !dbg !705
  br i1 %6, label %7, label %24, !dbg !705

; <label>:7                                       ; preds = %0
  %8 = load %struct.lua_State** %2, align 4, !dbg !707
  %9 = call i32 @luaL_callmeta(%struct.lua_State* %8, i32 1, i8* getelementptr inbounds ([11 x i8]* @.str8, i32 0, i32 0)), !dbg !707
  %10 = icmp ne i32 %9, 0, !dbg !707
  br i1 %10, label %11, label %16, !dbg !707

; <label>:11                                      ; preds = %7
  %12 = load %struct.lua_State** %2, align 4, !dbg !710
  %13 = call i32 @lua_type(%struct.lua_State* %12, i32 -1), !dbg !710
  %14 = icmp eq i32 %13, 4, !dbg !710
  br i1 %14, label %15, label %16, !dbg !710

; <label>:15                                      ; preds = %11
  store i32 1, i32* %1, !dbg !711
  br label %28, !dbg !711

; <label>:16                                      ; preds = %11, %7
  %17 = load %struct.lua_State** %2, align 4, !dbg !712
  %18 = load %struct.lua_State** %2, align 4, !dbg !713
  %19 = load %struct.lua_State** %2, align 4, !dbg !713
  %20 = call i32 @lua_type(%struct.lua_State* %19, i32 1), !dbg !713
  %21 = call i8* @lua_typename(%struct.lua_State* %18, i32 %20), !dbg !713
  %22 = call i8* (%struct.lua_State*, i8*, ...)* @lua_pushfstring(%struct.lua_State* %17, i8* getelementptr inbounds ([29 x i8]* @.str9, i32 0, i32 0), i8* %21), !dbg !712
  store i8* %22, i8** %msg, align 4, !dbg !712
  br label %23

; <label>:23                                      ; preds = %16
  br label %24, !dbg !714

; <label>:24                                      ; preds = %23, %0
  %25 = load %struct.lua_State** %2, align 4, !dbg !715
  %26 = load %struct.lua_State** %2, align 4, !dbg !715
  %27 = load i8** %msg, align 4, !dbg !715
  call void @luaL_traceback(%struct.lua_State* %25, %struct.lua_State* %26, i8* %27, i32 1), !dbg !715
  store i32 1, i32* %1, !dbg !716
  br label %28, !dbg !716

; <label>:28                                      ; preds = %24, %15
  %29 = load i32* %1, !dbg !717
  ret i32 %29, !dbg !717
}

; Function Attrs: nounwind
declare void (i32)* @__sysv_signal(i32, void (i32)*) #0

; Function Attrs: nounwind
define internal void @laction(i32 %i) #0 {
  %1 = alloca i32, align 4
  store i32 %i, i32* %1, align 4
  call void @llvm.dbg.declare(metadata !{i32* %1}, metadata !718), !dbg !719
  %2 = load i32* %1, align 4, !dbg !720
  %3 = call void (i32)* (i32, void (i32)*)* @__sysv_signal(i32 %2, void (i32)* null) #4, !dbg !720
  %4 = load %struct.lua_State** @globalL, align 4, !dbg !721
  call void @lua_sethook(%struct.lua_State* %4, void (%struct.lua_State*, %struct.lua_Debug*)* @lstop, i32 11, i32 1), !dbg !721
  ret void, !dbg !722
}

declare void @lua_sethook(%struct.lua_State*, void (%struct.lua_State*, %struct.lua_Debug*)*, i32, i32) #2

; Function Attrs: nounwind
define internal void @lstop(%struct.lua_State* %L, %struct.lua_Debug* %ar) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca %struct.lua_Debug*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !723), !dbg !724
  store %struct.lua_Debug* %ar, %struct.lua_Debug** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_Debug** %2}, metadata !725), !dbg !726
  %3 = load %struct.lua_Debug** %2, align 4, !dbg !727
  %4 = load %struct.lua_State** %1, align 4, !dbg !728
  call void @lua_sethook(%struct.lua_State* %4, void (%struct.lua_State*, %struct.lua_Debug*)* null, i32 0, i32 0), !dbg !728
  %5 = load %struct.lua_State** %1, align 4, !dbg !729
  %6 = call i32 (%struct.lua_State*, i8*, ...)* @luaL_error(%struct.lua_State* %5, i8* getelementptr inbounds ([13 x i8]* @.str7, i32 0, i32 0)), !dbg !729
  ret void, !dbg !730
}

declare i32 @luaL_error(%struct.lua_State*, i8*, ...) #2

declare i32 @luaL_callmeta(%struct.lua_State*, i32, i8*) #2

declare i32 @lua_type(%struct.lua_State*, i32) #2

declare i8* @lua_typename(%struct.lua_State*, i32) #2

declare void @luaL_traceback(%struct.lua_State*, %struct.lua_State*, i8*, i32) #2

; Function Attrs: nounwind
define internal i32 @pushline(%struct.lua_State* %L, i32 %firstline) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.lua_State*, align 4
  %3 = alloca i32, align 4
  %buffer = alloca [512 x i8], align 1
  %b = alloca i8*, align 4
  %l = alloca i32, align 4
  %prmt = alloca i8*, align 4
  %readstatus = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %2}, metadata !731), !dbg !732
  store i32 %firstline, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !733), !dbg !734
  call void @llvm.dbg.declare(metadata !{[512 x i8]* %buffer}, metadata !735), !dbg !739
  call void @llvm.dbg.declare(metadata !{i8** %b}, metadata !740), !dbg !741
  %4 = getelementptr inbounds [512 x i8]* %buffer, i32 0, i32 0, !dbg !742
  store i8* %4, i8** %b, align 4, !dbg !742
  call void @llvm.dbg.declare(metadata !{i32* %l}, metadata !743), !dbg !747
  call void @llvm.dbg.declare(metadata !{i8** %prmt}, metadata !748), !dbg !749
  %5 = load %struct.lua_State** %2, align 4, !dbg !750
  %6 = load i32* %3, align 4, !dbg !750
  %7 = call i8* @get_prompt(%struct.lua_State* %5, i32 %6), !dbg !750
  store i8* %7, i8** %prmt, align 4, !dbg !750
  call void @llvm.dbg.declare(metadata !{i32* %readstatus}, metadata !751), !dbg !752
  %8 = load %struct.lua_State** %2, align 4, !dbg !753
  %9 = load i8** %prmt, align 4, !dbg !754
  %10 = load %struct._IO_FILE** @stdout, align 4, !dbg !754
  %11 = call i32 @fputs(i8* %9, %struct._IO_FILE* %10), !dbg !754
  %12 = load %struct._IO_FILE** @stdout, align 4, !dbg !754
  %13 = call i32 @fflush(%struct._IO_FILE* %12), !dbg !754
  %14 = load i8** %b, align 4, !dbg !754
  %15 = load %struct._IO_FILE** @stdin, align 4, !dbg !754
  %16 = call i8* @fgets(i8* %14, i32 512, %struct._IO_FILE* %15), !dbg !754
  %17 = icmp ne i8* %16, null, !dbg !754
  %18 = zext i1 %17 to i32, !dbg !754
  store i32 %18, i32* %readstatus, align 4, !dbg !754
  %19 = load i32* %readstatus, align 4, !dbg !755
  %20 = icmp eq i32 %19, 0, !dbg !755
  br i1 %20, label %21, label %22, !dbg !755

; <label>:21                                      ; preds = %0
  store i32 0, i32* %1, !dbg !757
  br label %63, !dbg !757

; <label>:22                                      ; preds = %0
  %23 = load %struct.lua_State** %2, align 4, !dbg !758
  call void @lua_settop(%struct.lua_State* %23, i32 -2), !dbg !758
  %24 = load i8** %b, align 4, !dbg !759
  %25 = call i32 @strlen(i8* %24) #5, !dbg !759
  store i32 %25, i32* %l, align 4, !dbg !759
  %26 = load i32* %l, align 4, !dbg !760
  %27 = icmp ugt i32 %26, 0, !dbg !760
  br i1 %27, label %28, label %41, !dbg !760

; <label>:28                                      ; preds = %22
  %29 = load i32* %l, align 4, !dbg !762
  %30 = sub i32 %29, 1, !dbg !762
  %31 = load i8** %b, align 4, !dbg !762
  %32 = getelementptr inbounds i8* %31, i32 %30, !dbg !762
  %33 = load i8* %32, align 1, !dbg !762
  %34 = zext i8 %33 to i32, !dbg !762
  %35 = icmp eq i32 %34, 10, !dbg !762
  br i1 %35, label %36, label %41, !dbg !762

; <label>:36                                      ; preds = %28
  %37 = load i32* %l, align 4, !dbg !764
  %38 = add i32 %37, -1, !dbg !764
  store i32 %38, i32* %l, align 4, !dbg !764
  %39 = load i8** %b, align 4, !dbg !764
  %40 = getelementptr inbounds i8* %39, i32 %38, !dbg !764
  store i8 0, i8* %40, align 1, !dbg !764
  br label %41, !dbg !764

; <label>:41                                      ; preds = %36, %28, %22
  %42 = load i32* %3, align 4, !dbg !765
  %43 = icmp ne i32 %42, 0, !dbg !765
  br i1 %43, label %44, label %55, !dbg !765

; <label>:44                                      ; preds = %41
  %45 = load i8** %b, align 4, !dbg !767
  %46 = getelementptr inbounds i8* %45, i32 0, !dbg !767
  %47 = load i8* %46, align 1, !dbg !767
  %48 = zext i8 %47 to i32, !dbg !767
  %49 = icmp eq i32 %48, 61, !dbg !767
  br i1 %49, label %50, label %55, !dbg !767

; <label>:50                                      ; preds = %44
  %51 = load %struct.lua_State** %2, align 4, !dbg !769
  %52 = load i8** %b, align 4, !dbg !769
  %53 = getelementptr inbounds i8* %52, i32 1, !dbg !769
  %54 = call i8* (%struct.lua_State*, i8*, ...)* @lua_pushfstring(%struct.lua_State* %51, i8* getelementptr inbounds ([10 x i8]* @.str13, i32 0, i32 0), i8* %53), !dbg !769
  br label %60, !dbg !769

; <label>:55                                      ; preds = %44, %41
  %56 = load %struct.lua_State** %2, align 4, !dbg !770
  %57 = load i8** %b, align 4, !dbg !770
  %58 = load i32* %l, align 4, !dbg !770
  %59 = call i8* @lua_pushlstring(%struct.lua_State* %56, i8* %57, i32 %58), !dbg !770
  br label %60

; <label>:60                                      ; preds = %55, %50
  %61 = load %struct.lua_State** %2, align 4, !dbg !771
  %62 = load i8** %b, align 4, !dbg !771
  store i32 1, i32* %1, !dbg !773
  br label %63, !dbg !773

; <label>:63                                      ; preds = %60, %21
  %64 = load i32* %1, !dbg !774
  ret i32 %64, !dbg !774
}

; Function Attrs: nounwind
define internal i32 @addreturn(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %line = alloca i8*, align 4
  %retline = alloca i8*, align 4
  %status = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !775), !dbg !776
  call void @llvm.dbg.declare(metadata !{i8** %line}, metadata !777), !dbg !778
  %2 = load %struct.lua_State** %1, align 4, !dbg !779
  %3 = call i8* @lua_tolstring(%struct.lua_State* %2, i32 -1, i32* null), !dbg !779
  store i8* %3, i8** %line, align 4, !dbg !779
  call void @llvm.dbg.declare(metadata !{i8** %retline}, metadata !780), !dbg !781
  %4 = load %struct.lua_State** %1, align 4, !dbg !782
  %5 = load i8** %line, align 4, !dbg !782
  %6 = call i8* (%struct.lua_State*, i8*, ...)* @lua_pushfstring(%struct.lua_State* %4, i8* getelementptr inbounds ([11 x i8]* @.str12, i32 0, i32 0), i8* %5), !dbg !782
  store i8* %6, i8** %retline, align 4, !dbg !782
  call void @llvm.dbg.declare(metadata !{i32* %status}, metadata !783), !dbg !784
  %7 = load %struct.lua_State** %1, align 4, !dbg !785
  %8 = load i8** %retline, align 4, !dbg !785
  %9 = load i8** %retline, align 4, !dbg !785
  %10 = call i32 @strlen(i8* %9) #5, !dbg !785
  %11 = call i32 @luaL_loadbufferx(%struct.lua_State* %7, i8* %8, i32 %10, i8* getelementptr inbounds ([7 x i8]* @.str10, i32 0, i32 0), i8* null), !dbg !785
  store i32 %11, i32* %status, align 4, !dbg !785
  %12 = load i32* %status, align 4, !dbg !786
  %13 = icmp eq i32 %12, 0, !dbg !786
  br i1 %13, label %14, label %26, !dbg !786

; <label>:14                                      ; preds = %0
  %15 = load %struct.lua_State** %1, align 4, !dbg !788
  call void @lua_rotate(%struct.lua_State* %15, i32 -2, i32 -1), !dbg !788
  %16 = load %struct.lua_State** %1, align 4, !dbg !788
  call void @lua_settop(%struct.lua_State* %16, i32 -2), !dbg !788
  %17 = load i8** %line, align 4, !dbg !790
  %18 = getelementptr inbounds i8* %17, i32 0, !dbg !790
  %19 = load i8* %18, align 1, !dbg !790
  %20 = zext i8 %19 to i32, !dbg !790
  %21 = icmp ne i32 %20, 0, !dbg !790
  br i1 %21, label %22, label %25, !dbg !790

; <label>:22                                      ; preds = %14
  %23 = load %struct.lua_State** %1, align 4, !dbg !792
  %24 = load i8** %line, align 4, !dbg !792
  br label %25, !dbg !792

; <label>:25                                      ; preds = %22, %14
  br label %28, !dbg !794

; <label>:26                                      ; preds = %0
  %27 = load %struct.lua_State** %1, align 4, !dbg !795
  call void @lua_settop(%struct.lua_State* %27, i32 -3), !dbg !795
  br label %28

; <label>:28                                      ; preds = %26, %25
  %29 = load i32* %status, align 4, !dbg !796
  ret i32 %29, !dbg !796
}

; Function Attrs: nounwind
define internal i32 @multiline(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %len = alloca i32, align 4
  %line = alloca i8*, align 4
  %status = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !797), !dbg !798
  br label %2, !dbg !799

; <label>:2                                       ; preds = %21, %0
  call void @llvm.dbg.declare(metadata !{i32* %len}, metadata !801), !dbg !803
  call void @llvm.dbg.declare(metadata !{i8** %line}, metadata !804), !dbg !805
  %3 = load %struct.lua_State** %1, align 4, !dbg !806
  %4 = call i8* @lua_tolstring(%struct.lua_State* %3, i32 1, i32* %len), !dbg !806
  store i8* %4, i8** %line, align 4, !dbg !806
  call void @llvm.dbg.declare(metadata !{i32* %status}, metadata !807), !dbg !808
  %5 = load %struct.lua_State** %1, align 4, !dbg !809
  %6 = load i8** %line, align 4, !dbg !809
  %7 = load i32* %len, align 4, !dbg !809
  %8 = call i32 @luaL_loadbufferx(%struct.lua_State* %5, i8* %6, i32 %7, i8* getelementptr inbounds ([7 x i8]* @.str10, i32 0, i32 0), i8* null), !dbg !809
  store i32 %8, i32* %status, align 4, !dbg !809
  %9 = load %struct.lua_State** %1, align 4, !dbg !810
  %10 = load i32* %status, align 4, !dbg !810
  %11 = call i32 @incomplete(%struct.lua_State* %9, i32 %10), !dbg !810
  %12 = icmp ne i32 %11, 0, !dbg !810
  br i1 %12, label %13, label %17, !dbg !810

; <label>:13                                      ; preds = %2
  %14 = load %struct.lua_State** %1, align 4, !dbg !812
  %15 = call i32 @pushline(%struct.lua_State* %14, i32 0), !dbg !812
  %16 = icmp ne i32 %15, 0, !dbg !812
  br i1 %16, label %21, label %17, !dbg !812

; <label>:17                                      ; preds = %13, %2
  %18 = load %struct.lua_State** %1, align 4, !dbg !814
  %19 = load i8** %line, align 4, !dbg !814
  %20 = load i32* %status, align 4, !dbg !817
  ret i32 %20, !dbg !817

; <label>:21                                      ; preds = %13
  %22 = load %struct.lua_State** %1, align 4, !dbg !818
  %23 = call i8* @lua_pushstring(%struct.lua_State* %22, i8* getelementptr inbounds ([2 x i8]* @.str3, i32 0, i32 0)), !dbg !818
  %24 = load %struct.lua_State** %1, align 4, !dbg !819
  call void @lua_rotate(%struct.lua_State* %24, i32 -2, i32 1), !dbg !819
  %25 = load %struct.lua_State** %1, align 4, !dbg !820
  call void @lua_concat(%struct.lua_State* %25, i32 3), !dbg !820
  br label %2, !dbg !821
}

declare i32 @luaL_loadbufferx(%struct.lua_State*, i8*, i32, i8*, i8*) #2

; Function Attrs: nounwind
define internal i32 @incomplete(%struct.lua_State* %L, i32 %status) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.lua_State*, align 4
  %3 = alloca i32, align 4
  %lmsg = alloca i32, align 4
  %msg = alloca i8*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %2}, metadata !822), !dbg !823
  store i32 %status, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !824), !dbg !825
  %4 = load i32* %3, align 4, !dbg !826
  %5 = icmp eq i32 %4, 3, !dbg !826
  br i1 %5, label %6, label %21, !dbg !826

; <label>:6                                       ; preds = %0
  call void @llvm.dbg.declare(metadata !{i32* %lmsg}, metadata !828), !dbg !830
  call void @llvm.dbg.declare(metadata !{i8** %msg}, metadata !831), !dbg !832
  %7 = load %struct.lua_State** %2, align 4, !dbg !833
  %8 = call i8* @lua_tolstring(%struct.lua_State* %7, i32 -1, i32* %lmsg), !dbg !833
  store i8* %8, i8** %msg, align 4, !dbg !833
  %9 = load i32* %lmsg, align 4, !dbg !834
  %10 = icmp uge i32 %9, 5, !dbg !834
  br i1 %10, label %11, label %20, !dbg !834

; <label>:11                                      ; preds = %6
  %12 = load i8** %msg, align 4, !dbg !836
  %13 = load i32* %lmsg, align 4, !dbg !836
  %14 = getelementptr inbounds i8* %12, i32 %13, !dbg !836
  %15 = getelementptr inbounds i8* %14, i32 -5, !dbg !836
  %16 = call i32 @strcmp(i8* %15, i8* getelementptr inbounds ([6 x i8]* @.str11, i32 0, i32 0)) #5, !dbg !836
  %17 = icmp eq i32 %16, 0, !dbg !836
  br i1 %17, label %18, label %20, !dbg !836

; <label>:18                                      ; preds = %11
  %19 = load %struct.lua_State** %2, align 4, !dbg !838
  call void @lua_settop(%struct.lua_State* %19, i32 -2), !dbg !838
  store i32 1, i32* %1, !dbg !840
  br label %22, !dbg !840

; <label>:20                                      ; preds = %11, %6
  br label %21, !dbg !841

; <label>:21                                      ; preds = %20, %0
  store i32 0, i32* %1, !dbg !842
  br label %22, !dbg !842

; <label>:22                                      ; preds = %21, %18
  %23 = load i32* %1, !dbg !843
  ret i32 %23, !dbg !843
}

declare i8* @lua_pushstring(%struct.lua_State*, i8*) #2

declare void @lua_concat(%struct.lua_State*, i32) #2

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

; Function Attrs: nounwind readonly
declare i32 @strlen(i8*) #3

; Function Attrs: nounwind
define internal i8* @get_prompt(%struct.lua_State* %L, i32 %firstline) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca i32, align 4
  %p = alloca i8*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !844), !dbg !845
  store i32 %firstline, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !846), !dbg !847
  call void @llvm.dbg.declare(metadata !{i8** %p}, metadata !848), !dbg !849
  %3 = load %struct.lua_State** %1, align 4, !dbg !850
  %4 = load i32* %2, align 4, !dbg !850
  %5 = icmp ne i32 %4, 0, !dbg !850
  %6 = select i1 %5, i8* getelementptr inbounds ([8 x i8]* @.str14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str15, i32 0, i32 0), !dbg !850
  %7 = call i32 @lua_getglobal(%struct.lua_State* %3, i8* %6), !dbg !850
  %8 = load %struct.lua_State** %1, align 4, !dbg !851
  %9 = call i8* @lua_tolstring(%struct.lua_State* %8, i32 -1, i32* null), !dbg !851
  store i8* %9, i8** %p, align 4, !dbg !851
  %10 = load i8** %p, align 4, !dbg !852
  %11 = icmp eq i8* %10, null, !dbg !852
  br i1 %11, label %12, label %16, !dbg !852

; <label>:12                                      ; preds = %0
  %13 = load i32* %2, align 4, !dbg !854
  %14 = icmp ne i32 %13, 0, !dbg !854
  %15 = select i1 %14, i8* getelementptr inbounds ([3 x i8]* @.str16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str17, i32 0, i32 0), !dbg !854
  store i8* %15, i8** %p, align 4, !dbg !854
  br label %16, !dbg !854

; <label>:16                                      ; preds = %12, %0
  %17 = load i8** %p, align 4, !dbg !856
  ret i8* %17, !dbg !856
}

declare i32 @fputs(i8*, %struct._IO_FILE*) #2

declare i8* @fgets(i8*, i32, %struct._IO_FILE*) #2

declare i8* @lua_pushlstring(%struct.lua_State*, i8*, i32) #2

declare i32 @luaL_loadfilex(%struct.lua_State*, i8*, i8*) #2

; Function Attrs: nounwind
define internal i32 @pushargs(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !857), !dbg !858
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !859), !dbg !860
  call void @llvm.dbg.declare(metadata !{i32* %n}, metadata !861), !dbg !862
  %2 = load %struct.lua_State** %1, align 4, !dbg !863
  %3 = call i32 @lua_getglobal(%struct.lua_State* %2, i8* getelementptr inbounds ([4 x i8]* @.str20, i32 0, i32 0)), !dbg !863
  %4 = icmp ne i32 %3, 5, !dbg !863
  br i1 %4, label %5, label %8, !dbg !863

; <label>:5                                       ; preds = %0
  %6 = load %struct.lua_State** %1, align 4, !dbg !865
  %7 = call i32 (%struct.lua_State*, i8*, ...)* @luaL_error(%struct.lua_State* %6, i8* getelementptr inbounds ([21 x i8]* @.str21, i32 0, i32 0)), !dbg !865
  br label %8, !dbg !865

; <label>:8                                       ; preds = %5, %0
  %9 = load %struct.lua_State** %1, align 4, !dbg !866
  %10 = call i64 @luaL_len(%struct.lua_State* %9, i32 -1), !dbg !866
  %11 = trunc i64 %10 to i32, !dbg !866
  store i32 %11, i32* %n, align 4, !dbg !866
  %12 = load %struct.lua_State** %1, align 4, !dbg !867
  %13 = load i32* %n, align 4, !dbg !867
  %14 = add nsw i32 %13, 3, !dbg !867
  call void @luaL_checkstack(%struct.lua_State* %12, i32 %14, i8* getelementptr inbounds ([29 x i8]* @.str22, i32 0, i32 0)), !dbg !867
  store i32 1, i32* %i, align 4, !dbg !868
  br label %15, !dbg !868

; <label>:15                                      ; preds = %26, %8
  %16 = load i32* %i, align 4, !dbg !870
  %17 = load i32* %n, align 4, !dbg !870
  %18 = icmp sle i32 %16, %17, !dbg !870
  br i1 %18, label %19, label %29, !dbg !870

; <label>:19                                      ; preds = %15
  %20 = load %struct.lua_State** %1, align 4, !dbg !873
  %21 = load i32* %i, align 4, !dbg !873
  %22 = sub nsw i32 0, %21, !dbg !873
  %23 = load i32* %i, align 4, !dbg !873
  %24 = sext i32 %23 to i64, !dbg !873
  %25 = call i32 @lua_rawgeti(%struct.lua_State* %20, i32 %22, i64 %24), !dbg !873
  br label %26, !dbg !873

; <label>:26                                      ; preds = %19
  %27 = load i32* %i, align 4, !dbg !874
  %28 = add nsw i32 %27, 1, !dbg !874
  store i32 %28, i32* %i, align 4, !dbg !874
  br label %15, !dbg !874

; <label>:29                                      ; preds = %15
  %30 = load %struct.lua_State** %1, align 4, !dbg !875
  %31 = load i32* %i, align 4, !dbg !875
  %32 = sub nsw i32 0, %31, !dbg !875
  call void @lua_rotate(%struct.lua_State* %30, i32 %32, i32 -1), !dbg !875
  %33 = load %struct.lua_State** %1, align 4, !dbg !875
  call void @lua_settop(%struct.lua_State* %33, i32 -2), !dbg !875
  %34 = load i32* %n, align 4, !dbg !876
  ret i32 %34, !dbg !876
}

declare i64 @luaL_len(%struct.lua_State*, i32) #2

declare i32 @lua_rawgeti(%struct.lua_State*, i32, i64) #2

; Function Attrs: nounwind
define internal i32 @dostring(%struct.lua_State* %L, i8* %s, i8* %name) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca i8*, align 4
  %3 = alloca i8*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !877), !dbg !878
  store i8* %s, i8** %2, align 4
  call void @llvm.dbg.declare(metadata !{i8** %2}, metadata !879), !dbg !880
  store i8* %name, i8** %3, align 4
  call void @llvm.dbg.declare(metadata !{i8** %3}, metadata !881), !dbg !882
  %4 = load %struct.lua_State** %1, align 4, !dbg !883
  %5 = load %struct.lua_State** %1, align 4, !dbg !884
  %6 = load i8** %2, align 4, !dbg !884
  %7 = load i8** %2, align 4, !dbg !884
  %8 = call i32 @strlen(i8* %7) #5, !dbg !884
  %9 = load i8** %3, align 4, !dbg !884
  %10 = call i32 @luaL_loadbufferx(%struct.lua_State* %5, i8* %6, i32 %8, i8* %9, i8* null), !dbg !884
  %11 = call i32 @dochunk(%struct.lua_State* %4, i32 %10), !dbg !883
  ret i32 %11, !dbg !883
}

; Function Attrs: nounwind
define internal i32 @dolibrary(%struct.lua_State* %L, i8* %name) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca i8*, align 4
  %status = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !885), !dbg !886
  store i8* %name, i8** %2, align 4
  call void @llvm.dbg.declare(metadata !{i8** %2}, metadata !887), !dbg !888
  call void @llvm.dbg.declare(metadata !{i32* %status}, metadata !889), !dbg !890
  %3 = load %struct.lua_State** %1, align 4, !dbg !891
  %4 = call i32 @lua_getglobal(%struct.lua_State* %3, i8* getelementptr inbounds ([8 x i8]* @.str24, i32 0, i32 0)), !dbg !891
  %5 = load %struct.lua_State** %1, align 4, !dbg !892
  %6 = load i8** %2, align 4, !dbg !892
  %7 = call i8* @lua_pushstring(%struct.lua_State* %5, i8* %6), !dbg !892
  %8 = load %struct.lua_State** %1, align 4, !dbg !893
  %9 = call i32 @docall(%struct.lua_State* %8, i32 1, i32 1), !dbg !893
  store i32 %9, i32* %status, align 4, !dbg !893
  %10 = load i32* %status, align 4, !dbg !894
  %11 = icmp eq i32 %10, 0, !dbg !894
  br i1 %11, label %12, label %15, !dbg !894

; <label>:12                                      ; preds = %0
  %13 = load %struct.lua_State** %1, align 4, !dbg !896
  %14 = load i8** %2, align 4, !dbg !896
  call void @lua_setglobal(%struct.lua_State* %13, i8* %14), !dbg !896
  br label %15, !dbg !896

; <label>:15                                      ; preds = %12, %0
  %16 = load %struct.lua_State** %1, align 4, !dbg !897
  %17 = load i32* %status, align 4, !dbg !897
  %18 = call i32 @report(%struct.lua_State* %16, i32 %17), !dbg !897
  ret i32 %18, !dbg !897
}

declare void @lua_setglobal(%struct.lua_State*, i8*) #2

; Function Attrs: nounwind
define internal i32 @dochunk(%struct.lua_State* %L, i32 %status) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !898), !dbg !899
  store i32 %status, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !900), !dbg !901
  %3 = load i32* %2, align 4, !dbg !902
  %4 = icmp eq i32 %3, 0, !dbg !902
  br i1 %4, label %5, label %8, !dbg !902

; <label>:5                                       ; preds = %0
  %6 = load %struct.lua_State** %1, align 4, !dbg !904
  %7 = call i32 @docall(%struct.lua_State* %6, i32 0, i32 0), !dbg !904
  store i32 %7, i32* %2, align 4, !dbg !904
  br label %8, !dbg !904

; <label>:8                                       ; preds = %5, %0
  %9 = load %struct.lua_State** %1, align 4, !dbg !906
  %10 = load i32* %2, align 4, !dbg !906
  %11 = call i32 @report(%struct.lua_State* %9, i32 %10), !dbg !906
  ret i32 %11, !dbg !906
}

; Function Attrs: nounwind
declare i8* @getenv(i8*) #0

; Function Attrs: nounwind
define internal i32 @dofile(%struct.lua_State* %L, i8* %name) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca i8*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !907), !dbg !908
  store i8* %name, i8** %2, align 4
  call void @llvm.dbg.declare(metadata !{i8** %2}, metadata !909), !dbg !910
  %3 = load %struct.lua_State** %1, align 4, !dbg !911
  %4 = load %struct.lua_State** %1, align 4, !dbg !912
  %5 = load i8** %2, align 4, !dbg !912
  %6 = call i32 @luaL_loadfilex(%struct.lua_State* %4, i8* %5, i8* null), !dbg !912
  %7 = call i32 @dochunk(%struct.lua_State* %3, i32 %6), !dbg !911
  ret i32 %7, !dbg !911
}

declare void @lua_createtable(%struct.lua_State*, i32, i32) #2

declare void @lua_rawseti(%struct.lua_State*, i32, i64) #2

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!xidane.fname = !{!106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251}
!xidane.function_declaration_type = !{!106, !252, !108, !253, !110, !254, !112, !255, !114, !256, !116, !257, !118, !258, !120, !259, !122, !260, !124, !260, !126, !261, !128, !262, !130, !263, !132, !264, !134, !265, !136, !266, !138, !267, !140, !268, !142, !269, !144, !263, !146, !270, !148, !261, !150, !271, !152, !256, !154, !272, !156, !273, !158, !261, !160, !256, !162, !274, !164, !261, !166, !275, !168, !276, !170, !256, !172, !270, !174, !277, !176, !278, !178, !279, !180, !256, !182, !280, !184, !281, !186, !282, !188, !283, !190, !277, !192, !284, !194, !260, !196, !285, !198, !286, !200, !260, !202, !256, !204, !256, !206, !287, !208, !260, !210, !279, !212, !263, !214, !288, !216, !289, !218, !285, !220, !290, !222, !291, !224, !292, !226, !293, !228, !256, !230, !294, !232, !295, !234, !293, !236, !277, !238, !296, !240, !260, !242, !297, !244, !277, !246, !278, !248, !298, !250, !299}
!xidane.function_declaration_filename = !{!106, !300, !108, !301, !110, !300, !112, !302, !114, !300, !116, !302, !118, !302, !120, !302, !122, !302, !124, !300, !126, !302, !128, !302, !130, !302, !132, !302, !134, !302, !136, !300, !138, !301, !140, !300, !142, !300, !144, !302, !146, !302, !148, !303, !150, !300, !152, !300, !154, !300, !156, !300, !158, !300, !160, !300, !162, !300, !164, !300, !166, !304, !168, !304, !170, !302, !172, !301, !174, !302, !176, !302, !178, !302, !180, !300, !182, !305, !184, !300, !186, !302, !188, !300, !190, !301, !192, !301, !194, !302, !196, !302, !198, !301, !200, !300, !202, !300, !204, !300, !206, !301, !208, !300, !210, !302, !212, !302, !214, !306, !216, !306, !218, !300, !220, !304, !222, !304, !224, !302, !226, !301, !228, !300, !230, !301, !232, !302, !234, !300, !236, !300, !238, !302, !240, !300, !242, !307, !244, !300, !246, !302, !248, !302, !250, !304}
!xidane.ExternC = !{!106, !108, !112, !116, !118, !120, !122, !126, !128, !130, !132, !134, !138, !144, !146, !148, !166, !168, !170, !172, !174, !176, !178, !182, !186, !190, !192, !194, !196, !198, !206, !210, !212, !214, !216, !220, !222, !224, !226, !230, !232, !238, !242, !246, !248, !250}
!llvm.module.flags = !{!308, !309, !310, !311}
!llvm.ident = !{!312}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.0 (tags/RELEASE_350/final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !103, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src\lua.c] [DW_LANG_C99]
!1 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src\5Clua.c", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!2 = metadata !{}
!3 = metadata !{metadata !4, metadata !13, metadata !20, metadata !23, metadata !26, metadata !27, metadata !30, metadata !33, metadata !62, metadata !63, metadata !64, metadata !65, metadata !66, metadata !67, metadata !68, metadata !71, metadata !74, metadata !75, metadata !78, metadata !81, metadata !84, metadata !85, metadata !86, metadata !87, metadata !90, metadata !93, metadata !96, metadata !100}
!4 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"main", metadata !"main", metadata !"", i32 593, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i8**)* @main, null, null, metadata !2, i32 593} ; [ DW_TAG_subprogram ] [line 593] [def] [main]
!5 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lua.c", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!6 = metadata !{i32 786473, metadata !5}          ; [ DW_TAG_file_type ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lua.c]
!7 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!8 = metadata !{metadata !9, metadata !9, metadata !10}
!9 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!10 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !11} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!11 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !12} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from char]
!12 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!13 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"report", metadata !"report", metadata !"", i32 164, metadata !14, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*, i32)* @report, null, null, metadata !2, i32 164} ; [ DW_TAG_subprogram ] [line 164] [local] [def] [report]
!14 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !15, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!15 = metadata !{metadata !9, metadata !16, metadata !9}
!16 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !17} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from lua_State]
!17 = metadata !{i32 786454, metadata !18, null, metadata !"lua_State", i32 56, i64 0, i64 0, i64 0, i32 0, metadata !19} ; [ DW_TAG_typedef ] [lua_State] [line 56, size 0, align 0, offset 0] [from lua_State]
!18 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lua.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!19 = metadata !{i32 786451, metadata !18, null, metadata !"lua_State", i32 56, i64 0, i64 0, i32 0, i32 4, null, null, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [lua_State] [line 56, size 0, align 0, offset 0] [decl] [from ]
!20 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"pmain", metadata !"pmain", metadata !"", i32 551, metadata !21, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @pmain, null, null, metadata !2, i32 551} ; [ DW_TAG_subprogram ] [line 551] [local] [def] [pmain]
!21 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !22, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!22 = metadata !{metadata !9, metadata !16}
!23 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"doREPL", metadata !"doREPL", metadata !"", i32 403, metadata !24, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.lua_State*)* @doREPL, null, null, metadata !2, i32 403} ; [ DW_TAG_subprogram ] [line 403] [local] [def] [doREPL]
!24 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !25, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!25 = metadata !{null, metadata !16}
!26 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"l_print", metadata !"l_print", metadata !"", i32 386, metadata !24, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.lua_State*)* @l_print, null, null, metadata !2, i32 386} ; [ DW_TAG_subprogram ] [line 386] [local] [def] [l_print]
!27 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"docall", metadata !"docall", metadata !"", i32 196, metadata !28, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*, i32, i32)* @docall, null, null, metadata !2, i32 196} ; [ DW_TAG_subprogram ] [line 196] [local] [def] [docall]
!28 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !29, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!29 = metadata !{metadata !9, metadata !16, metadata !9, metadata !9}
!30 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"laction", metadata !"laction", metadata !"", i32 122, metadata !31, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32)* @laction, null, null, metadata !2, i32 122} ; [ DW_TAG_subprogram ] [line 122] [local] [def] [laction]
!31 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !32, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!32 = metadata !{null, metadata !9}
!33 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"lstop", metadata !"lstop", metadata !"", i32 109, metadata !34, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.lua_State*, %struct.lua_Debug*)* @lstop, null, null, metadata !2, i32 109} ; [ DW_TAG_subprogram ] [line 109] [local] [def] [lstop]
!34 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !35, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!35 = metadata !{null, metadata !16, metadata !36}
!36 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !37} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from lua_Debug]
!37 = metadata !{i32 786454, metadata !18, null, metadata !"lua_Debug", i32 417, i64 0, i64 0, i64 0, i32 0, metadata !38} ; [ DW_TAG_typedef ] [lua_Debug] [line 417, size 0, align 0, offset 0] [from lua_Debug]
!38 = metadata !{i32 786451, metadata !18, null, metadata !"lua_Debug", i32 441, i64 800, i64 32, i32 0, i32 0, null, metadata !39, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [lua_Debug] [line 441, size 800, align 32, offset 0] [def] [from ]
!39 = metadata !{metadata !40, metadata !41, metadata !44, metadata !45, metadata !46, metadata !47, metadata !48, metadata !49, metadata !50, metadata !52, metadata !53, metadata !54, metadata !55, metadata !59}
!40 = metadata !{i32 786445, metadata !18, metadata !38, metadata !"event", i32 442, i64 32, i64 32, i64 0, i32 0, metadata !9} ; [ DW_TAG_member ] [event] [line 442, size 32, align 32, offset 0] [from int]
!41 = metadata !{i32 786445, metadata !18, metadata !38, metadata !"name", i32 443, i64 32, i64 32, i64 32, i32 0, metadata !42} ; [ DW_TAG_member ] [name] [line 443, size 32, align 32, offset 32] [from ]
!42 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !43} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!43 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !12} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!44 = metadata !{i32 786445, metadata !18, metadata !38, metadata !"namewhat", i32 444, i64 32, i64 32, i64 64, i32 0, metadata !42} ; [ DW_TAG_member ] [namewhat] [line 444, size 32, align 32, offset 64] [from ]
!45 = metadata !{i32 786445, metadata !18, metadata !38, metadata !"what", i32 445, i64 32, i64 32, i64 96, i32 0, metadata !42} ; [ DW_TAG_member ] [what] [line 445, size 32, align 32, offset 96] [from ]
!46 = metadata !{i32 786445, metadata !18, metadata !38, metadata !"source", i32 446, i64 32, i64 32, i64 128, i32 0, metadata !42} ; [ DW_TAG_member ] [source] [line 446, size 32, align 32, offset 128] [from ]
!47 = metadata !{i32 786445, metadata !18, metadata !38, metadata !"currentline", i32 447, i64 32, i64 32, i64 160, i32 0, metadata !9} ; [ DW_TAG_member ] [currentline] [line 447, size 32, align 32, offset 160] [from int]
!48 = metadata !{i32 786445, metadata !18, metadata !38, metadata !"linedefined", i32 448, i64 32, i64 32, i64 192, i32 0, metadata !9} ; [ DW_TAG_member ] [linedefined] [line 448, size 32, align 32, offset 192] [from int]
!49 = metadata !{i32 786445, metadata !18, metadata !38, metadata !"lastlinedefined", i32 449, i64 32, i64 32, i64 224, i32 0, metadata !9} ; [ DW_TAG_member ] [lastlinedefined] [line 449, size 32, align 32, offset 224] [from int]
!50 = metadata !{i32 786445, metadata !18, metadata !38, metadata !"nups", i32 450, i64 8, i64 8, i64 256, i32 0, metadata !51} ; [ DW_TAG_member ] [nups] [line 450, size 8, align 8, offset 256] [from unsigned char]
!51 = metadata !{i32 786468, null, null, metadata !"unsigned char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [unsigned char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!52 = metadata !{i32 786445, metadata !18, metadata !38, metadata !"nparams", i32 451, i64 8, i64 8, i64 264, i32 0, metadata !51} ; [ DW_TAG_member ] [nparams] [line 451, size 8, align 8, offset 264] [from unsigned char]
!53 = metadata !{i32 786445, metadata !18, metadata !38, metadata !"isvararg", i32 452, i64 8, i64 8, i64 272, i32 0, metadata !12} ; [ DW_TAG_member ] [isvararg] [line 452, size 8, align 8, offset 272] [from char]
!54 = metadata !{i32 786445, metadata !18, metadata !38, metadata !"istailcall", i32 453, i64 8, i64 8, i64 280, i32 0, metadata !12} ; [ DW_TAG_member ] [istailcall] [line 453, size 8, align 8, offset 280] [from char]
!55 = metadata !{i32 786445, metadata !18, metadata !38, metadata !"short_src", i32 454, i64 480, i64 8, i64 288, i32 0, metadata !56} ; [ DW_TAG_member ] [short_src] [line 454, size 480, align 8, offset 288] [from ]
!56 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 480, i64 8, i32 0, i32 0, metadata !12, metadata !57, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 480, align 8, offset 0] [from char]
!57 = metadata !{metadata !58}
!58 = metadata !{i32 786465, i64 0, i64 60}       ; [ DW_TAG_subrange_type ] [0, 59]
!59 = metadata !{i32 786445, metadata !18, metadata !38, metadata !"i_ci", i32 456, i64 32, i64 32, i64 768, i32 0, metadata !60} ; [ DW_TAG_member ] [i_ci] [line 456, size 32, align 32, offset 768] [from ]
!60 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !61} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from CallInfo]
!61 = metadata !{i32 786451, metadata !18, null, metadata !"CallInfo", i32 456, i64 0, i64 0, i32 0, i32 4, null, null, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [CallInfo] [line 456, size 0, align 0, offset 0] [decl] [from ]
!62 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"msghandler", metadata !"msghandler", metadata !"", i32 177, metadata !21, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @msghandler, null, null, metadata !2, i32 177} ; [ DW_TAG_subprogram ] [line 177] [local] [def] [msghandler]
!63 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"loadline", metadata !"loadline", metadata !"", i32 370, metadata !21, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @loadline, null, null, metadata !2, i32 370} ; [ DW_TAG_subprogram ] [line 370] [local] [def] [loadline]
!64 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"multiline", metadata !"multiline", metadata !"", i32 348, metadata !21, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @multiline, null, null, metadata !2, i32 348} ; [ DW_TAG_subprogram ] [line 348] [local] [def] [multiline]
!65 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"incomplete", metadata !"incomplete", metadata !"", i32 289, metadata !14, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*, i32)* @incomplete, null, null, metadata !2, i32 289} ; [ DW_TAG_subprogram ] [line 289] [local] [def] [incomplete]
!66 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"addreturn", metadata !"addreturn", metadata !"", i32 330, metadata !21, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @addreturn, null, null, metadata !2, i32 330} ; [ DW_TAG_subprogram ] [line 330] [local] [def] [addreturn]
!67 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"pushline", metadata !"pushline", metadata !"", i32 305, metadata !14, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*, i32)* @pushline, null, null, metadata !2, i32 305} ; [ DW_TAG_subprogram ] [line 305] [local] [def] [pushline]
!68 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"get_prompt", metadata !"get_prompt", metadata !"", i32 271, metadata !69, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (%struct.lua_State*, i32)* @get_prompt, null, null, metadata !2, i32 271} ; [ DW_TAG_subprogram ] [line 271] [local] [def] [get_prompt]
!69 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !70, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!70 = metadata !{metadata !42, metadata !16, metadata !9}
!71 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"handle_script", metadata !"handle_script", metadata !"", i32 435, metadata !72, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*, i8**)* @handle_script, null, null, metadata !2, i32 435} ; [ DW_TAG_subprogram ] [line 435] [local] [def] [handle_script]
!72 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !73, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!73 = metadata !{metadata !9, metadata !16, metadata !10}
!74 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"pushargs", metadata !"pushargs", metadata !"", i32 422, metadata !21, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @pushargs, null, null, metadata !2, i32 422} ; [ DW_TAG_subprogram ] [line 422] [local] [def] [pushargs]
!75 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"runargs", metadata !"runargs", metadata !"", i32 512, metadata !76, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*, i8**, i32)* @runargs, null, null, metadata !2, i32 512} ; [ DW_TAG_subprogram ] [line 512] [local] [def] [runargs]
!76 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !77, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!77 = metadata !{metadata !9, metadata !16, metadata !10, metadata !9}
!78 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"dolibrary", metadata !"dolibrary", metadata !"", i32 257, metadata !79, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*, i8*)* @dolibrary, null, null, metadata !2, i32 257} ; [ DW_TAG_subprogram ] [line 257] [local] [def] [dolibrary]
!79 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !80, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!80 = metadata !{metadata !9, metadata !16, metadata !42}
!81 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"dostring", metadata !"dostring", metadata !"", i32 248, metadata !82, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*, i8*, i8*)* @dostring, null, null, metadata !2, i32 248} ; [ DW_TAG_subprogram ] [line 248] [local] [def] [dostring]
!82 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !83, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!83 = metadata !{metadata !9, metadata !16, metadata !42, metadata !42}
!84 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"dochunk", metadata !"dochunk", metadata !"", i32 237, metadata !14, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*, i32)* @dochunk, null, null, metadata !2, i32 237} ; [ DW_TAG_subprogram ] [line 237] [local] [def] [dochunk]
!85 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"handle_luainit", metadata !"handle_luainit", metadata !"", i32 532, metadata !21, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @handle_luainit, null, null, metadata !2, i32 532} ; [ DW_TAG_subprogram ] [line 532] [local] [def] [handle_luainit]
!86 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"dofile", metadata !"dofile", metadata !"", i32 243, metadata !79, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*, i8*)* @dofile, null, null, metadata !2, i32 243} ; [ DW_TAG_subprogram ] [line 243] [local] [def] [dofile]
!87 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"createargtable", metadata !"createargtable", metadata !"", i32 224, metadata !88, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.lua_State*, i8**, i32, i32)* @createargtable, null, null, metadata !2, i32 224} ; [ DW_TAG_subprogram ] [line 224] [local] [def] [createargtable]
!88 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !89, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!89 = metadata !{null, metadata !16, metadata !10, metadata !9, metadata !9}
!90 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"print_version", metadata !"print_version", metadata !"", i32 210, metadata !91, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ()* @print_version, null, null, metadata !2, i32 210} ; [ DW_TAG_subprogram ] [line 210] [local] [def] [print_version]
!91 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !92, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!92 = metadata !{null}
!93 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"print_usage", metadata !"print_usage", metadata !"", i32 128, metadata !94, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i8*)* @print_usage, null, null, metadata !2, i32 128} ; [ DW_TAG_subprogram ] [line 128] [local] [def] [print_usage]
!94 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !95, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!95 = metadata !{null, metadata !42}
!96 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"collectargs", metadata !"collectargs", metadata !"", i32 463, metadata !97, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i8**, i32*)* @collectargs, null, null, metadata !2, i32 463} ; [ DW_TAG_subprogram ] [line 463] [local] [def] [collectargs]
!97 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !98, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!98 = metadata !{metadata !9, metadata !10, metadata !99}
!99 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from int]
!100 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"l_message", metadata !"l_message", metadata !"", i32 153, metadata !101, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i8*, i8*)* @l_message, null, null, metadata !2, i32 153} ; [ DW_TAG_subprogram ] [line 153] [local] [def] [l_message]
!101 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !102, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!102 = metadata !{null, metadata !42, metadata !42}
!103 = metadata !{metadata !104, metadata !105}
!104 = metadata !{i32 786484, i32 0, null, metadata !"progname", metadata !"progname", metadata !"", metadata !6, i32 103, metadata !42, i32 1, i32 1, i8** @progname, null} ; [ DW_TAG_variable ] [progname] [line 103] [local] [def]
!105 = metadata !{i32 786484, i32 0, null, metadata !"globalL", metadata !"globalL", metadata !"", metadata !6, i32 101, metadata !16, i32 1, i32 1, %struct.lua_State** @globalL, null} ; [ DW_TAG_variable ] [globalL] [line 101] [local] [def]
!106 = metadata !{i32 (i32, i8**)* @main}
!107 = metadata !{metadata !"main"}
!108 = metadata !{%struct.lua_State* ()* @luaL_newstate}
!109 = metadata !{metadata !"luaL_newstate"}
!110 = metadata !{void (i8*, i8*)* @l_message}
!111 = metadata !{metadata !"l_message"}
!112 = metadata !{void (%struct.lua_State*, i32 (%struct.lua_State*)*, i32)* @lua_pushcclosure}
!113 = metadata !{metadata !"lua_pushcclosure"}
!114 = metadata !{i32 (%struct.lua_State*)* @pmain}
!115 = metadata !{metadata !"pmain"}
!116 = metadata !{void (%struct.lua_State*, i64)* @lua_pushinteger}
!117 = metadata !{metadata !"lua_pushinteger"}
!118 = metadata !{void (%struct.lua_State*, i8*)* @lua_pushlightuserdata}
!119 = metadata !{metadata !"lua_pushlightuserdata"}
!120 = metadata !{i32 (%struct.lua_State*, i32, i32, i32, i32, i32 (%struct.lua_State*, i32, i32)*)* @lua_pcallk}
!121 = metadata !{metadata !"lua_pcallk"}
!122 = metadata !{i32 (%struct.lua_State*, i32)* @lua_toboolean}
!123 = metadata !{metadata !"lua_toboolean"}
!124 = metadata !{i32 (%struct.lua_State*, i32)* @report}
!125 = metadata !{metadata !"report"}
!126 = metadata !{void (%struct.lua_State*)* @lua_close}
!127 = metadata !{metadata !"lua_close"}
!128 = metadata !{i8* (%struct.lua_State*, i32, i32*)* @lua_tolstring}
!129 = metadata !{metadata !"lua_tolstring"}
!130 = metadata !{void (%struct.lua_State*, i32)* @lua_settop}
!131 = metadata !{metadata !"lua_settop"}
!132 = metadata !{i64 (%struct.lua_State*, i32, i32*)* @lua_tointegerx}
!133 = metadata !{metadata !"lua_tointegerx"}
!134 = metadata !{i8* (%struct.lua_State*, i32)* @lua_touserdata}
!135 = metadata !{metadata !"lua_touserdata"}
!136 = metadata !{i32 (i8**, i32*)* @collectargs}
!137 = metadata !{metadata !"collectargs"}
!138 = metadata !{void (%struct.lua_State*, double, i32)* @luaL_checkversion_}
!139 = metadata !{metadata !"luaL_checkversion_"}
!140 = metadata !{void (i8*)* @print_usage}
!141 = metadata !{metadata !"print_usage"}
!142 = metadata !{void ()* @print_version}
!143 = metadata !{metadata !"print_version"}
!144 = metadata !{void (%struct.lua_State*, i32)* @lua_pushboolean}
!145 = metadata !{metadata !"lua_pushboolean"}
!146 = metadata !{void (%struct.lua_State*, i32, i8*)* @lua_setfield}
!147 = metadata !{metadata !"lua_setfield"}
!148 = metadata !{void (%struct.lua_State*)* @luaL_openlibs}
!149 = metadata !{metadata !"luaL_openlibs"}
!150 = metadata !{void (%struct.lua_State*, i8**, i32, i32)* @createargtable}
!151 = metadata !{metadata !"createargtable"}
!152 = metadata !{i32 (%struct.lua_State*)* @handle_luainit}
!153 = metadata !{metadata !"handle_luainit"}
!154 = metadata !{i32 (%struct.lua_State*, i8**, i32)* @runargs}
!155 = metadata !{metadata !"runargs"}
!156 = metadata !{i32 (%struct.lua_State*, i8**)* @handle_script}
!157 = metadata !{metadata !"handle_script"}
!158 = metadata !{void (%struct.lua_State*)* @doREPL}
!159 = metadata !{metadata !"doREPL"}
!160 = metadata !{i32 (%struct.lua_State*)* @loadline}
!161 = metadata !{metadata !"loadline"}
!162 = metadata !{i32 (%struct.lua_State*, i32, i32)* @docall}
!163 = metadata !{metadata !"docall"}
!164 = metadata !{void (%struct.lua_State*)* @l_print}
!165 = metadata !{metadata !"l_print"}
!166 = metadata !{i32 (i8*, i32, i32, %struct._IO_FILE*)* @fwrite}
!167 = metadata !{metadata !"fwrite"}
!168 = metadata !{i32 (%struct._IO_FILE*)* @fflush}
!169 = metadata !{metadata !"fflush"}
!170 = metadata !{i32 (%struct.lua_State*)* @lua_gettop}
!171 = metadata !{metadata !"lua_gettop"}
!172 = metadata !{void (%struct.lua_State*, i32, i8*)* @luaL_checkstack}
!173 = metadata !{metadata !"luaL_checkstack"}
!174 = metadata !{i32 (%struct.lua_State*, i8*)* @lua_getglobal}
!175 = metadata !{metadata !"lua_getglobal"}
!176 = metadata !{void (%struct.lua_State*, i32, i32)* @lua_rotate}
!177 = metadata !{metadata !"lua_rotate"}
!178 = metadata !{i8* (%struct.lua_State*, i8*, ...)* @lua_pushfstring}
!179 = metadata !{metadata !"lua_pushfstring"}
!180 = metadata !{i32 (%struct.lua_State*)* @msghandler}
!181 = metadata !{metadata !"msghandler"}
!182 = metadata !{void (i32)* (i32, void (i32)*)* @__sysv_signal}
!183 = metadata !{metadata !"signal"}
!184 = metadata !{void (i32)* @laction}
!185 = metadata !{metadata !"laction"}
!186 = metadata !{void (%struct.lua_State*, void (%struct.lua_State*, %struct.lua_Debug*)*, i32, i32)* @lua_sethook}
!187 = metadata !{metadata !"lua_sethook"}
!188 = metadata !{void (%struct.lua_State*, %struct.lua_Debug*)* @lstop}
!189 = metadata !{metadata !"lstop"}
!190 = metadata !{i32 (%struct.lua_State*, i8*, ...)* @luaL_error}
!191 = metadata !{metadata !"luaL_error"}
!192 = metadata !{i32 (%struct.lua_State*, i32, i8*)* @luaL_callmeta}
!193 = metadata !{metadata !"luaL_callmeta"}
!194 = metadata !{i32 (%struct.lua_State*, i32)* @lua_type}
!195 = metadata !{metadata !"lua_type"}
!196 = metadata !{i8* (%struct.lua_State*, i32)* @lua_typename}
!197 = metadata !{metadata !"lua_typename"}
!198 = metadata !{void (%struct.lua_State*, %struct.lua_State*, i8*, i32)* @luaL_traceback}
!199 = metadata !{metadata !"luaL_traceback"}
!200 = metadata !{i32 (%struct.lua_State*, i32)* @pushline}
!201 = metadata !{metadata !"pushline"}
!202 = metadata !{i32 (%struct.lua_State*)* @addreturn}
!203 = metadata !{metadata !"addreturn"}
!204 = metadata !{i32 (%struct.lua_State*)* @multiline}
!205 = metadata !{metadata !"multiline"}
!206 = metadata !{i32 (%struct.lua_State*, i8*, i32, i8*, i8*)* @luaL_loadbufferx}
!207 = metadata !{metadata !"luaL_loadbufferx"}
!208 = metadata !{i32 (%struct.lua_State*, i32)* @incomplete}
!209 = metadata !{metadata !"incomplete"}
!210 = metadata !{i8* (%struct.lua_State*, i8*)* @lua_pushstring}
!211 = metadata !{metadata !"lua_pushstring"}
!212 = metadata !{void (%struct.lua_State*, i32)* @lua_concat}
!213 = metadata !{metadata !"lua_concat"}
!214 = metadata !{i32 (i8*, i8*)* @strcmp}
!215 = metadata !{metadata !"strcmp"}
!216 = metadata !{i32 (i8*)* @strlen}
!217 = metadata !{metadata !"strlen"}
!218 = metadata !{i8* (%struct.lua_State*, i32)* @get_prompt}
!219 = metadata !{metadata !"get_prompt"}
!220 = metadata !{i32 (i8*, %struct._IO_FILE*)* @fputs}
!221 = metadata !{metadata !"fputs"}
!222 = metadata !{i8* (i8*, i32, %struct._IO_FILE*)* @fgets}
!223 = metadata !{metadata !"fgets"}
!224 = metadata !{i8* (%struct.lua_State*, i8*, i32)* @lua_pushlstring}
!225 = metadata !{metadata !"lua_pushlstring"}
!226 = metadata !{i32 (%struct.lua_State*, i8*, i8*)* @luaL_loadfilex}
!227 = metadata !{metadata !"luaL_loadfilex"}
!228 = metadata !{i32 (%struct.lua_State*)* @pushargs}
!229 = metadata !{metadata !"pushargs"}
!230 = metadata !{i64 (%struct.lua_State*, i32)* @luaL_len}
!231 = metadata !{metadata !"luaL_len"}
!232 = metadata !{i32 (%struct.lua_State*, i32, i64)* @lua_rawgeti}
!233 = metadata !{metadata !"lua_rawgeti"}
!234 = metadata !{i32 (%struct.lua_State*, i8*, i8*)* @dostring}
!235 = metadata !{metadata !"dostring"}
!236 = metadata !{i32 (%struct.lua_State*, i8*)* @dolibrary}
!237 = metadata !{metadata !"dolibrary"}
!238 = metadata !{void (%struct.lua_State*, i8*)* @lua_setglobal}
!239 = metadata !{metadata !"lua_setglobal"}
!240 = metadata !{i32 (%struct.lua_State*, i32)* @dochunk}
!241 = metadata !{metadata !"dochunk"}
!242 = metadata !{i8* (i8*)* @getenv}
!243 = metadata !{metadata !"getenv"}
!244 = metadata !{i32 (%struct.lua_State*, i8*)* @dofile}
!245 = metadata !{metadata !"dofile"}
!246 = metadata !{void (%struct.lua_State*, i32, i32)* @lua_createtable}
!247 = metadata !{metadata !"lua_createtable"}
!248 = metadata !{void (%struct.lua_State*, i32, i64)* @lua_rawseti}
!249 = metadata !{metadata !"lua_rawseti"}
!250 = metadata !{i32 (%struct._IO_FILE*, i8*, ...)* @fprintf}
!251 = metadata !{metadata !"fprintf"}
!252 = metadata !{metadata !"int.int.0.char **.1"}
!253 = metadata !{metadata !"lua_State ."}
!254 = metadata !{metadata !"void.const char *.1.const char *.1"}
!255 = metadata !{metadata !"void.lua_State *.1.lua_CFunction.1.int.0"}
!256 = metadata !{metadata !"int.lua_State *.1"}
!257 = metadata !{metadata !"void.lua_State *.1.lua_Integer.0"}
!258 = metadata !{metadata !"void.lua_State *.1.void *.1"}
!259 = metadata !{metadata !"int.lua_State *.1.int.0.int.0.int.0.lua_KContext.0.lua_KFunction.1"}
!260 = metadata !{metadata !"int.lua_State *.1.int.0"}
!261 = metadata !{metadata !"void.lua_State *.1"}
!262 = metadata !{metadata !"const char .lua_State *.1.int.0.size_t *.1"}
!263 = metadata !{metadata !"void.lua_State *.1.int.0"}
!264 = metadata !{metadata !"lua_Integer.lua_State *.1.int.0.int *.1"}
!265 = metadata !{metadata !"void .lua_State *.1.int.0"}
!266 = metadata !{metadata !"int.char **.1.int *.1"}
!267 = metadata !{metadata !"void.lua_State *.1.lua_Number.0.size_t.0"}
!268 = metadata !{metadata !"void.const char *.1"}
!269 = metadata !{metadata !"void."}
!270 = metadata !{metadata !"void.lua_State *.1.int.0.const char *.1"}
!271 = metadata !{metadata !"void.lua_State *.1.char **.1.int.0.int.0"}
!272 = metadata !{metadata !"int.lua_State *.1.char **.1.int.0"}
!273 = metadata !{metadata !"int.lua_State *.1.char **.1"}
!274 = metadata !{metadata !"int.lua_State *.1.int.0.int.0"}
!275 = metadata !{metadata !"size_t.const void *restrict.1.size_t.0.size_t.0.FILE *restrict.1"}
!276 = metadata !{metadata !"int.FILE *.1"}
!277 = metadata !{metadata !"int.lua_State *.1.const char *.1"}
!278 = metadata !{metadata !"void.lua_State *.1.int.0.int.0"}
!279 = metadata !{metadata !"const char .lua_State *.1.const char *.1"}
!280 = metadata !{metadata !"__sighandler_t.int.0.__sighandler_t.1"}
!281 = metadata !{metadata !"void.int.0"}
!282 = metadata !{metadata !"void.lua_State *.1.lua_Hook.1.int.0.int.0"}
!283 = metadata !{metadata !"void.lua_State *.1.lua_Debug *.1"}
!284 = metadata !{metadata !"int.lua_State *.1.int.0.const char *.1"}
!285 = metadata !{metadata !"const char .lua_State *.1.int.0"}
!286 = metadata !{metadata !"void.lua_State *.1.lua_State *.1.const char *.1.int.0"}
!287 = metadata !{metadata !"int.lua_State *.1.const char *.1.size_t.0.const char *.1.const char *.1"}
!288 = metadata !{metadata !"int.const char *.1.const char *.1"}
!289 = metadata !{metadata !"unsigned int.const char *.1"}
!290 = metadata !{metadata !"int.const char *restrict.1.FILE *restrict.1"}
!291 = metadata !{metadata !"char .char *restrict.1.int.0.FILE *restrict.1"}
!292 = metadata !{metadata !"const char .lua_State *.1.const char *.1.size_t.0"}
!293 = metadata !{metadata !"int.lua_State *.1.const char *.1.const char *.1"}
!294 = metadata !{metadata !"lua_Integer.lua_State *.1.int.0"}
!295 = metadata !{metadata !"int.lua_State *.1.int.0.lua_Integer.0"}
!296 = metadata !{metadata !"void.lua_State *.1.const char *.1"}
!297 = metadata !{metadata !"char .const char *.1"}
!298 = metadata !{metadata !"void.lua_State *.1.int.0.lua_Integer.0"}
!299 = metadata !{metadata !"int.FILE *restrict.1.const char *restrict.1"}
!300 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lua.c"}
!301 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lauxlib.h"}
!302 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lua.h"}
!303 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lualib.h"}
!304 = metadata !{metadata !"D:/Xilinx/SDx/2016.3/SDK/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include\5Cstdio.h"}
!305 = metadata !{metadata !"D:/Xilinx/SDx/2016.3/SDK/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include\5Csignal.h"}
!306 = metadata !{metadata !"D:/Xilinx/SDx/2016.3/SDK/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include\5Cstring.h"}
!307 = metadata !{metadata !"D:/Xilinx/SDx/2016.3/SDK/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include\5Cstdlib.h"}
!308 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!309 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!310 = metadata !{i32 1, metadata !"wchar_size", i32 4}
!311 = metadata !{i32 1, metadata !"min_enum_size", i32 4}
!312 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
!313 = metadata !{i32 786689, metadata !4, metadata !"argc", metadata !6, i32 16777809, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argc] [line 593]
!314 = metadata !{i32 593, i32 15, metadata !4, null}
!315 = metadata !{i32 786689, metadata !4, metadata !"argv", metadata !6, i32 33555025, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argv] [line 593]
!316 = metadata !{i32 593, i32 28, metadata !4, null}
!317 = metadata !{i32 786688, metadata !4, metadata !"status", metadata !6, i32 594, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [status] [line 594]
!318 = metadata !{i32 594, i32 7, metadata !4, null}
!319 = metadata !{i32 786688, metadata !4, metadata !"result", metadata !6, i32 594, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [result] [line 594]
!320 = metadata !{i32 594, i32 15, metadata !4, null}
!321 = metadata !{i32 786688, metadata !4, metadata !"L", metadata !6, i32 595, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [L] [line 595]
!322 = metadata !{i32 595, i32 14, metadata !4, null}
!323 = metadata !{i32 595, i32 18, metadata !4, null}
!324 = metadata !{i32 596, i32 7, metadata !325, null}
!325 = metadata !{i32 786443, metadata !5, metadata !4, i32 596, i32 7, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lua.c]
!326 = metadata !{i32 597, i32 5, metadata !327, null}
!327 = metadata !{i32 786443, metadata !5, metadata !325, i32 596, i32 18, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lua.c]
!328 = metadata !{i32 598, i32 5, metadata !327, null}
!329 = metadata !{i32 600, i32 3, metadata !4, null}
!330 = metadata !{i32 601, i32 3, metadata !4, null}
!331 = metadata !{i32 602, i32 3, metadata !4, null}
!332 = metadata !{i32 603, i32 12, metadata !4, null}
!333 = metadata !{i32 604, i32 12, metadata !4, null}
!334 = metadata !{i32 605, i32 3, metadata !4, null}
!335 = metadata !{i32 606, i32 3, metadata !4, null}
!336 = metadata !{i32 607, i32 3, metadata !4, null}
!337 = metadata !{i32 607, i32 3, metadata !338, null}
!338 = metadata !{i32 786443, metadata !5, metadata !4, i32 607, i32 3, i32 1, i32 81} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lua.c]
!339 = metadata !{i32 607, i32 3, metadata !340, null}
!340 = metadata !{i32 786443, metadata !5, metadata !4, i32 607, i32 3, i32 2, i32 82} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lua.c]
!341 = metadata !{i32 608, i32 1, metadata !4, null}
!342 = metadata !{i32 786689, metadata !100, metadata !"pname", metadata !6, i32 16777369, metadata !42, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pname] [line 153]
!343 = metadata !{i32 153, i32 36, metadata !100, null}
!344 = metadata !{i32 786689, metadata !100, metadata !"msg", metadata !6, i32 33554585, metadata !42, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [msg] [line 153]
!345 = metadata !{i32 153, i32 55, metadata !100, null}
!346 = metadata !{i32 154, i32 7, metadata !347, null}
!347 = metadata !{i32 786443, metadata !5, metadata !100, i32 154, i32 7, i32 0, i32 80} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lua.c]
!348 = metadata !{i32 154, i32 14, metadata !349, null}
!349 = metadata !{i32 786443, metadata !5, metadata !347, i32 154, i32 14, i32 1, i32 83} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lua.c]
!350 = metadata !{i32 155, i32 3, metadata !100, null}
!351 = metadata !{i32 156, i32 1, metadata !100, null}
!352 = metadata !{i32 786689, metadata !20, metadata !"L", metadata !6, i32 16777767, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 551]
!353 = metadata !{i32 551, i32 30, metadata !20, null}
!354 = metadata !{i32 786688, metadata !20, metadata !"argc", metadata !6, i32 552, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [argc] [line 552]
!355 = metadata !{i32 552, i32 7, metadata !20, null}
!356 = metadata !{i32 552, i32 19, metadata !20, null}
!357 = metadata !{i32 786688, metadata !20, metadata !"argv", metadata !6, i32 553, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [argv] [line 553]
!358 = metadata !{i32 553, i32 10, metadata !20, null}
!359 = metadata !{i32 553, i32 26, metadata !20, null}
!360 = metadata !{i32 786688, metadata !20, metadata !"script", metadata !6, i32 554, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [script] [line 554]
!361 = metadata !{i32 554, i32 7, metadata !20, null}
!362 = metadata !{i32 786688, metadata !20, metadata !"args", metadata !6, i32 555, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [args] [line 555]
!363 = metadata !{i32 555, i32 7, metadata !20, null}
!364 = metadata !{i32 555, i32 14, metadata !20, null}
!365 = metadata !{i32 556, i32 3, metadata !20, null}
!366 = metadata !{i32 557, i32 7, metadata !367, null}
!367 = metadata !{i32 786443, metadata !5, metadata !20, i32 557, i32 7, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lua.c]
!368 = metadata !{i32 557, i32 7, metadata !369, null}
!369 = metadata !{i32 786443, metadata !5, metadata !367, i32 557, i32 7, i32 1, i32 84} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lua.c]
!370 = metadata !{i32 557, i32 30, metadata !371, null}
!371 = metadata !{i32 786443, metadata !5, metadata !367, i32 557, i32 30, i32 2, i32 85} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lua.c]
!372 = metadata !{i32 558, i32 7, metadata !373, null}
!373 = metadata !{i32 786443, metadata !5, metadata !20, i32 558, i32 7, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lua.c]
!374 = metadata !{i32 559, i32 5, metadata !375, null}
!375 = metadata !{i32 786443, metadata !5, metadata !373, i32 558, i32 26, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lua.c]
!376 = metadata !{i32 560, i32 5, metadata !375, null}
!377 = metadata !{i32 562, i32 7, metadata !378, null}
!378 = metadata !{i32 786443, metadata !5, metadata !20, i32 562, i32 7, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lua.c]
!379 = metadata !{i32 563, i32 5, metadata !378, null}
!380 = metadata !{i32 564, i32 7, metadata !381, null}
!381 = metadata !{i32 786443, metadata !5, metadata !20, i32 564, i32 7, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lua.c]
!382 = metadata !{i32 565, i32 5, metadata !383, null}
!383 = metadata !{i32 786443, metadata !5, metadata !381, i32 564, i32 21, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lua.c]
!384 = metadata !{i32 566, i32 5, metadata !383, null}
!385 = metadata !{i32 567, i32 3, metadata !383, null}
!386 = metadata !{i32 568, i32 3, metadata !20, null}
!387 = metadata !{i32 569, i32 3, metadata !20, null}
!388 = metadata !{i32 570, i32 7, metadata !389, null}
!389 = metadata !{i32 786443, metadata !5, metadata !20, i32 570, i32 7, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lua.c]
!390 = metadata !{i32 571, i32 9, metadata !391, null}
!391 = metadata !{i32 786443, metadata !5, metadata !392, i32 571, i32 9, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lua.c]
!392 = metadata !{i32 786443, metadata !5, metadata !389, i32 570, i32 24, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lua.c]
!393 = metadata !{i32 572, i32 7, metadata !391, null}
!394 = metadata !{i32 573, i32 3, metadata !392, null}
!395 = metadata !{i32 574, i32 8, metadata !396, null}
!396 = metadata !{i32 786443, metadata !5, metadata !20, i32 574, i32 7, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lua.c]
!397 = metadata !{i32 575, i32 5, metadata !396, null}
!398 = metadata !{i32 576, i32 7, metadata !399, null}
!399 = metadata !{i32 786443, metadata !5, metadata !20, i32 576, i32 7, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lua.c]
!400 = metadata !{i32 577, i32 7, metadata !399, null}
!401 = metadata !{i32 578, i32 5, metadata !399, null}
!402 = metadata !{i32 579, i32 7, metadata !403, null}
!403 = metadata !{i32 786443, metadata !5, metadata !20, i32 579, i32 7, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lua.c]
!404 = metadata !{i32 580, i32 5, metadata !403, null}
!405 = metadata !{i32 581, i32 12, metadata !406, null}
!406 = metadata !{i32 786443, metadata !5, metadata !403, i32 581, i32 12, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lua.c]
!407 = metadata !{i32 581, i32 12, metadata !408, null}
!408 = metadata !{i32 786443, metadata !5, metadata !406, i32 581, i32 12, i32 1, i32 86} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lua.c]
!409 = metadata !{i32 583, i32 7, metadata !410, null}
!410 = metadata !{i32 786443, metadata !5, metadata !411, i32 582, i32 29, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lua.c]
!411 = metadata !{i32 786443, metadata !5, metadata !412, i32 582, i32 9, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lua.c]
!412 = metadata !{i32 786443, metadata !5, metadata !406, i32 581, i32 57, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lua.c]
!413 = metadata !{i32 584, i32 7, metadata !410, null}
!414 = metadata !{i32 587, i32 3, metadata !412, null}
!415 = metadata !{i32 588, i32 3, metadata !20, null}
!416 = metadata !{i32 589, i32 3, metadata !20, null}
!417 = metadata !{i32 590, i32 1, metadata !20, null}
!418 = metadata !{i32 786689, metadata !13, metadata !"L", metadata !6, i32 16777380, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 164]
!419 = metadata !{i32 164, i32 31, metadata !13, null}
!420 = metadata !{i32 786689, metadata !13, metadata !"status", metadata !6, i32 33554596, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [status] [line 164]
!421 = metadata !{i32 164, i32 38, metadata !13, null}
!422 = metadata !{i32 165, i32 7, metadata !423, null}
!423 = metadata !{i32 786443, metadata !5, metadata !13, i32 165, i32 7, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lua.c]
!424 = metadata !{i32 786688, metadata !425, metadata !"msg", metadata !6, i32 166, metadata !42, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [msg] [line 166]
!425 = metadata !{i32 786443, metadata !5, metadata !423, i32 165, i32 25, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lua.c]
!426 = metadata !{i32 166, i32 17, metadata !425, null}
!427 = metadata !{i32 166, i32 23, metadata !425, null}
!428 = metadata !{i32 167, i32 5, metadata !425, null}
!429 = metadata !{i32 168, i32 5, metadata !425, null}
!430 = metadata !{i32 169, i32 3, metadata !425, null}
!431 = metadata !{i32 170, i32 3, metadata !13, null}
!432 = metadata !{i32 786689, metadata !96, metadata !"argv", metadata !6, i32 16777679, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argv] [line 463]
!433 = metadata !{i32 463, i32 32, metadata !96, null}
!434 = metadata !{i32 786689, metadata !96, metadata !"first", metadata !6, i32 33554895, metadata !99, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [first] [line 463]
!435 = metadata !{i32 463, i32 43, metadata !96, null}
!436 = metadata !{i32 786688, metadata !96, metadata !"args", metadata !6, i32 464, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [args] [line 464]
!437 = metadata !{i32 464, i32 7, metadata !96, null}
!438 = metadata !{i32 464, i32 3, metadata !96, null}
!439 = metadata !{i32 786688, metadata !96, metadata !"i", metadata !6, i32 465, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 465]
!440 = metadata !{i32 465, i32 7, metadata !96, null}
!441 = metadata !{i32 466, i32 8, metadata !442, null}
!442 = metadata !{i32 786443, metadata !5, metadata !96, i32 466, i32 3, i32 0, i32 70} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lua.c]
!443 = metadata !{i32 466, i32 8, metadata !444, null}
!444 = metadata !{i32 786443, metadata !5, metadata !445, i32 466, i32 8, i32 2, i32 89} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lua.c]
!445 = metadata !{i32 786443, metadata !5, metadata !442, i32 466, i32 8, i32 1, i32 87} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lua.c]
!446 = metadata !{i32 467, i32 5, metadata !447, null}
!447 = metadata !{i32 786443, metadata !5, metadata !442, i32 466, i32 37, i32 0, i32 71} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lua.c]
!448 = metadata !{i32 468, i32 9, metadata !449, null}
!449 = metadata !{i32 786443, metadata !5, metadata !447, i32 468, i32 9, i32 0, i32 72} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lua.c]
!450 = metadata !{i32 469, i32 9, metadata !449, null}
!451 = metadata !{i32 470, i32 5, metadata !447, null}
!452 = metadata !{i32 472, i32 13, metadata !453, null}
!453 = metadata !{i32 786443, metadata !5, metadata !454, i32 472, i32 13, i32 0, i32 74} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lua.c]
!454 = metadata !{i32 786443, metadata !5, metadata !447, i32 470, i32 25, i32 0, i32 73} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lua.c]
!455 = metadata !{i32 473, i32 11, metadata !453, null}
!456 = metadata !{i32 474, i32 9, metadata !454, null}
!457 = metadata !{i32 475, i32 9, metadata !454, null}
!458 = metadata !{i32 477, i32 9, metadata !454, null}
!459 = metadata !{i32 479, i32 13, metadata !460, null}
!460 = metadata !{i32 786443, metadata !5, metadata !454, i32 479, i32 13, i32 0, i32 75} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lua.c]
!461 = metadata !{i32 480, i32 11, metadata !460, null}
!462 = metadata !{i32 481, i32 9, metadata !454, null}
!463 = metadata !{i32 482, i32 9, metadata !454, null}
!464 = metadata !{i32 484, i32 9, metadata !454, null}
!465 = metadata !{i32 486, i32 13, metadata !466, null}
!466 = metadata !{i32 786443, metadata !5, metadata !454, i32 486, i32 13, i32 0, i32 76} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lua.c]
!467 = metadata !{i32 487, i32 11, metadata !466, null}
!468 = metadata !{i32 488, i32 9, metadata !454, null}
!469 = metadata !{i32 489, i32 9, metadata !454, null}
!470 = metadata !{i32 491, i32 9, metadata !454, null}
!471 = metadata !{i32 493, i32 13, metadata !472, null}
!472 = metadata !{i32 786443, metadata !5, metadata !454, i32 493, i32 13, i32 0, i32 77} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lua.c]
!473 = metadata !{i32 494, i32 11, metadata !474, null}
!474 = metadata !{i32 786443, metadata !5, metadata !472, i32 493, i32 33, i32 0, i32 78} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lua.c]
!475 = metadata !{i32 495, i32 15, metadata !476, null}
!476 = metadata !{i32 786443, metadata !5, metadata !474, i32 495, i32 15, i32 0, i32 79} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lua.c]
!477 = metadata !{i32 495, i32 15, metadata !478, null}
!478 = metadata !{i32 786443, metadata !5, metadata !476, i32 495, i32 15, i32 1, i32 88} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lua.c]
!479 = metadata !{i32 496, i32 13, metadata !476, null}
!480 = metadata !{i32 497, i32 9, metadata !474, null}
!481 = metadata !{i32 498, i32 9, metadata !454, null}
!482 = metadata !{i32 500, i32 9, metadata !454, null}
!483 = metadata !{i32 502, i32 3, metadata !447, null}
!484 = metadata !{i32 466, i32 32, metadata !442, null}
!485 = metadata !{i32 503, i32 3, metadata !96, null}
!486 = metadata !{i32 504, i32 3, metadata !96, null}
!487 = metadata !{i32 505, i32 1, metadata !96, null}
!488 = metadata !{i32 786689, metadata !93, metadata !"badoption", metadata !6, i32 16777344, metadata !42, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [badoption] [line 128]
!489 = metadata !{i32 128, i32 38, metadata !93, null}
!490 = metadata !{i32 129, i32 3, metadata !93, null}
!491 = metadata !{i32 130, i32 7, metadata !492, null}
!492 = metadata !{i32 786443, metadata !5, metadata !93, i32 130, i32 7, i32 0, i32 69} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lua.c]
!493 = metadata !{i32 130, i32 7, metadata !494, null}
!494 = metadata !{i32 786443, metadata !5, metadata !492, i32 130, i32 7, i32 1, i32 90} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lua.c]
!495 = metadata !{i32 131, i32 5, metadata !492, null}
!496 = metadata !{i32 133, i32 5, metadata !492, null}
!497 = metadata !{i32 134, i32 3, metadata !93, null}
!498 = metadata !{i32 146, i32 1, metadata !93, null}
!499 = metadata !{i32 211, i32 3, metadata !90, null}
!500 = metadata !{i32 212, i32 3, metadata !90, null}
!501 = metadata !{i32 213, i32 1, metadata !90, null}
!502 = metadata !{i32 786689, metadata !87, metadata !"L", metadata !6, i32 16777440, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 224]
!503 = metadata !{i32 224, i32 40, metadata !87, null}
!504 = metadata !{i32 786689, metadata !87, metadata !"argv", metadata !6, i32 33554656, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argv] [line 224]
!505 = metadata !{i32 224, i32 50, metadata !87, null}
!506 = metadata !{i32 786689, metadata !87, metadata !"argc", metadata !6, i32 50331872, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argc] [line 224]
!507 = metadata !{i32 224, i32 60, metadata !87, null}
!508 = metadata !{i32 786689, metadata !87, metadata !"script", metadata !6, i32 67109088, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [script] [line 224]
!509 = metadata !{i32 224, i32 70, metadata !87, null}
!510 = metadata !{i32 786688, metadata !87, metadata !"i", metadata !6, i32 225, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 225]
!511 = metadata !{i32 225, i32 7, metadata !87, null}
!512 = metadata !{i32 786688, metadata !87, metadata !"narg", metadata !6, i32 225, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [narg] [line 225]
!513 = metadata !{i32 225, i32 10, metadata !87, null}
!514 = metadata !{i32 226, i32 7, metadata !515, null}
!515 = metadata !{i32 786443, metadata !5, metadata !87, i32 226, i32 7, i32 0, i32 66} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lua.c]
!516 = metadata !{i32 226, i32 23, metadata !517, null}
!517 = metadata !{i32 786443, metadata !5, metadata !515, i32 226, i32 23, i32 1, i32 91} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lua.c]
!518 = metadata !{i32 227, i32 3, metadata !87, null}
!519 = metadata !{i32 228, i32 3, metadata !87, null}
!520 = metadata !{i32 229, i32 8, metadata !521, null}
!521 = metadata !{i32 786443, metadata !5, metadata !87, i32 229, i32 3, i32 0, i32 67} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lua.c]
!522 = metadata !{i32 229, i32 8, metadata !523, null}
!523 = metadata !{i32 786443, metadata !5, metadata !524, i32 229, i32 8, i32 2, i32 93} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lua.c]
!524 = metadata !{i32 786443, metadata !5, metadata !521, i32 229, i32 8, i32 1, i32 92} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lua.c]
!525 = metadata !{i32 230, i32 5, metadata !526, null}
!526 = metadata !{i32 786443, metadata !5, metadata !521, i32 229, i32 30, i32 0, i32 68} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lua.c]
!527 = metadata !{i32 231, i32 5, metadata !526, null}
!528 = metadata !{i32 232, i32 3, metadata !526, null}
!529 = metadata !{i32 229, i32 25, metadata !521, null}
!530 = metadata !{i32 233, i32 3, metadata !87, null}
!531 = metadata !{i32 234, i32 1, metadata !87, null}
!532 = metadata !{i32 786689, metadata !85, metadata !"L", metadata !6, i32 16777748, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 532]
!533 = metadata !{i32 532, i32 39, metadata !85, null}
!534 = metadata !{i32 786688, metadata !85, metadata !"name", metadata !6, i32 533, metadata !42, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [name] [line 533]
!535 = metadata !{i32 533, i32 15, metadata !85, null}
!536 = metadata !{i32 533, i32 3, metadata !85, null}
!537 = metadata !{i32 786688, metadata !85, metadata !"init", metadata !6, i32 534, metadata !42, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [init] [line 534]
!538 = metadata !{i32 534, i32 15, metadata !85, null}
!539 = metadata !{i32 534, i32 22, metadata !85, null}
!540 = metadata !{i32 535, i32 7, metadata !541, null}
!541 = metadata !{i32 786443, metadata !5, metadata !85, i32 535, i32 7, i32 0, i32 62} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lua.c]
!542 = metadata !{i32 536, i32 5, metadata !543, null}
!543 = metadata !{i32 786443, metadata !5, metadata !541, i32 535, i32 21, i32 0, i32 63} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lua.c]
!544 = metadata !{i32 537, i32 12, metadata !543, null}
!545 = metadata !{i32 538, i32 3, metadata !543, null}
!546 = metadata !{i32 539, i32 7, metadata !547, null}
!547 = metadata !{i32 786443, metadata !5, metadata !85, i32 539, i32 7, i32 0, i32 64} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lua.c]
!548 = metadata !{i32 539, i32 21, metadata !549, null}
!549 = metadata !{i32 786443, metadata !5, metadata !547, i32 539, i32 21, i32 1, i32 94} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lua.c]
!550 = metadata !{i32 540, i32 12, metadata !551, null}
!551 = metadata !{i32 786443, metadata !5, metadata !547, i32 540, i32 12, i32 0, i32 65} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lua.c]
!552 = metadata !{i32 541, i32 12, metadata !551, null}
!553 = metadata !{i32 543, i32 12, metadata !551, null}
!554 = metadata !{i32 544, i32 1, metadata !85, null}
!555 = metadata !{i32 786689, metadata !75, metadata !"L", metadata !6, i32 16777728, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 512]
!556 = metadata !{i32 512, i32 32, metadata !75, null}
!557 = metadata !{i32 786689, metadata !75, metadata !"argv", metadata !6, i32 33554944, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argv] [line 512]
!558 = metadata !{i32 512, i32 42, metadata !75, null}
!559 = metadata !{i32 786689, metadata !75, metadata !"n", metadata !6, i32 50332160, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 512]
!560 = metadata !{i32 512, i32 52, metadata !75, null}
!561 = metadata !{i32 786688, metadata !75, metadata !"i", metadata !6, i32 513, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 513]
!562 = metadata !{i32 513, i32 7, metadata !75, null}
!563 = metadata !{i32 514, i32 8, metadata !564, null}
!564 = metadata !{i32 786443, metadata !5, metadata !75, i32 514, i32 3, i32 0, i32 54} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lua.c]
!565 = metadata !{i32 514, i32 8, metadata !566, null}
!566 = metadata !{i32 786443, metadata !5, metadata !567, i32 514, i32 8, i32 2, i32 100} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lua.c]
!567 = metadata !{i32 786443, metadata !5, metadata !564, i32 514, i32 8, i32 1, i32 95} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lua.c]
!568 = metadata !{i32 786688, metadata !569, metadata !"option", metadata !6, i32 515, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [option] [line 515]
!569 = metadata !{i32 786443, metadata !5, metadata !564, i32 514, i32 27, i32 0, i32 55} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lua.c]
!570 = metadata !{i32 515, i32 9, metadata !569, null}
!571 = metadata !{i32 515, i32 5, metadata !569, null}
!572 = metadata !{i32 517, i32 9, metadata !573, null}
!573 = metadata !{i32 786443, metadata !5, metadata !569, i32 517, i32 9, i32 0, i32 56} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lua.c]
!574 = metadata !{i32 517, i32 9, metadata !575, null}
!575 = metadata !{i32 786443, metadata !5, metadata !573, i32 517, i32 9, i32 1, i32 96} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lua.c]
!576 = metadata !{i32 786688, metadata !577, metadata !"status", metadata !6, i32 518, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [status] [line 518]
!577 = metadata !{i32 786443, metadata !5, metadata !573, i32 517, i32 41, i32 0, i32 57} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lua.c]
!578 = metadata !{i32 518, i32 11, metadata !577, null}
!579 = metadata !{i32 786688, metadata !577, metadata !"extra", metadata !6, i32 519, metadata !42, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [extra] [line 519]
!580 = metadata !{i32 519, i32 19, metadata !577, null}
!581 = metadata !{i32 519, i32 7, metadata !577, null}
!582 = metadata !{i32 520, i32 11, metadata !583, null}
!583 = metadata !{i32 786443, metadata !5, metadata !577, i32 520, i32 11, i32 0, i32 58} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lua.c]
!584 = metadata !{i32 520, i32 27, metadata !585, null}
!585 = metadata !{i32 786443, metadata !5, metadata !583, i32 520, i32 27, i32 1, i32 97} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lua.c]
!586 = metadata !{i32 522, i32 7, metadata !577, null}
!587 = metadata !{i32 523, i32 18, metadata !577, null}
!588 = metadata !{i32 524, i32 18, metadata !577, null}
!589 = metadata !{i32 524, i32 18, metadata !590, null}
!590 = metadata !{i32 786443, metadata !5, metadata !577, i32 524, i32 18, i32 1, i32 98} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lua.c]
!591 = metadata !{i32 525, i32 11, metadata !592, null}
!592 = metadata !{i32 786443, metadata !5, metadata !577, i32 525, i32 11, i32 0, i32 59} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lua.c]
!593 = metadata !{i32 525, i32 29, metadata !594, null}
!594 = metadata !{i32 786443, metadata !5, metadata !592, i32 525, i32 29, i32 1, i32 99} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lua.c]
!595 = metadata !{i32 526, i32 5, metadata !577, null}
!596 = metadata !{i32 527, i32 3, metadata !569, null}
!597 = metadata !{i32 514, i32 22, metadata !564, null}
!598 = metadata !{i32 528, i32 3, metadata !75, null}
!599 = metadata !{i32 529, i32 1, metadata !75, null}
!600 = metadata !{i32 786689, metadata !71, metadata !"L", metadata !6, i32 16777651, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 435]
!601 = metadata !{i32 435, i32 38, metadata !71, null}
!602 = metadata !{i32 786689, metadata !71, metadata !"argv", metadata !6, i32 33554867, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argv] [line 435]
!603 = metadata !{i32 435, i32 48, metadata !71, null}
!604 = metadata !{i32 786688, metadata !71, metadata !"status", metadata !6, i32 436, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [status] [line 436]
!605 = metadata !{i32 436, i32 7, metadata !71, null}
!606 = metadata !{i32 786688, metadata !71, metadata !"fname", metadata !6, i32 437, metadata !42, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fname] [line 437]
!607 = metadata !{i32 437, i32 15, metadata !71, null}
!608 = metadata !{i32 437, i32 3, metadata !71, null}
!609 = metadata !{i32 438, i32 7, metadata !610, null}
!610 = metadata !{i32 786443, metadata !5, metadata !71, i32 438, i32 7, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lua.c]
!611 = metadata !{i32 438, i32 34, metadata !612, null}
!612 = metadata !{i32 786443, metadata !5, metadata !610, i32 438, i32 34, i32 1, i32 101} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lua.c]
!613 = metadata !{i32 439, i32 5, metadata !610, null}
!614 = metadata !{i32 440, i32 12, metadata !71, null}
!615 = metadata !{i32 441, i32 7, metadata !616, null}
!616 = metadata !{i32 786443, metadata !5, metadata !71, i32 441, i32 7, i32 0, i32 50} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lua.c]
!617 = metadata !{i32 786688, metadata !618, metadata !"n", metadata !6, i32 442, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 442]
!618 = metadata !{i32 786443, metadata !5, metadata !616, i32 441, i32 25, i32 0, i32 51} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lua.c]
!619 = metadata !{i32 442, i32 9, metadata !618, null}
!620 = metadata !{i32 442, i32 13, metadata !618, null}
!621 = metadata !{i32 443, i32 14, metadata !618, null}
!622 = metadata !{i32 444, i32 3, metadata !618, null}
!623 = metadata !{i32 445, i32 10, metadata !71, null}
!624 = metadata !{i32 786689, metadata !23, metadata !"L", metadata !6, i32 16777619, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 403]
!625 = metadata !{i32 403, i32 32, metadata !23, null}
!626 = metadata !{i32 786688, metadata !23, metadata !"status", metadata !6, i32 404, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [status] [line 404]
!627 = metadata !{i32 404, i32 7, metadata !23, null}
!628 = metadata !{i32 786688, metadata !23, metadata !"oldprogname", metadata !6, i32 405, metadata !42, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [oldprogname] [line 405]
!629 = metadata !{i32 405, i32 15, metadata !23, null}
!630 = metadata !{i32 405, i32 3, metadata !23, null}
!631 = metadata !{i32 406, i32 3, metadata !23, null}
!632 = metadata !{i32 407, i32 3, metadata !23, null}
!633 = metadata !{i32 407, i32 20, metadata !634, null}
!634 = metadata !{i32 786443, metadata !5, metadata !23, i32 407, i32 20, i32 1, i32 102} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lua.c]
!635 = metadata !{i32 408, i32 9, metadata !636, null}
!636 = metadata !{i32 786443, metadata !5, metadata !637, i32 408, i32 9, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lua.c]
!637 = metadata !{i32 786443, metadata !5, metadata !23, i32 407, i32 40, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lua.c]
!638 = metadata !{i32 409, i32 16, metadata !636, null}
!639 = metadata !{i32 410, i32 9, metadata !640, null}
!640 = metadata !{i32 786443, metadata !5, metadata !637, i32 410, i32 9, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lua.c]
!641 = metadata !{i32 410, i32 27, metadata !642, null}
!642 = metadata !{i32 786443, metadata !5, metadata !640, i32 410, i32 27, i32 1, i32 103} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lua.c]
!643 = metadata !{i32 411, i32 10, metadata !640, null}
!644 = metadata !{i32 412, i32 3, metadata !637, null}
!645 = metadata !{i32 413, i32 3, metadata !23, null}
!646 = metadata !{i32 414, i32 3, metadata !23, null}
!647 = metadata !{i32 415, i32 3, metadata !23, null}
!648 = metadata !{i32 416, i32 1, metadata !23, null}
!649 = metadata !{i32 786689, metadata !63, metadata !"L", metadata !6, i32 16777586, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 370]
!650 = metadata !{i32 370, i32 33, metadata !63, null}
!651 = metadata !{i32 786688, metadata !63, metadata !"status", metadata !6, i32 371, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [status] [line 371]
!652 = metadata !{i32 371, i32 7, metadata !63, null}
!653 = metadata !{i32 372, i32 3, metadata !63, null}
!654 = metadata !{i32 373, i32 8, metadata !655, null}
!655 = metadata !{i32 786443, metadata !5, metadata !63, i32 373, i32 7, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lua.c]
!656 = metadata !{i32 374, i32 5, metadata !655, null}
!657 = metadata !{i32 375, i32 17, metadata !658, null}
!658 = metadata !{i32 786443, metadata !5, metadata !63, i32 375, i32 7, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lua.c]
!659 = metadata !{i32 376, i32 14, metadata !658, null}
!660 = metadata !{i32 377, i32 3, metadata !63, null}
!661 = metadata !{i32 379, i32 3, metadata !63, null}
!662 = metadata !{i32 380, i32 1, metadata !63, null}
!663 = metadata !{i32 786689, metadata !27, metadata !"L", metadata !6, i32 16777412, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 196]
!664 = metadata !{i32 196, i32 31, metadata !27, null}
!665 = metadata !{i32 786689, metadata !27, metadata !"narg", metadata !6, i32 33554628, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [narg] [line 196]
!666 = metadata !{i32 196, i32 38, metadata !27, null}
!667 = metadata !{i32 786689, metadata !27, metadata !"nres", metadata !6, i32 50331844, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nres] [line 196]
!668 = metadata !{i32 196, i32 48, metadata !27, null}
!669 = metadata !{i32 786688, metadata !27, metadata !"status", metadata !6, i32 197, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [status] [line 197]
!670 = metadata !{i32 197, i32 7, metadata !27, null}
!671 = metadata !{i32 786688, metadata !27, metadata !"base", metadata !6, i32 198, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [base] [line 198]
!672 = metadata !{i32 198, i32 7, metadata !27, null}
!673 = metadata !{i32 198, i32 14, metadata !27, null}
!674 = metadata !{i32 199, i32 3, metadata !27, null}
!675 = metadata !{i32 200, i32 3, metadata !27, null}
!676 = metadata !{i32 201, i32 3, metadata !27, null}
!677 = metadata !{i32 202, i32 3, metadata !27, null}
!678 = metadata !{i32 203, i32 12, metadata !27, null}
!679 = metadata !{i32 204, i32 3, metadata !27, null}
!680 = metadata !{i32 205, i32 3, metadata !27, null}
!681 = metadata !{i32 206, i32 3, metadata !27, null}
!682 = metadata !{i32 786689, metadata !26, metadata !"L", metadata !6, i32 16777602, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 386]
!683 = metadata !{i32 386, i32 33, metadata !26, null}
!684 = metadata !{i32 786688, metadata !26, metadata !"n", metadata !6, i32 387, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 387]
!685 = metadata !{i32 387, i32 7, metadata !26, null}
!686 = metadata !{i32 387, i32 11, metadata !26, null}
!687 = metadata !{i32 388, i32 7, metadata !688, null}
!688 = metadata !{i32 786443, metadata !5, metadata !26, i32 388, i32 7, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lua.c]
!689 = metadata !{i32 389, i32 5, metadata !690, null}
!690 = metadata !{i32 786443, metadata !5, metadata !688, i32 388, i32 14, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lua.c]
!691 = metadata !{i32 390, i32 5, metadata !690, null}
!692 = metadata !{i32 391, i32 5, metadata !690, null}
!693 = metadata !{i32 392, i32 9, metadata !694, null}
!694 = metadata !{i32 786443, metadata !5, metadata !690, i32 392, i32 9, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lua.c]
!695 = metadata !{i32 393, i32 7, metadata !694, null}
!696 = metadata !{i32 393, i32 27, metadata !694, null}
!697 = metadata !{i32 394, i32 46, metadata !694, null}
!698 = metadata !{i32 395, i32 3, metadata !690, null}
!699 = metadata !{i32 396, i32 1, metadata !26, null}
!700 = metadata !{i32 786689, metadata !62, metadata !"L", metadata !6, i32 16777393, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 177]
!701 = metadata !{i32 177, i32 35, metadata !62, null}
!702 = metadata !{i32 786688, metadata !62, metadata !"msg", metadata !6, i32 178, metadata !42, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [msg] [line 178]
!703 = metadata !{i32 178, i32 15, metadata !62, null}
!704 = metadata !{i32 178, i32 21, metadata !62, null}
!705 = metadata !{i32 179, i32 7, metadata !706, null}
!706 = metadata !{i32 786443, metadata !5, metadata !62, i32 179, i32 7, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lua.c]
!707 = metadata !{i32 180, i32 9, metadata !708, null}
!708 = metadata !{i32 786443, metadata !5, metadata !709, i32 180, i32 9, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lua.c]
!709 = metadata !{i32 786443, metadata !5, metadata !706, i32 179, i32 20, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lua.c]
!710 = metadata !{i32 181, i32 9, metadata !708, null}
!711 = metadata !{i32 182, i32 7, metadata !708, null}
!712 = metadata !{i32 184, i32 13, metadata !708, null}
!713 = metadata !{i32 185, i32 32, metadata !708, null}
!714 = metadata !{i32 186, i32 3, metadata !709, null}
!715 = metadata !{i32 187, i32 3, metadata !62, null}
!716 = metadata !{i32 188, i32 3, metadata !62, null}
!717 = metadata !{i32 189, i32 1, metadata !62, null}
!718 = metadata !{i32 786689, metadata !30, metadata !"i", metadata !6, i32 16777338, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [i] [line 122]
!719 = metadata !{i32 122, i32 26, metadata !30, null}
!720 = metadata !{i32 123, i32 3, metadata !30, null}
!721 = metadata !{i32 124, i32 3, metadata !30, null}
!722 = metadata !{i32 125, i32 1, metadata !30, null}
!723 = metadata !{i32 786689, metadata !33, metadata !"L", metadata !6, i32 16777325, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 109]
!724 = metadata !{i32 109, i32 31, metadata !33, null}
!725 = metadata !{i32 786689, metadata !33, metadata !"ar", metadata !6, i32 33554541, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ar] [line 109]
!726 = metadata !{i32 109, i32 45, metadata !33, null}
!727 = metadata !{i32 110, i32 3, metadata !33, null}
!728 = metadata !{i32 111, i32 3, metadata !33, null}
!729 = metadata !{i32 112, i32 3, metadata !33, null}
!730 = metadata !{i32 113, i32 1, metadata !33, null}
!731 = metadata !{i32 786689, metadata !67, metadata !"L", metadata !6, i32 16777521, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 305]
!732 = metadata !{i32 305, i32 33, metadata !67, null}
!733 = metadata !{i32 786689, metadata !67, metadata !"firstline", metadata !6, i32 33554737, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [firstline] [line 305]
!734 = metadata !{i32 305, i32 40, metadata !67, null}
!735 = metadata !{i32 786688, metadata !67, metadata !"buffer", metadata !6, i32 306, metadata !736, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buffer] [line 306]
!736 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 4096, i64 8, i32 0, i32 0, metadata !12, metadata !737, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 4096, align 8, offset 0] [from char]
!737 = metadata !{metadata !738}
!738 = metadata !{i32 786465, i64 0, i64 512}     ; [ DW_TAG_subrange_type ] [0, 511]
!739 = metadata !{i32 306, i32 8, metadata !67, null}
!740 = metadata !{i32 786688, metadata !67, metadata !"b", metadata !6, i32 307, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b] [line 307]
!741 = metadata !{i32 307, i32 9, metadata !67, null}
!742 = metadata !{i32 307, i32 3, metadata !67, null}
!743 = metadata !{i32 786688, metadata !67, metadata !"l", metadata !6, i32 308, metadata !744, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [l] [line 308]
!744 = metadata !{i32 786454, metadata !745, null, metadata !"size_t", i32 216, i64 0, i64 0, i64 0, i32 0, metadata !746} ; [ DW_TAG_typedef ] [size_t] [line 216, size 0, align 0, offset 0] [from unsigned int]
!745 = metadata !{metadata !"D:/Xilinx/SDx/2016.3/SDK/gnu/aarch32/nt/gcc-arm-linux-gnueabi/lib/gcc/arm-linux-gnueabihf/5.2.1/include\5Cstddef.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!746 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!747 = metadata !{i32 308, i32 10, metadata !67, null}
!748 = metadata !{i32 786688, metadata !67, metadata !"prmt", metadata !6, i32 309, metadata !42, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [prmt] [line 309]
!749 = metadata !{i32 309, i32 15, metadata !67, null}
!750 = metadata !{i32 309, i32 22, metadata !67, null}
!751 = metadata !{i32 786688, metadata !67, metadata !"readstatus", metadata !6, i32 310, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [readstatus] [line 310]
!752 = metadata !{i32 310, i32 7, metadata !67, null}
!753 = metadata !{i32 310, i32 3, metadata !67, null}
!754 = metadata !{i32 310, i32 20, metadata !67, null}
!755 = metadata !{i32 311, i32 7, metadata !756, null}
!756 = metadata !{i32 786443, metadata !5, metadata !67, i32 311, i32 7, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lua.c]
!757 = metadata !{i32 312, i32 5, metadata !756, null}
!758 = metadata !{i32 313, i32 3, metadata !67, null}
!759 = metadata !{i32 314, i32 7, metadata !67, null}
!760 = metadata !{i32 315, i32 7, metadata !761, null}
!761 = metadata !{i32 786443, metadata !5, metadata !67, i32 315, i32 7, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lua.c]
!762 = metadata !{i32 315, i32 7, metadata !763, null}
!763 = metadata !{i32 786443, metadata !5, metadata !761, i32 315, i32 7, i32 1, i32 104} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lua.c]
!764 = metadata !{i32 316, i32 5, metadata !761, null}
!765 = metadata !{i32 317, i32 7, metadata !766, null}
!766 = metadata !{i32 786443, metadata !5, metadata !67, i32 317, i32 7, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lua.c]
!767 = metadata !{i32 317, i32 7, metadata !768, null}
!768 = metadata !{i32 786443, metadata !5, metadata !766, i32 317, i32 7, i32 1, i32 105} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lua.c]
!769 = metadata !{i32 318, i32 5, metadata !766, null}
!770 = metadata !{i32 320, i32 5, metadata !766, null}
!771 = metadata !{i32 321, i32 3, metadata !772, null}
!772 = metadata !{i32 786443, metadata !5, metadata !67, i32 321, i32 3, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lua.c]
!773 = metadata !{i32 322, i32 3, metadata !67, null}
!774 = metadata !{i32 323, i32 1, metadata !67, null}
!775 = metadata !{i32 786689, metadata !66, metadata !"L", metadata !6, i32 16777546, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 330]
!776 = metadata !{i32 330, i32 34, metadata !66, null}
!777 = metadata !{i32 786688, metadata !66, metadata !"line", metadata !6, i32 331, metadata !42, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [line] [line 331]
!778 = metadata !{i32 331, i32 15, metadata !66, null}
!779 = metadata !{i32 331, i32 22, metadata !66, null}
!780 = metadata !{i32 786688, metadata !66, metadata !"retline", metadata !6, i32 332, metadata !42, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [retline] [line 332]
!781 = metadata !{i32 332, i32 15, metadata !66, null}
!782 = metadata !{i32 332, i32 25, metadata !66, null}
!783 = metadata !{i32 786688, metadata !66, metadata !"status", metadata !6, i32 333, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [status] [line 333]
!784 = metadata !{i32 333, i32 7, metadata !66, null}
!785 = metadata !{i32 333, i32 16, metadata !66, null}
!786 = metadata !{i32 334, i32 7, metadata !787, null}
!787 = metadata !{i32 786443, metadata !5, metadata !66, i32 334, i32 7, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lua.c]
!788 = metadata !{i32 335, i32 5, metadata !789, null}
!789 = metadata !{i32 786443, metadata !5, metadata !787, i32 334, i32 25, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lua.c]
!790 = metadata !{i32 336, i32 9, metadata !791, null}
!791 = metadata !{i32 786443, metadata !5, metadata !789, i32 336, i32 9, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lua.c]
!792 = metadata !{i32 337, i32 7, metadata !793, null}
!793 = metadata !{i32 786443, metadata !5, metadata !791, i32 337, i32 7, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lua.c]
!794 = metadata !{i32 338, i32 3, metadata !789, null}
!795 = metadata !{i32 340, i32 5, metadata !787, null}
!796 = metadata !{i32 341, i32 3, metadata !66, null}
!797 = metadata !{i32 786689, metadata !64, metadata !"L", metadata !6, i32 16777564, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 348]
!798 = metadata !{i32 348, i32 34, metadata !64, null}
!799 = metadata !{i32 349, i32 3, metadata !800, null}
!800 = metadata !{i32 786443, metadata !5, metadata !64, i32 349, i32 3, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lua.c]
!801 = metadata !{i32 786688, metadata !802, metadata !"len", metadata !6, i32 350, metadata !744, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [len] [line 350]
!802 = metadata !{i32 786443, metadata !5, metadata !800, i32 349, i32 12, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lua.c]
!803 = metadata !{i32 350, i32 12, metadata !802, null}
!804 = metadata !{i32 786688, metadata !802, metadata !"line", metadata !6, i32 351, metadata !42, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [line] [line 351]
!805 = metadata !{i32 351, i32 17, metadata !802, null}
!806 = metadata !{i32 351, i32 24, metadata !802, null}
!807 = metadata !{i32 786688, metadata !802, metadata !"status", metadata !6, i32 352, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [status] [line 352]
!808 = metadata !{i32 352, i32 9, metadata !802, null}
!809 = metadata !{i32 352, i32 18, metadata !802, null}
!810 = metadata !{i32 353, i32 10, metadata !811, null}
!811 = metadata !{i32 786443, metadata !5, metadata !802, i32 353, i32 9, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lua.c]
!812 = metadata !{i32 353, i32 36, metadata !813, null}
!813 = metadata !{i32 786443, metadata !5, metadata !811, i32 353, i32 36, i32 1, i32 106} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lua.c]
!814 = metadata !{i32 354, i32 7, metadata !815, null}
!815 = metadata !{i32 786443, metadata !5, metadata !816, i32 354, i32 7, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lua.c]
!816 = metadata !{i32 786443, metadata !5, metadata !811, i32 353, i32 52, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lua.c]
!817 = metadata !{i32 355, i32 7, metadata !816, null}
!818 = metadata !{i32 357, i32 5, metadata !802, null}
!819 = metadata !{i32 358, i32 5, metadata !802, null}
!820 = metadata !{i32 359, i32 5, metadata !802, null}
!821 = metadata !{i32 360, i32 3, metadata !802, null}
!822 = metadata !{i32 786689, metadata !65, metadata !"L", metadata !6, i32 16777505, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 289]
!823 = metadata !{i32 289, i32 35, metadata !65, null}
!824 = metadata !{i32 786689, metadata !65, metadata !"status", metadata !6, i32 33554721, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [status] [line 289]
!825 = metadata !{i32 289, i32 42, metadata !65, null}
!826 = metadata !{i32 290, i32 7, metadata !827, null}
!827 = metadata !{i32 786443, metadata !5, metadata !65, i32 290, i32 7, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lua.c]
!828 = metadata !{i32 786688, metadata !829, metadata !"lmsg", metadata !6, i32 291, metadata !744, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lmsg] [line 291]
!829 = metadata !{i32 786443, metadata !5, metadata !827, i32 290, i32 32, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lua.c]
!830 = metadata !{i32 291, i32 12, metadata !829, null}
!831 = metadata !{i32 786688, metadata !829, metadata !"msg", metadata !6, i32 292, metadata !42, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [msg] [line 292]
!832 = metadata !{i32 292, i32 17, metadata !829, null}
!833 = metadata !{i32 292, i32 23, metadata !829, null}
!834 = metadata !{i32 293, i32 9, metadata !835, null}
!835 = metadata !{i32 786443, metadata !5, metadata !829, i32 293, i32 9, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lua.c]
!836 = metadata !{i32 293, i32 28, metadata !837, null}
!837 = metadata !{i32 786443, metadata !5, metadata !835, i32 293, i32 28, i32 1, i32 107} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lua.c]
!838 = metadata !{i32 294, i32 7, metadata !839, null}
!839 = metadata !{i32 786443, metadata !5, metadata !835, i32 293, i32 72, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lua.c]
!840 = metadata !{i32 295, i32 7, metadata !839, null}
!841 = metadata !{i32 297, i32 3, metadata !829, null}
!842 = metadata !{i32 298, i32 3, metadata !65, null}
!843 = metadata !{i32 299, i32 1, metadata !65, null}
!844 = metadata !{i32 786689, metadata !68, metadata !"L", metadata !6, i32 16777487, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 271]
!845 = metadata !{i32 271, i32 43, metadata !68, null}
!846 = metadata !{i32 786689, metadata !68, metadata !"firstline", metadata !6, i32 33554703, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [firstline] [line 271]
!847 = metadata !{i32 271, i32 50, metadata !68, null}
!848 = metadata !{i32 786688, metadata !68, metadata !"p", metadata !6, i32 272, metadata !42, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 272]
!849 = metadata !{i32 272, i32 15, metadata !68, null}
!850 = metadata !{i32 273, i32 3, metadata !68, null}
!851 = metadata !{i32 274, i32 7, metadata !68, null}
!852 = metadata !{i32 275, i32 7, metadata !853, null}
!853 = metadata !{i32 786443, metadata !5, metadata !68, i32 275, i32 7, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lua.c]
!854 = metadata !{i32 275, i32 18, metadata !855, null}
!855 = metadata !{i32 786443, metadata !5, metadata !853, i32 275, i32 18, i32 1, i32 108} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lua.c]
!856 = metadata !{i32 276, i32 3, metadata !68, null}
!857 = metadata !{i32 786689, metadata !74, metadata !"L", metadata !6, i32 16777638, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 422]
!858 = metadata !{i32 422, i32 33, metadata !74, null}
!859 = metadata !{i32 786688, metadata !74, metadata !"i", metadata !6, i32 423, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 423]
!860 = metadata !{i32 423, i32 7, metadata !74, null}
!861 = metadata !{i32 786688, metadata !74, metadata !"n", metadata !6, i32 423, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 423]
!862 = metadata !{i32 423, i32 10, metadata !74, null}
!863 = metadata !{i32 424, i32 7, metadata !864, null}
!864 = metadata !{i32 786443, metadata !5, metadata !74, i32 424, i32 7, i32 0, i32 52} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lua.c]
!865 = metadata !{i32 425, i32 5, metadata !864, null}
!866 = metadata !{i32 426, i32 12, metadata !74, null}
!867 = metadata !{i32 427, i32 3, metadata !74, null}
!868 = metadata !{i32 428, i32 8, metadata !869, null}
!869 = metadata !{i32 786443, metadata !5, metadata !74, i32 428, i32 3, i32 0, i32 53} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lua.c]
!870 = metadata !{i32 428, i32 8, metadata !871, null}
!871 = metadata !{i32 786443, metadata !5, metadata !872, i32 428, i32 8, i32 2, i32 110} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lua.c]
!872 = metadata !{i32 786443, metadata !5, metadata !869, i32 428, i32 8, i32 1, i32 109} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lua.c]
!873 = metadata !{i32 429, i32 5, metadata !869, null}
!874 = metadata !{i32 428, i32 23, metadata !869, null}
!875 = metadata !{i32 430, i32 3, metadata !74, null}
!876 = metadata !{i32 431, i32 3, metadata !74, null}
!877 = metadata !{i32 786689, metadata !81, metadata !"L", metadata !6, i32 16777464, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 248]
!878 = metadata !{i32 248, i32 33, metadata !81, null}
!879 = metadata !{i32 786689, metadata !81, metadata !"s", metadata !6, i32 33554680, metadata !42, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 248]
!880 = metadata !{i32 248, i32 48, metadata !81, null}
!881 = metadata !{i32 786689, metadata !81, metadata !"name", metadata !6, i32 50331896, metadata !42, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 248]
!882 = metadata !{i32 248, i32 63, metadata !81, null}
!883 = metadata !{i32 249, i32 10, metadata !81, null}
!884 = metadata !{i32 249, i32 21, metadata !81, null}
!885 = metadata !{i32 786689, metadata !78, metadata !"L", metadata !6, i32 16777473, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 257]
!886 = metadata !{i32 257, i32 34, metadata !78, null}
!887 = metadata !{i32 786689, metadata !78, metadata !"name", metadata !6, i32 33554689, metadata !42, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 257]
!888 = metadata !{i32 257, i32 49, metadata !78, null}
!889 = metadata !{i32 786688, metadata !78, metadata !"status", metadata !6, i32 258, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [status] [line 258]
!890 = metadata !{i32 258, i32 7, metadata !78, null}
!891 = metadata !{i32 259, i32 3, metadata !78, null}
!892 = metadata !{i32 260, i32 3, metadata !78, null}
!893 = metadata !{i32 261, i32 12, metadata !78, null}
!894 = metadata !{i32 262, i32 7, metadata !895, null}
!895 = metadata !{i32 786443, metadata !5, metadata !78, i32 262, i32 7, i32 0, i32 60} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lua.c]
!896 = metadata !{i32 263, i32 5, metadata !895, null}
!897 = metadata !{i32 264, i32 10, metadata !78, null}
!898 = metadata !{i32 786689, metadata !84, metadata !"L", metadata !6, i32 16777453, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 237]
!899 = metadata !{i32 237, i32 32, metadata !84, null}
!900 = metadata !{i32 786689, metadata !84, metadata !"status", metadata !6, i32 33554669, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [status] [line 237]
!901 = metadata !{i32 237, i32 39, metadata !84, null}
!902 = metadata !{i32 238, i32 7, metadata !903, null}
!903 = metadata !{i32 786443, metadata !5, metadata !84, i32 238, i32 7, i32 0, i32 61} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lua.c]
!904 = metadata !{i32 238, i32 34, metadata !905, null}
!905 = metadata !{i32 786443, metadata !5, metadata !903, i32 238, i32 34, i32 1, i32 111} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lua.c]
!906 = metadata !{i32 239, i32 10, metadata !84, null}
!907 = metadata !{i32 786689, metadata !86, metadata !"L", metadata !6, i32 16777459, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 243]
!908 = metadata !{i32 243, i32 31, metadata !86, null}
!909 = metadata !{i32 786689, metadata !86, metadata !"name", metadata !6, i32 33554675, metadata !42, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 243]
!910 = metadata !{i32 243, i32 46, metadata !86, null}
!911 = metadata !{i32 244, i32 10, metadata !86, null}
!912 = metadata !{i32 244, i32 21, metadata !86, null}
