; ModuleID = 'C:/Users/DevolutionX/workspace/lua/src/lobject.c'
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-n32-S64"
target triple = "armv7--linux-gnueabihf"

%struct.GCObject = type { %struct.GCObject*, i8, i8 }
%struct.lua_State = type { %struct.GCObject*, i8, i8, i16, i8, %struct.lua_TValue*, %struct.global_State*, %struct.CallInfo*, i32*, %struct.lua_TValue*, %struct.lua_TValue*, %struct.UpVal*, %struct.GCObject*, %struct.lua_State*, %struct.lua_longjmp*, %struct.CallInfo, void (%struct.lua_State*, %struct.lua_Debug*)*, i32, i32, i32, i32, i16, i16, i32, i8 }
%struct.global_State = type { i8* (i8*, i8*, i32, i32)*, i8*, i32, i32, i32, i32, %struct.stringtable, %struct.lua_TValue, i32, i8, i8, i8, i8, %struct.GCObject*, %struct.GCObject**, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.lua_State*, i32, i32, i32, i32 (%struct.lua_State*)*, %struct.lua_State*, double*, %struct.TString*, [24 x %struct.TString*], [9 x %struct.Table*], [53 x [2 x %struct.TString*]] }
%struct.stringtable = type { %struct.TString**, i32, i32 }
%struct.lua_TValue = type { %union.Value, i32 }
%union.Value = type { i64 }
%struct.TString = type { %struct.GCObject*, i8, i8, i8, i8, i32, %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.Table = type { %struct.GCObject*, i8, i8, i8, i8, i32, %struct.lua_TValue*, %struct.Node*, %struct.Node*, %struct.Table*, %struct.GCObject* }
%struct.Node = type { %struct.lua_TValue, %union.TKey }
%union.TKey = type { %struct.anon.2 }
%struct.anon.2 = type { %union.Value, i32, i32 }
%struct.UpVal = type opaque
%struct.lua_longjmp = type opaque
%struct.CallInfo = type { %struct.lua_TValue*, %struct.lua_TValue*, %struct.CallInfo*, %struct.CallInfo*, %union.anon, i32, i16, i8 }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { i32 (%struct.lua_State*, i32, i32)*, i32, i32 }
%struct.lua_Debug = type { i32, i8*, i8*, i8*, i8*, i32, i32, i32, i8, i8, i8, i8, [60 x i8], %struct.CallInfo* }
%struct.lconv = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%union.GCUnion = type { %union.Closure, [88 x i8] }
%union.Closure = type { %struct.CClosure }
%struct.CClosure = type { %struct.GCObject*, i8, i8, i8, %struct.GCObject*, i32 (%struct.lua_State*)*, [1 x %struct.lua_TValue] }
%struct.__va_list = type { i8* }

@luaO_nilobject_ = hidden constant { { %struct.GCObject*, [4 x i8] }, i32, [4 x i8] } { { %struct.GCObject*, [4 x i8] } { %struct.GCObject* null, [4 x i8] undef }, i32 0, [4 x i8] undef }, align 8
@luaO_ceillog2.log_2 = internal constant [256 x i8] c"\00\01\02\02\03\03\03\03\04\04\04\04\04\04\04\04\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08", align 1
@luai_ctype_ = external hidden constant [257 x i8]
@.str = private unnamed_addr constant [5 x i8] c"%lld\00", align 1
@.str1 = private unnamed_addr constant [6 x i8] c"%.14g\00", align 1
@.str2 = private unnamed_addr constant [12 x i8] c"-0123456789\00", align 1
@.str3 = private unnamed_addr constant [7 x i8] c"(null)\00", align 1
@.str4 = private unnamed_addr constant [6 x i8] c"<\5C%d>\00", align 1
@.str5 = private unnamed_addr constant [3 x i8] c"%p\00", align 1
@.str6 = private unnamed_addr constant [2 x i8] c"%\00", align 1
@.str7 = private unnamed_addr constant [43 x i8] c"invalid option '%%%c' to 'lua_pushfstring'\00", align 1
@.str8 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@.str9 = private unnamed_addr constant [10 x i8] c"[string \22\00", align 1
@.str10 = private unnamed_addr constant [3 x i8] c"\22]\00", align 1
@.str11 = private unnamed_addr constant [6 x i8] c".xXnN\00", align 1

; Function Attrs: nounwind
define hidden i32 @luaO_int2fb(i32 %x) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %e = alloca i32, align 4
  store i32 %x, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !498), !dbg !499
  call void @llvm.dbg.declare(metadata !{i32* %e}, metadata !500), !dbg !501
  store i32 0, i32* %e, align 4, !dbg !502
  %3 = load i32* %2, align 4, !dbg !503
  %4 = icmp ult i32 %3, 8, !dbg !503
  br i1 %4, label %5, label %7, !dbg !503

; <label>:5                                       ; preds = %0
  %6 = load i32* %2, align 4, !dbg !505
  store i32 %6, i32* %1, !dbg !505
  br label %34, !dbg !505

; <label>:7                                       ; preds = %0
  br label %8, !dbg !507

; <label>:8                                       ; preds = %11, %7
  %9 = load i32* %2, align 4, !dbg !508
  %10 = icmp uge i32 %9, 128, !dbg !508
  br i1 %10, label %11, label %17, !dbg !508

; <label>:11                                      ; preds = %8
  %12 = load i32* %2, align 4, !dbg !510
  %13 = add i32 %12, 15, !dbg !510
  %14 = lshr i32 %13, 4, !dbg !510
  store i32 %14, i32* %2, align 4, !dbg !510
  %15 = load i32* %e, align 4, !dbg !512
  %16 = add nsw i32 %15, 4, !dbg !512
  store i32 %16, i32* %e, align 4, !dbg !512
  br label %8, !dbg !513

; <label>:17                                      ; preds = %8
  br label %18, !dbg !514

; <label>:18                                      ; preds = %21, %17
  %19 = load i32* %2, align 4, !dbg !515
  %20 = icmp uge i32 %19, 16, !dbg !515
  br i1 %20, label %21, label %27, !dbg !515

; <label>:21                                      ; preds = %18
  %22 = load i32* %2, align 4, !dbg !517
  %23 = add i32 %22, 1, !dbg !517
  %24 = lshr i32 %23, 1, !dbg !517
  store i32 %24, i32* %2, align 4, !dbg !517
  %25 = load i32* %e, align 4, !dbg !519
  %26 = add nsw i32 %25, 1, !dbg !519
  store i32 %26, i32* %e, align 4, !dbg !519
  br label %18, !dbg !520

; <label>:27                                      ; preds = %18
  %28 = load i32* %e, align 4, !dbg !521
  %29 = add nsw i32 %28, 1, !dbg !521
  %30 = shl i32 %29, 3, !dbg !521
  %31 = load i32* %2, align 4, !dbg !521
  %32 = sub nsw i32 %31, 8, !dbg !521
  %33 = or i32 %30, %32, !dbg !521
  store i32 %33, i32* %1, !dbg !521
  br label %34, !dbg !521

; <label>:34                                      ; preds = %27, %5
  %35 = load i32* %1, !dbg !522
  ret i32 %35, !dbg !522
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind
define hidden i32 @luaO_fb2int(i32 %x) #0 {
  %1 = alloca i32, align 4
  store i32 %x, i32* %1, align 4
  call void @llvm.dbg.declare(metadata !{i32* %1}, metadata !523), !dbg !524
  %2 = load i32* %1, align 4, !dbg !525
  %3 = icmp slt i32 %2, 8, !dbg !525
  br i1 %3, label %4, label %6, !dbg !525

; <label>:4                                       ; preds = %0
  %5 = load i32* %1, align 4, !dbg !526
  br label %14, !dbg !526

; <label>:6                                       ; preds = %0
  %7 = load i32* %1, align 4, !dbg !528
  %8 = and i32 %7, 7, !dbg !528
  %9 = add nsw i32 %8, 8, !dbg !528
  %10 = load i32* %1, align 4, !dbg !528
  %11 = ashr i32 %10, 3, !dbg !528
  %12 = sub nsw i32 %11, 1, !dbg !528
  %13 = shl i32 %9, %12, !dbg !528
  br label %14, !dbg !528

; <label>:14                                      ; preds = %6, %4
  %15 = phi i32 [ %5, %4 ], [ %13, %6 ], !dbg !525
  ret i32 %15, !dbg !530
}

; Function Attrs: nounwind
define hidden i32 @luaO_ceillog2(i32 %x) #0 {
  %1 = alloca i32, align 4
  %l = alloca i32, align 4
  store i32 %x, i32* %1, align 4
  call void @llvm.dbg.declare(metadata !{i32* %1}, metadata !533), !dbg !534
  call void @llvm.dbg.declare(metadata !{i32* %l}, metadata !535), !dbg !536
  store i32 0, i32* %l, align 4, !dbg !537
  %2 = load i32* %1, align 4, !dbg !538
  %3 = add i32 %2, -1, !dbg !538
  store i32 %3, i32* %1, align 4, !dbg !538
  br label %4, !dbg !539

; <label>:4                                       ; preds = %7, %0
  %5 = load i32* %1, align 4, !dbg !540
  %6 = icmp uge i32 %5, 256, !dbg !540
  br i1 %6, label %7, label %12, !dbg !540

; <label>:7                                       ; preds = %4
  %8 = load i32* %l, align 4, !dbg !543
  %9 = add nsw i32 %8, 8, !dbg !543
  store i32 %9, i32* %l, align 4, !dbg !543
  %10 = load i32* %1, align 4, !dbg !546
  %11 = lshr i32 %10, 8, !dbg !546
  store i32 %11, i32* %1, align 4, !dbg !546
  br label %4, !dbg !547

; <label>:12                                      ; preds = %4
  %13 = load i32* %l, align 4, !dbg !548
  %14 = load i32* %1, align 4, !dbg !548
  %15 = getelementptr inbounds [256 x i8]* @luaO_ceillog2.log_2, i32 0, i32 %14, !dbg !548
  %16 = load i8* %15, align 1, !dbg !548
  %17 = zext i8 %16 to i32, !dbg !548
  %18 = add nsw i32 %13, %17, !dbg !548
  ret i32 %18, !dbg !548
}

; Function Attrs: nounwind
define hidden void @luaO_arith(%struct.lua_State* %L, i32 %op, %struct.lua_TValue* %p1, %struct.lua_TValue* %p2, %struct.lua_TValue* %res) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.lua_TValue*, align 4
  %4 = alloca %struct.lua_TValue*, align 4
  %5 = alloca %struct.lua_TValue*, align 4
  %i1 = alloca i64, align 8
  %i2 = alloca i64, align 8
  %io = alloca %struct.lua_TValue*, align 4
  %n1 = alloca double, align 8
  %n2 = alloca double, align 8
  %io1 = alloca %struct.lua_TValue*, align 4
  %n12 = alloca double, align 8
  %n23 = alloca double, align 8
  %io4 = alloca %struct.lua_TValue*, align 4
  %io5 = alloca %struct.lua_TValue*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !549), !dbg !550
  store i32 %op, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !551), !dbg !552
  store %struct.lua_TValue* %p1, %struct.lua_TValue** %3, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %3}, metadata !553), !dbg !554
  store %struct.lua_TValue* %p2, %struct.lua_TValue** %4, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %4}, metadata !555), !dbg !556
  store %struct.lua_TValue* %res, %struct.lua_TValue** %5, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %5}, metadata !557), !dbg !558
  %6 = load i32* %2, align 4, !dbg !559
  switch i32 %6, label %89 [
    i32 7, label %7
    i32 8, label %7
    i32 9, label %7
    i32 10, label %7
    i32 11, label %7
    i32 13, label %7
    i32 5, label %48
    i32 4, label %48
  ], !dbg !559

; <label>:7                                       ; preds = %0, %0, %0, %0, %0, %0
  call void @llvm.dbg.declare(metadata !{i64* %i1}, metadata !560), !dbg !563
  call void @llvm.dbg.declare(metadata !{i64* %i2}, metadata !564), !dbg !565
  %8 = load %struct.lua_TValue** %3, align 4, !dbg !566
  %9 = getelementptr inbounds %struct.lua_TValue* %8, i32 0, i32 1, !dbg !566
  %10 = load i32* %9, align 4, !dbg !566
  %11 = icmp eq i32 %10, 19, !dbg !566
  br i1 %11, label %12, label %17, !dbg !566

; <label>:12                                      ; preds = %7
  %13 = load %struct.lua_TValue** %3, align 4, !dbg !568
  %14 = getelementptr inbounds %struct.lua_TValue* %13, i32 0, i32 0, !dbg !568
  %15 = bitcast %union.Value* %14 to i64*, !dbg !568
  %16 = load i64* %15, align 8, !dbg !568
  store i64 %16, i64* %i1, align 8, !dbg !568
  br i1 true, label %21, label %47, !dbg !568

; <label>:17                                      ; preds = %7
  %18 = load %struct.lua_TValue** %3, align 4, !dbg !570
  %19 = call i32 @luaV_tointeger(%struct.lua_TValue* %18, i64* %i1, i32 0), !dbg !570
  %20 = icmp ne i32 %19, 0, !dbg !570
  br i1 %20, label %21, label %47, !dbg !570

; <label>:21                                      ; preds = %17, %12
  %22 = load %struct.lua_TValue** %4, align 4, !dbg !572
  %23 = getelementptr inbounds %struct.lua_TValue* %22, i32 0, i32 1, !dbg !572
  %24 = load i32* %23, align 4, !dbg !572
  %25 = icmp eq i32 %24, 19, !dbg !572
  br i1 %25, label %26, label %31, !dbg !572

; <label>:26                                      ; preds = %21
  %27 = load %struct.lua_TValue** %4, align 4, !dbg !575
  %28 = getelementptr inbounds %struct.lua_TValue* %27, i32 0, i32 0, !dbg !575
  %29 = bitcast %union.Value* %28 to i64*, !dbg !575
  %30 = load i64* %29, align 8, !dbg !575
  store i64 %30, i64* %i2, align 8, !dbg !575
  br i1 true, label %35, label %47, !dbg !575

; <label>:31                                      ; preds = %21
  %32 = load %struct.lua_TValue** %4, align 4, !dbg !577
  %33 = call i32 @luaV_tointeger(%struct.lua_TValue* %32, i64* %i2, i32 0), !dbg !577
  %34 = icmp ne i32 %33, 0, !dbg !577
  br i1 %34, label %35, label %47, !dbg !577

; <label>:35                                      ; preds = %31, %26
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %io}, metadata !579), !dbg !582
  %36 = load %struct.lua_TValue** %5, align 4, !dbg !582
  store %struct.lua_TValue* %36, %struct.lua_TValue** %io, align 4, !dbg !582
  %37 = load %struct.lua_State** %1, align 4, !dbg !582
  %38 = load i32* %2, align 4, !dbg !582
  %39 = load i64* %i1, align 8, !dbg !582
  %40 = load i64* %i2, align 8, !dbg !582
  %41 = call i64 @intarith(%struct.lua_State* %37, i32 %38, i64 %39, i64 %40), !dbg !582
  %42 = load %struct.lua_TValue** %io, align 4, !dbg !582
  %43 = getelementptr inbounds %struct.lua_TValue* %42, i32 0, i32 0, !dbg !582
  %44 = bitcast %union.Value* %43 to i64*, !dbg !582
  store i64 %41, i64* %44, align 8, !dbg !582
  %45 = load %struct.lua_TValue** %io, align 4, !dbg !582
  %46 = getelementptr inbounds %struct.lua_TValue* %45, i32 0, i32 1, !dbg !582
  store i32 19, i32* %46, align 4, !dbg !582
  br label %166, !dbg !583

; <label>:47                                      ; preds = %31, %26, %17, %12
  br label %158, !dbg !584

; <label>:48                                      ; preds = %0, %0
  call void @llvm.dbg.declare(metadata !{double* %n1}, metadata !585), !dbg !587
  call void @llvm.dbg.declare(metadata !{double* %n2}, metadata !588), !dbg !589
  %49 = load %struct.lua_TValue** %3, align 4, !dbg !590
  %50 = getelementptr inbounds %struct.lua_TValue* %49, i32 0, i32 1, !dbg !590
  %51 = load i32* %50, align 4, !dbg !590
  %52 = icmp eq i32 %51, 3, !dbg !590
  br i1 %52, label %53, label %58, !dbg !590

; <label>:53                                      ; preds = %48
  %54 = load %struct.lua_TValue** %3, align 4, !dbg !592
  %55 = getelementptr inbounds %struct.lua_TValue* %54, i32 0, i32 0, !dbg !592
  %56 = bitcast %union.Value* %55 to double*, !dbg !592
  %57 = load double* %56, align 8, !dbg !592
  store double %57, double* %n1, align 8, !dbg !592
  br i1 true, label %62, label %88, !dbg !592

; <label>:58                                      ; preds = %48
  %59 = load %struct.lua_TValue** %3, align 4, !dbg !594
  %60 = call i32 @luaV_tonumber_(%struct.lua_TValue* %59, double* %n1), !dbg !594
  %61 = icmp ne i32 %60, 0, !dbg !594
  br i1 %61, label %62, label %88, !dbg !594

; <label>:62                                      ; preds = %58, %53
  %63 = load %struct.lua_TValue** %4, align 4, !dbg !596
  %64 = getelementptr inbounds %struct.lua_TValue* %63, i32 0, i32 1, !dbg !596
  %65 = load i32* %64, align 4, !dbg !596
  %66 = icmp eq i32 %65, 3, !dbg !596
  br i1 %66, label %67, label %72, !dbg !596

; <label>:67                                      ; preds = %62
  %68 = load %struct.lua_TValue** %4, align 4, !dbg !599
  %69 = getelementptr inbounds %struct.lua_TValue* %68, i32 0, i32 0, !dbg !599
  %70 = bitcast %union.Value* %69 to double*, !dbg !599
  %71 = load double* %70, align 8, !dbg !599
  store double %71, double* %n2, align 8, !dbg !599
  br i1 true, label %76, label %88, !dbg !599

; <label>:72                                      ; preds = %62
  %73 = load %struct.lua_TValue** %4, align 4, !dbg !601
  %74 = call i32 @luaV_tonumber_(%struct.lua_TValue* %73, double* %n2), !dbg !601
  %75 = icmp ne i32 %74, 0, !dbg !601
  br i1 %75, label %76, label %88, !dbg !601

; <label>:76                                      ; preds = %72, %67
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %io1}, metadata !603), !dbg !606
  %77 = load %struct.lua_TValue** %5, align 4, !dbg !606
  store %struct.lua_TValue* %77, %struct.lua_TValue** %io1, align 4, !dbg !606
  %78 = load %struct.lua_State** %1, align 4, !dbg !606
  %79 = load i32* %2, align 4, !dbg !606
  %80 = load double* %n1, align 8, !dbg !606
  %81 = load double* %n2, align 8, !dbg !606
  %82 = call double @numarith(%struct.lua_State* %78, i32 %79, double %80, double %81), !dbg !606
  %83 = load %struct.lua_TValue** %io1, align 4, !dbg !606
  %84 = getelementptr inbounds %struct.lua_TValue* %83, i32 0, i32 0, !dbg !606
  %85 = bitcast %union.Value* %84 to double*, !dbg !606
  store double %82, double* %85, align 8, !dbg !606
  %86 = load %struct.lua_TValue** %io1, align 4, !dbg !606
  %87 = getelementptr inbounds %struct.lua_TValue* %86, i32 0, i32 1, !dbg !606
  store i32 3, i32* %87, align 4, !dbg !606
  br label %166, !dbg !607

; <label>:88                                      ; preds = %72, %67, %58, %53
  br label %158, !dbg !608

; <label>:89                                      ; preds = %0
  call void @llvm.dbg.declare(metadata !{double* %n12}, metadata !609), !dbg !611
  call void @llvm.dbg.declare(metadata !{double* %n23}, metadata !612), !dbg !613
  %90 = load %struct.lua_TValue** %3, align 4, !dbg !614
  %91 = getelementptr inbounds %struct.lua_TValue* %90, i32 0, i32 1, !dbg !614
  %92 = load i32* %91, align 4, !dbg !614
  %93 = icmp eq i32 %92, 19, !dbg !614
  br i1 %93, label %94, label %117, !dbg !614

; <label>:94                                      ; preds = %89
  %95 = load %struct.lua_TValue** %4, align 4, !dbg !616
  %96 = getelementptr inbounds %struct.lua_TValue* %95, i32 0, i32 1, !dbg !616
  %97 = load i32* %96, align 4, !dbg !616
  %98 = icmp eq i32 %97, 19, !dbg !616
  br i1 %98, label %99, label %117, !dbg !616

; <label>:99                                      ; preds = %94
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %io4}, metadata !618), !dbg !621
  %100 = load %struct.lua_TValue** %5, align 4, !dbg !621
  store %struct.lua_TValue* %100, %struct.lua_TValue** %io4, align 4, !dbg !621
  %101 = load %struct.lua_State** %1, align 4, !dbg !621
  %102 = load i32* %2, align 4, !dbg !621
  %103 = load %struct.lua_TValue** %3, align 4, !dbg !621
  %104 = getelementptr inbounds %struct.lua_TValue* %103, i32 0, i32 0, !dbg !621
  %105 = bitcast %union.Value* %104 to i64*, !dbg !621
  %106 = load i64* %105, align 8, !dbg !621
  %107 = load %struct.lua_TValue** %4, align 4, !dbg !621
  %108 = getelementptr inbounds %struct.lua_TValue* %107, i32 0, i32 0, !dbg !621
  %109 = bitcast %union.Value* %108 to i64*, !dbg !621
  %110 = load i64* %109, align 8, !dbg !621
  %111 = call i64 @intarith(%struct.lua_State* %101, i32 %102, i64 %106, i64 %110), !dbg !621
  %112 = load %struct.lua_TValue** %io4, align 4, !dbg !621
  %113 = getelementptr inbounds %struct.lua_TValue* %112, i32 0, i32 0, !dbg !621
  %114 = bitcast %union.Value* %113 to i64*, !dbg !621
  store i64 %111, i64* %114, align 8, !dbg !621
  %115 = load %struct.lua_TValue** %io4, align 4, !dbg !621
  %116 = getelementptr inbounds %struct.lua_TValue* %115, i32 0, i32 1, !dbg !621
  store i32 19, i32* %116, align 4, !dbg !621
  br label %166, !dbg !622

; <label>:117                                     ; preds = %94, %89
  %118 = load %struct.lua_TValue** %3, align 4, !dbg !623
  %119 = getelementptr inbounds %struct.lua_TValue* %118, i32 0, i32 1, !dbg !623
  %120 = load i32* %119, align 4, !dbg !623
  %121 = icmp eq i32 %120, 3, !dbg !623
  br i1 %121, label %122, label %127, !dbg !623

; <label>:122                                     ; preds = %117
  %123 = load %struct.lua_TValue** %3, align 4, !dbg !625
  %124 = getelementptr inbounds %struct.lua_TValue* %123, i32 0, i32 0, !dbg !625
  %125 = bitcast %union.Value* %124 to double*, !dbg !625
  %126 = load double* %125, align 8, !dbg !625
  store double %126, double* %n12, align 8, !dbg !625
  br i1 true, label %131, label %157, !dbg !625

; <label>:127                                     ; preds = %117
  %128 = load %struct.lua_TValue** %3, align 4, !dbg !627
  %129 = call i32 @luaV_tonumber_(%struct.lua_TValue* %128, double* %n12), !dbg !627
  %130 = icmp ne i32 %129, 0, !dbg !627
  br i1 %130, label %131, label %157, !dbg !627

; <label>:131                                     ; preds = %127, %122
  %132 = load %struct.lua_TValue** %4, align 4, !dbg !629
  %133 = getelementptr inbounds %struct.lua_TValue* %132, i32 0, i32 1, !dbg !629
  %134 = load i32* %133, align 4, !dbg !629
  %135 = icmp eq i32 %134, 3, !dbg !629
  br i1 %135, label %136, label %141, !dbg !629

; <label>:136                                     ; preds = %131
  %137 = load %struct.lua_TValue** %4, align 4, !dbg !632
  %138 = getelementptr inbounds %struct.lua_TValue* %137, i32 0, i32 0, !dbg !632
  %139 = bitcast %union.Value* %138 to double*, !dbg !632
  %140 = load double* %139, align 8, !dbg !632
  store double %140, double* %n23, align 8, !dbg !632
  br i1 true, label %145, label %157, !dbg !632

; <label>:141                                     ; preds = %131
  %142 = load %struct.lua_TValue** %4, align 4, !dbg !634
  %143 = call i32 @luaV_tonumber_(%struct.lua_TValue* %142, double* %n23), !dbg !634
  %144 = icmp ne i32 %143, 0, !dbg !634
  br i1 %144, label %145, label %157, !dbg !634

; <label>:145                                     ; preds = %141, %136
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %io5}, metadata !636), !dbg !639
  %146 = load %struct.lua_TValue** %5, align 4, !dbg !639
  store %struct.lua_TValue* %146, %struct.lua_TValue** %io5, align 4, !dbg !639
  %147 = load %struct.lua_State** %1, align 4, !dbg !639
  %148 = load i32* %2, align 4, !dbg !639
  %149 = load double* %n12, align 8, !dbg !639
  %150 = load double* %n23, align 8, !dbg !639
  %151 = call double @numarith(%struct.lua_State* %147, i32 %148, double %149, double %150), !dbg !639
  %152 = load %struct.lua_TValue** %io5, align 4, !dbg !639
  %153 = getelementptr inbounds %struct.lua_TValue* %152, i32 0, i32 0, !dbg !639
  %154 = bitcast %union.Value* %153 to double*, !dbg !639
  store double %151, double* %154, align 8, !dbg !639
  %155 = load %struct.lua_TValue** %io5, align 4, !dbg !639
  %156 = getelementptr inbounds %struct.lua_TValue* %155, i32 0, i32 1, !dbg !639
  store i32 3, i32* %156, align 4, !dbg !639
  br label %166, !dbg !640

; <label>:157                                     ; preds = %141, %136, %127, %122
  br label %158, !dbg !641

; <label>:158                                     ; preds = %157, %88, %47
  %159 = load %struct.lua_State** %1, align 4, !dbg !642
  %160 = load %struct.lua_TValue** %3, align 4, !dbg !642
  %161 = load %struct.lua_TValue** %4, align 4, !dbg !642
  %162 = load %struct.lua_TValue** %5, align 4, !dbg !642
  %163 = load i32* %2, align 4, !dbg !642
  %164 = sub nsw i32 %163, 0, !dbg !642
  %165 = add nsw i32 %164, 6, !dbg !642
  call void @luaT_trybinTM(%struct.lua_State* %159, %struct.lua_TValue* %160, %struct.lua_TValue* %161, %struct.lua_TValue* %162, i32 %165), !dbg !642
  br label %166, !dbg !643

; <label>:166                                     ; preds = %158, %145, %99, %76, %35
  ret void, !dbg !644
}

declare hidden i32 @luaV_tointeger(%struct.lua_TValue*, i64*, i32) #2

; Function Attrs: nounwind
define internal i64 @intarith(%struct.lua_State* %L, i32 %op, i64 %v1, i64 %v2) #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.lua_State*, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.lua_State* %L, %struct.lua_State** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %2}, metadata !646), !dbg !647
  store i32 %op, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !648), !dbg !649
  store i64 %v1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata !{i64* %4}, metadata !650), !dbg !651
  store i64 %v2, i64* %5, align 8
  call void @llvm.dbg.declare(metadata !{i64* %5}, metadata !652), !dbg !653
  %6 = load i32* %3, align 4, !dbg !654
  switch i32 %6, label %56 [
    i32 0, label %7
    i32 1, label %11
    i32 2, label %15
    i32 3, label %19
    i32 6, label %24
    i32 7, label %29
    i32 8, label %33
    i32 9, label %37
    i32 10, label %41
    i32 11, label %45
    i32 12, label %50
    i32 13, label %53
  ], !dbg !654

; <label>:7                                       ; preds = %0
  %8 = load i64* %4, align 8, !dbg !655
  %9 = load i64* %5, align 8, !dbg !655
  %10 = add i64 %8, %9, !dbg !655
  store i64 %10, i64* %1, !dbg !655
  br label %57, !dbg !655

; <label>:11                                      ; preds = %0
  %12 = load i64* %4, align 8, !dbg !657
  %13 = load i64* %5, align 8, !dbg !657
  %14 = sub i64 %12, %13, !dbg !657
  store i64 %14, i64* %1, !dbg !657
  br label %57, !dbg !657

; <label>:15                                      ; preds = %0
  %16 = load i64* %4, align 8, !dbg !658
  %17 = load i64* %5, align 8, !dbg !658
  %18 = mul i64 %16, %17, !dbg !658
  store i64 %18, i64* %1, !dbg !658
  br label %57, !dbg !658

; <label>:19                                      ; preds = %0
  %20 = load %struct.lua_State** %2, align 4, !dbg !659
  %21 = load i64* %4, align 8, !dbg !659
  %22 = load i64* %5, align 8, !dbg !659
  %23 = call i64 @luaV_mod(%struct.lua_State* %20, i64 %21, i64 %22), !dbg !659
  store i64 %23, i64* %1, !dbg !659
  br label %57, !dbg !659

; <label>:24                                      ; preds = %0
  %25 = load %struct.lua_State** %2, align 4, !dbg !660
  %26 = load i64* %4, align 8, !dbg !660
  %27 = load i64* %5, align 8, !dbg !660
  %28 = call i64 @luaV_div(%struct.lua_State* %25, i64 %26, i64 %27), !dbg !660
  store i64 %28, i64* %1, !dbg !660
  br label %57, !dbg !660

; <label>:29                                      ; preds = %0
  %30 = load i64* %4, align 8, !dbg !661
  %31 = load i64* %5, align 8, !dbg !661
  %32 = and i64 %30, %31, !dbg !661
  store i64 %32, i64* %1, !dbg !661
  br label %57, !dbg !661

; <label>:33                                      ; preds = %0
  %34 = load i64* %4, align 8, !dbg !662
  %35 = load i64* %5, align 8, !dbg !662
  %36 = or i64 %34, %35, !dbg !662
  store i64 %36, i64* %1, !dbg !662
  br label %57, !dbg !662

; <label>:37                                      ; preds = %0
  %38 = load i64* %4, align 8, !dbg !663
  %39 = load i64* %5, align 8, !dbg !663
  %40 = xor i64 %38, %39, !dbg !663
  store i64 %40, i64* %1, !dbg !663
  br label %57, !dbg !663

; <label>:41                                      ; preds = %0
  %42 = load i64* %4, align 8, !dbg !664
  %43 = load i64* %5, align 8, !dbg !664
  %44 = call i64 @luaV_shiftl(i64 %42, i64 %43), !dbg !664
  store i64 %44, i64* %1, !dbg !664
  br label %57, !dbg !664

