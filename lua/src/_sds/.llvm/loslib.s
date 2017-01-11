; ModuleID = 'C:/Users/DevolutionX/workspace/lua/src/loslib.c'
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-n32-S64"
target triple = "armv7--linux-gnueabihf"

%struct.luaL_Reg = type { i8*, i32 (%struct.lua_State*)* }
%struct.lua_State = type opaque
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8* }
%struct.luaL_Buffer = type { i8*, i32, i32, %struct.lua_State*, [8192 x i8] }

@syslib = internal constant [12 x %struct.luaL_Reg] [%struct.luaL_Reg { i8* getelementptr inbounds ([6 x i8]* @.str, i32 0, i32 0), i32 (%struct.lua_State*)* @os_clock }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8]* @.str1, i32 0, i32 0), i32 (%struct.lua_State*)* @os_date }, %struct.luaL_Reg { i8* getelementptr inbounds ([9 x i8]* @.str2, i32 0, i32 0), i32 (%struct.lua_State*)* @os_difftime }, %struct.luaL_Reg { i8* getelementptr inbounds ([8 x i8]* @.str3, i32 0, i32 0), i32 (%struct.lua_State*)* @os_execute }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8]* @.str4, i32 0, i32 0), i32 (%struct.lua_State*)* @os_exit }, %struct.luaL_Reg { i8* getelementptr inbounds ([7 x i8]* @.str5, i32 0, i32 0), i32 (%struct.lua_State*)* @os_getenv }, %struct.luaL_Reg { i8* getelementptr inbounds ([7 x i8]* @.str6, i32 0, i32 0), i32 (%struct.lua_State*)* @os_remove }, %struct.luaL_Reg { i8* getelementptr inbounds ([7 x i8]* @.str7, i32 0, i32 0), i32 (%struct.lua_State*)* @os_rename }, %struct.luaL_Reg { i8* getelementptr inbounds ([10 x i8]* @.str8, i32 0, i32 0), i32 (%struct.lua_State*)* @os_setlocale }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8]* @.str9, i32 0, i32 0), i32 (%struct.lua_State*)* @os_time }, %struct.luaL_Reg { i8* getelementptr inbounds ([8 x i8]* @.str10, i32 0, i32 0), i32 (%struct.lua_State*)* @os_tmpname }, %struct.luaL_Reg zeroinitializer], align 4
@.str = private unnamed_addr constant [6 x i8] c"clock\00", align 1
@.str1 = private unnamed_addr constant [5 x i8] c"date\00", align 1
@.str2 = private unnamed_addr constant [9 x i8] c"difftime\00", align 1
@.str3 = private unnamed_addr constant [8 x i8] c"execute\00", align 1
@.str4 = private unnamed_addr constant [5 x i8] c"exit\00", align 1
@.str5 = private unnamed_addr constant [7 x i8] c"getenv\00", align 1
@.str6 = private unnamed_addr constant [7 x i8] c"remove\00", align 1
@.str7 = private unnamed_addr constant [7 x i8] c"rename\00", align 1
@.str8 = private unnamed_addr constant [10 x i8] c"setlocale\00", align 1
@.str9 = private unnamed_addr constant [5 x i8] c"time\00", align 1
@.str10 = private unnamed_addr constant [8 x i8] c"tmpname\00", align 1
@.str11 = private unnamed_addr constant [37 x i8] c"unable to generate a unique filename\00", align 1
@.str12 = private unnamed_addr constant [4 x i8] c"sec\00", align 1
@.str13 = private unnamed_addr constant [4 x i8] c"min\00", align 1
@.str14 = private unnamed_addr constant [5 x i8] c"hour\00", align 1
@.str15 = private unnamed_addr constant [4 x i8] c"day\00", align 1
@.str16 = private unnamed_addr constant [6 x i8] c"month\00", align 1
@.str17 = private unnamed_addr constant [5 x i8] c"year\00", align 1
@.str18 = private unnamed_addr constant [6 x i8] c"isdst\00", align 1
@.str19 = private unnamed_addr constant [55 x i8] c"time result cannot be represented in this installation\00", align 1
@.str20 = private unnamed_addr constant [5 x i8] c"wday\00", align 1
@.str21 = private unnamed_addr constant [5 x i8] c"yday\00", align 1
@.str22 = private unnamed_addr constant [29 x i8] c"field '%s' is not an integer\00", align 1
@.str23 = private unnamed_addr constant [33 x i8] c"field '%s' missing in date table\00", align 1
@.str24 = private unnamed_addr constant [27 x i8] c"field '%s' is out-of-bound\00", align 1
@os_setlocale.cat = internal constant [6 x i32] [i32 6, i32 3, i32 0, i32 4, i32 1, i32 2], align 4
@os_setlocale.catnames = internal constant [7 x i8*] [i8* getelementptr inbounds ([4 x i8]* @.str25, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @.str26, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str27, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str28, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @.str29, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str9, i32 0, i32 0), i8* null], align 4
@.str25 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str26 = private unnamed_addr constant [8 x i8] c"collate\00", align 1
@.str27 = private unnamed_addr constant [6 x i8] c"ctype\00", align 1
@.str28 = private unnamed_addr constant [9 x i8] c"monetary\00", align 1
@.str29 = private unnamed_addr constant [8 x i8] c"numeric\00", align 1
@.str30 = private unnamed_addr constant [19 x i8] c"time out-of-bounds\00", align 1
@.str31 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str32 = private unnamed_addr constant [3 x i8] c"*t\00", align 1
@.str33 = private unnamed_addr constant [78 x i8] c"aAbBcCdDeFgGhHIjmMnprRStTuUVwWxXyYzZ%||EcECExEXEyEYOdOeOHOIOmOMOSOuOUOVOwOWOy\00", align 1
@.str34 = private unnamed_addr constant [36 x i8] c"invalid conversion specifier '%%%s'\00", align 1

; Function Attrs: nounwind
define i32 @luaopen_os(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !271), !dbg !272
  %2 = load %struct.lua_State** %1, align 4, !dbg !273
  call void @luaL_checkversion_(%struct.lua_State* %2, double 5.030000e+02, i32 136), !dbg !273
  %3 = load %struct.lua_State** %1, align 4, !dbg !273
  call void @lua_createtable(%struct.lua_State* %3, i32 0, i32 11), !dbg !273
  %4 = load %struct.lua_State** %1, align 4, !dbg !273
  call void @luaL_setfuncs(%struct.lua_State* %4, %struct.luaL_Reg* getelementptr inbounds ([12 x %struct.luaL_Reg]* @syslib, i32 0, i32 0), i32 0), !dbg !273
  ret i32 1, !dbg !274
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

declare void @luaL_checkversion_(%struct.lua_State*, double, i32) #2

declare void @lua_createtable(%struct.lua_State*, i32, i32) #2

declare void @luaL_setfuncs(%struct.lua_State*, %struct.luaL_Reg*, i32) #2

; Function Attrs: nounwind
define internal i32 @os_clock(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !275), !dbg !276
  %2 = load %struct.lua_State** %1, align 4, !dbg !277
  %3 = call i32 @clock() #6, !dbg !278
  %4 = sitofp i32 %3 to double, !dbg !278
  %5 = fdiv double %4, 1.000000e+06, !dbg !278
  call void @lua_pushnumber(%struct.lua_State* %2, double %5), !dbg !277
  ret i32 1, !dbg !279
}

; Function Attrs: nounwind
define internal i32 @os_date(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %s = alloca i8*, align 4
  %t = alloca i32, align 4
  %tmr = alloca %struct.tm, align 4
  %stm = alloca %struct.tm*, align 4
  %cc = alloca [4 x i8], align 1
  %b = alloca %struct.luaL_Buffer, align 4
  %reslen = alloca i32, align 4
  %buff = alloca i8*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !280), !dbg !281
  call void @llvm.dbg.declare(metadata !{i8** %s}, metadata !282), !dbg !283
  %2 = load %struct.lua_State** %1, align 4, !dbg !284
  %3 = call i8* @luaL_optlstring(%struct.lua_State* %2, i32 1, i8* getelementptr inbounds ([3 x i8]* @.str31, i32 0, i32 0), i32* null), !dbg !284
  store i8* %3, i8** %s, align 4, !dbg !284
  call void @llvm.dbg.declare(metadata !{i32* %t}, metadata !285), !dbg !286
  %4 = load %struct.lua_State** %1, align 4, !dbg !287
  %5 = call i32 @lua_type(%struct.lua_State* %4, i32 2), !dbg !287
  %6 = icmp sle i32 %5, 0, !dbg !287
  br i1 %6, label %7, label %9, !dbg !287

; <label>:7                                       ; preds = %0
  %8 = call i32 @time(i32* null) #6, !dbg !288
  br label %12, !dbg !288

; <label>:9                                       ; preds = %0
  %10 = load %struct.lua_State** %1, align 4, !dbg !290
  %11 = call i32 @l_checktime(%struct.lua_State* %10, i32 2), !dbg !290
  br label %12, !dbg !290

; <label>:12                                      ; preds = %9, %7
  %13 = phi i32 [ %8, %7 ], [ %11, %9 ], !dbg !287
  store i32 %13, i32* %t, align 4, !dbg !292
  call void @llvm.dbg.declare(metadata !{%struct.tm* %tmr}, metadata !295), !dbg !296
  call void @llvm.dbg.declare(metadata !{%struct.tm** %stm}, metadata !297), !dbg !298
  %14 = load i8** %s, align 4, !dbg !299
  %15 = load i8* %14, align 1, !dbg !299
  %16 = zext i8 %15 to i32, !dbg !299
  %17 = icmp eq i32 %16, 33, !dbg !299
  br i1 %17, label %18, label %24, !dbg !299

; <label>:18                                      ; preds = %12
  %19 = getelementptr inbounds %struct.tm* %tmr, i32 0, i32 0, !dbg !301
  %20 = load i32* %19, align 4, !dbg !301
  %21 = call %struct.tm* @gmtime(i32* %t) #6, !dbg !303
  store %struct.tm* %21, %struct.tm** %stm, align 4, !dbg !303
  %22 = load i8** %s, align 4, !dbg !304
  %23 = getelementptr inbounds i8* %22, i32 1, !dbg !304
  store i8* %23, i8** %s, align 4, !dbg !304
  br label %28, !dbg !305

; <label>:24                                      ; preds = %12
  %25 = getelementptr inbounds %struct.tm* %tmr, i32 0, i32 0, !dbg !306
  %26 = load i32* %25, align 4, !dbg !306
  %27 = call %struct.tm* @localtime(i32* %t) #6, !dbg !307
  store %struct.tm* %27, %struct.tm** %stm, align 4, !dbg !307
  br label %28

; <label>:28                                      ; preds = %24, %18
  %29 = load %struct.tm** %stm, align 4, !dbg !308
  %30 = icmp eq %struct.tm* %29, null, !dbg !308
  br i1 %30, label %31, label %34, !dbg !308

; <label>:31                                      ; preds = %28
  %32 = load %struct.lua_State** %1, align 4, !dbg !310
  %33 = call i32 (%struct.lua_State*, i8*, ...)* @luaL_error(%struct.lua_State* %32, i8* getelementptr inbounds ([55 x i8]* @.str19, i32 0, i32 0)), !dbg !310
  br label %34, !dbg !310

; <label>:34                                      ; preds = %31, %28
  %35 = load i8** %s, align 4, !dbg !311
  %36 = call i32 @strcmp(i8* %35, i8* getelementptr inbounds ([3 x i8]* @.str32, i32 0, i32 0)) #7, !dbg !311
  %37 = icmp eq i32 %36, 0, !dbg !311
  br i1 %37, label %38, label %42, !dbg !311

; <label>:38                                      ; preds = %34
  %39 = load %struct.lua_State** %1, align 4, !dbg !313
  call void @lua_createtable(%struct.lua_State* %39, i32 0, i32 9), !dbg !313
  %40 = load %struct.lua_State** %1, align 4, !dbg !315
  %41 = load %struct.tm** %stm, align 4, !dbg !315
  call void @setallfields(%struct.lua_State* %40, %struct.tm* %41), !dbg !315
  br label %93, !dbg !316

; <label>:42                                      ; preds = %34
  call void @llvm.dbg.declare(metadata !{[4 x i8]* %cc}, metadata !317), !dbg !322
  call void @llvm.dbg.declare(metadata !{%struct.luaL_Buffer* %b}, metadata !323), !dbg !338
  %43 = getelementptr inbounds [4 x i8]* %cc, i32 0, i32 0, !dbg !339
  store i8 37, i8* %43, align 1, !dbg !339
  %44 = load %struct.lua_State** %1, align 4, !dbg !340
  call void @luaL_buffinit(%struct.lua_State* %44, %struct.luaL_Buffer* %b), !dbg !340
  br label %45, !dbg !341

; <label>:45                                      ; preds = %91, %42
  %46 = load i8** %s, align 4, !dbg !342
  %47 = load i8* %46, align 1, !dbg !342
  %48 = icmp ne i8 %47, 0, !dbg !342
  br i1 %48, label %49, label %92, !dbg !342

; <label>:49                                      ; preds = %45
  %50 = load i8** %s, align 4, !dbg !344
  %51 = load i8* %50, align 1, !dbg !344
  %52 = zext i8 %51 to i32, !dbg !344
  %53 = icmp ne i32 %52, 37, !dbg !344
  br i1 %53, label %54, label %75, !dbg !344

; <label>:54                                      ; preds = %49
  %55 = getelementptr inbounds %struct.luaL_Buffer* %b, i32 0, i32 2, !dbg !347
  %56 = load i32* %55, align 4, !dbg !347
  %57 = getelementptr inbounds %struct.luaL_Buffer* %b, i32 0, i32 1, !dbg !347
  %58 = load i32* %57, align 4, !dbg !347
  %59 = icmp ult i32 %56, %58, !dbg !347
  br i1 %59, label %63, label %60, !dbg !347

; <label>:60                                      ; preds = %54
  %61 = call i8* @luaL_prepbuffsize(%struct.luaL_Buffer* %b, i32 1), !dbg !348
  %62 = icmp ne i8* %61, null, !dbg !348
  br label %63, !dbg !348

; <label>:63                                      ; preds = %60, %54
  %64 = phi i1 [ true, %54 ], [ %62, %60 ]
  %65 = zext i1 %64 to i32, !dbg !350
  %66 = load i8** %s, align 4, !dbg !350
  %67 = getelementptr inbounds i8* %66, i32 1, !dbg !350
  store i8* %67, i8** %s, align 4, !dbg !350
  %68 = load i8* %66, align 1, !dbg !350
  %69 = getelementptr inbounds %struct.luaL_Buffer* %b, i32 0, i32 2, !dbg !350
  %70 = load i32* %69, align 4, !dbg !350
  %71 = add i32 %70, 1, !dbg !350
  store i32 %71, i32* %69, align 4, !dbg !350
  %72 = getelementptr inbounds %struct.luaL_Buffer* %b, i32 0, i32 0, !dbg !350
  %73 = load i8** %72, align 4, !dbg !350
  %74 = getelementptr inbounds i8* %73, i32 %70, !dbg !350
  store i8 %68, i8* %74, align 1, !dbg !350
  br label %91, !dbg !350

