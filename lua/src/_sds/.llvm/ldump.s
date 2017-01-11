; ModuleID = 'C:/Users/DevolutionX/workspace/lua/src/ldump.c'
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-n32-S64"
target triple = "armv7--linux-gnueabihf"

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
%struct.DumpState = type { %struct.lua_State*, i32 (%struct.lua_State*, i8*, i32, i8*)*, i8*, i32, i32 }
%union.GCUnion = type { %union.Closure, [88 x i8] }
%union.Closure = type { %struct.CClosure }
%struct.CClosure = type { %struct.GCObject*, i8, i8, i8, %struct.GCObject*, i32 (%struct.lua_State*)*, [1 x %struct.lua_TValue] }

@.str = private unnamed_addr constant [5 x i8] c"\1BLua\00", align 1
@.str1 = private unnamed_addr constant [2 x i8] c"5\00", align 1
@.str2 = private unnamed_addr constant [2 x i8] c"3\00", align 1
@.str3 = private unnamed_addr constant [7 x i8] c"\19\93\0D\0A\1A\0A\00", align 1

; Function Attrs: nounwind
define hidden i32 @luaU_dump(%struct.lua_State* %L, %struct.Proto* %f, i32 (%struct.lua_State*, i8*, i32, i8*)* %w, i8* %data, i32 %strip) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca %struct.Proto*, align 4
  %3 = alloca i32 (%struct.lua_State*, i8*, i32, i8*)*, align 4
  %4 = alloca i8*, align 4
  %5 = alloca i32, align 4
  %D = alloca %struct.DumpState, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !417), !dbg !418
  store %struct.Proto* %f, %struct.Proto** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.Proto** %2}, metadata !419), !dbg !420
  store i32 (%struct.lua_State*, i8*, i32, i8*)* %w, i32 (%struct.lua_State*, i8*, i32, i8*)** %3, align 4
  call void @llvm.dbg.declare(metadata !{i32 (%struct.lua_State*, i8*, i32, i8*)** %3}, metadata !421), !dbg !422
  store i8* %data, i8** %4, align 4
  call void @llvm.dbg.declare(metadata !{i8** %4}, metadata !423), !dbg !424
  store i32 %strip, i32* %5, align 4
  call void @llvm.dbg.declare(metadata !{i32* %5}, metadata !425), !dbg !426
  call void @llvm.dbg.declare(metadata !{%struct.DumpState* %D}, metadata !427), !dbg !428
  %6 = load %struct.lua_State** %1, align 4, !dbg !429
  %7 = getelementptr inbounds %struct.DumpState* %D, i32 0, i32 0, !dbg !429
  store %struct.lua_State* %6, %struct.lua_State** %7, align 4, !dbg !429
  %8 = load i32 (%struct.lua_State*, i8*, i32, i8*)** %3, align 4, !dbg !430
  %9 = getelementptr inbounds %struct.DumpState* %D, i32 0, i32 1, !dbg !430
  store i32 (%struct.lua_State*, i8*, i32, i8*)* %8, i32 (%struct.lua_State*, i8*, i32, i8*)** %9, align 4, !dbg !430
  %10 = load i8** %4, align 4, !dbg !431
  %11 = getelementptr inbounds %struct.DumpState* %D, i32 0, i32 2, !dbg !431
  store i8* %10, i8** %11, align 4, !dbg !431
  %12 = load i32* %5, align 4, !dbg !432
  %13 = getelementptr inbounds %struct.DumpState* %D, i32 0, i32 3, !dbg !432
  store i32 %12, i32* %13, align 4, !dbg !432
  %14 = getelementptr inbounds %struct.DumpState* %D, i32 0, i32 4, !dbg !433
  store i32 0, i32* %14, align 4, !dbg !433
  call void @DumpHeader(%struct.DumpState* %D), !dbg !434
  %15 = load %struct.Proto** %2, align 4, !dbg !435
  %16 = getelementptr inbounds %struct.Proto* %15, i32 0, i32 6, !dbg !435
  %17 = load i32* %16, align 4, !dbg !435
  call void @DumpByte(i32 %17, %struct.DumpState* %D), !dbg !435
  %18 = load %struct.Proto** %2, align 4, !dbg !436
  call void @DumpFunction(%struct.Proto* %18, %struct.TString* null, %struct.DumpState* %D), !dbg !436
  %19 = getelementptr inbounds %struct.DumpState* %D, i32 0, i32 4, !dbg !437
  %20 = load i32* %19, align 4, !dbg !437
  ret i32 %20, !dbg !437
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind
define internal void @DumpHeader(%struct.DumpState* %D) #0 {
  %1 = alloca %struct.DumpState*, align 4
  store %struct.DumpState* %D, %struct.DumpState** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.DumpState** %1}, metadata !438), !dbg !439
  %2 = load %struct.DumpState** %1, align 4, !dbg !440
  call void @DumpBlock(i8* getelementptr inbounds ([5 x i8]* @.str, i32 0, i32 0), i32 4, %struct.DumpState* %2), !dbg !440
  %3 = load i8* getelementptr inbounds ([2 x i8]* @.str1, i32 0, i32 0), align 1, !dbg !441
  %4 = zext i8 %3 to i32, !dbg !441
  %5 = sub nsw i32 %4, 48, !dbg !441
  %6 = mul nsw i32 %5, 16, !dbg !441
  %7 = load i8* getelementptr inbounds ([2 x i8]* @.str2, i32 0, i32 0), align 1, !dbg !441
  %8 = zext i8 %7 to i32, !dbg !441
  %9 = sub nsw i32 %8, 48, !dbg !441
  %10 = add nsw i32 %6, %9, !dbg !441
  %11 = load %struct.DumpState** %1, align 4, !dbg !441
  call void @DumpByte(i32 %10, %struct.DumpState* %11), !dbg !441
  %12 = load %struct.DumpState** %1, align 4, !dbg !442
  call void @DumpByte(i32 0, %struct.DumpState* %12), !dbg !442
  %13 = load %struct.DumpState** %1, align 4, !dbg !443
  call void @DumpBlock(i8* getelementptr inbounds ([7 x i8]* @.str3, i32 0, i32 0), i32 6, %struct.DumpState* %13), !dbg !443
  %14 = load %struct.DumpState** %1, align 4, !dbg !444
  call void @DumpByte(i32 4, %struct.DumpState* %14), !dbg !444
  %15 = load %struct.DumpState** %1, align 4, !dbg !445
  call void @DumpByte(i32 4, %struct.DumpState* %15), !dbg !445
  %16 = load %struct.DumpState** %1, align 4, !dbg !446
  call void @DumpByte(i32 4, %struct.DumpState* %16), !dbg !446
  %17 = load %struct.DumpState** %1, align 4, !dbg !447
  call void @DumpByte(i32 8, %struct.DumpState* %17), !dbg !447
  %18 = load %struct.DumpState** %1, align 4, !dbg !448
  call void @DumpByte(i32 8, %struct.DumpState* %18), !dbg !448
  %19 = load %struct.DumpState** %1, align 4, !dbg !449
  call void @DumpInteger(i64 22136, %struct.DumpState* %19), !dbg !449
  %20 = load %struct.DumpState** %1, align 4, !dbg !450
  call void @DumpNumber(double 3.705000e+02, %struct.DumpState* %20), !dbg !450
  ret void, !dbg !451
}

; Function Attrs: nounwind
define internal void @DumpByte(i32 %y, %struct.DumpState* %D) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.DumpState*, align 4
  %x = alloca i8, align 1
  store i32 %y, i32* %1, align 4
  call void @llvm.dbg.declare(metadata !{i32* %1}, metadata !452), !dbg !453
  store %struct.DumpState* %D, %struct.DumpState** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.DumpState** %2}, metadata !454), !dbg !455
  call void @llvm.dbg.declare(metadata !{i8* %x}, metadata !456), !dbg !457
  %3 = load i32* %1, align 4, !dbg !458
  %4 = trunc i32 %3 to i8, !dbg !458
  store i8 %4, i8* %x, align 1, !dbg !458
  %5 = load %struct.DumpState** %2, align 4, !dbg !459
  call void @DumpBlock(i8* %x, i32 1, %struct.DumpState* %5), !dbg !459
  ret void, !dbg !460
}

; Function Attrs: nounwind
define internal void @DumpFunction(%struct.Proto* %f, %struct.TString* %psource, %struct.DumpState* %D) #0 {
  %1 = alloca %struct.Proto*, align 4
  %2 = alloca %struct.TString*, align 4
  %3 = alloca %struct.DumpState*, align 4
  store %struct.Proto* %f, %struct.Proto** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.Proto** %1}, metadata !461), !dbg !462
  store %struct.TString* %psource, %struct.TString** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.TString** %2}, metadata !463), !dbg !464
  store %struct.DumpState* %D, %struct.DumpState** %3, align 4
  call void @llvm.dbg.declare(metadata !{%struct.DumpState** %3}, metadata !465), !dbg !466
  %4 = load %struct.DumpState** %3, align 4, !dbg !467
  %5 = getelementptr inbounds %struct.DumpState* %4, i32 0, i32 3, !dbg !467
  %6 = load i32* %5, align 4, !dbg !467
  %7 = icmp ne i32 %6, 0, !dbg !467
  br i1 %7, label %14, label %8, !dbg !467

; <label>:8                                       ; preds = %0
  %9 = load %struct.Proto** %1, align 4, !dbg !469
  %10 = getelementptr inbounds %struct.Proto* %9, i32 0, i32 21, !dbg !469
  %11 = load %struct.TString** %10, align 4, !dbg !469
  %12 = load %struct.TString** %2, align 4, !dbg !469
  %13 = icmp eq %struct.TString* %11, %12, !dbg !469
  br i1 %13, label %14, label %16, !dbg !469

; <label>:14                                      ; preds = %8, %0
  %15 = load %struct.DumpState** %3, align 4, !dbg !471
  call void @DumpString(%struct.TString* null, %struct.DumpState* %15), !dbg !471
  br label %21, !dbg !471

; <label>:16                                      ; preds = %8
  %17 = load %struct.Proto** %1, align 4, !dbg !472
  %18 = getelementptr inbounds %struct.Proto* %17, i32 0, i32 21, !dbg !472
  %19 = load %struct.TString** %18, align 4, !dbg !472
  %20 = load %struct.DumpState** %3, align 4, !dbg !472
  call void @DumpString(%struct.TString* %19, %struct.DumpState* %20), !dbg !472
  br label %21