; <label>:45                                      ; preds = %0
  %46 = load i64* %4, align 8, !dbg !665
  %47 = load i64* %5, align 8, !dbg !665
  %48 = sub nsw i64 0, %47, !dbg !665
  %49 = call i64 @luaV_shiftl(i64 %46, i64 %48), !dbg !665
  store i64 %49, i64* %1, !dbg !665
  br label %57, !dbg !665

; <label>:50                                      ; preds = %0
  %51 = load i64* %4, align 8, !dbg !666
  %52 = sub i64 0, %51, !dbg !666
  store i64 %52, i64* %1, !dbg !666
  br label %57, !dbg !666

; <label>:53                                      ; preds = %0
  %54 = load i64* %4, align 8, !dbg !667
  %55 = xor i64 -1, %54, !dbg !667
  store i64 %55, i64* %1, !dbg !667
  br label %57, !dbg !667

; <label>:56                                      ; preds = %0
  store i64 0, i64* %1, !dbg !668
  br label %57, !dbg !668

; <label>:57                                      ; preds = %56, %53, %50, %45, %41, %37, %33, %29, %24, %19, %15, %11, %7
  %58 = load i64* %1, !dbg !669
  ret i64 %58, !dbg !669
}

declare hidden i32 @luaV_tonumber_(%struct.lua_TValue*, double*) #2

; Function Attrs: nounwind
define internal double @numarith(%struct.lua_State* %L, i32 %op, double %v1, double %v2) #0 {
  %1 = alloca double, align 8
  %2 = alloca %struct.lua_State*, align 4
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %m = alloca double, align 8
  store %struct.lua_State* %L, %struct.lua_State** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %2}, metadata !670), !dbg !671
  store i32 %op, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !672), !dbg !673
  store double %v1, double* %4, align 8
  call void @llvm.dbg.declare(metadata !{double* %4}, metadata !674), !dbg !675
  store double %v2, double* %5, align 8
  call void @llvm.dbg.declare(metadata !{double* %5}, metadata !676), !dbg !677
  %6 = load i32* %3, align 4, !dbg !678
  switch i32 %6, label %51 [
    i32 0, label %7
    i32 1, label %11
    i32 2, label %15
    i32 5, label %19
    i32 4, label %23
    i32 6, label %28
    i32 12, label %34
    i32 3, label %37
  ], !dbg !678

; <label>:7                                       ; preds = %0
  %8 = load double* %4, align 8, !dbg !679
  %9 = load double* %5, align 8, !dbg !679
  %10 = fadd double %8, %9, !dbg !679
  store double %10, double* %1, !dbg !679
  br label %52, !dbg !679

; <label>:11                                      ; preds = %0
  %12 = load double* %4, align 8, !dbg !681
  %13 = load double* %5, align 8, !dbg !681
  %14 = fsub double %12, %13, !dbg !681
  store double %14, double* %1, !dbg !681
  br label %52, !dbg !681

; <label>:15                                      ; preds = %0
  %16 = load double* %4, align 8, !dbg !682
  %17 = load double* %5, align 8, !dbg !682
  %18 = fmul double %16, %17, !dbg !682
  store double %18, double* %1, !dbg !682
  br label %52, !dbg !682

; <label>:19                                      ; preds = %0
  %20 = load double* %4, align 8, !dbg !683
  %21 = load double* %5, align 8, !dbg !683
  %22 = fdiv double %20, %21, !dbg !683
  store double %22, double* %1, !dbg !683
  br label %52, !dbg !683

; <label>:23                                      ; preds = %0
  %24 = load %struct.lua_State** %2, align 4, !dbg !684
  %25 = load double* %4, align 8, !dbg !685
  %26 = load double* %5, align 8, !dbg !685
  %27 = call double @pow(double %25, double %26) #5, !dbg !685
  store double %27, double* %1, !dbg !685
  br label %52, !dbg !685

; <label>:28                                      ; preds = %0
  %29 = load %struct.lua_State** %2, align 4, !dbg !686
  %30 = load double* %4, align 8, !dbg !687
  %31 = load double* %5, align 8, !dbg !687
  %32 = fdiv double %30, %31, !dbg !687
  %33 = call double @floor(double %32) #1, !dbg !687
  store double %33, double* %1, !dbg !687
  br label %52, !dbg !687

; <label>:34                                      ; preds = %0
  %35 = load double* %4, align 8, !dbg !688
  %36 = fsub double -0.000000e+00, %35, !dbg !688
  store double %36, double* %1, !dbg !688
  br label %52, !dbg !688

; <label>:37                                      ; preds = %0
  call void @llvm.dbg.declare(metadata !{double* %m}, metadata !689), !dbg !691
  %38 = load double* %4, align 8, !dbg !692
  %39 = load double* %5, align 8, !dbg !692
  %40 = call double @fmod(double %38, double %39) #5, !dbg !692
  store double %40, double* %m, align 8, !dbg !692
  %41 = load double* %m, align 8, !dbg !694
  %42 = load double* %5, align 8, !dbg !694
  %43 = fmul double %41, %42, !dbg !694
  %44 = fcmp olt double %43, 0.000000e+00, !dbg !694
  br i1 %44, label %45, label %49, !dbg !694

; <label>:45                                      ; preds = %37
  %46 = load double* %5, align 8, !dbg !696
  %47 = load double* %m, align 8, !dbg !696
  %48 = fadd double %47, %46, !dbg !696
  store double %48, double* %m, align 8, !dbg !696
  br label %49, !dbg !696

; <label>:49                                      ; preds = %45, %37
  %50 = load double* %m, align 8, !dbg !698
  store double %50, double* %1, !dbg !698
  br label %52, !dbg !698

; <label>:51                                      ; preds = %0
  store double 0.000000e+00, double* %1, !dbg !699
  br label %52, !dbg !699

; <label>:52                                      ; preds = %51, %49, %34, %28, %23, %19, %15, %11, %7
  %53 = load double* %1, !dbg !700
  ret double %53, !dbg !700
}

declare hidden void @luaT_trybinTM(%struct.lua_State*, %struct.lua_TValue*, %struct.lua_TValue*, %struct.lua_TValue*, i32) #2

; Function Attrs: nounwind
define hidden i32 @luaO_hexavalue(i32 %c) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 %c, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !701), !dbg !702
  %3 = load i32* %2, align 4, !dbg !703
  %4 = add nsw i32 %3, 1, !dbg !703
  %5 = getelementptr inbounds [257 x i8]* @luai_ctype_, i32 0, i32 %4, !dbg !703
  %6 = load i8* %5, align 1, !dbg !703
  %7 = zext i8 %6 to i32, !dbg !703
  %8 = and i32 %7, 2, !dbg !703
  %9 = icmp ne i32 %8, 0, !dbg !703
  br i1 %9, label %10, label %13, !dbg !703

; <label>:10                                      ; preds = %0
  %11 = load i32* %2, align 4, !dbg !705
  %12 = sub nsw i32 %11, 48, !dbg !705
  store i32 %12, i32* %1, !dbg !705
  br label %18, !dbg !705

; <label>:13                                      ; preds = %0
  %14 = load i32* %2, align 4, !dbg !707
  %15 = or i32 %14, 32, !dbg !707
  %16 = sub nsw i32 %15, 97, !dbg !707
  %17 = add nsw i32 %16, 10, !dbg !707
  store i32 %17, i32* %1, !dbg !707
  br label %18, !dbg !707

; <label>:18                                      ; preds = %13, %10
  %19 = load i32* %1, !dbg !708
  ret i32 %19, !dbg !708
}

; Function Attrs: nounwind
define hidden i32 @luaO_str2num(i8* %s, %struct.lua_TValue* %o) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 4
  %3 = alloca %struct.lua_TValue*, align 4
  %i = alloca i64, align 8
  %n = alloca double, align 8
  %e = alloca i8*, align 4
  %io = alloca %struct.lua_TValue*, align 4
  %io1 = alloca %struct.lua_TValue*, align 4
  store i8* %s, i8** %2, align 4
  call void @llvm.dbg.declare(metadata !{i8** %2}, metadata !709), !dbg !710
  store %struct.lua_TValue* %o, %struct.lua_TValue** %3, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %3}, metadata !711), !dbg !712
  call void @llvm.dbg.declare(metadata !{i64* %i}, metadata !713), !dbg !714
  call void @llvm.dbg.declare(metadata !{double* %n}, metadata !715), !dbg !716
  call void @llvm.dbg.declare(metadata !{i8** %e}, metadata !717), !dbg !718
  %4 = load i8** %2, align 4, !dbg !719
  %5 = call i8* @l_str2int(i8* %4, i64* %i), !dbg !719
  store i8* %5, i8** %e, align 4, !dbg !719
  %6 = icmp ne i8* %5, null, !dbg !719
  br i1 %6, label %7, label %15, !dbg !719

; <label>:7                                       ; preds = %0
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %io}, metadata !721), !dbg !724
  %8 = load %struct.lua_TValue** %3, align 4, !dbg !724
  store %struct.lua_TValue* %8, %struct.lua_TValue** %io, align 4, !dbg !724
  %9 = load i64* %i, align 8, !dbg !724
  %10 = load %struct.lua_TValue** %io, align 4, !dbg !724
  %11 = getelementptr inbounds %struct.lua_TValue* %10, i32 0, i32 0, !dbg !724
  %12 = bitcast %union.Value* %11 to i64*, !dbg !724
  store i64 %9, i64* %12, align 8, !dbg !724
  %13 = load %struct.lua_TValue** %io, align 4, !dbg !724
  %14 = getelementptr inbounds %struct.lua_TValue* %13, i32 0, i32 1, !dbg !724
  store i32 19, i32* %14, align 4, !dbg !724
  br label %29, !dbg !725

; <label>:15                                      ; preds = %0
  %16 = load i8** %2, align 4, !dbg !726
  %17 = call i8* @l_str2d(i8* %16, double* %n), !dbg !726
  store i8* %17, i8** %e, align 4, !dbg !726
  %18 = icmp ne i8* %17, null, !dbg !726
  br i1 %18, label %19, label %27, !dbg !726

; <label>:19                                      ; preds = %15
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %io1}, metadata !728), !dbg !731
  %20 = load %struct.lua_TValue** %3, align 4, !dbg !731
  store %struct.lua_TValue* %20, %struct.lua_TValue** %io1, align 4, !dbg !731
  %21 = load double* %n, align 8, !dbg !731
  %22 = load %struct.lua_TValue** %io1, align 4, !dbg !731
  %23 = getelementptr inbounds %struct.lua_TValue* %22, i32 0, i32 0, !dbg !731
  %24 = bitcast %union.Value* %23 to double*, !dbg !731
  store double %21, double* %24, align 8, !dbg !731
  %25 = load %struct.lua_TValue** %io1, align 4, !dbg !731
  %26 = getelementptr inbounds %struct.lua_TValue* %25, i32 0, i32 1, !dbg !731
  store i32 3, i32* %26, align 4, !dbg !731
  br label %28, !dbg !732

; <label>:27                                      ; preds = %15
  store i32 0, i32* %1, !dbg !733
  br label %36, !dbg !733

; <label>:28                                      ; preds = %19
  br label %29

; <label>:29                                      ; preds = %28, %7
  %30 = load i8** %e, align 4, !dbg !734
  %31 = load i8** %2, align 4, !dbg !734
  %32 = ptrtoint i8* %30 to i32, !dbg !734
  %33 = ptrtoint i8* %31 to i32, !dbg !734
  %34 = sub i32 %32, %33, !dbg !734
  %35 = add nsw i32 %34, 1, !dbg !734
  store i32 %35, i32* %1, !dbg !734
  br label %36, !dbg !734

; <label>:36                                      ; preds = %29, %27
  %37 = load i32* %1, !dbg !735
  ret i32 %37, !dbg !735
}

; Function Attrs: nounwind
define internal i8* @l_str2int(i8* %s, i64* %result) #0 {
  %1 = alloca i8*, align 4
  %2 = alloca i8*, align 4
  %3 = alloca i64*, align 4
  %a = alloca i64, align 8
  %empty = alloca i32, align 4
  %neg = alloca i32, align 4
  %d = alloca i32, align 4
  store i8* %s, i8** %2, align 4
  call void @llvm.dbg.declare(metadata !{i8** %2}, metadata !736), !dbg !737
  store i64* %result, i64** %3, align 4
  call void @llvm.dbg.declare(metadata !{i64** %3}, metadata !738), !dbg !739
  call void @llvm.dbg.declare(metadata !{i64* %a}, metadata !740), !dbg !743
  store i64 0, i64* %a, align 8, !dbg !744
  call void @llvm.dbg.declare(metadata !{i32* %empty}, metadata !745), !dbg !746
  store i32 1, i32* %empty, align 4, !dbg !747
  call void @llvm.dbg.declare(metadata !{i32* %neg}, metadata !748), !dbg !749
  br label %4, !dbg !750

; <label>:4                                       ; preds = %14, %0
  %5 = load i8** %2, align 4, !dbg !751
  %6 = load i8* %5, align 1, !dbg !751
  %7 = zext i8 %6 to i32, !dbg !751
  %8 = add nsw i32 %7, 1, !dbg !751
  %9 = getelementptr inbounds [257 x i8]* @luai_ctype_, i32 0, i32 %8, !dbg !751
  %10 = load i8* %9, align 1, !dbg !751
  %11 = zext i8 %10 to i32, !dbg !751
  %12 = and i32 %11, 8, !dbg !751
  %13 = icmp ne i32 %12, 0, !dbg !751
  br i1 %13, label %14, label %17, !dbg !751

; <label>:14                                      ; preds = %4
  %15 = load i8** %2, align 4, !dbg !754
  %16 = getelementptr inbounds i8* %15, i32 1, !dbg !754
  store i8* %16, i8** %2, align 4, !dbg !754
  br label %4, !dbg !754

; <label>:17                                      ; preds = %4
  %18 = call i32 @isneg(i8** %2), !dbg !756
  store i32 %18, i32* %neg, align 4, !dbg !756
  %19 = load i8** %2, align 4, !dbg !757
  %20 = getelementptr inbounds i8* %19, i32 0, !dbg !757
  %21 = load i8* %20, align 1, !dbg !757
  %22 = zext i8 %21 to i32, !dbg !757
  %23 = icmp eq i32 %22, 48, !dbg !757
  br i1 %23, label %24, label %62, !dbg !757

; <label>:24                                      ; preds = %17
  %25 = load i8** %2, align 4, !dbg !759
  %26 = getelementptr inbounds i8* %25, i32 1, !dbg !759
  %27 = load i8* %26, align 1, !dbg !759
  %28 = zext i8 %27 to i32, !dbg !759
  %29 = icmp eq i32 %28, 120, !dbg !759
  br i1 %29, label %36, label %30, !dbg !759

; <label>:30                                      ; preds = %24
  %31 = load i8** %2, align 4, !dbg !761
  %32 = getelementptr inbounds i8* %31, i32 1, !dbg !761
  %33 = load i8* %32, align 1, !dbg !761
  %34 = zext i8 %33 to i32, !dbg !761
  %35 = icmp eq i32 %34, 88, !dbg !761
  br i1 %35, label %36, label %62, !dbg !761

; <label>:36                                      ; preds = %30, %24
  %37 = load i8** %2, align 4, !dbg !763
  %38 = getelementptr inbounds i8* %37, i32 2, !dbg !763
  store i8* %38, i8** %2, align 4, !dbg !763
  br label %39, !dbg !765

; <label>:39                                      ; preds = %58, %36
  %40 = load i8** %2, align 4, !dbg !767
  %41 = load i8* %40, align 1, !dbg !767
  %42 = zext i8 %41 to i32, !dbg !767
  %43 = add nsw i32 %42, 1, !dbg !767
  %44 = getelementptr inbounds [257 x i8]* @luai_ctype_, i32 0, i32 %43, !dbg !767
  %45 = load i8* %44, align 1, !dbg !767
  %46 = zext i8 %45 to i32, !dbg !767
  %47 = and i32 %46, 16, !dbg !767
  %48 = icmp ne i32 %47, 0, !dbg !767
  br i1 %48, label %49, label %61, !dbg !767

; <label>:49                                      ; preds = %39
  %50 = load i64* %a, align 8, !dbg !770
  %51 = mul i64 %50, 16, !dbg !770
  %52 = load i8** %2, align 4, !dbg !772
  %53 = load i8* %52, align 1, !dbg !772
  %54 = zext i8 %53 to i32, !dbg !772
  %55 = call i32 @luaO_hexavalue(i32 %54), !dbg !772
  %56 = sext i32 %55 to i64, !dbg !772
  %57 = add i64 %51, %56, !dbg !772
  store i64 %57, i64* %a, align 8, !dbg !772
  store i32 0, i32* %empty, align 4, !dbg !773
  br label %58, !dbg !774

; <label>:58                                      ; preds = %49
  %59 = load i8** %2, align 4, !dbg !775
  %60 = getelementptr inbounds i8* %59, i32 1, !dbg !775
  store i8* %60, i8** %2, align 4, !dbg !775
  br label %39, !dbg !775

; <label>:61                                      ; preds = %39
  br label %99, !dbg !776

; <label>:62                                      ; preds = %30, %17
  br label %63, !dbg !777

; <label>:63                                      ; preds = %95, %62
  %64 = load i8** %2, align 4, !dbg !780
  %65 = load i8* %64, align 1, !dbg !780
  %66 = zext i8 %65 to i32, !dbg !780
  %67 = add nsw i32 %66, 1, !dbg !780
  %68 = getelementptr inbounds [257 x i8]* @luai_ctype_, i32 0, i32 %67, !dbg !780
  %69 = load i8* %68, align 1, !dbg !780
  %70 = zext i8 %69 to i32, !dbg !780
  %71 = and i32 %70, 2, !dbg !780
  %72 = icmp ne i32 %71, 0, !dbg !780
  br i1 %72, label %73, label %98, !dbg !780

; <label>:73                                      ; preds = %63
  call void @llvm.dbg.declare(metadata !{i32* %d}, metadata !783), !dbg !785
  %74 = load i8** %2, align 4, !dbg !786
  %75 = load i8* %74, align 1, !dbg !786
  %76 = zext i8 %75 to i32, !dbg !786
  %77 = sub nsw i32 %76, 48, !dbg !786
  store i32 %77, i32* %d, align 4, !dbg !786
  %78 = load i64* %a, align 8, !dbg !787
  %79 = icmp uge i64 %78, 922337203685477580, !dbg !787
  br i1 %79, label %80, label %89, !dbg !787

; <label>:80                                      ; preds = %73
  %81 = load i64* %a, align 8, !dbg !789
  %82 = icmp ugt i64 %81, 922337203685477580, !dbg !789
  br i1 %82, label %88, label %83, !dbg !789

; <label>:83                                      ; preds = %80
  %84 = load i32* %d, align 4, !dbg !791
  %85 = load i32* %neg, align 4, !dbg !791
  %86 = add nsw i32 7, %85, !dbg !791
  %87 = icmp sgt i32 %84, %86, !dbg !791
  br i1 %87, label %88, label %89, !dbg !791

; <label>:88                                      ; preds = %83, %80
  store i8* null, i8** %1, !dbg !793
  br label %134, !dbg !793

; <label>:89                                      ; preds = %83, %73
  %90 = load i64* %a, align 8, !dbg !794
  %91 = mul i64 %90, 10, !dbg !794
  %92 = load i32* %d, align 4, !dbg !794
  %93 = sext i32 %92 to i64, !dbg !794
  %94 = add i64 %91, %93, !dbg !794
  store i64 %94, i64* %a, align 8, !dbg !794
  store i32 0, i32* %empty, align 4, !dbg !795
  br label %95, !dbg !796

; <label>:95                                      ; preds = %89
  %96 = load i8** %2, align 4, !dbg !797
  %97 = getelementptr inbounds i8* %96, i32 1, !dbg !797
  store i8* %97, i8** %2, align 4, !dbg !797
  br label %63, !dbg !797

; <label>:98                                      ; preds = %63
  br label %99

; <label>:99                                      ; preds = %98, %61
  br label %100, !dbg !798

; <label>:100                                     ; preds = %110, %99
  %101 = load i8** %2, align 4, !dbg !799
  %102 = load i8* %101, align 1, !dbg !799
  %103 = zext i8 %102 to i32, !dbg !799
  %104 = add nsw i32 %103, 1, !dbg !799
  %105 = getelementptr inbounds [257 x i8]* @luai_ctype_, i32 0, i32 %104, !dbg !799
  %106 = load i8* %105, align 1, !dbg !799
  %107 = zext i8 %106 to i32, !dbg !799
  %108 = and i32 %107, 8, !dbg !799
  %109 = icmp ne i32 %108, 0, !dbg !799
  br i1 %109, label %110, label %113, !dbg !799

; <label>:110                                     ; preds = %100
  %111 = load i8** %2, align 4, !dbg !802
  %112 = getelementptr inbounds i8* %111, i32 1, !dbg !802
  store i8* %112, i8** %2, align 4, !dbg !802
  br label %100, !dbg !802

; <label>:113                                     ; preds = %100
  %114 = load i32* %empty, align 4, !dbg !804
  %115 = icmp ne i32 %114, 0, !dbg !804
  br i1 %115, label %121, label %116, !dbg !804

; <label>:116                                     ; preds = %113
  %117 = load i8** %2, align 4, !dbg !806
  %118 = load i8* %117, align 1, !dbg !806
  %119 = zext i8 %118 to i32, !dbg !806
  %120 = icmp ne i32 %119, 0, !dbg !806
  br i1 %120, label %121, label %122, !dbg !806

; <label>:121                                     ; preds = %116, %113
  store i8* null, i8** %1, !dbg !808
  br label %134, !dbg !808

; <label>:122                                     ; preds = %116
  %123 = load i32* %neg, align 4, !dbg !811
  %124 = icmp ne i32 %123, 0, !dbg !811
  br i1 %124, label %125, label %128, !dbg !811

; <label>:125                                     ; preds = %122
  %126 = load i64* %a, align 8, !dbg !813
  %127 = sub i64 0, %126, !dbg !813
  br label %130, !dbg !813

; <label>:128                                     ; preds = %122
  %129 = load i64* %a, align 8, !dbg !815
  br label %130, !dbg !815

; <label>:130                                     ; preds = %128, %125
  %131 = phi i64 [ %127, %125 ], [ %129, %128 ], !dbg !811
  %132 = load i64** %3, align 4, !dbg !817
  store i64 %131, i64* %132, align 8, !dbg !817
  %133 = load i8** %2, align 4, !dbg !820
  store i8* %133, i8** %1, !dbg !820
  br label %134, !dbg !820

; <label>:134                                     ; preds = %130, %121, %88
  %135 = load i8** %1, !dbg !821
  ret i8* %135, !dbg !821
}

; Function Attrs: nounwind
define internal i8* @l_str2d(i8* %s, double* %result) #0 {
  %1 = alloca i8*, align 4
  %2 = alloca i8*, align 4
  %3 = alloca double*, align 4
  %endptr = alloca i8*, align 4
  %pmode = alloca i8*, align 4
  %mode = alloca i32, align 4
  %buff = alloca [201 x i8], align 1
  %pdot = alloca i8*, align 4
  store i8* %s, i8** %2, align 4
  call void @llvm.dbg.declare(metadata !{i8** %2}, metadata !822), !dbg !823
  store double* %result, double** %3, align 4
  call void @llvm.dbg.declare(metadata !{double** %3}, metadata !824), !dbg !825
  call void @llvm.dbg.declare(metadata !{i8** %endptr}, metadata !826), !dbg !827
  call void @llvm.dbg.declare(metadata !{i8** %pmode}, metadata !828), !dbg !829
  %4 = load i8** %2, align 4, !dbg !830
  %5 = call i8* @strpbrk(i8* %4, i8* getelementptr inbounds ([6 x i8]* @.str11, i32 0, i32 0)) #7, !dbg !830
  store i8* %5, i8** %pmode, align 4, !dbg !830
  call void @llvm.dbg.declare(metadata !{i32* %mode}, metadata !831), !dbg !832
  %6 = load i8** %pmode, align 4, !dbg !833
  %7 = icmp ne i8* %6, null, !dbg !833
  br i1 %7, label %8, label %13, !dbg !833

; <label>:8                                       ; preds = %0
  %9 = load i8** %pmode, align 4, !dbg !834
  %10 = load i8* %9, align 1, !dbg !834
  %11 = zext i8 %10 to i32, !dbg !834
  %12 = or i32 %11, 32, !dbg !834
  br label %14, !dbg !834

; <label>:13                                      ; preds = %0
  br label %14, !dbg !836

; <label>:14                                      ; preds = %13, %8
  %15 = phi i32 [ %12, %8 ], [ 0, %13 ], !dbg !833
  store i32 %15, i32* %mode, align 4, !dbg !838
  %16 = load i32* %mode, align 4, !dbg !841
  %17 = icmp eq i32 %16, 110, !dbg !841
  br i1 %17, label %18, label %19, !dbg !841

; <label>:18                                      ; preds = %14
  store i8* null, i8** %1, !dbg !843
  br label %68, !dbg !843

; <label>:19                                      ; preds = %14
  %20 = load i8** %2, align 4, !dbg !844
  %21 = load double** %3, align 4, !dbg !844
  %22 = load i32* %mode, align 4, !dbg !844
  %23 = call i8* @l_str2dloc(i8* %20, double* %21, i32 %22), !dbg !844
  store i8* %23, i8** %endptr, align 4, !dbg !844
  %24 = load i8** %endptr, align 4, !dbg !845
  %25 = icmp eq i8* %24, null, !dbg !845
  br i1 %25, label %26, label %66, !dbg !845

; <label>:26                                      ; preds = %19
  call void @llvm.dbg.declare(metadata !{[201 x i8]* %buff}, metadata !847), !dbg !852
  call void @llvm.dbg.declare(metadata !{i8** %pdot}, metadata !853), !dbg !854
  %27 = load i8** %2, align 4, !dbg !855
  %28 = call i8* @strchr(i8* %27, i32 46) #7, !dbg !855
  store i8* %28, i8** %pdot, align 4, !dbg !855
  %29 = load i8** %2, align 4, !dbg !856
  %30 = call i32 @strlen(i8* %29) #7, !dbg !856
  %31 = icmp ugt i32 %30, 200, !dbg !856
  br i1 %31, label %35, label %32, !dbg !856

; <label>:32                                      ; preds = %26
  %33 = load i8** %pdot, align 4, !dbg !858
  %34 = icmp eq i8* %33, null, !dbg !858
  br i1 %34, label %35, label %36, !dbg !858

; <label>:35                                      ; preds = %32, %26
  store i8* null, i8** %1, !dbg !860
  br label %68, !dbg !860

; <label>:36                                      ; preds = %32
  %37 = getelementptr inbounds [201 x i8]* %buff, i32 0, i32 0, !dbg !861
  %38 = load i8** %2, align 4, !dbg !861
  %39 = call i8* @strcpy(i8* %37, i8* %38) #5, !dbg !861
  %40 = call %struct.lconv* @localeconv() #5, !dbg !862
  %41 = getelementptr inbounds %struct.lconv* %40, i32 0, i32 0, !dbg !862
  %42 = load i8** %41, align 4, !dbg !862
  %43 = getelementptr inbounds i8* %42, i32 0, !dbg !862
  %44 = load i8* %43, align 1, !dbg !862
  %45 = load i8** %pdot, align 4, !dbg !862
  %46 = load i8** %2, align 4, !dbg !862
  %47 = ptrtoint i8* %45 to i32, !dbg !862
  %48 = ptrtoint i8* %46 to i32, !dbg !862
  %49 = sub i32 %47, %48, !dbg !862
  %50 = getelementptr inbounds [201 x i8]* %buff, i32 0, i32 %49, !dbg !862
  store i8 %44, i8* %50, align 1, !dbg !862
  %51 = getelementptr inbounds [201 x i8]* %buff, i32 0, i32 0, !dbg !863
  %52 = load double** %3, align 4, !dbg !863
  %53 = load i32* %mode, align 4, !dbg !863
  %54 = call i8* @l_str2dloc(i8* %51, double* %52, i32 %53), !dbg !863
  store i8* %54, i8** %endptr, align 4, !dbg !863
  %55 = load i8** %endptr, align 4, !dbg !864
  %56 = icmp ne i8* %55, null, !dbg !864
  br i1 %56, label %57, label %65, !dbg !864

; <label>:57                                      ; preds = %36
  %58 = load i8** %2, align 4, !dbg !866
  %59 = load i8** %endptr, align 4, !dbg !866
  %60 = getelementptr inbounds [201 x i8]* %buff, i32 0, i32 0, !dbg !866
  %61 = ptrtoint i8* %59 to i32, !dbg !866
  %62 = ptrtoint i8* %60 to i32, !dbg !866
  %63 = sub i32 %61, %62, !dbg !866
  %64 = getelementptr inbounds i8* %58, i32 %63, !dbg !866
  store i8* %64, i8** %endptr, align 4, !dbg !866
  br label %65, !dbg !866

; <label>:65                                      ; preds = %57, %36
  br label %66, !dbg !867

; <label>:66                                      ; preds = %65, %19
  %67 = load i8** %endptr, align 4, !dbg !868
  store i8* %67, i8** %1, !dbg !868
  br label %68, !dbg !868

; <label>:68                                      ; preds = %66, %35, %18
  %69 = load i8** %1, !dbg !869
  ret i8* %69, !dbg !869
}

; Function Attrs: nounwind
define hidden i32 @luaO_utf8esc(i8* %buff, i32 %x) #0 {
  %1 = alloca i8*, align 4
  %2 = alloca i32, align 4
  %n = alloca i32, align 4
  %mfb = alloca i32, align 4
  store i8* %buff, i8** %1, align 4
  call void @llvm.dbg.declare(metadata !{i8** %1}, metadata !870), !dbg !871
  store i32 %x, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !872), !dbg !873
  call void @llvm.dbg.declare(metadata !{i32* %n}, metadata !874), !dbg !875
  store i32 1, i32* %n, align 4, !dbg !876
  %3 = load i32* %2, align 4, !dbg !877
  %4 = icmp ult i32 %3, 128, !dbg !877
  br i1 %4, label %5, label %10, !dbg !877

; <label>:5                                       ; preds = %0
  %6 = load i32* %2, align 4, !dbg !879
  %7 = trunc i32 %6 to i8, !dbg !879
  %8 = load i8** %1, align 4, !dbg !879
  %9 = getelementptr inbounds i8* %8, i32 7, !dbg !879
  store i8 %7, i8* %9, align 1, !dbg !879
  br label %40, !dbg !879

; <label>:10                                      ; preds = %0
  call void @llvm.dbg.declare(metadata !{i32* %mfb}, metadata !880), !dbg !882
  store i32 63, i32* %mfb, align 4, !dbg !883
  br label %11, !dbg !884

