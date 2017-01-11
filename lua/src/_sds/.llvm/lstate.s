; ModuleID = 'C:/Users/DevolutionX/workspace/lua/src/lstate.c'
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-n32-S64"
target triple = "armv7--linux-gnueabihf"

%struct.lua_TValue = type { %union.Value, i32 }
%union.Value = type { i64 }
%struct.global_State = type { i8* (i8*, i8*, i32, i32)*, i8*, i32, i32, i32, i32, %struct.stringtable, %struct.lua_TValue, i32, i8, i8, i8, i8, %struct.GCObject*, %struct.GCObject**, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.lua_State*, i32, i32, i32, i32 (%struct.lua_State*)*, %struct.lua_State*, double*, %struct.TString*, [24 x %struct.TString*], [9 x %struct.Table*], [53 x [2 x %struct.TString*]] }
%struct.stringtable = type { %struct.TString**, i32, i32 }
%struct.GCObject = type { %struct.GCObject*, i8, i8 }
%struct.lua_State = type { %struct.GCObject*, i8, i8, i16, i8, %struct.lua_TValue*, %struct.global_State*, %struct.CallInfo*, i32*, %struct.lua_TValue*, %struct.lua_TValue*, %struct.UpVal*, %struct.GCObject*, %struct.lua_State*, %struct.lua_longjmp*, %struct.CallInfo, void (%struct.lua_State*, %struct.lua_Debug*)*, i32, i32, i32, i32, i16, i16, i32, i8 }
%struct.UpVal = type { %struct.lua_TValue*, i32, %union.anon.3 }
%union.anon.3 = type { %struct.lua_TValue }
%struct.lua_longjmp = type opaque
%struct.CallInfo = type { %struct.lua_TValue*, %struct.lua_TValue*, %struct.CallInfo*, %struct.CallInfo*, %union.anon.0, i32, i16, i8 }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { i32 (%struct.lua_State*, i32, i32)*, i32, i32 }
%struct.lua_Debug = type { i32, i8*, i8*, i8*, i8*, i32, i32, i32, i8, i8, i8, i8, [60 x i8], %struct.CallInfo* }
%struct.TString = type { %struct.GCObject*, i8, i8, i8, i8, i32, %union.anon }
%union.anon = type { i32 }
%struct.Table = type { %struct.GCObject*, i8, i8, i8, i8, i32, %struct.lua_TValue*, %struct.Node*, %struct.Node*, %struct.Table*, %struct.GCObject* }
%struct.Node = type { %struct.lua_TValue, %union.TKey }
%union.TKey = type { %struct.anon.2 }
%struct.anon.2 = type { %union.Value, i32, i32 }
%struct.LX = type { [4 x i8], %struct.lua_State }
%union.GCUnion = type { %union.Closure, [88 x i8] }
%union.Closure = type { %struct.CClosure }
%struct.CClosure = type { %struct.GCObject*, i8, i8, i8, %struct.GCObject*, i32 (%struct.lua_State*)*, [1 x %struct.lua_TValue] }
%struct.LG = type { %struct.LX, %struct.global_State }

@luaO_nilobject_ = external hidden constant %struct.lua_TValue

; Function Attrs: nounwind
define hidden void @luaE_setdebt(%struct.global_State* %g, i32 %debt) #0 {
  %1 = alloca %struct.global_State*, align 4
  %2 = alloca i32, align 4
  %tb = alloca i32, align 4
  store %struct.global_State* %g, %struct.global_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.global_State** %1}, metadata !404), !dbg !405
  store i32 %debt, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !406), !dbg !407
  call void @llvm.dbg.declare(metadata !{i32* %tb}, metadata !408), !dbg !409
  %3 = load %struct.global_State** %1, align 4, !dbg !410
  %4 = getelementptr inbounds %struct.global_State* %3, i32 0, i32 2, !dbg !410
  %5 = load i32* %4, align 4, !dbg !410
  %6 = load %struct.global_State** %1, align 4, !dbg !410
  %7 = getelementptr inbounds %struct.global_State* %6, i32 0, i32 3, !dbg !410
  %8 = load i32* %7, align 4, !dbg !410
  %9 = add nsw i32 %5, %8, !dbg !410
  store i32 %9, i32* %tb, align 4, !dbg !410
  %10 = load i32* %2, align 4, !dbg !411
  %11 = load i32* %tb, align 4, !dbg !411
  %12 = sub nsw i32 %11, 2147483647, !dbg !411
  %13 = icmp slt i32 %10, %12, !dbg !411
  br i1 %13, label %14, label %17, !dbg !411

; <label>:14                                      ; preds = %0
  %15 = load i32* %tb, align 4, !dbg !413
  %16 = sub nsw i32 %15, 2147483647, !dbg !413
  store i32 %16, i32* %2, align 4, !dbg !413
  br label %17, !dbg !413

; <label>:17                                      ; preds = %14, %0
  %18 = load i32* %tb, align 4, !dbg !414
  %19 = load i32* %2, align 4, !dbg !414
  %20 = sub nsw i32 %18, %19, !dbg !414
  %21 = load %struct.global_State** %1, align 4, !dbg !414
  %22 = getelementptr inbounds %struct.global_State* %21, i32 0, i32 2, !dbg !414
  store i32 %20, i32* %22, align 4, !dbg !414
  %23 = load i32* %2, align 4, !dbg !415
  %24 = load %struct.global_State** %1, align 4, !dbg !415
  %25 = getelementptr inbounds %struct.global_State* %24, i32 0, i32 3, !dbg !415
  store i32 %23, i32* %25, align 4, !dbg !415
  ret void, !dbg !416
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind
define hidden %struct.CallInfo* @luaE_extendCI(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %ci = alloca %struct.CallInfo*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !417), !dbg !418
  call void @llvm.dbg.declare(metadata !{%struct.CallInfo** %ci}, metadata !419), !dbg !420
  %2 = load %struct.lua_State** %1, align 4, !dbg !421
  %3 = call i8* @luaM_realloc_(%struct.lua_State* %2, i8* null, i32 0, i32 36), !dbg !421
  %4 = bitcast i8* %3 to %struct.CallInfo*, !dbg !421
  store %struct.CallInfo* %4, %struct.CallInfo** %ci, align 4, !dbg !421
  %5 = load %struct.CallInfo** %ci, align 4, !dbg !422
  %6 = load %struct.lua_State** %1, align 4, !dbg !422
  %7 = getelementptr inbounds %struct.lua_State* %6, i32 0, i32 7, !dbg !422
  %8 = load %struct.CallInfo** %7, align 4, !dbg !422
  %9 = getelementptr inbounds %struct.CallInfo* %8, i32 0, i32 3, !dbg !422
  store %struct.CallInfo* %5, %struct.CallInfo** %9, align 4, !dbg !422
  %10 = load %struct.lua_State** %1, align 4, !dbg !423
  %11 = getelementptr inbounds %struct.lua_State* %10, i32 0, i32 7, !dbg !423
  %12 = load %struct.CallInfo** %11, align 4, !dbg !423
  %13 = load %struct.CallInfo** %ci, align 4, !dbg !423
  %14 = getelementptr inbounds %struct.CallInfo* %13, i32 0, i32 2, !dbg !423
  store %struct.CallInfo* %12, %struct.CallInfo** %14, align 4, !dbg !423
  %15 = load %struct.CallInfo** %ci, align 4, !dbg !424
  %16 = getelementptr inbounds %struct.CallInfo* %15, i32 0, i32 3, !dbg !424
  store %struct.CallInfo* null, %struct.CallInfo** %16, align 4, !dbg !424
  %17 = load %struct.lua_State** %1, align 4, !dbg !425
  %18 = getelementptr inbounds %struct.lua_State* %17, i32 0, i32 3, !dbg !425
  %19 = load i16* %18, align 2, !dbg !425
  %20 = add i16 %19, 1, !dbg !425
  store i16 %20, i16* %18, align 2, !dbg !425
  %21 = load %struct.CallInfo** %ci, align 4, !dbg !426
  ret %struct.CallInfo* %21, !dbg !426
}

declare hidden i8* @luaM_realloc_(%struct.lua_State*, i8*, i32, i32) #2

; Function Attrs: nounwind
define hidden void @luaE_freeCI(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %ci = alloca %struct.CallInfo*, align 4
  %next = alloca %struct.CallInfo*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !427), !dbg !428
  call void @llvm.dbg.declare(metadata !{%struct.CallInfo** %ci}, metadata !429), !dbg !430
  %2 = load %struct.lua_State** %1, align 4, !dbg !431
  %3 = getelementptr inbounds %struct.lua_State* %2, i32 0, i32 7, !dbg !431
  %4 = load %struct.CallInfo** %3, align 4, !dbg !431
  store %struct.CallInfo* %4, %struct.CallInfo** %ci, align 4, !dbg !431
  call void @llvm.dbg.declare(metadata !{%struct.CallInfo** %next}, metadata !432), !dbg !433
  %5 = load %struct.CallInfo** %ci, align 4, !dbg !434
  %6 = getelementptr inbounds %struct.CallInfo* %5, i32 0, i32 3, !dbg !434
  %7 = load %struct.CallInfo** %6, align 4, !dbg !434
  store %struct.CallInfo* %7, %struct.CallInfo** %next, align 4, !dbg !434
  %8 = load %struct.CallInfo** %ci, align 4, !dbg !435
  %9 = getelementptr inbounds %struct.CallInfo* %8, i32 0, i32 3, !dbg !435
  store %struct.CallInfo* null, %struct.CallInfo** %9, align 4, !dbg !435
  br label %10, !dbg !436

; <label>:10                                      ; preds = %13, %0
  %11 = load %struct.CallInfo** %next, align 4, !dbg !437
  store %struct.CallInfo* %11, %struct.CallInfo** %ci, align 4, !dbg !437
  %12 = icmp ne %struct.CallInfo* %11, null, !dbg !437
  br i1 %12, label %13, label %25, !dbg !437

; <label>:13                                      ; preds = %10
  %14 = load %struct.CallInfo** %ci, align 4, !dbg !439
  %15 = getelementptr inbounds %struct.CallInfo* %14, i32 0, i32 3, !dbg !439
  %16 = load %struct.CallInfo** %15, align 4, !dbg !439
  store %struct.CallInfo* %16, %struct.CallInfo** %next, align 4, !dbg !439
  %17 = load %struct.lua_State** %1, align 4, !dbg !441
  %18 = load %struct.CallInfo** %ci, align 4, !dbg !441
  %19 = bitcast %struct.CallInfo* %18 to i8*, !dbg !441
  %20 = call i8* @luaM_realloc_(%struct.lua_State* %17, i8* %19, i32 36, i32 0), !dbg !441
  %21 = load %struct.lua_State** %1, align 4, !dbg !442
  %22 = getelementptr inbounds %struct.lua_State* %21, i32 0, i32 3, !dbg !442
  %23 = load i16* %22, align 2, !dbg !442
  %24 = add i16 %23, -1, !dbg !442
  store i16 %24, i16* %22, align 2, !dbg !442
  br label %10, !dbg !443

; <label>:25                                      ; preds = %10
  ret void, !dbg !444
}

; Function Attrs: nounwind
define hidden void @luaE_shrinkCI(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %ci = alloca %struct.CallInfo*, align 4
  %next2 = alloca %struct.CallInfo*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !445), !dbg !446
  call void @llvm.dbg.declare(metadata !{%struct.CallInfo** %ci}, metadata !447), !dbg !448
  %2 = load %struct.lua_State** %1, align 4, !dbg !449
  %3 = getelementptr inbounds %struct.lua_State* %2, i32 0, i32 7, !dbg !449
  %4 = load %struct.CallInfo** %3, align 4, !dbg !449
  store %struct.CallInfo* %4, %struct.CallInfo** %ci, align 4, !dbg !449
  call void @llvm.dbg.declare(metadata !{%struct.CallInfo** %next2}, metadata !450), !dbg !451
  br label %5, !dbg !452

; <label>:5                                       ; preds = %19, %0
  %6 = load %struct.CallInfo** %ci, align 4, !dbg !453
  %7 = getelementptr inbounds %struct.CallInfo* %6, i32 0, i32 3, !dbg !453
  %8 = load %struct.CallInfo** %7, align 4, !dbg !453
  %9 = icmp ne %struct.CallInfo* %8, null, !dbg !453
  br i1 %9, label %10, label %17, !dbg !453

; <label>:10                                      ; preds = %5
  %11 = load %struct.CallInfo** %ci, align 4, !dbg !455
  %12 = getelementptr inbounds %struct.CallInfo* %11, i32 0, i32 3, !dbg !455
  %13 = load %struct.CallInfo** %12, align 4, !dbg !455
  %14 = getelementptr inbounds %struct.CallInfo* %13, i32 0, i32 3, !dbg !455
  %15 = load %struct.CallInfo** %14, align 4, !dbg !455
  store %struct.CallInfo* %15, %struct.CallInfo** %next2, align 4, !dbg !455
  %16 = icmp ne %struct.CallInfo* %15, null, !dbg !455
  br label %17

; <label>:17                                      ; preds = %10, %5
  %18 = phi i1 [ false, %5 ], [ %16, %10 ]
  br i1 %18, label %19, label %37, !dbg !457

; <label>:19                                      ; preds = %17
  %20 = load %struct.lua_State** %1, align 4, !dbg !459
  %21 = load %struct.CallInfo** %ci, align 4, !dbg !459
  %22 = getelementptr inbounds %struct.CallInfo* %21, i32 0, i32 3, !dbg !459
  %23 = load %struct.CallInfo** %22, align 4, !dbg !459
  %24 = bitcast %struct.CallInfo* %23 to i8*, !dbg !459
  %25 = call i8* @luaM_realloc_(%struct.lua_State* %20, i8* %24, i32 36, i32 0), !dbg !459
  %26 = load %struct.lua_State** %1, align 4, !dbg !461
  %27 = getelementptr inbounds %struct.lua_State* %26, i32 0, i32 3, !dbg !461
  %28 = load i16* %27, align 2, !dbg !461
  %29 = add i16 %28, -1, !dbg !461
  store i16 %29, i16* %27, align 2, !dbg !461
  %30 = load %struct.CallInfo** %next2, align 4, !dbg !462
  %31 = load %struct.CallInfo** %ci, align 4, !dbg !462
  %32 = getelementptr inbounds %struct.CallInfo* %31, i32 0, i32 3, !dbg !462
  store %struct.CallInfo* %30, %struct.CallInfo** %32, align 4, !dbg !462
  %33 = load %struct.CallInfo** %ci, align 4, !dbg !463
  %34 = load %struct.CallInfo** %next2, align 4, !dbg !463
  %35 = getelementptr inbounds %struct.CallInfo* %34, i32 0, i32 2, !dbg !463
  store %struct.CallInfo* %33, %struct.CallInfo** %35, align 4, !dbg !463
  %36 = load %struct.CallInfo** %next2, align 4, !dbg !464
  store %struct.CallInfo* %36, %struct.CallInfo** %ci, align 4, !dbg !464
  br label %5, !dbg !465

; <label>:37                                      ; preds = %17
  ret void, !dbg !466
}

; Function Attrs: nounwind
define %struct.lua_State* @lua_newthread(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %g = alloca %struct.global_State*, align 4
  %L1 = alloca %struct.lua_State*, align 4
  %io = alloca %struct.lua_TValue*, align 4
  %x_ = alloca %struct.lua_State*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !467), !dbg !468
  call void @llvm.dbg.declare(metadata !{%struct.global_State** %g}, metadata !469), !dbg !470
  %2 = load %struct.lua_State** %1, align 4, !dbg !471
  %3 = getelementptr inbounds %struct.lua_State* %2, i32 0, i32 6, !dbg !471
  %4 = load %struct.global_State** %3, align 4, !dbg !471
  store %struct.global_State* %4, %struct.global_State** %g, align 4, !dbg !471
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %L1}, metadata !472), !dbg !473
  %5 = load %struct.lua_State** %1, align 4, !dbg !474
  %6 = getelementptr inbounds %struct.lua_State* %5, i32 0, i32 6, !dbg !474
  %7 = load %struct.global_State** %6, align 4, !dbg !474
  %8 = getelementptr inbounds %struct.global_State* %7, i32 0, i32 3, !dbg !474
  %9 = load i32* %8, align 4, !dbg !474
  %10 = icmp sgt i32 %9, 0, !dbg !474
  br i1 %10, label %11, label %13, !dbg !474

; <label>:11                                      ; preds = %0
  %12 = load %struct.lua_State** %1, align 4, !dbg !477
  call void @luaC_step(%struct.lua_State* %12), !dbg !477
  br label %13, !dbg !477

; <label>:13                                      ; preds = %11, %0
  %14 = load %struct.lua_State** %1, align 4, !dbg !480
  %15 = call i8* @luaM_realloc_(%struct.lua_State* %14, i8* null, i32 8, i32 124), !dbg !480
  %16 = bitcast i8* %15 to %struct.LX*, !dbg !480
  %17 = getelementptr inbounds %struct.LX* %16, i32 0, i32 1, !dbg !480
  store %struct.lua_State* %17, %struct.lua_State** %L1, align 4, !dbg !480
  %18 = load %struct.global_State** %g, align 4, !dbg !481
  %19 = getelementptr inbounds %struct.global_State* %18, i32 0, i32 9, !dbg !481
  %20 = load i8* %19, align 1, !dbg !481
  %21 = zext i8 %20 to i32, !dbg !481
  %22 = and i32 %21, 3, !dbg !481
  %23 = trunc i32 %22 to i8, !dbg !481
  %24 = load %struct.lua_State** %L1, align 4, !dbg !481
  %25 = getelementptr inbounds %struct.lua_State* %24, i32 0, i32 2, !dbg !481
  store i8 %23, i8* %25, align 1, !dbg !481
  %26 = load %struct.lua_State** %L1, align 4, !dbg !482
  %27 = getelementptr inbounds %struct.lua_State* %26, i32 0, i32 1, !dbg !482
  store i8 8, i8* %27, align 1, !dbg !482
  %28 = load %struct.global_State** %g, align 4, !dbg !483
  %29 = getelementptr inbounds %struct.global_State* %28, i32 0, i32 13, !dbg !483
  %30 = load %struct.GCObject** %29, align 4, !dbg !483
  %31 = load %struct.lua_State** %L1, align 4, !dbg !483
  %32 = getelementptr inbounds %struct.lua_State* %31, i32 0, i32 0, !dbg !483
  store %struct.GCObject* %30, %struct.GCObject** %32, align 4, !dbg !483
  %33 = load %struct.lua_State** %L1, align 4, !dbg !484
  %34 = bitcast %struct.lua_State* %33 to %union.GCUnion*, !dbg !484
  %35 = bitcast %union.GCUnion* %34 to %struct.GCObject*, !dbg !484
  %36 = load %struct.global_State** %g, align 4, !dbg !484
  %37 = getelementptr inbounds %struct.global_State* %36, i32 0, i32 13, !dbg !484
  store %struct.GCObject* %35, %struct.GCObject** %37, align 4, !dbg !484
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %io}, metadata !485), !dbg !487
  %38 = load %struct.lua_State** %1, align 4, !dbg !487
  %39 = getelementptr inbounds %struct.lua_State* %38, i32 0, i32 5, !dbg !487
  %40 = load %struct.lua_TValue** %39, align 4, !dbg !487
  store %struct.lua_TValue* %40, %struct.lua_TValue** %io, align 4, !dbg !487
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %x_}, metadata !488), !dbg !487
  %41 = load %struct.lua_State** %L1, align 4, !dbg !487
  store %struct.lua_State* %41, %struct.lua_State** %x_, align 4, !dbg !487
  %42 = load %struct.lua_State** %x_, align 4, !dbg !487
  %43 = bitcast %struct.lua_State* %42 to %union.GCUnion*, !dbg !487
  %44 = bitcast %union.GCUnion* %43 to %struct.GCObject*, !dbg !487
  %45 = load %struct.lua_TValue** %io, align 4, !dbg !487
  %46 = getelementptr inbounds %struct.lua_TValue* %45, i32 0, i32 0, !dbg !487
  %47 = bitcast %union.Value* %46 to %struct.GCObject**, !dbg !487
  store %struct.GCObject* %44, %struct.GCObject** %47, align 4, !dbg !487
  %48 = load %struct.lua_TValue** %io, align 4, !dbg !487
  %49 = getelementptr inbounds %struct.lua_TValue* %48, i32 0, i32 1, !dbg !487
  store i32 72, i32* %49, align 4, !dbg !487
  %50 = load %struct.lua_State** %1, align 4, !dbg !489
  %51 = getelementptr inbounds %struct.lua_State* %50, i32 0, i32 5, !dbg !489
  %52 = load %struct.lua_TValue** %51, align 4, !dbg !489
  %53 = getelementptr inbounds %struct.lua_TValue* %52, i32 1, !dbg !489
  store %struct.lua_TValue* %53, %struct.lua_TValue** %51, align 4, !dbg !489
  %54 = load %struct.lua_State** %L1, align 4, !dbg !491
  %55 = load %struct.global_State** %g, align 4, !dbg !491
  call void @preinit_thread(%struct.lua_State* %54, %struct.global_State* %55), !dbg !491
  %56 = load %struct.lua_State** %1, align 4, !dbg !492
  %57 = getelementptr inbounds %struct.lua_State* %56, i32 0, i32 23, !dbg !492
  %58 = load i32* %57, align 4, !dbg !492
  %59 = load %struct.lua_State** %L1, align 4, !dbg !492
  %60 = getelementptr inbounds %struct.lua_State* %59, i32 0, i32 23, !dbg !492
  store i32 %58, i32* %60, align 4, !dbg !492
  %61 = load %struct.lua_State** %1, align 4, !dbg !493
  %62 = getelementptr inbounds %struct.lua_State* %61, i32 0, i32 19, !dbg !493
  %63 = load i32* %62, align 4, !dbg !493
  %64 = load %struct.lua_State** %L1, align 4, !dbg !493
  %65 = getelementptr inbounds %struct.lua_State* %64, i32 0, i32 19, !dbg !493
  store i32 %63, i32* %65, align 4, !dbg !493
  %66 = load %struct.lua_State** %1, align 4, !dbg !494
  %67 = getelementptr inbounds %struct.lua_State* %66, i32 0, i32 16, !dbg !494
  %68 = load volatile void (%struct.lua_State*, %struct.lua_Debug*)** %67, align 4, !dbg !494
  %69 = load %struct.lua_State** %L1, align 4, !dbg !494
  %70 = getelementptr inbounds %struct.lua_State* %69, i32 0, i32 16, !dbg !494
  store volatile void (%struct.lua_State*, %struct.lua_Debug*)* %68, void (%struct.lua_State*, %struct.lua_Debug*)** %70, align 4, !dbg !494
  %71 = load %struct.lua_State** %L1, align 4, !dbg !495
  %72 = getelementptr inbounds %struct.lua_State* %71, i32 0, i32 19, !dbg !495
  %73 = load i32* %72, align 4, !dbg !495
  %74 = load %struct.lua_State** %L1, align 4, !dbg !495
  %75 = getelementptr inbounds %struct.lua_State* %74, i32 0, i32 20, !dbg !495
  store i32 %73, i32* %75, align 4, !dbg !495
  %76 = load %struct.lua_State** %L1, align 4, !dbg !496
  %77 = bitcast %struct.lua_State* %76 to i8*, !dbg !496
  %78 = getelementptr inbounds i8* %77, i32 -4, !dbg !496
  %79 = load %struct.global_State** %g, align 4, !dbg !496
  %80 = getelementptr inbounds %struct.global_State* %79, i32 0, i32 28, !dbg !496
  %81 = load %struct.lua_State** %80, align 4, !dbg !496
  %82 = bitcast %struct.lua_State* %81 to i8*, !dbg !496
  %83 = getelementptr inbounds i8* %82, i32 -4, !dbg !496
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %78, i8* %83, i32 4, i32 1, i1 false), !dbg !496
  %84 = load %struct.lua_State** %1, align 4, !dbg !497
  %85 = load %struct.lua_State** %L1, align 4, !dbg !498
  %86 = load %struct.lua_State** %1, align 4, !dbg !498
  call void @stack_init(%struct.lua_State* %85, %struct.lua_State* %86), !dbg !498
  %87 = load %struct.lua_State** %L1, align 4, !dbg !499
  ret %struct.lua_State* %87, !dbg !499
}

