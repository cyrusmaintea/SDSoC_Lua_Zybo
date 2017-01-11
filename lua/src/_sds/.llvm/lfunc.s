; ModuleID = 'C:/Users/DevolutionX/workspace/lua/src/lfunc.c'
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-n32-S64"
target triple = "armv7--linux-gnueabihf"

%struct.CClosure = type { %struct.GCObject*, i8, i8, i8, %struct.GCObject*, i32 (%struct.lua_State*)*, [1 x %struct.lua_TValue] }
%struct.GCObject = type { %struct.GCObject*, i8, i8 }
%struct.lua_TValue = type { %union.Value, i32 }
%union.Value = type { i64 }
%struct.lua_State = type { %struct.GCObject*, i8, i8, i16, i8, %struct.lua_TValue*, %struct.global_State*, %struct.CallInfo*, i32*, %struct.lua_TValue*, %struct.lua_TValue*, %struct.UpVal*, %struct.GCObject*, %struct.lua_State*, %struct.lua_longjmp*, %struct.CallInfo, void (%struct.lua_State*, %struct.lua_Debug*)*, i32, i32, i32, i32, i16, i16, i32, i8 }
%struct.global_State = type { i8* (i8*, i8*, i32, i32)*, i8*, i32, i32, i32, i32, %struct.stringtable, %struct.lua_TValue, i32, i8, i8, i8, i8, %struct.GCObject*, %struct.GCObject**, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.lua_State*, i32, i32, i32, {}*, %struct.lua_State*, double*, %struct.TString*, [24 x %struct.TString*], [9 x %struct.Table*], [53 x [2 x %struct.TString*]] }
%struct.stringtable = type { %struct.TString**, i32, i32 }
%struct.TString = type { %struct.GCObject*, i8, i8, i8, i8, i32, %union.anon }
%union.anon = type { i32 }
%struct.Table = type { %struct.GCObject*, i8, i8, i8, i8, i32, %struct.lua_TValue*, %struct.Node*, %struct.Node*, %struct.Table*, %struct.GCObject* }
%struct.Node = type { %struct.lua_TValue, %union.TKey }
%union.TKey = type { %struct.anon }
%struct.anon = type { %union.Value, i32, i32 }
%struct.UpVal = type { %struct.lua_TValue*, i32, %union.anon.3 }
%union.anon.3 = type { %struct.lua_TValue }
%struct.lua_longjmp = type opaque
%struct.CallInfo = type { %struct.lua_TValue*, %struct.lua_TValue*, %struct.CallInfo*, %struct.CallInfo*, %union.anon.0, i32, i16, i8 }
%union.anon.0 = type { %struct.anon.2 }
%struct.anon.2 = type { i32 (%struct.lua_State*, i32, i32)*, i32, i32 }
%struct.lua_Debug = type { i32, i8*, i8*, i8*, i8*, i32, i32, i32, i8, i8, i8, i8, [60 x i8], %struct.CallInfo* }
%union.GCUnion = type { %union.Closure, [88 x i8] }
%union.Closure = type { %struct.CClosure }
%struct.LClosure = type { %struct.GCObject*, i8, i8, i8, %struct.GCObject*, %struct.Proto*, [1 x %struct.UpVal*] }
%struct.Proto = type { %struct.GCObject*, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, %struct.lua_TValue*, i32*, %struct.Proto**, i32*, %struct.LocVar*, %struct.Upvaldesc*, %struct.LClosure*, %struct.TString*, %struct.GCObject* }
%struct.LocVar = type { %struct.TString*, i32, i32 }
%struct.Upvaldesc = type { %struct.TString*, i8, i8 }
%struct.anon.4 = type { %struct.UpVal*, i32 }

; Function Attrs: nounwind
define hidden %struct.CClosure* @luaF_newCclosure(%struct.lua_State* %L, i32 %n) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca i32, align 4
  %o = alloca %struct.GCObject*, align 4
  %c = alloca %struct.CClosure*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !417), !dbg !418
  store i32 %n, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !419), !dbg !420
  call void @llvm.dbg.declare(metadata !{%struct.GCObject** %o}, metadata !421), !dbg !422
  %3 = load %struct.lua_State** %1, align 4, !dbg !423
  %4 = load i32* %2, align 4, !dbg !423
  %5 = sub nsw i32 %4, 1, !dbg !423
  %6 = mul i32 16, %5, !dbg !423
  %7 = add nsw i32 32, %6, !dbg !423
  %8 = call %struct.GCObject* @luaC_newobj(%struct.lua_State* %3, i32 38, i32 %7), !dbg !423
  store %struct.GCObject* %8, %struct.GCObject** %o, align 4, !dbg !423
  call void @llvm.dbg.declare(metadata !{%struct.CClosure** %c}, metadata !424), !dbg !425
  %9 = load %struct.GCObject** %o, align 4, !dbg !426
  %10 = bitcast %struct.GCObject* %9 to %union.GCUnion*, !dbg !426
  %11 = bitcast %union.GCUnion* %10 to %union.Closure*, !dbg !426
  %12 = bitcast %union.Closure* %11 to %struct.CClosure*, !dbg !426
  store %struct.CClosure* %12, %struct.CClosure** %c, align 4, !dbg !426
  %13 = load i32* %2, align 4, !dbg !427
  %14 = trunc i32 %13 to i8, !dbg !427
  %15 = load %struct.CClosure** %c, align 4, !dbg !427
  %16 = getelementptr inbounds %struct.CClosure* %15, i32 0, i32 3, !dbg !427
  store i8 %14, i8* %16, align 1, !dbg !427
  %17 = load %struct.CClosure** %c, align 4, !dbg !428
  ret %struct.CClosure* %17, !dbg !428
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

declare hidden %struct.GCObject* @luaC_newobj(%struct.lua_State*, i32, i32) #2

; Function Attrs: nounwind
define hidden %struct.LClosure* @luaF_newLclosure(%struct.lua_State* %L, i32 %n) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca i32, align 4
  %o = alloca %struct.GCObject*, align 4
  %c = alloca %struct.LClosure*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !429), !dbg !430
  store i32 %n, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !431), !dbg !432
  call void @llvm.dbg.declare(metadata !{%struct.GCObject** %o}, metadata !433), !dbg !434
  %3 = load %struct.lua_State** %1, align 4, !dbg !435
  %4 = load i32* %2, align 4, !dbg !435
  %5 = sub nsw i32 %4, 1, !dbg !435
  %6 = mul i32 4, %5, !dbg !435
  %7 = add nsw i32 20, %6, !dbg !435
  %8 = call %struct.GCObject* @luaC_newobj(%struct.lua_State* %3, i32 6, i32 %7), !dbg !435
  store %struct.GCObject* %8, %struct.GCObject** %o, align 4, !dbg !435
  call void @llvm.dbg.declare(metadata !{%struct.LClosure** %c}, metadata !436), !dbg !437
  %9 = load %struct.GCObject** %o, align 4, !dbg !438
  %10 = bitcast %struct.GCObject* %9 to %union.GCUnion*, !dbg !438
  %11 = bitcast %union.GCUnion* %10 to %union.Closure*, !dbg !438
  %12 = bitcast %union.Closure* %11 to %struct.LClosure*, !dbg !438
  store %struct.LClosure* %12, %struct.LClosure** %c, align 4, !dbg !438
  %13 = load %struct.LClosure** %c, align 4, !dbg !439
  %14 = getelementptr inbounds %struct.LClosure* %13, i32 0, i32 5, !dbg !439
  store %struct.Proto* null, %struct.Proto** %14, align 4, !dbg !439
  %15 = load i32* %2, align 4, !dbg !440
  %16 = trunc i32 %15 to i8, !dbg !440
  %17 = load %struct.LClosure** %c, align 4, !dbg !440
  %18 = getelementptr inbounds %struct.LClosure* %17, i32 0, i32 3, !dbg !440
  store i8 %16, i8* %18, align 1, !dbg !440
  br label %19, !dbg !441

; <label>:19                                      ; preds = %23, %0
  %20 = load i32* %2, align 4, !dbg !442
  %21 = add nsw i32 %20, -1, !dbg !442
  store i32 %21, i32* %2, align 4, !dbg !442
  %22 = icmp ne i32 %20, 0, !dbg !442
  br i1 %22, label %23, label %28, !dbg !442

; <label>:23                                      ; preds = %19
  %24 = load i32* %2, align 4, !dbg !445
  %25 = load %struct.LClosure** %c, align 4, !dbg !445
  %26 = getelementptr inbounds %struct.LClosure* %25, i32 0, i32 6, !dbg !445
  %27 = getelementptr inbounds [1 x %struct.UpVal*]* %26, i32 0, i32 %24, !dbg !445
  store %struct.UpVal* null, %struct.UpVal** %27, align 4, !dbg !445
  br label %19, !dbg !445

; <label>:28                                      ; preds = %19
  %29 = load %struct.LClosure** %c, align 4, !dbg !447
  ret %struct.LClosure* %29, !dbg !447
}

; Function Attrs: nounwind
define hidden void @luaF_initupvals(%struct.lua_State* %L, %struct.LClosure* %cl) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca %struct.LClosure*, align 4
  %i = alloca i32, align 4
  %uv = alloca %struct.UpVal*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !448), !dbg !449
  store %struct.LClosure* %cl, %struct.LClosure** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.LClosure** %2}, metadata !450), !dbg !451
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !452), !dbg !453
  store i32 0, i32* %i, align 4, !dbg !454
  br label %3, !dbg !454

; <label>:3                                       ; preds = %30, %0
  %4 = load i32* %i, align 4, !dbg !456
  %5 = load %struct.LClosure** %2, align 4, !dbg !456
  %6 = getelementptr inbounds %struct.LClosure* %5, i32 0, i32 3, !dbg !456
  %7 = load i8* %6, align 1, !dbg !456
  %8 = zext i8 %7 to i32, !dbg !456
  %9 = icmp slt i32 %4, %8, !dbg !456
  br i1 %9, label %10, label %33, !dbg !456

; <label>:10                                      ; preds = %3
  call void @llvm.dbg.declare(metadata !{%struct.UpVal** %uv}, metadata !459), !dbg !461
  %11 = load %struct.lua_State** %1, align 4, !dbg !462
  %12 = call i8* @luaM_realloc_(%struct.lua_State* %11, i8* null, i32 0, i32 24), !dbg !462
  %13 = bitcast i8* %12 to %struct.UpVal*, !dbg !462
  store %struct.UpVal* %13, %struct.UpVal** %uv, align 4, !dbg !462
  %14 = load %struct.UpVal** %uv, align 4, !dbg !463
  %15 = getelementptr inbounds %struct.UpVal* %14, i32 0, i32 1, !dbg !463
  store i32 1, i32* %15, align 4, !dbg !463
  %16 = load %struct.UpVal** %uv, align 4, !dbg !464
  %17 = getelementptr inbounds %struct.UpVal* %16, i32 0, i32 2, !dbg !464
  %18 = bitcast %union.anon.3* %17 to %struct.lua_TValue*, !dbg !464
  %19 = load %struct.UpVal** %uv, align 4, !dbg !464
  %20 = getelementptr inbounds %struct.UpVal* %19, i32 0, i32 0, !dbg !464
  store %struct.lua_TValue* %18, %struct.lua_TValue** %20, align 4, !dbg !464
  %21 = load %struct.UpVal** %uv, align 4, !dbg !465
  %22 = getelementptr inbounds %struct.UpVal* %21, i32 0, i32 0, !dbg !465
  %23 = load %struct.lua_TValue** %22, align 4, !dbg !465
  %24 = getelementptr inbounds %struct.lua_TValue* %23, i32 0, i32 1, !dbg !465
  store i32 0, i32* %24, align 4, !dbg !465
  %25 = load %struct.UpVal** %uv, align 4, !dbg !466
  %26 = load i32* %i, align 4, !dbg !466
  %27 = load %struct.LClosure** %2, align 4, !dbg !466
  %28 = getelementptr inbounds %struct.LClosure* %27, i32 0, i32 6, !dbg !466
  %29 = getelementptr inbounds [1 x %struct.UpVal*]* %28, i32 0, i32 %26, !dbg !466
  store %struct.UpVal* %25, %struct.UpVal** %29, align 4, !dbg !466
  br label %30, !dbg !467

; <label>:30                                      ; preds = %10
  %31 = load i32* %i, align 4, !dbg !468
  %32 = add nsw i32 %31, 1, !dbg !468
  store i32 %32, i32* %i, align 4, !dbg !468
  br label %3, !dbg !468

; <label>:33                                      ; preds = %3
  ret void, !dbg !469
}

declare hidden i8* @luaM_realloc_(%struct.lua_State*, i8*, i32, i32) #2

; Function Attrs: nounwind
define hidden %struct.UpVal* @luaF_findupval(%struct.lua_State* %L, %struct.lua_TValue* %level) #0 {
  %1 = alloca %struct.UpVal*, align 4
  %2 = alloca %struct.lua_State*, align 4
  %3 = alloca %struct.lua_TValue*, align 4
  %pp = alloca %struct.UpVal**, align 4
  %p = alloca %struct.UpVal*, align 4
  %uv = alloca %struct.UpVal*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %2}, metadata !470), !dbg !471
  store %struct.lua_TValue* %level, %struct.lua_TValue** %3, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %3}, metadata !472), !dbg !473
  call void @llvm.dbg.declare(metadata !{%struct.UpVal*** %pp}, metadata !474), !dbg !476
  %4 = load %struct.lua_State** %2, align 4, !dbg !477
  %5 = getelementptr inbounds %struct.lua_State* %4, i32 0, i32 11, !dbg !477
  store %struct.UpVal** %5, %struct.UpVal*** %pp, align 4, !dbg !477
  call void @llvm.dbg.declare(metadata !{%struct.UpVal** %p}, metadata !478), !dbg !479
  call void @llvm.dbg.declare(metadata !{%struct.UpVal** %uv}, metadata !480), !dbg !481
  br label %6, !dbg !482

; <label>:6                                       ; preds = %27, %0
  %7 = load %struct.UpVal*** %pp, align 4, !dbg !483
  %8 = load %struct.UpVal** %7, align 4, !dbg !483
  %9 = icmp ne %struct.UpVal* %8, null, !dbg !483
  br i1 %9, label %10, label %17, !dbg !483

; <label>:10                                      ; preds = %6
  %11 = load %struct.UpVal*** %pp, align 4, !dbg !485
  %12 = load %struct.UpVal** %11, align 4, !dbg !485
  store %struct.UpVal* %12, %struct.UpVal** %p, align 4, !dbg !485
  %13 = getelementptr inbounds %struct.UpVal* %12, i32 0, i32 0, !dbg !485
  %14 = load %struct.lua_TValue** %13, align 4, !dbg !485
  %15 = load %struct.lua_TValue** %3, align 4, !dbg !485
  %16 = icmp uge %struct.lua_TValue* %14, %15, !dbg !485
  br label %17

; <label>:17                                      ; preds = %10, %6
  %18 = phi i1 [ false, %6 ], [ %16, %10 ]
  br i1 %18, label %19, label %32, !dbg !487

; <label>:19                                      ; preds = %17
  %20 = load %struct.UpVal** %p, align 4, !dbg !489
  %21 = getelementptr inbounds %struct.UpVal* %20, i32 0, i32 0, !dbg !489
  %22 = load %struct.lua_TValue** %21, align 4, !dbg !489
  %23 = load %struct.lua_TValue** %3, align 4, !dbg !489
  %24 = icmp eq %struct.lua_TValue* %22, %23, !dbg !489
  br i1 %24, label %25, label %27, !dbg !489

; <label>:25                                      ; preds = %19
  %26 = load %struct.UpVal** %p, align 4, !dbg !492
  store %struct.UpVal* %26, %struct.UpVal** %1, !dbg !492
  br label %73, !dbg !492

; <label>:27                                      ; preds = %19
  %28 = load %struct.UpVal** %p, align 4, !dbg !493
  %29 = getelementptr inbounds %struct.UpVal* %28, i32 0, i32 2, !dbg !493
  %30 = bitcast %union.anon.3* %29 to %struct.anon.4*, !dbg !493
  %31 = getelementptr inbounds %struct.anon.4* %30, i32 0, i32 0, !dbg !493
  store %struct.UpVal** %31, %struct.UpVal*** %pp, align 4, !dbg !493
  br label %6, !dbg !494