; <label>:11                                      ; preds = %25, %10
  %12 = load i32* %2, align 4, !dbg !885
  %13 = and i32 %12, 63, !dbg !885
  %14 = or i32 128, %13, !dbg !885
  %15 = trunc i32 %14 to i8, !dbg !885
  %16 = load i32* %n, align 4, !dbg !885
  %17 = add nsw i32 %16, 1, !dbg !885
  store i32 %17, i32* %n, align 4, !dbg !885
  %18 = sub nsw i32 8, %16, !dbg !885
  %19 = load i8** %1, align 4, !dbg !885
  %20 = getelementptr inbounds i8* %19, i32 %18, !dbg !885
  store i8 %15, i8* %20, align 1, !dbg !885
  %21 = load i32* %2, align 4, !dbg !887
  %22 = lshr i32 %21, 6, !dbg !887
  store i32 %22, i32* %2, align 4, !dbg !887
  %23 = load i32* %mfb, align 4, !dbg !888
  %24 = lshr i32 %23, 1, !dbg !888
  store i32 %24, i32* %mfb, align 4, !dbg !888
  br label %25, !dbg !889

; <label>:25                                      ; preds = %11
  %26 = load i32* %2, align 4, !dbg !890
  %27 = load i32* %mfb, align 4, !dbg !890
  %28 = icmp ugt i32 %26, %27, !dbg !890
  br i1 %28, label %11, label %29, !dbg !890

; <label>:29                                      ; preds = %25
  %30 = load i32* %mfb, align 4, !dbg !892
  %31 = xor i32 %30, -1, !dbg !892
  %32 = shl i32 %31, 1, !dbg !892
  %33 = load i32* %2, align 4, !dbg !892
  %34 = or i32 %32, %33, !dbg !892
  %35 = trunc i32 %34 to i8, !dbg !892
  %36 = load i32* %n, align 4, !dbg !892
  %37 = sub nsw i32 8, %36, !dbg !892
  %38 = load i8** %1, align 4, !dbg !892
  %39 = getelementptr inbounds i8* %38, i32 %37, !dbg !892
  store i8 %35, i8* %39, align 1, !dbg !892
  br label %40

; <label>:40                                      ; preds = %29, %5
  %41 = load i32* %n, align 4, !dbg !893
  ret i32 %41, !dbg !893
}

; Function Attrs: nounwind
define hidden void @luaO_tostring(%struct.lua_State* %L, %struct.lua_TValue* %obj) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca %struct.lua_TValue*, align 4
  %buff = alloca [50 x i8], align 1
  %len = alloca i32, align 4
  %io = alloca %struct.lua_TValue*, align 4
  %x_ = alloca %struct.TString*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !894), !dbg !895
  store %struct.lua_TValue* %obj, %struct.lua_TValue** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %2}, metadata !896), !dbg !897
  call void @llvm.dbg.declare(metadata !{[50 x i8]* %buff}, metadata !898), !dbg !902
  call void @llvm.dbg.declare(metadata !{i32* %len}, metadata !903), !dbg !904
  %3 = load %struct.lua_TValue** %2, align 4, !dbg !905
  %4 = getelementptr inbounds %struct.lua_TValue* %3, i32 0, i32 1, !dbg !905
  %5 = load i32* %4, align 4, !dbg !905
  %6 = icmp eq i32 %5, 19, !dbg !905
  br i1 %6, label %7, label %14, !dbg !905

; <label>:7                                       ; preds = %0
  %8 = getelementptr inbounds [50 x i8]* %buff, i32 0, i32 0, !dbg !907
  %9 = load %struct.lua_TValue** %2, align 4, !dbg !907
  %10 = getelementptr inbounds %struct.lua_TValue* %9, i32 0, i32 0, !dbg !907
  %11 = bitcast %union.Value* %10 to i64*, !dbg !907
  %12 = load i64* %11, align 8, !dbg !907
  %13 = call i32 (i8*, i32, i8*, ...)* @snprintf(i8* %8, i32 50, i8* getelementptr inbounds ([5 x i8]* @.str, i32 0, i32 0), i64 %12) #5, !dbg !907
  store i32 %13, i32* %len, align 4, !dbg !907
  br label %40, !dbg !907

; <label>:14                                      ; preds = %0
  %15 = getelementptr inbounds [50 x i8]* %buff, i32 0, i32 0, !dbg !908
  %16 = load %struct.lua_TValue** %2, align 4, !dbg !908
  %17 = getelementptr inbounds %struct.lua_TValue* %16, i32 0, i32 0, !dbg !908
  %18 = bitcast %union.Value* %17 to double*, !dbg !908
  %19 = load double* %18, align 8, !dbg !908
  %20 = call i32 (i8*, i32, i8*, ...)* @snprintf(i8* %15, i32 50, i8* getelementptr inbounds ([6 x i8]* @.str1, i32 0, i32 0), double %19) #5, !dbg !908
  store i32 %20, i32* %len, align 4, !dbg !908
  %21 = getelementptr inbounds [50 x i8]* %buff, i32 0, i32 0, !dbg !910
  %22 = call i32 @strspn(i8* %21, i8* getelementptr inbounds ([12 x i8]* @.str2, i32 0, i32 0)) #7, !dbg !910
  %23 = getelementptr inbounds [50 x i8]* %buff, i32 0, i32 %22, !dbg !910
  %24 = load i8* %23, align 1, !dbg !910
  %25 = zext i8 %24 to i32, !dbg !910
  %26 = icmp eq i32 %25, 0, !dbg !910
  br i1 %26, label %27, label %39, !dbg !910

; <label>:27                                      ; preds = %14
  %28 = call %struct.lconv* @localeconv() #5, !dbg !912
  %29 = getelementptr inbounds %struct.lconv* %28, i32 0, i32 0, !dbg !912
  %30 = load i8** %29, align 4, !dbg !912
  %31 = getelementptr inbounds i8* %30, i32 0, !dbg !912
  %32 = load i8* %31, align 1, !dbg !912
  %33 = load i32* %len, align 4, !dbg !912
  %34 = add i32 %33, 1, !dbg !912
  store i32 %34, i32* %len, align 4, !dbg !912
  %35 = getelementptr inbounds [50 x i8]* %buff, i32 0, i32 %33, !dbg !912
  store i8 %32, i8* %35, align 1, !dbg !912
  %36 = load i32* %len, align 4, !dbg !914
  %37 = add i32 %36, 1, !dbg !914
  store i32 %37, i32* %len, align 4, !dbg !914
  %38 = getelementptr inbounds [50 x i8]* %buff, i32 0, i32 %36, !dbg !914
  store i8 48, i8* %38, align 1, !dbg !914
  br label %39, !dbg !915

; <label>:39                                      ; preds = %27, %14
  br label %40

; <label>:40                                      ; preds = %39, %7
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %io}, metadata !916), !dbg !918
  %41 = load %struct.lua_TValue** %2, align 4, !dbg !918
  store %struct.lua_TValue* %41, %struct.lua_TValue** %io, align 4, !dbg !918
  call void @llvm.dbg.declare(metadata !{%struct.TString** %x_}, metadata !919), !dbg !918
  %42 = load %struct.lua_State** %1, align 4, !dbg !918
  %43 = getelementptr inbounds [50 x i8]* %buff, i32 0, i32 0, !dbg !918
  %44 = load i32* %len, align 4, !dbg !918
  %45 = call %struct.TString* @luaS_newlstr(%struct.lua_State* %42, i8* %43, i32 %44), !dbg !918
  store %struct.TString* %45, %struct.TString** %x_, align 4, !dbg !918
  %46 = load %struct.TString** %x_, align 4, !dbg !918
  %47 = bitcast %struct.TString* %46 to %union.GCUnion*, !dbg !918
  %48 = bitcast %union.GCUnion* %47 to %struct.GCObject*, !dbg !918
  %49 = load %struct.lua_TValue** %io, align 4, !dbg !918
  %50 = getelementptr inbounds %struct.lua_TValue* %49, i32 0, i32 0, !dbg !918
  %51 = bitcast %union.Value* %50 to %struct.GCObject**, !dbg !918
  store %struct.GCObject* %48, %struct.GCObject** %51, align 4, !dbg !918
  %52 = load %struct.TString** %x_, align 4, !dbg !918
  %53 = getelementptr inbounds %struct.TString* %52, i32 0, i32 1, !dbg !918
  %54 = load i8* %53, align 1, !dbg !918
  %55 = zext i8 %54 to i32, !dbg !918
  %56 = or i32 %55, 64, !dbg !918
  %57 = load %struct.lua_TValue** %io, align 4, !dbg !918
  %58 = getelementptr inbounds %struct.lua_TValue* %57, i32 0, i32 1, !dbg !918
  store i32 %56, i32* %58, align 4, !dbg !918
  ret void, !dbg !920
}

; Function Attrs: nounwind
declare i32 @snprintf(i8*, i32, i8*, ...) #0

; Function Attrs: nounwind readonly
declare i32 @strspn(i8*, i8*) #3

; Function Attrs: nounwind
declare %struct.lconv* @localeconv() #0

declare hidden %struct.TString* @luaS_newlstr(%struct.lua_State*, i8*, i32) #2

; Function Attrs: nounwind
define hidden i8* @luaO_pushvfstring(%struct.lua_State* %L, i8* %fmt, { [1 x i32] } %argp.coerce) #0 {
  %argp = alloca %struct.__va_list, align 4
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca i8*, align 4
  %n = alloca i32, align 4
  %e = alloca i8*, align 4
  %s = alloca i8*, align 4
  %buff = alloca i8, align 1
  %io = alloca %struct.lua_TValue*, align 4
  %io1 = alloca %struct.lua_TValue*, align 4
  %io2 = alloca %struct.lua_TValue*, align 4
  %buff3 = alloca [24 x i8], align 1
  %l = alloca i32, align 4
  %buff4 = alloca [8 x i8], align 1
  %l5 = alloca i32, align 4
  %3 = getelementptr %struct.__va_list* %argp, i32 0, i32 0
  %4 = bitcast i8** %3 to { [1 x i32] }*
  %5 = getelementptr { [1 x i32] }* %4, i32 0, i32 0
  %6 = extractvalue { [1 x i32] } %argp.coerce, 0
  store [1 x i32] %6, [1 x i32]* %5, align 1
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !921), !dbg !922
  store i8* %fmt, i8** %2, align 4
  call void @llvm.dbg.declare(metadata !{i8** %2}, metadata !923), !dbg !924
  call void @llvm.dbg.declare(metadata !{%struct.__va_list* %argp}, metadata !925), !dbg !926
  call void @llvm.dbg.declare(metadata !{i32* %n}, metadata !927), !dbg !928
  store i32 0, i32* %n, align 4, !dbg !929
  br label %7, !dbg !930

; <label>:7                                       ; preds = %154, %0
  call void @llvm.dbg.declare(metadata !{i8** %e}, metadata !932), !dbg !934
  %8 = load i8** %2, align 4, !dbg !935
  %9 = call i8* @strchr(i8* %8, i32 37) #7, !dbg !935
  store i8* %9, i8** %e, align 4, !dbg !935
  %10 = load i8** %e, align 4, !dbg !936
  %11 = icmp eq i8* %10, null, !dbg !936
  br i1 %11, label %12, label %13, !dbg !936

; <label>:12                                      ; preds = %7
  br label %159, !dbg !938

; <label>:13                                      ; preds = %7
  %14 = load %struct.lua_State** %1, align 4, !dbg !940
  %15 = load i8** %2, align 4, !dbg !940
  %16 = load i8** %e, align 4, !dbg !940
  %17 = load i8** %2, align 4, !dbg !940
  %18 = ptrtoint i8* %16 to i32, !dbg !940
  %19 = ptrtoint i8* %17 to i32, !dbg !940
  %20 = sub i32 %18, %19, !dbg !940
  call void @pushstr(%struct.lua_State* %14, i8* %15, i32 %20), !dbg !940
  %21 = load i8** %e, align 4, !dbg !941
  %22 = getelementptr inbounds i8* %21, i32 1, !dbg !941
  %23 = load i8* %22, align 1, !dbg !941
  %24 = zext i8 %23 to i32, !dbg !941
  switch i32 %24, label %148 [
    i32 115, label %25
    i32 99, label %39
    i32 100, label %62
    i32 73, label %77
    i32 102, label %95
    i32 112, label %120
    i32 85, label %131
    i32 37, label %146
  ], !dbg !941

; <label>:25                                      ; preds = %13
  call void @llvm.dbg.declare(metadata !{i8** %s}, metadata !942), !dbg !945
  %26 = bitcast %struct.__va_list* %argp to i8**, !dbg !946
  %27 = load i8** %26, !dbg !946
  %28 = getelementptr i8* %27, i32 4, !dbg !946
  store i8* %28, i8** %26, !dbg !946
  %29 = bitcast i8* %27 to i8**, !dbg !946
  %30 = load i8** %29, !dbg !946
  store i8* %30, i8** %s, align 4, !dbg !946
  %31 = load i8** %s, align 4, !dbg !947
  %32 = icmp eq i8* %31, null, !dbg !947
  br i1 %32, label %33, label %34, !dbg !947

; <label>:33                                      ; preds = %25
  store i8* getelementptr inbounds ([7 x i8]* @.str3, i32 0, i32 0), i8** %s, align 4, !dbg !949
  br label %34, !dbg !949

; <label>:34                                      ; preds = %33, %25
  %35 = load %struct.lua_State** %1, align 4, !dbg !951
  %36 = load i8** %s, align 4, !dbg !951
  %37 = load i8** %s, align 4, !dbg !952
  %38 = call i32 @strlen(i8* %37) #7, !dbg !952
  call void @pushstr(%struct.lua_State* %35, i8* %36, i32 %38), !dbg !951
  br label %154, !dbg !953

; <label>:39                                      ; preds = %13
  call void @llvm.dbg.declare(metadata !{i8* %buff}, metadata !954), !dbg !956
  %40 = bitcast %struct.__va_list* %argp to i8**, !dbg !957
  %41 = load i8** %40, !dbg !957
  %42 = getelementptr i8* %41, i32 4, !dbg !957
  store i8* %42, i8** %40, !dbg !957
  %43 = bitcast i8* %41 to i32*, !dbg !957
  %44 = load i32* %43, !dbg !957
  %45 = trunc i32 %44 to i8, !dbg !957
  store i8 %45, i8* %buff, align 1, !dbg !957
  %46 = load i8* %buff, align 1, !dbg !958
  %47 = zext i8 %46 to i32, !dbg !958
  %48 = add nsw i32 %47, 1, !dbg !958
  %49 = getelementptr inbounds [257 x i8]* @luai_ctype_, i32 0, i32 %48, !dbg !958
  %50 = load i8* %49, align 1, !dbg !958
  %51 = zext i8 %50 to i32, !dbg !958
  %52 = and i32 %51, 4, !dbg !958
  %53 = icmp ne i32 %52, 0, !dbg !958
  br i1 %53, label %54, label %56, !dbg !958

; <label>:54                                      ; preds = %39
  %55 = load %struct.lua_State** %1, align 4, !dbg !960
  call void @pushstr(%struct.lua_State* %55, i8* %buff, i32 1), !dbg !960
  br label %61, !dbg !960

; <label>:56                                      ; preds = %39
  %57 = load %struct.lua_State** %1, align 4, !dbg !961
  %58 = load i8* %buff, align 1, !dbg !961
  %59 = zext i8 %58 to i32, !dbg !961
  %60 = call i8* (%struct.lua_State*, i8*, ...)* @luaO_pushfstring(%struct.lua_State* %57, i8* getelementptr inbounds ([6 x i8]* @.str4, i32 0, i32 0), i32 %59), !dbg !961
  br label %61

; <label>:61                                      ; preds = %56, %54
  br label %154, !dbg !962

; <label>:62                                      ; preds = %13
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %io}, metadata !963), !dbg !966
  %63 = load %struct.lua_State** %1, align 4, !dbg !966
  %64 = getelementptr inbounds %struct.lua_State* %63, i32 0, i32 5, !dbg !966
  %65 = load %struct.lua_TValue** %64, align 4, !dbg !966
  store %struct.lua_TValue* %65, %struct.lua_TValue** %io, align 4, !dbg !966
  %66 = bitcast %struct.__va_list* %argp to i8**, !dbg !966
  %67 = load i8** %66, !dbg !966
  %68 = getelementptr i8* %67, i32 4, !dbg !966
  store i8* %68, i8** %66, !dbg !966
  %69 = bitcast i8* %67 to i32*, !dbg !966
  %70 = load i32* %69, !dbg !966
  %71 = sext i32 %70 to i64, !dbg !966
  %72 = load %struct.lua_TValue** %io, align 4, !dbg !966
  %73 = getelementptr inbounds %struct.lua_TValue* %72, i32 0, i32 0, !dbg !966
  %74 = bitcast %union.Value* %73 to i64*, !dbg !966
  store i64 %71, i64* %74, align 8, !dbg !966
  %75 = load %struct.lua_TValue** %io, align 4, !dbg !966
  %76 = getelementptr inbounds %struct.lua_TValue* %75, i32 0, i32 1, !dbg !966
  store i32 19, i32* %76, align 4, !dbg !966
  br label %113, !dbg !967

; <label>:77                                      ; preds = %13
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %io1}, metadata !968), !dbg !971
  %78 = load %struct.lua_State** %1, align 4, !dbg !971
  %79 = getelementptr inbounds %struct.lua_State* %78, i32 0, i32 5, !dbg !971
  %80 = load %struct.lua_TValue** %79, align 4, !dbg !971
  store %struct.lua_TValue* %80, %struct.lua_TValue** %io1, align 4, !dbg !971
  %81 = bitcast %struct.__va_list* %argp to i8**, !dbg !971
  %82 = load i8** %81, !dbg !971
  %83 = ptrtoint i8* %82 to i32, !dbg !971
  %84 = add i32 %83, 7, !dbg !971
  %85 = and i32 %84, -8, !dbg !971
  %86 = inttoptr i32 %85 to i8*, !dbg !971
  %87 = getelementptr i8* %86, i32 8, !dbg !971
  store i8* %87, i8** %81, !dbg !971
  %88 = bitcast i8* %86 to i64*, !dbg !971
  %89 = load i64* %88, !dbg !971
  %90 = load %struct.lua_TValue** %io1, align 4, !dbg !971
  %91 = getelementptr inbounds %struct.lua_TValue* %90, i32 0, i32 0, !dbg !971
  %92 = bitcast %union.Value* %91 to i64*, !dbg !971
  store i64 %89, i64* %92, align 8, !dbg !971
  %93 = load %struct.lua_TValue** %io1, align 4, !dbg !971
  %94 = getelementptr inbounds %struct.lua_TValue* %93, i32 0, i32 1, !dbg !971
  store i32 19, i32* %94, align 4, !dbg !971
  br label %113, !dbg !972

; <label>:95                                      ; preds = %13
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %io2}, metadata !973), !dbg !976
  %96 = load %struct.lua_State** %1, align 4, !dbg !976
  %97 = getelementptr inbounds %struct.lua_State* %96, i32 0, i32 5, !dbg !976
  %98 = load %struct.lua_TValue** %97, align 4, !dbg !976
  store %struct.lua_TValue* %98, %struct.lua_TValue** %io2, align 4, !dbg !976
  %99 = bitcast %struct.__va_list* %argp to i8**, !dbg !976
  %100 = load i8** %99, !dbg !976
  %101 = ptrtoint i8* %100 to i32, !dbg !976
  %102 = add i32 %101, 7, !dbg !976
  %103 = and i32 %102, -8, !dbg !976
  %104 = inttoptr i32 %103 to i8*, !dbg !976
  %105 = getelementptr i8* %104, i32 8, !dbg !976
  store i8* %105, i8** %99, !dbg !976
  %106 = bitcast i8* %104 to double*, !dbg !976
  %107 = load double* %106, !dbg !976
  %108 = load %struct.lua_TValue** %io2, align 4, !dbg !976
  %109 = getelementptr inbounds %struct.lua_TValue* %108, i32 0, i32 0, !dbg !976
  %110 = bitcast %union.Value* %109 to double*, !dbg !976
  store double %107, double* %110, align 8, !dbg !976
  %111 = load %struct.lua_TValue** %io2, align 4, !dbg !976
  %112 = getelementptr inbounds %struct.lua_TValue* %111, i32 0, i32 1, !dbg !976
  store i32 3, i32* %112, align 4, !dbg !976
  br label %113, !dbg !976

; <label>:113                                     ; preds = %95, %77, %62
  %114 = load %struct.lua_State** %1, align 4, !dbg !977
  call void @luaD_inctop(%struct.lua_State* %114), !dbg !977
  %115 = load %struct.lua_State** %1, align 4, !dbg !978
  %116 = load %struct.lua_State** %1, align 4, !dbg !978
  %117 = getelementptr inbounds %struct.lua_State* %116, i32 0, i32 5, !dbg !978
  %118 = load %struct.lua_TValue** %117, align 4, !dbg !978
  %119 = getelementptr inbounds %struct.lua_TValue* %118, i32 -1, !dbg !978
  call void @luaO_tostring(%struct.lua_State* %115, %struct.lua_TValue* %119), !dbg !978
  br label %154, !dbg !979

; <label>:120                                     ; preds = %13
  call void @llvm.dbg.declare(metadata !{[24 x i8]* %buff3}, metadata !980), !dbg !983
  call void @llvm.dbg.declare(metadata !{i32* %l}, metadata !984), !dbg !985
  %121 = getelementptr inbounds [24 x i8]* %buff3, i32 0, i32 0, !dbg !986
  %122 = bitcast %struct.__va_list* %argp to i8**, !dbg !986
  %123 = load i8** %122, !dbg !986
  %124 = getelementptr i8* %123, i32 4, !dbg !986
  store i8* %124, i8** %122, !dbg !986
  %125 = bitcast i8* %123 to i8**, !dbg !986
  %126 = load i8** %125, !dbg !986
  %127 = call i32 (i8*, i32, i8*, ...)* @snprintf(i8* %121, i32 24, i8* getelementptr inbounds ([3 x i8]* @.str5, i32 0, i32 0), i8* %126) #5, !dbg !986
  store i32 %127, i32* %l, align 4, !dbg !986
  %128 = load %struct.lua_State** %1, align 4, !dbg !987
  %129 = getelementptr inbounds [24 x i8]* %buff3, i32 0, i32 0, !dbg !987
  %130 = load i32* %l, align 4, !dbg !987
  call void @pushstr(%struct.lua_State* %128, i8* %129, i32 %130), !dbg !987
  br label %154, !dbg !988

; <label>:131                                     ; preds = %13
  call void @llvm.dbg.declare(metadata !{[8 x i8]* %buff4}, metadata !989), !dbg !994
  call void @llvm.dbg.declare(metadata !{i32* %l5}, metadata !995), !dbg !996
  %132 = getelementptr inbounds [8 x i8]* %buff4, i32 0, i32 0, !dbg !997
  %133 = bitcast %struct.__va_list* %argp to i8**, !dbg !997
  %134 = load i8** %133, !dbg !997
  %135 = getelementptr i8* %134, i32 4, !dbg !997
  store i8* %135, i8** %133, !dbg !997
  %136 = bitcast i8* %134 to i32*, !dbg !997
  %137 = load i32* %136, !dbg !997
  %138 = call i32 @luaO_utf8esc(i8* %132, i32 %137), !dbg !997
  store i32 %138, i32* %l5, align 4, !dbg !997
  %139 = load %struct.lua_State** %1, align 4, !dbg !998
  %140 = getelementptr inbounds [8 x i8]* %buff4, i32 0, i32 0, !dbg !998
  %141 = getelementptr inbounds i8* %140, i32 8, !dbg !998
  %142 = load i32* %l5, align 4, !dbg !998
  %143 = sub i32 0, %142, !dbg !998
  %144 = getelementptr inbounds i8* %141, i32 %143, !dbg !998
  %145 = load i32* %l5, align 4, !dbg !998
  call void @pushstr(%struct.lua_State* %139, i8* %144, i32 %145), !dbg !998
  br label %154, !dbg !999

; <label>:146                                     ; preds = %13
  %147 = load %struct.lua_State** %1, align 4, !dbg !1000
  call void @pushstr(%struct.lua_State* %147, i8* getelementptr inbounds ([2 x i8]* @.str6, i32 0, i32 0), i32 1), !dbg !1000
  br label %154, !dbg !1002

; <label>:148                                     ; preds = %13
  %149 = load %struct.lua_State** %1, align 4, !dbg !1003
  %150 = load i8** %e, align 4, !dbg !1003
  %151 = getelementptr inbounds i8* %150, i32 1, !dbg !1003
  %152 = load i8* %151, align 1, !dbg !1003
  %153 = zext i8 %152 to i32, !dbg !1003
  call void (%struct.lua_State*, i8*, ...)* @luaG_runerror(%struct.lua_State* %149, i8* getelementptr inbounds ([43 x i8]* @.str7, i32 0, i32 0), i32 %153) #8, !dbg !1003
  unreachable, !dbg !1003

; <label>:154                                     ; preds = %146, %131, %120, %113, %61, %34
  %155 = load i32* %n, align 4, !dbg !1005
  %156 = add nsw i32 %155, 2, !dbg !1005
  store i32 %156, i32* %n, align 4, !dbg !1005
  %157 = load i8** %e, align 4, !dbg !1006
  %158 = getelementptr inbounds i8* %157, i32 2, !dbg !1006
  store i8* %158, i8** %2, align 4, !dbg !1006
  br label %7, !dbg !1007

; <label>:159                                     ; preds = %12
  %160 = load %struct.lua_State** %1, align 4, !dbg !1008
  %161 = getelementptr inbounds %struct.lua_State* %160, i32 0, i32 9, !dbg !1008
  %162 = load %struct.lua_TValue** %161, align 4, !dbg !1008
  %163 = load %struct.lua_State** %1, align 4, !dbg !1008
  %164 = getelementptr inbounds %struct.lua_State* %163, i32 0, i32 5, !dbg !1008
  %165 = load %struct.lua_TValue** %164, align 4, !dbg !1008
  %166 = ptrtoint %struct.lua_TValue* %162 to i32, !dbg !1008
  %167 = ptrtoint %struct.lua_TValue* %165 to i32, !dbg !1008
  %168 = sub i32 %166, %167, !dbg !1008
  %169 = sdiv exact i32 %168, 16, !dbg !1008
  %170 = icmp sle i32 %169, 1, !dbg !1008
  br i1 %170, label %171, label %173, !dbg !1008

; <label>:171                                     ; preds = %159
  %172 = load %struct.lua_State** %1, align 4, !dbg !1010
  call void @luaD_growstack(%struct.lua_State* %172, i32 1), !dbg !1010
  br label %174, !dbg !1010

; <label>:173                                     ; preds = %159
  br label %174

; <label>:174                                     ; preds = %173, %171
  %175 = load %struct.lua_State** %1, align 4, !dbg !1013
  %176 = load i8** %2, align 4, !dbg !1013
  %177 = load i8** %2, align 4, !dbg !1014
  %178 = call i32 @strlen(i8* %177) #7, !dbg !1014
  call void @pushstr(%struct.lua_State* %175, i8* %176, i32 %178), !dbg !1013
  %179 = load i32* %n, align 4, !dbg !1015
  %180 = icmp sgt i32 %179, 0, !dbg !1015
  br i1 %180, label %181, label %185, !dbg !1015

; <label>:181                                     ; preds = %174
  %182 = load %struct.lua_State** %1, align 4, !dbg !1017
  %183 = load i32* %n, align 4, !dbg !1017
  %184 = add nsw i32 %183, 1, !dbg !1017
  call void @luaV_concat(%struct.lua_State* %182, i32 %184), !dbg !1017
  br label %185, !dbg !1017

; <label>:185                                     ; preds = %181, %174
  %186 = load %struct.lua_State** %1, align 4, !dbg !1019
  %187 = getelementptr inbounds %struct.lua_State* %186, i32 0, i32 5, !dbg !1019
  %188 = load %struct.lua_TValue** %187, align 4, !dbg !1019
  %189 = getelementptr inbounds %struct.lua_TValue* %188, i32 -1, !dbg !1019
  %190 = getelementptr inbounds %struct.lua_TValue* %189, i32 0, i32 0, !dbg !1019
  %191 = bitcast %union.Value* %190 to %struct.GCObject**, !dbg !1019
  %192 = load %struct.GCObject** %191, align 4, !dbg !1019
  %193 = bitcast %struct.GCObject* %192 to %union.GCUnion*, !dbg !1019
  %194 = bitcast %union.GCUnion* %193 to %struct.TString*, !dbg !1019
  %195 = bitcast %struct.TString* %194 to i8*, !dbg !1019
  %196 = getelementptr inbounds i8* %195, i32 16, !dbg !1019
  ret i8* %196, !dbg !1019
}

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #3

; Function Attrs: nounwind
define internal void @pushstr(%struct.lua_State* %L, i8* %str, i32 %l) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca i8*, align 4
  %3 = alloca i32, align 4
  %io = alloca %struct.lua_TValue*, align 4
  %x_ = alloca %struct.TString*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !1020), !dbg !1021
  store i8* %str, i8** %2, align 4
  call void @llvm.dbg.declare(metadata !{i8** %2}, metadata !1022), !dbg !1023
  store i32 %l, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !1024), !dbg !1025
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %io}, metadata !1026), !dbg !1028
  %4 = load %struct.lua_State** %1, align 4, !dbg !1028
  %5 = getelementptr inbounds %struct.lua_State* %4, i32 0, i32 5, !dbg !1028
  %6 = load %struct.lua_TValue** %5, align 4, !dbg !1028
  store %struct.lua_TValue* %6, %struct.lua_TValue** %io, align 4, !dbg !1028
  call void @llvm.dbg.declare(metadata !{%struct.TString** %x_}, metadata !1029), !dbg !1028
  %7 = load %struct.lua_State** %1, align 4, !dbg !1028
  %8 = load i8** %2, align 4, !dbg !1028
  %9 = load i32* %3, align 4, !dbg !1028
  %10 = call %struct.TString* @luaS_newlstr(%struct.lua_State* %7, i8* %8, i32 %9), !dbg !1028
  store %struct.TString* %10, %struct.TString** %x_, align 4, !dbg !1028
  %11 = load %struct.TString** %x_, align 4, !dbg !1028
  %12 = bitcast %struct.TString* %11 to %union.GCUnion*, !dbg !1028
  %13 = bitcast %union.GCUnion* %12 to %struct.GCObject*, !dbg !1028
  %14 = load %struct.lua_TValue** %io, align 4, !dbg !1028
  %15 = getelementptr inbounds %struct.lua_TValue* %14, i32 0, i32 0, !dbg !1028
  %16 = bitcast %union.Value* %15 to %struct.GCObject**, !dbg !1028
  store %struct.GCObject* %13, %struct.GCObject** %16, align 4, !dbg !1028
  %17 = load %struct.TString** %x_, align 4, !dbg !1028
  %18 = getelementptr inbounds %struct.TString* %17, i32 0, i32 1, !dbg !1028
  %19 = load i8* %18, align 1, !dbg !1028
  %20 = zext i8 %19 to i32, !dbg !1028
  %21 = or i32 %20, 64, !dbg !1028
  %22 = load %struct.lua_TValue** %io, align 4, !dbg !1028
  %23 = getelementptr inbounds %struct.lua_TValue* %22, i32 0, i32 1, !dbg !1028
  store i32 %21, i32* %23, align 4, !dbg !1028
  %24 = load %struct.lua_State** %1, align 4, !dbg !1030
  call void @luaD_inctop(%struct.lua_State* %24), !dbg !1030
  ret void, !dbg !1031
}

