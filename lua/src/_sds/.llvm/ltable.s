; ModuleID = 'C:/Users/DevolutionX/workspace/lua/src/ltable.c'
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-n32-S64"
target triple = "armv7--linux-gnueabihf"

%struct.lua_TValue = type { %union.Value, i32 }
%union.Value = type { i64 }
%struct.GCObject = type { %struct.GCObject*, i8, i8 }
%struct.lua_State = type { %struct.GCObject*, i8, i8, i16, i8, %struct.lua_TValue*, %struct.global_State*, %struct.CallInfo*, i32*, %struct.lua_TValue*, %struct.lua_TValue*, %struct.UpVal*, %struct.GCObject*, %struct.lua_State*, %struct.lua_longjmp*, %struct.CallInfo, void (%struct.lua_State*, %struct.lua_Debug*)*, i32, i32, i32, i32, i16, i16, i32, i8 }
%struct.global_State = type { i8* (i8*, i8*, i32, i32)*, i8*, i32, i32, i32, i32, %struct.stringtable, %struct.lua_TValue, i32, i8, i8, i8, i8, %struct.GCObject*, %struct.GCObject**, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.lua_State*, i32, i32, i32, i32 (%struct.lua_State*)*, %struct.lua_State*, double*, %struct.TString*, [24 x %struct.TString*], [9 x %struct.Table*], [53 x [2 x %struct.TString*]] }
%struct.stringtable = type { %struct.TString**, i32, i32 }
%struct.TString = type { %struct.GCObject*, i8, i8, i8, i8, i32, %union.anon }
%union.anon = type { i32 }
%struct.UpVal = type opaque
%struct.lua_longjmp = type opaque
%struct.CallInfo = type { %struct.lua_TValue*, %struct.lua_TValue*, %struct.CallInfo*, %struct.CallInfo*, %union.anon.0, i32, i16, i8 }
%union.anon.0 = type { %struct.anon.2 }
%struct.anon.2 = type { i32 (%struct.lua_State*, i32, i32)*, i32, i32 }
%struct.lua_Debug = type { i32, i8*, i8*, i8*, i8*, i32, i32, i32, i8, i8, i8, i8, [60 x i8], %struct.CallInfo* }
%struct.Table = type { %struct.GCObject*, i8, i8, i8, i8, i32, %struct.lua_TValue*, %struct.Node*, %struct.Node*, %struct.Table*, %struct.GCObject* }
%struct.Node = type { %struct.lua_TValue, %union.TKey }
%union.TKey = type { %struct.anon }
%struct.anon = type { %union.Value, i32, i32 }
%union.GCUnion = type { %union.Closure, [88 x i8] }
%union.Closure = type { %struct.CClosure }
%struct.CClosure = type { %struct.GCObject*, i8, i8, i8, %struct.GCObject*, i32 (%struct.lua_State*)*, [1 x %struct.lua_TValue] }

@.str = private unnamed_addr constant [19 x i8] c"table index is nil\00", align 1
@.str1 = private unnamed_addr constant [19 x i8] c"table index is NaN\00", align 1
@luaO_nilobject_ = external hidden constant %struct.lua_TValue
@dummynode_ = internal constant { { { %struct.GCObject*, [4 x i8] }, i32, [4 x i8] }, { { { %struct.GCObject*, [4 x i8] }, i32, i32 } } } { { { %struct.GCObject*, [4 x i8] }, i32, [4 x i8] } { { %struct.GCObject*, [4 x i8] } { %struct.GCObject* null, [4 x i8] undef }, i32 0, [4 x i8] undef }, { { { %struct.GCObject*, [4 x i8] }, i32, i32 } } { { { %struct.GCObject*, [4 x i8] }, i32, i32 } { { %struct.GCObject*, [4 x i8] } { %struct.GCObject* null, [4 x i8] undef }, i32 0, i32 0 } } }, align 8
@.str2 = private unnamed_addr constant [15 x i8] c"table overflow\00", align 1
@.str3 = private unnamed_addr constant [22 x i8] c"invalid key to 'next'\00", align 1

; Function Attrs: nounwind
define hidden i32 @luaH_next(%struct.lua_State* %L, %struct.Table* %t, %struct.lua_TValue* %key) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.lua_State*, align 4
  %3 = alloca %struct.Table*, align 4
  %4 = alloca %struct.lua_TValue*, align 4
  %i = alloca i32, align 4
  %io = alloca %struct.lua_TValue*, align 4
  %io1 = alloca %struct.lua_TValue*, align 4
  %io11 = alloca %struct.lua_TValue*, align 4
  %io12 = alloca %struct.lua_TValue*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %2}, metadata !465), !dbg !466
  store %struct.Table* %t, %struct.Table** %3, align 4
  call void @llvm.dbg.declare(metadata !{%struct.Table** %3}, metadata !467), !dbg !468
  store %struct.lua_TValue* %key, %struct.lua_TValue** %4, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %4}, metadata !469), !dbg !470
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !471), !dbg !472
  %5 = load %struct.lua_State** %2, align 4, !dbg !473
  %6 = load %struct.Table** %3, align 4, !dbg !473
  %7 = load %struct.lua_TValue** %4, align 4, !dbg !473
  %8 = call i32 @findindex(%struct.lua_State* %5, %struct.Table* %6, %struct.lua_TValue* %7), !dbg !473
  store i32 %8, i32* %i, align 4, !dbg !473
  br label %9, !dbg !474

; <label>:9                                       ; preds = %46, %0
  %10 = load i32* %i, align 4, !dbg !476
  %11 = load %struct.Table** %3, align 4, !dbg !476
  %12 = getelementptr inbounds %struct.Table* %11, i32 0, i32 5, !dbg !476
  %13 = load i32* %12, align 4, !dbg !476
  %14 = icmp ult i32 %10, %13, !dbg !476
  br i1 %14, label %15, label %49, !dbg !476

; <label>:15                                      ; preds = %9
  %16 = load i32* %i, align 4, !dbg !479
  %17 = load %struct.Table** %3, align 4, !dbg !479
  %18 = getelementptr inbounds %struct.Table* %17, i32 0, i32 6, !dbg !479
  %19 = load %struct.lua_TValue** %18, align 4, !dbg !479
  %20 = getelementptr inbounds %struct.lua_TValue* %19, i32 %16, !dbg !479
  %21 = getelementptr inbounds %struct.lua_TValue* %20, i32 0, i32 1, !dbg !479
  %22 = load i32* %21, align 4, !dbg !479
  %23 = icmp eq i32 %22, 0, !dbg !479
  br i1 %23, label %45, label %24, !dbg !479

; <label>:24                                      ; preds = %15
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %io}, metadata !482), !dbg !485
  %25 = load %struct.lua_TValue** %4, align 4, !dbg !485
  store %struct.lua_TValue* %25, %struct.lua_TValue** %io, align 4, !dbg !485
  %26 = load i32* %i, align 4, !dbg !485
  %27 = add i32 %26, 1, !dbg !485
  %28 = zext i32 %27 to i64, !dbg !485
  %29 = load %struct.lua_TValue** %io, align 4, !dbg !485
  %30 = getelementptr inbounds %struct.lua_TValue* %29, i32 0, i32 0, !dbg !485
  %31 = bitcast %union.Value* %30 to i64*, !dbg !485
  store i64 %28, i64* %31, align 8, !dbg !485
  %32 = load %struct.lua_TValue** %io, align 4, !dbg !485
  %33 = getelementptr inbounds %struct.lua_TValue* %32, i32 0, i32 1, !dbg !485
  store i32 19, i32* %33, align 4, !dbg !485
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %io1}, metadata !486), !dbg !488
  %34 = load %struct.lua_TValue** %4, align 4, !dbg !488
  %35 = getelementptr inbounds %struct.lua_TValue* %34, i32 1, !dbg !488
  store %struct.lua_TValue* %35, %struct.lua_TValue** %io1, align 4, !dbg !488
  %36 = load %struct.lua_TValue** %io1, align 4, !dbg !488
  %37 = load i32* %i, align 4, !dbg !488
  %38 = load %struct.Table** %3, align 4, !dbg !488
  %39 = getelementptr inbounds %struct.Table* %38, i32 0, i32 6, !dbg !488
  %40 = load %struct.lua_TValue** %39, align 4, !dbg !488
  %41 = getelementptr inbounds %struct.lua_TValue* %40, i32 %37, !dbg !488
  %42 = bitcast %struct.lua_TValue* %36 to i8*, !dbg !488
  %43 = bitcast %struct.lua_TValue* %41 to i8*, !dbg !488
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %42, i8* %43, i32 16, i32 8, i1 false), !dbg !488
  %44 = load %struct.lua_State** %2, align 4, !dbg !488
  store i32 1, i32* %1, !dbg !489
  br label %103, !dbg !489

; <label>:45                                      ; preds = %15
  br label %46, !dbg !490

; <label>:46                                      ; preds = %45
  %47 = load i32* %i, align 4, !dbg !491
  %48 = add i32 %47, 1, !dbg !491
  store i32 %48, i32* %i, align 4, !dbg !491
  br label %9, !dbg !491

; <label>:49                                      ; preds = %9
  %50 = load %struct.Table** %3, align 4, !dbg !492
  %51 = getelementptr inbounds %struct.Table* %50, i32 0, i32 5, !dbg !492
  %52 = load i32* %51, align 4, !dbg !492
  %53 = load i32* %i, align 4, !dbg !492
  %54 = sub i32 %53, %52, !dbg !492
  store i32 %54, i32* %i, align 4, !dbg !492
  br label %55, !dbg !492

; <label>:55                                      ; preds = %99, %49
  %56 = load i32* %i, align 4, !dbg !494
  %57 = load %struct.Table** %3, align 4, !dbg !494
  %58 = getelementptr inbounds %struct.Table* %57, i32 0, i32 4, !dbg !494
  %59 = load i8* %58, align 1, !dbg !494
  %60 = zext i8 %59 to i32, !dbg !494
  %61 = shl i32 1, %60, !dbg !494
  %62 = icmp slt i32 %56, %61, !dbg !494
  br i1 %62, label %63, label %102, !dbg !494

; <label>:63                                      ; preds = %55
  %64 = load i32* %i, align 4, !dbg !497
  %65 = load %struct.Table** %3, align 4, !dbg !497
  %66 = getelementptr inbounds %struct.Table* %65, i32 0, i32 7, !dbg !497
  %67 = load %struct.Node** %66, align 4, !dbg !497
  %68 = getelementptr inbounds %struct.Node* %67, i32 %64, !dbg !497
  %69 = getelementptr inbounds %struct.Node* %68, i32 0, i32 0, !dbg !497
  %70 = getelementptr inbounds %struct.lua_TValue* %69, i32 0, i32 1, !dbg !497
  %71 = load i32* %70, align 4, !dbg !497
  %72 = icmp eq i32 %71, 0, !dbg !497
  br i1 %72, label %98, label %73, !dbg !497

; <label>:73                                      ; preds = %63
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %io11}, metadata !500), !dbg !503
  %74 = load %struct.lua_TValue** %4, align 4, !dbg !503
  store %struct.lua_TValue* %74, %struct.lua_TValue** %io11, align 4, !dbg !503
  %75 = load %struct.lua_TValue** %io11, align 4, !dbg !503
  %76 = load i32* %i, align 4, !dbg !503
  %77 = load %struct.Table** %3, align 4, !dbg !503
  %78 = getelementptr inbounds %struct.Table* %77, i32 0, i32 7, !dbg !503
  %79 = load %struct.Node** %78, align 4, !dbg !503
  %80 = getelementptr inbounds %struct.Node* %79, i32 %76, !dbg !503
  %81 = getelementptr inbounds %struct.Node* %80, i32 0, i32 1, !dbg !503
  %82 = bitcast %union.TKey* %81 to %struct.lua_TValue*, !dbg !503
  %83 = bitcast %struct.lua_TValue* %75 to i8*, !dbg !503
  %84 = bitcast %struct.lua_TValue* %82 to i8*, !dbg !503
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %83, i8* %84, i32 16, i32 8, i1 false), !dbg !503
  %85 = load %struct.lua_State** %2, align 4, !dbg !503
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %io12}, metadata !504), !dbg !506
  %86 = load %struct.lua_TValue** %4, align 4, !dbg !506
  %87 = getelementptr inbounds %struct.lua_TValue* %86, i32 1, !dbg !506
  store %struct.lua_TValue* %87, %struct.lua_TValue** %io12, align 4, !dbg !506
  %88 = load %struct.lua_TValue** %io12, align 4, !dbg !506
  %89 = load i32* %i, align 4, !dbg !506
  %90 = load %struct.Table** %3, align 4, !dbg !506
  %91 = getelementptr inbounds %struct.Table* %90, i32 0, i32 7, !dbg !506
  %92 = load %struct.Node** %91, align 4, !dbg !506
  %93 = getelementptr inbounds %struct.Node* %92, i32 %89, !dbg !506
  %94 = getelementptr inbounds %struct.Node* %93, i32 0, i32 0, !dbg !506
  %95 = bitcast %struct.lua_TValue* %88 to i8*, !dbg !506
  %96 = bitcast %struct.lua_TValue* %94 to i8*, !dbg !506
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %95, i8* %96, i32 16, i32 8, i1 false), !dbg !506
  %97 = load %struct.lua_State** %2, align 4, !dbg !506
  store i32 1, i32* %1, !dbg !507
  br label %103, !dbg !507

; <label>:98                                      ; preds = %63
  br label %99, !dbg !508

; <label>:99                                      ; preds = %98
  %100 = load i32* %i, align 4, !dbg !509
  %101 = add i32 %100, 1, !dbg !509
  store i32 %101, i32* %i, align 4, !dbg !509
  br label %55, !dbg !509

; <label>:102                                     ; preds = %55
  store i32 0, i32* %1, !dbg !510
  br label %103, !dbg !510

; <label>:103                                     ; preds = %102, %73, %24
  %104 = load i32* %1, !dbg !511
  ret i32 %104, !dbg !511
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind
define internal i32 @findindex(%struct.lua_State* %L, %struct.Table* %t, %struct.lua_TValue* %key) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.lua_State*, align 4
  %3 = alloca %struct.Table*, align 4
  %4 = alloca %struct.lua_TValue*, align 4
  %i = alloca i32, align 4
  %nx = alloca i32, align 4
  %n = alloca %struct.Node*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %2}, metadata !512), !dbg !513
  store %struct.Table* %t, %struct.Table** %3, align 4
  call void @llvm.dbg.declare(metadata !{%struct.Table** %3}, metadata !514), !dbg !515
  store %struct.lua_TValue* %key, %struct.lua_TValue** %4, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %4}, metadata !516), !dbg !517
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !518), !dbg !519
  %5 = load %struct.lua_TValue** %4, align 4, !dbg !520
  %6 = getelementptr inbounds %struct.lua_TValue* %5, i32 0, i32 1, !dbg !520
  %7 = load i32* %6, align 4, !dbg !520
  %8 = icmp eq i32 %7, 0, !dbg !520
  br i1 %8, label %9, label %10, !dbg !520

; <label>:9                                       ; preds = %0
  store i32 0, i32* %1, !dbg !522
  br label %92, !dbg !522

; <label>:10                                      ; preds = %0
  %11 = load %struct.lua_TValue** %4, align 4, !dbg !524
  %12 = call i32 @arrayindex(%struct.lua_TValue* %11), !dbg !524
  store i32 %12, i32* %i, align 4, !dbg !524
  %13 = load i32* %i, align 4, !dbg !525
  %14 = icmp ne i32 %13, 0, !dbg !525
  br i1 %14, label %15, label %23, !dbg !525

; <label>:15                                      ; preds = %10
  %16 = load i32* %i, align 4, !dbg !527
  %17 = load %struct.Table** %3, align 4, !dbg !527
  %18 = getelementptr inbounds %struct.Table* %17, i32 0, i32 5, !dbg !527
  %19 = load i32* %18, align 4, !dbg !527
  %20 = icmp ule i32 %16, %19, !dbg !527
  br i1 %20, label %21, label %23, !dbg !527

; <label>:21                                      ; preds = %15
  %22 = load i32* %i, align 4, !dbg !529
  store i32 %22, i32* %1, !dbg !529
  br label %92, !dbg !529

; <label>:23                                      ; preds = %15, %10
  call void @llvm.dbg.declare(metadata !{i32* %nx}, metadata !530), !dbg !532
  call void @llvm.dbg.declare(metadata !{%struct.Node** %n}, metadata !533), !dbg !534
  %24 = load %struct.Table** %3, align 4, !dbg !535
  %25 = load %struct.lua_TValue** %4, align 4, !dbg !535
  %26 = call %struct.Node* @mainposition(%struct.Table* %24, %struct.lua_TValue* %25), !dbg !535
  store %struct.Node* %26, %struct.Node** %n, align 4, !dbg !535
  br label %27, !dbg !536

; <label>:27                                      ; preds = %91, %23
  %28 = load %struct.Node** %n, align 4, !dbg !538
  %29 = getelementptr inbounds %struct.Node* %28, i32 0, i32 1, !dbg !538
  %30 = bitcast %union.TKey* %29 to %struct.lua_TValue*, !dbg !538
  %31 = load %struct.lua_TValue** %4, align 4, !dbg !538
  %32 = call i32 @luaV_equalobj(%struct.lua_State* null, %struct.lua_TValue* %30, %struct.lua_TValue* %31), !dbg !538
  %33 = icmp ne i32 %32, 0, !dbg !538
  br i1 %33, label %61, label %34, !dbg !538

; <label>:34                                      ; preds = %27
  %35 = load %struct.Node** %n, align 4, !dbg !541
  %36 = getelementptr inbounds %struct.Node* %35, i32 0, i32 1, !dbg !541
  %37 = bitcast %union.TKey* %36 to %struct.lua_TValue*, !dbg !541
  %38 = getelementptr inbounds %struct.lua_TValue* %37, i32 0, i32 1, !dbg !541
  %39 = load i32* %38, align 4, !dbg !541
  %40 = icmp eq i32 %39, 10, !dbg !541
  br i1 %40, label %41, label %77, !dbg !541

; <label>:41                                      ; preds = %34
  %42 = load %struct.lua_TValue** %4, align 4, !dbg !543
  %43 = getelementptr inbounds %struct.lua_TValue* %42, i32 0, i32 1, !dbg !543
  %44 = load i32* %43, align 4, !dbg !543
  %45 = and i32 %44, 64, !dbg !543
  %46 = icmp ne i32 %45, 0, !dbg !543
  br i1 %46, label %47, label %77, !dbg !543

; <label>:47                                      ; preds = %41
  %48 = load %struct.Node** %n, align 4, !dbg !545
  %49 = getelementptr inbounds %struct.Node* %48, i32 0, i32 1, !dbg !545
  %50 = bitcast %union.TKey* %49 to %struct.lua_TValue*, !dbg !545
  %51 = getelementptr inbounds %struct.lua_TValue* %50, i32 0, i32 0, !dbg !545
  %52 = bitcast %union.Value* %51 to %struct.GCObject**, !dbg !545
  %53 = load %struct.GCObject** %52, align 4, !dbg !545
  %54 = bitcast %struct.GCObject* %53 to i8*, !dbg !545
  %55 = load %struct.lua_TValue** %4, align 4, !dbg !545
  %56 = getelementptr inbounds %struct.lua_TValue* %55, i32 0, i32 0, !dbg !545
  %57 = bitcast %union.Value* %56 to %struct.GCObject**, !dbg !545
  %58 = load %struct.GCObject** %57, align 4, !dbg !545
  %59 = bitcast %struct.GCObject* %58 to i8*, !dbg !545
  %60 = icmp eq i8* %54, %59, !dbg !545
  br i1 %60, label %61, label %77, !dbg !545

; <label>:61                                      ; preds = %47, %27
  %62 = load %struct.Node** %n, align 4, !dbg !547
  %63 = load %struct.Table** %3, align 4, !dbg !547
  %64 = getelementptr inbounds %struct.Table* %63, i32 0, i32 7, !dbg !547
  %65 = load %struct.Node** %64, align 4, !dbg !547
  %66 = getelementptr inbounds %struct.Node* %65, i32 0, !dbg !547
  %67 = ptrtoint %struct.Node* %62 to i32, !dbg !547
  %68 = ptrtoint %struct.Node* %66 to i32, !dbg !547
  %69 = sub i32 %67, %68, !dbg !547
  %70 = sdiv exact i32 %69, 32, !dbg !547
  store i32 %70, i32* %i, align 4, !dbg !547
  %71 = load i32* %i, align 4, !dbg !549
  %72 = add i32 %71, 1, !dbg !549
  %73 = load %struct.Table** %3, align 4, !dbg !549
  %74 = getelementptr inbounds %struct.Table* %73, i32 0, i32 5, !dbg !549
  %75 = load i32* %74, align 4, !dbg !549
  %76 = add i32 %72, %75, !dbg !549
  store i32 %76, i32* %1, !dbg !549
  br label %92, !dbg !549

; <label>:77                                      ; preds = %47, %41, %34
  %78 = load %struct.Node** %n, align 4, !dbg !550
  %79 = getelementptr inbounds %struct.Node* %78, i32 0, i32 1, !dbg !550
  %80 = bitcast %union.TKey* %79 to %struct.anon*, !dbg !550
  %81 = getelementptr inbounds %struct.anon* %80, i32 0, i32 2, !dbg !550
  %82 = load i32* %81, align 4, !dbg !550
  store i32 %82, i32* %nx, align 4, !dbg !550
  %83 = load i32* %nx, align 4, !dbg !551
  %84 = icmp eq i32 %83, 0, !dbg !551
  br i1 %84, label %85, label %87, !dbg !551

; <label>:85                                      ; preds = %77
  %86 = load %struct.lua_State** %2, align 4, !dbg !553
  call void (%struct.lua_State*, i8*, ...)* @luaG_runerror(%struct.lua_State* %86, i8* getelementptr inbounds ([22 x i8]* @.str3, i32 0, i32 0)) #5, !dbg !553
  unreachable, !dbg !553

; <label>:87                                      ; preds = %77
  %88 = load i32* %nx, align 4, !dbg !554
  %89 = load %struct.Node** %n, align 4, !dbg !554
  %90 = getelementptr inbounds %struct.Node* %89, i32 %88, !dbg !554
  store %struct.Node* %90, %struct.Node** %n, align 4, !dbg !554
  br label %91

; <label>:91                                      ; preds = %87
  br label %27, !dbg !555

; <label>:92                                      ; preds = %61, %21, %9
  %93 = load i32* %1, !dbg !556
  ret i32 %93, !dbg !556
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture, i8* nocapture readonly, i32, i32, i1) #2

; Function Attrs: nounwind
define hidden void @luaH_resize(%struct.lua_State* %L, %struct.Table* %t, i32 %nasize, i32 %nhsize) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca %struct.Table*, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %oldasize = alloca i32, align 4
  %oldhsize = alloca i32, align 4
  %nold = alloca %struct.Node*, align 4
  %old = alloca %struct.Node*, align 4
  %io1 = alloca %struct.lua_TValue*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !557), !dbg !558
  store %struct.Table* %t, %struct.Table** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.Table** %2}, metadata !559), !dbg !560
  store i32 %nasize, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !561), !dbg !562
  store i32 %nhsize, i32* %4, align 4
  call void @llvm.dbg.declare(metadata !{i32* %4}, metadata !563), !dbg !564
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !565), !dbg !566
  call void @llvm.dbg.declare(metadata !{i32* %j}, metadata !567), !dbg !568
  call void @llvm.dbg.declare(metadata !{i32* %oldasize}, metadata !569), !dbg !570
  %5 = load %struct.Table** %2, align 4, !dbg !571
  %6 = getelementptr inbounds %struct.Table* %5, i32 0, i32 5, !dbg !571
  %7 = load i32* %6, align 4, !dbg !571
  store i32 %7, i32* %oldasize, align 4, !dbg !571
  call void @llvm.dbg.declare(metadata !{i32* %oldhsize}, metadata !572), !dbg !573
  %8 = load %struct.Table** %2, align 4, !dbg !574
  %9 = getelementptr inbounds %struct.Table* %8, i32 0, i32 4, !dbg !574
  %10 = load i8* %9, align 1, !dbg !574
  %11 = zext i8 %10 to i32, !dbg !574
  store i32 %11, i32* %oldhsize, align 4, !dbg !574
  call void @llvm.dbg.declare(metadata !{%struct.Node** %nold}, metadata !575), !dbg !576
  %12 = load %struct.Table** %2, align 4, !dbg !577
  %13 = getelementptr inbounds %struct.Table* %12, i32 0, i32 7, !dbg !577
  %14 = load %struct.Node** %13, align 4, !dbg !577
  store %struct.Node* %14, %struct.Node** %nold, align 4, !dbg !577
  %15 = load i32* %3, align 4, !dbg !578
  %16 = load i32* %oldasize, align 4, !dbg !578
  %17 = icmp ugt i32 %15, %16, !dbg !578
  br i1 %17, label %18, label %22, !dbg !578

; <label>:18                                      ; preds = %0
  %19 = load %struct.lua_State** %1, align 4, !dbg !580
  %20 = load %struct.Table** %2, align 4, !dbg !580
  %21 = load i32* %3, align 4, !dbg !580
  call void @setarrayvector(%struct.lua_State* %19, %struct.Table* %20, i32 %21), !dbg !580
  br label %22, !dbg !580

; <label>:22                                      ; preds = %18, %0
  %23 = load %struct.lua_State** %1, align 4, !dbg !581
  %24 = load %struct.Table** %2, align 4, !dbg !581
  %25 = load i32* %4, align 4, !dbg !581
  call void @setnodevector(%struct.lua_State* %23, %struct.Table* %24, i32 %25), !dbg !581
  %26 = load i32* %3, align 4, !dbg !582
  %27 = load i32* %oldasize, align 4, !dbg !582
  %28 = icmp ult i32 %26, %27, !dbg !582
  br i1 %28, label %29, label %84, !dbg !582

; <label>:29                                      ; preds = %22
  %30 = load i32* %3, align 4, !dbg !584
  %31 = load %struct.Table** %2, align 4, !dbg !584
  %32 = getelementptr inbounds %struct.Table* %31, i32 0, i32 5, !dbg !584
  store i32 %30, i32* %32, align 4, !dbg !584
  %33 = load i32* %3, align 4, !dbg !586
  store i32 %33, i32* %i, align 4, !dbg !586
  br label %34, !dbg !586

; <label>:34                                      ; preds = %59, %29
  %35 = load i32* %i, align 4, !dbg !588
  %36 = load i32* %oldasize, align 4, !dbg !588
  %37 = icmp ult i32 %35, %36, !dbg !588
  br i1 %37, label %38, label %62, !dbg !588

; <label>:38                                      ; preds = %34
  %39 = load i32* %i, align 4, !dbg !591
  %40 = load %struct.Table** %2, align 4, !dbg !591
  %41 = getelementptr inbounds %struct.Table* %40, i32 0, i32 6, !dbg !591
  %42 = load %struct.lua_TValue** %41, align 4, !dbg !591
  %43 = getelementptr inbounds %struct.lua_TValue* %42, i32 %39, !dbg !591
  %44 = getelementptr inbounds %struct.lua_TValue* %43, i32 0, i32 1, !dbg !591
  %45 = load i32* %44, align 4, !dbg !591
  %46 = icmp eq i32 %45, 0, !dbg !591
  br i1 %46, label %58, label %47, !dbg !591

; <label>:47                                      ; preds = %38
  %48 = load %struct.lua_State** %1, align 4, !dbg !594
  %49 = load %struct.Table** %2, align 4, !dbg !594
  %50 = load i32* %i, align 4, !dbg !594
  %51 = add i32 %50, 1, !dbg !594
  %52 = zext i32 %51 to i64, !dbg !594
  %53 = load i32* %i, align 4, !dbg !594
  %54 = load %struct.Table** %2, align 4, !dbg !594
  %55 = getelementptr inbounds %struct.Table* %54, i32 0, i32 6, !dbg !594
  %56 = load %struct.lua_TValue** %55, align 4, !dbg !594
  %57 = getelementptr inbounds %struct.lua_TValue* %56, i32 %53, !dbg !594
  call void @luaH_setint(%struct.lua_State* %48, %struct.Table* %49, i64 %52, %struct.lua_TValue* %57), !dbg !594
  br label %58, !dbg !594

; <label>:58                                      ; preds = %47, %38
  br label %59, !dbg !595

; <label>:59                                      ; preds = %58
  %60 = load i32* %i, align 4, !dbg !596
  %61 = add i32 %60, 1, !dbg !596
  store i32 %61, i32* %i, align 4, !dbg !596
  br label %34, !dbg !596

; <label>:62                                      ; preds = %34
  %63 = load i32* %3, align 4, !dbg !597
  %64 = add i32 %63, 1, !dbg !597
  %65 = icmp ugt i32 %64, 268435455, !dbg !597
  br i1 %65, label %66, label %69, !dbg !597

; <label>:66                                      ; preds = %62
  %67 = load %struct.lua_State** %1, align 4, !dbg !598
  call void @luaM_toobig(%struct.lua_State* %67) #5, !dbg !598
  unreachable, !dbg !598
                                                  ; No predecessors!
  br label %70, !dbg !597

; <label>:69                                      ; preds = %62
  br label %70, !dbg !600

; <label>:70                                      ; preds = %69, %68
  %71 = load %struct.lua_State** %1, align 4, !dbg !602
  %72 = load %struct.Table** %2, align 4, !dbg !602
  %73 = getelementptr inbounds %struct.Table* %72, i32 0, i32 6, !dbg !602
  %74 = load %struct.lua_TValue** %73, align 4, !dbg !602
  %75 = bitcast %struct.lua_TValue* %74 to i8*, !dbg !602
  %76 = load i32* %oldasize, align 4, !dbg !602
  %77 = mul i32 %76, 16, !dbg !602
  %78 = load i32* %3, align 4, !dbg !602
  %79 = mul i32 %78, 16, !dbg !602
  %80 = call i8* @luaM_realloc_(%struct.lua_State* %71, i8* %75, i32 %77, i32 %79), !dbg !602
  %81 = bitcast i8* %80 to %struct.lua_TValue*, !dbg !602
  %82 = load %struct.Table** %2, align 4, !dbg !602
  %83 = getelementptr inbounds %struct.Table* %82, i32 0, i32 6, !dbg !602
  store %struct.lua_TValue* %81, %struct.lua_TValue** %83, align 4, !dbg !602
  br label %84, !dbg !605

; <label>:84                                      ; preds = %70, %22
  %85 = load i32* %oldhsize, align 4, !dbg !606
  %86 = shl i32 1, %85, !dbg !606
  %87 = sub nsw i32 %86, 1, !dbg !606
  store i32 %87, i32* %j, align 4, !dbg !606
  br label %88, !dbg !606

; <label>:88                                      ; preds = %114, %84
  %89 = load i32* %j, align 4, !dbg !608
  %90 = icmp sge i32 %89, 0, !dbg !608
  br i1 %90, label %91, label %117, !dbg !608

; <label>:91                                      ; preds = %88
  call void @llvm.dbg.declare(metadata !{%struct.Node** %old}, metadata !611), !dbg !613
  %92 = load %struct.Node** %nold, align 4, !dbg !614
  %93 = load i32* %j, align 4, !dbg !614
  %94 = getelementptr inbounds %struct.Node* %92, i32 %93, !dbg !614
  store %struct.Node* %94, %struct.Node** %old, align 4, !dbg !614
  %95 = load %struct.Node** %old, align 4, !dbg !615
  %96 = getelementptr inbounds %struct.Node* %95, i32 0, i32 0, !dbg !615
  %97 = getelementptr inbounds %struct.lua_TValue* %96, i32 0, i32 1, !dbg !615
  %98 = load i32* %97, align 4, !dbg !615
  %99 = icmp eq i32 %98, 0, !dbg !615
  br i1 %99, label %113, label %100, !dbg !615

; <label>:100                                     ; preds = %91
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %io1}, metadata !617), !dbg !620
  %101 = load %struct.lua_State** %1, align 4, !dbg !620
  %102 = load %struct.Table** %2, align 4, !dbg !620
  %103 = load %struct.Node** %old, align 4, !dbg !620
  %104 = getelementptr inbounds %struct.Node* %103, i32 0, i32 1, !dbg !620
  %105 = bitcast %union.TKey* %104 to %struct.lua_TValue*, !dbg !620
  %106 = call %struct.lua_TValue* @luaH_set(%struct.lua_State* %101, %struct.Table* %102, %struct.lua_TValue* %105), !dbg !620
  store %struct.lua_TValue* %106, %struct.lua_TValue** %io1, align 4, !dbg !620
  %107 = load %struct.lua_TValue** %io1, align 4, !dbg !620
  %108 = load %struct.Node** %old, align 4, !dbg !620
  %109 = getelementptr inbounds %struct.Node* %108, i32 0, i32 0, !dbg !620
  %110 = bitcast %struct.lua_TValue* %107 to i8*, !dbg !620
  %111 = bitcast %struct.lua_TValue* %109 to i8*, !dbg !620
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %110, i8* %111, i32 16, i32 8, i1 false), !dbg !620
  %112 = load %struct.lua_State** %1, align 4, !dbg !620
  br label %113, !dbg !621

; <label>:113                                     ; preds = %100, %91
  br label %114, !dbg !622

; <label>:114                                     ; preds = %113
  %115 = load i32* %j, align 4, !dbg !623
  %116 = add nsw i32 %115, -1, !dbg !623
  store i32 %116, i32* %j, align 4, !dbg !623
  br label %88, !dbg !623

; <label>:117                                     ; preds = %88
  %118 = load %struct.Node** %nold, align 4, !dbg !624
  %119 = icmp eq %struct.Node* %118, bitcast ({ { { %struct.GCObject*, [4 x i8] }, i32, [4 x i8] }, { { { %struct.GCObject*, [4 x i8] }, i32, i32 } } }* @dummynode_ to %struct.Node*), !dbg !624
  br i1 %119, label %128, label %120, !dbg !624

; <label>:120                                     ; preds = %117
  %121 = load %struct.lua_State** %1, align 4, !dbg !626
  %122 = load %struct.Node** %nold, align 4, !dbg !626
  %123 = bitcast %struct.Node* %122 to i8*, !dbg !626
  %124 = load i32* %oldhsize, align 4, !dbg !626
  %125 = shl i32 1, %124, !dbg !626
  %126 = mul i32 %125, 32, !dbg !626
  %127 = call i8* @luaM_realloc_(%struct.lua_State* %121, i8* %123, i32 %126, i32 0), !dbg !626
  br label %128, !dbg !626

; <label>:128                                     ; preds = %120, %117
  ret void, !dbg !627
}

; Function Attrs: nounwind
define internal void @setarrayvector(%struct.lua_State* %L, %struct.Table* %t, i32 %size) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca %struct.Table*, align 4
  %3 = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !628), !dbg !629
  store %struct.Table* %t, %struct.Table** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.Table** %2}, metadata !630), !dbg !631
  store i32 %size, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !632), !dbg !633
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !634), !dbg !635
  %4 = load i32* %3, align 4, !dbg !636
  %5 = add i32 %4, 1, !dbg !636
  %6 = icmp ugt i32 %5, 268435455, !dbg !636
  br i1 %6, label %7, label %10, !dbg !636

; <label>:7                                       ; preds = %0
  %8 = load %struct.lua_State** %1, align 4, !dbg !637
  call void @luaM_toobig(%struct.lua_State* %8) #5, !dbg !637
  unreachable, !dbg !637
                                                  ; No predecessors!
  br label %11, !dbg !636

; <label>:10                                      ; preds = %0
  br label %11, !dbg !639

; <label>:11                                      ; preds = %10, %9
  %12 = load %struct.lua_State** %1, align 4, !dbg !641
  %13 = load %struct.Table** %2, align 4, !dbg !641
  %14 = getelementptr inbounds %struct.Table* %13, i32 0, i32 6, !dbg !641
  %15 = load %struct.lua_TValue** %14, align 4, !dbg !641
  %16 = bitcast %struct.lua_TValue* %15 to i8*, !dbg !641
  %17 = load %struct.Table** %2, align 4, !dbg !641
  %18 = getelementptr inbounds %struct.Table* %17, i32 0, i32 5, !dbg !641
  %19 = load i32* %18, align 4, !dbg !641
  %20 = mul i32 %19, 16, !dbg !641
  %21 = load i32* %3, align 4, !dbg !641
  %22 = mul i32 %21, 16, !dbg !641
  %23 = call i8* @luaM_realloc_(%struct.lua_State* %12, i8* %16, i32 %20, i32 %22), !dbg !641
  %24 = bitcast i8* %23 to %struct.lua_TValue*, !dbg !641
  %25 = load %struct.Table** %2, align 4, !dbg !641
  %26 = getelementptr inbounds %struct.Table* %25, i32 0, i32 6, !dbg !641
  store %struct.lua_TValue* %24, %struct.lua_TValue** %26, align 4, !dbg !641
  %27 = load %struct.Table** %2, align 4, !dbg !644
  %28 = getelementptr inbounds %struct.Table* %27, i32 0, i32 5, !dbg !644
  %29 = load i32* %28, align 4, !dbg !644
  store i32 %29, i32* %i, align 4, !dbg !644
  br label %30, !dbg !644

; <label>:30                                      ; preds = %41, %11
  %31 = load i32* %i, align 4, !dbg !646
  %32 = load i32* %3, align 4, !dbg !646
  %33 = icmp ult i32 %31, %32, !dbg !646
  br i1 %33, label %34, label %44, !dbg !646

; <label>:34                                      ; preds = %30
  %35 = load i32* %i, align 4, !dbg !649
  %36 = load %struct.Table** %2, align 4, !dbg !649
  %37 = getelementptr inbounds %struct.Table* %36, i32 0, i32 6, !dbg !649
  %38 = load %struct.lua_TValue** %37, align 4, !dbg !649
  %39 = getelementptr inbounds %struct.lua_TValue* %38, i32 %35, !dbg !649
  %40 = getelementptr inbounds %struct.lua_TValue* %39, i32 0, i32 1, !dbg !649
  store i32 0, i32* %40, align 4, !dbg !649
  br label %41, !dbg !649

; <label>:41                                      ; preds = %34
  %42 = load i32* %i, align 4, !dbg !650
  %43 = add i32 %42, 1, !dbg !650
  store i32 %43, i32* %i, align 4, !dbg !650
  br label %30, !dbg !650

