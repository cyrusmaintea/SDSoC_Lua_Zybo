; ModuleID = 'C:/Users/DevolutionX/workspace/lua/src/lstring.c'
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-n32-S64"
target triple = "armv7--linux-gnueabihf"

%struct.lua_TValue = type { %union.Value, i32 }
%union.Value = type { i64 }
%struct.TString = type { %struct.GCObject*, i8, i8, i8, i8, i32, %union.anon }
%struct.GCObject = type { %struct.GCObject*, i8, i8 }
%union.anon = type { i32 }
%struct.lua_State = type { %struct.GCObject*, i8, i8, i16, i8, %struct.lua_TValue*, %struct.global_State*, %struct.CallInfo*, i32*, %struct.lua_TValue*, %struct.lua_TValue*, %struct.UpVal*, %struct.GCObject*, %struct.lua_State*, %struct.lua_longjmp*, %struct.CallInfo, void (%struct.lua_State*, %struct.lua_Debug*)*, i32, i32, i32, i32, i16, i16, i32, i8 }
%struct.global_State = type { i8* (i8*, i8*, i32, i32)*, i8*, i32, i32, i32, i32, %struct.stringtable, %struct.lua_TValue, i32, i8, i8, i8, i8, %struct.GCObject*, %struct.GCObject**, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.lua_State*, i32, i32, i32, i32 (%struct.lua_State*)*, %struct.lua_State*, double*, %struct.TString*, [24 x %struct.TString*], [9 x %struct.Table*], [53 x [2 x %struct.TString*]] }
%struct.stringtable = type { %struct.TString**, i32, i32 }
%struct.Table = type { %struct.GCObject*, i8, i8, i8, i8, i32, %struct.lua_TValue*, %struct.Node*, %struct.Node*, %struct.Table*, %struct.GCObject* }
%struct.Node = type { %struct.lua_TValue, %union.TKey }
%union.TKey = type { %struct.anon }
%struct.anon = type { %union.Value, i32, i32 }
%struct.UpVal = type opaque
%struct.lua_longjmp = type opaque
%struct.CallInfo = type { %struct.lua_TValue*, %struct.lua_TValue*, %struct.CallInfo*, %struct.CallInfo*, %union.anon.0, i32, i16, i8 }
%union.anon.0 = type { %struct.anon.2 }
%struct.anon.2 = type { i32 (%struct.lua_State*, i32, i32)*, i32, i32 }
%struct.lua_Debug = type { i32, i8*, i8*, i8*, i8*, i32, i32, i32, i8, i8, i8, i8, [60 x i8], %struct.CallInfo* }
%union.GCUnion = type { %union.Closure, [88 x i8] }
%union.Closure = type { %struct.CClosure }
%struct.CClosure = type { %struct.GCObject*, i8, i8, i8, %struct.GCObject*, i32 (%struct.lua_State*)*, [1 x %struct.lua_TValue] }
%struct.Udata = type { %struct.GCObject*, i8, i8, i8, %struct.Table*, i32, %union.Value }

@.str = private unnamed_addr constant [18 x i8] c"not enough memory\00", align 1
@luaO_nilobject_ = external hidden constant %struct.lua_TValue

; Function Attrs: nounwind
define hidden i32 @luaS_eqlngstr(%struct.TString* %a, %struct.TString* %b) #0 {
  %1 = alloca %struct.TString*, align 4
  %2 = alloca %struct.TString*, align 4
  %len = alloca i32, align 4
  store %struct.TString* %a, %struct.TString** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.TString** %1}, metadata !381), !dbg !382
  store %struct.TString* %b, %struct.TString** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.TString** %2}, metadata !383), !dbg !384
  call void @llvm.dbg.declare(metadata !{i32* %len}, metadata !385), !dbg !386
  %3 = load %struct.TString** %1, align 4, !dbg !387
  %4 = getelementptr inbounds %struct.TString* %3, i32 0, i32 6, !dbg !387
  %5 = bitcast %union.anon* %4 to i32*, !dbg !387
  %6 = load i32* %5, align 4, !dbg !387
  store i32 %6, i32* %len, align 4, !dbg !387
  %7 = load %struct.TString** %1, align 4, !dbg !388
  %8 = load %struct.TString** %2, align 4, !dbg !388
  %9 = icmp eq %struct.TString* %7, %8, !dbg !388
  br i1 %9, label %29, label %10, !dbg !388

; <label>:10                                      ; preds = %0
  %11 = load i32* %len, align 4, !dbg !389
  %12 = load %struct.TString** %2, align 4, !dbg !389
  %13 = getelementptr inbounds %struct.TString* %12, i32 0, i32 6, !dbg !389
  %14 = bitcast %union.anon* %13 to i32*, !dbg !389
  %15 = load i32* %14, align 4, !dbg !389
  %16 = icmp eq i32 %11, %15, !dbg !389
  br i1 %16, label %17, label %27, !dbg !389

; <label>:17                                      ; preds = %10
  %18 = load %struct.TString** %1, align 4, !dbg !391
  %19 = bitcast %struct.TString* %18 to i8*, !dbg !391
  %20 = getelementptr inbounds i8* %19, i32 16, !dbg !391
  %21 = load %struct.TString** %2, align 4, !dbg !391
  %22 = bitcast %struct.TString* %21 to i8*, !dbg !391
  %23 = getelementptr inbounds i8* %22, i32 16, !dbg !391
  %24 = load i32* %len, align 4, !dbg !391
  %25 = call i32 @memcmp(i8* %20, i8* %23, i32 %24) #6, !dbg !391
  %26 = icmp eq i32 %25, 0, !dbg !391
  br label %27

; <label>:27                                      ; preds = %17, %10
  %28 = phi i1 [ false, %10 ], [ %26, %17 ]
  br label %29, !dbg !391

; <label>:29                                      ; preds = %27, %0
  %30 = phi i1 [ true, %0 ], [ %28, %27 ]
  %31 = zext i1 %30 to i32, !dbg !392
  ret i32 %31, !dbg !392
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i32) #2

; Function Attrs: nounwind
define hidden i32 @luaS_hash(i8* %str, i32 %l, i32 %seed) #0 {
  %1 = alloca i8*, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %h = alloca i32, align 4
  %step = alloca i32, align 4
  store i8* %str, i8** %1, align 4
  call void @llvm.dbg.declare(metadata !{i8** %1}, metadata !394), !dbg !395
  store i32 %l, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !396), !dbg !397
  store i32 %seed, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !398), !dbg !399
  call void @llvm.dbg.declare(metadata !{i32* %h}, metadata !400), !dbg !401
  %4 = load i32* %3, align 4, !dbg !402
  %5 = load i32* %2, align 4, !dbg !402
  %6 = xor i32 %4, %5, !dbg !402
  store i32 %6, i32* %h, align 4, !dbg !402
  call void @llvm.dbg.declare(metadata !{i32* %step}, metadata !403), !dbg !404
  %7 = load i32* %2, align 4, !dbg !405
  %8 = lshr i32 %7, 5, !dbg !405
  %9 = add i32 %8, 1, !dbg !405
  store i32 %9, i32* %step, align 4, !dbg !405
  br label %10, !dbg !406

; <label>:10                                      ; preds = %29, %0
  %11 = load i32* %2, align 4, !dbg !408
  %12 = load i32* %step, align 4, !dbg !408
  %13 = icmp uge i32 %11, %12, !dbg !408
  br i1 %13, label %14, label %33, !dbg !408

; <label>:14                                      ; preds = %10
  %15 = load i32* %h, align 4, !dbg !411
  %16 = shl i32 %15, 5, !dbg !411
  %17 = load i32* %h, align 4, !dbg !411
  %18 = lshr i32 %17, 2, !dbg !411
  %19 = add i32 %16, %18, !dbg !411
  %20 = load i32* %2, align 4, !dbg !411
  %21 = sub i32 %20, 1, !dbg !411
  %22 = load i8** %1, align 4, !dbg !411
  %23 = getelementptr inbounds i8* %22, i32 %21, !dbg !411
  %24 = load i8* %23, align 1, !dbg !411
  %25 = zext i8 %24 to i32, !dbg !411
  %26 = add i32 %19, %25, !dbg !411
  %27 = load i32* %h, align 4, !dbg !411
  %28 = xor i32 %27, %26, !dbg !411
  store i32 %28, i32* %h, align 4, !dbg !411
  br label %29, !dbg !411

; <label>:29                                      ; preds = %14
  %30 = load i32* %step, align 4, !dbg !412
  %31 = load i32* %2, align 4, !dbg !412
  %32 = sub i32 %31, %30, !dbg !412
  store i32 %32, i32* %2, align 4, !dbg !412
  br label %10, !dbg !412

; <label>:33                                      ; preds = %10
  %34 = load i32* %h, align 4, !dbg !413
  ret i32 %34, !dbg !413
}

; Function Attrs: nounwind
define hidden i32 @luaS_hashlongstr(%struct.TString* %ts) #0 {
  %1 = alloca %struct.TString*, align 4
  store %struct.TString* %ts, %struct.TString** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.TString** %1}, metadata !414), !dbg !415
  %2 = load %struct.TString** %1, align 4, !dbg !416
  %3 = getelementptr inbounds %struct.TString* %2, i32 0, i32 3, !dbg !416
  %4 = load i8* %3, align 1, !dbg !416
  %5 = zext i8 %4 to i32, !dbg !416
  %6 = icmp eq i32 %5, 0, !dbg !416
  br i1 %6, label %7, label %23, !dbg !416

; <label>:7                                       ; preds = %0
  %8 = load %struct.TString** %1, align 4, !dbg !418
  %9 = bitcast %struct.TString* %8 to i8*, !dbg !418
  %10 = getelementptr inbounds i8* %9, i32 16, !dbg !418
  %11 = load %struct.TString** %1, align 4, !dbg !418
  %12 = getelementptr inbounds %struct.TString* %11, i32 0, i32 6, !dbg !418
  %13 = bitcast %union.anon* %12 to i32*, !dbg !418
  %14 = load i32* %13, align 4, !dbg !418
  %15 = load %struct.TString** %1, align 4, !dbg !418
  %16 = getelementptr inbounds %struct.TString* %15, i32 0, i32 5, !dbg !418
  %17 = load i32* %16, align 4, !dbg !418
  %18 = call i32 @luaS_hash(i8* %10, i32 %14, i32 %17), !dbg !418
  %19 = load %struct.TString** %1, align 4, !dbg !418
  %20 = getelementptr inbounds %struct.TString* %19, i32 0, i32 5, !dbg !418
  store i32 %18, i32* %20, align 4, !dbg !418
  %21 = load %struct.TString** %1, align 4, !dbg !420
  %22 = getelementptr inbounds %struct.TString* %21, i32 0, i32 3, !dbg !420
  store i8 1, i8* %22, align 1, !dbg !420
  br label %23, !dbg !421

; <label>:23                                      ; preds = %7, %0
  %24 = load %struct.TString** %1, align 4, !dbg !422
  %25 = getelementptr inbounds %struct.TString* %24, i32 0, i32 5, !dbg !422
  %26 = load i32* %25, align 4, !dbg !422
  ret i32 %26, !dbg !422
}

; Function Attrs: nounwind
define hidden void @luaS_resize(%struct.lua_State* %L, i32 %newsize) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca i32, align 4
  %i = alloca i32, align 4
  %tb = alloca %struct.stringtable*, align 4
  %p = alloca %struct.TString*, align 4
  %hnext = alloca %struct.TString*, align 4
  %h = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !423), !dbg !424
  store i32 %newsize, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !425), !dbg !426
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !427), !dbg !428
  call void @llvm.dbg.declare(metadata !{%struct.stringtable** %tb}, metadata !429), !dbg !431
  %3 = load %struct.lua_State** %1, align 4, !dbg !432
  %4 = getelementptr inbounds %struct.lua_State* %3, i32 0, i32 6, !dbg !432
  %5 = load %struct.global_State** %4, align 4, !dbg !432
  %6 = getelementptr inbounds %struct.global_State* %5, i32 0, i32 6, !dbg !432
  store %struct.stringtable* %6, %struct.stringtable** %tb, align 4, !dbg !432
  %7 = load i32* %2, align 4, !dbg !433
  %8 = load %struct.stringtable** %tb, align 4, !dbg !433
  %9 = getelementptr inbounds %struct.stringtable* %8, i32 0, i32 2, !dbg !433
  %10 = load i32* %9, align 4, !dbg !433
  %11 = icmp sgt i32 %7, %10, !dbg !433
  br i1 %11, label %12, label %53, !dbg !433

; <label>:12                                      ; preds = %0
  %13 = load i32* %2, align 4, !dbg !435
  %14 = add i32 %13, 1, !dbg !435
  %15 = icmp ugt i32 %14, 1073741823, !dbg !435
  br i1 %15, label %16, label %19, !dbg !435

; <label>:16                                      ; preds = %12
  %17 = load %struct.lua_State** %1, align 4, !dbg !437
  call void @luaM_toobig(%struct.lua_State* %17) #7, !dbg !437
  unreachable, !dbg !437
                                                  ; No predecessors!
  br label %20, !dbg !435

; <label>:19                                      ; preds = %12
  br label %20, !dbg !439

; <label>:20                                      ; preds = %19, %18
  %21 = load %struct.lua_State** %1, align 4, !dbg !441
  %22 = load %struct.stringtable** %tb, align 4, !dbg !441
  %23 = getelementptr inbounds %struct.stringtable* %22, i32 0, i32 0, !dbg !441
  %24 = load %struct.TString*** %23, align 4, !dbg !441
  %25 = bitcast %struct.TString** %24 to i8*, !dbg !441
  %26 = load %struct.stringtable** %tb, align 4, !dbg !441
  %27 = getelementptr inbounds %struct.stringtable* %26, i32 0, i32 2, !dbg !441
  %28 = load i32* %27, align 4, !dbg !441
  %29 = mul i32 %28, 4, !dbg !441
  %30 = load i32* %2, align 4, !dbg !441
  %31 = mul i32 %30, 4, !dbg !441
  %32 = call i8* @luaM_realloc_(%struct.lua_State* %21, i8* %25, i32 %29, i32 %31), !dbg !441
  %33 = bitcast i8* %32 to %struct.TString**, !dbg !441
  %34 = load %struct.stringtable** %tb, align 4, !dbg !441
  %35 = getelementptr inbounds %struct.stringtable* %34, i32 0, i32 0, !dbg !441
  store %struct.TString** %33, %struct.TString*** %35, align 4, !dbg !441
  %36 = load %struct.stringtable** %tb, align 4, !dbg !444
  %37 = getelementptr inbounds %struct.stringtable* %36, i32 0, i32 2, !dbg !444
  %38 = load i32* %37, align 4, !dbg !444
  store i32 %38, i32* %i, align 4, !dbg !444
  br label %39, !dbg !444

; <label>:39                                      ; preds = %49, %20
  %40 = load i32* %i, align 4, !dbg !446
  %41 = load i32* %2, align 4, !dbg !446
  %42 = icmp slt i32 %40, %41, !dbg !446
  br i1 %42, label %43, label %52, !dbg !446

; <label>:43                                      ; preds = %39
  %44 = load i32* %i, align 4, !dbg !449
  %45 = load %struct.stringtable** %tb, align 4, !dbg !449
  %46 = getelementptr inbounds %struct.stringtable* %45, i32 0, i32 0, !dbg !449
  %47 = load %struct.TString*** %46, align 4, !dbg !449
  %48 = getelementptr inbounds %struct.TString** %47, i32 %44, !dbg !449
  store %struct.TString* null, %struct.TString** %48, align 4, !dbg !449
  br label %49, !dbg !449

; <label>:49                                      ; preds = %43
  %50 = load i32* %i, align 4, !dbg !450
  %51 = add nsw i32 %50, 1, !dbg !450
  store i32 %51, i32* %i, align 4, !dbg !450
  br label %39, !dbg !450

; <label>:52                                      ; preds = %39
  br label %53, !dbg !451

; <label>:53                                      ; preds = %52, %0
  store i32 0, i32* %i, align 4, !dbg !452
  br label %54, !dbg !452

; <label>:54                                      ; preds = %103, %53
  %55 = load i32* %i, align 4, !dbg !454
  %56 = load %struct.stringtable** %tb, align 4, !dbg !454
  %57 = getelementptr inbounds %struct.stringtable* %56, i32 0, i32 2, !dbg !454
  %58 = load i32* %57, align 4, !dbg !454
  %59 = icmp slt i32 %55, %58, !dbg !454
  br i1 %59, label %60, label %106, !dbg !454

; <label>:60                                      ; preds = %54
  call void @llvm.dbg.declare(metadata !{%struct.TString** %p}, metadata !457), !dbg !459
  %61 = load i32* %i, align 4, !dbg !460
  %62 = load %struct.stringtable** %tb, align 4, !dbg !460
  %63 = getelementptr inbounds %struct.stringtable* %62, i32 0, i32 0, !dbg !460
  %64 = load %struct.TString*** %63, align 4, !dbg !460
  %65 = getelementptr inbounds %struct.TString** %64, i32 %61, !dbg !460
  %66 = load %struct.TString** %65, align 4, !dbg !460
  store %struct.TString* %66, %struct.TString** %p, align 4, !dbg !460
  %67 = load i32* %i, align 4, !dbg !461
  %68 = load %struct.stringtable** %tb, align 4, !dbg !461
  %69 = getelementptr inbounds %struct.stringtable* %68, i32 0, i32 0, !dbg !461
  %70 = load %struct.TString*** %69, align 4, !dbg !461
  %71 = getelementptr inbounds %struct.TString** %70, i32 %67, !dbg !461
  store %struct.TString* null, %struct.TString** %71, align 4, !dbg !461
  br label %72, !dbg !462

; <label>:72                                      ; preds = %75, %60
  %73 = load %struct.TString** %p, align 4, !dbg !463
  %74 = icmp ne %struct.TString* %73, null, !dbg !463
  br i1 %74, label %75, label %102, !dbg !463

; <label>:75                                      ; preds = %72
  call void @llvm.dbg.declare(metadata !{%struct.TString** %hnext}, metadata !465), !dbg !467
  %76 = load %struct.TString** %p, align 4, !dbg !468
  %77 = getelementptr inbounds %struct.TString* %76, i32 0, i32 6, !dbg !468
  %78 = bitcast %union.anon* %77 to %struct.TString**, !dbg !468
  %79 = load %struct.TString** %78, align 4, !dbg !468
  store %struct.TString* %79, %struct.TString** %hnext, align 4, !dbg !468
  call void @llvm.dbg.declare(metadata !{i32* %h}, metadata !469), !dbg !470
  %80 = load %struct.TString** %p, align 4, !dbg !471
  %81 = getelementptr inbounds %struct.TString* %80, i32 0, i32 5, !dbg !471
  %82 = load i32* %81, align 4, !dbg !471
  %83 = load i32* %2, align 4, !dbg !471
  %84 = sub nsw i32 %83, 1, !dbg !471
  %85 = and i32 %82, %84, !dbg !471
  store i32 %85, i32* %h, align 4, !dbg !471
  %86 = load i32* %h, align 4, !dbg !472
  %87 = load %struct.stringtable** %tb, align 4, !dbg !472
  %88 = getelementptr inbounds %struct.stringtable* %87, i32 0, i32 0, !dbg !472
  %89 = load %struct.TString*** %88, align 4, !dbg !472
  %90 = getelementptr inbounds %struct.TString** %89, i32 %86, !dbg !472
  %91 = load %struct.TString** %90, align 4, !dbg !472
  %92 = load %struct.TString** %p, align 4, !dbg !472
  %93 = getelementptr inbounds %struct.TString* %92, i32 0, i32 6, !dbg !472
  %94 = bitcast %union.anon* %93 to %struct.TString**, !dbg !472
  store %struct.TString* %91, %struct.TString** %94, align 4, !dbg !472
  %95 = load %struct.TString** %p, align 4, !dbg !473
  %96 = load i32* %h, align 4, !dbg !473
  %97 = load %struct.stringtable** %tb, align 4, !dbg !473
  %98 = getelementptr inbounds %struct.stringtable* %97, i32 0, i32 0, !dbg !473
  %99 = load %struct.TString*** %98, align 4, !dbg !473
  %100 = getelementptr inbounds %struct.TString** %99, i32 %96, !dbg !473
  store %struct.TString* %95, %struct.TString** %100, align 4, !dbg !473
  %101 = load %struct.TString** %hnext, align 4, !dbg !474
  store %struct.TString* %101, %struct.TString** %p, align 4, !dbg !474
  br label %72, !dbg !475