; <label>:32                                      ; preds = %17
  %33 = load %struct.lua_State** %2, align 4, !dbg !495
  %34 = call i8* @luaM_realloc_(%struct.lua_State* %33, i8* null, i32 0, i32 24), !dbg !495
  %35 = bitcast i8* %34 to %struct.UpVal*, !dbg !495
  store %struct.UpVal* %35, %struct.UpVal** %uv, align 4, !dbg !495
  %36 = load %struct.UpVal** %uv, align 4, !dbg !496
  %37 = getelementptr inbounds %struct.UpVal* %36, i32 0, i32 1, !dbg !496
  store i32 0, i32* %37, align 4, !dbg !496
  %38 = load %struct.UpVal*** %pp, align 4, !dbg !497
  %39 = load %struct.UpVal** %38, align 4, !dbg !497
  %40 = load %struct.UpVal** %uv, align 4, !dbg !497
  %41 = getelementptr inbounds %struct.UpVal* %40, i32 0, i32 2, !dbg !497
  %42 = bitcast %union.anon.3* %41 to %struct.anon.4*, !dbg !497
  %43 = getelementptr inbounds %struct.anon.4* %42, i32 0, i32 0, !dbg !497
  store %struct.UpVal* %39, %struct.UpVal** %43, align 4, !dbg !497
  %44 = load %struct.UpVal** %uv, align 4, !dbg !498
  %45 = getelementptr inbounds %struct.UpVal* %44, i32 0, i32 2, !dbg !498
  %46 = bitcast %union.anon.3* %45 to %struct.anon.4*, !dbg !498
  %47 = getelementptr inbounds %struct.anon.4* %46, i32 0, i32 1, !dbg !498
  store i32 1, i32* %47, align 4, !dbg !498
  %48 = load %struct.UpVal** %uv, align 4, !dbg !499
  %49 = load %struct.UpVal*** %pp, align 4, !dbg !499
  store %struct.UpVal* %48, %struct.UpVal** %49, align 4, !dbg !499
  %50 = load %struct.lua_TValue** %3, align 4, !dbg !500
  %51 = load %struct.UpVal** %uv, align 4, !dbg !500
  %52 = getelementptr inbounds %struct.UpVal* %51, i32 0, i32 0, !dbg !500
  store %struct.lua_TValue* %50, %struct.lua_TValue** %52, align 4, !dbg !500
  %53 = load %struct.lua_State** %2, align 4, !dbg !501
  %54 = getelementptr inbounds %struct.lua_State* %53, i32 0, i32 13, !dbg !501
  %55 = load %struct.lua_State** %54, align 4, !dbg !501
  %56 = load %struct.lua_State** %2, align 4, !dbg !501
  %57 = icmp ne %struct.lua_State* %55, %56, !dbg !501
  br i1 %57, label %71, label %58, !dbg !501

; <label>:58                                      ; preds = %32
  %59 = load %struct.lua_State** %2, align 4, !dbg !503
  %60 = getelementptr inbounds %struct.lua_State* %59, i32 0, i32 6, !dbg !503
  %61 = load %struct.global_State** %60, align 4, !dbg !503
  %62 = getelementptr inbounds %struct.global_State* %61, i32 0, i32 23, !dbg !503
  %63 = load %struct.lua_State** %62, align 4, !dbg !503
  %64 = load %struct.lua_State** %2, align 4, !dbg !503
  %65 = getelementptr inbounds %struct.lua_State* %64, i32 0, i32 13, !dbg !503
  store %struct.lua_State* %63, %struct.lua_State** %65, align 4, !dbg !503
  %66 = load %struct.lua_State** %2, align 4, !dbg !505
  %67 = load %struct.lua_State** %2, align 4, !dbg !505
  %68 = getelementptr inbounds %struct.lua_State* %67, i32 0, i32 6, !dbg !505
  %69 = load %struct.global_State** %68, align 4, !dbg !505
  %70 = getelementptr inbounds %struct.global_State* %69, i32 0, i32 23, !dbg !505
  store %struct.lua_State* %66, %struct.lua_State** %70, align 4, !dbg !505
  br label %71, !dbg !506

; <label>:71                                      ; preds = %58, %32
  %72 = load %struct.UpVal** %uv, align 4, !dbg !507
  store %struct.UpVal* %72, %struct.UpVal** %1, !dbg !507
  br label %73, !dbg !507

; <label>:73                                      ; preds = %71, %25
  %74 = load %struct.UpVal** %1, !dbg !508
  ret %struct.UpVal* %74, !dbg !508
}

; Function Attrs: nounwind
define hidden void @luaF_close(%struct.lua_State* %L, %struct.lua_TValue* %level) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca %struct.lua_TValue*, align 4
  %uv = alloca %struct.UpVal*, align 4
  %io1 = alloca %struct.lua_TValue*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !509), !dbg !510
  store %struct.lua_TValue* %level, %struct.lua_TValue** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %2}, metadata !511), !dbg !512
  call void @llvm.dbg.declare(metadata !{%struct.UpVal** %uv}, metadata !513), !dbg !514
  br label %3, !dbg !515

; <label>:3                                       ; preds = %71, %0
  %4 = load %struct.lua_State** %1, align 4, !dbg !516
  %5 = getelementptr inbounds %struct.lua_State* %4, i32 0, i32 11, !dbg !516
  %6 = load %struct.UpVal** %5, align 4, !dbg !516
  %7 = icmp ne %struct.UpVal* %6, null, !dbg !516
  br i1 %7, label %8, label %16, !dbg !516

; <label>:8                                       ; preds = %3
  %9 = load %struct.lua_State** %1, align 4, !dbg !518
  %10 = getelementptr inbounds %struct.lua_State* %9, i32 0, i32 11, !dbg !518
  %11 = load %struct.UpVal** %10, align 4, !dbg !518
  store %struct.UpVal* %11, %struct.UpVal** %uv, align 4, !dbg !518
  %12 = getelementptr inbounds %struct.UpVal* %11, i32 0, i32 0, !dbg !518
  %13 = load %struct.lua_TValue** %12, align 4, !dbg !518
  %14 = load %struct.lua_TValue** %2, align 4, !dbg !518
  %15 = icmp uge %struct.lua_TValue* %13, %14, !dbg !518
  br label %16

; <label>:16                                      ; preds = %8, %3
  %17 = phi i1 [ false, %3 ], [ %15, %8 ]
  br i1 %17, label %18, label %72, !dbg !520

; <label>:18                                      ; preds = %16
  %19 = load %struct.UpVal** %uv, align 4, !dbg !522
  %20 = getelementptr inbounds %struct.UpVal* %19, i32 0, i32 2, !dbg !522
  %21 = bitcast %union.anon.3* %20 to %struct.anon.4*, !dbg !522
  %22 = getelementptr inbounds %struct.anon.4* %21, i32 0, i32 0, !dbg !522
  %23 = load %struct.UpVal** %22, align 4, !dbg !522
  %24 = load %struct.lua_State** %1, align 4, !dbg !522
  %25 = getelementptr inbounds %struct.lua_State* %24, i32 0, i32 11, !dbg !522
  store %struct.UpVal* %23, %struct.UpVal** %25, align 4, !dbg !522
  %26 = load %struct.UpVal** %uv, align 4, !dbg !524
  %27 = getelementptr inbounds %struct.UpVal* %26, i32 0, i32 1, !dbg !524
  %28 = load i32* %27, align 4, !dbg !524
  %29 = icmp eq i32 %28, 0, !dbg !524
  br i1 %29, label %30, label %35, !dbg !524

; <label>:30                                      ; preds = %18
  %31 = load %struct.lua_State** %1, align 4, !dbg !526
  %32 = load %struct.UpVal** %uv, align 4, !dbg !526
  %33 = bitcast %struct.UpVal* %32 to i8*, !dbg !526
  %34 = call i8* @luaM_realloc_(%struct.lua_State* %31, i8* %33, i32 24, i32 0), !dbg !526
  br label %71, !dbg !526

; <label>:35                                      ; preds = %18
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %io1}, metadata !527), !dbg !530
  %36 = load %struct.UpVal** %uv, align 4, !dbg !530
  %37 = getelementptr inbounds %struct.UpVal* %36, i32 0, i32 2, !dbg !530
  %38 = bitcast %union.anon.3* %37 to %struct.lua_TValue*, !dbg !530
  store %struct.lua_TValue* %38, %struct.lua_TValue** %io1, align 4, !dbg !530
  %39 = load %struct.lua_TValue** %io1, align 4, !dbg !530
  %40 = load %struct.UpVal** %uv, align 4, !dbg !530
  %41 = getelementptr inbounds %struct.UpVal* %40, i32 0, i32 0, !dbg !530
  %42 = load %struct.lua_TValue** %41, align 4, !dbg !530
  %43 = bitcast %struct.lua_TValue* %39 to i8*, !dbg !530
  %44 = bitcast %struct.lua_TValue* %42 to i8*, !dbg !530
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %43, i8* %44, i32 16, i32 8, i1 false), !dbg !530
  %45 = load %struct.lua_State** %1, align 4, !dbg !530
  %46 = load %struct.UpVal** %uv, align 4, !dbg !531
  %47 = getelementptr inbounds %struct.UpVal* %46, i32 0, i32 2, !dbg !531
  %48 = bitcast %union.anon.3* %47 to %struct.lua_TValue*, !dbg !531
  %49 = load %struct.UpVal** %uv, align 4, !dbg !531
  %50 = getelementptr inbounds %struct.UpVal* %49, i32 0, i32 0, !dbg !531
  store %struct.lua_TValue* %48, %struct.lua_TValue** %50, align 4, !dbg !531
  %51 = load %struct.UpVal** %uv, align 4, !dbg !532
  %52 = getelementptr inbounds %struct.UpVal* %51, i32 0, i32 0, !dbg !532
  %53 = load %struct.lua_TValue** %52, align 4, !dbg !532
  %54 = getelementptr inbounds %struct.lua_TValue* %53, i32 0, i32 1, !dbg !532
  %55 = load i32* %54, align 4, !dbg !532
  %56 = and i32 %55, 64, !dbg !532
  %57 = icmp ne i32 %56, 0, !dbg !532
  br i1 %57, label %58, label %69, !dbg !532

; <label>:58                                      ; preds = %35
  %59 = load %struct.UpVal** %uv, align 4, !dbg !533
  %60 = getelementptr inbounds %struct.UpVal* %59, i32 0, i32 0, !dbg !533
  %61 = load %struct.lua_TValue** %60, align 4, !dbg !533
  %62 = load %struct.UpVal** %uv, align 4, !dbg !533
  %63 = getelementptr inbounds %struct.UpVal* %62, i32 0, i32 2, !dbg !533
  %64 = bitcast %union.anon.3* %63 to %struct.lua_TValue*, !dbg !533
  %65 = icmp ne %struct.lua_TValue* %61, %64, !dbg !533
  br i1 %65, label %69, label %66, !dbg !533

; <label>:66                                      ; preds = %58
  %67 = load %struct.lua_State** %1, align 4, !dbg !535
  %68 = load %struct.UpVal** %uv, align 4, !dbg !535
  call void @luaC_upvalbarrier_(%struct.lua_State* %67, %struct.UpVal* %68), !dbg !535
  br label %70, !dbg !535

; <label>:69                                      ; preds = %58, %35
  br label %70, !dbg !537

; <label>:70                                      ; preds = %69, %66
  br label %71

; <label>:71                                      ; preds = %70, %30
  br label %3, !dbg !540

; <label>:72                                      ; preds = %16
  ret void, !dbg !541
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture, i8* nocapture readonly, i32, i32, i1) #3

declare hidden void @luaC_upvalbarrier_(%struct.lua_State*, %struct.UpVal*) #2

; Function Attrs: nounwind
define hidden %struct.Proto* @luaF_newproto(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %o = alloca %struct.GCObject*, align 4
  %f = alloca %struct.Proto*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !542), !dbg !543
  call void @llvm.dbg.declare(metadata !{%struct.GCObject** %o}, metadata !544), !dbg !545
  %2 = load %struct.lua_State** %1, align 4, !dbg !546
  %3 = call %struct.GCObject* @luaC_newobj(%struct.lua_State* %2, i32 9, i32 80), !dbg !546
  store %struct.GCObject* %3, %struct.GCObject** %o, align 4, !dbg !546
  call void @llvm.dbg.declare(metadata !{%struct.Proto** %f}, metadata !547), !dbg !548
  %4 = load %struct.GCObject** %o, align 4, !dbg !549
  %5 = bitcast %struct.GCObject* %4 to %union.GCUnion*, !dbg !549
  %6 = bitcast %union.GCUnion* %5 to %struct.Proto*, !dbg !549
  store %struct.Proto* %6, %struct.Proto** %f, align 4, !dbg !549
  %7 = load %struct.Proto** %f, align 4, !dbg !550
  %8 = getelementptr inbounds %struct.Proto* %7, i32 0, i32 14, !dbg !550
  store %struct.lua_TValue* null, %struct.lua_TValue** %8, align 4, !dbg !550
  %9 = load %struct.Proto** %f, align 4, !dbg !551
  %10 = getelementptr inbounds %struct.Proto* %9, i32 0, i32 7, !dbg !551
  store i32 0, i32* %10, align 4, !dbg !551
  %11 = load %struct.Proto** %f, align 4, !dbg !552
  %12 = getelementptr inbounds %struct.Proto* %11, i32 0, i32 16, !dbg !552
  store %struct.Proto** null, %struct.Proto*** %12, align 4, !dbg !552
  %13 = load %struct.Proto** %f, align 4, !dbg !553
  %14 = getelementptr inbounds %struct.Proto* %13, i32 0, i32 10, !dbg !553
  store i32 0, i32* %14, align 4, !dbg !553
  %15 = load %struct.Proto** %f, align 4, !dbg !554
  %16 = getelementptr inbounds %struct.Proto* %15, i32 0, i32 15, !dbg !554
  store i32* null, i32** %16, align 4, !dbg !554
  %17 = load %struct.Proto** %f, align 4, !dbg !555
  %18 = getelementptr inbounds %struct.Proto* %17, i32 0, i32 20, !dbg !555
  store %struct.LClosure* null, %struct.LClosure** %18, align 4, !dbg !555
  %19 = load %struct.Proto** %f, align 4, !dbg !556
  %20 = getelementptr inbounds %struct.Proto* %19, i32 0, i32 8, !dbg !556
  store i32 0, i32* %20, align 4, !dbg !556
  %21 = load %struct.Proto** %f, align 4, !dbg !557
  %22 = getelementptr inbounds %struct.Proto* %21, i32 0, i32 17, !dbg !557
  store i32* null, i32** %22, align 4, !dbg !557
  %23 = load %struct.Proto** %f, align 4, !dbg !558
  %24 = getelementptr inbounds %struct.Proto* %23, i32 0, i32 9, !dbg !558
  store i32 0, i32* %24, align 4, !dbg !558
  %25 = load %struct.Proto** %f, align 4, !dbg !559
  %26 = getelementptr inbounds %struct.Proto* %25, i32 0, i32 19, !dbg !559
  store %struct.Upvaldesc* null, %struct.Upvaldesc** %26, align 4, !dbg !559
  %27 = load %struct.Proto** %f, align 4, !dbg !560
  %28 = getelementptr inbounds %struct.Proto* %27, i32 0, i32 6, !dbg !560
  store i32 0, i32* %28, align 4, !dbg !560
  %29 = load %struct.Proto** %f, align 4, !dbg !561
  %30 = getelementptr inbounds %struct.Proto* %29, i32 0, i32 3, !dbg !561
  store i8 0, i8* %30, align 1, !dbg !561
  %31 = load %struct.Proto** %f, align 4, !dbg !562
  %32 = getelementptr inbounds %struct.Proto* %31, i32 0, i32 4, !dbg !562
  store i8 0, i8* %32, align 1, !dbg !562
  %33 = load %struct.Proto** %f, align 4, !dbg !563
  %34 = getelementptr inbounds %struct.Proto* %33, i32 0, i32 5, !dbg !563
  store i8 0, i8* %34, align 1, !dbg !563
  %35 = load %struct.Proto** %f, align 4, !dbg !564
  %36 = getelementptr inbounds %struct.Proto* %35, i32 0, i32 18, !dbg !564
  store %struct.LocVar* null, %struct.LocVar** %36, align 4, !dbg !564
  %37 = load %struct.Proto** %f, align 4, !dbg !565
  %38 = getelementptr inbounds %struct.Proto* %37, i32 0, i32 11, !dbg !565
  store i32 0, i32* %38, align 4, !dbg !565
  %39 = load %struct.Proto** %f, align 4, !dbg !566
  %40 = getelementptr inbounds %struct.Proto* %39, i32 0, i32 12, !dbg !566
  store i32 0, i32* %40, align 4, !dbg !566
  %41 = load %struct.Proto** %f, align 4, !dbg !567
  %42 = getelementptr inbounds %struct.Proto* %41, i32 0, i32 13, !dbg !567
  store i32 0, i32* %42, align 4, !dbg !567
  %43 = load %struct.Proto** %f, align 4, !dbg !568
  %44 = getelementptr inbounds %struct.Proto* %43, i32 0, i32 21, !dbg !568
  store %struct.TString* null, %struct.TString** %44, align 4, !dbg !568
  %45 = load %struct.Proto** %f, align 4, !dbg !569
  ret %struct.Proto* %45, !dbg !569
}

