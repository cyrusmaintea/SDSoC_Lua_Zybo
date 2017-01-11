; ModuleID = 'C:/Users/DevolutionX/workspace/lua/src/ltm.c'
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-n32-S64"
target triple = "armv7--linux-gnueabihf"

%struct.lua_TValue = type { %union.Value, i32 }
%union.Value = type { i64 }
%struct.lua_State = type { %struct.GCObject*, i8, i8, i16, i8, %struct.lua_TValue*, %struct.global_State*, %struct.CallInfo*, i32*, %struct.lua_TValue*, %struct.lua_TValue*, %struct.UpVal*, %struct.GCObject*, %struct.lua_State*, %struct.lua_longjmp*, %struct.CallInfo, void (%struct.lua_State*, %struct.lua_Debug*)*, i32, i32, i32, i32, i16, i16, i32, i8 }
%struct.global_State = type { i8* (i8*, i8*, i32, i32)*, i8*, i32, i32, i32, i32, %struct.stringtable, %struct.lua_TValue, i32, i8, i8, i8, i8, %struct.GCObject*, %struct.GCObject**, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.lua_State*, i32, i32, i32, i32 (%struct.lua_State*)*, %struct.lua_State*, double*, %struct.TString*, [24 x %struct.TString*], [9 x %struct.Table*], [53 x [2 x %struct.TString*]] }
%struct.stringtable = type { %struct.TString**, i32, i32 }
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
%union.GCUnion = type { %union.Closure, [88 x i8] }
%union.Closure = type { %struct.CClosure }
%struct.CClosure = type { %struct.GCObject*, i8, i8, i8, %struct.GCObject*, i32 (%struct.lua_State*)*, [1 x %struct.lua_TValue] }
%struct.Udata = type { %struct.GCObject*, i8, i8, i8, %struct.Table*, i32, %union.Value }

@.str = private unnamed_addr constant [9 x i8] c"no value\00", align 1
@.str1 = private unnamed_addr constant [4 x i8] c"nil\00", align 1
@.str2 = private unnamed_addr constant [8 x i8] c"boolean\00", align 1
@udatatypename = internal constant [9 x i8] c"userdata\00", align 1
@.str3 = private unnamed_addr constant [7 x i8] c"number\00", align 1
@.str4 = private unnamed_addr constant [7 x i8] c"string\00", align 1
@.str5 = private unnamed_addr constant [6 x i8] c"table\00", align 1
@.str6 = private unnamed_addr constant [9 x i8] c"function\00", align 1
@.str7 = private unnamed_addr constant [7 x i8] c"thread\00", align 1
@.str8 = private unnamed_addr constant [6 x i8] c"proto\00", align 1
@luaT_typenames_ = hidden constant [11 x i8*] [i8* getelementptr inbounds ([9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @.str2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @udatatypename, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str3, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str4, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str6, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @udatatypename, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str7, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str8, i32 0, i32 0)], align 4
@luaT_init.luaT_eventname = internal constant [24 x i8*] [i8* getelementptr inbounds ([8 x i8]* @.str9, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @.str10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str11, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str12, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str13, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str14, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str15, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str16, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str17, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str18, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str19, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str20, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str21, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str22, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str23, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str24, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str25, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str26, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str27, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str28, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str29, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str30, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str31, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str32, i32 0, i32 0)], align 4
@.str9 = private unnamed_addr constant [8 x i8] c"__index\00", align 1
@.str10 = private unnamed_addr constant [11 x i8] c"__newindex\00", align 1
@.str11 = private unnamed_addr constant [5 x i8] c"__gc\00", align 1
@.str12 = private unnamed_addr constant [7 x i8] c"__mode\00", align 1
@.str13 = private unnamed_addr constant [6 x i8] c"__len\00", align 1
@.str14 = private unnamed_addr constant [5 x i8] c"__eq\00", align 1
@.str15 = private unnamed_addr constant [6 x i8] c"__add\00", align 1
@.str16 = private unnamed_addr constant [6 x i8] c"__sub\00", align 1
@.str17 = private unnamed_addr constant [6 x i8] c"__mul\00", align 1
@.str18 = private unnamed_addr constant [6 x i8] c"__mod\00", align 1
@.str19 = private unnamed_addr constant [6 x i8] c"__pow\00", align 1
@.str20 = private unnamed_addr constant [6 x i8] c"__div\00", align 1
@.str21 = private unnamed_addr constant [7 x i8] c"__idiv\00", align 1
@.str22 = private unnamed_addr constant [7 x i8] c"__band\00", align 1
@.str23 = private unnamed_addr constant [6 x i8] c"__bor\00", align 1
@.str24 = private unnamed_addr constant [7 x i8] c"__bxor\00", align 1
@.str25 = private unnamed_addr constant [6 x i8] c"__shl\00", align 1
@.str26 = private unnamed_addr constant [6 x i8] c"__shr\00", align 1
@.str27 = private unnamed_addr constant [6 x i8] c"__unm\00", align 1
@.str28 = private unnamed_addr constant [7 x i8] c"__bnot\00", align 1
@.str29 = private unnamed_addr constant [5 x i8] c"__lt\00", align 1
@.str30 = private unnamed_addr constant [5 x i8] c"__le\00", align 1
@.str31 = private unnamed_addr constant [9 x i8] c"__concat\00", align 1
@.str32 = private unnamed_addr constant [7 x i8] c"__call\00", align 1
@luaO_nilobject_ = external hidden constant %struct.lua_TValue
@.str33 = private unnamed_addr constant [7 x i8] c"__name\00", align 1
@.str34 = private unnamed_addr constant [29 x i8] c"perform bitwise operation on\00", align 1
@.str35 = private unnamed_addr constant [22 x i8] c"perform arithmetic on\00", align 1

; Function Attrs: nounwind
define hidden void @luaT_init(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %i = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !394), !dbg !395
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !396), !dbg !397
  store i32 0, i32* %i, align 4, !dbg !398
  br label %2, !dbg !398

; <label>:2                                       ; preds = %27, %0
  %3 = load i32* %i, align 4, !dbg !400
  %4 = icmp slt i32 %3, 24, !dbg !400
  br i1 %4, label %5, label %30, !dbg !400

; <label>:5                                       ; preds = %2
  %6 = load %struct.lua_State** %1, align 4, !dbg !403
  %7 = load i32* %i, align 4, !dbg !403
  %8 = getelementptr inbounds [24 x i8*]* @luaT_init.luaT_eventname, i32 0, i32 %7, !dbg !403
  %9 = load i8** %8, align 4, !dbg !403
  %10 = call %struct.TString* @luaS_new(%struct.lua_State* %6, i8* %9), !dbg !403
  %11 = load i32* %i, align 4, !dbg !403
  %12 = load %struct.lua_State** %1, align 4, !dbg !403
  %13 = getelementptr inbounds %struct.lua_State* %12, i32 0, i32 6, !dbg !403
  %14 = load %struct.global_State** %13, align 4, !dbg !403
  %15 = getelementptr inbounds %struct.global_State* %14, i32 0, i32 31, !dbg !403
  %16 = getelementptr inbounds [24 x %struct.TString*]* %15, i32 0, i32 %11, !dbg !403
  store %struct.TString* %10, %struct.TString** %16, align 4, !dbg !403
  %17 = load %struct.lua_State** %1, align 4, !dbg !405
  %18 = load i32* %i, align 4, !dbg !405
  %19 = load %struct.lua_State** %1, align 4, !dbg !405
  %20 = getelementptr inbounds %struct.lua_State* %19, i32 0, i32 6, !dbg !405
  %21 = load %struct.global_State** %20, align 4, !dbg !405
  %22 = getelementptr inbounds %struct.global_State* %21, i32 0, i32 31, !dbg !405
  %23 = getelementptr inbounds [24 x %struct.TString*]* %22, i32 0, i32 %18, !dbg !405
  %24 = load %struct.TString** %23, align 4, !dbg !405
  %25 = bitcast %struct.TString* %24 to %union.GCUnion*, !dbg !405
  %26 = bitcast %union.GCUnion* %25 to %struct.GCObject*, !dbg !405
  call void @luaC_fix(%struct.lua_State* %17, %struct.GCObject* %26), !dbg !405
  br label %27, !dbg !406

; <label>:27                                      ; preds = %5
  %28 = load i32* %i, align 4, !dbg !407
  %29 = add nsw i32 %28, 1, !dbg !407
  store i32 %29, i32* %i, align 4, !dbg !407
  br label %2, !dbg !407

; <label>:30                                      ; preds = %2
  ret void, !dbg !408
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

declare hidden %struct.TString* @luaS_new(%struct.lua_State*, i8*) #2

declare hidden void @luaC_fix(%struct.lua_State*, %struct.GCObject*) #2

; Function Attrs: nounwind
define hidden %struct.lua_TValue* @luaT_gettm(%struct.Table* %events, i32 %event, %struct.TString* %ename) #0 {
  %1 = alloca %struct.lua_TValue*, align 4
  %2 = alloca %struct.Table*, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TString*, align 4
  %tm = alloca %struct.lua_TValue*, align 4
  store %struct.Table* %events, %struct.Table** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.Table** %2}, metadata !409), !dbg !410
  store i32 %event, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !411), !dbg !412
  store %struct.TString* %ename, %struct.TString** %4, align 4
  call void @llvm.dbg.declare(metadata !{%struct.TString** %4}, metadata !413), !dbg !414
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %tm}, metadata !415), !dbg !416
  %5 = load %struct.Table** %2, align 4, !dbg !417
  %6 = load %struct.TString** %4, align 4, !dbg !417
  %7 = call %struct.lua_TValue* @luaH_getshortstr(%struct.Table* %5, %struct.TString* %6), !dbg !417
  store %struct.lua_TValue* %7, %struct.lua_TValue** %tm, align 4, !dbg !417
  %8 = load %struct.lua_TValue** %tm, align 4, !dbg !418
  %9 = getelementptr inbounds %struct.lua_TValue* %8, i32 0, i32 1, !dbg !418
  %10 = load i32* %9, align 4, !dbg !418
  %11 = icmp eq i32 %10, 0, !dbg !418
  br i1 %11, label %12, label %23, !dbg !418

; <label>:12                                      ; preds = %0
  %13 = load i32* %3, align 4, !dbg !420
  %14 = shl i32 1, %13, !dbg !420
  %15 = trunc i32 %14 to i8, !dbg !420
  %16 = zext i8 %15 to i32, !dbg !420
  %17 = load %struct.Table** %2, align 4, !dbg !420
  %18 = getelementptr inbounds %struct.Table* %17, i32 0, i32 3, !dbg !420
  %19 = load i8* %18, align 1, !dbg !420
  %20 = zext i8 %19 to i32, !dbg !420
  %21 = or i32 %20, %16, !dbg !420
  %22 = trunc i32 %21 to i8, !dbg !420
  store i8 %22, i8* %18, align 1, !dbg !420
  store %struct.lua_TValue* null, %struct.lua_TValue** %1, !dbg !422
  br label %25, !dbg !422

; <label>:23                                      ; preds = %0
  %24 = load %struct.lua_TValue** %tm, align 4, !dbg !423
  store %struct.lua_TValue* %24, %struct.lua_TValue** %1, !dbg !423
  br label %25, !dbg !423

; <label>:25                                      ; preds = %23, %12
  %26 = load %struct.lua_TValue** %1, !dbg !424
  ret %struct.lua_TValue* %26, !dbg !424
}

declare hidden %struct.lua_TValue* @luaH_getshortstr(%struct.Table*, %struct.TString*) #2

; Function Attrs: nounwind
define hidden %struct.lua_TValue* @luaT_gettmbyobj(%struct.lua_State* %L, %struct.lua_TValue* %o, i32 %event) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca %struct.lua_TValue*, align 4
  %3 = alloca i32, align 4
  %mt = alloca %struct.Table*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !425), !dbg !426
  store %struct.lua_TValue* %o, %struct.lua_TValue** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %2}, metadata !427), !dbg !428
  store i32 %event, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !429), !dbg !430
  call void @llvm.dbg.declare(metadata !{%struct.Table** %mt}, metadata !431), !dbg !432
  %4 = load %struct.lua_TValue** %2, align 4, !dbg !433
  %5 = getelementptr inbounds %struct.lua_TValue* %4, i32 0, i32 1, !dbg !433
  %6 = load i32* %5, align 4, !dbg !433
  %7 = and i32 %6, 15, !dbg !433
  switch i32 %7, label %26 [
    i32 5, label %8
    i32 7, label %17
  ], !dbg !433

; <label>:8                                       ; preds = %0
  %9 = load %struct.lua_TValue** %2, align 4, !dbg !434
  %10 = getelementptr inbounds %struct.lua_TValue* %9, i32 0, i32 0, !dbg !434
  %11 = bitcast %union.Value* %10 to %struct.GCObject**, !dbg !434
  %12 = load %struct.GCObject** %11, align 4, !dbg !434
  %13 = bitcast %struct.GCObject* %12 to %union.GCUnion*, !dbg !434
  %14 = bitcast %union.GCUnion* %13 to %struct.Table*, !dbg !434
  %15 = getelementptr inbounds %struct.Table* %14, i32 0, i32 9, !dbg !434
  %16 = load %struct.Table** %15, align 4, !dbg !434
  store %struct.Table* %16, %struct.Table** %mt, align 4, !dbg !434
  br label %37, !dbg !436

; <label>:17                                      ; preds = %0
  %18 = load %struct.lua_TValue** %2, align 4, !dbg !437
  %19 = getelementptr inbounds %struct.lua_TValue* %18, i32 0, i32 0, !dbg !437
  %20 = bitcast %union.Value* %19 to %struct.GCObject**, !dbg !437
  %21 = load %struct.GCObject** %20, align 4, !dbg !437
  %22 = bitcast %struct.GCObject* %21 to %union.GCUnion*, !dbg !437
  %23 = bitcast %union.GCUnion* %22 to %struct.Udata*, !dbg !437
  %24 = getelementptr inbounds %struct.Udata* %23, i32 0, i32 4, !dbg !437
  %25 = load %struct.Table** %24, align 4, !dbg !437
  store %struct.Table* %25, %struct.Table** %mt, align 4, !dbg !437
  br label %37, !dbg !438

; <label>:26                                      ; preds = %0
  %27 = load %struct.lua_TValue** %2, align 4, !dbg !439
  %28 = getelementptr inbounds %struct.lua_TValue* %27, i32 0, i32 1, !dbg !439
  %29 = load i32* %28, align 4, !dbg !439
  %30 = and i32 %29, 15, !dbg !439
  %31 = load %struct.lua_State** %1, align 4, !dbg !439
  %32 = getelementptr inbounds %struct.lua_State* %31, i32 0, i32 6, !dbg !439
  %33 = load %struct.global_State** %32, align 4, !dbg !439
  %34 = getelementptr inbounds %struct.global_State* %33, i32 0, i32 32, !dbg !439
  %35 = getelementptr inbounds [9 x %struct.Table*]* %34, i32 0, i32 %30, !dbg !439
  %36 = load %struct.Table** %35, align 4, !dbg !439
  store %struct.Table* %36, %struct.Table** %mt, align 4, !dbg !439
  br label %37, !dbg !440

; <label>:37                                      ; preds = %26, %17, %8
  %38 = load %struct.Table** %mt, align 4, !dbg !441
  %39 = icmp ne %struct.Table* %38, null, !dbg !441
  br i1 %39, label %40, label %50, !dbg !441

; <label>:40                                      ; preds = %37
  %41 = load %struct.Table** %mt, align 4, !dbg !442
  %42 = load i32* %3, align 4, !dbg !442
  %43 = load %struct.lua_State** %1, align 4, !dbg !442
  %44 = getelementptr inbounds %struct.lua_State* %43, i32 0, i32 6, !dbg !442
  %45 = load %struct.global_State** %44, align 4, !dbg !442
  %46 = getelementptr inbounds %struct.global_State* %45, i32 0, i32 31, !dbg !442
  %47 = getelementptr inbounds [24 x %struct.TString*]* %46, i32 0, i32 %42, !dbg !442
  %48 = load %struct.TString** %47, align 4, !dbg !442
  %49 = call %struct.lua_TValue* @luaH_getshortstr(%struct.Table* %41, %struct.TString* %48), !dbg !442
  br label %51, !dbg !442

; <label>:50                                      ; preds = %37
  br label %51, !dbg !444

; <label>:51                                      ; preds = %50, %40
  %52 = phi %struct.lua_TValue* [ %49, %40 ], [ @luaO_nilobject_, %50 ], !dbg !446
  ret %struct.lua_TValue* %52, !dbg !447
}