; <label>:21                                      ; preds = %16, %14
  %22 = load %struct.Proto** %1, align 4, !dbg !473
  %23 = getelementptr inbounds %struct.Proto* %22, i32 0, i32 12, !dbg !473
  %24 = load i32* %23, align 4, !dbg !473
  %25 = load %struct.DumpState** %3, align 4, !dbg !473
  call void @DumpInt(i32 %24, %struct.DumpState* %25), !dbg !473
  %26 = load %struct.Proto** %1, align 4, !dbg !474
  %27 = getelementptr inbounds %struct.Proto* %26, i32 0, i32 13, !dbg !474
  %28 = load i32* %27, align 4, !dbg !474
  %29 = load %struct.DumpState** %3, align 4, !dbg !474
  call void @DumpInt(i32 %28, %struct.DumpState* %29), !dbg !474
  %30 = load %struct.Proto** %1, align 4, !dbg !475
  %31 = getelementptr inbounds %struct.Proto* %30, i32 0, i32 3, !dbg !475
  %32 = load i8* %31, align 1, !dbg !475
  %33 = zext i8 %32 to i32, !dbg !475
  %34 = load %struct.DumpState** %3, align 4, !dbg !475
  call void @DumpByte(i32 %33, %struct.DumpState* %34), !dbg !475
  %35 = load %struct.Proto** %1, align 4, !dbg !476
  %36 = getelementptr inbounds %struct.Proto* %35, i32 0, i32 4, !dbg !476
  %37 = load i8* %36, align 1, !dbg !476
  %38 = zext i8 %37 to i32, !dbg !476
  %39 = load %struct.DumpState** %3, align 4, !dbg !476
  call void @DumpByte(i32 %38, %struct.DumpState* %39), !dbg !476
  %40 = load %struct.Proto** %1, align 4, !dbg !477
  %41 = getelementptr inbounds %struct.Proto* %40, i32 0, i32 5, !dbg !477
  %42 = load i8* %41, align 1, !dbg !477
  %43 = zext i8 %42 to i32, !dbg !477
  %44 = load %struct.DumpState** %3, align 4, !dbg !477
  call void @DumpByte(i32 %43, %struct.DumpState* %44), !dbg !477
  %45 = load %struct.Proto** %1, align 4, !dbg !478
  %46 = load %struct.DumpState** %3, align 4, !dbg !478
  call void @DumpCode(%struct.Proto* %45, %struct.DumpState* %46), !dbg !478
  %47 = load %struct.Proto** %1, align 4, !dbg !479
  %48 = load %struct.DumpState** %3, align 4, !dbg !479
  call void @DumpConstants(%struct.Proto* %47, %struct.DumpState* %48), !dbg !479
  %49 = load %struct.Proto** %1, align 4, !dbg !480
  %50 = load %struct.DumpState** %3, align 4, !dbg !480
  call void @DumpUpvalues(%struct.Proto* %49, %struct.DumpState* %50), !dbg !480
  %51 = load %struct.Proto** %1, align 4, !dbg !481
  %52 = load %struct.DumpState** %3, align 4, !dbg !481
  call void @DumpProtos(%struct.Proto* %51, %struct.DumpState* %52), !dbg !481
  %53 = load %struct.Proto** %1, align 4, !dbg !482
  %54 = load %struct.DumpState** %3, align 4, !dbg !482
  call void @DumpDebug(%struct.Proto* %53, %struct.DumpState* %54), !dbg !482
  ret void, !dbg !483
}

; Function Attrs: nounwind
define internal void @DumpString(%struct.TString* %s, %struct.DumpState* %D) #0 {
  %1 = alloca %struct.TString*, align 4
  %2 = alloca %struct.DumpState*, align 4
  %size = alloca i32, align 4
  %str = alloca i8*, align 4
  store %struct.TString* %s, %struct.TString** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.TString** %1}, metadata !484), !dbg !485
  store %struct.DumpState* %D, %struct.DumpState** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.DumpState** %2}, metadata !486), !dbg !487
  %3 = load %struct.TString** %1, align 4, !dbg !488
  %4 = icmp eq %struct.TString* %3, null, !dbg !488
  br i1 %4, label %5, label %7, !dbg !488

; <label>:5                                       ; preds = %0
  %6 = load %struct.DumpState** %2, align 4, !dbg !490
  call void @DumpByte(i32 0, %struct.DumpState* %6), !dbg !490
  br label %44, !dbg !490

; <label>:7                                       ; preds = %0
  call void @llvm.dbg.declare(metadata !{i32* %size}, metadata !491), !dbg !493
  %8 = load %struct.TString** %1, align 4, !dbg !494
  %9 = getelementptr inbounds %struct.TString* %8, i32 0, i32 1, !dbg !494
  %10 = load i8* %9, align 1, !dbg !494
  %11 = zext i8 %10 to i32, !dbg !494
  %12 = icmp eq i32 %11, 4, !dbg !494
  br i1 %12, label %13, label %18, !dbg !494

; <label>:13                                      ; preds = %7
  %14 = load %struct.TString** %1, align 4, !dbg !495
  %15 = getelementptr inbounds %struct.TString* %14, i32 0, i32 4, !dbg !495
  %16 = load i8* %15, align 1, !dbg !495
  %17 = zext i8 %16 to i32, !dbg !495
  br label %23, !dbg !495

; <label>:18                                      ; preds = %7
  %19 = load %struct.TString** %1, align 4, !dbg !497
  %20 = getelementptr inbounds %struct.TString* %19, i32 0, i32 6, !dbg !497
  %21 = bitcast %union.anon* %20 to i32*, !dbg !497
  %22 = load i32* %21, align 4, !dbg !497
  br label %23, !dbg !497

; <label>:23                                      ; preds = %18, %13
  %24 = phi i32 [ %17, %13 ], [ %22, %18 ], !dbg !494
  %25 = add i32 %24, 1, !dbg !499
  store i32 %25, i32* %size, align 4, !dbg !499
  call void @llvm.dbg.declare(metadata !{i8** %str}, metadata !502), !dbg !503
  %26 = load %struct.TString** %1, align 4, !dbg !504
  %27 = bitcast %struct.TString* %26 to i8*, !dbg !504
  %28 = getelementptr inbounds i8* %27, i32 16, !dbg !504
  store i8* %28, i8** %str, align 4, !dbg !504
  %29 = load i32* %size, align 4, !dbg !505
  %30 = icmp ult i32 %29, 255, !dbg !505
  br i1 %30, label %31, label %34, !dbg !505

; <label>:31                                      ; preds = %23
  %32 = load i32* %size, align 4, !dbg !507
  %33 = load %struct.DumpState** %2, align 4, !dbg !507
  call void @DumpByte(i32 %32, %struct.DumpState* %33), !dbg !507
  br label %38, !dbg !507

; <label>:34                                      ; preds = %23
  %35 = load %struct.DumpState** %2, align 4, !dbg !508
  call void @DumpByte(i32 255, %struct.DumpState* %35), !dbg !508
  %36 = bitcast i32* %size to i8*, !dbg !510
  %37 = load %struct.DumpState** %2, align 4, !dbg !510
  call void @DumpBlock(i8* %36, i32 4, %struct.DumpState* %37), !dbg !510
  br label %38

; <label>:38                                      ; preds = %34, %31
  %39 = load i8** %str, align 4, !dbg !511
  %40 = load i32* %size, align 4, !dbg !511
  %41 = sub i32 %40, 1, !dbg !511
  %42 = mul i32 %41, 1, !dbg !511
  %43 = load %struct.DumpState** %2, align 4, !dbg !511
  call void @DumpBlock(i8* %39, i32 %42, %struct.DumpState* %43), !dbg !511
  br label %44

; <label>:44                                      ; preds = %38, %5
  ret void, !dbg !512
}

; Function Attrs: nounwind
define internal void @DumpInt(i32 %x, %struct.DumpState* %D) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.DumpState*, align 4
  store i32 %x, i32* %1, align 4
  call void @llvm.dbg.declare(metadata !{i32* %1}, metadata !513), !dbg !514
  store %struct.DumpState* %D, %struct.DumpState** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.DumpState** %2}, metadata !515), !dbg !516
  %3 = bitcast i32* %1 to i8*, !dbg !517
  %4 = load %struct.DumpState** %2, align 4, !dbg !517
  call void @DumpBlock(i8* %3, i32 4, %struct.DumpState* %4), !dbg !517
  ret void, !dbg !518
}

; Function Attrs: nounwind
define internal void @DumpCode(%struct.Proto* %f, %struct.DumpState* %D) #0 {
  %1 = alloca %struct.Proto*, align 4
  %2 = alloca %struct.DumpState*, align 4
  store %struct.Proto* %f, %struct.Proto** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.Proto** %1}, metadata !519), !dbg !520
  store %struct.DumpState* %D, %struct.DumpState** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.DumpState** %2}, metadata !521), !dbg !522
  %3 = load %struct.Proto** %1, align 4, !dbg !523
  %4 = getelementptr inbounds %struct.Proto* %3, i32 0, i32 8, !dbg !523
  %5 = load i32* %4, align 4, !dbg !523
  %6 = load %struct.DumpState** %2, align 4, !dbg !523
  call void @DumpInt(i32 %5, %struct.DumpState* %6), !dbg !523
  %7 = load %struct.Proto** %1, align 4, !dbg !524
  %8 = getelementptr inbounds %struct.Proto* %7, i32 0, i32 15, !dbg !524
  %9 = load i32** %8, align 4, !dbg !524
  %10 = bitcast i32* %9 to i8*, !dbg !524
  %11 = load %struct.Proto** %1, align 4, !dbg !524
  %12 = getelementptr inbounds %struct.Proto* %11, i32 0, i32 8, !dbg !524
  %13 = load i32* %12, align 4, !dbg !524
  %14 = mul i32 %13, 4, !dbg !524
  %15 = load %struct.DumpState** %2, align 4, !dbg !524
  call void @DumpBlock(i8* %10, i32 %14, %struct.DumpState* %15), !dbg !524
  ret void, !dbg !525
}

; Function Attrs: nounwind
define internal void @DumpConstants(%struct.Proto* %f, %struct.DumpState* %D) #0 {
  %1 = alloca %struct.Proto*, align 4
  %2 = alloca %struct.DumpState*, align 4
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %o = alloca %struct.lua_TValue*, align 4
  store %struct.Proto* %f, %struct.Proto** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.Proto** %1}, metadata !526), !dbg !527
  store %struct.DumpState* %D, %struct.DumpState** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.DumpState** %2}, metadata !528), !dbg !529
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !530), !dbg !531
  call void @llvm.dbg.declare(metadata !{i32* %n}, metadata !532), !dbg !533
  %3 = load %struct.Proto** %1, align 4, !dbg !534
  %4 = getelementptr inbounds %struct.Proto* %3, i32 0, i32 7, !dbg !534
  %5 = load i32* %4, align 4, !dbg !534
  store i32 %5, i32* %n, align 4, !dbg !534
  %6 = load i32* %n, align 4, !dbg !535
  %7 = load %struct.DumpState** %2, align 4, !dbg !535
  call void @DumpInt(i32 %6, %struct.DumpState* %7), !dbg !535
  store i32 0, i32* %i, align 4, !dbg !536
  br label %8, !dbg !536

; <label>:8                                       ; preds = %56, %0
  %9 = load i32* %i, align 4, !dbg !538
  %10 = load i32* %n, align 4, !dbg !538
  %11 = icmp slt i32 %9, %10, !dbg !538
  br i1 %11, label %12, label %59, !dbg !538

; <label>:12                                      ; preds = %8
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %o}, metadata !541), !dbg !545
  %13 = load i32* %i, align 4, !dbg !546
  %14 = load %struct.Proto** %1, align 4, !dbg !546
  %15 = getelementptr inbounds %struct.Proto* %14, i32 0, i32 14, !dbg !546
  %16 = load %struct.lua_TValue** %15, align 4, !dbg !546
  %17 = getelementptr inbounds %struct.lua_TValue* %16, i32 %13, !dbg !546
  store %struct.lua_TValue* %17, %struct.lua_TValue** %o, align 4, !dbg !546
  %18 = load %struct.lua_TValue** %o, align 4, !dbg !547
  %19 = getelementptr inbounds %struct.lua_TValue* %18, i32 0, i32 1, !dbg !547
  %20 = load i32* %19, align 4, !dbg !547
  %21 = and i32 %20, 63, !dbg !547
  %22 = load %struct.DumpState** %2, align 4, !dbg !547
  call void @DumpByte(i32 %21, %struct.DumpState* %22), !dbg !547
  %23 = load %struct.lua_TValue** %o, align 4, !dbg !548
  %24 = getelementptr inbounds %struct.lua_TValue* %23, i32 0, i32 1, !dbg !548
  %25 = load i32* %24, align 4, !dbg !548
  %26 = and i32 %25, 63, !dbg !548
  switch i32 %26, label %54 [
    i32 0, label %27
    i32 1, label %28
    i32 3, label %34
    i32 19, label %40
    i32 4, label %46
    i32 20, label %46
  ], !dbg !548