; Function Attrs: nounwind
define hidden void @luaF_freeproto(%struct.lua_State* %L, %struct.Proto* %f) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca %struct.Proto*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !570), !dbg !571
  store %struct.Proto* %f, %struct.Proto** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.Proto** %2}, metadata !572), !dbg !573
  %3 = load %struct.lua_State** %1, align 4, !dbg !574
  %4 = load %struct.Proto** %2, align 4, !dbg !574
  %5 = getelementptr inbounds %struct.Proto* %4, i32 0, i32 15, !dbg !574
  %6 = load i32** %5, align 4, !dbg !574
  %7 = bitcast i32* %6 to i8*, !dbg !574
  %8 = load %struct.Proto** %2, align 4, !dbg !574
  %9 = getelementptr inbounds %struct.Proto* %8, i32 0, i32 8, !dbg !574
  %10 = load i32* %9, align 4, !dbg !574
  %11 = mul i32 %10, 4, !dbg !574
  %12 = call i8* @luaM_realloc_(%struct.lua_State* %3, i8* %7, i32 %11, i32 0), !dbg !574
  %13 = load %struct.lua_State** %1, align 4, !dbg !575
  %14 = load %struct.Proto** %2, align 4, !dbg !575
  %15 = getelementptr inbounds %struct.Proto* %14, i32 0, i32 16, !dbg !575
  %16 = load %struct.Proto*** %15, align 4, !dbg !575
  %17 = bitcast %struct.Proto** %16 to i8*, !dbg !575
  %18 = load %struct.Proto** %2, align 4, !dbg !575
  %19 = getelementptr inbounds %struct.Proto* %18, i32 0, i32 10, !dbg !575
  %20 = load i32* %19, align 4, !dbg !575
  %21 = mul i32 %20, 4, !dbg !575
  %22 = call i8* @luaM_realloc_(%struct.lua_State* %13, i8* %17, i32 %21, i32 0), !dbg !575
  %23 = load %struct.lua_State** %1, align 4, !dbg !576
  %24 = load %struct.Proto** %2, align 4, !dbg !576
  %25 = getelementptr inbounds %struct.Proto* %24, i32 0, i32 14, !dbg !576
  %26 = load %struct.lua_TValue** %25, align 4, !dbg !576
  %27 = bitcast %struct.lua_TValue* %26 to i8*, !dbg !576
  %28 = load %struct.Proto** %2, align 4, !dbg !576
  %29 = getelementptr inbounds %struct.Proto* %28, i32 0, i32 7, !dbg !576
  %30 = load i32* %29, align 4, !dbg !576
  %31 = mul i32 %30, 16, !dbg !576
  %32 = call i8* @luaM_realloc_(%struct.lua_State* %23, i8* %27, i32 %31, i32 0), !dbg !576
  %33 = load %struct.lua_State** %1, align 4, !dbg !577
  %34 = load %struct.Proto** %2, align 4, !dbg !577
  %35 = getelementptr inbounds %struct.Proto* %34, i32 0, i32 17, !dbg !577
  %36 = load i32** %35, align 4, !dbg !577
  %37 = bitcast i32* %36 to i8*, !dbg !577
  %38 = load %struct.Proto** %2, align 4, !dbg !577
  %39 = getelementptr inbounds %struct.Proto* %38, i32 0, i32 9, !dbg !577
  %40 = load i32* %39, align 4, !dbg !577
  %41 = mul i32 %40, 4, !dbg !577
  %42 = call i8* @luaM_realloc_(%struct.lua_State* %33, i8* %37, i32 %41, i32 0), !dbg !577
  %43 = load %struct.lua_State** %1, align 4, !dbg !578
  %44 = load %struct.Proto** %2, align 4, !dbg !578
  %45 = getelementptr inbounds %struct.Proto* %44, i32 0, i32 18, !dbg !578
  %46 = load %struct.LocVar** %45, align 4, !dbg !578
  %47 = bitcast %struct.LocVar* %46 to i8*, !dbg !578
  %48 = load %struct.Proto** %2, align 4, !dbg !578
  %49 = getelementptr inbounds %struct.Proto* %48, i32 0, i32 11, !dbg !578
  %50 = load i32* %49, align 4, !dbg !578
  %51 = mul i32 %50, 12, !dbg !578
  %52 = call i8* @luaM_realloc_(%struct.lua_State* %43, i8* %47, i32 %51, i32 0), !dbg !578
  %53 = load %struct.lua_State** %1, align 4, !dbg !579
  %54 = load %struct.Proto** %2, align 4, !dbg !579
  %55 = getelementptr inbounds %struct.Proto* %54, i32 0, i32 19, !dbg !579
  %56 = load %struct.Upvaldesc** %55, align 4, !dbg !579
  %57 = bitcast %struct.Upvaldesc* %56 to i8*, !dbg !579
  %58 = load %struct.Proto** %2, align 4, !dbg !579
  %59 = getelementptr inbounds %struct.Proto* %58, i32 0, i32 6, !dbg !579
  %60 = load i32* %59, align 4, !dbg !579
  %61 = mul i32 %60, 8, !dbg !579
  %62 = call i8* @luaM_realloc_(%struct.lua_State* %53, i8* %57, i32 %61, i32 0), !dbg !579
  %63 = load %struct.lua_State** %1, align 4, !dbg !580
  %64 = load %struct.Proto** %2, align 4, !dbg !580
  %65 = bitcast %struct.Proto* %64 to i8*, !dbg !580
  %66 = call i8* @luaM_realloc_(%struct.lua_State* %63, i8* %65, i32 80, i32 0), !dbg !580
  ret void, !dbg !581
}

; Function Attrs: nounwind
define hidden i8* @luaF_getlocalname(%struct.Proto* %f, i32 %local_number, i32 %pc) #0 {
  %1 = alloca i8*, align 4
  %2 = alloca %struct.Proto*, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.Proto* %f, %struct.Proto** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.Proto** %2}, metadata !582), !dbg !583
  store i32 %local_number, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !584), !dbg !585
  store i32 %pc, i32* %4, align 4
  call void @llvm.dbg.declare(metadata !{i32* %4}, metadata !586), !dbg !587
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !588), !dbg !589
  store i32 0, i32* %i, align 4, !dbg !590
  br label %5, !dbg !590

; <label>:5                                       ; preds = %50, %0
  %6 = load i32* %i, align 4, !dbg !592
  %7 = load %struct.Proto** %2, align 4, !dbg !592
  %8 = getelementptr inbounds %struct.Proto* %7, i32 0, i32 11, !dbg !592
  %9 = load i32* %8, align 4, !dbg !592
  %10 = icmp slt i32 %6, %9, !dbg !592
  br i1 %10, label %11, label %21, !dbg !592

; <label>:11                                      ; preds = %5
  %12 = load i32* %i, align 4, !dbg !595
  %13 = load %struct.Proto** %2, align 4, !dbg !595
  %14 = getelementptr inbounds %struct.Proto* %13, i32 0, i32 18, !dbg !595
  %15 = load %struct.LocVar** %14, align 4, !dbg !595
  %16 = getelementptr inbounds %struct.LocVar* %15, i32 %12, !dbg !595
  %17 = getelementptr inbounds %struct.LocVar* %16, i32 0, i32 1, !dbg !595
  %18 = load i32* %17, align 4, !dbg !595
  %19 = load i32* %4, align 4, !dbg !595
  %20 = icmp sle i32 %18, %19, !dbg !595
  br label %21

; <label>:21                                      ; preds = %11, %5
  %22 = phi i1 [ false, %5 ], [ %20, %11 ]
  br i1 %22, label %23, label %53, !dbg !597

; <label>:23                                      ; preds = %21
  %24 = load i32* %4, align 4, !dbg !599
  %25 = load i32* %i, align 4, !dbg !599
  %26 = load %struct.Proto** %2, align 4, !dbg !599
  %27 = getelementptr inbounds %struct.Proto* %26, i32 0, i32 18, !dbg !599
  %28 = load %struct.LocVar** %27, align 4, !dbg !599
  %29 = getelementptr inbounds %struct.LocVar* %28, i32 %25, !dbg !599
  %30 = getelementptr inbounds %struct.LocVar* %29, i32 0, i32 2, !dbg !599
  %31 = load i32* %30, align 4, !dbg !599
  %32 = icmp slt i32 %24, %31, !dbg !599
  br i1 %32, label %33, label %49, !dbg !599

; <label>:33                                      ; preds = %23
  %34 = load i32* %3, align 4, !dbg !602
  %35 = add nsw i32 %34, -1, !dbg !602
  store i32 %35, i32* %3, align 4, !dbg !602
  %36 = load i32* %3, align 4, !dbg !604
  %37 = icmp eq i32 %36, 0, !dbg !604
  br i1 %37, label %38, label %48, !dbg !604

; <label>:38                                      ; preds = %33
  %39 = load i32* %i, align 4, !dbg !606
  %40 = load %struct.Proto** %2, align 4, !dbg !606
  %41 = getelementptr inbounds %struct.Proto* %40, i32 0, i32 18, !dbg !606
  %42 = load %struct.LocVar** %41, align 4, !dbg !606
  %43 = getelementptr inbounds %struct.LocVar* %42, i32 %39, !dbg !606
  %44 = getelementptr inbounds %struct.LocVar* %43, i32 0, i32 0, !dbg !606
  %45 = load %struct.TString** %44, align 4, !dbg !606
  %46 = bitcast %struct.TString* %45 to i8*, !dbg !606
  %47 = getelementptr inbounds i8* %46, i32 16, !dbg !606
  store i8* %47, i8** %1, !dbg !606
  br label %54, !dbg !606

; <label>:48                                      ; preds = %33
  br label %49, !dbg !607

; <label>:49                                      ; preds = %48, %23
  br label %50, !dbg !608

; <label>:50                                      ; preds = %49
  %51 = load i32* %i, align 4, !dbg !609
  %52 = add nsw i32 %51, 1, !dbg !609
  store i32 %52, i32* %i, align 4, !dbg !609
  br label %5, !dbg !609

; <label>:53                                      ; preds = %21
  store i8* null, i8** %1, !dbg !610
  br label %54, !dbg !610