; <label>:44                                      ; preds = %30
  %45 = load i32* %3, align 4, !dbg !651
  %46 = load %struct.Table** %2, align 4, !dbg !651
  %47 = getelementptr inbounds %struct.Table* %46, i32 0, i32 5, !dbg !651
  store i32 %45, i32* %47, align 4, !dbg !651
  ret void, !dbg !652
}

; Function Attrs: nounwind
define internal void @setnodevector(%struct.lua_State* %L, %struct.Table* %t, i32 %size) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca %struct.Table*, align 4
  %3 = alloca i32, align 4
  %lsize = alloca i32, align 4
  %i = alloca i32, align 4
  %n = alloca %struct.Node*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !653), !dbg !654
  store %struct.Table* %t, %struct.Table** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.Table** %2}, metadata !655), !dbg !656
  store i32 %size, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !657), !dbg !658
  call void @llvm.dbg.declare(metadata !{i32* %lsize}, metadata !659), !dbg !660
  %4 = load i32* %3, align 4, !dbg !661
  %5 = icmp eq i32 %4, 0, !dbg !661
  br i1 %5, label %6, label %9, !dbg !661

; <label>:6                                       ; preds = %0
  %7 = load %struct.Table** %2, align 4, !dbg !663
  %8 = getelementptr inbounds %struct.Table* %7, i32 0, i32 7, !dbg !663
  store %struct.Node* bitcast ({ { { %struct.GCObject*, [4 x i8] }, i32, [4 x i8] }, { { { %struct.GCObject*, [4 x i8] }, i32, i32 } } }* @dummynode_ to %struct.Node*), %struct.Node** %8, align 4, !dbg !663
  store i32 0, i32* %lsize, align 4, !dbg !665
  br label %59, !dbg !666

; <label>:9                                       ; preds = %0
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !667), !dbg !669
  %10 = load i32* %3, align 4, !dbg !670
  %11 = call i32 @luaO_ceillog2(i32 %10), !dbg !670
  store i32 %11, i32* %lsize, align 4, !dbg !670
  %12 = load i32* %lsize, align 4, !dbg !671
  %13 = icmp sgt i32 %12, 30, !dbg !671
  br i1 %13, label %14, label %16, !dbg !671

; <label>:14                                      ; preds = %9
  %15 = load %struct.lua_State** %1, align 4, !dbg !673
  call void (%struct.lua_State*, i8*, ...)* @luaG_runerror(%struct.lua_State* %15, i8* getelementptr inbounds ([15 x i8]* @.str2, i32 0, i32 0)) #5, !dbg !673
  unreachable, !dbg !673

; <label>:16                                      ; preds = %9
  %17 = load i32* %lsize, align 4, !dbg !674
  %18 = shl i32 1, %17, !dbg !674
  store i32 %18, i32* %3, align 4, !dbg !674
  %19 = load i32* %3, align 4, !dbg !675
  %20 = add i32 %19, 1, !dbg !675
  %21 = icmp ugt i32 %20, 134217727, !dbg !675
  br i1 %21, label %22, label %25, !dbg !675

; <label>:22                                      ; preds = %16
  %23 = load %struct.lua_State** %1, align 4, !dbg !676
  call void @luaM_toobig(%struct.lua_State* %23) #5, !dbg !676
  unreachable, !dbg !676
                                                  ; No predecessors!
  br label %26, !dbg !678

; <label>:25                                      ; preds = %16
  br label %26, !dbg !679

; <label>:26                                      ; preds = %25, %24
  %27 = load %struct.lua_State** %1, align 4, !dbg !681
  %28 = load i32* %3, align 4, !dbg !681
  %29 = mul i32 %28, 32, !dbg !681
  %30 = call i8* @luaM_realloc_(%struct.lua_State* %27, i8* null, i32 0, i32 %29), !dbg !681
  %31 = bitcast i8* %30 to %struct.Node*, !dbg !681
  %32 = load %struct.Table** %2, align 4, !dbg !681
  %33 = getelementptr inbounds %struct.Table* %32, i32 0, i32 7, !dbg !681
  store %struct.Node* %31, %struct.Node** %33, align 4, !dbg !681
  store i32 0, i32* %i, align 4, !dbg !684
  br label %34, !dbg !684

; <label>:34                                      ; preds = %55, %26
  %35 = load i32* %i, align 4, !dbg !686
  %36 = load i32* %3, align 4, !dbg !686
  %37 = icmp slt i32 %35, %36, !dbg !686
  br i1 %37, label %38, label %58, !dbg !686

; <label>:38                                      ; preds = %34
  call void @llvm.dbg.declare(metadata !{%struct.Node** %n}, metadata !689), !dbg !691
  %39 = load i32* %i, align 4, !dbg !692
  %40 = load %struct.Table** %2, align 4, !dbg !692
  %41 = getelementptr inbounds %struct.Table* %40, i32 0, i32 7, !dbg !692
  %42 = load %struct.Node** %41, align 4, !dbg !692
  %43 = getelementptr inbounds %struct.Node* %42, i32 %39, !dbg !692
  store %struct.Node* %43, %struct.Node** %n, align 4, !dbg !692
  %44 = load %struct.Node** %n, align 4, !dbg !693
  %45 = getelementptr inbounds %struct.Node* %44, i32 0, i32 1, !dbg !693
  %46 = bitcast %union.TKey* %45 to %struct.anon*, !dbg !693
  %47 = getelementptr inbounds %struct.anon* %46, i32 0, i32 2, !dbg !693
  store i32 0, i32* %47, align 4, !dbg !693
  %48 = load %struct.Node** %n, align 4, !dbg !694
  %49 = getelementptr inbounds %struct.Node* %48, i32 0, i32 1, !dbg !694
  %50 = bitcast %union.TKey* %49 to %struct.anon*, !dbg !694
  %51 = getelementptr inbounds %struct.anon* %50, i32 0, i32 1, !dbg !694
  store i32 0, i32* %51, align 4, !dbg !694
  %52 = load %struct.Node** %n, align 4, !dbg !695
  %53 = getelementptr inbounds %struct.Node* %52, i32 0, i32 0, !dbg !695
  %54 = getelementptr inbounds %struct.lua_TValue* %53, i32 0, i32 1, !dbg !695
  store i32 0, i32* %54, align 4, !dbg !695
  br label %55, !dbg !696

; <label>:55                                      ; preds = %38
  %56 = load i32* %i, align 4, !dbg !697
  %57 = add nsw i32 %56, 1, !dbg !697
  store i32 %57, i32* %i, align 4, !dbg !697
  br label %34, !dbg !697

; <label>:58                                      ; preds = %34
  br label %59

; <label>:59                                      ; preds = %58, %6
  %60 = load i32* %lsize, align 4, !dbg !698
  %61 = trunc i32 %60 to i8, !dbg !698
  %62 = load %struct.Table** %2, align 4, !dbg !698
  %63 = getelementptr inbounds %struct.Table* %62, i32 0, i32 4, !dbg !698
  store i8 %61, i8* %63, align 1, !dbg !698
  %64 = load i32* %3, align 4, !dbg !699
  %65 = load %struct.Table** %2, align 4, !dbg !699
  %66 = getelementptr inbounds %struct.Table* %65, i32 0, i32 7, !dbg !699
  %67 = load %struct.Node** %66, align 4, !dbg !699
  %68 = getelementptr inbounds %struct.Node* %67, i32 %64, !dbg !699
  %69 = load %struct.Table** %2, align 4, !dbg !699
  %70 = getelementptr inbounds %struct.Table* %69, i32 0, i32 8, !dbg !699
  store %struct.Node* %68, %struct.Node** %70, align 4, !dbg !699
  ret void, !dbg !700
}

; Function Attrs: nounwind
define hidden void @luaH_setint(%struct.lua_State* %L, %struct.Table* %t, i64 %key, %struct.lua_TValue* %value) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca %struct.Table*, align 4
  %3 = alloca i64, align 8
  %4 = alloca %struct.lua_TValue*, align 4
  %p = alloca %struct.lua_TValue*, align 4
  %cell = alloca %struct.lua_TValue*, align 4
  %k = alloca %struct.lua_TValue, align 8
  %io = alloca %struct.lua_TValue*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !701), !dbg !702
  store %struct.Table* %t, %struct.Table** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.Table** %2}, metadata !703), !dbg !704
  store i64 %key, i64* %3, align 8
  call void @llvm.dbg.declare(metadata !{i64* %3}, metadata !705), !dbg !706
  store %struct.lua_TValue* %value, %struct.lua_TValue** %4, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %4}, metadata !707), !dbg !708
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %p}, metadata !709), !dbg !710
  %5 = load %struct.Table** %2, align 4, !dbg !711
  %6 = load i64* %3, align 8, !dbg !711
  %7 = call %struct.lua_TValue* @luaH_getint(%struct.Table* %5, i64 %6), !dbg !711
  store %struct.lua_TValue* %7, %struct.lua_TValue** %p, align 4, !dbg !711
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %cell}, metadata !712), !dbg !713
  %8 = load %struct.lua_TValue** %p, align 4, !dbg !714
  %9 = icmp ne %struct.lua_TValue* %8, @luaO_nilobject_, !dbg !714
  br i1 %9, label %10, label %12, !dbg !714

; <label>:10                                      ; preds = %0
  %11 = load %struct.lua_TValue** %p, align 4, !dbg !716
  store %struct.lua_TValue* %11, %struct.lua_TValue** %cell, align 4, !dbg !716
  br label %22, !dbg !716

; <label>:12                                      ; preds = %0
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue* %k}, metadata !717), !dbg !719
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %io}, metadata !720), !dbg !722
  store %struct.lua_TValue* %k, %struct.lua_TValue** %io, align 4, !dbg !722
  %13 = load i64* %3, align 8, !dbg !722
  %14 = load %struct.lua_TValue** %io, align 4, !dbg !722
  %15 = getelementptr inbounds %struct.lua_TValue* %14, i32 0, i32 0, !dbg !722
  %16 = bitcast %union.Value* %15 to i64*, !dbg !722
  store i64 %13, i64* %16, align 8, !dbg !722
  %17 = load %struct.lua_TValue** %io, align 4, !dbg !722
  %18 = getelementptr inbounds %struct.lua_TValue* %17, i32 0, i32 1, !dbg !722
  store i32 19, i32* %18, align 4, !dbg !722
  %19 = load %struct.lua_State** %1, align 4, !dbg !723
  %20 = load %struct.Table** %2, align 4, !dbg !723
  %21 = call %struct.lua_TValue* @luaH_newkey(%struct.lua_State* %19, %struct.Table* %20, %struct.lua_TValue* %k), !dbg !723
  store %struct.lua_TValue* %21, %struct.lua_TValue** %cell, align 4, !dbg !723
  br label %22

; <label>:22                                      ; preds = %12, %10
  %23 = load %struct.lua_State** %1, align 4, !dbg !724
  %24 = load %struct.lua_TValue** %cell, align 4, !dbg !724
  %25 = load %struct.lua_TValue** %4, align 4, !dbg !724
  %26 = bitcast %struct.lua_TValue* %24 to i8*, !dbg !724
  %27 = bitcast %struct.lua_TValue* %25 to i8*, !dbg !724
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 16, i32 8, i1 false), !dbg !724
  ret void, !dbg !725
}

; Function Attrs: noreturn
declare hidden void @luaM_toobig(%struct.lua_State*) #3

declare hidden i8* @luaM_realloc_(%struct.lua_State*, i8*, i32, i32) #4

; Function Attrs: nounwind
define hidden %struct.lua_TValue* @luaH_set(%struct.lua_State* %L, %struct.Table* %t, %struct.lua_TValue* %key) #0 {
  %1 = alloca %struct.lua_TValue*, align 4
  %2 = alloca %struct.lua_State*, align 4
  %3 = alloca %struct.Table*, align 4
  %4 = alloca %struct.lua_TValue*, align 4
  %p = alloca %struct.lua_TValue*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %2}, metadata !726), !dbg !727
  store %struct.Table* %t, %struct.Table** %3, align 4
  call void @llvm.dbg.declare(metadata !{%struct.Table** %3}, metadata !728), !dbg !729
  store %struct.lua_TValue* %key, %struct.lua_TValue** %4, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %4}, metadata !730), !dbg !731
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %p}, metadata !732), !dbg !733
  %5 = load %struct.Table** %3, align 4, !dbg !734
  %6 = load %struct.lua_TValue** %4, align 4, !dbg !734
  %7 = call %struct.lua_TValue* @luaH_get(%struct.Table* %5, %struct.lua_TValue* %6), !dbg !734
  store %struct.lua_TValue* %7, %struct.lua_TValue** %p, align 4, !dbg !734
  %8 = load %struct.lua_TValue** %p, align 4, !dbg !735
  %9 = icmp ne %struct.lua_TValue* %8, @luaO_nilobject_, !dbg !735
  br i1 %9, label %10, label %12, !dbg !735

; <label>:10                                      ; preds = %0
  %11 = load %struct.lua_TValue** %p, align 4, !dbg !737
  store %struct.lua_TValue* %11, %struct.lua_TValue** %1, !dbg !737
  br label %17, !dbg !737

; <label>:12                                      ; preds = %0
  %13 = load %struct.lua_State** %2, align 4, !dbg !738
  %14 = load %struct.Table** %3, align 4, !dbg !738
  %15 = load %struct.lua_TValue** %4, align 4, !dbg !738
  %16 = call %struct.lua_TValue* @luaH_newkey(%struct.lua_State* %13, %struct.Table* %14, %struct.lua_TValue* %15), !dbg !738
  store %struct.lua_TValue* %16, %struct.lua_TValue** %1, !dbg !738
  br label %17, !dbg !738

; <label>:17                                      ; preds = %12, %10
  %18 = load %struct.lua_TValue** %1, !dbg !739
  ret %struct.lua_TValue* %18, !dbg !739
}

; Function Attrs: nounwind
define hidden void @luaH_resizearray(%struct.lua_State* %L, %struct.Table* %t, i32 %nasize) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca %struct.Table*, align 4
  %3 = alloca i32, align 4
  %nsize = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !740), !dbg !741
  store %struct.Table* %t, %struct.Table** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.Table** %2}, metadata !742), !dbg !743
  store i32 %nasize, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !744), !dbg !745
  call void @llvm.dbg.declare(metadata !{i32* %nsize}, metadata !746), !dbg !747
  %4 = load %struct.Table** %2, align 4, !dbg !748
  %5 = getelementptr inbounds %struct.Table* %4, i32 0, i32 7, !dbg !748
  %6 = load %struct.Node** %5, align 4, !dbg !748
  %7 = icmp eq %struct.Node* %6, bitcast ({ { { %struct.GCObject*, [4 x i8] }, i32, [4 x i8] }, { { { %struct.GCObject*, [4 x i8] }, i32, i32 } } }* @dummynode_ to %struct.Node*), !dbg !748
  br i1 %7, label %8, label %9, !dbg !748

; <label>:8                                       ; preds = %0
  br label %15, !dbg !749

; <label>:9                                       ; preds = %0
  %10 = load %struct.Table** %2, align 4, !dbg !751
  %11 = getelementptr inbounds %struct.Table* %10, i32 0, i32 4, !dbg !751
  %12 = load i8* %11, align 1, !dbg !751
  %13 = zext i8 %12 to i32, !dbg !751
  %14 = shl i32 1, %13, !dbg !751
  br label %15, !dbg !751

; <label>:15                                      ; preds = %9, %8
  %16 = phi i32 [ 0, %8 ], [ %14, %9 ], !dbg !748
  store i32 %16, i32* %nsize, align 4, !dbg !753
  %17 = load %struct.lua_State** %1, align 4, !dbg !756
  %18 = load %struct.Table** %2, align 4, !dbg !756
  %19 = load i32* %3, align 4, !dbg !756
  %20 = load i32* %nsize, align 4, !dbg !756
  call void @luaH_resize(%struct.lua_State* %17, %struct.Table* %18, i32 %19, i32 %20), !dbg !756
  ret void, !dbg !757
}

; Function Attrs: nounwind
define hidden %struct.Table* @luaH_new(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %o = alloca %struct.GCObject*, align 4
  %t = alloca %struct.Table*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !758), !dbg !759
  call void @llvm.dbg.declare(metadata !{%struct.GCObject** %o}, metadata !760), !dbg !761
  %2 = load %struct.lua_State** %1, align 4, !dbg !762
  %3 = call %struct.GCObject* @luaC_newobj(%struct.lua_State* %2, i32 5, i32 32), !dbg !762
  store %struct.GCObject* %3, %struct.GCObject** %o, align 4, !dbg !762
  call void @llvm.dbg.declare(metadata !{%struct.Table** %t}, metadata !763), !dbg !764
  %4 = load %struct.GCObject** %o, align 4, !dbg !765
  %5 = bitcast %struct.GCObject* %4 to %union.GCUnion*, !dbg !765
  %6 = bitcast %union.GCUnion* %5 to %struct.Table*, !dbg !765
  store %struct.Table* %6, %struct.Table** %t, align 4, !dbg !765
  %7 = load %struct.Table** %t, align 4, !dbg !766
  %8 = getelementptr inbounds %struct.Table* %7, i32 0, i32 9, !dbg !766
  store %struct.Table* null, %struct.Table** %8, align 4, !dbg !766
  %9 = load %struct.Table** %t, align 4, !dbg !767
  %10 = getelementptr inbounds %struct.Table* %9, i32 0, i32 3, !dbg !767
  store i8 -1, i8* %10, align 1, !dbg !767
  %11 = load %struct.Table** %t, align 4, !dbg !768
  %12 = getelementptr inbounds %struct.Table* %11, i32 0, i32 6, !dbg !768
  store %struct.lua_TValue* null, %struct.lua_TValue** %12, align 4, !dbg !768
  %13 = load %struct.Table** %t, align 4, !dbg !769
  %14 = getelementptr inbounds %struct.Table* %13, i32 0, i32 5, !dbg !769
  store i32 0, i32* %14, align 4, !dbg !769
  %15 = load %struct.lua_State** %1, align 4, !dbg !770
  %16 = load %struct.Table** %t, align 4, !dbg !770
  call void @setnodevector(%struct.lua_State* %15, %struct.Table* %16, i32 0), !dbg !770
  %17 = load %struct.Table** %t, align 4, !dbg !771
  ret %struct.Table* %17, !dbg !771
}

declare hidden %struct.GCObject* @luaC_newobj(%struct.lua_State*, i32, i32) #4

; Function Attrs: nounwind
define hidden void @luaH_free(%struct.lua_State* %L, %struct.Table* %t) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca %struct.Table*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !772), !dbg !773
  store %struct.Table* %t, %struct.Table** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.Table** %2}, metadata !774), !dbg !775
  %3 = load %struct.Table** %2, align 4, !dbg !776
  %4 = getelementptr inbounds %struct.Table* %3, i32 0, i32 7, !dbg !776
  %5 = load %struct.Node** %4, align 4, !dbg !776
  %6 = icmp eq %struct.Node* %5, bitcast ({ { { %struct.GCObject*, [4 x i8] }, i32, [4 x i8] }, { { { %struct.GCObject*, [4 x i8] }, i32, i32 } } }* @dummynode_ to %struct.Node*), !dbg !776
  br i1 %6, label %20, label %7, !dbg !776

; <label>:7                                       ; preds = %0
  %8 = load %struct.lua_State** %1, align 4, !dbg !778
  %9 = load %struct.Table** %2, align 4, !dbg !778
  %10 = getelementptr inbounds %struct.Table* %9, i32 0, i32 7, !dbg !778
  %11 = load %struct.Node** %10, align 4, !dbg !778
  %12 = bitcast %struct.Node* %11 to i8*, !dbg !778
  %13 = load %struct.Table** %2, align 4, !dbg !778
  %14 = getelementptr inbounds %struct.Table* %13, i32 0, i32 4, !dbg !778
  %15 = load i8* %14, align 1, !dbg !778
  %16 = zext i8 %15 to i32, !dbg !778
  %17 = shl i32 1, %16, !dbg !778
  %18 = mul i32 %17, 32, !dbg !778
  %19 = call i8* @luaM_realloc_(%struct.lua_State* %8, i8* %12, i32 %18, i32 0), !dbg !778
  br label %20, !dbg !778

; <label>:20                                      ; preds = %7, %0
  %21 = load %struct.lua_State** %1, align 4, !dbg !779
  %22 = load %struct.Table** %2, align 4, !dbg !779
  %23 = getelementptr inbounds %struct.Table* %22, i32 0, i32 6, !dbg !779
  %24 = load %struct.lua_TValue** %23, align 4, !dbg !779
  %25 = bitcast %struct.lua_TValue* %24 to i8*, !dbg !779
  %26 = load %struct.Table** %2, align 4, !dbg !779
  %27 = getelementptr inbounds %struct.Table* %26, i32 0, i32 5, !dbg !779
  %28 = load i32* %27, align 4, !dbg !779
  %29 = mul i32 %28, 16, !dbg !779
  %30 = call i8* @luaM_realloc_(%struct.lua_State* %21, i8* %25, i32 %29, i32 0), !dbg !779
  %31 = load %struct.lua_State** %1, align 4, !dbg !780
  %32 = load %struct.Table** %2, align 4, !dbg !780
  %33 = bitcast %struct.Table* %32 to i8*, !dbg !780
  %34 = call i8* @luaM_realloc_(%struct.lua_State* %31, i8* %33, i32 32, i32 0), !dbg !780
  ret void, !dbg !781
}

; Function Attrs: nounwind
define hidden %struct.lua_TValue* @luaH_newkey(%struct.lua_State* %L, %struct.Table* %t, %struct.lua_TValue* %key) #0 {
  %1 = alloca %struct.lua_TValue*, align 4
  %2 = alloca %struct.lua_State*, align 4
  %3 = alloca %struct.Table*, align 4
  %4 = alloca %struct.lua_TValue*, align 4
  %mp = alloca %struct.Node*, align 4
  %aux = alloca %struct.lua_TValue, align 8
  %k = alloca i64, align 8
  %io = alloca %struct.lua_TValue*, align 4
  %othern = alloca %struct.Node*, align 4
  %f = alloca %struct.Node*, align 4
  %k_ = alloca %union.TKey*, align 4
  %io_ = alloca %struct.lua_TValue*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %2}, metadata !782), !dbg !783
  store %struct.Table* %t, %struct.Table** %3, align 4
  call void @llvm.dbg.declare(metadata !{%struct.Table** %3}, metadata !784), !dbg !785
  store %struct.lua_TValue* %key, %struct.lua_TValue** %4, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %4}, metadata !786), !dbg !787
  call void @llvm.dbg.declare(metadata !{%struct.Node** %mp}, metadata !788), !dbg !789
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue* %aux}, metadata !790), !dbg !791
  %5 = load %struct.lua_TValue** %4, align 4, !dbg !792
  %6 = getelementptr inbounds %struct.lua_TValue* %5, i32 0, i32 1, !dbg !792
  %7 = load i32* %6, align 4, !dbg !792
  %8 = icmp eq i32 %7, 0, !dbg !792
  br i1 %8, label %9, label %11, !dbg !792

; <label>:9                                       ; preds = %0
  %10 = load %struct.lua_State** %2, align 4, !dbg !794
  call void (%struct.lua_State*, i8*, ...)* @luaG_runerror(%struct.lua_State* %10, i8* getelementptr inbounds ([19 x i8]* @.str, i32 0, i32 0)) #5, !dbg !794
  unreachable, !dbg !794

; <label>:11                                      ; preds = %0
  %12 = load %struct.lua_TValue** %4, align 4, !dbg !796
  %13 = getelementptr inbounds %struct.lua_TValue* %12, i32 0, i32 1, !dbg !796
  %14 = load i32* %13, align 4, !dbg !796
  %15 = icmp eq i32 %14, 3, !dbg !796
  br i1 %15, label %16, label %41, !dbg !796

; <label>:16                                      ; preds = %11
  call void @llvm.dbg.declare(metadata !{i64* %k}, metadata !798), !dbg !800
  %17 = load %struct.lua_TValue** %4, align 4, !dbg !801
  %18 = call i32 @luaV_tointeger(%struct.lua_TValue* %17, i64* %k, i32 0), !dbg !801
  %19 = icmp ne i32 %18, 0, !dbg !801
  br i1 %19, label %20, label %27, !dbg !801

; <label>:20                                      ; preds = %16
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %io}, metadata !803), !dbg !806
  store %struct.lua_TValue* %aux, %struct.lua_TValue** %io, align 4, !dbg !806
  %21 = load i64* %k, align 8, !dbg !806
  %22 = load %struct.lua_TValue** %io, align 4, !dbg !806
  %23 = getelementptr inbounds %struct.lua_TValue* %22, i32 0, i32 0, !dbg !806
  %24 = bitcast %union.Value* %23 to i64*, !dbg !806
  store i64 %21, i64* %24, align 8, !dbg !806
  %25 = load %struct.lua_TValue** %io, align 4, !dbg !806
  %26 = getelementptr inbounds %struct.lua_TValue* %25, i32 0, i32 1, !dbg !806
  store i32 19, i32* %26, align 4, !dbg !806
  store %struct.lua_TValue* %aux, %struct.lua_TValue** %4, align 4, !dbg !807
  br label %40, !dbg !808

; <label>:27                                      ; preds = %16
  %28 = load %struct.lua_TValue** %4, align 4, !dbg !809
  %29 = getelementptr inbounds %struct.lua_TValue* %28, i32 0, i32 0, !dbg !809
  %30 = bitcast %union.Value* %29 to double*, !dbg !809
  %31 = load double* %30, align 8, !dbg !809
  %32 = load %struct.lua_TValue** %4, align 4, !dbg !809
  %33 = getelementptr inbounds %struct.lua_TValue* %32, i32 0, i32 0, !dbg !809
  %34 = bitcast %union.Value* %33 to double*, !dbg !809
  %35 = load double* %34, align 8, !dbg !809
  %36 = fcmp oeq double %31, %35, !dbg !809
  br i1 %36, label %39, label %37, !dbg !809

; <label>:37                                      ; preds = %27
  %38 = load %struct.lua_State** %2, align 4, !dbg !811
  call void (%struct.lua_State*, i8*, ...)* @luaG_runerror(%struct.lua_State* %38, i8* getelementptr inbounds ([19 x i8]* @.str1, i32 0, i32 0)) #5, !dbg !811
  unreachable, !dbg !811

; <label>:39                                      ; preds = %27
  br label %40

; <label>:40                                      ; preds = %39, %20
  br label %41, !dbg !812

; <label>:41                                      ; preds = %40, %11
  br label %42

; <label>:42                                      ; preds = %41
  %43 = load %struct.Table** %3, align 4, !dbg !813
  %44 = load %struct.lua_TValue** %4, align 4, !dbg !813
  %45 = call %struct.Node* @mainposition(%struct.Table* %43, %struct.lua_TValue* %44), !dbg !813
  store %struct.Node* %45, %struct.Node** %mp, align 4, !dbg !813
  %46 = load %struct.Node** %mp, align 4, !dbg !814
  %47 = getelementptr inbounds %struct.Node* %46, i32 0, i32 0, !dbg !814
  %48 = getelementptr inbounds %struct.lua_TValue* %47, i32 0, i32 1, !dbg !814
  %49 = load i32* %48, align 4, !dbg !814
  %50 = icmp eq i32 %49, 0, !dbg !814
  br i1 %50, label %51, label %54, !dbg !814

; <label>:51                                      ; preds = %42
  %52 = load %struct.Node** %mp, align 4, !dbg !816
  %53 = icmp eq %struct.Node* %52, bitcast ({ { { %struct.GCObject*, [4 x i8] }, i32, [4 x i8] }, { { { %struct.GCObject*, [4 x i8] }, i32, i32 } } }* @dummynode_ to %struct.Node*), !dbg !816
  br i1 %53, label %54, label %175, !dbg !816

; <label>:54                                      ; preds = %51, %42
  call void @llvm.dbg.declare(metadata !{%struct.Node** %othern}, metadata !818), !dbg !820
  call void @llvm.dbg.declare(metadata !{%struct.Node** %f}, metadata !821), !dbg !822
  %55 = load %struct.Table** %3, align 4, !dbg !823
  %56 = call %struct.Node* @getfreepos(%struct.Table* %55), !dbg !823
  store %struct.Node* %56, %struct.Node** %f, align 4, !dbg !823
  %57 = load %struct.Node** %f, align 4, !dbg !824
  %58 = icmp eq %struct.Node* %57, null, !dbg !824
  br i1 %58, label %59, label %67, !dbg !824

; <label>:59                                      ; preds = %54
  %60 = load %struct.lua_State** %2, align 4, !dbg !826
  %61 = load %struct.Table** %3, align 4, !dbg !826
  %62 = load %struct.lua_TValue** %4, align 4, !dbg !826
  call void @rehash(%struct.lua_State* %60, %struct.Table* %61, %struct.lua_TValue* %62), !dbg !826
  %63 = load %struct.lua_State** %2, align 4, !dbg !828
  %64 = load %struct.Table** %3, align 4, !dbg !828
  %65 = load %struct.lua_TValue** %4, align 4, !dbg !828
  %66 = call %struct.lua_TValue* @luaH_set(%struct.lua_State* %63, %struct.Table* %64, %struct.lua_TValue* %65), !dbg !828
  store %struct.lua_TValue* %66, %struct.lua_TValue** %1, !dbg !828
  br label %222, !dbg !828

; <label>:67                                      ; preds = %54
  %68 = load %struct.Table** %3, align 4, !dbg !829
  %69 = load %struct.Node** %mp, align 4, !dbg !829
  %70 = getelementptr inbounds %struct.Node* %69, i32 0, i32 1, !dbg !829
  %71 = bitcast %union.TKey* %70 to %struct.lua_TValue*, !dbg !829
  %72 = call %struct.Node* @mainposition(%struct.Table* %68, %struct.lua_TValue* %71), !dbg !829
  store %struct.Node* %72, %struct.Node** %othern, align 4, !dbg !829
  %73 = load %struct.Node** %othern, align 4, !dbg !830
  %74 = load %struct.Node** %mp, align 4, !dbg !830
  %75 = icmp ne %struct.Node* %73, %74, !dbg !830
  br i1 %75, label %76, label %137, !dbg !830

; <label>:76                                      ; preds = %67
  br label %77, !dbg !832

; <label>:77                                      ; preds = %87, %76
  %78 = load %struct.Node** %othern, align 4, !dbg !834
  %79 = load %struct.Node** %othern, align 4, !dbg !834
  %80 = getelementptr inbounds %struct.Node* %79, i32 0, i32 1, !dbg !834
  %81 = bitcast %union.TKey* %80 to %struct.anon*, !dbg !834
  %82 = getelementptr inbounds %struct.anon* %81, i32 0, i32 2, !dbg !834
  %83 = load i32* %82, align 4, !dbg !834
  %84 = getelementptr inbounds %struct.Node* %78, i32 %83, !dbg !834
  %85 = load %struct.Node** %mp, align 4, !dbg !834
  %86 = icmp ne %struct.Node* %84, %85, !dbg !834
  br i1 %86, label %87, label %95, !dbg !834

; <label>:87                                      ; preds = %77
  %88 = load %struct.Node** %othern, align 4, !dbg !836
  %89 = getelementptr inbounds %struct.Node* %88, i32 0, i32 1, !dbg !836
  %90 = bitcast %union.TKey* %89 to %struct.anon*, !dbg !836
  %91 = getelementptr inbounds %struct.anon* %90, i32 0, i32 2, !dbg !836
  %92 = load i32* %91, align 4, !dbg !836
  %93 = load %struct.Node** %othern, align 4, !dbg !836
  %94 = getelementptr inbounds %struct.Node* %93, i32 %92, !dbg !836
  store %struct.Node* %94, %struct.Node** %othern, align 4, !dbg !836
  br label %77, !dbg !836

; <label>:95                                      ; preds = %77
  %96 = load %struct.Node** %f, align 4, !dbg !837
  %97 = load %struct.Node** %othern, align 4, !dbg !837
  %98 = ptrtoint %struct.Node* %96 to i32, !dbg !837
  %99 = ptrtoint %struct.Node* %97 to i32, !dbg !837
  %100 = sub i32 %98, %99, !dbg !837
  %101 = sdiv exact i32 %100, 32, !dbg !837
  %102 = load %struct.Node** %othern, align 4, !dbg !837
  %103 = getelementptr inbounds %struct.Node* %102, i32 0, i32 1, !dbg !837
  %104 = bitcast %union.TKey* %103 to %struct.anon*, !dbg !837
  %105 = getelementptr inbounds %struct.anon* %104, i32 0, i32 2, !dbg !837
  store i32 %101, i32* %105, align 4, !dbg !837
  %106 = load %struct.Node** %f, align 4, !dbg !838
  %107 = load %struct.Node** %mp, align 4, !dbg !838
  %108 = bitcast %struct.Node* %106 to i8*, !dbg !838
  %109 = bitcast %struct.Node* %107 to i8*, !dbg !838
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %108, i8* %109, i32 32, i32 8, i1 false), !dbg !838
  %110 = load %struct.Node** %mp, align 4, !dbg !839
  %111 = getelementptr inbounds %struct.Node* %110, i32 0, i32 1, !dbg !839
  %112 = bitcast %union.TKey* %111 to %struct.anon*, !dbg !839
  %113 = getelementptr inbounds %struct.anon* %112, i32 0, i32 2, !dbg !839
  %114 = load i32* %113, align 4, !dbg !839
  %115 = icmp ne i32 %114, 0, !dbg !839
  br i1 %115, label %116, label %133, !dbg !839

; <label>:116                                     ; preds = %95
  %117 = load %struct.Node** %mp, align 4, !dbg !841
  %118 = load %struct.Node** %f, align 4, !dbg !841
  %119 = ptrtoint %struct.Node* %117 to i32, !dbg !841
  %120 = ptrtoint %struct.Node* %118 to i32, !dbg !841
  %121 = sub i32 %119, %120, !dbg !841
  %122 = sdiv exact i32 %121, 32, !dbg !841
  %123 = load %struct.Node** %f, align 4, !dbg !841
  %124 = getelementptr inbounds %struct.Node* %123, i32 0, i32 1, !dbg !841
  %125 = bitcast %union.TKey* %124 to %struct.anon*, !dbg !841
  %126 = getelementptr inbounds %struct.anon* %125, i32 0, i32 2, !dbg !841
  %127 = load i32* %126, align 4, !dbg !841
  %128 = add nsw i32 %127, %122, !dbg !841
  store i32 %128, i32* %126, align 4, !dbg !841
  %129 = load %struct.Node** %mp, align 4, !dbg !843
  %130 = getelementptr inbounds %struct.Node* %129, i32 0, i32 1, !dbg !843
  %131 = bitcast %union.TKey* %130 to %struct.anon*, !dbg !843
  %132 = getelementptr inbounds %struct.anon* %131, i32 0, i32 2, !dbg !843
  store i32 0, i32* %132, align 4, !dbg !843
  br label %133, !dbg !844

; <label>:133                                     ; preds = %116, %95
  %134 = load %struct.Node** %mp, align 4, !dbg !845
  %135 = getelementptr inbounds %struct.Node* %134, i32 0, i32 0, !dbg !845
  %136 = getelementptr inbounds %struct.lua_TValue* %135, i32 0, i32 1, !dbg !845
  store i32 0, i32* %136, align 4, !dbg !845
  br label %174, !dbg !846

; <label>:137                                     ; preds = %67
  %138 = load %struct.Node** %mp, align 4, !dbg !847
  %139 = getelementptr inbounds %struct.Node* %138, i32 0, i32 1, !dbg !847
  %140 = bitcast %union.TKey* %139 to %struct.anon*, !dbg !847
  %141 = getelementptr inbounds %struct.anon* %140, i32 0, i32 2, !dbg !847
  %142 = load i32* %141, align 4, !dbg !847
  %143 = icmp ne i32 %142, 0, !dbg !847
  br i1 %143, label %144, label %161, !dbg !847

; <label>:144                                     ; preds = %137
  %145 = load %struct.Node** %mp, align 4, !dbg !850
  %146 = load %struct.Node** %mp, align 4, !dbg !850
  %147 = getelementptr inbounds %struct.Node* %146, i32 0, i32 1, !dbg !850
  %148 = bitcast %union.TKey* %147 to %struct.anon*, !dbg !850
  %149 = getelementptr inbounds %struct.anon* %148, i32 0, i32 2, !dbg !850
  %150 = load i32* %149, align 4, !dbg !850
  %151 = getelementptr inbounds %struct.Node* %145, i32 %150, !dbg !850
  %152 = load %struct.Node** %f, align 4, !dbg !850
  %153 = ptrtoint %struct.Node* %151 to i32, !dbg !850
  %154 = ptrtoint %struct.Node* %152 to i32, !dbg !850
  %155 = sub i32 %153, %154, !dbg !850
  %156 = sdiv exact i32 %155, 32, !dbg !850
  %157 = load %struct.Node** %f, align 4, !dbg !850
  %158 = getelementptr inbounds %struct.Node* %157, i32 0, i32 1, !dbg !850
  %159 = bitcast %union.TKey* %158 to %struct.anon*, !dbg !850
  %160 = getelementptr inbounds %struct.anon* %159, i32 0, i32 2, !dbg !850
  store i32 %156, i32* %160, align 4, !dbg !850
  br label %162, !dbg !850

; <label>:161                                     ; preds = %137
  br label %162

; <label>:162                                     ; preds = %161, %144
  %163 = load %struct.Node** %f, align 4, !dbg !851
  %164 = load %struct.Node** %mp, align 4, !dbg !851
  %165 = ptrtoint %struct.Node* %163 to i32, !dbg !851
  %166 = ptrtoint %struct.Node* %164 to i32, !dbg !851
  %167 = sub i32 %165, %166, !dbg !851
  %168 = sdiv exact i32 %167, 32, !dbg !851
  %169 = load %struct.Node** %mp, align 4, !dbg !851
  %170 = getelementptr inbounds %struct.Node* %169, i32 0, i32 1, !dbg !851
  %171 = bitcast %union.TKey* %170 to %struct.anon*, !dbg !851
  %172 = getelementptr inbounds %struct.anon* %171, i32 0, i32 2, !dbg !851
  store i32 %168, i32* %172, align 4, !dbg !851
  %173 = load %struct.Node** %f, align 4, !dbg !852
  store %struct.Node* %173, %struct.Node** %mp, align 4, !dbg !852
  br label %174