; <label>:75                                      ; preds = %49
  call void @llvm.dbg.declare(metadata !{i32* %reslen}, metadata !353), !dbg !355
  call void @llvm.dbg.declare(metadata !{i8** %buff}, metadata !356), !dbg !357
  %76 = call i8* @luaL_prepbuffsize(%struct.luaL_Buffer* %b, i32 250), !dbg !358
  store i8* %76, i8** %buff, align 4, !dbg !358
  %77 = load %struct.lua_State** %1, align 4, !dbg !359
  %78 = load i8** %s, align 4, !dbg !359
  %79 = getelementptr inbounds i8* %78, i32 1, !dbg !359
  %80 = getelementptr inbounds [4 x i8]* %cc, i32 0, i32 0, !dbg !359
  %81 = getelementptr inbounds i8* %80, i32 1, !dbg !359
  %82 = call i8* @checkoption(%struct.lua_State* %77, i8* %79, i8* %81), !dbg !359
  store i8* %82, i8** %s, align 4, !dbg !359
  %83 = load i8** %buff, align 4, !dbg !360
  %84 = getelementptr inbounds [4 x i8]* %cc, i32 0, i32 0, !dbg !360
  %85 = load %struct.tm** %stm, align 4, !dbg !360
  %86 = call i32 @strftime(i8* %83, i32 250, i8* %84, %struct.tm* %85) #6, !dbg !360
  store i32 %86, i32* %reslen, align 4, !dbg !360
  %87 = load i32* %reslen, align 4, !dbg !361
  %88 = getelementptr inbounds %struct.luaL_Buffer* %b, i32 0, i32 2, !dbg !361
  %89 = load i32* %88, align 4, !dbg !361
  %90 = add i32 %89, %87, !dbg !361
  store i32 %90, i32* %88, align 4, !dbg !361
  br label %91

; <label>:91                                      ; preds = %75, %63
  br label %45, !dbg !362

; <label>:92                                      ; preds = %45
  call void @luaL_pushresult(%struct.luaL_Buffer* %b), !dbg !363
  br label %93

; <label>:93                                      ; preds = %92, %38
  ret i32 1, !dbg !364
}

; Function Attrs: nounwind
define internal i32 @os_difftime(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %t1 = alloca i32, align 4
  %t2 = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !365), !dbg !366
  call void @llvm.dbg.declare(metadata !{i32* %t1}, metadata !367), !dbg !368
  %2 = load %struct.lua_State** %1, align 4, !dbg !369
  %3 = call i32 @l_checktime(%struct.lua_State* %2, i32 1), !dbg !369
  store i32 %3, i32* %t1, align 4, !dbg !369
  call void @llvm.dbg.declare(metadata !{i32* %t2}, metadata !370), !dbg !371
  %4 = load %struct.lua_State** %1, align 4, !dbg !372
  %5 = call i32 @l_checktime(%struct.lua_State* %4, i32 2), !dbg !372
  store i32 %5, i32* %t2, align 4, !dbg !372
  %6 = load %struct.lua_State** %1, align 4, !dbg !373
  %7 = load i32* %t1, align 4, !dbg !374
  %8 = load i32* %t2, align 4, !dbg !374
  %9 = call double @difftime(i32 %7, i32 %8) #1, !dbg !374
  call void @lua_pushnumber(%struct.lua_State* %6, double %9), !dbg !373
  ret i32 1, !dbg !375
}

; Function Attrs: nounwind
define internal i32 @os_execute(%struct.lua_State* %L) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.lua_State*, align 4
  %cmd = alloca i8*, align 4
  %stat = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %2}, metadata !376), !dbg !377
  call void @llvm.dbg.declare(metadata !{i8** %cmd}, metadata !378), !dbg !379
  %3 = load %struct.lua_State** %2, align 4, !dbg !380
  %4 = call i8* @luaL_optlstring(%struct.lua_State* %3, i32 1, i8* null, i32* null), !dbg !380
  store i8* %4, i8** %cmd, align 4, !dbg !380
  call void @llvm.dbg.declare(metadata !{i32* %stat}, metadata !381), !dbg !382
  %5 = load i8** %cmd, align 4, !dbg !383
  %6 = call i32 @system(i8* %5), !dbg !383
  store i32 %6, i32* %stat, align 4, !dbg !383
  %7 = load i8** %cmd, align 4, !dbg !384
  %8 = icmp ne i8* %7, null, !dbg !384
  br i1 %8, label %9, label %13, !dbg !384

; <label>:9                                       ; preds = %0
  %10 = load %struct.lua_State** %2, align 4, !dbg !386
  %11 = load i32* %stat, align 4, !dbg !386
  %12 = call i32 @luaL_execresult(%struct.lua_State* %10, i32 %11), !dbg !386
  store i32 %12, i32* %1, !dbg !386
  br label %16, !dbg !386

; <label>:13                                      ; preds = %0
  %14 = load %struct.lua_State** %2, align 4, !dbg !387
  %15 = load i32* %stat, align 4, !dbg !387
  call void @lua_pushboolean(%struct.lua_State* %14, i32 %15), !dbg !387
  store i32 1, i32* %1, !dbg !389
  br label %16, !dbg !389

; <label>:16                                      ; preds = %13, %9
  %17 = load i32* %1, !dbg !390
  ret i32 %17, !dbg !390
}

; Function Attrs: nounwind
define internal i32 @os_exit(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %status = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !391), !dbg !392
  call void @llvm.dbg.declare(metadata !{i32* %status}, metadata !393), !dbg !394
  %2 = load %struct.lua_State** %1, align 4, !dbg !395
  %3 = call i32 @lua_type(%struct.lua_State* %2, i32 1), !dbg !395
  %4 = icmp eq i32 %3, 1, !dbg !395
  br i1 %4, label %5, label %10, !dbg !395

; <label>:5                                       ; preds = %0
  %6 = load %struct.lua_State** %1, align 4, !dbg !397
  %7 = call i32 @lua_toboolean(%struct.lua_State* %6, i32 1), !dbg !397
  %8 = icmp ne i32 %7, 0, !dbg !397
  %9 = select i1 %8, i32 0, i32 1, !dbg !397
  store i32 %9, i32* %status, align 4, !dbg !397
  br label %14, !dbg !397

; <label>:10                                      ; preds = %0
  %11 = load %struct.lua_State** %1, align 4, !dbg !398
  %12 = call i64 @luaL_optinteger(%struct.lua_State* %11, i32 1, i64 0), !dbg !398
  %13 = trunc i64 %12 to i32, !dbg !398
  store i32 %13, i32* %status, align 4, !dbg !398
  br label %14

; <label>:14                                      ; preds = %10, %5
  %15 = load %struct.lua_State** %1, align 4, !dbg !399
  %16 = call i32 @lua_toboolean(%struct.lua_State* %15, i32 2), !dbg !399
  %17 = icmp ne i32 %16, 0, !dbg !399
  br i1 %17, label %18, label %20, !dbg !399

; <label>:18                                      ; preds = %14
  %19 = load %struct.lua_State** %1, align 4, !dbg !401
  call void @lua_close(%struct.lua_State* %19), !dbg !401
  br label %20, !dbg !401

; <label>:20                                      ; preds = %18, %14
  %21 = load %struct.lua_State** %1, align 4, !dbg !402
  %22 = icmp ne %struct.lua_State* %21, null, !dbg !402
  br i1 %22, label %23, label %25, !dbg !402

; <label>:23                                      ; preds = %20
  %24 = load i32* %status, align 4, !dbg !404
  call void @exit(i32 %24) #8, !dbg !404
  unreachable, !dbg !404

; <label>:25                                      ; preds = %20
  ret i32 0, !dbg !406
}

; Function Attrs: nounwind
define internal i32 @os_getenv(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !407), !dbg !408
  %2 = load %struct.lua_State** %1, align 4, !dbg !409
  %3 = load %struct.lua_State** %1, align 4, !dbg !410
  %4 = call i8* @luaL_checklstring(%struct.lua_State* %3, i32 1, i32* null), !dbg !410
  %5 = call i8* @getenv(i8* %4) #6, !dbg !411
  %6 = call i8* @lua_pushstring(%struct.lua_State* %2, i8* %5), !dbg !409
  ret i32 1, !dbg !412
}

; Function Attrs: nounwind
define internal i32 @os_remove(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %filename = alloca i8*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !413), !dbg !414
  call void @llvm.dbg.declare(metadata !{i8** %filename}, metadata !415), !dbg !416
  %2 = load %struct.lua_State** %1, align 4, !dbg !417
  %3 = call i8* @luaL_checklstring(%struct.lua_State* %2, i32 1, i32* null), !dbg !417
  store i8* %3, i8** %filename, align 4, !dbg !417
  %4 = load %struct.lua_State** %1, align 4, !dbg !418
  %5 = load i8** %filename, align 4, !dbg !419
  %6 = call i32 @remove(i8* %5) #6, !dbg !419
  %7 = icmp eq i32 %6, 0, !dbg !419
  %8 = zext i1 %7 to i32, !dbg !419
  %9 = load i8** %filename, align 4, !dbg !418
  %10 = call i32 @luaL_fileresult(%struct.lua_State* %4, i32 %8, i8* %9), !dbg !418
  ret i32 %10, !dbg !418
}

; Function Attrs: nounwind
define internal i32 @os_rename(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %fromname = alloca i8*, align 4
  %toname = alloca i8*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !420), !dbg !421
  call void @llvm.dbg.declare(metadata !{i8** %fromname}, metadata !422), !dbg !423
  %2 = load %struct.lua_State** %1, align 4, !dbg !424
  %3 = call i8* @luaL_checklstring(%struct.lua_State* %2, i32 1, i32* null), !dbg !424
  store i8* %3, i8** %fromname, align 4, !dbg !424
  call void @llvm.dbg.declare(metadata !{i8** %toname}, metadata !425), !dbg !426
  %4 = load %struct.lua_State** %1, align 4, !dbg !427
  %5 = call i8* @luaL_checklstring(%struct.lua_State* %4, i32 2, i32* null), !dbg !427
  store i8* %5, i8** %toname, align 4, !dbg !427
  %6 = load %struct.lua_State** %1, align 4, !dbg !428
  %7 = load i8** %fromname, align 4, !dbg !429
  %8 = load i8** %toname, align 4, !dbg !429
  %9 = call i32 @rename(i8* %7, i8* %8) #6, !dbg !429
  %10 = icmp eq i32 %9, 0, !dbg !429
  %11 = zext i1 %10 to i32, !dbg !429
  %12 = call i32 @luaL_fileresult(%struct.lua_State* %6, i32 %11, i8* null), !dbg !428
  ret i32 %12, !dbg !428
}

; Function Attrs: nounwind
define internal i32 @os_setlocale(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %l = alloca i8*, align 4
  %op = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !430), !dbg !431
  call void @llvm.dbg.declare(metadata !{i8** %l}, metadata !432), !dbg !433
  %2 = load %struct.lua_State** %1, align 4, !dbg !434
  %3 = call i8* @luaL_optlstring(%struct.lua_State* %2, i32 1, i8* null, i32* null), !dbg !434
  store i8* %3, i8** %l, align 4, !dbg !434
  call void @llvm.dbg.declare(metadata !{i32* %op}, metadata !435), !dbg !436
  %4 = load %struct.lua_State** %1, align 4, !dbg !437
  %5 = call i32 @luaL_checkoption(%struct.lua_State* %4, i32 2, i8* getelementptr inbounds ([4 x i8]* @.str25, i32 0, i32 0), i8** getelementptr inbounds ([7 x i8*]* @os_setlocale.catnames, i32 0, i32 0)), !dbg !437
  store i32 %5, i32* %op, align 4, !dbg !437
  %6 = load %struct.lua_State** %1, align 4, !dbg !438
  %7 = load i32* %op, align 4, !dbg !439
  %8 = getelementptr inbounds [6 x i32]* @os_setlocale.cat, i32 0, i32 %7, !dbg !439
  %9 = load i32* %8, align 4, !dbg !439
  %10 = load i8** %l, align 4, !dbg !439
  %11 = call i8* @setlocale(i32 %9, i8* %10) #6, !dbg !439
  %12 = call i8* @lua_pushstring(%struct.lua_State* %6, i8* %11), !dbg !438
  ret i32 1, !dbg !440
}

; Function Attrs: nounwind
define internal i32 @os_time(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %t = alloca i32, align 4
  %ts = alloca %struct.tm, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !441), !dbg !442
  call void @llvm.dbg.declare(metadata !{i32* %t}, metadata !443), !dbg !444
  %2 = load %struct.lua_State** %1, align 4, !dbg !445
  %3 = call i32 @lua_type(%struct.lua_State* %2, i32 1), !dbg !445
  %4 = icmp sle i32 %3, 0, !dbg !445
  br i1 %4, label %5, label %7, !dbg !445

; <label>:5                                       ; preds = %0
  %6 = call i32 @time(i32* null) #6, !dbg !447
  store i32 %6, i32* %t, align 4, !dbg !447
  br label %33, !dbg !447

; <label>:7                                       ; preds = %0
  call void @llvm.dbg.declare(metadata !{%struct.tm* %ts}, metadata !448), !dbg !450
  %8 = load %struct.lua_State** %1, align 4, !dbg !451
  call void @luaL_checktype(%struct.lua_State* %8, i32 1, i32 5), !dbg !451
  %9 = load %struct.lua_State** %1, align 4, !dbg !452
  call void @lua_settop(%struct.lua_State* %9, i32 1), !dbg !452
  %10 = load %struct.lua_State** %1, align 4, !dbg !453
  %11 = call i32 @getfield(%struct.lua_State* %10, i8* getelementptr inbounds ([4 x i8]* @.str12, i32 0, i32 0), i32 0, i32 0), !dbg !453
  %12 = getelementptr inbounds %struct.tm* %ts, i32 0, i32 0, !dbg !453
  store i32 %11, i32* %12, align 4, !dbg !453
  %13 = load %struct.lua_State** %1, align 4, !dbg !454
  %14 = call i32 @getfield(%struct.lua_State* %13, i8* getelementptr inbounds ([4 x i8]* @.str13, i32 0, i32 0), i32 0, i32 0), !dbg !454
  %15 = getelementptr inbounds %struct.tm* %ts, i32 0, i32 1, !dbg !454
  store i32 %14, i32* %15, align 4, !dbg !454
  %16 = load %struct.lua_State** %1, align 4, !dbg !455
  %17 = call i32 @getfield(%struct.lua_State* %16, i8* getelementptr inbounds ([5 x i8]* @.str14, i32 0, i32 0), i32 12, i32 0), !dbg !455
  %18 = getelementptr inbounds %struct.tm* %ts, i32 0, i32 2, !dbg !455
  store i32 %17, i32* %18, align 4, !dbg !455
  %19 = load %struct.lua_State** %1, align 4, !dbg !456
  %20 = call i32 @getfield(%struct.lua_State* %19, i8* getelementptr inbounds ([4 x i8]* @.str15, i32 0, i32 0), i32 -1, i32 0), !dbg !456
  %21 = getelementptr inbounds %struct.tm* %ts, i32 0, i32 3, !dbg !456
  store i32 %20, i32* %21, align 4, !dbg !456
  %22 = load %struct.lua_State** %1, align 4, !dbg !457
  %23 = call i32 @getfield(%struct.lua_State* %22, i8* getelementptr inbounds ([6 x i8]* @.str16, i32 0, i32 0), i32 -1, i32 1), !dbg !457
  %24 = getelementptr inbounds %struct.tm* %ts, i32 0, i32 4, !dbg !457
  store i32 %23, i32* %24, align 4, !dbg !457
  %25 = load %struct.lua_State** %1, align 4, !dbg !458
  %26 = call i32 @getfield(%struct.lua_State* %25, i8* getelementptr inbounds ([5 x i8]* @.str17, i32 0, i32 0), i32 -1, i32 1900), !dbg !458
  %27 = getelementptr inbounds %struct.tm* %ts, i32 0, i32 5, !dbg !458
  store i32 %26, i32* %27, align 4, !dbg !458
  %28 = load %struct.lua_State** %1, align 4, !dbg !459
  %29 = call i32 @getboolfield(%struct.lua_State* %28, i8* getelementptr inbounds ([6 x i8]* @.str18, i32 0, i32 0)), !dbg !459
  %30 = getelementptr inbounds %struct.tm* %ts, i32 0, i32 8, !dbg !459
  store i32 %29, i32* %30, align 4, !dbg !459
  %31 = call i32 @mktime(%struct.tm* %ts) #6, !dbg !460
  store i32 %31, i32* %t, align 4, !dbg !460
  %32 = load %struct.lua_State** %1, align 4, !dbg !461
  call void @setallfields(%struct.lua_State* %32, %struct.tm* %ts), !dbg !461
  br label %33