; <label>:54                                      ; preds = %53, %38
  %55 = load i8** %1, !dbg !611
  ret i8* %55, !dbg !611
}

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!xidane.fname = !{!376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397}
!xidane.function_declaration_type = !{!376, !398, !378, !399, !380, !400, !382, !401, !384, !402, !386, !403, !388, !404, !390, !405, !392, !406, !394, !407, !396, !408}
!xidane.function_declaration_filename = !{!376, !409, !378, !410, !380, !409, !382, !409, !384, !411, !386, !409, !388, !409, !390, !410, !392, !409, !394, !409, !396, !409}
!xidane.ExternC = !{!376, !378, !380, !382, !384, !386, !388, !390, !392, !394, !396}
!llvm.module.flags = !{!412, !413, !414, !415}
!llvm.ident = !{!416}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.0 (tags/RELEASE_350/final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src\lfunc.c] [DW_LANG_C99]
!1 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src\5Clfunc.c", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!2 = metadata !{}
!3 = metadata !{metadata !4, metadata !295, metadata !354, metadata !357, metadata !360, metadata !363, metadata !368, metadata !371}
!4 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"luaF_newCclosure", metadata !"luaF_newCclosure", metadata !"", i32 25, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, %struct.CClosure* (%struct.lua_State*, i32)* @luaF_newCclosure, null, null, metadata !2, i32 25} ; [ DW_TAG_subprogram ] [line 25] [def] [luaF_newCclosure]
!5 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lfunc.c", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!6 = metadata !{i32 786473, metadata !5}          ; [ DW_TAG_file_type ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lfunc.c]
!7 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!8 = metadata !{metadata !9, metadata !36, metadata !35}
!9 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from CClosure]
!10 = metadata !{i32 786454, metadata !11, null, metadata !"CClosure", i32 450, i64 0, i64 0, i64 0, i32 0, metadata !12} ; [ DW_TAG_typedef ] [CClosure] [line 450, size 0, align 0, offset 0] [from CClosure]
!11 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lobject.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!12 = metadata !{i32 786451, metadata !11, null, metadata !"CClosure", i32 446, i64 256, i64 64, i32 0, i32 0, null, metadata !13, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [CClosure] [line 446, size 256, align 64, offset 0] [def] [from ]
!13 = metadata !{metadata !14, metadata !25, metadata !26, metadata !27, metadata !28, metadata !29, metadata !291}
!14 = metadata !{i32 786445, metadata !11, metadata !12, metadata !"next", i32 447, i64 32, i64 32, i64 0, i32 0, metadata !15} ; [ DW_TAG_member ] [next] [line 447, size 32, align 32, offset 0] [from ]
!15 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !16} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from GCObject]
!16 = metadata !{i32 786454, metadata !11, null, metadata !"GCObject", i32 72, i64 0, i64 0, i64 0, i32 0, metadata !17} ; [ DW_TAG_typedef ] [GCObject] [line 72, size 0, align 0, offset 0] [from GCObject]
!17 = metadata !{i32 786451, metadata !11, null, metadata !"GCObject", i32 85, i64 64, i64 32, i32 0, i32 0, null, metadata !18, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [GCObject] [line 85, size 64, align 32, offset 0] [def] [from ]
!18 = metadata !{metadata !19, metadata !20, metadata !24}
!19 = metadata !{i32 786445, metadata !11, metadata !17, metadata !"next", i32 86, i64 32, i64 32, i64 0, i32 0, metadata !15} ; [ DW_TAG_member ] [next] [line 86, size 32, align 32, offset 0] [from ]
!20 = metadata !{i32 786445, metadata !11, metadata !17, metadata !"tt", i32 86, i64 8, i64 8, i64 32, i32 0, metadata !21} ; [ DW_TAG_member ] [tt] [line 86, size 8, align 8, offset 32] [from lu_byte]
!21 = metadata !{i32 786454, metadata !22, null, metadata !"lu_byte", i32 35, i64 0, i64 0, i64 0, i32 0, metadata !23} ; [ DW_TAG_typedef ] [lu_byte] [line 35, size 0, align 0, offset 0] [from unsigned char]
!22 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/llimits.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!23 = metadata !{i32 786468, null, null, metadata !"unsigned char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [unsigned char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!24 = metadata !{i32 786445, metadata !11, metadata !17, metadata !"marked", i32 86, i64 8, i64 8, i64 40, i32 0, metadata !21} ; [ DW_TAG_member ] [marked] [line 86, size 8, align 8, offset 40] [from lu_byte]
!25 = metadata !{i32 786445, metadata !11, metadata !12, metadata !"tt", i32 447, i64 8, i64 8, i64 32, i32 0, metadata !21} ; [ DW_TAG_member ] [tt] [line 447, size 8, align 8, offset 32] [from lu_byte]
!26 = metadata !{i32 786445, metadata !11, metadata !12, metadata !"marked", i32 447, i64 8, i64 8, i64 40, i32 0, metadata !21} ; [ DW_TAG_member ] [marked] [line 447, size 8, align 8, offset 40] [from lu_byte]
!27 = metadata !{i32 786445, metadata !11, metadata !12, metadata !"nupvalues", i32 447, i64 8, i64 8, i64 48, i32 0, metadata !21} ; [ DW_TAG_member ] [nupvalues] [line 447, size 8, align 8, offset 48] [from lu_byte]
!28 = metadata !{i32 786445, metadata !11, metadata !12, metadata !"gclist", i32 447, i64 32, i64 32, i64 64, i32 0, metadata !15} ; [ DW_TAG_member ] [gclist] [line 447, size 32, align 32, offset 64] [from ]
!29 = metadata !{i32 786445, metadata !11, metadata !12, metadata !"f", i32 448, i64 32, i64 32, i64 96, i32 0, metadata !30} ; [ DW_TAG_member ] [f] [line 448, size 32, align 32, offset 96] [from lua_CFunction]
!30 = metadata !{i32 786454, metadata !31, null, metadata !"lua_CFunction", i32 105, i64 0, i64 0, i64 0, i32 0, metadata !32} ; [ DW_TAG_typedef ] [lua_CFunction] [line 105, size 0, align 0, offset 0] [from ]
!31 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lua.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!32 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !33} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!33 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !34, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!34 = metadata !{metadata !35, metadata !36}
!35 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!36 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !37} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from lua_State]
!37 = metadata !{i32 786454, metadata !31, null, metadata !"lua_State", i32 56, i64 0, i64 0, i64 0, i32 0, metadata !38} ; [ DW_TAG_typedef ] [lua_State] [line 56, size 0, align 0, offset 0] [from lua_State]
!38 = metadata !{i32 786451, metadata !39, null, metadata !"lua_State", i32 159, i64 960, i64 32, i32 0, i32 0, null, metadata !40, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [lua_State] [line 159, size 960, align 32, offset 0] [def] [from ]
!39 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lstate.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!40 = metadata !{metadata !41, metadata !42, metadata !43, metadata !44, metadata !46, metadata !47, metadata !69, metadata !185, metadata !223, metadata !224, metadata !225, metadata !226, metadata !243, metadata !244, metadata !245, metadata !248, metadata !249, metadata !279, metadata !280, metadata !281, metadata !282, metadata !283, metadata !284, metadata !285, metadata !290}
!41 = metadata !{i32 786445, metadata !39, metadata !38, metadata !"next", i32 160, i64 32, i64 32, i64 0, i32 0, metadata !15} ; [ DW_TAG_member ] [next] [line 160, size 32, align 32, offset 0] [from ]
!42 = metadata !{i32 786445, metadata !39, metadata !38, metadata !"tt", i32 160, i64 8, i64 8, i64 32, i32 0, metadata !21} ; [ DW_TAG_member ] [tt] [line 160, size 8, align 8, offset 32] [from lu_byte]
!43 = metadata !{i32 786445, metadata !39, metadata !38, metadata !"marked", i32 160, i64 8, i64 8, i64 40, i32 0, metadata !21} ; [ DW_TAG_member ] [marked] [line 160, size 8, align 8, offset 40] [from lu_byte]
!44 = metadata !{i32 786445, metadata !39, metadata !38, metadata !"nci", i32 161, i64 16, i64 16, i64 48, i32 0, metadata !45} ; [ DW_TAG_member ] [nci] [line 161, size 16, align 16, offset 48] [from unsigned short]
!45 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!46 = metadata !{i32 786445, metadata !39, metadata !38, metadata !"status", i32 162, i64 8, i64 8, i64 64, i32 0, metadata !21} ; [ DW_TAG_member ] [status] [line 162, size 8, align 8, offset 64] [from lu_byte]
!47 = metadata !{i32 786445, metadata !39, metadata !38, metadata !"top", i32 163, i64 32, i64 32, i64 96, i32 0, metadata !48} ; [ DW_TAG_member ] [top] [line 163, size 32, align 32, offset 96] [from StkId]
!48 = metadata !{i32 786454, metadata !11, null, metadata !"StkId", i32 294, i64 0, i64 0, i64 0, i32 0, metadata !49} ; [ DW_TAG_typedef ] [StkId] [line 294, size 0, align 0, offset 0] [from ]
!49 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !50} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from TValue]
!50 = metadata !{i32 786454, metadata !11, null, metadata !"TValue", i32 115, i64 0, i64 0, i64 0, i32 0, metadata !51} ; [ DW_TAG_typedef ] [TValue] [line 115, size 0, align 0, offset 0] [from lua_TValue]
!51 = metadata !{i32 786451, metadata !11, null, metadata !"lua_TValue", i32 113, i64 128, i64 64, i32 0, i32 0, null, metadata !52, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [lua_TValue] [line 113, size 128, align 64, offset 0] [def] [from ]
!52 = metadata !{metadata !53, metadata !68}
!53 = metadata !{i32 786445, metadata !11, metadata !51, metadata !"value_", i32 114, i64 64, i64 64, i64 0, i32 0, metadata !54} ; [ DW_TAG_member ] [value_] [line 114, size 64, align 64, offset 0] [from Value]
!54 = metadata !{i32 786454, metadata !11, null, metadata !"Value", i32 107, i64 0, i64 0, i64 0, i32 0, metadata !55} ; [ DW_TAG_typedef ] [Value] [line 107, size 0, align 0, offset 0] [from Value]
!55 = metadata !{i32 786455, metadata !11, null, metadata !"Value", i32 100, i64 64, i64 64, i64 0, i32 0, null, metadata !56, i32 0, null, null, null} ; [ DW_TAG_union_type ] [Value] [line 100, size 64, align 64, offset 0] [def] [from ]
!56 = metadata !{metadata !57, metadata !58, metadata !60, metadata !61, metadata !62, metadata !65}
!57 = metadata !{i32 786445, metadata !11, metadata !55, metadata !"gc", i32 101, i64 32, i64 32, i64 0, i32 0, metadata !15} ; [ DW_TAG_member ] [gc] [line 101, size 32, align 32, offset 0] [from ]
!58 = metadata !{i32 786445, metadata !11, metadata !55, metadata !"p", i32 102, i64 32, i64 32, i64 0, i32 0, metadata !59} ; [ DW_TAG_member ] [p] [line 102, size 32, align 32, offset 0] [from ]
!59 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!60 = metadata !{i32 786445, metadata !11, metadata !55, metadata !"b", i32 103, i64 32, i64 32, i64 0, i32 0, metadata !35} ; [ DW_TAG_member ] [b] [line 103, size 32, align 32, offset 0] [from int]
!61 = metadata !{i32 786445, metadata !11, metadata !55, metadata !"f", i32 104, i64 32, i64 32, i64 0, i32 0, metadata !30} ; [ DW_TAG_member ] [f] [line 104, size 32, align 32, offset 0] [from lua_CFunction]
!62 = metadata !{i32 786445, metadata !11, metadata !55, metadata !"i", i32 105, i64 64, i64 64, i64 0, i32 0, metadata !63} ; [ DW_TAG_member ] [i] [line 105, size 64, align 64, offset 0] [from lua_Integer]
!63 = metadata !{i32 786454, metadata !31, null, metadata !"lua_Integer", i32 93, i64 0, i64 0, i64 0, i32 0, metadata !64} ; [ DW_TAG_typedef ] [lua_Integer] [line 93, size 0, align 0, offset 0] [from long long int]
!64 = metadata !{i32 786468, null, null, metadata !"long long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!65 = metadata !{i32 786445, metadata !11, metadata !55, metadata !"n", i32 106, i64 64, i64 64, i64 0, i32 0, metadata !66} ; [ DW_TAG_member ] [n] [line 106, size 64, align 64, offset 0] [from lua_Number]
!66 = metadata !{i32 786454, metadata !31, null, metadata !"lua_Number", i32 89, i64 0, i64 0, i64 0, i32 0, metadata !67} ; [ DW_TAG_typedef ] [lua_Number] [line 89, size 0, align 0, offset 0] [from double]
!67 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!68 = metadata !{i32 786445, metadata !11, metadata !51, metadata !"tt_", i32 114, i64 32, i64 32, i64 64, i32 0, metadata !35} ; [ DW_TAG_member ] [tt_] [line 114, size 32, align 32, offset 64] [from int]
!69 = metadata !{i32 786445, metadata !39, metadata !38, metadata !"l_G", i32 164, i64 32, i64 32, i64 128, i32 0, metadata !70} ; [ DW_TAG_member ] [l_G] [line 164, size 32, align 32, offset 128] [from ]
!70 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !71} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from global_State]
!71 = metadata !{i32 786454, metadata !39, null, metadata !"global_State", i32 153, i64 0, i64 0, i64 0, i32 0, metadata !72} ; [ DW_TAG_typedef ] [global_State] [line 153, size 0, align 0, offset 0] [from global_State]
!72 = metadata !{i32 786451, metadata !39, null, metadata !"global_State", i32 118, i64 5568, i64 64, i32 0, i32 0, null, metadata !73, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [global_State] [line 118, size 5568, align 64, offset 0] [def] [from ]
!73 = metadata !{metadata !74, metadata !82, metadata !83, metadata !86, metadata !87, metadata !89, metadata !90, metadata !114, metadata !115, metadata !116, metadata !117, metadata !118, metadata !119, metadata !120, metadata !121, metadata !123, metadata !124, metadata !125, metadata !126, metadata !127, metadata !128, metadata !129, metadata !130, metadata !131, metadata !133, metadata !134, metadata !135, metadata !136, metadata !137, metadata !138, metadata !141, metadata !142, metadata !146, metadata !180}
!74 = metadata !{i32 786445, metadata !39, metadata !72, metadata !"frealloc", i32 119, i64 32, i64 32, i64 0, i32 0, metadata !75} ; [ DW_TAG_member ] [frealloc] [line 119, size 32, align 32, offset 0] [from lua_Alloc]
!75 = metadata !{i32 786454, metadata !31, null, metadata !"lua_Alloc", i32 124, i64 0, i64 0, i64 0, i32 0, metadata !76} ; [ DW_TAG_typedef ] [lua_Alloc] [line 124, size 0, align 0, offset 0] [from ]
!76 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !77} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!77 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !78, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!78 = metadata !{metadata !59, metadata !59, metadata !59, metadata !79, metadata !79}
!79 = metadata !{i32 786454, metadata !80, null, metadata !"size_t", i32 216, i64 0, i64 0, i64 0, i32 0, metadata !81} ; [ DW_TAG_typedef ] [size_t] [line 216, size 0, align 0, offset 0] [from unsigned int]
!80 = metadata !{metadata !"D:/Xilinx/SDx/2016.3/SDK/gnu/aarch32/nt/gcc-arm-linux-gnueabi/lib/gcc/arm-linux-gnueabihf/5.2.1/include\5Cstddef.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!81 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!82 = metadata !{i32 786445, metadata !39, metadata !72, metadata !"ud", i32 120, i64 32, i64 32, i64 32, i32 0, metadata !59} ; [ DW_TAG_member ] [ud] [line 120, size 32, align 32, offset 32] [from ]
!83 = metadata !{i32 786445, metadata !39, metadata !72, metadata !"totalbytes", i32 121, i64 32, i64 32, i64 64, i32 0, metadata !84} ; [ DW_TAG_member ] [totalbytes] [line 121, size 32, align 32, offset 64] [from l_mem]
!84 = metadata !{i32 786454, metadata !22, null, metadata !"l_mem", i32 27, i64 0, i64 0, i64 0, i32 0, metadata !85} ; [ DW_TAG_typedef ] [l_mem] [line 27, size 0, align 0, offset 0] [from ptrdiff_t]
!85 = metadata !{i32 786454, metadata !80, null, metadata !"ptrdiff_t", i32 149, i64 0, i64 0, i64 0, i32 0, metadata !35} ; [ DW_TAG_typedef ] [ptrdiff_t] [line 149, size 0, align 0, offset 0] [from int]
!86 = metadata !{i32 786445, metadata !39, metadata !72, metadata !"GCdebt", i32 122, i64 32, i64 32, i64 96, i32 0, metadata !84} ; [ DW_TAG_member ] [GCdebt] [line 122, size 32, align 32, offset 96] [from l_mem]
!87 = metadata !{i32 786445, metadata !39, metadata !72, metadata !"GCmemtrav", i32 123, i64 32, i64 32, i64 128, i32 0, metadata !88} ; [ DW_TAG_member ] [GCmemtrav] [line 123, size 32, align 32, offset 128] [from lu_mem]
!88 = metadata !{i32 786454, metadata !22, null, metadata !"lu_mem", i32 26, i64 0, i64 0, i64 0, i32 0, metadata !79} ; [ DW_TAG_typedef ] [lu_mem] [line 26, size 0, align 0, offset 0] [from size_t]
!89 = metadata !{i32 786445, metadata !39, metadata !72, metadata !"GCestimate", i32 124, i64 32, i64 32, i64 160, i32 0, metadata !88} ; [ DW_TAG_member ] [GCestimate] [line 124, size 32, align 32, offset 160] [from lu_mem]
!90 = metadata !{i32 786445, metadata !39, metadata !72, metadata !"strt", i32 125, i64 96, i64 32, i64 192, i32 0, metadata !91} ; [ DW_TAG_member ] [strt] [line 125, size 96, align 32, offset 192] [from stringtable]
!91 = metadata !{i32 786454, metadata !39, null, metadata !"stringtable", i32 62, i64 0, i64 0, i64 0, i32 0, metadata !92} ; [ DW_TAG_typedef ] [stringtable] [line 62, size 0, align 0, offset 0] [from stringtable]
!92 = metadata !{i32 786451, metadata !39, null, metadata !"stringtable", i32 58, i64 96, i64 32, i32 0, i32 0, null, metadata !93, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [stringtable] [line 58, size 96, align 32, offset 0] [def] [from ]
!93 = metadata !{metadata !94, metadata !112, metadata !113}
!94 = metadata !{i32 786445, metadata !39, metadata !92, metadata !"hash", i32 59, i64 32, i64 32, i64 0, i32 0, metadata !95} ; [ DW_TAG_member ] [hash] [line 59, size 32, align 32, offset 0] [from ]
!95 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !96} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!96 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !97} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from TString]
!97 = metadata !{i32 786454, metadata !11, null, metadata !"TString", i32 312, i64 0, i64 0, i64 0, i32 0, metadata !98} ; [ DW_TAG_typedef ] [TString] [line 312, size 0, align 0, offset 0] [from TString]
!98 = metadata !{i32 786451, metadata !11, null, metadata !"TString", i32 303, i64 128, i64 32, i32 0, i32 0, null, metadata !99, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [TString] [line 303, size 128, align 32, offset 0] [def] [from ]
!99 = metadata !{metadata !100, metadata !101, metadata !102, metadata !103, metadata !104, metadata !105, metadata !106}
!100 = metadata !{i32 786445, metadata !11, metadata !98, metadata !"next", i32 304, i64 32, i64 32, i64 0, i32 0, metadata !15} ; [ DW_TAG_member ] [next] [line 304, size 32, align 32, offset 0] [from ]
!101 = metadata !{i32 786445, metadata !11, metadata !98, metadata !"tt", i32 304, i64 8, i64 8, i64 32, i32 0, metadata !21} ; [ DW_TAG_member ] [tt] [line 304, size 8, align 8, offset 32] [from lu_byte]
!102 = metadata !{i32 786445, metadata !11, metadata !98, metadata !"marked", i32 304, i64 8, i64 8, i64 40, i32 0, metadata !21} ; [ DW_TAG_member ] [marked] [line 304, size 8, align 8, offset 40] [from lu_byte]
!103 = metadata !{i32 786445, metadata !11, metadata !98, metadata !"extra", i32 305, i64 8, i64 8, i64 48, i32 0, metadata !21} ; [ DW_TAG_member ] [extra] [line 305, size 8, align 8, offset 48] [from lu_byte]
!104 = metadata !{i32 786445, metadata !11, metadata !98, metadata !"shrlen", i32 306, i64 8, i64 8, i64 56, i32 0, metadata !21} ; [ DW_TAG_member ] [shrlen] [line 306, size 8, align 8, offset 56] [from lu_byte]
!105 = metadata !{i32 786445, metadata !11, metadata !98, metadata !"hash", i32 307, i64 32, i64 32, i64 64, i32 0, metadata !81} ; [ DW_TAG_member ] [hash] [line 307, size 32, align 32, offset 64] [from unsigned int]
!106 = metadata !{i32 786445, metadata !11, metadata !98, metadata !"u", i32 311, i64 32, i64 32, i64 96, i32 0, metadata !107} ; [ DW_TAG_member ] [u] [line 311, size 32, align 32, offset 96] [from ]
!107 = metadata !{i32 786455, metadata !11, metadata !98, metadata !"", i32 308, i64 32, i64 32, i64 0, i32 0, null, metadata !108, i32 0, null, null, null} ; [ DW_TAG_union_type ] [line 308, size 32, align 32, offset 0] [def] [from ]
!108 = metadata !{metadata !109, metadata !110}
!109 = metadata !{i32 786445, metadata !11, metadata !107, metadata !"lnglen", i32 309, i64 32, i64 32, i64 0, i32 0, metadata !79} ; [ DW_TAG_member ] [lnglen] [line 309, size 32, align 32, offset 0] [from size_t]
!110 = metadata !{i32 786445, metadata !11, metadata !107, metadata !"hnext", i32 310, i64 32, i64 32, i64 0, i32 0, metadata !111} ; [ DW_TAG_member ] [hnext] [line 310, size 32, align 32, offset 0] [from ]
!111 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !98} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from TString]
!112 = metadata !{i32 786445, metadata !39, metadata !92, metadata !"nuse", i32 60, i64 32, i64 32, i64 32, i32 0, metadata !35} ; [ DW_TAG_member ] [nuse] [line 60, size 32, align 32, offset 32] [from int]
!113 = metadata !{i32 786445, metadata !39, metadata !92, metadata !"size", i32 61, i64 32, i64 32, i64 64, i32 0, metadata !35} ; [ DW_TAG_member ] [size] [line 61, size 32, align 32, offset 64] [from int]
!114 = metadata !{i32 786445, metadata !39, metadata !72, metadata !"l_registry", i32 126, i64 128, i64 64, i64 320, i32 0, metadata !50} ; [ DW_TAG_member ] [l_registry] [line 126, size 128, align 64, offset 320] [from TValue]
!115 = metadata !{i32 786445, metadata !39, metadata !72, metadata !"seed", i32 127, i64 32, i64 32, i64 448, i32 0, metadata !81} ; [ DW_TAG_member ] [seed] [line 127, size 32, align 32, offset 448] [from unsigned int]
!116 = metadata !{i32 786445, metadata !39, metadata !72, metadata !"currentwhite", i32 128, i64 8, i64 8, i64 480, i32 0, metadata !21} ; [ DW_TAG_member ] [currentwhite] [line 128, size 8, align 8, offset 480] [from lu_byte]
!117 = metadata !{i32 786445, metadata !39, metadata !72, metadata !"gcstate", i32 129, i64 8, i64 8, i64 488, i32 0, metadata !21} ; [ DW_TAG_member ] [gcstate] [line 129, size 8, align 8, offset 488] [from lu_byte]
!118 = metadata !{i32 786445, metadata !39, metadata !72, metadata !"gckind", i32 130, i64 8, i64 8, i64 496, i32 0, metadata !21} ; [ DW_TAG_member ] [gckind] [line 130, size 8, align 8, offset 496] [from lu_byte]
!119 = metadata !{i32 786445, metadata !39, metadata !72, metadata !"gcrunning", i32 131, i64 8, i64 8, i64 504, i32 0, metadata !21} ; [ DW_TAG_member ] [gcrunning] [line 131, size 8, align 8, offset 504] [from lu_byte]
!120 = metadata !{i32 786445, metadata !39, metadata !72, metadata !"allgc", i32 132, i64 32, i64 32, i64 512, i32 0, metadata !15} ; [ DW_TAG_member ] [allgc] [line 132, size 32, align 32, offset 512] [from ]
!121 = metadata !{i32 786445, metadata !39, metadata !72, metadata !"sweepgc", i32 133, i64 32, i64 32, i64 544, i32 0, metadata !122} ; [ DW_TAG_member ] [sweepgc] [line 133, size 32, align 32, offset 544] [from ]
!122 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !15} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!123 = metadata !{i32 786445, metadata !39, metadata !72, metadata !"finobj", i32 134, i64 32, i64 32, i64 576, i32 0, metadata !15} ; [ DW_TAG_member ] [finobj] [line 134, size 32, align 32, offset 576] [from ]
!124 = metadata !{i32 786445, metadata !39, metadata !72, metadata !"gray", i32 135, i64 32, i64 32, i64 608, i32 0, metadata !15} ; [ DW_TAG_member ] [gray] [line 135, size 32, align 32, offset 608] [from ]
!125 = metadata !{i32 786445, metadata !39, metadata !72, metadata !"grayagain", i32 136, i64 32, i64 32, i64 640, i32 0, metadata !15} ; [ DW_TAG_member ] [grayagain] [line 136, size 32, align 32, offset 640] [from ]
!126 = metadata !{i32 786445, metadata !39, metadata !72, metadata !"weak", i32 137, i64 32, i64 32, i64 672, i32 0, metadata !15} ; [ DW_TAG_member ] [weak] [line 137, size 32, align 32, offset 672] [from ]
!127 = metadata !{i32 786445, metadata !39, metadata !72, metadata !"ephemeron", i32 138, i64 32, i64 32, i64 704, i32 0, metadata !15} ; [ DW_TAG_member ] [ephemeron] [line 138, size 32, align 32, offset 704] [from ]
!128 = metadata !{i32 786445, metadata !39, metadata !72, metadata !"allweak", i32 139, i64 32, i64 32, i64 736, i32 0, metadata !15} ; [ DW_TAG_member ] [allweak] [line 139, size 32, align 32, offset 736] [from ]
!129 = metadata !{i32 786445, metadata !39, metadata !72, metadata !"tobefnz", i32 140, i64 32, i64 32, i64 768, i32 0, metadata !15} ; [ DW_TAG_member ] [tobefnz] [line 140, size 32, align 32, offset 768] [from ]
!130 = metadata !{i32 786445, metadata !39, metadata !72, metadata !"fixedgc", i32 141, i64 32, i64 32, i64 800, i32 0, metadata !15} ; [ DW_TAG_member ] [fixedgc] [line 141, size 32, align 32, offset 800] [from ]
!131 = metadata !{i32 786445, metadata !39, metadata !72, metadata !"twups", i32 142, i64 32, i64 32, i64 832, i32 0, metadata !132} ; [ DW_TAG_member ] [twups] [line 142, size 32, align 32, offset 832] [from ]
!132 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !38} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from lua_State]
!133 = metadata !{i32 786445, metadata !39, metadata !72, metadata !"gcfinnum", i32 143, i64 32, i64 32, i64 864, i32 0, metadata !81} ; [ DW_TAG_member ] [gcfinnum] [line 143, size 32, align 32, offset 864] [from unsigned int]
!134 = metadata !{i32 786445, metadata !39, metadata !72, metadata !"gcpause", i32 144, i64 32, i64 32, i64 896, i32 0, metadata !35} ; [ DW_TAG_member ] [gcpause] [line 144, size 32, align 32, offset 896] [from int]
!135 = metadata !{i32 786445, metadata !39, metadata !72, metadata !"gcstepmul", i32 145, i64 32, i64 32, i64 928, i32 0, metadata !35} ; [ DW_TAG_member ] [gcstepmul] [line 145, size 32, align 32, offset 928] [from int]
!136 = metadata !{i32 786445, metadata !39, metadata !72, metadata !"panic", i32 146, i64 32, i64 32, i64 960, i32 0, metadata !30} ; [ DW_TAG_member ] [panic] [line 146, size 32, align 32, offset 960] [from lua_CFunction]
!137 = metadata !{i32 786445, metadata !39, metadata !72, metadata !"mainthread", i32 147, i64 32, i64 32, i64 992, i32 0, metadata !132} ; [ DW_TAG_member ] [mainthread] [line 147, size 32, align 32, offset 992] [from ]
!138 = metadata !{i32 786445, metadata !39, metadata !72, metadata !"version", i32 148, i64 32, i64 32, i64 1024, i32 0, metadata !139} ; [ DW_TAG_member ] [version] [line 148, size 32, align 32, offset 1024] [from ]
!139 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !140} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!140 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !66} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from lua_Number]
!141 = metadata !{i32 786445, metadata !39, metadata !72, metadata !"memerrmsg", i32 149, i64 32, i64 32, i64 1056, i32 0, metadata !96} ; [ DW_TAG_member ] [memerrmsg] [line 149, size 32, align 32, offset 1056] [from ]
!142 = metadata !{i32 786445, metadata !39, metadata !72, metadata !"tmname", i32 150, i64 768, i64 32, i64 1088, i32 0, metadata !143} ; [ DW_TAG_member ] [tmname] [line 150, size 768, align 32, offset 1088] [from ]
!143 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 768, i64 32, i32 0, i32 0, metadata !96, metadata !144, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 768, align 32, offset 0] [from ]
!144 = metadata !{metadata !145}
!145 = metadata !{i32 786465, i64 0, i64 24}      ; [ DW_TAG_subrange_type ] [0, 23]
!146 = metadata !{i32 786445, metadata !39, metadata !72, metadata !"mt", i32 151, i64 288, i64 32, i64 1856, i32 0, metadata !147} ; [ DW_TAG_member ] [mt] [line 151, size 288, align 32, offset 1856] [from ]
!147 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 288, i64 32, i32 0, i32 0, metadata !148, metadata !178, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 288, align 32, offset 0] [from ]
!148 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !149} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from Table]
!149 = metadata !{i32 786451, metadata !11, null, metadata !"Table", i32 497, i64 256, i64 32, i32 0, i32 0, null, metadata !150, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [Table] [line 497, size 256, align 32, offset 0] [def] [from ]
!150 = metadata !{metadata !151, metadata !152, metadata !153, metadata !154, metadata !155, metadata !156, metadata !157, metadata !158, metadata !175, metadata !176, metadata !177}
!151 = metadata !{i32 786445, metadata !11, metadata !149, metadata !"next", i32 498, i64 32, i64 32, i64 0, i32 0, metadata !15} ; [ DW_TAG_member ] [next] [line 498, size 32, align 32, offset 0] [from ]
!152 = metadata !{i32 786445, metadata !11, metadata !149, metadata !"tt", i32 498, i64 8, i64 8, i64 32, i32 0, metadata !21} ; [ DW_TAG_member ] [tt] [line 498, size 8, align 8, offset 32] [from lu_byte]
!153 = metadata !{i32 786445, metadata !11, metadata !149, metadata !"marked", i32 498, i64 8, i64 8, i64 40, i32 0, metadata !21} ; [ DW_TAG_member ] [marked] [line 498, size 8, align 8, offset 40] [from lu_byte]
!154 = metadata !{i32 786445, metadata !11, metadata !149, metadata !"flags", i32 499, i64 8, i64 8, i64 48, i32 0, metadata !21} ; [ DW_TAG_member ] [flags] [line 499, size 8, align 8, offset 48] [from lu_byte]
!155 = metadata !{i32 786445, metadata !11, metadata !149, metadata !"lsizenode", i32 500, i64 8, i64 8, i64 56, i32 0, metadata !21} ; [ DW_TAG_member ] [lsizenode] [line 500, size 8, align 8, offset 56] [from lu_byte]
!156 = metadata !{i32 786445, metadata !11, metadata !149, metadata !"sizearray", i32 501, i64 32, i64 32, i64 64, i32 0, metadata !81} ; [ DW_TAG_member ] [sizearray] [line 501, size 32, align 32, offset 64] [from unsigned int]
!157 = metadata !{i32 786445, metadata !11, metadata !149, metadata !"array", i32 502, i64 32, i64 32, i64 96, i32 0, metadata !49} ; [ DW_TAG_member ] [array] [line 502, size 32, align 32, offset 96] [from ]
!158 = metadata !{i32 786445, metadata !11, metadata !149, metadata !"node", i32 503, i64 32, i64 32, i64 128, i32 0, metadata !159} ; [ DW_TAG_member ] [node] [line 503, size 32, align 32, offset 128] [from ]
!159 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !160} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from Node]
!160 = metadata !{i32 786454, metadata !11, null, metadata !"Node", i32 494, i64 0, i64 0, i64 0, i32 0, metadata !161} ; [ DW_TAG_typedef ] [Node] [line 494, size 0, align 0, offset 0] [from Node]
!161 = metadata !{i32 786451, metadata !11, null, metadata !"Node", i32 491, i64 256, i64 64, i32 0, i32 0, null, metadata !162, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [Node] [line 491, size 256, align 64, offset 0] [def] [from ]
!162 = metadata !{metadata !163, metadata !164}
!163 = metadata !{i32 786445, metadata !11, metadata !161, metadata !"i_val", i32 492, i64 128, i64 64, i64 0, i32 0, metadata !50} ; [ DW_TAG_member ] [i_val] [line 492, size 128, align 64, offset 0] [from TValue]
!164 = metadata !{i32 786445, metadata !11, metadata !161, metadata !"i_key", i32 493, i64 128, i64 64, i64 128, i32 0, metadata !165} ; [ DW_TAG_member ] [i_key] [line 493, size 128, align 64, offset 128] [from TKey]
!165 = metadata !{i32 786454, metadata !11, null, metadata !"TKey", i32 481, i64 0, i64 0, i64 0, i32 0, metadata !166} ; [ DW_TAG_typedef ] [TKey] [line 481, size 0, align 0, offset 0] [from TKey]
!166 = metadata !{i32 786455, metadata !11, null, metadata !"TKey", i32 475, i64 128, i64 64, i64 0, i32 0, null, metadata !167, i32 0, null, null, null} ; [ DW_TAG_union_type ] [TKey] [line 475, size 128, align 64, offset 0] [def] [from ]
!167 = metadata !{metadata !168, metadata !174}
!168 = metadata !{i32 786445, metadata !11, metadata !166, metadata !"nk", i32 479, i64 128, i64 64, i64 0, i32 0, metadata !169} ; [ DW_TAG_member ] [nk] [line 479, size 128, align 64, offset 0] [from ]
!169 = metadata !{i32 786451, metadata !11, metadata !166, metadata !"", i32 476, i64 128, i64 64, i32 0, i32 0, null, metadata !170, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 476, size 128, align 64, offset 0] [def] [from ]
!170 = metadata !{metadata !171, metadata !172, metadata !173}
!171 = metadata !{i32 786445, metadata !11, metadata !169, metadata !"value_", i32 477, i64 64, i64 64, i64 0, i32 0, metadata !54} ; [ DW_TAG_member ] [value_] [line 477, size 64, align 64, offset 0] [from Value]
!172 = metadata !{i32 786445, metadata !11, metadata !169, metadata !"tt_", i32 477, i64 32, i64 32, i64 64, i32 0, metadata !35} ; [ DW_TAG_member ] [tt_] [line 477, size 32, align 32, offset 64] [from int]
!173 = metadata !{i32 786445, metadata !11, metadata !169, metadata !"next", i32 478, i64 32, i64 32, i64 96, i32 0, metadata !35} ; [ DW_TAG_member ] [next] [line 478, size 32, align 32, offset 96] [from int]
!174 = metadata !{i32 786445, metadata !11, metadata !166, metadata !"tvk", i32 480, i64 128, i64 64, i64 0, i32 0, metadata !50} ; [ DW_TAG_member ] [tvk] [line 480, size 128, align 64, offset 0] [from TValue]
!175 = metadata !{i32 786445, metadata !11, metadata !149, metadata !"lastfree", i32 504, i64 32, i64 32, i64 160, i32 0, metadata !159} ; [ DW_TAG_member ] [lastfree] [line 504, size 32, align 32, offset 160] [from ]
!176 = metadata !{i32 786445, metadata !11, metadata !149, metadata !"metatable", i32 505, i64 32, i64 32, i64 192, i32 0, metadata !148} ; [ DW_TAG_member ] [metatable] [line 505, size 32, align 32, offset 192] [from ]
!177 = metadata !{i32 786445, metadata !11, metadata !149, metadata !"gclist", i32 506, i64 32, i64 32, i64 224, i32 0, metadata !15} ; [ DW_TAG_member ] [gclist] [line 506, size 32, align 32, offset 224] [from ]
!178 = metadata !{metadata !179}
!179 = metadata !{i32 786465, i64 0, i64 9}       ; [ DW_TAG_subrange_type ] [0, 8]
!180 = metadata !{i32 786445, metadata !39, metadata !72, metadata !"strcache", i32 152, i64 3392, i64 32, i64 2144, i32 0, metadata !181} ; [ DW_TAG_member ] [strcache] [line 152, size 3392, align 32, offset 2144] [from ]
!181 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 3392, i64 32, i32 0, i32 0, metadata !96, metadata !182, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 3392, align 32, offset 0] [from ]
!182 = metadata !{metadata !183, metadata !184}
!183 = metadata !{i32 786465, i64 0, i64 53}      ; [ DW_TAG_subrange_type ] [0, 52]
!184 = metadata !{i32 786465, i64 0, i64 2}       ; [ DW_TAG_subrange_type ] [0, 1]
!185 = metadata !{i32 786445, metadata !39, metadata !38, metadata !"ci", i32 165, i64 32, i64 32, i64 160, i32 0, metadata !186} ; [ DW_TAG_member ] [ci] [line 165, size 32, align 32, offset 160] [from ]
!186 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !187} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from CallInfo]
!187 = metadata !{i32 786454, metadata !39, null, metadata !"CallInfo", i32 92, i64 0, i64 0, i64 0, i32 0, metadata !188} ; [ DW_TAG_typedef ] [CallInfo] [line 92, size 0, align 0, offset 0] [from CallInfo]
!188 = metadata !{i32 786451, metadata !39, null, metadata !"CallInfo", i32 74, i64 288, i64 32, i32 0, i32 0, null, metadata !189, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [CallInfo] [line 74, size 288, align 32, offset 0] [def] [from ]
!189 = metadata !{metadata !190, metadata !191, metadata !192, metadata !194, metadata !195, metadata !219, metadata !220, metadata !222}
!190 = metadata !{i32 786445, metadata !39, metadata !188, metadata !"func", i32 75, i64 32, i64 32, i64 0, i32 0, metadata !48} ; [ DW_TAG_member ] [func] [line 75, size 32, align 32, offset 0] [from StkId]
!191 = metadata !{i32 786445, metadata !39, metadata !188, metadata !"top", i32 76, i64 32, i64 32, i64 32, i32 0, metadata !48} ; [ DW_TAG_member ] [top] [line 76, size 32, align 32, offset 32] [from StkId]
!192 = metadata !{i32 786445, metadata !39, metadata !188, metadata !"previous", i32 77, i64 32, i64 32, i64 64, i32 0, metadata !193} ; [ DW_TAG_member ] [previous] [line 77, size 32, align 32, offset 64] [from ]
!193 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !188} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from CallInfo]
!194 = metadata !{i32 786445, metadata !39, metadata !188, metadata !"next", i32 77, i64 32, i64 32, i64 96, i32 0, metadata !193} ; [ DW_TAG_member ] [next] [line 77, size 32, align 32, offset 96] [from ]
!195 = metadata !{i32 786445, metadata !39, metadata !188, metadata !"u", i32 88, i64 96, i64 32, i64 128, i32 0, metadata !196} ; [ DW_TAG_member ] [u] [line 88, size 96, align 32, offset 128] [from ]
!196 = metadata !{i32 786455, metadata !39, metadata !188, metadata !"", i32 78, i64 96, i64 32, i64 0, i32 0, null, metadata !197, i32 0, null, null, null} ; [ DW_TAG_union_type ] [line 78, size 96, align 32, offset 0] [def] [from ]
!197 = metadata !{metadata !198, metadata !206}
!198 = metadata !{i32 786445, metadata !39, metadata !196, metadata !"l", i32 82, i64 64, i64 32, i64 0, i32 0, metadata !199} ; [ DW_TAG_member ] [l] [line 82, size 64, align 32, offset 0] [from ]
!199 = metadata !{i32 786451, metadata !39, metadata !196, metadata !"", i32 79, i64 64, i64 32, i32 0, i32 0, null, metadata !200, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 79, size 64, align 32, offset 0] [def] [from ]
!200 = metadata !{metadata !201, metadata !202}
!201 = metadata !{i32 786445, metadata !39, metadata !199, metadata !"base", i32 80, i64 32, i64 32, i64 0, i32 0, metadata !48} ; [ DW_TAG_member ] [base] [line 80, size 32, align 32, offset 0] [from StkId]
!202 = metadata !{i32 786445, metadata !39, metadata !199, metadata !"savedpc", i32 81, i64 32, i64 32, i64 32, i32 0, metadata !203} ; [ DW_TAG_member ] [savedpc] [line 81, size 32, align 32, offset 32] [from ]
!203 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !204} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!204 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !205} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from Instruction]
!205 = metadata !{i32 786454, metadata !22, null, metadata !"Instruction", i32 163, i64 0, i64 0, i64 0, i32 0, metadata !81} ; [ DW_TAG_typedef ] [Instruction] [line 163, size 0, align 0, offset 0] [from unsigned int]
!206 = metadata !{i32 786445, metadata !39, metadata !196, metadata !"c", i32 87, i64 96, i64 32, i64 0, i32 0, metadata !207} ; [ DW_TAG_member ] [c] [line 87, size 96, align 32, offset 0] [from ]
!207 = metadata !{i32 786451, metadata !39, metadata !196, metadata !"", i32 83, i64 96, i64 32, i32 0, i32 0, null, metadata !208, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 83, size 96, align 32, offset 0] [def] [from ]
!208 = metadata !{metadata !209, metadata !217, metadata !218}
!209 = metadata !{i32 786445, metadata !39, metadata !207, metadata !"k", i32 84, i64 32, i64 32, i64 0, i32 0, metadata !210} ; [ DW_TAG_member ] [k] [line 84, size 32, align 32, offset 0] [from lua_KFunction]
!210 = metadata !{i32 786454, metadata !31, null, metadata !"lua_KFunction", i32 110, i64 0, i64 0, i64 0, i32 0, metadata !211} ; [ DW_TAG_typedef ] [lua_KFunction] [line 110, size 0, align 0, offset 0] [from ]
!211 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !212} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!212 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !213, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!213 = metadata !{metadata !35, metadata !36, metadata !35, metadata !214}
!214 = metadata !{i32 786454, metadata !31, null, metadata !"lua_KContext", i32 99, i64 0, i64 0, i64 0, i32 0, metadata !215} ; [ DW_TAG_typedef ] [lua_KContext] [line 99, size 0, align 0, offset 0] [from intptr_t]
!215 = metadata !{i32 786454, metadata !216, null, metadata !"intptr_t", i32 125, i64 0, i64 0, i64 0, i32 0, metadata !35} ; [ DW_TAG_typedef ] [intptr_t] [line 125, size 0, align 0, offset 0] [from int]
!216 = metadata !{metadata !"D:/Xilinx/SDx/2016.3/SDK/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include\5Cstdint.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!217 = metadata !{i32 786445, metadata !39, metadata !207, metadata !"old_errfunc", i32 85, i64 32, i64 32, i64 32, i32 0, metadata !85} ; [ DW_TAG_member ] [old_errfunc] [line 85, size 32, align 32, offset 32] [from ptrdiff_t]
!218 = metadata !{i32 786445, metadata !39, metadata !207, metadata !"ctx", i32 86, i64 32, i64 32, i64 64, i32 0, metadata !214} ; [ DW_TAG_member ] [ctx] [line 86, size 32, align 32, offset 64] [from lua_KContext]
!219 = metadata !{i32 786445, metadata !39, metadata !188, metadata !"extra", i32 89, i64 32, i64 32, i64 224, i32 0, metadata !85} ; [ DW_TAG_member ] [extra] [line 89, size 32, align 32, offset 224] [from ptrdiff_t]
!220 = metadata !{i32 786445, metadata !39, metadata !188, metadata !"nresults", i32 90, i64 16, i64 16, i64 256, i32 0, metadata !221} ; [ DW_TAG_member ] [nresults] [line 90, size 16, align 16, offset 256] [from short]
!221 = metadata !{i32 786468, null, null, metadata !"short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [short] [line 0, size 16, align 16, offset 0, enc DW_ATE_signed]
!222 = metadata !{i32 786445, metadata !39, metadata !188, metadata !"callstatus", i32 91, i64 8, i64 8, i64 272, i32 0, metadata !21} ; [ DW_TAG_member ] [callstatus] [line 91, size 8, align 8, offset 272] [from lu_byte]
!223 = metadata !{i32 786445, metadata !39, metadata !38, metadata !"oldpc", i32 166, i64 32, i64 32, i64 192, i32 0, metadata !203} ; [ DW_TAG_member ] [oldpc] [line 166, size 32, align 32, offset 192] [from ]
!224 = metadata !{i32 786445, metadata !39, metadata !38, metadata !"stack_last", i32 167, i64 32, i64 32, i64 224, i32 0, metadata !48} ; [ DW_TAG_member ] [stack_last] [line 167, size 32, align 32, offset 224] [from StkId]
!225 = metadata !{i32 786445, metadata !39, metadata !38, metadata !"stack", i32 168, i64 32, i64 32, i64 256, i32 0, metadata !48} ; [ DW_TAG_member ] [stack] [line 168, size 32, align 32, offset 256] [from StkId]
!226 = metadata !{i32 786445, metadata !39, metadata !38, metadata !"openupval", i32 169, i64 32, i64 32, i64 288, i32 0, metadata !227} ; [ DW_TAG_member ] [openupval] [line 169, size 32, align 32, offset 288] [from ]
!227 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !228} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from UpVal]
!228 = metadata !{i32 786454, metadata !11, null, metadata !"UpVal", i32 436, i64 0, i64 0, i64 0, i32 0, metadata !229} ; [ DW_TAG_typedef ] [UpVal] [line 436, size 0, align 0, offset 0] [from UpVal]
!229 = metadata !{i32 786451, metadata !230, null, metadata !"UpVal", i32 35, i64 192, i64 64, i32 0, i32 0, null, metadata !231, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [UpVal] [line 35, size 192, align 64, offset 0] [def] [from ]
!230 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lfunc.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!231 = metadata !{metadata !232, metadata !233, metadata !234}
!232 = metadata !{i32 786445, metadata !230, metadata !229, metadata !"v", i32 36, i64 32, i64 32, i64 0, i32 0, metadata !49} ; [ DW_TAG_member ] [v] [line 36, size 32, align 32, offset 0] [from ]
!233 = metadata !{i32 786445, metadata !230, metadata !229, metadata !"refcount", i32 37, i64 32, i64 32, i64 32, i32 0, metadata !88} ; [ DW_TAG_member ] [refcount] [line 37, size 32, align 32, offset 32] [from lu_mem]
!234 = metadata !{i32 786445, metadata !230, metadata !229, metadata !"u", i32 44, i64 128, i64 64, i64 64, i32 0, metadata !235} ; [ DW_TAG_member ] [u] [line 44, size 128, align 64, offset 64] [from ]
!235 = metadata !{i32 786455, metadata !230, metadata !229, metadata !"", i32 38, i64 128, i64 64, i64 0, i32 0, null, metadata !236, i32 0, null, null, null} ; [ DW_TAG_union_type ] [line 38, size 128, align 64, offset 0] [def] [from ]
!236 = metadata !{metadata !237, metadata !242}
!237 = metadata !{i32 786445, metadata !230, metadata !235, metadata !"open", i32 42, i64 64, i64 32, i64 0, i32 0, metadata !238} ; [ DW_TAG_member ] [open] [line 42, size 64, align 32, offset 0] [from ]
!238 = metadata !{i32 786451, metadata !230, metadata !235, metadata !"", i32 39, i64 64, i64 32, i32 0, i32 0, null, metadata !239, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 39, size 64, align 32, offset 0] [def] [from ]
!239 = metadata !{metadata !240, metadata !241}
!240 = metadata !{i32 786445, metadata !230, metadata !238, metadata !"next", i32 40, i64 32, i64 32, i64 0, i32 0, metadata !227} ; [ DW_TAG_member ] [next] [line 40, size 32, align 32, offset 0] [from ]
!241 = metadata !{i32 786445, metadata !230, metadata !238, metadata !"touched", i32 41, i64 32, i64 32, i64 32, i32 0, metadata !35} ; [ DW_TAG_member ] [touched] [line 41, size 32, align 32, offset 32] [from int]
!242 = metadata !{i32 786445, metadata !230, metadata !235, metadata !"value", i32 43, i64 128, i64 64, i64 0, i32 0, metadata !50} ; [ DW_TAG_member ] [value] [line 43, size 128, align 64, offset 0] [from TValue]
!243 = metadata !{i32 786445, metadata !39, metadata !38, metadata !"gclist", i32 170, i64 32, i64 32, i64 320, i32 0, metadata !15} ; [ DW_TAG_member ] [gclist] [line 170, size 32, align 32, offset 320] [from ]
!244 = metadata !{i32 786445, metadata !39, metadata !38, metadata !"twups", i32 171, i64 32, i64 32, i64 352, i32 0, metadata !132} ; [ DW_TAG_member ] [twups] [line 171, size 32, align 32, offset 352] [from ]
!245 = metadata !{i32 786445, metadata !39, metadata !38, metadata !"errorJmp", i32 172, i64 32, i64 32, i64 384, i32 0, metadata !246} ; [ DW_TAG_member ] [errorJmp] [line 172, size 32, align 32, offset 384] [from ]
!246 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !247} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from lua_longjmp]
!247 = metadata !{i32 786451, metadata !39, null, metadata !"lua_longjmp", i32 33, i64 0, i64 0, i32 0, i32 4, null, null, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [lua_longjmp] [line 33, size 0, align 0, offset 0] [decl] [from ]
!248 = metadata !{i32 786445, metadata !39, metadata !38, metadata !"base_ci", i32 173, i64 288, i64 32, i64 416, i32 0, metadata !187} ; [ DW_TAG_member ] [base_ci] [line 173, size 288, align 32, offset 416] [from CallInfo]
!249 = metadata !{i32 786445, metadata !39, metadata !38, metadata !"hook", i32 174, i64 32, i64 32, i64 704, i32 0, metadata !250} ; [ DW_TAG_member ] [hook] [line 174, size 32, align 32, offset 704] [from ]
!250 = metadata !{i32 786485, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !251} ; [ DW_TAG_volatile_type ] [line 0, size 0, align 0, offset 0] [from lua_Hook]
!251 = metadata !{i32 786454, metadata !31, null, metadata !"lua_Hook", i32 421, i64 0, i64 0, i64 0, i32 0, metadata !252} ; [ DW_TAG_typedef ] [lua_Hook] [line 421, size 0, align 0, offset 0] [from ]
!252 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !253} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!253 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !254, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!254 = metadata !{null, metadata !36, metadata !255}
!255 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !256} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from lua_Debug]
!256 = metadata !{i32 786454, metadata !31, null, metadata !"lua_Debug", i32 417, i64 0, i64 0, i64 0, i32 0, metadata !257} ; [ DW_TAG_typedef ] [lua_Debug] [line 417, size 0, align 0, offset 0] [from lua_Debug]
!257 = metadata !{i32 786451, metadata !31, null, metadata !"lua_Debug", i32 441, i64 800, i64 32, i32 0, i32 0, null, metadata !258, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [lua_Debug] [line 441, size 800, align 32, offset 0] [def] [from ]
!258 = metadata !{metadata !259, metadata !260, metadata !264, metadata !265, metadata !266, metadata !267, metadata !268, metadata !269, metadata !270, metadata !271, metadata !272, metadata !273, metadata !274, metadata !278}
!259 = metadata !{i32 786445, metadata !31, metadata !257, metadata !"event", i32 442, i64 32, i64 32, i64 0, i32 0, metadata !35} ; [ DW_TAG_member ] [event] [line 442, size 32, align 32, offset 0] [from int]
!260 = metadata !{i32 786445, metadata !31, metadata !257, metadata !"name", i32 443, i64 32, i64 32, i64 32, i32 0, metadata !261} ; [ DW_TAG_member ] [name] [line 443, size 32, align 32, offset 32] [from ]
!261 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !262} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!262 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !263} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!263 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!264 = metadata !{i32 786445, metadata !31, metadata !257, metadata !"namewhat", i32 444, i64 32, i64 32, i64 64, i32 0, metadata !261} ; [ DW_TAG_member ] [namewhat] [line 444, size 32, align 32, offset 64] [from ]
!265 = metadata !{i32 786445, metadata !31, metadata !257, metadata !"what", i32 445, i64 32, i64 32, i64 96, i32 0, metadata !261} ; [ DW_TAG_member ] [what] [line 445, size 32, align 32, offset 96] [from ]
!266 = metadata !{i32 786445, metadata !31, metadata !257, metadata !"source", i32 446, i64 32, i64 32, i64 128, i32 0, metadata !261} ; [ DW_TAG_member ] [source] [line 446, size 32, align 32, offset 128] [from ]
!267 = metadata !{i32 786445, metadata !31, metadata !257, metadata !"currentline", i32 447, i64 32, i64 32, i64 160, i32 0, metadata !35} ; [ DW_TAG_member ] [currentline] [line 447, size 32, align 32, offset 160] [from int]
!268 = metadata !{i32 786445, metadata !31, metadata !257, metadata !"linedefined", i32 448, i64 32, i64 32, i64 192, i32 0, metadata !35} ; [ DW_TAG_member ] [linedefined] [line 448, size 32, align 32, offset 192] [from int]
!269 = metadata !{i32 786445, metadata !31, metadata !257, metadata !"lastlinedefined", i32 449, i64 32, i64 32, i64 224, i32 0, metadata !35} ; [ DW_TAG_member ] [lastlinedefined] [line 449, size 32, align 32, offset 224] [from int]
!270 = metadata !{i32 786445, metadata !31, metadata !257, metadata !"nups", i32 450, i64 8, i64 8, i64 256, i32 0, metadata !23} ; [ DW_TAG_member ] [nups] [line 450, size 8, align 8, offset 256] [from unsigned char]
!271 = metadata !{i32 786445, metadata !31, metadata !257, metadata !"nparams", i32 451, i64 8, i64 8, i64 264, i32 0, metadata !23} ; [ DW_TAG_member ] [nparams] [line 451, size 8, align 8, offset 264] [from unsigned char]
!272 = metadata !{i32 786445, metadata !31, metadata !257, metadata !"isvararg", i32 452, i64 8, i64 8, i64 272, i32 0, metadata !263} ; [ DW_TAG_member ] [isvararg] [line 452, size 8, align 8, offset 272] [from char]
!273 = metadata !{i32 786445, metadata !31, metadata !257, metadata !"istailcall", i32 453, i64 8, i64 8, i64 280, i32 0, metadata !263} ; [ DW_TAG_member ] [istailcall] [line 453, size 8, align 8, offset 280] [from char]
!274 = metadata !{i32 786445, metadata !31, metadata !257, metadata !"short_src", i32 454, i64 480, i64 8, i64 288, i32 0, metadata !275} ; [ DW_TAG_member ] [short_src] [line 454, size 480, align 8, offset 288] [from ]
!275 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 480, i64 8, i32 0, i32 0, metadata !263, metadata !276, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 480, align 8, offset 0] [from char]
!276 = metadata !{metadata !277}
!277 = metadata !{i32 786465, i64 0, i64 60}      ; [ DW_TAG_subrange_type ] [0, 59]
!278 = metadata !{i32 786445, metadata !31, metadata !257, metadata !"i_ci", i32 456, i64 32, i64 32, i64 768, i32 0, metadata !193} ; [ DW_TAG_member ] [i_ci] [line 456, size 32, align 32, offset 768] [from ]
!279 = metadata !{i32 786445, metadata !39, metadata !38, metadata !"errfunc", i32 175, i64 32, i64 32, i64 736, i32 0, metadata !85} ; [ DW_TAG_member ] [errfunc] [line 175, size 32, align 32, offset 736] [from ptrdiff_t]
!280 = metadata !{i32 786445, metadata !39, metadata !38, metadata !"stacksize", i32 176, i64 32, i64 32, i64 768, i32 0, metadata !35} ; [ DW_TAG_member ] [stacksize] [line 176, size 32, align 32, offset 768] [from int]
!281 = metadata !{i32 786445, metadata !39, metadata !38, metadata !"basehookcount", i32 177, i64 32, i64 32, i64 800, i32 0, metadata !35} ; [ DW_TAG_member ] [basehookcount] [line 177, size 32, align 32, offset 800] [from int]
!282 = metadata !{i32 786445, metadata !39, metadata !38, metadata !"hookcount", i32 178, i64 32, i64 32, i64 832, i32 0, metadata !35} ; [ DW_TAG_member ] [hookcount] [line 178, size 32, align 32, offset 832] [from int]
!283 = metadata !{i32 786445, metadata !39, metadata !38, metadata !"nny", i32 179, i64 16, i64 16, i64 864, i32 0, metadata !45} ; [ DW_TAG_member ] [nny] [line 179, size 16, align 16, offset 864] [from unsigned short]
!284 = metadata !{i32 786445, metadata !39, metadata !38, metadata !"nCcalls", i32 180, i64 16, i64 16, i64 880, i32 0, metadata !45} ; [ DW_TAG_member ] [nCcalls] [line 180, size 16, align 16, offset 880] [from unsigned short]
!285 = metadata !{i32 786445, metadata !39, metadata !38, metadata !"hookmask", i32 181, i64 32, i64 32, i64 896, i32 0, metadata !286} ; [ DW_TAG_member ] [hookmask] [line 181, size 32, align 32, offset 896] [from sig_atomic_t]
!286 = metadata !{i32 786454, metadata !287, null, metadata !"sig_atomic_t", i32 40, i64 0, i64 0, i64 0, i32 0, metadata !288} ; [ DW_TAG_typedef ] [sig_atomic_t] [line 40, size 0, align 0, offset 0] [from __sig_atomic_t]
!287 = metadata !{metadata !"D:/Xilinx/SDx/2016.3/SDK/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include\5Csignal.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!288 = metadata !{i32 786454, metadata !289, null, metadata !"__sig_atomic_t", i32 22, i64 0, i64 0, i64 0, i32 0, metadata !35} ; [ DW_TAG_typedef ] [__sig_atomic_t] [line 22, size 0, align 0, offset 0] [from int]
!289 = metadata !{metadata !"D:/Xilinx/SDx/2016.3/SDK/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include\5Cbits/sigset.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!290 = metadata !{i32 786445, metadata !39, metadata !38, metadata !"allowhook", i32 182, i64 8, i64 8, i64 928, i32 0, metadata !21} ; [ DW_TAG_member ] [allowhook] [line 182, size 8, align 8, offset 928] [from lu_byte]
!291 = metadata !{i32 786445, metadata !11, metadata !12, metadata !"upvalue", i32 449, i64 128, i64 64, i64 128, i32 0, metadata !292} ; [ DW_TAG_member ] [upvalue] [line 449, size 128, align 64, offset 128] [from ]
!292 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 128, i64 64, i32 0, i32 0, metadata !50, metadata !293, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 128, align 64, offset 0] [from TValue]
!293 = metadata !{metadata !294}
!294 = metadata !{i32 786465, i64 0, i64 1}       ; [ DW_TAG_subrange_type ] [0, 0]
!295 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"luaF_newLclosure", metadata !"luaF_newLclosure", metadata !"", i32 33, metadata !296, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, %struct.LClosure* (%struct.lua_State*, i32)* @luaF_newLclosure, null, null, metadata !2, i32 33} ; [ DW_TAG_subprogram ] [line 33] [def] [luaF_newLclosure]
!296 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !297, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!297 = metadata !{metadata !298, metadata !36, metadata !35}
!298 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !299} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from LClosure]
!299 = metadata !{i32 786454, metadata !11, null, metadata !"LClosure", i32 457, i64 0, i64 0, i64 0, i32 0, metadata !300} ; [ DW_TAG_typedef ] [LClosure] [line 457, size 0, align 0, offset 0] [from LClosure]
!300 = metadata !{i32 786451, metadata !11, null, metadata !"LClosure", i32 453, i64 160, i64 32, i32 0, i32 0, null, metadata !301, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [LClosure] [line 453, size 160, align 32, offset 0] [def] [from ]
!301 = metadata !{metadata !302, metadata !303, metadata !304, metadata !305, metadata !306, metadata !307, metadata !352}
!302 = metadata !{i32 786445, metadata !11, metadata !300, metadata !"next", i32 454, i64 32, i64 32, i64 0, i32 0, metadata !15} ; [ DW_TAG_member ] [next] [line 454, size 32, align 32, offset 0] [from ]
!303 = metadata !{i32 786445, metadata !11, metadata !300, metadata !"tt", i32 454, i64 8, i64 8, i64 32, i32 0, metadata !21} ; [ DW_TAG_member ] [tt] [line 454, size 8, align 8, offset 32] [from lu_byte]
!304 = metadata !{i32 786445, metadata !11, metadata !300, metadata !"marked", i32 454, i64 8, i64 8, i64 40, i32 0, metadata !21} ; [ DW_TAG_member ] [marked] [line 454, size 8, align 8, offset 40] [from lu_byte]
!305 = metadata !{i32 786445, metadata !11, metadata !300, metadata !"nupvalues", i32 454, i64 8, i64 8, i64 48, i32 0, metadata !21} ; [ DW_TAG_member ] [nupvalues] [line 454, size 8, align 8, offset 48] [from lu_byte]
!306 = metadata !{i32 786445, metadata !11, metadata !300, metadata !"gclist", i32 454, i64 32, i64 32, i64 64, i32 0, metadata !15} ; [ DW_TAG_member ] [gclist] [line 454, size 32, align 32, offset 64] [from ]
!307 = metadata !{i32 786445, metadata !11, metadata !300, metadata !"p", i32 455, i64 32, i64 32, i64 96, i32 0, metadata !308} ; [ DW_TAG_member ] [p] [line 455, size 32, align 32, offset 96] [from ]
!308 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !309} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from Proto]
!309 = metadata !{i32 786451, metadata !11, null, metadata !"Proto", i32 407, i64 640, i64 32, i32 0, i32 0, null, metadata !310, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [Proto] [line 407, size 640, align 32, offset 0] [def] [from ]
!310 = metadata !{metadata !311, metadata !312, metadata !313, metadata !314, metadata !315, metadata !316, metadata !317, metadata !318, metadata !319, metadata !320, metadata !321, metadata !322, metadata !323, metadata !324, metadata !325, metadata !326, metadata !328, metadata !330, metadata !332, metadata !340, metadata !348, metadata !350, metadata !351}
!311 = metadata !{i32 786445, metadata !11, metadata !309, metadata !"next", i32 408, i64 32, i64 32, i64 0, i32 0, metadata !15} ; [ DW_TAG_member ] [next] [line 408, size 32, align 32, offset 0] [from ]
!312 = metadata !{i32 786445, metadata !11, metadata !309, metadata !"tt", i32 408, i64 8, i64 8, i64 32, i32 0, metadata !21} ; [ DW_TAG_member ] [tt] [line 408, size 8, align 8, offset 32] [from lu_byte]
!313 = metadata !{i32 786445, metadata !11, metadata !309, metadata !"marked", i32 408, i64 8, i64 8, i64 40, i32 0, metadata !21} ; [ DW_TAG_member ] [marked] [line 408, size 8, align 8, offset 40] [from lu_byte]
!314 = metadata !{i32 786445, metadata !11, metadata !309, metadata !"numparams", i32 409, i64 8, i64 8, i64 48, i32 0, metadata !21} ; [ DW_TAG_member ] [numparams] [line 409, size 8, align 8, offset 48] [from lu_byte]
!315 = metadata !{i32 786445, metadata !11, metadata !309, metadata !"is_vararg", i32 410, i64 8, i64 8, i64 56, i32 0, metadata !21} ; [ DW_TAG_member ] [is_vararg] [line 410, size 8, align 8, offset 56] [from lu_byte]
!316 = metadata !{i32 786445, metadata !11, metadata !309, metadata !"maxstacksize", i32 411, i64 8, i64 8, i64 64, i32 0, metadata !21} ; [ DW_TAG_member ] [maxstacksize] [line 411, size 8, align 8, offset 64] [from lu_byte]
!317 = metadata !{i32 786445, metadata !11, metadata !309, metadata !"sizeupvalues", i32 412, i64 32, i64 32, i64 96, i32 0, metadata !35} ; [ DW_TAG_member ] [sizeupvalues] [line 412, size 32, align 32, offset 96] [from int]
!318 = metadata !{i32 786445, metadata !11, metadata !309, metadata !"sizek", i32 413, i64 32, i64 32, i64 128, i32 0, metadata !35} ; [ DW_TAG_member ] [sizek] [line 413, size 32, align 32, offset 128] [from int]
!319 = metadata !{i32 786445, metadata !11, metadata !309, metadata !"sizecode", i32 414, i64 32, i64 32, i64 160, i32 0, metadata !35} ; [ DW_TAG_member ] [sizecode] [line 414, size 32, align 32, offset 160] [from int]
!320 = metadata !{i32 786445, metadata !11, metadata !309, metadata !"sizelineinfo", i32 415, i64 32, i64 32, i64 192, i32 0, metadata !35} ; [ DW_TAG_member ] [sizelineinfo] [line 415, size 32, align 32, offset 192] [from int]
!321 = metadata !{i32 786445, metadata !11, metadata !309, metadata !"sizep", i32 416, i64 32, i64 32, i64 224, i32 0, metadata !35} ; [ DW_TAG_member ] [sizep] [line 416, size 32, align 32, offset 224] [from int]
!322 = metadata !{i32 786445, metadata !11, metadata !309, metadata !"sizelocvars", i32 417, i64 32, i64 32, i64 256, i32 0, metadata !35} ; [ DW_TAG_member ] [sizelocvars] [line 417, size 32, align 32, offset 256] [from int]
!323 = metadata !{i32 786445, metadata !11, metadata !309, metadata !"linedefined", i32 418, i64 32, i64 32, i64 288, i32 0, metadata !35} ; [ DW_TAG_member ] [linedefined] [line 418, size 32, align 32, offset 288] [from int]
!324 = metadata !{i32 786445, metadata !11, metadata !309, metadata !"lastlinedefined", i32 419, i64 32, i64 32, i64 320, i32 0, metadata !35} ; [ DW_TAG_member ] [lastlinedefined] [line 419, size 32, align 32, offset 320] [from int]
!325 = metadata !{i32 786445, metadata !11, metadata !309, metadata !"k", i32 420, i64 32, i64 32, i64 352, i32 0, metadata !49} ; [ DW_TAG_member ] [k] [line 420, size 32, align 32, offset 352] [from ]
!326 = metadata !{i32 786445, metadata !11, metadata !309, metadata !"code", i32 421, i64 32, i64 32, i64 384, i32 0, metadata !327} ; [ DW_TAG_member ] [code] [line 421, size 32, align 32, offset 384] [from ]
!327 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !205} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from Instruction]
!328 = metadata !{i32 786445, metadata !11, metadata !309, metadata !"p", i32 422, i64 32, i64 32, i64 416, i32 0, metadata !329} ; [ DW_TAG_member ] [p] [line 422, size 32, align 32, offset 416] [from ]
!329 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !308} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!330 = metadata !{i32 786445, metadata !11, metadata !309, metadata !"lineinfo", i32 423, i64 32, i64 32, i64 448, i32 0, metadata !331} ; [ DW_TAG_member ] [lineinfo] [line 423, size 32, align 32, offset 448] [from ]
!331 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !35} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from int]
!332 = metadata !{i32 786445, metadata !11, metadata !309, metadata !"locvars", i32 424, i64 32, i64 32, i64 480, i32 0, metadata !333} ; [ DW_TAG_member ] [locvars] [line 424, size 32, align 32, offset 480] [from ]
!333 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !334} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from LocVar]
!334 = metadata !{i32 786454, metadata !11, null, metadata !"LocVar", i32 401, i64 0, i64 0, i64 0, i32 0, metadata !335} ; [ DW_TAG_typedef ] [LocVar] [line 401, size 0, align 0, offset 0] [from LocVar]
!335 = metadata !{i32 786451, metadata !11, null, metadata !"LocVar", i32 397, i64 96, i64 32, i32 0, i32 0, null, metadata !336, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [LocVar] [line 397, size 96, align 32, offset 0] [def] [from ]
!336 = metadata !{metadata !337, metadata !338, metadata !339}
!337 = metadata !{i32 786445, metadata !11, metadata !335, metadata !"varname", i32 398, i64 32, i64 32, i64 0, i32 0, metadata !96} ; [ DW_TAG_member ] [varname] [line 398, size 32, align 32, offset 0] [from ]
!338 = metadata !{i32 786445, metadata !11, metadata !335, metadata !"startpc", i32 399, i64 32, i64 32, i64 32, i32 0, metadata !35} ; [ DW_TAG_member ] [startpc] [line 399, size 32, align 32, offset 32] [from int]
!339 = metadata !{i32 786445, metadata !11, metadata !335, metadata !"endpc", i32 400, i64 32, i64 32, i64 64, i32 0, metadata !35} ; [ DW_TAG_member ] [endpc] [line 400, size 32, align 32, offset 64] [from int]
!340 = metadata !{i32 786445, metadata !11, metadata !309, metadata !"upvalues", i32 425, i64 32, i64 32, i64 512, i32 0, metadata !341} ; [ DW_TAG_member ] [upvalues] [line 425, size 32, align 32, offset 512] [from ]
!341 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !342} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from Upvaldesc]
!342 = metadata !{i32 786454, metadata !11, null, metadata !"Upvaldesc", i32 390, i64 0, i64 0, i64 0, i32 0, metadata !343} ; [ DW_TAG_typedef ] [Upvaldesc] [line 390, size 0, align 0, offset 0] [from Upvaldesc]
!343 = metadata !{i32 786451, metadata !11, null, metadata !"Upvaldesc", i32 386, i64 64, i64 32, i32 0, i32 0, null, metadata !344, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [Upvaldesc] [line 386, size 64, align 32, offset 0] [def] [from ]
!344 = metadata !{metadata !345, metadata !346, metadata !347}
!345 = metadata !{i32 786445, metadata !11, metadata !343, metadata !"name", i32 387, i64 32, i64 32, i64 0, i32 0, metadata !96} ; [ DW_TAG_member ] [name] [line 387, size 32, align 32, offset 0] [from ]
!346 = metadata !{i32 786445, metadata !11, metadata !343, metadata !"instack", i32 388, i64 8, i64 8, i64 32, i32 0, metadata !21} ; [ DW_TAG_member ] [instack] [line 388, size 8, align 8, offset 32] [from lu_byte]
!347 = metadata !{i32 786445, metadata !11, metadata !343, metadata !"idx", i32 389, i64 8, i64 8, i64 40, i32 0, metadata !21} ; [ DW_TAG_member ] [idx] [line 389, size 8, align 8, offset 40] [from lu_byte]
!348 = metadata !{i32 786445, metadata !11, metadata !309, metadata !"cache", i32 426, i64 32, i64 32, i64 544, i32 0, metadata !349} ; [ DW_TAG_member ] [cache] [line 426, size 32, align 32, offset 544] [from ]
!349 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !300} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from LClosure]
!350 = metadata !{i32 786445, metadata !11, metadata !309, metadata !"source", i32 427, i64 32, i64 32, i64 576, i32 0, metadata !96} ; [ DW_TAG_member ] [source] [line 427, size 32, align 32, offset 576] [from ]
!351 = metadata !{i32 786445, metadata !11, metadata !309, metadata !"gclist", i32 428, i64 32, i64 32, i64 608, i32 0, metadata !15} ; [ DW_TAG_member ] [gclist] [line 428, size 32, align 32, offset 608] [from ]
!352 = metadata !{i32 786445, metadata !11, metadata !300, metadata !"upvals", i32 456, i64 32, i64 32, i64 128, i32 0, metadata !353} ; [ DW_TAG_member ] [upvals] [line 456, size 32, align 32, offset 128] [from ]
!353 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 32, i64 32, i32 0, i32 0, metadata !227, metadata !293, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 32, align 32, offset 0] [from ]
!354 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"luaF_initupvals", metadata !"luaF_initupvals", metadata !"", i32 45, metadata !355, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.lua_State*, %struct.LClosure*)* @luaF_initupvals, null, null, metadata !2, i32 45} ; [ DW_TAG_subprogram ] [line 45] [def] [luaF_initupvals]
!355 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !356, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!356 = metadata !{null, metadata !36, metadata !298}
!357 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"luaF_findupval", metadata !"luaF_findupval", metadata !"", i32 57, metadata !358, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, %struct.UpVal* (%struct.lua_State*, %struct.lua_TValue*)* @luaF_findupval, null, null, metadata !2, i32 57} ; [ DW_TAG_subprogram ] [line 57] [def] [luaF_findupval]
!358 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !359, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!359 = metadata !{metadata !227, metadata !36, metadata !48}
!360 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"luaF_close", metadata !"luaF_close", metadata !"", i32 83, metadata !361, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.lua_State*, %struct.lua_TValue*)* @luaF_close, null, null, metadata !2, i32 83} ; [ DW_TAG_subprogram ] [line 83] [def] [luaF_close]
!361 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !362, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!362 = metadata !{null, metadata !36, metadata !48}
!363 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"luaF_newproto", metadata !"luaF_newproto", metadata !"", i32 99, metadata !364, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, %struct.Proto* (%struct.lua_State*)* @luaF_newproto, null, null, metadata !2, i32 99} ; [ DW_TAG_subprogram ] [line 99] [def] [luaF_newproto]
!364 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !365, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!365 = metadata !{metadata !366, metadata !36}
!366 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !367} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from Proto]
!367 = metadata !{i32 786454, metadata !11, null, metadata !"Proto", i32 429, i64 0, i64 0, i64 0, i32 0, metadata !309} ; [ DW_TAG_typedef ] [Proto] [line 429, size 0, align 0, offset 0] [from Proto]
!368 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"luaF_freeproto", metadata !"luaF_freeproto", metadata !"", i32 125, metadata !369, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.lua_State*, %struct.Proto*)* @luaF_freeproto, null, null, metadata !2, i32 125} ; [ DW_TAG_subprogram ] [line 125] [def] [luaF_freeproto]
!369 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !370, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!370 = metadata !{null, metadata !36, metadata !366}
!371 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"luaF_getlocalname", metadata !"luaF_getlocalname", metadata !"", i32 140, metadata !372, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (%struct.Proto*, i32, i32)* @luaF_getlocalname, null, null, metadata !2, i32 140} ; [ DW_TAG_subprogram ] [line 140] [def] [luaF_getlocalname]
!372 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !373, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!373 = metadata !{metadata !261, metadata !374, metadata !35, metadata !35}
!374 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !375} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!375 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !367} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from Proto]
!376 = metadata !{%struct.CClosure* (%struct.lua_State*, i32)* @luaF_newCclosure}
!377 = metadata !{metadata !"luaF_newCclosure"}
!378 = metadata !{%struct.GCObject* (%struct.lua_State*, i32, i32)* @luaC_newobj}
!379 = metadata !{metadata !"luaC_newobj"}
!380 = metadata !{%struct.LClosure* (%struct.lua_State*, i32)* @luaF_newLclosure}
!381 = metadata !{metadata !"luaF_newLclosure"}
!382 = metadata !{void (%struct.lua_State*, %struct.LClosure*)* @luaF_initupvals}
!383 = metadata !{metadata !"luaF_initupvals"}
!384 = metadata !{i8* (%struct.lua_State*, i8*, i32, i32)* @luaM_realloc_}
!385 = metadata !{metadata !"luaM_realloc_"}
!386 = metadata !{%struct.UpVal* (%struct.lua_State*, %struct.lua_TValue*)* @luaF_findupval}
!387 = metadata !{metadata !"luaF_findupval"}
!388 = metadata !{void (%struct.lua_State*, %struct.lua_TValue*)* @luaF_close}
!389 = metadata !{metadata !"luaF_close"}
!390 = metadata !{void (%struct.lua_State*, %struct.UpVal*)* @luaC_upvalbarrier_}
!391 = metadata !{metadata !"luaC_upvalbarrier_"}
!392 = metadata !{%struct.Proto* (%struct.lua_State*)* @luaF_newproto}
!393 = metadata !{metadata !"luaF_newproto"}
!394 = metadata !{void (%struct.lua_State*, %struct.Proto*)* @luaF_freeproto}
!395 = metadata !{metadata !"luaF_freeproto"}
!396 = metadata !{i8* (%struct.Proto*, i32, i32)* @luaF_getlocalname}
!397 = metadata !{metadata !"luaF_getlocalname"}
!398 = metadata !{metadata !"CClosure .lua_State *.1.int.0"}
!399 = metadata !{metadata !"GCObject .lua_State *.1.int.0.size_t.0"}
!400 = metadata !{metadata !"LClosure .lua_State *.1.int.0"}
!401 = metadata !{metadata !"void.lua_State *.1.LClosure *.1"}
!402 = metadata !{metadata !"void .lua_State *.1.void *.1.size_t.0.size_t.0"}
!403 = metadata !{metadata !"UpVal .lua_State *.1.StkId.1"}
!404 = metadata !{metadata !"void.lua_State *.1.StkId.1"}
!405 = metadata !{metadata !"void.lua_State *.1.UpVal *.1"}
!406 = metadata !{metadata !"Proto .lua_State *.1"}
!407 = metadata !{metadata !"void.lua_State *.1.Proto *.1"}
!408 = metadata !{metadata !"const char .const Proto *.1.int.0.int.0"}
!409 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lfunc.h"}
!410 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lgc.h"}
!411 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lmem.h"}
!412 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!413 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!414 = metadata !{i32 1, metadata !"wchar_size", i32 4}
!415 = metadata !{i32 1, metadata !"min_enum_size", i32 4}
!416 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
!417 = metadata !{i32 786689, metadata !4, metadata !"L", metadata !6, i32 16777241, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 25]
!418 = metadata !{i32 25, i32 40, metadata !4, null}
!419 = metadata !{i32 786689, metadata !4, metadata !"n", metadata !6, i32 33554457, metadata !35, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 25]
!420 = metadata !{i32 25, i32 47, metadata !4, null}
!421 = metadata !{i32 786688, metadata !4, metadata !"o", metadata !6, i32 26, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [o] [line 26]
!422 = metadata !{i32 26, i32 13, metadata !4, null}
!423 = metadata !{i32 26, i32 17, metadata !4, null}
!424 = metadata !{i32 786688, metadata !4, metadata !"c", metadata !6, i32 27, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c] [line 27]
!425 = metadata !{i32 27, i32 13, metadata !4, null}
!426 = metadata !{i32 27, i32 3, metadata !4, null}
!427 = metadata !{i32 28, i32 3, metadata !4, null}
!428 = metadata !{i32 29, i32 3, metadata !4, null}
!429 = metadata !{i32 786689, metadata !295, metadata !"L", metadata !6, i32 16777249, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 33]
!430 = metadata !{i32 33, i32 40, metadata !295, null}
!431 = metadata !{i32 786689, metadata !295, metadata !"n", metadata !6, i32 33554465, metadata !35, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 33]
!432 = metadata !{i32 33, i32 47, metadata !295, null}
!433 = metadata !{i32 786688, metadata !295, metadata !"o", metadata !6, i32 34, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [o] [line 34]
!434 = metadata !{i32 34, i32 13, metadata !295, null}
!435 = metadata !{i32 34, i32 17, metadata !295, null}
!436 = metadata !{i32 786688, metadata !295, metadata !"c", metadata !6, i32 35, metadata !298, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c] [line 35]
!437 = metadata !{i32 35, i32 13, metadata !295, null}
!438 = metadata !{i32 35, i32 3, metadata !295, null}
!439 = metadata !{i32 36, i32 3, metadata !295, null}
!440 = metadata !{i32 37, i32 3, metadata !295, null}
!441 = metadata !{i32 38, i32 3, metadata !295, null}
!442 = metadata !{i32 38, i32 3, metadata !443, null}
!443 = metadata !{i32 786443, metadata !5, metadata !444, i32 38, i32 3, i32 3, i32 17} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lfunc.c]
!444 = metadata !{i32 786443, metadata !5, metadata !295, i32 38, i32 3, i32 1, i32 15} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lfunc.c]
!445 = metadata !{i32 38, i32 15, metadata !446, null}
!446 = metadata !{i32 786443, metadata !5, metadata !295, i32 38, i32 15, i32 2, i32 16} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lfunc.c]
!447 = metadata !{i32 39, i32 3, metadata !295, null}
!448 = metadata !{i32 786689, metadata !354, metadata !"L", metadata !6, i32 16777261, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 45]
!449 = metadata !{i32 45, i32 34, metadata !354, null}
!450 = metadata !{i32 786689, metadata !354, metadata !"cl", metadata !6, i32 33554477, metadata !298, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cl] [line 45]
!451 = metadata !{i32 45, i32 47, metadata !354, null}
!452 = metadata !{i32 786688, metadata !354, metadata !"i", metadata !6, i32 46, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 46]
!453 = metadata !{i32 46, i32 7, metadata !354, null}
!454 = metadata !{i32 47, i32 8, metadata !455, null}
!455 = metadata !{i32 786443, metadata !5, metadata !354, i32 47, i32 3, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lfunc.c]
!456 = metadata !{i32 47, i32 8, metadata !457, null}
!457 = metadata !{i32 786443, metadata !5, metadata !458, i32 47, i32 8, i32 2, i32 19} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lfunc.c]
!458 = metadata !{i32 786443, metadata !5, metadata !455, i32 47, i32 8, i32 1, i32 18} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lfunc.c]
!459 = metadata !{i32 786688, metadata !460, metadata !"uv", metadata !6, i32 48, metadata !227, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [uv] [line 48]
!460 = metadata !{i32 786443, metadata !5, metadata !455, i32 47, i32 39, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lfunc.c]
!461 = metadata !{i32 48, i32 12, metadata !460, null}
!462 = metadata !{i32 48, i32 17, metadata !460, null}
!463 = metadata !{i32 49, i32 5, metadata !460, null}
!464 = metadata !{i32 50, i32 5, metadata !460, null}
!465 = metadata !{i32 51, i32 5, metadata !460, null}
!466 = metadata !{i32 52, i32 5, metadata !460, null}
!467 = metadata !{i32 53, i32 3, metadata !460, null}
!468 = metadata !{i32 47, i32 34, metadata !455, null}
!469 = metadata !{i32 54, i32 1, metadata !354, null}
!470 = metadata !{i32 786689, metadata !357, metadata !"L", metadata !6, i32 16777273, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 57]
!471 = metadata !{i32 57, i32 35, metadata !357, null}
!472 = metadata !{i32 786689, metadata !357, metadata !"level", metadata !6, i32 33554489, metadata !48, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [level] [line 57]
!473 = metadata !{i32 57, i32 44, metadata !357, null}
!474 = metadata !{i32 786688, metadata !357, metadata !"pp", metadata !6, i32 58, metadata !475, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pp] [line 58]
!475 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !227} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!476 = metadata !{i32 58, i32 11, metadata !357, null} ; [ DW_TAG_imported_module ]
!477 = metadata !{i32 58, i32 3, metadata !357, null} ; [ DW_TAG_imported_module ]
!478 = metadata !{i32 786688, metadata !357, metadata !"p", metadata !6, i32 59, metadata !227, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 59]
!479 = metadata !{i32 59, i32 10, metadata !357, null}
!480 = metadata !{i32 786688, metadata !357, metadata !"uv", metadata !6, i32 60, metadata !227, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [uv] [line 60]
!481 = metadata !{i32 60, i32 10, metadata !357, null}
!482 = metadata !{i32 62, i32 3, metadata !357, null}
!483 = metadata !{i32 62, i32 3, metadata !484, null}
!484 = metadata !{i32 786443, metadata !5, metadata !357, i32 62, i32 3, i32 1, i32 20} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lfunc.c]
!485 = metadata !{i32 62, i32 3, metadata !486, null}
!486 = metadata !{i32 786443, metadata !5, metadata !357, i32 62, i32 3, i32 2, i32 21} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lfunc.c]
!487 = metadata !{i32 62, i32 3, metadata !488, null}
!488 = metadata !{i32 786443, metadata !5, metadata !357, i32 62, i32 3, i32 3, i32 22} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lfunc.c]
!489 = metadata !{i32 64, i32 9, metadata !490, null}
!490 = metadata !{i32 786443, metadata !5, metadata !491, i32 64, i32 9, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lfunc.c]
!491 = metadata !{i32 786443, metadata !5, metadata !357, i32 62, i32 48, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lfunc.c]
!492 = metadata !{i32 65, i32 7, metadata !490, null}
!493 = metadata !{i32 66, i32 5, metadata !491, null}
!494 = metadata !{i32 67, i32 3, metadata !491, null}
!495 = metadata !{i32 69, i32 8, metadata !357, null}
!496 = metadata !{i32 70, i32 3, metadata !357, null}
!497 = metadata !{i32 71, i32 3, metadata !357, null}
!498 = metadata !{i32 72, i32 3, metadata !357, null}
!499 = metadata !{i32 73, i32 3, metadata !357, null}
!500 = metadata !{i32 74, i32 3, metadata !357, null}
!501 = metadata !{i32 75, i32 7, metadata !502, null}
!502 = metadata !{i32 786443, metadata !5, metadata !357, i32 75, i32 7, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lfunc.c]
!503 = metadata !{i32 76, i32 5, metadata !504, null}
!504 = metadata !{i32 786443, metadata !5, metadata !502, i32 75, i32 22, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lfunc.c]
!505 = metadata !{i32 77, i32 5, metadata !504, null}
!506 = metadata !{i32 78, i32 3, metadata !504, null}
!507 = metadata !{i32 79, i32 3, metadata !357, null}
!508 = metadata !{i32 80, i32 1, metadata !357, null}
!509 = metadata !{i32 786689, metadata !360, metadata !"L", metadata !6, i32 16777299, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 83]
!510 = metadata !{i32 83, i32 29, metadata !360, null}
!511 = metadata !{i32 786689, metadata !360, metadata !"level", metadata !6, i32 33554515, metadata !48, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [level] [line 83]
!512 = metadata !{i32 83, i32 38, metadata !360, null}
!513 = metadata !{i32 786688, metadata !360, metadata !"uv", metadata !6, i32 84, metadata !227, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [uv] [line 84]
!514 = metadata !{i32 84, i32 10, metadata !360, null}
!515 = metadata !{i32 85, i32 3, metadata !360, null}
!516 = metadata !{i32 85, i32 3, metadata !517, null}
!517 = metadata !{i32 786443, metadata !5, metadata !360, i32 85, i32 3, i32 1, i32 23} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lfunc.c]
!518 = metadata !{i32 85, i32 3, metadata !519, null}
!519 = metadata !{i32 786443, metadata !5, metadata !360, i32 85, i32 3, i32 2, i32 24} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lfunc.c]
!520 = metadata !{i32 85, i32 3, metadata !521, null}
!521 = metadata !{i32 786443, metadata !5, metadata !360, i32 85, i32 3, i32 3, i32 25} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lfunc.c]
!522 = metadata !{i32 87, i32 5, metadata !523, null}
!523 = metadata !{i32 786443, metadata !5, metadata !360, i32 85, i32 67, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lfunc.c]
!524 = metadata !{i32 88, i32 9, metadata !525, null}
!525 = metadata !{i32 786443, metadata !5, metadata !523, i32 88, i32 9, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lfunc.c]
!526 = metadata !{i32 89, i32 7, metadata !525, null}
!527 = metadata !{i32 786688, metadata !528, metadata !"io1", metadata !6, i32 91, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [io1] [line 91]
!528 = metadata !{i32 786443, metadata !5, metadata !529, i32 91, i32 7, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lfunc.c]
!529 = metadata !{i32 786443, metadata !5, metadata !525, i32 90, i32 10, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lfunc.c]
!530 = metadata !{i32 91, i32 7, metadata !528, null}
!531 = metadata !{i32 92, i32 7, metadata !529, null}
!532 = metadata !{i32 93, i32 7, metadata !529, null}
!533 = metadata !{i32 93, i32 7, metadata !534, null}
!534 = metadata !{i32 786443, metadata !5, metadata !529, i32 93, i32 7, i32 1, i32 26} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lfunc.c]
!535 = metadata !{i32 93, i32 7, metadata !536, null}
!536 = metadata !{i32 786443, metadata !5, metadata !529, i32 93, i32 7, i32 4, i32 29} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lfunc.c]
!537 = metadata !{i32 93, i32 7, metadata !538, null}
!538 = metadata !{i32 786443, metadata !5, metadata !539, i32 93, i32 7, i32 3, i32 28} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lfunc.c]
!539 = metadata !{i32 786443, metadata !5, metadata !529, i32 93, i32 7, i32 2, i32 27} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lfunc.c]
!540 = metadata !{i32 95, i32 3, metadata !523, null}
!541 = metadata !{i32 96, i32 1, metadata !360, null}
!542 = metadata !{i32 786689, metadata !363, metadata !"L", metadata !6, i32 16777315, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 99]
!543 = metadata !{i32 99, i32 34, metadata !363, null}
!544 = metadata !{i32 786688, metadata !363, metadata !"o", metadata !6, i32 100, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [o] [line 100]
!545 = metadata !{i32 100, i32 13, metadata !363, null}
!546 = metadata !{i32 100, i32 17, metadata !363, null}
!547 = metadata !{i32 786688, metadata !363, metadata !"f", metadata !6, i32 101, metadata !366, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [f] [line 101]
!548 = metadata !{i32 101, i32 10, metadata !363, null}
!549 = metadata !{i32 101, i32 3, metadata !363, null}
!550 = metadata !{i32 102, i32 3, metadata !363, null}
!551 = metadata !{i32 103, i32 3, metadata !363, null}
!552 = metadata !{i32 104, i32 3, metadata !363, null}
!553 = metadata !{i32 105, i32 3, metadata !363, null}
!554 = metadata !{i32 106, i32 3, metadata !363, null}
!555 = metadata !{i32 107, i32 3, metadata !363, null}
!556 = metadata !{i32 108, i32 3, metadata !363, null}
!557 = metadata !{i32 109, i32 3, metadata !363, null}
!558 = metadata !{i32 110, i32 3, metadata !363, null}
!559 = metadata !{i32 111, i32 3, metadata !363, null}
!560 = metadata !{i32 112, i32 3, metadata !363, null}
!561 = metadata !{i32 113, i32 3, metadata !363, null}
!562 = metadata !{i32 114, i32 3, metadata !363, null}
!563 = metadata !{i32 115, i32 3, metadata !363, null}
!564 = metadata !{i32 116, i32 3, metadata !363, null}
!565 = metadata !{i32 117, i32 3, metadata !363, null}
!566 = metadata !{i32 118, i32 3, metadata !363, null}
!567 = metadata !{i32 119, i32 3, metadata !363, null}
!568 = metadata !{i32 120, i32 3, metadata !363, null}
!569 = metadata !{i32 121, i32 3, metadata !363, null}
!570 = metadata !{i32 786689, metadata !368, metadata !"L", metadata !6, i32 16777341, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 125]
!571 = metadata !{i32 125, i32 33, metadata !368, null}
!572 = metadata !{i32 786689, metadata !368, metadata !"f", metadata !6, i32 33554557, metadata !366, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [f] [line 125]
!573 = metadata !{i32 125, i32 43, metadata !368, null}
!574 = metadata !{i32 126, i32 3, metadata !368, null}
!575 = metadata !{i32 127, i32 3, metadata !368, null}
!576 = metadata !{i32 128, i32 3, metadata !368, null}
!577 = metadata !{i32 129, i32 3, metadata !368, null}
!578 = metadata !{i32 130, i32 3, metadata !368, null}
!579 = metadata !{i32 131, i32 3, metadata !368, null}
!580 = metadata !{i32 132, i32 3, metadata !368, null}
!581 = metadata !{i32 133, i32 1, metadata !368, null}
!582 = metadata !{i32 786689, metadata !371, metadata !"f", metadata !6, i32 16777356, metadata !374, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [f] [line 140]
!583 = metadata !{i32 140, i32 45, metadata !371, null}
!584 = metadata !{i32 786689, metadata !371, metadata !"local_number", metadata !6, i32 33554572, metadata !35, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [local_number] [line 140]
!585 = metadata !{i32 140, i32 52, metadata !371, null}
!586 = metadata !{i32 786689, metadata !371, metadata !"pc", metadata !6, i32 50331788, metadata !35, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pc] [line 140]
!587 = metadata !{i32 140, i32 70, metadata !371, null}
!588 = metadata !{i32 786688, metadata !371, metadata !"i", metadata !6, i32 141, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 141]
!589 = metadata !{i32 141, i32 7, metadata !371, null}
!590 = metadata !{i32 142, i32 8, metadata !591, null}
!591 = metadata !{i32 786443, metadata !5, metadata !371, i32 142, i32 3, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lfunc.c]
!592 = metadata !{i32 142, i32 8, metadata !593, null}
!593 = metadata !{i32 786443, metadata !5, metadata !594, i32 142, i32 8, i32 4, i32 33} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lfunc.c]
!594 = metadata !{i32 786443, metadata !5, metadata !591, i32 142, i32 8, i32 1, i32 30} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lfunc.c]
!595 = metadata !{i32 142, i32 8, metadata !596, null}
!596 = metadata !{i32 786443, metadata !5, metadata !591, i32 142, i32 8, i32 2, i32 31} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lfunc.c]
!597 = metadata !{i32 142, i32 8, metadata !598, null}
!598 = metadata !{i32 786443, metadata !5, metadata !591, i32 142, i32 8, i32 3, i32 32} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lfunc.c]
!599 = metadata !{i32 143, i32 9, metadata !600, null}
!600 = metadata !{i32 786443, metadata !5, metadata !601, i32 143, i32 9, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lfunc.c]
!601 = metadata !{i32 786443, metadata !5, metadata !591, i32 142, i32 69, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lfunc.c]
!602 = metadata !{i32 144, i32 7, metadata !603, null}
!603 = metadata !{i32 786443, metadata !5, metadata !600, i32 143, i32 35, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lfunc.c]
!604 = metadata !{i32 145, i32 11, metadata !605, null}
!605 = metadata !{i32 786443, metadata !5, metadata !603, i32 145, i32 11, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lfunc.c]
!606 = metadata !{i32 146, i32 9, metadata !605, null}
!607 = metadata !{i32 147, i32 5, metadata !603, null}
!608 = metadata !{i32 148, i32 3, metadata !601, null}
!609 = metadata !{i32 142, i32 64, metadata !591, null}
!610 = metadata !{i32 149, i32 3, metadata !371, null}
!611 = metadata !{i32 150, i32 1, metadata !371, null}
