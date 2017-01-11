; ModuleID = 'C:/Users/DevolutionX/workspace/lua/src/lundump.c'
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-n32-S64"
target triple = "armv7--linux-gnueabihf"

%struct.LClosure = type { %struct.GCObject*, i8, i8, i8, %struct.GCObject*, %struct.Proto*, [1 x %struct.UpVal*] }
%struct.GCObject = type { %struct.GCObject*, i8, i8 }
%struct.Proto = type { %struct.GCObject*, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, %struct.lua_TValue*, i32*, %struct.Proto**, i32*, %struct.LocVar*, %struct.Upvaldesc*, %struct.LClosure*, %struct.TString*, %struct.GCObject* }
%struct.lua_TValue = type { %union.Value, i32 }
%union.Value = type { i64 }
%struct.LocVar = type { %struct.TString*, i32, i32 }
%struct.Upvaldesc = type { %struct.TString*, i8, i8 }
%struct.TString = type { %struct.GCObject*, i8, i8, i8, i8, i32, %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.UpVal = type { %struct.lua_TValue*, i32, %union.anon.2 }
%union.anon.2 = type { %struct.lua_TValue }
%struct.lua_State = type { %struct.GCObject*, i8, i8, i16, i8, %struct.lua_TValue*, %struct.global_State*, %struct.CallInfo*, i32*, %struct.lua_TValue*, %struct.lua_TValue*, %struct.UpVal*, %struct.GCObject*, %struct.lua_State*, %struct.lua_longjmp*, %struct.CallInfo, void (%struct.lua_State*, %struct.lua_Debug*)*, i32, i32, i32, i32, i16, i16, i32, i8 }
%struct.global_State = type { i8* (i8*, i8*, i32, i32)*, i8*, i32, i32, i32, i32, %struct.stringtable, %struct.lua_TValue, i32, i8, i8, i8, i8, %struct.GCObject*, %struct.GCObject**, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.lua_State*, i32, i32, i32, i32 (%struct.lua_State*)*, %struct.lua_State*, double*, %struct.TString*, [24 x %struct.TString*], [9 x %struct.Table*], [53 x [2 x %struct.TString*]] }
%struct.stringtable = type { %struct.TString**, i32, i32 }
%struct.Table = type { %struct.GCObject*, i8, i8, i8, i8, i32, %struct.lua_TValue*, %struct.Node*, %struct.Node*, %struct.Table*, %struct.GCObject* }
%struct.Node = type { %struct.lua_TValue, %union.TKey }
%union.TKey = type { %struct.anon.4 }
%struct.anon.4 = type { %union.Value, i32, i32 }
%struct.lua_longjmp = type opaque
%struct.CallInfo = type { %struct.lua_TValue*, %struct.lua_TValue*, %struct.CallInfo*, %struct.CallInfo*, %union.anon, i32, i16, i8 }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { i32 (%struct.lua_State*, i32, i32)*, i32, i32 }
%struct.lua_Debug = type { i32, i8*, i8*, i8*, i8*, i32, i32, i32, i8, i8, i8, i8, [60 x i8], %struct.CallInfo* }
%struct.Zio = type { i32, i8*, i8* (%struct.lua_State*, i8*, i32*)*, i8*, %struct.lua_State* }
%struct.LoadState = type { %struct.lua_State*, %struct.Zio*, i8* }
%union.GCUnion = type { %union.Closure, [88 x i8] }
%union.Closure = type { %struct.CClosure }
%struct.CClosure = type { %struct.GCObject*, i8, i8, i8, %struct.GCObject*, i32 (%struct.lua_State*)*, [1 x %struct.lua_TValue] }

@.str = private unnamed_addr constant [5 x i8] c"\1BLua\00", align 1
@.str1 = private unnamed_addr constant [14 x i8] c"binary string\00", align 1
@.str2 = private unnamed_addr constant [10 x i8] c"truncated\00", align 1
@.str3 = private unnamed_addr constant [25 x i8] c"%s: %s precompiled chunk\00", align 1
@.str4 = private unnamed_addr constant [6 x i8] c"not a\00", align 1
@.str5 = private unnamed_addr constant [2 x i8] c"5\00", align 1
@.str6 = private unnamed_addr constant [2 x i8] c"3\00", align 1
@.str7 = private unnamed_addr constant [20 x i8] c"version mismatch in\00", align 1
@.str8 = private unnamed_addr constant [19 x i8] c"format mismatch in\00", align 1
@.str9 = private unnamed_addr constant [7 x i8] c"\19\93\0D\0A\1A\0A\00", align 1
@.str10 = private unnamed_addr constant [10 x i8] c"corrupted\00", align 1
@.str11 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str12 = private unnamed_addr constant [7 x i8] c"size_t\00", align 1
@.str13 = private unnamed_addr constant [12 x i8] c"Instruction\00", align 1
@.str14 = private unnamed_addr constant [12 x i8] c"lua_Integer\00", align 1
@.str15 = private unnamed_addr constant [11 x i8] c"lua_Number\00", align 1
@.str16 = private unnamed_addr constant [23 x i8] c"endianness mismatch in\00", align 1
@.str17 = private unnamed_addr constant [25 x i8] c"float format mismatch in\00", align 1
@.str18 = private unnamed_addr constant [20 x i8] c"%s size mismatch in\00", align 1

; Function Attrs: nounwind
define hidden %struct.LClosure* @luaU_undump(%struct.lua_State* %L, %struct.Zio* %Z, i8* %name) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca %struct.Zio*, align 4
  %3 = alloca i8*, align 4
  %S = alloca %struct.LoadState, align 4
  %cl = alloca %struct.LClosure*, align 4
  %io = alloca %struct.lua_TValue*, align 4
  %x_ = alloca %struct.LClosure*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !499), !dbg !500
  store %struct.Zio* %Z, %struct.Zio** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.Zio** %2}, metadata !501), !dbg !502
  store i8* %name, i8** %3, align 4
  call void @llvm.dbg.declare(metadata !{i8** %3}, metadata !503), !dbg !504
  call void @llvm.dbg.declare(metadata !{%struct.LoadState* %S}, metadata !505), !dbg !506
  call void @llvm.dbg.declare(metadata !{%struct.LClosure** %cl}, metadata !507), !dbg !508
  %4 = load i8** %3, align 4, !dbg !509
  %5 = load i8* %4, align 1, !dbg !509
  %6 = zext i8 %5 to i32, !dbg !509
  %7 = icmp eq i32 %6, 64, !dbg !509
  br i1 %7, label %13, label %8, !dbg !509

; <label>:8                                       ; preds = %0
  %9 = load i8** %3, align 4, !dbg !511
  %10 = load i8* %9, align 1, !dbg !511
  %11 = zext i8 %10 to i32, !dbg !511
  %12 = icmp eq i32 %11, 61, !dbg !511
  br i1 %12, label %13, label %17, !dbg !511

; <label>:13                                      ; preds = %8, %0
  %14 = load i8** %3, align 4, !dbg !513
  %15 = getelementptr inbounds i8* %14, i32 1, !dbg !513
  %16 = getelementptr inbounds %struct.LoadState* %S, i32 0, i32 2, !dbg !513
  store i8* %15, i8** %16, align 4, !dbg !513
  br label %30, !dbg !513

; <label>:17                                      ; preds = %8
  %18 = load i8** %3, align 4, !dbg !514
  %19 = load i8* %18, align 1, !dbg !514
  %20 = zext i8 %19 to i32, !dbg !514
  %21 = load i8* getelementptr inbounds ([5 x i8]* @.str, i32 0, i32 0), align 1, !dbg !514
  %22 = zext i8 %21 to i32, !dbg !514
  %23 = icmp eq i32 %20, %22, !dbg !514
  br i1 %23, label %24, label %26, !dbg !514

; <label>:24                                      ; preds = %17
  %25 = getelementptr inbounds %struct.LoadState* %S, i32 0, i32 2, !dbg !516
  store i8* getelementptr inbounds ([14 x i8]* @.str1, i32 0, i32 0), i8** %25, align 4, !dbg !516
  br label %29, !dbg !516

; <label>:26                                      ; preds = %17
  %27 = load i8** %3, align 4, !dbg !517
  %28 = getelementptr inbounds %struct.LoadState* %S, i32 0, i32 2, !dbg !517
  store i8* %27, i8** %28, align 4, !dbg !517
  br label %29

; <label>:29                                      ; preds = %26, %24
  br label %30

; <label>:30                                      ; preds = %29, %13
  %31 = load %struct.lua_State** %1, align 4, !dbg !518
  %32 = getelementptr inbounds %struct.LoadState* %S, i32 0, i32 0, !dbg !518
  store %struct.lua_State* %31, %struct.lua_State** %32, align 4, !dbg !518
  %33 = load %struct.Zio** %2, align 4, !dbg !519
  %34 = getelementptr inbounds %struct.LoadState* %S, i32 0, i32 1, !dbg !519
  store %struct.Zio* %33, %struct.Zio** %34, align 4, !dbg !519
  call void @checkHeader(%struct.LoadState* %S), !dbg !520
  %35 = load %struct.lua_State** %1, align 4, !dbg !521
  %36 = call zeroext i8 @LoadByte(%struct.LoadState* %S), !dbg !522
  %37 = zext i8 %36 to i32, !dbg !522
  %38 = call %struct.LClosure* @luaF_newLclosure(%struct.lua_State* %35, i32 %37), !dbg !521
  store %struct.LClosure* %38, %struct.LClosure** %cl, align 4, !dbg !521
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %io}, metadata !523), !dbg !525
  %39 = load %struct.lua_State** %1, align 4, !dbg !525
  %40 = getelementptr inbounds %struct.lua_State* %39, i32 0, i32 5, !dbg !525
  %41 = load %struct.lua_TValue** %40, align 4, !dbg !525
  store %struct.lua_TValue* %41, %struct.lua_TValue** %io, align 4, !dbg !525
  call void @llvm.dbg.declare(metadata !{%struct.LClosure** %x_}, metadata !526), !dbg !525
  %42 = load %struct.LClosure** %cl, align 4, !dbg !525
  store %struct.LClosure* %42, %struct.LClosure** %x_, align 4, !dbg !525
  %43 = load %struct.LClosure** %x_, align 4, !dbg !525
  %44 = bitcast %struct.LClosure* %43 to %union.GCUnion*, !dbg !525
  %45 = bitcast %union.GCUnion* %44 to %struct.GCObject*, !dbg !525
  %46 = load %struct.lua_TValue** %io, align 4, !dbg !525
  %47 = getelementptr inbounds %struct.lua_TValue* %46, i32 0, i32 0, !dbg !525
  %48 = bitcast %union.Value* %47 to %struct.GCObject**, !dbg !525
  store %struct.GCObject* %45, %struct.GCObject** %48, align 4, !dbg !525
  %49 = load %struct.lua_TValue** %io, align 4, !dbg !525
  %50 = getelementptr inbounds %struct.lua_TValue* %49, i32 0, i32 1, !dbg !525
  store i32 70, i32* %50, align 4, !dbg !525
  %51 = load %struct.lua_State** %1, align 4, !dbg !527
  call void @luaD_inctop(%struct.lua_State* %51), !dbg !527
  %52 = load %struct.lua_State** %1, align 4, !dbg !528
  %53 = call %struct.Proto* @luaF_newproto(%struct.lua_State* %52), !dbg !528
  %54 = load %struct.LClosure** %cl, align 4, !dbg !528
  %55 = getelementptr inbounds %struct.LClosure* %54, i32 0, i32 5, !dbg !528
  store %struct.Proto* %53, %struct.Proto** %55, align 4, !dbg !528
  %56 = load %struct.LClosure** %cl, align 4, !dbg !529
  %57 = getelementptr inbounds %struct.LClosure* %56, i32 0, i32 5, !dbg !529
  %58 = load %struct.Proto** %57, align 4, !dbg !529
  call void @LoadFunction(%struct.LoadState* %S, %struct.Proto* %58, %struct.TString* null), !dbg !529
  %59 = load %struct.LClosure** %cl, align 4, !dbg !530
  ret %struct.LClosure* %59, !dbg !530
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind
define internal void @checkHeader(%struct.LoadState* %S) #0 {
  %1 = alloca %struct.LoadState*, align 4
  store %struct.LoadState* %S, %struct.LoadState** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.LoadState** %1}, metadata !531), !dbg !532
  %2 = load %struct.LoadState** %1, align 4, !dbg !533
  call void @checkliteral(%struct.LoadState* %2, i8* getelementptr inbounds ([5 x i8]* @.str, i32 0, i32 1), i8* getelementptr inbounds ([6 x i8]* @.str4, i32 0, i32 0)), !dbg !533
  %3 = load %struct.LoadState** %1, align 4, !dbg !534
  %4 = call zeroext i8 @LoadByte(%struct.LoadState* %3), !dbg !534
  %5 = zext i8 %4 to i32, !dbg !534
  %6 = load i8* getelementptr inbounds ([2 x i8]* @.str5, i32 0, i32 0), align 1, !dbg !534
  %7 = zext i8 %6 to i32, !dbg !534
  %8 = sub nsw i32 %7, 48, !dbg !534
  %9 = mul nsw i32 %8, 16, !dbg !534
  %10 = load i8* getelementptr inbounds ([2 x i8]* @.str6, i32 0, i32 0), align 1, !dbg !534
  %11 = zext i8 %10 to i32, !dbg !534
  %12 = sub nsw i32 %11, 48, !dbg !534
  %13 = add nsw i32 %9, %12, !dbg !534
  %14 = icmp ne i32 %5, %13, !dbg !534
  br i1 %14, label %15, label %17, !dbg !534

; <label>:15                                      ; preds = %0
  %16 = load %struct.LoadState** %1, align 4, !dbg !536
  call void @error(%struct.LoadState* %16, i8* getelementptr inbounds ([20 x i8]* @.str7, i32 0, i32 0)) #6, !dbg !536
  unreachable, !dbg !536

; <label>:17                                      ; preds = %0
  %18 = load %struct.LoadState** %1, align 4, !dbg !537
  %19 = call zeroext i8 @LoadByte(%struct.LoadState* %18), !dbg !537
  %20 = zext i8 %19 to i32, !dbg !537
  %21 = icmp ne i32 %20, 0, !dbg !537
  br i1 %21, label %22, label %24, !dbg !537

; <label>:22                                      ; preds = %17
  %23 = load %struct.LoadState** %1, align 4, !dbg !539
  call void @error(%struct.LoadState* %23, i8* getelementptr inbounds ([19 x i8]* @.str8, i32 0, i32 0)) #6, !dbg !539
  unreachable, !dbg !539

; <label>:24                                      ; preds = %17
  %25 = load %struct.LoadState** %1, align 4, !dbg !540
  call void @checkliteral(%struct.LoadState* %25, i8* getelementptr inbounds ([7 x i8]* @.str9, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @.str10, i32 0, i32 0)), !dbg !540
  %26 = load %struct.LoadState** %1, align 4, !dbg !541
  call void @fchecksize(%struct.LoadState* %26, i32 4, i8* getelementptr inbounds ([4 x i8]* @.str11, i32 0, i32 0)), !dbg !541
  %27 = load %struct.LoadState** %1, align 4, !dbg !542
  call void @fchecksize(%struct.LoadState* %27, i32 4, i8* getelementptr inbounds ([7 x i8]* @.str12, i32 0, i32 0)), !dbg !542
  %28 = load %struct.LoadState** %1, align 4, !dbg !543
  call void @fchecksize(%struct.LoadState* %28, i32 4, i8* getelementptr inbounds ([12 x i8]* @.str13, i32 0, i32 0)), !dbg !543
  %29 = load %struct.LoadState** %1, align 4, !dbg !544
  call void @fchecksize(%struct.LoadState* %29, i32 8, i8* getelementptr inbounds ([12 x i8]* @.str14, i32 0, i32 0)), !dbg !544
  %30 = load %struct.LoadState** %1, align 4, !dbg !545
  call void @fchecksize(%struct.LoadState* %30, i32 8, i8* getelementptr inbounds ([11 x i8]* @.str15, i32 0, i32 0)), !dbg !545
  %31 = load %struct.LoadState** %1, align 4, !dbg !546
  %32 = call i64 @LoadInteger(%struct.LoadState* %31), !dbg !546
  %33 = icmp ne i64 %32, 22136, !dbg !546
  br i1 %33, label %34, label %36, !dbg !546

; <label>:34                                      ; preds = %24
  %35 = load %struct.LoadState** %1, align 4, !dbg !548
  call void @error(%struct.LoadState* %35, i8* getelementptr inbounds ([23 x i8]* @.str16, i32 0, i32 0)) #6, !dbg !548
  unreachable, !dbg !548

; <label>:36                                      ; preds = %24
  %37 = load %struct.LoadState** %1, align 4, !dbg !549
  %38 = call double @LoadNumber(%struct.LoadState* %37), !dbg !549
  %39 = fcmp une double %38, 3.705000e+02, !dbg !549
  br i1 %39, label %40, label %42, !dbg !549

; <label>:40                                      ; preds = %36
  %41 = load %struct.LoadState** %1, align 4, !dbg !551
  call void @error(%struct.LoadState* %41, i8* getelementptr inbounds ([25 x i8]* @.str17, i32 0, i32 0)) #6, !dbg !551
  unreachable, !dbg !551

; <label>:42                                      ; preds = %36
  ret void, !dbg !552
}

declare hidden %struct.LClosure* @luaF_newLclosure(%struct.lua_State*, i32) #2

; Function Attrs: nounwind
define internal zeroext i8 @LoadByte(%struct.LoadState* %S) #0 {
  %1 = alloca %struct.LoadState*, align 4
  %x = alloca i8, align 1
  store %struct.LoadState* %S, %struct.LoadState** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.LoadState** %1}, metadata !553), !dbg !554
  call void @llvm.dbg.declare(metadata !{i8* %x}, metadata !555), !dbg !556
  %2 = load %struct.LoadState** %1, align 4, !dbg !557
  call void @LoadBlock(%struct.LoadState* %2, i8* %x, i32 1), !dbg !557
  %3 = load i8* %x, align 1, !dbg !558
  ret i8 %3, !dbg !558
}

declare hidden void @luaD_inctop(%struct.lua_State*) #2

declare hidden %struct.Proto* @luaF_newproto(%struct.lua_State*) #2

; Function Attrs: nounwind
define internal void @LoadFunction(%struct.LoadState* %S, %struct.Proto* %f, %struct.TString* %psource) #0 {
  %1 = alloca %struct.LoadState*, align 4
  %2 = alloca %struct.Proto*, align 4
  %3 = alloca %struct.TString*, align 4
  store %struct.LoadState* %S, %struct.LoadState** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.LoadState** %1}, metadata !559), !dbg !560
  store %struct.Proto* %f, %struct.Proto** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.Proto** %2}, metadata !561), !dbg !562
  store %struct.TString* %psource, %struct.TString** %3, align 4
  call void @llvm.dbg.declare(metadata !{%struct.TString** %3}, metadata !563), !dbg !564
  %4 = load %struct.LoadState** %1, align 4, !dbg !565
  %5 = call %struct.TString* @LoadString(%struct.LoadState* %4), !dbg !565
  %6 = load %struct.Proto** %2, align 4, !dbg !565
  %7 = getelementptr inbounds %struct.Proto* %6, i32 0, i32 21, !dbg !565
  store %struct.TString* %5, %struct.TString** %7, align 4, !dbg !565
  %8 = load %struct.Proto** %2, align 4, !dbg !566
  %9 = getelementptr inbounds %struct.Proto* %8, i32 0, i32 21, !dbg !566
  %10 = load %struct.TString** %9, align 4, !dbg !566
  %11 = icmp eq %struct.TString* %10, null, !dbg !566
  br i1 %11, label %12, label %16, !dbg !566

; <label>:12                                      ; preds = %0
  %13 = load %struct.TString** %3, align 4, !dbg !568
  %14 = load %struct.Proto** %2, align 4, !dbg !568
  %15 = getelementptr inbounds %struct.Proto* %14, i32 0, i32 21, !dbg !568
  store %struct.TString* %13, %struct.TString** %15, align 4, !dbg !568
  br label %16, !dbg !568

; <label>:16                                      ; preds = %12, %0
  %17 = load %struct.LoadState** %1, align 4, !dbg !569
  %18 = call i32 @LoadInt(%struct.LoadState* %17), !dbg !569
  %19 = load %struct.Proto** %2, align 4, !dbg !569
  %20 = getelementptr inbounds %struct.Proto* %19, i32 0, i32 12, !dbg !569
  store i32 %18, i32* %20, align 4, !dbg !569
  %21 = load %struct.LoadState** %1, align 4, !dbg !570
  %22 = call i32 @LoadInt(%struct.LoadState* %21), !dbg !570
  %23 = load %struct.Proto** %2, align 4, !dbg !570
  %24 = getelementptr inbounds %struct.Proto* %23, i32 0, i32 13, !dbg !570
  store i32 %22, i32* %24, align 4, !dbg !570
  %25 = load %struct.LoadState** %1, align 4, !dbg !571
  %26 = call zeroext i8 @LoadByte(%struct.LoadState* %25), !dbg !571
  %27 = load %struct.Proto** %2, align 4, !dbg !571
  %28 = getelementptr inbounds %struct.Proto* %27, i32 0, i32 3, !dbg !571
  store i8 %26, i8* %28, align 1, !dbg !571
  %29 = load %struct.LoadState** %1, align 4, !dbg !572
  %30 = call zeroext i8 @LoadByte(%struct.LoadState* %29), !dbg !572
  %31 = load %struct.Proto** %2, align 4, !dbg !572
  %32 = getelementptr inbounds %struct.Proto* %31, i32 0, i32 4, !dbg !572
  store i8 %30, i8* %32, align 1, !dbg !572
  %33 = load %struct.LoadState** %1, align 4, !dbg !573
  %34 = call zeroext i8 @LoadByte(%struct.LoadState* %33), !dbg !573
  %35 = load %struct.Proto** %2, align 4, !dbg !573
  %36 = getelementptr inbounds %struct.Proto* %35, i32 0, i32 5, !dbg !573
  store i8 %34, i8* %36, align 1, !dbg !573
  %37 = load %struct.LoadState** %1, align 4, !dbg !574
  %38 = load %struct.Proto** %2, align 4, !dbg !574
  call void @LoadCode(%struct.LoadState* %37, %struct.Proto* %38), !dbg !574
  %39 = load %struct.LoadState** %1, align 4, !dbg !575
  %40 = load %struct.Proto** %2, align 4, !dbg !575
  call void @LoadConstants(%struct.LoadState* %39, %struct.Proto* %40), !dbg !575
  %41 = load %struct.LoadState** %1, align 4, !dbg !576
  %42 = load %struct.Proto** %2, align 4, !dbg !576
  call void @LoadUpvalues(%struct.LoadState* %41, %struct.Proto* %42), !dbg !576
  %43 = load %struct.LoadState** %1, align 4, !dbg !577
  %44 = load %struct.Proto** %2, align 4, !dbg !577
  call void @LoadProtos(%struct.LoadState* %43, %struct.Proto* %44), !dbg !577
  %45 = load %struct.LoadState** %1, align 4, !dbg !578
  %46 = load %struct.Proto** %2, align 4, !dbg !578
  call void @LoadDebug(%struct.LoadState* %45, %struct.Proto* %46), !dbg !578
  ret void, !dbg !579
}

; Function Attrs: nounwind
define internal %struct.TString* @LoadString(%struct.LoadState* %S) #0 {
  %1 = alloca %struct.TString*, align 4
  %2 = alloca %struct.LoadState*, align 4
  %size = alloca i32, align 4
  %buff = alloca [40 x i8], align 1
  %ts = alloca %struct.TString*, align 4
  store %struct.LoadState* %S, %struct.LoadState** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.LoadState** %2}, metadata !580), !dbg !581
  call void @llvm.dbg.declare(metadata !{i32* %size}, metadata !582), !dbg !583
  %3 = load %struct.LoadState** %2, align 4, !dbg !584
  %4 = call zeroext i8 @LoadByte(%struct.LoadState* %3), !dbg !584
  %5 = zext i8 %4 to i32, !dbg !584
  store i32 %5, i32* %size, align 4, !dbg !584
  %6 = load i32* %size, align 4, !dbg !585
  %7 = icmp eq i32 %6, 255, !dbg !585
  br i1 %7, label %8, label %11, !dbg !585

; <label>:8                                       ; preds = %0
  %9 = load %struct.LoadState** %2, align 4, !dbg !587
  %10 = bitcast i32* %size to i8*, !dbg !587
  call void @LoadBlock(%struct.LoadState* %9, i8* %10, i32 4), !dbg !587
  br label %11, !dbg !587