; <label>:102                                     ; preds = %72
  br label %103, !dbg !476

; <label>:103                                     ; preds = %102
  %104 = load i32* %i, align 4, !dbg !477
  %105 = add nsw i32 %104, 1, !dbg !477
  store i32 %105, i32* %i, align 4, !dbg !477
  br label %54, !dbg !477

; <label>:106                                     ; preds = %54
  %107 = load i32* %2, align 4, !dbg !478
  %108 = load %struct.stringtable** %tb, align 4, !dbg !478
  %109 = getelementptr inbounds %struct.stringtable* %108, i32 0, i32 2, !dbg !478
  %110 = load i32* %109, align 4, !dbg !478
  %111 = icmp slt i32 %107, %110, !dbg !478
  br i1 %111, label %112, label %136, !dbg !478

; <label>:112                                     ; preds = %106
  %113 = load i32* %2, align 4, !dbg !480
  %114 = add i32 %113, 1, !dbg !480
  %115 = icmp ugt i32 %114, 1073741823, !dbg !480
  br i1 %115, label %116, label %119, !dbg !480

; <label>:116                                     ; preds = %112
  %117 = load %struct.lua_State** %1, align 4, !dbg !482
  call void @luaM_toobig(%struct.lua_State* %117) #7, !dbg !482
  unreachable, !dbg !482
                                                  ; No predecessors!
  br label %120, !dbg !480

; <label>:119                                     ; preds = %112
  br label %120, !dbg !484

; <label>:120                                     ; preds = %119, %118
  %121 = load %struct.lua_State** %1, align 4, !dbg !486
  %122 = load %struct.stringtable** %tb, align 4, !dbg !486
  %123 = getelementptr inbounds %struct.stringtable* %122, i32 0, i32 0, !dbg !486
  %124 = load %struct.TString*** %123, align 4, !dbg !486
  %125 = bitcast %struct.TString** %124 to i8*, !dbg !486
  %126 = load %struct.stringtable** %tb, align 4, !dbg !486
  %127 = getelementptr inbounds %struct.stringtable* %126, i32 0, i32 2, !dbg !486
  %128 = load i32* %127, align 4, !dbg !486
  %129 = mul i32 %128, 4, !dbg !486
  %130 = load i32* %2, align 4, !dbg !486
  %131 = mul i32 %130, 4, !dbg !486
  %132 = call i8* @luaM_realloc_(%struct.lua_State* %121, i8* %125, i32 %129, i32 %131), !dbg !486
  %133 = bitcast i8* %132 to %struct.TString**, !dbg !486
  %134 = load %struct.stringtable** %tb, align 4, !dbg !486
  %135 = getelementptr inbounds %struct.stringtable* %134, i32 0, i32 0, !dbg !486
  store %struct.TString** %133, %struct.TString*** %135, align 4, !dbg !486
  br label %136, !dbg !489

; <label>:136                                     ; preds = %120, %106
  %137 = load i32* %2, align 4, !dbg !490
  %138 = load %struct.stringtable** %tb, align 4, !dbg !490
  %139 = getelementptr inbounds %struct.stringtable* %138, i32 0, i32 2, !dbg !490
  store i32 %137, i32* %139, align 4, !dbg !490
  ret void, !dbg !491
}

; Function Attrs: noreturn
declare hidden void @luaM_toobig(%struct.lua_State*) #3

declare hidden i8* @luaM_realloc_(%struct.lua_State*, i8*, i32, i32) #4

; Function Attrs: nounwind
define hidden void @luaS_clearcache(%struct.global_State* %g) #0 {
  %1 = alloca %struct.global_State*, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store %struct.global_State* %g, %struct.global_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.global_State** %1}, metadata !492), !dbg !493
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !494), !dbg !495
  call void @llvm.dbg.declare(metadata !{i32* %j}, metadata !496), !dbg !497
  store i32 0, i32* %i, align 4, !dbg !498
  br label %2, !dbg !498

; <label>:2                                       ; preds = %37, %0
  %3 = load i32* %i, align 4, !dbg !500
  %4 = icmp slt i32 %3, 53, !dbg !500
  br i1 %4, label %5, label %40, !dbg !500

; <label>:5                                       ; preds = %2
  store i32 0, i32* %j, align 4, !dbg !503
  br label %6, !dbg !503

; <label>:6                                       ; preds = %33, %5
  %7 = load i32* %j, align 4, !dbg !505
  %8 = icmp slt i32 %7, 2, !dbg !505
  br i1 %8, label %9, label %36, !dbg !505

; <label>:9                                       ; preds = %6
  %10 = load i32* %j, align 4, !dbg !508
  %11 = load i32* %i, align 4, !dbg !508
  %12 = load %struct.global_State** %1, align 4, !dbg !508
  %13 = getelementptr inbounds %struct.global_State* %12, i32 0, i32 33, !dbg !508
  %14 = getelementptr inbounds [53 x [2 x %struct.TString*]]* %13, i32 0, i32 %11, !dbg !508
  %15 = getelementptr inbounds [2 x %struct.TString*]* %14, i32 0, i32 %10, !dbg !508
  %16 = load %struct.TString** %15, align 4, !dbg !508
  %17 = getelementptr inbounds %struct.TString* %16, i32 0, i32 2, !dbg !508
  %18 = load i8* %17, align 1, !dbg !508
  %19 = zext i8 %18 to i32, !dbg !508
  %20 = and i32 %19, 3, !dbg !508
  %21 = icmp ne i32 %20, 0, !dbg !508
  br i1 %21, label %22, label %32, !dbg !508

; <label>:22                                      ; preds = %9
  %23 = load %struct.global_State** %1, align 4, !dbg !511
  %24 = getelementptr inbounds %struct.global_State* %23, i32 0, i32 30, !dbg !511
  %25 = load %struct.TString** %24, align 4, !dbg !511
  %26 = load i32* %j, align 4, !dbg !511
  %27 = load i32* %i, align 4, !dbg !511
  %28 = load %struct.global_State** %1, align 4, !dbg !511
  %29 = getelementptr inbounds %struct.global_State* %28, i32 0, i32 33, !dbg !511
  %30 = getelementptr inbounds [53 x [2 x %struct.TString*]]* %29, i32 0, i32 %27, !dbg !511
  %31 = getelementptr inbounds [2 x %struct.TString*]* %30, i32 0, i32 %26, !dbg !511
  store %struct.TString* %25, %struct.TString** %31, align 4, !dbg !511
  br label %32, !dbg !511

; <label>:32                                      ; preds = %22, %9
  br label %33, !dbg !512

; <label>:33                                      ; preds = %32
  %34 = load i32* %j, align 4, !dbg !513
  %35 = add nsw i32 %34, 1, !dbg !513
  store i32 %35, i32* %j, align 4, !dbg !513
  br label %6, !dbg !513

; <label>:36                                      ; preds = %6
  br label %37, !dbg !514

; <label>:37                                      ; preds = %36
  %38 = load i32* %i, align 4, !dbg !515
  %39 = add nsw i32 %38, 1, !dbg !515
  store i32 %39, i32* %i, align 4, !dbg !515
  br label %2, !dbg !515

; <label>:40                                      ; preds = %2
  ret void, !dbg !516
}

; Function Attrs: nounwind
define hidden void @luaS_init(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %g = alloca %struct.global_State*, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !517), !dbg !518
  call void @llvm.dbg.declare(metadata !{%struct.global_State** %g}, metadata !519), !dbg !520
  %2 = load %struct.lua_State** %1, align 4, !dbg !521
  %3 = getelementptr inbounds %struct.lua_State* %2, i32 0, i32 6, !dbg !521
  %4 = load %struct.global_State** %3, align 4, !dbg !521
  store %struct.global_State* %4, %struct.global_State** %g, align 4, !dbg !521
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !522), !dbg !523
  call void @llvm.dbg.declare(metadata !{i32* %j}, metadata !524), !dbg !525
  %5 = load %struct.lua_State** %1, align 4, !dbg !526
  call void @luaS_resize(%struct.lua_State* %5, i32 128), !dbg !526
  %6 = load %struct.lua_State** %1, align 4, !dbg !527
  %7 = call %struct.TString* @luaS_newlstr(%struct.lua_State* %6, i8* getelementptr inbounds ([18 x i8]* @.str, i32 0, i32 0), i32 17), !dbg !527
  %8 = load %struct.global_State** %g, align 4, !dbg !527
  %9 = getelementptr inbounds %struct.global_State* %8, i32 0, i32 30, !dbg !527
  store %struct.TString* %7, %struct.TString** %9, align 4, !dbg !527
  %10 = load %struct.lua_State** %1, align 4, !dbg !528
  %11 = load %struct.global_State** %g, align 4, !dbg !528
  %12 = getelementptr inbounds %struct.global_State* %11, i32 0, i32 30, !dbg !528
  %13 = load %struct.TString** %12, align 4, !dbg !528
  %14 = bitcast %struct.TString* %13 to %union.GCUnion*, !dbg !528
  %15 = bitcast %union.GCUnion* %14 to %struct.GCObject*, !dbg !528
  call void @luaC_fix(%struct.lua_State* %10, %struct.GCObject* %15), !dbg !528
  store i32 0, i32* %i, align 4, !dbg !529
  br label %16, !dbg !529

; <label>:16                                      ; preds = %37, %0
  %17 = load i32* %i, align 4, !dbg !531
  %18 = icmp slt i32 %17, 53, !dbg !531
  br i1 %18, label %19, label %40, !dbg !531

; <label>:19                                      ; preds = %16
  store i32 0, i32* %j, align 4, !dbg !534
  br label %20, !dbg !534

; <label>:20                                      ; preds = %33, %19
  %21 = load i32* %j, align 4, !dbg !536
  %22 = icmp slt i32 %21, 2, !dbg !536
  br i1 %22, label %23, label %36, !dbg !536

; <label>:23                                      ; preds = %20
  %24 = load %struct.global_State** %g, align 4, !dbg !539
  %25 = getelementptr inbounds %struct.global_State* %24, i32 0, i32 30, !dbg !539
  %26 = load %struct.TString** %25, align 4, !dbg !539
  %27 = load i32* %j, align 4, !dbg !539
  %28 = load i32* %i, align 4, !dbg !539
  %29 = load %struct.global_State** %g, align 4, !dbg !539
  %30 = getelementptr inbounds %struct.global_State* %29, i32 0, i32 33, !dbg !539
  %31 = getelementptr inbounds [53 x [2 x %struct.TString*]]* %30, i32 0, i32 %28, !dbg !539
  %32 = getelementptr inbounds [2 x %struct.TString*]* %31, i32 0, i32 %27, !dbg !539
  store %struct.TString* %26, %struct.TString** %32, align 4, !dbg !539
  br label %33, !dbg !539

; <label>:33                                      ; preds = %23
  %34 = load i32* %j, align 4, !dbg !540
  %35 = add nsw i32 %34, 1, !dbg !540
  store i32 %35, i32* %j, align 4, !dbg !540
  br label %20, !dbg !540

; <label>:36                                      ; preds = %20
  br label %37, !dbg !541

; <label>:37                                      ; preds = %36
  %38 = load i32* %i, align 4, !dbg !542
  %39 = add nsw i32 %38, 1, !dbg !542
  store i32 %39, i32* %i, align 4, !dbg !542
  br label %16, !dbg !542

; <label>:40                                      ; preds = %16
  ret void, !dbg !543
}

; Function Attrs: nounwind
define hidden %struct.TString* @luaS_newlstr(%struct.lua_State* %L, i8* %str, i32 %l) #0 {
  %1 = alloca %struct.TString*, align 4
  %2 = alloca %struct.lua_State*, align 4
  %3 = alloca i8*, align 4
  %4 = alloca i32, align 4
  %ts = alloca %struct.TString*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %2}, metadata !544), !dbg !545
  store i8* %str, i8** %3, align 4
  call void @llvm.dbg.declare(metadata !{i8** %3}, metadata !546), !dbg !547
  store i32 %l, i32* %4, align 4
  call void @llvm.dbg.declare(metadata !{i32* %4}, metadata !548), !dbg !549
  %5 = load i32* %4, align 4, !dbg !550
  %6 = icmp ule i32 %5, 40, !dbg !550
  br i1 %6, label %7, label %12, !dbg !550

; <label>:7                                       ; preds = %0
  %8 = load %struct.lua_State** %2, align 4, !dbg !552
  %9 = load i8** %3, align 4, !dbg !552
  %10 = load i32* %4, align 4, !dbg !552
  %11 = call %struct.TString* @internshrstr(%struct.lua_State* %8, i8* %9, i32 %10), !dbg !552
  store %struct.TString* %11, %struct.TString** %1, !dbg !552
  br label %28, !dbg !552

; <label>:12                                      ; preds = %0
  call void @llvm.dbg.declare(metadata !{%struct.TString** %ts}, metadata !553), !dbg !555
  %13 = load i32* %4, align 4, !dbg !556
  %14 = icmp uge i32 %13, -17, !dbg !556
  br i1 %14, label %15, label %17, !dbg !556

; <label>:15                                      ; preds = %12
  %16 = load %struct.lua_State** %2, align 4, !dbg !558
  call void @luaM_toobig(%struct.lua_State* %16) #7, !dbg !558
  unreachable, !dbg !558

; <label>:17                                      ; preds = %12
  %18 = load %struct.lua_State** %2, align 4, !dbg !559
  %19 = load i32* %4, align 4, !dbg !559
  %20 = call %struct.TString* @luaS_createlngstrobj(%struct.lua_State* %18, i32 %19), !dbg !559
  store %struct.TString* %20, %struct.TString** %ts, align 4, !dbg !559
  %21 = load %struct.TString** %ts, align 4, !dbg !560
  %22 = bitcast %struct.TString* %21 to i8*, !dbg !560
  %23 = getelementptr inbounds i8* %22, i32 16, !dbg !560
  %24 = load i8** %3, align 4, !dbg !560
  %25 = load i32* %4, align 4, !dbg !560
  %26 = mul i32 %25, 1, !dbg !560
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %23, i8* %24, i32 %26, i32 1, i1 false), !dbg !560
  %27 = load %struct.TString** %ts, align 4, !dbg !561
  store %struct.TString* %27, %struct.TString** %1, !dbg !561
  br label %28, !dbg !561

; <label>:28                                      ; preds = %17, %7
  %29 = load %struct.TString** %1, !dbg !562
  ret %struct.TString* %29, !dbg !562
}

declare hidden void @luaC_fix(%struct.lua_State*, %struct.GCObject*) #4

; Function Attrs: nounwind
define hidden %struct.TString* @luaS_createlngstrobj(%struct.lua_State* %L, i32 %l) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca i32, align 4
  %ts = alloca %struct.TString*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !563), !dbg !564
  store i32 %l, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !565), !dbg !566
  call void @llvm.dbg.declare(metadata !{%struct.TString** %ts}, metadata !567), !dbg !568
  %3 = load %struct.lua_State** %1, align 4, !dbg !569
  %4 = load i32* %2, align 4, !dbg !569
  %5 = load %struct.lua_State** %1, align 4, !dbg !569
  %6 = getelementptr inbounds %struct.lua_State* %5, i32 0, i32 6, !dbg !569
  %7 = load %struct.global_State** %6, align 4, !dbg !569
  %8 = getelementptr inbounds %struct.global_State* %7, i32 0, i32 8, !dbg !569
  %9 = load i32* %8, align 4, !dbg !569
  %10 = call %struct.TString* @createstrobj(%struct.lua_State* %3, i32 %4, i32 20, i32 %9), !dbg !569
  store %struct.TString* %10, %struct.TString** %ts, align 4, !dbg !569
  %11 = load i32* %2, align 4, !dbg !570
  %12 = load %struct.TString** %ts, align 4, !dbg !570
  %13 = getelementptr inbounds %struct.TString* %12, i32 0, i32 6, !dbg !570
  %14 = bitcast %union.anon* %13 to i32*, !dbg !570
  store i32 %11, i32* %14, align 4, !dbg !570
  %15 = load %struct.TString** %ts, align 4, !dbg !571
  ret %struct.TString* %15, !dbg !571
}

; Function Attrs: nounwind
define internal %struct.TString* @createstrobj(%struct.lua_State* %L, i32 %l, i32 %tag, i32 %h) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %ts = alloca %struct.TString*, align 4
  %o = alloca %struct.GCObject*, align 4
  %totalsize = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !572), !dbg !573
  store i32 %l, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !574), !dbg !575
  store i32 %tag, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !576), !dbg !577
  store i32 %h, i32* %4, align 4
  call void @llvm.dbg.declare(metadata !{i32* %4}, metadata !578), !dbg !579
  call void @llvm.dbg.declare(metadata !{%struct.TString** %ts}, metadata !580), !dbg !581
  call void @llvm.dbg.declare(metadata !{%struct.GCObject** %o}, metadata !582), !dbg !583
  call void @llvm.dbg.declare(metadata !{i32* %totalsize}, metadata !584), !dbg !585
  %5 = load i32* %2, align 4, !dbg !586
  %6 = add i32 %5, 1, !dbg !586
  %7 = mul i32 %6, 1, !dbg !586
  %8 = add i32 16, %7, !dbg !586
  store i32 %8, i32* %totalsize, align 4, !dbg !586
  %9 = load %struct.lua_State** %1, align 4, !dbg !587
  %10 = load i32* %3, align 4, !dbg !587
  %11 = load i32* %totalsize, align 4, !dbg !587
  %12 = call %struct.GCObject* @luaC_newobj(%struct.lua_State* %9, i32 %10, i32 %11), !dbg !587
  store %struct.GCObject* %12, %struct.GCObject** %o, align 4, !dbg !587
  %13 = load %struct.GCObject** %o, align 4, !dbg !588
  %14 = bitcast %struct.GCObject* %13 to %union.GCUnion*, !dbg !588
  %15 = bitcast %union.GCUnion* %14 to %struct.TString*, !dbg !588
  store %struct.TString* %15, %struct.TString** %ts, align 4, !dbg !588
  %16 = load i32* %4, align 4, !dbg !589
  %17 = load %struct.TString** %ts, align 4, !dbg !589
  %18 = getelementptr inbounds %struct.TString* %17, i32 0, i32 5, !dbg !589
  store i32 %16, i32* %18, align 4, !dbg !589
  %19 = load %struct.TString** %ts, align 4, !dbg !590
  %20 = getelementptr inbounds %struct.TString* %19, i32 0, i32 3, !dbg !590
  store i8 0, i8* %20, align 1, !dbg !590
  %21 = load i32* %2, align 4, !dbg !591
  %22 = load %struct.TString** %ts, align 4, !dbg !591
  %23 = bitcast %struct.TString* %22 to i8*, !dbg !591
  %24 = getelementptr inbounds i8* %23, i32 16, !dbg !591
  %25 = getelementptr inbounds i8* %24, i32 %21, !dbg !591
  store i8 0, i8* %25, align 1, !dbg !591
  %26 = load %struct.TString** %ts, align 4, !dbg !592
  ret %struct.TString* %26, !dbg !592
}

; Function Attrs: nounwind
define hidden void @luaS_remove(%struct.lua_State* %L, %struct.TString* %ts) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca %struct.TString*, align 4
  %tb = alloca %struct.stringtable*, align 4
  %p = alloca %struct.TString**, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !593), !dbg !594
  store %struct.TString* %ts, %struct.TString** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.TString** %2}, metadata !595), !dbg !596
  call void @llvm.dbg.declare(metadata !{%struct.stringtable** %tb}, metadata !597), !dbg !598
  %3 = load %struct.lua_State** %1, align 4, !dbg !599
  %4 = getelementptr inbounds %struct.lua_State* %3, i32 0, i32 6, !dbg !599
  %5 = load %struct.global_State** %4, align 4, !dbg !599
  %6 = getelementptr inbounds %struct.global_State* %5, i32 0, i32 6, !dbg !599
  store %struct.stringtable* %6, %struct.stringtable** %tb, align 4, !dbg !599
  call void @llvm.dbg.declare(metadata !{%struct.TString*** %p}, metadata !600), !dbg !601
  %7 = load %struct.TString** %2, align 4, !dbg !602
  %8 = getelementptr inbounds %struct.TString* %7, i32 0, i32 5, !dbg !602
  %9 = load i32* %8, align 4, !dbg !602
  %10 = load %struct.stringtable** %tb, align 4, !dbg !602
  %11 = getelementptr inbounds %struct.stringtable* %10, i32 0, i32 2, !dbg !602
  %12 = load i32* %11, align 4, !dbg !602
  %13 = sub nsw i32 %12, 1, !dbg !602
  %14 = and i32 %9, %13, !dbg !602
  %15 = load %struct.stringtable** %tb, align 4, !dbg !602
  %16 = getelementptr inbounds %struct.stringtable* %15, i32 0, i32 0, !dbg !602
  %17 = load %struct.TString*** %16, align 4, !dbg !602
  %18 = getelementptr inbounds %struct.TString** %17, i32 %14, !dbg !602
  store %struct.TString** %18, %struct.TString*** %p, align 4, !dbg !602
  br label %19, !dbg !603