declare hidden void @luaC_step(%struct.lua_State*) #2

; Function Attrs: nounwind
define internal void @preinit_thread(%struct.lua_State* %L, %struct.global_State* %g) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca %struct.global_State*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !500), !dbg !501
  store %struct.global_State* %g, %struct.global_State** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.global_State** %2}, metadata !502), !dbg !503
  %3 = load %struct.global_State** %2, align 4, !dbg !504
  %4 = load %struct.lua_State** %1, align 4, !dbg !504
  %5 = getelementptr inbounds %struct.lua_State* %4, i32 0, i32 6, !dbg !504
  store %struct.global_State* %3, %struct.global_State** %5, align 4, !dbg !504
  %6 = load %struct.lua_State** %1, align 4, !dbg !505
  %7 = getelementptr inbounds %struct.lua_State* %6, i32 0, i32 10, !dbg !505
  store %struct.lua_TValue* null, %struct.lua_TValue** %7, align 4, !dbg !505
  %8 = load %struct.lua_State** %1, align 4, !dbg !506
  %9 = getelementptr inbounds %struct.lua_State* %8, i32 0, i32 7, !dbg !506
  store %struct.CallInfo* null, %struct.CallInfo** %9, align 4, !dbg !506
  %10 = load %struct.lua_State** %1, align 4, !dbg !507
  %11 = getelementptr inbounds %struct.lua_State* %10, i32 0, i32 3, !dbg !507
  store i16 0, i16* %11, align 2, !dbg !507
  %12 = load %struct.lua_State** %1, align 4, !dbg !508
  %13 = getelementptr inbounds %struct.lua_State* %12, i32 0, i32 18, !dbg !508
  store i32 0, i32* %13, align 4, !dbg !508
  %14 = load %struct.lua_State** %1, align 4, !dbg !509
  %15 = load %struct.lua_State** %1, align 4, !dbg !509
  %16 = getelementptr inbounds %struct.lua_State* %15, i32 0, i32 13, !dbg !509
  store %struct.lua_State* %14, %struct.lua_State** %16, align 4, !dbg !509
  %17 = load %struct.lua_State** %1, align 4, !dbg !510
  %18 = getelementptr inbounds %struct.lua_State* %17, i32 0, i32 14, !dbg !510
  store %struct.lua_longjmp* null, %struct.lua_longjmp** %18, align 4, !dbg !510
  %19 = load %struct.lua_State** %1, align 4, !dbg !511
  %20 = getelementptr inbounds %struct.lua_State* %19, i32 0, i32 22, !dbg !511
  store i16 0, i16* %20, align 2, !dbg !511
  %21 = load %struct.lua_State** %1, align 4, !dbg !512
  %22 = getelementptr inbounds %struct.lua_State* %21, i32 0, i32 16, !dbg !512
  store volatile void (%struct.lua_State*, %struct.lua_Debug*)* null, void (%struct.lua_State*, %struct.lua_Debug*)** %22, align 4, !dbg !512
  %23 = load %struct.lua_State** %1, align 4, !dbg !513
  %24 = getelementptr inbounds %struct.lua_State* %23, i32 0, i32 23, !dbg !513
  store i32 0, i32* %24, align 4, !dbg !513
  %25 = load %struct.lua_State** %1, align 4, !dbg !514
  %26 = getelementptr inbounds %struct.lua_State* %25, i32 0, i32 19, !dbg !514
  store i32 0, i32* %26, align 4, !dbg !514
  %27 = load %struct.lua_State** %1, align 4, !dbg !515
  %28 = getelementptr inbounds %struct.lua_State* %27, i32 0, i32 24, !dbg !515
  store i8 1, i8* %28, align 1, !dbg !515
  %29 = load %struct.lua_State** %1, align 4, !dbg !516
  %30 = getelementptr inbounds %struct.lua_State* %29, i32 0, i32 19, !dbg !516
  %31 = load i32* %30, align 4, !dbg !516
  %32 = load %struct.lua_State** %1, align 4, !dbg !516
  %33 = getelementptr inbounds %struct.lua_State* %32, i32 0, i32 20, !dbg !516
  store i32 %31, i32* %33, align 4, !dbg !516
  %34 = load %struct.lua_State** %1, align 4, !dbg !517
  %35 = getelementptr inbounds %struct.lua_State* %34, i32 0, i32 11, !dbg !517
  store %struct.UpVal* null, %struct.UpVal** %35, align 4, !dbg !517
  %36 = load %struct.lua_State** %1, align 4, !dbg !518
  %37 = getelementptr inbounds %struct.lua_State* %36, i32 0, i32 21, !dbg !518
  store i16 1, i16* %37, align 2, !dbg !518
  %38 = load %struct.lua_State** %1, align 4, !dbg !519
  %39 = getelementptr inbounds %struct.lua_State* %38, i32 0, i32 4, !dbg !519
  store i8 0, i8* %39, align 1, !dbg !519
  %40 = load %struct.lua_State** %1, align 4, !dbg !520
  %41 = getelementptr inbounds %struct.lua_State* %40, i32 0, i32 17, !dbg !520
  store i32 0, i32* %41, align 4, !dbg !520
  ret void, !dbg !521
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture, i8* nocapture readonly, i32, i32, i1) #3

; Function Attrs: nounwind
define internal void @stack_init(%struct.lua_State* %L1, %struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca %struct.lua_State*, align 4
  %i = alloca i32, align 4
  %ci = alloca %struct.CallInfo*, align 4
  store %struct.lua_State* %L1, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !522), !dbg !523
  store %struct.lua_State* %L, %struct.lua_State** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %2}, metadata !524), !dbg !525
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !526), !dbg !527
  call void @llvm.dbg.declare(metadata !{%struct.CallInfo** %ci}, metadata !528), !dbg !529
  %3 = load %struct.lua_State** %2, align 4, !dbg !530
  %4 = call i8* @luaM_realloc_(%struct.lua_State* %3, i8* null, i32 0, i32 640), !dbg !530
  %5 = bitcast i8* %4 to %struct.lua_TValue*, !dbg !530
  %6 = load %struct.lua_State** %1, align 4, !dbg !530
  %7 = getelementptr inbounds %struct.lua_State* %6, i32 0, i32 10, !dbg !530
  store %struct.lua_TValue* %5, %struct.lua_TValue** %7, align 4, !dbg !530
  %8 = load %struct.lua_State** %1, align 4, !dbg !531
  %9 = getelementptr inbounds %struct.lua_State* %8, i32 0, i32 18, !dbg !531
  store i32 40, i32* %9, align 4, !dbg !531
  store i32 0, i32* %i, align 4, !dbg !532
  br label %10, !dbg !532

; <label>:10                                      ; preds = %20, %0
  %11 = load i32* %i, align 4, !dbg !534
  %12 = icmp slt i32 %11, 40, !dbg !534
  br i1 %12, label %13, label %23, !dbg !534

; <label>:13                                      ; preds = %10
  %14 = load %struct.lua_State** %1, align 4, !dbg !537
  %15 = getelementptr inbounds %struct.lua_State* %14, i32 0, i32 10, !dbg !537
  %16 = load %struct.lua_TValue** %15, align 4, !dbg !537
  %17 = load i32* %i, align 4, !dbg !537
  %18 = getelementptr inbounds %struct.lua_TValue* %16, i32 %17, !dbg !537
  %19 = getelementptr inbounds %struct.lua_TValue* %18, i32 0, i32 1, !dbg !537
  store i32 0, i32* %19, align 4, !dbg !537
  br label %20, !dbg !537

; <label>:20                                      ; preds = %13
  %21 = load i32* %i, align 4, !dbg !538
  %22 = add nsw i32 %21, 1, !dbg !538
  store i32 %22, i32* %i, align 4, !dbg !538
  br label %10, !dbg !538

; <label>:23                                      ; preds = %10
  %24 = load %struct.lua_State** %1, align 4, !dbg !539
  %25 = getelementptr inbounds %struct.lua_State* %24, i32 0, i32 10, !dbg !539
  %26 = load %struct.lua_TValue** %25, align 4, !dbg !539
  %27 = load %struct.lua_State** %1, align 4, !dbg !539
  %28 = getelementptr inbounds %struct.lua_State* %27, i32 0, i32 5, !dbg !539
  store %struct.lua_TValue* %26, %struct.lua_TValue** %28, align 4, !dbg !539
  %29 = load %struct.lua_State** %1, align 4, !dbg !540
  %30 = getelementptr inbounds %struct.lua_State* %29, i32 0, i32 10, !dbg !540
  %31 = load %struct.lua_TValue** %30, align 4, !dbg !540
  %32 = load %struct.lua_State** %1, align 4, !dbg !540
  %33 = getelementptr inbounds %struct.lua_State* %32, i32 0, i32 18, !dbg !540
  %34 = load i32* %33, align 4, !dbg !540
  %35 = getelementptr inbounds %struct.lua_TValue* %31, i32 %34, !dbg !540
  %36 = getelementptr inbounds %struct.lua_TValue* %35, i32 -5, !dbg !540
  %37 = load %struct.lua_State** %1, align 4, !dbg !540
  %38 = getelementptr inbounds %struct.lua_State* %37, i32 0, i32 9, !dbg !540
  store %struct.lua_TValue* %36, %struct.lua_TValue** %38, align 4, !dbg !540
  %39 = load %struct.lua_State** %1, align 4, !dbg !541
  %40 = getelementptr inbounds %struct.lua_State* %39, i32 0, i32 15, !dbg !541
  store %struct.CallInfo* %40, %struct.CallInfo** %ci, align 4, !dbg !541
  %41 = load %struct.CallInfo** %ci, align 4, !dbg !542
  %42 = getelementptr inbounds %struct.CallInfo* %41, i32 0, i32 2, !dbg !542
  store %struct.CallInfo* null, %struct.CallInfo** %42, align 4, !dbg !542
  %43 = load %struct.CallInfo** %ci, align 4, !dbg !542
  %44 = getelementptr inbounds %struct.CallInfo* %43, i32 0, i32 3, !dbg !542
  store %struct.CallInfo* null, %struct.CallInfo** %44, align 4, !dbg !542
  %45 = load %struct.CallInfo** %ci, align 4, !dbg !543
  %46 = getelementptr inbounds %struct.CallInfo* %45, i32 0, i32 7, !dbg !543
  store i8 0, i8* %46, align 1, !dbg !543
  %47 = load %struct.lua_State** %1, align 4, !dbg !544
  %48 = getelementptr inbounds %struct.lua_State* %47, i32 0, i32 5, !dbg !544
  %49 = load %struct.lua_TValue** %48, align 4, !dbg !544
  %50 = load %struct.CallInfo** %ci, align 4, !dbg !544
  %51 = getelementptr inbounds %struct.CallInfo* %50, i32 0, i32 0, !dbg !544
  store %struct.lua_TValue* %49, %struct.lua_TValue** %51, align 4, !dbg !544
  %52 = load %struct.lua_State** %1, align 4, !dbg !545
  %53 = getelementptr inbounds %struct.lua_State* %52, i32 0, i32 5, !dbg !545
  %54 = load %struct.lua_TValue** %53, align 4, !dbg !545
  %55 = getelementptr inbounds %struct.lua_TValue* %54, i32 1, !dbg !545
  store %struct.lua_TValue* %55, %struct.lua_TValue** %53, align 4, !dbg !545
  %56 = getelementptr inbounds %struct.lua_TValue* %54, i32 0, i32 1, !dbg !545
  store i32 0, i32* %56, align 4, !dbg !545
  %57 = load %struct.lua_State** %1, align 4, !dbg !546
  %58 = getelementptr inbounds %struct.lua_State* %57, i32 0, i32 5, !dbg !546
  %59 = load %struct.lua_TValue** %58, align 4, !dbg !546
  %60 = getelementptr inbounds %struct.lua_TValue* %59, i32 20, !dbg !546
  %61 = load %struct.CallInfo** %ci, align 4, !dbg !546
  %62 = getelementptr inbounds %struct.CallInfo* %61, i32 0, i32 1, !dbg !546
  store %struct.lua_TValue* %60, %struct.lua_TValue** %62, align 4, !dbg !546
  %63 = load %struct.CallInfo** %ci, align 4, !dbg !547
  %64 = load %struct.lua_State** %1, align 4, !dbg !547
  %65 = getelementptr inbounds %struct.lua_State* %64, i32 0, i32 7, !dbg !547
  store %struct.CallInfo* %63, %struct.CallInfo** %65, align 4, !dbg !547
  ret void, !dbg !548
}

; Function Attrs: nounwind
define hidden void @luaE_freethread(%struct.lua_State* %L, %struct.lua_State* %L1) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca %struct.lua_State*, align 4
  %l = alloca %struct.LX*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !549), !dbg !550
  store %struct.lua_State* %L1, %struct.lua_State** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %2}, metadata !551), !dbg !552
  call void @llvm.dbg.declare(metadata !{%struct.LX** %l}, metadata !553), !dbg !563
  %3 = load %struct.lua_State** %2, align 4, !dbg !564
  %4 = bitcast %struct.lua_State* %3 to i8*, !dbg !564
  %5 = getelementptr inbounds i8* %4, i32 -4, !dbg !564
  %6 = bitcast i8* %5 to %struct.LX*, !dbg !564
  store %struct.LX* %6, %struct.LX** %l, align 4, !dbg !564
  %7 = load %struct.lua_State** %2, align 4, !dbg !565
  %8 = load %struct.lua_State** %2, align 4, !dbg !565
  %9 = getelementptr inbounds %struct.lua_State* %8, i32 0, i32 10, !dbg !565
  %10 = load %struct.lua_TValue** %9, align 4, !dbg !565
  call void @luaF_close(%struct.lua_State* %7, %struct.lua_TValue* %10), !dbg !565
  %11 = load %struct.lua_State** %1, align 4, !dbg !566
  %12 = load %struct.lua_State** %2, align 4, !dbg !567
  call void @freestack(%struct.lua_State* %12), !dbg !567
  %13 = load %struct.lua_State** %1, align 4, !dbg !568
  %14 = load %struct.LX** %l, align 4, !dbg !568
  %15 = bitcast %struct.LX* %14 to i8*, !dbg !568
  %16 = call i8* @luaM_realloc_(%struct.lua_State* %13, i8* %15, i32 124, i32 0), !dbg !568
  ret void, !dbg !569
}

declare hidden void @luaF_close(%struct.lua_State*, %struct.lua_TValue*) #2

; Function Attrs: nounwind
define internal void @freestack(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !570), !dbg !571
  %2 = load %struct.lua_State** %1, align 4, !dbg !572
  %3 = getelementptr inbounds %struct.lua_State* %2, i32 0, i32 10, !dbg !572
  %4 = load %struct.lua_TValue** %3, align 4, !dbg !572
  %5 = icmp eq %struct.lua_TValue* %4, null, !dbg !572
  br i1 %5, label %6, label %7, !dbg !572

; <label>:6                                       ; preds = %0
  br label %23, !dbg !574

; <label>:7                                       ; preds = %0
  %8 = load %struct.lua_State** %1, align 4, !dbg !575
  %9 = getelementptr inbounds %struct.lua_State* %8, i32 0, i32 15, !dbg !575
  %10 = load %struct.lua_State** %1, align 4, !dbg !575
  %11 = getelementptr inbounds %struct.lua_State* %10, i32 0, i32 7, !dbg !575
  store %struct.CallInfo* %9, %struct.CallInfo** %11, align 4, !dbg !575
  %12 = load %struct.lua_State** %1, align 4, !dbg !576
  call void @luaE_freeCI(%struct.lua_State* %12), !dbg !576
  %13 = load %struct.lua_State** %1, align 4, !dbg !577
  %14 = load %struct.lua_State** %1, align 4, !dbg !577
  %15 = getelementptr inbounds %struct.lua_State* %14, i32 0, i32 10, !dbg !577
  %16 = load %struct.lua_TValue** %15, align 4, !dbg !577
  %17 = bitcast %struct.lua_TValue* %16 to i8*, !dbg !577
  %18 = load %struct.lua_State** %1, align 4, !dbg !577
  %19 = getelementptr inbounds %struct.lua_State* %18, i32 0, i32 18, !dbg !577
  %20 = load i32* %19, align 4, !dbg !577
  %21 = mul i32 %20, 16, !dbg !577
  %22 = call i8* @luaM_realloc_(%struct.lua_State* %13, i8* %17, i32 %21, i32 0), !dbg !577
  br label %23, !dbg !578

; <label>:23                                      ; preds = %7, %6
  ret void, !dbg !579
}

; Function Attrs: nounwind
define %struct.lua_State* @lua_newstate(i8* (i8*, i8*, i32, i32)* %f, i8* %ud) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca i8* (i8*, i8*, i32, i32)*, align 4
  %3 = alloca i8*, align 4
  %i = alloca i32, align 4
  %L = alloca %struct.lua_State*, align 4
  %g = alloca %struct.global_State*, align 4
  %l = alloca %struct.LG*, align 4
  store i8* (i8*, i8*, i32, i32)* %f, i8* (i8*, i8*, i32, i32)** %2, align 4
  call void @llvm.dbg.declare(metadata !{i8* (i8*, i8*, i32, i32)** %2}, metadata !581), !dbg !582
  store i8* %ud, i8** %3, align 4
  call void @llvm.dbg.declare(metadata !{i8** %3}, metadata !583), !dbg !584
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !585), !dbg !586
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %L}, metadata !587), !dbg !588
  call void @llvm.dbg.declare(metadata !{%struct.global_State** %g}, metadata !589), !dbg !590
  call void @llvm.dbg.declare(metadata !{%struct.LG** %l}, metadata !591), !dbg !598
  %4 = load i8* (i8*, i8*, i32, i32)** %2, align 4, !dbg !599
  %5 = load i8** %3, align 4, !dbg !599
  %6 = call i8* %4(i8* %5, i8* null, i32 8, i32 824), !dbg !599
  %7 = bitcast i8* %6 to %struct.LG*, !dbg !599
  store %struct.LG* %7, %struct.LG** %l, align 4, !dbg !599
  %8 = load %struct.LG** %l, align 4, !dbg !600
  %9 = icmp eq %struct.LG* %8, null, !dbg !600
  br i1 %9, label %10, label %11, !dbg !600

; <label>:10                                      ; preds = %0
  store %struct.lua_State* null, %struct.lua_State** %1, !dbg !602
  br label %121, !dbg !602