; <label>:11                                      ; preds = %8, %0
  %12 = load i32* %size, align 4, !dbg !588
  %13 = icmp eq i32 %12, 0, !dbg !588
  br i1 %13, label %14, label %15, !dbg !588

; <label>:14                                      ; preds = %11
  store %struct.TString* null, %struct.TString** %1, !dbg !590
  br label %43, !dbg !590

; <label>:15                                      ; preds = %11
  %16 = load i32* %size, align 4, !dbg !591
  %17 = add i32 %16, -1, !dbg !591
  store i32 %17, i32* %size, align 4, !dbg !591
  %18 = icmp ule i32 %17, 40, !dbg !591
  br i1 %18, label %19, label %30, !dbg !591

; <label>:19                                      ; preds = %15
  call void @llvm.dbg.declare(metadata !{[40 x i8]* %buff}, metadata !593), !dbg !598
  %20 = load %struct.LoadState** %2, align 4, !dbg !599
  %21 = getelementptr inbounds [40 x i8]* %buff, i32 0, i32 0, !dbg !599
  %22 = load i32* %size, align 4, !dbg !599
  %23 = mul i32 %22, 1, !dbg !599
  call void @LoadBlock(%struct.LoadState* %20, i8* %21, i32 %23), !dbg !599
  %24 = load %struct.LoadState** %2, align 4, !dbg !600
  %25 = getelementptr inbounds %struct.LoadState* %24, i32 0, i32 0, !dbg !600
  %26 = load %struct.lua_State** %25, align 4, !dbg !600
  %27 = getelementptr inbounds [40 x i8]* %buff, i32 0, i32 0, !dbg !600
  %28 = load i32* %size, align 4, !dbg !600
  %29 = call %struct.TString* @luaS_newlstr(%struct.lua_State* %26, i8* %27, i32 %28), !dbg !600
  store %struct.TString* %29, %struct.TString** %1, !dbg !600
  br label %43, !dbg !600

; <label>:30                                      ; preds = %15
  call void @llvm.dbg.declare(metadata !{%struct.TString** %ts}, metadata !601), !dbg !603
  %31 = load %struct.LoadState** %2, align 4, !dbg !604
  %32 = getelementptr inbounds %struct.LoadState* %31, i32 0, i32 0, !dbg !604
  %33 = load %struct.lua_State** %32, align 4, !dbg !604
  %34 = load i32* %size, align 4, !dbg !604
  %35 = call %struct.TString* @luaS_createlngstrobj(%struct.lua_State* %33, i32 %34), !dbg !604
  store %struct.TString* %35, %struct.TString** %ts, align 4, !dbg !604
  %36 = load %struct.LoadState** %2, align 4, !dbg !605
  %37 = load %struct.TString** %ts, align 4, !dbg !605
  %38 = bitcast %struct.TString* %37 to i8*, !dbg !605
  %39 = getelementptr inbounds i8* %38, i32 16, !dbg !605
  %40 = load i32* %size, align 4, !dbg !605
  %41 = mul i32 %40, 1, !dbg !605
  call void @LoadBlock(%struct.LoadState* %36, i8* %39, i32 %41), !dbg !605
  %42 = load %struct.TString** %ts, align 4, !dbg !606
  store %struct.TString* %42, %struct.TString** %1, !dbg !606
  br label %43, !dbg !606

; <label>:43                                      ; preds = %30, %19, %14
  %44 = load %struct.TString** %1, !dbg !607
  ret %struct.TString* %44, !dbg !607
}

; Function Attrs: nounwind
define internal i32 @LoadInt(%struct.LoadState* %S) #0 {
  %1 = alloca %struct.LoadState*, align 4
  %x = alloca i32, align 4
  store %struct.LoadState* %S, %struct.LoadState** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.LoadState** %1}, metadata !608), !dbg !609
  call void @llvm.dbg.declare(metadata !{i32* %x}, metadata !610), !dbg !611
  %2 = load %struct.LoadState** %1, align 4, !dbg !612
  %3 = bitcast i32* %x to i8*, !dbg !612
  call void @LoadBlock(%struct.LoadState* %2, i8* %3, i32 4), !dbg !612
  %4 = load i32* %x, align 4, !dbg !613
  ret i32 %4, !dbg !613
}

; Function Attrs: nounwind
define internal void @LoadCode(%struct.LoadState* %S, %struct.Proto* %f) #0 {
  %1 = alloca %struct.LoadState*, align 4
  %2 = alloca %struct.Proto*, align 4
  %n = alloca i32, align 4
  store %struct.LoadState* %S, %struct.LoadState** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.LoadState** %1}, metadata !614), !dbg !615
  store %struct.Proto* %f, %struct.Proto** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.Proto** %2}, metadata !616), !dbg !617
  call void @llvm.dbg.declare(metadata !{i32* %n}, metadata !618), !dbg !619
  %3 = load %struct.LoadState** %1, align 4, !dbg !620
  %4 = call i32 @LoadInt(%struct.LoadState* %3), !dbg !620
  store i32 %4, i32* %n, align 4, !dbg !620
  %5 = load i32* %n, align 4, !dbg !621
  %6 = add i32 %5, 1, !dbg !621
  %7 = icmp ugt i32 %6, 1073741823, !dbg !621
  br i1 %7, label %8, label %13, !dbg !621

; <label>:8                                       ; preds = %0
  %9 = load %struct.LoadState** %1, align 4, !dbg !622
  %10 = getelementptr inbounds %struct.LoadState* %9, i32 0, i32 0, !dbg !622
  %11 = load %struct.lua_State** %10, align 4, !dbg !622
  call void @luaM_toobig(%struct.lua_State* %11) #6, !dbg !622
  unreachable, !dbg !622
                                                  ; No predecessors!
  br label %14, !dbg !624

; <label>:13                                      ; preds = %0
  br label %14, !dbg !625

; <label>:14                                      ; preds = %13, %12
  %15 = load %struct.LoadState** %1, align 4, !dbg !627
  %16 = getelementptr inbounds %struct.LoadState* %15, i32 0, i32 0, !dbg !627
  %17 = load %struct.lua_State** %16, align 4, !dbg !627
  %18 = load i32* %n, align 4, !dbg !627
  %19 = mul i32 %18, 4, !dbg !627
  %20 = call i8* @luaM_realloc_(%struct.lua_State* %17, i8* null, i32 0, i32 %19), !dbg !627
  %21 = bitcast i8* %20 to i32*, !dbg !627
  %22 = load %struct.Proto** %2, align 4, !dbg !627
  %23 = getelementptr inbounds %struct.Proto* %22, i32 0, i32 15, !dbg !627
  store i32* %21, i32** %23, align 4, !dbg !627
  %24 = load i32* %n, align 4, !dbg !630
  %25 = load %struct.Proto** %2, align 4, !dbg !630
  %26 = getelementptr inbounds %struct.Proto* %25, i32 0, i32 8, !dbg !630
  store i32 %24, i32* %26, align 4, !dbg !630
  %27 = load %struct.LoadState** %1, align 4, !dbg !631
  %28 = load %struct.Proto** %2, align 4, !dbg !631
  %29 = getelementptr inbounds %struct.Proto* %28, i32 0, i32 15, !dbg !631
  %30 = load i32** %29, align 4, !dbg !631
  %31 = bitcast i32* %30 to i8*, !dbg !631
  %32 = load i32* %n, align 4, !dbg !631
  %33 = mul i32 %32, 4, !dbg !631
  call void @LoadBlock(%struct.LoadState* %27, i8* %31, i32 %33), !dbg !631
  ret void, !dbg !632
}

; Function Attrs: nounwind
define internal void @LoadConstants(%struct.LoadState* %S, %struct.Proto* %f) #0 {
  %1 = alloca %struct.LoadState*, align 4
  %2 = alloca %struct.Proto*, align 4
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %o = alloca %struct.lua_TValue*, align 4
  %t = alloca i32, align 4
  %io = alloca %struct.lua_TValue*, align 4
  %io1 = alloca %struct.lua_TValue*, align 4
  %io2 = alloca %struct.lua_TValue*, align 4
  %io3 = alloca %struct.lua_TValue*, align 4
  %x_ = alloca %struct.TString*, align 4
  store %struct.LoadState* %S, %struct.LoadState** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.LoadState** %1}, metadata !633), !dbg !634
  store %struct.Proto* %f, %struct.Proto** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.Proto** %2}, metadata !635), !dbg !636
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !637), !dbg !638
  call void @llvm.dbg.declare(metadata !{i32* %n}, metadata !639), !dbg !640
  %3 = load %struct.LoadState** %1, align 4, !dbg !641
  %4 = call i32 @LoadInt(%struct.LoadState* %3), !dbg !641
  store i32 %4, i32* %n, align 4, !dbg !641
  %5 = load i32* %n, align 4, !dbg !642
  %6 = add i32 %5, 1, !dbg !642
  %7 = icmp ugt i32 %6, 268435455, !dbg !642
  br i1 %7, label %8, label %13, !dbg !642

; <label>:8                                       ; preds = %0
  %9 = load %struct.LoadState** %1, align 4, !dbg !643
  %10 = getelementptr inbounds %struct.LoadState* %9, i32 0, i32 0, !dbg !643
  %11 = load %struct.lua_State** %10, align 4, !dbg !643
  call void @luaM_toobig(%struct.lua_State* %11) #6, !dbg !643
  unreachable, !dbg !643
                                                  ; No predecessors!
  br label %14, !dbg !645

; <label>:13                                      ; preds = %0
  br label %14, !dbg !646

; <label>:14                                      ; preds = %13, %12
  %15 = load %struct.LoadState** %1, align 4, !dbg !648
  %16 = getelementptr inbounds %struct.LoadState* %15, i32 0, i32 0, !dbg !648
  %17 = load %struct.lua_State** %16, align 4, !dbg !648
  %18 = load i32* %n, align 4, !dbg !648
  %19 = mul i32 %18, 16, !dbg !648
  %20 = call i8* @luaM_realloc_(%struct.lua_State* %17, i8* null, i32 0, i32 %19), !dbg !648
  %21 = bitcast i8* %20 to %struct.lua_TValue*, !dbg !648
  %22 = load %struct.Proto** %2, align 4, !dbg !648
  %23 = getelementptr inbounds %struct.Proto* %22, i32 0, i32 14, !dbg !648
  store %struct.lua_TValue* %21, %struct.lua_TValue** %23, align 4, !dbg !648
  %24 = load i32* %n, align 4, !dbg !651
  %25 = load %struct.Proto** %2, align 4, !dbg !651
  %26 = getelementptr inbounds %struct.Proto* %25, i32 0, i32 7, !dbg !651
  store i32 %24, i32* %26, align 4, !dbg !651
  store i32 0, i32* %i, align 4, !dbg !652
  br label %27, !dbg !652

; <label>:27                                      ; preds = %38, %14
  %28 = load i32* %i, align 4, !dbg !654
  %29 = load i32* %n, align 4, !dbg !654
  %30 = icmp slt i32 %28, %29, !dbg !654
  br i1 %30, label %31, label %41, !dbg !654

; <label>:31                                      ; preds = %27
  %32 = load i32* %i, align 4, !dbg !657
  %33 = load %struct.Proto** %2, align 4, !dbg !657
  %34 = getelementptr inbounds %struct.Proto* %33, i32 0, i32 14, !dbg !657
  %35 = load %struct.lua_TValue** %34, align 4, !dbg !657
  %36 = getelementptr inbounds %struct.lua_TValue* %35, i32 %32, !dbg !657
  %37 = getelementptr inbounds %struct.lua_TValue* %36, i32 0, i32 1, !dbg !657
  store i32 0, i32* %37, align 4, !dbg !657
  br label %38, !dbg !657

; <label>:38                                      ; preds = %31
  %39 = load i32* %i, align 4, !dbg !658
  %40 = add nsw i32 %39, 1, !dbg !658
  store i32 %40, i32* %i, align 4, !dbg !658
  br label %27, !dbg !658

; <label>:41                                      ; preds = %27
  store i32 0, i32* %i, align 4, !dbg !659
  br label %42, !dbg !659

; <label>:42                                      ; preds = %106, %41
  %43 = load i32* %i, align 4, !dbg !661
  %44 = load i32* %n, align 4, !dbg !661
  %45 = icmp slt i32 %43, %44, !dbg !661
  br i1 %45, label %46, label %109, !dbg !661

; <label>:46                                      ; preds = %42
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %o}, metadata !664), !dbg !666
  %47 = load i32* %i, align 4, !dbg !667
  %48 = load %struct.Proto** %2, align 4, !dbg !667
  %49 = getelementptr inbounds %struct.Proto* %48, i32 0, i32 14, !dbg !667
  %50 = load %struct.lua_TValue** %49, align 4, !dbg !667
  %51 = getelementptr inbounds %struct.lua_TValue* %50, i32 %47, !dbg !667
  store %struct.lua_TValue* %51, %struct.lua_TValue** %o, align 4, !dbg !667
  call void @llvm.dbg.declare(metadata !{i32* %t}, metadata !668), !dbg !669
  %52 = load %struct.LoadState** %1, align 4, !dbg !670
  %53 = call zeroext i8 @LoadByte(%struct.LoadState* %52), !dbg !670
  %54 = zext i8 %53 to i32, !dbg !670
  store i32 %54, i32* %t, align 4, !dbg !670
  %55 = load i32* %t, align 4, !dbg !671
  switch i32 %55, label %104 [
    i32 0, label %56
    i32 1, label %59
    i32 3, label %69
    i32 19, label %78
    i32 4, label %87
    i32 20, label %87
  ], !dbg !671

; <label>:56                                      ; preds = %46
  %57 = load %struct.lua_TValue** %o, align 4, !dbg !672
  %58 = getelementptr inbounds %struct.lua_TValue* %57, i32 0, i32 1, !dbg !672
  store i32 0, i32* %58, align 4, !dbg !672
  br label %105, !dbg !674

; <label>:59                                      ; preds = %46
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %io}, metadata !675), !dbg !677
  %60 = load %struct.lua_TValue** %o, align 4, !dbg !677
  store %struct.lua_TValue* %60, %struct.lua_TValue** %io, align 4, !dbg !677
  %61 = load %struct.LoadState** %1, align 4, !dbg !677
  %62 = call zeroext i8 @LoadByte(%struct.LoadState* %61), !dbg !677
  %63 = zext i8 %62 to i32, !dbg !677
  %64 = load %struct.lua_TValue** %io, align 4, !dbg !677
  %65 = getelementptr inbounds %struct.lua_TValue* %64, i32 0, i32 0, !dbg !677
  %66 = bitcast %union.Value* %65 to i32*, !dbg !677
  store i32 %63, i32* %66, align 4, !dbg !677
  %67 = load %struct.lua_TValue** %io, align 4, !dbg !677
  %68 = getelementptr inbounds %struct.lua_TValue* %67, i32 0, i32 1, !dbg !677
  store i32 1, i32* %68, align 4, !dbg !677
  br label %105, !dbg !678

; <label>:69                                      ; preds = %46
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %io1}, metadata !679), !dbg !681
  %70 = load %struct.lua_TValue** %o, align 4, !dbg !681
  store %struct.lua_TValue* %70, %struct.lua_TValue** %io1, align 4, !dbg !681
  %71 = load %struct.LoadState** %1, align 4, !dbg !681
  %72 = call double @LoadNumber(%struct.LoadState* %71), !dbg !681
  %73 = load %struct.lua_TValue** %io1, align 4, !dbg !681
  %74 = getelementptr inbounds %struct.lua_TValue* %73, i32 0, i32 0, !dbg !681
  %75 = bitcast %union.Value* %74 to double*, !dbg !681
  store double %72, double* %75, align 8, !dbg !681
  %76 = load %struct.lua_TValue** %io1, align 4, !dbg !681
  %77 = getelementptr inbounds %struct.lua_TValue* %76, i32 0, i32 1, !dbg !681
  store i32 3, i32* %77, align 4, !dbg !681
  br label %105, !dbg !682

; <label>:78                                      ; preds = %46
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %io2}, metadata !683), !dbg !685
  %79 = load %struct.lua_TValue** %o, align 4, !dbg !685
  store %struct.lua_TValue* %79, %struct.lua_TValue** %io2, align 4, !dbg !685
  %80 = load %struct.LoadState** %1, align 4, !dbg !685
  %81 = call i64 @LoadInteger(%struct.LoadState* %80), !dbg !685
  %82 = load %struct.lua_TValue** %io2, align 4, !dbg !685
  %83 = getelementptr inbounds %struct.lua_TValue* %82, i32 0, i32 0, !dbg !685
  %84 = bitcast %union.Value* %83 to i64*, !dbg !685
  store i64 %81, i64* %84, align 8, !dbg !685
  %85 = load %struct.lua_TValue** %io2, align 4, !dbg !685
  %86 = getelementptr inbounds %struct.lua_TValue* %85, i32 0, i32 1, !dbg !685
  store i32 19, i32* %86, align 4, !dbg !685
  br label %105, !dbg !686

; <label>:87                                      ; preds = %46, %46
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %io3}, metadata !687), !dbg !689
  %88 = load %struct.lua_TValue** %o, align 4, !dbg !689
  store %struct.lua_TValue* %88, %struct.lua_TValue** %io3, align 4, !dbg !689
  call void @llvm.dbg.declare(metadata !{%struct.TString** %x_}, metadata !690), !dbg !689
  %89 = load %struct.LoadState** %1, align 4, !dbg !689
  %90 = call %struct.TString* @LoadString(%struct.LoadState* %89), !dbg !689
  store %struct.TString* %90, %struct.TString** %x_, align 4, !dbg !689
  %91 = load %struct.TString** %x_, align 4, !dbg !689
  %92 = bitcast %struct.TString* %91 to %union.GCUnion*, !dbg !689
  %93 = bitcast %union.GCUnion* %92 to %struct.GCObject*, !dbg !689
  %94 = load %struct.lua_TValue** %io3, align 4, !dbg !689
  %95 = getelementptr inbounds %struct.lua_TValue* %94, i32 0, i32 0, !dbg !689
  %96 = bitcast %union.Value* %95 to %struct.GCObject**, !dbg !689
  store %struct.GCObject* %93, %struct.GCObject** %96, align 4, !dbg !689
  %97 = load %struct.TString** %x_, align 4, !dbg !689
  %98 = getelementptr inbounds %struct.TString* %97, i32 0, i32 1, !dbg !689
  %99 = load i8* %98, align 1, !dbg !689
  %100 = zext i8 %99 to i32, !dbg !689
  %101 = or i32 %100, 64, !dbg !689
  %102 = load %struct.lua_TValue** %io3, align 4, !dbg !689
  %103 = getelementptr inbounds %struct.lua_TValue* %102, i32 0, i32 1, !dbg !689
  store i32 %101, i32* %103, align 4, !dbg !689
  br label %105, !dbg !691

; <label>:104                                     ; preds = %46
  br label %105, !dbg !692

; <label>:105                                     ; preds = %104, %87, %78, %69, %59, %56
  br label %106, !dbg !693

; <label>:106                                     ; preds = %105
  %107 = load i32* %i, align 4, !dbg !694
  %108 = add nsw i32 %107, 1, !dbg !694
  store i32 %108, i32* %i, align 4, !dbg !694
  br label %42, !dbg !694

; <label>:109                                     ; preds = %42
  ret void, !dbg !695
}

; Function Attrs: nounwind
define internal void @LoadUpvalues(%struct.LoadState* %S, %struct.Proto* %f) #0 {
  %1 = alloca %struct.LoadState*, align 4
  %2 = alloca %struct.Proto*, align 4
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  store %struct.LoadState* %S, %struct.LoadState** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.LoadState** %1}, metadata !696), !dbg !697
  store %struct.Proto* %f, %struct.Proto** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.Proto** %2}, metadata !698), !dbg !699
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !700), !dbg !701
  call void @llvm.dbg.declare(metadata !{i32* %n}, metadata !702), !dbg !703
  %3 = load %struct.LoadState** %1, align 4, !dbg !704
  %4 = call i32 @LoadInt(%struct.LoadState* %3), !dbg !704
  store i32 %4, i32* %n, align 4, !dbg !704
  %5 = load i32* %n, align 4, !dbg !705
  %6 = add i32 %5, 1, !dbg !705
  %7 = icmp ugt i32 %6, 536870911, !dbg !705
  br i1 %7, label %8, label %13, !dbg !705

; <label>:8                                       ; preds = %0
  %9 = load %struct.LoadState** %1, align 4, !dbg !706
  %10 = getelementptr inbounds %struct.LoadState* %9, i32 0, i32 0, !dbg !706
  %11 = load %struct.lua_State** %10, align 4, !dbg !706
  call void @luaM_toobig(%struct.lua_State* %11) #6, !dbg !706
  unreachable, !dbg !706
                                                  ; No predecessors!
  br label %14, !dbg !708

; <label>:13                                      ; preds = %0
  br label %14, !dbg !709

; <label>:14                                      ; preds = %13, %12
  %15 = load %struct.LoadState** %1, align 4, !dbg !711
  %16 = getelementptr inbounds %struct.LoadState* %15, i32 0, i32 0, !dbg !711
  %17 = load %struct.lua_State** %16, align 4, !dbg !711
  %18 = load i32* %n, align 4, !dbg !711
  %19 = mul i32 %18, 8, !dbg !711
  %20 = call i8* @luaM_realloc_(%struct.lua_State* %17, i8* null, i32 0, i32 %19), !dbg !711
  %21 = bitcast i8* %20 to %struct.Upvaldesc*, !dbg !711
  %22 = load %struct.Proto** %2, align 4, !dbg !711
  %23 = getelementptr inbounds %struct.Proto* %22, i32 0, i32 19, !dbg !711
  store %struct.Upvaldesc* %21, %struct.Upvaldesc** %23, align 4, !dbg !711
  %24 = load i32* %n, align 4, !dbg !714
  %25 = load %struct.Proto** %2, align 4, !dbg !714
  %26 = getelementptr inbounds %struct.Proto* %25, i32 0, i32 6, !dbg !714
  store i32 %24, i32* %26, align 4, !dbg !714
  store i32 0, i32* %i, align 4, !dbg !715
  br label %27, !dbg !715

; <label>:27                                      ; preds = %38, %14
  %28 = load i32* %i, align 4, !dbg !717
  %29 = load i32* %n, align 4, !dbg !717
  %30 = icmp slt i32 %28, %29, !dbg !717
  br i1 %30, label %31, label %41, !dbg !717

; <label>:31                                      ; preds = %27
  %32 = load i32* %i, align 4, !dbg !720
  %33 = load %struct.Proto** %2, align 4, !dbg !720
  %34 = getelementptr inbounds %struct.Proto* %33, i32 0, i32 19, !dbg !720
  %35 = load %struct.Upvaldesc** %34, align 4, !dbg !720
  %36 = getelementptr inbounds %struct.Upvaldesc* %35, i32 %32, !dbg !720
  %37 = getelementptr inbounds %struct.Upvaldesc* %36, i32 0, i32 0, !dbg !720
  store %struct.TString* null, %struct.TString** %37, align 4, !dbg !720
  br label %38, !dbg !720

; <label>:38                                      ; preds = %31
  %39 = load i32* %i, align 4, !dbg !721
  %40 = add nsw i32 %39, 1, !dbg !721
  store i32 %40, i32* %i, align 4, !dbg !721
  br label %27, !dbg !721

; <label>:41                                      ; preds = %27
  store i32 0, i32* %i, align 4, !dbg !722
  br label %42, !dbg !722

; <label>:42                                      ; preds = %63, %41
  %43 = load i32* %i, align 4, !dbg !724
  %44 = load i32* %n, align 4, !dbg !724
  %45 = icmp slt i32 %43, %44, !dbg !724
  br i1 %45, label %46, label %66, !dbg !724

; <label>:46                                      ; preds = %42
  %47 = load %struct.LoadState** %1, align 4, !dbg !727
  %48 = call zeroext i8 @LoadByte(%struct.LoadState* %47), !dbg !727
  %49 = load i32* %i, align 4, !dbg !727
  %50 = load %struct.Proto** %2, align 4, !dbg !727
  %51 = getelementptr inbounds %struct.Proto* %50, i32 0, i32 19, !dbg !727
  %52 = load %struct.Upvaldesc** %51, align 4, !dbg !727
  %53 = getelementptr inbounds %struct.Upvaldesc* %52, i32 %49, !dbg !727
  %54 = getelementptr inbounds %struct.Upvaldesc* %53, i32 0, i32 1, !dbg !727
  store i8 %48, i8* %54, align 1, !dbg !727
  %55 = load %struct.LoadState** %1, align 4, !dbg !729
  %56 = call zeroext i8 @LoadByte(%struct.LoadState* %55), !dbg !729
  %57 = load i32* %i, align 4, !dbg !729
  %58 = load %struct.Proto** %2, align 4, !dbg !729
  %59 = getelementptr inbounds %struct.Proto* %58, i32 0, i32 19, !dbg !729
  %60 = load %struct.Upvaldesc** %59, align 4, !dbg !729
  %61 = getelementptr inbounds %struct.Upvaldesc* %60, i32 %57, !dbg !729
  %62 = getelementptr inbounds %struct.Upvaldesc* %61, i32 0, i32 2, !dbg !729
  store i8 %56, i8* %62, align 1, !dbg !729
  br label %63, !dbg !730