; <label>:33                                      ; preds = %7, %5
  %34 = load i32* %t, align 4, !dbg !462
  %35 = load i32* %t, align 4, !dbg !462
  %36 = sext i32 %35 to i64, !dbg !462
  %37 = trunc i64 %36 to i32, !dbg !462
  %38 = icmp ne i32 %34, %37, !dbg !462
  br i1 %38, label %42, label %39, !dbg !462

; <label>:39                                      ; preds = %33
  %40 = load i32* %t, align 4, !dbg !464
  %41 = icmp eq i32 %40, -1, !dbg !464
  br i1 %41, label %42, label %45, !dbg !464

; <label>:42                                      ; preds = %39, %33
  %43 = load %struct.lua_State** %1, align 4, !dbg !466
  %44 = call i32 (%struct.lua_State*, i8*, ...)* @luaL_error(%struct.lua_State* %43, i8* getelementptr inbounds ([55 x i8]* @.str19, i32 0, i32 0)), !dbg !466
  br label %45, !dbg !466

; <label>:45                                      ; preds = %42, %39
  %46 = load %struct.lua_State** %1, align 4, !dbg !467
  %47 = load i32* %t, align 4, !dbg !467
  %48 = sext i32 %47 to i64, !dbg !467
  call void @lua_pushinteger(%struct.lua_State* %46, i64 %48), !dbg !467
  ret i32 1, !dbg !468
}

; Function Attrs: nounwind
define internal i32 @os_tmpname(%struct.lua_State* %L) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.lua_State*, align 4
  %buff = alloca [20 x i8], align 1
  %err = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %2}, metadata !469), !dbg !470
  call void @llvm.dbg.declare(metadata !{[20 x i8]* %buff}, metadata !471), !dbg !475
  call void @llvm.dbg.declare(metadata !{i32* %err}, metadata !476), !dbg !477
  %3 = getelementptr inbounds [20 x i8]* %buff, i32 0, i32 0, !dbg !478
  %4 = call i8* @tmpnam(i8* %3) #6, !dbg !478
  %5 = icmp eq i8* %4, null, !dbg !478
  %6 = zext i1 %5 to i32, !dbg !478
  store i32 %6, i32* %err, align 4, !dbg !478
  %7 = load i32* %err, align 4, !dbg !480
  %8 = icmp ne i32 %7, 0, !dbg !480
  br i1 %8, label %9, label %12, !dbg !480

; <label>:9                                       ; preds = %0
  %10 = load %struct.lua_State** %2, align 4, !dbg !482
  %11 = call i32 (%struct.lua_State*, i8*, ...)* @luaL_error(%struct.lua_State* %10, i8* getelementptr inbounds ([37 x i8]* @.str11, i32 0, i32 0)), !dbg !482
  store i32 %11, i32* %1, !dbg !482
  br label %16, !dbg !482

; <label>:12                                      ; preds = %0
  %13 = load %struct.lua_State** %2, align 4, !dbg !483
  %14 = getelementptr inbounds [20 x i8]* %buff, i32 0, i32 0, !dbg !483
  %15 = call i8* @lua_pushstring(%struct.lua_State* %13, i8* %14), !dbg !483
  store i32 1, i32* %1, !dbg !484
  br label %16, !dbg !484

; <label>:16                                      ; preds = %12, %9
  %17 = load i32* %1, !dbg !485
  ret i32 %17, !dbg !485
}

; Function Attrs: nounwind
declare i8* @tmpnam(i8*) #0

declare i32 @luaL_error(%struct.lua_State*, i8*, ...) #2

declare i8* @lua_pushstring(%struct.lua_State*, i8*) #2

declare i32 @lua_type(%struct.lua_State*, i32) #2

; Function Attrs: nounwind
declare i32 @time(i32*) #0

declare void @luaL_checktype(%struct.lua_State*, i32, i32) #2

declare void @lua_settop(%struct.lua_State*, i32) #2

; Function Attrs: nounwind
define internal i32 @getfield(%struct.lua_State* %L, i8* %key, i32 %d, i32 %delta) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.lua_State*, align 4
  %3 = alloca i8*, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %isnum = alloca i32, align 4
  %t = alloca i32, align 4
  %res = alloca i64, align 8
  store %struct.lua_State* %L, %struct.lua_State** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %2}, metadata !486), !dbg !487
  store i8* %key, i8** %3, align 4
  call void @llvm.dbg.declare(metadata !{i8** %3}, metadata !488), !dbg !489
  store i32 %d, i32* %4, align 4
  call void @llvm.dbg.declare(metadata !{i32* %4}, metadata !490), !dbg !491
  store i32 %delta, i32* %5, align 4
  call void @llvm.dbg.declare(metadata !{i32* %5}, metadata !492), !dbg !493
  call void @llvm.dbg.declare(metadata !{i32* %isnum}, metadata !494), !dbg !495
  call void @llvm.dbg.declare(metadata !{i32* %t}, metadata !496), !dbg !497
  %6 = load %struct.lua_State** %2, align 4, !dbg !498
  %7 = load i8** %3, align 4, !dbg !498
  %8 = call i32 @lua_getfield(%struct.lua_State* %6, i32 -1, i8* %7), !dbg !498
  store i32 %8, i32* %t, align 4, !dbg !498
  call void @llvm.dbg.declare(metadata !{i64* %res}, metadata !499), !dbg !502
  %9 = load %struct.lua_State** %2, align 4, !dbg !503
  %10 = call i64 @lua_tointegerx(%struct.lua_State* %9, i32 -1, i32* %isnum), !dbg !503
  store i64 %10, i64* %res, align 8, !dbg !503
  %11 = load i32* %isnum, align 4, !dbg !504
  %12 = icmp ne i32 %11, 0, !dbg !504
  br i1 %12, label %31, label %13, !dbg !504

; <label>:13                                      ; preds = %0
  %14 = load i32* %t, align 4, !dbg !506
  %15 = icmp ne i32 %14, 0, !dbg !506
  br i1 %15, label %16, label %20, !dbg !506

; <label>:16                                      ; preds = %13
  %17 = load %struct.lua_State** %2, align 4, !dbg !509
  %18 = load i8** %3, align 4, !dbg !509
  %19 = call i32 (%struct.lua_State*, i8*, ...)* @luaL_error(%struct.lua_State* %17, i8* getelementptr inbounds ([29 x i8]* @.str22, i32 0, i32 0), i8* %18), !dbg !509
  store i32 %19, i32* %1, !dbg !509
  br label %50, !dbg !509

; <label>:20                                      ; preds = %13
  %21 = load i32* %4, align 4, !dbg !510
  %22 = icmp slt i32 %21, 0, !dbg !510
  br i1 %22, label %23, label %27, !dbg !510

; <label>:23                                      ; preds = %20
  %24 = load %struct.lua_State** %2, align 4, !dbg !512
  %25 = load i8** %3, align 4, !dbg !512
  %26 = call i32 (%struct.lua_State*, i8*, ...)* @luaL_error(%struct.lua_State* %24, i8* getelementptr inbounds ([33 x i8]* @.str23, i32 0, i32 0), i8* %25), !dbg !512
  store i32 %26, i32* %1, !dbg !512
  br label %50, !dbg !512

; <label>:27                                      ; preds = %20
  br label %28

; <label>:28                                      ; preds = %27
  %29 = load i32* %4, align 4, !dbg !513
  %30 = sext i32 %29 to i64, !dbg !513
  store i64 %30, i64* %res, align 8, !dbg !513
  br label %46, !dbg !514

; <label>:31                                      ; preds = %0
  %32 = load i64* %res, align 8, !dbg !515
  %33 = icmp sle i64 -1073741823, %32, !dbg !515
  br i1 %33, label %34, label %37, !dbg !515

; <label>:34                                      ; preds = %31
  %35 = load i64* %res, align 8, !dbg !518
  %36 = icmp sle i64 %35, 1073741823, !dbg !518
  br i1 %36, label %41, label %37, !dbg !518

; <label>:37                                      ; preds = %34, %31
  %38 = load %struct.lua_State** %2, align 4, !dbg !520
  %39 = load i8** %3, align 4, !dbg !520
  %40 = call i32 (%struct.lua_State*, i8*, ...)* @luaL_error(%struct.lua_State* %38, i8* getelementptr inbounds ([27 x i8]* @.str24, i32 0, i32 0), i8* %39), !dbg !520
  store i32 %40, i32* %1, !dbg !520
  br label %50, !dbg !520

; <label>:41                                      ; preds = %34
  %42 = load i32* %5, align 4, !dbg !521
  %43 = sext i32 %42 to i64, !dbg !521
  %44 = load i64* %res, align 8, !dbg !521
  %45 = sub nsw i64 %44, %43, !dbg !521
  store i64 %45, i64* %res, align 8, !dbg !521
  br label %46

; <label>:46                                      ; preds = %41, %28
  %47 = load %struct.lua_State** %2, align 4, !dbg !522
  call void @lua_settop(%struct.lua_State* %47, i32 -2), !dbg !522
  %48 = load i64* %res, align 8, !dbg !523
  %49 = trunc i64 %48 to i32, !dbg !523
  store i32 %49, i32* %1, !dbg !523
  br label %50, !dbg !523

; <label>:50                                      ; preds = %46, %37, %23, %16
  %51 = load i32* %1, !dbg !524
  ret i32 %51, !dbg !524
}

; Function Attrs: nounwind
define internal i32 @getboolfield(%struct.lua_State* %L, i8* %key) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca i8*, align 4
  %res = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !525), !dbg !526
  store i8* %key, i8** %2, align 4
  call void @llvm.dbg.declare(metadata !{i8** %2}, metadata !527), !dbg !528
  call void @llvm.dbg.declare(metadata !{i32* %res}, metadata !529), !dbg !530
  %3 = load %struct.lua_State** %1, align 4, !dbg !531
  %4 = load i8** %2, align 4, !dbg !531
  %5 = call i32 @lua_getfield(%struct.lua_State* %3, i32 -1, i8* %4), !dbg !531
  %6 = icmp eq i32 %5, 0, !dbg !531
  br i1 %6, label %7, label %8, !dbg !531

; <label>:7                                       ; preds = %0
  br label %11, !dbg !532

; <label>:8                                       ; preds = %0
  %9 = load %struct.lua_State** %1, align 4, !dbg !534
  %10 = call i32 @lua_toboolean(%struct.lua_State* %9, i32 -1), !dbg !534
  br label %11, !dbg !534

; <label>:11                                      ; preds = %8, %7
  %12 = phi i32 [ -1, %7 ], [ %10, %8 ], !dbg !536
  store i32 %12, i32* %res, align 4, !dbg !537
  %13 = load %struct.lua_State** %1, align 4, !dbg !540
  call void @lua_settop(%struct.lua_State* %13, i32 -2), !dbg !540
  %14 = load i32* %res, align 4, !dbg !541
  ret i32 %14, !dbg !541
}

; Function Attrs: nounwind
declare i32 @mktime(%struct.tm*) #0

; Function Attrs: nounwind
define internal void @setallfields(%struct.lua_State* %L, %struct.tm* %stm) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca %struct.tm*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !542), !dbg !543
  store %struct.tm* %stm, %struct.tm** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.tm** %2}, metadata !544), !dbg !545
  %3 = load %struct.lua_State** %1, align 4, !dbg !546
  %4 = load %struct.tm** %2, align 4, !dbg !546
  %5 = getelementptr inbounds %struct.tm* %4, i32 0, i32 0, !dbg !546
  %6 = load i32* %5, align 4, !dbg !546
  call void @setfield(%struct.lua_State* %3, i8* getelementptr inbounds ([4 x i8]* @.str12, i32 0, i32 0), i32 %6), !dbg !546
  %7 = load %struct.lua_State** %1, align 4, !dbg !547
  %8 = load %struct.tm** %2, align 4, !dbg !547
  %9 = getelementptr inbounds %struct.tm* %8, i32 0, i32 1, !dbg !547
  %10 = load i32* %9, align 4, !dbg !547
  call void @setfield(%struct.lua_State* %7, i8* getelementptr inbounds ([4 x i8]* @.str13, i32 0, i32 0), i32 %10), !dbg !547
  %11 = load %struct.lua_State** %1, align 4, !dbg !548
  %12 = load %struct.tm** %2, align 4, !dbg !548
  %13 = getelementptr inbounds %struct.tm* %12, i32 0, i32 2, !dbg !548
  %14 = load i32* %13, align 4, !dbg !548
  call void @setfield(%struct.lua_State* %11, i8* getelementptr inbounds ([5 x i8]* @.str14, i32 0, i32 0), i32 %14), !dbg !548
  %15 = load %struct.lua_State** %1, align 4, !dbg !549
  %16 = load %struct.tm** %2, align 4, !dbg !549
  %17 = getelementptr inbounds %struct.tm* %16, i32 0, i32 3, !dbg !549
  %18 = load i32* %17, align 4, !dbg !549
  call void @setfield(%struct.lua_State* %15, i8* getelementptr inbounds ([4 x i8]* @.str15, i32 0, i32 0), i32 %18), !dbg !549
  %19 = load %struct.lua_State** %1, align 4, !dbg !550
  %20 = load %struct.tm** %2, align 4, !dbg !550
  %21 = getelementptr inbounds %struct.tm* %20, i32 0, i32 4, !dbg !550
  %22 = load i32* %21, align 4, !dbg !550
  %23 = add nsw i32 %22, 1, !dbg !550
  call void @setfield(%struct.lua_State* %19, i8* getelementptr inbounds ([6 x i8]* @.str16, i32 0, i32 0), i32 %23), !dbg !550
  %24 = load %struct.lua_State** %1, align 4, !dbg !551
  %25 = load %struct.tm** %2, align 4, !dbg !551
  %26 = getelementptr inbounds %struct.tm* %25, i32 0, i32 5, !dbg !551
  %27 = load i32* %26, align 4, !dbg !551
  %28 = add nsw i32 %27, 1900, !dbg !551
  call void @setfield(%struct.lua_State* %24, i8* getelementptr inbounds ([5 x i8]* @.str17, i32 0, i32 0), i32 %28), !dbg !551
  %29 = load %struct.lua_State** %1, align 4, !dbg !552
  %30 = load %struct.tm** %2, align 4, !dbg !552
  %31 = getelementptr inbounds %struct.tm* %30, i32 0, i32 6, !dbg !552
  %32 = load i32* %31, align 4, !dbg !552
  %33 = add nsw i32 %32, 1, !dbg !552
  call void @setfield(%struct.lua_State* %29, i8* getelementptr inbounds ([5 x i8]* @.str20, i32 0, i32 0), i32 %33), !dbg !552
  %34 = load %struct.lua_State** %1, align 4, !dbg !553
  %35 = load %struct.tm** %2, align 4, !dbg !553
  %36 = getelementptr inbounds %struct.tm* %35, i32 0, i32 7, !dbg !553
  %37 = load i32* %36, align 4, !dbg !553
  %38 = add nsw i32 %37, 1, !dbg !553
  call void @setfield(%struct.lua_State* %34, i8* getelementptr inbounds ([5 x i8]* @.str21, i32 0, i32 0), i32 %38), !dbg !553
  %39 = load %struct.lua_State** %1, align 4, !dbg !554
  %40 = load %struct.tm** %2, align 4, !dbg !554
  %41 = getelementptr inbounds %struct.tm* %40, i32 0, i32 8, !dbg !554
  %42 = load i32* %41, align 4, !dbg !554
  call void @setboolfield(%struct.lua_State* %39, i8* getelementptr inbounds ([6 x i8]* @.str18, i32 0, i32 0), i32 %42), !dbg !554
  ret void, !dbg !555
}