; <label>:19                                      ; preds = %24, %0
  %20 = load %struct.TString*** %p, align 4, !dbg !604
  %21 = load %struct.TString** %20, align 4, !dbg !604
  %22 = load %struct.TString** %2, align 4, !dbg !604
  %23 = icmp ne %struct.TString* %21, %22, !dbg !604
  br i1 %23, label %24, label %29, !dbg !604

; <label>:24                                      ; preds = %19
  %25 = load %struct.TString*** %p, align 4, !dbg !606
  %26 = load %struct.TString** %25, align 4, !dbg !606
  %27 = getelementptr inbounds %struct.TString* %26, i32 0, i32 6, !dbg !606
  %28 = bitcast %union.anon* %27 to %struct.TString**, !dbg !606
  store %struct.TString** %28, %struct.TString*** %p, align 4, !dbg !606
  br label %19, !dbg !606

; <label>:29                                      ; preds = %19
  %30 = load %struct.TString*** %p, align 4, !dbg !607
  %31 = load %struct.TString** %30, align 4, !dbg !607
  %32 = getelementptr inbounds %struct.TString* %31, i32 0, i32 6, !dbg !607
  %33 = bitcast %union.anon* %32 to %struct.TString**, !dbg !607
  %34 = load %struct.TString** %33, align 4, !dbg !607
  %35 = load %struct.TString*** %p, align 4, !dbg !607
  store %struct.TString* %34, %struct.TString** %35, align 4, !dbg !607
  %36 = load %struct.stringtable** %tb, align 4, !dbg !608
  %37 = getelementptr inbounds %struct.stringtable* %36, i32 0, i32 1, !dbg !608
  %38 = load i32* %37, align 4, !dbg !608
  %39 = add nsw i32 %38, -1, !dbg !608
  store i32 %39, i32* %37, align 4, !dbg !608
  ret void, !dbg !609
}

; Function Attrs: nounwind
define internal %struct.TString* @internshrstr(%struct.lua_State* %L, i8* %str, i32 %l) #0 {
  %1 = alloca %struct.TString*, align 4
  %2 = alloca %struct.lua_State*, align 4
  %3 = alloca i8*, align 4
  %4 = alloca i32, align 4
  %ts = alloca %struct.TString*, align 4
  %g = alloca %struct.global_State*, align 4
  %h = alloca i32, align 4
  %list = alloca %struct.TString**, align 4
  store %struct.lua_State* %L, %struct.lua_State** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %2}, metadata !610), !dbg !611
  store i8* %str, i8** %3, align 4
  call void @llvm.dbg.declare(metadata !{i8** %3}, metadata !612), !dbg !613
  store i32 %l, i32* %4, align 4
  call void @llvm.dbg.declare(metadata !{i32* %4}, metadata !614), !dbg !615
  call void @llvm.dbg.declare(metadata !{%struct.TString** %ts}, metadata !616), !dbg !617
  call void @llvm.dbg.declare(metadata !{%struct.global_State** %g}, metadata !618), !dbg !619
  %5 = load %struct.lua_State** %2, align 4, !dbg !620
  %6 = getelementptr inbounds %struct.lua_State* %5, i32 0, i32 6, !dbg !620
  %7 = load %struct.global_State** %6, align 4, !dbg !620
  store %struct.global_State* %7, %struct.global_State** %g, align 4, !dbg !620
  call void @llvm.dbg.declare(metadata !{i32* %h}, metadata !621), !dbg !622
  %8 = load i8** %3, align 4, !dbg !623
  %9 = load i32* %4, align 4, !dbg !623
  %10 = load %struct.global_State** %g, align 4, !dbg !623
  %11 = getelementptr inbounds %struct.global_State* %10, i32 0, i32 8, !dbg !623
  %12 = load i32* %11, align 4, !dbg !623
  %13 = call i32 @luaS_hash(i8* %8, i32 %9, i32 %12), !dbg !623
  store i32 %13, i32* %h, align 4, !dbg !623
  call void @llvm.dbg.declare(metadata !{%struct.TString*** %list}, metadata !624), !dbg !625
  %14 = load i32* %h, align 4, !dbg !626
  %15 = load %struct.global_State** %g, align 4, !dbg !626
  %16 = getelementptr inbounds %struct.global_State* %15, i32 0, i32 6, !dbg !626
  %17 = getelementptr inbounds %struct.stringtable* %16, i32 0, i32 2, !dbg !626
  %18 = load i32* %17, align 4, !dbg !626
  %19 = sub nsw i32 %18, 1, !dbg !626
  %20 = and i32 %14, %19, !dbg !626
  %21 = load %struct.global_State** %g, align 4, !dbg !626
  %22 = getelementptr inbounds %struct.global_State* %21, i32 0, i32 6, !dbg !626
  %23 = getelementptr inbounds %struct.stringtable* %22, i32 0, i32 0, !dbg !626
  %24 = load %struct.TString*** %23, align 4, !dbg !626
  %25 = getelementptr inbounds %struct.TString** %24, i32 %20, !dbg !626
  store %struct.TString** %25, %struct.TString*** %list, align 4, !dbg !626
  %26 = load %struct.TString*** %list, align 4, !dbg !627
  %27 = load %struct.TString** %26, align 4, !dbg !627
  store %struct.TString* %27, %struct.TString** %ts, align 4, !dbg !627
  br label %28, !dbg !627

; <label>:28                                      ; preds = %70, %0
  %29 = load %struct.TString** %ts, align 4, !dbg !629
  %30 = icmp ne %struct.TString* %29, null, !dbg !629
  br i1 %30, label %31, label %75, !dbg !629

; <label>:31                                      ; preds = %28
  %32 = load i32* %4, align 4, !dbg !632
  %33 = load %struct.TString** %ts, align 4, !dbg !632
  %34 = getelementptr inbounds %struct.TString* %33, i32 0, i32 4, !dbg !632
  %35 = load i8* %34, align 1, !dbg !632
  %36 = zext i8 %35 to i32, !dbg !632
  %37 = icmp eq i32 %32, %36, !dbg !632
  br i1 %37, label %38, label %69, !dbg !632

; <label>:38                                      ; preds = %31
  %39 = load i8** %3, align 4, !dbg !635
  %40 = load %struct.TString** %ts, align 4, !dbg !635
  %41 = bitcast %struct.TString* %40 to i8*, !dbg !635
  %42 = getelementptr inbounds i8* %41, i32 16, !dbg !635
  %43 = load i32* %4, align 4, !dbg !635
  %44 = mul i32 %43, 1, !dbg !635
  %45 = call i32 @memcmp(i8* %39, i8* %42, i32 %44) #6, !dbg !635
  %46 = icmp eq i32 %45, 0, !dbg !635
  br i1 %46, label %47, label %69, !dbg !635

; <label>:47                                      ; preds = %38
  %48 = load %struct.TString** %ts, align 4, !dbg !636
  %49 = getelementptr inbounds %struct.TString* %48, i32 0, i32 2, !dbg !636
  %50 = load i8* %49, align 1, !dbg !636
  %51 = zext i8 %50 to i32, !dbg !636
  %52 = xor i32 %51, 3, !dbg !636
  %53 = load %struct.global_State** %g, align 4, !dbg !636
  %54 = getelementptr inbounds %struct.global_State* %53, i32 0, i32 9, !dbg !636
  %55 = load i8* %54, align 1, !dbg !636
  %56 = zext i8 %55 to i32, !dbg !636
  %57 = xor i32 %56, 3, !dbg !636
  %58 = and i32 %52, %57, !dbg !636
  %59 = icmp ne i32 %58, 0, !dbg !636
  br i1 %59, label %67, label %60, !dbg !636

; <label>:60                                      ; preds = %47
  %61 = load %struct.TString** %ts, align 4, !dbg !639
  %62 = getelementptr inbounds %struct.TString* %61, i32 0, i32 2, !dbg !639
  %63 = load i8* %62, align 1, !dbg !639
  %64 = zext i8 %63 to i32, !dbg !639
  %65 = xor i32 %64, 3, !dbg !639
  %66 = trunc i32 %65 to i8, !dbg !639
  store i8 %66, i8* %62, align 1, !dbg !639
  br label %67, !dbg !639

; <label>:67                                      ; preds = %60, %47
  %68 = load %struct.TString** %ts, align 4, !dbg !640
  store %struct.TString* %68, %struct.TString** %1, !dbg !640
  br label %138, !dbg !640

; <label>:69                                      ; preds = %38, %31
  br label %70, !dbg !641

; <label>:70                                      ; preds = %69
  %71 = load %struct.TString** %ts, align 4, !dbg !642
  %72 = getelementptr inbounds %struct.TString* %71, i32 0, i32 6, !dbg !642
  %73 = bitcast %union.anon* %72 to %struct.TString**, !dbg !642
  %74 = load %struct.TString** %73, align 4, !dbg !642
  store %struct.TString* %74, %struct.TString** %ts, align 4, !dbg !642
  br label %28, !dbg !642

; <label>:75                                      ; preds = %28
  %76 = load %struct.global_State** %g, align 4, !dbg !643
  %77 = getelementptr inbounds %struct.global_State* %76, i32 0, i32 6, !dbg !643
  %78 = getelementptr inbounds %struct.stringtable* %77, i32 0, i32 1, !dbg !643
  %79 = load i32* %78, align 4, !dbg !643
  %80 = load %struct.global_State** %g, align 4, !dbg !643
  %81 = getelementptr inbounds %struct.global_State* %80, i32 0, i32 6, !dbg !643
  %82 = getelementptr inbounds %struct.stringtable* %81, i32 0, i32 2, !dbg !643
  %83 = load i32* %82, align 4, !dbg !643
  %84 = icmp sge i32 %79, %83, !dbg !643
  br i1 %84, label %85, label %110, !dbg !643

; <label>:85                                      ; preds = %75
  %86 = load %struct.global_State** %g, align 4, !dbg !645
  %87 = getelementptr inbounds %struct.global_State* %86, i32 0, i32 6, !dbg !645
  %88 = getelementptr inbounds %struct.stringtable* %87, i32 0, i32 2, !dbg !645
  %89 = load i32* %88, align 4, !dbg !645
  %90 = icmp sle i32 %89, 1073741823, !dbg !645
  br i1 %90, label %91, label %110, !dbg !645

; <label>:91                                      ; preds = %85
  %92 = load %struct.lua_State** %2, align 4, !dbg !647
  %93 = load %struct.global_State** %g, align 4, !dbg !647
  %94 = getelementptr inbounds %struct.global_State* %93, i32 0, i32 6, !dbg !647
  %95 = getelementptr inbounds %struct.stringtable* %94, i32 0, i32 2, !dbg !647
  %96 = load i32* %95, align 4, !dbg !647
  %97 = mul nsw i32 %96, 2, !dbg !647
  call void @luaS_resize(%struct.lua_State* %92, i32 %97), !dbg !647
  %98 = load i32* %h, align 4, !dbg !649
  %99 = load %struct.global_State** %g, align 4, !dbg !649
  %100 = getelementptr inbounds %struct.global_State* %99, i32 0, i32 6, !dbg !649
  %101 = getelementptr inbounds %struct.stringtable* %100, i32 0, i32 2, !dbg !649
  %102 = load i32* %101, align 4, !dbg !649
  %103 = sub nsw i32 %102, 1, !dbg !649
  %104 = and i32 %98, %103, !dbg !649
  %105 = load %struct.global_State** %g, align 4, !dbg !649
  %106 = getelementptr inbounds %struct.global_State* %105, i32 0, i32 6, !dbg !649
  %107 = getelementptr inbounds %struct.stringtable* %106, i32 0, i32 0, !dbg !649
  %108 = load %struct.TString*** %107, align 4, !dbg !649
  %109 = getelementptr inbounds %struct.TString** %108, i32 %104, !dbg !649
  store %struct.TString** %109, %struct.TString*** %list, align 4, !dbg !649
  br label %110, !dbg !650

; <label>:110                                     ; preds = %91, %85, %75
  %111 = load %struct.lua_State** %2, align 4, !dbg !651
  %112 = load i32* %4, align 4, !dbg !651
  %113 = load i32* %h, align 4, !dbg !651
  %114 = call %struct.TString* @createstrobj(%struct.lua_State* %111, i32 %112, i32 4, i32 %113), !dbg !651
  store %struct.TString* %114, %struct.TString** %ts, align 4, !dbg !651
  %115 = load %struct.TString** %ts, align 4, !dbg !652
  %116 = bitcast %struct.TString* %115 to i8*, !dbg !652
  %117 = getelementptr inbounds i8* %116, i32 16, !dbg !652
  %118 = load i8** %3, align 4, !dbg !652
  %119 = load i32* %4, align 4, !dbg !652
  %120 = mul i32 %119, 1, !dbg !652
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %117, i8* %118, i32 %120, i32 1, i1 false), !dbg !652
  %121 = load i32* %4, align 4, !dbg !653
  %122 = trunc i32 %121 to i8, !dbg !653
  %123 = load %struct.TString** %ts, align 4, !dbg !653
  %124 = getelementptr inbounds %struct.TString* %123, i32 0, i32 4, !dbg !653
  store i8 %122, i8* %124, align 1, !dbg !653
  %125 = load %struct.TString*** %list, align 4, !dbg !654
  %126 = load %struct.TString** %125, align 4, !dbg !654
  %127 = load %struct.TString** %ts, align 4, !dbg !654
  %128 = getelementptr inbounds %struct.TString* %127, i32 0, i32 6, !dbg !654
  %129 = bitcast %union.anon* %128 to %struct.TString**, !dbg !654
  store %struct.TString* %126, %struct.TString** %129, align 4, !dbg !654
  %130 = load %struct.TString** %ts, align 4, !dbg !655
  %131 = load %struct.TString*** %list, align 4, !dbg !655
  store %struct.TString* %130, %struct.TString** %131, align 4, !dbg !655
  %132 = load %struct.global_State** %g, align 4, !dbg !656
  %133 = getelementptr inbounds %struct.global_State* %132, i32 0, i32 6, !dbg !656
  %134 = getelementptr inbounds %struct.stringtable* %133, i32 0, i32 1, !dbg !656
  %135 = load i32* %134, align 4, !dbg !656
  %136 = add nsw i32 %135, 1, !dbg !656
  store i32 %136, i32* %134, align 4, !dbg !656
  %137 = load %struct.TString** %ts, align 4, !dbg !657
  store %struct.TString* %137, %struct.TString** %1, !dbg !657
  br label %138, !dbg !657

; <label>:138                                     ; preds = %110, %67
  %139 = load %struct.TString** %1, !dbg !658
  ret %struct.TString* %139, !dbg !658
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture, i8* nocapture readonly, i32, i32, i1) #5

; Function Attrs: nounwind
define hidden %struct.TString* @luaS_new(%struct.lua_State* %L, i8* %str) #0 {
  %1 = alloca %struct.TString*, align 4
  %2 = alloca %struct.lua_State*, align 4
  %3 = alloca i8*, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %p = alloca %struct.TString**, align 4
  store %struct.lua_State* %L, %struct.lua_State** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %2}, metadata !659), !dbg !660
  store i8* %str, i8** %3, align 4
  call void @llvm.dbg.declare(metadata !{i8** %3}, metadata !661), !dbg !662
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !663), !dbg !664
  %4 = load i8** %3, align 4, !dbg !665
  %5 = ptrtoint i8* %4 to i32, !dbg !665
  %6 = urem i32 %5, 53, !dbg !665
  store i32 %6, i32* %i, align 4, !dbg !665
  call void @llvm.dbg.declare(metadata !{i32* %j}, metadata !666), !dbg !667
  call void @llvm.dbg.declare(metadata !{%struct.TString*** %p}, metadata !668), !dbg !669
  %7 = load i32* %i, align 4, !dbg !670
  %8 = load %struct.lua_State** %2, align 4, !dbg !670
  %9 = getelementptr inbounds %struct.lua_State* %8, i32 0, i32 6, !dbg !670
  %10 = load %struct.global_State** %9, align 4, !dbg !670
  %11 = getelementptr inbounds %struct.global_State* %10, i32 0, i32 33, !dbg !670
  %12 = getelementptr inbounds [53 x [2 x %struct.TString*]]* %11, i32 0, i32 %7, !dbg !670
  %13 = getelementptr inbounds [2 x %struct.TString*]* %12, i32 0, i32 0, !dbg !670
  store %struct.TString** %13, %struct.TString*** %p, align 4, !dbg !670
  store i32 0, i32* %j, align 4, !dbg !671
  br label %14, !dbg !671

; <label>:14                                      ; preds = %33, %0
  %15 = load i32* %j, align 4, !dbg !673
  %16 = icmp slt i32 %15, 2, !dbg !673
  br i1 %16, label %17, label %36, !dbg !673

; <label>:17                                      ; preds = %14
  %18 = load i8** %3, align 4, !dbg !676
  %19 = load i32* %j, align 4, !dbg !676
  %20 = load %struct.TString*** %p, align 4, !dbg !676
  %21 = getelementptr inbounds %struct.TString** %20, i32 %19, !dbg !676
  %22 = load %struct.TString** %21, align 4, !dbg !676
  %23 = bitcast %struct.TString* %22 to i8*, !dbg !676
  %24 = getelementptr inbounds i8* %23, i32 16, !dbg !676
  %25 = call i32 @strcmp(i8* %18, i8* %24) #6, !dbg !676
  %26 = icmp eq i32 %25, 0, !dbg !676
  br i1 %26, label %27, label %32, !dbg !676

; <label>:27                                      ; preds = %17
  %28 = load i32* %j, align 4, !dbg !679
  %29 = load %struct.TString*** %p, align 4, !dbg !679
  %30 = getelementptr inbounds %struct.TString** %29, i32 %28, !dbg !679
  %31 = load %struct.TString** %30, align 4, !dbg !679
  store %struct.TString* %31, %struct.TString** %1, !dbg !679
  br label %63, !dbg !679

; <label>:32                                      ; preds = %17
  br label %33, !dbg !680

; <label>:33                                      ; preds = %32
  %34 = load i32* %j, align 4, !dbg !681
  %35 = add nsw i32 %34, 1, !dbg !681
  store i32 %35, i32* %j, align 4, !dbg !681
  br label %14, !dbg !681

; <label>:36                                      ; preds = %14
  store i32 1, i32* %j, align 4, !dbg !682
  br label %37, !dbg !682

; <label>:37                                      ; preds = %49, %36
  %38 = load i32* %j, align 4, !dbg !684
  %39 = icmp sgt i32 %38, 0, !dbg !684
  br i1 %39, label %40, label %52, !dbg !684

; <label>:40                                      ; preds = %37
  %41 = load i32* %j, align 4, !dbg !687
  %42 = sub nsw i32 %41, 1, !dbg !687
  %43 = load %struct.TString*** %p, align 4, !dbg !687
  %44 = getelementptr inbounds %struct.TString** %43, i32 %42, !dbg !687
  %45 = load %struct.TString** %44, align 4, !dbg !687
  %46 = load i32* %j, align 4, !dbg !687
  %47 = load %struct.TString*** %p, align 4, !dbg !687
  %48 = getelementptr inbounds %struct.TString** %47, i32 %46, !dbg !687
  store %struct.TString* %45, %struct.TString** %48, align 4, !dbg !687
  br label %49, !dbg !687

; <label>:49                                      ; preds = %40
  %50 = load i32* %j, align 4, !dbg !688
  %51 = add nsw i32 %50, -1, !dbg !688
  store i32 %51, i32* %j, align 4, !dbg !688
  br label %37, !dbg !688