; <label>:63                                      ; preds = %46
  %64 = load i32* %i, align 4, !dbg !731
  %65 = add nsw i32 %64, 1, !dbg !731
  store i32 %65, i32* %i, align 4, !dbg !731
  br label %42, !dbg !731

; <label>:66                                      ; preds = %42
  ret void, !dbg !732
}

; Function Attrs: nounwind
define internal void @LoadProtos(%struct.LoadState* %S, %struct.Proto* %f) #0 {
  %1 = alloca %struct.LoadState*, align 4
  %2 = alloca %struct.Proto*, align 4
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  store %struct.LoadState* %S, %struct.LoadState** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.LoadState** %1}, metadata !733), !dbg !734
  store %struct.Proto* %f, %struct.Proto** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.Proto** %2}, metadata !735), !dbg !736
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !737), !dbg !738
  call void @llvm.dbg.declare(metadata !{i32* %n}, metadata !739), !dbg !740
  %3 = load %struct.LoadState** %1, align 4, !dbg !741
  %4 = call i32 @LoadInt(%struct.LoadState* %3), !dbg !741
  store i32 %4, i32* %n, align 4, !dbg !741
  %5 = load i32* %n, align 4, !dbg !742
  %6 = add i32 %5, 1, !dbg !742
  %7 = icmp ugt i32 %6, 1073741823, !dbg !742
  br i1 %7, label %8, label %13, !dbg !742

; <label>:8                                       ; preds = %0
  %9 = load %struct.LoadState** %1, align 4, !dbg !743
  %10 = getelementptr inbounds %struct.LoadState* %9, i32 0, i32 0, !dbg !743
  %11 = load %struct.lua_State** %10, align 4, !dbg !743
  call void @luaM_toobig(%struct.lua_State* %11) #6, !dbg !743
  unreachable, !dbg !743
                                                  ; No predecessors!
  br label %14, !dbg !745

; <label>:13                                      ; preds = %0
  br label %14, !dbg !746

; <label>:14                                      ; preds = %13, %12
  %15 = load %struct.LoadState** %1, align 4, !dbg !748
  %16 = getelementptr inbounds %struct.LoadState* %15, i32 0, i32 0, !dbg !748
  %17 = load %struct.lua_State** %16, align 4, !dbg !748
  %18 = load i32* %n, align 4, !dbg !748
  %19 = mul i32 %18, 4, !dbg !748
  %20 = call i8* @luaM_realloc_(%struct.lua_State* %17, i8* null, i32 0, i32 %19), !dbg !748
  %21 = bitcast i8* %20 to %struct.Proto**, !dbg !748
  %22 = load %struct.Proto** %2, align 4, !dbg !748
  %23 = getelementptr inbounds %struct.Proto* %22, i32 0, i32 16, !dbg !748
  store %struct.Proto** %21, %struct.Proto*** %23, align 4, !dbg !748
  %24 = load i32* %n, align 4, !dbg !751
  %25 = load %struct.Proto** %2, align 4, !dbg !751
  %26 = getelementptr inbounds %struct.Proto* %25, i32 0, i32 10, !dbg !751
  store i32 %24, i32* %26, align 4, !dbg !751
  store i32 0, i32* %i, align 4, !dbg !752
  br label %27, !dbg !752

; <label>:27                                      ; preds = %37, %14
  %28 = load i32* %i, align 4, !dbg !754
  %29 = load i32* %n, align 4, !dbg !754
  %30 = icmp slt i32 %28, %29, !dbg !754
  br i1 %30, label %31, label %40, !dbg !754

; <label>:31                                      ; preds = %27
  %32 = load i32* %i, align 4, !dbg !757
  %33 = load %struct.Proto** %2, align 4, !dbg !757
  %34 = getelementptr inbounds %struct.Proto* %33, i32 0, i32 16, !dbg !757
  %35 = load %struct.Proto*** %34, align 4, !dbg !757
  %36 = getelementptr inbounds %struct.Proto** %35, i32 %32, !dbg !757
  store %struct.Proto* null, %struct.Proto** %36, align 4, !dbg !757
  br label %37, !dbg !757

; <label>:37                                      ; preds = %31
  %38 = load i32* %i, align 4, !dbg !758
  %39 = add nsw i32 %38, 1, !dbg !758
  store i32 %39, i32* %i, align 4, !dbg !758
  br label %27, !dbg !758

; <label>:40                                      ; preds = %27
  store i32 0, i32* %i, align 4, !dbg !759
  br label %41, !dbg !759

; <label>:41                                      ; preds = %65, %40
  %42 = load i32* %i, align 4, !dbg !761
  %43 = load i32* %n, align 4, !dbg !761
  %44 = icmp slt i32 %42, %43, !dbg !761
  br i1 %44, label %45, label %68, !dbg !761

; <label>:45                                      ; preds = %41
  %46 = load %struct.LoadState** %1, align 4, !dbg !764
  %47 = getelementptr inbounds %struct.LoadState* %46, i32 0, i32 0, !dbg !764
  %48 = load %struct.lua_State** %47, align 4, !dbg !764
  %49 = call %struct.Proto* @luaF_newproto(%struct.lua_State* %48), !dbg !764
  %50 = load i32* %i, align 4, !dbg !764
  %51 = load %struct.Proto** %2, align 4, !dbg !764
  %52 = getelementptr inbounds %struct.Proto* %51, i32 0, i32 16, !dbg !764
  %53 = load %struct.Proto*** %52, align 4, !dbg !764
  %54 = getelementptr inbounds %struct.Proto** %53, i32 %50, !dbg !764
  store %struct.Proto* %49, %struct.Proto** %54, align 4, !dbg !764
  %55 = load %struct.LoadState** %1, align 4, !dbg !766
  %56 = load i32* %i, align 4, !dbg !766
  %57 = load %struct.Proto** %2, align 4, !dbg !766
  %58 = getelementptr inbounds %struct.Proto* %57, i32 0, i32 16, !dbg !766
  %59 = load %struct.Proto*** %58, align 4, !dbg !766
  %60 = getelementptr inbounds %struct.Proto** %59, i32 %56, !dbg !766
  %61 = load %struct.Proto** %60, align 4, !dbg !766
  %62 = load %struct.Proto** %2, align 4, !dbg !766
  %63 = getelementptr inbounds %struct.Proto* %62, i32 0, i32 21, !dbg !766
  %64 = load %struct.TString** %63, align 4, !dbg !766
  call void @LoadFunction(%struct.LoadState* %55, %struct.Proto* %61, %struct.TString* %64), !dbg !766
  br label %65, !dbg !767

; <label>:65                                      ; preds = %45
  %66 = load i32* %i, align 4, !dbg !768
  %67 = add nsw i32 %66, 1, !dbg !768
  store i32 %67, i32* %i, align 4, !dbg !768
  br label %41, !dbg !768

; <label>:68                                      ; preds = %41
  ret void, !dbg !769
}

; Function Attrs: nounwind
define internal void @LoadDebug(%struct.LoadState* %S, %struct.Proto* %f) #0 {
  %1 = alloca %struct.LoadState*, align 4
  %2 = alloca %struct.Proto*, align 4
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  store %struct.LoadState* %S, %struct.LoadState** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.LoadState** %1}, metadata !770), !dbg !771
  store %struct.Proto* %f, %struct.Proto** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.Proto** %2}, metadata !772), !dbg !773
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !774), !dbg !775
  call void @llvm.dbg.declare(metadata !{i32* %n}, metadata !776), !dbg !777
  %3 = load %struct.LoadState** %1, align 4, !dbg !778
  %4 = call i32 @LoadInt(%struct.LoadState* %3), !dbg !778
  store i32 %4, i32* %n, align 4, !dbg !778
  %5 = load i32* %n, align 4, !dbg !779
  %6 = add i32 %5, 1, !dbg !779
  %7 = icmp ugt i32 %6, 1073741823, !dbg !779
  br i1 %7, label %8, label %13, !dbg !779

; <label>:8                                       ; preds = %0
  %9 = load %struct.LoadState** %1, align 4, !dbg !780
  %10 = getelementptr inbounds %struct.LoadState* %9, i32 0, i32 0, !dbg !780
  %11 = load %struct.lua_State** %10, align 4, !dbg !780
  call void @luaM_toobig(%struct.lua_State* %11) #6, !dbg !780
  unreachable, !dbg !780
                                                  ; No predecessors!
  br label %14, !dbg !782

; <label>:13                                      ; preds = %0
  br label %14, !dbg !783

; <label>:14                                      ; preds = %13, %12
  %15 = load %struct.LoadState** %1, align 4, !dbg !785
  %16 = getelementptr inbounds %struct.LoadState* %15, i32 0, i32 0, !dbg !785
  %17 = load %struct.lua_State** %16, align 4, !dbg !785
  %18 = load i32* %n, align 4, !dbg !785
  %19 = mul i32 %18, 4, !dbg !785
  %20 = call i8* @luaM_realloc_(%struct.lua_State* %17, i8* null, i32 0, i32 %19), !dbg !785
  %21 = bitcast i8* %20 to i32*, !dbg !785
  %22 = load %struct.Proto** %2, align 4, !dbg !785
  %23 = getelementptr inbounds %struct.Proto* %22, i32 0, i32 17, !dbg !785
  store i32* %21, i32** %23, align 4, !dbg !785
  %24 = load i32* %n, align 4, !dbg !788
  %25 = load %struct.Proto** %2, align 4, !dbg !788
  %26 = getelementptr inbounds %struct.Proto* %25, i32 0, i32 9, !dbg !788
  store i32 %24, i32* %26, align 4, !dbg !788
  %27 = load %struct.LoadState** %1, align 4, !dbg !789
  %28 = load %struct.Proto** %2, align 4, !dbg !789
  %29 = getelementptr inbounds %struct.Proto* %28, i32 0, i32 17, !dbg !789
  %30 = load i32** %29, align 4, !dbg !789
  %31 = bitcast i32* %30 to i8*, !dbg !789
  %32 = load i32* %n, align 4, !dbg !789
  %33 = mul i32 %32, 4, !dbg !789
  call void @LoadBlock(%struct.LoadState* %27, i8* %31, i32 %33), !dbg !789
  %34 = load %struct.LoadState** %1, align 4, !dbg !790
  %35 = call i32 @LoadInt(%struct.LoadState* %34), !dbg !790
  store i32 %35, i32* %n, align 4, !dbg !790
  %36 = load i32* %n, align 4, !dbg !791
  %37 = add i32 %36, 1, !dbg !791
  %38 = icmp ugt i32 %37, 357913941, !dbg !791
  br i1 %38, label %39, label %44, !dbg !791

; <label>:39                                      ; preds = %14
  %40 = load %struct.LoadState** %1, align 4, !dbg !792
  %41 = getelementptr inbounds %struct.LoadState* %40, i32 0, i32 0, !dbg !792
  %42 = load %struct.lua_State** %41, align 4, !dbg !792
  call void @luaM_toobig(%struct.lua_State* %42) #6, !dbg !792
  unreachable, !dbg !792
                                                  ; No predecessors!
  br label %45, !dbg !794

; <label>:44                                      ; preds = %14
  br label %45, !dbg !795

; <label>:45                                      ; preds = %44, %43
  %46 = load %struct.LoadState** %1, align 4, !dbg !797
  %47 = getelementptr inbounds %struct.LoadState* %46, i32 0, i32 0, !dbg !797
  %48 = load %struct.lua_State** %47, align 4, !dbg !797
  %49 = load i32* %n, align 4, !dbg !797
  %50 = mul i32 %49, 12, !dbg !797
  %51 = call i8* @luaM_realloc_(%struct.lua_State* %48, i8* null, i32 0, i32 %50), !dbg !797
  %52 = bitcast i8* %51 to %struct.LocVar*, !dbg !797
  %53 = load %struct.Proto** %2, align 4, !dbg !797
  %54 = getelementptr inbounds %struct.Proto* %53, i32 0, i32 18, !dbg !797
  store %struct.LocVar* %52, %struct.LocVar** %54, align 4, !dbg !797
  %55 = load i32* %n, align 4, !dbg !800
  %56 = load %struct.Proto** %2, align 4, !dbg !800
  %57 = getelementptr inbounds %struct.Proto* %56, i32 0, i32 11, !dbg !800
  store i32 %55, i32* %57, align 4, !dbg !800
  store i32 0, i32* %i, align 4, !dbg !801
  br label %58, !dbg !801

; <label>:58                                      ; preds = %69, %45
  %59 = load i32* %i, align 4, !dbg !803
  %60 = load i32* %n, align 4, !dbg !803
  %61 = icmp slt i32 %59, %60, !dbg !803
  br i1 %61, label %62, label %72, !dbg !803

; <label>:62                                      ; preds = %58
  %63 = load i32* %i, align 4, !dbg !806
  %64 = load %struct.Proto** %2, align 4, !dbg !806
  %65 = getelementptr inbounds %struct.Proto* %64, i32 0, i32 18, !dbg !806
  %66 = load %struct.LocVar** %65, align 4, !dbg !806
  %67 = getelementptr inbounds %struct.LocVar* %66, i32 %63, !dbg !806
  %68 = getelementptr inbounds %struct.LocVar* %67, i32 0, i32 0, !dbg !806
  store %struct.TString* null, %struct.TString** %68, align 4, !dbg !806
  br label %69, !dbg !806

; <label>:69                                      ; preds = %62
  %70 = load i32* %i, align 4, !dbg !807
  %71 = add nsw i32 %70, 1, !dbg !807
  store i32 %71, i32* %i, align 4, !dbg !807
  br label %58, !dbg !807

; <label>:72                                      ; preds = %58
  store i32 0, i32* %i, align 4, !dbg !808
  br label %73, !dbg !808

; <label>:73                                      ; preds = %102, %72
  %74 = load i32* %i, align 4, !dbg !810
  %75 = load i32* %n, align 4, !dbg !810
  %76 = icmp slt i32 %74, %75, !dbg !810
  br i1 %76, label %77, label %105, !dbg !810

; <label>:77                                      ; preds = %73
  %78 = load %struct.LoadState** %1, align 4, !dbg !813
  %79 = call %struct.TString* @LoadString(%struct.LoadState* %78), !dbg !813
  %80 = load i32* %i, align 4, !dbg !813
  %81 = load %struct.Proto** %2, align 4, !dbg !813
  %82 = getelementptr inbounds %struct.Proto* %81, i32 0, i32 18, !dbg !813
  %83 = load %struct.LocVar** %82, align 4, !dbg !813
  %84 = getelementptr inbounds %struct.LocVar* %83, i32 %80, !dbg !813
  %85 = getelementptr inbounds %struct.LocVar* %84, i32 0, i32 0, !dbg !813
  store %struct.TString* %79, %struct.TString** %85, align 4, !dbg !813
  %86 = load %struct.LoadState** %1, align 4, !dbg !815
  %87 = call i32 @LoadInt(%struct.LoadState* %86), !dbg !815
  %88 = load i32* %i, align 4, !dbg !815
  %89 = load %struct.Proto** %2, align 4, !dbg !815
  %90 = getelementptr inbounds %struct.Proto* %89, i32 0, i32 18, !dbg !815
  %91 = load %struct.LocVar** %90, align 4, !dbg !815
  %92 = getelementptr inbounds %struct.LocVar* %91, i32 %88, !dbg !815
  %93 = getelementptr inbounds %struct.LocVar* %92, i32 0, i32 1, !dbg !815
  store i32 %87, i32* %93, align 4, !dbg !815
  %94 = load %struct.LoadState** %1, align 4, !dbg !816
  %95 = call i32 @LoadInt(%struct.LoadState* %94), !dbg !816
  %96 = load i32* %i, align 4, !dbg !816
  %97 = load %struct.Proto** %2, align 4, !dbg !816
  %98 = getelementptr inbounds %struct.Proto* %97, i32 0, i32 18, !dbg !816
  %99 = load %struct.LocVar** %98, align 4, !dbg !816
  %100 = getelementptr inbounds %struct.LocVar* %99, i32 %96, !dbg !816
  %101 = getelementptr inbounds %struct.LocVar* %100, i32 0, i32 2, !dbg !816
  store i32 %95, i32* %101, align 4, !dbg !816
  br label %102, !dbg !817

; <label>:102                                     ; preds = %77
  %103 = load i32* %i, align 4, !dbg !818
  %104 = add nsw i32 %103, 1, !dbg !818
  store i32 %104, i32* %i, align 4, !dbg !818
  br label %73, !dbg !818

; <label>:105                                     ; preds = %73
  %106 = load %struct.LoadState** %1, align 4, !dbg !819
  %107 = call i32 @LoadInt(%struct.LoadState* %106), !dbg !819
  store i32 %107, i32* %n, align 4, !dbg !819
  store i32 0, i32* %i, align 4, !dbg !820
  br label %108, !dbg !820

; <label>:108                                     ; preds = %121, %105
  %109 = load i32* %i, align 4, !dbg !822
  %110 = load i32* %n, align 4, !dbg !822
  %111 = icmp slt i32 %109, %110, !dbg !822
  br i1 %111, label %112, label %124, !dbg !822

; <label>:112                                     ; preds = %108
  %113 = load %struct.LoadState** %1, align 4, !dbg !825
  %114 = call %struct.TString* @LoadString(%struct.LoadState* %113), !dbg !825
  %115 = load i32* %i, align 4, !dbg !825
  %116 = load %struct.Proto** %2, align 4, !dbg !825
  %117 = getelementptr inbounds %struct.Proto* %116, i32 0, i32 19, !dbg !825
  %118 = load %struct.Upvaldesc** %117, align 4, !dbg !825
  %119 = getelementptr inbounds %struct.Upvaldesc* %118, i32 %115, !dbg !825
  %120 = getelementptr inbounds %struct.Upvaldesc* %119, i32 0, i32 0, !dbg !825
  store %struct.TString* %114, %struct.TString** %120, align 4, !dbg !825
  br label %121, !dbg !825

; <label>:121                                     ; preds = %112
  %122 = load i32* %i, align 4, !dbg !826
  %123 = add nsw i32 %122, 1, !dbg !826
  store i32 %123, i32* %i, align 4, !dbg !826
  br label %108, !dbg !826

; <label>:124                                     ; preds = %108
  ret void, !dbg !827
}

; Function Attrs: noreturn
declare hidden void @luaM_toobig(%struct.lua_State*) #3

declare hidden i8* @luaM_realloc_(%struct.lua_State*, i8*, i32, i32) #2

; Function Attrs: nounwind
define internal void @LoadBlock(%struct.LoadState* %S, i8* %b, i32 %size) #0 {
  %1 = alloca %struct.LoadState*, align 4
  %2 = alloca i8*, align 4
  %3 = alloca i32, align 4
  store %struct.LoadState* %S, %struct.LoadState** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.LoadState** %1}, metadata !828), !dbg !829
  store i8* %b, i8** %2, align 4
  call void @llvm.dbg.declare(metadata !{i8** %2}, metadata !830), !dbg !831
  store i32 %size, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !832), !dbg !833
  %4 = load %struct.LoadState** %1, align 4, !dbg !834
  %5 = getelementptr inbounds %struct.LoadState* %4, i32 0, i32 1, !dbg !834
  %6 = load %struct.Zio** %5, align 4, !dbg !834
  %7 = load i8** %2, align 4, !dbg !834
  %8 = load i32* %3, align 4, !dbg !834
  %9 = call i32 @luaZ_read(%struct.Zio* %6, i8* %7, i32 %8), !dbg !834
  %10 = icmp ne i32 %9, 0, !dbg !834
  br i1 %10, label %11, label %13, !dbg !834

; <label>:11                                      ; preds = %0
  %12 = load %struct.LoadState** %1, align 4, !dbg !836
  call void @error(%struct.LoadState* %12, i8* getelementptr inbounds ([10 x i8]* @.str2, i32 0, i32 0)) #6, !dbg !836
  unreachable, !dbg !836

; <label>:13                                      ; preds = %0
  ret void, !dbg !837
}

declare hidden i32 @luaZ_read(%struct.Zio*, i8*, i32) #2

; Function Attrs: noreturn nounwind
define internal void @error(%struct.LoadState* %S, i8* %why) #4 {
  %1 = alloca %struct.LoadState*, align 4
  %2 = alloca i8*, align 4
  store %struct.LoadState* %S, %struct.LoadState** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.LoadState** %1}, metadata !838), !dbg !839
  store i8* %why, i8** %2, align 4
  call void @llvm.dbg.declare(metadata !{i8** %2}, metadata !840), !dbg !841
  %3 = load %struct.LoadState** %1, align 4, !dbg !842
  %4 = getelementptr inbounds %struct.LoadState* %3, i32 0, i32 0, !dbg !842
  %5 = load %struct.lua_State** %4, align 4, !dbg !842
  %6 = load %struct.LoadState** %1, align 4, !dbg !842
  %7 = getelementptr inbounds %struct.LoadState* %6, i32 0, i32 2, !dbg !842
  %8 = load i8** %7, align 4, !dbg !842
  %9 = load i8** %2, align 4, !dbg !842
  %10 = call i8* (%struct.lua_State*, i8*, ...)* @luaO_pushfstring(%struct.lua_State* %5, i8* getelementptr inbounds ([25 x i8]* @.str3, i32 0, i32 0), i8* %8, i8* %9), !dbg !842
  %11 = load %struct.LoadState** %1, align 4, !dbg !843
  %12 = getelementptr inbounds %struct.LoadState* %11, i32 0, i32 0, !dbg !843
  %13 = load %struct.lua_State** %12, align 4, !dbg !843
  call void @luaD_throw(%struct.lua_State* %13, i32 3) #6, !dbg !843
  unreachable, !dbg !843
                                                  ; No predecessors!
  ret void, !dbg !844
}

declare hidden i8* @luaO_pushfstring(%struct.lua_State*, i8*, ...) #2

; Function Attrs: noreturn
declare hidden void @luaD_throw(%struct.lua_State*, i32) #3

; Function Attrs: nounwind
define internal double @LoadNumber(%struct.LoadState* %S) #0 {
  %1 = alloca %struct.LoadState*, align 4
  %x = alloca double, align 8
  store %struct.LoadState* %S, %struct.LoadState** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.LoadState** %1}, metadata !845), !dbg !846
  call void @llvm.dbg.declare(metadata !{double* %x}, metadata !847), !dbg !848
  %2 = load %struct.LoadState** %1, align 4, !dbg !849
  %3 = bitcast double* %x to i8*, !dbg !849
  call void @LoadBlock(%struct.LoadState* %2, i8* %3, i32 8), !dbg !849
  %4 = load double* %x, align 8, !dbg !850
  ret double %4, !dbg !850
}

; Function Attrs: nounwind
define internal i64 @LoadInteger(%struct.LoadState* %S) #0 {
  %1 = alloca %struct.LoadState*, align 4
  %x = alloca i64, align 8
  store %struct.LoadState* %S, %struct.LoadState** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.LoadState** %1}, metadata !851), !dbg !852
  call void @llvm.dbg.declare(metadata !{i64* %x}, metadata !853), !dbg !854
  %2 = load %struct.LoadState** %1, align 4, !dbg !855
  %3 = bitcast i64* %x to i8*, !dbg !855
  call void @LoadBlock(%struct.LoadState* %2, i8* %3, i32 8), !dbg !855
  %4 = load i64* %x, align 8, !dbg !856
  ret i64 %4, !dbg !856
}

declare hidden %struct.TString* @luaS_newlstr(%struct.lua_State*, i8*, i32) #2

declare hidden %struct.TString* @luaS_createlngstrobj(%struct.lua_State*, i32) #2