; <label>:27                                      ; preds = %12
  br label %55, !dbg !549

; <label>:28                                      ; preds = %12
  %29 = load %struct.lua_TValue** %o, align 4, !dbg !551
  %30 = getelementptr inbounds %struct.lua_TValue* %29, i32 0, i32 0, !dbg !551
  %31 = bitcast %union.Value* %30 to i32*, !dbg !551
  %32 = load i32* %31, align 4, !dbg !551
  %33 = load %struct.DumpState** %2, align 4, !dbg !551
  call void @DumpByte(i32 %32, %struct.DumpState* %33), !dbg !551
  br label %55, !dbg !552

; <label>:34                                      ; preds = %12
  %35 = load %struct.lua_TValue** %o, align 4, !dbg !553
  %36 = getelementptr inbounds %struct.lua_TValue* %35, i32 0, i32 0, !dbg !553
  %37 = bitcast %union.Value* %36 to double*, !dbg !553
  %38 = load double* %37, align 8, !dbg !553
  %39 = load %struct.DumpState** %2, align 4, !dbg !553
  call void @DumpNumber(double %38, %struct.DumpState* %39), !dbg !553
  br label %55, !dbg !554

; <label>:40                                      ; preds = %12
  %41 = load %struct.lua_TValue** %o, align 4, !dbg !555
  %42 = getelementptr inbounds %struct.lua_TValue* %41, i32 0, i32 0, !dbg !555
  %43 = bitcast %union.Value* %42 to i64*, !dbg !555
  %44 = load i64* %43, align 8, !dbg !555
  %45 = load %struct.DumpState** %2, align 4, !dbg !555
  call void @DumpInteger(i64 %44, %struct.DumpState* %45), !dbg !555
  br label %55, !dbg !556

; <label>:46                                      ; preds = %12, %12
  %47 = load %struct.lua_TValue** %o, align 4, !dbg !557
  %48 = getelementptr inbounds %struct.lua_TValue* %47, i32 0, i32 0, !dbg !557
  %49 = bitcast %union.Value* %48 to %struct.GCObject**, !dbg !557
  %50 = load %struct.GCObject** %49, align 4, !dbg !557
  %51 = bitcast %struct.GCObject* %50 to %union.GCUnion*, !dbg !557
  %52 = bitcast %union.GCUnion* %51 to %struct.TString*, !dbg !557
  %53 = load %struct.DumpState** %2, align 4, !dbg !557
  call void @DumpString(%struct.TString* %52, %struct.DumpState* %53), !dbg !557
  br label %55, !dbg !558

; <label>:54                                      ; preds = %12
  br label %55, !dbg !559

; <label>:55                                      ; preds = %54, %46, %40, %34, %28, %27
  br label %56, !dbg !560

; <label>:56                                      ; preds = %55
  %57 = load i32* %i, align 4, !dbg !561
  %58 = add nsw i32 %57, 1, !dbg !561
  store i32 %58, i32* %i, align 4, !dbg !561
  br label %8, !dbg !561

; <label>:59                                      ; preds = %8
  ret void, !dbg !562
}

; Function Attrs: nounwind
define internal void @DumpUpvalues(%struct.Proto* %f, %struct.DumpState* %D) #0 {
  %1 = alloca %struct.Proto*, align 4
  %2 = alloca %struct.DumpState*, align 4
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  store %struct.Proto* %f, %struct.Proto** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.Proto** %1}, metadata !563), !dbg !564
  store %struct.DumpState* %D, %struct.DumpState** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.DumpState** %2}, metadata !565), !dbg !566
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !567), !dbg !568
  call void @llvm.dbg.declare(metadata !{i32* %n}, metadata !569), !dbg !570
  %3 = load %struct.Proto** %1, align 4, !dbg !571
  %4 = getelementptr inbounds %struct.Proto* %3, i32 0, i32 6, !dbg !571
  %5 = load i32* %4, align 4, !dbg !571
  store i32 %5, i32* %n, align 4, !dbg !571
  %6 = load i32* %n, align 4, !dbg !572
  %7 = load %struct.DumpState** %2, align 4, !dbg !572
  call void @DumpInt(i32 %6, %struct.DumpState* %7), !dbg !572
  store i32 0, i32* %i, align 4, !dbg !573
  br label %8, !dbg !573

; <label>:8                                       ; preds = %31, %0
  %9 = load i32* %i, align 4, !dbg !575
  %10 = load i32* %n, align 4, !dbg !575
  %11 = icmp slt i32 %9, %10, !dbg !575
  br i1 %11, label %12, label %34, !dbg !575

; <label>:12                                      ; preds = %8
  %13 = load i32* %i, align 4, !dbg !578
  %14 = load %struct.Proto** %1, align 4, !dbg !578
  %15 = getelementptr inbounds %struct.Proto* %14, i32 0, i32 19, !dbg !578
  %16 = load %struct.Upvaldesc** %15, align 4, !dbg !578
  %17 = getelementptr inbounds %struct.Upvaldesc* %16, i32 %13, !dbg !578
  %18 = getelementptr inbounds %struct.Upvaldesc* %17, i32 0, i32 1, !dbg !578
  %19 = load i8* %18, align 1, !dbg !578
  %20 = zext i8 %19 to i32, !dbg !578
  %21 = load %struct.DumpState** %2, align 4, !dbg !578
  call void @DumpByte(i32 %20, %struct.DumpState* %21), !dbg !578
  %22 = load i32* %i, align 4, !dbg !580
  %23 = load %struct.Proto** %1, align 4, !dbg !580
  %24 = getelementptr inbounds %struct.Proto* %23, i32 0, i32 19, !dbg !580
  %25 = load %struct.Upvaldesc** %24, align 4, !dbg !580
  %26 = getelementptr inbounds %struct.Upvaldesc* %25, i32 %22, !dbg !580
  %27 = getelementptr inbounds %struct.Upvaldesc* %26, i32 0, i32 2, !dbg !580
  %28 = load i8* %27, align 1, !dbg !580
  %29 = zext i8 %28 to i32, !dbg !580
  %30 = load %struct.DumpState** %2, align 4, !dbg !580
  call void @DumpByte(i32 %29, %struct.DumpState* %30), !dbg !580
  br label %31, !dbg !581

; <label>:31                                      ; preds = %12
  %32 = load i32* %i, align 4, !dbg !582
  %33 = add nsw i32 %32, 1, !dbg !582
  store i32 %33, i32* %i, align 4, !dbg !582
  br label %8, !dbg !582

; <label>:34                                      ; preds = %8
  ret void, !dbg !583
}

; Function Attrs: nounwind
define internal void @DumpProtos(%struct.Proto* %f, %struct.DumpState* %D) #0 {
  %1 = alloca %struct.Proto*, align 4
  %2 = alloca %struct.DumpState*, align 4
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  store %struct.Proto* %f, %struct.Proto** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.Proto** %1}, metadata !584), !dbg !585
  store %struct.DumpState* %D, %struct.DumpState** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.DumpState** %2}, metadata !586), !dbg !587
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !588), !dbg !589
  call void @llvm.dbg.declare(metadata !{i32* %n}, metadata !590), !dbg !591
  %3 = load %struct.Proto** %1, align 4, !dbg !592
  %4 = getelementptr inbounds %struct.Proto* %3, i32 0, i32 10, !dbg !592
  %5 = load i32* %4, align 4, !dbg !592
  store i32 %5, i32* %n, align 4, !dbg !592
  %6 = load i32* %n, align 4, !dbg !593
  %7 = load %struct.DumpState** %2, align 4, !dbg !593
  call void @DumpInt(i32 %6, %struct.DumpState* %7), !dbg !593
  store i32 0, i32* %i, align 4, !dbg !594
  br label %8, !dbg !594

; <label>:8                                       ; preds = %23, %0
  %9 = load i32* %i, align 4, !dbg !596
  %10 = load i32* %n, align 4, !dbg !596
  %11 = icmp slt i32 %9, %10, !dbg !596
  br i1 %11, label %12, label %26, !dbg !596

; <label>:12                                      ; preds = %8
  %13 = load i32* %i, align 4, !dbg !599
  %14 = load %struct.Proto** %1, align 4, !dbg !599
  %15 = getelementptr inbounds %struct.Proto* %14, i32 0, i32 16, !dbg !599
  %16 = load %struct.Proto*** %15, align 4, !dbg !599
  %17 = getelementptr inbounds %struct.Proto** %16, i32 %13, !dbg !599
  %18 = load %struct.Proto** %17, align 4, !dbg !599
  %19 = load %struct.Proto** %1, align 4, !dbg !599
  %20 = getelementptr inbounds %struct.Proto* %19, i32 0, i32 21, !dbg !599
  %21 = load %struct.TString** %20, align 4, !dbg !599
  %22 = load %struct.DumpState** %2, align 4, !dbg !599
  call void @DumpFunction(%struct.Proto* %18, %struct.TString* %21, %struct.DumpState* %22), !dbg !599
  br label %23, !dbg !599

; <label>:23                                      ; preds = %12
  %24 = load i32* %i, align 4, !dbg !600
  %25 = add nsw i32 %24, 1, !dbg !600
  store i32 %25, i32* %i, align 4, !dbg !600
  br label %8, !dbg !600

; <label>:26                                      ; preds = %8
  ret void, !dbg !601
}

; Function Attrs: nounwind
define internal void @DumpDebug(%struct.Proto* %f, %struct.DumpState* %D) #0 {
  %1 = alloca %struct.Proto*, align 4
  %2 = alloca %struct.DumpState*, align 4
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  store %struct.Proto* %f, %struct.Proto** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.Proto** %1}, metadata !602), !dbg !603
  store %struct.DumpState* %D, %struct.DumpState** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.DumpState** %2}, metadata !604), !dbg !605
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !606), !dbg !607
  call void @llvm.dbg.declare(metadata !{i32* %n}, metadata !608), !dbg !609
  %3 = load %struct.DumpState** %2, align 4, !dbg !610
  %4 = getelementptr inbounds %struct.DumpState* %3, i32 0, i32 3, !dbg !610
  %5 = load i32* %4, align 4, !dbg !610
  %6 = icmp ne i32 %5, 0, !dbg !610
  br i1 %6, label %7, label %8, !dbg !610

; <label>:7                                       ; preds = %0
  br label %12, !dbg !611

; <label>:8                                       ; preds = %0
  %9 = load %struct.Proto** %1, align 4, !dbg !613
  %10 = getelementptr inbounds %struct.Proto* %9, i32 0, i32 9, !dbg !613
  %11 = load i32* %10, align 4, !dbg !613
  br label %12, !dbg !613

; <label>:12                                      ; preds = %8, %7
  %13 = phi i32 [ 0, %7 ], [ %11, %8 ], !dbg !610
  store i32 %13, i32* %n, align 4, !dbg !615
  %14 = load i32* %n, align 4, !dbg !618
  %15 = load %struct.DumpState** %2, align 4, !dbg !618
  call void @DumpInt(i32 %14, %struct.DumpState* %15), !dbg !618
  %16 = load %struct.Proto** %1, align 4, !dbg !619
  %17 = getelementptr inbounds %struct.Proto* %16, i32 0, i32 17, !dbg !619
  %18 = load i32** %17, align 4, !dbg !619
  %19 = bitcast i32* %18 to i8*, !dbg !619
  %20 = load i32* %n, align 4, !dbg !619
  %21 = mul i32 %20, 4, !dbg !619
  %22 = load %struct.DumpState** %2, align 4, !dbg !619
  call void @DumpBlock(i8* %19, i32 %21, %struct.DumpState* %22), !dbg !619
  %23 = load %struct.DumpState** %2, align 4, !dbg !620
  %24 = getelementptr inbounds %struct.DumpState* %23, i32 0, i32 3, !dbg !620
  %25 = load i32* %24, align 4, !dbg !620
  %26 = icmp ne i32 %25, 0, !dbg !620
  br i1 %26, label %27, label %28, !dbg !620