; Function Attrs: nounwind readonly
declare i32 @strlen(i8*) #3

; Function Attrs: nounwind
define hidden i8* @luaO_pushfstring(%struct.lua_State* %L, i8* %fmt, ...) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca i8*, align 4
  %msg = alloca i8*, align 4
  %argp = alloca %struct.__va_list, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !1032), !dbg !1033
  store i8* %fmt, i8** %2, align 4
  call void @llvm.dbg.declare(metadata !{i8** %2}, metadata !1034), !dbg !1035
  call void @llvm.dbg.declare(metadata !{i8** %msg}, metadata !1036), !dbg !1037
  call void @llvm.dbg.declare(metadata !{%struct.__va_list* %argp}, metadata !1038), !dbg !1039
  %3 = bitcast %struct.__va_list* %argp to i8*, !dbg !1040
  call void @llvm.va_start(i8* %3), !dbg !1040
  %4 = load %struct.lua_State** %1, align 4, !dbg !1041
  %5 = load i8** %2, align 4, !dbg !1041
  %6 = getelementptr %struct.__va_list* %argp, i32 0, i32 0, !dbg !1041
  %7 = bitcast i8** %6 to { [1 x i32] }*, !dbg !1041
  %8 = load { [1 x i32] }* %7, align 1, !dbg !1041
  %9 = call i8* @luaO_pushvfstring(%struct.lua_State* %4, i8* %5, { [1 x i32] } %8), !dbg !1041
  store i8* %9, i8** %msg, align 4, !dbg !1041
  %10 = bitcast %struct.__va_list* %argp to i8*, !dbg !1042
  call void @llvm.va_end(i8* %10), !dbg !1042
  %11 = load i8** %msg, align 4, !dbg !1043
  ret i8* %11, !dbg !1043
}

declare hidden void @luaD_inctop(%struct.lua_State*) #2

; Function Attrs: noreturn
declare hidden void @luaG_runerror(%struct.lua_State*, i8*, ...) #4

declare hidden void @luaD_growstack(%struct.lua_State*, i32) #2

declare hidden void @luaV_concat(%struct.lua_State*, i32) #2

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

; Function Attrs: nounwind
define hidden void @luaO_chunkid(i8* %out, i8* %source, i32 %bufflen) #0 {
  %1 = alloca i8*, align 4
  %2 = alloca i8*, align 4
  %3 = alloca i32, align 4
  %l = alloca i32, align 4
  %nl = alloca i8*, align 4
  store i8* %out, i8** %1, align 4
  call void @llvm.dbg.declare(metadata !{i8** %1}, metadata !1044), !dbg !1045
  store i8* %source, i8** %2, align 4
  call void @llvm.dbg.declare(metadata !{i8** %2}, metadata !1046), !dbg !1047
  store i32 %bufflen, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !1048), !dbg !1049
  call void @llvm.dbg.declare(metadata !{i32* %l}, metadata !1050), !dbg !1051
  %4 = load i8** %2, align 4, !dbg !1052
  %5 = call i32 @strlen(i8* %4) #7, !dbg !1052
  store i32 %5, i32* %l, align 4, !dbg !1052
  %6 = load i8** %2, align 4, !dbg !1053
  %7 = load i8* %6, align 1, !dbg !1053
  %8 = zext i8 %7 to i32, !dbg !1053
  %9 = icmp eq i32 %8, 61, !dbg !1053
  br i1 %9, label %10, label %33, !dbg !1053

; <label>:10                                      ; preds = %0
  %11 = load i32* %l, align 4, !dbg !1055
  %12 = load i32* %3, align 4, !dbg !1055
  %13 = icmp ule i32 %11, %12, !dbg !1055
  br i1 %13, label %14, label %20, !dbg !1055

; <label>:14                                      ; preds = %10
  %15 = load i8** %1, align 4, !dbg !1058
  %16 = load i8** %2, align 4, !dbg !1058
  %17 = getelementptr inbounds i8* %16, i32 1, !dbg !1058
  %18 = load i32* %l, align 4, !dbg !1058
  %19 = mul i32 %18, 1, !dbg !1058
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %15, i8* %17, i32 %19, i32 1, i1 false), !dbg !1058
  br label %32, !dbg !1058

; <label>:20                                      ; preds = %10
  %21 = load i8** %1, align 4, !dbg !1059
  %22 = load i8** %2, align 4, !dbg !1059
  %23 = getelementptr inbounds i8* %22, i32 1, !dbg !1059
  %24 = load i32* %3, align 4, !dbg !1059
  %25 = sub i32 %24, 1, !dbg !1059
  %26 = mul i32 %25, 1, !dbg !1059
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %21, i8* %23, i32 %26, i32 1, i1 false), !dbg !1059
  %27 = load i32* %3, align 4, !dbg !1059
  %28 = sub i32 %27, 1, !dbg !1059
  %29 = load i8** %1, align 4, !dbg !1059
  %30 = getelementptr inbounds i8* %29, i32 %28, !dbg !1059
  store i8* %30, i8** %1, align 4, !dbg !1059
  %31 = load i8** %1, align 4, !dbg !1061
  store i8 0, i8* %31, align 1, !dbg !1061
  br label %32

; <label>:32                                      ; preds = %20, %14
  br label %116, !dbg !1062

; <label>:33                                      ; preds = %0
  %34 = load i8** %2, align 4, !dbg !1063
  %35 = load i8* %34, align 1, !dbg !1063
  %36 = zext i8 %35 to i32, !dbg !1063
  %37 = icmp eq i32 %36, 64, !dbg !1063
  br i1 %37, label %38, label %65, !dbg !1063

; <label>:38                                      ; preds = %33
  %39 = load i32* %l, align 4, !dbg !1065
  %40 = load i32* %3, align 4, !dbg !1065
  %41 = icmp ule i32 %39, %40, !dbg !1065
  br i1 %41, label %42, label %48, !dbg !1065

; <label>:42                                      ; preds = %38
  %43 = load i8** %1, align 4, !dbg !1068
  %44 = load i8** %2, align 4, !dbg !1068
  %45 = getelementptr inbounds i8* %44, i32 1, !dbg !1068
  %46 = load i32* %l, align 4, !dbg !1068
  %47 = mul i32 %46, 1, !dbg !1068
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %43, i8* %45, i32 %47, i32 1, i1 false), !dbg !1068
  br label %64, !dbg !1068

; <label>:48                                      ; preds = %38
  %49 = load i8** %1, align 4, !dbg !1069
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %49, i8* getelementptr inbounds ([4 x i8]* @.str8, i32 0, i32 0), i32 3, i32 1, i1 false), !dbg !1069
  %50 = load i8** %1, align 4, !dbg !1069
  %51 = getelementptr inbounds i8* %50, i32 3, !dbg !1069
  store i8* %51, i8** %1, align 4, !dbg !1069
  %52 = load i32* %3, align 4, !dbg !1071
  %53 = sub i32 %52, 3, !dbg !1071
  store i32 %53, i32* %3, align 4, !dbg !1071
  %54 = load i8** %1, align 4, !dbg !1072
  %55 = load i8** %2, align 4, !dbg !1072
  %56 = getelementptr inbounds i8* %55, i32 1, !dbg !1072
  %57 = load i32* %l, align 4, !dbg !1072
  %58 = getelementptr inbounds i8* %56, i32 %57, !dbg !1072
  %59 = load i32* %3, align 4, !dbg !1072
  %60 = sub i32 0, %59, !dbg !1072
  %61 = getelementptr inbounds i8* %58, i32 %60, !dbg !1072
  %62 = load i32* %3, align 4, !dbg !1072
  %63 = mul i32 %62, 1, !dbg !1072
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %54, i8* %61, i32 %63, i32 1, i1 false), !dbg !1072
  br label %64

; <label>:64                                      ; preds = %48, %42
  br label %115, !dbg !1073

; <label>:65                                      ; preds = %33
  call void @llvm.dbg.declare(metadata !{i8** %nl}, metadata !1074), !dbg !1076
  %66 = load i8** %2, align 4, !dbg !1077
  %67 = call i8* @strchr(i8* %66, i32 10) #7, !dbg !1077
  store i8* %67, i8** %nl, align 4, !dbg !1077
  %68 = load i8** %1, align 4, !dbg !1078
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %68, i8* getelementptr inbounds ([10 x i8]* @.str9, i32 0, i32 0), i32 9, i32 1, i1 false), !dbg !1078
  %69 = load i8** %1, align 4, !dbg !1078
  %70 = getelementptr inbounds i8* %69, i32 9, !dbg !1078
  store i8* %70, i8** %1, align 4, !dbg !1078
  %71 = load i32* %3, align 4, !dbg !1079
  %72 = sub i32 %71, 15, !dbg !1079
  store i32 %72, i32* %3, align 4, !dbg !1079
  %73 = load i32* %l, align 4, !dbg !1080
  %74 = load i32* %3, align 4, !dbg !1080
  %75 = icmp ult i32 %73, %74, !dbg !1080
  br i1 %75, label %76, label %87, !dbg !1080

; <label>:76                                      ; preds = %65
  %77 = load i8** %nl, align 4, !dbg !1082
  %78 = icmp eq i8* %77, null, !dbg !1082
  br i1 %78, label %79, label %87, !dbg !1082

; <label>:79                                      ; preds = %76
  %80 = load i8** %1, align 4, !dbg !1084
  %81 = load i8** %2, align 4, !dbg !1084
  %82 = load i32* %l, align 4, !dbg !1084
  %83 = mul i32 %82, 1, !dbg !1084
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %80, i8* %81, i32 %83, i32 1, i1 false), !dbg !1084
  %84 = load i32* %l, align 4, !dbg !1084
  %85 = load i8** %1, align 4, !dbg !1084
  %86 = getelementptr inbounds i8* %85, i32 %84, !dbg !1084
  store i8* %86, i8** %1, align 4, !dbg !1084
  br label %113, !dbg !1086

; <label>:87                                      ; preds = %76, %65
  %88 = load i8** %nl, align 4, !dbg !1087
  %89 = icmp ne i8* %88, null, !dbg !1087
  br i1 %89, label %90, label %96, !dbg !1087

; <label>:90                                      ; preds = %87
  %91 = load i8** %nl, align 4, !dbg !1090
  %92 = load i8** %2, align 4, !dbg !1090
  %93 = ptrtoint i8* %91 to i32, !dbg !1090
  %94 = ptrtoint i8* %92 to i32, !dbg !1090
  %95 = sub i32 %93, %94, !dbg !1090
  store i32 %95, i32* %l, align 4, !dbg !1090
  br label %96, !dbg !1090

; <label>:96                                      ; preds = %90, %87
  %97 = load i32* %l, align 4, !dbg !1092
  %98 = load i32* %3, align 4, !dbg !1092
  %99 = icmp ugt i32 %97, %98, !dbg !1092
  br i1 %99, label %100, label %102, !dbg !1092

; <label>:100                                     ; preds = %96
  %101 = load i32* %3, align 4, !dbg !1094
  store i32 %101, i32* %l, align 4, !dbg !1094
  br label %102, !dbg !1094

; <label>:102                                     ; preds = %100, %96
  %103 = load i8** %1, align 4, !dbg !1096
  %104 = load i8** %2, align 4, !dbg !1096
  %105 = load i32* %l, align 4, !dbg !1096
  %106 = mul i32 %105, 1, !dbg !1096
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %103, i8* %104, i32 %106, i32 1, i1 false), !dbg !1096
  %107 = load i32* %l, align 4, !dbg !1096
  %108 = load i8** %1, align 4, !dbg !1096
  %109 = getelementptr inbounds i8* %108, i32 %107, !dbg !1096
  store i8* %109, i8** %1, align 4, !dbg !1096
  %110 = load i8** %1, align 4, !dbg !1097
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %110, i8* getelementptr inbounds ([4 x i8]* @.str8, i32 0, i32 0), i32 3, i32 1, i1 false), !dbg !1097
  %111 = load i8** %1, align 4, !dbg !1097
  %112 = getelementptr inbounds i8* %111, i32 3, !dbg !1097
  store i8* %112, i8** %1, align 4, !dbg !1097
  br label %113

; <label>:113                                     ; preds = %102, %79
  %114 = load i8** %1, align 4, !dbg !1098
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %114, i8* getelementptr inbounds ([3 x i8]* @.str10, i32 0, i32 0), i32 3, i32 1, i1 false), !dbg !1098
  br label %115

; <label>:115                                     ; preds = %113, %64
  br label %116

; <label>:116                                     ; preds = %115, %32
  ret void, !dbg !1099
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture, i8* nocapture readonly, i32, i32, i1) #5

; Function Attrs: nounwind readonly
declare i8* @strpbrk(i8*, i8*) #3

; Function Attrs: nounwind
define internal i8* @l_str2dloc(i8* %s, double* %result, i32 %mode) #0 {
  %1 = alloca i8*, align 4
  %2 = alloca i8*, align 4
  %3 = alloca double*, align 4
  %4 = alloca i32, align 4
  %endptr = alloca i8*, align 4
  store i8* %s, i8** %2, align 4
  call void @llvm.dbg.declare(metadata !{i8** %2}, metadata !1100), !dbg !1101
  store double* %result, double** %3, align 4
  call void @llvm.dbg.declare(metadata !{double** %3}, metadata !1102), !dbg !1103
  store i32 %mode, i32* %4, align 4
  call void @llvm.dbg.declare(metadata !{i32* %4}, metadata !1104), !dbg !1105
  call void @llvm.dbg.declare(metadata !{i8** %endptr}, metadata !1106), !dbg !1107
  %5 = load i32* %4, align 4, !dbg !1108
  %6 = icmp eq i32 %5, 120, !dbg !1108
  br i1 %6, label %7, label %10, !dbg !1108

; <label>:7                                       ; preds = %0
  %8 = load i8** %2, align 4, !dbg !1109
  %9 = call double @strtod(i8* %8, i8** %endptr) #5, !dbg !1109
  br label %13, !dbg !1109

; <label>:10                                      ; preds = %0
  %11 = load i8** %2, align 4, !dbg !1111
  %12 = call double @strtod(i8* %11, i8** %endptr) #5, !dbg !1111
  br label %13, !dbg !1111

; <label>:13                                      ; preds = %10, %7
  %14 = phi double [ %9, %7 ], [ %12, %10 ], !dbg !1111
  %15 = load double** %3, align 4, !dbg !1112
  store double %14, double* %15, align 8, !dbg !1112
  %16 = load i8** %endptr, align 4, !dbg !1114
  %17 = load i8** %2, align 4, !dbg !1114
  %18 = icmp eq i8* %16, %17, !dbg !1114
  br i1 %18, label %19, label %20, !dbg !1114

; <label>:19                                      ; preds = %13
  store i8* null, i8** %1, !dbg !1116
  br label %44, !dbg !1116

; <label>:20                                      ; preds = %13
  br label %21, !dbg !1118

; <label>:21                                      ; preds = %31, %20
  %22 = load i8** %endptr, align 4, !dbg !1119
  %23 = load i8* %22, align 1, !dbg !1119
  %24 = zext i8 %23 to i32, !dbg !1119
  %25 = add nsw i32 %24, 1, !dbg !1119
  %26 = getelementptr inbounds [257 x i8]* @luai_ctype_, i32 0, i32 %25, !dbg !1119
  %27 = load i8* %26, align 1, !dbg !1119
  %28 = zext i8 %27 to i32, !dbg !1119
  %29 = and i32 %28, 8, !dbg !1119
  %30 = icmp ne i32 %29, 0, !dbg !1119
  br i1 %30, label %31, label %34, !dbg !1119

; <label>:31                                      ; preds = %21
  %32 = load i8** %endptr, align 4, !dbg !1122
  %33 = getelementptr inbounds i8* %32, i32 1, !dbg !1122
  store i8* %33, i8** %endptr, align 4, !dbg !1122
  br label %21, !dbg !1122

; <label>:34                                      ; preds = %21
  %35 = load i8** %endptr, align 4, !dbg !1124
  %36 = load i8* %35, align 1, !dbg !1124
  %37 = zext i8 %36 to i32, !dbg !1124
  %38 = icmp eq i32 %37, 0, !dbg !1124
  br i1 %38, label %39, label %41, !dbg !1124

; <label>:39                                      ; preds = %34
  %40 = load i8** %endptr, align 4, !dbg !1125
  br label %42, !dbg !1125

; <label>:41                                      ; preds = %34
  br label %42, !dbg !1127

; <label>:42                                      ; preds = %41, %39
  %43 = phi i8* [ %40, %39 ], [ null, %41 ], !dbg !1124
  store i8* %43, i8** %1, !dbg !1129
  br label %44, !dbg !1129

; <label>:44                                      ; preds = %42, %19
  %45 = load i8** %1, !dbg !1132
  ret i8* %45, !dbg !1132
}

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #0

; Function Attrs: nounwind
declare double @strtod(i8*, i8**) #0

; Function Attrs: nounwind
define internal i32 @isneg(i8** %s) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8**, align 4
  store i8** %s, i8*** %2, align 4
  call void @llvm.dbg.declare(metadata !{i8*** %2}, metadata !1133), !dbg !1134
  %3 = load i8*** %2, align 4, !dbg !1135
  %4 = load i8** %3, align 4, !dbg !1135
  %5 = load i8* %4, align 1, !dbg !1135
  %6 = zext i8 %5 to i32, !dbg !1135
  %7 = icmp eq i32 %6, 45, !dbg !1135
  br i1 %7, label %8, label %12, !dbg !1135

; <label>:8                                       ; preds = %0
  %9 = load i8*** %2, align 4, !dbg !1137
  %10 = load i8** %9, align 4, !dbg !1137
  %11 = getelementptr inbounds i8* %10, i32 1, !dbg !1137
  store i8* %11, i8** %9, align 4, !dbg !1137
  store i32 1, i32* %1, !dbg !1140
  br label %24, !dbg !1140

; <label>:12                                      ; preds = %0
  %13 = load i8*** %2, align 4, !dbg !1141
  %14 = load i8** %13, align 4, !dbg !1141
  %15 = load i8* %14, align 1, !dbg !1141
  %16 = zext i8 %15 to i32, !dbg !1141
  %17 = icmp eq i32 %16, 43, !dbg !1141
  br i1 %17, label %18, label %22, !dbg !1141

; <label>:18                                      ; preds = %12
  %19 = load i8*** %2, align 4, !dbg !1143
  %20 = load i8** %19, align 4, !dbg !1143
  %21 = getelementptr inbounds i8* %20, i32 1, !dbg !1143
  store i8* %21, i8** %19, align 4, !dbg !1143
  br label %22, !dbg !1143

; <label>:22                                      ; preds = %18, %12
  br label %23

; <label>:23                                      ; preds = %22
  store i32 0, i32* %1, !dbg !1145
  br label %24, !dbg !1145

; <label>:24                                      ; preds = %23, %8
  %25 = load i32* %1, !dbg !1146
  ret i32 %25, !dbg !1146
}

; Function Attrs: nounwind
declare double @pow(double, double) #0

; Function Attrs: nounwind readnone
declare double @floor(double) #6

; Function Attrs: nounwind
declare double @fmod(double, double) #0

declare hidden i64 @luaV_mod(%struct.lua_State*, i64, i64) #2

declare hidden i64 @luaV_div(%struct.lua_State*, i64, i64) #2

declare hidden i64 @luaV_shiftl(i64, i64) #2

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly }
attributes #8 = { noreturn }