; Function Attrs: nounwind
define internal void @checkliteral(%struct.LoadState* %S, i8* %s, i8* %msg) #0 {
  %1 = alloca %struct.LoadState*, align 4
  %2 = alloca i8*, align 4
  %3 = alloca i8*, align 4
  %buff = alloca [12 x i8], align 1
  %len = alloca i32, align 4
  store %struct.LoadState* %S, %struct.LoadState** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.LoadState** %1}, metadata !857), !dbg !858
  store i8* %s, i8** %2, align 4
  call void @llvm.dbg.declare(metadata !{i8** %2}, metadata !859), !dbg !860
  store i8* %msg, i8** %3, align 4
  call void @llvm.dbg.declare(metadata !{i8** %3}, metadata !861), !dbg !862
  call void @llvm.dbg.declare(metadata !{[12 x i8]* %buff}, metadata !863), !dbg !867
  call void @llvm.dbg.declare(metadata !{i32* %len}, metadata !868), !dbg !869
  %4 = load i8** %2, align 4, !dbg !870
  %5 = call i32 @strlen(i8* %4) #7, !dbg !870
  store i32 %5, i32* %len, align 4, !dbg !870
  %6 = load %struct.LoadState** %1, align 4, !dbg !871
  %7 = getelementptr inbounds [12 x i8]* %buff, i32 0, i32 0, !dbg !871
  %8 = load i32* %len, align 4, !dbg !871
  %9 = mul i32 %8, 1, !dbg !871
  call void @LoadBlock(%struct.LoadState* %6, i8* %7, i32 %9), !dbg !871
  %10 = load i8** %2, align 4, !dbg !872
  %11 = getelementptr inbounds [12 x i8]* %buff, i32 0, i32 0, !dbg !872
  %12 = load i32* %len, align 4, !dbg !872
  %13 = call i32 @memcmp(i8* %10, i8* %11, i32 %12) #7, !dbg !872
  %14 = icmp ne i32 %13, 0, !dbg !872
  br i1 %14, label %15, label %18, !dbg !872

; <label>:15                                      ; preds = %0
  %16 = load %struct.LoadState** %1, align 4, !dbg !874
  %17 = load i8** %3, align 4, !dbg !874
  call void @error(%struct.LoadState* %16, i8* %17) #6, !dbg !874
  unreachable, !dbg !874

; <label>:18                                      ; preds = %0
  ret void, !dbg !875
}

; Function Attrs: nounwind
define internal void @fchecksize(%struct.LoadState* %S, i32 %size, i8* %tname) #0 {
  %1 = alloca %struct.LoadState*, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 4
  store %struct.LoadState* %S, %struct.LoadState** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.LoadState** %1}, metadata !876), !dbg !877
  store i32 %size, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !878), !dbg !879
  store i8* %tname, i8** %3, align 4
  call void @llvm.dbg.declare(metadata !{i8** %3}, metadata !880), !dbg !881
  %4 = load %struct.LoadState** %1, align 4, !dbg !882
  %5 = call zeroext i8 @LoadByte(%struct.LoadState* %4), !dbg !882
  %6 = zext i8 %5 to i32, !dbg !882
  %7 = load i32* %2, align 4, !dbg !882
  %8 = icmp ne i32 %6, %7, !dbg !882
  br i1 %8, label %9, label %16, !dbg !882

; <label>:9                                       ; preds = %0
  %10 = load %struct.LoadState** %1, align 4, !dbg !884
  %11 = load %struct.LoadState** %1, align 4, !dbg !885
  %12 = getelementptr inbounds %struct.LoadState* %11, i32 0, i32 0, !dbg !885
  %13 = load %struct.lua_State** %12, align 4, !dbg !885
  %14 = load i8** %3, align 4, !dbg !885
  %15 = call i8* (%struct.lua_State*, i8*, ...)* @luaO_pushfstring(%struct.lua_State* %13, i8* getelementptr inbounds ([20 x i8]* @.str18, i32 0, i32 0), i8* %14), !dbg !885
  call void @error(%struct.LoadState* %10, i8* %15) #6, !dbg !884
  unreachable, !dbg !884

; <label>:16                                      ; preds = %0
  ret void, !dbg !886
}