; <label>:27                                      ; preds = %12
  br label %32, !dbg !621

; <label>:28                                      ; preds = %12
  %29 = load %struct.Proto** %1, align 4, !dbg !623
  %30 = getelementptr inbounds %struct.Proto* %29, i32 0, i32 11, !dbg !623
  %31 = load i32* %30, align 4, !dbg !623
  br label %32, !dbg !623

; <label>:32                                      ; preds = %28, %27
  %33 = phi i32 [ 0, %27 ], [ %31, %28 ], !dbg !620
  store i32 %33, i32* %n, align 4, !dbg !625
  %34 = load i32* %n, align 4, !dbg !628
  %35 = load %struct.DumpState** %2, align 4, !dbg !628
  call void @DumpInt(i32 %34, %struct.DumpState* %35), !dbg !628
  store i32 0, i32* %i, align 4, !dbg !629
  br label %36, !dbg !629

; <label>:36                                      ; preds = %65, %32
  %37 = load i32* %i, align 4, !dbg !631
  %38 = load i32* %n, align 4, !dbg !631
  %39 = icmp slt i32 %37, %38, !dbg !631
  br i1 %39, label %40, label %68, !dbg !631

; <label>:40                                      ; preds = %36
  %41 = load i32* %i, align 4, !dbg !634
  %42 = load %struct.Proto** %1, align 4, !dbg !634
  %43 = getelementptr inbounds %struct.Proto* %42, i32 0, i32 18, !dbg !634
  %44 = load %struct.LocVar** %43, align 4, !dbg !634
  %45 = getelementptr inbounds %struct.LocVar* %44, i32 %41, !dbg !634
  %46 = getelementptr inbounds %struct.LocVar* %45, i32 0, i32 0, !dbg !634
  %47 = load %struct.TString** %46, align 4, !dbg !634
  %48 = load %struct.DumpState** %2, align 4, !dbg !634
  call void @DumpString(%struct.TString* %47, %struct.DumpState* %48), !dbg !634
  %49 = load i32* %i, align 4, !dbg !636
  %50 = load %struct.Proto** %1, align 4, !dbg !636
  %51 = getelementptr inbounds %struct.Proto* %50, i32 0, i32 18, !dbg !636
  %52 = load %struct.LocVar** %51, align 4, !dbg !636
  %53 = getelementptr inbounds %struct.LocVar* %52, i32 %49, !dbg !636
  %54 = getelementptr inbounds %struct.LocVar* %53, i32 0, i32 1, !dbg !636
  %55 = load i32* %54, align 4, !dbg !636
  %56 = load %struct.DumpState** %2, align 4, !dbg !636
  call void @DumpInt(i32 %55, %struct.DumpState* %56), !dbg !636
  %57 = load i32* %i, align 4, !dbg !637
  %58 = load %struct.Proto** %1, align 4, !dbg !637
  %59 = getelementptr inbounds %struct.Proto* %58, i32 0, i32 18, !dbg !637
  %60 = load %struct.LocVar** %59, align 4, !dbg !637
  %61 = getelementptr inbounds %struct.LocVar* %60, i32 %57, !dbg !637
  %62 = getelementptr inbounds %struct.LocVar* %61, i32 0, i32 2, !dbg !637
  %63 = load i32* %62, align 4, !dbg !637
  %64 = load %struct.DumpState** %2, align 4, !dbg !637
  call void @DumpInt(i32 %63, %struct.DumpState* %64), !dbg !637
  br label %65, !dbg !638

; <label>:65                                      ; preds = %40
  %66 = load i32* %i, align 4, !dbg !639
  %67 = add nsw i32 %66, 1, !dbg !639
  store i32 %67, i32* %i, align 4, !dbg !639
  br label %36, !dbg !639

; <label>:68                                      ; preds = %36
  %69 = load %struct.DumpState** %2, align 4, !dbg !640
  %70 = getelementptr inbounds %struct.DumpState* %69, i32 0, i32 3, !dbg !640
  %71 = load i32* %70, align 4, !dbg !640
  %72 = icmp ne i32 %71, 0, !dbg !640
  br i1 %72, label %73, label %74, !dbg !640

; <label>:73                                      ; preds = %68
  br label %78, !dbg !641

; <label>:74                                      ; preds = %68
  %75 = load %struct.Proto** %1, align 4, !dbg !643
  %76 = getelementptr inbounds %struct.Proto* %75, i32 0, i32 6, !dbg !643
  %77 = load i32* %76, align 4, !dbg !643
  br label %78, !dbg !643

; <label>:78                                      ; preds = %74, %73
  %79 = phi i32 [ 0, %73 ], [ %77, %74 ], !dbg !640
  store i32 %79, i32* %n, align 4, !dbg !645
  %80 = load i32* %n, align 4, !dbg !648
  %81 = load %struct.DumpState** %2, align 4, !dbg !648
  call void @DumpInt(i32 %80, %struct.DumpState* %81), !dbg !648
  store i32 0, i32* %i, align 4, !dbg !649
  br label %82, !dbg !649

; <label>:82                                      ; preds = %95, %78
  %83 = load i32* %i, align 4, !dbg !651
  %84 = load i32* %n, align 4, !dbg !651
  %85 = icmp slt i32 %83, %84, !dbg !651
  br i1 %85, label %86, label %98, !dbg !651

; <label>:86                                      ; preds = %82
  %87 = load i32* %i, align 4, !dbg !654
  %88 = load %struct.Proto** %1, align 4, !dbg !654
  %89 = getelementptr inbounds %struct.Proto* %88, i32 0, i32 19, !dbg !654
  %90 = load %struct.Upvaldesc** %89, align 4, !dbg !654
  %91 = getelementptr inbounds %struct.Upvaldesc* %90, i32 %87, !dbg !654
  %92 = getelementptr inbounds %struct.Upvaldesc* %91, i32 0, i32 0, !dbg !654
  %93 = load %struct.TString** %92, align 4, !dbg !654
  %94 = load %struct.DumpState** %2, align 4, !dbg !654
  call void @DumpString(%struct.TString* %93, %struct.DumpState* %94), !dbg !654
  br label %95, !dbg !654

; <label>:95                                      ; preds = %86
  %96 = load i32* %i, align 4, !dbg !655
  %97 = add nsw i32 %96, 1, !dbg !655
  store i32 %97, i32* %i, align 4, !dbg !655
  br label %82, !dbg !655

; <label>:98                                      ; preds = %82
  ret void, !dbg !656
}

; Function Attrs: nounwind
define internal void @DumpBlock(i8* %b, i32 %size, %struct.DumpState* %D) #0 {
  %1 = alloca i8*, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.DumpState*, align 4
  store i8* %b, i8** %1, align 4
  call void @llvm.dbg.declare(metadata !{i8** %1}, metadata !657), !dbg !658
  store i32 %size, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !659), !dbg !660
  store %struct.DumpState* %D, %struct.DumpState** %3, align 4
  call void @llvm.dbg.declare(metadata !{%struct.DumpState** %3}, metadata !661), !dbg !662
  %4 = load %struct.DumpState** %3, align 4, !dbg !663
  %5 = getelementptr inbounds %struct.DumpState* %4, i32 0, i32 4, !dbg !663
  %6 = load i32* %5, align 4, !dbg !663
  %7 = icmp eq i32 %6, 0, !dbg !663
  br i1 %7, label %8, label %26, !dbg !663

; <label>:8                                       ; preds = %0
  %9 = load i32* %2, align 4, !dbg !665
  %10 = icmp ugt i32 %9, 0, !dbg !665
  br i1 %10, label %11, label %26, !dbg !665

; <label>:11                                      ; preds = %8
  %12 = load %struct.DumpState** %3, align 4, !dbg !667
  %13 = getelementptr inbounds %struct.DumpState* %12, i32 0, i32 1, !dbg !667
  %14 = load i32 (%struct.lua_State*, i8*, i32, i8*)** %13, align 4, !dbg !667
  %15 = load %struct.DumpState** %3, align 4, !dbg !667
  %16 = getelementptr inbounds %struct.DumpState* %15, i32 0, i32 0, !dbg !667
  %17 = load %struct.lua_State** %16, align 4, !dbg !667
  %18 = load i8** %1, align 4, !dbg !667
  %19 = load i32* %2, align 4, !dbg !667
  %20 = load %struct.DumpState** %3, align 4, !dbg !667
  %21 = getelementptr inbounds %struct.DumpState* %20, i32 0, i32 2, !dbg !667
  %22 = load i8** %21, align 4, !dbg !667
  %23 = call i32 %14(%struct.lua_State* %17, i8* %18, i32 %19, i8* %22), !dbg !667
  %24 = load %struct.DumpState** %3, align 4, !dbg !667
  %25 = getelementptr inbounds %struct.DumpState* %24, i32 0, i32 4, !dbg !667
  store i32 %23, i32* %25, align 4, !dbg !667
  br label %26, !dbg !669

; <label>:26                                      ; preds = %11, %8, %0
  ret void, !dbg !670
}

; Function Attrs: nounwind
define internal void @DumpNumber(double %x, %struct.DumpState* %D) #0 {
  %1 = alloca double, align 8
  %2 = alloca %struct.DumpState*, align 4
  store double %x, double* %1, align 8
  call void @llvm.dbg.declare(metadata !{double* %1}, metadata !671), !dbg !672
  store %struct.DumpState* %D, %struct.DumpState** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.DumpState** %2}, metadata !673), !dbg !674
  %3 = bitcast double* %1 to i8*, !dbg !675
  %4 = load %struct.DumpState** %2, align 4, !dbg !675
  call void @DumpBlock(i8* %3, i32 8, %struct.DumpState* %4), !dbg !675
  ret void, !dbg !676
}

; Function Attrs: nounwind
define internal void @DumpInteger(i64 %x, %struct.DumpState* %D) #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.DumpState*, align 4
  store i64 %x, i64* %1, align 8
  call void @llvm.dbg.declare(metadata !{i64* %1}, metadata !677), !dbg !678
  store %struct.DumpState* %D, %struct.DumpState** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.DumpState** %2}, metadata !679), !dbg !680
  %3 = bitcast i64* %1 to i8*, !dbg !681
  %4 = load %struct.DumpState** %2, align 4, !dbg !681
  call void @DumpBlock(i8* %3, i32 8, %struct.DumpState* %4), !dbg !681
  ret void, !dbg !682
}

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }

!llvm.dbg.cu = !{!0}
!xidane.fname = !{!373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400}
!xidane.function_declaration_type = !{!373, !401, !375, !402, !377, !403, !379, !404, !381, !405, !383, !403, !385, !406, !387, !406, !389, !406, !391, !406, !393, !406, !395, !407, !397, !408, !399, !409}
!xidane.function_declaration_filename = !{!373, !410, !375, !411, !377, !411, !379, !411, !381, !411, !383, !411, !385, !411, !387, !411, !389, !411, !391, !411, !393, !411, !395, !411, !397, !411, !399, !411}
!xidane.ExternC = !{!373}
!llvm.module.flags = !{!412, !413, !414, !415}
!llvm.ident = !{!416}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.0 (tags/RELEASE_350/final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src\ldump.c] [DW_LANG_C99]
!1 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src\5Cldump.c", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!2 = metadata !{}
!3 = metadata !{metadata !4, metadata !333, metadata !345, metadata !348, metadata !351, metadata !352, metadata !353, metadata !354, metadata !357, metadata !360, metadata !361, metadata !364, metadata !369, metadata !370}
!4 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"luaU_dump", metadata !"luaU_dump", metadata !"", i32 202, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*, %struct.Proto*, i32 (%struct.lua_State*, i8*, i32, i8*)*, i8*, i32)* @luaU_dump, null, null, metadata !2, i32 203} ; [ DW_TAG_subprogram ] [line 202] [def] [scope 203] [luaU_dump]
!5 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/ldump.c", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!6 = metadata !{i32 786473, metadata !5}          ; [ DW_TAG_file_type ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldump.c]
!7 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!8 = metadata !{metadata !9, metadata !10, metadata !268, metadata !327, metadata !45, metadata !9}
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
!268 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !269} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!269 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !270} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from Proto]
!270 = metadata !{i32 786454, metadata !19, null, metadata !"Proto", i32 429, i64 0, i64 0, i64 0, i32 0, metadata !271} ; [ DW_TAG_typedef ] [Proto] [line 429, size 0, align 0, offset 0] [from Proto]
!271 = metadata !{i32 786451, metadata !19, null, metadata !"Proto", i32 407, i64 640, i64 32, i32 0, i32 0, null, metadata !272, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [Proto] [line 407, size 640, align 32, offset 0] [def] [from ]
!272 = metadata !{metadata !273, metadata !274, metadata !275, metadata !276, metadata !277, metadata !278, metadata !279, metadata !280, metadata !281, metadata !282, metadata !283, metadata !284, metadata !285, metadata !286, metadata !287, metadata !288, metadata !290, metadata !293, metadata !295, metadata !303, metadata !311, metadata !325, metadata !326}
!273 = metadata !{i32 786445, metadata !19, metadata !271, metadata !"next", i32 408, i64 32, i64 32, i64 0, i32 0, metadata !17} ; [ DW_TAG_member ] [next] [line 408, size 32, align 32, offset 0] [from ]
!274 = metadata !{i32 786445, metadata !19, metadata !271, metadata !"tt", i32 408, i64 8, i64 8, i64 32, i32 0, metadata !24} ; [ DW_TAG_member ] [tt] [line 408, size 8, align 8, offset 32] [from lu_byte]
!275 = metadata !{i32 786445, metadata !19, metadata !271, metadata !"marked", i32 408, i64 8, i64 8, i64 40, i32 0, metadata !24} ; [ DW_TAG_member ] [marked] [line 408, size 8, align 8, offset 40] [from lu_byte]
!276 = metadata !{i32 786445, metadata !19, metadata !271, metadata !"numparams", i32 409, i64 8, i64 8, i64 48, i32 0, metadata !24} ; [ DW_TAG_member ] [numparams] [line 409, size 8, align 8, offset 48] [from lu_byte]
!277 = metadata !{i32 786445, metadata !19, metadata !271, metadata !"is_vararg", i32 410, i64 8, i64 8, i64 56, i32 0, metadata !24} ; [ DW_TAG_member ] [is_vararg] [line 410, size 8, align 8, offset 56] [from lu_byte]
!278 = metadata !{i32 786445, metadata !19, metadata !271, metadata !"maxstacksize", i32 411, i64 8, i64 8, i64 64, i32 0, metadata !24} ; [ DW_TAG_member ] [maxstacksize] [line 411, size 8, align 8, offset 64] [from lu_byte]
!279 = metadata !{i32 786445, metadata !19, metadata !271, metadata !"sizeupvalues", i32 412, i64 32, i64 32, i64 96, i32 0, metadata !9} ; [ DW_TAG_member ] [sizeupvalues] [line 412, size 32, align 32, offset 96] [from int]
!280 = metadata !{i32 786445, metadata !19, metadata !271, metadata !"sizek", i32 413, i64 32, i64 32, i64 128, i32 0, metadata !9} ; [ DW_TAG_member ] [sizek] [line 413, size 32, align 32, offset 128] [from int]
!281 = metadata !{i32 786445, metadata !19, metadata !271, metadata !"sizecode", i32 414, i64 32, i64 32, i64 160, i32 0, metadata !9} ; [ DW_TAG_member ] [sizecode] [line 414, size 32, align 32, offset 160] [from int]
!282 = metadata !{i32 786445, metadata !19, metadata !271, metadata !"sizelineinfo", i32 415, i64 32, i64 32, i64 192, i32 0, metadata !9} ; [ DW_TAG_member ] [sizelineinfo] [line 415, size 32, align 32, offset 192] [from int]
!283 = metadata !{i32 786445, metadata !19, metadata !271, metadata !"sizep", i32 416, i64 32, i64 32, i64 224, i32 0, metadata !9} ; [ DW_TAG_member ] [sizep] [line 416, size 32, align 32, offset 224] [from int]
!284 = metadata !{i32 786445, metadata !19, metadata !271, metadata !"sizelocvars", i32 417, i64 32, i64 32, i64 256, i32 0, metadata !9} ; [ DW_TAG_member ] [sizelocvars] [line 417, size 32, align 32, offset 256] [from int]
!285 = metadata !{i32 786445, metadata !19, metadata !271, metadata !"linedefined", i32 418, i64 32, i64 32, i64 288, i32 0, metadata !9} ; [ DW_TAG_member ] [linedefined] [line 418, size 32, align 32, offset 288] [from int]
!286 = metadata !{i32 786445, metadata !19, metadata !271, metadata !"lastlinedefined", i32 419, i64 32, i64 32, i64 320, i32 0, metadata !9} ; [ DW_TAG_member ] [lastlinedefined] [line 419, size 32, align 32, offset 320] [from int]
!287 = metadata !{i32 786445, metadata !19, metadata !271, metadata !"k", i32 420, i64 32, i64 32, i64 352, i32 0, metadata !35} ; [ DW_TAG_member ] [k] [line 420, size 32, align 32, offset 352] [from ]
!288 = metadata !{i32 786445, metadata !19, metadata !271, metadata !"code", i32 421, i64 32, i64 32, i64 384, i32 0, metadata !289} ; [ DW_TAG_member ] [code] [line 421, size 32, align 32, offset 384] [from ]
!289 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !195} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from Instruction]
!290 = metadata !{i32 786445, metadata !19, metadata !271, metadata !"p", i32 422, i64 32, i64 32, i64 416, i32 0, metadata !291} ; [ DW_TAG_member ] [p] [line 422, size 32, align 32, offset 416] [from ]
!291 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !292} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!292 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !271} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from Proto]
!293 = metadata !{i32 786445, metadata !19, metadata !271, metadata !"lineinfo", i32 423, i64 32, i64 32, i64 448, i32 0, metadata !294} ; [ DW_TAG_member ] [lineinfo] [line 423, size 32, align 32, offset 448] [from ]
!294 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from int]
!295 = metadata !{i32 786445, metadata !19, metadata !271, metadata !"locvars", i32 424, i64 32, i64 32, i64 480, i32 0, metadata !296} ; [ DW_TAG_member ] [locvars] [line 424, size 32, align 32, offset 480] [from ]
!296 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !297} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from LocVar]
!297 = metadata !{i32 786454, metadata !19, null, metadata !"LocVar", i32 401, i64 0, i64 0, i64 0, i32 0, metadata !298} ; [ DW_TAG_typedef ] [LocVar] [line 401, size 0, align 0, offset 0] [from LocVar]
!298 = metadata !{i32 786451, metadata !19, null, metadata !"LocVar", i32 397, i64 96, i64 32, i32 0, i32 0, null, metadata !299, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [LocVar] [line 397, size 96, align 32, offset 0] [def] [from ]
!299 = metadata !{metadata !300, metadata !301, metadata !302}
!300 = metadata !{i32 786445, metadata !19, metadata !298, metadata !"varname", i32 398, i64 32, i64 32, i64 0, i32 0, metadata !86} ; [ DW_TAG_member ] [varname] [line 398, size 32, align 32, offset 0] [from ]
!301 = metadata !{i32 786445, metadata !19, metadata !298, metadata !"startpc", i32 399, i64 32, i64 32, i64 32, i32 0, metadata !9} ; [ DW_TAG_member ] [startpc] [line 399, size 32, align 32, offset 32] [from int]
!302 = metadata !{i32 786445, metadata !19, metadata !298, metadata !"endpc", i32 400, i64 32, i64 32, i64 64, i32 0, metadata !9} ; [ DW_TAG_member ] [endpc] [line 400, size 32, align 32, offset 64] [from int]
!303 = metadata !{i32 786445, metadata !19, metadata !271, metadata !"upvalues", i32 425, i64 32, i64 32, i64 512, i32 0, metadata !304} ; [ DW_TAG_member ] [upvalues] [line 425, size 32, align 32, offset 512] [from ]
!304 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !305} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from Upvaldesc]
!305 = metadata !{i32 786454, metadata !19, null, metadata !"Upvaldesc", i32 390, i64 0, i64 0, i64 0, i32 0, metadata !306} ; [ DW_TAG_typedef ] [Upvaldesc] [line 390, size 0, align 0, offset 0] [from Upvaldesc]
!306 = metadata !{i32 786451, metadata !19, null, metadata !"Upvaldesc", i32 386, i64 64, i64 32, i32 0, i32 0, null, metadata !307, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [Upvaldesc] [line 386, size 64, align 32, offset 0] [def] [from ]
!307 = metadata !{metadata !308, metadata !309, metadata !310}
!308 = metadata !{i32 786445, metadata !19, metadata !306, metadata !"name", i32 387, i64 32, i64 32, i64 0, i32 0, metadata !86} ; [ DW_TAG_member ] [name] [line 387, size 32, align 32, offset 0] [from ]
!309 = metadata !{i32 786445, metadata !19, metadata !306, metadata !"instack", i32 388, i64 8, i64 8, i64 32, i32 0, metadata !24} ; [ DW_TAG_member ] [instack] [line 388, size 8, align 8, offset 32] [from lu_byte]
!310 = metadata !{i32 786445, metadata !19, metadata !306, metadata !"idx", i32 389, i64 8, i64 8, i64 40, i32 0, metadata !24} ; [ DW_TAG_member ] [idx] [line 389, size 8, align 8, offset 40] [from lu_byte]
!311 = metadata !{i32 786445, metadata !19, metadata !271, metadata !"cache", i32 426, i64 32, i64 32, i64 544, i32 0, metadata !312} ; [ DW_TAG_member ] [cache] [line 426, size 32, align 32, offset 544] [from ]
!312 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !313} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from LClosure]
!313 = metadata !{i32 786451, metadata !19, null, metadata !"LClosure", i32 453, i64 160, i64 32, i32 0, i32 0, null, metadata !314, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [LClosure] [line 453, size 160, align 32, offset 0] [def] [from ]
!314 = metadata !{metadata !315, metadata !316, metadata !317, metadata !318, metadata !319, metadata !320, metadata !321}
!315 = metadata !{i32 786445, metadata !19, metadata !313, metadata !"next", i32 454, i64 32, i64 32, i64 0, i32 0, metadata !17} ; [ DW_TAG_member ] [next] [line 454, size 32, align 32, offset 0] [from ]
!316 = metadata !{i32 786445, metadata !19, metadata !313, metadata !"tt", i32 454, i64 8, i64 8, i64 32, i32 0, metadata !24} ; [ DW_TAG_member ] [tt] [line 454, size 8, align 8, offset 32] [from lu_byte]
!317 = metadata !{i32 786445, metadata !19, metadata !313, metadata !"marked", i32 454, i64 8, i64 8, i64 40, i32 0, metadata !24} ; [ DW_TAG_member ] [marked] [line 454, size 8, align 8, offset 40] [from lu_byte]
!318 = metadata !{i32 786445, metadata !19, metadata !313, metadata !"nupvalues", i32 454, i64 8, i64 8, i64 48, i32 0, metadata !24} ; [ DW_TAG_member ] [nupvalues] [line 454, size 8, align 8, offset 48] [from lu_byte]
!319 = metadata !{i32 786445, metadata !19, metadata !313, metadata !"gclist", i32 454, i64 32, i64 32, i64 64, i32 0, metadata !17} ; [ DW_TAG_member ] [gclist] [line 454, size 32, align 32, offset 64] [from ]
!320 = metadata !{i32 786445, metadata !19, metadata !313, metadata !"p", i32 455, i64 32, i64 32, i64 96, i32 0, metadata !292} ; [ DW_TAG_member ] [p] [line 455, size 32, align 32, offset 96] [from ]
!321 = metadata !{i32 786445, metadata !19, metadata !313, metadata !"upvals", i32 456, i64 32, i64 32, i64 128, i32 0, metadata !322} ; [ DW_TAG_member ] [upvals] [line 456, size 32, align 32, offset 128] [from ]
!322 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 32, i64 32, i32 0, i32 0, metadata !217, metadata !323, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 32, align 32, offset 0] [from ]
!323 = metadata !{metadata !324}
!324 = metadata !{i32 786465, i64 0, i64 1}       ; [ DW_TAG_subrange_type ] [0, 0]
!325 = metadata !{i32 786445, metadata !19, metadata !271, metadata !"source", i32 427, i64 32, i64 32, i64 576, i32 0, metadata !86} ; [ DW_TAG_member ] [source] [line 427, size 32, align 32, offset 576] [from ]
!326 = metadata !{i32 786445, metadata !19, metadata !271, metadata !"gclist", i32 428, i64 32, i64 32, i64 608, i32 0, metadata !17} ; [ DW_TAG_member ] [gclist] [line 428, size 32, align 32, offset 608] [from ]
!327 = metadata !{i32 786454, metadata !12, null, metadata !"lua_Writer", i32 118, i64 0, i64 0, i64 0, i32 0, metadata !328} ; [ DW_TAG_typedef ] [lua_Writer] [line 118, size 0, align 0, offset 0] [from ]
!328 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !329} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!329 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !330, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!330 = metadata !{metadata !9, metadata !10, metadata !331, metadata !69, metadata !45}
!331 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !332} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!332 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from ]
!333 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"DumpFunction", metadata !"DumpFunction", metadata !"", i32 166, metadata !334, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.Proto*, %struct.TString*, %struct.DumpState*)* @DumpFunction, null, null, metadata !2, i32 166} ; [ DW_TAG_subprogram ] [line 166] [local] [def] [DumpFunction]
!334 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !335, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!335 = metadata !{null, metadata !268, metadata !86, metadata !336}
!336 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !337} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from DumpState]
!337 = metadata !{i32 786454, metadata !5, null, metadata !"DumpState", i32 28, i64 0, i64 0, i64 0, i32 0, metadata !338} ; [ DW_TAG_typedef ] [DumpState] [line 28, size 0, align 0, offset 0] [from ]
!338 = metadata !{i32 786451, metadata !5, null, metadata !"", i32 22, i64 160, i64 32, i32 0, i32 0, null, metadata !339, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 22, size 160, align 32, offset 0] [def] [from ]
!339 = metadata !{metadata !340, metadata !341, metadata !342, metadata !343, metadata !344}
!340 = metadata !{i32 786445, metadata !5, metadata !338, metadata !"L", i32 23, i64 32, i64 32, i64 0, i32 0, metadata !10} ; [ DW_TAG_member ] [L] [line 23, size 32, align 32, offset 0] [from ]
!341 = metadata !{i32 786445, metadata !5, metadata !338, metadata !"writer", i32 24, i64 32, i64 32, i64 32, i32 0, metadata !327} ; [ DW_TAG_member ] [writer] [line 24, size 32, align 32, offset 32] [from lua_Writer]
!342 = metadata !{i32 786445, metadata !5, metadata !338, metadata !"data", i32 25, i64 32, i64 32, i64 64, i32 0, metadata !45} ; [ DW_TAG_member ] [data] [line 25, size 32, align 32, offset 64] [from ]
!343 = metadata !{i32 786445, metadata !5, metadata !338, metadata !"strip", i32 26, i64 32, i64 32, i64 96, i32 0, metadata !9} ; [ DW_TAG_member ] [strip] [line 26, size 32, align 32, offset 96] [from int]
!344 = metadata !{i32 786445, metadata !5, metadata !338, metadata !"status", i32 27, i64 32, i64 32, i64 128, i32 0, metadata !9} ; [ DW_TAG_member ] [status] [line 27, size 32, align 32, offset 128] [from int]
!345 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"DumpDebug", metadata !"DumpDebug", metadata !"", i32 147, metadata !346, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.Proto*, %struct.DumpState*)* @DumpDebug, null, null, metadata !2, i32 147} ; [ DW_TAG_subprogram ] [line 147] [local] [def] [DumpDebug]
!346 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !347, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!347 = metadata !{null, metadata !268, metadata !336}
!348 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"DumpBlock", metadata !"DumpBlock", metadata !"", i32 40, metadata !349, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i8*, i32, %struct.DumpState*)* @DumpBlock, null, null, metadata !2, i32 40} ; [ DW_TAG_subprogram ] [line 40] [local] [def] [DumpBlock]
!349 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !350, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!350 = metadata !{null, metadata !331, metadata !69, metadata !336}
!351 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"DumpProtos", metadata !"DumpProtos", metadata !"", i32 128, metadata !346, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.Proto*, %struct.DumpState*)* @DumpProtos, null, null, metadata !2, i32 128} ; [ DW_TAG_subprogram ] [line 128] [local] [def] [DumpProtos]
!352 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"DumpUpvalues", metadata !"DumpUpvalues", metadata !"", i32 137, metadata !346, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.Proto*, %struct.DumpState*)* @DumpUpvalues, null, null, metadata !2, i32 137} ; [ DW_TAG_subprogram ] [line 137] [local] [def] [DumpUpvalues]
!353 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"DumpConstants", metadata !"DumpConstants", metadata !"", i32 98, metadata !346, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.Proto*, %struct.DumpState*)* @DumpConstants, null, null, metadata !2, i32 98} ; [ DW_TAG_subprogram ] [line 98] [local] [def] [DumpConstants]
!354 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"DumpInteger", metadata !"DumpInteger", metadata !"", i32 68, metadata !355, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i64, %struct.DumpState*)* @DumpInteger, null, null, metadata !2, i32 68} ; [ DW_TAG_subprogram ] [line 68] [local] [def] [DumpInteger]
!355 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !356, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!356 = metadata !{null, metadata !53, metadata !336}
!357 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"DumpNumber", metadata !"DumpNumber", metadata !"", i32 63, metadata !358, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (double, %struct.DumpState*)* @DumpNumber, null, null, metadata !2, i32 63} ; [ DW_TAG_subprogram ] [line 63] [local] [def] [DumpNumber]
!358 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !359, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!359 = metadata !{null, metadata !56, metadata !336}
!360 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"DumpCode", metadata !"DumpCode", metadata !"", i32 90, metadata !346, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.Proto*, %struct.DumpState*)* @DumpCode, null, null, metadata !2, i32 90} ; [ DW_TAG_subprogram ] [line 90] [local] [def] [DumpCode]
!361 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"DumpInt", metadata !"DumpInt", metadata !"", i32 58, metadata !362, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32, %struct.DumpState*)* @DumpInt, null, null, metadata !2, i32 58} ; [ DW_TAG_subprogram ] [line 58] [local] [def] [DumpInt]
!362 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !363, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!363 = metadata !{null, metadata !9, metadata !336}
!364 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"DumpString", metadata !"DumpString", metadata !"", i32 73, metadata !365, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.TString*, %struct.DumpState*)* @DumpString, null, null, metadata !2, i32 73} ; [ DW_TAG_subprogram ] [line 73] [local] [def] [DumpString]
!365 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !366, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!366 = metadata !{null, metadata !367, metadata !336}
!367 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !368} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!368 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !87} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from TString]
!369 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"DumpByte", metadata !"DumpByte", metadata !"", i32 52, metadata !362, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32, %struct.DumpState*)* @DumpByte, null, null, metadata !2, i32 52} ; [ DW_TAG_subprogram ] [line 52] [local] [def] [DumpByte]
!370 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"DumpHeader", metadata !"DumpHeader", metadata !"", i32 184, metadata !371, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.DumpState*)* @DumpHeader, null, null, metadata !2, i32 184} ; [ DW_TAG_subprogram ] [line 184] [local] [def] [DumpHeader]
!371 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !372, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!372 = metadata !{null, metadata !336}
!373 = metadata !{i32 (%struct.lua_State*, %struct.Proto*, i32 (%struct.lua_State*, i8*, i32, i8*)*, i8*, i32)* @luaU_dump}
!374 = metadata !{metadata !"luaU_dump"}
!375 = metadata !{void (%struct.DumpState*)* @DumpHeader}
!376 = metadata !{metadata !"DumpHeader"}
!377 = metadata !{void (i32, %struct.DumpState*)* @DumpByte}
!378 = metadata !{metadata !"DumpByte"}
!379 = metadata !{void (%struct.Proto*, %struct.TString*, %struct.DumpState*)* @DumpFunction}
!380 = metadata !{metadata !"DumpFunction"}
!381 = metadata !{void (%struct.TString*, %struct.DumpState*)* @DumpString}
!382 = metadata !{metadata !"DumpString"}
!383 = metadata !{void (i32, %struct.DumpState*)* @DumpInt}
!384 = metadata !{metadata !"DumpInt"}
!385 = metadata !{void (%struct.Proto*, %struct.DumpState*)* @DumpCode}
!386 = metadata !{metadata !"DumpCode"}
!387 = metadata !{void (%struct.Proto*, %struct.DumpState*)* @DumpConstants}
!388 = metadata !{metadata !"DumpConstants"}
!389 = metadata !{void (%struct.Proto*, %struct.DumpState*)* @DumpUpvalues}
!390 = metadata !{metadata !"DumpUpvalues"}
!391 = metadata !{void (%struct.Proto*, %struct.DumpState*)* @DumpProtos}
!392 = metadata !{metadata !"DumpProtos"}
!393 = metadata !{void (%struct.Proto*, %struct.DumpState*)* @DumpDebug}
!394 = metadata !{metadata !"DumpDebug"}
!395 = metadata !{void (i8*, i32, %struct.DumpState*)* @DumpBlock}
!396 = metadata !{metadata !"DumpBlock"}
!397 = metadata !{void (double, %struct.DumpState*)* @DumpNumber}
!398 = metadata !{metadata !"DumpNumber"}
!399 = metadata !{void (i64, %struct.DumpState*)* @DumpInteger}
!400 = metadata !{metadata !"DumpInteger"}
!401 = metadata !{metadata !"int.lua_State *.1.const Proto *.1.lua_Writer.1.void *.1.int.0"}
!402 = metadata !{metadata !"void.DumpState *.1"}
!403 = metadata !{metadata !"void.int.0.DumpState *.1"}
!404 = metadata !{metadata !"void.const Proto *.1.TString *.1.DumpState *.1"}
!405 = metadata !{metadata !"void.const TString *.1.DumpState *.1"}
!406 = metadata !{metadata !"void.const Proto *.1.DumpState *.1"}
!407 = metadata !{metadata !"void.const void *.1.size_t.0.DumpState *.1"}
!408 = metadata !{metadata !"void.lua_Number.0.DumpState *.1"}
!409 = metadata !{metadata !"void.lua_Integer.0.DumpState *.1"}
!410 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lundump.h"}
!411 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/ldump.c"}
!412 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!413 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!414 = metadata !{i32 1, metadata !"wchar_size", i32 4}
!415 = metadata !{i32 1, metadata !"min_enum_size", i32 4}
!416 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
!417 = metadata !{i32 786689, metadata !4, metadata !"L", metadata !6, i32 16777418, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 202]
!418 = metadata !{i32 202, i32 26, metadata !4, null}
!419 = metadata !{i32 786689, metadata !4, metadata !"f", metadata !6, i32 33554634, metadata !268, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [f] [line 202]
!420 = metadata !{i32 202, i32 42, metadata !4, null}
!421 = metadata !{i32 786689, metadata !4, metadata !"w", metadata !6, i32 50331850, metadata !327, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [w] [line 202]
!422 = metadata !{i32 202, i32 56, metadata !4, null}
!423 = metadata !{i32 786689, metadata !4, metadata !"data", metadata !6, i32 67109066, metadata !45, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [data] [line 202]
!424 = metadata !{i32 202, i32 65, metadata !4, null}
!425 = metadata !{i32 786689, metadata !4, metadata !"strip", metadata !6, i32 83886283, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [strip] [line 203]
!426 = metadata !{i32 203, i32 19, metadata !4, null}
!427 = metadata !{i32 786688, metadata !4, metadata !"D", metadata !6, i32 204, metadata !337, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [D] [line 204]
!428 = metadata !{i32 204, i32 13, metadata !4, null}
!429 = metadata !{i32 205, i32 3, metadata !4, null}
!430 = metadata !{i32 206, i32 3, metadata !4, null}
!431 = metadata !{i32 207, i32 3, metadata !4, null}
!432 = metadata !{i32 208, i32 3, metadata !4, null}
!433 = metadata !{i32 209, i32 3, metadata !4, null}
!434 = metadata !{i32 210, i32 3, metadata !4, null}
!435 = metadata !{i32 211, i32 3, metadata !4, null}
!436 = metadata !{i32 212, i32 3, metadata !4, null}
!437 = metadata !{i32 213, i32 3, metadata !4, null}
!438 = metadata !{i32 786689, metadata !370, metadata !"D", metadata !6, i32 16777400, metadata !336, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [D] [line 184]
!439 = metadata !{i32 184, i32 36, metadata !370, null}
!440 = metadata !{i32 185, i32 3, metadata !370, null}
!441 = metadata !{i32 186, i32 3, metadata !370, null}
!442 = metadata !{i32 187, i32 3, metadata !370, null}
!443 = metadata !{i32 188, i32 3, metadata !370, null}
!444 = metadata !{i32 189, i32 3, metadata !370, null}
!445 = metadata !{i32 190, i32 3, metadata !370, null}
!446 = metadata !{i32 191, i32 3, metadata !370, null}
!447 = metadata !{i32 192, i32 3, metadata !370, null}
!448 = metadata !{i32 193, i32 3, metadata !370, null}
!449 = metadata !{i32 194, i32 3, metadata !370, null}
!450 = metadata !{i32 195, i32 3, metadata !370, null}
!451 = metadata !{i32 196, i32 1, metadata !370, null}
!452 = metadata !{i32 786689, metadata !369, metadata !"y", metadata !6, i32 16777268, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y] [line 52]
!453 = metadata !{i32 52, i32 27, metadata !369, null}
!454 = metadata !{i32 786689, metadata !369, metadata !"D", metadata !6, i32 33554484, metadata !336, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [D] [line 52]
!455 = metadata !{i32 52, i32 41, metadata !369, null}
!456 = metadata !{i32 786688, metadata !369, metadata !"x", metadata !6, i32 53, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 53]
!457 = metadata !{i32 53, i32 11, metadata !369, null}
!458 = metadata !{i32 53, i32 3, metadata !369, null}
!459 = metadata !{i32 54, i32 3, metadata !369, null}
!460 = metadata !{i32 55, i32 1, metadata !369, null}
!461 = metadata !{i32 786689, metadata !333, metadata !"f", metadata !6, i32 16777382, metadata !268, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [f] [line 166]
!462 = metadata !{i32 166, i32 40, metadata !333, null}
!463 = metadata !{i32 786689, metadata !333, metadata !"psource", metadata !6, i32 33554598, metadata !86, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [psource] [line 166]
!464 = metadata !{i32 166, i32 52, metadata !333, null}
!465 = metadata !{i32 786689, metadata !333, metadata !"D", metadata !6, i32 50331814, metadata !336, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [D] [line 166]
!466 = metadata !{i32 166, i32 72, metadata !333, null}
!467 = metadata !{i32 167, i32 7, metadata !468, null}
!468 = metadata !{i32 786443, metadata !5, metadata !333, i32 167, i32 7, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldump.c]
!469 = metadata !{i32 167, i32 7, metadata !470, null}
!470 = metadata !{i32 786443, metadata !5, metadata !468, i32 167, i32 7, i32 1, i32 16} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldump.c]
!471 = metadata !{i32 168, i32 5, metadata !468, null}
!472 = metadata !{i32 170, i32 5, metadata !468, null}
!473 = metadata !{i32 171, i32 3, metadata !333, null}
!474 = metadata !{i32 172, i32 3, metadata !333, null}
!475 = metadata !{i32 173, i32 3, metadata !333, null}
!476 = metadata !{i32 174, i32 3, metadata !333, null}
!477 = metadata !{i32 175, i32 3, metadata !333, null}
!478 = metadata !{i32 176, i32 3, metadata !333, null}
!479 = metadata !{i32 177, i32 3, metadata !333, null}
!480 = metadata !{i32 178, i32 3, metadata !333, null}
!481 = metadata !{i32 179, i32 3, metadata !333, null}
!482 = metadata !{i32 180, i32 3, metadata !333, null}
!483 = metadata !{i32 181, i32 1, metadata !333, null}
!484 = metadata !{i32 786689, metadata !364, metadata !"s", metadata !6, i32 16777289, metadata !367, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 73]
!485 = metadata !{i32 73, i32 40, metadata !364, null}
!486 = metadata !{i32 786689, metadata !364, metadata !"D", metadata !6, i32 33554505, metadata !336, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [D] [line 73]
!487 = metadata !{i32 73, i32 54, metadata !364, null}
!488 = metadata !{i32 74, i32 7, metadata !489, null}
!489 = metadata !{i32 786443, metadata !5, metadata !364, i32 74, i32 7, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldump.c]
!490 = metadata !{i32 75, i32 5, metadata !489, null}
!491 = metadata !{i32 786688, metadata !492, metadata !"size", metadata !6, i32 77, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [size] [line 77]
!492 = metadata !{i32 786443, metadata !5, metadata !489, i32 76, i32 8, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldump.c]
!493 = metadata !{i32 77, i32 12, metadata !492, null}
!494 = metadata !{i32 77, i32 5, metadata !492, null}
!495 = metadata !{i32 77, i32 5, metadata !496, null}
!496 = metadata !{i32 786443, metadata !5, metadata !492, i32 77, i32 5, i32 1, i32 17} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldump.c]
!497 = metadata !{i32 77, i32 5, metadata !498, null}
!498 = metadata !{i32 786443, metadata !5, metadata !492, i32 77, i32 5, i32 2, i32 18} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldump.c]
!499 = metadata !{i32 77, i32 5, metadata !500, null}
!500 = metadata !{i32 786443, metadata !5, metadata !501, i32 77, i32 5, i32 4, i32 20} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldump.c]
!501 = metadata !{i32 786443, metadata !5, metadata !492, i32 77, i32 5, i32 3, i32 19} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldump.c]
!502 = metadata !{i32 786688, metadata !492, metadata !"str", metadata !6, i32 78, metadata !238, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [str] [line 78]
!503 = metadata !{i32 78, i32 17, metadata !492, null}
!504 = metadata !{i32 78, i32 5, metadata !492, null}
!505 = metadata !{i32 79, i32 9, metadata !506, null}
!506 = metadata !{i32 786443, metadata !5, metadata !492, i32 79, i32 9, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldump.c]
!507 = metadata !{i32 80, i32 7, metadata !506, null}
!508 = metadata !{i32 82, i32 7, metadata !509, null}
!509 = metadata !{i32 786443, metadata !5, metadata !506, i32 81, i32 10, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldump.c]
!510 = metadata !{i32 83, i32 7, metadata !509, null}
!511 = metadata !{i32 85, i32 5, metadata !492, null}
!512 = metadata !{i32 87, i32 1, metadata !364, null}
!513 = metadata !{i32 786689, metadata !361, metadata !"x", metadata !6, i32 16777274, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 58]
!514 = metadata !{i32 58, i32 26, metadata !361, null} ; [ DW_TAG_imported_module ]
!515 = metadata !{i32 786689, metadata !361, metadata !"D", metadata !6, i32 33554490, metadata !336, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [D] [line 58]
!516 = metadata !{i32 58, i32 40, metadata !361, null} ; [ DW_TAG_imported_module ]
!517 = metadata !{i32 59, i32 3, metadata !361, null}
!518 = metadata !{i32 60, i32 1, metadata !361, null}
!519 = metadata !{i32 786689, metadata !360, metadata !"f", metadata !6, i32 16777306, metadata !268, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [f] [line 90]
!520 = metadata !{i32 90, i32 36, metadata !360, null}
!521 = metadata !{i32 786689, metadata !360, metadata !"D", metadata !6, i32 33554522, metadata !336, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [D] [line 90]
!522 = metadata !{i32 90, i32 50, metadata !360, null}
!523 = metadata !{i32 91, i32 3, metadata !360, null}
!524 = metadata !{i32 92, i32 3, metadata !360, null}
!525 = metadata !{i32 93, i32 1, metadata !360, null}
!526 = metadata !{i32 786689, metadata !353, metadata !"f", metadata !6, i32 16777314, metadata !268, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [f] [line 98]
!527 = metadata !{i32 98, i32 41, metadata !353, null}
!528 = metadata !{i32 786689, metadata !353, metadata !"D", metadata !6, i32 33554530, metadata !336, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [D] [line 98]
!529 = metadata !{i32 98, i32 55, metadata !353, null}
!530 = metadata !{i32 786688, metadata !353, metadata !"i", metadata !6, i32 99, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 99]
!531 = metadata !{i32 99, i32 7, metadata !353, null}
!532 = metadata !{i32 786688, metadata !353, metadata !"n", metadata !6, i32 100, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 100]
!533 = metadata !{i32 100, i32 7, metadata !353, null}
!534 = metadata !{i32 100, i32 3, metadata !353, null}
!535 = metadata !{i32 101, i32 3, metadata !353, null}
!536 = metadata !{i32 102, i32 8, metadata !537, null}
!537 = metadata !{i32 786443, metadata !5, metadata !353, i32 102, i32 3, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldump.c]
!538 = metadata !{i32 102, i32 8, metadata !539, null}
!539 = metadata !{i32 786443, metadata !5, metadata !540, i32 102, i32 8, i32 2, i32 22} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldump.c]
!540 = metadata !{i32 786443, metadata !5, metadata !537, i32 102, i32 8, i32 1, i32 21} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldump.c]
!541 = metadata !{i32 786688, metadata !542, metadata !"o", metadata !6, i32 103, metadata !543, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [o] [line 103]
!542 = metadata !{i32 786443, metadata !5, metadata !537, i32 102, i32 27, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldump.c]
!543 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !544} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!544 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !36} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from TValue]
!545 = metadata !{i32 103, i32 19, metadata !542, null}
!546 = metadata !{i32 103, i32 5, metadata !542, null}
!547 = metadata !{i32 104, i32 5, metadata !542, null}
!548 = metadata !{i32 105, i32 5, metadata !542, null}
!549 = metadata !{i32 107, i32 7, metadata !550, null}
!550 = metadata !{i32 786443, metadata !5, metadata !542, i32 105, i32 23, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldump.c]
!551 = metadata !{i32 109, i32 7, metadata !550, null}
!552 = metadata !{i32 110, i32 7, metadata !550, null}
!553 = metadata !{i32 112, i32 7, metadata !550, null}
!554 = metadata !{i32 113, i32 7, metadata !550, null}
!555 = metadata !{i32 115, i32 7, metadata !550, null}
!556 = metadata !{i32 116, i32 7, metadata !550, null}
!557 = metadata !{i32 119, i32 7, metadata !550, null}
!558 = metadata !{i32 120, i32 7, metadata !550, null}
!559 = metadata !{i32 123, i32 5, metadata !550, null}
!560 = metadata !{i32 124, i32 3, metadata !542, null}
!561 = metadata !{i32 102, i32 22, metadata !537, null}
!562 = metadata !{i32 125, i32 1, metadata !353, null}
!563 = metadata !{i32 786689, metadata !352, metadata !"f", metadata !6, i32 16777353, metadata !268, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [f] [line 137]
!564 = metadata !{i32 137, i32 40, metadata !352, null}
!565 = metadata !{i32 786689, metadata !352, metadata !"D", metadata !6, i32 33554569, metadata !336, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [D] [line 137]
!566 = metadata !{i32 137, i32 54, metadata !352, null}
!567 = metadata !{i32 786688, metadata !352, metadata !"i", metadata !6, i32 138, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 138]
!568 = metadata !{i32 138, i32 7, metadata !352, null}
!569 = metadata !{i32 786688, metadata !352, metadata !"n", metadata !6, i32 138, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 138]
!570 = metadata !{i32 138, i32 10, metadata !352, null}
!571 = metadata !{i32 138, i32 3, metadata !352, null}
!572 = metadata !{i32 139, i32 3, metadata !352, null}
!573 = metadata !{i32 140, i32 8, metadata !574, null}
!574 = metadata !{i32 786443, metadata !5, metadata !352, i32 140, i32 3, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldump.c]
!575 = metadata !{i32 140, i32 8, metadata !576, null}
!576 = metadata !{i32 786443, metadata !5, metadata !577, i32 140, i32 8, i32 2, i32 24} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldump.c]
!577 = metadata !{i32 786443, metadata !5, metadata !574, i32 140, i32 8, i32 1, i32 23} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldump.c]
!578 = metadata !{i32 141, i32 5, metadata !579, null}
!579 = metadata !{i32 786443, metadata !5, metadata !574, i32 140, i32 27, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldump.c]
!580 = metadata !{i32 142, i32 5, metadata !579, null}
!581 = metadata !{i32 143, i32 3, metadata !579, null}
!582 = metadata !{i32 140, i32 22, metadata !574, null}
!583 = metadata !{i32 144, i32 1, metadata !352, null}
!584 = metadata !{i32 786689, metadata !351, metadata !"f", metadata !6, i32 16777344, metadata !268, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [f] [line 128]
!585 = metadata !{i32 128, i32 38, metadata !351, null}
!586 = metadata !{i32 786689, metadata !351, metadata !"D", metadata !6, i32 33554560, metadata !336, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [D] [line 128]
!587 = metadata !{i32 128, i32 52, metadata !351, null}
!588 = metadata !{i32 786688, metadata !351, metadata !"i", metadata !6, i32 129, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 129]
!589 = metadata !{i32 129, i32 7, metadata !351, null}
!590 = metadata !{i32 786688, metadata !351, metadata !"n", metadata !6, i32 130, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 130]
!591 = metadata !{i32 130, i32 7, metadata !351, null}
!592 = metadata !{i32 130, i32 3, metadata !351, null}
!593 = metadata !{i32 131, i32 3, metadata !351, null}
!594 = metadata !{i32 132, i32 8, metadata !595, null}
!595 = metadata !{i32 786443, metadata !5, metadata !351, i32 132, i32 3, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldump.c]
!596 = metadata !{i32 132, i32 8, metadata !597, null}
!597 = metadata !{i32 786443, metadata !5, metadata !598, i32 132, i32 8, i32 2, i32 26} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldump.c]
!598 = metadata !{i32 786443, metadata !5, metadata !595, i32 132, i32 8, i32 1, i32 25} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldump.c]
!599 = metadata !{i32 133, i32 5, metadata !595, null}
!600 = metadata !{i32 132, i32 22, metadata !595, null}
!601 = metadata !{i32 134, i32 1, metadata !351, null}
!602 = metadata !{i32 786689, metadata !345, metadata !"f", metadata !6, i32 16777363, metadata !268, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [f] [line 147]
!603 = metadata !{i32 147, i32 37, metadata !345, null}
!604 = metadata !{i32 786689, metadata !345, metadata !"D", metadata !6, i32 33554579, metadata !336, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [D] [line 147]
!605 = metadata !{i32 147, i32 51, metadata !345, null}
!606 = metadata !{i32 786688, metadata !345, metadata !"i", metadata !6, i32 148, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 148]
!607 = metadata !{i32 148, i32 7, metadata !345, null}
!608 = metadata !{i32 786688, metadata !345, metadata !"n", metadata !6, i32 148, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 148]
!609 = metadata !{i32 148, i32 10, metadata !345, null}
!610 = metadata !{i32 149, i32 3, metadata !345, null}
!611 = metadata !{i32 149, i32 3, metadata !612, null}
!612 = metadata !{i32 786443, metadata !5, metadata !345, i32 149, i32 3, i32 1, i32 27} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldump.c]
!613 = metadata !{i32 149, i32 3, metadata !614, null}
!614 = metadata !{i32 786443, metadata !5, metadata !345, i32 149, i32 3, i32 2, i32 28} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldump.c]
!615 = metadata !{i32 149, i32 3, metadata !616, null}
!616 = metadata !{i32 786443, metadata !5, metadata !617, i32 149, i32 3, i32 4, i32 30} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldump.c]
!617 = metadata !{i32 786443, metadata !5, metadata !345, i32 149, i32 3, i32 3, i32 29} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldump.c]
!618 = metadata !{i32 150, i32 3, metadata !345, null}
!619 = metadata !{i32 151, i32 3, metadata !345, null}
!620 = metadata !{i32 152, i32 3, metadata !345, null}
!621 = metadata !{i32 152, i32 3, metadata !622, null}
!622 = metadata !{i32 786443, metadata !5, metadata !345, i32 152, i32 3, i32 1, i32 31} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldump.c]
!623 = metadata !{i32 152, i32 3, metadata !624, null}
!624 = metadata !{i32 786443, metadata !5, metadata !345, i32 152, i32 3, i32 2, i32 32} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldump.c]
!625 = metadata !{i32 152, i32 3, metadata !626, null}
!626 = metadata !{i32 786443, metadata !5, metadata !627, i32 152, i32 3, i32 4, i32 34} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldump.c]
!627 = metadata !{i32 786443, metadata !5, metadata !345, i32 152, i32 3, i32 3, i32 33} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldump.c]
!628 = metadata !{i32 153, i32 3, metadata !345, null}
!629 = metadata !{i32 154, i32 8, metadata !630, null}
!630 = metadata !{i32 786443, metadata !5, metadata !345, i32 154, i32 3, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldump.c]
!631 = metadata !{i32 154, i32 8, metadata !632, null}
!632 = metadata !{i32 786443, metadata !5, metadata !633, i32 154, i32 8, i32 2, i32 36} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldump.c]
!633 = metadata !{i32 786443, metadata !5, metadata !630, i32 154, i32 8, i32 1, i32 35} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldump.c]
!634 = metadata !{i32 155, i32 5, metadata !635, null}
!635 = metadata !{i32 786443, metadata !5, metadata !630, i32 154, i32 27, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldump.c]
!636 = metadata !{i32 156, i32 5, metadata !635, null}
!637 = metadata !{i32 157, i32 5, metadata !635, null}
!638 = metadata !{i32 158, i32 3, metadata !635, null}
!639 = metadata !{i32 154, i32 22, metadata !630, null}
!640 = metadata !{i32 159, i32 3, metadata !345, null}
!641 = metadata !{i32 159, i32 3, metadata !642, null}
!642 = metadata !{i32 786443, metadata !5, metadata !345, i32 159, i32 3, i32 1, i32 37} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldump.c]
!643 = metadata !{i32 159, i32 3, metadata !644, null}
!644 = metadata !{i32 786443, metadata !5, metadata !345, i32 159, i32 3, i32 2, i32 38} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldump.c]
!645 = metadata !{i32 159, i32 3, metadata !646, null}
!646 = metadata !{i32 786443, metadata !5, metadata !647, i32 159, i32 3, i32 4, i32 40} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldump.c]
!647 = metadata !{i32 786443, metadata !5, metadata !345, i32 159, i32 3, i32 3, i32 39} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldump.c]
!648 = metadata !{i32 160, i32 3, metadata !345, null}
!649 = metadata !{i32 161, i32 8, metadata !650, null}
!650 = metadata !{i32 786443, metadata !5, metadata !345, i32 161, i32 3, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldump.c]
!651 = metadata !{i32 161, i32 8, metadata !652, null}
!652 = metadata !{i32 786443, metadata !5, metadata !653, i32 161, i32 8, i32 2, i32 42} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldump.c]
!653 = metadata !{i32 786443, metadata !5, metadata !650, i32 161, i32 8, i32 1, i32 41} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldump.c]
!654 = metadata !{i32 162, i32 5, metadata !650, null}
!655 = metadata !{i32 161, i32 22, metadata !650, null}
!656 = metadata !{i32 163, i32 1, metadata !345, null}
!657 = metadata !{i32 786689, metadata !348, metadata !"b", metadata !6, i32 16777256, metadata !331, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b] [line 40]
!658 = metadata !{i32 40, i32 36, metadata !348, null}
!659 = metadata !{i32 786689, metadata !348, metadata !"size", metadata !6, i32 33554472, metadata !69, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 40]
!660 = metadata !{i32 40, i32 46, metadata !348, null}
!661 = metadata !{i32 786689, metadata !348, metadata !"D", metadata !6, i32 50331688, metadata !336, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [D] [line 40]
!662 = metadata !{i32 40, i32 63, metadata !348, null}
!663 = metadata !{i32 41, i32 7, metadata !664, null}
!664 = metadata !{i32 786443, metadata !5, metadata !348, i32 41, i32 7, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldump.c]
!665 = metadata !{i32 41, i32 7, metadata !666, null}
!666 = metadata !{i32 786443, metadata !5, metadata !664, i32 41, i32 7, i32 1, i32 43} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldump.c]
!667 = metadata !{i32 43, i32 17, metadata !668, null}
!668 = metadata !{i32 786443, metadata !5, metadata !664, i32 41, i32 35, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldump.c]
!669 = metadata !{i32 45, i32 3, metadata !668, null}
!670 = metadata !{i32 46, i32 1, metadata !348, null}
!671 = metadata !{i32 786689, metadata !357, metadata !"x", metadata !6, i32 16777279, metadata !56, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 63]
!672 = metadata !{i32 63, i32 36, metadata !357, null}
!673 = metadata !{i32 786689, metadata !357, metadata !"D", metadata !6, i32 33554495, metadata !336, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [D] [line 63]
!674 = metadata !{i32 63, i32 50, metadata !357, null}
!675 = metadata !{i32 64, i32 3, metadata !357, null}
!676 = metadata !{i32 65, i32 1, metadata !357, null}
!677 = metadata !{i32 786689, metadata !354, metadata !"x", metadata !6, i32 16777284, metadata !53, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 68]
!678 = metadata !{i32 68, i32 38, metadata !354, null}
!679 = metadata !{i32 786689, metadata !354, metadata !"D", metadata !6, i32 33554500, metadata !336, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [D] [line 68]
!680 = metadata !{i32 68, i32 52, metadata !354, null}
!681 = metadata !{i32 69, i32 3, metadata !354, null}
!682 = metadata !{i32 70, i32 1, metadata !354, null}