; <label>:174                                     ; preds = %162, %133
  br label %175, !dbg !853

; <label>:175                                     ; preds = %174, %51
  call void @llvm.dbg.declare(metadata !{%union.TKey** %k_}, metadata !854), !dbg !857
  %176 = load %struct.Node** %mp, align 4, !dbg !857
  %177 = getelementptr inbounds %struct.Node* %176, i32 0, i32 1, !dbg !857
  store %union.TKey* %177, %union.TKey** %k_, align 4, !dbg !857
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %io_}, metadata !858), !dbg !857
  %178 = load %struct.lua_TValue** %4, align 4, !dbg !857
  store %struct.lua_TValue* %178, %struct.lua_TValue** %io_, align 4, !dbg !857
  %179 = load %union.TKey** %k_, align 4, !dbg !857
  %180 = bitcast %union.TKey* %179 to %struct.anon*, !dbg !857
  %181 = getelementptr inbounds %struct.anon* %180, i32 0, i32 0, !dbg !857
  %182 = load %struct.lua_TValue** %io_, align 4, !dbg !857
  %183 = getelementptr inbounds %struct.lua_TValue* %182, i32 0, i32 0, !dbg !857
  %184 = bitcast %union.Value* %181 to i8*, !dbg !857
  %185 = bitcast %union.Value* %183 to i8*, !dbg !857
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %184, i8* %185, i32 8, i32 8, i1 false), !dbg !857
  %186 = load %struct.lua_TValue** %io_, align 4, !dbg !857
  %187 = getelementptr inbounds %struct.lua_TValue* %186, i32 0, i32 1, !dbg !857
  %188 = load i32* %187, align 4, !dbg !857
  %189 = load %union.TKey** %k_, align 4, !dbg !857
  %190 = bitcast %union.TKey* %189 to %struct.anon*, !dbg !857
  %191 = getelementptr inbounds %struct.anon* %190, i32 0, i32 1, !dbg !857
  store i32 %188, i32* %191, align 4, !dbg !857
  %192 = load %struct.lua_State** %2, align 4, !dbg !857
  %193 = load %struct.lua_TValue** %4, align 4, !dbg !859
  %194 = getelementptr inbounds %struct.lua_TValue* %193, i32 0, i32 1, !dbg !859
  %195 = load i32* %194, align 4, !dbg !859
  %196 = and i32 %195, 64, !dbg !859
  %197 = icmp ne i32 %196, 0, !dbg !859
  br i1 %197, label %198, label %218, !dbg !859

; <label>:198                                     ; preds = %175
  %199 = load %struct.Table** %3, align 4, !dbg !860
  %200 = getelementptr inbounds %struct.Table* %199, i32 0, i32 2, !dbg !860
  %201 = load i8* %200, align 1, !dbg !860
  %202 = zext i8 %201 to i32, !dbg !860
  %203 = and i32 %202, 4, !dbg !860
  %204 = icmp ne i32 %203, 0, !dbg !860
  br i1 %204, label %205, label %218, !dbg !860

; <label>:205                                     ; preds = %198
  %206 = load %struct.lua_TValue** %4, align 4, !dbg !862
  %207 = getelementptr inbounds %struct.lua_TValue* %206, i32 0, i32 0, !dbg !862
  %208 = bitcast %union.Value* %207 to %struct.GCObject**, !dbg !862
  %209 = load %struct.GCObject** %208, align 4, !dbg !862
  %210 = getelementptr inbounds %struct.GCObject* %209, i32 0, i32 2, !dbg !862
  %211 = load i8* %210, align 1, !dbg !862
  %212 = zext i8 %211 to i32, !dbg !862
  %213 = and i32 %212, 3, !dbg !862
  %214 = icmp ne i32 %213, 0, !dbg !862
  br i1 %214, label %215, label %218, !dbg !862

; <label>:215                                     ; preds = %205
  %216 = load %struct.lua_State** %2, align 4, !dbg !864
  %217 = load %struct.Table** %3, align 4, !dbg !864
  call void @luaC_barrierback_(%struct.lua_State* %216, %struct.Table* %217), !dbg !864
  br label %219, !dbg !864

; <label>:218                                     ; preds = %205, %198, %175
  br label %219, !dbg !866

; <label>:219                                     ; preds = %218, %215
  %220 = load %struct.Node** %mp, align 4, !dbg !870
  %221 = getelementptr inbounds %struct.Node* %220, i32 0, i32 0, !dbg !870
  store %struct.lua_TValue* %221, %struct.lua_TValue** %1, !dbg !870
  br label %222, !dbg !870

; <label>:222                                     ; preds = %219, %59
  %223 = load %struct.lua_TValue** %1, !dbg !871
  ret %struct.lua_TValue* %223, !dbg !871
}

; Function Attrs: noreturn
declare hidden void @luaG_runerror(%struct.lua_State*, i8*, ...) #3

declare hidden i32 @luaV_tointeger(%struct.lua_TValue*, i64*, i32) #4

; Function Attrs: nounwind
define internal %struct.Node* @mainposition(%struct.Table* %t, %struct.lua_TValue* %key) #0 {
  %1 = alloca %struct.Node*, align 4
  %2 = alloca %struct.Table*, align 4
  %3 = alloca %struct.lua_TValue*, align 4
  store %struct.Table* %t, %struct.Table** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.Table** %2}, metadata !872), !dbg !873
  store %struct.lua_TValue* %key, %struct.lua_TValue** %3, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %3}, metadata !874), !dbg !875
  %4 = load %struct.lua_TValue** %3, align 4, !dbg !876
  %5 = getelementptr inbounds %struct.lua_TValue* %4, i32 0, i32 1, !dbg !876
  %6 = load i32* %5, align 4, !dbg !876
  %7 = and i32 %6, 63, !dbg !876
  switch i32 %7, label %135 [
    i32 19, label %8
    i32 3, label %26
    i32 4, label %44
    i32 20, label %64
    i32 1, label %83
    i32 2, label %99
    i32 22, label %117
  ], !dbg !876

; <label>:8                                       ; preds = %0
  %9 = load %struct.lua_TValue** %3, align 4, !dbg !877
  %10 = getelementptr inbounds %struct.lua_TValue* %9, i32 0, i32 0, !dbg !877
  %11 = bitcast %union.Value* %10 to i64*, !dbg !877
  %12 = load i64* %11, align 8, !dbg !877
  %13 = load %struct.Table** %2, align 4, !dbg !877
  %14 = getelementptr inbounds %struct.Table* %13, i32 0, i32 4, !dbg !877
  %15 = load i8* %14, align 1, !dbg !877
  %16 = zext i8 %15 to i32, !dbg !877
  %17 = shl i32 1, %16, !dbg !877
  %18 = sub nsw i32 %17, 1, !dbg !877
  %19 = sext i32 %18 to i64, !dbg !877
  %20 = and i64 %12, %19, !dbg !877
  %21 = trunc i64 %20 to i32, !dbg !877
  %22 = load %struct.Table** %2, align 4, !dbg !877
  %23 = getelementptr inbounds %struct.Table* %22, i32 0, i32 7, !dbg !877
  %24 = load %struct.Node** %23, align 4, !dbg !877
  %25 = getelementptr inbounds %struct.Node* %24, i32 %21, !dbg !877
  store %struct.Node* %25, %struct.Node** %1, !dbg !877
  br label %153, !dbg !877

; <label>:26                                      ; preds = %0
  %27 = load %struct.lua_TValue** %3, align 4, !dbg !879
  %28 = getelementptr inbounds %struct.lua_TValue* %27, i32 0, i32 0, !dbg !879
  %29 = bitcast %union.Value* %28 to double*, !dbg !879
  %30 = load double* %29, align 8, !dbg !879
  %31 = call i32 @l_hashfloat(double %30), !dbg !879
  %32 = load %struct.Table** %2, align 4, !dbg !879
  %33 = getelementptr inbounds %struct.Table* %32, i32 0, i32 4, !dbg !879
  %34 = load i8* %33, align 1, !dbg !879
  %35 = zext i8 %34 to i32, !dbg !879
  %36 = shl i32 1, %35, !dbg !879
  %37 = sub nsw i32 %36, 1, !dbg !879
  %38 = or i32 %37, 1, !dbg !879
  %39 = srem i32 %31, %38, !dbg !879
  %40 = load %struct.Table** %2, align 4, !dbg !879
  %41 = getelementptr inbounds %struct.Table* %40, i32 0, i32 7, !dbg !879
  %42 = load %struct.Node** %41, align 4, !dbg !879
  %43 = getelementptr inbounds %struct.Node* %42, i32 %39, !dbg !879
  store %struct.Node* %43, %struct.Node** %1, !dbg !879
  br label %153, !dbg !879

; <label>:44                                      ; preds = %0
  %45 = load %struct.lua_TValue** %3, align 4, !dbg !880
  %46 = getelementptr inbounds %struct.lua_TValue* %45, i32 0, i32 0, !dbg !880
  %47 = bitcast %union.Value* %46 to %struct.GCObject**, !dbg !880
  %48 = load %struct.GCObject** %47, align 4, !dbg !880
  %49 = bitcast %struct.GCObject* %48 to %union.GCUnion*, !dbg !880
  %50 = bitcast %union.GCUnion* %49 to %struct.TString*, !dbg !880
  %51 = getelementptr inbounds %struct.TString* %50, i32 0, i32 5, !dbg !880
  %52 = load i32* %51, align 4, !dbg !880
  %53 = load %struct.Table** %2, align 4, !dbg !880
  %54 = getelementptr inbounds %struct.Table* %53, i32 0, i32 4, !dbg !880
  %55 = load i8* %54, align 1, !dbg !880
  %56 = zext i8 %55 to i32, !dbg !880
  %57 = shl i32 1, %56, !dbg !880
  %58 = sub nsw i32 %57, 1, !dbg !880
  %59 = and i32 %52, %58, !dbg !880
  %60 = load %struct.Table** %2, align 4, !dbg !880
  %61 = getelementptr inbounds %struct.Table* %60, i32 0, i32 7, !dbg !880
  %62 = load %struct.Node** %61, align 4, !dbg !880
  %63 = getelementptr inbounds %struct.Node* %62, i32 %59, !dbg !880
  store %struct.Node* %63, %struct.Node** %1, !dbg !880
  br label %153, !dbg !880

; <label>:64                                      ; preds = %0
  %65 = load %struct.lua_TValue** %3, align 4, !dbg !881
  %66 = getelementptr inbounds %struct.lua_TValue* %65, i32 0, i32 0, !dbg !881
  %67 = bitcast %union.Value* %66 to %struct.GCObject**, !dbg !881
  %68 = load %struct.GCObject** %67, align 4, !dbg !881
  %69 = bitcast %struct.GCObject* %68 to %union.GCUnion*, !dbg !881
  %70 = bitcast %union.GCUnion* %69 to %struct.TString*, !dbg !881
  %71 = call i32 @luaS_hashlongstr(%struct.TString* %70), !dbg !881
  %72 = load %struct.Table** %2, align 4, !dbg !881
  %73 = getelementptr inbounds %struct.Table* %72, i32 0, i32 4, !dbg !881
  %74 = load i8* %73, align 1, !dbg !881
  %75 = zext i8 %74 to i32, !dbg !881
  %76 = shl i32 1, %75, !dbg !881
  %77 = sub nsw i32 %76, 1, !dbg !881
  %78 = and i32 %71, %77, !dbg !881
  %79 = load %struct.Table** %2, align 4, !dbg !881
  %80 = getelementptr inbounds %struct.Table* %79, i32 0, i32 7, !dbg !881
  %81 = load %struct.Node** %80, align 4, !dbg !881
  %82 = getelementptr inbounds %struct.Node* %81, i32 %78, !dbg !881
  store %struct.Node* %82, %struct.Node** %1, !dbg !881
  br label %153, !dbg !881

; <label>:83                                      ; preds = %0
  %84 = load %struct.lua_TValue** %3, align 4, !dbg !882
  %85 = getelementptr inbounds %struct.lua_TValue* %84, i32 0, i32 0, !dbg !882
  %86 = bitcast %union.Value* %85 to i32*, !dbg !882
  %87 = load i32* %86, align 4, !dbg !882
  %88 = load %struct.Table** %2, align 4, !dbg !882
  %89 = getelementptr inbounds %struct.Table* %88, i32 0, i32 4, !dbg !882
  %90 = load i8* %89, align 1, !dbg !882
  %91 = zext i8 %90 to i32, !dbg !882
  %92 = shl i32 1, %91, !dbg !882
  %93 = sub nsw i32 %92, 1, !dbg !882
  %94 = and i32 %87, %93, !dbg !882
  %95 = load %struct.Table** %2, align 4, !dbg !882
  %96 = getelementptr inbounds %struct.Table* %95, i32 0, i32 7, !dbg !882
  %97 = load %struct.Node** %96, align 4, !dbg !882
  %98 = getelementptr inbounds %struct.Node* %97, i32 %94, !dbg !882
  store %struct.Node* %98, %struct.Node** %1, !dbg !882
  br label %153, !dbg !882

; <label>:99                                      ; preds = %0
  %100 = load %struct.lua_TValue** %3, align 4, !dbg !883
  %101 = getelementptr inbounds %struct.lua_TValue* %100, i32 0, i32 0, !dbg !883
  %102 = bitcast %union.Value* %101 to i8**, !dbg !883
  %103 = load i8** %102, align 4, !dbg !883
  %104 = ptrtoint i8* %103 to i32, !dbg !883
  %105 = load %struct.Table** %2, align 4, !dbg !883
  %106 = getelementptr inbounds %struct.Table* %105, i32 0, i32 4, !dbg !883
  %107 = load i8* %106, align 1, !dbg !883
  %108 = zext i8 %107 to i32, !dbg !883
  %109 = shl i32 1, %108, !dbg !883
  %110 = sub nsw i32 %109, 1, !dbg !883
  %111 = or i32 %110, 1, !dbg !883
  %112 = urem i32 %104, %111, !dbg !883
  %113 = load %struct.Table** %2, align 4, !dbg !883
  %114 = getelementptr inbounds %struct.Table* %113, i32 0, i32 7, !dbg !883
  %115 = load %struct.Node** %114, align 4, !dbg !883
  %116 = getelementptr inbounds %struct.Node* %115, i32 %112, !dbg !883
  store %struct.Node* %116, %struct.Node** %1, !dbg !883
  br label %153, !dbg !883

; <label>:117                                     ; preds = %0
  %118 = load %struct.lua_TValue** %3, align 4, !dbg !884
  %119 = getelementptr inbounds %struct.lua_TValue* %118, i32 0, i32 0, !dbg !884
  %120 = bitcast %union.Value* %119 to i32 (%struct.lua_State*)**, !dbg !884
  %121 = load i32 (%struct.lua_State*)** %120, align 4, !dbg !884
  %122 = ptrtoint i32 (%struct.lua_State*)* %121 to i32, !dbg !884
  %123 = load %struct.Table** %2, align 4, !dbg !884
  %124 = getelementptr inbounds %struct.Table* %123, i32 0, i32 4, !dbg !884
  %125 = load i8* %124, align 1, !dbg !884
  %126 = zext i8 %125 to i32, !dbg !884
  %127 = shl i32 1, %126, !dbg !884
  %128 = sub nsw i32 %127, 1, !dbg !884
  %129 = or i32 %128, 1, !dbg !884
  %130 = urem i32 %122, %129, !dbg !884
  %131 = load %struct.Table** %2, align 4, !dbg !884
  %132 = getelementptr inbounds %struct.Table* %131, i32 0, i32 7, !dbg !884
  %133 = load %struct.Node** %132, align 4, !dbg !884
  %134 = getelementptr inbounds %struct.Node* %133, i32 %130, !dbg !884
  store %struct.Node* %134, %struct.Node** %1, !dbg !884
  br label %153, !dbg !884

; <label>:135                                     ; preds = %0
  %136 = load %struct.lua_TValue** %3, align 4, !dbg !885
  %137 = getelementptr inbounds %struct.lua_TValue* %136, i32 0, i32 0, !dbg !885
  %138 = bitcast %union.Value* %137 to %struct.GCObject**, !dbg !885
  %139 = load %struct.GCObject** %138, align 4, !dbg !885
  %140 = ptrtoint %struct.GCObject* %139 to i32, !dbg !885
  %141 = load %struct.Table** %2, align 4, !dbg !885
  %142 = getelementptr inbounds %struct.Table* %141, i32 0, i32 4, !dbg !885
  %143 = load i8* %142, align 1, !dbg !885
  %144 = zext i8 %143 to i32, !dbg !885
  %145 = shl i32 1, %144, !dbg !885
  %146 = sub nsw i32 %145, 1, !dbg !885
  %147 = or i32 %146, 1, !dbg !885
  %148 = urem i32 %140, %147, !dbg !885
  %149 = load %struct.Table** %2, align 4, !dbg !885
  %150 = getelementptr inbounds %struct.Table* %149, i32 0, i32 7, !dbg !885
  %151 = load %struct.Node** %150, align 4, !dbg !885
  %152 = getelementptr inbounds %struct.Node* %151, i32 %148, !dbg !885
  store %struct.Node* %152, %struct.Node** %1, !dbg !885
  br label %153, !dbg !885

; <label>:153                                     ; preds = %135, %117, %99, %83, %64, %44, %26, %8
  %154 = load %struct.Node** %1, !dbg !886
  ret %struct.Node* %154, !dbg !886
}

; Function Attrs: nounwind
define internal %struct.Node* @getfreepos(%struct.Table* %t) #0 {
  %1 = alloca %struct.Node*, align 4
  %2 = alloca %struct.Table*, align 4
  store %struct.Table* %t, %struct.Table** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.Table** %2}, metadata !887), !dbg !888
  br label %3, !dbg !889

; <label>:3                                       ; preds = %28, %0
  %4 = load %struct.Table** %2, align 4, !dbg !890
  %5 = getelementptr inbounds %struct.Table* %4, i32 0, i32 8, !dbg !890
  %6 = load %struct.Node** %5, align 4, !dbg !890
  %7 = load %struct.Table** %2, align 4, !dbg !890
  %8 = getelementptr inbounds %struct.Table* %7, i32 0, i32 7, !dbg !890
  %9 = load %struct.Node** %8, align 4, !dbg !890
  %10 = icmp ugt %struct.Node* %6, %9, !dbg !890
  br i1 %10, label %11, label %29, !dbg !890

; <label>:11                                      ; preds = %3
  %12 = load %struct.Table** %2, align 4, !dbg !892
  %13 = getelementptr inbounds %struct.Table* %12, i32 0, i32 8, !dbg !892
  %14 = load %struct.Node** %13, align 4, !dbg !892
  %15 = getelementptr inbounds %struct.Node* %14, i32 -1, !dbg !892
  store %struct.Node* %15, %struct.Node** %13, align 4, !dbg !892
  %16 = load %struct.Table** %2, align 4, !dbg !894
  %17 = getelementptr inbounds %struct.Table* %16, i32 0, i32 8, !dbg !894
  %18 = load %struct.Node** %17, align 4, !dbg !894
  %19 = getelementptr inbounds %struct.Node* %18, i32 0, i32 1, !dbg !894
  %20 = bitcast %union.TKey* %19 to %struct.lua_TValue*, !dbg !894
  %21 = getelementptr inbounds %struct.lua_TValue* %20, i32 0, i32 1, !dbg !894
  %22 = load i32* %21, align 4, !dbg !894
  %23 = icmp eq i32 %22, 0, !dbg !894
  br i1 %23, label %24, label %28, !dbg !894

; <label>:24                                      ; preds = %11
  %25 = load %struct.Table** %2, align 4, !dbg !896
  %26 = getelementptr inbounds %struct.Table* %25, i32 0, i32 8, !dbg !896
  %27 = load %struct.Node** %26, align 4, !dbg !896
  store %struct.Node* %27, %struct.Node** %1, !dbg !896
  br label %30, !dbg !896

; <label>:28                                      ; preds = %11
  br label %3, !dbg !897

; <label>:29                                      ; preds = %3
  store %struct.Node* null, %struct.Node** %1, !dbg !898
  br label %30, !dbg !898

; <label>:30                                      ; preds = %29, %24
  %31 = load %struct.Node** %1, !dbg !899
  ret %struct.Node* %31, !dbg !899
}

; Function Attrs: nounwind
define internal void @rehash(%struct.lua_State* %L, %struct.Table* %t, %struct.lua_TValue* %ek) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca %struct.Table*, align 4
  %3 = alloca %struct.lua_TValue*, align 4
  %asize = alloca i32, align 4
  %na = alloca i32, align 4
  %nums = alloca [32 x i32], align 4
  %i = alloca i32, align 4
  %totaluse = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !900), !dbg !901
  store %struct.Table* %t, %struct.Table** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.Table** %2}, metadata !902), !dbg !903
  store %struct.lua_TValue* %ek, %struct.lua_TValue** %3, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %3}, metadata !904), !dbg !905
  call void @llvm.dbg.declare(metadata !{i32* %asize}, metadata !906), !dbg !907
  call void @llvm.dbg.declare(metadata !{i32* %na}, metadata !908), !dbg !909
  call void @llvm.dbg.declare(metadata !{[32 x i32]* %nums}, metadata !910), !dbg !914
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !915), !dbg !916
  call void @llvm.dbg.declare(metadata !{i32* %totaluse}, metadata !917), !dbg !918
  store i32 0, i32* %i, align 4, !dbg !919
  br label %4, !dbg !919

; <label>:4                                       ; preds = %10, %0
  %5 = load i32* %i, align 4, !dbg !921
  %6 = icmp sle i32 %5, 31, !dbg !921
  br i1 %6, label %7, label %13, !dbg !921

; <label>:7                                       ; preds = %4
  %8 = load i32* %i, align 4, !dbg !924
  %9 = getelementptr inbounds [32 x i32]* %nums, i32 0, i32 %8, !dbg !924
  store i32 0, i32* %9, align 4, !dbg !924
  br label %10, !dbg !924

; <label>:10                                      ; preds = %7
  %11 = load i32* %i, align 4, !dbg !926
  %12 = add nsw i32 %11, 1, !dbg !926
  store i32 %12, i32* %i, align 4, !dbg !926
  br label %4, !dbg !926

; <label>:13                                      ; preds = %4
  %14 = load %struct.Table** %2, align 4, !dbg !928
  %15 = getelementptr inbounds [32 x i32]* %nums, i32 0, i32 0, !dbg !928
  %16 = call i32 @numusearray(%struct.Table* %14, i32* %15), !dbg !928
  store i32 %16, i32* %na, align 4, !dbg !928
  %17 = load i32* %na, align 4, !dbg !929
  store i32 %17, i32* %totaluse, align 4, !dbg !929
  %18 = load %struct.Table** %2, align 4, !dbg !930
  %19 = getelementptr inbounds [32 x i32]* %nums, i32 0, i32 0, !dbg !930
  %20 = call i32 @numusehash(%struct.Table* %18, i32* %19, i32* %na), !dbg !930
  %21 = load i32* %totaluse, align 4, !dbg !930
  %22 = add nsw i32 %21, %20, !dbg !930
  store i32 %22, i32* %totaluse, align 4, !dbg !930
  %23 = load %struct.lua_TValue** %3, align 4, !dbg !931
  %24 = getelementptr inbounds [32 x i32]* %nums, i32 0, i32 0, !dbg !931
  %25 = call i32 @countint(%struct.lua_TValue* %23, i32* %24), !dbg !931
  %26 = load i32* %na, align 4, !dbg !931
  %27 = add i32 %26, %25, !dbg !931
  store i32 %27, i32* %na, align 4, !dbg !931
  %28 = load i32* %totaluse, align 4, !dbg !932
  %29 = add nsw i32 %28, 1, !dbg !932
  store i32 %29, i32* %totaluse, align 4, !dbg !932
  %30 = getelementptr inbounds [32 x i32]* %nums, i32 0, i32 0, !dbg !933
  %31 = call i32 @computesizes(i32* %30, i32* %na), !dbg !933
  store i32 %31, i32* %asize, align 4, !dbg !933
  %32 = load %struct.lua_State** %1, align 4, !dbg !934
  %33 = load %struct.Table** %2, align 4, !dbg !934
  %34 = load i32* %asize, align 4, !dbg !934
  %35 = load i32* %totaluse, align 4, !dbg !934
  %36 = load i32* %na, align 4, !dbg !934
  %37 = sub i32 %35, %36, !dbg !934
  call void @luaH_resize(%struct.lua_State* %32, %struct.Table* %33, i32 %34, i32 %37), !dbg !934
  ret void, !dbg !935
}

declare hidden void @luaC_barrierback_(%struct.lua_State*, %struct.Table*) #4

; Function Attrs: nounwind
define hidden %struct.lua_TValue* @luaH_getint(%struct.Table* %t, i64 %key) #0 {
  %1 = alloca %struct.lua_TValue*, align 4
  %2 = alloca %struct.Table*, align 4
  %3 = alloca i64, align 8
  %n = alloca %struct.Node*, align 4
  %nx = alloca i32, align 4
  store %struct.Table* %t, %struct.Table** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.Table** %2}, metadata !936), !dbg !937
  store i64 %key, i64* %3, align 8
  call void @llvm.dbg.declare(metadata !{i64* %3}, metadata !938), !dbg !939
  %4 = load i64* %3, align 8, !dbg !940
  %5 = sub i64 %4, 1, !dbg !940
  %6 = load %struct.Table** %2, align 4, !dbg !940
  %7 = getelementptr inbounds %struct.Table* %6, i32 0, i32 5, !dbg !940
  %8 = load i32* %7, align 4, !dbg !940
  %9 = zext i32 %8 to i64, !dbg !940
  %10 = icmp ult i64 %5, %9, !dbg !940
  br i1 %10, label %11, label %19, !dbg !940

; <label>:11                                      ; preds = %0
  %12 = load i64* %3, align 8, !dbg !942
  %13 = sub nsw i64 %12, 1, !dbg !942
  %14 = trunc i64 %13 to i32, !dbg !942
  %15 = load %struct.Table** %2, align 4, !dbg !942
  %16 = getelementptr inbounds %struct.Table* %15, i32 0, i32 6, !dbg !942
  %17 = load %struct.lua_TValue** %16, align 4, !dbg !942
  %18 = getelementptr inbounds %struct.lua_TValue* %17, i32 %14, !dbg !942
  store %struct.lua_TValue* %18, %struct.lua_TValue** %1, !dbg !942
  br label %68, !dbg !942

; <label>:19                                      ; preds = %0
  call void @llvm.dbg.declare(metadata !{%struct.Node** %n}, metadata !943), !dbg !945
  %20 = load i64* %3, align 8, !dbg !946
  %21 = load %struct.Table** %2, align 4, !dbg !946
  %22 = getelementptr inbounds %struct.Table* %21, i32 0, i32 4, !dbg !946
  %23 = load i8* %22, align 1, !dbg !946
  %24 = zext i8 %23 to i32, !dbg !946
  %25 = shl i32 1, %24, !dbg !946
  %26 = sub nsw i32 %25, 1, !dbg !946
  %27 = sext i32 %26 to i64, !dbg !946
  %28 = and i64 %20, %27, !dbg !946
  %29 = trunc i64 %28 to i32, !dbg !946
  %30 = load %struct.Table** %2, align 4, !dbg !946
  %31 = getelementptr inbounds %struct.Table* %30, i32 0, i32 7, !dbg !946
  %32 = load %struct.Node** %31, align 4, !dbg !946
  %33 = getelementptr inbounds %struct.Node* %32, i32 %29, !dbg !946
  store %struct.Node* %33, %struct.Node** %n, align 4, !dbg !946
  br label %34, !dbg !947

; <label>:34                                      ; preds = %66, %19
  %35 = load %struct.Node** %n, align 4, !dbg !949
  %36 = getelementptr inbounds %struct.Node* %35, i32 0, i32 1, !dbg !949
  %37 = bitcast %union.TKey* %36 to %struct.lua_TValue*, !dbg !949
  %38 = getelementptr inbounds %struct.lua_TValue* %37, i32 0, i32 1, !dbg !949
  %39 = load i32* %38, align 4, !dbg !949
  %40 = icmp eq i32 %39, 19, !dbg !949
  br i1 %40, label %41, label %53, !dbg !949

; <label>:41                                      ; preds = %34
  %42 = load %struct.Node** %n, align 4, !dbg !952
  %43 = getelementptr inbounds %struct.Node* %42, i32 0, i32 1, !dbg !952
  %44 = bitcast %union.TKey* %43 to %struct.lua_TValue*, !dbg !952
  %45 = getelementptr inbounds %struct.lua_TValue* %44, i32 0, i32 0, !dbg !952
  %46 = bitcast %union.Value* %45 to i64*, !dbg !952
  %47 = load i64* %46, align 8, !dbg !952
  %48 = load i64* %3, align 8, !dbg !952
  %49 = icmp eq i64 %47, %48, !dbg !952
  br i1 %49, label %50, label %53, !dbg !952

; <label>:50                                      ; preds = %41
  %51 = load %struct.Node** %n, align 4, !dbg !954
  %52 = getelementptr inbounds %struct.Node* %51, i32 0, i32 0, !dbg !954
  store %struct.lua_TValue* %52, %struct.lua_TValue** %1, !dbg !954
  br label %68, !dbg !954

; <label>:53                                      ; preds = %41, %34
  call void @llvm.dbg.declare(metadata !{i32* %nx}, metadata !955), !dbg !957
  %54 = load %struct.Node** %n, align 4, !dbg !958
  %55 = getelementptr inbounds %struct.Node* %54, i32 0, i32 1, !dbg !958
  %56 = bitcast %union.TKey* %55 to %struct.anon*, !dbg !958
  %57 = getelementptr inbounds %struct.anon* %56, i32 0, i32 2, !dbg !958
  %58 = load i32* %57, align 4, !dbg !958
  store i32 %58, i32* %nx, align 4, !dbg !958
  %59 = load i32* %nx, align 4, !dbg !959
  %60 = icmp eq i32 %59, 0, !dbg !959
  br i1 %60, label %61, label %62, !dbg !959

; <label>:61                                      ; preds = %53
  br label %67, !dbg !961

; <label>:62                                      ; preds = %53
  %63 = load i32* %nx, align 4, !dbg !963
  %64 = load %struct.Node** %n, align 4, !dbg !963
  %65 = getelementptr inbounds %struct.Node* %64, i32 %63, !dbg !963
  store %struct.Node* %65, %struct.Node** %n, align 4, !dbg !963
  br label %66

; <label>:66                                      ; preds = %62
  br label %34, !dbg !964

; <label>:67                                      ; preds = %61
  store %struct.lua_TValue* @luaO_nilobject_, %struct.lua_TValue** %1, !dbg !965
  br label %68, !dbg !965

; <label>:68                                      ; preds = %67, %50, %11
  %69 = load %struct.lua_TValue** %1, !dbg !966
  ret %struct.lua_TValue* %69, !dbg !966
}

; Function Attrs: nounwind
define hidden %struct.lua_TValue* @luaH_getshortstr(%struct.Table* %t, %struct.TString* %key) #0 {
  %1 = alloca %struct.lua_TValue*, align 4
  %2 = alloca %struct.Table*, align 4
  %3 = alloca %struct.TString*, align 4
  %n = alloca %struct.Node*, align 4
  %k = alloca %struct.lua_TValue*, align 4
  %nx = alloca i32, align 4
  store %struct.Table* %t, %struct.Table** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.Table** %2}, metadata !967), !dbg !968
  store %struct.TString* %key, %struct.TString** %3, align 4
  call void @llvm.dbg.declare(metadata !{%struct.TString** %3}, metadata !969), !dbg !970
  call void @llvm.dbg.declare(metadata !{%struct.Node** %n}, metadata !971), !dbg !972
  %4 = load %struct.TString** %3, align 4, !dbg !973
  %5 = getelementptr inbounds %struct.TString* %4, i32 0, i32 5, !dbg !973
  %6 = load i32* %5, align 4, !dbg !973
  %7 = load %struct.Table** %2, align 4, !dbg !973
  %8 = getelementptr inbounds %struct.Table* %7, i32 0, i32 4, !dbg !973
  %9 = load i8* %8, align 1, !dbg !973
  %10 = zext i8 %9 to i32, !dbg !973
  %11 = shl i32 1, %10, !dbg !973
  %12 = sub nsw i32 %11, 1, !dbg !973
  %13 = and i32 %6, %12, !dbg !973
  %14 = load %struct.Table** %2, align 4, !dbg !973
  %15 = getelementptr inbounds %struct.Table* %14, i32 0, i32 7, !dbg !973
  %16 = load %struct.Node** %15, align 4, !dbg !973
  %17 = getelementptr inbounds %struct.Node* %16, i32 %13, !dbg !973
  store %struct.Node* %17, %struct.Node** %n, align 4, !dbg !973
  br label %18, !dbg !974

; <label>:18                                      ; preds = %51, %0
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %k}, metadata !976), !dbg !978
  %19 = load %struct.Node** %n, align 4, !dbg !979
  %20 = getelementptr inbounds %struct.Node* %19, i32 0, i32 1, !dbg !979
  %21 = bitcast %union.TKey* %20 to %struct.lua_TValue*, !dbg !979
  store %struct.lua_TValue* %21, %struct.lua_TValue** %k, align 4, !dbg !979
  %22 = load %struct.lua_TValue** %k, align 4, !dbg !980
  %23 = getelementptr inbounds %struct.lua_TValue* %22, i32 0, i32 1, !dbg !980
  %24 = load i32* %23, align 4, !dbg !980
  %25 = icmp eq i32 %24, 68, !dbg !980
  br i1 %25, label %26, label %38, !dbg !980

; <label>:26                                      ; preds = %18
  %27 = load %struct.lua_TValue** %k, align 4, !dbg !982
  %28 = getelementptr inbounds %struct.lua_TValue* %27, i32 0, i32 0, !dbg !982
  %29 = bitcast %union.Value* %28 to %struct.GCObject**, !dbg !982
  %30 = load %struct.GCObject** %29, align 4, !dbg !982
  %31 = bitcast %struct.GCObject* %30 to %union.GCUnion*, !dbg !982
  %32 = bitcast %union.GCUnion* %31 to %struct.TString*, !dbg !982
  %33 = load %struct.TString** %3, align 4, !dbg !982
  %34 = icmp eq %struct.TString* %32, %33, !dbg !982
  br i1 %34, label %35, label %38, !dbg !982

; <label>:35                                      ; preds = %26
  %36 = load %struct.Node** %n, align 4, !dbg !984
  %37 = getelementptr inbounds %struct.Node* %36, i32 0, i32 0, !dbg !984
  store %struct.lua_TValue* %37, %struct.lua_TValue** %1, !dbg !984
  br label %52, !dbg !984

; <label>:38                                      ; preds = %26, %18
  call void @llvm.dbg.declare(metadata !{i32* %nx}, metadata !985), !dbg !987
  %39 = load %struct.Node** %n, align 4, !dbg !988
  %40 = getelementptr inbounds %struct.Node* %39, i32 0, i32 1, !dbg !988
  %41 = bitcast %union.TKey* %40 to %struct.anon*, !dbg !988
  %42 = getelementptr inbounds %struct.anon* %41, i32 0, i32 2, !dbg !988
  %43 = load i32* %42, align 4, !dbg !988
  store i32 %43, i32* %nx, align 4, !dbg !988
  %44 = load i32* %nx, align 4, !dbg !989
  %45 = icmp eq i32 %44, 0, !dbg !989
  br i1 %45, label %46, label %47, !dbg !989

; <label>:46                                      ; preds = %38
  store %struct.lua_TValue* @luaO_nilobject_, %struct.lua_TValue** %1, !dbg !991
  br label %52, !dbg !991

; <label>:47                                      ; preds = %38
  %48 = load i32* %nx, align 4, !dbg !992
  %49 = load %struct.Node** %n, align 4, !dbg !992
  %50 = getelementptr inbounds %struct.Node* %49, i32 %48, !dbg !992
  store %struct.Node* %50, %struct.Node** %n, align 4, !dbg !992
  br label %51

; <label>:51                                      ; preds = %47
  br label %18, !dbg !993

; <label>:52                                      ; preds = %46, %35
  %53 = load %struct.lua_TValue** %1, !dbg !994
  ret %struct.lua_TValue* %53, !dbg !994
}

; Function Attrs: nounwind
define hidden %struct.lua_TValue* @luaH_getstr(%struct.Table* %t, %struct.TString* %key) #0 {
  %1 = alloca %struct.lua_TValue*, align 4
  %2 = alloca %struct.Table*, align 4
  %3 = alloca %struct.TString*, align 4
  %ko = alloca %struct.lua_TValue, align 8
  %io = alloca %struct.lua_TValue*, align 4
  %x_ = alloca %struct.TString*, align 4
  store %struct.Table* %t, %struct.Table** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.Table** %2}, metadata !995), !dbg !996
  store %struct.TString* %key, %struct.TString** %3, align 4
  call void @llvm.dbg.declare(metadata !{%struct.TString** %3}, metadata !997), !dbg !998
  %4 = load %struct.TString** %3, align 4, !dbg !999
  %5 = getelementptr inbounds %struct.TString* %4, i32 0, i32 1, !dbg !999
  %6 = load i8* %5, align 1, !dbg !999
  %7 = zext i8 %6 to i32, !dbg !999
  %8 = icmp eq i32 %7, 4, !dbg !999
  br i1 %8, label %9, label %13, !dbg !999

; <label>:9                                       ; preds = %0
  %10 = load %struct.Table** %2, align 4, !dbg !1001
  %11 = load %struct.TString** %3, align 4, !dbg !1001
  %12 = call %struct.lua_TValue* @luaH_getshortstr(%struct.Table* %10, %struct.TString* %11), !dbg !1001
  store %struct.lua_TValue* %12, %struct.lua_TValue** %1, !dbg !1001
  br label %30, !dbg !1001