; Function Attrs: nounwind readonly
declare i32 @strlen(i8*) #5

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i32) #5

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn }
attributes #7 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!xidane.fname = !{!403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460}
!xidane.function_declaration_type = !{!403, !461, !405, !462, !407, !463, !409, !464, !411, !465, !413, !466, !415, !467, !417, !468, !419, !469, !421, !470, !423, !470, !425, !470, !427, !470, !429, !470, !431, !465, !433, !471, !435, !472, !437, !473, !439, !474, !441, !475, !443, !476, !445, !477, !447, !478, !449, !479, !451, !480, !453, !481, !455, !482, !457, !483, !459, !484}
!xidane.function_declaration_filename = !{!403, !485, !405, !486, !407, !487, !409, !486, !411, !488, !413, !487, !415, !486, !417, !486, !419, !486, !421, !486, !423, !486, !425, !486, !427, !486, !429, !486, !431, !489, !433, !489, !435, !486, !437, !490, !439, !486, !441, !491, !443, !488, !445, !486, !447, !486, !449, !492, !451, !492, !453, !486, !455, !486, !457, !493, !459, !493}
!xidane.ExternC = !{!403, !407, !411, !413, !431, !433, !437, !441, !443, !449, !451, !457, !459}
!llvm.module.flags = !{!494, !495, !496, !497}
!llvm.ident = !{!498}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.0 (tags/RELEASE_350/final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src\lundump.c] [DW_LANG_C99]
!1 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src\5Clundump.c", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!2 = metadata !{}
!3 = metadata !{metadata !4, metadata !354, metadata !366, metadata !369, metadata !372, metadata !375, metadata !376, metadata !377, metadata !378, metadata !381, metadata !384, metadata !385, metadata !388, metadata !391, metadata !394, metadata !397, metadata !400}
!4 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"luaU_undump", metadata !"luaU_undump", metadata !"", i32 258, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, %struct.LClosure* (%struct.lua_State*, %struct.Zio*, i8*)* @luaU_undump, null, null, metadata !2, i32 258} ; [ DW_TAG_subprogram ] [line 258] [def] [luaU_undump]
!5 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lundump.c", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!6 = metadata !{i32 786473, metadata !5}          ; [ DW_TAG_file_type ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lundump.c]
!7 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!8 = metadata !{metadata !9, metadata !67, metadata !339, metadata !274}
!9 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from LClosure]
!10 = metadata !{i32 786454, metadata !11, null, metadata !"LClosure", i32 457, i64 0, i64 0, i64 0, i32 0, metadata !12} ; [ DW_TAG_typedef ] [LClosure] [line 457, size 0, align 0, offset 0] [from LClosure]
!11 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lobject.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!12 = metadata !{i32 786451, metadata !11, null, metadata !"LClosure", i32 453, i64 160, i64 32, i32 0, i32 0, null, metadata !13, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [LClosure] [line 453, size 160, align 32, offset 0] [def] [from ]
!13 = metadata !{metadata !14, metadata !25, metadata !26, metadata !27, metadata !28, metadata !29, metadata !335}
!14 = metadata !{i32 786445, metadata !11, metadata !12, metadata !"next", i32 454, i64 32, i64 32, i64 0, i32 0, metadata !15} ; [ DW_TAG_member ] [next] [line 454, size 32, align 32, offset 0] [from ]
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
!25 = metadata !{i32 786445, metadata !11, metadata !12, metadata !"tt", i32 454, i64 8, i64 8, i64 32, i32 0, metadata !21} ; [ DW_TAG_member ] [tt] [line 454, size 8, align 8, offset 32] [from lu_byte]
!26 = metadata !{i32 786445, metadata !11, metadata !12, metadata !"marked", i32 454, i64 8, i64 8, i64 40, i32 0, metadata !21} ; [ DW_TAG_member ] [marked] [line 454, size 8, align 8, offset 40] [from lu_byte]
!27 = metadata !{i32 786445, metadata !11, metadata !12, metadata !"nupvalues", i32 454, i64 8, i64 8, i64 48, i32 0, metadata !21} ; [ DW_TAG_member ] [nupvalues] [line 454, size 8, align 8, offset 48] [from lu_byte]
!28 = metadata !{i32 786445, metadata !11, metadata !12, metadata !"gclist", i32 454, i64 32, i64 32, i64 64, i32 0, metadata !15} ; [ DW_TAG_member ] [gclist] [line 454, size 32, align 32, offset 64] [from ]
!29 = metadata !{i32 786445, metadata !11, metadata !12, metadata !"p", i32 455, i64 32, i64 32, i64 96, i32 0, metadata !30} ; [ DW_TAG_member ] [p] [line 455, size 32, align 32, offset 96] [from ]
!30 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !31} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from Proto]
!31 = metadata !{i32 786451, metadata !11, null, metadata !"Proto", i32 407, i64 640, i64 32, i32 0, i32 0, null, metadata !32, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [Proto] [line 407, size 640, align 32, offset 0] [def] [from ]
!32 = metadata !{metadata !33, metadata !34, metadata !35, metadata !36, metadata !37, metadata !38, metadata !39, metadata !41, metadata !42, metadata !43, metadata !44, metadata !45, metadata !46, metadata !47, metadata !48, metadata !309, metadata !311, metadata !313, metadata !315, metadata !323, metadata !331, metadata !333, metadata !334}
!33 = metadata !{i32 786445, metadata !11, metadata !31, metadata !"next", i32 408, i64 32, i64 32, i64 0, i32 0, metadata !15} ; [ DW_TAG_member ] [next] [line 408, size 32, align 32, offset 0] [from ]
!34 = metadata !{i32 786445, metadata !11, metadata !31, metadata !"tt", i32 408, i64 8, i64 8, i64 32, i32 0, metadata !21} ; [ DW_TAG_member ] [tt] [line 408, size 8, align 8, offset 32] [from lu_byte]
!35 = metadata !{i32 786445, metadata !11, metadata !31, metadata !"marked", i32 408, i64 8, i64 8, i64 40, i32 0, metadata !21} ; [ DW_TAG_member ] [marked] [line 408, size 8, align 8, offset 40] [from lu_byte]
!36 = metadata !{i32 786445, metadata !11, metadata !31, metadata !"numparams", i32 409, i64 8, i64 8, i64 48, i32 0, metadata !21} ; [ DW_TAG_member ] [numparams] [line 409, size 8, align 8, offset 48] [from lu_byte]
!37 = metadata !{i32 786445, metadata !11, metadata !31, metadata !"is_vararg", i32 410, i64 8, i64 8, i64 56, i32 0, metadata !21} ; [ DW_TAG_member ] [is_vararg] [line 410, size 8, align 8, offset 56] [from lu_byte]
!38 = metadata !{i32 786445, metadata !11, metadata !31, metadata !"maxstacksize", i32 411, i64 8, i64 8, i64 64, i32 0, metadata !21} ; [ DW_TAG_member ] [maxstacksize] [line 411, size 8, align 8, offset 64] [from lu_byte]
!39 = metadata !{i32 786445, metadata !11, metadata !31, metadata !"sizeupvalues", i32 412, i64 32, i64 32, i64 96, i32 0, metadata !40} ; [ DW_TAG_member ] [sizeupvalues] [line 412, size 32, align 32, offset 96] [from int]
!40 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!41 = metadata !{i32 786445, metadata !11, metadata !31, metadata !"sizek", i32 413, i64 32, i64 32, i64 128, i32 0, metadata !40} ; [ DW_TAG_member ] [sizek] [line 413, size 32, align 32, offset 128] [from int]
!42 = metadata !{i32 786445, metadata !11, metadata !31, metadata !"sizecode", i32 414, i64 32, i64 32, i64 160, i32 0, metadata !40} ; [ DW_TAG_member ] [sizecode] [line 414, size 32, align 32, offset 160] [from int]
!43 = metadata !{i32 786445, metadata !11, metadata !31, metadata !"sizelineinfo", i32 415, i64 32, i64 32, i64 192, i32 0, metadata !40} ; [ DW_TAG_member ] [sizelineinfo] [line 415, size 32, align 32, offset 192] [from int]
!44 = metadata !{i32 786445, metadata !11, metadata !31, metadata !"sizep", i32 416, i64 32, i64 32, i64 224, i32 0, metadata !40} ; [ DW_TAG_member ] [sizep] [line 416, size 32, align 32, offset 224] [from int]
!45 = metadata !{i32 786445, metadata !11, metadata !31, metadata !"sizelocvars", i32 417, i64 32, i64 32, i64 256, i32 0, metadata !40} ; [ DW_TAG_member ] [sizelocvars] [line 417, size 32, align 32, offset 256] [from int]
!46 = metadata !{i32 786445, metadata !11, metadata !31, metadata !"linedefined", i32 418, i64 32, i64 32, i64 288, i32 0, metadata !40} ; [ DW_TAG_member ] [linedefined] [line 418, size 32, align 32, offset 288] [from int]
!47 = metadata !{i32 786445, metadata !11, metadata !31, metadata !"lastlinedefined", i32 419, i64 32, i64 32, i64 320, i32 0, metadata !40} ; [ DW_TAG_member ] [lastlinedefined] [line 419, size 32, align 32, offset 320] [from int]
!48 = metadata !{i32 786445, metadata !11, metadata !31, metadata !"k", i32 420, i64 32, i64 32, i64 352, i32 0, metadata !49} ; [ DW_TAG_member ] [k] [line 420, size 32, align 32, offset 352] [from ]
!49 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !50} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from TValue]
!50 = metadata !{i32 786454, metadata !11, null, metadata !"TValue", i32 115, i64 0, i64 0, i64 0, i32 0, metadata !51} ; [ DW_TAG_typedef ] [TValue] [line 115, size 0, align 0, offset 0] [from lua_TValue]
!51 = metadata !{i32 786451, metadata !11, null, metadata !"lua_TValue", i32 113, i64 128, i64 64, i32 0, i32 0, null, metadata !52, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [lua_TValue] [line 113, size 128, align 64, offset 0] [def] [from ]
!52 = metadata !{metadata !53, metadata !308}
!53 = metadata !{i32 786445, metadata !11, metadata !51, metadata !"value_", i32 114, i64 64, i64 64, i64 0, i32 0, metadata !54} ; [ DW_TAG_member ] [value_] [line 114, size 64, align 64, offset 0] [from Value]
!54 = metadata !{i32 786454, metadata !11, null, metadata !"Value", i32 107, i64 0, i64 0, i64 0, i32 0, metadata !55} ; [ DW_TAG_typedef ] [Value] [line 107, size 0, align 0, offset 0] [from Value]
!55 = metadata !{i32 786455, metadata !11, null, metadata !"Value", i32 100, i64 64, i64 64, i64 0, i32 0, null, metadata !56, i32 0, null, null, null} ; [ DW_TAG_union_type ] [Value] [line 100, size 64, align 64, offset 0] [def] [from ]
!56 = metadata !{metadata !57, metadata !58, metadata !60, metadata !61, metadata !304, metadata !307}
!57 = metadata !{i32 786445, metadata !11, metadata !55, metadata !"gc", i32 101, i64 32, i64 32, i64 0, i32 0, metadata !15} ; [ DW_TAG_member ] [gc] [line 101, size 32, align 32, offset 0] [from ]
!58 = metadata !{i32 786445, metadata !11, metadata !55, metadata !"p", i32 102, i64 32, i64 32, i64 0, i32 0, metadata !59} ; [ DW_TAG_member ] [p] [line 102, size 32, align 32, offset 0] [from ]
!59 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!60 = metadata !{i32 786445, metadata !11, metadata !55, metadata !"b", i32 103, i64 32, i64 32, i64 0, i32 0, metadata !40} ; [ DW_TAG_member ] [b] [line 103, size 32, align 32, offset 0] [from int]
!61 = metadata !{i32 786445, metadata !11, metadata !55, metadata !"f", i32 104, i64 32, i64 32, i64 0, i32 0, metadata !62} ; [ DW_TAG_member ] [f] [line 104, size 32, align 32, offset 0] [from lua_CFunction]
!62 = metadata !{i32 786454, metadata !63, null, metadata !"lua_CFunction", i32 105, i64 0, i64 0, i64 0, i32 0, metadata !64} ; [ DW_TAG_typedef ] [lua_CFunction] [line 105, size 0, align 0, offset 0] [from ]
!63 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lua.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!64 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !65} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!65 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !66, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!66 = metadata !{metadata !40, metadata !67}
!67 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !68} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from lua_State]
!68 = metadata !{i32 786454, metadata !63, null, metadata !"lua_State", i32 56, i64 0, i64 0, i64 0, i32 0, metadata !69} ; [ DW_TAG_typedef ] [lua_State] [line 56, size 0, align 0, offset 0] [from lua_State]
!69 = metadata !{i32 786451, metadata !70, null, metadata !"lua_State", i32 159, i64 960, i64 32, i32 0, i32 0, null, metadata !71, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [lua_State] [line 159, size 960, align 32, offset 0] [def] [from ]
!70 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lstate.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!71 = metadata !{metadata !72, metadata !73, metadata !74, metadata !75, metadata !77, metadata !78, metadata !80, metadata !198, metadata !236, metadata !237, metadata !238, metadata !239, metadata !256, metadata !257, metadata !258, metadata !261, metadata !262, metadata !292, metadata !293, metadata !294, metadata !295, metadata !296, metadata !297, metadata !298, metadata !303}
!72 = metadata !{i32 786445, metadata !70, metadata !69, metadata !"next", i32 160, i64 32, i64 32, i64 0, i32 0, metadata !15} ; [ DW_TAG_member ] [next] [line 160, size 32, align 32, offset 0] [from ]
!73 = metadata !{i32 786445, metadata !70, metadata !69, metadata !"tt", i32 160, i64 8, i64 8, i64 32, i32 0, metadata !21} ; [ DW_TAG_member ] [tt] [line 160, size 8, align 8, offset 32] [from lu_byte]
!74 = metadata !{i32 786445, metadata !70, metadata !69, metadata !"marked", i32 160, i64 8, i64 8, i64 40, i32 0, metadata !21} ; [ DW_TAG_member ] [marked] [line 160, size 8, align 8, offset 40] [from lu_byte]
!75 = metadata !{i32 786445, metadata !70, metadata !69, metadata !"nci", i32 161, i64 16, i64 16, i64 48, i32 0, metadata !76} ; [ DW_TAG_member ] [nci] [line 161, size 16, align 16, offset 48] [from unsigned short]
!76 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!77 = metadata !{i32 786445, metadata !70, metadata !69, metadata !"status", i32 162, i64 8, i64 8, i64 64, i32 0, metadata !21} ; [ DW_TAG_member ] [status] [line 162, size 8, align 8, offset 64] [from lu_byte]
!78 = metadata !{i32 786445, metadata !70, metadata !69, metadata !"top", i32 163, i64 32, i64 32, i64 96, i32 0, metadata !79} ; [ DW_TAG_member ] [top] [line 163, size 32, align 32, offset 96] [from StkId]
!79 = metadata !{i32 786454, metadata !11, null, metadata !"StkId", i32 294, i64 0, i64 0, i64 0, i32 0, metadata !49} ; [ DW_TAG_typedef ] [StkId] [line 294, size 0, align 0, offset 0] [from ]
!80 = metadata !{i32 786445, metadata !70, metadata !69, metadata !"l_G", i32 164, i64 32, i64 32, i64 128, i32 0, metadata !81} ; [ DW_TAG_member ] [l_G] [line 164, size 32, align 32, offset 128] [from ]
!81 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !82} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from global_State]
!82 = metadata !{i32 786454, metadata !70, null, metadata !"global_State", i32 153, i64 0, i64 0, i64 0, i32 0, metadata !83} ; [ DW_TAG_typedef ] [global_State] [line 153, size 0, align 0, offset 0] [from global_State]
!83 = metadata !{i32 786451, metadata !70, null, metadata !"global_State", i32 118, i64 5568, i64 64, i32 0, i32 0, null, metadata !84, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [global_State] [line 118, size 5568, align 64, offset 0] [def] [from ]
!84 = metadata !{metadata !85, metadata !93, metadata !94, metadata !97, metadata !98, metadata !100, metadata !101, metadata !125, metadata !126, metadata !127, metadata !128, metadata !129, metadata !130, metadata !131, metadata !132, metadata !134, metadata !135, metadata !136, metadata !137, metadata !138, metadata !139, metadata !140, metadata !141, metadata !142, metadata !144, metadata !145, metadata !146, metadata !147, metadata !148, metadata !149, metadata !154, metadata !155, metadata !159, metadata !193}
!85 = metadata !{i32 786445, metadata !70, metadata !83, metadata !"frealloc", i32 119, i64 32, i64 32, i64 0, i32 0, metadata !86} ; [ DW_TAG_member ] [frealloc] [line 119, size 32, align 32, offset 0] [from lua_Alloc]
!86 = metadata !{i32 786454, metadata !63, null, metadata !"lua_Alloc", i32 124, i64 0, i64 0, i64 0, i32 0, metadata !87} ; [ DW_TAG_typedef ] [lua_Alloc] [line 124, size 0, align 0, offset 0] [from ]
!87 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !88} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!88 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !89, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!89 = metadata !{metadata !59, metadata !59, metadata !59, metadata !90, metadata !90}
!90 = metadata !{i32 786454, metadata !91, null, metadata !"size_t", i32 216, i64 0, i64 0, i64 0, i32 0, metadata !92} ; [ DW_TAG_typedef ] [size_t] [line 216, size 0, align 0, offset 0] [from unsigned int]
!91 = metadata !{metadata !"D:/Xilinx/SDx/2016.3/SDK/gnu/aarch32/nt/gcc-arm-linux-gnueabi/lib/gcc/arm-linux-gnueabihf/5.2.1/include\5Cstddef.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!92 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!93 = metadata !{i32 786445, metadata !70, metadata !83, metadata !"ud", i32 120, i64 32, i64 32, i64 32, i32 0, metadata !59} ; [ DW_TAG_member ] [ud] [line 120, size 32, align 32, offset 32] [from ]
!94 = metadata !{i32 786445, metadata !70, metadata !83, metadata !"totalbytes", i32 121, i64 32, i64 32, i64 64, i32 0, metadata !95} ; [ DW_TAG_member ] [totalbytes] [line 121, size 32, align 32, offset 64] [from l_mem]
!95 = metadata !{i32 786454, metadata !22, null, metadata !"l_mem", i32 27, i64 0, i64 0, i64 0, i32 0, metadata !96} ; [ DW_TAG_typedef ] [l_mem] [line 27, size 0, align 0, offset 0] [from ptrdiff_t]
!96 = metadata !{i32 786454, metadata !91, null, metadata !"ptrdiff_t", i32 149, i64 0, i64 0, i64 0, i32 0, metadata !40} ; [ DW_TAG_typedef ] [ptrdiff_t] [line 149, size 0, align 0, offset 0] [from int]
!97 = metadata !{i32 786445, metadata !70, metadata !83, metadata !"GCdebt", i32 122, i64 32, i64 32, i64 96, i32 0, metadata !95} ; [ DW_TAG_member ] [GCdebt] [line 122, size 32, align 32, offset 96] [from l_mem]
!98 = metadata !{i32 786445, metadata !70, metadata !83, metadata !"GCmemtrav", i32 123, i64 32, i64 32, i64 128, i32 0, metadata !99} ; [ DW_TAG_member ] [GCmemtrav] [line 123, size 32, align 32, offset 128] [from lu_mem]
!99 = metadata !{i32 786454, metadata !22, null, metadata !"lu_mem", i32 26, i64 0, i64 0, i64 0, i32 0, metadata !90} ; [ DW_TAG_typedef ] [lu_mem] [line 26, size 0, align 0, offset 0] [from size_t]
!100 = metadata !{i32 786445, metadata !70, metadata !83, metadata !"GCestimate", i32 124, i64 32, i64 32, i64 160, i32 0, metadata !99} ; [ DW_TAG_member ] [GCestimate] [line 124, size 32, align 32, offset 160] [from lu_mem]
!101 = metadata !{i32 786445, metadata !70, metadata !83, metadata !"strt", i32 125, i64 96, i64 32, i64 192, i32 0, metadata !102} ; [ DW_TAG_member ] [strt] [line 125, size 96, align 32, offset 192] [from stringtable]
!102 = metadata !{i32 786454, metadata !70, null, metadata !"stringtable", i32 62, i64 0, i64 0, i64 0, i32 0, metadata !103} ; [ DW_TAG_typedef ] [stringtable] [line 62, size 0, align 0, offset 0] [from stringtable]
!103 = metadata !{i32 786451, metadata !70, null, metadata !"stringtable", i32 58, i64 96, i64 32, i32 0, i32 0, null, metadata !104, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [stringtable] [line 58, size 96, align 32, offset 0] [def] [from ]
!104 = metadata !{metadata !105, metadata !123, metadata !124}
!105 = metadata !{i32 786445, metadata !70, metadata !103, metadata !"hash", i32 59, i64 32, i64 32, i64 0, i32 0, metadata !106} ; [ DW_TAG_member ] [hash] [line 59, size 32, align 32, offset 0] [from ]
!106 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !107} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!107 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !108} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from TString]
!108 = metadata !{i32 786454, metadata !11, null, metadata !"TString", i32 312, i64 0, i64 0, i64 0, i32 0, metadata !109} ; [ DW_TAG_typedef ] [TString] [line 312, size 0, align 0, offset 0] [from TString]
!109 = metadata !{i32 786451, metadata !11, null, metadata !"TString", i32 303, i64 128, i64 32, i32 0, i32 0, null, metadata !110, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [TString] [line 303, size 128, align 32, offset 0] [def] [from ]
!110 = metadata !{metadata !111, metadata !112, metadata !113, metadata !114, metadata !115, metadata !116, metadata !117}
!111 = metadata !{i32 786445, metadata !11, metadata !109, metadata !"next", i32 304, i64 32, i64 32, i64 0, i32 0, metadata !15} ; [ DW_TAG_member ] [next] [line 304, size 32, align 32, offset 0] [from ]
!112 = metadata !{i32 786445, metadata !11, metadata !109, metadata !"tt", i32 304, i64 8, i64 8, i64 32, i32 0, metadata !21} ; [ DW_TAG_member ] [tt] [line 304, size 8, align 8, offset 32] [from lu_byte]
!113 = metadata !{i32 786445, metadata !11, metadata !109, metadata !"marked", i32 304, i64 8, i64 8, i64 40, i32 0, metadata !21} ; [ DW_TAG_member ] [marked] [line 304, size 8, align 8, offset 40] [from lu_byte]
!114 = metadata !{i32 786445, metadata !11, metadata !109, metadata !"extra", i32 305, i64 8, i64 8, i64 48, i32 0, metadata !21} ; [ DW_TAG_member ] [extra] [line 305, size 8, align 8, offset 48] [from lu_byte]
!115 = metadata !{i32 786445, metadata !11, metadata !109, metadata !"shrlen", i32 306, i64 8, i64 8, i64 56, i32 0, metadata !21} ; [ DW_TAG_member ] [shrlen] [line 306, size 8, align 8, offset 56] [from lu_byte]
!116 = metadata !{i32 786445, metadata !11, metadata !109, metadata !"hash", i32 307, i64 32, i64 32, i64 64, i32 0, metadata !92} ; [ DW_TAG_member ] [hash] [line 307, size 32, align 32, offset 64] [from unsigned int]
!117 = metadata !{i32 786445, metadata !11, metadata !109, metadata !"u", i32 311, i64 32, i64 32, i64 96, i32 0, metadata !118} ; [ DW_TAG_member ] [u] [line 311, size 32, align 32, offset 96] [from ]
!118 = metadata !{i32 786455, metadata !11, metadata !109, metadata !"", i32 308, i64 32, i64 32, i64 0, i32 0, null, metadata !119, i32 0, null, null, null} ; [ DW_TAG_union_type ] [line 308, size 32, align 32, offset 0] [def] [from ]
!119 = metadata !{metadata !120, metadata !121}
!120 = metadata !{i32 786445, metadata !11, metadata !118, metadata !"lnglen", i32 309, i64 32, i64 32, i64 0, i32 0, metadata !90} ; [ DW_TAG_member ] [lnglen] [line 309, size 32, align 32, offset 0] [from size_t]
!121 = metadata !{i32 786445, metadata !11, metadata !118, metadata !"hnext", i32 310, i64 32, i64 32, i64 0, i32 0, metadata !122} ; [ DW_TAG_member ] [hnext] [line 310, size 32, align 32, offset 0] [from ]
!122 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !109} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from TString]
!123 = metadata !{i32 786445, metadata !70, metadata !103, metadata !"nuse", i32 60, i64 32, i64 32, i64 32, i32 0, metadata !40} ; [ DW_TAG_member ] [nuse] [line 60, size 32, align 32, offset 32] [from int]
!124 = metadata !{i32 786445, metadata !70, metadata !103, metadata !"size", i32 61, i64 32, i64 32, i64 64, i32 0, metadata !40} ; [ DW_TAG_member ] [size] [line 61, size 32, align 32, offset 64] [from int]
!125 = metadata !{i32 786445, metadata !70, metadata !83, metadata !"l_registry", i32 126, i64 128, i64 64, i64 320, i32 0, metadata !50} ; [ DW_TAG_member ] [l_registry] [line 126, size 128, align 64, offset 320] [from TValue]
!126 = metadata !{i32 786445, metadata !70, metadata !83, metadata !"seed", i32 127, i64 32, i64 32, i64 448, i32 0, metadata !92} ; [ DW_TAG_member ] [seed] [line 127, size 32, align 32, offset 448] [from unsigned int]
!127 = metadata !{i32 786445, metadata !70, metadata !83, metadata !"currentwhite", i32 128, i64 8, i64 8, i64 480, i32 0, metadata !21} ; [ DW_TAG_member ] [currentwhite] [line 128, size 8, align 8, offset 480] [from lu_byte]
!128 = metadata !{i32 786445, metadata !70, metadata !83, metadata !"gcstate", i32 129, i64 8, i64 8, i64 488, i32 0, metadata !21} ; [ DW_TAG_member ] [gcstate] [line 129, size 8, align 8, offset 488] [from lu_byte]
!129 = metadata !{i32 786445, metadata !70, metadata !83, metadata !"gckind", i32 130, i64 8, i64 8, i64 496, i32 0, metadata !21} ; [ DW_TAG_member ] [gckind] [line 130, size 8, align 8, offset 496] [from lu_byte]
!130 = metadata !{i32 786445, metadata !70, metadata !83, metadata !"gcrunning", i32 131, i64 8, i64 8, i64 504, i32 0, metadata !21} ; [ DW_TAG_member ] [gcrunning] [line 131, size 8, align 8, offset 504] [from lu_byte]
!131 = metadata !{i32 786445, metadata !70, metadata !83, metadata !"allgc", i32 132, i64 32, i64 32, i64 512, i32 0, metadata !15} ; [ DW_TAG_member ] [allgc] [line 132, size 32, align 32, offset 512] [from ]
!132 = metadata !{i32 786445, metadata !70, metadata !83, metadata !"sweepgc", i32 133, i64 32, i64 32, i64 544, i32 0, metadata !133} ; [ DW_TAG_member ] [sweepgc] [line 133, size 32, align 32, offset 544] [from ]
!133 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !15} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!134 = metadata !{i32 786445, metadata !70, metadata !83, metadata !"finobj", i32 134, i64 32, i64 32, i64 576, i32 0, metadata !15} ; [ DW_TAG_member ] [finobj] [line 134, size 32, align 32, offset 576] [from ]
!135 = metadata !{i32 786445, metadata !70, metadata !83, metadata !"gray", i32 135, i64 32, i64 32, i64 608, i32 0, metadata !15} ; [ DW_TAG_member ] [gray] [line 135, size 32, align 32, offset 608] [from ]
!136 = metadata !{i32 786445, metadata !70, metadata !83, metadata !"grayagain", i32 136, i64 32, i64 32, i64 640, i32 0, metadata !15} ; [ DW_TAG_member ] [grayagain] [line 136, size 32, align 32, offset 640] [from ]
!137 = metadata !{i32 786445, metadata !70, metadata !83, metadata !"weak", i32 137, i64 32, i64 32, i64 672, i32 0, metadata !15} ; [ DW_TAG_member ] [weak] [line 137, size 32, align 32, offset 672] [from ]
!138 = metadata !{i32 786445, metadata !70, metadata !83, metadata !"ephemeron", i32 138, i64 32, i64 32, i64 704, i32 0, metadata !15} ; [ DW_TAG_member ] [ephemeron] [line 138, size 32, align 32, offset 704] [from ]
!139 = metadata !{i32 786445, metadata !70, metadata !83, metadata !"allweak", i32 139, i64 32, i64 32, i64 736, i32 0, metadata !15} ; [ DW_TAG_member ] [allweak] [line 139, size 32, align 32, offset 736] [from ]
!140 = metadata !{i32 786445, metadata !70, metadata !83, metadata !"tobefnz", i32 140, i64 32, i64 32, i64 768, i32 0, metadata !15} ; [ DW_TAG_member ] [tobefnz] [line 140, size 32, align 32, offset 768] [from ]
!141 = metadata !{i32 786445, metadata !70, metadata !83, metadata !"fixedgc", i32 141, i64 32, i64 32, i64 800, i32 0, metadata !15} ; [ DW_TAG_member ] [fixedgc] [line 141, size 32, align 32, offset 800] [from ]
!142 = metadata !{i32 786445, metadata !70, metadata !83, metadata !"twups", i32 142, i64 32, i64 32, i64 832, i32 0, metadata !143} ; [ DW_TAG_member ] [twups] [line 142, size 32, align 32, offset 832] [from ]
!143 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !69} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from lua_State]
!144 = metadata !{i32 786445, metadata !70, metadata !83, metadata !"gcfinnum", i32 143, i64 32, i64 32, i64 864, i32 0, metadata !92} ; [ DW_TAG_member ] [gcfinnum] [line 143, size 32, align 32, offset 864] [from unsigned int]
!145 = metadata !{i32 786445, metadata !70, metadata !83, metadata !"gcpause", i32 144, i64 32, i64 32, i64 896, i32 0, metadata !40} ; [ DW_TAG_member ] [gcpause] [line 144, size 32, align 32, offset 896] [from int]
!146 = metadata !{i32 786445, metadata !70, metadata !83, metadata !"gcstepmul", i32 145, i64 32, i64 32, i64 928, i32 0, metadata !40} ; [ DW_TAG_member ] [gcstepmul] [line 145, size 32, align 32, offset 928] [from int]
!147 = metadata !{i32 786445, metadata !70, metadata !83, metadata !"panic", i32 146, i64 32, i64 32, i64 960, i32 0, metadata !62} ; [ DW_TAG_member ] [panic] [line 146, size 32, align 32, offset 960] [from lua_CFunction]
!148 = metadata !{i32 786445, metadata !70, metadata !83, metadata !"mainthread", i32 147, i64 32, i64 32, i64 992, i32 0, metadata !143} ; [ DW_TAG_member ] [mainthread] [line 147, size 32, align 32, offset 992] [from ]
!149 = metadata !{i32 786445, metadata !70, metadata !83, metadata !"version", i32 148, i64 32, i64 32, i64 1024, i32 0, metadata !150} ; [ DW_TAG_member ] [version] [line 148, size 32, align 32, offset 1024] [from ]
!150 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !151} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!151 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !152} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from lua_Number]
!152 = metadata !{i32 786454, metadata !63, null, metadata !"lua_Number", i32 89, i64 0, i64 0, i64 0, i32 0, metadata !153} ; [ DW_TAG_typedef ] [lua_Number] [line 89, size 0, align 0, offset 0] [from double]
!153 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!154 = metadata !{i32 786445, metadata !70, metadata !83, metadata !"memerrmsg", i32 149, i64 32, i64 32, i64 1056, i32 0, metadata !107} ; [ DW_TAG_member ] [memerrmsg] [line 149, size 32, align 32, offset 1056] [from ]
!155 = metadata !{i32 786445, metadata !70, metadata !83, metadata !"tmname", i32 150, i64 768, i64 32, i64 1088, i32 0, metadata !156} ; [ DW_TAG_member ] [tmname] [line 150, size 768, align 32, offset 1088] [from ]
!156 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 768, i64 32, i32 0, i32 0, metadata !107, metadata !157, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 768, align 32, offset 0] [from ]
!157 = metadata !{metadata !158}
!158 = metadata !{i32 786465, i64 0, i64 24}      ; [ DW_TAG_subrange_type ] [0, 23]
!159 = metadata !{i32 786445, metadata !70, metadata !83, metadata !"mt", i32 151, i64 288, i64 32, i64 1856, i32 0, metadata !160} ; [ DW_TAG_member ] [mt] [line 151, size 288, align 32, offset 1856] [from ]
!160 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 288, i64 32, i32 0, i32 0, metadata !161, metadata !191, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 288, align 32, offset 0] [from ]
!161 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !162} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from Table]
!162 = metadata !{i32 786451, metadata !11, null, metadata !"Table", i32 497, i64 256, i64 32, i32 0, i32 0, null, metadata !163, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [Table] [line 497, size 256, align 32, offset 0] [def] [from ]
!163 = metadata !{metadata !164, metadata !165, metadata !166, metadata !167, metadata !168, metadata !169, metadata !170, metadata !171, metadata !188, metadata !189, metadata !190}
!164 = metadata !{i32 786445, metadata !11, metadata !162, metadata !"next", i32 498, i64 32, i64 32, i64 0, i32 0, metadata !15} ; [ DW_TAG_member ] [next] [line 498, size 32, align 32, offset 0] [from ]
!165 = metadata !{i32 786445, metadata !11, metadata !162, metadata !"tt", i32 498, i64 8, i64 8, i64 32, i32 0, metadata !21} ; [ DW_TAG_member ] [tt] [line 498, size 8, align 8, offset 32] [from lu_byte]
!166 = metadata !{i32 786445, metadata !11, metadata !162, metadata !"marked", i32 498, i64 8, i64 8, i64 40, i32 0, metadata !21} ; [ DW_TAG_member ] [marked] [line 498, size 8, align 8, offset 40] [from lu_byte]
!167 = metadata !{i32 786445, metadata !11, metadata !162, metadata !"flags", i32 499, i64 8, i64 8, i64 48, i32 0, metadata !21} ; [ DW_TAG_member ] [flags] [line 499, size 8, align 8, offset 48] [from lu_byte]
!168 = metadata !{i32 786445, metadata !11, metadata !162, metadata !"lsizenode", i32 500, i64 8, i64 8, i64 56, i32 0, metadata !21} ; [ DW_TAG_member ] [lsizenode] [line 500, size 8, align 8, offset 56] [from lu_byte]
!169 = metadata !{i32 786445, metadata !11, metadata !162, metadata !"sizearray", i32 501, i64 32, i64 32, i64 64, i32 0, metadata !92} ; [ DW_TAG_member ] [sizearray] [line 501, size 32, align 32, offset 64] [from unsigned int]
!170 = metadata !{i32 786445, metadata !11, metadata !162, metadata !"array", i32 502, i64 32, i64 32, i64 96, i32 0, metadata !49} ; [ DW_TAG_member ] [array] [line 502, size 32, align 32, offset 96] [from ]
!171 = metadata !{i32 786445, metadata !11, metadata !162, metadata !"node", i32 503, i64 32, i64 32, i64 128, i32 0, metadata !172} ; [ DW_TAG_member ] [node] [line 503, size 32, align 32, offset 128] [from ]
!172 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !173} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from Node]
!173 = metadata !{i32 786454, metadata !11, null, metadata !"Node", i32 494, i64 0, i64 0, i64 0, i32 0, metadata !174} ; [ DW_TAG_typedef ] [Node] [line 494, size 0, align 0, offset 0] [from Node]
!174 = metadata !{i32 786451, metadata !11, null, metadata !"Node", i32 491, i64 256, i64 64, i32 0, i32 0, null, metadata !175, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [Node] [line 491, size 256, align 64, offset 0] [def] [from ]
!175 = metadata !{metadata !176, metadata !177}
!176 = metadata !{i32 786445, metadata !11, metadata !174, metadata !"i_val", i32 492, i64 128, i64 64, i64 0, i32 0, metadata !50} ; [ DW_TAG_member ] [i_val] [line 492, size 128, align 64, offset 0] [from TValue]
!177 = metadata !{i32 786445, metadata !11, metadata !174, metadata !"i_key", i32 493, i64 128, i64 64, i64 128, i32 0, metadata !178} ; [ DW_TAG_member ] [i_key] [line 493, size 128, align 64, offset 128] [from TKey]
!178 = metadata !{i32 786454, metadata !11, null, metadata !"TKey", i32 481, i64 0, i64 0, i64 0, i32 0, metadata !179} ; [ DW_TAG_typedef ] [TKey] [line 481, size 0, align 0, offset 0] [from TKey]
!179 = metadata !{i32 786455, metadata !11, null, metadata !"TKey", i32 475, i64 128, i64 64, i64 0, i32 0, null, metadata !180, i32 0, null, null, null} ; [ DW_TAG_union_type ] [TKey] [line 475, size 128, align 64, offset 0] [def] [from ]
!180 = metadata !{metadata !181, metadata !187}
!181 = metadata !{i32 786445, metadata !11, metadata !179, metadata !"nk", i32 479, i64 128, i64 64, i64 0, i32 0, metadata !182} ; [ DW_TAG_member ] [nk] [line 479, size 128, align 64, offset 0] [from ]
!182 = metadata !{i32 786451, metadata !11, metadata !179, metadata !"", i32 476, i64 128, i64 64, i32 0, i32 0, null, metadata !183, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 476, size 128, align 64, offset 0] [def] [from ]
!183 = metadata !{metadata !184, metadata !185, metadata !186}
!184 = metadata !{i32 786445, metadata !11, metadata !182, metadata !"value_", i32 477, i64 64, i64 64, i64 0, i32 0, metadata !54} ; [ DW_TAG_member ] [value_] [line 477, size 64, align 64, offset 0] [from Value]
!185 = metadata !{i32 786445, metadata !11, metadata !182, metadata !"tt_", i32 477, i64 32, i64 32, i64 64, i32 0, metadata !40} ; [ DW_TAG_member ] [tt_] [line 477, size 32, align 32, offset 64] [from int]
!186 = metadata !{i32 786445, metadata !11, metadata !182, metadata !"next", i32 478, i64 32, i64 32, i64 96, i32 0, metadata !40} ; [ DW_TAG_member ] [next] [line 478, size 32, align 32, offset 96] [from int]
!187 = metadata !{i32 786445, metadata !11, metadata !179, metadata !"tvk", i32 480, i64 128, i64 64, i64 0, i32 0, metadata !50} ; [ DW_TAG_member ] [tvk] [line 480, size 128, align 64, offset 0] [from TValue]
!188 = metadata !{i32 786445, metadata !11, metadata !162, metadata !"lastfree", i32 504, i64 32, i64 32, i64 160, i32 0, metadata !172} ; [ DW_TAG_member ] [lastfree] [line 504, size 32, align 32, offset 160] [from ]
!189 = metadata !{i32 786445, metadata !11, metadata !162, metadata !"metatable", i32 505, i64 32, i64 32, i64 192, i32 0, metadata !161} ; [ DW_TAG_member ] [metatable] [line 505, size 32, align 32, offset 192] [from ]
!190 = metadata !{i32 786445, metadata !11, metadata !162, metadata !"gclist", i32 506, i64 32, i64 32, i64 224, i32 0, metadata !15} ; [ DW_TAG_member ] [gclist] [line 506, size 32, align 32, offset 224] [from ]
!191 = metadata !{metadata !192}
!192 = metadata !{i32 786465, i64 0, i64 9}       ; [ DW_TAG_subrange_type ] [0, 8]
!193 = metadata !{i32 786445, metadata !70, metadata !83, metadata !"strcache", i32 152, i64 3392, i64 32, i64 2144, i32 0, metadata !194} ; [ DW_TAG_member ] [strcache] [line 152, size 3392, align 32, offset 2144] [from ]
!194 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 3392, i64 32, i32 0, i32 0, metadata !107, metadata !195, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 3392, align 32, offset 0] [from ]
!195 = metadata !{metadata !196, metadata !197}
!196 = metadata !{i32 786465, i64 0, i64 53}      ; [ DW_TAG_subrange_type ] [0, 52]
!197 = metadata !{i32 786465, i64 0, i64 2}       ; [ DW_TAG_subrange_type ] [0, 1]
!198 = metadata !{i32 786445, metadata !70, metadata !69, metadata !"ci", i32 165, i64 32, i64 32, i64 160, i32 0, metadata !199} ; [ DW_TAG_member ] [ci] [line 165, size 32, align 32, offset 160] [from ]
!199 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !200} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from CallInfo]
!200 = metadata !{i32 786454, metadata !70, null, metadata !"CallInfo", i32 92, i64 0, i64 0, i64 0, i32 0, metadata !201} ; [ DW_TAG_typedef ] [CallInfo] [line 92, size 0, align 0, offset 0] [from CallInfo]
!201 = metadata !{i32 786451, metadata !70, null, metadata !"CallInfo", i32 74, i64 288, i64 32, i32 0, i32 0, null, metadata !202, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [CallInfo] [line 74, size 288, align 32, offset 0] [def] [from ]
!202 = metadata !{metadata !203, metadata !204, metadata !205, metadata !207, metadata !208, metadata !232, metadata !233, metadata !235}
!203 = metadata !{i32 786445, metadata !70, metadata !201, metadata !"func", i32 75, i64 32, i64 32, i64 0, i32 0, metadata !79} ; [ DW_TAG_member ] [func] [line 75, size 32, align 32, offset 0] [from StkId]
!204 = metadata !{i32 786445, metadata !70, metadata !201, metadata !"top", i32 76, i64 32, i64 32, i64 32, i32 0, metadata !79} ; [ DW_TAG_member ] [top] [line 76, size 32, align 32, offset 32] [from StkId]
!205 = metadata !{i32 786445, metadata !70, metadata !201, metadata !"previous", i32 77, i64 32, i64 32, i64 64, i32 0, metadata !206} ; [ DW_TAG_member ] [previous] [line 77, size 32, align 32, offset 64] [from ]
!206 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !201} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from CallInfo]
!207 = metadata !{i32 786445, metadata !70, metadata !201, metadata !"next", i32 77, i64 32, i64 32, i64 96, i32 0, metadata !206} ; [ DW_TAG_member ] [next] [line 77, size 32, align 32, offset 96] [from ]
!208 = metadata !{i32 786445, metadata !70, metadata !201, metadata !"u", i32 88, i64 96, i64 32, i64 128, i32 0, metadata !209} ; [ DW_TAG_member ] [u] [line 88, size 96, align 32, offset 128] [from ]
!209 = metadata !{i32 786455, metadata !70, metadata !201, metadata !"", i32 78, i64 96, i64 32, i64 0, i32 0, null, metadata !210, i32 0, null, null, null} ; [ DW_TAG_union_type ] [line 78, size 96, align 32, offset 0] [def] [from ]
!210 = metadata !{metadata !211, metadata !219}
!211 = metadata !{i32 786445, metadata !70, metadata !209, metadata !"l", i32 82, i64 64, i64 32, i64 0, i32 0, metadata !212} ; [ DW_TAG_member ] [l] [line 82, size 64, align 32, offset 0] [from ]
!212 = metadata !{i32 786451, metadata !70, metadata !209, metadata !"", i32 79, i64 64, i64 32, i32 0, i32 0, null, metadata !213, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 79, size 64, align 32, offset 0] [def] [from ]
!213 = metadata !{metadata !214, metadata !215}
!214 = metadata !{i32 786445, metadata !70, metadata !212, metadata !"base", i32 80, i64 32, i64 32, i64 0, i32 0, metadata !79} ; [ DW_TAG_member ] [base] [line 80, size 32, align 32, offset 0] [from StkId]
!215 = metadata !{i32 786445, metadata !70, metadata !212, metadata !"savedpc", i32 81, i64 32, i64 32, i64 32, i32 0, metadata !216} ; [ DW_TAG_member ] [savedpc] [line 81, size 32, align 32, offset 32] [from ]
!216 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !217} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!217 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !218} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from Instruction]
!218 = metadata !{i32 786454, metadata !22, null, metadata !"Instruction", i32 163, i64 0, i64 0, i64 0, i32 0, metadata !92} ; [ DW_TAG_typedef ] [Instruction] [line 163, size 0, align 0, offset 0] [from unsigned int]
!219 = metadata !{i32 786445, metadata !70, metadata !209, metadata !"c", i32 87, i64 96, i64 32, i64 0, i32 0, metadata !220} ; [ DW_TAG_member ] [c] [line 87, size 96, align 32, offset 0] [from ]
!220 = metadata !{i32 786451, metadata !70, metadata !209, metadata !"", i32 83, i64 96, i64 32, i32 0, i32 0, null, metadata !221, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 83, size 96, align 32, offset 0] [def] [from ]
!221 = metadata !{metadata !222, metadata !230, metadata !231}
!222 = metadata !{i32 786445, metadata !70, metadata !220, metadata !"k", i32 84, i64 32, i64 32, i64 0, i32 0, metadata !223} ; [ DW_TAG_member ] [k] [line 84, size 32, align 32, offset 0] [from lua_KFunction]
!223 = metadata !{i32 786454, metadata !63, null, metadata !"lua_KFunction", i32 110, i64 0, i64 0, i64 0, i32 0, metadata !224} ; [ DW_TAG_typedef ] [lua_KFunction] [line 110, size 0, align 0, offset 0] [from ]
!224 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !225} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!225 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !226, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!226 = metadata !{metadata !40, metadata !67, metadata !40, metadata !227}
!227 = metadata !{i32 786454, metadata !63, null, metadata !"lua_KContext", i32 99, i64 0, i64 0, i64 0, i32 0, metadata !228} ; [ DW_TAG_typedef ] [lua_KContext] [line 99, size 0, align 0, offset 0] [from intptr_t]
!228 = metadata !{i32 786454, metadata !229, null, metadata !"intptr_t", i32 125, i64 0, i64 0, i64 0, i32 0, metadata !40} ; [ DW_TAG_typedef ] [intptr_t] [line 125, size 0, align 0, offset 0] [from int]
!229 = metadata !{metadata !"D:/Xilinx/SDx/2016.3/SDK/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include\5Cstdint.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!230 = metadata !{i32 786445, metadata !70, metadata !220, metadata !"old_errfunc", i32 85, i64 32, i64 32, i64 32, i32 0, metadata !96} ; [ DW_TAG_member ] [old_errfunc] [line 85, size 32, align 32, offset 32] [from ptrdiff_t]
!231 = metadata !{i32 786445, metadata !70, metadata !220, metadata !"ctx", i32 86, i64 32, i64 32, i64 64, i32 0, metadata !227} ; [ DW_TAG_member ] [ctx] [line 86, size 32, align 32, offset 64] [from lua_KContext]
!232 = metadata !{i32 786445, metadata !70, metadata !201, metadata !"extra", i32 89, i64 32, i64 32, i64 224, i32 0, metadata !96} ; [ DW_TAG_member ] [extra] [line 89, size 32, align 32, offset 224] [from ptrdiff_t]
!233 = metadata !{i32 786445, metadata !70, metadata !201, metadata !"nresults", i32 90, i64 16, i64 16, i64 256, i32 0, metadata !234} ; [ DW_TAG_member ] [nresults] [line 90, size 16, align 16, offset 256] [from short]
!234 = metadata !{i32 786468, null, null, metadata !"short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [short] [line 0, size 16, align 16, offset 0, enc DW_ATE_signed]
!235 = metadata !{i32 786445, metadata !70, metadata !201, metadata !"callstatus", i32 91, i64 8, i64 8, i64 272, i32 0, metadata !21} ; [ DW_TAG_member ] [callstatus] [line 91, size 8, align 8, offset 272] [from lu_byte]
!236 = metadata !{i32 786445, metadata !70, metadata !69, metadata !"oldpc", i32 166, i64 32, i64 32, i64 192, i32 0, metadata !216} ; [ DW_TAG_member ] [oldpc] [line 166, size 32, align 32, offset 192] [from ]
!237 = metadata !{i32 786445, metadata !70, metadata !69, metadata !"stack_last", i32 167, i64 32, i64 32, i64 224, i32 0, metadata !79} ; [ DW_TAG_member ] [stack_last] [line 167, size 32, align 32, offset 224] [from StkId]
!238 = metadata !{i32 786445, metadata !70, metadata !69, metadata !"stack", i32 168, i64 32, i64 32, i64 256, i32 0, metadata !79} ; [ DW_TAG_member ] [stack] [line 168, size 32, align 32, offset 256] [from StkId]
!239 = metadata !{i32 786445, metadata !70, metadata !69, metadata !"openupval", i32 169, i64 32, i64 32, i64 288, i32 0, metadata !240} ; [ DW_TAG_member ] [openupval] [line 169, size 32, align 32, offset 288] [from ]
!240 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !241} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from UpVal]
!241 = metadata !{i32 786454, metadata !11, null, metadata !"UpVal", i32 436, i64 0, i64 0, i64 0, i32 0, metadata !242} ; [ DW_TAG_typedef ] [UpVal] [line 436, size 0, align 0, offset 0] [from UpVal]
!242 = metadata !{i32 786451, metadata !243, null, metadata !"UpVal", i32 35, i64 192, i64 64, i32 0, i32 0, null, metadata !244, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [UpVal] [line 35, size 192, align 64, offset 0] [def] [from ]
!243 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lfunc.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!244 = metadata !{metadata !245, metadata !246, metadata !247}
!245 = metadata !{i32 786445, metadata !243, metadata !242, metadata !"v", i32 36, i64 32, i64 32, i64 0, i32 0, metadata !49} ; [ DW_TAG_member ] [v] [line 36, size 32, align 32, offset 0] [from ]
!246 = metadata !{i32 786445, metadata !243, metadata !242, metadata !"refcount", i32 37, i64 32, i64 32, i64 32, i32 0, metadata !99} ; [ DW_TAG_member ] [refcount] [line 37, size 32, align 32, offset 32] [from lu_mem]
!247 = metadata !{i32 786445, metadata !243, metadata !242, metadata !"u", i32 44, i64 128, i64 64, i64 64, i32 0, metadata !248} ; [ DW_TAG_member ] [u] [line 44, size 128, align 64, offset 64] [from ]
!248 = metadata !{i32 786455, metadata !243, metadata !242, metadata !"", i32 38, i64 128, i64 64, i64 0, i32 0, null, metadata !249, i32 0, null, null, null} ; [ DW_TAG_union_type ] [line 38, size 128, align 64, offset 0] [def] [from ]
!249 = metadata !{metadata !250, metadata !255}
!250 = metadata !{i32 786445, metadata !243, metadata !248, metadata !"open", i32 42, i64 64, i64 32, i64 0, i32 0, metadata !251} ; [ DW_TAG_member ] [open] [line 42, size 64, align 32, offset 0] [from ]
!251 = metadata !{i32 786451, metadata !243, metadata !248, metadata !"", i32 39, i64 64, i64 32, i32 0, i32 0, null, metadata !252, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 39, size 64, align 32, offset 0] [def] [from ]
!252 = metadata !{metadata !253, metadata !254}
!253 = metadata !{i32 786445, metadata !243, metadata !251, metadata !"next", i32 40, i64 32, i64 32, i64 0, i32 0, metadata !240} ; [ DW_TAG_member ] [next] [line 40, size 32, align 32, offset 0] [from ]
!254 = metadata !{i32 786445, metadata !243, metadata !251, metadata !"touched", i32 41, i64 32, i64 32, i64 32, i32 0, metadata !40} ; [ DW_TAG_member ] [touched] [line 41, size 32, align 32, offset 32] [from int]
!255 = metadata !{i32 786445, metadata !243, metadata !248, metadata !"value", i32 43, i64 128, i64 64, i64 0, i32 0, metadata !50} ; [ DW_TAG_member ] [value] [line 43, size 128, align 64, offset 0] [from TValue]
!256 = metadata !{i32 786445, metadata !70, metadata !69, metadata !"gclist", i32 170, i64 32, i64 32, i64 320, i32 0, metadata !15} ; [ DW_TAG_member ] [gclist] [line 170, size 32, align 32, offset 320] [from ]
!257 = metadata !{i32 786445, metadata !70, metadata !69, metadata !"twups", i32 171, i64 32, i64 32, i64 352, i32 0, metadata !143} ; [ DW_TAG_member ] [twups] [line 171, size 32, align 32, offset 352] [from ]
!258 = metadata !{i32 786445, metadata !70, metadata !69, metadata !"errorJmp", i32 172, i64 32, i64 32, i64 384, i32 0, metadata !259} ; [ DW_TAG_member ] [errorJmp] [line 172, size 32, align 32, offset 384] [from ]
!259 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !260} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from lua_longjmp]
!260 = metadata !{i32 786451, metadata !70, null, metadata !"lua_longjmp", i32 33, i64 0, i64 0, i32 0, i32 4, null, null, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [lua_longjmp] [line 33, size 0, align 0, offset 0] [decl] [from ]
!261 = metadata !{i32 786445, metadata !70, metadata !69, metadata !"base_ci", i32 173, i64 288, i64 32, i64 416, i32 0, metadata !200} ; [ DW_TAG_member ] [base_ci] [line 173, size 288, align 32, offset 416] [from CallInfo]
!262 = metadata !{i32 786445, metadata !70, metadata !69, metadata !"hook", i32 174, i64 32, i64 32, i64 704, i32 0, metadata !263} ; [ DW_TAG_member ] [hook] [line 174, size 32, align 32, offset 704] [from ]
!263 = metadata !{i32 786485, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !264} ; [ DW_TAG_volatile_type ] [line 0, size 0, align 0, offset 0] [from lua_Hook]
!264 = metadata !{i32 786454, metadata !63, null, metadata !"lua_Hook", i32 421, i64 0, i64 0, i64 0, i32 0, metadata !265} ; [ DW_TAG_typedef ] [lua_Hook] [line 421, size 0, align 0, offset 0] [from ]
!265 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !266} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!266 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !267, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!267 = metadata !{null, metadata !67, metadata !268}
!268 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !269} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from lua_Debug]
!269 = metadata !{i32 786454, metadata !63, null, metadata !"lua_Debug", i32 417, i64 0, i64 0, i64 0, i32 0, metadata !270} ; [ DW_TAG_typedef ] [lua_Debug] [line 417, size 0, align 0, offset 0] [from lua_Debug]
!270 = metadata !{i32 786451, metadata !63, null, metadata !"lua_Debug", i32 441, i64 800, i64 32, i32 0, i32 0, null, metadata !271, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [lua_Debug] [line 441, size 800, align 32, offset 0] [def] [from ]
!271 = metadata !{metadata !272, metadata !273, metadata !277, metadata !278, metadata !279, metadata !280, metadata !281, metadata !282, metadata !283, metadata !284, metadata !285, metadata !286, metadata !287, metadata !291}
!272 = metadata !{i32 786445, metadata !63, metadata !270, metadata !"event", i32 442, i64 32, i64 32, i64 0, i32 0, metadata !40} ; [ DW_TAG_member ] [event] [line 442, size 32, align 32, offset 0] [from int]
!273 = metadata !{i32 786445, metadata !63, metadata !270, metadata !"name", i32 443, i64 32, i64 32, i64 32, i32 0, metadata !274} ; [ DW_TAG_member ] [name] [line 443, size 32, align 32, offset 32] [from ]
!274 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !275} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!275 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !276} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!276 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!277 = metadata !{i32 786445, metadata !63, metadata !270, metadata !"namewhat", i32 444, i64 32, i64 32, i64 64, i32 0, metadata !274} ; [ DW_TAG_member ] [namewhat] [line 444, size 32, align 32, offset 64] [from ]
!278 = metadata !{i32 786445, metadata !63, metadata !270, metadata !"what", i32 445, i64 32, i64 32, i64 96, i32 0, metadata !274} ; [ DW_TAG_member ] [what] [line 445, size 32, align 32, offset 96] [from ]
!279 = metadata !{i32 786445, metadata !63, metadata !270, metadata !"source", i32 446, i64 32, i64 32, i64 128, i32 0, metadata !274} ; [ DW_TAG_member ] [source] [line 446, size 32, align 32, offset 128] [from ]
!280 = metadata !{i32 786445, metadata !63, metadata !270, metadata !"currentline", i32 447, i64 32, i64 32, i64 160, i32 0, metadata !40} ; [ DW_TAG_member ] [currentline] [line 447, size 32, align 32, offset 160] [from int]
!281 = metadata !{i32 786445, metadata !63, metadata !270, metadata !"linedefined", i32 448, i64 32, i64 32, i64 192, i32 0, metadata !40} ; [ DW_TAG_member ] [linedefined] [line 448, size 32, align 32, offset 192] [from int]
!282 = metadata !{i32 786445, metadata !63, metadata !270, metadata !"lastlinedefined", i32 449, i64 32, i64 32, i64 224, i32 0, metadata !40} ; [ DW_TAG_member ] [lastlinedefined] [line 449, size 32, align 32, offset 224] [from int]
!283 = metadata !{i32 786445, metadata !63, metadata !270, metadata !"nups", i32 450, i64 8, i64 8, i64 256, i32 0, metadata !23} ; [ DW_TAG_member ] [nups] [line 450, size 8, align 8, offset 256] [from unsigned char]
!284 = metadata !{i32 786445, metadata !63, metadata !270, metadata !"nparams", i32 451, i64 8, i64 8, i64 264, i32 0, metadata !23} ; [ DW_TAG_member ] [nparams] [line 451, size 8, align 8, offset 264] [from unsigned char]
!285 = metadata !{i32 786445, metadata !63, metadata !270, metadata !"isvararg", i32 452, i64 8, i64 8, i64 272, i32 0, metadata !276} ; [ DW_TAG_member ] [isvararg] [line 452, size 8, align 8, offset 272] [from char]
!286 = metadata !{i32 786445, metadata !63, metadata !270, metadata !"istailcall", i32 453, i64 8, i64 8, i64 280, i32 0, metadata !276} ; [ DW_TAG_member ] [istailcall] [line 453, size 8, align 8, offset 280] [from char]
!287 = metadata !{i32 786445, metadata !63, metadata !270, metadata !"short_src", i32 454, i64 480, i64 8, i64 288, i32 0, metadata !288} ; [ DW_TAG_member ] [short_src] [line 454, size 480, align 8, offset 288] [from ]
!288 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 480, i64 8, i32 0, i32 0, metadata !276, metadata !289, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 480, align 8, offset 0] [from char]
!289 = metadata !{metadata !290}
!290 = metadata !{i32 786465, i64 0, i64 60}      ; [ DW_TAG_subrange_type ] [0, 59]
!291 = metadata !{i32 786445, metadata !63, metadata !270, metadata !"i_ci", i32 456, i64 32, i64 32, i64 768, i32 0, metadata !206} ; [ DW_TAG_member ] [i_ci] [line 456, size 32, align 32, offset 768] [from ]
!292 = metadata !{i32 786445, metadata !70, metadata !69, metadata !"errfunc", i32 175, i64 32, i64 32, i64 736, i32 0, metadata !96} ; [ DW_TAG_member ] [errfunc] [line 175, size 32, align 32, offset 736] [from ptrdiff_t]
!293 = metadata !{i32 786445, metadata !70, metadata !69, metadata !"stacksize", i32 176, i64 32, i64 32, i64 768, i32 0, metadata !40} ; [ DW_TAG_member ] [stacksize] [line 176, size 32, align 32, offset 768] [from int]
!294 = metadata !{i32 786445, metadata !70, metadata !69, metadata !"basehookcount", i32 177, i64 32, i64 32, i64 800, i32 0, metadata !40} ; [ DW_TAG_member ] [basehookcount] [line 177, size 32, align 32, offset 800] [from int]
!295 = metadata !{i32 786445, metadata !70, metadata !69, metadata !"hookcount", i32 178, i64 32, i64 32, i64 832, i32 0, metadata !40} ; [ DW_TAG_member ] [hookcount] [line 178, size 32, align 32, offset 832] [from int]
!296 = metadata !{i32 786445, metadata !70, metadata !69, metadata !"nny", i32 179, i64 16, i64 16, i64 864, i32 0, metadata !76} ; [ DW_TAG_member ] [nny] [line 179, size 16, align 16, offset 864] [from unsigned short]
!297 = metadata !{i32 786445, metadata !70, metadata !69, metadata !"nCcalls", i32 180, i64 16, i64 16, i64 880, i32 0, metadata !76} ; [ DW_TAG_member ] [nCcalls] [line 180, size 16, align 16, offset 880] [from unsigned short]
!298 = metadata !{i32 786445, metadata !70, metadata !69, metadata !"hookmask", i32 181, i64 32, i64 32, i64 896, i32 0, metadata !299} ; [ DW_TAG_member ] [hookmask] [line 181, size 32, align 32, offset 896] [from sig_atomic_t]
!299 = metadata !{i32 786454, metadata !300, null, metadata !"sig_atomic_t", i32 40, i64 0, i64 0, i64 0, i32 0, metadata !301} ; [ DW_TAG_typedef ] [sig_atomic_t] [line 40, size 0, align 0, offset 0] [from __sig_atomic_t]
!300 = metadata !{metadata !"D:/Xilinx/SDx/2016.3/SDK/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include\5Csignal.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!301 = metadata !{i32 786454, metadata !302, null, metadata !"__sig_atomic_t", i32 22, i64 0, i64 0, i64 0, i32 0, metadata !40} ; [ DW_TAG_typedef ] [__sig_atomic_t] [line 22, size 0, align 0, offset 0] [from int]
!302 = metadata !{metadata !"D:/Xilinx/SDx/2016.3/SDK/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include\5Cbits/sigset.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!303 = metadata !{i32 786445, metadata !70, metadata !69, metadata !"allowhook", i32 182, i64 8, i64 8, i64 928, i32 0, metadata !21} ; [ DW_TAG_member ] [allowhook] [line 182, size 8, align 8, offset 928] [from lu_byte]
!304 = metadata !{i32 786445, metadata !11, metadata !55, metadata !"i", i32 105, i64 64, i64 64, i64 0, i32 0, metadata !305} ; [ DW_TAG_member ] [i] [line 105, size 64, align 64, offset 0] [from lua_Integer]
!305 = metadata !{i32 786454, metadata !63, null, metadata !"lua_Integer", i32 93, i64 0, i64 0, i64 0, i32 0, metadata !306} ; [ DW_TAG_typedef ] [lua_Integer] [line 93, size 0, align 0, offset 0] [from long long int]
!306 = metadata !{i32 786468, null, null, metadata !"long long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!307 = metadata !{i32 786445, metadata !11, metadata !55, metadata !"n", i32 106, i64 64, i64 64, i64 0, i32 0, metadata !152} ; [ DW_TAG_member ] [n] [line 106, size 64, align 64, offset 0] [from lua_Number]
!308 = metadata !{i32 786445, metadata !11, metadata !51, metadata !"tt_", i32 114, i64 32, i64 32, i64 64, i32 0, metadata !40} ; [ DW_TAG_member ] [tt_] [line 114, size 32, align 32, offset 64] [from int]
!309 = metadata !{i32 786445, metadata !11, metadata !31, metadata !"code", i32 421, i64 32, i64 32, i64 384, i32 0, metadata !310} ; [ DW_TAG_member ] [code] [line 421, size 32, align 32, offset 384] [from ]
!310 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !218} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from Instruction]
!311 = metadata !{i32 786445, metadata !11, metadata !31, metadata !"p", i32 422, i64 32, i64 32, i64 416, i32 0, metadata !312} ; [ DW_TAG_member ] [p] [line 422, size 32, align 32, offset 416] [from ]
!312 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !30} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!313 = metadata !{i32 786445, metadata !11, metadata !31, metadata !"lineinfo", i32 423, i64 32, i64 32, i64 448, i32 0, metadata !314} ; [ DW_TAG_member ] [lineinfo] [line 423, size 32, align 32, offset 448] [from ]
!314 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !40} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from int]
!315 = metadata !{i32 786445, metadata !11, metadata !31, metadata !"locvars", i32 424, i64 32, i64 32, i64 480, i32 0, metadata !316} ; [ DW_TAG_member ] [locvars] [line 424, size 32, align 32, offset 480] [from ]
!316 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !317} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from LocVar]
!317 = metadata !{i32 786454, metadata !11, null, metadata !"LocVar", i32 401, i64 0, i64 0, i64 0, i32 0, metadata !318} ; [ DW_TAG_typedef ] [LocVar] [line 401, size 0, align 0, offset 0] [from LocVar]
!318 = metadata !{i32 786451, metadata !11, null, metadata !"LocVar", i32 397, i64 96, i64 32, i32 0, i32 0, null, metadata !319, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [LocVar] [line 397, size 96, align 32, offset 0] [def] [from ]
!319 = metadata !{metadata !320, metadata !321, metadata !322}
!320 = metadata !{i32 786445, metadata !11, metadata !318, metadata !"varname", i32 398, i64 32, i64 32, i64 0, i32 0, metadata !107} ; [ DW_TAG_member ] [varname] [line 398, size 32, align 32, offset 0] [from ]
!321 = metadata !{i32 786445, metadata !11, metadata !318, metadata !"startpc", i32 399, i64 32, i64 32, i64 32, i32 0, metadata !40} ; [ DW_TAG_member ] [startpc] [line 399, size 32, align 32, offset 32] [from int]
!322 = metadata !{i32 786445, metadata !11, metadata !318, metadata !"endpc", i32 400, i64 32, i64 32, i64 64, i32 0, metadata !40} ; [ DW_TAG_member ] [endpc] [line 400, size 32, align 32, offset 64] [from int]
!323 = metadata !{i32 786445, metadata !11, metadata !31, metadata !"upvalues", i32 425, i64 32, i64 32, i64 512, i32 0, metadata !324} ; [ DW_TAG_member ] [upvalues] [line 425, size 32, align 32, offset 512] [from ]
!324 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !325} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from Upvaldesc]
!325 = metadata !{i32 786454, metadata !11, null, metadata !"Upvaldesc", i32 390, i64 0, i64 0, i64 0, i32 0, metadata !326} ; [ DW_TAG_typedef ] [Upvaldesc] [line 390, size 0, align 0, offset 0] [from Upvaldesc]
!326 = metadata !{i32 786451, metadata !11, null, metadata !"Upvaldesc", i32 386, i64 64, i64 32, i32 0, i32 0, null, metadata !327, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [Upvaldesc] [line 386, size 64, align 32, offset 0] [def] [from ]
!327 = metadata !{metadata !328, metadata !329, metadata !330}
!328 = metadata !{i32 786445, metadata !11, metadata !326, metadata !"name", i32 387, i64 32, i64 32, i64 0, i32 0, metadata !107} ; [ DW_TAG_member ] [name] [line 387, size 32, align 32, offset 0] [from ]
!329 = metadata !{i32 786445, metadata !11, metadata !326, metadata !"instack", i32 388, i64 8, i64 8, i64 32, i32 0, metadata !21} ; [ DW_TAG_member ] [instack] [line 388, size 8, align 8, offset 32] [from lu_byte]
!330 = metadata !{i32 786445, metadata !11, metadata !326, metadata !"idx", i32 389, i64 8, i64 8, i64 40, i32 0, metadata !21} ; [ DW_TAG_member ] [idx] [line 389, size 8, align 8, offset 40] [from lu_byte]
!331 = metadata !{i32 786445, metadata !11, metadata !31, metadata !"cache", i32 426, i64 32, i64 32, i64 544, i32 0, metadata !332} ; [ DW_TAG_member ] [cache] [line 426, size 32, align 32, offset 544] [from ]
!332 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !12} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from LClosure]
!333 = metadata !{i32 786445, metadata !11, metadata !31, metadata !"source", i32 427, i64 32, i64 32, i64 576, i32 0, metadata !107} ; [ DW_TAG_member ] [source] [line 427, size 32, align 32, offset 576] [from ]
!334 = metadata !{i32 786445, metadata !11, metadata !31, metadata !"gclist", i32 428, i64 32, i64 32, i64 608, i32 0, metadata !15} ; [ DW_TAG_member ] [gclist] [line 428, size 32, align 32, offset 608] [from ]
!335 = metadata !{i32 786445, metadata !11, metadata !12, metadata !"upvals", i32 456, i64 32, i64 32, i64 128, i32 0, metadata !336} ; [ DW_TAG_member ] [upvals] [line 456, size 32, align 32, offset 128] [from ]
!336 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 32, i64 32, i32 0, i32 0, metadata !240, metadata !337, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 32, align 32, offset 0] [from ]
!337 = metadata !{metadata !338}
!338 = metadata !{i32 786465, i64 0, i64 1}       ; [ DW_TAG_subrange_type ] [0, 0]
!339 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !340} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ZIO]
!340 = metadata !{i32 786454, metadata !341, null, metadata !"ZIO", i32 18, i64 0, i64 0, i64 0, i32 0, metadata !342} ; [ DW_TAG_typedef ] [ZIO] [line 18, size 0, align 0, offset 0] [from Zio]
!341 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lzio.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!342 = metadata !{i32 786451, metadata !341, null, metadata !"Zio", i32 55, i64 160, i64 32, i32 0, i32 0, null, metadata !343, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [Zio] [line 55, size 160, align 32, offset 0] [def] [from ]
!343 = metadata !{metadata !344, metadata !345, metadata !346, metadata !352, metadata !353}
!344 = metadata !{i32 786445, metadata !341, metadata !342, metadata !"n", i32 56, i64 32, i64 32, i64 0, i32 0, metadata !90} ; [ DW_TAG_member ] [n] [line 56, size 32, align 32, offset 0] [from size_t]
!345 = metadata !{i32 786445, metadata !341, metadata !342, metadata !"p", i32 57, i64 32, i64 32, i64 32, i32 0, metadata !274} ; [ DW_TAG_member ] [p] [line 57, size 32, align 32, offset 32] [from ]
!346 = metadata !{i32 786445, metadata !341, metadata !342, metadata !"reader", i32 58, i64 32, i64 32, i64 64, i32 0, metadata !347} ; [ DW_TAG_member ] [reader] [line 58, size 32, align 32, offset 64] [from lua_Reader]
!347 = metadata !{i32 786454, metadata !63, null, metadata !"lua_Reader", i32 116, i64 0, i64 0, i64 0, i32 0, metadata !348} ; [ DW_TAG_typedef ] [lua_Reader] [line 116, size 0, align 0, offset 0] [from ]
!348 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !349} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!349 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !350, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!350 = metadata !{metadata !274, metadata !67, metadata !59, metadata !351}
!351 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !90} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from size_t]
!352 = metadata !{i32 786445, metadata !341, metadata !342, metadata !"data", i32 59, i64 32, i64 32, i64 96, i32 0, metadata !59} ; [ DW_TAG_member ] [data] [line 59, size 32, align 32, offset 96] [from ]
!353 = metadata !{i32 786445, metadata !341, metadata !342, metadata !"L", i32 60, i64 32, i64 32, i64 128, i32 0, metadata !67} ; [ DW_TAG_member ] [L] [line 60, size 32, align 32, offset 128] [from ]
!354 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"LoadFunction", metadata !"LoadFunction", metadata !"", i32 202, metadata !355, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.LoadState*, %struct.Proto*, %struct.TString*)* @LoadFunction, null, null, metadata !2, i32 202} ; [ DW_TAG_subprogram ] [line 202] [local] [def] [LoadFunction]
!355 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !356, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!356 = metadata !{null, metadata !357, metadata !364, metadata !107}
!357 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !358} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from LoadState]
!358 = metadata !{i32 786454, metadata !5, null, metadata !"LoadState", i32 36, i64 0, i64 0, i64 0, i32 0, metadata !359} ; [ DW_TAG_typedef ] [LoadState] [line 36, size 0, align 0, offset 0] [from ]
!359 = metadata !{i32 786451, metadata !5, null, metadata !"", i32 32, i64 96, i64 32, i32 0, i32 0, null, metadata !360, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 32, size 96, align 32, offset 0] [def] [from ]
!360 = metadata !{metadata !361, metadata !362, metadata !363}
!361 = metadata !{i32 786445, metadata !5, metadata !359, metadata !"L", i32 33, i64 32, i64 32, i64 0, i32 0, metadata !67} ; [ DW_TAG_member ] [L] [line 33, size 32, align 32, offset 0] [from ]
!362 = metadata !{i32 786445, metadata !5, metadata !359, metadata !"Z", i32 34, i64 32, i64 32, i64 32, i32 0, metadata !339} ; [ DW_TAG_member ] [Z] [line 34, size 32, align 32, offset 32] [from ]
!363 = metadata !{i32 786445, metadata !5, metadata !359, metadata !"name", i32 35, i64 32, i64 32, i64 64, i32 0, metadata !274} ; [ DW_TAG_member ] [name] [line 35, size 32, align 32, offset 64] [from ]
!364 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !365} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from Proto]
!365 = metadata !{i32 786454, metadata !11, null, metadata !"Proto", i32 429, i64 0, i64 0, i64 0, i32 0, metadata !31} ; [ DW_TAG_typedef ] [Proto] [line 429, size 0, align 0, offset 0] [from Proto]
!366 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"LoadDebug", metadata !"LoadDebug", metadata !"", i32 180, metadata !367, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.LoadState*, %struct.Proto*)* @LoadDebug, null, null, metadata !2, i32 180} ; [ DW_TAG_subprogram ] [line 180] [local] [def] [LoadDebug]
!367 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !368, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!368 = metadata !{null, metadata !357, metadata !364}
!369 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"LoadBlock", metadata !"LoadBlock", metadata !"", i32 51, metadata !370, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.LoadState*, i8*, i32)* @LoadBlock, null, null, metadata !2, i32 51} ; [ DW_TAG_subprogram ] [line 51] [local] [def] [LoadBlock]
!370 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !371, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!371 = metadata !{null, metadata !357, metadata !59, metadata !90}
!372 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"error", metadata !"error", metadata !"", i32 39, metadata !373, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.LoadState*, i8*)* @error, null, null, metadata !2, i32 39} ; [ DW_TAG_subprogram ] [line 39] [local] [def] [error]
!373 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !374, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!374 = metadata !{null, metadata !357, metadata !274}
!375 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"LoadProtos", metadata !"LoadProtos", metadata !"", i32 152, metadata !367, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.LoadState*, %struct.Proto*)* @LoadProtos, null, null, metadata !2, i32 152} ; [ DW_TAG_subprogram ] [line 152] [local] [def] [LoadProtos]
!376 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"LoadUpvalues", metadata !"LoadUpvalues", metadata !"", i32 166, metadata !367, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.LoadState*, %struct.Proto*)* @LoadUpvalues, null, null, metadata !2, i32 166} ; [ DW_TAG_subprogram ] [line 166] [local] [def] [LoadUpvalues]
!377 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"LoadConstants", metadata !"LoadConstants", metadata !"", i32 118, metadata !367, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.LoadState*, %struct.Proto*)* @LoadConstants, null, null, metadata !2, i32 118} ; [ DW_TAG_subprogram ] [line 118] [local] [def] [LoadConstants]
!378 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"LoadInteger", metadata !"LoadInteger", metadata !"", i32 81, metadata !379, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i64 (%struct.LoadState*)* @LoadInteger, null, null, metadata !2, i32 81} ; [ DW_TAG_subprogram ] [line 81] [local] [def] [LoadInteger]
!379 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !380, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!380 = metadata !{metadata !305, metadata !357}
!381 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"LoadNumber", metadata !"LoadNumber", metadata !"", i32 74, metadata !382, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, double (%struct.LoadState*)* @LoadNumber, null, null, metadata !2, i32 74} ; [ DW_TAG_subprogram ] [line 74] [local] [def] [LoadNumber]
!382 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !383, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!383 = metadata !{metadata !152, metadata !357}
!384 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"LoadCode", metadata !"LoadCode", metadata !"", i32 107, metadata !367, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.LoadState*, %struct.Proto*)* @LoadCode, null, null, metadata !2, i32 107} ; [ DW_TAG_subprogram ] [line 107] [local] [def] [LoadCode]
!385 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"LoadInt", metadata !"LoadInt", metadata !"", i32 67, metadata !386, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.LoadState*)* @LoadInt, null, null, metadata !2, i32 67} ; [ DW_TAG_subprogram ] [line 67] [local] [def] [LoadInt]
!386 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !387, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!387 = metadata !{metadata !40, metadata !357}
!388 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"LoadString", metadata !"LoadString", metadata !"", i32 88, metadata !389, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, %struct.TString* (%struct.LoadState*)* @LoadString, null, null, metadata !2, i32 88} ; [ DW_TAG_subprogram ] [line 88] [local] [def] [LoadString]
!389 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !390, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!390 = metadata !{metadata !107, metadata !357}
!391 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"LoadByte", metadata !"LoadByte", metadata !"", i32 60, metadata !392, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8 (%struct.LoadState*)* @LoadByte, null, null, metadata !2, i32 60} ; [ DW_TAG_subprogram ] [line 60] [local] [def] [LoadByte]
!392 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !393, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!393 = metadata !{metadata !21, metadata !357}
!394 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"checkHeader", metadata !"checkHeader", metadata !"", i32 236, metadata !395, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.LoadState*)* @checkHeader, null, null, metadata !2, i32 236} ; [ DW_TAG_subprogram ] [line 236] [local] [def] [checkHeader]
!395 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !396, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!396 = metadata !{null, metadata !357}
!397 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"fchecksize", metadata !"fchecksize", metadata !"", i32 228, metadata !398, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.LoadState*, i32, i8*)* @fchecksize, null, null, metadata !2, i32 228} ; [ DW_TAG_subprogram ] [line 228] [local] [def] [fchecksize]
!398 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !399, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!399 = metadata !{null, metadata !357, metadata !90, metadata !274}
!400 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"checkliteral", metadata !"checkliteral", metadata !"", i32 219, metadata !401, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.LoadState*, i8*, i8*)* @checkliteral, null, null, metadata !2, i32 219} ; [ DW_TAG_subprogram ] [line 219] [local] [def] [checkliteral]
!401 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !402, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!402 = metadata !{null, metadata !357, metadata !274, metadata !274}
!403 = metadata !{%struct.LClosure* (%struct.lua_State*, %struct.Zio*, i8*)* @luaU_undump}
!404 = metadata !{metadata !"luaU_undump"}
!405 = metadata !{void (%struct.LoadState*)* @checkHeader}
!406 = metadata !{metadata !"checkHeader"}
!407 = metadata !{%struct.LClosure* (%struct.lua_State*, i32)* @luaF_newLclosure}
!408 = metadata !{metadata !"luaF_newLclosure"}
!409 = metadata !{i8 (%struct.LoadState*)* @LoadByte}
!410 = metadata !{metadata !"LoadByte"}
!411 = metadata !{void (%struct.lua_State*)* @luaD_inctop}
!412 = metadata !{metadata !"luaD_inctop"}
!413 = metadata !{%struct.Proto* (%struct.lua_State*)* @luaF_newproto}
!414 = metadata !{metadata !"luaF_newproto"}
!415 = metadata !{void (%struct.LoadState*, %struct.Proto*, %struct.TString*)* @LoadFunction}
!416 = metadata !{metadata !"LoadFunction"}
!417 = metadata !{%struct.TString* (%struct.LoadState*)* @LoadString}
!418 = metadata !{metadata !"LoadString"}
!419 = metadata !{i32 (%struct.LoadState*)* @LoadInt}
!420 = metadata !{metadata !"LoadInt"}
!421 = metadata !{void (%struct.LoadState*, %struct.Proto*)* @LoadCode}
!422 = metadata !{metadata !"LoadCode"}
!423 = metadata !{void (%struct.LoadState*, %struct.Proto*)* @LoadConstants}
!424 = metadata !{metadata !"LoadConstants"}
!425 = metadata !{void (%struct.LoadState*, %struct.Proto*)* @LoadUpvalues}
!426 = metadata !{metadata !"LoadUpvalues"}
!427 = metadata !{void (%struct.LoadState*, %struct.Proto*)* @LoadProtos}
!428 = metadata !{metadata !"LoadProtos"}
!429 = metadata !{void (%struct.LoadState*, %struct.Proto*)* @LoadDebug}
!430 = metadata !{metadata !"LoadDebug"}
!431 = metadata !{void (%struct.lua_State*)* @luaM_toobig}
!432 = metadata !{metadata !"luaM_toobig"}
!433 = metadata !{i8* (%struct.lua_State*, i8*, i32, i32)* @luaM_realloc_}
!434 = metadata !{metadata !"luaM_realloc_"}
!435 = metadata !{void (%struct.LoadState*, i8*, i32)* @LoadBlock}
!436 = metadata !{metadata !"LoadBlock"}
!437 = metadata !{i32 (%struct.Zio*, i8*, i32)* @luaZ_read}
!438 = metadata !{metadata !"luaZ_read"}
!439 = metadata !{void (%struct.LoadState*, i8*)* @error}
!440 = metadata !{metadata !"error"}
!441 = metadata !{i8* (%struct.lua_State*, i8*, ...)* @luaO_pushfstring}
!442 = metadata !{metadata !"luaO_pushfstring"}
!443 = metadata !{void (%struct.lua_State*, i32)* @luaD_throw}
!444 = metadata !{metadata !"luaD_throw"}
!445 = metadata !{double (%struct.LoadState*)* @LoadNumber}
!446 = metadata !{metadata !"LoadNumber"}
!447 = metadata !{i64 (%struct.LoadState*)* @LoadInteger}
!448 = metadata !{metadata !"LoadInteger"}
!449 = metadata !{%struct.TString* (%struct.lua_State*, i8*, i32)* @luaS_newlstr}
!450 = metadata !{metadata !"luaS_newlstr"}
!451 = metadata !{%struct.TString* (%struct.lua_State*, i32)* @luaS_createlngstrobj}
!452 = metadata !{metadata !"luaS_createlngstrobj"}
!453 = metadata !{void (%struct.LoadState*, i8*, i8*)* @checkliteral}
!454 = metadata !{metadata !"checkliteral"}
!455 = metadata !{void (%struct.LoadState*, i32, i8*)* @fchecksize}
!456 = metadata !{metadata !"fchecksize"}
!457 = metadata !{i32 (i8*)* @strlen}
!458 = metadata !{metadata !"strlen"}
!459 = metadata !{i32 (i8*, i8*, i32)* @memcmp}
!460 = metadata !{metadata !"memcmp"}
!461 = metadata !{metadata !"LClosure .lua_State *.1.ZIO *.1.const char *.1"}
!462 = metadata !{metadata !"void.LoadState *.1"}
!463 = metadata !{metadata !"LClosure .lua_State *.1.int.0"}
!464 = metadata !{metadata !"lu_byte.LoadState *.1"}
!465 = metadata !{metadata !"void.lua_State *.1"}
!466 = metadata !{metadata !"Proto .lua_State *.1"}
!467 = metadata !{metadata !"void.LoadState *.1.Proto *.1.TString *.1"}
!468 = metadata !{metadata !"TString .LoadState *.1"}
!469 = metadata !{metadata !"int.LoadState *.1"}
!470 = metadata !{metadata !"void.LoadState *.1.Proto *.1"}
!471 = metadata !{metadata !"void .lua_State *.1.void *.1.size_t.0.size_t.0"}
!472 = metadata !{metadata !"void.LoadState *.1.void *.1.size_t.0"}
!473 = metadata !{metadata !"size_t.ZIO *.1.void *.1.size_t.0"}
!474 = metadata !{metadata !"void.LoadState *.1.const char *.1"}
!475 = metadata !{metadata !"const char .lua_State *.1.const char *.1"}
!476 = metadata !{metadata !"void.lua_State *.1.int.0"}
!477 = metadata !{metadata !"lua_Number.LoadState *.1"}
!478 = metadata !{metadata !"lua_Integer.LoadState *.1"}
!479 = metadata !{metadata !"TString .lua_State *.1.const char *.1.size_t.0"}
!480 = metadata !{metadata !"TString .lua_State *.1.size_t.0"}
!481 = metadata !{metadata !"void.LoadState *.1.const char *.1.const char *.1"}
!482 = metadata !{metadata !"void.LoadState *.1.size_t.0.const char *.1"}
!483 = metadata !{metadata !"unsigned int.const char *.1"}
!484 = metadata !{metadata !"int.const void *.1.const void *.1.size_t.0"}
!485 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lundump.h"}
!486 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lundump.c"}
!487 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lfunc.h"}
!488 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/ldo.h"}
!489 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lmem.h"}
!490 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lzio.h"}
!491 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lobject.h"}
!492 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lstring.h"}
!493 = metadata !{metadata !"D:/Xilinx/SDx/2016.3/SDK/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include\5Cstring.h"}
!494 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!495 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!496 = metadata !{i32 1, metadata !"wchar_size", i32 4}
!497 = metadata !{i32 1, metadata !"min_enum_size", i32 4}
!498 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
!499 = metadata !{i32 786689, metadata !4, metadata !"L", metadata !6, i32 16777474, metadata !67, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 258]
!500 = metadata !{i32 258, i32 34, metadata !4, null}
!501 = metadata !{i32 786689, metadata !4, metadata !"Z", metadata !6, i32 33554690, metadata !339, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Z] [line 258]
!502 = metadata !{i32 258, i32 42, metadata !4, null}
!503 = metadata !{i32 786689, metadata !4, metadata !"name", metadata !6, i32 50331906, metadata !274, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 258]
!504 = metadata !{i32 258, i32 57, metadata !4, null}
!505 = metadata !{i32 786688, metadata !4, metadata !"S", metadata !6, i32 259, metadata !358, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [S] [line 259]
!506 = metadata !{i32 259, i32 13, metadata !4, null}
!507 = metadata !{i32 786688, metadata !4, metadata !"cl", metadata !6, i32 260, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cl] [line 260]
!508 = metadata !{i32 260, i32 13, metadata !4, null}
!509 = metadata !{i32 261, i32 7, metadata !510, null}
!510 = metadata !{i32 786443, metadata !5, metadata !4, i32 261, i32 7, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lundump.c]
!511 = metadata !{i32 261, i32 7, metadata !512, null}
!512 = metadata !{i32 786443, metadata !5, metadata !510, i32 261, i32 7, i32 1, i32 34} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lundump.c]
!513 = metadata !{i32 262, i32 5, metadata !510, null}
!514 = metadata !{i32 263, i32 12, metadata !515, null}
!515 = metadata !{i32 786443, metadata !5, metadata !510, i32 263, i32 12, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lundump.c]
!516 = metadata !{i32 264, i32 5, metadata !515, null}
!517 = metadata !{i32 266, i32 5, metadata !515, null}
!518 = metadata !{i32 267, i32 3, metadata !4, null}
!519 = metadata !{i32 268, i32 3, metadata !4, null}
!520 = metadata !{i32 269, i32 3, metadata !4, null}
!521 = metadata !{i32 270, i32 8, metadata !4, null}
!522 = metadata !{i32 270, i32 28, metadata !4, null}
!523 = metadata !{i32 786688, metadata !524, metadata !"io", metadata !6, i32 271, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [io] [line 271]
!524 = metadata !{i32 786443, metadata !5, metadata !4, i32 271, i32 3, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lundump.c]
!525 = metadata !{i32 271, i32 3, metadata !524, null}
!526 = metadata !{i32 786688, metadata !524, metadata !"x_", metadata !6, i32 271, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x_] [line 271]
!527 = metadata !{i32 272, i32 3, metadata !4, null}
!528 = metadata !{i32 273, i32 11, metadata !4, null}
!529 = metadata !{i32 274, i32 3, metadata !4, null}
!530 = metadata !{i32 277, i32 3, metadata !4, null}
!531 = metadata !{i32 786689, metadata !394, metadata !"S", metadata !6, i32 16777452, metadata !357, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [S] [line 236]
!532 = metadata !{i32 236, i32 37, metadata !394, null}
!533 = metadata !{i32 237, i32 3, metadata !394, null}
!534 = metadata !{i32 238, i32 7, metadata !535, null}
!535 = metadata !{i32 786443, metadata !5, metadata !394, i32 238, i32 7, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lundump.c]
!536 = metadata !{i32 239, i32 5, metadata !535, null}
!537 = metadata !{i32 240, i32 7, metadata !538, null}
!538 = metadata !{i32 786443, metadata !5, metadata !394, i32 240, i32 7, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lundump.c]
!539 = metadata !{i32 241, i32 5, metadata !538, null}
!540 = metadata !{i32 242, i32 3, metadata !394, null}
!541 = metadata !{i32 243, i32 3, metadata !394, null}
!542 = metadata !{i32 244, i32 3, metadata !394, null}
!543 = metadata !{i32 245, i32 3, metadata !394, null}
!544 = metadata !{i32 246, i32 3, metadata !394, null}
!545 = metadata !{i32 247, i32 3, metadata !394, null}
!546 = metadata !{i32 248, i32 7, metadata !547, null}
!547 = metadata !{i32 786443, metadata !5, metadata !394, i32 248, i32 7, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lundump.c]
!548 = metadata !{i32 249, i32 5, metadata !547, null}
!549 = metadata !{i32 250, i32 7, metadata !550, null}
!550 = metadata !{i32 786443, metadata !5, metadata !394, i32 250, i32 7, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lundump.c]
!551 = metadata !{i32 251, i32 5, metadata !550, null}
!552 = metadata !{i32 252, i32 1, metadata !394, null}
!553 = metadata !{i32 786689, metadata !391, metadata !"S", metadata !6, i32 16777276, metadata !357, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [S] [line 60]
!554 = metadata !{i32 60, i32 37, metadata !391, null}
!555 = metadata !{i32 786688, metadata !391, metadata !"x", metadata !6, i32 61, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 61]
!556 = metadata !{i32 61, i32 11, metadata !391, null}
!557 = metadata !{i32 62, i32 3, metadata !391, null}
!558 = metadata !{i32 63, i32 3, metadata !391, null}
!559 = metadata !{i32 786689, metadata !354, metadata !"S", metadata !6, i32 16777418, metadata !357, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [S] [line 202]
!560 = metadata !{i32 202, i32 38, metadata !354, null}
!561 = metadata !{i32 786689, metadata !354, metadata !"f", metadata !6, i32 33554634, metadata !364, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [f] [line 202]
!562 = metadata !{i32 202, i32 48, metadata !354, null}
!563 = metadata !{i32 786689, metadata !354, metadata !"psource", metadata !6, i32 50331850, metadata !107, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [psource] [line 202]
!564 = metadata !{i32 202, i32 60, metadata !354, null}
!565 = metadata !{i32 203, i32 15, metadata !354, null}
!566 = metadata !{i32 204, i32 7, metadata !567, null}
!567 = metadata !{i32 786443, metadata !5, metadata !354, i32 204, i32 7, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lundump.c]
!568 = metadata !{i32 205, i32 5, metadata !567, null}
!569 = metadata !{i32 206, i32 20, metadata !354, null}
!570 = metadata !{i32 207, i32 24, metadata !354, null}
!571 = metadata !{i32 208, i32 18, metadata !354, null}
!572 = metadata !{i32 209, i32 18, metadata !354, null}
!573 = metadata !{i32 210, i32 21, metadata !354, null}
!574 = metadata !{i32 211, i32 3, metadata !354, null}
!575 = metadata !{i32 212, i32 3, metadata !354, null}
!576 = metadata !{i32 213, i32 3, metadata !354, null}
!577 = metadata !{i32 214, i32 3, metadata !354, null}
!578 = metadata !{i32 215, i32 3, metadata !354, null}
!579 = metadata !{i32 216, i32 1, metadata !354, null}
!580 = metadata !{i32 786689, metadata !388, metadata !"S", metadata !6, i32 16777304, metadata !357, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [S] [line 88]
!581 = metadata !{i32 88, i32 40, metadata !388, null}
!582 = metadata !{i32 786688, metadata !388, metadata !"size", metadata !6, i32 89, metadata !90, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [size] [line 89]
!583 = metadata !{i32 89, i32 10, metadata !388, null}
!584 = metadata !{i32 89, i32 17, metadata !388, null}
!585 = metadata !{i32 90, i32 7, metadata !586, null}
!586 = metadata !{i32 786443, metadata !5, metadata !388, i32 90, i32 7, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lundump.c]
!587 = metadata !{i32 91, i32 5, metadata !586, null}
!588 = metadata !{i32 92, i32 7, metadata !589, null}
!589 = metadata !{i32 786443, metadata !5, metadata !388, i32 92, i32 7, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lundump.c]
!590 = metadata !{i32 93, i32 5, metadata !589, null}
!591 = metadata !{i32 94, i32 12, metadata !592, null}
!592 = metadata !{i32 786443, metadata !5, metadata !589, i32 94, i32 12, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lundump.c]
!593 = metadata !{i32 786688, metadata !594, metadata !"buff", metadata !6, i32 95, metadata !595, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buff] [line 95]
!594 = metadata !{i32 786443, metadata !5, metadata !592, i32 94, i32 40, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lundump.c]
!595 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 320, i64 8, i32 0, i32 0, metadata !276, metadata !596, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 320, align 8, offset 0] [from char]
!596 = metadata !{metadata !597}
!597 = metadata !{i32 786465, i64 0, i64 40}      ; [ DW_TAG_subrange_type ] [0, 39]
!598 = metadata !{i32 95, i32 10, metadata !594, null}
!599 = metadata !{i32 96, i32 5, metadata !594, null}
!600 = metadata !{i32 97, i32 12, metadata !594, null}
!601 = metadata !{i32 786688, metadata !602, metadata !"ts", metadata !6, i32 100, metadata !107, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ts] [line 100]
!602 = metadata !{i32 786443, metadata !5, metadata !592, i32 99, i32 8, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lundump.c]
!603 = metadata !{i32 100, i32 14, metadata !602, null}
!604 = metadata !{i32 100, i32 19, metadata !602, null}
!605 = metadata !{i32 101, i32 5, metadata !602, null}
!606 = metadata !{i32 102, i32 5, metadata !602, null}
!607 = metadata !{i32 104, i32 1, metadata !388, null}
!608 = metadata !{i32 786689, metadata !385, metadata !"S", metadata !6, i32 16777283, metadata !357, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [S] [line 67]
!609 = metadata !{i32 67, i32 32, metadata !385, null}
!610 = metadata !{i32 786688, metadata !385, metadata !"x", metadata !6, i32 68, metadata !40, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 68]
!611 = metadata !{i32 68, i32 7, metadata !385, null}
!612 = metadata !{i32 69, i32 3, metadata !385, null}
!613 = metadata !{i32 70, i32 3, metadata !385, null}
!614 = metadata !{i32 786689, metadata !384, metadata !"S", metadata !6, i32 16777323, metadata !357, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [S] [line 107]
!615 = metadata !{i32 107, i32 34, metadata !384, null}
!616 = metadata !{i32 786689, metadata !384, metadata !"f", metadata !6, i32 33554539, metadata !364, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [f] [line 107]
!617 = metadata !{i32 107, i32 44, metadata !384, null}
!618 = metadata !{i32 786688, metadata !384, metadata !"n", metadata !6, i32 108, metadata !40, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 108]
!619 = metadata !{i32 108, i32 7, metadata !384, null}
!620 = metadata !{i32 108, i32 11, metadata !384, null}
!621 = metadata !{i32 109, i32 3, metadata !384, null}
!622 = metadata !{i32 109, i32 13, metadata !623, null}
!623 = metadata !{i32 786443, metadata !5, metadata !384, i32 109, i32 13, i32 1, i32 35} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lundump.c]
!624 = metadata !{i32 109, i32 13, metadata !384, null}
!625 = metadata !{i32 109, i32 13, metadata !626, null}
!626 = metadata !{i32 786443, metadata !5, metadata !384, i32 109, i32 13, i32 2, i32 36} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lundump.c]
!627 = metadata !{i32 109, i32 13, metadata !628, null}
!628 = metadata !{i32 786443, metadata !5, metadata !629, i32 109, i32 13, i32 4, i32 38} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lundump.c]
!629 = metadata !{i32 786443, metadata !5, metadata !384, i32 109, i32 13, i32 3, i32 37} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lundump.c]
!630 = metadata !{i32 110, i32 3, metadata !384, null}
!631 = metadata !{i32 111, i32 3, metadata !384, null}
!632 = metadata !{i32 112, i32 1, metadata !384, null}
!633 = metadata !{i32 786689, metadata !377, metadata !"S", metadata !6, i32 16777334, metadata !357, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [S] [line 118]
!634 = metadata !{i32 118, i32 39, metadata !377, null}
!635 = metadata !{i32 786689, metadata !377, metadata !"f", metadata !6, i32 33554550, metadata !364, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [f] [line 118]
!636 = metadata !{i32 118, i32 49, metadata !377, null}
!637 = metadata !{i32 786688, metadata !377, metadata !"i", metadata !6, i32 119, metadata !40, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 119]
!638 = metadata !{i32 119, i32 7, metadata !377, null}
!639 = metadata !{i32 786688, metadata !377, metadata !"n", metadata !6, i32 120, metadata !40, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 120]
!640 = metadata !{i32 120, i32 7, metadata !377, null}
!641 = metadata !{i32 120, i32 11, metadata !377, null}
!642 = metadata !{i32 121, i32 3, metadata !377, null}
!643 = metadata !{i32 121, i32 10, metadata !644, null}
!644 = metadata !{i32 786443, metadata !5, metadata !377, i32 121, i32 10, i32 1, i32 39} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lundump.c]
!645 = metadata !{i32 121, i32 10, metadata !377, null}
!646 = metadata !{i32 121, i32 10, metadata !647, null}
!647 = metadata !{i32 786443, metadata !5, metadata !377, i32 121, i32 10, i32 2, i32 40} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lundump.c]
!648 = metadata !{i32 121, i32 10, metadata !649, null}
!649 = metadata !{i32 786443, metadata !5, metadata !650, i32 121, i32 10, i32 4, i32 42} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lundump.c]
!650 = metadata !{i32 786443, metadata !5, metadata !377, i32 121, i32 10, i32 3, i32 41} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lundump.c]
!651 = metadata !{i32 122, i32 3, metadata !377, null}
!652 = metadata !{i32 123, i32 8, metadata !653, null}
!653 = metadata !{i32 786443, metadata !5, metadata !377, i32 123, i32 3, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lundump.c]
!654 = metadata !{i32 123, i32 8, metadata !655, null}
!655 = metadata !{i32 786443, metadata !5, metadata !656, i32 123, i32 8, i32 2, i32 44} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lundump.c]
!656 = metadata !{i32 786443, metadata !5, metadata !653, i32 123, i32 8, i32 1, i32 43} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lundump.c]
!657 = metadata !{i32 124, i32 5, metadata !653, null}
!658 = metadata !{i32 123, i32 22, metadata !653, null}
!659 = metadata !{i32 125, i32 8, metadata !660, null}
!660 = metadata !{i32 786443, metadata !5, metadata !377, i32 125, i32 3, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lundump.c]
!661 = metadata !{i32 125, i32 8, metadata !662, null}
!662 = metadata !{i32 786443, metadata !5, metadata !663, i32 125, i32 8, i32 2, i32 46} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lundump.c]
!663 = metadata !{i32 786443, metadata !5, metadata !660, i32 125, i32 8, i32 1, i32 45} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lundump.c]
!664 = metadata !{i32 786688, metadata !665, metadata !"o", metadata !6, i32 126, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [o] [line 126]
!665 = metadata !{i32 786443, metadata !5, metadata !660, i32 125, i32 27, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lundump.c]
!666 = metadata !{i32 126, i32 13, metadata !665, null}
!667 = metadata !{i32 126, i32 5, metadata !665, null}
!668 = metadata !{i32 786688, metadata !665, metadata !"t", metadata !6, i32 127, metadata !40, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [t] [line 127]
!669 = metadata !{i32 127, i32 9, metadata !665, null}
!670 = metadata !{i32 127, i32 13, metadata !665, null}
!671 = metadata !{i32 128, i32 5, metadata !665, null}
!672 = metadata !{i32 130, i32 7, metadata !673, null}
!673 = metadata !{i32 786443, metadata !5, metadata !665, i32 128, i32 16, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lundump.c]
!674 = metadata !{i32 131, i32 7, metadata !673, null}
!675 = metadata !{i32 786688, metadata !676, metadata !"io", metadata !6, i32 133, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [io] [line 133]
!676 = metadata !{i32 786443, metadata !5, metadata !673, i32 133, i32 7, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lundump.c]
!677 = metadata !{i32 133, i32 7, metadata !676, null}
!678 = metadata !{i32 134, i32 7, metadata !673, null}
!679 = metadata !{i32 786688, metadata !680, metadata !"io", metadata !6, i32 136, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [io] [line 136]
!680 = metadata !{i32 786443, metadata !5, metadata !673, i32 136, i32 7, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lundump.c]
!681 = metadata !{i32 136, i32 7, metadata !680, null}
!682 = metadata !{i32 137, i32 7, metadata !673, null}
!683 = metadata !{i32 786688, metadata !684, metadata !"io", metadata !6, i32 139, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [io] [line 139]
!684 = metadata !{i32 786443, metadata !5, metadata !673, i32 139, i32 7, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lundump.c]
!685 = metadata !{i32 139, i32 7, metadata !684, null}
!686 = metadata !{i32 140, i32 7, metadata !673, null}
!687 = metadata !{i32 786688, metadata !688, metadata !"io", metadata !6, i32 143, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [io] [line 143]
!688 = metadata !{i32 786443, metadata !5, metadata !673, i32 143, i32 7, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lundump.c]
!689 = metadata !{i32 143, i32 7, metadata !688, null}
!690 = metadata !{i32 786688, metadata !688, metadata !"x_", metadata !6, i32 143, metadata !107, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x_] [line 143]
!691 = metadata !{i32 144, i32 7, metadata !673, null}
!692 = metadata !{i32 147, i32 5, metadata !673, null}
!693 = metadata !{i32 148, i32 3, metadata !665, null}
!694 = metadata !{i32 125, i32 22, metadata !660, null}
!695 = metadata !{i32 149, i32 1, metadata !377, null}
!696 = metadata !{i32 786689, metadata !376, metadata !"S", metadata !6, i32 16777382, metadata !357, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [S] [line 166]
!697 = metadata !{i32 166, i32 38, metadata !376, null}
!698 = metadata !{i32 786689, metadata !376, metadata !"f", metadata !6, i32 33554598, metadata !364, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [f] [line 166]
!699 = metadata !{i32 166, i32 48, metadata !376, null}
!700 = metadata !{i32 786688, metadata !376, metadata !"i", metadata !6, i32 167, metadata !40, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 167]
!701 = metadata !{i32 167, i32 7, metadata !376, null}
!702 = metadata !{i32 786688, metadata !376, metadata !"n", metadata !6, i32 167, metadata !40, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 167]
!703 = metadata !{i32 167, i32 10, metadata !376, null}
!704 = metadata !{i32 168, i32 7, metadata !376, null}
!705 = metadata !{i32 169, i32 3, metadata !376, null}
!706 = metadata !{i32 169, i32 17, metadata !707, null}
!707 = metadata !{i32 786443, metadata !5, metadata !376, i32 169, i32 17, i32 1, i32 47} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lundump.c]
!708 = metadata !{i32 169, i32 17, metadata !376, null}
!709 = metadata !{i32 169, i32 17, metadata !710, null}
!710 = metadata !{i32 786443, metadata !5, metadata !376, i32 169, i32 17, i32 2, i32 48} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lundump.c]
!711 = metadata !{i32 169, i32 17, metadata !712, null}
!712 = metadata !{i32 786443, metadata !5, metadata !713, i32 169, i32 17, i32 4, i32 50} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lundump.c]
!713 = metadata !{i32 786443, metadata !5, metadata !376, i32 169, i32 17, i32 3, i32 49} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lundump.c]
!714 = metadata !{i32 170, i32 3, metadata !376, null}
!715 = metadata !{i32 171, i32 8, metadata !716, null}
!716 = metadata !{i32 786443, metadata !5, metadata !376, i32 171, i32 3, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lundump.c]
!717 = metadata !{i32 171, i32 8, metadata !718, null}
!718 = metadata !{i32 786443, metadata !5, metadata !719, i32 171, i32 8, i32 2, i32 52} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lundump.c]
!719 = metadata !{i32 786443, metadata !5, metadata !716, i32 171, i32 8, i32 1, i32 51} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lundump.c]
!720 = metadata !{i32 172, i32 5, metadata !716, null}
!721 = metadata !{i32 171, i32 22, metadata !716, null}
!722 = metadata !{i32 173, i32 8, metadata !723, null}
!723 = metadata !{i32 786443, metadata !5, metadata !376, i32 173, i32 3, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lundump.c]
!724 = metadata !{i32 173, i32 8, metadata !725, null}
!725 = metadata !{i32 786443, metadata !5, metadata !726, i32 173, i32 8, i32 2, i32 54} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lundump.c]
!726 = metadata !{i32 786443, metadata !5, metadata !723, i32 173, i32 8, i32 1, i32 53} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lundump.c]
!727 = metadata !{i32 174, i32 30, metadata !728, null}
!728 = metadata !{i32 786443, metadata !5, metadata !723, i32 173, i32 27, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lundump.c]
!729 = metadata !{i32 175, i32 26, metadata !728, null}
!730 = metadata !{i32 176, i32 3, metadata !728, null}
!731 = metadata !{i32 173, i32 22, metadata !723, null}
!732 = metadata !{i32 177, i32 1, metadata !376, null}
!733 = metadata !{i32 786689, metadata !375, metadata !"S", metadata !6, i32 16777368, metadata !357, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [S] [line 152]
!734 = metadata !{i32 152, i32 36, metadata !375, null}
!735 = metadata !{i32 786689, metadata !375, metadata !"f", metadata !6, i32 33554584, metadata !364, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [f] [line 152]
!736 = metadata !{i32 152, i32 46, metadata !375, null}
!737 = metadata !{i32 786688, metadata !375, metadata !"i", metadata !6, i32 153, metadata !40, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 153]
!738 = metadata !{i32 153, i32 7, metadata !375, null}
!739 = metadata !{i32 786688, metadata !375, metadata !"n", metadata !6, i32 154, metadata !40, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 154]
!740 = metadata !{i32 154, i32 7, metadata !375, null}
!741 = metadata !{i32 154, i32 11, metadata !375, null}
!742 = metadata !{i32 155, i32 3, metadata !375, null}
!743 = metadata !{i32 155, i32 10, metadata !744, null}
!744 = metadata !{i32 786443, metadata !5, metadata !375, i32 155, i32 10, i32 1, i32 55} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lundump.c]
!745 = metadata !{i32 155, i32 10, metadata !375, null}
!746 = metadata !{i32 155, i32 10, metadata !747, null}
!747 = metadata !{i32 786443, metadata !5, metadata !375, i32 155, i32 10, i32 2, i32 56} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lundump.c]
!748 = metadata !{i32 155, i32 10, metadata !749, null}
!749 = metadata !{i32 786443, metadata !5, metadata !750, i32 155, i32 10, i32 4, i32 58} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lundump.c]
!750 = metadata !{i32 786443, metadata !5, metadata !375, i32 155, i32 10, i32 3, i32 57} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lundump.c]
!751 = metadata !{i32 156, i32 3, metadata !375, null}
!752 = metadata !{i32 157, i32 8, metadata !753, null}
!753 = metadata !{i32 786443, metadata !5, metadata !375, i32 157, i32 3, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lundump.c]
!754 = metadata !{i32 157, i32 8, metadata !755, null}
!755 = metadata !{i32 786443, metadata !5, metadata !756, i32 157, i32 8, i32 2, i32 60} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lundump.c]
!756 = metadata !{i32 786443, metadata !5, metadata !753, i32 157, i32 8, i32 1, i32 59} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lundump.c]
!757 = metadata !{i32 158, i32 5, metadata !753, null}
!758 = metadata !{i32 157, i32 22, metadata !753, null}
!759 = metadata !{i32 159, i32 8, metadata !760, null}
!760 = metadata !{i32 786443, metadata !5, metadata !375, i32 159, i32 3, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lundump.c]
!761 = metadata !{i32 159, i32 8, metadata !762, null}
!762 = metadata !{i32 786443, metadata !5, metadata !763, i32 159, i32 8, i32 2, i32 62} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lundump.c]
!763 = metadata !{i32 786443, metadata !5, metadata !760, i32 159, i32 8, i32 1, i32 61} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lundump.c]
!764 = metadata !{i32 160, i32 15, metadata !765, null}
!765 = metadata !{i32 786443, metadata !5, metadata !760, i32 159, i32 27, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lundump.c]
!766 = metadata !{i32 161, i32 5, metadata !765, null}
!767 = metadata !{i32 162, i32 3, metadata !765, null}
!768 = metadata !{i32 159, i32 22, metadata !760, null}
!769 = metadata !{i32 163, i32 1, metadata !375, null}
!770 = metadata !{i32 786689, metadata !366, metadata !"S", metadata !6, i32 16777396, metadata !357, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [S] [line 180]
!771 = metadata !{i32 180, i32 35, metadata !366, null}
!772 = metadata !{i32 786689, metadata !366, metadata !"f", metadata !6, i32 33554612, metadata !364, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [f] [line 180]
!773 = metadata !{i32 180, i32 45, metadata !366, null}
!774 = metadata !{i32 786688, metadata !366, metadata !"i", metadata !6, i32 181, metadata !40, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 181]
!775 = metadata !{i32 181, i32 7, metadata !366, null}
!776 = metadata !{i32 786688, metadata !366, metadata !"n", metadata !6, i32 181, metadata !40, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 181]
!777 = metadata !{i32 181, i32 10, metadata !366, null}
!778 = metadata !{i32 182, i32 7, metadata !366, null}
!779 = metadata !{i32 183, i32 3, metadata !366, null}
!780 = metadata !{i32 183, i32 17, metadata !781, null}
!781 = metadata !{i32 786443, metadata !5, metadata !366, i32 183, i32 17, i32 1, i32 63} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lundump.c]
!782 = metadata !{i32 183, i32 17, metadata !366, null}
!783 = metadata !{i32 183, i32 17, metadata !784, null}
!784 = metadata !{i32 786443, metadata !5, metadata !366, i32 183, i32 17, i32 2, i32 64} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lundump.c]
!785 = metadata !{i32 183, i32 17, metadata !786, null}
!786 = metadata !{i32 786443, metadata !5, metadata !787, i32 183, i32 17, i32 4, i32 66} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lundump.c]
!787 = metadata !{i32 786443, metadata !5, metadata !366, i32 183, i32 17, i32 3, i32 65} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lundump.c]
!788 = metadata !{i32 184, i32 3, metadata !366, null}
!789 = metadata !{i32 185, i32 3, metadata !366, null}
!790 = metadata !{i32 186, i32 7, metadata !366, null}
!791 = metadata !{i32 187, i32 3, metadata !366, null}
!792 = metadata !{i32 187, i32 16, metadata !793, null}
!793 = metadata !{i32 786443, metadata !5, metadata !366, i32 187, i32 16, i32 1, i32 67} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lundump.c]
!794 = metadata !{i32 187, i32 16, metadata !366, null}
!795 = metadata !{i32 187, i32 16, metadata !796, null}
!796 = metadata !{i32 786443, metadata !5, metadata !366, i32 187, i32 16, i32 2, i32 68} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lundump.c]
!797 = metadata !{i32 187, i32 16, metadata !798, null}
!798 = metadata !{i32 786443, metadata !5, metadata !799, i32 187, i32 16, i32 4, i32 70} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lundump.c]
!799 = metadata !{i32 786443, metadata !5, metadata !366, i32 187, i32 16, i32 3, i32 69} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lundump.c]
!800 = metadata !{i32 188, i32 3, metadata !366, null}
!801 = metadata !{i32 189, i32 8, metadata !802, null}
!802 = metadata !{i32 786443, metadata !5, metadata !366, i32 189, i32 3, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lundump.c]
!803 = metadata !{i32 189, i32 8, metadata !804, null}
!804 = metadata !{i32 786443, metadata !5, metadata !805, i32 189, i32 8, i32 2, i32 72} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lundump.c]
!805 = metadata !{i32 786443, metadata !5, metadata !802, i32 189, i32 8, i32 1, i32 71} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lundump.c]
!806 = metadata !{i32 190, i32 5, metadata !802, null}
!807 = metadata !{i32 189, i32 22, metadata !802, null}
!808 = metadata !{i32 191, i32 8, metadata !809, null}
!809 = metadata !{i32 786443, metadata !5, metadata !366, i32 191, i32 3, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lundump.c]
!810 = metadata !{i32 191, i32 8, metadata !811, null}
!811 = metadata !{i32 786443, metadata !5, metadata !812, i32 191, i32 8, i32 2, i32 74} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lundump.c]
!812 = metadata !{i32 786443, metadata !5, metadata !809, i32 191, i32 8, i32 1, i32 73} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lundump.c]
!813 = metadata !{i32 192, i32 29, metadata !814, null}
!814 = metadata !{i32 786443, metadata !5, metadata !809, i32 191, i32 27, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lundump.c]
!815 = metadata !{i32 193, i32 29, metadata !814, null}
!816 = metadata !{i32 194, i32 27, metadata !814, null}
!817 = metadata !{i32 195, i32 3, metadata !814, null}
!818 = metadata !{i32 191, i32 22, metadata !809, null}
!819 = metadata !{i32 196, i32 7, metadata !366, null}
!820 = metadata !{i32 197, i32 8, metadata !821, null}
!821 = metadata !{i32 786443, metadata !5, metadata !366, i32 197, i32 3, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lundump.c]
!822 = metadata !{i32 197, i32 8, metadata !823, null}
!823 = metadata !{i32 786443, metadata !5, metadata !824, i32 197, i32 8, i32 2, i32 76} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lundump.c]
!824 = metadata !{i32 786443, metadata !5, metadata !821, i32 197, i32 8, i32 1, i32 75} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lundump.c]
!825 = metadata !{i32 198, i32 27, metadata !821, null}
!826 = metadata !{i32 197, i32 22, metadata !821, null}
!827 = metadata !{i32 199, i32 1, metadata !366, null}
!828 = metadata !{i32 786689, metadata !369, metadata !"S", metadata !6, i32 16777267, metadata !357, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [S] [line 51]
!829 = metadata !{i32 51, i32 35, metadata !369, null}
!830 = metadata !{i32 786689, metadata !369, metadata !"b", metadata !6, i32 33554483, metadata !59, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b] [line 51]
!831 = metadata !{i32 51, i32 44, metadata !369, null}
!832 = metadata !{i32 786689, metadata !369, metadata !"size", metadata !6, i32 50331699, metadata !90, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 51]
!833 = metadata !{i32 51, i32 54, metadata !369, null}
!834 = metadata !{i32 52, i32 7, metadata !835, null}
!835 = metadata !{i32 786443, metadata !5, metadata !369, i32 52, i32 7, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lundump.c]
!836 = metadata !{i32 53, i32 5, metadata !835, null}
!837 = metadata !{i32 54, i32 1, metadata !369, null}
!838 = metadata !{i32 786689, metadata !372, metadata !"S", metadata !6, i32 16777255, metadata !357, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [S] [line 39]
!839 = metadata !{i32 39, i32 33, metadata !372, null}
!840 = metadata !{i32 786689, metadata !372, metadata !"why", metadata !6, i32 33554471, metadata !274, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [why] [line 39]
!841 = metadata !{i32 39, i32 48, metadata !372, null}
!842 = metadata !{i32 40, i32 3, metadata !372, null}
!843 = metadata !{i32 41, i32 3, metadata !372, null}
!844 = metadata !{i32 42, i32 1, metadata !372, null}
!845 = metadata !{i32 786689, metadata !381, metadata !"S", metadata !6, i32 16777290, metadata !357, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [S] [line 74]
!846 = metadata !{i32 74, i32 42, metadata !381, null}
!847 = metadata !{i32 786688, metadata !381, metadata !"x", metadata !6, i32 75, metadata !152, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 75]
!848 = metadata !{i32 75, i32 14, metadata !381, null}
!849 = metadata !{i32 76, i32 3, metadata !381, null}
!850 = metadata !{i32 77, i32 3, metadata !381, null}
!851 = metadata !{i32 786689, metadata !378, metadata !"S", metadata !6, i32 16777297, metadata !357, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [S] [line 81]
!852 = metadata !{i32 81, i32 44, metadata !378, null}
!853 = metadata !{i32 786688, metadata !378, metadata !"x", metadata !6, i32 82, metadata !305, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 82]
!854 = metadata !{i32 82, i32 15, metadata !378, null}
!855 = metadata !{i32 83, i32 3, metadata !378, null}
!856 = metadata !{i32 84, i32 3, metadata !378, null}
!857 = metadata !{i32 786689, metadata !400, metadata !"S", metadata !6, i32 16777435, metadata !357, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [S] [line 219]
!858 = metadata !{i32 219, i32 38, metadata !400, null}
!859 = metadata !{i32 786689, metadata !400, metadata !"s", metadata !6, i32 33554651, metadata !274, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 219]
!860 = metadata !{i32 219, i32 53, metadata !400, null}
!861 = metadata !{i32 786689, metadata !400, metadata !"msg", metadata !6, i32 50331867, metadata !274, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [msg] [line 219]
!862 = metadata !{i32 219, i32 68, metadata !400, null}
!863 = metadata !{i32 786688, metadata !400, metadata !"buff", metadata !6, i32 220, metadata !864, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buff] [line 220]
!864 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 96, i64 8, i32 0, i32 0, metadata !276, metadata !865, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 96, align 8, offset 0] [from char]
!865 = metadata !{metadata !866}
!866 = metadata !{i32 786465, i64 0, i64 12}      ; [ DW_TAG_subrange_type ] [0, 11]
!867 = metadata !{i32 220, i32 8, metadata !400, null}
!868 = metadata !{i32 786688, metadata !400, metadata !"len", metadata !6, i32 221, metadata !90, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [len] [line 221]
!869 = metadata !{i32 221, i32 10, metadata !400, null}
!870 = metadata !{i32 221, i32 16, metadata !400, null}
!871 = metadata !{i32 222, i32 3, metadata !400, null}
!872 = metadata !{i32 223, i32 7, metadata !873, null}
!873 = metadata !{i32 786443, metadata !5, metadata !400, i32 223, i32 7, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lundump.c]
!874 = metadata !{i32 224, i32 5, metadata !873, null}
!875 = metadata !{i32 225, i32 1, metadata !400, null}
!876 = metadata !{i32 786689, metadata !397, metadata !"S", metadata !6, i32 16777444, metadata !357, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [S] [line 228]
!877 = metadata !{i32 228, i32 36, metadata !397, null}
!878 = metadata !{i32 786689, metadata !397, metadata !"size", metadata !6, i32 33554660, metadata !90, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 228]
!879 = metadata !{i32 228, i32 46, metadata !397, null}
!880 = metadata !{i32 786689, metadata !397, metadata !"tname", metadata !6, i32 50331876, metadata !274, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tname] [line 228]
!881 = metadata !{i32 228, i32 64, metadata !397, null}
!882 = metadata !{i32 229, i32 7, metadata !883, null}
!883 = metadata !{i32 786443, metadata !5, metadata !397, i32 229, i32 7, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lundump.c]
!884 = metadata !{i32 230, i32 5, metadata !883, null}
!885 = metadata !{i32 230, i32 14, metadata !883, null}
!886 = metadata !{i32 231, i32 1, metadata !397, null}