; <label>:11                                      ; preds = %0
  %12 = load %struct.LG** %l, align 4, !dbg !604
  %13 = getelementptr inbounds %struct.LG* %12, i32 0, i32 0, !dbg !604
  %14 = getelementptr inbounds %struct.LX* %13, i32 0, i32 1, !dbg !604
  store %struct.lua_State* %14, %struct.lua_State** %L, align 4, !dbg !604
  %15 = load %struct.LG** %l, align 4, !dbg !605
  %16 = getelementptr inbounds %struct.LG* %15, i32 0, i32 1, !dbg !605
  store %struct.global_State* %16, %struct.global_State** %g, align 4, !dbg !605
  %17 = load %struct.lua_State** %L, align 4, !dbg !606
  %18 = getelementptr inbounds %struct.lua_State* %17, i32 0, i32 0, !dbg !606
  store %struct.GCObject* null, %struct.GCObject** %18, align 4, !dbg !606
  %19 = load %struct.lua_State** %L, align 4, !dbg !607
  %20 = getelementptr inbounds %struct.lua_State* %19, i32 0, i32 1, !dbg !607
  store i8 8, i8* %20, align 1, !dbg !607
  %21 = load %struct.global_State** %g, align 4, !dbg !608
  %22 = getelementptr inbounds %struct.global_State* %21, i32 0, i32 9, !dbg !608
  store i8 1, i8* %22, align 1, !dbg !608
  %23 = load %struct.global_State** %g, align 4, !dbg !609
  %24 = getelementptr inbounds %struct.global_State* %23, i32 0, i32 9, !dbg !609
  %25 = load i8* %24, align 1, !dbg !609
  %26 = zext i8 %25 to i32, !dbg !609
  %27 = and i32 %26, 3, !dbg !609
  %28 = trunc i32 %27 to i8, !dbg !609
  %29 = load %struct.lua_State** %L, align 4, !dbg !609
  %30 = getelementptr inbounds %struct.lua_State* %29, i32 0, i32 2, !dbg !609
  store i8 %28, i8* %30, align 1, !dbg !609
  %31 = load %struct.lua_State** %L, align 4, !dbg !610
  %32 = load %struct.global_State** %g, align 4, !dbg !610
  call void @preinit_thread(%struct.lua_State* %31, %struct.global_State* %32), !dbg !610
  %33 = load i8* (i8*, i8*, i32, i32)** %2, align 4, !dbg !611
  %34 = load %struct.global_State** %g, align 4, !dbg !611
  %35 = getelementptr inbounds %struct.global_State* %34, i32 0, i32 0, !dbg !611
  store i8* (i8*, i8*, i32, i32)* %33, i8* (i8*, i8*, i32, i32)** %35, align 4, !dbg !611
  %36 = load i8** %3, align 4, !dbg !612
  %37 = load %struct.global_State** %g, align 4, !dbg !612
  %38 = getelementptr inbounds %struct.global_State* %37, i32 0, i32 1, !dbg !612
  store i8* %36, i8** %38, align 4, !dbg !612
  %39 = load %struct.lua_State** %L, align 4, !dbg !613
  %40 = load %struct.global_State** %g, align 4, !dbg !613
  %41 = getelementptr inbounds %struct.global_State* %40, i32 0, i32 28, !dbg !613
  store %struct.lua_State* %39, %struct.lua_State** %41, align 4, !dbg !613
  %42 = load %struct.lua_State** %L, align 4, !dbg !614
  %43 = call i32 @makeseed(%struct.lua_State* %42), !dbg !614
  %44 = load %struct.global_State** %g, align 4, !dbg !614
  %45 = getelementptr inbounds %struct.global_State* %44, i32 0, i32 8, !dbg !614
  store i32 %43, i32* %45, align 4, !dbg !614
  %46 = load %struct.global_State** %g, align 4, !dbg !615
  %47 = getelementptr inbounds %struct.global_State* %46, i32 0, i32 12, !dbg !615
  store i8 0, i8* %47, align 1, !dbg !615
  %48 = load %struct.global_State** %g, align 4, !dbg !616
  %49 = getelementptr inbounds %struct.global_State* %48, i32 0, i32 5, !dbg !616
  store i32 0, i32* %49, align 4, !dbg !616
  %50 = load %struct.global_State** %g, align 4, !dbg !617
  %51 = getelementptr inbounds %struct.global_State* %50, i32 0, i32 6, !dbg !617
  %52 = getelementptr inbounds %struct.stringtable* %51, i32 0, i32 1, !dbg !617
  store i32 0, i32* %52, align 4, !dbg !617
  %53 = load %struct.global_State** %g, align 4, !dbg !617
  %54 = getelementptr inbounds %struct.global_State* %53, i32 0, i32 6, !dbg !617
  %55 = getelementptr inbounds %struct.stringtable* %54, i32 0, i32 2, !dbg !617
  store i32 0, i32* %55, align 4, !dbg !617
  %56 = load %struct.global_State** %g, align 4, !dbg !618
  %57 = getelementptr inbounds %struct.global_State* %56, i32 0, i32 6, !dbg !618
  %58 = getelementptr inbounds %struct.stringtable* %57, i32 0, i32 0, !dbg !618
  store %struct.TString** null, %struct.TString*** %58, align 4, !dbg !618
  %59 = load %struct.global_State** %g, align 4, !dbg !619
  %60 = getelementptr inbounds %struct.global_State* %59, i32 0, i32 7, !dbg !619
  %61 = getelementptr inbounds %struct.lua_TValue* %60, i32 0, i32 1, !dbg !619
  store i32 0, i32* %61, align 4, !dbg !619
  %62 = load %struct.global_State** %g, align 4, !dbg !620
  %63 = getelementptr inbounds %struct.global_State* %62, i32 0, i32 27, !dbg !620
  store i32 (%struct.lua_State*)* null, i32 (%struct.lua_State*)** %63, align 4, !dbg !620
  %64 = load %struct.global_State** %g, align 4, !dbg !621
  %65 = getelementptr inbounds %struct.global_State* %64, i32 0, i32 29, !dbg !621
  store double* null, double** %65, align 4, !dbg !621
  %66 = load %struct.global_State** %g, align 4, !dbg !622
  %67 = getelementptr inbounds %struct.global_State* %66, i32 0, i32 10, !dbg !622
  store i8 7, i8* %67, align 1, !dbg !622
  %68 = load %struct.global_State** %g, align 4, !dbg !623
  %69 = getelementptr inbounds %struct.global_State* %68, i32 0, i32 11, !dbg !623
  store i8 0, i8* %69, align 1, !dbg !623
  %70 = load %struct.global_State** %g, align 4, !dbg !624
  %71 = getelementptr inbounds %struct.global_State* %70, i32 0, i32 22, !dbg !624
  store %struct.GCObject* null, %struct.GCObject** %71, align 4, !dbg !624
  %72 = load %struct.global_State** %g, align 4, !dbg !624
  %73 = getelementptr inbounds %struct.global_State* %72, i32 0, i32 21, !dbg !624
  store %struct.GCObject* null, %struct.GCObject** %73, align 4, !dbg !624
  %74 = load %struct.global_State** %g, align 4, !dbg !624
  %75 = getelementptr inbounds %struct.global_State* %74, i32 0, i32 15, !dbg !624
  store %struct.GCObject* null, %struct.GCObject** %75, align 4, !dbg !624
  %76 = load %struct.global_State** %g, align 4, !dbg !624
  %77 = getelementptr inbounds %struct.global_State* %76, i32 0, i32 13, !dbg !624
  store %struct.GCObject* null, %struct.GCObject** %77, align 4, !dbg !624
  %78 = load %struct.global_State** %g, align 4, !dbg !625
  %79 = getelementptr inbounds %struct.global_State* %78, i32 0, i32 14, !dbg !625
  store %struct.GCObject** null, %struct.GCObject*** %79, align 4, !dbg !625
  %80 = load %struct.global_State** %g, align 4, !dbg !626
  %81 = getelementptr inbounds %struct.global_State* %80, i32 0, i32 17, !dbg !626
  store %struct.GCObject* null, %struct.GCObject** %81, align 4, !dbg !626
  %82 = load %struct.global_State** %g, align 4, !dbg !626
  %83 = getelementptr inbounds %struct.global_State* %82, i32 0, i32 16, !dbg !626
  store %struct.GCObject* null, %struct.GCObject** %83, align 4, !dbg !626
  %84 = load %struct.global_State** %g, align 4, !dbg !627
  %85 = getelementptr inbounds %struct.global_State* %84, i32 0, i32 20, !dbg !627
  store %struct.GCObject* null, %struct.GCObject** %85, align 4, !dbg !627
  %86 = load %struct.global_State** %g, align 4, !dbg !627
  %87 = getelementptr inbounds %struct.global_State* %86, i32 0, i32 19, !dbg !627
  store %struct.GCObject* null, %struct.GCObject** %87, align 4, !dbg !627
  %88 = load %struct.global_State** %g, align 4, !dbg !627
  %89 = getelementptr inbounds %struct.global_State* %88, i32 0, i32 18, !dbg !627
  store %struct.GCObject* null, %struct.GCObject** %89, align 4, !dbg !627
  %90 = load %struct.global_State** %g, align 4, !dbg !628
  %91 = getelementptr inbounds %struct.global_State* %90, i32 0, i32 23, !dbg !628
  store %struct.lua_State* null, %struct.lua_State** %91, align 4, !dbg !628
  %92 = load %struct.global_State** %g, align 4, !dbg !629
  %93 = getelementptr inbounds %struct.global_State* %92, i32 0, i32 2, !dbg !629
  store i32 824, i32* %93, align 4, !dbg !629
  %94 = load %struct.global_State** %g, align 4, !dbg !630
  %95 = getelementptr inbounds %struct.global_State* %94, i32 0, i32 3, !dbg !630
  store i32 0, i32* %95, align 4, !dbg !630
  %96 = load %struct.global_State** %g, align 4, !dbg !631
  %97 = getelementptr inbounds %struct.global_State* %96, i32 0, i32 24, !dbg !631
  store i32 0, i32* %97, align 4, !dbg !631
  %98 = load %struct.global_State** %g, align 4, !dbg !632
  %99 = getelementptr inbounds %struct.global_State* %98, i32 0, i32 25, !dbg !632
  store i32 200, i32* %99, align 4, !dbg !632
  %100 = load %struct.global_State** %g, align 4, !dbg !633
  %101 = getelementptr inbounds %struct.global_State* %100, i32 0, i32 26, !dbg !633
  store i32 200, i32* %101, align 4, !dbg !633
  store i32 0, i32* %i, align 4, !dbg !634
  br label %102, !dbg !634

; <label>:102                                     ; preds = %110, %11
  %103 = load i32* %i, align 4, !dbg !636
  %104 = icmp slt i32 %103, 9, !dbg !636
  br i1 %104, label %105, label %113, !dbg !636

; <label>:105                                     ; preds = %102
  %106 = load i32* %i, align 4, !dbg !639
  %107 = load %struct.global_State** %g, align 4, !dbg !639
  %108 = getelementptr inbounds %struct.global_State* %107, i32 0, i32 32, !dbg !639
  %109 = getelementptr inbounds [9 x %struct.Table*]* %108, i32 0, i32 %106, !dbg !639
  store %struct.Table* null, %struct.Table** %109, align 4, !dbg !639
  br label %110, !dbg !639

; <label>:110                                     ; preds = %105
  %111 = load i32* %i, align 4, !dbg !641
  %112 = add nsw i32 %111, 1, !dbg !641
  store i32 %112, i32* %i, align 4, !dbg !641
  br label %102, !dbg !641

; <label>:113                                     ; preds = %102
  %114 = load %struct.lua_State** %L, align 4, !dbg !643
  %115 = call i32 @luaD_rawrunprotected(%struct.lua_State* %114, void (%struct.lua_State*, i8*)* @f_luaopen, i8* null), !dbg !643
  %116 = icmp ne i32 %115, 0, !dbg !643
  br i1 %116, label %117, label %119, !dbg !643

; <label>:117                                     ; preds = %113
  %118 = load %struct.lua_State** %L, align 4, !dbg !645
  call void @close_state(%struct.lua_State* %118), !dbg !645
  store %struct.lua_State* null, %struct.lua_State** %L, align 4, !dbg !647
  br label %119, !dbg !648

; <label>:119                                     ; preds = %117, %113
  %120 = load %struct.lua_State** %L, align 4, !dbg !649
  store %struct.lua_State* %120, %struct.lua_State** %1, !dbg !649
  br label %121, !dbg !649

; <label>:121                                     ; preds = %119, %10
  %122 = load %struct.lua_State** %1, !dbg !650
  ret %struct.lua_State* %122, !dbg !650
}

; Function Attrs: nounwind
define internal i32 @makeseed(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %buff = alloca [16 x i8], align 1
  %h = alloca i32, align 4
  %p = alloca i32, align 4
  %t = alloca i32, align 4
  %t1 = alloca i32, align 4
  %t2 = alloca i32, align 4
  %t3 = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !651), !dbg !652
  call void @llvm.dbg.declare(metadata !{[16 x i8]* %buff}, metadata !653), !dbg !657
  call void @llvm.dbg.declare(metadata !{i32* %h}, metadata !658), !dbg !659
  %2 = call i32 @time(i32* null) #3, !dbg !660
  store i32 %2, i32* %h, align 4, !dbg !660
  call void @llvm.dbg.declare(metadata !{i32* %p}, metadata !661), !dbg !662
  store i32 0, i32* %p, align 4, !dbg !663
  call void @llvm.dbg.declare(metadata !{i32* %t}, metadata !664), !dbg !666
  %3 = load %struct.lua_State** %1, align 4, !dbg !666
  %4 = ptrtoint %struct.lua_State* %3 to i32, !dbg !666
  store i32 %4, i32* %t, align 4, !dbg !666
  %5 = getelementptr inbounds [16 x i8]* %buff, i32 0, i32 0, !dbg !666
  %6 = load i32* %p, align 4, !dbg !666
  %7 = getelementptr inbounds i8* %5, i32 %6, !dbg !666
  %8 = bitcast i32* %t to i8*, !dbg !666
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %7, i8* %8, i32 4, i32 1, i1 false), !dbg !666
  %9 = load i32* %p, align 4, !dbg !666
  %10 = add i32 %9, 4, !dbg !666
  store i32 %10, i32* %p, align 4, !dbg !666
  call void @llvm.dbg.declare(metadata !{i32* %t1}, metadata !667), !dbg !669
  %11 = ptrtoint i32* %h to i32, !dbg !669
  store i32 %11, i32* %t1, align 4, !dbg !669
  %12 = getelementptr inbounds [16 x i8]* %buff, i32 0, i32 0, !dbg !669
  %13 = load i32* %p, align 4, !dbg !669
  %14 = getelementptr inbounds i8* %12, i32 %13, !dbg !669
  %15 = bitcast i32* %t1 to i8*, !dbg !669
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %14, i8* %15, i32 4, i32 1, i1 false), !dbg !669
  %16 = load i32* %p, align 4, !dbg !669
  %17 = add i32 %16, 4, !dbg !669
  store i32 %17, i32* %p, align 4, !dbg !669
  call void @llvm.dbg.declare(metadata !{i32* %t2}, metadata !670), !dbg !672
  store i32 ptrtoint (%struct.lua_TValue* @luaO_nilobject_ to i32), i32* %t2, align 4, !dbg !672
  %18 = getelementptr inbounds [16 x i8]* %buff, i32 0, i32 0, !dbg !672
  %19 = load i32* %p, align 4, !dbg !672
  %20 = getelementptr inbounds i8* %18, i32 %19, !dbg !672
  %21 = bitcast i32* %t2 to i8*, !dbg !672
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %20, i8* %21, i32 4, i32 1, i1 false), !dbg !672
  %22 = load i32* %p, align 4, !dbg !672
  %23 = add i32 %22, 4, !dbg !672
  store i32 %23, i32* %p, align 4, !dbg !672
  call void @llvm.dbg.declare(metadata !{i32* %t3}, metadata !673), !dbg !675
  store i32 ptrtoint (%struct.lua_State* (i8* (i8*, i8*, i32, i32)*, i8*)* @lua_newstate to i32), i32* %t3, align 4, !dbg !675
  %24 = getelementptr inbounds [16 x i8]* %buff, i32 0, i32 0, !dbg !675
  %25 = load i32* %p, align 4, !dbg !675
  %26 = getelementptr inbounds i8* %24, i32 %25, !dbg !675
  %27 = bitcast i32* %t3 to i8*, !dbg !675
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %26, i8* %27, i32 4, i32 1, i1 false), !dbg !675
  %28 = load i32* %p, align 4, !dbg !675
  %29 = add i32 %28, 4, !dbg !675
  store i32 %29, i32* %p, align 4, !dbg !675
  %30 = getelementptr inbounds [16 x i8]* %buff, i32 0, i32 0, !dbg !676
  %31 = load i32* %p, align 4, !dbg !676
  %32 = load i32* %h, align 4, !dbg !676
  %33 = call i32 @luaS_hash(i8* %30, i32 %31, i32 %32), !dbg !676
  ret i32 %33, !dbg !676
}

declare hidden i32 @luaD_rawrunprotected(%struct.lua_State*, void (%struct.lua_State*, i8*)*, i8*) #2

; Function Attrs: nounwind
define internal void @f_luaopen(%struct.lua_State* %L, i8* %ud) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca i8*, align 4
  %g = alloca %struct.global_State*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !677), !dbg !678
  store i8* %ud, i8** %2, align 4
  call void @llvm.dbg.declare(metadata !{i8** %2}, metadata !679), !dbg !680
  call void @llvm.dbg.declare(metadata !{%struct.global_State** %g}, metadata !681), !dbg !682
  %3 = load %struct.lua_State** %1, align 4, !dbg !683
  %4 = getelementptr inbounds %struct.lua_State* %3, i32 0, i32 6, !dbg !683
  %5 = load %struct.global_State** %4, align 4, !dbg !683
  store %struct.global_State* %5, %struct.global_State** %g, align 4, !dbg !683
  %6 = load i8** %2, align 4, !dbg !684
  %7 = load %struct.lua_State** %1, align 4, !dbg !685
  %8 = load %struct.lua_State** %1, align 4, !dbg !685
  call void @stack_init(%struct.lua_State* %7, %struct.lua_State* %8), !dbg !685
  %9 = load %struct.lua_State** %1, align 4, !dbg !686
  %10 = load %struct.global_State** %g, align 4, !dbg !686
  call void @init_registry(%struct.lua_State* %9, %struct.global_State* %10), !dbg !686
  %11 = load %struct.lua_State** %1, align 4, !dbg !687
  call void @luaS_init(%struct.lua_State* %11), !dbg !687
  %12 = load %struct.lua_State** %1, align 4, !dbg !688
  call void @luaT_init(%struct.lua_State* %12), !dbg !688
  %13 = load %struct.lua_State** %1, align 4, !dbg !689
  call void @luaX_init(%struct.lua_State* %13), !dbg !689
  %14 = load %struct.global_State** %g, align 4, !dbg !690
  %15 = getelementptr inbounds %struct.global_State* %14, i32 0, i32 12, !dbg !690
  store i8 1, i8* %15, align 1, !dbg !690
  %16 = call double* @lua_version(%struct.lua_State* null), !dbg !691
  %17 = load %struct.global_State** %g, align 4, !dbg !691
  %18 = getelementptr inbounds %struct.global_State* %17, i32 0, i32 29, !dbg !691
  store double* %16, double** %18, align 4, !dbg !691
  %19 = load %struct.lua_State** %1, align 4, !dbg !692
  ret void, !dbg !693
}

; Function Attrs: nounwind
define internal void @close_state(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %g = alloca %struct.global_State*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !694), !dbg !695
  call void @llvm.dbg.declare(metadata !{%struct.global_State** %g}, metadata !696), !dbg !697
  %2 = load %struct.lua_State** %1, align 4, !dbg !698
  %3 = getelementptr inbounds %struct.lua_State* %2, i32 0, i32 6, !dbg !698
  %4 = load %struct.global_State** %3, align 4, !dbg !698
  store %struct.global_State* %4, %struct.global_State** %g, align 4, !dbg !698
  %5 = load %struct.lua_State** %1, align 4, !dbg !699
  %6 = load %struct.lua_State** %1, align 4, !dbg !699
  %7 = getelementptr inbounds %struct.lua_State* %6, i32 0, i32 10, !dbg !699
  %8 = load %struct.lua_TValue** %7, align 4, !dbg !699
  call void @luaF_close(%struct.lua_State* %5, %struct.lua_TValue* %8), !dbg !699
  %9 = load %struct.lua_State** %1, align 4, !dbg !700
  call void @luaC_freeallobjects(%struct.lua_State* %9), !dbg !700
  %10 = load %struct.global_State** %g, align 4, !dbg !701
  %11 = getelementptr inbounds %struct.global_State* %10, i32 0, i32 29, !dbg !701
  %12 = load double** %11, align 4, !dbg !701
  %13 = icmp ne double* %12, null, !dbg !701
  br i1 %13, label %14, label %16, !dbg !701

; <label>:14                                      ; preds = %0
  %15 = load %struct.lua_State** %1, align 4, !dbg !703
  br label %16, !dbg !703