; Function Attrs: nounwind
define hidden i8* @luaT_objtypename(%struct.lua_State* %L, %struct.lua_TValue* %o) #0 {
  %1 = alloca i8*, align 4
  %2 = alloca %struct.lua_State*, align 4
  %3 = alloca %struct.lua_TValue*, align 4
  %mt = alloca %struct.Table*, align 4
  %name = alloca %struct.lua_TValue*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %2}, metadata !450), !dbg !451
  store %struct.lua_TValue* %o, %struct.lua_TValue** %3, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %3}, metadata !452), !dbg !453
  call void @llvm.dbg.declare(metadata !{%struct.Table** %mt}, metadata !454), !dbg !455
  %4 = load %struct.lua_TValue** %3, align 4, !dbg !456
  %5 = getelementptr inbounds %struct.lua_TValue* %4, i32 0, i32 1, !dbg !456
  %6 = load i32* %5, align 4, !dbg !456
  %7 = icmp eq i32 %6, 69, !dbg !456
  br i1 %7, label %8, label %18, !dbg !456

; <label>:8                                       ; preds = %0
  %9 = load %struct.lua_TValue** %3, align 4, !dbg !458
  %10 = getelementptr inbounds %struct.lua_TValue* %9, i32 0, i32 0, !dbg !458
  %11 = bitcast %union.Value* %10 to %struct.GCObject**, !dbg !458
  %12 = load %struct.GCObject** %11, align 4, !dbg !458
  %13 = bitcast %struct.GCObject* %12 to %union.GCUnion*, !dbg !458
  %14 = bitcast %union.GCUnion* %13 to %struct.Table*, !dbg !458
  %15 = getelementptr inbounds %struct.Table* %14, i32 0, i32 9, !dbg !458
  %16 = load %struct.Table** %15, align 4, !dbg !458
  store %struct.Table* %16, %struct.Table** %mt, align 4, !dbg !458
  %17 = icmp ne %struct.Table* %16, null, !dbg !458
  br i1 %17, label %33, label %18, !dbg !458

; <label>:18                                      ; preds = %8, %0
  %19 = load %struct.lua_TValue** %3, align 4, !dbg !460
  %20 = getelementptr inbounds %struct.lua_TValue* %19, i32 0, i32 1, !dbg !460
  %21 = load i32* %20, align 4, !dbg !460
  %22 = icmp eq i32 %21, 71, !dbg !460
  br i1 %22, label %23, label %53, !dbg !460

; <label>:23                                      ; preds = %18
  %24 = load %struct.lua_TValue** %3, align 4, !dbg !463
  %25 = getelementptr inbounds %struct.lua_TValue* %24, i32 0, i32 0, !dbg !463
  %26 = bitcast %union.Value* %25 to %struct.GCObject**, !dbg !463
  %27 = load %struct.GCObject** %26, align 4, !dbg !463
  %28 = bitcast %struct.GCObject* %27 to %union.GCUnion*, !dbg !463
  %29 = bitcast %union.GCUnion* %28 to %struct.Udata*, !dbg !463
  %30 = getelementptr inbounds %struct.Udata* %29, i32 0, i32 4, !dbg !463
  %31 = load %struct.Table** %30, align 4, !dbg !463
  store %struct.Table* %31, %struct.Table** %mt, align 4, !dbg !463
  %32 = icmp ne %struct.Table* %31, null, !dbg !463
  br i1 %32, label %33, label %53, !dbg !463

; <label>:33                                      ; preds = %23, %8
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %name}, metadata !465), !dbg !467
  %34 = load %struct.Table** %mt, align 4, !dbg !468
  %35 = load %struct.lua_State** %2, align 4, !dbg !469
  %36 = call %struct.TString* @luaS_new(%struct.lua_State* %35, i8* getelementptr inbounds ([7 x i8]* @.str33, i32 0, i32 0)), !dbg !469
  %37 = call %struct.lua_TValue* @luaH_getshortstr(%struct.Table* %34, %struct.TString* %36), !dbg !468
  store %struct.lua_TValue* %37, %struct.lua_TValue** %name, align 4, !dbg !468
  %38 = load %struct.lua_TValue** %name, align 4, !dbg !470
  %39 = getelementptr inbounds %struct.lua_TValue* %38, i32 0, i32 1, !dbg !470
  %40 = load i32* %39, align 4, !dbg !470
  %41 = and i32 %40, 15, !dbg !470
  %42 = icmp eq i32 %41, 4, !dbg !470
  br i1 %42, label %43, label %52, !dbg !470

; <label>:43                                      ; preds = %33
  %44 = load %struct.lua_TValue** %name, align 4, !dbg !472
  %45 = getelementptr inbounds %struct.lua_TValue* %44, i32 0, i32 0, !dbg !472
  %46 = bitcast %union.Value* %45 to %struct.GCObject**, !dbg !472
  %47 = load %struct.GCObject** %46, align 4, !dbg !472
  %48 = bitcast %struct.GCObject* %47 to %union.GCUnion*, !dbg !472
  %49 = bitcast %union.GCUnion* %48 to %struct.TString*, !dbg !472
  %50 = bitcast %struct.TString* %49 to i8*, !dbg !472
  %51 = getelementptr inbounds i8* %50, i32 16, !dbg !472
  store i8* %51, i8** %1, !dbg !472
  br label %61, !dbg !472

; <label>:52                                      ; preds = %33
  br label %53, !dbg !473

; <label>:53                                      ; preds = %52, %23, %18
  %54 = load %struct.lua_TValue** %3, align 4, !dbg !474
  %55 = getelementptr inbounds %struct.lua_TValue* %54, i32 0, i32 1, !dbg !474
  %56 = load i32* %55, align 4, !dbg !474
  %57 = and i32 %56, 15, !dbg !474
  %58 = add nsw i32 %57, 1, !dbg !474
  %59 = getelementptr inbounds [11 x i8*]* @luaT_typenames_, i32 0, i32 %58, !dbg !474
  %60 = load i8** %59, align 4, !dbg !474
  store i8* %60, i8** %1, !dbg !474
  br label %61, !dbg !474

; <label>:61                                      ; preds = %53, %43
  %62 = load i8** %1, !dbg !475
  ret i8* %62, !dbg !475
}

; Function Attrs: nounwind
define hidden void @luaT_callTM(%struct.lua_State* %L, %struct.lua_TValue* %f, %struct.lua_TValue* %p1, %struct.lua_TValue* %p2, %struct.lua_TValue* %p3, i32 %hasres) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca %struct.lua_TValue*, align 4
  %3 = alloca %struct.lua_TValue*, align 4
  %4 = alloca %struct.lua_TValue*, align 4
  %5 = alloca %struct.lua_TValue*, align 4
  %6 = alloca i32, align 4
  %result = alloca i32, align 4
  %func = alloca %struct.lua_TValue*, align 4
  %io1 = alloca %struct.lua_TValue*, align 4
  %io11 = alloca %struct.lua_TValue*, align 4
  %io12 = alloca %struct.lua_TValue*, align 4
  %io13 = alloca %struct.lua_TValue*, align 4
  %io14 = alloca %struct.lua_TValue*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !476), !dbg !477
  store %struct.lua_TValue* %f, %struct.lua_TValue** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %2}, metadata !478), !dbg !479
  store %struct.lua_TValue* %p1, %struct.lua_TValue** %3, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %3}, metadata !480), !dbg !481
  store %struct.lua_TValue* %p2, %struct.lua_TValue** %4, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %4}, metadata !482), !dbg !483
  store %struct.lua_TValue* %p3, %struct.lua_TValue** %5, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %5}, metadata !484), !dbg !485
  store i32 %hasres, i32* %6, align 4
  call void @llvm.dbg.declare(metadata !{i32* %6}, metadata !486), !dbg !487
  call void @llvm.dbg.declare(metadata !{i32* %result}, metadata !488), !dbg !489
  %7 = load %struct.lua_TValue** %5, align 4, !dbg !490
  %8 = bitcast %struct.lua_TValue* %7 to i8*, !dbg !490
  %9 = load %struct.lua_State** %1, align 4, !dbg !490
  %10 = getelementptr inbounds %struct.lua_State* %9, i32 0, i32 10, !dbg !490
  %11 = load %struct.lua_TValue** %10, align 4, !dbg !490
  %12 = bitcast %struct.lua_TValue* %11 to i8*, !dbg !490
  %13 = ptrtoint i8* %8 to i32, !dbg !490
  %14 = ptrtoint i8* %12 to i32, !dbg !490
  %15 = sub i32 %13, %14, !dbg !490
  store i32 %15, i32* %result, align 4, !dbg !490
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %func}, metadata !491), !dbg !492
  %16 = load %struct.lua_State** %1, align 4, !dbg !493
  %17 = getelementptr inbounds %struct.lua_State* %16, i32 0, i32 5, !dbg !493
  %18 = load %struct.lua_TValue** %17, align 4, !dbg !493
  store %struct.lua_TValue* %18, %struct.lua_TValue** %func, align 4, !dbg !493
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %io1}, metadata !494), !dbg !496
  %19 = load %struct.lua_TValue** %func, align 4, !dbg !496
  store %struct.lua_TValue* %19, %struct.lua_TValue** %io1, align 4, !dbg !496
  %20 = load %struct.lua_TValue** %io1, align 4, !dbg !496
  %21 = load %struct.lua_TValue** %2, align 4, !dbg !496
  %22 = bitcast %struct.lua_TValue* %20 to i8*, !dbg !496
  %23 = bitcast %struct.lua_TValue* %21 to i8*, !dbg !496
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %22, i8* %23, i32 16, i32 8, i1 false), !dbg !496
  %24 = load %struct.lua_State** %1, align 4, !dbg !496
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %io11}, metadata !497), !dbg !499
  %25 = load %struct.lua_TValue** %func, align 4, !dbg !499
  %26 = getelementptr inbounds %struct.lua_TValue* %25, i32 1, !dbg !499
  store %struct.lua_TValue* %26, %struct.lua_TValue** %io11, align 4, !dbg !499
  %27 = load %struct.lua_TValue** %io11, align 4, !dbg !499
  %28 = load %struct.lua_TValue** %3, align 4, !dbg !499
  %29 = bitcast %struct.lua_TValue* %27 to i8*, !dbg !499
  %30 = bitcast %struct.lua_TValue* %28 to i8*, !dbg !499
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %29, i8* %30, i32 16, i32 8, i1 false), !dbg !499
  %31 = load %struct.lua_State** %1, align 4, !dbg !499
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %io12}, metadata !500), !dbg !502
  %32 = load %struct.lua_TValue** %func, align 4, !dbg !502
  %33 = getelementptr inbounds %struct.lua_TValue* %32, i32 2, !dbg !502
  store %struct.lua_TValue* %33, %struct.lua_TValue** %io12, align 4, !dbg !502
  %34 = load %struct.lua_TValue** %io12, align 4, !dbg !502
  %35 = load %struct.lua_TValue** %4, align 4, !dbg !502
  %36 = bitcast %struct.lua_TValue* %34 to i8*, !dbg !502
  %37 = bitcast %struct.lua_TValue* %35 to i8*, !dbg !502
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %36, i8* %37, i32 16, i32 8, i1 false), !dbg !502
  %38 = load %struct.lua_State** %1, align 4, !dbg !502
  %39 = load %struct.lua_State** %1, align 4, !dbg !503
  %40 = getelementptr inbounds %struct.lua_State* %39, i32 0, i32 5, !dbg !503
  %41 = load %struct.lua_TValue** %40, align 4, !dbg !503
  %42 = getelementptr inbounds %struct.lua_TValue* %41, i32 3, !dbg !503
  store %struct.lua_TValue* %42, %struct.lua_TValue** %40, align 4, !dbg !503
  %43 = load i32* %6, align 4, !dbg !504
  %44 = icmp ne i32 %43, 0, !dbg !504
  br i1 %44, label %55, label %45, !dbg !504

; <label>:45                                      ; preds = %0
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %io13}, metadata !506), !dbg !508
  %46 = load %struct.lua_State** %1, align 4, !dbg !508
  %47 = getelementptr inbounds %struct.lua_State* %46, i32 0, i32 5, !dbg !508
  %48 = load %struct.lua_TValue** %47, align 4, !dbg !508
  %49 = getelementptr inbounds %struct.lua_TValue* %48, i32 1, !dbg !508
  store %struct.lua_TValue* %49, %struct.lua_TValue** %47, align 4, !dbg !508
  store %struct.lua_TValue* %48, %struct.lua_TValue** %io13, align 4, !dbg !508
  %50 = load %struct.lua_TValue** %io13, align 4, !dbg !508
  %51 = load %struct.lua_TValue** %5, align 4, !dbg !508
  %52 = bitcast %struct.lua_TValue* %50 to i8*, !dbg !508
  %53 = bitcast %struct.lua_TValue* %51 to i8*, !dbg !508
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %52, i8* %53, i32 16, i32 8, i1 false), !dbg !508
  %54 = load %struct.lua_State** %1, align 4, !dbg !508
  br label %55, !dbg !508

; <label>:55                                      ; preds = %45, %0
  %56 = load %struct.lua_State** %1, align 4, !dbg !509
  %57 = getelementptr inbounds %struct.lua_State* %56, i32 0, i32 7, !dbg !509
  %58 = load %struct.CallInfo** %57, align 4, !dbg !509
  %59 = getelementptr inbounds %struct.CallInfo* %58, i32 0, i32 7, !dbg !509
  %60 = load i8* %59, align 1, !dbg !509
  %61 = zext i8 %60 to i32, !dbg !509
  %62 = and i32 %61, 2, !dbg !509
  %63 = icmp ne i32 %62, 0, !dbg !509
  br i1 %63, label %64, label %68, !dbg !509

; <label>:64                                      ; preds = %55
  %65 = load %struct.lua_State** %1, align 4, !dbg !511
  %66 = load %struct.lua_TValue** %func, align 4, !dbg !511
  %67 = load i32* %6, align 4, !dbg !511
  call void @luaD_call(%struct.lua_State* %65, %struct.lua_TValue* %66, i32 %67), !dbg !511
  br label %72, !dbg !511

; <label>:68                                      ; preds = %55
  %69 = load %struct.lua_State** %1, align 4, !dbg !512
  %70 = load %struct.lua_TValue** %func, align 4, !dbg !512
  %71 = load i32* %6, align 4, !dbg !512
  call void @luaD_callnoyield(%struct.lua_State* %69, %struct.lua_TValue* %70, i32 %71), !dbg !512
  br label %72

; <label>:72                                      ; preds = %68, %64
  %73 = load i32* %6, align 4, !dbg !513
  %74 = icmp ne i32 %73, 0, !dbg !513
  br i1 %74, label %75, label %92, !dbg !513

; <label>:75                                      ; preds = %72
  %76 = load %struct.lua_State** %1, align 4, !dbg !515
  %77 = getelementptr inbounds %struct.lua_State* %76, i32 0, i32 10, !dbg !515
  %78 = load %struct.lua_TValue** %77, align 4, !dbg !515
  %79 = bitcast %struct.lua_TValue* %78 to i8*, !dbg !515
  %80 = load i32* %result, align 4, !dbg !515
  %81 = getelementptr inbounds i8* %79, i32 %80, !dbg !515
  %82 = bitcast i8* %81 to %struct.lua_TValue*, !dbg !515
  store %struct.lua_TValue* %82, %struct.lua_TValue** %5, align 4, !dbg !515
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %io14}, metadata !517), !dbg !519
  %83 = load %struct.lua_TValue** %5, align 4, !dbg !519
  store %struct.lua_TValue* %83, %struct.lua_TValue** %io14, align 4, !dbg !519
  %84 = load %struct.lua_TValue** %io14, align 4, !dbg !519
  %85 = load %struct.lua_State** %1, align 4, !dbg !519
  %86 = getelementptr inbounds %struct.lua_State* %85, i32 0, i32 5, !dbg !519
  %87 = load %struct.lua_TValue** %86, align 4, !dbg !519
  %88 = getelementptr inbounds %struct.lua_TValue* %87, i32 -1, !dbg !519
  store %struct.lua_TValue* %88, %struct.lua_TValue** %86, align 4, !dbg !519
  %89 = bitcast %struct.lua_TValue* %84 to i8*, !dbg !519
  %90 = bitcast %struct.lua_TValue* %88 to i8*, !dbg !519
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %89, i8* %90, i32 16, i32 8, i1 false), !dbg !519
  %91 = load %struct.lua_State** %1, align 4, !dbg !519
  br label %92, !dbg !520

; <label>:92                                      ; preds = %75, %72
  ret void, !dbg !521
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture, i8* nocapture readonly, i32, i32, i1) #3

declare hidden void @luaD_call(%struct.lua_State*, %struct.lua_TValue*, i32) #2

declare hidden void @luaD_callnoyield(%struct.lua_State*, %struct.lua_TValue*, i32) #2