!llvm.dbg.cu = !{!0}
!xidane.fname = !{!366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445}
!xidane.function_declaration_type = !{!366, !446, !368, !447, !370, !446, !372, !448, !374, !449, !376, !450, !378, !451, !380, !452, !382, !453, !384, !447, !386, !454, !388, !455, !390, !456, !392, !457, !394, !458, !396, !459, !398, !460, !400, !461, !402, !462, !404, !463, !406, !464, !408, !465, !410, !466, !412, !467, !414, !468, !416, !469, !418, !470, !420, !470, !422, !471, !424, !472, !426, !473, !428, !474, !430, !475, !432, !476, !434, !477, !436, !478, !438, !477, !440, !479, !442, !479, !444, !480}
!xidane.function_declaration_filename = !{!366, !481, !368, !481, !370, !481, !372, !481, !374, !482, !376, !483, !378, !482, !380, !483, !382, !484, !384, !481, !386, !481, !388, !483, !390, !483, !392, !481, !394, !481, !396, !485, !398, !486, !400, !487, !402, !488, !404, !481, !406, !486, !408, !483, !410, !486, !412, !481, !414, !489, !416, !490, !418, !489, !420, !482, !422, !481, !424, !486, !426, !483, !428, !486, !430, !491, !432, !483, !434, !492, !436, !492, !438, !492, !440, !482, !442, !482, !444, !482}
!xidane.ExternC = !{!366, !368, !370, !372, !374, !378, !382, !384, !386, !392, !394, !396, !398, !400, !402, !404, !406, !410, !412, !414, !416, !418, !420, !422, !424, !428, !430, !434, !436, !438, !440, !442, !444}
!llvm.module.flags = !{!493, !494, !495, !496}
!llvm.ident = !{!497}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.0 (tags/RELEASE_350/final)", i1 false, metadata !"", i32 0, metadata !2, metadata !31, metadata !32, metadata !359, metadata !31, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src\lobject.c] [DW_LANG_C99]
!1 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src\5Clobject.c", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!2 = metadata !{metadata !3}
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
!31 = metadata !{}
!32 = metadata !{metadata !33, metadata !40, metadata !43, metadata !44, metadata !306, metadata !307, metadata !310, metadata !315, metadata !318, metadata !328, metadata !332, metadata !335, metadata !338, metadata !342, metadata !345, metadata !349, metadata !353, metadata !356}
!33 = metadata !{i32 786478, metadata !34, metadata !35, metadata !"luaO_int2fb", metadata !"luaO_int2fb", metadata !"", i32 41, metadata !36, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @luaO_int2fb, null, null, metadata !31, i32 41} ; [ DW_TAG_subprogram ] [line 41] [def] [luaO_int2fb]
!34 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lobject.c", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!35 = metadata !{i32 786473, metadata !34}        ; [ DW_TAG_file_type ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!36 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !37, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!37 = metadata !{metadata !38, metadata !39}
!38 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!39 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!40 = metadata !{i32 786478, metadata !34, metadata !35, metadata !"luaO_fb2int", metadata !"luaO_fb2int", metadata !"", i32 57, metadata !41, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @luaO_fb2int, null, null, metadata !31, i32 57} ; [ DW_TAG_subprogram ] [line 57] [def] [luaO_fb2int]
!41 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !42, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!42 = metadata !{metadata !38, metadata !38}
!43 = metadata !{i32 786478, metadata !34, metadata !35, metadata !"luaO_ceillog2", metadata !"luaO_ceillog2", metadata !"", i32 65, metadata !36, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @luaO_ceillog2, null, null, metadata !31, i32 65} ; [ DW_TAG_subprogram ] [line 65] [def] [luaO_ceillog2]
!44 = metadata !{i32 786478, metadata !34, metadata !35, metadata !"luaO_arith", metadata !"luaO_arith", metadata !"", i32 123, metadata !45, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.lua_State*, i32, %struct.lua_TValue*, %struct.lua_TValue*, %struct.lua_TValue*)* @luaO_arith, null, null, metadata !31, i32 124} ; [ DW_TAG_subprogram ] [line 123] [def] [scope 124] [luaO_arith]
!45 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !46, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!46 = metadata !{null, metadata !47, metadata !38, metadata !304, metadata !304, metadata !72}
!47 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !48} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from lua_State]
!48 = metadata !{i32 786454, metadata !49, null, metadata !"lua_State", i32 56, i64 0, i64 0, i64 0, i32 0, metadata !50} ; [ DW_TAG_typedef ] [lua_State] [line 56, size 0, align 0, offset 0] [from lua_State]
!49 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lua.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!50 = metadata !{i32 786451, metadata !51, null, metadata !"lua_State", i32 159, i64 960, i64 32, i32 0, i32 0, null, metadata !52, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [lua_State] [line 159, size 960, align 32, offset 0] [def] [from ]
!51 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lstate.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!52 = metadata !{metadata !53, metadata !65, metadata !66, metadata !67, metadata !69, metadata !70, metadata !96, metadata !211, metadata !249, metadata !250, metadata !251, metadata !252, metadata !256, metadata !257, metadata !258, metadata !261, metadata !262, metadata !292, metadata !293, metadata !294, metadata !295, metadata !296, metadata !297, metadata !298, metadata !303}
!53 = metadata !{i32 786445, metadata !51, metadata !50, metadata !"next", i32 160, i64 32, i64 32, i64 0, i32 0, metadata !54} ; [ DW_TAG_member ] [next] [line 160, size 32, align 32, offset 0] [from ]
!54 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !55} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from GCObject]
!55 = metadata !{i32 786454, metadata !56, null, metadata !"GCObject", i32 72, i64 0, i64 0, i64 0, i32 0, metadata !57} ; [ DW_TAG_typedef ] [GCObject] [line 72, size 0, align 0, offset 0] [from GCObject]
!56 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lobject.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!57 = metadata !{i32 786451, metadata !56, null, metadata !"GCObject", i32 85, i64 64, i64 32, i32 0, i32 0, null, metadata !58, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [GCObject] [line 85, size 64, align 32, offset 0] [def] [from ]
!58 = metadata !{metadata !59, metadata !60, metadata !64}
!59 = metadata !{i32 786445, metadata !56, metadata !57, metadata !"next", i32 86, i64 32, i64 32, i64 0, i32 0, metadata !54} ; [ DW_TAG_member ] [next] [line 86, size 32, align 32, offset 0] [from ]
!60 = metadata !{i32 786445, metadata !56, metadata !57, metadata !"tt", i32 86, i64 8, i64 8, i64 32, i32 0, metadata !61} ; [ DW_TAG_member ] [tt] [line 86, size 8, align 8, offset 32] [from lu_byte]
!61 = metadata !{i32 786454, metadata !62, null, metadata !"lu_byte", i32 35, i64 0, i64 0, i64 0, i32 0, metadata !63} ; [ DW_TAG_typedef ] [lu_byte] [line 35, size 0, align 0, offset 0] [from unsigned char]
!62 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/llimits.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!63 = metadata !{i32 786468, null, null, metadata !"unsigned char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [unsigned char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!64 = metadata !{i32 786445, metadata !56, metadata !57, metadata !"marked", i32 86, i64 8, i64 8, i64 40, i32 0, metadata !61} ; [ DW_TAG_member ] [marked] [line 86, size 8, align 8, offset 40] [from lu_byte]
!65 = metadata !{i32 786445, metadata !51, metadata !50, metadata !"tt", i32 160, i64 8, i64 8, i64 32, i32 0, metadata !61} ; [ DW_TAG_member ] [tt] [line 160, size 8, align 8, offset 32] [from lu_byte]
!66 = metadata !{i32 786445, metadata !51, metadata !50, metadata !"marked", i32 160, i64 8, i64 8, i64 40, i32 0, metadata !61} ; [ DW_TAG_member ] [marked] [line 160, size 8, align 8, offset 40] [from lu_byte]
!67 = metadata !{i32 786445, metadata !51, metadata !50, metadata !"nci", i32 161, i64 16, i64 16, i64 48, i32 0, metadata !68} ; [ DW_TAG_member ] [nci] [line 161, size 16, align 16, offset 48] [from unsigned short]
!68 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!69 = metadata !{i32 786445, metadata !51, metadata !50, metadata !"status", i32 162, i64 8, i64 8, i64 64, i32 0, metadata !61} ; [ DW_TAG_member ] [status] [line 162, size 8, align 8, offset 64] [from lu_byte]
!70 = metadata !{i32 786445, metadata !51, metadata !50, metadata !"top", i32 163, i64 32, i64 32, i64 96, i32 0, metadata !71} ; [ DW_TAG_member ] [top] [line 163, size 32, align 32, offset 96] [from StkId]
!71 = metadata !{i32 786454, metadata !56, null, metadata !"StkId", i32 294, i64 0, i64 0, i64 0, i32 0, metadata !72} ; [ DW_TAG_typedef ] [StkId] [line 294, size 0, align 0, offset 0] [from ]
!72 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !73} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from TValue]
!73 = metadata !{i32 786454, metadata !56, null, metadata !"TValue", i32 115, i64 0, i64 0, i64 0, i32 0, metadata !74} ; [ DW_TAG_typedef ] [TValue] [line 115, size 0, align 0, offset 0] [from lua_TValue]
!74 = metadata !{i32 786451, metadata !56, null, metadata !"lua_TValue", i32 113, i64 128, i64 64, i32 0, i32 0, null, metadata !75, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [lua_TValue] [line 113, size 128, align 64, offset 0] [def] [from ]
!75 = metadata !{metadata !76, metadata !95}
!76 = metadata !{i32 786445, metadata !56, metadata !74, metadata !"value_", i32 114, i64 64, i64 64, i64 0, i32 0, metadata !77} ; [ DW_TAG_member ] [value_] [line 114, size 64, align 64, offset 0] [from Value]
!77 = metadata !{i32 786454, metadata !56, null, metadata !"Value", i32 107, i64 0, i64 0, i64 0, i32 0, metadata !78} ; [ DW_TAG_typedef ] [Value] [line 107, size 0, align 0, offset 0] [from Value]
!78 = metadata !{i32 786455, metadata !56, null, metadata !"Value", i32 100, i64 64, i64 64, i64 0, i32 0, null, metadata !79, i32 0, null, null, null} ; [ DW_TAG_union_type ] [Value] [line 100, size 64, align 64, offset 0] [def] [from ]
!79 = metadata !{metadata !80, metadata !81, metadata !83, metadata !84, metadata !89, metadata !92}
!80 = metadata !{i32 786445, metadata !56, metadata !78, metadata !"gc", i32 101, i64 32, i64 32, i64 0, i32 0, metadata !54} ; [ DW_TAG_member ] [gc] [line 101, size 32, align 32, offset 0] [from ]
!81 = metadata !{i32 786445, metadata !56, metadata !78, metadata !"p", i32 102, i64 32, i64 32, i64 0, i32 0, metadata !82} ; [ DW_TAG_member ] [p] [line 102, size 32, align 32, offset 0] [from ]
!82 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!83 = metadata !{i32 786445, metadata !56, metadata !78, metadata !"b", i32 103, i64 32, i64 32, i64 0, i32 0, metadata !38} ; [ DW_TAG_member ] [b] [line 103, size 32, align 32, offset 0] [from int]
!84 = metadata !{i32 786445, metadata !56, metadata !78, metadata !"f", i32 104, i64 32, i64 32, i64 0, i32 0, metadata !85} ; [ DW_TAG_member ] [f] [line 104, size 32, align 32, offset 0] [from lua_CFunction]
!85 = metadata !{i32 786454, metadata !49, null, metadata !"lua_CFunction", i32 105, i64 0, i64 0, i64 0, i32 0, metadata !86} ; [ DW_TAG_typedef ] [lua_CFunction] [line 105, size 0, align 0, offset 0] [from ]
!86 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !87} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!87 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !88, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!88 = metadata !{metadata !38, metadata !47}
!89 = metadata !{i32 786445, metadata !56, metadata !78, metadata !"i", i32 105, i64 64, i64 64, i64 0, i32 0, metadata !90} ; [ DW_TAG_member ] [i] [line 105, size 64, align 64, offset 0] [from lua_Integer]
!90 = metadata !{i32 786454, metadata !49, null, metadata !"lua_Integer", i32 93, i64 0, i64 0, i64 0, i32 0, metadata !91} ; [ DW_TAG_typedef ] [lua_Integer] [line 93, size 0, align 0, offset 0] [from long long int]
!91 = metadata !{i32 786468, null, null, metadata !"long long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!92 = metadata !{i32 786445, metadata !56, metadata !78, metadata !"n", i32 106, i64 64, i64 64, i64 0, i32 0, metadata !93} ; [ DW_TAG_member ] [n] [line 106, size 64, align 64, offset 0] [from lua_Number]
!93 = metadata !{i32 786454, metadata !49, null, metadata !"lua_Number", i32 89, i64 0, i64 0, i64 0, i32 0, metadata !94} ; [ DW_TAG_typedef ] [lua_Number] [line 89, size 0, align 0, offset 0] [from double]
!94 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!95 = metadata !{i32 786445, metadata !56, metadata !74, metadata !"tt_", i32 114, i64 32, i64 32, i64 64, i32 0, metadata !38} ; [ DW_TAG_member ] [tt_] [line 114, size 32, align 32, offset 64] [from int]
!96 = metadata !{i32 786445, metadata !51, metadata !50, metadata !"l_G", i32 164, i64 32, i64 32, i64 128, i32 0, metadata !97} ; [ DW_TAG_member ] [l_G] [line 164, size 32, align 32, offset 128] [from ]
!97 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !98} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from global_State]
!98 = metadata !{i32 786454, metadata !51, null, metadata !"global_State", i32 153, i64 0, i64 0, i64 0, i32 0, metadata !99} ; [ DW_TAG_typedef ] [global_State] [line 153, size 0, align 0, offset 0] [from global_State]
!99 = metadata !{i32 786451, metadata !51, null, metadata !"global_State", i32 118, i64 5568, i64 64, i32 0, i32 0, null, metadata !100, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [global_State] [line 118, size 5568, align 64, offset 0] [def] [from ]
!100 = metadata !{metadata !101, metadata !108, metadata !109, metadata !112, metadata !113, metadata !115, metadata !116, metadata !140, metadata !141, metadata !142, metadata !143, metadata !144, metadata !145, metadata !146, metadata !147, metadata !149, metadata !150, metadata !151, metadata !152, metadata !153, metadata !154, metadata !155, metadata !156, metadata !157, metadata !159, metadata !160, metadata !161, metadata !162, metadata !163, metadata !164, metadata !167, metadata !168, metadata !172, metadata !206}
!101 = metadata !{i32 786445, metadata !51, metadata !99, metadata !"frealloc", i32 119, i64 32, i64 32, i64 0, i32 0, metadata !102} ; [ DW_TAG_member ] [frealloc] [line 119, size 32, align 32, offset 0] [from lua_Alloc]
!102 = metadata !{i32 786454, metadata !49, null, metadata !"lua_Alloc", i32 124, i64 0, i64 0, i64 0, i32 0, metadata !103} ; [ DW_TAG_typedef ] [lua_Alloc] [line 124, size 0, align 0, offset 0] [from ]
!103 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !104} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!104 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !105, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!105 = metadata !{metadata !82, metadata !82, metadata !82, metadata !106, metadata !106}
!106 = metadata !{i32 786454, metadata !107, null, metadata !"size_t", i32 216, i64 0, i64 0, i64 0, i32 0, metadata !39} ; [ DW_TAG_typedef ] [size_t] [line 216, size 0, align 0, offset 0] [from unsigned int]
!107 = metadata !{metadata !"D:/Xilinx/SDx/2016.3/SDK/gnu/aarch32/nt/gcc-arm-linux-gnueabi/lib/gcc/arm-linux-gnueabihf/5.2.1/include\5Cstddef.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!108 = metadata !{i32 786445, metadata !51, metadata !99, metadata !"ud", i32 120, i64 32, i64 32, i64 32, i32 0, metadata !82} ; [ DW_TAG_member ] [ud] [line 120, size 32, align 32, offset 32] [from ]
!109 = metadata !{i32 786445, metadata !51, metadata !99, metadata !"totalbytes", i32 121, i64 32, i64 32, i64 64, i32 0, metadata !110} ; [ DW_TAG_member ] [totalbytes] [line 121, size 32, align 32, offset 64] [from l_mem]
!110 = metadata !{i32 786454, metadata !62, null, metadata !"l_mem", i32 27, i64 0, i64 0, i64 0, i32 0, metadata !111} ; [ DW_TAG_typedef ] [l_mem] [line 27, size 0, align 0, offset 0] [from ptrdiff_t]
!111 = metadata !{i32 786454, metadata !107, null, metadata !"ptrdiff_t", i32 149, i64 0, i64 0, i64 0, i32 0, metadata !38} ; [ DW_TAG_typedef ] [ptrdiff_t] [line 149, size 0, align 0, offset 0] [from int]
!112 = metadata !{i32 786445, metadata !51, metadata !99, metadata !"GCdebt", i32 122, i64 32, i64 32, i64 96, i32 0, metadata !110} ; [ DW_TAG_member ] [GCdebt] [line 122, size 32, align 32, offset 96] [from l_mem]
!113 = metadata !{i32 786445, metadata !51, metadata !99, metadata !"GCmemtrav", i32 123, i64 32, i64 32, i64 128, i32 0, metadata !114} ; [ DW_TAG_member ] [GCmemtrav] [line 123, size 32, align 32, offset 128] [from lu_mem]
!114 = metadata !{i32 786454, metadata !62, null, metadata !"lu_mem", i32 26, i64 0, i64 0, i64 0, i32 0, metadata !106} ; [ DW_TAG_typedef ] [lu_mem] [line 26, size 0, align 0, offset 0] [from size_t]
!115 = metadata !{i32 786445, metadata !51, metadata !99, metadata !"GCestimate", i32 124, i64 32, i64 32, i64 160, i32 0, metadata !114} ; [ DW_TAG_member ] [GCestimate] [line 124, size 32, align 32, offset 160] [from lu_mem]
!116 = metadata !{i32 786445, metadata !51, metadata !99, metadata !"strt", i32 125, i64 96, i64 32, i64 192, i32 0, metadata !117} ; [ DW_TAG_member ] [strt] [line 125, size 96, align 32, offset 192] [from stringtable]
!117 = metadata !{i32 786454, metadata !51, null, metadata !"stringtable", i32 62, i64 0, i64 0, i64 0, i32 0, metadata !118} ; [ DW_TAG_typedef ] [stringtable] [line 62, size 0, align 0, offset 0] [from stringtable]
!118 = metadata !{i32 786451, metadata !51, null, metadata !"stringtable", i32 58, i64 96, i64 32, i32 0, i32 0, null, metadata !119, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [stringtable] [line 58, size 96, align 32, offset 0] [def] [from ]
!119 = metadata !{metadata !120, metadata !138, metadata !139}
!120 = metadata !{i32 786445, metadata !51, metadata !118, metadata !"hash", i32 59, i64 32, i64 32, i64 0, i32 0, metadata !121} ; [ DW_TAG_member ] [hash] [line 59, size 32, align 32, offset 0] [from ]
!121 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !122} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!122 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !123} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from TString]
!123 = metadata !{i32 786454, metadata !56, null, metadata !"TString", i32 312, i64 0, i64 0, i64 0, i32 0, metadata !124} ; [ DW_TAG_typedef ] [TString] [line 312, size 0, align 0, offset 0] [from TString]
!124 = metadata !{i32 786451, metadata !56, null, metadata !"TString", i32 303, i64 128, i64 32, i32 0, i32 0, null, metadata !125, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [TString] [line 303, size 128, align 32, offset 0] [def] [from ]
!125 = metadata !{metadata !126, metadata !127, metadata !128, metadata !129, metadata !130, metadata !131, metadata !132}
!126 = metadata !{i32 786445, metadata !56, metadata !124, metadata !"next", i32 304, i64 32, i64 32, i64 0, i32 0, metadata !54} ; [ DW_TAG_member ] [next] [line 304, size 32, align 32, offset 0] [from ]
!127 = metadata !{i32 786445, metadata !56, metadata !124, metadata !"tt", i32 304, i64 8, i64 8, i64 32, i32 0, metadata !61} ; [ DW_TAG_member ] [tt] [line 304, size 8, align 8, offset 32] [from lu_byte]
!128 = metadata !{i32 786445, metadata !56, metadata !124, metadata !"marked", i32 304, i64 8, i64 8, i64 40, i32 0, metadata !61} ; [ DW_TAG_member ] [marked] [line 304, size 8, align 8, offset 40] [from lu_byte]
!129 = metadata !{i32 786445, metadata !56, metadata !124, metadata !"extra", i32 305, i64 8, i64 8, i64 48, i32 0, metadata !61} ; [ DW_TAG_member ] [extra] [line 305, size 8, align 8, offset 48] [from lu_byte]
!130 = metadata !{i32 786445, metadata !56, metadata !124, metadata !"shrlen", i32 306, i64 8, i64 8, i64 56, i32 0, metadata !61} ; [ DW_TAG_member ] [shrlen] [line 306, size 8, align 8, offset 56] [from lu_byte]
!131 = metadata !{i32 786445, metadata !56, metadata !124, metadata !"hash", i32 307, i64 32, i64 32, i64 64, i32 0, metadata !39} ; [ DW_TAG_member ] [hash] [line 307, size 32, align 32, offset 64] [from unsigned int]
!132 = metadata !{i32 786445, metadata !56, metadata !124, metadata !"u", i32 311, i64 32, i64 32, i64 96, i32 0, metadata !133} ; [ DW_TAG_member ] [u] [line 311, size 32, align 32, offset 96] [from ]
!133 = metadata !{i32 786455, metadata !56, metadata !124, metadata !"", i32 308, i64 32, i64 32, i64 0, i32 0, null, metadata !134, i32 0, null, null, null} ; [ DW_TAG_union_type ] [line 308, size 32, align 32, offset 0] [def] [from ]
!134 = metadata !{metadata !135, metadata !136}
!135 = metadata !{i32 786445, metadata !56, metadata !133, metadata !"lnglen", i32 309, i64 32, i64 32, i64 0, i32 0, metadata !106} ; [ DW_TAG_member ] [lnglen] [line 309, size 32, align 32, offset 0] [from size_t]
!136 = metadata !{i32 786445, metadata !56, metadata !133, metadata !"hnext", i32 310, i64 32, i64 32, i64 0, i32 0, metadata !137} ; [ DW_TAG_member ] [hnext] [line 310, size 32, align 32, offset 0] [from ]
!137 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !124} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from TString]
!138 = metadata !{i32 786445, metadata !51, metadata !118, metadata !"nuse", i32 60, i64 32, i64 32, i64 32, i32 0, metadata !38} ; [ DW_TAG_member ] [nuse] [line 60, size 32, align 32, offset 32] [from int]
!139 = metadata !{i32 786445, metadata !51, metadata !118, metadata !"size", i32 61, i64 32, i64 32, i64 64, i32 0, metadata !38} ; [ DW_TAG_member ] [size] [line 61, size 32, align 32, offset 64] [from int]
!140 = metadata !{i32 786445, metadata !51, metadata !99, metadata !"l_registry", i32 126, i64 128, i64 64, i64 320, i32 0, metadata !73} ; [ DW_TAG_member ] [l_registry] [line 126, size 128, align 64, offset 320] [from TValue]
!141 = metadata !{i32 786445, metadata !51, metadata !99, metadata !"seed", i32 127, i64 32, i64 32, i64 448, i32 0, metadata !39} ; [ DW_TAG_member ] [seed] [line 127, size 32, align 32, offset 448] [from unsigned int]
!142 = metadata !{i32 786445, metadata !51, metadata !99, metadata !"currentwhite", i32 128, i64 8, i64 8, i64 480, i32 0, metadata !61} ; [ DW_TAG_member ] [currentwhite] [line 128, size 8, align 8, offset 480] [from lu_byte]
!143 = metadata !{i32 786445, metadata !51, metadata !99, metadata !"gcstate", i32 129, i64 8, i64 8, i64 488, i32 0, metadata !61} ; [ DW_TAG_member ] [gcstate] [line 129, size 8, align 8, offset 488] [from lu_byte]
!144 = metadata !{i32 786445, metadata !51, metadata !99, metadata !"gckind", i32 130, i64 8, i64 8, i64 496, i32 0, metadata !61} ; [ DW_TAG_member ] [gckind] [line 130, size 8, align 8, offset 496] [from lu_byte]
!145 = metadata !{i32 786445, metadata !51, metadata !99, metadata !"gcrunning", i32 131, i64 8, i64 8, i64 504, i32 0, metadata !61} ; [ DW_TAG_member ] [gcrunning] [line 131, size 8, align 8, offset 504] [from lu_byte]
!146 = metadata !{i32 786445, metadata !51, metadata !99, metadata !"allgc", i32 132, i64 32, i64 32, i64 512, i32 0, metadata !54} ; [ DW_TAG_member ] [allgc] [line 132, size 32, align 32, offset 512] [from ]
!147 = metadata !{i32 786445, metadata !51, metadata !99, metadata !"sweepgc", i32 133, i64 32, i64 32, i64 544, i32 0, metadata !148} ; [ DW_TAG_member ] [sweepgc] [line 133, size 32, align 32, offset 544] [from ]
!148 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !54} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!149 = metadata !{i32 786445, metadata !51, metadata !99, metadata !"finobj", i32 134, i64 32, i64 32, i64 576, i32 0, metadata !54} ; [ DW_TAG_member ] [finobj] [line 134, size 32, align 32, offset 576] [from ]
!150 = metadata !{i32 786445, metadata !51, metadata !99, metadata !"gray", i32 135, i64 32, i64 32, i64 608, i32 0, metadata !54} ; [ DW_TAG_member ] [gray] [line 135, size 32, align 32, offset 608] [from ]
!151 = metadata !{i32 786445, metadata !51, metadata !99, metadata !"grayagain", i32 136, i64 32, i64 32, i64 640, i32 0, metadata !54} ; [ DW_TAG_member ] [grayagain] [line 136, size 32, align 32, offset 640] [from ]
!152 = metadata !{i32 786445, metadata !51, metadata !99, metadata !"weak", i32 137, i64 32, i64 32, i64 672, i32 0, metadata !54} ; [ DW_TAG_member ] [weak] [line 137, size 32, align 32, offset 672] [from ]
!153 = metadata !{i32 786445, metadata !51, metadata !99, metadata !"ephemeron", i32 138, i64 32, i64 32, i64 704, i32 0, metadata !54} ; [ DW_TAG_member ] [ephemeron] [line 138, size 32, align 32, offset 704] [from ]
!154 = metadata !{i32 786445, metadata !51, metadata !99, metadata !"allweak", i32 139, i64 32, i64 32, i64 736, i32 0, metadata !54} ; [ DW_TAG_member ] [allweak] [line 139, size 32, align 32, offset 736] [from ]
!155 = metadata !{i32 786445, metadata !51, metadata !99, metadata !"tobefnz", i32 140, i64 32, i64 32, i64 768, i32 0, metadata !54} ; [ DW_TAG_member ] [tobefnz] [line 140, size 32, align 32, offset 768] [from ]
!156 = metadata !{i32 786445, metadata !51, metadata !99, metadata !"fixedgc", i32 141, i64 32, i64 32, i64 800, i32 0, metadata !54} ; [ DW_TAG_member ] [fixedgc] [line 141, size 32, align 32, offset 800] [from ]
!157 = metadata !{i32 786445, metadata !51, metadata !99, metadata !"twups", i32 142, i64 32, i64 32, i64 832, i32 0, metadata !158} ; [ DW_TAG_member ] [twups] [line 142, size 32, align 32, offset 832] [from ]
!158 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !50} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from lua_State]
!159 = metadata !{i32 786445, metadata !51, metadata !99, metadata !"gcfinnum", i32 143, i64 32, i64 32, i64 864, i32 0, metadata !39} ; [ DW_TAG_member ] [gcfinnum] [line 143, size 32, align 32, offset 864] [from unsigned int]
!160 = metadata !{i32 786445, metadata !51, metadata !99, metadata !"gcpause", i32 144, i64 32, i64 32, i64 896, i32 0, metadata !38} ; [ DW_TAG_member ] [gcpause] [line 144, size 32, align 32, offset 896] [from int]
!161 = metadata !{i32 786445, metadata !51, metadata !99, metadata !"gcstepmul", i32 145, i64 32, i64 32, i64 928, i32 0, metadata !38} ; [ DW_TAG_member ] [gcstepmul] [line 145, size 32, align 32, offset 928] [from int]
!162 = metadata !{i32 786445, metadata !51, metadata !99, metadata !"panic", i32 146, i64 32, i64 32, i64 960, i32 0, metadata !85} ; [ DW_TAG_member ] [panic] [line 146, size 32, align 32, offset 960] [from lua_CFunction]
!163 = metadata !{i32 786445, metadata !51, metadata !99, metadata !"mainthread", i32 147, i64 32, i64 32, i64 992, i32 0, metadata !158} ; [ DW_TAG_member ] [mainthread] [line 147, size 32, align 32, offset 992] [from ]
!164 = metadata !{i32 786445, metadata !51, metadata !99, metadata !"version", i32 148, i64 32, i64 32, i64 1024, i32 0, metadata !165} ; [ DW_TAG_member ] [version] [line 148, size 32, align 32, offset 1024] [from ]
!165 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !166} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!166 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !93} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from lua_Number]
!167 = metadata !{i32 786445, metadata !51, metadata !99, metadata !"memerrmsg", i32 149, i64 32, i64 32, i64 1056, i32 0, metadata !122} ; [ DW_TAG_member ] [memerrmsg] [line 149, size 32, align 32, offset 1056] [from ]
!168 = metadata !{i32 786445, metadata !51, metadata !99, metadata !"tmname", i32 150, i64 768, i64 32, i64 1088, i32 0, metadata !169} ; [ DW_TAG_member ] [tmname] [line 150, size 768, align 32, offset 1088] [from ]
!169 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 768, i64 32, i32 0, i32 0, metadata !122, metadata !170, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 768, align 32, offset 0] [from ]
!170 = metadata !{metadata !171}
!171 = metadata !{i32 786465, i64 0, i64 24}      ; [ DW_TAG_subrange_type ] [0, 23]
!172 = metadata !{i32 786445, metadata !51, metadata !99, metadata !"mt", i32 151, i64 288, i64 32, i64 1856, i32 0, metadata !173} ; [ DW_TAG_member ] [mt] [line 151, size 288, align 32, offset 1856] [from ]
!173 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 288, i64 32, i32 0, i32 0, metadata !174, metadata !204, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 288, align 32, offset 0] [from ]
!174 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !175} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from Table]
!175 = metadata !{i32 786451, metadata !56, null, metadata !"Table", i32 497, i64 256, i64 32, i32 0, i32 0, null, metadata !176, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [Table] [line 497, size 256, align 32, offset 0] [def] [from ]
!176 = metadata !{metadata !177, metadata !178, metadata !179, metadata !180, metadata !181, metadata !182, metadata !183, metadata !184, metadata !201, metadata !202, metadata !203}
!177 = metadata !{i32 786445, metadata !56, metadata !175, metadata !"next", i32 498, i64 32, i64 32, i64 0, i32 0, metadata !54} ; [ DW_TAG_member ] [next] [line 498, size 32, align 32, offset 0] [from ]
!178 = metadata !{i32 786445, metadata !56, metadata !175, metadata !"tt", i32 498, i64 8, i64 8, i64 32, i32 0, metadata !61} ; [ DW_TAG_member ] [tt] [line 498, size 8, align 8, offset 32] [from lu_byte]
!179 = metadata !{i32 786445, metadata !56, metadata !175, metadata !"marked", i32 498, i64 8, i64 8, i64 40, i32 0, metadata !61} ; [ DW_TAG_member ] [marked] [line 498, size 8, align 8, offset 40] [from lu_byte]
!180 = metadata !{i32 786445, metadata !56, metadata !175, metadata !"flags", i32 499, i64 8, i64 8, i64 48, i32 0, metadata !61} ; [ DW_TAG_member ] [flags] [line 499, size 8, align 8, offset 48] [from lu_byte]
!181 = metadata !{i32 786445, metadata !56, metadata !175, metadata !"lsizenode", i32 500, i64 8, i64 8, i64 56, i32 0, metadata !61} ; [ DW_TAG_member ] [lsizenode] [line 500, size 8, align 8, offset 56] [from lu_byte]
!182 = metadata !{i32 786445, metadata !56, metadata !175, metadata !"sizearray", i32 501, i64 32, i64 32, i64 64, i32 0, metadata !39} ; [ DW_TAG_member ] [sizearray] [line 501, size 32, align 32, offset 64] [from unsigned int]
!183 = metadata !{i32 786445, metadata !56, metadata !175, metadata !"array", i32 502, i64 32, i64 32, i64 96, i32 0, metadata !72} ; [ DW_TAG_member ] [array] [line 502, size 32, align 32, offset 96] [from ]
!184 = metadata !{i32 786445, metadata !56, metadata !175, metadata !"node", i32 503, i64 32, i64 32, i64 128, i32 0, metadata !185} ; [ DW_TAG_member ] [node] [line 503, size 32, align 32, offset 128] [from ]
!185 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !186} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from Node]
!186 = metadata !{i32 786454, metadata !56, null, metadata !"Node", i32 494, i64 0, i64 0, i64 0, i32 0, metadata !187} ; [ DW_TAG_typedef ] [Node] [line 494, size 0, align 0, offset 0] [from Node]
!187 = metadata !{i32 786451, metadata !56, null, metadata !"Node", i32 491, i64 256, i64 64, i32 0, i32 0, null, metadata !188, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [Node] [line 491, size 256, align 64, offset 0] [def] [from ]
!188 = metadata !{metadata !189, metadata !190}
!189 = metadata !{i32 786445, metadata !56, metadata !187, metadata !"i_val", i32 492, i64 128, i64 64, i64 0, i32 0, metadata !73} ; [ DW_TAG_member ] [i_val] [line 492, size 128, align 64, offset 0] [from TValue]
!190 = metadata !{i32 786445, metadata !56, metadata !187, metadata !"i_key", i32 493, i64 128, i64 64, i64 128, i32 0, metadata !191} ; [ DW_TAG_member ] [i_key] [line 493, size 128, align 64, offset 128] [from TKey]
!191 = metadata !{i32 786454, metadata !56, null, metadata !"TKey", i32 481, i64 0, i64 0, i64 0, i32 0, metadata !192} ; [ DW_TAG_typedef ] [TKey] [line 481, size 0, align 0, offset 0] [from TKey]
!192 = metadata !{i32 786455, metadata !56, null, metadata !"TKey", i32 475, i64 128, i64 64, i64 0, i32 0, null, metadata !193, i32 0, null, null, null} ; [ DW_TAG_union_type ] [TKey] [line 475, size 128, align 64, offset 0] [def] [from ]
!193 = metadata !{metadata !194, metadata !200}
!194 = metadata !{i32 786445, metadata !56, metadata !192, metadata !"nk", i32 479, i64 128, i64 64, i64 0, i32 0, metadata !195} ; [ DW_TAG_member ] [nk] [line 479, size 128, align 64, offset 0] [from ]
!195 = metadata !{i32 786451, metadata !56, metadata !192, metadata !"", i32 476, i64 128, i64 64, i32 0, i32 0, null, metadata !196, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 476, size 128, align 64, offset 0] [def] [from ]
!196 = metadata !{metadata !197, metadata !198, metadata !199}
!197 = metadata !{i32 786445, metadata !56, metadata !195, metadata !"value_", i32 477, i64 64, i64 64, i64 0, i32 0, metadata !77} ; [ DW_TAG_member ] [value_] [line 477, size 64, align 64, offset 0] [from Value]
!198 = metadata !{i32 786445, metadata !56, metadata !195, metadata !"tt_", i32 477, i64 32, i64 32, i64 64, i32 0, metadata !38} ; [ DW_TAG_member ] [tt_] [line 477, size 32, align 32, offset 64] [from int]
!199 = metadata !{i32 786445, metadata !56, metadata !195, metadata !"next", i32 478, i64 32, i64 32, i64 96, i32 0, metadata !38} ; [ DW_TAG_member ] [next] [line 478, size 32, align 32, offset 96] [from int]
!200 = metadata !{i32 786445, metadata !56, metadata !192, metadata !"tvk", i32 480, i64 128, i64 64, i64 0, i32 0, metadata !73} ; [ DW_TAG_member ] [tvk] [line 480, size 128, align 64, offset 0] [from TValue]
!201 = metadata !{i32 786445, metadata !56, metadata !175, metadata !"lastfree", i32 504, i64 32, i64 32, i64 160, i32 0, metadata !185} ; [ DW_TAG_member ] [lastfree] [line 504, size 32, align 32, offset 160] [from ]
!202 = metadata !{i32 786445, metadata !56, metadata !175, metadata !"metatable", i32 505, i64 32, i64 32, i64 192, i32 0, metadata !174} ; [ DW_TAG_member ] [metatable] [line 505, size 32, align 32, offset 192] [from ]
!203 = metadata !{i32 786445, metadata !56, metadata !175, metadata !"gclist", i32 506, i64 32, i64 32, i64 224, i32 0, metadata !54} ; [ DW_TAG_member ] [gclist] [line 506, size 32, align 32, offset 224] [from ]
!204 = metadata !{metadata !205}
!205 = metadata !{i32 786465, i64 0, i64 9}       ; [ DW_TAG_subrange_type ] [0, 8]
!206 = metadata !{i32 786445, metadata !51, metadata !99, metadata !"strcache", i32 152, i64 3392, i64 32, i64 2144, i32 0, metadata !207} ; [ DW_TAG_member ] [strcache] [line 152, size 3392, align 32, offset 2144] [from ]
!207 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 3392, i64 32, i32 0, i32 0, metadata !122, metadata !208, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 3392, align 32, offset 0] [from ]
!208 = metadata !{metadata !209, metadata !210}
!209 = metadata !{i32 786465, i64 0, i64 53}      ; [ DW_TAG_subrange_type ] [0, 52]
!210 = metadata !{i32 786465, i64 0, i64 2}       ; [ DW_TAG_subrange_type ] [0, 1]
!211 = metadata !{i32 786445, metadata !51, metadata !50, metadata !"ci", i32 165, i64 32, i64 32, i64 160, i32 0, metadata !212} ; [ DW_TAG_member ] [ci] [line 165, size 32, align 32, offset 160] [from ]
!212 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !213} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from CallInfo]
!213 = metadata !{i32 786454, metadata !51, null, metadata !"CallInfo", i32 92, i64 0, i64 0, i64 0, i32 0, metadata !214} ; [ DW_TAG_typedef ] [CallInfo] [line 92, size 0, align 0, offset 0] [from CallInfo]
!214 = metadata !{i32 786451, metadata !51, null, metadata !"CallInfo", i32 74, i64 288, i64 32, i32 0, i32 0, null, metadata !215, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [CallInfo] [line 74, size 288, align 32, offset 0] [def] [from ]
!215 = metadata !{metadata !216, metadata !217, metadata !218, metadata !220, metadata !221, metadata !245, metadata !246, metadata !248}
!216 = metadata !{i32 786445, metadata !51, metadata !214, metadata !"func", i32 75, i64 32, i64 32, i64 0, i32 0, metadata !71} ; [ DW_TAG_member ] [func] [line 75, size 32, align 32, offset 0] [from StkId]
!217 = metadata !{i32 786445, metadata !51, metadata !214, metadata !"top", i32 76, i64 32, i64 32, i64 32, i32 0, metadata !71} ; [ DW_TAG_member ] [top] [line 76, size 32, align 32, offset 32] [from StkId]
!218 = metadata !{i32 786445, metadata !51, metadata !214, metadata !"previous", i32 77, i64 32, i64 32, i64 64, i32 0, metadata !219} ; [ DW_TAG_member ] [previous] [line 77, size 32, align 32, offset 64] [from ]
!219 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !214} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from CallInfo]
!220 = metadata !{i32 786445, metadata !51, metadata !214, metadata !"next", i32 77, i64 32, i64 32, i64 96, i32 0, metadata !219} ; [ DW_TAG_member ] [next] [line 77, size 32, align 32, offset 96] [from ]
!221 = metadata !{i32 786445, metadata !51, metadata !214, metadata !"u", i32 88, i64 96, i64 32, i64 128, i32 0, metadata !222} ; [ DW_TAG_member ] [u] [line 88, size 96, align 32, offset 128] [from ]
!222 = metadata !{i32 786455, metadata !51, metadata !214, metadata !"", i32 78, i64 96, i64 32, i64 0, i32 0, null, metadata !223, i32 0, null, null, null} ; [ DW_TAG_union_type ] [line 78, size 96, align 32, offset 0] [def] [from ]
!223 = metadata !{metadata !224, metadata !232}
!224 = metadata !{i32 786445, metadata !51, metadata !222, metadata !"l", i32 82, i64 64, i64 32, i64 0, i32 0, metadata !225} ; [ DW_TAG_member ] [l] [line 82, size 64, align 32, offset 0] [from ]
!225 = metadata !{i32 786451, metadata !51, metadata !222, metadata !"", i32 79, i64 64, i64 32, i32 0, i32 0, null, metadata !226, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 79, size 64, align 32, offset 0] [def] [from ]
!226 = metadata !{metadata !227, metadata !228}
!227 = metadata !{i32 786445, metadata !51, metadata !225, metadata !"base", i32 80, i64 32, i64 32, i64 0, i32 0, metadata !71} ; [ DW_TAG_member ] [base] [line 80, size 32, align 32, offset 0] [from StkId]
!228 = metadata !{i32 786445, metadata !51, metadata !225, metadata !"savedpc", i32 81, i64 32, i64 32, i64 32, i32 0, metadata !229} ; [ DW_TAG_member ] [savedpc] [line 81, size 32, align 32, offset 32] [from ]
!229 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !230} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!230 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !231} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from Instruction]
!231 = metadata !{i32 786454, metadata !62, null, metadata !"Instruction", i32 163, i64 0, i64 0, i64 0, i32 0, metadata !39} ; [ DW_TAG_typedef ] [Instruction] [line 163, size 0, align 0, offset 0] [from unsigned int]
!232 = metadata !{i32 786445, metadata !51, metadata !222, metadata !"c", i32 87, i64 96, i64 32, i64 0, i32 0, metadata !233} ; [ DW_TAG_member ] [c] [line 87, size 96, align 32, offset 0] [from ]
!233 = metadata !{i32 786451, metadata !51, metadata !222, metadata !"", i32 83, i64 96, i64 32, i32 0, i32 0, null, metadata !234, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 83, size 96, align 32, offset 0] [def] [from ]
!234 = metadata !{metadata !235, metadata !243, metadata !244}
!235 = metadata !{i32 786445, metadata !51, metadata !233, metadata !"k", i32 84, i64 32, i64 32, i64 0, i32 0, metadata !236} ; [ DW_TAG_member ] [k] [line 84, size 32, align 32, offset 0] [from lua_KFunction]
!236 = metadata !{i32 786454, metadata !49, null, metadata !"lua_KFunction", i32 110, i64 0, i64 0, i64 0, i32 0, metadata !237} ; [ DW_TAG_typedef ] [lua_KFunction] [line 110, size 0, align 0, offset 0] [from ]
!237 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !238} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!238 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !239, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!239 = metadata !{metadata !38, metadata !47, metadata !38, metadata !240}
!240 = metadata !{i32 786454, metadata !49, null, metadata !"lua_KContext", i32 99, i64 0, i64 0, i64 0, i32 0, metadata !241} ; [ DW_TAG_typedef ] [lua_KContext] [line 99, size 0, align 0, offset 0] [from intptr_t]
!241 = metadata !{i32 786454, metadata !242, null, metadata !"intptr_t", i32 125, i64 0, i64 0, i64 0, i32 0, metadata !38} ; [ DW_TAG_typedef ] [intptr_t] [line 125, size 0, align 0, offset 0] [from int]
!242 = metadata !{metadata !"D:/Xilinx/SDx/2016.3/SDK/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include\5Cstdint.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!243 = metadata !{i32 786445, metadata !51, metadata !233, metadata !"old_errfunc", i32 85, i64 32, i64 32, i64 32, i32 0, metadata !111} ; [ DW_TAG_member ] [old_errfunc] [line 85, size 32, align 32, offset 32] [from ptrdiff_t]
!244 = metadata !{i32 786445, metadata !51, metadata !233, metadata !"ctx", i32 86, i64 32, i64 32, i64 64, i32 0, metadata !240} ; [ DW_TAG_member ] [ctx] [line 86, size 32, align 32, offset 64] [from lua_KContext]
!245 = metadata !{i32 786445, metadata !51, metadata !214, metadata !"extra", i32 89, i64 32, i64 32, i64 224, i32 0, metadata !111} ; [ DW_TAG_member ] [extra] [line 89, size 32, align 32, offset 224] [from ptrdiff_t]
!246 = metadata !{i32 786445, metadata !51, metadata !214, metadata !"nresults", i32 90, i64 16, i64 16, i64 256, i32 0, metadata !247} ; [ DW_TAG_member ] [nresults] [line 90, size 16, align 16, offset 256] [from short]
!247 = metadata !{i32 786468, null, null, metadata !"short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [short] [line 0, size 16, align 16, offset 0, enc DW_ATE_signed]
!248 = metadata !{i32 786445, metadata !51, metadata !214, metadata !"callstatus", i32 91, i64 8, i64 8, i64 272, i32 0, metadata !61} ; [ DW_TAG_member ] [callstatus] [line 91, size 8, align 8, offset 272] [from lu_byte]
!249 = metadata !{i32 786445, metadata !51, metadata !50, metadata !"oldpc", i32 166, i64 32, i64 32, i64 192, i32 0, metadata !229} ; [ DW_TAG_member ] [oldpc] [line 166, size 32, align 32, offset 192] [from ]
!250 = metadata !{i32 786445, metadata !51, metadata !50, metadata !"stack_last", i32 167, i64 32, i64 32, i64 224, i32 0, metadata !71} ; [ DW_TAG_member ] [stack_last] [line 167, size 32, align 32, offset 224] [from StkId]
!251 = metadata !{i32 786445, metadata !51, metadata !50, metadata !"stack", i32 168, i64 32, i64 32, i64 256, i32 0, metadata !71} ; [ DW_TAG_member ] [stack] [line 168, size 32, align 32, offset 256] [from StkId]
!252 = metadata !{i32 786445, metadata !51, metadata !50, metadata !"openupval", i32 169, i64 32, i64 32, i64 288, i32 0, metadata !253} ; [ DW_TAG_member ] [openupval] [line 169, size 32, align 32, offset 288] [from ]
!253 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !254} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from UpVal]
!254 = metadata !{i32 786454, metadata !56, null, metadata !"UpVal", i32 436, i64 0, i64 0, i64 0, i32 0, metadata !255} ; [ DW_TAG_typedef ] [UpVal] [line 436, size 0, align 0, offset 0] [from UpVal]
!255 = metadata !{i32 786451, metadata !56, null, metadata !"UpVal", i32 436, i64 0, i64 0, i32 0, i32 4, null, null, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [UpVal] [line 436, size 0, align 0, offset 0] [decl] [from ]
!256 = metadata !{i32 786445, metadata !51, metadata !50, metadata !"gclist", i32 170, i64 32, i64 32, i64 320, i32 0, metadata !54} ; [ DW_TAG_member ] [gclist] [line 170, size 32, align 32, offset 320] [from ]
!257 = metadata !{i32 786445, metadata !51, metadata !50, metadata !"twups", i32 171, i64 32, i64 32, i64 352, i32 0, metadata !158} ; [ DW_TAG_member ] [twups] [line 171, size 32, align 32, offset 352] [from ]
!258 = metadata !{i32 786445, metadata !51, metadata !50, metadata !"errorJmp", i32 172, i64 32, i64 32, i64 384, i32 0, metadata !259} ; [ DW_TAG_member ] [errorJmp] [line 172, size 32, align 32, offset 384] [from ]
!259 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !260} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from lua_longjmp]
!260 = metadata !{i32 786451, metadata !51, null, metadata !"lua_longjmp", i32 33, i64 0, i64 0, i32 0, i32 4, null, null, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [lua_longjmp] [line 33, size 0, align 0, offset 0] [decl] [from ]
!261 = metadata !{i32 786445, metadata !51, metadata !50, metadata !"base_ci", i32 173, i64 288, i64 32, i64 416, i32 0, metadata !213} ; [ DW_TAG_member ] [base_ci] [line 173, size 288, align 32, offset 416] [from CallInfo]
!262 = metadata !{i32 786445, metadata !51, metadata !50, metadata !"hook", i32 174, i64 32, i64 32, i64 704, i32 0, metadata !263} ; [ DW_TAG_member ] [hook] [line 174, size 32, align 32, offset 704] [from ]
!263 = metadata !{i32 786485, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !264} ; [ DW_TAG_volatile_type ] [line 0, size 0, align 0, offset 0] [from lua_Hook]
!264 = metadata !{i32 786454, metadata !49, null, metadata !"lua_Hook", i32 421, i64 0, i64 0, i64 0, i32 0, metadata !265} ; [ DW_TAG_typedef ] [lua_Hook] [line 421, size 0, align 0, offset 0] [from ]
!265 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !266} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!266 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !267, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!267 = metadata !{null, metadata !47, metadata !268}
!268 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !269} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from lua_Debug]
!269 = metadata !{i32 786454, metadata !49, null, metadata !"lua_Debug", i32 417, i64 0, i64 0, i64 0, i32 0, metadata !270} ; [ DW_TAG_typedef ] [lua_Debug] [line 417, size 0, align 0, offset 0] [from lua_Debug]
!270 = metadata !{i32 786451, metadata !49, null, metadata !"lua_Debug", i32 441, i64 800, i64 32, i32 0, i32 0, null, metadata !271, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [lua_Debug] [line 441, size 800, align 32, offset 0] [def] [from ]
!271 = metadata !{metadata !272, metadata !273, metadata !277, metadata !278, metadata !279, metadata !280, metadata !281, metadata !282, metadata !283, metadata !284, metadata !285, metadata !286, metadata !287, metadata !291}
!272 = metadata !{i32 786445, metadata !49, metadata !270, metadata !"event", i32 442, i64 32, i64 32, i64 0, i32 0, metadata !38} ; [ DW_TAG_member ] [event] [line 442, size 32, align 32, offset 0] [from int]
!273 = metadata !{i32 786445, metadata !49, metadata !270, metadata !"name", i32 443, i64 32, i64 32, i64 32, i32 0, metadata !274} ; [ DW_TAG_member ] [name] [line 443, size 32, align 32, offset 32] [from ]
!274 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !275} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!275 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !276} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!276 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!277 = metadata !{i32 786445, metadata !49, metadata !270, metadata !"namewhat", i32 444, i64 32, i64 32, i64 64, i32 0, metadata !274} ; [ DW_TAG_member ] [namewhat] [line 444, size 32, align 32, offset 64] [from ]
!278 = metadata !{i32 786445, metadata !49, metadata !270, metadata !"what", i32 445, i64 32, i64 32, i64 96, i32 0, metadata !274} ; [ DW_TAG_member ] [what] [line 445, size 32, align 32, offset 96] [from ]
!279 = metadata !{i32 786445, metadata !49, metadata !270, metadata !"source", i32 446, i64 32, i64 32, i64 128, i32 0, metadata !274} ; [ DW_TAG_member ] [source] [line 446, size 32, align 32, offset 128] [from ]
!280 = metadata !{i32 786445, metadata !49, metadata !270, metadata !"currentline", i32 447, i64 32, i64 32, i64 160, i32 0, metadata !38} ; [ DW_TAG_member ] [currentline] [line 447, size 32, align 32, offset 160] [from int]
!281 = metadata !{i32 786445, metadata !49, metadata !270, metadata !"linedefined", i32 448, i64 32, i64 32, i64 192, i32 0, metadata !38} ; [ DW_TAG_member ] [linedefined] [line 448, size 32, align 32, offset 192] [from int]
!282 = metadata !{i32 786445, metadata !49, metadata !270, metadata !"lastlinedefined", i32 449, i64 32, i64 32, i64 224, i32 0, metadata !38} ; [ DW_TAG_member ] [lastlinedefined] [line 449, size 32, align 32, offset 224] [from int]
!283 = metadata !{i32 786445, metadata !49, metadata !270, metadata !"nups", i32 450, i64 8, i64 8, i64 256, i32 0, metadata !63} ; [ DW_TAG_member ] [nups] [line 450, size 8, align 8, offset 256] [from unsigned char]
!284 = metadata !{i32 786445, metadata !49, metadata !270, metadata !"nparams", i32 451, i64 8, i64 8, i64 264, i32 0, metadata !63} ; [ DW_TAG_member ] [nparams] [line 451, size 8, align 8, offset 264] [from unsigned char]
!285 = metadata !{i32 786445, metadata !49, metadata !270, metadata !"isvararg", i32 452, i64 8, i64 8, i64 272, i32 0, metadata !276} ; [ DW_TAG_member ] [isvararg] [line 452, size 8, align 8, offset 272] [from char]
!286 = metadata !{i32 786445, metadata !49, metadata !270, metadata !"istailcall", i32 453, i64 8, i64 8, i64 280, i32 0, metadata !276} ; [ DW_TAG_member ] [istailcall] [line 453, size 8, align 8, offset 280] [from char]
!287 = metadata !{i32 786445, metadata !49, metadata !270, metadata !"short_src", i32 454, i64 480, i64 8, i64 288, i32 0, metadata !288} ; [ DW_TAG_member ] [short_src] [line 454, size 480, align 8, offset 288] [from ]
!288 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 480, i64 8, i32 0, i32 0, metadata !276, metadata !289, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 480, align 8, offset 0] [from char]
!289 = metadata !{metadata !290}
!290 = metadata !{i32 786465, i64 0, i64 60}      ; [ DW_TAG_subrange_type ] [0, 59]
!291 = metadata !{i32 786445, metadata !49, metadata !270, metadata !"i_ci", i32 456, i64 32, i64 32, i64 768, i32 0, metadata !219} ; [ DW_TAG_member ] [i_ci] [line 456, size 32, align 32, offset 768] [from ]
!292 = metadata !{i32 786445, metadata !51, metadata !50, metadata !"errfunc", i32 175, i64 32, i64 32, i64 736, i32 0, metadata !111} ; [ DW_TAG_member ] [errfunc] [line 175, size 32, align 32, offset 736] [from ptrdiff_t]
!293 = metadata !{i32 786445, metadata !51, metadata !50, metadata !"stacksize", i32 176, i64 32, i64 32, i64 768, i32 0, metadata !38} ; [ DW_TAG_member ] [stacksize] [line 176, size 32, align 32, offset 768] [from int]
!294 = metadata !{i32 786445, metadata !51, metadata !50, metadata !"basehookcount", i32 177, i64 32, i64 32, i64 800, i32 0, metadata !38} ; [ DW_TAG_member ] [basehookcount] [line 177, size 32, align 32, offset 800] [from int]
!295 = metadata !{i32 786445, metadata !51, metadata !50, metadata !"hookcount", i32 178, i64 32, i64 32, i64 832, i32 0, metadata !38} ; [ DW_TAG_member ] [hookcount] [line 178, size 32, align 32, offset 832] [from int]
!296 = metadata !{i32 786445, metadata !51, metadata !50, metadata !"nny", i32 179, i64 16, i64 16, i64 864, i32 0, metadata !68} ; [ DW_TAG_member ] [nny] [line 179, size 16, align 16, offset 864] [from unsigned short]
!297 = metadata !{i32 786445, metadata !51, metadata !50, metadata !"nCcalls", i32 180, i64 16, i64 16, i64 880, i32 0, metadata !68} ; [ DW_TAG_member ] [nCcalls] [line 180, size 16, align 16, offset 880] [from unsigned short]
!298 = metadata !{i32 786445, metadata !51, metadata !50, metadata !"hookmask", i32 181, i64 32, i64 32, i64 896, i32 0, metadata !299} ; [ DW_TAG_member ] [hookmask] [line 181, size 32, align 32, offset 896] [from sig_atomic_t]
!299 = metadata !{i32 786454, metadata !300, null, metadata !"sig_atomic_t", i32 40, i64 0, i64 0, i64 0, i32 0, metadata !301} ; [ DW_TAG_typedef ] [sig_atomic_t] [line 40, size 0, align 0, offset 0] [from __sig_atomic_t]
!300 = metadata !{metadata !"D:/Xilinx/SDx/2016.3/SDK/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include\5Csignal.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!301 = metadata !{i32 786454, metadata !302, null, metadata !"__sig_atomic_t", i32 22, i64 0, i64 0, i64 0, i32 0, metadata !38} ; [ DW_TAG_typedef ] [__sig_atomic_t] [line 22, size 0, align 0, offset 0] [from int]
!302 = metadata !{metadata !"D:/Xilinx/SDx/2016.3/SDK/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include\5Cbits/sigset.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!303 = metadata !{i32 786445, metadata !51, metadata !50, metadata !"allowhook", i32 182, i64 8, i64 8, i64 928, i32 0, metadata !61} ; [ DW_TAG_member ] [allowhook] [line 182, size 8, align 8, offset 928] [from lu_byte]
!304 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !305} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!305 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !73} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from TValue]
!306 = metadata !{i32 786478, metadata !34, metadata !35, metadata !"luaO_hexavalue", metadata !"luaO_hexavalue", metadata !"", i32 163, metadata !41, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @luaO_hexavalue, null, null, metadata !31, i32 163} ; [ DW_TAG_subprogram ] [line 163] [def] [luaO_hexavalue]
!307 = metadata !{i32 786478, metadata !34, metadata !35, metadata !"luaO_str2num", metadata !"luaO_str2num", metadata !"", i32 331, metadata !308, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i8*, %struct.lua_TValue*)* @luaO_str2num, null, null, metadata !31, i32 331} ; [ DW_TAG_subprogram ] [line 331] [def] [luaO_str2num]
!308 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !309, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!309 = metadata !{metadata !106, metadata !274, metadata !72}
!310 = metadata !{i32 786478, metadata !34, metadata !35, metadata !"luaO_utf8esc", metadata !"luaO_utf8esc", metadata !"", i32 346, metadata !311, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i8*, i32)* @luaO_utf8esc, null, null, metadata !31, i32 346} ; [ DW_TAG_subprogram ] [line 346] [def] [luaO_utf8esc]
!311 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !312, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!312 = metadata !{metadata !38, metadata !313, metadata !314}
!313 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !276} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from char]
!314 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!315 = metadata !{i32 786478, metadata !34, metadata !35, metadata !"luaO_tostring", metadata !"luaO_tostring", metadata !"", i32 371, metadata !316, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.lua_State*, %struct.lua_TValue*)* @luaO_tostring, null, null, metadata !31, i32 371} ; [ DW_TAG_subprogram ] [line 371] [def] [luaO_tostring]
!316 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !317, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!317 = metadata !{null, metadata !47, metadata !71}
!318 = metadata !{i32 786478, metadata !34, metadata !35, metadata !"luaO_pushvfstring", metadata !"luaO_pushvfstring", metadata !"", i32 400, metadata !319, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (%struct.lua_State*, i8*, { [1 x i32] })* @luaO_pushvfstring, null, null, metadata !31, i32 400} ; [ DW_TAG_subprogram ] [line 400] [def] [luaO_pushvfstring]
!319 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !320, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!320 = metadata !{metadata !274, metadata !47, metadata !274, metadata !321}
!321 = metadata !{i32 786454, metadata !322, null, metadata !"va_list", i32 98, i64 0, i64 0, i64 0, i32 0, metadata !323} ; [ DW_TAG_typedef ] [va_list] [line 98, size 0, align 0, offset 0] [from __gnuc_va_list]
!322 = metadata !{metadata !"D:/Xilinx/SDx/2016.3/SDK/gnu/aarch32/nt/gcc-arm-linux-gnueabi/lib/gcc/arm-linux-gnueabihf/5.2.1/include\5Cstdarg.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!323 = metadata !{i32 786454, metadata !322, null, metadata !"__gnuc_va_list", i32 40, i64 0, i64 0, i64 0, i32 0, metadata !324} ; [ DW_TAG_typedef ] [__gnuc_va_list] [line 40, size 0, align 0, offset 0] [from __builtin_va_list]
!324 = metadata !{i32 786454, metadata !1, null, metadata !"__builtin_va_list", i32 387, i64 0, i64 0, i64 0, i32 0, metadata !325} ; [ DW_TAG_typedef ] [__builtin_va_list] [line 387, size 0, align 0, offset 0] [from __va_list]
!325 = metadata !{i32 786451, metadata !1, null, metadata !"__va_list", i32 387, i64 32, i64 32, i32 0, i32 0, null, metadata !326, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [__va_list] [line 387, size 32, align 32, offset 0] [def] [from ]
!326 = metadata !{metadata !327}
!327 = metadata !{i32 786445, metadata !1, metadata !325, metadata !"__ap", i32 387, i64 32, i64 32, i64 0, i32 0, metadata !82} ; [ DW_TAG_member ] [__ap] [line 387, size 32, align 32, offset 0] [from ]
!328 = metadata !{i32 786478, metadata !34, metadata !35, metadata !"luaO_pushfstring", metadata !"luaO_pushfstring", metadata !"", i32 467, metadata !329, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (%struct.lua_State*, i8*, ...)* @luaO_pushfstring, null, null, metadata !31, i32 467} ; [ DW_TAG_subprogram ] [line 467] [def] [luaO_pushfstring]
!329 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !330, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!330 = metadata !{metadata !274, metadata !47, metadata !274, metadata !331}
!331 = metadata !{i32 786456}                     ; [ DW_TAG_unspecified_parameters ]
!332 = metadata !{i32 786478, metadata !34, metadata !35, metadata !"luaO_chunkid", metadata !"luaO_chunkid", metadata !"", i32 486, metadata !333, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i8*, i8*, i32)* @luaO_chunkid, null, null, metadata !31, i32 486} ; [ DW_TAG_subprogram ] [line 486] [def] [luaO_chunkid]
!333 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !334, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!334 = metadata !{null, metadata !313, metadata !274, metadata !106}
!335 = metadata !{i32 786478, metadata !34, metadata !35, metadata !"pushstr", metadata !"pushstr", metadata !"", i32 390, metadata !336, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.lua_State*, i8*, i32)* @pushstr, null, null, metadata !31, i32 390} ; [ DW_TAG_subprogram ] [line 390] [local] [def] [pushstr]
!336 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !337, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!337 = metadata !{null, metadata !47, metadata !274, metadata !106}
!338 = metadata !{i32 786478, metadata !34, metadata !35, metadata !"l_str2d", metadata !"l_str2d", metadata !"", i32 274, metadata !339, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (i8*, double*)* @l_str2d, null, null, metadata !31, i32 274} ; [ DW_TAG_subprogram ] [line 274] [local] [def] [l_str2d]
!339 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !340, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!340 = metadata !{metadata !274, metadata !274, metadata !341}
!341 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !93} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from lua_Number]
!342 = metadata !{i32 786478, metadata !34, metadata !35, metadata !"l_str2dloc", metadata !"l_str2dloc", metadata !"", i32 251, metadata !343, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (i8*, double*, i32)* @l_str2dloc, null, null, metadata !31, i32 251} ; [ DW_TAG_subprogram ] [line 251] [local] [def] [l_str2dloc]
!343 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !344, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!344 = metadata !{metadata !274, metadata !274, metadata !341, metadata !38}
!345 = metadata !{i32 786478, metadata !34, metadata !35, metadata !"l_str2int", metadata !"l_str2int", metadata !"", i32 299, metadata !346, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (i8*, i64*)* @l_str2int, null, null, metadata !31, i32 299} ; [ DW_TAG_subprogram ] [line 299] [local] [def] [l_str2int]
!346 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !347, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!347 = metadata !{metadata !274, metadata !274, metadata !348}
!348 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !90} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from lua_Integer]
!349 = metadata !{i32 786478, metadata !34, metadata !35, metadata !"isneg", metadata !"isneg", metadata !"", i32 169, metadata !350, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i8**)* @isneg, null, null, metadata !31, i32 169} ; [ DW_TAG_subprogram ] [line 169] [local] [def] [isneg]
!350 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !351, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!351 = metadata !{metadata !38, metadata !352}
!352 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !274} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!353 = metadata !{i32 786478, metadata !34, metadata !35, metadata !"numarith", metadata !"numarith", metadata !"", i32 103, metadata !354, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, double (%struct.lua_State*, i32, double, double)* @numarith, null, null, metadata !31, i32 104} ; [ DW_TAG_subprogram ] [line 103] [local] [def] [scope 104] [numarith]
!354 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !355, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!355 = metadata !{metadata !93, metadata !47, metadata !38, metadata !93, metadata !93}
!356 = metadata !{i32 786478, metadata !34, metadata !35, metadata !"intarith", metadata !"intarith", metadata !"", i32 83, metadata !357, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i64 (%struct.lua_State*, i32, i64, i64)* @intarith, null, null, metadata !31, i32 84} ; [ DW_TAG_subprogram ] [line 83] [local] [def] [scope 84] [intarith]
!357 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !358, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!358 = metadata !{metadata !90, metadata !47, metadata !38, metadata !90, metadata !90}
!359 = metadata !{metadata !360, metadata !361}
!360 = metadata !{i32 786484, i32 0, null, metadata !"luaO_nilobject_", metadata !"luaO_nilobject_", metadata !"", metadata !35, i32 33, metadata !305, i32 0, i32 1, { { %struct.GCObject*, [4 x i8] }, i32, [4 x i8] }* @luaO_nilobject_, null} ; [ DW_TAG_variable ] [luaO_nilobject_] [line 33] [def]
!361 = metadata !{i32 786484, i32 0, metadata !43, metadata !"log_2", metadata !"log_2", metadata !"", metadata !35, i32 66, metadata !362, i32 1, i32 1, [256 x i8]* @luaO_ceillog2.log_2, null} ; [ DW_TAG_variable ] [log_2] [line 66] [local] [def]
!362 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 2048, i64 8, i32 0, i32 0, metadata !363, metadata !364, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 2048, align 8, offset 0] [from ]
!363 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !61} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from lu_byte]
!364 = metadata !{metadata !365}
!365 = metadata !{i32 786465, i64 0, i64 256}     ; [ DW_TAG_subrange_type ] [0, 255]
!366 = metadata !{i32 (i32)* @luaO_int2fb}
!367 = metadata !{metadata !"luaO_int2fb"}
!368 = metadata !{i32 (i32)* @luaO_fb2int}
!369 = metadata !{metadata !"luaO_fb2int"}
!370 = metadata !{i32 (i32)* @luaO_ceillog2}
!371 = metadata !{metadata !"luaO_ceillog2"}
!372 = metadata !{void (%struct.lua_State*, i32, %struct.lua_TValue*, %struct.lua_TValue*, %struct.lua_TValue*)* @luaO_arith}
!373 = metadata !{metadata !"luaO_arith"}
!374 = metadata !{i32 (%struct.lua_TValue*, i64*, i32)* @luaV_tointeger}
!375 = metadata !{metadata !"luaV_tointeger"}
!376 = metadata !{i64 (%struct.lua_State*, i32, i64, i64)* @intarith}
!377 = metadata !{metadata !"intarith"}
!378 = metadata !{i32 (%struct.lua_TValue*, double*)* @luaV_tonumber_}
!379 = metadata !{metadata !"luaV_tonumber_"}
!380 = metadata !{double (%struct.lua_State*, i32, double, double)* @numarith}
!381 = metadata !{metadata !"numarith"}
!382 = metadata !{void (%struct.lua_State*, %struct.lua_TValue*, %struct.lua_TValue*, %struct.lua_TValue*, i32)* @luaT_trybinTM}
!383 = metadata !{metadata !"luaT_trybinTM"}
!384 = metadata !{i32 (i32)* @luaO_hexavalue}
!385 = metadata !{metadata !"luaO_hexavalue"}
!386 = metadata !{i32 (i8*, %struct.lua_TValue*)* @luaO_str2num}
!387 = metadata !{metadata !"luaO_str2num"}
!388 = metadata !{i8* (i8*, i64*)* @l_str2int}
!389 = metadata !{metadata !"l_str2int"}
!390 = metadata !{i8* (i8*, double*)* @l_str2d}
!391 = metadata !{metadata !"l_str2d"}
!392 = metadata !{i32 (i8*, i32)* @luaO_utf8esc}
!393 = metadata !{metadata !"luaO_utf8esc"}
!394 = metadata !{void (%struct.lua_State*, %struct.lua_TValue*)* @luaO_tostring}
!395 = metadata !{metadata !"luaO_tostring"}
!396 = metadata !{i32 (i8*, i32, i8*, ...)* @snprintf}
!397 = metadata !{metadata !"snprintf"}
!398 = metadata !{i32 (i8*, i8*)* @strspn}
!399 = metadata !{metadata !"strspn"}
!400 = metadata !{%struct.lconv* ()* @localeconv}
!401 = metadata !{metadata !"localeconv"}
!402 = metadata !{%struct.TString* (%struct.lua_State*, i8*, i32)* @luaS_newlstr}
!403 = metadata !{metadata !"luaS_newlstr"}
!404 = metadata !{i8* (%struct.lua_State*, i8*, { [1 x i32] })* @luaO_pushvfstring}
!405 = metadata !{metadata !"luaO_pushvfstring"}
!406 = metadata !{i8* (i8*, i32)* @strchr}
!407 = metadata !{metadata !"strchr"}
!408 = metadata !{void (%struct.lua_State*, i8*, i32)* @pushstr}
!409 = metadata !{metadata !"pushstr"}
!410 = metadata !{i32 (i8*)* @strlen}
!411 = metadata !{metadata !"strlen"}
!412 = metadata !{i8* (%struct.lua_State*, i8*, ...)* @luaO_pushfstring}
!413 = metadata !{metadata !"luaO_pushfstring"}
!414 = metadata !{void (%struct.lua_State*)* @luaD_inctop}
!415 = metadata !{metadata !"luaD_inctop"}
!416 = metadata !{void (%struct.lua_State*, i8*, ...)* @luaG_runerror}
!417 = metadata !{metadata !"luaG_runerror"}
!418 = metadata !{void (%struct.lua_State*, i32)* @luaD_growstack}
!419 = metadata !{metadata !"luaD_growstack"}
!420 = metadata !{void (%struct.lua_State*, i32)* @luaV_concat}
!421 = metadata !{metadata !"luaV_concat"}
!422 = metadata !{void (i8*, i8*, i32)* @luaO_chunkid}
!423 = metadata !{metadata !"luaO_chunkid"}
!424 = metadata !{i8* (i8*, i8*)* @strpbrk}
!425 = metadata !{metadata !"strpbrk"}
!426 = metadata !{i8* (i8*, double*, i32)* @l_str2dloc}
!427 = metadata !{metadata !"l_str2dloc"}
!428 = metadata !{i8* (i8*, i8*)* @strcpy}
!429 = metadata !{metadata !"strcpy"}
!430 = metadata !{double (i8*, i8**)* @strtod}
!431 = metadata !{metadata !"strtod"}
!432 = metadata !{i32 (i8**)* @isneg}
!433 = metadata !{metadata !"isneg"}
!434 = metadata !{double (double, double)* @pow}
!435 = metadata !{metadata !"pow"}
!436 = metadata !{double (double)* @floor}
!437 = metadata !{metadata !"floor"}
!438 = metadata !{double (double, double)* @fmod}
!439 = metadata !{metadata !"fmod"}
!440 = metadata !{i64 (%struct.lua_State*, i64, i64)* @luaV_mod}
!441 = metadata !{metadata !"luaV_mod"}
!442 = metadata !{i64 (%struct.lua_State*, i64, i64)* @luaV_div}
!443 = metadata !{metadata !"luaV_div"}
!444 = metadata !{i64 (i64, i64)* @luaV_shiftl}
!445 = metadata !{metadata !"luaV_shiftl"}
!446 = metadata !{metadata !"int.unsigned int.0"}
!447 = metadata !{metadata !"int.int.0"}
!448 = metadata !{metadata !"void.lua_State *.1.int.0.const TValue *.1.const TValue *.1.TValue *.1"}
!449 = metadata !{metadata !"int.const TValue *.1.lua_Integer *.1.int.0"}
!450 = metadata !{metadata !"lua_Integer.lua_State *.1.int.0.lua_Integer.0.lua_Integer.0"}
!451 = metadata !{metadata !"int.const TValue *.1.lua_Number *.1"}
!452 = metadata !{metadata !"lua_Number.lua_State *.1.int.0.lua_Number.0.lua_Number.0"}
!453 = metadata !{metadata !"void.lua_State *.1.const TValue *.1.const TValue *.1.StkId.1.TMS.0"}
!454 = metadata !{metadata !"size_t.const char *.1.TValue *.1"}
!455 = metadata !{metadata !"const char .const char *.1.lua_Integer *.1"}
!456 = metadata !{metadata !"const char .const char *.1.lua_Number *.1"}
!457 = metadata !{metadata !"int.char *.1.unsigned long.0"}
!458 = metadata !{metadata !"void.lua_State *.1.StkId.1"}
!459 = metadata !{metadata !"int.char *restrict.1.size_t.0.const char *restrict.1"}
!460 = metadata !{metadata !"unsigned int.const char *.1.const char *.1"}
!461 = metadata !{metadata !"struct lconv ."}
!462 = metadata !{metadata !"TString .lua_State *.1.const char *.1.size_t.0"}
!463 = metadata !{metadata !"const char .lua_State *.1.const char *.1.va_list.0"}
!464 = metadata !{metadata !"char .const char *.1.int.0"}
!465 = metadata !{metadata !"void.lua_State *.1.const char *.1.size_t.0"}
!466 = metadata !{metadata !"unsigned int.const char *.1"}
!467 = metadata !{metadata !"const char .lua_State *.1.const char *.1"}
!468 = metadata !{metadata !"void.lua_State *.1"}
!469 = metadata !{metadata !"void.lua_State *.1.const char *.1"}
!470 = metadata !{metadata !"void.lua_State *.1.int.0"}
!471 = metadata !{metadata !"void.char *.1.const char *.1.size_t.0"}
!472 = metadata !{metadata !"char .const char *.1.const char *.1"}
!473 = metadata !{metadata !"const char .const char *.1.lua_Number *.1.int.0"}
!474 = metadata !{metadata !"char .char *restrict.1.const char *restrict.1"}
!475 = metadata !{metadata !"double.const char *restrict.1.char **restrict.1"}
!476 = metadata !{metadata !"int.const char **.1"}
!477 = metadata !{metadata !"double.double.0.double.0"}
!478 = metadata !{metadata !"double.double.0"}
!479 = metadata !{metadata !"lua_Integer.lua_State *.1.lua_Integer.0.lua_Integer.0"}
!480 = metadata !{metadata !"lua_Integer.lua_Integer.0.lua_Integer.0"}
!481 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lobject.h"}
!482 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lvm.h"}
!483 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lobject.c"}
!484 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/ltm.h"}
!485 = metadata !{metadata !"D:/Xilinx/SDx/2016.3/SDK/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include\5Cstdio.h"}
!486 = metadata !{metadata !"D:/Xilinx/SDx/2016.3/SDK/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include\5Cstring.h"}
!487 = metadata !{metadata !"D:/Xilinx/SDx/2016.3/SDK/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include\5Clocale.h"}
!488 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lstring.h"}
!489 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/ldo.h"}
!490 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/ldebug.h"}
!491 = metadata !{metadata !"D:/Xilinx/SDx/2016.3/SDK/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include\5Cstdlib.h"}
!492 = metadata !{metadata !"D:/Xilinx/SDx/2016.3/SDK/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include\5Cbits/mathcalls.h"}
!493 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!494 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!495 = metadata !{i32 1, metadata !"wchar_size", i32 4}
!496 = metadata !{i32 1, metadata !"min_enum_size", i32 4}
!497 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
!498 = metadata !{i32 786689, metadata !33, metadata !"x", metadata !35, i32 16777257, metadata !39, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 41]
!499 = metadata !{i32 41, i32 31, metadata !33, null}
!500 = metadata !{i32 786688, metadata !33, metadata !"e", metadata !35, i32 42, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [e] [line 42]
!501 = metadata !{i32 42, i32 7, metadata !33, null}
!502 = metadata !{i32 42, i32 3, metadata !33, null}
!503 = metadata !{i32 43, i32 7, metadata !504, null}
!504 = metadata !{i32 786443, metadata !34, metadata !33, i32 43, i32 7, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!505 = metadata !{i32 43, i32 14, metadata !506, null}
!506 = metadata !{i32 786443, metadata !34, metadata !504, i32 43, i32 14, i32 1, i32 96} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!507 = metadata !{i32 44, i32 3, metadata !33, null}
!508 = metadata !{i32 44, i32 3, metadata !509, null}
!509 = metadata !{i32 786443, metadata !34, metadata !33, i32 44, i32 3, i32 1, i32 97} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!510 = metadata !{i32 45, i32 5, metadata !511, null}
!511 = metadata !{i32 786443, metadata !34, metadata !33, i32 44, i32 25, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!512 = metadata !{i32 46, i32 5, metadata !511, null}
!513 = metadata !{i32 47, i32 3, metadata !511, null}
!514 = metadata !{i32 48, i32 3, metadata !33, null}
!515 = metadata !{i32 48, i32 3, metadata !516, null}
!516 = metadata !{i32 786443, metadata !34, metadata !33, i32 48, i32 3, i32 1, i32 98} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!517 = metadata !{i32 49, i32 5, metadata !518, null}
!518 = metadata !{i32 786443, metadata !34, metadata !33, i32 48, i32 25, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!519 = metadata !{i32 50, i32 5, metadata !518, null}
!520 = metadata !{i32 51, i32 3, metadata !518, null}
!521 = metadata !{i32 52, i32 3, metadata !33, null}
!522 = metadata !{i32 53, i32 1, metadata !33, null}
!523 = metadata !{i32 786689, metadata !40, metadata !"x", metadata !35, i32 16777273, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 57]
!524 = metadata !{i32 57, i32 22, metadata !40, null}
!525 = metadata !{i32 58, i32 3, metadata !40, null} ; [ DW_TAG_imported_module ]
!526 = metadata !{i32 58, i32 3, metadata !527, null} ; [ DW_TAG_imported_module ]
!527 = metadata !{i32 786443, metadata !34, metadata !40, i32 58, i32 3, i32 1, i32 99} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!528 = metadata !{i32 58, i32 3, metadata !529, null} ; [ DW_TAG_imported_module ]
!529 = metadata !{i32 786443, metadata !34, metadata !40, i32 58, i32 3, i32 2, i32 100} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!530 = metadata !{i32 58, i32 3, metadata !531, null} ; [ DW_TAG_imported_module ]
!531 = metadata !{i32 786443, metadata !34, metadata !532, i32 58, i32 3, i32 4, i32 102} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!532 = metadata !{i32 786443, metadata !34, metadata !40, i32 58, i32 3, i32 3, i32 101} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!533 = metadata !{i32 786689, metadata !43, metadata !"x", metadata !35, i32 16777281, metadata !39, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 65]
!534 = metadata !{i32 65, i32 33, metadata !43, null}
!535 = metadata !{i32 786688, metadata !43, metadata !"l", metadata !35, i32 76, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [l] [line 76]
!536 = metadata !{i32 76, i32 7, metadata !43, null}
!537 = metadata !{i32 76, i32 3, metadata !43, null}
!538 = metadata !{i32 77, i32 3, metadata !43, null}
!539 = metadata !{i32 78, i32 3, metadata !43, null}
!540 = metadata !{i32 78, i32 3, metadata !541, null}
!541 = metadata !{i32 786443, metadata !34, metadata !542, i32 78, i32 3, i32 3, i32 105} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!542 = metadata !{i32 786443, metadata !34, metadata !43, i32 78, i32 3, i32 1, i32 103} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!543 = metadata !{i32 78, i32 22, metadata !544, null}
!544 = metadata !{i32 786443, metadata !34, metadata !545, i32 78, i32 22, i32 2, i32 104} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!545 = metadata !{i32 786443, metadata !34, metadata !43, i32 78, i32 20, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!546 = metadata !{i32 78, i32 30, metadata !545, null}
!547 = metadata !{i32 78, i32 39, metadata !545, null}
!548 = metadata !{i32 79, i32 3, metadata !43, null}
!549 = metadata !{i32 786689, metadata !44, metadata !"L", metadata !35, i32 16777339, metadata !47, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 123]
!550 = metadata !{i32 123, i32 29, metadata !44, null}
!551 = metadata !{i32 786689, metadata !44, metadata !"op", metadata !35, i32 33554555, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [op] [line 123]
!552 = metadata !{i32 123, i32 36, metadata !44, null}
!553 = metadata !{i32 786689, metadata !44, metadata !"p1", metadata !35, i32 50331771, metadata !304, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [p1] [line 123]
!554 = metadata !{i32 123, i32 54, metadata !44, null}
!555 = metadata !{i32 786689, metadata !44, metadata !"p2", metadata !35, i32 67108987, metadata !304, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [p2] [line 123]
!556 = metadata !{i32 123, i32 72, metadata !44, null}
!557 = metadata !{i32 786689, metadata !44, metadata !"res", metadata !35, i32 83886204, metadata !72, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [res] [line 124]
!558 = metadata !{i32 124, i32 26, metadata !44, null}
!559 = metadata !{i32 125, i32 3, metadata !44, null}
!560 = metadata !{i32 786688, metadata !561, metadata !"i1", metadata !35, i32 129, metadata !90, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i1] [line 129]
!561 = metadata !{i32 786443, metadata !34, metadata !562, i32 128, i32 22, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!562 = metadata !{i32 786443, metadata !34, metadata !44, i32 125, i32 15, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!563 = metadata !{i32 129, i32 19, metadata !561, null}
!564 = metadata !{i32 786688, metadata !561, metadata !"i2", metadata !35, i32 129, metadata !90, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i2] [line 129]
!565 = metadata !{i32 129, i32 35, metadata !561, null}
!566 = metadata !{i32 130, i32 11, metadata !567, null}
!567 = metadata !{i32 786443, metadata !34, metadata !561, i32 130, i32 11, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!568 = metadata !{i32 130, i32 11, metadata !569, null}
!569 = metadata !{i32 786443, metadata !34, metadata !567, i32 130, i32 11, i32 1, i32 106} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!570 = metadata !{i32 130, i32 11, metadata !571, null}
!571 = metadata !{i32 786443, metadata !34, metadata !567, i32 130, i32 11, i32 2, i32 107} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!572 = metadata !{i32 130, i32 11, metadata !573, null}
!573 = metadata !{i32 786443, metadata !34, metadata !574, i32 130, i32 11, i32 4, i32 109} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!574 = metadata !{i32 786443, metadata !34, metadata !567, i32 130, i32 11, i32 3, i32 108} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!575 = metadata !{i32 130, i32 11, metadata !576, null}
!576 = metadata !{i32 786443, metadata !34, metadata !567, i32 130, i32 11, i32 5, i32 110} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!577 = metadata !{i32 130, i32 33, metadata !578, null}
!578 = metadata !{i32 786443, metadata !34, metadata !567, i32 130, i32 33, i32 6, i32 111} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!579 = metadata !{i32 786688, metadata !580, metadata !"io", metadata !35, i32 131, metadata !72, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [io] [line 131]
!580 = metadata !{i32 786443, metadata !34, metadata !581, i32 131, i32 9, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!581 = metadata !{i32 786443, metadata !34, metadata !567, i32 130, i32 53, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!582 = metadata !{i32 131, i32 9, metadata !580, null}
!583 = metadata !{i32 132, i32 9, metadata !581, null}
!584 = metadata !{i32 134, i32 12, metadata !567, null}
!585 = metadata !{i32 786688, metadata !586, metadata !"n1", metadata !35, i32 137, metadata !93, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n1] [line 137]
!586 = metadata !{i32 786443, metadata !34, metadata !562, i32 136, i32 37, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!587 = metadata !{i32 137, i32 18, metadata !586, null}
!588 = metadata !{i32 786688, metadata !586, metadata !"n2", metadata !35, i32 137, metadata !93, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n2] [line 137]
!589 = metadata !{i32 137, i32 33, metadata !586, null}
!590 = metadata !{i32 138, i32 11, metadata !591, null}
!591 = metadata !{i32 786443, metadata !34, metadata !586, i32 138, i32 11, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!592 = metadata !{i32 138, i32 11, metadata !593, null}
!593 = metadata !{i32 786443, metadata !34, metadata !591, i32 138, i32 11, i32 1, i32 112} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!594 = metadata !{i32 138, i32 11, metadata !595, null}
!595 = metadata !{i32 786443, metadata !34, metadata !591, i32 138, i32 11, i32 2, i32 113} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!596 = metadata !{i32 138, i32 11, metadata !597, null}
!597 = metadata !{i32 786443, metadata !34, metadata !598, i32 138, i32 11, i32 4, i32 115} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!598 = metadata !{i32 786443, metadata !34, metadata !591, i32 138, i32 11, i32 3, i32 114} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!599 = metadata !{i32 138, i32 11, metadata !600, null}
!600 = metadata !{i32 786443, metadata !34, metadata !591, i32 138, i32 11, i32 5, i32 116} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!601 = metadata !{i32 138, i32 32, metadata !602, null}
!602 = metadata !{i32 786443, metadata !34, metadata !591, i32 138, i32 32, i32 6, i32 117} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!603 = metadata !{i32 786688, metadata !604, metadata !"io", metadata !35, i32 139, metadata !72, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [io] [line 139]
!604 = metadata !{i32 786443, metadata !34, metadata !605, i32 139, i32 9, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!605 = metadata !{i32 786443, metadata !34, metadata !591, i32 138, i32 51, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!606 = metadata !{i32 139, i32 9, metadata !604, null}
!607 = metadata !{i32 140, i32 9, metadata !605, null}
!608 = metadata !{i32 142, i32 12, metadata !591, null}
!609 = metadata !{i32 786688, metadata !610, metadata !"n1", metadata !35, i32 145, metadata !93, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n1] [line 145]
!610 = metadata !{i32 786443, metadata !34, metadata !562, i32 144, i32 14, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!611 = metadata !{i32 145, i32 18, metadata !610, null}
!612 = metadata !{i32 786688, metadata !610, metadata !"n2", metadata !35, i32 145, metadata !93, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n2] [line 145]
!613 = metadata !{i32 145, i32 33, metadata !610, null}
!614 = metadata !{i32 146, i32 11, metadata !615, null}
!615 = metadata !{i32 786443, metadata !34, metadata !610, i32 146, i32 11, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!616 = metadata !{i32 146, i32 11, metadata !617, null}
!617 = metadata !{i32 786443, metadata !34, metadata !615, i32 146, i32 11, i32 1, i32 118} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!618 = metadata !{i32 786688, metadata !619, metadata !"io", metadata !35, i32 147, metadata !72, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [io] [line 147]
!619 = metadata !{i32 786443, metadata !34, metadata !620, i32 147, i32 9, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!620 = metadata !{i32 786443, metadata !34, metadata !615, i32 146, i32 47, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!621 = metadata !{i32 147, i32 9, metadata !619, null}
!622 = metadata !{i32 148, i32 9, metadata !620, null}
!623 = metadata !{i32 150, i32 16, metadata !624, null}
!624 = metadata !{i32 786443, metadata !34, metadata !615, i32 150, i32 16, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!625 = metadata !{i32 150, i32 16, metadata !626, null}
!626 = metadata !{i32 786443, metadata !34, metadata !624, i32 150, i32 16, i32 1, i32 119} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!627 = metadata !{i32 150, i32 16, metadata !628, null}
!628 = metadata !{i32 786443, metadata !34, metadata !624, i32 150, i32 16, i32 2, i32 120} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!629 = metadata !{i32 150, i32 16, metadata !630, null}
!630 = metadata !{i32 786443, metadata !34, metadata !631, i32 150, i32 16, i32 4, i32 122} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!631 = metadata !{i32 786443, metadata !34, metadata !624, i32 150, i32 16, i32 3, i32 121} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!632 = metadata !{i32 150, i32 16, metadata !633, null}
!633 = metadata !{i32 786443, metadata !34, metadata !624, i32 150, i32 16, i32 5, i32 123} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!634 = metadata !{i32 150, i32 37, metadata !635, null}
!635 = metadata !{i32 786443, metadata !34, metadata !624, i32 150, i32 37, i32 6, i32 124} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!636 = metadata !{i32 786688, metadata !637, metadata !"io", metadata !35, i32 151, metadata !72, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [io] [line 151]
!637 = metadata !{i32 786443, metadata !34, metadata !638, i32 151, i32 9, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!638 = metadata !{i32 786443, metadata !34, metadata !624, i32 150, i32 56, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!639 = metadata !{i32 151, i32 9, metadata !637, null}
!640 = metadata !{i32 152, i32 9, metadata !638, null}
!641 = metadata !{i32 154, i32 12, metadata !624, null}
!642 = metadata !{i32 159, i32 3, metadata !44, null}
!643 = metadata !{i32 160, i32 1, metadata !44, null}
!644 = metadata !{i32 160, i32 1, metadata !645, null}
!645 = metadata !{i32 786443, metadata !34, metadata !44, i32 160, i32 1, i32 1, i32 125} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!646 = metadata !{i32 786689, metadata !356, metadata !"L", metadata !35, i32 16777299, metadata !47, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 83]
!647 = metadata !{i32 83, i32 41, metadata !356, null}
!648 = metadata !{i32 786689, metadata !356, metadata !"op", metadata !35, i32 33554515, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [op] [line 83]
!649 = metadata !{i32 83, i32 48, metadata !356, null}
!650 = metadata !{i32 786689, metadata !356, metadata !"v1", metadata !35, i32 50331731, metadata !90, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [v1] [line 83]
!651 = metadata !{i32 83, i32 64, metadata !356, null}
!652 = metadata !{i32 786689, metadata !356, metadata !"v2", metadata !35, i32 67108948, metadata !90, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [v2] [line 84]
!653 = metadata !{i32 84, i32 64, metadata !356, null}
!654 = metadata !{i32 85, i32 3, metadata !356, null}
!655 = metadata !{i32 86, i32 21, metadata !656, null}
!656 = metadata !{i32 786443, metadata !34, metadata !356, i32 85, i32 15, i32 0, i32 95} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!657 = metadata !{i32 87, i32 20, metadata !656, null}
!658 = metadata !{i32 88, i32 20, metadata !656, null}
!659 = metadata !{i32 89, i32 28, metadata !656, null}
!660 = metadata !{i32 90, i32 29, metadata !656, null}
!661 = metadata !{i32 91, i32 22, metadata !656, null}
!662 = metadata !{i32 92, i32 21, metadata !656, null}
!663 = metadata !{i32 93, i32 22, metadata !656, null}
!664 = metadata !{i32 94, i32 28, metadata !656, null}
!665 = metadata !{i32 95, i32 28, metadata !656, null}
!666 = metadata !{i32 96, i32 21, metadata !656, null}
!667 = metadata !{i32 97, i32 22, metadata !656, null}
!668 = metadata !{i32 98, i32 29, metadata !656, null}
!669 = metadata !{i32 100, i32 1, metadata !356, null}
!670 = metadata !{i32 786689, metadata !353, metadata !"L", metadata !35, i32 16777319, metadata !47, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 103]
!671 = metadata !{i32 103, i32 40, metadata !353, null}
!672 = metadata !{i32 786689, metadata !353, metadata !"op", metadata !35, i32 33554535, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [op] [line 103]
!673 = metadata !{i32 103, i32 47, metadata !353, null}
!674 = metadata !{i32 786689, metadata !353, metadata !"v1", metadata !35, i32 50331751, metadata !93, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [v1] [line 103]
!675 = metadata !{i32 103, i32 62, metadata !353, null}
!676 = metadata !{i32 786689, metadata !353, metadata !"v2", metadata !35, i32 67108968, metadata !93, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [v2] [line 104]
!677 = metadata !{i32 104, i32 62, metadata !353, null}
!678 = metadata !{i32 105, i32 3, metadata !353, null}
!679 = metadata !{i32 106, i32 21, metadata !680, null}
!680 = metadata !{i32 786443, metadata !34, metadata !353, i32 105, i32 15, i32 0, i32 91} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!681 = metadata !{i32 107, i32 21, metadata !680, null}
!682 = metadata !{i32 108, i32 21, metadata !680, null}
!683 = metadata !{i32 109, i32 21, metadata !680, null}
!684 = metadata !{i32 110, i32 21, metadata !680, null}
!685 = metadata !{i32 110, i32 28, metadata !680, null}
!686 = metadata !{i32 111, i32 22, metadata !680, null}
!687 = metadata !{i32 111, i32 29, metadata !680, null}
!688 = metadata !{i32 112, i32 21, metadata !680, null}
!689 = metadata !{i32 786688, metadata !690, metadata !"m", metadata !35, i32 114, metadata !93, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [m] [line 114]
!690 = metadata !{i32 786443, metadata !34, metadata !680, i32 113, i32 21, i32 0, i32 92} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!691 = metadata !{i32 114, i32 18, metadata !690, null}
!692 = metadata !{i32 115, i32 7, metadata !693, null}
!693 = metadata !{i32 786443, metadata !34, metadata !690, i32 115, i32 7, i32 0, i32 93} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!694 = metadata !{i32 115, i32 7, metadata !695, null}
!695 = metadata !{i32 786443, metadata !34, metadata !693, i32 115, i32 7, i32 0, i32 94} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!696 = metadata !{i32 115, i32 7, metadata !697, null}
!697 = metadata !{i32 786443, metadata !34, metadata !695, i32 115, i32 7, i32 1, i32 126} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!698 = metadata !{i32 116, i32 7, metadata !690, null}
!699 = metadata !{i32 118, i32 29, metadata !680, null}
!700 = metadata !{i32 120, i32 1, metadata !353, null}
!701 = metadata !{i32 786689, metadata !306, metadata !"c", metadata !35, i32 16777379, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [c] [line 163]
!702 = metadata !{i32 163, i32 25, metadata !306, null}
!703 = metadata !{i32 164, i32 7, metadata !704, null}
!704 = metadata !{i32 786443, metadata !34, metadata !306, i32 164, i32 7, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!705 = metadata !{i32 164, i32 20, metadata !706, null}
!706 = metadata !{i32 786443, metadata !34, metadata !704, i32 164, i32 20, i32 1, i32 127} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!707 = metadata !{i32 165, i32 8, metadata !704, null}
!708 = metadata !{i32 166, i32 1, metadata !306, null}
!709 = metadata !{i32 786689, metadata !307, metadata !"s", metadata !35, i32 16777547, metadata !274, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 331]
!710 = metadata !{i32 331, i32 34, metadata !307, null}
!711 = metadata !{i32 786689, metadata !307, metadata !"o", metadata !35, i32 33554763, metadata !72, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [o] [line 331]
!712 = metadata !{i32 331, i32 45, metadata !307, null}
!713 = metadata !{i32 786688, metadata !307, metadata !"i", metadata !35, i32 332, metadata !90, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 332]
!714 = metadata !{i32 332, i32 15, metadata !307, null}
!715 = metadata !{i32 786688, metadata !307, metadata !"n", metadata !35, i32 332, metadata !93, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 332]
!716 = metadata !{i32 332, i32 29, metadata !307, null}
!717 = metadata !{i32 786688, metadata !307, metadata !"e", metadata !35, i32 333, metadata !274, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [e] [line 333]
!718 = metadata !{i32 333, i32 15, metadata !307, null}
!719 = metadata !{i32 334, i32 12, metadata !720, null}
!720 = metadata !{i32 786443, metadata !34, metadata !307, i32 334, i32 7, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!721 = metadata !{i32 786688, metadata !722, metadata !"io", metadata !35, i32 335, metadata !72, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [io] [line 335]
!722 = metadata !{i32 786443, metadata !34, metadata !723, i32 335, i32 5, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!723 = metadata !{i32 786443, metadata !34, metadata !720, i32 334, i32 39, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!724 = metadata !{i32 335, i32 5, metadata !722, null}
!725 = metadata !{i32 336, i32 3, metadata !723, null}
!726 = metadata !{i32 337, i32 17, metadata !727, null}
!727 = metadata !{i32 786443, metadata !34, metadata !720, i32 337, i32 12, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!728 = metadata !{i32 786688, metadata !729, metadata !"io", metadata !35, i32 338, metadata !72, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [io] [line 338]
!729 = metadata !{i32 786443, metadata !34, metadata !730, i32 338, i32 5, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!730 = metadata !{i32 786443, metadata !34, metadata !727, i32 337, i32 42, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!731 = metadata !{i32 338, i32 5, metadata !729, null}
!732 = metadata !{i32 339, i32 3, metadata !730, null}
!733 = metadata !{i32 341, i32 5, metadata !727, null}
!734 = metadata !{i32 342, i32 3, metadata !307, null}
!735 = metadata !{i32 343, i32 1, metadata !307, null}
!736 = metadata !{i32 786689, metadata !345, metadata !"s", metadata !35, i32 16777515, metadata !274, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 299]
!737 = metadata !{i32 299, i32 43, metadata !345, null}
!738 = metadata !{i32 786689, metadata !345, metadata !"result", metadata !35, i32 33554731, metadata !348, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [result] [line 299]
!739 = metadata !{i32 299, i32 59, metadata !345, null}
!740 = metadata !{i32 786688, metadata !345, metadata !"a", metadata !35, i32 300, metadata !741, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a] [line 300]
!741 = metadata !{i32 786454, metadata !49, null, metadata !"lua_Unsigned", i32 96, i64 0, i64 0, i64 0, i32 0, metadata !742} ; [ DW_TAG_typedef ] [lua_Unsigned] [line 96, size 0, align 0, offset 0] [from long long unsigned int]
!742 = metadata !{i32 786468, null, null, metadata !"long long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!743 = metadata !{i32 300, i32 16, metadata !345, null}
!744 = metadata !{i32 300, i32 3, metadata !345, null}
!745 = metadata !{i32 786688, metadata !345, metadata !"empty", metadata !35, i32 301, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [empty] [line 301]
!746 = metadata !{i32 301, i32 7, metadata !345, null}
!747 = metadata !{i32 301, i32 3, metadata !345, null}
!748 = metadata !{i32 786688, metadata !345, metadata !"neg", metadata !35, i32 302, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [neg] [line 302]
!749 = metadata !{i32 302, i32 7, metadata !345, null}
!750 = metadata !{i32 303, i32 3, metadata !345, null}
!751 = metadata !{i32 303, i32 3, metadata !752, null}
!752 = metadata !{i32 786443, metadata !34, metadata !753, i32 303, i32 3, i32 3, i32 130} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!753 = metadata !{i32 786443, metadata !34, metadata !345, i32 303, i32 3, i32 1, i32 128} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!754 = metadata !{i32 303, i32 36, metadata !755, null}
!755 = metadata !{i32 786443, metadata !34, metadata !345, i32 303, i32 36, i32 2, i32 129} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!756 = metadata !{i32 304, i32 9, metadata !345, null}
!757 = metadata !{i32 305, i32 7, metadata !758, null}
!758 = metadata !{i32 786443, metadata !34, metadata !345, i32 305, i32 7, i32 0, i32 78} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!759 = metadata !{i32 305, i32 7, metadata !760, null}
!760 = metadata !{i32 786443, metadata !34, metadata !758, i32 305, i32 7, i32 1, i32 131} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!761 = metadata !{i32 305, i32 7, metadata !762, null}
!762 = metadata !{i32 786443, metadata !34, metadata !758, i32 305, i32 7, i32 2, i32 132} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!763 = metadata !{i32 307, i32 5, metadata !764, null}
!764 = metadata !{i32 786443, metadata !34, metadata !758, i32 306, i32 37, i32 0, i32 79} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!765 = metadata !{i32 308, i32 5, metadata !766, null}
!766 = metadata !{i32 786443, metadata !34, metadata !764, i32 308, i32 5, i32 0, i32 80} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!767 = metadata !{i32 308, i32 5, metadata !768, null}
!768 = metadata !{i32 786443, metadata !34, metadata !769, i32 308, i32 5, i32 2, i32 134} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!769 = metadata !{i32 786443, metadata !34, metadata !766, i32 308, i32 5, i32 1, i32 133} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!770 = metadata !{i32 309, i32 7, metadata !771, null}
!771 = metadata !{i32 786443, metadata !34, metadata !766, i32 308, i32 44, i32 0, i32 81} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!772 = metadata !{i32 309, i32 20, metadata !771, null}
!773 = metadata !{i32 310, i32 7, metadata !771, null}
!774 = metadata !{i32 311, i32 5, metadata !771, null}
!775 = metadata !{i32 308, i32 39, metadata !766, null}
!776 = metadata !{i32 312, i32 3, metadata !764, null}
!777 = metadata !{i32 314, i32 5, metadata !778, null}
!778 = metadata !{i32 786443, metadata !34, metadata !779, i32 314, i32 5, i32 0, i32 83} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!779 = metadata !{i32 786443, metadata !34, metadata !758, i32 313, i32 8, i32 0, i32 82} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!780 = metadata !{i32 314, i32 5, metadata !781, null}
!781 = metadata !{i32 786443, metadata !34, metadata !782, i32 314, i32 5, i32 2, i32 138} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!782 = metadata !{i32 786443, metadata !34, metadata !778, i32 314, i32 5, i32 1, i32 135} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!783 = metadata !{i32 786688, metadata !784, metadata !"d", metadata !35, i32 315, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [d] [line 315]
!784 = metadata !{i32 786443, metadata !34, metadata !778, i32 314, i32 43, i32 0, i32 84} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!785 = metadata !{i32 315, i32 11, metadata !784, null}
!786 = metadata !{i32 315, i32 7, metadata !784, null}
!787 = metadata !{i32 316, i32 11, metadata !788, null}
!788 = metadata !{i32 786443, metadata !34, metadata !784, i32 316, i32 11, i32 0, i32 85} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!789 = metadata !{i32 316, i32 11, metadata !790, null}
!790 = metadata !{i32 786443, metadata !34, metadata !788, i32 316, i32 11, i32 1, i32 136} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!791 = metadata !{i32 316, i32 11, metadata !792, null}
!792 = metadata !{i32 786443, metadata !34, metadata !788, i32 316, i32 11, i32 2, i32 137} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!793 = metadata !{i32 317, i32 9, metadata !788, null}
!794 = metadata !{i32 318, i32 7, metadata !784, null}
!795 = metadata !{i32 319, i32 7, metadata !784, null}
!796 = metadata !{i32 320, i32 5, metadata !784, null}
!797 = metadata !{i32 314, i32 38, metadata !778, null}
!798 = metadata !{i32 322, i32 3, metadata !345, null}
!799 = metadata !{i32 322, i32 3, metadata !800, null}
!800 = metadata !{i32 786443, metadata !34, metadata !801, i32 322, i32 3, i32 3, i32 141} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!801 = metadata !{i32 786443, metadata !34, metadata !345, i32 322, i32 3, i32 1, i32 139} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!802 = metadata !{i32 322, i32 36, metadata !803, null}
!803 = metadata !{i32 786443, metadata !34, metadata !345, i32 322, i32 36, i32 2, i32 140} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!804 = metadata !{i32 323, i32 7, metadata !805, null}
!805 = metadata !{i32 786443, metadata !34, metadata !345, i32 323, i32 7, i32 0, i32 86} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!806 = metadata !{i32 323, i32 7, metadata !807, null}
!807 = metadata !{i32 786443, metadata !34, metadata !805, i32 323, i32 7, i32 2, i32 143} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!808 = metadata !{i32 323, i32 28, metadata !809, null}
!809 = metadata !{i32 786443, metadata !34, metadata !810, i32 323, i32 28, i32 3, i32 144} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!810 = metadata !{i32 786443, metadata !34, metadata !805, i32 323, i32 28, i32 1, i32 142} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!811 = metadata !{i32 325, i32 5, metadata !812, null}
!812 = metadata !{i32 786443, metadata !34, metadata !805, i32 324, i32 8, i32 0, i32 87} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!813 = metadata !{i32 325, i32 5, metadata !814, null}
!814 = metadata !{i32 786443, metadata !34, metadata !812, i32 325, i32 5, i32 1, i32 145} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!815 = metadata !{i32 325, i32 5, metadata !816, null}
!816 = metadata !{i32 786443, metadata !34, metadata !812, i32 325, i32 5, i32 2, i32 146} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!817 = metadata !{i32 325, i32 5, metadata !818, null}
!818 = metadata !{i32 786443, metadata !34, metadata !819, i32 325, i32 5, i32 4, i32 148} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!819 = metadata !{i32 786443, metadata !34, metadata !812, i32 325, i32 5, i32 3, i32 147} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!820 = metadata !{i32 326, i32 5, metadata !812, null}
!821 = metadata !{i32 328, i32 1, metadata !345, null}
!822 = metadata !{i32 786689, metadata !338, metadata !"s", metadata !35, i32 16777490, metadata !274, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 274]
!823 = metadata !{i32 274, i32 41, metadata !338, null}
!824 = metadata !{i32 786689, metadata !338, metadata !"result", metadata !35, i32 33554706, metadata !341, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [result] [line 274]
!825 = metadata !{i32 274, i32 56, metadata !338, null}
!826 = metadata !{i32 786688, metadata !338, metadata !"endptr", metadata !35, i32 275, metadata !274, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [endptr] [line 275]
!827 = metadata !{i32 275, i32 15, metadata !338, null}
!828 = metadata !{i32 786688, metadata !338, metadata !"pmode", metadata !35, i32 276, metadata !274, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pmode] [line 276]
!829 = metadata !{i32 276, i32 15, metadata !338, null}
!830 = metadata !{i32 276, i32 23, metadata !338, null}
!831 = metadata !{i32 786688, metadata !338, metadata !"mode", metadata !35, i32 277, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mode] [line 277]
!832 = metadata !{i32 277, i32 7, metadata !338, null}
!833 = metadata !{i32 277, i32 3, metadata !338, null}
!834 = metadata !{i32 277, i32 3, metadata !835, null}
!835 = metadata !{i32 786443, metadata !34, metadata !338, i32 277, i32 3, i32 1, i32 149} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!836 = metadata !{i32 277, i32 3, metadata !837, null}
!837 = metadata !{i32 786443, metadata !34, metadata !338, i32 277, i32 3, i32 2, i32 150} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!838 = metadata !{i32 277, i32 3, metadata !839, null}
!839 = metadata !{i32 786443, metadata !34, metadata !840, i32 277, i32 3, i32 4, i32 152} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!840 = metadata !{i32 786443, metadata !34, metadata !338, i32 277, i32 3, i32 3, i32 151} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!841 = metadata !{i32 278, i32 7, metadata !842, null}
!842 = metadata !{i32 786443, metadata !34, metadata !338, i32 278, i32 7, i32 0, i32 72} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!843 = metadata !{i32 279, i32 5, metadata !842, null}
!844 = metadata !{i32 280, i32 12, metadata !338, null}
!845 = metadata !{i32 281, i32 7, metadata !846, null}
!846 = metadata !{i32 786443, metadata !34, metadata !338, i32 281, i32 7, i32 0, i32 73} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!847 = metadata !{i32 786688, metadata !848, metadata !"buff", metadata !35, i32 282, metadata !849, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buff] [line 282]
!848 = metadata !{i32 786443, metadata !34, metadata !846, i32 281, i32 23, i32 0, i32 74} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!849 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1608, i64 8, i32 0, i32 0, metadata !276, metadata !850, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 1608, align 8, offset 0] [from char]
!850 = metadata !{metadata !851}
!851 = metadata !{i32 786465, i64 0, i64 201}     ; [ DW_TAG_subrange_type ] [0, 200]
!852 = metadata !{i32 282, i32 10, metadata !848, null}
!853 = metadata !{i32 786688, metadata !848, metadata !"pdot", metadata !35, i32 283, metadata !313, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pdot] [line 283]
!854 = metadata !{i32 283, i32 11, metadata !848, null}
!855 = metadata !{i32 283, i32 18, metadata !848, null}
!856 = metadata !{i32 284, i32 9, metadata !857, null}
!857 = metadata !{i32 786443, metadata !34, metadata !848, i32 284, i32 9, i32 0, i32 75} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!858 = metadata !{i32 284, i32 9, metadata !859, null}
!859 = metadata !{i32 786443, metadata !34, metadata !857, i32 284, i32 9, i32 1, i32 153} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!860 = metadata !{i32 285, i32 7, metadata !857, null}
!861 = metadata !{i32 286, i32 5, metadata !848, null}
!862 = metadata !{i32 287, i32 22, metadata !848, null}
!863 = metadata !{i32 288, i32 14, metadata !848, null}
!864 = metadata !{i32 289, i32 9, metadata !865, null}
!865 = metadata !{i32 786443, metadata !34, metadata !848, i32 289, i32 9, i32 0, i32 76} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!866 = metadata !{i32 290, i32 7, metadata !865, null}
!867 = metadata !{i32 291, i32 3, metadata !848, null}
!868 = metadata !{i32 292, i32 3, metadata !338, null}
!869 = metadata !{i32 293, i32 1, metadata !338, null}
!870 = metadata !{i32 786689, metadata !310, metadata !"buff", metadata !35, i32 16777562, metadata !313, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [buff] [line 346]
!871 = metadata !{i32 346, i32 25, metadata !310, null}
!872 = metadata !{i32 786689, metadata !310, metadata !"x", metadata !35, i32 33554778, metadata !314, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 346]
!873 = metadata !{i32 346, i32 45, metadata !310, null}
!874 = metadata !{i32 786688, metadata !310, metadata !"n", metadata !35, i32 347, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 347]
!875 = metadata !{i32 347, i32 7, metadata !310, null}
!876 = metadata !{i32 347, i32 3, metadata !310, null}
!877 = metadata !{i32 349, i32 7, metadata !878, null}
!878 = metadata !{i32 786443, metadata !34, metadata !310, i32 349, i32 7, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!879 = metadata !{i32 350, i32 5, metadata !878, null}
!880 = metadata !{i32 786688, metadata !881, metadata !"mfb", metadata !35, i32 352, metadata !39, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mfb] [line 352]
!881 = metadata !{i32 786443, metadata !34, metadata !878, i32 351, i32 8, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!882 = metadata !{i32 352, i32 18, metadata !881, null}
!883 = metadata !{i32 352, i32 5, metadata !881, null}
!884 = metadata !{i32 353, i32 5, metadata !881, null}
!885 = metadata !{i32 354, i32 7, metadata !886, null}
!886 = metadata !{i32 786443, metadata !34, metadata !881, i32 353, i32 8, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!887 = metadata !{i32 355, i32 7, metadata !886, null}
!888 = metadata !{i32 356, i32 7, metadata !886, null}
!889 = metadata !{i32 357, i32 5, metadata !886, null}
!890 = metadata !{i32 357, i32 5, metadata !891, null}
!891 = metadata !{i32 786443, metadata !34, metadata !886, i32 357, i32 5, i32 1, i32 154} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!892 = metadata !{i32 358, i32 5, metadata !881, null}
!893 = metadata !{i32 360, i32 3, metadata !310, null}
!894 = metadata !{i32 786689, metadata !315, metadata !"L", metadata !35, i32 16777587, metadata !47, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 371]
!895 = metadata !{i32 371, i32 32, metadata !315, null}
!896 = metadata !{i32 786689, metadata !315, metadata !"obj", metadata !35, i32 33554803, metadata !71, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [obj] [line 371]
!897 = metadata !{i32 371, i32 41, metadata !315, null}
!898 = metadata !{i32 786688, metadata !315, metadata !"buff", metadata !35, i32 372, metadata !899, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buff] [line 372]
!899 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 400, i64 8, i32 0, i32 0, metadata !276, metadata !900, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 400, align 8, offset 0] [from char]
!900 = metadata !{metadata !901}
!901 = metadata !{i32 786465, i64 0, i64 50}      ; [ DW_TAG_subrange_type ] [0, 49]
!902 = metadata !{i32 372, i32 8, metadata !315, null}
!903 = metadata !{i32 786688, metadata !315, metadata !"len", metadata !35, i32 373, metadata !106, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [len] [line 373]
!904 = metadata !{i32 373, i32 10, metadata !315, null}
!905 = metadata !{i32 375, i32 7, metadata !906, null}
!906 = metadata !{i32 786443, metadata !34, metadata !315, i32 375, i32 7, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!907 = metadata !{i32 376, i32 11, metadata !906, null}
!908 = metadata !{i32 378, i32 11, metadata !909, null}
!909 = metadata !{i32 786443, metadata !34, metadata !906, i32 377, i32 8, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!910 = metadata !{i32 380, i32 14, metadata !911, null}
!911 = metadata !{i32 786443, metadata !34, metadata !909, i32 380, i32 9, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!912 = metadata !{i32 381, i32 21, metadata !913, null}
!913 = metadata !{i32 786443, metadata !34, metadata !911, i32 380, i32 52, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!914 = metadata !{i32 382, i32 7, metadata !913, null}
!915 = metadata !{i32 383, i32 5, metadata !913, null}
!916 = metadata !{i32 786688, metadata !917, metadata !"io", metadata !35, i32 386, metadata !72, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [io] [line 386]
!917 = metadata !{i32 786443, metadata !34, metadata !315, i32 386, i32 3, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!918 = metadata !{i32 386, i32 3, metadata !917, null}
!919 = metadata !{i32 786688, metadata !917, metadata !"x_", metadata !35, i32 386, metadata !122, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x_] [line 386]
!920 = metadata !{i32 387, i32 1, metadata !315, null}
!921 = metadata !{i32 786689, metadata !318, metadata !"L", metadata !35, i32 16777616, metadata !47, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 400]
!922 = metadata !{i32 400, i32 43, metadata !318, null}
!923 = metadata !{i32 786689, metadata !318, metadata !"fmt", metadata !35, i32 33554832, metadata !274, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fmt] [line 400]
!924 = metadata !{i32 400, i32 58, metadata !318, null}
!925 = metadata !{i32 786689, metadata !318, metadata !"argp", metadata !35, i32 50332048, metadata !321, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argp] [line 400]
!926 = metadata !{i32 400, i32 71, metadata !318, null}
!927 = metadata !{i32 786688, metadata !318, metadata !"n", metadata !35, i32 401, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 401]
!928 = metadata !{i32 401, i32 7, metadata !318, null}
!929 = metadata !{i32 401, i32 3, metadata !318, null}
!930 = metadata !{i32 402, i32 3, metadata !931, null}
!931 = metadata !{i32 786443, metadata !34, metadata !318, i32 402, i32 3, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!932 = metadata !{i32 786688, metadata !933, metadata !"e", metadata !35, i32 403, metadata !274, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [e] [line 403]
!933 = metadata !{i32 786443, metadata !34, metadata !931, i32 402, i32 12, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!934 = metadata !{i32 403, i32 17, metadata !933, null}
!935 = metadata !{i32 403, i32 21, metadata !933, null}
!936 = metadata !{i32 404, i32 9, metadata !937, null}
!937 = metadata !{i32 786443, metadata !34, metadata !933, i32 404, i32 9, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!938 = metadata !{i32 404, i32 20, metadata !939, null}
!939 = metadata !{i32 786443, metadata !34, metadata !937, i32 404, i32 20, i32 1, i32 155} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!940 = metadata !{i32 405, i32 5, metadata !933, null}
!941 = metadata !{i32 406, i32 5, metadata !933, null}
!942 = metadata !{i32 786688, metadata !943, metadata !"s", metadata !35, i32 408, metadata !274, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s] [line 408]
!943 = metadata !{i32 786443, metadata !34, metadata !944, i32 407, i32 17, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!944 = metadata !{i32 786443, metadata !34, metadata !933, i32 406, i32 21, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!945 = metadata !{i32 408, i32 21, metadata !943, null}
!946 = metadata !{i32 408, i32 9, metadata !943, null}
!947 = metadata !{i32 409, i32 13, metadata !948, null}
!948 = metadata !{i32 786443, metadata !34, metadata !943, i32 409, i32 13, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!949 = metadata !{i32 409, i32 24, metadata !950, null}
!950 = metadata !{i32 786443, metadata !34, metadata !948, i32 409, i32 24, i32 1, i32 156} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!951 = metadata !{i32 410, i32 9, metadata !943, null}
!952 = metadata !{i32 410, i32 23, metadata !943, null}
!953 = metadata !{i32 411, i32 9, metadata !943, null}
!954 = metadata !{i32 786688, metadata !955, metadata !"buff", metadata !35, i32 414, metadata !276, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buff] [line 414]
!955 = metadata !{i32 786443, metadata !34, metadata !944, i32 413, i32 17, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!956 = metadata !{i32 414, i32 14, metadata !955, null}
!957 = metadata !{i32 414, i32 9, metadata !955, null}
!958 = metadata !{i32 415, i32 13, metadata !959, null}
!959 = metadata !{i32 786443, metadata !34, metadata !955, i32 415, i32 13, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!960 = metadata !{i32 416, i32 11, metadata !959, null}
!961 = metadata !{i32 418, i32 11, metadata !959, null}
!962 = metadata !{i32 419, i32 9, metadata !955, null}
!963 = metadata !{i32 786688, metadata !964, metadata !"io", metadata !35, i32 422, metadata !72, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [io] [line 422]
!964 = metadata !{i32 786443, metadata !34, metadata !965, i32 422, i32 9, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!965 = metadata !{i32 786443, metadata !34, metadata !944, i32 421, i32 17, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!966 = metadata !{i32 422, i32 9, metadata !964, null}
!967 = metadata !{i32 423, i32 9, metadata !965, null}
!968 = metadata !{i32 786688, metadata !969, metadata !"io", metadata !35, i32 426, metadata !72, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [io] [line 426]
!969 = metadata !{i32 786443, metadata !34, metadata !970, i32 426, i32 9, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!970 = metadata !{i32 786443, metadata !34, metadata !944, i32 425, i32 17, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!971 = metadata !{i32 426, i32 9, metadata !969, null}
!972 = metadata !{i32 427, i32 9, metadata !970, null}
!973 = metadata !{i32 786688, metadata !974, metadata !"io", metadata !35, i32 430, metadata !72, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [io] [line 430]
!974 = metadata !{i32 786443, metadata !34, metadata !975, i32 430, i32 9, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!975 = metadata !{i32 786443, metadata !34, metadata !944, i32 429, i32 17, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!976 = metadata !{i32 430, i32 9, metadata !974, null}
!977 = metadata !{i32 432, i32 9, metadata !975, null}
!978 = metadata !{i32 433, i32 9, metadata !975, null}
!979 = metadata !{i32 434, i32 9, metadata !975, null}
!980 = metadata !{i32 786688, metadata !981, metadata !"buff", metadata !35, i32 437, metadata !982, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buff] [line 437]
!981 = metadata !{i32 786443, metadata !34, metadata !944, i32 436, i32 17, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!982 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 192, i64 8, i32 0, i32 0, metadata !276, metadata !170, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 192, align 8, offset 0] [from char]
!983 = metadata !{i32 437, i32 14, metadata !981, null}
!984 = metadata !{i32 786688, metadata !981, metadata !"l", metadata !35, i32 438, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [l] [line 438]
!985 = metadata !{i32 438, i32 13, metadata !981, null}
!986 = metadata !{i32 438, i32 17, metadata !981, null}
!987 = metadata !{i32 439, i32 9, metadata !981, null}
!988 = metadata !{i32 440, i32 9, metadata !981, null}
!989 = metadata !{i32 786688, metadata !990, metadata !"buff", metadata !35, i32 443, metadata !991, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buff] [line 443]
!990 = metadata !{i32 786443, metadata !34, metadata !944, i32 442, i32 17, i32 0, i32 50} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!991 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 64, i64 8, i32 0, i32 0, metadata !276, metadata !992, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 64, align 8, offset 0] [from char]
!992 = metadata !{metadata !993}
!993 = metadata !{i32 786465, i64 0, i64 8}       ; [ DW_TAG_subrange_type ] [0, 7]
!994 = metadata !{i32 443, i32 14, metadata !990, null}
!995 = metadata !{i32 786688, metadata !990, metadata !"l", metadata !35, i32 444, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [l] [line 444]
!996 = metadata !{i32 444, i32 13, metadata !990, null}
!997 = metadata !{i32 444, i32 17, metadata !990, null}
!998 = metadata !{i32 445, i32 9, metadata !990, null}
!999 = metadata !{i32 446, i32 9, metadata !990, null}
!1000 = metadata !{i32 449, i32 9, metadata !1001, null}
!1001 = metadata !{i32 786443, metadata !34, metadata !944, i32 448, i32 17, i32 0, i32 51} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!1002 = metadata !{i32 450, i32 9, metadata !1001, null}
!1003 = metadata !{i32 453, i32 9, metadata !1004, null}
!1004 = metadata !{i32 786443, metadata !34, metadata !944, i32 452, i32 16, i32 0, i32 52} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!1005 = metadata !{i32 457, i32 5, metadata !933, null}
!1006 = metadata !{i32 458, i32 5, metadata !933, null}
!1007 = metadata !{i32 459, i32 3, metadata !933, null}
!1008 = metadata !{i32 460, i32 3, metadata !1009, null}
!1009 = metadata !{i32 786443, metadata !34, metadata !318, i32 460, i32 3, i32 0, i32 53} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!1010 = metadata !{i32 460, i32 3, metadata !1011, null}
!1011 = metadata !{i32 786443, metadata !34, metadata !1012, i32 460, i32 3, i32 1, i32 157} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!1012 = metadata !{i32 786443, metadata !34, metadata !1009, i32 460, i32 3, i32 0, i32 54} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!1013 = metadata !{i32 461, i32 3, metadata !318, null}
!1014 = metadata !{i32 461, i32 19, metadata !318, null}
!1015 = metadata !{i32 462, i32 7, metadata !1016, null}
!1016 = metadata !{i32 786443, metadata !34, metadata !318, i32 462, i32 7, i32 0, i32 56} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!1017 = metadata !{i32 462, i32 14, metadata !1018, null}
!1018 = metadata !{i32 786443, metadata !34, metadata !1016, i32 462, i32 14, i32 1, i32 158} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!1019 = metadata !{i32 463, i32 3, metadata !318, null}
!1020 = metadata !{i32 786689, metadata !335, metadata !"L", metadata !35, i32 16777606, metadata !47, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 390]
!1021 = metadata !{i32 390, i32 33, metadata !335, null}
!1022 = metadata !{i32 786689, metadata !335, metadata !"str", metadata !35, i32 33554822, metadata !274, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [str] [line 390]
!1023 = metadata !{i32 390, i32 48, metadata !335, null}
!1024 = metadata !{i32 786689, metadata !335, metadata !"l", metadata !35, i32 50332038, metadata !106, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [l] [line 390]
!1025 = metadata !{i32 390, i32 60, metadata !335, null}
!1026 = metadata !{i32 786688, metadata !1027, metadata !"io", metadata !35, i32 391, metadata !72, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [io] [line 391]
!1027 = metadata !{i32 786443, metadata !34, metadata !335, i32 391, i32 3, i32 0, i32 71} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!1028 = metadata !{i32 391, i32 3, metadata !1027, null}
!1029 = metadata !{i32 786688, metadata !1027, metadata !"x_", metadata !35, i32 391, metadata !122, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x_] [line 391]
!1030 = metadata !{i32 392, i32 3, metadata !335, null}
!1031 = metadata !{i32 393, i32 1, metadata !335, null}
!1032 = metadata !{i32 786689, metadata !328, metadata !"L", metadata !35, i32 16777683, metadata !47, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 467]
!1033 = metadata !{i32 467, i32 42, metadata !328, null}
!1034 = metadata !{i32 786689, metadata !328, metadata !"fmt", metadata !35, i32 33554899, metadata !274, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fmt] [line 467]
!1035 = metadata !{i32 467, i32 57, metadata !328, null}
!1036 = metadata !{i32 786688, metadata !328, metadata !"msg", metadata !35, i32 468, metadata !274, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [msg] [line 468]
!1037 = metadata !{i32 468, i32 15, metadata !328, null}
!1038 = metadata !{i32 786688, metadata !328, metadata !"argp", metadata !35, i32 469, metadata !321, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [argp] [line 469]
!1039 = metadata !{i32 469, i32 11, metadata !328, null}
!1040 = metadata !{i32 470, i32 3, metadata !328, null}
!1041 = metadata !{i32 471, i32 9, metadata !328, null}
!1042 = metadata !{i32 472, i32 3, metadata !328, null}
!1043 = metadata !{i32 473, i32 3, metadata !328, null}
!1044 = metadata !{i32 786689, metadata !332, metadata !"out", metadata !35, i32 16777702, metadata !313, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [out] [line 486]
!1045 = metadata !{i32 486, i32 26, metadata !332, null}
!1046 = metadata !{i32 786689, metadata !332, metadata !"source", metadata !35, i32 33554918, metadata !274, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [source] [line 486]
!1047 = metadata !{i32 486, i32 43, metadata !332, null}
!1048 = metadata !{i32 786689, metadata !332, metadata !"bufflen", metadata !35, i32 50332134, metadata !106, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bufflen] [line 486]
!1049 = metadata !{i32 486, i32 58, metadata !332, null}
!1050 = metadata !{i32 786688, metadata !332, metadata !"l", metadata !35, i32 487, metadata !106, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [l] [line 487]
!1051 = metadata !{i32 487, i32 10, metadata !332, null}
!1052 = metadata !{i32 487, i32 14, metadata !332, null}
!1053 = metadata !{i32 488, i32 7, metadata !1054, null}
!1054 = metadata !{i32 786443, metadata !34, metadata !332, i32 488, i32 7, i32 0, i32 57} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!1055 = metadata !{i32 489, i32 9, metadata !1056, null}
!1056 = metadata !{i32 786443, metadata !34, metadata !1057, i32 489, i32 9, i32 0, i32 59} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!1057 = metadata !{i32 786443, metadata !34, metadata !1054, i32 488, i32 23, i32 0, i32 58} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!1058 = metadata !{i32 490, i32 7, metadata !1056, null}
!1059 = metadata !{i32 492, i32 7, metadata !1060, null}
!1060 = metadata !{i32 786443, metadata !34, metadata !1056, i32 491, i32 10, i32 0, i32 60} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!1061 = metadata !{i32 493, i32 7, metadata !1060, null}
!1062 = metadata !{i32 495, i32 3, metadata !1057, null}
!1063 = metadata !{i32 496, i32 12, metadata !1064, null}
!1064 = metadata !{i32 786443, metadata !34, metadata !1054, i32 496, i32 12, i32 0, i32 61} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!1065 = metadata !{i32 497, i32 9, metadata !1066, null}
!1066 = metadata !{i32 786443, metadata !34, metadata !1067, i32 497, i32 9, i32 0, i32 63} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!1067 = metadata !{i32 786443, metadata !34, metadata !1064, i32 496, i32 28, i32 0, i32 62} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!1068 = metadata !{i32 498, i32 7, metadata !1066, null}
!1069 = metadata !{i32 500, i32 7, metadata !1070, null}
!1070 = metadata !{i32 786443, metadata !34, metadata !1066, i32 499, i32 10, i32 0, i32 64} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!1071 = metadata !{i32 501, i32 7, metadata !1070, null}
!1072 = metadata !{i32 502, i32 7, metadata !1070, null}
!1073 = metadata !{i32 504, i32 3, metadata !1067, null}
!1074 = metadata !{i32 786688, metadata !1075, metadata !"nl", metadata !35, i32 506, metadata !274, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nl] [line 506]
!1075 = metadata !{i32 786443, metadata !34, metadata !1064, i32 505, i32 8, i32 0, i32 65} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!1076 = metadata !{i32 506, i32 17, metadata !1075, null}
!1077 = metadata !{i32 506, i32 22, metadata !1075, null}
!1078 = metadata !{i32 507, i32 5, metadata !1075, null}
!1079 = metadata !{i32 508, i32 5, metadata !1075, null}
!1080 = metadata !{i32 509, i32 9, metadata !1081, null}
!1081 = metadata !{i32 786443, metadata !34, metadata !1075, i32 509, i32 9, i32 0, i32 66} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!1082 = metadata !{i32 509, i32 9, metadata !1083, null}
!1083 = metadata !{i32 786443, metadata !34, metadata !1081, i32 509, i32 9, i32 1, i32 159} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!1084 = metadata !{i32 510, i32 7, metadata !1085, null}
!1085 = metadata !{i32 786443, metadata !34, metadata !1081, i32 509, i32 36, i32 0, i32 67} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!1086 = metadata !{i32 511, i32 5, metadata !1085, null}
!1087 = metadata !{i32 513, i32 11, metadata !1088, null}
!1088 = metadata !{i32 786443, metadata !34, metadata !1089, i32 513, i32 11, i32 0, i32 69} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!1089 = metadata !{i32 786443, metadata !34, metadata !1081, i32 512, i32 10, i32 0, i32 68} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!1090 = metadata !{i32 513, i32 23, metadata !1091, null}
!1091 = metadata !{i32 786443, metadata !34, metadata !1088, i32 513, i32 23, i32 1, i32 160} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!1092 = metadata !{i32 514, i32 11, metadata !1093, null}
!1093 = metadata !{i32 786443, metadata !34, metadata !1089, i32 514, i32 11, i32 0, i32 70} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!1094 = metadata !{i32 514, i32 24, metadata !1095, null}
!1095 = metadata !{i32 786443, metadata !34, metadata !1093, i32 514, i32 24, i32 1, i32 161} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!1096 = metadata !{i32 515, i32 7, metadata !1089, null}
!1097 = metadata !{i32 516, i32 7, metadata !1089, null}
!1098 = metadata !{i32 518, i32 5, metadata !1075, null}
!1099 = metadata !{i32 520, i32 1, metadata !332, null}
!1100 = metadata !{i32 786689, metadata !342, metadata !"s", metadata !35, i32 16777467, metadata !274, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 251]
!1101 = metadata !{i32 251, i32 44, metadata !342, null}
!1102 = metadata !{i32 786689, metadata !342, metadata !"result", metadata !35, i32 33554683, metadata !341, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [result] [line 251]
!1103 = metadata !{i32 251, i32 59, metadata !342, null}
!1104 = metadata !{i32 786689, metadata !342, metadata !"mode", metadata !35, i32 50331899, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mode] [line 251]
!1105 = metadata !{i32 251, i32 71, metadata !342, null}
!1106 = metadata !{i32 786688, metadata !342, metadata !"endptr", metadata !35, i32 252, metadata !313, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [endptr] [line 252]
!1107 = metadata !{i32 252, i32 9, metadata !342, null}
!1108 = metadata !{i32 253, i32 3, metadata !342, null}
!1109 = metadata !{i32 253, i32 29, metadata !1110, null}
!1110 = metadata !{i32 786443, metadata !34, metadata !342, i32 253, i32 29, i32 1, i32 162} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!1111 = metadata !{i32 254, i32 29, metadata !342, null}
!1112 = metadata !{i32 254, i32 29, metadata !1113, null}
!1113 = metadata !{i32 786443, metadata !34, metadata !342, i32 254, i32 29, i32 1, i32 163} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!1114 = metadata !{i32 255, i32 7, metadata !1115, null}
!1115 = metadata !{i32 786443, metadata !34, metadata !342, i32 255, i32 7, i32 0, i32 77} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!1116 = metadata !{i32 255, i32 20, metadata !1117, null}
!1117 = metadata !{i32 786443, metadata !34, metadata !1115, i32 255, i32 20, i32 1, i32 164} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!1118 = metadata !{i32 256, i32 3, metadata !342, null}
!1119 = metadata !{i32 256, i32 3, metadata !1120, null}
!1120 = metadata !{i32 786443, metadata !34, metadata !1121, i32 256, i32 3, i32 3, i32 167} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!1121 = metadata !{i32 786443, metadata !34, metadata !342, i32 256, i32 3, i32 1, i32 165} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!1122 = metadata !{i32 256, i32 41, metadata !1123, null}
!1123 = metadata !{i32 786443, metadata !34, metadata !342, i32 256, i32 41, i32 2, i32 166} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!1124 = metadata !{i32 257, i32 3, metadata !342, null}
!1125 = metadata !{i32 257, i32 3, metadata !1126, null}
!1126 = metadata !{i32 786443, metadata !34, metadata !342, i32 257, i32 3, i32 1, i32 168} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!1127 = metadata !{i32 257, i32 3, metadata !1128, null}
!1128 = metadata !{i32 786443, metadata !34, metadata !342, i32 257, i32 3, i32 2, i32 169} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!1129 = metadata !{i32 257, i32 3, metadata !1130, null}
!1130 = metadata !{i32 786443, metadata !34, metadata !1131, i32 257, i32 3, i32 4, i32 171} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!1131 = metadata !{i32 786443, metadata !34, metadata !342, i32 257, i32 3, i32 3, i32 170} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!1132 = metadata !{i32 258, i32 1, metadata !342, null}
!1133 = metadata !{i32 786689, metadata !349, metadata !"s", metadata !35, i32 16777385, metadata !352, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 169]
!1134 = metadata !{i32 169, i32 32, metadata !349, null}
!1135 = metadata !{i32 170, i32 7, metadata !1136, null}
!1136 = metadata !{i32 786443, metadata !34, metadata !349, i32 170, i32 7, i32 0, i32 88} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!1137 = metadata !{i32 170, i32 21, metadata !1138, null}
!1138 = metadata !{i32 786443, metadata !34, metadata !1139, i32 170, i32 21, i32 1, i32 172} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!1139 = metadata !{i32 786443, metadata !34, metadata !1136, i32 170, i32 19, i32 0, i32 89} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!1140 = metadata !{i32 170, i32 29, metadata !1139, null}
!1141 = metadata !{i32 171, i32 12, metadata !1142, null}
!1142 = metadata !{i32 786443, metadata !34, metadata !1136, i32 171, i32 12, i32 0, i32 90} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!1143 = metadata !{i32 171, i32 24, metadata !1144, null}
!1144 = metadata !{i32 786443, metadata !34, metadata !1142, i32 171, i32 24, i32 1, i32 173} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lobject.c]
!1145 = metadata !{i32 172, i32 3, metadata !349, null}
!1146 = metadata !{i32 173, i32 1, metadata !349, null}