; <label>:13                                      ; preds = %0
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue* %ko}, metadata !1002), !dbg !1004
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %io}, metadata !1005), !dbg !1007
  store %struct.lua_TValue* %ko, %struct.lua_TValue** %io, align 4, !dbg !1007
  call void @llvm.dbg.declare(metadata !{%struct.TString** %x_}, metadata !1008), !dbg !1007
  %14 = load %struct.TString** %3, align 4, !dbg !1007
  store %struct.TString* %14, %struct.TString** %x_, align 4, !dbg !1007
  %15 = load %struct.TString** %x_, align 4, !dbg !1007
  %16 = bitcast %struct.TString* %15 to %union.GCUnion*, !dbg !1007
  %17 = bitcast %union.GCUnion* %16 to %struct.GCObject*, !dbg !1007
  %18 = load %struct.lua_TValue** %io, align 4, !dbg !1007
  %19 = getelementptr inbounds %struct.lua_TValue* %18, i32 0, i32 0, !dbg !1007
  %20 = bitcast %union.Value* %19 to %struct.GCObject**, !dbg !1007
  store %struct.GCObject* %17, %struct.GCObject** %20, align 4, !dbg !1007
  %21 = load %struct.TString** %x_, align 4, !dbg !1007
  %22 = getelementptr inbounds %struct.TString* %21, i32 0, i32 1, !dbg !1007
  %23 = load i8* %22, align 1, !dbg !1007
  %24 = zext i8 %23 to i32, !dbg !1007
  %25 = or i32 %24, 64, !dbg !1007
  %26 = load %struct.lua_TValue** %io, align 4, !dbg !1007
  %27 = getelementptr inbounds %struct.lua_TValue* %26, i32 0, i32 1, !dbg !1007
  store i32 %25, i32* %27, align 4, !dbg !1007
  %28 = load %struct.Table** %2, align 4, !dbg !1009
  %29 = call %struct.lua_TValue* @getgeneric(%struct.Table* %28, %struct.lua_TValue* %ko), !dbg !1009
  store %struct.lua_TValue* %29, %struct.lua_TValue** %1, !dbg !1009
  br label %30, !dbg !1009

; <label>:30                                      ; preds = %13, %9
  %31 = load %struct.lua_TValue** %1, !dbg !1010
  ret %struct.lua_TValue* %31, !dbg !1010
}

; Function Attrs: nounwind
define internal %struct.lua_TValue* @getgeneric(%struct.Table* %t, %struct.lua_TValue* %key) #0 {
  %1 = alloca %struct.lua_TValue*, align 4
  %2 = alloca %struct.Table*, align 4
  %3 = alloca %struct.lua_TValue*, align 4
  %n = alloca %struct.Node*, align 4
  %nx = alloca i32, align 4
  store %struct.Table* %t, %struct.Table** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.Table** %2}, metadata !1011), !dbg !1012
  store %struct.lua_TValue* %key, %struct.lua_TValue** %3, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %3}, metadata !1013), !dbg !1014
  call void @llvm.dbg.declare(metadata !{%struct.Node** %n}, metadata !1015), !dbg !1016
  %4 = load %struct.Table** %2, align 4, !dbg !1017
  %5 = load %struct.lua_TValue** %3, align 4, !dbg !1017
  %6 = call %struct.Node* @mainposition(%struct.Table* %4, %struct.lua_TValue* %5), !dbg !1017
  store %struct.Node* %6, %struct.Node** %n, align 4, !dbg !1017
  br label %7, !dbg !1018

; <label>:7                                       ; preds = %30, %0
  %8 = load %struct.Node** %n, align 4, !dbg !1020
  %9 = getelementptr inbounds %struct.Node* %8, i32 0, i32 1, !dbg !1020
  %10 = bitcast %union.TKey* %9 to %struct.lua_TValue*, !dbg !1020
  %11 = load %struct.lua_TValue** %3, align 4, !dbg !1020
  %12 = call i32 @luaV_equalobj(%struct.lua_State* null, %struct.lua_TValue* %10, %struct.lua_TValue* %11), !dbg !1020
  %13 = icmp ne i32 %12, 0, !dbg !1020
  br i1 %13, label %14, label %17, !dbg !1020

; <label>:14                                      ; preds = %7
  %15 = load %struct.Node** %n, align 4, !dbg !1023
  %16 = getelementptr inbounds %struct.Node* %15, i32 0, i32 0, !dbg !1023
  store %struct.lua_TValue* %16, %struct.lua_TValue** %1, !dbg !1023
  br label %31, !dbg !1023

; <label>:17                                      ; preds = %7
  call void @llvm.dbg.declare(metadata !{i32* %nx}, metadata !1024), !dbg !1026
  %18 = load %struct.Node** %n, align 4, !dbg !1027
  %19 = getelementptr inbounds %struct.Node* %18, i32 0, i32 1, !dbg !1027
  %20 = bitcast %union.TKey* %19 to %struct.anon*, !dbg !1027
  %21 = getelementptr inbounds %struct.anon* %20, i32 0, i32 2, !dbg !1027
  %22 = load i32* %21, align 4, !dbg !1027
  store i32 %22, i32* %nx, align 4, !dbg !1027
  %23 = load i32* %nx, align 4, !dbg !1028
  %24 = icmp eq i32 %23, 0, !dbg !1028
  br i1 %24, label %25, label %26, !dbg !1028

; <label>:25                                      ; preds = %17
  store %struct.lua_TValue* @luaO_nilobject_, %struct.lua_TValue** %1, !dbg !1030
  br label %31, !dbg !1030

; <label>:26                                      ; preds = %17
  %27 = load i32* %nx, align 4, !dbg !1031
  %28 = load %struct.Node** %n, align 4, !dbg !1031
  %29 = getelementptr inbounds %struct.Node* %28, i32 %27, !dbg !1031
  store %struct.Node* %29, %struct.Node** %n, align 4, !dbg !1031
  br label %30

; <label>:30                                      ; preds = %26
  br label %7, !dbg !1032

; <label>:31                                      ; preds = %25, %14
  %32 = load %struct.lua_TValue** %1, !dbg !1033
  ret %struct.lua_TValue* %32, !dbg !1033
}

; Function Attrs: nounwind
define hidden %struct.lua_TValue* @luaH_get(%struct.Table* %t, %struct.lua_TValue* %key) #0 {
  %1 = alloca %struct.lua_TValue*, align 4
  %2 = alloca %struct.Table*, align 4
  %3 = alloca %struct.lua_TValue*, align 4
  %k = alloca i64, align 8
  store %struct.Table* %t, %struct.Table** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.Table** %2}, metadata !1034), !dbg !1035
  store %struct.lua_TValue* %key, %struct.lua_TValue** %3, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %3}, metadata !1036), !dbg !1037
  %4 = load %struct.lua_TValue** %3, align 4, !dbg !1038
  %5 = getelementptr inbounds %struct.lua_TValue* %4, i32 0, i32 1, !dbg !1038
  %6 = load i32* %5, align 4, !dbg !1038
  %7 = and i32 %6, 63, !dbg !1038
  switch i32 %7, label %34 [
    i32 4, label %8
    i32 19, label %17
    i32 0, label %24
    i32 3, label %25
  ], !dbg !1038

; <label>:8                                       ; preds = %0
  %9 = load %struct.Table** %2, align 4, !dbg !1039
  %10 = load %struct.lua_TValue** %3, align 4, !dbg !1039
  %11 = getelementptr inbounds %struct.lua_TValue* %10, i32 0, i32 0, !dbg !1039
  %12 = bitcast %union.Value* %11 to %struct.GCObject**, !dbg !1039
  %13 = load %struct.GCObject** %12, align 4, !dbg !1039
  %14 = bitcast %struct.GCObject* %13 to %union.GCUnion*, !dbg !1039
  %15 = bitcast %union.GCUnion* %14 to %struct.TString*, !dbg !1039
  %16 = call %struct.lua_TValue* @luaH_getshortstr(%struct.Table* %9, %struct.TString* %15), !dbg !1039
  store %struct.lua_TValue* %16, %struct.lua_TValue** %1, !dbg !1039
  br label %38, !dbg !1039

; <label>:17                                      ; preds = %0
  %18 = load %struct.Table** %2, align 4, !dbg !1041
  %19 = load %struct.lua_TValue** %3, align 4, !dbg !1041
  %20 = getelementptr inbounds %struct.lua_TValue* %19, i32 0, i32 0, !dbg !1041
  %21 = bitcast %union.Value* %20 to i64*, !dbg !1041
  %22 = load i64* %21, align 8, !dbg !1041
  %23 = call %struct.lua_TValue* @luaH_getint(%struct.Table* %18, i64 %22), !dbg !1041
  store %struct.lua_TValue* %23, %struct.lua_TValue** %1, !dbg !1041
  br label %38, !dbg !1041

; <label>:24                                      ; preds = %0
  store %struct.lua_TValue* @luaO_nilobject_, %struct.lua_TValue** %1, !dbg !1042
  br label %38, !dbg !1042

; <label>:25                                      ; preds = %0
  call void @llvm.dbg.declare(metadata !{i64* %k}, metadata !1043), !dbg !1045
  %26 = load %struct.lua_TValue** %3, align 4, !dbg !1046
  %27 = call i32 @luaV_tointeger(%struct.lua_TValue* %26, i64* %k, i32 0), !dbg !1046
  %28 = icmp ne i32 %27, 0, !dbg !1046
  br i1 %28, label %29, label %33, !dbg !1046

; <label>:29                                      ; preds = %25
  %30 = load %struct.Table** %2, align 4, !dbg !1048
  %31 = load i64* %k, align 8, !dbg !1048
  %32 = call %struct.lua_TValue* @luaH_getint(%struct.Table* %30, i64 %31), !dbg !1048
  store %struct.lua_TValue* %32, %struct.lua_TValue** %1, !dbg !1048
  br label %38, !dbg !1048

; <label>:33                                      ; preds = %25
  br label %34, !dbg !1049

; <label>:34                                      ; preds = %0, %33
  %35 = load %struct.Table** %2, align 4, !dbg !1050
  %36 = load %struct.lua_TValue** %3, align 4, !dbg !1050
  %37 = call %struct.lua_TValue* @getgeneric(%struct.Table* %35, %struct.lua_TValue* %36), !dbg !1050
  store %struct.lua_TValue* %37, %struct.lua_TValue** %1, !dbg !1050
  br label %38, !dbg !1050

; <label>:38                                      ; preds = %34, %29, %24, %17, %8
  %39 = load %struct.lua_TValue** %1, !dbg !1051
  ret %struct.lua_TValue* %39, !dbg !1051
}

; Function Attrs: nounwind
define hidden i32 @luaH_getn(%struct.Table* %t) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.Table*, align 4
  %j = alloca i32, align 4
  %i = alloca i32, align 4
  %m = alloca i32, align 4
  store %struct.Table* %t, %struct.Table** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.Table** %2}, metadata !1052), !dbg !1053
  call void @llvm.dbg.declare(metadata !{i32* %j}, metadata !1054), !dbg !1055
  %3 = load %struct.Table** %2, align 4, !dbg !1056
  %4 = getelementptr inbounds %struct.Table* %3, i32 0, i32 5, !dbg !1056
  %5 = load i32* %4, align 4, !dbg !1056
  store i32 %5, i32* %j, align 4, !dbg !1056
  %6 = load i32* %j, align 4, !dbg !1057
  %7 = icmp ugt i32 %6, 0, !dbg !1057
  br i1 %7, label %8, label %45, !dbg !1057

; <label>:8                                       ; preds = %0
  %9 = load i32* %j, align 4, !dbg !1059
  %10 = sub i32 %9, 1, !dbg !1059
  %11 = load %struct.Table** %2, align 4, !dbg !1059
  %12 = getelementptr inbounds %struct.Table* %11, i32 0, i32 6, !dbg !1059
  %13 = load %struct.lua_TValue** %12, align 4, !dbg !1059
  %14 = getelementptr inbounds %struct.lua_TValue* %13, i32 %10, !dbg !1059
  %15 = getelementptr inbounds %struct.lua_TValue* %14, i32 0, i32 1, !dbg !1059
  %16 = load i32* %15, align 4, !dbg !1059
  %17 = icmp eq i32 %16, 0, !dbg !1059
  br i1 %17, label %18, label %45, !dbg !1059

; <label>:18                                      ; preds = %8
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !1061), !dbg !1063
  store i32 0, i32* %i, align 4, !dbg !1064
  br label %19, !dbg !1065

; <label>:19                                      ; preds = %42, %18
  %20 = load i32* %j, align 4, !dbg !1066
  %21 = load i32* %i, align 4, !dbg !1066
  %22 = sub i32 %20, %21, !dbg !1066
  %23 = icmp ugt i32 %22, 1, !dbg !1066
  br i1 %23, label %24, label %43, !dbg !1066

; <label>:24                                      ; preds = %19
  call void @llvm.dbg.declare(metadata !{i32* %m}, metadata !1068), !dbg !1070
  %25 = load i32* %i, align 4, !dbg !1071
  %26 = load i32* %j, align 4, !dbg !1071
  %27 = add i32 %25, %26, !dbg !1071
  %28 = udiv i32 %27, 2, !dbg !1071
  store i32 %28, i32* %m, align 4, !dbg !1071
  %29 = load i32* %m, align 4, !dbg !1072
  %30 = sub i32 %29, 1, !dbg !1072
  %31 = load %struct.Table** %2, align 4, !dbg !1072
  %32 = getelementptr inbounds %struct.Table* %31, i32 0, i32 6, !dbg !1072
  %33 = load %struct.lua_TValue** %32, align 4, !dbg !1072
  %34 = getelementptr inbounds %struct.lua_TValue* %33, i32 %30, !dbg !1072
  %35 = getelementptr inbounds %struct.lua_TValue* %34, i32 0, i32 1, !dbg !1072
  %36 = load i32* %35, align 4, !dbg !1072
  %37 = icmp eq i32 %36, 0, !dbg !1072
  br i1 %37, label %38, label %40, !dbg !1072

; <label>:38                                      ; preds = %24
  %39 = load i32* %m, align 4, !dbg !1074
  store i32 %39, i32* %j, align 4, !dbg !1074
  br label %42, !dbg !1074

; <label>:40                                      ; preds = %24
  %41 = load i32* %m, align 4, !dbg !1076
  store i32 %41, i32* %i, align 4, !dbg !1076
  br label %42

; <label>:42                                      ; preds = %40, %38
  br label %19, !dbg !1077

; <label>:43                                      ; preds = %19
  %44 = load i32* %i, align 4, !dbg !1078
  store i32 %44, i32* %1, !dbg !1078
  br label %56, !dbg !1078

; <label>:45                                      ; preds = %8, %0
  %46 = load %struct.Table** %2, align 4, !dbg !1079
  %47 = getelementptr inbounds %struct.Table* %46, i32 0, i32 7, !dbg !1079
  %48 = load %struct.Node** %47, align 4, !dbg !1079
  %49 = icmp eq %struct.Node* %48, bitcast ({ { { %struct.GCObject*, [4 x i8] }, i32, [4 x i8] }, { { { %struct.GCObject*, [4 x i8] }, i32, i32 } } }* @dummynode_ to %struct.Node*), !dbg !1079
  br i1 %49, label %50, label %52, !dbg !1079

; <label>:50                                      ; preds = %45
  %51 = load i32* %j, align 4, !dbg !1081
  store i32 %51, i32* %1, !dbg !1081
  br label %56, !dbg !1081

; <label>:52                                      ; preds = %45
  %53 = load %struct.Table** %2, align 4, !dbg !1082
  %54 = load i32* %j, align 4, !dbg !1082
  %55 = call i32 @unbound_search(%struct.Table* %53, i32 %54), !dbg !1082
  store i32 %55, i32* %1, !dbg !1082
  br label %56, !dbg !1082

; <label>:56                                      ; preds = %52, %50, %43
  %57 = load i32* %1, !dbg !1083
  ret i32 %57, !dbg !1083
}

; Function Attrs: nounwind
define internal i32 @unbound_search(%struct.Table* %t, i32 %j) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.Table*, align 4
  %3 = alloca i32, align 4
  %i = alloca i32, align 4
  %m = alloca i32, align 4
  store %struct.Table* %t, %struct.Table** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.Table** %2}, metadata !1084), !dbg !1085
  store i32 %j, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !1086), !dbg !1087
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !1088), !dbg !1089
  %4 = load i32* %3, align 4, !dbg !1090
  store i32 %4, i32* %i, align 4, !dbg !1090
  %5 = load i32* %3, align 4, !dbg !1091
  %6 = add i32 %5, 1, !dbg !1091
  store i32 %6, i32* %3, align 4, !dbg !1091
  br label %7, !dbg !1092

; <label>:7                                       ; preds = %36, %0
  %8 = load %struct.Table** %2, align 4, !dbg !1093
  %9 = load i32* %3, align 4, !dbg !1093
  %10 = zext i32 %9 to i64, !dbg !1093
  %11 = call %struct.lua_TValue* @luaH_getint(%struct.Table* %8, i64 %10), !dbg !1093
  %12 = getelementptr inbounds %struct.lua_TValue* %11, i32 0, i32 1, !dbg !1093
  %13 = load i32* %12, align 4, !dbg !1093
  %14 = icmp eq i32 %13, 0, !dbg !1093
  %15 = xor i1 %14, true, !dbg !1093
  br i1 %15, label %16, label %39, !dbg !1093

; <label>:16                                      ; preds = %7
  %17 = load i32* %3, align 4, !dbg !1095
  store i32 %17, i32* %i, align 4, !dbg !1095
  %18 = load i32* %3, align 4, !dbg !1097
  %19 = icmp ugt i32 %18, 1073741823, !dbg !1097
  br i1 %19, label %20, label %36, !dbg !1097

; <label>:20                                      ; preds = %16
  store i32 1, i32* %i, align 4, !dbg !1099
  br label %21, !dbg !1101

; <label>:21                                      ; preds = %30, %20
  %22 = load %struct.Table** %2, align 4, !dbg !1102
  %23 = load i32* %i, align 4, !dbg !1102
  %24 = zext i32 %23 to i64, !dbg !1102
  %25 = call %struct.lua_TValue* @luaH_getint(%struct.Table* %22, i64 %24), !dbg !1102
  %26 = getelementptr inbounds %struct.lua_TValue* %25, i32 0, i32 1, !dbg !1102
  %27 = load i32* %26, align 4, !dbg !1102
  %28 = icmp eq i32 %27, 0, !dbg !1102
  %29 = xor i1 %28, true, !dbg !1102
  br i1 %29, label %30, label %33, !dbg !1102

; <label>:30                                      ; preds = %21
  %31 = load i32* %i, align 4, !dbg !1105
  %32 = add i32 %31, 1, !dbg !1105
  store i32 %32, i32* %i, align 4, !dbg !1105
  br label %21, !dbg !1105

; <label>:33                                      ; preds = %21
  %34 = load i32* %i, align 4, !dbg !1107
  %35 = sub i32 %34, 1, !dbg !1107
  store i32 %35, i32* %1, !dbg !1107
  br label %64, !dbg !1107

; <label>:36                                      ; preds = %16
  %37 = load i32* %3, align 4, !dbg !1108
  %38 = mul i32 %37, 2, !dbg !1108
  store i32 %38, i32* %3, align 4, !dbg !1108
  br label %7, !dbg !1109

; <label>:39                                      ; preds = %7
  br label %40, !dbg !1110

; <label>:40                                      ; preds = %61, %39
  %41 = load i32* %3, align 4, !dbg !1111
  %42 = load i32* %i, align 4, !dbg !1111
  %43 = sub i32 %41, %42, !dbg !1111
  %44 = icmp ugt i32 %43, 1, !dbg !1111
  br i1 %44, label %45, label %62, !dbg !1111

; <label>:45                                      ; preds = %40
  call void @llvm.dbg.declare(metadata !{i32* %m}, metadata !1113), !dbg !1115
  %46 = load i32* %i, align 4, !dbg !1116
  %47 = load i32* %3, align 4, !dbg !1116
  %48 = add i32 %46, %47, !dbg !1116
  %49 = udiv i32 %48, 2, !dbg !1116
  store i32 %49, i32* %m, align 4, !dbg !1116
  %50 = load %struct.Table** %2, align 4, !dbg !1117
  %51 = load i32* %m, align 4, !dbg !1117
  %52 = zext i32 %51 to i64, !dbg !1117
  %53 = call %struct.lua_TValue* @luaH_getint(%struct.Table* %50, i64 %52), !dbg !1117
  %54 = getelementptr inbounds %struct.lua_TValue* %53, i32 0, i32 1, !dbg !1117
  %55 = load i32* %54, align 4, !dbg !1117
  %56 = icmp eq i32 %55, 0, !dbg !1117
  br i1 %56, label %57, label %59, !dbg !1117

; <label>:57                                      ; preds = %45
  %58 = load i32* %m, align 4, !dbg !1119
  store i32 %58, i32* %3, align 4, !dbg !1119
  br label %61, !dbg !1119

; <label>:59                                      ; preds = %45
  %60 = load i32* %m, align 4, !dbg !1121
  store i32 %60, i32* %i, align 4, !dbg !1121
  br label %61

; <label>:61                                      ; preds = %59, %57
  br label %40, !dbg !1122

; <label>:62                                      ; preds = %40
  %63 = load i32* %i, align 4, !dbg !1123
  store i32 %63, i32* %1, !dbg !1123
  br label %64, !dbg !1123

; <label>:64                                      ; preds = %62, %33
  %65 = load i32* %1, !dbg !1124
  ret i32 %65, !dbg !1124
}

declare hidden i32 @luaV_equalobj(%struct.lua_State*, %struct.lua_TValue*, %struct.lua_TValue*) #4

; Function Attrs: nounwind
define internal i32 @numusearray(%struct.Table* %t, i32* %nums) #0 {
  %1 = alloca %struct.Table*, align 4
  %2 = alloca i32*, align 4
  %lg = alloca i32, align 4
  %ttlg = alloca i32, align 4
  %ause = alloca i32, align 4
  %i = alloca i32, align 4
  %lc = alloca i32, align 4
  %lim = alloca i32, align 4
  store %struct.Table* %t, %struct.Table** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.Table** %1}, metadata !1125), !dbg !1126
  store i32* %nums, i32** %2, align 4
  call void @llvm.dbg.declare(metadata !{i32** %2}, metadata !1127), !dbg !1128
  call void @llvm.dbg.declare(metadata !{i32* %lg}, metadata !1129), !dbg !1130
  call void @llvm.dbg.declare(metadata !{i32* %ttlg}, metadata !1131), !dbg !1132
  call void @llvm.dbg.declare(metadata !{i32* %ause}, metadata !1133), !dbg !1134
  store i32 0, i32* %ause, align 4, !dbg !1135
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !1136), !dbg !1137
  store i32 1, i32* %i, align 4, !dbg !1138
  store i32 0, i32* %lg, align 4, !dbg !1139
  store i32 1, i32* %ttlg, align 4, !dbg !1139
  br label %3, !dbg !1139

; <label>:3                                       ; preds = %54, %0
  %4 = load i32* %lg, align 4, !dbg !1141
  %5 = icmp sle i32 %4, 31, !dbg !1141
  br i1 %5, label %6, label %59, !dbg !1141

; <label>:6                                       ; preds = %3
  call void @llvm.dbg.declare(metadata !{i32* %lc}, metadata !1144), !dbg !1146
  store i32 0, i32* %lc, align 4, !dbg !1147
  call void @llvm.dbg.declare(metadata !{i32* %lim}, metadata !1148), !dbg !1149
  %7 = load i32* %ttlg, align 4, !dbg !1150
  store i32 %7, i32* %lim, align 4, !dbg !1150
  %8 = load i32* %lim, align 4, !dbg !1151
  %9 = load %struct.Table** %1, align 4, !dbg !1151
  %10 = getelementptr inbounds %struct.Table* %9, i32 0, i32 5, !dbg !1151
  %11 = load i32* %10, align 4, !dbg !1151
  %12 = icmp ugt i32 %8, %11, !dbg !1151
  br i1 %12, label %13, label %22, !dbg !1151

; <label>:13                                      ; preds = %6
  %14 = load %struct.Table** %1, align 4, !dbg !1153
  %15 = getelementptr inbounds %struct.Table* %14, i32 0, i32 5, !dbg !1153
  %16 = load i32* %15, align 4, !dbg !1153
  store i32 %16, i32* %lim, align 4, !dbg !1153
  %17 = load i32* %i, align 4, !dbg !1155
  %18 = load i32* %lim, align 4, !dbg !1155
  %19 = icmp ugt i32 %17, %18, !dbg !1155
  br i1 %19, label %20, label %21, !dbg !1155

; <label>:20                                      ; preds = %13
  br label %59, !dbg !1157

; <label>:21                                      ; preds = %13
  br label %22, !dbg !1158

; <label>:22                                      ; preds = %21, %6
  br label %23, !dbg !1159

; <label>:23                                      ; preds = %41, %22
  %24 = load i32* %i, align 4, !dbg !1161
  %25 = load i32* %lim, align 4, !dbg !1161
  %26 = icmp ule i32 %24, %25, !dbg !1161
  br i1 %26, label %27, label %44, !dbg !1161

; <label>:27                                      ; preds = %23
  %28 = load i32* %i, align 4, !dbg !1164
  %29 = sub i32 %28, 1, !dbg !1164
  %30 = load %struct.Table** %1, align 4, !dbg !1164
  %31 = getelementptr inbounds %struct.Table* %30, i32 0, i32 6, !dbg !1164
  %32 = load %struct.lua_TValue** %31, align 4, !dbg !1164
  %33 = getelementptr inbounds %struct.lua_TValue* %32, i32 %29, !dbg !1164
  %34 = getelementptr inbounds %struct.lua_TValue* %33, i32 0, i32 1, !dbg !1164
  %35 = load i32* %34, align 4, !dbg !1164
  %36 = icmp eq i32 %35, 0, !dbg !1164
  br i1 %36, label %40, label %37, !dbg !1164

; <label>:37                                      ; preds = %27
  %38 = load i32* %lc, align 4, !dbg !1167
  %39 = add i32 %38, 1, !dbg !1167
  store i32 %39, i32* %lc, align 4, !dbg !1167
  br label %40, !dbg !1167

; <label>:40                                      ; preds = %37, %27
  br label %41, !dbg !1168

; <label>:41                                      ; preds = %40
  %42 = load i32* %i, align 4, !dbg !1169
  %43 = add i32 %42, 1, !dbg !1169
  store i32 %43, i32* %i, align 4, !dbg !1169
  br label %23, !dbg !1169

; <label>:44                                      ; preds = %23
  %45 = load i32* %lc, align 4, !dbg !1170
  %46 = load i32* %lg, align 4, !dbg !1170
  %47 = load i32** %2, align 4, !dbg !1170
  %48 = getelementptr inbounds i32* %47, i32 %46, !dbg !1170
  %49 = load i32* %48, align 4, !dbg !1170
  %50 = add i32 %49, %45, !dbg !1170
  store i32 %50, i32* %48, align 4, !dbg !1170
  %51 = load i32* %lc, align 4, !dbg !1171
  %52 = load i32* %ause, align 4, !dbg !1171
  %53 = add i32 %52, %51, !dbg !1171
  store i32 %53, i32* %ause, align 4, !dbg !1171
  br label %54, !dbg !1172

; <label>:54                                      ; preds = %44
  %55 = load i32* %lg, align 4, !dbg !1173
  %56 = add nsw i32 %55, 1, !dbg !1173
  store i32 %56, i32* %lg, align 4, !dbg !1173
  %57 = load i32* %ttlg, align 4, !dbg !1173
  %58 = mul i32 %57, 2, !dbg !1173
  store i32 %58, i32* %ttlg, align 4, !dbg !1173
  br label %3, !dbg !1173

; <label>:59                                      ; preds = %20, %3
  %60 = load i32* %ause, align 4, !dbg !1174
  ret i32 %60, !dbg !1174
}

; Function Attrs: nounwind
define internal i32 @numusehash(%struct.Table* %t, i32* %nums, i32* %pna) #0 {
  %1 = alloca %struct.Table*, align 4
  %2 = alloca i32*, align 4
  %3 = alloca i32*, align 4
  %totaluse = alloca i32, align 4
  %ause = alloca i32, align 4
  %i = alloca i32, align 4
  %n = alloca %struct.Node*, align 4
  store %struct.Table* %t, %struct.Table** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.Table** %1}, metadata !1175), !dbg !1176
  store i32* %nums, i32** %2, align 4
  call void @llvm.dbg.declare(metadata !{i32** %2}, metadata !1177), !dbg !1178
  store i32* %pna, i32** %3, align 4
  call void @llvm.dbg.declare(metadata !{i32** %3}, metadata !1179), !dbg !1180
  call void @llvm.dbg.declare(metadata !{i32* %totaluse}, metadata !1181), !dbg !1182
  store i32 0, i32* %totaluse, align 4, !dbg !1183
  call void @llvm.dbg.declare(metadata !{i32* %ause}, metadata !1184), !dbg !1185
  store i32 0, i32* %ause, align 4, !dbg !1186
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !1187), !dbg !1188
  %4 = load %struct.Table** %1, align 4, !dbg !1189
  %5 = getelementptr inbounds %struct.Table* %4, i32 0, i32 4, !dbg !1189
  %6 = load i8* %5, align 1, !dbg !1189
  %7 = zext i8 %6 to i32, !dbg !1189
  %8 = shl i32 1, %7, !dbg !1189
  store i32 %8, i32* %i, align 4, !dbg !1189
  br label %9, !dbg !1190

; <label>:9                                       ; preds = %34, %0
  %10 = load i32* %i, align 4, !dbg !1191
  %11 = add nsw i32 %10, -1, !dbg !1191
  store i32 %11, i32* %i, align 4, !dbg !1191
  %12 = icmp ne i32 %10, 0, !dbg !1191
  br i1 %12, label %13, label %35, !dbg !1191

; <label>:13                                      ; preds = %9
  call void @llvm.dbg.declare(metadata !{%struct.Node** %n}, metadata !1193), !dbg !1195
  %14 = load i32* %i, align 4, !dbg !1196
  %15 = load %struct.Table** %1, align 4, !dbg !1196
  %16 = getelementptr inbounds %struct.Table* %15, i32 0, i32 7, !dbg !1196
  %17 = load %struct.Node** %16, align 4, !dbg !1196
  %18 = getelementptr inbounds %struct.Node* %17, i32 %14, !dbg !1196
  store %struct.Node* %18, %struct.Node** %n, align 4, !dbg !1196
  %19 = load %struct.Node** %n, align 4, !dbg !1197
  %20 = getelementptr inbounds %struct.Node* %19, i32 0, i32 0, !dbg !1197
  %21 = getelementptr inbounds %struct.lua_TValue* %20, i32 0, i32 1, !dbg !1197
  %22 = load i32* %21, align 4, !dbg !1197
  %23 = icmp eq i32 %22, 0, !dbg !1197
  br i1 %23, label %34, label %24, !dbg !1197

; <label>:24                                      ; preds = %13
  %25 = load %struct.Node** %n, align 4, !dbg !1199
  %26 = getelementptr inbounds %struct.Node* %25, i32 0, i32 1, !dbg !1199
  %27 = bitcast %union.TKey* %26 to %struct.lua_TValue*, !dbg !1199
  %28 = load i32** %2, align 4, !dbg !1199
  %29 = call i32 @countint(%struct.lua_TValue* %27, i32* %28), !dbg !1199
  %30 = load i32* %ause, align 4, !dbg !1199
  %31 = add nsw i32 %30, %29, !dbg !1199
  store i32 %31, i32* %ause, align 4, !dbg !1199
  %32 = load i32* %totaluse, align 4, !dbg !1201
  %33 = add nsw i32 %32, 1, !dbg !1201
  store i32 %33, i32* %totaluse, align 4, !dbg !1201
  br label %34, !dbg !1202

; <label>:34                                      ; preds = %24, %13
  br label %9, !dbg !1203

; <label>:35                                      ; preds = %9
  %36 = load i32* %ause, align 4, !dbg !1204
  %37 = load i32** %3, align 4, !dbg !1204
  %38 = load i32* %37, align 4, !dbg !1204
  %39 = add i32 %38, %36, !dbg !1204
  store i32 %39, i32* %37, align 4, !dbg !1204
  %40 = load i32* %totaluse, align 4, !dbg !1205
  ret i32 %40, !dbg !1205
}

; Function Attrs: nounwind
define internal i32 @countint(%struct.lua_TValue* %key, i32* %nums) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.lua_TValue*, align 4
  %3 = alloca i32*, align 4
  %k = alloca i32, align 4
  store %struct.lua_TValue* %key, %struct.lua_TValue** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %2}, metadata !1206), !dbg !1207
  store i32* %nums, i32** %3, align 4
  call void @llvm.dbg.declare(metadata !{i32** %3}, metadata !1208), !dbg !1209
  call void @llvm.dbg.declare(metadata !{i32* %k}, metadata !1210), !dbg !1211
  %4 = load %struct.lua_TValue** %2, align 4, !dbg !1212
  %5 = call i32 @arrayindex(%struct.lua_TValue* %4), !dbg !1212
  store i32 %5, i32* %k, align 4, !dbg !1212
  %6 = load i32* %k, align 4, !dbg !1213
  %7 = icmp ne i32 %6, 0, !dbg !1213
  br i1 %7, label %8, label %15, !dbg !1213

; <label>:8                                       ; preds = %0
  %9 = load i32* %k, align 4, !dbg !1215
  %10 = call i32 @luaO_ceillog2(i32 %9), !dbg !1215
  %11 = load i32** %3, align 4, !dbg !1215
  %12 = getelementptr inbounds i32* %11, i32 %10, !dbg !1215
  %13 = load i32* %12, align 4, !dbg !1215
  %14 = add i32 %13, 1, !dbg !1215
  store i32 %14, i32* %12, align 4, !dbg !1215
  store i32 1, i32* %1, !dbg !1217
  br label %16, !dbg !1217

; <label>:15                                      ; preds = %0
  store i32 0, i32* %1, !dbg !1218
  br label %16, !dbg !1218

; <label>:16                                      ; preds = %15, %8
  %17 = load i32* %1, !dbg !1219
  ret i32 %17, !dbg !1219
}

; Function Attrs: nounwind
define internal i32 @computesizes(i32* %nums, i32* %pna) #0 {
  %1 = alloca i32*, align 4
  %2 = alloca i32*, align 4
  %i = alloca i32, align 4
  %twotoi = alloca i32, align 4
  %a = alloca i32, align 4
  %na = alloca i32, align 4
  %optimal = alloca i32, align 4
  store i32* %nums, i32** %1, align 4
  call void @llvm.dbg.declare(metadata !{i32** %1}, metadata !1220), !dbg !1221
  store i32* %pna, i32** %2, align 4
  call void @llvm.dbg.declare(metadata !{i32** %2}, metadata !1222), !dbg !1223
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !1224), !dbg !1225
  call void @llvm.dbg.declare(metadata !{i32* %twotoi}, metadata !1226), !dbg !1227
  call void @llvm.dbg.declare(metadata !{i32* %a}, metadata !1228), !dbg !1229
  store i32 0, i32* %a, align 4, !dbg !1230
  call void @llvm.dbg.declare(metadata !{i32* %na}, metadata !1231), !dbg !1232
  store i32 0, i32* %na, align 4, !dbg !1233
  call void @llvm.dbg.declare(metadata !{i32* %optimal}, metadata !1234), !dbg !1235
  store i32 0, i32* %optimal, align 4, !dbg !1236
  store i32 0, i32* %i, align 4, !dbg !1237
  store i32 1, i32* %twotoi, align 4, !dbg !1237
  br label %3, !dbg !1237

; <label>:3                                       ; preds = %31, %0
  %4 = load i32** %2, align 4, !dbg !1239
  %5 = load i32* %4, align 4, !dbg !1239
  %6 = load i32* %twotoi, align 4, !dbg !1239
  %7 = udiv i32 %6, 2, !dbg !1239
  %8 = icmp ugt i32 %5, %7, !dbg !1239
  br i1 %8, label %9, label %36, !dbg !1239

; <label>:9                                       ; preds = %3
  %10 = load i32* %i, align 4, !dbg !1242
  %11 = load i32** %1, align 4, !dbg !1242
  %12 = getelementptr inbounds i32* %11, i32 %10, !dbg !1242
  %13 = load i32* %12, align 4, !dbg !1242
  %14 = icmp ugt i32 %13, 0, !dbg !1242
  br i1 %14, label %15, label %30, !dbg !1242

; <label>:15                                      ; preds = %9
  %16 = load i32* %i, align 4, !dbg !1245
  %17 = load i32** %1, align 4, !dbg !1245
  %18 = getelementptr inbounds i32* %17, i32 %16, !dbg !1245
  %19 = load i32* %18, align 4, !dbg !1245
  %20 = load i32* %a, align 4, !dbg !1245
  %21 = add i32 %20, %19, !dbg !1245
  store i32 %21, i32* %a, align 4, !dbg !1245
  %22 = load i32* %a, align 4, !dbg !1247
  %23 = load i32* %twotoi, align 4, !dbg !1247
  %24 = udiv i32 %23, 2, !dbg !1247
  %25 = icmp ugt i32 %22, %24, !dbg !1247
  br i1 %25, label %26, label %29, !dbg !1247

; <label>:26                                      ; preds = %15
  %27 = load i32* %twotoi, align 4, !dbg !1249
  store i32 %27, i32* %optimal, align 4, !dbg !1249
  %28 = load i32* %a, align 4, !dbg !1251
  store i32 %28, i32* %na, align 4, !dbg !1251
  br label %29, !dbg !1252

; <label>:29                                      ; preds = %26, %15
  br label %30, !dbg !1253

; <label>:30                                      ; preds = %29, %9
  br label %31, !dbg !1254

; <label>:31                                      ; preds = %30
  %32 = load i32* %i, align 4, !dbg !1255
  %33 = add nsw i32 %32, 1, !dbg !1255
  store i32 %33, i32* %i, align 4, !dbg !1255
  %34 = load i32* %twotoi, align 4, !dbg !1255
  %35 = mul i32 %34, 2, !dbg !1255
  store i32 %35, i32* %twotoi, align 4, !dbg !1255
  br label %3, !dbg !1255

; <label>:36                                      ; preds = %3
  %37 = load i32* %na, align 4, !dbg !1256
  %38 = load i32** %2, align 4, !dbg !1256
  store i32 %37, i32* %38, align 4, !dbg !1256
  %39 = load i32* %optimal, align 4, !dbg !1257
  ret i32 %39, !dbg !1257
}