declare void @lua_pushinteger(%struct.lua_State*, i64) #2

; Function Attrs: nounwind
define internal void @setfield(%struct.lua_State* %L, i8* %key, i32 %value) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca i8*, align 4
  %3 = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !556), !dbg !557
  store i8* %key, i8** %2, align 4
  call void @llvm.dbg.declare(metadata !{i8** %2}, metadata !558), !dbg !559
  store i32 %value, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !560), !dbg !561
  %4 = load %struct.lua_State** %1, align 4, !dbg !562
  %5 = load i32* %3, align 4, !dbg !562
  %6 = sext i32 %5 to i64, !dbg !562
  call void @lua_pushinteger(%struct.lua_State* %4, i64 %6), !dbg !562
  %7 = load %struct.lua_State** %1, align 4, !dbg !563
  %8 = load i8** %2, align 4, !dbg !563
  call void @lua_setfield(%struct.lua_State* %7, i32 -2, i8* %8), !dbg !563
  ret void, !dbg !564
}

; Function Attrs: nounwind
define internal void @setboolfield(%struct.lua_State* %L, i8* %key, i32 %value) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca i8*, align 4
  %3 = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !565), !dbg !566
  store i8* %key, i8** %2, align 4
  call void @llvm.dbg.declare(metadata !{i8** %2}, metadata !567), !dbg !568
  store i32 %value, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !569), !dbg !570
  %4 = load i32* %3, align 4, !dbg !571
  %5 = icmp slt i32 %4, 0, !dbg !571
  br i1 %5, label %6, label %7, !dbg !571

; <label>:6                                       ; preds = %0
  br label %12, !dbg !573

; <label>:7                                       ; preds = %0
  %8 = load %struct.lua_State** %1, align 4, !dbg !574
  %9 = load i32* %3, align 4, !dbg !574
  call void @lua_pushboolean(%struct.lua_State* %8, i32 %9), !dbg !574
  %10 = load %struct.lua_State** %1, align 4, !dbg !575
  %11 = load i8** %2, align 4, !dbg !575
  call void @lua_setfield(%struct.lua_State* %10, i32 -2, i8* %11), !dbg !575
  br label %12, !dbg !576

; <label>:12                                      ; preds = %7, %6
  ret void, !dbg !577
}

declare void @lua_pushboolean(%struct.lua_State*, i32) #2

declare void @lua_setfield(%struct.lua_State*, i32, i8*) #2

declare i32 @lua_getfield(%struct.lua_State*, i32, i8*) #2

declare i32 @lua_toboolean(%struct.lua_State*, i32) #2

declare i64 @lua_tointegerx(%struct.lua_State*, i32, i32*) #2

declare i8* @luaL_optlstring(%struct.lua_State*, i32, i8*, i32*) #2

declare i32 @luaL_checkoption(%struct.lua_State*, i32, i8*, i8**) #2

; Function Attrs: nounwind
declare i8* @setlocale(i32, i8*) #0

declare i8* @luaL_checklstring(%struct.lua_State*, i32, i32*) #2

declare i32 @luaL_fileresult(%struct.lua_State*, i32, i8*) #2

; Function Attrs: nounwind
declare i32 @rename(i8*, i8*) #0

; Function Attrs: nounwind
declare i32 @remove(i8*) #0

; Function Attrs: nounwind
declare i8* @getenv(i8*) #0

declare i64 @luaL_optinteger(%struct.lua_State*, i32, i64) #2

declare void @lua_close(%struct.lua_State*) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

declare i32 @system(i8*) #2

declare i32 @luaL_execresult(%struct.lua_State*, i32) #2

; Function Attrs: nounwind
define internal i32 @l_checktime(%struct.lua_State* %L, i32 %arg) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca i32, align 4
  %t = alloca i64, align 8
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !579), !dbg !580
  store i32 %arg, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !581), !dbg !582
  call void @llvm.dbg.declare(metadata !{i64* %t}, metadata !583), !dbg !584
  %3 = load %struct.lua_State** %1, align 4, !dbg !585
  %4 = load i32* %2, align 4, !dbg !585
  %5 = call i64 @luaL_checkinteger(%struct.lua_State* %3, i32 %4), !dbg !585
  store i64 %5, i64* %t, align 8, !dbg !585
  %6 = load i64* %t, align 8, !dbg !586
  %7 = trunc i64 %6 to i32, !dbg !586
  %8 = sext i32 %7 to i64, !dbg !586
  %9 = load i64* %t, align 8, !dbg !586
  %10 = icmp eq i64 %8, %9, !dbg !586
  br i1 %10, label %16, label %11, !dbg !586

; <label>:11                                      ; preds = %0
  %12 = load %struct.lua_State** %1, align 4, !dbg !587
  %13 = load i32* %2, align 4, !dbg !587
  %14 = call i32 @luaL_argerror(%struct.lua_State* %12, i32 %13, i8* getelementptr inbounds ([19 x i8]* @.str30, i32 0, i32 0)), !dbg !587
  %15 = icmp ne i32 %14, 0, !dbg !587
  br label %16, !dbg !587

; <label>:16                                      ; preds = %11, %0
  %17 = phi i1 [ true, %0 ], [ %15, %11 ]
  %18 = zext i1 %17 to i32, !dbg !589
  %19 = load i64* %t, align 8, !dbg !592
  %20 = trunc i64 %19 to i32, !dbg !592
  ret i32 %20, !dbg !592
}

declare void @lua_pushnumber(%struct.lua_State*, double) #2

; Function Attrs: nounwind readnone
declare double @difftime(i32, i32) #4

declare i64 @luaL_checkinteger(%struct.lua_State*, i32) #2

declare i32 @luaL_argerror(%struct.lua_State*, i32, i8*) #2

; Function Attrs: nounwind
declare %struct.tm* @gmtime(i32*) #0

; Function Attrs: nounwind
declare %struct.tm* @localtime(i32*) #0

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #5

declare void @luaL_buffinit(%struct.lua_State*, %struct.luaL_Buffer*) #2

declare i8* @luaL_prepbuffsize(%struct.luaL_Buffer*, i32) #2

; Function Attrs: nounwind
define internal i8* @checkoption(%struct.lua_State* %L, i8* %conv, i8* %buff) #0 {
  %1 = alloca i8*, align 4
  %2 = alloca %struct.lua_State*, align 4
  %3 = alloca i8*, align 4
  %4 = alloca i8*, align 4
  %option = alloca i8*, align 4
  %oplen = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %2}, metadata !593), !dbg !594
  store i8* %conv, i8** %3, align 4
  call void @llvm.dbg.declare(metadata !{i8** %3}, metadata !595), !dbg !596
  store i8* %buff, i8** %4, align 4
  call void @llvm.dbg.declare(metadata !{i8** %4}, metadata !597), !dbg !598
  call void @llvm.dbg.declare(metadata !{i8** %option}, metadata !599), !dbg !600
  call void @llvm.dbg.declare(metadata !{i32* %oplen}, metadata !601), !dbg !602
  store i32 1, i32* %oplen, align 4, !dbg !603
  store i8* getelementptr inbounds ([78 x i8]* @.str33, i32 0, i32 0), i8** %option, align 4, !dbg !604
  br label %5, !dbg !604

; <label>:5                                       ; preds = %36, %0
  %6 = load i8** %option, align 4, !dbg !606
  %7 = load i8* %6, align 1, !dbg !606
  %8 = zext i8 %7 to i32, !dbg !606
  %9 = icmp ne i32 %8, 0, !dbg !606
  br i1 %9, label %10, label %40, !dbg !606

; <label>:10                                      ; preds = %5
  %11 = load i8** %option, align 4, !dbg !609
  %12 = load i8* %11, align 1, !dbg !609
  %13 = zext i8 %12 to i32, !dbg !609
  %14 = icmp eq i32 %13, 124, !dbg !609
  br i1 %14, label %15, label %18, !dbg !609

; <label>:15                                      ; preds = %10
  %16 = load i32* %oplen, align 4, !dbg !612
  %17 = add nsw i32 %16, 1, !dbg !612
  store i32 %17, i32* %oplen, align 4, !dbg !612
  br label %35, !dbg !612

; <label>:18                                      ; preds = %10
  %19 = load i8** %3, align 4, !dbg !613
  %20 = load i8** %option, align 4, !dbg !613
  %21 = load i32* %oplen, align 4, !dbg !613
  %22 = call i32 @memcmp(i8* %19, i8* %20, i32 %21) #7, !dbg !613
  %23 = icmp eq i32 %22, 0, !dbg !613
  br i1 %23, label %24, label %34, !dbg !613

; <label>:24                                      ; preds = %18
  %25 = load i8** %4, align 4, !dbg !615
  %26 = load i8** %3, align 4, !dbg !615
  %27 = load i32* %oplen, align 4, !dbg !615
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %25, i8* %26, i32 %27, i32 1, i1 false), !dbg !615
  %28 = load i32* %oplen, align 4, !dbg !617
  %29 = load i8** %4, align 4, !dbg !617
  %30 = getelementptr inbounds i8* %29, i32 %28, !dbg !617
  store i8 0, i8* %30, align 1, !dbg !617
  %31 = load i8** %3, align 4, !dbg !618
  %32 = load i32* %oplen, align 4, !dbg !618
  %33 = getelementptr inbounds i8* %31, i32 %32, !dbg !618
  store i8* %33, i8** %1, !dbg !618
  br label %47, !dbg !618

; <label>:34                                      ; preds = %18
  br label %35

; <label>:35                                      ; preds = %34, %15
  br label %36, !dbg !619

; <label>:36                                      ; preds = %35
  %37 = load i32* %oplen, align 4, !dbg !620
  %38 = load i8** %option, align 4, !dbg !620
  %39 = getelementptr inbounds i8* %38, i32 %37, !dbg !620
  store i8* %39, i8** %option, align 4, !dbg !620
  br label %5, !dbg !620

; <label>:40                                      ; preds = %5
  %41 = load %struct.lua_State** %2, align 4, !dbg !621
  %42 = load %struct.lua_State** %2, align 4, !dbg !622
  %43 = load i8** %3, align 4, !dbg !622
  %44 = call i8* (%struct.lua_State*, i8*, ...)* @lua_pushfstring(%struct.lua_State* %42, i8* getelementptr inbounds ([36 x i8]* @.str34, i32 0, i32 0), i8* %43), !dbg !622
  %45 = call i32 @luaL_argerror(%struct.lua_State* %41, i32 1, i8* %44), !dbg !621
  %46 = load i8** %3, align 4, !dbg !623
  store i8* %46, i8** %1, !dbg !623
  br label %47, !dbg !623

; <label>:47                                      ; preds = %40, %24
  %48 = load i8** %1, !dbg !624
  ret i8* %48, !dbg !624
}

; Function Attrs: nounwind
declare i32 @strftime(i8*, i32, i8*, %struct.tm*) #0

declare void @luaL_pushresult(%struct.luaL_Buffer*) #2

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i32) #5

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture, i8* nocapture readonly, i32, i32, i1) #6

declare i8* @lua_pushfstring(%struct.lua_State*, i8*, ...) #2

; Function Attrs: nounwind
declare i32 @clock() #0

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly }
attributes #8 = { noreturn nounwind }