; <label>:52                                      ; preds = %37
  %53 = load %struct.lua_State** %2, align 4, !dbg !689
  %54 = load i8** %3, align 4, !dbg !689
  %55 = load i8** %3, align 4, !dbg !690
  %56 = call i32 @strlen(i8* %55) #6, !dbg !690
  %57 = call %struct.TString* @luaS_newlstr(%struct.lua_State* %53, i8* %54, i32 %56), !dbg !689
  %58 = load %struct.TString*** %p, align 4, !dbg !689
  %59 = getelementptr inbounds %struct.TString** %58, i32 0, !dbg !689
  store %struct.TString* %57, %struct.TString** %59, align 4, !dbg !689
  %60 = load %struct.TString*** %p, align 4, !dbg !691
  %61 = getelementptr inbounds %struct.TString** %60, i32 0, !dbg !691
  %62 = load %struct.TString** %61, align 4, !dbg !691
  store %struct.TString* %62, %struct.TString** %1, !dbg !691
  br label %63, !dbg !691

; <label>:63                                      ; preds = %52, %27
  %64 = load %struct.TString** %1, !dbg !692
  ret %struct.TString* %64, !dbg !692
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

; Function Attrs: nounwind readonly
declare i32 @strlen(i8*) #2

; Function Attrs: nounwind
define hidden %struct.Udata* @luaS_newudata(%struct.lua_State* %L, i32 %s) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca i32, align 4
  %u = alloca %struct.Udata*, align 4
  %o = alloca %struct.GCObject*, align 4
  %io = alloca %struct.lua_TValue*, align 4
  %iu = alloca %struct.Udata*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !693), !dbg !694
  store i32 %s, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !695), !dbg !696
  call void @llvm.dbg.declare(metadata !{%struct.Udata** %u}, metadata !697), !dbg !698
  call void @llvm.dbg.declare(metadata !{%struct.GCObject** %o}, metadata !699), !dbg !700
  %3 = load i32* %2, align 4, !dbg !701
  %4 = icmp ugt i32 %3, -25, !dbg !701
  br i1 %4, label %5, label %7, !dbg !701

; <label>:5                                       ; preds = %0
  %6 = load %struct.lua_State** %1, align 4, !dbg !703
  call void @luaM_toobig(%struct.lua_State* %6) #7, !dbg !703
  unreachable, !dbg !703

; <label>:7                                       ; preds = %0
  %8 = load %struct.lua_State** %1, align 4, !dbg !704
  %9 = load i32* %2, align 4, !dbg !704
  %10 = add i32 24, %9, !dbg !704
  %11 = call %struct.GCObject* @luaC_newobj(%struct.lua_State* %8, i32 7, i32 %10), !dbg !704
  store %struct.GCObject* %11, %struct.GCObject** %o, align 4, !dbg !704
  %12 = load %struct.GCObject** %o, align 4, !dbg !705
  %13 = bitcast %struct.GCObject* %12 to %union.GCUnion*, !dbg !705
  %14 = bitcast %union.GCUnion* %13 to %struct.Udata*, !dbg !705
  store %struct.Udata* %14, %struct.Udata** %u, align 4, !dbg !705
  %15 = load i32* %2, align 4, !dbg !706
  %16 = load %struct.Udata** %u, align 4, !dbg !706
  %17 = getelementptr inbounds %struct.Udata* %16, i32 0, i32 5, !dbg !706
  store i32 %15, i32* %17, align 4, !dbg !706
  %18 = load %struct.Udata** %u, align 4, !dbg !707
  %19 = getelementptr inbounds %struct.Udata* %18, i32 0, i32 4, !dbg !707
  store %struct.Table* null, %struct.Table** %19, align 4, !dbg !707
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %io}, metadata !708), !dbg !712
  store %struct.lua_TValue* @luaO_nilobject_, %struct.lua_TValue** %io, align 4, !dbg !712
  call void @llvm.dbg.declare(metadata !{%struct.Udata** %iu}, metadata !713), !dbg !712
  %20 = load %struct.Udata** %u, align 4, !dbg !712
  store %struct.Udata* %20, %struct.Udata** %iu, align 4, !dbg !712
  %21 = load %struct.Udata** %iu, align 4, !dbg !712
  %22 = getelementptr inbounds %struct.Udata* %21, i32 0, i32 6, !dbg !712
  %23 = load %struct.lua_TValue** %io, align 4, !dbg !712
  %24 = getelementptr inbounds %struct.lua_TValue* %23, i32 0, i32 0, !dbg !712
  %25 = bitcast %union.Value* %22 to i8*, !dbg !712
  %26 = bitcast %union.Value* %24 to i8*, !dbg !712
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %25, i8* %26, i32 8, i32 8, i1 false), !dbg !712
  %27 = load %struct.lua_TValue** %io, align 4, !dbg !712
  %28 = getelementptr inbounds %struct.lua_TValue* %27, i32 0, i32 1, !dbg !712
  %29 = load i32* %28, align 4, !dbg !712
  %30 = trunc i32 %29 to i8, !dbg !712
  %31 = load %struct.Udata** %iu, align 4, !dbg !712
  %32 = getelementptr inbounds %struct.Udata* %31, i32 0, i32 3, !dbg !712
  store i8 %30, i8* %32, align 1, !dbg !712
  %33 = load %struct.Udata** %u, align 4, !dbg !714
  ret %struct.Udata* %33, !dbg !714
}

declare hidden %struct.GCObject* @luaC_newobj(%struct.lua_State*, i32, i32) #4

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly }
attributes #7 = { noreturn }

