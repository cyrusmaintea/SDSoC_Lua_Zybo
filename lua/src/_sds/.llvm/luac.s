; ModuleID = 'C:/Users/DevolutionX/workspace/lua/src/luac.c'
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-n32-S64"
target triple = "armv7--linux-gnueabihf"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i32, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i32, i32, [40 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.lua_State = type { %struct.GCObject*, i8, i8, i16, i8, %struct.lua_TValue*, %struct.global_State*, %struct.CallInfo*, i32*, %struct.lua_TValue*, %struct.lua_TValue*, %struct.UpVal*, %struct.GCObject*, %struct.lua_State*, %struct.lua_longjmp*, %struct.CallInfo, void (%struct.lua_State*, %struct.lua_Debug*)*, i32, i32, i32, i32, i16, i16, i32, i8 }
%struct.global_State = type { i8* (i8*, i8*, i32, i32)*, i8*, i32, i32, i32, i32, %struct.stringtable, %struct.lua_TValue, i32, i8, i8, i8, i8, %struct.GCObject*, %struct.GCObject**, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.lua_State*, i32, i32, i32, i32 (%struct.lua_State*)*, %struct.lua_State*, double*, %struct.TString*, [24 x %struct.TString*], [9 x %struct.Table*], [53 x [2 x %struct.TString*]] }
%struct.stringtable = type { %struct.TString**, i32, i32 }
%struct.lua_TValue = type { %union.Value, i32 }
%union.Value = type { i64 }
%struct.TString = type { %struct.GCObject*, i8, i8, i8, i8, i32, %union.anon }
%union.anon = type { i32 }
%struct.Table = type { %struct.GCObject*, i8, i8, i8, i8, i32, %struct.lua_TValue*, %struct.Node*, %struct.Node*, %struct.Table*, %struct.GCObject* }
%struct.Node = type { %struct.lua_TValue, %union.TKey }
%union.TKey = type { %struct.anon }
%struct.anon = type { %union.Value, i32, i32 }
%struct.UpVal = type opaque
%struct.GCObject = type { %struct.GCObject*, i8, i8 }
%struct.lua_longjmp = type opaque
%struct.CallInfo = type { %struct.lua_TValue*, %struct.lua_TValue*, %struct.CallInfo*, %struct.CallInfo*, %union.anon.0, i32, i16, i8 }
%union.anon.0 = type { %struct.anon.2 }
%struct.anon.2 = type { i32 (%struct.lua_State*, i32, i32)*, i32, i32 }
%struct.lua_Debug = type { i32, i8*, i8*, i8*, i8*, i32, i32, i32, i8, i8, i8, i8, [60 x i8], %struct.CallInfo* }
%struct.Proto = type { %struct.GCObject*, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, %struct.lua_TValue*, i32*, %struct.Proto**, i32*, %struct.LocVar*, %struct.Upvaldesc*, %struct.LClosure*, %struct.TString*, %struct.GCObject* }
%struct.LocVar = type { %struct.TString*, i32, i32 }
%struct.Upvaldesc = type { %struct.TString*, i8, i8 }
%struct.LClosure = type { %struct.GCObject*, i8, i8, i8, %struct.GCObject*, %struct.Proto*, [1 x %struct.UpVal*] }
%union.GCUnion = type { %union.Closure, [88 x i8] }
%union.Closure = type { %struct.CClosure }
%struct.CClosure = type { %struct.GCObject*, i8, i8, i8, %struct.GCObject*, i32 (%struct.lua_State*)*, [1 x %struct.lua_TValue] }

@.str = private unnamed_addr constant [21 x i8] c"no input files given\00", align 1
@.str1 = private unnamed_addr constant [39 x i8] c"cannot create state: not enough memory\00", align 1
@.str2 = private unnamed_addr constant [21 x i8] c"too many input files\00", align 1
@.str3 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@listing = internal global i32 0, align 4
@dumping = internal global i32 1, align 4
@output = internal global i8* getelementptr inbounds ([9 x i8]* @Output, i32 0, i32 0), align 4
@stdout = external global %struct._IO_FILE*
@.str4 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str5 = private unnamed_addr constant [5 x i8] c"open\00", align 1
@stripping = internal global i32 0, align 4
@.str6 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str7 = private unnamed_addr constant [6 x i8] c"close\00", align 1
@stderr = external global %struct._IO_FILE*
@.str8 = private unnamed_addr constant [22 x i8] c"%s: cannot %s %s: %s\0A\00", align 1
@progname = internal global i8* getelementptr inbounds ([5 x i8]* @.str9, i32 0, i32 0), align 4
@.str9 = private unnamed_addr constant [5 x i8] c"luac\00", align 1
@Output = internal global [9 x i8] c"luac.out\00", align 1
@.str10 = private unnamed_addr constant [24 x i8] c"constants (%d) for %p:\0A\00", align 1
@.str11 = private unnamed_addr constant [5 x i8] c"\09%d\09\00", align 1
@.str12 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str13 = private unnamed_addr constant [21 x i8] c"locals (%d) for %p:\0A\00", align 1
@.str14 = private unnamed_addr constant [14 x i8] c"\09%d\09%s\09%d\09%d\0A\00", align 1
@.str15 = private unnamed_addr constant [23 x i8] c"upvalues (%d) for %p:\0A\00", align 1
@.str16 = private unnamed_addr constant [4 x i8] c"nil\00", align 1
@.str17 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str18 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str19 = private unnamed_addr constant [6 x i8] c"%.14g\00", align 1
@.str20 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str21 = private unnamed_addr constant [12 x i8] c"-0123456789\00", align 1
@.str22 = private unnamed_addr constant [3 x i8] c".0\00", align 1
@.str23 = private unnamed_addr constant [5 x i8] c"%lld\00", align 1
@.str24 = private unnamed_addr constant [10 x i8] c"? type=%d\00", align 1
@.str25 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str26 = private unnamed_addr constant [3 x i8] c"\5C\22\00", align 1
@.str27 = private unnamed_addr constant [3 x i8] c"\5C\5C\00", align 1
@.str28 = private unnamed_addr constant [3 x i8] c"\5Ca\00", align 1
@.str29 = private unnamed_addr constant [3 x i8] c"\5Cb\00", align 1
@.str30 = private unnamed_addr constant [3 x i8] c"\5Cf\00", align 1
@.str31 = private unnamed_addr constant [3 x i8] c"\5Cn\00", align 1
@.str32 = private unnamed_addr constant [3 x i8] c"\5Cr\00", align 1
@.str33 = private unnamed_addr constant [3 x i8] c"\5Ct\00", align 1
@.str34 = private unnamed_addr constant [3 x i8] c"\5Cv\00", align 1
@.str35 = private unnamed_addr constant [6 x i8] c"\5C%03d\00", align 1
@.str36 = private unnamed_addr constant [6 x i8] c"[%d]\09\00", align 1
@.str37 = private unnamed_addr constant [5 x i8] c"[-]\09\00", align 1
@.str38 = private unnamed_addr constant [6 x i8] c"%-9s\09\00", align 1
@luaP_opnames = external hidden constant [48 x i8*]
@luaP_opmodes = external hidden constant [47 x i8]
@.str39 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str40 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str41 = private unnamed_addr constant [6 x i8] c"%d %d\00", align 1
@.str42 = private unnamed_addr constant [4 x i8] c"\09; \00", align 1
@.str43 = private unnamed_addr constant [6 x i8] c"\09; %s\00", align 1
@.str44 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str45 = private unnamed_addr constant [9 x i8] c"\09; to %d\00", align 1
@.str46 = private unnamed_addr constant [6 x i8] c"\09; %p\00", align 1
@.str47 = private unnamed_addr constant [6 x i8] c"\09; %d\00", align 1
@.str48 = private unnamed_addr constant [3 x i8] c"=?\00", align 1
@.str49 = private unnamed_addr constant [5 x i8] c"\1BLua\00", align 1
@.str50 = private unnamed_addr constant [10 x i8] c"(bstring)\00", align 1
@.str51 = private unnamed_addr constant [9 x i8] c"(string)\00", align 1
@.str52 = private unnamed_addr constant [41 x i8] c"\0A%s <%s:%d,%d> (%d instruction%s at %p)\0A\00", align 1
@.str53 = private unnamed_addr constant [5 x i8] c"main\00", align 1
@.str54 = private unnamed_addr constant [9 x i8] c"function\00", align 1
@.str55 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str56 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str57 = private unnamed_addr constant [40 x i8] c"%d%s param%s, %d slot%s, %d upvalue%s, \00", align 1
@.str58 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str59 = private unnamed_addr constant [42 x i8] c"%d local%s, %d constant%s, %d function%s\0A\00", align 1
@.str60 = private unnamed_addr constant [8 x i8] c"=(luac)\00", align 1
@.str61 = private unnamed_addr constant [19 x i8] c"(function()end)();\00", align 1
@.str62 = private unnamed_addr constant [8 x i8] c"%s: %s\0A\00", align 1
@.str63 = private unnamed_addr constant [30 x i8] c"%s: unrecognized option '%s'\0A\00", align 1
@.str64 = private unnamed_addr constant [329 x i8] c"usage: %s [options] [filenames]\0AAvailable options are:\0A  -l       list (use -l -l for full listing)\0A  -o name  output to file 'name' (default is \22%s\22)\0A  -p       parse only\0A  -s       strip debug information\0A  -v       show version information\0A  --       stop handling options\0A  -        stop handling options and process stdin\0A\00", align 1
@.str65 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str66 = private unnamed_addr constant [3 x i8] c"-l\00", align 1
@.str67 = private unnamed_addr constant [3 x i8] c"-o\00", align 1
@.str68 = private unnamed_addr constant [20 x i8] c"'-o' needs argument\00", align 1
@.str69 = private unnamed_addr constant [3 x i8] c"-p\00", align 1
@.str70 = private unnamed_addr constant [3 x i8] c"-s\00", align 1
@.str71 = private unnamed_addr constant [3 x i8] c"-v\00", align 1
@.str72 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str73 = private unnamed_addr constant [52 x i8] c"Lua 5.3.3  Copyright (C) 1994-2016 Lua.org, PUC-Rio\00", align 1

; Function Attrs: nounwind
define i32 @main(i32 %argc, i8** %argv) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 4
  %L = alloca %struct.lua_State*, align 4
  %i = alloca i32, align 4
  store i32 0, i32* %1
  store i32 %argc, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !572), !dbg !573
  store i8** %argv, i8*** %3, align 4
  call void @llvm.dbg.declare(metadata !{i8*** %3}, metadata !574), !dbg !575
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %L}, metadata !576), !dbg !577
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !578), !dbg !579
  %4 = load i32* %2, align 4, !dbg !580
  %5 = load i8*** %3, align 4, !dbg !580
  %6 = call i32 @doargs(i32 %4, i8** %5), !dbg !580
  store i32 %6, i32* %i, align 4, !dbg !580
  %7 = load i32* %i, align 4, !dbg !581
  %8 = load i32* %2, align 4, !dbg !581
  %9 = sub nsw i32 %8, %7, !dbg !581
  store i32 %9, i32* %2, align 4, !dbg !581
  %10 = load i32* %i, align 4, !dbg !582
  %11 = load i8*** %3, align 4, !dbg !582
  %12 = getelementptr inbounds i8** %11, i32 %10, !dbg !582
  store i8** %12, i8*** %3, align 4, !dbg !582
  %13 = load i32* %2, align 4, !dbg !583
  %14 = icmp sle i32 %13, 0, !dbg !583
  br i1 %14, label %15, label %16, !dbg !583

; <label>:15                                      ; preds = %0
  call void @usage(i8* getelementptr inbounds ([21 x i8]* @.str, i32 0, i32 0)), !dbg !585
  br label %16, !dbg !585

; <label>:16                                      ; preds = %15, %0
  %17 = call %struct.lua_State* @luaL_newstate(), !dbg !587
  store %struct.lua_State* %17, %struct.lua_State** %L, align 4, !dbg !587
  %18 = load %struct.lua_State** %L, align 4, !dbg !588
  %19 = icmp eq %struct.lua_State* %18, null, !dbg !588
  br i1 %19, label %20, label %21, !dbg !588

; <label>:20                                      ; preds = %16
  call void @fatal(i8* getelementptr inbounds ([39 x i8]* @.str1, i32 0, i32 0)), !dbg !590
  br label %21, !dbg !590

; <label>:21                                      ; preds = %20, %16
  %22 = load %struct.lua_State** %L, align 4, !dbg !592
  call void @lua_pushcclosure(%struct.lua_State* %22, i32 (%struct.lua_State*)* @pmain, i32 0), !dbg !592
  %23 = load %struct.lua_State** %L, align 4, !dbg !593
  %24 = load i32* %2, align 4, !dbg !593
  %25 = sext i32 %24 to i64, !dbg !593
  call void @lua_pushinteger(%struct.lua_State* %23, i64 %25), !dbg !593
  %26 = load %struct.lua_State** %L, align 4, !dbg !594
  %27 = load i8*** %3, align 4, !dbg !594
  %28 = bitcast i8** %27 to i8*, !dbg !594
  call void @lua_pushlightuserdata(%struct.lua_State* %26, i8* %28), !dbg !594
  %29 = load %struct.lua_State** %L, align 4, !dbg !595
  %30 = call i32 @lua_pcallk(%struct.lua_State* %29, i32 2, i32 0, i32 0, i32 0, i32 (%struct.lua_State*, i32, i32)* null), !dbg !595
  %31 = icmp ne i32 %30, 0, !dbg !595
  br i1 %31, label %32, label %35, !dbg !595

; <label>:32                                      ; preds = %21
  %33 = load %struct.lua_State** %L, align 4, !dbg !597
  %34 = call i8* @lua_tolstring(%struct.lua_State* %33, i32 -1, i32* null), !dbg !597
  call void @fatal(i8* %34), !dbg !599
  br label %35, !dbg !599

; <label>:35                                      ; preds = %32, %21
  %36 = load %struct.lua_State** %L, align 4, !dbg !600
  call void @lua_close(%struct.lua_State* %36), !dbg !600
  ret i32 0, !dbg !601
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind
define internal i32 @doargs(i32 %argc, i8** %argv) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8**, align 4
  %i = alloca i32, align 4
  %version = alloca i32, align 4
  store i32 %argc, i32* %1, align 4
  call void @llvm.dbg.declare(metadata !{i32* %1}, metadata !602), !dbg !603
  store i8** %argv, i8*** %2, align 4
  call void @llvm.dbg.declare(metadata !{i8*** %2}, metadata !604), !dbg !605
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !606), !dbg !607
  call void @llvm.dbg.declare(metadata !{i32* %version}, metadata !608), !dbg !609
  store i32 0, i32* %version, align 4, !dbg !610
  %3 = load i8*** %2, align 4, !dbg !611
  %4 = getelementptr inbounds i8** %3, i32 0, !dbg !611
  %5 = load i8** %4, align 4, !dbg !611
  %6 = icmp ne i8* %5, null, !dbg !611
  br i1 %6, label %7, label %18, !dbg !611

; <label>:7                                       ; preds = %0
  %8 = load i8*** %2, align 4, !dbg !613
  %9 = getelementptr inbounds i8** %8, i32 0, !dbg !613
  %10 = load i8** %9, align 4, !dbg !613
  %11 = load i8* %10, align 1, !dbg !613
  %12 = zext i8 %11 to i32, !dbg !613
  %13 = icmp ne i32 %12, 0, !dbg !613
  br i1 %13, label %14, label %18, !dbg !613

; <label>:14                                      ; preds = %7
  %15 = load i8*** %2, align 4, !dbg !615
  %16 = getelementptr inbounds i8** %15, i32 0, !dbg !615
  %17 = load i8** %16, align 4, !dbg !615
  store i8* %17, i8** @progname, align 4, !dbg !615
  br label %18, !dbg !615

; <label>:18                                      ; preds = %14, %7, %0
  store i32 1, i32* %i, align 4, !dbg !617
  br label %19, !dbg !617

; <label>:19                                      ; preds = %146, %18
  %20 = load i32* %i, align 4, !dbg !619
  %21 = load i32* %1, align 4, !dbg !619
  %22 = icmp slt i32 %20, %21, !dbg !619
  br i1 %22, label %23, label %149, !dbg !619

; <label>:23                                      ; preds = %19
  %24 = load i32* %i, align 4, !dbg !622
  %25 = load i8*** %2, align 4, !dbg !622
  %26 = getelementptr inbounds i8** %25, i32 %24, !dbg !622
  %27 = load i8** %26, align 4, !dbg !622
  %28 = load i8* %27, align 1, !dbg !622
  %29 = zext i8 %28 to i32, !dbg !622
  %30 = icmp ne i32 %29, 45, !dbg !622
  br i1 %30, label %31, label %32, !dbg !622

; <label>:31                                      ; preds = %23
  br label %149, !dbg !625

; <label>:32                                      ; preds = %23
  %33 = load i32* %i, align 4, !dbg !626
  %34 = load i8*** %2, align 4, !dbg !626
  %35 = getelementptr inbounds i8** %34, i32 %33, !dbg !626
  %36 = load i8** %35, align 4, !dbg !626
  %37 = call i32 @strcmp(i8* %36, i8* getelementptr inbounds ([3 x i8]* @.str65, i32 0, i32 0)) #6, !dbg !626
  %38 = icmp eq i32 %37, 0, !dbg !626
  br i1 %38, label %39, label %48, !dbg !626

; <label>:39                                      ; preds = %32
  %40 = load i32* %i, align 4, !dbg !628
  %41 = add nsw i32 %40, 1, !dbg !628
  store i32 %41, i32* %i, align 4, !dbg !628
  %42 = load i32* %version, align 4, !dbg !630
  %43 = icmp ne i32 %42, 0, !dbg !630
  br i1 %43, label %44, label %47, !dbg !630

; <label>:44                                      ; preds = %39
  %45 = load i32* %version, align 4, !dbg !632
  %46 = add nsw i32 %45, 1, !dbg !632
  store i32 %46, i32* %version, align 4, !dbg !632
  br label %47, !dbg !632

; <label>:47                                      ; preds = %44, %39
  br label %149, !dbg !634

; <label>:48                                      ; preds = %32
  %49 = load i32* %i, align 4, !dbg !635
  %50 = load i8*** %2, align 4, !dbg !635
  %51 = getelementptr inbounds i8** %50, i32 %49, !dbg !635
  %52 = load i8** %51, align 4, !dbg !635
  %53 = call i32 @strcmp(i8* %52, i8* getelementptr inbounds ([2 x i8]* @.str3, i32 0, i32 0)) #6, !dbg !635
  %54 = icmp eq i32 %53, 0, !dbg !635
  br i1 %54, label %55, label %56, !dbg !635

; <label>:55                                      ; preds = %48
  br label %149, !dbg !637

; <label>:56                                      ; preds = %48
  %57 = load i32* %i, align 4, !dbg !638
  %58 = load i8*** %2, align 4, !dbg !638
  %59 = getelementptr inbounds i8** %58, i32 %57, !dbg !638
  %60 = load i8** %59, align 4, !dbg !638
  %61 = call i32 @strcmp(i8* %60, i8* getelementptr inbounds ([3 x i8]* @.str66, i32 0, i32 0)) #6, !dbg !638
  %62 = icmp eq i32 %61, 0, !dbg !638
  br i1 %62, label %63, label %66, !dbg !638

; <label>:63                                      ; preds = %56
  %64 = load i32* @listing, align 4, !dbg !640
  %65 = add nsw i32 %64, 1, !dbg !640
  store i32 %65, i32* @listing, align 4, !dbg !640
  br label %142, !dbg !640

; <label>:66                                      ; preds = %56
  %67 = load i32* %i, align 4, !dbg !641
  %68 = load i8*** %2, align 4, !dbg !641
  %69 = getelementptr inbounds i8** %68, i32 %67, !dbg !641
  %70 = load i8** %69, align 4, !dbg !641
  %71 = call i32 @strcmp(i8* %70, i8* getelementptr inbounds ([3 x i8]* @.str67, i32 0, i32 0)) #6, !dbg !641
  %72 = icmp eq i32 %71, 0, !dbg !641
  br i1 %72, label %73, label %107, !dbg !641

; <label>:73                                      ; preds = %66
  %74 = load i32* %i, align 4, !dbg !643
  %75 = add nsw i32 %74, 1, !dbg !643
  store i32 %75, i32* %i, align 4, !dbg !643
  %76 = load i8*** %2, align 4, !dbg !643
  %77 = getelementptr inbounds i8** %76, i32 %75, !dbg !643
  %78 = load i8** %77, align 4, !dbg !643
  store i8* %78, i8** @output, align 4, !dbg !643
  %79 = load i8** @output, align 4, !dbg !645
  %80 = icmp eq i8* %79, null, !dbg !645
  br i1 %80, label %97, label %81, !dbg !645

; <label>:81                                      ; preds = %73
  %82 = load i8** @output, align 4, !dbg !647
  %83 = load i8* %82, align 1, !dbg !647
  %84 = zext i8 %83 to i32, !dbg !647
  %85 = icmp eq i32 %84, 0, !dbg !647
  br i1 %85, label %97, label %86, !dbg !647

; <label>:86                                      ; preds = %81
  %87 = load i8** @output, align 4, !dbg !649
  %88 = load i8* %87, align 1, !dbg !649
  %89 = zext i8 %88 to i32, !dbg !649
  %90 = icmp eq i32 %89, 45, !dbg !649
  br i1 %90, label %91, label %98, !dbg !649

; <label>:91                                      ; preds = %86
  %92 = load i8** @output, align 4, !dbg !651
  %93 = getelementptr inbounds i8* %92, i32 1, !dbg !651
  %94 = load i8* %93, align 1, !dbg !651
  %95 = zext i8 %94 to i32, !dbg !651
  %96 = icmp ne i32 %95, 0, !dbg !651
  br i1 %96, label %97, label %98, !dbg !651

; <label>:97                                      ; preds = %91, %81, %73
  call void @usage(i8* getelementptr inbounds ([20 x i8]* @.str68, i32 0, i32 0)), !dbg !653
  br label %98, !dbg !653

; <label>:98                                      ; preds = %97, %91, %86
  %99 = load i32* %i, align 4, !dbg !654
  %100 = load i8*** %2, align 4, !dbg !654
  %101 = getelementptr inbounds i8** %100, i32 %99, !dbg !654
  %102 = load i8** %101, align 4, !dbg !654
  %103 = call i32 @strcmp(i8* %102, i8* getelementptr inbounds ([2 x i8]* @.str3, i32 0, i32 0)) #6, !dbg !654
  %104 = icmp eq i32 %103, 0, !dbg !654
  br i1 %104, label %105, label %106, !dbg !654

; <label>:105                                     ; preds = %98
  store i8* null, i8** @output, align 4, !dbg !656
  br label %106, !dbg !656

; <label>:106                                     ; preds = %105, %98
  br label %141, !dbg !658

; <label>:107                                     ; preds = %66
  %108 = load i32* %i, align 4, !dbg !659
  %109 = load i8*** %2, align 4, !dbg !659
  %110 = getelementptr inbounds i8** %109, i32 %108, !dbg !659
  %111 = load i8** %110, align 4, !dbg !659
  %112 = call i32 @strcmp(i8* %111, i8* getelementptr inbounds ([3 x i8]* @.str69, i32 0, i32 0)) #6, !dbg !659
  %113 = icmp eq i32 %112, 0, !dbg !659
  br i1 %113, label %114, label %115, !dbg !659

; <label>:114                                     ; preds = %107
  store i32 0, i32* @dumping, align 4, !dbg !661
  br label %140, !dbg !661

; <label>:115                                     ; preds = %107
  %116 = load i32* %i, align 4, !dbg !662
  %117 = load i8*** %2, align 4, !dbg !662
  %118 = getelementptr inbounds i8** %117, i32 %116, !dbg !662
  %119 = load i8** %118, align 4, !dbg !662
  %120 = call i32 @strcmp(i8* %119, i8* getelementptr inbounds ([3 x i8]* @.str70, i32 0, i32 0)) #6, !dbg !662
  %121 = icmp eq i32 %120, 0, !dbg !662
  br i1 %121, label %122, label %123, !dbg !662

; <label>:122                                     ; preds = %115
  store i32 1, i32* @stripping, align 4, !dbg !664
  br label %139, !dbg !664

; <label>:123                                     ; preds = %115
  %124 = load i32* %i, align 4, !dbg !665
  %125 = load i8*** %2, align 4, !dbg !665
  %126 = getelementptr inbounds i8** %125, i32 %124, !dbg !665
  %127 = load i8** %126, align 4, !dbg !665
  %128 = call i32 @strcmp(i8* %127, i8* getelementptr inbounds ([3 x i8]* @.str71, i32 0, i32 0)) #6, !dbg !665
  %129 = icmp eq i32 %128, 0, !dbg !665
  br i1 %129, label %130, label %133, !dbg !665

; <label>:130                                     ; preds = %123
  %131 = load i32* %version, align 4, !dbg !667
  %132 = add nsw i32 %131, 1, !dbg !667
  store i32 %132, i32* %version, align 4, !dbg !667
  br label %138, !dbg !667

; <label>:133                                     ; preds = %123
  %134 = load i32* %i, align 4, !dbg !668
  %135 = load i8*** %2, align 4, !dbg !668
  %136 = getelementptr inbounds i8** %135, i32 %134, !dbg !668
  %137 = load i8** %136, align 4, !dbg !668
  call void @usage(i8* %137), !dbg !668
  br label %138

; <label>:138                                     ; preds = %133, %130
  br label %139

; <label>:139                                     ; preds = %138, %122
  br label %140

; <label>:140                                     ; preds = %139, %114
  br label %141

; <label>:141                                     ; preds = %140, %106
  br label %142

; <label>:142                                     ; preds = %141, %63
  br label %143

; <label>:143                                     ; preds = %142
  br label %144

; <label>:144                                     ; preds = %143
  br label %145

; <label>:145                                     ; preds = %144
  br label %146, !dbg !669

; <label>:146                                     ; preds = %145
  %147 = load i32* %i, align 4, !dbg !670
  %148 = add nsw i32 %147, 1, !dbg !670
  store i32 %148, i32* %i, align 4, !dbg !670
  br label %19, !dbg !670

; <label>:149                                     ; preds = %55, %47, %31, %19
  %150 = load i32* %i, align 4, !dbg !671
  %151 = load i32* %1, align 4, !dbg !671
  %152 = icmp eq i32 %150, %151, !dbg !671
  br i1 %152, label %153, label %164, !dbg !671

; <label>:153                                     ; preds = %149
  %154 = load i32* @listing, align 4, !dbg !673
  %155 = icmp ne i32 %154, 0, !dbg !673
  br i1 %155, label %159, label %156, !dbg !673

; <label>:156                                     ; preds = %153
  %157 = load i32* @dumping, align 4, !dbg !675
  %158 = icmp ne i32 %157, 0, !dbg !675
  br i1 %158, label %164, label %159, !dbg !675

; <label>:159                                     ; preds = %156, %153
  store i32 0, i32* @dumping, align 4, !dbg !677
  %160 = load i32* %i, align 4, !dbg !679
  %161 = add nsw i32 %160, -1, !dbg !679
  store i32 %161, i32* %i, align 4, !dbg !679
  %162 = load i8*** %2, align 4, !dbg !679
  %163 = getelementptr inbounds i8** %162, i32 %161, !dbg !679
  store i8* getelementptr inbounds ([9 x i8]* @Output, i32 0, i32 0), i8** %163, align 4, !dbg !679
  br label %164, !dbg !680

; <label>:164                                     ; preds = %159, %156, %149
  %165 = load i32* %version, align 4, !dbg !681
  %166 = icmp ne i32 %165, 0, !dbg !681
  br i1 %166, label %167, label %175, !dbg !681

; <label>:167                                     ; preds = %164
  %168 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str72, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8]* @.str73, i32 0, i32 0)), !dbg !683
  %169 = load i32* %version, align 4, !dbg !685
  %170 = load i32* %1, align 4, !dbg !685
  %171 = sub nsw i32 %170, 1, !dbg !685
  %172 = icmp eq i32 %169, %171, !dbg !685
  br i1 %172, label %173, label %174, !dbg !685

; <label>:173                                     ; preds = %167
  call void @exit(i32 0) #7, !dbg !687
  unreachable, !dbg !687

; <label>:174                                     ; preds = %167
  br label %175, !dbg !689

; <label>:175                                     ; preds = %174, %164
  %176 = load i32* %i, align 4, !dbg !690
  ret i32 %176, !dbg !690
}

; Function Attrs: nounwind
define internal void @usage(i8* %message) #0 {
  %1 = alloca i8*, align 4
  store i8* %message, i8** %1, align 4
  call void @llvm.dbg.declare(metadata !{i8** %1}, metadata !691), !dbg !692
  %2 = load i8** %1, align 4, !dbg !693
  %3 = load i8* %2, align 1, !dbg !693
  %4 = zext i8 %3 to i32, !dbg !693
  %5 = icmp eq i32 %4, 45, !dbg !693
  br i1 %5, label %6, label %11, !dbg !693

; <label>:6                                       ; preds = %0
  %7 = load %struct._IO_FILE** @stderr, align 4, !dbg !695
  %8 = load i8** @progname, align 4, !dbg !695
  %9 = load i8** %1, align 4, !dbg !695
  %10 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([30 x i8]* @.str63, i32 0, i32 0), i8* %8, i8* %9), !dbg !695
  br label %16, !dbg !695

; <label>:11                                      ; preds = %0
  %12 = load %struct._IO_FILE** @stderr, align 4, !dbg !696
  %13 = load i8** @progname, align 4, !dbg !696
  %14 = load i8** %1, align 4, !dbg !696
  %15 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([8 x i8]* @.str62, i32 0, i32 0), i8* %13, i8* %14), !dbg !696
  br label %16

; <label>:16                                      ; preds = %11, %6
  %17 = load %struct._IO_FILE** @stderr, align 4, !dbg !697
  %18 = load i8** @progname, align 4, !dbg !697
  %19 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([329 x i8]* @.str64, i32 0, i32 0), i8* %18, i8* getelementptr inbounds ([9 x i8]* @Output, i32 0, i32 0)), !dbg !697
  call void @exit(i32 1) #7, !dbg !698
  unreachable, !dbg !698
                                                  ; No predecessors!
  ret void, !dbg !699
}

declare %struct.lua_State* @luaL_newstate() #2

; Function Attrs: nounwind
define internal void @fatal(i8* %message) #0 {
  %1 = alloca i8*, align 4
  store i8* %message, i8** %1, align 4
  call void @llvm.dbg.declare(metadata !{i8** %1}, metadata !700), !dbg !701
  %2 = load %struct._IO_FILE** @stderr, align 4, !dbg !702
  %3 = load i8** @progname, align 4, !dbg !702
  %4 = load i8** %1, align 4, !dbg !702
  %5 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([8 x i8]* @.str62, i32 0, i32 0), i8* %3, i8* %4), !dbg !702
  call void @exit(i32 1) #7, !dbg !703
  unreachable, !dbg !703
                                                  ; No predecessors!
  ret void, !dbg !704
}

declare void @lua_pushcclosure(%struct.lua_State*, i32 (%struct.lua_State*)*, i32) #2

; Function Attrs: nounwind
define internal i32 @pmain(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %argc = alloca i32, align 4
  %argv = alloca i8**, align 4
  %f = alloca %struct.Proto*, align 4
  %i = alloca i32, align 4
  %filename = alloca i8*, align 4
  %D = alloca %struct._IO_FILE*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !705), !dbg !706
  call void @llvm.dbg.declare(metadata !{i32* %argc}, metadata !707), !dbg !708
  %2 = load %struct.lua_State** %1, align 4, !dbg !709
  %3 = call i64 @lua_tointegerx(%struct.lua_State* %2, i32 1, i32* null), !dbg !709
  %4 = trunc i64 %3 to i32, !dbg !709
  store i32 %4, i32* %argc, align 4, !dbg !709
  call void @llvm.dbg.declare(metadata !{i8*** %argv}, metadata !710), !dbg !711
  %5 = load %struct.lua_State** %1, align 4, !dbg !712
  %6 = call i8* @lua_touserdata(%struct.lua_State* %5, i32 2), !dbg !712
  %7 = bitcast i8* %6 to i8**, !dbg !712
  store i8** %7, i8*** %argv, align 4, !dbg !712
  call void @llvm.dbg.declare(metadata !{%struct.Proto** %f}, metadata !713), !dbg !714
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !715), !dbg !716
  %8 = load %struct.lua_State** %1, align 4, !dbg !717
  %9 = load i32* %argc, align 4, !dbg !717
  %10 = call i32 @lua_checkstack(%struct.lua_State* %8, i32 %9), !dbg !717
  %11 = icmp ne i32 %10, 0, !dbg !717
  br i1 %11, label %13, label %12, !dbg !717

; <label>:12                                      ; preds = %0
  call void @fatal(i8* getelementptr inbounds ([21 x i8]* @.str2, i32 0, i32 0)), !dbg !719
  br label %13, !dbg !719

; <label>:13                                      ; preds = %12, %0
  store i32 0, i32* %i, align 4, !dbg !721
  br label %14, !dbg !721

; <label>:14                                      ; preds = %41, %13
  %15 = load i32* %i, align 4, !dbg !723
  %16 = load i32* %argc, align 4, !dbg !723
  %17 = icmp slt i32 %15, %16, !dbg !723
  br i1 %17, label %18, label %44, !dbg !723

; <label>:18                                      ; preds = %14
  call void @llvm.dbg.declare(metadata !{i8** %filename}, metadata !726), !dbg !728
  %19 = load i32* %i, align 4, !dbg !729
  %20 = load i8*** %argv, align 4, !dbg !729
  %21 = getelementptr inbounds i8** %20, i32 %19, !dbg !729
  %22 = load i8** %21, align 4, !dbg !729
  %23 = call i32 @strcmp(i8* %22, i8* getelementptr inbounds ([2 x i8]* @.str3, i32 0, i32 0)) #6, !dbg !729
  %24 = icmp eq i32 %23, 0, !dbg !729
  br i1 %24, label %25, label %26, !dbg !729

; <label>:25                                      ; preds = %18
  br label %31, !dbg !730

; <label>:26                                      ; preds = %18
  %27 = load i32* %i, align 4, !dbg !732
  %28 = load i8*** %argv, align 4, !dbg !732
  %29 = getelementptr inbounds i8** %28, i32 %27, !dbg !732
  %30 = load i8** %29, align 4, !dbg !732
  br label %31, !dbg !732

; <label>:31                                      ; preds = %26, %25
  %32 = phi i8* [ null, %25 ], [ %30, %26 ], !dbg !729
  store i8* %32, i8** %filename, align 4, !dbg !734
  %33 = load %struct.lua_State** %1, align 4, !dbg !737
  %34 = load i8** %filename, align 4, !dbg !737
  %35 = call i32 @luaL_loadfilex(%struct.lua_State* %33, i8* %34, i8* null), !dbg !737
  %36 = icmp ne i32 %35, 0, !dbg !737
  br i1 %36, label %37, label %40, !dbg !737

; <label>:37                                      ; preds = %31
  %38 = load %struct.lua_State** %1, align 4, !dbg !739
  %39 = call i8* @lua_tolstring(%struct.lua_State* %38, i32 -1, i32* null), !dbg !739
  call void @fatal(i8* %39), !dbg !741
  br label %40, !dbg !741

; <label>:40                                      ; preds = %37, %31
  br label %41, !dbg !742

; <label>:41                                      ; preds = %40
  %42 = load i32* %i, align 4, !dbg !743
  %43 = add nsw i32 %42, 1, !dbg !743
  store i32 %43, i32* %i, align 4, !dbg !743
  br label %14, !dbg !743