; Function Attrs: nounwind
define hidden i32 @luaT_callbinTM(%struct.lua_State* %L, %struct.lua_TValue* %p1, %struct.lua_TValue* %p2, %struct.lua_TValue* %res, i32 %event) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.lua_State*, align 4
  %3 = alloca %struct.lua_TValue*, align 4
  %4 = alloca %struct.lua_TValue*, align 4
  %5 = alloca %struct.lua_TValue*, align 4
  %6 = alloca i32, align 4
  %tm = alloca %struct.lua_TValue*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %2}, metadata !522), !dbg !523
  store %struct.lua_TValue* %p1, %struct.lua_TValue** %3, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %3}, metadata !524), !dbg !525
  store %struct.lua_TValue* %p2, %struct.lua_TValue** %4, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %4}, metadata !526), !dbg !527
  store %struct.lua_TValue* %res, %struct.lua_TValue** %5, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %5}, metadata !528), !dbg !529
  store i32 %event, i32* %6, align 4
  call void @llvm.dbg.declare(metadata !{i32* %6}, metadata !530), !dbg !531
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %tm}, metadata !532), !dbg !533
  %7 = load %struct.lua_State** %2, align 4, !dbg !534
  %8 = load %struct.lua_TValue** %3, align 4, !dbg !534
  %9 = load i32* %6, align 4, !dbg !534
  %10 = call %struct.lua_TValue* @luaT_gettmbyobj(%struct.lua_State* %7, %struct.lua_TValue* %8, i32 %9), !dbg !534
  store %struct.lua_TValue* %10, %struct.lua_TValue** %tm, align 4, !dbg !534
  %11 = load %struct.lua_TValue** %tm, align 4, !dbg !535
  %12 = getelementptr inbounds %struct.lua_TValue* %11, i32 0, i32 1, !dbg !535
  %13 = load i32* %12, align 4, !dbg !535
  %14 = icmp eq i32 %13, 0, !dbg !535
  br i1 %14, label %15, label %20, !dbg !535

; <label>:15                                      ; preds = %0
  %16 = load %struct.lua_State** %2, align 4, !dbg !537
  %17 = load %struct.lua_TValue** %4, align 4, !dbg !537
  %18 = load i32* %6, align 4, !dbg !537
  %19 = call %struct.lua_TValue* @luaT_gettmbyobj(%struct.lua_State* %16, %struct.lua_TValue* %17, i32 %18), !dbg !537
  store %struct.lua_TValue* %19, %struct.lua_TValue** %tm, align 4, !dbg !537
  br label %20, !dbg !537

; <label>:20                                      ; preds = %15, %0
  %21 = load %struct.lua_TValue** %tm, align 4, !dbg !538
  %22 = getelementptr inbounds %struct.lua_TValue* %21, i32 0, i32 1, !dbg !538
  %23 = load i32* %22, align 4, !dbg !538
  %24 = icmp eq i32 %23, 0, !dbg !538
  br i1 %24, label %25, label %26, !dbg !538

; <label>:25                                      ; preds = %20
  store i32 0, i32* %1, !dbg !540
  br label %32, !dbg !540

; <label>:26                                      ; preds = %20
  %27 = load %struct.lua_State** %2, align 4, !dbg !542
  %28 = load %struct.lua_TValue** %tm, align 4, !dbg !542
  %29 = load %struct.lua_TValue** %3, align 4, !dbg !542
  %30 = load %struct.lua_TValue** %4, align 4, !dbg !542
  %31 = load %struct.lua_TValue** %5, align 4, !dbg !542
  call void @luaT_callTM(%struct.lua_State* %27, %struct.lua_TValue* %28, %struct.lua_TValue* %29, %struct.lua_TValue* %30, %struct.lua_TValue* %31, i32 1), !dbg !542
  store i32 1, i32* %1, !dbg !543
  br label %32, !dbg !543

; <label>:32                                      ; preds = %26, %25
  %33 = load i32* %1, !dbg !544
  ret i32 %33, !dbg !544
}

; Function Attrs: nounwind
define hidden void @luaT_trybinTM(%struct.lua_State* %L, %struct.lua_TValue* %p1, %struct.lua_TValue* %p2, %struct.lua_TValue* %res, i32 %event) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca %struct.lua_TValue*, align 4
  %3 = alloca %struct.lua_TValue*, align 4
  %4 = alloca %struct.lua_TValue*, align 4
  %5 = alloca i32, align 4
  %dummy = alloca double, align 8
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !545), !dbg !546
  store %struct.lua_TValue* %p1, %struct.lua_TValue** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %2}, metadata !547), !dbg !548
  store %struct.lua_TValue* %p2, %struct.lua_TValue** %3, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %3}, metadata !549), !dbg !550
  store %struct.lua_TValue* %res, %struct.lua_TValue** %4, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %4}, metadata !551), !dbg !552
  store i32 %event, i32* %5, align 4
  call void @llvm.dbg.declare(metadata !{i32* %5}, metadata !553), !dbg !554
  %6 = load %struct.lua_State** %1, align 4, !dbg !555
  %7 = load %struct.lua_TValue** %2, align 4, !dbg !555
  %8 = load %struct.lua_TValue** %3, align 4, !dbg !555
  %9 = load %struct.lua_TValue** %4, align 4, !dbg !555
  %10 = load i32* %5, align 4, !dbg !555
  %11 = call i32 @luaT_callbinTM(%struct.lua_State* %6, %struct.lua_TValue* %7, %struct.lua_TValue* %8, %struct.lua_TValue* %9, i32 %10), !dbg !555
  %12 = icmp ne i32 %11, 0, !dbg !555
  br i1 %12, label %59, label %13, !dbg !555

; <label>:13                                      ; preds = %0
  %14 = load i32* %5, align 4, !dbg !557
  switch i32 %14, label %55 [
    i32 22, label %15
    i32 13, label %19
    i32 14, label %19
    i32 15, label %19
    i32 16, label %19
    i32 17, label %19
    i32 19, label %19
  ], !dbg !557

; <label>:15                                      ; preds = %13
  %16 = load %struct.lua_State** %1, align 4, !dbg !559
  %17 = load %struct.lua_TValue** %2, align 4, !dbg !559
  %18 = load %struct.lua_TValue** %3, align 4, !dbg !559
  call void @luaG_concaterror(%struct.lua_State* %16, %struct.lua_TValue* %17, %struct.lua_TValue* %18) #5, !dbg !559
  unreachable, !dbg !559

; <label>:19                                      ; preds = %13, %13, %13, %13, %13, %13
  call void @llvm.dbg.declare(metadata !{double* %dummy}, metadata !561), !dbg !563
  %20 = load %struct.lua_TValue** %2, align 4, !dbg !564
  %21 = getelementptr inbounds %struct.lua_TValue* %20, i32 0, i32 1, !dbg !564
  %22 = load i32* %21, align 4, !dbg !564
  %23 = icmp eq i32 %22, 3, !dbg !564
  br i1 %23, label %24, label %29, !dbg !564

; <label>:24                                      ; preds = %19
  %25 = load %struct.lua_TValue** %2, align 4, !dbg !566
  %26 = getelementptr inbounds %struct.lua_TValue* %25, i32 0, i32 0, !dbg !566
  %27 = bitcast %union.Value* %26 to double*, !dbg !566
  %28 = load double* %27, align 8, !dbg !566
  store double %28, double* %dummy, align 8, !dbg !566
  br i1 true, label %33, label %51, !dbg !566

; <label>:29                                      ; preds = %19
  %30 = load %struct.lua_TValue** %2, align 4, !dbg !568
  %31 = call i32 @luaV_tonumber_(%struct.lua_TValue* %30, double* %dummy), !dbg !568
  %32 = icmp ne i32 %31, 0, !dbg !568
  br i1 %32, label %33, label %51, !dbg !568

; <label>:33                                      ; preds = %29, %24
  %34 = load %struct.lua_TValue** %3, align 4, !dbg !570
  %35 = getelementptr inbounds %struct.lua_TValue* %34, i32 0, i32 1, !dbg !570
  %36 = load i32* %35, align 4, !dbg !570
  %37 = icmp eq i32 %36, 3, !dbg !570
  br i1 %37, label %38, label %43, !dbg !570

; <label>:38                                      ; preds = %33
  %39 = load %struct.lua_TValue** %3, align 4, !dbg !573
  %40 = getelementptr inbounds %struct.lua_TValue* %39, i32 0, i32 0, !dbg !573
  %41 = bitcast %union.Value* %40 to double*, !dbg !573
  %42 = load double* %41, align 8, !dbg !573
  store double %42, double* %dummy, align 8, !dbg !573
  br i1 true, label %47, label %51, !dbg !573

; <label>:43                                      ; preds = %33
  %44 = load %struct.lua_TValue** %3, align 4, !dbg !575
  %45 = call i32 @luaV_tonumber_(%struct.lua_TValue* %44, double* %dummy), !dbg !575
  %46 = icmp ne i32 %45, 0, !dbg !575
  br i1 %46, label %47, label %51, !dbg !575

; <label>:47                                      ; preds = %43, %38
  %48 = load %struct.lua_State** %1, align 4, !dbg !577
  %49 = load %struct.lua_TValue** %2, align 4, !dbg !577
  %50 = load %struct.lua_TValue** %3, align 4, !dbg !577
  call void @luaG_tointerror(%struct.lua_State* %48, %struct.lua_TValue* %49, %struct.lua_TValue* %50) #5, !dbg !577
  unreachable, !dbg !577

; <label>:51                                      ; preds = %43, %38, %29, %24
  %52 = load %struct.lua_State** %1, align 4, !dbg !578
  %53 = load %struct.lua_TValue** %2, align 4, !dbg !578
  %54 = load %struct.lua_TValue** %3, align 4, !dbg !578
  call void @luaG_opinterror(%struct.lua_State* %52, %struct.lua_TValue* %53, %struct.lua_TValue* %54, i8* getelementptr inbounds ([29 x i8]* @.str34, i32 0, i32 0)) #5, !dbg !578
  unreachable, !dbg !578

; <label>:55                                      ; preds = %13
  %56 = load %struct.lua_State** %1, align 4, !dbg !579
  %57 = load %struct.lua_TValue** %2, align 4, !dbg !579
  %58 = load %struct.lua_TValue** %3, align 4, !dbg !579
  call void @luaG_opinterror(%struct.lua_State* %56, %struct.lua_TValue* %57, %struct.lua_TValue* %58, i8* getelementptr inbounds ([22 x i8]* @.str35, i32 0, i32 0)) #5, !dbg !579
  unreachable, !dbg !579

; <label>:59                                      ; preds = %0
  ret void, !dbg !580
}

; Function Attrs: noreturn
declare hidden void @luaG_concaterror(%struct.lua_State*, %struct.lua_TValue*, %struct.lua_TValue*) #4

declare hidden i32 @luaV_tonumber_(%struct.lua_TValue*, double*) #2

; Function Attrs: noreturn
declare hidden void @luaG_tointerror(%struct.lua_State*, %struct.lua_TValue*, %struct.lua_TValue*) #4

; Function Attrs: noreturn
declare hidden void @luaG_opinterror(%struct.lua_State*, %struct.lua_TValue*, %struct.lua_TValue*, i8*) #4

; Function Attrs: nounwind
define hidden i32 @luaT_callorderTM(%struct.lua_State* %L, %struct.lua_TValue* %p1, %struct.lua_TValue* %p2, i32 %event) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.lua_State*, align 4
  %3 = alloca %struct.lua_TValue*, align 4
  %4 = alloca %struct.lua_TValue*, align 4
  %5 = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %2}, metadata !581), !dbg !582
  store %struct.lua_TValue* %p1, %struct.lua_TValue** %3, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %3}, metadata !583), !dbg !584
  store %struct.lua_TValue* %p2, %struct.lua_TValue** %4, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %4}, metadata !585), !dbg !586
  store i32 %event, i32* %5, align 4
  call void @llvm.dbg.declare(metadata !{i32* %5}, metadata !587), !dbg !588
  %6 = load %struct.lua_State** %2, align 4, !dbg !589
  %7 = load %struct.lua_TValue** %3, align 4, !dbg !589
  %8 = load %struct.lua_TValue** %4, align 4, !dbg !589
  %9 = load %struct.lua_State** %2, align 4, !dbg !589
  %10 = getelementptr inbounds %struct.lua_State* %9, i32 0, i32 5, !dbg !589
  %11 = load %struct.lua_TValue** %10, align 4, !dbg !589
  %12 = load i32* %5, align 4, !dbg !589
  %13 = call i32 @luaT_callbinTM(%struct.lua_State* %6, %struct.lua_TValue* %7, %struct.lua_TValue* %8, %struct.lua_TValue* %11, i32 %12), !dbg !589
  %14 = icmp ne i32 %13, 0, !dbg !589
  br i1 %14, label %16, label %15, !dbg !589

; <label>:15                                      ; preds = %0
  store i32 -1, i32* %1, !dbg !591
  br label %44, !dbg !591

; <label>:16                                      ; preds = %0
  %17 = load %struct.lua_State** %2, align 4, !dbg !592
  %18 = getelementptr inbounds %struct.lua_State* %17, i32 0, i32 5, !dbg !592
  %19 = load %struct.lua_TValue** %18, align 4, !dbg !592
  %20 = getelementptr inbounds %struct.lua_TValue* %19, i32 0, i32 1, !dbg !592
  %21 = load i32* %20, align 4, !dbg !592
  %22 = icmp eq i32 %21, 0, !dbg !592
  br i1 %22, label %40, label %23, !dbg !592

; <label>:23                                      ; preds = %16
  %24 = load %struct.lua_State** %2, align 4, !dbg !593
  %25 = getelementptr inbounds %struct.lua_State* %24, i32 0, i32 5, !dbg !593
  %26 = load %struct.lua_TValue** %25, align 4, !dbg !593
  %27 = getelementptr inbounds %struct.lua_TValue* %26, i32 0, i32 1, !dbg !593
  %28 = load i32* %27, align 4, !dbg !593
  %29 = icmp eq i32 %28, 1, !dbg !593
  br i1 %29, label %30, label %38, !dbg !593

; <label>:30                                      ; preds = %23
  %31 = load %struct.lua_State** %2, align 4, !dbg !595
  %32 = getelementptr inbounds %struct.lua_State* %31, i32 0, i32 5, !dbg !595
  %33 = load %struct.lua_TValue** %32, align 4, !dbg !595
  %34 = getelementptr inbounds %struct.lua_TValue* %33, i32 0, i32 0, !dbg !595
  %35 = bitcast %union.Value* %34 to i32*, !dbg !595
  %36 = load i32* %35, align 4, !dbg !595
  %37 = icmp eq i32 %36, 0, !dbg !595
  br label %38

; <label>:38                                      ; preds = %30, %23
  %39 = phi i1 [ false, %23 ], [ %37, %30 ]
  br label %40, !dbg !597

; <label>:40                                      ; preds = %38, %16
  %41 = phi i1 [ true, %16 ], [ %39, %38 ]
  %42 = xor i1 %41, true, !dbg !599
  %43 = zext i1 %42 to i32, !dbg !599
  store i32 %43, i32* %1, !dbg !599
  br label %44, !dbg !599