; <label>:16                                      ; preds = %14, %0
  %17 = load %struct.lua_State** %1, align 4, !dbg !704
  %18 = load %struct.lua_State** %1, align 4, !dbg !704
  %19 = getelementptr inbounds %struct.lua_State* %18, i32 0, i32 6, !dbg !704
  %20 = load %struct.global_State** %19, align 4, !dbg !704
  %21 = getelementptr inbounds %struct.global_State* %20, i32 0, i32 6, !dbg !704
  %22 = getelementptr inbounds %struct.stringtable* %21, i32 0, i32 0, !dbg !704
  %23 = load %struct.TString*** %22, align 4, !dbg !704
  %24 = bitcast %struct.TString** %23 to i8*, !dbg !704
  %25 = load %struct.lua_State** %1, align 4, !dbg !704
  %26 = getelementptr inbounds %struct.lua_State* %25, i32 0, i32 6, !dbg !704
  %27 = load %struct.global_State** %26, align 4, !dbg !704
  %28 = getelementptr inbounds %struct.global_State* %27, i32 0, i32 6, !dbg !704
  %29 = getelementptr inbounds %struct.stringtable* %28, i32 0, i32 2, !dbg !704
  %30 = load i32* %29, align 4, !dbg !704
  %31 = mul i32 %30, 4, !dbg !704
  %32 = call i8* @luaM_realloc_(%struct.lua_State* %17, i8* %24, i32 %31, i32 0), !dbg !704
  %33 = load %struct.lua_State** %1, align 4, !dbg !705
  call void @freestack(%struct.lua_State* %33), !dbg !705
  %34 = load %struct.global_State** %g, align 4, !dbg !706
  %35 = getelementptr inbounds %struct.global_State* %34, i32 0, i32 0, !dbg !706
  %36 = load i8* (i8*, i8*, i32, i32)** %35, align 4, !dbg !706
  %37 = load %struct.global_State** %g, align 4, !dbg !706
  %38 = getelementptr inbounds %struct.global_State* %37, i32 0, i32 1, !dbg !706
  %39 = load i8** %38, align 4, !dbg !706
  %40 = load %struct.lua_State** %1, align 4, !dbg !706
  %41 = bitcast %struct.lua_State* %40 to i8*, !dbg !706
  %42 = getelementptr inbounds i8* %41, i32 -4, !dbg !706
  %43 = bitcast i8* %42 to %struct.LX*, !dbg !706
  %44 = bitcast %struct.LX* %43 to i8*, !dbg !706
  %45 = call i8* %36(i8* %39, i8* %44, i32 824, i32 0), !dbg !706
  ret void, !dbg !707
}

; Function Attrs: nounwind
define void @lua_close(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !708), !dbg !709
  %2 = load %struct.lua_State** %1, align 4, !dbg !710
  %3 = getelementptr inbounds %struct.lua_State* %2, i32 0, i32 6, !dbg !710
  %4 = load %struct.global_State** %3, align 4, !dbg !710
  %5 = getelementptr inbounds %struct.global_State* %4, i32 0, i32 28, !dbg !710
  %6 = load %struct.lua_State** %5, align 4, !dbg !710
  store %struct.lua_State* %6, %struct.lua_State** %1, align 4, !dbg !710
  %7 = load %struct.lua_State** %1, align 4, !dbg !711
  call void @close_state(%struct.lua_State* %7), !dbg !711
  ret void, !dbg !712
}

declare hidden void @luaC_freeallobjects(%struct.lua_State*) #2

; Function Attrs: nounwind
define internal void @init_registry(%struct.lua_State* %L, %struct.global_State* %g) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca %struct.global_State*, align 4
  %temp = alloca %struct.lua_TValue, align 8
  %registry = alloca %struct.Table*, align 4
  %io = alloca %struct.lua_TValue*, align 4
  %x_ = alloca %struct.Table*, align 4
  %io1 = alloca %struct.lua_TValue*, align 4
  %x_2 = alloca %struct.lua_State*, align 4
  %io3 = alloca %struct.lua_TValue*, align 4
  %x_4 = alloca %struct.Table*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !713), !dbg !714
  store %struct.global_State* %g, %struct.global_State** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.global_State** %2}, metadata !715), !dbg !716
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue* %temp}, metadata !717), !dbg !718
  call void @llvm.dbg.declare(metadata !{%struct.Table** %registry}, metadata !719), !dbg !722
  %3 = load %struct.lua_State** %1, align 4, !dbg !723
  %4 = call %struct.Table* @luaH_new(%struct.lua_State* %3), !dbg !723
  store %struct.Table* %4, %struct.Table** %registry, align 4, !dbg !723
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %io}, metadata !724), !dbg !726
  %5 = load %struct.global_State** %2, align 4, !dbg !726
  %6 = getelementptr inbounds %struct.global_State* %5, i32 0, i32 7, !dbg !726
  store %struct.lua_TValue* %6, %struct.lua_TValue** %io, align 4, !dbg !726
  call void @llvm.dbg.declare(metadata !{%struct.Table** %x_}, metadata !727), !dbg !726
  %7 = load %struct.Table** %registry, align 4, !dbg !726
  store %struct.Table* %7, %struct.Table** %x_, align 4, !dbg !726
  %8 = load %struct.Table** %x_, align 4, !dbg !726
  %9 = bitcast %struct.Table* %8 to %union.GCUnion*, !dbg !726
  %10 = bitcast %union.GCUnion* %9 to %struct.GCObject*, !dbg !726
  %11 = load %struct.lua_TValue** %io, align 4, !dbg !726
  %12 = getelementptr inbounds %struct.lua_TValue* %11, i32 0, i32 0, !dbg !726
  %13 = bitcast %union.Value* %12 to %struct.GCObject**, !dbg !726
  store %struct.GCObject* %10, %struct.GCObject** %13, align 4, !dbg !726
  %14 = load %struct.lua_TValue** %io, align 4, !dbg !726
  %15 = getelementptr inbounds %struct.lua_TValue* %14, i32 0, i32 1, !dbg !726
  store i32 69, i32* %15, align 4, !dbg !726
  %16 = load %struct.lua_State** %1, align 4, !dbg !728
  %17 = load %struct.Table** %registry, align 4, !dbg !728
  call void @luaH_resize(%struct.lua_State* %16, %struct.Table* %17, i32 2, i32 0), !dbg !728
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %io1}, metadata !729), !dbg !731
  store %struct.lua_TValue* %temp, %struct.lua_TValue** %io1, align 4, !dbg !731
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %x_2}, metadata !732), !dbg !731
  %18 = load %struct.lua_State** %1, align 4, !dbg !731
  store %struct.lua_State* %18, %struct.lua_State** %x_2, align 4, !dbg !731
  %19 = load %struct.lua_State** %x_2, align 4, !dbg !731
  %20 = bitcast %struct.lua_State* %19 to %union.GCUnion*, !dbg !731
  %21 = bitcast %union.GCUnion* %20 to %struct.GCObject*, !dbg !731
  %22 = load %struct.lua_TValue** %io1, align 4, !dbg !731
  %23 = getelementptr inbounds %struct.lua_TValue* %22, i32 0, i32 0, !dbg !731
  %24 = bitcast %union.Value* %23 to %struct.GCObject**, !dbg !731
  store %struct.GCObject* %21, %struct.GCObject** %24, align 4, !dbg !731
  %25 = load %struct.lua_TValue** %io1, align 4, !dbg !731
  %26 = getelementptr inbounds %struct.lua_TValue* %25, i32 0, i32 1, !dbg !731
  store i32 72, i32* %26, align 4, !dbg !731
  %27 = load %struct.lua_State** %1, align 4, !dbg !733
  %28 = load %struct.Table** %registry, align 4, !dbg !733
  call void @luaH_setint(%struct.lua_State* %27, %struct.Table* %28, i64 1, %struct.lua_TValue* %temp), !dbg !733
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %io3}, metadata !734), !dbg !736
  store %struct.lua_TValue* %temp, %struct.lua_TValue** %io3, align 4, !dbg !736
  call void @llvm.dbg.declare(metadata !{%struct.Table** %x_4}, metadata !737), !dbg !736
  %29 = load %struct.lua_State** %1, align 4, !dbg !736
  %30 = call %struct.Table* @luaH_new(%struct.lua_State* %29), !dbg !736
  store %struct.Table* %30, %struct.Table** %x_4, align 4, !dbg !736
  %31 = load %struct.Table** %x_4, align 4, !dbg !736
  %32 = bitcast %struct.Table* %31 to %union.GCUnion*, !dbg !736
  %33 = bitcast %union.GCUnion* %32 to %struct.GCObject*, !dbg !736
  %34 = load %struct.lua_TValue** %io3, align 4, !dbg !736
  %35 = getelementptr inbounds %struct.lua_TValue* %34, i32 0, i32 0, !dbg !736
  %36 = bitcast %union.Value* %35 to %struct.GCObject**, !dbg !736
  store %struct.GCObject* %33, %struct.GCObject** %36, align 4, !dbg !736
  %37 = load %struct.lua_TValue** %io3, align 4, !dbg !736
  %38 = getelementptr inbounds %struct.lua_TValue* %37, i32 0, i32 1, !dbg !736
  store i32 69, i32* %38, align 4, !dbg !736
  %39 = load %struct.lua_State** %1, align 4, !dbg !738
  %40 = load %struct.Table** %registry, align 4, !dbg !738
  call void @luaH_setint(%struct.lua_State* %39, %struct.Table* %40, i64 2, %struct.lua_TValue* %temp), !dbg !738
  ret void, !dbg !739
}

declare hidden void @luaS_init(%struct.lua_State*) #2

declare hidden void @luaT_init(%struct.lua_State*) #2

declare hidden void @luaX_init(%struct.lua_State*) #2

declare double* @lua_version(%struct.lua_State*) #2

declare hidden %struct.Table* @luaH_new(%struct.lua_State*) #2

declare hidden void @luaH_resize(%struct.lua_State*, %struct.Table*, i32, i32) #2

declare hidden void @luaH_setint(%struct.lua_State*, %struct.Table*, i64, %struct.lua_TValue*) #2

; Function Attrs: nounwind
declare i32 @time(i32*) #0