; <label>:44                                      ; preds = %14
  %45 = load %struct.lua_State** %1, align 4, !dbg !744
  %46 = load i32* %argc, align 4, !dbg !744
  %47 = call %struct.Proto* @combine(%struct.lua_State* %45, i32 %46), !dbg !744
  store %struct.Proto* %47, %struct.Proto** %f, align 4, !dbg !744
  %48 = load i32* @listing, align 4, !dbg !745
  %49 = icmp ne i32 %48, 0, !dbg !745
  br i1 %49, label %50, label %55, !dbg !745

; <label>:50                                      ; preds = %44
  %51 = load %struct.Proto** %f, align 4, !dbg !747
  %52 = load i32* @listing, align 4, !dbg !747
  %53 = icmp sgt i32 %52, 1, !dbg !747
  %54 = zext i1 %53 to i32, !dbg !747
  call void @PrintFunction(%struct.Proto* %51, i32 %54), !dbg !747
  br label %55, !dbg !747

; <label>:55                                      ; preds = %50, %44
  %56 = load i32* @dumping, align 4, !dbg !749
  %57 = icmp ne i32 %56, 0, !dbg !749
  br i1 %57, label %58, label %88, !dbg !749

; <label>:58                                      ; preds = %55
  call void @llvm.dbg.declare(metadata !{%struct._IO_FILE** %D}, metadata !751), !dbg !807
  %59 = load i8** @output, align 4, !dbg !808
  %60 = icmp eq i8* %59, null, !dbg !808
  br i1 %60, label %61, label %63, !dbg !808

; <label>:61                                      ; preds = %58
  %62 = load %struct._IO_FILE** @stdout, align 4, !dbg !809
  br label %66, !dbg !809

; <label>:63                                      ; preds = %58
  %64 = load i8** @output, align 4, !dbg !811
  %65 = call %struct._IO_FILE* @fopen64(i8* %64, i8* getelementptr inbounds ([3 x i8]* @.str4, i32 0, i32 0)), !dbg !811
  br label %66, !dbg !811

; <label>:66                                      ; preds = %63, %61
  %67 = phi %struct._IO_FILE* [ %62, %61 ], [ %65, %63 ], !dbg !813
  store %struct._IO_FILE* %67, %struct._IO_FILE** %D, align 4, !dbg !814
  %68 = load %struct._IO_FILE** %D, align 4, !dbg !817
  %69 = icmp eq %struct._IO_FILE* %68, null, !dbg !817
  br i1 %69, label %70, label %71, !dbg !817

; <label>:70                                      ; preds = %66
  call void @cannot(i8* getelementptr inbounds ([5 x i8]* @.str5, i32 0, i32 0)), !dbg !819
  br label %71, !dbg !819

; <label>:71                                      ; preds = %70, %66
  %72 = load %struct.lua_State** %1, align 4, !dbg !821
  %73 = load %struct.Proto** %f, align 4, !dbg !821
  %74 = load %struct._IO_FILE** %D, align 4, !dbg !821
  %75 = bitcast %struct._IO_FILE* %74 to i8*, !dbg !821
  %76 = load i32* @stripping, align 4, !dbg !821
  %77 = call i32 @luaU_dump(%struct.lua_State* %72, %struct.Proto* %73, i32 (%struct.lua_State*, i8*, i32, i8*)* @writer, i8* %75, i32 %76), !dbg !821
  %78 = load %struct._IO_FILE** %D, align 4, !dbg !822
  %79 = call i32 @ferror(%struct._IO_FILE* %78) #8, !dbg !822
  %80 = icmp ne i32 %79, 0, !dbg !822
  br i1 %80, label %81, label %82, !dbg !822

; <label>:81                                      ; preds = %71
  call void @cannot(i8* getelementptr inbounds ([6 x i8]* @.str6, i32 0, i32 0)), !dbg !824
  br label %82, !dbg !824

; <label>:82                                      ; preds = %81, %71
  %83 = load %struct._IO_FILE** %D, align 4, !dbg !826
  %84 = call i32 @fclose(%struct._IO_FILE* %83), !dbg !826
  %85 = icmp ne i32 %84, 0, !dbg !826
  br i1 %85, label %86, label %87, !dbg !826

; <label>:86                                      ; preds = %82
  call void @cannot(i8* getelementptr inbounds ([6 x i8]* @.str7, i32 0, i32 0)), !dbg !828
  br label %87, !dbg !828

; <label>:87                                      ; preds = %86, %82
  br label %88, !dbg !830

; <label>:88                                      ; preds = %87, %55
  ret i32 0, !dbg !831
}

declare void @lua_pushinteger(%struct.lua_State*, i64) #2

declare void @lua_pushlightuserdata(%struct.lua_State*, i8*) #2

declare i32 @lua_pcallk(%struct.lua_State*, i32, i32, i32, i32, i32 (%struct.lua_State*, i32, i32)*) #2

declare i8* @lua_tolstring(%struct.lua_State*, i32, i32*) #2

declare void @lua_close(%struct.lua_State*) #2

declare i64 @lua_tointegerx(%struct.lua_State*, i32, i32*) #2

declare i8* @lua_touserdata(%struct.lua_State*, i32) #2

declare i32 @lua_checkstack(%struct.lua_State*, i32) #2

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

declare i32 @luaL_loadfilex(%struct.lua_State*, i8*, i8*) #2

; Function Attrs: nounwind
define internal %struct.Proto* @combine(%struct.lua_State* %L, i32 %n) #0 {
  %1 = alloca %struct.Proto*, align 4
  %2 = alloca %struct.lua_State*, align 4
  %3 = alloca i32, align 4
  %f = alloca %struct.Proto*, align 4
  %i = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %2}, metadata !832), !dbg !833
  store i32 %n, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !834), !dbg !835
  %4 = load i32* %3, align 4, !dbg !836
  %5 = icmp eq i32 %4, 1, !dbg !836
  br i1 %5, label %6, label %19, !dbg !836

; <label>:6                                       ; preds = %0
  %7 = load %struct.lua_State** %2, align 4, !dbg !838
  %8 = getelementptr inbounds %struct.lua_State* %7, i32 0, i32 5, !dbg !838
  %9 = load %struct.lua_TValue** %8, align 4, !dbg !838
  %10 = getelementptr inbounds %struct.lua_TValue* %9, i32 -1, !dbg !838
  %11 = getelementptr inbounds %struct.lua_TValue* %10, i32 0, i32 0, !dbg !838
  %12 = bitcast %union.Value* %11 to %struct.GCObject**, !dbg !838
  %13 = load %struct.GCObject** %12, align 4, !dbg !838
  %14 = bitcast %struct.GCObject* %13 to %union.GCUnion*, !dbg !838
  %15 = bitcast %union.GCUnion* %14 to %union.Closure*, !dbg !838
  %16 = bitcast %union.Closure* %15 to %struct.LClosure*, !dbg !838
  %17 = getelementptr inbounds %struct.LClosure* %16, i32 0, i32 5, !dbg !838
  %18 = load %struct.Proto** %17, align 4, !dbg !838
  store %struct.Proto* %18, %struct.Proto** %1, !dbg !838
  br label %95, !dbg !838

; <label>:19                                      ; preds = %0
  call void @llvm.dbg.declare(metadata !{%struct.Proto** %f}, metadata !839), !dbg !842
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !843), !dbg !844
  %20 = load i32* %3, align 4, !dbg !845
  store i32 %20, i32* %i, align 4, !dbg !845
  %21 = load %struct.lua_State** %2, align 4, !dbg !846
  %22 = bitcast i32* %i to i8*, !dbg !846
  %23 = call i32 @lua_load(%struct.lua_State* %21, i8* (%struct.lua_State*, i8*, i32*)* @reader, i8* %22, i8* getelementptr inbounds ([8 x i8]* @.str60, i32 0, i32 0), i8* null), !dbg !846
  %24 = icmp ne i32 %23, 0, !dbg !846
  br i1 %24, label %25, label %28, !dbg !846

; <label>:25                                      ; preds = %19
  %26 = load %struct.lua_State** %2, align 4, !dbg !848
  %27 = call i8* @lua_tolstring(%struct.lua_State* %26, i32 -1, i32* null), !dbg !848
  call void @fatal(i8* %27), !dbg !850
  br label %28, !dbg !850

; <label>:28                                      ; preds = %25, %19
  %29 = load %struct.lua_State** %2, align 4, !dbg !851
  %30 = getelementptr inbounds %struct.lua_State* %29, i32 0, i32 5, !dbg !851
  %31 = load %struct.lua_TValue** %30, align 4, !dbg !851
  %32 = getelementptr inbounds %struct.lua_TValue* %31, i32 -1, !dbg !851
  %33 = getelementptr inbounds %struct.lua_TValue* %32, i32 0, i32 0, !dbg !851
  %34 = bitcast %union.Value* %33 to %struct.GCObject**, !dbg !851
  %35 = load %struct.GCObject** %34, align 4, !dbg !851
  %36 = bitcast %struct.GCObject* %35 to %union.GCUnion*, !dbg !851
  %37 = bitcast %union.GCUnion* %36 to %union.Closure*, !dbg !851
  %38 = bitcast %union.Closure* %37 to %struct.LClosure*, !dbg !851
  %39 = getelementptr inbounds %struct.LClosure* %38, i32 0, i32 5, !dbg !851
  %40 = load %struct.Proto** %39, align 4, !dbg !851
  store %struct.Proto* %40, %struct.Proto** %f, align 4, !dbg !851
  store i32 0, i32* %i, align 4, !dbg !852
  br label %41, !dbg !852

; <label>:41                                      ; preds = %88, %28
  %42 = load i32* %i, align 4, !dbg !854
  %43 = load i32* %3, align 4, !dbg !854
  %44 = icmp slt i32 %42, %43, !dbg !854
  br i1 %44, label %45, label %91, !dbg !854

; <label>:45                                      ; preds = %41
  %46 = load %struct.lua_State** %2, align 4, !dbg !857
  %47 = getelementptr inbounds %struct.lua_State* %46, i32 0, i32 5, !dbg !857
  %48 = load %struct.lua_TValue** %47, align 4, !dbg !857
  %49 = load i32* %i, align 4, !dbg !857
  %50 = load i32* %3, align 4, !dbg !857
  %51 = sub nsw i32 %49, %50, !dbg !857
  %52 = sub nsw i32 %51, 1, !dbg !857
  %53 = getelementptr inbounds %struct.lua_TValue* %48, i32 %52, !dbg !857
  %54 = getelementptr inbounds %struct.lua_TValue* %53, i32 0, i32 0, !dbg !857
  %55 = bitcast %union.Value* %54 to %struct.GCObject**, !dbg !857
  %56 = load %struct.GCObject** %55, align 4, !dbg !857
  %57 = bitcast %struct.GCObject* %56 to %union.GCUnion*, !dbg !857
  %58 = bitcast %union.GCUnion* %57 to %union.Closure*, !dbg !857
  %59 = bitcast %union.Closure* %58 to %struct.LClosure*, !dbg !857
  %60 = getelementptr inbounds %struct.LClosure* %59, i32 0, i32 5, !dbg !857
  %61 = load %struct.Proto** %60, align 4, !dbg !857
  %62 = load i32* %i, align 4, !dbg !857
  %63 = load %struct.Proto** %f, align 4, !dbg !857
  %64 = getelementptr inbounds %struct.Proto* %63, i32 0, i32 16, !dbg !857
  %65 = load %struct.Proto*** %64, align 4, !dbg !857
  %66 = getelementptr inbounds %struct.Proto** %65, i32 %62, !dbg !857
  store %struct.Proto* %61, %struct.Proto** %66, align 4, !dbg !857
  %67 = load i32* %i, align 4, !dbg !859
  %68 = load %struct.Proto** %f, align 4, !dbg !859
  %69 = getelementptr inbounds %struct.Proto* %68, i32 0, i32 16, !dbg !859
  %70 = load %struct.Proto*** %69, align 4, !dbg !859
  %71 = getelementptr inbounds %struct.Proto** %70, i32 %67, !dbg !859
  %72 = load %struct.Proto** %71, align 4, !dbg !859
  %73 = getelementptr inbounds %struct.Proto* %72, i32 0, i32 6, !dbg !859
  %74 = load i32* %73, align 4, !dbg !859
  %75 = icmp sgt i32 %74, 0, !dbg !859
  br i1 %75, label %76, label %87, !dbg !859

; <label>:76                                      ; preds = %45
  %77 = load i32* %i, align 4, !dbg !861
  %78 = load %struct.Proto** %f, align 4, !dbg !861
  %79 = getelementptr inbounds %struct.Proto* %78, i32 0, i32 16, !dbg !861
  %80 = load %struct.Proto*** %79, align 4, !dbg !861
  %81 = getelementptr inbounds %struct.Proto** %80, i32 %77, !dbg !861
  %82 = load %struct.Proto** %81, align 4, !dbg !861
  %83 = getelementptr inbounds %struct.Proto* %82, i32 0, i32 19, !dbg !861
  %84 = load %struct.Upvaldesc** %83, align 4, !dbg !861
  %85 = getelementptr inbounds %struct.Upvaldesc* %84, i32 0, !dbg !861
  %86 = getelementptr inbounds %struct.Upvaldesc* %85, i32 0, i32 1, !dbg !861
  store i8 0, i8* %86, align 1, !dbg !861
  br label %87, !dbg !861

; <label>:87                                      ; preds = %76, %45
  br label %88, !dbg !863

; <label>:88                                      ; preds = %87
  %89 = load i32* %i, align 4, !dbg !864
  %90 = add nsw i32 %89, 1, !dbg !864
  store i32 %90, i32* %i, align 4, !dbg !864
  br label %41, !dbg !864

; <label>:91                                      ; preds = %41
  %92 = load %struct.Proto** %f, align 4, !dbg !865
  %93 = getelementptr inbounds %struct.Proto* %92, i32 0, i32 9, !dbg !865
  store i32 0, i32* %93, align 4, !dbg !865
  %94 = load %struct.Proto** %f, align 4, !dbg !866
  store %struct.Proto* %94, %struct.Proto** %1, !dbg !866
  br label %95, !dbg !866

; <label>:95                                      ; preds = %91, %6
  %96 = load %struct.Proto** %1, !dbg !867
  ret %struct.Proto* %96, !dbg !867
}

; Function Attrs: nounwind
define internal void @PrintFunction(%struct.Proto* %f, i32 %full) #0 {
  %1 = alloca %struct.Proto*, align 4
  %2 = alloca i32, align 4
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  store %struct.Proto* %f, %struct.Proto** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.Proto** %1}, metadata !868), !dbg !869
  store i32 %full, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !870), !dbg !871
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !872), !dbg !873
  call void @llvm.dbg.declare(metadata !{i32* %n}, metadata !874), !dbg !875
  %3 = load %struct.Proto** %1, align 4, !dbg !876
  %4 = getelementptr inbounds %struct.Proto* %3, i32 0, i32 10, !dbg !876
  %5 = load i32* %4, align 4, !dbg !876
  store i32 %5, i32* %n, align 4, !dbg !876
  %6 = load %struct.Proto** %1, align 4, !dbg !877
  call void @PrintHeader(%struct.Proto* %6), !dbg !877
  %7 = load %struct.Proto** %1, align 4, !dbg !878
  call void @PrintCode(%struct.Proto* %7), !dbg !878
  %8 = load i32* %2, align 4, !dbg !879
  %9 = icmp ne i32 %8, 0, !dbg !879
  br i1 %9, label %10, label %12, !dbg !879

; <label>:10                                      ; preds = %0
  %11 = load %struct.Proto** %1, align 4, !dbg !881
  call void @PrintDebug(%struct.Proto* %11), !dbg !881
  br label %12, !dbg !881

; <label>:12                                      ; preds = %10, %0
  store i32 0, i32* %i, align 4, !dbg !883
  br label %13, !dbg !883

; <label>:13                                      ; preds = %25, %12
  %14 = load i32* %i, align 4, !dbg !885
  %15 = load i32* %n, align 4, !dbg !885
  %16 = icmp slt i32 %14, %15, !dbg !885
  br i1 %16, label %17, label %28, !dbg !885

; <label>:17                                      ; preds = %13
  %18 = load i32* %i, align 4, !dbg !888
  %19 = load %struct.Proto** %1, align 4, !dbg !888
  %20 = getelementptr inbounds %struct.Proto* %19, i32 0, i32 16, !dbg !888
  %21 = load %struct.Proto*** %20, align 4, !dbg !888
  %22 = getelementptr inbounds %struct.Proto** %21, i32 %18, !dbg !888
  %23 = load %struct.Proto** %22, align 4, !dbg !888
  %24 = load i32* %2, align 4, !dbg !888
  call void @PrintFunction(%struct.Proto* %23, i32 %24), !dbg !888
  br label %25, !dbg !888

; <label>:25                                      ; preds = %17
  %26 = load i32* %i, align 4, !dbg !890
  %27 = add nsw i32 %26, 1, !dbg !890
  store i32 %27, i32* %i, align 4, !dbg !890
  br label %13, !dbg !890

; <label>:28                                      ; preds = %13
  ret void, !dbg !892
}

declare %struct._IO_FILE* @fopen64(i8*, i8*) #2

; Function Attrs: nounwind
define internal void @cannot(i8* %what) #0 {
  %1 = alloca i8*, align 4
  store i8* %what, i8** %1, align 4
  call void @llvm.dbg.declare(metadata !{i8** %1}, metadata !893), !dbg !894
  %2 = load %struct._IO_FILE** @stderr, align 4, !dbg !895
  %3 = load i8** @progname, align 4, !dbg !895
  %4 = load i8** %1, align 4, !dbg !895
  %5 = load i8** @output, align 4, !dbg !895
  %6 = call i32* @__errno_location() #1, !dbg !896
  %7 = load i32* %6, align 4, !dbg !896
  %8 = call i8* @strerror(i32 %7) #8, !dbg !897
  %9 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([22 x i8]* @.str8, i32 0, i32 0), i8* %3, i8* %4, i8* %5, i8* %8), !dbg !895
  call void @exit(i32 1) #7, !dbg !898
  unreachable, !dbg !898
                                                  ; No predecessors!
  ret void, !dbg !899
}

declare hidden i32 @luaU_dump(%struct.lua_State*, %struct.Proto*, i32 (%struct.lua_State*, i8*, i32, i8*)*, i8*, i32) #2

; Function Attrs: nounwind
define internal i32 @writer(%struct.lua_State* %L, i8* %p, i32 %size, i8* %u) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca i8*, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !900), !dbg !901
  store i8* %p, i8** %2, align 4
  call void @llvm.dbg.declare(metadata !{i8** %2}, metadata !902), !dbg !903
  store i32 %size, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !904), !dbg !905
  store i8* %u, i8** %4, align 4
  call void @llvm.dbg.declare(metadata !{i8** %4}, metadata !906), !dbg !907
  %5 = load %struct.lua_State** %1, align 4, !dbg !908
  %6 = load i8** %2, align 4, !dbg !909
  %7 = load i32* %3, align 4, !dbg !909
  %8 = load i8** %4, align 4, !dbg !909
  %9 = bitcast i8* %8 to %struct._IO_FILE*, !dbg !909
  %10 = call i32 @fwrite(i8* %6, i32 %7, i32 1, %struct._IO_FILE* %9), !dbg !909
  %11 = icmp ne i32 %10, 1, !dbg !909
  br i1 %11, label %12, label %15, !dbg !909

; <label>:12                                      ; preds = %0
  %13 = load i32* %3, align 4, !dbg !910
  %14 = icmp ne i32 %13, 0, !dbg !910
  br label %15

; <label>:15                                      ; preds = %12, %0
  %16 = phi i1 [ false, %0 ], [ %14, %12 ]
  %17 = zext i1 %16 to i32, !dbg !912
  ret i32 %17, !dbg !912
}

; Function Attrs: nounwind
declare i32 @ferror(%struct._IO_FILE*) #0

declare i32 @fclose(%struct._IO_FILE*) #2

declare i32 @fwrite(i8*, i32, i32, %struct._IO_FILE*) #2

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: nounwind
declare i8* @strerror(i32) #0

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #4

; Function Attrs: noreturn nounwind
declare void @exit(i32) #5

; Function Attrs: nounwind
define internal void @PrintHeader(%struct.Proto* %f) #0 {
  %1 = alloca %struct.Proto*, align 4
  %s = alloca i8*, align 4
  store %struct.Proto* %f, %struct.Proto** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.Proto** %1}, metadata !914), !dbg !915
  call void @llvm.dbg.declare(metadata !{i8** %s}, metadata !916), !dbg !917
  %2 = load %struct.Proto** %1, align 4, !dbg !918
  %3 = getelementptr inbounds %struct.Proto* %2, i32 0, i32 21, !dbg !918
  %4 = load %struct.TString** %3, align 4, !dbg !918
  %5 = icmp ne %struct.TString* %4, null, !dbg !918
  br i1 %5, label %6, label %12, !dbg !918

; <label>:6                                       ; preds = %0
  %7 = load %struct.Proto** %1, align 4, !dbg !919
  %8 = getelementptr inbounds %struct.Proto* %7, i32 0, i32 21, !dbg !919
  %9 = load %struct.TString** %8, align 4, !dbg !919
  %10 = bitcast %struct.TString* %9 to i8*, !dbg !919
  %11 = getelementptr inbounds i8* %10, i32 16, !dbg !919
  br label %13, !dbg !919

; <label>:12                                      ; preds = %0
  br label %13, !dbg !921

; <label>:13                                      ; preds = %12, %6
  %14 = phi i8* [ %11, %6 ], [ getelementptr inbounds ([3 x i8]* @.str48, i32 0, i32 0), %12 ], !dbg !918
  store i8* %14, i8** %s, align 4, !dbg !923
  %15 = load i8** %s, align 4, !dbg !926
  %16 = load i8* %15, align 1, !dbg !926
  %17 = zext i8 %16 to i32, !dbg !926
  %18 = icmp eq i32 %17, 64, !dbg !926
  br i1 %18, label %24, label %19, !dbg !926

; <label>:19                                      ; preds = %13
  %20 = load i8** %s, align 4, !dbg !928
  %21 = load i8* %20, align 1, !dbg !928
  %22 = zext i8 %21 to i32, !dbg !928
  %23 = icmp eq i32 %22, 61, !dbg !928
  br i1 %23, label %24, label %27, !dbg !928

; <label>:24                                      ; preds = %19, %13
  %25 = load i8** %s, align 4, !dbg !930
  %26 = getelementptr inbounds i8* %25, i32 1, !dbg !930
  store i8* %26, i8** %s, align 4, !dbg !930
  br label %37, !dbg !930

; <label>:27                                      ; preds = %19
  %28 = load i8** %s, align 4, !dbg !931
  %29 = load i8* %28, align 1, !dbg !931
  %30 = zext i8 %29 to i32, !dbg !931
  %31 = load i8* getelementptr inbounds ([5 x i8]* @.str49, i32 0, i32 0), align 1, !dbg !931
  %32 = zext i8 %31 to i32, !dbg !931
  %33 = icmp eq i32 %30, %32, !dbg !931
  br i1 %33, label %34, label %35, !dbg !931

; <label>:34                                      ; preds = %27
  store i8* getelementptr inbounds ([10 x i8]* @.str50, i32 0, i32 0), i8** %s, align 4, !dbg !933
  br label %36, !dbg !933

; <label>:35                                      ; preds = %27
  store i8* getelementptr inbounds ([9 x i8]* @.str51, i32 0, i32 0), i8** %s, align 4, !dbg !934
  br label %36

; <label>:36                                      ; preds = %35, %34
  br label %37

; <label>:37                                      ; preds = %36, %24
  %38 = load %struct.Proto** %1, align 4, !dbg !935
  %39 = getelementptr inbounds %struct.Proto* %38, i32 0, i32 12, !dbg !935
  %40 = load i32* %39, align 4, !dbg !935
  %41 = icmp eq i32 %40, 0, !dbg !935
  %42 = select i1 %41, i8* getelementptr inbounds ([5 x i8]* @.str53, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str54, i32 0, i32 0), !dbg !935
  %43 = load i8** %s, align 4, !dbg !935
  %44 = load %struct.Proto** %1, align 4, !dbg !935
  %45 = getelementptr inbounds %struct.Proto* %44, i32 0, i32 12, !dbg !935
  %46 = load i32* %45, align 4, !dbg !935
  %47 = load %struct.Proto** %1, align 4, !dbg !935
  %48 = getelementptr inbounds %struct.Proto* %47, i32 0, i32 13, !dbg !935
  %49 = load i32* %48, align 4, !dbg !935
  %50 = load %struct.Proto** %1, align 4, !dbg !935
  %51 = getelementptr inbounds %struct.Proto* %50, i32 0, i32 8, !dbg !935
  %52 = load i32* %51, align 4, !dbg !935
  %53 = load %struct.Proto** %1, align 4, !dbg !935
  %54 = getelementptr inbounds %struct.Proto* %53, i32 0, i32 8, !dbg !935
  %55 = load i32* %54, align 4, !dbg !935
  %56 = icmp eq i32 %55, 1, !dbg !935
  %57 = select i1 %56, i8* getelementptr inbounds ([1 x i8]* @.str55, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str56, i32 0, i32 0), !dbg !935
  %58 = load %struct.Proto** %1, align 4, !dbg !935
  %59 = bitcast %struct.Proto* %58 to i8*, !dbg !935
  %60 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([41 x i8]* @.str52, i32 0, i32 0), i8* %42, i8* %43, i32 %46, i32 %49, i32 %52, i8* %57, i8* %59), !dbg !935
  %61 = load %struct.Proto** %1, align 4, !dbg !936
  %62 = getelementptr inbounds %struct.Proto* %61, i32 0, i32 3, !dbg !936
  %63 = load i8* %62, align 1, !dbg !936
  %64 = zext i8 %63 to i32, !dbg !936
  %65 = load %struct.Proto** %1, align 4, !dbg !936
  %66 = getelementptr inbounds %struct.Proto* %65, i32 0, i32 4, !dbg !936
  %67 = load i8* %66, align 1, !dbg !936
  %68 = zext i8 %67 to i32, !dbg !936
  %69 = icmp ne i32 %68, 0, !dbg !936
  %70 = select i1 %69, i8* getelementptr inbounds ([2 x i8]* @.str58, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str55, i32 0, i32 0), !dbg !936
  %71 = load %struct.Proto** %1, align 4, !dbg !936
  %72 = getelementptr inbounds %struct.Proto* %71, i32 0, i32 3, !dbg !936
  %73 = load i8* %72, align 1, !dbg !936
  %74 = zext i8 %73 to i32, !dbg !936
  %75 = icmp eq i32 %74, 1, !dbg !936
  %76 = select i1 %75, i8* getelementptr inbounds ([1 x i8]* @.str55, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str56, i32 0, i32 0), !dbg !936
  %77 = load %struct.Proto** %1, align 4, !dbg !936
  %78 = getelementptr inbounds %struct.Proto* %77, i32 0, i32 5, !dbg !936
  %79 = load i8* %78, align 1, !dbg !936
  %80 = zext i8 %79 to i32, !dbg !936
  %81 = load %struct.Proto** %1, align 4, !dbg !936
  %82 = getelementptr inbounds %struct.Proto* %81, i32 0, i32 5, !dbg !936
  %83 = load i8* %82, align 1, !dbg !936
  %84 = zext i8 %83 to i32, !dbg !936
  %85 = icmp eq i32 %84, 1, !dbg !936
  %86 = select i1 %85, i8* getelementptr inbounds ([1 x i8]* @.str55, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str56, i32 0, i32 0), !dbg !936
  %87 = load %struct.Proto** %1, align 4, !dbg !936
  %88 = getelementptr inbounds %struct.Proto* %87, i32 0, i32 6, !dbg !936
  %89 = load i32* %88, align 4, !dbg !936
  %90 = load %struct.Proto** %1, align 4, !dbg !936
  %91 = getelementptr inbounds %struct.Proto* %90, i32 0, i32 6, !dbg !936
  %92 = load i32* %91, align 4, !dbg !936
  %93 = icmp eq i32 %92, 1, !dbg !936
  %94 = select i1 %93, i8* getelementptr inbounds ([1 x i8]* @.str55, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str56, i32 0, i32 0), !dbg !936
  %95 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([40 x i8]* @.str57, i32 0, i32 0), i32 %64, i8* %70, i8* %76, i32 %80, i8* %86, i32 %89, i8* %94), !dbg !936
  %96 = load %struct.Proto** %1, align 4, !dbg !937
  %97 = getelementptr inbounds %struct.Proto* %96, i32 0, i32 11, !dbg !937
  %98 = load i32* %97, align 4, !dbg !937
  %99 = load %struct.Proto** %1, align 4, !dbg !937
  %100 = getelementptr inbounds %struct.Proto* %99, i32 0, i32 11, !dbg !937
  %101 = load i32* %100, align 4, !dbg !937
  %102 = icmp eq i32 %101, 1, !dbg !937
  %103 = select i1 %102, i8* getelementptr inbounds ([1 x i8]* @.str55, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str56, i32 0, i32 0), !dbg !937
  %104 = load %struct.Proto** %1, align 4, !dbg !937
  %105 = getelementptr inbounds %struct.Proto* %104, i32 0, i32 7, !dbg !937
  %106 = load i32* %105, align 4, !dbg !937
  %107 = load %struct.Proto** %1, align 4, !dbg !937
  %108 = getelementptr inbounds %struct.Proto* %107, i32 0, i32 7, !dbg !937
  %109 = load i32* %108, align 4, !dbg !937
  %110 = icmp eq i32 %109, 1, !dbg !937
  %111 = select i1 %110, i8* getelementptr inbounds ([1 x i8]* @.str55, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str56, i32 0, i32 0), !dbg !937
  %112 = load %struct.Proto** %1, align 4, !dbg !937
  %113 = getelementptr inbounds %struct.Proto* %112, i32 0, i32 10, !dbg !937
  %114 = load i32* %113, align 4, !dbg !937
  %115 = load %struct.Proto** %1, align 4, !dbg !937
  %116 = getelementptr inbounds %struct.Proto* %115, i32 0, i32 10, !dbg !937
  %117 = load i32* %116, align 4, !dbg !937
  %118 = icmp eq i32 %117, 1, !dbg !937
  %119 = select i1 %118, i8* getelementptr inbounds ([1 x i8]* @.str55, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str56, i32 0, i32 0), !dbg !937
  %120 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([42 x i8]* @.str59, i32 0, i32 0), i32 %98, i8* %103, i32 %106, i8* %111, i32 %114, i8* %119), !dbg !937
  ret void, !dbg !938
}

; Function Attrs: nounwind
define internal void @PrintCode(%struct.Proto* %f) #0 {
  %1 = alloca %struct.Proto*, align 4
  %code = alloca i32*, align 4
  %pc = alloca i32, align 4
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %o = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  %ax = alloca i32, align 4
  %bx = alloca i32, align 4
  %sbx = alloca i32, align 4
  %line = alloca i32, align 4
  store %struct.Proto* %f, %struct.Proto** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.Proto** %1}, metadata !939), !dbg !940
  call void @llvm.dbg.declare(metadata !{i32** %code}, metadata !941), !dbg !942
  %2 = load %struct.Proto** %1, align 4, !dbg !943
  %3 = getelementptr inbounds %struct.Proto* %2, i32 0, i32 15, !dbg !943
  %4 = load i32** %3, align 4, !dbg !943
  store i32* %4, i32** %code, align 4, !dbg !943
  call void @llvm.dbg.declare(metadata !{i32* %pc}, metadata !944), !dbg !945
  call void @llvm.dbg.declare(metadata !{i32* %n}, metadata !946), !dbg !947
  %5 = load %struct.Proto** %1, align 4, !dbg !948
  %6 = getelementptr inbounds %struct.Proto* %5, i32 0, i32 8, !dbg !948
  %7 = load i32* %6, align 4, !dbg !948
  store i32 %7, i32* %n, align 4, !dbg !948
  store i32 0, i32* %pc, align 4, !dbg !949
  br label %8, !dbg !949

; <label>:8                                       ; preds = %332, %0
  %9 = load i32* %pc, align 4, !dbg !951
  %10 = load i32* %n, align 4, !dbg !951
  %11 = icmp slt i32 %9, %10, !dbg !951
  br i1 %11, label %12, label %335, !dbg !951

; <label>:12                                      ; preds = %8
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !954), !dbg !956
  %13 = load i32* %pc, align 4, !dbg !957
  %14 = load i32** %code, align 4, !dbg !957
  %15 = getelementptr inbounds i32* %14, i32 %13, !dbg !957
  %16 = load i32* %15, align 4, !dbg !957
  store i32 %16, i32* %i, align 4, !dbg !957
  call void @llvm.dbg.declare(metadata !{i32* %o}, metadata !958), !dbg !960
  %17 = load i32* %i, align 4, !dbg !961
  %18 = lshr i32 %17, 0, !dbg !961
  %19 = and i32 %18, 63, !dbg !961
  store i32 %19, i32* %o, align 4, !dbg !961
  call void @llvm.dbg.declare(metadata !{i32* %a}, metadata !962), !dbg !963
  %20 = load i32* %i, align 4, !dbg !964
  %21 = lshr i32 %20, 6, !dbg !964
  %22 = and i32 %21, 255, !dbg !964
  store i32 %22, i32* %a, align 4, !dbg !964
  call void @llvm.dbg.declare(metadata !{i32* %b}, metadata !965), !dbg !966
  %23 = load i32* %i, align 4, !dbg !967
  %24 = lshr i32 %23, 23, !dbg !967
  %25 = and i32 %24, 511, !dbg !967
  store i32 %25, i32* %b, align 4, !dbg !967
  call void @llvm.dbg.declare(metadata !{i32* %c}, metadata !968), !dbg !969
  %26 = load i32* %i, align 4, !dbg !970
  %27 = lshr i32 %26, 14, !dbg !970
  %28 = and i32 %27, 511, !dbg !970
  store i32 %28, i32* %c, align 4, !dbg !970
  call void @llvm.dbg.declare(metadata !{i32* %ax}, metadata !971), !dbg !972
  %29 = load i32* %i, align 4, !dbg !973
  %30 = lshr i32 %29, 6, !dbg !973
  %31 = and i32 %30, 67108863, !dbg !973
  store i32 %31, i32* %ax, align 4, !dbg !973
  call void @llvm.dbg.declare(metadata !{i32* %bx}, metadata !974), !dbg !975
  %32 = load i32* %i, align 4, !dbg !976
  %33 = lshr i32 %32, 14, !dbg !976
  %34 = and i32 %33, 262143, !dbg !976
  store i32 %34, i32* %bx, align 4, !dbg !976
  call void @llvm.dbg.declare(metadata !{i32* %sbx}, metadata !977), !dbg !978
  %35 = load i32* %i, align 4, !dbg !979
  %36 = lshr i32 %35, 14, !dbg !979
  %37 = and i32 %36, 262143, !dbg !979
  %38 = sub nsw i32 %37, 131071, !dbg !979
  store i32 %38, i32* %sbx, align 4, !dbg !979
  call void @llvm.dbg.declare(metadata !{i32* %line}, metadata !980), !dbg !981
  %39 = load %struct.Proto** %1, align 4, !dbg !982
  %40 = getelementptr inbounds %struct.Proto* %39, i32 0, i32 17, !dbg !982
  %41 = load i32** %40, align 4, !dbg !982
  %42 = icmp ne i32* %41, null, !dbg !982
  br i1 %42, label %43, label %50, !dbg !982

; <label>:43                                      ; preds = %12
  %44 = load i32* %pc, align 4, !dbg !983
  %45 = load %struct.Proto** %1, align 4, !dbg !983
  %46 = getelementptr inbounds %struct.Proto* %45, i32 0, i32 17, !dbg !983
  %47 = load i32** %46, align 4, !dbg !983
  %48 = getelementptr inbounds i32* %47, i32 %44, !dbg !983
  %49 = load i32* %48, align 4, !dbg !983
  br label %51, !dbg !983