; <label>:44                                      ; preds = %40, %15
  %45 = load i32* %1, !dbg !602
  ret i32 %45, !dbg !602
}

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { noreturn "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn }

!llvm.dbg.cu = !{!0}
!xidane.fname = !{!333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366}
!xidane.function_declaration_type = !{!333, !367, !335, !368, !337, !369, !339, !370, !341, !371, !343, !372, !345, !373, !347, !374, !349, !375, !351, !375, !353, !376, !355, !377, !357, !378, !359, !379, !361, !378, !363, !380, !365, !381}
!xidane.function_declaration_filename = !{!333, !382, !335, !383, !337, !384, !339, !382, !341, !385, !343, !382, !345, !382, !347, !382, !349, !386, !351, !386, !353, !382, !355, !382, !357, !387, !359, !388, !361, !387, !363, !387, !365, !382}
!xidane.ExternC = !{!333, !335, !337, !339, !341, !343, !345, !347, !349, !351, !353, !355, !357, !359, !361, !363, !365}
!llvm.module.flags = !{!389, !390, !391, !392}
!llvm.ident = !{!393}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.0 (tags/RELEASE_350/final)", i1 false, metadata !"", i32 0, metadata !2, metadata !31, metadata !32, metadata !323, metadata !31, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src\ltm.c] [DW_LANG_C99]
!1 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src\5Cltm.c", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
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
!32 = metadata !{metadata !33, metadata !297, metadata !305, metadata !308, metadata !311, metadata !314, metadata !317, metadata !320}
!33 = metadata !{i32 786478, metadata !34, metadata !35, metadata !"luaT_init", metadata !"luaT_init", metadata !"", i32 37, metadata !36, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.lua_State*)* @luaT_init, null, null, metadata !31, i32 37} ; [ DW_TAG_subprogram ] [line 37] [def] [luaT_init]
!34 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/ltm.c", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!35 = metadata !{i32 786473, metadata !34}        ; [ DW_TAG_file_type ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltm.c]
!36 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !37, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!37 = metadata !{null, metadata !38}
!38 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !39} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from lua_State]
!39 = metadata !{i32 786454, metadata !40, null, metadata !"lua_State", i32 56, i64 0, i64 0, i64 0, i32 0, metadata !41} ; [ DW_TAG_typedef ] [lua_State] [line 56, size 0, align 0, offset 0] [from lua_State]
!40 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lua.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!41 = metadata !{i32 786451, metadata !42, null, metadata !"lua_State", i32 159, i64 960, i64 32, i32 0, i32 0, null, metadata !43, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [lua_State] [line 159, size 960, align 32, offset 0] [def] [from ]
!42 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lstate.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!43 = metadata !{metadata !44, metadata !56, metadata !57, metadata !58, metadata !60, metadata !61, metadata !88, metadata !204, metadata !242, metadata !243, metadata !244, metadata !245, metadata !249, metadata !250, metadata !251, metadata !254, metadata !255, metadata !285, metadata !286, metadata !287, metadata !288, metadata !289, metadata !290, metadata !291, metadata !296}
!44 = metadata !{i32 786445, metadata !42, metadata !41, metadata !"next", i32 160, i64 32, i64 32, i64 0, i32 0, metadata !45} ; [ DW_TAG_member ] [next] [line 160, size 32, align 32, offset 0] [from ]
!45 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !46} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from GCObject]
!46 = metadata !{i32 786454, metadata !47, null, metadata !"GCObject", i32 72, i64 0, i64 0, i64 0, i32 0, metadata !48} ; [ DW_TAG_typedef ] [GCObject] [line 72, size 0, align 0, offset 0] [from GCObject]
!47 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lobject.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!48 = metadata !{i32 786451, metadata !47, null, metadata !"GCObject", i32 85, i64 64, i64 32, i32 0, i32 0, null, metadata !49, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [GCObject] [line 85, size 64, align 32, offset 0] [def] [from ]
!49 = metadata !{metadata !50, metadata !51, metadata !55}
!50 = metadata !{i32 786445, metadata !47, metadata !48, metadata !"next", i32 86, i64 32, i64 32, i64 0, i32 0, metadata !45} ; [ DW_TAG_member ] [next] [line 86, size 32, align 32, offset 0] [from ]
!51 = metadata !{i32 786445, metadata !47, metadata !48, metadata !"tt", i32 86, i64 8, i64 8, i64 32, i32 0, metadata !52} ; [ DW_TAG_member ] [tt] [line 86, size 8, align 8, offset 32] [from lu_byte]
!52 = metadata !{i32 786454, metadata !53, null, metadata !"lu_byte", i32 35, i64 0, i64 0, i64 0, i32 0, metadata !54} ; [ DW_TAG_typedef ] [lu_byte] [line 35, size 0, align 0, offset 0] [from unsigned char]
!53 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/llimits.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!54 = metadata !{i32 786468, null, null, metadata !"unsigned char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [unsigned char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!55 = metadata !{i32 786445, metadata !47, metadata !48, metadata !"marked", i32 86, i64 8, i64 8, i64 40, i32 0, metadata !52} ; [ DW_TAG_member ] [marked] [line 86, size 8, align 8, offset 40] [from lu_byte]
!56 = metadata !{i32 786445, metadata !42, metadata !41, metadata !"tt", i32 160, i64 8, i64 8, i64 32, i32 0, metadata !52} ; [ DW_TAG_member ] [tt] [line 160, size 8, align 8, offset 32] [from lu_byte]
!57 = metadata !{i32 786445, metadata !42, metadata !41, metadata !"marked", i32 160, i64 8, i64 8, i64 40, i32 0, metadata !52} ; [ DW_TAG_member ] [marked] [line 160, size 8, align 8, offset 40] [from lu_byte]
!58 = metadata !{i32 786445, metadata !42, metadata !41, metadata !"nci", i32 161, i64 16, i64 16, i64 48, i32 0, metadata !59} ; [ DW_TAG_member ] [nci] [line 161, size 16, align 16, offset 48] [from unsigned short]
!59 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!60 = metadata !{i32 786445, metadata !42, metadata !41, metadata !"status", i32 162, i64 8, i64 8, i64 64, i32 0, metadata !52} ; [ DW_TAG_member ] [status] [line 162, size 8, align 8, offset 64] [from lu_byte]
!61 = metadata !{i32 786445, metadata !42, metadata !41, metadata !"top", i32 163, i64 32, i64 32, i64 96, i32 0, metadata !62} ; [ DW_TAG_member ] [top] [line 163, size 32, align 32, offset 96] [from StkId]
!62 = metadata !{i32 786454, metadata !47, null, metadata !"StkId", i32 294, i64 0, i64 0, i64 0, i32 0, metadata !63} ; [ DW_TAG_typedef ] [StkId] [line 294, size 0, align 0, offset 0] [from ]
!63 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !64} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from TValue]
!64 = metadata !{i32 786454, metadata !47, null, metadata !"TValue", i32 115, i64 0, i64 0, i64 0, i32 0, metadata !65} ; [ DW_TAG_typedef ] [TValue] [line 115, size 0, align 0, offset 0] [from lua_TValue]
!65 = metadata !{i32 786451, metadata !47, null, metadata !"lua_TValue", i32 113, i64 128, i64 64, i32 0, i32 0, null, metadata !66, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [lua_TValue] [line 113, size 128, align 64, offset 0] [def] [from ]
!66 = metadata !{metadata !67, metadata !87}
!67 = metadata !{i32 786445, metadata !47, metadata !65, metadata !"value_", i32 114, i64 64, i64 64, i64 0, i32 0, metadata !68} ; [ DW_TAG_member ] [value_] [line 114, size 64, align 64, offset 0] [from Value]
!68 = metadata !{i32 786454, metadata !47, null, metadata !"Value", i32 107, i64 0, i64 0, i64 0, i32 0, metadata !69} ; [ DW_TAG_typedef ] [Value] [line 107, size 0, align 0, offset 0] [from Value]
!69 = metadata !{i32 786455, metadata !47, null, metadata !"Value", i32 100, i64 64, i64 64, i64 0, i32 0, null, metadata !70, i32 0, null, null, null} ; [ DW_TAG_union_type ] [Value] [line 100, size 64, align 64, offset 0] [def] [from ]
!70 = metadata !{metadata !71, metadata !72, metadata !74, metadata !76, metadata !81, metadata !84}
!71 = metadata !{i32 786445, metadata !47, metadata !69, metadata !"gc", i32 101, i64 32, i64 32, i64 0, i32 0, metadata !45} ; [ DW_TAG_member ] [gc] [line 101, size 32, align 32, offset 0] [from ]
!72 = metadata !{i32 786445, metadata !47, metadata !69, metadata !"p", i32 102, i64 32, i64 32, i64 0, i32 0, metadata !73} ; [ DW_TAG_member ] [p] [line 102, size 32, align 32, offset 0] [from ]
!73 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!74 = metadata !{i32 786445, metadata !47, metadata !69, metadata !"b", i32 103, i64 32, i64 32, i64 0, i32 0, metadata !75} ; [ DW_TAG_member ] [b] [line 103, size 32, align 32, offset 0] [from int]
!75 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!76 = metadata !{i32 786445, metadata !47, metadata !69, metadata !"f", i32 104, i64 32, i64 32, i64 0, i32 0, metadata !77} ; [ DW_TAG_member ] [f] [line 104, size 32, align 32, offset 0] [from lua_CFunction]
!77 = metadata !{i32 786454, metadata !40, null, metadata !"lua_CFunction", i32 105, i64 0, i64 0, i64 0, i32 0, metadata !78} ; [ DW_TAG_typedef ] [lua_CFunction] [line 105, size 0, align 0, offset 0] [from ]
!78 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !79} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!79 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !80, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!80 = metadata !{metadata !75, metadata !38}
!81 = metadata !{i32 786445, metadata !47, metadata !69, metadata !"i", i32 105, i64 64, i64 64, i64 0, i32 0, metadata !82} ; [ DW_TAG_member ] [i] [line 105, size 64, align 64, offset 0] [from lua_Integer]
!82 = metadata !{i32 786454, metadata !40, null, metadata !"lua_Integer", i32 93, i64 0, i64 0, i64 0, i32 0, metadata !83} ; [ DW_TAG_typedef ] [lua_Integer] [line 93, size 0, align 0, offset 0] [from long long int]
!83 = metadata !{i32 786468, null, null, metadata !"long long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!84 = metadata !{i32 786445, metadata !47, metadata !69, metadata !"n", i32 106, i64 64, i64 64, i64 0, i32 0, metadata !85} ; [ DW_TAG_member ] [n] [line 106, size 64, align 64, offset 0] [from lua_Number]
!85 = metadata !{i32 786454, metadata !40, null, metadata !"lua_Number", i32 89, i64 0, i64 0, i64 0, i32 0, metadata !86} ; [ DW_TAG_typedef ] [lua_Number] [line 89, size 0, align 0, offset 0] [from double]
!86 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!87 = metadata !{i32 786445, metadata !47, metadata !65, metadata !"tt_", i32 114, i64 32, i64 32, i64 64, i32 0, metadata !75} ; [ DW_TAG_member ] [tt_] [line 114, size 32, align 32, offset 64] [from int]
!88 = metadata !{i32 786445, metadata !42, metadata !41, metadata !"l_G", i32 164, i64 32, i64 32, i64 128, i32 0, metadata !89} ; [ DW_TAG_member ] [l_G] [line 164, size 32, align 32, offset 128] [from ]
!89 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !90} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from global_State]
!90 = metadata !{i32 786454, metadata !42, null, metadata !"global_State", i32 153, i64 0, i64 0, i64 0, i32 0, metadata !91} ; [ DW_TAG_typedef ] [global_State] [line 153, size 0, align 0, offset 0] [from global_State]
!91 = metadata !{i32 786451, metadata !42, null, metadata !"global_State", i32 118, i64 5568, i64 64, i32 0, i32 0, null, metadata !92, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [global_State] [line 118, size 5568, align 64, offset 0] [def] [from ]
!92 = metadata !{metadata !93, metadata !101, metadata !102, metadata !105, metadata !106, metadata !108, metadata !109, metadata !133, metadata !134, metadata !135, metadata !136, metadata !137, metadata !138, metadata !139, metadata !140, metadata !142, metadata !143, metadata !144, metadata !145, metadata !146, metadata !147, metadata !148, metadata !149, metadata !150, metadata !152, metadata !153, metadata !154, metadata !155, metadata !156, metadata !157, metadata !160, metadata !161, metadata !165, metadata !199}
!93 = metadata !{i32 786445, metadata !42, metadata !91, metadata !"frealloc", i32 119, i64 32, i64 32, i64 0, i32 0, metadata !94} ; [ DW_TAG_member ] [frealloc] [line 119, size 32, align 32, offset 0] [from lua_Alloc]
!94 = metadata !{i32 786454, metadata !40, null, metadata !"lua_Alloc", i32 124, i64 0, i64 0, i64 0, i32 0, metadata !95} ; [ DW_TAG_typedef ] [lua_Alloc] [line 124, size 0, align 0, offset 0] [from ]
!95 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !96} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!96 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !97, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!97 = metadata !{metadata !73, metadata !73, metadata !73, metadata !98, metadata !98}
!98 = metadata !{i32 786454, metadata !99, null, metadata !"size_t", i32 216, i64 0, i64 0, i64 0, i32 0, metadata !100} ; [ DW_TAG_typedef ] [size_t] [line 216, size 0, align 0, offset 0] [from unsigned int]
!99 = metadata !{metadata !"D:/Xilinx/SDx/2016.3/SDK/gnu/aarch32/nt/gcc-arm-linux-gnueabi/lib/gcc/arm-linux-gnueabihf/5.2.1/include\5Cstddef.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!100 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!101 = metadata !{i32 786445, metadata !42, metadata !91, metadata !"ud", i32 120, i64 32, i64 32, i64 32, i32 0, metadata !73} ; [ DW_TAG_member ] [ud] [line 120, size 32, align 32, offset 32] [from ]
!102 = metadata !{i32 786445, metadata !42, metadata !91, metadata !"totalbytes", i32 121, i64 32, i64 32, i64 64, i32 0, metadata !103} ; [ DW_TAG_member ] [totalbytes] [line 121, size 32, align 32, offset 64] [from l_mem]
!103 = metadata !{i32 786454, metadata !53, null, metadata !"l_mem", i32 27, i64 0, i64 0, i64 0, i32 0, metadata !104} ; [ DW_TAG_typedef ] [l_mem] [line 27, size 0, align 0, offset 0] [from ptrdiff_t]
!104 = metadata !{i32 786454, metadata !99, null, metadata !"ptrdiff_t", i32 149, i64 0, i64 0, i64 0, i32 0, metadata !75} ; [ DW_TAG_typedef ] [ptrdiff_t] [line 149, size 0, align 0, offset 0] [from int]
!105 = metadata !{i32 786445, metadata !42, metadata !91, metadata !"GCdebt", i32 122, i64 32, i64 32, i64 96, i32 0, metadata !103} ; [ DW_TAG_member ] [GCdebt] [line 122, size 32, align 32, offset 96] [from l_mem]
!106 = metadata !{i32 786445, metadata !42, metadata !91, metadata !"GCmemtrav", i32 123, i64 32, i64 32, i64 128, i32 0, metadata !107} ; [ DW_TAG_member ] [GCmemtrav] [line 123, size 32, align 32, offset 128] [from lu_mem]
!107 = metadata !{i32 786454, metadata !53, null, metadata !"lu_mem", i32 26, i64 0, i64 0, i64 0, i32 0, metadata !98} ; [ DW_TAG_typedef ] [lu_mem] [line 26, size 0, align 0, offset 0] [from size_t]
!108 = metadata !{i32 786445, metadata !42, metadata !91, metadata !"GCestimate", i32 124, i64 32, i64 32, i64 160, i32 0, metadata !107} ; [ DW_TAG_member ] [GCestimate] [line 124, size 32, align 32, offset 160] [from lu_mem]
!109 = metadata !{i32 786445, metadata !42, metadata !91, metadata !"strt", i32 125, i64 96, i64 32, i64 192, i32 0, metadata !110} ; [ DW_TAG_member ] [strt] [line 125, size 96, align 32, offset 192] [from stringtable]
!110 = metadata !{i32 786454, metadata !42, null, metadata !"stringtable", i32 62, i64 0, i64 0, i64 0, i32 0, metadata !111} ; [ DW_TAG_typedef ] [stringtable] [line 62, size 0, align 0, offset 0] [from stringtable]
!111 = metadata !{i32 786451, metadata !42, null, metadata !"stringtable", i32 58, i64 96, i64 32, i32 0, i32 0, null, metadata !112, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [stringtable] [line 58, size 96, align 32, offset 0] [def] [from ]
!112 = metadata !{metadata !113, metadata !131, metadata !132}
!113 = metadata !{i32 786445, metadata !42, metadata !111, metadata !"hash", i32 59, i64 32, i64 32, i64 0, i32 0, metadata !114} ; [ DW_TAG_member ] [hash] [line 59, size 32, align 32, offset 0] [from ]
!114 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !115} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!115 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !116} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from TString]
!116 = metadata !{i32 786454, metadata !47, null, metadata !"TString", i32 312, i64 0, i64 0, i64 0, i32 0, metadata !117} ; [ DW_TAG_typedef ] [TString] [line 312, size 0, align 0, offset 0] [from TString]
!117 = metadata !{i32 786451, metadata !47, null, metadata !"TString", i32 303, i64 128, i64 32, i32 0, i32 0, null, metadata !118, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [TString] [line 303, size 128, align 32, offset 0] [def] [from ]
!118 = metadata !{metadata !119, metadata !120, metadata !121, metadata !122, metadata !123, metadata !124, metadata !125}
!119 = metadata !{i32 786445, metadata !47, metadata !117, metadata !"next", i32 304, i64 32, i64 32, i64 0, i32 0, metadata !45} ; [ DW_TAG_member ] [next] [line 304, size 32, align 32, offset 0] [from ]
!120 = metadata !{i32 786445, metadata !47, metadata !117, metadata !"tt", i32 304, i64 8, i64 8, i64 32, i32 0, metadata !52} ; [ DW_TAG_member ] [tt] [line 304, size 8, align 8, offset 32] [from lu_byte]
!121 = metadata !{i32 786445, metadata !47, metadata !117, metadata !"marked", i32 304, i64 8, i64 8, i64 40, i32 0, metadata !52} ; [ DW_TAG_member ] [marked] [line 304, size 8, align 8, offset 40] [from lu_byte]
!122 = metadata !{i32 786445, metadata !47, metadata !117, metadata !"extra", i32 305, i64 8, i64 8, i64 48, i32 0, metadata !52} ; [ DW_TAG_member ] [extra] [line 305, size 8, align 8, offset 48] [from lu_byte]
!123 = metadata !{i32 786445, metadata !47, metadata !117, metadata !"shrlen", i32 306, i64 8, i64 8, i64 56, i32 0, metadata !52} ; [ DW_TAG_member ] [shrlen] [line 306, size 8, align 8, offset 56] [from lu_byte]
!124 = metadata !{i32 786445, metadata !47, metadata !117, metadata !"hash", i32 307, i64 32, i64 32, i64 64, i32 0, metadata !100} ; [ DW_TAG_member ] [hash] [line 307, size 32, align 32, offset 64] [from unsigned int]
!125 = metadata !{i32 786445, metadata !47, metadata !117, metadata !"u", i32 311, i64 32, i64 32, i64 96, i32 0, metadata !126} ; [ DW_TAG_member ] [u] [line 311, size 32, align 32, offset 96] [from ]
!126 = metadata !{i32 786455, metadata !47, metadata !117, metadata !"", i32 308, i64 32, i64 32, i64 0, i32 0, null, metadata !127, i32 0, null, null, null} ; [ DW_TAG_union_type ] [line 308, size 32, align 32, offset 0] [def] [from ]
!127 = metadata !{metadata !128, metadata !129}
!128 = metadata !{i32 786445, metadata !47, metadata !126, metadata !"lnglen", i32 309, i64 32, i64 32, i64 0, i32 0, metadata !98} ; [ DW_TAG_member ] [lnglen] [line 309, size 32, align 32, offset 0] [from size_t]
!129 = metadata !{i32 786445, metadata !47, metadata !126, metadata !"hnext", i32 310, i64 32, i64 32, i64 0, i32 0, metadata !130} ; [ DW_TAG_member ] [hnext] [line 310, size 32, align 32, offset 0] [from ]
!130 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !117} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from TString]
!131 = metadata !{i32 786445, metadata !42, metadata !111, metadata !"nuse", i32 60, i64 32, i64 32, i64 32, i32 0, metadata !75} ; [ DW_TAG_member ] [nuse] [line 60, size 32, align 32, offset 32] [from int]
!132 = metadata !{i32 786445, metadata !42, metadata !111, metadata !"size", i32 61, i64 32, i64 32, i64 64, i32 0, metadata !75} ; [ DW_TAG_member ] [size] [line 61, size 32, align 32, offset 64] [from int]
!133 = metadata !{i32 786445, metadata !42, metadata !91, metadata !"l_registry", i32 126, i64 128, i64 64, i64 320, i32 0, metadata !64} ; [ DW_TAG_member ] [l_registry] [line 126, size 128, align 64, offset 320] [from TValue]
!134 = metadata !{i32 786445, metadata !42, metadata !91, metadata !"seed", i32 127, i64 32, i64 32, i64 448, i32 0, metadata !100} ; [ DW_TAG_member ] [seed] [line 127, size 32, align 32, offset 448] [from unsigned int]
!135 = metadata !{i32 786445, metadata !42, metadata !91, metadata !"currentwhite", i32 128, i64 8, i64 8, i64 480, i32 0, metadata !52} ; [ DW_TAG_member ] [currentwhite] [line 128, size 8, align 8, offset 480] [from lu_byte]
!136 = metadata !{i32 786445, metadata !42, metadata !91, metadata !"gcstate", i32 129, i64 8, i64 8, i64 488, i32 0, metadata !52} ; [ DW_TAG_member ] [gcstate] [line 129, size 8, align 8, offset 488] [from lu_byte]
!137 = metadata !{i32 786445, metadata !42, metadata !91, metadata !"gckind", i32 130, i64 8, i64 8, i64 496, i32 0, metadata !52} ; [ DW_TAG_member ] [gckind] [line 130, size 8, align 8, offset 496] [from lu_byte]
!138 = metadata !{i32 786445, metadata !42, metadata !91, metadata !"gcrunning", i32 131, i64 8, i64 8, i64 504, i32 0, metadata !52} ; [ DW_TAG_member ] [gcrunning] [line 131, size 8, align 8, offset 504] [from lu_byte]
!139 = metadata !{i32 786445, metadata !42, metadata !91, metadata !"allgc", i32 132, i64 32, i64 32, i64 512, i32 0, metadata !45} ; [ DW_TAG_member ] [allgc] [line 132, size 32, align 32, offset 512] [from ]
!140 = metadata !{i32 786445, metadata !42, metadata !91, metadata !"sweepgc", i32 133, i64 32, i64 32, i64 544, i32 0, metadata !141} ; [ DW_TAG_member ] [sweepgc] [line 133, size 32, align 32, offset 544] [from ]
!141 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !45} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!142 = metadata !{i32 786445, metadata !42, metadata !91, metadata !"finobj", i32 134, i64 32, i64 32, i64 576, i32 0, metadata !45} ; [ DW_TAG_member ] [finobj] [line 134, size 32, align 32, offset 576] [from ]
!143 = metadata !{i32 786445, metadata !42, metadata !91, metadata !"gray", i32 135, i64 32, i64 32, i64 608, i32 0, metadata !45} ; [ DW_TAG_member ] [gray] [line 135, size 32, align 32, offset 608] [from ]
!144 = metadata !{i32 786445, metadata !42, metadata !91, metadata !"grayagain", i32 136, i64 32, i64 32, i64 640, i32 0, metadata !45} ; [ DW_TAG_member ] [grayagain] [line 136, size 32, align 32, offset 640] [from ]
!145 = metadata !{i32 786445, metadata !42, metadata !91, metadata !"weak", i32 137, i64 32, i64 32, i64 672, i32 0, metadata !45} ; [ DW_TAG_member ] [weak] [line 137, size 32, align 32, offset 672] [from ]
!146 = metadata !{i32 786445, metadata !42, metadata !91, metadata !"ephemeron", i32 138, i64 32, i64 32, i64 704, i32 0, metadata !45} ; [ DW_TAG_member ] [ephemeron] [line 138, size 32, align 32, offset 704] [from ]
!147 = metadata !{i32 786445, metadata !42, metadata !91, metadata !"allweak", i32 139, i64 32, i64 32, i64 736, i32 0, metadata !45} ; [ DW_TAG_member ] [allweak] [line 139, size 32, align 32, offset 736] [from ]
!148 = metadata !{i32 786445, metadata !42, metadata !91, metadata !"tobefnz", i32 140, i64 32, i64 32, i64 768, i32 0, metadata !45} ; [ DW_TAG_member ] [tobefnz] [line 140, size 32, align 32, offset 768] [from ]
!149 = metadata !{i32 786445, metadata !42, metadata !91, metadata !"fixedgc", i32 141, i64 32, i64 32, i64 800, i32 0, metadata !45} ; [ DW_TAG_member ] [fixedgc] [line 141, size 32, align 32, offset 800] [from ]
!150 = metadata !{i32 786445, metadata !42, metadata !91, metadata !"twups", i32 142, i64 32, i64 32, i64 832, i32 0, metadata !151} ; [ DW_TAG_member ] [twups] [line 142, size 32, align 32, offset 832] [from ]
!151 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !41} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from lua_State]
!152 = metadata !{i32 786445, metadata !42, metadata !91, metadata !"gcfinnum", i32 143, i64 32, i64 32, i64 864, i32 0, metadata !100} ; [ DW_TAG_member ] [gcfinnum] [line 143, size 32, align 32, offset 864] [from unsigned int]
!153 = metadata !{i32 786445, metadata !42, metadata !91, metadata !"gcpause", i32 144, i64 32, i64 32, i64 896, i32 0, metadata !75} ; [ DW_TAG_member ] [gcpause] [line 144, size 32, align 32, offset 896] [from int]
!154 = metadata !{i32 786445, metadata !42, metadata !91, metadata !"gcstepmul", i32 145, i64 32, i64 32, i64 928, i32 0, metadata !75} ; [ DW_TAG_member ] [gcstepmul] [line 145, size 32, align 32, offset 928] [from int]
!155 = metadata !{i32 786445, metadata !42, metadata !91, metadata !"panic", i32 146, i64 32, i64 32, i64 960, i32 0, metadata !77} ; [ DW_TAG_member ] [panic] [line 146, size 32, align 32, offset 960] [from lua_CFunction]
!156 = metadata !{i32 786445, metadata !42, metadata !91, metadata !"mainthread", i32 147, i64 32, i64 32, i64 992, i32 0, metadata !151} ; [ DW_TAG_member ] [mainthread] [line 147, size 32, align 32, offset 992] [from ]
!157 = metadata !{i32 786445, metadata !42, metadata !91, metadata !"version", i32 148, i64 32, i64 32, i64 1024, i32 0, metadata !158} ; [ DW_TAG_member ] [version] [line 148, size 32, align 32, offset 1024] [from ]
!158 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !159} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!159 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !85} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from lua_Number]
!160 = metadata !{i32 786445, metadata !42, metadata !91, metadata !"memerrmsg", i32 149, i64 32, i64 32, i64 1056, i32 0, metadata !115} ; [ DW_TAG_member ] [memerrmsg] [line 149, size 32, align 32, offset 1056] [from ]
!161 = metadata !{i32 786445, metadata !42, metadata !91, metadata !"tmname", i32 150, i64 768, i64 32, i64 1088, i32 0, metadata !162} ; [ DW_TAG_member ] [tmname] [line 150, size 768, align 32, offset 1088] [from ]
!162 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 768, i64 32, i32 0, i32 0, metadata !115, metadata !163, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 768, align 32, offset 0] [from ]
!163 = metadata !{metadata !164}
!164 = metadata !{i32 786465, i64 0, i64 24}      ; [ DW_TAG_subrange_type ] [0, 23]
!165 = metadata !{i32 786445, metadata !42, metadata !91, metadata !"mt", i32 151, i64 288, i64 32, i64 1856, i32 0, metadata !166} ; [ DW_TAG_member ] [mt] [line 151, size 288, align 32, offset 1856] [from ]
!166 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 288, i64 32, i32 0, i32 0, metadata !167, metadata !197, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 288, align 32, offset 0] [from ]
!167 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !168} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from Table]
!168 = metadata !{i32 786451, metadata !47, null, metadata !"Table", i32 497, i64 256, i64 32, i32 0, i32 0, null, metadata !169, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [Table] [line 497, size 256, align 32, offset 0] [def] [from ]
!169 = metadata !{metadata !170, metadata !171, metadata !172, metadata !173, metadata !174, metadata !175, metadata !176, metadata !177, metadata !194, metadata !195, metadata !196}
!170 = metadata !{i32 786445, metadata !47, metadata !168, metadata !"next", i32 498, i64 32, i64 32, i64 0, i32 0, metadata !45} ; [ DW_TAG_member ] [next] [line 498, size 32, align 32, offset 0] [from ]
!171 = metadata !{i32 786445, metadata !47, metadata !168, metadata !"tt", i32 498, i64 8, i64 8, i64 32, i32 0, metadata !52} ; [ DW_TAG_member ] [tt] [line 498, size 8, align 8, offset 32] [from lu_byte]
!172 = metadata !{i32 786445, metadata !47, metadata !168, metadata !"marked", i32 498, i64 8, i64 8, i64 40, i32 0, metadata !52} ; [ DW_TAG_member ] [marked] [line 498, size 8, align 8, offset 40] [from lu_byte]
!173 = metadata !{i32 786445, metadata !47, metadata !168, metadata !"flags", i32 499, i64 8, i64 8, i64 48, i32 0, metadata !52} ; [ DW_TAG_member ] [flags] [line 499, size 8, align 8, offset 48] [from lu_byte]
!174 = metadata !{i32 786445, metadata !47, metadata !168, metadata !"lsizenode", i32 500, i64 8, i64 8, i64 56, i32 0, metadata !52} ; [ DW_TAG_member ] [lsizenode] [line 500, size 8, align 8, offset 56] [from lu_byte]
!175 = metadata !{i32 786445, metadata !47, metadata !168, metadata !"sizearray", i32 501, i64 32, i64 32, i64 64, i32 0, metadata !100} ; [ DW_TAG_member ] [sizearray] [line 501, size 32, align 32, offset 64] [from unsigned int]
!176 = metadata !{i32 786445, metadata !47, metadata !168, metadata !"array", i32 502, i64 32, i64 32, i64 96, i32 0, metadata !63} ; [ DW_TAG_member ] [array] [line 502, size 32, align 32, offset 96] [from ]
!177 = metadata !{i32 786445, metadata !47, metadata !168, metadata !"node", i32 503, i64 32, i64 32, i64 128, i32 0, metadata !178} ; [ DW_TAG_member ] [node] [line 503, size 32, align 32, offset 128] [from ]
!178 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !179} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from Node]
!179 = metadata !{i32 786454, metadata !47, null, metadata !"Node", i32 494, i64 0, i64 0, i64 0, i32 0, metadata !180} ; [ DW_TAG_typedef ] [Node] [line 494, size 0, align 0, offset 0] [from Node]
!180 = metadata !{i32 786451, metadata !47, null, metadata !"Node", i32 491, i64 256, i64 64, i32 0, i32 0, null, metadata !181, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [Node] [line 491, size 256, align 64, offset 0] [def] [from ]
!181 = metadata !{metadata !182, metadata !183}
!182 = metadata !{i32 786445, metadata !47, metadata !180, metadata !"i_val", i32 492, i64 128, i64 64, i64 0, i32 0, metadata !64} ; [ DW_TAG_member ] [i_val] [line 492, size 128, align 64, offset 0] [from TValue]
!183 = metadata !{i32 786445, metadata !47, metadata !180, metadata !"i_key", i32 493, i64 128, i64 64, i64 128, i32 0, metadata !184} ; [ DW_TAG_member ] [i_key] [line 493, size 128, align 64, offset 128] [from TKey]
!184 = metadata !{i32 786454, metadata !47, null, metadata !"TKey", i32 481, i64 0, i64 0, i64 0, i32 0, metadata !185} ; [ DW_TAG_typedef ] [TKey] [line 481, size 0, align 0, offset 0] [from TKey]
!185 = metadata !{i32 786455, metadata !47, null, metadata !"TKey", i32 475, i64 128, i64 64, i64 0, i32 0, null, metadata !186, i32 0, null, null, null} ; [ DW_TAG_union_type ] [TKey] [line 475, size 128, align 64, offset 0] [def] [from ]
!186 = metadata !{metadata !187, metadata !193}
!187 = metadata !{i32 786445, metadata !47, metadata !185, metadata !"nk", i32 479, i64 128, i64 64, i64 0, i32 0, metadata !188} ; [ DW_TAG_member ] [nk] [line 479, size 128, align 64, offset 0] [from ]
!188 = metadata !{i32 786451, metadata !47, metadata !185, metadata !"", i32 476, i64 128, i64 64, i32 0, i32 0, null, metadata !189, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 476, size 128, align 64, offset 0] [def] [from ]
!189 = metadata !{metadata !190, metadata !191, metadata !192}
!190 = metadata !{i32 786445, metadata !47, metadata !188, metadata !"value_", i32 477, i64 64, i64 64, i64 0, i32 0, metadata !68} ; [ DW_TAG_member ] [value_] [line 477, size 64, align 64, offset 0] [from Value]
!191 = metadata !{i32 786445, metadata !47, metadata !188, metadata !"tt_", i32 477, i64 32, i64 32, i64 64, i32 0, metadata !75} ; [ DW_TAG_member ] [tt_] [line 477, size 32, align 32, offset 64] [from int]
!192 = metadata !{i32 786445, metadata !47, metadata !188, metadata !"next", i32 478, i64 32, i64 32, i64 96, i32 0, metadata !75} ; [ DW_TAG_member ] [next] [line 478, size 32, align 32, offset 96] [from int]
!193 = metadata !{i32 786445, metadata !47, metadata !185, metadata !"tvk", i32 480, i64 128, i64 64, i64 0, i32 0, metadata !64} ; [ DW_TAG_member ] [tvk] [line 480, size 128, align 64, offset 0] [from TValue]
!194 = metadata !{i32 786445, metadata !47, metadata !168, metadata !"lastfree", i32 504, i64 32, i64 32, i64 160, i32 0, metadata !178} ; [ DW_TAG_member ] [lastfree] [line 504, size 32, align 32, offset 160] [from ]
!195 = metadata !{i32 786445, metadata !47, metadata !168, metadata !"metatable", i32 505, i64 32, i64 32, i64 192, i32 0, metadata !167} ; [ DW_TAG_member ] [metatable] [line 505, size 32, align 32, offset 192] [from ]
!196 = metadata !{i32 786445, metadata !47, metadata !168, metadata !"gclist", i32 506, i64 32, i64 32, i64 224, i32 0, metadata !45} ; [ DW_TAG_member ] [gclist] [line 506, size 32, align 32, offset 224] [from ]
!197 = metadata !{metadata !198}
!198 = metadata !{i32 786465, i64 0, i64 9}       ; [ DW_TAG_subrange_type ] [0, 8]
!199 = metadata !{i32 786445, metadata !42, metadata !91, metadata !"strcache", i32 152, i64 3392, i64 32, i64 2144, i32 0, metadata !200} ; [ DW_TAG_member ] [strcache] [line 152, size 3392, align 32, offset 2144] [from ]
!200 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 3392, i64 32, i32 0, i32 0, metadata !115, metadata !201, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 3392, align 32, offset 0] [from ]
!201 = metadata !{metadata !202, metadata !203}
!202 = metadata !{i32 786465, i64 0, i64 53}      ; [ DW_TAG_subrange_type ] [0, 52]
!203 = metadata !{i32 786465, i64 0, i64 2}       ; [ DW_TAG_subrange_type ] [0, 1]
!204 = metadata !{i32 786445, metadata !42, metadata !41, metadata !"ci", i32 165, i64 32, i64 32, i64 160, i32 0, metadata !205} ; [ DW_TAG_member ] [ci] [line 165, size 32, align 32, offset 160] [from ]
!205 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !206} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from CallInfo]
!206 = metadata !{i32 786454, metadata !42, null, metadata !"CallInfo", i32 92, i64 0, i64 0, i64 0, i32 0, metadata !207} ; [ DW_TAG_typedef ] [CallInfo] [line 92, size 0, align 0, offset 0] [from CallInfo]
!207 = metadata !{i32 786451, metadata !42, null, metadata !"CallInfo", i32 74, i64 288, i64 32, i32 0, i32 0, null, metadata !208, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [CallInfo] [line 74, size 288, align 32, offset 0] [def] [from ]
!208 = metadata !{metadata !209, metadata !210, metadata !211, metadata !213, metadata !214, metadata !238, metadata !239, metadata !241}
!209 = metadata !{i32 786445, metadata !42, metadata !207, metadata !"func", i32 75, i64 32, i64 32, i64 0, i32 0, metadata !62} ; [ DW_TAG_member ] [func] [line 75, size 32, align 32, offset 0] [from StkId]
!210 = metadata !{i32 786445, metadata !42, metadata !207, metadata !"top", i32 76, i64 32, i64 32, i64 32, i32 0, metadata !62} ; [ DW_TAG_member ] [top] [line 76, size 32, align 32, offset 32] [from StkId]
!211 = metadata !{i32 786445, metadata !42, metadata !207, metadata !"previous", i32 77, i64 32, i64 32, i64 64, i32 0, metadata !212} ; [ DW_TAG_member ] [previous] [line 77, size 32, align 32, offset 64] [from ]
!212 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !207} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from CallInfo]
!213 = metadata !{i32 786445, metadata !42, metadata !207, metadata !"next", i32 77, i64 32, i64 32, i64 96, i32 0, metadata !212} ; [ DW_TAG_member ] [next] [line 77, size 32, align 32, offset 96] [from ]
!214 = metadata !{i32 786445, metadata !42, metadata !207, metadata !"u", i32 88, i64 96, i64 32, i64 128, i32 0, metadata !215} ; [ DW_TAG_member ] [u] [line 88, size 96, align 32, offset 128] [from ]
!215 = metadata !{i32 786455, metadata !42, metadata !207, metadata !"", i32 78, i64 96, i64 32, i64 0, i32 0, null, metadata !216, i32 0, null, null, null} ; [ DW_TAG_union_type ] [line 78, size 96, align 32, offset 0] [def] [from ]
!216 = metadata !{metadata !217, metadata !225}
!217 = metadata !{i32 786445, metadata !42, metadata !215, metadata !"l", i32 82, i64 64, i64 32, i64 0, i32 0, metadata !218} ; [ DW_TAG_member ] [l] [line 82, size 64, align 32, offset 0] [from ]
!218 = metadata !{i32 786451, metadata !42, metadata !215, metadata !"", i32 79, i64 64, i64 32, i32 0, i32 0, null, metadata !219, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 79, size 64, align 32, offset 0] [def] [from ]
!219 = metadata !{metadata !220, metadata !221}
!220 = metadata !{i32 786445, metadata !42, metadata !218, metadata !"base", i32 80, i64 32, i64 32, i64 0, i32 0, metadata !62} ; [ DW_TAG_member ] [base] [line 80, size 32, align 32, offset 0] [from StkId]
!221 = metadata !{i32 786445, metadata !42, metadata !218, metadata !"savedpc", i32 81, i64 32, i64 32, i64 32, i32 0, metadata !222} ; [ DW_TAG_member ] [savedpc] [line 81, size 32, align 32, offset 32] [from ]
!222 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !223} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!223 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !224} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from Instruction]
!224 = metadata !{i32 786454, metadata !53, null, metadata !"Instruction", i32 163, i64 0, i64 0, i64 0, i32 0, metadata !100} ; [ DW_TAG_typedef ] [Instruction] [line 163, size 0, align 0, offset 0] [from unsigned int]
!225 = metadata !{i32 786445, metadata !42, metadata !215, metadata !"c", i32 87, i64 96, i64 32, i64 0, i32 0, metadata !226} ; [ DW_TAG_member ] [c] [line 87, size 96, align 32, offset 0] [from ]
!226 = metadata !{i32 786451, metadata !42, metadata !215, metadata !"", i32 83, i64 96, i64 32, i32 0, i32 0, null, metadata !227, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 83, size 96, align 32, offset 0] [def] [from ]
!227 = metadata !{metadata !228, metadata !236, metadata !237}
!228 = metadata !{i32 786445, metadata !42, metadata !226, metadata !"k", i32 84, i64 32, i64 32, i64 0, i32 0, metadata !229} ; [ DW_TAG_member ] [k] [line 84, size 32, align 32, offset 0] [from lua_KFunction]
!229 = metadata !{i32 786454, metadata !40, null, metadata !"lua_KFunction", i32 110, i64 0, i64 0, i64 0, i32 0, metadata !230} ; [ DW_TAG_typedef ] [lua_KFunction] [line 110, size 0, align 0, offset 0] [from ]
!230 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !231} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!231 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !232, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!232 = metadata !{metadata !75, metadata !38, metadata !75, metadata !233}
!233 = metadata !{i32 786454, metadata !40, null, metadata !"lua_KContext", i32 99, i64 0, i64 0, i64 0, i32 0, metadata !234} ; [ DW_TAG_typedef ] [lua_KContext] [line 99, size 0, align 0, offset 0] [from intptr_t]
!234 = metadata !{i32 786454, metadata !235, null, metadata !"intptr_t", i32 125, i64 0, i64 0, i64 0, i32 0, metadata !75} ; [ DW_TAG_typedef ] [intptr_t] [line 125, size 0, align 0, offset 0] [from int]
!235 = metadata !{metadata !"D:/Xilinx/SDx/2016.3/SDK/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include\5Cstdint.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!236 = metadata !{i32 786445, metadata !42, metadata !226, metadata !"old_errfunc", i32 85, i64 32, i64 32, i64 32, i32 0, metadata !104} ; [ DW_TAG_member ] [old_errfunc] [line 85, size 32, align 32, offset 32] [from ptrdiff_t]
!237 = metadata !{i32 786445, metadata !42, metadata !226, metadata !"ctx", i32 86, i64 32, i64 32, i64 64, i32 0, metadata !233} ; [ DW_TAG_member ] [ctx] [line 86, size 32, align 32, offset 64] [from lua_KContext]
!238 = metadata !{i32 786445, metadata !42, metadata !207, metadata !"extra", i32 89, i64 32, i64 32, i64 224, i32 0, metadata !104} ; [ DW_TAG_member ] [extra] [line 89, size 32, align 32, offset 224] [from ptrdiff_t]
!239 = metadata !{i32 786445, metadata !42, metadata !207, metadata !"nresults", i32 90, i64 16, i64 16, i64 256, i32 0, metadata !240} ; [ DW_TAG_member ] [nresults] [line 90, size 16, align 16, offset 256] [from short]
!240 = metadata !{i32 786468, null, null, metadata !"short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [short] [line 0, size 16, align 16, offset 0, enc DW_ATE_signed]
!241 = metadata !{i32 786445, metadata !42, metadata !207, metadata !"callstatus", i32 91, i64 8, i64 8, i64 272, i32 0, metadata !52} ; [ DW_TAG_member ] [callstatus] [line 91, size 8, align 8, offset 272] [from lu_byte]
!242 = metadata !{i32 786445, metadata !42, metadata !41, metadata !"oldpc", i32 166, i64 32, i64 32, i64 192, i32 0, metadata !222} ; [ DW_TAG_member ] [oldpc] [line 166, size 32, align 32, offset 192] [from ]
!243 = metadata !{i32 786445, metadata !42, metadata !41, metadata !"stack_last", i32 167, i64 32, i64 32, i64 224, i32 0, metadata !62} ; [ DW_TAG_member ] [stack_last] [line 167, size 32, align 32, offset 224] [from StkId]
!244 = metadata !{i32 786445, metadata !42, metadata !41, metadata !"stack", i32 168, i64 32, i64 32, i64 256, i32 0, metadata !62} ; [ DW_TAG_member ] [stack] [line 168, size 32, align 32, offset 256] [from StkId]
!245 = metadata !{i32 786445, metadata !42, metadata !41, metadata !"openupval", i32 169, i64 32, i64 32, i64 288, i32 0, metadata !246} ; [ DW_TAG_member ] [openupval] [line 169, size 32, align 32, offset 288] [from ]
!246 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !247} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from UpVal]
!247 = metadata !{i32 786454, metadata !47, null, metadata !"UpVal", i32 436, i64 0, i64 0, i64 0, i32 0, metadata !248} ; [ DW_TAG_typedef ] [UpVal] [line 436, size 0, align 0, offset 0] [from UpVal]
!248 = metadata !{i32 786451, metadata !47, null, metadata !"UpVal", i32 436, i64 0, i64 0, i32 0, i32 4, null, null, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [UpVal] [line 436, size 0, align 0, offset 0] [decl] [from ]
!249 = metadata !{i32 786445, metadata !42, metadata !41, metadata !"gclist", i32 170, i64 32, i64 32, i64 320, i32 0, metadata !45} ; [ DW_TAG_member ] [gclist] [line 170, size 32, align 32, offset 320] [from ]
!250 = metadata !{i32 786445, metadata !42, metadata !41, metadata !"twups", i32 171, i64 32, i64 32, i64 352, i32 0, metadata !151} ; [ DW_TAG_member ] [twups] [line 171, size 32, align 32, offset 352] [from ]
!251 = metadata !{i32 786445, metadata !42, metadata !41, metadata !"errorJmp", i32 172, i64 32, i64 32, i64 384, i32 0, metadata !252} ; [ DW_TAG_member ] [errorJmp] [line 172, size 32, align 32, offset 384] [from ]
!252 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !253} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from lua_longjmp]
!253 = metadata !{i32 786451, metadata !42, null, metadata !"lua_longjmp", i32 33, i64 0, i64 0, i32 0, i32 4, null, null, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [lua_longjmp] [line 33, size 0, align 0, offset 0] [decl] [from ]
!254 = metadata !{i32 786445, metadata !42, metadata !41, metadata !"base_ci", i32 173, i64 288, i64 32, i64 416, i32 0, metadata !206} ; [ DW_TAG_member ] [base_ci] [line 173, size 288, align 32, offset 416] [from CallInfo]
!255 = metadata !{i32 786445, metadata !42, metadata !41, metadata !"hook", i32 174, i64 32, i64 32, i64 704, i32 0, metadata !256} ; [ DW_TAG_member ] [hook] [line 174, size 32, align 32, offset 704] [from ]
!256 = metadata !{i32 786485, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !257} ; [ DW_TAG_volatile_type ] [line 0, size 0, align 0, offset 0] [from lua_Hook]
!257 = metadata !{i32 786454, metadata !40, null, metadata !"lua_Hook", i32 421, i64 0, i64 0, i64 0, i32 0, metadata !258} ; [ DW_TAG_typedef ] [lua_Hook] [line 421, size 0, align 0, offset 0] [from ]
!258 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !259} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!259 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !260, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!260 = metadata !{null, metadata !38, metadata !261}
!261 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !262} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from lua_Debug]
!262 = metadata !{i32 786454, metadata !40, null, metadata !"lua_Debug", i32 417, i64 0, i64 0, i64 0, i32 0, metadata !263} ; [ DW_TAG_typedef ] [lua_Debug] [line 417, size 0, align 0, offset 0] [from lua_Debug]
!263 = metadata !{i32 786451, metadata !40, null, metadata !"lua_Debug", i32 441, i64 800, i64 32, i32 0, i32 0, null, metadata !264, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [lua_Debug] [line 441, size 800, align 32, offset 0] [def] [from ]
!264 = metadata !{metadata !265, metadata !266, metadata !270, metadata !271, metadata !272, metadata !273, metadata !274, metadata !275, metadata !276, metadata !277, metadata !278, metadata !279, metadata !280, metadata !284}
!265 = metadata !{i32 786445, metadata !40, metadata !263, metadata !"event", i32 442, i64 32, i64 32, i64 0, i32 0, metadata !75} ; [ DW_TAG_member ] [event] [line 442, size 32, align 32, offset 0] [from int]
!266 = metadata !{i32 786445, metadata !40, metadata !263, metadata !"name", i32 443, i64 32, i64 32, i64 32, i32 0, metadata !267} ; [ DW_TAG_member ] [name] [line 443, size 32, align 32, offset 32] [from ]
!267 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !268} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!268 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !269} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!269 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!270 = metadata !{i32 786445, metadata !40, metadata !263, metadata !"namewhat", i32 444, i64 32, i64 32, i64 64, i32 0, metadata !267} ; [ DW_TAG_member ] [namewhat] [line 444, size 32, align 32, offset 64] [from ]
!271 = metadata !{i32 786445, metadata !40, metadata !263, metadata !"what", i32 445, i64 32, i64 32, i64 96, i32 0, metadata !267} ; [ DW_TAG_member ] [what] [line 445, size 32, align 32, offset 96] [from ]
!272 = metadata !{i32 786445, metadata !40, metadata !263, metadata !"source", i32 446, i64 32, i64 32, i64 128, i32 0, metadata !267} ; [ DW_TAG_member ] [source] [line 446, size 32, align 32, offset 128] [from ]
!273 = metadata !{i32 786445, metadata !40, metadata !263, metadata !"currentline", i32 447, i64 32, i64 32, i64 160, i32 0, metadata !75} ; [ DW_TAG_member ] [currentline] [line 447, size 32, align 32, offset 160] [from int]
!274 = metadata !{i32 786445, metadata !40, metadata !263, metadata !"linedefined", i32 448, i64 32, i64 32, i64 192, i32 0, metadata !75} ; [ DW_TAG_member ] [linedefined] [line 448, size 32, align 32, offset 192] [from int]
!275 = metadata !{i32 786445, metadata !40, metadata !263, metadata !"lastlinedefined", i32 449, i64 32, i64 32, i64 224, i32 0, metadata !75} ; [ DW_TAG_member ] [lastlinedefined] [line 449, size 32, align 32, offset 224] [from int]
!276 = metadata !{i32 786445, metadata !40, metadata !263, metadata !"nups", i32 450, i64 8, i64 8, i64 256, i32 0, metadata !54} ; [ DW_TAG_member ] [nups] [line 450, size 8, align 8, offset 256] [from unsigned char]
!277 = metadata !{i32 786445, metadata !40, metadata !263, metadata !"nparams", i32 451, i64 8, i64 8, i64 264, i32 0, metadata !54} ; [ DW_TAG_member ] [nparams] [line 451, size 8, align 8, offset 264] [from unsigned char]
!278 = metadata !{i32 786445, metadata !40, metadata !263, metadata !"isvararg", i32 452, i64 8, i64 8, i64 272, i32 0, metadata !269} ; [ DW_TAG_member ] [isvararg] [line 452, size 8, align 8, offset 272] [from char]
!279 = metadata !{i32 786445, metadata !40, metadata !263, metadata !"istailcall", i32 453, i64 8, i64 8, i64 280, i32 0, metadata !269} ; [ DW_TAG_member ] [istailcall] [line 453, size 8, align 8, offset 280] [from char]
!280 = metadata !{i32 786445, metadata !40, metadata !263, metadata !"short_src", i32 454, i64 480, i64 8, i64 288, i32 0, metadata !281} ; [ DW_TAG_member ] [short_src] [line 454, size 480, align 8, offset 288] [from ]
!281 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 480, i64 8, i32 0, i32 0, metadata !269, metadata !282, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 480, align 8, offset 0] [from char]
!282 = metadata !{metadata !283}
!283 = metadata !{i32 786465, i64 0, i64 60}      ; [ DW_TAG_subrange_type ] [0, 59]
!284 = metadata !{i32 786445, metadata !40, metadata !263, metadata !"i_ci", i32 456, i64 32, i64 32, i64 768, i32 0, metadata !212} ; [ DW_TAG_member ] [i_ci] [line 456, size 32, align 32, offset 768] [from ]
!285 = metadata !{i32 786445, metadata !42, metadata !41, metadata !"errfunc", i32 175, i64 32, i64 32, i64 736, i32 0, metadata !104} ; [ DW_TAG_member ] [errfunc] [line 175, size 32, align 32, offset 736] [from ptrdiff_t]
!286 = metadata !{i32 786445, metadata !42, metadata !41, metadata !"stacksize", i32 176, i64 32, i64 32, i64 768, i32 0, metadata !75} ; [ DW_TAG_member ] [stacksize] [line 176, size 32, align 32, offset 768] [from int]
!287 = metadata !{i32 786445, metadata !42, metadata !41, metadata !"basehookcount", i32 177, i64 32, i64 32, i64 800, i32 0, metadata !75} ; [ DW_TAG_member ] [basehookcount] [line 177, size 32, align 32, offset 800] [from int]
!288 = metadata !{i32 786445, metadata !42, metadata !41, metadata !"hookcount", i32 178, i64 32, i64 32, i64 832, i32 0, metadata !75} ; [ DW_TAG_member ] [hookcount] [line 178, size 32, align 32, offset 832] [from int]
!289 = metadata !{i32 786445, metadata !42, metadata !41, metadata !"nny", i32 179, i64 16, i64 16, i64 864, i32 0, metadata !59} ; [ DW_TAG_member ] [nny] [line 179, size 16, align 16, offset 864] [from unsigned short]
!290 = metadata !{i32 786445, metadata !42, metadata !41, metadata !"nCcalls", i32 180, i64 16, i64 16, i64 880, i32 0, metadata !59} ; [ DW_TAG_member ] [nCcalls] [line 180, size 16, align 16, offset 880] [from unsigned short]
!291 = metadata !{i32 786445, metadata !42, metadata !41, metadata !"hookmask", i32 181, i64 32, i64 32, i64 896, i32 0, metadata !292} ; [ DW_TAG_member ] [hookmask] [line 181, size 32, align 32, offset 896] [from sig_atomic_t]
!292 = metadata !{i32 786454, metadata !293, null, metadata !"sig_atomic_t", i32 40, i64 0, i64 0, i64 0, i32 0, metadata !294} ; [ DW_TAG_typedef ] [sig_atomic_t] [line 40, size 0, align 0, offset 0] [from __sig_atomic_t]
!293 = metadata !{metadata !"D:/Xilinx/SDx/2016.3/SDK/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include\5Csignal.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!294 = metadata !{i32 786454, metadata !295, null, metadata !"__sig_atomic_t", i32 22, i64 0, i64 0, i64 0, i32 0, metadata !75} ; [ DW_TAG_typedef ] [__sig_atomic_t] [line 22, size 0, align 0, offset 0] [from int]
!295 = metadata !{metadata !"D:/Xilinx/SDx/2016.3/SDK/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include\5Cbits/sigset.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!296 = metadata !{i32 786445, metadata !42, metadata !41, metadata !"allowhook", i32 182, i64 8, i64 8, i64 928, i32 0, metadata !52} ; [ DW_TAG_member ] [allowhook] [line 182, size 8, align 8, offset 928] [from lu_byte]
!297 = metadata !{i32 786478, metadata !34, metadata !35, metadata !"luaT_gettm", metadata !"luaT_gettm", metadata !"", i32 59, metadata !298, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, %struct.lua_TValue* (%struct.Table*, i32, %struct.TString*)* @luaT_gettm, null, null, metadata !31, i32 59} ; [ DW_TAG_subprogram ] [line 59] [def] [luaT_gettm]
!298 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !299, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!299 = metadata !{metadata !300, metadata !302, metadata !304, metadata !115}
!300 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !301} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!301 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !64} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from TValue]
!302 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !303} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from Table]
!303 = metadata !{i32 786454, metadata !47, null, metadata !"Table", i32 507, i64 0, i64 0, i64 0, i32 0, metadata !168} ; [ DW_TAG_typedef ] [Table] [line 507, size 0, align 0, offset 0] [from Table]
!304 = metadata !{i32 786454, metadata !4, null, metadata !"TMS", i32 44, i64 0, i64 0, i64 0, i32 0, metadata !3} ; [ DW_TAG_typedef ] [TMS] [line 44, size 0, align 0, offset 0] [from ]
!305 = metadata !{i32 786478, metadata !34, metadata !35, metadata !"luaT_gettmbyobj", metadata !"luaT_gettmbyobj", metadata !"", i32 70, metadata !306, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, %struct.lua_TValue* (%struct.lua_State*, %struct.lua_TValue*, i32)* @luaT_gettmbyobj, null, null, metadata !31, i32 70} ; [ DW_TAG_subprogram ] [line 70] [def] [luaT_gettmbyobj]
!306 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !307, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!307 = metadata !{metadata !300, metadata !38, metadata !300, metadata !304}
!308 = metadata !{i32 786478, metadata !34, metadata !35, metadata !"luaT_objtypename", metadata !"luaT_objtypename", metadata !"", i32 90, metadata !309, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (%struct.lua_State*, %struct.lua_TValue*)* @luaT_objtypename, null, null, metadata !31, i32 90} ; [ DW_TAG_subprogram ] [line 90] [def] [luaT_objtypename]
!309 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !310, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!310 = metadata !{metadata !267, metadata !38, metadata !300}
!311 = metadata !{i32 786478, metadata !34, metadata !35, metadata !"luaT_callTM", metadata !"luaT_callTM", metadata !"", i32 102, metadata !312, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.lua_State*, %struct.lua_TValue*, %struct.lua_TValue*, %struct.lua_TValue*, %struct.lua_TValue*, i32)* @luaT_callTM, null, null, metadata !31, i32 103} ; [ DW_TAG_subprogram ] [line 102] [def] [scope 103] [luaT_callTM]
!312 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !313, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!313 = metadata !{null, metadata !38, metadata !300, metadata !300, metadata !300, metadata !63, metadata !75}
!314 = metadata !{i32 786478, metadata !34, metadata !35, metadata !"luaT_callbinTM", metadata !"luaT_callbinTM", metadata !"", i32 124, metadata !315, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*, %struct.lua_TValue*, %struct.lua_TValue*, %struct.lua_TValue*, i32)* @luaT_callbinTM, null, null, metadata !31, i32 125} ; [ DW_TAG_subprogram ] [line 124] [def] [scope 125] [luaT_callbinTM]
!315 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !316, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!316 = metadata !{metadata !75, metadata !38, metadata !300, metadata !300, metadata !62, metadata !304}
!317 = metadata !{i32 786478, metadata !34, metadata !35, metadata !"luaT_trybinTM", metadata !"luaT_trybinTM", metadata !"", i32 135, metadata !318, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.lua_State*, %struct.lua_TValue*, %struct.lua_TValue*, %struct.lua_TValue*, i32)* @luaT_trybinTM, null, null, metadata !31, i32 136} ; [ DW_TAG_subprogram ] [line 135] [def] [scope 136] [luaT_trybinTM]
!318 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !319, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!319 = metadata !{null, metadata !38, metadata !300, metadata !300, metadata !62, metadata !304}
!320 = metadata !{i32 786478, metadata !34, metadata !35, metadata !"luaT_callorderTM", metadata !"luaT_callorderTM", metadata !"", i32 158, metadata !321, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*, %struct.lua_TValue*, %struct.lua_TValue*, i32)* @luaT_callorderTM, null, null, metadata !31, i32 159} ; [ DW_TAG_subprogram ] [line 158] [def] [scope 159] [luaT_callorderTM]
!321 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !322, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!322 = metadata !{metadata !75, metadata !38, metadata !300, metadata !300, metadata !304}
!323 = metadata !{metadata !324, metadata !329, metadata !331}
!324 = metadata !{i32 786484, i32 0, null, metadata !"luaT_typenames_", metadata !"luaT_typenames_", metadata !"", metadata !35, i32 29, metadata !325, i32 0, i32 1, [11 x i8*]* @luaT_typenames_, null} ; [ DW_TAG_variable ] [luaT_typenames_] [line 29] [def]
!325 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 352, i64 32, i32 0, i32 0, metadata !326, metadata !327, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 352, align 32, offset 0] [from ]
!326 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !267} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from ]
!327 = metadata !{metadata !328}
!328 = metadata !{i32 786465, i64 0, i64 11}      ; [ DW_TAG_subrange_type ] [0, 10]
!329 = metadata !{i32 786484, i32 0, metadata !33, metadata !"luaT_eventname", metadata !"luaT_eventname", metadata !"", metadata !35, i32 38, metadata !330, i32 1, i32 1, [24 x i8*]* @luaT_init.luaT_eventname, null} ; [ DW_TAG_variable ] [luaT_eventname] [line 38] [local] [def]
!330 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 768, i64 32, i32 0, i32 0, metadata !326, metadata !163, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 768, align 32, offset 0] [from ]
!331 = metadata !{i32 786484, i32 0, null, metadata !"udatatypename", metadata !"udatatypename", metadata !"", metadata !35, i32 27, metadata !332, i32 1, i32 1, [9 x i8]* @udatatypename, null} ; [ DW_TAG_variable ] [udatatypename] [line 27] [local] [def]
!332 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 72, i64 8, i32 0, i32 0, metadata !268, metadata !197, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 72, align 8, offset 0] [from ]
!333 = metadata !{void (%struct.lua_State*)* @luaT_init}
!334 = metadata !{metadata !"luaT_init"}
!335 = metadata !{%struct.TString* (%struct.lua_State*, i8*)* @luaS_new}
!336 = metadata !{metadata !"luaS_new"}
!337 = metadata !{void (%struct.lua_State*, %struct.GCObject*)* @luaC_fix}
!338 = metadata !{metadata !"luaC_fix"}
!339 = metadata !{%struct.lua_TValue* (%struct.Table*, i32, %struct.TString*)* @luaT_gettm}
!340 = metadata !{metadata !"luaT_gettm"}
!341 = metadata !{%struct.lua_TValue* (%struct.Table*, %struct.TString*)* @luaH_getshortstr}
!342 = metadata !{metadata !"luaH_getshortstr"}
!343 = metadata !{%struct.lua_TValue* (%struct.lua_State*, %struct.lua_TValue*, i32)* @luaT_gettmbyobj}
!344 = metadata !{metadata !"luaT_gettmbyobj"}
!345 = metadata !{i8* (%struct.lua_State*, %struct.lua_TValue*)* @luaT_objtypename}
!346 = metadata !{metadata !"luaT_objtypename"}
!347 = metadata !{void (%struct.lua_State*, %struct.lua_TValue*, %struct.lua_TValue*, %struct.lua_TValue*, %struct.lua_TValue*, i32)* @luaT_callTM}
!348 = metadata !{metadata !"luaT_callTM"}
!349 = metadata !{void (%struct.lua_State*, %struct.lua_TValue*, i32)* @luaD_call}
!350 = metadata !{metadata !"luaD_call"}
!351 = metadata !{void (%struct.lua_State*, %struct.lua_TValue*, i32)* @luaD_callnoyield}
!352 = metadata !{metadata !"luaD_callnoyield"}
!353 = metadata !{i32 (%struct.lua_State*, %struct.lua_TValue*, %struct.lua_TValue*, %struct.lua_TValue*, i32)* @luaT_callbinTM}
!354 = metadata !{metadata !"luaT_callbinTM"}
!355 = metadata !{void (%struct.lua_State*, %struct.lua_TValue*, %struct.lua_TValue*, %struct.lua_TValue*, i32)* @luaT_trybinTM}
!356 = metadata !{metadata !"luaT_trybinTM"}
!357 = metadata !{void (%struct.lua_State*, %struct.lua_TValue*, %struct.lua_TValue*)* @luaG_concaterror}
!358 = metadata !{metadata !"luaG_concaterror"}
!359 = metadata !{i32 (%struct.lua_TValue*, double*)* @luaV_tonumber_}
!360 = metadata !{metadata !"luaV_tonumber_"}
!361 = metadata !{void (%struct.lua_State*, %struct.lua_TValue*, %struct.lua_TValue*)* @luaG_tointerror}
!362 = metadata !{metadata !"luaG_tointerror"}
!363 = metadata !{void (%struct.lua_State*, %struct.lua_TValue*, %struct.lua_TValue*, i8*)* @luaG_opinterror}
!364 = metadata !{metadata !"luaG_opinterror"}
!365 = metadata !{i32 (%struct.lua_State*, %struct.lua_TValue*, %struct.lua_TValue*, i32)* @luaT_callorderTM}
!366 = metadata !{metadata !"luaT_callorderTM"}
!367 = metadata !{metadata !"void.lua_State *.1"}
!368 = metadata !{metadata !"TString .lua_State *.1.const char *.1"}
!369 = metadata !{metadata !"void.lua_State *.1.GCObject *.1"}
!370 = metadata !{metadata !"const TValue .Table *.1.TMS.0.TString *.1"}
!371 = metadata !{metadata !"const TValue .Table *.1.TString *.1"}
!372 = metadata !{metadata !"const TValue .lua_State *.1.const TValue *.1.TMS.0"}
!373 = metadata !{metadata !"const char .lua_State *.1.const TValue *.1"}
!374 = metadata !{metadata !"void.lua_State *.1.const TValue *.1.const TValue *.1.const TValue *.1.TValue *.1.int.0"}
!375 = metadata !{metadata !"void.lua_State *.1.StkId.1.int.0"}
!376 = metadata !{metadata !"int.lua_State *.1.const TValue *.1.const TValue *.1.StkId.1.TMS.0"}
!377 = metadata !{metadata !"void.lua_State *.1.const TValue *.1.const TValue *.1.StkId.1.TMS.0"}
!378 = metadata !{metadata !"void.lua_State *.1.const TValue *.1.const TValue *.1"}
!379 = metadata !{metadata !"int.const TValue *.1.lua_Number *.1"}
!380 = metadata !{metadata !"void.lua_State *.1.const TValue *.1.const TValue *.1.const char *.1"}
!381 = metadata !{metadata !"int.lua_State *.1.const TValue *.1.const TValue *.1.TMS.0"}
!382 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/ltm.h"}
!383 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lstring.h"}
!384 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lgc.h"}
!385 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/ltable.h"}
!386 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/ldo.h"}
!387 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/ldebug.h"}
!388 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lvm.h"}
!389 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!390 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!391 = metadata !{i32 1, metadata !"wchar_size", i32 4}
!392 = metadata !{i32 1, metadata !"min_enum_size", i32 4}
!393 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
!394 = metadata !{i32 786689, metadata !33, metadata !"L", metadata !35, i32 16777253, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 37]
!395 = metadata !{i32 37, i32 28, metadata !33, null}
!396 = metadata !{i32 786688, metadata !33, metadata !"i", metadata !35, i32 47, metadata !75, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 47]
!397 = metadata !{i32 47, i32 7, metadata !33, null}
!398 = metadata !{i32 48, i32 8, metadata !399, null}
!399 = metadata !{i32 786443, metadata !34, metadata !33, i32 48, i32 3, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltm.c]
!400 = metadata !{i32 48, i32 8, metadata !401, null}
!401 = metadata !{i32 786443, metadata !34, metadata !402, i32 48, i32 8, i32 2, i32 26} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltm.c]
!402 = metadata !{i32 786443, metadata !34, metadata !399, i32 48, i32 8, i32 1, i32 25} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltm.c]
!403 = metadata !{i32 49, i32 23, metadata !404, null}
!404 = metadata !{i32 786443, metadata !34, metadata !399, i32 48, i32 26, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltm.c]
!405 = metadata !{i32 50, i32 5, metadata !404, null}
!406 = metadata !{i32 51, i32 3, metadata !404, null}
!407 = metadata !{i32 48, i32 21, metadata !399, null}
!408 = metadata !{i32 52, i32 1, metadata !33, null}
!409 = metadata !{i32 786689, metadata !297, metadata !"events", metadata !35, i32 16777275, metadata !302, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [events] [line 59]
!410 = metadata !{i32 59, i32 34, metadata !297, null}
!411 = metadata !{i32 786689, metadata !297, metadata !"event", metadata !35, i32 33554491, metadata !304, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [event] [line 59]
!412 = metadata !{i32 59, i32 46, metadata !297, null}
!413 = metadata !{i32 786689, metadata !297, metadata !"ename", metadata !35, i32 50331707, metadata !115, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ename] [line 59]
!414 = metadata !{i32 59, i32 62, metadata !297, null}
!415 = metadata !{i32 786688, metadata !297, metadata !"tm", metadata !35, i32 60, metadata !300, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tm] [line 60]
!416 = metadata !{i32 60, i32 17, metadata !297, null}
!417 = metadata !{i32 60, i32 22, metadata !297, null}
!418 = metadata !{i32 62, i32 7, metadata !419, null}
!419 = metadata !{i32 786443, metadata !34, metadata !297, i32 62, i32 7, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltm.c]
!420 = metadata !{i32 63, i32 5, metadata !421, null}
!421 = metadata !{i32 786443, metadata !34, metadata !419, i32 62, i32 20, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltm.c]
!422 = metadata !{i32 64, i32 5, metadata !421, null}
!423 = metadata !{i32 66, i32 8, metadata !419, null}
!424 = metadata !{i32 67, i32 1, metadata !297, null}
!425 = metadata !{i32 786689, metadata !305, metadata !"L", metadata !35, i32 16777286, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 70]
!426 = metadata !{i32 70, i32 43, metadata !305, null}
!427 = metadata !{i32 786689, metadata !305, metadata !"o", metadata !35, i32 33554502, metadata !300, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [o] [line 70]
!428 = metadata !{i32 70, i32 60, metadata !305, null}
!429 = metadata !{i32 786689, metadata !305, metadata !"event", metadata !35, i32 50331718, metadata !304, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [event] [line 70]
!430 = metadata !{i32 70, i32 67, metadata !305, null}
!431 = metadata !{i32 786688, metadata !305, metadata !"mt", metadata !35, i32 71, metadata !302, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mt] [line 71]
!432 = metadata !{i32 71, i32 10, metadata !305, null}
!433 = metadata !{i32 72, i32 3, metadata !305, null}
!434 = metadata !{i32 74, i32 7, metadata !435, null}
!435 = metadata !{i32 786443, metadata !34, metadata !305, i32 72, i32 21, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltm.c]
!436 = metadata !{i32 75, i32 7, metadata !435, null}
!437 = metadata !{i32 77, i32 7, metadata !435, null}
!438 = metadata !{i32 78, i32 7, metadata !435, null}
!439 = metadata !{i32 80, i32 7, metadata !435, null}
!440 = metadata !{i32 81, i32 3, metadata !435, null}
!441 = metadata !{i32 82, i32 3, metadata !305, null}
!442 = metadata !{i32 82, i32 16, metadata !443, null}
!443 = metadata !{i32 786443, metadata !34, metadata !305, i32 82, i32 16, i32 1, i32 27} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltm.c]
!444 = metadata !{i32 82, i32 16, metadata !445, null}
!445 = metadata !{i32 786443, metadata !34, metadata !305, i32 82, i32 16, i32 2, i32 28} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltm.c]
!446 = metadata !{i32 82, i32 16, metadata !305, null}
!447 = metadata !{i32 82, i32 16, metadata !448, null}
!448 = metadata !{i32 786443, metadata !34, metadata !449, i32 82, i32 16, i32 4, i32 30} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltm.c]
!449 = metadata !{i32 786443, metadata !34, metadata !305, i32 82, i32 16, i32 3, i32 29} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltm.c]
!450 = metadata !{i32 786689, metadata !308, metadata !"L", metadata !35, i32 16777306, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 90]
!451 = metadata !{i32 90, i32 42, metadata !308, null}
!452 = metadata !{i32 786689, metadata !308, metadata !"o", metadata !35, i32 33554522, metadata !300, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [o] [line 90]
!453 = metadata !{i32 90, i32 59, metadata !308, null}
!454 = metadata !{i32 786688, metadata !308, metadata !"mt", metadata !35, i32 91, metadata !302, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mt] [line 91]
!455 = metadata !{i32 91, i32 10, metadata !308, null}
!456 = metadata !{i32 92, i32 7, metadata !457, null}
!457 = metadata !{i32 786443, metadata !34, metadata !308, i32 92, i32 7, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltm.c]
!458 = metadata !{i32 92, i32 7, metadata !459, null}
!459 = metadata !{i32 786443, metadata !34, metadata !457, i32 92, i32 7, i32 1, i32 31} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltm.c]
!460 = metadata !{i32 92, i32 7, metadata !461, null}
!461 = metadata !{i32 786443, metadata !34, metadata !462, i32 92, i32 7, i32 3, i32 33} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltm.c]
!462 = metadata !{i32 786443, metadata !34, metadata !457, i32 92, i32 7, i32 2, i32 32} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltm.c]
!463 = metadata !{i32 92, i32 7, metadata !464, null}
!464 = metadata !{i32 786443, metadata !34, metadata !457, i32 92, i32 7, i32 4, i32 34} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltm.c]
!465 = metadata !{i32 786688, metadata !466, metadata !"name", metadata !35, i32 94, metadata !300, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [name] [line 94]
!466 = metadata !{i32 786443, metadata !34, metadata !457, i32 93, i32 69, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltm.c]
!467 = metadata !{i32 94, i32 19, metadata !466, null}
!468 = metadata !{i32 94, i32 26, metadata !466, null}
!469 = metadata !{i32 94, i32 47, metadata !466, null}
!470 = metadata !{i32 95, i32 9, metadata !471, null}
!471 = metadata !{i32 786443, metadata !34, metadata !466, i32 95, i32 9, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltm.c]
!472 = metadata !{i32 96, i32 7, metadata !471, null}
!473 = metadata !{i32 97, i32 3, metadata !466, null}
!474 = metadata !{i32 98, i32 3, metadata !308, null}
!475 = metadata !{i32 99, i32 1, metadata !308, null}
!476 = metadata !{i32 786689, metadata !311, metadata !"L", metadata !35, i32 16777318, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 102]
!477 = metadata !{i32 102, i32 30, metadata !311, null}
!478 = metadata !{i32 786689, metadata !311, metadata !"f", metadata !35, i32 33554534, metadata !300, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [f] [line 102]
!479 = metadata !{i32 102, i32 47, metadata !311, null}
!480 = metadata !{i32 786689, metadata !311, metadata !"p1", metadata !35, i32 50331750, metadata !300, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [p1] [line 102]
!481 = metadata !{i32 102, i32 64, metadata !311, null}
!482 = metadata !{i32 786689, metadata !311, metadata !"p2", metadata !35, i32 67108967, metadata !300, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [p2] [line 103]
!483 = metadata !{i32 103, i32 33, metadata !311, null}
!484 = metadata !{i32 786689, metadata !311, metadata !"p3", metadata !35, i32 83886183, metadata !63, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [p3] [line 103]
!485 = metadata !{i32 103, i32 45, metadata !311, null}
!486 = metadata !{i32 786689, metadata !311, metadata !"hasres", metadata !35, i32 100663399, metadata !75, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [hasres] [line 103]
!487 = metadata !{i32 103, i32 53, metadata !311, null}
!488 = metadata !{i32 786688, metadata !311, metadata !"result", metadata !35, i32 104, metadata !104, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [result] [line 104]
!489 = metadata !{i32 104, i32 13, metadata !311, null}
!490 = metadata !{i32 104, i32 3, metadata !311, null}
!491 = metadata !{i32 786688, metadata !311, metadata !"func", metadata !35, i32 105, metadata !62, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [func] [line 105]
!492 = metadata !{i32 105, i32 9, metadata !311, null}
!493 = metadata !{i32 105, i32 3, metadata !311, null}
!494 = metadata !{i32 786688, metadata !495, metadata !"io1", metadata !35, i32 106, metadata !63, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [io1] [line 106]
!495 = metadata !{i32 786443, metadata !34, metadata !311, i32 106, i32 3, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltm.c]
!496 = metadata !{i32 106, i32 3, metadata !495, null}
!497 = metadata !{i32 786688, metadata !498, metadata !"io1", metadata !35, i32 107, metadata !63, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [io1] [line 107]
!498 = metadata !{i32 786443, metadata !34, metadata !311, i32 107, i32 3, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltm.c]
!499 = metadata !{i32 107, i32 3, metadata !498, null}
!500 = metadata !{i32 786688, metadata !501, metadata !"io1", metadata !35, i32 108, metadata !63, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [io1] [line 108]
!501 = metadata !{i32 786443, metadata !34, metadata !311, i32 108, i32 3, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltm.c]
!502 = metadata !{i32 108, i32 3, metadata !501, null}
!503 = metadata !{i32 109, i32 3, metadata !311, null}
!504 = metadata !{i32 110, i32 7, metadata !505, null}
!505 = metadata !{i32 786443, metadata !34, metadata !311, i32 110, i32 7, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltm.c]
!506 = metadata !{i32 786688, metadata !507, metadata !"io1", metadata !35, i32 111, metadata !63, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [io1] [line 111]
!507 = metadata !{i32 786443, metadata !34, metadata !505, i32 111, i32 5, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltm.c]
!508 = metadata !{i32 111, i32 5, metadata !507, null}
!509 = metadata !{i32 113, i32 7, metadata !510, null}
!510 = metadata !{i32 786443, metadata !34, metadata !311, i32 113, i32 7, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltm.c]
!511 = metadata !{i32 114, i32 5, metadata !510, null}
!512 = metadata !{i32 116, i32 5, metadata !510, null}
!513 = metadata !{i32 117, i32 7, metadata !514, null}
!514 = metadata !{i32 786443, metadata !34, metadata !311, i32 117, i32 7, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltm.c]
!515 = metadata !{i32 118, i32 5, metadata !516, null}
!516 = metadata !{i32 786443, metadata !34, metadata !514, i32 117, i32 15, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltm.c]
!517 = metadata !{i32 786688, metadata !518, metadata !"io1", metadata !35, i32 119, metadata !63, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [io1] [line 119]
!518 = metadata !{i32 786443, metadata !34, metadata !516, i32 119, i32 5, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltm.c]
!519 = metadata !{i32 119, i32 5, metadata !518, null}
!520 = metadata !{i32 120, i32 3, metadata !516, null}
!521 = metadata !{i32 121, i32 1, metadata !311, null}
!522 = metadata !{i32 786689, metadata !314, metadata !"L", metadata !35, i32 16777340, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 124]
!523 = metadata !{i32 124, i32 32, metadata !314, null}
!524 = metadata !{i32 786689, metadata !314, metadata !"p1", metadata !35, i32 33554556, metadata !300, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [p1] [line 124]
!525 = metadata !{i32 124, i32 49, metadata !314, null}
!526 = metadata !{i32 786689, metadata !314, metadata !"p2", metadata !35, i32 50331772, metadata !300, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [p2] [line 124]
!527 = metadata !{i32 124, i32 67, metadata !314, null}
!528 = metadata !{i32 786689, metadata !314, metadata !"res", metadata !35, i32 67108989, metadata !62, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [res] [line 125]
!529 = metadata !{i32 125, i32 27, metadata !314, null}
!530 = metadata !{i32 786689, metadata !314, metadata !"event", metadata !35, i32 83886205, metadata !304, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [event] [line 125]
!531 = metadata !{i32 125, i32 36, metadata !314, null}
!532 = metadata !{i32 786688, metadata !314, metadata !"tm", metadata !35, i32 126, metadata !300, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tm] [line 126]
!533 = metadata !{i32 126, i32 17, metadata !314, null}
!534 = metadata !{i32 126, i32 22, metadata !314, null}
!535 = metadata !{i32 127, i32 7, metadata !536, null}
!536 = metadata !{i32 786443, metadata !34, metadata !314, i32 127, i32 7, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltm.c]
!537 = metadata !{i32 128, i32 10, metadata !536, null}
!538 = metadata !{i32 129, i32 7, metadata !539, null}
!539 = metadata !{i32 786443, metadata !34, metadata !314, i32 129, i32 7, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltm.c]
!540 = metadata !{i32 129, i32 20, metadata !541, null}
!541 = metadata !{i32 786443, metadata !34, metadata !539, i32 129, i32 20, i32 1, i32 35} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltm.c]
!542 = metadata !{i32 130, i32 3, metadata !314, null}
!543 = metadata !{i32 131, i32 3, metadata !314, null}
!544 = metadata !{i32 132, i32 1, metadata !314, null}
!545 = metadata !{i32 786689, metadata !317, metadata !"L", metadata !35, i32 16777351, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 135]
!546 = metadata !{i32 135, i32 32, metadata !317, null}
!547 = metadata !{i32 786689, metadata !317, metadata !"p1", metadata !35, i32 33554567, metadata !300, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [p1] [line 135]
!548 = metadata !{i32 135, i32 49, metadata !317, null}
!549 = metadata !{i32 786689, metadata !317, metadata !"p2", metadata !35, i32 50331783, metadata !300, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [p2] [line 135]
!550 = metadata !{i32 135, i32 67, metadata !317, null}
!551 = metadata !{i32 786689, metadata !317, metadata !"res", metadata !35, i32 67109000, metadata !62, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [res] [line 136]
!552 = metadata !{i32 136, i32 27, metadata !317, null}
!553 = metadata !{i32 786689, metadata !317, metadata !"event", metadata !35, i32 83886216, metadata !304, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [event] [line 136]
!554 = metadata !{i32 136, i32 36, metadata !317, null}
!555 = metadata !{i32 137, i32 8, metadata !556, null}
!556 = metadata !{i32 786443, metadata !34, metadata !317, i32 137, i32 7, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltm.c]
!557 = metadata !{i32 138, i32 5, metadata !558, null}
!558 = metadata !{i32 786443, metadata !34, metadata !556, i32 137, i32 47, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltm.c]
!559 = metadata !{i32 140, i32 9, metadata !560, null}
!560 = metadata !{i32 786443, metadata !34, metadata !558, i32 138, i32 20, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltm.c]
!561 = metadata !{i32 786688, metadata !562, metadata !"dummy", metadata !35, i32 144, metadata !85, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dummy] [line 144]
!562 = metadata !{i32 786443, metadata !34, metadata !560, i32 143, i32 47, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltm.c]
!563 = metadata !{i32 144, i32 20, metadata !562, null}
!564 = metadata !{i32 145, i32 13, metadata !565, null}
!565 = metadata !{i32 786443, metadata !34, metadata !562, i32 145, i32 13, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltm.c]
!566 = metadata !{i32 145, i32 13, metadata !567, null}
!567 = metadata !{i32 786443, metadata !34, metadata !565, i32 145, i32 13, i32 1, i32 36} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltm.c]
!568 = metadata !{i32 145, i32 13, metadata !569, null}
!569 = metadata !{i32 786443, metadata !34, metadata !565, i32 145, i32 13, i32 2, i32 37} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltm.c]
!570 = metadata !{i32 145, i32 13, metadata !571, null}
!571 = metadata !{i32 786443, metadata !34, metadata !572, i32 145, i32 13, i32 4, i32 39} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltm.c]
!572 = metadata !{i32 786443, metadata !34, metadata !565, i32 145, i32 13, i32 3, i32 38} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltm.c]
!573 = metadata !{i32 145, i32 13, metadata !574, null}
!574 = metadata !{i32 786443, metadata !34, metadata !565, i32 145, i32 13, i32 5, i32 40} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltm.c]
!575 = metadata !{i32 145, i32 37, metadata !576, null}
!576 = metadata !{i32 786443, metadata !34, metadata !565, i32 145, i32 37, i32 6, i32 41} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltm.c]
!577 = metadata !{i32 146, i32 11, metadata !565, null}
!578 = metadata !{i32 148, i32 11, metadata !565, null}
!579 = metadata !{i32 152, i32 9, metadata !560, null}
!580 = metadata !{i32 155, i32 1, metadata !317, null}
!581 = metadata !{i32 786689, metadata !320, metadata !"L", metadata !35, i32 16777374, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 158]
!582 = metadata !{i32 158, i32 34, metadata !320, null}
!583 = metadata !{i32 786689, metadata !320, metadata !"p1", metadata !35, i32 33554590, metadata !300, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [p1] [line 158]
!584 = metadata !{i32 158, i32 51, metadata !320, null}
!585 = metadata !{i32 786689, metadata !320, metadata !"p2", metadata !35, i32 50331806, metadata !300, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [p2] [line 158]
!586 = metadata !{i32 158, i32 69, metadata !320, null}
!587 = metadata !{i32 786689, metadata !320, metadata !"event", metadata !35, i32 67109023, metadata !304, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [event] [line 159]
!588 = metadata !{i32 159, i32 27, metadata !320, null}
!589 = metadata !{i32 160, i32 8, metadata !590, null}
!590 = metadata !{i32 786443, metadata !34, metadata !320, i32 160, i32 7, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltm.c]
!591 = metadata !{i32 161, i32 5, metadata !590, null}
!592 = metadata !{i32 163, i32 5, metadata !590, null}
!593 = metadata !{i32 163, i32 5, metadata !594, null}
!594 = metadata !{i32 786443, metadata !34, metadata !590, i32 163, i32 5, i32 2, i32 43} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltm.c]
!595 = metadata !{i32 163, i32 5, metadata !596, null}
!596 = metadata !{i32 786443, metadata !34, metadata !590, i32 163, i32 5, i32 3, i32 44} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltm.c]
!597 = metadata !{i32 163, i32 5, metadata !598, null}
!598 = metadata !{i32 786443, metadata !34, metadata !590, i32 163, i32 5, i32 4, i32 45} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltm.c]
!599 = metadata !{i32 163, i32 5, metadata !600, null}
!600 = metadata !{i32 786443, metadata !34, metadata !601, i32 163, i32 5, i32 5, i32 46} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltm.c]
!601 = metadata !{i32 786443, metadata !34, metadata !590, i32 163, i32 5, i32 1, i32 42} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltm.c]
!602 = metadata !{i32 164, i32 1, metadata !320, null}
