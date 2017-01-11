; ModuleID = 'C:/Users/DevolutionX/workspace/lua/src/lvm.c'
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-n32-S64"
target triple = "armv7--linux-gnueabihf"

%struct.lua_TValue = type { %union.Value, i32 }
%union.Value = type { i64 }
%struct.GCObject = type { %struct.GCObject*, i8, i8 }
%union.GCUnion = type { %union.Closure, [88 x i8] }
%union.Closure = type { %struct.CClosure }
%struct.CClosure = type { %struct.GCObject*, i8, i8, i8, %struct.GCObject*, i32 (%struct.lua_State*)*, [1 x %struct.lua_TValue] }
%struct.lua_State = type { %struct.GCObject*, i8, i8, i16, i8, %struct.lua_TValue*, %struct.global_State*, %struct.CallInfo*, i32*, %struct.lua_TValue*, %struct.lua_TValue*, %struct.UpVal*, %struct.GCObject*, %struct.lua_State*, %struct.lua_longjmp*, %struct.CallInfo, void (%struct.lua_State*, %struct.lua_Debug*)*, i32, i32, i32, i32, i16, i16, i32, i8 }
%struct.global_State = type { i8* (i8*, i8*, i32, i32)*, i8*, i32, i32, i32, i32, %struct.stringtable, %struct.lua_TValue, i32, i8, i8, i8, i8, %struct.GCObject*, %struct.GCObject**, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.lua_State*, i32, i32, i32, i32 (%struct.lua_State*)*, %struct.lua_State*, double*, %struct.TString*, [24 x %struct.TString*], [9 x %struct.Table*], [53 x [2 x %struct.TString*]] }
%struct.stringtable = type { %struct.TString**, i32, i32 }
%struct.TString = type { %struct.GCObject*, i8, i8, i8, i8, i32, %union.anon.3 }
%union.anon.3 = type { i32 }
%struct.Table = type { %struct.GCObject*, i8, i8, i8, i8, i32, %struct.lua_TValue*, %struct.Node*, %struct.Node*, %struct.Table*, %struct.GCObject* }
%struct.Node = type { %struct.lua_TValue, %union.TKey }
%union.TKey = type { %struct.anon.4 }
%struct.anon.4 = type { %union.Value, i32, i32 }
%struct.UpVal = type { %struct.lua_TValue*, i32, %union.anon.1 }
%union.anon.1 = type { %struct.lua_TValue }
%struct.lua_longjmp = type opaque
%struct.CallInfo = type { %struct.lua_TValue*, %struct.lua_TValue*, %struct.CallInfo*, %struct.CallInfo*, %union.anon, i32, i16, i8 }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { i32 (%struct.lua_State*, i32, i32)*, i32, i32 }
%struct.lua_Debug = type { i32, i8*, i8*, i8*, i8*, i32, i32, i32, i8, i8, i8, i8, [60 x i8], %struct.CallInfo* }
%struct.Udata = type { %struct.GCObject*, i8, i8, i8, %struct.Table*, i32, %union.Value }
%struct.anon = type { %struct.lua_TValue*, i32* }
%struct.LClosure = type { %struct.GCObject*, i8, i8, i8, %struct.GCObject*, %struct.Proto*, [1 x %struct.UpVal*] }
%struct.Proto = type { %struct.GCObject*, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, %struct.lua_TValue*, i32*, %struct.Proto**, i32*, %struct.LocVar*, %struct.Upvaldesc*, %struct.LClosure*, %struct.TString*, %struct.GCObject* }
%struct.LocVar = type { %struct.TString*, i32, i32 }
%struct.Upvaldesc = type { %struct.TString*, i8, i8 }

@.str = private unnamed_addr constant [6 x i8] c"index\00", align 1
@.str1 = private unnamed_addr constant [40 x i8] c"'__index' chain too long; possible loop\00", align 1
@luaO_nilobject_ = external hidden constant %struct.lua_TValue
@.str2 = private unnamed_addr constant [43 x i8] c"'__newindex' chain too long; possible loop\00", align 1
@.str3 = private unnamed_addr constant [23 x i8] c"string length overflow\00", align 1
@.str4 = private unnamed_addr constant [14 x i8] c"get length of\00", align 1
@.str5 = private unnamed_addr constant [26 x i8] c"attempt to divide by zero\00", align 1
@.str6 = private unnamed_addr constant [26 x i8] c"attempt to perform 'n%%0'\00", align 1
@.str7 = private unnamed_addr constant [29 x i8] c"'for' limit must be a number\00", align 1
@.str8 = private unnamed_addr constant [28 x i8] c"'for' step must be a number\00", align 1
@.str9 = private unnamed_addr constant [37 x i8] c"'for' initial value must be a number\00", align 1

; Function Attrs: nounwind
define hidden i32 @luaV_tonumber_(%struct.lua_TValue* %obj, double* %n) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.lua_TValue*, align 4
  %3 = alloca double*, align 4
  %v = alloca %struct.lua_TValue, align 8
  store %struct.lua_TValue* %obj, %struct.lua_TValue** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %2}, metadata !668), !dbg !669
  store double* %n, double** %3, align 4
  call void @llvm.dbg.declare(metadata !{double** %3}, metadata !670), !dbg !671
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue* %v}, metadata !672), !dbg !673
  %4 = load %struct.lua_TValue** %2, align 4, !dbg !674
  %5 = getelementptr inbounds %struct.lua_TValue* %4, i32 0, i32 1, !dbg !674
  %6 = load i32* %5, align 4, !dbg !674
  %7 = icmp eq i32 %6, 19, !dbg !674
  br i1 %7, label %8, label %15, !dbg !674

; <label>:8                                       ; preds = %0
  %9 = load %struct.lua_TValue** %2, align 4, !dbg !676
  %10 = getelementptr inbounds %struct.lua_TValue* %9, i32 0, i32 0, !dbg !676
  %11 = bitcast %union.Value* %10 to i64*, !dbg !676
  %12 = load i64* %11, align 8, !dbg !676
  %13 = sitofp i64 %12 to double, !dbg !676
  %14 = load double** %3, align 4, !dbg !676
  store double %13, double* %14, align 8, !dbg !676
  store i32 1, i32* %1, !dbg !678
  br label %82, !dbg !678

; <label>:15                                      ; preds = %0
  %16 = load %struct.lua_TValue** %2, align 4, !dbg !679
  %17 = getelementptr inbounds %struct.lua_TValue* %16, i32 0, i32 1, !dbg !679
  %18 = load i32* %17, align 4, !dbg !679
  %19 = and i32 %18, 15, !dbg !679
  %20 = icmp eq i32 %19, 4, !dbg !679
  br i1 %20, label %21, label %81, !dbg !679

; <label>:21                                      ; preds = %15
  %22 = load %struct.lua_TValue** %2, align 4, !dbg !681
  %23 = getelementptr inbounds %struct.lua_TValue* %22, i32 0, i32 0, !dbg !681
  %24 = bitcast %union.Value* %23 to %struct.GCObject**, !dbg !681
  %25 = load %struct.GCObject** %24, align 4, !dbg !681
  %26 = bitcast %struct.GCObject* %25 to %union.GCUnion*, !dbg !681
  %27 = bitcast %union.GCUnion* %26 to %struct.TString*, !dbg !681
  %28 = bitcast %struct.TString* %27 to i8*, !dbg !681
  %29 = getelementptr inbounds i8* %28, i32 16, !dbg !681
  %30 = call i32 @luaO_str2num(i8* %29, %struct.lua_TValue* %v), !dbg !681
  %31 = load %struct.lua_TValue** %2, align 4, !dbg !681
  %32 = getelementptr inbounds %struct.lua_TValue* %31, i32 0, i32 0, !dbg !681
  %33 = bitcast %union.Value* %32 to %struct.GCObject**, !dbg !681
  %34 = load %struct.GCObject** %33, align 4, !dbg !681
  %35 = bitcast %struct.GCObject* %34 to %union.GCUnion*, !dbg !681
  %36 = bitcast %union.GCUnion* %35 to %struct.TString*, !dbg !681
  %37 = getelementptr inbounds %struct.TString* %36, i32 0, i32 1, !dbg !681
  %38 = load i8* %37, align 1, !dbg !681
  %39 = zext i8 %38 to i32, !dbg !681
  %40 = icmp eq i32 %39, 4, !dbg !681
  br i1 %40, label %41, label %51, !dbg !681

; <label>:41                                      ; preds = %21
  %42 = load %struct.lua_TValue** %2, align 4, !dbg !682
  %43 = getelementptr inbounds %struct.lua_TValue* %42, i32 0, i32 0, !dbg !682
  %44 = bitcast %union.Value* %43 to %struct.GCObject**, !dbg !682
  %45 = load %struct.GCObject** %44, align 4, !dbg !682
  %46 = bitcast %struct.GCObject* %45 to %union.GCUnion*, !dbg !682
  %47 = bitcast %union.GCUnion* %46 to %struct.TString*, !dbg !682
  %48 = getelementptr inbounds %struct.TString* %47, i32 0, i32 4, !dbg !682
  %49 = load i8* %48, align 1, !dbg !682
  %50 = zext i8 %49 to i32, !dbg !682
  br label %61, !dbg !682

; <label>:51                                      ; preds = %21
  %52 = load %struct.lua_TValue** %2, align 4, !dbg !684
  %53 = getelementptr inbounds %struct.lua_TValue* %52, i32 0, i32 0, !dbg !684
  %54 = bitcast %union.Value* %53 to %struct.GCObject**, !dbg !684
  %55 = load %struct.GCObject** %54, align 4, !dbg !684
  %56 = bitcast %struct.GCObject* %55 to %union.GCUnion*, !dbg !684
  %57 = bitcast %union.GCUnion* %56 to %struct.TString*, !dbg !684
  %58 = getelementptr inbounds %struct.TString* %57, i32 0, i32 6, !dbg !684
  %59 = bitcast %union.anon.3* %58 to i32*, !dbg !684
  %60 = load i32* %59, align 4, !dbg !684
  br label %61, !dbg !684

; <label>:61                                      ; preds = %51, %41
  %62 = phi i32 [ %50, %41 ], [ %60, %51 ], !dbg !681
  %63 = add i32 %62, 1, !dbg !686
  %64 = icmp eq i32 %30, %63, !dbg !686
  br i1 %64, label %65, label %81, !dbg !686

; <label>:65                                      ; preds = %61
  %66 = getelementptr inbounds %struct.lua_TValue* %v, i32 0, i32 1, !dbg !689
  %67 = load i32* %66, align 4, !dbg !689
  %68 = icmp eq i32 %67, 19, !dbg !689
  br i1 %68, label %69, label %74, !dbg !689

; <label>:69                                      ; preds = %65
  %70 = getelementptr inbounds %struct.lua_TValue* %v, i32 0, i32 0, !dbg !691
  %71 = bitcast %union.Value* %70 to i64*, !dbg !691
  %72 = load i64* %71, align 8, !dbg !691
  %73 = sitofp i64 %72 to double, !dbg !691
  br label %78, !dbg !691

; <label>:74                                      ; preds = %65
  %75 = getelementptr inbounds %struct.lua_TValue* %v, i32 0, i32 0, !dbg !693
  %76 = bitcast %union.Value* %75 to double*, !dbg !693
  %77 = load double* %76, align 8, !dbg !693
  br label %78, !dbg !693

; <label>:78                                      ; preds = %74, %69
  %79 = phi double [ %73, %69 ], [ %77, %74 ], !dbg !689
  %80 = load double** %3, align 4, !dbg !695
  store double %79, double* %80, align 8, !dbg !695
  store i32 1, i32* %1, !dbg !698
  br label %82, !dbg !698

; <label>:81                                      ; preds = %61, %15
  store i32 0, i32* %1, !dbg !699
  br label %82, !dbg !699

; <label>:82                                      ; preds = %81, %78, %8
  %83 = load i32* %1, !dbg !700
  ret i32 %83, !dbg !700
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

declare hidden i32 @luaO_str2num(i8*, %struct.lua_TValue*) #2

; Function Attrs: nounwind
define hidden i32 @luaV_tointeger(%struct.lua_TValue* %obj, i64* %p, i32 %mode) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.lua_TValue*, align 4
  %3 = alloca i64*, align 4
  %4 = alloca i32, align 4
  %v = alloca %struct.lua_TValue, align 8
  %n = alloca double, align 8
  %f = alloca double, align 8
  store %struct.lua_TValue* %obj, %struct.lua_TValue** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %2}, metadata !701), !dbg !702
  store i64* %p, i64** %3, align 4
  call void @llvm.dbg.declare(metadata !{i64** %3}, metadata !703), !dbg !704
  store i32 %mode, i32* %4, align 4
  call void @llvm.dbg.declare(metadata !{i32* %4}, metadata !705), !dbg !706
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue* %v}, metadata !707), !dbg !708
  br label %5, !dbg !709

; <label>:5                                       ; preds = %106, %0
  %6 = load %struct.lua_TValue** %2, align 4, !dbg !710
  %7 = getelementptr inbounds %struct.lua_TValue* %6, i32 0, i32 1, !dbg !710
  %8 = load i32* %7, align 4, !dbg !710
  %9 = icmp eq i32 %8, 3, !dbg !710
  br i1 %9, label %10, label %45, !dbg !710

; <label>:10                                      ; preds = %5
  call void @llvm.dbg.declare(metadata !{double* %n}, metadata !712), !dbg !714
  %11 = load %struct.lua_TValue** %2, align 4, !dbg !715
  %12 = getelementptr inbounds %struct.lua_TValue* %11, i32 0, i32 0, !dbg !715
  %13 = bitcast %union.Value* %12 to double*, !dbg !715
  %14 = load double* %13, align 8, !dbg !715
  store double %14, double* %n, align 8, !dbg !715
  call void @llvm.dbg.declare(metadata !{double* %f}, metadata !716), !dbg !717
  %15 = load double* %n, align 8, !dbg !718
  %16 = call double @floor(double %15) #1, !dbg !718
  store double %16, double* %f, align 8, !dbg !718
  %17 = load double* %n, align 8, !dbg !719
  %18 = load double* %f, align 8, !dbg !719
  %19 = fcmp une double %17, %18, !dbg !719
  br i1 %19, label %20, label %32, !dbg !719

; <label>:20                                      ; preds = %10
  %21 = load i32* %4, align 4, !dbg !721
  %22 = icmp eq i32 %21, 0, !dbg !721
  br i1 %22, label %23, label %24, !dbg !721

; <label>:23                                      ; preds = %20
  store i32 0, i32* %1, !dbg !724
  br label %110, !dbg !724

; <label>:24                                      ; preds = %20
  %25 = load i32* %4, align 4, !dbg !726
  %26 = icmp sgt i32 %25, 1, !dbg !726
  br i1 %26, label %27, label %30, !dbg !726

; <label>:27                                      ; preds = %24
  %28 = load double* %f, align 8, !dbg !728
  %29 = fadd double %28, 1.000000e+00, !dbg !728
  store double %29, double* %f, align 8, !dbg !728
  br label %30, !dbg !728

; <label>:30                                      ; preds = %27, %24
  br label %31

; <label>:31                                      ; preds = %30
  br label %32, !dbg !729

; <label>:32                                      ; preds = %31, %10
  %33 = load double* %f, align 8, !dbg !730
  %34 = fcmp oge double %33, 0xC3E0000000000000, !dbg !730
  br i1 %34, label %35, label %42, !dbg !730

; <label>:35                                      ; preds = %32
  %36 = load double* %f, align 8, !dbg !731
  %37 = fcmp olt double %36, 0x43E0000000000000, !dbg !731
  br i1 %37, label %38, label %42, !dbg !731

; <label>:38                                      ; preds = %35
  %39 = load double* %f, align 8, !dbg !733
  %40 = fptosi double %39 to i64, !dbg !733
  %41 = load i64** %3, align 4, !dbg !733
  store i64 %40, i64* %41, align 8, !dbg !733
  br label %42

; <label>:42                                      ; preds = %38, %35, %32
  %43 = phi i1 [ false, %35 ], [ false, %32 ], [ true, %38 ]
  %44 = zext i1 %43 to i32, !dbg !735
  store i32 %44, i32* %1, !dbg !735
  br label %110, !dbg !735

; <label>:45                                      ; preds = %5
  %46 = load %struct.lua_TValue** %2, align 4, !dbg !738
  %47 = getelementptr inbounds %struct.lua_TValue* %46, i32 0, i32 1, !dbg !738
  %48 = load i32* %47, align 4, !dbg !738
  %49 = icmp eq i32 %48, 19, !dbg !738
  br i1 %49, label %50, label %56, !dbg !738

; <label>:50                                      ; preds = %45
  %51 = load %struct.lua_TValue** %2, align 4, !dbg !740
  %52 = getelementptr inbounds %struct.lua_TValue* %51, i32 0, i32 0, !dbg !740
  %53 = bitcast %union.Value* %52 to i64*, !dbg !740
  %54 = load i64* %53, align 8, !dbg !740
  %55 = load i64** %3, align 4, !dbg !740
  store i64 %54, i64* %55, align 8, !dbg !740
  store i32 1, i32* %1, !dbg !742
  br label %110, !dbg !742

; <label>:56                                      ; preds = %45
  %57 = load %struct.lua_TValue** %2, align 4, !dbg !743
  %58 = getelementptr inbounds %struct.lua_TValue* %57, i32 0, i32 1, !dbg !743
  %59 = load i32* %58, align 4, !dbg !743
  %60 = and i32 %59, 15, !dbg !743
  %61 = icmp eq i32 %60, 4, !dbg !743
  br i1 %61, label %62, label %107, !dbg !743

; <label>:62                                      ; preds = %56
  %63 = load %struct.lua_TValue** %2, align 4, !dbg !745
  %64 = getelementptr inbounds %struct.lua_TValue* %63, i32 0, i32 0, !dbg !745
  %65 = bitcast %union.Value* %64 to %struct.GCObject**, !dbg !745
  %66 = load %struct.GCObject** %65, align 4, !dbg !745
  %67 = bitcast %struct.GCObject* %66 to %union.GCUnion*, !dbg !745
  %68 = bitcast %union.GCUnion* %67 to %struct.TString*, !dbg !745
  %69 = bitcast %struct.TString* %68 to i8*, !dbg !745
  %70 = getelementptr inbounds i8* %69, i32 16, !dbg !745
  %71 = call i32 @luaO_str2num(i8* %70, %struct.lua_TValue* %v), !dbg !745
  %72 = load %struct.lua_TValue** %2, align 4, !dbg !745
  %73 = getelementptr inbounds %struct.lua_TValue* %72, i32 0, i32 0, !dbg !745
  %74 = bitcast %union.Value* %73 to %struct.GCObject**, !dbg !745
  %75 = load %struct.GCObject** %74, align 4, !dbg !745
  %76 = bitcast %struct.GCObject* %75 to %union.GCUnion*, !dbg !745
  %77 = bitcast %union.GCUnion* %76 to %struct.TString*, !dbg !745
  %78 = getelementptr inbounds %struct.TString* %77, i32 0, i32 1, !dbg !745
  %79 = load i8* %78, align 1, !dbg !745
  %80 = zext i8 %79 to i32, !dbg !745
  %81 = icmp eq i32 %80, 4, !dbg !745
  br i1 %81, label %82, label %92, !dbg !745

; <label>:82                                      ; preds = %62
  %83 = load %struct.lua_TValue** %2, align 4, !dbg !746
  %84 = getelementptr inbounds %struct.lua_TValue* %83, i32 0, i32 0, !dbg !746
  %85 = bitcast %union.Value* %84 to %struct.GCObject**, !dbg !746
  %86 = load %struct.GCObject** %85, align 4, !dbg !746
  %87 = bitcast %struct.GCObject* %86 to %union.GCUnion*, !dbg !746
  %88 = bitcast %union.GCUnion* %87 to %struct.TString*, !dbg !746
  %89 = getelementptr inbounds %struct.TString* %88, i32 0, i32 4, !dbg !746
  %90 = load i8* %89, align 1, !dbg !746
  %91 = zext i8 %90 to i32, !dbg !746
  br label %102, !dbg !746

; <label>:92                                      ; preds = %62
  %93 = load %struct.lua_TValue** %2, align 4, !dbg !748
  %94 = getelementptr inbounds %struct.lua_TValue* %93, i32 0, i32 0, !dbg !748
  %95 = bitcast %union.Value* %94 to %struct.GCObject**, !dbg !748
  %96 = load %struct.GCObject** %95, align 4, !dbg !748
  %97 = bitcast %struct.GCObject* %96 to %union.GCUnion*, !dbg !748
  %98 = bitcast %union.GCUnion* %97 to %struct.TString*, !dbg !748
  %99 = getelementptr inbounds %struct.TString* %98, i32 0, i32 6, !dbg !748
  %100 = bitcast %union.anon.3* %99 to i32*, !dbg !748
  %101 = load i32* %100, align 4, !dbg !748
  br label %102, !dbg !748

; <label>:102                                     ; preds = %92, %82
  %103 = phi i32 [ %91, %82 ], [ %101, %92 ], !dbg !745
  %104 = add i32 %103, 1, !dbg !750
  %105 = icmp eq i32 %71, %104, !dbg !750
  br i1 %105, label %106, label %107, !dbg !750

; <label>:106                                     ; preds = %102
  store %struct.lua_TValue* %v, %struct.lua_TValue** %2, align 4, !dbg !753
  br label %5, !dbg !755

; <label>:107                                     ; preds = %102, %56
  br label %108

; <label>:108                                     ; preds = %107
  br label %109

; <label>:109                                     ; preds = %108
  store i32 0, i32* %1, !dbg !756
  br label %110, !dbg !756

; <label>:110                                     ; preds = %109, %50, %42, %23
  %111 = load i32* %1, !dbg !757
  ret i32 %111, !dbg !757
}

; Function Attrs: nounwind readnone
declare double @floor(double) #3

; Function Attrs: nounwind
define hidden void @luaV_finishget(%struct.lua_State* %L, %struct.lua_TValue* %t, %struct.lua_TValue* %key, %struct.lua_TValue* %val, %struct.lua_TValue* %slot) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca %struct.lua_TValue*, align 4
  %3 = alloca %struct.lua_TValue*, align 4
  %4 = alloca %struct.lua_TValue*, align 4
  %5 = alloca %struct.lua_TValue*, align 4
  %loop = alloca i32, align 4
  %tm = alloca %struct.lua_TValue*, align 4
  %io1 = alloca %struct.lua_TValue*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !758), !dbg !759
  store %struct.lua_TValue* %t, %struct.lua_TValue** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %2}, metadata !760), !dbg !761
  store %struct.lua_TValue* %key, %struct.lua_TValue** %3, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %3}, metadata !762), !dbg !763
  store %struct.lua_TValue* %val, %struct.lua_TValue** %4, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %4}, metadata !764), !dbg !765
  store %struct.lua_TValue* %slot, %struct.lua_TValue** %5, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %5}, metadata !766), !dbg !767
  call void @llvm.dbg.declare(metadata !{i32* %loop}, metadata !768), !dbg !769
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %tm}, metadata !770), !dbg !771
  store i32 0, i32* %loop, align 4, !dbg !772
  br label %6, !dbg !772

; <label>:6                                       ; preds = %117, %0
  %7 = load i32* %loop, align 4, !dbg !774
  %8 = icmp slt i32 %7, 2000, !dbg !774
  br i1 %8, label %9, label %120, !dbg !774

; <label>:9                                       ; preds = %6
  %10 = load %struct.lua_TValue** %5, align 4, !dbg !777
  %11 = icmp eq %struct.lua_TValue* %10, null, !dbg !777
  br i1 %11, label %12, label %24, !dbg !777

; <label>:12                                      ; preds = %9
  %13 = load %struct.lua_State** %1, align 4, !dbg !780
  %14 = load %struct.lua_TValue** %2, align 4, !dbg !780
  %15 = call %struct.lua_TValue* @luaT_gettmbyobj(%struct.lua_State* %13, %struct.lua_TValue* %14, i32 0), !dbg !780
  store %struct.lua_TValue* %15, %struct.lua_TValue** %tm, align 4, !dbg !780
  %16 = load %struct.lua_TValue** %tm, align 4, !dbg !782
  %17 = getelementptr inbounds %struct.lua_TValue* %16, i32 0, i32 1, !dbg !782
  %18 = load i32* %17, align 4, !dbg !782
  %19 = icmp eq i32 %18, 0, !dbg !782
  br i1 %19, label %20, label %23, !dbg !782

; <label>:20                                      ; preds = %12
  %21 = load %struct.lua_State** %1, align 4, !dbg !784
  %22 = load %struct.lua_TValue** %2, align 4, !dbg !784
  call void @luaG_typeerror(%struct.lua_State* %21, %struct.lua_TValue* %22, i8* getelementptr inbounds ([6 x i8]* @.str, i32 0, i32 0)) #7, !dbg !784
  unreachable, !dbg !784

; <label>:23                                      ; preds = %12
  br label %76, !dbg !785

; <label>:24                                      ; preds = %9
  %25 = load %struct.lua_TValue** %2, align 4, !dbg !786
  %26 = getelementptr inbounds %struct.lua_TValue* %25, i32 0, i32 0, !dbg !786
  %27 = bitcast %union.Value* %26 to %struct.GCObject**, !dbg !786
  %28 = load %struct.GCObject** %27, align 4, !dbg !786
  %29 = bitcast %struct.GCObject* %28 to %union.GCUnion*, !dbg !786
  %30 = bitcast %union.GCUnion* %29 to %struct.Table*, !dbg !786
  %31 = getelementptr inbounds %struct.Table* %30, i32 0, i32 9, !dbg !786
  %32 = load %struct.Table** %31, align 4, !dbg !786
  %33 = icmp eq %struct.Table* %32, null, !dbg !786
  br i1 %33, label %34, label %35, !dbg !786

; <label>:34                                      ; preds = %24
  br label %68, !dbg !788

; <label>:35                                      ; preds = %24
  %36 = load %struct.lua_TValue** %2, align 4, !dbg !790
  %37 = getelementptr inbounds %struct.lua_TValue* %36, i32 0, i32 0, !dbg !790
  %38 = bitcast %union.Value* %37 to %struct.GCObject**, !dbg !790
  %39 = load %struct.GCObject** %38, align 4, !dbg !790
  %40 = bitcast %struct.GCObject* %39 to %union.GCUnion*, !dbg !790
  %41 = bitcast %union.GCUnion* %40 to %struct.Table*, !dbg !790
  %42 = getelementptr inbounds %struct.Table* %41, i32 0, i32 9, !dbg !790
  %43 = load %struct.Table** %42, align 4, !dbg !790
  %44 = getelementptr inbounds %struct.Table* %43, i32 0, i32 3, !dbg !790
  %45 = load i8* %44, align 1, !dbg !790
  %46 = zext i8 %45 to i32, !dbg !790
  %47 = and i32 %46, 1, !dbg !790
  %48 = icmp ne i32 %47, 0, !dbg !790
  br i1 %48, label %49, label %50, !dbg !790

; <label>:49                                      ; preds = %35
  br label %66, !dbg !792

; <label>:50                                      ; preds = %35
  %51 = load %struct.lua_TValue** %2, align 4, !dbg !794
  %52 = getelementptr inbounds %struct.lua_TValue* %51, i32 0, i32 0, !dbg !794
  %53 = bitcast %union.Value* %52 to %struct.GCObject**, !dbg !794
  %54 = load %struct.GCObject** %53, align 4, !dbg !794
  %55 = bitcast %struct.GCObject* %54 to %union.GCUnion*, !dbg !794
  %56 = bitcast %union.GCUnion* %55 to %struct.Table*, !dbg !794
  %57 = getelementptr inbounds %struct.Table* %56, i32 0, i32 9, !dbg !794
  %58 = load %struct.Table** %57, align 4, !dbg !794
  %59 = load %struct.lua_State** %1, align 4, !dbg !794
  %60 = getelementptr inbounds %struct.lua_State* %59, i32 0, i32 6, !dbg !794
  %61 = load %struct.global_State** %60, align 4, !dbg !794
  %62 = getelementptr inbounds %struct.global_State* %61, i32 0, i32 31, !dbg !794
  %63 = getelementptr inbounds [24 x %struct.TString*]* %62, i32 0, i32 0, !dbg !794
  %64 = load %struct.TString** %63, align 4, !dbg !794
  %65 = call %struct.lua_TValue* @luaT_gettm(%struct.Table* %58, i32 0, %struct.TString* %64), !dbg !794
  br label %66, !dbg !794

; <label>:66                                      ; preds = %50, %49
  %67 = phi %struct.lua_TValue* [ null, %49 ], [ %65, %50 ], !dbg !796
  br label %68, !dbg !797

; <label>:68                                      ; preds = %66, %34
  %69 = phi %struct.lua_TValue* [ null, %34 ], [ %67, %66 ], !dbg !796
  store %struct.lua_TValue* %69, %struct.lua_TValue** %tm, align 4, !dbg !800
  %70 = load %struct.lua_TValue** %tm, align 4, !dbg !803
  %71 = icmp eq %struct.lua_TValue* %70, null, !dbg !803
  br i1 %71, label %72, label %75, !dbg !803

; <label>:72                                      ; preds = %68
  %73 = load %struct.lua_TValue** %4, align 4, !dbg !805
  %74 = getelementptr inbounds %struct.lua_TValue* %73, i32 0, i32 1, !dbg !805
  store i32 0, i32* %74, align 4, !dbg !805
  br label %122, !dbg !807

; <label>:75                                      ; preds = %68
  br label %76

; <label>:76                                      ; preds = %75, %23
  %77 = load %struct.lua_TValue** %tm, align 4, !dbg !808
  %78 = getelementptr inbounds %struct.lua_TValue* %77, i32 0, i32 1, !dbg !808
  %79 = load i32* %78, align 4, !dbg !808
  %80 = and i32 %79, 15, !dbg !808
  %81 = icmp eq i32 %80, 6, !dbg !808
  br i1 %81, label %82, label %88, !dbg !808

; <label>:82                                      ; preds = %76
  %83 = load %struct.lua_State** %1, align 4, !dbg !810
  %84 = load %struct.lua_TValue** %tm, align 4, !dbg !810
  %85 = load %struct.lua_TValue** %2, align 4, !dbg !810
  %86 = load %struct.lua_TValue** %3, align 4, !dbg !810
  %87 = load %struct.lua_TValue** %4, align 4, !dbg !810
  call void @luaT_callTM(%struct.lua_State* %83, %struct.lua_TValue* %84, %struct.lua_TValue* %85, %struct.lua_TValue* %86, %struct.lua_TValue* %87, i32 1), !dbg !810
  br label %122, !dbg !812

; <label>:88                                      ; preds = %76
  %89 = load %struct.lua_TValue** %tm, align 4, !dbg !813
  store %struct.lua_TValue* %89, %struct.lua_TValue** %2, align 4, !dbg !813
  %90 = load %struct.lua_TValue** %2, align 4, !dbg !814
  %91 = getelementptr inbounds %struct.lua_TValue* %90, i32 0, i32 1, !dbg !814
  %92 = load i32* %91, align 4, !dbg !814
  %93 = icmp eq i32 %92, 69, !dbg !814
  br i1 %93, label %95, label %94, !dbg !814

; <label>:94                                      ; preds = %88
  store %struct.lua_TValue* null, %struct.lua_TValue** %5, align 4, !dbg !816
  br i1 false, label %109, label %116, !dbg !816

; <label>:95                                      ; preds = %88
  %96 = load %struct.lua_TValue** %2, align 4, !dbg !818
  %97 = getelementptr inbounds %struct.lua_TValue* %96, i32 0, i32 0, !dbg !818
  %98 = bitcast %union.Value* %97 to %struct.GCObject**, !dbg !818
  %99 = load %struct.GCObject** %98, align 4, !dbg !818
  %100 = bitcast %struct.GCObject* %99 to %union.GCUnion*, !dbg !818
  %101 = bitcast %union.GCUnion* %100 to %struct.Table*, !dbg !818
  %102 = load %struct.lua_TValue** %3, align 4, !dbg !818
  %103 = call %struct.lua_TValue* @luaH_get(%struct.Table* %101, %struct.lua_TValue* %102), !dbg !818
  store %struct.lua_TValue* %103, %struct.lua_TValue** %5, align 4, !dbg !818
  %104 = load %struct.lua_TValue** %5, align 4, !dbg !818
  %105 = getelementptr inbounds %struct.lua_TValue* %104, i32 0, i32 1, !dbg !818
  %106 = load i32* %105, align 4, !dbg !818
  %107 = icmp eq i32 %106, 0, !dbg !818
  %108 = xor i1 %107, true, !dbg !818
  br i1 %108, label %109, label %116, !dbg !818

; <label>:109                                     ; preds = %95, %94
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %io1}, metadata !820), !dbg !823
  %110 = load %struct.lua_TValue** %4, align 4, !dbg !823
  store %struct.lua_TValue* %110, %struct.lua_TValue** %io1, align 4, !dbg !823
  %111 = load %struct.lua_TValue** %io1, align 4, !dbg !823
  %112 = load %struct.lua_TValue** %5, align 4, !dbg !823
  %113 = bitcast %struct.lua_TValue* %111 to i8*, !dbg !823
  %114 = bitcast %struct.lua_TValue* %112 to i8*, !dbg !823
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %113, i8* %114, i32 16, i32 8, i1 false), !dbg !823
  %115 = load %struct.lua_State** %1, align 4, !dbg !823
  br label %122, !dbg !824

; <label>:116                                     ; preds = %95, %94
  br label %117, !dbg !825

; <label>:117                                     ; preds = %116
  %118 = load i32* %loop, align 4, !dbg !826
  %119 = add nsw i32 %118, 1, !dbg !826
  store i32 %119, i32* %loop, align 4, !dbg !826
  br label %6, !dbg !826

; <label>:120                                     ; preds = %6
  %121 = load %struct.lua_State** %1, align 4, !dbg !827
  call void (%struct.lua_State*, i8*, ...)* @luaG_runerror(%struct.lua_State* %121, i8* getelementptr inbounds ([40 x i8]* @.str1, i32 0, i32 0)) #7, !dbg !827
  unreachable, !dbg !827

; <label>:122                                     ; preds = %109, %82, %72
  ret void, !dbg !828
}

declare hidden %struct.lua_TValue* @luaT_gettmbyobj(%struct.lua_State*, %struct.lua_TValue*, i32) #2

; Function Attrs: noreturn
declare hidden void @luaG_typeerror(%struct.lua_State*, %struct.lua_TValue*, i8*) #4

declare hidden %struct.lua_TValue* @luaT_gettm(%struct.Table*, i32, %struct.TString*) #2

declare hidden void @luaT_callTM(%struct.lua_State*, %struct.lua_TValue*, %struct.lua_TValue*, %struct.lua_TValue*, %struct.lua_TValue*, i32) #2

declare hidden %struct.lua_TValue* @luaH_get(%struct.Table*, %struct.lua_TValue*) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture, i8* nocapture readonly, i32, i32, i1) #5

; Function Attrs: noreturn
declare hidden void @luaG_runerror(%struct.lua_State*, i8*, ...) #4

; Function Attrs: nounwind
define hidden void @luaV_finishset(%struct.lua_State* %L, %struct.lua_TValue* %t, %struct.lua_TValue* %key, %struct.lua_TValue* %val, %struct.lua_TValue* %slot) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca %struct.lua_TValue*, align 4
  %3 = alloca %struct.lua_TValue*, align 4
  %4 = alloca %struct.lua_TValue*, align 4
  %5 = alloca %struct.lua_TValue*, align 4
  %loop = alloca i32, align 4
  %tm = alloca %struct.lua_TValue*, align 4
  %h = alloca %struct.Table*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !829), !dbg !830
  store %struct.lua_TValue* %t, %struct.lua_TValue** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %2}, metadata !831), !dbg !832
  store %struct.lua_TValue* %key, %struct.lua_TValue** %3, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %3}, metadata !833), !dbg !834
  store %struct.lua_TValue* %val, %struct.lua_TValue** %4, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %4}, metadata !835), !dbg !836
  store %struct.lua_TValue* %slot, %struct.lua_TValue** %5, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %5}, metadata !837), !dbg !838
  call void @llvm.dbg.declare(metadata !{i32* %loop}, metadata !839), !dbg !840
  store i32 0, i32* %loop, align 4, !dbg !841
  br label %6, !dbg !841

; <label>:6                                       ; preds = %187, %0
  %7 = load i32* %loop, align 4, !dbg !843
  %8 = icmp slt i32 %7, 2000, !dbg !843
  br i1 %8, label %9, label %190, !dbg !843

; <label>:9                                       ; preds = %6
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %tm}, metadata !846), !dbg !848
  %10 = load %struct.lua_TValue** %5, align 4, !dbg !849
  %11 = icmp ne %struct.lua_TValue* %10, null, !dbg !849
  br i1 %11, label %12, label %95, !dbg !849

; <label>:12                                      ; preds = %9
  call void @llvm.dbg.declare(metadata !{%struct.Table** %h}, metadata !851), !dbg !855
  %13 = load %struct.lua_TValue** %2, align 4, !dbg !856
  %14 = getelementptr inbounds %struct.lua_TValue* %13, i32 0, i32 0, !dbg !856
  %15 = bitcast %union.Value* %14 to %struct.GCObject**, !dbg !856
  %16 = load %struct.GCObject** %15, align 4, !dbg !856
  %17 = bitcast %struct.GCObject* %16 to %union.GCUnion*, !dbg !856
  %18 = bitcast %union.GCUnion* %17 to %struct.Table*, !dbg !856
  store %struct.Table* %18, %struct.Table** %h, align 4, !dbg !856
  %19 = load %struct.Table** %h, align 4, !dbg !857
  %20 = getelementptr inbounds %struct.Table* %19, i32 0, i32 9, !dbg !857
  %21 = load %struct.Table** %20, align 4, !dbg !857
  %22 = icmp eq %struct.Table* %21, null, !dbg !857
  br i1 %22, label %23, label %24, !dbg !857

; <label>:23                                      ; preds = %12
  br label %47, !dbg !858

; <label>:24                                      ; preds = %12
  %25 = load %struct.Table** %h, align 4, !dbg !860
  %26 = getelementptr inbounds %struct.Table* %25, i32 0, i32 9, !dbg !860
  %27 = load %struct.Table** %26, align 4, !dbg !860
  %28 = getelementptr inbounds %struct.Table* %27, i32 0, i32 3, !dbg !860
  %29 = load i8* %28, align 1, !dbg !860
  %30 = zext i8 %29 to i32, !dbg !860
  %31 = and i32 %30, 2, !dbg !860
  %32 = icmp ne i32 %31, 0, !dbg !860
  br i1 %32, label %33, label %34, !dbg !860

; <label>:33                                      ; preds = %24
  br label %45, !dbg !862

; <label>:34                                      ; preds = %24
  %35 = load %struct.Table** %h, align 4, !dbg !864
  %36 = getelementptr inbounds %struct.Table* %35, i32 0, i32 9, !dbg !864
  %37 = load %struct.Table** %36, align 4, !dbg !864
  %38 = load %struct.lua_State** %1, align 4, !dbg !864
  %39 = getelementptr inbounds %struct.lua_State* %38, i32 0, i32 6, !dbg !864
  %40 = load %struct.global_State** %39, align 4, !dbg !864
  %41 = getelementptr inbounds %struct.global_State* %40, i32 0, i32 31, !dbg !864
  %42 = getelementptr inbounds [24 x %struct.TString*]* %41, i32 0, i32 1, !dbg !864
  %43 = load %struct.TString** %42, align 4, !dbg !864
  %44 = call %struct.lua_TValue* @luaT_gettm(%struct.Table* %37, i32 1, %struct.TString* %43), !dbg !864
  br label %45, !dbg !864

; <label>:45                                      ; preds = %34, %33
  %46 = phi %struct.lua_TValue* [ null, %33 ], [ %44, %34 ], !dbg !866
  br label %47, !dbg !867

; <label>:47                                      ; preds = %45, %23
  %48 = phi %struct.lua_TValue* [ null, %23 ], [ %46, %45 ], !dbg !866
  store %struct.lua_TValue* %48, %struct.lua_TValue** %tm, align 4, !dbg !870
  %49 = load %struct.lua_TValue** %tm, align 4, !dbg !873
  %50 = icmp eq %struct.lua_TValue* %49, null, !dbg !873
  br i1 %50, label %51, label %94, !dbg !873

; <label>:51                                      ; preds = %47
  %52 = load %struct.lua_TValue** %5, align 4, !dbg !875
  %53 = icmp eq %struct.lua_TValue* %52, @luaO_nilobject_, !dbg !875
  br i1 %53, label %54, label %59, !dbg !875

; <label>:54                                      ; preds = %51
  %55 = load %struct.lua_State** %1, align 4, !dbg !878
  %56 = load %struct.Table** %h, align 4, !dbg !878
  %57 = load %struct.lua_TValue** %3, align 4, !dbg !878
  %58 = call %struct.lua_TValue* @luaH_newkey(%struct.lua_State* %55, %struct.Table* %56, %struct.lua_TValue* %57), !dbg !878
  store %struct.lua_TValue* %58, %struct.lua_TValue** %5, align 4, !dbg !878
  br label %59, !dbg !878

; <label>:59                                      ; preds = %54, %51
  %60 = load %struct.lua_State** %1, align 4, !dbg !879
  %61 = load %struct.lua_TValue** %5, align 4, !dbg !879
  %62 = load %struct.lua_TValue** %4, align 4, !dbg !879
  %63 = bitcast %struct.lua_TValue* %61 to i8*, !dbg !879
  %64 = bitcast %struct.lua_TValue* %62 to i8*, !dbg !879
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %63, i8* %64, i32 16, i32 8, i1 false), !dbg !879
  %65 = load %struct.Table** %h, align 4, !dbg !880
  %66 = getelementptr inbounds %struct.Table* %65, i32 0, i32 3, !dbg !880
  store i8 0, i8* %66, align 1, !dbg !880
  %67 = load %struct.lua_TValue** %4, align 4, !dbg !881
  %68 = getelementptr inbounds %struct.lua_TValue* %67, i32 0, i32 1, !dbg !881
  %69 = load i32* %68, align 4, !dbg !881
  %70 = and i32 %69, 64, !dbg !881
  %71 = icmp ne i32 %70, 0, !dbg !881
  br i1 %71, label %72, label %92, !dbg !881

; <label>:72                                      ; preds = %59
  %73 = load %struct.Table** %h, align 4, !dbg !882
  %74 = getelementptr inbounds %struct.Table* %73, i32 0, i32 2, !dbg !882
  %75 = load i8* %74, align 1, !dbg !882
  %76 = zext i8 %75 to i32, !dbg !882
  %77 = and i32 %76, 4, !dbg !882
  %78 = icmp ne i32 %77, 0, !dbg !882
  br i1 %78, label %79, label %92, !dbg !882

; <label>:79                                      ; preds = %72
  %80 = load %struct.lua_TValue** %4, align 4, !dbg !884
  %81 = getelementptr inbounds %struct.lua_TValue* %80, i32 0, i32 0, !dbg !884
  %82 = bitcast %union.Value* %81 to %struct.GCObject**, !dbg !884
  %83 = load %struct.GCObject** %82, align 4, !dbg !884
  %84 = getelementptr inbounds %struct.GCObject* %83, i32 0, i32 2, !dbg !884
  %85 = load i8* %84, align 1, !dbg !884
  %86 = zext i8 %85 to i32, !dbg !884
  %87 = and i32 %86, 3, !dbg !884
  %88 = icmp ne i32 %87, 0, !dbg !884
  br i1 %88, label %89, label %92, !dbg !884

; <label>:89                                      ; preds = %79
  %90 = load %struct.lua_State** %1, align 4, !dbg !886
  %91 = load %struct.Table** %h, align 4, !dbg !886
  call void @luaC_barrierback_(%struct.lua_State* %90, %struct.Table* %91), !dbg !886
  br label %93, !dbg !886

; <label>:92                                      ; preds = %79, %72, %59
  br label %93, !dbg !888

; <label>:93                                      ; preds = %92, %89
  br label %192, !dbg !892

; <label>:94                                      ; preds = %47
  br label %106, !dbg !893

; <label>:95                                      ; preds = %9
  %96 = load %struct.lua_State** %1, align 4, !dbg !894
  %97 = load %struct.lua_TValue** %2, align 4, !dbg !894
  %98 = call %struct.lua_TValue* @luaT_gettmbyobj(%struct.lua_State* %96, %struct.lua_TValue* %97, i32 1), !dbg !894
  store %struct.lua_TValue* %98, %struct.lua_TValue** %tm, align 4, !dbg !894
  %99 = getelementptr inbounds %struct.lua_TValue* %98, i32 0, i32 1, !dbg !894
  %100 = load i32* %99, align 4, !dbg !894
  %101 = icmp eq i32 %100, 0, !dbg !894
  br i1 %101, label %102, label %105, !dbg !894

; <label>:102                                     ; preds = %95
  %103 = load %struct.lua_State** %1, align 4, !dbg !897
  %104 = load %struct.lua_TValue** %2, align 4, !dbg !897
  call void @luaG_typeerror(%struct.lua_State* %103, %struct.lua_TValue* %104, i8* getelementptr inbounds ([6 x i8]* @.str, i32 0, i32 0)) #7, !dbg !897
  unreachable, !dbg !897

; <label>:105                                     ; preds = %95
  br label %106

; <label>:106                                     ; preds = %105, %94
  %107 = load %struct.lua_TValue** %tm, align 4, !dbg !898
  %108 = getelementptr inbounds %struct.lua_TValue* %107, i32 0, i32 1, !dbg !898
  %109 = load i32* %108, align 4, !dbg !898
  %110 = and i32 %109, 15, !dbg !898
  %111 = icmp eq i32 %110, 6, !dbg !898
  br i1 %111, label %112, label %118, !dbg !898

; <label>:112                                     ; preds = %106
  %113 = load %struct.lua_State** %1, align 4, !dbg !900
  %114 = load %struct.lua_TValue** %tm, align 4, !dbg !900
  %115 = load %struct.lua_TValue** %2, align 4, !dbg !900
  %116 = load %struct.lua_TValue** %3, align 4, !dbg !900
  %117 = load %struct.lua_TValue** %4, align 4, !dbg !900
  call void @luaT_callTM(%struct.lua_State* %113, %struct.lua_TValue* %114, %struct.lua_TValue* %115, %struct.lua_TValue* %116, %struct.lua_TValue* %117, i32 0), !dbg !900
  br label %192, !dbg !902

; <label>:118                                     ; preds = %106
  %119 = load %struct.lua_TValue** %tm, align 4, !dbg !903
  store %struct.lua_TValue* %119, %struct.lua_TValue** %2, align 4, !dbg !903
  %120 = load %struct.lua_TValue** %2, align 4, !dbg !904
  %121 = getelementptr inbounds %struct.lua_TValue* %120, i32 0, i32 1, !dbg !904
  %122 = load i32* %121, align 4, !dbg !904
  %123 = icmp eq i32 %122, 69, !dbg !904
  br i1 %123, label %125, label %124, !dbg !904

; <label>:124                                     ; preds = %118
  store %struct.lua_TValue* null, %struct.lua_TValue** %5, align 4, !dbg !906
  br i1 false, label %185, label %186, !dbg !906

; <label>:125                                     ; preds = %118
  %126 = load %struct.lua_TValue** %2, align 4, !dbg !908
  %127 = getelementptr inbounds %struct.lua_TValue* %126, i32 0, i32 0, !dbg !908
  %128 = bitcast %union.Value* %127 to %struct.GCObject**, !dbg !908
  %129 = load %struct.GCObject** %128, align 4, !dbg !908
  %130 = bitcast %struct.GCObject* %129 to %union.GCUnion*, !dbg !908
  %131 = bitcast %union.GCUnion* %130 to %struct.Table*, !dbg !908
  %132 = load %struct.lua_TValue** %3, align 4, !dbg !908
  %133 = call %struct.lua_TValue* @luaH_get(%struct.Table* %131, %struct.lua_TValue* %132), !dbg !908
  store %struct.lua_TValue* %133, %struct.lua_TValue** %5, align 4, !dbg !908
  %134 = load %struct.lua_TValue** %5, align 4, !dbg !908
  %135 = getelementptr inbounds %struct.lua_TValue* %134, i32 0, i32 1, !dbg !908
  %136 = load i32* %135, align 4, !dbg !908
  %137 = icmp eq i32 %136, 0, !dbg !908
  br i1 %137, label %138, label %139, !dbg !908

; <label>:138                                     ; preds = %125
  br label %182, !dbg !910

; <label>:139                                     ; preds = %125
  %140 = load %struct.lua_TValue** %4, align 4, !dbg !912
  %141 = getelementptr inbounds %struct.lua_TValue* %140, i32 0, i32 1, !dbg !912
  %142 = load i32* %141, align 4, !dbg !912
  %143 = and i32 %142, 64, !dbg !912
  %144 = icmp ne i32 %143, 0, !dbg !912
  br i1 %144, label %145, label %175, !dbg !912

; <label>:145                                     ; preds = %139
  %146 = load %struct.lua_TValue** %2, align 4, !dbg !914
  %147 = getelementptr inbounds %struct.lua_TValue* %146, i32 0, i32 0, !dbg !914
  %148 = bitcast %union.Value* %147 to %struct.GCObject**, !dbg !914
  %149 = load %struct.GCObject** %148, align 4, !dbg !914
  %150 = bitcast %struct.GCObject* %149 to %union.GCUnion*, !dbg !914
  %151 = bitcast %union.GCUnion* %150 to %struct.Table*, !dbg !914
  %152 = getelementptr inbounds %struct.Table* %151, i32 0, i32 2, !dbg !914
  %153 = load i8* %152, align 1, !dbg !914
  %154 = zext i8 %153 to i32, !dbg !914
  %155 = and i32 %154, 4, !dbg !914
  %156 = icmp ne i32 %155, 0, !dbg !914
  br i1 %156, label %157, label %175, !dbg !914

; <label>:157                                     ; preds = %145
  %158 = load %struct.lua_TValue** %4, align 4, !dbg !916
  %159 = getelementptr inbounds %struct.lua_TValue* %158, i32 0, i32 0, !dbg !916
  %160 = bitcast %union.Value* %159 to %struct.GCObject**, !dbg !916
  %161 = load %struct.GCObject** %160, align 4, !dbg !916
  %162 = getelementptr inbounds %struct.GCObject* %161, i32 0, i32 2, !dbg !916
  %163 = load i8* %162, align 1, !dbg !916
  %164 = zext i8 %163 to i32, !dbg !916
  %165 = and i32 %164, 3, !dbg !916
  %166 = icmp ne i32 %165, 0, !dbg !916
  br i1 %166, label %167, label %175, !dbg !916

; <label>:167                                     ; preds = %157
  %168 = load %struct.lua_State** %1, align 4, !dbg !918
  %169 = load %struct.lua_TValue** %2, align 4, !dbg !918
  %170 = getelementptr inbounds %struct.lua_TValue* %169, i32 0, i32 0, !dbg !918
  %171 = bitcast %union.Value* %170 to %struct.GCObject**, !dbg !918
  %172 = load %struct.GCObject** %171, align 4, !dbg !918
  %173 = bitcast %struct.GCObject* %172 to %union.GCUnion*, !dbg !918
  %174 = bitcast %union.GCUnion* %173 to %struct.Table*, !dbg !918
  call void @luaC_barrierback_(%struct.lua_State* %168, %struct.Table* %174), !dbg !918
  br label %176, !dbg !918

; <label>:175                                     ; preds = %157, %145, %139
  br label %176, !dbg !920

; <label>:176                                     ; preds = %175, %167
  %177 = load %struct.lua_State** %1, align 4, !dbg !924
  %178 = load %struct.lua_TValue** %5, align 4, !dbg !924
  %179 = load %struct.lua_TValue** %4, align 4, !dbg !924
  %180 = bitcast %struct.lua_TValue* %178 to i8*, !dbg !924
  %181 = bitcast %struct.lua_TValue* %179 to i8*, !dbg !924
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %180, i8* %181, i32 16, i32 8, i1 false), !dbg !924
  br label %182, !dbg !924

; <label>:182                                     ; preds = %176, %138
  %183 = phi i32 [ 0, %138 ], [ 1, %176 ], !dbg !904
  %184 = icmp ne i32 %183, 0, !dbg !927
  br i1 %184, label %185, label %186, !dbg !927

; <label>:185                                     ; preds = %182, %124
  br label %192, !dbg !930

; <label>:186                                     ; preds = %182, %124
  br label %187, !dbg !931

; <label>:187                                     ; preds = %186
  %188 = load i32* %loop, align 4, !dbg !932
  %189 = add nsw i32 %188, 1, !dbg !932
  store i32 %189, i32* %loop, align 4, !dbg !932
  br label %6, !dbg !932

; <label>:190                                     ; preds = %6
  %191 = load %struct.lua_State** %1, align 4, !dbg !933
  call void (%struct.lua_State*, i8*, ...)* @luaG_runerror(%struct.lua_State* %191, i8* getelementptr inbounds ([43 x i8]* @.str2, i32 0, i32 0)) #7, !dbg !933
  unreachable, !dbg !933

; <label>:192                                     ; preds = %185, %112, %93
  ret void, !dbg !934
}

declare hidden %struct.lua_TValue* @luaH_newkey(%struct.lua_State*, %struct.Table*, %struct.lua_TValue*) #2

declare hidden void @luaC_barrierback_(%struct.lua_State*, %struct.Table*) #2

; Function Attrs: nounwind
define hidden i32 @luaV_lessthan(%struct.lua_State* %L, %struct.lua_TValue* %l, %struct.lua_TValue* %r) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.lua_State*, align 4
  %3 = alloca %struct.lua_TValue*, align 4
  %4 = alloca %struct.lua_TValue*, align 4
  %res = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %2}, metadata !935), !dbg !936
  store %struct.lua_TValue* %l, %struct.lua_TValue** %3, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %3}, metadata !937), !dbg !938
  store %struct.lua_TValue* %r, %struct.lua_TValue** %4, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %4}, metadata !939), !dbg !940
  call void @llvm.dbg.declare(metadata !{i32* %res}, metadata !941), !dbg !942
  %5 = load %struct.lua_TValue** %3, align 4, !dbg !943
  %6 = getelementptr inbounds %struct.lua_TValue* %5, i32 0, i32 1, !dbg !943
  %7 = load i32* %6, align 4, !dbg !943
  %8 = and i32 %7, 15, !dbg !943
  %9 = icmp eq i32 %8, 3, !dbg !943
  br i1 %9, label %10, label %20, !dbg !943

; <label>:10                                      ; preds = %0
  %11 = load %struct.lua_TValue** %4, align 4, !dbg !945
  %12 = getelementptr inbounds %struct.lua_TValue* %11, i32 0, i32 1, !dbg !945
  %13 = load i32* %12, align 4, !dbg !945
  %14 = and i32 %13, 15, !dbg !945
  %15 = icmp eq i32 %14, 3, !dbg !945
  br i1 %15, label %16, label %20, !dbg !945

; <label>:16                                      ; preds = %10
  %17 = load %struct.lua_TValue** %3, align 4, !dbg !947
  %18 = load %struct.lua_TValue** %4, align 4, !dbg !947
  %19 = call i32 @LTnum(%struct.lua_TValue* %17, %struct.lua_TValue* %18), !dbg !947
  store i32 %19, i32* %1, !dbg !947
  br label %62, !dbg !947

; <label>:20                                      ; preds = %10, %0
  %21 = load %struct.lua_TValue** %3, align 4, !dbg !948
  %22 = getelementptr inbounds %struct.lua_TValue* %21, i32 0, i32 1, !dbg !948
  %23 = load i32* %22, align 4, !dbg !948
  %24 = and i32 %23, 15, !dbg !948
  %25 = icmp eq i32 %24, 4, !dbg !948
  br i1 %25, label %26, label %48, !dbg !948

; <label>:26                                      ; preds = %20
  %27 = load %struct.lua_TValue** %4, align 4, !dbg !950
  %28 = getelementptr inbounds %struct.lua_TValue* %27, i32 0, i32 1, !dbg !950
  %29 = load i32* %28, align 4, !dbg !950
  %30 = and i32 %29, 15, !dbg !950
  %31 = icmp eq i32 %30, 4, !dbg !950
  br i1 %31, label %32, label %48, !dbg !950

; <label>:32                                      ; preds = %26
  %33 = load %struct.lua_TValue** %3, align 4, !dbg !952
  %34 = getelementptr inbounds %struct.lua_TValue* %33, i32 0, i32 0, !dbg !952
  %35 = bitcast %union.Value* %34 to %struct.GCObject**, !dbg !952
  %36 = load %struct.GCObject** %35, align 4, !dbg !952
  %37 = bitcast %struct.GCObject* %36 to %union.GCUnion*, !dbg !952
  %38 = bitcast %union.GCUnion* %37 to %struct.TString*, !dbg !952
  %39 = load %struct.lua_TValue** %4, align 4, !dbg !952
  %40 = getelementptr inbounds %struct.lua_TValue* %39, i32 0, i32 0, !dbg !952
  %41 = bitcast %union.Value* %40 to %struct.GCObject**, !dbg !952
  %42 = load %struct.GCObject** %41, align 4, !dbg !952
  %43 = bitcast %struct.GCObject* %42 to %union.GCUnion*, !dbg !952
  %44 = bitcast %union.GCUnion* %43 to %struct.TString*, !dbg !952
  %45 = call i32 @l_strcmp(%struct.TString* %38, %struct.TString* %44), !dbg !952
  %46 = icmp slt i32 %45, 0, !dbg !952
  %47 = zext i1 %46 to i32, !dbg !952
  store i32 %47, i32* %1, !dbg !952
  br label %62, !dbg !952

; <label>:48                                      ; preds = %26, %20
  %49 = load %struct.lua_State** %2, align 4, !dbg !953
  %50 = load %struct.lua_TValue** %3, align 4, !dbg !953
  %51 = load %struct.lua_TValue** %4, align 4, !dbg !953
  %52 = call i32 @luaT_callorderTM(%struct.lua_State* %49, %struct.lua_TValue* %50, %struct.lua_TValue* %51, i32 20), !dbg !953
  store i32 %52, i32* %res, align 4, !dbg !953
  %53 = icmp slt i32 %52, 0, !dbg !953
  br i1 %53, label %54, label %58, !dbg !953

; <label>:54                                      ; preds = %48
  %55 = load %struct.lua_State** %2, align 4, !dbg !955
  %56 = load %struct.lua_TValue** %3, align 4, !dbg !955
  %57 = load %struct.lua_TValue** %4, align 4, !dbg !955
  call void @luaG_ordererror(%struct.lua_State* %55, %struct.lua_TValue* %56, %struct.lua_TValue* %57) #7, !dbg !955
  unreachable, !dbg !955

; <label>:58                                      ; preds = %48
  br label %59

; <label>:59                                      ; preds = %58
  br label %60

; <label>:60                                      ; preds = %59
  %61 = load i32* %res, align 4, !dbg !956
  store i32 %61, i32* %1, !dbg !956
  br label %62, !dbg !956

; <label>:62                                      ; preds = %60, %32, %16
  %63 = load i32* %1, !dbg !957
  ret i32 %63, !dbg !957
}

; Function Attrs: nounwind
define internal i32 @LTnum(%struct.lua_TValue* %l, %struct.lua_TValue* %r) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.lua_TValue*, align 4
  %3 = alloca %struct.lua_TValue*, align 4
  %li = alloca i64, align 8
  %lf = alloca double, align 8
  store %struct.lua_TValue* %l, %struct.lua_TValue** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %2}, metadata !958), !dbg !959
  store %struct.lua_TValue* %r, %struct.lua_TValue** %3, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %3}, metadata !960), !dbg !961
  %4 = load %struct.lua_TValue** %2, align 4, !dbg !962
  %5 = getelementptr inbounds %struct.lua_TValue* %4, i32 0, i32 1, !dbg !962
  %6 = load i32* %5, align 4, !dbg !962
  %7 = icmp eq i32 %6, 19, !dbg !962
  br i1 %7, label %8, label %32, !dbg !962

; <label>:8                                       ; preds = %0
  call void @llvm.dbg.declare(metadata !{i64* %li}, metadata !964), !dbg !966
  %9 = load %struct.lua_TValue** %2, align 4, !dbg !967
  %10 = getelementptr inbounds %struct.lua_TValue* %9, i32 0, i32 0, !dbg !967
  %11 = bitcast %union.Value* %10 to i64*, !dbg !967
  %12 = load i64* %11, align 8, !dbg !967
  store i64 %12, i64* %li, align 8, !dbg !967
  %13 = load %struct.lua_TValue** %3, align 4, !dbg !968
  %14 = getelementptr inbounds %struct.lua_TValue* %13, i32 0, i32 1, !dbg !968
  %15 = load i32* %14, align 4, !dbg !968
  %16 = icmp eq i32 %15, 19, !dbg !968
  br i1 %16, label %17, label %25, !dbg !968

; <label>:17                                      ; preds = %8
  %18 = load i64* %li, align 8, !dbg !970
  %19 = load %struct.lua_TValue** %3, align 4, !dbg !970
  %20 = getelementptr inbounds %struct.lua_TValue* %19, i32 0, i32 0, !dbg !970
  %21 = bitcast %union.Value* %20 to i64*, !dbg !970
  %22 = load i64* %21, align 8, !dbg !970
  %23 = icmp slt i64 %18, %22, !dbg !970
  %24 = zext i1 %23 to i32, !dbg !970
  store i32 %24, i32* %1, !dbg !970
  br label %64, !dbg !970

; <label>:25                                      ; preds = %8
  %26 = load i64* %li, align 8, !dbg !971
  %27 = load %struct.lua_TValue** %3, align 4, !dbg !971
  %28 = getelementptr inbounds %struct.lua_TValue* %27, i32 0, i32 0, !dbg !971
  %29 = bitcast %union.Value* %28 to double*, !dbg !971
  %30 = load double* %29, align 8, !dbg !971
  %31 = call i32 @LTintfloat(i64 %26, double %30), !dbg !971
  store i32 %31, i32* %1, !dbg !971
  br label %64, !dbg !971

; <label>:32                                      ; preds = %0
  call void @llvm.dbg.declare(metadata !{double* %lf}, metadata !972), !dbg !974
  %33 = load %struct.lua_TValue** %2, align 4, !dbg !975
  %34 = getelementptr inbounds %struct.lua_TValue* %33, i32 0, i32 0, !dbg !975
  %35 = bitcast %union.Value* %34 to double*, !dbg !975
  %36 = load double* %35, align 8, !dbg !975
  store double %36, double* %lf, align 8, !dbg !975
  %37 = load %struct.lua_TValue** %3, align 4, !dbg !976
  %38 = getelementptr inbounds %struct.lua_TValue* %37, i32 0, i32 1, !dbg !976
  %39 = load i32* %38, align 4, !dbg !976
  %40 = icmp eq i32 %39, 3, !dbg !976
  br i1 %40, label %41, label %49, !dbg !976

; <label>:41                                      ; preds = %32
  %42 = load double* %lf, align 8, !dbg !978
  %43 = load %struct.lua_TValue** %3, align 4, !dbg !978
  %44 = getelementptr inbounds %struct.lua_TValue* %43, i32 0, i32 0, !dbg !978
  %45 = bitcast %union.Value* %44 to double*, !dbg !978
  %46 = load double* %45, align 8, !dbg !978
  %47 = fcmp olt double %42, %46, !dbg !978
  %48 = zext i1 %47 to i32, !dbg !978
  store i32 %48, i32* %1, !dbg !978
  br label %64, !dbg !978

; <label>:49                                      ; preds = %32
  %50 = load double* %lf, align 8, !dbg !979
  %51 = load double* %lf, align 8, !dbg !979
  %52 = fcmp oeq double %50, %51, !dbg !979
  br i1 %52, label %54, label %53, !dbg !979

; <label>:53                                      ; preds = %49
  store i32 0, i32* %1, !dbg !981
  br label %64, !dbg !981

; <label>:54                                      ; preds = %49
  %55 = load %struct.lua_TValue** %3, align 4, !dbg !982
  %56 = getelementptr inbounds %struct.lua_TValue* %55, i32 0, i32 0, !dbg !982
  %57 = bitcast %union.Value* %56 to i64*, !dbg !982
  %58 = load i64* %57, align 8, !dbg !982
  %59 = load double* %lf, align 8, !dbg !982
  %60 = call i32 @LEintfloat(i64 %58, double %59), !dbg !982
  %61 = icmp ne i32 %60, 0, !dbg !982
  %62 = xor i1 %61, true, !dbg !982
  %63 = zext i1 %62 to i32, !dbg !982
  store i32 %63, i32* %1, !dbg !982
  br label %64, !dbg !982

; <label>:64                                      ; preds = %54, %53, %41, %25, %17
  %65 = load i32* %1, !dbg !983
  ret i32 %65, !dbg !983
}

; Function Attrs: nounwind
define internal i32 @l_strcmp(%struct.TString* %ls, %struct.TString* %rs) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TString*, align 4
  %3 = alloca %struct.TString*, align 4
  %l = alloca i8*, align 4
  %ll = alloca i32, align 4
  %r = alloca i8*, align 4
  %lr = alloca i32, align 4
  %temp = alloca i32, align 4
  %len = alloca i32, align 4
  store %struct.TString* %ls, %struct.TString** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.TString** %2}, metadata !984), !dbg !985
  store %struct.TString* %rs, %struct.TString** %3, align 4
  call void @llvm.dbg.declare(metadata !{%struct.TString** %3}, metadata !986), !dbg !987
  call void @llvm.dbg.declare(metadata !{i8** %l}, metadata !988), !dbg !989
  %4 = load %struct.TString** %2, align 4, !dbg !990
  %5 = bitcast %struct.TString* %4 to i8*, !dbg !990
  %6 = getelementptr inbounds i8* %5, i32 16, !dbg !990
  store i8* %6, i8** %l, align 4, !dbg !990
  call void @llvm.dbg.declare(metadata !{i32* %ll}, metadata !991), !dbg !992
  %7 = load %struct.TString** %2, align 4, !dbg !993
  %8 = getelementptr inbounds %struct.TString* %7, i32 0, i32 1, !dbg !993
  %9 = load i8* %8, align 1, !dbg !993
  %10 = zext i8 %9 to i32, !dbg !993
  %11 = icmp eq i32 %10, 4, !dbg !993
  br i1 %11, label %12, label %17, !dbg !993

; <label>:12                                      ; preds = %0
  %13 = load %struct.TString** %2, align 4, !dbg !994
  %14 = getelementptr inbounds %struct.TString* %13, i32 0, i32 4, !dbg !994
  %15 = load i8* %14, align 1, !dbg !994
  %16 = zext i8 %15 to i32, !dbg !994
  br label %22, !dbg !994

; <label>:17                                      ; preds = %0
  %18 = load %struct.TString** %2, align 4, !dbg !996
  %19 = getelementptr inbounds %struct.TString* %18, i32 0, i32 6, !dbg !996
  %20 = bitcast %union.anon.3* %19 to i32*, !dbg !996
  %21 = load i32* %20, align 4, !dbg !996
  br label %22, !dbg !996

; <label>:22                                      ; preds = %17, %12
  %23 = phi i32 [ %16, %12 ], [ %21, %17 ], !dbg !993
  store i32 %23, i32* %ll, align 4, !dbg !998
  call void @llvm.dbg.declare(metadata !{i8** %r}, metadata !1001), !dbg !1002
  %24 = load %struct.TString** %3, align 4, !dbg !1003
  %25 = bitcast %struct.TString* %24 to i8*, !dbg !1003
  %26 = getelementptr inbounds i8* %25, i32 16, !dbg !1003
  store i8* %26, i8** %r, align 4, !dbg !1003
  call void @llvm.dbg.declare(metadata !{i32* %lr}, metadata !1004), !dbg !1005
  %27 = load %struct.TString** %3, align 4, !dbg !1006
  %28 = getelementptr inbounds %struct.TString* %27, i32 0, i32 1, !dbg !1006
  %29 = load i8* %28, align 1, !dbg !1006
  %30 = zext i8 %29 to i32, !dbg !1006
  %31 = icmp eq i32 %30, 4, !dbg !1006
  br i1 %31, label %32, label %37, !dbg !1006

; <label>:32                                      ; preds = %22
  %33 = load %struct.TString** %3, align 4, !dbg !1007
  %34 = getelementptr inbounds %struct.TString* %33, i32 0, i32 4, !dbg !1007
  %35 = load i8* %34, align 1, !dbg !1007
  %36 = zext i8 %35 to i32, !dbg !1007
  br label %42, !dbg !1007

; <label>:37                                      ; preds = %22
  %38 = load %struct.TString** %3, align 4, !dbg !1009
  %39 = getelementptr inbounds %struct.TString* %38, i32 0, i32 6, !dbg !1009
  %40 = bitcast %union.anon.3* %39 to i32*, !dbg !1009
  %41 = load i32* %40, align 4, !dbg !1009
  br label %42, !dbg !1009

; <label>:42                                      ; preds = %37, %32
  %43 = phi i32 [ %36, %32 ], [ %41, %37 ], !dbg !1006
  store i32 %43, i32* %lr, align 4, !dbg !1011
  br label %44, !dbg !1014

; <label>:44                                      ; preds = %84, %42
  call void @llvm.dbg.declare(metadata !{i32* %temp}, metadata !1016), !dbg !1018
  %45 = load i8** %l, align 4, !dbg !1019
  %46 = load i8** %r, align 4, !dbg !1019
  %47 = call i32 @strcoll(i8* %45, i8* %46) #8, !dbg !1019
  store i32 %47, i32* %temp, align 4, !dbg !1019
  %48 = load i32* %temp, align 4, !dbg !1020
  %49 = icmp ne i32 %48, 0, !dbg !1020
  br i1 %49, label %50, label %52, !dbg !1020

; <label>:50                                      ; preds = %44
  %51 = load i32* %temp, align 4, !dbg !1022
  store i32 %51, i32* %1, !dbg !1022
  br label %85, !dbg !1022

; <label>:52                                      ; preds = %44
  call void @llvm.dbg.declare(metadata !{i32* %len}, metadata !1023), !dbg !1025
  %53 = load i8** %l, align 4, !dbg !1026
  %54 = call i32 @strlen(i8* %53) #8, !dbg !1026
  store i32 %54, i32* %len, align 4, !dbg !1026
  %55 = load i32* %len, align 4, !dbg !1027
  %56 = load i32* %lr, align 4, !dbg !1027
  %57 = icmp eq i32 %55, %56, !dbg !1027
  br i1 %57, label %58, label %63, !dbg !1027

; <label>:58                                      ; preds = %52
  %59 = load i32* %len, align 4, !dbg !1029
  %60 = load i32* %ll, align 4, !dbg !1029
  %61 = icmp eq i32 %59, %60, !dbg !1029
  %62 = select i1 %61, i32 0, i32 1, !dbg !1029
  store i32 %62, i32* %1, !dbg !1029
  br label %85, !dbg !1029

; <label>:63                                      ; preds = %52
  %64 = load i32* %len, align 4, !dbg !1030
  %65 = load i32* %ll, align 4, !dbg !1030
  %66 = icmp eq i32 %64, %65, !dbg !1030
  br i1 %66, label %67, label %68, !dbg !1030

; <label>:67                                      ; preds = %63
  store i32 -1, i32* %1, !dbg !1032
  br label %85, !dbg !1032

; <label>:68                                      ; preds = %63
  br label %69

; <label>:69                                      ; preds = %68
  %70 = load i32* %len, align 4, !dbg !1033
  %71 = add i32 %70, 1, !dbg !1033
  store i32 %71, i32* %len, align 4, !dbg !1033
  %72 = load i32* %len, align 4, !dbg !1034
  %73 = load i8** %l, align 4, !dbg !1034
  %74 = getelementptr inbounds i8* %73, i32 %72, !dbg !1034
  store i8* %74, i8** %l, align 4, !dbg !1034
  %75 = load i32* %len, align 4, !dbg !1035
  %76 = load i32* %ll, align 4, !dbg !1035
  %77 = sub i32 %76, %75, !dbg !1035
  store i32 %77, i32* %ll, align 4, !dbg !1035
  %78 = load i32* %len, align 4, !dbg !1036
  %79 = load i8** %r, align 4, !dbg !1036
  %80 = getelementptr inbounds i8* %79, i32 %78, !dbg !1036
  store i8* %80, i8** %r, align 4, !dbg !1036
  %81 = load i32* %len, align 4, !dbg !1037
  %82 = load i32* %lr, align 4, !dbg !1037
  %83 = sub i32 %82, %81, !dbg !1037
  store i32 %83, i32* %lr, align 4, !dbg !1037
  br label %84

; <label>:84                                      ; preds = %69
  br label %44, !dbg !1038

; <label>:85                                      ; preds = %67, %58, %50
  %86 = load i32* %1, !dbg !1039
  ret i32 %86, !dbg !1039
}

declare hidden i32 @luaT_callorderTM(%struct.lua_State*, %struct.lua_TValue*, %struct.lua_TValue*, i32) #2

; Function Attrs: noreturn
declare hidden void @luaG_ordererror(%struct.lua_State*, %struct.lua_TValue*, %struct.lua_TValue*) #4

; Function Attrs: nounwind
define hidden i32 @luaV_lessequal(%struct.lua_State* %L, %struct.lua_TValue* %l, %struct.lua_TValue* %r) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.lua_State*, align 4
  %3 = alloca %struct.lua_TValue*, align 4
  %4 = alloca %struct.lua_TValue*, align 4
  %res = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %2}, metadata !1040), !dbg !1041
  store %struct.lua_TValue* %l, %struct.lua_TValue** %3, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %3}, metadata !1042), !dbg !1043
  store %struct.lua_TValue* %r, %struct.lua_TValue** %4, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %4}, metadata !1044), !dbg !1045
  call void @llvm.dbg.declare(metadata !{i32* %res}, metadata !1046), !dbg !1047
  %5 = load %struct.lua_TValue** %3, align 4, !dbg !1048
  %6 = getelementptr inbounds %struct.lua_TValue* %5, i32 0, i32 1, !dbg !1048
  %7 = load i32* %6, align 4, !dbg !1048
  %8 = and i32 %7, 15, !dbg !1048
  %9 = icmp eq i32 %8, 3, !dbg !1048
  br i1 %9, label %10, label %20, !dbg !1048

; <label>:10                                      ; preds = %0
  %11 = load %struct.lua_TValue** %4, align 4, !dbg !1050
  %12 = getelementptr inbounds %struct.lua_TValue* %11, i32 0, i32 1, !dbg !1050
  %13 = load i32* %12, align 4, !dbg !1050
  %14 = and i32 %13, 15, !dbg !1050
  %15 = icmp eq i32 %14, 3, !dbg !1050
  br i1 %15, label %16, label %20, !dbg !1050

; <label>:16                                      ; preds = %10
  %17 = load %struct.lua_TValue** %3, align 4, !dbg !1052
  %18 = load %struct.lua_TValue** %4, align 4, !dbg !1052
  %19 = call i32 @LEnum(%struct.lua_TValue* %17, %struct.lua_TValue* %18), !dbg !1052
  store i32 %19, i32* %1, !dbg !1052
  br label %88, !dbg !1052

; <label>:20                                      ; preds = %10, %0
  %21 = load %struct.lua_TValue** %3, align 4, !dbg !1053
  %22 = getelementptr inbounds %struct.lua_TValue* %21, i32 0, i32 1, !dbg !1053
  %23 = load i32* %22, align 4, !dbg !1053
  %24 = and i32 %23, 15, !dbg !1053
  %25 = icmp eq i32 %24, 4, !dbg !1053
  br i1 %25, label %26, label %48, !dbg !1053

; <label>:26                                      ; preds = %20
  %27 = load %struct.lua_TValue** %4, align 4, !dbg !1055
  %28 = getelementptr inbounds %struct.lua_TValue* %27, i32 0, i32 1, !dbg !1055
  %29 = load i32* %28, align 4, !dbg !1055
  %30 = and i32 %29, 15, !dbg !1055
  %31 = icmp eq i32 %30, 4, !dbg !1055
  br i1 %31, label %32, label %48, !dbg !1055

; <label>:32                                      ; preds = %26
  %33 = load %struct.lua_TValue** %3, align 4, !dbg !1057
  %34 = getelementptr inbounds %struct.lua_TValue* %33, i32 0, i32 0, !dbg !1057
  %35 = bitcast %union.Value* %34 to %struct.GCObject**, !dbg !1057
  %36 = load %struct.GCObject** %35, align 4, !dbg !1057
  %37 = bitcast %struct.GCObject* %36 to %union.GCUnion*, !dbg !1057
  %38 = bitcast %union.GCUnion* %37 to %struct.TString*, !dbg !1057
  %39 = load %struct.lua_TValue** %4, align 4, !dbg !1057
  %40 = getelementptr inbounds %struct.lua_TValue* %39, i32 0, i32 0, !dbg !1057
  %41 = bitcast %union.Value* %40 to %struct.GCObject**, !dbg !1057
  %42 = load %struct.GCObject** %41, align 4, !dbg !1057
  %43 = bitcast %struct.GCObject* %42 to %union.GCUnion*, !dbg !1057
  %44 = bitcast %union.GCUnion* %43 to %struct.TString*, !dbg !1057
  %45 = call i32 @l_strcmp(%struct.TString* %38, %struct.TString* %44), !dbg !1057
  %46 = icmp sle i32 %45, 0, !dbg !1057
  %47 = zext i1 %46 to i32, !dbg !1057
  store i32 %47, i32* %1, !dbg !1057
  br label %88, !dbg !1057

; <label>:48                                      ; preds = %26, %20
  %49 = load %struct.lua_State** %2, align 4, !dbg !1058
  %50 = load %struct.lua_TValue** %3, align 4, !dbg !1058
  %51 = load %struct.lua_TValue** %4, align 4, !dbg !1058
  %52 = call i32 @luaT_callorderTM(%struct.lua_State* %49, %struct.lua_TValue* %50, %struct.lua_TValue* %51, i32 21), !dbg !1058
  store i32 %52, i32* %res, align 4, !dbg !1058
  %53 = icmp sge i32 %52, 0, !dbg !1058
  br i1 %53, label %54, label %56, !dbg !1058

; <label>:54                                      ; preds = %48
  %55 = load i32* %res, align 4, !dbg !1060
  store i32 %55, i32* %1, !dbg !1060
  br label %88, !dbg !1060

; <label>:56                                      ; preds = %48
  %57 = load %struct.lua_State** %2, align 4, !dbg !1061
  %58 = getelementptr inbounds %struct.lua_State* %57, i32 0, i32 7, !dbg !1061
  %59 = load %struct.CallInfo** %58, align 4, !dbg !1061
  %60 = getelementptr inbounds %struct.CallInfo* %59, i32 0, i32 7, !dbg !1061
  %61 = load i8* %60, align 1, !dbg !1061
  %62 = zext i8 %61 to i32, !dbg !1061
  %63 = or i32 %62, 128, !dbg !1061
  %64 = trunc i32 %63 to i8, !dbg !1061
  store i8 %64, i8* %60, align 1, !dbg !1061
  %65 = load %struct.lua_State** %2, align 4, !dbg !1063
  %66 = load %struct.lua_TValue** %4, align 4, !dbg !1063
  %67 = load %struct.lua_TValue** %3, align 4, !dbg !1063
  %68 = call i32 @luaT_callorderTM(%struct.lua_State* %65, %struct.lua_TValue* %66, %struct.lua_TValue* %67, i32 20), !dbg !1063
  store i32 %68, i32* %res, align 4, !dbg !1063
  %69 = load %struct.lua_State** %2, align 4, !dbg !1064
  %70 = getelementptr inbounds %struct.lua_State* %69, i32 0, i32 7, !dbg !1064
  %71 = load %struct.CallInfo** %70, align 4, !dbg !1064
  %72 = getelementptr inbounds %struct.CallInfo* %71, i32 0, i32 7, !dbg !1064
  %73 = load i8* %72, align 1, !dbg !1064
  %74 = zext i8 %73 to i32, !dbg !1064
  %75 = xor i32 %74, 128, !dbg !1064
  %76 = trunc i32 %75 to i8, !dbg !1064
  store i8 %76, i8* %72, align 1, !dbg !1064
  %77 = load i32* %res, align 4, !dbg !1065
  %78 = icmp slt i32 %77, 0, !dbg !1065
  br i1 %78, label %79, label %83, !dbg !1065

; <label>:79                                      ; preds = %56
  %80 = load %struct.lua_State** %2, align 4, !dbg !1067
  %81 = load %struct.lua_TValue** %3, align 4, !dbg !1067
  %82 = load %struct.lua_TValue** %4, align 4, !dbg !1067
  call void @luaG_ordererror(%struct.lua_State* %80, %struct.lua_TValue* %81, %struct.lua_TValue* %82) #7, !dbg !1067
  unreachable, !dbg !1067

; <label>:83                                      ; preds = %56
  %84 = load i32* %res, align 4, !dbg !1068
  %85 = icmp ne i32 %84, 0, !dbg !1068
  %86 = xor i1 %85, true, !dbg !1068
  %87 = zext i1 %86 to i32, !dbg !1068
  store i32 %87, i32* %1, !dbg !1068
  br label %88, !dbg !1068

; <label>:88                                      ; preds = %83, %54, %32, %16
  %89 = load i32* %1, !dbg !1069
  ret i32 %89, !dbg !1069
}

; Function Attrs: nounwind
define internal i32 @LEnum(%struct.lua_TValue* %l, %struct.lua_TValue* %r) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.lua_TValue*, align 4
  %3 = alloca %struct.lua_TValue*, align 4
  %li = alloca i64, align 8
  %lf = alloca double, align 8
  store %struct.lua_TValue* %l, %struct.lua_TValue** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %2}, metadata !1070), !dbg !1071
  store %struct.lua_TValue* %r, %struct.lua_TValue** %3, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %3}, metadata !1072), !dbg !1073
  %4 = load %struct.lua_TValue** %2, align 4, !dbg !1074
  %5 = getelementptr inbounds %struct.lua_TValue* %4, i32 0, i32 1, !dbg !1074
  %6 = load i32* %5, align 4, !dbg !1074
  %7 = icmp eq i32 %6, 19, !dbg !1074
  br i1 %7, label %8, label %32, !dbg !1074

; <label>:8                                       ; preds = %0
  call void @llvm.dbg.declare(metadata !{i64* %li}, metadata !1076), !dbg !1078
  %9 = load %struct.lua_TValue** %2, align 4, !dbg !1079
  %10 = getelementptr inbounds %struct.lua_TValue* %9, i32 0, i32 0, !dbg !1079
  %11 = bitcast %union.Value* %10 to i64*, !dbg !1079
  %12 = load i64* %11, align 8, !dbg !1079
  store i64 %12, i64* %li, align 8, !dbg !1079
  %13 = load %struct.lua_TValue** %3, align 4, !dbg !1080
  %14 = getelementptr inbounds %struct.lua_TValue* %13, i32 0, i32 1, !dbg !1080
  %15 = load i32* %14, align 4, !dbg !1080
  %16 = icmp eq i32 %15, 19, !dbg !1080
  br i1 %16, label %17, label %25, !dbg !1080

; <label>:17                                      ; preds = %8
  %18 = load i64* %li, align 8, !dbg !1082
  %19 = load %struct.lua_TValue** %3, align 4, !dbg !1082
  %20 = getelementptr inbounds %struct.lua_TValue* %19, i32 0, i32 0, !dbg !1082
  %21 = bitcast %union.Value* %20 to i64*, !dbg !1082
  %22 = load i64* %21, align 8, !dbg !1082
  %23 = icmp sle i64 %18, %22, !dbg !1082
  %24 = zext i1 %23 to i32, !dbg !1082
  store i32 %24, i32* %1, !dbg !1082
  br label %64, !dbg !1082

; <label>:25                                      ; preds = %8
  %26 = load i64* %li, align 8, !dbg !1083
  %27 = load %struct.lua_TValue** %3, align 4, !dbg !1083
  %28 = getelementptr inbounds %struct.lua_TValue* %27, i32 0, i32 0, !dbg !1083
  %29 = bitcast %union.Value* %28 to double*, !dbg !1083
  %30 = load double* %29, align 8, !dbg !1083
  %31 = call i32 @LEintfloat(i64 %26, double %30), !dbg !1083
  store i32 %31, i32* %1, !dbg !1083
  br label %64, !dbg !1083

; <label>:32                                      ; preds = %0
  call void @llvm.dbg.declare(metadata !{double* %lf}, metadata !1084), !dbg !1086
  %33 = load %struct.lua_TValue** %2, align 4, !dbg !1087
  %34 = getelementptr inbounds %struct.lua_TValue* %33, i32 0, i32 0, !dbg !1087
  %35 = bitcast %union.Value* %34 to double*, !dbg !1087
  %36 = load double* %35, align 8, !dbg !1087
  store double %36, double* %lf, align 8, !dbg !1087
  %37 = load %struct.lua_TValue** %3, align 4, !dbg !1088
  %38 = getelementptr inbounds %struct.lua_TValue* %37, i32 0, i32 1, !dbg !1088
  %39 = load i32* %38, align 4, !dbg !1088
  %40 = icmp eq i32 %39, 3, !dbg !1088
  br i1 %40, label %41, label %49, !dbg !1088

; <label>:41                                      ; preds = %32
  %42 = load double* %lf, align 8, !dbg !1090
  %43 = load %struct.lua_TValue** %3, align 4, !dbg !1090
  %44 = getelementptr inbounds %struct.lua_TValue* %43, i32 0, i32 0, !dbg !1090
  %45 = bitcast %union.Value* %44 to double*, !dbg !1090
  %46 = load double* %45, align 8, !dbg !1090
  %47 = fcmp ole double %42, %46, !dbg !1090
  %48 = zext i1 %47 to i32, !dbg !1090
  store i32 %48, i32* %1, !dbg !1090
  br label %64, !dbg !1090

; <label>:49                                      ; preds = %32
  %50 = load double* %lf, align 8, !dbg !1091
  %51 = load double* %lf, align 8, !dbg !1091
  %52 = fcmp oeq double %50, %51, !dbg !1091
  br i1 %52, label %54, label %53, !dbg !1091

; <label>:53                                      ; preds = %49
  store i32 0, i32* %1, !dbg !1093
  br label %64, !dbg !1093

; <label>:54                                      ; preds = %49
  %55 = load %struct.lua_TValue** %3, align 4, !dbg !1094
  %56 = getelementptr inbounds %struct.lua_TValue* %55, i32 0, i32 0, !dbg !1094
  %57 = bitcast %union.Value* %56 to i64*, !dbg !1094
  %58 = load i64* %57, align 8, !dbg !1094
  %59 = load double* %lf, align 8, !dbg !1094
  %60 = call i32 @LTintfloat(i64 %58, double %59), !dbg !1094
  %61 = icmp ne i32 %60, 0, !dbg !1094
  %62 = xor i1 %61, true, !dbg !1094
  %63 = zext i1 %62 to i32, !dbg !1094
  store i32 %63, i32* %1, !dbg !1094
  br label %64, !dbg !1094

; <label>:64                                      ; preds = %54, %53, %41, %25, %17
  %65 = load i32* %1, !dbg !1095
  ret i32 %65, !dbg !1095
}

; Function Attrs: nounwind
define hidden i32 @luaV_equalobj(%struct.lua_State* %L, %struct.lua_TValue* %t1, %struct.lua_TValue* %t2) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.lua_State*, align 4
  %3 = alloca %struct.lua_TValue*, align 4
  %4 = alloca %struct.lua_TValue*, align 4
  %tm = alloca %struct.lua_TValue*, align 4
  %i1 = alloca i64, align 8
  %i2 = alloca i64, align 8
  store %struct.lua_State* %L, %struct.lua_State** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %2}, metadata !1096), !dbg !1097
  store %struct.lua_TValue* %t1, %struct.lua_TValue** %3, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %3}, metadata !1098), !dbg !1099
  store %struct.lua_TValue* %t2, %struct.lua_TValue** %4, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %4}, metadata !1100), !dbg !1101
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %tm}, metadata !1102), !dbg !1103
  %5 = load %struct.lua_TValue** %3, align 4, !dbg !1104
  %6 = getelementptr inbounds %struct.lua_TValue* %5, i32 0, i32 1, !dbg !1104
  %7 = load i32* %6, align 4, !dbg !1104
  %8 = and i32 %7, 63, !dbg !1104
  %9 = load %struct.lua_TValue** %4, align 4, !dbg !1104
  %10 = getelementptr inbounds %struct.lua_TValue* %9, i32 0, i32 1, !dbg !1104
  %11 = load i32* %10, align 4, !dbg !1104
  %12 = and i32 %11, 63, !dbg !1104
  %13 = icmp ne i32 %8, %12, !dbg !1104
  br i1 %13, label %14, label %66, !dbg !1104

; <label>:14                                      ; preds = %0
  %15 = load %struct.lua_TValue** %3, align 4, !dbg !1106
  %16 = getelementptr inbounds %struct.lua_TValue* %15, i32 0, i32 1, !dbg !1106
  %17 = load i32* %16, align 4, !dbg !1106
  %18 = and i32 %17, 15, !dbg !1106
  %19 = load %struct.lua_TValue** %4, align 4, !dbg !1106
  %20 = getelementptr inbounds %struct.lua_TValue* %19, i32 0, i32 1, !dbg !1106
  %21 = load i32* %20, align 4, !dbg !1106
  %22 = and i32 %21, 15, !dbg !1106
  %23 = icmp ne i32 %18, %22, !dbg !1106
  br i1 %23, label %30, label %24, !dbg !1106

; <label>:24                                      ; preds = %14
  %25 = load %struct.lua_TValue** %3, align 4, !dbg !1109
  %26 = getelementptr inbounds %struct.lua_TValue* %25, i32 0, i32 1, !dbg !1109
  %27 = load i32* %26, align 4, !dbg !1109
  %28 = and i32 %27, 15, !dbg !1109
  %29 = icmp ne i32 %28, 3, !dbg !1109
  br i1 %29, label %30, label %31, !dbg !1109

; <label>:30                                      ; preds = %24, %14
  store i32 0, i32* %1, !dbg !1111
  br label %436, !dbg !1111

; <label>:31                                      ; preds = %24
  call void @llvm.dbg.declare(metadata !{i64* %i1}, metadata !1112), !dbg !1114
  call void @llvm.dbg.declare(metadata !{i64* %i2}, metadata !1115), !dbg !1116
  %32 = load %struct.lua_TValue** %3, align 4, !dbg !1117
  %33 = getelementptr inbounds %struct.lua_TValue* %32, i32 0, i32 1, !dbg !1117
  %34 = load i32* %33, align 4, !dbg !1117
  %35 = icmp eq i32 %34, 19, !dbg !1117
  br i1 %35, label %36, label %41, !dbg !1117

; <label>:36                                      ; preds = %31
  %37 = load %struct.lua_TValue** %3, align 4, !dbg !1118
  %38 = getelementptr inbounds %struct.lua_TValue* %37, i32 0, i32 0, !dbg !1118
  %39 = bitcast %union.Value* %38 to i64*, !dbg !1118
  %40 = load i64* %39, align 8, !dbg !1118
  store i64 %40, i64* %i1, align 8, !dbg !1118
  br i1 true, label %45, label %63, !dbg !1118

; <label>:41                                      ; preds = %31
  %42 = load %struct.lua_TValue** %3, align 4, !dbg !1120
  %43 = call i32 @luaV_tointeger(%struct.lua_TValue* %42, i64* %i1, i32 0), !dbg !1120
  %44 = icmp ne i32 %43, 0, !dbg !1120
  br i1 %44, label %45, label %63, !dbg !1120

; <label>:45                                      ; preds = %41, %36
  %46 = load %struct.lua_TValue** %4, align 4, !dbg !1122
  %47 = getelementptr inbounds %struct.lua_TValue* %46, i32 0, i32 1, !dbg !1122
  %48 = load i32* %47, align 4, !dbg !1122
  %49 = icmp eq i32 %48, 19, !dbg !1122
  br i1 %49, label %50, label %55, !dbg !1122

; <label>:50                                      ; preds = %45
  %51 = load %struct.lua_TValue** %4, align 4, !dbg !1125
  %52 = getelementptr inbounds %struct.lua_TValue* %51, i32 0, i32 0, !dbg !1125
  %53 = bitcast %union.Value* %52 to i64*, !dbg !1125
  %54 = load i64* %53, align 8, !dbg !1125
  store i64 %54, i64* %i2, align 8, !dbg !1125
  br i1 true, label %59, label %63, !dbg !1125

; <label>:55                                      ; preds = %45
  %56 = load %struct.lua_TValue** %4, align 4, !dbg !1127
  %57 = call i32 @luaV_tointeger(%struct.lua_TValue* %56, i64* %i2, i32 0), !dbg !1127
  %58 = icmp ne i32 %57, 0, !dbg !1127
  br i1 %58, label %59, label %63, !dbg !1127

; <label>:59                                      ; preds = %55, %50
  %60 = load i64* %i1, align 8, !dbg !1129
  %61 = load i64* %i2, align 8, !dbg !1129
  %62 = icmp eq i64 %60, %61, !dbg !1129
  br label %63

; <label>:63                                      ; preds = %59, %55, %50, %41, %36
  %64 = phi i1 [ false, %55 ], [ false, %50 ], [ false, %41 ], [ false, %36 ], [ %62, %59 ]
  %65 = zext i1 %64 to i32, !dbg !1132
  store i32 %65, i32* %1, !dbg !1132
  br label %436, !dbg !1132

; <label>:66                                      ; preds = %0
  %67 = load %struct.lua_TValue** %3, align 4, !dbg !1137
  %68 = getelementptr inbounds %struct.lua_TValue* %67, i32 0, i32 1, !dbg !1137
  %69 = load i32* %68, align 4, !dbg !1137
  %70 = and i32 %69, 63, !dbg !1137
  switch i32 %70, label %386 [
    i32 0, label %71
    i32 19, label %72
    i32 3, label %83
    i32 1, label %94
    i32 2, label %105
    i32 22, label %116
    i32 4, label %127
    i32 20, label %142
    i32 7, label %156
    i32 5, label %271
  ], !dbg !1137

; <label>:71                                      ; preds = %66
  store i32 1, i32* %1, !dbg !1138
  br label %436, !dbg !1138

; <label>:72                                      ; preds = %66
  %73 = load %struct.lua_TValue** %3, align 4, !dbg !1140
  %74 = getelementptr inbounds %struct.lua_TValue* %73, i32 0, i32 0, !dbg !1140
  %75 = bitcast %union.Value* %74 to i64*, !dbg !1140
  %76 = load i64* %75, align 8, !dbg !1140
  %77 = load %struct.lua_TValue** %4, align 4, !dbg !1140
  %78 = getelementptr inbounds %struct.lua_TValue* %77, i32 0, i32 0, !dbg !1140
  %79 = bitcast %union.Value* %78 to i64*, !dbg !1140
  %80 = load i64* %79, align 8, !dbg !1140
  %81 = icmp eq i64 %76, %80, !dbg !1140
  %82 = zext i1 %81 to i32, !dbg !1140
  store i32 %82, i32* %1, !dbg !1140
  br label %436, !dbg !1140

; <label>:83                                      ; preds = %66
  %84 = load %struct.lua_TValue** %3, align 4, !dbg !1141
  %85 = getelementptr inbounds %struct.lua_TValue* %84, i32 0, i32 0, !dbg !1141
  %86 = bitcast %union.Value* %85 to double*, !dbg !1141
  %87 = load double* %86, align 8, !dbg !1141
  %88 = load %struct.lua_TValue** %4, align 4, !dbg !1141
  %89 = getelementptr inbounds %struct.lua_TValue* %88, i32 0, i32 0, !dbg !1141
  %90 = bitcast %union.Value* %89 to double*, !dbg !1141
  %91 = load double* %90, align 8, !dbg !1141
  %92 = fcmp oeq double %87, %91, !dbg !1141
  %93 = zext i1 %92 to i32, !dbg !1141
  store i32 %93, i32* %1, !dbg !1141
  br label %436, !dbg !1141

; <label>:94                                      ; preds = %66
  %95 = load %struct.lua_TValue** %3, align 4, !dbg !1142
  %96 = getelementptr inbounds %struct.lua_TValue* %95, i32 0, i32 0, !dbg !1142
  %97 = bitcast %union.Value* %96 to i32*, !dbg !1142
  %98 = load i32* %97, align 4, !dbg !1142
  %99 = load %struct.lua_TValue** %4, align 4, !dbg !1142
  %100 = getelementptr inbounds %struct.lua_TValue* %99, i32 0, i32 0, !dbg !1142
  %101 = bitcast %union.Value* %100 to i32*, !dbg !1142
  %102 = load i32* %101, align 4, !dbg !1142
  %103 = icmp eq i32 %98, %102, !dbg !1142
  %104 = zext i1 %103 to i32, !dbg !1142
  store i32 %104, i32* %1, !dbg !1142
  br label %436, !dbg !1142

; <label>:105                                     ; preds = %66
  %106 = load %struct.lua_TValue** %3, align 4, !dbg !1143
  %107 = getelementptr inbounds %struct.lua_TValue* %106, i32 0, i32 0, !dbg !1143
  %108 = bitcast %union.Value* %107 to i8**, !dbg !1143
  %109 = load i8** %108, align 4, !dbg !1143
  %110 = load %struct.lua_TValue** %4, align 4, !dbg !1143
  %111 = getelementptr inbounds %struct.lua_TValue* %110, i32 0, i32 0, !dbg !1143
  %112 = bitcast %union.Value* %111 to i8**, !dbg !1143
  %113 = load i8** %112, align 4, !dbg !1143
  %114 = icmp eq i8* %109, %113, !dbg !1143
  %115 = zext i1 %114 to i32, !dbg !1143
  store i32 %115, i32* %1, !dbg !1143
  br label %436, !dbg !1143

; <label>:116                                     ; preds = %66
  %117 = load %struct.lua_TValue** %3, align 4, !dbg !1144
  %118 = getelementptr inbounds %struct.lua_TValue* %117, i32 0, i32 0, !dbg !1144
  %119 = bitcast %union.Value* %118 to i32 (%struct.lua_State*)**, !dbg !1144
  %120 = load i32 (%struct.lua_State*)** %119, align 4, !dbg !1144
  %121 = load %struct.lua_TValue** %4, align 4, !dbg !1144
  %122 = getelementptr inbounds %struct.lua_TValue* %121, i32 0, i32 0, !dbg !1144
  %123 = bitcast %union.Value* %122 to i32 (%struct.lua_State*)**, !dbg !1144
  %124 = load i32 (%struct.lua_State*)** %123, align 4, !dbg !1144
  %125 = icmp eq i32 (%struct.lua_State*)* %120, %124, !dbg !1144
  %126 = zext i1 %125 to i32, !dbg !1144
  store i32 %126, i32* %1, !dbg !1144
  br label %436, !dbg !1144

; <label>:127                                     ; preds = %66
  %128 = load %struct.lua_TValue** %3, align 4, !dbg !1145
  %129 = getelementptr inbounds %struct.lua_TValue* %128, i32 0, i32 0, !dbg !1145
  %130 = bitcast %union.Value* %129 to %struct.GCObject**, !dbg !1145
  %131 = load %struct.GCObject** %130, align 4, !dbg !1145
  %132 = bitcast %struct.GCObject* %131 to %union.GCUnion*, !dbg !1145
  %133 = bitcast %union.GCUnion* %132 to %struct.TString*, !dbg !1145
  %134 = load %struct.lua_TValue** %4, align 4, !dbg !1145
  %135 = getelementptr inbounds %struct.lua_TValue* %134, i32 0, i32 0, !dbg !1145
  %136 = bitcast %union.Value* %135 to %struct.GCObject**, !dbg !1145
  %137 = load %struct.GCObject** %136, align 4, !dbg !1145
  %138 = bitcast %struct.GCObject* %137 to %union.GCUnion*, !dbg !1145
  %139 = bitcast %union.GCUnion* %138 to %struct.TString*, !dbg !1145
  %140 = icmp eq %struct.TString* %133, %139, !dbg !1145
  %141 = zext i1 %140 to i32, !dbg !1145
  store i32 %141, i32* %1, !dbg !1145
  br label %436, !dbg !1145

; <label>:142                                     ; preds = %66
  %143 = load %struct.lua_TValue** %3, align 4, !dbg !1146
  %144 = getelementptr inbounds %struct.lua_TValue* %143, i32 0, i32 0, !dbg !1146
  %145 = bitcast %union.Value* %144 to %struct.GCObject**, !dbg !1146
  %146 = load %struct.GCObject** %145, align 4, !dbg !1146
  %147 = bitcast %struct.GCObject* %146 to %union.GCUnion*, !dbg !1146
  %148 = bitcast %union.GCUnion* %147 to %struct.TString*, !dbg !1146
  %149 = load %struct.lua_TValue** %4, align 4, !dbg !1146
  %150 = getelementptr inbounds %struct.lua_TValue* %149, i32 0, i32 0, !dbg !1146
  %151 = bitcast %union.Value* %150 to %struct.GCObject**, !dbg !1146
  %152 = load %struct.GCObject** %151, align 4, !dbg !1146
  %153 = bitcast %struct.GCObject* %152 to %union.GCUnion*, !dbg !1146
  %154 = bitcast %union.GCUnion* %153 to %struct.TString*, !dbg !1146
  %155 = call i32 @luaS_eqlngstr(%struct.TString* %148, %struct.TString* %154), !dbg !1146
  store i32 %155, i32* %1, !dbg !1146
  br label %436, !dbg !1146

; <label>:156                                     ; preds = %66
  %157 = load %struct.lua_TValue** %3, align 4, !dbg !1147
  %158 = getelementptr inbounds %struct.lua_TValue* %157, i32 0, i32 0, !dbg !1147
  %159 = bitcast %union.Value* %158 to %struct.GCObject**, !dbg !1147
  %160 = load %struct.GCObject** %159, align 4, !dbg !1147
  %161 = bitcast %struct.GCObject* %160 to %union.GCUnion*, !dbg !1147
  %162 = bitcast %union.GCUnion* %161 to %struct.Udata*, !dbg !1147
  %163 = load %struct.lua_TValue** %4, align 4, !dbg !1147
  %164 = getelementptr inbounds %struct.lua_TValue* %163, i32 0, i32 0, !dbg !1147
  %165 = bitcast %union.Value* %164 to %struct.GCObject**, !dbg !1147
  %166 = load %struct.GCObject** %165, align 4, !dbg !1147
  %167 = bitcast %struct.GCObject* %166 to %union.GCUnion*, !dbg !1147
  %168 = bitcast %union.GCUnion* %167 to %struct.Udata*, !dbg !1147
  %169 = icmp eq %struct.Udata* %162, %168, !dbg !1147
  br i1 %169, label %170, label %171, !dbg !1147

; <label>:170                                     ; preds = %156
  store i32 1, i32* %1, !dbg !1150
  br label %436, !dbg !1150

; <label>:171                                     ; preds = %156
  %172 = load %struct.lua_State** %2, align 4, !dbg !1152
  %173 = icmp eq %struct.lua_State* %172, null, !dbg !1152
  br i1 %173, label %174, label %175, !dbg !1152

; <label>:174                                     ; preds = %171
  store i32 0, i32* %1, !dbg !1154
  br label %436, !dbg !1154

; <label>:175                                     ; preds = %171
  br label %176

; <label>:176                                     ; preds = %175
  %177 = load %struct.lua_TValue** %3, align 4, !dbg !1156
  %178 = getelementptr inbounds %struct.lua_TValue* %177, i32 0, i32 0, !dbg !1156
  %179 = bitcast %union.Value* %178 to %struct.GCObject**, !dbg !1156
  %180 = load %struct.GCObject** %179, align 4, !dbg !1156
  %181 = bitcast %struct.GCObject* %180 to %union.GCUnion*, !dbg !1156
  %182 = bitcast %union.GCUnion* %181 to %struct.Udata*, !dbg !1156
  %183 = getelementptr inbounds %struct.Udata* %182, i32 0, i32 4, !dbg !1156
  %184 = load %struct.Table** %183, align 4, !dbg !1156
  %185 = icmp eq %struct.Table* %184, null, !dbg !1156
  br i1 %185, label %186, label %187, !dbg !1156

; <label>:186                                     ; preds = %176
  br label %220, !dbg !1157

; <label>:187                                     ; preds = %176
  %188 = load %struct.lua_TValue** %3, align 4, !dbg !1159
  %189 = getelementptr inbounds %struct.lua_TValue* %188, i32 0, i32 0, !dbg !1159
  %190 = bitcast %union.Value* %189 to %struct.GCObject**, !dbg !1159
  %191 = load %struct.GCObject** %190, align 4, !dbg !1159
  %192 = bitcast %struct.GCObject* %191 to %union.GCUnion*, !dbg !1159
  %193 = bitcast %union.GCUnion* %192 to %struct.Udata*, !dbg !1159
  %194 = getelementptr inbounds %struct.Udata* %193, i32 0, i32 4, !dbg !1159
  %195 = load %struct.Table** %194, align 4, !dbg !1159
  %196 = getelementptr inbounds %struct.Table* %195, i32 0, i32 3, !dbg !1159
  %197 = load i8* %196, align 1, !dbg !1159
  %198 = zext i8 %197 to i32, !dbg !1159
  %199 = and i32 %198, 32, !dbg !1159
  %200 = icmp ne i32 %199, 0, !dbg !1159
  br i1 %200, label %201, label %202, !dbg !1159

; <label>:201                                     ; preds = %187
  br label %218, !dbg !1161

; <label>:202                                     ; preds = %187
  %203 = load %struct.lua_TValue** %3, align 4, !dbg !1163
  %204 = getelementptr inbounds %struct.lua_TValue* %203, i32 0, i32 0, !dbg !1163
  %205 = bitcast %union.Value* %204 to %struct.GCObject**, !dbg !1163
  %206 = load %struct.GCObject** %205, align 4, !dbg !1163
  %207 = bitcast %struct.GCObject* %206 to %union.GCUnion*, !dbg !1163
  %208 = bitcast %union.GCUnion* %207 to %struct.Udata*, !dbg !1163
  %209 = getelementptr inbounds %struct.Udata* %208, i32 0, i32 4, !dbg !1163
  %210 = load %struct.Table** %209, align 4, !dbg !1163
  %211 = load %struct.lua_State** %2, align 4, !dbg !1163
  %212 = getelementptr inbounds %struct.lua_State* %211, i32 0, i32 6, !dbg !1163
  %213 = load %struct.global_State** %212, align 4, !dbg !1163
  %214 = getelementptr inbounds %struct.global_State* %213, i32 0, i32 31, !dbg !1163
  %215 = getelementptr inbounds [24 x %struct.TString*]* %214, i32 0, i32 5, !dbg !1163
  %216 = load %struct.TString** %215, align 4, !dbg !1163
  %217 = call %struct.lua_TValue* @luaT_gettm(%struct.Table* %210, i32 5, %struct.TString* %216), !dbg !1163
  br label %218, !dbg !1163

; <label>:218                                     ; preds = %202, %201
  %219 = phi %struct.lua_TValue* [ null, %201 ], [ %217, %202 ], !dbg !1165
  br label %220, !dbg !1166

; <label>:220                                     ; preds = %218, %186
  %221 = phi %struct.lua_TValue* [ null, %186 ], [ %219, %218 ], !dbg !1165
  store %struct.lua_TValue* %221, %struct.lua_TValue** %tm, align 4, !dbg !1169
  %222 = load %struct.lua_TValue** %tm, align 4, !dbg !1172
  %223 = icmp eq %struct.lua_TValue* %222, null, !dbg !1172
  br i1 %223, label %224, label %270, !dbg !1172

; <label>:224                                     ; preds = %220
  %225 = load %struct.lua_TValue** %4, align 4, !dbg !1174
  %226 = getelementptr inbounds %struct.lua_TValue* %225, i32 0, i32 0, !dbg !1174
  %227 = bitcast %union.Value* %226 to %struct.GCObject**, !dbg !1174
  %228 = load %struct.GCObject** %227, align 4, !dbg !1174
  %229 = bitcast %struct.GCObject* %228 to %union.GCUnion*, !dbg !1174
  %230 = bitcast %union.GCUnion* %229 to %struct.Udata*, !dbg !1174
  %231 = getelementptr inbounds %struct.Udata* %230, i32 0, i32 4, !dbg !1174
  %232 = load %struct.Table** %231, align 4, !dbg !1174
  %233 = icmp eq %struct.Table* %232, null, !dbg !1174
  br i1 %233, label %234, label %235, !dbg !1174

; <label>:234                                     ; preds = %224
  br label %268, !dbg !1175

; <label>:235                                     ; preds = %224
  %236 = load %struct.lua_TValue** %4, align 4, !dbg !1177
  %237 = getelementptr inbounds %struct.lua_TValue* %236, i32 0, i32 0, !dbg !1177
  %238 = bitcast %union.Value* %237 to %struct.GCObject**, !dbg !1177
  %239 = load %struct.GCObject** %238, align 4, !dbg !1177
  %240 = bitcast %struct.GCObject* %239 to %union.GCUnion*, !dbg !1177
  %241 = bitcast %union.GCUnion* %240 to %struct.Udata*, !dbg !1177
  %242 = getelementptr inbounds %struct.Udata* %241, i32 0, i32 4, !dbg !1177
  %243 = load %struct.Table** %242, align 4, !dbg !1177
  %244 = getelementptr inbounds %struct.Table* %243, i32 0, i32 3, !dbg !1177
  %245 = load i8* %244, align 1, !dbg !1177
  %246 = zext i8 %245 to i32, !dbg !1177
  %247 = and i32 %246, 32, !dbg !1177
  %248 = icmp ne i32 %247, 0, !dbg !1177
  br i1 %248, label %249, label %250, !dbg !1177

; <label>:249                                     ; preds = %235
  br label %266, !dbg !1179

; <label>:250                                     ; preds = %235
  %251 = load %struct.lua_TValue** %4, align 4, !dbg !1181
  %252 = getelementptr inbounds %struct.lua_TValue* %251, i32 0, i32 0, !dbg !1181
  %253 = bitcast %union.Value* %252 to %struct.GCObject**, !dbg !1181
  %254 = load %struct.GCObject** %253, align 4, !dbg !1181
  %255 = bitcast %struct.GCObject* %254 to %union.GCUnion*, !dbg !1181
  %256 = bitcast %union.GCUnion* %255 to %struct.Udata*, !dbg !1181
  %257 = getelementptr inbounds %struct.Udata* %256, i32 0, i32 4, !dbg !1181
  %258 = load %struct.Table** %257, align 4, !dbg !1181
  %259 = load %struct.lua_State** %2, align 4, !dbg !1181
  %260 = getelementptr inbounds %struct.lua_State* %259, i32 0, i32 6, !dbg !1181
  %261 = load %struct.global_State** %260, align 4, !dbg !1181
  %262 = getelementptr inbounds %struct.global_State* %261, i32 0, i32 31, !dbg !1181
  %263 = getelementptr inbounds [24 x %struct.TString*]* %262, i32 0, i32 5, !dbg !1181
  %264 = load %struct.TString** %263, align 4, !dbg !1181
  %265 = call %struct.lua_TValue* @luaT_gettm(%struct.Table* %258, i32 5, %struct.TString* %264), !dbg !1181
  br label %266, !dbg !1181

; <label>:266                                     ; preds = %250, %249
  %267 = phi %struct.lua_TValue* [ null, %249 ], [ %265, %250 ], !dbg !1183
  br label %268, !dbg !1184

; <label>:268                                     ; preds = %266, %234
  %269 = phi %struct.lua_TValue* [ null, %234 ], [ %267, %266 ], !dbg !1183
  store %struct.lua_TValue* %269, %struct.lua_TValue** %tm, align 4, !dbg !1187
  br label %270, !dbg !1187

; <label>:270                                     ; preds = %268, %220
  br label %397, !dbg !1190

; <label>:271                                     ; preds = %66
  %272 = load %struct.lua_TValue** %3, align 4, !dbg !1191
  %273 = getelementptr inbounds %struct.lua_TValue* %272, i32 0, i32 0, !dbg !1191
  %274 = bitcast %union.Value* %273 to %struct.GCObject**, !dbg !1191
  %275 = load %struct.GCObject** %274, align 4, !dbg !1191
  %276 = bitcast %struct.GCObject* %275 to %union.GCUnion*, !dbg !1191
  %277 = bitcast %union.GCUnion* %276 to %struct.Table*, !dbg !1191
  %278 = load %struct.lua_TValue** %4, align 4, !dbg !1191
  %279 = getelementptr inbounds %struct.lua_TValue* %278, i32 0, i32 0, !dbg !1191
  %280 = bitcast %union.Value* %279 to %struct.GCObject**, !dbg !1191
  %281 = load %struct.GCObject** %280, align 4, !dbg !1191
  %282 = bitcast %struct.GCObject* %281 to %union.GCUnion*, !dbg !1191
  %283 = bitcast %union.GCUnion* %282 to %struct.Table*, !dbg !1191
  %284 = icmp eq %struct.Table* %277, %283, !dbg !1191
  br i1 %284, label %285, label %286, !dbg !1191

; <label>:285                                     ; preds = %271
  store i32 1, i32* %1, !dbg !1194
  br label %436, !dbg !1194

; <label>:286                                     ; preds = %271
  %287 = load %struct.lua_State** %2, align 4, !dbg !1196
  %288 = icmp eq %struct.lua_State* %287, null, !dbg !1196
  br i1 %288, label %289, label %290, !dbg !1196

; <label>:289                                     ; preds = %286
  store i32 0, i32* %1, !dbg !1198
  br label %436, !dbg !1198

; <label>:290                                     ; preds = %286
  br label %291

; <label>:291                                     ; preds = %290
  %292 = load %struct.lua_TValue** %3, align 4, !dbg !1200
  %293 = getelementptr inbounds %struct.lua_TValue* %292, i32 0, i32 0, !dbg !1200
  %294 = bitcast %union.Value* %293 to %struct.GCObject**, !dbg !1200
  %295 = load %struct.GCObject** %294, align 4, !dbg !1200
  %296 = bitcast %struct.GCObject* %295 to %union.GCUnion*, !dbg !1200
  %297 = bitcast %union.GCUnion* %296 to %struct.Table*, !dbg !1200
  %298 = getelementptr inbounds %struct.Table* %297, i32 0, i32 9, !dbg !1200
  %299 = load %struct.Table** %298, align 4, !dbg !1200
  %300 = icmp eq %struct.Table* %299, null, !dbg !1200
  br i1 %300, label %301, label %302, !dbg !1200

; <label>:301                                     ; preds = %291
  br label %335, !dbg !1201

; <label>:302                                     ; preds = %291
  %303 = load %struct.lua_TValue** %3, align 4, !dbg !1203
  %304 = getelementptr inbounds %struct.lua_TValue* %303, i32 0, i32 0, !dbg !1203
  %305 = bitcast %union.Value* %304 to %struct.GCObject**, !dbg !1203
  %306 = load %struct.GCObject** %305, align 4, !dbg !1203
  %307 = bitcast %struct.GCObject* %306 to %union.GCUnion*, !dbg !1203
  %308 = bitcast %union.GCUnion* %307 to %struct.Table*, !dbg !1203
  %309 = getelementptr inbounds %struct.Table* %308, i32 0, i32 9, !dbg !1203
  %310 = load %struct.Table** %309, align 4, !dbg !1203
  %311 = getelementptr inbounds %struct.Table* %310, i32 0, i32 3, !dbg !1203
  %312 = load i8* %311, align 1, !dbg !1203
  %313 = zext i8 %312 to i32, !dbg !1203
  %314 = and i32 %313, 32, !dbg !1203
  %315 = icmp ne i32 %314, 0, !dbg !1203
  br i1 %315, label %316, label %317, !dbg !1203

; <label>:316                                     ; preds = %302
  br label %333, !dbg !1205

; <label>:317                                     ; preds = %302
  %318 = load %struct.lua_TValue** %3, align 4, !dbg !1207
  %319 = getelementptr inbounds %struct.lua_TValue* %318, i32 0, i32 0, !dbg !1207
  %320 = bitcast %union.Value* %319 to %struct.GCObject**, !dbg !1207
  %321 = load %struct.GCObject** %320, align 4, !dbg !1207
  %322 = bitcast %struct.GCObject* %321 to %union.GCUnion*, !dbg !1207
  %323 = bitcast %union.GCUnion* %322 to %struct.Table*, !dbg !1207
  %324 = getelementptr inbounds %struct.Table* %323, i32 0, i32 9, !dbg !1207
  %325 = load %struct.Table** %324, align 4, !dbg !1207
  %326 = load %struct.lua_State** %2, align 4, !dbg !1207
  %327 = getelementptr inbounds %struct.lua_State* %326, i32 0, i32 6, !dbg !1207
  %328 = load %struct.global_State** %327, align 4, !dbg !1207
  %329 = getelementptr inbounds %struct.global_State* %328, i32 0, i32 31, !dbg !1207
  %330 = getelementptr inbounds [24 x %struct.TString*]* %329, i32 0, i32 5, !dbg !1207
  %331 = load %struct.TString** %330, align 4, !dbg !1207
  %332 = call %struct.lua_TValue* @luaT_gettm(%struct.Table* %325, i32 5, %struct.TString* %331), !dbg !1207
  br label %333, !dbg !1207

; <label>:333                                     ; preds = %317, %316
  %334 = phi %struct.lua_TValue* [ null, %316 ], [ %332, %317 ], !dbg !1209
  br label %335, !dbg !1210

; <label>:335                                     ; preds = %333, %301
  %336 = phi %struct.lua_TValue* [ null, %301 ], [ %334, %333 ], !dbg !1209
  store %struct.lua_TValue* %336, %struct.lua_TValue** %tm, align 4, !dbg !1213
  %337 = load %struct.lua_TValue** %tm, align 4, !dbg !1216
  %338 = icmp eq %struct.lua_TValue* %337, null, !dbg !1216
  br i1 %338, label %339, label %385, !dbg !1216

; <label>:339                                     ; preds = %335
  %340 = load %struct.lua_TValue** %4, align 4, !dbg !1218
  %341 = getelementptr inbounds %struct.lua_TValue* %340, i32 0, i32 0, !dbg !1218
  %342 = bitcast %union.Value* %341 to %struct.GCObject**, !dbg !1218
  %343 = load %struct.GCObject** %342, align 4, !dbg !1218
  %344 = bitcast %struct.GCObject* %343 to %union.GCUnion*, !dbg !1218
  %345 = bitcast %union.GCUnion* %344 to %struct.Table*, !dbg !1218
  %346 = getelementptr inbounds %struct.Table* %345, i32 0, i32 9, !dbg !1218
  %347 = load %struct.Table** %346, align 4, !dbg !1218
  %348 = icmp eq %struct.Table* %347, null, !dbg !1218
  br i1 %348, label %349, label %350, !dbg !1218

; <label>:349                                     ; preds = %339
  br label %383, !dbg !1219

; <label>:350                                     ; preds = %339
  %351 = load %struct.lua_TValue** %4, align 4, !dbg !1221
  %352 = getelementptr inbounds %struct.lua_TValue* %351, i32 0, i32 0, !dbg !1221
  %353 = bitcast %union.Value* %352 to %struct.GCObject**, !dbg !1221
  %354 = load %struct.GCObject** %353, align 4, !dbg !1221
  %355 = bitcast %struct.GCObject* %354 to %union.GCUnion*, !dbg !1221
  %356 = bitcast %union.GCUnion* %355 to %struct.Table*, !dbg !1221
  %357 = getelementptr inbounds %struct.Table* %356, i32 0, i32 9, !dbg !1221
  %358 = load %struct.Table** %357, align 4, !dbg !1221
  %359 = getelementptr inbounds %struct.Table* %358, i32 0, i32 3, !dbg !1221
  %360 = load i8* %359, align 1, !dbg !1221
  %361 = zext i8 %360 to i32, !dbg !1221
  %362 = and i32 %361, 32, !dbg !1221
  %363 = icmp ne i32 %362, 0, !dbg !1221
  br i1 %363, label %364, label %365, !dbg !1221

; <label>:364                                     ; preds = %350
  br label %381, !dbg !1223

; <label>:365                                     ; preds = %350
  %366 = load %struct.lua_TValue** %4, align 4, !dbg !1225
  %367 = getelementptr inbounds %struct.lua_TValue* %366, i32 0, i32 0, !dbg !1225
  %368 = bitcast %union.Value* %367 to %struct.GCObject**, !dbg !1225
  %369 = load %struct.GCObject** %368, align 4, !dbg !1225
  %370 = bitcast %struct.GCObject* %369 to %union.GCUnion*, !dbg !1225
  %371 = bitcast %union.GCUnion* %370 to %struct.Table*, !dbg !1225
  %372 = getelementptr inbounds %struct.Table* %371, i32 0, i32 9, !dbg !1225
  %373 = load %struct.Table** %372, align 4, !dbg !1225
  %374 = load %struct.lua_State** %2, align 4, !dbg !1225
  %375 = getelementptr inbounds %struct.lua_State* %374, i32 0, i32 6, !dbg !1225
  %376 = load %struct.global_State** %375, align 4, !dbg !1225
  %377 = getelementptr inbounds %struct.global_State* %376, i32 0, i32 31, !dbg !1225
  %378 = getelementptr inbounds [24 x %struct.TString*]* %377, i32 0, i32 5, !dbg !1225
  %379 = load %struct.TString** %378, align 4, !dbg !1225
  %380 = call %struct.lua_TValue* @luaT_gettm(%struct.Table* %373, i32 5, %struct.TString* %379), !dbg !1225
  br label %381, !dbg !1225

; <label>:381                                     ; preds = %365, %364
  %382 = phi %struct.lua_TValue* [ null, %364 ], [ %380, %365 ], !dbg !1227
  br label %383, !dbg !1228

; <label>:383                                     ; preds = %381, %349
  %384 = phi %struct.lua_TValue* [ null, %349 ], [ %382, %381 ], !dbg !1227
  store %struct.lua_TValue* %384, %struct.lua_TValue** %tm, align 4, !dbg !1231
  br label %385, !dbg !1231

; <label>:385                                     ; preds = %383, %335
  br label %397, !dbg !1234

; <label>:386                                     ; preds = %66
  %387 = load %struct.lua_TValue** %3, align 4, !dbg !1235
  %388 = getelementptr inbounds %struct.lua_TValue* %387, i32 0, i32 0, !dbg !1235
  %389 = bitcast %union.Value* %388 to %struct.GCObject**, !dbg !1235
  %390 = load %struct.GCObject** %389, align 4, !dbg !1235
  %391 = load %struct.lua_TValue** %4, align 4, !dbg !1235
  %392 = getelementptr inbounds %struct.lua_TValue* %391, i32 0, i32 0, !dbg !1235
  %393 = bitcast %union.Value* %392 to %struct.GCObject**, !dbg !1235
  %394 = load %struct.GCObject** %393, align 4, !dbg !1235
  %395 = icmp eq %struct.GCObject* %390, %394, !dbg !1235
  %396 = zext i1 %395 to i32, !dbg !1235
  store i32 %396, i32* %1, !dbg !1235
  br label %436, !dbg !1235

; <label>:397                                     ; preds = %385, %270
  %398 = load %struct.lua_TValue** %tm, align 4, !dbg !1236
  %399 = icmp eq %struct.lua_TValue* %398, null, !dbg !1236
  br i1 %399, label %400, label %401, !dbg !1236

; <label>:400                                     ; preds = %397
  store i32 0, i32* %1, !dbg !1238
  br label %436, !dbg !1238

; <label>:401                                     ; preds = %397
  %402 = load %struct.lua_State** %2, align 4, !dbg !1239
  %403 = load %struct.lua_TValue** %tm, align 4, !dbg !1239
  %404 = load %struct.lua_TValue** %3, align 4, !dbg !1239
  %405 = load %struct.lua_TValue** %4, align 4, !dbg !1239
  %406 = load %struct.lua_State** %2, align 4, !dbg !1239
  %407 = getelementptr inbounds %struct.lua_State* %406, i32 0, i32 5, !dbg !1239
  %408 = load %struct.lua_TValue** %407, align 4, !dbg !1239
  call void @luaT_callTM(%struct.lua_State* %402, %struct.lua_TValue* %403, %struct.lua_TValue* %404, %struct.lua_TValue* %405, %struct.lua_TValue* %408, i32 1), !dbg !1239
  %409 = load %struct.lua_State** %2, align 4, !dbg !1240
  %410 = getelementptr inbounds %struct.lua_State* %409, i32 0, i32 5, !dbg !1240
  %411 = load %struct.lua_TValue** %410, align 4, !dbg !1240
  %412 = getelementptr inbounds %struct.lua_TValue* %411, i32 0, i32 1, !dbg !1240
  %413 = load i32* %412, align 4, !dbg !1240
  %414 = icmp eq i32 %413, 0, !dbg !1240
  br i1 %414, label %432, label %415, !dbg !1240

; <label>:415                                     ; preds = %401
  %416 = load %struct.lua_State** %2, align 4, !dbg !1241
  %417 = getelementptr inbounds %struct.lua_State* %416, i32 0, i32 5, !dbg !1241
  %418 = load %struct.lua_TValue** %417, align 4, !dbg !1241
  %419 = getelementptr inbounds %struct.lua_TValue* %418, i32 0, i32 1, !dbg !1241
  %420 = load i32* %419, align 4, !dbg !1241
  %421 = icmp eq i32 %420, 1, !dbg !1241
  br i1 %421, label %422, label %430, !dbg !1241

; <label>:422                                     ; preds = %415
  %423 = load %struct.lua_State** %2, align 4, !dbg !1243
  %424 = getelementptr inbounds %struct.lua_State* %423, i32 0, i32 5, !dbg !1243
  %425 = load %struct.lua_TValue** %424, align 4, !dbg !1243
  %426 = getelementptr inbounds %struct.lua_TValue* %425, i32 0, i32 0, !dbg !1243
  %427 = bitcast %union.Value* %426 to i32*, !dbg !1243
  %428 = load i32* %427, align 4, !dbg !1243
  %429 = icmp eq i32 %428, 0, !dbg !1243
  br label %430

; <label>:430                                     ; preds = %422, %415
  %431 = phi i1 [ false, %415 ], [ %429, %422 ]
  br label %432, !dbg !1245

; <label>:432                                     ; preds = %430, %401
  %433 = phi i1 [ true, %401 ], [ %431, %430 ]
  %434 = xor i1 %433, true, !dbg !1247
  %435 = zext i1 %434 to i32, !dbg !1247
  store i32 %435, i32* %1, !dbg !1247
  br label %436, !dbg !1247

; <label>:436                                     ; preds = %432, %400, %386, %289, %285, %174, %170, %142, %127, %116, %105, %94, %83, %72, %71, %63, %30
  %437 = load i32* %1, !dbg !1250
  ret i32 %437, !dbg !1250
}

declare hidden i32 @luaS_eqlngstr(%struct.TString*, %struct.TString*) #2

; Function Attrs: nounwind
define hidden void @luaV_concat(%struct.lua_State* %L, i32 %total) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca i32, align 4
  %top = alloca %struct.lua_TValue*, align 4
  %n = alloca i32, align 4
  %io1 = alloca %struct.lua_TValue*, align 4
  %tl = alloca i32, align 4
  %ts = alloca %struct.TString*, align 4
  %l = alloca i32, align 4
  %buff = alloca [40 x i8], align 1
  %io = alloca %struct.lua_TValue*, align 4
  %x_ = alloca %struct.TString*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !1251), !dbg !1252
  store i32 %total, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !1253), !dbg !1254
  br label %3, !dbg !1255

; <label>:3                                       ; preds = %298, %0
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %top}, metadata !1256), !dbg !1258
  %4 = load %struct.lua_State** %1, align 4, !dbg !1259
  %5 = getelementptr inbounds %struct.lua_State* %4, i32 0, i32 5, !dbg !1259
  %6 = load %struct.lua_TValue** %5, align 4, !dbg !1259
  store %struct.lua_TValue* %6, %struct.lua_TValue** %top, align 4, !dbg !1259
  call void @llvm.dbg.declare(metadata !{i32* %n}, metadata !1260), !dbg !1261
  store i32 2, i32* %n, align 4, !dbg !1262
  %7 = load %struct.lua_TValue** %top, align 4, !dbg !1263
  %8 = getelementptr inbounds %struct.lua_TValue* %7, i32 -2, !dbg !1263
  %9 = getelementptr inbounds %struct.lua_TValue* %8, i32 0, i32 1, !dbg !1263
  %10 = load i32* %9, align 4, !dbg !1263
  %11 = and i32 %10, 15, !dbg !1263
  %12 = icmp eq i32 %11, 4, !dbg !1263
  br i1 %12, label %20, label %13, !dbg !1263

; <label>:13                                      ; preds = %3
  %14 = load %struct.lua_TValue** %top, align 4, !dbg !1265
  %15 = getelementptr inbounds %struct.lua_TValue* %14, i32 -2, !dbg !1265
  %16 = getelementptr inbounds %struct.lua_TValue* %15, i32 0, i32 1, !dbg !1265
  %17 = load i32* %16, align 4, !dbg !1265
  %18 = and i32 %17, 15, !dbg !1265
  %19 = icmp eq i32 %18, 3, !dbg !1265
  br i1 %19, label %20, label %38, !dbg !1265

; <label>:20                                      ; preds = %13, %3
  %21 = load %struct.lua_TValue** %top, align 4, !dbg !1267
  %22 = getelementptr inbounds %struct.lua_TValue* %21, i32 -1, !dbg !1267
  %23 = getelementptr inbounds %struct.lua_TValue* %22, i32 0, i32 1, !dbg !1267
  %24 = load i32* %23, align 4, !dbg !1267
  %25 = and i32 %24, 15, !dbg !1267
  %26 = icmp eq i32 %25, 4, !dbg !1267
  br i1 %26, label %46, label %27, !dbg !1267

; <label>:27                                      ; preds = %20
  %28 = load %struct.lua_TValue** %top, align 4, !dbg !1270
  %29 = getelementptr inbounds %struct.lua_TValue* %28, i32 -1, !dbg !1270
  %30 = getelementptr inbounds %struct.lua_TValue* %29, i32 0, i32 1, !dbg !1270
  %31 = load i32* %30, align 4, !dbg !1270
  %32 = and i32 %31, 15, !dbg !1270
  %33 = icmp eq i32 %32, 3, !dbg !1270
  br i1 %33, label %34, label %38, !dbg !1270

; <label>:34                                      ; preds = %27
  %35 = load %struct.lua_State** %1, align 4, !dbg !1272
  %36 = load %struct.lua_TValue** %top, align 4, !dbg !1272
  %37 = getelementptr inbounds %struct.lua_TValue* %36, i32 -1, !dbg !1272
  call void @luaO_tostring(%struct.lua_State* %35, %struct.lua_TValue* %37), !dbg !1272
  br i1 true, label %46, label %38, !dbg !1272

; <label>:38                                      ; preds = %34, %27, %13
  %39 = load %struct.lua_State** %1, align 4, !dbg !1274
  %40 = load %struct.lua_TValue** %top, align 4, !dbg !1274
  %41 = getelementptr inbounds %struct.lua_TValue* %40, i32 -2, !dbg !1274
  %42 = load %struct.lua_TValue** %top, align 4, !dbg !1274
  %43 = getelementptr inbounds %struct.lua_TValue* %42, i32 -1, !dbg !1274
  %44 = load %struct.lua_TValue** %top, align 4, !dbg !1274
  %45 = getelementptr inbounds %struct.lua_TValue* %44, i32 -2, !dbg !1274
  call void @luaT_trybinTM(%struct.lua_State* %39, %struct.lua_TValue* %41, %struct.lua_TValue* %43, %struct.lua_TValue* %45, i32 22), !dbg !1274
  br label %286, !dbg !1274

; <label>:46                                      ; preds = %34, %20
  %47 = load %struct.lua_TValue** %top, align 4, !dbg !1275
  %48 = getelementptr inbounds %struct.lua_TValue* %47, i32 -1, !dbg !1275
  %49 = getelementptr inbounds %struct.lua_TValue* %48, i32 0, i32 1, !dbg !1275
  %50 = load i32* %49, align 4, !dbg !1275
  %51 = icmp eq i32 %50, 68, !dbg !1275
  br i1 %51, label %52, label %87, !dbg !1275

; <label>:52                                      ; preds = %46
  %53 = load %struct.lua_TValue** %top, align 4, !dbg !1277
  %54 = getelementptr inbounds %struct.lua_TValue* %53, i32 -1, !dbg !1277
  %55 = getelementptr inbounds %struct.lua_TValue* %54, i32 0, i32 0, !dbg !1277
  %56 = bitcast %union.Value* %55 to %struct.GCObject**, !dbg !1277
  %57 = load %struct.GCObject** %56, align 4, !dbg !1277
  %58 = bitcast %struct.GCObject* %57 to %union.GCUnion*, !dbg !1277
  %59 = bitcast %union.GCUnion* %58 to %struct.TString*, !dbg !1277
  %60 = getelementptr inbounds %struct.TString* %59, i32 0, i32 4, !dbg !1277
  %61 = load i8* %60, align 1, !dbg !1277
  %62 = zext i8 %61 to i32, !dbg !1277
  %63 = icmp eq i32 %62, 0, !dbg !1277
  br i1 %63, label %64, label %87, !dbg !1277

; <label>:64                                      ; preds = %52
  %65 = load %struct.lua_TValue** %top, align 4, !dbg !1279
  %66 = getelementptr inbounds %struct.lua_TValue* %65, i32 -2, !dbg !1279
  %67 = getelementptr inbounds %struct.lua_TValue* %66, i32 0, i32 1, !dbg !1279
  %68 = load i32* %67, align 4, !dbg !1279
  %69 = and i32 %68, 15, !dbg !1279
  %70 = icmp eq i32 %69, 4, !dbg !1279
  br i1 %70, label %84, label %71, !dbg !1279

; <label>:71                                      ; preds = %64
  %72 = load %struct.lua_TValue** %top, align 4, !dbg !1280
  %73 = getelementptr inbounds %struct.lua_TValue* %72, i32 -2, !dbg !1280
  %74 = getelementptr inbounds %struct.lua_TValue* %73, i32 0, i32 1, !dbg !1280
  %75 = load i32* %74, align 4, !dbg !1280
  %76 = and i32 %75, 15, !dbg !1280
  %77 = icmp eq i32 %76, 3, !dbg !1280
  br i1 %77, label %78, label %82, !dbg !1280

; <label>:78                                      ; preds = %71
  %79 = load %struct.lua_State** %1, align 4, !dbg !1282
  %80 = load %struct.lua_TValue** %top, align 4, !dbg !1282
  %81 = getelementptr inbounds %struct.lua_TValue* %80, i32 -2, !dbg !1282
  call void @luaO_tostring(%struct.lua_State* %79, %struct.lua_TValue* %81), !dbg !1282
  br label %82

; <label>:82                                      ; preds = %78, %71
  %83 = phi i1 [ false, %71 ], [ true, %78 ]
  br label %84, !dbg !1284

; <label>:84                                      ; preds = %82, %64
  %85 = phi i1 [ true, %64 ], [ %83, %82 ]
  %86 = zext i1 %85 to i32, !dbg !1286
  br label %285, !dbg !1286

; <label>:87                                      ; preds = %52, %46
  %88 = load %struct.lua_TValue** %top, align 4, !dbg !1289
  %89 = getelementptr inbounds %struct.lua_TValue* %88, i32 -2, !dbg !1289
  %90 = getelementptr inbounds %struct.lua_TValue* %89, i32 0, i32 1, !dbg !1289
  %91 = load i32* %90, align 4, !dbg !1289
  %92 = icmp eq i32 %91, 68, !dbg !1289
  br i1 %92, label %93, label %114, !dbg !1289

; <label>:93                                      ; preds = %87
  %94 = load %struct.lua_TValue** %top, align 4, !dbg !1291
  %95 = getelementptr inbounds %struct.lua_TValue* %94, i32 -2, !dbg !1291
  %96 = getelementptr inbounds %struct.lua_TValue* %95, i32 0, i32 0, !dbg !1291
  %97 = bitcast %union.Value* %96 to %struct.GCObject**, !dbg !1291
  %98 = load %struct.GCObject** %97, align 4, !dbg !1291
  %99 = bitcast %struct.GCObject* %98 to %union.GCUnion*, !dbg !1291
  %100 = bitcast %union.GCUnion* %99 to %struct.TString*, !dbg !1291
  %101 = getelementptr inbounds %struct.TString* %100, i32 0, i32 4, !dbg !1291
  %102 = load i8* %101, align 1, !dbg !1291
  %103 = zext i8 %102 to i32, !dbg !1291
  %104 = icmp eq i32 %103, 0, !dbg !1291
  br i1 %104, label %105, label %114, !dbg !1291

; <label>:105                                     ; preds = %93
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %io1}, metadata !1293), !dbg !1296
  %106 = load %struct.lua_TValue** %top, align 4, !dbg !1296
  %107 = getelementptr inbounds %struct.lua_TValue* %106, i32 -2, !dbg !1296
  store %struct.lua_TValue* %107, %struct.lua_TValue** %io1, align 4, !dbg !1296
  %108 = load %struct.lua_TValue** %io1, align 4, !dbg !1296
  %109 = load %struct.lua_TValue** %top, align 4, !dbg !1296
  %110 = getelementptr inbounds %struct.lua_TValue* %109, i32 -1, !dbg !1296
  %111 = bitcast %struct.lua_TValue* %108 to i8*, !dbg !1296
  %112 = bitcast %struct.lua_TValue* %110 to i8*, !dbg !1296
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %111, i8* %112, i32 16, i32 8, i1 false), !dbg !1296
  %113 = load %struct.lua_State** %1, align 4, !dbg !1296
  br label %284, !dbg !1297

; <label>:114                                     ; preds = %93, %87
  call void @llvm.dbg.declare(metadata !{i32* %tl}, metadata !1298), !dbg !1300
  %115 = load %struct.lua_TValue** %top, align 4, !dbg !1301
  %116 = getelementptr inbounds %struct.lua_TValue* %115, i32 -1, !dbg !1301
  %117 = getelementptr inbounds %struct.lua_TValue* %116, i32 0, i32 0, !dbg !1301
  %118 = bitcast %union.Value* %117 to %struct.GCObject**, !dbg !1301
  %119 = load %struct.GCObject** %118, align 4, !dbg !1301
  %120 = bitcast %struct.GCObject* %119 to %union.GCUnion*, !dbg !1301
  %121 = bitcast %union.GCUnion* %120 to %struct.TString*, !dbg !1301
  %122 = getelementptr inbounds %struct.TString* %121, i32 0, i32 1, !dbg !1301
  %123 = load i8* %122, align 1, !dbg !1301
  %124 = zext i8 %123 to i32, !dbg !1301
  %125 = icmp eq i32 %124, 4, !dbg !1301
  br i1 %125, label %126, label %137, !dbg !1301

; <label>:126                                     ; preds = %114
  %127 = load %struct.lua_TValue** %top, align 4, !dbg !1302
  %128 = getelementptr inbounds %struct.lua_TValue* %127, i32 -1, !dbg !1302
  %129 = getelementptr inbounds %struct.lua_TValue* %128, i32 0, i32 0, !dbg !1302
  %130 = bitcast %union.Value* %129 to %struct.GCObject**, !dbg !1302
  %131 = load %struct.GCObject** %130, align 4, !dbg !1302
  %132 = bitcast %struct.GCObject* %131 to %union.GCUnion*, !dbg !1302
  %133 = bitcast %union.GCUnion* %132 to %struct.TString*, !dbg !1302
  %134 = getelementptr inbounds %struct.TString* %133, i32 0, i32 4, !dbg !1302
  %135 = load i8* %134, align 1, !dbg !1302
  %136 = zext i8 %135 to i32, !dbg !1302
  br label %148, !dbg !1302

; <label>:137                                     ; preds = %114
  %138 = load %struct.lua_TValue** %top, align 4, !dbg !1304
  %139 = getelementptr inbounds %struct.lua_TValue* %138, i32 -1, !dbg !1304
  %140 = getelementptr inbounds %struct.lua_TValue* %139, i32 0, i32 0, !dbg !1304
  %141 = bitcast %union.Value* %140 to %struct.GCObject**, !dbg !1304
  %142 = load %struct.GCObject** %141, align 4, !dbg !1304
  %143 = bitcast %struct.GCObject* %142 to %union.GCUnion*, !dbg !1304
  %144 = bitcast %union.GCUnion* %143 to %struct.TString*, !dbg !1304
  %145 = getelementptr inbounds %struct.TString* %144, i32 0, i32 6, !dbg !1304
  %146 = bitcast %union.anon.3* %145 to i32*, !dbg !1304
  %147 = load i32* %146, align 4, !dbg !1304
  br label %148, !dbg !1304

; <label>:148                                     ; preds = %137, %126
  %149 = phi i32 [ %136, %126 ], [ %147, %137 ], !dbg !1301
  store i32 %149, i32* %tl, align 4, !dbg !1306
  call void @llvm.dbg.declare(metadata !{%struct.TString** %ts}, metadata !1309), !dbg !1310
  store i32 1, i32* %n, align 4, !dbg !1311
  br label %150, !dbg !1311

; <label>:150                                     ; preds = %242, %148
  %151 = load i32* %n, align 4, !dbg !1313
  %152 = load i32* %2, align 4, !dbg !1313
  %153 = icmp slt i32 %151, %152, !dbg !1313
  br i1 %153, label %154, label %185, !dbg !1313

; <label>:154                                     ; preds = %150
  %155 = load %struct.lua_TValue** %top, align 4, !dbg !1316
  %156 = load i32* %n, align 4, !dbg !1316
  %157 = sub i32 0, %156, !dbg !1316
  %158 = getelementptr inbounds %struct.lua_TValue* %155, i32 %157, !dbg !1316
  %159 = getelementptr inbounds %struct.lua_TValue* %158, i32 -1, !dbg !1316
  %160 = getelementptr inbounds %struct.lua_TValue* %159, i32 0, i32 1, !dbg !1316
  %161 = load i32* %160, align 4, !dbg !1316
  %162 = and i32 %161, 15, !dbg !1316
  %163 = icmp eq i32 %162, 4, !dbg !1316
  br i1 %163, label %183, label %164, !dbg !1316

; <label>:164                                     ; preds = %154
  %165 = load %struct.lua_TValue** %top, align 4, !dbg !1318
  %166 = load i32* %n, align 4, !dbg !1318
  %167 = sub i32 0, %166, !dbg !1318
  %168 = getelementptr inbounds %struct.lua_TValue* %165, i32 %167, !dbg !1318
  %169 = getelementptr inbounds %struct.lua_TValue* %168, i32 -1, !dbg !1318
  %170 = getelementptr inbounds %struct.lua_TValue* %169, i32 0, i32 1, !dbg !1318
  %171 = load i32* %170, align 4, !dbg !1318
  %172 = and i32 %171, 15, !dbg !1318
  %173 = icmp eq i32 %172, 3, !dbg !1318
  br i1 %173, label %174, label %181, !dbg !1318

; <label>:174                                     ; preds = %164
  %175 = load %struct.lua_State** %1, align 4, !dbg !1320
  %176 = load %struct.lua_TValue** %top, align 4, !dbg !1320
  %177 = load i32* %n, align 4, !dbg !1320
  %178 = sub i32 0, %177, !dbg !1320
  %179 = getelementptr inbounds %struct.lua_TValue* %176, i32 %178, !dbg !1320
  %180 = getelementptr inbounds %struct.lua_TValue* %179, i32 -1, !dbg !1320
  call void @luaO_tostring(%struct.lua_State* %175, %struct.lua_TValue* %180), !dbg !1320
  br label %181

; <label>:181                                     ; preds = %174, %164
  %182 = phi i1 [ false, %164 ], [ true, %174 ]
  br label %183, !dbg !1322

; <label>:183                                     ; preds = %181, %154
  %184 = phi i1 [ true, %154 ], [ %182, %181 ]
  br label %185

; <label>:185                                     ; preds = %183, %150
  %186 = phi i1 [ false, %150 ], [ %184, %183 ]
  br i1 %186, label %187, label %245, !dbg !1324

; <label>:187                                     ; preds = %185
  call void @llvm.dbg.declare(metadata !{i32* %l}, metadata !1326), !dbg !1328
  %188 = load %struct.lua_TValue** %top, align 4, !dbg !1329
  %189 = load i32* %n, align 4, !dbg !1329
  %190 = sub i32 0, %189, !dbg !1329
  %191 = getelementptr inbounds %struct.lua_TValue* %188, i32 %190, !dbg !1329
  %192 = getelementptr inbounds %struct.lua_TValue* %191, i32 -1, !dbg !1329
  %193 = getelementptr inbounds %struct.lua_TValue* %192, i32 0, i32 0, !dbg !1329
  %194 = bitcast %union.Value* %193 to %struct.GCObject**, !dbg !1329
  %195 = load %struct.GCObject** %194, align 4, !dbg !1329
  %196 = bitcast %struct.GCObject* %195 to %union.GCUnion*, !dbg !1329
  %197 = bitcast %union.GCUnion* %196 to %struct.TString*, !dbg !1329
  %198 = getelementptr inbounds %struct.TString* %197, i32 0, i32 1, !dbg !1329
  %199 = load i8* %198, align 1, !dbg !1329
  %200 = zext i8 %199 to i32, !dbg !1329
  %201 = icmp eq i32 %200, 4, !dbg !1329
  br i1 %201, label %202, label %216, !dbg !1329

; <label>:202                                     ; preds = %187
  %203 = load %struct.lua_TValue** %top, align 4, !dbg !1330
  %204 = load i32* %n, align 4, !dbg !1330
  %205 = sub i32 0, %204, !dbg !1330
  %206 = getelementptr inbounds %struct.lua_TValue* %203, i32 %205, !dbg !1330
  %207 = getelementptr inbounds %struct.lua_TValue* %206, i32 -1, !dbg !1330
  %208 = getelementptr inbounds %struct.lua_TValue* %207, i32 0, i32 0, !dbg !1330
  %209 = bitcast %union.Value* %208 to %struct.GCObject**, !dbg !1330
  %210 = load %struct.GCObject** %209, align 4, !dbg !1330
  %211 = bitcast %struct.GCObject* %210 to %union.GCUnion*, !dbg !1330
  %212 = bitcast %union.GCUnion* %211 to %struct.TString*, !dbg !1330
  %213 = getelementptr inbounds %struct.TString* %212, i32 0, i32 4, !dbg !1330
  %214 = load i8* %213, align 1, !dbg !1330
  %215 = zext i8 %214 to i32, !dbg !1330
  br label %230, !dbg !1330

; <label>:216                                     ; preds = %187
  %217 = load %struct.lua_TValue** %top, align 4, !dbg !1332
  %218 = load i32* %n, align 4, !dbg !1332
  %219 = sub i32 0, %218, !dbg !1332
  %220 = getelementptr inbounds %struct.lua_TValue* %217, i32 %219, !dbg !1332
  %221 = getelementptr inbounds %struct.lua_TValue* %220, i32 -1, !dbg !1332
  %222 = getelementptr inbounds %struct.lua_TValue* %221, i32 0, i32 0, !dbg !1332
  %223 = bitcast %union.Value* %222 to %struct.GCObject**, !dbg !1332
  %224 = load %struct.GCObject** %223, align 4, !dbg !1332
  %225 = bitcast %struct.GCObject* %224 to %union.GCUnion*, !dbg !1332
  %226 = bitcast %union.GCUnion* %225 to %struct.TString*, !dbg !1332
  %227 = getelementptr inbounds %struct.TString* %226, i32 0, i32 6, !dbg !1332
  %228 = bitcast %union.anon.3* %227 to i32*, !dbg !1332
  %229 = load i32* %228, align 4, !dbg !1332
  br label %230, !dbg !1332

; <label>:230                                     ; preds = %216, %202
  %231 = phi i32 [ %215, %202 ], [ %229, %216 ], !dbg !1329
  store i32 %231, i32* %l, align 4, !dbg !1334
  %232 = load i32* %l, align 4, !dbg !1337
  %233 = load i32* %tl, align 4, !dbg !1337
  %234 = sub i32 -1, %233, !dbg !1337
  %235 = icmp uge i32 %232, %234, !dbg !1337
  br i1 %235, label %236, label %238, !dbg !1337

; <label>:236                                     ; preds = %230
  %237 = load %struct.lua_State** %1, align 4, !dbg !1339
  call void (%struct.lua_State*, i8*, ...)* @luaG_runerror(%struct.lua_State* %237, i8* getelementptr inbounds ([23 x i8]* @.str3, i32 0, i32 0)) #7, !dbg !1339
  unreachable, !dbg !1339

; <label>:238                                     ; preds = %230
  %239 = load i32* %l, align 4, !dbg !1340
  %240 = load i32* %tl, align 4, !dbg !1340
  %241 = add i32 %240, %239, !dbg !1340
  store i32 %241, i32* %tl, align 4, !dbg !1340
  br label %242, !dbg !1341

; <label>:242                                     ; preds = %238
  %243 = load i32* %n, align 4, !dbg !1342
  %244 = add nsw i32 %243, 1, !dbg !1342
  store i32 %244, i32* %n, align 4, !dbg !1342
  br label %150, !dbg !1342

; <label>:245                                     ; preds = %185
  %246 = load i32* %tl, align 4, !dbg !1343
  %247 = icmp ule i32 %246, 40, !dbg !1343
  br i1 %247, label %248, label %256, !dbg !1343

; <label>:248                                     ; preds = %245
  call void @llvm.dbg.declare(metadata !{[40 x i8]* %buff}, metadata !1345), !dbg !1350
  %249 = load %struct.lua_TValue** %top, align 4, !dbg !1351
  %250 = load i32* %n, align 4, !dbg !1351
  %251 = getelementptr inbounds [40 x i8]* %buff, i32 0, i32 0, !dbg !1351
  call void @copy2buff(%struct.lua_TValue* %249, i32 %250, i8* %251), !dbg !1351
  %252 = load %struct.lua_State** %1, align 4, !dbg !1352
  %253 = getelementptr inbounds [40 x i8]* %buff, i32 0, i32 0, !dbg !1352
  %254 = load i32* %tl, align 4, !dbg !1352
  %255 = call %struct.TString* @luaS_newlstr(%struct.lua_State* %252, i8* %253, i32 %254), !dbg !1352
  store %struct.TString* %255, %struct.TString** %ts, align 4, !dbg !1352
  br label %265, !dbg !1353

; <label>:256                                     ; preds = %245
  %257 = load %struct.lua_State** %1, align 4, !dbg !1354
  %258 = load i32* %tl, align 4, !dbg !1354
  %259 = call %struct.TString* @luaS_createlngstrobj(%struct.lua_State* %257, i32 %258), !dbg !1354
  store %struct.TString* %259, %struct.TString** %ts, align 4, !dbg !1354
  %260 = load %struct.lua_TValue** %top, align 4, !dbg !1356
  %261 = load i32* %n, align 4, !dbg !1356
  %262 = load %struct.TString** %ts, align 4, !dbg !1356
  %263 = bitcast %struct.TString* %262 to i8*, !dbg !1356
  %264 = getelementptr inbounds i8* %263, i32 16, !dbg !1356
  call void @copy2buff(%struct.lua_TValue* %260, i32 %261, i8* %264), !dbg !1356
  br label %265

; <label>:265                                     ; preds = %256, %248
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %io}, metadata !1357), !dbg !1359
  %266 = load %struct.lua_TValue** %top, align 4, !dbg !1359
  %267 = load i32* %n, align 4, !dbg !1359
  %268 = sub i32 0, %267, !dbg !1359
  %269 = getelementptr inbounds %struct.lua_TValue* %266, i32 %268, !dbg !1359
  store %struct.lua_TValue* %269, %struct.lua_TValue** %io, align 4, !dbg !1359
  call void @llvm.dbg.declare(metadata !{%struct.TString** %x_}, metadata !1360), !dbg !1359
  %270 = load %struct.TString** %ts, align 4, !dbg !1359
  store %struct.TString* %270, %struct.TString** %x_, align 4, !dbg !1359
  %271 = load %struct.TString** %x_, align 4, !dbg !1359
  %272 = bitcast %struct.TString* %271 to %union.GCUnion*, !dbg !1359
  %273 = bitcast %union.GCUnion* %272 to %struct.GCObject*, !dbg !1359
  %274 = load %struct.lua_TValue** %io, align 4, !dbg !1359
  %275 = getelementptr inbounds %struct.lua_TValue* %274, i32 0, i32 0, !dbg !1359
  %276 = bitcast %union.Value* %275 to %struct.GCObject**, !dbg !1359
  store %struct.GCObject* %273, %struct.GCObject** %276, align 4, !dbg !1359
  %277 = load %struct.TString** %x_, align 4, !dbg !1359
  %278 = getelementptr inbounds %struct.TString* %277, i32 0, i32 1, !dbg !1359
  %279 = load i8* %278, align 1, !dbg !1359
  %280 = zext i8 %279 to i32, !dbg !1359
  %281 = or i32 %280, 64, !dbg !1359
  %282 = load %struct.lua_TValue** %io, align 4, !dbg !1359
  %283 = getelementptr inbounds %struct.lua_TValue* %282, i32 0, i32 1, !dbg !1359
  store i32 %281, i32* %283, align 4, !dbg !1359
  br label %284

; <label>:284                                     ; preds = %265, %105
  br label %285

; <label>:285                                     ; preds = %284, %84
  br label %286

; <label>:286                                     ; preds = %285, %38
  %287 = load i32* %n, align 4, !dbg !1361
  %288 = sub nsw i32 %287, 1, !dbg !1361
  %289 = load i32* %2, align 4, !dbg !1361
  %290 = sub nsw i32 %289, %288, !dbg !1361
  store i32 %290, i32* %2, align 4, !dbg !1361
  %291 = load i32* %n, align 4, !dbg !1362
  %292 = sub nsw i32 %291, 1, !dbg !1362
  %293 = load %struct.lua_State** %1, align 4, !dbg !1362
  %294 = getelementptr inbounds %struct.lua_State* %293, i32 0, i32 5, !dbg !1362
  %295 = load %struct.lua_TValue** %294, align 4, !dbg !1362
  %296 = sub i32 0, %292, !dbg !1362
  %297 = getelementptr inbounds %struct.lua_TValue* %295, i32 %296, !dbg !1362
  store %struct.lua_TValue* %297, %struct.lua_TValue** %294, align 4, !dbg !1362
  br label %298, !dbg !1363

; <label>:298                                     ; preds = %286
  %299 = load i32* %2, align 4, !dbg !1364
  %300 = icmp sgt i32 %299, 1, !dbg !1364
  br i1 %300, label %3, label %301, !dbg !1364

; <label>:301                                     ; preds = %298
  ret void, !dbg !1366
}

declare hidden void @luaO_tostring(%struct.lua_State*, %struct.lua_TValue*) #2

declare hidden void @luaT_trybinTM(%struct.lua_State*, %struct.lua_TValue*, %struct.lua_TValue*, %struct.lua_TValue*, i32) #2

; Function Attrs: nounwind
define internal void @copy2buff(%struct.lua_TValue* %top, i32 %n, i8* %buff) #0 {
  %1 = alloca %struct.lua_TValue*, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 4
  %tl = alloca i32, align 4
  %l = alloca i32, align 4
  store %struct.lua_TValue* %top, %struct.lua_TValue** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %1}, metadata !1367), !dbg !1368
  store i32 %n, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !1369), !dbg !1370
  store i8* %buff, i8** %3, align 4
  call void @llvm.dbg.declare(metadata !{i8** %3}, metadata !1371), !dbg !1372
  call void @llvm.dbg.declare(metadata !{i32* %tl}, metadata !1373), !dbg !1374
  store i32 0, i32* %tl, align 4, !dbg !1375
  br label %4, !dbg !1376

; <label>:4                                       ; preds = %65, %0
  call void @llvm.dbg.declare(metadata !{i32* %l}, metadata !1377), !dbg !1379
  %5 = load %struct.lua_TValue** %1, align 4, !dbg !1380
  %6 = load i32* %2, align 4, !dbg !1380
  %7 = sub i32 0, %6, !dbg !1380
  %8 = getelementptr inbounds %struct.lua_TValue* %5, i32 %7, !dbg !1380
  %9 = getelementptr inbounds %struct.lua_TValue* %8, i32 0, i32 0, !dbg !1380
  %10 = bitcast %union.Value* %9 to %struct.GCObject**, !dbg !1380
  %11 = load %struct.GCObject** %10, align 4, !dbg !1380
  %12 = bitcast %struct.GCObject* %11 to %union.GCUnion*, !dbg !1380
  %13 = bitcast %union.GCUnion* %12 to %struct.TString*, !dbg !1380
  %14 = getelementptr inbounds %struct.TString* %13, i32 0, i32 1, !dbg !1380
  %15 = load i8* %14, align 1, !dbg !1380
  %16 = zext i8 %15 to i32, !dbg !1380
  %17 = icmp eq i32 %16, 4, !dbg !1380
  br i1 %17, label %18, label %31, !dbg !1380

; <label>:18                                      ; preds = %4
  %19 = load %struct.lua_TValue** %1, align 4, !dbg !1381
  %20 = load i32* %2, align 4, !dbg !1381
  %21 = sub i32 0, %20, !dbg !1381
  %22 = getelementptr inbounds %struct.lua_TValue* %19, i32 %21, !dbg !1381
  %23 = getelementptr inbounds %struct.lua_TValue* %22, i32 0, i32 0, !dbg !1381
  %24 = bitcast %union.Value* %23 to %struct.GCObject**, !dbg !1381
  %25 = load %struct.GCObject** %24, align 4, !dbg !1381
  %26 = bitcast %struct.GCObject* %25 to %union.GCUnion*, !dbg !1381
  %27 = bitcast %union.GCUnion* %26 to %struct.TString*, !dbg !1381
  %28 = getelementptr inbounds %struct.TString* %27, i32 0, i32 4, !dbg !1381
  %29 = load i8* %28, align 1, !dbg !1381
  %30 = zext i8 %29 to i32, !dbg !1381
  br label %44, !dbg !1381

; <label>:31                                      ; preds = %4
  %32 = load %struct.lua_TValue** %1, align 4, !dbg !1383
  %33 = load i32* %2, align 4, !dbg !1383
  %34 = sub i32 0, %33, !dbg !1383
  %35 = getelementptr inbounds %struct.lua_TValue* %32, i32 %34, !dbg !1383
  %36 = getelementptr inbounds %struct.lua_TValue* %35, i32 0, i32 0, !dbg !1383
  %37 = bitcast %union.Value* %36 to %struct.GCObject**, !dbg !1383
  %38 = load %struct.GCObject** %37, align 4, !dbg !1383
  %39 = bitcast %struct.GCObject* %38 to %union.GCUnion*, !dbg !1383
  %40 = bitcast %union.GCUnion* %39 to %struct.TString*, !dbg !1383
  %41 = getelementptr inbounds %struct.TString* %40, i32 0, i32 6, !dbg !1383
  %42 = bitcast %union.anon.3* %41 to i32*, !dbg !1383
  %43 = load i32* %42, align 4, !dbg !1383
  br label %44, !dbg !1383

; <label>:44                                      ; preds = %31, %18
  %45 = phi i32 [ %30, %18 ], [ %43, %31 ], !dbg !1380
  store i32 %45, i32* %l, align 4, !dbg !1385
  %46 = load i8** %3, align 4, !dbg !1388
  %47 = load i32* %tl, align 4, !dbg !1388
  %48 = getelementptr inbounds i8* %46, i32 %47, !dbg !1388
  %49 = load %struct.lua_TValue** %1, align 4, !dbg !1388
  %50 = load i32* %2, align 4, !dbg !1388
  %51 = sub i32 0, %50, !dbg !1388
  %52 = getelementptr inbounds %struct.lua_TValue* %49, i32 %51, !dbg !1388
  %53 = getelementptr inbounds %struct.lua_TValue* %52, i32 0, i32 0, !dbg !1388
  %54 = bitcast %union.Value* %53 to %struct.GCObject**, !dbg !1388
  %55 = load %struct.GCObject** %54, align 4, !dbg !1388
  %56 = bitcast %struct.GCObject* %55 to %union.GCUnion*, !dbg !1388
  %57 = bitcast %union.GCUnion* %56 to %struct.TString*, !dbg !1388
  %58 = bitcast %struct.TString* %57 to i8*, !dbg !1388
  %59 = getelementptr inbounds i8* %58, i32 16, !dbg !1388
  %60 = load i32* %l, align 4, !dbg !1388
  %61 = mul i32 %60, 1, !dbg !1388
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %48, i8* %59, i32 %61, i32 1, i1 false), !dbg !1388
  %62 = load i32* %l, align 4, !dbg !1389
  %63 = load i32* %tl, align 4, !dbg !1389
  %64 = add i32 %63, %62, !dbg !1389
  store i32 %64, i32* %tl, align 4, !dbg !1389
  br label %65, !dbg !1390

; <label>:65                                      ; preds = %44
  %66 = load i32* %2, align 4, !dbg !1391
  %67 = add nsw i32 %66, -1, !dbg !1391
  store i32 %67, i32* %2, align 4, !dbg !1391
  %68 = icmp sgt i32 %67, 0, !dbg !1391
  br i1 %68, label %4, label %69, !dbg !1391

; <label>:69                                      ; preds = %65
  ret void, !dbg !1393
}

declare hidden %struct.TString* @luaS_newlstr(%struct.lua_State*, i8*, i32) #2

declare hidden %struct.TString* @luaS_createlngstrobj(%struct.lua_State*, i32) #2

; Function Attrs: nounwind
define hidden void @luaV_objlen(%struct.lua_State* %L, %struct.lua_TValue* %ra, %struct.lua_TValue* %rb) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca %struct.lua_TValue*, align 4
  %3 = alloca %struct.lua_TValue*, align 4
  %tm = alloca %struct.lua_TValue*, align 4
  %h = alloca %struct.Table*, align 4
  %io = alloca %struct.lua_TValue*, align 4
  %io1 = alloca %struct.lua_TValue*, align 4
  %io2 = alloca %struct.lua_TValue*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !1394), !dbg !1395
  store %struct.lua_TValue* %ra, %struct.lua_TValue** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %2}, metadata !1396), !dbg !1397
  store %struct.lua_TValue* %rb, %struct.lua_TValue** %3, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %3}, metadata !1398), !dbg !1399
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %tm}, metadata !1400), !dbg !1401
  %4 = load %struct.lua_TValue** %3, align 4, !dbg !1402
  %5 = getelementptr inbounds %struct.lua_TValue* %4, i32 0, i32 1, !dbg !1402
  %6 = load i32* %5, align 4, !dbg !1402
  %7 = and i32 %6, 63, !dbg !1402
  switch i32 %7, label %91 [
    i32 5, label %8
    i32 4, label %58
    i32 20, label %74
  ], !dbg !1402

; <label>:8                                       ; preds = %0
  call void @llvm.dbg.declare(metadata !{%struct.Table** %h}, metadata !1403), !dbg !1406
  %9 = load %struct.lua_TValue** %3, align 4, !dbg !1407
  %10 = getelementptr inbounds %struct.lua_TValue* %9, i32 0, i32 0, !dbg !1407
  %11 = bitcast %union.Value* %10 to %struct.GCObject**, !dbg !1407
  %12 = load %struct.GCObject** %11, align 4, !dbg !1407
  %13 = bitcast %struct.GCObject* %12 to %union.GCUnion*, !dbg !1407
  %14 = bitcast %union.GCUnion* %13 to %struct.Table*, !dbg !1407
  store %struct.Table* %14, %struct.Table** %h, align 4, !dbg !1407
  %15 = load %struct.Table** %h, align 4, !dbg !1408
  %16 = getelementptr inbounds %struct.Table* %15, i32 0, i32 9, !dbg !1408
  %17 = load %struct.Table** %16, align 4, !dbg !1408
  %18 = icmp eq %struct.Table* %17, null, !dbg !1408
  br i1 %18, label %19, label %20, !dbg !1408

; <label>:19                                      ; preds = %8
  br label %43, !dbg !1409

; <label>:20                                      ; preds = %8
  %21 = load %struct.Table** %h, align 4, !dbg !1411
  %22 = getelementptr inbounds %struct.Table* %21, i32 0, i32 9, !dbg !1411
  %23 = load %struct.Table** %22, align 4, !dbg !1411
  %24 = getelementptr inbounds %struct.Table* %23, i32 0, i32 3, !dbg !1411
  %25 = load i8* %24, align 1, !dbg !1411
  %26 = zext i8 %25 to i32, !dbg !1411
  %27 = and i32 %26, 16, !dbg !1411
  %28 = icmp ne i32 %27, 0, !dbg !1411
  br i1 %28, label %29, label %30, !dbg !1411

; <label>:29                                      ; preds = %20
  br label %41, !dbg !1413

; <label>:30                                      ; preds = %20
  %31 = load %struct.Table** %h, align 4, !dbg !1415
  %32 = getelementptr inbounds %struct.Table* %31, i32 0, i32 9, !dbg !1415
  %33 = load %struct.Table** %32, align 4, !dbg !1415
  %34 = load %struct.lua_State** %1, align 4, !dbg !1415
  %35 = getelementptr inbounds %struct.lua_State* %34, i32 0, i32 6, !dbg !1415
  %36 = load %struct.global_State** %35, align 4, !dbg !1415
  %37 = getelementptr inbounds %struct.global_State* %36, i32 0, i32 31, !dbg !1415
  %38 = getelementptr inbounds [24 x %struct.TString*]* %37, i32 0, i32 4, !dbg !1415
  %39 = load %struct.TString** %38, align 4, !dbg !1415
  %40 = call %struct.lua_TValue* @luaT_gettm(%struct.Table* %33, i32 4, %struct.TString* %39), !dbg !1415
  br label %41, !dbg !1415

; <label>:41                                      ; preds = %30, %29
  %42 = phi %struct.lua_TValue* [ null, %29 ], [ %40, %30 ], !dbg !1417
  br label %43, !dbg !1418

; <label>:43                                      ; preds = %41, %19
  %44 = phi %struct.lua_TValue* [ null, %19 ], [ %42, %41 ], !dbg !1417
  store %struct.lua_TValue* %44, %struct.lua_TValue** %tm, align 4, !dbg !1421
  %45 = load %struct.lua_TValue** %tm, align 4, !dbg !1424
  %46 = icmp ne %struct.lua_TValue* %45, null, !dbg !1424
  br i1 %46, label %47, label %48, !dbg !1424

; <label>:47                                      ; preds = %43
  br label %103, !dbg !1426

; <label>:48                                      ; preds = %43
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %io}, metadata !1428), !dbg !1430
  %49 = load %struct.lua_TValue** %2, align 4, !dbg !1430
  store %struct.lua_TValue* %49, %struct.lua_TValue** %io, align 4, !dbg !1430
  %50 = load %struct.Table** %h, align 4, !dbg !1430
  %51 = call i32 @luaH_getn(%struct.Table* %50), !dbg !1430
  %52 = sext i32 %51 to i64, !dbg !1430
  %53 = load %struct.lua_TValue** %io, align 4, !dbg !1430
  %54 = getelementptr inbounds %struct.lua_TValue* %53, i32 0, i32 0, !dbg !1430
  %55 = bitcast %union.Value* %54 to i64*, !dbg !1430
  store i64 %52, i64* %55, align 8, !dbg !1430
  %56 = load %struct.lua_TValue** %io, align 4, !dbg !1430
  %57 = getelementptr inbounds %struct.lua_TValue* %56, i32 0, i32 1, !dbg !1430
  store i32 19, i32* %57, align 4, !dbg !1430
  br label %109, !dbg !1431

; <label>:58                                      ; preds = %0
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %io1}, metadata !1432), !dbg !1435
  %59 = load %struct.lua_TValue** %2, align 4, !dbg !1435
  store %struct.lua_TValue* %59, %struct.lua_TValue** %io1, align 4, !dbg !1435
  %60 = load %struct.lua_TValue** %3, align 4, !dbg !1435
  %61 = getelementptr inbounds %struct.lua_TValue* %60, i32 0, i32 0, !dbg !1435
  %62 = bitcast %union.Value* %61 to %struct.GCObject**, !dbg !1435
  %63 = load %struct.GCObject** %62, align 4, !dbg !1435
  %64 = bitcast %struct.GCObject* %63 to %union.GCUnion*, !dbg !1435
  %65 = bitcast %union.GCUnion* %64 to %struct.TString*, !dbg !1435
  %66 = getelementptr inbounds %struct.TString* %65, i32 0, i32 4, !dbg !1435
  %67 = load i8* %66, align 1, !dbg !1435
  %68 = zext i8 %67 to i64, !dbg !1435
  %69 = load %struct.lua_TValue** %io1, align 4, !dbg !1435
  %70 = getelementptr inbounds %struct.lua_TValue* %69, i32 0, i32 0, !dbg !1435
  %71 = bitcast %union.Value* %70 to i64*, !dbg !1435
  store i64 %68, i64* %71, align 8, !dbg !1435
  %72 = load %struct.lua_TValue** %io1, align 4, !dbg !1435
  %73 = getelementptr inbounds %struct.lua_TValue* %72, i32 0, i32 1, !dbg !1435
  store i32 19, i32* %73, align 4, !dbg !1435
  br label %109, !dbg !1436

; <label>:74                                      ; preds = %0
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %io2}, metadata !1437), !dbg !1440
  %75 = load %struct.lua_TValue** %2, align 4, !dbg !1440
  store %struct.lua_TValue* %75, %struct.lua_TValue** %io2, align 4, !dbg !1440
  %76 = load %struct.lua_TValue** %3, align 4, !dbg !1440
  %77 = getelementptr inbounds %struct.lua_TValue* %76, i32 0, i32 0, !dbg !1440
  %78 = bitcast %union.Value* %77 to %struct.GCObject**, !dbg !1440
  %79 = load %struct.GCObject** %78, align 4, !dbg !1440
  %80 = bitcast %struct.GCObject* %79 to %union.GCUnion*, !dbg !1440
  %81 = bitcast %union.GCUnion* %80 to %struct.TString*, !dbg !1440
  %82 = getelementptr inbounds %struct.TString* %81, i32 0, i32 6, !dbg !1440
  %83 = bitcast %union.anon.3* %82 to i32*, !dbg !1440
  %84 = load i32* %83, align 4, !dbg !1440
  %85 = zext i32 %84 to i64, !dbg !1440
  %86 = load %struct.lua_TValue** %io2, align 4, !dbg !1440
  %87 = getelementptr inbounds %struct.lua_TValue* %86, i32 0, i32 0, !dbg !1440
  %88 = bitcast %union.Value* %87 to i64*, !dbg !1440
  store i64 %85, i64* %88, align 8, !dbg !1440
  %89 = load %struct.lua_TValue** %io2, align 4, !dbg !1440
  %90 = getelementptr inbounds %struct.lua_TValue* %89, i32 0, i32 1, !dbg !1440
  store i32 19, i32* %90, align 4, !dbg !1440
  br label %109, !dbg !1441

; <label>:91                                      ; preds = %0
  %92 = load %struct.lua_State** %1, align 4, !dbg !1442
  %93 = load %struct.lua_TValue** %3, align 4, !dbg !1442
  %94 = call %struct.lua_TValue* @luaT_gettmbyobj(%struct.lua_State* %92, %struct.lua_TValue* %93, i32 4), !dbg !1442
  store %struct.lua_TValue* %94, %struct.lua_TValue** %tm, align 4, !dbg !1442
  %95 = load %struct.lua_TValue** %tm, align 4, !dbg !1444
  %96 = getelementptr inbounds %struct.lua_TValue* %95, i32 0, i32 1, !dbg !1444
  %97 = load i32* %96, align 4, !dbg !1444
  %98 = icmp eq i32 %97, 0, !dbg !1444
  br i1 %98, label %99, label %102, !dbg !1444

; <label>:99                                      ; preds = %91
  %100 = load %struct.lua_State** %1, align 4, !dbg !1446
  %101 = load %struct.lua_TValue** %3, align 4, !dbg !1446
  call void @luaG_typeerror(%struct.lua_State* %100, %struct.lua_TValue* %101, i8* getelementptr inbounds ([14 x i8]* @.str4, i32 0, i32 0)) #7, !dbg !1446
  unreachable, !dbg !1446

; <label>:102                                     ; preds = %91
  br label %103, !dbg !1447

; <label>:103                                     ; preds = %102, %47
  %104 = load %struct.lua_State** %1, align 4, !dbg !1448
  %105 = load %struct.lua_TValue** %tm, align 4, !dbg !1448
  %106 = load %struct.lua_TValue** %3, align 4, !dbg !1448
  %107 = load %struct.lua_TValue** %3, align 4, !dbg !1448
  %108 = load %struct.lua_TValue** %2, align 4, !dbg !1448
  call void @luaT_callTM(%struct.lua_State* %104, %struct.lua_TValue* %105, %struct.lua_TValue* %106, %struct.lua_TValue* %107, %struct.lua_TValue* %108, i32 1), !dbg !1448
  br label %109, !dbg !1449

; <label>:109                                     ; preds = %103, %74, %58, %48
  ret void, !dbg !1450
}

declare hidden i32 @luaH_getn(%struct.Table*) #2

; Function Attrs: nounwind
define hidden i64 @luaV_div(%struct.lua_State* %L, i64 %m, i64 %n) #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.lua_State*, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %q = alloca i64, align 8
  store %struct.lua_State* %L, %struct.lua_State** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %2}, metadata !1452), !dbg !1453
  store i64 %m, i64* %3, align 8
  call void @llvm.dbg.declare(metadata !{i64* %3}, metadata !1454), !dbg !1455
  store i64 %n, i64* %4, align 8
  call void @llvm.dbg.declare(metadata !{i64* %4}, metadata !1456), !dbg !1457
  %5 = load i64* %4, align 8, !dbg !1458
  %6 = add i64 %5, 1, !dbg !1458
  %7 = icmp ule i64 %6, 1, !dbg !1458
  br i1 %7, label %8, label %16, !dbg !1458

; <label>:8                                       ; preds = %0
  %9 = load i64* %4, align 8, !dbg !1460
  %10 = icmp eq i64 %9, 0, !dbg !1460
  br i1 %10, label %11, label %13, !dbg !1460

; <label>:11                                      ; preds = %8
  %12 = load %struct.lua_State** %2, align 4, !dbg !1463
  call void (%struct.lua_State*, i8*, ...)* @luaG_runerror(%struct.lua_State* %12, i8* getelementptr inbounds ([26 x i8]* @.str5, i32 0, i32 0)) #7, !dbg !1463
  unreachable, !dbg !1463

; <label>:13                                      ; preds = %8
  %14 = load i64* %3, align 8, !dbg !1464
  %15 = sub i64 0, %14, !dbg !1464
  store i64 %15, i64* %1, !dbg !1464
  br label %34, !dbg !1464

; <label>:16                                      ; preds = %0
  call void @llvm.dbg.declare(metadata !{i64* %q}, metadata !1465), !dbg !1467
  %17 = load i64* %3, align 8, !dbg !1468
  %18 = load i64* %4, align 8, !dbg !1468
  %19 = sdiv i64 %17, %18, !dbg !1468
  store i64 %19, i64* %q, align 8, !dbg !1468
  %20 = load i64* %3, align 8, !dbg !1469
  %21 = load i64* %4, align 8, !dbg !1469
  %22 = xor i64 %20, %21, !dbg !1469
  %23 = icmp slt i64 %22, 0, !dbg !1469
  br i1 %23, label %24, label %32, !dbg !1469

; <label>:24                                      ; preds = %16
  %25 = load i64* %3, align 8, !dbg !1471
  %26 = load i64* %4, align 8, !dbg !1471
  %27 = srem i64 %25, %26, !dbg !1471
  %28 = icmp ne i64 %27, 0, !dbg !1471
  br i1 %28, label %29, label %32, !dbg !1471

; <label>:29                                      ; preds = %24
  %30 = load i64* %q, align 8, !dbg !1473
  %31 = sub nsw i64 %30, 1, !dbg !1473
  store i64 %31, i64* %q, align 8, !dbg !1473
  br label %32, !dbg !1473

; <label>:32                                      ; preds = %29, %24, %16
  %33 = load i64* %q, align 8, !dbg !1474
  store i64 %33, i64* %1, !dbg !1474
  br label %34, !dbg !1474

; <label>:34                                      ; preds = %32, %13
  %35 = load i64* %1, !dbg !1475
  ret i64 %35, !dbg !1475
}

; Function Attrs: nounwind
define hidden i64 @luaV_mod(%struct.lua_State* %L, i64 %m, i64 %n) #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.lua_State*, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %r = alloca i64, align 8
  store %struct.lua_State* %L, %struct.lua_State** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %2}, metadata !1476), !dbg !1477
  store i64 %m, i64* %3, align 8
  call void @llvm.dbg.declare(metadata !{i64* %3}, metadata !1478), !dbg !1479
  store i64 %n, i64* %4, align 8
  call void @llvm.dbg.declare(metadata !{i64* %4}, metadata !1480), !dbg !1481
  %5 = load i64* %4, align 8, !dbg !1482
  %6 = add i64 %5, 1, !dbg !1482
  %7 = icmp ule i64 %6, 1, !dbg !1482
  br i1 %7, label %8, label %14, !dbg !1482

; <label>:8                                       ; preds = %0
  %9 = load i64* %4, align 8, !dbg !1484
  %10 = icmp eq i64 %9, 0, !dbg !1484
  br i1 %10, label %11, label %13, !dbg !1484

; <label>:11                                      ; preds = %8
  %12 = load %struct.lua_State** %2, align 4, !dbg !1487
  call void (%struct.lua_State*, i8*, ...)* @luaG_runerror(%struct.lua_State* %12, i8* getelementptr inbounds ([26 x i8]* @.str6, i32 0, i32 0)) #7, !dbg !1487
  unreachable, !dbg !1487

; <label>:13                                      ; preds = %8
  store i64 0, i64* %1, !dbg !1488
  br label %31, !dbg !1488

; <label>:14                                      ; preds = %0
  call void @llvm.dbg.declare(metadata !{i64* %r}, metadata !1489), !dbg !1491
  %15 = load i64* %3, align 8, !dbg !1492
  %16 = load i64* %4, align 8, !dbg !1492
  %17 = srem i64 %15, %16, !dbg !1492
  store i64 %17, i64* %r, align 8, !dbg !1492
  %18 = load i64* %r, align 8, !dbg !1493
  %19 = icmp ne i64 %18, 0, !dbg !1493
  br i1 %19, label %20, label %29, !dbg !1493

; <label>:20                                      ; preds = %14
  %21 = load i64* %3, align 8, !dbg !1495
  %22 = load i64* %4, align 8, !dbg !1495
  %23 = xor i64 %21, %22, !dbg !1495
  %24 = icmp slt i64 %23, 0, !dbg !1495
  br i1 %24, label %25, label %29, !dbg !1495

; <label>:25                                      ; preds = %20
  %26 = load i64* %4, align 8, !dbg !1497
  %27 = load i64* %r, align 8, !dbg !1497
  %28 = add nsw i64 %27, %26, !dbg !1497
  store i64 %28, i64* %r, align 8, !dbg !1497
  br label %29, !dbg !1497

; <label>:29                                      ; preds = %25, %20, %14
  %30 = load i64* %r, align 8, !dbg !1498
  store i64 %30, i64* %1, !dbg !1498
  br label %31, !dbg !1498

; <label>:31                                      ; preds = %29, %13
  %32 = load i64* %1, !dbg !1499
  ret i64 %32, !dbg !1499
}

; Function Attrs: nounwind
define hidden i64 @luaV_shiftl(i64 %x, i64 %y) #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %x, i64* %2, align 8
  call void @llvm.dbg.declare(metadata !{i64* %2}, metadata !1500), !dbg !1501
  store i64 %y, i64* %3, align 8
  call void @llvm.dbg.declare(metadata !{i64* %3}, metadata !1502), !dbg !1503
  %4 = load i64* %3, align 8, !dbg !1504
  %5 = icmp slt i64 %4, 0, !dbg !1504
  br i1 %5, label %6, label %15, !dbg !1504

; <label>:6                                       ; preds = %0
  %7 = load i64* %3, align 8, !dbg !1506
  %8 = icmp sle i64 %7, -64, !dbg !1506
  br i1 %8, label %9, label %10, !dbg !1506

; <label>:9                                       ; preds = %6
  store i64 0, i64* %1, !dbg !1509
  br label %23, !dbg !1509

; <label>:10                                      ; preds = %6
  %11 = load i64* %2, align 8, !dbg !1511
  %12 = load i64* %3, align 8, !dbg !1511
  %13 = sub nsw i64 0, %12, !dbg !1511
  %14 = lshr i64 %11, %13, !dbg !1511
  store i64 %14, i64* %1, !dbg !1511
  br label %23, !dbg !1511

; <label>:15                                      ; preds = %0
  %16 = load i64* %3, align 8, !dbg !1512
  %17 = icmp sge i64 %16, 64, !dbg !1512
  br i1 %17, label %18, label %19, !dbg !1512

; <label>:18                                      ; preds = %15
  store i64 0, i64* %1, !dbg !1515
  br label %23, !dbg !1515

; <label>:19                                      ; preds = %15
  %20 = load i64* %2, align 8, !dbg !1517
  %21 = load i64* %3, align 8, !dbg !1517
  %22 = shl i64 %20, %21, !dbg !1517
  store i64 %22, i64* %1, !dbg !1517
  br label %23, !dbg !1517

; <label>:23                                      ; preds = %19, %18, %10, %9
  %24 = load i64* %1, !dbg !1518
  ret i64 %24, !dbg !1518
}

; Function Attrs: nounwind
define hidden void @luaV_finishOp(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %ci = alloca %struct.CallInfo*, align 4
  %base = alloca %struct.lua_TValue*, align 4
  %inst = alloca i32, align 4
  %op = alloca i32, align 4
  %io1 = alloca %struct.lua_TValue*, align 4
  %res = alloca i32, align 4
  %top = alloca %struct.lua_TValue*, align 4
  %b = alloca i32, align 4
  %total = alloca i32, align 4
  %io11 = alloca %struct.lua_TValue*, align 4
  %io12 = alloca %struct.lua_TValue*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !1519), !dbg !1520
  call void @llvm.dbg.declare(metadata !{%struct.CallInfo** %ci}, metadata !1521), !dbg !1522
  %2 = load %struct.lua_State** %1, align 4, !dbg !1523
  %3 = getelementptr inbounds %struct.lua_State* %2, i32 0, i32 7, !dbg !1523
  %4 = load %struct.CallInfo** %3, align 4, !dbg !1523
  store %struct.CallInfo* %4, %struct.CallInfo** %ci, align 4, !dbg !1523
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %base}, metadata !1524), !dbg !1525
  %5 = load %struct.CallInfo** %ci, align 4, !dbg !1526
  %6 = getelementptr inbounds %struct.CallInfo* %5, i32 0, i32 4, !dbg !1526
  %7 = bitcast %union.anon* %6 to %struct.anon*, !dbg !1526
  %8 = getelementptr inbounds %struct.anon* %7, i32 0, i32 0, !dbg !1526
  %9 = load %struct.lua_TValue** %8, align 4, !dbg !1526
  store %struct.lua_TValue* %9, %struct.lua_TValue** %base, align 4, !dbg !1526
  call void @llvm.dbg.declare(metadata !{i32* %inst}, metadata !1527), !dbg !1528
  %10 = load %struct.CallInfo** %ci, align 4, !dbg !1529
  %11 = getelementptr inbounds %struct.CallInfo* %10, i32 0, i32 4, !dbg !1529
  %12 = bitcast %union.anon* %11 to %struct.anon*, !dbg !1529
  %13 = getelementptr inbounds %struct.anon* %12, i32 0, i32 1, !dbg !1529
  %14 = load i32** %13, align 4, !dbg !1529
  %15 = getelementptr inbounds i32* %14, i32 -1, !dbg !1529
  %16 = load i32* %15, align 4, !dbg !1529
  store i32 %16, i32* %inst, align 4, !dbg !1529
  call void @llvm.dbg.declare(metadata !{i32* %op}, metadata !1530), !dbg !1532
  %17 = load i32* %inst, align 4, !dbg !1533
  %18 = lshr i32 %17, 0, !dbg !1533
  %19 = and i32 %18, 63, !dbg !1533
  store i32 %19, i32* %op, align 4, !dbg !1533
  %20 = load i32* %op, align 4, !dbg !1534
  switch i32 %20, label %177 [
    i32 13, label %21
    i32 14, label %21
    i32 15, label %21
    i32 18, label %21
    i32 19, label %21
    i32 20, label %21
    i32 21, label %21
    i32 22, label %21
    i32 23, label %21
    i32 24, label %21
    i32 16, label %21
    i32 17, label %21
    i32 25, label %21
    i32 26, label %21
    i32 28, label %21
    i32 6, label %21
    i32 7, label %21
    i32 12, label %21
    i32 33, label %35
    i32 32, label %35
    i32 31, label %35
    i32 29, label %101
    i32 41, label %157
    i32 36, label %163
    i32 37, label %176
    i32 8, label %176
    i32 10, label %176
  ], !dbg !1534

; <label>:21                                      ; preds = %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %io1}, metadata !1535), !dbg !1539
  %22 = load %struct.lua_TValue** %base, align 4, !dbg !1539
  %23 = load i32* %inst, align 4, !dbg !1539
  %24 = lshr i32 %23, 6, !dbg !1539
  %25 = and i32 %24, 255, !dbg !1539
  %26 = getelementptr inbounds %struct.lua_TValue* %22, i32 %25, !dbg !1539
  store %struct.lua_TValue* %26, %struct.lua_TValue** %io1, align 4, !dbg !1539
  %27 = load %struct.lua_TValue** %io1, align 4, !dbg !1539
  %28 = load %struct.lua_State** %1, align 4, !dbg !1539
  %29 = getelementptr inbounds %struct.lua_State* %28, i32 0, i32 5, !dbg !1539
  %30 = load %struct.lua_TValue** %29, align 4, !dbg !1539
  %31 = getelementptr inbounds %struct.lua_TValue* %30, i32 -1, !dbg !1539
  store %struct.lua_TValue* %31, %struct.lua_TValue** %29, align 4, !dbg !1539
  %32 = bitcast %struct.lua_TValue* %27 to i8*, !dbg !1539
  %33 = bitcast %struct.lua_TValue* %31 to i8*, !dbg !1539
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %32, i8* %33, i32 16, i32 8, i1 false), !dbg !1539
  %34 = load %struct.lua_State** %1, align 4, !dbg !1539
  br label %178, !dbg !1540

; <label>:35                                      ; preds = %0, %0, %0
  call void @llvm.dbg.declare(metadata !{i32* %res}, metadata !1541), !dbg !1543
  %36 = load %struct.lua_State** %1, align 4, !dbg !1544
  %37 = getelementptr inbounds %struct.lua_State* %36, i32 0, i32 5, !dbg !1544
  %38 = load %struct.lua_TValue** %37, align 4, !dbg !1544
  %39 = getelementptr inbounds %struct.lua_TValue* %38, i32 -1, !dbg !1544
  %40 = getelementptr inbounds %struct.lua_TValue* %39, i32 0, i32 1, !dbg !1544
  %41 = load i32* %40, align 4, !dbg !1544
  %42 = icmp eq i32 %41, 0, !dbg !1544
  br i1 %42, label %62, label %43, !dbg !1544

; <label>:43                                      ; preds = %35
  %44 = load %struct.lua_State** %1, align 4, !dbg !1545
  %45 = getelementptr inbounds %struct.lua_State* %44, i32 0, i32 5, !dbg !1545
  %46 = load %struct.lua_TValue** %45, align 4, !dbg !1545
  %47 = getelementptr inbounds %struct.lua_TValue* %46, i32 -1, !dbg !1545
  %48 = getelementptr inbounds %struct.lua_TValue* %47, i32 0, i32 1, !dbg !1545
  %49 = load i32* %48, align 4, !dbg !1545
  %50 = icmp eq i32 %49, 1, !dbg !1545
  br i1 %50, label %51, label %60, !dbg !1545

; <label>:51                                      ; preds = %43
  %52 = load %struct.lua_State** %1, align 4, !dbg !1547
  %53 = getelementptr inbounds %struct.lua_State* %52, i32 0, i32 5, !dbg !1547
  %54 = load %struct.lua_TValue** %53, align 4, !dbg !1547
  %55 = getelementptr inbounds %struct.lua_TValue* %54, i32 -1, !dbg !1547
  %56 = getelementptr inbounds %struct.lua_TValue* %55, i32 0, i32 0, !dbg !1547
  %57 = bitcast %union.Value* %56 to i32*, !dbg !1547
  %58 = load i32* %57, align 4, !dbg !1547
  %59 = icmp eq i32 %58, 0, !dbg !1547
  br label %60

; <label>:60                                      ; preds = %51, %43
  %61 = phi i1 [ false, %43 ], [ %59, %51 ]
  br label %62, !dbg !1549

; <label>:62                                      ; preds = %60, %35
  %63 = phi i1 [ true, %35 ], [ %61, %60 ]
  %64 = xor i1 %63, true, !dbg !1551
  %65 = zext i1 %64 to i32, !dbg !1551
  store i32 %65, i32* %res, align 4, !dbg !1551
  %66 = load %struct.lua_State** %1, align 4, !dbg !1554
  %67 = getelementptr inbounds %struct.lua_State* %66, i32 0, i32 5, !dbg !1554
  %68 = load %struct.lua_TValue** %67, align 4, !dbg !1554
  %69 = getelementptr inbounds %struct.lua_TValue* %68, i32 -1, !dbg !1554
  store %struct.lua_TValue* %69, %struct.lua_TValue** %67, align 4, !dbg !1554
  %70 = load %struct.CallInfo** %ci, align 4, !dbg !1555
  %71 = getelementptr inbounds %struct.CallInfo* %70, i32 0, i32 7, !dbg !1555
  %72 = load i8* %71, align 1, !dbg !1555
  %73 = zext i8 %72 to i32, !dbg !1555
  %74 = and i32 %73, 128, !dbg !1555
  %75 = icmp ne i32 %74, 0, !dbg !1555
  br i1 %75, label %76, label %87, !dbg !1555

; <label>:76                                      ; preds = %62
  %77 = load %struct.CallInfo** %ci, align 4, !dbg !1557
  %78 = getelementptr inbounds %struct.CallInfo* %77, i32 0, i32 7, !dbg !1557
  %79 = load i8* %78, align 1, !dbg !1557
  %80 = zext i8 %79 to i32, !dbg !1557
  %81 = xor i32 %80, 128, !dbg !1557
  %82 = trunc i32 %81 to i8, !dbg !1557
  store i8 %82, i8* %78, align 1, !dbg !1557
  %83 = load i32* %res, align 4, !dbg !1559
  %84 = icmp ne i32 %83, 0, !dbg !1559
  %85 = xor i1 %84, true, !dbg !1559
  %86 = zext i1 %85 to i32, !dbg !1559
  store i32 %86, i32* %res, align 4, !dbg !1559
  br label %87, !dbg !1560

; <label>:87                                      ; preds = %76, %62
  %88 = load i32* %res, align 4, !dbg !1561
  %89 = load i32* %inst, align 4, !dbg !1561
  %90 = lshr i32 %89, 6, !dbg !1561
  %91 = and i32 %90, 255, !dbg !1561
  %92 = icmp ne i32 %88, %91, !dbg !1561
  br i1 %92, label %93, label %100, !dbg !1561

; <label>:93                                      ; preds = %87
  %94 = load %struct.CallInfo** %ci, align 4, !dbg !1563
  %95 = getelementptr inbounds %struct.CallInfo* %94, i32 0, i32 4, !dbg !1563
  %96 = bitcast %union.anon* %95 to %struct.anon*, !dbg !1563
  %97 = getelementptr inbounds %struct.anon* %96, i32 0, i32 1, !dbg !1563
  %98 = load i32** %97, align 4, !dbg !1563
  %99 = getelementptr inbounds i32* %98, i32 1, !dbg !1563
  store i32* %99, i32** %97, align 4, !dbg !1563
  br label %100, !dbg !1563

; <label>:100                                     ; preds = %93, %87
  br label %178, !dbg !1564

; <label>:101                                     ; preds = %0
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %top}, metadata !1565), !dbg !1567
  %102 = load %struct.lua_State** %1, align 4, !dbg !1568
  %103 = getelementptr inbounds %struct.lua_State* %102, i32 0, i32 5, !dbg !1568
  %104 = load %struct.lua_TValue** %103, align 4, !dbg !1568
  %105 = getelementptr inbounds %struct.lua_TValue* %104, i32 -1, !dbg !1568
  store %struct.lua_TValue* %105, %struct.lua_TValue** %top, align 4, !dbg !1568
  call void @llvm.dbg.declare(metadata !{i32* %b}, metadata !1569), !dbg !1570
  %106 = load i32* %inst, align 4, !dbg !1571
  %107 = lshr i32 %106, 23, !dbg !1571
  %108 = and i32 %107, 511, !dbg !1571
  store i32 %108, i32* %b, align 4, !dbg !1571
  call void @llvm.dbg.declare(metadata !{i32* %total}, metadata !1572), !dbg !1573
  %109 = load %struct.lua_TValue** %top, align 4, !dbg !1574
  %110 = getelementptr inbounds %struct.lua_TValue* %109, i32 -1, !dbg !1574
  %111 = load %struct.lua_TValue** %base, align 4, !dbg !1574
  %112 = load i32* %b, align 4, !dbg !1574
  %113 = getelementptr inbounds %struct.lua_TValue* %111, i32 %112, !dbg !1574
  %114 = ptrtoint %struct.lua_TValue* %110 to i32, !dbg !1574
  %115 = ptrtoint %struct.lua_TValue* %113 to i32, !dbg !1574
  %116 = sub i32 %114, %115, !dbg !1574
  %117 = sdiv exact i32 %116, 16, !dbg !1574
  store i32 %117, i32* %total, align 4, !dbg !1574
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %io11}, metadata !1575), !dbg !1577
  %118 = load %struct.lua_TValue** %top, align 4, !dbg !1577
  %119 = getelementptr inbounds %struct.lua_TValue* %118, i32 -2, !dbg !1577
  store %struct.lua_TValue* %119, %struct.lua_TValue** %io11, align 4, !dbg !1577
  %120 = load %struct.lua_TValue** %io11, align 4, !dbg !1577
  %121 = load %struct.lua_TValue** %top, align 4, !dbg !1577
  %122 = bitcast %struct.lua_TValue* %120 to i8*, !dbg !1577
  %123 = bitcast %struct.lua_TValue* %121 to i8*, !dbg !1577
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %122, i8* %123, i32 16, i32 8, i1 false), !dbg !1577
  %124 = load %struct.lua_State** %1, align 4, !dbg !1577
  %125 = load i32* %total, align 4, !dbg !1578
  %126 = icmp sgt i32 %125, 1, !dbg !1578
  br i1 %126, label %127, label %134, !dbg !1578

; <label>:127                                     ; preds = %101
  %128 = load %struct.lua_TValue** %top, align 4, !dbg !1580
  %129 = getelementptr inbounds %struct.lua_TValue* %128, i32 -1, !dbg !1580
  %130 = load %struct.lua_State** %1, align 4, !dbg !1580
  %131 = getelementptr inbounds %struct.lua_State* %130, i32 0, i32 5, !dbg !1580
  store %struct.lua_TValue* %129, %struct.lua_TValue** %131, align 4, !dbg !1580
  %132 = load %struct.lua_State** %1, align 4, !dbg !1582
  %133 = load i32* %total, align 4, !dbg !1582
  call void @luaV_concat(%struct.lua_State* %132, i32 %133), !dbg !1582
  br label %134, !dbg !1583

; <label>:134                                     ; preds = %127, %101
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %io12}, metadata !1584), !dbg !1586
  %135 = load %struct.CallInfo** %ci, align 4, !dbg !1586
  %136 = getelementptr inbounds %struct.CallInfo* %135, i32 0, i32 4, !dbg !1586
  %137 = bitcast %union.anon* %136 to %struct.anon*, !dbg !1586
  %138 = getelementptr inbounds %struct.anon* %137, i32 0, i32 0, !dbg !1586
  %139 = load %struct.lua_TValue** %138, align 4, !dbg !1586
  %140 = load i32* %inst, align 4, !dbg !1586
  %141 = lshr i32 %140, 6, !dbg !1586
  %142 = and i32 %141, 255, !dbg !1586
  %143 = getelementptr inbounds %struct.lua_TValue* %139, i32 %142, !dbg !1586
  store %struct.lua_TValue* %143, %struct.lua_TValue** %io12, align 4, !dbg !1586
  %144 = load %struct.lua_TValue** %io12, align 4, !dbg !1586
  %145 = load %struct.lua_State** %1, align 4, !dbg !1586
  %146 = getelementptr inbounds %struct.lua_State* %145, i32 0, i32 5, !dbg !1586
  %147 = load %struct.lua_TValue** %146, align 4, !dbg !1586
  %148 = getelementptr inbounds %struct.lua_TValue* %147, i32 -1, !dbg !1586
  %149 = bitcast %struct.lua_TValue* %144 to i8*, !dbg !1586
  %150 = bitcast %struct.lua_TValue* %148 to i8*, !dbg !1586
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %149, i8* %150, i32 16, i32 8, i1 false), !dbg !1586
  %151 = load %struct.lua_State** %1, align 4, !dbg !1586
  %152 = load %struct.CallInfo** %ci, align 4, !dbg !1587
  %153 = getelementptr inbounds %struct.CallInfo* %152, i32 0, i32 1, !dbg !1587
  %154 = load %struct.lua_TValue** %153, align 4, !dbg !1587
  %155 = load %struct.lua_State** %1, align 4, !dbg !1587
  %156 = getelementptr inbounds %struct.lua_State* %155, i32 0, i32 5, !dbg !1587
  store %struct.lua_TValue* %154, %struct.lua_TValue** %156, align 4, !dbg !1587
  br label %178, !dbg !1588

; <label>:157                                     ; preds = %0
  %158 = load %struct.CallInfo** %ci, align 4, !dbg !1589
  %159 = getelementptr inbounds %struct.CallInfo* %158, i32 0, i32 1, !dbg !1589
  %160 = load %struct.lua_TValue** %159, align 4, !dbg !1589
  %161 = load %struct.lua_State** %1, align 4, !dbg !1589
  %162 = getelementptr inbounds %struct.lua_State* %161, i32 0, i32 5, !dbg !1589
  store %struct.lua_TValue* %160, %struct.lua_TValue** %162, align 4, !dbg !1589
  br label %178, !dbg !1591

; <label>:163                                     ; preds = %0
  %164 = load i32* %inst, align 4, !dbg !1592
  %165 = lshr i32 %164, 14, !dbg !1592
  %166 = and i32 %165, 511, !dbg !1592
  %167 = sub nsw i32 %166, 1, !dbg !1592
  %168 = icmp sge i32 %167, 0, !dbg !1592
  br i1 %168, label %169, label %175, !dbg !1592

; <label>:169                                     ; preds = %163
  %170 = load %struct.CallInfo** %ci, align 4, !dbg !1595
  %171 = getelementptr inbounds %struct.CallInfo* %170, i32 0, i32 1, !dbg !1595
  %172 = load %struct.lua_TValue** %171, align 4, !dbg !1595
  %173 = load %struct.lua_State** %1, align 4, !dbg !1595
  %174 = getelementptr inbounds %struct.lua_State* %173, i32 0, i32 5, !dbg !1595
  store %struct.lua_TValue* %172, %struct.lua_TValue** %174, align 4, !dbg !1595
  br label %175, !dbg !1595

; <label>:175                                     ; preds = %169, %163
  br label %178, !dbg !1596

; <label>:176                                     ; preds = %0, %0, %0
  br label %178, !dbg !1597

; <label>:177                                     ; preds = %0
  br label %178, !dbg !1598

; <label>:178                                     ; preds = %177, %176, %175, %157, %134, %100, %21
  ret void, !dbg !1599
}

; Function Attrs: nounwind
define hidden void @luaV_execute(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %ci = alloca %struct.CallInfo*, align 4
  %cl = alloca %struct.LClosure*, align 4
  %k = alloca %struct.lua_TValue*, align 4
  %base = alloca %struct.lua_TValue*, align 4
  %i = alloca i32, align 4
  %ra = alloca %struct.lua_TValue*, align 4
  %io1 = alloca %struct.lua_TValue*, align 4
  %rb = alloca %struct.lua_TValue*, align 4
  %io11 = alloca %struct.lua_TValue*, align 4
  %rb2 = alloca %struct.lua_TValue*, align 4
  %io13 = alloca %struct.lua_TValue*, align 4
  %io = alloca %struct.lua_TValue*, align 4
  %b = alloca i32, align 4
  %b4 = alloca i32, align 4
  %io15 = alloca %struct.lua_TValue*, align 4
  %upval = alloca %struct.lua_TValue*, align 4
  %rc = alloca %struct.lua_TValue*, align 4
  %slot = alloca %struct.lua_TValue*, align 4
  %io16 = alloca %struct.lua_TValue*, align 4
  %rb7 = alloca %struct.lua_TValue*, align 4
  %rc8 = alloca %struct.lua_TValue*, align 4
  %slot9 = alloca %struct.lua_TValue*, align 4
  %io110 = alloca %struct.lua_TValue*, align 4
  %upval11 = alloca %struct.lua_TValue*, align 4
  %rb12 = alloca %struct.lua_TValue*, align 4
  %rc13 = alloca %struct.lua_TValue*, align 4
  %slot14 = alloca %struct.lua_TValue*, align 4
  %uv = alloca %struct.UpVal*, align 4
  %io115 = alloca %struct.lua_TValue*, align 4
  %rb16 = alloca %struct.lua_TValue*, align 4
  %rc17 = alloca %struct.lua_TValue*, align 4
  %slot18 = alloca %struct.lua_TValue*, align 4
  %b19 = alloca i32, align 4
  %c = alloca i32, align 4
  %t = alloca %struct.Table*, align 4
  %io20 = alloca %struct.lua_TValue*, align 4
  %x_ = alloca %struct.Table*, align 4
  %aux = alloca %struct.lua_TValue*, align 4
  %rb21 = alloca %struct.lua_TValue*, align 4
  %rc22 = alloca %struct.lua_TValue*, align 4
  %key = alloca %struct.TString*, align 4
  %io123 = alloca %struct.lua_TValue*, align 4
  %io124 = alloca %struct.lua_TValue*, align 4
  %rb25 = alloca %struct.lua_TValue*, align 4
  %rc26 = alloca %struct.lua_TValue*, align 4
  %nb = alloca double, align 8
  %nc = alloca double, align 8
  %ib = alloca i64, align 8
  %ic = alloca i64, align 8
  %io27 = alloca %struct.lua_TValue*, align 4
  %io28 = alloca %struct.lua_TValue*, align 4
  %rb29 = alloca %struct.lua_TValue*, align 4
  %rc30 = alloca %struct.lua_TValue*, align 4
  %nb31 = alloca double, align 8
  %nc32 = alloca double, align 8
  %ib33 = alloca i64, align 8
  %ic34 = alloca i64, align 8
  %io35 = alloca %struct.lua_TValue*, align 4
  %io36 = alloca %struct.lua_TValue*, align 4
  %rb37 = alloca %struct.lua_TValue*, align 4
  %rc38 = alloca %struct.lua_TValue*, align 4
  %nb39 = alloca double, align 8
  %nc40 = alloca double, align 8
  %ib41 = alloca i64, align 8
  %ic42 = alloca i64, align 8
  %io43 = alloca %struct.lua_TValue*, align 4
  %io44 = alloca %struct.lua_TValue*, align 4
  %rb45 = alloca %struct.lua_TValue*, align 4
  %rc46 = alloca %struct.lua_TValue*, align 4
  %nb47 = alloca double, align 8
  %nc48 = alloca double, align 8
  %io49 = alloca %struct.lua_TValue*, align 4
  %rb50 = alloca %struct.lua_TValue*, align 4
  %rc51 = alloca %struct.lua_TValue*, align 4
  %ib52 = alloca i64, align 8
  %ic53 = alloca i64, align 8
  %io54 = alloca %struct.lua_TValue*, align 4
  %rb55 = alloca %struct.lua_TValue*, align 4
  %rc56 = alloca %struct.lua_TValue*, align 4
  %ib57 = alloca i64, align 8
  %ic58 = alloca i64, align 8
  %io59 = alloca %struct.lua_TValue*, align 4
  %rb60 = alloca %struct.lua_TValue*, align 4
  %rc61 = alloca %struct.lua_TValue*, align 4
  %ib62 = alloca i64, align 8
  %ic63 = alloca i64, align 8
  %io64 = alloca %struct.lua_TValue*, align 4
  %rb65 = alloca %struct.lua_TValue*, align 4
  %rc66 = alloca %struct.lua_TValue*, align 4
  %ib67 = alloca i64, align 8
  %ic68 = alloca i64, align 8
  %io69 = alloca %struct.lua_TValue*, align 4
  %rb70 = alloca %struct.lua_TValue*, align 4
  %rc71 = alloca %struct.lua_TValue*, align 4
  %ib72 = alloca i64, align 8
  %ic73 = alloca i64, align 8
  %io74 = alloca %struct.lua_TValue*, align 4
  %rb75 = alloca %struct.lua_TValue*, align 4
  %rc76 = alloca %struct.lua_TValue*, align 4
  %nb77 = alloca double, align 8
  %nc78 = alloca double, align 8
  %ib79 = alloca i64, align 8
  %ic80 = alloca i64, align 8
  %io81 = alloca %struct.lua_TValue*, align 4
  %m = alloca double, align 8
  %io82 = alloca %struct.lua_TValue*, align 4
  %rb83 = alloca %struct.lua_TValue*, align 4
  %rc84 = alloca %struct.lua_TValue*, align 4
  %nb85 = alloca double, align 8
  %nc86 = alloca double, align 8
  %ib87 = alloca i64, align 8
  %ic88 = alloca i64, align 8
  %io89 = alloca %struct.lua_TValue*, align 4
  %io90 = alloca %struct.lua_TValue*, align 4
  %rb91 = alloca %struct.lua_TValue*, align 4
  %rc92 = alloca %struct.lua_TValue*, align 4
  %nb93 = alloca double, align 8
  %nc94 = alloca double, align 8
  %io95 = alloca %struct.lua_TValue*, align 4
  %rb96 = alloca %struct.lua_TValue*, align 4
  %nb97 = alloca double, align 8
  %ib98 = alloca i64, align 8
  %io99 = alloca %struct.lua_TValue*, align 4
  %io100 = alloca %struct.lua_TValue*, align 4
  %rb101 = alloca %struct.lua_TValue*, align 4
  %ib102 = alloca i64, align 8
  %io103 = alloca %struct.lua_TValue*, align 4
  %rb104 = alloca %struct.lua_TValue*, align 4
  %res = alloca i32, align 4
  %io105 = alloca %struct.lua_TValue*, align 4
  %b106 = alloca i32, align 4
  %c107 = alloca i32, align 4
  %rb108 = alloca %struct.lua_TValue*, align 4
  %io1109 = alloca %struct.lua_TValue*, align 4
  %a = alloca i32, align 4
  %rb110 = alloca %struct.lua_TValue*, align 4
  %rc111 = alloca %struct.lua_TValue*, align 4
  %a112 = alloca i32, align 4
  %a113 = alloca i32, align 4
  %a114 = alloca i32, align 4
  %a115 = alloca i32, align 4
  %rb116 = alloca %struct.lua_TValue*, align 4
  %io1117 = alloca %struct.lua_TValue*, align 4
  %a118 = alloca i32, align 4
  %b119 = alloca i32, align 4
  %nresults = alloca i32, align 4
  %b120 = alloca i32, align 4
  %nci = alloca %struct.CallInfo*, align 4
  %oci = alloca %struct.CallInfo*, align 4
  %nfunc = alloca %struct.lua_TValue*, align 4
  %ofunc = alloca %struct.lua_TValue*, align 4
  %lim = alloca %struct.lua_TValue*, align 4
  %aux121 = alloca i32, align 4
  %io1122 = alloca %struct.lua_TValue*, align 4
  %b123 = alloca i32, align 4
  %step = alloca i64, align 8
  %idx = alloca i64, align 8
  %limit = alloca i64, align 8
  %io125 = alloca %struct.lua_TValue*, align 4
  %io126 = alloca %struct.lua_TValue*, align 4
  %step127 = alloca double, align 8
  %idx128 = alloca double, align 8
  %limit129 = alloca double, align 8
  %io130 = alloca %struct.lua_TValue*, align 4
  %io131 = alloca %struct.lua_TValue*, align 4
  %init = alloca %struct.lua_TValue*, align 4
  %plimit = alloca %struct.lua_TValue*, align 4
  %pstep = alloca %struct.lua_TValue*, align 4
  %ilimit = alloca i64, align 8
  %stopnow = alloca i32, align 4
  %initv = alloca i64, align 8
  %io132 = alloca %struct.lua_TValue*, align 4
  %io133 = alloca %struct.lua_TValue*, align 4
  %ninit = alloca double, align 8
  %nlimit = alloca double, align 8
  %nstep = alloca double, align 8
  %io134 = alloca %struct.lua_TValue*, align 4
  %io135 = alloca %struct.lua_TValue*, align 4
  %io136 = alloca %struct.lua_TValue*, align 4
  %cb = alloca %struct.lua_TValue*, align 4
  %io1137 = alloca %struct.lua_TValue*, align 4
  %io1138 = alloca %struct.lua_TValue*, align 4
  %io1139 = alloca %struct.lua_TValue*, align 4
  %io1140 = alloca %struct.lua_TValue*, align 4
  %n = alloca i32, align 4
  %c141 = alloca i32, align 4
  %last = alloca i32, align 4
  %h = alloca %struct.Table*, align 4
  %val = alloca %struct.lua_TValue*, align 4
  %p = alloca %struct.Proto*, align 4
  %ncl = alloca %struct.LClosure*, align 4
  %io142 = alloca %struct.lua_TValue*, align 4
  %x_143 = alloca %struct.LClosure*, align 4
  %b144 = alloca i32, align 4
  %j = alloca i32, align 4
  %n145 = alloca i32, align 4
  %io1146 = alloca %struct.lua_TValue*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !1600), !dbg !1601
  call void @llvm.dbg.declare(metadata !{%struct.CallInfo** %ci}, metadata !1602), !dbg !1603
  %2 = load %struct.lua_State** %1, align 4, !dbg !1604
  %3 = getelementptr inbounds %struct.lua_State* %2, i32 0, i32 7, !dbg !1604
  %4 = load %struct.CallInfo** %3, align 4, !dbg !1604
  store %struct.CallInfo* %4, %struct.CallInfo** %ci, align 4, !dbg !1604
  call void @llvm.dbg.declare(metadata !{%struct.LClosure** %cl}, metadata !1605), !dbg !1606
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %k}, metadata !1607), !dbg !1608
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %base}, metadata !1609), !dbg !1610
  %5 = load %struct.CallInfo** %ci, align 4, !dbg !1611
  %6 = getelementptr inbounds %struct.CallInfo* %5, i32 0, i32 7, !dbg !1611
  %7 = load i8* %6, align 1, !dbg !1611
  %8 = zext i8 %7 to i32, !dbg !1611
  %9 = or i32 %8, 8, !dbg !1611
  %10 = trunc i32 %9 to i8, !dbg !1611
  store i8 %10, i8* %6, align 1, !dbg !1611
  br label %11, !dbg !1611

; <label>:11                                      ; preds = %2856, %2753, %2660, %0
  %12 = load %struct.CallInfo** %ci, align 4, !dbg !1612
  %13 = getelementptr inbounds %struct.CallInfo* %12, i32 0, i32 0, !dbg !1612
  %14 = load %struct.lua_TValue** %13, align 4, !dbg !1612
  %15 = getelementptr inbounds %struct.lua_TValue* %14, i32 0, i32 0, !dbg !1612
  %16 = bitcast %union.Value* %15 to %struct.GCObject**, !dbg !1612
  %17 = load %struct.GCObject** %16, align 4, !dbg !1612
  %18 = bitcast %struct.GCObject* %17 to %union.GCUnion*, !dbg !1612
  %19 = bitcast %union.GCUnion* %18 to %union.Closure*, !dbg !1612
  %20 = bitcast %union.Closure* %19 to %struct.LClosure*, !dbg !1612
  store %struct.LClosure* %20, %struct.LClosure** %cl, align 4, !dbg !1612
  %21 = load %struct.LClosure** %cl, align 4, !dbg !1613
  %22 = getelementptr inbounds %struct.LClosure* %21, i32 0, i32 5, !dbg !1613
  %23 = load %struct.Proto** %22, align 4, !dbg !1613
  %24 = getelementptr inbounds %struct.Proto* %23, i32 0, i32 14, !dbg !1613
  %25 = load %struct.lua_TValue** %24, align 4, !dbg !1613
  store %struct.lua_TValue* %25, %struct.lua_TValue** %k, align 4, !dbg !1613
  %26 = load %struct.CallInfo** %ci, align 4, !dbg !1614
  %27 = getelementptr inbounds %struct.CallInfo* %26, i32 0, i32 4, !dbg !1614
  %28 = bitcast %union.anon* %27 to %struct.anon*, !dbg !1614
  %29 = getelementptr inbounds %struct.anon* %28, i32 0, i32 0, !dbg !1614
  %30 = load %struct.lua_TValue** %29, align 4, !dbg !1614
  store %struct.lua_TValue* %30, %struct.lua_TValue** %base, align 4, !dbg !1614
  br label %31, !dbg !1615

; <label>:31                                      ; preds = %3454, %11
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !1617), !dbg !1619
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %ra}, metadata !1620), !dbg !1621
  %32 = load %struct.CallInfo** %ci, align 4, !dbg !1622
  %33 = getelementptr inbounds %struct.CallInfo* %32, i32 0, i32 4, !dbg !1622
  %34 = bitcast %union.anon* %33 to %struct.anon*, !dbg !1622
  %35 = getelementptr inbounds %struct.anon* %34, i32 0, i32 1, !dbg !1622
  %36 = load i32** %35, align 4, !dbg !1622
  %37 = getelementptr inbounds i32* %36, i32 1, !dbg !1622
  store i32* %37, i32** %35, align 4, !dbg !1622
  %38 = load i32* %36, align 4, !dbg !1622
  store i32 %38, i32* %i, align 4, !dbg !1622
  %39 = load %struct.lua_State** %1, align 4, !dbg !1624
  %40 = getelementptr inbounds %struct.lua_State* %39, i32 0, i32 23, !dbg !1624
  %41 = load i32* %40, align 4, !dbg !1624
  %42 = and i32 %41, 12, !dbg !1624
  %43 = icmp ne i32 %42, 0, !dbg !1624
  br i1 %43, label %44, label %51, !dbg !1624

; <label>:44                                      ; preds = %31
  %45 = load %struct.lua_State** %1, align 4, !dbg !1626
  call void @luaG_traceexec(%struct.lua_State* %45), !dbg !1626
  %46 = load %struct.CallInfo** %ci, align 4, !dbg !1630
  %47 = getelementptr inbounds %struct.CallInfo* %46, i32 0, i32 4, !dbg !1630
  %48 = bitcast %union.anon* %47 to %struct.anon*, !dbg !1630
  %49 = getelementptr inbounds %struct.anon* %48, i32 0, i32 0, !dbg !1630
  %50 = load %struct.lua_TValue** %49, align 4, !dbg !1630
  store %struct.lua_TValue* %50, %struct.lua_TValue** %base, align 4, !dbg !1630
  br label %51, !dbg !1630

; <label>:51                                      ; preds = %44, %31
  %52 = load %struct.lua_TValue** %base, align 4, !dbg !1631
  %53 = load i32* %i, align 4, !dbg !1631
  %54 = lshr i32 %53, 6, !dbg !1631
  %55 = and i32 %54, 255, !dbg !1631
  %56 = getelementptr inbounds %struct.lua_TValue* %52, i32 %55, !dbg !1631
  store %struct.lua_TValue* %56, %struct.lua_TValue** %ra, align 4, !dbg !1631
  %57 = load i32* %i, align 4, !dbg !1634
  %58 = lshr i32 %57, 0, !dbg !1634
  %59 = and i32 %58, 63, !dbg !1634
  switch i32 %59, label %3454 [
    i32 0, label %60
    i32 1, label %71
    i32 2, label %83
    i32 3, label %101
    i32 4, label %123
    i32 5, label %136
    i32 6, label %152
    i32 7, label %220
    i32 8, label %284
    i32 9, label %411
    i32 10, label %447
    i32 11, label %565
    i32 12, label %620
    i32 13, label %697
    i32 14, label %815
    i32 15, label %933
    i32 18, label %1051
    i32 20, label %1140
    i32 21, label %1229
    i32 22, label %1318
    i32 23, label %1407
    i32 24, label %1496
    i32 16, label %1586
    i32 19, label %1715
    i32 17, label %1836
    i32 25, label %1926
    i32 26, label %1984
    i32 27, label %2023
    i32 28, label %2056
    i32 29, label %2069
    i32 30, label %2142
    i32 31, label %2170
    i32 32, label %2266
    i32 33, label %2360
    i32 34, label %2454
    i32 35, label %2533
    i32 36, label %2623
    i32 37, label %2665
    i32 38, label %2803
    i32 39, label %2857
    i32 40, label %2967
    i32 41, label %3103
    i32 42, label %3159
    i32 43, label %3185
    i32 44, label %3288
    i32 45, label %3350
    i32 46, label %3453
  ], !dbg !1634

; <label>:60                                      ; preds = %51
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %io1}, metadata !1635), !dbg !1639
  %61 = load %struct.lua_TValue** %ra, align 4, !dbg !1639
  store %struct.lua_TValue* %61, %struct.lua_TValue** %io1, align 4, !dbg !1639
  %62 = load %struct.lua_TValue** %io1, align 4, !dbg !1639
  %63 = load %struct.lua_TValue** %base, align 4, !dbg !1639
  %64 = load i32* %i, align 4, !dbg !1639
  %65 = lshr i32 %64, 23, !dbg !1639
  %66 = and i32 %65, 511, !dbg !1639
  %67 = getelementptr inbounds %struct.lua_TValue* %63, i32 %66, !dbg !1639
  %68 = bitcast %struct.lua_TValue* %62 to i8*, !dbg !1639
  %69 = bitcast %struct.lua_TValue* %67 to i8*, !dbg !1639
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %68, i8* %69, i32 16, i32 8, i1 false), !dbg !1639
  %70 = load %struct.lua_State** %1, align 4, !dbg !1639
  br label %3454, !dbg !1640

; <label>:71                                      ; preds = %51
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %rb}, metadata !1641), !dbg !1643
  %72 = load %struct.lua_TValue** %k, align 4, !dbg !1644
  %73 = load i32* %i, align 4, !dbg !1644
  %74 = lshr i32 %73, 14, !dbg !1644
  %75 = and i32 %74, 262143, !dbg !1644
  %76 = getelementptr inbounds %struct.lua_TValue* %72, i32 %75, !dbg !1644
  store %struct.lua_TValue* %76, %struct.lua_TValue** %rb, align 4, !dbg !1644
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %io11}, metadata !1645), !dbg !1647
  %77 = load %struct.lua_TValue** %ra, align 4, !dbg !1647
  store %struct.lua_TValue* %77, %struct.lua_TValue** %io11, align 4, !dbg !1647
  %78 = load %struct.lua_TValue** %io11, align 4, !dbg !1647
  %79 = load %struct.lua_TValue** %rb, align 4, !dbg !1647
  %80 = bitcast %struct.lua_TValue* %78 to i8*, !dbg !1647
  %81 = bitcast %struct.lua_TValue* %79 to i8*, !dbg !1647
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %80, i8* %81, i32 16, i32 8, i1 false), !dbg !1647
  %82 = load %struct.lua_State** %1, align 4, !dbg !1647
  br label %3454, !dbg !1648

; <label>:83                                      ; preds = %51
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %rb2}, metadata !1649), !dbg !1651
  %84 = load %struct.lua_TValue** %k, align 4, !dbg !1652
  %85 = load %struct.CallInfo** %ci, align 4, !dbg !1652
  %86 = getelementptr inbounds %struct.CallInfo* %85, i32 0, i32 4, !dbg !1652
  %87 = bitcast %union.anon* %86 to %struct.anon*, !dbg !1652
  %88 = getelementptr inbounds %struct.anon* %87, i32 0, i32 1, !dbg !1652
  %89 = load i32** %88, align 4, !dbg !1652
  %90 = getelementptr inbounds i32* %89, i32 1, !dbg !1652
  store i32* %90, i32** %88, align 4, !dbg !1652
  %91 = load i32* %89, align 4, !dbg !1652
  %92 = lshr i32 %91, 6, !dbg !1652
  %93 = and i32 %92, 67108863, !dbg !1652
  %94 = getelementptr inbounds %struct.lua_TValue* %84, i32 %93, !dbg !1652
  store %struct.lua_TValue* %94, %struct.lua_TValue** %rb2, align 4, !dbg !1652
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %io13}, metadata !1653), !dbg !1655
  %95 = load %struct.lua_TValue** %ra, align 4, !dbg !1655
  store %struct.lua_TValue* %95, %struct.lua_TValue** %io13, align 4, !dbg !1655
  %96 = load %struct.lua_TValue** %io13, align 4, !dbg !1655
  %97 = load %struct.lua_TValue** %rb2, align 4, !dbg !1655
  %98 = bitcast %struct.lua_TValue* %96 to i8*, !dbg !1655
  %99 = bitcast %struct.lua_TValue* %97 to i8*, !dbg !1655
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %98, i8* %99, i32 16, i32 8, i1 false), !dbg !1655
  %100 = load %struct.lua_State** %1, align 4, !dbg !1655
  br label %3454, !dbg !1656

; <label>:101                                     ; preds = %51
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %io}, metadata !1657), !dbg !1660
  %102 = load %struct.lua_TValue** %ra, align 4, !dbg !1660
  store %struct.lua_TValue* %102, %struct.lua_TValue** %io, align 4, !dbg !1660
  %103 = load i32* %i, align 4, !dbg !1660
  %104 = lshr i32 %103, 23, !dbg !1660
  %105 = and i32 %104, 511, !dbg !1660
  %106 = load %struct.lua_TValue** %io, align 4, !dbg !1660
  %107 = getelementptr inbounds %struct.lua_TValue* %106, i32 0, i32 0, !dbg !1660
  %108 = bitcast %union.Value* %107 to i32*, !dbg !1660
  store i32 %105, i32* %108, align 4, !dbg !1660
  %109 = load %struct.lua_TValue** %io, align 4, !dbg !1660
  %110 = getelementptr inbounds %struct.lua_TValue* %109, i32 0, i32 1, !dbg !1660
  store i32 1, i32* %110, align 4, !dbg !1660
  %111 = load i32* %i, align 4, !dbg !1661
  %112 = lshr i32 %111, 14, !dbg !1661
  %113 = and i32 %112, 511, !dbg !1661
  %114 = icmp ne i32 %113, 0, !dbg !1661
  br i1 %114, label %115, label %122, !dbg !1661

; <label>:115                                     ; preds = %101
  %116 = load %struct.CallInfo** %ci, align 4, !dbg !1663
  %117 = getelementptr inbounds %struct.CallInfo* %116, i32 0, i32 4, !dbg !1663
  %118 = bitcast %union.anon* %117 to %struct.anon*, !dbg !1663
  %119 = getelementptr inbounds %struct.anon* %118, i32 0, i32 1, !dbg !1663
  %120 = load i32** %119, align 4, !dbg !1663
  %121 = getelementptr inbounds i32* %120, i32 1, !dbg !1663
  store i32* %121, i32** %119, align 4, !dbg !1663
  br label %122, !dbg !1663

; <label>:122                                     ; preds = %115, %101
  br label %3454, !dbg !1665

; <label>:123                                     ; preds = %51
  call void @llvm.dbg.declare(metadata !{i32* %b}, metadata !1666), !dbg !1668
  %124 = load i32* %i, align 4, !dbg !1669
  %125 = lshr i32 %124, 23, !dbg !1669
  %126 = and i32 %125, 511, !dbg !1669
  store i32 %126, i32* %b, align 4, !dbg !1669
  br label %127, !dbg !1670

; <label>:127                                     ; preds = %131, %123
  %128 = load %struct.lua_TValue** %ra, align 4, !dbg !1671
  %129 = getelementptr inbounds %struct.lua_TValue* %128, i32 1, !dbg !1671
  store %struct.lua_TValue* %129, %struct.lua_TValue** %ra, align 4, !dbg !1671
  %130 = getelementptr inbounds %struct.lua_TValue* %128, i32 0, i32 1, !dbg !1671
  store i32 0, i32* %130, align 4, !dbg !1671
  br label %131, !dbg !1673

; <label>:131                                     ; preds = %127
  %132 = load i32* %b, align 4, !dbg !1674
  %133 = add nsw i32 %132, -1, !dbg !1674
  store i32 %133, i32* %b, align 4, !dbg !1674
  %134 = icmp ne i32 %132, 0, !dbg !1674
  br i1 %134, label %127, label %135, !dbg !1674

; <label>:135                                     ; preds = %131
  br label %3454, !dbg !1676

; <label>:136                                     ; preds = %51
  call void @llvm.dbg.declare(metadata !{i32* %b4}, metadata !1677), !dbg !1679
  %137 = load i32* %i, align 4, !dbg !1680
  %138 = lshr i32 %137, 23, !dbg !1680
  %139 = and i32 %138, 511, !dbg !1680
  store i32 %139, i32* %b4, align 4, !dbg !1680
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %io15}, metadata !1681), !dbg !1683
  %140 = load %struct.lua_TValue** %ra, align 4, !dbg !1683
  store %struct.lua_TValue* %140, %struct.lua_TValue** %io15, align 4, !dbg !1683
  %141 = load %struct.lua_TValue** %io15, align 4, !dbg !1683
  %142 = load i32* %b4, align 4, !dbg !1683
  %143 = load %struct.LClosure** %cl, align 4, !dbg !1683
  %144 = getelementptr inbounds %struct.LClosure* %143, i32 0, i32 6, !dbg !1683
  %145 = getelementptr inbounds [1 x %struct.UpVal*]* %144, i32 0, i32 %142, !dbg !1683
  %146 = load %struct.UpVal** %145, align 4, !dbg !1683
  %147 = getelementptr inbounds %struct.UpVal* %146, i32 0, i32 0, !dbg !1683
  %148 = load %struct.lua_TValue** %147, align 4, !dbg !1683
  %149 = bitcast %struct.lua_TValue* %141 to i8*, !dbg !1683
  %150 = bitcast %struct.lua_TValue* %148 to i8*, !dbg !1683
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %149, i8* %150, i32 16, i32 8, i1 false), !dbg !1683
  %151 = load %struct.lua_State** %1, align 4, !dbg !1683
  br label %3454, !dbg !1684

; <label>:152                                     ; preds = %51
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %upval}, metadata !1685), !dbg !1687
  %153 = load i32* %i, align 4, !dbg !1688
  %154 = lshr i32 %153, 23, !dbg !1688
  %155 = and i32 %154, 511, !dbg !1688
  %156 = load %struct.LClosure** %cl, align 4, !dbg !1688
  %157 = getelementptr inbounds %struct.LClosure* %156, i32 0, i32 6, !dbg !1688
  %158 = getelementptr inbounds [1 x %struct.UpVal*]* %157, i32 0, i32 %155, !dbg !1688
  %159 = load %struct.UpVal** %158, align 4, !dbg !1688
  %160 = getelementptr inbounds %struct.UpVal* %159, i32 0, i32 0, !dbg !1688
  %161 = load %struct.lua_TValue** %160, align 4, !dbg !1688
  store %struct.lua_TValue* %161, %struct.lua_TValue** %upval, align 4, !dbg !1688
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %rc}, metadata !1689), !dbg !1690
  %162 = load i32* %i, align 4, !dbg !1691
  %163 = lshr i32 %162, 14, !dbg !1691
  %164 = and i32 %163, 511, !dbg !1691
  %165 = and i32 %164, 256, !dbg !1691
  %166 = icmp ne i32 %165, 0, !dbg !1691
  br i1 %166, label %167, label %174, !dbg !1691

; <label>:167                                     ; preds = %152
  %168 = load %struct.lua_TValue** %k, align 4, !dbg !1692
  %169 = load i32* %i, align 4, !dbg !1692
  %170 = lshr i32 %169, 14, !dbg !1692
  %171 = and i32 %170, 511, !dbg !1692
  %172 = and i32 %171, -257, !dbg !1692
  %173 = getelementptr inbounds %struct.lua_TValue* %168, i32 %172, !dbg !1692
  br label %180, !dbg !1692

; <label>:174                                     ; preds = %152
  %175 = load %struct.lua_TValue** %base, align 4, !dbg !1694
  %176 = load i32* %i, align 4, !dbg !1694
  %177 = lshr i32 %176, 14, !dbg !1694
  %178 = and i32 %177, 511, !dbg !1694
  %179 = getelementptr inbounds %struct.lua_TValue* %175, i32 %178, !dbg !1694
  br label %180, !dbg !1694

; <label>:180                                     ; preds = %174, %167
  %181 = phi %struct.lua_TValue* [ %173, %167 ], [ %179, %174 ], !dbg !1691
  store %struct.lua_TValue* %181, %struct.lua_TValue** %rc, align 4, !dbg !1696
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %slot}, metadata !1699), !dbg !1701
  %182 = load %struct.lua_TValue** %upval, align 4, !dbg !1702
  %183 = getelementptr inbounds %struct.lua_TValue* %182, i32 0, i32 1, !dbg !1702
  %184 = load i32* %183, align 4, !dbg !1702
  %185 = icmp eq i32 %184, 69, !dbg !1702
  br i1 %185, label %187, label %186, !dbg !1702

; <label>:186                                     ; preds = %180
  store %struct.lua_TValue* null, %struct.lua_TValue** %slot, align 4, !dbg !1704
  br i1 false, label %201, label %208, !dbg !1704

; <label>:187                                     ; preds = %180
  %188 = load %struct.lua_TValue** %upval, align 4, !dbg !1706
  %189 = getelementptr inbounds %struct.lua_TValue* %188, i32 0, i32 0, !dbg !1706
  %190 = bitcast %union.Value* %189 to %struct.GCObject**, !dbg !1706
  %191 = load %struct.GCObject** %190, align 4, !dbg !1706
  %192 = bitcast %struct.GCObject* %191 to %union.GCUnion*, !dbg !1706
  %193 = bitcast %union.GCUnion* %192 to %struct.Table*, !dbg !1706
  %194 = load %struct.lua_TValue** %rc, align 4, !dbg !1706
  %195 = call %struct.lua_TValue* @luaH_get(%struct.Table* %193, %struct.lua_TValue* %194), !dbg !1706
  store %struct.lua_TValue* %195, %struct.lua_TValue** %slot, align 4, !dbg !1706
  %196 = load %struct.lua_TValue** %slot, align 4, !dbg !1706
  %197 = getelementptr inbounds %struct.lua_TValue* %196, i32 0, i32 1, !dbg !1706
  %198 = load i32* %197, align 4, !dbg !1706
  %199 = icmp eq i32 %198, 0, !dbg !1706
  %200 = xor i1 %199, true, !dbg !1706
  br i1 %200, label %201, label %208, !dbg !1706

; <label>:201                                     ; preds = %187, %186
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %io16}, metadata !1708), !dbg !1711
  %202 = load %struct.lua_TValue** %ra, align 4, !dbg !1712
  store %struct.lua_TValue* %202, %struct.lua_TValue** %io16, align 4, !dbg !1712
  %203 = load %struct.lua_TValue** %io16, align 4, !dbg !1712
  %204 = load %struct.lua_TValue** %slot, align 4, !dbg !1712
  %205 = bitcast %struct.lua_TValue* %203 to i8*, !dbg !1712
  %206 = bitcast %struct.lua_TValue* %204 to i8*, !dbg !1712
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %205, i8* %206, i32 16, i32 8, i1 false), !dbg !1712
  %207 = load %struct.lua_State** %1, align 4, !dbg !1712
  br label %219, !dbg !1715

; <label>:208                                     ; preds = %187, %186
  %209 = load %struct.lua_State** %1, align 4, !dbg !1716
  %210 = load %struct.lua_TValue** %upval, align 4, !dbg !1716
  %211 = load %struct.lua_TValue** %rc, align 4, !dbg !1716
  %212 = load %struct.lua_TValue** %ra, align 4, !dbg !1716
  %213 = load %struct.lua_TValue** %slot, align 4, !dbg !1716
  call void @luaV_finishget(%struct.lua_State* %209, %struct.lua_TValue* %210, %struct.lua_TValue* %211, %struct.lua_TValue* %212, %struct.lua_TValue* %213), !dbg !1716
  %214 = load %struct.CallInfo** %ci, align 4, !dbg !1721
  %215 = getelementptr inbounds %struct.CallInfo* %214, i32 0, i32 4, !dbg !1721
  %216 = bitcast %union.anon* %215 to %struct.anon*, !dbg !1721
  %217 = getelementptr inbounds %struct.anon* %216, i32 0, i32 0, !dbg !1721
  %218 = load %struct.lua_TValue** %217, align 4, !dbg !1721
  store %struct.lua_TValue* %218, %struct.lua_TValue** %base, align 4, !dbg !1721
  br label %219

; <label>:219                                     ; preds = %208, %201
  br label %3454, !dbg !1722

; <label>:220                                     ; preds = %51
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %rb7}, metadata !1723), !dbg !1725
  %221 = load %struct.lua_TValue** %base, align 4, !dbg !1726
  %222 = load i32* %i, align 4, !dbg !1726
  %223 = lshr i32 %222, 23, !dbg !1726
  %224 = and i32 %223, 511, !dbg !1726
  %225 = getelementptr inbounds %struct.lua_TValue* %221, i32 %224, !dbg !1726
  store %struct.lua_TValue* %225, %struct.lua_TValue** %rb7, align 4, !dbg !1726
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %rc8}, metadata !1727), !dbg !1728
  %226 = load i32* %i, align 4, !dbg !1729
  %227 = lshr i32 %226, 14, !dbg !1729
  %228 = and i32 %227, 511, !dbg !1729
  %229 = and i32 %228, 256, !dbg !1729
  %230 = icmp ne i32 %229, 0, !dbg !1729
  br i1 %230, label %231, label %238, !dbg !1729

; <label>:231                                     ; preds = %220
  %232 = load %struct.lua_TValue** %k, align 4, !dbg !1730
  %233 = load i32* %i, align 4, !dbg !1730
  %234 = lshr i32 %233, 14, !dbg !1730
  %235 = and i32 %234, 511, !dbg !1730
  %236 = and i32 %235, -257, !dbg !1730
  %237 = getelementptr inbounds %struct.lua_TValue* %232, i32 %236, !dbg !1730
  br label %244, !dbg !1730

; <label>:238                                     ; preds = %220
  %239 = load %struct.lua_TValue** %base, align 4, !dbg !1732
  %240 = load i32* %i, align 4, !dbg !1732
  %241 = lshr i32 %240, 14, !dbg !1732
  %242 = and i32 %241, 511, !dbg !1732
  %243 = getelementptr inbounds %struct.lua_TValue* %239, i32 %242, !dbg !1732
  br label %244, !dbg !1732

; <label>:244                                     ; preds = %238, %231
  %245 = phi %struct.lua_TValue* [ %237, %231 ], [ %243, %238 ], !dbg !1729
  store %struct.lua_TValue* %245, %struct.lua_TValue** %rc8, align 4, !dbg !1734
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %slot9}, metadata !1737), !dbg !1739
  %246 = load %struct.lua_TValue** %rb7, align 4, !dbg !1740
  %247 = getelementptr inbounds %struct.lua_TValue* %246, i32 0, i32 1, !dbg !1740
  %248 = load i32* %247, align 4, !dbg !1740
  %249 = icmp eq i32 %248, 69, !dbg !1740
  br i1 %249, label %251, label %250, !dbg !1740

; <label>:250                                     ; preds = %244
  store %struct.lua_TValue* null, %struct.lua_TValue** %slot9, align 4, !dbg !1742
  br i1 false, label %265, label %272, !dbg !1742

; <label>:251                                     ; preds = %244
  %252 = load %struct.lua_TValue** %rb7, align 4, !dbg !1744
  %253 = getelementptr inbounds %struct.lua_TValue* %252, i32 0, i32 0, !dbg !1744
  %254 = bitcast %union.Value* %253 to %struct.GCObject**, !dbg !1744
  %255 = load %struct.GCObject** %254, align 4, !dbg !1744
  %256 = bitcast %struct.GCObject* %255 to %union.GCUnion*, !dbg !1744
  %257 = bitcast %union.GCUnion* %256 to %struct.Table*, !dbg !1744
  %258 = load %struct.lua_TValue** %rc8, align 4, !dbg !1744
  %259 = call %struct.lua_TValue* @luaH_get(%struct.Table* %257, %struct.lua_TValue* %258), !dbg !1744
  store %struct.lua_TValue* %259, %struct.lua_TValue** %slot9, align 4, !dbg !1744
  %260 = load %struct.lua_TValue** %slot9, align 4, !dbg !1744
  %261 = getelementptr inbounds %struct.lua_TValue* %260, i32 0, i32 1, !dbg !1744
  %262 = load i32* %261, align 4, !dbg !1744
  %263 = icmp eq i32 %262, 0, !dbg !1744
  %264 = xor i1 %263, true, !dbg !1744
  br i1 %264, label %265, label %272, !dbg !1744

; <label>:265                                     ; preds = %251, %250
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %io110}, metadata !1746), !dbg !1749
  %266 = load %struct.lua_TValue** %ra, align 4, !dbg !1750
  store %struct.lua_TValue* %266, %struct.lua_TValue** %io110, align 4, !dbg !1750
  %267 = load %struct.lua_TValue** %io110, align 4, !dbg !1750
  %268 = load %struct.lua_TValue** %slot9, align 4, !dbg !1750
  %269 = bitcast %struct.lua_TValue* %267 to i8*, !dbg !1750
  %270 = bitcast %struct.lua_TValue* %268 to i8*, !dbg !1750
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %269, i8* %270, i32 16, i32 8, i1 false), !dbg !1750
  %271 = load %struct.lua_State** %1, align 4, !dbg !1750
  br label %283, !dbg !1753

; <label>:272                                     ; preds = %251, %250
  %273 = load %struct.lua_State** %1, align 4, !dbg !1754
  %274 = load %struct.lua_TValue** %rb7, align 4, !dbg !1754
  %275 = load %struct.lua_TValue** %rc8, align 4, !dbg !1754
  %276 = load %struct.lua_TValue** %ra, align 4, !dbg !1754
  %277 = load %struct.lua_TValue** %slot9, align 4, !dbg !1754
  call void @luaV_finishget(%struct.lua_State* %273, %struct.lua_TValue* %274, %struct.lua_TValue* %275, %struct.lua_TValue* %276, %struct.lua_TValue* %277), !dbg !1754
  %278 = load %struct.CallInfo** %ci, align 4, !dbg !1759
  %279 = getelementptr inbounds %struct.CallInfo* %278, i32 0, i32 4, !dbg !1759
  %280 = bitcast %union.anon* %279 to %struct.anon*, !dbg !1759
  %281 = getelementptr inbounds %struct.anon* %280, i32 0, i32 0, !dbg !1759
  %282 = load %struct.lua_TValue** %281, align 4, !dbg !1759
  store %struct.lua_TValue* %282, %struct.lua_TValue** %base, align 4, !dbg !1759
  br label %283

; <label>:283                                     ; preds = %272, %265
  br label %3454, !dbg !1760

; <label>:284                                     ; preds = %51
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %upval11}, metadata !1761), !dbg !1763
  %285 = load i32* %i, align 4, !dbg !1764
  %286 = lshr i32 %285, 6, !dbg !1764
  %287 = and i32 %286, 255, !dbg !1764
  %288 = load %struct.LClosure** %cl, align 4, !dbg !1764
  %289 = getelementptr inbounds %struct.LClosure* %288, i32 0, i32 6, !dbg !1764
  %290 = getelementptr inbounds [1 x %struct.UpVal*]* %289, i32 0, i32 %287, !dbg !1764
  %291 = load %struct.UpVal** %290, align 4, !dbg !1764
  %292 = getelementptr inbounds %struct.UpVal* %291, i32 0, i32 0, !dbg !1764
  %293 = load %struct.lua_TValue** %292, align 4, !dbg !1764
  store %struct.lua_TValue* %293, %struct.lua_TValue** %upval11, align 4, !dbg !1764
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %rb12}, metadata !1765), !dbg !1766
  %294 = load i32* %i, align 4, !dbg !1767
  %295 = lshr i32 %294, 23, !dbg !1767
  %296 = and i32 %295, 511, !dbg !1767
  %297 = and i32 %296, 256, !dbg !1767
  %298 = icmp ne i32 %297, 0, !dbg !1767
  br i1 %298, label %299, label %306, !dbg !1767

; <label>:299                                     ; preds = %284
  %300 = load %struct.lua_TValue** %k, align 4, !dbg !1768
  %301 = load i32* %i, align 4, !dbg !1768
  %302 = lshr i32 %301, 23, !dbg !1768
  %303 = and i32 %302, 511, !dbg !1768
  %304 = and i32 %303, -257, !dbg !1768
  %305 = getelementptr inbounds %struct.lua_TValue* %300, i32 %304, !dbg !1768
  br label %312, !dbg !1768

; <label>:306                                     ; preds = %284
  %307 = load %struct.lua_TValue** %base, align 4, !dbg !1770
  %308 = load i32* %i, align 4, !dbg !1770
  %309 = lshr i32 %308, 23, !dbg !1770
  %310 = and i32 %309, 511, !dbg !1770
  %311 = getelementptr inbounds %struct.lua_TValue* %307, i32 %310, !dbg !1770
  br label %312, !dbg !1770

; <label>:312                                     ; preds = %306, %299
  %313 = phi %struct.lua_TValue* [ %305, %299 ], [ %311, %306 ], !dbg !1767
  store %struct.lua_TValue* %313, %struct.lua_TValue** %rb12, align 4, !dbg !1772
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %rc13}, metadata !1775), !dbg !1776
  %314 = load i32* %i, align 4, !dbg !1777
  %315 = lshr i32 %314, 14, !dbg !1777
  %316 = and i32 %315, 511, !dbg !1777
  %317 = and i32 %316, 256, !dbg !1777
  %318 = icmp ne i32 %317, 0, !dbg !1777
  br i1 %318, label %319, label %326, !dbg !1777

; <label>:319                                     ; preds = %312
  %320 = load %struct.lua_TValue** %k, align 4, !dbg !1778
  %321 = load i32* %i, align 4, !dbg !1778
  %322 = lshr i32 %321, 14, !dbg !1778
  %323 = and i32 %322, 511, !dbg !1778
  %324 = and i32 %323, -257, !dbg !1778
  %325 = getelementptr inbounds %struct.lua_TValue* %320, i32 %324, !dbg !1778
  br label %332, !dbg !1778

; <label>:326                                     ; preds = %312
  %327 = load %struct.lua_TValue** %base, align 4, !dbg !1780
  %328 = load i32* %i, align 4, !dbg !1780
  %329 = lshr i32 %328, 14, !dbg !1780
  %330 = and i32 %329, 511, !dbg !1780
  %331 = getelementptr inbounds %struct.lua_TValue* %327, i32 %330, !dbg !1780
  br label %332, !dbg !1780

; <label>:332                                     ; preds = %326, %319
  %333 = phi %struct.lua_TValue* [ %325, %319 ], [ %331, %326 ], !dbg !1777
  store %struct.lua_TValue* %333, %struct.lua_TValue** %rc13, align 4, !dbg !1782
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %slot14}, metadata !1785), !dbg !1787
  %334 = load %struct.lua_TValue** %upval11, align 4, !dbg !1788
  %335 = getelementptr inbounds %struct.lua_TValue* %334, i32 0, i32 1, !dbg !1788
  %336 = load i32* %335, align 4, !dbg !1788
  %337 = icmp eq i32 %336, 69, !dbg !1788
  br i1 %337, label %339, label %338, !dbg !1788

; <label>:338                                     ; preds = %332
  store %struct.lua_TValue* null, %struct.lua_TValue** %slot14, align 4, !dbg !1790
  br i1 false, label %410, label %399, !dbg !1790

; <label>:339                                     ; preds = %332
  %340 = load %struct.lua_TValue** %upval11, align 4, !dbg !1792
  %341 = getelementptr inbounds %struct.lua_TValue* %340, i32 0, i32 0, !dbg !1792
  %342 = bitcast %union.Value* %341 to %struct.GCObject**, !dbg !1792
  %343 = load %struct.GCObject** %342, align 4, !dbg !1792
  %344 = bitcast %struct.GCObject* %343 to %union.GCUnion*, !dbg !1792
  %345 = bitcast %union.GCUnion* %344 to %struct.Table*, !dbg !1792
  %346 = load %struct.lua_TValue** %rb12, align 4, !dbg !1792
  %347 = call %struct.lua_TValue* @luaH_get(%struct.Table* %345, %struct.lua_TValue* %346), !dbg !1792
  store %struct.lua_TValue* %347, %struct.lua_TValue** %slot14, align 4, !dbg !1792
  %348 = load %struct.lua_TValue** %slot14, align 4, !dbg !1792
  %349 = getelementptr inbounds %struct.lua_TValue* %348, i32 0, i32 1, !dbg !1792
  %350 = load i32* %349, align 4, !dbg !1792
  %351 = icmp eq i32 %350, 0, !dbg !1792
  br i1 %351, label %352, label %353, !dbg !1792

; <label>:352                                     ; preds = %339
  br label %396, !dbg !1794

; <label>:353                                     ; preds = %339
  %354 = load %struct.lua_TValue** %rc13, align 4, !dbg !1796
  %355 = getelementptr inbounds %struct.lua_TValue* %354, i32 0, i32 1, !dbg !1796
  %356 = load i32* %355, align 4, !dbg !1796
  %357 = and i32 %356, 64, !dbg !1796
  %358 = icmp ne i32 %357, 0, !dbg !1796
  br i1 %358, label %359, label %389, !dbg !1796

; <label>:359                                     ; preds = %353
  %360 = load %struct.lua_TValue** %upval11, align 4, !dbg !1798
  %361 = getelementptr inbounds %struct.lua_TValue* %360, i32 0, i32 0, !dbg !1798
  %362 = bitcast %union.Value* %361 to %struct.GCObject**, !dbg !1798
  %363 = load %struct.GCObject** %362, align 4, !dbg !1798
  %364 = bitcast %struct.GCObject* %363 to %union.GCUnion*, !dbg !1798
  %365 = bitcast %union.GCUnion* %364 to %struct.Table*, !dbg !1798
  %366 = getelementptr inbounds %struct.Table* %365, i32 0, i32 2, !dbg !1798
  %367 = load i8* %366, align 1, !dbg !1798
  %368 = zext i8 %367 to i32, !dbg !1798
  %369 = and i32 %368, 4, !dbg !1798
  %370 = icmp ne i32 %369, 0, !dbg !1798
  br i1 %370, label %371, label %389, !dbg !1798

; <label>:371                                     ; preds = %359
  %372 = load %struct.lua_TValue** %rc13, align 4, !dbg !1800
  %373 = getelementptr inbounds %struct.lua_TValue* %372, i32 0, i32 0, !dbg !1800
  %374 = bitcast %union.Value* %373 to %struct.GCObject**, !dbg !1800
  %375 = load %struct.GCObject** %374, align 4, !dbg !1800
  %376 = getelementptr inbounds %struct.GCObject* %375, i32 0, i32 2, !dbg !1800
  %377 = load i8* %376, align 1, !dbg !1800
  %378 = zext i8 %377 to i32, !dbg !1800
  %379 = and i32 %378, 3, !dbg !1800
  %380 = icmp ne i32 %379, 0, !dbg !1800
  br i1 %380, label %381, label %389, !dbg !1800

; <label>:381                                     ; preds = %371
  %382 = load %struct.lua_State** %1, align 4, !dbg !1802
  %383 = load %struct.lua_TValue** %upval11, align 4, !dbg !1802
  %384 = getelementptr inbounds %struct.lua_TValue* %383, i32 0, i32 0, !dbg !1802
  %385 = bitcast %union.Value* %384 to %struct.GCObject**, !dbg !1802
  %386 = load %struct.GCObject** %385, align 4, !dbg !1802
  %387 = bitcast %struct.GCObject* %386 to %union.GCUnion*, !dbg !1802
  %388 = bitcast %union.GCUnion* %387 to %struct.Table*, !dbg !1802
  call void @luaC_barrierback_(%struct.lua_State* %382, %struct.Table* %388), !dbg !1802
  br label %390, !dbg !1802

; <label>:389                                     ; preds = %371, %359, %353
  br label %390, !dbg !1804

; <label>:390                                     ; preds = %389, %381
  %391 = load %struct.lua_State** %1, align 4, !dbg !1808
  %392 = load %struct.lua_TValue** %slot14, align 4, !dbg !1808
  %393 = load %struct.lua_TValue** %rc13, align 4, !dbg !1808
  %394 = bitcast %struct.lua_TValue* %392 to i8*, !dbg !1808
  %395 = bitcast %struct.lua_TValue* %393 to i8*, !dbg !1808
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %394, i8* %395, i32 16, i32 8, i1 false), !dbg !1808
  br label %396, !dbg !1808

; <label>:396                                     ; preds = %390, %352
  %397 = phi i32 [ 0, %352 ], [ 1, %390 ], !dbg !1788
  %398 = icmp ne i32 %397, 0, !dbg !1811
  br i1 %398, label %410, label %399, !dbg !1811

; <label>:399                                     ; preds = %396, %338
  %400 = load %struct.lua_State** %1, align 4, !dbg !1814
  %401 = load %struct.lua_TValue** %upval11, align 4, !dbg !1814
  %402 = load %struct.lua_TValue** %rb12, align 4, !dbg !1814
  %403 = load %struct.lua_TValue** %rc13, align 4, !dbg !1814
  %404 = load %struct.lua_TValue** %slot14, align 4, !dbg !1814
  call void @luaV_finishset(%struct.lua_State* %400, %struct.lua_TValue* %401, %struct.lua_TValue* %402, %struct.lua_TValue* %403, %struct.lua_TValue* %404), !dbg !1814
  %405 = load %struct.CallInfo** %ci, align 4, !dbg !1819
  %406 = getelementptr inbounds %struct.CallInfo* %405, i32 0, i32 4, !dbg !1819
  %407 = bitcast %union.anon* %406 to %struct.anon*, !dbg !1819
  %408 = getelementptr inbounds %struct.anon* %407, i32 0, i32 0, !dbg !1819
  %409 = load %struct.lua_TValue** %408, align 4, !dbg !1819
  store %struct.lua_TValue* %409, %struct.lua_TValue** %base, align 4, !dbg !1819
  br label %410, !dbg !1819

; <label>:410                                     ; preds = %399, %396, %338
  br label %3454, !dbg !1820

; <label>:411                                     ; preds = %51
  call void @llvm.dbg.declare(metadata !{%struct.UpVal** %uv}, metadata !1821), !dbg !1823
  %412 = load i32* %i, align 4, !dbg !1824
  %413 = lshr i32 %412, 23, !dbg !1824
  %414 = and i32 %413, 511, !dbg !1824
  %415 = load %struct.LClosure** %cl, align 4, !dbg !1824
  %416 = getelementptr inbounds %struct.LClosure* %415, i32 0, i32 6, !dbg !1824
  %417 = getelementptr inbounds [1 x %struct.UpVal*]* %416, i32 0, i32 %414, !dbg !1824
  %418 = load %struct.UpVal** %417, align 4, !dbg !1824
  store %struct.UpVal* %418, %struct.UpVal** %uv, align 4, !dbg !1824
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %io115}, metadata !1825), !dbg !1827
  %419 = load %struct.UpVal** %uv, align 4, !dbg !1827
  %420 = getelementptr inbounds %struct.UpVal* %419, i32 0, i32 0, !dbg !1827
  %421 = load %struct.lua_TValue** %420, align 4, !dbg !1827
  store %struct.lua_TValue* %421, %struct.lua_TValue** %io115, align 4, !dbg !1827
  %422 = load %struct.lua_TValue** %io115, align 4, !dbg !1827
  %423 = load %struct.lua_TValue** %ra, align 4, !dbg !1827
  %424 = bitcast %struct.lua_TValue* %422 to i8*, !dbg !1827
  %425 = bitcast %struct.lua_TValue* %423 to i8*, !dbg !1827
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %424, i8* %425, i32 16, i32 8, i1 false), !dbg !1827
  %426 = load %struct.lua_State** %1, align 4, !dbg !1827
  %427 = load %struct.UpVal** %uv, align 4, !dbg !1828
  %428 = getelementptr inbounds %struct.UpVal* %427, i32 0, i32 0, !dbg !1828
  %429 = load %struct.lua_TValue** %428, align 4, !dbg !1828
  %430 = getelementptr inbounds %struct.lua_TValue* %429, i32 0, i32 1, !dbg !1828
  %431 = load i32* %430, align 4, !dbg !1828
  %432 = and i32 %431, 64, !dbg !1828
  %433 = icmp ne i32 %432, 0, !dbg !1828
  br i1 %433, label %434, label %445, !dbg !1828

; <label>:434                                     ; preds = %411
  %435 = load %struct.UpVal** %uv, align 4, !dbg !1829
  %436 = getelementptr inbounds %struct.UpVal* %435, i32 0, i32 0, !dbg !1829
  %437 = load %struct.lua_TValue** %436, align 4, !dbg !1829
  %438 = load %struct.UpVal** %uv, align 4, !dbg !1829
  %439 = getelementptr inbounds %struct.UpVal* %438, i32 0, i32 2, !dbg !1829
  %440 = bitcast %union.anon.1* %439 to %struct.lua_TValue*, !dbg !1829
  %441 = icmp ne %struct.lua_TValue* %437, %440, !dbg !1829
  br i1 %441, label %445, label %442, !dbg !1829

; <label>:442                                     ; preds = %434
  %443 = load %struct.lua_State** %1, align 4, !dbg !1831
  %444 = load %struct.UpVal** %uv, align 4, !dbg !1831
  call void @luaC_upvalbarrier_(%struct.lua_State* %443, %struct.UpVal* %444), !dbg !1831
  br label %446, !dbg !1831

; <label>:445                                     ; preds = %434, %411
  br label %446, !dbg !1833

; <label>:446                                     ; preds = %445, %442
  br label %3454, !dbg !1836

; <label>:447                                     ; preds = %51
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %rb16}, metadata !1837), !dbg !1839
  %448 = load i32* %i, align 4, !dbg !1840
  %449 = lshr i32 %448, 23, !dbg !1840
  %450 = and i32 %449, 511, !dbg !1840
  %451 = and i32 %450, 256, !dbg !1840
  %452 = icmp ne i32 %451, 0, !dbg !1840
  br i1 %452, label %453, label %460, !dbg !1840

; <label>:453                                     ; preds = %447
  %454 = load %struct.lua_TValue** %k, align 4, !dbg !1841
  %455 = load i32* %i, align 4, !dbg !1841
  %456 = lshr i32 %455, 23, !dbg !1841
  %457 = and i32 %456, 511, !dbg !1841
  %458 = and i32 %457, -257, !dbg !1841
  %459 = getelementptr inbounds %struct.lua_TValue* %454, i32 %458, !dbg !1841
  br label %466, !dbg !1841

; <label>:460                                     ; preds = %447
  %461 = load %struct.lua_TValue** %base, align 4, !dbg !1843
  %462 = load i32* %i, align 4, !dbg !1843
  %463 = lshr i32 %462, 23, !dbg !1843
  %464 = and i32 %463, 511, !dbg !1843
  %465 = getelementptr inbounds %struct.lua_TValue* %461, i32 %464, !dbg !1843
  br label %466, !dbg !1843

; <label>:466                                     ; preds = %460, %453
  %467 = phi %struct.lua_TValue* [ %459, %453 ], [ %465, %460 ], !dbg !1840
  store %struct.lua_TValue* %467, %struct.lua_TValue** %rb16, align 4, !dbg !1845
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %rc17}, metadata !1848), !dbg !1849
  %468 = load i32* %i, align 4, !dbg !1850
  %469 = lshr i32 %468, 14, !dbg !1850
  %470 = and i32 %469, 511, !dbg !1850
  %471 = and i32 %470, 256, !dbg !1850
  %472 = icmp ne i32 %471, 0, !dbg !1850
  br i1 %472, label %473, label %480, !dbg !1850

; <label>:473                                     ; preds = %466
  %474 = load %struct.lua_TValue** %k, align 4, !dbg !1851
  %475 = load i32* %i, align 4, !dbg !1851
  %476 = lshr i32 %475, 14, !dbg !1851
  %477 = and i32 %476, 511, !dbg !1851
  %478 = and i32 %477, -257, !dbg !1851
  %479 = getelementptr inbounds %struct.lua_TValue* %474, i32 %478, !dbg !1851
  br label %486, !dbg !1851

; <label>:480                                     ; preds = %466
  %481 = load %struct.lua_TValue** %base, align 4, !dbg !1853
  %482 = load i32* %i, align 4, !dbg !1853
  %483 = lshr i32 %482, 14, !dbg !1853
  %484 = and i32 %483, 511, !dbg !1853
  %485 = getelementptr inbounds %struct.lua_TValue* %481, i32 %484, !dbg !1853
  br label %486, !dbg !1853

; <label>:486                                     ; preds = %480, %473
  %487 = phi %struct.lua_TValue* [ %479, %473 ], [ %485, %480 ], !dbg !1850
  store %struct.lua_TValue* %487, %struct.lua_TValue** %rc17, align 4, !dbg !1855
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %slot18}, metadata !1858), !dbg !1860
  %488 = load %struct.lua_TValue** %ra, align 4, !dbg !1861
  %489 = getelementptr inbounds %struct.lua_TValue* %488, i32 0, i32 1, !dbg !1861
  %490 = load i32* %489, align 4, !dbg !1861
  %491 = icmp eq i32 %490, 69, !dbg !1861
  br i1 %491, label %493, label %492, !dbg !1861

; <label>:492                                     ; preds = %486
  store %struct.lua_TValue* null, %struct.lua_TValue** %slot18, align 4, !dbg !1863
  br i1 false, label %564, label %553, !dbg !1863

; <label>:493                                     ; preds = %486
  %494 = load %struct.lua_TValue** %ra, align 4, !dbg !1865
  %495 = getelementptr inbounds %struct.lua_TValue* %494, i32 0, i32 0, !dbg !1865
  %496 = bitcast %union.Value* %495 to %struct.GCObject**, !dbg !1865
  %497 = load %struct.GCObject** %496, align 4, !dbg !1865
  %498 = bitcast %struct.GCObject* %497 to %union.GCUnion*, !dbg !1865
  %499 = bitcast %union.GCUnion* %498 to %struct.Table*, !dbg !1865
  %500 = load %struct.lua_TValue** %rb16, align 4, !dbg !1865
  %501 = call %struct.lua_TValue* @luaH_get(%struct.Table* %499, %struct.lua_TValue* %500), !dbg !1865
  store %struct.lua_TValue* %501, %struct.lua_TValue** %slot18, align 4, !dbg !1865
  %502 = load %struct.lua_TValue** %slot18, align 4, !dbg !1865
  %503 = getelementptr inbounds %struct.lua_TValue* %502, i32 0, i32 1, !dbg !1865
  %504 = load i32* %503, align 4, !dbg !1865
  %505 = icmp eq i32 %504, 0, !dbg !1865
  br i1 %505, label %506, label %507, !dbg !1865

; <label>:506                                     ; preds = %493
  br label %550, !dbg !1867

; <label>:507                                     ; preds = %493
  %508 = load %struct.lua_TValue** %rc17, align 4, !dbg !1869
  %509 = getelementptr inbounds %struct.lua_TValue* %508, i32 0, i32 1, !dbg !1869
  %510 = load i32* %509, align 4, !dbg !1869
  %511 = and i32 %510, 64, !dbg !1869
  %512 = icmp ne i32 %511, 0, !dbg !1869
  br i1 %512, label %513, label %543, !dbg !1869

; <label>:513                                     ; preds = %507
  %514 = load %struct.lua_TValue** %ra, align 4, !dbg !1871
  %515 = getelementptr inbounds %struct.lua_TValue* %514, i32 0, i32 0, !dbg !1871
  %516 = bitcast %union.Value* %515 to %struct.GCObject**, !dbg !1871
  %517 = load %struct.GCObject** %516, align 4, !dbg !1871
  %518 = bitcast %struct.GCObject* %517 to %union.GCUnion*, !dbg !1871
  %519 = bitcast %union.GCUnion* %518 to %struct.Table*, !dbg !1871
  %520 = getelementptr inbounds %struct.Table* %519, i32 0, i32 2, !dbg !1871
  %521 = load i8* %520, align 1, !dbg !1871
  %522 = zext i8 %521 to i32, !dbg !1871
  %523 = and i32 %522, 4, !dbg !1871
  %524 = icmp ne i32 %523, 0, !dbg !1871
  br i1 %524, label %525, label %543, !dbg !1871

; <label>:525                                     ; preds = %513
  %526 = load %struct.lua_TValue** %rc17, align 4, !dbg !1873
  %527 = getelementptr inbounds %struct.lua_TValue* %526, i32 0, i32 0, !dbg !1873
  %528 = bitcast %union.Value* %527 to %struct.GCObject**, !dbg !1873
  %529 = load %struct.GCObject** %528, align 4, !dbg !1873
  %530 = getelementptr inbounds %struct.GCObject* %529, i32 0, i32 2, !dbg !1873
  %531 = load i8* %530, align 1, !dbg !1873
  %532 = zext i8 %531 to i32, !dbg !1873
  %533 = and i32 %532, 3, !dbg !1873
  %534 = icmp ne i32 %533, 0, !dbg !1873
  br i1 %534, label %535, label %543, !dbg !1873

; <label>:535                                     ; preds = %525
  %536 = load %struct.lua_State** %1, align 4, !dbg !1875
  %537 = load %struct.lua_TValue** %ra, align 4, !dbg !1875
  %538 = getelementptr inbounds %struct.lua_TValue* %537, i32 0, i32 0, !dbg !1875
  %539 = bitcast %union.Value* %538 to %struct.GCObject**, !dbg !1875
  %540 = load %struct.GCObject** %539, align 4, !dbg !1875
  %541 = bitcast %struct.GCObject* %540 to %union.GCUnion*, !dbg !1875
  %542 = bitcast %union.GCUnion* %541 to %struct.Table*, !dbg !1875
  call void @luaC_barrierback_(%struct.lua_State* %536, %struct.Table* %542), !dbg !1875
  br label %544, !dbg !1875

; <label>:543                                     ; preds = %525, %513, %507
  br label %544, !dbg !1877

; <label>:544                                     ; preds = %543, %535
  %545 = load %struct.lua_State** %1, align 4, !dbg !1881
  %546 = load %struct.lua_TValue** %slot18, align 4, !dbg !1881
  %547 = load %struct.lua_TValue** %rc17, align 4, !dbg !1881
  %548 = bitcast %struct.lua_TValue* %546 to i8*, !dbg !1881
  %549 = bitcast %struct.lua_TValue* %547 to i8*, !dbg !1881
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %548, i8* %549, i32 16, i32 8, i1 false), !dbg !1881
  br label %550, !dbg !1881

; <label>:550                                     ; preds = %544, %506
  %551 = phi i32 [ 0, %506 ], [ 1, %544 ], !dbg !1861
  %552 = icmp ne i32 %551, 0, !dbg !1884
  br i1 %552, label %564, label %553, !dbg !1884

; <label>:553                                     ; preds = %550, %492
  %554 = load %struct.lua_State** %1, align 4, !dbg !1887
  %555 = load %struct.lua_TValue** %ra, align 4, !dbg !1887
  %556 = load %struct.lua_TValue** %rb16, align 4, !dbg !1887
  %557 = load %struct.lua_TValue** %rc17, align 4, !dbg !1887
  %558 = load %struct.lua_TValue** %slot18, align 4, !dbg !1887
  call void @luaV_finishset(%struct.lua_State* %554, %struct.lua_TValue* %555, %struct.lua_TValue* %556, %struct.lua_TValue* %557, %struct.lua_TValue* %558), !dbg !1887
  %559 = load %struct.CallInfo** %ci, align 4, !dbg !1892
  %560 = getelementptr inbounds %struct.CallInfo* %559, i32 0, i32 4, !dbg !1892
  %561 = bitcast %union.anon* %560 to %struct.anon*, !dbg !1892
  %562 = getelementptr inbounds %struct.anon* %561, i32 0, i32 0, !dbg !1892
  %563 = load %struct.lua_TValue** %562, align 4, !dbg !1892
  store %struct.lua_TValue* %563, %struct.lua_TValue** %base, align 4, !dbg !1892
  br label %564, !dbg !1892

; <label>:564                                     ; preds = %553, %550, %492
  br label %3454, !dbg !1893

; <label>:565                                     ; preds = %51
  call void @llvm.dbg.declare(metadata !{i32* %b19}, metadata !1894), !dbg !1896
  %566 = load i32* %i, align 4, !dbg !1897
  %567 = lshr i32 %566, 23, !dbg !1897
  %568 = and i32 %567, 511, !dbg !1897
  store i32 %568, i32* %b19, align 4, !dbg !1897
  call void @llvm.dbg.declare(metadata !{i32* %c}, metadata !1898), !dbg !1899
  %569 = load i32* %i, align 4, !dbg !1900
  %570 = lshr i32 %569, 14, !dbg !1900
  %571 = and i32 %570, 511, !dbg !1900
  store i32 %571, i32* %c, align 4, !dbg !1900
  call void @llvm.dbg.declare(metadata !{%struct.Table** %t}, metadata !1901), !dbg !1902
  %572 = load %struct.lua_State** %1, align 4, !dbg !1903
  %573 = call %struct.Table* @luaH_new(%struct.lua_State* %572), !dbg !1903
  store %struct.Table* %573, %struct.Table** %t, align 4, !dbg !1903
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %io20}, metadata !1904), !dbg !1906
  %574 = load %struct.lua_TValue** %ra, align 4, !dbg !1906
  store %struct.lua_TValue* %574, %struct.lua_TValue** %io20, align 4, !dbg !1906
  call void @llvm.dbg.declare(metadata !{%struct.Table** %x_}, metadata !1907), !dbg !1906
  %575 = load %struct.Table** %t, align 4, !dbg !1906
  store %struct.Table* %575, %struct.Table** %x_, align 4, !dbg !1906
  %576 = load %struct.Table** %x_, align 4, !dbg !1906
  %577 = bitcast %struct.Table* %576 to %union.GCUnion*, !dbg !1906
  %578 = bitcast %union.GCUnion* %577 to %struct.GCObject*, !dbg !1906
  %579 = load %struct.lua_TValue** %io20, align 4, !dbg !1906
  %580 = getelementptr inbounds %struct.lua_TValue* %579, i32 0, i32 0, !dbg !1906
  %581 = bitcast %union.Value* %580 to %struct.GCObject**, !dbg !1906
  store %struct.GCObject* %578, %struct.GCObject** %581, align 4, !dbg !1906
  %582 = load %struct.lua_TValue** %io20, align 4, !dbg !1906
  %583 = getelementptr inbounds %struct.lua_TValue* %582, i32 0, i32 1, !dbg !1906
  store i32 69, i32* %583, align 4, !dbg !1906
  %584 = load i32* %b19, align 4, !dbg !1908
  %585 = icmp ne i32 %584, 0, !dbg !1908
  br i1 %585, label %589, label %586, !dbg !1908

; <label>:586                                     ; preds = %565
  %587 = load i32* %c, align 4, !dbg !1910
  %588 = icmp ne i32 %587, 0, !dbg !1910
  br i1 %588, label %589, label %596, !dbg !1910

; <label>:589                                     ; preds = %586, %565
  %590 = load %struct.lua_State** %1, align 4, !dbg !1912
  %591 = load %struct.Table** %t, align 4, !dbg !1912
  %592 = load i32* %b19, align 4, !dbg !1913
  %593 = call i32 @luaO_fb2int(i32 %592), !dbg !1913
  %594 = load i32* %c, align 4, !dbg !1914
  %595 = call i32 @luaO_fb2int(i32 %594), !dbg !1914
  call void @luaH_resize(%struct.lua_State* %590, %struct.Table* %591, i32 %593, i32 %595), !dbg !1912
  br label %596, !dbg !1912

; <label>:596                                     ; preds = %589, %586
  %597 = load %struct.lua_State** %1, align 4, !dbg !1915
  %598 = getelementptr inbounds %struct.lua_State* %597, i32 0, i32 6, !dbg !1915
  %599 = load %struct.global_State** %598, align 4, !dbg !1915
  %600 = getelementptr inbounds %struct.global_State* %599, i32 0, i32 3, !dbg !1915
  %601 = load i32* %600, align 4, !dbg !1915
  %602 = icmp sgt i32 %601, 0, !dbg !1915
  br i1 %602, label %603, label %619, !dbg !1915

; <label>:603                                     ; preds = %596
  %604 = load %struct.lua_TValue** %ra, align 4, !dbg !1919
  %605 = getelementptr inbounds %struct.lua_TValue* %604, i32 1, !dbg !1919
  %606 = load %struct.lua_State** %1, align 4, !dbg !1919
  %607 = getelementptr inbounds %struct.lua_State* %606, i32 0, i32 5, !dbg !1919
  store %struct.lua_TValue* %605, %struct.lua_TValue** %607, align 4, !dbg !1919
  %608 = load %struct.lua_State** %1, align 4, !dbg !1919
  call void @luaC_step(%struct.lua_State* %608), !dbg !1919
  %609 = load %struct.CallInfo** %ci, align 4, !dbg !1922
  %610 = getelementptr inbounds %struct.CallInfo* %609, i32 0, i32 1, !dbg !1922
  %611 = load %struct.lua_TValue** %610, align 4, !dbg !1922
  %612 = load %struct.lua_State** %1, align 4, !dbg !1922
  %613 = getelementptr inbounds %struct.lua_State* %612, i32 0, i32 5, !dbg !1922
  store %struct.lua_TValue* %611, %struct.lua_TValue** %613, align 4, !dbg !1922
  %614 = load %struct.CallInfo** %ci, align 4, !dbg !1925
  %615 = getelementptr inbounds %struct.CallInfo* %614, i32 0, i32 4, !dbg !1925
  %616 = bitcast %union.anon* %615 to %struct.anon*, !dbg !1925
  %617 = getelementptr inbounds %struct.anon* %616, i32 0, i32 0, !dbg !1925
  %618 = load %struct.lua_TValue** %617, align 4, !dbg !1925
  store %struct.lua_TValue* %618, %struct.lua_TValue** %base, align 4, !dbg !1925
  br label %619, !dbg !1926

; <label>:619                                     ; preds = %603, %596
  br label %3454, !dbg !1927

; <label>:620                                     ; preds = %51
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %aux}, metadata !1928), !dbg !1930
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %rb21}, metadata !1931), !dbg !1932
  %621 = load %struct.lua_TValue** %base, align 4, !dbg !1933
  %622 = load i32* %i, align 4, !dbg !1933
  %623 = lshr i32 %622, 23, !dbg !1933
  %624 = and i32 %623, 511, !dbg !1933
  %625 = getelementptr inbounds %struct.lua_TValue* %621, i32 %624, !dbg !1933
  store %struct.lua_TValue* %625, %struct.lua_TValue** %rb21, align 4, !dbg !1933
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %rc22}, metadata !1934), !dbg !1935
  %626 = load i32* %i, align 4, !dbg !1936
  %627 = lshr i32 %626, 14, !dbg !1936
  %628 = and i32 %627, 511, !dbg !1936
  %629 = and i32 %628, 256, !dbg !1936
  %630 = icmp ne i32 %629, 0, !dbg !1936
  br i1 %630, label %631, label %638, !dbg !1936

; <label>:631                                     ; preds = %620
  %632 = load %struct.lua_TValue** %k, align 4, !dbg !1937
  %633 = load i32* %i, align 4, !dbg !1937
  %634 = lshr i32 %633, 14, !dbg !1937
  %635 = and i32 %634, 511, !dbg !1937
  %636 = and i32 %635, -257, !dbg !1937
  %637 = getelementptr inbounds %struct.lua_TValue* %632, i32 %636, !dbg !1937
  br label %644, !dbg !1937

; <label>:638                                     ; preds = %620
  %639 = load %struct.lua_TValue** %base, align 4, !dbg !1939
  %640 = load i32* %i, align 4, !dbg !1939
  %641 = lshr i32 %640, 14, !dbg !1939
  %642 = and i32 %641, 511, !dbg !1939
  %643 = getelementptr inbounds %struct.lua_TValue* %639, i32 %642, !dbg !1939
  br label %644, !dbg !1939

; <label>:644                                     ; preds = %638, %631
  %645 = phi %struct.lua_TValue* [ %637, %631 ], [ %643, %638 ], !dbg !1936
  store %struct.lua_TValue* %645, %struct.lua_TValue** %rc22, align 4, !dbg !1941
  call void @llvm.dbg.declare(metadata !{%struct.TString** %key}, metadata !1944), !dbg !1945
  %646 = load %struct.lua_TValue** %rc22, align 4, !dbg !1946
  %647 = getelementptr inbounds %struct.lua_TValue* %646, i32 0, i32 0, !dbg !1946
  %648 = bitcast %union.Value* %647 to %struct.GCObject**, !dbg !1946
  %649 = load %struct.GCObject** %648, align 4, !dbg !1946
  %650 = bitcast %struct.GCObject* %649 to %union.GCUnion*, !dbg !1946
  %651 = bitcast %union.GCUnion* %650 to %struct.TString*, !dbg !1946
  store %struct.TString* %651, %struct.TString** %key, align 4, !dbg !1946
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %io123}, metadata !1947), !dbg !1949
  %652 = load %struct.lua_TValue** %ra, align 4, !dbg !1949
  %653 = getelementptr inbounds %struct.lua_TValue* %652, i32 1, !dbg !1949
  store %struct.lua_TValue* %653, %struct.lua_TValue** %io123, align 4, !dbg !1949
  %654 = load %struct.lua_TValue** %io123, align 4, !dbg !1949
  %655 = load %struct.lua_TValue** %rb21, align 4, !dbg !1949
  %656 = bitcast %struct.lua_TValue* %654 to i8*, !dbg !1949
  %657 = bitcast %struct.lua_TValue* %655 to i8*, !dbg !1949
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %656, i8* %657, i32 16, i32 8, i1 false), !dbg !1949
  %658 = load %struct.lua_State** %1, align 4, !dbg !1949
  %659 = load %struct.lua_TValue** %rb21, align 4, !dbg !1950
  %660 = getelementptr inbounds %struct.lua_TValue* %659, i32 0, i32 1, !dbg !1950
  %661 = load i32* %660, align 4, !dbg !1950
  %662 = icmp eq i32 %661, 69, !dbg !1950
  br i1 %662, label %664, label %663, !dbg !1950

; <label>:663                                     ; preds = %644
  store %struct.lua_TValue* null, %struct.lua_TValue** %aux, align 4, !dbg !1952
  br i1 false, label %678, label %685, !dbg !1952

; <label>:664                                     ; preds = %644
  %665 = load %struct.lua_TValue** %rb21, align 4, !dbg !1954
  %666 = getelementptr inbounds %struct.lua_TValue* %665, i32 0, i32 0, !dbg !1954
  %667 = bitcast %union.Value* %666 to %struct.GCObject**, !dbg !1954
  %668 = load %struct.GCObject** %667, align 4, !dbg !1954
  %669 = bitcast %struct.GCObject* %668 to %union.GCUnion*, !dbg !1954
  %670 = bitcast %union.GCUnion* %669 to %struct.Table*, !dbg !1954
  %671 = load %struct.TString** %key, align 4, !dbg !1954
  %672 = call %struct.lua_TValue* @luaH_getstr(%struct.Table* %670, %struct.TString* %671), !dbg !1954
  store %struct.lua_TValue* %672, %struct.lua_TValue** %aux, align 4, !dbg !1954
  %673 = load %struct.lua_TValue** %aux, align 4, !dbg !1954
  %674 = getelementptr inbounds %struct.lua_TValue* %673, i32 0, i32 1, !dbg !1954
  %675 = load i32* %674, align 4, !dbg !1954
  %676 = icmp eq i32 %675, 0, !dbg !1954
  %677 = xor i1 %676, true, !dbg !1954
  br i1 %677, label %678, label %685, !dbg !1954

; <label>:678                                     ; preds = %664, %663
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %io124}, metadata !1956), !dbg !1959
  %679 = load %struct.lua_TValue** %ra, align 4, !dbg !1959
  store %struct.lua_TValue* %679, %struct.lua_TValue** %io124, align 4, !dbg !1959
  %680 = load %struct.lua_TValue** %io124, align 4, !dbg !1959
  %681 = load %struct.lua_TValue** %aux, align 4, !dbg !1959
  %682 = bitcast %struct.lua_TValue* %680 to i8*, !dbg !1959
  %683 = bitcast %struct.lua_TValue* %681 to i8*, !dbg !1959
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %682, i8* %683, i32 16, i32 8, i1 false), !dbg !1959
  %684 = load %struct.lua_State** %1, align 4, !dbg !1959
  br label %696, !dbg !1960

; <label>:685                                     ; preds = %664, %663
  %686 = load %struct.lua_State** %1, align 4, !dbg !1961
  %687 = load %struct.lua_TValue** %rb21, align 4, !dbg !1961
  %688 = load %struct.lua_TValue** %rc22, align 4, !dbg !1961
  %689 = load %struct.lua_TValue** %ra, align 4, !dbg !1961
  %690 = load %struct.lua_TValue** %aux, align 4, !dbg !1961
  call void @luaV_finishget(%struct.lua_State* %686, %struct.lua_TValue* %687, %struct.lua_TValue* %688, %struct.lua_TValue* %689, %struct.lua_TValue* %690), !dbg !1961
  %691 = load %struct.CallInfo** %ci, align 4, !dbg !1964
  %692 = getelementptr inbounds %struct.CallInfo* %691, i32 0, i32 4, !dbg !1964
  %693 = bitcast %union.anon* %692 to %struct.anon*, !dbg !1964
  %694 = getelementptr inbounds %struct.anon* %693, i32 0, i32 0, !dbg !1964
  %695 = load %struct.lua_TValue** %694, align 4, !dbg !1964
  store %struct.lua_TValue* %695, %struct.lua_TValue** %base, align 4, !dbg !1964
  br label %696

; <label>:696                                     ; preds = %685, %678
  br label %3454, !dbg !1965

; <label>:697                                     ; preds = %51
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %rb25}, metadata !1966), !dbg !1968
  %698 = load i32* %i, align 4, !dbg !1969
  %699 = lshr i32 %698, 23, !dbg !1969
  %700 = and i32 %699, 511, !dbg !1969
  %701 = and i32 %700, 256, !dbg !1969
  %702 = icmp ne i32 %701, 0, !dbg !1969
  br i1 %702, label %703, label %710, !dbg !1969

; <label>:703                                     ; preds = %697
  %704 = load %struct.lua_TValue** %k, align 4, !dbg !1970
  %705 = load i32* %i, align 4, !dbg !1970
  %706 = lshr i32 %705, 23, !dbg !1970
  %707 = and i32 %706, 511, !dbg !1970
  %708 = and i32 %707, -257, !dbg !1970
  %709 = getelementptr inbounds %struct.lua_TValue* %704, i32 %708, !dbg !1970
  br label %716, !dbg !1970

; <label>:710                                     ; preds = %697
  %711 = load %struct.lua_TValue** %base, align 4, !dbg !1972
  %712 = load i32* %i, align 4, !dbg !1972
  %713 = lshr i32 %712, 23, !dbg !1972
  %714 = and i32 %713, 511, !dbg !1972
  %715 = getelementptr inbounds %struct.lua_TValue* %711, i32 %714, !dbg !1972
  br label %716, !dbg !1972

; <label>:716                                     ; preds = %710, %703
  %717 = phi %struct.lua_TValue* [ %709, %703 ], [ %715, %710 ], !dbg !1969
  store %struct.lua_TValue* %717, %struct.lua_TValue** %rb25, align 4, !dbg !1974
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %rc26}, metadata !1977), !dbg !1978
  %718 = load i32* %i, align 4, !dbg !1979
  %719 = lshr i32 %718, 14, !dbg !1979
  %720 = and i32 %719, 511, !dbg !1979
  %721 = and i32 %720, 256, !dbg !1979
  %722 = icmp ne i32 %721, 0, !dbg !1979
  br i1 %722, label %723, label %730, !dbg !1979

; <label>:723                                     ; preds = %716
  %724 = load %struct.lua_TValue** %k, align 4, !dbg !1980
  %725 = load i32* %i, align 4, !dbg !1980
  %726 = lshr i32 %725, 14, !dbg !1980
  %727 = and i32 %726, 511, !dbg !1980
  %728 = and i32 %727, -257, !dbg !1980
  %729 = getelementptr inbounds %struct.lua_TValue* %724, i32 %728, !dbg !1980
  br label %736, !dbg !1980

; <label>:730                                     ; preds = %716
  %731 = load %struct.lua_TValue** %base, align 4, !dbg !1982
  %732 = load i32* %i, align 4, !dbg !1982
  %733 = lshr i32 %732, 14, !dbg !1982
  %734 = and i32 %733, 511, !dbg !1982
  %735 = getelementptr inbounds %struct.lua_TValue* %731, i32 %734, !dbg !1982
  br label %736, !dbg !1982

; <label>:736                                     ; preds = %730, %723
  %737 = phi %struct.lua_TValue* [ %729, %723 ], [ %735, %730 ], !dbg !1979
  store %struct.lua_TValue* %737, %struct.lua_TValue** %rc26, align 4, !dbg !1984
  call void @llvm.dbg.declare(metadata !{double* %nb}, metadata !1987), !dbg !1988
  call void @llvm.dbg.declare(metadata !{double* %nc}, metadata !1989), !dbg !1990
  %738 = load %struct.lua_TValue** %rb25, align 4, !dbg !1991
  %739 = getelementptr inbounds %struct.lua_TValue* %738, i32 0, i32 1, !dbg !1991
  %740 = load i32* %739, align 4, !dbg !1991
  %741 = icmp eq i32 %740, 19, !dbg !1991
  br i1 %741, label %742, label %765, !dbg !1991

; <label>:742                                     ; preds = %736
  %743 = load %struct.lua_TValue** %rc26, align 4, !dbg !1993
  %744 = getelementptr inbounds %struct.lua_TValue* %743, i32 0, i32 1, !dbg !1993
  %745 = load i32* %744, align 4, !dbg !1993
  %746 = icmp eq i32 %745, 19, !dbg !1993
  br i1 %746, label %747, label %765, !dbg !1993

; <label>:747                                     ; preds = %742
  call void @llvm.dbg.declare(metadata !{i64* %ib}, metadata !1995), !dbg !1997
  %748 = load %struct.lua_TValue** %rb25, align 4, !dbg !1998
  %749 = getelementptr inbounds %struct.lua_TValue* %748, i32 0, i32 0, !dbg !1998
  %750 = bitcast %union.Value* %749 to i64*, !dbg !1998
  %751 = load i64* %750, align 8, !dbg !1998
  store i64 %751, i64* %ib, align 8, !dbg !1998
  call void @llvm.dbg.declare(metadata !{i64* %ic}, metadata !1999), !dbg !2000
  %752 = load %struct.lua_TValue** %rc26, align 4, !dbg !2001
  %753 = getelementptr inbounds %struct.lua_TValue* %752, i32 0, i32 0, !dbg !2001
  %754 = bitcast %union.Value* %753 to i64*, !dbg !2001
  %755 = load i64* %754, align 8, !dbg !2001
  store i64 %755, i64* %ic, align 8, !dbg !2001
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %io27}, metadata !2002), !dbg !2004
  %756 = load %struct.lua_TValue** %ra, align 4, !dbg !2004
  store %struct.lua_TValue* %756, %struct.lua_TValue** %io27, align 4, !dbg !2004
  %757 = load i64* %ib, align 8, !dbg !2004
  %758 = load i64* %ic, align 8, !dbg !2004
  %759 = add i64 %757, %758, !dbg !2004
  %760 = load %struct.lua_TValue** %io27, align 4, !dbg !2004
  %761 = getelementptr inbounds %struct.lua_TValue* %760, i32 0, i32 0, !dbg !2004
  %762 = bitcast %union.Value* %761 to i64*, !dbg !2004
  store i64 %759, i64* %762, align 8, !dbg !2004
  %763 = load %struct.lua_TValue** %io27, align 4, !dbg !2004
  %764 = getelementptr inbounds %struct.lua_TValue* %763, i32 0, i32 1, !dbg !2004
  store i32 19, i32* %764, align 4, !dbg !2004
  br label %814, !dbg !2005

; <label>:765                                     ; preds = %742, %736
  %766 = load %struct.lua_TValue** %rb25, align 4, !dbg !2006
  %767 = getelementptr inbounds %struct.lua_TValue* %766, i32 0, i32 1, !dbg !2006
  %768 = load i32* %767, align 4, !dbg !2006
  %769 = icmp eq i32 %768, 3, !dbg !2006
  br i1 %769, label %770, label %775, !dbg !2006

; <label>:770                                     ; preds = %765
  %771 = load %struct.lua_TValue** %rb25, align 4, !dbg !2008
  %772 = getelementptr inbounds %struct.lua_TValue* %771, i32 0, i32 0, !dbg !2008
  %773 = bitcast %union.Value* %772 to double*, !dbg !2008
  %774 = load double* %773, align 8, !dbg !2008
  store double %774, double* %nb, align 8, !dbg !2008
  br i1 true, label %779, label %803, !dbg !2008

; <label>:775                                     ; preds = %765
  %776 = load %struct.lua_TValue** %rb25, align 4, !dbg !2010
  %777 = call i32 @luaV_tonumber_(%struct.lua_TValue* %776, double* %nb), !dbg !2010
  %778 = icmp ne i32 %777, 0, !dbg !2010
  br i1 %778, label %779, label %803, !dbg !2010

; <label>:779                                     ; preds = %775, %770
  %780 = load %struct.lua_TValue** %rc26, align 4, !dbg !2012
  %781 = getelementptr inbounds %struct.lua_TValue* %780, i32 0, i32 1, !dbg !2012
  %782 = load i32* %781, align 4, !dbg !2012
  %783 = icmp eq i32 %782, 3, !dbg !2012
  br i1 %783, label %784, label %789, !dbg !2012

; <label>:784                                     ; preds = %779
  %785 = load %struct.lua_TValue** %rc26, align 4, !dbg !2015
  %786 = getelementptr inbounds %struct.lua_TValue* %785, i32 0, i32 0, !dbg !2015
  %787 = bitcast %union.Value* %786 to double*, !dbg !2015
  %788 = load double* %787, align 8, !dbg !2015
  store double %788, double* %nc, align 8, !dbg !2015
  br i1 true, label %793, label %803, !dbg !2015

; <label>:789                                     ; preds = %779
  %790 = load %struct.lua_TValue** %rc26, align 4, !dbg !2017
  %791 = call i32 @luaV_tonumber_(%struct.lua_TValue* %790, double* %nc), !dbg !2017
  %792 = icmp ne i32 %791, 0, !dbg !2017
  br i1 %792, label %793, label %803, !dbg !2017

; <label>:793                                     ; preds = %789, %784
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %io28}, metadata !2019), !dbg !2022
  %794 = load %struct.lua_TValue** %ra, align 4, !dbg !2022
  store %struct.lua_TValue* %794, %struct.lua_TValue** %io28, align 4, !dbg !2022
  %795 = load double* %nb, align 8, !dbg !2022
  %796 = load double* %nc, align 8, !dbg !2022
  %797 = fadd double %795, %796, !dbg !2022
  %798 = load %struct.lua_TValue** %io28, align 4, !dbg !2022
  %799 = getelementptr inbounds %struct.lua_TValue* %798, i32 0, i32 0, !dbg !2022
  %800 = bitcast %union.Value* %799 to double*, !dbg !2022
  store double %797, double* %800, align 8, !dbg !2022
  %801 = load %struct.lua_TValue** %io28, align 4, !dbg !2022
  %802 = getelementptr inbounds %struct.lua_TValue* %801, i32 0, i32 1, !dbg !2022
  store i32 3, i32* %802, align 4, !dbg !2022
  br label %813, !dbg !2023

; <label>:803                                     ; preds = %789, %784, %775, %770
  %804 = load %struct.lua_State** %1, align 4, !dbg !2024
  %805 = load %struct.lua_TValue** %rb25, align 4, !dbg !2024
  %806 = load %struct.lua_TValue** %rc26, align 4, !dbg !2024
  %807 = load %struct.lua_TValue** %ra, align 4, !dbg !2024
  call void @luaT_trybinTM(%struct.lua_State* %804, %struct.lua_TValue* %805, %struct.lua_TValue* %806, %struct.lua_TValue* %807, i32 6), !dbg !2024
  %808 = load %struct.CallInfo** %ci, align 4, !dbg !2028
  %809 = getelementptr inbounds %struct.CallInfo* %808, i32 0, i32 4, !dbg !2028
  %810 = bitcast %union.anon* %809 to %struct.anon*, !dbg !2028
  %811 = getelementptr inbounds %struct.anon* %810, i32 0, i32 0, !dbg !2028
  %812 = load %struct.lua_TValue** %811, align 4, !dbg !2028
  store %struct.lua_TValue* %812, %struct.lua_TValue** %base, align 4, !dbg !2028
  br label %813

; <label>:813                                     ; preds = %803, %793
  br label %814

; <label>:814                                     ; preds = %813, %747
  br label %3454, !dbg !2029

; <label>:815                                     ; preds = %51
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %rb29}, metadata !2030), !dbg !2032
  %816 = load i32* %i, align 4, !dbg !2033
  %817 = lshr i32 %816, 23, !dbg !2033
  %818 = and i32 %817, 511, !dbg !2033
  %819 = and i32 %818, 256, !dbg !2033
  %820 = icmp ne i32 %819, 0, !dbg !2033
  br i1 %820, label %821, label %828, !dbg !2033

; <label>:821                                     ; preds = %815
  %822 = load %struct.lua_TValue** %k, align 4, !dbg !2034
  %823 = load i32* %i, align 4, !dbg !2034
  %824 = lshr i32 %823, 23, !dbg !2034
  %825 = and i32 %824, 511, !dbg !2034
  %826 = and i32 %825, -257, !dbg !2034
  %827 = getelementptr inbounds %struct.lua_TValue* %822, i32 %826, !dbg !2034
  br label %834, !dbg !2034

; <label>:828                                     ; preds = %815
  %829 = load %struct.lua_TValue** %base, align 4, !dbg !2036
  %830 = load i32* %i, align 4, !dbg !2036
  %831 = lshr i32 %830, 23, !dbg !2036
  %832 = and i32 %831, 511, !dbg !2036
  %833 = getelementptr inbounds %struct.lua_TValue* %829, i32 %832, !dbg !2036
  br label %834, !dbg !2036

; <label>:834                                     ; preds = %828, %821
  %835 = phi %struct.lua_TValue* [ %827, %821 ], [ %833, %828 ], !dbg !2033
  store %struct.lua_TValue* %835, %struct.lua_TValue** %rb29, align 4, !dbg !2038
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %rc30}, metadata !2041), !dbg !2042
  %836 = load i32* %i, align 4, !dbg !2043
  %837 = lshr i32 %836, 14, !dbg !2043
  %838 = and i32 %837, 511, !dbg !2043
  %839 = and i32 %838, 256, !dbg !2043
  %840 = icmp ne i32 %839, 0, !dbg !2043
  br i1 %840, label %841, label %848, !dbg !2043

; <label>:841                                     ; preds = %834
  %842 = load %struct.lua_TValue** %k, align 4, !dbg !2044
  %843 = load i32* %i, align 4, !dbg !2044
  %844 = lshr i32 %843, 14, !dbg !2044
  %845 = and i32 %844, 511, !dbg !2044
  %846 = and i32 %845, -257, !dbg !2044
  %847 = getelementptr inbounds %struct.lua_TValue* %842, i32 %846, !dbg !2044
  br label %854, !dbg !2044

; <label>:848                                     ; preds = %834
  %849 = load %struct.lua_TValue** %base, align 4, !dbg !2046
  %850 = load i32* %i, align 4, !dbg !2046
  %851 = lshr i32 %850, 14, !dbg !2046
  %852 = and i32 %851, 511, !dbg !2046
  %853 = getelementptr inbounds %struct.lua_TValue* %849, i32 %852, !dbg !2046
  br label %854, !dbg !2046

; <label>:854                                     ; preds = %848, %841
  %855 = phi %struct.lua_TValue* [ %847, %841 ], [ %853, %848 ], !dbg !2043
  store %struct.lua_TValue* %855, %struct.lua_TValue** %rc30, align 4, !dbg !2048
  call void @llvm.dbg.declare(metadata !{double* %nb31}, metadata !2051), !dbg !2052
  call void @llvm.dbg.declare(metadata !{double* %nc32}, metadata !2053), !dbg !2054
  %856 = load %struct.lua_TValue** %rb29, align 4, !dbg !2055
  %857 = getelementptr inbounds %struct.lua_TValue* %856, i32 0, i32 1, !dbg !2055
  %858 = load i32* %857, align 4, !dbg !2055
  %859 = icmp eq i32 %858, 19, !dbg !2055
  br i1 %859, label %860, label %883, !dbg !2055

; <label>:860                                     ; preds = %854
  %861 = load %struct.lua_TValue** %rc30, align 4, !dbg !2057
  %862 = getelementptr inbounds %struct.lua_TValue* %861, i32 0, i32 1, !dbg !2057
  %863 = load i32* %862, align 4, !dbg !2057
  %864 = icmp eq i32 %863, 19, !dbg !2057
  br i1 %864, label %865, label %883, !dbg !2057

; <label>:865                                     ; preds = %860
  call void @llvm.dbg.declare(metadata !{i64* %ib33}, metadata !2059), !dbg !2061
  %866 = load %struct.lua_TValue** %rb29, align 4, !dbg !2062
  %867 = getelementptr inbounds %struct.lua_TValue* %866, i32 0, i32 0, !dbg !2062
  %868 = bitcast %union.Value* %867 to i64*, !dbg !2062
  %869 = load i64* %868, align 8, !dbg !2062
  store i64 %869, i64* %ib33, align 8, !dbg !2062
  call void @llvm.dbg.declare(metadata !{i64* %ic34}, metadata !2063), !dbg !2064
  %870 = load %struct.lua_TValue** %rc30, align 4, !dbg !2065
  %871 = getelementptr inbounds %struct.lua_TValue* %870, i32 0, i32 0, !dbg !2065
  %872 = bitcast %union.Value* %871 to i64*, !dbg !2065
  %873 = load i64* %872, align 8, !dbg !2065
  store i64 %873, i64* %ic34, align 8, !dbg !2065
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %io35}, metadata !2066), !dbg !2068
  %874 = load %struct.lua_TValue** %ra, align 4, !dbg !2068
  store %struct.lua_TValue* %874, %struct.lua_TValue** %io35, align 4, !dbg !2068
  %875 = load i64* %ib33, align 8, !dbg !2068
  %876 = load i64* %ic34, align 8, !dbg !2068
  %877 = sub i64 %875, %876, !dbg !2068
  %878 = load %struct.lua_TValue** %io35, align 4, !dbg !2068
  %879 = getelementptr inbounds %struct.lua_TValue* %878, i32 0, i32 0, !dbg !2068
  %880 = bitcast %union.Value* %879 to i64*, !dbg !2068
  store i64 %877, i64* %880, align 8, !dbg !2068
  %881 = load %struct.lua_TValue** %io35, align 4, !dbg !2068
  %882 = getelementptr inbounds %struct.lua_TValue* %881, i32 0, i32 1, !dbg !2068
  store i32 19, i32* %882, align 4, !dbg !2068
  br label %932, !dbg !2069

; <label>:883                                     ; preds = %860, %854
  %884 = load %struct.lua_TValue** %rb29, align 4, !dbg !2070
  %885 = getelementptr inbounds %struct.lua_TValue* %884, i32 0, i32 1, !dbg !2070
  %886 = load i32* %885, align 4, !dbg !2070
  %887 = icmp eq i32 %886, 3, !dbg !2070
  br i1 %887, label %888, label %893, !dbg !2070

; <label>:888                                     ; preds = %883
  %889 = load %struct.lua_TValue** %rb29, align 4, !dbg !2072
  %890 = getelementptr inbounds %struct.lua_TValue* %889, i32 0, i32 0, !dbg !2072
  %891 = bitcast %union.Value* %890 to double*, !dbg !2072
  %892 = load double* %891, align 8, !dbg !2072
  store double %892, double* %nb31, align 8, !dbg !2072
  br i1 true, label %897, label %921, !dbg !2072

; <label>:893                                     ; preds = %883
  %894 = load %struct.lua_TValue** %rb29, align 4, !dbg !2074
  %895 = call i32 @luaV_tonumber_(%struct.lua_TValue* %894, double* %nb31), !dbg !2074
  %896 = icmp ne i32 %895, 0, !dbg !2074
  br i1 %896, label %897, label %921, !dbg !2074

; <label>:897                                     ; preds = %893, %888
  %898 = load %struct.lua_TValue** %rc30, align 4, !dbg !2076
  %899 = getelementptr inbounds %struct.lua_TValue* %898, i32 0, i32 1, !dbg !2076
  %900 = load i32* %899, align 4, !dbg !2076
  %901 = icmp eq i32 %900, 3, !dbg !2076
  br i1 %901, label %902, label %907, !dbg !2076

; <label>:902                                     ; preds = %897
  %903 = load %struct.lua_TValue** %rc30, align 4, !dbg !2079
  %904 = getelementptr inbounds %struct.lua_TValue* %903, i32 0, i32 0, !dbg !2079
  %905 = bitcast %union.Value* %904 to double*, !dbg !2079
  %906 = load double* %905, align 8, !dbg !2079
  store double %906, double* %nc32, align 8, !dbg !2079
  br i1 true, label %911, label %921, !dbg !2079

; <label>:907                                     ; preds = %897
  %908 = load %struct.lua_TValue** %rc30, align 4, !dbg !2081
  %909 = call i32 @luaV_tonumber_(%struct.lua_TValue* %908, double* %nc32), !dbg !2081
  %910 = icmp ne i32 %909, 0, !dbg !2081
  br i1 %910, label %911, label %921, !dbg !2081

; <label>:911                                     ; preds = %907, %902
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %io36}, metadata !2083), !dbg !2086
  %912 = load %struct.lua_TValue** %ra, align 4, !dbg !2086
  store %struct.lua_TValue* %912, %struct.lua_TValue** %io36, align 4, !dbg !2086
  %913 = load double* %nb31, align 8, !dbg !2086
  %914 = load double* %nc32, align 8, !dbg !2086
  %915 = fsub double %913, %914, !dbg !2086
  %916 = load %struct.lua_TValue** %io36, align 4, !dbg !2086
  %917 = getelementptr inbounds %struct.lua_TValue* %916, i32 0, i32 0, !dbg !2086
  %918 = bitcast %union.Value* %917 to double*, !dbg !2086
  store double %915, double* %918, align 8, !dbg !2086
  %919 = load %struct.lua_TValue** %io36, align 4, !dbg !2086
  %920 = getelementptr inbounds %struct.lua_TValue* %919, i32 0, i32 1, !dbg !2086
  store i32 3, i32* %920, align 4, !dbg !2086
  br label %931, !dbg !2087

; <label>:921                                     ; preds = %907, %902, %893, %888
  %922 = load %struct.lua_State** %1, align 4, !dbg !2088
  %923 = load %struct.lua_TValue** %rb29, align 4, !dbg !2088
  %924 = load %struct.lua_TValue** %rc30, align 4, !dbg !2088
  %925 = load %struct.lua_TValue** %ra, align 4, !dbg !2088
  call void @luaT_trybinTM(%struct.lua_State* %922, %struct.lua_TValue* %923, %struct.lua_TValue* %924, %struct.lua_TValue* %925, i32 7), !dbg !2088
  %926 = load %struct.CallInfo** %ci, align 4, !dbg !2092
  %927 = getelementptr inbounds %struct.CallInfo* %926, i32 0, i32 4, !dbg !2092
  %928 = bitcast %union.anon* %927 to %struct.anon*, !dbg !2092
  %929 = getelementptr inbounds %struct.anon* %928, i32 0, i32 0, !dbg !2092
  %930 = load %struct.lua_TValue** %929, align 4, !dbg !2092
  store %struct.lua_TValue* %930, %struct.lua_TValue** %base, align 4, !dbg !2092
  br label %931

; <label>:931                                     ; preds = %921, %911
  br label %932

; <label>:932                                     ; preds = %931, %865
  br label %3454, !dbg !2093

; <label>:933                                     ; preds = %51
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %rb37}, metadata !2094), !dbg !2096
  %934 = load i32* %i, align 4, !dbg !2097
  %935 = lshr i32 %934, 23, !dbg !2097
  %936 = and i32 %935, 511, !dbg !2097
  %937 = and i32 %936, 256, !dbg !2097
  %938 = icmp ne i32 %937, 0, !dbg !2097
  br i1 %938, label %939, label %946, !dbg !2097

; <label>:939                                     ; preds = %933
  %940 = load %struct.lua_TValue** %k, align 4, !dbg !2098
  %941 = load i32* %i, align 4, !dbg !2098
  %942 = lshr i32 %941, 23, !dbg !2098
  %943 = and i32 %942, 511, !dbg !2098
  %944 = and i32 %943, -257, !dbg !2098
  %945 = getelementptr inbounds %struct.lua_TValue* %940, i32 %944, !dbg !2098
  br label %952, !dbg !2098

; <label>:946                                     ; preds = %933
  %947 = load %struct.lua_TValue** %base, align 4, !dbg !2100
  %948 = load i32* %i, align 4, !dbg !2100
  %949 = lshr i32 %948, 23, !dbg !2100
  %950 = and i32 %949, 511, !dbg !2100
  %951 = getelementptr inbounds %struct.lua_TValue* %947, i32 %950, !dbg !2100
  br label %952, !dbg !2100

; <label>:952                                     ; preds = %946, %939
  %953 = phi %struct.lua_TValue* [ %945, %939 ], [ %951, %946 ], !dbg !2097
  store %struct.lua_TValue* %953, %struct.lua_TValue** %rb37, align 4, !dbg !2102
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %rc38}, metadata !2105), !dbg !2106
  %954 = load i32* %i, align 4, !dbg !2107
  %955 = lshr i32 %954, 14, !dbg !2107
  %956 = and i32 %955, 511, !dbg !2107
  %957 = and i32 %956, 256, !dbg !2107
  %958 = icmp ne i32 %957, 0, !dbg !2107
  br i1 %958, label %959, label %966, !dbg !2107

; <label>:959                                     ; preds = %952
  %960 = load %struct.lua_TValue** %k, align 4, !dbg !2108
  %961 = load i32* %i, align 4, !dbg !2108
  %962 = lshr i32 %961, 14, !dbg !2108
  %963 = and i32 %962, 511, !dbg !2108
  %964 = and i32 %963, -257, !dbg !2108
  %965 = getelementptr inbounds %struct.lua_TValue* %960, i32 %964, !dbg !2108
  br label %972, !dbg !2108

; <label>:966                                     ; preds = %952
  %967 = load %struct.lua_TValue** %base, align 4, !dbg !2110
  %968 = load i32* %i, align 4, !dbg !2110
  %969 = lshr i32 %968, 14, !dbg !2110
  %970 = and i32 %969, 511, !dbg !2110
  %971 = getelementptr inbounds %struct.lua_TValue* %967, i32 %970, !dbg !2110
  br label %972, !dbg !2110

; <label>:972                                     ; preds = %966, %959
  %973 = phi %struct.lua_TValue* [ %965, %959 ], [ %971, %966 ], !dbg !2107
  store %struct.lua_TValue* %973, %struct.lua_TValue** %rc38, align 4, !dbg !2112
  call void @llvm.dbg.declare(metadata !{double* %nb39}, metadata !2115), !dbg !2116
  call void @llvm.dbg.declare(metadata !{double* %nc40}, metadata !2117), !dbg !2118
  %974 = load %struct.lua_TValue** %rb37, align 4, !dbg !2119
  %975 = getelementptr inbounds %struct.lua_TValue* %974, i32 0, i32 1, !dbg !2119
  %976 = load i32* %975, align 4, !dbg !2119
  %977 = icmp eq i32 %976, 19, !dbg !2119
  br i1 %977, label %978, label %1001, !dbg !2119

; <label>:978                                     ; preds = %972
  %979 = load %struct.lua_TValue** %rc38, align 4, !dbg !2121
  %980 = getelementptr inbounds %struct.lua_TValue* %979, i32 0, i32 1, !dbg !2121
  %981 = load i32* %980, align 4, !dbg !2121
  %982 = icmp eq i32 %981, 19, !dbg !2121
  br i1 %982, label %983, label %1001, !dbg !2121

; <label>:983                                     ; preds = %978
  call void @llvm.dbg.declare(metadata !{i64* %ib41}, metadata !2123), !dbg !2125
  %984 = load %struct.lua_TValue** %rb37, align 4, !dbg !2126
  %985 = getelementptr inbounds %struct.lua_TValue* %984, i32 0, i32 0, !dbg !2126
  %986 = bitcast %union.Value* %985 to i64*, !dbg !2126
  %987 = load i64* %986, align 8, !dbg !2126
  store i64 %987, i64* %ib41, align 8, !dbg !2126
  call void @llvm.dbg.declare(metadata !{i64* %ic42}, metadata !2127), !dbg !2128
  %988 = load %struct.lua_TValue** %rc38, align 4, !dbg !2129
  %989 = getelementptr inbounds %struct.lua_TValue* %988, i32 0, i32 0, !dbg !2129
  %990 = bitcast %union.Value* %989 to i64*, !dbg !2129
  %991 = load i64* %990, align 8, !dbg !2129
  store i64 %991, i64* %ic42, align 8, !dbg !2129
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %io43}, metadata !2130), !dbg !2132
  %992 = load %struct.lua_TValue** %ra, align 4, !dbg !2132
  store %struct.lua_TValue* %992, %struct.lua_TValue** %io43, align 4, !dbg !2132
  %993 = load i64* %ib41, align 8, !dbg !2132
  %994 = load i64* %ic42, align 8, !dbg !2132
  %995 = mul i64 %993, %994, !dbg !2132
  %996 = load %struct.lua_TValue** %io43, align 4, !dbg !2132
  %997 = getelementptr inbounds %struct.lua_TValue* %996, i32 0, i32 0, !dbg !2132
  %998 = bitcast %union.Value* %997 to i64*, !dbg !2132
  store i64 %995, i64* %998, align 8, !dbg !2132
  %999 = load %struct.lua_TValue** %io43, align 4, !dbg !2132
  %1000 = getelementptr inbounds %struct.lua_TValue* %999, i32 0, i32 1, !dbg !2132
  store i32 19, i32* %1000, align 4, !dbg !2132
  br label %1050, !dbg !2133

; <label>:1001                                    ; preds = %978, %972
  %1002 = load %struct.lua_TValue** %rb37, align 4, !dbg !2134
  %1003 = getelementptr inbounds %struct.lua_TValue* %1002, i32 0, i32 1, !dbg !2134
  %1004 = load i32* %1003, align 4, !dbg !2134
  %1005 = icmp eq i32 %1004, 3, !dbg !2134
  br i1 %1005, label %1006, label %1011, !dbg !2134

; <label>:1006                                    ; preds = %1001
  %1007 = load %struct.lua_TValue** %rb37, align 4, !dbg !2136
  %1008 = getelementptr inbounds %struct.lua_TValue* %1007, i32 0, i32 0, !dbg !2136
  %1009 = bitcast %union.Value* %1008 to double*, !dbg !2136
  %1010 = load double* %1009, align 8, !dbg !2136
  store double %1010, double* %nb39, align 8, !dbg !2136
  br i1 true, label %1015, label %1039, !dbg !2136

; <label>:1011                                    ; preds = %1001
  %1012 = load %struct.lua_TValue** %rb37, align 4, !dbg !2138
  %1013 = call i32 @luaV_tonumber_(%struct.lua_TValue* %1012, double* %nb39), !dbg !2138
  %1014 = icmp ne i32 %1013, 0, !dbg !2138
  br i1 %1014, label %1015, label %1039, !dbg !2138

; <label>:1015                                    ; preds = %1011, %1006
  %1016 = load %struct.lua_TValue** %rc38, align 4, !dbg !2140
  %1017 = getelementptr inbounds %struct.lua_TValue* %1016, i32 0, i32 1, !dbg !2140
  %1018 = load i32* %1017, align 4, !dbg !2140
  %1019 = icmp eq i32 %1018, 3, !dbg !2140
  br i1 %1019, label %1020, label %1025, !dbg !2140

; <label>:1020                                    ; preds = %1015
  %1021 = load %struct.lua_TValue** %rc38, align 4, !dbg !2143
  %1022 = getelementptr inbounds %struct.lua_TValue* %1021, i32 0, i32 0, !dbg !2143
  %1023 = bitcast %union.Value* %1022 to double*, !dbg !2143
  %1024 = load double* %1023, align 8, !dbg !2143
  store double %1024, double* %nc40, align 8, !dbg !2143
  br i1 true, label %1029, label %1039, !dbg !2143

; <label>:1025                                    ; preds = %1015
  %1026 = load %struct.lua_TValue** %rc38, align 4, !dbg !2145
  %1027 = call i32 @luaV_tonumber_(%struct.lua_TValue* %1026, double* %nc40), !dbg !2145
  %1028 = icmp ne i32 %1027, 0, !dbg !2145
  br i1 %1028, label %1029, label %1039, !dbg !2145

; <label>:1029                                    ; preds = %1025, %1020
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %io44}, metadata !2147), !dbg !2150
  %1030 = load %struct.lua_TValue** %ra, align 4, !dbg !2150
  store %struct.lua_TValue* %1030, %struct.lua_TValue** %io44, align 4, !dbg !2150
  %1031 = load double* %nb39, align 8, !dbg !2150
  %1032 = load double* %nc40, align 8, !dbg !2150
  %1033 = fmul double %1031, %1032, !dbg !2150
  %1034 = load %struct.lua_TValue** %io44, align 4, !dbg !2150
  %1035 = getelementptr inbounds %struct.lua_TValue* %1034, i32 0, i32 0, !dbg !2150
  %1036 = bitcast %union.Value* %1035 to double*, !dbg !2150
  store double %1033, double* %1036, align 8, !dbg !2150
  %1037 = load %struct.lua_TValue** %io44, align 4, !dbg !2150
  %1038 = getelementptr inbounds %struct.lua_TValue* %1037, i32 0, i32 1, !dbg !2150
  store i32 3, i32* %1038, align 4, !dbg !2150
  br label %1049, !dbg !2151

; <label>:1039                                    ; preds = %1025, %1020, %1011, %1006
  %1040 = load %struct.lua_State** %1, align 4, !dbg !2152
  %1041 = load %struct.lua_TValue** %rb37, align 4, !dbg !2152
  %1042 = load %struct.lua_TValue** %rc38, align 4, !dbg !2152
  %1043 = load %struct.lua_TValue** %ra, align 4, !dbg !2152
  call void @luaT_trybinTM(%struct.lua_State* %1040, %struct.lua_TValue* %1041, %struct.lua_TValue* %1042, %struct.lua_TValue* %1043, i32 8), !dbg !2152
  %1044 = load %struct.CallInfo** %ci, align 4, !dbg !2156
  %1045 = getelementptr inbounds %struct.CallInfo* %1044, i32 0, i32 4, !dbg !2156
  %1046 = bitcast %union.anon* %1045 to %struct.anon*, !dbg !2156
  %1047 = getelementptr inbounds %struct.anon* %1046, i32 0, i32 0, !dbg !2156
  %1048 = load %struct.lua_TValue** %1047, align 4, !dbg !2156
  store %struct.lua_TValue* %1048, %struct.lua_TValue** %base, align 4, !dbg !2156
  br label %1049

; <label>:1049                                    ; preds = %1039, %1029
  br label %1050

; <label>:1050                                    ; preds = %1049, %983
  br label %3454, !dbg !2157

; <label>:1051                                    ; preds = %51
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %rb45}, metadata !2158), !dbg !2160
  %1052 = load i32* %i, align 4, !dbg !2161
  %1053 = lshr i32 %1052, 23, !dbg !2161
  %1054 = and i32 %1053, 511, !dbg !2161
  %1055 = and i32 %1054, 256, !dbg !2161
  %1056 = icmp ne i32 %1055, 0, !dbg !2161
  br i1 %1056, label %1057, label %1064, !dbg !2161

; <label>:1057                                    ; preds = %1051
  %1058 = load %struct.lua_TValue** %k, align 4, !dbg !2162
  %1059 = load i32* %i, align 4, !dbg !2162
  %1060 = lshr i32 %1059, 23, !dbg !2162
  %1061 = and i32 %1060, 511, !dbg !2162
  %1062 = and i32 %1061, -257, !dbg !2162
  %1063 = getelementptr inbounds %struct.lua_TValue* %1058, i32 %1062, !dbg !2162
  br label %1070, !dbg !2162

; <label>:1064                                    ; preds = %1051
  %1065 = load %struct.lua_TValue** %base, align 4, !dbg !2164
  %1066 = load i32* %i, align 4, !dbg !2164
  %1067 = lshr i32 %1066, 23, !dbg !2164
  %1068 = and i32 %1067, 511, !dbg !2164
  %1069 = getelementptr inbounds %struct.lua_TValue* %1065, i32 %1068, !dbg !2164
  br label %1070, !dbg !2164

; <label>:1070                                    ; preds = %1064, %1057
  %1071 = phi %struct.lua_TValue* [ %1063, %1057 ], [ %1069, %1064 ], !dbg !2161
  store %struct.lua_TValue* %1071, %struct.lua_TValue** %rb45, align 4, !dbg !2166
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %rc46}, metadata !2169), !dbg !2170
  %1072 = load i32* %i, align 4, !dbg !2171
  %1073 = lshr i32 %1072, 14, !dbg !2171
  %1074 = and i32 %1073, 511, !dbg !2171
  %1075 = and i32 %1074, 256, !dbg !2171
  %1076 = icmp ne i32 %1075, 0, !dbg !2171
  br i1 %1076, label %1077, label %1084, !dbg !2171

; <label>:1077                                    ; preds = %1070
  %1078 = load %struct.lua_TValue** %k, align 4, !dbg !2172
  %1079 = load i32* %i, align 4, !dbg !2172
  %1080 = lshr i32 %1079, 14, !dbg !2172
  %1081 = and i32 %1080, 511, !dbg !2172
  %1082 = and i32 %1081, -257, !dbg !2172
  %1083 = getelementptr inbounds %struct.lua_TValue* %1078, i32 %1082, !dbg !2172
  br label %1090, !dbg !2172

; <label>:1084                                    ; preds = %1070
  %1085 = load %struct.lua_TValue** %base, align 4, !dbg !2174
  %1086 = load i32* %i, align 4, !dbg !2174
  %1087 = lshr i32 %1086, 14, !dbg !2174
  %1088 = and i32 %1087, 511, !dbg !2174
  %1089 = getelementptr inbounds %struct.lua_TValue* %1085, i32 %1088, !dbg !2174
  br label %1090, !dbg !2174

; <label>:1090                                    ; preds = %1084, %1077
  %1091 = phi %struct.lua_TValue* [ %1083, %1077 ], [ %1089, %1084 ], !dbg !2171
  store %struct.lua_TValue* %1091, %struct.lua_TValue** %rc46, align 4, !dbg !2176
  call void @llvm.dbg.declare(metadata !{double* %nb47}, metadata !2179), !dbg !2180
  call void @llvm.dbg.declare(metadata !{double* %nc48}, metadata !2181), !dbg !2182
  %1092 = load %struct.lua_TValue** %rb45, align 4, !dbg !2183
  %1093 = getelementptr inbounds %struct.lua_TValue* %1092, i32 0, i32 1, !dbg !2183
  %1094 = load i32* %1093, align 4, !dbg !2183
  %1095 = icmp eq i32 %1094, 3, !dbg !2183
  br i1 %1095, label %1096, label %1101, !dbg !2183

; <label>:1096                                    ; preds = %1090
  %1097 = load %struct.lua_TValue** %rb45, align 4, !dbg !2185
  %1098 = getelementptr inbounds %struct.lua_TValue* %1097, i32 0, i32 0, !dbg !2185
  %1099 = bitcast %union.Value* %1098 to double*, !dbg !2185
  %1100 = load double* %1099, align 8, !dbg !2185
  store double %1100, double* %nb47, align 8, !dbg !2185
  br i1 true, label %1105, label %1129, !dbg !2185

; <label>:1101                                    ; preds = %1090
  %1102 = load %struct.lua_TValue** %rb45, align 4, !dbg !2187
  %1103 = call i32 @luaV_tonumber_(%struct.lua_TValue* %1102, double* %nb47), !dbg !2187
  %1104 = icmp ne i32 %1103, 0, !dbg !2187
  br i1 %1104, label %1105, label %1129, !dbg !2187

; <label>:1105                                    ; preds = %1101, %1096
  %1106 = load %struct.lua_TValue** %rc46, align 4, !dbg !2189
  %1107 = getelementptr inbounds %struct.lua_TValue* %1106, i32 0, i32 1, !dbg !2189
  %1108 = load i32* %1107, align 4, !dbg !2189
  %1109 = icmp eq i32 %1108, 3, !dbg !2189
  br i1 %1109, label %1110, label %1115, !dbg !2189

; <label>:1110                                    ; preds = %1105
  %1111 = load %struct.lua_TValue** %rc46, align 4, !dbg !2192
  %1112 = getelementptr inbounds %struct.lua_TValue* %1111, i32 0, i32 0, !dbg !2192
  %1113 = bitcast %union.Value* %1112 to double*, !dbg !2192
  %1114 = load double* %1113, align 8, !dbg !2192
  store double %1114, double* %nc48, align 8, !dbg !2192
  br i1 true, label %1119, label %1129, !dbg !2192

; <label>:1115                                    ; preds = %1105
  %1116 = load %struct.lua_TValue** %rc46, align 4, !dbg !2194
  %1117 = call i32 @luaV_tonumber_(%struct.lua_TValue* %1116, double* %nc48), !dbg !2194
  %1118 = icmp ne i32 %1117, 0, !dbg !2194
  br i1 %1118, label %1119, label %1129, !dbg !2194

; <label>:1119                                    ; preds = %1115, %1110
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %io49}, metadata !2196), !dbg !2199
  %1120 = load %struct.lua_TValue** %ra, align 4, !dbg !2199
  store %struct.lua_TValue* %1120, %struct.lua_TValue** %io49, align 4, !dbg !2199
  %1121 = load double* %nb47, align 8, !dbg !2199
  %1122 = load double* %nc48, align 8, !dbg !2199
  %1123 = fdiv double %1121, %1122, !dbg !2199
  %1124 = load %struct.lua_TValue** %io49, align 4, !dbg !2199
  %1125 = getelementptr inbounds %struct.lua_TValue* %1124, i32 0, i32 0, !dbg !2199
  %1126 = bitcast %union.Value* %1125 to double*, !dbg !2199
  store double %1123, double* %1126, align 8, !dbg !2199
  %1127 = load %struct.lua_TValue** %io49, align 4, !dbg !2199
  %1128 = getelementptr inbounds %struct.lua_TValue* %1127, i32 0, i32 1, !dbg !2199
  store i32 3, i32* %1128, align 4, !dbg !2199
  br label %1139, !dbg !2200

; <label>:1129                                    ; preds = %1115, %1110, %1101, %1096
  %1130 = load %struct.lua_State** %1, align 4, !dbg !2201
  %1131 = load %struct.lua_TValue** %rb45, align 4, !dbg !2201
  %1132 = load %struct.lua_TValue** %rc46, align 4, !dbg !2201
  %1133 = load %struct.lua_TValue** %ra, align 4, !dbg !2201
  call void @luaT_trybinTM(%struct.lua_State* %1130, %struct.lua_TValue* %1131, %struct.lua_TValue* %1132, %struct.lua_TValue* %1133, i32 11), !dbg !2201
  %1134 = load %struct.CallInfo** %ci, align 4, !dbg !2205
  %1135 = getelementptr inbounds %struct.CallInfo* %1134, i32 0, i32 4, !dbg !2205
  %1136 = bitcast %union.anon* %1135 to %struct.anon*, !dbg !2205
  %1137 = getelementptr inbounds %struct.anon* %1136, i32 0, i32 0, !dbg !2205
  %1138 = load %struct.lua_TValue** %1137, align 4, !dbg !2205
  store %struct.lua_TValue* %1138, %struct.lua_TValue** %base, align 4, !dbg !2205
  br label %1139

; <label>:1139                                    ; preds = %1129, %1119
  br label %3454, !dbg !2206

; <label>:1140                                    ; preds = %51
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %rb50}, metadata !2207), !dbg !2209
  %1141 = load i32* %i, align 4, !dbg !2210
  %1142 = lshr i32 %1141, 23, !dbg !2210
  %1143 = and i32 %1142, 511, !dbg !2210
  %1144 = and i32 %1143, 256, !dbg !2210
  %1145 = icmp ne i32 %1144, 0, !dbg !2210
  br i1 %1145, label %1146, label %1153, !dbg !2210

; <label>:1146                                    ; preds = %1140
  %1147 = load %struct.lua_TValue** %k, align 4, !dbg !2211
  %1148 = load i32* %i, align 4, !dbg !2211
  %1149 = lshr i32 %1148, 23, !dbg !2211
  %1150 = and i32 %1149, 511, !dbg !2211
  %1151 = and i32 %1150, -257, !dbg !2211
  %1152 = getelementptr inbounds %struct.lua_TValue* %1147, i32 %1151, !dbg !2211
  br label %1159, !dbg !2211

; <label>:1153                                    ; preds = %1140
  %1154 = load %struct.lua_TValue** %base, align 4, !dbg !2213
  %1155 = load i32* %i, align 4, !dbg !2213
  %1156 = lshr i32 %1155, 23, !dbg !2213
  %1157 = and i32 %1156, 511, !dbg !2213
  %1158 = getelementptr inbounds %struct.lua_TValue* %1154, i32 %1157, !dbg !2213
  br label %1159, !dbg !2213

; <label>:1159                                    ; preds = %1153, %1146
  %1160 = phi %struct.lua_TValue* [ %1152, %1146 ], [ %1158, %1153 ], !dbg !2210
  store %struct.lua_TValue* %1160, %struct.lua_TValue** %rb50, align 4, !dbg !2215
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %rc51}, metadata !2218), !dbg !2219
  %1161 = load i32* %i, align 4, !dbg !2220
  %1162 = lshr i32 %1161, 14, !dbg !2220
  %1163 = and i32 %1162, 511, !dbg !2220
  %1164 = and i32 %1163, 256, !dbg !2220
  %1165 = icmp ne i32 %1164, 0, !dbg !2220
  br i1 %1165, label %1166, label %1173, !dbg !2220

; <label>:1166                                    ; preds = %1159
  %1167 = load %struct.lua_TValue** %k, align 4, !dbg !2221
  %1168 = load i32* %i, align 4, !dbg !2221
  %1169 = lshr i32 %1168, 14, !dbg !2221
  %1170 = and i32 %1169, 511, !dbg !2221
  %1171 = and i32 %1170, -257, !dbg !2221
  %1172 = getelementptr inbounds %struct.lua_TValue* %1167, i32 %1171, !dbg !2221
  br label %1179, !dbg !2221

; <label>:1173                                    ; preds = %1159
  %1174 = load %struct.lua_TValue** %base, align 4, !dbg !2223
  %1175 = load i32* %i, align 4, !dbg !2223
  %1176 = lshr i32 %1175, 14, !dbg !2223
  %1177 = and i32 %1176, 511, !dbg !2223
  %1178 = getelementptr inbounds %struct.lua_TValue* %1174, i32 %1177, !dbg !2223
  br label %1179, !dbg !2223

; <label>:1179                                    ; preds = %1173, %1166
  %1180 = phi %struct.lua_TValue* [ %1172, %1166 ], [ %1178, %1173 ], !dbg !2220
  store %struct.lua_TValue* %1180, %struct.lua_TValue** %rc51, align 4, !dbg !2225
  call void @llvm.dbg.declare(metadata !{i64* %ib52}, metadata !2228), !dbg !2229
  call void @llvm.dbg.declare(metadata !{i64* %ic53}, metadata !2230), !dbg !2231
  %1181 = load %struct.lua_TValue** %rb50, align 4, !dbg !2232
  %1182 = getelementptr inbounds %struct.lua_TValue* %1181, i32 0, i32 1, !dbg !2232
  %1183 = load i32* %1182, align 4, !dbg !2232
  %1184 = icmp eq i32 %1183, 19, !dbg !2232
  br i1 %1184, label %1185, label %1190, !dbg !2232

; <label>:1185                                    ; preds = %1179
  %1186 = load %struct.lua_TValue** %rb50, align 4, !dbg !2234
  %1187 = getelementptr inbounds %struct.lua_TValue* %1186, i32 0, i32 0, !dbg !2234
  %1188 = bitcast %union.Value* %1187 to i64*, !dbg !2234
  %1189 = load i64* %1188, align 8, !dbg !2234
  store i64 %1189, i64* %ib52, align 8, !dbg !2234
  br i1 true, label %1194, label %1218, !dbg !2234

; <label>:1190                                    ; preds = %1179
  %1191 = load %struct.lua_TValue** %rb50, align 4, !dbg !2236
  %1192 = call i32 @luaV_tointeger(%struct.lua_TValue* %1191, i64* %ib52, i32 0), !dbg !2236
  %1193 = icmp ne i32 %1192, 0, !dbg !2236
  br i1 %1193, label %1194, label %1218, !dbg !2236

; <label>:1194                                    ; preds = %1190, %1185
  %1195 = load %struct.lua_TValue** %rc51, align 4, !dbg !2238
  %1196 = getelementptr inbounds %struct.lua_TValue* %1195, i32 0, i32 1, !dbg !2238
  %1197 = load i32* %1196, align 4, !dbg !2238
  %1198 = icmp eq i32 %1197, 19, !dbg !2238
  br i1 %1198, label %1199, label %1204, !dbg !2238

; <label>:1199                                    ; preds = %1194
  %1200 = load %struct.lua_TValue** %rc51, align 4, !dbg !2241
  %1201 = getelementptr inbounds %struct.lua_TValue* %1200, i32 0, i32 0, !dbg !2241
  %1202 = bitcast %union.Value* %1201 to i64*, !dbg !2241
  %1203 = load i64* %1202, align 8, !dbg !2241
  store i64 %1203, i64* %ic53, align 8, !dbg !2241
  br i1 true, label %1208, label %1218, !dbg !2241

; <label>:1204                                    ; preds = %1194
  %1205 = load %struct.lua_TValue** %rc51, align 4, !dbg !2243
  %1206 = call i32 @luaV_tointeger(%struct.lua_TValue* %1205, i64* %ic53, i32 0), !dbg !2243
  %1207 = icmp ne i32 %1206, 0, !dbg !2243
  br i1 %1207, label %1208, label %1218, !dbg !2243

; <label>:1208                                    ; preds = %1204, %1199
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %io54}, metadata !2245), !dbg !2248
  %1209 = load %struct.lua_TValue** %ra, align 4, !dbg !2248
  store %struct.lua_TValue* %1209, %struct.lua_TValue** %io54, align 4, !dbg !2248
  %1210 = load i64* %ib52, align 8, !dbg !2248
  %1211 = load i64* %ic53, align 8, !dbg !2248
  %1212 = and i64 %1210, %1211, !dbg !2248
  %1213 = load %struct.lua_TValue** %io54, align 4, !dbg !2248
  %1214 = getelementptr inbounds %struct.lua_TValue* %1213, i32 0, i32 0, !dbg !2248
  %1215 = bitcast %union.Value* %1214 to i64*, !dbg !2248
  store i64 %1212, i64* %1215, align 8, !dbg !2248
  %1216 = load %struct.lua_TValue** %io54, align 4, !dbg !2248
  %1217 = getelementptr inbounds %struct.lua_TValue* %1216, i32 0, i32 1, !dbg !2248
  store i32 19, i32* %1217, align 4, !dbg !2248
  br label %1228, !dbg !2249

; <label>:1218                                    ; preds = %1204, %1199, %1190, %1185
  %1219 = load %struct.lua_State** %1, align 4, !dbg !2250
  %1220 = load %struct.lua_TValue** %rb50, align 4, !dbg !2250
  %1221 = load %struct.lua_TValue** %rc51, align 4, !dbg !2250
  %1222 = load %struct.lua_TValue** %ra, align 4, !dbg !2250
  call void @luaT_trybinTM(%struct.lua_State* %1219, %struct.lua_TValue* %1220, %struct.lua_TValue* %1221, %struct.lua_TValue* %1222, i32 13), !dbg !2250
  %1223 = load %struct.CallInfo** %ci, align 4, !dbg !2254
  %1224 = getelementptr inbounds %struct.CallInfo* %1223, i32 0, i32 4, !dbg !2254
  %1225 = bitcast %union.anon* %1224 to %struct.anon*, !dbg !2254
  %1226 = getelementptr inbounds %struct.anon* %1225, i32 0, i32 0, !dbg !2254
  %1227 = load %struct.lua_TValue** %1226, align 4, !dbg !2254
  store %struct.lua_TValue* %1227, %struct.lua_TValue** %base, align 4, !dbg !2254
  br label %1228

; <label>:1228                                    ; preds = %1218, %1208
  br label %3454, !dbg !2255

; <label>:1229                                    ; preds = %51
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %rb55}, metadata !2256), !dbg !2258
  %1230 = load i32* %i, align 4, !dbg !2259
  %1231 = lshr i32 %1230, 23, !dbg !2259
  %1232 = and i32 %1231, 511, !dbg !2259
  %1233 = and i32 %1232, 256, !dbg !2259
  %1234 = icmp ne i32 %1233, 0, !dbg !2259
  br i1 %1234, label %1235, label %1242, !dbg !2259

; <label>:1235                                    ; preds = %1229
  %1236 = load %struct.lua_TValue** %k, align 4, !dbg !2260
  %1237 = load i32* %i, align 4, !dbg !2260
  %1238 = lshr i32 %1237, 23, !dbg !2260
  %1239 = and i32 %1238, 511, !dbg !2260
  %1240 = and i32 %1239, -257, !dbg !2260
  %1241 = getelementptr inbounds %struct.lua_TValue* %1236, i32 %1240, !dbg !2260
  br label %1248, !dbg !2260

; <label>:1242                                    ; preds = %1229
  %1243 = load %struct.lua_TValue** %base, align 4, !dbg !2262
  %1244 = load i32* %i, align 4, !dbg !2262
  %1245 = lshr i32 %1244, 23, !dbg !2262
  %1246 = and i32 %1245, 511, !dbg !2262
  %1247 = getelementptr inbounds %struct.lua_TValue* %1243, i32 %1246, !dbg !2262
  br label %1248, !dbg !2262

; <label>:1248                                    ; preds = %1242, %1235
  %1249 = phi %struct.lua_TValue* [ %1241, %1235 ], [ %1247, %1242 ], !dbg !2259
  store %struct.lua_TValue* %1249, %struct.lua_TValue** %rb55, align 4, !dbg !2264
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %rc56}, metadata !2267), !dbg !2268
  %1250 = load i32* %i, align 4, !dbg !2269
  %1251 = lshr i32 %1250, 14, !dbg !2269
  %1252 = and i32 %1251, 511, !dbg !2269
  %1253 = and i32 %1252, 256, !dbg !2269
  %1254 = icmp ne i32 %1253, 0, !dbg !2269
  br i1 %1254, label %1255, label %1262, !dbg !2269

; <label>:1255                                    ; preds = %1248
  %1256 = load %struct.lua_TValue** %k, align 4, !dbg !2270
  %1257 = load i32* %i, align 4, !dbg !2270
  %1258 = lshr i32 %1257, 14, !dbg !2270
  %1259 = and i32 %1258, 511, !dbg !2270
  %1260 = and i32 %1259, -257, !dbg !2270
  %1261 = getelementptr inbounds %struct.lua_TValue* %1256, i32 %1260, !dbg !2270
  br label %1268, !dbg !2270

; <label>:1262                                    ; preds = %1248
  %1263 = load %struct.lua_TValue** %base, align 4, !dbg !2272
  %1264 = load i32* %i, align 4, !dbg !2272
  %1265 = lshr i32 %1264, 14, !dbg !2272
  %1266 = and i32 %1265, 511, !dbg !2272
  %1267 = getelementptr inbounds %struct.lua_TValue* %1263, i32 %1266, !dbg !2272
  br label %1268, !dbg !2272

; <label>:1268                                    ; preds = %1262, %1255
  %1269 = phi %struct.lua_TValue* [ %1261, %1255 ], [ %1267, %1262 ], !dbg !2269
  store %struct.lua_TValue* %1269, %struct.lua_TValue** %rc56, align 4, !dbg !2274
  call void @llvm.dbg.declare(metadata !{i64* %ib57}, metadata !2277), !dbg !2278
  call void @llvm.dbg.declare(metadata !{i64* %ic58}, metadata !2279), !dbg !2280
  %1270 = load %struct.lua_TValue** %rb55, align 4, !dbg !2281
  %1271 = getelementptr inbounds %struct.lua_TValue* %1270, i32 0, i32 1, !dbg !2281
  %1272 = load i32* %1271, align 4, !dbg !2281
  %1273 = icmp eq i32 %1272, 19, !dbg !2281
  br i1 %1273, label %1274, label %1279, !dbg !2281

; <label>:1274                                    ; preds = %1268
  %1275 = load %struct.lua_TValue** %rb55, align 4, !dbg !2283
  %1276 = getelementptr inbounds %struct.lua_TValue* %1275, i32 0, i32 0, !dbg !2283
  %1277 = bitcast %union.Value* %1276 to i64*, !dbg !2283
  %1278 = load i64* %1277, align 8, !dbg !2283
  store i64 %1278, i64* %ib57, align 8, !dbg !2283
  br i1 true, label %1283, label %1307, !dbg !2283

; <label>:1279                                    ; preds = %1268
  %1280 = load %struct.lua_TValue** %rb55, align 4, !dbg !2285
  %1281 = call i32 @luaV_tointeger(%struct.lua_TValue* %1280, i64* %ib57, i32 0), !dbg !2285
  %1282 = icmp ne i32 %1281, 0, !dbg !2285
  br i1 %1282, label %1283, label %1307, !dbg !2285

; <label>:1283                                    ; preds = %1279, %1274
  %1284 = load %struct.lua_TValue** %rc56, align 4, !dbg !2287
  %1285 = getelementptr inbounds %struct.lua_TValue* %1284, i32 0, i32 1, !dbg !2287
  %1286 = load i32* %1285, align 4, !dbg !2287
  %1287 = icmp eq i32 %1286, 19, !dbg !2287
  br i1 %1287, label %1288, label %1293, !dbg !2287

; <label>:1288                                    ; preds = %1283
  %1289 = load %struct.lua_TValue** %rc56, align 4, !dbg !2290
  %1290 = getelementptr inbounds %struct.lua_TValue* %1289, i32 0, i32 0, !dbg !2290
  %1291 = bitcast %union.Value* %1290 to i64*, !dbg !2290
  %1292 = load i64* %1291, align 8, !dbg !2290
  store i64 %1292, i64* %ic58, align 8, !dbg !2290
  br i1 true, label %1297, label %1307, !dbg !2290

; <label>:1293                                    ; preds = %1283
  %1294 = load %struct.lua_TValue** %rc56, align 4, !dbg !2292
  %1295 = call i32 @luaV_tointeger(%struct.lua_TValue* %1294, i64* %ic58, i32 0), !dbg !2292
  %1296 = icmp ne i32 %1295, 0, !dbg !2292
  br i1 %1296, label %1297, label %1307, !dbg !2292

; <label>:1297                                    ; preds = %1293, %1288
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %io59}, metadata !2294), !dbg !2297
  %1298 = load %struct.lua_TValue** %ra, align 4, !dbg !2297
  store %struct.lua_TValue* %1298, %struct.lua_TValue** %io59, align 4, !dbg !2297
  %1299 = load i64* %ib57, align 8, !dbg !2297
  %1300 = load i64* %ic58, align 8, !dbg !2297
  %1301 = or i64 %1299, %1300, !dbg !2297
  %1302 = load %struct.lua_TValue** %io59, align 4, !dbg !2297
  %1303 = getelementptr inbounds %struct.lua_TValue* %1302, i32 0, i32 0, !dbg !2297
  %1304 = bitcast %union.Value* %1303 to i64*, !dbg !2297
  store i64 %1301, i64* %1304, align 8, !dbg !2297
  %1305 = load %struct.lua_TValue** %io59, align 4, !dbg !2297
  %1306 = getelementptr inbounds %struct.lua_TValue* %1305, i32 0, i32 1, !dbg !2297
  store i32 19, i32* %1306, align 4, !dbg !2297
  br label %1317, !dbg !2298

; <label>:1307                                    ; preds = %1293, %1288, %1279, %1274
  %1308 = load %struct.lua_State** %1, align 4, !dbg !2299
  %1309 = load %struct.lua_TValue** %rb55, align 4, !dbg !2299
  %1310 = load %struct.lua_TValue** %rc56, align 4, !dbg !2299
  %1311 = load %struct.lua_TValue** %ra, align 4, !dbg !2299
  call void @luaT_trybinTM(%struct.lua_State* %1308, %struct.lua_TValue* %1309, %struct.lua_TValue* %1310, %struct.lua_TValue* %1311, i32 14), !dbg !2299
  %1312 = load %struct.CallInfo** %ci, align 4, !dbg !2303
  %1313 = getelementptr inbounds %struct.CallInfo* %1312, i32 0, i32 4, !dbg !2303
  %1314 = bitcast %union.anon* %1313 to %struct.anon*, !dbg !2303
  %1315 = getelementptr inbounds %struct.anon* %1314, i32 0, i32 0, !dbg !2303
  %1316 = load %struct.lua_TValue** %1315, align 4, !dbg !2303
  store %struct.lua_TValue* %1316, %struct.lua_TValue** %base, align 4, !dbg !2303
  br label %1317

; <label>:1317                                    ; preds = %1307, %1297
  br label %3454, !dbg !2304

; <label>:1318                                    ; preds = %51
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %rb60}, metadata !2305), !dbg !2307
  %1319 = load i32* %i, align 4, !dbg !2308
  %1320 = lshr i32 %1319, 23, !dbg !2308
  %1321 = and i32 %1320, 511, !dbg !2308
  %1322 = and i32 %1321, 256, !dbg !2308
  %1323 = icmp ne i32 %1322, 0, !dbg !2308
  br i1 %1323, label %1324, label %1331, !dbg !2308

; <label>:1324                                    ; preds = %1318
  %1325 = load %struct.lua_TValue** %k, align 4, !dbg !2309
  %1326 = load i32* %i, align 4, !dbg !2309
  %1327 = lshr i32 %1326, 23, !dbg !2309
  %1328 = and i32 %1327, 511, !dbg !2309
  %1329 = and i32 %1328, -257, !dbg !2309
  %1330 = getelementptr inbounds %struct.lua_TValue* %1325, i32 %1329, !dbg !2309
  br label %1337, !dbg !2309

; <label>:1331                                    ; preds = %1318
  %1332 = load %struct.lua_TValue** %base, align 4, !dbg !2311
  %1333 = load i32* %i, align 4, !dbg !2311
  %1334 = lshr i32 %1333, 23, !dbg !2311
  %1335 = and i32 %1334, 511, !dbg !2311
  %1336 = getelementptr inbounds %struct.lua_TValue* %1332, i32 %1335, !dbg !2311
  br label %1337, !dbg !2311

; <label>:1337                                    ; preds = %1331, %1324
  %1338 = phi %struct.lua_TValue* [ %1330, %1324 ], [ %1336, %1331 ], !dbg !2308
  store %struct.lua_TValue* %1338, %struct.lua_TValue** %rb60, align 4, !dbg !2313
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %rc61}, metadata !2316), !dbg !2317
  %1339 = load i32* %i, align 4, !dbg !2318
  %1340 = lshr i32 %1339, 14, !dbg !2318
  %1341 = and i32 %1340, 511, !dbg !2318
  %1342 = and i32 %1341, 256, !dbg !2318
  %1343 = icmp ne i32 %1342, 0, !dbg !2318
  br i1 %1343, label %1344, label %1351, !dbg !2318

; <label>:1344                                    ; preds = %1337
  %1345 = load %struct.lua_TValue** %k, align 4, !dbg !2319
  %1346 = load i32* %i, align 4, !dbg !2319
  %1347 = lshr i32 %1346, 14, !dbg !2319
  %1348 = and i32 %1347, 511, !dbg !2319
  %1349 = and i32 %1348, -257, !dbg !2319
  %1350 = getelementptr inbounds %struct.lua_TValue* %1345, i32 %1349, !dbg !2319
  br label %1357, !dbg !2319

; <label>:1351                                    ; preds = %1337
  %1352 = load %struct.lua_TValue** %base, align 4, !dbg !2321
  %1353 = load i32* %i, align 4, !dbg !2321
  %1354 = lshr i32 %1353, 14, !dbg !2321
  %1355 = and i32 %1354, 511, !dbg !2321
  %1356 = getelementptr inbounds %struct.lua_TValue* %1352, i32 %1355, !dbg !2321
  br label %1357, !dbg !2321

; <label>:1357                                    ; preds = %1351, %1344
  %1358 = phi %struct.lua_TValue* [ %1350, %1344 ], [ %1356, %1351 ], !dbg !2318
  store %struct.lua_TValue* %1358, %struct.lua_TValue** %rc61, align 4, !dbg !2323
  call void @llvm.dbg.declare(metadata !{i64* %ib62}, metadata !2326), !dbg !2327
  call void @llvm.dbg.declare(metadata !{i64* %ic63}, metadata !2328), !dbg !2329
  %1359 = load %struct.lua_TValue** %rb60, align 4, !dbg !2330
  %1360 = getelementptr inbounds %struct.lua_TValue* %1359, i32 0, i32 1, !dbg !2330
  %1361 = load i32* %1360, align 4, !dbg !2330
  %1362 = icmp eq i32 %1361, 19, !dbg !2330
  br i1 %1362, label %1363, label %1368, !dbg !2330

; <label>:1363                                    ; preds = %1357
  %1364 = load %struct.lua_TValue** %rb60, align 4, !dbg !2332
  %1365 = getelementptr inbounds %struct.lua_TValue* %1364, i32 0, i32 0, !dbg !2332
  %1366 = bitcast %union.Value* %1365 to i64*, !dbg !2332
  %1367 = load i64* %1366, align 8, !dbg !2332
  store i64 %1367, i64* %ib62, align 8, !dbg !2332
  br i1 true, label %1372, label %1396, !dbg !2332

; <label>:1368                                    ; preds = %1357
  %1369 = load %struct.lua_TValue** %rb60, align 4, !dbg !2334
  %1370 = call i32 @luaV_tointeger(%struct.lua_TValue* %1369, i64* %ib62, i32 0), !dbg !2334
  %1371 = icmp ne i32 %1370, 0, !dbg !2334
  br i1 %1371, label %1372, label %1396, !dbg !2334

; <label>:1372                                    ; preds = %1368, %1363
  %1373 = load %struct.lua_TValue** %rc61, align 4, !dbg !2336
  %1374 = getelementptr inbounds %struct.lua_TValue* %1373, i32 0, i32 1, !dbg !2336
  %1375 = load i32* %1374, align 4, !dbg !2336
  %1376 = icmp eq i32 %1375, 19, !dbg !2336
  br i1 %1376, label %1377, label %1382, !dbg !2336

; <label>:1377                                    ; preds = %1372
  %1378 = load %struct.lua_TValue** %rc61, align 4, !dbg !2339
  %1379 = getelementptr inbounds %struct.lua_TValue* %1378, i32 0, i32 0, !dbg !2339
  %1380 = bitcast %union.Value* %1379 to i64*, !dbg !2339
  %1381 = load i64* %1380, align 8, !dbg !2339
  store i64 %1381, i64* %ic63, align 8, !dbg !2339
  br i1 true, label %1386, label %1396, !dbg !2339

; <label>:1382                                    ; preds = %1372
  %1383 = load %struct.lua_TValue** %rc61, align 4, !dbg !2341
  %1384 = call i32 @luaV_tointeger(%struct.lua_TValue* %1383, i64* %ic63, i32 0), !dbg !2341
  %1385 = icmp ne i32 %1384, 0, !dbg !2341
  br i1 %1385, label %1386, label %1396, !dbg !2341

; <label>:1386                                    ; preds = %1382, %1377
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %io64}, metadata !2343), !dbg !2346
  %1387 = load %struct.lua_TValue** %ra, align 4, !dbg !2346
  store %struct.lua_TValue* %1387, %struct.lua_TValue** %io64, align 4, !dbg !2346
  %1388 = load i64* %ib62, align 8, !dbg !2346
  %1389 = load i64* %ic63, align 8, !dbg !2346
  %1390 = xor i64 %1388, %1389, !dbg !2346
  %1391 = load %struct.lua_TValue** %io64, align 4, !dbg !2346
  %1392 = getelementptr inbounds %struct.lua_TValue* %1391, i32 0, i32 0, !dbg !2346
  %1393 = bitcast %union.Value* %1392 to i64*, !dbg !2346
  store i64 %1390, i64* %1393, align 8, !dbg !2346
  %1394 = load %struct.lua_TValue** %io64, align 4, !dbg !2346
  %1395 = getelementptr inbounds %struct.lua_TValue* %1394, i32 0, i32 1, !dbg !2346
  store i32 19, i32* %1395, align 4, !dbg !2346
  br label %1406, !dbg !2347

; <label>:1396                                    ; preds = %1382, %1377, %1368, %1363
  %1397 = load %struct.lua_State** %1, align 4, !dbg !2348
  %1398 = load %struct.lua_TValue** %rb60, align 4, !dbg !2348
  %1399 = load %struct.lua_TValue** %rc61, align 4, !dbg !2348
  %1400 = load %struct.lua_TValue** %ra, align 4, !dbg !2348
  call void @luaT_trybinTM(%struct.lua_State* %1397, %struct.lua_TValue* %1398, %struct.lua_TValue* %1399, %struct.lua_TValue* %1400, i32 15), !dbg !2348
  %1401 = load %struct.CallInfo** %ci, align 4, !dbg !2352
  %1402 = getelementptr inbounds %struct.CallInfo* %1401, i32 0, i32 4, !dbg !2352
  %1403 = bitcast %union.anon* %1402 to %struct.anon*, !dbg !2352
  %1404 = getelementptr inbounds %struct.anon* %1403, i32 0, i32 0, !dbg !2352
  %1405 = load %struct.lua_TValue** %1404, align 4, !dbg !2352
  store %struct.lua_TValue* %1405, %struct.lua_TValue** %base, align 4, !dbg !2352
  br label %1406

; <label>:1406                                    ; preds = %1396, %1386
  br label %3454, !dbg !2353

; <label>:1407                                    ; preds = %51
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %rb65}, metadata !2354), !dbg !2356
  %1408 = load i32* %i, align 4, !dbg !2357
  %1409 = lshr i32 %1408, 23, !dbg !2357
  %1410 = and i32 %1409, 511, !dbg !2357
  %1411 = and i32 %1410, 256, !dbg !2357
  %1412 = icmp ne i32 %1411, 0, !dbg !2357
  br i1 %1412, label %1413, label %1420, !dbg !2357

; <label>:1413                                    ; preds = %1407
  %1414 = load %struct.lua_TValue** %k, align 4, !dbg !2358
  %1415 = load i32* %i, align 4, !dbg !2358
  %1416 = lshr i32 %1415, 23, !dbg !2358
  %1417 = and i32 %1416, 511, !dbg !2358
  %1418 = and i32 %1417, -257, !dbg !2358
  %1419 = getelementptr inbounds %struct.lua_TValue* %1414, i32 %1418, !dbg !2358
  br label %1426, !dbg !2358

; <label>:1420                                    ; preds = %1407
  %1421 = load %struct.lua_TValue** %base, align 4, !dbg !2360
  %1422 = load i32* %i, align 4, !dbg !2360
  %1423 = lshr i32 %1422, 23, !dbg !2360
  %1424 = and i32 %1423, 511, !dbg !2360
  %1425 = getelementptr inbounds %struct.lua_TValue* %1421, i32 %1424, !dbg !2360
  br label %1426, !dbg !2360

; <label>:1426                                    ; preds = %1420, %1413
  %1427 = phi %struct.lua_TValue* [ %1419, %1413 ], [ %1425, %1420 ], !dbg !2357
  store %struct.lua_TValue* %1427, %struct.lua_TValue** %rb65, align 4, !dbg !2362
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %rc66}, metadata !2365), !dbg !2366
  %1428 = load i32* %i, align 4, !dbg !2367
  %1429 = lshr i32 %1428, 14, !dbg !2367
  %1430 = and i32 %1429, 511, !dbg !2367
  %1431 = and i32 %1430, 256, !dbg !2367
  %1432 = icmp ne i32 %1431, 0, !dbg !2367
  br i1 %1432, label %1433, label %1440, !dbg !2367

; <label>:1433                                    ; preds = %1426
  %1434 = load %struct.lua_TValue** %k, align 4, !dbg !2368
  %1435 = load i32* %i, align 4, !dbg !2368
  %1436 = lshr i32 %1435, 14, !dbg !2368
  %1437 = and i32 %1436, 511, !dbg !2368
  %1438 = and i32 %1437, -257, !dbg !2368
  %1439 = getelementptr inbounds %struct.lua_TValue* %1434, i32 %1438, !dbg !2368
  br label %1446, !dbg !2368

; <label>:1440                                    ; preds = %1426
  %1441 = load %struct.lua_TValue** %base, align 4, !dbg !2370
  %1442 = load i32* %i, align 4, !dbg !2370
  %1443 = lshr i32 %1442, 14, !dbg !2370
  %1444 = and i32 %1443, 511, !dbg !2370
  %1445 = getelementptr inbounds %struct.lua_TValue* %1441, i32 %1444, !dbg !2370
  br label %1446, !dbg !2370

; <label>:1446                                    ; preds = %1440, %1433
  %1447 = phi %struct.lua_TValue* [ %1439, %1433 ], [ %1445, %1440 ], !dbg !2367
  store %struct.lua_TValue* %1447, %struct.lua_TValue** %rc66, align 4, !dbg !2372
  call void @llvm.dbg.declare(metadata !{i64* %ib67}, metadata !2375), !dbg !2376
  call void @llvm.dbg.declare(metadata !{i64* %ic68}, metadata !2377), !dbg !2378
  %1448 = load %struct.lua_TValue** %rb65, align 4, !dbg !2379
  %1449 = getelementptr inbounds %struct.lua_TValue* %1448, i32 0, i32 1, !dbg !2379
  %1450 = load i32* %1449, align 4, !dbg !2379
  %1451 = icmp eq i32 %1450, 19, !dbg !2379
  br i1 %1451, label %1452, label %1457, !dbg !2379

; <label>:1452                                    ; preds = %1446
  %1453 = load %struct.lua_TValue** %rb65, align 4, !dbg !2381
  %1454 = getelementptr inbounds %struct.lua_TValue* %1453, i32 0, i32 0, !dbg !2381
  %1455 = bitcast %union.Value* %1454 to i64*, !dbg !2381
  %1456 = load i64* %1455, align 8, !dbg !2381
  store i64 %1456, i64* %ib67, align 8, !dbg !2381
  br i1 true, label %1461, label %1485, !dbg !2381

; <label>:1457                                    ; preds = %1446
  %1458 = load %struct.lua_TValue** %rb65, align 4, !dbg !2383
  %1459 = call i32 @luaV_tointeger(%struct.lua_TValue* %1458, i64* %ib67, i32 0), !dbg !2383
  %1460 = icmp ne i32 %1459, 0, !dbg !2383
  br i1 %1460, label %1461, label %1485, !dbg !2383

; <label>:1461                                    ; preds = %1457, %1452
  %1462 = load %struct.lua_TValue** %rc66, align 4, !dbg !2385
  %1463 = getelementptr inbounds %struct.lua_TValue* %1462, i32 0, i32 1, !dbg !2385
  %1464 = load i32* %1463, align 4, !dbg !2385
  %1465 = icmp eq i32 %1464, 19, !dbg !2385
  br i1 %1465, label %1466, label %1471, !dbg !2385

; <label>:1466                                    ; preds = %1461
  %1467 = load %struct.lua_TValue** %rc66, align 4, !dbg !2388
  %1468 = getelementptr inbounds %struct.lua_TValue* %1467, i32 0, i32 0, !dbg !2388
  %1469 = bitcast %union.Value* %1468 to i64*, !dbg !2388
  %1470 = load i64* %1469, align 8, !dbg !2388
  store i64 %1470, i64* %ic68, align 8, !dbg !2388
  br i1 true, label %1475, label %1485, !dbg !2388

; <label>:1471                                    ; preds = %1461
  %1472 = load %struct.lua_TValue** %rc66, align 4, !dbg !2390
  %1473 = call i32 @luaV_tointeger(%struct.lua_TValue* %1472, i64* %ic68, i32 0), !dbg !2390
  %1474 = icmp ne i32 %1473, 0, !dbg !2390
  br i1 %1474, label %1475, label %1485, !dbg !2390

; <label>:1475                                    ; preds = %1471, %1466
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %io69}, metadata !2392), !dbg !2395
  %1476 = load %struct.lua_TValue** %ra, align 4, !dbg !2395
  store %struct.lua_TValue* %1476, %struct.lua_TValue** %io69, align 4, !dbg !2395
  %1477 = load i64* %ib67, align 8, !dbg !2395
  %1478 = load i64* %ic68, align 8, !dbg !2395
  %1479 = call i64 @luaV_shiftl(i64 %1477, i64 %1478), !dbg !2395
  %1480 = load %struct.lua_TValue** %io69, align 4, !dbg !2395
  %1481 = getelementptr inbounds %struct.lua_TValue* %1480, i32 0, i32 0, !dbg !2395
  %1482 = bitcast %union.Value* %1481 to i64*, !dbg !2395
  store i64 %1479, i64* %1482, align 8, !dbg !2395
  %1483 = load %struct.lua_TValue** %io69, align 4, !dbg !2395
  %1484 = getelementptr inbounds %struct.lua_TValue* %1483, i32 0, i32 1, !dbg !2395
  store i32 19, i32* %1484, align 4, !dbg !2395
  br label %1495, !dbg !2396

; <label>:1485                                    ; preds = %1471, %1466, %1457, %1452
  %1486 = load %struct.lua_State** %1, align 4, !dbg !2397
  %1487 = load %struct.lua_TValue** %rb65, align 4, !dbg !2397
  %1488 = load %struct.lua_TValue** %rc66, align 4, !dbg !2397
  %1489 = load %struct.lua_TValue** %ra, align 4, !dbg !2397
  call void @luaT_trybinTM(%struct.lua_State* %1486, %struct.lua_TValue* %1487, %struct.lua_TValue* %1488, %struct.lua_TValue* %1489, i32 16), !dbg !2397
  %1490 = load %struct.CallInfo** %ci, align 4, !dbg !2401
  %1491 = getelementptr inbounds %struct.CallInfo* %1490, i32 0, i32 4, !dbg !2401
  %1492 = bitcast %union.anon* %1491 to %struct.anon*, !dbg !2401
  %1493 = getelementptr inbounds %struct.anon* %1492, i32 0, i32 0, !dbg !2401
  %1494 = load %struct.lua_TValue** %1493, align 4, !dbg !2401
  store %struct.lua_TValue* %1494, %struct.lua_TValue** %base, align 4, !dbg !2401
  br label %1495

; <label>:1495                                    ; preds = %1485, %1475
  br label %3454, !dbg !2402

; <label>:1496                                    ; preds = %51
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %rb70}, metadata !2403), !dbg !2405
  %1497 = load i32* %i, align 4, !dbg !2406
  %1498 = lshr i32 %1497, 23, !dbg !2406
  %1499 = and i32 %1498, 511, !dbg !2406
  %1500 = and i32 %1499, 256, !dbg !2406
  %1501 = icmp ne i32 %1500, 0, !dbg !2406
  br i1 %1501, label %1502, label %1509, !dbg !2406

; <label>:1502                                    ; preds = %1496
  %1503 = load %struct.lua_TValue** %k, align 4, !dbg !2407
  %1504 = load i32* %i, align 4, !dbg !2407
  %1505 = lshr i32 %1504, 23, !dbg !2407
  %1506 = and i32 %1505, 511, !dbg !2407
  %1507 = and i32 %1506, -257, !dbg !2407
  %1508 = getelementptr inbounds %struct.lua_TValue* %1503, i32 %1507, !dbg !2407
  br label %1515, !dbg !2407

; <label>:1509                                    ; preds = %1496
  %1510 = load %struct.lua_TValue** %base, align 4, !dbg !2409
  %1511 = load i32* %i, align 4, !dbg !2409
  %1512 = lshr i32 %1511, 23, !dbg !2409
  %1513 = and i32 %1512, 511, !dbg !2409
  %1514 = getelementptr inbounds %struct.lua_TValue* %1510, i32 %1513, !dbg !2409
  br label %1515, !dbg !2409

; <label>:1515                                    ; preds = %1509, %1502
  %1516 = phi %struct.lua_TValue* [ %1508, %1502 ], [ %1514, %1509 ], !dbg !2406
  store %struct.lua_TValue* %1516, %struct.lua_TValue** %rb70, align 4, !dbg !2411
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %rc71}, metadata !2414), !dbg !2415
  %1517 = load i32* %i, align 4, !dbg !2416
  %1518 = lshr i32 %1517, 14, !dbg !2416
  %1519 = and i32 %1518, 511, !dbg !2416
  %1520 = and i32 %1519, 256, !dbg !2416
  %1521 = icmp ne i32 %1520, 0, !dbg !2416
  br i1 %1521, label %1522, label %1529, !dbg !2416

; <label>:1522                                    ; preds = %1515
  %1523 = load %struct.lua_TValue** %k, align 4, !dbg !2417
  %1524 = load i32* %i, align 4, !dbg !2417
  %1525 = lshr i32 %1524, 14, !dbg !2417
  %1526 = and i32 %1525, 511, !dbg !2417
  %1527 = and i32 %1526, -257, !dbg !2417
  %1528 = getelementptr inbounds %struct.lua_TValue* %1523, i32 %1527, !dbg !2417
  br label %1535, !dbg !2417

; <label>:1529                                    ; preds = %1515
  %1530 = load %struct.lua_TValue** %base, align 4, !dbg !2419
  %1531 = load i32* %i, align 4, !dbg !2419
  %1532 = lshr i32 %1531, 14, !dbg !2419
  %1533 = and i32 %1532, 511, !dbg !2419
  %1534 = getelementptr inbounds %struct.lua_TValue* %1530, i32 %1533, !dbg !2419
  br label %1535, !dbg !2419

; <label>:1535                                    ; preds = %1529, %1522
  %1536 = phi %struct.lua_TValue* [ %1528, %1522 ], [ %1534, %1529 ], !dbg !2416
  store %struct.lua_TValue* %1536, %struct.lua_TValue** %rc71, align 4, !dbg !2421
  call void @llvm.dbg.declare(metadata !{i64* %ib72}, metadata !2424), !dbg !2425
  call void @llvm.dbg.declare(metadata !{i64* %ic73}, metadata !2426), !dbg !2427
  %1537 = load %struct.lua_TValue** %rb70, align 4, !dbg !2428
  %1538 = getelementptr inbounds %struct.lua_TValue* %1537, i32 0, i32 1, !dbg !2428
  %1539 = load i32* %1538, align 4, !dbg !2428
  %1540 = icmp eq i32 %1539, 19, !dbg !2428
  br i1 %1540, label %1541, label %1546, !dbg !2428

; <label>:1541                                    ; preds = %1535
  %1542 = load %struct.lua_TValue** %rb70, align 4, !dbg !2430
  %1543 = getelementptr inbounds %struct.lua_TValue* %1542, i32 0, i32 0, !dbg !2430
  %1544 = bitcast %union.Value* %1543 to i64*, !dbg !2430
  %1545 = load i64* %1544, align 8, !dbg !2430
  store i64 %1545, i64* %ib72, align 8, !dbg !2430
  br i1 true, label %1550, label %1575, !dbg !2430

; <label>:1546                                    ; preds = %1535
  %1547 = load %struct.lua_TValue** %rb70, align 4, !dbg !2432
  %1548 = call i32 @luaV_tointeger(%struct.lua_TValue* %1547, i64* %ib72, i32 0), !dbg !2432
  %1549 = icmp ne i32 %1548, 0, !dbg !2432
  br i1 %1549, label %1550, label %1575, !dbg !2432

; <label>:1550                                    ; preds = %1546, %1541
  %1551 = load %struct.lua_TValue** %rc71, align 4, !dbg !2434
  %1552 = getelementptr inbounds %struct.lua_TValue* %1551, i32 0, i32 1, !dbg !2434
  %1553 = load i32* %1552, align 4, !dbg !2434
  %1554 = icmp eq i32 %1553, 19, !dbg !2434
  br i1 %1554, label %1555, label %1560, !dbg !2434

; <label>:1555                                    ; preds = %1550
  %1556 = load %struct.lua_TValue** %rc71, align 4, !dbg !2437
  %1557 = getelementptr inbounds %struct.lua_TValue* %1556, i32 0, i32 0, !dbg !2437
  %1558 = bitcast %union.Value* %1557 to i64*, !dbg !2437
  %1559 = load i64* %1558, align 8, !dbg !2437
  store i64 %1559, i64* %ic73, align 8, !dbg !2437
  br i1 true, label %1564, label %1575, !dbg !2437

; <label>:1560                                    ; preds = %1550
  %1561 = load %struct.lua_TValue** %rc71, align 4, !dbg !2439
  %1562 = call i32 @luaV_tointeger(%struct.lua_TValue* %1561, i64* %ic73, i32 0), !dbg !2439
  %1563 = icmp ne i32 %1562, 0, !dbg !2439
  br i1 %1563, label %1564, label %1575, !dbg !2439

; <label>:1564                                    ; preds = %1560, %1555
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %io74}, metadata !2441), !dbg !2444
  %1565 = load %struct.lua_TValue** %ra, align 4, !dbg !2444
  store %struct.lua_TValue* %1565, %struct.lua_TValue** %io74, align 4, !dbg !2444
  %1566 = load i64* %ib72, align 8, !dbg !2444
  %1567 = load i64* %ic73, align 8, !dbg !2444
  %1568 = sub nsw i64 0, %1567, !dbg !2444
  %1569 = call i64 @luaV_shiftl(i64 %1566, i64 %1568), !dbg !2444
  %1570 = load %struct.lua_TValue** %io74, align 4, !dbg !2444
  %1571 = getelementptr inbounds %struct.lua_TValue* %1570, i32 0, i32 0, !dbg !2444
  %1572 = bitcast %union.Value* %1571 to i64*, !dbg !2444
  store i64 %1569, i64* %1572, align 8, !dbg !2444
  %1573 = load %struct.lua_TValue** %io74, align 4, !dbg !2444
  %1574 = getelementptr inbounds %struct.lua_TValue* %1573, i32 0, i32 1, !dbg !2444
  store i32 19, i32* %1574, align 4, !dbg !2444
  br label %1585, !dbg !2445

; <label>:1575                                    ; preds = %1560, %1555, %1546, %1541
  %1576 = load %struct.lua_State** %1, align 4, !dbg !2446
  %1577 = load %struct.lua_TValue** %rb70, align 4, !dbg !2446
  %1578 = load %struct.lua_TValue** %rc71, align 4, !dbg !2446
  %1579 = load %struct.lua_TValue** %ra, align 4, !dbg !2446
  call void @luaT_trybinTM(%struct.lua_State* %1576, %struct.lua_TValue* %1577, %struct.lua_TValue* %1578, %struct.lua_TValue* %1579, i32 17), !dbg !2446
  %1580 = load %struct.CallInfo** %ci, align 4, !dbg !2450
  %1581 = getelementptr inbounds %struct.CallInfo* %1580, i32 0, i32 4, !dbg !2450
  %1582 = bitcast %union.anon* %1581 to %struct.anon*, !dbg !2450
  %1583 = getelementptr inbounds %struct.anon* %1582, i32 0, i32 0, !dbg !2450
  %1584 = load %struct.lua_TValue** %1583, align 4, !dbg !2450
  store %struct.lua_TValue* %1584, %struct.lua_TValue** %base, align 4, !dbg !2450
  br label %1585

; <label>:1585                                    ; preds = %1575, %1564
  br label %3454, !dbg !2451

; <label>:1586                                    ; preds = %51
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %rb75}, metadata !2452), !dbg !2454
  %1587 = load i32* %i, align 4, !dbg !2455
  %1588 = lshr i32 %1587, 23, !dbg !2455
  %1589 = and i32 %1588, 511, !dbg !2455
  %1590 = and i32 %1589, 256, !dbg !2455
  %1591 = icmp ne i32 %1590, 0, !dbg !2455
  br i1 %1591, label %1592, label %1599, !dbg !2455

; <label>:1592                                    ; preds = %1586
  %1593 = load %struct.lua_TValue** %k, align 4, !dbg !2456
  %1594 = load i32* %i, align 4, !dbg !2456
  %1595 = lshr i32 %1594, 23, !dbg !2456
  %1596 = and i32 %1595, 511, !dbg !2456
  %1597 = and i32 %1596, -257, !dbg !2456
  %1598 = getelementptr inbounds %struct.lua_TValue* %1593, i32 %1597, !dbg !2456
  br label %1605, !dbg !2456

; <label>:1599                                    ; preds = %1586
  %1600 = load %struct.lua_TValue** %base, align 4, !dbg !2458
  %1601 = load i32* %i, align 4, !dbg !2458
  %1602 = lshr i32 %1601, 23, !dbg !2458
  %1603 = and i32 %1602, 511, !dbg !2458
  %1604 = getelementptr inbounds %struct.lua_TValue* %1600, i32 %1603, !dbg !2458
  br label %1605, !dbg !2458

; <label>:1605                                    ; preds = %1599, %1592
  %1606 = phi %struct.lua_TValue* [ %1598, %1592 ], [ %1604, %1599 ], !dbg !2455
  store %struct.lua_TValue* %1606, %struct.lua_TValue** %rb75, align 4, !dbg !2460
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %rc76}, metadata !2463), !dbg !2464
  %1607 = load i32* %i, align 4, !dbg !2465
  %1608 = lshr i32 %1607, 14, !dbg !2465
  %1609 = and i32 %1608, 511, !dbg !2465
  %1610 = and i32 %1609, 256, !dbg !2465
  %1611 = icmp ne i32 %1610, 0, !dbg !2465
  br i1 %1611, label %1612, label %1619, !dbg !2465

; <label>:1612                                    ; preds = %1605
  %1613 = load %struct.lua_TValue** %k, align 4, !dbg !2466
  %1614 = load i32* %i, align 4, !dbg !2466
  %1615 = lshr i32 %1614, 14, !dbg !2466
  %1616 = and i32 %1615, 511, !dbg !2466
  %1617 = and i32 %1616, -257, !dbg !2466
  %1618 = getelementptr inbounds %struct.lua_TValue* %1613, i32 %1617, !dbg !2466
  br label %1625, !dbg !2466

; <label>:1619                                    ; preds = %1605
  %1620 = load %struct.lua_TValue** %base, align 4, !dbg !2468
  %1621 = load i32* %i, align 4, !dbg !2468
  %1622 = lshr i32 %1621, 14, !dbg !2468
  %1623 = and i32 %1622, 511, !dbg !2468
  %1624 = getelementptr inbounds %struct.lua_TValue* %1620, i32 %1623, !dbg !2468
  br label %1625, !dbg !2468

; <label>:1625                                    ; preds = %1619, %1612
  %1626 = phi %struct.lua_TValue* [ %1618, %1612 ], [ %1624, %1619 ], !dbg !2465
  store %struct.lua_TValue* %1626, %struct.lua_TValue** %rc76, align 4, !dbg !2470
  call void @llvm.dbg.declare(metadata !{double* %nb77}, metadata !2473), !dbg !2474
  call void @llvm.dbg.declare(metadata !{double* %nc78}, metadata !2475), !dbg !2476
  %1627 = load %struct.lua_TValue** %rb75, align 4, !dbg !2477
  %1628 = getelementptr inbounds %struct.lua_TValue* %1627, i32 0, i32 1, !dbg !2477
  %1629 = load i32* %1628, align 4, !dbg !2477
  %1630 = icmp eq i32 %1629, 19, !dbg !2477
  br i1 %1630, label %1631, label %1655, !dbg !2477

; <label>:1631                                    ; preds = %1625
  %1632 = load %struct.lua_TValue** %rc76, align 4, !dbg !2479
  %1633 = getelementptr inbounds %struct.lua_TValue* %1632, i32 0, i32 1, !dbg !2479
  %1634 = load i32* %1633, align 4, !dbg !2479
  %1635 = icmp eq i32 %1634, 19, !dbg !2479
  br i1 %1635, label %1636, label %1655, !dbg !2479

; <label>:1636                                    ; preds = %1631
  call void @llvm.dbg.declare(metadata !{i64* %ib79}, metadata !2481), !dbg !2483
  %1637 = load %struct.lua_TValue** %rb75, align 4, !dbg !2484
  %1638 = getelementptr inbounds %struct.lua_TValue* %1637, i32 0, i32 0, !dbg !2484
  %1639 = bitcast %union.Value* %1638 to i64*, !dbg !2484
  %1640 = load i64* %1639, align 8, !dbg !2484
  store i64 %1640, i64* %ib79, align 8, !dbg !2484
  call void @llvm.dbg.declare(metadata !{i64* %ic80}, metadata !2485), !dbg !2486
  %1641 = load %struct.lua_TValue** %rc76, align 4, !dbg !2487
  %1642 = getelementptr inbounds %struct.lua_TValue* %1641, i32 0, i32 0, !dbg !2487
  %1643 = bitcast %union.Value* %1642 to i64*, !dbg !2487
  %1644 = load i64* %1643, align 8, !dbg !2487
  store i64 %1644, i64* %ic80, align 8, !dbg !2487
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %io81}, metadata !2488), !dbg !2490
  %1645 = load %struct.lua_TValue** %ra, align 4, !dbg !2490
  store %struct.lua_TValue* %1645, %struct.lua_TValue** %io81, align 4, !dbg !2490
  %1646 = load %struct.lua_State** %1, align 4, !dbg !2490
  %1647 = load i64* %ib79, align 8, !dbg !2490
  %1648 = load i64* %ic80, align 8, !dbg !2490
  %1649 = call i64 @luaV_mod(%struct.lua_State* %1646, i64 %1647, i64 %1648), !dbg !2490
  %1650 = load %struct.lua_TValue** %io81, align 4, !dbg !2490
  %1651 = getelementptr inbounds %struct.lua_TValue* %1650, i32 0, i32 0, !dbg !2490
  %1652 = bitcast %union.Value* %1651 to i64*, !dbg !2490
  store i64 %1649, i64* %1652, align 8, !dbg !2490
  %1653 = load %struct.lua_TValue** %io81, align 4, !dbg !2490
  %1654 = getelementptr inbounds %struct.lua_TValue* %1653, i32 0, i32 1, !dbg !2490
  store i32 19, i32* %1654, align 4, !dbg !2490
  br label %1714, !dbg !2491

; <label>:1655                                    ; preds = %1631, %1625
  %1656 = load %struct.lua_TValue** %rb75, align 4, !dbg !2492
  %1657 = getelementptr inbounds %struct.lua_TValue* %1656, i32 0, i32 1, !dbg !2492
  %1658 = load i32* %1657, align 4, !dbg !2492
  %1659 = icmp eq i32 %1658, 3, !dbg !2492
  br i1 %1659, label %1660, label %1665, !dbg !2492

; <label>:1660                                    ; preds = %1655
  %1661 = load %struct.lua_TValue** %rb75, align 4, !dbg !2494
  %1662 = getelementptr inbounds %struct.lua_TValue* %1661, i32 0, i32 0, !dbg !2494
  %1663 = bitcast %union.Value* %1662 to double*, !dbg !2494
  %1664 = load double* %1663, align 8, !dbg !2494
  store double %1664, double* %nb77, align 8, !dbg !2494
  br i1 true, label %1669, label %1703, !dbg !2494

; <label>:1665                                    ; preds = %1655
  %1666 = load %struct.lua_TValue** %rb75, align 4, !dbg !2496
  %1667 = call i32 @luaV_tonumber_(%struct.lua_TValue* %1666, double* %nb77), !dbg !2496
  %1668 = icmp ne i32 %1667, 0, !dbg !2496
  br i1 %1668, label %1669, label %1703, !dbg !2496

; <label>:1669                                    ; preds = %1665, %1660
  %1670 = load %struct.lua_TValue** %rc76, align 4, !dbg !2498
  %1671 = getelementptr inbounds %struct.lua_TValue* %1670, i32 0, i32 1, !dbg !2498
  %1672 = load i32* %1671, align 4, !dbg !2498
  %1673 = icmp eq i32 %1672, 3, !dbg !2498
  br i1 %1673, label %1674, label %1679, !dbg !2498

; <label>:1674                                    ; preds = %1669
  %1675 = load %struct.lua_TValue** %rc76, align 4, !dbg !2501
  %1676 = getelementptr inbounds %struct.lua_TValue* %1675, i32 0, i32 0, !dbg !2501
  %1677 = bitcast %union.Value* %1676 to double*, !dbg !2501
  %1678 = load double* %1677, align 8, !dbg !2501
  store double %1678, double* %nc78, align 8, !dbg !2501
  br i1 true, label %1683, label %1703, !dbg !2501

; <label>:1679                                    ; preds = %1669
  %1680 = load %struct.lua_TValue** %rc76, align 4, !dbg !2503
  %1681 = call i32 @luaV_tonumber_(%struct.lua_TValue* %1680, double* %nc78), !dbg !2503
  %1682 = icmp ne i32 %1681, 0, !dbg !2503
  br i1 %1682, label %1683, label %1703, !dbg !2503

; <label>:1683                                    ; preds = %1679, %1674
  call void @llvm.dbg.declare(metadata !{double* %m}, metadata !2505), !dbg !2507
  %1684 = load double* %nb77, align 8, !dbg !2508
  %1685 = load double* %nc78, align 8, !dbg !2508
  %1686 = call double @fmod(double %1684, double %1685) #5, !dbg !2508
  store double %1686, double* %m, align 8, !dbg !2508
  %1687 = load double* %m, align 8, !dbg !2510
  %1688 = load double* %nc78, align 8, !dbg !2510
  %1689 = fmul double %1687, %1688, !dbg !2510
  %1690 = fcmp olt double %1689, 0.000000e+00, !dbg !2510
  br i1 %1690, label %1691, label %1695, !dbg !2510

; <label>:1691                                    ; preds = %1683
  %1692 = load double* %nc78, align 8, !dbg !2512
  %1693 = load double* %m, align 8, !dbg !2512
  %1694 = fadd double %1693, %1692, !dbg !2512
  store double %1694, double* %m, align 8, !dbg !2512
  br label %1695, !dbg !2512

; <label>:1695                                    ; preds = %1691, %1683
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %io82}, metadata !2514), !dbg !2516
  %1696 = load %struct.lua_TValue** %ra, align 4, !dbg !2516
  store %struct.lua_TValue* %1696, %struct.lua_TValue** %io82, align 4, !dbg !2516
  %1697 = load double* %m, align 8, !dbg !2516
  %1698 = load %struct.lua_TValue** %io82, align 4, !dbg !2516
  %1699 = getelementptr inbounds %struct.lua_TValue* %1698, i32 0, i32 0, !dbg !2516
  %1700 = bitcast %union.Value* %1699 to double*, !dbg !2516
  store double %1697, double* %1700, align 8, !dbg !2516
  %1701 = load %struct.lua_TValue** %io82, align 4, !dbg !2516
  %1702 = getelementptr inbounds %struct.lua_TValue* %1701, i32 0, i32 1, !dbg !2516
  store i32 3, i32* %1702, align 4, !dbg !2516
  br label %1713, !dbg !2517

; <label>:1703                                    ; preds = %1679, %1674, %1665, %1660
  %1704 = load %struct.lua_State** %1, align 4, !dbg !2518
  %1705 = load %struct.lua_TValue** %rb75, align 4, !dbg !2518
  %1706 = load %struct.lua_TValue** %rc76, align 4, !dbg !2518
  %1707 = load %struct.lua_TValue** %ra, align 4, !dbg !2518
  call void @luaT_trybinTM(%struct.lua_State* %1704, %struct.lua_TValue* %1705, %struct.lua_TValue* %1706, %struct.lua_TValue* %1707, i32 9), !dbg !2518
  %1708 = load %struct.CallInfo** %ci, align 4, !dbg !2522
  %1709 = getelementptr inbounds %struct.CallInfo* %1708, i32 0, i32 4, !dbg !2522
  %1710 = bitcast %union.anon* %1709 to %struct.anon*, !dbg !2522
  %1711 = getelementptr inbounds %struct.anon* %1710, i32 0, i32 0, !dbg !2522
  %1712 = load %struct.lua_TValue** %1711, align 4, !dbg !2522
  store %struct.lua_TValue* %1712, %struct.lua_TValue** %base, align 4, !dbg !2522
  br label %1713

; <label>:1713                                    ; preds = %1703, %1695
  br label %1714

; <label>:1714                                    ; preds = %1713, %1636
  br label %3454, !dbg !2523

; <label>:1715                                    ; preds = %51
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %rb83}, metadata !2524), !dbg !2526
  %1716 = load i32* %i, align 4, !dbg !2527
  %1717 = lshr i32 %1716, 23, !dbg !2527
  %1718 = and i32 %1717, 511, !dbg !2527
  %1719 = and i32 %1718, 256, !dbg !2527
  %1720 = icmp ne i32 %1719, 0, !dbg !2527
  br i1 %1720, label %1721, label %1728, !dbg !2527

; <label>:1721                                    ; preds = %1715
  %1722 = load %struct.lua_TValue** %k, align 4, !dbg !2528
  %1723 = load i32* %i, align 4, !dbg !2528
  %1724 = lshr i32 %1723, 23, !dbg !2528
  %1725 = and i32 %1724, 511, !dbg !2528
  %1726 = and i32 %1725, -257, !dbg !2528
  %1727 = getelementptr inbounds %struct.lua_TValue* %1722, i32 %1726, !dbg !2528
  br label %1734, !dbg !2528

; <label>:1728                                    ; preds = %1715
  %1729 = load %struct.lua_TValue** %base, align 4, !dbg !2530
  %1730 = load i32* %i, align 4, !dbg !2530
  %1731 = lshr i32 %1730, 23, !dbg !2530
  %1732 = and i32 %1731, 511, !dbg !2530
  %1733 = getelementptr inbounds %struct.lua_TValue* %1729, i32 %1732, !dbg !2530
  br label %1734, !dbg !2530

; <label>:1734                                    ; preds = %1728, %1721
  %1735 = phi %struct.lua_TValue* [ %1727, %1721 ], [ %1733, %1728 ], !dbg !2527
  store %struct.lua_TValue* %1735, %struct.lua_TValue** %rb83, align 4, !dbg !2532
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %rc84}, metadata !2535), !dbg !2536
  %1736 = load i32* %i, align 4, !dbg !2537
  %1737 = lshr i32 %1736, 14, !dbg !2537
  %1738 = and i32 %1737, 511, !dbg !2537
  %1739 = and i32 %1738, 256, !dbg !2537
  %1740 = icmp ne i32 %1739, 0, !dbg !2537
  br i1 %1740, label %1741, label %1748, !dbg !2537

; <label>:1741                                    ; preds = %1734
  %1742 = load %struct.lua_TValue** %k, align 4, !dbg !2538
  %1743 = load i32* %i, align 4, !dbg !2538
  %1744 = lshr i32 %1743, 14, !dbg !2538
  %1745 = and i32 %1744, 511, !dbg !2538
  %1746 = and i32 %1745, -257, !dbg !2538
  %1747 = getelementptr inbounds %struct.lua_TValue* %1742, i32 %1746, !dbg !2538
  br label %1754, !dbg !2538

; <label>:1748                                    ; preds = %1734
  %1749 = load %struct.lua_TValue** %base, align 4, !dbg !2540
  %1750 = load i32* %i, align 4, !dbg !2540
  %1751 = lshr i32 %1750, 14, !dbg !2540
  %1752 = and i32 %1751, 511, !dbg !2540
  %1753 = getelementptr inbounds %struct.lua_TValue* %1749, i32 %1752, !dbg !2540
  br label %1754, !dbg !2540

; <label>:1754                                    ; preds = %1748, %1741
  %1755 = phi %struct.lua_TValue* [ %1747, %1741 ], [ %1753, %1748 ], !dbg !2537
  store %struct.lua_TValue* %1755, %struct.lua_TValue** %rc84, align 4, !dbg !2542
  call void @llvm.dbg.declare(metadata !{double* %nb85}, metadata !2545), !dbg !2546
  call void @llvm.dbg.declare(metadata !{double* %nc86}, metadata !2547), !dbg !2548
  %1756 = load %struct.lua_TValue** %rb83, align 4, !dbg !2549
  %1757 = getelementptr inbounds %struct.lua_TValue* %1756, i32 0, i32 1, !dbg !2549
  %1758 = load i32* %1757, align 4, !dbg !2549
  %1759 = icmp eq i32 %1758, 19, !dbg !2549
  br i1 %1759, label %1760, label %1784, !dbg !2549

; <label>:1760                                    ; preds = %1754
  %1761 = load %struct.lua_TValue** %rc84, align 4, !dbg !2551
  %1762 = getelementptr inbounds %struct.lua_TValue* %1761, i32 0, i32 1, !dbg !2551
  %1763 = load i32* %1762, align 4, !dbg !2551
  %1764 = icmp eq i32 %1763, 19, !dbg !2551
  br i1 %1764, label %1765, label %1784, !dbg !2551

; <label>:1765                                    ; preds = %1760
  call void @llvm.dbg.declare(metadata !{i64* %ib87}, metadata !2553), !dbg !2555
  %1766 = load %struct.lua_TValue** %rb83, align 4, !dbg !2556
  %1767 = getelementptr inbounds %struct.lua_TValue* %1766, i32 0, i32 0, !dbg !2556
  %1768 = bitcast %union.Value* %1767 to i64*, !dbg !2556
  %1769 = load i64* %1768, align 8, !dbg !2556
  store i64 %1769, i64* %ib87, align 8, !dbg !2556
  call void @llvm.dbg.declare(metadata !{i64* %ic88}, metadata !2557), !dbg !2558
  %1770 = load %struct.lua_TValue** %rc84, align 4, !dbg !2559
  %1771 = getelementptr inbounds %struct.lua_TValue* %1770, i32 0, i32 0, !dbg !2559
  %1772 = bitcast %union.Value* %1771 to i64*, !dbg !2559
  %1773 = load i64* %1772, align 8, !dbg !2559
  store i64 %1773, i64* %ic88, align 8, !dbg !2559
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %io89}, metadata !2560), !dbg !2562
  %1774 = load %struct.lua_TValue** %ra, align 4, !dbg !2562
  store %struct.lua_TValue* %1774, %struct.lua_TValue** %io89, align 4, !dbg !2562
  %1775 = load %struct.lua_State** %1, align 4, !dbg !2562
  %1776 = load i64* %ib87, align 8, !dbg !2562
  %1777 = load i64* %ic88, align 8, !dbg !2562
  %1778 = call i64 @luaV_div(%struct.lua_State* %1775, i64 %1776, i64 %1777), !dbg !2562
  %1779 = load %struct.lua_TValue** %io89, align 4, !dbg !2562
  %1780 = getelementptr inbounds %struct.lua_TValue* %1779, i32 0, i32 0, !dbg !2562
  %1781 = bitcast %union.Value* %1780 to i64*, !dbg !2562
  store i64 %1778, i64* %1781, align 8, !dbg !2562
  %1782 = load %struct.lua_TValue** %io89, align 4, !dbg !2562
  %1783 = getelementptr inbounds %struct.lua_TValue* %1782, i32 0, i32 1, !dbg !2562
  store i32 19, i32* %1783, align 4, !dbg !2562
  br label %1835, !dbg !2563

; <label>:1784                                    ; preds = %1760, %1754
  %1785 = load %struct.lua_TValue** %rb83, align 4, !dbg !2564
  %1786 = getelementptr inbounds %struct.lua_TValue* %1785, i32 0, i32 1, !dbg !2564
  %1787 = load i32* %1786, align 4, !dbg !2564
  %1788 = icmp eq i32 %1787, 3, !dbg !2564
  br i1 %1788, label %1789, label %1794, !dbg !2564

; <label>:1789                                    ; preds = %1784
  %1790 = load %struct.lua_TValue** %rb83, align 4, !dbg !2566
  %1791 = getelementptr inbounds %struct.lua_TValue* %1790, i32 0, i32 0, !dbg !2566
  %1792 = bitcast %union.Value* %1791 to double*, !dbg !2566
  %1793 = load double* %1792, align 8, !dbg !2566
  store double %1793, double* %nb85, align 8, !dbg !2566
  br i1 true, label %1798, label %1824, !dbg !2566

; <label>:1794                                    ; preds = %1784
  %1795 = load %struct.lua_TValue** %rb83, align 4, !dbg !2568
  %1796 = call i32 @luaV_tonumber_(%struct.lua_TValue* %1795, double* %nb85), !dbg !2568
  %1797 = icmp ne i32 %1796, 0, !dbg !2568
  br i1 %1797, label %1798, label %1824, !dbg !2568

; <label>:1798                                    ; preds = %1794, %1789
  %1799 = load %struct.lua_TValue** %rc84, align 4, !dbg !2570
  %1800 = getelementptr inbounds %struct.lua_TValue* %1799, i32 0, i32 1, !dbg !2570
  %1801 = load i32* %1800, align 4, !dbg !2570
  %1802 = icmp eq i32 %1801, 3, !dbg !2570
  br i1 %1802, label %1803, label %1808, !dbg !2570

; <label>:1803                                    ; preds = %1798
  %1804 = load %struct.lua_TValue** %rc84, align 4, !dbg !2573
  %1805 = getelementptr inbounds %struct.lua_TValue* %1804, i32 0, i32 0, !dbg !2573
  %1806 = bitcast %union.Value* %1805 to double*, !dbg !2573
  %1807 = load double* %1806, align 8, !dbg !2573
  store double %1807, double* %nc86, align 8, !dbg !2573
  br i1 true, label %1812, label %1824, !dbg !2573

; <label>:1808                                    ; preds = %1798
  %1809 = load %struct.lua_TValue** %rc84, align 4, !dbg !2575
  %1810 = call i32 @luaV_tonumber_(%struct.lua_TValue* %1809, double* %nc86), !dbg !2575
  %1811 = icmp ne i32 %1810, 0, !dbg !2575
  br i1 %1811, label %1812, label %1824, !dbg !2575

; <label>:1812                                    ; preds = %1808, %1803
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %io90}, metadata !2577), !dbg !2580
  %1813 = load %struct.lua_TValue** %ra, align 4, !dbg !2580
  store %struct.lua_TValue* %1813, %struct.lua_TValue** %io90, align 4, !dbg !2580
  %1814 = load %struct.lua_State** %1, align 4, !dbg !2580
  %1815 = load double* %nb85, align 8, !dbg !2580
  %1816 = load double* %nc86, align 8, !dbg !2580
  %1817 = fdiv double %1815, %1816, !dbg !2580
  %1818 = call double @floor(double %1817) #1, !dbg !2580
  %1819 = load %struct.lua_TValue** %io90, align 4, !dbg !2580
  %1820 = getelementptr inbounds %struct.lua_TValue* %1819, i32 0, i32 0, !dbg !2580
  %1821 = bitcast %union.Value* %1820 to double*, !dbg !2580
  store double %1818, double* %1821, align 8, !dbg !2580
  %1822 = load %struct.lua_TValue** %io90, align 4, !dbg !2580
  %1823 = getelementptr inbounds %struct.lua_TValue* %1822, i32 0, i32 1, !dbg !2580
  store i32 3, i32* %1823, align 4, !dbg !2580
  br label %1834, !dbg !2581

; <label>:1824                                    ; preds = %1808, %1803, %1794, %1789
  %1825 = load %struct.lua_State** %1, align 4, !dbg !2582
  %1826 = load %struct.lua_TValue** %rb83, align 4, !dbg !2582
  %1827 = load %struct.lua_TValue** %rc84, align 4, !dbg !2582
  %1828 = load %struct.lua_TValue** %ra, align 4, !dbg !2582
  call void @luaT_trybinTM(%struct.lua_State* %1825, %struct.lua_TValue* %1826, %struct.lua_TValue* %1827, %struct.lua_TValue* %1828, i32 12), !dbg !2582
  %1829 = load %struct.CallInfo** %ci, align 4, !dbg !2586
  %1830 = getelementptr inbounds %struct.CallInfo* %1829, i32 0, i32 4, !dbg !2586
  %1831 = bitcast %union.anon* %1830 to %struct.anon*, !dbg !2586
  %1832 = getelementptr inbounds %struct.anon* %1831, i32 0, i32 0, !dbg !2586
  %1833 = load %struct.lua_TValue** %1832, align 4, !dbg !2586
  store %struct.lua_TValue* %1833, %struct.lua_TValue** %base, align 4, !dbg !2586
  br label %1834

; <label>:1834                                    ; preds = %1824, %1812
  br label %1835

; <label>:1835                                    ; preds = %1834, %1765
  br label %3454, !dbg !2587

; <label>:1836                                    ; preds = %51
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %rb91}, metadata !2588), !dbg !2590
  %1837 = load i32* %i, align 4, !dbg !2591
  %1838 = lshr i32 %1837, 23, !dbg !2591
  %1839 = and i32 %1838, 511, !dbg !2591
  %1840 = and i32 %1839, 256, !dbg !2591
  %1841 = icmp ne i32 %1840, 0, !dbg !2591
  br i1 %1841, label %1842, label %1849, !dbg !2591

; <label>:1842                                    ; preds = %1836
  %1843 = load %struct.lua_TValue** %k, align 4, !dbg !2592
  %1844 = load i32* %i, align 4, !dbg !2592
  %1845 = lshr i32 %1844, 23, !dbg !2592
  %1846 = and i32 %1845, 511, !dbg !2592
  %1847 = and i32 %1846, -257, !dbg !2592
  %1848 = getelementptr inbounds %struct.lua_TValue* %1843, i32 %1847, !dbg !2592
  br label %1855, !dbg !2592

; <label>:1849                                    ; preds = %1836
  %1850 = load %struct.lua_TValue** %base, align 4, !dbg !2594
  %1851 = load i32* %i, align 4, !dbg !2594
  %1852 = lshr i32 %1851, 23, !dbg !2594
  %1853 = and i32 %1852, 511, !dbg !2594
  %1854 = getelementptr inbounds %struct.lua_TValue* %1850, i32 %1853, !dbg !2594
  br label %1855, !dbg !2594

; <label>:1855                                    ; preds = %1849, %1842
  %1856 = phi %struct.lua_TValue* [ %1848, %1842 ], [ %1854, %1849 ], !dbg !2591
  store %struct.lua_TValue* %1856, %struct.lua_TValue** %rb91, align 4, !dbg !2596
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %rc92}, metadata !2599), !dbg !2600
  %1857 = load i32* %i, align 4, !dbg !2601
  %1858 = lshr i32 %1857, 14, !dbg !2601
  %1859 = and i32 %1858, 511, !dbg !2601
  %1860 = and i32 %1859, 256, !dbg !2601
  %1861 = icmp ne i32 %1860, 0, !dbg !2601
  br i1 %1861, label %1862, label %1869, !dbg !2601

; <label>:1862                                    ; preds = %1855
  %1863 = load %struct.lua_TValue** %k, align 4, !dbg !2602
  %1864 = load i32* %i, align 4, !dbg !2602
  %1865 = lshr i32 %1864, 14, !dbg !2602
  %1866 = and i32 %1865, 511, !dbg !2602
  %1867 = and i32 %1866, -257, !dbg !2602
  %1868 = getelementptr inbounds %struct.lua_TValue* %1863, i32 %1867, !dbg !2602
  br label %1875, !dbg !2602

; <label>:1869                                    ; preds = %1855
  %1870 = load %struct.lua_TValue** %base, align 4, !dbg !2604
  %1871 = load i32* %i, align 4, !dbg !2604
  %1872 = lshr i32 %1871, 14, !dbg !2604
  %1873 = and i32 %1872, 511, !dbg !2604
  %1874 = getelementptr inbounds %struct.lua_TValue* %1870, i32 %1873, !dbg !2604
  br label %1875, !dbg !2604

; <label>:1875                                    ; preds = %1869, %1862
  %1876 = phi %struct.lua_TValue* [ %1868, %1862 ], [ %1874, %1869 ], !dbg !2601
  store %struct.lua_TValue* %1876, %struct.lua_TValue** %rc92, align 4, !dbg !2606
  call void @llvm.dbg.declare(metadata !{double* %nb93}, metadata !2609), !dbg !2610
  call void @llvm.dbg.declare(metadata !{double* %nc94}, metadata !2611), !dbg !2612
  %1877 = load %struct.lua_TValue** %rb91, align 4, !dbg !2613
  %1878 = getelementptr inbounds %struct.lua_TValue* %1877, i32 0, i32 1, !dbg !2613
  %1879 = load i32* %1878, align 4, !dbg !2613
  %1880 = icmp eq i32 %1879, 3, !dbg !2613
  br i1 %1880, label %1881, label %1886, !dbg !2613

; <label>:1881                                    ; preds = %1875
  %1882 = load %struct.lua_TValue** %rb91, align 4, !dbg !2615
  %1883 = getelementptr inbounds %struct.lua_TValue* %1882, i32 0, i32 0, !dbg !2615
  %1884 = bitcast %union.Value* %1883 to double*, !dbg !2615
  %1885 = load double* %1884, align 8, !dbg !2615
  store double %1885, double* %nb93, align 8, !dbg !2615
  br i1 true, label %1890, label %1915, !dbg !2615

; <label>:1886                                    ; preds = %1875
  %1887 = load %struct.lua_TValue** %rb91, align 4, !dbg !2617
  %1888 = call i32 @luaV_tonumber_(%struct.lua_TValue* %1887, double* %nb93), !dbg !2617
  %1889 = icmp ne i32 %1888, 0, !dbg !2617
  br i1 %1889, label %1890, label %1915, !dbg !2617

; <label>:1890                                    ; preds = %1886, %1881
  %1891 = load %struct.lua_TValue** %rc92, align 4, !dbg !2619
  %1892 = getelementptr inbounds %struct.lua_TValue* %1891, i32 0, i32 1, !dbg !2619
  %1893 = load i32* %1892, align 4, !dbg !2619
  %1894 = icmp eq i32 %1893, 3, !dbg !2619
  br i1 %1894, label %1895, label %1900, !dbg !2619

; <label>:1895                                    ; preds = %1890
  %1896 = load %struct.lua_TValue** %rc92, align 4, !dbg !2622
  %1897 = getelementptr inbounds %struct.lua_TValue* %1896, i32 0, i32 0, !dbg !2622
  %1898 = bitcast %union.Value* %1897 to double*, !dbg !2622
  %1899 = load double* %1898, align 8, !dbg !2622
  store double %1899, double* %nc94, align 8, !dbg !2622
  br i1 true, label %1904, label %1915, !dbg !2622

; <label>:1900                                    ; preds = %1890
  %1901 = load %struct.lua_TValue** %rc92, align 4, !dbg !2624
  %1902 = call i32 @luaV_tonumber_(%struct.lua_TValue* %1901, double* %nc94), !dbg !2624
  %1903 = icmp ne i32 %1902, 0, !dbg !2624
  br i1 %1903, label %1904, label %1915, !dbg !2624

; <label>:1904                                    ; preds = %1900, %1895
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %io95}, metadata !2626), !dbg !2629
  %1905 = load %struct.lua_TValue** %ra, align 4, !dbg !2629
  store %struct.lua_TValue* %1905, %struct.lua_TValue** %io95, align 4, !dbg !2629
  %1906 = load %struct.lua_State** %1, align 4, !dbg !2629
  %1907 = load double* %nb93, align 8, !dbg !2629
  %1908 = load double* %nc94, align 8, !dbg !2629
  %1909 = call double @pow(double %1907, double %1908) #5, !dbg !2629
  %1910 = load %struct.lua_TValue** %io95, align 4, !dbg !2629
  %1911 = getelementptr inbounds %struct.lua_TValue* %1910, i32 0, i32 0, !dbg !2629
  %1912 = bitcast %union.Value* %1911 to double*, !dbg !2629
  store double %1909, double* %1912, align 8, !dbg !2629
  %1913 = load %struct.lua_TValue** %io95, align 4, !dbg !2629
  %1914 = getelementptr inbounds %struct.lua_TValue* %1913, i32 0, i32 1, !dbg !2629
  store i32 3, i32* %1914, align 4, !dbg !2629
  br label %1925, !dbg !2630

; <label>:1915                                    ; preds = %1900, %1895, %1886, %1881
  %1916 = load %struct.lua_State** %1, align 4, !dbg !2631
  %1917 = load %struct.lua_TValue** %rb91, align 4, !dbg !2631
  %1918 = load %struct.lua_TValue** %rc92, align 4, !dbg !2631
  %1919 = load %struct.lua_TValue** %ra, align 4, !dbg !2631
  call void @luaT_trybinTM(%struct.lua_State* %1916, %struct.lua_TValue* %1917, %struct.lua_TValue* %1918, %struct.lua_TValue* %1919, i32 10), !dbg !2631
  %1920 = load %struct.CallInfo** %ci, align 4, !dbg !2635
  %1921 = getelementptr inbounds %struct.CallInfo* %1920, i32 0, i32 4, !dbg !2635
  %1922 = bitcast %union.anon* %1921 to %struct.anon*, !dbg !2635
  %1923 = getelementptr inbounds %struct.anon* %1922, i32 0, i32 0, !dbg !2635
  %1924 = load %struct.lua_TValue** %1923, align 4, !dbg !2635
  store %struct.lua_TValue* %1924, %struct.lua_TValue** %base, align 4, !dbg !2635
  br label %1925

; <label>:1925                                    ; preds = %1915, %1904
  br label %3454, !dbg !2636

; <label>:1926                                    ; preds = %51
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %rb96}, metadata !2637), !dbg !2639
  %1927 = load %struct.lua_TValue** %base, align 4, !dbg !2640
  %1928 = load i32* %i, align 4, !dbg !2640
  %1929 = lshr i32 %1928, 23, !dbg !2640
  %1930 = and i32 %1929, 511, !dbg !2640
  %1931 = getelementptr inbounds %struct.lua_TValue* %1927, i32 %1930, !dbg !2640
  store %struct.lua_TValue* %1931, %struct.lua_TValue** %rb96, align 4, !dbg !2640
  call void @llvm.dbg.declare(metadata !{double* %nb97}, metadata !2641), !dbg !2642
  %1932 = load %struct.lua_TValue** %rb96, align 4, !dbg !2643
  %1933 = getelementptr inbounds %struct.lua_TValue* %1932, i32 0, i32 1, !dbg !2643
  %1934 = load i32* %1933, align 4, !dbg !2643
  %1935 = icmp eq i32 %1934, 19, !dbg !2643
  br i1 %1935, label %1936, label %1949, !dbg !2643

; <label>:1936                                    ; preds = %1926
  call void @llvm.dbg.declare(metadata !{i64* %ib98}, metadata !2645), !dbg !2647
  %1937 = load %struct.lua_TValue** %rb96, align 4, !dbg !2648
  %1938 = getelementptr inbounds %struct.lua_TValue* %1937, i32 0, i32 0, !dbg !2648
  %1939 = bitcast %union.Value* %1938 to i64*, !dbg !2648
  %1940 = load i64* %1939, align 8, !dbg !2648
  store i64 %1940, i64* %ib98, align 8, !dbg !2648
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %io99}, metadata !2649), !dbg !2651
  %1941 = load %struct.lua_TValue** %ra, align 4, !dbg !2651
  store %struct.lua_TValue* %1941, %struct.lua_TValue** %io99, align 4, !dbg !2651
  %1942 = load i64* %ib98, align 8, !dbg !2651
  %1943 = sub i64 0, %1942, !dbg !2651
  %1944 = load %struct.lua_TValue** %io99, align 4, !dbg !2651
  %1945 = getelementptr inbounds %struct.lua_TValue* %1944, i32 0, i32 0, !dbg !2651
  %1946 = bitcast %union.Value* %1945 to i64*, !dbg !2651
  store i64 %1943, i64* %1946, align 8, !dbg !2651
  %1947 = load %struct.lua_TValue** %io99, align 4, !dbg !2651
  %1948 = getelementptr inbounds %struct.lua_TValue* %1947, i32 0, i32 1, !dbg !2651
  store i32 19, i32* %1948, align 4, !dbg !2651
  br label %1983, !dbg !2652

; <label>:1949                                    ; preds = %1926
  %1950 = load %struct.lua_TValue** %rb96, align 4, !dbg !2653
  %1951 = getelementptr inbounds %struct.lua_TValue* %1950, i32 0, i32 1, !dbg !2653
  %1952 = load i32* %1951, align 4, !dbg !2653
  %1953 = icmp eq i32 %1952, 3, !dbg !2653
  br i1 %1953, label %1954, label %1959, !dbg !2653

; <label>:1954                                    ; preds = %1949
  %1955 = load %struct.lua_TValue** %rb96, align 4, !dbg !2655
  %1956 = getelementptr inbounds %struct.lua_TValue* %1955, i32 0, i32 0, !dbg !2655
  %1957 = bitcast %union.Value* %1956 to double*, !dbg !2655
  %1958 = load double* %1957, align 8, !dbg !2655
  store double %1958, double* %nb97, align 8, !dbg !2655
  br i1 true, label %1963, label %1972, !dbg !2655

; <label>:1959                                    ; preds = %1949
  %1960 = load %struct.lua_TValue** %rb96, align 4, !dbg !2657
  %1961 = call i32 @luaV_tonumber_(%struct.lua_TValue* %1960, double* %nb97), !dbg !2657
  %1962 = icmp ne i32 %1961, 0, !dbg !2657
  br i1 %1962, label %1963, label %1972, !dbg !2657

; <label>:1963                                    ; preds = %1959, %1954
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %io100}, metadata !2659), !dbg !2662
  %1964 = load %struct.lua_TValue** %ra, align 4, !dbg !2662
  store %struct.lua_TValue* %1964, %struct.lua_TValue** %io100, align 4, !dbg !2662
  %1965 = load double* %nb97, align 8, !dbg !2662
  %1966 = fsub double -0.000000e+00, %1965, !dbg !2662
  %1967 = load %struct.lua_TValue** %io100, align 4, !dbg !2662
  %1968 = getelementptr inbounds %struct.lua_TValue* %1967, i32 0, i32 0, !dbg !2662
  %1969 = bitcast %union.Value* %1968 to double*, !dbg !2662
  store double %1966, double* %1969, align 8, !dbg !2662
  %1970 = load %struct.lua_TValue** %io100, align 4, !dbg !2662
  %1971 = getelementptr inbounds %struct.lua_TValue* %1970, i32 0, i32 1, !dbg !2662
  store i32 3, i32* %1971, align 4, !dbg !2662
  br label %1982, !dbg !2663

; <label>:1972                                    ; preds = %1959, %1954
  %1973 = load %struct.lua_State** %1, align 4, !dbg !2664
  %1974 = load %struct.lua_TValue** %rb96, align 4, !dbg !2664
  %1975 = load %struct.lua_TValue** %rb96, align 4, !dbg !2664
  %1976 = load %struct.lua_TValue** %ra, align 4, !dbg !2664
  call void @luaT_trybinTM(%struct.lua_State* %1973, %struct.lua_TValue* %1974, %struct.lua_TValue* %1975, %struct.lua_TValue* %1976, i32 18), !dbg !2664
  %1977 = load %struct.CallInfo** %ci, align 4, !dbg !2668
  %1978 = getelementptr inbounds %struct.CallInfo* %1977, i32 0, i32 4, !dbg !2668
  %1979 = bitcast %union.anon* %1978 to %struct.anon*, !dbg !2668
  %1980 = getelementptr inbounds %struct.anon* %1979, i32 0, i32 0, !dbg !2668
  %1981 = load %struct.lua_TValue** %1980, align 4, !dbg !2668
  store %struct.lua_TValue* %1981, %struct.lua_TValue** %base, align 4, !dbg !2668
  br label %1982

; <label>:1982                                    ; preds = %1972, %1963
  br label %1983

; <label>:1983                                    ; preds = %1982, %1936
  br label %3454, !dbg !2669

; <label>:1984                                    ; preds = %51
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %rb101}, metadata !2670), !dbg !2672
  %1985 = load %struct.lua_TValue** %base, align 4, !dbg !2673
  %1986 = load i32* %i, align 4, !dbg !2673
  %1987 = lshr i32 %1986, 23, !dbg !2673
  %1988 = and i32 %1987, 511, !dbg !2673
  %1989 = getelementptr inbounds %struct.lua_TValue* %1985, i32 %1988, !dbg !2673
  store %struct.lua_TValue* %1989, %struct.lua_TValue** %rb101, align 4, !dbg !2673
  call void @llvm.dbg.declare(metadata !{i64* %ib102}, metadata !2674), !dbg !2675
  %1990 = load %struct.lua_TValue** %rb101, align 4, !dbg !2676
  %1991 = getelementptr inbounds %struct.lua_TValue* %1990, i32 0, i32 1, !dbg !2676
  %1992 = load i32* %1991, align 4, !dbg !2676
  %1993 = icmp eq i32 %1992, 19, !dbg !2676
  br i1 %1993, label %1994, label %1999, !dbg !2676

; <label>:1994                                    ; preds = %1984
  %1995 = load %struct.lua_TValue** %rb101, align 4, !dbg !2678
  %1996 = getelementptr inbounds %struct.lua_TValue* %1995, i32 0, i32 0, !dbg !2678
  %1997 = bitcast %union.Value* %1996 to i64*, !dbg !2678
  %1998 = load i64* %1997, align 8, !dbg !2678
  store i64 %1998, i64* %ib102, align 8, !dbg !2678
  br i1 true, label %2003, label %2012, !dbg !2678

; <label>:1999                                    ; preds = %1984
  %2000 = load %struct.lua_TValue** %rb101, align 4, !dbg !2680
  %2001 = call i32 @luaV_tointeger(%struct.lua_TValue* %2000, i64* %ib102, i32 0), !dbg !2680
  %2002 = icmp ne i32 %2001, 0, !dbg !2680
  br i1 %2002, label %2003, label %2012, !dbg !2680

; <label>:2003                                    ; preds = %1999, %1994
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %io103}, metadata !2682), !dbg !2685
  %2004 = load %struct.lua_TValue** %ra, align 4, !dbg !2685
  store %struct.lua_TValue* %2004, %struct.lua_TValue** %io103, align 4, !dbg !2685
  %2005 = load i64* %ib102, align 8, !dbg !2685
  %2006 = xor i64 -1, %2005, !dbg !2685
  %2007 = load %struct.lua_TValue** %io103, align 4, !dbg !2685
  %2008 = getelementptr inbounds %struct.lua_TValue* %2007, i32 0, i32 0, !dbg !2685
  %2009 = bitcast %union.Value* %2008 to i64*, !dbg !2685
  store i64 %2006, i64* %2009, align 8, !dbg !2685
  %2010 = load %struct.lua_TValue** %io103, align 4, !dbg !2685
  %2011 = getelementptr inbounds %struct.lua_TValue* %2010, i32 0, i32 1, !dbg !2685
  store i32 19, i32* %2011, align 4, !dbg !2685
  br label %2022, !dbg !2686

; <label>:2012                                    ; preds = %1999, %1994
  %2013 = load %struct.lua_State** %1, align 4, !dbg !2687
  %2014 = load %struct.lua_TValue** %rb101, align 4, !dbg !2687
  %2015 = load %struct.lua_TValue** %rb101, align 4, !dbg !2687
  %2016 = load %struct.lua_TValue** %ra, align 4, !dbg !2687
  call void @luaT_trybinTM(%struct.lua_State* %2013, %struct.lua_TValue* %2014, %struct.lua_TValue* %2015, %struct.lua_TValue* %2016, i32 19), !dbg !2687
  %2017 = load %struct.CallInfo** %ci, align 4, !dbg !2691
  %2018 = getelementptr inbounds %struct.CallInfo* %2017, i32 0, i32 4, !dbg !2691
  %2019 = bitcast %union.anon* %2018 to %struct.anon*, !dbg !2691
  %2020 = getelementptr inbounds %struct.anon* %2019, i32 0, i32 0, !dbg !2691
  %2021 = load %struct.lua_TValue** %2020, align 4, !dbg !2691
  store %struct.lua_TValue* %2021, %struct.lua_TValue** %base, align 4, !dbg !2691
  br label %2022

; <label>:2022                                    ; preds = %2012, %2003
  br label %3454, !dbg !2692

; <label>:2023                                    ; preds = %51
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %rb104}, metadata !2693), !dbg !2695
  %2024 = load %struct.lua_TValue** %base, align 4, !dbg !2696
  %2025 = load i32* %i, align 4, !dbg !2696
  %2026 = lshr i32 %2025, 23, !dbg !2696
  %2027 = and i32 %2026, 511, !dbg !2696
  %2028 = getelementptr inbounds %struct.lua_TValue* %2024, i32 %2027, !dbg !2696
  store %struct.lua_TValue* %2028, %struct.lua_TValue** %rb104, align 4, !dbg !2696
  call void @llvm.dbg.declare(metadata !{i32* %res}, metadata !2697), !dbg !2698
  %2029 = load %struct.lua_TValue** %rb104, align 4, !dbg !2699
  %2030 = getelementptr inbounds %struct.lua_TValue* %2029, i32 0, i32 1, !dbg !2699
  %2031 = load i32* %2030, align 4, !dbg !2699
  %2032 = icmp eq i32 %2031, 0, !dbg !2699
  br i1 %2032, label %2046, label %2033, !dbg !2699

; <label>:2033                                    ; preds = %2023
  %2034 = load %struct.lua_TValue** %rb104, align 4, !dbg !2700
  %2035 = getelementptr inbounds %struct.lua_TValue* %2034, i32 0, i32 1, !dbg !2700
  %2036 = load i32* %2035, align 4, !dbg !2700
  %2037 = icmp eq i32 %2036, 1, !dbg !2700
  br i1 %2037, label %2038, label %2044, !dbg !2700

; <label>:2038                                    ; preds = %2033
  %2039 = load %struct.lua_TValue** %rb104, align 4, !dbg !2702
  %2040 = getelementptr inbounds %struct.lua_TValue* %2039, i32 0, i32 0, !dbg !2702
  %2041 = bitcast %union.Value* %2040 to i32*, !dbg !2702
  %2042 = load i32* %2041, align 4, !dbg !2702
  %2043 = icmp eq i32 %2042, 0, !dbg !2702
  br label %2044

; <label>:2044                                    ; preds = %2038, %2033
  %2045 = phi i1 [ false, %2033 ], [ %2043, %2038 ]
  br label %2046, !dbg !2704

; <label>:2046                                    ; preds = %2044, %2023
  %2047 = phi i1 [ true, %2023 ], [ %2045, %2044 ]
  %2048 = zext i1 %2047 to i32, !dbg !2706
  store i32 %2048, i32* %res, align 4, !dbg !2706
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %io105}, metadata !2709), !dbg !2711
  %2049 = load %struct.lua_TValue** %ra, align 4, !dbg !2711
  store %struct.lua_TValue* %2049, %struct.lua_TValue** %io105, align 4, !dbg !2711
  %2050 = load i32* %res, align 4, !dbg !2711
  %2051 = load %struct.lua_TValue** %io105, align 4, !dbg !2711
  %2052 = getelementptr inbounds %struct.lua_TValue* %2051, i32 0, i32 0, !dbg !2711
  %2053 = bitcast %union.Value* %2052 to i32*, !dbg !2711
  store i32 %2050, i32* %2053, align 4, !dbg !2711
  %2054 = load %struct.lua_TValue** %io105, align 4, !dbg !2711
  %2055 = getelementptr inbounds %struct.lua_TValue* %2054, i32 0, i32 1, !dbg !2711
  store i32 1, i32* %2055, align 4, !dbg !2711
  br label %3454, !dbg !2712

; <label>:2056                                    ; preds = %51
  %2057 = load %struct.lua_State** %1, align 4, !dbg !2713
  %2058 = load %struct.lua_TValue** %ra, align 4, !dbg !2713
  %2059 = load %struct.lua_TValue** %base, align 4, !dbg !2713
  %2060 = load i32* %i, align 4, !dbg !2713
  %2061 = lshr i32 %2060, 23, !dbg !2713
  %2062 = and i32 %2061, 511, !dbg !2713
  %2063 = getelementptr inbounds %struct.lua_TValue* %2059, i32 %2062, !dbg !2713
  call void @luaV_objlen(%struct.lua_State* %2057, %struct.lua_TValue* %2058, %struct.lua_TValue* %2063), !dbg !2713
  %2064 = load %struct.CallInfo** %ci, align 4, !dbg !2717
  %2065 = getelementptr inbounds %struct.CallInfo* %2064, i32 0, i32 4, !dbg !2717
  %2066 = bitcast %union.anon* %2065 to %struct.anon*, !dbg !2717
  %2067 = getelementptr inbounds %struct.anon* %2066, i32 0, i32 0, !dbg !2717
  %2068 = load %struct.lua_TValue** %2067, align 4, !dbg !2717
  store %struct.lua_TValue* %2068, %struct.lua_TValue** %base, align 4, !dbg !2717
  br label %3454, !dbg !2718

; <label>:2069                                    ; preds = %51
  call void @llvm.dbg.declare(metadata !{i32* %b106}, metadata !2719), !dbg !2721
  %2070 = load i32* %i, align 4, !dbg !2722
  %2071 = lshr i32 %2070, 23, !dbg !2722
  %2072 = and i32 %2071, 511, !dbg !2722
  store i32 %2072, i32* %b106, align 4, !dbg !2722
  call void @llvm.dbg.declare(metadata !{i32* %c107}, metadata !2723), !dbg !2724
  %2073 = load i32* %i, align 4, !dbg !2725
  %2074 = lshr i32 %2073, 14, !dbg !2725
  %2075 = and i32 %2074, 511, !dbg !2725
  store i32 %2075, i32* %c107, align 4, !dbg !2725
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %rb108}, metadata !2726), !dbg !2727
  %2076 = load %struct.lua_TValue** %base, align 4, !dbg !2728
  %2077 = load i32* %c107, align 4, !dbg !2728
  %2078 = getelementptr inbounds %struct.lua_TValue* %2076, i32 %2077, !dbg !2728
  %2079 = getelementptr inbounds %struct.lua_TValue* %2078, i32 1, !dbg !2728
  %2080 = load %struct.lua_State** %1, align 4, !dbg !2728
  %2081 = getelementptr inbounds %struct.lua_State* %2080, i32 0, i32 5, !dbg !2728
  store %struct.lua_TValue* %2079, %struct.lua_TValue** %2081, align 4, !dbg !2728
  %2082 = load %struct.lua_State** %1, align 4, !dbg !2729
  %2083 = load i32* %c107, align 4, !dbg !2729
  %2084 = load i32* %b106, align 4, !dbg !2729
  %2085 = sub nsw i32 %2083, %2084, !dbg !2729
  %2086 = add nsw i32 %2085, 1, !dbg !2729
  call void @luaV_concat(%struct.lua_State* %2082, i32 %2086), !dbg !2729
  %2087 = load %struct.CallInfo** %ci, align 4, !dbg !2732
  %2088 = getelementptr inbounds %struct.CallInfo* %2087, i32 0, i32 4, !dbg !2732
  %2089 = bitcast %union.anon* %2088 to %struct.anon*, !dbg !2732
  %2090 = getelementptr inbounds %struct.anon* %2089, i32 0, i32 0, !dbg !2732
  %2091 = load %struct.lua_TValue** %2090, align 4, !dbg !2732
  store %struct.lua_TValue* %2091, %struct.lua_TValue** %base, align 4, !dbg !2732
  %2092 = load %struct.lua_TValue** %base, align 4, !dbg !2733
  %2093 = load i32* %i, align 4, !dbg !2733
  %2094 = lshr i32 %2093, 6, !dbg !2733
  %2095 = and i32 %2094, 255, !dbg !2733
  %2096 = getelementptr inbounds %struct.lua_TValue* %2092, i32 %2095, !dbg !2733
  store %struct.lua_TValue* %2096, %struct.lua_TValue** %ra, align 4, !dbg !2733
  %2097 = load %struct.lua_TValue** %base, align 4, !dbg !2734
  %2098 = load i32* %b106, align 4, !dbg !2734
  %2099 = getelementptr inbounds %struct.lua_TValue* %2097, i32 %2098, !dbg !2734
  store %struct.lua_TValue* %2099, %struct.lua_TValue** %rb108, align 4, !dbg !2734
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %io1109}, metadata !2735), !dbg !2737
  %2100 = load %struct.lua_TValue** %ra, align 4, !dbg !2737
  store %struct.lua_TValue* %2100, %struct.lua_TValue** %io1109, align 4, !dbg !2737
  %2101 = load %struct.lua_TValue** %io1109, align 4, !dbg !2737
  %2102 = load %struct.lua_TValue** %rb108, align 4, !dbg !2737
  %2103 = bitcast %struct.lua_TValue* %2101 to i8*, !dbg !2737
  %2104 = bitcast %struct.lua_TValue* %2102 to i8*, !dbg !2737
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %2103, i8* %2104, i32 16, i32 8, i1 false), !dbg !2737
  %2105 = load %struct.lua_State** %1, align 4, !dbg !2737
  %2106 = load %struct.lua_State** %1, align 4, !dbg !2738
  %2107 = getelementptr inbounds %struct.lua_State* %2106, i32 0, i32 6, !dbg !2738
  %2108 = load %struct.global_State** %2107, align 4, !dbg !2738
  %2109 = getelementptr inbounds %struct.global_State* %2108, i32 0, i32 3, !dbg !2738
  %2110 = load i32* %2109, align 4, !dbg !2738
  %2111 = icmp sgt i32 %2110, 0, !dbg !2738
  br i1 %2111, label %2112, label %2136, !dbg !2738

; <label>:2112                                    ; preds = %2069
  %2113 = load %struct.lua_TValue** %ra, align 4, !dbg !2742
  %2114 = load %struct.lua_TValue** %rb108, align 4, !dbg !2742
  %2115 = icmp uge %struct.lua_TValue* %2113, %2114, !dbg !2742
  br i1 %2115, label %2116, label %2119, !dbg !2742

; <label>:2116                                    ; preds = %2112
  %2117 = load %struct.lua_TValue** %ra, align 4, !dbg !2745
  %2118 = getelementptr inbounds %struct.lua_TValue* %2117, i32 1, !dbg !2745
  br label %2121, !dbg !2745

; <label>:2119                                    ; preds = %2112
  %2120 = load %struct.lua_TValue** %rb108, align 4, !dbg !2747
  br label %2121, !dbg !2747

; <label>:2121                                    ; preds = %2119, %2116
  %2122 = phi %struct.lua_TValue* [ %2118, %2116 ], [ %2120, %2119 ], !dbg !2749
  %2123 = load %struct.lua_State** %1, align 4, !dbg !2750
  %2124 = getelementptr inbounds %struct.lua_State* %2123, i32 0, i32 5, !dbg !2750
  store %struct.lua_TValue* %2122, %struct.lua_TValue** %2124, align 4, !dbg !2750
  %2125 = load %struct.lua_State** %1, align 4, !dbg !2750
  call void @luaC_step(%struct.lua_State* %2125), !dbg !2750
  %2126 = load %struct.CallInfo** %ci, align 4, !dbg !2753
  %2127 = getelementptr inbounds %struct.CallInfo* %2126, i32 0, i32 1, !dbg !2753
  %2128 = load %struct.lua_TValue** %2127, align 4, !dbg !2753
  %2129 = load %struct.lua_State** %1, align 4, !dbg !2753
  %2130 = getelementptr inbounds %struct.lua_State* %2129, i32 0, i32 5, !dbg !2753
  store %struct.lua_TValue* %2128, %struct.lua_TValue** %2130, align 4, !dbg !2753
  %2131 = load %struct.CallInfo** %ci, align 4, !dbg !2756
  %2132 = getelementptr inbounds %struct.CallInfo* %2131, i32 0, i32 4, !dbg !2756
  %2133 = bitcast %union.anon* %2132 to %struct.anon*, !dbg !2756
  %2134 = getelementptr inbounds %struct.anon* %2133, i32 0, i32 0, !dbg !2756
  %2135 = load %struct.lua_TValue** %2134, align 4, !dbg !2756
  store %struct.lua_TValue* %2135, %struct.lua_TValue** %base, align 4, !dbg !2756
  br label %2136, !dbg !2749

; <label>:2136                                    ; preds = %2121, %2069
  %2137 = load %struct.CallInfo** %ci, align 4, !dbg !2757
  %2138 = getelementptr inbounds %struct.CallInfo* %2137, i32 0, i32 1, !dbg !2757
  %2139 = load %struct.lua_TValue** %2138, align 4, !dbg !2757
  %2140 = load %struct.lua_State** %1, align 4, !dbg !2757
  %2141 = getelementptr inbounds %struct.lua_State* %2140, i32 0, i32 5, !dbg !2757
  store %struct.lua_TValue* %2139, %struct.lua_TValue** %2141, align 4, !dbg !2757
  br label %3454, !dbg !2758

; <label>:2142                                    ; preds = %51
  call void @llvm.dbg.declare(metadata !{i32* %a}, metadata !2759), !dbg !2762
  %2143 = load i32* %i, align 4, !dbg !2762
  %2144 = lshr i32 %2143, 6, !dbg !2762
  %2145 = and i32 %2144, 255, !dbg !2762
  store i32 %2145, i32* %a, align 4, !dbg !2762
  %2146 = load i32* %a, align 4, !dbg !2763
  %2147 = icmp ne i32 %2146, 0, !dbg !2763
  br i1 %2147, label %2148, label %2158, !dbg !2763

; <label>:2148                                    ; preds = %2142
  %2149 = load %struct.lua_State** %1, align 4, !dbg !2765
  %2150 = load %struct.CallInfo** %ci, align 4, !dbg !2765
  %2151 = getelementptr inbounds %struct.CallInfo* %2150, i32 0, i32 4, !dbg !2765
  %2152 = bitcast %union.anon* %2151 to %struct.anon*, !dbg !2765
  %2153 = getelementptr inbounds %struct.anon* %2152, i32 0, i32 0, !dbg !2765
  %2154 = load %struct.lua_TValue** %2153, align 4, !dbg !2765
  %2155 = load i32* %a, align 4, !dbg !2765
  %2156 = getelementptr inbounds %struct.lua_TValue* %2154, i32 %2155, !dbg !2765
  %2157 = getelementptr inbounds %struct.lua_TValue* %2156, i32 -1, !dbg !2765
  call void @luaF_close(%struct.lua_State* %2149, %struct.lua_TValue* %2157), !dbg !2765
  br label %2158, !dbg !2765

; <label>:2158                                    ; preds = %2148, %2142
  %2159 = load i32* %i, align 4, !dbg !2767
  %2160 = lshr i32 %2159, 14, !dbg !2767
  %2161 = and i32 %2160, 262143, !dbg !2767
  %2162 = sub nsw i32 %2161, 131071, !dbg !2767
  %2163 = add nsw i32 %2162, 0, !dbg !2767
  %2164 = load %struct.CallInfo** %ci, align 4, !dbg !2767
  %2165 = getelementptr inbounds %struct.CallInfo* %2164, i32 0, i32 4, !dbg !2767
  %2166 = bitcast %union.anon* %2165 to %struct.anon*, !dbg !2767
  %2167 = getelementptr inbounds %struct.anon* %2166, i32 0, i32 1, !dbg !2767
  %2168 = load i32** %2167, align 4, !dbg !2767
  %2169 = getelementptr inbounds i32* %2168, i32 %2163, !dbg !2767
  store i32* %2169, i32** %2167, align 4, !dbg !2767
  br label %3454, !dbg !2770

; <label>:2170                                    ; preds = %51
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %rb110}, metadata !2771), !dbg !2773
  %2171 = load i32* %i, align 4, !dbg !2774
  %2172 = lshr i32 %2171, 23, !dbg !2774
  %2173 = and i32 %2172, 511, !dbg !2774
  %2174 = and i32 %2173, 256, !dbg !2774
  %2175 = icmp ne i32 %2174, 0, !dbg !2774
  br i1 %2175, label %2176, label %2183, !dbg !2774

; <label>:2176                                    ; preds = %2170
  %2177 = load %struct.lua_TValue** %k, align 4, !dbg !2775
  %2178 = load i32* %i, align 4, !dbg !2775
  %2179 = lshr i32 %2178, 23, !dbg !2775
  %2180 = and i32 %2179, 511, !dbg !2775
  %2181 = and i32 %2180, -257, !dbg !2775
  %2182 = getelementptr inbounds %struct.lua_TValue* %2177, i32 %2181, !dbg !2775
  br label %2189, !dbg !2775

; <label>:2183                                    ; preds = %2170
  %2184 = load %struct.lua_TValue** %base, align 4, !dbg !2777
  %2185 = load i32* %i, align 4, !dbg !2777
  %2186 = lshr i32 %2185, 23, !dbg !2777
  %2187 = and i32 %2186, 511, !dbg !2777
  %2188 = getelementptr inbounds %struct.lua_TValue* %2184, i32 %2187, !dbg !2777
  br label %2189, !dbg !2777

; <label>:2189                                    ; preds = %2183, %2176
  %2190 = phi %struct.lua_TValue* [ %2182, %2176 ], [ %2188, %2183 ], !dbg !2774
  store %struct.lua_TValue* %2190, %struct.lua_TValue** %rb110, align 4, !dbg !2779
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %rc111}, metadata !2782), !dbg !2783
  %2191 = load i32* %i, align 4, !dbg !2784
  %2192 = lshr i32 %2191, 14, !dbg !2784
  %2193 = and i32 %2192, 511, !dbg !2784
  %2194 = and i32 %2193, 256, !dbg !2784
  %2195 = icmp ne i32 %2194, 0, !dbg !2784
  br i1 %2195, label %2196, label %2203, !dbg !2784

; <label>:2196                                    ; preds = %2189
  %2197 = load %struct.lua_TValue** %k, align 4, !dbg !2785
  %2198 = load i32* %i, align 4, !dbg !2785
  %2199 = lshr i32 %2198, 14, !dbg !2785
  %2200 = and i32 %2199, 511, !dbg !2785
  %2201 = and i32 %2200, -257, !dbg !2785
  %2202 = getelementptr inbounds %struct.lua_TValue* %2197, i32 %2201, !dbg !2785
  br label %2209, !dbg !2785

; <label>:2203                                    ; preds = %2189
  %2204 = load %struct.lua_TValue** %base, align 4, !dbg !2787
  %2205 = load i32* %i, align 4, !dbg !2787
  %2206 = lshr i32 %2205, 14, !dbg !2787
  %2207 = and i32 %2206, 511, !dbg !2787
  %2208 = getelementptr inbounds %struct.lua_TValue* %2204, i32 %2207, !dbg !2787
  br label %2209, !dbg !2787

; <label>:2209                                    ; preds = %2203, %2196
  %2210 = phi %struct.lua_TValue* [ %2202, %2196 ], [ %2208, %2203 ], !dbg !2784
  store %struct.lua_TValue* %2210, %struct.lua_TValue** %rc111, align 4, !dbg !2789
  %2211 = load %struct.lua_State** %1, align 4, !dbg !2792
  %2212 = load %struct.lua_TValue** %rb110, align 4, !dbg !2792
  %2213 = load %struct.lua_TValue** %rc111, align 4, !dbg !2792
  %2214 = call i32 @luaV_equalobj(%struct.lua_State* %2211, %struct.lua_TValue* %2212, %struct.lua_TValue* %2213), !dbg !2792
  %2215 = load i32* %i, align 4, !dbg !2792
  %2216 = lshr i32 %2215, 6, !dbg !2792
  %2217 = and i32 %2216, 255, !dbg !2792
  %2218 = icmp ne i32 %2214, %2217, !dbg !2792
  br i1 %2218, label %2219, label %2226, !dbg !2792

; <label>:2219                                    ; preds = %2209
  %2220 = load %struct.CallInfo** %ci, align 4, !dbg !2796
  %2221 = getelementptr inbounds %struct.CallInfo* %2220, i32 0, i32 4, !dbg !2796
  %2222 = bitcast %union.anon* %2221 to %struct.anon*, !dbg !2796
  %2223 = getelementptr inbounds %struct.anon* %2222, i32 0, i32 1, !dbg !2796
  %2224 = load i32** %2223, align 4, !dbg !2796
  %2225 = getelementptr inbounds i32* %2224, i32 1, !dbg !2796
  store i32* %2225, i32** %2223, align 4, !dbg !2796
  br label %2260, !dbg !2796

; <label>:2226                                    ; preds = %2209
  %2227 = load %struct.CallInfo** %ci, align 4, !dbg !2798
  %2228 = getelementptr inbounds %struct.CallInfo* %2227, i32 0, i32 4, !dbg !2798
  %2229 = bitcast %union.anon* %2228 to %struct.anon*, !dbg !2798
  %2230 = getelementptr inbounds %struct.anon* %2229, i32 0, i32 1, !dbg !2798
  %2231 = load i32** %2230, align 4, !dbg !2798
  %2232 = load i32* %2231, align 4, !dbg !2798
  store i32 %2232, i32* %i, align 4, !dbg !2798
  call void @llvm.dbg.declare(metadata !{i32* %a112}, metadata !2801), !dbg !2803
  %2233 = load i32* %i, align 4, !dbg !2803
  %2234 = lshr i32 %2233, 6, !dbg !2803
  %2235 = and i32 %2234, 255, !dbg !2803
  store i32 %2235, i32* %a112, align 4, !dbg !2803
  %2236 = load i32* %a112, align 4, !dbg !2804
  %2237 = icmp ne i32 %2236, 0, !dbg !2804
  br i1 %2237, label %2238, label %2248, !dbg !2804

; <label>:2238                                    ; preds = %2226
  %2239 = load %struct.lua_State** %1, align 4, !dbg !2806
  %2240 = load %struct.CallInfo** %ci, align 4, !dbg !2806
  %2241 = getelementptr inbounds %struct.CallInfo* %2240, i32 0, i32 4, !dbg !2806
  %2242 = bitcast %union.anon* %2241 to %struct.anon*, !dbg !2806
  %2243 = getelementptr inbounds %struct.anon* %2242, i32 0, i32 0, !dbg !2806
  %2244 = load %struct.lua_TValue** %2243, align 4, !dbg !2806
  %2245 = load i32* %a112, align 4, !dbg !2806
  %2246 = getelementptr inbounds %struct.lua_TValue* %2244, i32 %2245, !dbg !2806
  %2247 = getelementptr inbounds %struct.lua_TValue* %2246, i32 -1, !dbg !2806
  call void @luaF_close(%struct.lua_State* %2239, %struct.lua_TValue* %2247), !dbg !2806
  br label %2248, !dbg !2806

; <label>:2248                                    ; preds = %2238, %2226
  %2249 = load i32* %i, align 4, !dbg !2808
  %2250 = lshr i32 %2249, 14, !dbg !2808
  %2251 = and i32 %2250, 262143, !dbg !2808
  %2252 = sub nsw i32 %2251, 131071, !dbg !2808
  %2253 = add nsw i32 %2252, 1, !dbg !2808
  %2254 = load %struct.CallInfo** %ci, align 4, !dbg !2808
  %2255 = getelementptr inbounds %struct.CallInfo* %2254, i32 0, i32 4, !dbg !2808
  %2256 = bitcast %union.anon* %2255 to %struct.anon*, !dbg !2808
  %2257 = getelementptr inbounds %struct.anon* %2256, i32 0, i32 1, !dbg !2808
  %2258 = load i32** %2257, align 4, !dbg !2808
  %2259 = getelementptr inbounds i32* %2258, i32 %2253, !dbg !2808
  store i32* %2259, i32** %2257, align 4, !dbg !2808
  br label %2260

; <label>:2260                                    ; preds = %2248, %2219
  %2261 = load %struct.CallInfo** %ci, align 4, !dbg !2811
  %2262 = getelementptr inbounds %struct.CallInfo* %2261, i32 0, i32 4, !dbg !2811
  %2263 = bitcast %union.anon* %2262 to %struct.anon*, !dbg !2811
  %2264 = getelementptr inbounds %struct.anon* %2263, i32 0, i32 0, !dbg !2811
  %2265 = load %struct.lua_TValue** %2264, align 4, !dbg !2811
  store %struct.lua_TValue* %2265, %struct.lua_TValue** %base, align 4, !dbg !2811
  br label %3454, !dbg !2813

; <label>:2266                                    ; preds = %51
  %2267 = load %struct.lua_State** %1, align 4, !dbg !2814
  %2268 = load i32* %i, align 4, !dbg !2814
  %2269 = lshr i32 %2268, 23, !dbg !2814
  %2270 = and i32 %2269, 511, !dbg !2814
  %2271 = and i32 %2270, 256, !dbg !2814
  %2272 = icmp ne i32 %2271, 0, !dbg !2814
  br i1 %2272, label %2273, label %2280, !dbg !2814

; <label>:2273                                    ; preds = %2266
  %2274 = load %struct.lua_TValue** %k, align 4, !dbg !2819
  %2275 = load i32* %i, align 4, !dbg !2819
  %2276 = lshr i32 %2275, 23, !dbg !2819
  %2277 = and i32 %2276, 511, !dbg !2819
  %2278 = and i32 %2277, -257, !dbg !2819
  %2279 = getelementptr inbounds %struct.lua_TValue* %2274, i32 %2278, !dbg !2819
  br label %2286, !dbg !2819

; <label>:2280                                    ; preds = %2266
  %2281 = load %struct.lua_TValue** %base, align 4, !dbg !2821
  %2282 = load i32* %i, align 4, !dbg !2821
  %2283 = lshr i32 %2282, 23, !dbg !2821
  %2284 = and i32 %2283, 511, !dbg !2821
  %2285 = getelementptr inbounds %struct.lua_TValue* %2281, i32 %2284, !dbg !2821
  br label %2286, !dbg !2821

; <label>:2286                                    ; preds = %2280, %2273
  %2287 = phi %struct.lua_TValue* [ %2279, %2273 ], [ %2285, %2280 ], !dbg !2814
  %2288 = load i32* %i, align 4, !dbg !2823
  %2289 = lshr i32 %2288, 14, !dbg !2823
  %2290 = and i32 %2289, 511, !dbg !2823
  %2291 = and i32 %2290, 256, !dbg !2823
  %2292 = icmp ne i32 %2291, 0, !dbg !2823
  br i1 %2292, label %2293, label %2300, !dbg !2823

; <label>:2293                                    ; preds = %2286
  %2294 = load %struct.lua_TValue** %k, align 4, !dbg !2826
  %2295 = load i32* %i, align 4, !dbg !2826
  %2296 = lshr i32 %2295, 14, !dbg !2826
  %2297 = and i32 %2296, 511, !dbg !2826
  %2298 = and i32 %2297, -257, !dbg !2826
  %2299 = getelementptr inbounds %struct.lua_TValue* %2294, i32 %2298, !dbg !2826
  br label %2306, !dbg !2826

; <label>:2300                                    ; preds = %2286
  %2301 = load %struct.lua_TValue** %base, align 4, !dbg !2828
  %2302 = load i32* %i, align 4, !dbg !2828
  %2303 = lshr i32 %2302, 14, !dbg !2828
  %2304 = and i32 %2303, 511, !dbg !2828
  %2305 = getelementptr inbounds %struct.lua_TValue* %2301, i32 %2304, !dbg !2828
  br label %2306, !dbg !2828

; <label>:2306                                    ; preds = %2300, %2293
  %2307 = phi %struct.lua_TValue* [ %2299, %2293 ], [ %2305, %2300 ], !dbg !2814
  %2308 = call i32 @luaV_lessthan(%struct.lua_State* %2267, %struct.lua_TValue* %2287, %struct.lua_TValue* %2307), !dbg !2830
  %2309 = load i32* %i, align 4, !dbg !2830
  %2310 = lshr i32 %2309, 6, !dbg !2830
  %2311 = and i32 %2310, 255, !dbg !2830
  %2312 = icmp ne i32 %2308, %2311, !dbg !2830
  br i1 %2312, label %2313, label %2320, !dbg !2830

; <label>:2313                                    ; preds = %2306
  %2314 = load %struct.CallInfo** %ci, align 4, !dbg !2833
  %2315 = getelementptr inbounds %struct.CallInfo* %2314, i32 0, i32 4, !dbg !2833
  %2316 = bitcast %union.anon* %2315 to %struct.anon*, !dbg !2833
  %2317 = getelementptr inbounds %struct.anon* %2316, i32 0, i32 1, !dbg !2833
  %2318 = load i32** %2317, align 4, !dbg !2833
  %2319 = getelementptr inbounds i32* %2318, i32 1, !dbg !2833
  store i32* %2319, i32** %2317, align 4, !dbg !2833
  br label %2354, !dbg !2833

; <label>:2320                                    ; preds = %2306
  %2321 = load %struct.CallInfo** %ci, align 4, !dbg !2835
  %2322 = getelementptr inbounds %struct.CallInfo* %2321, i32 0, i32 4, !dbg !2835
  %2323 = bitcast %union.anon* %2322 to %struct.anon*, !dbg !2835
  %2324 = getelementptr inbounds %struct.anon* %2323, i32 0, i32 1, !dbg !2835
  %2325 = load i32** %2324, align 4, !dbg !2835
  %2326 = load i32* %2325, align 4, !dbg !2835
  store i32 %2326, i32* %i, align 4, !dbg !2835
  call void @llvm.dbg.declare(metadata !{i32* %a113}, metadata !2838), !dbg !2840
  %2327 = load i32* %i, align 4, !dbg !2840
  %2328 = lshr i32 %2327, 6, !dbg !2840
  %2329 = and i32 %2328, 255, !dbg !2840
  store i32 %2329, i32* %a113, align 4, !dbg !2840
  %2330 = load i32* %a113, align 4, !dbg !2841
  %2331 = icmp ne i32 %2330, 0, !dbg !2841
  br i1 %2331, label %2332, label %2342, !dbg !2841

; <label>:2332                                    ; preds = %2320
  %2333 = load %struct.lua_State** %1, align 4, !dbg !2843
  %2334 = load %struct.CallInfo** %ci, align 4, !dbg !2843
  %2335 = getelementptr inbounds %struct.CallInfo* %2334, i32 0, i32 4, !dbg !2843
  %2336 = bitcast %union.anon* %2335 to %struct.anon*, !dbg !2843
  %2337 = getelementptr inbounds %struct.anon* %2336, i32 0, i32 0, !dbg !2843
  %2338 = load %struct.lua_TValue** %2337, align 4, !dbg !2843
  %2339 = load i32* %a113, align 4, !dbg !2843
  %2340 = getelementptr inbounds %struct.lua_TValue* %2338, i32 %2339, !dbg !2843
  %2341 = getelementptr inbounds %struct.lua_TValue* %2340, i32 -1, !dbg !2843
  call void @luaF_close(%struct.lua_State* %2333, %struct.lua_TValue* %2341), !dbg !2843
  br label %2342, !dbg !2843

; <label>:2342                                    ; preds = %2332, %2320
  %2343 = load i32* %i, align 4, !dbg !2845
  %2344 = lshr i32 %2343, 14, !dbg !2845
  %2345 = and i32 %2344, 262143, !dbg !2845
  %2346 = sub nsw i32 %2345, 131071, !dbg !2845
  %2347 = add nsw i32 %2346, 1, !dbg !2845
  %2348 = load %struct.CallInfo** %ci, align 4, !dbg !2845
  %2349 = getelementptr inbounds %struct.CallInfo* %2348, i32 0, i32 4, !dbg !2845
  %2350 = bitcast %union.anon* %2349 to %struct.anon*, !dbg !2845
  %2351 = getelementptr inbounds %struct.anon* %2350, i32 0, i32 1, !dbg !2845
  %2352 = load i32** %2351, align 4, !dbg !2845
  %2353 = getelementptr inbounds i32* %2352, i32 %2347, !dbg !2845
  store i32* %2353, i32** %2351, align 4, !dbg !2845
  br label %2354

; <label>:2354                                    ; preds = %2342, %2313
  %2355 = load %struct.CallInfo** %ci, align 4, !dbg !2848
  %2356 = getelementptr inbounds %struct.CallInfo* %2355, i32 0, i32 4, !dbg !2848
  %2357 = bitcast %union.anon* %2356 to %struct.anon*, !dbg !2848
  %2358 = getelementptr inbounds %struct.anon* %2357, i32 0, i32 0, !dbg !2848
  %2359 = load %struct.lua_TValue** %2358, align 4, !dbg !2848
  store %struct.lua_TValue* %2359, %struct.lua_TValue** %base, align 4, !dbg !2848
  br label %3454, !dbg !2850

; <label>:2360                                    ; preds = %51
  %2361 = load %struct.lua_State** %1, align 4, !dbg !2851
  %2362 = load i32* %i, align 4, !dbg !2851
  %2363 = lshr i32 %2362, 23, !dbg !2851
  %2364 = and i32 %2363, 511, !dbg !2851
  %2365 = and i32 %2364, 256, !dbg !2851
  %2366 = icmp ne i32 %2365, 0, !dbg !2851
  br i1 %2366, label %2367, label %2374, !dbg !2851

; <label>:2367                                    ; preds = %2360
  %2368 = load %struct.lua_TValue** %k, align 4, !dbg !2856
  %2369 = load i32* %i, align 4, !dbg !2856
  %2370 = lshr i32 %2369, 23, !dbg !2856
  %2371 = and i32 %2370, 511, !dbg !2856
  %2372 = and i32 %2371, -257, !dbg !2856
  %2373 = getelementptr inbounds %struct.lua_TValue* %2368, i32 %2372, !dbg !2856
  br label %2380, !dbg !2856

; <label>:2374                                    ; preds = %2360
  %2375 = load %struct.lua_TValue** %base, align 4, !dbg !2858
  %2376 = load i32* %i, align 4, !dbg !2858
  %2377 = lshr i32 %2376, 23, !dbg !2858
  %2378 = and i32 %2377, 511, !dbg !2858
  %2379 = getelementptr inbounds %struct.lua_TValue* %2375, i32 %2378, !dbg !2858
  br label %2380, !dbg !2858

; <label>:2380                                    ; preds = %2374, %2367
  %2381 = phi %struct.lua_TValue* [ %2373, %2367 ], [ %2379, %2374 ], !dbg !2851
  %2382 = load i32* %i, align 4, !dbg !2860
  %2383 = lshr i32 %2382, 14, !dbg !2860
  %2384 = and i32 %2383, 511, !dbg !2860
  %2385 = and i32 %2384, 256, !dbg !2860
  %2386 = icmp ne i32 %2385, 0, !dbg !2860
  br i1 %2386, label %2387, label %2394, !dbg !2860

; <label>:2387                                    ; preds = %2380
  %2388 = load %struct.lua_TValue** %k, align 4, !dbg !2863
  %2389 = load i32* %i, align 4, !dbg !2863
  %2390 = lshr i32 %2389, 14, !dbg !2863
  %2391 = and i32 %2390, 511, !dbg !2863
  %2392 = and i32 %2391, -257, !dbg !2863
  %2393 = getelementptr inbounds %struct.lua_TValue* %2388, i32 %2392, !dbg !2863
  br label %2400, !dbg !2863

; <label>:2394                                    ; preds = %2380
  %2395 = load %struct.lua_TValue** %base, align 4, !dbg !2865
  %2396 = load i32* %i, align 4, !dbg !2865
  %2397 = lshr i32 %2396, 14, !dbg !2865
  %2398 = and i32 %2397, 511, !dbg !2865
  %2399 = getelementptr inbounds %struct.lua_TValue* %2395, i32 %2398, !dbg !2865
  br label %2400, !dbg !2865

; <label>:2400                                    ; preds = %2394, %2387
  %2401 = phi %struct.lua_TValue* [ %2393, %2387 ], [ %2399, %2394 ], !dbg !2851
  %2402 = call i32 @luaV_lessequal(%struct.lua_State* %2361, %struct.lua_TValue* %2381, %struct.lua_TValue* %2401), !dbg !2867
  %2403 = load i32* %i, align 4, !dbg !2867
  %2404 = lshr i32 %2403, 6, !dbg !2867
  %2405 = and i32 %2404, 255, !dbg !2867
  %2406 = icmp ne i32 %2402, %2405, !dbg !2867
  br i1 %2406, label %2407, label %2414, !dbg !2867

; <label>:2407                                    ; preds = %2400
  %2408 = load %struct.CallInfo** %ci, align 4, !dbg !2870
  %2409 = getelementptr inbounds %struct.CallInfo* %2408, i32 0, i32 4, !dbg !2870
  %2410 = bitcast %union.anon* %2409 to %struct.anon*, !dbg !2870
  %2411 = getelementptr inbounds %struct.anon* %2410, i32 0, i32 1, !dbg !2870
  %2412 = load i32** %2411, align 4, !dbg !2870
  %2413 = getelementptr inbounds i32* %2412, i32 1, !dbg !2870
  store i32* %2413, i32** %2411, align 4, !dbg !2870
  br label %2448, !dbg !2870

; <label>:2414                                    ; preds = %2400
  %2415 = load %struct.CallInfo** %ci, align 4, !dbg !2872
  %2416 = getelementptr inbounds %struct.CallInfo* %2415, i32 0, i32 4, !dbg !2872
  %2417 = bitcast %union.anon* %2416 to %struct.anon*, !dbg !2872
  %2418 = getelementptr inbounds %struct.anon* %2417, i32 0, i32 1, !dbg !2872
  %2419 = load i32** %2418, align 4, !dbg !2872
  %2420 = load i32* %2419, align 4, !dbg !2872
  store i32 %2420, i32* %i, align 4, !dbg !2872
  call void @llvm.dbg.declare(metadata !{i32* %a114}, metadata !2875), !dbg !2877
  %2421 = load i32* %i, align 4, !dbg !2877
  %2422 = lshr i32 %2421, 6, !dbg !2877
  %2423 = and i32 %2422, 255, !dbg !2877
  store i32 %2423, i32* %a114, align 4, !dbg !2877
  %2424 = load i32* %a114, align 4, !dbg !2878
  %2425 = icmp ne i32 %2424, 0, !dbg !2878
  br i1 %2425, label %2426, label %2436, !dbg !2878

; <label>:2426                                    ; preds = %2414
  %2427 = load %struct.lua_State** %1, align 4, !dbg !2880
  %2428 = load %struct.CallInfo** %ci, align 4, !dbg !2880
  %2429 = getelementptr inbounds %struct.CallInfo* %2428, i32 0, i32 4, !dbg !2880
  %2430 = bitcast %union.anon* %2429 to %struct.anon*, !dbg !2880
  %2431 = getelementptr inbounds %struct.anon* %2430, i32 0, i32 0, !dbg !2880
  %2432 = load %struct.lua_TValue** %2431, align 4, !dbg !2880
  %2433 = load i32* %a114, align 4, !dbg !2880
  %2434 = getelementptr inbounds %struct.lua_TValue* %2432, i32 %2433, !dbg !2880
  %2435 = getelementptr inbounds %struct.lua_TValue* %2434, i32 -1, !dbg !2880
  call void @luaF_close(%struct.lua_State* %2427, %struct.lua_TValue* %2435), !dbg !2880
  br label %2436, !dbg !2880

; <label>:2436                                    ; preds = %2426, %2414
  %2437 = load i32* %i, align 4, !dbg !2882
  %2438 = lshr i32 %2437, 14, !dbg !2882
  %2439 = and i32 %2438, 262143, !dbg !2882
  %2440 = sub nsw i32 %2439, 131071, !dbg !2882
  %2441 = add nsw i32 %2440, 1, !dbg !2882
  %2442 = load %struct.CallInfo** %ci, align 4, !dbg !2882
  %2443 = getelementptr inbounds %struct.CallInfo* %2442, i32 0, i32 4, !dbg !2882
  %2444 = bitcast %union.anon* %2443 to %struct.anon*, !dbg !2882
  %2445 = getelementptr inbounds %struct.anon* %2444, i32 0, i32 1, !dbg !2882
  %2446 = load i32** %2445, align 4, !dbg !2882
  %2447 = getelementptr inbounds i32* %2446, i32 %2441, !dbg !2882
  store i32* %2447, i32** %2445, align 4, !dbg !2882
  br label %2448

; <label>:2448                                    ; preds = %2436, %2407
  %2449 = load %struct.CallInfo** %ci, align 4, !dbg !2885
  %2450 = getelementptr inbounds %struct.CallInfo* %2449, i32 0, i32 4, !dbg !2885
  %2451 = bitcast %union.anon* %2450 to %struct.anon*, !dbg !2885
  %2452 = getelementptr inbounds %struct.anon* %2451, i32 0, i32 0, !dbg !2885
  %2453 = load %struct.lua_TValue** %2452, align 4, !dbg !2885
  store %struct.lua_TValue* %2453, %struct.lua_TValue** %base, align 4, !dbg !2885
  br label %3454, !dbg !2887

; <label>:2454                                    ; preds = %51
  %2455 = load i32* %i, align 4, !dbg !2888
  %2456 = lshr i32 %2455, 14, !dbg !2888
  %2457 = and i32 %2456, 511, !dbg !2888
  %2458 = icmp ne i32 %2457, 0, !dbg !2888
  br i1 %2458, label %2459, label %2475, !dbg !2888

; <label>:2459                                    ; preds = %2454
  %2460 = load %struct.lua_TValue** %ra, align 4, !dbg !2891
  %2461 = getelementptr inbounds %struct.lua_TValue* %2460, i32 0, i32 1, !dbg !2891
  %2462 = load i32* %2461, align 4, !dbg !2891
  %2463 = icmp eq i32 %2462, 0, !dbg !2891
  br i1 %2463, label %2491, label %2464, !dbg !2891

; <label>:2464                                    ; preds = %2459
  %2465 = load %struct.lua_TValue** %ra, align 4, !dbg !2893
  %2466 = getelementptr inbounds %struct.lua_TValue* %2465, i32 0, i32 1, !dbg !2893
  %2467 = load i32* %2466, align 4, !dbg !2893
  %2468 = icmp eq i32 %2467, 1, !dbg !2893
  br i1 %2468, label %2469, label %2498, !dbg !2893

; <label>:2469                                    ; preds = %2464
  %2470 = load %struct.lua_TValue** %ra, align 4, !dbg !2895
  %2471 = getelementptr inbounds %struct.lua_TValue* %2470, i32 0, i32 0, !dbg !2895
  %2472 = bitcast %union.Value* %2471 to i32*, !dbg !2895
  %2473 = load i32* %2472, align 4, !dbg !2895
  %2474 = icmp eq i32 %2473, 0, !dbg !2895
  br i1 %2474, label %2491, label %2498, !dbg !2895

; <label>:2475                                    ; preds = %2454
  %2476 = load %struct.lua_TValue** %ra, align 4, !dbg !2897
  %2477 = getelementptr inbounds %struct.lua_TValue* %2476, i32 0, i32 1, !dbg !2897
  %2478 = load i32* %2477, align 4, !dbg !2897
  %2479 = icmp eq i32 %2478, 0, !dbg !2897
  br i1 %2479, label %2498, label %2480, !dbg !2897

; <label>:2480                                    ; preds = %2475
  %2481 = load %struct.lua_TValue** %ra, align 4, !dbg !2899
  %2482 = getelementptr inbounds %struct.lua_TValue* %2481, i32 0, i32 1, !dbg !2899
  %2483 = load i32* %2482, align 4, !dbg !2899
  %2484 = icmp eq i32 %2483, 1, !dbg !2899
  br i1 %2484, label %2485, label %2491, !dbg !2899

; <label>:2485                                    ; preds = %2480
  %2486 = load %struct.lua_TValue** %ra, align 4, !dbg !2901
  %2487 = getelementptr inbounds %struct.lua_TValue* %2486, i32 0, i32 0, !dbg !2901
  %2488 = bitcast %union.Value* %2487 to i32*, !dbg !2901
  %2489 = load i32* %2488, align 4, !dbg !2901
  %2490 = icmp eq i32 %2489, 0, !dbg !2901
  br i1 %2490, label %2498, label %2491, !dbg !2901

; <label>:2491                                    ; preds = %2485, %2480, %2469, %2459
  %2492 = load %struct.CallInfo** %ci, align 4, !dbg !2903
  %2493 = getelementptr inbounds %struct.CallInfo* %2492, i32 0, i32 4, !dbg !2903
  %2494 = bitcast %union.anon* %2493 to %struct.anon*, !dbg !2903
  %2495 = getelementptr inbounds %struct.anon* %2494, i32 0, i32 1, !dbg !2903
  %2496 = load i32** %2495, align 4, !dbg !2903
  %2497 = getelementptr inbounds i32* %2496, i32 1, !dbg !2903
  store i32* %2497, i32** %2495, align 4, !dbg !2903
  br label %2532, !dbg !2903

; <label>:2498                                    ; preds = %2485, %2475, %2469, %2464
  %2499 = load %struct.CallInfo** %ci, align 4, !dbg !2904
  %2500 = getelementptr inbounds %struct.CallInfo* %2499, i32 0, i32 4, !dbg !2904
  %2501 = bitcast %union.anon* %2500 to %struct.anon*, !dbg !2904
  %2502 = getelementptr inbounds %struct.anon* %2501, i32 0, i32 1, !dbg !2904
  %2503 = load i32** %2502, align 4, !dbg !2904
  %2504 = load i32* %2503, align 4, !dbg !2904
  store i32 %2504, i32* %i, align 4, !dbg !2904
  call void @llvm.dbg.declare(metadata !{i32* %a115}, metadata !2906), !dbg !2908
  %2505 = load i32* %i, align 4, !dbg !2908
  %2506 = lshr i32 %2505, 6, !dbg !2908
  %2507 = and i32 %2506, 255, !dbg !2908
  store i32 %2507, i32* %a115, align 4, !dbg !2908
  %2508 = load i32* %a115, align 4, !dbg !2909
  %2509 = icmp ne i32 %2508, 0, !dbg !2909
  br i1 %2509, label %2510, label %2520, !dbg !2909

; <label>:2510                                    ; preds = %2498
  %2511 = load %struct.lua_State** %1, align 4, !dbg !2911
  %2512 = load %struct.CallInfo** %ci, align 4, !dbg !2911
  %2513 = getelementptr inbounds %struct.CallInfo* %2512, i32 0, i32 4, !dbg !2911
  %2514 = bitcast %union.anon* %2513 to %struct.anon*, !dbg !2911
  %2515 = getelementptr inbounds %struct.anon* %2514, i32 0, i32 0, !dbg !2911
  %2516 = load %struct.lua_TValue** %2515, align 4, !dbg !2911
  %2517 = load i32* %a115, align 4, !dbg !2911
  %2518 = getelementptr inbounds %struct.lua_TValue* %2516, i32 %2517, !dbg !2911
  %2519 = getelementptr inbounds %struct.lua_TValue* %2518, i32 -1, !dbg !2911
  call void @luaF_close(%struct.lua_State* %2511, %struct.lua_TValue* %2519), !dbg !2911
  br label %2520, !dbg !2911

; <label>:2520                                    ; preds = %2510, %2498
  %2521 = load i32* %i, align 4, !dbg !2913
  %2522 = lshr i32 %2521, 14, !dbg !2913
  %2523 = and i32 %2522, 262143, !dbg !2913
  %2524 = sub nsw i32 %2523, 131071, !dbg !2913
  %2525 = add nsw i32 %2524, 1, !dbg !2913
  %2526 = load %struct.CallInfo** %ci, align 4, !dbg !2913
  %2527 = getelementptr inbounds %struct.CallInfo* %2526, i32 0, i32 4, !dbg !2913
  %2528 = bitcast %union.anon* %2527 to %struct.anon*, !dbg !2913
  %2529 = getelementptr inbounds %struct.anon* %2528, i32 0, i32 1, !dbg !2913
  %2530 = load i32** %2529, align 4, !dbg !2913
  %2531 = getelementptr inbounds i32* %2530, i32 %2525, !dbg !2913
  store i32* %2531, i32** %2529, align 4, !dbg !2913
  br label %2532

; <label>:2532                                    ; preds = %2520, %2491
  br label %3454, !dbg !2916

; <label>:2533                                    ; preds = %51
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %rb116}, metadata !2917), !dbg !2919
  %2534 = load %struct.lua_TValue** %base, align 4, !dbg !2920
  %2535 = load i32* %i, align 4, !dbg !2920
  %2536 = lshr i32 %2535, 23, !dbg !2920
  %2537 = and i32 %2536, 511, !dbg !2920
  %2538 = getelementptr inbounds %struct.lua_TValue* %2534, i32 %2537, !dbg !2920
  store %struct.lua_TValue* %2538, %struct.lua_TValue** %rb116, align 4, !dbg !2920
  %2539 = load i32* %i, align 4, !dbg !2921
  %2540 = lshr i32 %2539, 14, !dbg !2921
  %2541 = and i32 %2540, 511, !dbg !2921
  %2542 = icmp ne i32 %2541, 0, !dbg !2921
  br i1 %2542, label %2543, label %2559, !dbg !2921

; <label>:2543                                    ; preds = %2533
  %2544 = load %struct.lua_TValue** %rb116, align 4, !dbg !2923
  %2545 = getelementptr inbounds %struct.lua_TValue* %2544, i32 0, i32 1, !dbg !2923
  %2546 = load i32* %2545, align 4, !dbg !2923
  %2547 = icmp eq i32 %2546, 0, !dbg !2923
  br i1 %2547, label %2575, label %2548, !dbg !2923

; <label>:2548                                    ; preds = %2543
  %2549 = load %struct.lua_TValue** %rb116, align 4, !dbg !2925
  %2550 = getelementptr inbounds %struct.lua_TValue* %2549, i32 0, i32 1, !dbg !2925
  %2551 = load i32* %2550, align 4, !dbg !2925
  %2552 = icmp eq i32 %2551, 1, !dbg !2925
  br i1 %2552, label %2553, label %2582, !dbg !2925

; <label>:2553                                    ; preds = %2548
  %2554 = load %struct.lua_TValue** %rb116, align 4, !dbg !2927
  %2555 = getelementptr inbounds %struct.lua_TValue* %2554, i32 0, i32 0, !dbg !2927
  %2556 = bitcast %union.Value* %2555 to i32*, !dbg !2927
  %2557 = load i32* %2556, align 4, !dbg !2927
  %2558 = icmp eq i32 %2557, 0, !dbg !2927
  br i1 %2558, label %2575, label %2582, !dbg !2927

; <label>:2559                                    ; preds = %2533
  %2560 = load %struct.lua_TValue** %rb116, align 4, !dbg !2929
  %2561 = getelementptr inbounds %struct.lua_TValue* %2560, i32 0, i32 1, !dbg !2929
  %2562 = load i32* %2561, align 4, !dbg !2929
  %2563 = icmp eq i32 %2562, 0, !dbg !2929
  br i1 %2563, label %2582, label %2564, !dbg !2929

; <label>:2564                                    ; preds = %2559
  %2565 = load %struct.lua_TValue** %rb116, align 4, !dbg !2931
  %2566 = getelementptr inbounds %struct.lua_TValue* %2565, i32 0, i32 1, !dbg !2931
  %2567 = load i32* %2566, align 4, !dbg !2931
  %2568 = icmp eq i32 %2567, 1, !dbg !2931
  br i1 %2568, label %2569, label %2575, !dbg !2931

; <label>:2569                                    ; preds = %2564
  %2570 = load %struct.lua_TValue** %rb116, align 4, !dbg !2933
  %2571 = getelementptr inbounds %struct.lua_TValue* %2570, i32 0, i32 0, !dbg !2933
  %2572 = bitcast %union.Value* %2571 to i32*, !dbg !2933
  %2573 = load i32* %2572, align 4, !dbg !2933
  %2574 = icmp eq i32 %2573, 0, !dbg !2933
  br i1 %2574, label %2582, label %2575, !dbg !2933

; <label>:2575                                    ; preds = %2569, %2564, %2553, %2543
  %2576 = load %struct.CallInfo** %ci, align 4, !dbg !2935
  %2577 = getelementptr inbounds %struct.CallInfo* %2576, i32 0, i32 4, !dbg !2935
  %2578 = bitcast %union.anon* %2577 to %struct.anon*, !dbg !2935
  %2579 = getelementptr inbounds %struct.anon* %2578, i32 0, i32 1, !dbg !2935
  %2580 = load i32** %2579, align 4, !dbg !2935
  %2581 = getelementptr inbounds i32* %2580, i32 1, !dbg !2935
  store i32* %2581, i32** %2579, align 4, !dbg !2935
  br label %2622, !dbg !2935

; <label>:2582                                    ; preds = %2569, %2559, %2553, %2548
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %io1117}, metadata !2936), !dbg !2939
  %2583 = load %struct.lua_TValue** %ra, align 4, !dbg !2939
  store %struct.lua_TValue* %2583, %struct.lua_TValue** %io1117, align 4, !dbg !2939
  %2584 = load %struct.lua_TValue** %io1117, align 4, !dbg !2939
  %2585 = load %struct.lua_TValue** %rb116, align 4, !dbg !2939
  %2586 = bitcast %struct.lua_TValue* %2584 to i8*, !dbg !2939
  %2587 = bitcast %struct.lua_TValue* %2585 to i8*, !dbg !2939
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %2586, i8* %2587, i32 16, i32 8, i1 false), !dbg !2939
  %2588 = load %struct.lua_State** %1, align 4, !dbg !2939
  %2589 = load %struct.CallInfo** %ci, align 4, !dbg !2940
  %2590 = getelementptr inbounds %struct.CallInfo* %2589, i32 0, i32 4, !dbg !2940
  %2591 = bitcast %union.anon* %2590 to %struct.anon*, !dbg !2940
  %2592 = getelementptr inbounds %struct.anon* %2591, i32 0, i32 1, !dbg !2940
  %2593 = load i32** %2592, align 4, !dbg !2940
  %2594 = load i32* %2593, align 4, !dbg !2940
  store i32 %2594, i32* %i, align 4, !dbg !2940
  call void @llvm.dbg.declare(metadata !{i32* %a118}, metadata !2942), !dbg !2944
  %2595 = load i32* %i, align 4, !dbg !2944
  %2596 = lshr i32 %2595, 6, !dbg !2944
  %2597 = and i32 %2596, 255, !dbg !2944
  store i32 %2597, i32* %a118, align 4, !dbg !2944
  %2598 = load i32* %a118, align 4, !dbg !2945
  %2599 = icmp ne i32 %2598, 0, !dbg !2945
  br i1 %2599, label %2600, label %2610, !dbg !2945

; <label>:2600                                    ; preds = %2582
  %2601 = load %struct.lua_State** %1, align 4, !dbg !2947
  %2602 = load %struct.CallInfo** %ci, align 4, !dbg !2947
  %2603 = getelementptr inbounds %struct.CallInfo* %2602, i32 0, i32 4, !dbg !2947
  %2604 = bitcast %union.anon* %2603 to %struct.anon*, !dbg !2947
  %2605 = getelementptr inbounds %struct.anon* %2604, i32 0, i32 0, !dbg !2947
  %2606 = load %struct.lua_TValue** %2605, align 4, !dbg !2947
  %2607 = load i32* %a118, align 4, !dbg !2947
  %2608 = getelementptr inbounds %struct.lua_TValue* %2606, i32 %2607, !dbg !2947
  %2609 = getelementptr inbounds %struct.lua_TValue* %2608, i32 -1, !dbg !2947
  call void @luaF_close(%struct.lua_State* %2601, %struct.lua_TValue* %2609), !dbg !2947
  br label %2610, !dbg !2947

; <label>:2610                                    ; preds = %2600, %2582
  %2611 = load i32* %i, align 4, !dbg !2949
  %2612 = lshr i32 %2611, 14, !dbg !2949
  %2613 = and i32 %2612, 262143, !dbg !2949
  %2614 = sub nsw i32 %2613, 131071, !dbg !2949
  %2615 = add nsw i32 %2614, 1, !dbg !2949
  %2616 = load %struct.CallInfo** %ci, align 4, !dbg !2949
  %2617 = getelementptr inbounds %struct.CallInfo* %2616, i32 0, i32 4, !dbg !2949
  %2618 = bitcast %union.anon* %2617 to %struct.anon*, !dbg !2949
  %2619 = getelementptr inbounds %struct.anon* %2618, i32 0, i32 1, !dbg !2949
  %2620 = load i32** %2619, align 4, !dbg !2949
  %2621 = getelementptr inbounds i32* %2620, i32 %2615, !dbg !2949
  store i32* %2621, i32** %2619, align 4, !dbg !2949
  br label %2622

; <label>:2622                                    ; preds = %2610, %2575
  br label %3454, !dbg !2952

; <label>:2623                                    ; preds = %51
  call void @llvm.dbg.declare(metadata !{i32* %b119}, metadata !2953), !dbg !2955
  %2624 = load i32* %i, align 4, !dbg !2956
  %2625 = lshr i32 %2624, 23, !dbg !2956
  %2626 = and i32 %2625, 511, !dbg !2956
  store i32 %2626, i32* %b119, align 4, !dbg !2956
  call void @llvm.dbg.declare(metadata !{i32* %nresults}, metadata !2957), !dbg !2958
  %2627 = load i32* %i, align 4, !dbg !2959
  %2628 = lshr i32 %2627, 14, !dbg !2959
  %2629 = and i32 %2628, 511, !dbg !2959
  %2630 = sub nsw i32 %2629, 1, !dbg !2959
  store i32 %2630, i32* %nresults, align 4, !dbg !2959
  %2631 = load i32* %b119, align 4, !dbg !2960
  %2632 = icmp ne i32 %2631, 0, !dbg !2960
  br i1 %2632, label %2633, label %2639, !dbg !2960

; <label>:2633                                    ; preds = %2623
  %2634 = load %struct.lua_TValue** %ra, align 4, !dbg !2962
  %2635 = load i32* %b119, align 4, !dbg !2962
  %2636 = getelementptr inbounds %struct.lua_TValue* %2634, i32 %2635, !dbg !2962
  %2637 = load %struct.lua_State** %1, align 4, !dbg !2962
  %2638 = getelementptr inbounds %struct.lua_State* %2637, i32 0, i32 5, !dbg !2962
  store %struct.lua_TValue* %2636, %struct.lua_TValue** %2638, align 4, !dbg !2962
  br label %2639, !dbg !2962

; <label>:2639                                    ; preds = %2633, %2623
  %2640 = load %struct.lua_State** %1, align 4, !dbg !2964
  %2641 = load %struct.lua_TValue** %ra, align 4, !dbg !2964
  %2642 = load i32* %nresults, align 4, !dbg !2964
  %2643 = call i32 @luaD_precall(%struct.lua_State* %2640, %struct.lua_TValue* %2641, i32 %2642), !dbg !2964
  %2644 = icmp ne i32 %2643, 0, !dbg !2964
  br i1 %2644, label %2645, label %2660, !dbg !2964

; <label>:2645                                    ; preds = %2639
  %2646 = load i32* %nresults, align 4, !dbg !2966
  %2647 = icmp sge i32 %2646, 0, !dbg !2966
  br i1 %2647, label %2648, label %2654, !dbg !2966

; <label>:2648                                    ; preds = %2645
  %2649 = load %struct.CallInfo** %ci, align 4, !dbg !2969
  %2650 = getelementptr inbounds %struct.CallInfo* %2649, i32 0, i32 1, !dbg !2969
  %2651 = load %struct.lua_TValue** %2650, align 4, !dbg !2969
  %2652 = load %struct.lua_State** %1, align 4, !dbg !2969
  %2653 = getelementptr inbounds %struct.lua_State* %2652, i32 0, i32 5, !dbg !2969
  store %struct.lua_TValue* %2651, %struct.lua_TValue** %2653, align 4, !dbg !2969
  br label %2654, !dbg !2969

; <label>:2654                                    ; preds = %2648, %2645
  %2655 = load %struct.CallInfo** %ci, align 4, !dbg !2970
  %2656 = getelementptr inbounds %struct.CallInfo* %2655, i32 0, i32 4, !dbg !2970
  %2657 = bitcast %union.anon* %2656 to %struct.anon*, !dbg !2970
  %2658 = getelementptr inbounds %struct.anon* %2657, i32 0, i32 0, !dbg !2970
  %2659 = load %struct.lua_TValue** %2658, align 4, !dbg !2970
  store %struct.lua_TValue* %2659, %struct.lua_TValue** %base, align 4, !dbg !2970
  br label %2664, !dbg !2972

; <label>:2660                                    ; preds = %2639
  %2661 = load %struct.lua_State** %1, align 4, !dbg !2973
  %2662 = getelementptr inbounds %struct.lua_State* %2661, i32 0, i32 7, !dbg !2973
  %2663 = load %struct.CallInfo** %2662, align 4, !dbg !2973
  store %struct.CallInfo* %2663, %struct.CallInfo** %ci, align 4, !dbg !2973
  br label %11, !dbg !2975

; <label>:2664                                    ; preds = %2654
  br label %3454, !dbg !2976

; <label>:2665                                    ; preds = %51
  call void @llvm.dbg.declare(metadata !{i32* %b120}, metadata !2977), !dbg !2979
  %2666 = load i32* %i, align 4, !dbg !2980
  %2667 = lshr i32 %2666, 23, !dbg !2980
  %2668 = and i32 %2667, 511, !dbg !2980
  store i32 %2668, i32* %b120, align 4, !dbg !2980
  %2669 = load i32* %b120, align 4, !dbg !2981
  %2670 = icmp ne i32 %2669, 0, !dbg !2981
  br i1 %2670, label %2671, label %2677, !dbg !2981

; <label>:2671                                    ; preds = %2665
  %2672 = load %struct.lua_TValue** %ra, align 4, !dbg !2983
  %2673 = load i32* %b120, align 4, !dbg !2983
  %2674 = getelementptr inbounds %struct.lua_TValue* %2672, i32 %2673, !dbg !2983
  %2675 = load %struct.lua_State** %1, align 4, !dbg !2983
  %2676 = getelementptr inbounds %struct.lua_State* %2675, i32 0, i32 5, !dbg !2983
  store %struct.lua_TValue* %2674, %struct.lua_TValue** %2676, align 4, !dbg !2983
  br label %2677, !dbg !2983

; <label>:2677                                    ; preds = %2671, %2665
  %2678 = load %struct.lua_State** %1, align 4, !dbg !2985
  %2679 = load %struct.lua_TValue** %ra, align 4, !dbg !2985
  %2680 = call i32 @luaD_precall(%struct.lua_State* %2678, %struct.lua_TValue* %2679, i32 -1), !dbg !2985
  %2681 = icmp ne i32 %2680, 0, !dbg !2985
  br i1 %2681, label %2682, label %2688, !dbg !2985

; <label>:2682                                    ; preds = %2677
  %2683 = load %struct.CallInfo** %ci, align 4, !dbg !2987
  %2684 = getelementptr inbounds %struct.CallInfo* %2683, i32 0, i32 4, !dbg !2987
  %2685 = bitcast %union.anon* %2684 to %struct.anon*, !dbg !2987
  %2686 = getelementptr inbounds %struct.anon* %2685, i32 0, i32 0, !dbg !2987
  %2687 = load %struct.lua_TValue** %2686, align 4, !dbg !2987
  store %struct.lua_TValue* %2687, %struct.lua_TValue** %base, align 4, !dbg !2987
  br label %2802, !dbg !2990

; <label>:2688                                    ; preds = %2677
  call void @llvm.dbg.declare(metadata !{%struct.CallInfo** %nci}, metadata !2991), !dbg !2993
  %2689 = load %struct.lua_State** %1, align 4, !dbg !2994
  %2690 = getelementptr inbounds %struct.lua_State* %2689, i32 0, i32 7, !dbg !2994
  %2691 = load %struct.CallInfo** %2690, align 4, !dbg !2994
  store %struct.CallInfo* %2691, %struct.CallInfo** %nci, align 4, !dbg !2994
  call void @llvm.dbg.declare(metadata !{%struct.CallInfo** %oci}, metadata !2995), !dbg !2996
  %2692 = load %struct.CallInfo** %nci, align 4, !dbg !2997
  %2693 = getelementptr inbounds %struct.CallInfo* %2692, i32 0, i32 2, !dbg !2997
  %2694 = load %struct.CallInfo** %2693, align 4, !dbg !2997
  store %struct.CallInfo* %2694, %struct.CallInfo** %oci, align 4, !dbg !2997
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %nfunc}, metadata !2998), !dbg !2999
  %2695 = load %struct.CallInfo** %nci, align 4, !dbg !3000
  %2696 = getelementptr inbounds %struct.CallInfo* %2695, i32 0, i32 0, !dbg !3000
  %2697 = load %struct.lua_TValue** %2696, align 4, !dbg !3000
  store %struct.lua_TValue* %2697, %struct.lua_TValue** %nfunc, align 4, !dbg !3000
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %ofunc}, metadata !3001), !dbg !3002
  %2698 = load %struct.CallInfo** %oci, align 4, !dbg !3003
  %2699 = getelementptr inbounds %struct.CallInfo* %2698, i32 0, i32 0, !dbg !3003
  %2700 = load %struct.lua_TValue** %2699, align 4, !dbg !3003
  store %struct.lua_TValue* %2700, %struct.lua_TValue** %ofunc, align 4, !dbg !3003
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %lim}, metadata !3004), !dbg !3005
  %2701 = load %struct.CallInfo** %nci, align 4, !dbg !3006
  %2702 = getelementptr inbounds %struct.CallInfo* %2701, i32 0, i32 4, !dbg !3006
  %2703 = bitcast %union.anon* %2702 to %struct.anon*, !dbg !3006
  %2704 = getelementptr inbounds %struct.anon* %2703, i32 0, i32 0, !dbg !3006
  %2705 = load %struct.lua_TValue** %2704, align 4, !dbg !3006
  %2706 = load %struct.lua_TValue** %nfunc, align 4, !dbg !3006
  %2707 = getelementptr inbounds %struct.lua_TValue* %2706, i32 0, i32 0, !dbg !3006
  %2708 = bitcast %union.Value* %2707 to %struct.GCObject**, !dbg !3006
  %2709 = load %struct.GCObject** %2708, align 4, !dbg !3006
  %2710 = bitcast %struct.GCObject* %2709 to %union.GCUnion*, !dbg !3006
  %2711 = bitcast %union.GCUnion* %2710 to %union.Closure*, !dbg !3006
  %2712 = bitcast %union.Closure* %2711 to %struct.LClosure*, !dbg !3006
  %2713 = getelementptr inbounds %struct.LClosure* %2712, i32 0, i32 5, !dbg !3006
  %2714 = load %struct.Proto** %2713, align 4, !dbg !3006
  %2715 = getelementptr inbounds %struct.Proto* %2714, i32 0, i32 3, !dbg !3006
  %2716 = load i8* %2715, align 1, !dbg !3006
  %2717 = zext i8 %2716 to i32, !dbg !3006
  %2718 = getelementptr inbounds %struct.lua_TValue* %2705, i32 %2717, !dbg !3006
  store %struct.lua_TValue* %2718, %struct.lua_TValue** %lim, align 4, !dbg !3006
  call void @llvm.dbg.declare(metadata !{i32* %aux121}, metadata !3007), !dbg !3008
  %2719 = load %struct.LClosure** %cl, align 4, !dbg !3009
  %2720 = getelementptr inbounds %struct.LClosure* %2719, i32 0, i32 5, !dbg !3009
  %2721 = load %struct.Proto** %2720, align 4, !dbg !3009
  %2722 = getelementptr inbounds %struct.Proto* %2721, i32 0, i32 10, !dbg !3009
  %2723 = load i32* %2722, align 4, !dbg !3009
  %2724 = icmp sgt i32 %2723, 0, !dbg !3009
  br i1 %2724, label %2725, label %2732, !dbg !3009

; <label>:2725                                    ; preds = %2688
  %2726 = load %struct.lua_State** %1, align 4, !dbg !3011
  %2727 = load %struct.CallInfo** %oci, align 4, !dbg !3011
  %2728 = getelementptr inbounds %struct.CallInfo* %2727, i32 0, i32 4, !dbg !3011
  %2729 = bitcast %union.anon* %2728 to %struct.anon*, !dbg !3011
  %2730 = getelementptr inbounds %struct.anon* %2729, i32 0, i32 0, !dbg !3011
  %2731 = load %struct.lua_TValue** %2730, align 4, !dbg !3011
  call void @luaF_close(%struct.lua_State* %2726, %struct.lua_TValue* %2731), !dbg !3011
  br label %2732, !dbg !3011

; <label>:2732                                    ; preds = %2725, %2688
  store i32 0, i32* %aux121, align 4, !dbg !3013
  br label %2733, !dbg !3013

; <label>:2733                                    ; preds = %2750, %2732
  %2734 = load %struct.lua_TValue** %nfunc, align 4, !dbg !3015
  %2735 = load i32* %aux121, align 4, !dbg !3015
  %2736 = getelementptr inbounds %struct.lua_TValue* %2734, i32 %2735, !dbg !3015
  %2737 = load %struct.lua_TValue** %lim, align 4, !dbg !3015
  %2738 = icmp ult %struct.lua_TValue* %2736, %2737, !dbg !3015
  br i1 %2738, label %2739, label %2753, !dbg !3015

; <label>:2739                                    ; preds = %2733
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %io1122}, metadata !3018), !dbg !3020
  %2740 = load %struct.lua_TValue** %ofunc, align 4, !dbg !3020
  %2741 = load i32* %aux121, align 4, !dbg !3020
  %2742 = getelementptr inbounds %struct.lua_TValue* %2740, i32 %2741, !dbg !3020
  store %struct.lua_TValue* %2742, %struct.lua_TValue** %io1122, align 4, !dbg !3020
  %2743 = load %struct.lua_TValue** %io1122, align 4, !dbg !3020
  %2744 = load %struct.lua_TValue** %nfunc, align 4, !dbg !3020
  %2745 = load i32* %aux121, align 4, !dbg !3020
  %2746 = getelementptr inbounds %struct.lua_TValue* %2744, i32 %2745, !dbg !3020
  %2747 = bitcast %struct.lua_TValue* %2743 to i8*, !dbg !3020
  %2748 = bitcast %struct.lua_TValue* %2746 to i8*, !dbg !3020
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %2747, i8* %2748, i32 16, i32 8, i1 false), !dbg !3020
  %2749 = load %struct.lua_State** %1, align 4, !dbg !3020
  br label %2750, !dbg !3020

; <label>:2750                                    ; preds = %2739
  %2751 = load i32* %aux121, align 4, !dbg !3021
  %2752 = add nsw i32 %2751, 1, !dbg !3021
  store i32 %2752, i32* %aux121, align 4, !dbg !3021
  br label %2733, !dbg !3021

; <label>:2753                                    ; preds = %2733
  %2754 = load %struct.lua_TValue** %ofunc, align 4, !dbg !3022
  %2755 = load %struct.CallInfo** %nci, align 4, !dbg !3022
  %2756 = getelementptr inbounds %struct.CallInfo* %2755, i32 0, i32 4, !dbg !3022
  %2757 = bitcast %union.anon* %2756 to %struct.anon*, !dbg !3022
  %2758 = getelementptr inbounds %struct.anon* %2757, i32 0, i32 0, !dbg !3022
  %2759 = load %struct.lua_TValue** %2758, align 4, !dbg !3022
  %2760 = load %struct.lua_TValue** %nfunc, align 4, !dbg !3022
  %2761 = ptrtoint %struct.lua_TValue* %2759 to i32, !dbg !3022
  %2762 = ptrtoint %struct.lua_TValue* %2760 to i32, !dbg !3022
  %2763 = sub i32 %2761, %2762, !dbg !3022
  %2764 = sdiv exact i32 %2763, 16, !dbg !3022
  %2765 = getelementptr inbounds %struct.lua_TValue* %2754, i32 %2764, !dbg !3022
  %2766 = load %struct.CallInfo** %oci, align 4, !dbg !3022
  %2767 = getelementptr inbounds %struct.CallInfo* %2766, i32 0, i32 4, !dbg !3022
  %2768 = bitcast %union.anon* %2767 to %struct.anon*, !dbg !3022
  %2769 = getelementptr inbounds %struct.anon* %2768, i32 0, i32 0, !dbg !3022
  store %struct.lua_TValue* %2765, %struct.lua_TValue** %2769, align 4, !dbg !3022
  %2770 = load %struct.lua_TValue** %ofunc, align 4, !dbg !3023
  %2771 = load %struct.lua_State** %1, align 4, !dbg !3023
  %2772 = getelementptr inbounds %struct.lua_State* %2771, i32 0, i32 5, !dbg !3023
  %2773 = load %struct.lua_TValue** %2772, align 4, !dbg !3023
  %2774 = load %struct.lua_TValue** %nfunc, align 4, !dbg !3023
  %2775 = ptrtoint %struct.lua_TValue* %2773 to i32, !dbg !3023
  %2776 = ptrtoint %struct.lua_TValue* %2774 to i32, !dbg !3023
  %2777 = sub i32 %2775, %2776, !dbg !3023
  %2778 = sdiv exact i32 %2777, 16, !dbg !3023
  %2779 = getelementptr inbounds %struct.lua_TValue* %2770, i32 %2778, !dbg !3023
  %2780 = load %struct.lua_State** %1, align 4, !dbg !3023
  %2781 = getelementptr inbounds %struct.lua_State* %2780, i32 0, i32 5, !dbg !3023
  store %struct.lua_TValue* %2779, %struct.lua_TValue** %2781, align 4, !dbg !3023
  %2782 = load %struct.CallInfo** %oci, align 4, !dbg !3023
  %2783 = getelementptr inbounds %struct.CallInfo* %2782, i32 0, i32 1, !dbg !3023
  store %struct.lua_TValue* %2779, %struct.lua_TValue** %2783, align 4, !dbg !3023
  %2784 = load %struct.CallInfo** %nci, align 4, !dbg !3024
  %2785 = getelementptr inbounds %struct.CallInfo* %2784, i32 0, i32 4, !dbg !3024
  %2786 = bitcast %union.anon* %2785 to %struct.anon*, !dbg !3024
  %2787 = getelementptr inbounds %struct.anon* %2786, i32 0, i32 1, !dbg !3024
  %2788 = load i32** %2787, align 4, !dbg !3024
  %2789 = load %struct.CallInfo** %oci, align 4, !dbg !3024
  %2790 = getelementptr inbounds %struct.CallInfo* %2789, i32 0, i32 4, !dbg !3024
  %2791 = bitcast %union.anon* %2790 to %struct.anon*, !dbg !3024
  %2792 = getelementptr inbounds %struct.anon* %2791, i32 0, i32 1, !dbg !3024
  store i32* %2788, i32** %2792, align 4, !dbg !3024
  %2793 = load %struct.CallInfo** %oci, align 4, !dbg !3025
  %2794 = getelementptr inbounds %struct.CallInfo* %2793, i32 0, i32 7, !dbg !3025
  %2795 = load i8* %2794, align 1, !dbg !3025
  %2796 = zext i8 %2795 to i32, !dbg !3025
  %2797 = or i32 %2796, 32, !dbg !3025
  %2798 = trunc i32 %2797 to i8, !dbg !3025
  store i8 %2798, i8* %2794, align 1, !dbg !3025
  %2799 = load %struct.CallInfo** %oci, align 4, !dbg !3026
  %2800 = load %struct.lua_State** %1, align 4, !dbg !3026
  %2801 = getelementptr inbounds %struct.lua_State* %2800, i32 0, i32 7, !dbg !3026
  store %struct.CallInfo* %2799, %struct.CallInfo** %2801, align 4, !dbg !3026
  store %struct.CallInfo* %2799, %struct.CallInfo** %ci, align 4, !dbg !3026
  br label %11, !dbg !3027

; <label>:2802                                    ; preds = %2682
  br label %3454, !dbg !3028

; <label>:2803                                    ; preds = %51
  call void @llvm.dbg.declare(metadata !{i32* %b123}, metadata !3029), !dbg !3031
  %2804 = load i32* %i, align 4, !dbg !3032
  %2805 = lshr i32 %2804, 23, !dbg !3032
  %2806 = and i32 %2805, 511, !dbg !3032
  store i32 %2806, i32* %b123, align 4, !dbg !3032
  %2807 = load %struct.LClosure** %cl, align 4, !dbg !3033
  %2808 = getelementptr inbounds %struct.LClosure* %2807, i32 0, i32 5, !dbg !3033
  %2809 = load %struct.Proto** %2808, align 4, !dbg !3033
  %2810 = getelementptr inbounds %struct.Proto* %2809, i32 0, i32 10, !dbg !3033
  %2811 = load i32* %2810, align 4, !dbg !3033
  %2812 = icmp sgt i32 %2811, 0, !dbg !3033
  br i1 %2812, label %2813, label %2816, !dbg !3033

; <label>:2813                                    ; preds = %2803
  %2814 = load %struct.lua_State** %1, align 4, !dbg !3035
  %2815 = load %struct.lua_TValue** %base, align 4, !dbg !3035
  call void @luaF_close(%struct.lua_State* %2814, %struct.lua_TValue* %2815), !dbg !3035
  br label %2816, !dbg !3035

; <label>:2816                                    ; preds = %2813, %2803
  %2817 = load %struct.lua_State** %1, align 4, !dbg !3037
  %2818 = load %struct.CallInfo** %ci, align 4, !dbg !3037
  %2819 = load %struct.lua_TValue** %ra, align 4, !dbg !3037
  %2820 = load i32* %b123, align 4, !dbg !3037
  %2821 = icmp ne i32 %2820, 0, !dbg !3037
  br i1 %2821, label %2822, label %2825, !dbg !3037

; <label>:2822                                    ; preds = %2816
  %2823 = load i32* %b123, align 4, !dbg !3038
  %2824 = sub nsw i32 %2823, 1, !dbg !3038
  br label %2834, !dbg !3038

; <label>:2825                                    ; preds = %2816
  %2826 = load %struct.lua_State** %1, align 4, !dbg !3040
  %2827 = getelementptr inbounds %struct.lua_State* %2826, i32 0, i32 5, !dbg !3040
  %2828 = load %struct.lua_TValue** %2827, align 4, !dbg !3040
  %2829 = load %struct.lua_TValue** %ra, align 4, !dbg !3040
  %2830 = ptrtoint %struct.lua_TValue* %2828 to i32, !dbg !3040
  %2831 = ptrtoint %struct.lua_TValue* %2829 to i32, !dbg !3040
  %2832 = sub i32 %2830, %2831, !dbg !3040
  %2833 = sdiv exact i32 %2832, 16, !dbg !3040
  br label %2834, !dbg !3040

; <label>:2834                                    ; preds = %2825, %2822
  %2835 = phi i32 [ %2824, %2822 ], [ %2833, %2825 ], !dbg !3037
  %2836 = call i32 @luaD_poscall(%struct.lua_State* %2817, %struct.CallInfo* %2818, %struct.lua_TValue* %2819, i32 %2835), !dbg !3042
  store i32 %2836, i32* %b123, align 4, !dbg !3042
  %2837 = load %struct.CallInfo** %ci, align 4, !dbg !3045
  %2838 = getelementptr inbounds %struct.CallInfo* %2837, i32 0, i32 7, !dbg !3045
  %2839 = load i8* %2838, align 1, !dbg !3045
  %2840 = zext i8 %2839 to i32, !dbg !3045
  %2841 = and i32 %2840, 8, !dbg !3045
  %2842 = icmp ne i32 %2841, 0, !dbg !3045
  br i1 %2842, label %2843, label %2844, !dbg !3045

; <label>:2843                                    ; preds = %2834
  ret void, !dbg !3047

; <label>:2844                                    ; preds = %2834
  %2845 = load %struct.lua_State** %1, align 4, !dbg !3048
  %2846 = getelementptr inbounds %struct.lua_State* %2845, i32 0, i32 7, !dbg !3048
  %2847 = load %struct.CallInfo** %2846, align 4, !dbg !3048
  store %struct.CallInfo* %2847, %struct.CallInfo** %ci, align 4, !dbg !3048
  %2848 = load i32* %b123, align 4, !dbg !3050
  %2849 = icmp ne i32 %2848, 0, !dbg !3050
  br i1 %2849, label %2850, label %2856, !dbg !3050

; <label>:2850                                    ; preds = %2844
  %2851 = load %struct.CallInfo** %ci, align 4, !dbg !3052
  %2852 = getelementptr inbounds %struct.CallInfo* %2851, i32 0, i32 1, !dbg !3052
  %2853 = load %struct.lua_TValue** %2852, align 4, !dbg !3052
  %2854 = load %struct.lua_State** %1, align 4, !dbg !3052
  %2855 = getelementptr inbounds %struct.lua_State* %2854, i32 0, i32 5, !dbg !3052
  store %struct.lua_TValue* %2853, %struct.lua_TValue** %2855, align 4, !dbg !3052
  br label %2856, !dbg !3052

; <label>:2856                                    ; preds = %2850, %2844
  br label %11, !dbg !3054

; <label>:2857                                    ; preds = %51
  %2858 = load %struct.lua_TValue** %ra, align 4, !dbg !3055
  %2859 = getelementptr inbounds %struct.lua_TValue* %2858, i32 0, i32 1, !dbg !3055
  %2860 = load i32* %2859, align 4, !dbg !3055
  %2861 = icmp eq i32 %2860, 19, !dbg !3055
  br i1 %2861, label %2862, label %2914, !dbg !3055

; <label>:2862                                    ; preds = %2857
  call void @llvm.dbg.declare(metadata !{i64* %step}, metadata !3058), !dbg !3060
  %2863 = load %struct.lua_TValue** %ra, align 4, !dbg !3061
  %2864 = getelementptr inbounds %struct.lua_TValue* %2863, i32 2, !dbg !3061
  %2865 = getelementptr inbounds %struct.lua_TValue* %2864, i32 0, i32 0, !dbg !3061
  %2866 = bitcast %union.Value* %2865 to i64*, !dbg !3061
  %2867 = load i64* %2866, align 8, !dbg !3061
  store i64 %2867, i64* %step, align 8, !dbg !3061
  call void @llvm.dbg.declare(metadata !{i64* %idx}, metadata !3062), !dbg !3063
  %2868 = load %struct.lua_TValue** %ra, align 4, !dbg !3064
  %2869 = getelementptr inbounds %struct.lua_TValue* %2868, i32 0, i32 0, !dbg !3064
  %2870 = bitcast %union.Value* %2869 to i64*, !dbg !3064
  %2871 = load i64* %2870, align 8, !dbg !3064
  %2872 = load i64* %step, align 8, !dbg !3064
  %2873 = add i64 %2871, %2872, !dbg !3064
  store i64 %2873, i64* %idx, align 8, !dbg !3064
  call void @llvm.dbg.declare(metadata !{i64* %limit}, metadata !3065), !dbg !3066
  %2874 = load %struct.lua_TValue** %ra, align 4, !dbg !3067
  %2875 = getelementptr inbounds %struct.lua_TValue* %2874, i32 1, !dbg !3067
  %2876 = getelementptr inbounds %struct.lua_TValue* %2875, i32 0, i32 0, !dbg !3067
  %2877 = bitcast %union.Value* %2876 to i64*, !dbg !3067
  %2878 = load i64* %2877, align 8, !dbg !3067
  store i64 %2878, i64* %limit, align 8, !dbg !3067
  %2879 = load i64* %step, align 8, !dbg !3068
  %2880 = icmp slt i64 0, %2879, !dbg !3068
  br i1 %2880, label %2881, label %2885, !dbg !3068

; <label>:2881                                    ; preds = %2862
  %2882 = load i64* %idx, align 8, !dbg !3070
  %2883 = load i64* %limit, align 8, !dbg !3070
  %2884 = icmp sle i64 %2882, %2883, !dbg !3070
  br i1 %2884, label %2889, label %2913, !dbg !3070

; <label>:2885                                    ; preds = %2862
  %2886 = load i64* %limit, align 8, !dbg !3072
  %2887 = load i64* %idx, align 8, !dbg !3072
  %2888 = icmp sle i64 %2886, %2887, !dbg !3072
  br i1 %2888, label %2889, label %2913, !dbg !3072

; <label>:2889                                    ; preds = %2885, %2881
  %2890 = load i32* %i, align 4, !dbg !3074
  %2891 = lshr i32 %2890, 14, !dbg !3074
  %2892 = and i32 %2891, 262143, !dbg !3074
  %2893 = sub nsw i32 %2892, 131071, !dbg !3074
  %2894 = load %struct.CallInfo** %ci, align 4, !dbg !3074
  %2895 = getelementptr inbounds %struct.CallInfo* %2894, i32 0, i32 4, !dbg !3074
  %2896 = bitcast %union.anon* %2895 to %struct.anon*, !dbg !3074
  %2897 = getelementptr inbounds %struct.anon* %2896, i32 0, i32 1, !dbg !3074
  %2898 = load i32** %2897, align 4, !dbg !3074
  %2899 = getelementptr inbounds i32* %2898, i32 %2893, !dbg !3074
  store i32* %2899, i32** %2897, align 4, !dbg !3074
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %io125}, metadata !3076), !dbg !3078
  %2900 = load %struct.lua_TValue** %ra, align 4, !dbg !3078
  store %struct.lua_TValue* %2900, %struct.lua_TValue** %io125, align 4, !dbg !3078
  %2901 = load i64* %idx, align 8, !dbg !3078
  %2902 = load %struct.lua_TValue** %io125, align 4, !dbg !3078
  %2903 = getelementptr inbounds %struct.lua_TValue* %2902, i32 0, i32 0, !dbg !3078
  %2904 = bitcast %union.Value* %2903 to i64*, !dbg !3078
  store i64 %2901, i64* %2904, align 8, !dbg !3078
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %io126}, metadata !3079), !dbg !3081
  %2905 = load %struct.lua_TValue** %ra, align 4, !dbg !3081
  %2906 = getelementptr inbounds %struct.lua_TValue* %2905, i32 3, !dbg !3081
  store %struct.lua_TValue* %2906, %struct.lua_TValue** %io126, align 4, !dbg !3081
  %2907 = load i64* %idx, align 8, !dbg !3081
  %2908 = load %struct.lua_TValue** %io126, align 4, !dbg !3081
  %2909 = getelementptr inbounds %struct.lua_TValue* %2908, i32 0, i32 0, !dbg !3081
  %2910 = bitcast %union.Value* %2909 to i64*, !dbg !3081
  store i64 %2907, i64* %2910, align 8, !dbg !3081
  %2911 = load %struct.lua_TValue** %io126, align 4, !dbg !3081
  %2912 = getelementptr inbounds %struct.lua_TValue* %2911, i32 0, i32 1, !dbg !3081
  store i32 19, i32* %2912, align 4, !dbg !3081
  br label %2913, !dbg !3082

; <label>:2913                                    ; preds = %2889, %2885, %2881
  br label %2966, !dbg !3083

; <label>:2914                                    ; preds = %2857
  call void @llvm.dbg.declare(metadata !{double* %step127}, metadata !3084), !dbg !3086
  %2915 = load %struct.lua_TValue** %ra, align 4, !dbg !3087
  %2916 = getelementptr inbounds %struct.lua_TValue* %2915, i32 2, !dbg !3087
  %2917 = getelementptr inbounds %struct.lua_TValue* %2916, i32 0, i32 0, !dbg !3087
  %2918 = bitcast %union.Value* %2917 to double*, !dbg !3087
  %2919 = load double* %2918, align 8, !dbg !3087
  store double %2919, double* %step127, align 8, !dbg !3087
  call void @llvm.dbg.declare(metadata !{double* %idx128}, metadata !3088), !dbg !3089
  %2920 = load %struct.lua_TValue** %ra, align 4, !dbg !3090
  %2921 = getelementptr inbounds %struct.lua_TValue* %2920, i32 0, i32 0, !dbg !3090
  %2922 = bitcast %union.Value* %2921 to double*, !dbg !3090
  %2923 = load double* %2922, align 8, !dbg !3090
  %2924 = load double* %step127, align 8, !dbg !3090
  %2925 = fadd double %2923, %2924, !dbg !3090
  store double %2925, double* %idx128, align 8, !dbg !3090
  call void @llvm.dbg.declare(metadata !{double* %limit129}, metadata !3091), !dbg !3092
  %2926 = load %struct.lua_TValue** %ra, align 4, !dbg !3093
  %2927 = getelementptr inbounds %struct.lua_TValue* %2926, i32 1, !dbg !3093
  %2928 = getelementptr inbounds %struct.lua_TValue* %2927, i32 0, i32 0, !dbg !3093
  %2929 = bitcast %union.Value* %2928 to double*, !dbg !3093
  %2930 = load double* %2929, align 8, !dbg !3093
  store double %2930, double* %limit129, align 8, !dbg !3093
  %2931 = load double* %step127, align 8, !dbg !3094
  %2932 = fcmp olt double 0.000000e+00, %2931, !dbg !3094
  br i1 %2932, label %2933, label %2937, !dbg !3094

; <label>:2933                                    ; preds = %2914
  %2934 = load double* %idx128, align 8, !dbg !3096
  %2935 = load double* %limit129, align 8, !dbg !3096
  %2936 = fcmp ole double %2934, %2935, !dbg !3096
  br i1 %2936, label %2941, label %2965, !dbg !3096

; <label>:2937                                    ; preds = %2914
  %2938 = load double* %limit129, align 8, !dbg !3098
  %2939 = load double* %idx128, align 8, !dbg !3098
  %2940 = fcmp ole double %2938, %2939, !dbg !3098
  br i1 %2940, label %2941, label %2965, !dbg !3098

; <label>:2941                                    ; preds = %2937, %2933
  %2942 = load i32* %i, align 4, !dbg !3100
  %2943 = lshr i32 %2942, 14, !dbg !3100
  %2944 = and i32 %2943, 262143, !dbg !3100
  %2945 = sub nsw i32 %2944, 131071, !dbg !3100
  %2946 = load %struct.CallInfo** %ci, align 4, !dbg !3100
  %2947 = getelementptr inbounds %struct.CallInfo* %2946, i32 0, i32 4, !dbg !3100
  %2948 = bitcast %union.anon* %2947 to %struct.anon*, !dbg !3100
  %2949 = getelementptr inbounds %struct.anon* %2948, i32 0, i32 1, !dbg !3100
  %2950 = load i32** %2949, align 4, !dbg !3100
  %2951 = getelementptr inbounds i32* %2950, i32 %2945, !dbg !3100
  store i32* %2951, i32** %2949, align 4, !dbg !3100
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %io130}, metadata !3102), !dbg !3104
  %2952 = load %struct.lua_TValue** %ra, align 4, !dbg !3104
  store %struct.lua_TValue* %2952, %struct.lua_TValue** %io130, align 4, !dbg !3104
  %2953 = load double* %idx128, align 8, !dbg !3104
  %2954 = load %struct.lua_TValue** %io130, align 4, !dbg !3104
  %2955 = getelementptr inbounds %struct.lua_TValue* %2954, i32 0, i32 0, !dbg !3104
  %2956 = bitcast %union.Value* %2955 to double*, !dbg !3104
  store double %2953, double* %2956, align 8, !dbg !3104
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %io131}, metadata !3105), !dbg !3107
  %2957 = load %struct.lua_TValue** %ra, align 4, !dbg !3107
  %2958 = getelementptr inbounds %struct.lua_TValue* %2957, i32 3, !dbg !3107
  store %struct.lua_TValue* %2958, %struct.lua_TValue** %io131, align 4, !dbg !3107
  %2959 = load double* %idx128, align 8, !dbg !3107
  %2960 = load %struct.lua_TValue** %io131, align 4, !dbg !3107
  %2961 = getelementptr inbounds %struct.lua_TValue* %2960, i32 0, i32 0, !dbg !3107
  %2962 = bitcast %union.Value* %2961 to double*, !dbg !3107
  store double %2959, double* %2962, align 8, !dbg !3107
  %2963 = load %struct.lua_TValue** %io131, align 4, !dbg !3107
  %2964 = getelementptr inbounds %struct.lua_TValue* %2963, i32 0, i32 1, !dbg !3107
  store i32 3, i32* %2964, align 4, !dbg !3107
  br label %2965, !dbg !3108

; <label>:2965                                    ; preds = %2941, %2937, %2933
  br label %2966

; <label>:2966                                    ; preds = %2965, %2913
  br label %3454, !dbg !3109

; <label>:2967                                    ; preds = %51
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %init}, metadata !3110), !dbg !3112
  %2968 = load %struct.lua_TValue** %ra, align 4, !dbg !3113
  store %struct.lua_TValue* %2968, %struct.lua_TValue** %init, align 4, !dbg !3113
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %plimit}, metadata !3114), !dbg !3115
  %2969 = load %struct.lua_TValue** %ra, align 4, !dbg !3116
  %2970 = getelementptr inbounds %struct.lua_TValue* %2969, i32 1, !dbg !3116
  store %struct.lua_TValue* %2970, %struct.lua_TValue** %plimit, align 4, !dbg !3116
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %pstep}, metadata !3117), !dbg !3118
  %2971 = load %struct.lua_TValue** %ra, align 4, !dbg !3119
  %2972 = getelementptr inbounds %struct.lua_TValue* %2971, i32 2, !dbg !3119
  store %struct.lua_TValue* %2972, %struct.lua_TValue** %pstep, align 4, !dbg !3119
  call void @llvm.dbg.declare(metadata !{i64* %ilimit}, metadata !3120), !dbg !3121
  call void @llvm.dbg.declare(metadata !{i32* %stopnow}, metadata !3122), !dbg !3123
  %2973 = load %struct.lua_TValue** %init, align 4, !dbg !3124
  %2974 = getelementptr inbounds %struct.lua_TValue* %2973, i32 0, i32 1, !dbg !3124
  %2975 = load i32* %2974, align 4, !dbg !3124
  %2976 = icmp eq i32 %2975, 19, !dbg !3124
  br i1 %2976, label %2977, label %3020, !dbg !3124

; <label>:2977                                    ; preds = %2967
  %2978 = load %struct.lua_TValue** %pstep, align 4, !dbg !3126
  %2979 = getelementptr inbounds %struct.lua_TValue* %2978, i32 0, i32 1, !dbg !3126
  %2980 = load i32* %2979, align 4, !dbg !3126
  %2981 = icmp eq i32 %2980, 19, !dbg !3126
  br i1 %2981, label %2982, label %3020, !dbg !3126

; <label>:2982                                    ; preds = %2977
  %2983 = load %struct.lua_TValue** %plimit, align 4, !dbg !3128
  %2984 = load %struct.lua_TValue** %pstep, align 4, !dbg !3128
  %2985 = getelementptr inbounds %struct.lua_TValue* %2984, i32 0, i32 0, !dbg !3128
  %2986 = bitcast %union.Value* %2985 to i64*, !dbg !3128
  %2987 = load i64* %2986, align 8, !dbg !3128
  %2988 = call i32 @forlimit(%struct.lua_TValue* %2983, i64* %ilimit, i64 %2987, i32* %stopnow), !dbg !3128
  %2989 = icmp ne i32 %2988, 0, !dbg !3128
  br i1 %2989, label %2990, label %3020, !dbg !3128

; <label>:2990                                    ; preds = %2982
  call void @llvm.dbg.declare(metadata !{i64* %initv}, metadata !3129), !dbg !3131
  %2991 = load i32* %stopnow, align 4, !dbg !3132
  %2992 = icmp ne i32 %2991, 0, !dbg !3132
  br i1 %2992, label %2993, label %2994, !dbg !3132

; <label>:2993                                    ; preds = %2990
  br label %2999, !dbg !3133

; <label>:2994                                    ; preds = %2990
  %2995 = load %struct.lua_TValue** %init, align 4, !dbg !3135
  %2996 = getelementptr inbounds %struct.lua_TValue* %2995, i32 0, i32 0, !dbg !3135
  %2997 = bitcast %union.Value* %2996 to i64*, !dbg !3135
  %2998 = load i64* %2997, align 8, !dbg !3135
  br label %2999, !dbg !3135

; <label>:2999                                    ; preds = %2994, %2993
  %3000 = phi i64 [ 0, %2993 ], [ %2998, %2994 ], !dbg !3132
  store i64 %3000, i64* %initv, align 8, !dbg !3137
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %io132}, metadata !3140), !dbg !3142
  %3001 = load %struct.lua_TValue** %plimit, align 4, !dbg !3142
  store %struct.lua_TValue* %3001, %struct.lua_TValue** %io132, align 4, !dbg !3142
  %3002 = load i64* %ilimit, align 8, !dbg !3142
  %3003 = load %struct.lua_TValue** %io132, align 4, !dbg !3142
  %3004 = getelementptr inbounds %struct.lua_TValue* %3003, i32 0, i32 0, !dbg !3142
  %3005 = bitcast %union.Value* %3004 to i64*, !dbg !3142
  store i64 %3002, i64* %3005, align 8, !dbg !3142
  %3006 = load %struct.lua_TValue** %io132, align 4, !dbg !3142
  %3007 = getelementptr inbounds %struct.lua_TValue* %3006, i32 0, i32 1, !dbg !3142
  store i32 19, i32* %3007, align 4, !dbg !3142
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %io133}, metadata !3143), !dbg !3145
  %3008 = load %struct.lua_TValue** %init, align 4, !dbg !3145
  store %struct.lua_TValue* %3008, %struct.lua_TValue** %io133, align 4, !dbg !3145
  %3009 = load i64* %initv, align 8, !dbg !3145
  %3010 = load %struct.lua_TValue** %pstep, align 4, !dbg !3145
  %3011 = getelementptr inbounds %struct.lua_TValue* %3010, i32 0, i32 0, !dbg !3145
  %3012 = bitcast %union.Value* %3011 to i64*, !dbg !3145
  %3013 = load i64* %3012, align 8, !dbg !3145
  %3014 = sub i64 %3009, %3013, !dbg !3145
  %3015 = load %struct.lua_TValue** %io133, align 4, !dbg !3145
  %3016 = getelementptr inbounds %struct.lua_TValue* %3015, i32 0, i32 0, !dbg !3145
  %3017 = bitcast %union.Value* %3016 to i64*, !dbg !3145
  store i64 %3014, i64* %3017, align 8, !dbg !3145
  %3018 = load %struct.lua_TValue** %io133, align 4, !dbg !3145
  %3019 = getelementptr inbounds %struct.lua_TValue* %3018, i32 0, i32 1, !dbg !3145
  store i32 19, i32* %3019, align 4, !dbg !3145
  br label %3092, !dbg !3146

; <label>:3020                                    ; preds = %2982, %2977, %2967
  call void @llvm.dbg.declare(metadata !{double* %ninit}, metadata !3147), !dbg !3149
  call void @llvm.dbg.declare(metadata !{double* %nlimit}, metadata !3150), !dbg !3151
  call void @llvm.dbg.declare(metadata !{double* %nstep}, metadata !3152), !dbg !3153
  %3021 = load %struct.lua_TValue** %plimit, align 4, !dbg !3154
  %3022 = getelementptr inbounds %struct.lua_TValue* %3021, i32 0, i32 1, !dbg !3154
  %3023 = load i32* %3022, align 4, !dbg !3154
  %3024 = icmp eq i32 %3023, 3, !dbg !3154
  br i1 %3024, label %3025, label %3030, !dbg !3154

; <label>:3025                                    ; preds = %3020
  %3026 = load %struct.lua_TValue** %plimit, align 4, !dbg !3156
  %3027 = getelementptr inbounds %struct.lua_TValue* %3026, i32 0, i32 0, !dbg !3156
  %3028 = bitcast %union.Value* %3027 to double*, !dbg !3156
  %3029 = load double* %3028, align 8, !dbg !3156
  store double %3029, double* %nlimit, align 8, !dbg !3156
  br i1 true, label %3036, label %3034, !dbg !3156

; <label>:3030                                    ; preds = %3020
  %3031 = load %struct.lua_TValue** %plimit, align 4, !dbg !3158
  %3032 = call i32 @luaV_tonumber_(%struct.lua_TValue* %3031, double* %nlimit), !dbg !3158
  %3033 = icmp ne i32 %3032, 0, !dbg !3158
  br i1 %3033, label %3036, label %3034, !dbg !3158

; <label>:3034                                    ; preds = %3030, %3025
  %3035 = load %struct.lua_State** %1, align 4, !dbg !3160
  call void (%struct.lua_State*, i8*, ...)* @luaG_runerror(%struct.lua_State* %3035, i8* getelementptr inbounds ([29 x i8]* @.str7, i32 0, i32 0)) #7, !dbg !3160
  unreachable, !dbg !3160

; <label>:3036                                    ; preds = %3030, %3025
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %io134}, metadata !3161), !dbg !3163
  %3037 = load %struct.lua_TValue** %plimit, align 4, !dbg !3163
  store %struct.lua_TValue* %3037, %struct.lua_TValue** %io134, align 4, !dbg !3163
  %3038 = load double* %nlimit, align 8, !dbg !3163
  %3039 = load %struct.lua_TValue** %io134, align 4, !dbg !3163
  %3040 = getelementptr inbounds %struct.lua_TValue* %3039, i32 0, i32 0, !dbg !3163
  %3041 = bitcast %union.Value* %3040 to double*, !dbg !3163
  store double %3038, double* %3041, align 8, !dbg !3163
  %3042 = load %struct.lua_TValue** %io134, align 4, !dbg !3163
  %3043 = getelementptr inbounds %struct.lua_TValue* %3042, i32 0, i32 1, !dbg !3163
  store i32 3, i32* %3043, align 4, !dbg !3163
  %3044 = load %struct.lua_TValue** %pstep, align 4, !dbg !3164
  %3045 = getelementptr inbounds %struct.lua_TValue* %3044, i32 0, i32 1, !dbg !3164
  %3046 = load i32* %3045, align 4, !dbg !3164
  %3047 = icmp eq i32 %3046, 3, !dbg !3164
  br i1 %3047, label %3048, label %3053, !dbg !3164

; <label>:3048                                    ; preds = %3036
  %3049 = load %struct.lua_TValue** %pstep, align 4, !dbg !3166
  %3050 = getelementptr inbounds %struct.lua_TValue* %3049, i32 0, i32 0, !dbg !3166
  %3051 = bitcast %union.Value* %3050 to double*, !dbg !3166
  %3052 = load double* %3051, align 8, !dbg !3166
  store double %3052, double* %nstep, align 8, !dbg !3166
  br i1 true, label %3059, label %3057, !dbg !3166

; <label>:3053                                    ; preds = %3036
  %3054 = load %struct.lua_TValue** %pstep, align 4, !dbg !3168
  %3055 = call i32 @luaV_tonumber_(%struct.lua_TValue* %3054, double* %nstep), !dbg !3168
  %3056 = icmp ne i32 %3055, 0, !dbg !3168
  br i1 %3056, label %3059, label %3057, !dbg !3168

; <label>:3057                                    ; preds = %3053, %3048
  %3058 = load %struct.lua_State** %1, align 4, !dbg !3170
  call void (%struct.lua_State*, i8*, ...)* @luaG_runerror(%struct.lua_State* %3058, i8* getelementptr inbounds ([28 x i8]* @.str8, i32 0, i32 0)) #7, !dbg !3170
  unreachable, !dbg !3170

; <label>:3059                                    ; preds = %3053, %3048
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %io135}, metadata !3171), !dbg !3173
  %3060 = load %struct.lua_TValue** %pstep, align 4, !dbg !3173
  store %struct.lua_TValue* %3060, %struct.lua_TValue** %io135, align 4, !dbg !3173
  %3061 = load double* %nstep, align 8, !dbg !3173
  %3062 = load %struct.lua_TValue** %io135, align 4, !dbg !3173
  %3063 = getelementptr inbounds %struct.lua_TValue* %3062, i32 0, i32 0, !dbg !3173
  %3064 = bitcast %union.Value* %3063 to double*, !dbg !3173
  store double %3061, double* %3064, align 8, !dbg !3173
  %3065 = load %struct.lua_TValue** %io135, align 4, !dbg !3173
  %3066 = getelementptr inbounds %struct.lua_TValue* %3065, i32 0, i32 1, !dbg !3173
  store i32 3, i32* %3066, align 4, !dbg !3173
  %3067 = load %struct.lua_TValue** %init, align 4, !dbg !3174
  %3068 = getelementptr inbounds %struct.lua_TValue* %3067, i32 0, i32 1, !dbg !3174
  %3069 = load i32* %3068, align 4, !dbg !3174
  %3070 = icmp eq i32 %3069, 3, !dbg !3174
  br i1 %3070, label %3071, label %3076, !dbg !3174

; <label>:3071                                    ; preds = %3059
  %3072 = load %struct.lua_TValue** %init, align 4, !dbg !3176
  %3073 = getelementptr inbounds %struct.lua_TValue* %3072, i32 0, i32 0, !dbg !3176
  %3074 = bitcast %union.Value* %3073 to double*, !dbg !3176
  %3075 = load double* %3074, align 8, !dbg !3176
  store double %3075, double* %ninit, align 8, !dbg !3176
  br i1 true, label %3082, label %3080, !dbg !3176

; <label>:3076                                    ; preds = %3059
  %3077 = load %struct.lua_TValue** %init, align 4, !dbg !3178
  %3078 = call i32 @luaV_tonumber_(%struct.lua_TValue* %3077, double* %ninit), !dbg !3178
  %3079 = icmp ne i32 %3078, 0, !dbg !3178
  br i1 %3079, label %3082, label %3080, !dbg !3178

; <label>:3080                                    ; preds = %3076, %3071
  %3081 = load %struct.lua_State** %1, align 4, !dbg !3180
  call void (%struct.lua_State*, i8*, ...)* @luaG_runerror(%struct.lua_State* %3081, i8* getelementptr inbounds ([37 x i8]* @.str9, i32 0, i32 0)) #7, !dbg !3180
  unreachable, !dbg !3180

; <label>:3082                                    ; preds = %3076, %3071
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %io136}, metadata !3181), !dbg !3183
  %3083 = load %struct.lua_TValue** %init, align 4, !dbg !3183
  store %struct.lua_TValue* %3083, %struct.lua_TValue** %io136, align 4, !dbg !3183
  %3084 = load double* %ninit, align 8, !dbg !3183
  %3085 = load double* %nstep, align 8, !dbg !3183
  %3086 = fsub double %3084, %3085, !dbg !3183
  %3087 = load %struct.lua_TValue** %io136, align 4, !dbg !3183
  %3088 = getelementptr inbounds %struct.lua_TValue* %3087, i32 0, i32 0, !dbg !3183
  %3089 = bitcast %union.Value* %3088 to double*, !dbg !3183
  store double %3086, double* %3089, align 8, !dbg !3183
  %3090 = load %struct.lua_TValue** %io136, align 4, !dbg !3183
  %3091 = getelementptr inbounds %struct.lua_TValue* %3090, i32 0, i32 1, !dbg !3183
  store i32 3, i32* %3091, align 4, !dbg !3183
  br label %3092

; <label>:3092                                    ; preds = %3082, %2999
  %3093 = load i32* %i, align 4, !dbg !3184
  %3094 = lshr i32 %3093, 14, !dbg !3184
  %3095 = and i32 %3094, 262143, !dbg !3184
  %3096 = sub nsw i32 %3095, 131071, !dbg !3184
  %3097 = load %struct.CallInfo** %ci, align 4, !dbg !3184
  %3098 = getelementptr inbounds %struct.CallInfo* %3097, i32 0, i32 4, !dbg !3184
  %3099 = bitcast %union.anon* %3098 to %struct.anon*, !dbg !3184
  %3100 = getelementptr inbounds %struct.anon* %3099, i32 0, i32 1, !dbg !3184
  %3101 = load i32** %3100, align 4, !dbg !3184
  %3102 = getelementptr inbounds i32* %3101, i32 %3096, !dbg !3184
  store i32* %3102, i32** %3100, align 4, !dbg !3184
  br label %3454, !dbg !3185

; <label>:3103                                    ; preds = %51
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %cb}, metadata !3186), !dbg !3188
  %3104 = load %struct.lua_TValue** %ra, align 4, !dbg !3189
  %3105 = getelementptr inbounds %struct.lua_TValue* %3104, i32 3, !dbg !3189
  store %struct.lua_TValue* %3105, %struct.lua_TValue** %cb, align 4, !dbg !3189
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %io1137}, metadata !3190), !dbg !3192
  %3106 = load %struct.lua_TValue** %cb, align 4, !dbg !3192
  %3107 = getelementptr inbounds %struct.lua_TValue* %3106, i32 2, !dbg !3192
  store %struct.lua_TValue* %3107, %struct.lua_TValue** %io1137, align 4, !dbg !3192
  %3108 = load %struct.lua_TValue** %io1137, align 4, !dbg !3192
  %3109 = load %struct.lua_TValue** %ra, align 4, !dbg !3192
  %3110 = getelementptr inbounds %struct.lua_TValue* %3109, i32 2, !dbg !3192
  %3111 = bitcast %struct.lua_TValue* %3108 to i8*, !dbg !3192
  %3112 = bitcast %struct.lua_TValue* %3110 to i8*, !dbg !3192
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %3111, i8* %3112, i32 16, i32 8, i1 false), !dbg !3192
  %3113 = load %struct.lua_State** %1, align 4, !dbg !3192
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %io1138}, metadata !3193), !dbg !3195
  %3114 = load %struct.lua_TValue** %cb, align 4, !dbg !3195
  %3115 = getelementptr inbounds %struct.lua_TValue* %3114, i32 1, !dbg !3195
  store %struct.lua_TValue* %3115, %struct.lua_TValue** %io1138, align 4, !dbg !3195
  %3116 = load %struct.lua_TValue** %io1138, align 4, !dbg !3195
  %3117 = load %struct.lua_TValue** %ra, align 4, !dbg !3195
  %3118 = getelementptr inbounds %struct.lua_TValue* %3117, i32 1, !dbg !3195
  %3119 = bitcast %struct.lua_TValue* %3116 to i8*, !dbg !3195
  %3120 = bitcast %struct.lua_TValue* %3118 to i8*, !dbg !3195
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %3119, i8* %3120, i32 16, i32 8, i1 false), !dbg !3195
  %3121 = load %struct.lua_State** %1, align 4, !dbg !3195
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %io1139}, metadata !3196), !dbg !3198
  %3122 = load %struct.lua_TValue** %cb, align 4, !dbg !3198
  store %struct.lua_TValue* %3122, %struct.lua_TValue** %io1139, align 4, !dbg !3198
  %3123 = load %struct.lua_TValue** %io1139, align 4, !dbg !3198
  %3124 = load %struct.lua_TValue** %ra, align 4, !dbg !3198
  %3125 = bitcast %struct.lua_TValue* %3123 to i8*, !dbg !3198
  %3126 = bitcast %struct.lua_TValue* %3124 to i8*, !dbg !3198
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %3125, i8* %3126, i32 16, i32 8, i1 false), !dbg !3198
  %3127 = load %struct.lua_State** %1, align 4, !dbg !3198
  %3128 = load %struct.lua_TValue** %cb, align 4, !dbg !3199
  %3129 = getelementptr inbounds %struct.lua_TValue* %3128, i32 3, !dbg !3199
  %3130 = load %struct.lua_State** %1, align 4, !dbg !3199
  %3131 = getelementptr inbounds %struct.lua_State* %3130, i32 0, i32 5, !dbg !3199
  store %struct.lua_TValue* %3129, %struct.lua_TValue** %3131, align 4, !dbg !3199
  %3132 = load %struct.lua_State** %1, align 4, !dbg !3200
  %3133 = load %struct.lua_TValue** %cb, align 4, !dbg !3200
  %3134 = load i32* %i, align 4, !dbg !3200
  %3135 = lshr i32 %3134, 14, !dbg !3200
  %3136 = and i32 %3135, 511, !dbg !3200
  call void @luaD_call(%struct.lua_State* %3132, %struct.lua_TValue* %3133, i32 %3136), !dbg !3200
  %3137 = load %struct.CallInfo** %ci, align 4, !dbg !3203
  %3138 = getelementptr inbounds %struct.CallInfo* %3137, i32 0, i32 4, !dbg !3203
  %3139 = bitcast %union.anon* %3138 to %struct.anon*, !dbg !3203
  %3140 = getelementptr inbounds %struct.anon* %3139, i32 0, i32 0, !dbg !3203
  %3141 = load %struct.lua_TValue** %3140, align 4, !dbg !3203
  store %struct.lua_TValue* %3141, %struct.lua_TValue** %base, align 4, !dbg !3203
  %3142 = load %struct.CallInfo** %ci, align 4, !dbg !3204
  %3143 = getelementptr inbounds %struct.CallInfo* %3142, i32 0, i32 1, !dbg !3204
  %3144 = load %struct.lua_TValue** %3143, align 4, !dbg !3204
  %3145 = load %struct.lua_State** %1, align 4, !dbg !3204
  %3146 = getelementptr inbounds %struct.lua_State* %3145, i32 0, i32 5, !dbg !3204
  store %struct.lua_TValue* %3144, %struct.lua_TValue** %3146, align 4, !dbg !3204
  %3147 = load %struct.CallInfo** %ci, align 4, !dbg !3205
  %3148 = getelementptr inbounds %struct.CallInfo* %3147, i32 0, i32 4, !dbg !3205
  %3149 = bitcast %union.anon* %3148 to %struct.anon*, !dbg !3205
  %3150 = getelementptr inbounds %struct.anon* %3149, i32 0, i32 1, !dbg !3205
  %3151 = load i32** %3150, align 4, !dbg !3205
  %3152 = getelementptr inbounds i32* %3151, i32 1, !dbg !3205
  store i32* %3152, i32** %3150, align 4, !dbg !3205
  %3153 = load i32* %3151, align 4, !dbg !3205
  store i32 %3153, i32* %i, align 4, !dbg !3205
  %3154 = load %struct.lua_TValue** %base, align 4, !dbg !3206
  %3155 = load i32* %i, align 4, !dbg !3206
  %3156 = lshr i32 %3155, 6, !dbg !3206
  %3157 = and i32 %3156, 255, !dbg !3206
  %3158 = getelementptr inbounds %struct.lua_TValue* %3154, i32 %3157, !dbg !3206
  store %struct.lua_TValue* %3158, %struct.lua_TValue** %ra, align 4, !dbg !3206
  br label %3160, !dbg !3207

; <label>:3159                                    ; preds = %51
  br label %3160, !dbg !3208

; <label>:3160                                    ; preds = %3159, %3103
  %3161 = load %struct.lua_TValue** %ra, align 4, !dbg !3210
  %3162 = getelementptr inbounds %struct.lua_TValue* %3161, i32 1, !dbg !3210
  %3163 = getelementptr inbounds %struct.lua_TValue* %3162, i32 0, i32 1, !dbg !3210
  %3164 = load i32* %3163, align 4, !dbg !3210
  %3165 = icmp eq i32 %3164, 0, !dbg !3210
  br i1 %3165, label %3184, label %3166, !dbg !3210

; <label>:3166                                    ; preds = %3160
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %io1140}, metadata !3212), !dbg !3215
  %3167 = load %struct.lua_TValue** %ra, align 4, !dbg !3215
  store %struct.lua_TValue* %3167, %struct.lua_TValue** %io1140, align 4, !dbg !3215
  %3168 = load %struct.lua_TValue** %io1140, align 4, !dbg !3215
  %3169 = load %struct.lua_TValue** %ra, align 4, !dbg !3215
  %3170 = getelementptr inbounds %struct.lua_TValue* %3169, i32 1, !dbg !3215
  %3171 = bitcast %struct.lua_TValue* %3168 to i8*, !dbg !3215
  %3172 = bitcast %struct.lua_TValue* %3170 to i8*, !dbg !3215
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %3171, i8* %3172, i32 16, i32 8, i1 false), !dbg !3215
  %3173 = load %struct.lua_State** %1, align 4, !dbg !3215
  %3174 = load i32* %i, align 4, !dbg !3216
  %3175 = lshr i32 %3174, 14, !dbg !3216
  %3176 = and i32 %3175, 262143, !dbg !3216
  %3177 = sub nsw i32 %3176, 131071, !dbg !3216
  %3178 = load %struct.CallInfo** %ci, align 4, !dbg !3216
  %3179 = getelementptr inbounds %struct.CallInfo* %3178, i32 0, i32 4, !dbg !3216
  %3180 = bitcast %union.anon* %3179 to %struct.anon*, !dbg !3216
  %3181 = getelementptr inbounds %struct.anon* %3180, i32 0, i32 1, !dbg !3216
  %3182 = load i32** %3181, align 4, !dbg !3216
  %3183 = getelementptr inbounds i32* %3182, i32 %3177, !dbg !3216
  store i32* %3183, i32** %3181, align 4, !dbg !3216
  br label %3184, !dbg !3217

; <label>:3184                                    ; preds = %3166, %3160
  br label %3454, !dbg !3218

; <label>:3185                                    ; preds = %51
  call void @llvm.dbg.declare(metadata !{i32* %n}, metadata !3219), !dbg !3221
  %3186 = load i32* %i, align 4, !dbg !3222
  %3187 = lshr i32 %3186, 23, !dbg !3222
  %3188 = and i32 %3187, 511, !dbg !3222
  store i32 %3188, i32* %n, align 4, !dbg !3222
  call void @llvm.dbg.declare(metadata !{i32* %c141}, metadata !3223), !dbg !3224
  %3189 = load i32* %i, align 4, !dbg !3225
  %3190 = lshr i32 %3189, 14, !dbg !3225
  %3191 = and i32 %3190, 511, !dbg !3225
  store i32 %3191, i32* %c141, align 4, !dbg !3225
  call void @llvm.dbg.declare(metadata !{i32* %last}, metadata !3226), !dbg !3227
  call void @llvm.dbg.declare(metadata !{%struct.Table** %h}, metadata !3228), !dbg !3229
  %3192 = load i32* %n, align 4, !dbg !3230
  %3193 = icmp eq i32 %3192, 0, !dbg !3230
  br i1 %3193, label %3194, label %3204, !dbg !3230

; <label>:3194                                    ; preds = %3185
  %3195 = load %struct.lua_State** %1, align 4, !dbg !3232
  %3196 = getelementptr inbounds %struct.lua_State* %3195, i32 0, i32 5, !dbg !3232
  %3197 = load %struct.lua_TValue** %3196, align 4, !dbg !3232
  %3198 = load %struct.lua_TValue** %ra, align 4, !dbg !3232
  %3199 = ptrtoint %struct.lua_TValue* %3197 to i32, !dbg !3232
  %3200 = ptrtoint %struct.lua_TValue* %3198 to i32, !dbg !3232
  %3201 = sub i32 %3199, %3200, !dbg !3232
  %3202 = sdiv exact i32 %3201, 16, !dbg !3232
  %3203 = sub nsw i32 %3202, 1, !dbg !3232
  store i32 %3203, i32* %n, align 4, !dbg !3232
  br label %3204, !dbg !3232

; <label>:3204                                    ; preds = %3194, %3185
  %3205 = load i32* %c141, align 4, !dbg !3234
  %3206 = icmp eq i32 %3205, 0, !dbg !3234
  br i1 %3206, label %3207, label %3217, !dbg !3234

; <label>:3207                                    ; preds = %3204
  %3208 = load %struct.CallInfo** %ci, align 4, !dbg !3236
  %3209 = getelementptr inbounds %struct.CallInfo* %3208, i32 0, i32 4, !dbg !3236
  %3210 = bitcast %union.anon* %3209 to %struct.anon*, !dbg !3236
  %3211 = getelementptr inbounds %struct.anon* %3210, i32 0, i32 1, !dbg !3236
  %3212 = load i32** %3211, align 4, !dbg !3236
  %3213 = getelementptr inbounds i32* %3212, i32 1, !dbg !3236
  store i32* %3213, i32** %3211, align 4, !dbg !3236
  %3214 = load i32* %3212, align 4, !dbg !3236
  %3215 = lshr i32 %3214, 6, !dbg !3236
  %3216 = and i32 %3215, 67108863, !dbg !3236
  store i32 %3216, i32* %c141, align 4, !dbg !3236
  br label %3217, !dbg !3238

; <label>:3217                                    ; preds = %3207, %3204
  %3218 = load %struct.lua_TValue** %ra, align 4, !dbg !3239
  %3219 = getelementptr inbounds %struct.lua_TValue* %3218, i32 0, i32 0, !dbg !3239
  %3220 = bitcast %union.Value* %3219 to %struct.GCObject**, !dbg !3239
  %3221 = load %struct.GCObject** %3220, align 4, !dbg !3239
  %3222 = bitcast %struct.GCObject* %3221 to %union.GCUnion*, !dbg !3239
  %3223 = bitcast %union.GCUnion* %3222 to %struct.Table*, !dbg !3239
  store %struct.Table* %3223, %struct.Table** %h, align 4, !dbg !3239
  %3224 = load i32* %c141, align 4, !dbg !3240
  %3225 = sub nsw i32 %3224, 1, !dbg !3240
  %3226 = mul nsw i32 %3225, 50, !dbg !3240
  %3227 = load i32* %n, align 4, !dbg !3240
  %3228 = add nsw i32 %3226, %3227, !dbg !3240
  store i32 %3228, i32* %last, align 4, !dbg !3240
  %3229 = load i32* %last, align 4, !dbg !3241
  %3230 = load %struct.Table** %h, align 4, !dbg !3241
  %3231 = getelementptr inbounds %struct.Table* %3230, i32 0, i32 5, !dbg !3241
  %3232 = load i32* %3231, align 4, !dbg !3241
  %3233 = icmp ugt i32 %3229, %3232, !dbg !3241
  br i1 %3233, label %3234, label %3238, !dbg !3241

; <label>:3234                                    ; preds = %3217
  %3235 = load %struct.lua_State** %1, align 4, !dbg !3243
  %3236 = load %struct.Table** %h, align 4, !dbg !3243
  %3237 = load i32* %last, align 4, !dbg !3243
  call void @luaH_resizearray(%struct.lua_State* %3235, %struct.Table* %3236, i32 %3237), !dbg !3243
  br label %3238, !dbg !3243

; <label>:3238                                    ; preds = %3234, %3217
  br label %3239, !dbg !3244

; <label>:3239                                    ; preds = %3279, %3238
  %3240 = load i32* %n, align 4, !dbg !3246
  %3241 = icmp sgt i32 %3240, 0, !dbg !3246
  br i1 %3241, label %3242, label %3282, !dbg !3246

; <label>:3242                                    ; preds = %3239
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %val}, metadata !3249), !dbg !3251
  %3243 = load %struct.lua_TValue** %ra, align 4, !dbg !3252
  %3244 = load i32* %n, align 4, !dbg !3252
  %3245 = getelementptr inbounds %struct.lua_TValue* %3243, i32 %3244, !dbg !3252
  store %struct.lua_TValue* %3245, %struct.lua_TValue** %val, align 4, !dbg !3252
  %3246 = load %struct.lua_State** %1, align 4, !dbg !3253
  %3247 = load %struct.Table** %h, align 4, !dbg !3253
  %3248 = load i32* %last, align 4, !dbg !3253
  %3249 = add i32 %3248, -1, !dbg !3253
  store i32 %3249, i32* %last, align 4, !dbg !3253
  %3250 = zext i32 %3248 to i64, !dbg !3253
  %3251 = load %struct.lua_TValue** %val, align 4, !dbg !3253
  call void @luaH_setint(%struct.lua_State* %3246, %struct.Table* %3247, i64 %3250, %struct.lua_TValue* %3251), !dbg !3253
  %3252 = load %struct.lua_TValue** %val, align 4, !dbg !3254
  %3253 = getelementptr inbounds %struct.lua_TValue* %3252, i32 0, i32 1, !dbg !3254
  %3254 = load i32* %3253, align 4, !dbg !3254
  %3255 = and i32 %3254, 64, !dbg !3254
  %3256 = icmp ne i32 %3255, 0, !dbg !3254
  br i1 %3256, label %3257, label %3277, !dbg !3254

; <label>:3257                                    ; preds = %3242
  %3258 = load %struct.Table** %h, align 4, !dbg !3255
  %3259 = getelementptr inbounds %struct.Table* %3258, i32 0, i32 2, !dbg !3255
  %3260 = load i8* %3259, align 1, !dbg !3255
  %3261 = zext i8 %3260 to i32, !dbg !3255
  %3262 = and i32 %3261, 4, !dbg !3255
  %3263 = icmp ne i32 %3262, 0, !dbg !3255
  br i1 %3263, label %3264, label %3277, !dbg !3255

; <label>:3264                                    ; preds = %3257
  %3265 = load %struct.lua_TValue** %val, align 4, !dbg !3257
  %3266 = getelementptr inbounds %struct.lua_TValue* %3265, i32 0, i32 0, !dbg !3257
  %3267 = bitcast %union.Value* %3266 to %struct.GCObject**, !dbg !3257
  %3268 = load %struct.GCObject** %3267, align 4, !dbg !3257
  %3269 = getelementptr inbounds %struct.GCObject* %3268, i32 0, i32 2, !dbg !3257
  %3270 = load i8* %3269, align 1, !dbg !3257
  %3271 = zext i8 %3270 to i32, !dbg !3257
  %3272 = and i32 %3271, 3, !dbg !3257
  %3273 = icmp ne i32 %3272, 0, !dbg !3257
  br i1 %3273, label %3274, label %3277, !dbg !3257

; <label>:3274                                    ; preds = %3264
  %3275 = load %struct.lua_State** %1, align 4, !dbg !3259
  %3276 = load %struct.Table** %h, align 4, !dbg !3259
  call void @luaC_barrierback_(%struct.lua_State* %3275, %struct.Table* %3276), !dbg !3259
  br label %3278, !dbg !3259

; <label>:3277                                    ; preds = %3264, %3257, %3242
  br label %3278, !dbg !3261

; <label>:3278                                    ; preds = %3277, %3274
  br label %3279, !dbg !3265

; <label>:3279                                    ; preds = %3278
  %3280 = load i32* %n, align 4, !dbg !3266
  %3281 = add nsw i32 %3280, -1, !dbg !3266
  store i32 %3281, i32* %n, align 4, !dbg !3266
  br label %3239, !dbg !3266

; <label>:3282                                    ; preds = %3239
  %3283 = load %struct.CallInfo** %ci, align 4, !dbg !3267
  %3284 = getelementptr inbounds %struct.CallInfo* %3283, i32 0, i32 1, !dbg !3267
  %3285 = load %struct.lua_TValue** %3284, align 4, !dbg !3267
  %3286 = load %struct.lua_State** %1, align 4, !dbg !3267
  %3287 = getelementptr inbounds %struct.lua_State* %3286, i32 0, i32 5, !dbg !3267
  store %struct.lua_TValue* %3285, %struct.lua_TValue** %3287, align 4, !dbg !3267
  br label %3454, !dbg !3268

; <label>:3288                                    ; preds = %51
  call void @llvm.dbg.declare(metadata !{%struct.Proto** %p}, metadata !3269), !dbg !3271
  %3289 = load i32* %i, align 4, !dbg !3272
  %3290 = lshr i32 %3289, 14, !dbg !3272
  %3291 = and i32 %3290, 262143, !dbg !3272
  %3292 = load %struct.LClosure** %cl, align 4, !dbg !3272
  %3293 = getelementptr inbounds %struct.LClosure* %3292, i32 0, i32 5, !dbg !3272
  %3294 = load %struct.Proto** %3293, align 4, !dbg !3272
  %3295 = getelementptr inbounds %struct.Proto* %3294, i32 0, i32 16, !dbg !3272
  %3296 = load %struct.Proto*** %3295, align 4, !dbg !3272
  %3297 = getelementptr inbounds %struct.Proto** %3296, i32 %3291, !dbg !3272
  %3298 = load %struct.Proto** %3297, align 4, !dbg !3272
  store %struct.Proto* %3298, %struct.Proto** %p, align 4, !dbg !3272
  call void @llvm.dbg.declare(metadata !{%struct.LClosure** %ncl}, metadata !3273), !dbg !3274
  %3299 = load %struct.Proto** %p, align 4, !dbg !3275
  %3300 = load %struct.LClosure** %cl, align 4, !dbg !3275
  %3301 = getelementptr inbounds %struct.LClosure* %3300, i32 0, i32 6, !dbg !3275
  %3302 = getelementptr inbounds [1 x %struct.UpVal*]* %3301, i32 0, i32 0, !dbg !3275
  %3303 = load %struct.lua_TValue** %base, align 4, !dbg !3275
  %3304 = call %struct.LClosure* @getcached(%struct.Proto* %3299, %struct.UpVal** %3302, %struct.lua_TValue* %3303), !dbg !3275
  store %struct.LClosure* %3304, %struct.LClosure** %ncl, align 4, !dbg !3275
  %3305 = load %struct.LClosure** %ncl, align 4, !dbg !3276
  %3306 = icmp eq %struct.LClosure* %3305, null, !dbg !3276
  br i1 %3306, label %3307, label %3315, !dbg !3276

; <label>:3307                                    ; preds = %3288
  %3308 = load %struct.lua_State** %1, align 4, !dbg !3278
  %3309 = load %struct.Proto** %p, align 4, !dbg !3278
  %3310 = load %struct.LClosure** %cl, align 4, !dbg !3278
  %3311 = getelementptr inbounds %struct.LClosure* %3310, i32 0, i32 6, !dbg !3278
  %3312 = getelementptr inbounds [1 x %struct.UpVal*]* %3311, i32 0, i32 0, !dbg !3278
  %3313 = load %struct.lua_TValue** %base, align 4, !dbg !3278
  %3314 = load %struct.lua_TValue** %ra, align 4, !dbg !3278
  call void @pushclosure(%struct.lua_State* %3308, %struct.Proto* %3309, %struct.UpVal** %3312, %struct.lua_TValue* %3313, %struct.lua_TValue* %3314), !dbg !3278
  br label %3326, !dbg !3278

; <label>:3315                                    ; preds = %3288
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %io142}, metadata !3279), !dbg !3281
  %3316 = load %struct.lua_TValue** %ra, align 4, !dbg !3281
  store %struct.lua_TValue* %3316, %struct.lua_TValue** %io142, align 4, !dbg !3281
  call void @llvm.dbg.declare(metadata !{%struct.LClosure** %x_143}, metadata !3282), !dbg !3281
  %3317 = load %struct.LClosure** %ncl, align 4, !dbg !3281
  store %struct.LClosure* %3317, %struct.LClosure** %x_143, align 4, !dbg !3281
  %3318 = load %struct.LClosure** %x_143, align 4, !dbg !3281
  %3319 = bitcast %struct.LClosure* %3318 to %union.GCUnion*, !dbg !3281
  %3320 = bitcast %union.GCUnion* %3319 to %struct.GCObject*, !dbg !3281
  %3321 = load %struct.lua_TValue** %io142, align 4, !dbg !3281
  %3322 = getelementptr inbounds %struct.lua_TValue* %3321, i32 0, i32 0, !dbg !3281
  %3323 = bitcast %union.Value* %3322 to %struct.GCObject**, !dbg !3281
  store %struct.GCObject* %3320, %struct.GCObject** %3323, align 4, !dbg !3281
  %3324 = load %struct.lua_TValue** %io142, align 4, !dbg !3281
  %3325 = getelementptr inbounds %struct.lua_TValue* %3324, i32 0, i32 1, !dbg !3281
  store i32 70, i32* %3325, align 4, !dbg !3281
  br label %3326

; <label>:3326                                    ; preds = %3315, %3307
  %3327 = load %struct.lua_State** %1, align 4, !dbg !3283
  %3328 = getelementptr inbounds %struct.lua_State* %3327, i32 0, i32 6, !dbg !3283
  %3329 = load %struct.global_State** %3328, align 4, !dbg !3283
  %3330 = getelementptr inbounds %struct.global_State* %3329, i32 0, i32 3, !dbg !3283
  %3331 = load i32* %3330, align 4, !dbg !3283
  %3332 = icmp sgt i32 %3331, 0, !dbg !3283
  br i1 %3332, label %3333, label %3349, !dbg !3283

; <label>:3333                                    ; preds = %3326
  %3334 = load %struct.lua_TValue** %ra, align 4, !dbg !3287
  %3335 = getelementptr inbounds %struct.lua_TValue* %3334, i32 1, !dbg !3287
  %3336 = load %struct.lua_State** %1, align 4, !dbg !3287
  %3337 = getelementptr inbounds %struct.lua_State* %3336, i32 0, i32 5, !dbg !3287
  store %struct.lua_TValue* %3335, %struct.lua_TValue** %3337, align 4, !dbg !3287
  %3338 = load %struct.lua_State** %1, align 4, !dbg !3287
  call void @luaC_step(%struct.lua_State* %3338), !dbg !3287
  %3339 = load %struct.CallInfo** %ci, align 4, !dbg !3290
  %3340 = getelementptr inbounds %struct.CallInfo* %3339, i32 0, i32 1, !dbg !3290
  %3341 = load %struct.lua_TValue** %3340, align 4, !dbg !3290
  %3342 = load %struct.lua_State** %1, align 4, !dbg !3290
  %3343 = getelementptr inbounds %struct.lua_State* %3342, i32 0, i32 5, !dbg !3290
  store %struct.lua_TValue* %3341, %struct.lua_TValue** %3343, align 4, !dbg !3290
  %3344 = load %struct.CallInfo** %ci, align 4, !dbg !3293
  %3345 = getelementptr inbounds %struct.CallInfo* %3344, i32 0, i32 4, !dbg !3293
  %3346 = bitcast %union.anon* %3345 to %struct.anon*, !dbg !3293
  %3347 = getelementptr inbounds %struct.anon* %3346, i32 0, i32 0, !dbg !3293
  %3348 = load %struct.lua_TValue** %3347, align 4, !dbg !3293
  store %struct.lua_TValue* %3348, %struct.lua_TValue** %base, align 4, !dbg !3293
  br label %3349, !dbg !3294

; <label>:3349                                    ; preds = %3333, %3326
  br label %3454, !dbg !3295

; <label>:3350                                    ; preds = %51
  call void @llvm.dbg.declare(metadata !{i32* %b144}, metadata !3296), !dbg !3298
  %3351 = load i32* %i, align 4, !dbg !3299
  %3352 = lshr i32 %3351, 23, !dbg !3299
  %3353 = and i32 %3352, 511, !dbg !3299
  %3354 = sub nsw i32 %3353, 1, !dbg !3299
  store i32 %3354, i32* %b144, align 4, !dbg !3299
  call void @llvm.dbg.declare(metadata !{i32* %j}, metadata !3300), !dbg !3301
  call void @llvm.dbg.declare(metadata !{i32* %n145}, metadata !3302), !dbg !3303
  %3355 = load %struct.lua_TValue** %base, align 4, !dbg !3304
  %3356 = load %struct.CallInfo** %ci, align 4, !dbg !3304
  %3357 = getelementptr inbounds %struct.CallInfo* %3356, i32 0, i32 0, !dbg !3304
  %3358 = load %struct.lua_TValue** %3357, align 4, !dbg !3304
  %3359 = ptrtoint %struct.lua_TValue* %3355 to i32, !dbg !3304
  %3360 = ptrtoint %struct.lua_TValue* %3358 to i32, !dbg !3304
  %3361 = sub i32 %3359, %3360, !dbg !3304
  %3362 = sdiv exact i32 %3361, 16, !dbg !3304
  %3363 = load %struct.LClosure** %cl, align 4, !dbg !3304
  %3364 = getelementptr inbounds %struct.LClosure* %3363, i32 0, i32 5, !dbg !3304
  %3365 = load %struct.Proto** %3364, align 4, !dbg !3304
  %3366 = getelementptr inbounds %struct.Proto* %3365, i32 0, i32 3, !dbg !3304
  %3367 = load i8* %3366, align 1, !dbg !3304
  %3368 = zext i8 %3367 to i32, !dbg !3304
  %3369 = sub nsw i32 %3362, %3368, !dbg !3304
  %3370 = sub nsw i32 %3369, 1, !dbg !3304
  store i32 %3370, i32* %n145, align 4, !dbg !3304
  %3371 = load i32* %n145, align 4, !dbg !3305
  %3372 = icmp slt i32 %3371, 0, !dbg !3305
  br i1 %3372, label %3373, label %3374, !dbg !3305

; <label>:3373                                    ; preds = %3350
  store i32 0, i32* %n145, align 4, !dbg !3307
  br label %3374, !dbg !3307

; <label>:3374                                    ; preds = %3373, %3350
  %3375 = load i32* %b144, align 4, !dbg !3308
  %3376 = icmp slt i32 %3375, 0, !dbg !3308
  br i1 %3376, label %3377, label %3411, !dbg !3308

; <label>:3377                                    ; preds = %3374
  %3378 = load i32* %n145, align 4, !dbg !3310
  store i32 %3378, i32* %b144, align 4, !dbg !3310
  %3379 = load %struct.lua_State** %1, align 4, !dbg !3312
  %3380 = getelementptr inbounds %struct.lua_State* %3379, i32 0, i32 9, !dbg !3312
  %3381 = load %struct.lua_TValue** %3380, align 4, !dbg !3312
  %3382 = load %struct.lua_State** %1, align 4, !dbg !3312
  %3383 = getelementptr inbounds %struct.lua_State* %3382, i32 0, i32 5, !dbg !3312
  %3384 = load %struct.lua_TValue** %3383, align 4, !dbg !3312
  %3385 = ptrtoint %struct.lua_TValue* %3381 to i32, !dbg !3312
  %3386 = ptrtoint %struct.lua_TValue* %3384 to i32, !dbg !3312
  %3387 = sub i32 %3385, %3386, !dbg !3312
  %3388 = sdiv exact i32 %3387, 16, !dbg !3312
  %3389 = load i32* %n145, align 4, !dbg !3312
  %3390 = icmp sle i32 %3388, %3389, !dbg !3312
  br i1 %3390, label %3391, label %3394, !dbg !3312

; <label>:3391                                    ; preds = %3377
  %3392 = load %struct.lua_State** %1, align 4, !dbg !3316
  %3393 = load i32* %n145, align 4, !dbg !3316
  call void @luaD_growstack(%struct.lua_State* %3392, i32 %3393), !dbg !3316
  br label %3395, !dbg !3316

; <label>:3394                                    ; preds = %3377
  br label %3395

; <label>:3395                                    ; preds = %3394, %3391
  %3396 = load %struct.CallInfo** %ci, align 4, !dbg !3319
  %3397 = getelementptr inbounds %struct.CallInfo* %3396, i32 0, i32 4, !dbg !3319
  %3398 = bitcast %union.anon* %3397 to %struct.anon*, !dbg !3319
  %3399 = getelementptr inbounds %struct.anon* %3398, i32 0, i32 0, !dbg !3319
  %3400 = load %struct.lua_TValue** %3399, align 4, !dbg !3319
  store %struct.lua_TValue* %3400, %struct.lua_TValue** %base, align 4, !dbg !3319
  %3401 = load %struct.lua_TValue** %base, align 4, !dbg !3321
  %3402 = load i32* %i, align 4, !dbg !3321
  %3403 = lshr i32 %3402, 6, !dbg !3321
  %3404 = and i32 %3403, 255, !dbg !3321
  %3405 = getelementptr inbounds %struct.lua_TValue* %3401, i32 %3404, !dbg !3321
  store %struct.lua_TValue* %3405, %struct.lua_TValue** %ra, align 4, !dbg !3321
  %3406 = load %struct.lua_TValue** %ra, align 4, !dbg !3322
  %3407 = load i32* %n145, align 4, !dbg !3322
  %3408 = getelementptr inbounds %struct.lua_TValue* %3406, i32 %3407, !dbg !3322
  %3409 = load %struct.lua_State** %1, align 4, !dbg !3322
  %3410 = getelementptr inbounds %struct.lua_State* %3409, i32 0, i32 5, !dbg !3322
  store %struct.lua_TValue* %3408, %struct.lua_TValue** %3410, align 4, !dbg !3322
  br label %3411, !dbg !3323

; <label>:3411                                    ; preds = %3395, %3374
  store i32 0, i32* %j, align 4, !dbg !3324
  br label %3412, !dbg !3324

; <label>:3412                                    ; preds = %3436, %3411
  %3413 = load i32* %j, align 4, !dbg !3326
  %3414 = load i32* %b144, align 4, !dbg !3326
  %3415 = icmp slt i32 %3413, %3414, !dbg !3326
  br i1 %3415, label %3416, label %3420, !dbg !3326

; <label>:3416                                    ; preds = %3412
  %3417 = load i32* %j, align 4, !dbg !3329
  %3418 = load i32* %n145, align 4, !dbg !3329
  %3419 = icmp slt i32 %3417, %3418, !dbg !3329
  br label %3420

; <label>:3420                                    ; preds = %3416, %3412
  %3421 = phi i1 [ false, %3412 ], [ %3419, %3416 ]
  br i1 %3421, label %3422, label %3439, !dbg !3331

; <label>:3422                                    ; preds = %3420
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %io1146}, metadata !3333), !dbg !3335
  %3423 = load %struct.lua_TValue** %ra, align 4, !dbg !3335
  %3424 = load i32* %j, align 4, !dbg !3335
  %3425 = getelementptr inbounds %struct.lua_TValue* %3423, i32 %3424, !dbg !3335
  store %struct.lua_TValue* %3425, %struct.lua_TValue** %io1146, align 4, !dbg !3335
  %3426 = load %struct.lua_TValue** %io1146, align 4, !dbg !3335
  %3427 = load %struct.lua_TValue** %base, align 4, !dbg !3335
  %3428 = load i32* %n145, align 4, !dbg !3335
  %3429 = sub i32 0, %3428, !dbg !3335
  %3430 = getelementptr inbounds %struct.lua_TValue* %3427, i32 %3429, !dbg !3335
  %3431 = load i32* %j, align 4, !dbg !3335
  %3432 = getelementptr inbounds %struct.lua_TValue* %3430, i32 %3431, !dbg !3335
  %3433 = bitcast %struct.lua_TValue* %3426 to i8*, !dbg !3335
  %3434 = bitcast %struct.lua_TValue* %3432 to i8*, !dbg !3335
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %3433, i8* %3434, i32 16, i32 8, i1 false), !dbg !3335
  %3435 = load %struct.lua_State** %1, align 4, !dbg !3335
  br label %3436, !dbg !3335

; <label>:3436                                    ; preds = %3422
  %3437 = load i32* %j, align 4, !dbg !3336
  %3438 = add nsw i32 %3437, 1, !dbg !3336
  store i32 %3438, i32* %j, align 4, !dbg !3336
  br label %3412, !dbg !3336

; <label>:3439                                    ; preds = %3420
  br label %3440, !dbg !3337

; <label>:3440                                    ; preds = %3449, %3439
  %3441 = load i32* %j, align 4, !dbg !3339
  %3442 = load i32* %b144, align 4, !dbg !3339
  %3443 = icmp slt i32 %3441, %3442, !dbg !3339
  br i1 %3443, label %3444, label %3452, !dbg !3339

; <label>:3444                                    ; preds = %3440
  %3445 = load %struct.lua_TValue** %ra, align 4, !dbg !3342
  %3446 = load i32* %j, align 4, !dbg !3342
  %3447 = getelementptr inbounds %struct.lua_TValue* %3445, i32 %3446, !dbg !3342
  %3448 = getelementptr inbounds %struct.lua_TValue* %3447, i32 0, i32 1, !dbg !3342
  store i32 0, i32* %3448, align 4, !dbg !3342
  br label %3449, !dbg !3342

; <label>:3449                                    ; preds = %3444
  %3450 = load i32* %j, align 4, !dbg !3343
  %3451 = add nsw i32 %3450, 1, !dbg !3343
  store i32 %3451, i32* %j, align 4, !dbg !3343
  br label %3440, !dbg !3343

; <label>:3452                                    ; preds = %3440
  br label %3454, !dbg !3344

; <label>:3453                                    ; preds = %51
  br label %3454, !dbg !3345

; <label>:3454                                    ; preds = %51, %3453, %3452, %3349, %3282, %3184, %3092, %2966, %2802, %2664, %2622, %2532, %2448, %2354, %2260, %2158, %2136, %2056, %2046, %2022, %1983, %1925, %1835, %1714, %1585, %1495, %1406, %1317, %1228, %1139, %1050, %932, %814, %696, %619, %564, %446, %410, %283, %219, %136, %135, %122, %83, %71, %60
  br label %31, !dbg !3347
}

declare hidden void @luaG_traceexec(%struct.lua_State*) #2

declare hidden void @luaC_upvalbarrier_(%struct.lua_State*, %struct.UpVal*) #2

declare hidden %struct.Table* @luaH_new(%struct.lua_State*) #2

declare hidden void @luaH_resize(%struct.lua_State*, %struct.Table*, i32, i32) #2

declare hidden i32 @luaO_fb2int(i32) #2

declare hidden void @luaC_step(%struct.lua_State*) #2

declare hidden %struct.lua_TValue* @luaH_getstr(%struct.Table*, %struct.TString*) #2

; Function Attrs: nounwind
declare double @fmod(double, double) #0

; Function Attrs: nounwind
declare double @pow(double, double) #0

declare hidden void @luaF_close(%struct.lua_State*, %struct.lua_TValue*) #2

declare hidden i32 @luaD_precall(%struct.lua_State*, %struct.lua_TValue*, i32) #2

declare hidden i32 @luaD_poscall(%struct.lua_State*, %struct.CallInfo*, %struct.lua_TValue*, i32) #2

; Function Attrs: nounwind
define internal i32 @forlimit(%struct.lua_TValue* %obj, i64* %p, i64 %step, i32* %stopnow) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.lua_TValue*, align 4
  %3 = alloca i64*, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 4
  %n = alloca double, align 8
  store %struct.lua_TValue* %obj, %struct.lua_TValue** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %2}, metadata !3348), !dbg !3349
  store i64* %p, i64** %3, align 4
  call void @llvm.dbg.declare(metadata !{i64** %3}, metadata !3350), !dbg !3351
  store i64 %step, i64* %4, align 8
  call void @llvm.dbg.declare(metadata !{i64* %4}, metadata !3352), !dbg !3353
  store i32* %stopnow, i32** %5, align 4
  call void @llvm.dbg.declare(metadata !{i32** %5}, metadata !3354), !dbg !3355
  %6 = load i32** %5, align 4, !dbg !3356
  store i32 0, i32* %6, align 4, !dbg !3356
  %7 = load %struct.lua_TValue** %2, align 4, !dbg !3357
  %8 = load i64** %3, align 4, !dbg !3357
  %9 = load i64* %4, align 8, !dbg !3357
  %10 = icmp slt i64 %9, 0, !dbg !3357
  %11 = select i1 %10, i32 2, i32 1, !dbg !3357
  %12 = call i32 @luaV_tointeger(%struct.lua_TValue* %7, i64* %8, i32 %11), !dbg !3357
  %13 = icmp ne i32 %12, 0, !dbg !3357
  br i1 %13, label %47, label %14, !dbg !3357

; <label>:14                                      ; preds = %0
  call void @llvm.dbg.declare(metadata !{double* %n}, metadata !3359), !dbg !3361
  %15 = load %struct.lua_TValue** %2, align 4, !dbg !3362
  %16 = getelementptr inbounds %struct.lua_TValue* %15, i32 0, i32 1, !dbg !3362
  %17 = load i32* %16, align 4, !dbg !3362
  %18 = icmp eq i32 %17, 3, !dbg !3362
  br i1 %18, label %19, label %24, !dbg !3362

; <label>:19                                      ; preds = %14
  %20 = load %struct.lua_TValue** %2, align 4, !dbg !3364
  %21 = getelementptr inbounds %struct.lua_TValue* %20, i32 0, i32 0, !dbg !3364
  %22 = bitcast %union.Value* %21 to double*, !dbg !3364
  %23 = load double* %22, align 8, !dbg !3364
  store double %23, double* %n, align 8, !dbg !3364
  br i1 true, label %29, label %28, !dbg !3364

; <label>:24                                      ; preds = %14
  %25 = load %struct.lua_TValue** %2, align 4, !dbg !3366
  %26 = call i32 @luaV_tonumber_(%struct.lua_TValue* %25, double* %n), !dbg !3366
  %27 = icmp ne i32 %26, 0, !dbg !3366
  br i1 %27, label %29, label %28, !dbg !3366

; <label>:28                                      ; preds = %24, %19
  store i32 0, i32* %1, !dbg !3368
  br label %48, !dbg !3368

; <label>:29                                      ; preds = %24, %19
  %30 = load double* %n, align 8, !dbg !3369
  %31 = fcmp olt double 0.000000e+00, %30, !dbg !3369
  br i1 %31, label %32, label %39, !dbg !3369

; <label>:32                                      ; preds = %29
  %33 = load i64** %3, align 4, !dbg !3371
  store i64 9223372036854775807, i64* %33, align 8, !dbg !3371
  %34 = load i64* %4, align 8, !dbg !3373
  %35 = icmp slt i64 %34, 0, !dbg !3373
  br i1 %35, label %36, label %38, !dbg !3373

; <label>:36                                      ; preds = %32
  %37 = load i32** %5, align 4, !dbg !3375
  store i32 1, i32* %37, align 4, !dbg !3375
  br label %38, !dbg !3375

; <label>:38                                      ; preds = %36, %32
  br label %46, !dbg !3377

; <label>:39                                      ; preds = %29
  %40 = load i64** %3, align 4, !dbg !3378
  store i64 -9223372036854775808, i64* %40, align 8, !dbg !3378
  %41 = load i64* %4, align 8, !dbg !3380
  %42 = icmp sge i64 %41, 0, !dbg !3380
  br i1 %42, label %43, label %45, !dbg !3380

; <label>:43                                      ; preds = %39
  %44 = load i32** %5, align 4, !dbg !3382
  store i32 1, i32* %44, align 4, !dbg !3382
  br label %45, !dbg !3382

; <label>:45                                      ; preds = %43, %39
  br label %46

; <label>:46                                      ; preds = %45, %38
  br label %47, !dbg !3384

; <label>:47                                      ; preds = %46, %0
  store i32 1, i32* %1, !dbg !3385
  br label %48, !dbg !3385

; <label>:48                                      ; preds = %47, %28
  %49 = load i32* %1, !dbg !3386
  ret i32 %49, !dbg !3386
}

declare hidden void @luaD_call(%struct.lua_State*, %struct.lua_TValue*, i32) #2

declare hidden void @luaH_resizearray(%struct.lua_State*, %struct.Table*, i32) #2

declare hidden void @luaH_setint(%struct.lua_State*, %struct.Table*, i64, %struct.lua_TValue*) #2

; Function Attrs: nounwind
define internal %struct.LClosure* @getcached(%struct.Proto* %p, %struct.UpVal** %encup, %struct.lua_TValue* %base) #0 {
  %1 = alloca %struct.LClosure*, align 4
  %2 = alloca %struct.Proto*, align 4
  %3 = alloca %struct.UpVal**, align 4
  %4 = alloca %struct.lua_TValue*, align 4
  %c = alloca %struct.LClosure*, align 4
  %nup = alloca i32, align 4
  %uv = alloca %struct.Upvaldesc*, align 4
  %i = alloca i32, align 4
  %v = alloca %struct.lua_TValue*, align 4
  store %struct.Proto* %p, %struct.Proto** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.Proto** %2}, metadata !3387), !dbg !3388
  store %struct.UpVal** %encup, %struct.UpVal*** %3, align 4
  call void @llvm.dbg.declare(metadata !{%struct.UpVal*** %3}, metadata !3389), !dbg !3390
  store %struct.lua_TValue* %base, %struct.lua_TValue** %4, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %4}, metadata !3391), !dbg !3392
  call void @llvm.dbg.declare(metadata !{%struct.LClosure** %c}, metadata !3393), !dbg !3394
  %5 = load %struct.Proto** %2, align 4, !dbg !3395
  %6 = getelementptr inbounds %struct.Proto* %5, i32 0, i32 20, !dbg !3395
  %7 = load %struct.LClosure** %6, align 4, !dbg !3395
  store %struct.LClosure* %7, %struct.LClosure** %c, align 4, !dbg !3395
  %8 = load %struct.LClosure** %c, align 4, !dbg !3396
  %9 = icmp ne %struct.LClosure* %8, null, !dbg !3396
  br i1 %9, label %10, label %67, !dbg !3396

; <label>:10                                      ; preds = %0
  call void @llvm.dbg.declare(metadata !{i32* %nup}, metadata !3398), !dbg !3400
  %11 = load %struct.Proto** %2, align 4, !dbg !3401
  %12 = getelementptr inbounds %struct.Proto* %11, i32 0, i32 6, !dbg !3401
  %13 = load i32* %12, align 4, !dbg !3401
  store i32 %13, i32* %nup, align 4, !dbg !3401
  call void @llvm.dbg.declare(metadata !{%struct.Upvaldesc** %uv}, metadata !3402), !dbg !3403
  %14 = load %struct.Proto** %2, align 4, !dbg !3404
  %15 = getelementptr inbounds %struct.Proto* %14, i32 0, i32 19, !dbg !3404
  %16 = load %struct.Upvaldesc** %15, align 4, !dbg !3404
  store %struct.Upvaldesc* %16, %struct.Upvaldesc** %uv, align 4, !dbg !3404
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !3405), !dbg !3406
  store i32 0, i32* %i, align 4, !dbg !3407
  br label %17, !dbg !3407

; <label>:17                                      ; preds = %63, %10
  %18 = load i32* %i, align 4, !dbg !3409
  %19 = load i32* %nup, align 4, !dbg !3409
  %20 = icmp slt i32 %18, %19, !dbg !3409
  br i1 %20, label %21, label %66, !dbg !3409

; <label>:21                                      ; preds = %17
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %v}, metadata !3412), !dbg !3414
  %22 = load i32* %i, align 4, !dbg !3415
  %23 = load %struct.Upvaldesc** %uv, align 4, !dbg !3415
  %24 = getelementptr inbounds %struct.Upvaldesc* %23, i32 %22, !dbg !3415
  %25 = getelementptr inbounds %struct.Upvaldesc* %24, i32 0, i32 1, !dbg !3415
  %26 = load i8* %25, align 1, !dbg !3415
  %27 = zext i8 %26 to i32, !dbg !3415
  %28 = icmp ne i32 %27, 0, !dbg !3415
  br i1 %28, label %29, label %38, !dbg !3415

; <label>:29                                      ; preds = %21
  %30 = load %struct.lua_TValue** %4, align 4, !dbg !3416
  %31 = load i32* %i, align 4, !dbg !3416
  %32 = load %struct.Upvaldesc** %uv, align 4, !dbg !3416
  %33 = getelementptr inbounds %struct.Upvaldesc* %32, i32 %31, !dbg !3416
  %34 = getelementptr inbounds %struct.Upvaldesc* %33, i32 0, i32 2, !dbg !3416
  %35 = load i8* %34, align 1, !dbg !3416
  %36 = zext i8 %35 to i32, !dbg !3416
  %37 = getelementptr inbounds %struct.lua_TValue* %30, i32 %36, !dbg !3416
  br label %50, !dbg !3416

; <label>:38                                      ; preds = %21
  %39 = load i32* %i, align 4, !dbg !3418
  %40 = load %struct.Upvaldesc** %uv, align 4, !dbg !3418
  %41 = getelementptr inbounds %struct.Upvaldesc* %40, i32 %39, !dbg !3418
  %42 = getelementptr inbounds %struct.Upvaldesc* %41, i32 0, i32 2, !dbg !3418
  %43 = load i8* %42, align 1, !dbg !3418
  %44 = zext i8 %43 to i32, !dbg !3418
  %45 = load %struct.UpVal*** %3, align 4, !dbg !3418
  %46 = getelementptr inbounds %struct.UpVal** %45, i32 %44, !dbg !3418
  %47 = load %struct.UpVal** %46, align 4, !dbg !3418
  %48 = getelementptr inbounds %struct.UpVal* %47, i32 0, i32 0, !dbg !3418
  %49 = load %struct.lua_TValue** %48, align 4, !dbg !3418
  br label %50, !dbg !3418

; <label>:50                                      ; preds = %38, %29
  %51 = phi %struct.lua_TValue* [ %37, %29 ], [ %49, %38 ], !dbg !3415
  store %struct.lua_TValue* %51, %struct.lua_TValue** %v, align 4, !dbg !3420
  %52 = load i32* %i, align 4, !dbg !3423
  %53 = load %struct.LClosure** %c, align 4, !dbg !3423
  %54 = getelementptr inbounds %struct.LClosure* %53, i32 0, i32 6, !dbg !3423
  %55 = getelementptr inbounds [1 x %struct.UpVal*]* %54, i32 0, i32 %52, !dbg !3423
  %56 = load %struct.UpVal** %55, align 4, !dbg !3423
  %57 = getelementptr inbounds %struct.UpVal* %56, i32 0, i32 0, !dbg !3423
  %58 = load %struct.lua_TValue** %57, align 4, !dbg !3423
  %59 = load %struct.lua_TValue** %v, align 4, !dbg !3423
  %60 = icmp ne %struct.lua_TValue* %58, %59, !dbg !3423
  br i1 %60, label %61, label %62, !dbg !3423

; <label>:61                                      ; preds = %50
  store %struct.LClosure* null, %struct.LClosure** %1, !dbg !3425
  br label %69, !dbg !3425

; <label>:62                                      ; preds = %50
  br label %63, !dbg !3426

; <label>:63                                      ; preds = %62
  %64 = load i32* %i, align 4, !dbg !3427
  %65 = add nsw i32 %64, 1, !dbg !3427
  store i32 %65, i32* %i, align 4, !dbg !3427
  br label %17, !dbg !3427

; <label>:66                                      ; preds = %17
  br label %67, !dbg !3428

; <label>:67                                      ; preds = %66, %0
  %68 = load %struct.LClosure** %c, align 4, !dbg !3429
  store %struct.LClosure* %68, %struct.LClosure** %1, !dbg !3429
  br label %69, !dbg !3429

; <label>:69                                      ; preds = %67, %61
  %70 = load %struct.LClosure** %1, !dbg !3430
  ret %struct.LClosure* %70, !dbg !3430
}

; Function Attrs: nounwind
define internal void @pushclosure(%struct.lua_State* %L, %struct.Proto* %p, %struct.UpVal** %encup, %struct.lua_TValue* %base, %struct.lua_TValue* %ra) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca %struct.Proto*, align 4
  %3 = alloca %struct.UpVal**, align 4
  %4 = alloca %struct.lua_TValue*, align 4
  %5 = alloca %struct.lua_TValue*, align 4
  %nup = alloca i32, align 4
  %uv = alloca %struct.Upvaldesc*, align 4
  %i = alloca i32, align 4
  %ncl = alloca %struct.LClosure*, align 4
  %io = alloca %struct.lua_TValue*, align 4
  %x_ = alloca %struct.LClosure*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !3431), !dbg !3432
  store %struct.Proto* %p, %struct.Proto** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.Proto** %2}, metadata !3433), !dbg !3434
  store %struct.UpVal** %encup, %struct.UpVal*** %3, align 4
  call void @llvm.dbg.declare(metadata !{%struct.UpVal*** %3}, metadata !3435), !dbg !3436
  store %struct.lua_TValue* %base, %struct.lua_TValue** %4, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %4}, metadata !3437), !dbg !3438
  store %struct.lua_TValue* %ra, %struct.lua_TValue** %5, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %5}, metadata !3439), !dbg !3440
  call void @llvm.dbg.declare(metadata !{i32* %nup}, metadata !3441), !dbg !3442
  %6 = load %struct.Proto** %2, align 4, !dbg !3443
  %7 = getelementptr inbounds %struct.Proto* %6, i32 0, i32 6, !dbg !3443
  %8 = load i32* %7, align 4, !dbg !3443
  store i32 %8, i32* %nup, align 4, !dbg !3443
  call void @llvm.dbg.declare(metadata !{%struct.Upvaldesc** %uv}, metadata !3444), !dbg !3445
  %9 = load %struct.Proto** %2, align 4, !dbg !3446
  %10 = getelementptr inbounds %struct.Proto* %9, i32 0, i32 19, !dbg !3446
  %11 = load %struct.Upvaldesc** %10, align 4, !dbg !3446
  store %struct.Upvaldesc* %11, %struct.Upvaldesc** %uv, align 4, !dbg !3446
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !3447), !dbg !3448
  call void @llvm.dbg.declare(metadata !{%struct.LClosure** %ncl}, metadata !3449), !dbg !3450
  %12 = load %struct.lua_State** %1, align 4, !dbg !3451
  %13 = load i32* %nup, align 4, !dbg !3451
  %14 = call %struct.LClosure* @luaF_newLclosure(%struct.lua_State* %12, i32 %13), !dbg !3451
  store %struct.LClosure* %14, %struct.LClosure** %ncl, align 4, !dbg !3451
  %15 = load %struct.Proto** %2, align 4, !dbg !3452
  %16 = load %struct.LClosure** %ncl, align 4, !dbg !3452
  %17 = getelementptr inbounds %struct.LClosure* %16, i32 0, i32 5, !dbg !3452
  store %struct.Proto* %15, %struct.Proto** %17, align 4, !dbg !3452
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %io}, metadata !3453), !dbg !3455
  %18 = load %struct.lua_TValue** %5, align 4, !dbg !3455
  store %struct.lua_TValue* %18, %struct.lua_TValue** %io, align 4, !dbg !3455
  call void @llvm.dbg.declare(metadata !{%struct.LClosure** %x_}, metadata !3456), !dbg !3455
  %19 = load %struct.LClosure** %ncl, align 4, !dbg !3455
  store %struct.LClosure* %19, %struct.LClosure** %x_, align 4, !dbg !3455
  %20 = load %struct.LClosure** %x_, align 4, !dbg !3455
  %21 = bitcast %struct.LClosure* %20 to %union.GCUnion*, !dbg !3455
  %22 = bitcast %union.GCUnion* %21 to %struct.GCObject*, !dbg !3455
  %23 = load %struct.lua_TValue** %io, align 4, !dbg !3455
  %24 = getelementptr inbounds %struct.lua_TValue* %23, i32 0, i32 0, !dbg !3455
  %25 = bitcast %union.Value* %24 to %struct.GCObject**, !dbg !3455
  store %struct.GCObject* %22, %struct.GCObject** %25, align 4, !dbg !3455
  %26 = load %struct.lua_TValue** %io, align 4, !dbg !3455
  %27 = getelementptr inbounds %struct.lua_TValue* %26, i32 0, i32 1, !dbg !3455
  store i32 70, i32* %27, align 4, !dbg !3455
  store i32 0, i32* %i, align 4, !dbg !3457
  br label %28, !dbg !3457

; <label>:28                                      ; preds = %77, %0
  %29 = load i32* %i, align 4, !dbg !3459
  %30 = load i32* %nup, align 4, !dbg !3459
  %31 = icmp slt i32 %29, %30, !dbg !3459
  br i1 %31, label %32, label %80, !dbg !3459

; <label>:32                                      ; preds = %28
  %33 = load i32* %i, align 4, !dbg !3462
  %34 = load %struct.Upvaldesc** %uv, align 4, !dbg !3462
  %35 = getelementptr inbounds %struct.Upvaldesc* %34, i32 %33, !dbg !3462
  %36 = getelementptr inbounds %struct.Upvaldesc* %35, i32 0, i32 1, !dbg !3462
  %37 = load i8* %36, align 1, !dbg !3462
  %38 = icmp ne i8 %37, 0, !dbg !3462
  br i1 %38, label %39, label %54, !dbg !3462

; <label>:39                                      ; preds = %32
  %40 = load %struct.lua_State** %1, align 4, !dbg !3465
  %41 = load %struct.lua_TValue** %4, align 4, !dbg !3465
  %42 = load i32* %i, align 4, !dbg !3465
  %43 = load %struct.Upvaldesc** %uv, align 4, !dbg !3465
  %44 = getelementptr inbounds %struct.Upvaldesc* %43, i32 %42, !dbg !3465
  %45 = getelementptr inbounds %struct.Upvaldesc* %44, i32 0, i32 2, !dbg !3465
  %46 = load i8* %45, align 1, !dbg !3465
  %47 = zext i8 %46 to i32, !dbg !3465
  %48 = getelementptr inbounds %struct.lua_TValue* %41, i32 %47, !dbg !3465
  %49 = call %struct.UpVal* @luaF_findupval(%struct.lua_State* %40, %struct.lua_TValue* %48), !dbg !3465
  %50 = load i32* %i, align 4, !dbg !3465
  %51 = load %struct.LClosure** %ncl, align 4, !dbg !3465
  %52 = getelementptr inbounds %struct.LClosure* %51, i32 0, i32 6, !dbg !3465
  %53 = getelementptr inbounds [1 x %struct.UpVal*]* %52, i32 0, i32 %50, !dbg !3465
  store %struct.UpVal* %49, %struct.UpVal** %53, align 4, !dbg !3465
  br label %68, !dbg !3465

; <label>:54                                      ; preds = %32
  %55 = load i32* %i, align 4, !dbg !3466
  %56 = load %struct.Upvaldesc** %uv, align 4, !dbg !3466
  %57 = getelementptr inbounds %struct.Upvaldesc* %56, i32 %55, !dbg !3466
  %58 = getelementptr inbounds %struct.Upvaldesc* %57, i32 0, i32 2, !dbg !3466
  %59 = load i8* %58, align 1, !dbg !3466
  %60 = zext i8 %59 to i32, !dbg !3466
  %61 = load %struct.UpVal*** %3, align 4, !dbg !3466
  %62 = getelementptr inbounds %struct.UpVal** %61, i32 %60, !dbg !3466
  %63 = load %struct.UpVal** %62, align 4, !dbg !3466
  %64 = load i32* %i, align 4, !dbg !3466
  %65 = load %struct.LClosure** %ncl, align 4, !dbg !3466
  %66 = getelementptr inbounds %struct.LClosure* %65, i32 0, i32 6, !dbg !3466
  %67 = getelementptr inbounds [1 x %struct.UpVal*]* %66, i32 0, i32 %64, !dbg !3466
  store %struct.UpVal* %63, %struct.UpVal** %67, align 4, !dbg !3466
  br label %68

; <label>:68                                      ; preds = %54, %39
  %69 = load i32* %i, align 4, !dbg !3467
  %70 = load %struct.LClosure** %ncl, align 4, !dbg !3467
  %71 = getelementptr inbounds %struct.LClosure* %70, i32 0, i32 6, !dbg !3467
  %72 = getelementptr inbounds [1 x %struct.UpVal*]* %71, i32 0, i32 %69, !dbg !3467
  %73 = load %struct.UpVal** %72, align 4, !dbg !3467
  %74 = getelementptr inbounds %struct.UpVal* %73, i32 0, i32 1, !dbg !3467
  %75 = load i32* %74, align 4, !dbg !3467
  %76 = add i32 %75, 1, !dbg !3467
  store i32 %76, i32* %74, align 4, !dbg !3467
  br label %77, !dbg !3468

; <label>:77                                      ; preds = %68
  %78 = load i32* %i, align 4, !dbg !3469
  %79 = add nsw i32 %78, 1, !dbg !3469
  store i32 %79, i32* %i, align 4, !dbg !3469
  br label %28, !dbg !3469

; <label>:80                                      ; preds = %28
  %81 = load %struct.Proto** %2, align 4, !dbg !3470
  %82 = getelementptr inbounds %struct.Proto* %81, i32 0, i32 2, !dbg !3470
  %83 = load i8* %82, align 1, !dbg !3470
  %84 = zext i8 %83 to i32, !dbg !3470
  %85 = and i32 %84, 4, !dbg !3470
  %86 = icmp ne i32 %85, 0, !dbg !3470
  br i1 %86, label %91, label %87, !dbg !3470

; <label>:87                                      ; preds = %80
  %88 = load %struct.LClosure** %ncl, align 4, !dbg !3472
  %89 = load %struct.Proto** %2, align 4, !dbg !3472
  %90 = getelementptr inbounds %struct.Proto* %89, i32 0, i32 20, !dbg !3472
  store %struct.LClosure* %88, %struct.LClosure** %90, align 4, !dbg !3472
  br label %91, !dbg !3472

; <label>:91                                      ; preds = %87, %80
  ret void, !dbg !3473
}

declare hidden void @luaD_growstack(%struct.lua_State*, i32) #2

declare hidden %struct.LClosure* @luaF_newLclosure(%struct.lua_State*, i32) #2

declare hidden %struct.UpVal* @luaF_findupval(%struct.lua_State*, %struct.lua_TValue*) #2

; Function Attrs: nounwind
define internal i32 @LEintfloat(i64 %i, double %f) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca double, align 8
  store i64 %i, i64* %2, align 8
  call void @llvm.dbg.declare(metadata !{i64* %2}, metadata !3474), !dbg !3475
  store double %f, double* %3, align 8
  call void @llvm.dbg.declare(metadata !{double* %3}, metadata !3476), !dbg !3477
  %4 = load i64* %2, align 8, !dbg !3478
  %5 = icmp sle i64 -9007199254740992, %4, !dbg !3478
  br i1 %5, label %6, label %9, !dbg !3478

; <label>:6                                       ; preds = %0
  %7 = load i64* %2, align 8, !dbg !3480
  %8 = icmp sle i64 %7, 9007199254740992, !dbg !3480
  br i1 %8, label %23, label %9, !dbg !3480

; <label>:9                                       ; preds = %6, %0
  %10 = load double* %3, align 8, !dbg !3482
  %11 = fcmp oge double %10, 0x43E0000000000000, !dbg !3482
  br i1 %11, label %12, label %13, !dbg !3482

; <label>:12                                      ; preds = %9
  store i32 1, i32* %1, !dbg !3485
  br label %29, !dbg !3485

; <label>:13                                      ; preds = %9
  %14 = load double* %3, align 8, !dbg !3486
  %15 = fcmp oge double %14, 0xC3E0000000000000, !dbg !3486
  br i1 %15, label %16, label %22, !dbg !3486

; <label>:16                                      ; preds = %13
  %17 = load i64* %2, align 8, !dbg !3488
  %18 = load double* %3, align 8, !dbg !3488
  %19 = fptosi double %18 to i64, !dbg !3488
  %20 = icmp sle i64 %17, %19, !dbg !3488
  %21 = zext i1 %20 to i32, !dbg !3488
  store i32 %21, i32* %1, !dbg !3488
  br label %29, !dbg !3488

; <label>:22                                      ; preds = %13
  store i32 0, i32* %1, !dbg !3489
  br label %29, !dbg !3489

; <label>:23                                      ; preds = %6
  %24 = load i64* %2, align 8, !dbg !3490
  %25 = sitofp i64 %24 to double, !dbg !3490
  %26 = load double* %3, align 8, !dbg !3490
  %27 = fcmp ole double %25, %26, !dbg !3490
  %28 = zext i1 %27 to i32, !dbg !3490
  store i32 %28, i32* %1, !dbg !3490
  br label %29, !dbg !3490

; <label>:29                                      ; preds = %23, %22, %16, %12
  %30 = load i32* %1, !dbg !3491
  ret i32 %30, !dbg !3491
}

; Function Attrs: nounwind
define internal i32 @LTintfloat(i64 %i, double %f) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca double, align 8
  store i64 %i, i64* %2, align 8
  call void @llvm.dbg.declare(metadata !{i64* %2}, metadata !3492), !dbg !3493
  store double %f, double* %3, align 8
  call void @llvm.dbg.declare(metadata !{double* %3}, metadata !3494), !dbg !3495
  %4 = load i64* %2, align 8, !dbg !3496
  %5 = icmp sle i64 -9007199254740992, %4, !dbg !3496
  br i1 %5, label %6, label %9, !dbg !3496

; <label>:6                                       ; preds = %0
  %7 = load i64* %2, align 8, !dbg !3498
  %8 = icmp sle i64 %7, 9007199254740992, !dbg !3498
  br i1 %8, label %23, label %9, !dbg !3498

; <label>:9                                       ; preds = %6, %0
  %10 = load double* %3, align 8, !dbg !3500
  %11 = fcmp oge double %10, 0x43E0000000000000, !dbg !3500
  br i1 %11, label %12, label %13, !dbg !3500

; <label>:12                                      ; preds = %9
  store i32 1, i32* %1, !dbg !3503
  br label %29, !dbg !3503

; <label>:13                                      ; preds = %9
  %14 = load double* %3, align 8, !dbg !3504
  %15 = fcmp ogt double %14, 0xC3E0000000000000, !dbg !3504
  br i1 %15, label %16, label %22, !dbg !3504

; <label>:16                                      ; preds = %13
  %17 = load i64* %2, align 8, !dbg !3506
  %18 = load double* %3, align 8, !dbg !3506
  %19 = fptosi double %18 to i64, !dbg !3506
  %20 = icmp slt i64 %17, %19, !dbg !3506
  %21 = zext i1 %20 to i32, !dbg !3506
  store i32 %21, i32* %1, !dbg !3506
  br label %29, !dbg !3506

; <label>:22                                      ; preds = %13
  store i32 0, i32* %1, !dbg !3507
  br label %29, !dbg !3507

; <label>:23                                      ; preds = %6
  %24 = load i64* %2, align 8, !dbg !3508
  %25 = sitofp i64 %24 to double, !dbg !3508
  %26 = load double* %3, align 8, !dbg !3508
  %27 = fcmp olt double %25, %26, !dbg !3508
  %28 = zext i1 %27 to i32, !dbg !3508
  store i32 %28, i32* %1, !dbg !3508
  br label %29, !dbg !3508

; <label>:29                                      ; preds = %23, %22, %16, %12
  %30 = load i32* %1, !dbg !3509
  ret i32 %30, !dbg !3509
}

; Function Attrs: nounwind readonly
declare i32 @strcoll(i8*, i8*) #6

; Function Attrs: nounwind readonly
declare i32 @strlen(i8*) #6

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn }
attributes #8 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!xidane.fname = !{!480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601}
!xidane.function_declaration_type = !{!480, !602, !482, !603, !484, !604, !486, !605, !488, !606, !490, !607, !492, !608, !494, !609, !496, !610, !498, !611, !500, !612, !502, !606, !504, !613, !506, !614, !508, !615, !510, !616, !512, !617, !514, !618, !516, !619, !518, !615, !520, !616, !522, !615, !524, !620, !526, !621, !528, !622, !530, !623, !532, !624, !534, !625, !536, !626, !538, !627, !540, !628, !542, !629, !544, !629, !546, !630, !548, !631, !550, !631, !552, !631, !554, !632, !556, !633, !558, !634, !560, !635, !562, !631, !564, !636, !566, !637, !568, !637, !570, !622, !572, !638, !574, !639, !576, !640, !578, !641, !580, !642, !582, !643, !584, !644, !586, !645, !588, !621, !590, !646, !592, !647, !594, !648, !596, !648, !598, !649, !600, !650}
!xidane.function_declaration_filename = !{!480, !651, !482, !652, !484, !651, !486, !653, !488, !651, !490, !654, !492, !655, !494, !654, !496, !654, !498, !656, !500, !655, !502, !651, !504, !656, !506, !657, !508, !651, !510, !658, !512, !658, !514, !654, !516, !655, !518, !651, !520, !658, !522, !651, !524, !659, !526, !651, !528, !652, !530, !654, !532, !658, !534, !659, !536, !659, !538, !651, !540, !656, !542, !651, !544, !651, !546, !651, !548, !651, !550, !651, !552, !655, !554, !657, !556, !656, !558, !656, !560, !652, !562, !657, !564, !656, !566, !653, !568, !653, !570, !660, !572, !661, !574, !661, !576, !658, !578, !661, !580, !656, !582, !656, !584, !658, !586, !658, !588, !661, !590, !660, !592, !660, !594, !658, !596, !658, !598, !662, !600, !662}
!xidane.ExternC = !{!480, !482, !484, !486, !488, !490, !492, !494, !496, !498, !500, !502, !504, !506, !508, !514, !516, !518, !522, !524, !526, !528, !530, !534, !536, !538, !540, !542, !544, !546, !548, !550, !552, !554, !556, !558, !560, !562, !564, !566, !568, !570, !572, !574, !578, !580, !582, !588, !590, !592, !598, !600}
!llvm.module.flags = !{!663, !664, !665, !666}
!llvm.ident = !{!667}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.0 (tags/RELEASE_350/final)", i1 false, metadata !"", i32 0, metadata !2, metadata !81, metadata !82, metadata !81, metadata !81, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src\lvm.c] [DW_LANG_C99]
!1 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src\5Clvm.c", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!2 = metadata !{metadata !3, metadata !31}
!3 = metadata !{i32 786436, metadata !4, null, metadata !"", i32 18, i64 32, i64 32, i32 0, i32 0, null, metadata !5, i32 0, null, null, null} ; [ DW_TAG_enumeration_type ] [line 18, size 32, align 32, offset 0] [def] [from ]
!4 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/ltm.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!5 = metadata !{metadata !6, metadata !7, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !13, metadata !14, metadata !15, metadata !16, metadata !17, metadata !18, metadata !19, metadata !20, metadata !21, metadata !22, metadata !23, metadata !24, metadata !25, metadata !26, metadata !27, metadata !28, metadata !29, metadata !30}
!6 = metadata !{i32 786472, metadata !"TM_INDEX", i64 0} ; [ DW_TAG_enumerator ] [TM_INDEX :: 0]
!7 = metadata !{i32 786472, metadata !"TM_NEWINDEX", i64 1} ; [ DW_TAG_enumerator ] [TM_NEWINDEX :: 1]
!8 = metadata !{i32 786472, metadata !"TM_GC", i64 2} ; [ DW_TAG_enumerator ] [TM_GC :: 2]
!9 = metadata !{i32 786472, metadata !"TM_MODE", i64 3} ; [ DW_TAG_enumerator ] [TM_MODE :: 3]
!10 = metadata !{i32 786472, metadata !"TM_LEN", i64 4} ; [ DW_TAG_enumerator ] [TM_LEN :: 4]
!11 = metadata !{i32 786472, metadata !"TM_EQ", i64 5} ; [ DW_TAG_enumerator ] [TM_EQ :: 5]
!12 = metadata !{i32 786472, metadata !"TM_ADD", i64 6} ; [ DW_TAG_enumerator ] [TM_ADD :: 6]
!13 = metadata !{i32 786472, metadata !"TM_SUB", i64 7} ; [ DW_TAG_enumerator ] [TM_SUB :: 7]
!14 = metadata !{i32 786472, metadata !"TM_MUL", i64 8} ; [ DW_TAG_enumerator ] [TM_MUL :: 8]
!15 = metadata !{i32 786472, metadata !"TM_MOD", i64 9} ; [ DW_TAG_enumerator ] [TM_MOD :: 9]
!16 = metadata !{i32 786472, metadata !"TM_POW", i64 10} ; [ DW_TAG_enumerator ] [TM_POW :: 10]
!17 = metadata !{i32 786472, metadata !"TM_DIV", i64 11} ; [ DW_TAG_enumerator ] [TM_DIV :: 11]
!18 = metadata !{i32 786472, metadata !"TM_IDIV", i64 12} ; [ DW_TAG_enumerator ] [TM_IDIV :: 12]
!19 = metadata !{i32 786472, metadata !"TM_BAND", i64 13} ; [ DW_TAG_enumerator ] [TM_BAND :: 13]
!20 = metadata !{i32 786472, metadata !"TM_BOR", i64 14} ; [ DW_TAG_enumerator ] [TM_BOR :: 14]
!21 = metadata !{i32 786472, metadata !"TM_BXOR", i64 15} ; [ DW_TAG_enumerator ] [TM_BXOR :: 15]
!22 = metadata !{i32 786472, metadata !"TM_SHL", i64 16} ; [ DW_TAG_enumerator ] [TM_SHL :: 16]
!23 = metadata !{i32 786472, metadata !"TM_SHR", i64 17} ; [ DW_TAG_enumerator ] [TM_SHR :: 17]
!24 = metadata !{i32 786472, metadata !"TM_UNM", i64 18} ; [ DW_TAG_enumerator ] [TM_UNM :: 18]
!25 = metadata !{i32 786472, metadata !"TM_BNOT", i64 19} ; [ DW_TAG_enumerator ] [TM_BNOT :: 19]
!26 = metadata !{i32 786472, metadata !"TM_LT", i64 20} ; [ DW_TAG_enumerator ] [TM_LT :: 20]
!27 = metadata !{i32 786472, metadata !"TM_LE", i64 21} ; [ DW_TAG_enumerator ] [TM_LE :: 21]
!28 = metadata !{i32 786472, metadata !"TM_CONCAT", i64 22} ; [ DW_TAG_enumerator ] [TM_CONCAT :: 22]
!29 = metadata !{i32 786472, metadata !"TM_CALL", i64 23} ; [ DW_TAG_enumerator ] [TM_CALL :: 23]
!30 = metadata !{i32 786472, metadata !"TM_N", i64 24} ; [ DW_TAG_enumerator ] [TM_N :: 24]
!31 = metadata !{i32 786436, metadata !32, null, metadata !"", i32 165, i64 32, i64 32, i32 0, i32 0, null, metadata !33, i32 0, null, null, null} ; [ DW_TAG_enumeration_type ] [line 165, size 32, align 32, offset 0] [def] [from ]
!32 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lopcodes.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!33 = metadata !{metadata !34, metadata !35, metadata !36, metadata !37, metadata !38, metadata !39, metadata !40, metadata !41, metadata !42, metadata !43, metadata !44, metadata !45, metadata !46, metadata !47, metadata !48, metadata !49, metadata !50, metadata !51, metadata !52, metadata !53, metadata !54, metadata !55, metadata !56, metadata !57, metadata !58, metadata !59, metadata !60, metadata !61, metadata !62, metadata !63, metadata !64, metadata !65, metadata !66, metadata !67, metadata !68, metadata !69, metadata !70, metadata !71, metadata !72, metadata !73, metadata !74, metadata !75, metadata !76, metadata !77, metadata !78, metadata !79, metadata !80}
!34 = metadata !{i32 786472, metadata !"OP_MOVE", i64 0} ; [ DW_TAG_enumerator ] [OP_MOVE :: 0]
!35 = metadata !{i32 786472, metadata !"OP_LOADK", i64 1} ; [ DW_TAG_enumerator ] [OP_LOADK :: 1]
!36 = metadata !{i32 786472, metadata !"OP_LOADKX", i64 2} ; [ DW_TAG_enumerator ] [OP_LOADKX :: 2]
!37 = metadata !{i32 786472, metadata !"OP_LOADBOOL", i64 3} ; [ DW_TAG_enumerator ] [OP_LOADBOOL :: 3]
!38 = metadata !{i32 786472, metadata !"OP_LOADNIL", i64 4} ; [ DW_TAG_enumerator ] [OP_LOADNIL :: 4]
!39 = metadata !{i32 786472, metadata !"OP_GETUPVAL", i64 5} ; [ DW_TAG_enumerator ] [OP_GETUPVAL :: 5]
!40 = metadata !{i32 786472, metadata !"OP_GETTABUP", i64 6} ; [ DW_TAG_enumerator ] [OP_GETTABUP :: 6]
!41 = metadata !{i32 786472, metadata !"OP_GETTABLE", i64 7} ; [ DW_TAG_enumerator ] [OP_GETTABLE :: 7]
!42 = metadata !{i32 786472, metadata !"OP_SETTABUP", i64 8} ; [ DW_TAG_enumerator ] [OP_SETTABUP :: 8]
!43 = metadata !{i32 786472, metadata !"OP_SETUPVAL", i64 9} ; [ DW_TAG_enumerator ] [OP_SETUPVAL :: 9]
!44 = metadata !{i32 786472, metadata !"OP_SETTABLE", i64 10} ; [ DW_TAG_enumerator ] [OP_SETTABLE :: 10]
!45 = metadata !{i32 786472, metadata !"OP_NEWTABLE", i64 11} ; [ DW_TAG_enumerator ] [OP_NEWTABLE :: 11]
!46 = metadata !{i32 786472, metadata !"OP_SELF", i64 12} ; [ DW_TAG_enumerator ] [OP_SELF :: 12]
!47 = metadata !{i32 786472, metadata !"OP_ADD", i64 13} ; [ DW_TAG_enumerator ] [OP_ADD :: 13]
!48 = metadata !{i32 786472, metadata !"OP_SUB", i64 14} ; [ DW_TAG_enumerator ] [OP_SUB :: 14]
!49 = metadata !{i32 786472, metadata !"OP_MUL", i64 15} ; [ DW_TAG_enumerator ] [OP_MUL :: 15]
!50 = metadata !{i32 786472, metadata !"OP_MOD", i64 16} ; [ DW_TAG_enumerator ] [OP_MOD :: 16]
!51 = metadata !{i32 786472, metadata !"OP_POW", i64 17} ; [ DW_TAG_enumerator ] [OP_POW :: 17]
!52 = metadata !{i32 786472, metadata !"OP_DIV", i64 18} ; [ DW_TAG_enumerator ] [OP_DIV :: 18]
!53 = metadata !{i32 786472, metadata !"OP_IDIV", i64 19} ; [ DW_TAG_enumerator ] [OP_IDIV :: 19]
!54 = metadata !{i32 786472, metadata !"OP_BAND", i64 20} ; [ DW_TAG_enumerator ] [OP_BAND :: 20]
!55 = metadata !{i32 786472, metadata !"OP_BOR", i64 21} ; [ DW_TAG_enumerator ] [OP_BOR :: 21]
!56 = metadata !{i32 786472, metadata !"OP_BXOR", i64 22} ; [ DW_TAG_enumerator ] [OP_BXOR :: 22]
!57 = metadata !{i32 786472, metadata !"OP_SHL", i64 23} ; [ DW_TAG_enumerator ] [OP_SHL :: 23]
!58 = metadata !{i32 786472, metadata !"OP_SHR", i64 24} ; [ DW_TAG_enumerator ] [OP_SHR :: 24]
!59 = metadata !{i32 786472, metadata !"OP_UNM", i64 25} ; [ DW_TAG_enumerator ] [OP_UNM :: 25]
!60 = metadata !{i32 786472, metadata !"OP_BNOT", i64 26} ; [ DW_TAG_enumerator ] [OP_BNOT :: 26]
!61 = metadata !{i32 786472, metadata !"OP_NOT", i64 27} ; [ DW_TAG_enumerator ] [OP_NOT :: 27]
!62 = metadata !{i32 786472, metadata !"OP_LEN", i64 28} ; [ DW_TAG_enumerator ] [OP_LEN :: 28]
!63 = metadata !{i32 786472, metadata !"OP_CONCAT", i64 29} ; [ DW_TAG_enumerator ] [OP_CONCAT :: 29]
!64 = metadata !{i32 786472, metadata !"OP_JMP", i64 30} ; [ DW_TAG_enumerator ] [OP_JMP :: 30]
!65 = metadata !{i32 786472, metadata !"OP_EQ", i64 31} ; [ DW_TAG_enumerator ] [OP_EQ :: 31]
!66 = metadata !{i32 786472, metadata !"OP_LT", i64 32} ; [ DW_TAG_enumerator ] [OP_LT :: 32]
!67 = metadata !{i32 786472, metadata !"OP_LE", i64 33} ; [ DW_TAG_enumerator ] [OP_LE :: 33]
!68 = metadata !{i32 786472, metadata !"OP_TEST", i64 34} ; [ DW_TAG_enumerator ] [OP_TEST :: 34]
!69 = metadata !{i32 786472, metadata !"OP_TESTSET", i64 35} ; [ DW_TAG_enumerator ] [OP_TESTSET :: 35]
!70 = metadata !{i32 786472, metadata !"OP_CALL", i64 36} ; [ DW_TAG_enumerator ] [OP_CALL :: 36]
!71 = metadata !{i32 786472, metadata !"OP_TAILCALL", i64 37} ; [ DW_TAG_enumerator ] [OP_TAILCALL :: 37]
!72 = metadata !{i32 786472, metadata !"OP_RETURN", i64 38} ; [ DW_TAG_enumerator ] [OP_RETURN :: 38]
!73 = metadata !{i32 786472, metadata !"OP_FORLOOP", i64 39} ; [ DW_TAG_enumerator ] [OP_FORLOOP :: 39]
!74 = metadata !{i32 786472, metadata !"OP_FORPREP", i64 40} ; [ DW_TAG_enumerator ] [OP_FORPREP :: 40]
!75 = metadata !{i32 786472, metadata !"OP_TFORCALL", i64 41} ; [ DW_TAG_enumerator ] [OP_TFORCALL :: 41]
!76 = metadata !{i32 786472, metadata !"OP_TFORLOOP", i64 42} ; [ DW_TAG_enumerator ] [OP_TFORLOOP :: 42]
!77 = metadata !{i32 786472, metadata !"OP_SETLIST", i64 43} ; [ DW_TAG_enumerator ] [OP_SETLIST :: 43]
!78 = metadata !{i32 786472, metadata !"OP_CLOSURE", i64 44} ; [ DW_TAG_enumerator ] [OP_CLOSURE :: 44]
!79 = metadata !{i32 786472, metadata !"OP_VARARG", i64 45} ; [ DW_TAG_enumerator ] [OP_VARARG :: 45]
!80 = metadata !{i32 786472, metadata !"OP_EXTRAARG", i64 46} ; [ DW_TAG_enumerator ] [OP_EXTRAARG :: 46]
!81 = metadata !{}
!82 = metadata !{metadata !83, metadata !363, metadata !367, metadata !370, metadata !371, metadata !374, metadata !375, metadata !376, metadata !379, metadata !382, metadata !385, metadata !386, metadata !389, metadata !392, metadata !393, metadata !455, metadata !460, metadata !463, metadata !467, metadata !470, metadata !473, metadata !474, metadata !479}
!83 = metadata !{i32 786478, metadata !84, metadata !85, metadata !"luaV_tonumber_", metadata !"luaV_tonumber_", metadata !"", i32 72, metadata !86, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_TValue*, double*)* @luaV_tonumber_, null, null, metadata !81, i32 72} ; [ DW_TAG_subprogram ] [line 72] [def] [luaV_tonumber_]
!84 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lvm.c", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!85 = metadata !{i32 786473, metadata !84}        ; [ DW_TAG_file_type ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!86 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !87, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!87 = metadata !{metadata !88, metadata !89, metadata !362}
!88 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!89 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !90} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!90 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !91} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from TValue]
!91 = metadata !{i32 786454, metadata !92, null, metadata !"TValue", i32 115, i64 0, i64 0, i64 0, i32 0, metadata !93} ; [ DW_TAG_typedef ] [TValue] [line 115, size 0, align 0, offset 0] [from lua_TValue]
!92 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lobject.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!93 = metadata !{i32 786451, metadata !92, null, metadata !"lua_TValue", i32 113, i64 128, i64 64, i32 0, i32 0, null, metadata !94, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [lua_TValue] [line 113, size 128, align 64, offset 0] [def] [from ]
!94 = metadata !{metadata !95, metadata !361}
!95 = metadata !{i32 786445, metadata !92, metadata !93, metadata !"value_", i32 114, i64 64, i64 64, i64 0, i32 0, metadata !96} ; [ DW_TAG_member ] [value_] [line 114, size 64, align 64, offset 0] [from Value]
!96 = metadata !{i32 786454, metadata !92, null, metadata !"Value", i32 107, i64 0, i64 0, i64 0, i32 0, metadata !97} ; [ DW_TAG_typedef ] [Value] [line 107, size 0, align 0, offset 0] [from Value]
!97 = metadata !{i32 786455, metadata !92, null, metadata !"Value", i32 100, i64 64, i64 64, i64 0, i32 0, null, metadata !98, i32 0, null, null, null} ; [ DW_TAG_union_type ] [Value] [line 100, size 64, align 64, offset 0] [def] [from ]
!98 = metadata !{metadata !99, metadata !110, metadata !112, metadata !113, metadata !357, metadata !360}
!99 = metadata !{i32 786445, metadata !92, metadata !97, metadata !"gc", i32 101, i64 32, i64 32, i64 0, i32 0, metadata !100} ; [ DW_TAG_member ] [gc] [line 101, size 32, align 32, offset 0] [from ]
!100 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !101} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from GCObject]
!101 = metadata !{i32 786454, metadata !92, null, metadata !"GCObject", i32 72, i64 0, i64 0, i64 0, i32 0, metadata !102} ; [ DW_TAG_typedef ] [GCObject] [line 72, size 0, align 0, offset 0] [from GCObject]
!102 = metadata !{i32 786451, metadata !92, null, metadata !"GCObject", i32 85, i64 64, i64 32, i32 0, i32 0, null, metadata !103, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [GCObject] [line 85, size 64, align 32, offset 0] [def] [from ]
!103 = metadata !{metadata !104, metadata !105, metadata !109}
!104 = metadata !{i32 786445, metadata !92, metadata !102, metadata !"next", i32 86, i64 32, i64 32, i64 0, i32 0, metadata !100} ; [ DW_TAG_member ] [next] [line 86, size 32, align 32, offset 0] [from ]
!105 = metadata !{i32 786445, metadata !92, metadata !102, metadata !"tt", i32 86, i64 8, i64 8, i64 32, i32 0, metadata !106} ; [ DW_TAG_member ] [tt] [line 86, size 8, align 8, offset 32] [from lu_byte]
!106 = metadata !{i32 786454, metadata !107, null, metadata !"lu_byte", i32 35, i64 0, i64 0, i64 0, i32 0, metadata !108} ; [ DW_TAG_typedef ] [lu_byte] [line 35, size 0, align 0, offset 0] [from unsigned char]
!107 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/llimits.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!108 = metadata !{i32 786468, null, null, metadata !"unsigned char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [unsigned char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!109 = metadata !{i32 786445, metadata !92, metadata !102, metadata !"marked", i32 86, i64 8, i64 8, i64 40, i32 0, metadata !106} ; [ DW_TAG_member ] [marked] [line 86, size 8, align 8, offset 40] [from lu_byte]
!110 = metadata !{i32 786445, metadata !92, metadata !97, metadata !"p", i32 102, i64 32, i64 32, i64 0, i32 0, metadata !111} ; [ DW_TAG_member ] [p] [line 102, size 32, align 32, offset 0] [from ]
!111 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!112 = metadata !{i32 786445, metadata !92, metadata !97, metadata !"b", i32 103, i64 32, i64 32, i64 0, i32 0, metadata !88} ; [ DW_TAG_member ] [b] [line 103, size 32, align 32, offset 0] [from int]
!113 = metadata !{i32 786445, metadata !92, metadata !97, metadata !"f", i32 104, i64 32, i64 32, i64 0, i32 0, metadata !114} ; [ DW_TAG_member ] [f] [line 104, size 32, align 32, offset 0] [from lua_CFunction]
!114 = metadata !{i32 786454, metadata !115, null, metadata !"lua_CFunction", i32 105, i64 0, i64 0, i64 0, i32 0, metadata !116} ; [ DW_TAG_typedef ] [lua_CFunction] [line 105, size 0, align 0, offset 0] [from ]
!115 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lua.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!116 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !117} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!117 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !118, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!118 = metadata !{metadata !88, metadata !119}
!119 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !120} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from lua_State]
!120 = metadata !{i32 786454, metadata !115, null, metadata !"lua_State", i32 56, i64 0, i64 0, i64 0, i32 0, metadata !121} ; [ DW_TAG_typedef ] [lua_State] [line 56, size 0, align 0, offset 0] [from lua_State]
!121 = metadata !{i32 786451, metadata !122, null, metadata !"lua_State", i32 159, i64 960, i64 32, i32 0, i32 0, null, metadata !123, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [lua_State] [line 159, size 960, align 32, offset 0] [def] [from ]
!122 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lstate.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!123 = metadata !{metadata !124, metadata !125, metadata !126, metadata !127, metadata !129, metadata !130, metadata !133, metadata !251, metadata !289, metadata !290, metadata !291, metadata !292, metadata !309, metadata !310, metadata !311, metadata !314, metadata !315, metadata !345, metadata !346, metadata !347, metadata !348, metadata !349, metadata !350, metadata !351, metadata !356}
!124 = metadata !{i32 786445, metadata !122, metadata !121, metadata !"next", i32 160, i64 32, i64 32, i64 0, i32 0, metadata !100} ; [ DW_TAG_member ] [next] [line 160, size 32, align 32, offset 0] [from ]
!125 = metadata !{i32 786445, metadata !122, metadata !121, metadata !"tt", i32 160, i64 8, i64 8, i64 32, i32 0, metadata !106} ; [ DW_TAG_member ] [tt] [line 160, size 8, align 8, offset 32] [from lu_byte]
!126 = metadata !{i32 786445, metadata !122, metadata !121, metadata !"marked", i32 160, i64 8, i64 8, i64 40, i32 0, metadata !106} ; [ DW_TAG_member ] [marked] [line 160, size 8, align 8, offset 40] [from lu_byte]
!127 = metadata !{i32 786445, metadata !122, metadata !121, metadata !"nci", i32 161, i64 16, i64 16, i64 48, i32 0, metadata !128} ; [ DW_TAG_member ] [nci] [line 161, size 16, align 16, offset 48] [from unsigned short]
!128 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!129 = metadata !{i32 786445, metadata !122, metadata !121, metadata !"status", i32 162, i64 8, i64 8, i64 64, i32 0, metadata !106} ; [ DW_TAG_member ] [status] [line 162, size 8, align 8, offset 64] [from lu_byte]
!130 = metadata !{i32 786445, metadata !122, metadata !121, metadata !"top", i32 163, i64 32, i64 32, i64 96, i32 0, metadata !131} ; [ DW_TAG_member ] [top] [line 163, size 32, align 32, offset 96] [from StkId]
!131 = metadata !{i32 786454, metadata !92, null, metadata !"StkId", i32 294, i64 0, i64 0, i64 0, i32 0, metadata !132} ; [ DW_TAG_typedef ] [StkId] [line 294, size 0, align 0, offset 0] [from ]
!132 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !91} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from TValue]
!133 = metadata !{i32 786445, metadata !122, metadata !121, metadata !"l_G", i32 164, i64 32, i64 32, i64 128, i32 0, metadata !134} ; [ DW_TAG_member ] [l_G] [line 164, size 32, align 32, offset 128] [from ]
!134 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !135} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from global_State]
!135 = metadata !{i32 786454, metadata !122, null, metadata !"global_State", i32 153, i64 0, i64 0, i64 0, i32 0, metadata !136} ; [ DW_TAG_typedef ] [global_State] [line 153, size 0, align 0, offset 0] [from global_State]
!136 = metadata !{i32 786451, metadata !122, null, metadata !"global_State", i32 118, i64 5568, i64 64, i32 0, i32 0, null, metadata !137, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [global_State] [line 118, size 5568, align 64, offset 0] [def] [from ]
!137 = metadata !{metadata !138, metadata !146, metadata !147, metadata !150, metadata !151, metadata !153, metadata !154, metadata !178, metadata !179, metadata !180, metadata !181, metadata !182, metadata !183, metadata !184, metadata !185, metadata !187, metadata !188, metadata !189, metadata !190, metadata !191, metadata !192, metadata !193, metadata !194, metadata !195, metadata !197, metadata !198, metadata !199, metadata !200, metadata !201, metadata !202, metadata !207, metadata !208, metadata !212, metadata !246}
!138 = metadata !{i32 786445, metadata !122, metadata !136, metadata !"frealloc", i32 119, i64 32, i64 32, i64 0, i32 0, metadata !139} ; [ DW_TAG_member ] [frealloc] [line 119, size 32, align 32, offset 0] [from lua_Alloc]
!139 = metadata !{i32 786454, metadata !115, null, metadata !"lua_Alloc", i32 124, i64 0, i64 0, i64 0, i32 0, metadata !140} ; [ DW_TAG_typedef ] [lua_Alloc] [line 124, size 0, align 0, offset 0] [from ]
!140 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !141} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!141 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !142, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!142 = metadata !{metadata !111, metadata !111, metadata !111, metadata !143, metadata !143}
!143 = metadata !{i32 786454, metadata !144, null, metadata !"size_t", i32 216, i64 0, i64 0, i64 0, i32 0, metadata !145} ; [ DW_TAG_typedef ] [size_t] [line 216, size 0, align 0, offset 0] [from unsigned int]
!144 = metadata !{metadata !"D:/Xilinx/SDx/2016.3/SDK/gnu/aarch32/nt/gcc-arm-linux-gnueabi/lib/gcc/arm-linux-gnueabihf/5.2.1/include\5Cstddef.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!145 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!146 = metadata !{i32 786445, metadata !122, metadata !136, metadata !"ud", i32 120, i64 32, i64 32, i64 32, i32 0, metadata !111} ; [ DW_TAG_member ] [ud] [line 120, size 32, align 32, offset 32] [from ]
!147 = metadata !{i32 786445, metadata !122, metadata !136, metadata !"totalbytes", i32 121, i64 32, i64 32, i64 64, i32 0, metadata !148} ; [ DW_TAG_member ] [totalbytes] [line 121, size 32, align 32, offset 64] [from l_mem]
!148 = metadata !{i32 786454, metadata !107, null, metadata !"l_mem", i32 27, i64 0, i64 0, i64 0, i32 0, metadata !149} ; [ DW_TAG_typedef ] [l_mem] [line 27, size 0, align 0, offset 0] [from ptrdiff_t]
!149 = metadata !{i32 786454, metadata !144, null, metadata !"ptrdiff_t", i32 149, i64 0, i64 0, i64 0, i32 0, metadata !88} ; [ DW_TAG_typedef ] [ptrdiff_t] [line 149, size 0, align 0, offset 0] [from int]
!150 = metadata !{i32 786445, metadata !122, metadata !136, metadata !"GCdebt", i32 122, i64 32, i64 32, i64 96, i32 0, metadata !148} ; [ DW_TAG_member ] [GCdebt] [line 122, size 32, align 32, offset 96] [from l_mem]
!151 = metadata !{i32 786445, metadata !122, metadata !136, metadata !"GCmemtrav", i32 123, i64 32, i64 32, i64 128, i32 0, metadata !152} ; [ DW_TAG_member ] [GCmemtrav] [line 123, size 32, align 32, offset 128] [from lu_mem]
!152 = metadata !{i32 786454, metadata !107, null, metadata !"lu_mem", i32 26, i64 0, i64 0, i64 0, i32 0, metadata !143} ; [ DW_TAG_typedef ] [lu_mem] [line 26, size 0, align 0, offset 0] [from size_t]
!153 = metadata !{i32 786445, metadata !122, metadata !136, metadata !"GCestimate", i32 124, i64 32, i64 32, i64 160, i32 0, metadata !152} ; [ DW_TAG_member ] [GCestimate] [line 124, size 32, align 32, offset 160] [from lu_mem]
!154 = metadata !{i32 786445, metadata !122, metadata !136, metadata !"strt", i32 125, i64 96, i64 32, i64 192, i32 0, metadata !155} ; [ DW_TAG_member ] [strt] [line 125, size 96, align 32, offset 192] [from stringtable]
!155 = metadata !{i32 786454, metadata !122, null, metadata !"stringtable", i32 62, i64 0, i64 0, i64 0, i32 0, metadata !156} ; [ DW_TAG_typedef ] [stringtable] [line 62, size 0, align 0, offset 0] [from stringtable]
!156 = metadata !{i32 786451, metadata !122, null, metadata !"stringtable", i32 58, i64 96, i64 32, i32 0, i32 0, null, metadata !157, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [stringtable] [line 58, size 96, align 32, offset 0] [def] [from ]
!157 = metadata !{metadata !158, metadata !176, metadata !177}
!158 = metadata !{i32 786445, metadata !122, metadata !156, metadata !"hash", i32 59, i64 32, i64 32, i64 0, i32 0, metadata !159} ; [ DW_TAG_member ] [hash] [line 59, size 32, align 32, offset 0] [from ]
!159 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !160} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!160 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !161} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from TString]
!161 = metadata !{i32 786454, metadata !92, null, metadata !"TString", i32 312, i64 0, i64 0, i64 0, i32 0, metadata !162} ; [ DW_TAG_typedef ] [TString] [line 312, size 0, align 0, offset 0] [from TString]
!162 = metadata !{i32 786451, metadata !92, null, metadata !"TString", i32 303, i64 128, i64 32, i32 0, i32 0, null, metadata !163, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [TString] [line 303, size 128, align 32, offset 0] [def] [from ]
!163 = metadata !{metadata !164, metadata !165, metadata !166, metadata !167, metadata !168, metadata !169, metadata !170}
!164 = metadata !{i32 786445, metadata !92, metadata !162, metadata !"next", i32 304, i64 32, i64 32, i64 0, i32 0, metadata !100} ; [ DW_TAG_member ] [next] [line 304, size 32, align 32, offset 0] [from ]
!165 = metadata !{i32 786445, metadata !92, metadata !162, metadata !"tt", i32 304, i64 8, i64 8, i64 32, i32 0, metadata !106} ; [ DW_TAG_member ] [tt] [line 304, size 8, align 8, offset 32] [from lu_byte]
!166 = metadata !{i32 786445, metadata !92, metadata !162, metadata !"marked", i32 304, i64 8, i64 8, i64 40, i32 0, metadata !106} ; [ DW_TAG_member ] [marked] [line 304, size 8, align 8, offset 40] [from lu_byte]
!167 = metadata !{i32 786445, metadata !92, metadata !162, metadata !"extra", i32 305, i64 8, i64 8, i64 48, i32 0, metadata !106} ; [ DW_TAG_member ] [extra] [line 305, size 8, align 8, offset 48] [from lu_byte]
!168 = metadata !{i32 786445, metadata !92, metadata !162, metadata !"shrlen", i32 306, i64 8, i64 8, i64 56, i32 0, metadata !106} ; [ DW_TAG_member ] [shrlen] [line 306, size 8, align 8, offset 56] [from lu_byte]
!169 = metadata !{i32 786445, metadata !92, metadata !162, metadata !"hash", i32 307, i64 32, i64 32, i64 64, i32 0, metadata !145} ; [ DW_TAG_member ] [hash] [line 307, size 32, align 32, offset 64] [from unsigned int]
!170 = metadata !{i32 786445, metadata !92, metadata !162, metadata !"u", i32 311, i64 32, i64 32, i64 96, i32 0, metadata !171} ; [ DW_TAG_member ] [u] [line 311, size 32, align 32, offset 96] [from ]
!171 = metadata !{i32 786455, metadata !92, metadata !162, metadata !"", i32 308, i64 32, i64 32, i64 0, i32 0, null, metadata !172, i32 0, null, null, null} ; [ DW_TAG_union_type ] [line 308, size 32, align 32, offset 0] [def] [from ]
!172 = metadata !{metadata !173, metadata !174}
!173 = metadata !{i32 786445, metadata !92, metadata !171, metadata !"lnglen", i32 309, i64 32, i64 32, i64 0, i32 0, metadata !143} ; [ DW_TAG_member ] [lnglen] [line 309, size 32, align 32, offset 0] [from size_t]
!174 = metadata !{i32 786445, metadata !92, metadata !171, metadata !"hnext", i32 310, i64 32, i64 32, i64 0, i32 0, metadata !175} ; [ DW_TAG_member ] [hnext] [line 310, size 32, align 32, offset 0] [from ]
!175 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !162} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from TString]
!176 = metadata !{i32 786445, metadata !122, metadata !156, metadata !"nuse", i32 60, i64 32, i64 32, i64 32, i32 0, metadata !88} ; [ DW_TAG_member ] [nuse] [line 60, size 32, align 32, offset 32] [from int]
!177 = metadata !{i32 786445, metadata !122, metadata !156, metadata !"size", i32 61, i64 32, i64 32, i64 64, i32 0, metadata !88} ; [ DW_TAG_member ] [size] [line 61, size 32, align 32, offset 64] [from int]
!178 = metadata !{i32 786445, metadata !122, metadata !136, metadata !"l_registry", i32 126, i64 128, i64 64, i64 320, i32 0, metadata !91} ; [ DW_TAG_member ] [l_registry] [line 126, size 128, align 64, offset 320] [from TValue]
!179 = metadata !{i32 786445, metadata !122, metadata !136, metadata !"seed", i32 127, i64 32, i64 32, i64 448, i32 0, metadata !145} ; [ DW_TAG_member ] [seed] [line 127, size 32, align 32, offset 448] [from unsigned int]
!180 = metadata !{i32 786445, metadata !122, metadata !136, metadata !"currentwhite", i32 128, i64 8, i64 8, i64 480, i32 0, metadata !106} ; [ DW_TAG_member ] [currentwhite] [line 128, size 8, align 8, offset 480] [from lu_byte]
!181 = metadata !{i32 786445, metadata !122, metadata !136, metadata !"gcstate", i32 129, i64 8, i64 8, i64 488, i32 0, metadata !106} ; [ DW_TAG_member ] [gcstate] [line 129, size 8, align 8, offset 488] [from lu_byte]
!182 = metadata !{i32 786445, metadata !122, metadata !136, metadata !"gckind", i32 130, i64 8, i64 8, i64 496, i32 0, metadata !106} ; [ DW_TAG_member ] [gckind] [line 130, size 8, align 8, offset 496] [from lu_byte]
!183 = metadata !{i32 786445, metadata !122, metadata !136, metadata !"gcrunning", i32 131, i64 8, i64 8, i64 504, i32 0, metadata !106} ; [ DW_TAG_member ] [gcrunning] [line 131, size 8, align 8, offset 504] [from lu_byte]
!184 = metadata !{i32 786445, metadata !122, metadata !136, metadata !"allgc", i32 132, i64 32, i64 32, i64 512, i32 0, metadata !100} ; [ DW_TAG_member ] [allgc] [line 132, size 32, align 32, offset 512] [from ]
!185 = metadata !{i32 786445, metadata !122, metadata !136, metadata !"sweepgc", i32 133, i64 32, i64 32, i64 544, i32 0, metadata !186} ; [ DW_TAG_member ] [sweepgc] [line 133, size 32, align 32, offset 544] [from ]
!186 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !100} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!187 = metadata !{i32 786445, metadata !122, metadata !136, metadata !"finobj", i32 134, i64 32, i64 32, i64 576, i32 0, metadata !100} ; [ DW_TAG_member ] [finobj] [line 134, size 32, align 32, offset 576] [from ]
!188 = metadata !{i32 786445, metadata !122, metadata !136, metadata !"gray", i32 135, i64 32, i64 32, i64 608, i32 0, metadata !100} ; [ DW_TAG_member ] [gray] [line 135, size 32, align 32, offset 608] [from ]
!189 = metadata !{i32 786445, metadata !122, metadata !136, metadata !"grayagain", i32 136, i64 32, i64 32, i64 640, i32 0, metadata !100} ; [ DW_TAG_member ] [grayagain] [line 136, size 32, align 32, offset 640] [from ]
!190 = metadata !{i32 786445, metadata !122, metadata !136, metadata !"weak", i32 137, i64 32, i64 32, i64 672, i32 0, metadata !100} ; [ DW_TAG_member ] [weak] [line 137, size 32, align 32, offset 672] [from ]
!191 = metadata !{i32 786445, metadata !122, metadata !136, metadata !"ephemeron", i32 138, i64 32, i64 32, i64 704, i32 0, metadata !100} ; [ DW_TAG_member ] [ephemeron] [line 138, size 32, align 32, offset 704] [from ]
!192 = metadata !{i32 786445, metadata !122, metadata !136, metadata !"allweak", i32 139, i64 32, i64 32, i64 736, i32 0, metadata !100} ; [ DW_TAG_member ] [allweak] [line 139, size 32, align 32, offset 736] [from ]
!193 = metadata !{i32 786445, metadata !122, metadata !136, metadata !"tobefnz", i32 140, i64 32, i64 32, i64 768, i32 0, metadata !100} ; [ DW_TAG_member ] [tobefnz] [line 140, size 32, align 32, offset 768] [from ]
!194 = metadata !{i32 786445, metadata !122, metadata !136, metadata !"fixedgc", i32 141, i64 32, i64 32, i64 800, i32 0, metadata !100} ; [ DW_TAG_member ] [fixedgc] [line 141, size 32, align 32, offset 800] [from ]
!195 = metadata !{i32 786445, metadata !122, metadata !136, metadata !"twups", i32 142, i64 32, i64 32, i64 832, i32 0, metadata !196} ; [ DW_TAG_member ] [twups] [line 142, size 32, align 32, offset 832] [from ]
!196 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !121} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from lua_State]
!197 = metadata !{i32 786445, metadata !122, metadata !136, metadata !"gcfinnum", i32 143, i64 32, i64 32, i64 864, i32 0, metadata !145} ; [ DW_TAG_member ] [gcfinnum] [line 143, size 32, align 32, offset 864] [from unsigned int]
!198 = metadata !{i32 786445, metadata !122, metadata !136, metadata !"gcpause", i32 144, i64 32, i64 32, i64 896, i32 0, metadata !88} ; [ DW_TAG_member ] [gcpause] [line 144, size 32, align 32, offset 896] [from int]
!199 = metadata !{i32 786445, metadata !122, metadata !136, metadata !"gcstepmul", i32 145, i64 32, i64 32, i64 928, i32 0, metadata !88} ; [ DW_TAG_member ] [gcstepmul] [line 145, size 32, align 32, offset 928] [from int]
!200 = metadata !{i32 786445, metadata !122, metadata !136, metadata !"panic", i32 146, i64 32, i64 32, i64 960, i32 0, metadata !114} ; [ DW_TAG_member ] [panic] [line 146, size 32, align 32, offset 960] [from lua_CFunction]
!201 = metadata !{i32 786445, metadata !122, metadata !136, metadata !"mainthread", i32 147, i64 32, i64 32, i64 992, i32 0, metadata !196} ; [ DW_TAG_member ] [mainthread] [line 147, size 32, align 32, offset 992] [from ]
!202 = metadata !{i32 786445, metadata !122, metadata !136, metadata !"version", i32 148, i64 32, i64 32, i64 1024, i32 0, metadata !203} ; [ DW_TAG_member ] [version] [line 148, size 32, align 32, offset 1024] [from ]
!203 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !204} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!204 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !205} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from lua_Number]
!205 = metadata !{i32 786454, metadata !115, null, metadata !"lua_Number", i32 89, i64 0, i64 0, i64 0, i32 0, metadata !206} ; [ DW_TAG_typedef ] [lua_Number] [line 89, size 0, align 0, offset 0] [from double]
!206 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!207 = metadata !{i32 786445, metadata !122, metadata !136, metadata !"memerrmsg", i32 149, i64 32, i64 32, i64 1056, i32 0, metadata !160} ; [ DW_TAG_member ] [memerrmsg] [line 149, size 32, align 32, offset 1056] [from ]
!208 = metadata !{i32 786445, metadata !122, metadata !136, metadata !"tmname", i32 150, i64 768, i64 32, i64 1088, i32 0, metadata !209} ; [ DW_TAG_member ] [tmname] [line 150, size 768, align 32, offset 1088] [from ]
!209 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 768, i64 32, i32 0, i32 0, metadata !160, metadata !210, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 768, align 32, offset 0] [from ]
!210 = metadata !{metadata !211}
!211 = metadata !{i32 786465, i64 0, i64 24}      ; [ DW_TAG_subrange_type ] [0, 23]
!212 = metadata !{i32 786445, metadata !122, metadata !136, metadata !"mt", i32 151, i64 288, i64 32, i64 1856, i32 0, metadata !213} ; [ DW_TAG_member ] [mt] [line 151, size 288, align 32, offset 1856] [from ]
!213 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 288, i64 32, i32 0, i32 0, metadata !214, metadata !244, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 288, align 32, offset 0] [from ]
!214 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !215} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from Table]
!215 = metadata !{i32 786451, metadata !92, null, metadata !"Table", i32 497, i64 256, i64 32, i32 0, i32 0, null, metadata !216, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [Table] [line 497, size 256, align 32, offset 0] [def] [from ]
!216 = metadata !{metadata !217, metadata !218, metadata !219, metadata !220, metadata !221, metadata !222, metadata !223, metadata !224, metadata !241, metadata !242, metadata !243}
!217 = metadata !{i32 786445, metadata !92, metadata !215, metadata !"next", i32 498, i64 32, i64 32, i64 0, i32 0, metadata !100} ; [ DW_TAG_member ] [next] [line 498, size 32, align 32, offset 0] [from ]
!218 = metadata !{i32 786445, metadata !92, metadata !215, metadata !"tt", i32 498, i64 8, i64 8, i64 32, i32 0, metadata !106} ; [ DW_TAG_member ] [tt] [line 498, size 8, align 8, offset 32] [from lu_byte]
!219 = metadata !{i32 786445, metadata !92, metadata !215, metadata !"marked", i32 498, i64 8, i64 8, i64 40, i32 0, metadata !106} ; [ DW_TAG_member ] [marked] [line 498, size 8, align 8, offset 40] [from lu_byte]
!220 = metadata !{i32 786445, metadata !92, metadata !215, metadata !"flags", i32 499, i64 8, i64 8, i64 48, i32 0, metadata !106} ; [ DW_TAG_member ] [flags] [line 499, size 8, align 8, offset 48] [from lu_byte]
!221 = metadata !{i32 786445, metadata !92, metadata !215, metadata !"lsizenode", i32 500, i64 8, i64 8, i64 56, i32 0, metadata !106} ; [ DW_TAG_member ] [lsizenode] [line 500, size 8, align 8, offset 56] [from lu_byte]
!222 = metadata !{i32 786445, metadata !92, metadata !215, metadata !"sizearray", i32 501, i64 32, i64 32, i64 64, i32 0, metadata !145} ; [ DW_TAG_member ] [sizearray] [line 501, size 32, align 32, offset 64] [from unsigned int]
!223 = metadata !{i32 786445, metadata !92, metadata !215, metadata !"array", i32 502, i64 32, i64 32, i64 96, i32 0, metadata !132} ; [ DW_TAG_member ] [array] [line 502, size 32, align 32, offset 96] [from ]
!224 = metadata !{i32 786445, metadata !92, metadata !215, metadata !"node", i32 503, i64 32, i64 32, i64 128, i32 0, metadata !225} ; [ DW_TAG_member ] [node] [line 503, size 32, align 32, offset 128] [from ]
!225 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !226} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from Node]
!226 = metadata !{i32 786454, metadata !92, null, metadata !"Node", i32 494, i64 0, i64 0, i64 0, i32 0, metadata !227} ; [ DW_TAG_typedef ] [Node] [line 494, size 0, align 0, offset 0] [from Node]
!227 = metadata !{i32 786451, metadata !92, null, metadata !"Node", i32 491, i64 256, i64 64, i32 0, i32 0, null, metadata !228, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [Node] [line 491, size 256, align 64, offset 0] [def] [from ]
!228 = metadata !{metadata !229, metadata !230}
!229 = metadata !{i32 786445, metadata !92, metadata !227, metadata !"i_val", i32 492, i64 128, i64 64, i64 0, i32 0, metadata !91} ; [ DW_TAG_member ] [i_val] [line 492, size 128, align 64, offset 0] [from TValue]
!230 = metadata !{i32 786445, metadata !92, metadata !227, metadata !"i_key", i32 493, i64 128, i64 64, i64 128, i32 0, metadata !231} ; [ DW_TAG_member ] [i_key] [line 493, size 128, align 64, offset 128] [from TKey]
!231 = metadata !{i32 786454, metadata !92, null, metadata !"TKey", i32 481, i64 0, i64 0, i64 0, i32 0, metadata !232} ; [ DW_TAG_typedef ] [TKey] [line 481, size 0, align 0, offset 0] [from TKey]
!232 = metadata !{i32 786455, metadata !92, null, metadata !"TKey", i32 475, i64 128, i64 64, i64 0, i32 0, null, metadata !233, i32 0, null, null, null} ; [ DW_TAG_union_type ] [TKey] [line 475, size 128, align 64, offset 0] [def] [from ]
!233 = metadata !{metadata !234, metadata !240}
!234 = metadata !{i32 786445, metadata !92, metadata !232, metadata !"nk", i32 479, i64 128, i64 64, i64 0, i32 0, metadata !235} ; [ DW_TAG_member ] [nk] [line 479, size 128, align 64, offset 0] [from ]
!235 = metadata !{i32 786451, metadata !92, metadata !232, metadata !"", i32 476, i64 128, i64 64, i32 0, i32 0, null, metadata !236, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 476, size 128, align 64, offset 0] [def] [from ]
!236 = metadata !{metadata !237, metadata !238, metadata !239}
!237 = metadata !{i32 786445, metadata !92, metadata !235, metadata !"value_", i32 477, i64 64, i64 64, i64 0, i32 0, metadata !96} ; [ DW_TAG_member ] [value_] [line 477, size 64, align 64, offset 0] [from Value]
!238 = metadata !{i32 786445, metadata !92, metadata !235, metadata !"tt_", i32 477, i64 32, i64 32, i64 64, i32 0, metadata !88} ; [ DW_TAG_member ] [tt_] [line 477, size 32, align 32, offset 64] [from int]
!239 = metadata !{i32 786445, metadata !92, metadata !235, metadata !"next", i32 478, i64 32, i64 32, i64 96, i32 0, metadata !88} ; [ DW_TAG_member ] [next] [line 478, size 32, align 32, offset 96] [from int]
!240 = metadata !{i32 786445, metadata !92, metadata !232, metadata !"tvk", i32 480, i64 128, i64 64, i64 0, i32 0, metadata !91} ; [ DW_TAG_member ] [tvk] [line 480, size 128, align 64, offset 0] [from TValue]
!241 = metadata !{i32 786445, metadata !92, metadata !215, metadata !"lastfree", i32 504, i64 32, i64 32, i64 160, i32 0, metadata !225} ; [ DW_TAG_member ] [lastfree] [line 504, size 32, align 32, offset 160] [from ]
!242 = metadata !{i32 786445, metadata !92, metadata !215, metadata !"metatable", i32 505, i64 32, i64 32, i64 192, i32 0, metadata !214} ; [ DW_TAG_member ] [metatable] [line 505, size 32, align 32, offset 192] [from ]
!243 = metadata !{i32 786445, metadata !92, metadata !215, metadata !"gclist", i32 506, i64 32, i64 32, i64 224, i32 0, metadata !100} ; [ DW_TAG_member ] [gclist] [line 506, size 32, align 32, offset 224] [from ]
!244 = metadata !{metadata !245}
!245 = metadata !{i32 786465, i64 0, i64 9}       ; [ DW_TAG_subrange_type ] [0, 8]
!246 = metadata !{i32 786445, metadata !122, metadata !136, metadata !"strcache", i32 152, i64 3392, i64 32, i64 2144, i32 0, metadata !247} ; [ DW_TAG_member ] [strcache] [line 152, size 3392, align 32, offset 2144] [from ]
!247 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 3392, i64 32, i32 0, i32 0, metadata !160, metadata !248, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 3392, align 32, offset 0] [from ]
!248 = metadata !{metadata !249, metadata !250}
!249 = metadata !{i32 786465, i64 0, i64 53}      ; [ DW_TAG_subrange_type ] [0, 52]
!250 = metadata !{i32 786465, i64 0, i64 2}       ; [ DW_TAG_subrange_type ] [0, 1]
!251 = metadata !{i32 786445, metadata !122, metadata !121, metadata !"ci", i32 165, i64 32, i64 32, i64 160, i32 0, metadata !252} ; [ DW_TAG_member ] [ci] [line 165, size 32, align 32, offset 160] [from ]
!252 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !253} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from CallInfo]
!253 = metadata !{i32 786454, metadata !122, null, metadata !"CallInfo", i32 92, i64 0, i64 0, i64 0, i32 0, metadata !254} ; [ DW_TAG_typedef ] [CallInfo] [line 92, size 0, align 0, offset 0] [from CallInfo]
!254 = metadata !{i32 786451, metadata !122, null, metadata !"CallInfo", i32 74, i64 288, i64 32, i32 0, i32 0, null, metadata !255, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [CallInfo] [line 74, size 288, align 32, offset 0] [def] [from ]
!255 = metadata !{metadata !256, metadata !257, metadata !258, metadata !260, metadata !261, metadata !285, metadata !286, metadata !288}
!256 = metadata !{i32 786445, metadata !122, metadata !254, metadata !"func", i32 75, i64 32, i64 32, i64 0, i32 0, metadata !131} ; [ DW_TAG_member ] [func] [line 75, size 32, align 32, offset 0] [from StkId]
!257 = metadata !{i32 786445, metadata !122, metadata !254, metadata !"top", i32 76, i64 32, i64 32, i64 32, i32 0, metadata !131} ; [ DW_TAG_member ] [top] [line 76, size 32, align 32, offset 32] [from StkId]
!258 = metadata !{i32 786445, metadata !122, metadata !254, metadata !"previous", i32 77, i64 32, i64 32, i64 64, i32 0, metadata !259} ; [ DW_TAG_member ] [previous] [line 77, size 32, align 32, offset 64] [from ]
!259 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !254} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from CallInfo]
!260 = metadata !{i32 786445, metadata !122, metadata !254, metadata !"next", i32 77, i64 32, i64 32, i64 96, i32 0, metadata !259} ; [ DW_TAG_member ] [next] [line 77, size 32, align 32, offset 96] [from ]
!261 = metadata !{i32 786445, metadata !122, metadata !254, metadata !"u", i32 88, i64 96, i64 32, i64 128, i32 0, metadata !262} ; [ DW_TAG_member ] [u] [line 88, size 96, align 32, offset 128] [from ]
!262 = metadata !{i32 786455, metadata !122, metadata !254, metadata !"", i32 78, i64 96, i64 32, i64 0, i32 0, null, metadata !263, i32 0, null, null, null} ; [ DW_TAG_union_type ] [line 78, size 96, align 32, offset 0] [def] [from ]
!263 = metadata !{metadata !264, metadata !272}
!264 = metadata !{i32 786445, metadata !122, metadata !262, metadata !"l", i32 82, i64 64, i64 32, i64 0, i32 0, metadata !265} ; [ DW_TAG_member ] [l] [line 82, size 64, align 32, offset 0] [from ]
!265 = metadata !{i32 786451, metadata !122, metadata !262, metadata !"", i32 79, i64 64, i64 32, i32 0, i32 0, null, metadata !266, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 79, size 64, align 32, offset 0] [def] [from ]
!266 = metadata !{metadata !267, metadata !268}
!267 = metadata !{i32 786445, metadata !122, metadata !265, metadata !"base", i32 80, i64 32, i64 32, i64 0, i32 0, metadata !131} ; [ DW_TAG_member ] [base] [line 80, size 32, align 32, offset 0] [from StkId]
!268 = metadata !{i32 786445, metadata !122, metadata !265, metadata !"savedpc", i32 81, i64 32, i64 32, i64 32, i32 0, metadata !269} ; [ DW_TAG_member ] [savedpc] [line 81, size 32, align 32, offset 32] [from ]
!269 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !270} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!270 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !271} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from Instruction]
!271 = metadata !{i32 786454, metadata !107, null, metadata !"Instruction", i32 163, i64 0, i64 0, i64 0, i32 0, metadata !145} ; [ DW_TAG_typedef ] [Instruction] [line 163, size 0, align 0, offset 0] [from unsigned int]
!272 = metadata !{i32 786445, metadata !122, metadata !262, metadata !"c", i32 87, i64 96, i64 32, i64 0, i32 0, metadata !273} ; [ DW_TAG_member ] [c] [line 87, size 96, align 32, offset 0] [from ]
!273 = metadata !{i32 786451, metadata !122, metadata !262, metadata !"", i32 83, i64 96, i64 32, i32 0, i32 0, null, metadata !274, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 83, size 96, align 32, offset 0] [def] [from ]
!274 = metadata !{metadata !275, metadata !283, metadata !284}
!275 = metadata !{i32 786445, metadata !122, metadata !273, metadata !"k", i32 84, i64 32, i64 32, i64 0, i32 0, metadata !276} ; [ DW_TAG_member ] [k] [line 84, size 32, align 32, offset 0] [from lua_KFunction]
!276 = metadata !{i32 786454, metadata !115, null, metadata !"lua_KFunction", i32 110, i64 0, i64 0, i64 0, i32 0, metadata !277} ; [ DW_TAG_typedef ] [lua_KFunction] [line 110, size 0, align 0, offset 0] [from ]
!277 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !278} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!278 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !279, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!279 = metadata !{metadata !88, metadata !119, metadata !88, metadata !280}
!280 = metadata !{i32 786454, metadata !115, null, metadata !"lua_KContext", i32 99, i64 0, i64 0, i64 0, i32 0, metadata !281} ; [ DW_TAG_typedef ] [lua_KContext] [line 99, size 0, align 0, offset 0] [from intptr_t]
!281 = metadata !{i32 786454, metadata !282, null, metadata !"intptr_t", i32 125, i64 0, i64 0, i64 0, i32 0, metadata !88} ; [ DW_TAG_typedef ] [intptr_t] [line 125, size 0, align 0, offset 0] [from int]
!282 = metadata !{metadata !"D:/Xilinx/SDx/2016.3/SDK/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include\5Cstdint.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!283 = metadata !{i32 786445, metadata !122, metadata !273, metadata !"old_errfunc", i32 85, i64 32, i64 32, i64 32, i32 0, metadata !149} ; [ DW_TAG_member ] [old_errfunc] [line 85, size 32, align 32, offset 32] [from ptrdiff_t]
!284 = metadata !{i32 786445, metadata !122, metadata !273, metadata !"ctx", i32 86, i64 32, i64 32, i64 64, i32 0, metadata !280} ; [ DW_TAG_member ] [ctx] [line 86, size 32, align 32, offset 64] [from lua_KContext]
!285 = metadata !{i32 786445, metadata !122, metadata !254, metadata !"extra", i32 89, i64 32, i64 32, i64 224, i32 0, metadata !149} ; [ DW_TAG_member ] [extra] [line 89, size 32, align 32, offset 224] [from ptrdiff_t]
!286 = metadata !{i32 786445, metadata !122, metadata !254, metadata !"nresults", i32 90, i64 16, i64 16, i64 256, i32 0, metadata !287} ; [ DW_TAG_member ] [nresults] [line 90, size 16, align 16, offset 256] [from short]
!287 = metadata !{i32 786468, null, null, metadata !"short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [short] [line 0, size 16, align 16, offset 0, enc DW_ATE_signed]
!288 = metadata !{i32 786445, metadata !122, metadata !254, metadata !"callstatus", i32 91, i64 8, i64 8, i64 272, i32 0, metadata !106} ; [ DW_TAG_member ] [callstatus] [line 91, size 8, align 8, offset 272] [from lu_byte]
!289 = metadata !{i32 786445, metadata !122, metadata !121, metadata !"oldpc", i32 166, i64 32, i64 32, i64 192, i32 0, metadata !269} ; [ DW_TAG_member ] [oldpc] [line 166, size 32, align 32, offset 192] [from ]
!290 = metadata !{i32 786445, metadata !122, metadata !121, metadata !"stack_last", i32 167, i64 32, i64 32, i64 224, i32 0, metadata !131} ; [ DW_TAG_member ] [stack_last] [line 167, size 32, align 32, offset 224] [from StkId]
!291 = metadata !{i32 786445, metadata !122, metadata !121, metadata !"stack", i32 168, i64 32, i64 32, i64 256, i32 0, metadata !131} ; [ DW_TAG_member ] [stack] [line 168, size 32, align 32, offset 256] [from StkId]
!292 = metadata !{i32 786445, metadata !122, metadata !121, metadata !"openupval", i32 169, i64 32, i64 32, i64 288, i32 0, metadata !293} ; [ DW_TAG_member ] [openupval] [line 169, size 32, align 32, offset 288] [from ]
!293 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !294} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from UpVal]
!294 = metadata !{i32 786454, metadata !92, null, metadata !"UpVal", i32 436, i64 0, i64 0, i64 0, i32 0, metadata !295} ; [ DW_TAG_typedef ] [UpVal] [line 436, size 0, align 0, offset 0] [from UpVal]
!295 = metadata !{i32 786451, metadata !296, null, metadata !"UpVal", i32 35, i64 192, i64 64, i32 0, i32 0, null, metadata !297, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [UpVal] [line 35, size 192, align 64, offset 0] [def] [from ]
!296 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lfunc.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!297 = metadata !{metadata !298, metadata !299, metadata !300}
!298 = metadata !{i32 786445, metadata !296, metadata !295, metadata !"v", i32 36, i64 32, i64 32, i64 0, i32 0, metadata !132} ; [ DW_TAG_member ] [v] [line 36, size 32, align 32, offset 0] [from ]
!299 = metadata !{i32 786445, metadata !296, metadata !295, metadata !"refcount", i32 37, i64 32, i64 32, i64 32, i32 0, metadata !152} ; [ DW_TAG_member ] [refcount] [line 37, size 32, align 32, offset 32] [from lu_mem]
!300 = metadata !{i32 786445, metadata !296, metadata !295, metadata !"u", i32 44, i64 128, i64 64, i64 64, i32 0, metadata !301} ; [ DW_TAG_member ] [u] [line 44, size 128, align 64, offset 64] [from ]
!301 = metadata !{i32 786455, metadata !296, metadata !295, metadata !"", i32 38, i64 128, i64 64, i64 0, i32 0, null, metadata !302, i32 0, null, null, null} ; [ DW_TAG_union_type ] [line 38, size 128, align 64, offset 0] [def] [from ]
!302 = metadata !{metadata !303, metadata !308}
!303 = metadata !{i32 786445, metadata !296, metadata !301, metadata !"open", i32 42, i64 64, i64 32, i64 0, i32 0, metadata !304} ; [ DW_TAG_member ] [open] [line 42, size 64, align 32, offset 0] [from ]
!304 = metadata !{i32 786451, metadata !296, metadata !301, metadata !"", i32 39, i64 64, i64 32, i32 0, i32 0, null, metadata !305, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 39, size 64, align 32, offset 0] [def] [from ]
!305 = metadata !{metadata !306, metadata !307}
!306 = metadata !{i32 786445, metadata !296, metadata !304, metadata !"next", i32 40, i64 32, i64 32, i64 0, i32 0, metadata !293} ; [ DW_TAG_member ] [next] [line 40, size 32, align 32, offset 0] [from ]
!307 = metadata !{i32 786445, metadata !296, metadata !304, metadata !"touched", i32 41, i64 32, i64 32, i64 32, i32 0, metadata !88} ; [ DW_TAG_member ] [touched] [line 41, size 32, align 32, offset 32] [from int]
!308 = metadata !{i32 786445, metadata !296, metadata !301, metadata !"value", i32 43, i64 128, i64 64, i64 0, i32 0, metadata !91} ; [ DW_TAG_member ] [value] [line 43, size 128, align 64, offset 0] [from TValue]
!309 = metadata !{i32 786445, metadata !122, metadata !121, metadata !"gclist", i32 170, i64 32, i64 32, i64 320, i32 0, metadata !100} ; [ DW_TAG_member ] [gclist] [line 170, size 32, align 32, offset 320] [from ]
!310 = metadata !{i32 786445, metadata !122, metadata !121, metadata !"twups", i32 171, i64 32, i64 32, i64 352, i32 0, metadata !196} ; [ DW_TAG_member ] [twups] [line 171, size 32, align 32, offset 352] [from ]
!311 = metadata !{i32 786445, metadata !122, metadata !121, metadata !"errorJmp", i32 172, i64 32, i64 32, i64 384, i32 0, metadata !312} ; [ DW_TAG_member ] [errorJmp] [line 172, size 32, align 32, offset 384] [from ]
!312 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !313} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from lua_longjmp]
!313 = metadata !{i32 786451, metadata !122, null, metadata !"lua_longjmp", i32 33, i64 0, i64 0, i32 0, i32 4, null, null, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [lua_longjmp] [line 33, size 0, align 0, offset 0] [decl] [from ]
!314 = metadata !{i32 786445, metadata !122, metadata !121, metadata !"base_ci", i32 173, i64 288, i64 32, i64 416, i32 0, metadata !253} ; [ DW_TAG_member ] [base_ci] [line 173, size 288, align 32, offset 416] [from CallInfo]
!315 = metadata !{i32 786445, metadata !122, metadata !121, metadata !"hook", i32 174, i64 32, i64 32, i64 704, i32 0, metadata !316} ; [ DW_TAG_member ] [hook] [line 174, size 32, align 32, offset 704] [from ]
!316 = metadata !{i32 786485, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !317} ; [ DW_TAG_volatile_type ] [line 0, size 0, align 0, offset 0] [from lua_Hook]
!317 = metadata !{i32 786454, metadata !115, null, metadata !"lua_Hook", i32 421, i64 0, i64 0, i64 0, i32 0, metadata !318} ; [ DW_TAG_typedef ] [lua_Hook] [line 421, size 0, align 0, offset 0] [from ]
!318 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !319} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!319 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !320, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!320 = metadata !{null, metadata !119, metadata !321}
!321 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !322} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from lua_Debug]
!322 = metadata !{i32 786454, metadata !115, null, metadata !"lua_Debug", i32 417, i64 0, i64 0, i64 0, i32 0, metadata !323} ; [ DW_TAG_typedef ] [lua_Debug] [line 417, size 0, align 0, offset 0] [from lua_Debug]
!323 = metadata !{i32 786451, metadata !115, null, metadata !"lua_Debug", i32 441, i64 800, i64 32, i32 0, i32 0, null, metadata !324, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [lua_Debug] [line 441, size 800, align 32, offset 0] [def] [from ]
!324 = metadata !{metadata !325, metadata !326, metadata !330, metadata !331, metadata !332, metadata !333, metadata !334, metadata !335, metadata !336, metadata !337, metadata !338, metadata !339, metadata !340, metadata !344}
!325 = metadata !{i32 786445, metadata !115, metadata !323, metadata !"event", i32 442, i64 32, i64 32, i64 0, i32 0, metadata !88} ; [ DW_TAG_member ] [event] [line 442, size 32, align 32, offset 0] [from int]
!326 = metadata !{i32 786445, metadata !115, metadata !323, metadata !"name", i32 443, i64 32, i64 32, i64 32, i32 0, metadata !327} ; [ DW_TAG_member ] [name] [line 443, size 32, align 32, offset 32] [from ]
!327 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !328} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!328 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !329} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!329 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!330 = metadata !{i32 786445, metadata !115, metadata !323, metadata !"namewhat", i32 444, i64 32, i64 32, i64 64, i32 0, metadata !327} ; [ DW_TAG_member ] [namewhat] [line 444, size 32, align 32, offset 64] [from ]
!331 = metadata !{i32 786445, metadata !115, metadata !323, metadata !"what", i32 445, i64 32, i64 32, i64 96, i32 0, metadata !327} ; [ DW_TAG_member ] [what] [line 445, size 32, align 32, offset 96] [from ]
!332 = metadata !{i32 786445, metadata !115, metadata !323, metadata !"source", i32 446, i64 32, i64 32, i64 128, i32 0, metadata !327} ; [ DW_TAG_member ] [source] [line 446, size 32, align 32, offset 128] [from ]
!333 = metadata !{i32 786445, metadata !115, metadata !323, metadata !"currentline", i32 447, i64 32, i64 32, i64 160, i32 0, metadata !88} ; [ DW_TAG_member ] [currentline] [line 447, size 32, align 32, offset 160] [from int]
!334 = metadata !{i32 786445, metadata !115, metadata !323, metadata !"linedefined", i32 448, i64 32, i64 32, i64 192, i32 0, metadata !88} ; [ DW_TAG_member ] [linedefined] [line 448, size 32, align 32, offset 192] [from int]
!335 = metadata !{i32 786445, metadata !115, metadata !323, metadata !"lastlinedefined", i32 449, i64 32, i64 32, i64 224, i32 0, metadata !88} ; [ DW_TAG_member ] [lastlinedefined] [line 449, size 32, align 32, offset 224] [from int]
!336 = metadata !{i32 786445, metadata !115, metadata !323, metadata !"nups", i32 450, i64 8, i64 8, i64 256, i32 0, metadata !108} ; [ DW_TAG_member ] [nups] [line 450, size 8, align 8, offset 256] [from unsigned char]
!337 = metadata !{i32 786445, metadata !115, metadata !323, metadata !"nparams", i32 451, i64 8, i64 8, i64 264, i32 0, metadata !108} ; [ DW_TAG_member ] [nparams] [line 451, size 8, align 8, offset 264] [from unsigned char]
!338 = metadata !{i32 786445, metadata !115, metadata !323, metadata !"isvararg", i32 452, i64 8, i64 8, i64 272, i32 0, metadata !329} ; [ DW_TAG_member ] [isvararg] [line 452, size 8, align 8, offset 272] [from char]
!339 = metadata !{i32 786445, metadata !115, metadata !323, metadata !"istailcall", i32 453, i64 8, i64 8, i64 280, i32 0, metadata !329} ; [ DW_TAG_member ] [istailcall] [line 453, size 8, align 8, offset 280] [from char]
!340 = metadata !{i32 786445, metadata !115, metadata !323, metadata !"short_src", i32 454, i64 480, i64 8, i64 288, i32 0, metadata !341} ; [ DW_TAG_member ] [short_src] [line 454, size 480, align 8, offset 288] [from ]
!341 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 480, i64 8, i32 0, i32 0, metadata !329, metadata !342, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 480, align 8, offset 0] [from char]
!342 = metadata !{metadata !343}
!343 = metadata !{i32 786465, i64 0, i64 60}      ; [ DW_TAG_subrange_type ] [0, 59]
!344 = metadata !{i32 786445, metadata !115, metadata !323, metadata !"i_ci", i32 456, i64 32, i64 32, i64 768, i32 0, metadata !259} ; [ DW_TAG_member ] [i_ci] [line 456, size 32, align 32, offset 768] [from ]
!345 = metadata !{i32 786445, metadata !122, metadata !121, metadata !"errfunc", i32 175, i64 32, i64 32, i64 736, i32 0, metadata !149} ; [ DW_TAG_member ] [errfunc] [line 175, size 32, align 32, offset 736] [from ptrdiff_t]
!346 = metadata !{i32 786445, metadata !122, metadata !121, metadata !"stacksize", i32 176, i64 32, i64 32, i64 768, i32 0, metadata !88} ; [ DW_TAG_member ] [stacksize] [line 176, size 32, align 32, offset 768] [from int]
!347 = metadata !{i32 786445, metadata !122, metadata !121, metadata !"basehookcount", i32 177, i64 32, i64 32, i64 800, i32 0, metadata !88} ; [ DW_TAG_member ] [basehookcount] [line 177, size 32, align 32, offset 800] [from int]
!348 = metadata !{i32 786445, metadata !122, metadata !121, metadata !"hookcount", i32 178, i64 32, i64 32, i64 832, i32 0, metadata !88} ; [ DW_TAG_member ] [hookcount] [line 178, size 32, align 32, offset 832] [from int]
!349 = metadata !{i32 786445, metadata !122, metadata !121, metadata !"nny", i32 179, i64 16, i64 16, i64 864, i32 0, metadata !128} ; [ DW_TAG_member ] [nny] [line 179, size 16, align 16, offset 864] [from unsigned short]
!350 = metadata !{i32 786445, metadata !122, metadata !121, metadata !"nCcalls", i32 180, i64 16, i64 16, i64 880, i32 0, metadata !128} ; [ DW_TAG_member ] [nCcalls] [line 180, size 16, align 16, offset 880] [from unsigned short]
!351 = metadata !{i32 786445, metadata !122, metadata !121, metadata !"hookmask", i32 181, i64 32, i64 32, i64 896, i32 0, metadata !352} ; [ DW_TAG_member ] [hookmask] [line 181, size 32, align 32, offset 896] [from sig_atomic_t]
!352 = metadata !{i32 786454, metadata !353, null, metadata !"sig_atomic_t", i32 40, i64 0, i64 0, i64 0, i32 0, metadata !354} ; [ DW_TAG_typedef ] [sig_atomic_t] [line 40, size 0, align 0, offset 0] [from __sig_atomic_t]
!353 = metadata !{metadata !"D:/Xilinx/SDx/2016.3/SDK/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include\5Csignal.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!354 = metadata !{i32 786454, metadata !355, null, metadata !"__sig_atomic_t", i32 22, i64 0, i64 0, i64 0, i32 0, metadata !88} ; [ DW_TAG_typedef ] [__sig_atomic_t] [line 22, size 0, align 0, offset 0] [from int]
!355 = metadata !{metadata !"D:/Xilinx/SDx/2016.3/SDK/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include\5Cbits/sigset.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!356 = metadata !{i32 786445, metadata !122, metadata !121, metadata !"allowhook", i32 182, i64 8, i64 8, i64 928, i32 0, metadata !106} ; [ DW_TAG_member ] [allowhook] [line 182, size 8, align 8, offset 928] [from lu_byte]
!357 = metadata !{i32 786445, metadata !92, metadata !97, metadata !"i", i32 105, i64 64, i64 64, i64 0, i32 0, metadata !358} ; [ DW_TAG_member ] [i] [line 105, size 64, align 64, offset 0] [from lua_Integer]
!358 = metadata !{i32 786454, metadata !115, null, metadata !"lua_Integer", i32 93, i64 0, i64 0, i64 0, i32 0, metadata !359} ; [ DW_TAG_typedef ] [lua_Integer] [line 93, size 0, align 0, offset 0] [from long long int]
!359 = metadata !{i32 786468, null, null, metadata !"long long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!360 = metadata !{i32 786445, metadata !92, metadata !97, metadata !"n", i32 106, i64 64, i64 64, i64 0, i32 0, metadata !205} ; [ DW_TAG_member ] [n] [line 106, size 64, align 64, offset 0] [from lua_Number]
!361 = metadata !{i32 786445, metadata !92, metadata !93, metadata !"tt_", i32 114, i64 32, i64 32, i64 64, i32 0, metadata !88} ; [ DW_TAG_member ] [tt_] [line 114, size 32, align 32, offset 64] [from int]
!362 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !205} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from lua_Number]
!363 = metadata !{i32 786478, metadata !84, metadata !85, metadata !"luaV_tointeger", metadata !"luaV_tointeger", metadata !"", i32 94, metadata !364, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_TValue*, i64*, i32)* @luaV_tointeger, null, null, metadata !81, i32 94} ; [ DW_TAG_subprogram ] [line 94] [def] [luaV_tointeger]
!364 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !365, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!365 = metadata !{metadata !88, metadata !89, metadata !366, metadata !88}
!366 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !358} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from lua_Integer]
!367 = metadata !{i32 786478, metadata !84, metadata !85, metadata !"luaV_finishget", metadata !"luaV_finishget", metadata !"", i32 160, metadata !368, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.lua_State*, %struct.lua_TValue*, %struct.lua_TValue*, %struct.lua_TValue*, %struct.lua_TValue*)* @luaV_finishget, null, null, metadata !81, i32 161} ; [ DW_TAG_subprogram ] [line 160] [def] [scope 161] [luaV_finishget]
!368 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !369, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!369 = metadata !{null, metadata !119, metadata !89, metadata !132, metadata !131, metadata !89}
!370 = metadata !{i32 786478, metadata !84, metadata !85, metadata !"luaV_finishset", metadata !"luaV_finishset", metadata !"", i32 203, metadata !368, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.lua_State*, %struct.lua_TValue*, %struct.lua_TValue*, %struct.lua_TValue*, %struct.lua_TValue*)* @luaV_finishset, null, null, metadata !81, i32 204} ; [ DW_TAG_subprogram ] [line 203] [def] [scope 204] [luaV_finishset]
!371 = metadata !{i32 786478, metadata !84, metadata !85, metadata !"luaV_lessthan", metadata !"luaV_lessthan", metadata !"", i32 364, metadata !372, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*, %struct.lua_TValue*, %struct.lua_TValue*)* @luaV_lessthan, null, null, metadata !81, i32 364} ; [ DW_TAG_subprogram ] [line 364] [def] [luaV_lessthan]
!372 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !373, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!373 = metadata !{metadata !88, metadata !119, metadata !89, metadata !89}
!374 = metadata !{i32 786478, metadata !84, metadata !85, metadata !"luaV_lessequal", metadata !"luaV_lessequal", metadata !"", i32 384, metadata !372, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*, %struct.lua_TValue*, %struct.lua_TValue*)* @luaV_lessequal, null, null, metadata !81, i32 384} ; [ DW_TAG_subprogram ] [line 384] [def] [luaV_lessequal]
!375 = metadata !{i32 786478, metadata !84, metadata !85, metadata !"luaV_equalobj", metadata !"luaV_equalobj", metadata !"", i32 407, metadata !372, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*, %struct.lua_TValue*, %struct.lua_TValue*)* @luaV_equalobj, null, null, metadata !81, i32 407} ; [ DW_TAG_subprogram ] [line 407] [def] [luaV_equalobj]
!376 = metadata !{i32 786478, metadata !84, metadata !85, metadata !"luaV_concat", metadata !"luaV_concat", metadata !"", i32 474, metadata !377, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.lua_State*, i32)* @luaV_concat, null, null, metadata !81, i32 474} ; [ DW_TAG_subprogram ] [line 474] [def] [luaV_concat]
!377 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !378, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!378 = metadata !{null, metadata !119, metadata !88}
!379 = metadata !{i32 786478, metadata !84, metadata !85, metadata !"luaV_objlen", metadata !"luaV_objlen", metadata !"", i32 517, metadata !380, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.lua_State*, %struct.lua_TValue*, %struct.lua_TValue*)* @luaV_objlen, null, null, metadata !81, i32 517} ; [ DW_TAG_subprogram ] [line 517] [def] [luaV_objlen]
!380 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !381, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!381 = metadata !{null, metadata !119, metadata !131, metadata !89}
!382 = metadata !{i32 786478, metadata !84, metadata !85, metadata !"luaV_div", metadata !"luaV_div", metadata !"", i32 552, metadata !383, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i64 (%struct.lua_State*, i64, i64)* @luaV_div, null, null, metadata !81, i32 552} ; [ DW_TAG_subprogram ] [line 552] [def] [luaV_div]
!383 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !384, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!384 = metadata !{metadata !358, metadata !119, metadata !358, metadata !358}
!385 = metadata !{i32 786478, metadata !84, metadata !85, metadata !"luaV_mod", metadata !"luaV_mod", metadata !"", i32 572, metadata !383, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i64 (%struct.lua_State*, i64, i64)* @luaV_mod, null, null, metadata !81, i32 572} ; [ DW_TAG_subprogram ] [line 572] [def] [luaV_mod]
!386 = metadata !{i32 786478, metadata !84, metadata !85, metadata !"luaV_shiftl", metadata !"luaV_shiftl", metadata !"", i32 593, metadata !387, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i64 (i64, i64)* @luaV_shiftl, null, null, metadata !81, i32 593} ; [ DW_TAG_subprogram ] [line 593] [def] [luaV_shiftl]
!387 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !388, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!388 = metadata !{metadata !358, metadata !358, metadata !358}
!389 = metadata !{i32 786478, metadata !84, metadata !85, metadata !"luaV_finishOp", metadata !"luaV_finishOp", metadata !"", i32 656, metadata !390, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.lua_State*)* @luaV_finishOp, null, null, metadata !81, i32 656} ; [ DW_TAG_subprogram ] [line 656] [def] [luaV_finishOp]
!390 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !391, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!391 = metadata !{null, metadata !119}
!392 = metadata !{i32 786478, metadata !84, metadata !85, metadata !"luaV_execute", metadata !"luaV_execute", metadata !"", i32 786, metadata !390, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.lua_State*)* @luaV_execute, null, null, metadata !81, i32 786} ; [ DW_TAG_subprogram ] [line 786] [def] [luaV_execute]
!393 = metadata !{i32 786478, metadata !84, metadata !85, metadata !"pushclosure", metadata !"pushclosure", metadata !"", i32 632, metadata !394, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.lua_State*, %struct.Proto*, %struct.UpVal**, %struct.lua_TValue*, %struct.lua_TValue*)* @pushclosure, null, null, metadata !81, i32 633} ; [ DW_TAG_subprogram ] [line 632] [local] [def] [scope 633] [pushclosure]
!394 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !395, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!395 = metadata !{null, metadata !119, metadata !396, metadata !454, metadata !131, metadata !131}
!396 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !397} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from Proto]
!397 = metadata !{i32 786454, metadata !92, null, metadata !"Proto", i32 429, i64 0, i64 0, i64 0, i32 0, metadata !398} ; [ DW_TAG_typedef ] [Proto] [line 429, size 0, align 0, offset 0] [from Proto]
!398 = metadata !{i32 786451, metadata !92, null, metadata !"Proto", i32 407, i64 640, i64 32, i32 0, i32 0, null, metadata !399, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [Proto] [line 407, size 640, align 32, offset 0] [def] [from ]
!399 = metadata !{metadata !400, metadata !401, metadata !402, metadata !403, metadata !404, metadata !405, metadata !406, metadata !407, metadata !408, metadata !409, metadata !410, metadata !411, metadata !412, metadata !413, metadata !414, metadata !415, metadata !417, metadata !420, metadata !422, metadata !430, metadata !438, metadata !452, metadata !453}
!400 = metadata !{i32 786445, metadata !92, metadata !398, metadata !"next", i32 408, i64 32, i64 32, i64 0, i32 0, metadata !100} ; [ DW_TAG_member ] [next] [line 408, size 32, align 32, offset 0] [from ]
!401 = metadata !{i32 786445, metadata !92, metadata !398, metadata !"tt", i32 408, i64 8, i64 8, i64 32, i32 0, metadata !106} ; [ DW_TAG_member ] [tt] [line 408, size 8, align 8, offset 32] [from lu_byte]
!402 = metadata !{i32 786445, metadata !92, metadata !398, metadata !"marked", i32 408, i64 8, i64 8, i64 40, i32 0, metadata !106} ; [ DW_TAG_member ] [marked] [line 408, size 8, align 8, offset 40] [from lu_byte]
!403 = metadata !{i32 786445, metadata !92, metadata !398, metadata !"numparams", i32 409, i64 8, i64 8, i64 48, i32 0, metadata !106} ; [ DW_TAG_member ] [numparams] [line 409, size 8, align 8, offset 48] [from lu_byte]
!404 = metadata !{i32 786445, metadata !92, metadata !398, metadata !"is_vararg", i32 410, i64 8, i64 8, i64 56, i32 0, metadata !106} ; [ DW_TAG_member ] [is_vararg] [line 410, size 8, align 8, offset 56] [from lu_byte]
!405 = metadata !{i32 786445, metadata !92, metadata !398, metadata !"maxstacksize", i32 411, i64 8, i64 8, i64 64, i32 0, metadata !106} ; [ DW_TAG_member ] [maxstacksize] [line 411, size 8, align 8, offset 64] [from lu_byte]
!406 = metadata !{i32 786445, metadata !92, metadata !398, metadata !"sizeupvalues", i32 412, i64 32, i64 32, i64 96, i32 0, metadata !88} ; [ DW_TAG_member ] [sizeupvalues] [line 412, size 32, align 32, offset 96] [from int]
!407 = metadata !{i32 786445, metadata !92, metadata !398, metadata !"sizek", i32 413, i64 32, i64 32, i64 128, i32 0, metadata !88} ; [ DW_TAG_member ] [sizek] [line 413, size 32, align 32, offset 128] [from int]
!408 = metadata !{i32 786445, metadata !92, metadata !398, metadata !"sizecode", i32 414, i64 32, i64 32, i64 160, i32 0, metadata !88} ; [ DW_TAG_member ] [sizecode] [line 414, size 32, align 32, offset 160] [from int]
!409 = metadata !{i32 786445, metadata !92, metadata !398, metadata !"sizelineinfo", i32 415, i64 32, i64 32, i64 192, i32 0, metadata !88} ; [ DW_TAG_member ] [sizelineinfo] [line 415, size 32, align 32, offset 192] [from int]
!410 = metadata !{i32 786445, metadata !92, metadata !398, metadata !"sizep", i32 416, i64 32, i64 32, i64 224, i32 0, metadata !88} ; [ DW_TAG_member ] [sizep] [line 416, size 32, align 32, offset 224] [from int]
!411 = metadata !{i32 786445, metadata !92, metadata !398, metadata !"sizelocvars", i32 417, i64 32, i64 32, i64 256, i32 0, metadata !88} ; [ DW_TAG_member ] [sizelocvars] [line 417, size 32, align 32, offset 256] [from int]
!412 = metadata !{i32 786445, metadata !92, metadata !398, metadata !"linedefined", i32 418, i64 32, i64 32, i64 288, i32 0, metadata !88} ; [ DW_TAG_member ] [linedefined] [line 418, size 32, align 32, offset 288] [from int]
!413 = metadata !{i32 786445, metadata !92, metadata !398, metadata !"lastlinedefined", i32 419, i64 32, i64 32, i64 320, i32 0, metadata !88} ; [ DW_TAG_member ] [lastlinedefined] [line 419, size 32, align 32, offset 320] [from int]
!414 = metadata !{i32 786445, metadata !92, metadata !398, metadata !"k", i32 420, i64 32, i64 32, i64 352, i32 0, metadata !132} ; [ DW_TAG_member ] [k] [line 420, size 32, align 32, offset 352] [from ]
!415 = metadata !{i32 786445, metadata !92, metadata !398, metadata !"code", i32 421, i64 32, i64 32, i64 384, i32 0, metadata !416} ; [ DW_TAG_member ] [code] [line 421, size 32, align 32, offset 384] [from ]
!416 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !271} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from Instruction]
!417 = metadata !{i32 786445, metadata !92, metadata !398, metadata !"p", i32 422, i64 32, i64 32, i64 416, i32 0, metadata !418} ; [ DW_TAG_member ] [p] [line 422, size 32, align 32, offset 416] [from ]
!418 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !419} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!419 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !398} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from Proto]
!420 = metadata !{i32 786445, metadata !92, metadata !398, metadata !"lineinfo", i32 423, i64 32, i64 32, i64 448, i32 0, metadata !421} ; [ DW_TAG_member ] [lineinfo] [line 423, size 32, align 32, offset 448] [from ]
!421 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !88} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from int]
!422 = metadata !{i32 786445, metadata !92, metadata !398, metadata !"locvars", i32 424, i64 32, i64 32, i64 480, i32 0, metadata !423} ; [ DW_TAG_member ] [locvars] [line 424, size 32, align 32, offset 480] [from ]
!423 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !424} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from LocVar]
!424 = metadata !{i32 786454, metadata !92, null, metadata !"LocVar", i32 401, i64 0, i64 0, i64 0, i32 0, metadata !425} ; [ DW_TAG_typedef ] [LocVar] [line 401, size 0, align 0, offset 0] [from LocVar]
!425 = metadata !{i32 786451, metadata !92, null, metadata !"LocVar", i32 397, i64 96, i64 32, i32 0, i32 0, null, metadata !426, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [LocVar] [line 397, size 96, align 32, offset 0] [def] [from ]
!426 = metadata !{metadata !427, metadata !428, metadata !429}
!427 = metadata !{i32 786445, metadata !92, metadata !425, metadata !"varname", i32 398, i64 32, i64 32, i64 0, i32 0, metadata !160} ; [ DW_TAG_member ] [varname] [line 398, size 32, align 32, offset 0] [from ]
!428 = metadata !{i32 786445, metadata !92, metadata !425, metadata !"startpc", i32 399, i64 32, i64 32, i64 32, i32 0, metadata !88} ; [ DW_TAG_member ] [startpc] [line 399, size 32, align 32, offset 32] [from int]
!429 = metadata !{i32 786445, metadata !92, metadata !425, metadata !"endpc", i32 400, i64 32, i64 32, i64 64, i32 0, metadata !88} ; [ DW_TAG_member ] [endpc] [line 400, size 32, align 32, offset 64] [from int]
!430 = metadata !{i32 786445, metadata !92, metadata !398, metadata !"upvalues", i32 425, i64 32, i64 32, i64 512, i32 0, metadata !431} ; [ DW_TAG_member ] [upvalues] [line 425, size 32, align 32, offset 512] [from ]
!431 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !432} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from Upvaldesc]
!432 = metadata !{i32 786454, metadata !92, null, metadata !"Upvaldesc", i32 390, i64 0, i64 0, i64 0, i32 0, metadata !433} ; [ DW_TAG_typedef ] [Upvaldesc] [line 390, size 0, align 0, offset 0] [from Upvaldesc]
!433 = metadata !{i32 786451, metadata !92, null, metadata !"Upvaldesc", i32 386, i64 64, i64 32, i32 0, i32 0, null, metadata !434, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [Upvaldesc] [line 386, size 64, align 32, offset 0] [def] [from ]
!434 = metadata !{metadata !435, metadata !436, metadata !437}
!435 = metadata !{i32 786445, metadata !92, metadata !433, metadata !"name", i32 387, i64 32, i64 32, i64 0, i32 0, metadata !160} ; [ DW_TAG_member ] [name] [line 387, size 32, align 32, offset 0] [from ]
!436 = metadata !{i32 786445, metadata !92, metadata !433, metadata !"instack", i32 388, i64 8, i64 8, i64 32, i32 0, metadata !106} ; [ DW_TAG_member ] [instack] [line 388, size 8, align 8, offset 32] [from lu_byte]
!437 = metadata !{i32 786445, metadata !92, metadata !433, metadata !"idx", i32 389, i64 8, i64 8, i64 40, i32 0, metadata !106} ; [ DW_TAG_member ] [idx] [line 389, size 8, align 8, offset 40] [from lu_byte]
!438 = metadata !{i32 786445, metadata !92, metadata !398, metadata !"cache", i32 426, i64 32, i64 32, i64 544, i32 0, metadata !439} ; [ DW_TAG_member ] [cache] [line 426, size 32, align 32, offset 544] [from ]
!439 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !440} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from LClosure]
!440 = metadata !{i32 786451, metadata !92, null, metadata !"LClosure", i32 453, i64 160, i64 32, i32 0, i32 0, null, metadata !441, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [LClosure] [line 453, size 160, align 32, offset 0] [def] [from ]
!441 = metadata !{metadata !442, metadata !443, metadata !444, metadata !445, metadata !446, metadata !447, metadata !448}
!442 = metadata !{i32 786445, metadata !92, metadata !440, metadata !"next", i32 454, i64 32, i64 32, i64 0, i32 0, metadata !100} ; [ DW_TAG_member ] [next] [line 454, size 32, align 32, offset 0] [from ]
!443 = metadata !{i32 786445, metadata !92, metadata !440, metadata !"tt", i32 454, i64 8, i64 8, i64 32, i32 0, metadata !106} ; [ DW_TAG_member ] [tt] [line 454, size 8, align 8, offset 32] [from lu_byte]
!444 = metadata !{i32 786445, metadata !92, metadata !440, metadata !"marked", i32 454, i64 8, i64 8, i64 40, i32 0, metadata !106} ; [ DW_TAG_member ] [marked] [line 454, size 8, align 8, offset 40] [from lu_byte]
!445 = metadata !{i32 786445, metadata !92, metadata !440, metadata !"nupvalues", i32 454, i64 8, i64 8, i64 48, i32 0, metadata !106} ; [ DW_TAG_member ] [nupvalues] [line 454, size 8, align 8, offset 48] [from lu_byte]
!446 = metadata !{i32 786445, metadata !92, metadata !440, metadata !"gclist", i32 454, i64 32, i64 32, i64 64, i32 0, metadata !100} ; [ DW_TAG_member ] [gclist] [line 454, size 32, align 32, offset 64] [from ]
!447 = metadata !{i32 786445, metadata !92, metadata !440, metadata !"p", i32 455, i64 32, i64 32, i64 96, i32 0, metadata !419} ; [ DW_TAG_member ] [p] [line 455, size 32, align 32, offset 96] [from ]
!448 = metadata !{i32 786445, metadata !92, metadata !440, metadata !"upvals", i32 456, i64 32, i64 32, i64 128, i32 0, metadata !449} ; [ DW_TAG_member ] [upvals] [line 456, size 32, align 32, offset 128] [from ]
!449 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 32, i64 32, i32 0, i32 0, metadata !293, metadata !450, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 32, align 32, offset 0] [from ]
!450 = metadata !{metadata !451}
!451 = metadata !{i32 786465, i64 0, i64 1}       ; [ DW_TAG_subrange_type ] [0, 0]
!452 = metadata !{i32 786445, metadata !92, metadata !398, metadata !"source", i32 427, i64 32, i64 32, i64 576, i32 0, metadata !160} ; [ DW_TAG_member ] [source] [line 427, size 32, align 32, offset 576] [from ]
!453 = metadata !{i32 786445, metadata !92, metadata !398, metadata !"gclist", i32 428, i64 32, i64 32, i64 608, i32 0, metadata !100} ; [ DW_TAG_member ] [gclist] [line 428, size 32, align 32, offset 608] [from ]
!454 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !293} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!455 = metadata !{i32 786478, metadata !84, metadata !85, metadata !"getcached", metadata !"getcached", metadata !"", i32 610, metadata !456, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, %struct.LClosure* (%struct.Proto*, %struct.UpVal**, %struct.lua_TValue*)* @getcached, null, null, metadata !81, i32 610} ; [ DW_TAG_subprogram ] [line 610] [local] [def] [getcached]
!456 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !457, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!457 = metadata !{metadata !458, metadata !396, metadata !454, metadata !131}
!458 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !459} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from LClosure]
!459 = metadata !{i32 786454, metadata !92, null, metadata !"LClosure", i32 457, i64 0, i64 0, i64 0, i32 0, metadata !440} ; [ DW_TAG_typedef ] [LClosure] [line 457, size 0, align 0, offset 0] [from LClosure]
!460 = metadata !{i32 786478, metadata !84, metadata !85, metadata !"forlimit", metadata !"forlimit", metadata !"", i32 135, metadata !461, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_TValue*, i64*, i64, i32*)* @forlimit, null, null, metadata !81, i32 136} ; [ DW_TAG_subprogram ] [line 135] [local] [def] [scope 136] [forlimit]
!461 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !462, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!462 = metadata !{metadata !88, metadata !89, metadata !366, metadata !358, metadata !421}
!463 = metadata !{i32 786478, metadata !84, metadata !85, metadata !"copy2buff", metadata !"copy2buff", metadata !"", i32 460, metadata !464, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.lua_TValue*, i32, i8*)* @copy2buff, null, null, metadata !81, i32 460} ; [ DW_TAG_subprogram ] [line 460] [local] [def] [copy2buff]
!464 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !465, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!465 = metadata !{null, metadata !131, metadata !88, metadata !466}
!466 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !329} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from char]
!467 = metadata !{i32 786478, metadata !84, metadata !85, metadata !"LEnum", metadata !"LEnum", metadata !"", i32 341, metadata !468, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_TValue*, %struct.lua_TValue*)* @LEnum, null, null, metadata !81, i32 341} ; [ DW_TAG_subprogram ] [line 341] [local] [def] [LEnum]
!468 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !469, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!469 = metadata !{metadata !88, metadata !89, metadata !89}
!470 = metadata !{i32 786478, metadata !84, metadata !85, metadata !"LTintfloat", metadata !"LTintfloat", metadata !"", i32 281, metadata !471, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i64, double)* @LTintfloat, null, null, metadata !81, i32 281} ; [ DW_TAG_subprogram ] [line 281] [local] [def] [LTintfloat]
!471 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !472, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!472 = metadata !{metadata !88, metadata !358, metadata !205}
!473 = metadata !{i32 786478, metadata !84, metadata !85, metadata !"LEintfloat", metadata !"LEintfloat", metadata !"", i32 300, metadata !471, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i64, double)* @LEintfloat, null, null, metadata !81, i32 300} ; [ DW_TAG_subprogram ] [line 300] [local] [def] [LEintfloat]
!474 = metadata !{i32 786478, metadata !84, metadata !85, metadata !"l_strcmp", metadata !"l_strcmp", metadata !"", i32 248, metadata !475, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.TString*, %struct.TString*)* @l_strcmp, null, null, metadata !81, i32 248} ; [ DW_TAG_subprogram ] [line 248] [local] [def] [l_strcmp]
!475 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !476, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!476 = metadata !{metadata !88, metadata !477, metadata !477}
!477 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !478} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!478 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !161} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from TString]
!479 = metadata !{i32 786478, metadata !84, metadata !85, metadata !"LTnum", metadata !"LTnum", metadata !"", i32 318, metadata !468, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_TValue*, %struct.lua_TValue*)* @LTnum, null, null, metadata !81, i32 318} ; [ DW_TAG_subprogram ] [line 318] [local] [def] [LTnum]
!480 = metadata !{i32 (%struct.lua_TValue*, double*)* @luaV_tonumber_}
!481 = metadata !{metadata !"luaV_tonumber_"}
!482 = metadata !{i32 (i8*, %struct.lua_TValue*)* @luaO_str2num}
!483 = metadata !{metadata !"luaO_str2num"}
!484 = metadata !{i32 (%struct.lua_TValue*, i64*, i32)* @luaV_tointeger}
!485 = metadata !{metadata !"luaV_tointeger"}
!486 = metadata !{double (double)* @floor}
!487 = metadata !{metadata !"floor"}
!488 = metadata !{void (%struct.lua_State*, %struct.lua_TValue*, %struct.lua_TValue*, %struct.lua_TValue*, %struct.lua_TValue*)* @luaV_finishget}
!489 = metadata !{metadata !"luaV_finishget"}
!490 = metadata !{%struct.lua_TValue* (%struct.lua_State*, %struct.lua_TValue*, i32)* @luaT_gettmbyobj}
!491 = metadata !{metadata !"luaT_gettmbyobj"}
!492 = metadata !{void (%struct.lua_State*, %struct.lua_TValue*, i8*)* @luaG_typeerror}
!493 = metadata !{metadata !"luaG_typeerror"}
!494 = metadata !{%struct.lua_TValue* (%struct.Table*, i32, %struct.TString*)* @luaT_gettm}
!495 = metadata !{metadata !"luaT_gettm"}
!496 = metadata !{void (%struct.lua_State*, %struct.lua_TValue*, %struct.lua_TValue*, %struct.lua_TValue*, %struct.lua_TValue*, i32)* @luaT_callTM}
!497 = metadata !{metadata !"luaT_callTM"}
!498 = metadata !{%struct.lua_TValue* (%struct.Table*, %struct.lua_TValue*)* @luaH_get}
!499 = metadata !{metadata !"luaH_get"}
!500 = metadata !{void (%struct.lua_State*, i8*, ...)* @luaG_runerror}
!501 = metadata !{metadata !"luaG_runerror"}
!502 = metadata !{void (%struct.lua_State*, %struct.lua_TValue*, %struct.lua_TValue*, %struct.lua_TValue*, %struct.lua_TValue*)* @luaV_finishset}
!503 = metadata !{metadata !"luaV_finishset"}
!504 = metadata !{%struct.lua_TValue* (%struct.lua_State*, %struct.Table*, %struct.lua_TValue*)* @luaH_newkey}
!505 = metadata !{metadata !"luaH_newkey"}
!506 = metadata !{void (%struct.lua_State*, %struct.Table*)* @luaC_barrierback_}
!507 = metadata !{metadata !"luaC_barrierback_"}
!508 = metadata !{i32 (%struct.lua_State*, %struct.lua_TValue*, %struct.lua_TValue*)* @luaV_lessthan}
!509 = metadata !{metadata !"luaV_lessthan"}
!510 = metadata !{i32 (%struct.lua_TValue*, %struct.lua_TValue*)* @LTnum}
!511 = metadata !{metadata !"LTnum"}
!512 = metadata !{i32 (%struct.TString*, %struct.TString*)* @l_strcmp}
!513 = metadata !{metadata !"l_strcmp"}
!514 = metadata !{i32 (%struct.lua_State*, %struct.lua_TValue*, %struct.lua_TValue*, i32)* @luaT_callorderTM}
!515 = metadata !{metadata !"luaT_callorderTM"}
!516 = metadata !{void (%struct.lua_State*, %struct.lua_TValue*, %struct.lua_TValue*)* @luaG_ordererror}
!517 = metadata !{metadata !"luaG_ordererror"}
!518 = metadata !{i32 (%struct.lua_State*, %struct.lua_TValue*, %struct.lua_TValue*)* @luaV_lessequal}
!519 = metadata !{metadata !"luaV_lessequal"}
!520 = metadata !{i32 (%struct.lua_TValue*, %struct.lua_TValue*)* @LEnum}
!521 = metadata !{metadata !"LEnum"}
!522 = metadata !{i32 (%struct.lua_State*, %struct.lua_TValue*, %struct.lua_TValue*)* @luaV_equalobj}
!523 = metadata !{metadata !"luaV_equalobj"}
!524 = metadata !{i32 (%struct.TString*, %struct.TString*)* @luaS_eqlngstr}
!525 = metadata !{metadata !"luaS_eqlngstr"}
!526 = metadata !{void (%struct.lua_State*, i32)* @luaV_concat}
!527 = metadata !{metadata !"luaV_concat"}
!528 = metadata !{void (%struct.lua_State*, %struct.lua_TValue*)* @luaO_tostring}
!529 = metadata !{metadata !"luaO_tostring"}
!530 = metadata !{void (%struct.lua_State*, %struct.lua_TValue*, %struct.lua_TValue*, %struct.lua_TValue*, i32)* @luaT_trybinTM}
!531 = metadata !{metadata !"luaT_trybinTM"}
!532 = metadata !{void (%struct.lua_TValue*, i32, i8*)* @copy2buff}
!533 = metadata !{metadata !"copy2buff"}
!534 = metadata !{%struct.TString* (%struct.lua_State*, i8*, i32)* @luaS_newlstr}
!535 = metadata !{metadata !"luaS_newlstr"}
!536 = metadata !{%struct.TString* (%struct.lua_State*, i32)* @luaS_createlngstrobj}
!537 = metadata !{metadata !"luaS_createlngstrobj"}
!538 = metadata !{void (%struct.lua_State*, %struct.lua_TValue*, %struct.lua_TValue*)* @luaV_objlen}
!539 = metadata !{metadata !"luaV_objlen"}
!540 = metadata !{i32 (%struct.Table*)* @luaH_getn}
!541 = metadata !{metadata !"luaH_getn"}
!542 = metadata !{i64 (%struct.lua_State*, i64, i64)* @luaV_div}
!543 = metadata !{metadata !"luaV_div"}
!544 = metadata !{i64 (%struct.lua_State*, i64, i64)* @luaV_mod}
!545 = metadata !{metadata !"luaV_mod"}
!546 = metadata !{i64 (i64, i64)* @luaV_shiftl}
!547 = metadata !{metadata !"luaV_shiftl"}
!548 = metadata !{void (%struct.lua_State*)* @luaV_finishOp}
!549 = metadata !{metadata !"luaV_finishOp"}
!550 = metadata !{void (%struct.lua_State*)* @luaV_execute}
!551 = metadata !{metadata !"luaV_execute"}
!552 = metadata !{void (%struct.lua_State*)* @luaG_traceexec}
!553 = metadata !{metadata !"luaG_traceexec"}
!554 = metadata !{void (%struct.lua_State*, %struct.UpVal*)* @luaC_upvalbarrier_}
!555 = metadata !{metadata !"luaC_upvalbarrier_"}
!556 = metadata !{%struct.Table* (%struct.lua_State*)* @luaH_new}
!557 = metadata !{metadata !"luaH_new"}
!558 = metadata !{void (%struct.lua_State*, %struct.Table*, i32, i32)* @luaH_resize}
!559 = metadata !{metadata !"luaH_resize"}
!560 = metadata !{i32 (i32)* @luaO_fb2int}
!561 = metadata !{metadata !"luaO_fb2int"}
!562 = metadata !{void (%struct.lua_State*)* @luaC_step}
!563 = metadata !{metadata !"luaC_step"}
!564 = metadata !{%struct.lua_TValue* (%struct.Table*, %struct.TString*)* @luaH_getstr}
!565 = metadata !{metadata !"luaH_getstr"}
!566 = metadata !{double (double, double)* @fmod}
!567 = metadata !{metadata !"fmod"}
!568 = metadata !{double (double, double)* @pow}
!569 = metadata !{metadata !"pow"}
!570 = metadata !{void (%struct.lua_State*, %struct.lua_TValue*)* @luaF_close}
!571 = metadata !{metadata !"luaF_close"}
!572 = metadata !{i32 (%struct.lua_State*, %struct.lua_TValue*, i32)* @luaD_precall}
!573 = metadata !{metadata !"luaD_precall"}
!574 = metadata !{i32 (%struct.lua_State*, %struct.CallInfo*, %struct.lua_TValue*, i32)* @luaD_poscall}
!575 = metadata !{metadata !"luaD_poscall"}
!576 = metadata !{i32 (%struct.lua_TValue*, i64*, i64, i32*)* @forlimit}
!577 = metadata !{metadata !"forlimit"}
!578 = metadata !{void (%struct.lua_State*, %struct.lua_TValue*, i32)* @luaD_call}
!579 = metadata !{metadata !"luaD_call"}
!580 = metadata !{void (%struct.lua_State*, %struct.Table*, i32)* @luaH_resizearray}
!581 = metadata !{metadata !"luaH_resizearray"}
!582 = metadata !{void (%struct.lua_State*, %struct.Table*, i64, %struct.lua_TValue*)* @luaH_setint}
!583 = metadata !{metadata !"luaH_setint"}
!584 = metadata !{%struct.LClosure* (%struct.Proto*, %struct.UpVal**, %struct.lua_TValue*)* @getcached}
!585 = metadata !{metadata !"getcached"}
!586 = metadata !{void (%struct.lua_State*, %struct.Proto*, %struct.UpVal**, %struct.lua_TValue*, %struct.lua_TValue*)* @pushclosure}
!587 = metadata !{metadata !"pushclosure"}
!588 = metadata !{void (%struct.lua_State*, i32)* @luaD_growstack}
!589 = metadata !{metadata !"luaD_growstack"}
!590 = metadata !{%struct.LClosure* (%struct.lua_State*, i32)* @luaF_newLclosure}
!591 = metadata !{metadata !"luaF_newLclosure"}
!592 = metadata !{%struct.UpVal* (%struct.lua_State*, %struct.lua_TValue*)* @luaF_findupval}
!593 = metadata !{metadata !"luaF_findupval"}
!594 = metadata !{i32 (i64, double)* @LEintfloat}
!595 = metadata !{metadata !"LEintfloat"}
!596 = metadata !{i32 (i64, double)* @LTintfloat}
!597 = metadata !{metadata !"LTintfloat"}
!598 = metadata !{i32 (i8*, i8*)* @strcoll}
!599 = metadata !{metadata !"strcoll"}
!600 = metadata !{i32 (i8*)* @strlen}
!601 = metadata !{metadata !"strlen"}
!602 = metadata !{metadata !"int.const TValue *.1.lua_Number *.1"}
!603 = metadata !{metadata !"size_t.const char *.1.TValue *.1"}
!604 = metadata !{metadata !"int.const TValue *.1.lua_Integer *.1.int.0"}
!605 = metadata !{metadata !"double.double.0"}
!606 = metadata !{metadata !"void.lua_State *.1.const TValue *.1.TValue *.1.StkId.1.const TValue *.1"}
!607 = metadata !{metadata !"const TValue .lua_State *.1.const TValue *.1.TMS.0"}
!608 = metadata !{metadata !"void.lua_State *.1.const TValue *.1.const char *.1"}
!609 = metadata !{metadata !"const TValue .Table *.1.TMS.0.TString *.1"}
!610 = metadata !{metadata !"void.lua_State *.1.const TValue *.1.const TValue *.1.const TValue *.1.TValue *.1.int.0"}
!611 = metadata !{metadata !"const TValue .Table *.1.const TValue *.1"}
!612 = metadata !{metadata !"void.lua_State *.1.const char *.1"}
!613 = metadata !{metadata !"TValue .lua_State *.1.Table *.1.const TValue *.1"}
!614 = metadata !{metadata !"void.lua_State *.1.Table *.1"}
!615 = metadata !{metadata !"int.lua_State *.1.const TValue *.1.const TValue *.1"}
!616 = metadata !{metadata !"int.const TValue *.1.const TValue *.1"}
!617 = metadata !{metadata !"int.const TString *.1.const TString *.1"}
!618 = metadata !{metadata !"int.lua_State *.1.const TValue *.1.const TValue *.1.TMS.0"}
!619 = metadata !{metadata !"void.lua_State *.1.const TValue *.1.const TValue *.1"}
!620 = metadata !{metadata !"int.TString *.1.TString *.1"}
!621 = metadata !{metadata !"void.lua_State *.1.int.0"}
!622 = metadata !{metadata !"void.lua_State *.1.StkId.1"}
!623 = metadata !{metadata !"void.lua_State *.1.const TValue *.1.const TValue *.1.StkId.1.TMS.0"}
!624 = metadata !{metadata !"void.StkId.1.int.0.char *.1"}
!625 = metadata !{metadata !"TString .lua_State *.1.const char *.1.size_t.0"}
!626 = metadata !{metadata !"TString .lua_State *.1.size_t.0"}
!627 = metadata !{metadata !"void.lua_State *.1.StkId.1.const TValue *.1"}
!628 = metadata !{metadata !"int.Table *.1"}
!629 = metadata !{metadata !"lua_Integer.lua_State *.1.lua_Integer.0.lua_Integer.0"}
!630 = metadata !{metadata !"lua_Integer.lua_Integer.0.lua_Integer.0"}
!631 = metadata !{metadata !"void.lua_State *.1"}
!632 = metadata !{metadata !"void.lua_State *.1.UpVal *.1"}
!633 = metadata !{metadata !"Table .lua_State *.1"}
!634 = metadata !{metadata !"void.lua_State *.1.Table *.1.unsigned int.0.unsigned int.0"}
!635 = metadata !{metadata !"int.int.0"}
!636 = metadata !{metadata !"const TValue .Table *.1.TString *.1"}
!637 = metadata !{metadata !"double.double.0.double.0"}
!638 = metadata !{metadata !"int.lua_State *.1.StkId.1.int.0"}
!639 = metadata !{metadata !"int.lua_State *.1.CallInfo *.1.StkId.1.int.0"}
!640 = metadata !{metadata !"int.const TValue *.1.lua_Integer *.1.lua_Integer.0.int *.1"}
!641 = metadata !{metadata !"void.lua_State *.1.StkId.1.int.0"}
!642 = metadata !{metadata !"void.lua_State *.1.Table *.1.unsigned int.0"}
!643 = metadata !{metadata !"void.lua_State *.1.Table *.1.lua_Integer.0.TValue *.1"}
!644 = metadata !{metadata !"LClosure .Proto *.1.UpVal **.1.StkId.1"}
!645 = metadata !{metadata !"void.lua_State *.1.Proto *.1.UpVal **.1.StkId.1.StkId.1"}
!646 = metadata !{metadata !"LClosure .lua_State *.1.int.0"}
!647 = metadata !{metadata !"UpVal .lua_State *.1.StkId.1"}
!648 = metadata !{metadata !"int.lua_Integer.0.lua_Number.0"}
!649 = metadata !{metadata !"int.const char *.1.const char *.1"}
!650 = metadata !{metadata !"unsigned int.const char *.1"}
!651 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lvm.h"}
!652 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lobject.h"}
!653 = metadata !{metadata !"D:/Xilinx/SDx/2016.3/SDK/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include\5Cbits/mathcalls.h"}
!654 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/ltm.h"}
!655 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/ldebug.h"}
!656 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/ltable.h"}
!657 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lgc.h"}
!658 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lvm.c"}
!659 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lstring.h"}
!660 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lfunc.h"}
!661 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/ldo.h"}
!662 = metadata !{metadata !"D:/Xilinx/SDx/2016.3/SDK/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include\5Cstring.h"}
!663 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!664 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!665 = metadata !{i32 1, metadata !"wchar_size", i32 4}
!666 = metadata !{i32 1, metadata !"min_enum_size", i32 4}
!667 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
!668 = metadata !{i32 786689, metadata !83, metadata !"obj", metadata !85, i32 16777288, metadata !89, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [obj] [line 72]
!669 = metadata !{i32 72, i32 35, metadata !83, null}
!670 = metadata !{i32 786689, metadata !83, metadata !"n", metadata !85, i32 33554504, metadata !362, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 72]
!671 = metadata !{i32 72, i32 52, metadata !83, null}
!672 = metadata !{i32 786688, metadata !83, metadata !"v", metadata !85, i32 73, metadata !91, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [v] [line 73]
!673 = metadata !{i32 73, i32 10, metadata !83, null}
!674 = metadata !{i32 74, i32 7, metadata !675, null}
!675 = metadata !{i32 786443, metadata !84, metadata !83, i32 74, i32 7, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!676 = metadata !{i32 75, i32 5, metadata !677, null}
!677 = metadata !{i32 786443, metadata !84, metadata !675, i32 74, i32 25, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!678 = metadata !{i32 76, i32 5, metadata !677, null}
!679 = metadata !{i32 78, i32 12, metadata !680, null}
!680 = metadata !{i32 786443, metadata !84, metadata !675, i32 78, i32 12, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!681 = metadata !{i32 79, i32 13, metadata !680, null}
!682 = metadata !{i32 79, i32 13, metadata !683, null}
!683 = metadata !{i32 786443, metadata !84, metadata !680, i32 79, i32 13, i32 1, i32 480} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!684 = metadata !{i32 79, i32 13, metadata !685, null}
!685 = metadata !{i32 786443, metadata !84, metadata !680, i32 79, i32 13, i32 2, i32 481} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!686 = metadata !{i32 79, i32 13, metadata !687, null}
!687 = metadata !{i32 786443, metadata !84, metadata !688, i32 79, i32 13, i32 4, i32 483} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!688 = metadata !{i32 786443, metadata !84, metadata !680, i32 79, i32 13, i32 3, i32 482} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!689 = metadata !{i32 80, i32 5, metadata !690, null}
!690 = metadata !{i32 786443, metadata !84, metadata !680, i32 79, i32 62, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!691 = metadata !{i32 80, i32 5, metadata !692, null}
!692 = metadata !{i32 786443, metadata !84, metadata !690, i32 80, i32 5, i32 1, i32 484} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!693 = metadata !{i32 80, i32 5, metadata !694, null}
!694 = metadata !{i32 786443, metadata !84, metadata !690, i32 80, i32 5, i32 2, i32 485} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!695 = metadata !{i32 80, i32 5, metadata !696, null}
!696 = metadata !{i32 786443, metadata !84, metadata !697, i32 80, i32 5, i32 4, i32 487} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!697 = metadata !{i32 786443, metadata !84, metadata !690, i32 80, i32 5, i32 3, i32 486} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!698 = metadata !{i32 81, i32 5, metadata !690, null}
!699 = metadata !{i32 84, i32 5, metadata !680, null}
!700 = metadata !{i32 85, i32 1, metadata !83, null}
!701 = metadata !{i32 786689, metadata !363, metadata !"obj", metadata !85, i32 16777310, metadata !89, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [obj] [line 94]
!702 = metadata !{i32 94, i32 35, metadata !363, null}
!703 = metadata !{i32 786689, metadata !363, metadata !"p", metadata !85, i32 33554526, metadata !366, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [p] [line 94]
!704 = metadata !{i32 94, i32 53, metadata !363, null}
!705 = metadata !{i32 786689, metadata !363, metadata !"mode", metadata !85, i32 50331742, metadata !88, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mode] [line 94]
!706 = metadata !{i32 94, i32 60, metadata !363, null}
!707 = metadata !{i32 786688, metadata !363, metadata !"v", metadata !85, i32 95, metadata !91, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [v] [line 95]
!708 = metadata !{i32 95, i32 10, metadata !363, null}
!709 = metadata !{i32 95, i32 3, metadata !363, null}
!710 = metadata !{i32 97, i32 7, metadata !711, null}
!711 = metadata !{i32 786443, metadata !84, metadata !363, i32 97, i32 7, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!712 = metadata !{i32 786688, metadata !713, metadata !"n", metadata !85, i32 98, metadata !205, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 98]
!713 = metadata !{i32 786443, metadata !84, metadata !711, i32 97, i32 23, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!714 = metadata !{i32 98, i32 16, metadata !713, null}
!715 = metadata !{i32 98, i32 5, metadata !713, null}
!716 = metadata !{i32 786688, metadata !713, metadata !"f", metadata !85, i32 99, metadata !205, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [f] [line 99]
!717 = metadata !{i32 99, i32 16, metadata !713, null}
!718 = metadata !{i32 99, i32 20, metadata !713, null}
!719 = metadata !{i32 100, i32 9, metadata !720, null}
!720 = metadata !{i32 786443, metadata !84, metadata !713, i32 100, i32 9, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!721 = metadata !{i32 101, i32 11, metadata !722, null}
!722 = metadata !{i32 786443, metadata !84, metadata !723, i32 101, i32 11, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!723 = metadata !{i32 786443, metadata !84, metadata !720, i32 100, i32 17, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!724 = metadata !{i32 101, i32 22, metadata !725, null}
!725 = metadata !{i32 786443, metadata !84, metadata !722, i32 101, i32 22, i32 1, i32 488} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!726 = metadata !{i32 102, i32 16, metadata !727, null}
!727 = metadata !{i32 786443, metadata !84, metadata !722, i32 102, i32 16, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!728 = metadata !{i32 103, i32 9, metadata !727, null}
!729 = metadata !{i32 104, i32 5, metadata !723, null}
!730 = metadata !{i32 105, i32 5, metadata !713, null}
!731 = metadata !{i32 105, i32 5, metadata !732, null}
!732 = metadata !{i32 786443, metadata !84, metadata !713, i32 105, i32 5, i32 1, i32 489} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!733 = metadata !{i32 105, i32 5, metadata !734, null}
!734 = metadata !{i32 786443, metadata !84, metadata !713, i32 105, i32 5, i32 3, i32 491} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!735 = metadata !{i32 105, i32 5, metadata !736, null}
!736 = metadata !{i32 786443, metadata !84, metadata !737, i32 105, i32 5, i32 4, i32 492} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!737 = metadata !{i32 786443, metadata !84, metadata !713, i32 105, i32 5, i32 2, i32 490} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!738 = metadata !{i32 107, i32 12, metadata !739, null}
!739 = metadata !{i32 786443, metadata !84, metadata !711, i32 107, i32 12, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!740 = metadata !{i32 108, i32 5, metadata !741, null}
!741 = metadata !{i32 786443, metadata !84, metadata !739, i32 107, i32 30, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!742 = metadata !{i32 109, i32 5, metadata !741, null}
!743 = metadata !{i32 111, i32 12, metadata !744, null}
!744 = metadata !{i32 786443, metadata !84, metadata !739, i32 111, i32 12, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!745 = metadata !{i32 112, i32 13, metadata !744, null}
!746 = metadata !{i32 112, i32 13, metadata !747, null}
!747 = metadata !{i32 786443, metadata !84, metadata !744, i32 112, i32 13, i32 1, i32 493} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!748 = metadata !{i32 112, i32 13, metadata !749, null}
!749 = metadata !{i32 786443, metadata !84, metadata !744, i32 112, i32 13, i32 2, i32 494} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!750 = metadata !{i32 112, i32 13, metadata !751, null}
!751 = metadata !{i32 786443, metadata !84, metadata !752, i32 112, i32 13, i32 4, i32 496} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!752 = metadata !{i32 786443, metadata !84, metadata !744, i32 112, i32 13, i32 3, i32 495} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!753 = metadata !{i32 113, i32 5, metadata !754, null}
!754 = metadata !{i32 786443, metadata !84, metadata !744, i32 112, i32 62, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!755 = metadata !{i32 114, i32 5, metadata !754, null}
!756 = metadata !{i32 116, i32 3, metadata !363, null}
!757 = metadata !{i32 117, i32 1, metadata !363, null}
!758 = metadata !{i32 786689, metadata !367, metadata !"L", metadata !85, i32 16777376, metadata !119, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 160]
!759 = metadata !{i32 160, i32 33, metadata !367, null}
!760 = metadata !{i32 786689, metadata !367, metadata !"t", metadata !85, i32 33554592, metadata !89, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [t] [line 160]
!761 = metadata !{i32 160, i32 50, metadata !367, null}
!762 = metadata !{i32 786689, metadata !367, metadata !"key", metadata !85, i32 50331808, metadata !132, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [key] [line 160]
!763 = metadata !{i32 160, i32 61, metadata !367, null}
!764 = metadata !{i32 786689, metadata !367, metadata !"val", metadata !85, i32 67109024, metadata !131, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [val] [line 160]
!765 = metadata !{i32 160, i32 72, metadata !367, null}
!766 = metadata !{i32 786689, metadata !367, metadata !"slot", metadata !85, i32 83886241, metadata !89, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [slot] [line 161]
!767 = metadata !{i32 161, i32 37, metadata !367, null}
!768 = metadata !{i32 786688, metadata !367, metadata !"loop", metadata !85, i32 162, metadata !88, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [loop] [line 162]
!769 = metadata !{i32 162, i32 7, metadata !367, null}
!770 = metadata !{i32 786688, metadata !367, metadata !"tm", metadata !85, i32 163, metadata !89, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tm] [line 163]
!771 = metadata !{i32 163, i32 17, metadata !367, null}
!772 = metadata !{i32 164, i32 8, metadata !773, null}
!773 = metadata !{i32 786443, metadata !84, metadata !367, i32 164, i32 3, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!774 = metadata !{i32 164, i32 8, metadata !775, null}
!775 = metadata !{i32 786443, metadata !84, metadata !776, i32 164, i32 8, i32 2, i32 508} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!776 = metadata !{i32 786443, metadata !84, metadata !773, i32 164, i32 8, i32 1, i32 497} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!777 = metadata !{i32 165, i32 9, metadata !778, null}
!778 = metadata !{i32 786443, metadata !84, metadata !779, i32 165, i32 9, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!779 = metadata !{i32 786443, metadata !84, metadata !773, i32 164, i32 45, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!780 = metadata !{i32 167, i32 12, metadata !781, null}
!781 = metadata !{i32 786443, metadata !84, metadata !778, i32 165, i32 23, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!782 = metadata !{i32 168, i32 11, metadata !783, null}
!783 = metadata !{i32 786443, metadata !84, metadata !781, i32 168, i32 11, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!784 = metadata !{i32 169, i32 9, metadata !783, null}
!785 = metadata !{i32 171, i32 5, metadata !781, null}
!786 = metadata !{i32 174, i32 7, metadata !787, null}
!787 = metadata !{i32 786443, metadata !84, metadata !778, i32 172, i32 10, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!788 = metadata !{i32 174, i32 7, metadata !789, null}
!789 = metadata !{i32 786443, metadata !84, metadata !787, i32 174, i32 7, i32 1, i32 498} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!790 = metadata !{i32 174, i32 7, metadata !791, null}
!791 = metadata !{i32 786443, metadata !84, metadata !787, i32 174, i32 7, i32 2, i32 499} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!792 = metadata !{i32 174, i32 7, metadata !793, null}
!793 = metadata !{i32 786443, metadata !84, metadata !787, i32 174, i32 7, i32 4, i32 501} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!794 = metadata !{i32 174, i32 12, metadata !795, null}
!795 = metadata !{i32 786443, metadata !84, metadata !787, i32 174, i32 12, i32 5, i32 502} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!796 = metadata !{i32 174, i32 12, metadata !787, null}
!797 = metadata !{i32 174, i32 12, metadata !798, null}
!798 = metadata !{i32 786443, metadata !84, metadata !799, i32 174, i32 12, i32 7, i32 504} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!799 = metadata !{i32 786443, metadata !84, metadata !787, i32 174, i32 12, i32 6, i32 503} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!800 = metadata !{i32 174, i32 12, metadata !801, null}
!801 = metadata !{i32 786443, metadata !84, metadata !802, i32 174, i32 12, i32 8, i32 505} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!802 = metadata !{i32 786443, metadata !84, metadata !787, i32 174, i32 12, i32 3, i32 500} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!803 = metadata !{i32 175, i32 11, metadata !804, null}
!804 = metadata !{i32 786443, metadata !84, metadata !787, i32 175, i32 11, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!805 = metadata !{i32 176, i32 9, metadata !806, null}
!806 = metadata !{i32 786443, metadata !84, metadata !804, i32 175, i32 23, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!807 = metadata !{i32 177, i32 9, metadata !806, null}
!808 = metadata !{i32 181, i32 9, metadata !809, null}
!809 = metadata !{i32 786443, metadata !84, metadata !779, i32 181, i32 9, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!810 = metadata !{i32 182, i32 7, metadata !811, null}
!811 = metadata !{i32 786443, metadata !84, metadata !809, i32 181, i32 27, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!812 = metadata !{i32 183, i32 7, metadata !811, null}
!813 = metadata !{i32 185, i32 5, metadata !779, null}
!814 = metadata !{i32 186, i32 9, metadata !815, null}
!815 = metadata !{i32 786443, metadata !84, metadata !779, i32 186, i32 9, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!816 = metadata !{i32 186, i32 9, metadata !817, null}
!817 = metadata !{i32 786443, metadata !84, metadata !815, i32 186, i32 9, i32 2, i32 507} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!818 = metadata !{i32 186, i32 9, metadata !819, null}
!819 = metadata !{i32 786443, metadata !84, metadata !815, i32 186, i32 9, i32 1, i32 506} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!820 = metadata !{i32 786688, metadata !821, metadata !"io1", metadata !85, i32 187, metadata !132, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [io1] [line 187]
!821 = metadata !{i32 786443, metadata !84, metadata !822, i32 187, i32 7, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!822 = metadata !{i32 786443, metadata !84, metadata !815, i32 186, i32 46, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!823 = metadata !{i32 187, i32 7, metadata !821, null}
!824 = metadata !{i32 188, i32 7, metadata !822, null}
!825 = metadata !{i32 191, i32 3, metadata !779, null}
!826 = metadata !{i32 164, i32 37, metadata !773, null}
!827 = metadata !{i32 192, i32 3, metadata !367, null}
!828 = metadata !{i32 193, i32 1, metadata !367, null}
!829 = metadata !{i32 786689, metadata !370, metadata !"L", metadata !85, i32 16777419, metadata !119, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 203]
!830 = metadata !{i32 203, i32 33, metadata !370, null}
!831 = metadata !{i32 786689, metadata !370, metadata !"t", metadata !85, i32 33554635, metadata !89, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [t] [line 203]
!832 = metadata !{i32 203, i32 50, metadata !370, null}
!833 = metadata !{i32 786689, metadata !370, metadata !"key", metadata !85, i32 50331851, metadata !132, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [key] [line 203]
!834 = metadata !{i32 203, i32 61, metadata !370, null}
!835 = metadata !{i32 786689, metadata !370, metadata !"val", metadata !85, i32 67109068, metadata !131, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [val] [line 204]
!836 = metadata !{i32 204, i32 28, metadata !370, null}
!837 = metadata !{i32 786689, metadata !370, metadata !"slot", metadata !85, i32 83886284, metadata !89, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [slot] [line 204]
!838 = metadata !{i32 204, i32 47, metadata !370, null}
!839 = metadata !{i32 786688, metadata !370, metadata !"loop", metadata !85, i32 205, metadata !88, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [loop] [line 205]
!840 = metadata !{i32 205, i32 7, metadata !370, null}
!841 = metadata !{i32 206, i32 8, metadata !842, null}
!842 = metadata !{i32 786443, metadata !84, metadata !370, i32 206, i32 3, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!843 = metadata !{i32 206, i32 8, metadata !844, null}
!844 = metadata !{i32 786443, metadata !84, metadata !845, i32 206, i32 8, i32 2, i32 538} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!845 = metadata !{i32 786443, metadata !84, metadata !842, i32 206, i32 8, i32 1, i32 509} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!846 = metadata !{i32 786688, metadata !847, metadata !"tm", metadata !85, i32 207, metadata !89, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tm] [line 207]
!847 = metadata !{i32 786443, metadata !84, metadata !842, i32 206, i32 45, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!848 = metadata !{i32 207, i32 19, metadata !847, null}
!849 = metadata !{i32 208, i32 9, metadata !850, null}
!850 = metadata !{i32 786443, metadata !84, metadata !847, i32 208, i32 9, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!851 = metadata !{i32 786688, metadata !852, metadata !"h", metadata !85, i32 209, metadata !853, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [h] [line 209]
!852 = metadata !{i32 786443, metadata !84, metadata !850, i32 208, i32 23, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!853 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !854} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from Table]
!854 = metadata !{i32 786454, metadata !92, null, metadata !"Table", i32 507, i64 0, i64 0, i64 0, i32 0, metadata !215} ; [ DW_TAG_typedef ] [Table] [line 507, size 0, align 0, offset 0] [from Table]
!855 = metadata !{i32 209, i32 14, metadata !852, null}
!856 = metadata !{i32 209, i32 7, metadata !852, null}
!857 = metadata !{i32 211, i32 7, metadata !852, null}
!858 = metadata !{i32 211, i32 7, metadata !859, null}
!859 = metadata !{i32 786443, metadata !84, metadata !852, i32 211, i32 7, i32 1, i32 510} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!860 = metadata !{i32 211, i32 7, metadata !861, null}
!861 = metadata !{i32 786443, metadata !84, metadata !852, i32 211, i32 7, i32 2, i32 511} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!862 = metadata !{i32 211, i32 7, metadata !863, null}
!863 = metadata !{i32 786443, metadata !84, metadata !852, i32 211, i32 7, i32 4, i32 513} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!864 = metadata !{i32 211, i32 12, metadata !865, null}
!865 = metadata !{i32 786443, metadata !84, metadata !852, i32 211, i32 12, i32 5, i32 514} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!866 = metadata !{i32 211, i32 12, metadata !852, null}
!867 = metadata !{i32 211, i32 12, metadata !868, null}
!868 = metadata !{i32 786443, metadata !84, metadata !869, i32 211, i32 12, i32 7, i32 516} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!869 = metadata !{i32 786443, metadata !84, metadata !852, i32 211, i32 12, i32 6, i32 515} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!870 = metadata !{i32 211, i32 12, metadata !871, null}
!871 = metadata !{i32 786443, metadata !84, metadata !872, i32 211, i32 12, i32 8, i32 517} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!872 = metadata !{i32 786443, metadata !84, metadata !852, i32 211, i32 12, i32 3, i32 512} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!873 = metadata !{i32 212, i32 11, metadata !874, null}
!874 = metadata !{i32 786443, metadata !84, metadata !852, i32 212, i32 11, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!875 = metadata !{i32 213, i32 13, metadata !876, null}
!876 = metadata !{i32 786443, metadata !84, metadata !877, i32 213, i32 13, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!877 = metadata !{i32 786443, metadata !84, metadata !874, i32 212, i32 23, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!878 = metadata !{i32 214, i32 18, metadata !876, null}
!879 = metadata !{i32 216, i32 9, metadata !877, null}
!880 = metadata !{i32 217, i32 9, metadata !877, null}
!881 = metadata !{i32 218, i32 9, metadata !877, null}
!882 = metadata !{i32 218, i32 9, metadata !883, null}
!883 = metadata !{i32 786443, metadata !84, metadata !877, i32 218, i32 9, i32 1, i32 518} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!884 = metadata !{i32 218, i32 9, metadata !885, null}
!885 = metadata !{i32 786443, metadata !84, metadata !877, i32 218, i32 9, i32 3, i32 520} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!886 = metadata !{i32 218, i32 9, metadata !887, null}
!887 = metadata !{i32 786443, metadata !84, metadata !877, i32 218, i32 9, i32 5, i32 522} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!888 = metadata !{i32 218, i32 9, metadata !889, null}
!889 = metadata !{i32 786443, metadata !84, metadata !890, i32 218, i32 9, i32 6, i32 523} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!890 = metadata !{i32 786443, metadata !84, metadata !891, i32 218, i32 9, i32 4, i32 521} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!891 = metadata !{i32 786443, metadata !84, metadata !877, i32 218, i32 9, i32 2, i32 519} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!892 = metadata !{i32 219, i32 9, metadata !877, null}
!893 = metadata !{i32 222, i32 5, metadata !852, null}
!894 = metadata !{i32 224, i32 11, metadata !895, null}
!895 = metadata !{i32 786443, metadata !84, metadata !896, i32 224, i32 11, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!896 = metadata !{i32 786443, metadata !84, metadata !850, i32 223, i32 10, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!897 = metadata !{i32 225, i32 9, metadata !895, null}
!898 = metadata !{i32 228, i32 9, metadata !899, null}
!899 = metadata !{i32 786443, metadata !84, metadata !847, i32 228, i32 9, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!900 = metadata !{i32 229, i32 7, metadata !901, null}
!901 = metadata !{i32 786443, metadata !84, metadata !899, i32 228, i32 27, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!902 = metadata !{i32 230, i32 7, metadata !901, null}
!903 = metadata !{i32 232, i32 5, metadata !847, null}
!904 = metadata !{i32 233, i32 9, metadata !905, null}
!905 = metadata !{i32 786443, metadata !84, metadata !847, i32 233, i32 9, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!906 = metadata !{i32 233, i32 9, metadata !907, null}
!907 = metadata !{i32 786443, metadata !84, metadata !905, i32 233, i32 9, i32 2, i32 525} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!908 = metadata !{i32 233, i32 9, metadata !909, null}
!909 = metadata !{i32 786443, metadata !84, metadata !905, i32 233, i32 9, i32 1, i32 524} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!910 = metadata !{i32 233, i32 9, metadata !911, null}
!911 = metadata !{i32 786443, metadata !84, metadata !905, i32 233, i32 9, i32 3, i32 526} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!912 = metadata !{i32 233, i32 9, metadata !913, null}
!913 = metadata !{i32 786443, metadata !84, metadata !905, i32 233, i32 9, i32 4, i32 527} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!914 = metadata !{i32 233, i32 9, metadata !915, null}
!915 = metadata !{i32 786443, metadata !84, metadata !905, i32 233, i32 9, i32 6, i32 529} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!916 = metadata !{i32 233, i32 9, metadata !917, null}
!917 = metadata !{i32 786443, metadata !84, metadata !905, i32 233, i32 9, i32 8, i32 531} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!918 = metadata !{i32 233, i32 9, metadata !919, null}
!919 = metadata !{i32 786443, metadata !84, metadata !905, i32 233, i32 9, i32 10, i32 533} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!920 = metadata !{i32 233, i32 9, metadata !921, null}
!921 = metadata !{i32 786443, metadata !84, metadata !922, i32 233, i32 9, i32 11, i32 534} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!922 = metadata !{i32 786443, metadata !84, metadata !923, i32 233, i32 9, i32 9, i32 532} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!923 = metadata !{i32 786443, metadata !84, metadata !905, i32 233, i32 9, i32 7, i32 530} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!924 = metadata !{i32 233, i32 9, metadata !925, null}
!925 = metadata !{i32 786443, metadata !84, metadata !926, i32 233, i32 9, i32 13, i32 536} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!926 = metadata !{i32 786443, metadata !84, metadata !905, i32 233, i32 9, i32 12, i32 535} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!927 = metadata !{i32 233, i32 9, metadata !928, null}
!928 = metadata !{i32 786443, metadata !84, metadata !929, i32 233, i32 9, i32 14, i32 537} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!929 = metadata !{i32 786443, metadata !84, metadata !905, i32 233, i32 9, i32 5, i32 528} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!930 = metadata !{i32 234, i32 7, metadata !905, null}
!931 = metadata !{i32 236, i32 3, metadata !847, null}
!932 = metadata !{i32 206, i32 37, metadata !842, null}
!933 = metadata !{i32 237, i32 3, metadata !370, null}
!934 = metadata !{i32 238, i32 1, metadata !370, null}
!935 = metadata !{i32 786689, metadata !371, metadata !"L", metadata !85, i32 16777580, metadata !119, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 364]
!936 = metadata !{i32 364, i32 31, metadata !371, null}
!937 = metadata !{i32 786689, metadata !371, metadata !"l", metadata !85, i32 33554796, metadata !89, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [l] [line 364]
!938 = metadata !{i32 364, i32 48, metadata !371, null}
!939 = metadata !{i32 786689, metadata !371, metadata !"r", metadata !85, i32 50332012, metadata !89, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [r] [line 364]
!940 = metadata !{i32 364, i32 65, metadata !371, null}
!941 = metadata !{i32 786688, metadata !371, metadata !"res", metadata !85, i32 365, metadata !88, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [res] [line 365]
!942 = metadata !{i32 365, i32 7, metadata !371, null}
!943 = metadata !{i32 366, i32 7, metadata !944, null}
!944 = metadata !{i32 786443, metadata !84, metadata !371, i32 366, i32 7, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!945 = metadata !{i32 366, i32 7, metadata !946, null}
!946 = metadata !{i32 786443, metadata !84, metadata !944, i32 366, i32 7, i32 1, i32 539} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!947 = metadata !{i32 367, i32 12, metadata !944, null}
!948 = metadata !{i32 368, i32 12, metadata !949, null}
!949 = metadata !{i32 786443, metadata !84, metadata !944, i32 368, i32 12, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!950 = metadata !{i32 368, i32 12, metadata !951, null}
!951 = metadata !{i32 786443, metadata !84, metadata !949, i32 368, i32 12, i32 1, i32 540} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!952 = metadata !{i32 369, i32 12, metadata !949, null}
!953 = metadata !{i32 370, i32 19, metadata !954, null}
!954 = metadata !{i32 786443, metadata !84, metadata !949, i32 370, i32 12, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!955 = metadata !{i32 371, i32 5, metadata !954, null}
!956 = metadata !{i32 372, i32 3, metadata !371, null}
!957 = metadata !{i32 373, i32 1, metadata !371, null}
!958 = metadata !{i32 786689, metadata !479, metadata !"l", metadata !85, i32 16777534, metadata !89, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [l] [line 318]
!959 = metadata !{i32 318, i32 33, metadata !479, null}
!960 = metadata !{i32 786689, metadata !479, metadata !"r", metadata !85, i32 33554750, metadata !89, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [r] [line 318]
!961 = metadata !{i32 318, i32 50, metadata !479, null}
!962 = metadata !{i32 319, i32 7, metadata !963, null}
!963 = metadata !{i32 786443, metadata !84, metadata !479, i32 319, i32 7, i32 0, i32 474} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!964 = metadata !{i32 786688, metadata !965, metadata !"li", metadata !85, i32 320, metadata !358, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [li] [line 320]
!965 = metadata !{i32 786443, metadata !84, metadata !963, i32 319, i32 23, i32 0, i32 475} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!966 = metadata !{i32 320, i32 17, metadata !965, null}
!967 = metadata !{i32 320, i32 5, metadata !965, null}
!968 = metadata !{i32 321, i32 9, metadata !969, null}
!969 = metadata !{i32 786443, metadata !84, metadata !965, i32 321, i32 9, i32 0, i32 476} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!970 = metadata !{i32 322, i32 7, metadata !969, null}
!971 = metadata !{i32 324, i32 14, metadata !969, null}
!972 = metadata !{i32 786688, metadata !973, metadata !"lf", metadata !85, i32 327, metadata !205, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lf] [line 327]
!973 = metadata !{i32 786443, metadata !84, metadata !963, i32 326, i32 8, i32 0, i32 477} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!974 = metadata !{i32 327, i32 16, metadata !973, null}
!975 = metadata !{i32 327, i32 5, metadata !973, null}
!976 = metadata !{i32 328, i32 9, metadata !977, null}
!977 = metadata !{i32 786443, metadata !84, metadata !973, i32 328, i32 9, i32 0, i32 478} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!978 = metadata !{i32 329, i32 7, metadata !977, null}
!979 = metadata !{i32 330, i32 14, metadata !980, null}
!980 = metadata !{i32 786443, metadata !84, metadata !977, i32 330, i32 14, i32 0, i32 479} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!981 = metadata !{i32 331, i32 7, metadata !980, null}
!982 = metadata !{i32 333, i32 15, metadata !980, null}
!983 = metadata !{i32 335, i32 1, metadata !479, null}
!984 = metadata !{i32 786689, metadata !474, metadata !"ls", metadata !85, i32 16777464, metadata !477, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ls] [line 248]
!985 = metadata !{i32 248, i32 37, metadata !474, null}
!986 = metadata !{i32 786689, metadata !474, metadata !"rs", metadata !85, i32 33554680, metadata !477, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rs] [line 248]
!987 = metadata !{i32 248, i32 56, metadata !474, null}
!988 = metadata !{i32 786688, metadata !474, metadata !"l", metadata !85, i32 249, metadata !327, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [l] [line 249]
!989 = metadata !{i32 249, i32 15, metadata !474, null}
!990 = metadata !{i32 249, i32 3, metadata !474, null}
!991 = metadata !{i32 786688, metadata !474, metadata !"ll", metadata !85, i32 250, metadata !143, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ll] [line 250]
!992 = metadata !{i32 250, i32 10, metadata !474, null}
!993 = metadata !{i32 250, i32 3, metadata !474, null}
!994 = metadata !{i32 250, i32 3, metadata !995, null}
!995 = metadata !{i32 786443, metadata !84, metadata !474, i32 250, i32 3, i32 1, i32 541} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!996 = metadata !{i32 250, i32 3, metadata !997, null}
!997 = metadata !{i32 786443, metadata !84, metadata !474, i32 250, i32 3, i32 2, i32 542} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!998 = metadata !{i32 250, i32 3, metadata !999, null}
!999 = metadata !{i32 786443, metadata !84, metadata !1000, i32 250, i32 3, i32 4, i32 544} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1000 = metadata !{i32 786443, metadata !84, metadata !474, i32 250, i32 3, i32 3, i32 543} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1001 = metadata !{i32 786688, metadata !474, metadata !"r", metadata !85, i32 251, metadata !327, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 251]
!1002 = metadata !{i32 251, i32 15, metadata !474, null}
!1003 = metadata !{i32 251, i32 3, metadata !474, null}
!1004 = metadata !{i32 786688, metadata !474, metadata !"lr", metadata !85, i32 252, metadata !143, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lr] [line 252]
!1005 = metadata !{i32 252, i32 10, metadata !474, null}
!1006 = metadata !{i32 252, i32 3, metadata !474, null}
!1007 = metadata !{i32 252, i32 3, metadata !1008, null}
!1008 = metadata !{i32 786443, metadata !84, metadata !474, i32 252, i32 3, i32 1, i32 545} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1009 = metadata !{i32 252, i32 3, metadata !1010, null}
!1010 = metadata !{i32 786443, metadata !84, metadata !474, i32 252, i32 3, i32 2, i32 546} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1011 = metadata !{i32 252, i32 3, metadata !1012, null}
!1012 = metadata !{i32 786443, metadata !84, metadata !1013, i32 252, i32 3, i32 4, i32 548} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1013 = metadata !{i32 786443, metadata !84, metadata !474, i32 252, i32 3, i32 3, i32 547} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1014 = metadata !{i32 253, i32 3, metadata !1015, null}
!1015 = metadata !{i32 786443, metadata !84, metadata !474, i32 253, i32 3, i32 0, i32 468} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1016 = metadata !{i32 786688, metadata !1017, metadata !"temp", metadata !85, i32 254, metadata !88, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [temp] [line 254]
!1017 = metadata !{i32 786443, metadata !84, metadata !1015, i32 253, i32 12, i32 0, i32 469} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1018 = metadata !{i32 254, i32 9, metadata !1017, null}
!1019 = metadata !{i32 254, i32 16, metadata !1017, null}
!1020 = metadata !{i32 255, i32 9, metadata !1021, null}
!1021 = metadata !{i32 786443, metadata !84, metadata !1017, i32 255, i32 9, i32 0, i32 470} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1022 = metadata !{i32 256, i32 7, metadata !1021, null}
!1023 = metadata !{i32 786688, metadata !1024, metadata !"len", metadata !85, i32 258, metadata !143, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [len] [line 258]
!1024 = metadata !{i32 786443, metadata !84, metadata !1021, i32 257, i32 10, i32 0, i32 471} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1025 = metadata !{i32 258, i32 14, metadata !1024, null}
!1026 = metadata !{i32 258, i32 20, metadata !1024, null}
!1027 = metadata !{i32 259, i32 11, metadata !1028, null}
!1028 = metadata !{i32 786443, metadata !84, metadata !1024, i32 259, i32 11, i32 0, i32 472} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1029 = metadata !{i32 260, i32 9, metadata !1028, null}
!1030 = metadata !{i32 261, i32 16, metadata !1031, null}
!1031 = metadata !{i32 786443, metadata !84, metadata !1028, i32 261, i32 16, i32 0, i32 473} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1032 = metadata !{i32 262, i32 9, metadata !1031, null}
!1033 = metadata !{i32 264, i32 7, metadata !1024, null}
!1034 = metadata !{i32 265, i32 7, metadata !1024, null}
!1035 = metadata !{i32 265, i32 17, metadata !1024, null}
!1036 = metadata !{i32 265, i32 28, metadata !1024, null}
!1037 = metadata !{i32 265, i32 38, metadata !1024, null}
!1038 = metadata !{i32 267, i32 3, metadata !1017, null}
!1039 = metadata !{i32 268, i32 1, metadata !474, null}
!1040 = metadata !{i32 786689, metadata !374, metadata !"L", metadata !85, i32 16777600, metadata !119, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 384]
!1041 = metadata !{i32 384, i32 32, metadata !374, null}
!1042 = metadata !{i32 786689, metadata !374, metadata !"l", metadata !85, i32 33554816, metadata !89, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [l] [line 384]
!1043 = metadata !{i32 384, i32 49, metadata !374, null}
!1044 = metadata !{i32 786689, metadata !374, metadata !"r", metadata !85, i32 50332032, metadata !89, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [r] [line 384]
!1045 = metadata !{i32 384, i32 66, metadata !374, null}
!1046 = metadata !{i32 786688, metadata !374, metadata !"res", metadata !85, i32 385, metadata !88, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [res] [line 385]
!1047 = metadata !{i32 385, i32 7, metadata !374, null}
!1048 = metadata !{i32 386, i32 7, metadata !1049, null}
!1049 = metadata !{i32 786443, metadata !84, metadata !374, i32 386, i32 7, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1050 = metadata !{i32 386, i32 7, metadata !1051, null}
!1051 = metadata !{i32 786443, metadata !84, metadata !1049, i32 386, i32 7, i32 1, i32 549} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1052 = metadata !{i32 387, i32 12, metadata !1049, null}
!1053 = metadata !{i32 388, i32 12, metadata !1054, null}
!1054 = metadata !{i32 786443, metadata !84, metadata !1049, i32 388, i32 12, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1055 = metadata !{i32 388, i32 12, metadata !1056, null}
!1056 = metadata !{i32 786443, metadata !84, metadata !1054, i32 388, i32 12, i32 1, i32 550} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1057 = metadata !{i32 389, i32 12, metadata !1054, null}
!1058 = metadata !{i32 390, i32 19, metadata !1059, null}
!1059 = metadata !{i32 786443, metadata !84, metadata !1054, i32 390, i32 12, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1060 = metadata !{i32 391, i32 5, metadata !1059, null}
!1061 = metadata !{i32 393, i32 5, metadata !1062, null}
!1062 = metadata !{i32 786443, metadata !84, metadata !1059, i32 392, i32 8, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1063 = metadata !{i32 394, i32 11, metadata !1062, null}
!1064 = metadata !{i32 395, i32 5, metadata !1062, null}
!1065 = metadata !{i32 396, i32 9, metadata !1066, null}
!1066 = metadata !{i32 786443, metadata !84, metadata !1062, i32 396, i32 9, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1067 = metadata !{i32 397, i32 7, metadata !1066, null}
!1068 = metadata !{i32 398, i32 5, metadata !1062, null}
!1069 = metadata !{i32 400, i32 1, metadata !374, null}
!1070 = metadata !{i32 786689, metadata !467, metadata !"l", metadata !85, i32 16777557, metadata !89, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [l] [line 341]
!1071 = metadata !{i32 341, i32 33, metadata !467, null}
!1072 = metadata !{i32 786689, metadata !467, metadata !"r", metadata !85, i32 33554773, metadata !89, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [r] [line 341]
!1073 = metadata !{i32 341, i32 50, metadata !467, null}
!1074 = metadata !{i32 342, i32 7, metadata !1075, null}
!1075 = metadata !{i32 786443, metadata !84, metadata !467, i32 342, i32 7, i32 0, i32 454} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1076 = metadata !{i32 786688, metadata !1077, metadata !"li", metadata !85, i32 343, metadata !358, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [li] [line 343]
!1077 = metadata !{i32 786443, metadata !84, metadata !1075, i32 342, i32 23, i32 0, i32 455} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1078 = metadata !{i32 343, i32 17, metadata !1077, null}
!1079 = metadata !{i32 343, i32 5, metadata !1077, null}
!1080 = metadata !{i32 344, i32 9, metadata !1081, null}
!1081 = metadata !{i32 786443, metadata !84, metadata !1077, i32 344, i32 9, i32 0, i32 456} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1082 = metadata !{i32 345, i32 7, metadata !1081, null}
!1083 = metadata !{i32 347, i32 14, metadata !1081, null}
!1084 = metadata !{i32 786688, metadata !1085, metadata !"lf", metadata !85, i32 350, metadata !205, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lf] [line 350]
!1085 = metadata !{i32 786443, metadata !84, metadata !1075, i32 349, i32 8, i32 0, i32 457} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1086 = metadata !{i32 350, i32 16, metadata !1085, null}
!1087 = metadata !{i32 350, i32 5, metadata !1085, null}
!1088 = metadata !{i32 351, i32 9, metadata !1089, null}
!1089 = metadata !{i32 786443, metadata !84, metadata !1085, i32 351, i32 9, i32 0, i32 458} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1090 = metadata !{i32 352, i32 7, metadata !1089, null}
!1091 = metadata !{i32 353, i32 14, metadata !1092, null}
!1092 = metadata !{i32 786443, metadata !84, metadata !1089, i32 353, i32 14, i32 0, i32 459} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1093 = metadata !{i32 354, i32 7, metadata !1092, null}
!1094 = metadata !{i32 356, i32 15, metadata !1092, null}
!1095 = metadata !{i32 358, i32 1, metadata !467, null}
!1096 = metadata !{i32 786689, metadata !375, metadata !"L", metadata !85, i32 16777623, metadata !119, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 407]
!1097 = metadata !{i32 407, i32 31, metadata !375, null}
!1098 = metadata !{i32 786689, metadata !375, metadata !"t1", metadata !85, i32 33554839, metadata !89, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [t1] [line 407]
!1099 = metadata !{i32 407, i32 48, metadata !375, null}
!1100 = metadata !{i32 786689, metadata !375, metadata !"t2", metadata !85, i32 50332055, metadata !89, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [t2] [line 407]
!1101 = metadata !{i32 407, i32 66, metadata !375, null}
!1102 = metadata !{i32 786688, metadata !375, metadata !"tm", metadata !85, i32 408, metadata !89, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tm] [line 408]
!1103 = metadata !{i32 408, i32 17, metadata !375, null}
!1104 = metadata !{i32 409, i32 7, metadata !1105, null}
!1105 = metadata !{i32 786443, metadata !84, metadata !375, i32 409, i32 7, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1106 = metadata !{i32 410, i32 9, metadata !1107, null}
!1107 = metadata !{i32 786443, metadata !84, metadata !1108, i32 410, i32 9, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1108 = metadata !{i32 786443, metadata !84, metadata !1105, i32 409, i32 31, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1109 = metadata !{i32 410, i32 9, metadata !1110, null}
!1110 = metadata !{i32 786443, metadata !84, metadata !1107, i32 410, i32 9, i32 1, i32 551} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1111 = metadata !{i32 411, i32 7, metadata !1107, null}
!1112 = metadata !{i32 786688, metadata !1113, metadata !"i1", metadata !85, i32 413, metadata !358, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i1] [line 413]
!1113 = metadata !{i32 786443, metadata !84, metadata !1107, i32 412, i32 10, i32 0, i32 50} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1114 = metadata !{i32 413, i32 19, metadata !1113, null}
!1115 = metadata !{i32 786688, metadata !1113, metadata !"i2", metadata !85, i32 413, metadata !358, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i2] [line 413]
!1116 = metadata !{i32 413, i32 23, metadata !1113, null}
!1117 = metadata !{i32 414, i32 7, metadata !1113, null}
!1118 = metadata !{i32 414, i32 7, metadata !1119, null}
!1119 = metadata !{i32 786443, metadata !84, metadata !1113, i32 414, i32 7, i32 1, i32 552} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1120 = metadata !{i32 414, i32 15, metadata !1121, null}
!1121 = metadata !{i32 786443, metadata !84, metadata !1113, i32 414, i32 15, i32 2, i32 553} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1122 = metadata !{i32 414, i32 15, metadata !1123, null}
!1123 = metadata !{i32 786443, metadata !84, metadata !1124, i32 414, i32 15, i32 5, i32 556} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1124 = metadata !{i32 786443, metadata !84, metadata !1113, i32 414, i32 15, i32 3, i32 554} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1125 = metadata !{i32 414, i32 15, metadata !1126, null}
!1126 = metadata !{i32 786443, metadata !84, metadata !1113, i32 414, i32 15, i32 7, i32 558} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1127 = metadata !{i32 414, i32 37, metadata !1128, null}
!1128 = metadata !{i32 786443, metadata !84, metadata !1113, i32 414, i32 37, i32 8, i32 559} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1129 = metadata !{i32 414, i32 37, metadata !1130, null}
!1130 = metadata !{i32 786443, metadata !84, metadata !1131, i32 414, i32 37, i32 11, i32 562} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1131 = metadata !{i32 786443, metadata !84, metadata !1113, i32 414, i32 37, i32 9, i32 560} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1132 = metadata !{i32 414, i32 37, metadata !1133, null}
!1133 = metadata !{i32 786443, metadata !84, metadata !1134, i32 414, i32 37, i32 12, i32 563} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1134 = metadata !{i32 786443, metadata !84, metadata !1135, i32 414, i32 37, i32 10, i32 561} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1135 = metadata !{i32 786443, metadata !84, metadata !1136, i32 414, i32 37, i32 6, i32 557} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1136 = metadata !{i32 786443, metadata !84, metadata !1113, i32 414, i32 37, i32 4, i32 555} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1137 = metadata !{i32 418, i32 3, metadata !375, null}
!1138 = metadata !{i32 419, i32 20, metadata !1139, null}
!1139 = metadata !{i32 786443, metadata !84, metadata !375, i32 418, i32 22, i32 0, i32 51} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1140 = metadata !{i32 420, i32 23, metadata !1139, null}
!1141 = metadata !{i32 421, i32 23, metadata !1139, null}
!1142 = metadata !{i32 422, i32 24, metadata !1139, null}
!1143 = metadata !{i32 423, i32 30, metadata !1139, null}
!1144 = metadata !{i32 424, i32 20, metadata !1139, null}
!1145 = metadata !{i32 425, i32 23, metadata !1139, null}
!1146 = metadata !{i32 426, i32 30, metadata !1139, null}
!1147 = metadata !{i32 428, i32 11, metadata !1148, null}
!1148 = metadata !{i32 786443, metadata !84, metadata !1149, i32 428, i32 11, i32 0, i32 53} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1149 = metadata !{i32 786443, metadata !84, metadata !1139, i32 427, i32 25, i32 0, i32 52} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1150 = metadata !{i32 428, i32 37, metadata !1151, null}
!1151 = metadata !{i32 786443, metadata !84, metadata !1148, i32 428, i32 37, i32 1, i32 564} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1152 = metadata !{i32 429, i32 16, metadata !1153, null}
!1153 = metadata !{i32 786443, metadata !84, metadata !1148, i32 429, i32 16, i32 0, i32 54} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1154 = metadata !{i32 429, i32 27, metadata !1155, null}
!1155 = metadata !{i32 786443, metadata !84, metadata !1153, i32 429, i32 27, i32 1, i32 565} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1156 = metadata !{i32 430, i32 7, metadata !1149, null}
!1157 = metadata !{i32 430, i32 7, metadata !1158, null}
!1158 = metadata !{i32 786443, metadata !84, metadata !1149, i32 430, i32 7, i32 1, i32 566} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1159 = metadata !{i32 430, i32 7, metadata !1160, null}
!1160 = metadata !{i32 786443, metadata !84, metadata !1149, i32 430, i32 7, i32 2, i32 567} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1161 = metadata !{i32 430, i32 7, metadata !1162, null}
!1162 = metadata !{i32 786443, metadata !84, metadata !1149, i32 430, i32 7, i32 4, i32 569} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1163 = metadata !{i32 430, i32 12, metadata !1164, null}
!1164 = metadata !{i32 786443, metadata !84, metadata !1149, i32 430, i32 12, i32 5, i32 570} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1165 = metadata !{i32 430, i32 12, metadata !1149, null}
!1166 = metadata !{i32 430, i32 12, metadata !1167, null}
!1167 = metadata !{i32 786443, metadata !84, metadata !1168, i32 430, i32 12, i32 7, i32 572} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1168 = metadata !{i32 786443, metadata !84, metadata !1149, i32 430, i32 12, i32 6, i32 571} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1169 = metadata !{i32 430, i32 12, metadata !1170, null}
!1170 = metadata !{i32 786443, metadata !84, metadata !1171, i32 430, i32 12, i32 8, i32 573} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1171 = metadata !{i32 786443, metadata !84, metadata !1149, i32 430, i32 12, i32 3, i32 568} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1172 = metadata !{i32 431, i32 11, metadata !1173, null}
!1173 = metadata !{i32 786443, metadata !84, metadata !1149, i32 431, i32 11, i32 0, i32 55} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1174 = metadata !{i32 432, i32 9, metadata !1173, null}
!1175 = metadata !{i32 432, i32 9, metadata !1176, null}
!1176 = metadata !{i32 786443, metadata !84, metadata !1173, i32 432, i32 9, i32 1, i32 574} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1177 = metadata !{i32 432, i32 9, metadata !1178, null}
!1178 = metadata !{i32 786443, metadata !84, metadata !1173, i32 432, i32 9, i32 2, i32 575} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1179 = metadata !{i32 432, i32 9, metadata !1180, null}
!1180 = metadata !{i32 786443, metadata !84, metadata !1173, i32 432, i32 9, i32 4, i32 577} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1181 = metadata !{i32 432, i32 14, metadata !1182, null}
!1182 = metadata !{i32 786443, metadata !84, metadata !1173, i32 432, i32 14, i32 5, i32 578} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1183 = metadata !{i32 432, i32 14, metadata !1173, null}
!1184 = metadata !{i32 432, i32 14, metadata !1185, null}
!1185 = metadata !{i32 786443, metadata !84, metadata !1186, i32 432, i32 14, i32 7, i32 580} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1186 = metadata !{i32 786443, metadata !84, metadata !1173, i32 432, i32 14, i32 6, i32 579} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1187 = metadata !{i32 432, i32 14, metadata !1188, null}
!1188 = metadata !{i32 786443, metadata !84, metadata !1189, i32 432, i32 14, i32 8, i32 581} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1189 = metadata !{i32 786443, metadata !84, metadata !1173, i32 432, i32 14, i32 3, i32 576} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1190 = metadata !{i32 433, i32 7, metadata !1149, null}
!1191 = metadata !{i32 436, i32 11, metadata !1192, null}
!1192 = metadata !{i32 786443, metadata !84, metadata !1193, i32 436, i32 11, i32 0, i32 57} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1193 = metadata !{i32 786443, metadata !84, metadata !1139, i32 435, i32 22, i32 0, i32 56} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1194 = metadata !{i32 436, i32 37, metadata !1195, null}
!1195 = metadata !{i32 786443, metadata !84, metadata !1192, i32 436, i32 37, i32 1, i32 582} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1196 = metadata !{i32 437, i32 16, metadata !1197, null}
!1197 = metadata !{i32 786443, metadata !84, metadata !1192, i32 437, i32 16, i32 0, i32 58} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1198 = metadata !{i32 437, i32 27, metadata !1199, null}
!1199 = metadata !{i32 786443, metadata !84, metadata !1197, i32 437, i32 27, i32 1, i32 583} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1200 = metadata !{i32 438, i32 7, metadata !1193, null}
!1201 = metadata !{i32 438, i32 7, metadata !1202, null}
!1202 = metadata !{i32 786443, metadata !84, metadata !1193, i32 438, i32 7, i32 1, i32 584} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1203 = metadata !{i32 438, i32 7, metadata !1204, null}
!1204 = metadata !{i32 786443, metadata !84, metadata !1193, i32 438, i32 7, i32 2, i32 585} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1205 = metadata !{i32 438, i32 7, metadata !1206, null}
!1206 = metadata !{i32 786443, metadata !84, metadata !1193, i32 438, i32 7, i32 4, i32 587} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1207 = metadata !{i32 438, i32 12, metadata !1208, null}
!1208 = metadata !{i32 786443, metadata !84, metadata !1193, i32 438, i32 12, i32 5, i32 588} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1209 = metadata !{i32 438, i32 12, metadata !1193, null}
!1210 = metadata !{i32 438, i32 12, metadata !1211, null}
!1211 = metadata !{i32 786443, metadata !84, metadata !1212, i32 438, i32 12, i32 7, i32 590} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1212 = metadata !{i32 786443, metadata !84, metadata !1193, i32 438, i32 12, i32 6, i32 589} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1213 = metadata !{i32 438, i32 12, metadata !1214, null}
!1214 = metadata !{i32 786443, metadata !84, metadata !1215, i32 438, i32 12, i32 8, i32 591} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1215 = metadata !{i32 786443, metadata !84, metadata !1193, i32 438, i32 12, i32 3, i32 586} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1216 = metadata !{i32 439, i32 11, metadata !1217, null}
!1217 = metadata !{i32 786443, metadata !84, metadata !1193, i32 439, i32 11, i32 0, i32 59} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1218 = metadata !{i32 440, i32 9, metadata !1217, null}
!1219 = metadata !{i32 440, i32 9, metadata !1220, null}
!1220 = metadata !{i32 786443, metadata !84, metadata !1217, i32 440, i32 9, i32 1, i32 592} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1221 = metadata !{i32 440, i32 9, metadata !1222, null}
!1222 = metadata !{i32 786443, metadata !84, metadata !1217, i32 440, i32 9, i32 2, i32 593} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1223 = metadata !{i32 440, i32 9, metadata !1224, null}
!1224 = metadata !{i32 786443, metadata !84, metadata !1217, i32 440, i32 9, i32 4, i32 595} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1225 = metadata !{i32 440, i32 14, metadata !1226, null}
!1226 = metadata !{i32 786443, metadata !84, metadata !1217, i32 440, i32 14, i32 5, i32 596} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1227 = metadata !{i32 440, i32 14, metadata !1217, null}
!1228 = metadata !{i32 440, i32 14, metadata !1229, null}
!1229 = metadata !{i32 786443, metadata !84, metadata !1230, i32 440, i32 14, i32 7, i32 598} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1230 = metadata !{i32 786443, metadata !84, metadata !1217, i32 440, i32 14, i32 6, i32 597} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1231 = metadata !{i32 440, i32 14, metadata !1232, null}
!1232 = metadata !{i32 786443, metadata !84, metadata !1233, i32 440, i32 14, i32 8, i32 599} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1233 = metadata !{i32 786443, metadata !84, metadata !1217, i32 440, i32 14, i32 3, i32 594} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1234 = metadata !{i32 441, i32 7, metadata !1193, null}
!1235 = metadata !{i32 444, i32 7, metadata !1139, null}
!1236 = metadata !{i32 446, i32 7, metadata !1237, null}
!1237 = metadata !{i32 786443, metadata !84, metadata !375, i32 446, i32 7, i32 0, i32 60} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1238 = metadata !{i32 447, i32 5, metadata !1237, null}
!1239 = metadata !{i32 448, i32 3, metadata !375, null}
!1240 = metadata !{i32 449, i32 3, metadata !375, null}
!1241 = metadata !{i32 449, i32 3, metadata !1242, null}
!1242 = metadata !{i32 786443, metadata !84, metadata !375, i32 449, i32 3, i32 2, i32 601} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1243 = metadata !{i32 449, i32 3, metadata !1244, null}
!1244 = metadata !{i32 786443, metadata !84, metadata !375, i32 449, i32 3, i32 3, i32 602} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1245 = metadata !{i32 449, i32 3, metadata !1246, null}
!1246 = metadata !{i32 786443, metadata !84, metadata !375, i32 449, i32 3, i32 4, i32 603} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1247 = metadata !{i32 449, i32 3, metadata !1248, null}
!1248 = metadata !{i32 786443, metadata !84, metadata !1249, i32 449, i32 3, i32 5, i32 604} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1249 = metadata !{i32 786443, metadata !84, metadata !375, i32 449, i32 3, i32 1, i32 600} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1250 = metadata !{i32 450, i32 1, metadata !375, null}
!1251 = metadata !{i32 786689, metadata !376, metadata !"L", metadata !85, i32 16777690, metadata !119, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 474]
!1252 = metadata !{i32 474, i32 30, metadata !376, null}
!1253 = metadata !{i32 786689, metadata !376, metadata !"total", metadata !85, i32 33554906, metadata !88, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [total] [line 474]
!1254 = metadata !{i32 474, i32 37, metadata !376, null}
!1255 = metadata !{i32 476, i32 3, metadata !376, null}
!1256 = metadata !{i32 786688, metadata !1257, metadata !"top", metadata !85, i32 477, metadata !131, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [top] [line 477]
!1257 = metadata !{i32 786443, metadata !84, metadata !376, i32 476, i32 6, i32 0, i32 61} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1258 = metadata !{i32 477, i32 11, metadata !1257, null}
!1259 = metadata !{i32 477, i32 5, metadata !1257, null}
!1260 = metadata !{i32 786688, metadata !1257, metadata !"n", metadata !85, i32 478, metadata !88, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 478]
!1261 = metadata !{i32 478, i32 9, metadata !1257, null}
!1262 = metadata !{i32 478, i32 5, metadata !1257, null}
!1263 = metadata !{i32 479, i32 9, metadata !1264, null}
!1264 = metadata !{i32 786443, metadata !84, metadata !1257, i32 479, i32 9, i32 0, i32 62} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1265 = metadata !{i32 479, i32 9, metadata !1266, null}
!1266 = metadata !{i32 786443, metadata !84, metadata !1264, i32 479, i32 9, i32 2, i32 606} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1267 = metadata !{i32 479, i32 9, metadata !1268, null}
!1268 = metadata !{i32 786443, metadata !84, metadata !1269, i32 479, i32 9, i32 3, i32 607} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1269 = metadata !{i32 786443, metadata !84, metadata !1264, i32 479, i32 9, i32 1, i32 605} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1270 = metadata !{i32 479, i32 9, metadata !1271, null}
!1271 = metadata !{i32 786443, metadata !84, metadata !1264, i32 479, i32 9, i32 4, i32 608} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1272 = metadata !{i32 479, i32 52, metadata !1273, null}
!1273 = metadata !{i32 786443, metadata !84, metadata !1264, i32 479, i32 52, i32 5, i32 609} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1274 = metadata !{i32 480, i32 7, metadata !1264, null}
!1275 = metadata !{i32 481, i32 14, metadata !1276, null}
!1276 = metadata !{i32 786443, metadata !84, metadata !1264, i32 481, i32 14, i32 0, i32 63} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1277 = metadata !{i32 481, i32 14, metadata !1278, null}
!1278 = metadata !{i32 786443, metadata !84, metadata !1276, i32 481, i32 14, i32 1, i32 610} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1279 = metadata !{i32 482, i32 7, metadata !1276, null}
!1280 = metadata !{i32 482, i32 7, metadata !1281, null}
!1281 = metadata !{i32 786443, metadata !84, metadata !1276, i32 482, i32 7, i32 2, i32 612} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1282 = metadata !{i32 482, i32 7, metadata !1283, null}
!1283 = metadata !{i32 786443, metadata !84, metadata !1276, i32 482, i32 7, i32 3, i32 613} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1284 = metadata !{i32 482, i32 7, metadata !1285, null}
!1285 = metadata !{i32 786443, metadata !84, metadata !1276, i32 482, i32 7, i32 4, i32 614} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1286 = metadata !{i32 482, i32 7, metadata !1287, null}
!1287 = metadata !{i32 786443, metadata !84, metadata !1288, i32 482, i32 7, i32 5, i32 615} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1288 = metadata !{i32 786443, metadata !84, metadata !1276, i32 482, i32 7, i32 1, i32 611} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1289 = metadata !{i32 483, i32 14, metadata !1290, null}
!1290 = metadata !{i32 786443, metadata !84, metadata !1276, i32 483, i32 14, i32 0, i32 64} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1291 = metadata !{i32 483, i32 14, metadata !1292, null}
!1292 = metadata !{i32 786443, metadata !84, metadata !1290, i32 483, i32 14, i32 1, i32 616} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1293 = metadata !{i32 786688, metadata !1294, metadata !"io1", metadata !85, i32 484, metadata !132, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [io1] [line 484]
!1294 = metadata !{i32 786443, metadata !84, metadata !1295, i32 484, i32 7, i32 0, i32 66} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1295 = metadata !{i32 786443, metadata !84, metadata !1290, i32 483, i32 35, i32 0, i32 65} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1296 = metadata !{i32 484, i32 7, metadata !1294, null}
!1297 = metadata !{i32 485, i32 5, metadata !1295, null}
!1298 = metadata !{i32 786688, metadata !1299, metadata !"tl", metadata !85, i32 488, metadata !143, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tl] [line 488]
!1299 = metadata !{i32 786443, metadata !84, metadata !1290, i32 486, i32 10, i32 0, i32 67} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1300 = metadata !{i32 488, i32 14, metadata !1299, null}
!1301 = metadata !{i32 488, i32 7, metadata !1299, null}
!1302 = metadata !{i32 488, i32 7, metadata !1303, null}
!1303 = metadata !{i32 786443, metadata !84, metadata !1299, i32 488, i32 7, i32 1, i32 617} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1304 = metadata !{i32 488, i32 7, metadata !1305, null}
!1305 = metadata !{i32 786443, metadata !84, metadata !1299, i32 488, i32 7, i32 2, i32 618} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1306 = metadata !{i32 488, i32 7, metadata !1307, null}
!1307 = metadata !{i32 786443, metadata !84, metadata !1308, i32 488, i32 7, i32 4, i32 620} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1308 = metadata !{i32 786443, metadata !84, metadata !1299, i32 488, i32 7, i32 3, i32 619} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1309 = metadata !{i32 786688, metadata !1299, metadata !"ts", metadata !85, i32 489, metadata !160, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ts] [line 489]
!1310 = metadata !{i32 489, i32 16, metadata !1299, null}
!1311 = metadata !{i32 491, i32 12, metadata !1312, null}
!1312 = metadata !{i32 786443, metadata !84, metadata !1299, i32 491, i32 7, i32 0, i32 68} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1313 = metadata !{i32 491, i32 12, metadata !1314, null}
!1314 = metadata !{i32 786443, metadata !84, metadata !1315, i32 491, i32 12, i32 7, i32 631} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1315 = metadata !{i32 786443, metadata !84, metadata !1312, i32 491, i32 12, i32 1, i32 621} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1316 = metadata !{i32 491, i32 12, metadata !1317, null}
!1317 = metadata !{i32 786443, metadata !84, metadata !1312, i32 491, i32 12, i32 2, i32 622} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1318 = metadata !{i32 491, i32 12, metadata !1319, null}
!1319 = metadata !{i32 786443, metadata !84, metadata !1312, i32 491, i32 12, i32 4, i32 624} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1320 = metadata !{i32 491, i32 32, metadata !1321, null}
!1321 = metadata !{i32 786443, metadata !84, metadata !1312, i32 491, i32 32, i32 5, i32 625} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1322 = metadata !{i32 491, i32 32, metadata !1323, null}
!1323 = metadata !{i32 786443, metadata !84, metadata !1312, i32 491, i32 32, i32 6, i32 626} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1324 = metadata !{i32 491, i32 32, metadata !1325, null}
!1325 = metadata !{i32 786443, metadata !84, metadata !1312, i32 491, i32 32, i32 3, i32 623} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1326 = metadata !{i32 786688, metadata !1327, metadata !"l", metadata !85, i32 492, metadata !143, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [l] [line 492]
!1327 = metadata !{i32 786443, metadata !84, metadata !1312, i32 491, i32 63, i32 0, i32 69} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1328 = metadata !{i32 492, i32 16, metadata !1327, null}
!1329 = metadata !{i32 492, i32 9, metadata !1327, null}
!1330 = metadata !{i32 492, i32 9, metadata !1331, null}
!1331 = metadata !{i32 786443, metadata !84, metadata !1327, i32 492, i32 9, i32 1, i32 627} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1332 = metadata !{i32 492, i32 9, metadata !1333, null}
!1333 = metadata !{i32 786443, metadata !84, metadata !1327, i32 492, i32 9, i32 2, i32 628} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1334 = metadata !{i32 492, i32 9, metadata !1335, null}
!1335 = metadata !{i32 786443, metadata !84, metadata !1336, i32 492, i32 9, i32 4, i32 630} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1336 = metadata !{i32 786443, metadata !84, metadata !1327, i32 492, i32 9, i32 3, i32 629} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1337 = metadata !{i32 493, i32 13, metadata !1338, null}
!1338 = metadata !{i32 786443, metadata !84, metadata !1327, i32 493, i32 13, i32 0, i32 70} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1339 = metadata !{i32 494, i32 11, metadata !1338, null}
!1340 = metadata !{i32 495, i32 9, metadata !1327, null}
!1341 = metadata !{i32 496, i32 7, metadata !1327, null}
!1342 = metadata !{i32 491, i32 58, metadata !1312, null}
!1343 = metadata !{i32 497, i32 11, metadata !1344, null}
!1344 = metadata !{i32 786443, metadata !84, metadata !1299, i32 497, i32 11, i32 0, i32 71} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1345 = metadata !{i32 786688, metadata !1346, metadata !"buff", metadata !85, i32 498, metadata !1347, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buff] [line 498]
!1346 = metadata !{i32 786443, metadata !84, metadata !1344, i32 497, i32 35, i32 0, i32 72} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1347 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 320, i64 8, i32 0, i32 0, metadata !329, metadata !1348, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 320, align 8, offset 0] [from char]
!1348 = metadata !{metadata !1349}
!1349 = metadata !{i32 786465, i64 0, i64 40}     ; [ DW_TAG_subrange_type ] [0, 39]
!1350 = metadata !{i32 498, i32 14, metadata !1346, null}
!1351 = metadata !{i32 499, i32 9, metadata !1346, null}
!1352 = metadata !{i32 500, i32 14, metadata !1346, null}
!1353 = metadata !{i32 501, i32 7, metadata !1346, null}
!1354 = metadata !{i32 503, i32 14, metadata !1355, null}
!1355 = metadata !{i32 786443, metadata !84, metadata !1344, i32 502, i32 12, i32 0, i32 73} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1356 = metadata !{i32 504, i32 9, metadata !1355, null}
!1357 = metadata !{i32 786688, metadata !1358, metadata !"io", metadata !85, i32 506, metadata !132, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [io] [line 506]
!1358 = metadata !{i32 786443, metadata !84, metadata !1299, i32 506, i32 7, i32 0, i32 74} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1359 = metadata !{i32 506, i32 7, metadata !1358, null}
!1360 = metadata !{i32 786688, metadata !1358, metadata !"x_", metadata !85, i32 506, metadata !160, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x_] [line 506]
!1361 = metadata !{i32 508, i32 5, metadata !1257, null}
!1362 = metadata !{i32 509, i32 5, metadata !1257, null}
!1363 = metadata !{i32 510, i32 3, metadata !1257, null}
!1364 = metadata !{i32 510, i32 3, metadata !1365, null}
!1365 = metadata !{i32 786443, metadata !84, metadata !1257, i32 510, i32 3, i32 1, i32 632} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1366 = metadata !{i32 511, i32 1, metadata !376, null}
!1367 = metadata !{i32 786689, metadata !463, metadata !"top", metadata !85, i32 16777676, metadata !131, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [top] [line 460]
!1368 = metadata !{i32 460, i32 30, metadata !463, null}
!1369 = metadata !{i32 786689, metadata !463, metadata !"n", metadata !85, i32 33554892, metadata !88, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 460]
!1370 = metadata !{i32 460, i32 39, metadata !463, null}
!1371 = metadata !{i32 786689, metadata !463, metadata !"buff", metadata !85, i32 50332108, metadata !466, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [buff] [line 460]
!1372 = metadata !{i32 460, i32 48, metadata !463, null}
!1373 = metadata !{i32 786688, metadata !463, metadata !"tl", metadata !85, i32 461, metadata !143, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tl] [line 461]
!1374 = metadata !{i32 461, i32 10, metadata !463, null}
!1375 = metadata !{i32 461, i32 3, metadata !463, null}
!1376 = metadata !{i32 462, i32 3, metadata !463, null}
!1377 = metadata !{i32 786688, metadata !1378, metadata !"l", metadata !85, i32 463, metadata !143, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [l] [line 463]
!1378 = metadata !{i32 786443, metadata !84, metadata !463, i32 462, i32 6, i32 0, i32 453} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1379 = metadata !{i32 463, i32 12, metadata !1378, null}
!1380 = metadata !{i32 463, i32 5, metadata !1378, null}
!1381 = metadata !{i32 463, i32 5, metadata !1382, null}
!1382 = metadata !{i32 786443, metadata !84, metadata !1378, i32 463, i32 5, i32 1, i32 633} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1383 = metadata !{i32 463, i32 5, metadata !1384, null}
!1384 = metadata !{i32 786443, metadata !84, metadata !1378, i32 463, i32 5, i32 2, i32 634} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1385 = metadata !{i32 463, i32 5, metadata !1386, null}
!1386 = metadata !{i32 786443, metadata !84, metadata !1387, i32 463, i32 5, i32 4, i32 636} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1387 = metadata !{i32 786443, metadata !84, metadata !1378, i32 463, i32 5, i32 3, i32 635} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1388 = metadata !{i32 464, i32 5, metadata !1378, null}
!1389 = metadata !{i32 465, i32 5, metadata !1378, null}
!1390 = metadata !{i32 466, i32 3, metadata !1378, null}
!1391 = metadata !{i32 466, i32 3, metadata !1392, null}
!1392 = metadata !{i32 786443, metadata !84, metadata !1378, i32 466, i32 3, i32 1, i32 637} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1393 = metadata !{i32 467, i32 1, metadata !463, null}
!1394 = metadata !{i32 786689, metadata !379, metadata !"L", metadata !85, i32 16777733, metadata !119, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 517]
!1395 = metadata !{i32 517, i32 30, metadata !379, null}
!1396 = metadata !{i32 786689, metadata !379, metadata !"ra", metadata !85, i32 33554949, metadata !131, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ra] [line 517]
!1397 = metadata !{i32 517, i32 39, metadata !379, null}
!1398 = metadata !{i32 786689, metadata !379, metadata !"rb", metadata !85, i32 50332165, metadata !89, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rb] [line 517]
!1399 = metadata !{i32 517, i32 57, metadata !379, null}
!1400 = metadata !{i32 786688, metadata !379, metadata !"tm", metadata !85, i32 518, metadata !89, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tm] [line 518]
!1401 = metadata !{i32 518, i32 17, metadata !379, null}
!1402 = metadata !{i32 519, i32 3, metadata !379, null}
!1403 = metadata !{i32 786688, metadata !1404, metadata !"h", metadata !85, i32 521, metadata !853, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [h] [line 521]
!1404 = metadata !{i32 786443, metadata !84, metadata !1405, i32 520, i32 22, i32 0, i32 76} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1405 = metadata !{i32 786443, metadata !84, metadata !379, i32 519, i32 22, i32 0, i32 75} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1406 = metadata !{i32 521, i32 14, metadata !1404, null}
!1407 = metadata !{i32 521, i32 7, metadata !1404, null}
!1408 = metadata !{i32 522, i32 7, metadata !1404, null}
!1409 = metadata !{i32 522, i32 7, metadata !1410, null}
!1410 = metadata !{i32 786443, metadata !84, metadata !1404, i32 522, i32 7, i32 1, i32 638} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1411 = metadata !{i32 522, i32 7, metadata !1412, null}
!1412 = metadata !{i32 786443, metadata !84, metadata !1404, i32 522, i32 7, i32 2, i32 639} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1413 = metadata !{i32 522, i32 7, metadata !1414, null}
!1414 = metadata !{i32 786443, metadata !84, metadata !1404, i32 522, i32 7, i32 4, i32 641} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1415 = metadata !{i32 522, i32 12, metadata !1416, null}
!1416 = metadata !{i32 786443, metadata !84, metadata !1404, i32 522, i32 12, i32 5, i32 642} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1417 = metadata !{i32 522, i32 12, metadata !1404, null}
!1418 = metadata !{i32 522, i32 12, metadata !1419, null}
!1419 = metadata !{i32 786443, metadata !84, metadata !1420, i32 522, i32 12, i32 7, i32 644} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1420 = metadata !{i32 786443, metadata !84, metadata !1404, i32 522, i32 12, i32 6, i32 643} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1421 = metadata !{i32 522, i32 12, metadata !1422, null}
!1422 = metadata !{i32 786443, metadata !84, metadata !1423, i32 522, i32 12, i32 8, i32 645} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1423 = metadata !{i32 786443, metadata !84, metadata !1404, i32 522, i32 12, i32 3, i32 640} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1424 = metadata !{i32 523, i32 11, metadata !1425, null}
!1425 = metadata !{i32 786443, metadata !84, metadata !1404, i32 523, i32 11, i32 0, i32 77} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1426 = metadata !{i32 523, i32 15, metadata !1427, null}
!1427 = metadata !{i32 786443, metadata !84, metadata !1425, i32 523, i32 15, i32 1, i32 646} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1428 = metadata !{i32 786688, metadata !1429, metadata !"io", metadata !85, i32 524, metadata !132, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [io] [line 524]
!1429 = metadata !{i32 786443, metadata !84, metadata !1404, i32 524, i32 7, i32 0, i32 78} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1430 = metadata !{i32 524, i32 7, metadata !1429, null}
!1431 = metadata !{i32 525, i32 7, metadata !1404, null}
!1432 = metadata !{i32 786688, metadata !1433, metadata !"io", metadata !85, i32 528, metadata !132, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [io] [line 528]
!1433 = metadata !{i32 786443, metadata !84, metadata !1434, i32 528, i32 7, i32 0, i32 80} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1434 = metadata !{i32 786443, metadata !84, metadata !1405, i32 527, i32 23, i32 0, i32 79} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1435 = metadata !{i32 528, i32 7, metadata !1433, null}
!1436 = metadata !{i32 529, i32 7, metadata !1434, null}
!1437 = metadata !{i32 786688, metadata !1438, metadata !"io", metadata !85, i32 532, metadata !132, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [io] [line 532]
!1438 = metadata !{i32 786443, metadata !84, metadata !1439, i32 532, i32 7, i32 0, i32 82} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1439 = metadata !{i32 786443, metadata !84, metadata !1405, i32 531, i32 23, i32 0, i32 81} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1440 = metadata !{i32 532, i32 7, metadata !1438, null}
!1441 = metadata !{i32 533, i32 7, metadata !1439, null}
!1442 = metadata !{i32 536, i32 12, metadata !1443, null}
!1443 = metadata !{i32 786443, metadata !84, metadata !1405, i32 535, i32 14, i32 0, i32 83} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1444 = metadata !{i32 537, i32 11, metadata !1445, null}
!1445 = metadata !{i32 786443, metadata !84, metadata !1443, i32 537, i32 11, i32 0, i32 84} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1446 = metadata !{i32 538, i32 9, metadata !1445, null}
!1447 = metadata !{i32 539, i32 7, metadata !1443, null}
!1448 = metadata !{i32 542, i32 3, metadata !379, null}
!1449 = metadata !{i32 543, i32 1, metadata !379, null}
!1450 = metadata !{i32 543, i32 1, metadata !1451, null}
!1451 = metadata !{i32 786443, metadata !84, metadata !379, i32 543, i32 1, i32 1, i32 647} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1452 = metadata !{i32 786689, metadata !382, metadata !"L", metadata !85, i32 16777768, metadata !119, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 552]
!1453 = metadata !{i32 552, i32 34, metadata !382, null}
!1454 = metadata !{i32 786689, metadata !382, metadata !"m", metadata !85, i32 33554984, metadata !358, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [m] [line 552]
!1455 = metadata !{i32 552, i32 49, metadata !382, null}
!1456 = metadata !{i32 786689, metadata !382, metadata !"n", metadata !85, i32 50332200, metadata !358, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 552]
!1457 = metadata !{i32 552, i32 64, metadata !382, null}
!1458 = metadata !{i32 553, i32 7, metadata !1459, null}
!1459 = metadata !{i32 786443, metadata !84, metadata !382, i32 553, i32 7, i32 0, i32 85} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1460 = metadata !{i32 554, i32 9, metadata !1461, null}
!1461 = metadata !{i32 786443, metadata !84, metadata !1462, i32 554, i32 9, i32 0, i32 87} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1462 = metadata !{i32 786443, metadata !84, metadata !1459, i32 553, i32 32, i32 0, i32 86} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1463 = metadata !{i32 555, i32 7, metadata !1461, null}
!1464 = metadata !{i32 556, i32 5, metadata !1462, null}
!1465 = metadata !{i32 786688, metadata !1466, metadata !"q", metadata !85, i32 559, metadata !358, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [q] [line 559]
!1466 = metadata !{i32 786443, metadata !84, metadata !1459, i32 558, i32 8, i32 0, i32 88} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1467 = metadata !{i32 559, i32 17, metadata !1466, null}
!1468 = metadata !{i32 559, i32 5, metadata !1466, null}
!1469 = metadata !{i32 560, i32 9, metadata !1470, null}
!1470 = metadata !{i32 786443, metadata !84, metadata !1466, i32 560, i32 9, i32 0, i32 89} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1471 = metadata !{i32 560, i32 9, metadata !1472, null}
!1472 = metadata !{i32 786443, metadata !84, metadata !1470, i32 560, i32 9, i32 1, i32 648} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1473 = metadata !{i32 561, i32 7, metadata !1470, null}
!1474 = metadata !{i32 562, i32 5, metadata !1466, null}
!1475 = metadata !{i32 564, i32 1, metadata !382, null}
!1476 = metadata !{i32 786689, metadata !385, metadata !"L", metadata !85, i32 16777788, metadata !119, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 572]
!1477 = metadata !{i32 572, i32 34, metadata !385, null}
!1478 = metadata !{i32 786689, metadata !385, metadata !"m", metadata !85, i32 33555004, metadata !358, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [m] [line 572]
!1479 = metadata !{i32 572, i32 49, metadata !385, null}
!1480 = metadata !{i32 786689, metadata !385, metadata !"n", metadata !85, i32 50332220, metadata !358, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 572]
!1481 = metadata !{i32 572, i32 64, metadata !385, null}
!1482 = metadata !{i32 573, i32 7, metadata !1483, null}
!1483 = metadata !{i32 786443, metadata !84, metadata !385, i32 573, i32 7, i32 0, i32 90} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1484 = metadata !{i32 574, i32 9, metadata !1485, null}
!1485 = metadata !{i32 786443, metadata !84, metadata !1486, i32 574, i32 9, i32 0, i32 92} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1486 = metadata !{i32 786443, metadata !84, metadata !1483, i32 573, i32 32, i32 0, i32 91} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1487 = metadata !{i32 575, i32 7, metadata !1485, null}
!1488 = metadata !{i32 576, i32 5, metadata !1486, null}
!1489 = metadata !{i32 786688, metadata !1490, metadata !"r", metadata !85, i32 579, metadata !358, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 579]
!1490 = metadata !{i32 786443, metadata !84, metadata !1483, i32 578, i32 8, i32 0, i32 93} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1491 = metadata !{i32 579, i32 17, metadata !1490, null}
!1492 = metadata !{i32 579, i32 5, metadata !1490, null}
!1493 = metadata !{i32 580, i32 9, metadata !1494, null}
!1494 = metadata !{i32 786443, metadata !84, metadata !1490, i32 580, i32 9, i32 0, i32 94} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1495 = metadata !{i32 580, i32 9, metadata !1496, null}
!1496 = metadata !{i32 786443, metadata !84, metadata !1494, i32 580, i32 9, i32 1, i32 649} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1497 = metadata !{i32 581, i32 7, metadata !1494, null}
!1498 = metadata !{i32 582, i32 5, metadata !1490, null}
!1499 = metadata !{i32 584, i32 1, metadata !385, null}
!1500 = metadata !{i32 786689, metadata !386, metadata !"x", metadata !85, i32 16777809, metadata !358, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 593]
!1501 = metadata !{i32 593, i32 38, metadata !386, null}
!1502 = metadata !{i32 786689, metadata !386, metadata !"y", metadata !85, i32 33555025, metadata !358, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y] [line 593]
!1503 = metadata !{i32 593, i32 53, metadata !386, null}
!1504 = metadata !{i32 594, i32 7, metadata !1505, null}
!1505 = metadata !{i32 786443, metadata !84, metadata !386, i32 594, i32 7, i32 0, i32 95} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1506 = metadata !{i32 595, i32 9, metadata !1507, null}
!1507 = metadata !{i32 786443, metadata !84, metadata !1508, i32 595, i32 9, i32 0, i32 97} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1508 = metadata !{i32 786443, metadata !84, metadata !1505, i32 594, i32 14, i32 0, i32 96} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1509 = metadata !{i32 595, i32 22, metadata !1510, null}
!1510 = metadata !{i32 786443, metadata !84, metadata !1507, i32 595, i32 22, i32 1, i32 650} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1511 = metadata !{i32 596, i32 10, metadata !1507, null}
!1512 = metadata !{i32 599, i32 9, metadata !1513, null}
!1513 = metadata !{i32 786443, metadata !84, metadata !1514, i32 599, i32 9, i32 0, i32 99} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1514 = metadata !{i32 786443, metadata !84, metadata !1505, i32 598, i32 8, i32 0, i32 98} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1515 = metadata !{i32 599, i32 21, metadata !1516, null}
!1516 = metadata !{i32 786443, metadata !84, metadata !1513, i32 599, i32 21, i32 1, i32 651} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1517 = metadata !{i32 600, i32 10, metadata !1513, null}
!1518 = metadata !{i32 602, i32 1, metadata !386, null}
!1519 = metadata !{i32 786689, metadata !389, metadata !"L", metadata !85, i32 16777872, metadata !119, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 656]
!1520 = metadata !{i32 656, i32 32, metadata !389, null}
!1521 = metadata !{i32 786688, metadata !389, metadata !"ci", metadata !85, i32 657, metadata !252, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ci] [line 657]
!1522 = metadata !{i32 657, i32 13, metadata !389, null}
!1523 = metadata !{i32 657, i32 3, metadata !389, null}
!1524 = metadata !{i32 786688, metadata !389, metadata !"base", metadata !85, i32 658, metadata !131, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [base] [line 658]
!1525 = metadata !{i32 658, i32 9, metadata !389, null}
!1526 = metadata !{i32 658, i32 3, metadata !389, null}
!1527 = metadata !{i32 786688, metadata !389, metadata !"inst", metadata !85, i32 659, metadata !271, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inst] [line 659]
!1528 = metadata !{i32 659, i32 15, metadata !389, null}
!1529 = metadata !{i32 659, i32 3, metadata !389, null}
!1530 = metadata !{i32 786688, metadata !389, metadata !"op", metadata !85, i32 660, metadata !1531, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [op] [line 660]
!1531 = metadata !{i32 786454, metadata !32, null, metadata !"OpCode", i32 232, i64 0, i64 0, i64 0, i32 0, metadata !31} ; [ DW_TAG_typedef ] [OpCode] [line 232, size 0, align 0, offset 0] [from ]
!1532 = metadata !{i32 660, i32 10, metadata !389, null}
!1533 = metadata !{i32 660, i32 3, metadata !389, null}
!1534 = metadata !{i32 661, i32 3, metadata !389, null}
!1535 = metadata !{i32 786688, metadata !1536, metadata !"io1", metadata !85, i32 667, metadata !132, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [io1] [line 667]
!1536 = metadata !{i32 786443, metadata !84, metadata !1537, i32 667, i32 7, i32 0, i32 102} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1537 = metadata !{i32 786443, metadata !84, metadata !1538, i32 666, i32 55, i32 0, i32 101} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1538 = metadata !{i32 786443, metadata !84, metadata !389, i32 661, i32 15, i32 0, i32 100} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1539 = metadata !{i32 667, i32 7, metadata !1536, null}
!1540 = metadata !{i32 668, i32 7, metadata !1537, null}
!1541 = metadata !{i32 786688, metadata !1542, metadata !"res", metadata !85, i32 671, metadata !88, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [res] [line 671]
!1542 = metadata !{i32 786443, metadata !84, metadata !1538, i32 670, i32 41, i32 0, i32 103} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1543 = metadata !{i32 671, i32 11, metadata !1542, null}
!1544 = metadata !{i32 671, i32 7, metadata !1542, null}
!1545 = metadata !{i32 671, i32 7, metadata !1546, null}
!1546 = metadata !{i32 786443, metadata !84, metadata !1542, i32 671, i32 7, i32 2, i32 653} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1547 = metadata !{i32 671, i32 7, metadata !1548, null}
!1548 = metadata !{i32 786443, metadata !84, metadata !1542, i32 671, i32 7, i32 3, i32 654} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1549 = metadata !{i32 671, i32 7, metadata !1550, null}
!1550 = metadata !{i32 786443, metadata !84, metadata !1542, i32 671, i32 7, i32 4, i32 655} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1551 = metadata !{i32 671, i32 7, metadata !1552, null}
!1552 = metadata !{i32 786443, metadata !84, metadata !1553, i32 671, i32 7, i32 5, i32 656} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1553 = metadata !{i32 786443, metadata !84, metadata !1542, i32 671, i32 7, i32 1, i32 652} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1554 = metadata !{i32 672, i32 7, metadata !1542, null}
!1555 = metadata !{i32 673, i32 11, metadata !1556, null}
!1556 = metadata !{i32 786443, metadata !84, metadata !1542, i32 673, i32 11, i32 0, i32 104} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1557 = metadata !{i32 675, i32 9, metadata !1558, null}
!1558 = metadata !{i32 786443, metadata !84, metadata !1556, i32 673, i32 38, i32 0, i32 105} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1559 = metadata !{i32 676, i32 9, metadata !1558, null}
!1560 = metadata !{i32 677, i32 7, metadata !1558, null}
!1561 = metadata !{i32 679, i32 11, metadata !1562, null}
!1562 = metadata !{i32 786443, metadata !84, metadata !1542, i32 679, i32 11, i32 0, i32 106} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1563 = metadata !{i32 680, i32 9, metadata !1562, null}
!1564 = metadata !{i32 681, i32 7, metadata !1542, null}
!1565 = metadata !{i32 786688, metadata !1566, metadata !"top", metadata !85, i32 684, metadata !131, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [top] [line 684]
!1566 = metadata !{i32 786443, metadata !84, metadata !1538, i32 683, i32 21, i32 0, i32 107} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1567 = metadata !{i32 684, i32 13, metadata !1566, null}
!1568 = metadata !{i32 684, i32 7, metadata !1566, null}
!1569 = metadata !{i32 786688, metadata !1566, metadata !"b", metadata !85, i32 685, metadata !88, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b] [line 685]
!1570 = metadata !{i32 685, i32 11, metadata !1566, null}
!1571 = metadata !{i32 685, i32 7, metadata !1566, null}
!1572 = metadata !{i32 786688, metadata !1566, metadata !"total", metadata !85, i32 686, metadata !88, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [total] [line 686]
!1573 = metadata !{i32 686, i32 11, metadata !1566, null}
!1574 = metadata !{i32 686, i32 7, metadata !1566, null}
!1575 = metadata !{i32 786688, metadata !1576, metadata !"io1", metadata !85, i32 687, metadata !132, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [io1] [line 687]
!1576 = metadata !{i32 786443, metadata !84, metadata !1566, i32 687, i32 7, i32 0, i32 108} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1577 = metadata !{i32 687, i32 7, metadata !1576, null}
!1578 = metadata !{i32 688, i32 11, metadata !1579, null}
!1579 = metadata !{i32 786443, metadata !84, metadata !1566, i32 688, i32 11, i32 0, i32 109} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1580 = metadata !{i32 689, i32 9, metadata !1581, null}
!1581 = metadata !{i32 786443, metadata !84, metadata !1579, i32 688, i32 22, i32 0, i32 110} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1582 = metadata !{i32 690, i32 9, metadata !1581, null}
!1583 = metadata !{i32 691, i32 7, metadata !1581, null}
!1584 = metadata !{i32 786688, metadata !1585, metadata !"io1", metadata !85, i32 693, metadata !132, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [io1] [line 693]
!1585 = metadata !{i32 786443, metadata !84, metadata !1566, i32 693, i32 7, i32 0, i32 111} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1586 = metadata !{i32 693, i32 7, metadata !1585, null}
!1587 = metadata !{i32 694, i32 7, metadata !1566, null}
!1588 = metadata !{i32 695, i32 7, metadata !1566, null}
!1589 = metadata !{i32 699, i32 7, metadata !1590, null}
!1590 = metadata !{i32 786443, metadata !84, metadata !1538, i32 697, i32 23, i32 0, i32 112} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1591 = metadata !{i32 700, i32 7, metadata !1590, null}
!1592 = metadata !{i32 703, i32 11, metadata !1593, null}
!1593 = metadata !{i32 786443, metadata !84, metadata !1594, i32 703, i32 11, i32 0, i32 114} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1594 = metadata !{i32 786443, metadata !84, metadata !1538, i32 702, i32 19, i32 0, i32 113} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1595 = metadata !{i32 704, i32 9, metadata !1593, null}
!1596 = metadata !{i32 705, i32 7, metadata !1594, null}
!1597 = metadata !{i32 708, i32 7, metadata !1538, null}
!1598 = metadata !{i32 710, i32 3, metadata !1538, null}
!1599 = metadata !{i32 711, i32 1, metadata !389, null}
!1600 = metadata !{i32 786689, metadata !392, metadata !"L", metadata !85, i32 16778002, metadata !119, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 786]
!1601 = metadata !{i32 786, i32 31, metadata !392, null}
!1602 = metadata !{i32 786688, metadata !392, metadata !"ci", metadata !85, i32 787, metadata !252, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ci] [line 787]
!1603 = metadata !{i32 787, i32 13, metadata !392, null}
!1604 = metadata !{i32 787, i32 3, metadata !392, null}
!1605 = metadata !{i32 786688, metadata !392, metadata !"cl", metadata !85, i32 788, metadata !458, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cl] [line 788]
!1606 = metadata !{i32 788, i32 13, metadata !392, null}
!1607 = metadata !{i32 786688, metadata !392, metadata !"k", metadata !85, i32 789, metadata !132, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 789]
!1608 = metadata !{i32 789, i32 11, metadata !392, null}
!1609 = metadata !{i32 786688, metadata !392, metadata !"base", metadata !85, i32 790, metadata !131, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [base] [line 790]
!1610 = metadata !{i32 790, i32 9, metadata !392, null}
!1611 = metadata !{i32 791, i32 3, metadata !392, null}
!1612 = metadata !{i32 794, i32 3, metadata !392, null}
!1613 = metadata !{i32 795, i32 3, metadata !392, null}
!1614 = metadata !{i32 796, i32 3, metadata !392, null}
!1615 = metadata !{i32 798, i32 3, metadata !1616, null}
!1616 = metadata !{i32 786443, metadata !84, metadata !392, i32 798, i32 3, i32 0, i32 115} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1617 = metadata !{i32 786688, metadata !1618, metadata !"i", metadata !85, i32 799, metadata !271, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 799]
!1618 = metadata !{i32 786443, metadata !84, metadata !1616, i32 798, i32 12, i32 0, i32 116} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1619 = metadata !{i32 799, i32 17, metadata !1618, null}
!1620 = metadata !{i32 786688, metadata !1618, metadata !"ra", metadata !85, i32 800, metadata !131, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ra] [line 800]
!1621 = metadata !{i32 800, i32 11, metadata !1618, null}
!1622 = metadata !{i32 801, i32 5, metadata !1623, null}
!1623 = metadata !{i32 786443, metadata !84, metadata !1618, i32 801, i32 5, i32 0, i32 117} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1624 = metadata !{i32 801, i32 5, metadata !1625, null}
!1625 = metadata !{i32 786443, metadata !84, metadata !1623, i32 801, i32 5, i32 0, i32 118} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1626 = metadata !{i32 801, i32 5, metadata !1627, null}
!1627 = metadata !{i32 786443, metadata !84, metadata !1628, i32 801, i32 5, i32 1, i32 657} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1628 = metadata !{i32 786443, metadata !84, metadata !1629, i32 801, i32 5, i32 0, i32 120} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1629 = metadata !{i32 786443, metadata !84, metadata !1625, i32 801, i32 5, i32 0, i32 119} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1630 = metadata !{i32 801, i32 5, metadata !1629, null}
!1631 = metadata !{i32 801, i32 5, metadata !1632, null}
!1632 = metadata !{i32 786443, metadata !84, metadata !1633, i32 801, i32 5, i32 3, i32 659} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1633 = metadata !{i32 786443, metadata !84, metadata !1623, i32 801, i32 5, i32 2, i32 658} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1634 = metadata !{i32 802, i32 5, metadata !1618, null}
!1635 = metadata !{i32 786688, metadata !1636, metadata !"io1", metadata !85, i32 804, metadata !132, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [io1] [line 804]
!1636 = metadata !{i32 786443, metadata !84, metadata !1637, i32 804, i32 9, i32 0, i32 123} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1637 = metadata !{i32 786443, metadata !84, metadata !1638, i32 803, i32 23, i32 0, i32 122} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1638 = metadata !{i32 786443, metadata !84, metadata !1618, i32 802, i32 32, i32 0, i32 121} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1639 = metadata !{i32 804, i32 9, metadata !1636, null}
!1640 = metadata !{i32 805, i32 9, metadata !1637, null}
!1641 = metadata !{i32 786688, metadata !1642, metadata !"rb", metadata !85, i32 808, metadata !132, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rb] [line 808]
!1642 = metadata !{i32 786443, metadata !84, metadata !1638, i32 807, i32 24, i32 0, i32 124} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1643 = metadata !{i32 808, i32 17, metadata !1642, null}
!1644 = metadata !{i32 808, i32 9, metadata !1642, null}
!1645 = metadata !{i32 786688, metadata !1646, metadata !"io1", metadata !85, i32 809, metadata !132, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [io1] [line 809]
!1646 = metadata !{i32 786443, metadata !84, metadata !1642, i32 809, i32 9, i32 0, i32 125} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1647 = metadata !{i32 809, i32 9, metadata !1646, null}
!1648 = metadata !{i32 810, i32 9, metadata !1642, null}
!1649 = metadata !{i32 786688, metadata !1650, metadata !"rb", metadata !85, i32 813, metadata !132, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rb] [line 813]
!1650 = metadata !{i32 786443, metadata !84, metadata !1638, i32 812, i32 25, i32 0, i32 126} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1651 = metadata !{i32 813, i32 17, metadata !1650, null}
!1652 = metadata !{i32 815, i32 9, metadata !1650, null}
!1653 = metadata !{i32 786688, metadata !1654, metadata !"io1", metadata !85, i32 816, metadata !132, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [io1] [line 816]
!1654 = metadata !{i32 786443, metadata !84, metadata !1650, i32 816, i32 9, i32 0, i32 127} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1655 = metadata !{i32 816, i32 9, metadata !1654, null}
!1656 = metadata !{i32 817, i32 9, metadata !1650, null}
!1657 = metadata !{i32 786688, metadata !1658, metadata !"io", metadata !85, i32 820, metadata !132, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [io] [line 820]
!1658 = metadata !{i32 786443, metadata !84, metadata !1659, i32 820, i32 9, i32 0, i32 129} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1659 = metadata !{i32 786443, metadata !84, metadata !1638, i32 819, i32 27, i32 0, i32 128} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1660 = metadata !{i32 820, i32 9, metadata !1658, null}
!1661 = metadata !{i32 821, i32 13, metadata !1662, null}
!1662 = metadata !{i32 786443, metadata !84, metadata !1659, i32 821, i32 13, i32 0, i32 130} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1663 = metadata !{i32 821, i32 26, metadata !1664, null}
!1664 = metadata !{i32 786443, metadata !84, metadata !1662, i32 821, i32 26, i32 1, i32 660} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1665 = metadata !{i32 822, i32 9, metadata !1659, null}
!1666 = metadata !{i32 786688, metadata !1667, metadata !"b", metadata !85, i32 825, metadata !88, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b] [line 825]
!1667 = metadata !{i32 786443, metadata !84, metadata !1638, i32 824, i32 26, i32 0, i32 131} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1668 = metadata !{i32 825, i32 13, metadata !1667, null}
!1669 = metadata !{i32 825, i32 9, metadata !1667, null}
!1670 = metadata !{i32 826, i32 9, metadata !1667, null}
!1671 = metadata !{i32 827, i32 11, metadata !1672, null}
!1672 = metadata !{i32 786443, metadata !84, metadata !1667, i32 826, i32 12, i32 0, i32 132} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1673 = metadata !{i32 828, i32 9, metadata !1672, null}
!1674 = metadata !{i32 828, i32 9, metadata !1675, null}
!1675 = metadata !{i32 786443, metadata !84, metadata !1672, i32 828, i32 9, i32 1, i32 661} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1676 = metadata !{i32 829, i32 9, metadata !1667, null}
!1677 = metadata !{i32 786688, metadata !1678, metadata !"b", metadata !85, i32 832, metadata !88, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b] [line 832]
!1678 = metadata !{i32 786443, metadata !84, metadata !1638, i32 831, i32 27, i32 0, i32 133} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1679 = metadata !{i32 832, i32 13, metadata !1678, null}
!1680 = metadata !{i32 832, i32 9, metadata !1678, null}
!1681 = metadata !{i32 786688, metadata !1682, metadata !"io1", metadata !85, i32 833, metadata !132, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [io1] [line 833]
!1682 = metadata !{i32 786443, metadata !84, metadata !1678, i32 833, i32 9, i32 0, i32 134} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1683 = metadata !{i32 833, i32 9, metadata !1682, null}
!1684 = metadata !{i32 834, i32 9, metadata !1678, null}
!1685 = metadata !{i32 786688, metadata !1686, metadata !"upval", metadata !85, i32 837, metadata !132, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [upval] [line 837]
!1686 = metadata !{i32 786443, metadata !84, metadata !1638, i32 836, i32 27, i32 0, i32 135} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1687 = metadata !{i32 837, i32 17, metadata !1686, null}
!1688 = metadata !{i32 837, i32 9, metadata !1686, null}
!1689 = metadata !{i32 786688, metadata !1686, metadata !"rc", metadata !85, i32 838, metadata !132, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rc] [line 838]
!1690 = metadata !{i32 838, i32 17, metadata !1686, null}
!1691 = metadata !{i32 838, i32 9, metadata !1686, null}
!1692 = metadata !{i32 838, i32 9, metadata !1693, null}
!1693 = metadata !{i32 786443, metadata !84, metadata !1686, i32 838, i32 9, i32 1, i32 662} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1694 = metadata !{i32 838, i32 9, metadata !1695, null}
!1695 = metadata !{i32 786443, metadata !84, metadata !1686, i32 838, i32 9, i32 2, i32 663} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1696 = metadata !{i32 838, i32 9, metadata !1697, null}
!1697 = metadata !{i32 786443, metadata !84, metadata !1698, i32 838, i32 9, i32 4, i32 665} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1698 = metadata !{i32 786443, metadata !84, metadata !1686, i32 838, i32 9, i32 3, i32 664} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1699 = metadata !{i32 786688, metadata !1700, metadata !"slot", metadata !85, i32 839, metadata !89, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [slot] [line 839]
!1700 = metadata !{i32 786443, metadata !84, metadata !1686, i32 839, i32 9, i32 0, i32 136} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1701 = metadata !{i32 839, i32 9, metadata !1700, null}
!1702 = metadata !{i32 839, i32 9, metadata !1703, null}
!1703 = metadata !{i32 786443, metadata !84, metadata !1700, i32 839, i32 9, i32 0, i32 137} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1704 = metadata !{i32 839, i32 9, metadata !1705, null}
!1705 = metadata !{i32 786443, metadata !84, metadata !1703, i32 839, i32 9, i32 2, i32 667} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1706 = metadata !{i32 839, i32 9, metadata !1707, null}
!1707 = metadata !{i32 786443, metadata !84, metadata !1703, i32 839, i32 9, i32 1, i32 666} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1708 = metadata !{i32 786688, metadata !1709, metadata !"io1", metadata !85, i32 839, metadata !132, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [io1] [line 839]
!1709 = metadata !{i32 786443, metadata !84, metadata !1710, i32 839, i32 9, i32 0, i32 139} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1710 = metadata !{i32 786443, metadata !84, metadata !1703, i32 839, i32 9, i32 0, i32 138} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1711 = metadata !{i32 839, i32 9, metadata !1709, null}
!1712 = metadata !{i32 839, i32 9, metadata !1713, null}
!1713 = metadata !{i32 786443, metadata !84, metadata !1714, i32 839, i32 9, i32 5, i32 670} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1714 = metadata !{i32 786443, metadata !84, metadata !1709, i32 839, i32 9, i32 3, i32 668} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1715 = metadata !{i32 839, i32 9, metadata !1710, null}
!1716 = metadata !{i32 839, i32 9, metadata !1717, null}
!1717 = metadata !{i32 786443, metadata !84, metadata !1718, i32 839, i32 9, i32 6, i32 671} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1718 = metadata !{i32 786443, metadata !84, metadata !1719, i32 839, i32 9, i32 4, i32 669} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1719 = metadata !{i32 786443, metadata !84, metadata !1720, i32 839, i32 9, i32 0, i32 141} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1720 = metadata !{i32 786443, metadata !84, metadata !1703, i32 839, i32 9, i32 0, i32 140} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1721 = metadata !{i32 839, i32 9, metadata !1720, null}
!1722 = metadata !{i32 840, i32 9, metadata !1686, null}
!1723 = metadata !{i32 786688, metadata !1724, metadata !"rb", metadata !85, i32 843, metadata !131, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rb] [line 843]
!1724 = metadata !{i32 786443, metadata !84, metadata !1638, i32 842, i32 27, i32 0, i32 142} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1725 = metadata !{i32 843, i32 15, metadata !1724, null}
!1726 = metadata !{i32 843, i32 9, metadata !1724, null}
!1727 = metadata !{i32 786688, metadata !1724, metadata !"rc", metadata !85, i32 844, metadata !132, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rc] [line 844]
!1728 = metadata !{i32 844, i32 17, metadata !1724, null}
!1729 = metadata !{i32 844, i32 9, metadata !1724, null}
!1730 = metadata !{i32 844, i32 9, metadata !1731, null}
!1731 = metadata !{i32 786443, metadata !84, metadata !1724, i32 844, i32 9, i32 1, i32 672} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1732 = metadata !{i32 844, i32 9, metadata !1733, null}
!1733 = metadata !{i32 786443, metadata !84, metadata !1724, i32 844, i32 9, i32 2, i32 673} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1734 = metadata !{i32 844, i32 9, metadata !1735, null}
!1735 = metadata !{i32 786443, metadata !84, metadata !1736, i32 844, i32 9, i32 4, i32 675} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1736 = metadata !{i32 786443, metadata !84, metadata !1724, i32 844, i32 9, i32 3, i32 674} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1737 = metadata !{i32 786688, metadata !1738, metadata !"slot", metadata !85, i32 845, metadata !89, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [slot] [line 845]
!1738 = metadata !{i32 786443, metadata !84, metadata !1724, i32 845, i32 9, i32 0, i32 143} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1739 = metadata !{i32 845, i32 9, metadata !1738, null}
!1740 = metadata !{i32 845, i32 9, metadata !1741, null}
!1741 = metadata !{i32 786443, metadata !84, metadata !1738, i32 845, i32 9, i32 0, i32 144} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1742 = metadata !{i32 845, i32 9, metadata !1743, null}
!1743 = metadata !{i32 786443, metadata !84, metadata !1741, i32 845, i32 9, i32 2, i32 677} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1744 = metadata !{i32 845, i32 9, metadata !1745, null}
!1745 = metadata !{i32 786443, metadata !84, metadata !1741, i32 845, i32 9, i32 1, i32 676} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1746 = metadata !{i32 786688, metadata !1747, metadata !"io1", metadata !85, i32 845, metadata !132, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [io1] [line 845]
!1747 = metadata !{i32 786443, metadata !84, metadata !1748, i32 845, i32 9, i32 0, i32 146} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1748 = metadata !{i32 786443, metadata !84, metadata !1741, i32 845, i32 9, i32 0, i32 145} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1749 = metadata !{i32 845, i32 9, metadata !1747, null}
!1750 = metadata !{i32 845, i32 9, metadata !1751, null}
!1751 = metadata !{i32 786443, metadata !84, metadata !1752, i32 845, i32 9, i32 5, i32 680} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1752 = metadata !{i32 786443, metadata !84, metadata !1747, i32 845, i32 9, i32 3, i32 678} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1753 = metadata !{i32 845, i32 9, metadata !1748, null}
!1754 = metadata !{i32 845, i32 9, metadata !1755, null}
!1755 = metadata !{i32 786443, metadata !84, metadata !1756, i32 845, i32 9, i32 6, i32 681} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1756 = metadata !{i32 786443, metadata !84, metadata !1757, i32 845, i32 9, i32 4, i32 679} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1757 = metadata !{i32 786443, metadata !84, metadata !1758, i32 845, i32 9, i32 0, i32 148} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1758 = metadata !{i32 786443, metadata !84, metadata !1741, i32 845, i32 9, i32 0, i32 147} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1759 = metadata !{i32 845, i32 9, metadata !1758, null}
!1760 = metadata !{i32 846, i32 9, metadata !1724, null}
!1761 = metadata !{i32 786688, metadata !1762, metadata !"upval", metadata !85, i32 849, metadata !132, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [upval] [line 849]
!1762 = metadata !{i32 786443, metadata !84, metadata !1638, i32 848, i32 27, i32 0, i32 149} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1763 = metadata !{i32 849, i32 17, metadata !1762, null}
!1764 = metadata !{i32 849, i32 9, metadata !1762, null}
!1765 = metadata !{i32 786688, metadata !1762, metadata !"rb", metadata !85, i32 850, metadata !132, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rb] [line 850]
!1766 = metadata !{i32 850, i32 17, metadata !1762, null}
!1767 = metadata !{i32 850, i32 9, metadata !1762, null}
!1768 = metadata !{i32 850, i32 9, metadata !1769, null}
!1769 = metadata !{i32 786443, metadata !84, metadata !1762, i32 850, i32 9, i32 1, i32 682} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1770 = metadata !{i32 850, i32 9, metadata !1771, null}
!1771 = metadata !{i32 786443, metadata !84, metadata !1762, i32 850, i32 9, i32 2, i32 683} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1772 = metadata !{i32 850, i32 9, metadata !1773, null}
!1773 = metadata !{i32 786443, metadata !84, metadata !1774, i32 850, i32 9, i32 4, i32 685} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1774 = metadata !{i32 786443, metadata !84, metadata !1762, i32 850, i32 9, i32 3, i32 684} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1775 = metadata !{i32 786688, metadata !1762, metadata !"rc", metadata !85, i32 851, metadata !132, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rc] [line 851]
!1776 = metadata !{i32 851, i32 17, metadata !1762, null}
!1777 = metadata !{i32 851, i32 9, metadata !1762, null}
!1778 = metadata !{i32 851, i32 9, metadata !1779, null}
!1779 = metadata !{i32 786443, metadata !84, metadata !1762, i32 851, i32 9, i32 1, i32 686} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1780 = metadata !{i32 851, i32 9, metadata !1781, null}
!1781 = metadata !{i32 786443, metadata !84, metadata !1762, i32 851, i32 9, i32 2, i32 687} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1782 = metadata !{i32 851, i32 9, metadata !1783, null}
!1783 = metadata !{i32 786443, metadata !84, metadata !1784, i32 851, i32 9, i32 4, i32 689} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1784 = metadata !{i32 786443, metadata !84, metadata !1762, i32 851, i32 9, i32 3, i32 688} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1785 = metadata !{i32 786688, metadata !1786, metadata !"slot", metadata !85, i32 852, metadata !89, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [slot] [line 852]
!1786 = metadata !{i32 786443, metadata !84, metadata !1762, i32 852, i32 9, i32 0, i32 150} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1787 = metadata !{i32 852, i32 9, metadata !1786, null}
!1788 = metadata !{i32 852, i32 9, metadata !1789, null}
!1789 = metadata !{i32 786443, metadata !84, metadata !1786, i32 852, i32 9, i32 0, i32 151} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1790 = metadata !{i32 852, i32 9, metadata !1791, null}
!1791 = metadata !{i32 786443, metadata !84, metadata !1789, i32 852, i32 9, i32 2, i32 691} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1792 = metadata !{i32 852, i32 9, metadata !1793, null}
!1793 = metadata !{i32 786443, metadata !84, metadata !1789, i32 852, i32 9, i32 1, i32 690} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1794 = metadata !{i32 852, i32 9, metadata !1795, null}
!1795 = metadata !{i32 786443, metadata !84, metadata !1789, i32 852, i32 9, i32 4, i32 693} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1796 = metadata !{i32 852, i32 9, metadata !1797, null}
!1797 = metadata !{i32 786443, metadata !84, metadata !1789, i32 852, i32 9, i32 5, i32 694} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1798 = metadata !{i32 852, i32 9, metadata !1799, null}
!1799 = metadata !{i32 786443, metadata !84, metadata !1789, i32 852, i32 9, i32 7, i32 696} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1800 = metadata !{i32 852, i32 9, metadata !1801, null}
!1801 = metadata !{i32 786443, metadata !84, metadata !1789, i32 852, i32 9, i32 9, i32 698} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1802 = metadata !{i32 852, i32 9, metadata !1803, null}
!1803 = metadata !{i32 786443, metadata !84, metadata !1789, i32 852, i32 9, i32 11, i32 700} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1804 = metadata !{i32 852, i32 9, metadata !1805, null}
!1805 = metadata !{i32 786443, metadata !84, metadata !1806, i32 852, i32 9, i32 12, i32 701} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1806 = metadata !{i32 786443, metadata !84, metadata !1807, i32 852, i32 9, i32 10, i32 699} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1807 = metadata !{i32 786443, metadata !84, metadata !1789, i32 852, i32 9, i32 8, i32 697} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1808 = metadata !{i32 852, i32 9, metadata !1809, null}
!1809 = metadata !{i32 786443, metadata !84, metadata !1810, i32 852, i32 9, i32 14, i32 703} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1810 = metadata !{i32 786443, metadata !84, metadata !1789, i32 852, i32 9, i32 13, i32 702} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1811 = metadata !{i32 852, i32 9, metadata !1812, null}
!1812 = metadata !{i32 786443, metadata !84, metadata !1813, i32 852, i32 9, i32 15, i32 704} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1813 = metadata !{i32 786443, metadata !84, metadata !1789, i32 852, i32 9, i32 6, i32 695} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1814 = metadata !{i32 852, i32 9, metadata !1815, null}
!1815 = metadata !{i32 786443, metadata !84, metadata !1816, i32 852, i32 9, i32 16, i32 705} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1816 = metadata !{i32 786443, metadata !84, metadata !1817, i32 852, i32 9, i32 3, i32 692} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1817 = metadata !{i32 786443, metadata !84, metadata !1818, i32 852, i32 9, i32 0, i32 153} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1818 = metadata !{i32 786443, metadata !84, metadata !1789, i32 852, i32 9, i32 0, i32 152} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1819 = metadata !{i32 852, i32 9, metadata !1818, null}
!1820 = metadata !{i32 853, i32 9, metadata !1762, null}
!1821 = metadata !{i32 786688, metadata !1822, metadata !"uv", metadata !85, i32 856, metadata !293, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [uv] [line 856]
!1822 = metadata !{i32 786443, metadata !84, metadata !1638, i32 855, i32 27, i32 0, i32 154} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1823 = metadata !{i32 856, i32 16, metadata !1822, null}
!1824 = metadata !{i32 856, i32 9, metadata !1822, null}
!1825 = metadata !{i32 786688, metadata !1826, metadata !"io1", metadata !85, i32 857, metadata !132, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [io1] [line 857]
!1826 = metadata !{i32 786443, metadata !84, metadata !1822, i32 857, i32 9, i32 0, i32 155} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1827 = metadata !{i32 857, i32 9, metadata !1826, null}
!1828 = metadata !{i32 858, i32 9, metadata !1822, null}
!1829 = metadata !{i32 858, i32 9, metadata !1830, null}
!1830 = metadata !{i32 786443, metadata !84, metadata !1822, i32 858, i32 9, i32 1, i32 706} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1831 = metadata !{i32 858, i32 9, metadata !1832, null}
!1832 = metadata !{i32 786443, metadata !84, metadata !1822, i32 858, i32 9, i32 4, i32 709} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1833 = metadata !{i32 858, i32 9, metadata !1834, null}
!1834 = metadata !{i32 786443, metadata !84, metadata !1835, i32 858, i32 9, i32 3, i32 708} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1835 = metadata !{i32 786443, metadata !84, metadata !1822, i32 858, i32 9, i32 2, i32 707} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1836 = metadata !{i32 859, i32 9, metadata !1822, null}
!1837 = metadata !{i32 786688, metadata !1838, metadata !"rb", metadata !85, i32 862, metadata !132, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rb] [line 862]
!1838 = metadata !{i32 786443, metadata !84, metadata !1638, i32 861, i32 27, i32 0, i32 156} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1839 = metadata !{i32 862, i32 17, metadata !1838, null}
!1840 = metadata !{i32 862, i32 9, metadata !1838, null}
!1841 = metadata !{i32 862, i32 9, metadata !1842, null}
!1842 = metadata !{i32 786443, metadata !84, metadata !1838, i32 862, i32 9, i32 1, i32 710} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1843 = metadata !{i32 862, i32 9, metadata !1844, null}
!1844 = metadata !{i32 786443, metadata !84, metadata !1838, i32 862, i32 9, i32 2, i32 711} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1845 = metadata !{i32 862, i32 9, metadata !1846, null}
!1846 = metadata !{i32 786443, metadata !84, metadata !1847, i32 862, i32 9, i32 4, i32 713} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1847 = metadata !{i32 786443, metadata !84, metadata !1838, i32 862, i32 9, i32 3, i32 712} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1848 = metadata !{i32 786688, metadata !1838, metadata !"rc", metadata !85, i32 863, metadata !132, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rc] [line 863]
!1849 = metadata !{i32 863, i32 17, metadata !1838, null}
!1850 = metadata !{i32 863, i32 9, metadata !1838, null}
!1851 = metadata !{i32 863, i32 9, metadata !1852, null}
!1852 = metadata !{i32 786443, metadata !84, metadata !1838, i32 863, i32 9, i32 1, i32 714} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1853 = metadata !{i32 863, i32 9, metadata !1854, null}
!1854 = metadata !{i32 786443, metadata !84, metadata !1838, i32 863, i32 9, i32 2, i32 715} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1855 = metadata !{i32 863, i32 9, metadata !1856, null}
!1856 = metadata !{i32 786443, metadata !84, metadata !1857, i32 863, i32 9, i32 4, i32 717} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1857 = metadata !{i32 786443, metadata !84, metadata !1838, i32 863, i32 9, i32 3, i32 716} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1858 = metadata !{i32 786688, metadata !1859, metadata !"slot", metadata !85, i32 864, metadata !89, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [slot] [line 864]
!1859 = metadata !{i32 786443, metadata !84, metadata !1838, i32 864, i32 9, i32 0, i32 157} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1860 = metadata !{i32 864, i32 9, metadata !1859, null}
!1861 = metadata !{i32 864, i32 9, metadata !1862, null}
!1862 = metadata !{i32 786443, metadata !84, metadata !1859, i32 864, i32 9, i32 0, i32 158} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1863 = metadata !{i32 864, i32 9, metadata !1864, null}
!1864 = metadata !{i32 786443, metadata !84, metadata !1862, i32 864, i32 9, i32 2, i32 719} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1865 = metadata !{i32 864, i32 9, metadata !1866, null}
!1866 = metadata !{i32 786443, metadata !84, metadata !1862, i32 864, i32 9, i32 1, i32 718} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1867 = metadata !{i32 864, i32 9, metadata !1868, null}
!1868 = metadata !{i32 786443, metadata !84, metadata !1862, i32 864, i32 9, i32 4, i32 721} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1869 = metadata !{i32 864, i32 9, metadata !1870, null}
!1870 = metadata !{i32 786443, metadata !84, metadata !1862, i32 864, i32 9, i32 5, i32 722} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1871 = metadata !{i32 864, i32 9, metadata !1872, null}
!1872 = metadata !{i32 786443, metadata !84, metadata !1862, i32 864, i32 9, i32 7, i32 724} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1873 = metadata !{i32 864, i32 9, metadata !1874, null}
!1874 = metadata !{i32 786443, metadata !84, metadata !1862, i32 864, i32 9, i32 9, i32 726} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1875 = metadata !{i32 864, i32 9, metadata !1876, null}
!1876 = metadata !{i32 786443, metadata !84, metadata !1862, i32 864, i32 9, i32 11, i32 728} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1877 = metadata !{i32 864, i32 9, metadata !1878, null}
!1878 = metadata !{i32 786443, metadata !84, metadata !1879, i32 864, i32 9, i32 12, i32 729} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1879 = metadata !{i32 786443, metadata !84, metadata !1880, i32 864, i32 9, i32 10, i32 727} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1880 = metadata !{i32 786443, metadata !84, metadata !1862, i32 864, i32 9, i32 8, i32 725} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1881 = metadata !{i32 864, i32 9, metadata !1882, null}
!1882 = metadata !{i32 786443, metadata !84, metadata !1883, i32 864, i32 9, i32 14, i32 731} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1883 = metadata !{i32 786443, metadata !84, metadata !1862, i32 864, i32 9, i32 13, i32 730} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1884 = metadata !{i32 864, i32 9, metadata !1885, null}
!1885 = metadata !{i32 786443, metadata !84, metadata !1886, i32 864, i32 9, i32 15, i32 732} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1886 = metadata !{i32 786443, metadata !84, metadata !1862, i32 864, i32 9, i32 6, i32 723} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1887 = metadata !{i32 864, i32 9, metadata !1888, null}
!1888 = metadata !{i32 786443, metadata !84, metadata !1889, i32 864, i32 9, i32 16, i32 733} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1889 = metadata !{i32 786443, metadata !84, metadata !1890, i32 864, i32 9, i32 3, i32 720} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1890 = metadata !{i32 786443, metadata !84, metadata !1891, i32 864, i32 9, i32 0, i32 160} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1891 = metadata !{i32 786443, metadata !84, metadata !1862, i32 864, i32 9, i32 0, i32 159} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1892 = metadata !{i32 864, i32 9, metadata !1891, null}
!1893 = metadata !{i32 865, i32 9, metadata !1838, null}
!1894 = metadata !{i32 786688, metadata !1895, metadata !"b", metadata !85, i32 868, metadata !88, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b] [line 868]
!1895 = metadata !{i32 786443, metadata !84, metadata !1638, i32 867, i32 27, i32 0, i32 161} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1896 = metadata !{i32 868, i32 13, metadata !1895, null}
!1897 = metadata !{i32 868, i32 9, metadata !1895, null}
!1898 = metadata !{i32 786688, metadata !1895, metadata !"c", metadata !85, i32 869, metadata !88, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c] [line 869]
!1899 = metadata !{i32 869, i32 13, metadata !1895, null}
!1900 = metadata !{i32 869, i32 9, metadata !1895, null}
!1901 = metadata !{i32 786688, metadata !1895, metadata !"t", metadata !85, i32 870, metadata !853, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [t] [line 870]
!1902 = metadata !{i32 870, i32 16, metadata !1895, null}
!1903 = metadata !{i32 870, i32 20, metadata !1895, null}
!1904 = metadata !{i32 786688, metadata !1905, metadata !"io", metadata !85, i32 871, metadata !132, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [io] [line 871]
!1905 = metadata !{i32 786443, metadata !84, metadata !1895, i32 871, i32 9, i32 0, i32 162} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1906 = metadata !{i32 871, i32 9, metadata !1905, null}
!1907 = metadata !{i32 786688, metadata !1905, metadata !"x_", metadata !85, i32 871, metadata !853, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x_] [line 871]
!1908 = metadata !{i32 872, i32 13, metadata !1909, null}
!1909 = metadata !{i32 786443, metadata !84, metadata !1895, i32 872, i32 13, i32 0, i32 163} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1910 = metadata !{i32 872, i32 13, metadata !1911, null}
!1911 = metadata !{i32 786443, metadata !84, metadata !1909, i32 872, i32 13, i32 1, i32 734} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1912 = metadata !{i32 873, i32 11, metadata !1909, null}
!1913 = metadata !{i32 873, i32 29, metadata !1909, null}
!1914 = metadata !{i32 873, i32 45, metadata !1909, null}
!1915 = metadata !{i32 874, i32 9, metadata !1916, null}
!1916 = metadata !{i32 786443, metadata !84, metadata !1917, i32 874, i32 9, i32 0, i32 166} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1917 = metadata !{i32 786443, metadata !84, metadata !1918, i32 874, i32 9, i32 0, i32 165} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1918 = metadata !{i32 786443, metadata !84, metadata !1895, i32 874, i32 9, i32 0, i32 164} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1919 = metadata !{i32 874, i32 9, metadata !1920, null}
!1920 = metadata !{i32 786443, metadata !84, metadata !1921, i32 874, i32 9, i32 1, i32 735} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1921 = metadata !{i32 786443, metadata !84, metadata !1916, i32 874, i32 9, i32 0, i32 167} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1922 = metadata !{i32 874, i32 9, metadata !1923, null}
!1923 = metadata !{i32 786443, metadata !84, metadata !1924, i32 874, i32 9, i32 0, i32 169} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1924 = metadata !{i32 786443, metadata !84, metadata !1921, i32 874, i32 9, i32 0, i32 168} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1925 = metadata !{i32 874, i32 9, metadata !1924, null}
!1926 = metadata !{i32 874, i32 9, metadata !1921, null}
!1927 = metadata !{i32 875, i32 9, metadata !1895, null}
!1928 = metadata !{i32 786688, metadata !1929, metadata !"aux", metadata !85, i32 878, metadata !89, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [aux] [line 878]
!1929 = metadata !{i32 786443, metadata !84, metadata !1638, i32 877, i32 23, i32 0, i32 171} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1930 = metadata !{i32 878, i32 23, metadata !1929, null}
!1931 = metadata !{i32 786688, metadata !1929, metadata !"rb", metadata !85, i32 879, metadata !131, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rb] [line 879]
!1932 = metadata !{i32 879, i32 15, metadata !1929, null}
!1933 = metadata !{i32 879, i32 9, metadata !1929, null}
!1934 = metadata !{i32 786688, metadata !1929, metadata !"rc", metadata !85, i32 880, metadata !132, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rc] [line 880]
!1935 = metadata !{i32 880, i32 17, metadata !1929, null}
!1936 = metadata !{i32 880, i32 9, metadata !1929, null}
!1937 = metadata !{i32 880, i32 9, metadata !1938, null}
!1938 = metadata !{i32 786443, metadata !84, metadata !1929, i32 880, i32 9, i32 1, i32 736} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1939 = metadata !{i32 880, i32 9, metadata !1940, null}
!1940 = metadata !{i32 786443, metadata !84, metadata !1929, i32 880, i32 9, i32 2, i32 737} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1941 = metadata !{i32 880, i32 9, metadata !1942, null}
!1942 = metadata !{i32 786443, metadata !84, metadata !1943, i32 880, i32 9, i32 4, i32 739} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1943 = metadata !{i32 786443, metadata !84, metadata !1929, i32 880, i32 9, i32 3, i32 738} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1944 = metadata !{i32 786688, metadata !1929, metadata !"key", metadata !85, i32 881, metadata !160, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [key] [line 881]
!1945 = metadata !{i32 881, i32 18, metadata !1929, null}
!1946 = metadata !{i32 881, i32 9, metadata !1929, null}
!1947 = metadata !{i32 786688, metadata !1948, metadata !"io1", metadata !85, i32 882, metadata !132, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [io1] [line 882]
!1948 = metadata !{i32 786443, metadata !84, metadata !1929, i32 882, i32 9, i32 0, i32 172} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1949 = metadata !{i32 882, i32 9, metadata !1948, null}
!1950 = metadata !{i32 883, i32 13, metadata !1951, null}
!1951 = metadata !{i32 786443, metadata !84, metadata !1929, i32 883, i32 13, i32 0, i32 173} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1952 = metadata !{i32 883, i32 13, metadata !1953, null}
!1953 = metadata !{i32 786443, metadata !84, metadata !1951, i32 883, i32 13, i32 2, i32 741} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1954 = metadata !{i32 883, i32 13, metadata !1955, null}
!1955 = metadata !{i32 786443, metadata !84, metadata !1951, i32 883, i32 13, i32 1, i32 740} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1956 = metadata !{i32 786688, metadata !1957, metadata !"io1", metadata !85, i32 884, metadata !132, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [io1] [line 884]
!1957 = metadata !{i32 786443, metadata !84, metadata !1958, i32 884, i32 11, i32 0, i32 175} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1958 = metadata !{i32 786443, metadata !84, metadata !1951, i32 883, i32 57, i32 0, i32 174} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1959 = metadata !{i32 884, i32 11, metadata !1957, null}
!1960 = metadata !{i32 885, i32 9, metadata !1958, null}
!1961 = metadata !{i32 886, i32 14, metadata !1962, null}
!1962 = metadata !{i32 786443, metadata !84, metadata !1963, i32 886, i32 14, i32 0, i32 177} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1963 = metadata !{i32 786443, metadata !84, metadata !1951, i32 886, i32 14, i32 0, i32 176} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1964 = metadata !{i32 886, i32 14, metadata !1963, null}
!1965 = metadata !{i32 887, i32 9, metadata !1929, null}
!1966 = metadata !{i32 786688, metadata !1967, metadata !"rb", metadata !85, i32 890, metadata !132, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rb] [line 890]
!1967 = metadata !{i32 786443, metadata !84, metadata !1638, i32 889, i32 22, i32 0, i32 178} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1968 = metadata !{i32 890, i32 17, metadata !1967, null}
!1969 = metadata !{i32 890, i32 9, metadata !1967, null}
!1970 = metadata !{i32 890, i32 9, metadata !1971, null}
!1971 = metadata !{i32 786443, metadata !84, metadata !1967, i32 890, i32 9, i32 1, i32 742} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1972 = metadata !{i32 890, i32 9, metadata !1973, null}
!1973 = metadata !{i32 786443, metadata !84, metadata !1967, i32 890, i32 9, i32 2, i32 743} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1974 = metadata !{i32 890, i32 9, metadata !1975, null}
!1975 = metadata !{i32 786443, metadata !84, metadata !1976, i32 890, i32 9, i32 4, i32 745} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1976 = metadata !{i32 786443, metadata !84, metadata !1967, i32 890, i32 9, i32 3, i32 744} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1977 = metadata !{i32 786688, metadata !1967, metadata !"rc", metadata !85, i32 891, metadata !132, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rc] [line 891]
!1978 = metadata !{i32 891, i32 17, metadata !1967, null}
!1979 = metadata !{i32 891, i32 9, metadata !1967, null}
!1980 = metadata !{i32 891, i32 9, metadata !1981, null}
!1981 = metadata !{i32 786443, metadata !84, metadata !1967, i32 891, i32 9, i32 1, i32 746} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1982 = metadata !{i32 891, i32 9, metadata !1983, null}
!1983 = metadata !{i32 786443, metadata !84, metadata !1967, i32 891, i32 9, i32 2, i32 747} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1984 = metadata !{i32 891, i32 9, metadata !1985, null}
!1985 = metadata !{i32 786443, metadata !84, metadata !1986, i32 891, i32 9, i32 4, i32 749} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1986 = metadata !{i32 786443, metadata !84, metadata !1967, i32 891, i32 9, i32 3, i32 748} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1987 = metadata !{i32 786688, metadata !1967, metadata !"nb", metadata !85, i32 892, metadata !205, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nb] [line 892]
!1988 = metadata !{i32 892, i32 20, metadata !1967, null}
!1989 = metadata !{i32 786688, metadata !1967, metadata !"nc", metadata !85, i32 892, metadata !205, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nc] [line 892]
!1990 = metadata !{i32 892, i32 35, metadata !1967, null}
!1991 = metadata !{i32 893, i32 13, metadata !1992, null}
!1992 = metadata !{i32 786443, metadata !84, metadata !1967, i32 893, i32 13, i32 0, i32 179} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1993 = metadata !{i32 893, i32 13, metadata !1994, null}
!1994 = metadata !{i32 786443, metadata !84, metadata !1992, i32 893, i32 13, i32 1, i32 750} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1995 = metadata !{i32 786688, metadata !1996, metadata !"ib", metadata !85, i32 894, metadata !358, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ib] [line 894]
!1996 = metadata !{i32 786443, metadata !84, metadata !1992, i32 893, i32 49, i32 0, i32 180} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!1997 = metadata !{i32 894, i32 23, metadata !1996, null}
!1998 = metadata !{i32 894, i32 11, metadata !1996, null}
!1999 = metadata !{i32 786688, metadata !1996, metadata !"ic", metadata !85, i32 894, metadata !358, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ic] [line 894]
!2000 = metadata !{i32 894, i32 52, metadata !1996, null}
!2001 = metadata !{i32 894, i32 40, metadata !1996, null}
!2002 = metadata !{i32 786688, metadata !2003, metadata !"io", metadata !85, i32 895, metadata !132, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [io] [line 895]
!2003 = metadata !{i32 786443, metadata !84, metadata !1996, i32 895, i32 11, i32 0, i32 181} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2004 = metadata !{i32 895, i32 11, metadata !2003, null}
!2005 = metadata !{i32 896, i32 9, metadata !1996, null}
!2006 = metadata !{i32 897, i32 18, metadata !2007, null}
!2007 = metadata !{i32 786443, metadata !84, metadata !1992, i32 897, i32 18, i32 0, i32 182} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2008 = metadata !{i32 897, i32 18, metadata !2009, null}
!2009 = metadata !{i32 786443, metadata !84, metadata !2007, i32 897, i32 18, i32 1, i32 751} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2010 = metadata !{i32 897, i32 18, metadata !2011, null}
!2011 = metadata !{i32 786443, metadata !84, metadata !2007, i32 897, i32 18, i32 2, i32 752} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2012 = metadata !{i32 897, i32 18, metadata !2013, null}
!2013 = metadata !{i32 786443, metadata !84, metadata !2014, i32 897, i32 18, i32 4, i32 754} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2014 = metadata !{i32 786443, metadata !84, metadata !2007, i32 897, i32 18, i32 3, i32 753} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2015 = metadata !{i32 897, i32 18, metadata !2016, null}
!2016 = metadata !{i32 786443, metadata !84, metadata !2007, i32 897, i32 18, i32 5, i32 755} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2017 = metadata !{i32 897, i32 39, metadata !2018, null}
!2018 = metadata !{i32 786443, metadata !84, metadata !2007, i32 897, i32 39, i32 6, i32 756} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2019 = metadata !{i32 786688, metadata !2020, metadata !"io", metadata !85, i32 898, metadata !132, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [io] [line 898]
!2020 = metadata !{i32 786443, metadata !84, metadata !2021, i32 898, i32 11, i32 0, i32 184} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2021 = metadata !{i32 786443, metadata !84, metadata !2007, i32 897, i32 58, i32 0, i32 183} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2022 = metadata !{i32 898, i32 11, metadata !2020, null}
!2023 = metadata !{i32 899, i32 9, metadata !2021, null}
!2024 = metadata !{i32 900, i32 16, metadata !2025, null}
!2025 = metadata !{i32 786443, metadata !84, metadata !2026, i32 900, i32 16, i32 0, i32 187} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2026 = metadata !{i32 786443, metadata !84, metadata !2027, i32 900, i32 16, i32 0, i32 186} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2027 = metadata !{i32 786443, metadata !84, metadata !2007, i32 900, i32 14, i32 0, i32 185} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2028 = metadata !{i32 900, i32 16, metadata !2026, null}
!2029 = metadata !{i32 901, i32 9, metadata !1967, null}
!2030 = metadata !{i32 786688, metadata !2031, metadata !"rb", metadata !85, i32 904, metadata !132, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rb] [line 904]
!2031 = metadata !{i32 786443, metadata !84, metadata !1638, i32 903, i32 22, i32 0, i32 188} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2032 = metadata !{i32 904, i32 17, metadata !2031, null}
!2033 = metadata !{i32 904, i32 9, metadata !2031, null}
!2034 = metadata !{i32 904, i32 9, metadata !2035, null}
!2035 = metadata !{i32 786443, metadata !84, metadata !2031, i32 904, i32 9, i32 1, i32 757} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2036 = metadata !{i32 904, i32 9, metadata !2037, null}
!2037 = metadata !{i32 786443, metadata !84, metadata !2031, i32 904, i32 9, i32 2, i32 758} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2038 = metadata !{i32 904, i32 9, metadata !2039, null}
!2039 = metadata !{i32 786443, metadata !84, metadata !2040, i32 904, i32 9, i32 4, i32 760} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2040 = metadata !{i32 786443, metadata !84, metadata !2031, i32 904, i32 9, i32 3, i32 759} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2041 = metadata !{i32 786688, metadata !2031, metadata !"rc", metadata !85, i32 905, metadata !132, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rc] [line 905]
!2042 = metadata !{i32 905, i32 17, metadata !2031, null}
!2043 = metadata !{i32 905, i32 9, metadata !2031, null}
!2044 = metadata !{i32 905, i32 9, metadata !2045, null}
!2045 = metadata !{i32 786443, metadata !84, metadata !2031, i32 905, i32 9, i32 1, i32 761} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2046 = metadata !{i32 905, i32 9, metadata !2047, null}
!2047 = metadata !{i32 786443, metadata !84, metadata !2031, i32 905, i32 9, i32 2, i32 762} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2048 = metadata !{i32 905, i32 9, metadata !2049, null}
!2049 = metadata !{i32 786443, metadata !84, metadata !2050, i32 905, i32 9, i32 4, i32 764} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2050 = metadata !{i32 786443, metadata !84, metadata !2031, i32 905, i32 9, i32 3, i32 763} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2051 = metadata !{i32 786688, metadata !2031, metadata !"nb", metadata !85, i32 906, metadata !205, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nb] [line 906]
!2052 = metadata !{i32 906, i32 20, metadata !2031, null}
!2053 = metadata !{i32 786688, metadata !2031, metadata !"nc", metadata !85, i32 906, metadata !205, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nc] [line 906]
!2054 = metadata !{i32 906, i32 35, metadata !2031, null}
!2055 = metadata !{i32 907, i32 13, metadata !2056, null}
!2056 = metadata !{i32 786443, metadata !84, metadata !2031, i32 907, i32 13, i32 0, i32 189} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2057 = metadata !{i32 907, i32 13, metadata !2058, null}
!2058 = metadata !{i32 786443, metadata !84, metadata !2056, i32 907, i32 13, i32 1, i32 765} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2059 = metadata !{i32 786688, metadata !2060, metadata !"ib", metadata !85, i32 908, metadata !358, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ib] [line 908]
!2060 = metadata !{i32 786443, metadata !84, metadata !2056, i32 907, i32 49, i32 0, i32 190} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2061 = metadata !{i32 908, i32 23, metadata !2060, null}
!2062 = metadata !{i32 908, i32 11, metadata !2060, null}
!2063 = metadata !{i32 786688, metadata !2060, metadata !"ic", metadata !85, i32 908, metadata !358, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ic] [line 908]
!2064 = metadata !{i32 908, i32 52, metadata !2060, null}
!2065 = metadata !{i32 908, i32 40, metadata !2060, null}
!2066 = metadata !{i32 786688, metadata !2067, metadata !"io", metadata !85, i32 909, metadata !132, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [io] [line 909]
!2067 = metadata !{i32 786443, metadata !84, metadata !2060, i32 909, i32 11, i32 0, i32 191} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2068 = metadata !{i32 909, i32 11, metadata !2067, null}
!2069 = metadata !{i32 910, i32 9, metadata !2060, null}
!2070 = metadata !{i32 911, i32 18, metadata !2071, null}
!2071 = metadata !{i32 786443, metadata !84, metadata !2056, i32 911, i32 18, i32 0, i32 192} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2072 = metadata !{i32 911, i32 18, metadata !2073, null}
!2073 = metadata !{i32 786443, metadata !84, metadata !2071, i32 911, i32 18, i32 1, i32 766} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2074 = metadata !{i32 911, i32 18, metadata !2075, null}
!2075 = metadata !{i32 786443, metadata !84, metadata !2071, i32 911, i32 18, i32 2, i32 767} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2076 = metadata !{i32 911, i32 18, metadata !2077, null}
!2077 = metadata !{i32 786443, metadata !84, metadata !2078, i32 911, i32 18, i32 4, i32 769} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2078 = metadata !{i32 786443, metadata !84, metadata !2071, i32 911, i32 18, i32 3, i32 768} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2079 = metadata !{i32 911, i32 18, metadata !2080, null}
!2080 = metadata !{i32 786443, metadata !84, metadata !2071, i32 911, i32 18, i32 5, i32 770} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2081 = metadata !{i32 911, i32 39, metadata !2082, null}
!2082 = metadata !{i32 786443, metadata !84, metadata !2071, i32 911, i32 39, i32 6, i32 771} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2083 = metadata !{i32 786688, metadata !2084, metadata !"io", metadata !85, i32 912, metadata !132, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [io] [line 912]
!2084 = metadata !{i32 786443, metadata !84, metadata !2085, i32 912, i32 11, i32 0, i32 194} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2085 = metadata !{i32 786443, metadata !84, metadata !2071, i32 911, i32 58, i32 0, i32 193} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2086 = metadata !{i32 912, i32 11, metadata !2084, null}
!2087 = metadata !{i32 913, i32 9, metadata !2085, null}
!2088 = metadata !{i32 914, i32 16, metadata !2089, null}
!2089 = metadata !{i32 786443, metadata !84, metadata !2090, i32 914, i32 16, i32 0, i32 197} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2090 = metadata !{i32 786443, metadata !84, metadata !2091, i32 914, i32 16, i32 0, i32 196} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2091 = metadata !{i32 786443, metadata !84, metadata !2071, i32 914, i32 14, i32 0, i32 195} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2092 = metadata !{i32 914, i32 16, metadata !2090, null}
!2093 = metadata !{i32 915, i32 9, metadata !2031, null}
!2094 = metadata !{i32 786688, metadata !2095, metadata !"rb", metadata !85, i32 918, metadata !132, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rb] [line 918]
!2095 = metadata !{i32 786443, metadata !84, metadata !1638, i32 917, i32 22, i32 0, i32 198} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2096 = metadata !{i32 918, i32 17, metadata !2095, null}
!2097 = metadata !{i32 918, i32 9, metadata !2095, null}
!2098 = metadata !{i32 918, i32 9, metadata !2099, null}
!2099 = metadata !{i32 786443, metadata !84, metadata !2095, i32 918, i32 9, i32 1, i32 772} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2100 = metadata !{i32 918, i32 9, metadata !2101, null}
!2101 = metadata !{i32 786443, metadata !84, metadata !2095, i32 918, i32 9, i32 2, i32 773} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2102 = metadata !{i32 918, i32 9, metadata !2103, null}
!2103 = metadata !{i32 786443, metadata !84, metadata !2104, i32 918, i32 9, i32 4, i32 775} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2104 = metadata !{i32 786443, metadata !84, metadata !2095, i32 918, i32 9, i32 3, i32 774} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2105 = metadata !{i32 786688, metadata !2095, metadata !"rc", metadata !85, i32 919, metadata !132, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rc] [line 919]
!2106 = metadata !{i32 919, i32 17, metadata !2095, null}
!2107 = metadata !{i32 919, i32 9, metadata !2095, null}
!2108 = metadata !{i32 919, i32 9, metadata !2109, null}
!2109 = metadata !{i32 786443, metadata !84, metadata !2095, i32 919, i32 9, i32 1, i32 776} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2110 = metadata !{i32 919, i32 9, metadata !2111, null}
!2111 = metadata !{i32 786443, metadata !84, metadata !2095, i32 919, i32 9, i32 2, i32 777} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2112 = metadata !{i32 919, i32 9, metadata !2113, null}
!2113 = metadata !{i32 786443, metadata !84, metadata !2114, i32 919, i32 9, i32 4, i32 779} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2114 = metadata !{i32 786443, metadata !84, metadata !2095, i32 919, i32 9, i32 3, i32 778} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2115 = metadata !{i32 786688, metadata !2095, metadata !"nb", metadata !85, i32 920, metadata !205, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nb] [line 920]
!2116 = metadata !{i32 920, i32 20, metadata !2095, null}
!2117 = metadata !{i32 786688, metadata !2095, metadata !"nc", metadata !85, i32 920, metadata !205, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nc] [line 920]
!2118 = metadata !{i32 920, i32 35, metadata !2095, null}
!2119 = metadata !{i32 921, i32 13, metadata !2120, null}
!2120 = metadata !{i32 786443, metadata !84, metadata !2095, i32 921, i32 13, i32 0, i32 199} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2121 = metadata !{i32 921, i32 13, metadata !2122, null}
!2122 = metadata !{i32 786443, metadata !84, metadata !2120, i32 921, i32 13, i32 1, i32 780} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2123 = metadata !{i32 786688, metadata !2124, metadata !"ib", metadata !85, i32 922, metadata !358, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ib] [line 922]
!2124 = metadata !{i32 786443, metadata !84, metadata !2120, i32 921, i32 49, i32 0, i32 200} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2125 = metadata !{i32 922, i32 23, metadata !2124, null}
!2126 = metadata !{i32 922, i32 11, metadata !2124, null}
!2127 = metadata !{i32 786688, metadata !2124, metadata !"ic", metadata !85, i32 922, metadata !358, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ic] [line 922]
!2128 = metadata !{i32 922, i32 52, metadata !2124, null}
!2129 = metadata !{i32 922, i32 40, metadata !2124, null}
!2130 = metadata !{i32 786688, metadata !2131, metadata !"io", metadata !85, i32 923, metadata !132, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [io] [line 923]
!2131 = metadata !{i32 786443, metadata !84, metadata !2124, i32 923, i32 11, i32 0, i32 201} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2132 = metadata !{i32 923, i32 11, metadata !2131, null}
!2133 = metadata !{i32 924, i32 9, metadata !2124, null}
!2134 = metadata !{i32 925, i32 18, metadata !2135, null}
!2135 = metadata !{i32 786443, metadata !84, metadata !2120, i32 925, i32 18, i32 0, i32 202} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2136 = metadata !{i32 925, i32 18, metadata !2137, null}
!2137 = metadata !{i32 786443, metadata !84, metadata !2135, i32 925, i32 18, i32 1, i32 781} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2138 = metadata !{i32 925, i32 18, metadata !2139, null}
!2139 = metadata !{i32 786443, metadata !84, metadata !2135, i32 925, i32 18, i32 2, i32 782} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2140 = metadata !{i32 925, i32 18, metadata !2141, null}
!2141 = metadata !{i32 786443, metadata !84, metadata !2142, i32 925, i32 18, i32 4, i32 784} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2142 = metadata !{i32 786443, metadata !84, metadata !2135, i32 925, i32 18, i32 3, i32 783} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2143 = metadata !{i32 925, i32 18, metadata !2144, null}
!2144 = metadata !{i32 786443, metadata !84, metadata !2135, i32 925, i32 18, i32 5, i32 785} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2145 = metadata !{i32 925, i32 39, metadata !2146, null}
!2146 = metadata !{i32 786443, metadata !84, metadata !2135, i32 925, i32 39, i32 6, i32 786} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2147 = metadata !{i32 786688, metadata !2148, metadata !"io", metadata !85, i32 926, metadata !132, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [io] [line 926]
!2148 = metadata !{i32 786443, metadata !84, metadata !2149, i32 926, i32 11, i32 0, i32 204} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2149 = metadata !{i32 786443, metadata !84, metadata !2135, i32 925, i32 58, i32 0, i32 203} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2150 = metadata !{i32 926, i32 11, metadata !2148, null}
!2151 = metadata !{i32 927, i32 9, metadata !2149, null}
!2152 = metadata !{i32 928, i32 16, metadata !2153, null}
!2153 = metadata !{i32 786443, metadata !84, metadata !2154, i32 928, i32 16, i32 0, i32 207} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2154 = metadata !{i32 786443, metadata !84, metadata !2155, i32 928, i32 16, i32 0, i32 206} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2155 = metadata !{i32 786443, metadata !84, metadata !2135, i32 928, i32 14, i32 0, i32 205} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2156 = metadata !{i32 928, i32 16, metadata !2154, null}
!2157 = metadata !{i32 929, i32 9, metadata !2095, null}
!2158 = metadata !{i32 786688, metadata !2159, metadata !"rb", metadata !85, i32 932, metadata !132, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rb] [line 932]
!2159 = metadata !{i32 786443, metadata !84, metadata !1638, i32 931, i32 22, i32 0, i32 208} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2160 = metadata !{i32 932, i32 17, metadata !2159, null}
!2161 = metadata !{i32 932, i32 9, metadata !2159, null}
!2162 = metadata !{i32 932, i32 9, metadata !2163, null}
!2163 = metadata !{i32 786443, metadata !84, metadata !2159, i32 932, i32 9, i32 1, i32 787} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2164 = metadata !{i32 932, i32 9, metadata !2165, null}
!2165 = metadata !{i32 786443, metadata !84, metadata !2159, i32 932, i32 9, i32 2, i32 788} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2166 = metadata !{i32 932, i32 9, metadata !2167, null}
!2167 = metadata !{i32 786443, metadata !84, metadata !2168, i32 932, i32 9, i32 4, i32 790} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2168 = metadata !{i32 786443, metadata !84, metadata !2159, i32 932, i32 9, i32 3, i32 789} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2169 = metadata !{i32 786688, metadata !2159, metadata !"rc", metadata !85, i32 933, metadata !132, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rc] [line 933]
!2170 = metadata !{i32 933, i32 17, metadata !2159, null}
!2171 = metadata !{i32 933, i32 9, metadata !2159, null}
!2172 = metadata !{i32 933, i32 9, metadata !2173, null}
!2173 = metadata !{i32 786443, metadata !84, metadata !2159, i32 933, i32 9, i32 1, i32 791} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2174 = metadata !{i32 933, i32 9, metadata !2175, null}
!2175 = metadata !{i32 786443, metadata !84, metadata !2159, i32 933, i32 9, i32 2, i32 792} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2176 = metadata !{i32 933, i32 9, metadata !2177, null}
!2177 = metadata !{i32 786443, metadata !84, metadata !2178, i32 933, i32 9, i32 4, i32 794} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2178 = metadata !{i32 786443, metadata !84, metadata !2159, i32 933, i32 9, i32 3, i32 793} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2179 = metadata !{i32 786688, metadata !2159, metadata !"nb", metadata !85, i32 934, metadata !205, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nb] [line 934]
!2180 = metadata !{i32 934, i32 20, metadata !2159, null}
!2181 = metadata !{i32 786688, metadata !2159, metadata !"nc", metadata !85, i32 934, metadata !205, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nc] [line 934]
!2182 = metadata !{i32 934, i32 35, metadata !2159, null}
!2183 = metadata !{i32 935, i32 13, metadata !2184, null}
!2184 = metadata !{i32 786443, metadata !84, metadata !2159, i32 935, i32 13, i32 0, i32 209} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2185 = metadata !{i32 935, i32 13, metadata !2186, null}
!2186 = metadata !{i32 786443, metadata !84, metadata !2184, i32 935, i32 13, i32 1, i32 795} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2187 = metadata !{i32 935, i32 13, metadata !2188, null}
!2188 = metadata !{i32 786443, metadata !84, metadata !2184, i32 935, i32 13, i32 2, i32 796} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2189 = metadata !{i32 935, i32 13, metadata !2190, null}
!2190 = metadata !{i32 786443, metadata !84, metadata !2191, i32 935, i32 13, i32 4, i32 798} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2191 = metadata !{i32 786443, metadata !84, metadata !2184, i32 935, i32 13, i32 3, i32 797} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2192 = metadata !{i32 935, i32 13, metadata !2193, null}
!2193 = metadata !{i32 786443, metadata !84, metadata !2184, i32 935, i32 13, i32 5, i32 799} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2194 = metadata !{i32 935, i32 34, metadata !2195, null}
!2195 = metadata !{i32 786443, metadata !84, metadata !2184, i32 935, i32 34, i32 6, i32 800} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2196 = metadata !{i32 786688, metadata !2197, metadata !"io", metadata !85, i32 936, metadata !132, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [io] [line 936]
!2197 = metadata !{i32 786443, metadata !84, metadata !2198, i32 936, i32 11, i32 0, i32 211} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2198 = metadata !{i32 786443, metadata !84, metadata !2184, i32 935, i32 53, i32 0, i32 210} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2199 = metadata !{i32 936, i32 11, metadata !2197, null}
!2200 = metadata !{i32 937, i32 9, metadata !2198, null}
!2201 = metadata !{i32 938, i32 16, metadata !2202, null}
!2202 = metadata !{i32 786443, metadata !84, metadata !2203, i32 938, i32 16, i32 0, i32 214} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2203 = metadata !{i32 786443, metadata !84, metadata !2204, i32 938, i32 16, i32 0, i32 213} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2204 = metadata !{i32 786443, metadata !84, metadata !2184, i32 938, i32 14, i32 0, i32 212} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2205 = metadata !{i32 938, i32 16, metadata !2203, null}
!2206 = metadata !{i32 939, i32 9, metadata !2159, null}
!2207 = metadata !{i32 786688, metadata !2208, metadata !"rb", metadata !85, i32 942, metadata !132, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rb] [line 942]
!2208 = metadata !{i32 786443, metadata !84, metadata !1638, i32 941, i32 23, i32 0, i32 215} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2209 = metadata !{i32 942, i32 17, metadata !2208, null}
!2210 = metadata !{i32 942, i32 9, metadata !2208, null}
!2211 = metadata !{i32 942, i32 9, metadata !2212, null}
!2212 = metadata !{i32 786443, metadata !84, metadata !2208, i32 942, i32 9, i32 1, i32 801} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2213 = metadata !{i32 942, i32 9, metadata !2214, null}
!2214 = metadata !{i32 786443, metadata !84, metadata !2208, i32 942, i32 9, i32 2, i32 802} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2215 = metadata !{i32 942, i32 9, metadata !2216, null}
!2216 = metadata !{i32 786443, metadata !84, metadata !2217, i32 942, i32 9, i32 4, i32 804} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2217 = metadata !{i32 786443, metadata !84, metadata !2208, i32 942, i32 9, i32 3, i32 803} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2218 = metadata !{i32 786688, metadata !2208, metadata !"rc", metadata !85, i32 943, metadata !132, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rc] [line 943]
!2219 = metadata !{i32 943, i32 17, metadata !2208, null}
!2220 = metadata !{i32 943, i32 9, metadata !2208, null}
!2221 = metadata !{i32 943, i32 9, metadata !2222, null}
!2222 = metadata !{i32 786443, metadata !84, metadata !2208, i32 943, i32 9, i32 1, i32 805} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2223 = metadata !{i32 943, i32 9, metadata !2224, null}
!2224 = metadata !{i32 786443, metadata !84, metadata !2208, i32 943, i32 9, i32 2, i32 806} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2225 = metadata !{i32 943, i32 9, metadata !2226, null}
!2226 = metadata !{i32 786443, metadata !84, metadata !2227, i32 943, i32 9, i32 4, i32 808} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2227 = metadata !{i32 786443, metadata !84, metadata !2208, i32 943, i32 9, i32 3, i32 807} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2228 = metadata !{i32 786688, metadata !2208, metadata !"ib", metadata !85, i32 944, metadata !358, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ib] [line 944]
!2229 = metadata !{i32 944, i32 21, metadata !2208, null}
!2230 = metadata !{i32 786688, metadata !2208, metadata !"ic", metadata !85, i32 944, metadata !358, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ic] [line 944]
!2231 = metadata !{i32 944, i32 37, metadata !2208, null}
!2232 = metadata !{i32 945, i32 13, metadata !2233, null}
!2233 = metadata !{i32 786443, metadata !84, metadata !2208, i32 945, i32 13, i32 0, i32 216} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2234 = metadata !{i32 945, i32 13, metadata !2235, null}
!2235 = metadata !{i32 786443, metadata !84, metadata !2233, i32 945, i32 13, i32 1, i32 809} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2236 = metadata !{i32 945, i32 13, metadata !2237, null}
!2237 = metadata !{i32 786443, metadata !84, metadata !2233, i32 945, i32 13, i32 2, i32 810} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2238 = metadata !{i32 945, i32 13, metadata !2239, null}
!2239 = metadata !{i32 786443, metadata !84, metadata !2240, i32 945, i32 13, i32 4, i32 812} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2240 = metadata !{i32 786443, metadata !84, metadata !2233, i32 945, i32 13, i32 3, i32 811} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2241 = metadata !{i32 945, i32 13, metadata !2242, null}
!2242 = metadata !{i32 786443, metadata !84, metadata !2233, i32 945, i32 13, i32 5, i32 813} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2243 = metadata !{i32 945, i32 35, metadata !2244, null}
!2244 = metadata !{i32 786443, metadata !84, metadata !2233, i32 945, i32 35, i32 6, i32 814} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2245 = metadata !{i32 786688, metadata !2246, metadata !"io", metadata !85, i32 946, metadata !132, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [io] [line 946]
!2246 = metadata !{i32 786443, metadata !84, metadata !2247, i32 946, i32 11, i32 0, i32 218} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2247 = metadata !{i32 786443, metadata !84, metadata !2233, i32 945, i32 55, i32 0, i32 217} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2248 = metadata !{i32 946, i32 11, metadata !2246, null}
!2249 = metadata !{i32 947, i32 9, metadata !2247, null}
!2250 = metadata !{i32 948, i32 16, metadata !2251, null}
!2251 = metadata !{i32 786443, metadata !84, metadata !2252, i32 948, i32 16, i32 0, i32 221} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2252 = metadata !{i32 786443, metadata !84, metadata !2253, i32 948, i32 16, i32 0, i32 220} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2253 = metadata !{i32 786443, metadata !84, metadata !2233, i32 948, i32 14, i32 0, i32 219} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2254 = metadata !{i32 948, i32 16, metadata !2252, null}
!2255 = metadata !{i32 949, i32 9, metadata !2208, null}
!2256 = metadata !{i32 786688, metadata !2257, metadata !"rb", metadata !85, i32 952, metadata !132, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rb] [line 952]
!2257 = metadata !{i32 786443, metadata !84, metadata !1638, i32 951, i32 22, i32 0, i32 222} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2258 = metadata !{i32 952, i32 17, metadata !2257, null}
!2259 = metadata !{i32 952, i32 9, metadata !2257, null}
!2260 = metadata !{i32 952, i32 9, metadata !2261, null}
!2261 = metadata !{i32 786443, metadata !84, metadata !2257, i32 952, i32 9, i32 1, i32 815} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2262 = metadata !{i32 952, i32 9, metadata !2263, null}
!2263 = metadata !{i32 786443, metadata !84, metadata !2257, i32 952, i32 9, i32 2, i32 816} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2264 = metadata !{i32 952, i32 9, metadata !2265, null}
!2265 = metadata !{i32 786443, metadata !84, metadata !2266, i32 952, i32 9, i32 4, i32 818} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2266 = metadata !{i32 786443, metadata !84, metadata !2257, i32 952, i32 9, i32 3, i32 817} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2267 = metadata !{i32 786688, metadata !2257, metadata !"rc", metadata !85, i32 953, metadata !132, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rc] [line 953]
!2268 = metadata !{i32 953, i32 17, metadata !2257, null}
!2269 = metadata !{i32 953, i32 9, metadata !2257, null}
!2270 = metadata !{i32 953, i32 9, metadata !2271, null}
!2271 = metadata !{i32 786443, metadata !84, metadata !2257, i32 953, i32 9, i32 1, i32 819} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2272 = metadata !{i32 953, i32 9, metadata !2273, null}
!2273 = metadata !{i32 786443, metadata !84, metadata !2257, i32 953, i32 9, i32 2, i32 820} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2274 = metadata !{i32 953, i32 9, metadata !2275, null}
!2275 = metadata !{i32 786443, metadata !84, metadata !2276, i32 953, i32 9, i32 4, i32 822} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2276 = metadata !{i32 786443, metadata !84, metadata !2257, i32 953, i32 9, i32 3, i32 821} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2277 = metadata !{i32 786688, metadata !2257, metadata !"ib", metadata !85, i32 954, metadata !358, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ib] [line 954]
!2278 = metadata !{i32 954, i32 21, metadata !2257, null}
!2279 = metadata !{i32 786688, metadata !2257, metadata !"ic", metadata !85, i32 954, metadata !358, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ic] [line 954]
!2280 = metadata !{i32 954, i32 37, metadata !2257, null}
!2281 = metadata !{i32 955, i32 13, metadata !2282, null}
!2282 = metadata !{i32 786443, metadata !84, metadata !2257, i32 955, i32 13, i32 0, i32 223} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2283 = metadata !{i32 955, i32 13, metadata !2284, null}
!2284 = metadata !{i32 786443, metadata !84, metadata !2282, i32 955, i32 13, i32 1, i32 823} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2285 = metadata !{i32 955, i32 13, metadata !2286, null}
!2286 = metadata !{i32 786443, metadata !84, metadata !2282, i32 955, i32 13, i32 2, i32 824} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2287 = metadata !{i32 955, i32 13, metadata !2288, null}
!2288 = metadata !{i32 786443, metadata !84, metadata !2289, i32 955, i32 13, i32 4, i32 826} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2289 = metadata !{i32 786443, metadata !84, metadata !2282, i32 955, i32 13, i32 3, i32 825} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2290 = metadata !{i32 955, i32 13, metadata !2291, null}
!2291 = metadata !{i32 786443, metadata !84, metadata !2282, i32 955, i32 13, i32 5, i32 827} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2292 = metadata !{i32 955, i32 35, metadata !2293, null}
!2293 = metadata !{i32 786443, metadata !84, metadata !2282, i32 955, i32 35, i32 6, i32 828} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2294 = metadata !{i32 786688, metadata !2295, metadata !"io", metadata !85, i32 956, metadata !132, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [io] [line 956]
!2295 = metadata !{i32 786443, metadata !84, metadata !2296, i32 956, i32 11, i32 0, i32 225} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2296 = metadata !{i32 786443, metadata !84, metadata !2282, i32 955, i32 55, i32 0, i32 224} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2297 = metadata !{i32 956, i32 11, metadata !2295, null}
!2298 = metadata !{i32 957, i32 9, metadata !2296, null}
!2299 = metadata !{i32 958, i32 16, metadata !2300, null}
!2300 = metadata !{i32 786443, metadata !84, metadata !2301, i32 958, i32 16, i32 0, i32 228} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2301 = metadata !{i32 786443, metadata !84, metadata !2302, i32 958, i32 16, i32 0, i32 227} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2302 = metadata !{i32 786443, metadata !84, metadata !2282, i32 958, i32 14, i32 0, i32 226} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2303 = metadata !{i32 958, i32 16, metadata !2301, null}
!2304 = metadata !{i32 959, i32 9, metadata !2257, null}
!2305 = metadata !{i32 786688, metadata !2306, metadata !"rb", metadata !85, i32 962, metadata !132, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rb] [line 962]
!2306 = metadata !{i32 786443, metadata !84, metadata !1638, i32 961, i32 23, i32 0, i32 229} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2307 = metadata !{i32 962, i32 17, metadata !2306, null}
!2308 = metadata !{i32 962, i32 9, metadata !2306, null}
!2309 = metadata !{i32 962, i32 9, metadata !2310, null}
!2310 = metadata !{i32 786443, metadata !84, metadata !2306, i32 962, i32 9, i32 1, i32 829} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2311 = metadata !{i32 962, i32 9, metadata !2312, null}
!2312 = metadata !{i32 786443, metadata !84, metadata !2306, i32 962, i32 9, i32 2, i32 830} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2313 = metadata !{i32 962, i32 9, metadata !2314, null}
!2314 = metadata !{i32 786443, metadata !84, metadata !2315, i32 962, i32 9, i32 4, i32 832} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2315 = metadata !{i32 786443, metadata !84, metadata !2306, i32 962, i32 9, i32 3, i32 831} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2316 = metadata !{i32 786688, metadata !2306, metadata !"rc", metadata !85, i32 963, metadata !132, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rc] [line 963]
!2317 = metadata !{i32 963, i32 17, metadata !2306, null}
!2318 = metadata !{i32 963, i32 9, metadata !2306, null}
!2319 = metadata !{i32 963, i32 9, metadata !2320, null}
!2320 = metadata !{i32 786443, metadata !84, metadata !2306, i32 963, i32 9, i32 1, i32 833} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2321 = metadata !{i32 963, i32 9, metadata !2322, null}
!2322 = metadata !{i32 786443, metadata !84, metadata !2306, i32 963, i32 9, i32 2, i32 834} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2323 = metadata !{i32 963, i32 9, metadata !2324, null}
!2324 = metadata !{i32 786443, metadata !84, metadata !2325, i32 963, i32 9, i32 4, i32 836} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2325 = metadata !{i32 786443, metadata !84, metadata !2306, i32 963, i32 9, i32 3, i32 835} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2326 = metadata !{i32 786688, metadata !2306, metadata !"ib", metadata !85, i32 964, metadata !358, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ib] [line 964]
!2327 = metadata !{i32 964, i32 21, metadata !2306, null}
!2328 = metadata !{i32 786688, metadata !2306, metadata !"ic", metadata !85, i32 964, metadata !358, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ic] [line 964]
!2329 = metadata !{i32 964, i32 37, metadata !2306, null}
!2330 = metadata !{i32 965, i32 13, metadata !2331, null}
!2331 = metadata !{i32 786443, metadata !84, metadata !2306, i32 965, i32 13, i32 0, i32 230} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2332 = metadata !{i32 965, i32 13, metadata !2333, null}
!2333 = metadata !{i32 786443, metadata !84, metadata !2331, i32 965, i32 13, i32 1, i32 837} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2334 = metadata !{i32 965, i32 13, metadata !2335, null}
!2335 = metadata !{i32 786443, metadata !84, metadata !2331, i32 965, i32 13, i32 2, i32 838} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2336 = metadata !{i32 965, i32 13, metadata !2337, null}
!2337 = metadata !{i32 786443, metadata !84, metadata !2338, i32 965, i32 13, i32 4, i32 840} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2338 = metadata !{i32 786443, metadata !84, metadata !2331, i32 965, i32 13, i32 3, i32 839} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2339 = metadata !{i32 965, i32 13, metadata !2340, null}
!2340 = metadata !{i32 786443, metadata !84, metadata !2331, i32 965, i32 13, i32 5, i32 841} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2341 = metadata !{i32 965, i32 35, metadata !2342, null}
!2342 = metadata !{i32 786443, metadata !84, metadata !2331, i32 965, i32 35, i32 6, i32 842} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2343 = metadata !{i32 786688, metadata !2344, metadata !"io", metadata !85, i32 966, metadata !132, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [io] [line 966]
!2344 = metadata !{i32 786443, metadata !84, metadata !2345, i32 966, i32 11, i32 0, i32 232} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2345 = metadata !{i32 786443, metadata !84, metadata !2331, i32 965, i32 55, i32 0, i32 231} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2346 = metadata !{i32 966, i32 11, metadata !2344, null}
!2347 = metadata !{i32 967, i32 9, metadata !2345, null}
!2348 = metadata !{i32 968, i32 16, metadata !2349, null}
!2349 = metadata !{i32 786443, metadata !84, metadata !2350, i32 968, i32 16, i32 0, i32 235} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2350 = metadata !{i32 786443, metadata !84, metadata !2351, i32 968, i32 16, i32 0, i32 234} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2351 = metadata !{i32 786443, metadata !84, metadata !2331, i32 968, i32 14, i32 0, i32 233} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2352 = metadata !{i32 968, i32 16, metadata !2350, null}
!2353 = metadata !{i32 969, i32 9, metadata !2306, null}
!2354 = metadata !{i32 786688, metadata !2355, metadata !"rb", metadata !85, i32 972, metadata !132, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rb] [line 972]
!2355 = metadata !{i32 786443, metadata !84, metadata !1638, i32 971, i32 22, i32 0, i32 236} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2356 = metadata !{i32 972, i32 17, metadata !2355, null}
!2357 = metadata !{i32 972, i32 9, metadata !2355, null}
!2358 = metadata !{i32 972, i32 9, metadata !2359, null}
!2359 = metadata !{i32 786443, metadata !84, metadata !2355, i32 972, i32 9, i32 1, i32 843} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2360 = metadata !{i32 972, i32 9, metadata !2361, null}
!2361 = metadata !{i32 786443, metadata !84, metadata !2355, i32 972, i32 9, i32 2, i32 844} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2362 = metadata !{i32 972, i32 9, metadata !2363, null}
!2363 = metadata !{i32 786443, metadata !84, metadata !2364, i32 972, i32 9, i32 4, i32 846} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2364 = metadata !{i32 786443, metadata !84, metadata !2355, i32 972, i32 9, i32 3, i32 845} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2365 = metadata !{i32 786688, metadata !2355, metadata !"rc", metadata !85, i32 973, metadata !132, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rc] [line 973]
!2366 = metadata !{i32 973, i32 17, metadata !2355, null}
!2367 = metadata !{i32 973, i32 9, metadata !2355, null}
!2368 = metadata !{i32 973, i32 9, metadata !2369, null}
!2369 = metadata !{i32 786443, metadata !84, metadata !2355, i32 973, i32 9, i32 1, i32 847} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2370 = metadata !{i32 973, i32 9, metadata !2371, null}
!2371 = metadata !{i32 786443, metadata !84, metadata !2355, i32 973, i32 9, i32 2, i32 848} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2372 = metadata !{i32 973, i32 9, metadata !2373, null}
!2373 = metadata !{i32 786443, metadata !84, metadata !2374, i32 973, i32 9, i32 4, i32 850} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2374 = metadata !{i32 786443, metadata !84, metadata !2355, i32 973, i32 9, i32 3, i32 849} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2375 = metadata !{i32 786688, metadata !2355, metadata !"ib", metadata !85, i32 974, metadata !358, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ib] [line 974]
!2376 = metadata !{i32 974, i32 21, metadata !2355, null}
!2377 = metadata !{i32 786688, metadata !2355, metadata !"ic", metadata !85, i32 974, metadata !358, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ic] [line 974]
!2378 = metadata !{i32 974, i32 37, metadata !2355, null}
!2379 = metadata !{i32 975, i32 13, metadata !2380, null}
!2380 = metadata !{i32 786443, metadata !84, metadata !2355, i32 975, i32 13, i32 0, i32 237} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2381 = metadata !{i32 975, i32 13, metadata !2382, null}
!2382 = metadata !{i32 786443, metadata !84, metadata !2380, i32 975, i32 13, i32 1, i32 851} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2383 = metadata !{i32 975, i32 13, metadata !2384, null}
!2384 = metadata !{i32 786443, metadata !84, metadata !2380, i32 975, i32 13, i32 2, i32 852} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2385 = metadata !{i32 975, i32 13, metadata !2386, null}
!2386 = metadata !{i32 786443, metadata !84, metadata !2387, i32 975, i32 13, i32 4, i32 854} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2387 = metadata !{i32 786443, metadata !84, metadata !2380, i32 975, i32 13, i32 3, i32 853} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2388 = metadata !{i32 975, i32 13, metadata !2389, null}
!2389 = metadata !{i32 786443, metadata !84, metadata !2380, i32 975, i32 13, i32 5, i32 855} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2390 = metadata !{i32 975, i32 35, metadata !2391, null}
!2391 = metadata !{i32 786443, metadata !84, metadata !2380, i32 975, i32 35, i32 6, i32 856} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2392 = metadata !{i32 786688, metadata !2393, metadata !"io", metadata !85, i32 976, metadata !132, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [io] [line 976]
!2393 = metadata !{i32 786443, metadata !84, metadata !2394, i32 976, i32 11, i32 0, i32 239} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2394 = metadata !{i32 786443, metadata !84, metadata !2380, i32 975, i32 55, i32 0, i32 238} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2395 = metadata !{i32 976, i32 11, metadata !2393, null}
!2396 = metadata !{i32 977, i32 9, metadata !2394, null}
!2397 = metadata !{i32 978, i32 16, metadata !2398, null}
!2398 = metadata !{i32 786443, metadata !84, metadata !2399, i32 978, i32 16, i32 0, i32 242} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2399 = metadata !{i32 786443, metadata !84, metadata !2400, i32 978, i32 16, i32 0, i32 241} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2400 = metadata !{i32 786443, metadata !84, metadata !2380, i32 978, i32 14, i32 0, i32 240} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2401 = metadata !{i32 978, i32 16, metadata !2399, null}
!2402 = metadata !{i32 979, i32 9, metadata !2355, null}
!2403 = metadata !{i32 786688, metadata !2404, metadata !"rb", metadata !85, i32 982, metadata !132, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rb] [line 982]
!2404 = metadata !{i32 786443, metadata !84, metadata !1638, i32 981, i32 22, i32 0, i32 243} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2405 = metadata !{i32 982, i32 17, metadata !2404, null}
!2406 = metadata !{i32 982, i32 9, metadata !2404, null}
!2407 = metadata !{i32 982, i32 9, metadata !2408, null}
!2408 = metadata !{i32 786443, metadata !84, metadata !2404, i32 982, i32 9, i32 1, i32 857} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2409 = metadata !{i32 982, i32 9, metadata !2410, null}
!2410 = metadata !{i32 786443, metadata !84, metadata !2404, i32 982, i32 9, i32 2, i32 858} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2411 = metadata !{i32 982, i32 9, metadata !2412, null}
!2412 = metadata !{i32 786443, metadata !84, metadata !2413, i32 982, i32 9, i32 4, i32 860} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2413 = metadata !{i32 786443, metadata !84, metadata !2404, i32 982, i32 9, i32 3, i32 859} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2414 = metadata !{i32 786688, metadata !2404, metadata !"rc", metadata !85, i32 983, metadata !132, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rc] [line 983]
!2415 = metadata !{i32 983, i32 17, metadata !2404, null}
!2416 = metadata !{i32 983, i32 9, metadata !2404, null}
!2417 = metadata !{i32 983, i32 9, metadata !2418, null}
!2418 = metadata !{i32 786443, metadata !84, metadata !2404, i32 983, i32 9, i32 1, i32 861} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2419 = metadata !{i32 983, i32 9, metadata !2420, null}
!2420 = metadata !{i32 786443, metadata !84, metadata !2404, i32 983, i32 9, i32 2, i32 862} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2421 = metadata !{i32 983, i32 9, metadata !2422, null}
!2422 = metadata !{i32 786443, metadata !84, metadata !2423, i32 983, i32 9, i32 4, i32 864} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2423 = metadata !{i32 786443, metadata !84, metadata !2404, i32 983, i32 9, i32 3, i32 863} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2424 = metadata !{i32 786688, metadata !2404, metadata !"ib", metadata !85, i32 984, metadata !358, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ib] [line 984]
!2425 = metadata !{i32 984, i32 21, metadata !2404, null}
!2426 = metadata !{i32 786688, metadata !2404, metadata !"ic", metadata !85, i32 984, metadata !358, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ic] [line 984]
!2427 = metadata !{i32 984, i32 37, metadata !2404, null}
!2428 = metadata !{i32 985, i32 13, metadata !2429, null}
!2429 = metadata !{i32 786443, metadata !84, metadata !2404, i32 985, i32 13, i32 0, i32 244} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2430 = metadata !{i32 985, i32 13, metadata !2431, null}
!2431 = metadata !{i32 786443, metadata !84, metadata !2429, i32 985, i32 13, i32 1, i32 865} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2432 = metadata !{i32 985, i32 13, metadata !2433, null}
!2433 = metadata !{i32 786443, metadata !84, metadata !2429, i32 985, i32 13, i32 2, i32 866} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2434 = metadata !{i32 985, i32 13, metadata !2435, null}
!2435 = metadata !{i32 786443, metadata !84, metadata !2436, i32 985, i32 13, i32 4, i32 868} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2436 = metadata !{i32 786443, metadata !84, metadata !2429, i32 985, i32 13, i32 3, i32 867} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2437 = metadata !{i32 985, i32 13, metadata !2438, null}
!2438 = metadata !{i32 786443, metadata !84, metadata !2429, i32 985, i32 13, i32 5, i32 869} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2439 = metadata !{i32 985, i32 35, metadata !2440, null}
!2440 = metadata !{i32 786443, metadata !84, metadata !2429, i32 985, i32 35, i32 6, i32 870} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2441 = metadata !{i32 786688, metadata !2442, metadata !"io", metadata !85, i32 986, metadata !132, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [io] [line 986]
!2442 = metadata !{i32 786443, metadata !84, metadata !2443, i32 986, i32 11, i32 0, i32 246} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2443 = metadata !{i32 786443, metadata !84, metadata !2429, i32 985, i32 55, i32 0, i32 245} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2444 = metadata !{i32 986, i32 11, metadata !2442, null}
!2445 = metadata !{i32 987, i32 9, metadata !2443, null}
!2446 = metadata !{i32 988, i32 16, metadata !2447, null}
!2447 = metadata !{i32 786443, metadata !84, metadata !2448, i32 988, i32 16, i32 0, i32 249} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2448 = metadata !{i32 786443, metadata !84, metadata !2449, i32 988, i32 16, i32 0, i32 248} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2449 = metadata !{i32 786443, metadata !84, metadata !2429, i32 988, i32 14, i32 0, i32 247} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2450 = metadata !{i32 988, i32 16, metadata !2448, null}
!2451 = metadata !{i32 989, i32 9, metadata !2404, null}
!2452 = metadata !{i32 786688, metadata !2453, metadata !"rb", metadata !85, i32 992, metadata !132, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rb] [line 992]
!2453 = metadata !{i32 786443, metadata !84, metadata !1638, i32 991, i32 22, i32 0, i32 250} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2454 = metadata !{i32 992, i32 17, metadata !2453, null}
!2455 = metadata !{i32 992, i32 9, metadata !2453, null}
!2456 = metadata !{i32 992, i32 9, metadata !2457, null}
!2457 = metadata !{i32 786443, metadata !84, metadata !2453, i32 992, i32 9, i32 1, i32 871} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2458 = metadata !{i32 992, i32 9, metadata !2459, null}
!2459 = metadata !{i32 786443, metadata !84, metadata !2453, i32 992, i32 9, i32 2, i32 872} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2460 = metadata !{i32 992, i32 9, metadata !2461, null}
!2461 = metadata !{i32 786443, metadata !84, metadata !2462, i32 992, i32 9, i32 4, i32 874} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2462 = metadata !{i32 786443, metadata !84, metadata !2453, i32 992, i32 9, i32 3, i32 873} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2463 = metadata !{i32 786688, metadata !2453, metadata !"rc", metadata !85, i32 993, metadata !132, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rc] [line 993]
!2464 = metadata !{i32 993, i32 17, metadata !2453, null}
!2465 = metadata !{i32 993, i32 9, metadata !2453, null}
!2466 = metadata !{i32 993, i32 9, metadata !2467, null}
!2467 = metadata !{i32 786443, metadata !84, metadata !2453, i32 993, i32 9, i32 1, i32 875} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2468 = metadata !{i32 993, i32 9, metadata !2469, null}
!2469 = metadata !{i32 786443, metadata !84, metadata !2453, i32 993, i32 9, i32 2, i32 876} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2470 = metadata !{i32 993, i32 9, metadata !2471, null}
!2471 = metadata !{i32 786443, metadata !84, metadata !2472, i32 993, i32 9, i32 4, i32 878} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2472 = metadata !{i32 786443, metadata !84, metadata !2453, i32 993, i32 9, i32 3, i32 877} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2473 = metadata !{i32 786688, metadata !2453, metadata !"nb", metadata !85, i32 994, metadata !205, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nb] [line 994]
!2474 = metadata !{i32 994, i32 20, metadata !2453, null}
!2475 = metadata !{i32 786688, metadata !2453, metadata !"nc", metadata !85, i32 994, metadata !205, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nc] [line 994]
!2476 = metadata !{i32 994, i32 35, metadata !2453, null}
!2477 = metadata !{i32 995, i32 13, metadata !2478, null}
!2478 = metadata !{i32 786443, metadata !84, metadata !2453, i32 995, i32 13, i32 0, i32 251} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2479 = metadata !{i32 995, i32 13, metadata !2480, null}
!2480 = metadata !{i32 786443, metadata !84, metadata !2478, i32 995, i32 13, i32 1, i32 879} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2481 = metadata !{i32 786688, metadata !2482, metadata !"ib", metadata !85, i32 996, metadata !358, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ib] [line 996]
!2482 = metadata !{i32 786443, metadata !84, metadata !2478, i32 995, i32 49, i32 0, i32 252} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2483 = metadata !{i32 996, i32 23, metadata !2482, null}
!2484 = metadata !{i32 996, i32 11, metadata !2482, null}
!2485 = metadata !{i32 786688, metadata !2482, metadata !"ic", metadata !85, i32 996, metadata !358, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ic] [line 996]
!2486 = metadata !{i32 996, i32 52, metadata !2482, null}
!2487 = metadata !{i32 996, i32 40, metadata !2482, null}
!2488 = metadata !{i32 786688, metadata !2489, metadata !"io", metadata !85, i32 997, metadata !132, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [io] [line 997]
!2489 = metadata !{i32 786443, metadata !84, metadata !2482, i32 997, i32 11, i32 0, i32 253} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2490 = metadata !{i32 997, i32 11, metadata !2489, null}
!2491 = metadata !{i32 998, i32 9, metadata !2482, null}
!2492 = metadata !{i32 999, i32 18, metadata !2493, null}
!2493 = metadata !{i32 786443, metadata !84, metadata !2478, i32 999, i32 18, i32 0, i32 254} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2494 = metadata !{i32 999, i32 18, metadata !2495, null}
!2495 = metadata !{i32 786443, metadata !84, metadata !2493, i32 999, i32 18, i32 1, i32 880} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2496 = metadata !{i32 999, i32 18, metadata !2497, null}
!2497 = metadata !{i32 786443, metadata !84, metadata !2493, i32 999, i32 18, i32 2, i32 881} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2498 = metadata !{i32 999, i32 18, metadata !2499, null}
!2499 = metadata !{i32 786443, metadata !84, metadata !2500, i32 999, i32 18, i32 4, i32 883} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2500 = metadata !{i32 786443, metadata !84, metadata !2493, i32 999, i32 18, i32 3, i32 882} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2501 = metadata !{i32 999, i32 18, metadata !2502, null}
!2502 = metadata !{i32 786443, metadata !84, metadata !2493, i32 999, i32 18, i32 5, i32 884} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2503 = metadata !{i32 999, i32 39, metadata !2504, null}
!2504 = metadata !{i32 786443, metadata !84, metadata !2493, i32 999, i32 39, i32 6, i32 885} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2505 = metadata !{i32 786688, metadata !2506, metadata !"m", metadata !85, i32 1000, metadata !205, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [m] [line 1000]
!2506 = metadata !{i32 786443, metadata !84, metadata !2493, i32 999, i32 58, i32 0, i32 255} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2507 = metadata !{i32 1000, i32 22, metadata !2506, null}
!2508 = metadata !{i32 1001, i32 11, metadata !2509, null}
!2509 = metadata !{i32 786443, metadata !84, metadata !2506, i32 1001, i32 11, i32 0, i32 256} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2510 = metadata !{i32 1001, i32 11, metadata !2511, null}
!2511 = metadata !{i32 786443, metadata !84, metadata !2509, i32 1001, i32 11, i32 0, i32 257} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2512 = metadata !{i32 1001, i32 11, metadata !2513, null}
!2513 = metadata !{i32 786443, metadata !84, metadata !2511, i32 1001, i32 11, i32 1, i32 886} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2514 = metadata !{i32 786688, metadata !2515, metadata !"io", metadata !85, i32 1002, metadata !132, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [io] [line 1002]
!2515 = metadata !{i32 786443, metadata !84, metadata !2506, i32 1002, i32 11, i32 0, i32 258} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2516 = metadata !{i32 1002, i32 11, metadata !2515, null}
!2517 = metadata !{i32 1003, i32 9, metadata !2506, null}
!2518 = metadata !{i32 1004, i32 16, metadata !2519, null}
!2519 = metadata !{i32 786443, metadata !84, metadata !2520, i32 1004, i32 16, i32 0, i32 261} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2520 = metadata !{i32 786443, metadata !84, metadata !2521, i32 1004, i32 16, i32 0, i32 260} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2521 = metadata !{i32 786443, metadata !84, metadata !2493, i32 1004, i32 14, i32 0, i32 259} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2522 = metadata !{i32 1004, i32 16, metadata !2520, null}
!2523 = metadata !{i32 1005, i32 9, metadata !2453, null}
!2524 = metadata !{i32 786688, metadata !2525, metadata !"rb", metadata !85, i32 1008, metadata !132, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rb] [line 1008]
!2525 = metadata !{i32 786443, metadata !84, metadata !1638, i32 1007, i32 23, i32 0, i32 262} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2526 = metadata !{i32 1008, i32 17, metadata !2525, null}
!2527 = metadata !{i32 1008, i32 9, metadata !2525, null}
!2528 = metadata !{i32 1008, i32 9, metadata !2529, null}
!2529 = metadata !{i32 786443, metadata !84, metadata !2525, i32 1008, i32 9, i32 1, i32 887} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2530 = metadata !{i32 1008, i32 9, metadata !2531, null}
!2531 = metadata !{i32 786443, metadata !84, metadata !2525, i32 1008, i32 9, i32 2, i32 888} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2532 = metadata !{i32 1008, i32 9, metadata !2533, null}
!2533 = metadata !{i32 786443, metadata !84, metadata !2534, i32 1008, i32 9, i32 4, i32 890} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2534 = metadata !{i32 786443, metadata !84, metadata !2525, i32 1008, i32 9, i32 3, i32 889} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2535 = metadata !{i32 786688, metadata !2525, metadata !"rc", metadata !85, i32 1009, metadata !132, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rc] [line 1009]
!2536 = metadata !{i32 1009, i32 17, metadata !2525, null}
!2537 = metadata !{i32 1009, i32 9, metadata !2525, null}
!2538 = metadata !{i32 1009, i32 9, metadata !2539, null}
!2539 = metadata !{i32 786443, metadata !84, metadata !2525, i32 1009, i32 9, i32 1, i32 891} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2540 = metadata !{i32 1009, i32 9, metadata !2541, null}
!2541 = metadata !{i32 786443, metadata !84, metadata !2525, i32 1009, i32 9, i32 2, i32 892} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2542 = metadata !{i32 1009, i32 9, metadata !2543, null}
!2543 = metadata !{i32 786443, metadata !84, metadata !2544, i32 1009, i32 9, i32 4, i32 894} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2544 = metadata !{i32 786443, metadata !84, metadata !2525, i32 1009, i32 9, i32 3, i32 893} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2545 = metadata !{i32 786688, metadata !2525, metadata !"nb", metadata !85, i32 1010, metadata !205, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nb] [line 1010]
!2546 = metadata !{i32 1010, i32 20, metadata !2525, null}
!2547 = metadata !{i32 786688, metadata !2525, metadata !"nc", metadata !85, i32 1010, metadata !205, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nc] [line 1010]
!2548 = metadata !{i32 1010, i32 35, metadata !2525, null}
!2549 = metadata !{i32 1011, i32 13, metadata !2550, null}
!2550 = metadata !{i32 786443, metadata !84, metadata !2525, i32 1011, i32 13, i32 0, i32 263} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2551 = metadata !{i32 1011, i32 13, metadata !2552, null}
!2552 = metadata !{i32 786443, metadata !84, metadata !2550, i32 1011, i32 13, i32 1, i32 895} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2553 = metadata !{i32 786688, metadata !2554, metadata !"ib", metadata !85, i32 1012, metadata !358, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ib] [line 1012]
!2554 = metadata !{i32 786443, metadata !84, metadata !2550, i32 1011, i32 49, i32 0, i32 264} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2555 = metadata !{i32 1012, i32 23, metadata !2554, null}
!2556 = metadata !{i32 1012, i32 11, metadata !2554, null}
!2557 = metadata !{i32 786688, metadata !2554, metadata !"ic", metadata !85, i32 1012, metadata !358, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ic] [line 1012]
!2558 = metadata !{i32 1012, i32 52, metadata !2554, null}
!2559 = metadata !{i32 1012, i32 40, metadata !2554, null}
!2560 = metadata !{i32 786688, metadata !2561, metadata !"io", metadata !85, i32 1013, metadata !132, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [io] [line 1013]
!2561 = metadata !{i32 786443, metadata !84, metadata !2554, i32 1013, i32 11, i32 0, i32 265} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2562 = metadata !{i32 1013, i32 11, metadata !2561, null}
!2563 = metadata !{i32 1014, i32 9, metadata !2554, null}
!2564 = metadata !{i32 1015, i32 18, metadata !2565, null}
!2565 = metadata !{i32 786443, metadata !84, metadata !2550, i32 1015, i32 18, i32 0, i32 266} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2566 = metadata !{i32 1015, i32 18, metadata !2567, null}
!2567 = metadata !{i32 786443, metadata !84, metadata !2565, i32 1015, i32 18, i32 1, i32 896} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2568 = metadata !{i32 1015, i32 18, metadata !2569, null}
!2569 = metadata !{i32 786443, metadata !84, metadata !2565, i32 1015, i32 18, i32 2, i32 897} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2570 = metadata !{i32 1015, i32 18, metadata !2571, null}
!2571 = metadata !{i32 786443, metadata !84, metadata !2572, i32 1015, i32 18, i32 4, i32 899} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2572 = metadata !{i32 786443, metadata !84, metadata !2565, i32 1015, i32 18, i32 3, i32 898} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2573 = metadata !{i32 1015, i32 18, metadata !2574, null}
!2574 = metadata !{i32 786443, metadata !84, metadata !2565, i32 1015, i32 18, i32 5, i32 900} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2575 = metadata !{i32 1015, i32 39, metadata !2576, null}
!2576 = metadata !{i32 786443, metadata !84, metadata !2565, i32 1015, i32 39, i32 6, i32 901} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2577 = metadata !{i32 786688, metadata !2578, metadata !"io", metadata !85, i32 1016, metadata !132, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [io] [line 1016]
!2578 = metadata !{i32 786443, metadata !84, metadata !2579, i32 1016, i32 11, i32 0, i32 268} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2579 = metadata !{i32 786443, metadata !84, metadata !2565, i32 1015, i32 58, i32 0, i32 267} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2580 = metadata !{i32 1016, i32 11, metadata !2578, null}
!2581 = metadata !{i32 1017, i32 9, metadata !2579, null}
!2582 = metadata !{i32 1018, i32 16, metadata !2583, null}
!2583 = metadata !{i32 786443, metadata !84, metadata !2584, i32 1018, i32 16, i32 0, i32 271} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2584 = metadata !{i32 786443, metadata !84, metadata !2585, i32 1018, i32 16, i32 0, i32 270} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2585 = metadata !{i32 786443, metadata !84, metadata !2565, i32 1018, i32 14, i32 0, i32 269} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2586 = metadata !{i32 1018, i32 16, metadata !2584, null}
!2587 = metadata !{i32 1019, i32 9, metadata !2525, null}
!2588 = metadata !{i32 786688, metadata !2589, metadata !"rb", metadata !85, i32 1022, metadata !132, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rb] [line 1022]
!2589 = metadata !{i32 786443, metadata !84, metadata !1638, i32 1021, i32 22, i32 0, i32 272} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2590 = metadata !{i32 1022, i32 17, metadata !2589, null}
!2591 = metadata !{i32 1022, i32 9, metadata !2589, null}
!2592 = metadata !{i32 1022, i32 9, metadata !2593, null}
!2593 = metadata !{i32 786443, metadata !84, metadata !2589, i32 1022, i32 9, i32 1, i32 902} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2594 = metadata !{i32 1022, i32 9, metadata !2595, null}
!2595 = metadata !{i32 786443, metadata !84, metadata !2589, i32 1022, i32 9, i32 2, i32 903} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2596 = metadata !{i32 1022, i32 9, metadata !2597, null}
!2597 = metadata !{i32 786443, metadata !84, metadata !2598, i32 1022, i32 9, i32 4, i32 905} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2598 = metadata !{i32 786443, metadata !84, metadata !2589, i32 1022, i32 9, i32 3, i32 904} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2599 = metadata !{i32 786688, metadata !2589, metadata !"rc", metadata !85, i32 1023, metadata !132, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rc] [line 1023]
!2600 = metadata !{i32 1023, i32 17, metadata !2589, null}
!2601 = metadata !{i32 1023, i32 9, metadata !2589, null}
!2602 = metadata !{i32 1023, i32 9, metadata !2603, null}
!2603 = metadata !{i32 786443, metadata !84, metadata !2589, i32 1023, i32 9, i32 1, i32 906} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2604 = metadata !{i32 1023, i32 9, metadata !2605, null}
!2605 = metadata !{i32 786443, metadata !84, metadata !2589, i32 1023, i32 9, i32 2, i32 907} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2606 = metadata !{i32 1023, i32 9, metadata !2607, null}
!2607 = metadata !{i32 786443, metadata !84, metadata !2608, i32 1023, i32 9, i32 4, i32 909} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2608 = metadata !{i32 786443, metadata !84, metadata !2589, i32 1023, i32 9, i32 3, i32 908} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2609 = metadata !{i32 786688, metadata !2589, metadata !"nb", metadata !85, i32 1024, metadata !205, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nb] [line 1024]
!2610 = metadata !{i32 1024, i32 20, metadata !2589, null}
!2611 = metadata !{i32 786688, metadata !2589, metadata !"nc", metadata !85, i32 1024, metadata !205, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nc] [line 1024]
!2612 = metadata !{i32 1024, i32 35, metadata !2589, null}
!2613 = metadata !{i32 1025, i32 13, metadata !2614, null}
!2614 = metadata !{i32 786443, metadata !84, metadata !2589, i32 1025, i32 13, i32 0, i32 273} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2615 = metadata !{i32 1025, i32 13, metadata !2616, null}
!2616 = metadata !{i32 786443, metadata !84, metadata !2614, i32 1025, i32 13, i32 1, i32 910} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2617 = metadata !{i32 1025, i32 13, metadata !2618, null}
!2618 = metadata !{i32 786443, metadata !84, metadata !2614, i32 1025, i32 13, i32 2, i32 911} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2619 = metadata !{i32 1025, i32 13, metadata !2620, null}
!2620 = metadata !{i32 786443, metadata !84, metadata !2621, i32 1025, i32 13, i32 4, i32 913} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2621 = metadata !{i32 786443, metadata !84, metadata !2614, i32 1025, i32 13, i32 3, i32 912} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2622 = metadata !{i32 1025, i32 13, metadata !2623, null}
!2623 = metadata !{i32 786443, metadata !84, metadata !2614, i32 1025, i32 13, i32 5, i32 914} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2624 = metadata !{i32 1025, i32 34, metadata !2625, null}
!2625 = metadata !{i32 786443, metadata !84, metadata !2614, i32 1025, i32 34, i32 6, i32 915} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2626 = metadata !{i32 786688, metadata !2627, metadata !"io", metadata !85, i32 1026, metadata !132, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [io] [line 1026]
!2627 = metadata !{i32 786443, metadata !84, metadata !2628, i32 1026, i32 11, i32 0, i32 275} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2628 = metadata !{i32 786443, metadata !84, metadata !2614, i32 1025, i32 53, i32 0, i32 274} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2629 = metadata !{i32 1026, i32 11, metadata !2627, null}
!2630 = metadata !{i32 1027, i32 9, metadata !2628, null}
!2631 = metadata !{i32 1028, i32 16, metadata !2632, null}
!2632 = metadata !{i32 786443, metadata !84, metadata !2633, i32 1028, i32 16, i32 0, i32 278} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2633 = metadata !{i32 786443, metadata !84, metadata !2634, i32 1028, i32 16, i32 0, i32 277} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2634 = metadata !{i32 786443, metadata !84, metadata !2614, i32 1028, i32 14, i32 0, i32 276} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2635 = metadata !{i32 1028, i32 16, metadata !2633, null}
!2636 = metadata !{i32 1029, i32 9, metadata !2589, null}
!2637 = metadata !{i32 786688, metadata !2638, metadata !"rb", metadata !85, i32 1032, metadata !132, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rb] [line 1032]
!2638 = metadata !{i32 786443, metadata !84, metadata !1638, i32 1031, i32 22, i32 0, i32 279} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2639 = metadata !{i32 1032, i32 17, metadata !2638, null}
!2640 = metadata !{i32 1032, i32 9, metadata !2638, null}
!2641 = metadata !{i32 786688, metadata !2638, metadata !"nb", metadata !85, i32 1033, metadata !205, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nb] [line 1033]
!2642 = metadata !{i32 1033, i32 20, metadata !2638, null}
!2643 = metadata !{i32 1034, i32 13, metadata !2644, null}
!2644 = metadata !{i32 786443, metadata !84, metadata !2638, i32 1034, i32 13, i32 0, i32 280} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2645 = metadata !{i32 786688, metadata !2646, metadata !"ib", metadata !85, i32 1035, metadata !358, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ib] [line 1035]
!2646 = metadata !{i32 786443, metadata !84, metadata !2644, i32 1034, i32 30, i32 0, i32 281} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2647 = metadata !{i32 1035, i32 23, metadata !2646, null}
!2648 = metadata !{i32 1035, i32 11, metadata !2646, null}
!2649 = metadata !{i32 786688, metadata !2650, metadata !"io", metadata !85, i32 1036, metadata !132, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [io] [line 1036]
!2650 = metadata !{i32 786443, metadata !84, metadata !2646, i32 1036, i32 11, i32 0, i32 282} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2651 = metadata !{i32 1036, i32 11, metadata !2650, null}
!2652 = metadata !{i32 1037, i32 9, metadata !2646, null}
!2653 = metadata !{i32 1038, i32 18, metadata !2654, null}
!2654 = metadata !{i32 786443, metadata !84, metadata !2644, i32 1038, i32 18, i32 0, i32 283} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2655 = metadata !{i32 1038, i32 18, metadata !2656, null}
!2656 = metadata !{i32 786443, metadata !84, metadata !2654, i32 1038, i32 18, i32 1, i32 916} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2657 = metadata !{i32 1038, i32 18, metadata !2658, null}
!2658 = metadata !{i32 786443, metadata !84, metadata !2654, i32 1038, i32 18, i32 2, i32 917} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2659 = metadata !{i32 786688, metadata !2660, metadata !"io", metadata !85, i32 1039, metadata !132, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [io] [line 1039]
!2660 = metadata !{i32 786443, metadata !84, metadata !2661, i32 1039, i32 11, i32 0, i32 285} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2661 = metadata !{i32 786443, metadata !84, metadata !2654, i32 1038, i32 37, i32 0, i32 284} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2662 = metadata !{i32 1039, i32 11, metadata !2660, null}
!2663 = metadata !{i32 1040, i32 9, metadata !2661, null}
!2664 = metadata !{i32 1042, i32 11, metadata !2665, null}
!2665 = metadata !{i32 786443, metadata !84, metadata !2666, i32 1042, i32 11, i32 0, i32 288} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2666 = metadata !{i32 786443, metadata !84, metadata !2667, i32 1042, i32 11, i32 0, i32 287} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2667 = metadata !{i32 786443, metadata !84, metadata !2654, i32 1041, i32 14, i32 0, i32 286} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2668 = metadata !{i32 1042, i32 11, metadata !2666, null}
!2669 = metadata !{i32 1044, i32 9, metadata !2638, null}
!2670 = metadata !{i32 786688, metadata !2671, metadata !"rb", metadata !85, i32 1047, metadata !132, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rb] [line 1047]
!2671 = metadata !{i32 786443, metadata !84, metadata !1638, i32 1046, i32 23, i32 0, i32 289} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2672 = metadata !{i32 1047, i32 17, metadata !2671, null}
!2673 = metadata !{i32 1047, i32 9, metadata !2671, null}
!2674 = metadata !{i32 786688, metadata !2671, metadata !"ib", metadata !85, i32 1048, metadata !358, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ib] [line 1048]
!2675 = metadata !{i32 1048, i32 21, metadata !2671, null}
!2676 = metadata !{i32 1049, i32 13, metadata !2677, null}
!2677 = metadata !{i32 786443, metadata !84, metadata !2671, i32 1049, i32 13, i32 0, i32 290} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2678 = metadata !{i32 1049, i32 13, metadata !2679, null}
!2679 = metadata !{i32 786443, metadata !84, metadata !2677, i32 1049, i32 13, i32 1, i32 918} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2680 = metadata !{i32 1049, i32 13, metadata !2681, null}
!2681 = metadata !{i32 786443, metadata !84, metadata !2677, i32 1049, i32 13, i32 2, i32 919} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2682 = metadata !{i32 786688, metadata !2683, metadata !"io", metadata !85, i32 1050, metadata !132, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [io] [line 1050]
!2683 = metadata !{i32 786443, metadata !84, metadata !2684, i32 1050, i32 11, i32 0, i32 292} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2684 = metadata !{i32 786443, metadata !84, metadata !2677, i32 1049, i32 33, i32 0, i32 291} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2685 = metadata !{i32 1050, i32 11, metadata !2683, null}
!2686 = metadata !{i32 1051, i32 9, metadata !2684, null}
!2687 = metadata !{i32 1053, i32 11, metadata !2688, null}
!2688 = metadata !{i32 786443, metadata !84, metadata !2689, i32 1053, i32 11, i32 0, i32 295} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2689 = metadata !{i32 786443, metadata !84, metadata !2690, i32 1053, i32 11, i32 0, i32 294} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2690 = metadata !{i32 786443, metadata !84, metadata !2677, i32 1052, i32 14, i32 0, i32 293} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2691 = metadata !{i32 1053, i32 11, metadata !2689, null}
!2692 = metadata !{i32 1055, i32 9, metadata !2671, null}
!2693 = metadata !{i32 786688, metadata !2694, metadata !"rb", metadata !85, i32 1058, metadata !132, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rb] [line 1058]
!2694 = metadata !{i32 786443, metadata !84, metadata !1638, i32 1057, i32 22, i32 0, i32 296} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2695 = metadata !{i32 1058, i32 17, metadata !2694, null}
!2696 = metadata !{i32 1058, i32 9, metadata !2694, null}
!2697 = metadata !{i32 786688, metadata !2694, metadata !"res", metadata !85, i32 1059, metadata !88, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [res] [line 1059]
!2698 = metadata !{i32 1059, i32 13, metadata !2694, null}
!2699 = metadata !{i32 1059, i32 9, metadata !2694, null}
!2700 = metadata !{i32 1059, i32 9, metadata !2701, null}
!2701 = metadata !{i32 786443, metadata !84, metadata !2694, i32 1059, i32 9, i32 2, i32 921} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2702 = metadata !{i32 1059, i32 9, metadata !2703, null}
!2703 = metadata !{i32 786443, metadata !84, metadata !2694, i32 1059, i32 9, i32 3, i32 922} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2704 = metadata !{i32 1059, i32 9, metadata !2705, null}
!2705 = metadata !{i32 786443, metadata !84, metadata !2694, i32 1059, i32 9, i32 4, i32 923} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2706 = metadata !{i32 1059, i32 9, metadata !2707, null}
!2707 = metadata !{i32 786443, metadata !84, metadata !2708, i32 1059, i32 9, i32 5, i32 924} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2708 = metadata !{i32 786443, metadata !84, metadata !2694, i32 1059, i32 9, i32 1, i32 920} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2709 = metadata !{i32 786688, metadata !2710, metadata !"io", metadata !85, i32 1060, metadata !132, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [io] [line 1060]
!2710 = metadata !{i32 786443, metadata !84, metadata !2694, i32 1060, i32 9, i32 0, i32 297} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2711 = metadata !{i32 1060, i32 9, metadata !2710, null}
!2712 = metadata !{i32 1061, i32 9, metadata !2694, null}
!2713 = metadata !{i32 1064, i32 9, metadata !2714, null}
!2714 = metadata !{i32 786443, metadata !84, metadata !2715, i32 1064, i32 9, i32 0, i32 300} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2715 = metadata !{i32 786443, metadata !84, metadata !2716, i32 1064, i32 9, i32 0, i32 299} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2716 = metadata !{i32 786443, metadata !84, metadata !1638, i32 1063, i32 22, i32 0, i32 298} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2717 = metadata !{i32 1064, i32 9, metadata !2715, null}
!2718 = metadata !{i32 1065, i32 9, metadata !2716, null}
!2719 = metadata !{i32 786688, metadata !2720, metadata !"b", metadata !85, i32 1068, metadata !88, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b] [line 1068]
!2720 = metadata !{i32 786443, metadata !84, metadata !1638, i32 1067, i32 25, i32 0, i32 301} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2721 = metadata !{i32 1068, i32 13, metadata !2720, null}
!2722 = metadata !{i32 1068, i32 9, metadata !2720, null}
!2723 = metadata !{i32 786688, metadata !2720, metadata !"c", metadata !85, i32 1069, metadata !88, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c] [line 1069]
!2724 = metadata !{i32 1069, i32 13, metadata !2720, null}
!2725 = metadata !{i32 1069, i32 9, metadata !2720, null}
!2726 = metadata !{i32 786688, metadata !2720, metadata !"rb", metadata !85, i32 1070, metadata !131, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rb] [line 1070]
!2727 = metadata !{i32 1070, i32 15, metadata !2720, null}
!2728 = metadata !{i32 1071, i32 9, metadata !2720, null}
!2729 = metadata !{i32 1072, i32 9, metadata !2730, null}
!2730 = metadata !{i32 786443, metadata !84, metadata !2731, i32 1072, i32 9, i32 0, i32 303} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2731 = metadata !{i32 786443, metadata !84, metadata !2720, i32 1072, i32 9, i32 0, i32 302} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2732 = metadata !{i32 1072, i32 9, metadata !2731, null}
!2733 = metadata !{i32 1073, i32 9, metadata !2720, null}
!2734 = metadata !{i32 1074, i32 9, metadata !2720, null}
!2735 = metadata !{i32 786688, metadata !2736, metadata !"io1", metadata !85, i32 1075, metadata !132, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [io1] [line 1075]
!2736 = metadata !{i32 786443, metadata !84, metadata !2720, i32 1075, i32 9, i32 0, i32 304} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2737 = metadata !{i32 1075, i32 9, metadata !2736, null}
!2738 = metadata !{i32 1076, i32 9, metadata !2739, null}
!2739 = metadata !{i32 786443, metadata !84, metadata !2740, i32 1076, i32 9, i32 0, i32 307} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2740 = metadata !{i32 786443, metadata !84, metadata !2741, i32 1076, i32 9, i32 0, i32 306} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2741 = metadata !{i32 786443, metadata !84, metadata !2720, i32 1076, i32 9, i32 0, i32 305} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2742 = metadata !{i32 1076, i32 9, metadata !2743, null}
!2743 = metadata !{i32 786443, metadata !84, metadata !2744, i32 1076, i32 9, i32 1, i32 925} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2744 = metadata !{i32 786443, metadata !84, metadata !2739, i32 1076, i32 9, i32 0, i32 308} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2745 = metadata !{i32 1076, i32 9, metadata !2746, null}
!2746 = metadata !{i32 786443, metadata !84, metadata !2744, i32 1076, i32 9, i32 2, i32 926} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2747 = metadata !{i32 1076, i32 9, metadata !2748, null}
!2748 = metadata !{i32 786443, metadata !84, metadata !2744, i32 1076, i32 9, i32 3, i32 927} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2749 = metadata !{i32 1076, i32 9, metadata !2744, null}
!2750 = metadata !{i32 1076, i32 9, metadata !2751, null}
!2751 = metadata !{i32 786443, metadata !84, metadata !2752, i32 1076, i32 9, i32 5, i32 929} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2752 = metadata !{i32 786443, metadata !84, metadata !2744, i32 1076, i32 9, i32 4, i32 928} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2753 = metadata !{i32 1076, i32 9, metadata !2754, null}
!2754 = metadata !{i32 786443, metadata !84, metadata !2755, i32 1076, i32 9, i32 0, i32 310} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2755 = metadata !{i32 786443, metadata !84, metadata !2744, i32 1076, i32 9, i32 0, i32 309} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2756 = metadata !{i32 1076, i32 9, metadata !2755, null}
!2757 = metadata !{i32 1077, i32 9, metadata !2720, null}
!2758 = metadata !{i32 1078, i32 9, metadata !2720, null}
!2759 = metadata !{i32 786688, metadata !2760, metadata !"a", metadata !85, i32 1081, metadata !88, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a] [line 1081]
!2760 = metadata !{i32 786443, metadata !84, metadata !2761, i32 1081, i32 9, i32 0, i32 313} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2761 = metadata !{i32 786443, metadata !84, metadata !1638, i32 1080, i32 22, i32 0, i32 312} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2762 = metadata !{i32 1081, i32 9, metadata !2760, null}
!2763 = metadata !{i32 1081, i32 9, metadata !2764, null}
!2764 = metadata !{i32 786443, metadata !84, metadata !2760, i32 1081, i32 9, i32 0, i32 314} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2765 = metadata !{i32 1081, i32 9, metadata !2766, null}
!2766 = metadata !{i32 786443, metadata !84, metadata !2764, i32 1081, i32 9, i32 1, i32 930} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2767 = metadata !{i32 1081, i32 9, metadata !2768, null}
!2768 = metadata !{i32 786443, metadata !84, metadata !2769, i32 1081, i32 9, i32 3, i32 932} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2769 = metadata !{i32 786443, metadata !84, metadata !2760, i32 1081, i32 9, i32 2, i32 931} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2770 = metadata !{i32 1082, i32 9, metadata !2761, null}
!2771 = metadata !{i32 786688, metadata !2772, metadata !"rb", metadata !85, i32 1085, metadata !132, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rb] [line 1085]
!2772 = metadata !{i32 786443, metadata !84, metadata !1638, i32 1084, i32 21, i32 0, i32 315} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2773 = metadata !{i32 1085, i32 17, metadata !2772, null}
!2774 = metadata !{i32 1085, i32 9, metadata !2772, null}
!2775 = metadata !{i32 1085, i32 9, metadata !2776, null}
!2776 = metadata !{i32 786443, metadata !84, metadata !2772, i32 1085, i32 9, i32 1, i32 933} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2777 = metadata !{i32 1085, i32 9, metadata !2778, null}
!2778 = metadata !{i32 786443, metadata !84, metadata !2772, i32 1085, i32 9, i32 2, i32 934} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2779 = metadata !{i32 1085, i32 9, metadata !2780, null}
!2780 = metadata !{i32 786443, metadata !84, metadata !2781, i32 1085, i32 9, i32 4, i32 936} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2781 = metadata !{i32 786443, metadata !84, metadata !2772, i32 1085, i32 9, i32 3, i32 935} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2782 = metadata !{i32 786688, metadata !2772, metadata !"rc", metadata !85, i32 1086, metadata !132, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rc] [line 1086]
!2783 = metadata !{i32 1086, i32 17, metadata !2772, null}
!2784 = metadata !{i32 1086, i32 9, metadata !2772, null}
!2785 = metadata !{i32 1086, i32 9, metadata !2786, null}
!2786 = metadata !{i32 786443, metadata !84, metadata !2772, i32 1086, i32 9, i32 1, i32 937} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2787 = metadata !{i32 1086, i32 9, metadata !2788, null}
!2788 = metadata !{i32 786443, metadata !84, metadata !2772, i32 1086, i32 9, i32 2, i32 938} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2789 = metadata !{i32 1086, i32 9, metadata !2790, null}
!2790 = metadata !{i32 786443, metadata !84, metadata !2791, i32 1086, i32 9, i32 4, i32 940} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2791 = metadata !{i32 786443, metadata !84, metadata !2772, i32 1086, i32 9, i32 3, i32 939} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2792 = metadata !{i32 1087, i32 9, metadata !2793, null}
!2793 = metadata !{i32 786443, metadata !84, metadata !2794, i32 1087, i32 9, i32 0, i32 318} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2794 = metadata !{i32 786443, metadata !84, metadata !2795, i32 1087, i32 9, i32 0, i32 317} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2795 = metadata !{i32 786443, metadata !84, metadata !2772, i32 1087, i32 9, i32 0, i32 316} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2796 = metadata !{i32 1087, i32 9, metadata !2797, null}
!2797 = metadata !{i32 786443, metadata !84, metadata !2793, i32 1087, i32 9, i32 1, i32 941} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2798 = metadata !{i32 1087, i32 9, metadata !2799, null}
!2799 = metadata !{i32 786443, metadata !84, metadata !2800, i32 1087, i32 9, i32 2, i32 942} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2800 = metadata !{i32 786443, metadata !84, metadata !2793, i32 1087, i32 9, i32 0, i32 319} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2801 = metadata !{i32 786688, metadata !2802, metadata !"a", metadata !85, i32 1087, metadata !88, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a] [line 1087]
!2802 = metadata !{i32 786443, metadata !84, metadata !2800, i32 1087, i32 9, i32 0, i32 320} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2803 = metadata !{i32 1087, i32 9, metadata !2802, null}
!2804 = metadata !{i32 1087, i32 9, metadata !2805, null}
!2805 = metadata !{i32 786443, metadata !84, metadata !2802, i32 1087, i32 9, i32 0, i32 321} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2806 = metadata !{i32 1087, i32 9, metadata !2807, null}
!2807 = metadata !{i32 786443, metadata !84, metadata !2805, i32 1087, i32 9, i32 4, i32 944} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2808 = metadata !{i32 1087, i32 9, metadata !2809, null}
!2809 = metadata !{i32 786443, metadata !84, metadata !2810, i32 1087, i32 9, i32 6, i32 946} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2810 = metadata !{i32 786443, metadata !84, metadata !2802, i32 1087, i32 9, i32 5, i32 945} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2811 = metadata !{i32 1087, i32 9, metadata !2812, null}
!2812 = metadata !{i32 786443, metadata !84, metadata !2795, i32 1087, i32 9, i32 3, i32 943} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2813 = metadata !{i32 1093, i32 9, metadata !2772, null}
!2814 = metadata !{i32 1096, i32 9, metadata !2815, null}
!2815 = metadata !{i32 786443, metadata !84, metadata !2816, i32 1096, i32 9, i32 0, i32 325} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2816 = metadata !{i32 786443, metadata !84, metadata !2817, i32 1096, i32 9, i32 0, i32 324} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2817 = metadata !{i32 786443, metadata !84, metadata !2818, i32 1096, i32 9, i32 0, i32 323} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2818 = metadata !{i32 786443, metadata !84, metadata !1638, i32 1095, i32 21, i32 0, i32 322} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2819 = metadata !{i32 1096, i32 9, metadata !2820, null}
!2820 = metadata !{i32 786443, metadata !84, metadata !2815, i32 1096, i32 9, i32 1, i32 947} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2821 = metadata !{i32 1096, i32 9, metadata !2822, null}
!2822 = metadata !{i32 786443, metadata !84, metadata !2815, i32 1096, i32 9, i32 2, i32 948} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2823 = metadata !{i32 1096, i32 9, metadata !2824, null}
!2824 = metadata !{i32 786443, metadata !84, metadata !2825, i32 1096, i32 9, i32 4, i32 950} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2825 = metadata !{i32 786443, metadata !84, metadata !2815, i32 1096, i32 9, i32 3, i32 949} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2826 = metadata !{i32 1096, i32 9, metadata !2827, null}
!2827 = metadata !{i32 786443, metadata !84, metadata !2815, i32 1096, i32 9, i32 5, i32 951} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2828 = metadata !{i32 1096, i32 9, metadata !2829, null}
!2829 = metadata !{i32 786443, metadata !84, metadata !2815, i32 1096, i32 9, i32 6, i32 952} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2830 = metadata !{i32 1096, i32 9, metadata !2831, null}
!2831 = metadata !{i32 786443, metadata !84, metadata !2832, i32 1096, i32 9, i32 8, i32 954} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2832 = metadata !{i32 786443, metadata !84, metadata !2815, i32 1096, i32 9, i32 7, i32 953} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2833 = metadata !{i32 1096, i32 9, metadata !2834, null}
!2834 = metadata !{i32 786443, metadata !84, metadata !2815, i32 1096, i32 9, i32 9, i32 955} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2835 = metadata !{i32 1096, i32 9, metadata !2836, null}
!2836 = metadata !{i32 786443, metadata !84, metadata !2837, i32 1096, i32 9, i32 10, i32 956} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2837 = metadata !{i32 786443, metadata !84, metadata !2815, i32 1096, i32 9, i32 0, i32 326} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2838 = metadata !{i32 786688, metadata !2839, metadata !"a", metadata !85, i32 1096, metadata !88, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a] [line 1096]
!2839 = metadata !{i32 786443, metadata !84, metadata !2837, i32 1096, i32 9, i32 0, i32 327} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2840 = metadata !{i32 1096, i32 9, metadata !2839, null}
!2841 = metadata !{i32 1096, i32 9, metadata !2842, null}
!2842 = metadata !{i32 786443, metadata !84, metadata !2839, i32 1096, i32 9, i32 0, i32 328} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2843 = metadata !{i32 1096, i32 9, metadata !2844, null}
!2844 = metadata !{i32 786443, metadata !84, metadata !2842, i32 1096, i32 9, i32 12, i32 958} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2845 = metadata !{i32 1096, i32 9, metadata !2846, null}
!2846 = metadata !{i32 786443, metadata !84, metadata !2847, i32 1096, i32 9, i32 14, i32 960} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2847 = metadata !{i32 786443, metadata !84, metadata !2839, i32 1096, i32 9, i32 13, i32 959} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2848 = metadata !{i32 1096, i32 9, metadata !2849, null}
!2849 = metadata !{i32 786443, metadata !84, metadata !2817, i32 1096, i32 9, i32 11, i32 957} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2850 = metadata !{i32 1102, i32 9, metadata !2818, null}
!2851 = metadata !{i32 1105, i32 9, metadata !2852, null}
!2852 = metadata !{i32 786443, metadata !84, metadata !2853, i32 1105, i32 9, i32 0, i32 332} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2853 = metadata !{i32 786443, metadata !84, metadata !2854, i32 1105, i32 9, i32 0, i32 331} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2854 = metadata !{i32 786443, metadata !84, metadata !2855, i32 1105, i32 9, i32 0, i32 330} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2855 = metadata !{i32 786443, metadata !84, metadata !1638, i32 1104, i32 21, i32 0, i32 329} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2856 = metadata !{i32 1105, i32 9, metadata !2857, null}
!2857 = metadata !{i32 786443, metadata !84, metadata !2852, i32 1105, i32 9, i32 1, i32 961} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2858 = metadata !{i32 1105, i32 9, metadata !2859, null}
!2859 = metadata !{i32 786443, metadata !84, metadata !2852, i32 1105, i32 9, i32 2, i32 962} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2860 = metadata !{i32 1105, i32 9, metadata !2861, null}
!2861 = metadata !{i32 786443, metadata !84, metadata !2862, i32 1105, i32 9, i32 4, i32 964} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2862 = metadata !{i32 786443, metadata !84, metadata !2852, i32 1105, i32 9, i32 3, i32 963} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2863 = metadata !{i32 1105, i32 9, metadata !2864, null}
!2864 = metadata !{i32 786443, metadata !84, metadata !2852, i32 1105, i32 9, i32 5, i32 965} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2865 = metadata !{i32 1105, i32 9, metadata !2866, null}
!2866 = metadata !{i32 786443, metadata !84, metadata !2852, i32 1105, i32 9, i32 6, i32 966} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2867 = metadata !{i32 1105, i32 9, metadata !2868, null}
!2868 = metadata !{i32 786443, metadata !84, metadata !2869, i32 1105, i32 9, i32 8, i32 968} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2869 = metadata !{i32 786443, metadata !84, metadata !2852, i32 1105, i32 9, i32 7, i32 967} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2870 = metadata !{i32 1105, i32 9, metadata !2871, null}
!2871 = metadata !{i32 786443, metadata !84, metadata !2852, i32 1105, i32 9, i32 9, i32 969} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2872 = metadata !{i32 1105, i32 9, metadata !2873, null}
!2873 = metadata !{i32 786443, metadata !84, metadata !2874, i32 1105, i32 9, i32 10, i32 970} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2874 = metadata !{i32 786443, metadata !84, metadata !2852, i32 1105, i32 9, i32 0, i32 333} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2875 = metadata !{i32 786688, metadata !2876, metadata !"a", metadata !85, i32 1105, metadata !88, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a] [line 1105]
!2876 = metadata !{i32 786443, metadata !84, metadata !2874, i32 1105, i32 9, i32 0, i32 334} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2877 = metadata !{i32 1105, i32 9, metadata !2876, null}
!2878 = metadata !{i32 1105, i32 9, metadata !2879, null}
!2879 = metadata !{i32 786443, metadata !84, metadata !2876, i32 1105, i32 9, i32 0, i32 335} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2880 = metadata !{i32 1105, i32 9, metadata !2881, null}
!2881 = metadata !{i32 786443, metadata !84, metadata !2879, i32 1105, i32 9, i32 12, i32 972} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2882 = metadata !{i32 1105, i32 9, metadata !2883, null}
!2883 = metadata !{i32 786443, metadata !84, metadata !2884, i32 1105, i32 9, i32 14, i32 974} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2884 = metadata !{i32 786443, metadata !84, metadata !2876, i32 1105, i32 9, i32 13, i32 973} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2885 = metadata !{i32 1105, i32 9, metadata !2886, null}
!2886 = metadata !{i32 786443, metadata !84, metadata !2854, i32 1105, i32 9, i32 11, i32 971} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2887 = metadata !{i32 1111, i32 9, metadata !2855, null}
!2888 = metadata !{i32 1114, i32 13, metadata !2889, null}
!2889 = metadata !{i32 786443, metadata !84, metadata !2890, i32 1114, i32 13, i32 0, i32 337} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2890 = metadata !{i32 786443, metadata !84, metadata !1638, i32 1113, i32 23, i32 0, i32 336} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2891 = metadata !{i32 1114, i32 13, metadata !2892, null}
!2892 = metadata !{i32 786443, metadata !84, metadata !2889, i32 1114, i32 13, i32 1, i32 975} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2893 = metadata !{i32 1114, i32 13, metadata !2894, null}
!2894 = metadata !{i32 786443, metadata !84, metadata !2889, i32 1114, i32 13, i32 3, i32 977} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2895 = metadata !{i32 1114, i32 13, metadata !2896, null}
!2896 = metadata !{i32 786443, metadata !84, metadata !2889, i32 1114, i32 13, i32 4, i32 978} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2897 = metadata !{i32 1114, i32 13, metadata !2898, null}
!2898 = metadata !{i32 786443, metadata !84, metadata !2889, i32 1114, i32 13, i32 2, i32 976} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2899 = metadata !{i32 1114, i32 13, metadata !2900, null}
!2900 = metadata !{i32 786443, metadata !84, metadata !2889, i32 1114, i32 13, i32 5, i32 979} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2901 = metadata !{i32 1114, i32 13, metadata !2902, null}
!2902 = metadata !{i32 786443, metadata !84, metadata !2889, i32 1114, i32 13, i32 6, i32 980} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2903 = metadata !{i32 1115, i32 13, metadata !2889, null}
!2904 = metadata !{i32 1117, i32 11, metadata !2905, null}
!2905 = metadata !{i32 786443, metadata !84, metadata !2889, i32 1117, i32 11, i32 0, i32 338} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2906 = metadata !{i32 786688, metadata !2907, metadata !"a", metadata !85, i32 1117, metadata !88, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a] [line 1117]
!2907 = metadata !{i32 786443, metadata !84, metadata !2905, i32 1117, i32 11, i32 0, i32 339} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2908 = metadata !{i32 1117, i32 11, metadata !2907, null}
!2909 = metadata !{i32 1117, i32 11, metadata !2910, null}
!2910 = metadata !{i32 786443, metadata !84, metadata !2907, i32 1117, i32 11, i32 0, i32 340} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2911 = metadata !{i32 1117, i32 11, metadata !2912, null}
!2912 = metadata !{i32 786443, metadata !84, metadata !2910, i32 1117, i32 11, i32 1, i32 981} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2913 = metadata !{i32 1117, i32 11, metadata !2914, null}
!2914 = metadata !{i32 786443, metadata !84, metadata !2915, i32 1117, i32 11, i32 3, i32 983} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2915 = metadata !{i32 786443, metadata !84, metadata !2907, i32 1117, i32 11, i32 2, i32 982} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2916 = metadata !{i32 1118, i32 9, metadata !2890, null}
!2917 = metadata !{i32 786688, metadata !2918, metadata !"rb", metadata !85, i32 1121, metadata !132, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rb] [line 1121]
!2918 = metadata !{i32 786443, metadata !84, metadata !1638, i32 1120, i32 26, i32 0, i32 341} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2919 = metadata !{i32 1121, i32 17, metadata !2918, null}
!2920 = metadata !{i32 1121, i32 9, metadata !2918, null}
!2921 = metadata !{i32 1122, i32 13, metadata !2922, null}
!2922 = metadata !{i32 786443, metadata !84, metadata !2918, i32 1122, i32 13, i32 0, i32 342} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2923 = metadata !{i32 1122, i32 13, metadata !2924, null}
!2924 = metadata !{i32 786443, metadata !84, metadata !2922, i32 1122, i32 13, i32 1, i32 984} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2925 = metadata !{i32 1122, i32 13, metadata !2926, null}
!2926 = metadata !{i32 786443, metadata !84, metadata !2922, i32 1122, i32 13, i32 3, i32 986} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2927 = metadata !{i32 1122, i32 13, metadata !2928, null}
!2928 = metadata !{i32 786443, metadata !84, metadata !2922, i32 1122, i32 13, i32 4, i32 987} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2929 = metadata !{i32 1122, i32 13, metadata !2930, null}
!2930 = metadata !{i32 786443, metadata !84, metadata !2922, i32 1122, i32 13, i32 2, i32 985} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2931 = metadata !{i32 1122, i32 13, metadata !2932, null}
!2932 = metadata !{i32 786443, metadata !84, metadata !2922, i32 1122, i32 13, i32 5, i32 988} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2933 = metadata !{i32 1122, i32 13, metadata !2934, null}
!2934 = metadata !{i32 786443, metadata !84, metadata !2922, i32 1122, i32 13, i32 6, i32 989} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2935 = metadata !{i32 1123, i32 11, metadata !2922, null}
!2936 = metadata !{i32 786688, metadata !2937, metadata !"io1", metadata !85, i32 1125, metadata !132, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [io1] [line 1125]
!2937 = metadata !{i32 786443, metadata !84, metadata !2938, i32 1125, i32 11, i32 0, i32 344} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2938 = metadata !{i32 786443, metadata !84, metadata !2922, i32 1124, i32 14, i32 0, i32 343} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2939 = metadata !{i32 1125, i32 11, metadata !2937, null}
!2940 = metadata !{i32 1126, i32 11, metadata !2941, null}
!2941 = metadata !{i32 786443, metadata !84, metadata !2938, i32 1126, i32 11, i32 0, i32 345} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2942 = metadata !{i32 786688, metadata !2943, metadata !"a", metadata !85, i32 1126, metadata !88, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a] [line 1126]
!2943 = metadata !{i32 786443, metadata !84, metadata !2941, i32 1126, i32 11, i32 0, i32 346} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2944 = metadata !{i32 1126, i32 11, metadata !2943, null}
!2945 = metadata !{i32 1126, i32 11, metadata !2946, null}
!2946 = metadata !{i32 786443, metadata !84, metadata !2943, i32 1126, i32 11, i32 0, i32 347} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2947 = metadata !{i32 1126, i32 11, metadata !2948, null}
!2948 = metadata !{i32 786443, metadata !84, metadata !2946, i32 1126, i32 11, i32 1, i32 990} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2949 = metadata !{i32 1126, i32 11, metadata !2950, null}
!2950 = metadata !{i32 786443, metadata !84, metadata !2951, i32 1126, i32 11, i32 3, i32 992} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2951 = metadata !{i32 786443, metadata !84, metadata !2943, i32 1126, i32 11, i32 2, i32 991} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2952 = metadata !{i32 1128, i32 9, metadata !2918, null}
!2953 = metadata !{i32 786688, metadata !2954, metadata !"b", metadata !85, i32 1131, metadata !88, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b] [line 1131]
!2954 = metadata !{i32 786443, metadata !84, metadata !1638, i32 1130, i32 23, i32 0, i32 348} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2955 = metadata !{i32 1131, i32 13, metadata !2954, null}
!2956 = metadata !{i32 1131, i32 9, metadata !2954, null}
!2957 = metadata !{i32 786688, metadata !2954, metadata !"nresults", metadata !85, i32 1132, metadata !88, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nresults] [line 1132]
!2958 = metadata !{i32 1132, i32 13, metadata !2954, null}
!2959 = metadata !{i32 1132, i32 9, metadata !2954, null}
!2960 = metadata !{i32 1133, i32 13, metadata !2961, null}
!2961 = metadata !{i32 786443, metadata !84, metadata !2954, i32 1133, i32 13, i32 0, i32 349} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2962 = metadata !{i32 1133, i32 21, metadata !2963, null}
!2963 = metadata !{i32 786443, metadata !84, metadata !2961, i32 1133, i32 21, i32 1, i32 993} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2964 = metadata !{i32 1134, i32 13, metadata !2965, null}
!2965 = metadata !{i32 786443, metadata !84, metadata !2954, i32 1134, i32 13, i32 0, i32 350} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2966 = metadata !{i32 1135, i32 15, metadata !2967, null}
!2967 = metadata !{i32 786443, metadata !84, metadata !2968, i32 1135, i32 15, i32 0, i32 352} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2968 = metadata !{i32 786443, metadata !84, metadata !2965, i32 1134, i32 44, i32 0, i32 351} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2969 = metadata !{i32 1136, i32 13, metadata !2967, null}
!2970 = metadata !{i32 1137, i32 11, metadata !2971, null}
!2971 = metadata !{i32 786443, metadata !84, metadata !2968, i32 1137, i32 11, i32 0, i32 353} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2972 = metadata !{i32 1138, i32 9, metadata !2968, null}
!2973 = metadata !{i32 1140, i32 11, metadata !2974, null}
!2974 = metadata !{i32 786443, metadata !84, metadata !2965, i32 1139, i32 14, i32 0, i32 355} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2975 = metadata !{i32 1141, i32 11, metadata !2974, null}
!2976 = metadata !{i32 1143, i32 9, metadata !2954, null}
!2977 = metadata !{i32 786688, metadata !2978, metadata !"b", metadata !85, i32 1146, metadata !88, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b] [line 1146]
!2978 = metadata !{i32 786443, metadata !84, metadata !1638, i32 1145, i32 27, i32 0, i32 356} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2979 = metadata !{i32 1146, i32 13, metadata !2978, null}
!2980 = metadata !{i32 1146, i32 9, metadata !2978, null}
!2981 = metadata !{i32 1147, i32 13, metadata !2982, null}
!2982 = metadata !{i32 786443, metadata !84, metadata !2978, i32 1147, i32 13, i32 0, i32 357} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2983 = metadata !{i32 1147, i32 21, metadata !2984, null}
!2984 = metadata !{i32 786443, metadata !84, metadata !2982, i32 1147, i32 21, i32 1, i32 994} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2985 = metadata !{i32 1149, i32 13, metadata !2986, null}
!2986 = metadata !{i32 786443, metadata !84, metadata !2978, i32 1149, i32 13, i32 0, i32 358} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2987 = metadata !{i32 1150, i32 11, metadata !2988, null}
!2988 = metadata !{i32 786443, metadata !84, metadata !2989, i32 1150, i32 11, i32 0, i32 360} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2989 = metadata !{i32 786443, metadata !84, metadata !2986, i32 1149, i32 47, i32 0, i32 359} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2990 = metadata !{i32 1151, i32 9, metadata !2989, null}
!2991 = metadata !{i32 786688, metadata !2992, metadata !"nci", metadata !85, i32 1154, metadata !252, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nci] [line 1154]
!2992 = metadata !{i32 786443, metadata !84, metadata !2986, i32 1152, i32 14, i32 0, i32 362} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!2993 = metadata !{i32 1154, i32 21, metadata !2992, null}
!2994 = metadata !{i32 1154, i32 11, metadata !2992, null}
!2995 = metadata !{i32 786688, metadata !2992, metadata !"oci", metadata !85, i32 1155, metadata !252, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [oci] [line 1155]
!2996 = metadata !{i32 1155, i32 21, metadata !2992, null}
!2997 = metadata !{i32 1155, i32 11, metadata !2992, null}
!2998 = metadata !{i32 786688, metadata !2992, metadata !"nfunc", metadata !85, i32 1156, metadata !131, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nfunc] [line 1156]
!2999 = metadata !{i32 1156, i32 17, metadata !2992, null}
!3000 = metadata !{i32 1156, i32 11, metadata !2992, null}
!3001 = metadata !{i32 786688, metadata !2992, metadata !"ofunc", metadata !85, i32 1157, metadata !131, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ofunc] [line 1157]
!3002 = metadata !{i32 1157, i32 17, metadata !2992, null}
!3003 = metadata !{i32 1157, i32 11, metadata !2992, null}
!3004 = metadata !{i32 786688, metadata !2992, metadata !"lim", metadata !85, i32 1159, metadata !131, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lim] [line 1159]
!3005 = metadata !{i32 1159, i32 17, metadata !2992, null}
!3006 = metadata !{i32 1159, i32 11, metadata !2992, null}
!3007 = metadata !{i32 786688, metadata !2992, metadata !"aux", metadata !85, i32 1160, metadata !88, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [aux] [line 1160]
!3008 = metadata !{i32 1160, i32 15, metadata !2992, null}
!3009 = metadata !{i32 1162, i32 15, metadata !3010, null}
!3010 = metadata !{i32 786443, metadata !84, metadata !2992, i32 1162, i32 15, i32 0, i32 363} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!3011 = metadata !{i32 1162, i32 33, metadata !3012, null}
!3012 = metadata !{i32 786443, metadata !84, metadata !3010, i32 1162, i32 33, i32 1, i32 995} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!3013 = metadata !{i32 1164, i32 16, metadata !3014, null}
!3014 = metadata !{i32 786443, metadata !84, metadata !2992, i32 1164, i32 11, i32 0, i32 364} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!3015 = metadata !{i32 1164, i32 16, metadata !3016, null}
!3016 = metadata !{i32 786443, metadata !84, metadata !3017, i32 1164, i32 16, i32 2, i32 997} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!3017 = metadata !{i32 786443, metadata !84, metadata !3014, i32 1164, i32 16, i32 1, i32 996} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!3018 = metadata !{i32 786688, metadata !3019, metadata !"io1", metadata !85, i32 1165, metadata !132, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [io1] [line 1165]
!3019 = metadata !{i32 786443, metadata !84, metadata !3014, i32 1165, i32 13, i32 0, i32 365} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!3020 = metadata !{i32 1165, i32 13, metadata !3019, null}
!3021 = metadata !{i32 1164, i32 44, metadata !3014, null}
!3022 = metadata !{i32 1166, i32 11, metadata !2992, null}
!3023 = metadata !{i32 1167, i32 11, metadata !2992, null}
!3024 = metadata !{i32 1168, i32 11, metadata !2992, null}
!3025 = metadata !{i32 1169, i32 11, metadata !2992, null}
!3026 = metadata !{i32 1170, i32 11, metadata !2992, null}
!3027 = metadata !{i32 1172, i32 11, metadata !2992, null}
!3028 = metadata !{i32 1174, i32 9, metadata !2978, null}
!3029 = metadata !{i32 786688, metadata !3030, metadata !"b", metadata !85, i32 1177, metadata !88, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b] [line 1177]
!3030 = metadata !{i32 786443, metadata !84, metadata !1638, i32 1176, i32 25, i32 0, i32 366} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!3031 = metadata !{i32 1177, i32 13, metadata !3030, null}
!3032 = metadata !{i32 1177, i32 9, metadata !3030, null}
!3033 = metadata !{i32 1178, i32 13, metadata !3034, null}
!3034 = metadata !{i32 786443, metadata !84, metadata !3030, i32 1178, i32 13, i32 0, i32 367} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!3035 = metadata !{i32 1178, i32 31, metadata !3036, null}
!3036 = metadata !{i32 786443, metadata !84, metadata !3034, i32 1178, i32 31, i32 1, i32 998} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!3037 = metadata !{i32 1179, i32 13, metadata !3030, null}
!3038 = metadata !{i32 1179, i32 13, metadata !3039, null}
!3039 = metadata !{i32 786443, metadata !84, metadata !3030, i32 1179, i32 13, i32 1, i32 999} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!3040 = metadata !{i32 1179, i32 13, metadata !3041, null}
!3041 = metadata !{i32 786443, metadata !84, metadata !3030, i32 1179, i32 13, i32 2, i32 1000} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!3042 = metadata !{i32 1179, i32 13, metadata !3043, null}
!3043 = metadata !{i32 786443, metadata !84, metadata !3044, i32 1179, i32 13, i32 4, i32 1002} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!3044 = metadata !{i32 786443, metadata !84, metadata !3030, i32 1179, i32 13, i32 3, i32 1001} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!3045 = metadata !{i32 1180, i32 13, metadata !3046, null}
!3046 = metadata !{i32 786443, metadata !84, metadata !3030, i32 1180, i32 13, i32 0, i32 368} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!3047 = metadata !{i32 1319, i32 1, metadata !392, null}
!3048 = metadata !{i32 1183, i32 11, metadata !3049, null}
!3049 = metadata !{i32 786443, metadata !84, metadata !3046, i32 1182, i32 14, i32 0, i32 369} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!3050 = metadata !{i32 1184, i32 15, metadata !3051, null}
!3051 = metadata !{i32 786443, metadata !84, metadata !3049, i32 1184, i32 15, i32 0, i32 370} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!3052 = metadata !{i32 1184, i32 18, metadata !3053, null}
!3053 = metadata !{i32 786443, metadata !84, metadata !3051, i32 1184, i32 18, i32 1, i32 1003} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!3054 = metadata !{i32 1187, i32 11, metadata !3049, null}
!3055 = metadata !{i32 1191, i32 13, metadata !3056, null}
!3056 = metadata !{i32 786443, metadata !84, metadata !3057, i32 1191, i32 13, i32 0, i32 372} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!3057 = metadata !{i32 786443, metadata !84, metadata !1638, i32 1190, i32 26, i32 0, i32 371} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!3058 = metadata !{i32 786688, metadata !3059, metadata !"step", metadata !85, i32 1192, metadata !358, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [step] [line 1192]
!3059 = metadata !{i32 786443, metadata !84, metadata !3056, i32 1191, i32 30, i32 0, i32 373} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!3060 = metadata !{i32 1192, i32 23, metadata !3059, null}
!3061 = metadata !{i32 1192, i32 11, metadata !3059, null}
!3062 = metadata !{i32 786688, metadata !3059, metadata !"idx", metadata !85, i32 1193, metadata !358, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [idx] [line 1193]
!3063 = metadata !{i32 1193, i32 23, metadata !3059, null}
!3064 = metadata !{i32 1193, i32 11, metadata !3059, null}
!3065 = metadata !{i32 786688, metadata !3059, metadata !"limit", metadata !85, i32 1194, metadata !358, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [limit] [line 1194]
!3066 = metadata !{i32 1194, i32 23, metadata !3059, null}
!3067 = metadata !{i32 1194, i32 11, metadata !3059, null}
!3068 = metadata !{i32 1195, i32 15, metadata !3069, null}
!3069 = metadata !{i32 786443, metadata !84, metadata !3059, i32 1195, i32 15, i32 0, i32 374} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!3070 = metadata !{i32 1195, i32 15, metadata !3071, null}
!3071 = metadata !{i32 786443, metadata !84, metadata !3069, i32 1195, i32 15, i32 1, i32 1004} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!3072 = metadata !{i32 1195, i32 15, metadata !3073, null}
!3073 = metadata !{i32 786443, metadata !84, metadata !3069, i32 1195, i32 15, i32 2, i32 1005} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!3074 = metadata !{i32 1196, i32 13, metadata !3075, null}
!3075 = metadata !{i32 786443, metadata !84, metadata !3069, i32 1195, i32 61, i32 0, i32 375} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!3076 = metadata !{i32 786688, metadata !3077, metadata !"io", metadata !85, i32 1197, metadata !132, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [io] [line 1197]
!3077 = metadata !{i32 786443, metadata !84, metadata !3075, i32 1197, i32 13, i32 0, i32 376} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!3078 = metadata !{i32 1197, i32 13, metadata !3077, null}
!3079 = metadata !{i32 786688, metadata !3080, metadata !"io", metadata !85, i32 1198, metadata !132, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [io] [line 1198]
!3080 = metadata !{i32 786443, metadata !84, metadata !3075, i32 1198, i32 13, i32 0, i32 377} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!3081 = metadata !{i32 1198, i32 13, metadata !3080, null}
!3082 = metadata !{i32 1199, i32 11, metadata !3075, null}
!3083 = metadata !{i32 1200, i32 9, metadata !3059, null}
!3084 = metadata !{i32 786688, metadata !3085, metadata !"step", metadata !85, i32 1202, metadata !205, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [step] [line 1202]
!3085 = metadata !{i32 786443, metadata !84, metadata !3056, i32 1201, i32 14, i32 0, i32 378} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!3086 = metadata !{i32 1202, i32 22, metadata !3085, null}
!3087 = metadata !{i32 1202, i32 11, metadata !3085, null}
!3088 = metadata !{i32 786688, metadata !3085, metadata !"idx", metadata !85, i32 1203, metadata !205, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [idx] [line 1203]
!3089 = metadata !{i32 1203, i32 22, metadata !3085, null}
!3090 = metadata !{i32 1203, i32 11, metadata !3085, null}
!3091 = metadata !{i32 786688, metadata !3085, metadata !"limit", metadata !85, i32 1204, metadata !205, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [limit] [line 1204]
!3092 = metadata !{i32 1204, i32 22, metadata !3085, null}
!3093 = metadata !{i32 1204, i32 11, metadata !3085, null}
!3094 = metadata !{i32 1205, i32 15, metadata !3095, null}
!3095 = metadata !{i32 786443, metadata !84, metadata !3085, i32 1205, i32 15, i32 0, i32 379} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!3096 = metadata !{i32 1205, i32 15, metadata !3097, null}
!3097 = metadata !{i32 786443, metadata !84, metadata !3095, i32 1205, i32 15, i32 1, i32 1006} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!3098 = metadata !{i32 1205, i32 15, metadata !3099, null}
!3099 = metadata !{i32 786443, metadata !84, metadata !3095, i32 1205, i32 15, i32 2, i32 1007} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!3100 = metadata !{i32 1207, i32 13, metadata !3101, null}
!3101 = metadata !{i32 786443, metadata !84, metadata !3095, i32 1206, i32 61, i32 0, i32 380} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!3102 = metadata !{i32 786688, metadata !3103, metadata !"io", metadata !85, i32 1208, metadata !132, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [io] [line 1208]
!3103 = metadata !{i32 786443, metadata !84, metadata !3101, i32 1208, i32 13, i32 0, i32 381} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!3104 = metadata !{i32 1208, i32 13, metadata !3103, null}
!3105 = metadata !{i32 786688, metadata !3106, metadata !"io", metadata !85, i32 1209, metadata !132, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [io] [line 1209]
!3106 = metadata !{i32 786443, metadata !84, metadata !3101, i32 1209, i32 13, i32 0, i32 382} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!3107 = metadata !{i32 1209, i32 13, metadata !3106, null}
!3108 = metadata !{i32 1210, i32 11, metadata !3101, null}
!3109 = metadata !{i32 1212, i32 9, metadata !3057, null}
!3110 = metadata !{i32 786688, metadata !3111, metadata !"init", metadata !85, i32 1215, metadata !132, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [init] [line 1215]
!3111 = metadata !{i32 786443, metadata !84, metadata !1638, i32 1214, i32 26, i32 0, i32 383} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!3112 = metadata !{i32 1215, i32 17, metadata !3111, null}
!3113 = metadata !{i32 1215, i32 9, metadata !3111, null}
!3114 = metadata !{i32 786688, metadata !3111, metadata !"plimit", metadata !85, i32 1216, metadata !132, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [plimit] [line 1216]
!3115 = metadata !{i32 1216, i32 17, metadata !3111, null}
!3116 = metadata !{i32 1216, i32 9, metadata !3111, null}
!3117 = metadata !{i32 786688, metadata !3111, metadata !"pstep", metadata !85, i32 1217, metadata !132, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pstep] [line 1217]
!3118 = metadata !{i32 1217, i32 17, metadata !3111, null}
!3119 = metadata !{i32 1217, i32 9, metadata !3111, null}
!3120 = metadata !{i32 786688, metadata !3111, metadata !"ilimit", metadata !85, i32 1218, metadata !358, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ilimit] [line 1218]
!3121 = metadata !{i32 1218, i32 21, metadata !3111, null}
!3122 = metadata !{i32 786688, metadata !3111, metadata !"stopnow", metadata !85, i32 1219, metadata !88, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [stopnow] [line 1219]
!3123 = metadata !{i32 1219, i32 13, metadata !3111, null}
!3124 = metadata !{i32 1220, i32 13, metadata !3125, null}
!3125 = metadata !{i32 786443, metadata !84, metadata !3111, i32 1220, i32 13, i32 0, i32 384} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!3126 = metadata !{i32 1220, i32 13, metadata !3127, null}
!3127 = metadata !{i32 786443, metadata !84, metadata !3125, i32 1220, i32 13, i32 1, i32 1008} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!3128 = metadata !{i32 1221, i32 13, metadata !3125, null}
!3129 = metadata !{i32 786688, metadata !3130, metadata !"initv", metadata !85, i32 1223, metadata !358, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [initv] [line 1223]
!3130 = metadata !{i32 786443, metadata !84, metadata !3125, i32 1221, i32 65, i32 0, i32 385} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!3131 = metadata !{i32 1223, i32 23, metadata !3130, null}
!3132 = metadata !{i32 1223, i32 11, metadata !3130, null}
!3133 = metadata !{i32 1223, i32 11, metadata !3134, null}
!3134 = metadata !{i32 786443, metadata !84, metadata !3130, i32 1223, i32 11, i32 1, i32 1009} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!3135 = metadata !{i32 1223, i32 11, metadata !3136, null}
!3136 = metadata !{i32 786443, metadata !84, metadata !3130, i32 1223, i32 11, i32 2, i32 1010} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!3137 = metadata !{i32 1223, i32 11, metadata !3138, null}
!3138 = metadata !{i32 786443, metadata !84, metadata !3139, i32 1223, i32 11, i32 4, i32 1012} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!3139 = metadata !{i32 786443, metadata !84, metadata !3130, i32 1223, i32 11, i32 3, i32 1011} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!3140 = metadata !{i32 786688, metadata !3141, metadata !"io", metadata !85, i32 1224, metadata !132, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [io] [line 1224]
!3141 = metadata !{i32 786443, metadata !84, metadata !3130, i32 1224, i32 11, i32 0, i32 386} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!3142 = metadata !{i32 1224, i32 11, metadata !3141, null}
!3143 = metadata !{i32 786688, metadata !3144, metadata !"io", metadata !85, i32 1225, metadata !132, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [io] [line 1225]
!3144 = metadata !{i32 786443, metadata !84, metadata !3130, i32 1225, i32 11, i32 0, i32 387} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!3145 = metadata !{i32 1225, i32 11, metadata !3144, null}
!3146 = metadata !{i32 1226, i32 9, metadata !3130, null}
!3147 = metadata !{i32 786688, metadata !3148, metadata !"ninit", metadata !85, i32 1228, metadata !205, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ninit] [line 1228]
!3148 = metadata !{i32 786443, metadata !84, metadata !3125, i32 1227, i32 14, i32 0, i32 388} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!3149 = metadata !{i32 1228, i32 22, metadata !3148, null}
!3150 = metadata !{i32 786688, metadata !3148, metadata !"nlimit", metadata !85, i32 1228, metadata !205, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nlimit] [line 1228]
!3151 = metadata !{i32 1228, i32 40, metadata !3148, null}
!3152 = metadata !{i32 786688, metadata !3148, metadata !"nstep", metadata !85, i32 1228, metadata !205, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nstep] [line 1228]
!3153 = metadata !{i32 1228, i32 59, metadata !3148, null}
!3154 = metadata !{i32 1229, i32 15, metadata !3155, null}
!3155 = metadata !{i32 786443, metadata !84, metadata !3148, i32 1229, i32 15, i32 0, i32 389} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!3156 = metadata !{i32 1229, i32 15, metadata !3157, null}
!3157 = metadata !{i32 786443, metadata !84, metadata !3155, i32 1229, i32 15, i32 1, i32 1013} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!3158 = metadata !{i32 1229, i32 16, metadata !3159, null}
!3159 = metadata !{i32 786443, metadata !84, metadata !3155, i32 1229, i32 16, i32 2, i32 1014} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!3160 = metadata !{i32 1230, i32 13, metadata !3155, null}
!3161 = metadata !{i32 786688, metadata !3162, metadata !"io", metadata !85, i32 1231, metadata !132, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [io] [line 1231]
!3162 = metadata !{i32 786443, metadata !84, metadata !3148, i32 1231, i32 11, i32 0, i32 390} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!3163 = metadata !{i32 1231, i32 11, metadata !3162, null}
!3164 = metadata !{i32 1232, i32 15, metadata !3165, null}
!3165 = metadata !{i32 786443, metadata !84, metadata !3148, i32 1232, i32 15, i32 0, i32 391} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!3166 = metadata !{i32 1232, i32 15, metadata !3167, null}
!3167 = metadata !{i32 786443, metadata !84, metadata !3165, i32 1232, i32 15, i32 1, i32 1015} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!3168 = metadata !{i32 1232, i32 16, metadata !3169, null}
!3169 = metadata !{i32 786443, metadata !84, metadata !3165, i32 1232, i32 16, i32 2, i32 1016} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!3170 = metadata !{i32 1233, i32 13, metadata !3165, null}
!3171 = metadata !{i32 786688, metadata !3172, metadata !"io", metadata !85, i32 1234, metadata !132, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [io] [line 1234]
!3172 = metadata !{i32 786443, metadata !84, metadata !3148, i32 1234, i32 11, i32 0, i32 392} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!3173 = metadata !{i32 1234, i32 11, metadata !3172, null}
!3174 = metadata !{i32 1235, i32 15, metadata !3175, null}
!3175 = metadata !{i32 786443, metadata !84, metadata !3148, i32 1235, i32 15, i32 0, i32 393} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!3176 = metadata !{i32 1235, i32 15, metadata !3177, null}
!3177 = metadata !{i32 786443, metadata !84, metadata !3175, i32 1235, i32 15, i32 1, i32 1017} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!3178 = metadata !{i32 1235, i32 16, metadata !3179, null}
!3179 = metadata !{i32 786443, metadata !84, metadata !3175, i32 1235, i32 16, i32 2, i32 1018} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!3180 = metadata !{i32 1236, i32 13, metadata !3175, null}
!3181 = metadata !{i32 786688, metadata !3182, metadata !"io", metadata !85, i32 1237, metadata !132, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [io] [line 1237]
!3182 = metadata !{i32 786443, metadata !84, metadata !3148, i32 1237, i32 11, i32 0, i32 394} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!3183 = metadata !{i32 1237, i32 11, metadata !3182, null}
!3184 = metadata !{i32 1239, i32 9, metadata !3111, null}
!3185 = metadata !{i32 1240, i32 9, metadata !3111, null}
!3186 = metadata !{i32 786688, metadata !3187, metadata !"cb", metadata !85, i32 1243, metadata !131, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cb] [line 1243]
!3187 = metadata !{i32 786443, metadata !84, metadata !1638, i32 1242, i32 27, i32 0, i32 395} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!3188 = metadata !{i32 1243, i32 15, metadata !3187, null}
!3189 = metadata !{i32 1243, i32 9, metadata !3187, null}
!3190 = metadata !{i32 786688, metadata !3191, metadata !"io1", metadata !85, i32 1244, metadata !132, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [io1] [line 1244]
!3191 = metadata !{i32 786443, metadata !84, metadata !3187, i32 1244, i32 9, i32 0, i32 396} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!3192 = metadata !{i32 1244, i32 9, metadata !3191, null}
!3193 = metadata !{i32 786688, metadata !3194, metadata !"io1", metadata !85, i32 1245, metadata !132, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [io1] [line 1245]
!3194 = metadata !{i32 786443, metadata !84, metadata !3187, i32 1245, i32 9, i32 0, i32 397} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!3195 = metadata !{i32 1245, i32 9, metadata !3194, null}
!3196 = metadata !{i32 786688, metadata !3197, metadata !"io1", metadata !85, i32 1246, metadata !132, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [io1] [line 1246]
!3197 = metadata !{i32 786443, metadata !84, metadata !3187, i32 1246, i32 9, i32 0, i32 398} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!3198 = metadata !{i32 1246, i32 9, metadata !3197, null}
!3199 = metadata !{i32 1247, i32 9, metadata !3187, null}
!3200 = metadata !{i32 1248, i32 9, metadata !3201, null}
!3201 = metadata !{i32 786443, metadata !84, metadata !3202, i32 1248, i32 9, i32 0, i32 400} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!3202 = metadata !{i32 786443, metadata !84, metadata !3187, i32 1248, i32 9, i32 0, i32 399} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!3203 = metadata !{i32 1248, i32 9, metadata !3202, null}
!3204 = metadata !{i32 1249, i32 9, metadata !3187, null}
!3205 = metadata !{i32 1250, i32 9, metadata !3187, null}
!3206 = metadata !{i32 1251, i32 9, metadata !3187, null}
!3207 = metadata !{i32 1253, i32 9, metadata !3187, null}
!3208 = metadata !{i32 1255, i32 27, metadata !3209, null}
!3209 = metadata !{i32 786443, metadata !84, metadata !1638, i32 1255, i32 27, i32 0, i32 401} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!3210 = metadata !{i32 1257, i32 13, metadata !3211, null}
!3211 = metadata !{i32 786443, metadata !84, metadata !3209, i32 1257, i32 13, i32 0, i32 402} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!3212 = metadata !{i32 786688, metadata !3213, metadata !"io1", metadata !85, i32 1258, metadata !132, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [io1] [line 1258]
!3213 = metadata !{i32 786443, metadata !84, metadata !3214, i32 1258, i32 11, i32 0, i32 404} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!3214 = metadata !{i32 786443, metadata !84, metadata !3211, i32 1257, i32 31, i32 0, i32 403} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!3215 = metadata !{i32 1258, i32 11, metadata !3213, null}
!3216 = metadata !{i32 1259, i32 12, metadata !3214, null}
!3217 = metadata !{i32 1260, i32 9, metadata !3214, null}
!3218 = metadata !{i32 1261, i32 9, metadata !3209, null}
!3219 = metadata !{i32 786688, metadata !3220, metadata !"n", metadata !85, i32 1264, metadata !88, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 1264]
!3220 = metadata !{i32 786443, metadata !84, metadata !1638, i32 1263, i32 26, i32 0, i32 405} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!3221 = metadata !{i32 1264, i32 13, metadata !3220, null}
!3222 = metadata !{i32 1264, i32 9, metadata !3220, null}
!3223 = metadata !{i32 786688, metadata !3220, metadata !"c", metadata !85, i32 1265, metadata !88, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c] [line 1265]
!3224 = metadata !{i32 1265, i32 13, metadata !3220, null}
!3225 = metadata !{i32 1265, i32 9, metadata !3220, null}
!3226 = metadata !{i32 786688, metadata !3220, metadata !"last", metadata !85, i32 1266, metadata !145, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [last] [line 1266]
!3227 = metadata !{i32 1266, i32 22, metadata !3220, null}
!3228 = metadata !{i32 786688, metadata !3220, metadata !"h", metadata !85, i32 1267, metadata !853, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [h] [line 1267]
!3229 = metadata !{i32 1267, i32 16, metadata !3220, null}
!3230 = metadata !{i32 1268, i32 13, metadata !3231, null}
!3231 = metadata !{i32 786443, metadata !84, metadata !3220, i32 1268, i32 13, i32 0, i32 406} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!3232 = metadata !{i32 1268, i32 21, metadata !3233, null}
!3233 = metadata !{i32 786443, metadata !84, metadata !3231, i32 1268, i32 21, i32 1, i32 1019} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!3234 = metadata !{i32 1269, i32 13, metadata !3235, null}
!3235 = metadata !{i32 786443, metadata !84, metadata !3220, i32 1269, i32 13, i32 0, i32 407} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!3236 = metadata !{i32 1271, i32 11, metadata !3237, null}
!3237 = metadata !{i32 786443, metadata !84, metadata !3235, i32 1269, i32 21, i32 0, i32 408} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!3238 = metadata !{i32 1272, i32 9, metadata !3237, null}
!3239 = metadata !{i32 1273, i32 9, metadata !3220, null}
!3240 = metadata !{i32 1274, i32 9, metadata !3220, null}
!3241 = metadata !{i32 1275, i32 13, metadata !3242, null}
!3242 = metadata !{i32 786443, metadata !84, metadata !3220, i32 1275, i32 13, i32 0, i32 409} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!3243 = metadata !{i32 1276, i32 11, metadata !3242, null}
!3244 = metadata !{i32 1277, i32 9, metadata !3245, null}
!3245 = metadata !{i32 786443, metadata !84, metadata !3220, i32 1277, i32 9, i32 0, i32 410} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!3246 = metadata !{i32 1277, i32 9, metadata !3247, null}
!3247 = metadata !{i32 786443, metadata !84, metadata !3248, i32 1277, i32 9, i32 2, i32 1027} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!3248 = metadata !{i32 786443, metadata !84, metadata !3245, i32 1277, i32 9, i32 1, i32 1020} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!3249 = metadata !{i32 786688, metadata !3250, metadata !"val", metadata !85, i32 1278, metadata !132, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [val] [line 1278]
!3250 = metadata !{i32 786443, metadata !84, metadata !3245, i32 1277, i32 28, i32 0, i32 411} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!3251 = metadata !{i32 1278, i32 19, metadata !3250, null}
!3252 = metadata !{i32 1278, i32 11, metadata !3250, null}
!3253 = metadata !{i32 1279, i32 11, metadata !3250, null}
!3254 = metadata !{i32 1280, i32 11, metadata !3250, null}
!3255 = metadata !{i32 1280, i32 11, metadata !3256, null}
!3256 = metadata !{i32 786443, metadata !84, metadata !3250, i32 1280, i32 11, i32 1, i32 1021} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!3257 = metadata !{i32 1280, i32 11, metadata !3258, null}
!3258 = metadata !{i32 786443, metadata !84, metadata !3250, i32 1280, i32 11, i32 3, i32 1023} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!3259 = metadata !{i32 1280, i32 11, metadata !3260, null}
!3260 = metadata !{i32 786443, metadata !84, metadata !3250, i32 1280, i32 11, i32 5, i32 1025} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!3261 = metadata !{i32 1280, i32 11, metadata !3262, null}
!3262 = metadata !{i32 786443, metadata !84, metadata !3263, i32 1280, i32 11, i32 6, i32 1026} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!3263 = metadata !{i32 786443, metadata !84, metadata !3264, i32 1280, i32 11, i32 4, i32 1024} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!3264 = metadata !{i32 786443, metadata !84, metadata !3250, i32 1280, i32 11, i32 2, i32 1022} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!3265 = metadata !{i32 1281, i32 9, metadata !3250, null}
!3266 = metadata !{i32 1277, i32 23, metadata !3245, null}
!3267 = metadata !{i32 1282, i32 9, metadata !3220, null}
!3268 = metadata !{i32 1283, i32 9, metadata !3220, null}
!3269 = metadata !{i32 786688, metadata !3270, metadata !"p", metadata !85, i32 1286, metadata !396, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 1286]
!3270 = metadata !{i32 786443, metadata !84, metadata !1638, i32 1285, i32 26, i32 0, i32 412} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!3271 = metadata !{i32 1286, i32 16, metadata !3270, null}
!3272 = metadata !{i32 1286, i32 9, metadata !3270, null}
!3273 = metadata !{i32 786688, metadata !3270, metadata !"ncl", metadata !85, i32 1287, metadata !458, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ncl] [line 1287]
!3274 = metadata !{i32 1287, i32 19, metadata !3270, null}
!3275 = metadata !{i32 1287, i32 25, metadata !3270, null}
!3276 = metadata !{i32 1288, i32 13, metadata !3277, null}
!3277 = metadata !{i32 786443, metadata !84, metadata !3270, i32 1288, i32 13, i32 0, i32 413} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!3278 = metadata !{i32 1289, i32 11, metadata !3277, null}
!3279 = metadata !{i32 786688, metadata !3280, metadata !"io", metadata !85, i32 1291, metadata !132, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [io] [line 1291]
!3280 = metadata !{i32 786443, metadata !84, metadata !3277, i32 1291, i32 11, i32 0, i32 414} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!3281 = metadata !{i32 1291, i32 11, metadata !3280, null}
!3282 = metadata !{i32 786688, metadata !3280, metadata !"x_", metadata !85, i32 1291, metadata !458, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x_] [line 1291]
!3283 = metadata !{i32 1292, i32 9, metadata !3284, null}
!3284 = metadata !{i32 786443, metadata !84, metadata !3285, i32 1292, i32 9, i32 0, i32 417} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!3285 = metadata !{i32 786443, metadata !84, metadata !3286, i32 1292, i32 9, i32 0, i32 416} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!3286 = metadata !{i32 786443, metadata !84, metadata !3270, i32 1292, i32 9, i32 0, i32 415} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!3287 = metadata !{i32 1292, i32 9, metadata !3288, null}
!3288 = metadata !{i32 786443, metadata !84, metadata !3289, i32 1292, i32 9, i32 1, i32 1028} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!3289 = metadata !{i32 786443, metadata !84, metadata !3284, i32 1292, i32 9, i32 0, i32 418} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!3290 = metadata !{i32 1292, i32 9, metadata !3291, null}
!3291 = metadata !{i32 786443, metadata !84, metadata !3292, i32 1292, i32 9, i32 0, i32 420} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!3292 = metadata !{i32 786443, metadata !84, metadata !3289, i32 1292, i32 9, i32 0, i32 419} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!3293 = metadata !{i32 1292, i32 9, metadata !3292, null}
!3294 = metadata !{i32 1292, i32 9, metadata !3289, null}
!3295 = metadata !{i32 1293, i32 9, metadata !3270, null}
!3296 = metadata !{i32 786688, metadata !3297, metadata !"b", metadata !85, i32 1296, metadata !88, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b] [line 1296]
!3297 = metadata !{i32 786443, metadata !84, metadata !1638, i32 1295, i32 25, i32 0, i32 422} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!3298 = metadata !{i32 1296, i32 13, metadata !3297, null}
!3299 = metadata !{i32 1296, i32 9, metadata !3297, null}
!3300 = metadata !{i32 786688, metadata !3297, metadata !"j", metadata !85, i32 1297, metadata !88, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 1297]
!3301 = metadata !{i32 1297, i32 13, metadata !3297, null}
!3302 = metadata !{i32 786688, metadata !3297, metadata !"n", metadata !85, i32 1298, metadata !88, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 1298]
!3303 = metadata !{i32 1298, i32 13, metadata !3297, null}
!3304 = metadata !{i32 1298, i32 9, metadata !3297, null}
!3305 = metadata !{i32 1299, i32 13, metadata !3306, null}
!3306 = metadata !{i32 786443, metadata !84, metadata !3297, i32 1299, i32 13, i32 0, i32 423} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!3307 = metadata !{i32 1300, i32 11, metadata !3306, null}
!3308 = metadata !{i32 1301, i32 13, metadata !3309, null}
!3309 = metadata !{i32 786443, metadata !84, metadata !3297, i32 1301, i32 13, i32 0, i32 424} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!3310 = metadata !{i32 1302, i32 11, metadata !3311, null}
!3311 = metadata !{i32 786443, metadata !84, metadata !3309, i32 1301, i32 20, i32 0, i32 425} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!3312 = metadata !{i32 1303, i32 11, metadata !3313, null}
!3313 = metadata !{i32 786443, metadata !84, metadata !3314, i32 1303, i32 11, i32 0, i32 428} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!3314 = metadata !{i32 786443, metadata !84, metadata !3315, i32 1303, i32 11, i32 0, i32 427} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!3315 = metadata !{i32 786443, metadata !84, metadata !3311, i32 1303, i32 11, i32 0, i32 426} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!3316 = metadata !{i32 1303, i32 11, metadata !3317, null}
!3317 = metadata !{i32 786443, metadata !84, metadata !3318, i32 1303, i32 11, i32 1, i32 1029} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!3318 = metadata !{i32 786443, metadata !84, metadata !3313, i32 1303, i32 11, i32 0, i32 429} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!3319 = metadata !{i32 1303, i32 11, metadata !3320, null}
!3320 = metadata !{i32 786443, metadata !84, metadata !3315, i32 1303, i32 11, i32 2, i32 1030} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!3321 = metadata !{i32 1304, i32 11, metadata !3311, null}
!3322 = metadata !{i32 1305, i32 11, metadata !3311, null}
!3323 = metadata !{i32 1306, i32 9, metadata !3311, null}
!3324 = metadata !{i32 1307, i32 14, metadata !3325, null}
!3325 = metadata !{i32 786443, metadata !84, metadata !3297, i32 1307, i32 9, i32 0, i32 431} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!3326 = metadata !{i32 1307, i32 14, metadata !3327, null}
!3327 = metadata !{i32 786443, metadata !84, metadata !3328, i32 1307, i32 14, i32 4, i32 1034} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!3328 = metadata !{i32 786443, metadata !84, metadata !3325, i32 1307, i32 14, i32 1, i32 1031} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!3329 = metadata !{i32 1307, i32 14, metadata !3330, null}
!3330 = metadata !{i32 786443, metadata !84, metadata !3325, i32 1307, i32 14, i32 2, i32 1032} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!3331 = metadata !{i32 1307, i32 14, metadata !3332, null}
!3332 = metadata !{i32 786443, metadata !84, metadata !3325, i32 1307, i32 14, i32 3, i32 1033} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!3333 = metadata !{i32 786688, metadata !3334, metadata !"io1", metadata !85, i32 1308, metadata !132, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [io1] [line 1308]
!3334 = metadata !{i32 786443, metadata !84, metadata !3325, i32 1308, i32 11, i32 0, i32 432} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!3335 = metadata !{i32 1308, i32 11, metadata !3334, null}
!3336 = metadata !{i32 1307, i32 37, metadata !3325, null}
!3337 = metadata !{i32 1309, i32 9, metadata !3338, null}
!3338 = metadata !{i32 786443, metadata !84, metadata !3297, i32 1309, i32 9, i32 0, i32 433} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!3339 = metadata !{i32 1309, i32 9, metadata !3340, null}
!3340 = metadata !{i32 786443, metadata !84, metadata !3341, i32 1309, i32 9, i32 2, i32 1036} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!3341 = metadata !{i32 786443, metadata !84, metadata !3338, i32 1309, i32 9, i32 1, i32 1035} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!3342 = metadata !{i32 1310, i32 11, metadata !3338, null}
!3343 = metadata !{i32 1309, i32 23, metadata !3338, null}
!3344 = metadata !{i32 1311, i32 9, metadata !3297, null}
!3345 = metadata !{i32 1315, i32 9, metadata !3346, null}
!3346 = metadata !{i32 786443, metadata !84, metadata !1638, i32 1313, i32 27, i32 0, i32 434} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!3347 = metadata !{i32 1318, i32 3, metadata !1618, null}
!3348 = metadata !{i32 786689, metadata !460, metadata !"obj", metadata !85, i32 16777351, metadata !89, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [obj] [line 135]
!3349 = metadata !{i32 135, i32 36, metadata !460, null}
!3350 = metadata !{i32 786689, metadata !460, metadata !"p", metadata !85, i32 33554567, metadata !366, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [p] [line 135]
!3351 = metadata !{i32 135, i32 54, metadata !460, null}
!3352 = metadata !{i32 786689, metadata !460, metadata !"step", metadata !85, i32 50331783, metadata !358, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [step] [line 135]
!3353 = metadata !{i32 135, i32 69, metadata !460, null}
!3354 = metadata !{i32 786689, metadata !460, metadata !"stopnow", metadata !85, i32 67109000, metadata !421, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [stopnow] [line 136]
!3355 = metadata !{i32 136, i32 27, metadata !460, null}
!3356 = metadata !{i32 137, i32 3, metadata !460, null}
!3357 = metadata !{i32 138, i32 8, metadata !3358, null}
!3358 = metadata !{i32 786443, metadata !84, metadata !460, i32 138, i32 7, i32 0, i32 445} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!3359 = metadata !{i32 786688, metadata !3360, metadata !"n", metadata !85, i32 139, metadata !205, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 139]
!3360 = metadata !{i32 786443, metadata !84, metadata !3358, i32 138, i32 52, i32 0, i32 446} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!3361 = metadata !{i32 139, i32 16, metadata !3360, null}
!3362 = metadata !{i32 140, i32 9, metadata !3363, null}
!3363 = metadata !{i32 786443, metadata !84, metadata !3360, i32 140, i32 9, i32 0, i32 447} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!3364 = metadata !{i32 140, i32 9, metadata !3365, null}
!3365 = metadata !{i32 786443, metadata !84, metadata !3363, i32 140, i32 9, i32 1, i32 1037} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!3366 = metadata !{i32 140, i32 10, metadata !3367, null}
!3367 = metadata !{i32 786443, metadata !84, metadata !3363, i32 140, i32 10, i32 2, i32 1038} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!3368 = metadata !{i32 141, i32 7, metadata !3363, null}
!3369 = metadata !{i32 142, i32 9, metadata !3370, null}
!3370 = metadata !{i32 786443, metadata !84, metadata !3360, i32 142, i32 9, i32 0, i32 448} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!3371 = metadata !{i32 143, i32 7, metadata !3372, null}
!3372 = metadata !{i32 786443, metadata !84, metadata !3370, i32 142, i32 27, i32 0, i32 449} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!3373 = metadata !{i32 144, i32 11, metadata !3374, null}
!3374 = metadata !{i32 786443, metadata !84, metadata !3372, i32 144, i32 11, i32 0, i32 450} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!3375 = metadata !{i32 144, i32 21, metadata !3376, null}
!3376 = metadata !{i32 786443, metadata !84, metadata !3374, i32 144, i32 21, i32 1, i32 1039} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!3377 = metadata !{i32 145, i32 5, metadata !3372, null}
!3378 = metadata !{i32 147, i32 7, metadata !3379, null}
!3379 = metadata !{i32 786443, metadata !84, metadata !3370, i32 146, i32 10, i32 0, i32 451} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!3380 = metadata !{i32 148, i32 11, metadata !3381, null}
!3381 = metadata !{i32 786443, metadata !84, metadata !3379, i32 148, i32 11, i32 0, i32 452} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!3382 = metadata !{i32 148, i32 22, metadata !3383, null}
!3383 = metadata !{i32 786443, metadata !84, metadata !3381, i32 148, i32 22, i32 1, i32 1040} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!3384 = metadata !{i32 150, i32 3, metadata !3360, null}
!3385 = metadata !{i32 151, i32 3, metadata !460, null}
!3386 = metadata !{i32 152, i32 1, metadata !460, null}
!3387 = metadata !{i32 786689, metadata !455, metadata !"p", metadata !85, i32 16777826, metadata !396, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [p] [line 610]
!3388 = metadata !{i32 610, i32 36, metadata !455, null}
!3389 = metadata !{i32 786689, metadata !455, metadata !"encup", metadata !85, i32 33555042, metadata !454, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [encup] [line 610]
!3390 = metadata !{i32 610, i32 47, metadata !455, null}
!3391 = metadata !{i32 786689, metadata !455, metadata !"base", metadata !85, i32 50332258, metadata !131, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [base] [line 610]
!3392 = metadata !{i32 610, i32 60, metadata !455, null}
!3393 = metadata !{i32 786688, metadata !455, metadata !"c", metadata !85, i32 611, metadata !458, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c] [line 611]
!3394 = metadata !{i32 611, i32 13, metadata !455, null}
!3395 = metadata !{i32 611, i32 3, metadata !455, null}
!3396 = metadata !{i32 612, i32 7, metadata !3397, null}
!3397 = metadata !{i32 786443, metadata !84, metadata !455, i32 612, i32 7, i32 0, i32 440} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!3398 = metadata !{i32 786688, metadata !3399, metadata !"nup", metadata !85, i32 613, metadata !88, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nup] [line 613]
!3399 = metadata !{i32 786443, metadata !84, metadata !3397, i32 612, i32 18, i32 0, i32 441} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!3400 = metadata !{i32 613, i32 9, metadata !3399, null}
!3401 = metadata !{i32 613, i32 5, metadata !3399, null}
!3402 = metadata !{i32 786688, metadata !3399, metadata !"uv", metadata !85, i32 614, metadata !431, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [uv] [line 614]
!3403 = metadata !{i32 614, i32 16, metadata !3399, null}
!3404 = metadata !{i32 614, i32 5, metadata !3399, null}
!3405 = metadata !{i32 786688, metadata !3399, metadata !"i", metadata !85, i32 615, metadata !88, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 615]
!3406 = metadata !{i32 615, i32 9, metadata !3399, null}
!3407 = metadata !{i32 616, i32 10, metadata !3408, null}
!3408 = metadata !{i32 786443, metadata !84, metadata !3399, i32 616, i32 5, i32 0, i32 442} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!3409 = metadata !{i32 616, i32 10, metadata !3410, null}
!3410 = metadata !{i32 786443, metadata !84, metadata !3411, i32 616, i32 10, i32 2, i32 1046} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!3411 = metadata !{i32 786443, metadata !84, metadata !3408, i32 616, i32 10, i32 1, i32 1041} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!3412 = metadata !{i32 786688, metadata !3413, metadata !"v", metadata !85, i32 617, metadata !132, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [v] [line 617]
!3413 = metadata !{i32 786443, metadata !84, metadata !3408, i32 616, i32 31, i32 0, i32 443} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!3414 = metadata !{i32 617, i32 15, metadata !3413, null}
!3415 = metadata !{i32 617, i32 7, metadata !3413, null}
!3416 = metadata !{i32 617, i32 7, metadata !3417, null}
!3417 = metadata !{i32 786443, metadata !84, metadata !3413, i32 617, i32 7, i32 1, i32 1042} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!3418 = metadata !{i32 617, i32 7, metadata !3419, null}
!3419 = metadata !{i32 786443, metadata !84, metadata !3413, i32 617, i32 7, i32 2, i32 1043} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!3420 = metadata !{i32 617, i32 7, metadata !3421, null}
!3421 = metadata !{i32 786443, metadata !84, metadata !3422, i32 617, i32 7, i32 4, i32 1045} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!3422 = metadata !{i32 786443, metadata !84, metadata !3413, i32 617, i32 7, i32 3, i32 1044} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!3423 = metadata !{i32 618, i32 11, metadata !3424, null}
!3424 = metadata !{i32 786443, metadata !84, metadata !3413, i32 618, i32 11, i32 0, i32 444} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!3425 = metadata !{i32 619, i32 9, metadata !3424, null}
!3426 = metadata !{i32 620, i32 5, metadata !3413, null}
!3427 = metadata !{i32 616, i32 26, metadata !3408, null}
!3428 = metadata !{i32 621, i32 3, metadata !3399, null}
!3429 = metadata !{i32 622, i32 3, metadata !455, null}
!3430 = metadata !{i32 623, i32 1, metadata !455, null}
!3431 = metadata !{i32 786689, metadata !393, metadata !"L", metadata !85, i32 16777848, metadata !119, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 632]
!3432 = metadata !{i32 632, i32 37, metadata !393, null}
!3433 = metadata !{i32 786689, metadata !393, metadata !"p", metadata !85, i32 33555064, metadata !396, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [p] [line 632]
!3434 = metadata !{i32 632, i32 47, metadata !393, null}
!3435 = metadata !{i32 786689, metadata !393, metadata !"encup", metadata !85, i32 50332280, metadata !454, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [encup] [line 632]
!3436 = metadata !{i32 632, i32 58, metadata !393, null}
!3437 = metadata !{i32 786689, metadata !393, metadata !"base", metadata !85, i32 67109496, metadata !131, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [base] [line 632]
!3438 = metadata !{i32 632, i32 71, metadata !393, null}
!3439 = metadata !{i32 786689, metadata !393, metadata !"ra", metadata !85, i32 83886713, metadata !131, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ra] [line 633]
!3440 = metadata !{i32 633, i32 32, metadata !393, null}
!3441 = metadata !{i32 786688, metadata !393, metadata !"nup", metadata !85, i32 634, metadata !88, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nup] [line 634]
!3442 = metadata !{i32 634, i32 7, metadata !393, null}
!3443 = metadata !{i32 634, i32 3, metadata !393, null}
!3444 = metadata !{i32 786688, metadata !393, metadata !"uv", metadata !85, i32 635, metadata !431, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [uv] [line 635]
!3445 = metadata !{i32 635, i32 14, metadata !393, null}
!3446 = metadata !{i32 635, i32 3, metadata !393, null}
!3447 = metadata !{i32 786688, metadata !393, metadata !"i", metadata !85, i32 636, metadata !88, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 636]
!3448 = metadata !{i32 636, i32 7, metadata !393, null}
!3449 = metadata !{i32 786688, metadata !393, metadata !"ncl", metadata !85, i32 637, metadata !458, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ncl] [line 637]
!3450 = metadata !{i32 637, i32 13, metadata !393, null}
!3451 = metadata !{i32 637, i32 19, metadata !393, null}
!3452 = metadata !{i32 638, i32 3, metadata !393, null}
!3453 = metadata !{i32 786688, metadata !3454, metadata !"io", metadata !85, i32 639, metadata !132, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [io] [line 639]
!3454 = metadata !{i32 786443, metadata !84, metadata !393, i32 639, i32 3, i32 0, i32 435} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!3455 = metadata !{i32 639, i32 3, metadata !3454, null}
!3456 = metadata !{i32 786688, metadata !3454, metadata !"x_", metadata !85, i32 639, metadata !458, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x_] [line 639]
!3457 = metadata !{i32 640, i32 8, metadata !3458, null}
!3458 = metadata !{i32 786443, metadata !84, metadata !393, i32 640, i32 3, i32 0, i32 436} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!3459 = metadata !{i32 640, i32 8, metadata !3460, null}
!3460 = metadata !{i32 786443, metadata !84, metadata !3461, i32 640, i32 8, i32 2, i32 1048} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!3461 = metadata !{i32 786443, metadata !84, metadata !3458, i32 640, i32 8, i32 1, i32 1047} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!3462 = metadata !{i32 641, i32 9, metadata !3463, null}
!3463 = metadata !{i32 786443, metadata !84, metadata !3464, i32 641, i32 9, i32 0, i32 438} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!3464 = metadata !{i32 786443, metadata !84, metadata !3458, i32 640, i32 29, i32 0, i32 437} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!3465 = metadata !{i32 642, i32 24, metadata !3463, null}
!3466 = metadata !{i32 644, i32 7, metadata !3463, null}
!3467 = metadata !{i32 645, i32 5, metadata !3464, null}
!3468 = metadata !{i32 647, i32 3, metadata !3464, null}
!3469 = metadata !{i32 640, i32 24, metadata !3458, null}
!3470 = metadata !{i32 648, i32 7, metadata !3471, null}
!3471 = metadata !{i32 786443, metadata !84, metadata !393, i32 648, i32 7, i32 0, i32 439} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!3472 = metadata !{i32 649, i32 5, metadata !3471, null}
!3473 = metadata !{i32 650, i32 1, metadata !393, null}
!3474 = metadata !{i32 786689, metadata !473, metadata !"i", metadata !85, i32 16777516, metadata !358, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [i] [line 300]
!3475 = metadata !{i32 300, i32 36, metadata !473, null}
!3476 = metadata !{i32 786689, metadata !473, metadata !"f", metadata !85, i32 33554732, metadata !205, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [f] [line 300]
!3477 = metadata !{i32 300, i32 50, metadata !473, null}
!3478 = metadata !{i32 302, i32 7, metadata !3479, null}
!3479 = metadata !{i32 786443, metadata !84, metadata !473, i32 302, i32 7, i32 0, i32 464} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!3480 = metadata !{i32 302, i32 7, metadata !3481, null}
!3481 = metadata !{i32 786443, metadata !84, metadata !3479, i32 302, i32 7, i32 1, i32 1049} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!3482 = metadata !{i32 303, i32 9, metadata !3483, null}
!3483 = metadata !{i32 786443, metadata !84, metadata !3484, i32 303, i32 9, i32 0, i32 466} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!3484 = metadata !{i32 786443, metadata !84, metadata !3479, i32 302, i32 23, i32 0, i32 465} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!3485 = metadata !{i32 304, i32 7, metadata !3483, null}
!3486 = metadata !{i32 305, i32 14, metadata !3487, null}
!3487 = metadata !{i32 786443, metadata !84, metadata !3483, i32 305, i32 14, i32 0, i32 467} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!3488 = metadata !{i32 306, i32 7, metadata !3487, null}
!3489 = metadata !{i32 308, i32 7, metadata !3487, null}
!3490 = metadata !{i32 311, i32 3, metadata !473, null}
!3491 = metadata !{i32 312, i32 1, metadata !473, null}
!3492 = metadata !{i32 786689, metadata !470, metadata !"i", metadata !85, i32 16777497, metadata !358, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [i] [line 281]
!3493 = metadata !{i32 281, i32 36, metadata !470, null}
!3494 = metadata !{i32 786689, metadata !470, metadata !"f", metadata !85, i32 33554713, metadata !205, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [f] [line 281]
!3495 = metadata !{i32 281, i32 50, metadata !470, null}
!3496 = metadata !{i32 283, i32 7, metadata !3497, null}
!3497 = metadata !{i32 786443, metadata !84, metadata !470, i32 283, i32 7, i32 0, i32 460} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!3498 = metadata !{i32 283, i32 7, metadata !3499, null}
!3499 = metadata !{i32 786443, metadata !84, metadata !3497, i32 283, i32 7, i32 1, i32 1050} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!3500 = metadata !{i32 284, i32 9, metadata !3501, null}
!3501 = metadata !{i32 786443, metadata !84, metadata !3502, i32 284, i32 9, i32 0, i32 462} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!3502 = metadata !{i32 786443, metadata !84, metadata !3497, i32 283, i32 23, i32 0, i32 461} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!3503 = metadata !{i32 285, i32 7, metadata !3501, null}
!3504 = metadata !{i32 286, i32 14, metadata !3505, null}
!3505 = metadata !{i32 786443, metadata !84, metadata !3501, i32 286, i32 14, i32 0, i32 463} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lvm.c]
!3506 = metadata !{i32 287, i32 7, metadata !3505, null}
!3507 = metadata !{i32 289, i32 7, metadata !3505, null}
!3508 = metadata !{i32 292, i32 3, metadata !470, null}
!3509 = metadata !{i32 293, i32 1, metadata !470, null}