; Function Attrs: nounwind
define internal i32 @arrayindex(%struct.lua_TValue* %key) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.lua_TValue*, align 4
  %k = alloca i64, align 8
  store %struct.lua_TValue* %key, %struct.lua_TValue** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %2}, metadata !1258), !dbg !1259
  %3 = load %struct.lua_TValue** %2, align 4, !dbg !1260
  %4 = getelementptr inbounds %struct.lua_TValue* %3, i32 0, i32 1, !dbg !1260
  %5 = load i32* %4, align 4, !dbg !1260
  %6 = icmp eq i32 %5, 19, !dbg !1260
  br i1 %6, label %7, label %21, !dbg !1260

; <label>:7                                       ; preds = %0
  call void @llvm.dbg.declare(metadata !{i64* %k}, metadata !1262), !dbg !1264
  %8 = load %struct.lua_TValue** %2, align 4, !dbg !1265
  %9 = getelementptr inbounds %struct.lua_TValue* %8, i32 0, i32 0, !dbg !1265
  %10 = bitcast %union.Value* %9 to i64*, !dbg !1265
  %11 = load i64* %10, align 8, !dbg !1265
  store i64 %11, i64* %k, align 8, !dbg !1265
  %12 = load i64* %k, align 8, !dbg !1266
  %13 = icmp slt i64 0, %12, !dbg !1266
  br i1 %13, label %14, label %20, !dbg !1266

; <label>:14                                      ; preds = %7
  %15 = load i64* %k, align 8, !dbg !1268
  %16 = icmp ule i64 %15, 2147483648, !dbg !1268
  br i1 %16, label %17, label %20, !dbg !1268

; <label>:17                                      ; preds = %14
  %18 = load i64* %k, align 8, !dbg !1270
  %19 = trunc i64 %18 to i32, !dbg !1270
  store i32 %19, i32* %1, !dbg !1270
  br label %22, !dbg !1270

; <label>:20                                      ; preds = %14, %7
  br label %21, !dbg !1271

; <label>:21                                      ; preds = %20, %0
  store i32 0, i32* %1, !dbg !1272
  br label %22, !dbg !1272

; <label>:22                                      ; preds = %21, %17
  %23 = load i32* %1, !dbg !1273
  ret i32 %23, !dbg !1273
}

declare hidden i32 @luaO_ceillog2(i32) #4

; Function Attrs: nounwind
define internal i32 @l_hashfloat(double %n) #0 {
  %1 = alloca i32, align 4
  %2 = alloca double, align 8
  %i = alloca i32, align 4
  %ni = alloca i64, align 8
  %u = alloca i32, align 4
  store double %n, double* %2, align 8
  call void @llvm.dbg.declare(metadata !{double* %2}, metadata !1274), !dbg !1275
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !1276), !dbg !1277
  call void @llvm.dbg.declare(metadata !{i64* %ni}, metadata !1278), !dbg !1279
  %3 = load double* %2, align 8, !dbg !1280
  %4 = call double @frexp(double %3, i32* %i) #2, !dbg !1280
  %5 = fmul double %4, 0x41E0000000000000, !dbg !1280
  store double %5, double* %2, align 8, !dbg !1280
  %6 = load double* %2, align 8, !dbg !1281
  %7 = fcmp oge double %6, 0xC3E0000000000000, !dbg !1281
  br i1 %7, label %8, label %14, !dbg !1281

; <label>:8                                       ; preds = %0
  %9 = load double* %2, align 8, !dbg !1283
  %10 = fcmp olt double %9, 0x43E0000000000000, !dbg !1283
  br i1 %10, label %11, label %14, !dbg !1283

; <label>:11                                      ; preds = %8
  %12 = load double* %2, align 8, !dbg !1285
  %13 = fptosi double %12 to i64, !dbg !1285
  store i64 %13, i64* %ni, align 8, !dbg !1285
  br i1 true, label %15, label %14, !dbg !1285

; <label>:14                                      ; preds = %11, %8, %0
  store i32 0, i32* %1, !dbg !1287
  br label %29, !dbg !1287

; <label>:15                                      ; preds = %11
  call void @llvm.dbg.declare(metadata !{i32* %u}, metadata !1289), !dbg !1291
  %16 = load i32* %i, align 4, !dbg !1292
  %17 = load i64* %ni, align 8, !dbg !1292
  %18 = trunc i64 %17 to i32, !dbg !1292
  %19 = add i32 %16, %18, !dbg !1292
  store i32 %19, i32* %u, align 4, !dbg !1292
  %20 = load i32* %u, align 4, !dbg !1293
  %21 = icmp ule i32 %20, 2147483647, !dbg !1293
  br i1 %21, label %22, label %24, !dbg !1293

; <label>:22                                      ; preds = %15
  %23 = load i32* %u, align 4, !dbg !1294
  br label %27, !dbg !1294

; <label>:24                                      ; preds = %15
  %25 = load i32* %u, align 4, !dbg !1296
  %26 = xor i32 %25, -1, !dbg !1296
  br label %27, !dbg !1296

; <label>:27                                      ; preds = %24, %22
  %28 = phi i32 [ %23, %22 ], [ %26, %24 ], !dbg !1293
  store i32 %28, i32* %1, !dbg !1298
  br label %29, !dbg !1298

; <label>:29                                      ; preds = %27, %14
  %30 = load i32* %1, !dbg !1301
  ret i32 %30, !dbg !1301
}

declare hidden i32 @luaS_hashlongstr(%struct.TString*) #4

; Function Attrs: nounwind
declare double @frexp(double, i32*) #0

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind }
attributes #3 = { noreturn "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn }

!llvm.dbg.cu = !{!0}
!xidane.fname = !{!346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419}
!xidane.function_declaration_type = !{!346, !420, !348, !421, !350, !422, !352, !423, !354, !423, !356, !424, !358, !425, !360, !426, !362, !427, !364, !423, !366, !428, !368, !429, !370, !430, !372, !427, !374, !431, !376, !432, !378, !433, !380, !434, !382, !435, !384, !430, !386, !436, !388, !437, !390, !437, !392, !438, !394, !438, !396, !439, !398, !440, !400, !441, !402, !442, !404, !443, !406, !444, !408, !445, !410, !446, !412, !447, !414, !448, !416, !449, !418, !450}
!xidane.function_declaration_filename = !{!346, !451, !348, !452, !350, !451, !352, !452, !354, !452, !356, !451, !358, !453, !360, !453, !362, !451, !364, !451, !366, !451, !368, !454, !370, !451, !372, !451, !374, !455, !376, !456, !378, !452, !380, !452, !382, !452, !384, !454, !386, !451, !388, !451, !390, !451, !392, !452, !394, !451, !396, !451, !398, !452, !400, !456, !402, !452, !404, !452, !406, !452, !408, !452, !410, !452, !412, !457, !414, !452, !416, !458, !418, !459}
!xidane.ExternC = !{!346, !350, !356, !358, !360, !362, !364, !366, !368, !370, !372, !374, !376, !384, !386, !388, !390, !394, !396, !400, !412, !416, !418}
!llvm.module.flags = !{!460, !461, !462, !463}
!llvm.ident = !{!464}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.0 (tags/RELEASE_350/final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !343, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src\ltable.c] [DW_LANG_C99]
!1 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src\5Cltable.c", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!2 = metadata !{}
!3 = metadata !{metadata !4, metadata !270, metadata !273, metadata !276, metadata !279, metadata !282, metadata !287, metadata !290, metadata !293, metadata !294, metadata !297, metadata !298, metadata !301, metadata !304, metadata !307, metadata !308, metadata !311, metadata !315, metadata !318, metadata !321, metadata !326, metadata !329, metadata !332, metadata !335, metadata !338, metadata !339, metadata !340}
!4 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"luaH_next", metadata !"luaH_next", metadata !"", i32 188, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*, %struct.Table*, %struct.lua_TValue*)* @luaH_next, null, null, metadata !2, i32 188} ; [ DW_TAG_subprogram ] [line 188] [def] [luaH_next]
!5 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/ltable.c", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!6 = metadata !{i32 786473, metadata !5}          ; [ DW_TAG_file_type ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!7 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!8 = metadata !{metadata !9, metadata !10, metadata !268, metadata !34}
!9 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!10 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !11} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from lua_State]
!11 = metadata !{i32 786454, metadata !12, null, metadata !"lua_State", i32 56, i64 0, i64 0, i64 0, i32 0, metadata !13} ; [ DW_TAG_typedef ] [lua_State] [line 56, size 0, align 0, offset 0] [from lua_State]
!12 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lua.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!13 = metadata !{i32 786451, metadata !14, null, metadata !"lua_State", i32 159, i64 960, i64 32, i32 0, i32 0, null, metadata !15, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [lua_State] [line 159, size 960, align 32, offset 0] [def] [from ]
!14 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lstate.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!15 = metadata !{metadata !16, metadata !28, metadata !29, metadata !30, metadata !32, metadata !33, metadata !59, metadata !175, metadata !213, metadata !214, metadata !215, metadata !216, metadata !220, metadata !221, metadata !222, metadata !225, metadata !226, metadata !256, metadata !257, metadata !258, metadata !259, metadata !260, metadata !261, metadata !262, metadata !267}
!16 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"next", i32 160, i64 32, i64 32, i64 0, i32 0, metadata !17} ; [ DW_TAG_member ] [next] [line 160, size 32, align 32, offset 0] [from ]
!17 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !18} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from GCObject]
!18 = metadata !{i32 786454, metadata !19, null, metadata !"GCObject", i32 72, i64 0, i64 0, i64 0, i32 0, metadata !20} ; [ DW_TAG_typedef ] [GCObject] [line 72, size 0, align 0, offset 0] [from GCObject]
!19 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lobject.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!20 = metadata !{i32 786451, metadata !19, null, metadata !"GCObject", i32 85, i64 64, i64 32, i32 0, i32 0, null, metadata !21, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [GCObject] [line 85, size 64, align 32, offset 0] [def] [from ]
!21 = metadata !{metadata !22, metadata !23, metadata !27}
!22 = metadata !{i32 786445, metadata !19, metadata !20, metadata !"next", i32 86, i64 32, i64 32, i64 0, i32 0, metadata !17} ; [ DW_TAG_member ] [next] [line 86, size 32, align 32, offset 0] [from ]
!23 = metadata !{i32 786445, metadata !19, metadata !20, metadata !"tt", i32 86, i64 8, i64 8, i64 32, i32 0, metadata !24} ; [ DW_TAG_member ] [tt] [line 86, size 8, align 8, offset 32] [from lu_byte]
!24 = metadata !{i32 786454, metadata !25, null, metadata !"lu_byte", i32 35, i64 0, i64 0, i64 0, i32 0, metadata !26} ; [ DW_TAG_typedef ] [lu_byte] [line 35, size 0, align 0, offset 0] [from unsigned char]
!25 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/llimits.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!26 = metadata !{i32 786468, null, null, metadata !"unsigned char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [unsigned char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!27 = metadata !{i32 786445, metadata !19, metadata !20, metadata !"marked", i32 86, i64 8, i64 8, i64 40, i32 0, metadata !24} ; [ DW_TAG_member ] [marked] [line 86, size 8, align 8, offset 40] [from lu_byte]
!28 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"tt", i32 160, i64 8, i64 8, i64 32, i32 0, metadata !24} ; [ DW_TAG_member ] [tt] [line 160, size 8, align 8, offset 32] [from lu_byte]
!29 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"marked", i32 160, i64 8, i64 8, i64 40, i32 0, metadata !24} ; [ DW_TAG_member ] [marked] [line 160, size 8, align 8, offset 40] [from lu_byte]
!30 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"nci", i32 161, i64 16, i64 16, i64 48, i32 0, metadata !31} ; [ DW_TAG_member ] [nci] [line 161, size 16, align 16, offset 48] [from unsigned short]
!31 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!32 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"status", i32 162, i64 8, i64 8, i64 64, i32 0, metadata !24} ; [ DW_TAG_member ] [status] [line 162, size 8, align 8, offset 64] [from lu_byte]
!33 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"top", i32 163, i64 32, i64 32, i64 96, i32 0, metadata !34} ; [ DW_TAG_member ] [top] [line 163, size 32, align 32, offset 96] [from StkId]
!34 = metadata !{i32 786454, metadata !19, null, metadata !"StkId", i32 294, i64 0, i64 0, i64 0, i32 0, metadata !35} ; [ DW_TAG_typedef ] [StkId] [line 294, size 0, align 0, offset 0] [from ]
!35 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !36} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from TValue]
!36 = metadata !{i32 786454, metadata !19, null, metadata !"TValue", i32 115, i64 0, i64 0, i64 0, i32 0, metadata !37} ; [ DW_TAG_typedef ] [TValue] [line 115, size 0, align 0, offset 0] [from lua_TValue]
!37 = metadata !{i32 786451, metadata !19, null, metadata !"lua_TValue", i32 113, i64 128, i64 64, i32 0, i32 0, null, metadata !38, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [lua_TValue] [line 113, size 128, align 64, offset 0] [def] [from ]
!38 = metadata !{metadata !39, metadata !58}
!39 = metadata !{i32 786445, metadata !19, metadata !37, metadata !"value_", i32 114, i64 64, i64 64, i64 0, i32 0, metadata !40} ; [ DW_TAG_member ] [value_] [line 114, size 64, align 64, offset 0] [from Value]
!40 = metadata !{i32 786454, metadata !19, null, metadata !"Value", i32 107, i64 0, i64 0, i64 0, i32 0, metadata !41} ; [ DW_TAG_typedef ] [Value] [line 107, size 0, align 0, offset 0] [from Value]
!41 = metadata !{i32 786455, metadata !19, null, metadata !"Value", i32 100, i64 64, i64 64, i64 0, i32 0, null, metadata !42, i32 0, null, null, null} ; [ DW_TAG_union_type ] [Value] [line 100, size 64, align 64, offset 0] [def] [from ]
!42 = metadata !{metadata !43, metadata !44, metadata !46, metadata !47, metadata !52, metadata !55}
!43 = metadata !{i32 786445, metadata !19, metadata !41, metadata !"gc", i32 101, i64 32, i64 32, i64 0, i32 0, metadata !17} ; [ DW_TAG_member ] [gc] [line 101, size 32, align 32, offset 0] [from ]
!44 = metadata !{i32 786445, metadata !19, metadata !41, metadata !"p", i32 102, i64 32, i64 32, i64 0, i32 0, metadata !45} ; [ DW_TAG_member ] [p] [line 102, size 32, align 32, offset 0] [from ]
!45 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!46 = metadata !{i32 786445, metadata !19, metadata !41, metadata !"b", i32 103, i64 32, i64 32, i64 0, i32 0, metadata !9} ; [ DW_TAG_member ] [b] [line 103, size 32, align 32, offset 0] [from int]
!47 = metadata !{i32 786445, metadata !19, metadata !41, metadata !"f", i32 104, i64 32, i64 32, i64 0, i32 0, metadata !48} ; [ DW_TAG_member ] [f] [line 104, size 32, align 32, offset 0] [from lua_CFunction]
!48 = metadata !{i32 786454, metadata !12, null, metadata !"lua_CFunction", i32 105, i64 0, i64 0, i64 0, i32 0, metadata !49} ; [ DW_TAG_typedef ] [lua_CFunction] [line 105, size 0, align 0, offset 0] [from ]
!49 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !50} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!50 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !51, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!51 = metadata !{metadata !9, metadata !10}
!52 = metadata !{i32 786445, metadata !19, metadata !41, metadata !"i", i32 105, i64 64, i64 64, i64 0, i32 0, metadata !53} ; [ DW_TAG_member ] [i] [line 105, size 64, align 64, offset 0] [from lua_Integer]
!53 = metadata !{i32 786454, metadata !12, null, metadata !"lua_Integer", i32 93, i64 0, i64 0, i64 0, i32 0, metadata !54} ; [ DW_TAG_typedef ] [lua_Integer] [line 93, size 0, align 0, offset 0] [from long long int]
!54 = metadata !{i32 786468, null, null, metadata !"long long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!55 = metadata !{i32 786445, metadata !19, metadata !41, metadata !"n", i32 106, i64 64, i64 64, i64 0, i32 0, metadata !56} ; [ DW_TAG_member ] [n] [line 106, size 64, align 64, offset 0] [from lua_Number]
!56 = metadata !{i32 786454, metadata !12, null, metadata !"lua_Number", i32 89, i64 0, i64 0, i64 0, i32 0, metadata !57} ; [ DW_TAG_typedef ] [lua_Number] [line 89, size 0, align 0, offset 0] [from double]
!57 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!58 = metadata !{i32 786445, metadata !19, metadata !37, metadata !"tt_", i32 114, i64 32, i64 32, i64 64, i32 0, metadata !9} ; [ DW_TAG_member ] [tt_] [line 114, size 32, align 32, offset 64] [from int]
!59 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"l_G", i32 164, i64 32, i64 32, i64 128, i32 0, metadata !60} ; [ DW_TAG_member ] [l_G] [line 164, size 32, align 32, offset 128] [from ]
!60 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !61} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from global_State]
!61 = metadata !{i32 786454, metadata !14, null, metadata !"global_State", i32 153, i64 0, i64 0, i64 0, i32 0, metadata !62} ; [ DW_TAG_typedef ] [global_State] [line 153, size 0, align 0, offset 0] [from global_State]
!62 = metadata !{i32 786451, metadata !14, null, metadata !"global_State", i32 118, i64 5568, i64 64, i32 0, i32 0, null, metadata !63, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [global_State] [line 118, size 5568, align 64, offset 0] [def] [from ]
!63 = metadata !{metadata !64, metadata !72, metadata !73, metadata !76, metadata !77, metadata !79, metadata !80, metadata !104, metadata !105, metadata !106, metadata !107, metadata !108, metadata !109, metadata !110, metadata !111, metadata !113, metadata !114, metadata !115, metadata !116, metadata !117, metadata !118, metadata !119, metadata !120, metadata !121, metadata !123, metadata !124, metadata !125, metadata !126, metadata !127, metadata !128, metadata !131, metadata !132, metadata !136, metadata !170}
!64 = metadata !{i32 786445, metadata !14, metadata !62, metadata !"frealloc", i32 119, i64 32, i64 32, i64 0, i32 0, metadata !65} ; [ DW_TAG_member ] [frealloc] [line 119, size 32, align 32, offset 0] [from lua_Alloc]
!65 = metadata !{i32 786454, metadata !12, null, metadata !"lua_Alloc", i32 124, i64 0, i64 0, i64 0, i32 0, metadata !66} ; [ DW_TAG_typedef ] [lua_Alloc] [line 124, size 0, align 0, offset 0] [from ]
!66 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !67} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!67 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !68, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!68 = metadata !{metadata !45, metadata !45, metadata !45, metadata !69, metadata !69}
!69 = metadata !{i32 786454, metadata !70, null, metadata !"size_t", i32 216, i64 0, i64 0, i64 0, i32 0, metadata !71} ; [ DW_TAG_typedef ] [size_t] [line 216, size 0, align 0, offset 0] [from unsigned int]
!70 = metadata !{metadata !"D:/Xilinx/SDx/2016.3/SDK/gnu/aarch32/nt/gcc-arm-linux-gnueabi/lib/gcc/arm-linux-gnueabihf/5.2.1/include\5Cstddef.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!71 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!72 = metadata !{i32 786445, metadata !14, metadata !62, metadata !"ud", i32 120, i64 32, i64 32, i64 32, i32 0, metadata !45} ; [ DW_TAG_member ] [ud] [line 120, size 32, align 32, offset 32] [from ]
!73 = metadata !{i32 786445, metadata !14, metadata !62, metadata !"totalbytes", i32 121, i64 32, i64 32, i64 64, i32 0, metadata !74} ; [ DW_TAG_member ] [totalbytes] [line 121, size 32, align 32, offset 64] [from l_mem]
!74 = metadata !{i32 786454, metadata !25, null, metadata !"l_mem", i32 27, i64 0, i64 0, i64 0, i32 0, metadata !75} ; [ DW_TAG_typedef ] [l_mem] [line 27, size 0, align 0, offset 0] [from ptrdiff_t]
!75 = metadata !{i32 786454, metadata !70, null, metadata !"ptrdiff_t", i32 149, i64 0, i64 0, i64 0, i32 0, metadata !9} ; [ DW_TAG_typedef ] [ptrdiff_t] [line 149, size 0, align 0, offset 0] [from int]
!76 = metadata !{i32 786445, metadata !14, metadata !62, metadata !"GCdebt", i32 122, i64 32, i64 32, i64 96, i32 0, metadata !74} ; [ DW_TAG_member ] [GCdebt] [line 122, size 32, align 32, offset 96] [from l_mem]
!77 = metadata !{i32 786445, metadata !14, metadata !62, metadata !"GCmemtrav", i32 123, i64 32, i64 32, i64 128, i32 0, metadata !78} ; [ DW_TAG_member ] [GCmemtrav] [line 123, size 32, align 32, offset 128] [from lu_mem]
!78 = metadata !{i32 786454, metadata !25, null, metadata !"lu_mem", i32 26, i64 0, i64 0, i64 0, i32 0, metadata !69} ; [ DW_TAG_typedef ] [lu_mem] [line 26, size 0, align 0, offset 0] [from size_t]
!79 = metadata !{i32 786445, metadata !14, metadata !62, metadata !"GCestimate", i32 124, i64 32, i64 32, i64 160, i32 0, metadata !78} ; [ DW_TAG_member ] [GCestimate] [line 124, size 32, align 32, offset 160] [from lu_mem]
!80 = metadata !{i32 786445, metadata !14, metadata !62, metadata !"strt", i32 125, i64 96, i64 32, i64 192, i32 0, metadata !81} ; [ DW_TAG_member ] [strt] [line 125, size 96, align 32, offset 192] [from stringtable]
!81 = metadata !{i32 786454, metadata !14, null, metadata !"stringtable", i32 62, i64 0, i64 0, i64 0, i32 0, metadata !82} ; [ DW_TAG_typedef ] [stringtable] [line 62, size 0, align 0, offset 0] [from stringtable]
!82 = metadata !{i32 786451, metadata !14, null, metadata !"stringtable", i32 58, i64 96, i64 32, i32 0, i32 0, null, metadata !83, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [stringtable] [line 58, size 96, align 32, offset 0] [def] [from ]
!83 = metadata !{metadata !84, metadata !102, metadata !103}
!84 = metadata !{i32 786445, metadata !14, metadata !82, metadata !"hash", i32 59, i64 32, i64 32, i64 0, i32 0, metadata !85} ; [ DW_TAG_member ] [hash] [line 59, size 32, align 32, offset 0] [from ]
!85 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !86} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!86 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !87} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from TString]
!87 = metadata !{i32 786454, metadata !19, null, metadata !"TString", i32 312, i64 0, i64 0, i64 0, i32 0, metadata !88} ; [ DW_TAG_typedef ] [TString] [line 312, size 0, align 0, offset 0] [from TString]
!88 = metadata !{i32 786451, metadata !19, null, metadata !"TString", i32 303, i64 128, i64 32, i32 0, i32 0, null, metadata !89, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [TString] [line 303, size 128, align 32, offset 0] [def] [from ]
!89 = metadata !{metadata !90, metadata !91, metadata !92, metadata !93, metadata !94, metadata !95, metadata !96}
!90 = metadata !{i32 786445, metadata !19, metadata !88, metadata !"next", i32 304, i64 32, i64 32, i64 0, i32 0, metadata !17} ; [ DW_TAG_member ] [next] [line 304, size 32, align 32, offset 0] [from ]
!91 = metadata !{i32 786445, metadata !19, metadata !88, metadata !"tt", i32 304, i64 8, i64 8, i64 32, i32 0, metadata !24} ; [ DW_TAG_member ] [tt] [line 304, size 8, align 8, offset 32] [from lu_byte]
!92 = metadata !{i32 786445, metadata !19, metadata !88, metadata !"marked", i32 304, i64 8, i64 8, i64 40, i32 0, metadata !24} ; [ DW_TAG_member ] [marked] [line 304, size 8, align 8, offset 40] [from lu_byte]
!93 = metadata !{i32 786445, metadata !19, metadata !88, metadata !"extra", i32 305, i64 8, i64 8, i64 48, i32 0, metadata !24} ; [ DW_TAG_member ] [extra] [line 305, size 8, align 8, offset 48] [from lu_byte]
!94 = metadata !{i32 786445, metadata !19, metadata !88, metadata !"shrlen", i32 306, i64 8, i64 8, i64 56, i32 0, metadata !24} ; [ DW_TAG_member ] [shrlen] [line 306, size 8, align 8, offset 56] [from lu_byte]
!95 = metadata !{i32 786445, metadata !19, metadata !88, metadata !"hash", i32 307, i64 32, i64 32, i64 64, i32 0, metadata !71} ; [ DW_TAG_member ] [hash] [line 307, size 32, align 32, offset 64] [from unsigned int]
!96 = metadata !{i32 786445, metadata !19, metadata !88, metadata !"u", i32 311, i64 32, i64 32, i64 96, i32 0, metadata !97} ; [ DW_TAG_member ] [u] [line 311, size 32, align 32, offset 96] [from ]
!97 = metadata !{i32 786455, metadata !19, metadata !88, metadata !"", i32 308, i64 32, i64 32, i64 0, i32 0, null, metadata !98, i32 0, null, null, null} ; [ DW_TAG_union_type ] [line 308, size 32, align 32, offset 0] [def] [from ]
!98 = metadata !{metadata !99, metadata !100}
!99 = metadata !{i32 786445, metadata !19, metadata !97, metadata !"lnglen", i32 309, i64 32, i64 32, i64 0, i32 0, metadata !69} ; [ DW_TAG_member ] [lnglen] [line 309, size 32, align 32, offset 0] [from size_t]
!100 = metadata !{i32 786445, metadata !19, metadata !97, metadata !"hnext", i32 310, i64 32, i64 32, i64 0, i32 0, metadata !101} ; [ DW_TAG_member ] [hnext] [line 310, size 32, align 32, offset 0] [from ]
!101 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !88} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from TString]
!102 = metadata !{i32 786445, metadata !14, metadata !82, metadata !"nuse", i32 60, i64 32, i64 32, i64 32, i32 0, metadata !9} ; [ DW_TAG_member ] [nuse] [line 60, size 32, align 32, offset 32] [from int]
!103 = metadata !{i32 786445, metadata !14, metadata !82, metadata !"size", i32 61, i64 32, i64 32, i64 64, i32 0, metadata !9} ; [ DW_TAG_member ] [size] [line 61, size 32, align 32, offset 64] [from int]
!104 = metadata !{i32 786445, metadata !14, metadata !62, metadata !"l_registry", i32 126, i64 128, i64 64, i64 320, i32 0, metadata !36} ; [ DW_TAG_member ] [l_registry] [line 126, size 128, align 64, offset 320] [from TValue]
!105 = metadata !{i32 786445, metadata !14, metadata !62, metadata !"seed", i32 127, i64 32, i64 32, i64 448, i32 0, metadata !71} ; [ DW_TAG_member ] [seed] [line 127, size 32, align 32, offset 448] [from unsigned int]
!106 = metadata !{i32 786445, metadata !14, metadata !62, metadata !"currentwhite", i32 128, i64 8, i64 8, i64 480, i32 0, metadata !24} ; [ DW_TAG_member ] [currentwhite] [line 128, size 8, align 8, offset 480] [from lu_byte]
!107 = metadata !{i32 786445, metadata !14, metadata !62, metadata !"gcstate", i32 129, i64 8, i64 8, i64 488, i32 0, metadata !24} ; [ DW_TAG_member ] [gcstate] [line 129, size 8, align 8, offset 488] [from lu_byte]
!108 = metadata !{i32 786445, metadata !14, metadata !62, metadata !"gckind", i32 130, i64 8, i64 8, i64 496, i32 0, metadata !24} ; [ DW_TAG_member ] [gckind] [line 130, size 8, align 8, offset 496] [from lu_byte]
!109 = metadata !{i32 786445, metadata !14, metadata !62, metadata !"gcrunning", i32 131, i64 8, i64 8, i64 504, i32 0, metadata !24} ; [ DW_TAG_member ] [gcrunning] [line 131, size 8, align 8, offset 504] [from lu_byte]
!110 = metadata !{i32 786445, metadata !14, metadata !62, metadata !"allgc", i32 132, i64 32, i64 32, i64 512, i32 0, metadata !17} ; [ DW_TAG_member ] [allgc] [line 132, size 32, align 32, offset 512] [from ]
!111 = metadata !{i32 786445, metadata !14, metadata !62, metadata !"sweepgc", i32 133, i64 32, i64 32, i64 544, i32 0, metadata !112} ; [ DW_TAG_member ] [sweepgc] [line 133, size 32, align 32, offset 544] [from ]
!112 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !17} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!113 = metadata !{i32 786445, metadata !14, metadata !62, metadata !"finobj", i32 134, i64 32, i64 32, i64 576, i32 0, metadata !17} ; [ DW_TAG_member ] [finobj] [line 134, size 32, align 32, offset 576] [from ]
!114 = metadata !{i32 786445, metadata !14, metadata !62, metadata !"gray", i32 135, i64 32, i64 32, i64 608, i32 0, metadata !17} ; [ DW_TAG_member ] [gray] [line 135, size 32, align 32, offset 608] [from ]
!115 = metadata !{i32 786445, metadata !14, metadata !62, metadata !"grayagain", i32 136, i64 32, i64 32, i64 640, i32 0, metadata !17} ; [ DW_TAG_member ] [grayagain] [line 136, size 32, align 32, offset 640] [from ]
!116 = metadata !{i32 786445, metadata !14, metadata !62, metadata !"weak", i32 137, i64 32, i64 32, i64 672, i32 0, metadata !17} ; [ DW_TAG_member ] [weak] [line 137, size 32, align 32, offset 672] [from ]
!117 = metadata !{i32 786445, metadata !14, metadata !62, metadata !"ephemeron", i32 138, i64 32, i64 32, i64 704, i32 0, metadata !17} ; [ DW_TAG_member ] [ephemeron] [line 138, size 32, align 32, offset 704] [from ]
!118 = metadata !{i32 786445, metadata !14, metadata !62, metadata !"allweak", i32 139, i64 32, i64 32, i64 736, i32 0, metadata !17} ; [ DW_TAG_member ] [allweak] [line 139, size 32, align 32, offset 736] [from ]
!119 = metadata !{i32 786445, metadata !14, metadata !62, metadata !"tobefnz", i32 140, i64 32, i64 32, i64 768, i32 0, metadata !17} ; [ DW_TAG_member ] [tobefnz] [line 140, size 32, align 32, offset 768] [from ]
!120 = metadata !{i32 786445, metadata !14, metadata !62, metadata !"fixedgc", i32 141, i64 32, i64 32, i64 800, i32 0, metadata !17} ; [ DW_TAG_member ] [fixedgc] [line 141, size 32, align 32, offset 800] [from ]
!121 = metadata !{i32 786445, metadata !14, metadata !62, metadata !"twups", i32 142, i64 32, i64 32, i64 832, i32 0, metadata !122} ; [ DW_TAG_member ] [twups] [line 142, size 32, align 32, offset 832] [from ]
!122 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !13} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from lua_State]
!123 = metadata !{i32 786445, metadata !14, metadata !62, metadata !"gcfinnum", i32 143, i64 32, i64 32, i64 864, i32 0, metadata !71} ; [ DW_TAG_member ] [gcfinnum] [line 143, size 32, align 32, offset 864] [from unsigned int]
!124 = metadata !{i32 786445, metadata !14, metadata !62, metadata !"gcpause", i32 144, i64 32, i64 32, i64 896, i32 0, metadata !9} ; [ DW_TAG_member ] [gcpause] [line 144, size 32, align 32, offset 896] [from int]
!125 = metadata !{i32 786445, metadata !14, metadata !62, metadata !"gcstepmul", i32 145, i64 32, i64 32, i64 928, i32 0, metadata !9} ; [ DW_TAG_member ] [gcstepmul] [line 145, size 32, align 32, offset 928] [from int]
!126 = metadata !{i32 786445, metadata !14, metadata !62, metadata !"panic", i32 146, i64 32, i64 32, i64 960, i32 0, metadata !48} ; [ DW_TAG_member ] [panic] [line 146, size 32, align 32, offset 960] [from lua_CFunction]
!127 = metadata !{i32 786445, metadata !14, metadata !62, metadata !"mainthread", i32 147, i64 32, i64 32, i64 992, i32 0, metadata !122} ; [ DW_TAG_member ] [mainthread] [line 147, size 32, align 32, offset 992] [from ]
!128 = metadata !{i32 786445, metadata !14, metadata !62, metadata !"version", i32 148, i64 32, i64 32, i64 1024, i32 0, metadata !129} ; [ DW_TAG_member ] [version] [line 148, size 32, align 32, offset 1024] [from ]
!129 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !130} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!130 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !56} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from lua_Number]
!131 = metadata !{i32 786445, metadata !14, metadata !62, metadata !"memerrmsg", i32 149, i64 32, i64 32, i64 1056, i32 0, metadata !86} ; [ DW_TAG_member ] [memerrmsg] [line 149, size 32, align 32, offset 1056] [from ]
!132 = metadata !{i32 786445, metadata !14, metadata !62, metadata !"tmname", i32 150, i64 768, i64 32, i64 1088, i32 0, metadata !133} ; [ DW_TAG_member ] [tmname] [line 150, size 768, align 32, offset 1088] [from ]
!133 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 768, i64 32, i32 0, i32 0, metadata !86, metadata !134, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 768, align 32, offset 0] [from ]
!134 = metadata !{metadata !135}
!135 = metadata !{i32 786465, i64 0, i64 24}      ; [ DW_TAG_subrange_type ] [0, 23]
!136 = metadata !{i32 786445, metadata !14, metadata !62, metadata !"mt", i32 151, i64 288, i64 32, i64 1856, i32 0, metadata !137} ; [ DW_TAG_member ] [mt] [line 151, size 288, align 32, offset 1856] [from ]
!137 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 288, i64 32, i32 0, i32 0, metadata !138, metadata !168, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 288, align 32, offset 0] [from ]
!138 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !139} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from Table]
!139 = metadata !{i32 786451, metadata !19, null, metadata !"Table", i32 497, i64 256, i64 32, i32 0, i32 0, null, metadata !140, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [Table] [line 497, size 256, align 32, offset 0] [def] [from ]
!140 = metadata !{metadata !141, metadata !142, metadata !143, metadata !144, metadata !145, metadata !146, metadata !147, metadata !148, metadata !165, metadata !166, metadata !167}
!141 = metadata !{i32 786445, metadata !19, metadata !139, metadata !"next", i32 498, i64 32, i64 32, i64 0, i32 0, metadata !17} ; [ DW_TAG_member ] [next] [line 498, size 32, align 32, offset 0] [from ]
!142 = metadata !{i32 786445, metadata !19, metadata !139, metadata !"tt", i32 498, i64 8, i64 8, i64 32, i32 0, metadata !24} ; [ DW_TAG_member ] [tt] [line 498, size 8, align 8, offset 32] [from lu_byte]
!143 = metadata !{i32 786445, metadata !19, metadata !139, metadata !"marked", i32 498, i64 8, i64 8, i64 40, i32 0, metadata !24} ; [ DW_TAG_member ] [marked] [line 498, size 8, align 8, offset 40] [from lu_byte]
!144 = metadata !{i32 786445, metadata !19, metadata !139, metadata !"flags", i32 499, i64 8, i64 8, i64 48, i32 0, metadata !24} ; [ DW_TAG_member ] [flags] [line 499, size 8, align 8, offset 48] [from lu_byte]
!145 = metadata !{i32 786445, metadata !19, metadata !139, metadata !"lsizenode", i32 500, i64 8, i64 8, i64 56, i32 0, metadata !24} ; [ DW_TAG_member ] [lsizenode] [line 500, size 8, align 8, offset 56] [from lu_byte]
!146 = metadata !{i32 786445, metadata !19, metadata !139, metadata !"sizearray", i32 501, i64 32, i64 32, i64 64, i32 0, metadata !71} ; [ DW_TAG_member ] [sizearray] [line 501, size 32, align 32, offset 64] [from unsigned int]
!147 = metadata !{i32 786445, metadata !19, metadata !139, metadata !"array", i32 502, i64 32, i64 32, i64 96, i32 0, metadata !35} ; [ DW_TAG_member ] [array] [line 502, size 32, align 32, offset 96] [from ]
!148 = metadata !{i32 786445, metadata !19, metadata !139, metadata !"node", i32 503, i64 32, i64 32, i64 128, i32 0, metadata !149} ; [ DW_TAG_member ] [node] [line 503, size 32, align 32, offset 128] [from ]
!149 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !150} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from Node]
!150 = metadata !{i32 786454, metadata !19, null, metadata !"Node", i32 494, i64 0, i64 0, i64 0, i32 0, metadata !151} ; [ DW_TAG_typedef ] [Node] [line 494, size 0, align 0, offset 0] [from Node]
!151 = metadata !{i32 786451, metadata !19, null, metadata !"Node", i32 491, i64 256, i64 64, i32 0, i32 0, null, metadata !152, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [Node] [line 491, size 256, align 64, offset 0] [def] [from ]
!152 = metadata !{metadata !153, metadata !154}
!153 = metadata !{i32 786445, metadata !19, metadata !151, metadata !"i_val", i32 492, i64 128, i64 64, i64 0, i32 0, metadata !36} ; [ DW_TAG_member ] [i_val] [line 492, size 128, align 64, offset 0] [from TValue]
!154 = metadata !{i32 786445, metadata !19, metadata !151, metadata !"i_key", i32 493, i64 128, i64 64, i64 128, i32 0, metadata !155} ; [ DW_TAG_member ] [i_key] [line 493, size 128, align 64, offset 128] [from TKey]
!155 = metadata !{i32 786454, metadata !19, null, metadata !"TKey", i32 481, i64 0, i64 0, i64 0, i32 0, metadata !156} ; [ DW_TAG_typedef ] [TKey] [line 481, size 0, align 0, offset 0] [from TKey]
!156 = metadata !{i32 786455, metadata !19, null, metadata !"TKey", i32 475, i64 128, i64 64, i64 0, i32 0, null, metadata !157, i32 0, null, null, null} ; [ DW_TAG_union_type ] [TKey] [line 475, size 128, align 64, offset 0] [def] [from ]
!157 = metadata !{metadata !158, metadata !164}
!158 = metadata !{i32 786445, metadata !19, metadata !156, metadata !"nk", i32 479, i64 128, i64 64, i64 0, i32 0, metadata !159} ; [ DW_TAG_member ] [nk] [line 479, size 128, align 64, offset 0] [from ]
!159 = metadata !{i32 786451, metadata !19, metadata !156, metadata !"", i32 476, i64 128, i64 64, i32 0, i32 0, null, metadata !160, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 476, size 128, align 64, offset 0] [def] [from ]
!160 = metadata !{metadata !161, metadata !162, metadata !163}
!161 = metadata !{i32 786445, metadata !19, metadata !159, metadata !"value_", i32 477, i64 64, i64 64, i64 0, i32 0, metadata !40} ; [ DW_TAG_member ] [value_] [line 477, size 64, align 64, offset 0] [from Value]
!162 = metadata !{i32 786445, metadata !19, metadata !159, metadata !"tt_", i32 477, i64 32, i64 32, i64 64, i32 0, metadata !9} ; [ DW_TAG_member ] [tt_] [line 477, size 32, align 32, offset 64] [from int]
!163 = metadata !{i32 786445, metadata !19, metadata !159, metadata !"next", i32 478, i64 32, i64 32, i64 96, i32 0, metadata !9} ; [ DW_TAG_member ] [next] [line 478, size 32, align 32, offset 96] [from int]
!164 = metadata !{i32 786445, metadata !19, metadata !156, metadata !"tvk", i32 480, i64 128, i64 64, i64 0, i32 0, metadata !36} ; [ DW_TAG_member ] [tvk] [line 480, size 128, align 64, offset 0] [from TValue]
!165 = metadata !{i32 786445, metadata !19, metadata !139, metadata !"lastfree", i32 504, i64 32, i64 32, i64 160, i32 0, metadata !149} ; [ DW_TAG_member ] [lastfree] [line 504, size 32, align 32, offset 160] [from ]
!166 = metadata !{i32 786445, metadata !19, metadata !139, metadata !"metatable", i32 505, i64 32, i64 32, i64 192, i32 0, metadata !138} ; [ DW_TAG_member ] [metatable] [line 505, size 32, align 32, offset 192] [from ]
!167 = metadata !{i32 786445, metadata !19, metadata !139, metadata !"gclist", i32 506, i64 32, i64 32, i64 224, i32 0, metadata !17} ; [ DW_TAG_member ] [gclist] [line 506, size 32, align 32, offset 224] [from ]
!168 = metadata !{metadata !169}
!169 = metadata !{i32 786465, i64 0, i64 9}       ; [ DW_TAG_subrange_type ] [0, 8]
!170 = metadata !{i32 786445, metadata !14, metadata !62, metadata !"strcache", i32 152, i64 3392, i64 32, i64 2144, i32 0, metadata !171} ; [ DW_TAG_member ] [strcache] [line 152, size 3392, align 32, offset 2144] [from ]
!171 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 3392, i64 32, i32 0, i32 0, metadata !86, metadata !172, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 3392, align 32, offset 0] [from ]
!172 = metadata !{metadata !173, metadata !174}
!173 = metadata !{i32 786465, i64 0, i64 53}      ; [ DW_TAG_subrange_type ] [0, 52]
!174 = metadata !{i32 786465, i64 0, i64 2}       ; [ DW_TAG_subrange_type ] [0, 1]
!175 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"ci", i32 165, i64 32, i64 32, i64 160, i32 0, metadata !176} ; [ DW_TAG_member ] [ci] [line 165, size 32, align 32, offset 160] [from ]
!176 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !177} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from CallInfo]
!177 = metadata !{i32 786454, metadata !14, null, metadata !"CallInfo", i32 92, i64 0, i64 0, i64 0, i32 0, metadata !178} ; [ DW_TAG_typedef ] [CallInfo] [line 92, size 0, align 0, offset 0] [from CallInfo]
!178 = metadata !{i32 786451, metadata !14, null, metadata !"CallInfo", i32 74, i64 288, i64 32, i32 0, i32 0, null, metadata !179, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [CallInfo] [line 74, size 288, align 32, offset 0] [def] [from ]
!179 = metadata !{metadata !180, metadata !181, metadata !182, metadata !184, metadata !185, metadata !209, metadata !210, metadata !212}
!180 = metadata !{i32 786445, metadata !14, metadata !178, metadata !"func", i32 75, i64 32, i64 32, i64 0, i32 0, metadata !34} ; [ DW_TAG_member ] [func] [line 75, size 32, align 32, offset 0] [from StkId]
!181 = metadata !{i32 786445, metadata !14, metadata !178, metadata !"top", i32 76, i64 32, i64 32, i64 32, i32 0, metadata !34} ; [ DW_TAG_member ] [top] [line 76, size 32, align 32, offset 32] [from StkId]
!182 = metadata !{i32 786445, metadata !14, metadata !178, metadata !"previous", i32 77, i64 32, i64 32, i64 64, i32 0, metadata !183} ; [ DW_TAG_member ] [previous] [line 77, size 32, align 32, offset 64] [from ]
!183 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !178} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from CallInfo]
!184 = metadata !{i32 786445, metadata !14, metadata !178, metadata !"next", i32 77, i64 32, i64 32, i64 96, i32 0, metadata !183} ; [ DW_TAG_member ] [next] [line 77, size 32, align 32, offset 96] [from ]
!185 = metadata !{i32 786445, metadata !14, metadata !178, metadata !"u", i32 88, i64 96, i64 32, i64 128, i32 0, metadata !186} ; [ DW_TAG_member ] [u] [line 88, size 96, align 32, offset 128] [from ]
!186 = metadata !{i32 786455, metadata !14, metadata !178, metadata !"", i32 78, i64 96, i64 32, i64 0, i32 0, null, metadata !187, i32 0, null, null, null} ; [ DW_TAG_union_type ] [line 78, size 96, align 32, offset 0] [def] [from ]
!187 = metadata !{metadata !188, metadata !196}
!188 = metadata !{i32 786445, metadata !14, metadata !186, metadata !"l", i32 82, i64 64, i64 32, i64 0, i32 0, metadata !189} ; [ DW_TAG_member ] [l] [line 82, size 64, align 32, offset 0] [from ]
!189 = metadata !{i32 786451, metadata !14, metadata !186, metadata !"", i32 79, i64 64, i64 32, i32 0, i32 0, null, metadata !190, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 79, size 64, align 32, offset 0] [def] [from ]
!190 = metadata !{metadata !191, metadata !192}
!191 = metadata !{i32 786445, metadata !14, metadata !189, metadata !"base", i32 80, i64 32, i64 32, i64 0, i32 0, metadata !34} ; [ DW_TAG_member ] [base] [line 80, size 32, align 32, offset 0] [from StkId]
!192 = metadata !{i32 786445, metadata !14, metadata !189, metadata !"savedpc", i32 81, i64 32, i64 32, i64 32, i32 0, metadata !193} ; [ DW_TAG_member ] [savedpc] [line 81, size 32, align 32, offset 32] [from ]
!193 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !194} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!194 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !195} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from Instruction]
!195 = metadata !{i32 786454, metadata !25, null, metadata !"Instruction", i32 163, i64 0, i64 0, i64 0, i32 0, metadata !71} ; [ DW_TAG_typedef ] [Instruction] [line 163, size 0, align 0, offset 0] [from unsigned int]
!196 = metadata !{i32 786445, metadata !14, metadata !186, metadata !"c", i32 87, i64 96, i64 32, i64 0, i32 0, metadata !197} ; [ DW_TAG_member ] [c] [line 87, size 96, align 32, offset 0] [from ]
!197 = metadata !{i32 786451, metadata !14, metadata !186, metadata !"", i32 83, i64 96, i64 32, i32 0, i32 0, null, metadata !198, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 83, size 96, align 32, offset 0] [def] [from ]
!198 = metadata !{metadata !199, metadata !207, metadata !208}
!199 = metadata !{i32 786445, metadata !14, metadata !197, metadata !"k", i32 84, i64 32, i64 32, i64 0, i32 0, metadata !200} ; [ DW_TAG_member ] [k] [line 84, size 32, align 32, offset 0] [from lua_KFunction]
!200 = metadata !{i32 786454, metadata !12, null, metadata !"lua_KFunction", i32 110, i64 0, i64 0, i64 0, i32 0, metadata !201} ; [ DW_TAG_typedef ] [lua_KFunction] [line 110, size 0, align 0, offset 0] [from ]
!201 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !202} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!202 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !203, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!203 = metadata !{metadata !9, metadata !10, metadata !9, metadata !204}
!204 = metadata !{i32 786454, metadata !12, null, metadata !"lua_KContext", i32 99, i64 0, i64 0, i64 0, i32 0, metadata !205} ; [ DW_TAG_typedef ] [lua_KContext] [line 99, size 0, align 0, offset 0] [from intptr_t]
!205 = metadata !{i32 786454, metadata !206, null, metadata !"intptr_t", i32 125, i64 0, i64 0, i64 0, i32 0, metadata !9} ; [ DW_TAG_typedef ] [intptr_t] [line 125, size 0, align 0, offset 0] [from int]
!206 = metadata !{metadata !"D:/Xilinx/SDx/2016.3/SDK/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include\5Cstdint.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!207 = metadata !{i32 786445, metadata !14, metadata !197, metadata !"old_errfunc", i32 85, i64 32, i64 32, i64 32, i32 0, metadata !75} ; [ DW_TAG_member ] [old_errfunc] [line 85, size 32, align 32, offset 32] [from ptrdiff_t]
!208 = metadata !{i32 786445, metadata !14, metadata !197, metadata !"ctx", i32 86, i64 32, i64 32, i64 64, i32 0, metadata !204} ; [ DW_TAG_member ] [ctx] [line 86, size 32, align 32, offset 64] [from lua_KContext]
!209 = metadata !{i32 786445, metadata !14, metadata !178, metadata !"extra", i32 89, i64 32, i64 32, i64 224, i32 0, metadata !75} ; [ DW_TAG_member ] [extra] [line 89, size 32, align 32, offset 224] [from ptrdiff_t]
!210 = metadata !{i32 786445, metadata !14, metadata !178, metadata !"nresults", i32 90, i64 16, i64 16, i64 256, i32 0, metadata !211} ; [ DW_TAG_member ] [nresults] [line 90, size 16, align 16, offset 256] [from short]
!211 = metadata !{i32 786468, null, null, metadata !"short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [short] [line 0, size 16, align 16, offset 0, enc DW_ATE_signed]
!212 = metadata !{i32 786445, metadata !14, metadata !178, metadata !"callstatus", i32 91, i64 8, i64 8, i64 272, i32 0, metadata !24} ; [ DW_TAG_member ] [callstatus] [line 91, size 8, align 8, offset 272] [from lu_byte]
!213 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"oldpc", i32 166, i64 32, i64 32, i64 192, i32 0, metadata !193} ; [ DW_TAG_member ] [oldpc] [line 166, size 32, align 32, offset 192] [from ]
!214 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"stack_last", i32 167, i64 32, i64 32, i64 224, i32 0, metadata !34} ; [ DW_TAG_member ] [stack_last] [line 167, size 32, align 32, offset 224] [from StkId]
!215 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"stack", i32 168, i64 32, i64 32, i64 256, i32 0, metadata !34} ; [ DW_TAG_member ] [stack] [line 168, size 32, align 32, offset 256] [from StkId]
!216 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"openupval", i32 169, i64 32, i64 32, i64 288, i32 0, metadata !217} ; [ DW_TAG_member ] [openupval] [line 169, size 32, align 32, offset 288] [from ]
!217 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !218} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from UpVal]
!218 = metadata !{i32 786454, metadata !19, null, metadata !"UpVal", i32 436, i64 0, i64 0, i64 0, i32 0, metadata !219} ; [ DW_TAG_typedef ] [UpVal] [line 436, size 0, align 0, offset 0] [from UpVal]
!219 = metadata !{i32 786451, metadata !19, null, metadata !"UpVal", i32 436, i64 0, i64 0, i32 0, i32 4, null, null, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [UpVal] [line 436, size 0, align 0, offset 0] [decl] [from ]
!220 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"gclist", i32 170, i64 32, i64 32, i64 320, i32 0, metadata !17} ; [ DW_TAG_member ] [gclist] [line 170, size 32, align 32, offset 320] [from ]
!221 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"twups", i32 171, i64 32, i64 32, i64 352, i32 0, metadata !122} ; [ DW_TAG_member ] [twups] [line 171, size 32, align 32, offset 352] [from ]
!222 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"errorJmp", i32 172, i64 32, i64 32, i64 384, i32 0, metadata !223} ; [ DW_TAG_member ] [errorJmp] [line 172, size 32, align 32, offset 384] [from ]
!223 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !224} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from lua_longjmp]
!224 = metadata !{i32 786451, metadata !14, null, metadata !"lua_longjmp", i32 33, i64 0, i64 0, i32 0, i32 4, null, null, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [lua_longjmp] [line 33, size 0, align 0, offset 0] [decl] [from ]
!225 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"base_ci", i32 173, i64 288, i64 32, i64 416, i32 0, metadata !177} ; [ DW_TAG_member ] [base_ci] [line 173, size 288, align 32, offset 416] [from CallInfo]
!226 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"hook", i32 174, i64 32, i64 32, i64 704, i32 0, metadata !227} ; [ DW_TAG_member ] [hook] [line 174, size 32, align 32, offset 704] [from ]
!227 = metadata !{i32 786485, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !228} ; [ DW_TAG_volatile_type ] [line 0, size 0, align 0, offset 0] [from lua_Hook]
!228 = metadata !{i32 786454, metadata !12, null, metadata !"lua_Hook", i32 421, i64 0, i64 0, i64 0, i32 0, metadata !229} ; [ DW_TAG_typedef ] [lua_Hook] [line 421, size 0, align 0, offset 0] [from ]
!229 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !230} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!230 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !231, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!231 = metadata !{null, metadata !10, metadata !232}
!232 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !233} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from lua_Debug]
!233 = metadata !{i32 786454, metadata !12, null, metadata !"lua_Debug", i32 417, i64 0, i64 0, i64 0, i32 0, metadata !234} ; [ DW_TAG_typedef ] [lua_Debug] [line 417, size 0, align 0, offset 0] [from lua_Debug]
!234 = metadata !{i32 786451, metadata !12, null, metadata !"lua_Debug", i32 441, i64 800, i64 32, i32 0, i32 0, null, metadata !235, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [lua_Debug] [line 441, size 800, align 32, offset 0] [def] [from ]
!235 = metadata !{metadata !236, metadata !237, metadata !241, metadata !242, metadata !243, metadata !244, metadata !245, metadata !246, metadata !247, metadata !248, metadata !249, metadata !250, metadata !251, metadata !255}
!236 = metadata !{i32 786445, metadata !12, metadata !234, metadata !"event", i32 442, i64 32, i64 32, i64 0, i32 0, metadata !9} ; [ DW_TAG_member ] [event] [line 442, size 32, align 32, offset 0] [from int]
!237 = metadata !{i32 786445, metadata !12, metadata !234, metadata !"name", i32 443, i64 32, i64 32, i64 32, i32 0, metadata !238} ; [ DW_TAG_member ] [name] [line 443, size 32, align 32, offset 32] [from ]
!238 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !239} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!239 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !240} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!240 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!241 = metadata !{i32 786445, metadata !12, metadata !234, metadata !"namewhat", i32 444, i64 32, i64 32, i64 64, i32 0, metadata !238} ; [ DW_TAG_member ] [namewhat] [line 444, size 32, align 32, offset 64] [from ]
!242 = metadata !{i32 786445, metadata !12, metadata !234, metadata !"what", i32 445, i64 32, i64 32, i64 96, i32 0, metadata !238} ; [ DW_TAG_member ] [what] [line 445, size 32, align 32, offset 96] [from ]
!243 = metadata !{i32 786445, metadata !12, metadata !234, metadata !"source", i32 446, i64 32, i64 32, i64 128, i32 0, metadata !238} ; [ DW_TAG_member ] [source] [line 446, size 32, align 32, offset 128] [from ]
!244 = metadata !{i32 786445, metadata !12, metadata !234, metadata !"currentline", i32 447, i64 32, i64 32, i64 160, i32 0, metadata !9} ; [ DW_TAG_member ] [currentline] [line 447, size 32, align 32, offset 160] [from int]
!245 = metadata !{i32 786445, metadata !12, metadata !234, metadata !"linedefined", i32 448, i64 32, i64 32, i64 192, i32 0, metadata !9} ; [ DW_TAG_member ] [linedefined] [line 448, size 32, align 32, offset 192] [from int]
!246 = metadata !{i32 786445, metadata !12, metadata !234, metadata !"lastlinedefined", i32 449, i64 32, i64 32, i64 224, i32 0, metadata !9} ; [ DW_TAG_member ] [lastlinedefined] [line 449, size 32, align 32, offset 224] [from int]
!247 = metadata !{i32 786445, metadata !12, metadata !234, metadata !"nups", i32 450, i64 8, i64 8, i64 256, i32 0, metadata !26} ; [ DW_TAG_member ] [nups] [line 450, size 8, align 8, offset 256] [from unsigned char]
!248 = metadata !{i32 786445, metadata !12, metadata !234, metadata !"nparams", i32 451, i64 8, i64 8, i64 264, i32 0, metadata !26} ; [ DW_TAG_member ] [nparams] [line 451, size 8, align 8, offset 264] [from unsigned char]
!249 = metadata !{i32 786445, metadata !12, metadata !234, metadata !"isvararg", i32 452, i64 8, i64 8, i64 272, i32 0, metadata !240} ; [ DW_TAG_member ] [isvararg] [line 452, size 8, align 8, offset 272] [from char]
!250 = metadata !{i32 786445, metadata !12, metadata !234, metadata !"istailcall", i32 453, i64 8, i64 8, i64 280, i32 0, metadata !240} ; [ DW_TAG_member ] [istailcall] [line 453, size 8, align 8, offset 280] [from char]
!251 = metadata !{i32 786445, metadata !12, metadata !234, metadata !"short_src", i32 454, i64 480, i64 8, i64 288, i32 0, metadata !252} ; [ DW_TAG_member ] [short_src] [line 454, size 480, align 8, offset 288] [from ]
!252 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 480, i64 8, i32 0, i32 0, metadata !240, metadata !253, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 480, align 8, offset 0] [from char]
!253 = metadata !{metadata !254}
!254 = metadata !{i32 786465, i64 0, i64 60}      ; [ DW_TAG_subrange_type ] [0, 59]
!255 = metadata !{i32 786445, metadata !12, metadata !234, metadata !"i_ci", i32 456, i64 32, i64 32, i64 768, i32 0, metadata !183} ; [ DW_TAG_member ] [i_ci] [line 456, size 32, align 32, offset 768] [from ]
!256 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"errfunc", i32 175, i64 32, i64 32, i64 736, i32 0, metadata !75} ; [ DW_TAG_member ] [errfunc] [line 175, size 32, align 32, offset 736] [from ptrdiff_t]
!257 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"stacksize", i32 176, i64 32, i64 32, i64 768, i32 0, metadata !9} ; [ DW_TAG_member ] [stacksize] [line 176, size 32, align 32, offset 768] [from int]
!258 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"basehookcount", i32 177, i64 32, i64 32, i64 800, i32 0, metadata !9} ; [ DW_TAG_member ] [basehookcount] [line 177, size 32, align 32, offset 800] [from int]
!259 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"hookcount", i32 178, i64 32, i64 32, i64 832, i32 0, metadata !9} ; [ DW_TAG_member ] [hookcount] [line 178, size 32, align 32, offset 832] [from int]
!260 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"nny", i32 179, i64 16, i64 16, i64 864, i32 0, metadata !31} ; [ DW_TAG_member ] [nny] [line 179, size 16, align 16, offset 864] [from unsigned short]
!261 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"nCcalls", i32 180, i64 16, i64 16, i64 880, i32 0, metadata !31} ; [ DW_TAG_member ] [nCcalls] [line 180, size 16, align 16, offset 880] [from unsigned short]
!262 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"hookmask", i32 181, i64 32, i64 32, i64 896, i32 0, metadata !263} ; [ DW_TAG_member ] [hookmask] [line 181, size 32, align 32, offset 896] [from sig_atomic_t]
!263 = metadata !{i32 786454, metadata !264, null, metadata !"sig_atomic_t", i32 40, i64 0, i64 0, i64 0, i32 0, metadata !265} ; [ DW_TAG_typedef ] [sig_atomic_t] [line 40, size 0, align 0, offset 0] [from __sig_atomic_t]
!264 = metadata !{metadata !"D:/Xilinx/SDx/2016.3/SDK/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include\5Csignal.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!265 = metadata !{i32 786454, metadata !266, null, metadata !"__sig_atomic_t", i32 22, i64 0, i64 0, i64 0, i32 0, metadata !9} ; [ DW_TAG_typedef ] [__sig_atomic_t] [line 22, size 0, align 0, offset 0] [from int]
!266 = metadata !{metadata !"D:/Xilinx/SDx/2016.3/SDK/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include\5Cbits/sigset.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!267 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"allowhook", i32 182, i64 8, i64 8, i64 928, i32 0, metadata !24} ; [ DW_TAG_member ] [allowhook] [line 182, size 8, align 8, offset 928] [from lu_byte]
!268 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !269} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from Table]
!269 = metadata !{i32 786454, metadata !19, null, metadata !"Table", i32 507, i64 0, i64 0, i64 0, i32 0, metadata !139} ; [ DW_TAG_typedef ] [Table] [line 507, size 0, align 0, offset 0] [from Table]
!270 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"luaH_resize", metadata !"luaH_resize", metadata !"", i32 335, metadata !271, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.lua_State*, %struct.Table*, i32, i32)* @luaH_resize, null, null, metadata !2, i32 336} ; [ DW_TAG_subprogram ] [line 335] [def] [scope 336] [luaH_resize]
!271 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !272, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!272 = metadata !{null, metadata !10, metadata !268, metadata !71, metadata !71}
!273 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"luaH_resizearray", metadata !"luaH_resizearray", metadata !"", i32 370, metadata !274, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.lua_State*, %struct.Table*, i32)* @luaH_resizearray, null, null, metadata !2, i32 370} ; [ DW_TAG_subprogram ] [line 370] [def] [luaH_resizearray]
!274 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !275, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!275 = metadata !{null, metadata !10, metadata !268, metadata !71}
!276 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"luaH_new", metadata !"luaH_new", metadata !"", i32 404, metadata !277, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, %struct.Table* (%struct.lua_State*)* @luaH_new, null, null, metadata !2, i32 404} ; [ DW_TAG_subprogram ] [line 404] [def] [luaH_new]
!277 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !278, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!278 = metadata !{metadata !268, metadata !10}
!279 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"luaH_free", metadata !"luaH_free", metadata !"", i32 416, metadata !280, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.lua_State*, %struct.Table*)* @luaH_free, null, null, metadata !2, i32 416} ; [ DW_TAG_subprogram ] [line 416] [def] [luaH_free]
!280 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !281, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!281 = metadata !{null, metadata !10, metadata !268}
!282 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"luaH_newkey", metadata !"luaH_newkey", metadata !"", i32 442, metadata !283, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, %struct.lua_TValue* (%struct.lua_State*, %struct.Table*, %struct.lua_TValue*)* @luaH_newkey, null, null, metadata !2, i32 442} ; [ DW_TAG_subprogram ] [line 442] [def] [luaH_newkey]
!283 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !284, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!284 = metadata !{metadata !35, metadata !10, metadata !268, metadata !285}
!285 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !286} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!286 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !36} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from TValue]
!287 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"luaH_getint", metadata !"luaH_getint", metadata !"", i32 497, metadata !288, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, %struct.lua_TValue* (%struct.Table*, i64)* @luaH_getint, null, null, metadata !2, i32 497} ; [ DW_TAG_subprogram ] [line 497] [def] [luaH_getint]
!288 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !289, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!289 = metadata !{metadata !285, metadata !268, metadata !53}
!290 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"luaH_getshortstr", metadata !"luaH_getshortstr", metadata !"", i32 520, metadata !291, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, %struct.lua_TValue* (%struct.Table*, %struct.TString*)* @luaH_getshortstr, null, null, metadata !2, i32 520} ; [ DW_TAG_subprogram ] [line 520] [def] [luaH_getshortstr]
!291 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !292, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!292 = metadata !{metadata !285, metadata !268, metadata !86}
!293 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"luaH_getstr", metadata !"luaH_getstr", metadata !"", i32 556, metadata !291, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, %struct.lua_TValue* (%struct.Table*, %struct.TString*)* @luaH_getstr, null, null, metadata !2, i32 556} ; [ DW_TAG_subprogram ] [line 556] [def] [luaH_getstr]
!294 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"luaH_get", metadata !"luaH_get", metadata !"", i32 570, metadata !295, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, %struct.lua_TValue* (%struct.Table*, %struct.lua_TValue*)* @luaH_get, null, null, metadata !2, i32 570} ; [ DW_TAG_subprogram ] [line 570] [def] [luaH_get]
!295 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !296, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!296 = metadata !{metadata !285, metadata !268, metadata !285}
!297 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"luaH_set", metadata !"luaH_set", metadata !"", i32 591, metadata !283, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, %struct.lua_TValue* (%struct.lua_State*, %struct.Table*, %struct.lua_TValue*)* @luaH_set, null, null, metadata !2, i32 591} ; [ DW_TAG_subprogram ] [line 591] [def] [luaH_set]
!298 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"luaH_setint", metadata !"luaH_setint", metadata !"", i32 599, metadata !299, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.lua_State*, %struct.Table*, i64, %struct.lua_TValue*)* @luaH_setint, null, null, metadata !2, i32 599} ; [ DW_TAG_subprogram ] [line 599] [def] [luaH_setint]
!299 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !300, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!300 = metadata !{null, metadata !10, metadata !268, metadata !53, metadata !35}
!301 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"luaH_getn", metadata !"luaH_getn", metadata !"", i32 641, metadata !302, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.Table*)* @luaH_getn, null, null, metadata !2, i32 641} ; [ DW_TAG_subprogram ] [line 641] [def] [luaH_getn]
!302 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !303, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!303 = metadata !{metadata !9, metadata !268}
!304 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"unbound_search", metadata !"unbound_search", metadata !"", i32 613, metadata !305, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.Table*, i32)* @unbound_search, null, null, metadata !2, i32 613} ; [ DW_TAG_subprogram ] [line 613] [local] [def] [unbound_search]
!305 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !306, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!306 = metadata !{metadata !9, metadata !268, metadata !71}
!307 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"getgeneric", metadata !"getgeneric", metadata !"", i32 541, metadata !295, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, %struct.lua_TValue* (%struct.Table*, %struct.lua_TValue*)* @getgeneric, null, null, metadata !2, i32 541} ; [ DW_TAG_subprogram ] [line 541] [local] [def] [getgeneric]
!308 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"rehash", metadata !"rehash", metadata !"", i32 378, metadata !309, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.lua_State*, %struct.Table*, %struct.lua_TValue*)* @rehash, null, null, metadata !2, i32 378} ; [ DW_TAG_subprogram ] [line 378] [local] [def] [rehash]
!309 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !310, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!310 = metadata !{null, metadata !10, metadata !268, metadata !285}
!311 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"computesizes", metadata !"computesizes", metadata !"", i32 221, metadata !312, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32*, i32*)* @computesizes, null, null, metadata !2, i32 221} ; [ DW_TAG_subprogram ] [line 221] [local] [def] [computesizes]
!312 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !313, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!313 = metadata !{metadata !71, metadata !314, metadata !314}
!314 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !71} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from unsigned int]
!315 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"countint", metadata !"countint", metadata !"", i32 243, metadata !316, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_TValue*, i32*)* @countint, null, null, metadata !2, i32 243} ; [ DW_TAG_subprogram ] [line 243] [local] [def] [countint]
!316 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !317, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!317 = metadata !{metadata !9, metadata !285, metadata !314}
!318 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"arrayindex", metadata !"arrayindex", metadata !"", i32 146, metadata !319, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_TValue*)* @arrayindex, null, null, metadata !2, i32 146} ; [ DW_TAG_subprogram ] [line 146] [local] [def] [arrayindex]
!319 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !320, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!320 = metadata !{metadata !71, metadata !285}
!321 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"numusehash", metadata !"numusehash", metadata !"", i32 285, metadata !322, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.Table*, i32*, i32*)* @numusehash, null, null, metadata !2, i32 285} ; [ DW_TAG_subprogram ] [line 285] [local] [def] [numusehash]
!322 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !323, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!323 = metadata !{metadata !9, metadata !324, metadata !314, metadata !314}
!324 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !325} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!325 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !269} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from Table]
!326 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"numusearray", metadata !"numusearray", metadata !"", i32 259, metadata !327, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.Table*, i32*)* @numusearray, null, null, metadata !2, i32 259} ; [ DW_TAG_subprogram ] [line 259] [local] [def] [numusearray]
!327 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !328, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!328 = metadata !{metadata !71, metadata !324, metadata !314}
!329 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"getfreepos", metadata !"getfreepos", metadata !"", i32 424, metadata !330, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, %struct.Node* (%struct.Table*)* @getfreepos, null, null, metadata !2, i32 424} ; [ DW_TAG_subprogram ] [line 424] [local] [def] [getfreepos]
!330 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !331, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!331 = metadata !{metadata !149, metadata !268}
!332 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"mainposition", metadata !"mainposition", metadata !"", i32 119, metadata !333, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, %struct.Node* (%struct.Table*, %struct.lua_TValue*)* @mainposition, null, null, metadata !2, i32 119} ; [ DW_TAG_subprogram ] [line 119] [local] [def] [mainposition]
!333 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !334, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!334 = metadata !{metadata !149, metadata !324, metadata !285}
!335 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"l_hashfloat", metadata !"l_hashfloat", metadata !"", i32 99, metadata !336, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (double)* @l_hashfloat, null, null, metadata !2, i32 99} ; [ DW_TAG_subprogram ] [line 99] [local] [def] [l_hashfloat]
!336 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !337, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!337 = metadata !{metadata !9, metadata !56}
!338 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"setnodevector", metadata !"setnodevector", metadata !"", i32 310, metadata !274, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.lua_State*, %struct.Table*, i32)* @setnodevector, null, null, metadata !2, i32 310} ; [ DW_TAG_subprogram ] [line 310] [local] [def] [setnodevector]
!339 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"setarrayvector", metadata !"setarrayvector", metadata !"", i32 301, metadata !274, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.lua_State*, %struct.Table*, i32)* @setarrayvector, null, null, metadata !2, i32 301} ; [ DW_TAG_subprogram ] [line 301] [local] [def] [setarrayvector]
!340 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"findindex", metadata !"findindex", metadata !"", i32 161, metadata !341, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*, %struct.Table*, %struct.lua_TValue*)* @findindex, null, null, metadata !2, i32 161} ; [ DW_TAG_subprogram ] [line 161] [local] [def] [findindex]
!341 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !342, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!342 = metadata !{metadata !71, metadata !10, metadata !268, metadata !34}
!343 = metadata !{metadata !344}
!344 = metadata !{i32 786484, i32 0, null, metadata !"dummynode_", metadata !"dummynode_", metadata !"", metadata !6, i32 79, metadata !345, i32 1, i32 1, { { { %struct.GCObject*, [4 x i8] }, i32, [4 x i8] }, { { { %struct.GCObject*, [4 x i8] }, i32, i32 } } }* @dummynode_, null} ; [ DW_TAG_variable ] [dummynode_] [line 79] [local] [def]
!345 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !150} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from Node]
!346 = metadata !{i32 (%struct.lua_State*, %struct.Table*, %struct.lua_TValue*)* @luaH_next}
!347 = metadata !{metadata !"luaH_next"}
!348 = metadata !{i32 (%struct.lua_State*, %struct.Table*, %struct.lua_TValue*)* @findindex}
!349 = metadata !{metadata !"findindex"}
!350 = metadata !{void (%struct.lua_State*, %struct.Table*, i32, i32)* @luaH_resize}
!351 = metadata !{metadata !"luaH_resize"}
!352 = metadata !{void (%struct.lua_State*, %struct.Table*, i32)* @setarrayvector}
!353 = metadata !{metadata !"setarrayvector"}
!354 = metadata !{void (%struct.lua_State*, %struct.Table*, i32)* @setnodevector}
!355 = metadata !{metadata !"setnodevector"}
!356 = metadata !{void (%struct.lua_State*, %struct.Table*, i64, %struct.lua_TValue*)* @luaH_setint}
!357 = metadata !{metadata !"luaH_setint"}
!358 = metadata !{void (%struct.lua_State*)* @luaM_toobig}
!359 = metadata !{metadata !"luaM_toobig"}
!360 = metadata !{i8* (%struct.lua_State*, i8*, i32, i32)* @luaM_realloc_}
!361 = metadata !{metadata !"luaM_realloc_"}
!362 = metadata !{%struct.lua_TValue* (%struct.lua_State*, %struct.Table*, %struct.lua_TValue*)* @luaH_set}
!363 = metadata !{metadata !"luaH_set"}
!364 = metadata !{void (%struct.lua_State*, %struct.Table*, i32)* @luaH_resizearray}
!365 = metadata !{metadata !"luaH_resizearray"}
!366 = metadata !{%struct.Table* (%struct.lua_State*)* @luaH_new}
!367 = metadata !{metadata !"luaH_new"}
!368 = metadata !{%struct.GCObject* (%struct.lua_State*, i32, i32)* @luaC_newobj}
!369 = metadata !{metadata !"luaC_newobj"}
!370 = metadata !{void (%struct.lua_State*, %struct.Table*)* @luaH_free}
!371 = metadata !{metadata !"luaH_free"}
!372 = metadata !{%struct.lua_TValue* (%struct.lua_State*, %struct.Table*, %struct.lua_TValue*)* @luaH_newkey}
!373 = metadata !{metadata !"luaH_newkey"}
!374 = metadata !{void (%struct.lua_State*, i8*, ...)* @luaG_runerror}
!375 = metadata !{metadata !"luaG_runerror"}
!376 = metadata !{i32 (%struct.lua_TValue*, i64*, i32)* @luaV_tointeger}
!377 = metadata !{metadata !"luaV_tointeger"}
!378 = metadata !{%struct.Node* (%struct.Table*, %struct.lua_TValue*)* @mainposition}
!379 = metadata !{metadata !"mainposition"}
!380 = metadata !{%struct.Node* (%struct.Table*)* @getfreepos}
!381 = metadata !{metadata !"getfreepos"}
!382 = metadata !{void (%struct.lua_State*, %struct.Table*, %struct.lua_TValue*)* @rehash}
!383 = metadata !{metadata !"rehash"}
!384 = metadata !{void (%struct.lua_State*, %struct.Table*)* @luaC_barrierback_}
!385 = metadata !{metadata !"luaC_barrierback_"}
!386 = metadata !{%struct.lua_TValue* (%struct.Table*, i64)* @luaH_getint}
!387 = metadata !{metadata !"luaH_getint"}
!388 = metadata !{%struct.lua_TValue* (%struct.Table*, %struct.TString*)* @luaH_getshortstr}
!389 = metadata !{metadata !"luaH_getshortstr"}
!390 = metadata !{%struct.lua_TValue* (%struct.Table*, %struct.TString*)* @luaH_getstr}
!391 = metadata !{metadata !"luaH_getstr"}
!392 = metadata !{%struct.lua_TValue* (%struct.Table*, %struct.lua_TValue*)* @getgeneric}
!393 = metadata !{metadata !"getgeneric"}
!394 = metadata !{%struct.lua_TValue* (%struct.Table*, %struct.lua_TValue*)* @luaH_get}
!395 = metadata !{metadata !"luaH_get"}
!396 = metadata !{i32 (%struct.Table*)* @luaH_getn}
!397 = metadata !{metadata !"luaH_getn"}
!398 = metadata !{i32 (%struct.Table*, i32)* @unbound_search}
!399 = metadata !{metadata !"unbound_search"}
!400 = metadata !{i32 (%struct.lua_State*, %struct.lua_TValue*, %struct.lua_TValue*)* @luaV_equalobj}
!401 = metadata !{metadata !"luaV_equalobj"}
!402 = metadata !{i32 (%struct.Table*, i32*)* @numusearray}
!403 = metadata !{metadata !"numusearray"}
!404 = metadata !{i32 (%struct.Table*, i32*, i32*)* @numusehash}
!405 = metadata !{metadata !"numusehash"}
!406 = metadata !{i32 (%struct.lua_TValue*, i32*)* @countint}
!407 = metadata !{metadata !"countint"}
!408 = metadata !{i32 (i32*, i32*)* @computesizes}
!409 = metadata !{metadata !"computesizes"}
!410 = metadata !{i32 (%struct.lua_TValue*)* @arrayindex}
!411 = metadata !{metadata !"arrayindex"}
!412 = metadata !{i32 (i32)* @luaO_ceillog2}
!413 = metadata !{metadata !"luaO_ceillog2"}
!414 = metadata !{i32 (double)* @l_hashfloat}
!415 = metadata !{metadata !"l_hashfloat"}
!416 = metadata !{i32 (%struct.TString*)* @luaS_hashlongstr}
!417 = metadata !{metadata !"luaS_hashlongstr"}
!418 = metadata !{double (double, i32*)* @frexp}
!419 = metadata !{metadata !"frexp"}
!420 = metadata !{metadata !"int.lua_State *.1.Table *.1.StkId.1"}
!421 = metadata !{metadata !"unsigned int.lua_State *.1.Table *.1.StkId.1"}
!422 = metadata !{metadata !"void.lua_State *.1.Table *.1.unsigned int.0.unsigned int.0"}
!423 = metadata !{metadata !"void.lua_State *.1.Table *.1.unsigned int.0"}
!424 = metadata !{metadata !"void.lua_State *.1.Table *.1.lua_Integer.0.TValue *.1"}
!425 = metadata !{metadata !"void.lua_State *.1"}
!426 = metadata !{metadata !"void .lua_State *.1.void *.1.size_t.0.size_t.0"}
!427 = metadata !{metadata !"TValue .lua_State *.1.Table *.1.const TValue *.1"}
!428 = metadata !{metadata !"Table .lua_State *.1"}
!429 = metadata !{metadata !"GCObject .lua_State *.1.int.0.size_t.0"}
!430 = metadata !{metadata !"void.lua_State *.1.Table *.1"}
!431 = metadata !{metadata !"void.lua_State *.1.const char *.1"}
!432 = metadata !{metadata !"int.const TValue *.1.lua_Integer *.1.int.0"}
!433 = metadata !{metadata !"Node .const Table *.1.const TValue *.1"}
!434 = metadata !{metadata !"Node .Table *.1"}
!435 = metadata !{metadata !"void.lua_State *.1.Table *.1.const TValue *.1"}
!436 = metadata !{metadata !"const TValue .Table *.1.lua_Integer.0"}
!437 = metadata !{metadata !"const TValue .Table *.1.TString *.1"}
!438 = metadata !{metadata !"const TValue .Table *.1.const TValue *.1"}
!439 = metadata !{metadata !"int.Table *.1"}
!440 = metadata !{metadata !"int.Table *.1.unsigned int.0"}
!441 = metadata !{metadata !"int.lua_State *.1.const TValue *.1.const TValue *.1"}
!442 = metadata !{metadata !"unsigned int.const Table *.1.unsigned int *.1"}
!443 = metadata !{metadata !"int.const Table *.1.unsigned int *.1.unsigned int *.1"}
!444 = metadata !{metadata !"int.const TValue *.1.unsigned int *.1"}
!445 = metadata !{metadata !"unsigned int.unsigned int [].1.unsigned int *.1"}
!446 = metadata !{metadata !"unsigned int.const TValue *.1"}
!447 = metadata !{metadata !"int.unsigned int.0"}
!448 = metadata !{metadata !"int.lua_Number.0"}
!449 = metadata !{metadata !"unsigned int.TString *.1"}
!450 = metadata !{metadata !"double.double.0.int *.1"}
!451 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/ltable.h"}
!452 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/ltable.c"}
!453 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lmem.h"}
!454 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lgc.h"}
!455 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/ldebug.h"}
!456 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lvm.h"}
!457 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lobject.h"}
!458 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lstring.h"}
!459 = metadata !{metadata !"D:/Xilinx/SDx/2016.3/SDK/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include\5Cbits/mathcalls.h"}
!460 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!461 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!462 = metadata !{i32 1, metadata !"wchar_size", i32 4}
!463 = metadata !{i32 1, metadata !"min_enum_size", i32 4}
!464 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
!465 = metadata !{i32 786689, metadata !4, metadata !"L", metadata !6, i32 16777404, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 188]
!466 = metadata !{i32 188, i32 27, metadata !4, null}
!467 = metadata !{i32 786689, metadata !4, metadata !"t", metadata !6, i32 33554620, metadata !268, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [t] [line 188]
!468 = metadata !{i32 188, i32 37, metadata !4, null}
!469 = metadata !{i32 786689, metadata !4, metadata !"key", metadata !6, i32 50331836, metadata !34, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [key] [line 188]
!470 = metadata !{i32 188, i32 46, metadata !4, null}
!471 = metadata !{i32 786688, metadata !4, metadata !"i", metadata !6, i32 189, metadata !71, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 189]
!472 = metadata !{i32 189, i32 16, metadata !4, null}
!473 = metadata !{i32 189, i32 20, metadata !4, null}
!474 = metadata !{i32 190, i32 3, metadata !475, null}
!475 = metadata !{i32 786443, metadata !5, metadata !4, i32 190, i32 3, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!476 = metadata !{i32 190, i32 3, metadata !477, null}
!477 = metadata !{i32 786443, metadata !5, metadata !478, i32 190, i32 3, i32 2, i32 125} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!478 = metadata !{i32 786443, metadata !5, metadata !475, i32 190, i32 3, i32 1, i32 124} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!479 = metadata !{i32 191, i32 9, metadata !480, null}
!480 = metadata !{i32 786443, metadata !5, metadata !481, i32 191, i32 9, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!481 = metadata !{i32 786443, metadata !5, metadata !475, i32 190, i32 33, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!482 = metadata !{i32 786688, metadata !483, metadata !"io", metadata !6, i32 192, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [io] [line 192]
!483 = metadata !{i32 786443, metadata !5, metadata !484, i32 192, i32 7, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!484 = metadata !{i32 786443, metadata !5, metadata !480, i32 191, i32 33, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!485 = metadata !{i32 192, i32 7, metadata !483, null}
!486 = metadata !{i32 786688, metadata !487, metadata !"io1", metadata !6, i32 193, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [io1] [line 193]
!487 = metadata !{i32 786443, metadata !5, metadata !484, i32 193, i32 7, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!488 = metadata !{i32 193, i32 7, metadata !487, null}
!489 = metadata !{i32 194, i32 7, metadata !484, null}
!490 = metadata !{i32 196, i32 3, metadata !481, null}
!491 = metadata !{i32 190, i32 28, metadata !475, null}
!492 = metadata !{i32 197, i32 8, metadata !493, null}
!493 = metadata !{i32 786443, metadata !5, metadata !4, i32 197, i32 3, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!494 = metadata !{i32 197, i32 8, metadata !495, null}
!495 = metadata !{i32 786443, metadata !5, metadata !496, i32 197, i32 8, i32 2, i32 127} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!496 = metadata !{i32 786443, metadata !5, metadata !493, i32 197, i32 8, i32 1, i32 126} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!497 = metadata !{i32 198, i32 9, metadata !498, null}
!498 = metadata !{i32 786443, metadata !5, metadata !499, i32 198, i32 9, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!499 = metadata !{i32 786443, metadata !5, metadata !493, i32 197, i32 59, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!500 = metadata !{i32 786688, metadata !501, metadata !"io1", metadata !6, i32 199, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [io1] [line 199]
!501 = metadata !{i32 786443, metadata !5, metadata !502, i32 199, i32 7, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!502 = metadata !{i32 786443, metadata !5, metadata !498, i32 198, i32 38, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!503 = metadata !{i32 199, i32 7, metadata !501, null}
!504 = metadata !{i32 786688, metadata !505, metadata !"io1", metadata !6, i32 200, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [io1] [line 200]
!505 = metadata !{i32 786443, metadata !5, metadata !502, i32 200, i32 7, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!506 = metadata !{i32 200, i32 7, metadata !505, null}
!507 = metadata !{i32 201, i32 7, metadata !502, null}
!508 = metadata !{i32 203, i32 3, metadata !499, null}
!509 = metadata !{i32 197, i32 54, metadata !493, null}
!510 = metadata !{i32 204, i32 3, metadata !4, null}
!511 = metadata !{i32 205, i32 1, metadata !4, null}
!512 = metadata !{i32 786689, metadata !340, metadata !"L", metadata !6, i32 16777377, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 161]
!513 = metadata !{i32 161, i32 43, metadata !340, null}
!514 = metadata !{i32 786689, metadata !340, metadata !"t", metadata !6, i32 33554593, metadata !268, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [t] [line 161]
!515 = metadata !{i32 161, i32 53, metadata !340, null}
!516 = metadata !{i32 786689, metadata !340, metadata !"key", metadata !6, i32 50331809, metadata !34, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [key] [line 161]
!517 = metadata !{i32 161, i32 62, metadata !340, null}
!518 = metadata !{i32 786688, metadata !340, metadata !"i", metadata !6, i32 162, metadata !71, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 162]
!519 = metadata !{i32 162, i32 16, metadata !340, null}
!520 = metadata !{i32 163, i32 7, metadata !521, null}
!521 = metadata !{i32 786443, metadata !5, metadata !340, i32 163, i32 7, i32 0, i32 116} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!522 = metadata !{i32 163, i32 21, metadata !523, null}
!523 = metadata !{i32 786443, metadata !5, metadata !521, i32 163, i32 21, i32 1, i32 128} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!524 = metadata !{i32 164, i32 7, metadata !340, null}
!525 = metadata !{i32 165, i32 7, metadata !526, null}
!526 = metadata !{i32 786443, metadata !5, metadata !340, i32 165, i32 7, i32 0, i32 117} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!527 = metadata !{i32 165, i32 7, metadata !528, null}
!528 = metadata !{i32 786443, metadata !5, metadata !526, i32 165, i32 7, i32 1, i32 129} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!529 = metadata !{i32 166, i32 5, metadata !526, null}
!530 = metadata !{i32 786688, metadata !531, metadata !"nx", metadata !6, i32 168, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nx] [line 168]
!531 = metadata !{i32 786443, metadata !5, metadata !526, i32 167, i32 8, i32 0, i32 118} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!532 = metadata !{i32 168, i32 9, metadata !531, null}
!533 = metadata !{i32 786688, metadata !531, metadata !"n", metadata !6, i32 169, metadata !149, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 169]
!534 = metadata !{i32 169, i32 11, metadata !531, null}
!535 = metadata !{i32 169, i32 15, metadata !531, null}
!536 = metadata !{i32 170, i32 5, metadata !537, null}
!537 = metadata !{i32 786443, metadata !5, metadata !531, i32 170, i32 5, i32 0, i32 119} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!538 = metadata !{i32 172, i32 11, metadata !539, null}
!539 = metadata !{i32 786443, metadata !5, metadata !540, i32 172, i32 11, i32 0, i32 121} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!540 = metadata !{i32 786443, metadata !5, metadata !537, i32 170, i32 14, i32 0, i32 120} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!541 = metadata !{i32 172, i32 11, metadata !542, null}
!542 = metadata !{i32 786443, metadata !5, metadata !539, i32 172, i32 11, i32 1, i32 130} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!543 = metadata !{i32 172, i32 11, metadata !544, null}
!544 = metadata !{i32 786443, metadata !5, metadata !539, i32 172, i32 11, i32 2, i32 131} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!545 = metadata !{i32 172, i32 11, metadata !546, null}
!546 = metadata !{i32 786443, metadata !5, metadata !539, i32 172, i32 11, i32 3, i32 132} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!547 = metadata !{i32 175, i32 9, metadata !548, null}
!548 = metadata !{i32 786443, metadata !5, metadata !539, i32 174, i32 51, i32 0, i32 122} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!549 = metadata !{i32 177, i32 9, metadata !548, null}
!550 = metadata !{i32 179, i32 7, metadata !540, null}
!551 = metadata !{i32 180, i32 11, metadata !552, null}
!552 = metadata !{i32 786443, metadata !5, metadata !540, i32 180, i32 11, i32 0, i32 123} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!553 = metadata !{i32 181, i32 9, metadata !552, null}
!554 = metadata !{i32 182, i32 12, metadata !552, null}
!555 = metadata !{i32 183, i32 5, metadata !540, null}
!556 = metadata !{i32 185, i32 1, metadata !340, null}
!557 = metadata !{i32 786689, metadata !270, metadata !"L", metadata !6, i32 16777551, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 335]
!558 = metadata !{i32 335, i32 30, metadata !270, null}
!559 = metadata !{i32 786689, metadata !270, metadata !"t", metadata !6, i32 33554767, metadata !268, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [t] [line 335]
!560 = metadata !{i32 335, i32 40, metadata !270, null}
!561 = metadata !{i32 786689, metadata !270, metadata !"nasize", metadata !6, i32 50331983, metadata !71, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nasize] [line 335]
!562 = metadata !{i32 335, i32 56, metadata !270, null}
!563 = metadata !{i32 786689, metadata !270, metadata !"nhsize", metadata !6, i32 67109200, metadata !71, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nhsize] [line 336]
!564 = metadata !{i32 336, i32 56, metadata !270, null}
!565 = metadata !{i32 786688, metadata !270, metadata !"i", metadata !6, i32 337, metadata !71, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 337]
!566 = metadata !{i32 337, i32 16, metadata !270, null}
!567 = metadata !{i32 786688, metadata !270, metadata !"j", metadata !6, i32 338, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 338]
!568 = metadata !{i32 338, i32 7, metadata !270, null}
!569 = metadata !{i32 786688, metadata !270, metadata !"oldasize", metadata !6, i32 339, metadata !71, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [oldasize] [line 339]
!570 = metadata !{i32 339, i32 16, metadata !270, null}
!571 = metadata !{i32 339, i32 3, metadata !270, null}
!572 = metadata !{i32 786688, metadata !270, metadata !"oldhsize", metadata !6, i32 340, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [oldhsize] [line 340]
!573 = metadata !{i32 340, i32 7, metadata !270, null}
!574 = metadata !{i32 340, i32 3, metadata !270, null}
!575 = metadata !{i32 786688, metadata !270, metadata !"nold", metadata !6, i32 341, metadata !149, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nold] [line 341]
!576 = metadata !{i32 341, i32 9, metadata !270, null}
!577 = metadata !{i32 341, i32 3, metadata !270, null}
!578 = metadata !{i32 342, i32 7, metadata !579, null}
!579 = metadata !{i32 786443, metadata !5, metadata !270, i32 342, i32 7, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!580 = metadata !{i32 343, i32 5, metadata !579, null}
!581 = metadata !{i32 345, i32 3, metadata !270, null}
!582 = metadata !{i32 346, i32 7, metadata !583, null}
!583 = metadata !{i32 786443, metadata !5, metadata !270, i32 346, i32 7, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!584 = metadata !{i32 347, i32 5, metadata !585, null}
!585 = metadata !{i32 786443, metadata !5, metadata !583, i32 346, i32 26, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!586 = metadata !{i32 349, i32 10, metadata !587, null}
!587 = metadata !{i32 786443, metadata !5, metadata !585, i32 349, i32 5, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!588 = metadata !{i32 349, i32 10, metadata !589, null}
!589 = metadata !{i32 786443, metadata !5, metadata !590, i32 349, i32 10, i32 2, i32 134} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!590 = metadata !{i32 786443, metadata !5, metadata !587, i32 349, i32 10, i32 1, i32 133} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!591 = metadata !{i32 350, i32 11, metadata !592, null}
!592 = metadata !{i32 786443, metadata !5, metadata !593, i32 350, i32 11, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!593 = metadata !{i32 786443, metadata !5, metadata !587, i32 349, i32 37, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!594 = metadata !{i32 351, i32 9, metadata !592, null}
!595 = metadata !{i32 352, i32 5, metadata !593, null}
!596 = metadata !{i32 349, i32 32, metadata !587, null}
!597 = metadata !{i32 354, i32 5, metadata !585, null}
!598 = metadata !{i32 354, i32 5, metadata !599, null}
!599 = metadata !{i32 786443, metadata !5, metadata !585, i32 354, i32 5, i32 1, i32 135} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!600 = metadata !{i32 354, i32 5, metadata !601, null}
!601 = metadata !{i32 786443, metadata !5, metadata !585, i32 354, i32 5, i32 2, i32 136} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!602 = metadata !{i32 354, i32 5, metadata !603, null}
!603 = metadata !{i32 786443, metadata !5, metadata !604, i32 354, i32 5, i32 4, i32 138} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!604 = metadata !{i32 786443, metadata !5, metadata !585, i32 354, i32 5, i32 3, i32 137} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!605 = metadata !{i32 355, i32 3, metadata !585, null}
!606 = metadata !{i32 357, i32 8, metadata !607, null}
!607 = metadata !{i32 786443, metadata !5, metadata !270, i32 357, i32 3, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!608 = metadata !{i32 357, i32 8, metadata !609, null}
!609 = metadata !{i32 786443, metadata !5, metadata !610, i32 357, i32 8, i32 2, i32 140} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!610 = metadata !{i32 786443, metadata !5, metadata !607, i32 357, i32 8, i32 1, i32 139} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!611 = metadata !{i32 786688, metadata !612, metadata !"old", metadata !6, i32 358, metadata !149, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [old] [line 358]
!612 = metadata !{i32 786443, metadata !5, metadata !607, i32 357, i32 46, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!613 = metadata !{i32 358, i32 11, metadata !612, null}
!614 = metadata !{i32 358, i32 5, metadata !612, null}
!615 = metadata !{i32 359, i32 9, metadata !616, null}
!616 = metadata !{i32 786443, metadata !5, metadata !612, i32 359, i32 9, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!617 = metadata !{i32 786688, metadata !618, metadata !"io1", metadata !6, i32 362, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [io1] [line 362]
!618 = metadata !{i32 786443, metadata !5, metadata !619, i32 362, i32 7, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!619 = metadata !{i32 786443, metadata !5, metadata !616, i32 359, i32 30, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!620 = metadata !{i32 362, i32 7, metadata !618, null}
!621 = metadata !{i32 363, i32 5, metadata !619, null}
!622 = metadata !{i32 364, i32 3, metadata !612, null}
!623 = metadata !{i32 357, i32 41, metadata !607, null}
!624 = metadata !{i32 365, i32 7, metadata !625, null}
!625 = metadata !{i32 786443, metadata !5, metadata !270, i32 365, i32 7, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!626 = metadata !{i32 366, i32 5, metadata !625, null}
!627 = metadata !{i32 367, i32 1, metadata !270, null}
!628 = metadata !{i32 786689, metadata !339, metadata !"L", metadata !6, i32 16777517, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 301]
!629 = metadata !{i32 301, i32 40, metadata !339, null}
!630 = metadata !{i32 786689, metadata !339, metadata !"t", metadata !6, i32 33554733, metadata !268, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [t] [line 301]
!631 = metadata !{i32 301, i32 50, metadata !339, null}
!632 = metadata !{i32 786689, metadata !339, metadata !"size", metadata !6, i32 50331949, metadata !71, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 301]
!633 = metadata !{i32 301, i32 66, metadata !339, null}
!634 = metadata !{i32 786688, metadata !339, metadata !"i", metadata !6, i32 302, metadata !71, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 302]
!635 = metadata !{i32 302, i32 16, metadata !339, null}
!636 = metadata !{i32 303, i32 3, metadata !339, null}
!637 = metadata !{i32 303, i32 3, metadata !638, null}
!638 = metadata !{i32 786443, metadata !5, metadata !339, i32 303, i32 3, i32 1, i32 141} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!639 = metadata !{i32 303, i32 3, metadata !640, null}
!640 = metadata !{i32 786443, metadata !5, metadata !339, i32 303, i32 3, i32 2, i32 142} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!641 = metadata !{i32 303, i32 3, metadata !642, null}
!642 = metadata !{i32 786443, metadata !5, metadata !643, i32 303, i32 3, i32 4, i32 144} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!643 = metadata !{i32 786443, metadata !5, metadata !339, i32 303, i32 3, i32 3, i32 143} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!644 = metadata !{i32 304, i32 8, metadata !645, null}
!645 = metadata !{i32 786443, metadata !5, metadata !339, i32 304, i32 3, i32 0, i32 115} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!646 = metadata !{i32 304, i32 8, metadata !647, null}
!647 = metadata !{i32 786443, metadata !5, metadata !648, i32 304, i32 8, i32 2, i32 146} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!648 = metadata !{i32 786443, metadata !5, metadata !645, i32 304, i32 8, i32 1, i32 145} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!649 = metadata !{i32 305, i32 6, metadata !645, null}
!650 = metadata !{i32 304, i32 32, metadata !645, null}
!651 = metadata !{i32 306, i32 3, metadata !339, null}
!652 = metadata !{i32 307, i32 1, metadata !339, null}
!653 = metadata !{i32 786689, metadata !338, metadata !"L", metadata !6, i32 16777526, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 310]
!654 = metadata !{i32 310, i32 39, metadata !338, null}
!655 = metadata !{i32 786689, metadata !338, metadata !"t", metadata !6, i32 33554742, metadata !268, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [t] [line 310]
!656 = metadata !{i32 310, i32 49, metadata !338, null}
!657 = metadata !{i32 786689, metadata !338, metadata !"size", metadata !6, i32 50331958, metadata !71, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 310]
!658 = metadata !{i32 310, i32 65, metadata !338, null}
!659 = metadata !{i32 786688, metadata !338, metadata !"lsize", metadata !6, i32 311, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lsize] [line 311]
!660 = metadata !{i32 311, i32 7, metadata !338, null}
!661 = metadata !{i32 312, i32 7, metadata !662, null}
!662 = metadata !{i32 786443, metadata !5, metadata !338, i32 312, i32 7, i32 0, i32 109} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!663 = metadata !{i32 313, i32 5, metadata !664, null}
!664 = metadata !{i32 786443, metadata !5, metadata !662, i32 312, i32 18, i32 0, i32 110} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!665 = metadata !{i32 314, i32 5, metadata !664, null}
!666 = metadata !{i32 315, i32 3, metadata !664, null}
!667 = metadata !{i32 786688, metadata !668, metadata !"i", metadata !6, i32 317, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 317]
!668 = metadata !{i32 786443, metadata !5, metadata !662, i32 316, i32 8, i32 0, i32 111} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!669 = metadata !{i32 317, i32 9, metadata !668, null}
!670 = metadata !{i32 318, i32 13, metadata !668, null}
!671 = metadata !{i32 319, i32 9, metadata !672, null}
!672 = metadata !{i32 786443, metadata !5, metadata !668, i32 319, i32 9, i32 0, i32 112} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!673 = metadata !{i32 320, i32 7, metadata !672, null}
!674 = metadata !{i32 321, i32 5, metadata !668, null}
!675 = metadata !{i32 322, i32 5, metadata !668, null}
!676 = metadata !{i32 322, i32 15, metadata !677, null}
!677 = metadata !{i32 786443, metadata !5, metadata !668, i32 322, i32 15, i32 1, i32 147} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!678 = metadata !{i32 322, i32 15, metadata !668, null}
!679 = metadata !{i32 322, i32 15, metadata !680, null}
!680 = metadata !{i32 786443, metadata !5, metadata !668, i32 322, i32 15, i32 2, i32 148} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!681 = metadata !{i32 322, i32 15, metadata !682, null}
!682 = metadata !{i32 786443, metadata !5, metadata !683, i32 322, i32 15, i32 4, i32 150} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!683 = metadata !{i32 786443, metadata !5, metadata !668, i32 322, i32 15, i32 3, i32 149} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!684 = metadata !{i32 323, i32 10, metadata !685, null}
!685 = metadata !{i32 786443, metadata !5, metadata !668, i32 323, i32 5, i32 0, i32 113} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!686 = metadata !{i32 323, i32 10, metadata !687, null}
!687 = metadata !{i32 786443, metadata !5, metadata !688, i32 323, i32 10, i32 2, i32 152} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!688 = metadata !{i32 786443, metadata !5, metadata !685, i32 323, i32 10, i32 1, i32 151} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!689 = metadata !{i32 786688, metadata !690, metadata !"n", metadata !6, i32 324, metadata !149, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 324]
!690 = metadata !{i32 786443, metadata !5, metadata !685, i32 323, i32 37, i32 0, i32 114} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!691 = metadata !{i32 324, i32 13, metadata !690, null}
!692 = metadata !{i32 324, i32 7, metadata !690, null}
!693 = metadata !{i32 325, i32 7, metadata !690, null}
!694 = metadata !{i32 326, i32 7, metadata !690, null}
!695 = metadata !{i32 327, i32 7, metadata !690, null}
!696 = metadata !{i32 328, i32 5, metadata !690, null}
!697 = metadata !{i32 323, i32 32, metadata !685, null}
!698 = metadata !{i32 330, i32 3, metadata !338, null}
!699 = metadata !{i32 331, i32 3, metadata !338, null}
!700 = metadata !{i32 332, i32 1, metadata !338, null}
!701 = metadata !{i32 786689, metadata !298, metadata !"L", metadata !6, i32 16777815, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 599]
!702 = metadata !{i32 599, i32 30, metadata !298, null}
!703 = metadata !{i32 786689, metadata !298, metadata !"t", metadata !6, i32 33555031, metadata !268, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [t] [line 599]
!704 = metadata !{i32 599, i32 40, metadata !298, null}
!705 = metadata !{i32 786689, metadata !298, metadata !"key", metadata !6, i32 50332247, metadata !53, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [key] [line 599]
!706 = metadata !{i32 599, i32 55, metadata !298, null}
!707 = metadata !{i32 786689, metadata !298, metadata !"value", metadata !6, i32 67109463, metadata !35, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [value] [line 599]
!708 = metadata !{i32 599, i32 68, metadata !298, null}
!709 = metadata !{i32 786688, metadata !298, metadata !"p", metadata !6, i32 600, metadata !285, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 600]
!710 = metadata !{i32 600, i32 17, metadata !298, null}
!711 = metadata !{i32 600, i32 21, metadata !298, null}
!712 = metadata !{i32 786688, metadata !298, metadata !"cell", metadata !6, i32 601, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cell] [line 601]
!713 = metadata !{i32 601, i32 11, metadata !298, null}
!714 = metadata !{i32 602, i32 7, metadata !715, null}
!715 = metadata !{i32 786443, metadata !5, metadata !298, i32 602, i32 7, i32 0, i32 62} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!716 = metadata !{i32 603, i32 5, metadata !715, null}
!717 = metadata !{i32 786688, metadata !718, metadata !"k", metadata !6, i32 605, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 605]
!718 = metadata !{i32 786443, metadata !5, metadata !715, i32 604, i32 8, i32 0, i32 63} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!719 = metadata !{i32 605, i32 12, metadata !718, null}
!720 = metadata !{i32 786688, metadata !721, metadata !"io", metadata !6, i32 606, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [io] [line 606]
!721 = metadata !{i32 786443, metadata !5, metadata !718, i32 606, i32 5, i32 0, i32 64} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!722 = metadata !{i32 606, i32 5, metadata !721, null}
!723 = metadata !{i32 607, i32 12, metadata !718, null}
!724 = metadata !{i32 609, i32 3, metadata !298, null}
!725 = metadata !{i32 610, i32 1, metadata !298, null}
!726 = metadata !{i32 786689, metadata !297, metadata !"L", metadata !6, i32 16777807, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 591]
!727 = metadata !{i32 591, i32 30, metadata !297, null}
!728 = metadata !{i32 786689, metadata !297, metadata !"t", metadata !6, i32 33555023, metadata !268, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [t] [line 591]
!729 = metadata !{i32 591, i32 40, metadata !297, null}
!730 = metadata !{i32 786689, metadata !297, metadata !"key", metadata !6, i32 50332239, metadata !285, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [key] [line 591]
!731 = metadata !{i32 591, i32 57, metadata !297, null}
!732 = metadata !{i32 786688, metadata !297, metadata !"p", metadata !6, i32 592, metadata !285, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 592]
!733 = metadata !{i32 592, i32 17, metadata !297, null}
!734 = metadata !{i32 592, i32 21, metadata !297, null}
!735 = metadata !{i32 593, i32 7, metadata !736, null}
!736 = metadata !{i32 786443, metadata !5, metadata !297, i32 593, i32 7, i32 0, i32 61} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!737 = metadata !{i32 594, i32 5, metadata !736, null}
!738 = metadata !{i32 595, i32 15, metadata !736, null}
!739 = metadata !{i32 596, i32 1, metadata !297, null}
!740 = metadata !{i32 786689, metadata !273, metadata !"L", metadata !6, i32 16777586, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 370]
!741 = metadata !{i32 370, i32 35, metadata !273, null}
!742 = metadata !{i32 786689, metadata !273, metadata !"t", metadata !6, i32 33554802, metadata !268, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [t] [line 370]
!743 = metadata !{i32 370, i32 45, metadata !273, null}
!744 = metadata !{i32 786689, metadata !273, metadata !"nasize", metadata !6, i32 50332018, metadata !71, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nasize] [line 370]
!745 = metadata !{i32 370, i32 61, metadata !273, null}
!746 = metadata !{i32 786688, metadata !273, metadata !"nsize", metadata !6, i32 371, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nsize] [line 371]
!747 = metadata !{i32 371, i32 7, metadata !273, null}
!748 = metadata !{i32 371, i32 3, metadata !273, null}
!749 = metadata !{i32 371, i32 3, metadata !750, null}
!750 = metadata !{i32 786443, metadata !5, metadata !273, i32 371, i32 3, i32 1, i32 153} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!751 = metadata !{i32 371, i32 3, metadata !752, null}
!752 = metadata !{i32 786443, metadata !5, metadata !273, i32 371, i32 3, i32 2, i32 154} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!753 = metadata !{i32 371, i32 3, metadata !754, null}
!754 = metadata !{i32 786443, metadata !5, metadata !755, i32 371, i32 3, i32 4, i32 156} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!755 = metadata !{i32 786443, metadata !5, metadata !273, i32 371, i32 3, i32 3, i32 155} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!756 = metadata !{i32 372, i32 3, metadata !273, null}
!757 = metadata !{i32 373, i32 1, metadata !273, null}
!758 = metadata !{i32 786689, metadata !276, metadata !"L", metadata !6, i32 16777620, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 404]
!759 = metadata !{i32 404, i32 29, metadata !276, null}
!760 = metadata !{i32 786688, metadata !276, metadata !"o", metadata !6, i32 405, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [o] [line 405]
!761 = metadata !{i32 405, i32 13, metadata !276, null}
!762 = metadata !{i32 405, i32 17, metadata !276, null}
!763 = metadata !{i32 786688, metadata !276, metadata !"t", metadata !6, i32 406, metadata !268, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [t] [line 406]
!764 = metadata !{i32 406, i32 10, metadata !276, null}
!765 = metadata !{i32 406, i32 3, metadata !276, null}
!766 = metadata !{i32 407, i32 3, metadata !276, null}
!767 = metadata !{i32 408, i32 3, metadata !276, null}
!768 = metadata !{i32 409, i32 3, metadata !276, null}
!769 = metadata !{i32 410, i32 3, metadata !276, null}
!770 = metadata !{i32 411, i32 3, metadata !276, null}
!771 = metadata !{i32 412, i32 3, metadata !276, null}
!772 = metadata !{i32 786689, metadata !279, metadata !"L", metadata !6, i32 16777632, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 416]
!773 = metadata !{i32 416, i32 28, metadata !279, null}
!774 = metadata !{i32 786689, metadata !279, metadata !"t", metadata !6, i32 33554848, metadata !268, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [t] [line 416]
!775 = metadata !{i32 416, i32 38, metadata !279, null}
!776 = metadata !{i32 417, i32 7, metadata !777, null}
!777 = metadata !{i32 786443, metadata !5, metadata !279, i32 417, i32 7, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!778 = metadata !{i32 418, i32 5, metadata !777, null}
!779 = metadata !{i32 419, i32 3, metadata !279, null}
!780 = metadata !{i32 420, i32 3, metadata !279, null}
!781 = metadata !{i32 421, i32 1, metadata !279, null}
!782 = metadata !{i32 786689, metadata !282, metadata !"L", metadata !6, i32 16777658, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 442]
!783 = metadata !{i32 442, i32 33, metadata !282, null}
!784 = metadata !{i32 786689, metadata !282, metadata !"t", metadata !6, i32 33554874, metadata !268, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [t] [line 442]
!785 = metadata !{i32 442, i32 43, metadata !282, null}
!786 = metadata !{i32 786689, metadata !282, metadata !"key", metadata !6, i32 50332090, metadata !285, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [key] [line 442]
!787 = metadata !{i32 442, i32 60, metadata !282, null}
!788 = metadata !{i32 786688, metadata !282, metadata !"mp", metadata !6, i32 443, metadata !149, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mp] [line 443]
!789 = metadata !{i32 443, i32 9, metadata !282, null}
!790 = metadata !{i32 786688, metadata !282, metadata !"aux", metadata !6, i32 444, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [aux] [line 444]
!791 = metadata !{i32 444, i32 10, metadata !282, null}
!792 = metadata !{i32 445, i32 7, metadata !793, null}
!793 = metadata !{i32 786443, metadata !5, metadata !282, i32 445, i32 7, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!794 = metadata !{i32 445, i32 21, metadata !795, null}
!795 = metadata !{i32 786443, metadata !5, metadata !793, i32 445, i32 21, i32 1, i32 157} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!796 = metadata !{i32 446, i32 12, metadata !797, null}
!797 = metadata !{i32 786443, metadata !5, metadata !793, i32 446, i32 12, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!798 = metadata !{i32 786688, metadata !799, metadata !"k", metadata !6, i32 447, metadata !53, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 447]
!799 = metadata !{i32 786443, metadata !5, metadata !797, i32 446, i32 28, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!800 = metadata !{i32 447, i32 17, metadata !799, null}
!801 = metadata !{i32 448, i32 9, metadata !802, null}
!802 = metadata !{i32 786443, metadata !5, metadata !799, i32 448, i32 9, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!803 = metadata !{i32 786688, metadata !804, metadata !"io", metadata !6, i32 449, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [io] [line 449]
!804 = metadata !{i32 786443, metadata !5, metadata !805, i32 449, i32 7, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!805 = metadata !{i32 786443, metadata !5, metadata !802, i32 448, i32 37, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!806 = metadata !{i32 449, i32 7, metadata !804, null}
!807 = metadata !{i32 450, i32 7, metadata !805, null}
!808 = metadata !{i32 451, i32 5, metadata !805, null}
!809 = metadata !{i32 452, i32 14, metadata !810, null}
!810 = metadata !{i32 786443, metadata !5, metadata !802, i32 452, i32 14, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!811 = metadata !{i32 453, i32 7, metadata !810, null}
!812 = metadata !{i32 454, i32 3, metadata !799, null}
!813 = metadata !{i32 455, i32 8, metadata !282, null}
!814 = metadata !{i32 456, i32 7, metadata !815, null}
!815 = metadata !{i32 786443, metadata !5, metadata !282, i32 456, i32 7, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!816 = metadata !{i32 456, i32 7, metadata !817, null}
!817 = metadata !{i32 786443, metadata !5, metadata !815, i32 456, i32 7, i32 1, i32 158} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!818 = metadata !{i32 786688, metadata !819, metadata !"othern", metadata !6, i32 457, metadata !149, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [othern] [line 457]
!819 = metadata !{i32 786443, metadata !5, metadata !815, i32 456, i32 42, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!820 = metadata !{i32 457, i32 11, metadata !819, null}
!821 = metadata !{i32 786688, metadata !819, metadata !"f", metadata !6, i32 458, metadata !149, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [f] [line 458]
!822 = metadata !{i32 458, i32 11, metadata !819, null}
!823 = metadata !{i32 458, i32 15, metadata !819, null}
!824 = metadata !{i32 459, i32 9, metadata !825, null}
!825 = metadata !{i32 786443, metadata !5, metadata !819, i32 459, i32 9, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!826 = metadata !{i32 460, i32 7, metadata !827, null}
!827 = metadata !{i32 786443, metadata !5, metadata !825, i32 459, i32 20, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!828 = metadata !{i32 462, i32 14, metadata !827, null}
!829 = metadata !{i32 465, i32 14, metadata !819, null}
!830 = metadata !{i32 466, i32 9, metadata !831, null}
!831 = metadata !{i32 786443, metadata !5, metadata !819, i32 466, i32 9, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!832 = metadata !{i32 468, i32 7, metadata !833, null}
!833 = metadata !{i32 786443, metadata !5, metadata !831, i32 466, i32 23, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!834 = metadata !{i32 468, i32 7, metadata !835, null}
!835 = metadata !{i32 786443, metadata !5, metadata !833, i32 468, i32 7, i32 1, i32 159} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!836 = metadata !{i32 469, i32 9, metadata !833, null}
!837 = metadata !{i32 470, i32 7, metadata !833, null}
!838 = metadata !{i32 471, i32 7, metadata !833, null}
!839 = metadata !{i32 472, i32 11, metadata !840, null}
!840 = metadata !{i32 786443, metadata !5, metadata !833, i32 472, i32 11, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!841 = metadata !{i32 473, i32 9, metadata !842, null}
!842 = metadata !{i32 786443, metadata !5, metadata !840, i32 472, i32 27, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!843 = metadata !{i32 474, i32 9, metadata !842, null}
!844 = metadata !{i32 475, i32 7, metadata !842, null}
!845 = metadata !{i32 476, i32 7, metadata !833, null}
!846 = metadata !{i32 477, i32 5, metadata !833, null}
!847 = metadata !{i32 480, i32 11, metadata !848, null}
!848 = metadata !{i32 786443, metadata !5, metadata !849, i32 480, i32 11, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!849 = metadata !{i32 786443, metadata !5, metadata !831, i32 478, i32 10, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!850 = metadata !{i32 481, i32 9, metadata !848, null}
!851 = metadata !{i32 483, i32 7, metadata !849, null}
!852 = metadata !{i32 484, i32 7, metadata !849, null}
!853 = metadata !{i32 486, i32 3, metadata !819, null}
!854 = metadata !{i32 786688, metadata !855, metadata !"k_", metadata !6, i32 487, metadata !856, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k_] [line 487]
!855 = metadata !{i32 786443, metadata !5, metadata !282, i32 487, i32 3, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!856 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !155} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from TKey]
!857 = metadata !{i32 487, i32 3, metadata !855, null}
!858 = metadata !{i32 786688, metadata !855, metadata !"io_", metadata !6, i32 487, metadata !285, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [io_] [line 487]
!859 = metadata !{i32 488, i32 3, metadata !282, null}
!860 = metadata !{i32 488, i32 3, metadata !861, null}
!861 = metadata !{i32 786443, metadata !5, metadata !282, i32 488, i32 3, i32 1, i32 160} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!862 = metadata !{i32 488, i32 3, metadata !863, null}
!863 = metadata !{i32 786443, metadata !5, metadata !282, i32 488, i32 3, i32 3, i32 162} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!864 = metadata !{i32 488, i32 3, metadata !865, null}
!865 = metadata !{i32 786443, metadata !5, metadata !282, i32 488, i32 3, i32 5, i32 164} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!866 = metadata !{i32 488, i32 3, metadata !867, null}
!867 = metadata !{i32 786443, metadata !5, metadata !868, i32 488, i32 3, i32 6, i32 165} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!868 = metadata !{i32 786443, metadata !5, metadata !869, i32 488, i32 3, i32 4, i32 163} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!869 = metadata !{i32 786443, metadata !5, metadata !282, i32 488, i32 3, i32 2, i32 161} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!870 = metadata !{i32 490, i32 3, metadata !282, null}
!871 = metadata !{i32 491, i32 1, metadata !282, null}
!872 = metadata !{i32 786689, metadata !332, metadata !"t", metadata !6, i32 16777335, metadata !324, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [t] [line 119]
!873 = metadata !{i32 119, i32 41, metadata !332, null}
!874 = metadata !{i32 786689, metadata !332, metadata !"key", metadata !6, i32 33554551, metadata !285, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [key] [line 119]
!875 = metadata !{i32 119, i32 58, metadata !332, null}
!876 = metadata !{i32 120, i32 3, metadata !332, null}
!877 = metadata !{i32 122, i32 7, metadata !878, null}
!878 = metadata !{i32 786443, metadata !5, metadata !332, i32 120, i32 23, i32 0, i32 105} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!879 = metadata !{i32 124, i32 14, metadata !878, null}
!880 = metadata !{i32 126, i32 7, metadata !878, null}
!881 = metadata !{i32 128, i32 14, metadata !878, null}
!882 = metadata !{i32 130, i32 7, metadata !878, null}
!883 = metadata !{i32 132, i32 7, metadata !878, null}
!884 = metadata !{i32 134, i32 7, metadata !878, null}
!885 = metadata !{i32 137, i32 7, metadata !878, null}
!886 = metadata !{i32 139, i32 1, metadata !332, null}
!887 = metadata !{i32 786689, metadata !329, metadata !"t", metadata !6, i32 16777640, metadata !268, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [t] [line 424]
!888 = metadata !{i32 424, i32 33, metadata !329, null}
!889 = metadata !{i32 425, i32 3, metadata !329, null}
!890 = metadata !{i32 425, i32 3, metadata !891, null}
!891 = metadata !{i32 786443, metadata !5, metadata !329, i32 425, i32 3, i32 1, i32 166} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!892 = metadata !{i32 426, i32 5, metadata !893, null}
!893 = metadata !{i32 786443, metadata !5, metadata !329, i32 425, i32 33, i32 0, i32 103} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!894 = metadata !{i32 427, i32 9, metadata !895, null}
!895 = metadata !{i32 786443, metadata !5, metadata !893, i32 427, i32 9, i32 0, i32 104} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!896 = metadata !{i32 428, i32 7, metadata !895, null}
!897 = metadata !{i32 429, i32 3, metadata !893, null}
!898 = metadata !{i32 430, i32 3, metadata !329, null}
!899 = metadata !{i32 431, i32 1, metadata !329, null}
!900 = metadata !{i32 786689, metadata !308, metadata !"L", metadata !6, i32 16777594, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 378]
!901 = metadata !{i32 378, i32 32, metadata !308, null}
!902 = metadata !{i32 786689, metadata !308, metadata !"t", metadata !6, i32 33554810, metadata !268, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [t] [line 378]
!903 = metadata !{i32 378, i32 42, metadata !308, null}
!904 = metadata !{i32 786689, metadata !308, metadata !"ek", metadata !6, i32 50332026, metadata !285, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ek] [line 378]
!905 = metadata !{i32 378, i32 59, metadata !308, null}
!906 = metadata !{i32 786688, metadata !308, metadata !"asize", metadata !6, i32 379, metadata !71, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [asize] [line 379]
!907 = metadata !{i32 379, i32 16, metadata !308, null}
!908 = metadata !{i32 786688, metadata !308, metadata !"na", metadata !6, i32 380, metadata !71, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [na] [line 380]
!909 = metadata !{i32 380, i32 16, metadata !308, null}
!910 = metadata !{i32 786688, metadata !308, metadata !"nums", metadata !6, i32 381, metadata !911, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nums] [line 381]
!911 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1024, i64 32, i32 0, i32 0, metadata !71, metadata !912, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 1024, align 32, offset 0] [from unsigned int]
!912 = metadata !{metadata !913}
!913 = metadata !{i32 786465, i64 0, i64 32}      ; [ DW_TAG_subrange_type ] [0, 31]
!914 = metadata !{i32 381, i32 16, metadata !308, null}
!915 = metadata !{i32 786688, metadata !308, metadata !"i", metadata !6, i32 382, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 382]
!916 = metadata !{i32 382, i32 7, metadata !308, null}
!917 = metadata !{i32 786688, metadata !308, metadata !"totaluse", metadata !6, i32 383, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [totaluse] [line 383]
!918 = metadata !{i32 383, i32 7, metadata !308, null}
!919 = metadata !{i32 384, i32 8, metadata !920, null}
!920 = metadata !{i32 786443, metadata !5, metadata !308, i32 384, i32 3, i32 0, i32 80} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!921 = metadata !{i32 384, i32 8, metadata !922, null}
!922 = metadata !{i32 786443, metadata !5, metadata !923, i32 384, i32 8, i32 4, i32 170} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!923 = metadata !{i32 786443, metadata !5, metadata !920, i32 384, i32 8, i32 1, i32 167} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!924 = metadata !{i32 384, i32 35, metadata !925, null}
!925 = metadata !{i32 786443, metadata !5, metadata !920, i32 384, i32 35, i32 2, i32 168} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!926 = metadata !{i32 384, i32 30, metadata !927, null}
!927 = metadata !{i32 786443, metadata !5, metadata !920, i32 384, i32 30, i32 3, i32 169} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!928 = metadata !{i32 385, i32 8, metadata !308, null}
!929 = metadata !{i32 386, i32 3, metadata !308, null}
!930 = metadata !{i32 387, i32 15, metadata !308, null}
!931 = metadata !{i32 389, i32 9, metadata !308, null}
!932 = metadata !{i32 390, i32 3, metadata !308, null}
!933 = metadata !{i32 392, i32 11, metadata !308, null}
!934 = metadata !{i32 394, i32 3, metadata !308, null}
!935 = metadata !{i32 395, i32 1, metadata !308, null}
!936 = metadata !{i32 786689, metadata !287, metadata !"t", metadata !6, i32 16777713, metadata !268, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [t] [line 497]
!937 = metadata !{i32 497, i32 35, metadata !287, null}
!938 = metadata !{i32 786689, metadata !287, metadata !"key", metadata !6, i32 33554929, metadata !53, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [key] [line 497]
!939 = metadata !{i32 497, i32 50, metadata !287, null}
!940 = metadata !{i32 499, i32 7, metadata !941, null}
!941 = metadata !{i32 786443, metadata !5, metadata !287, i32 499, i32 7, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!942 = metadata !{i32 500, i32 5, metadata !941, null}
!943 = metadata !{i32 786688, metadata !944, metadata !"n", metadata !6, i32 502, metadata !149, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 502]
!944 = metadata !{i32 786443, metadata !5, metadata !941, i32 501, i32 8, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!945 = metadata !{i32 502, i32 11, metadata !944, null}
!946 = metadata !{i32 502, i32 5, metadata !944, null}
!947 = metadata !{i32 503, i32 5, metadata !948, null}
!948 = metadata !{i32 786443, metadata !5, metadata !944, i32 503, i32 5, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!949 = metadata !{i32 504, i32 11, metadata !950, null}
!950 = metadata !{i32 786443, metadata !5, metadata !951, i32 504, i32 11, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!951 = metadata !{i32 786443, metadata !5, metadata !948, i32 503, i32 14, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!952 = metadata !{i32 504, i32 11, metadata !953, null}
!953 = metadata !{i32 786443, metadata !5, metadata !950, i32 504, i32 11, i32 1, i32 171} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!954 = metadata !{i32 505, i32 9, metadata !950, null}
!955 = metadata !{i32 786688, metadata !956, metadata !"nx", metadata !6, i32 507, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nx] [line 507]
!956 = metadata !{i32 786443, metadata !5, metadata !950, i32 506, i32 12, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!957 = metadata !{i32 507, i32 13, metadata !956, null}
!958 = metadata !{i32 507, i32 9, metadata !956, null}
!959 = metadata !{i32 508, i32 13, metadata !960, null}
!960 = metadata !{i32 786443, metadata !5, metadata !956, i32 508, i32 13, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!961 = metadata !{i32 508, i32 22, metadata !962, null}
!962 = metadata !{i32 786443, metadata !5, metadata !960, i32 508, i32 22, i32 1, i32 172} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!963 = metadata !{i32 509, i32 9, metadata !956, null}
!964 = metadata !{i32 511, i32 5, metadata !951, null}
!965 = metadata !{i32 512, i32 5, metadata !944, null}
!966 = metadata !{i32 514, i32 1, metadata !287, null}
!967 = metadata !{i32 786689, metadata !290, metadata !"t", metadata !6, i32 16777736, metadata !268, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [t] [line 520]
!968 = metadata !{i32 520, i32 40, metadata !290, null}
!969 = metadata !{i32 786689, metadata !290, metadata !"key", metadata !6, i32 33554952, metadata !86, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [key] [line 520]
!970 = metadata !{i32 520, i32 52, metadata !290, null}
!971 = metadata !{i32 786688, metadata !290, metadata !"n", metadata !6, i32 521, metadata !149, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 521]
!972 = metadata !{i32 521, i32 9, metadata !290, null}
!973 = metadata !{i32 521, i32 3, metadata !290, null}
!974 = metadata !{i32 523, i32 3, metadata !975, null}
!975 = metadata !{i32 786443, metadata !5, metadata !290, i32 523, i32 3, i32 0, i32 50} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!976 = metadata !{i32 786688, metadata !977, metadata !"k", metadata !6, i32 524, metadata !285, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 524]
!977 = metadata !{i32 786443, metadata !5, metadata !975, i32 523, i32 12, i32 0, i32 51} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!978 = metadata !{i32 524, i32 19, metadata !977, null}
!979 = metadata !{i32 524, i32 5, metadata !977, null}
!980 = metadata !{i32 525, i32 9, metadata !981, null}
!981 = metadata !{i32 786443, metadata !5, metadata !977, i32 525, i32 9, i32 0, i32 52} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!982 = metadata !{i32 525, i32 9, metadata !983, null}
!983 = metadata !{i32 786443, metadata !5, metadata !981, i32 525, i32 9, i32 1, i32 173} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!984 = metadata !{i32 526, i32 7, metadata !981, null}
!985 = metadata !{i32 786688, metadata !986, metadata !"nx", metadata !6, i32 528, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nx] [line 528]
!986 = metadata !{i32 786443, metadata !5, metadata !981, i32 527, i32 10, i32 0, i32 53} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!987 = metadata !{i32 528, i32 11, metadata !986, null}
!988 = metadata !{i32 528, i32 7, metadata !986, null}
!989 = metadata !{i32 529, i32 11, metadata !990, null}
!990 = metadata !{i32 786443, metadata !5, metadata !986, i32 529, i32 11, i32 0, i32 54} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!991 = metadata !{i32 530, i32 9, metadata !990, null}
!992 = metadata !{i32 531, i32 7, metadata !986, null}
!993 = metadata !{i32 533, i32 3, metadata !977, null}
!994 = metadata !{i32 534, i32 1, metadata !290, null}
!995 = metadata !{i32 786689, metadata !293, metadata !"t", metadata !6, i32 16777772, metadata !268, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [t] [line 556]
!996 = metadata !{i32 556, i32 35, metadata !293, null}
!997 = metadata !{i32 786689, metadata !293, metadata !"key", metadata !6, i32 33554988, metadata !86, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [key] [line 556]
!998 = metadata !{i32 556, i32 47, metadata !293, null}
!999 = metadata !{i32 557, i32 7, metadata !1000, null}
!1000 = metadata !{i32 786443, metadata !5, metadata !293, i32 557, i32 7, i32 0, i32 55} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!1001 = metadata !{i32 558, i32 12, metadata !1000, null}
!1002 = metadata !{i32 786688, metadata !1003, metadata !"ko", metadata !6, i32 560, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ko] [line 560]
!1003 = metadata !{i32 786443, metadata !5, metadata !1000, i32 559, i32 8, i32 0, i32 56} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!1004 = metadata !{i32 560, i32 12, metadata !1003, null}
!1005 = metadata !{i32 786688, metadata !1006, metadata !"io", metadata !6, i32 561, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [io] [line 561]
!1006 = metadata !{i32 786443, metadata !5, metadata !1003, i32 561, i32 5, i32 0, i32 57} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!1007 = metadata !{i32 561, i32 5, metadata !1006, null}
!1008 = metadata !{i32 786688, metadata !1006, metadata !"x_", metadata !6, i32 561, metadata !86, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x_] [line 561]
!1009 = metadata !{i32 562, i32 12, metadata !1003, null}
!1010 = metadata !{i32 564, i32 1, metadata !293, null}
!1011 = metadata !{i32 786689, metadata !307, metadata !"t", metadata !6, i32 16777757, metadata !268, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [t] [line 541]
!1012 = metadata !{i32 541, i32 41, metadata !307, null}
!1013 = metadata !{i32 786689, metadata !307, metadata !"key", metadata !6, i32 33554973, metadata !285, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [key] [line 541]
!1014 = metadata !{i32 541, i32 58, metadata !307, null}
!1015 = metadata !{i32 786688, metadata !307, metadata !"n", metadata !6, i32 542, metadata !149, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 542]
!1016 = metadata !{i32 542, i32 9, metadata !307, null}
!1017 = metadata !{i32 542, i32 13, metadata !307, null}
!1018 = metadata !{i32 543, i32 3, metadata !1019, null}
!1019 = metadata !{i32 786443, metadata !5, metadata !307, i32 543, i32 3, i32 0, i32 75} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!1020 = metadata !{i32 544, i32 9, metadata !1021, null}
!1021 = metadata !{i32 786443, metadata !5, metadata !1022, i32 544, i32 9, i32 0, i32 77} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!1022 = metadata !{i32 786443, metadata !5, metadata !1019, i32 543, i32 12, i32 0, i32 76} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!1023 = metadata !{i32 545, i32 7, metadata !1021, null}
!1024 = metadata !{i32 786688, metadata !1025, metadata !"nx", metadata !6, i32 547, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nx] [line 547]
!1025 = metadata !{i32 786443, metadata !5, metadata !1021, i32 546, i32 10, i32 0, i32 78} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!1026 = metadata !{i32 547, i32 11, metadata !1025, null}
!1027 = metadata !{i32 547, i32 7, metadata !1025, null}
!1028 = metadata !{i32 548, i32 11, metadata !1029, null}
!1029 = metadata !{i32 786443, metadata !5, metadata !1025, i32 548, i32 11, i32 0, i32 79} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!1030 = metadata !{i32 549, i32 9, metadata !1029, null}
!1031 = metadata !{i32 550, i32 7, metadata !1025, null}
!1032 = metadata !{i32 552, i32 3, metadata !1022, null}
!1033 = metadata !{i32 553, i32 1, metadata !307, null}
!1034 = metadata !{i32 786689, metadata !294, metadata !"t", metadata !6, i32 16777786, metadata !268, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [t] [line 570]
!1035 = metadata !{i32 570, i32 32, metadata !294, null}
!1036 = metadata !{i32 786689, metadata !294, metadata !"key", metadata !6, i32 33555002, metadata !285, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [key] [line 570]
!1037 = metadata !{i32 570, i32 49, metadata !294, null}
!1038 = metadata !{i32 571, i32 3, metadata !294, null}
!1039 = metadata !{i32 572, i32 30, metadata !1040, null}
!1040 = metadata !{i32 786443, metadata !5, metadata !294, i32 571, i32 23, i32 0, i32 58} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!1041 = metadata !{i32 573, i32 30, metadata !1040, null}
!1042 = metadata !{i32 574, i32 20, metadata !1040, null}
!1043 = metadata !{i32 786688, metadata !1044, metadata !"k", metadata !6, i32 576, metadata !53, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 576]
!1044 = metadata !{i32 786443, metadata !5, metadata !1040, i32 575, i32 23, i32 0, i32 59} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!1045 = metadata !{i32 576, i32 19, metadata !1044, null}
!1046 = metadata !{i32 577, i32 11, metadata !1047, null}
!1047 = metadata !{i32 786443, metadata !5, metadata !1044, i32 577, i32 11, i32 0, i32 60} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!1048 = metadata !{i32 578, i32 16, metadata !1047, null}
!1049 = metadata !{i32 580, i32 5, metadata !1044, null}
!1050 = metadata !{i32 582, i32 14, metadata !1040, null}
!1051 = metadata !{i32 584, i32 1, metadata !294, null}
!1052 = metadata !{i32 786689, metadata !301, metadata !"t", metadata !6, i32 16777857, metadata !268, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [t] [line 641]
!1053 = metadata !{i32 641, i32 23, metadata !301, null}
!1054 = metadata !{i32 786688, metadata !301, metadata !"j", metadata !6, i32 642, metadata !71, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 642]
!1055 = metadata !{i32 642, i32 16, metadata !301, null}
!1056 = metadata !{i32 642, i32 3, metadata !301, null}
!1057 = metadata !{i32 643, i32 7, metadata !1058, null}
!1058 = metadata !{i32 786443, metadata !5, metadata !301, i32 643, i32 7, i32 0, i32 65} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!1059 = metadata !{i32 643, i32 7, metadata !1060, null}
!1060 = metadata !{i32 786443, metadata !5, metadata !1058, i32 643, i32 7, i32 1, i32 174} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!1061 = metadata !{i32 786688, metadata !1062, metadata !"i", metadata !6, i32 645, metadata !71, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 645]
!1062 = metadata !{i32 786443, metadata !5, metadata !1058, i32 643, i32 43, i32 0, i32 66} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!1063 = metadata !{i32 645, i32 18, metadata !1062, null}
!1064 = metadata !{i32 645, i32 5, metadata !1062, null}
!1065 = metadata !{i32 646, i32 5, metadata !1062, null}
!1066 = metadata !{i32 646, i32 5, metadata !1067, null}
!1067 = metadata !{i32 786443, metadata !5, metadata !1062, i32 646, i32 5, i32 1, i32 175} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!1068 = metadata !{i32 786688, metadata !1069, metadata !"m", metadata !6, i32 647, metadata !71, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [m] [line 647]
!1069 = metadata !{i32 786443, metadata !5, metadata !1062, i32 646, i32 23, i32 0, i32 67} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!1070 = metadata !{i32 647, i32 20, metadata !1069, null}
!1071 = metadata !{i32 647, i32 7, metadata !1069, null}
!1072 = metadata !{i32 648, i32 11, metadata !1073, null}
!1073 = metadata !{i32 786443, metadata !5, metadata !1069, i32 648, i32 11, i32 0, i32 68} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!1074 = metadata !{i32 648, i32 38, metadata !1075, null}
!1075 = metadata !{i32 786443, metadata !5, metadata !1073, i32 648, i32 38, i32 1, i32 176} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!1076 = metadata !{i32 649, i32 12, metadata !1073, null}
!1077 = metadata !{i32 650, i32 5, metadata !1069, null}
!1078 = metadata !{i32 651, i32 5, metadata !1062, null}
!1079 = metadata !{i32 654, i32 12, metadata !1080, null}
!1080 = metadata !{i32 786443, metadata !5, metadata !1058, i32 654, i32 12, i32 0, i32 69} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!1081 = metadata !{i32 655, i32 5, metadata !1080, null}
!1082 = metadata !{i32 656, i32 15, metadata !1080, null}
!1083 = metadata !{i32 657, i32 1, metadata !301, null}
!1084 = metadata !{i32 786689, metadata !304, metadata !"t", metadata !6, i32 16777829, metadata !268, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [t] [line 613]
!1085 = metadata !{i32 613, i32 35, metadata !304, null}
!1086 = metadata !{i32 786689, metadata !304, metadata !"j", metadata !6, i32 33555045, metadata !71, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [j] [line 613]
!1087 = metadata !{i32 613, i32 51, metadata !304, null}
!1088 = metadata !{i32 786688, metadata !304, metadata !"i", metadata !6, i32 614, metadata !71, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 614]
!1089 = metadata !{i32 614, i32 16, metadata !304, null}
!1090 = metadata !{i32 614, i32 3, metadata !304, null}
!1091 = metadata !{i32 615, i32 3, metadata !304, null}
!1092 = metadata !{i32 617, i32 3, metadata !304, null}
!1093 = metadata !{i32 617, i32 11, metadata !1094, null}
!1094 = metadata !{i32 786443, metadata !5, metadata !304, i32 617, i32 11, i32 1, i32 177} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!1095 = metadata !{i32 618, i32 5, metadata !1096, null}
!1096 = metadata !{i32 786443, metadata !5, metadata !304, i32 617, i32 39, i32 0, i32 70} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!1097 = metadata !{i32 619, i32 9, metadata !1098, null}
!1098 = metadata !{i32 786443, metadata !5, metadata !1096, i32 619, i32 9, i32 0, i32 71} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!1099 = metadata !{i32 621, i32 7, metadata !1100, null}
!1100 = metadata !{i32 786443, metadata !5, metadata !1098, i32 619, i32 44, i32 0, i32 72} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!1101 = metadata !{i32 622, i32 7, metadata !1100, null}
!1102 = metadata !{i32 622, i32 15, metadata !1103, null}
!1103 = metadata !{i32 786443, metadata !5, metadata !1104, i32 622, i32 15, i32 3, i32 180} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!1104 = metadata !{i32 786443, metadata !5, metadata !1100, i32 622, i32 15, i32 1, i32 178} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!1105 = metadata !{i32 622, i32 43, metadata !1106, null}
!1106 = metadata !{i32 786443, metadata !5, metadata !1100, i32 622, i32 43, i32 2, i32 179} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!1107 = metadata !{i32 623, i32 7, metadata !1100, null}
!1108 = metadata !{i32 625, i32 5, metadata !1096, null}
!1109 = metadata !{i32 626, i32 3, metadata !1096, null}
!1110 = metadata !{i32 628, i32 3, metadata !304, null}
!1111 = metadata !{i32 628, i32 3, metadata !1112, null}
!1112 = metadata !{i32 786443, metadata !5, metadata !304, i32 628, i32 3, i32 1, i32 181} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!1113 = metadata !{i32 786688, metadata !1114, metadata !"m", metadata !6, i32 629, metadata !71, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [m] [line 629]
!1114 = metadata !{i32 786443, metadata !5, metadata !304, i32 628, i32 21, i32 0, i32 73} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!1115 = metadata !{i32 629, i32 18, metadata !1114, null}
!1116 = metadata !{i32 629, i32 5, metadata !1114, null}
!1117 = metadata !{i32 630, i32 9, metadata !1118, null}
!1118 = metadata !{i32 786443, metadata !5, metadata !1114, i32 630, i32 9, i32 0, i32 74} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!1119 = metadata !{i32 630, i32 37, metadata !1120, null}
!1120 = metadata !{i32 786443, metadata !5, metadata !1118, i32 630, i32 37, i32 1, i32 182} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!1121 = metadata !{i32 631, i32 10, metadata !1118, null}
!1122 = metadata !{i32 632, i32 3, metadata !1114, null}
!1123 = metadata !{i32 633, i32 3, metadata !304, null}
!1124 = metadata !{i32 634, i32 1, metadata !304, null}
!1125 = metadata !{i32 786689, metadata !326, metadata !"t", metadata !6, i32 16777475, metadata !324, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [t] [line 259]
!1126 = metadata !{i32 259, i32 47, metadata !326, null}
!1127 = metadata !{i32 786689, metadata !326, metadata !"nums", metadata !6, i32 33554691, metadata !314, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nums] [line 259]
!1128 = metadata !{i32 259, i32 64, metadata !326, null}
!1129 = metadata !{i32 786688, metadata !326, metadata !"lg", metadata !6, i32 260, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lg] [line 260]
!1130 = metadata !{i32 260, i32 7, metadata !326, null}
!1131 = metadata !{i32 786688, metadata !326, metadata !"ttlg", metadata !6, i32 261, metadata !71, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ttlg] [line 261]
!1132 = metadata !{i32 261, i32 16, metadata !326, null}
!1133 = metadata !{i32 786688, metadata !326, metadata !"ause", metadata !6, i32 262, metadata !71, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ause] [line 262]
!1134 = metadata !{i32 262, i32 16, metadata !326, null}
!1135 = metadata !{i32 262, i32 3, metadata !326, null}
!1136 = metadata !{i32 786688, metadata !326, metadata !"i", metadata !6, i32 263, metadata !71, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 263]
!1137 = metadata !{i32 263, i32 16, metadata !326, null}
!1138 = metadata !{i32 263, i32 3, metadata !326, null}
!1139 = metadata !{i32 265, i32 8, metadata !1140, null}
!1140 = metadata !{i32 786443, metadata !5, metadata !326, i32 265, i32 3, i32 0, i32 95} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!1141 = metadata !{i32 265, i32 8, metadata !1142, null}
!1142 = metadata !{i32 786443, metadata !5, metadata !1143, i32 265, i32 8, i32 2, i32 186} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!1143 = metadata !{i32 786443, metadata !5, metadata !1140, i32 265, i32 8, i32 1, i32 183} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!1144 = metadata !{i32 786688, metadata !1145, metadata !"lc", metadata !6, i32 266, metadata !71, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lc] [line 266]
!1145 = metadata !{i32 786443, metadata !5, metadata !1140, i32 265, i32 59, i32 0, i32 96} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!1146 = metadata !{i32 266, i32 18, metadata !1145, null}
!1147 = metadata !{i32 266, i32 5, metadata !1145, null}
!1148 = metadata !{i32 786688, metadata !1145, metadata !"lim", metadata !6, i32 267, metadata !71, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lim] [line 267]
!1149 = metadata !{i32 267, i32 18, metadata !1145, null}
!1150 = metadata !{i32 267, i32 5, metadata !1145, null}
!1151 = metadata !{i32 268, i32 9, metadata !1152, null}
!1152 = metadata !{i32 786443, metadata !5, metadata !1145, i32 268, i32 9, i32 0, i32 97} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!1153 = metadata !{i32 269, i32 7, metadata !1154, null}
!1154 = metadata !{i32 786443, metadata !5, metadata !1152, i32 268, i32 29, i32 0, i32 98} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!1155 = metadata !{i32 270, i32 11, metadata !1156, null}
!1156 = metadata !{i32 786443, metadata !5, metadata !1154, i32 270, i32 11, i32 0, i32 99} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!1157 = metadata !{i32 271, i32 9, metadata !1156, null}
!1158 = metadata !{i32 272, i32 5, metadata !1154, null}
!1159 = metadata !{i32 274, i32 5, metadata !1160, null}
!1160 = metadata !{i32 786443, metadata !5, metadata !1145, i32 274, i32 5, i32 0, i32 100} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!1161 = metadata !{i32 274, i32 5, metadata !1162, null}
!1162 = metadata !{i32 786443, metadata !5, metadata !1163, i32 274, i32 5, i32 2, i32 185} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!1163 = metadata !{i32 786443, metadata !5, metadata !1160, i32 274, i32 5, i32 1, i32 184} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!1164 = metadata !{i32 275, i32 11, metadata !1165, null}
!1165 = metadata !{i32 786443, metadata !5, metadata !1166, i32 275, i32 11, i32 0, i32 102} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!1166 = metadata !{i32 786443, metadata !5, metadata !1160, i32 274, i32 27, i32 0, i32 101} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!1167 = metadata !{i32 276, i32 9, metadata !1165, null}
!1168 = metadata !{i32 277, i32 5, metadata !1166, null}
!1169 = metadata !{i32 274, i32 22, metadata !1160, null}
!1170 = metadata !{i32 278, i32 5, metadata !1145, null}
!1171 = metadata !{i32 279, i32 5, metadata !1145, null}
!1172 = metadata !{i32 280, i32 3, metadata !1145, null}
!1173 = metadata !{i32 265, i32 42, metadata !1140, null}
!1174 = metadata !{i32 281, i32 3, metadata !326, null}
!1175 = metadata !{i32 786689, metadata !321, metadata !"t", metadata !6, i32 16777501, metadata !324, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [t] [line 285]
!1176 = metadata !{i32 285, i32 37, metadata !321, null}
!1177 = metadata !{i32 786689, metadata !321, metadata !"nums", metadata !6, i32 33554717, metadata !314, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nums] [line 285]
!1178 = metadata !{i32 285, i32 54, metadata !321, null}
!1179 = metadata !{i32 786689, metadata !321, metadata !"pna", metadata !6, i32 50331933, metadata !314, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pna] [line 285]
!1180 = metadata !{i32 285, i32 74, metadata !321, null}
!1181 = metadata !{i32 786688, metadata !321, metadata !"totaluse", metadata !6, i32 286, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [totaluse] [line 286]
!1182 = metadata !{i32 286, i32 7, metadata !321, null}
!1183 = metadata !{i32 286, i32 3, metadata !321, null}
!1184 = metadata !{i32 786688, metadata !321, metadata !"ause", metadata !6, i32 287, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ause] [line 287]
!1185 = metadata !{i32 287, i32 7, metadata !321, null}
!1186 = metadata !{i32 287, i32 3, metadata !321, null}
!1187 = metadata !{i32 786688, metadata !321, metadata !"i", metadata !6, i32 288, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 288]
!1188 = metadata !{i32 288, i32 7, metadata !321, null}
!1189 = metadata !{i32 288, i32 3, metadata !321, null}
!1190 = metadata !{i32 289, i32 3, metadata !321, null}
!1191 = metadata !{i32 289, i32 3, metadata !1192, null}
!1192 = metadata !{i32 786443, metadata !5, metadata !321, i32 289, i32 3, i32 1, i32 187} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!1193 = metadata !{i32 786688, metadata !1194, metadata !"n", metadata !6, i32 290, metadata !149, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 290]
!1194 = metadata !{i32 786443, metadata !5, metadata !321, i32 289, i32 15, i32 0, i32 92} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!1195 = metadata !{i32 290, i32 11, metadata !1194, null}
!1196 = metadata !{i32 290, i32 5, metadata !1194, null}
!1197 = metadata !{i32 291, i32 9, metadata !1198, null}
!1198 = metadata !{i32 786443, metadata !5, metadata !1194, i32 291, i32 9, i32 0, i32 93} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!1199 = metadata !{i32 292, i32 15, metadata !1200, null}
!1200 = metadata !{i32 786443, metadata !5, metadata !1198, i32 291, i32 28, i32 0, i32 94} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!1201 = metadata !{i32 293, i32 7, metadata !1200, null}
!1202 = metadata !{i32 294, i32 5, metadata !1200, null}
!1203 = metadata !{i32 295, i32 3, metadata !1194, null}
!1204 = metadata !{i32 296, i32 3, metadata !321, null}
!1205 = metadata !{i32 297, i32 3, metadata !321, null}
!1206 = metadata !{i32 786689, metadata !315, metadata !"key", metadata !6, i32 16777459, metadata !285, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [key] [line 243]
!1207 = metadata !{i32 243, i32 36, metadata !315, null}
!1208 = metadata !{i32 786689, metadata !315, metadata !"nums", metadata !6, i32 33554675, metadata !314, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nums] [line 243]
!1209 = metadata !{i32 243, i32 55, metadata !315, null}
!1210 = metadata !{i32 786688, metadata !315, metadata !"k", metadata !6, i32 244, metadata !71, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 244]
!1211 = metadata !{i32 244, i32 16, metadata !315, null}
!1212 = metadata !{i32 244, i32 20, metadata !315, null}
!1213 = metadata !{i32 245, i32 7, metadata !1214, null}
!1214 = metadata !{i32 786443, metadata !5, metadata !315, i32 245, i32 7, i32 0, i32 87} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!1215 = metadata !{i32 246, i32 10, metadata !1216, null}
!1216 = metadata !{i32 786443, metadata !5, metadata !1214, i32 245, i32 15, i32 0, i32 88} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!1217 = metadata !{i32 247, i32 5, metadata !1216, null}
!1218 = metadata !{i32 250, i32 5, metadata !1214, null}
!1219 = metadata !{i32 251, i32 1, metadata !315, null}
!1220 = metadata !{i32 786689, metadata !311, metadata !"nums", metadata !6, i32 16777437, metadata !314, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nums] [line 221]
!1221 = metadata !{i32 221, i32 48, metadata !311, null}
!1222 = metadata !{i32 786689, metadata !311, metadata !"pna", metadata !6, i32 33554653, metadata !314, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pna] [line 221]
!1223 = metadata !{i32 221, i32 70, metadata !311, null}
!1224 = metadata !{i32 786688, metadata !311, metadata !"i", metadata !6, i32 222, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 222]
!1225 = metadata !{i32 222, i32 7, metadata !311, null}
!1226 = metadata !{i32 786688, metadata !311, metadata !"twotoi", metadata !6, i32 223, metadata !71, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [twotoi] [line 223]
!1227 = metadata !{i32 223, i32 16, metadata !311, null}
!1228 = metadata !{i32 786688, metadata !311, metadata !"a", metadata !6, i32 224, metadata !71, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a] [line 224]
!1229 = metadata !{i32 224, i32 16, metadata !311, null}
!1230 = metadata !{i32 224, i32 3, metadata !311, null}
!1231 = metadata !{i32 786688, metadata !311, metadata !"na", metadata !6, i32 225, metadata !71, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [na] [line 225]
!1232 = metadata !{i32 225, i32 16, metadata !311, null}
!1233 = metadata !{i32 225, i32 3, metadata !311, null}
!1234 = metadata !{i32 786688, metadata !311, metadata !"optimal", metadata !6, i32 226, metadata !71, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [optimal] [line 226]
!1235 = metadata !{i32 226, i32 16, metadata !311, null}
!1236 = metadata !{i32 226, i32 3, metadata !311, null}
!1237 = metadata !{i32 228, i32 8, metadata !1238, null}
!1238 = metadata !{i32 786443, metadata !5, metadata !311, i32 228, i32 3, i32 0, i32 81} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!1239 = metadata !{i32 228, i32 8, metadata !1240, null}
!1240 = metadata !{i32 786443, metadata !5, metadata !1241, i32 228, i32 8, i32 2, i32 189} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!1241 = metadata !{i32 786443, metadata !5, metadata !1238, i32 228, i32 8, i32 1, i32 188} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!1242 = metadata !{i32 229, i32 9, metadata !1243, null}
!1243 = metadata !{i32 786443, metadata !5, metadata !1244, i32 229, i32 9, i32 0, i32 83} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!1244 = metadata !{i32 786443, metadata !5, metadata !1238, i32 228, i32 64, i32 0, i32 82} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!1245 = metadata !{i32 230, i32 7, metadata !1246, null}
!1246 = metadata !{i32 786443, metadata !5, metadata !1243, i32 229, i32 22, i32 0, i32 84} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!1247 = metadata !{i32 231, i32 11, metadata !1248, null}
!1248 = metadata !{i32 786443, metadata !5, metadata !1246, i32 231, i32 11, i32 0, i32 85} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!1249 = metadata !{i32 232, i32 9, metadata !1250, null}
!1250 = metadata !{i32 786443, metadata !5, metadata !1248, i32 231, i32 25, i32 0, i32 86} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!1251 = metadata !{i32 233, i32 9, metadata !1250, null}
!1252 = metadata !{i32 234, i32 7, metadata !1250, null}
!1253 = metadata !{i32 235, i32 5, metadata !1246, null}
!1254 = metadata !{i32 236, i32 3, metadata !1244, null}
!1255 = metadata !{i32 228, i32 46, metadata !1238, null}
!1256 = metadata !{i32 238, i32 3, metadata !311, null}
!1257 = metadata !{i32 239, i32 3, metadata !311, null}
!1258 = metadata !{i32 786689, metadata !318, metadata !"key", metadata !6, i32 16777362, metadata !285, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [key] [line 146]
!1259 = metadata !{i32 146, i32 47, metadata !318, null}
!1260 = metadata !{i32 147, i32 7, metadata !1261, null}
!1261 = metadata !{i32 786443, metadata !5, metadata !318, i32 147, i32 7, i32 0, i32 89} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!1262 = metadata !{i32 786688, metadata !1263, metadata !"k", metadata !6, i32 148, metadata !53, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 148]
!1263 = metadata !{i32 786443, metadata !5, metadata !1261, i32 147, i32 25, i32 0, i32 90} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!1264 = metadata !{i32 148, i32 17, metadata !1263, null}
!1265 = metadata !{i32 148, i32 5, metadata !1263, null}
!1266 = metadata !{i32 149, i32 9, metadata !1267, null}
!1267 = metadata !{i32 786443, metadata !5, metadata !1263, i32 149, i32 9, i32 0, i32 91} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!1268 = metadata !{i32 149, i32 9, metadata !1269, null}
!1269 = metadata !{i32 786443, metadata !5, metadata !1267, i32 149, i32 9, i32 1, i32 190} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!1270 = metadata !{i32 150, i32 7, metadata !1267, null}
!1271 = metadata !{i32 151, i32 3, metadata !1263, null}
!1272 = metadata !{i32 152, i32 3, metadata !318, null}
!1273 = metadata !{i32 153, i32 1, metadata !318, null}
!1274 = metadata !{i32 786689, metadata !335, metadata !"n", metadata !6, i32 16777315, metadata !56, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 99]
!1275 = metadata !{i32 99, i32 36, metadata !335, null}
!1276 = metadata !{i32 786688, metadata !335, metadata !"i", metadata !6, i32 100, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 100]
!1277 = metadata !{i32 100, i32 7, metadata !335, null}
!1278 = metadata !{i32 786688, metadata !335, metadata !"ni", metadata !6, i32 101, metadata !53, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ni] [line 101]
!1279 = metadata !{i32 101, i32 15, metadata !335, null}
!1280 = metadata !{i32 102, i32 7, metadata !335, null}
!1281 = metadata !{i32 103, i32 7, metadata !1282, null}
!1282 = metadata !{i32 786443, metadata !5, metadata !335, i32 103, i32 7, i32 0, i32 106} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!1283 = metadata !{i32 103, i32 7, metadata !1284, null}
!1284 = metadata !{i32 786443, metadata !5, metadata !1282, i32 103, i32 7, i32 1, i32 191} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!1285 = metadata !{i32 103, i32 7, metadata !1286, null}
!1286 = metadata !{i32 786443, metadata !5, metadata !1282, i32 103, i32 7, i32 2, i32 192} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!1287 = metadata !{i32 105, i32 5, metadata !1288, null}
!1288 = metadata !{i32 786443, metadata !5, metadata !1282, i32 103, i32 37, i32 0, i32 107} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!1289 = metadata !{i32 786688, metadata !1290, metadata !"u", metadata !6, i32 108, metadata !71, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [u] [line 108]
!1290 = metadata !{i32 786443, metadata !5, metadata !1282, i32 107, i32 8, i32 0, i32 108} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!1291 = metadata !{i32 108, i32 18, metadata !1290, null}
!1292 = metadata !{i32 108, i32 5, metadata !1290, null}
!1293 = metadata !{i32 109, i32 5, metadata !1290, null}
!1294 = metadata !{i32 109, i32 5, metadata !1295, null}
!1295 = metadata !{i32 786443, metadata !5, metadata !1290, i32 109, i32 5, i32 1, i32 193} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!1296 = metadata !{i32 109, i32 5, metadata !1297, null}
!1297 = metadata !{i32 786443, metadata !5, metadata !1290, i32 109, i32 5, i32 2, i32 194} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!1298 = metadata !{i32 109, i32 5, metadata !1299, null}
!1299 = metadata !{i32 786443, metadata !5, metadata !1300, i32 109, i32 5, i32 4, i32 196} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!1300 = metadata !{i32 786443, metadata !5, metadata !1290, i32 109, i32 5, i32 3, i32 195} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltable.c]
!1301 = metadata !{i32 111, i32 1, metadata !335, null}