; <label>:50                                      ; preds = %12
  br label %51, !dbg !985

; <label>:51                                      ; preds = %50, %43
  %52 = phi i32 [ %49, %43 ], [ -1, %50 ], !dbg !982
  store i32 %52, i32* %line, align 4, !dbg !987
  %53 = load i32* %pc, align 4, !dbg !990
  %54 = add nsw i32 %53, 1, !dbg !990
  %55 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([5 x i8]* @.str11, i32 0, i32 0), i32 %54), !dbg !990
  %56 = load i32* %line, align 4, !dbg !991
  %57 = icmp sgt i32 %56, 0, !dbg !991
  br i1 %57, label %58, label %61, !dbg !991

; <label>:58                                      ; preds = %51
  %59 = load i32* %line, align 4, !dbg !993
  %60 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([6 x i8]* @.str36, i32 0, i32 0), i32 %59), !dbg !993
  br label %63, !dbg !993

; <label>:61                                      ; preds = %51
  %62 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([5 x i8]* @.str37, i32 0, i32 0)), !dbg !995
  br label %63

; <label>:63                                      ; preds = %61, %58
  %64 = load i32* %o, align 4, !dbg !997
  %65 = getelementptr inbounds [48 x i8*]* @luaP_opnames, i32 0, i32 %64, !dbg !997
  %66 = load i8** %65, align 4, !dbg !997
  %67 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([6 x i8]* @.str38, i32 0, i32 0), i8* %66), !dbg !997
  %68 = load i32* %o, align 4, !dbg !998
  %69 = getelementptr inbounds [47 x i8]* @luaP_opmodes, i32 0, i32 %68, !dbg !998
  %70 = load i8* %69, align 1, !dbg !998
  %71 = zext i8 %70 to i32, !dbg !998
  %72 = and i32 %71, 3, !dbg !998
  switch i32 %72, label %152 [
    i32 0, label %73
    i32 1, label %118
    i32 2, label %144
    i32 3, label %148
  ], !dbg !998

; <label>:73                                      ; preds = %63
  %74 = load i32* %a, align 4, !dbg !999
  %75 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([3 x i8]* @.str39, i32 0, i32 0), i32 %74), !dbg !999
  %76 = load i32* %o, align 4, !dbg !1001
  %77 = getelementptr inbounds [47 x i8]* @luaP_opmodes, i32 0, i32 %76, !dbg !1001
  %78 = load i8* %77, align 1, !dbg !1001
  %79 = zext i8 %78 to i32, !dbg !1001
  %80 = ashr i32 %79, 4, !dbg !1001
  %81 = and i32 %80, 3, !dbg !1001
  %82 = icmp ne i32 %81, 0, !dbg !1001
  br i1 %82, label %83, label %96, !dbg !1001

; <label>:83                                      ; preds = %73
  %84 = load i32* %b, align 4, !dbg !1003
  %85 = and i32 %84, 256, !dbg !1003
  %86 = icmp ne i32 %85, 0, !dbg !1003
  br i1 %86, label %87, label %91, !dbg !1003

; <label>:87                                      ; preds = %83
  %88 = load i32* %b, align 4, !dbg !1005
  %89 = and i32 %88, -257, !dbg !1005
  %90 = sub nsw i32 -1, %89, !dbg !1005
  br label %93, !dbg !1005

; <label>:91                                      ; preds = %83
  %92 = load i32* %b, align 4, !dbg !1007
  br label %93, !dbg !1007

; <label>:93                                      ; preds = %91, %87
  %94 = phi i32 [ %90, %87 ], [ %92, %91 ], !dbg !1009
  %95 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str40, i32 0, i32 0), i32 %94), !dbg !1010
  br label %96, !dbg !1010

; <label>:96                                      ; preds = %93, %73
  %97 = load i32* %o, align 4, !dbg !1013
  %98 = getelementptr inbounds [47 x i8]* @luaP_opmodes, i32 0, i32 %97, !dbg !1013
  %99 = load i8* %98, align 1, !dbg !1013
  %100 = zext i8 %99 to i32, !dbg !1013
  %101 = ashr i32 %100, 2, !dbg !1013
  %102 = and i32 %101, 3, !dbg !1013
  %103 = icmp ne i32 %102, 0, !dbg !1013
  br i1 %103, label %104, label %117, !dbg !1013

; <label>:104                                     ; preds = %96
  %105 = load i32* %c, align 4, !dbg !1015
  %106 = and i32 %105, 256, !dbg !1015
  %107 = icmp ne i32 %106, 0, !dbg !1015
  br i1 %107, label %108, label %112, !dbg !1015

; <label>:108                                     ; preds = %104
  %109 = load i32* %c, align 4, !dbg !1017
  %110 = and i32 %109, -257, !dbg !1017
  %111 = sub nsw i32 -1, %110, !dbg !1017
  br label %114, !dbg !1017

; <label>:112                                     ; preds = %104
  %113 = load i32* %c, align 4, !dbg !1019
  br label %114, !dbg !1019

; <label>:114                                     ; preds = %112, %108
  %115 = phi i32 [ %111, %108 ], [ %113, %112 ], !dbg !1021
  %116 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str40, i32 0, i32 0), i32 %115), !dbg !1022
  br label %117, !dbg !1022

; <label>:117                                     ; preds = %114, %96
  br label %152, !dbg !1025

; <label>:118                                     ; preds = %63
  %119 = load i32* %a, align 4, !dbg !1026
  %120 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([3 x i8]* @.str39, i32 0, i32 0), i32 %119), !dbg !1026
  %121 = load i32* %o, align 4, !dbg !1027
  %122 = getelementptr inbounds [47 x i8]* @luaP_opmodes, i32 0, i32 %121, !dbg !1027
  %123 = load i8* %122, align 1, !dbg !1027
  %124 = zext i8 %123 to i32, !dbg !1027
  %125 = ashr i32 %124, 4, !dbg !1027
  %126 = and i32 %125, 3, !dbg !1027
  %127 = icmp eq i32 %126, 3, !dbg !1027
  br i1 %127, label %128, label %132, !dbg !1027

; <label>:128                                     ; preds = %118
  %129 = load i32* %bx, align 4, !dbg !1029
  %130 = sub nsw i32 -1, %129, !dbg !1029
  %131 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str40, i32 0, i32 0), i32 %130), !dbg !1029
  br label %132, !dbg !1029

; <label>:132                                     ; preds = %128, %118
  %133 = load i32* %o, align 4, !dbg !1031
  %134 = getelementptr inbounds [47 x i8]* @luaP_opmodes, i32 0, i32 %133, !dbg !1031
  %135 = load i8* %134, align 1, !dbg !1031
  %136 = zext i8 %135 to i32, !dbg !1031
  %137 = ashr i32 %136, 4, !dbg !1031
  %138 = and i32 %137, 3, !dbg !1031
  %139 = icmp eq i32 %138, 1, !dbg !1031
  br i1 %139, label %140, label %143, !dbg !1031

; <label>:140                                     ; preds = %132
  %141 = load i32* %bx, align 4, !dbg !1033
  %142 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str40, i32 0, i32 0), i32 %141), !dbg !1033
  br label %143, !dbg !1033

; <label>:143                                     ; preds = %140, %132
  br label %152, !dbg !1035

; <label>:144                                     ; preds = %63
  %145 = load i32* %a, align 4, !dbg !1036
  %146 = load i32* %sbx, align 4, !dbg !1036
  %147 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([6 x i8]* @.str41, i32 0, i32 0), i32 %145, i32 %146), !dbg !1036
  br label %152, !dbg !1037

; <label>:148                                     ; preds = %63
  %149 = load i32* %ax, align 4, !dbg !1038
  %150 = sub nsw i32 -1, %149, !dbg !1038
  %151 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([3 x i8]* @.str39, i32 0, i32 0), i32 %150), !dbg !1038
  br label %152, !dbg !1039

; <label>:152                                     ; preds = %63, %148, %144, %143, %117
  %153 = load i32* %o, align 4, !dbg !1040
  switch i32 %153, label %329 [
    i32 1, label %154
    i32 5, label %158
    i32 9, label %158
    i32 6, label %181
    i32 8, label %213
    i32 7, label %254
    i32 12, label %254
    i32 10, label %264
    i32 13, label %264
    i32 14, label %264
    i32 15, label %264
    i32 17, label %264
    i32 18, label %264
    i32 19, label %264
    i32 20, label %264
    i32 21, label %264
    i32 22, label %264
    i32 23, label %264
    i32 24, label %264
    i32 31, label %264
    i32 32, label %264
    i32 33, label %264
    i32 30, label %296
    i32 39, label %296
    i32 40, label %296
    i32 42, label %296
    i32 44, label %302
    i32 43, label %311
    i32 46, label %325
  ], !dbg !1040

; <label>:154                                     ; preds = %152
  %155 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str42, i32 0, i32 0)), !dbg !1041
  %156 = load %struct.Proto** %1, align 4, !dbg !1043
  %157 = load i32* %bx, align 4, !dbg !1043
  call void @PrintConstant(%struct.Proto* %156, i32 %157), !dbg !1043
  br label %330, !dbg !1044

; <label>:158                                     ; preds = %152, %152
  %159 = load i32* %b, align 4, !dbg !1045
  %160 = load %struct.Proto** %1, align 4, !dbg !1045
  %161 = getelementptr inbounds %struct.Proto* %160, i32 0, i32 19, !dbg !1045
  %162 = load %struct.Upvaldesc** %161, align 4, !dbg !1045
  %163 = getelementptr inbounds %struct.Upvaldesc* %162, i32 %159, !dbg !1045
  %164 = getelementptr inbounds %struct.Upvaldesc* %163, i32 0, i32 0, !dbg !1045
  %165 = load %struct.TString** %164, align 4, !dbg !1045
  %166 = icmp ne %struct.TString* %165, null, !dbg !1045
  br i1 %166, label %167, label %177, !dbg !1045

; <label>:167                                     ; preds = %158
  %168 = load i32* %b, align 4, !dbg !1046
  %169 = load %struct.Proto** %1, align 4, !dbg !1046
  %170 = getelementptr inbounds %struct.Proto* %169, i32 0, i32 19, !dbg !1046
  %171 = load %struct.Upvaldesc** %170, align 4, !dbg !1046
  %172 = getelementptr inbounds %struct.Upvaldesc* %171, i32 %168, !dbg !1046
  %173 = getelementptr inbounds %struct.Upvaldesc* %172, i32 0, i32 0, !dbg !1046
  %174 = load %struct.TString** %173, align 4, !dbg !1046
  %175 = bitcast %struct.TString* %174 to i8*, !dbg !1046
  %176 = getelementptr inbounds i8* %175, i32 16, !dbg !1046
  br label %178, !dbg !1046

; <label>:177                                     ; preds = %158
  br label %178, !dbg !1048

; <label>:178                                     ; preds = %177, %167
  %179 = phi i8* [ %176, %167 ], [ getelementptr inbounds ([2 x i8]* @.str3, i32 0, i32 0), %177 ], !dbg !1045
  %180 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([6 x i8]* @.str43, i32 0, i32 0), i8* %179), !dbg !1050
  br label %330, !dbg !1053

; <label>:181                                     ; preds = %152
  %182 = load i32* %b, align 4, !dbg !1054
  %183 = load %struct.Proto** %1, align 4, !dbg !1054
  %184 = getelementptr inbounds %struct.Proto* %183, i32 0, i32 19, !dbg !1054
  %185 = load %struct.Upvaldesc** %184, align 4, !dbg !1054
  %186 = getelementptr inbounds %struct.Upvaldesc* %185, i32 %182, !dbg !1054
  %187 = getelementptr inbounds %struct.Upvaldesc* %186, i32 0, i32 0, !dbg !1054
  %188 = load %struct.TString** %187, align 4, !dbg !1054
  %189 = icmp ne %struct.TString* %188, null, !dbg !1054
  br i1 %189, label %190, label %200, !dbg !1054

; <label>:190                                     ; preds = %181
  %191 = load i32* %b, align 4, !dbg !1055
  %192 = load %struct.Proto** %1, align 4, !dbg !1055
  %193 = getelementptr inbounds %struct.Proto* %192, i32 0, i32 19, !dbg !1055
  %194 = load %struct.Upvaldesc** %193, align 4, !dbg !1055
  %195 = getelementptr inbounds %struct.Upvaldesc* %194, i32 %191, !dbg !1055
  %196 = getelementptr inbounds %struct.Upvaldesc* %195, i32 0, i32 0, !dbg !1055
  %197 = load %struct.TString** %196, align 4, !dbg !1055
  %198 = bitcast %struct.TString* %197 to i8*, !dbg !1055
  %199 = getelementptr inbounds i8* %198, i32 16, !dbg !1055
  br label %201, !dbg !1055

; <label>:200                                     ; preds = %181
  br label %201, !dbg !1057

; <label>:201                                     ; preds = %200, %190
  %202 = phi i8* [ %199, %190 ], [ getelementptr inbounds ([2 x i8]* @.str3, i32 0, i32 0), %200 ], !dbg !1054
  %203 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([6 x i8]* @.str43, i32 0, i32 0), i8* %202), !dbg !1059
  %204 = load i32* %c, align 4, !dbg !1062
  %205 = and i32 %204, 256, !dbg !1062
  %206 = icmp ne i32 %205, 0, !dbg !1062
  br i1 %206, label %207, label %212, !dbg !1062

; <label>:207                                     ; preds = %201
  %208 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([2 x i8]* @.str44, i32 0, i32 0)), !dbg !1064
  %209 = load %struct.Proto** %1, align 4, !dbg !1067
  %210 = load i32* %c, align 4, !dbg !1067
  %211 = and i32 %210, -257, !dbg !1067
  call void @PrintConstant(%struct.Proto* %209, i32 %211), !dbg !1067
  br label %212, !dbg !1068

; <label>:212                                     ; preds = %207, %201
  br label %330, !dbg !1069

; <label>:213                                     ; preds = %152
  %214 = load i32* %a, align 4, !dbg !1070
  %215 = load %struct.Proto** %1, align 4, !dbg !1070
  %216 = getelementptr inbounds %struct.Proto* %215, i32 0, i32 19, !dbg !1070
  %217 = load %struct.Upvaldesc** %216, align 4, !dbg !1070
  %218 = getelementptr inbounds %struct.Upvaldesc* %217, i32 %214, !dbg !1070
  %219 = getelementptr inbounds %struct.Upvaldesc* %218, i32 0, i32 0, !dbg !1070
  %220 = load %struct.TString** %219, align 4, !dbg !1070
  %221 = icmp ne %struct.TString* %220, null, !dbg !1070
  br i1 %221, label %222, label %232, !dbg !1070

; <label>:222                                     ; preds = %213
  %223 = load i32* %a, align 4, !dbg !1071
  %224 = load %struct.Proto** %1, align 4, !dbg !1071
  %225 = getelementptr inbounds %struct.Proto* %224, i32 0, i32 19, !dbg !1071
  %226 = load %struct.Upvaldesc** %225, align 4, !dbg !1071
  %227 = getelementptr inbounds %struct.Upvaldesc* %226, i32 %223, !dbg !1071
  %228 = getelementptr inbounds %struct.Upvaldesc* %227, i32 0, i32 0, !dbg !1071
  %229 = load %struct.TString** %228, align 4, !dbg !1071
  %230 = bitcast %struct.TString* %229 to i8*, !dbg !1071
  %231 = getelementptr inbounds i8* %230, i32 16, !dbg !1071
  br label %233, !dbg !1071

; <label>:232                                     ; preds = %213
  br label %233, !dbg !1073

; <label>:233                                     ; preds = %232, %222
  %234 = phi i8* [ %231, %222 ], [ getelementptr inbounds ([2 x i8]* @.str3, i32 0, i32 0), %232 ], !dbg !1070
  %235 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([6 x i8]* @.str43, i32 0, i32 0), i8* %234), !dbg !1075
  %236 = load i32* %b, align 4, !dbg !1078
  %237 = and i32 %236, 256, !dbg !1078
  %238 = icmp ne i32 %237, 0, !dbg !1078
  br i1 %238, label %239, label %244, !dbg !1078

; <label>:239                                     ; preds = %233
  %240 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([2 x i8]* @.str44, i32 0, i32 0)), !dbg !1080
  %241 = load %struct.Proto** %1, align 4, !dbg !1083
  %242 = load i32* %b, align 4, !dbg !1083
  %243 = and i32 %242, -257, !dbg !1083
  call void @PrintConstant(%struct.Proto* %241, i32 %243), !dbg !1083
  br label %244, !dbg !1084

; <label>:244                                     ; preds = %239, %233
  %245 = load i32* %c, align 4, !dbg !1085
  %246 = and i32 %245, 256, !dbg !1085
  %247 = icmp ne i32 %246, 0, !dbg !1085
  br i1 %247, label %248, label %253, !dbg !1085

; <label>:248                                     ; preds = %244
  %249 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([2 x i8]* @.str44, i32 0, i32 0)), !dbg !1087
  %250 = load %struct.Proto** %1, align 4, !dbg !1090
  %251 = load i32* %c, align 4, !dbg !1090
  %252 = and i32 %251, -257, !dbg !1090
  call void @PrintConstant(%struct.Proto* %250, i32 %252), !dbg !1090
  br label %253, !dbg !1091

; <label>:253                                     ; preds = %248, %244
  br label %330, !dbg !1092

; <label>:254                                     ; preds = %152, %152
  %255 = load i32* %c, align 4, !dbg !1093
  %256 = and i32 %255, 256, !dbg !1093
  %257 = icmp ne i32 %256, 0, !dbg !1093
  br i1 %257, label %258, label %263, !dbg !1093

; <label>:258                                     ; preds = %254
  %259 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str42, i32 0, i32 0)), !dbg !1095
  %260 = load %struct.Proto** %1, align 4, !dbg !1098
  %261 = load i32* %c, align 4, !dbg !1098
  %262 = and i32 %261, -257, !dbg !1098
  call void @PrintConstant(%struct.Proto* %260, i32 %262), !dbg !1098
  br label %263, !dbg !1099

; <label>:263                                     ; preds = %258, %254
  br label %330, !dbg !1100

; <label>:264                                     ; preds = %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152
  %265 = load i32* %b, align 4, !dbg !1101
  %266 = and i32 %265, 256, !dbg !1101
  %267 = icmp ne i32 %266, 0, !dbg !1101
  br i1 %267, label %272, label %268, !dbg !1101

; <label>:268                                     ; preds = %264
  %269 = load i32* %c, align 4, !dbg !1103
  %270 = and i32 %269, 256, !dbg !1103
  %271 = icmp ne i32 %270, 0, !dbg !1103
  br i1 %271, label %272, label %295, !dbg !1103

; <label>:272                                     ; preds = %268, %264
  %273 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str42, i32 0, i32 0)), !dbg !1105
  %274 = load i32* %b, align 4, !dbg !1107
  %275 = and i32 %274, 256, !dbg !1107
  %276 = icmp ne i32 %275, 0, !dbg !1107
  br i1 %276, label %277, label %281, !dbg !1107

; <label>:277                                     ; preds = %272
  %278 = load %struct.Proto** %1, align 4, !dbg !1109
  %279 = load i32* %b, align 4, !dbg !1109
  %280 = and i32 %279, -257, !dbg !1109
  call void @PrintConstant(%struct.Proto* %278, i32 %280), !dbg !1109
  br label %283, !dbg !1109

; <label>:281                                     ; preds = %272
  %282 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([2 x i8]* @.str3, i32 0, i32 0)), !dbg !1111
  br label %283

; <label>:283                                     ; preds = %281, %277
  %284 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([2 x i8]* @.str44, i32 0, i32 0)), !dbg !1113
  %285 = load i32* %c, align 4, !dbg !1114
  %286 = and i32 %285, 256, !dbg !1114
  %287 = icmp ne i32 %286, 0, !dbg !1114
  br i1 %287, label %288, label %292, !dbg !1114

; <label>:288                                     ; preds = %283
  %289 = load %struct.Proto** %1, align 4, !dbg !1116
  %290 = load i32* %c, align 4, !dbg !1116
  %291 = and i32 %290, -257, !dbg !1116
  call void @PrintConstant(%struct.Proto* %289, i32 %291), !dbg !1116
  br label %294, !dbg !1116

; <label>:292                                     ; preds = %283
  %293 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([2 x i8]* @.str3, i32 0, i32 0)), !dbg !1118
  br label %294

; <label>:294                                     ; preds = %292, %288
  br label %295, !dbg !1120

; <label>:295                                     ; preds = %294, %268
  br label %330, !dbg !1121

; <label>:296                                     ; preds = %152, %152, %152, %152
  %297 = load i32* %sbx, align 4, !dbg !1122
  %298 = load i32* %pc, align 4, !dbg !1122
  %299 = add nsw i32 %297, %298, !dbg !1122
  %300 = add nsw i32 %299, 2, !dbg !1122
  %301 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([9 x i8]* @.str45, i32 0, i32 0), i32 %300), !dbg !1122
  br label %330, !dbg !1123

; <label>:302                                     ; preds = %152
  %303 = load i32* %bx, align 4, !dbg !1124
  %304 = load %struct.Proto** %1, align 4, !dbg !1124
  %305 = getelementptr inbounds %struct.Proto* %304, i32 0, i32 16, !dbg !1124
  %306 = load %struct.Proto*** %305, align 4, !dbg !1124
  %307 = getelementptr inbounds %struct.Proto** %306, i32 %303, !dbg !1124
  %308 = load %struct.Proto** %307, align 4, !dbg !1124
  %309 = bitcast %struct.Proto* %308 to i8*, !dbg !1124
  %310 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([6 x i8]* @.str46, i32 0, i32 0), i8* %309), !dbg !1124
  br label %330, !dbg !1125

; <label>:311                                     ; preds = %152
  %312 = load i32* %c, align 4, !dbg !1126
  %313 = icmp eq i32 %312, 0, !dbg !1126
  br i1 %313, label %314, label %321, !dbg !1126

; <label>:314                                     ; preds = %311
  %315 = load i32* %pc, align 4, !dbg !1128
  %316 = add nsw i32 %315, 1, !dbg !1128
  store i32 %316, i32* %pc, align 4, !dbg !1128
  %317 = load i32** %code, align 4, !dbg !1128
  %318 = getelementptr inbounds i32* %317, i32 %316, !dbg !1128
  %319 = load i32* %318, align 4, !dbg !1128
  %320 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([6 x i8]* @.str47, i32 0, i32 0), i32 %319), !dbg !1128
  br label %324, !dbg !1128

; <label>:321                                     ; preds = %311
  %322 = load i32* %c, align 4, !dbg !1130
  %323 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([6 x i8]* @.str47, i32 0, i32 0), i32 %322), !dbg !1130
  br label %324

; <label>:324                                     ; preds = %321, %314
  br label %330, !dbg !1132

; <label>:325                                     ; preds = %152
  %326 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str42, i32 0, i32 0)), !dbg !1133
  %327 = load %struct.Proto** %1, align 4, !dbg !1134
  %328 = load i32* %ax, align 4, !dbg !1134
  call void @PrintConstant(%struct.Proto* %327, i32 %328), !dbg !1134
  br label %330, !dbg !1135

; <label>:329                                     ; preds = %152
  br label %330, !dbg !1136

; <label>:330                                     ; preds = %329, %325, %324, %302, %296, %295, %263, %253, %212, %178, %154
  %331 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([2 x i8]* @.str12, i32 0, i32 0)), !dbg !1137
  br label %332, !dbg !1138

; <label>:332                                     ; preds = %330
  %333 = load i32* %pc, align 4, !dbg !1139
  %334 = add nsw i32 %333, 1, !dbg !1139
  store i32 %334, i32* %pc, align 4, !dbg !1139
  br label %8, !dbg !1139

; <label>:335                                     ; preds = %8
  ret void, !dbg !1140
}

; Function Attrs: nounwind
define internal void @PrintDebug(%struct.Proto* %f) #0 {
  %1 = alloca %struct.Proto*, align 4
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  store %struct.Proto* %f, %struct.Proto** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.Proto** %1}, metadata !1141), !dbg !1142
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !1143), !dbg !1144
  call void @llvm.dbg.declare(metadata !{i32* %n}, metadata !1145), !dbg !1146
  %2 = load %struct.Proto** %1, align 4, !dbg !1147
  %3 = getelementptr inbounds %struct.Proto* %2, i32 0, i32 7, !dbg !1147
  %4 = load i32* %3, align 4, !dbg !1147
  store i32 %4, i32* %n, align 4, !dbg !1147
  %5 = load i32* %n, align 4, !dbg !1148
  %6 = load %struct.Proto** %1, align 4, !dbg !1148
  %7 = bitcast %struct.Proto* %6 to i8*, !dbg !1148
  %8 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([24 x i8]* @.str10, i32 0, i32 0), i32 %5, i8* %7), !dbg !1148
  store i32 0, i32* %i, align 4, !dbg !1149
  br label %9, !dbg !1149

; <label>:9                                       ; preds = %20, %0
  %10 = load i32* %i, align 4, !dbg !1151
  %11 = load i32* %n, align 4, !dbg !1151
  %12 = icmp slt i32 %10, %11, !dbg !1151
  br i1 %12, label %13, label %23, !dbg !1151

; <label>:13                                      ; preds = %9
  %14 = load i32* %i, align 4, !dbg !1154
  %15 = add nsw i32 %14, 1, !dbg !1154
  %16 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([5 x i8]* @.str11, i32 0, i32 0), i32 %15), !dbg !1154
  %17 = load %struct.Proto** %1, align 4, !dbg !1156
  %18 = load i32* %i, align 4, !dbg !1156
  call void @PrintConstant(%struct.Proto* %17, i32 %18), !dbg !1156
  %19 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([2 x i8]* @.str12, i32 0, i32 0)), !dbg !1157
  br label %20, !dbg !1158

; <label>:20                                      ; preds = %13
  %21 = load i32* %i, align 4, !dbg !1159
  %22 = add nsw i32 %21, 1, !dbg !1159
  store i32 %22, i32* %i, align 4, !dbg !1159
  br label %9, !dbg !1159

; <label>:23                                      ; preds = %9
  %24 = load %struct.Proto** %1, align 4, !dbg !1160
  %25 = getelementptr inbounds %struct.Proto* %24, i32 0, i32 11, !dbg !1160
  %26 = load i32* %25, align 4, !dbg !1160
  store i32 %26, i32* %n, align 4, !dbg !1160
  %27 = load i32* %n, align 4, !dbg !1161
  %28 = load %struct.Proto** %1, align 4, !dbg !1161
  %29 = bitcast %struct.Proto* %28 to i8*, !dbg !1161
  %30 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([21 x i8]* @.str13, i32 0, i32 0), i32 %27, i8* %29), !dbg !1161
  store i32 0, i32* %i, align 4, !dbg !1162
  br label %31, !dbg !1162

; <label>:31                                      ; preds = %63, %23
  %32 = load i32* %i, align 4, !dbg !1164
  %33 = load i32* %n, align 4, !dbg !1164
  %34 = icmp slt i32 %32, %33, !dbg !1164
  br i1 %34, label %35, label %66, !dbg !1164

; <label>:35                                      ; preds = %31
  %36 = load i32* %i, align 4, !dbg !1167
  %37 = load i32* %i, align 4, !dbg !1167
  %38 = load %struct.Proto** %1, align 4, !dbg !1167
  %39 = getelementptr inbounds %struct.Proto* %38, i32 0, i32 18, !dbg !1167
  %40 = load %struct.LocVar** %39, align 4, !dbg !1167
  %41 = getelementptr inbounds %struct.LocVar* %40, i32 %37, !dbg !1167
  %42 = getelementptr inbounds %struct.LocVar* %41, i32 0, i32 0, !dbg !1167
  %43 = load %struct.TString** %42, align 4, !dbg !1167
  %44 = bitcast %struct.TString* %43 to i8*, !dbg !1167
  %45 = getelementptr inbounds i8* %44, i32 16, !dbg !1167
  %46 = load i32* %i, align 4, !dbg !1167
  %47 = load %struct.Proto** %1, align 4, !dbg !1167
  %48 = getelementptr inbounds %struct.Proto* %47, i32 0, i32 18, !dbg !1167
  %49 = load %struct.LocVar** %48, align 4, !dbg !1167
  %50 = getelementptr inbounds %struct.LocVar* %49, i32 %46, !dbg !1167
  %51 = getelementptr inbounds %struct.LocVar* %50, i32 0, i32 1, !dbg !1167
  %52 = load i32* %51, align 4, !dbg !1167
  %53 = add nsw i32 %52, 1, !dbg !1167
  %54 = load i32* %i, align 4, !dbg !1167
  %55 = load %struct.Proto** %1, align 4, !dbg !1167
  %56 = getelementptr inbounds %struct.Proto* %55, i32 0, i32 18, !dbg !1167
  %57 = load %struct.LocVar** %56, align 4, !dbg !1167
  %58 = getelementptr inbounds %struct.LocVar* %57, i32 %54, !dbg !1167
  %59 = getelementptr inbounds %struct.LocVar* %58, i32 0, i32 2, !dbg !1167
  %60 = load i32* %59, align 4, !dbg !1167
  %61 = add nsw i32 %60, 1, !dbg !1167
  %62 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([14 x i8]* @.str14, i32 0, i32 0), i32 %36, i8* %45, i32 %53, i32 %61), !dbg !1167
  br label %63, !dbg !1169

; <label>:63                                      ; preds = %35
  %64 = load i32* %i, align 4, !dbg !1170
  %65 = add nsw i32 %64, 1, !dbg !1170
  store i32 %65, i32* %i, align 4, !dbg !1170
  br label %31, !dbg !1170

; <label>:66                                      ; preds = %31
  %67 = load %struct.Proto** %1, align 4, !dbg !1171
  %68 = getelementptr inbounds %struct.Proto* %67, i32 0, i32 6, !dbg !1171
  %69 = load i32* %68, align 4, !dbg !1171
  store i32 %69, i32* %n, align 4, !dbg !1171
  %70 = load i32* %n, align 4, !dbg !1172
  %71 = load %struct.Proto** %1, align 4, !dbg !1172
  %72 = bitcast %struct.Proto* %71 to i8*, !dbg !1172
  %73 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([23 x i8]* @.str15, i32 0, i32 0), i32 %70, i8* %72), !dbg !1172
  store i32 0, i32* %i, align 4, !dbg !1173
  br label %74, !dbg !1173

; <label>:74                                      ; preds = %118, %66
  %75 = load i32* %i, align 4, !dbg !1175
  %76 = load i32* %n, align 4, !dbg !1175
  %77 = icmp slt i32 %75, %76, !dbg !1175
  br i1 %77, label %78, label %121, !dbg !1175

; <label>:78                                      ; preds = %74
  %79 = load i32* %i, align 4, !dbg !1178
  %80 = load i32* %i, align 4, !dbg !1178
  %81 = load %struct.Proto** %1, align 4, !dbg !1178
  %82 = getelementptr inbounds %struct.Proto* %81, i32 0, i32 19, !dbg !1178
  %83 = load %struct.Upvaldesc** %82, align 4, !dbg !1178
  %84 = getelementptr inbounds %struct.Upvaldesc* %83, i32 %80, !dbg !1178
  %85 = getelementptr inbounds %struct.Upvaldesc* %84, i32 0, i32 0, !dbg !1178
  %86 = load %struct.TString** %85, align 4, !dbg !1178
  %87 = icmp ne %struct.TString* %86, null, !dbg !1178
  br i1 %87, label %88, label %98, !dbg !1178

; <label>:88                                      ; preds = %78
  %89 = load i32* %i, align 4, !dbg !1180
  %90 = load %struct.Proto** %1, align 4, !dbg !1180
  %91 = getelementptr inbounds %struct.Proto* %90, i32 0, i32 19, !dbg !1180
  %92 = load %struct.Upvaldesc** %91, align 4, !dbg !1180
  %93 = getelementptr inbounds %struct.Upvaldesc* %92, i32 %89, !dbg !1180
  %94 = getelementptr inbounds %struct.Upvaldesc* %93, i32 0, i32 0, !dbg !1180
  %95 = load %struct.TString** %94, align 4, !dbg !1180
  %96 = bitcast %struct.TString* %95 to i8*, !dbg !1180
  %97 = getelementptr inbounds i8* %96, i32 16, !dbg !1180
  br label %99, !dbg !1180

; <label>:98                                      ; preds = %78
  br label %99, !dbg !1182

; <label>:99                                      ; preds = %98, %88
  %100 = phi i8* [ %97, %88 ], [ getelementptr inbounds ([2 x i8]* @.str3, i32 0, i32 0), %98 ], !dbg !1178
  %101 = load i32* %i, align 4, !dbg !1184
  %102 = load %struct.Proto** %1, align 4, !dbg !1184
  %103 = getelementptr inbounds %struct.Proto* %102, i32 0, i32 19, !dbg !1184
  %104 = load %struct.Upvaldesc** %103, align 4, !dbg !1184
  %105 = getelementptr inbounds %struct.Upvaldesc* %104, i32 %101, !dbg !1184
  %106 = getelementptr inbounds %struct.Upvaldesc* %105, i32 0, i32 1, !dbg !1184
  %107 = load i8* %106, align 1, !dbg !1184
  %108 = zext i8 %107 to i32, !dbg !1184
  %109 = load i32* %i, align 4, !dbg !1184
  %110 = load %struct.Proto** %1, align 4, !dbg !1184
  %111 = getelementptr inbounds %struct.Proto* %110, i32 0, i32 19, !dbg !1184
  %112 = load %struct.Upvaldesc** %111, align 4, !dbg !1184
  %113 = getelementptr inbounds %struct.Upvaldesc* %112, i32 %109, !dbg !1184
  %114 = getelementptr inbounds %struct.Upvaldesc* %113, i32 0, i32 2, !dbg !1184
  %115 = load i8* %114, align 1, !dbg !1184
  %116 = zext i8 %115 to i32, !dbg !1184
  %117 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([14 x i8]* @.str14, i32 0, i32 0), i32 %79, i8* %100, i32 %108, i32 %116), !dbg !1184
  br label %118, !dbg !1187

; <label>:118                                     ; preds = %99
  %119 = load i32* %i, align 4, !dbg !1188
  %120 = add nsw i32 %119, 1, !dbg !1188
  store i32 %120, i32* %i, align 4, !dbg !1188
  br label %74, !dbg !1188

; <label>:121                                     ; preds = %74
  ret void, !dbg !1189
}

declare i32 @printf(i8*, ...) #2

; Function Attrs: nounwind
define internal void @PrintConstant(%struct.Proto* %f, i32 %i) #0 {
  %1 = alloca %struct.Proto*, align 4
  %2 = alloca i32, align 4
  %o = alloca %struct.lua_TValue*, align 4
  %buff = alloca [100 x i8], align 1
  store %struct.Proto* %f, %struct.Proto** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.Proto** %1}, metadata !1190), !dbg !1191
  store i32 %i, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !1192), !dbg !1193
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %o}, metadata !1194), !dbg !1197
  %3 = load i32* %2, align 4, !dbg !1198
  %4 = load %struct.Proto** %1, align 4, !dbg !1198
  %5 = getelementptr inbounds %struct.Proto* %4, i32 0, i32 14, !dbg !1198
  %6 = load %struct.lua_TValue** %5, align 4, !dbg !1198
  %7 = getelementptr inbounds %struct.lua_TValue* %6, i32 %3, !dbg !1198
  store %struct.lua_TValue* %7, %struct.lua_TValue** %o, align 4, !dbg !1198
  %8 = load %struct.lua_TValue** %o, align 4, !dbg !1199
  %9 = getelementptr inbounds %struct.lua_TValue* %8, i32 0, i32 1, !dbg !1199
  %10 = load i32* %9, align 4, !dbg !1199
  %11 = and i32 %10, 63, !dbg !1199
  switch i32 %11, label %53 [
    i32 0, label %12
    i32 1, label %14
    i32 3, label %22
    i32 19, label %40
    i32 4, label %46
    i32 20, label %46
  ], !dbg !1199