!llvm.dbg.cu = !{!0}
!xidane.fname = !{!91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216}
!xidane.function_declaration_type = !{!91, !217, !93, !218, !95, !219, !97, !220, !99, !217, !101, !217, !103, !217, !105, !217, !107, !217, !109, !217, !111, !217, !113, !217, !115, !217, !117, !217, !119, !217, !121, !221, !123, !222, !125, !223, !127, !224, !129, !225, !131, !219, !133, !226, !135, !227, !137, !222, !139, !228, !141, !229, !143, !230, !145, !231, !147, !231, !149, !226, !151, !232, !153, !233, !155, !224, !157, !234, !159, !235, !161, !236, !163, !237, !165, !238, !167, !233, !169, !239, !171, !240, !173, !241, !175, !242, !177, !243, !179, !244, !181, !240, !183, !224, !185, !245, !187, !246, !189, !247, !191, !248, !193, !233, !195, !249, !197, !249, !199, !239, !201, !250, !203, !251, !205, !252, !207, !253, !209, !254, !211, !255, !213, !223, !215, !256}
!xidane.function_declaration_filename = !{!91, !257, !93, !258, !95, !259, !97, !258, !99, !260, !101, !260, !103, !260, !105, !260, !107, !260, !109, !260, !111, !260, !113, !260, !115, !260, !117, !260, !119, !260, !121, !261, !123, !258, !125, !259, !127, !259, !129, !262, !131, !258, !133, !259, !135, !260, !137, !260, !139, !262, !141, !260, !143, !259, !145, !260, !147, !260, !149, !259, !151, !259, !153, !259, !155, !259, !157, !259, !159, !258, !161, !258, !163, !263, !165, !258, !167, !258, !169, !261, !171, !261, !173, !264, !175, !258, !177, !259, !179, !264, !181, !264, !183, !258, !185, !260, !187, !259, !189, !262, !191, !258, !193, !258, !195, !262, !197, !262, !199, !265, !201, !258, !203, !258, !205, !260, !207, !262, !209, !258, !211, !265, !213, !259, !215, !262}
!xidane.ExternC = !{!91, !93, !95, !97, !121, !123, !125, !127, !129, !131, !133, !139, !143, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !187, !189, !191, !193, !195, !197, !199, !201, !203, !207, !209, !211, !213, !215}
!llvm.module.flags = !{!266, !267, !268, !269}
!llvm.ident = !{!270}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.0 (tags/RELEASE_350/final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !67, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src\loslib.c] [DW_LANG_C99]
!1 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src\5Closlib.c", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!2 = metadata !{}
!3 = metadata !{metadata !4, metadata !14, metadata !15, metadata !16, metadata !38, metadata !41, metadata !42, metadata !45, metadata !48, metadata !49, metadata !50, metadata !51, metadata !52, metadata !53, metadata !54, metadata !55, metadata !61, metadata !62, metadata !66}
!4 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"luaopen_os", metadata !"luaopen_os", metadata !"", i32 399, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @luaopen_os, null, null, metadata !2, i32 399} ; [ DW_TAG_subprogram ] [line 399] [def] [luaopen_os]
!5 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/loslib.c", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!6 = metadata !{i32 786473, metadata !5}          ; [ DW_TAG_file_type ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/loslib.c]
!7 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!8 = metadata !{metadata !9, metadata !10}
!9 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!10 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !11} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from lua_State]
!11 = metadata !{i32 786454, metadata !12, null, metadata !"lua_State", i32 56, i64 0, i64 0, i64 0, i32 0, metadata !13} ; [ DW_TAG_typedef ] [lua_State] [line 56, size 0, align 0, offset 0] [from lua_State]
!12 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lua.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!13 = metadata !{i32 786451, metadata !12, null, metadata !"lua_State", i32 56, i64 0, i64 0, i32 0, i32 4, null, null, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [lua_State] [line 56, size 0, align 0, offset 0] [decl] [from ]
!14 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"os_tmpname", metadata !"os_tmpname", metadata !"", i32 166, metadata !7, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @os_tmpname, null, null, metadata !2, i32 166} ; [ DW_TAG_subprogram ] [line 166] [local] [def] [os_tmpname]
!15 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"os_time", metadata !"os_time", metadata !"", i32 320, metadata !7, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @os_time, null, null, metadata !2, i32 320} ; [ DW_TAG_subprogram ] [line 320] [local] [def] [os_time]
!16 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"setallfields", metadata !"setallfields", metadata !"", i32 213, metadata !17, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.lua_State*, %struct.tm*)* @setallfields, null, null, metadata !2, i32 213} ; [ DW_TAG_subprogram ] [line 213] [local] [def] [setallfields]
!17 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !18, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!18 = metadata !{null, metadata !10, metadata !19}
!19 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !20} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from tm]
!20 = metadata !{i32 786451, metadata !21, null, metadata !"tm", i32 133, i64 352, i64 32, i32 0, i32 0, null, metadata !22, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [tm] [line 133, size 352, align 32, offset 0] [def] [from ]
!21 = metadata !{metadata !"D:/Xilinx/SDx/2016.3/SDK/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include\5Ctime.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!22 = metadata !{metadata !23, metadata !24, metadata !25, metadata !26, metadata !27, metadata !28, metadata !29, metadata !30, metadata !31, metadata !32, metadata !34}
!23 = metadata !{i32 786445, metadata !21, metadata !20, metadata !"tm_sec", i32 135, i64 32, i64 32, i64 0, i32 0, metadata !9} ; [ DW_TAG_member ] [tm_sec] [line 135, size 32, align 32, offset 0] [from int]
!24 = metadata !{i32 786445, metadata !21, metadata !20, metadata !"tm_min", i32 136, i64 32, i64 32, i64 32, i32 0, metadata !9} ; [ DW_TAG_member ] [tm_min] [line 136, size 32, align 32, offset 32] [from int]
!25 = metadata !{i32 786445, metadata !21, metadata !20, metadata !"tm_hour", i32 137, i64 32, i64 32, i64 64, i32 0, metadata !9} ; [ DW_TAG_member ] [tm_hour] [line 137, size 32, align 32, offset 64] [from int]
!26 = metadata !{i32 786445, metadata !21, metadata !20, metadata !"tm_mday", i32 138, i64 32, i64 32, i64 96, i32 0, metadata !9} ; [ DW_TAG_member ] [tm_mday] [line 138, size 32, align 32, offset 96] [from int]
!27 = metadata !{i32 786445, metadata !21, metadata !20, metadata !"tm_mon", i32 139, i64 32, i64 32, i64 128, i32 0, metadata !9} ; [ DW_TAG_member ] [tm_mon] [line 139, size 32, align 32, offset 128] [from int]
!28 = metadata !{i32 786445, metadata !21, metadata !20, metadata !"tm_year", i32 140, i64 32, i64 32, i64 160, i32 0, metadata !9} ; [ DW_TAG_member ] [tm_year] [line 140, size 32, align 32, offset 160] [from int]
!29 = metadata !{i32 786445, metadata !21, metadata !20, metadata !"tm_wday", i32 141, i64 32, i64 32, i64 192, i32 0, metadata !9} ; [ DW_TAG_member ] [tm_wday] [line 141, size 32, align 32, offset 192] [from int]
!30 = metadata !{i32 786445, metadata !21, metadata !20, metadata !"tm_yday", i32 142, i64 32, i64 32, i64 224, i32 0, metadata !9} ; [ DW_TAG_member ] [tm_yday] [line 142, size 32, align 32, offset 224] [from int]
!31 = metadata !{i32 786445, metadata !21, metadata !20, metadata !"tm_isdst", i32 143, i64 32, i64 32, i64 256, i32 0, metadata !9} ; [ DW_TAG_member ] [tm_isdst] [line 143, size 32, align 32, offset 256] [from int]
!32 = metadata !{i32 786445, metadata !21, metadata !20, metadata !"__tm_gmtoff", i32 149, i64 32, i64 32, i64 288, i32 0, metadata !33} ; [ DW_TAG_member ] [__tm_gmtoff] [line 149, size 32, align 32, offset 288] [from long int]
!33 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!34 = metadata !{i32 786445, metadata !21, metadata !20, metadata !"__tm_zone", i32 150, i64 32, i64 32, i64 320, i32 0, metadata !35} ; [ DW_TAG_member ] [__tm_zone] [line 150, size 32, align 32, offset 320] [from ]
!35 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !36} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!36 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !37} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!37 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!38 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"setboolfield", metadata !"setboolfield", metadata !"", i32 202, metadata !39, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.lua_State*, i8*, i32)* @setboolfield, null, null, metadata !2, i32 202} ; [ DW_TAG_subprogram ] [line 202] [local] [def] [setboolfield]
!39 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !40, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!40 = metadata !{null, metadata !10, metadata !35, metadata !9}
!41 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"setfield", metadata !"setfield", metadata !"", i32 197, metadata !39, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.lua_State*, i8*, i32)* @setfield, null, null, metadata !2, i32 197} ; [ DW_TAG_subprogram ] [line 197] [local] [def] [setfield]
!42 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"getboolfield", metadata !"getboolfield", metadata !"", i32 226, metadata !43, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*, i8*)* @getboolfield, null, null, metadata !2, i32 226} ; [ DW_TAG_subprogram ] [line 226] [local] [def] [getboolfield]
!43 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !44, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!44 = metadata !{metadata !9, metadata !10, metadata !35}
!45 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"getfield", metadata !"getfield", metadata !"", i32 239, metadata !46, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*, i8*, i32, i32)* @getfield, null, null, metadata !2, i32 239} ; [ DW_TAG_subprogram ] [line 239] [local] [def] [getfield]
!46 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !47, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!47 = metadata !{metadata !9, metadata !10, metadata !35, metadata !9, metadata !9}
!48 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"os_setlocale", metadata !"os_setlocale", metadata !"", i32 355, metadata !7, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @os_setlocale, null, null, metadata !2, i32 355} ; [ DW_TAG_subprogram ] [line 355] [local] [def] [os_setlocale]
!49 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"os_rename", metadata !"os_rename", metadata !"", i32 159, metadata !7, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @os_rename, null, null, metadata !2, i32 159} ; [ DW_TAG_subprogram ] [line 159] [local] [def] [os_rename]
!50 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"os_remove", metadata !"os_remove", metadata !"", i32 153, metadata !7, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @os_remove, null, null, metadata !2, i32 153} ; [ DW_TAG_subprogram ] [line 153] [local] [def] [os_remove]
!51 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"os_getenv", metadata !"os_getenv", metadata !"", i32 177, metadata !7, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @os_getenv, null, null, metadata !2, i32 177} ; [ DW_TAG_subprogram ] [line 177] [local] [def] [os_getenv]
!52 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"os_exit", metadata !"os_exit", metadata !"", i32 367, metadata !7, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @os_exit, null, null, metadata !2, i32 367} ; [ DW_TAG_subprogram ] [line 367] [local] [def] [os_exit]
!53 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"os_execute", metadata !"os_execute", metadata !"", i32 141, metadata !7, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @os_execute, null, null, metadata !2, i32 141} ; [ DW_TAG_subprogram ] [line 141] [local] [def] [os_execute]
!54 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"os_difftime", metadata !"os_difftime", metadata !"", i32 345, metadata !7, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @os_difftime, null, null, metadata !2, i32 345} ; [ DW_TAG_subprogram ] [line 345] [local] [def] [os_difftime]
!55 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"l_checktime", metadata !"l_checktime", metadata !"", i32 69, metadata !56, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*, i32)* @l_checktime, null, null, metadata !2, i32 69} ; [ DW_TAG_subprogram ] [line 69] [local] [def] [l_checktime]
!56 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !57, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!57 = metadata !{metadata !58, metadata !10, metadata !9}
!58 = metadata !{i32 786454, metadata !21, null, metadata !"time_t", i32 75, i64 0, i64 0, i64 0, i32 0, metadata !59} ; [ DW_TAG_typedef ] [time_t] [line 75, size 0, align 0, offset 0] [from __time_t]
!59 = metadata !{i32 786454, metadata !60, null, metadata !"__time_t", i32 139, i64 0, i64 0, i64 0, i32 0, metadata !33} ; [ DW_TAG_typedef ] [__time_t] [line 139, size 0, align 0, offset 0] [from long int]
!60 = metadata !{metadata !"D:/Xilinx/SDx/2016.3/SDK/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include\5Cbits/types.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!61 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"os_date", metadata !"os_date", metadata !"", i32 282, metadata !7, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @os_date, null, null, metadata !2, i32 282} ; [ DW_TAG_subprogram ] [line 282] [local] [def] [os_date]
!62 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"checkoption", metadata !"checkoption", metadata !"", i32 260, metadata !63, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (%struct.lua_State*, i8*, i8*)* @checkoption, null, null, metadata !2, i32 260} ; [ DW_TAG_subprogram ] [line 260] [local] [def] [checkoption]
!63 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !64, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!64 = metadata !{metadata !35, metadata !10, metadata !35, metadata !65}
!65 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !37} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from char]
!66 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"os_clock", metadata !"os_clock", metadata !"", i32 183, metadata !7, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @os_clock, null, null, metadata !2, i32 183} ; [ DW_TAG_subprogram ] [line 183] [local] [def] [os_clock]
!67 = metadata !{metadata !68, metadata !81, metadata !86}
!68 = metadata !{i32 786484, i32 0, null, metadata !"syslib", metadata !"syslib", metadata !"", metadata !6, i32 380, metadata !69, i32 1, i32 1, [12 x %struct.luaL_Reg]* @syslib, null} ; [ DW_TAG_variable ] [syslib] [line 380] [local] [def]
!69 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 768, i64 32, i32 0, i32 0, metadata !70, metadata !79, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 768, align 32, offset 0] [from ]
!70 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !71} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from luaL_Reg]
!71 = metadata !{i32 786454, metadata !72, null, metadata !"luaL_Reg", i32 26, i64 0, i64 0, i64 0, i32 0, metadata !73} ; [ DW_TAG_typedef ] [luaL_Reg] [line 26, size 0, align 0, offset 0] [from luaL_Reg]
!72 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lauxlib.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!73 = metadata !{i32 786451, metadata !72, null, metadata !"luaL_Reg", i32 23, i64 64, i64 32, i32 0, i32 0, null, metadata !74, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [luaL_Reg] [line 23, size 64, align 32, offset 0] [def] [from ]
!74 = metadata !{metadata !75, metadata !76}
!75 = metadata !{i32 786445, metadata !72, metadata !73, metadata !"name", i32 24, i64 32, i64 32, i64 0, i32 0, metadata !35} ; [ DW_TAG_member ] [name] [line 24, size 32, align 32, offset 0] [from ]
!76 = metadata !{i32 786445, metadata !72, metadata !73, metadata !"func", i32 25, i64 32, i64 32, i64 32, i32 0, metadata !77} ; [ DW_TAG_member ] [func] [line 25, size 32, align 32, offset 32] [from lua_CFunction]
!77 = metadata !{i32 786454, metadata !12, null, metadata !"lua_CFunction", i32 105, i64 0, i64 0, i64 0, i32 0, metadata !78} ; [ DW_TAG_typedef ] [lua_CFunction] [line 105, size 0, align 0, offset 0] [from ]
!78 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !7} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!79 = metadata !{metadata !80}
!80 = metadata !{i32 786465, i64 0, i64 12}       ; [ DW_TAG_subrange_type ] [0, 11]
!81 = metadata !{i32 786484, i32 0, metadata !48, metadata !"cat", metadata !"cat", metadata !"", metadata !6, i32 356, metadata !82, i32 1, i32 1, [6 x i32]* @os_setlocale.cat, null} ; [ DW_TAG_variable ] [cat] [line 356] [local] [def]
!82 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 192, i64 32, i32 0, i32 0, metadata !83, metadata !84, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 192, align 32, offset 0] [from ]
!83 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !9} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from int]
!84 = metadata !{metadata !85}
!85 = metadata !{i32 786465, i64 0, i64 6}        ; [ DW_TAG_subrange_type ] [0, 5]
!86 = metadata !{i32 786484, i32 0, metadata !48, metadata !"catnames", metadata !"catnames", metadata !"", metadata !6, i32 358, metadata !87, i32 1, i32 1, [7 x i8*]* @os_setlocale.catnames, null} ; [ DW_TAG_variable ] [catnames] [line 358] [local] [def]
!87 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 224, i64 32, i32 0, i32 0, metadata !88, metadata !89, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 224, align 32, offset 0] [from ]
!88 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !35} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from ]
!89 = metadata !{metadata !90}
!90 = metadata !{i32 786465, i64 0, i64 7}        ; [ DW_TAG_subrange_type ] [0, 6]
!91 = metadata !{i32 (%struct.lua_State*)* @luaopen_os}
!92 = metadata !{metadata !"luaopen_os"}
!93 = metadata !{void (%struct.lua_State*, double, i32)* @luaL_checkversion_}
!94 = metadata !{metadata !"luaL_checkversion_"}
!95 = metadata !{void (%struct.lua_State*, i32, i32)* @lua_createtable}
!96 = metadata !{metadata !"lua_createtable"}
!97 = metadata !{void (%struct.lua_State*, %struct.luaL_Reg*, i32)* @luaL_setfuncs}
!98 = metadata !{metadata !"luaL_setfuncs"}
!99 = metadata !{i32 (%struct.lua_State*)* @os_clock}
!100 = metadata !{metadata !"os_clock"}
!101 = metadata !{i32 (%struct.lua_State*)* @os_date}
!102 = metadata !{metadata !"os_date"}
!103 = metadata !{i32 (%struct.lua_State*)* @os_difftime}
!104 = metadata !{metadata !"os_difftime"}
!105 = metadata !{i32 (%struct.lua_State*)* @os_execute}
!106 = metadata !{metadata !"os_execute"}
!107 = metadata !{i32 (%struct.lua_State*)* @os_exit}
!108 = metadata !{metadata !"os_exit"}
!109 = metadata !{i32 (%struct.lua_State*)* @os_getenv}
!110 = metadata !{metadata !"os_getenv"}
!111 = metadata !{i32 (%struct.lua_State*)* @os_remove}
!112 = metadata !{metadata !"os_remove"}
!113 = metadata !{i32 (%struct.lua_State*)* @os_rename}
!114 = metadata !{metadata !"os_rename"}
!115 = metadata !{i32 (%struct.lua_State*)* @os_setlocale}
!116 = metadata !{metadata !"os_setlocale"}
!117 = metadata !{i32 (%struct.lua_State*)* @os_time}
!118 = metadata !{metadata !"os_time"}
!119 = metadata !{i32 (%struct.lua_State*)* @os_tmpname}
!120 = metadata !{metadata !"os_tmpname"}
!121 = metadata !{i8* (i8*)* @tmpnam}
!122 = metadata !{metadata !"tmpnam"}
!123 = metadata !{i32 (%struct.lua_State*, i8*, ...)* @luaL_error}
!124 = metadata !{metadata !"luaL_error"}
!125 = metadata !{i8* (%struct.lua_State*, i8*)* @lua_pushstring}
!126 = metadata !{metadata !"lua_pushstring"}
!127 = metadata !{i32 (%struct.lua_State*, i32)* @lua_type}
!128 = metadata !{metadata !"lua_type"}
!129 = metadata !{i32 (i32*)* @time}
!130 = metadata !{metadata !"time"}
!131 = metadata !{void (%struct.lua_State*, i32, i32)* @luaL_checktype}
!132 = metadata !{metadata !"luaL_checktype"}
!133 = metadata !{void (%struct.lua_State*, i32)* @lua_settop}
!134 = metadata !{metadata !"lua_settop"}
!135 = metadata !{i32 (%struct.lua_State*, i8*, i32, i32)* @getfield}
!136 = metadata !{metadata !"getfield"}
!137 = metadata !{i32 (%struct.lua_State*, i8*)* @getboolfield}
!138 = metadata !{metadata !"getboolfield"}
!139 = metadata !{i32 (%struct.tm*)* @mktime}
!140 = metadata !{metadata !"mktime"}
!141 = metadata !{void (%struct.lua_State*, %struct.tm*)* @setallfields}
!142 = metadata !{metadata !"setallfields"}
!143 = metadata !{void (%struct.lua_State*, i64)* @lua_pushinteger}
!144 = metadata !{metadata !"lua_pushinteger"}
!145 = metadata !{void (%struct.lua_State*, i8*, i32)* @setfield}
!146 = metadata !{metadata !"setfield"}
!147 = metadata !{void (%struct.lua_State*, i8*, i32)* @setboolfield}
!148 = metadata !{metadata !"setboolfield"}
!149 = metadata !{void (%struct.lua_State*, i32)* @lua_pushboolean}
!150 = metadata !{metadata !"lua_pushboolean"}
!151 = metadata !{void (%struct.lua_State*, i32, i8*)* @lua_setfield}
!152 = metadata !{metadata !"lua_setfield"}
!153 = metadata !{i32 (%struct.lua_State*, i32, i8*)* @lua_getfield}
!154 = metadata !{metadata !"lua_getfield"}
!155 = metadata !{i32 (%struct.lua_State*, i32)* @lua_toboolean}
!156 = metadata !{metadata !"lua_toboolean"}
!157 = metadata !{i64 (%struct.lua_State*, i32, i32*)* @lua_tointegerx}
!158 = metadata !{metadata !"lua_tointegerx"}
!159 = metadata !{i8* (%struct.lua_State*, i32, i8*, i32*)* @luaL_optlstring}
!160 = metadata !{metadata !"luaL_optlstring"}
!161 = metadata !{i32 (%struct.lua_State*, i32, i8*, i8**)* @luaL_checkoption}
!162 = metadata !{metadata !"luaL_checkoption"}
!163 = metadata !{i8* (i32, i8*)* @setlocale}
!164 = metadata !{metadata !"setlocale"}
!165 = metadata !{i8* (%struct.lua_State*, i32, i32*)* @luaL_checklstring}
!166 = metadata !{metadata !"luaL_checklstring"}
!167 = metadata !{i32 (%struct.lua_State*, i32, i8*)* @luaL_fileresult}
!168 = metadata !{metadata !"luaL_fileresult"}
!169 = metadata !{i32 (i8*, i8*)* @rename}
!170 = metadata !{metadata !"rename"}
!171 = metadata !{i32 (i8*)* @remove}
!172 = metadata !{metadata !"remove"}
!173 = metadata !{i8* (i8*)* @getenv}
!174 = metadata !{metadata !"getenv"}
!175 = metadata !{i64 (%struct.lua_State*, i32, i64)* @luaL_optinteger}
!176 = metadata !{metadata !"luaL_optinteger"}
!177 = metadata !{void (%struct.lua_State*)* @lua_close}
!178 = metadata !{metadata !"lua_close"}
!179 = metadata !{void (i32)* @exit}
!180 = metadata !{metadata !"exit"}
!181 = metadata !{i32 (i8*)* @system}
!182 = metadata !{metadata !"system"}
!183 = metadata !{i32 (%struct.lua_State*, i32)* @luaL_execresult}
!184 = metadata !{metadata !"luaL_execresult"}
!185 = metadata !{i32 (%struct.lua_State*, i32)* @l_checktime}
!186 = metadata !{metadata !"l_checktime"}
!187 = metadata !{void (%struct.lua_State*, double)* @lua_pushnumber}
!188 = metadata !{metadata !"lua_pushnumber"}
!189 = metadata !{double (i32, i32)* @difftime}
!190 = metadata !{metadata !"difftime"}
!191 = metadata !{i64 (%struct.lua_State*, i32)* @luaL_checkinteger}
!192 = metadata !{metadata !"luaL_checkinteger"}
!193 = metadata !{i32 (%struct.lua_State*, i32, i8*)* @luaL_argerror}
!194 = metadata !{metadata !"luaL_argerror"}
!195 = metadata !{%struct.tm* (i32*)* @gmtime}
!196 = metadata !{metadata !"gmtime"}
!197 = metadata !{%struct.tm* (i32*)* @localtime}
!198 = metadata !{metadata !"localtime"}
!199 = metadata !{i32 (i8*, i8*)* @strcmp}
!200 = metadata !{metadata !"strcmp"}
!201 = metadata !{void (%struct.lua_State*, %struct.luaL_Buffer*)* @luaL_buffinit}
!202 = metadata !{metadata !"luaL_buffinit"}
!203 = metadata !{i8* (%struct.luaL_Buffer*, i32)* @luaL_prepbuffsize}
!204 = metadata !{metadata !"luaL_prepbuffsize"}
!205 = metadata !{i8* (%struct.lua_State*, i8*, i8*)* @checkoption}
!206 = metadata !{metadata !"checkoption"}
!207 = metadata !{i32 (i8*, i32, i8*, %struct.tm*)* @strftime}
!208 = metadata !{metadata !"strftime"}
!209 = metadata !{void (%struct.luaL_Buffer*)* @luaL_pushresult}
!210 = metadata !{metadata !"luaL_pushresult"}
!211 = metadata !{i32 (i8*, i8*, i32)* @memcmp}
!212 = metadata !{metadata !"memcmp"}
!213 = metadata !{i8* (%struct.lua_State*, i8*, ...)* @lua_pushfstring}
!214 = metadata !{metadata !"lua_pushfstring"}
!215 = metadata !{i32 ()* @clock}
!216 = metadata !{metadata !"clock"}
!217 = metadata !{metadata !"int.lua_State *.1"}
!218 = metadata !{metadata !"void.lua_State *.1.lua_Number.0.size_t.0"}
!219 = metadata !{metadata !"void.lua_State *.1.int.0.int.0"}
!220 = metadata !{metadata !"void.lua_State *.1.const luaL_Reg *.1.int.0"}
!221 = metadata !{metadata !"char .char *.1"}
!222 = metadata !{metadata !"int.lua_State *.1.const char *.1"}
!223 = metadata !{metadata !"const char .lua_State *.1.const char *.1"}
!224 = metadata !{metadata !"int.lua_State *.1.int.0"}
!225 = metadata !{metadata !"time_t.time_t *.1"}
!226 = metadata !{metadata !"void.lua_State *.1.int.0"}
!227 = metadata !{metadata !"int.lua_State *.1.const char *.1.int.0.int.0"}
!228 = metadata !{metadata !"time_t.struct tm *.1"}
!229 = metadata !{metadata !"void.lua_State *.1.struct tm *.1"}
!230 = metadata !{metadata !"void.lua_State *.1.lua_Integer.0"}
!231 = metadata !{metadata !"void.lua_State *.1.const char *.1.int.0"}
!232 = metadata !{metadata !"void.lua_State *.1.int.0.const char *.1"}
!233 = metadata !{metadata !"int.lua_State *.1.int.0.const char *.1"}
!234 = metadata !{metadata !"lua_Integer.lua_State *.1.int.0.int *.1"}
!235 = metadata !{metadata !"const char .lua_State *.1.int.0.const char *.1.size_t *.1"}
!236 = metadata !{metadata !"int.lua_State *.1.int.0.const char *.1.const char *const [].1"}
!237 = metadata !{metadata !"char .int.0.const char *.1"}
!238 = metadata !{metadata !"const char .lua_State *.1.int.0.size_t *.1"}
!239 = metadata !{metadata !"int.const char *.1.const char *.1"}
!240 = metadata !{metadata !"int.const char *.1"}
!241 = metadata !{metadata !"char .const char *.1"}
!242 = metadata !{metadata !"lua_Integer.lua_State *.1.int.0.lua_Integer.0"}
!243 = metadata !{metadata !"void.lua_State *.1"}
!244 = metadata !{metadata !"void.int.0"}
!245 = metadata !{metadata !"time_t.lua_State *.1.int.0"}
!246 = metadata !{metadata !"void.lua_State *.1.lua_Number.0"}
!247 = metadata !{metadata !"double.time_t.0.time_t.0"}
!248 = metadata !{metadata !"lua_Integer.lua_State *.1.int.0"}
!249 = metadata !{metadata !"struct tm .const time_t *.1"}
!250 = metadata !{metadata !"void.lua_State *.1.luaL_Buffer *.1"}
!251 = metadata !{metadata !"char .luaL_Buffer *.1.size_t.0"}
!252 = metadata !{metadata !"const char .lua_State *.1.const char *.1.char *.1"}
!253 = metadata !{metadata !"size_t.char *restrict.1.size_t.0.const char *restrict.1.const struct tm *restrict.1"}
!254 = metadata !{metadata !"void.luaL_Buffer *.1"}
!255 = metadata !{metadata !"int.const void *.1.const void *.1.size_t.0"}
!256 = metadata !{metadata !"clock_t."}
!257 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lualib.h"}
!258 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lauxlib.h"}
!259 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lua.h"}
!260 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/loslib.c"}
!261 = metadata !{metadata !"D:/Xilinx/SDx/2016.3/SDK/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include\5Cstdio.h"}
!262 = metadata !{metadata !"D:/Xilinx/SDx/2016.3/SDK/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include\5Ctime.h"}
!263 = metadata !{metadata !"D:/Xilinx/SDx/2016.3/SDK/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include\5Clocale.h"}
!264 = metadata !{metadata !"D:/Xilinx/SDx/2016.3/SDK/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include\5Cstdlib.h"}
!265 = metadata !{metadata !"D:/Xilinx/SDx/2016.3/SDK/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include\5Cstring.h"}
!266 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!267 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!268 = metadata !{i32 1, metadata !"wchar_size", i32 4}
!269 = metadata !{i32 1, metadata !"min_enum_size", i32 4}
!270 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
!271 = metadata !{i32 786689, metadata !4, metadata !"L", metadata !6, i32 16777615, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 399]
!272 = metadata !{i32 399, i32 39, metadata !4, null}
!273 = metadata !{i32 400, i32 3, metadata !4, null}
!274 = metadata !{i32 401, i32 3, metadata !4, null}
!275 = metadata !{i32 786689, metadata !66, metadata !"L", metadata !6, i32 16777399, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 183]
!276 = metadata !{i32 183, i32 33, metadata !66, null}
!277 = metadata !{i32 184, i32 3, metadata !66, null}
!278 = metadata !{i32 184, i32 34, metadata !66, null}
!279 = metadata !{i32 185, i32 3, metadata !66, null}
!280 = metadata !{i32 786689, metadata !61, metadata !"L", metadata !6, i32 16777498, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 282]
!281 = metadata !{i32 282, i32 32, metadata !61, null}
!282 = metadata !{i32 786688, metadata !61, metadata !"s", metadata !6, i32 283, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s] [line 283]
!283 = metadata !{i32 283, i32 15, metadata !61, null}
!284 = metadata !{i32 283, i32 19, metadata !61, null}
!285 = metadata !{i32 786688, metadata !61, metadata !"t", metadata !6, i32 284, metadata !58, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [t] [line 284]
!286 = metadata !{i32 284, i32 10, metadata !61, null}
!287 = metadata !{i32 284, i32 14, metadata !61, null}
!288 = metadata !{i32 284, i32 14, metadata !289, null}
!289 = metadata !{i32 786443, metadata !5, metadata !61, i32 284, i32 14, i32 1, i32 31} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/loslib.c]
!290 = metadata !{i32 284, i32 14, metadata !291, null}
!291 = metadata !{i32 786443, metadata !5, metadata !61, i32 284, i32 14, i32 2, i32 32} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/loslib.c]
!292 = metadata !{i32 284, i32 14, metadata !293, null}
!293 = metadata !{i32 786443, metadata !5, metadata !294, i32 284, i32 14, i32 4, i32 34} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/loslib.c]
!294 = metadata !{i32 786443, metadata !5, metadata !61, i32 284, i32 14, i32 3, i32 33} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/loslib.c]
!295 = metadata !{i32 786688, metadata !61, metadata !"tmr", metadata !6, i32 285, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tmr] [line 285]
!296 = metadata !{i32 285, i32 13, metadata !61, null}
!297 = metadata !{i32 786688, metadata !61, metadata !"stm", metadata !6, i32 285, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [stm] [line 285]
!298 = metadata !{i32 285, i32 19, metadata !61, null}
!299 = metadata !{i32 286, i32 7, metadata !300, null}
!300 = metadata !{i32 786443, metadata !5, metadata !61, i32 286, i32 7, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/loslib.c]
!301 = metadata !{i32 287, i32 5, metadata !302, null}
!302 = metadata !{i32 786443, metadata !5, metadata !300, i32 286, i32 18, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/loslib.c]
!303 = metadata !{i32 287, i32 11, metadata !302, null}
!304 = metadata !{i32 288, i32 5, metadata !302, null}
!305 = metadata !{i32 289, i32 3, metadata !302, null}
!306 = metadata !{i32 291, i32 5, metadata !300, null}
!307 = metadata !{i32 291, i32 11, metadata !300, null}
!308 = metadata !{i32 292, i32 7, metadata !309, null}
!309 = metadata !{i32 786443, metadata !5, metadata !61, i32 292, i32 7, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/loslib.c]
!310 = metadata !{i32 293, i32 5, metadata !309, null}
!311 = metadata !{i32 294, i32 7, metadata !312, null}
!312 = metadata !{i32 786443, metadata !5, metadata !61, i32 294, i32 7, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/loslib.c]
!313 = metadata !{i32 295, i32 5, metadata !314, null}
!314 = metadata !{i32 786443, metadata !5, metadata !312, i32 294, i32 29, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/loslib.c]
!315 = metadata !{i32 296, i32 5, metadata !314, null}
!316 = metadata !{i32 297, i32 3, metadata !314, null}
!317 = metadata !{i32 786688, metadata !318, metadata !"cc", metadata !6, i32 299, metadata !319, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cc] [line 299]
!318 = metadata !{i32 786443, metadata !5, metadata !312, i32 298, i32 8, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/loslib.c]
!319 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 32, i64 8, i32 0, i32 0, metadata !37, metadata !320, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 32, align 8, offset 0] [from char]
!320 = metadata !{metadata !321}
!321 = metadata !{i32 786465, i64 0, i64 4}       ; [ DW_TAG_subrange_type ] [0, 3]
!322 = metadata !{i32 299, i32 10, metadata !318, null}
!323 = metadata !{i32 786688, metadata !318, metadata !"b", metadata !6, i32 300, metadata !324, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b] [line 300]
!324 = metadata !{i32 786454, metadata !72, null, metadata !"luaL_Buffer", i32 146, i64 0, i64 0, i64 0, i32 0, metadata !325} ; [ DW_TAG_typedef ] [luaL_Buffer] [line 146, size 0, align 0, offset 0] [from luaL_Buffer]
!325 = metadata !{i32 786451, metadata !72, null, metadata !"luaL_Buffer", i32 140, i64 65664, i64 32, i32 0, i32 0, null, metadata !326, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [luaL_Buffer] [line 140, size 65664, align 32, offset 0] [def] [from ]
!326 = metadata !{metadata !327, metadata !328, metadata !332, metadata !333, metadata !334}
!327 = metadata !{i32 786445, metadata !72, metadata !325, metadata !"b", i32 141, i64 32, i64 32, i64 0, i32 0, metadata !65} ; [ DW_TAG_member ] [b] [line 141, size 32, align 32, offset 0] [from ]
!328 = metadata !{i32 786445, metadata !72, metadata !325, metadata !"size", i32 142, i64 32, i64 32, i64 32, i32 0, metadata !329} ; [ DW_TAG_member ] [size] [line 142, size 32, align 32, offset 32] [from size_t]
!329 = metadata !{i32 786454, metadata !330, null, metadata !"size_t", i32 216, i64 0, i64 0, i64 0, i32 0, metadata !331} ; [ DW_TAG_typedef ] [size_t] [line 216, size 0, align 0, offset 0] [from unsigned int]
!330 = metadata !{metadata !"D:/Xilinx/SDx/2016.3/SDK/gnu/aarch32/nt/gcc-arm-linux-gnueabi/lib/gcc/arm-linux-gnueabihf/5.2.1/include\5Cstddef.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!331 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!332 = metadata !{i32 786445, metadata !72, metadata !325, metadata !"n", i32 143, i64 32, i64 32, i64 64, i32 0, metadata !329} ; [ DW_TAG_member ] [n] [line 143, size 32, align 32, offset 64] [from size_t]
!333 = metadata !{i32 786445, metadata !72, metadata !325, metadata !"L", i32 144, i64 32, i64 32, i64 96, i32 0, metadata !10} ; [ DW_TAG_member ] [L] [line 144, size 32, align 32, offset 96] [from ]
!334 = metadata !{i32 786445, metadata !72, metadata !325, metadata !"initb", i32 145, i64 65536, i64 8, i64 128, i32 0, metadata !335} ; [ DW_TAG_member ] [initb] [line 145, size 65536, align 8, offset 128] [from ]
!335 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 65536, i64 8, i32 0, i32 0, metadata !37, metadata !336, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 65536, align 8, offset 0] [from char]
!336 = metadata !{metadata !337}
!337 = metadata !{i32 786465, i64 0, i64 8192}    ; [ DW_TAG_subrange_type ] [0, 8191]
!338 = metadata !{i32 300, i32 17, metadata !318, null}
!339 = metadata !{i32 301, i32 5, metadata !318, null}
!340 = metadata !{i32 302, i32 5, metadata !318, null}
!341 = metadata !{i32 303, i32 5, metadata !318, null}
!342 = metadata !{i32 303, i32 5, metadata !343, null}
!343 = metadata !{i32 786443, metadata !5, metadata !318, i32 303, i32 5, i32 1, i32 35} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/loslib.c]
!344 = metadata !{i32 304, i32 11, metadata !345, null}
!345 = metadata !{i32 786443, metadata !5, metadata !346, i32 304, i32 11, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/loslib.c]
!346 = metadata !{i32 786443, metadata !5, metadata !318, i32 303, i32 16, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/loslib.c]
!347 = metadata !{i32 305, i32 9, metadata !345, null}
!348 = metadata !{i32 305, i32 9, metadata !349, null}
!349 = metadata !{i32 786443, metadata !5, metadata !345, i32 305, i32 9, i32 2, i32 37} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/loslib.c]
!350 = metadata !{i32 305, i32 9, metadata !351, null}
!351 = metadata !{i32 786443, metadata !5, metadata !352, i32 305, i32 9, i32 3, i32 38} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/loslib.c]
!352 = metadata !{i32 786443, metadata !5, metadata !345, i32 305, i32 9, i32 1, i32 36} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/loslib.c]
!353 = metadata !{i32 786688, metadata !354, metadata !"reslen", metadata !6, i32 307, metadata !329, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [reslen] [line 307]
!354 = metadata !{i32 786443, metadata !5, metadata !345, i32 306, i32 12, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/loslib.c]
!355 = metadata !{i32 307, i32 16, metadata !354, null}
!356 = metadata !{i32 786688, metadata !354, metadata !"buff", metadata !6, i32 308, metadata !65, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buff] [line 308]
!357 = metadata !{i32 308, i32 15, metadata !354, null}
!358 = metadata !{i32 308, i32 22, metadata !354, null}
!359 = metadata !{i32 309, i32 13, metadata !354, null}
!360 = metadata !{i32 310, i32 18, metadata !354, null}
!361 = metadata !{i32 311, i32 9, metadata !354, null}
!362 = metadata !{i32 313, i32 5, metadata !346, null}
!363 = metadata !{i32 314, i32 5, metadata !318, null}
!364 = metadata !{i32 316, i32 3, metadata !61, null}
!365 = metadata !{i32 786689, metadata !54, metadata !"L", metadata !6, i32 16777561, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 345]
!366 = metadata !{i32 345, i32 36, metadata !54, null}
!367 = metadata !{i32 786688, metadata !54, metadata !"t1", metadata !6, i32 346, metadata !58, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [t1] [line 346]
!368 = metadata !{i32 346, i32 10, metadata !54, null}
!369 = metadata !{i32 346, i32 15, metadata !54, null}
!370 = metadata !{i32 786688, metadata !54, metadata !"t2", metadata !6, i32 347, metadata !58, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [t2] [line 347]
!371 = metadata !{i32 347, i32 10, metadata !54, null}
!372 = metadata !{i32 347, i32 15, metadata !54, null}
!373 = metadata !{i32 348, i32 3, metadata !54, null}
!374 = metadata !{i32 348, i32 33, metadata !54, null}
!375 = metadata !{i32 349, i32 3, metadata !54, null}
!376 = metadata !{i32 786689, metadata !53, metadata !"L", metadata !6, i32 16777357, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 141]
!377 = metadata !{i32 141, i32 35, metadata !53, null}
!378 = metadata !{i32 786688, metadata !53, metadata !"cmd", metadata !6, i32 142, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cmd] [line 142]
!379 = metadata !{i32 142, i32 15, metadata !53, null}
!380 = metadata !{i32 142, i32 21, metadata !53, null}
!381 = metadata !{i32 786688, metadata !53, metadata !"stat", metadata !6, i32 143, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [stat] [line 143]
!382 = metadata !{i32 143, i32 7, metadata !53, null}
!383 = metadata !{i32 143, i32 14, metadata !53, null}
!384 = metadata !{i32 144, i32 7, metadata !385, null}
!385 = metadata !{i32 786443, metadata !5, metadata !53, i32 144, i32 7, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/loslib.c]
!386 = metadata !{i32 145, i32 12, metadata !385, null}
!387 = metadata !{i32 147, i32 5, metadata !388, null}
!388 = metadata !{i32 786443, metadata !5, metadata !385, i32 146, i32 8, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/loslib.c]
!389 = metadata !{i32 148, i32 5, metadata !388, null}
!390 = metadata !{i32 150, i32 1, metadata !53, null}
!391 = metadata !{i32 786689, metadata !52, metadata !"L", metadata !6, i32 16777583, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 367]
!392 = metadata !{i32 367, i32 32, metadata !52, null}
!393 = metadata !{i32 786688, metadata !52, metadata !"status", metadata !6, i32 368, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [status] [line 368]
!394 = metadata !{i32 368, i32 7, metadata !52, null}
!395 = metadata !{i32 369, i32 7, metadata !396, null}
!396 = metadata !{i32 786443, metadata !5, metadata !52, i32 369, i32 7, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/loslib.c]
!397 = metadata !{i32 370, i32 15, metadata !396, null}
!398 = metadata !{i32 372, i32 19, metadata !396, null}
!399 = metadata !{i32 373, i32 7, metadata !400, null}
!400 = metadata !{i32 786443, metadata !5, metadata !52, i32 373, i32 7, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/loslib.c]
!401 = metadata !{i32 374, i32 5, metadata !400, null}
!402 = metadata !{i32 375, i32 7, metadata !403, null}
!403 = metadata !{i32 786443, metadata !5, metadata !52, i32 375, i32 7, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/loslib.c]
!404 = metadata !{i32 375, i32 10, metadata !405, null}
!405 = metadata !{i32 786443, metadata !5, metadata !403, i32 375, i32 10, i32 1, i32 39} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/loslib.c]
!406 = metadata !{i32 376, i32 3, metadata !52, null}
!407 = metadata !{i32 786689, metadata !51, metadata !"L", metadata !6, i32 16777393, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 177]
!408 = metadata !{i32 177, i32 34, metadata !51, null}
!409 = metadata !{i32 178, i32 3, metadata !51, null}
!410 = metadata !{i32 178, i32 28, metadata !51, null}
!411 = metadata !{i32 178, i32 21, metadata !51, null}
!412 = metadata !{i32 179, i32 3, metadata !51, null}
!413 = metadata !{i32 786689, metadata !50, metadata !"L", metadata !6, i32 16777369, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 153]
!414 = metadata !{i32 153, i32 34, metadata !50, null}
!415 = metadata !{i32 786688, metadata !50, metadata !"filename", metadata !6, i32 154, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [filename] [line 154]
!416 = metadata !{i32 154, i32 15, metadata !50, null}
!417 = metadata !{i32 154, i32 26, metadata !50, null}
!418 = metadata !{i32 155, i32 10, metadata !50, null}
!419 = metadata !{i32 155, i32 29, metadata !50, null}
!420 = metadata !{i32 786689, metadata !49, metadata !"L", metadata !6, i32 16777375, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 159]
!421 = metadata !{i32 159, i32 34, metadata !49, null}
!422 = metadata !{i32 786688, metadata !49, metadata !"fromname", metadata !6, i32 160, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fromname] [line 160]
!423 = metadata !{i32 160, i32 15, metadata !49, null}
!424 = metadata !{i32 160, i32 26, metadata !49, null}
!425 = metadata !{i32 786688, metadata !49, metadata !"toname", metadata !6, i32 161, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [toname] [line 161]
!426 = metadata !{i32 161, i32 15, metadata !49, null}
!427 = metadata !{i32 161, i32 24, metadata !49, null}
!428 = metadata !{i32 162, i32 10, metadata !49, null}
!429 = metadata !{i32 162, i32 29, metadata !49, null}
!430 = metadata !{i32 786689, metadata !48, metadata !"L", metadata !6, i32 16777571, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 355]
!431 = metadata !{i32 355, i32 37, metadata !48, null}
!432 = metadata !{i32 786688, metadata !48, metadata !"l", metadata !6, i32 360, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [l] [line 360]
!433 = metadata !{i32 360, i32 15, metadata !48, null}
!434 = metadata !{i32 360, i32 19, metadata !48, null}
!435 = metadata !{i32 786688, metadata !48, metadata !"op", metadata !6, i32 361, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [op] [line 361]
!436 = metadata !{i32 361, i32 7, metadata !48, null}
!437 = metadata !{i32 361, i32 12, metadata !48, null}
!438 = metadata !{i32 362, i32 3, metadata !48, null}
!439 = metadata !{i32 362, i32 21, metadata !48, null}
!440 = metadata !{i32 363, i32 3, metadata !48, null}
!441 = metadata !{i32 786689, metadata !15, metadata !"L", metadata !6, i32 16777536, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 320]
!442 = metadata !{i32 320, i32 32, metadata !15, null}
!443 = metadata !{i32 786688, metadata !15, metadata !"t", metadata !6, i32 321, metadata !58, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [t] [line 321]
!444 = metadata !{i32 321, i32 10, metadata !15, null}
!445 = metadata !{i32 322, i32 7, metadata !446, null}
!446 = metadata !{i32 786443, metadata !5, metadata !15, i32 322, i32 7, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/loslib.c]
!447 = metadata !{i32 323, i32 9, metadata !446, null}
!448 = metadata !{i32 786688, metadata !449, metadata !"ts", metadata !6, i32 325, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ts] [line 325]
!449 = metadata !{i32 786443, metadata !5, metadata !446, i32 324, i32 8, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/loslib.c]
!450 = metadata !{i32 325, i32 15, metadata !449, null}
!451 = metadata !{i32 326, i32 5, metadata !449, null}
!452 = metadata !{i32 327, i32 5, metadata !449, null}
!453 = metadata !{i32 328, i32 17, metadata !449, null}
!454 = metadata !{i32 329, i32 17, metadata !449, null}
!455 = metadata !{i32 330, i32 18, metadata !449, null}
!456 = metadata !{i32 331, i32 18, metadata !449, null}
!457 = metadata !{i32 332, i32 17, metadata !449, null}
!458 = metadata !{i32 333, i32 18, metadata !449, null}
!459 = metadata !{i32 334, i32 19, metadata !449, null}
!460 = metadata !{i32 335, i32 9, metadata !449, null}
!461 = metadata !{i32 336, i32 5, metadata !449, null}
!462 = metadata !{i32 338, i32 7, metadata !463, null}
!463 = metadata !{i32 786443, metadata !5, metadata !15, i32 338, i32 7, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/loslib.c]
!464 = metadata !{i32 338, i32 7, metadata !465, null}
!465 = metadata !{i32 786443, metadata !5, metadata !463, i32 338, i32 7, i32 1, i32 40} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/loslib.c]
!466 = metadata !{i32 339, i32 5, metadata !463, null}
!467 = metadata !{i32 340, i32 3, metadata !15, null}
!468 = metadata !{i32 341, i32 3, metadata !15, null}
!469 = metadata !{i32 786689, metadata !14, metadata !"L", metadata !6, i32 16777382, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 166]
!470 = metadata !{i32 166, i32 35, metadata !14, null}
!471 = metadata !{i32 786688, metadata !14, metadata !"buff", metadata !6, i32 167, metadata !472, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buff] [line 167]
!472 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 160, i64 8, i32 0, i32 0, metadata !37, metadata !473, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 160, align 8, offset 0] [from char]
!473 = metadata !{metadata !474}
!474 = metadata !{i32 786465, i64 0, i64 20}      ; [ DW_TAG_subrange_type ] [0, 19]
!475 = metadata !{i32 167, i32 8, metadata !14, null}
!476 = metadata !{i32 786688, metadata !14, metadata !"err", metadata !6, i32 168, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [err] [line 168]
!477 = metadata !{i32 168, i32 7, metadata !14, null}
!478 = metadata !{i32 169, i32 3, metadata !479, null}
!479 = metadata !{i32 786443, metadata !5, metadata !14, i32 169, i32 3, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/loslib.c]
!480 = metadata !{i32 170, i32 7, metadata !481, null}
!481 = metadata !{i32 786443, metadata !5, metadata !14, i32 170, i32 7, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/loslib.c]
!482 = metadata !{i32 171, i32 12, metadata !481, null}
!483 = metadata !{i32 172, i32 3, metadata !14, null}
!484 = metadata !{i32 173, i32 3, metadata !14, null}
!485 = metadata !{i32 174, i32 1, metadata !14, null}
!486 = metadata !{i32 786689, metadata !45, metadata !"L", metadata !6, i32 16777455, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 239]
!487 = metadata !{i32 239, i32 33, metadata !45, null}
!488 = metadata !{i32 786689, metadata !45, metadata !"key", metadata !6, i32 33554671, metadata !35, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [key] [line 239]
!489 = metadata !{i32 239, i32 48, metadata !45, null}
!490 = metadata !{i32 786689, metadata !45, metadata !"d", metadata !6, i32 50331887, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [d] [line 239]
!491 = metadata !{i32 239, i32 57, metadata !45, null}
!492 = metadata !{i32 786689, metadata !45, metadata !"delta", metadata !6, i32 67109103, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [delta] [line 239]
!493 = metadata !{i32 239, i32 64, metadata !45, null}
!494 = metadata !{i32 786688, metadata !45, metadata !"isnum", metadata !6, i32 240, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [isnum] [line 240]
!495 = metadata !{i32 240, i32 7, metadata !45, null}
!496 = metadata !{i32 786688, metadata !45, metadata !"t", metadata !6, i32 241, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [t] [line 241]
!497 = metadata !{i32 241, i32 7, metadata !45, null}
!498 = metadata !{i32 241, i32 11, metadata !45, null}
!499 = metadata !{i32 786688, metadata !45, metadata !"res", metadata !6, i32 242, metadata !500, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [res] [line 242]
!500 = metadata !{i32 786454, metadata !12, null, metadata !"lua_Integer", i32 93, i64 0, i64 0, i64 0, i32 0, metadata !501} ; [ DW_TAG_typedef ] [lua_Integer] [line 93, size 0, align 0, offset 0] [from long long int]
!501 = metadata !{i32 786468, null, null, metadata !"long long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!502 = metadata !{i32 242, i32 15, metadata !45, null}
!503 = metadata !{i32 242, i32 21, metadata !45, null}
!504 = metadata !{i32 243, i32 7, metadata !505, null}
!505 = metadata !{i32 786443, metadata !5, metadata !45, i32 243, i32 7, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/loslib.c]
!506 = metadata !{i32 244, i32 9, metadata !507, null}
!507 = metadata !{i32 786443, metadata !5, metadata !508, i32 244, i32 9, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/loslib.c]
!508 = metadata !{i32 786443, metadata !5, metadata !505, i32 243, i32 15, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/loslib.c]
!509 = metadata !{i32 245, i32 14, metadata !507, null}
!510 = metadata !{i32 246, i32 14, metadata !511, null}
!511 = metadata !{i32 786443, metadata !5, metadata !507, i32 246, i32 14, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/loslib.c]
!512 = metadata !{i32 247, i32 14, metadata !511, null}
!513 = metadata !{i32 248, i32 5, metadata !508, null}
!514 = metadata !{i32 249, i32 3, metadata !508, null}
!515 = metadata !{i32 251, i32 9, metadata !516, null}
!516 = metadata !{i32 786443, metadata !5, metadata !517, i32 251, i32 9, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/loslib.c]
!517 = metadata !{i32 786443, metadata !5, metadata !505, i32 250, i32 8, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/loslib.c]
!518 = metadata !{i32 251, i32 9, metadata !519, null}
!519 = metadata !{i32 786443, metadata !5, metadata !516, i32 251, i32 9, i32 1, i32 41} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/loslib.c]
!520 = metadata !{i32 252, i32 14, metadata !516, null}
!521 = metadata !{i32 253, i32 5, metadata !517, null}
!522 = metadata !{i32 255, i32 3, metadata !45, null}
!523 = metadata !{i32 256, i32 3, metadata !45, null}
!524 = metadata !{i32 257, i32 1, metadata !45, null}
!525 = metadata !{i32 786689, metadata !42, metadata !"L", metadata !6, i32 16777442, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 226]
!526 = metadata !{i32 226, i32 37, metadata !42, null}
!527 = metadata !{i32 786689, metadata !42, metadata !"key", metadata !6, i32 33554658, metadata !35, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [key] [line 226]
!528 = metadata !{i32 226, i32 52, metadata !42, null}
!529 = metadata !{i32 786688, metadata !42, metadata !"res", metadata !6, i32 227, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [res] [line 227]
!530 = metadata !{i32 227, i32 7, metadata !42, null}
!531 = metadata !{i32 228, i32 10, metadata !42, null}
!532 = metadata !{i32 228, i32 10, metadata !533, null}
!533 = metadata !{i32 786443, metadata !5, metadata !42, i32 228, i32 10, i32 1, i32 42} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/loslib.c]
!534 = metadata !{i32 228, i32 55, metadata !535, null}
!535 = metadata !{i32 786443, metadata !5, metadata !42, i32 228, i32 55, i32 2, i32 43} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/loslib.c]
!536 = metadata !{i32 228, i32 55, metadata !42, null}
!537 = metadata !{i32 228, i32 55, metadata !538, null}
!538 = metadata !{i32 786443, metadata !5, metadata !539, i32 228, i32 55, i32 4, i32 45} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/loslib.c]
!539 = metadata !{i32 786443, metadata !5, metadata !42, i32 228, i32 55, i32 3, i32 44} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/loslib.c]
!540 = metadata !{i32 229, i32 3, metadata !42, null}
!541 = metadata !{i32 230, i32 3, metadata !42, null}
!542 = metadata !{i32 786689, metadata !16, metadata !"L", metadata !6, i32 16777429, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 213]
!543 = metadata !{i32 213, i32 38, metadata !16, null}
!544 = metadata !{i32 786689, metadata !16, metadata !"stm", metadata !6, i32 33554645, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [stm] [line 213]
!545 = metadata !{i32 213, i32 52, metadata !16, null}
!546 = metadata !{i32 214, i32 3, metadata !16, null}
!547 = metadata !{i32 215, i32 3, metadata !16, null}
!548 = metadata !{i32 216, i32 3, metadata !16, null}
!549 = metadata !{i32 217, i32 3, metadata !16, null}
!550 = metadata !{i32 218, i32 3, metadata !16, null}
!551 = metadata !{i32 219, i32 3, metadata !16, null}
!552 = metadata !{i32 220, i32 3, metadata !16, null}
!553 = metadata !{i32 221, i32 3, metadata !16, null}
!554 = metadata !{i32 222, i32 3, metadata !16, null}
!555 = metadata !{i32 223, i32 1, metadata !16, null}
!556 = metadata !{i32 786689, metadata !41, metadata !"L", metadata !6, i32 16777413, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 197]
!557 = metadata !{i32 197, i32 34, metadata !41, null}
!558 = metadata !{i32 786689, metadata !41, metadata !"key", metadata !6, i32 33554629, metadata !35, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [key] [line 197]
!559 = metadata !{i32 197, i32 49, metadata !41, null}
!560 = metadata !{i32 786689, metadata !41, metadata !"value", metadata !6, i32 50331845, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [value] [line 197]
!561 = metadata !{i32 197, i32 58, metadata !41, null}
!562 = metadata !{i32 198, i32 3, metadata !41, null}
!563 = metadata !{i32 199, i32 3, metadata !41, null}
!564 = metadata !{i32 200, i32 1, metadata !41, null}
!565 = metadata !{i32 786689, metadata !38, metadata !"L", metadata !6, i32 16777418, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 202]
!566 = metadata !{i32 202, i32 38, metadata !38, null}
!567 = metadata !{i32 786689, metadata !38, metadata !"key", metadata !6, i32 33554634, metadata !35, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [key] [line 202]
!568 = metadata !{i32 202, i32 53, metadata !38, null}
!569 = metadata !{i32 786689, metadata !38, metadata !"value", metadata !6, i32 50331850, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [value] [line 202]
!570 = metadata !{i32 202, i32 62, metadata !38, null}
!571 = metadata !{i32 203, i32 7, metadata !572, null}
!572 = metadata !{i32 786443, metadata !5, metadata !38, i32 203, i32 7, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/loslib.c]
!573 = metadata !{i32 204, i32 5, metadata !572, null}
!574 = metadata !{i32 205, i32 3, metadata !38, null}
!575 = metadata !{i32 206, i32 3, metadata !38, null}
!576 = metadata !{i32 207, i32 1, metadata !38, null}
!577 = metadata !{i32 207, i32 1, metadata !578, null}
!578 = metadata !{i32 786443, metadata !5, metadata !38, i32 207, i32 1, i32 1, i32 46} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/loslib.c]
!579 = metadata !{i32 786689, metadata !55, metadata !"L", metadata !6, i32 16777285, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 69]
!580 = metadata !{i32 69, i32 39, metadata !55, null}
!581 = metadata !{i32 786689, metadata !55, metadata !"arg", metadata !6, i32 33554501, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [arg] [line 69]
!582 = metadata !{i32 69, i32 46, metadata !55, null}
!583 = metadata !{i32 786688, metadata !55, metadata !"t", metadata !6, i32 70, metadata !500, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [t] [line 70]
!584 = metadata !{i32 70, i32 15, metadata !55, null}
!585 = metadata !{i32 70, i32 19, metadata !55, null}
!586 = metadata !{i32 71, i32 3, metadata !55, null}
!587 = metadata !{i32 71, i32 3, metadata !588, null}
!588 = metadata !{i32 786443, metadata !5, metadata !55, i32 71, i32 3, i32 2, i32 48} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/loslib.c]
!589 = metadata !{i32 71, i32 3, metadata !590, null}
!590 = metadata !{i32 786443, metadata !5, metadata !591, i32 71, i32 3, i32 3, i32 49} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/loslib.c]
!591 = metadata !{i32 786443, metadata !5, metadata !55, i32 71, i32 3, i32 1, i32 47} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/loslib.c]
!592 = metadata !{i32 72, i32 3, metadata !55, null}
!593 = metadata !{i32 786689, metadata !62, metadata !"L", metadata !6, i32 16777476, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 260]
!594 = metadata !{i32 260, i32 44, metadata !62, null}
!595 = metadata !{i32 786689, metadata !62, metadata !"conv", metadata !6, i32 33554692, metadata !35, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [conv] [line 260]
!596 = metadata !{i32 260, i32 59, metadata !62, null}
!597 = metadata !{i32 786689, metadata !62, metadata !"buff", metadata !6, i32 50331908, metadata !65, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [buff] [line 260]
!598 = metadata !{i32 260, i32 71, metadata !62, null}
!599 = metadata !{i32 786688, metadata !62, metadata !"option", metadata !6, i32 261, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [option] [line 261]
!600 = metadata !{i32 261, i32 15, metadata !62, null}
!601 = metadata !{i32 786688, metadata !62, metadata !"oplen", metadata !6, i32 262, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [oplen] [line 262]
!602 = metadata !{i32 262, i32 7, metadata !62, null}
!603 = metadata !{i32 262, i32 3, metadata !62, null}
!604 = metadata !{i32 263, i32 8, metadata !605, null}
!605 = metadata !{i32 786443, metadata !5, metadata !62, i32 263, i32 3, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/loslib.c]
!606 = metadata !{i32 263, i32 8, metadata !607, null}
!607 = metadata !{i32 786443, metadata !5, metadata !608, i32 263, i32 8, i32 2, i32 51} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/loslib.c]
!608 = metadata !{i32 786443, metadata !5, metadata !605, i32 263, i32 8, i32 1, i32 50} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/loslib.c]
!609 = metadata !{i32 264, i32 9, metadata !610, null}
!610 = metadata !{i32 786443, metadata !5, metadata !611, i32 264, i32 9, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/loslib.c]
!611 = metadata !{i32 786443, metadata !5, metadata !605, i32 263, i32 72, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/loslib.c]
!612 = metadata !{i32 265, i32 7, metadata !610, null}
!613 = metadata !{i32 266, i32 14, metadata !614, null}
!614 = metadata !{i32 786443, metadata !5, metadata !610, i32 266, i32 14, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/loslib.c]
!615 = metadata !{i32 267, i32 7, metadata !616, null}
!616 = metadata !{i32 786443, metadata !5, metadata !614, i32 266, i32 48, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/loslib.c]
!617 = metadata !{i32 268, i32 7, metadata !616, null}
!618 = metadata !{i32 269, i32 7, metadata !616, null}
!619 = metadata !{i32 271, i32 3, metadata !611, null}
!620 = metadata !{i32 263, i32 55, metadata !605, null}
!621 = metadata !{i32 272, i32 3, metadata !62, null}
!622 = metadata !{i32 273, i32 5, metadata !62, null}
!623 = metadata !{i32 274, i32 3, metadata !62, null}
!624 = metadata !{i32 275, i32 1, metadata !62, null}