declare hidden i32 @luaS_hash(i8*, i32, i32) #2

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!xidane.fname = !{!311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368}
!xidane.function_declaration_type = !{!311, !369, !313, !370, !315, !371, !317, !372, !319, !372, !321, !373, !323, !372, !325, !374, !327, !375, !329, !375, !331, !376, !333, !372, !335, !377, !337, !378, !339, !379, !341, !380, !343, !372, !345, !372, !347, !372, !349, !374, !351, !372, !353, !372, !355, !372, !357, !381, !359, !382, !361, !383, !363, !384, !365, !385, !367, !386}
!xidane.function_declaration_filename = !{!311, !387, !313, !387, !315, !388, !317, !387, !319, !387, !321, !389, !323, !390, !325, !391, !327, !391, !329, !387, !331, !392, !333, !391, !335, !389, !337, !391, !339, !393, !341, !391, !343, !391, !345, !389, !347, !390, !349, !391, !351, !394, !353, !395, !355, !396, !357, !389, !359, !397, !361, !397, !363, !397, !365, !398, !367, !394}
!xidane.ExternC = !{!311, !313, !315, !317, !319, !321, !323, !329, !331, !335, !339, !345, !347, !351, !353, !355, !357, !359, !361, !363, !365, !367}
!llvm.module.flags = !{!399, !400, !401, !402}
!llvm.ident = !{!403}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.0 (tags/RELEASE_350/final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src\lstate.c] [DW_LANG_C99]
!1 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src\5Clstate.c", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!2 = metadata !{}
!3 = metadata !{metadata !4, metadata !281, metadata !284, metadata !287, metadata !288, metadata !291, metadata !294, metadata !297, metadata !298, metadata !299, metadata !302, metadata !305, metadata !308, metadata !309, metadata !310}
!4 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"luaE_setdebt", metadata !"luaE_setdebt", metadata !"", i32 98, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.global_State*, i32)* @luaE_setdebt, null, null, metadata !2, i32 98} ; [ DW_TAG_subprogram ] [line 98] [def] [luaE_setdebt]
!5 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lstate.c", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!6 = metadata !{i32 786473, metadata !5}          ; [ DW_TAG_file_type ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstate.c]
!7 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!8 = metadata !{null, metadata !9, metadata !26}
!9 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from global_State]
!10 = metadata !{i32 786454, metadata !11, null, metadata !"global_State", i32 153, i64 0, i64 0, i64 0, i32 0, metadata !12} ; [ DW_TAG_typedef ] [global_State] [line 153, size 0, align 0, offset 0] [from global_State]
!11 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lstate.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!12 = metadata !{i32 786451, metadata !11, null, metadata !"global_State", i32 118, i64 5568, i64 64, i32 0, i32 0, null, metadata !13, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [global_State] [line 118, size 5568, align 64, offset 0] [def] [from ]
!13 = metadata !{metadata !14, metadata !24, metadata !25, metadata !30, metadata !31, metadata !33, metadata !34, metadata !68, metadata !212, metadata !213, metadata !214, metadata !215, metadata !216, metadata !217, metadata !218, metadata !220, metadata !221, metadata !222, metadata !223, metadata !224, metadata !225, metadata !226, metadata !227, metadata !228, metadata !229, metadata !230, metadata !231, metadata !232, metadata !233, metadata !234, metadata !237, metadata !238, metadata !242, metadata !276}
!14 = metadata !{i32 786445, metadata !11, metadata !12, metadata !"frealloc", i32 119, i64 32, i64 32, i64 0, i32 0, metadata !15} ; [ DW_TAG_member ] [frealloc] [line 119, size 32, align 32, offset 0] [from lua_Alloc]
!15 = metadata !{i32 786454, metadata !16, null, metadata !"lua_Alloc", i32 124, i64 0, i64 0, i64 0, i32 0, metadata !17} ; [ DW_TAG_typedef ] [lua_Alloc] [line 124, size 0, align 0, offset 0] [from ]
!16 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lua.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!17 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !18} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!18 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !19, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!19 = metadata !{metadata !20, metadata !20, metadata !20, metadata !21, metadata !21}
!20 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!21 = metadata !{i32 786454, metadata !22, null, metadata !"size_t", i32 216, i64 0, i64 0, i64 0, i32 0, metadata !23} ; [ DW_TAG_typedef ] [size_t] [line 216, size 0, align 0, offset 0] [from unsigned int]
!22 = metadata !{metadata !"D:/Xilinx/SDx/2016.3/SDK/gnu/aarch32/nt/gcc-arm-linux-gnueabi/lib/gcc/arm-linux-gnueabihf/5.2.1/include\5Cstddef.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!23 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!24 = metadata !{i32 786445, metadata !11, metadata !12, metadata !"ud", i32 120, i64 32, i64 32, i64 32, i32 0, metadata !20} ; [ DW_TAG_member ] [ud] [line 120, size 32, align 32, offset 32] [from ]
!25 = metadata !{i32 786445, metadata !11, metadata !12, metadata !"totalbytes", i32 121, i64 32, i64 32, i64 64, i32 0, metadata !26} ; [ DW_TAG_member ] [totalbytes] [line 121, size 32, align 32, offset 64] [from l_mem]
!26 = metadata !{i32 786454, metadata !27, null, metadata !"l_mem", i32 27, i64 0, i64 0, i64 0, i32 0, metadata !28} ; [ DW_TAG_typedef ] [l_mem] [line 27, size 0, align 0, offset 0] [from ptrdiff_t]
!27 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/llimits.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!28 = metadata !{i32 786454, metadata !22, null, metadata !"ptrdiff_t", i32 149, i64 0, i64 0, i64 0, i32 0, metadata !29} ; [ DW_TAG_typedef ] [ptrdiff_t] [line 149, size 0, align 0, offset 0] [from int]
!29 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!30 = metadata !{i32 786445, metadata !11, metadata !12, metadata !"GCdebt", i32 122, i64 32, i64 32, i64 96, i32 0, metadata !26} ; [ DW_TAG_member ] [GCdebt] [line 122, size 32, align 32, offset 96] [from l_mem]
!31 = metadata !{i32 786445, metadata !11, metadata !12, metadata !"GCmemtrav", i32 123, i64 32, i64 32, i64 128, i32 0, metadata !32} ; [ DW_TAG_member ] [GCmemtrav] [line 123, size 32, align 32, offset 128] [from lu_mem]
!32 = metadata !{i32 786454, metadata !27, null, metadata !"lu_mem", i32 26, i64 0, i64 0, i64 0, i32 0, metadata !21} ; [ DW_TAG_typedef ] [lu_mem] [line 26, size 0, align 0, offset 0] [from size_t]
!33 = metadata !{i32 786445, metadata !11, metadata !12, metadata !"GCestimate", i32 124, i64 32, i64 32, i64 160, i32 0, metadata !32} ; [ DW_TAG_member ] [GCestimate] [line 124, size 32, align 32, offset 160] [from lu_mem]
!34 = metadata !{i32 786445, metadata !11, metadata !12, metadata !"strt", i32 125, i64 96, i64 32, i64 192, i32 0, metadata !35} ; [ DW_TAG_member ] [strt] [line 125, size 96, align 32, offset 192] [from stringtable]
!35 = metadata !{i32 786454, metadata !11, null, metadata !"stringtable", i32 62, i64 0, i64 0, i64 0, i32 0, metadata !36} ; [ DW_TAG_typedef ] [stringtable] [line 62, size 0, align 0, offset 0] [from stringtable]
!36 = metadata !{i32 786451, metadata !11, null, metadata !"stringtable", i32 58, i64 96, i64 32, i32 0, i32 0, null, metadata !37, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [stringtable] [line 58, size 96, align 32, offset 0] [def] [from ]
!37 = metadata !{metadata !38, metadata !66, metadata !67}
!38 = metadata !{i32 786445, metadata !11, metadata !36, metadata !"hash", i32 59, i64 32, i64 32, i64 0, i32 0, metadata !39} ; [ DW_TAG_member ] [hash] [line 59, size 32, align 32, offset 0] [from ]
!39 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !40} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!40 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !41} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from TString]
!41 = metadata !{i32 786454, metadata !42, null, metadata !"TString", i32 312, i64 0, i64 0, i64 0, i32 0, metadata !43} ; [ DW_TAG_typedef ] [TString] [line 312, size 0, align 0, offset 0] [from TString]
!42 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lobject.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!43 = metadata !{i32 786451, metadata !42, null, metadata !"TString", i32 303, i64 128, i64 32, i32 0, i32 0, null, metadata !44, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [TString] [line 303, size 128, align 32, offset 0] [def] [from ]
!44 = metadata !{metadata !45, metadata !55, metadata !56, metadata !57, metadata !58, metadata !59, metadata !60}
!45 = metadata !{i32 786445, metadata !42, metadata !43, metadata !"next", i32 304, i64 32, i64 32, i64 0, i32 0, metadata !46} ; [ DW_TAG_member ] [next] [line 304, size 32, align 32, offset 0] [from ]
!46 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !47} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from GCObject]
!47 = metadata !{i32 786454, metadata !42, null, metadata !"GCObject", i32 72, i64 0, i64 0, i64 0, i32 0, metadata !48} ; [ DW_TAG_typedef ] [GCObject] [line 72, size 0, align 0, offset 0] [from GCObject]
!48 = metadata !{i32 786451, metadata !42, null, metadata !"GCObject", i32 85, i64 64, i64 32, i32 0, i32 0, null, metadata !49, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [GCObject] [line 85, size 64, align 32, offset 0] [def] [from ]
!49 = metadata !{metadata !50, metadata !51, metadata !54}
!50 = metadata !{i32 786445, metadata !42, metadata !48, metadata !"next", i32 86, i64 32, i64 32, i64 0, i32 0, metadata !46} ; [ DW_TAG_member ] [next] [line 86, size 32, align 32, offset 0] [from ]
!51 = metadata !{i32 786445, metadata !42, metadata !48, metadata !"tt", i32 86, i64 8, i64 8, i64 32, i32 0, metadata !52} ; [ DW_TAG_member ] [tt] [line 86, size 8, align 8, offset 32] [from lu_byte]
!52 = metadata !{i32 786454, metadata !27, null, metadata !"lu_byte", i32 35, i64 0, i64 0, i64 0, i32 0, metadata !53} ; [ DW_TAG_typedef ] [lu_byte] [line 35, size 0, align 0, offset 0] [from unsigned char]
!53 = metadata !{i32 786468, null, null, metadata !"unsigned char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [unsigned char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!54 = metadata !{i32 786445, metadata !42, metadata !48, metadata !"marked", i32 86, i64 8, i64 8, i64 40, i32 0, metadata !52} ; [ DW_TAG_member ] [marked] [line 86, size 8, align 8, offset 40] [from lu_byte]
!55 = metadata !{i32 786445, metadata !42, metadata !43, metadata !"tt", i32 304, i64 8, i64 8, i64 32, i32 0, metadata !52} ; [ DW_TAG_member ] [tt] [line 304, size 8, align 8, offset 32] [from lu_byte]
!56 = metadata !{i32 786445, metadata !42, metadata !43, metadata !"marked", i32 304, i64 8, i64 8, i64 40, i32 0, metadata !52} ; [ DW_TAG_member ] [marked] [line 304, size 8, align 8, offset 40] [from lu_byte]
!57 = metadata !{i32 786445, metadata !42, metadata !43, metadata !"extra", i32 305, i64 8, i64 8, i64 48, i32 0, metadata !52} ; [ DW_TAG_member ] [extra] [line 305, size 8, align 8, offset 48] [from lu_byte]
!58 = metadata !{i32 786445, metadata !42, metadata !43, metadata !"shrlen", i32 306, i64 8, i64 8, i64 56, i32 0, metadata !52} ; [ DW_TAG_member ] [shrlen] [line 306, size 8, align 8, offset 56] [from lu_byte]
!59 = metadata !{i32 786445, metadata !42, metadata !43, metadata !"hash", i32 307, i64 32, i64 32, i64 64, i32 0, metadata !23} ; [ DW_TAG_member ] [hash] [line 307, size 32, align 32, offset 64] [from unsigned int]
!60 = metadata !{i32 786445, metadata !42, metadata !43, metadata !"u", i32 311, i64 32, i64 32, i64 96, i32 0, metadata !61} ; [ DW_TAG_member ] [u] [line 311, size 32, align 32, offset 96] [from ]
!61 = metadata !{i32 786455, metadata !42, metadata !43, metadata !"", i32 308, i64 32, i64 32, i64 0, i32 0, null, metadata !62, i32 0, null, null, null} ; [ DW_TAG_union_type ] [line 308, size 32, align 32, offset 0] [def] [from ]
!62 = metadata !{metadata !63, metadata !64}
!63 = metadata !{i32 786445, metadata !42, metadata !61, metadata !"lnglen", i32 309, i64 32, i64 32, i64 0, i32 0, metadata !21} ; [ DW_TAG_member ] [lnglen] [line 309, size 32, align 32, offset 0] [from size_t]
!64 = metadata !{i32 786445, metadata !42, metadata !61, metadata !"hnext", i32 310, i64 32, i64 32, i64 0, i32 0, metadata !65} ; [ DW_TAG_member ] [hnext] [line 310, size 32, align 32, offset 0] [from ]
!65 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !43} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from TString]
!66 = metadata !{i32 786445, metadata !11, metadata !36, metadata !"nuse", i32 60, i64 32, i64 32, i64 32, i32 0, metadata !29} ; [ DW_TAG_member ] [nuse] [line 60, size 32, align 32, offset 32] [from int]
!67 = metadata !{i32 786445, metadata !11, metadata !36, metadata !"size", i32 61, i64 32, i64 32, i64 64, i32 0, metadata !29} ; [ DW_TAG_member ] [size] [line 61, size 32, align 32, offset 64] [from int]
!68 = metadata !{i32 786445, metadata !11, metadata !12, metadata !"l_registry", i32 126, i64 128, i64 64, i64 320, i32 0, metadata !69} ; [ DW_TAG_member ] [l_registry] [line 126, size 128, align 64, offset 320] [from TValue]
!69 = metadata !{i32 786454, metadata !42, null, metadata !"TValue", i32 115, i64 0, i64 0, i64 0, i32 0, metadata !70} ; [ DW_TAG_typedef ] [TValue] [line 115, size 0, align 0, offset 0] [from lua_TValue]
!70 = metadata !{i32 786451, metadata !42, null, metadata !"lua_TValue", i32 113, i64 128, i64 64, i32 0, i32 0, null, metadata !71, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [lua_TValue] [line 113, size 128, align 64, offset 0] [def] [from ]
!71 = metadata !{metadata !72, metadata !211}
!72 = metadata !{i32 786445, metadata !42, metadata !70, metadata !"value_", i32 114, i64 64, i64 64, i64 0, i32 0, metadata !73} ; [ DW_TAG_member ] [value_] [line 114, size 64, align 64, offset 0] [from Value]
!73 = metadata !{i32 786454, metadata !42, null, metadata !"Value", i32 107, i64 0, i64 0, i64 0, i32 0, metadata !74} ; [ DW_TAG_typedef ] [Value] [line 107, size 0, align 0, offset 0] [from Value]
!74 = metadata !{i32 786455, metadata !42, null, metadata !"Value", i32 100, i64 64, i64 64, i64 0, i32 0, null, metadata !75, i32 0, null, null, null} ; [ DW_TAG_union_type ] [Value] [line 100, size 64, align 64, offset 0] [def] [from ]
!75 = metadata !{metadata !76, metadata !77, metadata !78, metadata !79, metadata !205, metadata !208}
!76 = metadata !{i32 786445, metadata !42, metadata !74, metadata !"gc", i32 101, i64 32, i64 32, i64 0, i32 0, metadata !46} ; [ DW_TAG_member ] [gc] [line 101, size 32, align 32, offset 0] [from ]
!77 = metadata !{i32 786445, metadata !42, metadata !74, metadata !"p", i32 102, i64 32, i64 32, i64 0, i32 0, metadata !20} ; [ DW_TAG_member ] [p] [line 102, size 32, align 32, offset 0] [from ]
!78 = metadata !{i32 786445, metadata !42, metadata !74, metadata !"b", i32 103, i64 32, i64 32, i64 0, i32 0, metadata !29} ; [ DW_TAG_member ] [b] [line 103, size 32, align 32, offset 0] [from int]
!79 = metadata !{i32 786445, metadata !42, metadata !74, metadata !"f", i32 104, i64 32, i64 32, i64 0, i32 0, metadata !80} ; [ DW_TAG_member ] [f] [line 104, size 32, align 32, offset 0] [from lua_CFunction]
!80 = metadata !{i32 786454, metadata !16, null, metadata !"lua_CFunction", i32 105, i64 0, i64 0, i64 0, i32 0, metadata !81} ; [ DW_TAG_typedef ] [lua_CFunction] [line 105, size 0, align 0, offset 0] [from ]
!81 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !82} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!82 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !83, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!83 = metadata !{metadata !29, metadata !84}
!84 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !85} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from lua_State]
!85 = metadata !{i32 786454, metadata !16, null, metadata !"lua_State", i32 56, i64 0, i64 0, i64 0, i32 0, metadata !86} ; [ DW_TAG_typedef ] [lua_State] [line 56, size 0, align 0, offset 0] [from lua_State]
!86 = metadata !{i32 786451, metadata !11, null, metadata !"lua_State", i32 159, i64 960, i64 32, i32 0, i32 0, null, metadata !87, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [lua_State] [line 159, size 960, align 32, offset 0] [def] [from ]
!87 = metadata !{metadata !88, metadata !89, metadata !90, metadata !91, metadata !93, metadata !94, metadata !97, metadata !98, metadata !136, metadata !137, metadata !138, metadata !139, metadata !156, metadata !157, metadata !159, metadata !162, metadata !163, metadata !193, metadata !194, metadata !195, metadata !196, metadata !197, metadata !198, metadata !199, metadata !204}
!88 = metadata !{i32 786445, metadata !11, metadata !86, metadata !"next", i32 160, i64 32, i64 32, i64 0, i32 0, metadata !46} ; [ DW_TAG_member ] [next] [line 160, size 32, align 32, offset 0] [from ]
!89 = metadata !{i32 786445, metadata !11, metadata !86, metadata !"tt", i32 160, i64 8, i64 8, i64 32, i32 0, metadata !52} ; [ DW_TAG_member ] [tt] [line 160, size 8, align 8, offset 32] [from lu_byte]
!90 = metadata !{i32 786445, metadata !11, metadata !86, metadata !"marked", i32 160, i64 8, i64 8, i64 40, i32 0, metadata !52} ; [ DW_TAG_member ] [marked] [line 160, size 8, align 8, offset 40] [from lu_byte]
!91 = metadata !{i32 786445, metadata !11, metadata !86, metadata !"nci", i32 161, i64 16, i64 16, i64 48, i32 0, metadata !92} ; [ DW_TAG_member ] [nci] [line 161, size 16, align 16, offset 48] [from unsigned short]
!92 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!93 = metadata !{i32 786445, metadata !11, metadata !86, metadata !"status", i32 162, i64 8, i64 8, i64 64, i32 0, metadata !52} ; [ DW_TAG_member ] [status] [line 162, size 8, align 8, offset 64] [from lu_byte]
!94 = metadata !{i32 786445, metadata !11, metadata !86, metadata !"top", i32 163, i64 32, i64 32, i64 96, i32 0, metadata !95} ; [ DW_TAG_member ] [top] [line 163, size 32, align 32, offset 96] [from StkId]
!95 = metadata !{i32 786454, metadata !42, null, metadata !"StkId", i32 294, i64 0, i64 0, i64 0, i32 0, metadata !96} ; [ DW_TAG_typedef ] [StkId] [line 294, size 0, align 0, offset 0] [from ]
!96 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !69} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from TValue]
!97 = metadata !{i32 786445, metadata !11, metadata !86, metadata !"l_G", i32 164, i64 32, i64 32, i64 128, i32 0, metadata !9} ; [ DW_TAG_member ] [l_G] [line 164, size 32, align 32, offset 128] [from ]
!98 = metadata !{i32 786445, metadata !11, metadata !86, metadata !"ci", i32 165, i64 32, i64 32, i64 160, i32 0, metadata !99} ; [ DW_TAG_member ] [ci] [line 165, size 32, align 32, offset 160] [from ]
!99 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !100} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from CallInfo]
!100 = metadata !{i32 786454, metadata !11, null, metadata !"CallInfo", i32 92, i64 0, i64 0, i64 0, i32 0, metadata !101} ; [ DW_TAG_typedef ] [CallInfo] [line 92, size 0, align 0, offset 0] [from CallInfo]
!101 = metadata !{i32 786451, metadata !11, null, metadata !"CallInfo", i32 74, i64 288, i64 32, i32 0, i32 0, null, metadata !102, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [CallInfo] [line 74, size 288, align 32, offset 0] [def] [from ]
!102 = metadata !{metadata !103, metadata !104, metadata !105, metadata !107, metadata !108, metadata !132, metadata !133, metadata !135}
!103 = metadata !{i32 786445, metadata !11, metadata !101, metadata !"func", i32 75, i64 32, i64 32, i64 0, i32 0, metadata !95} ; [ DW_TAG_member ] [func] [line 75, size 32, align 32, offset 0] [from StkId]
!104 = metadata !{i32 786445, metadata !11, metadata !101, metadata !"top", i32 76, i64 32, i64 32, i64 32, i32 0, metadata !95} ; [ DW_TAG_member ] [top] [line 76, size 32, align 32, offset 32] [from StkId]
!105 = metadata !{i32 786445, metadata !11, metadata !101, metadata !"previous", i32 77, i64 32, i64 32, i64 64, i32 0, metadata !106} ; [ DW_TAG_member ] [previous] [line 77, size 32, align 32, offset 64] [from ]
!106 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !101} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from CallInfo]
!107 = metadata !{i32 786445, metadata !11, metadata !101, metadata !"next", i32 77, i64 32, i64 32, i64 96, i32 0, metadata !106} ; [ DW_TAG_member ] [next] [line 77, size 32, align 32, offset 96] [from ]
!108 = metadata !{i32 786445, metadata !11, metadata !101, metadata !"u", i32 88, i64 96, i64 32, i64 128, i32 0, metadata !109} ; [ DW_TAG_member ] [u] [line 88, size 96, align 32, offset 128] [from ]
!109 = metadata !{i32 786455, metadata !11, metadata !101, metadata !"", i32 78, i64 96, i64 32, i64 0, i32 0, null, metadata !110, i32 0, null, null, null} ; [ DW_TAG_union_type ] [line 78, size 96, align 32, offset 0] [def] [from ]
!110 = metadata !{metadata !111, metadata !119}
!111 = metadata !{i32 786445, metadata !11, metadata !109, metadata !"l", i32 82, i64 64, i64 32, i64 0, i32 0, metadata !112} ; [ DW_TAG_member ] [l] [line 82, size 64, align 32, offset 0] [from ]
!112 = metadata !{i32 786451, metadata !11, metadata !109, metadata !"", i32 79, i64 64, i64 32, i32 0, i32 0, null, metadata !113, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 79, size 64, align 32, offset 0] [def] [from ]
!113 = metadata !{metadata !114, metadata !115}
!114 = metadata !{i32 786445, metadata !11, metadata !112, metadata !"base", i32 80, i64 32, i64 32, i64 0, i32 0, metadata !95} ; [ DW_TAG_member ] [base] [line 80, size 32, align 32, offset 0] [from StkId]
!115 = metadata !{i32 786445, metadata !11, metadata !112, metadata !"savedpc", i32 81, i64 32, i64 32, i64 32, i32 0, metadata !116} ; [ DW_TAG_member ] [savedpc] [line 81, size 32, align 32, offset 32] [from ]
!116 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !117} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!117 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !118} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from Instruction]
!118 = metadata !{i32 786454, metadata !27, null, metadata !"Instruction", i32 163, i64 0, i64 0, i64 0, i32 0, metadata !23} ; [ DW_TAG_typedef ] [Instruction] [line 163, size 0, align 0, offset 0] [from unsigned int]
!119 = metadata !{i32 786445, metadata !11, metadata !109, metadata !"c", i32 87, i64 96, i64 32, i64 0, i32 0, metadata !120} ; [ DW_TAG_member ] [c] [line 87, size 96, align 32, offset 0] [from ]
!120 = metadata !{i32 786451, metadata !11, metadata !109, metadata !"", i32 83, i64 96, i64 32, i32 0, i32 0, null, metadata !121, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 83, size 96, align 32, offset 0] [def] [from ]
!121 = metadata !{metadata !122, metadata !130, metadata !131}
!122 = metadata !{i32 786445, metadata !11, metadata !120, metadata !"k", i32 84, i64 32, i64 32, i64 0, i32 0, metadata !123} ; [ DW_TAG_member ] [k] [line 84, size 32, align 32, offset 0] [from lua_KFunction]
!123 = metadata !{i32 786454, metadata !16, null, metadata !"lua_KFunction", i32 110, i64 0, i64 0, i64 0, i32 0, metadata !124} ; [ DW_TAG_typedef ] [lua_KFunction] [line 110, size 0, align 0, offset 0] [from ]
!124 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !125} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!125 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !126, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!126 = metadata !{metadata !29, metadata !84, metadata !29, metadata !127}
!127 = metadata !{i32 786454, metadata !16, null, metadata !"lua_KContext", i32 99, i64 0, i64 0, i64 0, i32 0, metadata !128} ; [ DW_TAG_typedef ] [lua_KContext] [line 99, size 0, align 0, offset 0] [from intptr_t]
!128 = metadata !{i32 786454, metadata !129, null, metadata !"intptr_t", i32 125, i64 0, i64 0, i64 0, i32 0, metadata !29} ; [ DW_TAG_typedef ] [intptr_t] [line 125, size 0, align 0, offset 0] [from int]
!129 = metadata !{metadata !"D:/Xilinx/SDx/2016.3/SDK/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include\5Cstdint.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!130 = metadata !{i32 786445, metadata !11, metadata !120, metadata !"old_errfunc", i32 85, i64 32, i64 32, i64 32, i32 0, metadata !28} ; [ DW_TAG_member ] [old_errfunc] [line 85, size 32, align 32, offset 32] [from ptrdiff_t]
!131 = metadata !{i32 786445, metadata !11, metadata !120, metadata !"ctx", i32 86, i64 32, i64 32, i64 64, i32 0, metadata !127} ; [ DW_TAG_member ] [ctx] [line 86, size 32, align 32, offset 64] [from lua_KContext]
!132 = metadata !{i32 786445, metadata !11, metadata !101, metadata !"extra", i32 89, i64 32, i64 32, i64 224, i32 0, metadata !28} ; [ DW_TAG_member ] [extra] [line 89, size 32, align 32, offset 224] [from ptrdiff_t]
!133 = metadata !{i32 786445, metadata !11, metadata !101, metadata !"nresults", i32 90, i64 16, i64 16, i64 256, i32 0, metadata !134} ; [ DW_TAG_member ] [nresults] [line 90, size 16, align 16, offset 256] [from short]
!134 = metadata !{i32 786468, null, null, metadata !"short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [short] [line 0, size 16, align 16, offset 0, enc DW_ATE_signed]
!135 = metadata !{i32 786445, metadata !11, metadata !101, metadata !"callstatus", i32 91, i64 8, i64 8, i64 272, i32 0, metadata !52} ; [ DW_TAG_member ] [callstatus] [line 91, size 8, align 8, offset 272] [from lu_byte]
!136 = metadata !{i32 786445, metadata !11, metadata !86, metadata !"oldpc", i32 166, i64 32, i64 32, i64 192, i32 0, metadata !116} ; [ DW_TAG_member ] [oldpc] [line 166, size 32, align 32, offset 192] [from ]
!137 = metadata !{i32 786445, metadata !11, metadata !86, metadata !"stack_last", i32 167, i64 32, i64 32, i64 224, i32 0, metadata !95} ; [ DW_TAG_member ] [stack_last] [line 167, size 32, align 32, offset 224] [from StkId]
!138 = metadata !{i32 786445, metadata !11, metadata !86, metadata !"stack", i32 168, i64 32, i64 32, i64 256, i32 0, metadata !95} ; [ DW_TAG_member ] [stack] [line 168, size 32, align 32, offset 256] [from StkId]
!139 = metadata !{i32 786445, metadata !11, metadata !86, metadata !"openupval", i32 169, i64 32, i64 32, i64 288, i32 0, metadata !140} ; [ DW_TAG_member ] [openupval] [line 169, size 32, align 32, offset 288] [from ]
!140 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !141} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from UpVal]
!141 = metadata !{i32 786454, metadata !42, null, metadata !"UpVal", i32 436, i64 0, i64 0, i64 0, i32 0, metadata !142} ; [ DW_TAG_typedef ] [UpVal] [line 436, size 0, align 0, offset 0] [from UpVal]
!142 = metadata !{i32 786451, metadata !143, null, metadata !"UpVal", i32 35, i64 192, i64 64, i32 0, i32 0, null, metadata !144, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [UpVal] [line 35, size 192, align 64, offset 0] [def] [from ]
!143 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lfunc.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!144 = metadata !{metadata !145, metadata !146, metadata !147}
!145 = metadata !{i32 786445, metadata !143, metadata !142, metadata !"v", i32 36, i64 32, i64 32, i64 0, i32 0, metadata !96} ; [ DW_TAG_member ] [v] [line 36, size 32, align 32, offset 0] [from ]
!146 = metadata !{i32 786445, metadata !143, metadata !142, metadata !"refcount", i32 37, i64 32, i64 32, i64 32, i32 0, metadata !32} ; [ DW_TAG_member ] [refcount] [line 37, size 32, align 32, offset 32] [from lu_mem]
!147 = metadata !{i32 786445, metadata !143, metadata !142, metadata !"u", i32 44, i64 128, i64 64, i64 64, i32 0, metadata !148} ; [ DW_TAG_member ] [u] [line 44, size 128, align 64, offset 64] [from ]
!148 = metadata !{i32 786455, metadata !143, metadata !142, metadata !"", i32 38, i64 128, i64 64, i64 0, i32 0, null, metadata !149, i32 0, null, null, null} ; [ DW_TAG_union_type ] [line 38, size 128, align 64, offset 0] [def] [from ]
!149 = metadata !{metadata !150, metadata !155}
!150 = metadata !{i32 786445, metadata !143, metadata !148, metadata !"open", i32 42, i64 64, i64 32, i64 0, i32 0, metadata !151} ; [ DW_TAG_member ] [open] [line 42, size 64, align 32, offset 0] [from ]
!151 = metadata !{i32 786451, metadata !143, metadata !148, metadata !"", i32 39, i64 64, i64 32, i32 0, i32 0, null, metadata !152, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 39, size 64, align 32, offset 0] [def] [from ]
!152 = metadata !{metadata !153, metadata !154}
!153 = metadata !{i32 786445, metadata !143, metadata !151, metadata !"next", i32 40, i64 32, i64 32, i64 0, i32 0, metadata !140} ; [ DW_TAG_member ] [next] [line 40, size 32, align 32, offset 0] [from ]
!154 = metadata !{i32 786445, metadata !143, metadata !151, metadata !"touched", i32 41, i64 32, i64 32, i64 32, i32 0, metadata !29} ; [ DW_TAG_member ] [touched] [line 41, size 32, align 32, offset 32] [from int]
!155 = metadata !{i32 786445, metadata !143, metadata !148, metadata !"value", i32 43, i64 128, i64 64, i64 0, i32 0, metadata !69} ; [ DW_TAG_member ] [value] [line 43, size 128, align 64, offset 0] [from TValue]
!156 = metadata !{i32 786445, metadata !11, metadata !86, metadata !"gclist", i32 170, i64 32, i64 32, i64 320, i32 0, metadata !46} ; [ DW_TAG_member ] [gclist] [line 170, size 32, align 32, offset 320] [from ]
!157 = metadata !{i32 786445, metadata !11, metadata !86, metadata !"twups", i32 171, i64 32, i64 32, i64 352, i32 0, metadata !158} ; [ DW_TAG_member ] [twups] [line 171, size 32, align 32, offset 352] [from ]
!158 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !86} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from lua_State]
!159 = metadata !{i32 786445, metadata !11, metadata !86, metadata !"errorJmp", i32 172, i64 32, i64 32, i64 384, i32 0, metadata !160} ; [ DW_TAG_member ] [errorJmp] [line 172, size 32, align 32, offset 384] [from ]
!160 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !161} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from lua_longjmp]
!161 = metadata !{i32 786451, metadata !11, null, metadata !"lua_longjmp", i32 33, i64 0, i64 0, i32 0, i32 4, null, null, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [lua_longjmp] [line 33, size 0, align 0, offset 0] [decl] [from ]
!162 = metadata !{i32 786445, metadata !11, metadata !86, metadata !"base_ci", i32 173, i64 288, i64 32, i64 416, i32 0, metadata !100} ; [ DW_TAG_member ] [base_ci] [line 173, size 288, align 32, offset 416] [from CallInfo]
!163 = metadata !{i32 786445, metadata !11, metadata !86, metadata !"hook", i32 174, i64 32, i64 32, i64 704, i32 0, metadata !164} ; [ DW_TAG_member ] [hook] [line 174, size 32, align 32, offset 704] [from ]
!164 = metadata !{i32 786485, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !165} ; [ DW_TAG_volatile_type ] [line 0, size 0, align 0, offset 0] [from lua_Hook]
!165 = metadata !{i32 786454, metadata !16, null, metadata !"lua_Hook", i32 421, i64 0, i64 0, i64 0, i32 0, metadata !166} ; [ DW_TAG_typedef ] [lua_Hook] [line 421, size 0, align 0, offset 0] [from ]
!166 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !167} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!167 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !168, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!168 = metadata !{null, metadata !84, metadata !169}
!169 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !170} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from lua_Debug]
!170 = metadata !{i32 786454, metadata !16, null, metadata !"lua_Debug", i32 417, i64 0, i64 0, i64 0, i32 0, metadata !171} ; [ DW_TAG_typedef ] [lua_Debug] [line 417, size 0, align 0, offset 0] [from lua_Debug]
!171 = metadata !{i32 786451, metadata !16, null, metadata !"lua_Debug", i32 441, i64 800, i64 32, i32 0, i32 0, null, metadata !172, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [lua_Debug] [line 441, size 800, align 32, offset 0] [def] [from ]
!172 = metadata !{metadata !173, metadata !174, metadata !178, metadata !179, metadata !180, metadata !181, metadata !182, metadata !183, metadata !184, metadata !185, metadata !186, metadata !187, metadata !188, metadata !192}
!173 = metadata !{i32 786445, metadata !16, metadata !171, metadata !"event", i32 442, i64 32, i64 32, i64 0, i32 0, metadata !29} ; [ DW_TAG_member ] [event] [line 442, size 32, align 32, offset 0] [from int]
!174 = metadata !{i32 786445, metadata !16, metadata !171, metadata !"name", i32 443, i64 32, i64 32, i64 32, i32 0, metadata !175} ; [ DW_TAG_member ] [name] [line 443, size 32, align 32, offset 32] [from ]
!175 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !176} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!176 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !177} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!177 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!178 = metadata !{i32 786445, metadata !16, metadata !171, metadata !"namewhat", i32 444, i64 32, i64 32, i64 64, i32 0, metadata !175} ; [ DW_TAG_member ] [namewhat] [line 444, size 32, align 32, offset 64] [from ]
!179 = metadata !{i32 786445, metadata !16, metadata !171, metadata !"what", i32 445, i64 32, i64 32, i64 96, i32 0, metadata !175} ; [ DW_TAG_member ] [what] [line 445, size 32, align 32, offset 96] [from ]
!180 = metadata !{i32 786445, metadata !16, metadata !171, metadata !"source", i32 446, i64 32, i64 32, i64 128, i32 0, metadata !175} ; [ DW_TAG_member ] [source] [line 446, size 32, align 32, offset 128] [from ]
!181 = metadata !{i32 786445, metadata !16, metadata !171, metadata !"currentline", i32 447, i64 32, i64 32, i64 160, i32 0, metadata !29} ; [ DW_TAG_member ] [currentline] [line 447, size 32, align 32, offset 160] [from int]
!182 = metadata !{i32 786445, metadata !16, metadata !171, metadata !"linedefined", i32 448, i64 32, i64 32, i64 192, i32 0, metadata !29} ; [ DW_TAG_member ] [linedefined] [line 448, size 32, align 32, offset 192] [from int]
!183 = metadata !{i32 786445, metadata !16, metadata !171, metadata !"lastlinedefined", i32 449, i64 32, i64 32, i64 224, i32 0, metadata !29} ; [ DW_TAG_member ] [lastlinedefined] [line 449, size 32, align 32, offset 224] [from int]
!184 = metadata !{i32 786445, metadata !16, metadata !171, metadata !"nups", i32 450, i64 8, i64 8, i64 256, i32 0, metadata !53} ; [ DW_TAG_member ] [nups] [line 450, size 8, align 8, offset 256] [from unsigned char]
!185 = metadata !{i32 786445, metadata !16, metadata !171, metadata !"nparams", i32 451, i64 8, i64 8, i64 264, i32 0, metadata !53} ; [ DW_TAG_member ] [nparams] [line 451, size 8, align 8, offset 264] [from unsigned char]
!186 = metadata !{i32 786445, metadata !16, metadata !171, metadata !"isvararg", i32 452, i64 8, i64 8, i64 272, i32 0, metadata !177} ; [ DW_TAG_member ] [isvararg] [line 452, size 8, align 8, offset 272] [from char]
!187 = metadata !{i32 786445, metadata !16, metadata !171, metadata !"istailcall", i32 453, i64 8, i64 8, i64 280, i32 0, metadata !177} ; [ DW_TAG_member ] [istailcall] [line 453, size 8, align 8, offset 280] [from char]
!188 = metadata !{i32 786445, metadata !16, metadata !171, metadata !"short_src", i32 454, i64 480, i64 8, i64 288, i32 0, metadata !189} ; [ DW_TAG_member ] [short_src] [line 454, size 480, align 8, offset 288] [from ]
!189 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 480, i64 8, i32 0, i32 0, metadata !177, metadata !190, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 480, align 8, offset 0] [from char]
!190 = metadata !{metadata !191}
!191 = metadata !{i32 786465, i64 0, i64 60}      ; [ DW_TAG_subrange_type ] [0, 59]
!192 = metadata !{i32 786445, metadata !16, metadata !171, metadata !"i_ci", i32 456, i64 32, i64 32, i64 768, i32 0, metadata !106} ; [ DW_TAG_member ] [i_ci] [line 456, size 32, align 32, offset 768] [from ]
!193 = metadata !{i32 786445, metadata !11, metadata !86, metadata !"errfunc", i32 175, i64 32, i64 32, i64 736, i32 0, metadata !28} ; [ DW_TAG_member ] [errfunc] [line 175, size 32, align 32, offset 736] [from ptrdiff_t]
!194 = metadata !{i32 786445, metadata !11, metadata !86, metadata !"stacksize", i32 176, i64 32, i64 32, i64 768, i32 0, metadata !29} ; [ DW_TAG_member ] [stacksize] [line 176, size 32, align 32, offset 768] [from int]
!195 = metadata !{i32 786445, metadata !11, metadata !86, metadata !"basehookcount", i32 177, i64 32, i64 32, i64 800, i32 0, metadata !29} ; [ DW_TAG_member ] [basehookcount] [line 177, size 32, align 32, offset 800] [from int]
!196 = metadata !{i32 786445, metadata !11, metadata !86, metadata !"hookcount", i32 178, i64 32, i64 32, i64 832, i32 0, metadata !29} ; [ DW_TAG_member ] [hookcount] [line 178, size 32, align 32, offset 832] [from int]
!197 = metadata !{i32 786445, metadata !11, metadata !86, metadata !"nny", i32 179, i64 16, i64 16, i64 864, i32 0, metadata !92} ; [ DW_TAG_member ] [nny] [line 179, size 16, align 16, offset 864] [from unsigned short]
!198 = metadata !{i32 786445, metadata !11, metadata !86, metadata !"nCcalls", i32 180, i64 16, i64 16, i64 880, i32 0, metadata !92} ; [ DW_TAG_member ] [nCcalls] [line 180, size 16, align 16, offset 880] [from unsigned short]
!199 = metadata !{i32 786445, metadata !11, metadata !86, metadata !"hookmask", i32 181, i64 32, i64 32, i64 896, i32 0, metadata !200} ; [ DW_TAG_member ] [hookmask] [line 181, size 32, align 32, offset 896] [from sig_atomic_t]
!200 = metadata !{i32 786454, metadata !201, null, metadata !"sig_atomic_t", i32 40, i64 0, i64 0, i64 0, i32 0, metadata !202} ; [ DW_TAG_typedef ] [sig_atomic_t] [line 40, size 0, align 0, offset 0] [from __sig_atomic_t]
!201 = metadata !{metadata !"D:/Xilinx/SDx/2016.3/SDK/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include\5Csignal.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!202 = metadata !{i32 786454, metadata !203, null, metadata !"__sig_atomic_t", i32 22, i64 0, i64 0, i64 0, i32 0, metadata !29} ; [ DW_TAG_typedef ] [__sig_atomic_t] [line 22, size 0, align 0, offset 0] [from int]
!203 = metadata !{metadata !"D:/Xilinx/SDx/2016.3/SDK/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include\5Cbits/sigset.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!204 = metadata !{i32 786445, metadata !11, metadata !86, metadata !"allowhook", i32 182, i64 8, i64 8, i64 928, i32 0, metadata !52} ; [ DW_TAG_member ] [allowhook] [line 182, size 8, align 8, offset 928] [from lu_byte]
!205 = metadata !{i32 786445, metadata !42, metadata !74, metadata !"i", i32 105, i64 64, i64 64, i64 0, i32 0, metadata !206} ; [ DW_TAG_member ] [i] [line 105, size 64, align 64, offset 0] [from lua_Integer]
!206 = metadata !{i32 786454, metadata !16, null, metadata !"lua_Integer", i32 93, i64 0, i64 0, i64 0, i32 0, metadata !207} ; [ DW_TAG_typedef ] [lua_Integer] [line 93, size 0, align 0, offset 0] [from long long int]
!207 = metadata !{i32 786468, null, null, metadata !"long long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!208 = metadata !{i32 786445, metadata !42, metadata !74, metadata !"n", i32 106, i64 64, i64 64, i64 0, i32 0, metadata !209} ; [ DW_TAG_member ] [n] [line 106, size 64, align 64, offset 0] [from lua_Number]
!209 = metadata !{i32 786454, metadata !16, null, metadata !"lua_Number", i32 89, i64 0, i64 0, i64 0, i32 0, metadata !210} ; [ DW_TAG_typedef ] [lua_Number] [line 89, size 0, align 0, offset 0] [from double]
!210 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!211 = metadata !{i32 786445, metadata !42, metadata !70, metadata !"tt_", i32 114, i64 32, i64 32, i64 64, i32 0, metadata !29} ; [ DW_TAG_member ] [tt_] [line 114, size 32, align 32, offset 64] [from int]
!212 = metadata !{i32 786445, metadata !11, metadata !12, metadata !"seed", i32 127, i64 32, i64 32, i64 448, i32 0, metadata !23} ; [ DW_TAG_member ] [seed] [line 127, size 32, align 32, offset 448] [from unsigned int]
!213 = metadata !{i32 786445, metadata !11, metadata !12, metadata !"currentwhite", i32 128, i64 8, i64 8, i64 480, i32 0, metadata !52} ; [ DW_TAG_member ] [currentwhite] [line 128, size 8, align 8, offset 480] [from lu_byte]
!214 = metadata !{i32 786445, metadata !11, metadata !12, metadata !"gcstate", i32 129, i64 8, i64 8, i64 488, i32 0, metadata !52} ; [ DW_TAG_member ] [gcstate] [line 129, size 8, align 8, offset 488] [from lu_byte]
!215 = metadata !{i32 786445, metadata !11, metadata !12, metadata !"gckind", i32 130, i64 8, i64 8, i64 496, i32 0, metadata !52} ; [ DW_TAG_member ] [gckind] [line 130, size 8, align 8, offset 496] [from lu_byte]
!216 = metadata !{i32 786445, metadata !11, metadata !12, metadata !"gcrunning", i32 131, i64 8, i64 8, i64 504, i32 0, metadata !52} ; [ DW_TAG_member ] [gcrunning] [line 131, size 8, align 8, offset 504] [from lu_byte]
!217 = metadata !{i32 786445, metadata !11, metadata !12, metadata !"allgc", i32 132, i64 32, i64 32, i64 512, i32 0, metadata !46} ; [ DW_TAG_member ] [allgc] [line 132, size 32, align 32, offset 512] [from ]
!218 = metadata !{i32 786445, metadata !11, metadata !12, metadata !"sweepgc", i32 133, i64 32, i64 32, i64 544, i32 0, metadata !219} ; [ DW_TAG_member ] [sweepgc] [line 133, size 32, align 32, offset 544] [from ]
!219 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !46} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!220 = metadata !{i32 786445, metadata !11, metadata !12, metadata !"finobj", i32 134, i64 32, i64 32, i64 576, i32 0, metadata !46} ; [ DW_TAG_member ] [finobj] [line 134, size 32, align 32, offset 576] [from ]
!221 = metadata !{i32 786445, metadata !11, metadata !12, metadata !"gray", i32 135, i64 32, i64 32, i64 608, i32 0, metadata !46} ; [ DW_TAG_member ] [gray] [line 135, size 32, align 32, offset 608] [from ]
!222 = metadata !{i32 786445, metadata !11, metadata !12, metadata !"grayagain", i32 136, i64 32, i64 32, i64 640, i32 0, metadata !46} ; [ DW_TAG_member ] [grayagain] [line 136, size 32, align 32, offset 640] [from ]
!223 = metadata !{i32 786445, metadata !11, metadata !12, metadata !"weak", i32 137, i64 32, i64 32, i64 672, i32 0, metadata !46} ; [ DW_TAG_member ] [weak] [line 137, size 32, align 32, offset 672] [from ]
!224 = metadata !{i32 786445, metadata !11, metadata !12, metadata !"ephemeron", i32 138, i64 32, i64 32, i64 704, i32 0, metadata !46} ; [ DW_TAG_member ] [ephemeron] [line 138, size 32, align 32, offset 704] [from ]
!225 = metadata !{i32 786445, metadata !11, metadata !12, metadata !"allweak", i32 139, i64 32, i64 32, i64 736, i32 0, metadata !46} ; [ DW_TAG_member ] [allweak] [line 139, size 32, align 32, offset 736] [from ]
!226 = metadata !{i32 786445, metadata !11, metadata !12, metadata !"tobefnz", i32 140, i64 32, i64 32, i64 768, i32 0, metadata !46} ; [ DW_TAG_member ] [tobefnz] [line 140, size 32, align 32, offset 768] [from ]
!227 = metadata !{i32 786445, metadata !11, metadata !12, metadata !"fixedgc", i32 141, i64 32, i64 32, i64 800, i32 0, metadata !46} ; [ DW_TAG_member ] [fixedgc] [line 141, size 32, align 32, offset 800] [from ]
!228 = metadata !{i32 786445, metadata !11, metadata !12, metadata !"twups", i32 142, i64 32, i64 32, i64 832, i32 0, metadata !158} ; [ DW_TAG_member ] [twups] [line 142, size 32, align 32, offset 832] [from ]
!229 = metadata !{i32 786445, metadata !11, metadata !12, metadata !"gcfinnum", i32 143, i64 32, i64 32, i64 864, i32 0, metadata !23} ; [ DW_TAG_member ] [gcfinnum] [line 143, size 32, align 32, offset 864] [from unsigned int]
!230 = metadata !{i32 786445, metadata !11, metadata !12, metadata !"gcpause", i32 144, i64 32, i64 32, i64 896, i32 0, metadata !29} ; [ DW_TAG_member ] [gcpause] [line 144, size 32, align 32, offset 896] [from int]
!231 = metadata !{i32 786445, metadata !11, metadata !12, metadata !"gcstepmul", i32 145, i64 32, i64 32, i64 928, i32 0, metadata !29} ; [ DW_TAG_member ] [gcstepmul] [line 145, size 32, align 32, offset 928] [from int]
!232 = metadata !{i32 786445, metadata !11, metadata !12, metadata !"panic", i32 146, i64 32, i64 32, i64 960, i32 0, metadata !80} ; [ DW_TAG_member ] [panic] [line 146, size 32, align 32, offset 960] [from lua_CFunction]
!233 = metadata !{i32 786445, metadata !11, metadata !12, metadata !"mainthread", i32 147, i64 32, i64 32, i64 992, i32 0, metadata !158} ; [ DW_TAG_member ] [mainthread] [line 147, size 32, align 32, offset 992] [from ]
!234 = metadata !{i32 786445, metadata !11, metadata !12, metadata !"version", i32 148, i64 32, i64 32, i64 1024, i32 0, metadata !235} ; [ DW_TAG_member ] [version] [line 148, size 32, align 32, offset 1024] [from ]
!235 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !236} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!236 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !209} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from lua_Number]
!237 = metadata !{i32 786445, metadata !11, metadata !12, metadata !"memerrmsg", i32 149, i64 32, i64 32, i64 1056, i32 0, metadata !40} ; [ DW_TAG_member ] [memerrmsg] [line 149, size 32, align 32, offset 1056] [from ]
!238 = metadata !{i32 786445, metadata !11, metadata !12, metadata !"tmname", i32 150, i64 768, i64 32, i64 1088, i32 0, metadata !239} ; [ DW_TAG_member ] [tmname] [line 150, size 768, align 32, offset 1088] [from ]
!239 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 768, i64 32, i32 0, i32 0, metadata !40, metadata !240, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 768, align 32, offset 0] [from ]
!240 = metadata !{metadata !241}
!241 = metadata !{i32 786465, i64 0, i64 24}      ; [ DW_TAG_subrange_type ] [0, 23]
!242 = metadata !{i32 786445, metadata !11, metadata !12, metadata !"mt", i32 151, i64 288, i64 32, i64 1856, i32 0, metadata !243} ; [ DW_TAG_member ] [mt] [line 151, size 288, align 32, offset 1856] [from ]
!243 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 288, i64 32, i32 0, i32 0, metadata !244, metadata !274, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 288, align 32, offset 0] [from ]
!244 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !245} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from Table]
!245 = metadata !{i32 786451, metadata !42, null, metadata !"Table", i32 497, i64 256, i64 32, i32 0, i32 0, null, metadata !246, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [Table] [line 497, size 256, align 32, offset 0] [def] [from ]
!246 = metadata !{metadata !247, metadata !248, metadata !249, metadata !250, metadata !251, metadata !252, metadata !253, metadata !254, metadata !271, metadata !272, metadata !273}
!247 = metadata !{i32 786445, metadata !42, metadata !245, metadata !"next", i32 498, i64 32, i64 32, i64 0, i32 0, metadata !46} ; [ DW_TAG_member ] [next] [line 498, size 32, align 32, offset 0] [from ]
!248 = metadata !{i32 786445, metadata !42, metadata !245, metadata !"tt", i32 498, i64 8, i64 8, i64 32, i32 0, metadata !52} ; [ DW_TAG_member ] [tt] [line 498, size 8, align 8, offset 32] [from lu_byte]
!249 = metadata !{i32 786445, metadata !42, metadata !245, metadata !"marked", i32 498, i64 8, i64 8, i64 40, i32 0, metadata !52} ; [ DW_TAG_member ] [marked] [line 498, size 8, align 8, offset 40] [from lu_byte]
!250 = metadata !{i32 786445, metadata !42, metadata !245, metadata !"flags", i32 499, i64 8, i64 8, i64 48, i32 0, metadata !52} ; [ DW_TAG_member ] [flags] [line 499, size 8, align 8, offset 48] [from lu_byte]
!251 = metadata !{i32 786445, metadata !42, metadata !245, metadata !"lsizenode", i32 500, i64 8, i64 8, i64 56, i32 0, metadata !52} ; [ DW_TAG_member ] [lsizenode] [line 500, size 8, align 8, offset 56] [from lu_byte]
!252 = metadata !{i32 786445, metadata !42, metadata !245, metadata !"sizearray", i32 501, i64 32, i64 32, i64 64, i32 0, metadata !23} ; [ DW_TAG_member ] [sizearray] [line 501, size 32, align 32, offset 64] [from unsigned int]
!253 = metadata !{i32 786445, metadata !42, metadata !245, metadata !"array", i32 502, i64 32, i64 32, i64 96, i32 0, metadata !96} ; [ DW_TAG_member ] [array] [line 502, size 32, align 32, offset 96] [from ]
!254 = metadata !{i32 786445, metadata !42, metadata !245, metadata !"node", i32 503, i64 32, i64 32, i64 128, i32 0, metadata !255} ; [ DW_TAG_member ] [node] [line 503, size 32, align 32, offset 128] [from ]
!255 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !256} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from Node]
!256 = metadata !{i32 786454, metadata !42, null, metadata !"Node", i32 494, i64 0, i64 0, i64 0, i32 0, metadata !257} ; [ DW_TAG_typedef ] [Node] [line 494, size 0, align 0, offset 0] [from Node]
!257 = metadata !{i32 786451, metadata !42, null, metadata !"Node", i32 491, i64 256, i64 64, i32 0, i32 0, null, metadata !258, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [Node] [line 491, size 256, align 64, offset 0] [def] [from ]
!258 = metadata !{metadata !259, metadata !260}
!259 = metadata !{i32 786445, metadata !42, metadata !257, metadata !"i_val", i32 492, i64 128, i64 64, i64 0, i32 0, metadata !69} ; [ DW_TAG_member ] [i_val] [line 492, size 128, align 64, offset 0] [from TValue]
!260 = metadata !{i32 786445, metadata !42, metadata !257, metadata !"i_key", i32 493, i64 128, i64 64, i64 128, i32 0, metadata !261} ; [ DW_TAG_member ] [i_key] [line 493, size 128, align 64, offset 128] [from TKey]
!261 = metadata !{i32 786454, metadata !42, null, metadata !"TKey", i32 481, i64 0, i64 0, i64 0, i32 0, metadata !262} ; [ DW_TAG_typedef ] [TKey] [line 481, size 0, align 0, offset 0] [from TKey]
!262 = metadata !{i32 786455, metadata !42, null, metadata !"TKey", i32 475, i64 128, i64 64, i64 0, i32 0, null, metadata !263, i32 0, null, null, null} ; [ DW_TAG_union_type ] [TKey] [line 475, size 128, align 64, offset 0] [def] [from ]
!263 = metadata !{metadata !264, metadata !270}
!264 = metadata !{i32 786445, metadata !42, metadata !262, metadata !"nk", i32 479, i64 128, i64 64, i64 0, i32 0, metadata !265} ; [ DW_TAG_member ] [nk] [line 479, size 128, align 64, offset 0] [from ]
!265 = metadata !{i32 786451, metadata !42, metadata !262, metadata !"", i32 476, i64 128, i64 64, i32 0, i32 0, null, metadata !266, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 476, size 128, align 64, offset 0] [def] [from ]
!266 = metadata !{metadata !267, metadata !268, metadata !269}
!267 = metadata !{i32 786445, metadata !42, metadata !265, metadata !"value_", i32 477, i64 64, i64 64, i64 0, i32 0, metadata !73} ; [ DW_TAG_member ] [value_] [line 477, size 64, align 64, offset 0] [from Value]
!268 = metadata !{i32 786445, metadata !42, metadata !265, metadata !"tt_", i32 477, i64 32, i64 32, i64 64, i32 0, metadata !29} ; [ DW_TAG_member ] [tt_] [line 477, size 32, align 32, offset 64] [from int]
!269 = metadata !{i32 786445, metadata !42, metadata !265, metadata !"next", i32 478, i64 32, i64 32, i64 96, i32 0, metadata !29} ; [ DW_TAG_member ] [next] [line 478, size 32, align 32, offset 96] [from int]
!270 = metadata !{i32 786445, metadata !42, metadata !262, metadata !"tvk", i32 480, i64 128, i64 64, i64 0, i32 0, metadata !69} ; [ DW_TAG_member ] [tvk] [line 480, size 128, align 64, offset 0] [from TValue]
!271 = metadata !{i32 786445, metadata !42, metadata !245, metadata !"lastfree", i32 504, i64 32, i64 32, i64 160, i32 0, metadata !255} ; [ DW_TAG_member ] [lastfree] [line 504, size 32, align 32, offset 160] [from ]
!272 = metadata !{i32 786445, metadata !42, metadata !245, metadata !"metatable", i32 505, i64 32, i64 32, i64 192, i32 0, metadata !244} ; [ DW_TAG_member ] [metatable] [line 505, size 32, align 32, offset 192] [from ]
!273 = metadata !{i32 786445, metadata !42, metadata !245, metadata !"gclist", i32 506, i64 32, i64 32, i64 224, i32 0, metadata !46} ; [ DW_TAG_member ] [gclist] [line 506, size 32, align 32, offset 224] [from ]
!274 = metadata !{metadata !275}
!275 = metadata !{i32 786465, i64 0, i64 9}       ; [ DW_TAG_subrange_type ] [0, 8]
!276 = metadata !{i32 786445, metadata !11, metadata !12, metadata !"strcache", i32 152, i64 3392, i64 32, i64 2144, i32 0, metadata !277} ; [ DW_TAG_member ] [strcache] [line 152, size 3392, align 32, offset 2144] [from ]
!277 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 3392, i64 32, i32 0, i32 0, metadata !40, metadata !278, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 3392, align 32, offset 0] [from ]
!278 = metadata !{metadata !279, metadata !280}
!279 = metadata !{i32 786465, i64 0, i64 53}      ; [ DW_TAG_subrange_type ] [0, 52]
!280 = metadata !{i32 786465, i64 0, i64 2}       ; [ DW_TAG_subrange_type ] [0, 1]
!281 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"luaE_extendCI", metadata !"luaE_extendCI", metadata !"", i32 108, metadata !282, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, %struct.CallInfo* (%struct.lua_State*)* @luaE_extendCI, null, null, metadata !2, i32 108} ; [ DW_TAG_subprogram ] [line 108] [def] [luaE_extendCI]
!282 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !283, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!283 = metadata !{metadata !99, metadata !84}
!284 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"luaE_freeCI", metadata !"luaE_freeCI", metadata !"", i32 122, metadata !285, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.lua_State*)* @luaE_freeCI, null, null, metadata !2, i32 122} ; [ DW_TAG_subprogram ] [line 122] [def] [luaE_freeCI]
!285 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !286, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!286 = metadata !{null, metadata !84}
!287 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"luaE_shrinkCI", metadata !"luaE_shrinkCI", metadata !"", i32 137, metadata !285, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.lua_State*)* @luaE_shrinkCI, null, null, metadata !2, i32 137} ; [ DW_TAG_subprogram ] [line 137] [def] [luaE_shrinkCI]
!288 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"lua_newthread", metadata !"lua_newthread", metadata !"", i32 255, metadata !289, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, %struct.lua_State* (%struct.lua_State*)* @lua_newthread, null, null, metadata !2, i32 255} ; [ DW_TAG_subprogram ] [line 255] [def] [lua_newthread]
!289 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !290, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!290 = metadata !{metadata !84, metadata !84}
!291 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"luaE_freethread", metadata !"luaE_freethread", metadata !"", i32 285, metadata !292, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.lua_State*, %struct.lua_State*)* @luaE_freethread, null, null, metadata !2, i32 285} ; [ DW_TAG_subprogram ] [line 285] [def] [luaE_freethread]
!292 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !293, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!293 = metadata !{null, metadata !84, metadata !84}
!294 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"lua_newstate", metadata !"lua_newstate", metadata !"", i32 295, metadata !295, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, %struct.lua_State* (i8* (i8*, i8*, i32, i32)*, i8*)* @lua_newstate, null, null, metadata !2, i32 295} ; [ DW_TAG_subprogram ] [line 295] [def] [lua_newstate]
!295 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !296, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!296 = metadata !{metadata !84, metadata !15, metadata !20}
!297 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"lua_close", metadata !"lua_close", metadata !"", i32 341, metadata !285, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.lua_State*)* @lua_close, null, null, metadata !2, i32 341} ; [ DW_TAG_subprogram ] [line 341] [def] [lua_close]
!298 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"close_state", metadata !"close_state", metadata !"", i32 242, metadata !285, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.lua_State*)* @close_state, null, null, metadata !2, i32 242} ; [ DW_TAG_subprogram ] [line 242] [local] [def] [close_state]
!299 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"f_luaopen", metadata !"f_luaopen", metadata !"", i32 203, metadata !300, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.lua_State*, i8*)* @f_luaopen, null, null, metadata !2, i32 203} ; [ DW_TAG_subprogram ] [line 203] [local] [def] [f_luaopen]
!300 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !301, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!301 = metadata !{null, metadata !84, metadata !20}
!302 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"init_registry", metadata !"init_registry", metadata !"", i32 184, metadata !303, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.lua_State*, %struct.global_State*)* @init_registry, null, null, metadata !2, i32 184} ; [ DW_TAG_subprogram ] [line 184] [local] [def] [init_registry]
!303 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !304, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!304 = metadata !{null, metadata !84, metadata !9}
!305 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"makeseed", metadata !"makeseed", metadata !"", i32 81, metadata !306, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @makeseed, null, null, metadata !2, i32 81} ; [ DW_TAG_subprogram ] [line 81] [local] [def] [makeseed]
!306 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !307, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!307 = metadata !{metadata !23, metadata !84}
!308 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"freestack", metadata !"freestack", metadata !"", i32 171, metadata !285, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.lua_State*)* @freestack, null, null, metadata !2, i32 171} ; [ DW_TAG_subprogram ] [line 171] [local] [def] [freestack]
!309 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"stack_init", metadata !"stack_init", metadata !"", i32 151, metadata !292, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.lua_State*, %struct.lua_State*)* @stack_init, null, null, metadata !2, i32 151} ; [ DW_TAG_subprogram ] [line 151] [local] [def] [stack_init]
!310 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"preinit_thread", metadata !"preinit_thread", metadata !"", i32 221, metadata !303, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.lua_State*, %struct.global_State*)* @preinit_thread, null, null, metadata !2, i32 221} ; [ DW_TAG_subprogram ] [line 221] [local] [def] [preinit_thread]
!311 = metadata !{void (%struct.global_State*, i32)* @luaE_setdebt}
!312 = metadata !{metadata !"luaE_setdebt"}
!313 = metadata !{%struct.CallInfo* (%struct.lua_State*)* @luaE_extendCI}
!314 = metadata !{metadata !"luaE_extendCI"}
!315 = metadata !{i8* (%struct.lua_State*, i8*, i32, i32)* @luaM_realloc_}
!316 = metadata !{metadata !"luaM_realloc_"}
!317 = metadata !{void (%struct.lua_State*)* @luaE_freeCI}
!318 = metadata !{metadata !"luaE_freeCI"}
!319 = metadata !{void (%struct.lua_State*)* @luaE_shrinkCI}
!320 = metadata !{metadata !"luaE_shrinkCI"}
!321 = metadata !{%struct.lua_State* (%struct.lua_State*)* @lua_newthread}
!322 = metadata !{metadata !"lua_newthread"}
!323 = metadata !{void (%struct.lua_State*)* @luaC_step}
!324 = metadata !{metadata !"luaC_step"}
!325 = metadata !{void (%struct.lua_State*, %struct.global_State*)* @preinit_thread}
!326 = metadata !{metadata !"preinit_thread"}
!327 = metadata !{void (%struct.lua_State*, %struct.lua_State*)* @stack_init}
!328 = metadata !{metadata !"stack_init"}
!329 = metadata !{void (%struct.lua_State*, %struct.lua_State*)* @luaE_freethread}
!330 = metadata !{metadata !"luaE_freethread"}
!331 = metadata !{void (%struct.lua_State*, %struct.lua_TValue*)* @luaF_close}
!332 = metadata !{metadata !"luaF_close"}
!333 = metadata !{void (%struct.lua_State*)* @freestack}
!334 = metadata !{metadata !"freestack"}
!335 = metadata !{%struct.lua_State* (i8* (i8*, i8*, i32, i32)*, i8*)* @lua_newstate}
!336 = metadata !{metadata !"lua_newstate"}
!337 = metadata !{i32 (%struct.lua_State*)* @makeseed}
!338 = metadata !{metadata !"makeseed"}
!339 = metadata !{i32 (%struct.lua_State*, void (%struct.lua_State*, i8*)*, i8*)* @luaD_rawrunprotected}
!340 = metadata !{metadata !"luaD_rawrunprotected"}
!341 = metadata !{void (%struct.lua_State*, i8*)* @f_luaopen}
!342 = metadata !{metadata !"f_luaopen"}
!343 = metadata !{void (%struct.lua_State*)* @close_state}
!344 = metadata !{metadata !"close_state"}
!345 = metadata !{void (%struct.lua_State*)* @lua_close}
!346 = metadata !{metadata !"lua_close"}
!347 = metadata !{void (%struct.lua_State*)* @luaC_freeallobjects}
!348 = metadata !{metadata !"luaC_freeallobjects"}
!349 = metadata !{void (%struct.lua_State*, %struct.global_State*)* @init_registry}
!350 = metadata !{metadata !"init_registry"}
!351 = metadata !{void (%struct.lua_State*)* @luaS_init}
!352 = metadata !{metadata !"luaS_init"}
!353 = metadata !{void (%struct.lua_State*)* @luaT_init}
!354 = metadata !{metadata !"luaT_init"}
!355 = metadata !{void (%struct.lua_State*)* @luaX_init}
!356 = metadata !{metadata !"luaX_init"}
!357 = metadata !{double* (%struct.lua_State*)* @lua_version}
!358 = metadata !{metadata !"lua_version"}
!359 = metadata !{%struct.Table* (%struct.lua_State*)* @luaH_new}
!360 = metadata !{metadata !"luaH_new"}
!361 = metadata !{void (%struct.lua_State*, %struct.Table*, i32, i32)* @luaH_resize}
!362 = metadata !{metadata !"luaH_resize"}
!363 = metadata !{void (%struct.lua_State*, %struct.Table*, i64, %struct.lua_TValue*)* @luaH_setint}
!364 = metadata !{metadata !"luaH_setint"}
!365 = metadata !{i32 (i32*)* @time}
!366 = metadata !{metadata !"time"}
!367 = metadata !{i32 (i8*, i32, i32)* @luaS_hash}
!368 = metadata !{metadata !"luaS_hash"}
!369 = metadata !{metadata !"void.global_State *.1.l_mem.0"}
!370 = metadata !{metadata !"CallInfo .lua_State *.1"}
!371 = metadata !{metadata !"void .lua_State *.1.void *.1.size_t.0.size_t.0"}
!372 = metadata !{metadata !"void.lua_State *.1"}
!373 = metadata !{metadata !"lua_State .lua_State *.1"}
!374 = metadata !{metadata !"void.lua_State *.1.global_State *.1"}
!375 = metadata !{metadata !"void.lua_State *.1.lua_State *.1"}
!376 = metadata !{metadata !"void.lua_State *.1.StkId.1"}
!377 = metadata !{metadata !"lua_State .lua_Alloc.1.void *.1"}
!378 = metadata !{metadata !"unsigned int.lua_State *.1"}
!379 = metadata !{metadata !"int.lua_State *.1.Pfunc.1.void *.1"}
!380 = metadata !{metadata !"void.lua_State *.1.void *.1"}
!381 = metadata !{metadata !"const lua_Number .lua_State *.1"}
!382 = metadata !{metadata !"Table .lua_State *.1"}
!383 = metadata !{metadata !"void.lua_State *.1.Table *.1.unsigned int.0.unsigned int.0"}
!384 = metadata !{metadata !"void.lua_State *.1.Table *.1.lua_Integer.0.TValue *.1"}
!385 = metadata !{metadata !"time_t.time_t *.1"}
!386 = metadata !{metadata !"unsigned int.const char *.1.size_t.0.unsigned int.0"}
!387 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lstate.h"}
!388 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lmem.h"}
!389 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lua.h"}
!390 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lgc.h"}
!391 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lstate.c"}
!392 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lfunc.h"}
!393 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/ldo.h"}
!394 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lstring.h"}
!395 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/ltm.h"}
!396 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/llex.h"}
!397 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/ltable.h"}
!398 = metadata !{metadata !"D:/Xilinx/SDx/2016.3/SDK/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include\5Ctime.h"}
!399 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!400 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!401 = metadata !{i32 1, metadata !"wchar_size", i32 4}
!402 = metadata !{i32 1, metadata !"min_enum_size", i32 4}
!403 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
!404 = metadata !{i32 786689, metadata !4, metadata !"g", metadata !6, i32 16777314, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [g] [line 98]
!405 = metadata !{i32 98, i32 34, metadata !4, null}
!406 = metadata !{i32 786689, metadata !4, metadata !"debt", metadata !6, i32 33554530, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [debt] [line 98]
!407 = metadata !{i32 98, i32 43, metadata !4, null}
!408 = metadata !{i32 786688, metadata !4, metadata !"tb", metadata !6, i32 99, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tb] [line 99]
!409 = metadata !{i32 99, i32 9, metadata !4, null}
!410 = metadata !{i32 99, i32 3, metadata !4, null}
!411 = metadata !{i32 101, i32 7, metadata !412, null}
!412 = metadata !{i32 786443, metadata !5, metadata !4, i32 101, i32 7, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstate.c]
!413 = metadata !{i32 102, i32 5, metadata !412, null}
!414 = metadata !{i32 103, i32 3, metadata !4, null}
!415 = metadata !{i32 104, i32 3, metadata !4, null}
!416 = metadata !{i32 105, i32 1, metadata !4, null}
!417 = metadata !{i32 786689, metadata !281, metadata !"L", metadata !6, i32 16777324, metadata !84, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 108]
!418 = metadata !{i32 108, i32 37, metadata !281, null}
!419 = metadata !{i32 786688, metadata !281, metadata !"ci", metadata !6, i32 109, metadata !99, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ci] [line 109]
!420 = metadata !{i32 109, i32 13, metadata !281, null}
!421 = metadata !{i32 109, i32 18, metadata !281, null}
!422 = metadata !{i32 111, i32 3, metadata !281, null}
!423 = metadata !{i32 112, i32 3, metadata !281, null}
!424 = metadata !{i32 113, i32 3, metadata !281, null}
!425 = metadata !{i32 114, i32 3, metadata !281, null}
!426 = metadata !{i32 115, i32 3, metadata !281, null}
!427 = metadata !{i32 786689, metadata !284, metadata !"L", metadata !6, i32 16777338, metadata !84, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 122]
!428 = metadata !{i32 122, i32 30, metadata !284, null}
!429 = metadata !{i32 786688, metadata !284, metadata !"ci", metadata !6, i32 123, metadata !99, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ci] [line 123]
!430 = metadata !{i32 123, i32 13, metadata !284, null}
!431 = metadata !{i32 123, i32 3, metadata !284, null}
!432 = metadata !{i32 786688, metadata !284, metadata !"next", metadata !6, i32 124, metadata !99, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [next] [line 124]
!433 = metadata !{i32 124, i32 13, metadata !284, null}
!434 = metadata !{i32 124, i32 3, metadata !284, null}
!435 = metadata !{i32 125, i32 3, metadata !284, null}
!436 = metadata !{i32 126, i32 3, metadata !284, null}
!437 = metadata !{i32 126, i32 3, metadata !438, null}
!438 = metadata !{i32 786443, metadata !5, metadata !284, i32 126, i32 3, i32 1, i32 22} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstate.c]
!439 = metadata !{i32 127, i32 5, metadata !440, null}
!440 = metadata !{i32 786443, metadata !5, metadata !284, i32 126, i32 31, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstate.c]
!441 = metadata !{i32 128, i32 5, metadata !440, null}
!442 = metadata !{i32 129, i32 5, metadata !440, null}
!443 = metadata !{i32 130, i32 3, metadata !440, null}
!444 = metadata !{i32 131, i32 1, metadata !284, null}
!445 = metadata !{i32 786689, metadata !287, metadata !"L", metadata !6, i32 16777353, metadata !84, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 137]
!446 = metadata !{i32 137, i32 32, metadata !287, null}
!447 = metadata !{i32 786688, metadata !287, metadata !"ci", metadata !6, i32 138, metadata !99, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ci] [line 138]
!448 = metadata !{i32 138, i32 13, metadata !287, null}
!449 = metadata !{i32 138, i32 3, metadata !287, null}
!450 = metadata !{i32 786688, metadata !287, metadata !"next2", metadata !6, i32 139, metadata !99, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [next2] [line 139]
!451 = metadata !{i32 139, i32 13, metadata !287, null}
!452 = metadata !{i32 141, i32 3, metadata !287, null}
!453 = metadata !{i32 141, i32 3, metadata !454, null}
!454 = metadata !{i32 786443, metadata !5, metadata !287, i32 141, i32 3, i32 1, i32 23} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstate.c]
!455 = metadata !{i32 141, i32 3, metadata !456, null}
!456 = metadata !{i32 786443, metadata !5, metadata !287, i32 141, i32 3, i32 2, i32 24} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstate.c]
!457 = metadata !{i32 141, i32 3, metadata !458, null}
!458 = metadata !{i32 786443, metadata !5, metadata !287, i32 141, i32 3, i32 3, i32 25} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstate.c]
!459 = metadata !{i32 142, i32 5, metadata !460, null}
!460 = metadata !{i32 786443, metadata !5, metadata !287, i32 141, i32 64, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstate.c]
!461 = metadata !{i32 143, i32 5, metadata !460, null}
!462 = metadata !{i32 144, i32 5, metadata !460, null}
!463 = metadata !{i32 145, i32 5, metadata !460, null}
!464 = metadata !{i32 146, i32 5, metadata !460, null}
!465 = metadata !{i32 147, i32 3, metadata !460, null}
!466 = metadata !{i32 148, i32 1, metadata !287, null}
!467 = metadata !{i32 786689, metadata !288, metadata !"L", metadata !6, i32 16777471, metadata !84, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 255]
!468 = metadata !{i32 255, i32 46, metadata !288, null}
!469 = metadata !{i32 786688, metadata !288, metadata !"g", metadata !6, i32 256, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [g] [line 256]
!470 = metadata !{i32 256, i32 17, metadata !288, null}
!471 = metadata !{i32 256, i32 3, metadata !288, null}
!472 = metadata !{i32 786688, metadata !288, metadata !"L1", metadata !6, i32 257, metadata !84, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [L1] [line 257]
!473 = metadata !{i32 257, i32 14, metadata !288, null}
!474 = metadata !{i32 259, i32 3, metadata !475, null}
!475 = metadata !{i32 786443, metadata !5, metadata !476, i32 259, i32 3, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstate.c]
!476 = metadata !{i32 786443, metadata !5, metadata !288, i32 259, i32 3, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstate.c]
!477 = metadata !{i32 259, i32 3, metadata !478, null}
!478 = metadata !{i32 786443, metadata !5, metadata !479, i32 259, i32 3, i32 1, i32 26} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstate.c]
!479 = metadata !{i32 786443, metadata !5, metadata !475, i32 259, i32 3, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstate.c]
!480 = metadata !{i32 261, i32 9, metadata !288, null}
!481 = metadata !{i32 262, i32 3, metadata !288, null}
!482 = metadata !{i32 263, i32 3, metadata !288, null}
!483 = metadata !{i32 265, i32 3, metadata !288, null}
!484 = metadata !{i32 266, i32 3, metadata !288, null}
!485 = metadata !{i32 786688, metadata !486, metadata !"io", metadata !6, i32 268, metadata !96, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [io] [line 268]
!486 = metadata !{i32 786443, metadata !5, metadata !288, i32 268, i32 3, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstate.c]
!487 = metadata !{i32 268, i32 3, metadata !486, null}
!488 = metadata !{i32 786688, metadata !486, metadata !"x_", metadata !6, i32 268, metadata !84, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x_] [line 268]
!489 = metadata !{i32 269, i32 3, metadata !490, null}
!490 = metadata !{i32 786443, metadata !5, metadata !288, i32 269, i32 3, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstate.c]
!491 = metadata !{i32 270, i32 3, metadata !288, null}
!492 = metadata !{i32 271, i32 3, metadata !288, null}
!493 = metadata !{i32 272, i32 3, metadata !288, null}
!494 = metadata !{i32 273, i32 3, metadata !288, null}
!495 = metadata !{i32 274, i32 3, metadata !288, null}
!496 = metadata !{i32 276, i32 3, metadata !288, null}
!497 = metadata !{i32 278, i32 3, metadata !288, null}
!498 = metadata !{i32 279, i32 3, metadata !288, null}
!499 = metadata !{i32 281, i32 3, metadata !288, null}
!500 = metadata !{i32 786689, metadata !310, metadata !"L", metadata !6, i32 16777437, metadata !84, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 221]
!501 = metadata !{i32 221, i32 40, metadata !310, null}
!502 = metadata !{i32 786689, metadata !310, metadata !"g", metadata !6, i32 33554653, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [g] [line 221]
!503 = metadata !{i32 221, i32 57, metadata !310, null}
!504 = metadata !{i32 222, i32 3, metadata !310, null}
!505 = metadata !{i32 223, i32 3, metadata !310, null}
!506 = metadata !{i32 224, i32 3, metadata !310, null}
!507 = metadata !{i32 225, i32 3, metadata !310, null}
!508 = metadata !{i32 226, i32 3, metadata !310, null}
!509 = metadata !{i32 227, i32 3, metadata !310, null}
!510 = metadata !{i32 228, i32 3, metadata !310, null}
!511 = metadata !{i32 229, i32 3, metadata !310, null}
!512 = metadata !{i32 230, i32 3, metadata !310, null}
!513 = metadata !{i32 231, i32 3, metadata !310, null}
!514 = metadata !{i32 232, i32 3, metadata !310, null}
!515 = metadata !{i32 233, i32 3, metadata !310, null}
!516 = metadata !{i32 234, i32 3, metadata !310, null}
!517 = metadata !{i32 235, i32 3, metadata !310, null}
!518 = metadata !{i32 236, i32 3, metadata !310, null}
!519 = metadata !{i32 237, i32 3, metadata !310, null}
!520 = metadata !{i32 238, i32 3, metadata !310, null}
!521 = metadata !{i32 239, i32 1, metadata !310, null}
!522 = metadata !{i32 786689, metadata !309, metadata !"L1", metadata !6, i32 16777367, metadata !84, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L1] [line 151]
!523 = metadata !{i32 151, i32 36, metadata !309, null}
!524 = metadata !{i32 786689, metadata !309, metadata !"L", metadata !6, i32 33554583, metadata !84, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 151]
!525 = metadata !{i32 151, i32 51, metadata !309, null}
!526 = metadata !{i32 786688, metadata !309, metadata !"i", metadata !6, i32 152, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 152]
!527 = metadata !{i32 152, i32 7, metadata !309, null}
!528 = metadata !{i32 786688, metadata !309, metadata !"ci", metadata !6, i32 152, metadata !99, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ci] [line 152]
!529 = metadata !{i32 152, i32 20, metadata !309, null}
!530 = metadata !{i32 154, i32 15, metadata !309, null}
!531 = metadata !{i32 155, i32 3, metadata !309, null}
!532 = metadata !{i32 156, i32 8, metadata !533, null}
!533 = metadata !{i32 786443, metadata !5, metadata !309, i32 156, i32 3, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstate.c]
!534 = metadata !{i32 156, i32 8, metadata !535, null}
!535 = metadata !{i32 786443, metadata !5, metadata !536, i32 156, i32 8, i32 2, i32 28} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstate.c]
!536 = metadata !{i32 786443, metadata !5, metadata !533, i32 156, i32 8, i32 1, i32 27} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstate.c]
!537 = metadata !{i32 157, i32 5, metadata !533, null}
!538 = metadata !{i32 156, i32 37, metadata !533, null}
!539 = metadata !{i32 158, i32 3, metadata !309, null}
!540 = metadata !{i32 159, i32 3, metadata !309, null}
!541 = metadata !{i32 161, i32 3, metadata !309, null}
!542 = metadata !{i32 162, i32 3, metadata !309, null}
!543 = metadata !{i32 163, i32 3, metadata !309, null}
!544 = metadata !{i32 164, i32 3, metadata !309, null}
!545 = metadata !{i32 165, i32 3, metadata !309, null}
!546 = metadata !{i32 166, i32 3, metadata !309, null}
!547 = metadata !{i32 167, i32 3, metadata !309, null}
!548 = metadata !{i32 168, i32 1, metadata !309, null}
!549 = metadata !{i32 786689, metadata !291, metadata !"L", metadata !6, i32 16777501, metadata !84, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 285]
!550 = metadata !{i32 285, i32 34, metadata !291, null}
!551 = metadata !{i32 786689, metadata !291, metadata !"L1", metadata !6, i32 33554717, metadata !84, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L1] [line 285]
!552 = metadata !{i32 285, i32 48, metadata !291, null}
!553 = metadata !{i32 786688, metadata !291, metadata !"l", metadata !6, i32 286, metadata !554, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [l] [line 286]
!554 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !555} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from LX]
!555 = metadata !{i32 786454, metadata !5, null, metadata !"LX", i32 57, i64 0, i64 0, i64 0, i32 0, metadata !556} ; [ DW_TAG_typedef ] [LX] [line 57, size 0, align 0, offset 0] [from LX]
!556 = metadata !{i32 786451, metadata !5, null, metadata !"LX", i32 54, i64 992, i64 32, i32 0, i32 0, null, metadata !557, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [LX] [line 54, size 992, align 32, offset 0] [def] [from ]
!557 = metadata !{metadata !558, metadata !562}
!558 = metadata !{i32 786445, metadata !5, metadata !556, metadata !"extra_", i32 55, i64 32, i64 8, i64 0, i32 0, metadata !559} ; [ DW_TAG_member ] [extra_] [line 55, size 32, align 8, offset 0] [from ]
!559 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 32, i64 8, i32 0, i32 0, metadata !52, metadata !560, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 32, align 8, offset 0] [from lu_byte]
!560 = metadata !{metadata !561}
!561 = metadata !{i32 786465, i64 0, i64 4}       ; [ DW_TAG_subrange_type ] [0, 3]
!562 = metadata !{i32 786445, metadata !5, metadata !556, metadata !"l", i32 56, i64 960, i64 32, i64 32, i32 0, metadata !85} ; [ DW_TAG_member ] [l] [line 56, size 960, align 32, offset 32] [from lua_State]
!563 = metadata !{i32 286, i32 7, metadata !291, null}
!564 = metadata !{i32 286, i32 3, metadata !291, null}
!565 = metadata !{i32 287, i32 3, metadata !291, null}
!566 = metadata !{i32 289, i32 3, metadata !291, null}
!567 = metadata !{i32 290, i32 3, metadata !291, null}
!568 = metadata !{i32 291, i32 3, metadata !291, null}
!569 = metadata !{i32 292, i32 1, metadata !291, null}
!570 = metadata !{i32 786689, metadata !308, metadata !"L", metadata !6, i32 16777387, metadata !84, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 171]
!571 = metadata !{i32 171, i32 35, metadata !308, null}
!572 = metadata !{i32 172, i32 7, metadata !573, null}
!573 = metadata !{i32 786443, metadata !5, metadata !308, i32 172, i32 7, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstate.c]
!574 = metadata !{i32 173, i32 5, metadata !573, null}
!575 = metadata !{i32 174, i32 3, metadata !308, null}
!576 = metadata !{i32 175, i32 3, metadata !308, null}
!577 = metadata !{i32 177, i32 3, metadata !308, null}
!578 = metadata !{i32 178, i32 1, metadata !308, null}
!579 = metadata !{i32 178, i32 1, metadata !580, null}
!580 = metadata !{i32 786443, metadata !5, metadata !308, i32 178, i32 1, i32 1, i32 29} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstate.c]
!581 = metadata !{i32 786689, metadata !294, metadata !"f", metadata !6, i32 16777511, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [f] [line 295]
!582 = metadata !{i32 295, i32 44, metadata !294, null}
!583 = metadata !{i32 786689, metadata !294, metadata !"ud", metadata !6, i32 33554727, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ud] [line 295]
!584 = metadata !{i32 295, i32 53, metadata !294, null}
!585 = metadata !{i32 786688, metadata !294, metadata !"i", metadata !6, i32 296, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 296]
!586 = metadata !{i32 296, i32 7, metadata !294, null}
!587 = metadata !{i32 786688, metadata !294, metadata !"L", metadata !6, i32 297, metadata !84, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [L] [line 297]
!588 = metadata !{i32 297, i32 14, metadata !294, null}
!589 = metadata !{i32 786688, metadata !294, metadata !"g", metadata !6, i32 298, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [g] [line 298]
!590 = metadata !{i32 298, i32 17, metadata !294, null}
!591 = metadata !{i32 786688, metadata !294, metadata !"l", metadata !6, i32 299, metadata !592, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [l] [line 299]
!592 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !593} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from LG]
!593 = metadata !{i32 786454, metadata !5, null, metadata !"LG", i32 66, i64 0, i64 0, i64 0, i32 0, metadata !594} ; [ DW_TAG_typedef ] [LG] [line 66, size 0, align 0, offset 0] [from LG]
!594 = metadata !{i32 786451, metadata !5, null, metadata !"LG", i32 63, i64 6592, i64 64, i32 0, i32 0, null, metadata !595, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [LG] [line 63, size 6592, align 64, offset 0] [def] [from ]
!595 = metadata !{metadata !596, metadata !597}
!596 = metadata !{i32 786445, metadata !5, metadata !594, metadata !"l", i32 64, i64 992, i64 32, i64 0, i32 0, metadata !555} ; [ DW_TAG_member ] [l] [line 64, size 992, align 32, offset 0] [from LX]
!597 = metadata !{i32 786445, metadata !5, metadata !594, metadata !"g", i32 65, i64 5568, i64 64, i64 1024, i32 0, metadata !10} ; [ DW_TAG_member ] [g] [line 65, size 5568, align 64, offset 1024] [from global_State]
!598 = metadata !{i32 299, i32 7, metadata !294, null}
!599 = metadata !{i32 299, i32 11, metadata !294, null}
!600 = metadata !{i32 300, i32 7, metadata !601, null}
!601 = metadata !{i32 786443, metadata !5, metadata !294, i32 300, i32 7, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstate.c]
!602 = metadata !{i32 300, i32 18, metadata !603, null}
!603 = metadata !{i32 786443, metadata !5, metadata !601, i32 300, i32 18, i32 1, i32 30} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstate.c]
!604 = metadata !{i32 301, i32 3, metadata !294, null}
!605 = metadata !{i32 302, i32 3, metadata !294, null}
!606 = metadata !{i32 303, i32 3, metadata !294, null}
!607 = metadata !{i32 304, i32 3, metadata !294, null}
!608 = metadata !{i32 305, i32 3, metadata !294, null}
!609 = metadata !{i32 306, i32 3, metadata !294, null}
!610 = metadata !{i32 307, i32 3, metadata !294, null}
!611 = metadata !{i32 308, i32 3, metadata !294, null}
!612 = metadata !{i32 309, i32 3, metadata !294, null}
!613 = metadata !{i32 310, i32 3, metadata !294, null}
!614 = metadata !{i32 311, i32 13, metadata !294, null}
!615 = metadata !{i32 312, i32 3, metadata !294, null}
!616 = metadata !{i32 313, i32 3, metadata !294, null}
!617 = metadata !{i32 314, i32 3, metadata !294, null}
!618 = metadata !{i32 315, i32 3, metadata !294, null}
!619 = metadata !{i32 316, i32 3, metadata !294, null}
!620 = metadata !{i32 317, i32 3, metadata !294, null}
!621 = metadata !{i32 318, i32 3, metadata !294, null}
!622 = metadata !{i32 319, i32 3, metadata !294, null}
!623 = metadata !{i32 320, i32 3, metadata !294, null}
!624 = metadata !{i32 321, i32 3, metadata !294, null}
!625 = metadata !{i32 322, i32 3, metadata !294, null}
!626 = metadata !{i32 323, i32 3, metadata !294, null}
!627 = metadata !{i32 324, i32 3, metadata !294, null}
!628 = metadata !{i32 325, i32 3, metadata !294, null}
!629 = metadata !{i32 326, i32 3, metadata !294, null}
!630 = metadata !{i32 327, i32 3, metadata !294, null}
!631 = metadata !{i32 328, i32 3, metadata !294, null}
!632 = metadata !{i32 329, i32 3, metadata !294, null}
!633 = metadata !{i32 330, i32 3, metadata !294, null}
!634 = metadata !{i32 331, i32 8, metadata !635, null}
!635 = metadata !{i32 786443, metadata !5, metadata !294, i32 331, i32 3, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstate.c]
!636 = metadata !{i32 331, i32 8, metadata !637, null}
!637 = metadata !{i32 786443, metadata !5, metadata !638, i32 331, i32 8, i32 4, i32 34} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstate.c]
!638 = metadata !{i32 786443, metadata !5, metadata !635, i32 331, i32 8, i32 1, i32 31} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstate.c]
!639 = metadata !{i32 331, i32 35, metadata !640, null}
!640 = metadata !{i32 786443, metadata !5, metadata !635, i32 331, i32 35, i32 2, i32 32} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstate.c]
!641 = metadata !{i32 331, i32 30, metadata !642, null}
!642 = metadata !{i32 786443, metadata !5, metadata !635, i32 331, i32 30, i32 3, i32 33} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstate.c]
!643 = metadata !{i32 332, i32 7, metadata !644, null}
!644 = metadata !{i32 786443, metadata !5, metadata !294, i32 332, i32 7, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstate.c]
!645 = metadata !{i32 334, i32 5, metadata !646, null}
!646 = metadata !{i32 786443, metadata !5, metadata !644, i32 332, i32 59, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstate.c]
!647 = metadata !{i32 335, i32 5, metadata !646, null}
!648 = metadata !{i32 336, i32 3, metadata !646, null}
!649 = metadata !{i32 337, i32 3, metadata !294, null}
!650 = metadata !{i32 338, i32 1, metadata !294, null}
!651 = metadata !{i32 786689, metadata !305, metadata !"L", metadata !6, i32 16777297, metadata !84, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 81]
!652 = metadata !{i32 81, i32 42, metadata !305, null}
!653 = metadata !{i32 786688, metadata !305, metadata !"buff", metadata !6, i32 82, metadata !654, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buff] [line 82]
!654 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 128, i64 8, i32 0, i32 0, metadata !177, metadata !655, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 128, align 8, offset 0] [from char]
!655 = metadata !{metadata !656}
!656 = metadata !{i32 786465, i64 0, i64 16}      ; [ DW_TAG_subrange_type ] [0, 15]
!657 = metadata !{i32 82, i32 8, metadata !305, null}
!658 = metadata !{i32 786688, metadata !305, metadata !"h", metadata !6, i32 83, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [h] [line 83]
!659 = metadata !{i32 83, i32 16, metadata !305, null}
!660 = metadata !{i32 83, i32 20, metadata !305, null}
!661 = metadata !{i32 786688, metadata !305, metadata !"p", metadata !6, i32 84, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 84]
!662 = metadata !{i32 84, i32 7, metadata !305, null}
!663 = metadata !{i32 84, i32 3, metadata !305, null}
!664 = metadata !{i32 786688, metadata !665, metadata !"t", metadata !6, i32 85, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [t] [line 85]
!665 = metadata !{i32 786443, metadata !5, metadata !305, i32 85, i32 3, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstate.c]
!666 = metadata !{i32 85, i32 3, metadata !665, null}
!667 = metadata !{i32 786688, metadata !668, metadata !"t", metadata !6, i32 86, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [t] [line 86]
!668 = metadata !{i32 786443, metadata !5, metadata !305, i32 86, i32 3, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstate.c]
!669 = metadata !{i32 86, i32 3, metadata !668, null}
!670 = metadata !{i32 786688, metadata !671, metadata !"t", metadata !6, i32 87, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [t] [line 87]
!671 = metadata !{i32 786443, metadata !5, metadata !305, i32 87, i32 3, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstate.c]
!672 = metadata !{i32 87, i32 3, metadata !671, null}
!673 = metadata !{i32 786688, metadata !674, metadata !"t", metadata !6, i32 88, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [t] [line 88]
!674 = metadata !{i32 786443, metadata !5, metadata !305, i32 88, i32 3, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstate.c]
!675 = metadata !{i32 88, i32 3, metadata !674, null}
!676 = metadata !{i32 90, i32 10, metadata !305, null}
!677 = metadata !{i32 786689, metadata !299, metadata !"L", metadata !6, i32 16777419, metadata !84, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 203]
!678 = metadata !{i32 203, i32 35, metadata !299, null}
!679 = metadata !{i32 786689, metadata !299, metadata !"ud", metadata !6, i32 33554635, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ud] [line 203]
!680 = metadata !{i32 203, i32 44, metadata !299, null}
!681 = metadata !{i32 786688, metadata !299, metadata !"g", metadata !6, i32 204, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [g] [line 204]
!682 = metadata !{i32 204, i32 17, metadata !299, null}
!683 = metadata !{i32 204, i32 3, metadata !299, null}
!684 = metadata !{i32 205, i32 3, metadata !299, null}
!685 = metadata !{i32 206, i32 3, metadata !299, null}
!686 = metadata !{i32 207, i32 3, metadata !299, null}
!687 = metadata !{i32 208, i32 3, metadata !299, null}
!688 = metadata !{i32 209, i32 3, metadata !299, null}
!689 = metadata !{i32 210, i32 3, metadata !299, null}
!690 = metadata !{i32 211, i32 3, metadata !299, null}
!691 = metadata !{i32 212, i32 16, metadata !299, null}
!692 = metadata !{i32 213, i32 3, metadata !299, null}
!693 = metadata !{i32 214, i32 1, metadata !299, null}
!694 = metadata !{i32 786689, metadata !298, metadata !"L", metadata !6, i32 16777458, metadata !84, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 242]
!695 = metadata !{i32 242, i32 37, metadata !298, null}
!696 = metadata !{i32 786688, metadata !298, metadata !"g", metadata !6, i32 243, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [g] [line 243]
!697 = metadata !{i32 243, i32 17, metadata !298, null}
!698 = metadata !{i32 243, i32 3, metadata !298, null}
!699 = metadata !{i32 244, i32 3, metadata !298, null}
!700 = metadata !{i32 245, i32 3, metadata !298, null}
!701 = metadata !{i32 246, i32 7, metadata !702, null}
!702 = metadata !{i32 786443, metadata !5, metadata !298, i32 246, i32 7, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstate.c]
!703 = metadata !{i32 247, i32 5, metadata !702, null}
!704 = metadata !{i32 248, i32 3, metadata !298, null}
!705 = metadata !{i32 249, i32 3, metadata !298, null}
!706 = metadata !{i32 251, i32 3, metadata !298, null}
!707 = metadata !{i32 252, i32 1, metadata !298, null}
!708 = metadata !{i32 786689, metadata !297, metadata !"L", metadata !6, i32 16777557, metadata !84, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 341]
!709 = metadata !{i32 341, i32 36, metadata !297, null}
!710 = metadata !{i32 342, i32 3, metadata !297, null}
!711 = metadata !{i32 344, i32 3, metadata !297, null}
!712 = metadata !{i32 345, i32 1, metadata !297, null}
!713 = metadata !{i32 786689, metadata !302, metadata !"L", metadata !6, i32 16777400, metadata !84, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 184]
!714 = metadata !{i32 184, i32 39, metadata !302, null}
!715 = metadata !{i32 786689, metadata !302, metadata !"g", metadata !6, i32 33554616, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [g] [line 184]
!716 = metadata !{i32 184, i32 56, metadata !302, null}
!717 = metadata !{i32 786688, metadata !302, metadata !"temp", metadata !6, i32 185, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [temp] [line 185]
!718 = metadata !{i32 185, i32 10, metadata !302, null}
!719 = metadata !{i32 786688, metadata !302, metadata !"registry", metadata !6, i32 187, metadata !720, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [registry] [line 187]
!720 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !721} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from Table]
!721 = metadata !{i32 786454, metadata !42, null, metadata !"Table", i32 507, i64 0, i64 0, i64 0, i32 0, metadata !245} ; [ DW_TAG_typedef ] [Table] [line 507, size 0, align 0, offset 0] [from Table]
!722 = metadata !{i32 187, i32 10, metadata !302, null}
!723 = metadata !{i32 187, i32 21, metadata !302, null}
!724 = metadata !{i32 786688, metadata !725, metadata !"io", metadata !6, i32 188, metadata !96, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [io] [line 188]
!725 = metadata !{i32 786443, metadata !5, metadata !302, i32 188, i32 3, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstate.c]
!726 = metadata !{i32 188, i32 3, metadata !725, null}
!727 = metadata !{i32 786688, metadata !725, metadata !"x_", metadata !6, i32 188, metadata !720, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x_] [line 188]
!728 = metadata !{i32 189, i32 3, metadata !302, null}
!729 = metadata !{i32 786688, metadata !730, metadata !"io", metadata !6, i32 191, metadata !96, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [io] [line 191]
!730 = metadata !{i32 786443, metadata !5, metadata !302, i32 191, i32 3, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstate.c]
!731 = metadata !{i32 191, i32 3, metadata !730, null}
!732 = metadata !{i32 786688, metadata !730, metadata !"x_", metadata !6, i32 191, metadata !84, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x_] [line 191]
!733 = metadata !{i32 192, i32 3, metadata !302, null}
!734 = metadata !{i32 786688, metadata !735, metadata !"io", metadata !6, i32 194, metadata !96, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [io] [line 194]
!735 = metadata !{i32 786443, metadata !5, metadata !302, i32 194, i32 3, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lstate.c]
!736 = metadata !{i32 194, i32 3, metadata !735, null}
!737 = metadata !{i32 786688, metadata !735, metadata !"x_", metadata !6, i32 194, metadata !720, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x_] [line 194]
!738 = metadata !{i32 195, i32 3, metadata !302, null}
!739 = metadata !{i32 196, i32 1, metadata !302, null}