; <label>:12                                      ; preds = %0
  %13 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str16, i32 0, i32 0)), !dbg !1200
  br label %59, !dbg !1202

; <label>:14                                      ; preds = %0
  %15 = load %struct.lua_TValue** %o, align 4, !dbg !1203
  %16 = getelementptr inbounds %struct.lua_TValue* %15, i32 0, i32 0, !dbg !1203
  %17 = bitcast %union.Value* %16 to i32*, !dbg !1203
  %18 = load i32* %17, align 4, !dbg !1203
  %19 = icmp ne i32 %18, 0, !dbg !1203
  %20 = select i1 %19, i8* getelementptr inbounds ([5 x i8]* @.str17, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str18, i32 0, i32 0), !dbg !1203
  %21 = call i32 (i8*, ...)* @printf(i8* %20), !dbg !1203
  br label %59, !dbg !1204

; <label>:22                                      ; preds = %0
  call void @llvm.dbg.declare(metadata !{[100 x i8]* %buff}, metadata !1205), !dbg !1210
  %23 = getelementptr inbounds [100 x i8]* %buff, i32 0, i32 0, !dbg !1211
  %24 = load %struct.lua_TValue** %o, align 4, !dbg !1211
  %25 = getelementptr inbounds %struct.lua_TValue* %24, i32 0, i32 0, !dbg !1211
  %26 = bitcast %union.Value* %25 to double*, !dbg !1211
  %27 = load double* %26, align 8, !dbg !1211
  %28 = call i32 (i8*, i8*, ...)* @sprintf(i8* %23, i8* getelementptr inbounds ([6 x i8]* @.str19, i32 0, i32 0), double %27) #8, !dbg !1211
  %29 = getelementptr inbounds [100 x i8]* %buff, i32 0, i32 0, !dbg !1212
  %30 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([3 x i8]* @.str20, i32 0, i32 0), i8* %29), !dbg !1212
  %31 = getelementptr inbounds [100 x i8]* %buff, i32 0, i32 0, !dbg !1213
  %32 = call i32 @strspn(i8* %31, i8* getelementptr inbounds ([12 x i8]* @.str21, i32 0, i32 0)) #6, !dbg !1213
  %33 = getelementptr inbounds [100 x i8]* %buff, i32 0, i32 %32, !dbg !1213
  %34 = load i8* %33, align 1, !dbg !1213
  %35 = zext i8 %34 to i32, !dbg !1213
  %36 = icmp eq i32 %35, 0, !dbg !1213
  br i1 %36, label %37, label %39, !dbg !1213

; <label>:37                                      ; preds = %22
  %38 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([3 x i8]* @.str22, i32 0, i32 0)), !dbg !1215
  br label %39, !dbg !1215

; <label>:39                                      ; preds = %37, %22
  br label %59, !dbg !1217

; <label>:40                                      ; preds = %0
  %41 = load %struct.lua_TValue** %o, align 4, !dbg !1218
  %42 = getelementptr inbounds %struct.lua_TValue* %41, i32 0, i32 0, !dbg !1218
  %43 = bitcast %union.Value* %42 to i64*, !dbg !1218
  %44 = load i64* %43, align 8, !dbg !1218
  %45 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([5 x i8]* @.str23, i32 0, i32 0), i64 %44), !dbg !1218
  br label %59, !dbg !1219

; <label>:46                                      ; preds = %0, %0
  %47 = load %struct.lua_TValue** %o, align 4, !dbg !1220
  %48 = getelementptr inbounds %struct.lua_TValue* %47, i32 0, i32 0, !dbg !1220
  %49 = bitcast %union.Value* %48 to %struct.GCObject**, !dbg !1220
  %50 = load %struct.GCObject** %49, align 4, !dbg !1220
  %51 = bitcast %struct.GCObject* %50 to %union.GCUnion*, !dbg !1220
  %52 = bitcast %union.GCUnion* %51 to %struct.TString*, !dbg !1220
  call void @PrintString(%struct.TString* %52), !dbg !1220
  br label %59, !dbg !1221

; <label>:53                                      ; preds = %0
  %54 = load %struct.lua_TValue** %o, align 4, !dbg !1222
  %55 = getelementptr inbounds %struct.lua_TValue* %54, i32 0, i32 1, !dbg !1222
  %56 = load i32* %55, align 4, !dbg !1222
  %57 = and i32 %56, 63, !dbg !1222
  %58 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([10 x i8]* @.str24, i32 0, i32 0), i32 %57), !dbg !1222
  br label %59, !dbg !1223

; <label>:59                                      ; preds = %53, %46, %40, %39, %14, %12
  ret void, !dbg !1224
}

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #0

; Function Attrs: nounwind readonly
declare i32 @strspn(i8*, i8*) #3

; Function Attrs: nounwind
define internal void @PrintString(%struct.TString* %ts) #0 {
  %1 = alloca %struct.TString*, align 4
  %s = alloca i8*, align 4
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %c = alloca i32, align 4
  store %struct.TString* %ts, %struct.TString** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.TString** %1}, metadata !1225), !dbg !1226
  call void @llvm.dbg.declare(metadata !{i8** %s}, metadata !1227), !dbg !1228
  %2 = load %struct.TString** %1, align 4, !dbg !1229
  %3 = bitcast %struct.TString* %2 to i8*, !dbg !1229
  %4 = getelementptr inbounds i8* %3, i32 16, !dbg !1229
  store i8* %4, i8** %s, align 4, !dbg !1229
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !1230), !dbg !1231
  call void @llvm.dbg.declare(metadata !{i32* %n}, metadata !1232), !dbg !1233
  %5 = load %struct.TString** %1, align 4, !dbg !1234
  %6 = getelementptr inbounds %struct.TString* %5, i32 0, i32 1, !dbg !1234
  %7 = load i8* %6, align 1, !dbg !1234
  %8 = zext i8 %7 to i32, !dbg !1234
  %9 = icmp eq i32 %8, 4, !dbg !1234
  br i1 %9, label %10, label %15, !dbg !1234

; <label>:10                                      ; preds = %0
  %11 = load %struct.TString** %1, align 4, !dbg !1235
  %12 = getelementptr inbounds %struct.TString* %11, i32 0, i32 4, !dbg !1235
  %13 = load i8* %12, align 1, !dbg !1235
  %14 = zext i8 %13 to i32, !dbg !1235
  br label %20, !dbg !1235

; <label>:15                                      ; preds = %0
  %16 = load %struct.TString** %1, align 4, !dbg !1237
  %17 = getelementptr inbounds %struct.TString* %16, i32 0, i32 6, !dbg !1237
  %18 = bitcast %union.anon* %17 to i32*, !dbg !1237
  %19 = load i32* %18, align 4, !dbg !1237
  br label %20, !dbg !1237

; <label>:20                                      ; preds = %15, %10
  %21 = phi i32 [ %14, %10 ], [ %19, %15 ], !dbg !1234
  store i32 %21, i32* %n, align 4, !dbg !1239
  %22 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([3 x i8]* @.str25, i32 0, i32 0), i32 34), !dbg !1242
  store i32 0, i32* %i, align 4, !dbg !1243
  br label %23, !dbg !1243

; <label>:23                                      ; preds = %69, %20
  %24 = load i32* %i, align 4, !dbg !1245
  %25 = load i32* %n, align 4, !dbg !1245
  %26 = icmp ult i32 %24, %25, !dbg !1245
  br i1 %26, label %27, label %72, !dbg !1245

; <label>:27                                      ; preds = %23
  call void @llvm.dbg.declare(metadata !{i32* %c}, metadata !1248), !dbg !1250
  %28 = load i32* %i, align 4, !dbg !1251
  %29 = load i8** %s, align 4, !dbg !1251
  %30 = getelementptr inbounds i8* %29, i32 %28, !dbg !1251
  %31 = load i8* %30, align 1, !dbg !1251
  %32 = zext i8 %31 to i32, !dbg !1251
  store i32 %32, i32* %c, align 4, !dbg !1251
  %33 = load i32* %c, align 4, !dbg !1252
  switch i32 %33, label %52 [
    i32 34, label %34
    i32 92, label %36
    i32 7, label %38
    i32 8, label %40
    i32 12, label %42
    i32 10, label %44
    i32 13, label %46
    i32 9, label %48
    i32 11, label %50
  ], !dbg !1252

; <label>:34                                      ; preds = %27
  %35 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([3 x i8]* @.str26, i32 0, i32 0)), !dbg !1253
  br label %68, !dbg !1255

; <label>:36                                      ; preds = %27
  %37 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([3 x i8]* @.str27, i32 0, i32 0)), !dbg !1256
  br label %68, !dbg !1257

; <label>:38                                      ; preds = %27
  %39 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([3 x i8]* @.str28, i32 0, i32 0)), !dbg !1258
  br label %68, !dbg !1259

; <label>:40                                      ; preds = %27
  %41 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([3 x i8]* @.str29, i32 0, i32 0)), !dbg !1260
  br label %68, !dbg !1261

; <label>:42                                      ; preds = %27
  %43 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([3 x i8]* @.str30, i32 0, i32 0)), !dbg !1262
  br label %68, !dbg !1263

; <label>:44                                      ; preds = %27
  %45 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([3 x i8]* @.str31, i32 0, i32 0)), !dbg !1264
  br label %68, !dbg !1265

; <label>:46                                      ; preds = %27
  %47 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([3 x i8]* @.str32, i32 0, i32 0)), !dbg !1266
  br label %68, !dbg !1267

; <label>:48                                      ; preds = %27
  %49 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([3 x i8]* @.str33, i32 0, i32 0)), !dbg !1268
  br label %68, !dbg !1269

; <label>:50                                      ; preds = %27
  %51 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([3 x i8]* @.str34, i32 0, i32 0)), !dbg !1270
  br label %68, !dbg !1271

; <label>:52                                      ; preds = %27
  %53 = load i32* %c, align 4, !dbg !1272
  %54 = call i16** @__ctype_b_loc() #1, !dbg !1272
  %55 = load i16** %54, align 4, !dbg !1272
  %56 = getelementptr inbounds i16* %55, i32 %53, !dbg !1272
  %57 = load i16* %56, align 2, !dbg !1272
  %58 = zext i16 %57 to i32, !dbg !1272
  %59 = and i32 %58, 16384, !dbg !1272
  %60 = icmp ne i32 %59, 0, !dbg !1272
  br i1 %60, label %61, label %64, !dbg !1272

; <label>:61                                      ; preds = %52
  %62 = load i32* %c, align 4, !dbg !1274
  %63 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([3 x i8]* @.str25, i32 0, i32 0), i32 %62), !dbg !1274
  br label %67, !dbg !1274

; <label>:64                                      ; preds = %52
  %65 = load i32* %c, align 4, !dbg !1275
  %66 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([6 x i8]* @.str35, i32 0, i32 0), i32 %65), !dbg !1275
  br label %67

; <label>:67                                      ; preds = %64, %61
  br label %68, !dbg !1276

; <label>:68                                      ; preds = %67, %50, %48, %46, %44, %42, %40, %38, %36, %34
  br label %69, !dbg !1277

; <label>:69                                      ; preds = %68
  %70 = load i32* %i, align 4, !dbg !1278
  %71 = add i32 %70, 1, !dbg !1278
  store i32 %71, i32* %i, align 4, !dbg !1278
  br label %23, !dbg !1278

; <label>:72                                      ; preds = %23
  %73 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([3 x i8]* @.str25, i32 0, i32 0), i32 34), !dbg !1279
  ret void, !dbg !1280
}

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #4

declare i32 @lua_load(%struct.lua_State*, i8* (%struct.lua_State*, i8*, i32*)*, i8*, i8*, i8*) #2

; Function Attrs: nounwind
define internal i8* @reader(%struct.lua_State* %L, i8* %ud, i32* %size) #0 {
  %1 = alloca i8*, align 4
  %2 = alloca %struct.lua_State*, align 4
  %3 = alloca i8*, align 4
  %4 = alloca i32*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %2}, metadata !1281), !dbg !1282
  store i8* %ud, i8** %3, align 4
  call void @llvm.dbg.declare(metadata !{i8** %3}, metadata !1283), !dbg !1284
  store i32* %size, i32** %4, align 4
  call void @llvm.dbg.declare(metadata !{i32** %4}, metadata !1285), !dbg !1286
  %5 = load %struct.lua_State** %2, align 4, !dbg !1287
  %6 = load i8** %3, align 4, !dbg !1288
  %7 = bitcast i8* %6 to i32*, !dbg !1288
  %8 = load i32* %7, align 4, !dbg !1288
  %9 = add nsw i32 %8, -1, !dbg !1288
  store i32 %9, i32* %7, align 4, !dbg !1288
  %10 = icmp ne i32 %8, 0, !dbg !1288
  br i1 %10, label %11, label %13, !dbg !1288

; <label>:11                                      ; preds = %0
  %12 = load i32** %4, align 4, !dbg !1290
  store i32 18, i32* %12, align 4, !dbg !1290
  store i8* getelementptr inbounds ([19 x i8]* @.str61, i32 0, i32 0), i8** %1, !dbg !1292
  br label %15, !dbg !1292

; <label>:13                                      ; preds = %0
  %14 = load i32** %4, align 4, !dbg !1293
  store i32 0, i32* %14, align 4, !dbg !1293
  store i8* null, i8** %1, !dbg !1295
  br label %15, !dbg !1295