!llvm.dbg.cu = !{!0}
!xidane.fname = !{!313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352}
!xidane.function_declaration_type = !{!313, !353, !315, !354, !317, !355, !319, !356, !321, !357, !323, !358, !325, !359, !327, !360, !329, !358, !331, !361, !333, !362, !335, !363, !337, !364, !339, !365, !341, !361, !343, !366, !345, !367, !347, !368, !349, !369, !351, !370}
!xidane.function_declaration_filename = !{!313, !371, !315, !372, !317, !371, !319, !371, !321, !371, !323, !373, !325, !373, !327, !371, !329, !371, !331, !371, !333, !374, !335, !371, !337, !375, !339, !371, !341, !375, !343, !371, !345, !372, !347, !372, !349, !371, !351, !374}
!xidane.ExternC = !{!313, !315, !317, !319, !321, !323, !325, !327, !329, !331, !333, !335, !339, !343, !345, !347, !349, !351}
!llvm.module.flags = !{!376, !377, !378, !379}
!llvm.ident = !{!380}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.0 (tags/RELEASE_350/final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src\lstring.c] [DW_LANG_C99]
!1 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src\5Clstring.c", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!2 = metadata !{}
!3 = metadata !{metadata !4, metadata !40, metadata !46, metadata !49, metadata !277, metadata !280, metadata !283, metadata !286, metadata !289, metadata !292, metadata !295, metadata !309, metadata !310}
!4 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"luaS_eqlngstr", metadata !"luaS_eqlngstr", metadata !"", i32 40, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.TString*, %struct.TString*)* @luaS_eqlngstr, null, null, metadata !2, i32 40} ; [ DW_TAG_subprogram ] [line 40] [def] [luaS_eqlngstr]
!5 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lstring.c", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!6 = metadata !{i32 786473, metadata !5}          ; [ DW_TAG_file_type ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstring.c]
!7 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!8 = metadata !{metadata !9, metadata !10, metadata !10}
!9 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!10 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !11} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from TString]
!11 = metadata !{i32 786454, metadata !12, null, metadata !"TString", i32 312, i64 0, i64 0, i64 0, i32 0, metadata !13} ; [ DW_TAG_typedef ] [TString] [line 312, size 0, align 0, offset 0] [from TString]
!12 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lobject.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!13 = metadata !{i32 786451, metadata !12, null, metadata !"TString", i32 303, i64 128, i64 32, i32 0, i32 0, null, metadata !14, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [TString] [line 303, size 128, align 32, offset 0] [def] [from ]
!14 = metadata !{metadata !15, metadata !26, metadata !27, metadata !28, metadata !29, metadata !30, metadata !32}
!15 = metadata !{i32 786445, metadata !12, metadata !13, metadata !"next", i32 304, i64 32, i64 32, i64 0, i32 0, metadata !16} ; [ DW_TAG_member ] [next] [line 304, size 32, align 32, offset 0] [from ]
!16 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !17} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from GCObject]
!17 = metadata !{i32 786454, metadata !12, null, metadata !"GCObject", i32 72, i64 0, i64 0, i64 0, i32 0, metadata !18} ; [ DW_TAG_typedef ] [GCObject] [line 72, size 0, align 0, offset 0] [from GCObject]
!18 = metadata !{i32 786451, metadata !12, null, metadata !"GCObject", i32 85, i64 64, i64 32, i32 0, i32 0, null, metadata !19, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [GCObject] [line 85, size 64, align 32, offset 0] [def] [from ]
!19 = metadata !{metadata !20, metadata !21, metadata !25}
!20 = metadata !{i32 786445, metadata !12, metadata !18, metadata !"next", i32 86, i64 32, i64 32, i64 0, i32 0, metadata !16} ; [ DW_TAG_member ] [next] [line 86, size 32, align 32, offset 0] [from ]
!21 = metadata !{i32 786445, metadata !12, metadata !18, metadata !"tt", i32 86, i64 8, i64 8, i64 32, i32 0, metadata !22} ; [ DW_TAG_member ] [tt] [line 86, size 8, align 8, offset 32] [from lu_byte]
!22 = metadata !{i32 786454, metadata !23, null, metadata !"lu_byte", i32 35, i64 0, i64 0, i64 0, i32 0, metadata !24} ; [ DW_TAG_typedef ] [lu_byte] [line 35, size 0, align 0, offset 0] [from unsigned char]
!23 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/llimits.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!24 = metadata !{i32 786468, null, null, metadata !"unsigned char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [unsigned char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!25 = metadata !{i32 786445, metadata !12, metadata !18, metadata !"marked", i32 86, i64 8, i64 8, i64 40, i32 0, metadata !22} ; [ DW_TAG_member ] [marked] [line 86, size 8, align 8, offset 40] [from lu_byte]
!26 = metadata !{i32 786445, metadata !12, metadata !13, metadata !"tt", i32 304, i64 8, i64 8, i64 32, i32 0, metadata !22} ; [ DW_TAG_member ] [tt] [line 304, size 8, align 8, offset 32] [from lu_byte]
!27 = metadata !{i32 786445, metadata !12, metadata !13, metadata !"marked", i32 304, i64 8, i64 8, i64 40, i32 0, metadata !22} ; [ DW_TAG_member ] [marked] [line 304, size 8, align 8, offset 40] [from lu_byte]
!28 = metadata !{i32 786445, metadata !12, metadata !13, metadata !"extra", i32 305, i64 8, i64 8, i64 48, i32 0, metadata !22} ; [ DW_TAG_member ] [extra] [line 305, size 8, align 8, offset 48] [from lu_byte]
!29 = metadata !{i32 786445, metadata !12, metadata !13, metadata !"shrlen", i32 306, i64 8, i64 8, i64 56, i32 0, metadata !22} ; [ DW_TAG_member ] [shrlen] [line 306, size 8, align 8, offset 56] [from lu_byte]
!30 = metadata !{i32 786445, metadata !12, metadata !13, metadata !"hash", i32 307, i64 32, i64 32, i64 64, i32 0, metadata !31} ; [ DW_TAG_member ] [hash] [line 307, size 32, align 32, offset 64] [from unsigned int]
!31 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!32 = metadata !{i32 786445, metadata !12, metadata !13, metadata !"u", i32 311, i64 32, i64 32, i64 96, i32 0, metadata !33} ; [ DW_TAG_member ] [u] [line 311, size 32, align 32, offset 96] [from ]
!33 = metadata !{i32 786455, metadata !12, metadata !13, metadata !"", i32 308, i64 32, i64 32, i64 0, i32 0, null, metadata !34, i32 0, null, null, null} ; [ DW_TAG_union_type ] [line 308, size 32, align 32, offset 0] [def] [from ]
!34 = metadata !{metadata !35, metadata !38}
!35 = metadata !{i32 786445, metadata !12, metadata !33, metadata !"lnglen", i32 309, i64 32, i64 32, i64 0, i32 0, metadata !36} ; [ DW_TAG_member ] [lnglen] [line 309, size 32, align 32, offset 0] [from size_t]
!36 = metadata !{i32 786454, metadata !37, null, metadata !"size_t", i32 216, i64 0, i64 0, i64 0, i32 0, metadata !31} ; [ DW_TAG_typedef ] [size_t] [line 216, size 0, align 0, offset 0] [from unsigned int]
!37 = metadata !{metadata !"D:/Xilinx/SDx/2016.3/SDK/gnu/aarch32/nt/gcc-arm-linux-gnueabi/lib/gcc/arm-linux-gnueabihf/5.2.1/include\5Cstddef.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!38 = metadata !{i32 786445, metadata !12, metadata !33, metadata !"hnext", i32 310, i64 32, i64 32, i64 0, i32 0, metadata !39} ; [ DW_TAG_member ] [hnext] [line 310, size 32, align 32, offset 0] [from ]
!39 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !13} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from TString]
!40 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"luaS_hash", metadata !"luaS_hash", metadata !"", i32 49, metadata !41, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i8*, i32, i32)* @luaS_hash, null, null, metadata !2, i32 49} ; [ DW_TAG_subprogram ] [line 49] [def] [luaS_hash]
!41 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !42, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!42 = metadata !{metadata !31, metadata !43, metadata !36, metadata !31}
!43 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !44} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!44 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !45} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!45 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!46 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"luaS_hashlongstr", metadata !"luaS_hashlongstr", metadata !"", i32 58, metadata !47, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.TString*)* @luaS_hashlongstr, null, null, metadata !2, i32 58} ; [ DW_TAG_subprogram ] [line 58] [def] [luaS_hashlongstr]
!47 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !48, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!48 = metadata !{metadata !31, metadata !10}
!49 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"luaS_resize", metadata !"luaS_resize", metadata !"", i32 71, metadata !50, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.lua_State*, i32)* @luaS_resize, null, null, metadata !2, i32 71} ; [ DW_TAG_subprogram ] [line 71] [def] [luaS_resize]
!50 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !51, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!51 = metadata !{null, metadata !52, metadata !9}
!52 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !53} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from lua_State]
!53 = metadata !{i32 786454, metadata !54, null, metadata !"lua_State", i32 56, i64 0, i64 0, i64 0, i32 0, metadata !55} ; [ DW_TAG_typedef ] [lua_State] [line 56, size 0, align 0, offset 0] [from lua_State]
!54 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lua.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!55 = metadata !{i32 786451, metadata !56, null, metadata !"lua_State", i32 159, i64 960, i64 32, i32 0, i32 0, null, metadata !57, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [lua_State] [line 159, size 960, align 32, offset 0] [def] [from ]
!56 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lstate.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!57 = metadata !{metadata !58, metadata !59, metadata !60, metadata !61, metadata !63, metadata !64, metadata !90, metadata !187, metadata !225, metadata !226, metadata !227, metadata !228, metadata !232, metadata !233, metadata !234, metadata !237, metadata !238, metadata !265, metadata !266, metadata !267, metadata !268, metadata !269, metadata !270, metadata !271, metadata !276}
!58 = metadata !{i32 786445, metadata !56, metadata !55, metadata !"next", i32 160, i64 32, i64 32, i64 0, i32 0, metadata !16} ; [ DW_TAG_member ] [next] [line 160, size 32, align 32, offset 0] [from ]
!59 = metadata !{i32 786445, metadata !56, metadata !55, metadata !"tt", i32 160, i64 8, i64 8, i64 32, i32 0, metadata !22} ; [ DW_TAG_member ] [tt] [line 160, size 8, align 8, offset 32] [from lu_byte]
!60 = metadata !{i32 786445, metadata !56, metadata !55, metadata !"marked", i32 160, i64 8, i64 8, i64 40, i32 0, metadata !22} ; [ DW_TAG_member ] [marked] [line 160, size 8, align 8, offset 40] [from lu_byte]
!61 = metadata !{i32 786445, metadata !56, metadata !55, metadata !"nci", i32 161, i64 16, i64 16, i64 48, i32 0, metadata !62} ; [ DW_TAG_member ] [nci] [line 161, size 16, align 16, offset 48] [from unsigned short]
!62 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!63 = metadata !{i32 786445, metadata !56, metadata !55, metadata !"status", i32 162, i64 8, i64 8, i64 64, i32 0, metadata !22} ; [ DW_TAG_member ] [status] [line 162, size 8, align 8, offset 64] [from lu_byte]
!64 = metadata !{i32 786445, metadata !56, metadata !55, metadata !"top", i32 163, i64 32, i64 32, i64 96, i32 0, metadata !65} ; [ DW_TAG_member ] [top] [line 163, size 32, align 32, offset 96] [from StkId]
!65 = metadata !{i32 786454, metadata !12, null, metadata !"StkId", i32 294, i64 0, i64 0, i64 0, i32 0, metadata !66} ; [ DW_TAG_typedef ] [StkId] [line 294, size 0, align 0, offset 0] [from ]
!66 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !67} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from TValue]
!67 = metadata !{i32 786454, metadata !12, null, metadata !"TValue", i32 115, i64 0, i64 0, i64 0, i32 0, metadata !68} ; [ DW_TAG_typedef ] [TValue] [line 115, size 0, align 0, offset 0] [from lua_TValue]
!68 = metadata !{i32 786451, metadata !12, null, metadata !"lua_TValue", i32 113, i64 128, i64 64, i32 0, i32 0, null, metadata !69, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [lua_TValue] [line 113, size 128, align 64, offset 0] [def] [from ]
!69 = metadata !{metadata !70, metadata !89}
!70 = metadata !{i32 786445, metadata !12, metadata !68, metadata !"value_", i32 114, i64 64, i64 64, i64 0, i32 0, metadata !71} ; [ DW_TAG_member ] [value_] [line 114, size 64, align 64, offset 0] [from Value]
!71 = metadata !{i32 786454, metadata !12, null, metadata !"Value", i32 107, i64 0, i64 0, i64 0, i32 0, metadata !72} ; [ DW_TAG_typedef ] [Value] [line 107, size 0, align 0, offset 0] [from Value]
!72 = metadata !{i32 786455, metadata !12, null, metadata !"Value", i32 100, i64 64, i64 64, i64 0, i32 0, null, metadata !73, i32 0, null, null, null} ; [ DW_TAG_union_type ] [Value] [line 100, size 64, align 64, offset 0] [def] [from ]
!73 = metadata !{metadata !74, metadata !75, metadata !77, metadata !78, metadata !83, metadata !86}
!74 = metadata !{i32 786445, metadata !12, metadata !72, metadata !"gc", i32 101, i64 32, i64 32, i64 0, i32 0, metadata !16} ; [ DW_TAG_member ] [gc] [line 101, size 32, align 32, offset 0] [from ]
!75 = metadata !{i32 786445, metadata !12, metadata !72, metadata !"p", i32 102, i64 32, i64 32, i64 0, i32 0, metadata !76} ; [ DW_TAG_member ] [p] [line 102, size 32, align 32, offset 0] [from ]
!76 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!77 = metadata !{i32 786445, metadata !12, metadata !72, metadata !"b", i32 103, i64 32, i64 32, i64 0, i32 0, metadata !9} ; [ DW_TAG_member ] [b] [line 103, size 32, align 32, offset 0] [from int]
!78 = metadata !{i32 786445, metadata !12, metadata !72, metadata !"f", i32 104, i64 32, i64 32, i64 0, i32 0, metadata !79} ; [ DW_TAG_member ] [f] [line 104, size 32, align 32, offset 0] [from lua_CFunction]
!79 = metadata !{i32 786454, metadata !54, null, metadata !"lua_CFunction", i32 105, i64 0, i64 0, i64 0, i32 0, metadata !80} ; [ DW_TAG_typedef ] [lua_CFunction] [line 105, size 0, align 0, offset 0] [from ]
!80 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !81} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!81 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !82, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!82 = metadata !{metadata !9, metadata !52}
!83 = metadata !{i32 786445, metadata !12, metadata !72, metadata !"i", i32 105, i64 64, i64 64, i64 0, i32 0, metadata !84} ; [ DW_TAG_member ] [i] [line 105, size 64, align 64, offset 0] [from lua_Integer]
!84 = metadata !{i32 786454, metadata !54, null, metadata !"lua_Integer", i32 93, i64 0, i64 0, i64 0, i32 0, metadata !85} ; [ DW_TAG_typedef ] [lua_Integer] [line 93, size 0, align 0, offset 0] [from long long int]
!85 = metadata !{i32 786468, null, null, metadata !"long long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!86 = metadata !{i32 786445, metadata !12, metadata !72, metadata !"n", i32 106, i64 64, i64 64, i64 0, i32 0, metadata !87} ; [ DW_TAG_member ] [n] [line 106, size 64, align 64, offset 0] [from lua_Number]
!87 = metadata !{i32 786454, metadata !54, null, metadata !"lua_Number", i32 89, i64 0, i64 0, i64 0, i32 0, metadata !88} ; [ DW_TAG_typedef ] [lua_Number] [line 89, size 0, align 0, offset 0] [from double]
!88 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!89 = metadata !{i32 786445, metadata !12, metadata !68, metadata !"tt_", i32 114, i64 32, i64 32, i64 64, i32 0, metadata !9} ; [ DW_TAG_member ] [tt_] [line 114, size 32, align 32, offset 64] [from int]
!90 = metadata !{i32 786445, metadata !56, metadata !55, metadata !"l_G", i32 164, i64 32, i64 32, i64 128, i32 0, metadata !91} ; [ DW_TAG_member ] [l_G] [line 164, size 32, align 32, offset 128] [from ]
!91 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !92} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from global_State]
!92 = metadata !{i32 786454, metadata !56, null, metadata !"global_State", i32 153, i64 0, i64 0, i64 0, i32 0, metadata !93} ; [ DW_TAG_typedef ] [global_State] [line 153, size 0, align 0, offset 0] [from global_State]
!93 = metadata !{i32 786451, metadata !56, null, metadata !"global_State", i32 118, i64 5568, i64 64, i32 0, i32 0, null, metadata !94, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [global_State] [line 118, size 5568, align 64, offset 0] [def] [from ]
!94 = metadata !{metadata !95, metadata !100, metadata !101, metadata !104, metadata !105, metadata !107, metadata !108, metadata !116, metadata !117, metadata !118, metadata !119, metadata !120, metadata !121, metadata !122, metadata !123, metadata !125, metadata !126, metadata !127, metadata !128, metadata !129, metadata !130, metadata !131, metadata !132, metadata !133, metadata !135, metadata !136, metadata !137, metadata !138, metadata !139, metadata !140, metadata !143, metadata !144, metadata !148, metadata !182}
!95 = metadata !{i32 786445, metadata !56, metadata !93, metadata !"frealloc", i32 119, i64 32, i64 32, i64 0, i32 0, metadata !96} ; [ DW_TAG_member ] [frealloc] [line 119, size 32, align 32, offset 0] [from lua_Alloc]
!96 = metadata !{i32 786454, metadata !54, null, metadata !"lua_Alloc", i32 124, i64 0, i64 0, i64 0, i32 0, metadata !97} ; [ DW_TAG_typedef ] [lua_Alloc] [line 124, size 0, align 0, offset 0] [from ]
!97 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !98} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!98 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !99, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!99 = metadata !{metadata !76, metadata !76, metadata !76, metadata !36, metadata !36}
!100 = metadata !{i32 786445, metadata !56, metadata !93, metadata !"ud", i32 120, i64 32, i64 32, i64 32, i32 0, metadata !76} ; [ DW_TAG_member ] [ud] [line 120, size 32, align 32, offset 32] [from ]
!101 = metadata !{i32 786445, metadata !56, metadata !93, metadata !"totalbytes", i32 121, i64 32, i64 32, i64 64, i32 0, metadata !102} ; [ DW_TAG_member ] [totalbytes] [line 121, size 32, align 32, offset 64] [from l_mem]
!102 = metadata !{i32 786454, metadata !23, null, metadata !"l_mem", i32 27, i64 0, i64 0, i64 0, i32 0, metadata !103} ; [ DW_TAG_typedef ] [l_mem] [line 27, size 0, align 0, offset 0] [from ptrdiff_t]
!103 = metadata !{i32 786454, metadata !37, null, metadata !"ptrdiff_t", i32 149, i64 0, i64 0, i64 0, i32 0, metadata !9} ; [ DW_TAG_typedef ] [ptrdiff_t] [line 149, size 0, align 0, offset 0] [from int]
!104 = metadata !{i32 786445, metadata !56, metadata !93, metadata !"GCdebt", i32 122, i64 32, i64 32, i64 96, i32 0, metadata !102} ; [ DW_TAG_member ] [GCdebt] [line 122, size 32, align 32, offset 96] [from l_mem]
!105 = metadata !{i32 786445, metadata !56, metadata !93, metadata !"GCmemtrav", i32 123, i64 32, i64 32, i64 128, i32 0, metadata !106} ; [ DW_TAG_member ] [GCmemtrav] [line 123, size 32, align 32, offset 128] [from lu_mem]
!106 = metadata !{i32 786454, metadata !23, null, metadata !"lu_mem", i32 26, i64 0, i64 0, i64 0, i32 0, metadata !36} ; [ DW_TAG_typedef ] [lu_mem] [line 26, size 0, align 0, offset 0] [from size_t]
!107 = metadata !{i32 786445, metadata !56, metadata !93, metadata !"GCestimate", i32 124, i64 32, i64 32, i64 160, i32 0, metadata !106} ; [ DW_TAG_member ] [GCestimate] [line 124, size 32, align 32, offset 160] [from lu_mem]
!108 = metadata !{i32 786445, metadata !56, metadata !93, metadata !"strt", i32 125, i64 96, i64 32, i64 192, i32 0, metadata !109} ; [ DW_TAG_member ] [strt] [line 125, size 96, align 32, offset 192] [from stringtable]
!109 = metadata !{i32 786454, metadata !56, null, metadata !"stringtable", i32 62, i64 0, i64 0, i64 0, i32 0, metadata !110} ; [ DW_TAG_typedef ] [stringtable] [line 62, size 0, align 0, offset 0] [from stringtable]
!110 = metadata !{i32 786451, metadata !56, null, metadata !"stringtable", i32 58, i64 96, i64 32, i32 0, i32 0, null, metadata !111, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [stringtable] [line 58, size 96, align 32, offset 0] [def] [from ]
!111 = metadata !{metadata !112, metadata !114, metadata !115}
!112 = metadata !{i32 786445, metadata !56, metadata !110, metadata !"hash", i32 59, i64 32, i64 32, i64 0, i32 0, metadata !113} ; [ DW_TAG_member ] [hash] [line 59, size 32, align 32, offset 0] [from ]
!113 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!114 = metadata !{i32 786445, metadata !56, metadata !110, metadata !"nuse", i32 60, i64 32, i64 32, i64 32, i32 0, metadata !9} ; [ DW_TAG_member ] [nuse] [line 60, size 32, align 32, offset 32] [from int]
!115 = metadata !{i32 786445, metadata !56, metadata !110, metadata !"size", i32 61, i64 32, i64 32, i64 64, i32 0, metadata !9} ; [ DW_TAG_member ] [size] [line 61, size 32, align 32, offset 64] [from int]
!116 = metadata !{i32 786445, metadata !56, metadata !93, metadata !"l_registry", i32 126, i64 128, i64 64, i64 320, i32 0, metadata !67} ; [ DW_TAG_member ] [l_registry] [line 126, size 128, align 64, offset 320] [from TValue]
!117 = metadata !{i32 786445, metadata !56, metadata !93, metadata !"seed", i32 127, i64 32, i64 32, i64 448, i32 0, metadata !31} ; [ DW_TAG_member ] [seed] [line 127, size 32, align 32, offset 448] [from unsigned int]
!118 = metadata !{i32 786445, metadata !56, metadata !93, metadata !"currentwhite", i32 128, i64 8, i64 8, i64 480, i32 0, metadata !22} ; [ DW_TAG_member ] [currentwhite] [line 128, size 8, align 8, offset 480] [from lu_byte]
!119 = metadata !{i32 786445, metadata !56, metadata !93, metadata !"gcstate", i32 129, i64 8, i64 8, i64 488, i32 0, metadata !22} ; [ DW_TAG_member ] [gcstate] [line 129, size 8, align 8, offset 488] [from lu_byte]
!120 = metadata !{i32 786445, metadata !56, metadata !93, metadata !"gckind", i32 130, i64 8, i64 8, i64 496, i32 0, metadata !22} ; [ DW_TAG_member ] [gckind] [line 130, size 8, align 8, offset 496] [from lu_byte]
!121 = metadata !{i32 786445, metadata !56, metadata !93, metadata !"gcrunning", i32 131, i64 8, i64 8, i64 504, i32 0, metadata !22} ; [ DW_TAG_member ] [gcrunning] [line 131, size 8, align 8, offset 504] [from lu_byte]
!122 = metadata !{i32 786445, metadata !56, metadata !93, metadata !"allgc", i32 132, i64 32, i64 32, i64 512, i32 0, metadata !16} ; [ DW_TAG_member ] [allgc] [line 132, size 32, align 32, offset 512] [from ]
!123 = metadata !{i32 786445, metadata !56, metadata !93, metadata !"sweepgc", i32 133, i64 32, i64 32, i64 544, i32 0, metadata !124} ; [ DW_TAG_member ] [sweepgc] [line 133, size 32, align 32, offset 544] [from ]
!124 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !16} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!125 = metadata !{i32 786445, metadata !56, metadata !93, metadata !"finobj", i32 134, i64 32, i64 32, i64 576, i32 0, metadata !16} ; [ DW_TAG_member ] [finobj] [line 134, size 32, align 32, offset 576] [from ]
!126 = metadata !{i32 786445, metadata !56, metadata !93, metadata !"gray", i32 135, i64 32, i64 32, i64 608, i32 0, metadata !16} ; [ DW_TAG_member ] [gray] [line 135, size 32, align 32, offset 608] [from ]
!127 = metadata !{i32 786445, metadata !56, metadata !93, metadata !"grayagain", i32 136, i64 32, i64 32, i64 640, i32 0, metadata !16} ; [ DW_TAG_member ] [grayagain] [line 136, size 32, align 32, offset 640] [from ]
!128 = metadata !{i32 786445, metadata !56, metadata !93, metadata !"weak", i32 137, i64 32, i64 32, i64 672, i32 0, metadata !16} ; [ DW_TAG_member ] [weak] [line 137, size 32, align 32, offset 672] [from ]
!129 = metadata !{i32 786445, metadata !56, metadata !93, metadata !"ephemeron", i32 138, i64 32, i64 32, i64 704, i32 0, metadata !16} ; [ DW_TAG_member ] [ephemeron] [line 138, size 32, align 32, offset 704] [from ]
!130 = metadata !{i32 786445, metadata !56, metadata !93, metadata !"allweak", i32 139, i64 32, i64 32, i64 736, i32 0, metadata !16} ; [ DW_TAG_member ] [allweak] [line 139, size 32, align 32, offset 736] [from ]
!131 = metadata !{i32 786445, metadata !56, metadata !93, metadata !"tobefnz", i32 140, i64 32, i64 32, i64 768, i32 0, metadata !16} ; [ DW_TAG_member ] [tobefnz] [line 140, size 32, align 32, offset 768] [from ]
!132 = metadata !{i32 786445, metadata !56, metadata !93, metadata !"fixedgc", i32 141, i64 32, i64 32, i64 800, i32 0, metadata !16} ; [ DW_TAG_member ] [fixedgc] [line 141, size 32, align 32, offset 800] [from ]
!133 = metadata !{i32 786445, metadata !56, metadata !93, metadata !"twups", i32 142, i64 32, i64 32, i64 832, i32 0, metadata !134} ; [ DW_TAG_member ] [twups] [line 142, size 32, align 32, offset 832] [from ]
!134 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !55} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from lua_State]
!135 = metadata !{i32 786445, metadata !56, metadata !93, metadata !"gcfinnum", i32 143, i64 32, i64 32, i64 864, i32 0, metadata !31} ; [ DW_TAG_member ] [gcfinnum] [line 143, size 32, align 32, offset 864] [from unsigned int]
!136 = metadata !{i32 786445, metadata !56, metadata !93, metadata !"gcpause", i32 144, i64 32, i64 32, i64 896, i32 0, metadata !9} ; [ DW_TAG_member ] [gcpause] [line 144, size 32, align 32, offset 896] [from int]
!137 = metadata !{i32 786445, metadata !56, metadata !93, metadata !"gcstepmul", i32 145, i64 32, i64 32, i64 928, i32 0, metadata !9} ; [ DW_TAG_member ] [gcstepmul] [line 145, size 32, align 32, offset 928] [from int]
!138 = metadata !{i32 786445, metadata !56, metadata !93, metadata !"panic", i32 146, i64 32, i64 32, i64 960, i32 0, metadata !79} ; [ DW_TAG_member ] [panic] [line 146, size 32, align 32, offset 960] [from lua_CFunction]
!139 = metadata !{i32 786445, metadata !56, metadata !93, metadata !"mainthread", i32 147, i64 32, i64 32, i64 992, i32 0, metadata !134} ; [ DW_TAG_member ] [mainthread] [line 147, size 32, align 32, offset 992] [from ]
!140 = metadata !{i32 786445, metadata !56, metadata !93, metadata !"version", i32 148, i64 32, i64 32, i64 1024, i32 0, metadata !141} ; [ DW_TAG_member ] [version] [line 148, size 32, align 32, offset 1024] [from ]
!141 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !142} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!142 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !87} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from lua_Number]
!143 = metadata !{i32 786445, metadata !56, metadata !93, metadata !"memerrmsg", i32 149, i64 32, i64 32, i64 1056, i32 0, metadata !10} ; [ DW_TAG_member ] [memerrmsg] [line 149, size 32, align 32, offset 1056] [from ]
!144 = metadata !{i32 786445, metadata !56, metadata !93, metadata !"tmname", i32 150, i64 768, i64 32, i64 1088, i32 0, metadata !145} ; [ DW_TAG_member ] [tmname] [line 150, size 768, align 32, offset 1088] [from ]
!145 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 768, i64 32, i32 0, i32 0, metadata !10, metadata !146, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 768, align 32, offset 0] [from ]
!146 = metadata !{metadata !147}
!147 = metadata !{i32 786465, i64 0, i64 24}      ; [ DW_TAG_subrange_type ] [0, 23]
!148 = metadata !{i32 786445, metadata !56, metadata !93, metadata !"mt", i32 151, i64 288, i64 32, i64 1856, i32 0, metadata !149} ; [ DW_TAG_member ] [mt] [line 151, size 288, align 32, offset 1856] [from ]
!149 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 288, i64 32, i32 0, i32 0, metadata !150, metadata !180, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 288, align 32, offset 0] [from ]
!150 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !151} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from Table]
!151 = metadata !{i32 786451, metadata !12, null, metadata !"Table", i32 497, i64 256, i64 32, i32 0, i32 0, null, metadata !152, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [Table] [line 497, size 256, align 32, offset 0] [def] [from ]
!152 = metadata !{metadata !153, metadata !154, metadata !155, metadata !156, metadata !157, metadata !158, metadata !159, metadata !160, metadata !177, metadata !178, metadata !179}
!153 = metadata !{i32 786445, metadata !12, metadata !151, metadata !"next", i32 498, i64 32, i64 32, i64 0, i32 0, metadata !16} ; [ DW_TAG_member ] [next] [line 498, size 32, align 32, offset 0] [from ]
!154 = metadata !{i32 786445, metadata !12, metadata !151, metadata !"tt", i32 498, i64 8, i64 8, i64 32, i32 0, metadata !22} ; [ DW_TAG_member ] [tt] [line 498, size 8, align 8, offset 32] [from lu_byte]
!155 = metadata !{i32 786445, metadata !12, metadata !151, metadata !"marked", i32 498, i64 8, i64 8, i64 40, i32 0, metadata !22} ; [ DW_TAG_member ] [marked] [line 498, size 8, align 8, offset 40] [from lu_byte]
!156 = metadata !{i32 786445, metadata !12, metadata !151, metadata !"flags", i32 499, i64 8, i64 8, i64 48, i32 0, metadata !22} ; [ DW_TAG_member ] [flags] [line 499, size 8, align 8, offset 48] [from lu_byte]
!157 = metadata !{i32 786445, metadata !12, metadata !151, metadata !"lsizenode", i32 500, i64 8, i64 8, i64 56, i32 0, metadata !22} ; [ DW_TAG_member ] [lsizenode] [line 500, size 8, align 8, offset 56] [from lu_byte]
!158 = metadata !{i32 786445, metadata !12, metadata !151, metadata !"sizearray", i32 501, i64 32, i64 32, i64 64, i32 0, metadata !31} ; [ DW_TAG_member ] [sizearray] [line 501, size 32, align 32, offset 64] [from unsigned int]
!159 = metadata !{i32 786445, metadata !12, metadata !151, metadata !"array", i32 502, i64 32, i64 32, i64 96, i32 0, metadata !66} ; [ DW_TAG_member ] [array] [line 502, size 32, align 32, offset 96] [from ]
!160 = metadata !{i32 786445, metadata !12, metadata !151, metadata !"node", i32 503, i64 32, i64 32, i64 128, i32 0, metadata !161} ; [ DW_TAG_member ] [node] [line 503, size 32, align 32, offset 128] [from ]
!161 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !162} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from Node]
!162 = metadata !{i32 786454, metadata !12, null, metadata !"Node", i32 494, i64 0, i64 0, i64 0, i32 0, metadata !163} ; [ DW_TAG_typedef ] [Node] [line 494, size 0, align 0, offset 0] [from Node]
!163 = metadata !{i32 786451, metadata !12, null, metadata !"Node", i32 491, i64 256, i64 64, i32 0, i32 0, null, metadata !164, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [Node] [line 491, size 256, align 64, offset 0] [def] [from ]
!164 = metadata !{metadata !165, metadata !166}
!165 = metadata !{i32 786445, metadata !12, metadata !163, metadata !"i_val", i32 492, i64 128, i64 64, i64 0, i32 0, metadata !67} ; [ DW_TAG_member ] [i_val] [line 492, size 128, align 64, offset 0] [from TValue]
!166 = metadata !{i32 786445, metadata !12, metadata !163, metadata !"i_key", i32 493, i64 128, i64 64, i64 128, i32 0, metadata !167} ; [ DW_TAG_member ] [i_key] [line 493, size 128, align 64, offset 128] [from TKey]
!167 = metadata !{i32 786454, metadata !12, null, metadata !"TKey", i32 481, i64 0, i64 0, i64 0, i32 0, metadata !168} ; [ DW_TAG_typedef ] [TKey] [line 481, size 0, align 0, offset 0] [from TKey]
!168 = metadata !{i32 786455, metadata !12, null, metadata !"TKey", i32 475, i64 128, i64 64, i64 0, i32 0, null, metadata !169, i32 0, null, null, null} ; [ DW_TAG_union_type ] [TKey] [line 475, size 128, align 64, offset 0] [def] [from ]
!169 = metadata !{metadata !170, metadata !176}
!170 = metadata !{i32 786445, metadata !12, metadata !168, metadata !"nk", i32 479, i64 128, i64 64, i64 0, i32 0, metadata !171} ; [ DW_TAG_member ] [nk] [line 479, size 128, align 64, offset 0] [from ]
!171 = metadata !{i32 786451, metadata !12, metadata !168, metadata !"", i32 476, i64 128, i64 64, i32 0, i32 0, null, metadata !172, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 476, size 128, align 64, offset 0] [def] [from ]
!172 = metadata !{metadata !173, metadata !174, metadata !175}
!173 = metadata !{i32 786445, metadata !12, metadata !171, metadata !"value_", i32 477, i64 64, i64 64, i64 0, i32 0, metadata !71} ; [ DW_TAG_member ] [value_] [line 477, size 64, align 64, offset 0] [from Value]
!174 = metadata !{i32 786445, metadata !12, metadata !171, metadata !"tt_", i32 477, i64 32, i64 32, i64 64, i32 0, metadata !9} ; [ DW_TAG_member ] [tt_] [line 477, size 32, align 32, offset 64] [from int]
!175 = metadata !{i32 786445, metadata !12, metadata !171, metadata !"next", i32 478, i64 32, i64 32, i64 96, i32 0, metadata !9} ; [ DW_TAG_member ] [next] [line 478, size 32, align 32, offset 96] [from int]
!176 = metadata !{i32 786445, metadata !12, metadata !168, metadata !"tvk", i32 480, i64 128, i64 64, i64 0, i32 0, metadata !67} ; [ DW_TAG_member ] [tvk] [line 480, size 128, align 64, offset 0] [from TValue]
!177 = metadata !{i32 786445, metadata !12, metadata !151, metadata !"lastfree", i32 504, i64 32, i64 32, i64 160, i32 0, metadata !161} ; [ DW_TAG_member ] [lastfree] [line 504, size 32, align 32, offset 160] [from ]
!178 = metadata !{i32 786445, metadata !12, metadata !151, metadata !"metatable", i32 505, i64 32, i64 32, i64 192, i32 0, metadata !150} ; [ DW_TAG_member ] [metatable] [line 505, size 32, align 32, offset 192] [from ]
!179 = metadata !{i32 786445, metadata !12, metadata !151, metadata !"gclist", i32 506, i64 32, i64 32, i64 224, i32 0, metadata !16} ; [ DW_TAG_member ] [gclist] [line 506, size 32, align 32, offset 224] [from ]
!180 = metadata !{metadata !181}
!181 = metadata !{i32 786465, i64 0, i64 9}       ; [ DW_TAG_subrange_type ] [0, 8]
!182 = metadata !{i32 786445, metadata !56, metadata !93, metadata !"strcache", i32 152, i64 3392, i64 32, i64 2144, i32 0, metadata !183} ; [ DW_TAG_member ] [strcache] [line 152, size 3392, align 32, offset 2144] [from ]
!183 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 3392, i64 32, i32 0, i32 0, metadata !10, metadata !184, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 3392, align 32, offset 0] [from ]
!184 = metadata !{metadata !185, metadata !186}
!185 = metadata !{i32 786465, i64 0, i64 53}      ; [ DW_TAG_subrange_type ] [0, 52]
!186 = metadata !{i32 786465, i64 0, i64 2}       ; [ DW_TAG_subrange_type ] [0, 1]
!187 = metadata !{i32 786445, metadata !56, metadata !55, metadata !"ci", i32 165, i64 32, i64 32, i64 160, i32 0, metadata !188} ; [ DW_TAG_member ] [ci] [line 165, size 32, align 32, offset 160] [from ]
!188 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !189} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from CallInfo]
!189 = metadata !{i32 786454, metadata !56, null, metadata !"CallInfo", i32 92, i64 0, i64 0, i64 0, i32 0, metadata !190} ; [ DW_TAG_typedef ] [CallInfo] [line 92, size 0, align 0, offset 0] [from CallInfo]
!190 = metadata !{i32 786451, metadata !56, null, metadata !"CallInfo", i32 74, i64 288, i64 32, i32 0, i32 0, null, metadata !191, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [CallInfo] [line 74, size 288, align 32, offset 0] [def] [from ]
!191 = metadata !{metadata !192, metadata !193, metadata !194, metadata !196, metadata !197, metadata !221, metadata !222, metadata !224}
!192 = metadata !{i32 786445, metadata !56, metadata !190, metadata !"func", i32 75, i64 32, i64 32, i64 0, i32 0, metadata !65} ; [ DW_TAG_member ] [func] [line 75, size 32, align 32, offset 0] [from StkId]
!193 = metadata !{i32 786445, metadata !56, metadata !190, metadata !"top", i32 76, i64 32, i64 32, i64 32, i32 0, metadata !65} ; [ DW_TAG_member ] [top] [line 76, size 32, align 32, offset 32] [from StkId]
!194 = metadata !{i32 786445, metadata !56, metadata !190, metadata !"previous", i32 77, i64 32, i64 32, i64 64, i32 0, metadata !195} ; [ DW_TAG_member ] [previous] [line 77, size 32, align 32, offset 64] [from ]
!195 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !190} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from CallInfo]
!196 = metadata !{i32 786445, metadata !56, metadata !190, metadata !"next", i32 77, i64 32, i64 32, i64 96, i32 0, metadata !195} ; [ DW_TAG_member ] [next] [line 77, size 32, align 32, offset 96] [from ]
!197 = metadata !{i32 786445, metadata !56, metadata !190, metadata !"u", i32 88, i64 96, i64 32, i64 128, i32 0, metadata !198} ; [ DW_TAG_member ] [u] [line 88, size 96, align 32, offset 128] [from ]
!198 = metadata !{i32 786455, metadata !56, metadata !190, metadata !"", i32 78, i64 96, i64 32, i64 0, i32 0, null, metadata !199, i32 0, null, null, null} ; [ DW_TAG_union_type ] [line 78, size 96, align 32, offset 0] [def] [from ]
!199 = metadata !{metadata !200, metadata !208}
!200 = metadata !{i32 786445, metadata !56, metadata !198, metadata !"l", i32 82, i64 64, i64 32, i64 0, i32 0, metadata !201} ; [ DW_TAG_member ] [l] [line 82, size 64, align 32, offset 0] [from ]
!201 = metadata !{i32 786451, metadata !56, metadata !198, metadata !"", i32 79, i64 64, i64 32, i32 0, i32 0, null, metadata !202, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 79, size 64, align 32, offset 0] [def] [from ]
!202 = metadata !{metadata !203, metadata !204}
!203 = metadata !{i32 786445, metadata !56, metadata !201, metadata !"base", i32 80, i64 32, i64 32, i64 0, i32 0, metadata !65} ; [ DW_TAG_member ] [base] [line 80, size 32, align 32, offset 0] [from StkId]
!204 = metadata !{i32 786445, metadata !56, metadata !201, metadata !"savedpc", i32 81, i64 32, i64 32, i64 32, i32 0, metadata !205} ; [ DW_TAG_member ] [savedpc] [line 81, size 32, align 32, offset 32] [from ]
!205 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !206} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!206 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !207} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from Instruction]
!207 = metadata !{i32 786454, metadata !23, null, metadata !"Instruction", i32 163, i64 0, i64 0, i64 0, i32 0, metadata !31} ; [ DW_TAG_typedef ] [Instruction] [line 163, size 0, align 0, offset 0] [from unsigned int]
!208 = metadata !{i32 786445, metadata !56, metadata !198, metadata !"c", i32 87, i64 96, i64 32, i64 0, i32 0, metadata !209} ; [ DW_TAG_member ] [c] [line 87, size 96, align 32, offset 0] [from ]
!209 = metadata !{i32 786451, metadata !56, metadata !198, metadata !"", i32 83, i64 96, i64 32, i32 0, i32 0, null, metadata !210, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 83, size 96, align 32, offset 0] [def] [from ]
!210 = metadata !{metadata !211, metadata !219, metadata !220}
!211 = metadata !{i32 786445, metadata !56, metadata !209, metadata !"k", i32 84, i64 32, i64 32, i64 0, i32 0, metadata !212} ; [ DW_TAG_member ] [k] [line 84, size 32, align 32, offset 0] [from lua_KFunction]
!212 = metadata !{i32 786454, metadata !54, null, metadata !"lua_KFunction", i32 110, i64 0, i64 0, i64 0, i32 0, metadata !213} ; [ DW_TAG_typedef ] [lua_KFunction] [line 110, size 0, align 0, offset 0] [from ]
!213 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !214} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!214 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !215, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!215 = metadata !{metadata !9, metadata !52, metadata !9, metadata !216}
!216 = metadata !{i32 786454, metadata !54, null, metadata !"lua_KContext", i32 99, i64 0, i64 0, i64 0, i32 0, metadata !217} ; [ DW_TAG_typedef ] [lua_KContext] [line 99, size 0, align 0, offset 0] [from intptr_t]
!217 = metadata !{i32 786454, metadata !218, null, metadata !"intptr_t", i32 125, i64 0, i64 0, i64 0, i32 0, metadata !9} ; [ DW_TAG_typedef ] [intptr_t] [line 125, size 0, align 0, offset 0] [from int]
!218 = metadata !{metadata !"D:/Xilinx/SDx/2016.3/SDK/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include\5Cstdint.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!219 = metadata !{i32 786445, metadata !56, metadata !209, metadata !"old_errfunc", i32 85, i64 32, i64 32, i64 32, i32 0, metadata !103} ; [ DW_TAG_member ] [old_errfunc] [line 85, size 32, align 32, offset 32] [from ptrdiff_t]
!220 = metadata !{i32 786445, metadata !56, metadata !209, metadata !"ctx", i32 86, i64 32, i64 32, i64 64, i32 0, metadata !216} ; [ DW_TAG_member ] [ctx] [line 86, size 32, align 32, offset 64] [from lua_KContext]
!221 = metadata !{i32 786445, metadata !56, metadata !190, metadata !"extra", i32 89, i64 32, i64 32, i64 224, i32 0, metadata !103} ; [ DW_TAG_member ] [extra] [line 89, size 32, align 32, offset 224] [from ptrdiff_t]
!222 = metadata !{i32 786445, metadata !56, metadata !190, metadata !"nresults", i32 90, i64 16, i64 16, i64 256, i32 0, metadata !223} ; [ DW_TAG_member ] [nresults] [line 90, size 16, align 16, offset 256] [from short]
!223 = metadata !{i32 786468, null, null, metadata !"short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [short] [line 0, size 16, align 16, offset 0, enc DW_ATE_signed]
!224 = metadata !{i32 786445, metadata !56, metadata !190, metadata !"callstatus", i32 91, i64 8, i64 8, i64 272, i32 0, metadata !22} ; [ DW_TAG_member ] [callstatus] [line 91, size 8, align 8, offset 272] [from lu_byte]
!225 = metadata !{i32 786445, metadata !56, metadata !55, metadata !"oldpc", i32 166, i64 32, i64 32, i64 192, i32 0, metadata !205} ; [ DW_TAG_member ] [oldpc] [line 166, size 32, align 32, offset 192] [from ]
!226 = metadata !{i32 786445, metadata !56, metadata !55, metadata !"stack_last", i32 167, i64 32, i64 32, i64 224, i32 0, metadata !65} ; [ DW_TAG_member ] [stack_last] [line 167, size 32, align 32, offset 224] [from StkId]
!227 = metadata !{i32 786445, metadata !56, metadata !55, metadata !"stack", i32 168, i64 32, i64 32, i64 256, i32 0, metadata !65} ; [ DW_TAG_member ] [stack] [line 168, size 32, align 32, offset 256] [from StkId]
!228 = metadata !{i32 786445, metadata !56, metadata !55, metadata !"openupval", i32 169, i64 32, i64 32, i64 288, i32 0, metadata !229} ; [ DW_TAG_member ] [openupval] [line 169, size 32, align 32, offset 288] [from ]
!229 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !230} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from UpVal]
!230 = metadata !{i32 786454, metadata !12, null, metadata !"UpVal", i32 436, i64 0, i64 0, i64 0, i32 0, metadata !231} ; [ DW_TAG_typedef ] [UpVal] [line 436, size 0, align 0, offset 0] [from UpVal]
!231 = metadata !{i32 786451, metadata !12, null, metadata !"UpVal", i32 436, i64 0, i64 0, i32 0, i32 4, null, null, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [UpVal] [line 436, size 0, align 0, offset 0] [decl] [from ]
!232 = metadata !{i32 786445, metadata !56, metadata !55, metadata !"gclist", i32 170, i64 32, i64 32, i64 320, i32 0, metadata !16} ; [ DW_TAG_member ] [gclist] [line 170, size 32, align 32, offset 320] [from ]
!233 = metadata !{i32 786445, metadata !56, metadata !55, metadata !"twups", i32 171, i64 32, i64 32, i64 352, i32 0, metadata !134} ; [ DW_TAG_member ] [twups] [line 171, size 32, align 32, offset 352] [from ]
!234 = metadata !{i32 786445, metadata !56, metadata !55, metadata !"errorJmp", i32 172, i64 32, i64 32, i64 384, i32 0, metadata !235} ; [ DW_TAG_member ] [errorJmp] [line 172, size 32, align 32, offset 384] [from ]
!235 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !236} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from lua_longjmp]
!236 = metadata !{i32 786451, metadata !56, null, metadata !"lua_longjmp", i32 33, i64 0, i64 0, i32 0, i32 4, null, null, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [lua_longjmp] [line 33, size 0, align 0, offset 0] [decl] [from ]
!237 = metadata !{i32 786445, metadata !56, metadata !55, metadata !"base_ci", i32 173, i64 288, i64 32, i64 416, i32 0, metadata !189} ; [ DW_TAG_member ] [base_ci] [line 173, size 288, align 32, offset 416] [from CallInfo]
!238 = metadata !{i32 786445, metadata !56, metadata !55, metadata !"hook", i32 174, i64 32, i64 32, i64 704, i32 0, metadata !239} ; [ DW_TAG_member ] [hook] [line 174, size 32, align 32, offset 704] [from ]
!239 = metadata !{i32 786485, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !240} ; [ DW_TAG_volatile_type ] [line 0, size 0, align 0, offset 0] [from lua_Hook]
!240 = metadata !{i32 786454, metadata !54, null, metadata !"lua_Hook", i32 421, i64 0, i64 0, i64 0, i32 0, metadata !241} ; [ DW_TAG_typedef ] [lua_Hook] [line 421, size 0, align 0, offset 0] [from ]
!241 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !242} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!242 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !243, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!243 = metadata !{null, metadata !52, metadata !244}
!244 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !245} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from lua_Debug]
!245 = metadata !{i32 786454, metadata !54, null, metadata !"lua_Debug", i32 417, i64 0, i64 0, i64 0, i32 0, metadata !246} ; [ DW_TAG_typedef ] [lua_Debug] [line 417, size 0, align 0, offset 0] [from lua_Debug]
!246 = metadata !{i32 786451, metadata !54, null, metadata !"lua_Debug", i32 441, i64 800, i64 32, i32 0, i32 0, null, metadata !247, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [lua_Debug] [line 441, size 800, align 32, offset 0] [def] [from ]
!247 = metadata !{metadata !248, metadata !249, metadata !250, metadata !251, metadata !252, metadata !253, metadata !254, metadata !255, metadata !256, metadata !257, metadata !258, metadata !259, metadata !260, metadata !264}
!248 = metadata !{i32 786445, metadata !54, metadata !246, metadata !"event", i32 442, i64 32, i64 32, i64 0, i32 0, metadata !9} ; [ DW_TAG_member ] [event] [line 442, size 32, align 32, offset 0] [from int]
!249 = metadata !{i32 786445, metadata !54, metadata !246, metadata !"name", i32 443, i64 32, i64 32, i64 32, i32 0, metadata !43} ; [ DW_TAG_member ] [name] [line 443, size 32, align 32, offset 32] [from ]
!250 = metadata !{i32 786445, metadata !54, metadata !246, metadata !"namewhat", i32 444, i64 32, i64 32, i64 64, i32 0, metadata !43} ; [ DW_TAG_member ] [namewhat] [line 444, size 32, align 32, offset 64] [from ]
!251 = metadata !{i32 786445, metadata !54, metadata !246, metadata !"what", i32 445, i64 32, i64 32, i64 96, i32 0, metadata !43} ; [ DW_TAG_member ] [what] [line 445, size 32, align 32, offset 96] [from ]
!252 = metadata !{i32 786445, metadata !54, metadata !246, metadata !"source", i32 446, i64 32, i64 32, i64 128, i32 0, metadata !43} ; [ DW_TAG_member ] [source] [line 446, size 32, align 32, offset 128] [from ]
!253 = metadata !{i32 786445, metadata !54, metadata !246, metadata !"currentline", i32 447, i64 32, i64 32, i64 160, i32 0, metadata !9} ; [ DW_TAG_member ] [currentline] [line 447, size 32, align 32, offset 160] [from int]
!254 = metadata !{i32 786445, metadata !54, metadata !246, metadata !"linedefined", i32 448, i64 32, i64 32, i64 192, i32 0, metadata !9} ; [ DW_TAG_member ] [linedefined] [line 448, size 32, align 32, offset 192] [from int]
!255 = metadata !{i32 786445, metadata !54, metadata !246, metadata !"lastlinedefined", i32 449, i64 32, i64 32, i64 224, i32 0, metadata !9} ; [ DW_TAG_member ] [lastlinedefined] [line 449, size 32, align 32, offset 224] [from int]
!256 = metadata !{i32 786445, metadata !54, metadata !246, metadata !"nups", i32 450, i64 8, i64 8, i64 256, i32 0, metadata !24} ; [ DW_TAG_member ] [nups] [line 450, size 8, align 8, offset 256] [from unsigned char]
!257 = metadata !{i32 786445, metadata !54, metadata !246, metadata !"nparams", i32 451, i64 8, i64 8, i64 264, i32 0, metadata !24} ; [ DW_TAG_member ] [nparams] [line 451, size 8, align 8, offset 264] [from unsigned char]
!258 = metadata !{i32 786445, metadata !54, metadata !246, metadata !"isvararg", i32 452, i64 8, i64 8, i64 272, i32 0, metadata !45} ; [ DW_TAG_member ] [isvararg] [line 452, size 8, align 8, offset 272] [from char]
!259 = metadata !{i32 786445, metadata !54, metadata !246, metadata !"istailcall", i32 453, i64 8, i64 8, i64 280, i32 0, metadata !45} ; [ DW_TAG_member ] [istailcall] [line 453, size 8, align 8, offset 280] [from char]
!260 = metadata !{i32 786445, metadata !54, metadata !246, metadata !"short_src", i32 454, i64 480, i64 8, i64 288, i32 0, metadata !261} ; [ DW_TAG_member ] [short_src] [line 454, size 480, align 8, offset 288] [from ]
!261 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 480, i64 8, i32 0, i32 0, metadata !45, metadata !262, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 480, align 8, offset 0] [from char]
!262 = metadata !{metadata !263}
!263 = metadata !{i32 786465, i64 0, i64 60}      ; [ DW_TAG_subrange_type ] [0, 59]
!264 = metadata !{i32 786445, metadata !54, metadata !246, metadata !"i_ci", i32 456, i64 32, i64 32, i64 768, i32 0, metadata !195} ; [ DW_TAG_member ] [i_ci] [line 456, size 32, align 32, offset 768] [from ]
!265 = metadata !{i32 786445, metadata !56, metadata !55, metadata !"errfunc", i32 175, i64 32, i64 32, i64 736, i32 0, metadata !103} ; [ DW_TAG_member ] [errfunc] [line 175, size 32, align 32, offset 736] [from ptrdiff_t]
!266 = metadata !{i32 786445, metadata !56, metadata !55, metadata !"stacksize", i32 176, i64 32, i64 32, i64 768, i32 0, metadata !9} ; [ DW_TAG_member ] [stacksize] [line 176, size 32, align 32, offset 768] [from int]
!267 = metadata !{i32 786445, metadata !56, metadata !55, metadata !"basehookcount", i32 177, i64 32, i64 32, i64 800, i32 0, metadata !9} ; [ DW_TAG_member ] [basehookcount] [line 177, size 32, align 32, offset 800] [from int]
!268 = metadata !{i32 786445, metadata !56, metadata !55, metadata !"hookcount", i32 178, i64 32, i64 32, i64 832, i32 0, metadata !9} ; [ DW_TAG_member ] [hookcount] [line 178, size 32, align 32, offset 832] [from int]
!269 = metadata !{i32 786445, metadata !56, metadata !55, metadata !"nny", i32 179, i64 16, i64 16, i64 864, i32 0, metadata !62} ; [ DW_TAG_member ] [nny] [line 179, size 16, align 16, offset 864] [from unsigned short]
!270 = metadata !{i32 786445, metadata !56, metadata !55, metadata !"nCcalls", i32 180, i64 16, i64 16, i64 880, i32 0, metadata !62} ; [ DW_TAG_member ] [nCcalls] [line 180, size 16, align 16, offset 880] [from unsigned short]
!271 = metadata !{i32 786445, metadata !56, metadata !55, metadata !"hookmask", i32 181, i64 32, i64 32, i64 896, i32 0, metadata !272} ; [ DW_TAG_member ] [hookmask] [line 181, size 32, align 32, offset 896] [from sig_atomic_t]
!272 = metadata !{i32 786454, metadata !273, null, metadata !"sig_atomic_t", i32 40, i64 0, i64 0, i64 0, i32 0, metadata !274} ; [ DW_TAG_typedef ] [sig_atomic_t] [line 40, size 0, align 0, offset 0] [from __sig_atomic_t]
!273 = metadata !{metadata !"D:/Xilinx/SDx/2016.3/SDK/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include\5Csignal.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!274 = metadata !{i32 786454, metadata !275, null, metadata !"__sig_atomic_t", i32 22, i64 0, i64 0, i64 0, i32 0, metadata !9} ; [ DW_TAG_typedef ] [__sig_atomic_t] [line 22, size 0, align 0, offset 0] [from int]
!275 = metadata !{metadata !"D:/Xilinx/SDx/2016.3/SDK/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include\5Cbits/sigset.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!276 = metadata !{i32 786445, metadata !56, metadata !55, metadata !"allowhook", i32 182, i64 8, i64 8, i64 928, i32 0, metadata !22} ; [ DW_TAG_member ] [allowhook] [line 182, size 8, align 8, offset 928] [from lu_byte]
!277 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"luaS_clearcache", metadata !"luaS_clearcache", metadata !"", i32 103, metadata !278, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.global_State*)* @luaS_clearcache, null, null, metadata !2, i32 103} ; [ DW_TAG_subprogram ] [line 103] [def] [luaS_clearcache]
!278 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !279, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!279 = metadata !{null, metadata !91}
!280 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"luaS_init", metadata !"luaS_init", metadata !"", i32 116, metadata !281, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.lua_State*)* @luaS_init, null, null, metadata !2, i32 116} ; [ DW_TAG_subprogram ] [line 116] [def] [luaS_init]
!281 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !282, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!282 = metadata !{null, metadata !52}
!283 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"luaS_createlngstrobj", metadata !"luaS_createlngstrobj", metadata !"", i32 147, metadata !284, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, %struct.TString* (%struct.lua_State*, i32)* @luaS_createlngstrobj, null, null, metadata !2, i32 147} ; [ DW_TAG_subprogram ] [line 147] [def] [luaS_createlngstrobj]
!284 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !285, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!285 = metadata !{metadata !10, metadata !52, metadata !36}
!286 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"luaS_remove", metadata !"luaS_remove", metadata !"", i32 154, metadata !287, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.lua_State*, %struct.TString*)* @luaS_remove, null, null, metadata !2, i32 154} ; [ DW_TAG_subprogram ] [line 154] [def] [luaS_remove]
!287 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !288, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!288 = metadata !{null, metadata !52, metadata !10}
!289 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"luaS_newlstr", metadata !"luaS_newlstr", metadata !"", i32 199, metadata !290, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, %struct.TString* (%struct.lua_State*, i8*, i32)* @luaS_newlstr, null, null, metadata !2, i32 199} ; [ DW_TAG_subprogram ] [line 199] [def] [luaS_newlstr]
!290 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !291, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!291 = metadata !{metadata !10, metadata !52, metadata !43, metadata !36}
!292 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"luaS_new", metadata !"luaS_new", metadata !"", i32 219, metadata !293, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, %struct.TString* (%struct.lua_State*, i8*)* @luaS_new, null, null, metadata !2, i32 219} ; [ DW_TAG_subprogram ] [line 219] [def] [luaS_new]
!293 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !294, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!294 = metadata !{metadata !10, metadata !52, metadata !43}
!295 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"luaS_newudata", metadata !"luaS_newudata", metadata !"", i32 236, metadata !296, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, %struct.Udata* (%struct.lua_State*, i32)* @luaS_newudata, null, null, metadata !2, i32 236} ; [ DW_TAG_subprogram ] [line 236] [def] [luaS_newudata]
!296 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !297, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!297 = metadata !{metadata !298, metadata !52, metadata !36}
!298 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !299} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from Udata]
!299 = metadata !{i32 786454, metadata !12, null, metadata !"Udata", i32 352, i64 0, i64 0, i64 0, i32 0, metadata !300} ; [ DW_TAG_typedef ] [Udata] [line 352, size 0, align 0, offset 0] [from Udata]
!300 = metadata !{i32 786451, metadata !12, null, metadata !"Udata", i32 346, i64 192, i64 64, i32 0, i32 0, null, metadata !301, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [Udata] [line 346, size 192, align 64, offset 0] [def] [from ]
!301 = metadata !{metadata !302, metadata !303, metadata !304, metadata !305, metadata !306, metadata !307, metadata !308}
!302 = metadata !{i32 786445, metadata !12, metadata !300, metadata !"next", i32 347, i64 32, i64 32, i64 0, i32 0, metadata !16} ; [ DW_TAG_member ] [next] [line 347, size 32, align 32, offset 0] [from ]
!303 = metadata !{i32 786445, metadata !12, metadata !300, metadata !"tt", i32 347, i64 8, i64 8, i64 32, i32 0, metadata !22} ; [ DW_TAG_member ] [tt] [line 347, size 8, align 8, offset 32] [from lu_byte]
!304 = metadata !{i32 786445, metadata !12, metadata !300, metadata !"marked", i32 347, i64 8, i64 8, i64 40, i32 0, metadata !22} ; [ DW_TAG_member ] [marked] [line 347, size 8, align 8, offset 40] [from lu_byte]
!305 = metadata !{i32 786445, metadata !12, metadata !300, metadata !"ttuv_", i32 348, i64 8, i64 8, i64 48, i32 0, metadata !22} ; [ DW_TAG_member ] [ttuv_] [line 348, size 8, align 8, offset 48] [from lu_byte]
!306 = metadata !{i32 786445, metadata !12, metadata !300, metadata !"metatable", i32 349, i64 32, i64 32, i64 64, i32 0, metadata !150} ; [ DW_TAG_member ] [metatable] [line 349, size 32, align 32, offset 64] [from ]
!307 = metadata !{i32 786445, metadata !12, metadata !300, metadata !"len", i32 350, i64 32, i64 32, i64 96, i32 0, metadata !36} ; [ DW_TAG_member ] [len] [line 350, size 32, align 32, offset 96] [from size_t]
!308 = metadata !{i32 786445, metadata !12, metadata !300, metadata !"user_", i32 351, i64 64, i64 64, i64 128, i32 0, metadata !72} ; [ DW_TAG_member ] [user_] [line 351, size 64, align 64, offset 128] [from Value]
!309 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"internshrstr", metadata !"internshrstr", metadata !"", i32 167, metadata !290, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, %struct.TString* (%struct.lua_State*, i8*, i32)* @internshrstr, null, null, metadata !2, i32 167} ; [ DW_TAG_subprogram ] [line 167] [local] [def] [internshrstr]
!310 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"createstrobj", metadata !"createstrobj", metadata !"", i32 133, metadata !311, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, %struct.TString* (%struct.lua_State*, i32, i32, i32)* @createstrobj, null, null, metadata !2, i32 133} ; [ DW_TAG_subprogram ] [line 133] [local] [def] [createstrobj]
!311 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !312, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!312 = metadata !{metadata !10, metadata !52, metadata !36, metadata !9, metadata !31}
!313 = metadata !{i32 (%struct.TString*, %struct.TString*)* @luaS_eqlngstr}
!314 = metadata !{metadata !"luaS_eqlngstr"}
!315 = metadata !{i32 (i8*, i8*, i32)* @memcmp}
!316 = metadata !{metadata !"memcmp"}
!317 = metadata !{i32 (i8*, i32, i32)* @luaS_hash}
!318 = metadata !{metadata !"luaS_hash"}
!319 = metadata !{i32 (%struct.TString*)* @luaS_hashlongstr}
!320 = metadata !{metadata !"luaS_hashlongstr"}
!321 = metadata !{void (%struct.lua_State*, i32)* @luaS_resize}
!322 = metadata !{metadata !"luaS_resize"}
!323 = metadata !{void (%struct.lua_State*)* @luaM_toobig}
!324 = metadata !{metadata !"luaM_toobig"}
!325 = metadata !{i8* (%struct.lua_State*, i8*, i32, i32)* @luaM_realloc_}
!326 = metadata !{metadata !"luaM_realloc_"}
!327 = metadata !{void (%struct.global_State*)* @luaS_clearcache}
!328 = metadata !{metadata !"luaS_clearcache"}
!329 = metadata !{void (%struct.lua_State*)* @luaS_init}
!330 = metadata !{metadata !"luaS_init"}
!331 = metadata !{%struct.TString* (%struct.lua_State*, i8*, i32)* @luaS_newlstr}
!332 = metadata !{metadata !"luaS_newlstr"}
!333 = metadata !{void (%struct.lua_State*, %struct.GCObject*)* @luaC_fix}
!334 = metadata !{metadata !"luaC_fix"}
!335 = metadata !{%struct.TString* (%struct.lua_State*, i32)* @luaS_createlngstrobj}
!336 = metadata !{metadata !"luaS_createlngstrobj"}
!337 = metadata !{%struct.TString* (%struct.lua_State*, i32, i32, i32)* @createstrobj}
!338 = metadata !{metadata !"createstrobj"}
!339 = metadata !{void (%struct.lua_State*, %struct.TString*)* @luaS_remove}
!340 = metadata !{metadata !"luaS_remove"}
!341 = metadata !{%struct.TString* (%struct.lua_State*, i8*, i32)* @internshrstr}
!342 = metadata !{metadata !"internshrstr"}
!343 = metadata !{%struct.TString* (%struct.lua_State*, i8*)* @luaS_new}
!344 = metadata !{metadata !"luaS_new"}
!345 = metadata !{i32 (i8*, i8*)* @strcmp}
!346 = metadata !{metadata !"strcmp"}
!347 = metadata !{i32 (i8*)* @strlen}
!348 = metadata !{metadata !"strlen"}
!349 = metadata !{%struct.Udata* (%struct.lua_State*, i32)* @luaS_newudata}
!350 = metadata !{metadata !"luaS_newudata"}
!351 = metadata !{%struct.GCObject* (%struct.lua_State*, i32, i32)* @luaC_newobj}
!352 = metadata !{metadata !"luaC_newobj"}
!353 = metadata !{metadata !"int.TString *.1.TString *.1"}
!354 = metadata !{metadata !"int.const void *.1.const void *.1.size_t.0"}
!355 = metadata !{metadata !"unsigned int.const char *.1.size_t.0.unsigned int.0"}
!356 = metadata !{metadata !"unsigned int.TString *.1"}
!357 = metadata !{metadata !"void.lua_State *.1.int.0"}
!358 = metadata !{metadata !"void.lua_State *.1"}
!359 = metadata !{metadata !"void .lua_State *.1.void *.1.size_t.0.size_t.0"}
!360 = metadata !{metadata !"void.global_State *.1"}
!361 = metadata !{metadata !"TString .lua_State *.1.const char *.1.size_t.0"}
!362 = metadata !{metadata !"void.lua_State *.1.GCObject *.1"}
!363 = metadata !{metadata !"TString .lua_State *.1.size_t.0"}
!364 = metadata !{metadata !"TString .lua_State *.1.size_t.0.int.0.unsigned int.0"}
!365 = metadata !{metadata !"void.lua_State *.1.TString *.1"}
!366 = metadata !{metadata !"TString .lua_State *.1.const char *.1"}
!367 = metadata !{metadata !"int.const char *.1.const char *.1"}
!368 = metadata !{metadata !"unsigned int.const char *.1"}
!369 = metadata !{metadata !"Udata .lua_State *.1.size_t.0"}
!370 = metadata !{metadata !"GCObject .lua_State *.1.int.0.size_t.0"}
!371 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lstring.h"}
!372 = metadata !{metadata !"D:/Xilinx/SDx/2016.3/SDK/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include\5Cstring.h"}
!373 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lmem.h"}
!374 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lgc.h"}
!375 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lstring.c"}
!376 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!377 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!378 = metadata !{i32 1, metadata !"wchar_size", i32 4}
!379 = metadata !{i32 1, metadata !"min_enum_size", i32 4}
!380 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
!381 = metadata !{i32 786689, metadata !4, metadata !"a", metadata !6, i32 16777256, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 40]
!382 = metadata !{i32 40, i32 29, metadata !4, null}
!383 = metadata !{i32 786689, metadata !4, metadata !"b", metadata !6, i32 33554472, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b] [line 40]
!384 = metadata !{i32 40, i32 41, metadata !4, null}
!385 = metadata !{i32 786688, metadata !4, metadata !"len", metadata !6, i32 41, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [len] [line 41]
!386 = metadata !{i32 41, i32 10, metadata !4, null}
!387 = metadata !{i32 41, i32 3, metadata !4, null}
!388 = metadata !{i32 43, i32 3, metadata !4, null}
!389 = metadata !{i32 43, i32 3, metadata !390, null}
!390 = metadata !{i32 786443, metadata !5, metadata !4, i32 43, i32 3, i32 1, i32 33} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstring.c]
!391 = metadata !{i32 45, i32 7, metadata !4, null}
!392 = metadata !{i32 45, i32 7, metadata !393, null}
!393 = metadata !{i32 786443, metadata !5, metadata !4, i32 45, i32 7, i32 1, i32 34} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstring.c]
!394 = metadata !{i32 786689, metadata !40, metadata !"str", metadata !6, i32 16777265, metadata !43, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [str] [line 49]
!395 = metadata !{i32 49, i32 37, metadata !40, null}
!396 = metadata !{i32 786689, metadata !40, metadata !"l", metadata !6, i32 33554481, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [l] [line 49]
!397 = metadata !{i32 49, i32 49, metadata !40, null}
!398 = metadata !{i32 786689, metadata !40, metadata !"seed", metadata !6, i32 50331697, metadata !31, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [seed] [line 49]
!399 = metadata !{i32 49, i32 65, metadata !40, null}
!400 = metadata !{i32 786688, metadata !40, metadata !"h", metadata !6, i32 50, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [h] [line 50]
!401 = metadata !{i32 50, i32 16, metadata !40, null}
!402 = metadata !{i32 50, i32 3, metadata !40, null}
!403 = metadata !{i32 786688, metadata !40, metadata !"step", metadata !6, i32 51, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [step] [line 51]
!404 = metadata !{i32 51, i32 10, metadata !40, null}
!405 = metadata !{i32 51, i32 3, metadata !40, null}
!406 = metadata !{i32 52, i32 3, metadata !407, null}
!407 = metadata !{i32 786443, metadata !5, metadata !40, i32 52, i32 3, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstring.c]
!408 = metadata !{i32 52, i32 3, metadata !409, null}
!409 = metadata !{i32 786443, metadata !5, metadata !410, i32 52, i32 3, i32 2, i32 36} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstring.c]
!410 = metadata !{i32 786443, metadata !5, metadata !407, i32 52, i32 3, i32 1, i32 35} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstring.c]
!411 = metadata !{i32 53, i32 5, metadata !407, null}
!412 = metadata !{i32 52, i32 21, metadata !407, null}
!413 = metadata !{i32 54, i32 3, metadata !40, null}
!414 = metadata !{i32 786689, metadata !46, metadata !"ts", metadata !6, i32 16777274, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ts] [line 58]
!415 = metadata !{i32 58, i32 41, metadata !46, null} ; [ DW_TAG_imported_module ]
!416 = metadata !{i32 60, i32 7, metadata !417, null}
!417 = metadata !{i32 786443, metadata !5, metadata !46, i32 60, i32 7, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstring.c]
!418 = metadata !{i32 61, i32 16, metadata !419, null}
!419 = metadata !{i32 786443, metadata !5, metadata !417, i32 60, i32 23, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstring.c]
!420 = metadata !{i32 62, i32 5, metadata !419, null}
!421 = metadata !{i32 63, i32 3, metadata !419, null}
!422 = metadata !{i32 64, i32 3, metadata !46, null}
!423 = metadata !{i32 786689, metadata !49, metadata !"L", metadata !6, i32 16777287, metadata !52, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 71]
!424 = metadata !{i32 71, i32 30, metadata !49, null}
!425 = metadata !{i32 786689, metadata !49, metadata !"newsize", metadata !6, i32 33554503, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [newsize] [line 71]
!426 = metadata !{i32 71, i32 37, metadata !49, null}
!427 = metadata !{i32 786688, metadata !49, metadata !"i", metadata !6, i32 72, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 72]
!428 = metadata !{i32 72, i32 7, metadata !49, null}
!429 = metadata !{i32 786688, metadata !49, metadata !"tb", metadata !6, i32 73, metadata !430, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tb] [line 73]
!430 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !109} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from stringtable]
!431 = metadata !{i32 73, i32 16, metadata !49, null}
!432 = metadata !{i32 73, i32 3, metadata !49, null}
!433 = metadata !{i32 74, i32 7, metadata !434, null}
!434 = metadata !{i32 786443, metadata !5, metadata !49, i32 74, i32 7, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstring.c]
!435 = metadata !{i32 75, i32 5, metadata !436, null}
!436 = metadata !{i32 786443, metadata !5, metadata !434, i32 74, i32 27, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstring.c]
!437 = metadata !{i32 75, i32 5, metadata !438, null}
!438 = metadata !{i32 786443, metadata !5, metadata !436, i32 75, i32 5, i32 1, i32 37} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstring.c]
!439 = metadata !{i32 75, i32 5, metadata !440, null}
!440 = metadata !{i32 786443, metadata !5, metadata !436, i32 75, i32 5, i32 2, i32 38} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstring.c]
!441 = metadata !{i32 75, i32 5, metadata !442, null}
!442 = metadata !{i32 786443, metadata !5, metadata !443, i32 75, i32 5, i32 4, i32 40} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstring.c]
!443 = metadata !{i32 786443, metadata !5, metadata !436, i32 75, i32 5, i32 3, i32 39} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstring.c]
!444 = metadata !{i32 76, i32 10, metadata !445, null}
!445 = metadata !{i32 786443, metadata !5, metadata !436, i32 76, i32 5, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstring.c]
!446 = metadata !{i32 76, i32 10, metadata !447, null}
!447 = metadata !{i32 786443, metadata !5, metadata !448, i32 76, i32 10, i32 2, i32 42} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstring.c]
!448 = metadata !{i32 786443, metadata !5, metadata !445, i32 76, i32 10, i32 1, i32 41} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstring.c]
!449 = metadata !{i32 77, i32 7, metadata !445, null}
!450 = metadata !{i32 76, i32 37, metadata !445, null}
!451 = metadata !{i32 78, i32 3, metadata !436, null}
!452 = metadata !{i32 79, i32 8, metadata !453, null}
!453 = metadata !{i32 786443, metadata !5, metadata !49, i32 79, i32 3, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstring.c]
!454 = metadata !{i32 79, i32 8, metadata !455, null}
!455 = metadata !{i32 786443, metadata !5, metadata !456, i32 79, i32 8, i32 2, i32 45} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstring.c]
!456 = metadata !{i32 786443, metadata !5, metadata !453, i32 79, i32 8, i32 1, i32 43} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstring.c]
!457 = metadata !{i32 786688, metadata !458, metadata !"p", metadata !6, i32 80, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 80]
!458 = metadata !{i32 786443, metadata !5, metadata !453, i32 79, i32 34, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstring.c]
!459 = metadata !{i32 80, i32 14, metadata !458, null}
!460 = metadata !{i32 80, i32 5, metadata !458, null}
!461 = metadata !{i32 81, i32 5, metadata !458, null}
!462 = metadata !{i32 82, i32 5, metadata !458, null}
!463 = metadata !{i32 82, i32 5, metadata !464, null}
!464 = metadata !{i32 786443, metadata !5, metadata !458, i32 82, i32 5, i32 1, i32 44} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstring.c]
!465 = metadata !{i32 786688, metadata !466, metadata !"hnext", metadata !6, i32 83, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [hnext] [line 83]
!466 = metadata !{i32 786443, metadata !5, metadata !458, i32 82, i32 15, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstring.c]
!467 = metadata !{i32 83, i32 16, metadata !466, null}
!468 = metadata !{i32 83, i32 7, metadata !466, null}
!469 = metadata !{i32 786688, metadata !466, metadata !"h", metadata !6, i32 84, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [h] [line 84]
!470 = metadata !{i32 84, i32 20, metadata !466, null}
!471 = metadata !{i32 84, i32 7, metadata !466, null}
!472 = metadata !{i32 85, i32 7, metadata !466, null}
!473 = metadata !{i32 86, i32 7, metadata !466, null}
!474 = metadata !{i32 87, i32 7, metadata !466, null}
!475 = metadata !{i32 88, i32 5, metadata !466, null}
!476 = metadata !{i32 89, i32 3, metadata !458, null}
!477 = metadata !{i32 79, i32 29, metadata !453, null}
!478 = metadata !{i32 90, i32 7, metadata !479, null}
!479 = metadata !{i32 786443, metadata !5, metadata !49, i32 90, i32 7, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstring.c]
!480 = metadata !{i32 93, i32 5, metadata !481, null}
!481 = metadata !{i32 786443, metadata !5, metadata !479, i32 90, i32 27, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstring.c]
!482 = metadata !{i32 93, i32 5, metadata !483, null}
!483 = metadata !{i32 786443, metadata !5, metadata !481, i32 93, i32 5, i32 1, i32 46} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstring.c]
!484 = metadata !{i32 93, i32 5, metadata !485, null}
!485 = metadata !{i32 786443, metadata !5, metadata !481, i32 93, i32 5, i32 2, i32 47} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstring.c]
!486 = metadata !{i32 93, i32 5, metadata !487, null}
!487 = metadata !{i32 786443, metadata !5, metadata !488, i32 93, i32 5, i32 4, i32 49} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstring.c]
!488 = metadata !{i32 786443, metadata !5, metadata !481, i32 93, i32 5, i32 3, i32 48} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstring.c]
!489 = metadata !{i32 94, i32 3, metadata !481, null}
!490 = metadata !{i32 95, i32 3, metadata !49, null}
!491 = metadata !{i32 96, i32 1, metadata !49, null}
!492 = metadata !{i32 786689, metadata !277, metadata !"g", metadata !6, i32 16777319, metadata !91, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [g] [line 103]
!493 = metadata !{i32 103, i32 37, metadata !277, null}
!494 = metadata !{i32 786688, metadata !277, metadata !"i", metadata !6, i32 104, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 104]
!495 = metadata !{i32 104, i32 7, metadata !277, null}
!496 = metadata !{i32 786688, metadata !277, metadata !"j", metadata !6, i32 104, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 104]
!497 = metadata !{i32 104, i32 10, metadata !277, null}
!498 = metadata !{i32 105, i32 8, metadata !499, null}
!499 = metadata !{i32 786443, metadata !5, metadata !277, i32 105, i32 3, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstring.c]
!500 = metadata !{i32 105, i32 8, metadata !501, null}
!501 = metadata !{i32 786443, metadata !5, metadata !502, i32 105, i32 8, i32 2, i32 53} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstring.c]
!502 = metadata !{i32 786443, metadata !5, metadata !499, i32 105, i32 8, i32 1, i32 50} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstring.c]
!503 = metadata !{i32 106, i32 10, metadata !504, null}
!504 = metadata !{i32 786443, metadata !5, metadata !499, i32 106, i32 5, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstring.c]
!505 = metadata !{i32 106, i32 10, metadata !506, null}
!506 = metadata !{i32 786443, metadata !5, metadata !507, i32 106, i32 10, i32 2, i32 52} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstring.c]
!507 = metadata !{i32 786443, metadata !5, metadata !504, i32 106, i32 10, i32 1, i32 51} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstring.c]
!508 = metadata !{i32 107, i32 9, metadata !509, null}
!509 = metadata !{i32 786443, metadata !5, metadata !510, i32 107, i32 9, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstring.c]
!510 = metadata !{i32 786443, metadata !5, metadata !504, i32 106, i32 38, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstring.c]
!511 = metadata !{i32 108, i32 7, metadata !509, null}
!512 = metadata !{i32 109, i32 5, metadata !510, null}
!513 = metadata !{i32 106, i32 33, metadata !504, null}
!514 = metadata !{i32 109, i32 5, metadata !504, null}
!515 = metadata !{i32 105, i32 31, metadata !499, null}
!516 = metadata !{i32 110, i32 1, metadata !277, null}
!517 = metadata !{i32 786689, metadata !280, metadata !"L", metadata !6, i32 16777332, metadata !52, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 116]
!518 = metadata !{i32 116, i32 28, metadata !280, null}
!519 = metadata !{i32 786688, metadata !280, metadata !"g", metadata !6, i32 117, metadata !91, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [g] [line 117]
!520 = metadata !{i32 117, i32 17, metadata !280, null}
!521 = metadata !{i32 117, i32 3, metadata !280, null}
!522 = metadata !{i32 786688, metadata !280, metadata !"i", metadata !6, i32 118, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 118]
!523 = metadata !{i32 118, i32 7, metadata !280, null}
!524 = metadata !{i32 786688, metadata !280, metadata !"j", metadata !6, i32 118, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 118]
!525 = metadata !{i32 118, i32 10, metadata !280, null}
!526 = metadata !{i32 119, i32 3, metadata !280, null}
!527 = metadata !{i32 121, i32 18, metadata !280, null}
!528 = metadata !{i32 122, i32 3, metadata !280, null}
!529 = metadata !{i32 123, i32 8, metadata !530, null}
!530 = metadata !{i32 786443, metadata !5, metadata !280, i32 123, i32 3, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstring.c]
!531 = metadata !{i32 123, i32 8, metadata !532, null}
!532 = metadata !{i32 786443, metadata !5, metadata !533, i32 123, i32 8, i32 2, i32 57} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstring.c]
!533 = metadata !{i32 786443, metadata !5, metadata !530, i32 123, i32 8, i32 1, i32 54} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstring.c]
!534 = metadata !{i32 124, i32 10, metadata !535, null}
!535 = metadata !{i32 786443, metadata !5, metadata !530, i32 124, i32 5, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstring.c]
!536 = metadata !{i32 124, i32 10, metadata !537, null}
!537 = metadata !{i32 786443, metadata !5, metadata !538, i32 124, i32 10, i32 2, i32 56} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstring.c]
!538 = metadata !{i32 786443, metadata !5, metadata !535, i32 124, i32 10, i32 1, i32 55} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstring.c]
!539 = metadata !{i32 125, i32 7, metadata !535, null}
!540 = metadata !{i32 124, i32 33, metadata !535, null}
!541 = metadata !{i32 125, i32 30, metadata !535, null}
!542 = metadata !{i32 123, i32 31, metadata !530, null}
!543 = metadata !{i32 126, i32 1, metadata !280, null}
!544 = metadata !{i32 786689, metadata !289, metadata !"L", metadata !6, i32 16777415, metadata !52, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 199]
!545 = metadata !{i32 199, i32 35, metadata !289, null}
!546 = metadata !{i32 786689, metadata !289, metadata !"str", metadata !6, i32 33554631, metadata !43, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [str] [line 199]
!547 = metadata !{i32 199, i32 50, metadata !289, null}
!548 = metadata !{i32 786689, metadata !289, metadata !"l", metadata !6, i32 50331847, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [l] [line 199]
!549 = metadata !{i32 199, i32 62, metadata !289, null}
!550 = metadata !{i32 200, i32 7, metadata !551, null}
!551 = metadata !{i32 786443, metadata !5, metadata !289, i32 200, i32 7, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstring.c]
!552 = metadata !{i32 201, i32 12, metadata !551, null}
!553 = metadata !{i32 786688, metadata !554, metadata !"ts", metadata !6, i32 203, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ts] [line 203]
!554 = metadata !{i32 786443, metadata !5, metadata !551, i32 202, i32 8, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstring.c]
!555 = metadata !{i32 203, i32 14, metadata !554, null}
!556 = metadata !{i32 204, i32 9, metadata !557, null}
!557 = metadata !{i32 786443, metadata !5, metadata !554, i32 204, i32 9, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstring.c]
!558 = metadata !{i32 205, i32 7, metadata !557, null}
!559 = metadata !{i32 206, i32 10, metadata !554, null}
!560 = metadata !{i32 207, i32 5, metadata !554, null}
!561 = metadata !{i32 208, i32 5, metadata !554, null}
!562 = metadata !{i32 210, i32 1, metadata !289, null}
!563 = metadata !{i32 786689, metadata !283, metadata !"L", metadata !6, i32 16777363, metadata !52, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 147]
!564 = metadata !{i32 147, i32 43, metadata !283, null}
!565 = metadata !{i32 786689, metadata !283, metadata !"l", metadata !6, i32 33554579, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [l] [line 147]
!566 = metadata !{i32 147, i32 53, metadata !283, null}
!567 = metadata !{i32 786688, metadata !283, metadata !"ts", metadata !6, i32 148, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ts] [line 148]
!568 = metadata !{i32 148, i32 12, metadata !283, null}
!569 = metadata !{i32 148, i32 17, metadata !283, null}
!570 = metadata !{i32 149, i32 3, metadata !283, null}
!571 = metadata !{i32 150, i32 3, metadata !283, null}
!572 = metadata !{i32 786689, metadata !310, metadata !"L", metadata !6, i32 16777349, metadata !52, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 133]
!573 = metadata !{i32 133, i32 42, metadata !310, null}
!574 = metadata !{i32 786689, metadata !310, metadata !"l", metadata !6, i32 33554565, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [l] [line 133]
!575 = metadata !{i32 133, i32 52, metadata !310, null}
!576 = metadata !{i32 786689, metadata !310, metadata !"tag", metadata !6, i32 50331781, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tag] [line 133]
!577 = metadata !{i32 133, i32 59, metadata !310, null}
!578 = metadata !{i32 786689, metadata !310, metadata !"h", metadata !6, i32 67108997, metadata !31, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [h] [line 133]
!579 = metadata !{i32 133, i32 77, metadata !310, null}
!580 = metadata !{i32 786688, metadata !310, metadata !"ts", metadata !6, i32 134, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ts] [line 134]
!581 = metadata !{i32 134, i32 12, metadata !310, null}
!582 = metadata !{i32 786688, metadata !310, metadata !"o", metadata !6, i32 135, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [o] [line 135]
!583 = metadata !{i32 135, i32 13, metadata !310, null}
!584 = metadata !{i32 786688, metadata !310, metadata !"totalsize", metadata !6, i32 136, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [totalsize] [line 136]
!585 = metadata !{i32 136, i32 10, metadata !310, null}
!586 = metadata !{i32 137, i32 3, metadata !310, null}
!587 = metadata !{i32 138, i32 7, metadata !310, null}
!588 = metadata !{i32 139, i32 3, metadata !310, null}
!589 = metadata !{i32 140, i32 3, metadata !310, null}
!590 = metadata !{i32 141, i32 3, metadata !310, null}
!591 = metadata !{i32 142, i32 3, metadata !310, null}
!592 = metadata !{i32 143, i32 3, metadata !310, null}
!593 = metadata !{i32 786689, metadata !286, metadata !"L", metadata !6, i32 16777370, metadata !52, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 154]
!594 = metadata !{i32 154, i32 30, metadata !286, null}
!595 = metadata !{i32 786689, metadata !286, metadata !"ts", metadata !6, i32 33554586, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ts] [line 154]
!596 = metadata !{i32 154, i32 42, metadata !286, null}
!597 = metadata !{i32 786688, metadata !286, metadata !"tb", metadata !6, i32 155, metadata !430, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tb] [line 155]
!598 = metadata !{i32 155, i32 16, metadata !286, null}
!599 = metadata !{i32 155, i32 3, metadata !286, null}
!600 = metadata !{i32 786688, metadata !286, metadata !"p", metadata !6, i32 156, metadata !113, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 156]
!601 = metadata !{i32 156, i32 13, metadata !286, null}
!602 = metadata !{i32 156, i32 3, metadata !286, null}
!603 = metadata !{i32 157, i32 3, metadata !286, null}
!604 = metadata !{i32 157, i32 3, metadata !605, null}
!605 = metadata !{i32 786443, metadata !5, metadata !286, i32 157, i32 3, i32 1, i32 58} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstring.c]
!606 = metadata !{i32 158, i32 5, metadata !286, null}
!607 = metadata !{i32 159, i32 3, metadata !286, null}
!608 = metadata !{i32 160, i32 3, metadata !286, null}
!609 = metadata !{i32 161, i32 1, metadata !286, null}
!610 = metadata !{i32 786689, metadata !309, metadata !"L", metadata !6, i32 16777383, metadata !52, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 167]
!611 = metadata !{i32 167, i32 42, metadata !309, null}
!612 = metadata !{i32 786689, metadata !309, metadata !"str", metadata !6, i32 33554599, metadata !43, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [str] [line 167]
!613 = metadata !{i32 167, i32 57, metadata !309, null}
!614 = metadata !{i32 786689, metadata !309, metadata !"l", metadata !6, i32 50331815, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [l] [line 167]
!615 = metadata !{i32 167, i32 69, metadata !309, null}
!616 = metadata !{i32 786688, metadata !309, metadata !"ts", metadata !6, i32 168, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ts] [line 168]
!617 = metadata !{i32 168, i32 12, metadata !309, null}
!618 = metadata !{i32 786688, metadata !309, metadata !"g", metadata !6, i32 169, metadata !91, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [g] [line 169]
!619 = metadata !{i32 169, i32 17, metadata !309, null}
!620 = metadata !{i32 169, i32 3, metadata !309, null}
!621 = metadata !{i32 786688, metadata !309, metadata !"h", metadata !6, i32 170, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [h] [line 170]
!622 = metadata !{i32 170, i32 16, metadata !309, null}
!623 = metadata !{i32 170, i32 20, metadata !309, null}
!624 = metadata !{i32 786688, metadata !309, metadata !"list", metadata !6, i32 171, metadata !113, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [list] [line 171]
!625 = metadata !{i32 171, i32 13, metadata !309, null}
!626 = metadata !{i32 171, i32 3, metadata !309, null}
!627 = metadata !{i32 173, i32 8, metadata !628, null}
!628 = metadata !{i32 786443, metadata !5, metadata !309, i32 173, i32 3, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstring.c]
!629 = metadata !{i32 173, i32 8, metadata !630, null}
!630 = metadata !{i32 786443, metadata !5, metadata !631, i32 173, i32 8, i32 2, i32 60} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstring.c]
!631 = metadata !{i32 786443, metadata !5, metadata !628, i32 173, i32 8, i32 1, i32 59} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstring.c]
!632 = metadata !{i32 174, i32 9, metadata !633, null}
!633 = metadata !{i32 786443, metadata !5, metadata !634, i32 174, i32 9, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstring.c]
!634 = metadata !{i32 786443, metadata !5, metadata !628, i32 173, i32 50, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstring.c]
!635 = metadata !{i32 175, i32 10, metadata !633, null}
!636 = metadata !{i32 177, i32 11, metadata !637, null}
!637 = metadata !{i32 786443, metadata !5, metadata !638, i32 177, i32 11, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstring.c]
!638 = metadata !{i32 786443, metadata !5, metadata !633, i32 175, i32 59, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstring.c]
!639 = metadata !{i32 178, i32 9, metadata !637, null}
!640 = metadata !{i32 179, i32 7, metadata !638, null}
!641 = metadata !{i32 181, i32 3, metadata !634, null}
!642 = metadata !{i32 173, i32 32, metadata !628, null}
!643 = metadata !{i32 182, i32 7, metadata !644, null}
!644 = metadata !{i32 786443, metadata !5, metadata !309, i32 182, i32 7, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstring.c]
!645 = metadata !{i32 182, i32 7, metadata !646, null}
!646 = metadata !{i32 786443, metadata !5, metadata !644, i32 182, i32 7, i32 1, i32 61} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstring.c]
!647 = metadata !{i32 183, i32 5, metadata !648, null}
!648 = metadata !{i32 786443, metadata !5, metadata !644, i32 182, i32 66, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstring.c]
!649 = metadata !{i32 184, i32 5, metadata !648, null}
!650 = metadata !{i32 185, i32 3, metadata !648, null}
!651 = metadata !{i32 186, i32 8, metadata !309, null}
!652 = metadata !{i32 187, i32 3, metadata !309, null}
!653 = metadata !{i32 188, i32 3, metadata !309, null}
!654 = metadata !{i32 189, i32 3, metadata !309, null}
!655 = metadata !{i32 190, i32 3, metadata !309, null}
!656 = metadata !{i32 191, i32 3, metadata !309, null}
!657 = metadata !{i32 192, i32 3, metadata !309, null}
!658 = metadata !{i32 193, i32 1, metadata !309, null}
!659 = metadata !{i32 786689, metadata !292, metadata !"L", metadata !6, i32 16777435, metadata !52, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 219]
!660 = metadata !{i32 219, i32 31, metadata !292, null}
!661 = metadata !{i32 786689, metadata !292, metadata !"str", metadata !6, i32 33554651, metadata !43, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [str] [line 219]
!662 = metadata !{i32 219, i32 46, metadata !292, null}
!663 = metadata !{i32 786688, metadata !292, metadata !"i", metadata !6, i32 220, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 220]
!664 = metadata !{i32 220, i32 16, metadata !292, null}
!665 = metadata !{i32 220, i32 3, metadata !292, null}
!666 = metadata !{i32 786688, metadata !292, metadata !"j", metadata !6, i32 221, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 221]
!667 = metadata !{i32 221, i32 7, metadata !292, null}
!668 = metadata !{i32 786688, metadata !292, metadata !"p", metadata !6, i32 222, metadata !113, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 222]
!669 = metadata !{i32 222, i32 13, metadata !292, null}
!670 = metadata !{i32 222, i32 3, metadata !292, null}
!671 = metadata !{i32 223, i32 8, metadata !672, null}
!672 = metadata !{i32 786443, metadata !5, metadata !292, i32 223, i32 3, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstring.c]
!673 = metadata !{i32 223, i32 8, metadata !674, null}
!674 = metadata !{i32 786443, metadata !5, metadata !675, i32 223, i32 8, i32 2, i32 63} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstring.c]
!675 = metadata !{i32 786443, metadata !5, metadata !672, i32 223, i32 8, i32 1, i32 62} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstring.c]
!676 = metadata !{i32 224, i32 9, metadata !677, null}
!677 = metadata !{i32 786443, metadata !5, metadata !678, i32 224, i32 9, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstring.c]
!678 = metadata !{i32 786443, metadata !5, metadata !672, i32 223, i32 36, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstring.c]
!679 = metadata !{i32 225, i32 7, metadata !677, null}
!680 = metadata !{i32 226, i32 3, metadata !678, null}
!681 = metadata !{i32 223, i32 31, metadata !672, null}
!682 = metadata !{i32 228, i32 8, metadata !683, null}
!683 = metadata !{i32 786443, metadata !5, metadata !292, i32 228, i32 3, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstring.c]
!684 = metadata !{i32 228, i32 8, metadata !685, null}
!685 = metadata !{i32 786443, metadata !5, metadata !686, i32 228, i32 8, i32 2, i32 65} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstring.c]
!686 = metadata !{i32 786443, metadata !5, metadata !683, i32 228, i32 8, i32 1, i32 64} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstring.c]
!687 = metadata !{i32 229, i32 5, metadata !683, null}
!688 = metadata !{i32 228, i32 35, metadata !683, null}
!689 = metadata !{i32 231, i32 10, metadata !292, null}
!690 = metadata !{i32 231, i32 31, metadata !292, null}
!691 = metadata !{i32 232, i32 3, metadata !292, null}
!692 = metadata !{i32 233, i32 1, metadata !292, null}
!693 = metadata !{i32 786689, metadata !295, metadata !"L", metadata !6, i32 16777452, metadata !52, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 236]
!694 = metadata !{i32 236, i32 34, metadata !295, null}
!695 = metadata !{i32 786689, metadata !295, metadata !"s", metadata !6, i32 33554668, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 236]
!696 = metadata !{i32 236, i32 44, metadata !295, null}
!697 = metadata !{i32 786688, metadata !295, metadata !"u", metadata !6, i32 237, metadata !298, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [u] [line 237]
!698 = metadata !{i32 237, i32 10, metadata !295, null}
!699 = metadata !{i32 786688, metadata !295, metadata !"o", metadata !6, i32 238, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [o] [line 238]
!700 = metadata !{i32 238, i32 13, metadata !295, null}
!701 = metadata !{i32 239, i32 7, metadata !702, null}
!702 = metadata !{i32 786443, metadata !5, metadata !295, i32 239, i32 7, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstring.c]
!703 = metadata !{i32 240, i32 5, metadata !702, null}
!704 = metadata !{i32 241, i32 7, metadata !295, null}
!705 = metadata !{i32 242, i32 3, metadata !295, null}
!706 = metadata !{i32 243, i32 3, metadata !295, null}
!707 = metadata !{i32 244, i32 3, metadata !295, null}
!708 = metadata !{i32 786688, metadata !709, metadata !"io", metadata !6, i32 245, metadata !710, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [io] [line 245]
!709 = metadata !{i32 786443, metadata !5, metadata !295, i32 245, i32 3, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstring.c]
!710 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !711} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!711 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !67} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from TValue]
!712 = metadata !{i32 245, i32 3, metadata !709, null}
!713 = metadata !{i32 786688, metadata !709, metadata !"iu", metadata !6, i32 245, metadata !298, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iu] [line 245]
!714 = metadata !{i32 246, i32 3, metadata !295, null}