; <label>:15                                      ; preds = %13, %11
  %16 = load i8** %1, !dbg !1296
  ret i8* %16, !dbg !1296
}

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly }
attributes #7 = { noreturn nounwind }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!0}
!xidane.fname = !{!442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523}
!xidane.function_declaration_type = !{!442, !524, !444, !524, !446, !525, !448, !526, !450, !525, !452, !527, !454, !528, !456, !529, !458, !530, !460, !531, !462, !532, !464, !533, !466, !534, !468, !535, !470, !536, !472, !537, !474, !538, !476, !539, !478, !540, !480, !541, !482, !525, !484, !542, !486, !543, !488, !544, !490, !544, !492, !545, !494, !546, !496, !547, !498, !548, !500, !549, !502, !550, !504, !550, !506, !550, !508, !551, !510, !540, !512, !552, !514, !553, !516, !554, !518, !555, !520, !556, !522, !557}
!xidane.function_declaration_filename = !{!442, !558, !444, !558, !446, !558, !448, !559, !450, !558, !452, !560, !454, !558, !456, !560, !458, !560, !460, !560, !462, !560, !464, !560, !466, !560, !468, !560, !470, !560, !472, !561, !474, !559, !476, !558, !478, !558, !480, !562, !482, !558, !484, !563, !486, !558, !488, !562, !490, !562, !492, !562, !494, !562, !496, !561, !498, !564, !500, !565, !502, !558, !504, !558, !506, !558, !508, !562, !510, !558, !512, !562, !514, !561, !516, !558, !518, !566, !520, !560, !522, !558}
!xidane.ExternC = !{!442, !448, !452, !456, !458, !460, !462, !464, !466, !468, !470, !472, !474, !480, !484, !488, !490, !492, !494, !496, !498, !500, !508, !512, !514, !518, !520}
!llvm.module.flags = !{!567, !568, !569, !570}
!llvm.ident = !{!571}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.0 (tags/RELEASE_350/final)", i1 false, metadata !"", i32 0, metadata !2, metadata !74, metadata !75, metadata !434, metadata !74, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src\luac.c] [DW_LANG_C99]
!1 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src\5Cluac.c", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!2 = metadata !{metadata !3, metadata !18, metadata !68}
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
!18 = metadata !{i32 786436, metadata !19, null, metadata !"", i32 165, i64 32, i64 32, i32 0, i32 0, null, metadata !20, i32 0, null, null, null} ; [ DW_TAG_enumeration_type ] [line 165, size 32, align 32, offset 0] [def] [from ]
!19 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lopcodes.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!20 = metadata !{metadata !21, metadata !22, metadata !23, metadata !24, metadata !25, metadata !26, metadata !27, metadata !28, metadata !29, metadata !30, metadata !31, metadata !32, metadata !33, metadata !34, metadata !35, metadata !36, metadata !37, metadata !38, metadata !39, metadata !40, metadata !41, metadata !42, metadata !43, metadata !44, metadata !45, metadata !46, metadata !47, metadata !48, metadata !49, metadata !50, metadata !51, metadata !52, metadata !53, metadata !54, metadata !55, metadata !56, metadata !57, metadata !58, metadata !59, metadata !60, metadata !61, metadata !62, metadata !63, metadata !64, metadata !65, metadata !66, metadata !67}
!21 = metadata !{i32 786472, metadata !"OP_MOVE", i64 0} ; [ DW_TAG_enumerator ] [OP_MOVE :: 0]
!22 = metadata !{i32 786472, metadata !"OP_LOADK", i64 1} ; [ DW_TAG_enumerator ] [OP_LOADK :: 1]
!23 = metadata !{i32 786472, metadata !"OP_LOADKX", i64 2} ; [ DW_TAG_enumerator ] [OP_LOADKX :: 2]
!24 = metadata !{i32 786472, metadata !"OP_LOADBOOL", i64 3} ; [ DW_TAG_enumerator ] [OP_LOADBOOL :: 3]
!25 = metadata !{i32 786472, metadata !"OP_LOADNIL", i64 4} ; [ DW_TAG_enumerator ] [OP_LOADNIL :: 4]
!26 = metadata !{i32 786472, metadata !"OP_GETUPVAL", i64 5} ; [ DW_TAG_enumerator ] [OP_GETUPVAL :: 5]
!27 = metadata !{i32 786472, metadata !"OP_GETTABUP", i64 6} ; [ DW_TAG_enumerator ] [OP_GETTABUP :: 6]
!28 = metadata !{i32 786472, metadata !"OP_GETTABLE", i64 7} ; [ DW_TAG_enumerator ] [OP_GETTABLE :: 7]
!29 = metadata !{i32 786472, metadata !"OP_SETTABUP", i64 8} ; [ DW_TAG_enumerator ] [OP_SETTABUP :: 8]
!30 = metadata !{i32 786472, metadata !"OP_SETUPVAL", i64 9} ; [ DW_TAG_enumerator ] [OP_SETUPVAL :: 9]
!31 = metadata !{i32 786472, metadata !"OP_SETTABLE", i64 10} ; [ DW_TAG_enumerator ] [OP_SETTABLE :: 10]
!32 = metadata !{i32 786472, metadata !"OP_NEWTABLE", i64 11} ; [ DW_TAG_enumerator ] [OP_NEWTABLE :: 11]
!33 = metadata !{i32 786472, metadata !"OP_SELF", i64 12} ; [ DW_TAG_enumerator ] [OP_SELF :: 12]
!34 = metadata !{i32 786472, metadata !"OP_ADD", i64 13} ; [ DW_TAG_enumerator ] [OP_ADD :: 13]
!35 = metadata !{i32 786472, metadata !"OP_SUB", i64 14} ; [ DW_TAG_enumerator ] [OP_SUB :: 14]
!36 = metadata !{i32 786472, metadata !"OP_MUL", i64 15} ; [ DW_TAG_enumerator ] [OP_MUL :: 15]
!37 = metadata !{i32 786472, metadata !"OP_MOD", i64 16} ; [ DW_TAG_enumerator ] [OP_MOD :: 16]
!38 = metadata !{i32 786472, metadata !"OP_POW", i64 17} ; [ DW_TAG_enumerator ] [OP_POW :: 17]
!39 = metadata !{i32 786472, metadata !"OP_DIV", i64 18} ; [ DW_TAG_enumerator ] [OP_DIV :: 18]
!40 = metadata !{i32 786472, metadata !"OP_IDIV", i64 19} ; [ DW_TAG_enumerator ] [OP_IDIV :: 19]
!41 = metadata !{i32 786472, metadata !"OP_BAND", i64 20} ; [ DW_TAG_enumerator ] [OP_BAND :: 20]
!42 = metadata !{i32 786472, metadata !"OP_BOR", i64 21} ; [ DW_TAG_enumerator ] [OP_BOR :: 21]
!43 = metadata !{i32 786472, metadata !"OP_BXOR", i64 22} ; [ DW_TAG_enumerator ] [OP_BXOR :: 22]
!44 = metadata !{i32 786472, metadata !"OP_SHL", i64 23} ; [ DW_TAG_enumerator ] [OP_SHL :: 23]
!45 = metadata !{i32 786472, metadata !"OP_SHR", i64 24} ; [ DW_TAG_enumerator ] [OP_SHR :: 24]
!46 = metadata !{i32 786472, metadata !"OP_UNM", i64 25} ; [ DW_TAG_enumerator ] [OP_UNM :: 25]
!47 = metadata !{i32 786472, metadata !"OP_BNOT", i64 26} ; [ DW_TAG_enumerator ] [OP_BNOT :: 26]
!48 = metadata !{i32 786472, metadata !"OP_NOT", i64 27} ; [ DW_TAG_enumerator ] [OP_NOT :: 27]
!49 = metadata !{i32 786472, metadata !"OP_LEN", i64 28} ; [ DW_TAG_enumerator ] [OP_LEN :: 28]
!50 = metadata !{i32 786472, metadata !"OP_CONCAT", i64 29} ; [ DW_TAG_enumerator ] [OP_CONCAT :: 29]
!51 = metadata !{i32 786472, metadata !"OP_JMP", i64 30} ; [ DW_TAG_enumerator ] [OP_JMP :: 30]
!52 = metadata !{i32 786472, metadata !"OP_EQ", i64 31} ; [ DW_TAG_enumerator ] [OP_EQ :: 31]
!53 = metadata !{i32 786472, metadata !"OP_LT", i64 32} ; [ DW_TAG_enumerator ] [OP_LT :: 32]
!54 = metadata !{i32 786472, metadata !"OP_LE", i64 33} ; [ DW_TAG_enumerator ] [OP_LE :: 33]
!55 = metadata !{i32 786472, metadata !"OP_TEST", i64 34} ; [ DW_TAG_enumerator ] [OP_TEST :: 34]
!56 = metadata !{i32 786472, metadata !"OP_TESTSET", i64 35} ; [ DW_TAG_enumerator ] [OP_TESTSET :: 35]
!57 = metadata !{i32 786472, metadata !"OP_CALL", i64 36} ; [ DW_TAG_enumerator ] [OP_CALL :: 36]
!58 = metadata !{i32 786472, metadata !"OP_TAILCALL", i64 37} ; [ DW_TAG_enumerator ] [OP_TAILCALL :: 37]
!59 = metadata !{i32 786472, metadata !"OP_RETURN", i64 38} ; [ DW_TAG_enumerator ] [OP_RETURN :: 38]
!60 = metadata !{i32 786472, metadata !"OP_FORLOOP", i64 39} ; [ DW_TAG_enumerator ] [OP_FORLOOP :: 39]
!61 = metadata !{i32 786472, metadata !"OP_FORPREP", i64 40} ; [ DW_TAG_enumerator ] [OP_FORPREP :: 40]
!62 = metadata !{i32 786472, metadata !"OP_TFORCALL", i64 41} ; [ DW_TAG_enumerator ] [OP_TFORCALL :: 41]
!63 = metadata !{i32 786472, metadata !"OP_TFORLOOP", i64 42} ; [ DW_TAG_enumerator ] [OP_TFORLOOP :: 42]
!64 = metadata !{i32 786472, metadata !"OP_SETLIST", i64 43} ; [ DW_TAG_enumerator ] [OP_SETLIST :: 43]
!65 = metadata !{i32 786472, metadata !"OP_CLOSURE", i64 44} ; [ DW_TAG_enumerator ] [OP_CLOSURE :: 44]
!66 = metadata !{i32 786472, metadata !"OP_VARARG", i64 45} ; [ DW_TAG_enumerator ] [OP_VARARG :: 45]
!67 = metadata !{i32 786472, metadata !"OP_EXTRAARG", i64 46} ; [ DW_TAG_enumerator ] [OP_EXTRAARG :: 46]
!68 = metadata !{i32 786436, metadata !19, null, metadata !"OpArgMask", i32 272, i64 32, i64 32, i32 0, i32 0, null, metadata !69, i32 0, null, null, null} ; [ DW_TAG_enumeration_type ] [OpArgMask] [line 272, size 32, align 32, offset 0] [def] [from ]
!69 = metadata !{metadata !70, metadata !71, metadata !72, metadata !73}
!70 = metadata !{i32 786472, metadata !"OpArgN", i64 0} ; [ DW_TAG_enumerator ] [OpArgN :: 0]
!71 = metadata !{i32 786472, metadata !"OpArgU", i64 1} ; [ DW_TAG_enumerator ] [OpArgU :: 1]
!72 = metadata !{i32 786472, metadata !"OpArgR", i64 2} ; [ DW_TAG_enumerator ] [OpArgR :: 2]
!73 = metadata !{i32 786472, metadata !"OpArgK", i64 3} ; [ DW_TAG_enumerator ] [OpArgK :: 3]
!74 = metadata !{}
!75 = metadata !{metadata !76, metadata !85, metadata !343, metadata !348, metadata !351, metadata !413, metadata !416, metadata !417, metadata !422, metadata !423, metadata !424, metadata !427, metadata !431, metadata !432, metadata !433}
!76 = metadata !{i32 786478, metadata !77, metadata !78, metadata !"main", metadata !"main", metadata !"", i32 192, metadata !79, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i8**)* @main, null, null, metadata !74, i32 193} ; [ DW_TAG_subprogram ] [line 192] [def] [scope 193] [main]
!77 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/luac.c", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!78 = metadata !{i32 786473, metadata !77}        ; [ DW_TAG_file_type ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!79 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !80, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!80 = metadata !{metadata !81, metadata !81, metadata !82}
!81 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!82 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !83} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!83 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !84} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from char]
!84 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!85 = metadata !{i32 786478, metadata !77, metadata !78, metadata !"pmain", metadata !"pmain", metadata !"", i32 165, metadata !86, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @pmain, null, null, metadata !74, i32 166} ; [ DW_TAG_subprogram ] [line 165] [local] [def] [scope 166] [pmain]
!86 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !87, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!87 = metadata !{metadata !81, metadata !88}
!88 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !89} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from lua_State]
!89 = metadata !{i32 786454, metadata !90, null, metadata !"lua_State", i32 56, i64 0, i64 0, i64 0, i32 0, metadata !91} ; [ DW_TAG_typedef ] [lua_State] [line 56, size 0, align 0, offset 0] [from lua_State]
!90 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lua.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!91 = metadata !{i32 786451, metadata !92, null, metadata !"lua_State", i32 159, i64 960, i64 32, i32 0, i32 0, null, metadata !93, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [lua_State] [line 159, size 960, align 32, offset 0] [def] [from ]
!92 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lstate.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!93 = metadata !{metadata !94, metadata !106, metadata !107, metadata !108, metadata !110, metadata !111, metadata !135, metadata !251, metadata !289, metadata !290, metadata !291, metadata !292, metadata !296, metadata !297, metadata !298, metadata !301, metadata !302, metadata !331, metadata !332, metadata !333, metadata !334, metadata !335, metadata !336, metadata !337, metadata !342}
!94 = metadata !{i32 786445, metadata !92, metadata !91, metadata !"next", i32 160, i64 32, i64 32, i64 0, i32 0, metadata !95} ; [ DW_TAG_member ] [next] [line 160, size 32, align 32, offset 0] [from ]
!95 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !96} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from GCObject]
!96 = metadata !{i32 786454, metadata !97, null, metadata !"GCObject", i32 72, i64 0, i64 0, i64 0, i32 0, metadata !98} ; [ DW_TAG_typedef ] [GCObject] [line 72, size 0, align 0, offset 0] [from GCObject]
!97 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lobject.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!98 = metadata !{i32 786451, metadata !97, null, metadata !"GCObject", i32 85, i64 64, i64 32, i32 0, i32 0, null, metadata !99, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [GCObject] [line 85, size 64, align 32, offset 0] [def] [from ]
!99 = metadata !{metadata !100, metadata !101, metadata !105}
!100 = metadata !{i32 786445, metadata !97, metadata !98, metadata !"next", i32 86, i64 32, i64 32, i64 0, i32 0, metadata !95} ; [ DW_TAG_member ] [next] [line 86, size 32, align 32, offset 0] [from ]
!101 = metadata !{i32 786445, metadata !97, metadata !98, metadata !"tt", i32 86, i64 8, i64 8, i64 32, i32 0, metadata !102} ; [ DW_TAG_member ] [tt] [line 86, size 8, align 8, offset 32] [from lu_byte]
!102 = metadata !{i32 786454, metadata !103, null, metadata !"lu_byte", i32 35, i64 0, i64 0, i64 0, i32 0, metadata !104} ; [ DW_TAG_typedef ] [lu_byte] [line 35, size 0, align 0, offset 0] [from unsigned char]
!103 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/llimits.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!104 = metadata !{i32 786468, null, null, metadata !"unsigned char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [unsigned char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!105 = metadata !{i32 786445, metadata !97, metadata !98, metadata !"marked", i32 86, i64 8, i64 8, i64 40, i32 0, metadata !102} ; [ DW_TAG_member ] [marked] [line 86, size 8, align 8, offset 40] [from lu_byte]
!106 = metadata !{i32 786445, metadata !92, metadata !91, metadata !"tt", i32 160, i64 8, i64 8, i64 32, i32 0, metadata !102} ; [ DW_TAG_member ] [tt] [line 160, size 8, align 8, offset 32] [from lu_byte]
!107 = metadata !{i32 786445, metadata !92, metadata !91, metadata !"marked", i32 160, i64 8, i64 8, i64 40, i32 0, metadata !102} ; [ DW_TAG_member ] [marked] [line 160, size 8, align 8, offset 40] [from lu_byte]
!108 = metadata !{i32 786445, metadata !92, metadata !91, metadata !"nci", i32 161, i64 16, i64 16, i64 48, i32 0, metadata !109} ; [ DW_TAG_member ] [nci] [line 161, size 16, align 16, offset 48] [from unsigned short]
!109 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!110 = metadata !{i32 786445, metadata !92, metadata !91, metadata !"status", i32 162, i64 8, i64 8, i64 64, i32 0, metadata !102} ; [ DW_TAG_member ] [status] [line 162, size 8, align 8, offset 64] [from lu_byte]
!111 = metadata !{i32 786445, metadata !92, metadata !91, metadata !"top", i32 163, i64 32, i64 32, i64 96, i32 0, metadata !112} ; [ DW_TAG_member ] [top] [line 163, size 32, align 32, offset 96] [from StkId]
!112 = metadata !{i32 786454, metadata !97, null, metadata !"StkId", i32 294, i64 0, i64 0, i64 0, i32 0, metadata !113} ; [ DW_TAG_typedef ] [StkId] [line 294, size 0, align 0, offset 0] [from ]
!113 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !114} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from TValue]
!114 = metadata !{i32 786454, metadata !97, null, metadata !"TValue", i32 115, i64 0, i64 0, i64 0, i32 0, metadata !115} ; [ DW_TAG_typedef ] [TValue] [line 115, size 0, align 0, offset 0] [from lua_TValue]
!115 = metadata !{i32 786451, metadata !97, null, metadata !"lua_TValue", i32 113, i64 128, i64 64, i32 0, i32 0, null, metadata !116, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [lua_TValue] [line 113, size 128, align 64, offset 0] [def] [from ]
!116 = metadata !{metadata !117, metadata !134}
!117 = metadata !{i32 786445, metadata !97, metadata !115, metadata !"value_", i32 114, i64 64, i64 64, i64 0, i32 0, metadata !118} ; [ DW_TAG_member ] [value_] [line 114, size 64, align 64, offset 0] [from Value]
!118 = metadata !{i32 786454, metadata !97, null, metadata !"Value", i32 107, i64 0, i64 0, i64 0, i32 0, metadata !119} ; [ DW_TAG_typedef ] [Value] [line 107, size 0, align 0, offset 0] [from Value]
!119 = metadata !{i32 786455, metadata !97, null, metadata !"Value", i32 100, i64 64, i64 64, i64 0, i32 0, null, metadata !120, i32 0, null, null, null} ; [ DW_TAG_union_type ] [Value] [line 100, size 64, align 64, offset 0] [def] [from ]
!120 = metadata !{metadata !121, metadata !122, metadata !124, metadata !125, metadata !128, metadata !131}
!121 = metadata !{i32 786445, metadata !97, metadata !119, metadata !"gc", i32 101, i64 32, i64 32, i64 0, i32 0, metadata !95} ; [ DW_TAG_member ] [gc] [line 101, size 32, align 32, offset 0] [from ]
!122 = metadata !{i32 786445, metadata !97, metadata !119, metadata !"p", i32 102, i64 32, i64 32, i64 0, i32 0, metadata !123} ; [ DW_TAG_member ] [p] [line 102, size 32, align 32, offset 0] [from ]
!123 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!124 = metadata !{i32 786445, metadata !97, metadata !119, metadata !"b", i32 103, i64 32, i64 32, i64 0, i32 0, metadata !81} ; [ DW_TAG_member ] [b] [line 103, size 32, align 32, offset 0] [from int]
!125 = metadata !{i32 786445, metadata !97, metadata !119, metadata !"f", i32 104, i64 32, i64 32, i64 0, i32 0, metadata !126} ; [ DW_TAG_member ] [f] [line 104, size 32, align 32, offset 0] [from lua_CFunction]
!126 = metadata !{i32 786454, metadata !90, null, metadata !"lua_CFunction", i32 105, i64 0, i64 0, i64 0, i32 0, metadata !127} ; [ DW_TAG_typedef ] [lua_CFunction] [line 105, size 0, align 0, offset 0] [from ]
!127 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !86} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!128 = metadata !{i32 786445, metadata !97, metadata !119, metadata !"i", i32 105, i64 64, i64 64, i64 0, i32 0, metadata !129} ; [ DW_TAG_member ] [i] [line 105, size 64, align 64, offset 0] [from lua_Integer]
!129 = metadata !{i32 786454, metadata !90, null, metadata !"lua_Integer", i32 93, i64 0, i64 0, i64 0, i32 0, metadata !130} ; [ DW_TAG_typedef ] [lua_Integer] [line 93, size 0, align 0, offset 0] [from long long int]
!130 = metadata !{i32 786468, null, null, metadata !"long long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!131 = metadata !{i32 786445, metadata !97, metadata !119, metadata !"n", i32 106, i64 64, i64 64, i64 0, i32 0, metadata !132} ; [ DW_TAG_member ] [n] [line 106, size 64, align 64, offset 0] [from lua_Number]
!132 = metadata !{i32 786454, metadata !90, null, metadata !"lua_Number", i32 89, i64 0, i64 0, i64 0, i32 0, metadata !133} ; [ DW_TAG_typedef ] [lua_Number] [line 89, size 0, align 0, offset 0] [from double]
!133 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!134 = metadata !{i32 786445, metadata !97, metadata !115, metadata !"tt_", i32 114, i64 32, i64 32, i64 64, i32 0, metadata !81} ; [ DW_TAG_member ] [tt_] [line 114, size 32, align 32, offset 64] [from int]
!135 = metadata !{i32 786445, metadata !92, metadata !91, metadata !"l_G", i32 164, i64 32, i64 32, i64 128, i32 0, metadata !136} ; [ DW_TAG_member ] [l_G] [line 164, size 32, align 32, offset 128] [from ]
!136 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !137} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from global_State]
!137 = metadata !{i32 786454, metadata !92, null, metadata !"global_State", i32 153, i64 0, i64 0, i64 0, i32 0, metadata !138} ; [ DW_TAG_typedef ] [global_State] [line 153, size 0, align 0, offset 0] [from global_State]
!138 = metadata !{i32 786451, metadata !92, null, metadata !"global_State", i32 118, i64 5568, i64 64, i32 0, i32 0, null, metadata !139, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [global_State] [line 118, size 5568, align 64, offset 0] [def] [from ]
!139 = metadata !{metadata !140, metadata !148, metadata !149, metadata !152, metadata !153, metadata !155, metadata !156, metadata !180, metadata !181, metadata !182, metadata !183, metadata !184, metadata !185, metadata !186, metadata !187, metadata !189, metadata !190, metadata !191, metadata !192, metadata !193, metadata !194, metadata !195, metadata !196, metadata !197, metadata !199, metadata !200, metadata !201, metadata !202, metadata !203, metadata !204, metadata !207, metadata !208, metadata !212, metadata !246}
!140 = metadata !{i32 786445, metadata !92, metadata !138, metadata !"frealloc", i32 119, i64 32, i64 32, i64 0, i32 0, metadata !141} ; [ DW_TAG_member ] [frealloc] [line 119, size 32, align 32, offset 0] [from lua_Alloc]
!141 = metadata !{i32 786454, metadata !90, null, metadata !"lua_Alloc", i32 124, i64 0, i64 0, i64 0, i32 0, metadata !142} ; [ DW_TAG_typedef ] [lua_Alloc] [line 124, size 0, align 0, offset 0] [from ]
!142 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !143} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!143 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !144, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!144 = metadata !{metadata !123, metadata !123, metadata !123, metadata !145, metadata !145}
!145 = metadata !{i32 786454, metadata !146, null, metadata !"size_t", i32 216, i64 0, i64 0, i64 0, i32 0, metadata !147} ; [ DW_TAG_typedef ] [size_t] [line 216, size 0, align 0, offset 0] [from unsigned int]
!146 = metadata !{metadata !"D:/Xilinx/SDx/2016.3/SDK/gnu/aarch32/nt/gcc-arm-linux-gnueabi/lib/gcc/arm-linux-gnueabihf/5.2.1/include\5Cstddef.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!147 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!148 = metadata !{i32 786445, metadata !92, metadata !138, metadata !"ud", i32 120, i64 32, i64 32, i64 32, i32 0, metadata !123} ; [ DW_TAG_member ] [ud] [line 120, size 32, align 32, offset 32] [from ]
!149 = metadata !{i32 786445, metadata !92, metadata !138, metadata !"totalbytes", i32 121, i64 32, i64 32, i64 64, i32 0, metadata !150} ; [ DW_TAG_member ] [totalbytes] [line 121, size 32, align 32, offset 64] [from l_mem]
!150 = metadata !{i32 786454, metadata !103, null, metadata !"l_mem", i32 27, i64 0, i64 0, i64 0, i32 0, metadata !151} ; [ DW_TAG_typedef ] [l_mem] [line 27, size 0, align 0, offset 0] [from ptrdiff_t]
!151 = metadata !{i32 786454, metadata !146, null, metadata !"ptrdiff_t", i32 149, i64 0, i64 0, i64 0, i32 0, metadata !81} ; [ DW_TAG_typedef ] [ptrdiff_t] [line 149, size 0, align 0, offset 0] [from int]
!152 = metadata !{i32 786445, metadata !92, metadata !138, metadata !"GCdebt", i32 122, i64 32, i64 32, i64 96, i32 0, metadata !150} ; [ DW_TAG_member ] [GCdebt] [line 122, size 32, align 32, offset 96] [from l_mem]
!153 = metadata !{i32 786445, metadata !92, metadata !138, metadata !"GCmemtrav", i32 123, i64 32, i64 32, i64 128, i32 0, metadata !154} ; [ DW_TAG_member ] [GCmemtrav] [line 123, size 32, align 32, offset 128] [from lu_mem]
!154 = metadata !{i32 786454, metadata !103, null, metadata !"lu_mem", i32 26, i64 0, i64 0, i64 0, i32 0, metadata !145} ; [ DW_TAG_typedef ] [lu_mem] [line 26, size 0, align 0, offset 0] [from size_t]
!155 = metadata !{i32 786445, metadata !92, metadata !138, metadata !"GCestimate", i32 124, i64 32, i64 32, i64 160, i32 0, metadata !154} ; [ DW_TAG_member ] [GCestimate] [line 124, size 32, align 32, offset 160] [from lu_mem]
!156 = metadata !{i32 786445, metadata !92, metadata !138, metadata !"strt", i32 125, i64 96, i64 32, i64 192, i32 0, metadata !157} ; [ DW_TAG_member ] [strt] [line 125, size 96, align 32, offset 192] [from stringtable]
!157 = metadata !{i32 786454, metadata !92, null, metadata !"stringtable", i32 62, i64 0, i64 0, i64 0, i32 0, metadata !158} ; [ DW_TAG_typedef ] [stringtable] [line 62, size 0, align 0, offset 0] [from stringtable]
!158 = metadata !{i32 786451, metadata !92, null, metadata !"stringtable", i32 58, i64 96, i64 32, i32 0, i32 0, null, metadata !159, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [stringtable] [line 58, size 96, align 32, offset 0] [def] [from ]
!159 = metadata !{metadata !160, metadata !178, metadata !179}
!160 = metadata !{i32 786445, metadata !92, metadata !158, metadata !"hash", i32 59, i64 32, i64 32, i64 0, i32 0, metadata !161} ; [ DW_TAG_member ] [hash] [line 59, size 32, align 32, offset 0] [from ]
!161 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !162} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!162 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !163} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from TString]
!163 = metadata !{i32 786454, metadata !97, null, metadata !"TString", i32 312, i64 0, i64 0, i64 0, i32 0, metadata !164} ; [ DW_TAG_typedef ] [TString] [line 312, size 0, align 0, offset 0] [from TString]
!164 = metadata !{i32 786451, metadata !97, null, metadata !"TString", i32 303, i64 128, i64 32, i32 0, i32 0, null, metadata !165, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [TString] [line 303, size 128, align 32, offset 0] [def] [from ]
!165 = metadata !{metadata !166, metadata !167, metadata !168, metadata !169, metadata !170, metadata !171, metadata !172}
!166 = metadata !{i32 786445, metadata !97, metadata !164, metadata !"next", i32 304, i64 32, i64 32, i64 0, i32 0, metadata !95} ; [ DW_TAG_member ] [next] [line 304, size 32, align 32, offset 0] [from ]
!167 = metadata !{i32 786445, metadata !97, metadata !164, metadata !"tt", i32 304, i64 8, i64 8, i64 32, i32 0, metadata !102} ; [ DW_TAG_member ] [tt] [line 304, size 8, align 8, offset 32] [from lu_byte]
!168 = metadata !{i32 786445, metadata !97, metadata !164, metadata !"marked", i32 304, i64 8, i64 8, i64 40, i32 0, metadata !102} ; [ DW_TAG_member ] [marked] [line 304, size 8, align 8, offset 40] [from lu_byte]
!169 = metadata !{i32 786445, metadata !97, metadata !164, metadata !"extra", i32 305, i64 8, i64 8, i64 48, i32 0, metadata !102} ; [ DW_TAG_member ] [extra] [line 305, size 8, align 8, offset 48] [from lu_byte]
!170 = metadata !{i32 786445, metadata !97, metadata !164, metadata !"shrlen", i32 306, i64 8, i64 8, i64 56, i32 0, metadata !102} ; [ DW_TAG_member ] [shrlen] [line 306, size 8, align 8, offset 56] [from lu_byte]
!171 = metadata !{i32 786445, metadata !97, metadata !164, metadata !"hash", i32 307, i64 32, i64 32, i64 64, i32 0, metadata !147} ; [ DW_TAG_member ] [hash] [line 307, size 32, align 32, offset 64] [from unsigned int]
!172 = metadata !{i32 786445, metadata !97, metadata !164, metadata !"u", i32 311, i64 32, i64 32, i64 96, i32 0, metadata !173} ; [ DW_TAG_member ] [u] [line 311, size 32, align 32, offset 96] [from ]
!173 = metadata !{i32 786455, metadata !97, metadata !164, metadata !"", i32 308, i64 32, i64 32, i64 0, i32 0, null, metadata !174, i32 0, null, null, null} ; [ DW_TAG_union_type ] [line 308, size 32, align 32, offset 0] [def] [from ]
!174 = metadata !{metadata !175, metadata !176}
!175 = metadata !{i32 786445, metadata !97, metadata !173, metadata !"lnglen", i32 309, i64 32, i64 32, i64 0, i32 0, metadata !145} ; [ DW_TAG_member ] [lnglen] [line 309, size 32, align 32, offset 0] [from size_t]
!176 = metadata !{i32 786445, metadata !97, metadata !173, metadata !"hnext", i32 310, i64 32, i64 32, i64 0, i32 0, metadata !177} ; [ DW_TAG_member ] [hnext] [line 310, size 32, align 32, offset 0] [from ]
!177 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !164} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from TString]
!178 = metadata !{i32 786445, metadata !92, metadata !158, metadata !"nuse", i32 60, i64 32, i64 32, i64 32, i32 0, metadata !81} ; [ DW_TAG_member ] [nuse] [line 60, size 32, align 32, offset 32] [from int]
!179 = metadata !{i32 786445, metadata !92, metadata !158, metadata !"size", i32 61, i64 32, i64 32, i64 64, i32 0, metadata !81} ; [ DW_TAG_member ] [size] [line 61, size 32, align 32, offset 64] [from int]
!180 = metadata !{i32 786445, metadata !92, metadata !138, metadata !"l_registry", i32 126, i64 128, i64 64, i64 320, i32 0, metadata !114} ; [ DW_TAG_member ] [l_registry] [line 126, size 128, align 64, offset 320] [from TValue]
!181 = metadata !{i32 786445, metadata !92, metadata !138, metadata !"seed", i32 127, i64 32, i64 32, i64 448, i32 0, metadata !147} ; [ DW_TAG_member ] [seed] [line 127, size 32, align 32, offset 448] [from unsigned int]
!182 = metadata !{i32 786445, metadata !92, metadata !138, metadata !"currentwhite", i32 128, i64 8, i64 8, i64 480, i32 0, metadata !102} ; [ DW_TAG_member ] [currentwhite] [line 128, size 8, align 8, offset 480] [from lu_byte]
!183 = metadata !{i32 786445, metadata !92, metadata !138, metadata !"gcstate", i32 129, i64 8, i64 8, i64 488, i32 0, metadata !102} ; [ DW_TAG_member ] [gcstate] [line 129, size 8, align 8, offset 488] [from lu_byte]
!184 = metadata !{i32 786445, metadata !92, metadata !138, metadata !"gckind", i32 130, i64 8, i64 8, i64 496, i32 0, metadata !102} ; [ DW_TAG_member ] [gckind] [line 130, size 8, align 8, offset 496] [from lu_byte]
!185 = metadata !{i32 786445, metadata !92, metadata !138, metadata !"gcrunning", i32 131, i64 8, i64 8, i64 504, i32 0, metadata !102} ; [ DW_TAG_member ] [gcrunning] [line 131, size 8, align 8, offset 504] [from lu_byte]
!186 = metadata !{i32 786445, metadata !92, metadata !138, metadata !"allgc", i32 132, i64 32, i64 32, i64 512, i32 0, metadata !95} ; [ DW_TAG_member ] [allgc] [line 132, size 32, align 32, offset 512] [from ]
!187 = metadata !{i32 786445, metadata !92, metadata !138, metadata !"sweepgc", i32 133, i64 32, i64 32, i64 544, i32 0, metadata !188} ; [ DW_TAG_member ] [sweepgc] [line 133, size 32, align 32, offset 544] [from ]
!188 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !95} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!189 = metadata !{i32 786445, metadata !92, metadata !138, metadata !"finobj", i32 134, i64 32, i64 32, i64 576, i32 0, metadata !95} ; [ DW_TAG_member ] [finobj] [line 134, size 32, align 32, offset 576] [from ]
!190 = metadata !{i32 786445, metadata !92, metadata !138, metadata !"gray", i32 135, i64 32, i64 32, i64 608, i32 0, metadata !95} ; [ DW_TAG_member ] [gray] [line 135, size 32, align 32, offset 608] [from ]
!191 = metadata !{i32 786445, metadata !92, metadata !138, metadata !"grayagain", i32 136, i64 32, i64 32, i64 640, i32 0, metadata !95} ; [ DW_TAG_member ] [grayagain] [line 136, size 32, align 32, offset 640] [from ]
!192 = metadata !{i32 786445, metadata !92, metadata !138, metadata !"weak", i32 137, i64 32, i64 32, i64 672, i32 0, metadata !95} ; [ DW_TAG_member ] [weak] [line 137, size 32, align 32, offset 672] [from ]
!193 = metadata !{i32 786445, metadata !92, metadata !138, metadata !"ephemeron", i32 138, i64 32, i64 32, i64 704, i32 0, metadata !95} ; [ DW_TAG_member ] [ephemeron] [line 138, size 32, align 32, offset 704] [from ]
!194 = metadata !{i32 786445, metadata !92, metadata !138, metadata !"allweak", i32 139, i64 32, i64 32, i64 736, i32 0, metadata !95} ; [ DW_TAG_member ] [allweak] [line 139, size 32, align 32, offset 736] [from ]
!195 = metadata !{i32 786445, metadata !92, metadata !138, metadata !"tobefnz", i32 140, i64 32, i64 32, i64 768, i32 0, metadata !95} ; [ DW_TAG_member ] [tobefnz] [line 140, size 32, align 32, offset 768] [from ]
!196 = metadata !{i32 786445, metadata !92, metadata !138, metadata !"fixedgc", i32 141, i64 32, i64 32, i64 800, i32 0, metadata !95} ; [ DW_TAG_member ] [fixedgc] [line 141, size 32, align 32, offset 800] [from ]
!197 = metadata !{i32 786445, metadata !92, metadata !138, metadata !"twups", i32 142, i64 32, i64 32, i64 832, i32 0, metadata !198} ; [ DW_TAG_member ] [twups] [line 142, size 32, align 32, offset 832] [from ]
!198 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !91} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from lua_State]
!199 = metadata !{i32 786445, metadata !92, metadata !138, metadata !"gcfinnum", i32 143, i64 32, i64 32, i64 864, i32 0, metadata !147} ; [ DW_TAG_member ] [gcfinnum] [line 143, size 32, align 32, offset 864] [from unsigned int]
!200 = metadata !{i32 786445, metadata !92, metadata !138, metadata !"gcpause", i32 144, i64 32, i64 32, i64 896, i32 0, metadata !81} ; [ DW_TAG_member ] [gcpause] [line 144, size 32, align 32, offset 896] [from int]
!201 = metadata !{i32 786445, metadata !92, metadata !138, metadata !"gcstepmul", i32 145, i64 32, i64 32, i64 928, i32 0, metadata !81} ; [ DW_TAG_member ] [gcstepmul] [line 145, size 32, align 32, offset 928] [from int]
!202 = metadata !{i32 786445, metadata !92, metadata !138, metadata !"panic", i32 146, i64 32, i64 32, i64 960, i32 0, metadata !126} ; [ DW_TAG_member ] [panic] [line 146, size 32, align 32, offset 960] [from lua_CFunction]
!203 = metadata !{i32 786445, metadata !92, metadata !138, metadata !"mainthread", i32 147, i64 32, i64 32, i64 992, i32 0, metadata !198} ; [ DW_TAG_member ] [mainthread] [line 147, size 32, align 32, offset 992] [from ]
!204 = metadata !{i32 786445, metadata !92, metadata !138, metadata !"version", i32 148, i64 32, i64 32, i64 1024, i32 0, metadata !205} ; [ DW_TAG_member ] [version] [line 148, size 32, align 32, offset 1024] [from ]
!205 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !206} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!206 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !132} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from lua_Number]
!207 = metadata !{i32 786445, metadata !92, metadata !138, metadata !"memerrmsg", i32 149, i64 32, i64 32, i64 1056, i32 0, metadata !162} ; [ DW_TAG_member ] [memerrmsg] [line 149, size 32, align 32, offset 1056] [from ]
!208 = metadata !{i32 786445, metadata !92, metadata !138, metadata !"tmname", i32 150, i64 768, i64 32, i64 1088, i32 0, metadata !209} ; [ DW_TAG_member ] [tmname] [line 150, size 768, align 32, offset 1088] [from ]
!209 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 768, i64 32, i32 0, i32 0, metadata !162, metadata !210, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 768, align 32, offset 0] [from ]
!210 = metadata !{metadata !211}
!211 = metadata !{i32 786465, i64 0, i64 24}      ; [ DW_TAG_subrange_type ] [0, 23]
!212 = metadata !{i32 786445, metadata !92, metadata !138, metadata !"mt", i32 151, i64 288, i64 32, i64 1856, i32 0, metadata !213} ; [ DW_TAG_member ] [mt] [line 151, size 288, align 32, offset 1856] [from ]
!213 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 288, i64 32, i32 0, i32 0, metadata !214, metadata !244, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 288, align 32, offset 0] [from ]
!214 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !215} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from Table]
!215 = metadata !{i32 786451, metadata !97, null, metadata !"Table", i32 497, i64 256, i64 32, i32 0, i32 0, null, metadata !216, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [Table] [line 497, size 256, align 32, offset 0] [def] [from ]
!216 = metadata !{metadata !217, metadata !218, metadata !219, metadata !220, metadata !221, metadata !222, metadata !223, metadata !224, metadata !241, metadata !242, metadata !243}
!217 = metadata !{i32 786445, metadata !97, metadata !215, metadata !"next", i32 498, i64 32, i64 32, i64 0, i32 0, metadata !95} ; [ DW_TAG_member ] [next] [line 498, size 32, align 32, offset 0] [from ]
!218 = metadata !{i32 786445, metadata !97, metadata !215, metadata !"tt", i32 498, i64 8, i64 8, i64 32, i32 0, metadata !102} ; [ DW_TAG_member ] [tt] [line 498, size 8, align 8, offset 32] [from lu_byte]
!219 = metadata !{i32 786445, metadata !97, metadata !215, metadata !"marked", i32 498, i64 8, i64 8, i64 40, i32 0, metadata !102} ; [ DW_TAG_member ] [marked] [line 498, size 8, align 8, offset 40] [from lu_byte]
!220 = metadata !{i32 786445, metadata !97, metadata !215, metadata !"flags", i32 499, i64 8, i64 8, i64 48, i32 0, metadata !102} ; [ DW_TAG_member ] [flags] [line 499, size 8, align 8, offset 48] [from lu_byte]
!221 = metadata !{i32 786445, metadata !97, metadata !215, metadata !"lsizenode", i32 500, i64 8, i64 8, i64 56, i32 0, metadata !102} ; [ DW_TAG_member ] [lsizenode] [line 500, size 8, align 8, offset 56] [from lu_byte]
!222 = metadata !{i32 786445, metadata !97, metadata !215, metadata !"sizearray", i32 501, i64 32, i64 32, i64 64, i32 0, metadata !147} ; [ DW_TAG_member ] [sizearray] [line 501, size 32, align 32, offset 64] [from unsigned int]
!223 = metadata !{i32 786445, metadata !97, metadata !215, metadata !"array", i32 502, i64 32, i64 32, i64 96, i32 0, metadata !113} ; [ DW_TAG_member ] [array] [line 502, size 32, align 32, offset 96] [from ]
!224 = metadata !{i32 786445, metadata !97, metadata !215, metadata !"node", i32 503, i64 32, i64 32, i64 128, i32 0, metadata !225} ; [ DW_TAG_member ] [node] [line 503, size 32, align 32, offset 128] [from ]
!225 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !226} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from Node]
!226 = metadata !{i32 786454, metadata !97, null, metadata !"Node", i32 494, i64 0, i64 0, i64 0, i32 0, metadata !227} ; [ DW_TAG_typedef ] [Node] [line 494, size 0, align 0, offset 0] [from Node]
!227 = metadata !{i32 786451, metadata !97, null, metadata !"Node", i32 491, i64 256, i64 64, i32 0, i32 0, null, metadata !228, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [Node] [line 491, size 256, align 64, offset 0] [def] [from ]
!228 = metadata !{metadata !229, metadata !230}
!229 = metadata !{i32 786445, metadata !97, metadata !227, metadata !"i_val", i32 492, i64 128, i64 64, i64 0, i32 0, metadata !114} ; [ DW_TAG_member ] [i_val] [line 492, size 128, align 64, offset 0] [from TValue]
!230 = metadata !{i32 786445, metadata !97, metadata !227, metadata !"i_key", i32 493, i64 128, i64 64, i64 128, i32 0, metadata !231} ; [ DW_TAG_member ] [i_key] [line 493, size 128, align 64, offset 128] [from TKey]
!231 = metadata !{i32 786454, metadata !97, null, metadata !"TKey", i32 481, i64 0, i64 0, i64 0, i32 0, metadata !232} ; [ DW_TAG_typedef ] [TKey] [line 481, size 0, align 0, offset 0] [from TKey]
!232 = metadata !{i32 786455, metadata !97, null, metadata !"TKey", i32 475, i64 128, i64 64, i64 0, i32 0, null, metadata !233, i32 0, null, null, null} ; [ DW_TAG_union_type ] [TKey] [line 475, size 128, align 64, offset 0] [def] [from ]
!233 = metadata !{metadata !234, metadata !240}
!234 = metadata !{i32 786445, metadata !97, metadata !232, metadata !"nk", i32 479, i64 128, i64 64, i64 0, i32 0, metadata !235} ; [ DW_TAG_member ] [nk] [line 479, size 128, align 64, offset 0] [from ]
!235 = metadata !{i32 786451, metadata !97, metadata !232, metadata !"", i32 476, i64 128, i64 64, i32 0, i32 0, null, metadata !236, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 476, size 128, align 64, offset 0] [def] [from ]
!236 = metadata !{metadata !237, metadata !238, metadata !239}
!237 = metadata !{i32 786445, metadata !97, metadata !235, metadata !"value_", i32 477, i64 64, i64 64, i64 0, i32 0, metadata !118} ; [ DW_TAG_member ] [value_] [line 477, size 64, align 64, offset 0] [from Value]
!238 = metadata !{i32 786445, metadata !97, metadata !235, metadata !"tt_", i32 477, i64 32, i64 32, i64 64, i32 0, metadata !81} ; [ DW_TAG_member ] [tt_] [line 477, size 32, align 32, offset 64] [from int]
!239 = metadata !{i32 786445, metadata !97, metadata !235, metadata !"next", i32 478, i64 32, i64 32, i64 96, i32 0, metadata !81} ; [ DW_TAG_member ] [next] [line 478, size 32, align 32, offset 96] [from int]
!240 = metadata !{i32 786445, metadata !97, metadata !232, metadata !"tvk", i32 480, i64 128, i64 64, i64 0, i32 0, metadata !114} ; [ DW_TAG_member ] [tvk] [line 480, size 128, align 64, offset 0] [from TValue]
!241 = metadata !{i32 786445, metadata !97, metadata !215, metadata !"lastfree", i32 504, i64 32, i64 32, i64 160, i32 0, metadata !225} ; [ DW_TAG_member ] [lastfree] [line 504, size 32, align 32, offset 160] [from ]
!242 = metadata !{i32 786445, metadata !97, metadata !215, metadata !"metatable", i32 505, i64 32, i64 32, i64 192, i32 0, metadata !214} ; [ DW_TAG_member ] [metatable] [line 505, size 32, align 32, offset 192] [from ]
!243 = metadata !{i32 786445, metadata !97, metadata !215, metadata !"gclist", i32 506, i64 32, i64 32, i64 224, i32 0, metadata !95} ; [ DW_TAG_member ] [gclist] [line 506, size 32, align 32, offset 224] [from ]
!244 = metadata !{metadata !245}
!245 = metadata !{i32 786465, i64 0, i64 9}       ; [ DW_TAG_subrange_type ] [0, 8]
!246 = metadata !{i32 786445, metadata !92, metadata !138, metadata !"strcache", i32 152, i64 3392, i64 32, i64 2144, i32 0, metadata !247} ; [ DW_TAG_member ] [strcache] [line 152, size 3392, align 32, offset 2144] [from ]
!247 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 3392, i64 32, i32 0, i32 0, metadata !162, metadata !248, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 3392, align 32, offset 0] [from ]
!248 = metadata !{metadata !249, metadata !250}
!249 = metadata !{i32 786465, i64 0, i64 53}      ; [ DW_TAG_subrange_type ] [0, 52]
!250 = metadata !{i32 786465, i64 0, i64 2}       ; [ DW_TAG_subrange_type ] [0, 1]
!251 = metadata !{i32 786445, metadata !92, metadata !91, metadata !"ci", i32 165, i64 32, i64 32, i64 160, i32 0, metadata !252} ; [ DW_TAG_member ] [ci] [line 165, size 32, align 32, offset 160] [from ]
!252 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !253} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from CallInfo]
!253 = metadata !{i32 786454, metadata !92, null, metadata !"CallInfo", i32 92, i64 0, i64 0, i64 0, i32 0, metadata !254} ; [ DW_TAG_typedef ] [CallInfo] [line 92, size 0, align 0, offset 0] [from CallInfo]
!254 = metadata !{i32 786451, metadata !92, null, metadata !"CallInfo", i32 74, i64 288, i64 32, i32 0, i32 0, null, metadata !255, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [CallInfo] [line 74, size 288, align 32, offset 0] [def] [from ]
!255 = metadata !{metadata !256, metadata !257, metadata !258, metadata !260, metadata !261, metadata !285, metadata !286, metadata !288}
!256 = metadata !{i32 786445, metadata !92, metadata !254, metadata !"func", i32 75, i64 32, i64 32, i64 0, i32 0, metadata !112} ; [ DW_TAG_member ] [func] [line 75, size 32, align 32, offset 0] [from StkId]
!257 = metadata !{i32 786445, metadata !92, metadata !254, metadata !"top", i32 76, i64 32, i64 32, i64 32, i32 0, metadata !112} ; [ DW_TAG_member ] [top] [line 76, size 32, align 32, offset 32] [from StkId]
!258 = metadata !{i32 786445, metadata !92, metadata !254, metadata !"previous", i32 77, i64 32, i64 32, i64 64, i32 0, metadata !259} ; [ DW_TAG_member ] [previous] [line 77, size 32, align 32, offset 64] [from ]
!259 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !254} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from CallInfo]
!260 = metadata !{i32 786445, metadata !92, metadata !254, metadata !"next", i32 77, i64 32, i64 32, i64 96, i32 0, metadata !259} ; [ DW_TAG_member ] [next] [line 77, size 32, align 32, offset 96] [from ]
!261 = metadata !{i32 786445, metadata !92, metadata !254, metadata !"u", i32 88, i64 96, i64 32, i64 128, i32 0, metadata !262} ; [ DW_TAG_member ] [u] [line 88, size 96, align 32, offset 128] [from ]
!262 = metadata !{i32 786455, metadata !92, metadata !254, metadata !"", i32 78, i64 96, i64 32, i64 0, i32 0, null, metadata !263, i32 0, null, null, null} ; [ DW_TAG_union_type ] [line 78, size 96, align 32, offset 0] [def] [from ]
!263 = metadata !{metadata !264, metadata !272}
!264 = metadata !{i32 786445, metadata !92, metadata !262, metadata !"l", i32 82, i64 64, i64 32, i64 0, i32 0, metadata !265} ; [ DW_TAG_member ] [l] [line 82, size 64, align 32, offset 0] [from ]
!265 = metadata !{i32 786451, metadata !92, metadata !262, metadata !"", i32 79, i64 64, i64 32, i32 0, i32 0, null, metadata !266, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 79, size 64, align 32, offset 0] [def] [from ]
!266 = metadata !{metadata !267, metadata !268}
!267 = metadata !{i32 786445, metadata !92, metadata !265, metadata !"base", i32 80, i64 32, i64 32, i64 0, i32 0, metadata !112} ; [ DW_TAG_member ] [base] [line 80, size 32, align 32, offset 0] [from StkId]
!268 = metadata !{i32 786445, metadata !92, metadata !265, metadata !"savedpc", i32 81, i64 32, i64 32, i64 32, i32 0, metadata !269} ; [ DW_TAG_member ] [savedpc] [line 81, size 32, align 32, offset 32] [from ]
!269 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !270} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!270 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !271} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from Instruction]
!271 = metadata !{i32 786454, metadata !103, null, metadata !"Instruction", i32 163, i64 0, i64 0, i64 0, i32 0, metadata !147} ; [ DW_TAG_typedef ] [Instruction] [line 163, size 0, align 0, offset 0] [from unsigned int]
!272 = metadata !{i32 786445, metadata !92, metadata !262, metadata !"c", i32 87, i64 96, i64 32, i64 0, i32 0, metadata !273} ; [ DW_TAG_member ] [c] [line 87, size 96, align 32, offset 0] [from ]
!273 = metadata !{i32 786451, metadata !92, metadata !262, metadata !"", i32 83, i64 96, i64 32, i32 0, i32 0, null, metadata !274, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 83, size 96, align 32, offset 0] [def] [from ]
!274 = metadata !{metadata !275, metadata !283, metadata !284}
!275 = metadata !{i32 786445, metadata !92, metadata !273, metadata !"k", i32 84, i64 32, i64 32, i64 0, i32 0, metadata !276} ; [ DW_TAG_member ] [k] [line 84, size 32, align 32, offset 0] [from lua_KFunction]
!276 = metadata !{i32 786454, metadata !90, null, metadata !"lua_KFunction", i32 110, i64 0, i64 0, i64 0, i32 0, metadata !277} ; [ DW_TAG_typedef ] [lua_KFunction] [line 110, size 0, align 0, offset 0] [from ]
!277 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !278} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!278 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !279, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!279 = metadata !{metadata !81, metadata !88, metadata !81, metadata !280}
!280 = metadata !{i32 786454, metadata !90, null, metadata !"lua_KContext", i32 99, i64 0, i64 0, i64 0, i32 0, metadata !281} ; [ DW_TAG_typedef ] [lua_KContext] [line 99, size 0, align 0, offset 0] [from intptr_t]
!281 = metadata !{i32 786454, metadata !282, null, metadata !"intptr_t", i32 125, i64 0, i64 0, i64 0, i32 0, metadata !81} ; [ DW_TAG_typedef ] [intptr_t] [line 125, size 0, align 0, offset 0] [from int]
!282 = metadata !{metadata !"D:/Xilinx/SDx/2016.3/SDK/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include\5Cstdint.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!283 = metadata !{i32 786445, metadata !92, metadata !273, metadata !"old_errfunc", i32 85, i64 32, i64 32, i64 32, i32 0, metadata !151} ; [ DW_TAG_member ] [old_errfunc] [line 85, size 32, align 32, offset 32] [from ptrdiff_t]
!284 = metadata !{i32 786445, metadata !92, metadata !273, metadata !"ctx", i32 86, i64 32, i64 32, i64 64, i32 0, metadata !280} ; [ DW_TAG_member ] [ctx] [line 86, size 32, align 32, offset 64] [from lua_KContext]
!285 = metadata !{i32 786445, metadata !92, metadata !254, metadata !"extra", i32 89, i64 32, i64 32, i64 224, i32 0, metadata !151} ; [ DW_TAG_member ] [extra] [line 89, size 32, align 32, offset 224] [from ptrdiff_t]
!286 = metadata !{i32 786445, metadata !92, metadata !254, metadata !"nresults", i32 90, i64 16, i64 16, i64 256, i32 0, metadata !287} ; [ DW_TAG_member ] [nresults] [line 90, size 16, align 16, offset 256] [from short]
!287 = metadata !{i32 786468, null, null, metadata !"short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [short] [line 0, size 16, align 16, offset 0, enc DW_ATE_signed]
!288 = metadata !{i32 786445, metadata !92, metadata !254, metadata !"callstatus", i32 91, i64 8, i64 8, i64 272, i32 0, metadata !102} ; [ DW_TAG_member ] [callstatus] [line 91, size 8, align 8, offset 272] [from lu_byte]
!289 = metadata !{i32 786445, metadata !92, metadata !91, metadata !"oldpc", i32 166, i64 32, i64 32, i64 192, i32 0, metadata !269} ; [ DW_TAG_member ] [oldpc] [line 166, size 32, align 32, offset 192] [from ]
!290 = metadata !{i32 786445, metadata !92, metadata !91, metadata !"stack_last", i32 167, i64 32, i64 32, i64 224, i32 0, metadata !112} ; [ DW_TAG_member ] [stack_last] [line 167, size 32, align 32, offset 224] [from StkId]
!291 = metadata !{i32 786445, metadata !92, metadata !91, metadata !"stack", i32 168, i64 32, i64 32, i64 256, i32 0, metadata !112} ; [ DW_TAG_member ] [stack] [line 168, size 32, align 32, offset 256] [from StkId]
!292 = metadata !{i32 786445, metadata !92, metadata !91, metadata !"openupval", i32 169, i64 32, i64 32, i64 288, i32 0, metadata !293} ; [ DW_TAG_member ] [openupval] [line 169, size 32, align 32, offset 288] [from ]
!293 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !294} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from UpVal]
!294 = metadata !{i32 786454, metadata !97, null, metadata !"UpVal", i32 436, i64 0, i64 0, i64 0, i32 0, metadata !295} ; [ DW_TAG_typedef ] [UpVal] [line 436, size 0, align 0, offset 0] [from UpVal]
!295 = metadata !{i32 786451, metadata !97, null, metadata !"UpVal", i32 436, i64 0, i64 0, i32 0, i32 4, null, null, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [UpVal] [line 436, size 0, align 0, offset 0] [decl] [from ]
!296 = metadata !{i32 786445, metadata !92, metadata !91, metadata !"gclist", i32 170, i64 32, i64 32, i64 320, i32 0, metadata !95} ; [ DW_TAG_member ] [gclist] [line 170, size 32, align 32, offset 320] [from ]
!297 = metadata !{i32 786445, metadata !92, metadata !91, metadata !"twups", i32 171, i64 32, i64 32, i64 352, i32 0, metadata !198} ; [ DW_TAG_member ] [twups] [line 171, size 32, align 32, offset 352] [from ]
!298 = metadata !{i32 786445, metadata !92, metadata !91, metadata !"errorJmp", i32 172, i64 32, i64 32, i64 384, i32 0, metadata !299} ; [ DW_TAG_member ] [errorJmp] [line 172, size 32, align 32, offset 384] [from ]
!299 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !300} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from lua_longjmp]
!300 = metadata !{i32 786451, metadata !92, null, metadata !"lua_longjmp", i32 33, i64 0, i64 0, i32 0, i32 4, null, null, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [lua_longjmp] [line 33, size 0, align 0, offset 0] [decl] [from ]
!301 = metadata !{i32 786445, metadata !92, metadata !91, metadata !"base_ci", i32 173, i64 288, i64 32, i64 416, i32 0, metadata !253} ; [ DW_TAG_member ] [base_ci] [line 173, size 288, align 32, offset 416] [from CallInfo]
!302 = metadata !{i32 786445, metadata !92, metadata !91, metadata !"hook", i32 174, i64 32, i64 32, i64 704, i32 0, metadata !303} ; [ DW_TAG_member ] [hook] [line 174, size 32, align 32, offset 704] [from ]
!303 = metadata !{i32 786485, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !304} ; [ DW_TAG_volatile_type ] [line 0, size 0, align 0, offset 0] [from lua_Hook]
!304 = metadata !{i32 786454, metadata !90, null, metadata !"lua_Hook", i32 421, i64 0, i64 0, i64 0, i32 0, metadata !305} ; [ DW_TAG_typedef ] [lua_Hook] [line 421, size 0, align 0, offset 0] [from ]
!305 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !306} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!306 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !307, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!307 = metadata !{null, metadata !88, metadata !308}
!308 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !309} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from lua_Debug]
!309 = metadata !{i32 786454, metadata !90, null, metadata !"lua_Debug", i32 417, i64 0, i64 0, i64 0, i32 0, metadata !310} ; [ DW_TAG_typedef ] [lua_Debug] [line 417, size 0, align 0, offset 0] [from lua_Debug]
!310 = metadata !{i32 786451, metadata !90, null, metadata !"lua_Debug", i32 441, i64 800, i64 32, i32 0, i32 0, null, metadata !311, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [lua_Debug] [line 441, size 800, align 32, offset 0] [def] [from ]
!311 = metadata !{metadata !312, metadata !313, metadata !316, metadata !317, metadata !318, metadata !319, metadata !320, metadata !321, metadata !322, metadata !323, metadata !324, metadata !325, metadata !326, metadata !330}
!312 = metadata !{i32 786445, metadata !90, metadata !310, metadata !"event", i32 442, i64 32, i64 32, i64 0, i32 0, metadata !81} ; [ DW_TAG_member ] [event] [line 442, size 32, align 32, offset 0] [from int]
!313 = metadata !{i32 786445, metadata !90, metadata !310, metadata !"name", i32 443, i64 32, i64 32, i64 32, i32 0, metadata !314} ; [ DW_TAG_member ] [name] [line 443, size 32, align 32, offset 32] [from ]
!314 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !315} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!315 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !84} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!316 = metadata !{i32 786445, metadata !90, metadata !310, metadata !"namewhat", i32 444, i64 32, i64 32, i64 64, i32 0, metadata !314} ; [ DW_TAG_member ] [namewhat] [line 444, size 32, align 32, offset 64] [from ]
!317 = metadata !{i32 786445, metadata !90, metadata !310, metadata !"what", i32 445, i64 32, i64 32, i64 96, i32 0, metadata !314} ; [ DW_TAG_member ] [what] [line 445, size 32, align 32, offset 96] [from ]
!318 = metadata !{i32 786445, metadata !90, metadata !310, metadata !"source", i32 446, i64 32, i64 32, i64 128, i32 0, metadata !314} ; [ DW_TAG_member ] [source] [line 446, size 32, align 32, offset 128] [from ]
!319 = metadata !{i32 786445, metadata !90, metadata !310, metadata !"currentline", i32 447, i64 32, i64 32, i64 160, i32 0, metadata !81} ; [ DW_TAG_member ] [currentline] [line 447, size 32, align 32, offset 160] [from int]
!320 = metadata !{i32 786445, metadata !90, metadata !310, metadata !"linedefined", i32 448, i64 32, i64 32, i64 192, i32 0, metadata !81} ; [ DW_TAG_member ] [linedefined] [line 448, size 32, align 32, offset 192] [from int]
!321 = metadata !{i32 786445, metadata !90, metadata !310, metadata !"lastlinedefined", i32 449, i64 32, i64 32, i64 224, i32 0, metadata !81} ; [ DW_TAG_member ] [lastlinedefined] [line 449, size 32, align 32, offset 224] [from int]
!322 = metadata !{i32 786445, metadata !90, metadata !310, metadata !"nups", i32 450, i64 8, i64 8, i64 256, i32 0, metadata !104} ; [ DW_TAG_member ] [nups] [line 450, size 8, align 8, offset 256] [from unsigned char]
!323 = metadata !{i32 786445, metadata !90, metadata !310, metadata !"nparams", i32 451, i64 8, i64 8, i64 264, i32 0, metadata !104} ; [ DW_TAG_member ] [nparams] [line 451, size 8, align 8, offset 264] [from unsigned char]
!324 = metadata !{i32 786445, metadata !90, metadata !310, metadata !"isvararg", i32 452, i64 8, i64 8, i64 272, i32 0, metadata !84} ; [ DW_TAG_member ] [isvararg] [line 452, size 8, align 8, offset 272] [from char]
!325 = metadata !{i32 786445, metadata !90, metadata !310, metadata !"istailcall", i32 453, i64 8, i64 8, i64 280, i32 0, metadata !84} ; [ DW_TAG_member ] [istailcall] [line 453, size 8, align 8, offset 280] [from char]
!326 = metadata !{i32 786445, metadata !90, metadata !310, metadata !"short_src", i32 454, i64 480, i64 8, i64 288, i32 0, metadata !327} ; [ DW_TAG_member ] [short_src] [line 454, size 480, align 8, offset 288] [from ]
!327 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 480, i64 8, i32 0, i32 0, metadata !84, metadata !328, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 480, align 8, offset 0] [from char]
!328 = metadata !{metadata !329}
!329 = metadata !{i32 786465, i64 0, i64 60}      ; [ DW_TAG_subrange_type ] [0, 59]
!330 = metadata !{i32 786445, metadata !90, metadata !310, metadata !"i_ci", i32 456, i64 32, i64 32, i64 768, i32 0, metadata !259} ; [ DW_TAG_member ] [i_ci] [line 456, size 32, align 32, offset 768] [from ]
!331 = metadata !{i32 786445, metadata !92, metadata !91, metadata !"errfunc", i32 175, i64 32, i64 32, i64 736, i32 0, metadata !151} ; [ DW_TAG_member ] [errfunc] [line 175, size 32, align 32, offset 736] [from ptrdiff_t]
!332 = metadata !{i32 786445, metadata !92, metadata !91, metadata !"stacksize", i32 176, i64 32, i64 32, i64 768, i32 0, metadata !81} ; [ DW_TAG_member ] [stacksize] [line 176, size 32, align 32, offset 768] [from int]
!333 = metadata !{i32 786445, metadata !92, metadata !91, metadata !"basehookcount", i32 177, i64 32, i64 32, i64 800, i32 0, metadata !81} ; [ DW_TAG_member ] [basehookcount] [line 177, size 32, align 32, offset 800] [from int]
!334 = metadata !{i32 786445, metadata !92, metadata !91, metadata !"hookcount", i32 178, i64 32, i64 32, i64 832, i32 0, metadata !81} ; [ DW_TAG_member ] [hookcount] [line 178, size 32, align 32, offset 832] [from int]
!335 = metadata !{i32 786445, metadata !92, metadata !91, metadata !"nny", i32 179, i64 16, i64 16, i64 864, i32 0, metadata !109} ; [ DW_TAG_member ] [nny] [line 179, size 16, align 16, offset 864] [from unsigned short]
!336 = metadata !{i32 786445, metadata !92, metadata !91, metadata !"nCcalls", i32 180, i64 16, i64 16, i64 880, i32 0, metadata !109} ; [ DW_TAG_member ] [nCcalls] [line 180, size 16, align 16, offset 880] [from unsigned short]
!337 = metadata !{i32 786445, metadata !92, metadata !91, metadata !"hookmask", i32 181, i64 32, i64 32, i64 896, i32 0, metadata !338} ; [ DW_TAG_member ] [hookmask] [line 181, size 32, align 32, offset 896] [from sig_atomic_t]
!338 = metadata !{i32 786454, metadata !339, null, metadata !"sig_atomic_t", i32 40, i64 0, i64 0, i64 0, i32 0, metadata !340} ; [ DW_TAG_typedef ] [sig_atomic_t] [line 40, size 0, align 0, offset 0] [from __sig_atomic_t]
!339 = metadata !{metadata !"D:/Xilinx/SDx/2016.3/SDK/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include\5Csignal.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!340 = metadata !{i32 786454, metadata !341, null, metadata !"__sig_atomic_t", i32 22, i64 0, i64 0, i64 0, i32 0, metadata !81} ; [ DW_TAG_typedef ] [__sig_atomic_t] [line 22, size 0, align 0, offset 0] [from int]
!341 = metadata !{metadata !"D:/Xilinx/SDx/2016.3/SDK/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include\5Cbits/sigset.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!342 = metadata !{i32 786445, metadata !92, metadata !91, metadata !"allowhook", i32 182, i64 8, i64 8, i64 928, i32 0, metadata !102} ; [ DW_TAG_member ] [allowhook] [line 182, size 8, align 8, offset 928] [from lu_byte]
!343 = metadata !{i32 786478, metadata !77, metadata !78, metadata !"writer", metadata !"writer", metadata !"", i32 159, metadata !344, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*, i8*, i32, i8*)* @writer, null, null, metadata !74, i32 160} ; [ DW_TAG_subprogram ] [line 159] [local] [def] [scope 160] [writer]
!344 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !345, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!345 = metadata !{metadata !81, metadata !88, metadata !346, metadata !145, metadata !123}
!346 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !347} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!347 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from ]
!348 = metadata !{i32 786478, metadata !77, metadata !78, metadata !"cannot", metadata !"cannot", metadata !"", i32 44, metadata !349, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i8*)* @cannot, null, null, metadata !74, i32 45} ; [ DW_TAG_subprogram ] [line 44] [local] [def] [scope 45] [cannot]
!349 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !350, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!350 = metadata !{null, metadata !314}
!351 = metadata !{i32 786478, metadata !77, metadata !78, metadata !"PrintFunction", metadata !"PrintFunction", metadata !"", i32 442, metadata !352, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.Proto*, i32)* @PrintFunction, null, null, metadata !74, i32 443} ; [ DW_TAG_subprogram ] [line 442] [local] [def] [scope 443] [PrintFunction]
!352 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !353, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!353 = metadata !{null, metadata !354, metadata !81}
!354 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !355} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!355 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !356} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from Proto]
!356 = metadata !{i32 786454, metadata !97, null, metadata !"Proto", i32 429, i64 0, i64 0, i64 0, i32 0, metadata !357} ; [ DW_TAG_typedef ] [Proto] [line 429, size 0, align 0, offset 0] [from Proto]
!357 = metadata !{i32 786451, metadata !97, null, metadata !"Proto", i32 407, i64 640, i64 32, i32 0, i32 0, null, metadata !358, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [Proto] [line 407, size 640, align 32, offset 0] [def] [from ]
!358 = metadata !{metadata !359, metadata !360, metadata !361, metadata !362, metadata !363, metadata !364, metadata !365, metadata !366, metadata !367, metadata !368, metadata !369, metadata !370, metadata !371, metadata !372, metadata !373, metadata !374, metadata !376, metadata !379, metadata !381, metadata !389, metadata !397, metadata !411, metadata !412}
!359 = metadata !{i32 786445, metadata !97, metadata !357, metadata !"next", i32 408, i64 32, i64 32, i64 0, i32 0, metadata !95} ; [ DW_TAG_member ] [next] [line 408, size 32, align 32, offset 0] [from ]
!360 = metadata !{i32 786445, metadata !97, metadata !357, metadata !"tt", i32 408, i64 8, i64 8, i64 32, i32 0, metadata !102} ; [ DW_TAG_member ] [tt] [line 408, size 8, align 8, offset 32] [from lu_byte]
!361 = metadata !{i32 786445, metadata !97, metadata !357, metadata !"marked", i32 408, i64 8, i64 8, i64 40, i32 0, metadata !102} ; [ DW_TAG_member ] [marked] [line 408, size 8, align 8, offset 40] [from lu_byte]
!362 = metadata !{i32 786445, metadata !97, metadata !357, metadata !"numparams", i32 409, i64 8, i64 8, i64 48, i32 0, metadata !102} ; [ DW_TAG_member ] [numparams] [line 409, size 8, align 8, offset 48] [from lu_byte]
!363 = metadata !{i32 786445, metadata !97, metadata !357, metadata !"is_vararg", i32 410, i64 8, i64 8, i64 56, i32 0, metadata !102} ; [ DW_TAG_member ] [is_vararg] [line 410, size 8, align 8, offset 56] [from lu_byte]
!364 = metadata !{i32 786445, metadata !97, metadata !357, metadata !"maxstacksize", i32 411, i64 8, i64 8, i64 64, i32 0, metadata !102} ; [ DW_TAG_member ] [maxstacksize] [line 411, size 8, align 8, offset 64] [from lu_byte]
!365 = metadata !{i32 786445, metadata !97, metadata !357, metadata !"sizeupvalues", i32 412, i64 32, i64 32, i64 96, i32 0, metadata !81} ; [ DW_TAG_member ] [sizeupvalues] [line 412, size 32, align 32, offset 96] [from int]
!366 = metadata !{i32 786445, metadata !97, metadata !357, metadata !"sizek", i32 413, i64 32, i64 32, i64 128, i32 0, metadata !81} ; [ DW_TAG_member ] [sizek] [line 413, size 32, align 32, offset 128] [from int]
!367 = metadata !{i32 786445, metadata !97, metadata !357, metadata !"sizecode", i32 414, i64 32, i64 32, i64 160, i32 0, metadata !81} ; [ DW_TAG_member ] [sizecode] [line 414, size 32, align 32, offset 160] [from int]
!368 = metadata !{i32 786445, metadata !97, metadata !357, metadata !"sizelineinfo", i32 415, i64 32, i64 32, i64 192, i32 0, metadata !81} ; [ DW_TAG_member ] [sizelineinfo] [line 415, size 32, align 32, offset 192] [from int]
!369 = metadata !{i32 786445, metadata !97, metadata !357, metadata !"sizep", i32 416, i64 32, i64 32, i64 224, i32 0, metadata !81} ; [ DW_TAG_member ] [sizep] [line 416, size 32, align 32, offset 224] [from int]
!370 = metadata !{i32 786445, metadata !97, metadata !357, metadata !"sizelocvars", i32 417, i64 32, i64 32, i64 256, i32 0, metadata !81} ; [ DW_TAG_member ] [sizelocvars] [line 417, size 32, align 32, offset 256] [from int]
!371 = metadata !{i32 786445, metadata !97, metadata !357, metadata !"linedefined", i32 418, i64 32, i64 32, i64 288, i32 0, metadata !81} ; [ DW_TAG_member ] [linedefined] [line 418, size 32, align 32, offset 288] [from int]
!372 = metadata !{i32 786445, metadata !97, metadata !357, metadata !"lastlinedefined", i32 419, i64 32, i64 32, i64 320, i32 0, metadata !81} ; [ DW_TAG_member ] [lastlinedefined] [line 419, size 32, align 32, offset 320] [from int]
!373 = metadata !{i32 786445, metadata !97, metadata !357, metadata !"k", i32 420, i64 32, i64 32, i64 352, i32 0, metadata !113} ; [ DW_TAG_member ] [k] [line 420, size 32, align 32, offset 352] [from ]
!374 = metadata !{i32 786445, metadata !97, metadata !357, metadata !"code", i32 421, i64 32, i64 32, i64 384, i32 0, metadata !375} ; [ DW_TAG_member ] [code] [line 421, size 32, align 32, offset 384] [from ]
!375 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !271} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from Instruction]
!376 = metadata !{i32 786445, metadata !97, metadata !357, metadata !"p", i32 422, i64 32, i64 32, i64 416, i32 0, metadata !377} ; [ DW_TAG_member ] [p] [line 422, size 32, align 32, offset 416] [from ]
!377 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !378} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!378 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !357} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from Proto]
!379 = metadata !{i32 786445, metadata !97, metadata !357, metadata !"lineinfo", i32 423, i64 32, i64 32, i64 448, i32 0, metadata !380} ; [ DW_TAG_member ] [lineinfo] [line 423, size 32, align 32, offset 448] [from ]
!380 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !81} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from int]
!381 = metadata !{i32 786445, metadata !97, metadata !357, metadata !"locvars", i32 424, i64 32, i64 32, i64 480, i32 0, metadata !382} ; [ DW_TAG_member ] [locvars] [line 424, size 32, align 32, offset 480] [from ]
!382 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !383} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from LocVar]
!383 = metadata !{i32 786454, metadata !97, null, metadata !"LocVar", i32 401, i64 0, i64 0, i64 0, i32 0, metadata !384} ; [ DW_TAG_typedef ] [LocVar] [line 401, size 0, align 0, offset 0] [from LocVar]
!384 = metadata !{i32 786451, metadata !97, null, metadata !"LocVar", i32 397, i64 96, i64 32, i32 0, i32 0, null, metadata !385, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [LocVar] [line 397, size 96, align 32, offset 0] [def] [from ]
!385 = metadata !{metadata !386, metadata !387, metadata !388}
!386 = metadata !{i32 786445, metadata !97, metadata !384, metadata !"varname", i32 398, i64 32, i64 32, i64 0, i32 0, metadata !162} ; [ DW_TAG_member ] [varname] [line 398, size 32, align 32, offset 0] [from ]
!387 = metadata !{i32 786445, metadata !97, metadata !384, metadata !"startpc", i32 399, i64 32, i64 32, i64 32, i32 0, metadata !81} ; [ DW_TAG_member ] [startpc] [line 399, size 32, align 32, offset 32] [from int]
!388 = metadata !{i32 786445, metadata !97, metadata !384, metadata !"endpc", i32 400, i64 32, i64 32, i64 64, i32 0, metadata !81} ; [ DW_TAG_member ] [endpc] [line 400, size 32, align 32, offset 64] [from int]
!389 = metadata !{i32 786445, metadata !97, metadata !357, metadata !"upvalues", i32 425, i64 32, i64 32, i64 512, i32 0, metadata !390} ; [ DW_TAG_member ] [upvalues] [line 425, size 32, align 32, offset 512] [from ]
!390 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !391} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from Upvaldesc]
!391 = metadata !{i32 786454, metadata !97, null, metadata !"Upvaldesc", i32 390, i64 0, i64 0, i64 0, i32 0, metadata !392} ; [ DW_TAG_typedef ] [Upvaldesc] [line 390, size 0, align 0, offset 0] [from Upvaldesc]
!392 = metadata !{i32 786451, metadata !97, null, metadata !"Upvaldesc", i32 386, i64 64, i64 32, i32 0, i32 0, null, metadata !393, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [Upvaldesc] [line 386, size 64, align 32, offset 0] [def] [from ]
!393 = metadata !{metadata !394, metadata !395, metadata !396}
!394 = metadata !{i32 786445, metadata !97, metadata !392, metadata !"name", i32 387, i64 32, i64 32, i64 0, i32 0, metadata !162} ; [ DW_TAG_member ] [name] [line 387, size 32, align 32, offset 0] [from ]
!395 = metadata !{i32 786445, metadata !97, metadata !392, metadata !"instack", i32 388, i64 8, i64 8, i64 32, i32 0, metadata !102} ; [ DW_TAG_member ] [instack] [line 388, size 8, align 8, offset 32] [from lu_byte]
!396 = metadata !{i32 786445, metadata !97, metadata !392, metadata !"idx", i32 389, i64 8, i64 8, i64 40, i32 0, metadata !102} ; [ DW_TAG_member ] [idx] [line 389, size 8, align 8, offset 40] [from lu_byte]
!397 = metadata !{i32 786445, metadata !97, metadata !357, metadata !"cache", i32 426, i64 32, i64 32, i64 544, i32 0, metadata !398} ; [ DW_TAG_member ] [cache] [line 426, size 32, align 32, offset 544] [from ]
!398 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !399} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from LClosure]
!399 = metadata !{i32 786451, metadata !97, null, metadata !"LClosure", i32 453, i64 160, i64 32, i32 0, i32 0, null, metadata !400, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [LClosure] [line 453, size 160, align 32, offset 0] [def] [from ]
!400 = metadata !{metadata !401, metadata !402, metadata !403, metadata !404, metadata !405, metadata !406, metadata !407}
!401 = metadata !{i32 786445, metadata !97, metadata !399, metadata !"next", i32 454, i64 32, i64 32, i64 0, i32 0, metadata !95} ; [ DW_TAG_member ] [next] [line 454, size 32, align 32, offset 0] [from ]
!402 = metadata !{i32 786445, metadata !97, metadata !399, metadata !"tt", i32 454, i64 8, i64 8, i64 32, i32 0, metadata !102} ; [ DW_TAG_member ] [tt] [line 454, size 8, align 8, offset 32] [from lu_byte]
!403 = metadata !{i32 786445, metadata !97, metadata !399, metadata !"marked", i32 454, i64 8, i64 8, i64 40, i32 0, metadata !102} ; [ DW_TAG_member ] [marked] [line 454, size 8, align 8, offset 40] [from lu_byte]
!404 = metadata !{i32 786445, metadata !97, metadata !399, metadata !"nupvalues", i32 454, i64 8, i64 8, i64 48, i32 0, metadata !102} ; [ DW_TAG_member ] [nupvalues] [line 454, size 8, align 8, offset 48] [from lu_byte]
!405 = metadata !{i32 786445, metadata !97, metadata !399, metadata !"gclist", i32 454, i64 32, i64 32, i64 64, i32 0, metadata !95} ; [ DW_TAG_member ] [gclist] [line 454, size 32, align 32, offset 64] [from ]
!406 = metadata !{i32 786445, metadata !97, metadata !399, metadata !"p", i32 455, i64 32, i64 32, i64 96, i32 0, metadata !378} ; [ DW_TAG_member ] [p] [line 455, size 32, align 32, offset 96] [from ]
!407 = metadata !{i32 786445, metadata !97, metadata !399, metadata !"upvals", i32 456, i64 32, i64 32, i64 128, i32 0, metadata !408} ; [ DW_TAG_member ] [upvals] [line 456, size 32, align 32, offset 128] [from ]
!408 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 32, i64 32, i32 0, i32 0, metadata !293, metadata !409, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 32, align 32, offset 0] [from ]
!409 = metadata !{metadata !410}
!410 = metadata !{i32 786465, i64 0, i64 1}       ; [ DW_TAG_subrange_type ] [0, 0]
!411 = metadata !{i32 786445, metadata !97, metadata !357, metadata !"source", i32 427, i64 32, i64 32, i64 576, i32 0, metadata !162} ; [ DW_TAG_member ] [source] [line 427, size 32, align 32, offset 576] [from ]
!412 = metadata !{i32 786445, metadata !97, metadata !357, metadata !"gclist", i32 428, i64 32, i64 32, i64 608, i32 0, metadata !95} ; [ DW_TAG_member ] [gclist] [line 428, size 32, align 32, offset 608] [from ]
!413 = metadata !{i32 786478, metadata !77, metadata !78, metadata !"PrintDebug", metadata !"PrintDebug", metadata !"", i32 415, metadata !414, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.Proto*)* @PrintDebug, null, null, metadata !74, i32 416} ; [ DW_TAG_subprogram ] [line 415] [local] [def] [scope 416] [PrintDebug]
!414 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !415, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!415 = metadata !{null, metadata !354}
!416 = metadata !{i32 786478, metadata !77, metadata !78, metadata !"PrintConstant", metadata !"PrintConstant", metadata !"", i32 254, metadata !352, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.Proto*, i32)* @PrintConstant, null, null, metadata !74, i32 255} ; [ DW_TAG_subprogram ] [line 254] [local] [def] [scope 255] [PrintConstant]
!417 = metadata !{i32 786478, metadata !77, metadata !78, metadata !"PrintString", metadata !"PrintString", metadata !"", i32 226, metadata !418, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.TString*)* @PrintString, null, null, metadata !74, i32 227} ; [ DW_TAG_subprogram ] [line 226] [local] [def] [scope 227] [PrintString]
!418 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !419, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!419 = metadata !{null, metadata !420}
!420 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !421} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!421 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !163} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from TString]
!422 = metadata !{i32 786478, metadata !77, metadata !78, metadata !"PrintCode", metadata !"PrintCode", metadata !"", i32 288, metadata !414, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.Proto*)* @PrintCode, null, null, metadata !74, i32 289} ; [ DW_TAG_subprogram ] [line 288] [local] [def] [scope 289] [PrintCode]
!423 = metadata !{i32 786478, metadata !77, metadata !78, metadata !"PrintHeader", metadata !"PrintHeader", metadata !"", i32 395, metadata !414, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.Proto*)* @PrintHeader, null, null, metadata !74, i32 396} ; [ DW_TAG_subprogram ] [line 395] [local] [def] [scope 396] [PrintHeader]
!424 = metadata !{i32 786478, metadata !77, metadata !78, metadata !"combine", metadata !"combine", metadata !"", i32 139, metadata !425, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, %struct.Proto* (%struct.lua_State*, i32)* @combine, null, null, metadata !74, i32 140} ; [ DW_TAG_subprogram ] [line 139] [local] [def] [scope 140] [combine]
!425 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !426, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!426 = metadata !{metadata !354, metadata !88, metadata !81}
!427 = metadata !{i32 786478, metadata !77, metadata !78, metadata !"reader", metadata !"reader", metadata !"", i32 122, metadata !428, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (%struct.lua_State*, i8*, i32*)* @reader, null, null, metadata !74, i32 123} ; [ DW_TAG_subprogram ] [line 122] [local] [def] [scope 123] [reader]
!428 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !429, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!429 = metadata !{metadata !314, metadata !88, metadata !123, metadata !430}
!430 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !145} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from size_t]
!431 = metadata !{i32 786478, metadata !77, metadata !78, metadata !"fatal", metadata !"fatal", metadata !"", i32 38, metadata !349, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i8*)* @fatal, null, null, metadata !74, i32 39} ; [ DW_TAG_subprogram ] [line 38] [local] [def] [scope 39] [fatal]
!432 = metadata !{i32 786478, metadata !77, metadata !78, metadata !"usage", metadata !"usage", metadata !"", i32 50, metadata !349, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i8*)* @usage, null, null, metadata !74, i32 51} ; [ DW_TAG_subprogram ] [line 50] [local] [def] [scope 51] [usage]
!433 = metadata !{i32 786478, metadata !77, metadata !78, metadata !"doargs", metadata !"doargs", metadata !"", i32 72, metadata !79, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i8**)* @doargs, null, null, metadata !74, i32 73} ; [ DW_TAG_subprogram ] [line 72] [local] [def] [scope 73] [doargs]
!434 = metadata !{metadata !435, metadata !436, metadata !437, metadata !438, metadata !440, metadata !441}
!435 = metadata !{i32 786484, i32 0, null, metadata !"stripping", metadata !"stripping", metadata !"", metadata !78, i32 33, metadata !81, i32 1, i32 1, i32* @stripping, null} ; [ DW_TAG_variable ] [stripping] [line 33] [local] [def]
!436 = metadata !{i32 786484, i32 0, null, metadata !"progname", metadata !"progname", metadata !"", metadata !78, i32 36, metadata !314, i32 1, i32 1, i8** @progname, null} ; [ DW_TAG_variable ] [progname] [line 36] [local] [def]
!437 = metadata !{i32 786484, i32 0, null, metadata !"output", metadata !"output", metadata !"", metadata !78, i32 35, metadata !314, i32 1, i32 1, i8** @output, null} ; [ DW_TAG_variable ] [output] [line 35] [local] [def]
!438 = metadata !{i32 786484, i32 0, null, metadata !"Output", metadata !"Output", metadata !"", metadata !78, i32 34, metadata !439, i32 1, i32 1, [9 x i8]* @Output, null} ; [ DW_TAG_variable ] [Output] [line 34] [local] [def]
!439 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 72, i64 8, i32 0, i32 0, metadata !84, metadata !244, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 72, align 8, offset 0] [from char]
!440 = metadata !{i32 786484, i32 0, null, metadata !"dumping", metadata !"dumping", metadata !"", metadata !78, i32 32, metadata !81, i32 1, i32 1, i32* @dumping, null} ; [ DW_TAG_variable ] [dumping] [line 32] [local] [def]
!441 = metadata !{i32 786484, i32 0, null, metadata !"listing", metadata !"listing", metadata !"", metadata !78, i32 31, metadata !81, i32 1, i32 1, i32* @listing, null} ; [ DW_TAG_variable ] [listing] [line 31] [local] [def]
!442 = metadata !{i32 (i32, i8**)* @main}
!443 = metadata !{metadata !"main"}
!444 = metadata !{i32 (i32, i8**)* @doargs}
!445 = metadata !{metadata !"doargs"}
!446 = metadata !{void (i8*)* @usage}
!447 = metadata !{metadata !"usage"}
!448 = metadata !{%struct.lua_State* ()* @luaL_newstate}
!449 = metadata !{metadata !"luaL_newstate"}
!450 = metadata !{void (i8*)* @fatal}
!451 = metadata !{metadata !"fatal"}
!452 = metadata !{void (%struct.lua_State*, i32 (%struct.lua_State*)*, i32)* @lua_pushcclosure}
!453 = metadata !{metadata !"lua_pushcclosure"}
!454 = metadata !{i32 (%struct.lua_State*)* @pmain}
!455 = metadata !{metadata !"pmain"}
!456 = metadata !{void (%struct.lua_State*, i64)* @lua_pushinteger}
!457 = metadata !{metadata !"lua_pushinteger"}
!458 = metadata !{void (%struct.lua_State*, i8*)* @lua_pushlightuserdata}
!459 = metadata !{metadata !"lua_pushlightuserdata"}
!460 = metadata !{i32 (%struct.lua_State*, i32, i32, i32, i32, i32 (%struct.lua_State*, i32, i32)*)* @lua_pcallk}
!461 = metadata !{metadata !"lua_pcallk"}
!462 = metadata !{i8* (%struct.lua_State*, i32, i32*)* @lua_tolstring}
!463 = metadata !{metadata !"lua_tolstring"}
!464 = metadata !{void (%struct.lua_State*)* @lua_close}
!465 = metadata !{metadata !"lua_close"}
!466 = metadata !{i64 (%struct.lua_State*, i32, i32*)* @lua_tointegerx}
!467 = metadata !{metadata !"lua_tointegerx"}
!468 = metadata !{i8* (%struct.lua_State*, i32)* @lua_touserdata}
!469 = metadata !{metadata !"lua_touserdata"}
!470 = metadata !{i32 (%struct.lua_State*, i32)* @lua_checkstack}
!471 = metadata !{metadata !"lua_checkstack"}
!472 = metadata !{i32 (i8*, i8*)* @strcmp}
!473 = metadata !{metadata !"strcmp"}
!474 = metadata !{i32 (%struct.lua_State*, i8*, i8*)* @luaL_loadfilex}
!475 = metadata !{metadata !"luaL_loadfilex"}
!476 = metadata !{%struct.Proto* (%struct.lua_State*, i32)* @combine}
!477 = metadata !{metadata !"combine"}
!478 = metadata !{void (%struct.Proto*, i32)* @PrintFunction}
!479 = metadata !{metadata !"PrintFunction"}
!480 = metadata !{%struct._IO_FILE* (i8*, i8*)* @fopen64}
!481 = metadata !{metadata !"fopen"}
!482 = metadata !{void (i8*)* @cannot}
!483 = metadata !{metadata !"cannot"}
!484 = metadata !{i32 (%struct.lua_State*, %struct.Proto*, i32 (%struct.lua_State*, i8*, i32, i8*)*, i8*, i32)* @luaU_dump}
!485 = metadata !{metadata !"luaU_dump"}
!486 = metadata !{i32 (%struct.lua_State*, i8*, i32, i8*)* @writer}
!487 = metadata !{metadata !"writer"}
!488 = metadata !{i32 (%struct._IO_FILE*)* @ferror}
!489 = metadata !{metadata !"ferror"}
!490 = metadata !{i32 (%struct._IO_FILE*)* @fclose}
!491 = metadata !{metadata !"fclose"}
!492 = metadata !{i32 (i8*, i32, i32, %struct._IO_FILE*)* @fwrite}
!493 = metadata !{metadata !"fwrite"}
!494 = metadata !{i32 (%struct._IO_FILE*, i8*, ...)* @fprintf}
!495 = metadata !{metadata !"fprintf"}
!496 = metadata !{i8* (i32)* @strerror}
!497 = metadata !{metadata !"strerror"}
!498 = metadata !{i32* ()* @__errno_location}
!499 = metadata !{metadata !"__errno_location"}
!500 = metadata !{void (i32)* @exit}
!501 = metadata !{metadata !"exit"}
!502 = metadata !{void (%struct.Proto*)* @PrintHeader}
!503 = metadata !{metadata !"PrintHeader"}
!504 = metadata !{void (%struct.Proto*)* @PrintCode}
!505 = metadata !{metadata !"PrintCode"}
!506 = metadata !{void (%struct.Proto*)* @PrintDebug}
!507 = metadata !{metadata !"PrintDebug"}
!508 = metadata !{i32 (i8*, ...)* @printf}
!509 = metadata !{metadata !"printf"}
!510 = metadata !{void (%struct.Proto*, i32)* @PrintConstant}
!511 = metadata !{metadata !"PrintConstant"}
!512 = metadata !{i32 (i8*, i8*, ...)* @sprintf}
!513 = metadata !{metadata !"sprintf"}
!514 = metadata !{i32 (i8*, i8*)* @strspn}
!515 = metadata !{metadata !"strspn"}
!516 = metadata !{void (%struct.TString*)* @PrintString}
!517 = metadata !{metadata !"PrintString"}
!518 = metadata !{i16** ()* @__ctype_b_loc}
!519 = metadata !{metadata !"__ctype_b_loc"}
!520 = metadata !{i32 (%struct.lua_State*, i8* (%struct.lua_State*, i8*, i32*)*, i8*, i8*, i8*)* @lua_load}
!521 = metadata !{metadata !"lua_load"}
!522 = metadata !{i8* (%struct.lua_State*, i8*, i32*)* @reader}
!523 = metadata !{metadata !"reader"}
!524 = metadata !{metadata !"int.int.0.char *[].1"}
!525 = metadata !{metadata !"void.const char *.1"}
!526 = metadata !{metadata !"lua_State ."}
!527 = metadata !{metadata !"void.lua_State *.1.lua_CFunction.1.int.0"}
!528 = metadata !{metadata !"int.lua_State *.1"}
!529 = metadata !{metadata !"void.lua_State *.1.lua_Integer.0"}
!530 = metadata !{metadata !"void.lua_State *.1.void *.1"}
!531 = metadata !{metadata !"int.lua_State *.1.int.0.int.0.int.0.lua_KContext.0.lua_KFunction.1"}
!532 = metadata !{metadata !"const char .lua_State *.1.int.0.size_t *.1"}
!533 = metadata !{metadata !"void.lua_State *.1"}
!534 = metadata !{metadata !"lua_Integer.lua_State *.1.int.0.int *.1"}
!535 = metadata !{metadata !"void .lua_State *.1.int.0"}
!536 = metadata !{metadata !"int.lua_State *.1.int.0"}
!537 = metadata !{metadata !"int.const char *.1.const char *.1"}
!538 = metadata !{metadata !"int.lua_State *.1.const char *.1.const char *.1"}
!539 = metadata !{metadata !"const Proto .lua_State *.1.int.0"}
!540 = metadata !{metadata !"void.const Proto *.1.int.0"}
!541 = metadata !{metadata !"FILE .const char *restrict.1.const char *restrict.1"}
!542 = metadata !{metadata !"int.lua_State *.1.const Proto *.1.lua_Writer.1.void *.1.int.0"}
!543 = metadata !{metadata !"int.lua_State *.1.const void *.1.size_t.0.void *.1"}
!544 = metadata !{metadata !"int.FILE *.1"}
!545 = metadata !{metadata !"size_t.const void *restrict.1.size_t.0.size_t.0.FILE *restrict.1"}
!546 = metadata !{metadata !"int.FILE *restrict.1.const char *restrict.1"}
!547 = metadata !{metadata !"char .int.0"}
!548 = metadata !{metadata !"int ."}
!549 = metadata !{metadata !"void.int.0"}
!550 = metadata !{metadata !"void.const Proto *.1"}
!551 = metadata !{metadata !"int.const char *restrict.1"}
!552 = metadata !{metadata !"int.char *restrict.1.const char *restrict.1"}
!553 = metadata !{metadata !"unsigned int.const char *.1.const char *.1"}
!554 = metadata !{metadata !"void.const TString *.1"}
!555 = metadata !{metadata !"const unsigned short *."}
!556 = metadata !{metadata !"int.lua_State *.1.lua_Reader.1.void *.1.const char *.1.const char *.1"}
!557 = metadata !{metadata !"const char .lua_State *.1.void *.1.size_t *.1"}
!558 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/luac.c"}
!559 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lauxlib.h"}
!560 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lua.h"}
!561 = metadata !{metadata !"D:/Xilinx/SDx/2016.3/SDK/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include\5Cstring.h"}
!562 = metadata !{metadata !"D:/Xilinx/SDx/2016.3/SDK/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include\5Cstdio.h"}
!563 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lundump.h"}
!564 = metadata !{metadata !"D:/Xilinx/SDx/2016.3/SDK/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include\5Cbits/errno.h"}
!565 = metadata !{metadata !"D:/Xilinx/SDx/2016.3/SDK/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include\5Cstdlib.h"}
!566 = metadata !{metadata !"D:/Xilinx/SDx/2016.3/SDK/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include\5Cctype.h"}
!567 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!568 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!569 = metadata !{i32 1, metadata !"wchar_size", i32 4}
!570 = metadata !{i32 1, metadata !"min_enum_size", i32 4}
!571 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
!572 = metadata !{i32 786689, metadata !76, metadata !"argc", metadata !78, i32 16777408, metadata !81, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argc] [line 192]
!573 = metadata !{i32 192, i32 14, metadata !76, null}
!574 = metadata !{i32 786689, metadata !76, metadata !"argv", metadata !78, i32 33554624, metadata !82, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argv] [line 192]
!575 = metadata !{i32 192, i32 26, metadata !76, null}
!576 = metadata !{i32 786688, metadata !76, metadata !"L", metadata !78, i32 194, metadata !88, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [L] [line 194]
!577 = metadata !{i32 194, i32 13, metadata !76, null}
!578 = metadata !{i32 786688, metadata !76, metadata !"i", metadata !78, i32 195, metadata !81, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 195]
!579 = metadata !{i32 195, i32 6, metadata !76, null}
!580 = metadata !{i32 195, i32 8, metadata !76, null}
!581 = metadata !{i32 196, i32 2, metadata !76, null}
!582 = metadata !{i32 196, i32 11, metadata !76, null}
!583 = metadata !{i32 197, i32 6, metadata !584, null}
!584 = metadata !{i32 786443, metadata !77, metadata !76, i32 197, i32 6, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!585 = metadata !{i32 197, i32 15, metadata !586, null}
!586 = metadata !{i32 786443, metadata !77, metadata !584, i32 197, i32 15, i32 1, i32 83} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!587 = metadata !{i32 198, i32 4, metadata !76, null}
!588 = metadata !{i32 199, i32 6, metadata !589, null}
!589 = metadata !{i32 786443, metadata !77, metadata !76, i32 199, i32 6, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!590 = metadata !{i32 199, i32 15, metadata !591, null}
!591 = metadata !{i32 786443, metadata !77, metadata !589, i32 199, i32 15, i32 1, i32 84} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!592 = metadata !{i32 200, i32 2, metadata !76, null}
!593 = metadata !{i32 201, i32 2, metadata !76, null}
!594 = metadata !{i32 202, i32 2, metadata !76, null}
!595 = metadata !{i32 203, i32 6, metadata !596, null}
!596 = metadata !{i32 786443, metadata !77, metadata !76, i32 203, i32 6, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!597 = metadata !{i32 203, i32 40, metadata !598, null}
!598 = metadata !{i32 786443, metadata !77, metadata !596, i32 203, i32 40, i32 1, i32 85} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!599 = metadata !{i32 203, i32 34, metadata !596, null}
!600 = metadata !{i32 204, i32 2, metadata !76, null}
!601 = metadata !{i32 205, i32 2, metadata !76, null}
!602 = metadata !{i32 786689, metadata !433, metadata !"argc", metadata !78, i32 16777288, metadata !81, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argc] [line 72]
!603 = metadata !{i32 72, i32 23, metadata !433, null}
!604 = metadata !{i32 786689, metadata !433, metadata !"argv", metadata !78, i32 33554504, metadata !82, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argv] [line 72]
!605 = metadata !{i32 72, i32 35, metadata !433, null}
!606 = metadata !{i32 786688, metadata !433, metadata !"i", metadata !78, i32 74, metadata !81, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 74]
!607 = metadata !{i32 74, i32 6, metadata !433, null}
!608 = metadata !{i32 786688, metadata !433, metadata !"version", metadata !78, i32 75, metadata !81, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [version] [line 75]
!609 = metadata !{i32 75, i32 6, metadata !433, null}
!610 = metadata !{i32 75, i32 2, metadata !433, null}
!611 = metadata !{i32 76, i32 6, metadata !612, null}
!612 = metadata !{i32 786443, metadata !77, metadata !433, i32 76, i32 6, i32 0, i32 62} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!613 = metadata !{i32 76, i32 6, metadata !614, null}
!614 = metadata !{i32 786443, metadata !77, metadata !612, i32 76, i32 6, i32 1, i32 86} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!615 = metadata !{i32 76, i32 36, metadata !616, null}
!616 = metadata !{i32 786443, metadata !77, metadata !612, i32 76, i32 36, i32 2, i32 87} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!617 = metadata !{i32 77, i32 7, metadata !618, null}
!618 = metadata !{i32 786443, metadata !77, metadata !433, i32 77, i32 2, i32 0, i32 63} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!619 = metadata !{i32 77, i32 7, metadata !620, null}
!620 = metadata !{i32 786443, metadata !77, metadata !621, i32 77, i32 7, i32 2, i32 94} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!621 = metadata !{i32 786443, metadata !77, metadata !618, i32 77, i32 7, i32 1, i32 88} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!622 = metadata !{i32 79, i32 7, metadata !623, null}
!623 = metadata !{i32 786443, metadata !77, metadata !624, i32 79, i32 7, i32 0, i32 65} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!624 = metadata !{i32 786443, metadata !77, metadata !618, i32 78, i32 2, i32 0, i32 64} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!625 = metadata !{i32 80, i32 4, metadata !623, null}
!626 = metadata !{i32 81, i32 12, metadata !627, null}
!627 = metadata !{i32 786443, metadata !77, metadata !623, i32 81, i32 12, i32 0, i32 66} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!628 = metadata !{i32 83, i32 4, metadata !629, null}
!629 = metadata !{i32 786443, metadata !77, metadata !627, i32 82, i32 3, i32 0, i32 67} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!630 = metadata !{i32 84, i32 8, metadata !631, null}
!631 = metadata !{i32 786443, metadata !77, metadata !629, i32 84, i32 8, i32 0, i32 68} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!632 = metadata !{i32 84, i32 17, metadata !633, null}
!633 = metadata !{i32 786443, metadata !77, metadata !631, i32 84, i32 17, i32 1, i32 89} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!634 = metadata !{i32 85, i32 4, metadata !629, null}
!635 = metadata !{i32 87, i32 12, metadata !636, null}
!636 = metadata !{i32 786443, metadata !77, metadata !627, i32 87, i32 12, i32 0, i32 69} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!637 = metadata !{i32 88, i32 4, metadata !636, null}
!638 = metadata !{i32 89, i32 12, metadata !639, null}
!639 = metadata !{i32 786443, metadata !77, metadata !636, i32 89, i32 12, i32 0, i32 70} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!640 = metadata !{i32 90, i32 4, metadata !639, null}
!641 = metadata !{i32 91, i32 12, metadata !642, null}
!642 = metadata !{i32 786443, metadata !77, metadata !639, i32 91, i32 12, i32 0, i32 71} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!643 = metadata !{i32 93, i32 4, metadata !644, null}
!644 = metadata !{i32 786443, metadata !77, metadata !642, i32 92, i32 3, i32 0, i32 72} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!645 = metadata !{i32 94, i32 8, metadata !646, null}
!646 = metadata !{i32 786443, metadata !77, metadata !644, i32 94, i32 8, i32 0, i32 73} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!647 = metadata !{i32 94, i32 8, metadata !648, null}
!648 = metadata !{i32 786443, metadata !77, metadata !646, i32 94, i32 8, i32 1, i32 90} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!649 = metadata !{i32 94, i32 8, metadata !650, null}
!650 = metadata !{i32 786443, metadata !77, metadata !646, i32 94, i32 8, i32 2, i32 91} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!651 = metadata !{i32 94, i32 8, metadata !652, null}
!652 = metadata !{i32 786443, metadata !77, metadata !646, i32 94, i32 8, i32 3, i32 92} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!653 = metadata !{i32 95, i32 5, metadata !646, null}
!654 = metadata !{i32 96, i32 8, metadata !655, null}
!655 = metadata !{i32 786443, metadata !77, metadata !644, i32 96, i32 8, i32 0, i32 74} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!656 = metadata !{i32 96, i32 17, metadata !657, null}
!657 = metadata !{i32 786443, metadata !77, metadata !655, i32 96, i32 17, i32 1, i32 93} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!658 = metadata !{i32 97, i32 3, metadata !644, null}
!659 = metadata !{i32 98, i32 12, metadata !660, null}
!660 = metadata !{i32 786443, metadata !77, metadata !642, i32 98, i32 12, i32 0, i32 75} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!661 = metadata !{i32 99, i32 4, metadata !660, null}
!662 = metadata !{i32 100, i32 12, metadata !663, null}
!663 = metadata !{i32 786443, metadata !77, metadata !660, i32 100, i32 12, i32 0, i32 76} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!664 = metadata !{i32 101, i32 4, metadata !663, null}
!665 = metadata !{i32 102, i32 12, metadata !666, null}
!666 = metadata !{i32 786443, metadata !77, metadata !663, i32 102, i32 12, i32 0, i32 77} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!667 = metadata !{i32 103, i32 4, metadata !666, null}
!668 = metadata !{i32 105, i32 4, metadata !666, null}
!669 = metadata !{i32 106, i32 2, metadata !624, null}
!670 = metadata !{i32 77, i32 20, metadata !618, null}
!671 = metadata !{i32 107, i32 6, metadata !672, null}
!672 = metadata !{i32 786443, metadata !77, metadata !433, i32 107, i32 6, i32 0, i32 78} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!673 = metadata !{i32 107, i32 6, metadata !674, null}
!674 = metadata !{i32 786443, metadata !77, metadata !672, i32 107, i32 6, i32 1, i32 95} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!675 = metadata !{i32 107, i32 6, metadata !676, null}
!676 = metadata !{i32 786443, metadata !77, metadata !672, i32 107, i32 6, i32 2, i32 96} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!677 = metadata !{i32 109, i32 3, metadata !678, null}
!678 = metadata !{i32 786443, metadata !77, metadata !672, i32 108, i32 2, i32 0, i32 79} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!679 = metadata !{i32 110, i32 3, metadata !678, null}
!680 = metadata !{i32 111, i32 2, metadata !678, null}
!681 = metadata !{i32 112, i32 6, metadata !682, null}
!682 = metadata !{i32 786443, metadata !77, metadata !433, i32 112, i32 6, i32 0, i32 80} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!683 = metadata !{i32 114, i32 3, metadata !684, null}
!684 = metadata !{i32 786443, metadata !77, metadata !682, i32 113, i32 2, i32 0, i32 81} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!685 = metadata !{i32 115, i32 7, metadata !686, null}
!686 = metadata !{i32 786443, metadata !77, metadata !684, i32 115, i32 7, i32 0, i32 82} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!687 = metadata !{i32 115, i32 24, metadata !688, null}
!688 = metadata !{i32 786443, metadata !77, metadata !686, i32 115, i32 24, i32 1, i32 97} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!689 = metadata !{i32 116, i32 2, metadata !684, null}
!690 = metadata !{i32 117, i32 2, metadata !433, null}
!691 = metadata !{i32 786689, metadata !432, metadata !"message", metadata !78, i32 16777266, metadata !314, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [message] [line 50]
!692 = metadata !{i32 50, i32 31, metadata !432, null}
!693 = metadata !{i32 52, i32 6, metadata !694, null}
!694 = metadata !{i32 786443, metadata !77, metadata !432, i32 52, i32 6, i32 0, i32 61} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!695 = metadata !{i32 53, i32 3, metadata !694, null}
!696 = metadata !{i32 55, i32 3, metadata !694, null}
!697 = metadata !{i32 56, i32 2, metadata !432, null}
!698 = metadata !{i32 67, i32 2, metadata !432, null}
!699 = metadata !{i32 68, i32 1, metadata !432, null}
!700 = metadata !{i32 786689, metadata !431, metadata !"message", metadata !78, i32 16777254, metadata !314, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [message] [line 38]
!701 = metadata !{i32 38, i32 31, metadata !431, null}
!702 = metadata !{i32 40, i32 2, metadata !431, null}
!703 = metadata !{i32 41, i32 2, metadata !431, null}
!704 = metadata !{i32 42, i32 1, metadata !431, null}
!705 = metadata !{i32 786689, metadata !85, metadata !"L", metadata !78, i32 16777381, metadata !88, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 165]
!706 = metadata !{i32 165, i32 29, metadata !85, null}
!707 = metadata !{i32 786688, metadata !85, metadata !"argc", metadata !78, i32 167, metadata !81, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [argc] [line 167]
!708 = metadata !{i32 167, i32 6, metadata !85, null}
!709 = metadata !{i32 167, i32 16, metadata !85, null}
!710 = metadata !{i32 786688, metadata !85, metadata !"argv", metadata !78, i32 168, metadata !82, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [argv] [line 168]
!711 = metadata !{i32 168, i32 9, metadata !85, null}
!712 = metadata !{i32 168, i32 22, metadata !85, null}
!713 = metadata !{i32 786688, metadata !85, metadata !"f", metadata !78, i32 169, metadata !354, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [f] [line 169]
!714 = metadata !{i32 169, i32 15, metadata !85, null}
!715 = metadata !{i32 786688, metadata !85, metadata !"i", metadata !78, i32 170, metadata !81, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 170]
!716 = metadata !{i32 170, i32 6, metadata !85, null}
!717 = metadata !{i32 171, i32 7, metadata !718, null}
!718 = metadata !{i32 786443, metadata !77, metadata !85, i32 171, i32 6, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!719 = metadata !{i32 171, i32 31, metadata !720, null}
!720 = metadata !{i32 786443, metadata !77, metadata !718, i32 171, i32 31, i32 1, i32 98} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!721 = metadata !{i32 172, i32 7, metadata !722, null}
!722 = metadata !{i32 786443, metadata !77, metadata !85, i32 172, i32 2, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!723 = metadata !{i32 172, i32 7, metadata !724, null}
!724 = metadata !{i32 786443, metadata !77, metadata !725, i32 172, i32 7, i32 2, i32 105} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!725 = metadata !{i32 786443, metadata !77, metadata !722, i32 172, i32 7, i32 1, i32 99} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!726 = metadata !{i32 786688, metadata !727, metadata !"filename", metadata !78, i32 174, metadata !314, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [filename] [line 174]
!727 = metadata !{i32 786443, metadata !77, metadata !722, i32 173, i32 2, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!728 = metadata !{i32 174, i32 15, metadata !727, null}
!729 = metadata !{i32 174, i32 24, metadata !727, null}
!730 = metadata !{i32 174, i32 24, metadata !731, null}
!731 = metadata !{i32 786443, metadata !77, metadata !727, i32 174, i32 24, i32 1, i32 100} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!732 = metadata !{i32 174, i32 24, metadata !733, null}
!733 = metadata !{i32 786443, metadata !77, metadata !727, i32 174, i32 24, i32 2, i32 101} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!734 = metadata !{i32 174, i32 24, metadata !735, null}
!735 = metadata !{i32 786443, metadata !77, metadata !736, i32 174, i32 24, i32 4, i32 103} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!736 = metadata !{i32 786443, metadata !77, metadata !727, i32 174, i32 24, i32 3, i32 102} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!737 = metadata !{i32 175, i32 7, metadata !738, null}
!738 = metadata !{i32 786443, metadata !77, metadata !727, i32 175, i32 7, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!739 = metadata !{i32 175, i32 48, metadata !740, null}
!740 = metadata !{i32 786443, metadata !77, metadata !738, i32 175, i32 48, i32 1, i32 104} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!741 = metadata !{i32 175, i32 42, metadata !738, null}
!742 = metadata !{i32 176, i32 2, metadata !727, null}
!743 = metadata !{i32 172, i32 20, metadata !722, null}
!744 = metadata !{i32 177, i32 4, metadata !85, null}
!745 = metadata !{i32 178, i32 6, metadata !746, null}
!746 = metadata !{i32 786443, metadata !77, metadata !85, i32 178, i32 6, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!747 = metadata !{i32 178, i32 15, metadata !748, null}
!748 = metadata !{i32 786443, metadata !77, metadata !746, i32 178, i32 15, i32 1, i32 106} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!749 = metadata !{i32 179, i32 6, metadata !750, null}
!750 = metadata !{i32 786443, metadata !77, metadata !85, i32 179, i32 6, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!751 = metadata !{i32 786688, metadata !752, metadata !"D", metadata !78, i32 181, metadata !753, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [D] [line 181]
!752 = metadata !{i32 786443, metadata !77, metadata !750, i32 180, i32 2, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!753 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !754} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from FILE]
!754 = metadata !{i32 786454, metadata !755, null, metadata !"FILE", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !756} ; [ DW_TAG_typedef ] [FILE] [line 48, size 0, align 0, offset 0] [from _IO_FILE]
!755 = metadata !{metadata !"D:/Xilinx/SDx/2016.3/SDK/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include\5Cstdio.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!756 = metadata !{i32 786451, metadata !757, null, metadata !"_IO_FILE", i32 245, i64 1216, i64 64, i32 0, i32 0, null, metadata !758, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [_IO_FILE] [line 245, size 1216, align 64, offset 0] [def] [from ]
!757 = metadata !{metadata !"D:/Xilinx/SDx/2016.3/SDK/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include\5Clibio.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!758 = metadata !{metadata !759, metadata !760, metadata !761, metadata !762, metadata !763, metadata !764, metadata !765, metadata !766, metadata !767, metadata !768, metadata !769, metadata !770, metadata !771, metadata !779, metadata !780, metadata !781, metadata !782, metadata !786, metadata !787, metadata !789, metadata !791, metadata !794, metadata !797, metadata !798, metadata !799, metadata !800, metadata !801, metadata !802, metadata !803}
!759 = metadata !{i32 786445, metadata !757, metadata !756, metadata !"_flags", i32 246, i64 32, i64 32, i64 0, i32 0, metadata !81} ; [ DW_TAG_member ] [_flags] [line 246, size 32, align 32, offset 0] [from int]
!760 = metadata !{i32 786445, metadata !757, metadata !756, metadata !"_IO_read_ptr", i32 251, i64 32, i64 32, i64 32, i32 0, metadata !83} ; [ DW_TAG_member ] [_IO_read_ptr] [line 251, size 32, align 32, offset 32] [from ]
!761 = metadata !{i32 786445, metadata !757, metadata !756, metadata !"_IO_read_end", i32 252, i64 32, i64 32, i64 64, i32 0, metadata !83} ; [ DW_TAG_member ] [_IO_read_end] [line 252, size 32, align 32, offset 64] [from ]
!762 = metadata !{i32 786445, metadata !757, metadata !756, metadata !"_IO_read_base", i32 253, i64 32, i64 32, i64 96, i32 0, metadata !83} ; [ DW_TAG_member ] [_IO_read_base] [line 253, size 32, align 32, offset 96] [from ]
!763 = metadata !{i32 786445, metadata !757, metadata !756, metadata !"_IO_write_base", i32 254, i64 32, i64 32, i64 128, i32 0, metadata !83} ; [ DW_TAG_member ] [_IO_write_base] [line 254, size 32, align 32, offset 128] [from ]
!764 = metadata !{i32 786445, metadata !757, metadata !756, metadata !"_IO_write_ptr", i32 255, i64 32, i64 32, i64 160, i32 0, metadata !83} ; [ DW_TAG_member ] [_IO_write_ptr] [line 255, size 32, align 32, offset 160] [from ]
!765 = metadata !{i32 786445, metadata !757, metadata !756, metadata !"_IO_write_end", i32 256, i64 32, i64 32, i64 192, i32 0, metadata !83} ; [ DW_TAG_member ] [_IO_write_end] [line 256, size 32, align 32, offset 192] [from ]
!766 = metadata !{i32 786445, metadata !757, metadata !756, metadata !"_IO_buf_base", i32 257, i64 32, i64 32, i64 224, i32 0, metadata !83} ; [ DW_TAG_member ] [_IO_buf_base] [line 257, size 32, align 32, offset 224] [from ]
!767 = metadata !{i32 786445, metadata !757, metadata !756, metadata !"_IO_buf_end", i32 258, i64 32, i64 32, i64 256, i32 0, metadata !83} ; [ DW_TAG_member ] [_IO_buf_end] [line 258, size 32, align 32, offset 256] [from ]
!768 = metadata !{i32 786445, metadata !757, metadata !756, metadata !"_IO_save_base", i32 260, i64 32, i64 32, i64 288, i32 0, metadata !83} ; [ DW_TAG_member ] [_IO_save_base] [line 260, size 32, align 32, offset 288] [from ]
!769 = metadata !{i32 786445, metadata !757, metadata !756, metadata !"_IO_backup_base", i32 261, i64 32, i64 32, i64 320, i32 0, metadata !83} ; [ DW_TAG_member ] [_IO_backup_base] [line 261, size 32, align 32, offset 320] [from ]
!770 = metadata !{i32 786445, metadata !757, metadata !756, metadata !"_IO_save_end", i32 262, i64 32, i64 32, i64 352, i32 0, metadata !83} ; [ DW_TAG_member ] [_IO_save_end] [line 262, size 32, align 32, offset 352] [from ]
!771 = metadata !{i32 786445, metadata !757, metadata !756, metadata !"_markers", i32 264, i64 32, i64 32, i64 384, i32 0, metadata !772} ; [ DW_TAG_member ] [_markers] [line 264, size 32, align 32, offset 384] [from ]
!772 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !773} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from _IO_marker]
!773 = metadata !{i32 786451, metadata !757, null, metadata !"_IO_marker", i32 160, i64 96, i64 32, i32 0, i32 0, null, metadata !774, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [_IO_marker] [line 160, size 96, align 32, offset 0] [def] [from ]
!774 = metadata !{metadata !775, metadata !776, metadata !778}
!775 = metadata !{i32 786445, metadata !757, metadata !773, metadata !"_next", i32 161, i64 32, i64 32, i64 0, i32 0, metadata !772} ; [ DW_TAG_member ] [_next] [line 161, size 32, align 32, offset 0] [from ]
!776 = metadata !{i32 786445, metadata !757, metadata !773, metadata !"_sbuf", i32 162, i64 32, i64 32, i64 32, i32 0, metadata !777} ; [ DW_TAG_member ] [_sbuf] [line 162, size 32, align 32, offset 32] [from ]
!777 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !756} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from _IO_FILE]
!778 = metadata !{i32 786445, metadata !757, metadata !773, metadata !"_pos", i32 166, i64 32, i64 32, i64 64, i32 0, metadata !81} ; [ DW_TAG_member ] [_pos] [line 166, size 32, align 32, offset 64] [from int]
!779 = metadata !{i32 786445, metadata !757, metadata !756, metadata !"_chain", i32 266, i64 32, i64 32, i64 416, i32 0, metadata !777} ; [ DW_TAG_member ] [_chain] [line 266, size 32, align 32, offset 416] [from ]
!780 = metadata !{i32 786445, metadata !757, metadata !756, metadata !"_fileno", i32 268, i64 32, i64 32, i64 448, i32 0, metadata !81} ; [ DW_TAG_member ] [_fileno] [line 268, size 32, align 32, offset 448] [from int]
!781 = metadata !{i32 786445, metadata !757, metadata !756, metadata !"_flags2", i32 272, i64 32, i64 32, i64 480, i32 0, metadata !81} ; [ DW_TAG_member ] [_flags2] [line 272, size 32, align 32, offset 480] [from int]
!782 = metadata !{i32 786445, metadata !757, metadata !756, metadata !"_old_offset", i32 274, i64 32, i64 32, i64 512, i32 0, metadata !783} ; [ DW_TAG_member ] [_old_offset] [line 274, size 32, align 32, offset 512] [from __off_t]
!783 = metadata !{i32 786454, metadata !784, null, metadata !"__off_t", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !785} ; [ DW_TAG_typedef ] [__off_t] [line 131, size 0, align 0, offset 0] [from long int]
!784 = metadata !{metadata !"D:/Xilinx/SDx/2016.3/SDK/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include\5Cbits/types.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!785 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!786 = metadata !{i32 786445, metadata !757, metadata !756, metadata !"_cur_column", i32 278, i64 16, i64 16, i64 544, i32 0, metadata !109} ; [ DW_TAG_member ] [_cur_column] [line 278, size 16, align 16, offset 544] [from unsigned short]
!787 = metadata !{i32 786445, metadata !757, metadata !756, metadata !"_vtable_offset", i32 279, i64 8, i64 8, i64 560, i32 0, metadata !788} ; [ DW_TAG_member ] [_vtable_offset] [line 279, size 8, align 8, offset 560] [from signed char]
!788 = metadata !{i32 786468, null, null, metadata !"signed char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [signed char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!789 = metadata !{i32 786445, metadata !757, metadata !756, metadata !"_shortbuf", i32 280, i64 8, i64 8, i64 568, i32 0, metadata !790} ; [ DW_TAG_member ] [_shortbuf] [line 280, size 8, align 8, offset 568] [from ]
!790 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8, i64 8, i32 0, i32 0, metadata !84, metadata !409, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 8, align 8, offset 0] [from char]
!791 = metadata !{i32 786445, metadata !757, metadata !756, metadata !"_lock", i32 284, i64 32, i64 32, i64 576, i32 0, metadata !792} ; [ DW_TAG_member ] [_lock] [line 284, size 32, align 32, offset 576] [from ]
!792 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !793} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from _IO_lock_t]
!793 = metadata !{i32 786454, metadata !757, null, metadata !"_IO_lock_t", i32 154, i64 0, i64 0, i64 0, i32 0, null} ; [ DW_TAG_typedef ] [_IO_lock_t] [line 154, size 0, align 0, offset 0] [from ]
!794 = metadata !{i32 786445, metadata !757, metadata !756, metadata !"_offset", i32 293, i64 64, i64 64, i64 640, i32 0, metadata !795} ; [ DW_TAG_member ] [_offset] [line 293, size 64, align 64, offset 640] [from __off64_t]
!795 = metadata !{i32 786454, metadata !784, null, metadata !"__off64_t", i32 132, i64 0, i64 0, i64 0, i32 0, metadata !796} ; [ DW_TAG_typedef ] [__off64_t] [line 132, size 0, align 0, offset 0] [from __quad_t]
!796 = metadata !{i32 786454, metadata !784, null, metadata !"__quad_t", i32 55, i64 0, i64 0, i64 0, i32 0, metadata !130} ; [ DW_TAG_typedef ] [__quad_t] [line 55, size 0, align 0, offset 0] [from long long int]
!797 = metadata !{i32 786445, metadata !757, metadata !756, metadata !"__pad1", i32 302, i64 32, i64 32, i64 704, i32 0, metadata !123} ; [ DW_TAG_member ] [__pad1] [line 302, size 32, align 32, offset 704] [from ]
!798 = metadata !{i32 786445, metadata !757, metadata !756, metadata !"__pad2", i32 303, i64 32, i64 32, i64 736, i32 0, metadata !123} ; [ DW_TAG_member ] [__pad2] [line 303, size 32, align 32, offset 736] [from ]
!799 = metadata !{i32 786445, metadata !757, metadata !756, metadata !"__pad3", i32 304, i64 32, i64 32, i64 768, i32 0, metadata !123} ; [ DW_TAG_member ] [__pad3] [line 304, size 32, align 32, offset 768] [from ]
!800 = metadata !{i32 786445, metadata !757, metadata !756, metadata !"__pad4", i32 305, i64 32, i64 32, i64 800, i32 0, metadata !123} ; [ DW_TAG_member ] [__pad4] [line 305, size 32, align 32, offset 800] [from ]
!801 = metadata !{i32 786445, metadata !757, metadata !756, metadata !"__pad5", i32 306, i64 32, i64 32, i64 832, i32 0, metadata !145} ; [ DW_TAG_member ] [__pad5] [line 306, size 32, align 32, offset 832] [from size_t]
!802 = metadata !{i32 786445, metadata !757, metadata !756, metadata !"_mode", i32 308, i64 32, i64 32, i64 864, i32 0, metadata !81} ; [ DW_TAG_member ] [_mode] [line 308, size 32, align 32, offset 864] [from int]
!803 = metadata !{i32 786445, metadata !757, metadata !756, metadata !"_unused2", i32 310, i64 320, i64 8, i64 896, i32 0, metadata !804} ; [ DW_TAG_member ] [_unused2] [line 310, size 320, align 8, offset 896] [from ]
!804 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 320, i64 8, i32 0, i32 0, metadata !84, metadata !805, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 320, align 8, offset 0] [from char]
!805 = metadata !{metadata !806}
!806 = metadata !{i32 786465, i64 0, i64 40}      ; [ DW_TAG_subrange_type ] [0, 39]
!807 = metadata !{i32 181, i32 9, metadata !752, null}
!808 = metadata !{i32 181, i32 3, metadata !752, null}
!809 = metadata !{i32 181, i32 3, metadata !810, null}
!810 = metadata !{i32 786443, metadata !77, metadata !752, i32 181, i32 3, i32 1, i32 107} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!811 = metadata !{i32 181, i32 38, metadata !812, null}
!812 = metadata !{i32 786443, metadata !77, metadata !752, i32 181, i32 38, i32 2, i32 108} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!813 = metadata !{i32 181, i32 38, metadata !752, null}
!814 = metadata !{i32 181, i32 38, metadata !815, null}
!815 = metadata !{i32 786443, metadata !77, metadata !816, i32 181, i32 38, i32 4, i32 110} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!816 = metadata !{i32 786443, metadata !77, metadata !752, i32 181, i32 38, i32 3, i32 109} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!817 = metadata !{i32 182, i32 7, metadata !818, null}
!818 = metadata !{i32 786443, metadata !77, metadata !752, i32 182, i32 7, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!819 = metadata !{i32 182, i32 16, metadata !820, null}
!820 = metadata !{i32 786443, metadata !77, metadata !818, i32 182, i32 16, i32 1, i32 111} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!821 = metadata !{i32 184, i32 3, metadata !752, null}
!822 = metadata !{i32 186, i32 7, metadata !823, null}
!823 = metadata !{i32 786443, metadata !77, metadata !752, i32 186, i32 7, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!824 = metadata !{i32 186, i32 18, metadata !825, null}
!825 = metadata !{i32 786443, metadata !77, metadata !823, i32 186, i32 18, i32 1, i32 112} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!826 = metadata !{i32 187, i32 7, metadata !827, null}
!827 = metadata !{i32 786443, metadata !77, metadata !752, i32 187, i32 7, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!828 = metadata !{i32 187, i32 18, metadata !829, null}
!829 = metadata !{i32 786443, metadata !77, metadata !827, i32 187, i32 18, i32 1, i32 113} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!830 = metadata !{i32 188, i32 2, metadata !752, null}
!831 = metadata !{i32 189, i32 2, metadata !85, null}
!832 = metadata !{i32 786689, metadata !424, metadata !"L", metadata !78, i32 16777355, metadata !88, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 139]
!833 = metadata !{i32 139, i32 40, metadata !424, null}
!834 = metadata !{i32 786689, metadata !424, metadata !"n", metadata !78, i32 33554571, metadata !81, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 139]
!835 = metadata !{i32 139, i32 47, metadata !424, null}
!836 = metadata !{i32 141, i32 6, metadata !837, null}
!837 = metadata !{i32 786443, metadata !77, metadata !424, i32 141, i32 6, i32 0, i32 52} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!838 = metadata !{i32 142, i32 3, metadata !837, null}
!839 = metadata !{i32 786688, metadata !840, metadata !"f", metadata !78, i32 145, metadata !841, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [f] [line 145]
!840 = metadata !{i32 786443, metadata !77, metadata !837, i32 144, i32 2, i32 0, i32 53} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!841 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !356} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from Proto]
!842 = metadata !{i32 145, i32 10, metadata !840, null}
!843 = metadata !{i32 786688, metadata !840, metadata !"i", metadata !78, i32 146, metadata !81, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 146]
!844 = metadata !{i32 146, i32 7, metadata !840, null}
!845 = metadata !{i32 146, i32 3, metadata !840, null}
!846 = metadata !{i32 147, i32 7, metadata !847, null}
!847 = metadata !{i32 786443, metadata !77, metadata !840, i32 147, i32 7, i32 0, i32 54} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!848 = metadata !{i32 147, i32 67, metadata !849, null}
!849 = metadata !{i32 786443, metadata !77, metadata !847, i32 147, i32 67, i32 1, i32 114} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!850 = metadata !{i32 147, i32 61, metadata !847, null}
!851 = metadata !{i32 148, i32 3, metadata !840, null}
!852 = metadata !{i32 149, i32 8, metadata !853, null}
!853 = metadata !{i32 786443, metadata !77, metadata !840, i32 149, i32 3, i32 0, i32 55} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!854 = metadata !{i32 149, i32 8, metadata !855, null}
!855 = metadata !{i32 786443, metadata !77, metadata !856, i32 149, i32 8, i32 2, i32 117} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!856 = metadata !{i32 786443, metadata !77, metadata !853, i32 149, i32 8, i32 1, i32 115} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!857 = metadata !{i32 151, i32 4, metadata !858, null}
!858 = metadata !{i32 786443, metadata !77, metadata !853, i32 150, i32 3, i32 0, i32 56} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!859 = metadata !{i32 152, i32 8, metadata !860, null}
!860 = metadata !{i32 786443, metadata !77, metadata !858, i32 152, i32 8, i32 0, i32 57} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!861 = metadata !{i32 152, i32 33, metadata !862, null}
!862 = metadata !{i32 786443, metadata !77, metadata !860, i32 152, i32 33, i32 1, i32 116} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!863 = metadata !{i32 153, i32 3, metadata !858, null}
!864 = metadata !{i32 149, i32 18, metadata !853, null}
!865 = metadata !{i32 154, i32 3, metadata !840, null}
!866 = metadata !{i32 155, i32 3, metadata !840, null}
!867 = metadata !{i32 157, i32 1, metadata !424, null}
!868 = metadata !{i32 786689, metadata !351, metadata !"f", metadata !78, i32 16777658, metadata !354, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [f] [line 442]
!869 = metadata !{i32 442, i32 40, metadata !351, null}
!870 = metadata !{i32 786689, metadata !351, metadata !"full", metadata !78, i32 33554874, metadata !81, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [full] [line 442]
!871 = metadata !{i32 442, i32 47, metadata !351, null}
!872 = metadata !{i32 786688, metadata !351, metadata !"i", metadata !78, i32 444, metadata !81, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 444]
!873 = metadata !{i32 444, i32 6, metadata !351, null}
!874 = metadata !{i32 786688, metadata !351, metadata !"n", metadata !78, i32 444, metadata !81, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 444]
!875 = metadata !{i32 444, i32 8, metadata !351, null}
!876 = metadata !{i32 444, i32 2, metadata !351, null}
!877 = metadata !{i32 445, i32 2, metadata !351, null}
!878 = metadata !{i32 446, i32 2, metadata !351, null}
!879 = metadata !{i32 447, i32 6, metadata !880, null}
!880 = metadata !{i32 786443, metadata !77, metadata !351, i32 447, i32 6, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!881 = metadata !{i32 447, i32 12, metadata !882, null}
!882 = metadata !{i32 786443, metadata !77, metadata !880, i32 447, i32 12, i32 1, i32 118} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!883 = metadata !{i32 448, i32 7, metadata !884, null}
!884 = metadata !{i32 786443, metadata !77, metadata !351, i32 448, i32 2, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!885 = metadata !{i32 448, i32 7, metadata !886, null}
!886 = metadata !{i32 786443, metadata !77, metadata !887, i32 448, i32 7, i32 4, i32 122} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!887 = metadata !{i32 786443, metadata !77, metadata !884, i32 448, i32 7, i32 1, i32 119} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!888 = metadata !{i32 448, i32 22, metadata !889, null}
!889 = metadata !{i32 786443, metadata !77, metadata !884, i32 448, i32 22, i32 2, i32 120} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!890 = metadata !{i32 448, i32 17, metadata !891, null}
!891 = metadata !{i32 786443, metadata !77, metadata !884, i32 448, i32 17, i32 3, i32 121} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!892 = metadata !{i32 449, i32 1, metadata !351, null}
!893 = metadata !{i32 786689, metadata !348, metadata !"what", metadata !78, i32 16777260, metadata !314, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [what] [line 44]
!894 = metadata !{i32 44, i32 32, metadata !348, null}
!895 = metadata !{i32 46, i32 2, metadata !348, null}
!896 = metadata !{i32 46, i32 72, metadata !348, null}
!897 = metadata !{i32 46, i32 63, metadata !348, null}
!898 = metadata !{i32 47, i32 2, metadata !348, null}
!899 = metadata !{i32 48, i32 1, metadata !348, null}
!900 = metadata !{i32 786689, metadata !343, metadata !"L", metadata !78, i32 16777375, metadata !88, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 159]
!901 = metadata !{i32 159, i32 30, metadata !343, null}
!902 = metadata !{i32 786689, metadata !343, metadata !"p", metadata !78, i32 33554591, metadata !346, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [p] [line 159]
!903 = metadata !{i32 159, i32 45, metadata !343, null}
!904 = metadata !{i32 786689, metadata !343, metadata !"size", metadata !78, i32 50331807, metadata !145, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 159]
!905 = metadata !{i32 159, i32 55, metadata !343, null}
!906 = metadata !{i32 786689, metadata !343, metadata !"u", metadata !78, i32 67109023, metadata !123, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [u] [line 159]
!907 = metadata !{i32 159, i32 67, metadata !343, null}
!908 = metadata !{i32 161, i32 2, metadata !343, null}
!909 = metadata !{i32 162, i32 10, metadata !343, null}
!910 = metadata !{i32 162, i32 10, metadata !911, null}
!911 = metadata !{i32 786443, metadata !77, metadata !343, i32 162, i32 10, i32 1, i32 123} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!912 = metadata !{i32 162, i32 10, metadata !913, null}
!913 = metadata !{i32 786443, metadata !77, metadata !343, i32 162, i32 10, i32 2, i32 124} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!914 = metadata !{i32 786689, metadata !423, metadata !"f", metadata !78, i32 16777611, metadata !354, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [f] [line 395]
!915 = metadata !{i32 395, i32 38, metadata !423, null}
!916 = metadata !{i32 786688, metadata !423, metadata !"s", metadata !78, i32 397, metadata !314, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s] [line 397]
!917 = metadata !{i32 397, i32 14, metadata !423, null}
!918 = metadata !{i32 397, i32 2, metadata !423, null}
!919 = metadata !{i32 397, i32 2, metadata !920, null}
!920 = metadata !{i32 786443, metadata !77, metadata !423, i32 397, i32 2, i32 1, i32 125} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!921 = metadata !{i32 397, i32 2, metadata !922, null}
!922 = metadata !{i32 786443, metadata !77, metadata !423, i32 397, i32 2, i32 2, i32 126} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!923 = metadata !{i32 397, i32 2, metadata !924, null}
!924 = metadata !{i32 786443, metadata !77, metadata !925, i32 397, i32 2, i32 4, i32 128} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!925 = metadata !{i32 786443, metadata !77, metadata !423, i32 397, i32 2, i32 3, i32 127} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!926 = metadata !{i32 398, i32 6, metadata !927, null}
!927 = metadata !{i32 786443, metadata !77, metadata !423, i32 398, i32 6, i32 0, i32 50} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!928 = metadata !{i32 398, i32 6, metadata !929, null}
!929 = metadata !{i32 786443, metadata !77, metadata !927, i32 398, i32 6, i32 1, i32 129} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!930 = metadata !{i32 399, i32 3, metadata !927, null}
!931 = metadata !{i32 400, i32 11, metadata !932, null}
!932 = metadata !{i32 786443, metadata !77, metadata !927, i32 400, i32 11, i32 0, i32 51} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!933 = metadata !{i32 401, i32 3, metadata !932, null}
!934 = metadata !{i32 403, i32 3, metadata !932, null}
!935 = metadata !{i32 404, i32 2, metadata !423, null}
!936 = metadata !{i32 408, i32 2, metadata !423, null}
!937 = metadata !{i32 411, i32 2, metadata !423, null}
!938 = metadata !{i32 413, i32 1, metadata !423, null}
!939 = metadata !{i32 786689, metadata !422, metadata !"f", metadata !78, i32 16777504, metadata !354, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [f] [line 288]
!940 = metadata !{i32 288, i32 36, metadata !422, null}
!941 = metadata !{i32 786688, metadata !422, metadata !"code", metadata !78, i32 290, metadata !269, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [code] [line 290]
!942 = metadata !{i32 290, i32 21, metadata !422, null}
!943 = metadata !{i32 290, i32 2, metadata !422, null}
!944 = metadata !{i32 786688, metadata !422, metadata !"pc", metadata !78, i32 291, metadata !81, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pc] [line 291]
!945 = metadata !{i32 291, i32 6, metadata !422, null}
!946 = metadata !{i32 786688, metadata !422, metadata !"n", metadata !78, i32 291, metadata !81, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 291]
!947 = metadata !{i32 291, i32 9, metadata !422, null}
!948 = metadata !{i32 291, i32 2, metadata !422, null}
!949 = metadata !{i32 292, i32 7, metadata !950, null}
!950 = metadata !{i32 786443, metadata !77, metadata !422, i32 292, i32 2, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!951 = metadata !{i32 292, i32 7, metadata !952, null}
!952 = metadata !{i32 786443, metadata !77, metadata !953, i32 292, i32 7, i32 2, i32 172} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!953 = metadata !{i32 786443, metadata !77, metadata !950, i32 292, i32 7, i32 1, i32 130} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!954 = metadata !{i32 786688, metadata !955, metadata !"i", metadata !78, i32 294, metadata !271, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 294]
!955 = metadata !{i32 786443, metadata !77, metadata !950, i32 293, i32 2, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!956 = metadata !{i32 294, i32 15, metadata !955, null}
!957 = metadata !{i32 294, i32 3, metadata !955, null}
!958 = metadata !{i32 786688, metadata !955, metadata !"o", metadata !78, i32 295, metadata !959, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [o] [line 295]
!959 = metadata !{i32 786454, metadata !19, null, metadata !"OpCode", i32 232, i64 0, i64 0, i64 0, i32 0, metadata !18} ; [ DW_TAG_typedef ] [OpCode] [line 232, size 0, align 0, offset 0] [from ]
!960 = metadata !{i32 295, i32 10, metadata !955, null}
!961 = metadata !{i32 295, i32 3, metadata !955, null}
!962 = metadata !{i32 786688, metadata !955, metadata !"a", metadata !78, i32 296, metadata !81, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a] [line 296]
!963 = metadata !{i32 296, i32 7, metadata !955, null}
!964 = metadata !{i32 296, i32 3, metadata !955, null}
!965 = metadata !{i32 786688, metadata !955, metadata !"b", metadata !78, i32 297, metadata !81, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b] [line 297]
!966 = metadata !{i32 297, i32 7, metadata !955, null}
!967 = metadata !{i32 297, i32 3, metadata !955, null}
!968 = metadata !{i32 786688, metadata !955, metadata !"c", metadata !78, i32 298, metadata !81, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c] [line 298]
!969 = metadata !{i32 298, i32 7, metadata !955, null}
!970 = metadata !{i32 298, i32 3, metadata !955, null}
!971 = metadata !{i32 786688, metadata !955, metadata !"ax", metadata !78, i32 299, metadata !81, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ax] [line 299]
!972 = metadata !{i32 299, i32 7, metadata !955, null}
!973 = metadata !{i32 299, i32 3, metadata !955, null}
!974 = metadata !{i32 786688, metadata !955, metadata !"bx", metadata !78, i32 300, metadata !81, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bx] [line 300]
!975 = metadata !{i32 300, i32 7, metadata !955, null}
!976 = metadata !{i32 300, i32 3, metadata !955, null}
!977 = metadata !{i32 786688, metadata !955, metadata !"sbx", metadata !78, i32 301, metadata !81, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sbx] [line 301]
!978 = metadata !{i32 301, i32 7, metadata !955, null}
!979 = metadata !{i32 301, i32 3, metadata !955, null}
!980 = metadata !{i32 786688, metadata !955, metadata !"line", metadata !78, i32 302, metadata !81, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [line] [line 302]
!981 = metadata !{i32 302, i32 7, metadata !955, null}
!982 = metadata !{i32 302, i32 3, metadata !955, null}
!983 = metadata !{i32 302, i32 3, metadata !984, null}
!984 = metadata !{i32 786443, metadata !77, metadata !955, i32 302, i32 3, i32 1, i32 131} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!985 = metadata !{i32 302, i32 3, metadata !986, null}
!986 = metadata !{i32 786443, metadata !77, metadata !955, i32 302, i32 3, i32 2, i32 132} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!987 = metadata !{i32 302, i32 3, metadata !988, null}
!988 = metadata !{i32 786443, metadata !77, metadata !989, i32 302, i32 3, i32 4, i32 134} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!989 = metadata !{i32 786443, metadata !77, metadata !955, i32 302, i32 3, i32 3, i32 133} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!990 = metadata !{i32 303, i32 3, metadata !955, null}
!991 = metadata !{i32 304, i32 7, metadata !992, null}
!992 = metadata !{i32 786443, metadata !77, metadata !955, i32 304, i32 7, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!993 = metadata !{i32 304, i32 15, metadata !994, null}
!994 = metadata !{i32 786443, metadata !77, metadata !992, i32 304, i32 15, i32 1, i32 135} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!995 = metadata !{i32 304, i32 43, metadata !996, null}
!996 = metadata !{i32 786443, metadata !77, metadata !992, i32 304, i32 43, i32 2, i32 136} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!997 = metadata !{i32 305, i32 3, metadata !955, null}
!998 = metadata !{i32 306, i32 3, metadata !955, null}
!999 = metadata !{i32 309, i32 5, metadata !1000, null}
!1000 = metadata !{i32 786443, metadata !77, metadata !955, i32 307, i32 3, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!1001 = metadata !{i32 310, i32 9, metadata !1002, null}
!1002 = metadata !{i32 786443, metadata !77, metadata !1000, i32 310, i32 9, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!1003 = metadata !{i32 310, i32 30, metadata !1004, null}
!1004 = metadata !{i32 786443, metadata !77, metadata !1002, i32 310, i32 30, i32 1, i32 137} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!1005 = metadata !{i32 310, i32 30, metadata !1006, null}
!1006 = metadata !{i32 786443, metadata !77, metadata !1002, i32 310, i32 30, i32 2, i32 138} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!1007 = metadata !{i32 310, i32 30, metadata !1008, null}
!1008 = metadata !{i32 786443, metadata !77, metadata !1002, i32 310, i32 30, i32 3, i32 139} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!1009 = metadata !{i32 310, i32 30, metadata !1002, null}
!1010 = metadata !{i32 310, i32 30, metadata !1011, null}
!1011 = metadata !{i32 786443, metadata !77, metadata !1012, i32 310, i32 30, i32 5, i32 141} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!1012 = metadata !{i32 786443, metadata !77, metadata !1002, i32 310, i32 30, i32 4, i32 140} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!1013 = metadata !{i32 311, i32 9, metadata !1014, null}
!1014 = metadata !{i32 786443, metadata !77, metadata !1000, i32 311, i32 9, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!1015 = metadata !{i32 311, i32 30, metadata !1016, null}
!1016 = metadata !{i32 786443, metadata !77, metadata !1014, i32 311, i32 30, i32 1, i32 142} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!1017 = metadata !{i32 311, i32 30, metadata !1018, null}
!1018 = metadata !{i32 786443, metadata !77, metadata !1014, i32 311, i32 30, i32 2, i32 143} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!1019 = metadata !{i32 311, i32 30, metadata !1020, null}
!1020 = metadata !{i32 786443, metadata !77, metadata !1014, i32 311, i32 30, i32 3, i32 144} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!1021 = metadata !{i32 311, i32 30, metadata !1014, null}
!1022 = metadata !{i32 311, i32 30, metadata !1023, null}
!1023 = metadata !{i32 786443, metadata !77, metadata !1024, i32 311, i32 30, i32 5, i32 146} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!1024 = metadata !{i32 786443, metadata !77, metadata !1014, i32 311, i32 30, i32 4, i32 145} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!1025 = metadata !{i32 312, i32 5, metadata !1000, null}
!1026 = metadata !{i32 314, i32 5, metadata !1000, null}
!1027 = metadata !{i32 315, i32 9, metadata !1028, null}
!1028 = metadata !{i32 786443, metadata !77, metadata !1000, i32 315, i32 9, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!1029 = metadata !{i32 315, i32 30, metadata !1030, null}
!1030 = metadata !{i32 786443, metadata !77, metadata !1028, i32 315, i32 30, i32 1, i32 147} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!1031 = metadata !{i32 316, i32 9, metadata !1032, null}
!1032 = metadata !{i32 786443, metadata !77, metadata !1000, i32 316, i32 9, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!1033 = metadata !{i32 316, i32 30, metadata !1034, null}
!1034 = metadata !{i32 786443, metadata !77, metadata !1032, i32 316, i32 30, i32 1, i32 148} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!1035 = metadata !{i32 317, i32 5, metadata !1000, null}
!1036 = metadata !{i32 319, i32 5, metadata !1000, null}
!1037 = metadata !{i32 320, i32 5, metadata !1000, null}
!1038 = metadata !{i32 322, i32 5, metadata !1000, null}
!1039 = metadata !{i32 323, i32 5, metadata !1000, null}
!1040 = metadata !{i32 325, i32 3, metadata !955, null}
!1041 = metadata !{i32 328, i32 5, metadata !1042, null}
!1042 = metadata !{i32 786443, metadata !77, metadata !955, i32 326, i32 3, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!1043 = metadata !{i32 328, i32 21, metadata !1042, null}
!1044 = metadata !{i32 329, i32 5, metadata !1042, null}
!1045 = metadata !{i32 332, i32 5, metadata !1042, null}
!1046 = metadata !{i32 332, i32 5, metadata !1047, null}
!1047 = metadata !{i32 786443, metadata !77, metadata !1042, i32 332, i32 5, i32 1, i32 149} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!1048 = metadata !{i32 332, i32 5, metadata !1049, null}
!1049 = metadata !{i32 786443, metadata !77, metadata !1042, i32 332, i32 5, i32 2, i32 150} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!1050 = metadata !{i32 332, i32 5, metadata !1051, null}
!1051 = metadata !{i32 786443, metadata !77, metadata !1052, i32 332, i32 5, i32 4, i32 152} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!1052 = metadata !{i32 786443, metadata !77, metadata !1042, i32 332, i32 5, i32 3, i32 151} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!1053 = metadata !{i32 333, i32 5, metadata !1042, null}
!1054 = metadata !{i32 335, i32 5, metadata !1042, null}
!1055 = metadata !{i32 335, i32 5, metadata !1056, null}
!1056 = metadata !{i32 786443, metadata !77, metadata !1042, i32 335, i32 5, i32 1, i32 153} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!1057 = metadata !{i32 335, i32 5, metadata !1058, null}
!1058 = metadata !{i32 786443, metadata !77, metadata !1042, i32 335, i32 5, i32 2, i32 154} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!1059 = metadata !{i32 335, i32 5, metadata !1060, null}
!1060 = metadata !{i32 786443, metadata !77, metadata !1061, i32 335, i32 5, i32 4, i32 156} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!1061 = metadata !{i32 786443, metadata !77, metadata !1042, i32 335, i32 5, i32 3, i32 155} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!1062 = metadata !{i32 336, i32 9, metadata !1063, null}
!1063 = metadata !{i32 786443, metadata !77, metadata !1042, i32 336, i32 9, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!1064 = metadata !{i32 336, i32 19, metadata !1065, null}
!1065 = metadata !{i32 786443, metadata !77, metadata !1066, i32 336, i32 19, i32 1, i32 157} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!1066 = metadata !{i32 786443, metadata !77, metadata !1063, i32 336, i32 17, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!1067 = metadata !{i32 336, i32 32, metadata !1066, null}
!1068 = metadata !{i32 336, i32 60, metadata !1066, null}
!1069 = metadata !{i32 337, i32 5, metadata !1042, null}
!1070 = metadata !{i32 339, i32 5, metadata !1042, null}
!1071 = metadata !{i32 339, i32 5, metadata !1072, null}
!1072 = metadata !{i32 786443, metadata !77, metadata !1042, i32 339, i32 5, i32 1, i32 158} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!1073 = metadata !{i32 339, i32 5, metadata !1074, null}
!1074 = metadata !{i32 786443, metadata !77, metadata !1042, i32 339, i32 5, i32 2, i32 159} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!1075 = metadata !{i32 339, i32 5, metadata !1076, null}
!1076 = metadata !{i32 786443, metadata !77, metadata !1077, i32 339, i32 5, i32 4, i32 161} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!1077 = metadata !{i32 786443, metadata !77, metadata !1042, i32 339, i32 5, i32 3, i32 160} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!1078 = metadata !{i32 340, i32 9, metadata !1079, null}
!1079 = metadata !{i32 786443, metadata !77, metadata !1042, i32 340, i32 9, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!1080 = metadata !{i32 340, i32 19, metadata !1081, null}
!1081 = metadata !{i32 786443, metadata !77, metadata !1082, i32 340, i32 19, i32 1, i32 162} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!1082 = metadata !{i32 786443, metadata !77, metadata !1079, i32 340, i32 17, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!1083 = metadata !{i32 340, i32 32, metadata !1082, null}
!1084 = metadata !{i32 340, i32 60, metadata !1082, null}
!1085 = metadata !{i32 341, i32 9, metadata !1086, null}
!1086 = metadata !{i32 786443, metadata !77, metadata !1042, i32 341, i32 9, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!1087 = metadata !{i32 341, i32 19, metadata !1088, null}
!1088 = metadata !{i32 786443, metadata !77, metadata !1089, i32 341, i32 19, i32 1, i32 163} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!1089 = metadata !{i32 786443, metadata !77, metadata !1086, i32 341, i32 17, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!1090 = metadata !{i32 341, i32 32, metadata !1089, null}
!1091 = metadata !{i32 341, i32 60, metadata !1089, null}
!1092 = metadata !{i32 342, i32 5, metadata !1042, null}
!1093 = metadata !{i32 345, i32 9, metadata !1094, null}
!1094 = metadata !{i32 786443, metadata !77, metadata !1042, i32 345, i32 9, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!1095 = metadata !{i32 345, i32 19, metadata !1096, null}
!1096 = metadata !{i32 786443, metadata !77, metadata !1097, i32 345, i32 19, i32 1, i32 164} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!1097 = metadata !{i32 786443, metadata !77, metadata !1094, i32 345, i32 17, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!1098 = metadata !{i32 345, i32 35, metadata !1097, null}
!1099 = metadata !{i32 345, i32 63, metadata !1097, null}
!1100 = metadata !{i32 346, i32 5, metadata !1042, null}
!1101 = metadata !{i32 362, i32 9, metadata !1102, null}
!1102 = metadata !{i32 786443, metadata !77, metadata !1042, i32 362, i32 9, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!1103 = metadata !{i32 362, i32 9, metadata !1104, null}
!1104 = metadata !{i32 786443, metadata !77, metadata !1102, i32 362, i32 9, i32 1, i32 165} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!1105 = metadata !{i32 364, i32 6, metadata !1106, null}
!1106 = metadata !{i32 786443, metadata !77, metadata !1102, i32 363, i32 5, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!1107 = metadata !{i32 365, i32 10, metadata !1108, null}
!1108 = metadata !{i32 786443, metadata !77, metadata !1106, i32 365, i32 10, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!1109 = metadata !{i32 365, i32 18, metadata !1110, null}
!1110 = metadata !{i32 786443, metadata !77, metadata !1108, i32 365, i32 18, i32 1, i32 166} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!1111 = metadata !{i32 365, i32 51, metadata !1112, null}
!1112 = metadata !{i32 786443, metadata !77, metadata !1108, i32 365, i32 51, i32 2, i32 167} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!1113 = metadata !{i32 366, i32 6, metadata !1106, null}
!1114 = metadata !{i32 367, i32 10, metadata !1115, null}
!1115 = metadata !{i32 786443, metadata !77, metadata !1106, i32 367, i32 10, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!1116 = metadata !{i32 367, i32 18, metadata !1117, null}
!1117 = metadata !{i32 786443, metadata !77, metadata !1115, i32 367, i32 18, i32 1, i32 168} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!1118 = metadata !{i32 367, i32 51, metadata !1119, null}
!1119 = metadata !{i32 786443, metadata !77, metadata !1115, i32 367, i32 51, i32 2, i32 169} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!1120 = metadata !{i32 368, i32 5, metadata !1106, null}
!1121 = metadata !{i32 369, i32 5, metadata !1042, null}
!1122 = metadata !{i32 374, i32 5, metadata !1042, null}
!1123 = metadata !{i32 375, i32 5, metadata !1042, null}
!1124 = metadata !{i32 377, i32 5, metadata !1042, null}
!1125 = metadata !{i32 378, i32 5, metadata !1042, null}
!1126 = metadata !{i32 380, i32 9, metadata !1127, null}
!1127 = metadata !{i32 786443, metadata !77, metadata !1042, i32 380, i32 9, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!1128 = metadata !{i32 380, i32 15, metadata !1129, null}
!1129 = metadata !{i32 786443, metadata !77, metadata !1127, i32 380, i32 15, i32 1, i32 170} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!1130 = metadata !{i32 380, i32 54, metadata !1131, null}
!1131 = metadata !{i32 786443, metadata !77, metadata !1127, i32 380, i32 54, i32 2, i32 171} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!1132 = metadata !{i32 381, i32 5, metadata !1042, null}
!1133 = metadata !{i32 383, i32 5, metadata !1042, null}
!1134 = metadata !{i32 383, i32 21, metadata !1042, null}
!1135 = metadata !{i32 384, i32 5, metadata !1042, null}
!1136 = metadata !{i32 386, i32 5, metadata !1042, null}
!1137 = metadata !{i32 388, i32 3, metadata !955, null}
!1138 = metadata !{i32 389, i32 2, metadata !955, null}
!1139 = metadata !{i32 292, i32 19, metadata !950, null}
!1140 = metadata !{i32 390, i32 1, metadata !422, null}
!1141 = metadata !{i32 786689, metadata !413, metadata !"f", metadata !78, i32 16777631, metadata !354, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [f] [line 415]
!1142 = metadata !{i32 415, i32 37, metadata !413, null}
!1143 = metadata !{i32 786688, metadata !413, metadata !"i", metadata !78, i32 417, metadata !81, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 417]
!1144 = metadata !{i32 417, i32 6, metadata !413, null}
!1145 = metadata !{i32 786688, metadata !413, metadata !"n", metadata !78, i32 417, metadata !81, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 417]
!1146 = metadata !{i32 417, i32 8, metadata !413, null}
!1147 = metadata !{i32 418, i32 2, metadata !413, null}
!1148 = metadata !{i32 419, i32 2, metadata !413, null}
!1149 = metadata !{i32 420, i32 7, metadata !1150, null}
!1150 = metadata !{i32 786443, metadata !77, metadata !413, i32 420, i32 2, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!1151 = metadata !{i32 420, i32 7, metadata !1152, null}
!1152 = metadata !{i32 786443, metadata !77, metadata !1153, i32 420, i32 7, i32 2, i32 174} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!1153 = metadata !{i32 786443, metadata !77, metadata !1150, i32 420, i32 7, i32 1, i32 173} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!1154 = metadata !{i32 422, i32 3, metadata !1155, null}
!1155 = metadata !{i32 786443, metadata !77, metadata !1150, i32 421, i32 2, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!1156 = metadata !{i32 423, i32 3, metadata !1155, null}
!1157 = metadata !{i32 424, i32 3, metadata !1155, null}
!1158 = metadata !{i32 425, i32 2, metadata !1155, null}
!1159 = metadata !{i32 420, i32 17, metadata !1150, null}
!1160 = metadata !{i32 426, i32 2, metadata !413, null}
!1161 = metadata !{i32 427, i32 2, metadata !413, null}
!1162 = metadata !{i32 428, i32 7, metadata !1163, null}
!1163 = metadata !{i32 786443, metadata !77, metadata !413, i32 428, i32 2, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!1164 = metadata !{i32 428, i32 7, metadata !1165, null}
!1165 = metadata !{i32 786443, metadata !77, metadata !1166, i32 428, i32 7, i32 2, i32 176} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!1166 = metadata !{i32 786443, metadata !77, metadata !1163, i32 428, i32 7, i32 1, i32 175} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!1167 = metadata !{i32 430, i32 3, metadata !1168, null}
!1168 = metadata !{i32 786443, metadata !77, metadata !1163, i32 429, i32 2, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!1169 = metadata !{i32 432, i32 2, metadata !1168, null}
!1170 = metadata !{i32 428, i32 17, metadata !1163, null}
!1171 = metadata !{i32 433, i32 2, metadata !413, null}
!1172 = metadata !{i32 434, i32 2, metadata !413, null}
!1173 = metadata !{i32 435, i32 7, metadata !1174, null}
!1174 = metadata !{i32 786443, metadata !77, metadata !413, i32 435, i32 2, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!1175 = metadata !{i32 435, i32 7, metadata !1176, null}
!1176 = metadata !{i32 786443, metadata !77, metadata !1177, i32 435, i32 7, i32 2, i32 182} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!1177 = metadata !{i32 786443, metadata !77, metadata !1174, i32 435, i32 7, i32 1, i32 177} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!1178 = metadata !{i32 437, i32 3, metadata !1179, null}
!1179 = metadata !{i32 786443, metadata !77, metadata !1174, i32 436, i32 2, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!1180 = metadata !{i32 437, i32 3, metadata !1181, null}
!1181 = metadata !{i32 786443, metadata !77, metadata !1179, i32 437, i32 3, i32 1, i32 178} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!1182 = metadata !{i32 437, i32 3, metadata !1183, null}
!1183 = metadata !{i32 786443, metadata !77, metadata !1179, i32 437, i32 3, i32 2, i32 179} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!1184 = metadata !{i32 437, i32 3, metadata !1185, null}
!1185 = metadata !{i32 786443, metadata !77, metadata !1186, i32 437, i32 3, i32 4, i32 181} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!1186 = metadata !{i32 786443, metadata !77, metadata !1179, i32 437, i32 3, i32 3, i32 180} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!1187 = metadata !{i32 439, i32 2, metadata !1179, null}
!1188 = metadata !{i32 435, i32 17, metadata !1174, null}
!1189 = metadata !{i32 440, i32 1, metadata !413, null}
!1190 = metadata !{i32 786689, metadata !416, metadata !"f", metadata !78, i32 16777470, metadata !354, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [f] [line 254]
!1191 = metadata !{i32 254, i32 40, metadata !416, null}
!1192 = metadata !{i32 786689, metadata !416, metadata !"i", metadata !78, i32 33554686, metadata !81, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [i] [line 254]
!1193 = metadata !{i32 254, i32 47, metadata !416, null}
!1194 = metadata !{i32 786688, metadata !416, metadata !"o", metadata !78, i32 256, metadata !1195, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [o] [line 256]
!1195 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1196} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1196 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !114} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from TValue]
!1197 = metadata !{i32 256, i32 16, metadata !416, null}
!1198 = metadata !{i32 256, i32 2, metadata !416, null}
!1199 = metadata !{i32 257, i32 2, metadata !416, null}
!1200 = metadata !{i32 260, i32 2, metadata !1201, null}
!1201 = metadata !{i32 786443, metadata !77, metadata !416, i32 258, i32 2, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!1202 = metadata !{i32 261, i32 2, metadata !1201, null}
!1203 = metadata !{i32 263, i32 2, metadata !1201, null}
!1204 = metadata !{i32 264, i32 2, metadata !1201, null}
!1205 = metadata !{i32 786688, metadata !1206, metadata !"buff", metadata !78, i32 267, metadata !1207, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buff] [line 267]
!1206 = metadata !{i32 786443, metadata !77, metadata !1201, i32 266, i32 2, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!1207 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 800, i64 8, i32 0, i32 0, metadata !84, metadata !1208, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 800, align 8, offset 0] [from char]
!1208 = metadata !{metadata !1209}
!1209 = metadata !{i32 786465, i64 0, i64 100}    ; [ DW_TAG_subrange_type ] [0, 99]
!1210 = metadata !{i32 267, i32 7, metadata !1206, null}
!1211 = metadata !{i32 268, i32 2, metadata !1206, null}
!1212 = metadata !{i32 269, i32 2, metadata !1206, null}
!1213 = metadata !{i32 270, i32 11, metadata !1214, null}
!1214 = metadata !{i32 786443, metadata !77, metadata !1206, i32 270, i32 6, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!1215 = metadata !{i32 270, i32 46, metadata !1216, null}
!1216 = metadata !{i32 786443, metadata !77, metadata !1214, i32 270, i32 46, i32 1, i32 183} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!1217 = metadata !{i32 271, i32 2, metadata !1206, null}
!1218 = metadata !{i32 274, i32 2, metadata !1201, null}
!1219 = metadata !{i32 275, i32 2, metadata !1201, null}
!1220 = metadata !{i32 277, i32 2, metadata !1201, null}
!1221 = metadata !{i32 278, i32 2, metadata !1201, null}
!1222 = metadata !{i32 280, i32 2, metadata !1201, null}
!1223 = metadata !{i32 281, i32 2, metadata !1201, null}
!1224 = metadata !{i32 283, i32 1, metadata !416, null}
!1225 = metadata !{i32 786689, metadata !417, metadata !"ts", metadata !78, i32 16777442, metadata !420, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ts] [line 226]
!1226 = metadata !{i32 226, i32 40, metadata !417, null}
!1227 = metadata !{i32 786688, metadata !417, metadata !"s", metadata !78, i32 228, metadata !314, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s] [line 228]
!1228 = metadata !{i32 228, i32 14, metadata !417, null}
!1229 = metadata !{i32 228, i32 2, metadata !417, null}
!1230 = metadata !{i32 786688, metadata !417, metadata !"i", metadata !78, i32 229, metadata !145, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 229]
!1231 = metadata !{i32 229, i32 9, metadata !417, null}
!1232 = metadata !{i32 786688, metadata !417, metadata !"n", metadata !78, i32 229, metadata !145, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 229]
!1233 = metadata !{i32 229, i32 11, metadata !417, null}
!1234 = metadata !{i32 229, i32 2, metadata !417, null}
!1235 = metadata !{i32 229, i32 2, metadata !1236, null}
!1236 = metadata !{i32 786443, metadata !77, metadata !417, i32 229, i32 2, i32 1, i32 184} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!1237 = metadata !{i32 229, i32 2, metadata !1238, null}
!1238 = metadata !{i32 786443, metadata !77, metadata !417, i32 229, i32 2, i32 2, i32 185} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!1239 = metadata !{i32 229, i32 2, metadata !1240, null}
!1240 = metadata !{i32 786443, metadata !77, metadata !1241, i32 229, i32 2, i32 4, i32 187} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!1241 = metadata !{i32 786443, metadata !77, metadata !417, i32 229, i32 2, i32 3, i32 186} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!1242 = metadata !{i32 230, i32 2, metadata !417, null}
!1243 = metadata !{i32 231, i32 7, metadata !1244, null}
!1244 = metadata !{i32 786443, metadata !77, metadata !417, i32 231, i32 2, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!1245 = metadata !{i32 231, i32 7, metadata !1246, null}
!1246 = metadata !{i32 786443, metadata !77, metadata !1247, i32 231, i32 7, i32 2, i32 189} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!1247 = metadata !{i32 786443, metadata !77, metadata !1244, i32 231, i32 7, i32 1, i32 188} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!1248 = metadata !{i32 786688, metadata !1249, metadata !"c", metadata !78, i32 233, metadata !81, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c] [line 233]
!1249 = metadata !{i32 786443, metadata !77, metadata !1244, i32 232, i32 2, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!1250 = metadata !{i32 233, i32 7, metadata !1249, null}
!1251 = metadata !{i32 233, i32 3, metadata !1249, null}
!1252 = metadata !{i32 234, i32 3, metadata !1249, null}
!1253 = metadata !{i32 236, i32 15, metadata !1254, null}
!1254 = metadata !{i32 786443, metadata !77, metadata !1249, i32 235, i32 3, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!1255 = metadata !{i32 236, i32 31, metadata !1254, null}
!1256 = metadata !{i32 237, i32 15, metadata !1254, null}
!1257 = metadata !{i32 237, i32 31, metadata !1254, null}
!1258 = metadata !{i32 238, i32 15, metadata !1254, null}
!1259 = metadata !{i32 238, i32 30, metadata !1254, null}
!1260 = metadata !{i32 239, i32 15, metadata !1254, null}
!1261 = metadata !{i32 239, i32 30, metadata !1254, null}
!1262 = metadata !{i32 240, i32 15, metadata !1254, null}
!1263 = metadata !{i32 240, i32 30, metadata !1254, null}
!1264 = metadata !{i32 241, i32 15, metadata !1254, null}
!1265 = metadata !{i32 241, i32 30, metadata !1254, null}
!1266 = metadata !{i32 242, i32 15, metadata !1254, null}
!1267 = metadata !{i32 242, i32 30, metadata !1254, null}
!1268 = metadata !{i32 243, i32 15, metadata !1254, null}
!1269 = metadata !{i32 243, i32 30, metadata !1254, null}
!1270 = metadata !{i32 244, i32 15, metadata !1254, null}
!1271 = metadata !{i32 244, i32 30, metadata !1254, null}
!1272 = metadata !{i32 245, i32 17, metadata !1273, null}
!1273 = metadata !{i32 786443, metadata !77, metadata !1254, i32 245, i32 17, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!1274 = metadata !{i32 246, i32 7, metadata !1273, null}
!1275 = metadata !{i32 248, i32 4, metadata !1273, null}
!1276 = metadata !{i32 249, i32 3, metadata !1254, null}
!1277 = metadata !{i32 250, i32 2, metadata !1249, null}
!1278 = metadata !{i32 231, i32 17, metadata !1244, null}
!1279 = metadata !{i32 251, i32 2, metadata !417, null}
!1280 = metadata !{i32 252, i32 1, metadata !417, null}
!1281 = metadata !{i32 786689, metadata !427, metadata !"L", metadata !78, i32 16777338, metadata !88, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 122]
!1282 = metadata !{i32 122, i32 38, metadata !427, null}
!1283 = metadata !{i32 786689, metadata !427, metadata !"ud", metadata !78, i32 33554554, metadata !123, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ud] [line 122]
!1284 = metadata !{i32 122, i32 47, metadata !427, null}
!1285 = metadata !{i32 786689, metadata !427, metadata !"size", metadata !78, i32 50331770, metadata !430, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 122]
!1286 = metadata !{i32 122, i32 59, metadata !427, null}
!1287 = metadata !{i32 124, i32 2, metadata !427, null}
!1288 = metadata !{i32 125, i32 6, metadata !1289, null}
!1289 = metadata !{i32 786443, metadata !77, metadata !427, i32 125, i32 6, i32 0, i32 58} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!1290 = metadata !{i32 127, i32 3, metadata !1291, null}
!1291 = metadata !{i32 786443, metadata !77, metadata !1289, i32 126, i32 2, i32 0, i32 59} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!1292 = metadata !{i32 128, i32 3, metadata !1291, null}
!1293 = metadata !{i32 132, i32 3, metadata !1294, null}
!1294 = metadata !{i32 786443, metadata !77, metadata !1289, i32 131, i32 2, i32 0, i32 60} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/luac.c]
!1295 = metadata !{i32 133, i32 3, metadata !1294, null}
!1296 = metadata !{i32 135, i32 1, metadata !427, null}
