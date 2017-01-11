; ModuleID = 'C:/Users/DevolutionX/workspace/lua/src/lapi.c'
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
%struct.UpVal = type { %struct.lua_TValue*, i32, %union.anon.3 }
%union.anon.3 = type { %struct.lua_TValue }
%struct.GCObject = type { %struct.GCObject*, i8, i8 }
%struct.lua_longjmp = type opaque
%struct.CallInfo = type { %struct.lua_TValue*, %struct.lua_TValue*, %struct.CallInfo*, %struct.CallInfo*, %union.anon.0, i32, i16, i8 }
%union.anon.0 = type { %struct.anon.2 }
%struct.anon.2 = type { i32 (%struct.lua_State*, i32, i32)*, i32, i32 }
%struct.lua_Debug = type { i32, i8*, i8*, i8*, i8*, i32, i32, i32, i8, i8, i8, i8, [60 x i8], %struct.CallInfo* }
%struct.CClosure = type { %struct.GCObject*, i8, i8, i8, %struct.GCObject*, i32 (%struct.lua_State*)*, [1 x %struct.lua_TValue] }
%union.GCUnion = type { %union.Closure, [88 x i8] }
%union.Closure = type { %struct.CClosure }
%struct.Udata = type { %struct.GCObject*, i8, i8, i8, %struct.Table*, i32, %union.Value }
%struct.LClosure = type { %struct.GCObject*, i8, i8, i8, %struct.GCObject*, %struct.Proto*, [1 x %struct.UpVal*] }
%struct.Proto = type { %struct.GCObject*, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, %struct.lua_TValue*, i32*, %struct.Proto**, i32*, %struct.LocVar*, %struct.Upvaldesc*, %struct.LClosure*, %struct.TString*, %struct.GCObject* }
%struct.LocVar = type { %struct.TString*, i32, i32 }
%struct.Upvaldesc = type { %struct.TString*, i8, i8 }
%struct.__va_list = type { i8* }
%struct.CallS = type { %struct.lua_TValue*, i32 }
%struct.Zio = type { i32, i8*, i8* (%struct.lua_State*, i8*, i32*)*, i8*, %struct.lua_State* }
%struct.anon.4 = type { %struct.UpVal*, i32 }

@lua_ident = constant [129 x i8] c"$LuaVersion: Lua 5.3.3  Copyright (C) 1994-2016 Lua.org, PUC-Rio $$LuaAuthors: R. Ierusalimschy, L. H. de Figueiredo, W. Celes $\00", align 1
@lua_version.version = internal constant double 5.030000e+02, align 8
@luaO_nilobject_ = external hidden constant %struct.lua_TValue
@luaT_typenames_ = external hidden constant [11 x i8*]
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str2 = private unnamed_addr constant [11 x i8] c"(*no name)\00", align 1

; Function Attrs: nounwind
define i32 @lua_checkstack(%struct.lua_State* %L, i32 %n) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca i32, align 4
  %res = alloca i32, align 4
  %ci = alloca %struct.CallInfo*, align 4
  %inuse = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !924), !dbg !925
  store i32 %n, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !926), !dbg !927
  call void @llvm.dbg.declare(metadata !{i32* %res}, metadata !928), !dbg !929
  call void @llvm.dbg.declare(metadata !{%struct.CallInfo** %ci}, metadata !930), !dbg !931
  %3 = load %struct.lua_State** %1, align 4, !dbg !932
  %4 = getelementptr inbounds %struct.lua_State* %3, i32 0, i32 7, !dbg !932
  %5 = load %struct.CallInfo** %4, align 4, !dbg !932
  store %struct.CallInfo* %5, %struct.CallInfo** %ci, align 4, !dbg !932
  %6 = load %struct.lua_State** %1, align 4, !dbg !933
  %7 = getelementptr inbounds %struct.lua_State* %6, i32 0, i32 9, !dbg !933
  %8 = load %struct.lua_TValue** %7, align 4, !dbg !933
  %9 = load %struct.lua_State** %1, align 4, !dbg !933
  %10 = getelementptr inbounds %struct.lua_State* %9, i32 0, i32 5, !dbg !933
  %11 = load %struct.lua_TValue** %10, align 4, !dbg !933
  %12 = ptrtoint %struct.lua_TValue* %8 to i32, !dbg !933
  %13 = ptrtoint %struct.lua_TValue* %11 to i32, !dbg !933
  %14 = sub i32 %12, %13, !dbg !933
  %15 = sdiv exact i32 %14, 16, !dbg !933
  %16 = load i32* %2, align 4, !dbg !933
  %17 = icmp sgt i32 %15, %16, !dbg !933
  br i1 %17, label %18, label %19, !dbg !933

; <label>:18                                      ; preds = %0
  store i32 1, i32* %res, align 4, !dbg !935
  br label %43, !dbg !935

; <label>:19                                      ; preds = %0
  call void @llvm.dbg.declare(metadata !{i32* %inuse}, metadata !936), !dbg !938
  %20 = load %struct.lua_State** %1, align 4, !dbg !939
  %21 = getelementptr inbounds %struct.lua_State* %20, i32 0, i32 5, !dbg !939
  %22 = load %struct.lua_TValue** %21, align 4, !dbg !939
  %23 = load %struct.lua_State** %1, align 4, !dbg !939
  %24 = getelementptr inbounds %struct.lua_State* %23, i32 0, i32 10, !dbg !939
  %25 = load %struct.lua_TValue** %24, align 4, !dbg !939
  %26 = ptrtoint %struct.lua_TValue* %22 to i32, !dbg !939
  %27 = ptrtoint %struct.lua_TValue* %25 to i32, !dbg !939
  %28 = sub i32 %26, %27, !dbg !939
  %29 = sdiv exact i32 %28, 16, !dbg !939
  %30 = add nsw i32 %29, 5, !dbg !939
  store i32 %30, i32* %inuse, align 4, !dbg !939
  %31 = load i32* %inuse, align 4, !dbg !940
  %32 = load i32* %2, align 4, !dbg !940
  %33 = sub nsw i32 1000000, %32, !dbg !940
  %34 = icmp sgt i32 %31, %33, !dbg !940
  br i1 %34, label %35, label %36, !dbg !940

; <label>:35                                      ; preds = %19
  store i32 0, i32* %res, align 4, !dbg !942
  br label %42, !dbg !942

; <label>:36                                      ; preds = %19
  %37 = load %struct.lua_State** %1, align 4, !dbg !943
  %38 = bitcast i32* %2 to i8*, !dbg !943
  %39 = call i32 @luaD_rawrunprotected(%struct.lua_State* %37, void (%struct.lua_State*, i8*)* @growstack, i8* %38), !dbg !943
  %40 = icmp eq i32 %39, 0, !dbg !943
  %41 = zext i1 %40 to i32, !dbg !943
  store i32 %41, i32* %res, align 4, !dbg !943
  br label %42

; <label>:42                                      ; preds = %36, %35
  br label %43

; <label>:43                                      ; preds = %42, %18
  %44 = load i32* %res, align 4, !dbg !944
  %45 = icmp ne i32 %44, 0, !dbg !944
  br i1 %45, label %46, label %64, !dbg !944

; <label>:46                                      ; preds = %43
  %47 = load %struct.CallInfo** %ci, align 4, !dbg !946
  %48 = getelementptr inbounds %struct.CallInfo* %47, i32 0, i32 1, !dbg !946
  %49 = load %struct.lua_TValue** %48, align 4, !dbg !946
  %50 = load %struct.lua_State** %1, align 4, !dbg !946
  %51 = getelementptr inbounds %struct.lua_State* %50, i32 0, i32 5, !dbg !946
  %52 = load %struct.lua_TValue** %51, align 4, !dbg !946
  %53 = load i32* %2, align 4, !dbg !946
  %54 = getelementptr inbounds %struct.lua_TValue* %52, i32 %53, !dbg !946
  %55 = icmp ult %struct.lua_TValue* %49, %54, !dbg !946
  br i1 %55, label %56, label %64, !dbg !946

; <label>:56                                      ; preds = %46
  %57 = load %struct.lua_State** %1, align 4, !dbg !948
  %58 = getelementptr inbounds %struct.lua_State* %57, i32 0, i32 5, !dbg !948
  %59 = load %struct.lua_TValue** %58, align 4, !dbg !948
  %60 = load i32* %2, align 4, !dbg !948
  %61 = getelementptr inbounds %struct.lua_TValue* %59, i32 %60, !dbg !948
  %62 = load %struct.CallInfo** %ci, align 4, !dbg !948
  %63 = getelementptr inbounds %struct.CallInfo* %62, i32 0, i32 1, !dbg !948
  store %struct.lua_TValue* %61, %struct.lua_TValue** %63, align 4, !dbg !948
  br label %64, !dbg !948

; <label>:64                                      ; preds = %56, %46, %43
  %65 = load i32* %res, align 4, !dbg !949
  ret i32 %65, !dbg !949
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

declare hidden i32 @luaD_rawrunprotected(%struct.lua_State*, void (%struct.lua_State*, i8*)*, i8*) #2

; Function Attrs: nounwind
define internal void @growstack(%struct.lua_State* %L, i8* %ud) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca i8*, align 4
  %size = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !950), !dbg !951
  store i8* %ud, i8** %2, align 4
  call void @llvm.dbg.declare(metadata !{i8** %2}, metadata !952), !dbg !953
  call void @llvm.dbg.declare(metadata !{i32* %size}, metadata !954), !dbg !955
  %3 = load i8** %2, align 4, !dbg !956
  %4 = bitcast i8* %3 to i32*, !dbg !956
  %5 = load i32* %4, align 4, !dbg !956
  store i32 %5, i32* %size, align 4, !dbg !956
  %6 = load %struct.lua_State** %1, align 4, !dbg !957
  %7 = load i32* %size, align 4, !dbg !957
  call void @luaD_growstack(%struct.lua_State* %6, i32 %7), !dbg !957
  ret void, !dbg !958
}

; Function Attrs: nounwind
define void @lua_xmove(%struct.lua_State* %from, %struct.lua_State* %to, i32 %n) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca %struct.lua_State*, align 4
  %3 = alloca i32, align 4
  %i = alloca i32, align 4
  %io1 = alloca %struct.lua_TValue*, align 4
  store %struct.lua_State* %from, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !959), !dbg !960
  store %struct.lua_State* %to, %struct.lua_State** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %2}, metadata !961), !dbg !962
  store i32 %n, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !963), !dbg !964
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !965), !dbg !966
  %4 = load %struct.lua_State** %1, align 4, !dbg !967
  %5 = load %struct.lua_State** %2, align 4, !dbg !967
  %6 = icmp eq %struct.lua_State* %4, %5, !dbg !967
  br i1 %6, label %7, label %8, !dbg !967

; <label>:7                                       ; preds = %0
  br label %39, !dbg !969

; <label>:8                                       ; preds = %0
  %9 = load i32* %3, align 4, !dbg !971
  %10 = load %struct.lua_State** %1, align 4, !dbg !971
  %11 = getelementptr inbounds %struct.lua_State* %10, i32 0, i32 5, !dbg !971
  %12 = load %struct.lua_TValue** %11, align 4, !dbg !971
  %13 = sub i32 0, %9, !dbg !971
  %14 = getelementptr inbounds %struct.lua_TValue* %12, i32 %13, !dbg !971
  store %struct.lua_TValue* %14, %struct.lua_TValue** %11, align 4, !dbg !971
  store i32 0, i32* %i, align 4, !dbg !972
  br label %15, !dbg !972

; <label>:15                                      ; preds = %36, %8
  %16 = load i32* %i, align 4, !dbg !974
  %17 = load i32* %3, align 4, !dbg !974
  %18 = icmp slt i32 %16, %17, !dbg !974
  br i1 %18, label %19, label %39, !dbg !974

; <label>:19                                      ; preds = %15
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %io1}, metadata !977), !dbg !980
  %20 = load %struct.lua_State** %2, align 4, !dbg !980
  %21 = getelementptr inbounds %struct.lua_State* %20, i32 0, i32 5, !dbg !980
  %22 = load %struct.lua_TValue** %21, align 4, !dbg !980
  store %struct.lua_TValue* %22, %struct.lua_TValue** %io1, align 4, !dbg !980
  %23 = load %struct.lua_TValue** %io1, align 4, !dbg !980
  %24 = load %struct.lua_State** %1, align 4, !dbg !980
  %25 = getelementptr inbounds %struct.lua_State* %24, i32 0, i32 5, !dbg !980
  %26 = load %struct.lua_TValue** %25, align 4, !dbg !980
  %27 = load i32* %i, align 4, !dbg !980
  %28 = getelementptr inbounds %struct.lua_TValue* %26, i32 %27, !dbg !980
  %29 = bitcast %struct.lua_TValue* %23 to i8*, !dbg !980
  %30 = bitcast %struct.lua_TValue* %28 to i8*, !dbg !980
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %29, i8* %30, i32 16, i32 8, i1 false), !dbg !980
  %31 = load %struct.lua_State** %2, align 4, !dbg !980
  %32 = load %struct.lua_State** %2, align 4, !dbg !981
  %33 = getelementptr inbounds %struct.lua_State* %32, i32 0, i32 5, !dbg !981
  %34 = load %struct.lua_TValue** %33, align 4, !dbg !981
  %35 = getelementptr inbounds %struct.lua_TValue* %34, i32 1, !dbg !981
  store %struct.lua_TValue* %35, %struct.lua_TValue** %33, align 4, !dbg !981
  br label %36, !dbg !982

; <label>:36                                      ; preds = %19
  %37 = load i32* %i, align 4, !dbg !983
  %38 = add nsw i32 %37, 1, !dbg !983
  store i32 %38, i32* %i, align 4, !dbg !983
  br label %15, !dbg !983

; <label>:39                                      ; preds = %7, %15
  ret void, !dbg !984
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture, i8* nocapture readonly, i32, i32, i1) #3

; Function Attrs: nounwind
define i32 (%struct.lua_State*)* @lua_atpanic(%struct.lua_State* %L, i32 (%struct.lua_State*)* %panicf) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca i32 (%struct.lua_State*)*, align 4
  %old = alloca i32 (%struct.lua_State*)*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !985), !dbg !986
  store i32 (%struct.lua_State*)* %panicf, i32 (%struct.lua_State*)** %2, align 4
  call void @llvm.dbg.declare(metadata !{i32 (%struct.lua_State*)** %2}, metadata !987), !dbg !988
  call void @llvm.dbg.declare(metadata !{i32 (%struct.lua_State*)** %old}, metadata !989), !dbg !990
  %3 = load %struct.lua_State** %1, align 4, !dbg !991
  %4 = getelementptr inbounds %struct.lua_State* %3, i32 0, i32 6, !dbg !991
  %5 = load %struct.global_State** %4, align 4, !dbg !991
  %6 = getelementptr inbounds %struct.global_State* %5, i32 0, i32 27, !dbg !991
  %7 = load i32 (%struct.lua_State*)** %6, align 4, !dbg !991
  store i32 (%struct.lua_State*)* %7, i32 (%struct.lua_State*)** %old, align 4, !dbg !991
  %8 = load i32 (%struct.lua_State*)** %2, align 4, !dbg !992
  %9 = load %struct.lua_State** %1, align 4, !dbg !992
  %10 = getelementptr inbounds %struct.lua_State* %9, i32 0, i32 6, !dbg !992
  %11 = load %struct.global_State** %10, align 4, !dbg !992
  %12 = getelementptr inbounds %struct.global_State* %11, i32 0, i32 27, !dbg !992
  store i32 (%struct.lua_State*)* %8, i32 (%struct.lua_State*)** %12, align 4, !dbg !992
  %13 = load i32 (%struct.lua_State*)** %old, align 4, !dbg !993
  ret i32 (%struct.lua_State*)* %13, !dbg !993
}

; Function Attrs: nounwind
define double* @lua_version(%struct.lua_State* %L) #0 {
  %1 = alloca double*, align 4
  %2 = alloca %struct.lua_State*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %2}, metadata !994), !dbg !995
  %3 = load %struct.lua_State** %2, align 4, !dbg !996
  %4 = icmp eq %struct.lua_State* %3, null, !dbg !996
  br i1 %4, label %5, label %6, !dbg !996

; <label>:5                                       ; preds = %0
  store double* @lua_version.version, double** %1, !dbg !998
  br label %12, !dbg !998

; <label>:6                                       ; preds = %0
  %7 = load %struct.lua_State** %2, align 4, !dbg !1000
  %8 = getelementptr inbounds %struct.lua_State* %7, i32 0, i32 6, !dbg !1000
  %9 = load %struct.global_State** %8, align 4, !dbg !1000
  %10 = getelementptr inbounds %struct.global_State* %9, i32 0, i32 29, !dbg !1000
  %11 = load double** %10, align 4, !dbg !1000
  store double* %11, double** %1, !dbg !1000
  br label %12, !dbg !1000

; <label>:12                                      ; preds = %6, %5
  %13 = load double** %1, !dbg !1001
  ret double* %13, !dbg !1001
}

; Function Attrs: nounwind
define i32 @lua_absindex(%struct.lua_State* %L, i32 %idx) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !1002), !dbg !1003
  store i32 %idx, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !1004), !dbg !1005
  %3 = load i32* %2, align 4, !dbg !1006
  %4 = icmp sgt i32 %3, 0, !dbg !1006
  br i1 %4, label %8, label %5, !dbg !1006

; <label>:5                                       ; preds = %0
  %6 = load i32* %2, align 4, !dbg !1007
  %7 = icmp sle i32 %6, -1001000, !dbg !1007
  br i1 %7, label %8, label %10, !dbg !1007

; <label>:8                                       ; preds = %5, %0
  %9 = load i32* %2, align 4, !dbg !1009
  br label %25, !dbg !1009

; <label>:10                                      ; preds = %5
  %11 = load %struct.lua_State** %1, align 4, !dbg !1012
  %12 = getelementptr inbounds %struct.lua_State* %11, i32 0, i32 5, !dbg !1012
  %13 = load %struct.lua_TValue** %12, align 4, !dbg !1012
  %14 = load %struct.lua_State** %1, align 4, !dbg !1012
  %15 = getelementptr inbounds %struct.lua_State* %14, i32 0, i32 7, !dbg !1012
  %16 = load %struct.CallInfo** %15, align 4, !dbg !1012
  %17 = getelementptr inbounds %struct.CallInfo* %16, i32 0, i32 0, !dbg !1012
  %18 = load %struct.lua_TValue** %17, align 4, !dbg !1012
  %19 = ptrtoint %struct.lua_TValue* %13 to i32, !dbg !1012
  %20 = ptrtoint %struct.lua_TValue* %18 to i32, !dbg !1012
  %21 = sub i32 %19, %20, !dbg !1012
  %22 = sdiv exact i32 %21, 16, !dbg !1012
  %23 = load i32* %2, align 4, !dbg !1012
  %24 = add nsw i32 %22, %23, !dbg !1012
  br label %25, !dbg !1012

; <label>:25                                      ; preds = %10, %8
  %26 = phi i32 [ %9, %8 ], [ %24, %10 ], !dbg !1006
  ret i32 %26, !dbg !1014
}

; Function Attrs: nounwind
define i32 @lua_gettop(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !1017), !dbg !1018
  %2 = load %struct.lua_State** %1, align 4, !dbg !1019
  %3 = getelementptr inbounds %struct.lua_State* %2, i32 0, i32 5, !dbg !1019
  %4 = load %struct.lua_TValue** %3, align 4, !dbg !1019
  %5 = load %struct.lua_State** %1, align 4, !dbg !1019
  %6 = getelementptr inbounds %struct.lua_State* %5, i32 0, i32 7, !dbg !1019
  %7 = load %struct.CallInfo** %6, align 4, !dbg !1019
  %8 = getelementptr inbounds %struct.CallInfo* %7, i32 0, i32 0, !dbg !1019
  %9 = load %struct.lua_TValue** %8, align 4, !dbg !1019
  %10 = getelementptr inbounds %struct.lua_TValue* %9, i32 1, !dbg !1019
  %11 = ptrtoint %struct.lua_TValue* %4 to i32, !dbg !1019
  %12 = ptrtoint %struct.lua_TValue* %10 to i32, !dbg !1019
  %13 = sub i32 %11, %12, !dbg !1019
  %14 = sdiv exact i32 %13, 16, !dbg !1019
  ret i32 %14, !dbg !1019
}

; Function Attrs: nounwind
define void @lua_settop(%struct.lua_State* %L, i32 %idx) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca i32, align 4
  %func = alloca %struct.lua_TValue*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !1020), !dbg !1021
  store i32 %idx, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !1022), !dbg !1023
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %func}, metadata !1024), !dbg !1025
  %3 = load %struct.lua_State** %1, align 4, !dbg !1026
  %4 = getelementptr inbounds %struct.lua_State* %3, i32 0, i32 7, !dbg !1026
  %5 = load %struct.CallInfo** %4, align 4, !dbg !1026
  %6 = getelementptr inbounds %struct.CallInfo* %5, i32 0, i32 0, !dbg !1026
  %7 = load %struct.lua_TValue** %6, align 4, !dbg !1026
  store %struct.lua_TValue* %7, %struct.lua_TValue** %func, align 4, !dbg !1026
  %8 = load i32* %2, align 4, !dbg !1027
  %9 = icmp sge i32 %8, 0, !dbg !1027
  br i1 %9, label %10, label %33, !dbg !1027

; <label>:10                                      ; preds = %0
  br label %11, !dbg !1029

; <label>:11                                      ; preds = %20, %10
  %12 = load %struct.lua_State** %1, align 4, !dbg !1031
  %13 = getelementptr inbounds %struct.lua_State* %12, i32 0, i32 5, !dbg !1031
  %14 = load %struct.lua_TValue** %13, align 4, !dbg !1031
  %15 = load %struct.lua_TValue** %func, align 4, !dbg !1031
  %16 = getelementptr inbounds %struct.lua_TValue* %15, i32 1, !dbg !1031
  %17 = load i32* %2, align 4, !dbg !1031
  %18 = getelementptr inbounds %struct.lua_TValue* %16, i32 %17, !dbg !1031
  %19 = icmp ult %struct.lua_TValue* %14, %18, !dbg !1031
  br i1 %19, label %20, label %26, !dbg !1031

; <label>:20                                      ; preds = %11
  %21 = load %struct.lua_State** %1, align 4, !dbg !1033
  %22 = getelementptr inbounds %struct.lua_State* %21, i32 0, i32 5, !dbg !1033
  %23 = load %struct.lua_TValue** %22, align 4, !dbg !1033
  %24 = getelementptr inbounds %struct.lua_TValue* %23, i32 1, !dbg !1033
  store %struct.lua_TValue* %24, %struct.lua_TValue** %22, align 4, !dbg !1033
  %25 = getelementptr inbounds %struct.lua_TValue* %23, i32 0, i32 1, !dbg !1033
  store i32 0, i32* %25, align 4, !dbg !1033
  br label %11, !dbg !1033

; <label>:26                                      ; preds = %11
  %27 = load %struct.lua_TValue** %func, align 4, !dbg !1034
  %28 = getelementptr inbounds %struct.lua_TValue* %27, i32 1, !dbg !1034
  %29 = load i32* %2, align 4, !dbg !1034
  %30 = getelementptr inbounds %struct.lua_TValue* %28, i32 %29, !dbg !1034
  %31 = load %struct.lua_State** %1, align 4, !dbg !1034
  %32 = getelementptr inbounds %struct.lua_State* %31, i32 0, i32 5, !dbg !1034
  store %struct.lua_TValue* %30, %struct.lua_TValue** %32, align 4, !dbg !1034
  br label %40, !dbg !1035

; <label>:33                                      ; preds = %0
  %34 = load i32* %2, align 4, !dbg !1036
  %35 = add nsw i32 %34, 1, !dbg !1036
  %36 = load %struct.lua_State** %1, align 4, !dbg !1036
  %37 = getelementptr inbounds %struct.lua_State* %36, i32 0, i32 5, !dbg !1036
  %38 = load %struct.lua_TValue** %37, align 4, !dbg !1036
  %39 = getelementptr inbounds %struct.lua_TValue* %38, i32 %35, !dbg !1036
  store %struct.lua_TValue* %39, %struct.lua_TValue** %37, align 4, !dbg !1036
  br label %40

; <label>:40                                      ; preds = %33, %26
  ret void, !dbg !1038
}

; Function Attrs: nounwind
define void @lua_rotate(%struct.lua_State* %L, i32 %idx, i32 %n) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %p = alloca %struct.lua_TValue*, align 4
  %t = alloca %struct.lua_TValue*, align 4
  %m = alloca %struct.lua_TValue*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !1039), !dbg !1040
  store i32 %idx, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !1041), !dbg !1042
  store i32 %n, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !1043), !dbg !1044
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %p}, metadata !1045), !dbg !1046
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %t}, metadata !1047), !dbg !1048
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %m}, metadata !1049), !dbg !1050
  %4 = load %struct.lua_State** %1, align 4, !dbg !1051
  %5 = getelementptr inbounds %struct.lua_State* %4, i32 0, i32 5, !dbg !1051
  %6 = load %struct.lua_TValue** %5, align 4, !dbg !1051
  %7 = getelementptr inbounds %struct.lua_TValue* %6, i32 -1, !dbg !1051
  store %struct.lua_TValue* %7, %struct.lua_TValue** %t, align 4, !dbg !1051
  %8 = load %struct.lua_State** %1, align 4, !dbg !1052
  %9 = load i32* %2, align 4, !dbg !1052
  %10 = call %struct.lua_TValue* @index2addr(%struct.lua_State* %8, i32 %9), !dbg !1052
  store %struct.lua_TValue* %10, %struct.lua_TValue** %p, align 4, !dbg !1052
  %11 = load i32* %3, align 4, !dbg !1053
  %12 = icmp sge i32 %11, 0, !dbg !1053
  br i1 %12, label %13, label %18, !dbg !1053

; <label>:13                                      ; preds = %0
  %14 = load %struct.lua_TValue** %t, align 4, !dbg !1054
  %15 = load i32* %3, align 4, !dbg !1054
  %16 = sub i32 0, %15, !dbg !1054
  %17 = getelementptr inbounds %struct.lua_TValue* %14, i32 %16, !dbg !1054
  br label %24, !dbg !1054

; <label>:18                                      ; preds = %0
  %19 = load %struct.lua_TValue** %p, align 4, !dbg !1056
  %20 = load i32* %3, align 4, !dbg !1056
  %21 = sub i32 0, %20, !dbg !1056
  %22 = getelementptr inbounds %struct.lua_TValue* %19, i32 %21, !dbg !1056
  %23 = getelementptr inbounds %struct.lua_TValue* %22, i32 -1, !dbg !1056
  br label %24, !dbg !1056

; <label>:24                                      ; preds = %18, %13
  %25 = phi %struct.lua_TValue* [ %17, %13 ], [ %23, %18 ], !dbg !1053
  store %struct.lua_TValue* %25, %struct.lua_TValue** %m, align 4, !dbg !1058
  %26 = load %struct.lua_State** %1, align 4, !dbg !1061
  %27 = load %struct.lua_TValue** %p, align 4, !dbg !1061
  %28 = load %struct.lua_TValue** %m, align 4, !dbg !1061
  call void @reverse(%struct.lua_State* %26, %struct.lua_TValue* %27, %struct.lua_TValue* %28), !dbg !1061
  %29 = load %struct.lua_State** %1, align 4, !dbg !1062
  %30 = load %struct.lua_TValue** %m, align 4, !dbg !1062
  %31 = getelementptr inbounds %struct.lua_TValue* %30, i32 1, !dbg !1062
  %32 = load %struct.lua_TValue** %t, align 4, !dbg !1062
  call void @reverse(%struct.lua_State* %29, %struct.lua_TValue* %31, %struct.lua_TValue* %32), !dbg !1062
  %33 = load %struct.lua_State** %1, align 4, !dbg !1063
  %34 = load %struct.lua_TValue** %p, align 4, !dbg !1063
  %35 = load %struct.lua_TValue** %t, align 4, !dbg !1063
  call void @reverse(%struct.lua_State* %33, %struct.lua_TValue* %34, %struct.lua_TValue* %35), !dbg !1063
  ret void, !dbg !1064
}

; Function Attrs: nounwind
define internal %struct.lua_TValue* @index2addr(%struct.lua_State* %L, i32 %idx) #0 {
  %1 = alloca %struct.lua_TValue*, align 4
  %2 = alloca %struct.lua_State*, align 4
  %3 = alloca i32, align 4
  %ci = alloca %struct.CallInfo*, align 4
  %o = alloca %struct.lua_TValue*, align 4
  %func = alloca %struct.CClosure*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %2}, metadata !1065), !dbg !1066
  store i32 %idx, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !1067), !dbg !1068
  call void @llvm.dbg.declare(metadata !{%struct.CallInfo** %ci}, metadata !1069), !dbg !1070
  %4 = load %struct.lua_State** %2, align 4, !dbg !1071
  %5 = getelementptr inbounds %struct.lua_State* %4, i32 0, i32 7, !dbg !1071
  %6 = load %struct.CallInfo** %5, align 4, !dbg !1071
  store %struct.CallInfo* %6, %struct.CallInfo** %ci, align 4, !dbg !1071
  %7 = load i32* %3, align 4, !dbg !1072
  %8 = icmp sgt i32 %7, 0, !dbg !1072
  br i1 %8, label %9, label %23, !dbg !1072

; <label>:9                                       ; preds = %0
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %o}, metadata !1074), !dbg !1076
  %10 = load %struct.CallInfo** %ci, align 4, !dbg !1077
  %11 = getelementptr inbounds %struct.CallInfo* %10, i32 0, i32 0, !dbg !1077
  %12 = load %struct.lua_TValue** %11, align 4, !dbg !1077
  %13 = load i32* %3, align 4, !dbg !1077
  %14 = getelementptr inbounds %struct.lua_TValue* %12, i32 %13, !dbg !1077
  store %struct.lua_TValue* %14, %struct.lua_TValue** %o, align 4, !dbg !1077
  %15 = load %struct.lua_TValue** %o, align 4, !dbg !1078
  %16 = load %struct.lua_State** %2, align 4, !dbg !1078
  %17 = getelementptr inbounds %struct.lua_State* %16, i32 0, i32 5, !dbg !1078
  %18 = load %struct.lua_TValue** %17, align 4, !dbg !1078
  %19 = icmp uge %struct.lua_TValue* %15, %18, !dbg !1078
  br i1 %19, label %20, label %21, !dbg !1078

; <label>:20                                      ; preds = %9
  store %struct.lua_TValue* @luaO_nilobject_, %struct.lua_TValue** %1, !dbg !1080
  br label %75, !dbg !1080

; <label>:21                                      ; preds = %9
  %22 = load %struct.lua_TValue** %o, align 4, !dbg !1082
  store %struct.lua_TValue* %22, %struct.lua_TValue** %1, !dbg !1082
  br label %75, !dbg !1082

; <label>:23                                      ; preds = %0
  %24 = load i32* %3, align 4, !dbg !1083
  %25 = icmp sle i32 %24, -1001000, !dbg !1083
  br i1 %25, label %32, label %26, !dbg !1083

; <label>:26                                      ; preds = %23
  %27 = load %struct.lua_State** %2, align 4, !dbg !1085
  %28 = getelementptr inbounds %struct.lua_State* %27, i32 0, i32 5, !dbg !1085
  %29 = load %struct.lua_TValue** %28, align 4, !dbg !1085
  %30 = load i32* %3, align 4, !dbg !1085
  %31 = getelementptr inbounds %struct.lua_TValue* %29, i32 %30, !dbg !1085
  store %struct.lua_TValue* %31, %struct.lua_TValue** %1, !dbg !1085
  br label %75, !dbg !1085

; <label>:32                                      ; preds = %23
  %33 = load i32* %3, align 4, !dbg !1087
  %34 = icmp eq i32 %33, -1001000, !dbg !1087
  br i1 %34, label %35, label %40, !dbg !1087

; <label>:35                                      ; preds = %32
  %36 = load %struct.lua_State** %2, align 4, !dbg !1089
  %37 = getelementptr inbounds %struct.lua_State* %36, i32 0, i32 6, !dbg !1089
  %38 = load %struct.global_State** %37, align 4, !dbg !1089
  %39 = getelementptr inbounds %struct.global_State* %38, i32 0, i32 7, !dbg !1089
  store %struct.lua_TValue* %39, %struct.lua_TValue** %1, !dbg !1089
  br label %75, !dbg !1089

; <label>:40                                      ; preds = %32
  %41 = load i32* %3, align 4, !dbg !1090
  %42 = sub nsw i32 -1001000, %41, !dbg !1090
  store i32 %42, i32* %3, align 4, !dbg !1090
  %43 = load %struct.CallInfo** %ci, align 4, !dbg !1092
  %44 = getelementptr inbounds %struct.CallInfo* %43, i32 0, i32 0, !dbg !1092
  %45 = load %struct.lua_TValue** %44, align 4, !dbg !1092
  %46 = getelementptr inbounds %struct.lua_TValue* %45, i32 0, i32 1, !dbg !1092
  %47 = load i32* %46, align 4, !dbg !1092
  %48 = icmp eq i32 %47, 22, !dbg !1092
  br i1 %48, label %49, label %50, !dbg !1092

; <label>:49                                      ; preds = %40
  store %struct.lua_TValue* @luaO_nilobject_, %struct.lua_TValue** %1, !dbg !1094
  br label %75, !dbg !1094

; <label>:50                                      ; preds = %40
  call void @llvm.dbg.declare(metadata !{%struct.CClosure** %func}, metadata !1095), !dbg !1097
  %51 = load %struct.CallInfo** %ci, align 4, !dbg !1098
  %52 = getelementptr inbounds %struct.CallInfo* %51, i32 0, i32 0, !dbg !1098
  %53 = load %struct.lua_TValue** %52, align 4, !dbg !1098
  %54 = getelementptr inbounds %struct.lua_TValue* %53, i32 0, i32 0, !dbg !1098
  %55 = bitcast %union.Value* %54 to %struct.GCObject**, !dbg !1098
  %56 = load %struct.GCObject** %55, align 4, !dbg !1098
  %57 = bitcast %struct.GCObject* %56 to %union.GCUnion*, !dbg !1098
  %58 = bitcast %union.GCUnion* %57 to %union.Closure*, !dbg !1098
  %59 = bitcast %union.Closure* %58 to %struct.CClosure*, !dbg !1098
  store %struct.CClosure* %59, %struct.CClosure** %func, align 4, !dbg !1098
  %60 = load i32* %3, align 4, !dbg !1099
  %61 = load %struct.CClosure** %func, align 4, !dbg !1099
  %62 = getelementptr inbounds %struct.CClosure* %61, i32 0, i32 3, !dbg !1099
  %63 = load i8* %62, align 1, !dbg !1099
  %64 = zext i8 %63 to i32, !dbg !1099
  %65 = icmp sle i32 %60, %64, !dbg !1099
  br i1 %65, label %66, label %72, !dbg !1099

; <label>:66                                      ; preds = %50
  %67 = load i32* %3, align 4, !dbg !1100
  %68 = sub nsw i32 %67, 1, !dbg !1100
  %69 = load %struct.CClosure** %func, align 4, !dbg !1100
  %70 = getelementptr inbounds %struct.CClosure* %69, i32 0, i32 6, !dbg !1100
  %71 = getelementptr inbounds [1 x %struct.lua_TValue]* %70, i32 0, i32 %68, !dbg !1100
  br label %73, !dbg !1100

; <label>:72                                      ; preds = %50
  br label %73, !dbg !1102

; <label>:73                                      ; preds = %72, %66
  %74 = phi %struct.lua_TValue* [ %71, %66 ], [ @luaO_nilobject_, %72 ], !dbg !1099
  store %struct.lua_TValue* %74, %struct.lua_TValue** %1, !dbg !1104
  br label %75, !dbg !1104

; <label>:75                                      ; preds = %73, %49, %35, %26, %21, %20
  %76 = load %struct.lua_TValue** %1, !dbg !1107
  ret %struct.lua_TValue* %76, !dbg !1107
}

; Function Attrs: nounwind
define internal void @reverse(%struct.lua_State* %L, %struct.lua_TValue* %from, %struct.lua_TValue* %to) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca %struct.lua_TValue*, align 4
  %3 = alloca %struct.lua_TValue*, align 4
  %temp = alloca %struct.lua_TValue, align 8
  %io1 = alloca %struct.lua_TValue*, align 4
  %io11 = alloca %struct.lua_TValue*, align 4
  %io12 = alloca %struct.lua_TValue*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !1108), !dbg !1109
  store %struct.lua_TValue* %from, %struct.lua_TValue** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %2}, metadata !1110), !dbg !1111
  store %struct.lua_TValue* %to, %struct.lua_TValue** %3, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %3}, metadata !1112), !dbg !1113
  br label %4, !dbg !1114

; <label>:4                                       ; preds = %25, %0
  %5 = load %struct.lua_TValue** %2, align 4, !dbg !1116
  %6 = load %struct.lua_TValue** %3, align 4, !dbg !1116
  %7 = icmp ult %struct.lua_TValue* %5, %6, !dbg !1116
  br i1 %7, label %8, label %30, !dbg !1116

; <label>:8                                       ; preds = %4
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue* %temp}, metadata !1119), !dbg !1121
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %io1}, metadata !1122), !dbg !1124
  store %struct.lua_TValue* %temp, %struct.lua_TValue** %io1, align 4, !dbg !1124
  %9 = load %struct.lua_TValue** %io1, align 4, !dbg !1124
  %10 = load %struct.lua_TValue** %2, align 4, !dbg !1124
  %11 = bitcast %struct.lua_TValue* %9 to i8*, !dbg !1124
  %12 = bitcast %struct.lua_TValue* %10 to i8*, !dbg !1124
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %11, i8* %12, i32 16, i32 8, i1 false), !dbg !1124
  %13 = load %struct.lua_State** %1, align 4, !dbg !1124
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %io11}, metadata !1125), !dbg !1127
  %14 = load %struct.lua_TValue** %2, align 4, !dbg !1127
  store %struct.lua_TValue* %14, %struct.lua_TValue** %io11, align 4, !dbg !1127
  %15 = load %struct.lua_TValue** %io11, align 4, !dbg !1127
  %16 = load %struct.lua_TValue** %3, align 4, !dbg !1127
  %17 = bitcast %struct.lua_TValue* %15 to i8*, !dbg !1127
  %18 = bitcast %struct.lua_TValue* %16 to i8*, !dbg !1127
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %17, i8* %18, i32 16, i32 8, i1 false), !dbg !1127
  %19 = load %struct.lua_State** %1, align 4, !dbg !1127
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %io12}, metadata !1128), !dbg !1130
  %20 = load %struct.lua_TValue** %3, align 4, !dbg !1130
  store %struct.lua_TValue* %20, %struct.lua_TValue** %io12, align 4, !dbg !1130
  %21 = load %struct.lua_TValue** %io12, align 4, !dbg !1130
  %22 = bitcast %struct.lua_TValue* %21 to i8*, !dbg !1130
  %23 = bitcast %struct.lua_TValue* %temp to i8*, !dbg !1130
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %22, i8* %23, i32 16, i32 8, i1 false), !dbg !1130
  %24 = load %struct.lua_State** %1, align 4, !dbg !1130
  br label %25, !dbg !1131

; <label>:25                                      ; preds = %8
  %26 = load %struct.lua_TValue** %2, align 4, !dbg !1132
  %27 = getelementptr inbounds %struct.lua_TValue* %26, i32 1, !dbg !1132
  store %struct.lua_TValue* %27, %struct.lua_TValue** %2, align 4, !dbg !1132
  %28 = load %struct.lua_TValue** %3, align 4, !dbg !1132
  %29 = getelementptr inbounds %struct.lua_TValue* %28, i32 -1, !dbg !1132
  store %struct.lua_TValue* %29, %struct.lua_TValue** %3, align 4, !dbg !1132
  br label %4, !dbg !1132

; <label>:30                                      ; preds = %4
  ret void, !dbg !1133
}

; Function Attrs: nounwind
define void @lua_copy(%struct.lua_State* %L, i32 %fromidx, i32 %toidx) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %fr = alloca %struct.lua_TValue*, align 4
  %to = alloca %struct.lua_TValue*, align 4
  %io1 = alloca %struct.lua_TValue*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !1134), !dbg !1135
  store i32 %fromidx, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !1136), !dbg !1137
  store i32 %toidx, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !1138), !dbg !1139
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %fr}, metadata !1140), !dbg !1141
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %to}, metadata !1142), !dbg !1143
  %4 = load %struct.lua_State** %1, align 4, !dbg !1144
  %5 = load i32* %2, align 4, !dbg !1144
  %6 = call %struct.lua_TValue* @index2addr(%struct.lua_State* %4, i32 %5), !dbg !1144
  store %struct.lua_TValue* %6, %struct.lua_TValue** %fr, align 4, !dbg !1144
  %7 = load %struct.lua_State** %1, align 4, !dbg !1145
  %8 = load i32* %3, align 4, !dbg !1145
  %9 = call %struct.lua_TValue* @index2addr(%struct.lua_State* %7, i32 %8), !dbg !1145
  store %struct.lua_TValue* %9, %struct.lua_TValue** %to, align 4, !dbg !1145
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %io1}, metadata !1146), !dbg !1148
  %10 = load %struct.lua_TValue** %to, align 4, !dbg !1148
  store %struct.lua_TValue* %10, %struct.lua_TValue** %io1, align 4, !dbg !1148
  %11 = load %struct.lua_TValue** %io1, align 4, !dbg !1148
  %12 = load %struct.lua_TValue** %fr, align 4, !dbg !1148
  %13 = bitcast %struct.lua_TValue* %11 to i8*, !dbg !1148
  %14 = bitcast %struct.lua_TValue* %12 to i8*, !dbg !1148
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %13, i8* %14, i32 16, i32 8, i1 false), !dbg !1148
  %15 = load %struct.lua_State** %1, align 4, !dbg !1148
  %16 = load i32* %3, align 4, !dbg !1149
  %17 = icmp slt i32 %16, -1001000, !dbg !1149
  br i1 %17, label %18, label %72, !dbg !1149

; <label>:18                                      ; preds = %0
  %19 = load %struct.lua_TValue** %fr, align 4, !dbg !1151
  %20 = getelementptr inbounds %struct.lua_TValue* %19, i32 0, i32 1, !dbg !1151
  %21 = load i32* %20, align 4, !dbg !1151
  %22 = and i32 %21, 64, !dbg !1151
  %23 = icmp ne i32 %22, 0, !dbg !1151
  br i1 %23, label %24, label %70, !dbg !1151

; <label>:24                                      ; preds = %18
  %25 = load %struct.lua_State** %1, align 4, !dbg !1152
  %26 = getelementptr inbounds %struct.lua_State* %25, i32 0, i32 7, !dbg !1152
  %27 = load %struct.CallInfo** %26, align 4, !dbg !1152
  %28 = getelementptr inbounds %struct.CallInfo* %27, i32 0, i32 0, !dbg !1152
  %29 = load %struct.lua_TValue** %28, align 4, !dbg !1152
  %30 = getelementptr inbounds %struct.lua_TValue* %29, i32 0, i32 0, !dbg !1152
  %31 = bitcast %union.Value* %30 to %struct.GCObject**, !dbg !1152
  %32 = load %struct.GCObject** %31, align 4, !dbg !1152
  %33 = bitcast %struct.GCObject* %32 to %union.GCUnion*, !dbg !1152
  %34 = bitcast %union.GCUnion* %33 to %union.Closure*, !dbg !1152
  %35 = bitcast %union.Closure* %34 to %struct.CClosure*, !dbg !1152
  %36 = getelementptr inbounds %struct.CClosure* %35, i32 0, i32 2, !dbg !1152
  %37 = load i8* %36, align 1, !dbg !1152
  %38 = zext i8 %37 to i32, !dbg !1152
  %39 = and i32 %38, 4, !dbg !1152
  %40 = icmp ne i32 %39, 0, !dbg !1152
  br i1 %40, label %41, label %70, !dbg !1152

; <label>:41                                      ; preds = %24
  %42 = load %struct.lua_TValue** %fr, align 4, !dbg !1154
  %43 = getelementptr inbounds %struct.lua_TValue* %42, i32 0, i32 0, !dbg !1154
  %44 = bitcast %union.Value* %43 to %struct.GCObject**, !dbg !1154
  %45 = load %struct.GCObject** %44, align 4, !dbg !1154
  %46 = getelementptr inbounds %struct.GCObject* %45, i32 0, i32 2, !dbg !1154
  %47 = load i8* %46, align 1, !dbg !1154
  %48 = zext i8 %47 to i32, !dbg !1154
  %49 = and i32 %48, 3, !dbg !1154
  %50 = icmp ne i32 %49, 0, !dbg !1154
  br i1 %50, label %51, label %70, !dbg !1154

; <label>:51                                      ; preds = %41
  %52 = load %struct.lua_State** %1, align 4, !dbg !1156
  %53 = load %struct.lua_State** %1, align 4, !dbg !1156
  %54 = getelementptr inbounds %struct.lua_State* %53, i32 0, i32 7, !dbg !1156
  %55 = load %struct.CallInfo** %54, align 4, !dbg !1156
  %56 = getelementptr inbounds %struct.CallInfo* %55, i32 0, i32 0, !dbg !1156
  %57 = load %struct.lua_TValue** %56, align 4, !dbg !1156
  %58 = getelementptr inbounds %struct.lua_TValue* %57, i32 0, i32 0, !dbg !1156
  %59 = bitcast %union.Value* %58 to %struct.GCObject**, !dbg !1156
  %60 = load %struct.GCObject** %59, align 4, !dbg !1156
  %61 = bitcast %struct.GCObject* %60 to %union.GCUnion*, !dbg !1156
  %62 = bitcast %union.GCUnion* %61 to %union.Closure*, !dbg !1156
  %63 = bitcast %union.Closure* %62 to %struct.CClosure*, !dbg !1156
  %64 = bitcast %struct.CClosure* %63 to %union.GCUnion*, !dbg !1156
  %65 = bitcast %union.GCUnion* %64 to %struct.GCObject*, !dbg !1156
  %66 = load %struct.lua_TValue** %fr, align 4, !dbg !1156
  %67 = getelementptr inbounds %struct.lua_TValue* %66, i32 0, i32 0, !dbg !1156
  %68 = bitcast %union.Value* %67 to %struct.GCObject**, !dbg !1156
  %69 = load %struct.GCObject** %68, align 4, !dbg !1156
  call void @luaC_barrier_(%struct.lua_State* %52, %struct.GCObject* %65, %struct.GCObject* %69), !dbg !1156
  br label %71, !dbg !1156

; <label>:70                                      ; preds = %41, %24, %18
  br label %71, !dbg !1158

; <label>:71                                      ; preds = %70, %51
  br label %72, !dbg !1162

; <label>:72                                      ; preds = %71, %0
  ret void, !dbg !1165
}

declare hidden void @luaC_barrier_(%struct.lua_State*, %struct.GCObject*, %struct.GCObject*) #2

; Function Attrs: nounwind
define void @lua_pushvalue(%struct.lua_State* %L, i32 %idx) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca i32, align 4
  %io1 = alloca %struct.lua_TValue*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !1166), !dbg !1167
  store i32 %idx, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !1168), !dbg !1169
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %io1}, metadata !1170), !dbg !1172
  %3 = load %struct.lua_State** %1, align 4, !dbg !1172
  %4 = getelementptr inbounds %struct.lua_State* %3, i32 0, i32 5, !dbg !1172
  %5 = load %struct.lua_TValue** %4, align 4, !dbg !1172
  store %struct.lua_TValue* %5, %struct.lua_TValue** %io1, align 4, !dbg !1172
  %6 = load %struct.lua_TValue** %io1, align 4, !dbg !1172
  %7 = load %struct.lua_State** %1, align 4, !dbg !1172
  %8 = load i32* %2, align 4, !dbg !1172
  %9 = call %struct.lua_TValue* @index2addr(%struct.lua_State* %7, i32 %8), !dbg !1172
  %10 = bitcast %struct.lua_TValue* %6 to i8*, !dbg !1172
  %11 = bitcast %struct.lua_TValue* %9 to i8*, !dbg !1172
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %10, i8* %11, i32 16, i32 8, i1 false), !dbg !1172
  %12 = load %struct.lua_State** %1, align 4, !dbg !1172
  %13 = load %struct.lua_State** %1, align 4, !dbg !1173
  %14 = getelementptr inbounds %struct.lua_State* %13, i32 0, i32 5, !dbg !1173
  %15 = load %struct.lua_TValue** %14, align 4, !dbg !1173
  %16 = getelementptr inbounds %struct.lua_TValue* %15, i32 1, !dbg !1173
  store %struct.lua_TValue* %16, %struct.lua_TValue** %14, align 4, !dbg !1173
  ret void, !dbg !1175
}

; Function Attrs: nounwind
define i32 @lua_type(%struct.lua_State* %L, i32 %idx) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca i32, align 4
  %o = alloca %struct.lua_TValue*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !1176), !dbg !1177
  store i32 %idx, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !1178), !dbg !1179
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %o}, metadata !1180), !dbg !1181
  %3 = load %struct.lua_State** %1, align 4, !dbg !1182
  %4 = load i32* %2, align 4, !dbg !1182
  %5 = call %struct.lua_TValue* @index2addr(%struct.lua_State* %3, i32 %4), !dbg !1182
  store %struct.lua_TValue* %5, %struct.lua_TValue** %o, align 4, !dbg !1182
  %6 = load %struct.lua_TValue** %o, align 4, !dbg !1183
  %7 = icmp ne %struct.lua_TValue* %6, @luaO_nilobject_, !dbg !1183
  br i1 %7, label %8, label %13, !dbg !1183

; <label>:8                                       ; preds = %0
  %9 = load %struct.lua_TValue** %o, align 4, !dbg !1184
  %10 = getelementptr inbounds %struct.lua_TValue* %9, i32 0, i32 1, !dbg !1184
  %11 = load i32* %10, align 4, !dbg !1184
  %12 = and i32 %11, 15, !dbg !1184
  br label %14, !dbg !1184

; <label>:13                                      ; preds = %0
  br label %14, !dbg !1186

; <label>:14                                      ; preds = %13, %8
  %15 = phi i32 [ %12, %8 ], [ -1, %13 ], !dbg !1183
  ret i32 %15, !dbg !1188
}

; Function Attrs: nounwind
define i8* @lua_typename(%struct.lua_State* %L, i32 %t) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !1191), !dbg !1192
  store i32 %t, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !1193), !dbg !1194
  %3 = load %struct.lua_State** %1, align 4, !dbg !1195
  %4 = load i32* %2, align 4, !dbg !1196
  %5 = add nsw i32 %4, 1, !dbg !1196
  %6 = getelementptr inbounds [11 x i8*]* @luaT_typenames_, i32 0, i32 %5, !dbg !1196
  %7 = load i8** %6, align 4, !dbg !1196
  ret i8* %7, !dbg !1196
}

; Function Attrs: nounwind
define i32 @lua_iscfunction(%struct.lua_State* %L, i32 %idx) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca i32, align 4
  %o = alloca %struct.lua_TValue*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !1197), !dbg !1198
  store i32 %idx, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !1199), !dbg !1200
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %o}, metadata !1201), !dbg !1202
  %3 = load %struct.lua_State** %1, align 4, !dbg !1203
  %4 = load i32* %2, align 4, !dbg !1203
  %5 = call %struct.lua_TValue* @index2addr(%struct.lua_State* %3, i32 %4), !dbg !1203
  store %struct.lua_TValue* %5, %struct.lua_TValue** %o, align 4, !dbg !1203
  %6 = load %struct.lua_TValue** %o, align 4, !dbg !1204
  %7 = getelementptr inbounds %struct.lua_TValue* %6, i32 0, i32 1, !dbg !1204
  %8 = load i32* %7, align 4, !dbg !1204
  %9 = icmp eq i32 %8, 22, !dbg !1204
  br i1 %9, label %15, label %10, !dbg !1204

; <label>:10                                      ; preds = %0
  %11 = load %struct.lua_TValue** %o, align 4, !dbg !1205
  %12 = getelementptr inbounds %struct.lua_TValue* %11, i32 0, i32 1, !dbg !1205
  %13 = load i32* %12, align 4, !dbg !1205
  %14 = icmp eq i32 %13, 102, !dbg !1205
  br label %15, !dbg !1205

; <label>:15                                      ; preds = %10, %0
  %16 = phi i1 [ true, %0 ], [ %14, %10 ]
  %17 = zext i1 %16 to i32, !dbg !1207
  ret i32 %17, !dbg !1207
}

; Function Attrs: nounwind
define i32 @lua_isinteger(%struct.lua_State* %L, i32 %idx) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca i32, align 4
  %o = alloca %struct.lua_TValue*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !1210), !dbg !1211
  store i32 %idx, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !1212), !dbg !1213
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %o}, metadata !1214), !dbg !1215
  %3 = load %struct.lua_State** %1, align 4, !dbg !1216
  %4 = load i32* %2, align 4, !dbg !1216
  %5 = call %struct.lua_TValue* @index2addr(%struct.lua_State* %3, i32 %4), !dbg !1216
  store %struct.lua_TValue* %5, %struct.lua_TValue** %o, align 4, !dbg !1216
  %6 = load %struct.lua_TValue** %o, align 4, !dbg !1217
  %7 = getelementptr inbounds %struct.lua_TValue* %6, i32 0, i32 1, !dbg !1217
  %8 = load i32* %7, align 4, !dbg !1217
  %9 = icmp eq i32 %8, 19, !dbg !1217
  %10 = zext i1 %9 to i32, !dbg !1217
  ret i32 %10, !dbg !1217
}

; Function Attrs: nounwind
define i32 @lua_isnumber(%struct.lua_State* %L, i32 %idx) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca i32, align 4
  %n = alloca double, align 8
  %o = alloca %struct.lua_TValue*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !1218), !dbg !1219
  store i32 %idx, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !1220), !dbg !1221
  call void @llvm.dbg.declare(metadata !{double* %n}, metadata !1222), !dbg !1223
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %o}, metadata !1224), !dbg !1225
  %3 = load %struct.lua_State** %1, align 4, !dbg !1226
  %4 = load i32* %2, align 4, !dbg !1226
  %5 = call %struct.lua_TValue* @index2addr(%struct.lua_State* %3, i32 %4), !dbg !1226
  store %struct.lua_TValue* %5, %struct.lua_TValue** %o, align 4, !dbg !1226
  %6 = load %struct.lua_TValue** %o, align 4, !dbg !1227
  %7 = getelementptr inbounds %struct.lua_TValue* %6, i32 0, i32 1, !dbg !1227
  %8 = load i32* %7, align 4, !dbg !1227
  %9 = icmp eq i32 %8, 3, !dbg !1227
  br i1 %9, label %10, label %15, !dbg !1227

; <label>:10                                      ; preds = %0
  %11 = load %struct.lua_TValue** %o, align 4, !dbg !1228
  %12 = getelementptr inbounds %struct.lua_TValue* %11, i32 0, i32 0, !dbg !1228
  %13 = bitcast %union.Value* %12 to double*, !dbg !1228
  %14 = load double* %13, align 8, !dbg !1228
  store double %14, double* %n, align 8, !dbg !1228
  br label %18, !dbg !1228

; <label>:15                                      ; preds = %0
  %16 = load %struct.lua_TValue** %o, align 4, !dbg !1230
  %17 = call i32 @luaV_tonumber_(%struct.lua_TValue* %16, double* %n), !dbg !1230
  br label %18, !dbg !1230

; <label>:18                                      ; preds = %15, %10
  %19 = phi i32 [ 1, %10 ], [ %17, %15 ], !dbg !1232
  ret i32 %19, !dbg !1233
}

declare hidden i32 @luaV_tonumber_(%struct.lua_TValue*, double*) #2

; Function Attrs: nounwind
define i32 @lua_isstring(%struct.lua_State* %L, i32 %idx) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca i32, align 4
  %o = alloca %struct.lua_TValue*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !1236), !dbg !1237
  store i32 %idx, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !1238), !dbg !1239
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %o}, metadata !1240), !dbg !1241
  %3 = load %struct.lua_State** %1, align 4, !dbg !1242
  %4 = load i32* %2, align 4, !dbg !1242
  %5 = call %struct.lua_TValue* @index2addr(%struct.lua_State* %3, i32 %4), !dbg !1242
  store %struct.lua_TValue* %5, %struct.lua_TValue** %o, align 4, !dbg !1242
  %6 = load %struct.lua_TValue** %o, align 4, !dbg !1243
  %7 = getelementptr inbounds %struct.lua_TValue* %6, i32 0, i32 1, !dbg !1243
  %8 = load i32* %7, align 4, !dbg !1243
  %9 = and i32 %8, 15, !dbg !1243
  %10 = icmp eq i32 %9, 4, !dbg !1243
  br i1 %10, label %17, label %11, !dbg !1243

; <label>:11                                      ; preds = %0
  %12 = load %struct.lua_TValue** %o, align 4, !dbg !1244
  %13 = getelementptr inbounds %struct.lua_TValue* %12, i32 0, i32 1, !dbg !1244
  %14 = load i32* %13, align 4, !dbg !1244
  %15 = and i32 %14, 15, !dbg !1244
  %16 = icmp eq i32 %15, 3, !dbg !1244
  br label %17, !dbg !1244

; <label>:17                                      ; preds = %11, %0
  %18 = phi i1 [ true, %0 ], [ %16, %11 ]
  %19 = zext i1 %18 to i32, !dbg !1246
  ret i32 %19, !dbg !1246
}

; Function Attrs: nounwind
define i32 @lua_isuserdata(%struct.lua_State* %L, i32 %idx) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca i32, align 4
  %o = alloca %struct.lua_TValue*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !1249), !dbg !1250
  store i32 %idx, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !1251), !dbg !1252
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %o}, metadata !1253), !dbg !1254
  %3 = load %struct.lua_State** %1, align 4, !dbg !1255
  %4 = load i32* %2, align 4, !dbg !1255
  %5 = call %struct.lua_TValue* @index2addr(%struct.lua_State* %3, i32 %4), !dbg !1255
  store %struct.lua_TValue* %5, %struct.lua_TValue** %o, align 4, !dbg !1255
  %6 = load %struct.lua_TValue** %o, align 4, !dbg !1256
  %7 = getelementptr inbounds %struct.lua_TValue* %6, i32 0, i32 1, !dbg !1256
  %8 = load i32* %7, align 4, !dbg !1256
  %9 = icmp eq i32 %8, 71, !dbg !1256
  br i1 %9, label %15, label %10, !dbg !1256

; <label>:10                                      ; preds = %0
  %11 = load %struct.lua_TValue** %o, align 4, !dbg !1257
  %12 = getelementptr inbounds %struct.lua_TValue* %11, i32 0, i32 1, !dbg !1257
  %13 = load i32* %12, align 4, !dbg !1257
  %14 = icmp eq i32 %13, 2, !dbg !1257
  br label %15, !dbg !1257

; <label>:15                                      ; preds = %10, %0
  %16 = phi i1 [ true, %0 ], [ %14, %10 ]
  %17 = zext i1 %16 to i32, !dbg !1259
  ret i32 %17, !dbg !1259
}

; Function Attrs: nounwind
define i32 @lua_rawequal(%struct.lua_State* %L, i32 %index1, i32 %index2) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %o1 = alloca %struct.lua_TValue*, align 4
  %o2 = alloca %struct.lua_TValue*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !1262), !dbg !1263
  store i32 %index1, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !1264), !dbg !1265
  store i32 %index2, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !1266), !dbg !1267
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %o1}, metadata !1268), !dbg !1269
  %4 = load %struct.lua_State** %1, align 4, !dbg !1270
  %5 = load i32* %2, align 4, !dbg !1270
  %6 = call %struct.lua_TValue* @index2addr(%struct.lua_State* %4, i32 %5), !dbg !1270
  store %struct.lua_TValue* %6, %struct.lua_TValue** %o1, align 4, !dbg !1270
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %o2}, metadata !1271), !dbg !1272
  %7 = load %struct.lua_State** %1, align 4, !dbg !1273
  %8 = load i32* %3, align 4, !dbg !1273
  %9 = call %struct.lua_TValue* @index2addr(%struct.lua_State* %7, i32 %8), !dbg !1273
  store %struct.lua_TValue* %9, %struct.lua_TValue** %o2, align 4, !dbg !1273
  %10 = load %struct.lua_TValue** %o1, align 4, !dbg !1274
  %11 = icmp ne %struct.lua_TValue* %10, @luaO_nilobject_, !dbg !1274
  br i1 %11, label %12, label %19, !dbg !1274

; <label>:12                                      ; preds = %0
  %13 = load %struct.lua_TValue** %o2, align 4, !dbg !1275
  %14 = icmp ne %struct.lua_TValue* %13, @luaO_nilobject_, !dbg !1275
  br i1 %14, label %15, label %19, !dbg !1275

; <label>:15                                      ; preds = %12
  %16 = load %struct.lua_TValue** %o1, align 4, !dbg !1277
  %17 = load %struct.lua_TValue** %o2, align 4, !dbg !1277
  %18 = call i32 @luaV_equalobj(%struct.lua_State* null, %struct.lua_TValue* %16, %struct.lua_TValue* %17), !dbg !1277
  br label %20, !dbg !1277

; <label>:19                                      ; preds = %12, %0
  br label %20, !dbg !1279

; <label>:20                                      ; preds = %19, %15
  %21 = phi i32 [ %18, %15 ], [ 0, %19 ], !dbg !1282
  ret i32 %21, !dbg !1283
}

declare hidden i32 @luaV_equalobj(%struct.lua_State*, %struct.lua_TValue*, %struct.lua_TValue*) #2

; Function Attrs: nounwind
define void @lua_arith(%struct.lua_State* %L, i32 %op) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca i32, align 4
  %io1 = alloca %struct.lua_TValue*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !1286), !dbg !1287
  store i32 %op, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !1288), !dbg !1289
  %3 = load i32* %2, align 4, !dbg !1290
  %4 = icmp ne i32 %3, 12, !dbg !1290
  br i1 %4, label %5, label %9, !dbg !1290

; <label>:5                                       ; preds = %0
  %6 = load i32* %2, align 4, !dbg !1292
  %7 = icmp ne i32 %6, 13, !dbg !1292
  br i1 %7, label %8, label %9, !dbg !1292

; <label>:8                                       ; preds = %5
  br label %25, !dbg !1294

; <label>:9                                       ; preds = %5, %0
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %io1}, metadata !1295), !dbg !1298
  %10 = load %struct.lua_State** %1, align 4, !dbg !1298
  %11 = getelementptr inbounds %struct.lua_State* %10, i32 0, i32 5, !dbg !1298
  %12 = load %struct.lua_TValue** %11, align 4, !dbg !1298
  store %struct.lua_TValue* %12, %struct.lua_TValue** %io1, align 4, !dbg !1298
  %13 = load %struct.lua_TValue** %io1, align 4, !dbg !1298
  %14 = load %struct.lua_State** %1, align 4, !dbg !1298
  %15 = getelementptr inbounds %struct.lua_State* %14, i32 0, i32 5, !dbg !1298
  %16 = load %struct.lua_TValue** %15, align 4, !dbg !1298
  %17 = getelementptr inbounds %struct.lua_TValue* %16, i32 -1, !dbg !1298
  %18 = bitcast %struct.lua_TValue* %13 to i8*, !dbg !1298
  %19 = bitcast %struct.lua_TValue* %17 to i8*, !dbg !1298
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %18, i8* %19, i32 16, i32 8, i1 false), !dbg !1298
  %20 = load %struct.lua_State** %1, align 4, !dbg !1298
  %21 = load %struct.lua_State** %1, align 4, !dbg !1299
  %22 = getelementptr inbounds %struct.lua_State* %21, i32 0, i32 5, !dbg !1299
  %23 = load %struct.lua_TValue** %22, align 4, !dbg !1299
  %24 = getelementptr inbounds %struct.lua_TValue* %23, i32 1, !dbg !1299
  store %struct.lua_TValue* %24, %struct.lua_TValue** %22, align 4, !dbg !1299
  br label %25

; <label>:25                                      ; preds = %9, %8
  %26 = load %struct.lua_State** %1, align 4, !dbg !1301
  %27 = load i32* %2, align 4, !dbg !1301
  %28 = load %struct.lua_State** %1, align 4, !dbg !1301
  %29 = getelementptr inbounds %struct.lua_State* %28, i32 0, i32 5, !dbg !1301
  %30 = load %struct.lua_TValue** %29, align 4, !dbg !1301
  %31 = getelementptr inbounds %struct.lua_TValue* %30, i32 -2, !dbg !1301
  %32 = load %struct.lua_State** %1, align 4, !dbg !1301
  %33 = getelementptr inbounds %struct.lua_State* %32, i32 0, i32 5, !dbg !1301
  %34 = load %struct.lua_TValue** %33, align 4, !dbg !1301
  %35 = getelementptr inbounds %struct.lua_TValue* %34, i32 -1, !dbg !1301
  %36 = load %struct.lua_State** %1, align 4, !dbg !1301
  %37 = getelementptr inbounds %struct.lua_State* %36, i32 0, i32 5, !dbg !1301
  %38 = load %struct.lua_TValue** %37, align 4, !dbg !1301
  %39 = getelementptr inbounds %struct.lua_TValue* %38, i32 -2, !dbg !1301
  call void @luaO_arith(%struct.lua_State* %26, i32 %27, %struct.lua_TValue* %31, %struct.lua_TValue* %35, %struct.lua_TValue* %39), !dbg !1301
  %40 = load %struct.lua_State** %1, align 4, !dbg !1302
  %41 = getelementptr inbounds %struct.lua_State* %40, i32 0, i32 5, !dbg !1302
  %42 = load %struct.lua_TValue** %41, align 4, !dbg !1302
  %43 = getelementptr inbounds %struct.lua_TValue* %42, i32 -1, !dbg !1302
  store %struct.lua_TValue* %43, %struct.lua_TValue** %41, align 4, !dbg !1302
  ret void, !dbg !1303
}

declare hidden void @luaO_arith(%struct.lua_State*, i32, %struct.lua_TValue*, %struct.lua_TValue*, %struct.lua_TValue*) #2

; Function Attrs: nounwind
define i32 @lua_compare(%struct.lua_State* %L, i32 %index1, i32 %index2, i32 %op) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %o1 = alloca %struct.lua_TValue*, align 4
  %o2 = alloca %struct.lua_TValue*, align 4
  %i = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !1304), !dbg !1305
  store i32 %index1, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !1306), !dbg !1307
  store i32 %index2, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !1308), !dbg !1309
  store i32 %op, i32* %4, align 4
  call void @llvm.dbg.declare(metadata !{i32* %4}, metadata !1310), !dbg !1311
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %o1}, metadata !1312), !dbg !1313
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %o2}, metadata !1314), !dbg !1315
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !1316), !dbg !1317
  store i32 0, i32* %i, align 4, !dbg !1318
  %5 = load %struct.lua_State** %1, align 4, !dbg !1319
  %6 = load i32* %2, align 4, !dbg !1319
  %7 = call %struct.lua_TValue* @index2addr(%struct.lua_State* %5, i32 %6), !dbg !1319
  store %struct.lua_TValue* %7, %struct.lua_TValue** %o1, align 4, !dbg !1319
  %8 = load %struct.lua_State** %1, align 4, !dbg !1320
  %9 = load i32* %3, align 4, !dbg !1320
  %10 = call %struct.lua_TValue* @index2addr(%struct.lua_State* %8, i32 %9), !dbg !1320
  store %struct.lua_TValue* %10, %struct.lua_TValue** %o2, align 4, !dbg !1320
  %11 = load %struct.lua_TValue** %o1, align 4, !dbg !1321
  %12 = icmp ne %struct.lua_TValue* %11, @luaO_nilobject_, !dbg !1321
  br i1 %12, label %13, label %35, !dbg !1321

; <label>:13                                      ; preds = %0
  %14 = load %struct.lua_TValue** %o2, align 4, !dbg !1323
  %15 = icmp ne %struct.lua_TValue* %14, @luaO_nilobject_, !dbg !1323
  br i1 %15, label %16, label %35, !dbg !1323

; <label>:16                                      ; preds = %13
  %17 = load i32* %4, align 4, !dbg !1325
  switch i32 %17, label %33 [
    i32 0, label %18
    i32 1, label %23
    i32 2, label %28
  ], !dbg !1325

; <label>:18                                      ; preds = %16
  %19 = load %struct.lua_State** %1, align 4, !dbg !1327
  %20 = load %struct.lua_TValue** %o1, align 4, !dbg !1327
  %21 = load %struct.lua_TValue** %o2, align 4, !dbg !1327
  %22 = call i32 @luaV_equalobj(%struct.lua_State* %19, %struct.lua_TValue* %20, %struct.lua_TValue* %21), !dbg !1327
  store i32 %22, i32* %i, align 4, !dbg !1327
  br label %34, !dbg !1329

; <label>:23                                      ; preds = %16
  %24 = load %struct.lua_State** %1, align 4, !dbg !1330
  %25 = load %struct.lua_TValue** %o1, align 4, !dbg !1330
  %26 = load %struct.lua_TValue** %o2, align 4, !dbg !1330
  %27 = call i32 @luaV_lessthan(%struct.lua_State* %24, %struct.lua_TValue* %25, %struct.lua_TValue* %26), !dbg !1330
  store i32 %27, i32* %i, align 4, !dbg !1330
  br label %34, !dbg !1331

; <label>:28                                      ; preds = %16
  %29 = load %struct.lua_State** %1, align 4, !dbg !1332
  %30 = load %struct.lua_TValue** %o1, align 4, !dbg !1332
  %31 = load %struct.lua_TValue** %o2, align 4, !dbg !1332
  %32 = call i32 @luaV_lessequal(%struct.lua_State* %29, %struct.lua_TValue* %30, %struct.lua_TValue* %31), !dbg !1332
  store i32 %32, i32* %i, align 4, !dbg !1332
  br label %34, !dbg !1333

; <label>:33                                      ; preds = %16
  br label %34, !dbg !1334

; <label>:34                                      ; preds = %33, %28, %23, %18
  br label %35, !dbg !1335

; <label>:35                                      ; preds = %34, %13, %0
  %36 = load i32* %i, align 4, !dbg !1336
  ret i32 %36, !dbg !1336
}

declare hidden i32 @luaV_lessthan(%struct.lua_State*, %struct.lua_TValue*, %struct.lua_TValue*) #2

declare hidden i32 @luaV_lessequal(%struct.lua_State*, %struct.lua_TValue*, %struct.lua_TValue*) #2

; Function Attrs: nounwind
define i32 @lua_stringtonumber(%struct.lua_State* %L, i8* %s) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca i8*, align 4
  %sz = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !1337), !dbg !1338
  store i8* %s, i8** %2, align 4
  call void @llvm.dbg.declare(metadata !{i8** %2}, metadata !1339), !dbg !1340
  call void @llvm.dbg.declare(metadata !{i32* %sz}, metadata !1341), !dbg !1342
  %3 = load i8** %2, align 4, !dbg !1343
  %4 = load %struct.lua_State** %1, align 4, !dbg !1343
  %5 = getelementptr inbounds %struct.lua_State* %4, i32 0, i32 5, !dbg !1343
  %6 = load %struct.lua_TValue** %5, align 4, !dbg !1343
  %7 = call i32 @luaO_str2num(i8* %3, %struct.lua_TValue* %6), !dbg !1343
  store i32 %7, i32* %sz, align 4, !dbg !1343
  %8 = load i32* %sz, align 4, !dbg !1344
  %9 = icmp ne i32 %8, 0, !dbg !1344
  br i1 %9, label %10, label %15, !dbg !1344

; <label>:10                                      ; preds = %0
  %11 = load %struct.lua_State** %1, align 4, !dbg !1346
  %12 = getelementptr inbounds %struct.lua_State* %11, i32 0, i32 5, !dbg !1346
  %13 = load %struct.lua_TValue** %12, align 4, !dbg !1346
  %14 = getelementptr inbounds %struct.lua_TValue* %13, i32 1, !dbg !1346
  store %struct.lua_TValue* %14, %struct.lua_TValue** %12, align 4, !dbg !1346
  br label %15, !dbg !1346

; <label>:15                                      ; preds = %10, %0
  %16 = load i32* %sz, align 4, !dbg !1348
  ret i32 %16, !dbg !1348
}

declare hidden i32 @luaO_str2num(i8*, %struct.lua_TValue*) #2

; Function Attrs: nounwind
define double @lua_tonumberx(%struct.lua_State* %L, i32 %idx, i32* %pisnum) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 4
  %n = alloca double, align 8
  %o = alloca %struct.lua_TValue*, align 4
  %isnum = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !1349), !dbg !1350
  store i32 %idx, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !1351), !dbg !1352
  store i32* %pisnum, i32** %3, align 4
  call void @llvm.dbg.declare(metadata !{i32** %3}, metadata !1353), !dbg !1354
  call void @llvm.dbg.declare(metadata !{double* %n}, metadata !1355), !dbg !1356
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %o}, metadata !1357), !dbg !1358
  %4 = load %struct.lua_State** %1, align 4, !dbg !1359
  %5 = load i32* %2, align 4, !dbg !1359
  %6 = call %struct.lua_TValue* @index2addr(%struct.lua_State* %4, i32 %5), !dbg !1359
  store %struct.lua_TValue* %6, %struct.lua_TValue** %o, align 4, !dbg !1359
  call void @llvm.dbg.declare(metadata !{i32* %isnum}, metadata !1360), !dbg !1361
  %7 = load %struct.lua_TValue** %o, align 4, !dbg !1362
  %8 = getelementptr inbounds %struct.lua_TValue* %7, i32 0, i32 1, !dbg !1362
  %9 = load i32* %8, align 4, !dbg !1362
  %10 = icmp eq i32 %9, 3, !dbg !1362
  br i1 %10, label %11, label %16, !dbg !1362

; <label>:11                                      ; preds = %0
  %12 = load %struct.lua_TValue** %o, align 4, !dbg !1363
  %13 = getelementptr inbounds %struct.lua_TValue* %12, i32 0, i32 0, !dbg !1363
  %14 = bitcast %union.Value* %13 to double*, !dbg !1363
  %15 = load double* %14, align 8, !dbg !1363
  store double %15, double* %n, align 8, !dbg !1363
  br label %19, !dbg !1363

; <label>:16                                      ; preds = %0
  %17 = load %struct.lua_TValue** %o, align 4, !dbg !1365
  %18 = call i32 @luaV_tonumber_(%struct.lua_TValue* %17, double* %n), !dbg !1365
  br label %19, !dbg !1365

; <label>:19                                      ; preds = %16, %11
  %20 = phi i32 [ 1, %11 ], [ %18, %16 ], !dbg !1367
  store i32 %20, i32* %isnum, align 4, !dbg !1368
  %21 = load i32* %isnum, align 4, !dbg !1371
  %22 = icmp ne i32 %21, 0, !dbg !1371
  br i1 %22, label %24, label %23, !dbg !1371

; <label>:23                                      ; preds = %19
  store double 0.000000e+00, double* %n, align 8, !dbg !1373
  br label %24, !dbg !1373

; <label>:24                                      ; preds = %23, %19
  %25 = load i32** %3, align 4, !dbg !1374
  %26 = icmp ne i32* %25, null, !dbg !1374
  br i1 %26, label %27, label %30, !dbg !1374

; <label>:27                                      ; preds = %24
  %28 = load i32* %isnum, align 4, !dbg !1376
  %29 = load i32** %3, align 4, !dbg !1376
  store i32 %28, i32* %29, align 4, !dbg !1376
  br label %30, !dbg !1376

; <label>:30                                      ; preds = %27, %24
  %31 = load double* %n, align 8, !dbg !1378
  ret double %31, !dbg !1378
}

; Function Attrs: nounwind
define i64 @lua_tointegerx(%struct.lua_State* %L, i32 %idx, i32* %pisnum) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 4
  %res = alloca i64, align 8
  %o = alloca %struct.lua_TValue*, align 4
  %isnum = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !1379), !dbg !1380
  store i32 %idx, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !1381), !dbg !1382
  store i32* %pisnum, i32** %3, align 4
  call void @llvm.dbg.declare(metadata !{i32** %3}, metadata !1383), !dbg !1384
  call void @llvm.dbg.declare(metadata !{i64* %res}, metadata !1385), !dbg !1386
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %o}, metadata !1387), !dbg !1388
  %4 = load %struct.lua_State** %1, align 4, !dbg !1389
  %5 = load i32* %2, align 4, !dbg !1389
  %6 = call %struct.lua_TValue* @index2addr(%struct.lua_State* %4, i32 %5), !dbg !1389
  store %struct.lua_TValue* %6, %struct.lua_TValue** %o, align 4, !dbg !1389
  call void @llvm.dbg.declare(metadata !{i32* %isnum}, metadata !1390), !dbg !1391
  %7 = load %struct.lua_TValue** %o, align 4, !dbg !1392
  %8 = getelementptr inbounds %struct.lua_TValue* %7, i32 0, i32 1, !dbg !1392
  %9 = load i32* %8, align 4, !dbg !1392
  %10 = icmp eq i32 %9, 19, !dbg !1392
  br i1 %10, label %11, label %16, !dbg !1392

; <label>:11                                      ; preds = %0
  %12 = load %struct.lua_TValue** %o, align 4, !dbg !1393
  %13 = getelementptr inbounds %struct.lua_TValue* %12, i32 0, i32 0, !dbg !1393
  %14 = bitcast %union.Value* %13 to i64*, !dbg !1393
  %15 = load i64* %14, align 8, !dbg !1393
  store i64 %15, i64* %res, align 8, !dbg !1393
  br label %19, !dbg !1393

; <label>:16                                      ; preds = %0
  %17 = load %struct.lua_TValue** %o, align 4, !dbg !1395
  %18 = call i32 @luaV_tointeger(%struct.lua_TValue* %17, i64* %res, i32 0), !dbg !1395
  br label %19, !dbg !1395

; <label>:19                                      ; preds = %16, %11
  %20 = phi i32 [ 1, %11 ], [ %18, %16 ], !dbg !1397
  store i32 %20, i32* %isnum, align 4, !dbg !1398
  %21 = load i32* %isnum, align 4, !dbg !1401
  %22 = icmp ne i32 %21, 0, !dbg !1401
  br i1 %22, label %24, label %23, !dbg !1401

; <label>:23                                      ; preds = %19
  store i64 0, i64* %res, align 8, !dbg !1403
  br label %24, !dbg !1403

; <label>:24                                      ; preds = %23, %19
  %25 = load i32** %3, align 4, !dbg !1404
  %26 = icmp ne i32* %25, null, !dbg !1404
  br i1 %26, label %27, label %30, !dbg !1404

; <label>:27                                      ; preds = %24
  %28 = load i32* %isnum, align 4, !dbg !1406
  %29 = load i32** %3, align 4, !dbg !1406
  store i32 %28, i32* %29, align 4, !dbg !1406
  br label %30, !dbg !1406

; <label>:30                                      ; preds = %27, %24
  %31 = load i64* %res, align 8, !dbg !1408
  ret i64 %31, !dbg !1408
}

declare hidden i32 @luaV_tointeger(%struct.lua_TValue*, i64*, i32) #2

; Function Attrs: nounwind
define i32 @lua_toboolean(%struct.lua_State* %L, i32 %idx) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca i32, align 4
  %o = alloca %struct.lua_TValue*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !1409), !dbg !1410
  store i32 %idx, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !1411), !dbg !1412
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %o}, metadata !1413), !dbg !1414
  %3 = load %struct.lua_State** %1, align 4, !dbg !1415
  %4 = load i32* %2, align 4, !dbg !1415
  %5 = call %struct.lua_TValue* @index2addr(%struct.lua_State* %3, i32 %4), !dbg !1415
  store %struct.lua_TValue* %5, %struct.lua_TValue** %o, align 4, !dbg !1415
  %6 = load %struct.lua_TValue** %o, align 4, !dbg !1416
  %7 = getelementptr inbounds %struct.lua_TValue* %6, i32 0, i32 1, !dbg !1416
  %8 = load i32* %7, align 4, !dbg !1416
  %9 = icmp eq i32 %8, 0, !dbg !1416
  br i1 %9, label %23, label %10, !dbg !1416

; <label>:10                                      ; preds = %0
  %11 = load %struct.lua_TValue** %o, align 4, !dbg !1417
  %12 = getelementptr inbounds %struct.lua_TValue* %11, i32 0, i32 1, !dbg !1417
  %13 = load i32* %12, align 4, !dbg !1417
  %14 = icmp eq i32 %13, 1, !dbg !1417
  br i1 %14, label %15, label %21, !dbg !1417

; <label>:15                                      ; preds = %10
  %16 = load %struct.lua_TValue** %o, align 4, !dbg !1419
  %17 = getelementptr inbounds %struct.lua_TValue* %16, i32 0, i32 0, !dbg !1419
  %18 = bitcast %union.Value* %17 to i32*, !dbg !1419
  %19 = load i32* %18, align 4, !dbg !1419
  %20 = icmp eq i32 %19, 0, !dbg !1419
  br label %21

; <label>:21                                      ; preds = %15, %10
  %22 = phi i1 [ false, %10 ], [ %20, %15 ]
  br label %23, !dbg !1421

; <label>:23                                      ; preds = %21, %0
  %24 = phi i1 [ true, %0 ], [ %22, %21 ]
  %25 = xor i1 %24, true, !dbg !1423
  %26 = zext i1 %25 to i32, !dbg !1423
  ret i32 %26, !dbg !1423
}

; Function Attrs: nounwind
define i8* @lua_tolstring(%struct.lua_State* %L, i32 %idx, i32* %len) #0 {
  %1 = alloca i8*, align 4
  %2 = alloca %struct.lua_State*, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 4
  %o = alloca %struct.lua_TValue*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %2}, metadata !1426), !dbg !1427
  store i32 %idx, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !1428), !dbg !1429
  store i32* %len, i32** %4, align 4
  call void @llvm.dbg.declare(metadata !{i32** %4}, metadata !1430), !dbg !1431
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %o}, metadata !1432), !dbg !1433
  %5 = load %struct.lua_State** %2, align 4, !dbg !1434
  %6 = load i32* %3, align 4, !dbg !1434
  %7 = call %struct.lua_TValue* @index2addr(%struct.lua_State* %5, i32 %6), !dbg !1434
  store %struct.lua_TValue* %7, %struct.lua_TValue** %o, align 4, !dbg !1434
  %8 = load %struct.lua_TValue** %o, align 4, !dbg !1435
  %9 = getelementptr inbounds %struct.lua_TValue* %8, i32 0, i32 1, !dbg !1435
  %10 = load i32* %9, align 4, !dbg !1435
  %11 = and i32 %10, 15, !dbg !1435
  %12 = icmp eq i32 %11, 4, !dbg !1435
  br i1 %12, label %40, label %13, !dbg !1435

; <label>:13                                      ; preds = %0
  %14 = load %struct.lua_TValue** %o, align 4, !dbg !1437
  %15 = getelementptr inbounds %struct.lua_TValue* %14, i32 0, i32 1, !dbg !1437
  %16 = load i32* %15, align 4, !dbg !1437
  %17 = and i32 %16, 15, !dbg !1437
  %18 = icmp eq i32 %17, 3, !dbg !1437
  br i1 %18, label %25, label %19, !dbg !1437

; <label>:19                                      ; preds = %13
  %20 = load i32** %4, align 4, !dbg !1440
  %21 = icmp ne i32* %20, null, !dbg !1440
  br i1 %21, label %22, label %24, !dbg !1440

; <label>:22                                      ; preds = %19
  %23 = load i32** %4, align 4, !dbg !1443
  store i32 0, i32* %23, align 4, !dbg !1443
  br label %24, !dbg !1443

; <label>:24                                      ; preds = %22, %19
  store i8* null, i8** %1, !dbg !1445
  br label %86, !dbg !1445

; <label>:25                                      ; preds = %13
  %26 = load %struct.lua_State** %2, align 4, !dbg !1446
  %27 = load %struct.lua_TValue** %o, align 4, !dbg !1446
  call void @luaO_tostring(%struct.lua_State* %26, %struct.lua_TValue* %27), !dbg !1446
  %28 = load %struct.lua_State** %2, align 4, !dbg !1447
  %29 = getelementptr inbounds %struct.lua_State* %28, i32 0, i32 6, !dbg !1447
  %30 = load %struct.global_State** %29, align 4, !dbg !1447
  %31 = getelementptr inbounds %struct.global_State* %30, i32 0, i32 3, !dbg !1447
  %32 = load i32* %31, align 4, !dbg !1447
  %33 = icmp sgt i32 %32, 0, !dbg !1447
  br i1 %33, label %34, label %36, !dbg !1447

; <label>:34                                      ; preds = %25
  %35 = load %struct.lua_State** %2, align 4, !dbg !1450
  call void @luaC_step(%struct.lua_State* %35), !dbg !1450
  br label %36, !dbg !1450

; <label>:36                                      ; preds = %34, %25
  %37 = load %struct.lua_State** %2, align 4, !dbg !1453
  %38 = load i32* %3, align 4, !dbg !1453
  %39 = call %struct.lua_TValue* @index2addr(%struct.lua_State* %37, i32 %38), !dbg !1453
  store %struct.lua_TValue* %39, %struct.lua_TValue** %o, align 4, !dbg !1453
  br label %40, !dbg !1454

; <label>:40                                      ; preds = %36, %0
  %41 = load i32** %4, align 4, !dbg !1455
  %42 = icmp ne i32* %41, null, !dbg !1455
  br i1 %42, label %43, label %77, !dbg !1455

; <label>:43                                      ; preds = %40
  %44 = load %struct.lua_TValue** %o, align 4, !dbg !1457
  %45 = getelementptr inbounds %struct.lua_TValue* %44, i32 0, i32 0, !dbg !1457
  %46 = bitcast %union.Value* %45 to %struct.GCObject**, !dbg !1457
  %47 = load %struct.GCObject** %46, align 4, !dbg !1457
  %48 = bitcast %struct.GCObject* %47 to %union.GCUnion*, !dbg !1457
  %49 = bitcast %union.GCUnion* %48 to %struct.TString*, !dbg !1457
  %50 = getelementptr inbounds %struct.TString* %49, i32 0, i32 1, !dbg !1457
  %51 = load i8* %50, align 1, !dbg !1457
  %52 = zext i8 %51 to i32, !dbg !1457
  %53 = icmp eq i32 %52, 4, !dbg !1457
  br i1 %53, label %54, label %64, !dbg !1457

; <label>:54                                      ; preds = %43
  %55 = load %struct.lua_TValue** %o, align 4, !dbg !1458
  %56 = getelementptr inbounds %struct.lua_TValue* %55, i32 0, i32 0, !dbg !1458
  %57 = bitcast %union.Value* %56 to %struct.GCObject**, !dbg !1458
  %58 = load %struct.GCObject** %57, align 4, !dbg !1458
  %59 = bitcast %struct.GCObject* %58 to %union.GCUnion*, !dbg !1458
  %60 = bitcast %union.GCUnion* %59 to %struct.TString*, !dbg !1458
  %61 = getelementptr inbounds %struct.TString* %60, i32 0, i32 4, !dbg !1458
  %62 = load i8* %61, align 1, !dbg !1458
  %63 = zext i8 %62 to i32, !dbg !1458
  br label %74, !dbg !1458

; <label>:64                                      ; preds = %43
  %65 = load %struct.lua_TValue** %o, align 4, !dbg !1460
  %66 = getelementptr inbounds %struct.lua_TValue* %65, i32 0, i32 0, !dbg !1460
  %67 = bitcast %union.Value* %66 to %struct.GCObject**, !dbg !1460
  %68 = load %struct.GCObject** %67, align 4, !dbg !1460
  %69 = bitcast %struct.GCObject* %68 to %union.GCUnion*, !dbg !1460
  %70 = bitcast %union.GCUnion* %69 to %struct.TString*, !dbg !1460
  %71 = getelementptr inbounds %struct.TString* %70, i32 0, i32 6, !dbg !1460
  %72 = bitcast %union.anon* %71 to i32*, !dbg !1460
  %73 = load i32* %72, align 4, !dbg !1460
  br label %74, !dbg !1460

; <label>:74                                      ; preds = %64, %54
  %75 = phi i32 [ %63, %54 ], [ %73, %64 ], !dbg !1457
  %76 = load i32** %4, align 4, !dbg !1462
  store i32 %75, i32* %76, align 4, !dbg !1462
  br label %77, !dbg !1462

; <label>:77                                      ; preds = %74, %40
  %78 = load %struct.lua_TValue** %o, align 4, !dbg !1465
  %79 = getelementptr inbounds %struct.lua_TValue* %78, i32 0, i32 0, !dbg !1465
  %80 = bitcast %union.Value* %79 to %struct.GCObject**, !dbg !1465
  %81 = load %struct.GCObject** %80, align 4, !dbg !1465
  %82 = bitcast %struct.GCObject* %81 to %union.GCUnion*, !dbg !1465
  %83 = bitcast %union.GCUnion* %82 to %struct.TString*, !dbg !1465
  %84 = bitcast %struct.TString* %83 to i8*, !dbg !1465
  %85 = getelementptr inbounds i8* %84, i32 16, !dbg !1465
  store i8* %85, i8** %1, !dbg !1465
  br label %86, !dbg !1465

; <label>:86                                      ; preds = %77, %24
  %87 = load i8** %1, !dbg !1466
  ret i8* %87, !dbg !1466
}

declare hidden void @luaO_tostring(%struct.lua_State*, %struct.lua_TValue*) #2

declare hidden void @luaC_step(%struct.lua_State*) #2

; Function Attrs: nounwind
define i32 @lua_rawlen(%struct.lua_State* %L, i32 %idx) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.lua_State*, align 4
  %3 = alloca i32, align 4
  %o = alloca %struct.lua_TValue*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %2}, metadata !1467), !dbg !1468
  store i32 %idx, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !1469), !dbg !1470
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %o}, metadata !1471), !dbg !1472
  %4 = load %struct.lua_State** %2, align 4, !dbg !1473
  %5 = load i32* %3, align 4, !dbg !1473
  %6 = call %struct.lua_TValue* @index2addr(%struct.lua_State* %4, i32 %5), !dbg !1473
  store %struct.lua_TValue* %6, %struct.lua_TValue** %o, align 4, !dbg !1473
  %7 = load %struct.lua_TValue** %o, align 4, !dbg !1474
  %8 = getelementptr inbounds %struct.lua_TValue* %7, i32 0, i32 1, !dbg !1474
  %9 = load i32* %8, align 4, !dbg !1474
  %10 = and i32 %9, 63, !dbg !1474
  switch i32 %10, label %48 [
    i32 4, label %11
    i32 20, label %21
    i32 7, label %31
    i32 5, label %40
  ], !dbg !1474

; <label>:11                                      ; preds = %0
  %12 = load %struct.lua_TValue** %o, align 4, !dbg !1475
  %13 = getelementptr inbounds %struct.lua_TValue* %12, i32 0, i32 0, !dbg !1475
  %14 = bitcast %union.Value* %13 to %struct.GCObject**, !dbg !1475
  %15 = load %struct.GCObject** %14, align 4, !dbg !1475
  %16 = bitcast %struct.GCObject* %15 to %union.GCUnion*, !dbg !1475
  %17 = bitcast %union.GCUnion* %16 to %struct.TString*, !dbg !1475
  %18 = getelementptr inbounds %struct.TString* %17, i32 0, i32 4, !dbg !1475
  %19 = load i8* %18, align 1, !dbg !1475
  %20 = zext i8 %19 to i32, !dbg !1475
  store i32 %20, i32* %1, !dbg !1475
  br label %49, !dbg !1475

; <label>:21                                      ; preds = %0
  %22 = load %struct.lua_TValue** %o, align 4, !dbg !1477
  %23 = getelementptr inbounds %struct.lua_TValue* %22, i32 0, i32 0, !dbg !1477
  %24 = bitcast %union.Value* %23 to %struct.GCObject**, !dbg !1477
  %25 = load %struct.GCObject** %24, align 4, !dbg !1477
  %26 = bitcast %struct.GCObject* %25 to %union.GCUnion*, !dbg !1477
  %27 = bitcast %union.GCUnion* %26 to %struct.TString*, !dbg !1477
  %28 = getelementptr inbounds %struct.TString* %27, i32 0, i32 6, !dbg !1477
  %29 = bitcast %union.anon* %28 to i32*, !dbg !1477
  %30 = load i32* %29, align 4, !dbg !1477
  store i32 %30, i32* %1, !dbg !1477
  br label %49, !dbg !1477

; <label>:31                                      ; preds = %0
  %32 = load %struct.lua_TValue** %o, align 4, !dbg !1478
  %33 = getelementptr inbounds %struct.lua_TValue* %32, i32 0, i32 0, !dbg !1478
  %34 = bitcast %union.Value* %33 to %struct.GCObject**, !dbg !1478
  %35 = load %struct.GCObject** %34, align 4, !dbg !1478
  %36 = bitcast %struct.GCObject* %35 to %union.GCUnion*, !dbg !1478
  %37 = bitcast %union.GCUnion* %36 to %struct.Udata*, !dbg !1478
  %38 = getelementptr inbounds %struct.Udata* %37, i32 0, i32 5, !dbg !1478
  %39 = load i32* %38, align 4, !dbg !1478
  store i32 %39, i32* %1, !dbg !1478
  br label %49, !dbg !1478

; <label>:40                                      ; preds = %0
  %41 = load %struct.lua_TValue** %o, align 4, !dbg !1479
  %42 = getelementptr inbounds %struct.lua_TValue* %41, i32 0, i32 0, !dbg !1479
  %43 = bitcast %union.Value* %42 to %struct.GCObject**, !dbg !1479
  %44 = load %struct.GCObject** %43, align 4, !dbg !1479
  %45 = bitcast %struct.GCObject* %44 to %union.GCUnion*, !dbg !1479
  %46 = bitcast %union.GCUnion* %45 to %struct.Table*, !dbg !1479
  %47 = call i32 @luaH_getn(%struct.Table* %46), !dbg !1479
  store i32 %47, i32* %1, !dbg !1479
  br label %49, !dbg !1479

; <label>:48                                      ; preds = %0
  store i32 0, i32* %1, !dbg !1480
  br label %49, !dbg !1480

; <label>:49                                      ; preds = %48, %40, %31, %21, %11
  %50 = load i32* %1, !dbg !1481
  ret i32 %50, !dbg !1481
}

declare hidden i32 @luaH_getn(%struct.Table*) #2

; Function Attrs: nounwind
define i32 (%struct.lua_State*)* @lua_tocfunction(%struct.lua_State* %L, i32 %idx) #0 {
  %1 = alloca i32 (%struct.lua_State*)*, align 4
  %2 = alloca %struct.lua_State*, align 4
  %3 = alloca i32, align 4
  %o = alloca %struct.lua_TValue*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %2}, metadata !1482), !dbg !1483
  store i32 %idx, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !1484), !dbg !1485
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %o}, metadata !1486), !dbg !1487
  %4 = load %struct.lua_State** %2, align 4, !dbg !1488
  %5 = load i32* %3, align 4, !dbg !1488
  %6 = call %struct.lua_TValue* @index2addr(%struct.lua_State* %4, i32 %5), !dbg !1488
  store %struct.lua_TValue* %6, %struct.lua_TValue** %o, align 4, !dbg !1488
  %7 = load %struct.lua_TValue** %o, align 4, !dbg !1489
  %8 = getelementptr inbounds %struct.lua_TValue* %7, i32 0, i32 1, !dbg !1489
  %9 = load i32* %8, align 4, !dbg !1489
  %10 = icmp eq i32 %9, 22, !dbg !1489
  br i1 %10, label %11, label %16, !dbg !1489

; <label>:11                                      ; preds = %0
  %12 = load %struct.lua_TValue** %o, align 4, !dbg !1491
  %13 = getelementptr inbounds %struct.lua_TValue* %12, i32 0, i32 0, !dbg !1491
  %14 = bitcast %union.Value* %13 to i32 (%struct.lua_State*)**, !dbg !1491
  %15 = load i32 (%struct.lua_State*)** %14, align 4, !dbg !1491
  store i32 (%struct.lua_State*)* %15, i32 (%struct.lua_State*)** %1, !dbg !1491
  br label %32, !dbg !1491

; <label>:16                                      ; preds = %0
  %17 = load %struct.lua_TValue** %o, align 4, !dbg !1493
  %18 = getelementptr inbounds %struct.lua_TValue* %17, i32 0, i32 1, !dbg !1493
  %19 = load i32* %18, align 4, !dbg !1493
  %20 = icmp eq i32 %19, 102, !dbg !1493
  br i1 %20, label %21, label %31, !dbg !1493

; <label>:21                                      ; preds = %16
  %22 = load %struct.lua_TValue** %o, align 4, !dbg !1495
  %23 = getelementptr inbounds %struct.lua_TValue* %22, i32 0, i32 0, !dbg !1495
  %24 = bitcast %union.Value* %23 to %struct.GCObject**, !dbg !1495
  %25 = load %struct.GCObject** %24, align 4, !dbg !1495
  %26 = bitcast %struct.GCObject* %25 to %union.GCUnion*, !dbg !1495
  %27 = bitcast %union.GCUnion* %26 to %union.Closure*, !dbg !1495
  %28 = bitcast %union.Closure* %27 to %struct.CClosure*, !dbg !1495
  %29 = getelementptr inbounds %struct.CClosure* %28, i32 0, i32 5, !dbg !1495
  %30 = load i32 (%struct.lua_State*)** %29, align 4, !dbg !1495
  store i32 (%struct.lua_State*)* %30, i32 (%struct.lua_State*)** %1, !dbg !1495
  br label %32, !dbg !1495

; <label>:31                                      ; preds = %16
  store i32 (%struct.lua_State*)* null, i32 (%struct.lua_State*)** %1, !dbg !1496
  br label %32, !dbg !1496

; <label>:32                                      ; preds = %31, %21, %11
  %33 = load i32 (%struct.lua_State*)** %1, !dbg !1497
  ret i32 (%struct.lua_State*)* %33, !dbg !1497
}

; Function Attrs: nounwind
define i8* @lua_touserdata(%struct.lua_State* %L, i32 %idx) #0 {
  %1 = alloca i8*, align 4
  %2 = alloca %struct.lua_State*, align 4
  %3 = alloca i32, align 4
  %o = alloca %struct.lua_TValue*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %2}, metadata !1498), !dbg !1499
  store i32 %idx, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !1500), !dbg !1501
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %o}, metadata !1502), !dbg !1503
  %4 = load %struct.lua_State** %2, align 4, !dbg !1504
  %5 = load i32* %3, align 4, !dbg !1504
  %6 = call %struct.lua_TValue* @index2addr(%struct.lua_State* %4, i32 %5), !dbg !1504
  store %struct.lua_TValue* %6, %struct.lua_TValue** %o, align 4, !dbg !1504
  %7 = load %struct.lua_TValue** %o, align 4, !dbg !1505
  %8 = getelementptr inbounds %struct.lua_TValue* %7, i32 0, i32 1, !dbg !1505
  %9 = load i32* %8, align 4, !dbg !1505
  %10 = and i32 %9, 15, !dbg !1505
  switch i32 %10, label %25 [
    i32 7, label %11
    i32 2, label %20
  ], !dbg !1505

; <label>:11                                      ; preds = %0
  %12 = load %struct.lua_TValue** %o, align 4, !dbg !1506
  %13 = getelementptr inbounds %struct.lua_TValue* %12, i32 0, i32 0, !dbg !1506
  %14 = bitcast %union.Value* %13 to %struct.GCObject**, !dbg !1506
  %15 = load %struct.GCObject** %14, align 4, !dbg !1506
  %16 = bitcast %struct.GCObject* %15 to %union.GCUnion*, !dbg !1506
  %17 = bitcast %union.GCUnion* %16 to %struct.Udata*, !dbg !1506
  %18 = bitcast %struct.Udata* %17 to i8*, !dbg !1506
  %19 = getelementptr inbounds i8* %18, i32 24, !dbg !1506
  store i8* %19, i8** %1, !dbg !1506
  br label %26, !dbg !1506

; <label>:20                                      ; preds = %0
  %21 = load %struct.lua_TValue** %o, align 4, !dbg !1508
  %22 = getelementptr inbounds %struct.lua_TValue* %21, i32 0, i32 0, !dbg !1508
  %23 = bitcast %union.Value* %22 to i8**, !dbg !1508
  %24 = load i8** %23, align 4, !dbg !1508
  store i8* %24, i8** %1, !dbg !1508
  br label %26, !dbg !1508

; <label>:25                                      ; preds = %0
  store i8* null, i8** %1, !dbg !1509
  br label %26, !dbg !1509

; <label>:26                                      ; preds = %25, %20, %11
  %27 = load i8** %1, !dbg !1510
  ret i8* %27, !dbg !1510
}

; Function Attrs: nounwind
define %struct.lua_State* @lua_tothread(%struct.lua_State* %L, i32 %idx) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca i32, align 4
  %o = alloca %struct.lua_TValue*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !1511), !dbg !1512
  store i32 %idx, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !1513), !dbg !1514
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %o}, metadata !1515), !dbg !1516
  %3 = load %struct.lua_State** %1, align 4, !dbg !1517
  %4 = load i32* %2, align 4, !dbg !1517
  %5 = call %struct.lua_TValue* @index2addr(%struct.lua_State* %3, i32 %4), !dbg !1517
  store %struct.lua_TValue* %5, %struct.lua_TValue** %o, align 4, !dbg !1517
  %6 = load %struct.lua_TValue** %o, align 4, !dbg !1518
  %7 = getelementptr inbounds %struct.lua_TValue* %6, i32 0, i32 1, !dbg !1518
  %8 = load i32* %7, align 4, !dbg !1518
  %9 = icmp eq i32 %8, 72, !dbg !1518
  br i1 %9, label %11, label %10, !dbg !1518

; <label>:10                                      ; preds = %0
  br label %18, !dbg !1519

; <label>:11                                      ; preds = %0
  %12 = load %struct.lua_TValue** %o, align 4, !dbg !1521
  %13 = getelementptr inbounds %struct.lua_TValue* %12, i32 0, i32 0, !dbg !1521
  %14 = bitcast %union.Value* %13 to %struct.GCObject**, !dbg !1521
  %15 = load %struct.GCObject** %14, align 4, !dbg !1521
  %16 = bitcast %struct.GCObject* %15 to %union.GCUnion*, !dbg !1521
  %17 = bitcast %union.GCUnion* %16 to %struct.lua_State*, !dbg !1521
  br label %18, !dbg !1521

; <label>:18                                      ; preds = %11, %10
  %19 = phi %struct.lua_State* [ null, %10 ], [ %17, %11 ], !dbg !1518
  ret %struct.lua_State* %19, !dbg !1523
}

; Function Attrs: nounwind
define i8* @lua_topointer(%struct.lua_State* %L, i32 %idx) #0 {
  %1 = alloca i8*, align 4
  %2 = alloca %struct.lua_State*, align 4
  %3 = alloca i32, align 4
  %o = alloca %struct.lua_TValue*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %2}, metadata !1526), !dbg !1527
  store i32 %idx, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !1528), !dbg !1529
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %o}, metadata !1530), !dbg !1531
  %4 = load %struct.lua_State** %2, align 4, !dbg !1532
  %5 = load i32* %3, align 4, !dbg !1532
  %6 = call %struct.lua_TValue* @index2addr(%struct.lua_State* %4, i32 %5), !dbg !1532
  store %struct.lua_TValue* %6, %struct.lua_TValue** %o, align 4, !dbg !1532
  %7 = load %struct.lua_TValue** %o, align 4, !dbg !1533
  %8 = getelementptr inbounds %struct.lua_TValue* %7, i32 0, i32 1, !dbg !1533
  %9 = load i32* %8, align 4, !dbg !1533
  %10 = and i32 %9, 63, !dbg !1533
  switch i32 %10, label %66 [
    i32 5, label %11
    i32 6, label %19
    i32 38, label %28
    i32 22, label %37
    i32 8, label %44
    i32 7, label %52
    i32 2, label %61
  ], !dbg !1533

; <label>:11                                      ; preds = %0
  %12 = load %struct.lua_TValue** %o, align 4, !dbg !1534
  %13 = getelementptr inbounds %struct.lua_TValue* %12, i32 0, i32 0, !dbg !1534
  %14 = bitcast %union.Value* %13 to %struct.GCObject**, !dbg !1534
  %15 = load %struct.GCObject** %14, align 4, !dbg !1534
  %16 = bitcast %struct.GCObject* %15 to %union.GCUnion*, !dbg !1534
  %17 = bitcast %union.GCUnion* %16 to %struct.Table*, !dbg !1534
  %18 = bitcast %struct.Table* %17 to i8*, !dbg !1534
  store i8* %18, i8** %1, !dbg !1534
  br label %67, !dbg !1534

; <label>:19                                      ; preds = %0
  %20 = load %struct.lua_TValue** %o, align 4, !dbg !1536
  %21 = getelementptr inbounds %struct.lua_TValue* %20, i32 0, i32 0, !dbg !1536
  %22 = bitcast %union.Value* %21 to %struct.GCObject**, !dbg !1536
  %23 = load %struct.GCObject** %22, align 4, !dbg !1536
  %24 = bitcast %struct.GCObject* %23 to %union.GCUnion*, !dbg !1536
  %25 = bitcast %union.GCUnion* %24 to %union.Closure*, !dbg !1536
  %26 = bitcast %union.Closure* %25 to %struct.LClosure*, !dbg !1536
  %27 = bitcast %struct.LClosure* %26 to i8*, !dbg !1536
  store i8* %27, i8** %1, !dbg !1536
  br label %67, !dbg !1536

; <label>:28                                      ; preds = %0
  %29 = load %struct.lua_TValue** %o, align 4, !dbg !1537
  %30 = getelementptr inbounds %struct.lua_TValue* %29, i32 0, i32 0, !dbg !1537
  %31 = bitcast %union.Value* %30 to %struct.GCObject**, !dbg !1537
  %32 = load %struct.GCObject** %31, align 4, !dbg !1537
  %33 = bitcast %struct.GCObject* %32 to %union.GCUnion*, !dbg !1537
  %34 = bitcast %union.GCUnion* %33 to %union.Closure*, !dbg !1537
  %35 = bitcast %union.Closure* %34 to %struct.CClosure*, !dbg !1537
  %36 = bitcast %struct.CClosure* %35 to i8*, !dbg !1537
  store i8* %36, i8** %1, !dbg !1537
  br label %67, !dbg !1537

; <label>:37                                      ; preds = %0
  %38 = load %struct.lua_TValue** %o, align 4, !dbg !1538
  %39 = getelementptr inbounds %struct.lua_TValue* %38, i32 0, i32 0, !dbg !1538
  %40 = bitcast %union.Value* %39 to i32 (%struct.lua_State*)**, !dbg !1538
  %41 = load i32 (%struct.lua_State*)** %40, align 4, !dbg !1538
  %42 = ptrtoint i32 (%struct.lua_State*)* %41 to i32, !dbg !1538
  %43 = inttoptr i32 %42 to i8*, !dbg !1538
  store i8* %43, i8** %1, !dbg !1538
  br label %67, !dbg !1538

; <label>:44                                      ; preds = %0
  %45 = load %struct.lua_TValue** %o, align 4, !dbg !1539
  %46 = getelementptr inbounds %struct.lua_TValue* %45, i32 0, i32 0, !dbg !1539
  %47 = bitcast %union.Value* %46 to %struct.GCObject**, !dbg !1539
  %48 = load %struct.GCObject** %47, align 4, !dbg !1539
  %49 = bitcast %struct.GCObject* %48 to %union.GCUnion*, !dbg !1539
  %50 = bitcast %union.GCUnion* %49 to %struct.lua_State*, !dbg !1539
  %51 = bitcast %struct.lua_State* %50 to i8*, !dbg !1539
  store i8* %51, i8** %1, !dbg !1539
  br label %67, !dbg !1539

; <label>:52                                      ; preds = %0
  %53 = load %struct.lua_TValue** %o, align 4, !dbg !1540
  %54 = getelementptr inbounds %struct.lua_TValue* %53, i32 0, i32 0, !dbg !1540
  %55 = bitcast %union.Value* %54 to %struct.GCObject**, !dbg !1540
  %56 = load %struct.GCObject** %55, align 4, !dbg !1540
  %57 = bitcast %struct.GCObject* %56 to %union.GCUnion*, !dbg !1540
  %58 = bitcast %union.GCUnion* %57 to %struct.Udata*, !dbg !1540
  %59 = bitcast %struct.Udata* %58 to i8*, !dbg !1540
  %60 = getelementptr inbounds i8* %59, i32 24, !dbg !1540
  store i8* %60, i8** %1, !dbg !1540
  br label %67, !dbg !1540

; <label>:61                                      ; preds = %0
  %62 = load %struct.lua_TValue** %o, align 4, !dbg !1541
  %63 = getelementptr inbounds %struct.lua_TValue* %62, i32 0, i32 0, !dbg !1541
  %64 = bitcast %union.Value* %63 to i8**, !dbg !1541
  %65 = load i8** %64, align 4, !dbg !1541
  store i8* %65, i8** %1, !dbg !1541
  br label %67, !dbg !1541

; <label>:66                                      ; preds = %0
  store i8* null, i8** %1, !dbg !1542
  br label %67, !dbg !1542

; <label>:67                                      ; preds = %66, %61, %52, %44, %37, %28, %19, %11
  %68 = load i8** %1, !dbg !1543
  ret i8* %68, !dbg !1543
}

; Function Attrs: nounwind
define void @lua_pushnil(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !1544), !dbg !1545
  %2 = load %struct.lua_State** %1, align 4, !dbg !1546
  %3 = getelementptr inbounds %struct.lua_State* %2, i32 0, i32 5, !dbg !1546
  %4 = load %struct.lua_TValue** %3, align 4, !dbg !1546
  %5 = getelementptr inbounds %struct.lua_TValue* %4, i32 0, i32 1, !dbg !1546
  store i32 0, i32* %5, align 4, !dbg !1546
  %6 = load %struct.lua_State** %1, align 4, !dbg !1547
  %7 = getelementptr inbounds %struct.lua_State* %6, i32 0, i32 5, !dbg !1547
  %8 = load %struct.lua_TValue** %7, align 4, !dbg !1547
  %9 = getelementptr inbounds %struct.lua_TValue* %8, i32 1, !dbg !1547
  store %struct.lua_TValue* %9, %struct.lua_TValue** %7, align 4, !dbg !1547
  ret void, !dbg !1549
}

; Function Attrs: nounwind
define void @lua_pushnumber(%struct.lua_State* %L, double %n) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca double, align 8
  %io = alloca %struct.lua_TValue*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !1550), !dbg !1551
  store double %n, double* %2, align 8
  call void @llvm.dbg.declare(metadata !{double* %2}, metadata !1552), !dbg !1553
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %io}, metadata !1554), !dbg !1556
  %3 = load %struct.lua_State** %1, align 4, !dbg !1556
  %4 = getelementptr inbounds %struct.lua_State* %3, i32 0, i32 5, !dbg !1556
  %5 = load %struct.lua_TValue** %4, align 4, !dbg !1556
  store %struct.lua_TValue* %5, %struct.lua_TValue** %io, align 4, !dbg !1556
  %6 = load double* %2, align 8, !dbg !1556
  %7 = load %struct.lua_TValue** %io, align 4, !dbg !1556
  %8 = getelementptr inbounds %struct.lua_TValue* %7, i32 0, i32 0, !dbg !1556
  %9 = bitcast %union.Value* %8 to double*, !dbg !1556
  store double %6, double* %9, align 8, !dbg !1556
  %10 = load %struct.lua_TValue** %io, align 4, !dbg !1556
  %11 = getelementptr inbounds %struct.lua_TValue* %10, i32 0, i32 1, !dbg !1556
  store i32 3, i32* %11, align 4, !dbg !1556
  %12 = load %struct.lua_State** %1, align 4, !dbg !1557
  %13 = getelementptr inbounds %struct.lua_State* %12, i32 0, i32 5, !dbg !1557
  %14 = load %struct.lua_TValue** %13, align 4, !dbg !1557
  %15 = getelementptr inbounds %struct.lua_TValue* %14, i32 1, !dbg !1557
  store %struct.lua_TValue* %15, %struct.lua_TValue** %13, align 4, !dbg !1557
  ret void, !dbg !1559
}

; Function Attrs: nounwind
define void @lua_pushinteger(%struct.lua_State* %L, i64 %n) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca i64, align 8
  %io = alloca %struct.lua_TValue*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !1560), !dbg !1561
  store i64 %n, i64* %2, align 8
  call void @llvm.dbg.declare(metadata !{i64* %2}, metadata !1562), !dbg !1563
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %io}, metadata !1564), !dbg !1566
  %3 = load %struct.lua_State** %1, align 4, !dbg !1566
  %4 = getelementptr inbounds %struct.lua_State* %3, i32 0, i32 5, !dbg !1566
  %5 = load %struct.lua_TValue** %4, align 4, !dbg !1566
  store %struct.lua_TValue* %5, %struct.lua_TValue** %io, align 4, !dbg !1566
  %6 = load i64* %2, align 8, !dbg !1566
  %7 = load %struct.lua_TValue** %io, align 4, !dbg !1566
  %8 = getelementptr inbounds %struct.lua_TValue* %7, i32 0, i32 0, !dbg !1566
  %9 = bitcast %union.Value* %8 to i64*, !dbg !1566
  store i64 %6, i64* %9, align 8, !dbg !1566
  %10 = load %struct.lua_TValue** %io, align 4, !dbg !1566
  %11 = getelementptr inbounds %struct.lua_TValue* %10, i32 0, i32 1, !dbg !1566
  store i32 19, i32* %11, align 4, !dbg !1566
  %12 = load %struct.lua_State** %1, align 4, !dbg !1567
  %13 = getelementptr inbounds %struct.lua_State* %12, i32 0, i32 5, !dbg !1567
  %14 = load %struct.lua_TValue** %13, align 4, !dbg !1567
  %15 = getelementptr inbounds %struct.lua_TValue* %14, i32 1, !dbg !1567
  store %struct.lua_TValue* %15, %struct.lua_TValue** %13, align 4, !dbg !1567
  ret void, !dbg !1569
}

; Function Attrs: nounwind
define i8* @lua_pushlstring(%struct.lua_State* %L, i8* %s, i32 %len) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca i8*, align 4
  %3 = alloca i32, align 4
  %ts = alloca %struct.TString*, align 4
  %io = alloca %struct.lua_TValue*, align 4
  %x_ = alloca %struct.TString*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !1570), !dbg !1571
  store i8* %s, i8** %2, align 4
  call void @llvm.dbg.declare(metadata !{i8** %2}, metadata !1572), !dbg !1573
  store i32 %len, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !1574), !dbg !1575
  call void @llvm.dbg.declare(metadata !{%struct.TString** %ts}, metadata !1576), !dbg !1577
  %4 = load i32* %3, align 4, !dbg !1578
  %5 = icmp eq i32 %4, 0, !dbg !1578
  br i1 %5, label %6, label %9, !dbg !1578

; <label>:6                                       ; preds = %0
  %7 = load %struct.lua_State** %1, align 4, !dbg !1579
  %8 = call %struct.TString* @luaS_new(%struct.lua_State* %7, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)), !dbg !1579
  br label %14, !dbg !1579

; <label>:9                                       ; preds = %0
  %10 = load %struct.lua_State** %1, align 4, !dbg !1581
  %11 = load i8** %2, align 4, !dbg !1581
  %12 = load i32* %3, align 4, !dbg !1581
  %13 = call %struct.TString* @luaS_newlstr(%struct.lua_State* %10, i8* %11, i32 %12), !dbg !1581
  br label %14, !dbg !1581

; <label>:14                                      ; preds = %9, %6
  %15 = phi %struct.TString* [ %8, %6 ], [ %13, %9 ], !dbg !1583
  store %struct.TString* %15, %struct.TString** %ts, align 4, !dbg !1584
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %io}, metadata !1587), !dbg !1589
  %16 = load %struct.lua_State** %1, align 4, !dbg !1589
  %17 = getelementptr inbounds %struct.lua_State* %16, i32 0, i32 5, !dbg !1589
  %18 = load %struct.lua_TValue** %17, align 4, !dbg !1589
  store %struct.lua_TValue* %18, %struct.lua_TValue** %io, align 4, !dbg !1589
  call void @llvm.dbg.declare(metadata !{%struct.TString** %x_}, metadata !1590), !dbg !1589
  %19 = load %struct.TString** %ts, align 4, !dbg !1589
  store %struct.TString* %19, %struct.TString** %x_, align 4, !dbg !1589
  %20 = load %struct.TString** %x_, align 4, !dbg !1589
  %21 = bitcast %struct.TString* %20 to %union.GCUnion*, !dbg !1589
  %22 = bitcast %union.GCUnion* %21 to %struct.GCObject*, !dbg !1589
  %23 = load %struct.lua_TValue** %io, align 4, !dbg !1589
  %24 = getelementptr inbounds %struct.lua_TValue* %23, i32 0, i32 0, !dbg !1589
  %25 = bitcast %union.Value* %24 to %struct.GCObject**, !dbg !1589
  store %struct.GCObject* %22, %struct.GCObject** %25, align 4, !dbg !1589
  %26 = load %struct.TString** %x_, align 4, !dbg !1589
  %27 = getelementptr inbounds %struct.TString* %26, i32 0, i32 1, !dbg !1589
  %28 = load i8* %27, align 1, !dbg !1589
  %29 = zext i8 %28 to i32, !dbg !1589
  %30 = or i32 %29, 64, !dbg !1589
  %31 = load %struct.lua_TValue** %io, align 4, !dbg !1589
  %32 = getelementptr inbounds %struct.lua_TValue* %31, i32 0, i32 1, !dbg !1589
  store i32 %30, i32* %32, align 4, !dbg !1589
  %33 = load %struct.lua_State** %1, align 4, !dbg !1591
  %34 = getelementptr inbounds %struct.lua_State* %33, i32 0, i32 5, !dbg !1591
  %35 = load %struct.lua_TValue** %34, align 4, !dbg !1591
  %36 = getelementptr inbounds %struct.lua_TValue* %35, i32 1, !dbg !1591
  store %struct.lua_TValue* %36, %struct.lua_TValue** %34, align 4, !dbg !1591
  %37 = load %struct.lua_State** %1, align 4, !dbg !1593
  %38 = getelementptr inbounds %struct.lua_State* %37, i32 0, i32 6, !dbg !1593
  %39 = load %struct.global_State** %38, align 4, !dbg !1593
  %40 = getelementptr inbounds %struct.global_State* %39, i32 0, i32 3, !dbg !1593
  %41 = load i32* %40, align 4, !dbg !1593
  %42 = icmp sgt i32 %41, 0, !dbg !1593
  br i1 %42, label %43, label %45, !dbg !1593

; <label>:43                                      ; preds = %14
  %44 = load %struct.lua_State** %1, align 4, !dbg !1596
  call void @luaC_step(%struct.lua_State* %44), !dbg !1596
  br label %45, !dbg !1596

; <label>:45                                      ; preds = %43, %14
  %46 = load %struct.TString** %ts, align 4, !dbg !1599
  %47 = bitcast %struct.TString* %46 to i8*, !dbg !1599
  %48 = getelementptr inbounds i8* %47, i32 16, !dbg !1599
  ret i8* %48, !dbg !1599
}

declare hidden %struct.TString* @luaS_new(%struct.lua_State*, i8*) #2

declare hidden %struct.TString* @luaS_newlstr(%struct.lua_State*, i8*, i32) #2

; Function Attrs: nounwind
define i8* @lua_pushstring(%struct.lua_State* %L, i8* %s) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca i8*, align 4
  %ts = alloca %struct.TString*, align 4
  %io = alloca %struct.lua_TValue*, align 4
  %x_ = alloca %struct.TString*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !1600), !dbg !1601
  store i8* %s, i8** %2, align 4
  call void @llvm.dbg.declare(metadata !{i8** %2}, metadata !1602), !dbg !1603
  %3 = load i8** %2, align 4, !dbg !1604
  %4 = icmp eq i8* %3, null, !dbg !1604
  br i1 %4, label %5, label %10, !dbg !1604

; <label>:5                                       ; preds = %0
  %6 = load %struct.lua_State** %1, align 4, !dbg !1606
  %7 = getelementptr inbounds %struct.lua_State* %6, i32 0, i32 5, !dbg !1606
  %8 = load %struct.lua_TValue** %7, align 4, !dbg !1606
  %9 = getelementptr inbounds %struct.lua_TValue* %8, i32 0, i32 1, !dbg !1606
  store i32 0, i32* %9, align 4, !dbg !1606
  br label %34, !dbg !1606

; <label>:10                                      ; preds = %0
  call void @llvm.dbg.declare(metadata !{%struct.TString** %ts}, metadata !1607), !dbg !1609
  %11 = load %struct.lua_State** %1, align 4, !dbg !1610
  %12 = load i8** %2, align 4, !dbg !1610
  %13 = call %struct.TString* @luaS_new(%struct.lua_State* %11, i8* %12), !dbg !1610
  store %struct.TString* %13, %struct.TString** %ts, align 4, !dbg !1610
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %io}, metadata !1611), !dbg !1613
  %14 = load %struct.lua_State** %1, align 4, !dbg !1613
  %15 = getelementptr inbounds %struct.lua_State* %14, i32 0, i32 5, !dbg !1613
  %16 = load %struct.lua_TValue** %15, align 4, !dbg !1613
  store %struct.lua_TValue* %16, %struct.lua_TValue** %io, align 4, !dbg !1613
  call void @llvm.dbg.declare(metadata !{%struct.TString** %x_}, metadata !1614), !dbg !1613
  %17 = load %struct.TString** %ts, align 4, !dbg !1613
  store %struct.TString* %17, %struct.TString** %x_, align 4, !dbg !1613
  %18 = load %struct.TString** %x_, align 4, !dbg !1613
  %19 = bitcast %struct.TString* %18 to %union.GCUnion*, !dbg !1613
  %20 = bitcast %union.GCUnion* %19 to %struct.GCObject*, !dbg !1613
  %21 = load %struct.lua_TValue** %io, align 4, !dbg !1613
  %22 = getelementptr inbounds %struct.lua_TValue* %21, i32 0, i32 0, !dbg !1613
  %23 = bitcast %union.Value* %22 to %struct.GCObject**, !dbg !1613
  store %struct.GCObject* %20, %struct.GCObject** %23, align 4, !dbg !1613
  %24 = load %struct.TString** %x_, align 4, !dbg !1613
  %25 = getelementptr inbounds %struct.TString* %24, i32 0, i32 1, !dbg !1613
  %26 = load i8* %25, align 1, !dbg !1613
  %27 = zext i8 %26 to i32, !dbg !1613
  %28 = or i32 %27, 64, !dbg !1613
  %29 = load %struct.lua_TValue** %io, align 4, !dbg !1613
  %30 = getelementptr inbounds %struct.lua_TValue* %29, i32 0, i32 1, !dbg !1613
  store i32 %28, i32* %30, align 4, !dbg !1613
  %31 = load %struct.TString** %ts, align 4, !dbg !1615
  %32 = bitcast %struct.TString* %31 to i8*, !dbg !1615
  %33 = getelementptr inbounds i8* %32, i32 16, !dbg !1615
  store i8* %33, i8** %2, align 4, !dbg !1615
  br label %34

; <label>:34                                      ; preds = %10, %5
  %35 = load %struct.lua_State** %1, align 4, !dbg !1616
  %36 = getelementptr inbounds %struct.lua_State* %35, i32 0, i32 5, !dbg !1616
  %37 = load %struct.lua_TValue** %36, align 4, !dbg !1616
  %38 = getelementptr inbounds %struct.lua_TValue* %37, i32 1, !dbg !1616
  store %struct.lua_TValue* %38, %struct.lua_TValue** %36, align 4, !dbg !1616
  %39 = load %struct.lua_State** %1, align 4, !dbg !1618
  %40 = getelementptr inbounds %struct.lua_State* %39, i32 0, i32 6, !dbg !1618
  %41 = load %struct.global_State** %40, align 4, !dbg !1618
  %42 = getelementptr inbounds %struct.global_State* %41, i32 0, i32 3, !dbg !1618
  %43 = load i32* %42, align 4, !dbg !1618
  %44 = icmp sgt i32 %43, 0, !dbg !1618
  br i1 %44, label %45, label %47, !dbg !1618

; <label>:45                                      ; preds = %34
  %46 = load %struct.lua_State** %1, align 4, !dbg !1621
  call void @luaC_step(%struct.lua_State* %46), !dbg !1621
  br label %47, !dbg !1621

; <label>:47                                      ; preds = %45, %34
  %48 = load i8** %2, align 4, !dbg !1624
  ret i8* %48, !dbg !1624
}

; Function Attrs: nounwind
define i8* @lua_pushvfstring(%struct.lua_State* %L, i8* %fmt, { [1 x i32] } %argp.coerce) #0 {
  %argp = alloca %struct.__va_list, align 4
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca i8*, align 4
  %ret = alloca i8*, align 4
  %3 = getelementptr %struct.__va_list* %argp, i32 0, i32 0
  %4 = bitcast i8** %3 to { [1 x i32] }*
  %5 = getelementptr { [1 x i32] }* %4, i32 0, i32 0
  %6 = extractvalue { [1 x i32] } %argp.coerce, 0
  store [1 x i32] %6, [1 x i32]* %5, align 1
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !1625), !dbg !1626
  store i8* %fmt, i8** %2, align 4
  call void @llvm.dbg.declare(metadata !{i8** %2}, metadata !1627), !dbg !1628
  call void @llvm.dbg.declare(metadata !{%struct.__va_list* %argp}, metadata !1629), !dbg !1630
  call void @llvm.dbg.declare(metadata !{i8** %ret}, metadata !1631), !dbg !1632
  %7 = load %struct.lua_State** %1, align 4, !dbg !1633
  %8 = load i8** %2, align 4, !dbg !1633
  %9 = getelementptr %struct.__va_list* %argp, i32 0, i32 0, !dbg !1633
  %10 = bitcast i8** %9 to { [1 x i32] }*, !dbg !1633
  %11 = load { [1 x i32] }* %10, align 1, !dbg !1633
  %12 = call i8* @luaO_pushvfstring(%struct.lua_State* %7, i8* %8, { [1 x i32] } %11), !dbg !1633
  store i8* %12, i8** %ret, align 4, !dbg !1633
  %13 = load %struct.lua_State** %1, align 4, !dbg !1634
  %14 = getelementptr inbounds %struct.lua_State* %13, i32 0, i32 6, !dbg !1634
  %15 = load %struct.global_State** %14, align 4, !dbg !1634
  %16 = getelementptr inbounds %struct.global_State* %15, i32 0, i32 3, !dbg !1634
  %17 = load i32* %16, align 4, !dbg !1634
  %18 = icmp sgt i32 %17, 0, !dbg !1634
  br i1 %18, label %19, label %21, !dbg !1634

; <label>:19                                      ; preds = %0
  %20 = load %struct.lua_State** %1, align 4, !dbg !1637
  call void @luaC_step(%struct.lua_State* %20), !dbg !1637
  br label %21, !dbg !1637

; <label>:21                                      ; preds = %19, %0
  %22 = load i8** %ret, align 4, !dbg !1640
  ret i8* %22, !dbg !1640
}

declare hidden i8* @luaO_pushvfstring(%struct.lua_State*, i8*, { [1 x i32] }) #2

; Function Attrs: nounwind
define i8* @lua_pushfstring(%struct.lua_State* %L, i8* %fmt, ...) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca i8*, align 4
  %ret = alloca i8*, align 4
  %argp = alloca %struct.__va_list, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !1641), !dbg !1642
  store i8* %fmt, i8** %2, align 4
  call void @llvm.dbg.declare(metadata !{i8** %2}, metadata !1643), !dbg !1644
  call void @llvm.dbg.declare(metadata !{i8** %ret}, metadata !1645), !dbg !1646
  call void @llvm.dbg.declare(metadata !{%struct.__va_list* %argp}, metadata !1647), !dbg !1648
  %3 = bitcast %struct.__va_list* %argp to i8*, !dbg !1649
  call void @llvm.va_start(i8* %3), !dbg !1649
  %4 = load %struct.lua_State** %1, align 4, !dbg !1650
  %5 = load i8** %2, align 4, !dbg !1650
  %6 = getelementptr %struct.__va_list* %argp, i32 0, i32 0, !dbg !1650
  %7 = bitcast i8** %6 to { [1 x i32] }*, !dbg !1650
  %8 = load { [1 x i32] }* %7, align 1, !dbg !1650
  %9 = call i8* @luaO_pushvfstring(%struct.lua_State* %4, i8* %5, { [1 x i32] } %8), !dbg !1650
  store i8* %9, i8** %ret, align 4, !dbg !1650
  %10 = bitcast %struct.__va_list* %argp to i8*, !dbg !1651
  call void @llvm.va_end(i8* %10), !dbg !1651
  %11 = load %struct.lua_State** %1, align 4, !dbg !1652
  %12 = getelementptr inbounds %struct.lua_State* %11, i32 0, i32 6, !dbg !1652
  %13 = load %struct.global_State** %12, align 4, !dbg !1652
  %14 = getelementptr inbounds %struct.global_State* %13, i32 0, i32 3, !dbg !1652
  %15 = load i32* %14, align 4, !dbg !1652
  %16 = icmp sgt i32 %15, 0, !dbg !1652
  br i1 %16, label %17, label %19, !dbg !1652

; <label>:17                                      ; preds = %0
  %18 = load %struct.lua_State** %1, align 4, !dbg !1655
  call void @luaC_step(%struct.lua_State* %18), !dbg !1655
  br label %19, !dbg !1655

; <label>:19                                      ; preds = %17, %0
  %20 = load i8** %ret, align 4, !dbg !1658
  ret i8* %20, !dbg !1658
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #3

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #3

; Function Attrs: nounwind
define void @lua_pushcclosure(%struct.lua_State* %L, i32 (%struct.lua_State*)* %fn, i32 %n) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca i32 (%struct.lua_State*)*, align 4
  %3 = alloca i32, align 4
  %io = alloca %struct.lua_TValue*, align 4
  %cl = alloca %struct.CClosure*, align 4
  %io1 = alloca %struct.lua_TValue*, align 4
  %io2 = alloca %struct.lua_TValue*, align 4
  %x_ = alloca %struct.CClosure*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !1659), !dbg !1660
  store i32 (%struct.lua_State*)* %fn, i32 (%struct.lua_State*)** %2, align 4
  call void @llvm.dbg.declare(metadata !{i32 (%struct.lua_State*)** %2}, metadata !1661), !dbg !1662
  store i32 %n, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !1663), !dbg !1664
  %4 = load i32* %3, align 4, !dbg !1665
  %5 = icmp eq i32 %4, 0, !dbg !1665
  br i1 %5, label %6, label %16, !dbg !1665

; <label>:6                                       ; preds = %0
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %io}, metadata !1667), !dbg !1670
  %7 = load %struct.lua_State** %1, align 4, !dbg !1670
  %8 = getelementptr inbounds %struct.lua_State* %7, i32 0, i32 5, !dbg !1670
  %9 = load %struct.lua_TValue** %8, align 4, !dbg !1670
  store %struct.lua_TValue* %9, %struct.lua_TValue** %io, align 4, !dbg !1670
  %10 = load i32 (%struct.lua_State*)** %2, align 4, !dbg !1670
  %11 = load %struct.lua_TValue** %io, align 4, !dbg !1670
  %12 = getelementptr inbounds %struct.lua_TValue* %11, i32 0, i32 0, !dbg !1670
  %13 = bitcast %union.Value* %12 to i32 (%struct.lua_State*)**, !dbg !1670
  store i32 (%struct.lua_State*)* %10, i32 (%struct.lua_State*)** %13, align 4, !dbg !1670
  %14 = load %struct.lua_TValue** %io, align 4, !dbg !1670
  %15 = getelementptr inbounds %struct.lua_TValue* %14, i32 0, i32 1, !dbg !1670
  store i32 22, i32* %15, align 4, !dbg !1670
  br label %60, !dbg !1671

; <label>:16                                      ; preds = %0
  call void @llvm.dbg.declare(metadata !{%struct.CClosure** %cl}, metadata !1672), !dbg !1674
  %17 = load %struct.lua_State** %1, align 4, !dbg !1675
  %18 = load i32* %3, align 4, !dbg !1675
  %19 = call %struct.CClosure* @luaF_newCclosure(%struct.lua_State* %17, i32 %18), !dbg !1675
  store %struct.CClosure* %19, %struct.CClosure** %cl, align 4, !dbg !1675
  %20 = load i32 (%struct.lua_State*)** %2, align 4, !dbg !1676
  %21 = load %struct.CClosure** %cl, align 4, !dbg !1676
  %22 = getelementptr inbounds %struct.CClosure* %21, i32 0, i32 5, !dbg !1676
  store i32 (%struct.lua_State*)* %20, i32 (%struct.lua_State*)** %22, align 4, !dbg !1676
  %23 = load i32* %3, align 4, !dbg !1677
  %24 = load %struct.lua_State** %1, align 4, !dbg !1677
  %25 = getelementptr inbounds %struct.lua_State* %24, i32 0, i32 5, !dbg !1677
  %26 = load %struct.lua_TValue** %25, align 4, !dbg !1677
  %27 = sub i32 0, %23, !dbg !1677
  %28 = getelementptr inbounds %struct.lua_TValue* %26, i32 %27, !dbg !1677
  store %struct.lua_TValue* %28, %struct.lua_TValue** %25, align 4, !dbg !1677
  br label %29, !dbg !1678

; <label>:29                                      ; preds = %33, %16
  %30 = load i32* %3, align 4, !dbg !1679
  %31 = add nsw i32 %30, -1, !dbg !1679
  store i32 %31, i32* %3, align 4, !dbg !1679
  %32 = icmp ne i32 %30, 0, !dbg !1679
  br i1 %32, label %33, label %47, !dbg !1679

; <label>:33                                      ; preds = %29
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %io1}, metadata !1681), !dbg !1684
  %34 = load i32* %3, align 4, !dbg !1684
  %35 = load %struct.CClosure** %cl, align 4, !dbg !1684
  %36 = getelementptr inbounds %struct.CClosure* %35, i32 0, i32 6, !dbg !1684
  %37 = getelementptr inbounds [1 x %struct.lua_TValue]* %36, i32 0, i32 %34, !dbg !1684
  store %struct.lua_TValue* %37, %struct.lua_TValue** %io1, align 4, !dbg !1684
  %38 = load %struct.lua_TValue** %io1, align 4, !dbg !1684
  %39 = load %struct.lua_State** %1, align 4, !dbg !1684
  %40 = getelementptr inbounds %struct.lua_State* %39, i32 0, i32 5, !dbg !1684
  %41 = load %struct.lua_TValue** %40, align 4, !dbg !1684
  %42 = load i32* %3, align 4, !dbg !1684
  %43 = getelementptr inbounds %struct.lua_TValue* %41, i32 %42, !dbg !1684
  %44 = bitcast %struct.lua_TValue* %38 to i8*, !dbg !1684
  %45 = bitcast %struct.lua_TValue* %43 to i8*, !dbg !1684
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %44, i8* %45, i32 16, i32 8, i1 false), !dbg !1684
  %46 = load %struct.lua_State** %1, align 4, !dbg !1684
  br label %29, !dbg !1685

; <label>:47                                      ; preds = %29
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %io2}, metadata !1686), !dbg !1688
  %48 = load %struct.lua_State** %1, align 4, !dbg !1688
  %49 = getelementptr inbounds %struct.lua_State* %48, i32 0, i32 5, !dbg !1688
  %50 = load %struct.lua_TValue** %49, align 4, !dbg !1688
  store %struct.lua_TValue* %50, %struct.lua_TValue** %io2, align 4, !dbg !1688
  call void @llvm.dbg.declare(metadata !{%struct.CClosure** %x_}, metadata !1689), !dbg !1688
  %51 = load %struct.CClosure** %cl, align 4, !dbg !1688
  store %struct.CClosure* %51, %struct.CClosure** %x_, align 4, !dbg !1688
  %52 = load %struct.CClosure** %x_, align 4, !dbg !1688
  %53 = bitcast %struct.CClosure* %52 to %union.GCUnion*, !dbg !1688
  %54 = bitcast %union.GCUnion* %53 to %struct.GCObject*, !dbg !1688
  %55 = load %struct.lua_TValue** %io2, align 4, !dbg !1688
  %56 = getelementptr inbounds %struct.lua_TValue* %55, i32 0, i32 0, !dbg !1688
  %57 = bitcast %union.Value* %56 to %struct.GCObject**, !dbg !1688
  store %struct.GCObject* %54, %struct.GCObject** %57, align 4, !dbg !1688
  %58 = load %struct.lua_TValue** %io2, align 4, !dbg !1688
  %59 = getelementptr inbounds %struct.lua_TValue* %58, i32 0, i32 1, !dbg !1688
  store i32 102, i32* %59, align 4, !dbg !1688
  br label %60

; <label>:60                                      ; preds = %47, %6
  %61 = load %struct.lua_State** %1, align 4, !dbg !1690
  %62 = getelementptr inbounds %struct.lua_State* %61, i32 0, i32 5, !dbg !1690
  %63 = load %struct.lua_TValue** %62, align 4, !dbg !1690
  %64 = getelementptr inbounds %struct.lua_TValue* %63, i32 1, !dbg !1690
  store %struct.lua_TValue* %64, %struct.lua_TValue** %62, align 4, !dbg !1690
  %65 = load %struct.lua_State** %1, align 4, !dbg !1692
  %66 = getelementptr inbounds %struct.lua_State* %65, i32 0, i32 6, !dbg !1692
  %67 = load %struct.global_State** %66, align 4, !dbg !1692
  %68 = getelementptr inbounds %struct.global_State* %67, i32 0, i32 3, !dbg !1692
  %69 = load i32* %68, align 4, !dbg !1692
  %70 = icmp sgt i32 %69, 0, !dbg !1692
  br i1 %70, label %71, label %73, !dbg !1692

; <label>:71                                      ; preds = %60
  %72 = load %struct.lua_State** %1, align 4, !dbg !1695
  call void @luaC_step(%struct.lua_State* %72), !dbg !1695
  br label %73, !dbg !1695

; <label>:73                                      ; preds = %71, %60
  ret void, !dbg !1698
}

declare hidden %struct.CClosure* @luaF_newCclosure(%struct.lua_State*, i32) #2

; Function Attrs: nounwind
define void @lua_pushboolean(%struct.lua_State* %L, i32 %b) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca i32, align 4
  %io = alloca %struct.lua_TValue*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !1699), !dbg !1700
  store i32 %b, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !1701), !dbg !1702
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %io}, metadata !1703), !dbg !1705
  %3 = load %struct.lua_State** %1, align 4, !dbg !1705
  %4 = getelementptr inbounds %struct.lua_State* %3, i32 0, i32 5, !dbg !1705
  %5 = load %struct.lua_TValue** %4, align 4, !dbg !1705
  store %struct.lua_TValue* %5, %struct.lua_TValue** %io, align 4, !dbg !1705
  %6 = load i32* %2, align 4, !dbg !1705
  %7 = icmp ne i32 %6, 0, !dbg !1705
  %8 = zext i1 %7 to i32, !dbg !1705
  %9 = load %struct.lua_TValue** %io, align 4, !dbg !1705
  %10 = getelementptr inbounds %struct.lua_TValue* %9, i32 0, i32 0, !dbg !1705
  %11 = bitcast %union.Value* %10 to i32*, !dbg !1705
  store i32 %8, i32* %11, align 4, !dbg !1705
  %12 = load %struct.lua_TValue** %io, align 4, !dbg !1705
  %13 = getelementptr inbounds %struct.lua_TValue* %12, i32 0, i32 1, !dbg !1705
  store i32 1, i32* %13, align 4, !dbg !1705
  %14 = load %struct.lua_State** %1, align 4, !dbg !1706
  %15 = getelementptr inbounds %struct.lua_State* %14, i32 0, i32 5, !dbg !1706
  %16 = load %struct.lua_TValue** %15, align 4, !dbg !1706
  %17 = getelementptr inbounds %struct.lua_TValue* %16, i32 1, !dbg !1706
  store %struct.lua_TValue* %17, %struct.lua_TValue** %15, align 4, !dbg !1706
  ret void, !dbg !1708
}

; Function Attrs: nounwind
define void @lua_pushlightuserdata(%struct.lua_State* %L, i8* %p) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca i8*, align 4
  %io = alloca %struct.lua_TValue*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !1709), !dbg !1710
  store i8* %p, i8** %2, align 4
  call void @llvm.dbg.declare(metadata !{i8** %2}, metadata !1711), !dbg !1712
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %io}, metadata !1713), !dbg !1715
  %3 = load %struct.lua_State** %1, align 4, !dbg !1715
  %4 = getelementptr inbounds %struct.lua_State* %3, i32 0, i32 5, !dbg !1715
  %5 = load %struct.lua_TValue** %4, align 4, !dbg !1715
  store %struct.lua_TValue* %5, %struct.lua_TValue** %io, align 4, !dbg !1715
  %6 = load i8** %2, align 4, !dbg !1715
  %7 = load %struct.lua_TValue** %io, align 4, !dbg !1715
  %8 = getelementptr inbounds %struct.lua_TValue* %7, i32 0, i32 0, !dbg !1715
  %9 = bitcast %union.Value* %8 to i8**, !dbg !1715
  store i8* %6, i8** %9, align 4, !dbg !1715
  %10 = load %struct.lua_TValue** %io, align 4, !dbg !1715
  %11 = getelementptr inbounds %struct.lua_TValue* %10, i32 0, i32 1, !dbg !1715
  store i32 2, i32* %11, align 4, !dbg !1715
  %12 = load %struct.lua_State** %1, align 4, !dbg !1716
  %13 = getelementptr inbounds %struct.lua_State* %12, i32 0, i32 5, !dbg !1716
  %14 = load %struct.lua_TValue** %13, align 4, !dbg !1716
  %15 = getelementptr inbounds %struct.lua_TValue* %14, i32 1, !dbg !1716
  store %struct.lua_TValue* %15, %struct.lua_TValue** %13, align 4, !dbg !1716
  ret void, !dbg !1718
}

; Function Attrs: nounwind
define i32 @lua_pushthread(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %io = alloca %struct.lua_TValue*, align 4
  %x_ = alloca %struct.lua_State*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !1719), !dbg !1720
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %io}, metadata !1721), !dbg !1723
  %2 = load %struct.lua_State** %1, align 4, !dbg !1723
  %3 = getelementptr inbounds %struct.lua_State* %2, i32 0, i32 5, !dbg !1723
  %4 = load %struct.lua_TValue** %3, align 4, !dbg !1723
  store %struct.lua_TValue* %4, %struct.lua_TValue** %io, align 4, !dbg !1723
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %x_}, metadata !1724), !dbg !1723
  %5 = load %struct.lua_State** %1, align 4, !dbg !1723
  store %struct.lua_State* %5, %struct.lua_State** %x_, align 4, !dbg !1723
  %6 = load %struct.lua_State** %x_, align 4, !dbg !1723
  %7 = bitcast %struct.lua_State* %6 to %union.GCUnion*, !dbg !1723
  %8 = bitcast %union.GCUnion* %7 to %struct.GCObject*, !dbg !1723
  %9 = load %struct.lua_TValue** %io, align 4, !dbg !1723
  %10 = getelementptr inbounds %struct.lua_TValue* %9, i32 0, i32 0, !dbg !1723
  %11 = bitcast %union.Value* %10 to %struct.GCObject**, !dbg !1723
  store %struct.GCObject* %8, %struct.GCObject** %11, align 4, !dbg !1723
  %12 = load %struct.lua_TValue** %io, align 4, !dbg !1723
  %13 = getelementptr inbounds %struct.lua_TValue* %12, i32 0, i32 1, !dbg !1723
  store i32 72, i32* %13, align 4, !dbg !1723
  %14 = load %struct.lua_State** %1, align 4, !dbg !1725
  %15 = getelementptr inbounds %struct.lua_State* %14, i32 0, i32 5, !dbg !1725
  %16 = load %struct.lua_TValue** %15, align 4, !dbg !1725
  %17 = getelementptr inbounds %struct.lua_TValue* %16, i32 1, !dbg !1725
  store %struct.lua_TValue* %17, %struct.lua_TValue** %15, align 4, !dbg !1725
  %18 = load %struct.lua_State** %1, align 4, !dbg !1727
  %19 = getelementptr inbounds %struct.lua_State* %18, i32 0, i32 6, !dbg !1727
  %20 = load %struct.global_State** %19, align 4, !dbg !1727
  %21 = getelementptr inbounds %struct.global_State* %20, i32 0, i32 28, !dbg !1727
  %22 = load %struct.lua_State** %21, align 4, !dbg !1727
  %23 = load %struct.lua_State** %1, align 4, !dbg !1727
  %24 = icmp eq %struct.lua_State* %22, %23, !dbg !1727
  %25 = zext i1 %24 to i32, !dbg !1727
  ret i32 %25, !dbg !1727
}

; Function Attrs: nounwind
define i32 @lua_getglobal(%struct.lua_State* %L, i8* %name) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca i8*, align 4
  %reg = alloca %struct.Table*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !1728), !dbg !1729
  store i8* %name, i8** %2, align 4
  call void @llvm.dbg.declare(metadata !{i8** %2}, metadata !1730), !dbg !1731
  call void @llvm.dbg.declare(metadata !{%struct.Table** %reg}, metadata !1732), !dbg !1735
  %3 = load %struct.lua_State** %1, align 4, !dbg !1736
  %4 = getelementptr inbounds %struct.lua_State* %3, i32 0, i32 6, !dbg !1736
  %5 = load %struct.global_State** %4, align 4, !dbg !1736
  %6 = getelementptr inbounds %struct.global_State* %5, i32 0, i32 7, !dbg !1736
  %7 = getelementptr inbounds %struct.lua_TValue* %6, i32 0, i32 0, !dbg !1736
  %8 = bitcast %union.Value* %7 to %struct.GCObject**, !dbg !1736
  %9 = load %struct.GCObject** %8, align 4, !dbg !1736
  %10 = bitcast %struct.GCObject* %9 to %union.GCUnion*, !dbg !1736
  %11 = bitcast %union.GCUnion* %10 to %struct.Table*, !dbg !1736
  store %struct.Table* %11, %struct.Table** %reg, align 4, !dbg !1736
  %12 = load %struct.lua_State** %1, align 4, !dbg !1737
  %13 = load %struct.Table** %reg, align 4, !dbg !1738
  %14 = call %struct.lua_TValue* @luaH_getint(%struct.Table* %13, i64 2), !dbg !1738
  %15 = load i8** %2, align 4, !dbg !1737
  %16 = call i32 @auxgetstr(%struct.lua_State* %12, %struct.lua_TValue* %14, i8* %15), !dbg !1737
  ret i32 %16, !dbg !1737
}

; Function Attrs: nounwind
define internal i32 @auxgetstr(%struct.lua_State* %L, %struct.lua_TValue* %t, i8* %k) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca %struct.lua_TValue*, align 4
  %3 = alloca i8*, align 4
  %slot = alloca %struct.lua_TValue*, align 4
  %str = alloca %struct.TString*, align 4
  %io1 = alloca %struct.lua_TValue*, align 4
  %io = alloca %struct.lua_TValue*, align 4
  %x_ = alloca %struct.TString*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !1739), !dbg !1740
  store %struct.lua_TValue* %t, %struct.lua_TValue** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %2}, metadata !1741), !dbg !1742
  store i8* %k, i8** %3, align 4
  call void @llvm.dbg.declare(metadata !{i8** %3}, metadata !1743), !dbg !1744
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %slot}, metadata !1745), !dbg !1746
  call void @llvm.dbg.declare(metadata !{%struct.TString** %str}, metadata !1747), !dbg !1748
  %4 = load %struct.lua_State** %1, align 4, !dbg !1749
  %5 = load i8** %3, align 4, !dbg !1749
  %6 = call %struct.TString* @luaS_new(%struct.lua_State* %4, i8* %5), !dbg !1749
  store %struct.TString* %6, %struct.TString** %str, align 4, !dbg !1749
  %7 = load %struct.lua_TValue** %2, align 4, !dbg !1750
  %8 = getelementptr inbounds %struct.lua_TValue* %7, i32 0, i32 1, !dbg !1750
  %9 = load i32* %8, align 4, !dbg !1750
  %10 = icmp eq i32 %9, 69, !dbg !1750
  br i1 %10, label %12, label %11, !dbg !1750

; <label>:11                                      ; preds = %0
  store %struct.lua_TValue* null, %struct.lua_TValue** %slot, align 4, !dbg !1752
  br i1 false, label %26, label %39, !dbg !1752

; <label>:12                                      ; preds = %0
  %13 = load %struct.lua_TValue** %2, align 4, !dbg !1754
  %14 = getelementptr inbounds %struct.lua_TValue* %13, i32 0, i32 0, !dbg !1754
  %15 = bitcast %union.Value* %14 to %struct.GCObject**, !dbg !1754
  %16 = load %struct.GCObject** %15, align 4, !dbg !1754
  %17 = bitcast %struct.GCObject* %16 to %union.GCUnion*, !dbg !1754
  %18 = bitcast %union.GCUnion* %17 to %struct.Table*, !dbg !1754
  %19 = load %struct.TString** %str, align 4, !dbg !1754
  %20 = call %struct.lua_TValue* @luaH_getstr(%struct.Table* %18, %struct.TString* %19), !dbg !1754
  store %struct.lua_TValue* %20, %struct.lua_TValue** %slot, align 4, !dbg !1754
  %21 = load %struct.lua_TValue** %slot, align 4, !dbg !1754
  %22 = getelementptr inbounds %struct.lua_TValue* %21, i32 0, i32 1, !dbg !1754
  %23 = load i32* %22, align 4, !dbg !1754
  %24 = icmp eq i32 %23, 0, !dbg !1754
  %25 = xor i1 %24, true, !dbg !1754
  br i1 %25, label %26, label %39, !dbg !1754

; <label>:26                                      ; preds = %12, %11
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %io1}, metadata !1756), !dbg !1759
  %27 = load %struct.lua_State** %1, align 4, !dbg !1759
  %28 = getelementptr inbounds %struct.lua_State* %27, i32 0, i32 5, !dbg !1759
  %29 = load %struct.lua_TValue** %28, align 4, !dbg !1759
  store %struct.lua_TValue* %29, %struct.lua_TValue** %io1, align 4, !dbg !1759
  %30 = load %struct.lua_TValue** %io1, align 4, !dbg !1759
  %31 = load %struct.lua_TValue** %slot, align 4, !dbg !1759
  %32 = bitcast %struct.lua_TValue* %30 to i8*, !dbg !1759
  %33 = bitcast %struct.lua_TValue* %31 to i8*, !dbg !1759
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %32, i8* %33, i32 16, i32 8, i1 false), !dbg !1759
  %34 = load %struct.lua_State** %1, align 4, !dbg !1759
  %35 = load %struct.lua_State** %1, align 4, !dbg !1760
  %36 = getelementptr inbounds %struct.lua_State* %35, i32 0, i32 5, !dbg !1760
  %37 = load %struct.lua_TValue** %36, align 4, !dbg !1760
  %38 = getelementptr inbounds %struct.lua_TValue* %37, i32 1, !dbg !1760
  store %struct.lua_TValue* %38, %struct.lua_TValue** %36, align 4, !dbg !1760
  br label %72, !dbg !1762

; <label>:39                                      ; preds = %12, %11
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %io}, metadata !1763), !dbg !1766
  %40 = load %struct.lua_State** %1, align 4, !dbg !1766
  %41 = getelementptr inbounds %struct.lua_State* %40, i32 0, i32 5, !dbg !1766
  %42 = load %struct.lua_TValue** %41, align 4, !dbg !1766
  store %struct.lua_TValue* %42, %struct.lua_TValue** %io, align 4, !dbg !1766
  call void @llvm.dbg.declare(metadata !{%struct.TString** %x_}, metadata !1767), !dbg !1766
  %43 = load %struct.TString** %str, align 4, !dbg !1766
  store %struct.TString* %43, %struct.TString** %x_, align 4, !dbg !1766
  %44 = load %struct.TString** %x_, align 4, !dbg !1766
  %45 = bitcast %struct.TString* %44 to %union.GCUnion*, !dbg !1766
  %46 = bitcast %union.GCUnion* %45 to %struct.GCObject*, !dbg !1766
  %47 = load %struct.lua_TValue** %io, align 4, !dbg !1766
  %48 = getelementptr inbounds %struct.lua_TValue* %47, i32 0, i32 0, !dbg !1766
  %49 = bitcast %union.Value* %48 to %struct.GCObject**, !dbg !1766
  store %struct.GCObject* %46, %struct.GCObject** %49, align 4, !dbg !1766
  %50 = load %struct.TString** %x_, align 4, !dbg !1766
  %51 = getelementptr inbounds %struct.TString* %50, i32 0, i32 1, !dbg !1766
  %52 = load i8* %51, align 1, !dbg !1766
  %53 = zext i8 %52 to i32, !dbg !1766
  %54 = or i32 %53, 64, !dbg !1766
  %55 = load %struct.lua_TValue** %io, align 4, !dbg !1766
  %56 = getelementptr inbounds %struct.lua_TValue* %55, i32 0, i32 1, !dbg !1766
  store i32 %54, i32* %56, align 4, !dbg !1766
  %57 = load %struct.lua_State** %1, align 4, !dbg !1768
  %58 = getelementptr inbounds %struct.lua_State* %57, i32 0, i32 5, !dbg !1768
  %59 = load %struct.lua_TValue** %58, align 4, !dbg !1768
  %60 = getelementptr inbounds %struct.lua_TValue* %59, i32 1, !dbg !1768
  store %struct.lua_TValue* %60, %struct.lua_TValue** %58, align 4, !dbg !1768
  %61 = load %struct.lua_State** %1, align 4, !dbg !1770
  %62 = load %struct.lua_TValue** %2, align 4, !dbg !1770
  %63 = load %struct.lua_State** %1, align 4, !dbg !1770
  %64 = getelementptr inbounds %struct.lua_State* %63, i32 0, i32 5, !dbg !1770
  %65 = load %struct.lua_TValue** %64, align 4, !dbg !1770
  %66 = getelementptr inbounds %struct.lua_TValue* %65, i32 -1, !dbg !1770
  %67 = load %struct.lua_State** %1, align 4, !dbg !1770
  %68 = getelementptr inbounds %struct.lua_State* %67, i32 0, i32 5, !dbg !1770
  %69 = load %struct.lua_TValue** %68, align 4, !dbg !1770
  %70 = getelementptr inbounds %struct.lua_TValue* %69, i32 -1, !dbg !1770
  %71 = load %struct.lua_TValue** %slot, align 4, !dbg !1770
  call void @luaV_finishget(%struct.lua_State* %61, %struct.lua_TValue* %62, %struct.lua_TValue* %66, %struct.lua_TValue* %70, %struct.lua_TValue* %71), !dbg !1770
  br label %72

; <label>:72                                      ; preds = %39, %26
  %73 = load %struct.lua_State** %1, align 4, !dbg !1771
  %74 = getelementptr inbounds %struct.lua_State* %73, i32 0, i32 5, !dbg !1771
  %75 = load %struct.lua_TValue** %74, align 4, !dbg !1771
  %76 = getelementptr inbounds %struct.lua_TValue* %75, i32 -1, !dbg !1771
  %77 = getelementptr inbounds %struct.lua_TValue* %76, i32 0, i32 1, !dbg !1771
  %78 = load i32* %77, align 4, !dbg !1771
  %79 = and i32 %78, 15, !dbg !1771
  ret i32 %79, !dbg !1771
}

declare hidden %struct.lua_TValue* @luaH_getint(%struct.Table*, i64) #2

; Function Attrs: nounwind
define i32 @lua_gettable(%struct.lua_State* %L, i32 %idx) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca i32, align 4
  %t = alloca %struct.lua_TValue*, align 4
  %slot = alloca %struct.lua_TValue*, align 4
  %io1 = alloca %struct.lua_TValue*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !1772), !dbg !1773
  store i32 %idx, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !1774), !dbg !1775
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %t}, metadata !1776), !dbg !1777
  %3 = load %struct.lua_State** %1, align 4, !dbg !1778
  %4 = load i32* %2, align 4, !dbg !1778
  %5 = call %struct.lua_TValue* @index2addr(%struct.lua_State* %3, i32 %4), !dbg !1778
  store %struct.lua_TValue* %5, %struct.lua_TValue** %t, align 4, !dbg !1778
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %slot}, metadata !1779), !dbg !1781
  %6 = load %struct.lua_TValue** %t, align 4, !dbg !1782
  %7 = getelementptr inbounds %struct.lua_TValue* %6, i32 0, i32 1, !dbg !1782
  %8 = load i32* %7, align 4, !dbg !1782
  %9 = icmp eq i32 %8, 69, !dbg !1782
  br i1 %9, label %11, label %10, !dbg !1782

; <label>:10                                      ; preds = %0
  store %struct.lua_TValue* null, %struct.lua_TValue** %slot, align 4, !dbg !1784
  br i1 false, label %28, label %38, !dbg !1784

; <label>:11                                      ; preds = %0
  %12 = load %struct.lua_TValue** %t, align 4, !dbg !1786
  %13 = getelementptr inbounds %struct.lua_TValue* %12, i32 0, i32 0, !dbg !1786
  %14 = bitcast %union.Value* %13 to %struct.GCObject**, !dbg !1786
  %15 = load %struct.GCObject** %14, align 4, !dbg !1786
  %16 = bitcast %struct.GCObject* %15 to %union.GCUnion*, !dbg !1786
  %17 = bitcast %union.GCUnion* %16 to %struct.Table*, !dbg !1786
  %18 = load %struct.lua_State** %1, align 4, !dbg !1786
  %19 = getelementptr inbounds %struct.lua_State* %18, i32 0, i32 5, !dbg !1786
  %20 = load %struct.lua_TValue** %19, align 4, !dbg !1786
  %21 = getelementptr inbounds %struct.lua_TValue* %20, i32 -1, !dbg !1786
  %22 = call %struct.lua_TValue* @luaH_get(%struct.Table* %17, %struct.lua_TValue* %21), !dbg !1786
  store %struct.lua_TValue* %22, %struct.lua_TValue** %slot, align 4, !dbg !1786
  %23 = load %struct.lua_TValue** %slot, align 4, !dbg !1786
  %24 = getelementptr inbounds %struct.lua_TValue* %23, i32 0, i32 1, !dbg !1786
  %25 = load i32* %24, align 4, !dbg !1786
  %26 = icmp eq i32 %25, 0, !dbg !1786
  %27 = xor i1 %26, true, !dbg !1786
  br i1 %27, label %28, label %38, !dbg !1786

; <label>:28                                      ; preds = %11, %10
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %io1}, metadata !1788), !dbg !1791
  %29 = load %struct.lua_State** %1, align 4, !dbg !1792
  %30 = getelementptr inbounds %struct.lua_State* %29, i32 0, i32 5, !dbg !1792
  %31 = load %struct.lua_TValue** %30, align 4, !dbg !1792
  %32 = getelementptr inbounds %struct.lua_TValue* %31, i32 -1, !dbg !1792
  store %struct.lua_TValue* %32, %struct.lua_TValue** %io1, align 4, !dbg !1792
  %33 = load %struct.lua_TValue** %io1, align 4, !dbg !1792
  %34 = load %struct.lua_TValue** %slot, align 4, !dbg !1792
  %35 = bitcast %struct.lua_TValue* %33 to i8*, !dbg !1792
  %36 = bitcast %struct.lua_TValue* %34 to i8*, !dbg !1792
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %35, i8* %36, i32 16, i32 8, i1 false), !dbg !1792
  %37 = load %struct.lua_State** %1, align 4, !dbg !1792
  br label %50, !dbg !1795

; <label>:38                                      ; preds = %11, %10
  %39 = load %struct.lua_State** %1, align 4, !dbg !1796
  %40 = load %struct.lua_TValue** %t, align 4, !dbg !1796
  %41 = load %struct.lua_State** %1, align 4, !dbg !1796
  %42 = getelementptr inbounds %struct.lua_State* %41, i32 0, i32 5, !dbg !1796
  %43 = load %struct.lua_TValue** %42, align 4, !dbg !1796
  %44 = getelementptr inbounds %struct.lua_TValue* %43, i32 -1, !dbg !1796
  %45 = load %struct.lua_State** %1, align 4, !dbg !1796
  %46 = getelementptr inbounds %struct.lua_State* %45, i32 0, i32 5, !dbg !1796
  %47 = load %struct.lua_TValue** %46, align 4, !dbg !1796
  %48 = getelementptr inbounds %struct.lua_TValue* %47, i32 -1, !dbg !1796
  %49 = load %struct.lua_TValue** %slot, align 4, !dbg !1796
  call void @luaV_finishget(%struct.lua_State* %39, %struct.lua_TValue* %40, %struct.lua_TValue* %44, %struct.lua_TValue* %48, %struct.lua_TValue* %49), !dbg !1796
  br label %50

; <label>:50                                      ; preds = %38, %28
  %51 = load %struct.lua_State** %1, align 4, !dbg !1799
  %52 = getelementptr inbounds %struct.lua_State* %51, i32 0, i32 5, !dbg !1799
  %53 = load %struct.lua_TValue** %52, align 4, !dbg !1799
  %54 = getelementptr inbounds %struct.lua_TValue* %53, i32 -1, !dbg !1799
  %55 = getelementptr inbounds %struct.lua_TValue* %54, i32 0, i32 1, !dbg !1799
  %56 = load i32* %55, align 4, !dbg !1799
  %57 = and i32 %56, 15, !dbg !1799
  ret i32 %57, !dbg !1799
}

declare hidden %struct.lua_TValue* @luaH_get(%struct.Table*, %struct.lua_TValue*) #2

declare hidden void @luaV_finishget(%struct.lua_State*, %struct.lua_TValue*, %struct.lua_TValue*, %struct.lua_TValue*, %struct.lua_TValue*) #2

; Function Attrs: nounwind
define i32 @lua_getfield(%struct.lua_State* %L, i32 %idx, i8* %k) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !1800), !dbg !1801
  store i32 %idx, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !1802), !dbg !1803
  store i8* %k, i8** %3, align 4
  call void @llvm.dbg.declare(metadata !{i8** %3}, metadata !1804), !dbg !1805
  %4 = load %struct.lua_State** %1, align 4, !dbg !1806
  %5 = load %struct.lua_State** %1, align 4, !dbg !1807
  %6 = load i32* %2, align 4, !dbg !1807
  %7 = call %struct.lua_TValue* @index2addr(%struct.lua_State* %5, i32 %6), !dbg !1807
  %8 = load i8** %3, align 4, !dbg !1806
  %9 = call i32 @auxgetstr(%struct.lua_State* %4, %struct.lua_TValue* %7, i8* %8), !dbg !1806
  ret i32 %9, !dbg !1806
}

; Function Attrs: nounwind
define i32 @lua_geti(%struct.lua_State* %L, i32 %idx, i64 %n) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %t = alloca %struct.lua_TValue*, align 4
  %slot = alloca %struct.lua_TValue*, align 4
  %io1 = alloca %struct.lua_TValue*, align 4
  %io = alloca %struct.lua_TValue*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !1808), !dbg !1809
  store i32 %idx, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !1810), !dbg !1811
  store i64 %n, i64* %3, align 8
  call void @llvm.dbg.declare(metadata !{i64* %3}, metadata !1812), !dbg !1813
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %t}, metadata !1814), !dbg !1815
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %slot}, metadata !1816), !dbg !1817
  %4 = load %struct.lua_State** %1, align 4, !dbg !1818
  %5 = load i32* %2, align 4, !dbg !1818
  %6 = call %struct.lua_TValue* @index2addr(%struct.lua_State* %4, i32 %5), !dbg !1818
  store %struct.lua_TValue* %6, %struct.lua_TValue** %t, align 4, !dbg !1818
  %7 = load %struct.lua_TValue** %t, align 4, !dbg !1819
  %8 = getelementptr inbounds %struct.lua_TValue* %7, i32 0, i32 1, !dbg !1819
  %9 = load i32* %8, align 4, !dbg !1819
  %10 = icmp eq i32 %9, 69, !dbg !1819
  br i1 %10, label %12, label %11, !dbg !1819

; <label>:11                                      ; preds = %0
  store %struct.lua_TValue* null, %struct.lua_TValue** %slot, align 4, !dbg !1821
  br i1 false, label %26, label %39, !dbg !1821

; <label>:12                                      ; preds = %0
  %13 = load %struct.lua_TValue** %t, align 4, !dbg !1823
  %14 = getelementptr inbounds %struct.lua_TValue* %13, i32 0, i32 0, !dbg !1823
  %15 = bitcast %union.Value* %14 to %struct.GCObject**, !dbg !1823
  %16 = load %struct.GCObject** %15, align 4, !dbg !1823
  %17 = bitcast %struct.GCObject* %16 to %union.GCUnion*, !dbg !1823
  %18 = bitcast %union.GCUnion* %17 to %struct.Table*, !dbg !1823
  %19 = load i64* %3, align 8, !dbg !1823
  %20 = call %struct.lua_TValue* @luaH_getint(%struct.Table* %18, i64 %19), !dbg !1823
  store %struct.lua_TValue* %20, %struct.lua_TValue** %slot, align 4, !dbg !1823
  %21 = load %struct.lua_TValue** %slot, align 4, !dbg !1823
  %22 = getelementptr inbounds %struct.lua_TValue* %21, i32 0, i32 1, !dbg !1823
  %23 = load i32* %22, align 4, !dbg !1823
  %24 = icmp eq i32 %23, 0, !dbg !1823
  %25 = xor i1 %24, true, !dbg !1823
  br i1 %25, label %26, label %39, !dbg !1823

; <label>:26                                      ; preds = %12, %11
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %io1}, metadata !1825), !dbg !1828
  %27 = load %struct.lua_State** %1, align 4, !dbg !1828
  %28 = getelementptr inbounds %struct.lua_State* %27, i32 0, i32 5, !dbg !1828
  %29 = load %struct.lua_TValue** %28, align 4, !dbg !1828
  store %struct.lua_TValue* %29, %struct.lua_TValue** %io1, align 4, !dbg !1828
  %30 = load %struct.lua_TValue** %io1, align 4, !dbg !1828
  %31 = load %struct.lua_TValue** %slot, align 4, !dbg !1828
  %32 = bitcast %struct.lua_TValue* %30 to i8*, !dbg !1828
  %33 = bitcast %struct.lua_TValue* %31 to i8*, !dbg !1828
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %32, i8* %33, i32 16, i32 8, i1 false), !dbg !1828
  %34 = load %struct.lua_State** %1, align 4, !dbg !1828
  %35 = load %struct.lua_State** %1, align 4, !dbg !1829
  %36 = getelementptr inbounds %struct.lua_State* %35, i32 0, i32 5, !dbg !1829
  %37 = load %struct.lua_TValue** %36, align 4, !dbg !1829
  %38 = getelementptr inbounds %struct.lua_TValue* %37, i32 1, !dbg !1829
  store %struct.lua_TValue* %38, %struct.lua_TValue** %36, align 4, !dbg !1829
  br label %64, !dbg !1831

; <label>:39                                      ; preds = %12, %11
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %io}, metadata !1832), !dbg !1835
  %40 = load %struct.lua_State** %1, align 4, !dbg !1835
  %41 = getelementptr inbounds %struct.lua_State* %40, i32 0, i32 5, !dbg !1835
  %42 = load %struct.lua_TValue** %41, align 4, !dbg !1835
  store %struct.lua_TValue* %42, %struct.lua_TValue** %io, align 4, !dbg !1835
  %43 = load i64* %3, align 8, !dbg !1835
  %44 = load %struct.lua_TValue** %io, align 4, !dbg !1835
  %45 = getelementptr inbounds %struct.lua_TValue* %44, i32 0, i32 0, !dbg !1835
  %46 = bitcast %union.Value* %45 to i64*, !dbg !1835
  store i64 %43, i64* %46, align 8, !dbg !1835
  %47 = load %struct.lua_TValue** %io, align 4, !dbg !1835
  %48 = getelementptr inbounds %struct.lua_TValue* %47, i32 0, i32 1, !dbg !1835
  store i32 19, i32* %48, align 4, !dbg !1835
  %49 = load %struct.lua_State** %1, align 4, !dbg !1836
  %50 = getelementptr inbounds %struct.lua_State* %49, i32 0, i32 5, !dbg !1836
  %51 = load %struct.lua_TValue** %50, align 4, !dbg !1836
  %52 = getelementptr inbounds %struct.lua_TValue* %51, i32 1, !dbg !1836
  store %struct.lua_TValue* %52, %struct.lua_TValue** %50, align 4, !dbg !1836
  %53 = load %struct.lua_State** %1, align 4, !dbg !1838
  %54 = load %struct.lua_TValue** %t, align 4, !dbg !1838
  %55 = load %struct.lua_State** %1, align 4, !dbg !1838
  %56 = getelementptr inbounds %struct.lua_State* %55, i32 0, i32 5, !dbg !1838
  %57 = load %struct.lua_TValue** %56, align 4, !dbg !1838
  %58 = getelementptr inbounds %struct.lua_TValue* %57, i32 -1, !dbg !1838
  %59 = load %struct.lua_State** %1, align 4, !dbg !1838
  %60 = getelementptr inbounds %struct.lua_State* %59, i32 0, i32 5, !dbg !1838
  %61 = load %struct.lua_TValue** %60, align 4, !dbg !1838
  %62 = getelementptr inbounds %struct.lua_TValue* %61, i32 -1, !dbg !1838
  %63 = load %struct.lua_TValue** %slot, align 4, !dbg !1838
  call void @luaV_finishget(%struct.lua_State* %53, %struct.lua_TValue* %54, %struct.lua_TValue* %58, %struct.lua_TValue* %62, %struct.lua_TValue* %63), !dbg !1838
  br label %64

; <label>:64                                      ; preds = %39, %26
  %65 = load %struct.lua_State** %1, align 4, !dbg !1839
  %66 = getelementptr inbounds %struct.lua_State* %65, i32 0, i32 5, !dbg !1839
  %67 = load %struct.lua_TValue** %66, align 4, !dbg !1839
  %68 = getelementptr inbounds %struct.lua_TValue* %67, i32 -1, !dbg !1839
  %69 = getelementptr inbounds %struct.lua_TValue* %68, i32 0, i32 1, !dbg !1839
  %70 = load i32* %69, align 4, !dbg !1839
  %71 = and i32 %70, 15, !dbg !1839
  ret i32 %71, !dbg !1839
}

; Function Attrs: nounwind
define i32 @lua_rawget(%struct.lua_State* %L, i32 %idx) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca i32, align 4
  %t = alloca %struct.lua_TValue*, align 4
  %io1 = alloca %struct.lua_TValue*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !1840), !dbg !1841
  store i32 %idx, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !1842), !dbg !1843
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %t}, metadata !1844), !dbg !1845
  %3 = load %struct.lua_State** %1, align 4, !dbg !1846
  %4 = load i32* %2, align 4, !dbg !1846
  %5 = call %struct.lua_TValue* @index2addr(%struct.lua_State* %3, i32 %4), !dbg !1846
  store %struct.lua_TValue* %5, %struct.lua_TValue** %t, align 4, !dbg !1846
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %io1}, metadata !1847), !dbg !1849
  %6 = load %struct.lua_State** %1, align 4, !dbg !1849
  %7 = getelementptr inbounds %struct.lua_State* %6, i32 0, i32 5, !dbg !1849
  %8 = load %struct.lua_TValue** %7, align 4, !dbg !1849
  %9 = getelementptr inbounds %struct.lua_TValue* %8, i32 -1, !dbg !1849
  store %struct.lua_TValue* %9, %struct.lua_TValue** %io1, align 4, !dbg !1849
  %10 = load %struct.lua_TValue** %io1, align 4, !dbg !1849
  %11 = load %struct.lua_TValue** %t, align 4, !dbg !1849
  %12 = getelementptr inbounds %struct.lua_TValue* %11, i32 0, i32 0, !dbg !1849
  %13 = bitcast %union.Value* %12 to %struct.GCObject**, !dbg !1849
  %14 = load %struct.GCObject** %13, align 4, !dbg !1849
  %15 = bitcast %struct.GCObject* %14 to %union.GCUnion*, !dbg !1849
  %16 = bitcast %union.GCUnion* %15 to %struct.Table*, !dbg !1849
  %17 = load %struct.lua_State** %1, align 4, !dbg !1849
  %18 = getelementptr inbounds %struct.lua_State* %17, i32 0, i32 5, !dbg !1849
  %19 = load %struct.lua_TValue** %18, align 4, !dbg !1849
  %20 = getelementptr inbounds %struct.lua_TValue* %19, i32 -1, !dbg !1849
  %21 = call %struct.lua_TValue* @luaH_get(%struct.Table* %16, %struct.lua_TValue* %20), !dbg !1849
  %22 = bitcast %struct.lua_TValue* %10 to i8*, !dbg !1849
  %23 = bitcast %struct.lua_TValue* %21 to i8*, !dbg !1849
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %22, i8* %23, i32 16, i32 8, i1 false), !dbg !1849
  %24 = load %struct.lua_State** %1, align 4, !dbg !1849
  %25 = load %struct.lua_State** %1, align 4, !dbg !1850
  %26 = getelementptr inbounds %struct.lua_State* %25, i32 0, i32 5, !dbg !1850
  %27 = load %struct.lua_TValue** %26, align 4, !dbg !1850
  %28 = getelementptr inbounds %struct.lua_TValue* %27, i32 -1, !dbg !1850
  %29 = getelementptr inbounds %struct.lua_TValue* %28, i32 0, i32 1, !dbg !1850
  %30 = load i32* %29, align 4, !dbg !1850
  %31 = and i32 %30, 15, !dbg !1850
  ret i32 %31, !dbg !1850
}

; Function Attrs: nounwind
define i32 @lua_rawgeti(%struct.lua_State* %L, i32 %idx, i64 %n) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %t = alloca %struct.lua_TValue*, align 4
  %io1 = alloca %struct.lua_TValue*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !1851), !dbg !1852
  store i32 %idx, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !1853), !dbg !1854
  store i64 %n, i64* %3, align 8
  call void @llvm.dbg.declare(metadata !{i64* %3}, metadata !1855), !dbg !1856
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %t}, metadata !1857), !dbg !1858
  %4 = load %struct.lua_State** %1, align 4, !dbg !1859
  %5 = load i32* %2, align 4, !dbg !1859
  %6 = call %struct.lua_TValue* @index2addr(%struct.lua_State* %4, i32 %5), !dbg !1859
  store %struct.lua_TValue* %6, %struct.lua_TValue** %t, align 4, !dbg !1859
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %io1}, metadata !1860), !dbg !1862
  %7 = load %struct.lua_State** %1, align 4, !dbg !1862
  %8 = getelementptr inbounds %struct.lua_State* %7, i32 0, i32 5, !dbg !1862
  %9 = load %struct.lua_TValue** %8, align 4, !dbg !1862
  store %struct.lua_TValue* %9, %struct.lua_TValue** %io1, align 4, !dbg !1862
  %10 = load %struct.lua_TValue** %io1, align 4, !dbg !1862
  %11 = load %struct.lua_TValue** %t, align 4, !dbg !1862
  %12 = getelementptr inbounds %struct.lua_TValue* %11, i32 0, i32 0, !dbg !1862
  %13 = bitcast %union.Value* %12 to %struct.GCObject**, !dbg !1862
  %14 = load %struct.GCObject** %13, align 4, !dbg !1862
  %15 = bitcast %struct.GCObject* %14 to %union.GCUnion*, !dbg !1862
  %16 = bitcast %union.GCUnion* %15 to %struct.Table*, !dbg !1862
  %17 = load i64* %3, align 8, !dbg !1862
  %18 = call %struct.lua_TValue* @luaH_getint(%struct.Table* %16, i64 %17), !dbg !1862
  %19 = bitcast %struct.lua_TValue* %10 to i8*, !dbg !1862
  %20 = bitcast %struct.lua_TValue* %18 to i8*, !dbg !1862
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* %20, i32 16, i32 8, i1 false), !dbg !1862
  %21 = load %struct.lua_State** %1, align 4, !dbg !1862
  %22 = load %struct.lua_State** %1, align 4, !dbg !1863
  %23 = getelementptr inbounds %struct.lua_State* %22, i32 0, i32 5, !dbg !1863
  %24 = load %struct.lua_TValue** %23, align 4, !dbg !1863
  %25 = getelementptr inbounds %struct.lua_TValue* %24, i32 1, !dbg !1863
  store %struct.lua_TValue* %25, %struct.lua_TValue** %23, align 4, !dbg !1863
  %26 = load %struct.lua_State** %1, align 4, !dbg !1865
  %27 = getelementptr inbounds %struct.lua_State* %26, i32 0, i32 5, !dbg !1865
  %28 = load %struct.lua_TValue** %27, align 4, !dbg !1865
  %29 = getelementptr inbounds %struct.lua_TValue* %28, i32 -1, !dbg !1865
  %30 = getelementptr inbounds %struct.lua_TValue* %29, i32 0, i32 1, !dbg !1865
  %31 = load i32* %30, align 4, !dbg !1865
  %32 = and i32 %31, 15, !dbg !1865
  ret i32 %32, !dbg !1865
}

; Function Attrs: nounwind
define i32 @lua_rawgetp(%struct.lua_State* %L, i32 %idx, i8* %p) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 4
  %t = alloca %struct.lua_TValue*, align 4
  %k = alloca %struct.lua_TValue, align 8
  %io = alloca %struct.lua_TValue*, align 4
  %io1 = alloca %struct.lua_TValue*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !1866), !dbg !1867
  store i32 %idx, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !1868), !dbg !1869
  store i8* %p, i8** %3, align 4
  call void @llvm.dbg.declare(metadata !{i8** %3}, metadata !1870), !dbg !1871
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %t}, metadata !1872), !dbg !1873
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue* %k}, metadata !1874), !dbg !1875
  %4 = load %struct.lua_State** %1, align 4, !dbg !1876
  %5 = load i32* %2, align 4, !dbg !1876
  %6 = call %struct.lua_TValue* @index2addr(%struct.lua_State* %4, i32 %5), !dbg !1876
  store %struct.lua_TValue* %6, %struct.lua_TValue** %t, align 4, !dbg !1876
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %io}, metadata !1877), !dbg !1879
  store %struct.lua_TValue* %k, %struct.lua_TValue** %io, align 4, !dbg !1879
  %7 = load i8** %3, align 4, !dbg !1879
  %8 = load %struct.lua_TValue** %io, align 4, !dbg !1879
  %9 = getelementptr inbounds %struct.lua_TValue* %8, i32 0, i32 0, !dbg !1879
  %10 = bitcast %union.Value* %9 to i8**, !dbg !1879
  store i8* %7, i8** %10, align 4, !dbg !1879
  %11 = load %struct.lua_TValue** %io, align 4, !dbg !1879
  %12 = getelementptr inbounds %struct.lua_TValue* %11, i32 0, i32 1, !dbg !1879
  store i32 2, i32* %12, align 4, !dbg !1879
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %io1}, metadata !1880), !dbg !1882
  %13 = load %struct.lua_State** %1, align 4, !dbg !1882
  %14 = getelementptr inbounds %struct.lua_State* %13, i32 0, i32 5, !dbg !1882
  %15 = load %struct.lua_TValue** %14, align 4, !dbg !1882
  store %struct.lua_TValue* %15, %struct.lua_TValue** %io1, align 4, !dbg !1882
  %16 = load %struct.lua_TValue** %io1, align 4, !dbg !1882
  %17 = load %struct.lua_TValue** %t, align 4, !dbg !1882
  %18 = getelementptr inbounds %struct.lua_TValue* %17, i32 0, i32 0, !dbg !1882
  %19 = bitcast %union.Value* %18 to %struct.GCObject**, !dbg !1882
  %20 = load %struct.GCObject** %19, align 4, !dbg !1882
  %21 = bitcast %struct.GCObject* %20 to %union.GCUnion*, !dbg !1882
  %22 = bitcast %union.GCUnion* %21 to %struct.Table*, !dbg !1882
  %23 = call %struct.lua_TValue* @luaH_get(%struct.Table* %22, %struct.lua_TValue* %k), !dbg !1882
  %24 = bitcast %struct.lua_TValue* %16 to i8*, !dbg !1882
  %25 = bitcast %struct.lua_TValue* %23 to i8*, !dbg !1882
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %24, i8* %25, i32 16, i32 8, i1 false), !dbg !1882
  %26 = load %struct.lua_State** %1, align 4, !dbg !1882
  %27 = load %struct.lua_State** %1, align 4, !dbg !1883
  %28 = getelementptr inbounds %struct.lua_State* %27, i32 0, i32 5, !dbg !1883
  %29 = load %struct.lua_TValue** %28, align 4, !dbg !1883
  %30 = getelementptr inbounds %struct.lua_TValue* %29, i32 1, !dbg !1883
  store %struct.lua_TValue* %30, %struct.lua_TValue** %28, align 4, !dbg !1883
  %31 = load %struct.lua_State** %1, align 4, !dbg !1885
  %32 = getelementptr inbounds %struct.lua_State* %31, i32 0, i32 5, !dbg !1885
  %33 = load %struct.lua_TValue** %32, align 4, !dbg !1885
  %34 = getelementptr inbounds %struct.lua_TValue* %33, i32 -1, !dbg !1885
  %35 = getelementptr inbounds %struct.lua_TValue* %34, i32 0, i32 1, !dbg !1885
  %36 = load i32* %35, align 4, !dbg !1885
  %37 = and i32 %36, 15, !dbg !1885
  ret i32 %37, !dbg !1885
}

; Function Attrs: nounwind
define void @lua_createtable(%struct.lua_State* %L, i32 %narray, i32 %nrec) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %t = alloca %struct.Table*, align 4
  %io = alloca %struct.lua_TValue*, align 4
  %x_ = alloca %struct.Table*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !1886), !dbg !1887
  store i32 %narray, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !1888), !dbg !1889
  store i32 %nrec, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !1890), !dbg !1891
  call void @llvm.dbg.declare(metadata !{%struct.Table** %t}, metadata !1892), !dbg !1893
  %4 = load %struct.lua_State** %1, align 4, !dbg !1894
  %5 = call %struct.Table* @luaH_new(%struct.lua_State* %4), !dbg !1894
  store %struct.Table* %5, %struct.Table** %t, align 4, !dbg !1894
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %io}, metadata !1895), !dbg !1897
  %6 = load %struct.lua_State** %1, align 4, !dbg !1897
  %7 = getelementptr inbounds %struct.lua_State* %6, i32 0, i32 5, !dbg !1897
  %8 = load %struct.lua_TValue** %7, align 4, !dbg !1897
  store %struct.lua_TValue* %8, %struct.lua_TValue** %io, align 4, !dbg !1897
  call void @llvm.dbg.declare(metadata !{%struct.Table** %x_}, metadata !1898), !dbg !1897
  %9 = load %struct.Table** %t, align 4, !dbg !1897
  store %struct.Table* %9, %struct.Table** %x_, align 4, !dbg !1897
  %10 = load %struct.Table** %x_, align 4, !dbg !1897
  %11 = bitcast %struct.Table* %10 to %union.GCUnion*, !dbg !1897
  %12 = bitcast %union.GCUnion* %11 to %struct.GCObject*, !dbg !1897
  %13 = load %struct.lua_TValue** %io, align 4, !dbg !1897
  %14 = getelementptr inbounds %struct.lua_TValue* %13, i32 0, i32 0, !dbg !1897
  %15 = bitcast %union.Value* %14 to %struct.GCObject**, !dbg !1897
  store %struct.GCObject* %12, %struct.GCObject** %15, align 4, !dbg !1897
  %16 = load %struct.lua_TValue** %io, align 4, !dbg !1897
  %17 = getelementptr inbounds %struct.lua_TValue* %16, i32 0, i32 1, !dbg !1897
  store i32 69, i32* %17, align 4, !dbg !1897
  %18 = load %struct.lua_State** %1, align 4, !dbg !1899
  %19 = getelementptr inbounds %struct.lua_State* %18, i32 0, i32 5, !dbg !1899
  %20 = load %struct.lua_TValue** %19, align 4, !dbg !1899
  %21 = getelementptr inbounds %struct.lua_TValue* %20, i32 1, !dbg !1899
  store %struct.lua_TValue* %21, %struct.lua_TValue** %19, align 4, !dbg !1899
  %22 = load i32* %2, align 4, !dbg !1901
  %23 = icmp sgt i32 %22, 0, !dbg !1901
  br i1 %23, label %27, label %24, !dbg !1901

; <label>:24                                      ; preds = %0
  %25 = load i32* %3, align 4, !dbg !1903
  %26 = icmp sgt i32 %25, 0, !dbg !1903
  br i1 %26, label %27, label %32, !dbg !1903

; <label>:27                                      ; preds = %24, %0
  %28 = load %struct.lua_State** %1, align 4, !dbg !1905
  %29 = load %struct.Table** %t, align 4, !dbg !1905
  %30 = load i32* %2, align 4, !dbg !1905
  %31 = load i32* %3, align 4, !dbg !1905
  call void @luaH_resize(%struct.lua_State* %28, %struct.Table* %29, i32 %30, i32 %31), !dbg !1905
  br label %32, !dbg !1905

; <label>:32                                      ; preds = %27, %24
  %33 = load %struct.lua_State** %1, align 4, !dbg !1906
  %34 = getelementptr inbounds %struct.lua_State* %33, i32 0, i32 6, !dbg !1906
  %35 = load %struct.global_State** %34, align 4, !dbg !1906
  %36 = getelementptr inbounds %struct.global_State* %35, i32 0, i32 3, !dbg !1906
  %37 = load i32* %36, align 4, !dbg !1906
  %38 = icmp sgt i32 %37, 0, !dbg !1906
  br i1 %38, label %39, label %41, !dbg !1906

; <label>:39                                      ; preds = %32
  %40 = load %struct.lua_State** %1, align 4, !dbg !1909
  call void @luaC_step(%struct.lua_State* %40), !dbg !1909
  br label %41, !dbg !1909

; <label>:41                                      ; preds = %39, %32
  ret void, !dbg !1912
}

declare hidden %struct.Table* @luaH_new(%struct.lua_State*) #2

declare hidden void @luaH_resize(%struct.lua_State*, %struct.Table*, i32, i32) #2

; Function Attrs: nounwind
define i32 @lua_getmetatable(%struct.lua_State* %L, i32 %objindex) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca i32, align 4
  %obj = alloca %struct.lua_TValue*, align 4
  %mt = alloca %struct.Table*, align 4
  %res = alloca i32, align 4
  %io = alloca %struct.lua_TValue*, align 4
  %x_ = alloca %struct.Table*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !1913), !dbg !1914
  store i32 %objindex, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !1915), !dbg !1916
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %obj}, metadata !1917), !dbg !1918
  call void @llvm.dbg.declare(metadata !{%struct.Table** %mt}, metadata !1919), !dbg !1920
  call void @llvm.dbg.declare(metadata !{i32* %res}, metadata !1921), !dbg !1922
  store i32 0, i32* %res, align 4, !dbg !1923
  %3 = load %struct.lua_State** %1, align 4, !dbg !1924
  %4 = load i32* %2, align 4, !dbg !1924
  %5 = call %struct.lua_TValue* @index2addr(%struct.lua_State* %3, i32 %4), !dbg !1924
  store %struct.lua_TValue* %5, %struct.lua_TValue** %obj, align 4, !dbg !1924
  %6 = load %struct.lua_TValue** %obj, align 4, !dbg !1925
  %7 = getelementptr inbounds %struct.lua_TValue* %6, i32 0, i32 1, !dbg !1925
  %8 = load i32* %7, align 4, !dbg !1925
  %9 = and i32 %8, 15, !dbg !1925
  switch i32 %9, label %28 [
    i32 5, label %10
    i32 7, label %19
  ], !dbg !1925

; <label>:10                                      ; preds = %0
  %11 = load %struct.lua_TValue** %obj, align 4, !dbg !1926
  %12 = getelementptr inbounds %struct.lua_TValue* %11, i32 0, i32 0, !dbg !1926
  %13 = bitcast %union.Value* %12 to %struct.GCObject**, !dbg !1926
  %14 = load %struct.GCObject** %13, align 4, !dbg !1926
  %15 = bitcast %struct.GCObject* %14 to %union.GCUnion*, !dbg !1926
  %16 = bitcast %union.GCUnion* %15 to %struct.Table*, !dbg !1926
  %17 = getelementptr inbounds %struct.Table* %16, i32 0, i32 9, !dbg !1926
  %18 = load %struct.Table** %17, align 4, !dbg !1926
  store %struct.Table* %18, %struct.Table** %mt, align 4, !dbg !1926
  br label %39, !dbg !1928

; <label>:19                                      ; preds = %0
  %20 = load %struct.lua_TValue** %obj, align 4, !dbg !1929
  %21 = getelementptr inbounds %struct.lua_TValue* %20, i32 0, i32 0, !dbg !1929
  %22 = bitcast %union.Value* %21 to %struct.GCObject**, !dbg !1929
  %23 = load %struct.GCObject** %22, align 4, !dbg !1929
  %24 = bitcast %struct.GCObject* %23 to %union.GCUnion*, !dbg !1929
  %25 = bitcast %union.GCUnion* %24 to %struct.Udata*, !dbg !1929
  %26 = getelementptr inbounds %struct.Udata* %25, i32 0, i32 4, !dbg !1929
  %27 = load %struct.Table** %26, align 4, !dbg !1929
  store %struct.Table* %27, %struct.Table** %mt, align 4, !dbg !1929
  br label %39, !dbg !1930

; <label>:28                                      ; preds = %0
  %29 = load %struct.lua_TValue** %obj, align 4, !dbg !1931
  %30 = getelementptr inbounds %struct.lua_TValue* %29, i32 0, i32 1, !dbg !1931
  %31 = load i32* %30, align 4, !dbg !1931
  %32 = and i32 %31, 15, !dbg !1931
  %33 = load %struct.lua_State** %1, align 4, !dbg !1931
  %34 = getelementptr inbounds %struct.lua_State* %33, i32 0, i32 6, !dbg !1931
  %35 = load %struct.global_State** %34, align 4, !dbg !1931
  %36 = getelementptr inbounds %struct.global_State* %35, i32 0, i32 32, !dbg !1931
  %37 = getelementptr inbounds [9 x %struct.Table*]* %36, i32 0, i32 %32, !dbg !1931
  %38 = load %struct.Table** %37, align 4, !dbg !1931
  store %struct.Table* %38, %struct.Table** %mt, align 4, !dbg !1931
  br label %39, !dbg !1932

; <label>:39                                      ; preds = %28, %19, %10
  %40 = load %struct.Table** %mt, align 4, !dbg !1933
  %41 = icmp ne %struct.Table* %40, null, !dbg !1933
  br i1 %41, label %42, label %59, !dbg !1933

; <label>:42                                      ; preds = %39
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %io}, metadata !1935), !dbg !1938
  %43 = load %struct.lua_State** %1, align 4, !dbg !1938
  %44 = getelementptr inbounds %struct.lua_State* %43, i32 0, i32 5, !dbg !1938
  %45 = load %struct.lua_TValue** %44, align 4, !dbg !1938
  store %struct.lua_TValue* %45, %struct.lua_TValue** %io, align 4, !dbg !1938
  call void @llvm.dbg.declare(metadata !{%struct.Table** %x_}, metadata !1939), !dbg !1938
  %46 = load %struct.Table** %mt, align 4, !dbg !1938
  store %struct.Table* %46, %struct.Table** %x_, align 4, !dbg !1938
  %47 = load %struct.Table** %x_, align 4, !dbg !1938
  %48 = bitcast %struct.Table* %47 to %union.GCUnion*, !dbg !1938
  %49 = bitcast %union.GCUnion* %48 to %struct.GCObject*, !dbg !1938
  %50 = load %struct.lua_TValue** %io, align 4, !dbg !1938
  %51 = getelementptr inbounds %struct.lua_TValue* %50, i32 0, i32 0, !dbg !1938
  %52 = bitcast %union.Value* %51 to %struct.GCObject**, !dbg !1938
  store %struct.GCObject* %49, %struct.GCObject** %52, align 4, !dbg !1938
  %53 = load %struct.lua_TValue** %io, align 4, !dbg !1938
  %54 = getelementptr inbounds %struct.lua_TValue* %53, i32 0, i32 1, !dbg !1938
  store i32 69, i32* %54, align 4, !dbg !1938
  %55 = load %struct.lua_State** %1, align 4, !dbg !1940
  %56 = getelementptr inbounds %struct.lua_State* %55, i32 0, i32 5, !dbg !1940
  %57 = load %struct.lua_TValue** %56, align 4, !dbg !1940
  %58 = getelementptr inbounds %struct.lua_TValue* %57, i32 1, !dbg !1940
  store %struct.lua_TValue* %58, %struct.lua_TValue** %56, align 4, !dbg !1940
  store i32 1, i32* %res, align 4, !dbg !1942
  br label %59, !dbg !1943

; <label>:59                                      ; preds = %42, %39
  %60 = load i32* %res, align 4, !dbg !1944
  ret i32 %60, !dbg !1944
}

; Function Attrs: nounwind
define i32 @lua_getuservalue(%struct.lua_State* %L, i32 %idx) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca i32, align 4
  %o = alloca %struct.lua_TValue*, align 4
  %io = alloca %struct.lua_TValue*, align 4
  %iu = alloca %struct.Udata*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !1945), !dbg !1946
  store i32 %idx, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !1947), !dbg !1948
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %o}, metadata !1949), !dbg !1950
  %3 = load %struct.lua_State** %1, align 4, !dbg !1951
  %4 = load i32* %2, align 4, !dbg !1951
  %5 = call %struct.lua_TValue* @index2addr(%struct.lua_State* %3, i32 %4), !dbg !1951
  store %struct.lua_TValue* %5, %struct.lua_TValue** %o, align 4, !dbg !1951
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %io}, metadata !1952), !dbg !1954
  %6 = load %struct.lua_State** %1, align 4, !dbg !1954
  %7 = getelementptr inbounds %struct.lua_State* %6, i32 0, i32 5, !dbg !1954
  %8 = load %struct.lua_TValue** %7, align 4, !dbg !1954
  store %struct.lua_TValue* %8, %struct.lua_TValue** %io, align 4, !dbg !1954
  call void @llvm.dbg.declare(metadata !{%struct.Udata** %iu}, metadata !1955), !dbg !1954
  %9 = load %struct.lua_TValue** %o, align 4, !dbg !1954
  %10 = getelementptr inbounds %struct.lua_TValue* %9, i32 0, i32 0, !dbg !1954
  %11 = bitcast %union.Value* %10 to %struct.GCObject**, !dbg !1954
  %12 = load %struct.GCObject** %11, align 4, !dbg !1954
  %13 = bitcast %struct.GCObject* %12 to %union.GCUnion*, !dbg !1954
  %14 = bitcast %union.GCUnion* %13 to %struct.Udata*, !dbg !1954
  store %struct.Udata* %14, %struct.Udata** %iu, align 4, !dbg !1954
  %15 = load %struct.lua_TValue** %io, align 4, !dbg !1954
  %16 = getelementptr inbounds %struct.lua_TValue* %15, i32 0, i32 0, !dbg !1954
  %17 = load %struct.Udata** %iu, align 4, !dbg !1954
  %18 = getelementptr inbounds %struct.Udata* %17, i32 0, i32 6, !dbg !1954
  %19 = bitcast %union.Value* %16 to i8*, !dbg !1954
  %20 = bitcast %union.Value* %18 to i8*, !dbg !1954
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* %20, i32 8, i32 8, i1 false), !dbg !1954
  %21 = load %struct.Udata** %iu, align 4, !dbg !1954
  %22 = getelementptr inbounds %struct.Udata* %21, i32 0, i32 3, !dbg !1954
  %23 = load i8* %22, align 1, !dbg !1954
  %24 = zext i8 %23 to i32, !dbg !1954
  %25 = load %struct.lua_TValue** %io, align 4, !dbg !1954
  %26 = getelementptr inbounds %struct.lua_TValue* %25, i32 0, i32 1, !dbg !1954
  store i32 %24, i32* %26, align 4, !dbg !1954
  %27 = load %struct.lua_State** %1, align 4, !dbg !1968
  %28 = getelementptr inbounds %struct.lua_State* %27, i32 0, i32 5, !dbg !1968
  %29 = load %struct.lua_TValue** %28, align 4, !dbg !1968
  %30 = getelementptr inbounds %struct.lua_TValue* %29, i32 1, !dbg !1968
  store %struct.lua_TValue* %30, %struct.lua_TValue** %28, align 4, !dbg !1968
  %31 = load %struct.lua_State** %1, align 4, !dbg !1970
  %32 = getelementptr inbounds %struct.lua_State* %31, i32 0, i32 5, !dbg !1970
  %33 = load %struct.lua_TValue** %32, align 4, !dbg !1970
  %34 = getelementptr inbounds %struct.lua_TValue* %33, i32 -1, !dbg !1970
  %35 = getelementptr inbounds %struct.lua_TValue* %34, i32 0, i32 1, !dbg !1970
  %36 = load i32* %35, align 4, !dbg !1970
  %37 = and i32 %36, 15, !dbg !1970
  ret i32 %37, !dbg !1970
}

; Function Attrs: nounwind
define void @lua_setglobal(%struct.lua_State* %L, i8* %name) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca i8*, align 4
  %reg = alloca %struct.Table*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !1971), !dbg !1972
  store i8* %name, i8** %2, align 4
  call void @llvm.dbg.declare(metadata !{i8** %2}, metadata !1973), !dbg !1974
  call void @llvm.dbg.declare(metadata !{%struct.Table** %reg}, metadata !1975), !dbg !1976
  %3 = load %struct.lua_State** %1, align 4, !dbg !1977
  %4 = getelementptr inbounds %struct.lua_State* %3, i32 0, i32 6, !dbg !1977
  %5 = load %struct.global_State** %4, align 4, !dbg !1977
  %6 = getelementptr inbounds %struct.global_State* %5, i32 0, i32 7, !dbg !1977
  %7 = getelementptr inbounds %struct.lua_TValue* %6, i32 0, i32 0, !dbg !1977
  %8 = bitcast %union.Value* %7 to %struct.GCObject**, !dbg !1977
  %9 = load %struct.GCObject** %8, align 4, !dbg !1977
  %10 = bitcast %struct.GCObject* %9 to %union.GCUnion*, !dbg !1977
  %11 = bitcast %union.GCUnion* %10 to %struct.Table*, !dbg !1977
  store %struct.Table* %11, %struct.Table** %reg, align 4, !dbg !1977
  %12 = load %struct.lua_State** %1, align 4, !dbg !1978
  %13 = load %struct.Table** %reg, align 4, !dbg !1979
  %14 = call %struct.lua_TValue* @luaH_getint(%struct.Table* %13, i64 2), !dbg !1979
  %15 = load i8** %2, align 4, !dbg !1978
  call void @auxsetstr(%struct.lua_State* %12, %struct.lua_TValue* %14, i8* %15), !dbg !1978
  ret void, !dbg !1980
}

; Function Attrs: nounwind
define internal void @auxsetstr(%struct.lua_State* %L, %struct.lua_TValue* %t, i8* %k) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca %struct.lua_TValue*, align 4
  %3 = alloca i8*, align 4
  %slot = alloca %struct.lua_TValue*, align 4
  %str = alloca %struct.TString*, align 4
  %io = alloca %struct.lua_TValue*, align 4
  %x_ = alloca %struct.TString*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !1981), !dbg !1982
  store %struct.lua_TValue* %t, %struct.lua_TValue** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %2}, metadata !1983), !dbg !1984
  store i8* %k, i8** %3, align 4
  call void @llvm.dbg.declare(metadata !{i8** %3}, metadata !1985), !dbg !1986
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %slot}, metadata !1987), !dbg !1988
  call void @llvm.dbg.declare(metadata !{%struct.TString** %str}, metadata !1989), !dbg !1990
  %4 = load %struct.lua_State** %1, align 4, !dbg !1991
  %5 = load i8** %3, align 4, !dbg !1991
  %6 = call %struct.TString* @luaS_new(%struct.lua_State* %4, i8* %5), !dbg !1991
  store %struct.TString* %6, %struct.TString** %str, align 4, !dbg !1991
  %7 = load %struct.lua_TValue** %2, align 4, !dbg !1992
  %8 = getelementptr inbounds %struct.lua_TValue* %7, i32 0, i32 1, !dbg !1992
  %9 = load i32* %8, align 4, !dbg !1992
  %10 = icmp eq i32 %9, 69, !dbg !1992
  br i1 %10, label %12, label %11, !dbg !1992

; <label>:11                                      ; preds = %0
  store %struct.lua_TValue* null, %struct.lua_TValue** %slot, align 4, !dbg !1994
  br i1 false, label %81, label %86, !dbg !1994

; <label>:12                                      ; preds = %0
  %13 = load %struct.lua_TValue** %2, align 4, !dbg !1996
  %14 = getelementptr inbounds %struct.lua_TValue* %13, i32 0, i32 0, !dbg !1996
  %15 = bitcast %union.Value* %14 to %struct.GCObject**, !dbg !1996
  %16 = load %struct.GCObject** %15, align 4, !dbg !1996
  %17 = bitcast %struct.GCObject* %16 to %union.GCUnion*, !dbg !1996
  %18 = bitcast %union.GCUnion* %17 to %struct.Table*, !dbg !1996
  %19 = load %struct.TString** %str, align 4, !dbg !1996
  %20 = call %struct.lua_TValue* @luaH_getstr(%struct.Table* %18, %struct.TString* %19), !dbg !1996
  store %struct.lua_TValue* %20, %struct.lua_TValue** %slot, align 4, !dbg !1996
  %21 = load %struct.lua_TValue** %slot, align 4, !dbg !1996
  %22 = getelementptr inbounds %struct.lua_TValue* %21, i32 0, i32 1, !dbg !1996
  %23 = load i32* %22, align 4, !dbg !1996
  %24 = icmp eq i32 %23, 0, !dbg !1996
  br i1 %24, label %25, label %26, !dbg !1996

; <label>:25                                      ; preds = %12
  br label %78, !dbg !1998

; <label>:26                                      ; preds = %12
  %27 = load %struct.lua_State** %1, align 4, !dbg !2000
  %28 = getelementptr inbounds %struct.lua_State* %27, i32 0, i32 5, !dbg !2000
  %29 = load %struct.lua_TValue** %28, align 4, !dbg !2000
  %30 = getelementptr inbounds %struct.lua_TValue* %29, i32 -1, !dbg !2000
  %31 = getelementptr inbounds %struct.lua_TValue* %30, i32 0, i32 1, !dbg !2000
  %32 = load i32* %31, align 4, !dbg !2000
  %33 = and i32 %32, 64, !dbg !2000
  %34 = icmp ne i32 %33, 0, !dbg !2000
  br i1 %34, label %35, label %68, !dbg !2000

; <label>:35                                      ; preds = %26
  %36 = load %struct.lua_TValue** %2, align 4, !dbg !2002
  %37 = getelementptr inbounds %struct.lua_TValue* %36, i32 0, i32 0, !dbg !2002
  %38 = bitcast %union.Value* %37 to %struct.GCObject**, !dbg !2002
  %39 = load %struct.GCObject** %38, align 4, !dbg !2002
  %40 = bitcast %struct.GCObject* %39 to %union.GCUnion*, !dbg !2002
  %41 = bitcast %union.GCUnion* %40 to %struct.Table*, !dbg !2002
  %42 = getelementptr inbounds %struct.Table* %41, i32 0, i32 2, !dbg !2002
  %43 = load i8* %42, align 1, !dbg !2002
  %44 = zext i8 %43 to i32, !dbg !2002
  %45 = and i32 %44, 4, !dbg !2002
  %46 = icmp ne i32 %45, 0, !dbg !2002
  br i1 %46, label %47, label %68, !dbg !2002

; <label>:47                                      ; preds = %35
  %48 = load %struct.lua_State** %1, align 4, !dbg !2004
  %49 = getelementptr inbounds %struct.lua_State* %48, i32 0, i32 5, !dbg !2004
  %50 = load %struct.lua_TValue** %49, align 4, !dbg !2004
  %51 = getelementptr inbounds %struct.lua_TValue* %50, i32 -1, !dbg !2004
  %52 = getelementptr inbounds %struct.lua_TValue* %51, i32 0, i32 0, !dbg !2004
  %53 = bitcast %union.Value* %52 to %struct.GCObject**, !dbg !2004
  %54 = load %struct.GCObject** %53, align 4, !dbg !2004
  %55 = getelementptr inbounds %struct.GCObject* %54, i32 0, i32 2, !dbg !2004
  %56 = load i8* %55, align 1, !dbg !2004
  %57 = zext i8 %56 to i32, !dbg !2004
  %58 = and i32 %57, 3, !dbg !2004
  %59 = icmp ne i32 %58, 0, !dbg !2004
  br i1 %59, label %60, label %68, !dbg !2004

; <label>:60                                      ; preds = %47
  %61 = load %struct.lua_State** %1, align 4, !dbg !2006
  %62 = load %struct.lua_TValue** %2, align 4, !dbg !2006
  %63 = getelementptr inbounds %struct.lua_TValue* %62, i32 0, i32 0, !dbg !2006
  %64 = bitcast %union.Value* %63 to %struct.GCObject**, !dbg !2006
  %65 = load %struct.GCObject** %64, align 4, !dbg !2006
  %66 = bitcast %struct.GCObject* %65 to %union.GCUnion*, !dbg !2006
  %67 = bitcast %union.GCUnion* %66 to %struct.Table*, !dbg !2006
  call void @luaC_barrierback_(%struct.lua_State* %61, %struct.Table* %67), !dbg !2006
  br label %69, !dbg !2006

; <label>:68                                      ; preds = %47, %35, %26
  br label %69, !dbg !2008

; <label>:69                                      ; preds = %68, %60
  %70 = load %struct.lua_State** %1, align 4, !dbg !2012
  %71 = load %struct.lua_TValue** %slot, align 4, !dbg !2012
  %72 = load %struct.lua_State** %1, align 4, !dbg !2012
  %73 = getelementptr inbounds %struct.lua_State* %72, i32 0, i32 5, !dbg !2012
  %74 = load %struct.lua_TValue** %73, align 4, !dbg !2012
  %75 = getelementptr inbounds %struct.lua_TValue* %74, i32 -1, !dbg !2012
  %76 = bitcast %struct.lua_TValue* %71 to i8*, !dbg !2012
  %77 = bitcast %struct.lua_TValue* %75 to i8*, !dbg !2012
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %76, i8* %77, i32 16, i32 8, i1 false), !dbg !2012
  br label %78, !dbg !2012

; <label>:78                                      ; preds = %69, %25
  %79 = phi i32 [ 0, %25 ], [ 1, %69 ], !dbg !1992
  %80 = icmp ne i32 %79, 0, !dbg !2015
  br i1 %80, label %81, label %86, !dbg !2015

; <label>:81                                      ; preds = %78, %11
  %82 = load %struct.lua_State** %1, align 4, !dbg !2018
  %83 = getelementptr inbounds %struct.lua_State* %82, i32 0, i32 5, !dbg !2018
  %84 = load %struct.lua_TValue** %83, align 4, !dbg !2018
  %85 = getelementptr inbounds %struct.lua_TValue* %84, i32 -1, !dbg !2018
  store %struct.lua_TValue* %85, %struct.lua_TValue** %83, align 4, !dbg !2018
  br label %123, !dbg !2018

; <label>:86                                      ; preds = %78, %11
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %io}, metadata !2019), !dbg !2022
  %87 = load %struct.lua_State** %1, align 4, !dbg !2022
  %88 = getelementptr inbounds %struct.lua_State* %87, i32 0, i32 5, !dbg !2022
  %89 = load %struct.lua_TValue** %88, align 4, !dbg !2022
  store %struct.lua_TValue* %89, %struct.lua_TValue** %io, align 4, !dbg !2022
  call void @llvm.dbg.declare(metadata !{%struct.TString** %x_}, metadata !2023), !dbg !2022
  %90 = load %struct.TString** %str, align 4, !dbg !2022
  store %struct.TString* %90, %struct.TString** %x_, align 4, !dbg !2022
  %91 = load %struct.TString** %x_, align 4, !dbg !2022
  %92 = bitcast %struct.TString* %91 to %union.GCUnion*, !dbg !2022
  %93 = bitcast %union.GCUnion* %92 to %struct.GCObject*, !dbg !2022
  %94 = load %struct.lua_TValue** %io, align 4, !dbg !2022
  %95 = getelementptr inbounds %struct.lua_TValue* %94, i32 0, i32 0, !dbg !2022
  %96 = bitcast %union.Value* %95 to %struct.GCObject**, !dbg !2022
  store %struct.GCObject* %93, %struct.GCObject** %96, align 4, !dbg !2022
  %97 = load %struct.TString** %x_, align 4, !dbg !2022
  %98 = getelementptr inbounds %struct.TString* %97, i32 0, i32 1, !dbg !2022
  %99 = load i8* %98, align 1, !dbg !2022
  %100 = zext i8 %99 to i32, !dbg !2022
  %101 = or i32 %100, 64, !dbg !2022
  %102 = load %struct.lua_TValue** %io, align 4, !dbg !2022
  %103 = getelementptr inbounds %struct.lua_TValue* %102, i32 0, i32 1, !dbg !2022
  store i32 %101, i32* %103, align 4, !dbg !2022
  %104 = load %struct.lua_State** %1, align 4, !dbg !2024
  %105 = getelementptr inbounds %struct.lua_State* %104, i32 0, i32 5, !dbg !2024
  %106 = load %struct.lua_TValue** %105, align 4, !dbg !2024
  %107 = getelementptr inbounds %struct.lua_TValue* %106, i32 1, !dbg !2024
  store %struct.lua_TValue* %107, %struct.lua_TValue** %105, align 4, !dbg !2024
  %108 = load %struct.lua_State** %1, align 4, !dbg !2026
  %109 = load %struct.lua_TValue** %2, align 4, !dbg !2026
  %110 = load %struct.lua_State** %1, align 4, !dbg !2026
  %111 = getelementptr inbounds %struct.lua_State* %110, i32 0, i32 5, !dbg !2026
  %112 = load %struct.lua_TValue** %111, align 4, !dbg !2026
  %113 = getelementptr inbounds %struct.lua_TValue* %112, i32 -1, !dbg !2026
  %114 = load %struct.lua_State** %1, align 4, !dbg !2026
  %115 = getelementptr inbounds %struct.lua_State* %114, i32 0, i32 5, !dbg !2026
  %116 = load %struct.lua_TValue** %115, align 4, !dbg !2026
  %117 = getelementptr inbounds %struct.lua_TValue* %116, i32 -2, !dbg !2026
  %118 = load %struct.lua_TValue** %slot, align 4, !dbg !2026
  call void @luaV_finishset(%struct.lua_State* %108, %struct.lua_TValue* %109, %struct.lua_TValue* %113, %struct.lua_TValue* %117, %struct.lua_TValue* %118), !dbg !2026
  %119 = load %struct.lua_State** %1, align 4, !dbg !2027
  %120 = getelementptr inbounds %struct.lua_State* %119, i32 0, i32 5, !dbg !2027
  %121 = load %struct.lua_TValue** %120, align 4, !dbg !2027
  %122 = getelementptr inbounds %struct.lua_TValue* %121, i32 -2, !dbg !2027
  store %struct.lua_TValue* %122, %struct.lua_TValue** %120, align 4, !dbg !2027
  br label %123

; <label>:123                                     ; preds = %86, %81
  ret void, !dbg !2028
}

; Function Attrs: nounwind
define void @lua_settable(%struct.lua_State* %L, i32 %idx) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca i32, align 4
  %t = alloca %struct.lua_TValue*, align 4
  %slot = alloca %struct.lua_TValue*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !2029), !dbg !2030
  store i32 %idx, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !2031), !dbg !2032
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %t}, metadata !2033), !dbg !2034
  %3 = load %struct.lua_State** %1, align 4, !dbg !2035
  %4 = load i32* %2, align 4, !dbg !2035
  %5 = call %struct.lua_TValue* @index2addr(%struct.lua_State* %3, i32 %4), !dbg !2035
  store %struct.lua_TValue* %5, %struct.lua_TValue** %t, align 4, !dbg !2035
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %slot}, metadata !2036), !dbg !2038
  %6 = load %struct.lua_TValue** %t, align 4, !dbg !2039
  %7 = getelementptr inbounds %struct.lua_TValue* %6, i32 0, i32 1, !dbg !2039
  %8 = load i32* %7, align 4, !dbg !2039
  %9 = icmp eq i32 %8, 69, !dbg !2039
  br i1 %9, label %11, label %10, !dbg !2039

; <label>:10                                      ; preds = %0
  store %struct.lua_TValue* null, %struct.lua_TValue** %slot, align 4, !dbg !2041
  br i1 false, label %95, label %83, !dbg !2041

; <label>:11                                      ; preds = %0
  %12 = load %struct.lua_TValue** %t, align 4, !dbg !2043
  %13 = getelementptr inbounds %struct.lua_TValue* %12, i32 0, i32 0, !dbg !2043
  %14 = bitcast %union.Value* %13 to %struct.GCObject**, !dbg !2043
  %15 = load %struct.GCObject** %14, align 4, !dbg !2043
  %16 = bitcast %struct.GCObject* %15 to %union.GCUnion*, !dbg !2043
  %17 = bitcast %union.GCUnion* %16 to %struct.Table*, !dbg !2043
  %18 = load %struct.lua_State** %1, align 4, !dbg !2043
  %19 = getelementptr inbounds %struct.lua_State* %18, i32 0, i32 5, !dbg !2043
  %20 = load %struct.lua_TValue** %19, align 4, !dbg !2043
  %21 = getelementptr inbounds %struct.lua_TValue* %20, i32 -2, !dbg !2043
  %22 = call %struct.lua_TValue* @luaH_get(%struct.Table* %17, %struct.lua_TValue* %21), !dbg !2043
  store %struct.lua_TValue* %22, %struct.lua_TValue** %slot, align 4, !dbg !2043
  %23 = load %struct.lua_TValue** %slot, align 4, !dbg !2043
  %24 = getelementptr inbounds %struct.lua_TValue* %23, i32 0, i32 1, !dbg !2043
  %25 = load i32* %24, align 4, !dbg !2043
  %26 = icmp eq i32 %25, 0, !dbg !2043
  br i1 %26, label %27, label %28, !dbg !2043

; <label>:27                                      ; preds = %11
  br label %80, !dbg !2045

; <label>:28                                      ; preds = %11
  %29 = load %struct.lua_State** %1, align 4, !dbg !2047
  %30 = getelementptr inbounds %struct.lua_State* %29, i32 0, i32 5, !dbg !2047
  %31 = load %struct.lua_TValue** %30, align 4, !dbg !2047
  %32 = getelementptr inbounds %struct.lua_TValue* %31, i32 -1, !dbg !2047
  %33 = getelementptr inbounds %struct.lua_TValue* %32, i32 0, i32 1, !dbg !2047
  %34 = load i32* %33, align 4, !dbg !2047
  %35 = and i32 %34, 64, !dbg !2047
  %36 = icmp ne i32 %35, 0, !dbg !2047
  br i1 %36, label %37, label %70, !dbg !2047

; <label>:37                                      ; preds = %28
  %38 = load %struct.lua_TValue** %t, align 4, !dbg !2049
  %39 = getelementptr inbounds %struct.lua_TValue* %38, i32 0, i32 0, !dbg !2049
  %40 = bitcast %union.Value* %39 to %struct.GCObject**, !dbg !2049
  %41 = load %struct.GCObject** %40, align 4, !dbg !2049
  %42 = bitcast %struct.GCObject* %41 to %union.GCUnion*, !dbg !2049
  %43 = bitcast %union.GCUnion* %42 to %struct.Table*, !dbg !2049
  %44 = getelementptr inbounds %struct.Table* %43, i32 0, i32 2, !dbg !2049
  %45 = load i8* %44, align 1, !dbg !2049
  %46 = zext i8 %45 to i32, !dbg !2049
  %47 = and i32 %46, 4, !dbg !2049
  %48 = icmp ne i32 %47, 0, !dbg !2049
  br i1 %48, label %49, label %70, !dbg !2049

; <label>:49                                      ; preds = %37
  %50 = load %struct.lua_State** %1, align 4, !dbg !2051
  %51 = getelementptr inbounds %struct.lua_State* %50, i32 0, i32 5, !dbg !2051
  %52 = load %struct.lua_TValue** %51, align 4, !dbg !2051
  %53 = getelementptr inbounds %struct.lua_TValue* %52, i32 -1, !dbg !2051
  %54 = getelementptr inbounds %struct.lua_TValue* %53, i32 0, i32 0, !dbg !2051
  %55 = bitcast %union.Value* %54 to %struct.GCObject**, !dbg !2051
  %56 = load %struct.GCObject** %55, align 4, !dbg !2051
  %57 = getelementptr inbounds %struct.GCObject* %56, i32 0, i32 2, !dbg !2051
  %58 = load i8* %57, align 1, !dbg !2051
  %59 = zext i8 %58 to i32, !dbg !2051
  %60 = and i32 %59, 3, !dbg !2051
  %61 = icmp ne i32 %60, 0, !dbg !2051
  br i1 %61, label %62, label %70, !dbg !2051

; <label>:62                                      ; preds = %49
  %63 = load %struct.lua_State** %1, align 4, !dbg !2053
  %64 = load %struct.lua_TValue** %t, align 4, !dbg !2053
  %65 = getelementptr inbounds %struct.lua_TValue* %64, i32 0, i32 0, !dbg !2053
  %66 = bitcast %union.Value* %65 to %struct.GCObject**, !dbg !2053
  %67 = load %struct.GCObject** %66, align 4, !dbg !2053
  %68 = bitcast %struct.GCObject* %67 to %union.GCUnion*, !dbg !2053
  %69 = bitcast %union.GCUnion* %68 to %struct.Table*, !dbg !2053
  call void @luaC_barrierback_(%struct.lua_State* %63, %struct.Table* %69), !dbg !2053
  br label %71, !dbg !2053

; <label>:70                                      ; preds = %49, %37, %28
  br label %71, !dbg !2055

; <label>:71                                      ; preds = %70, %62
  %72 = load %struct.lua_State** %1, align 4, !dbg !2059
  %73 = load %struct.lua_TValue** %slot, align 4, !dbg !2059
  %74 = load %struct.lua_State** %1, align 4, !dbg !2059
  %75 = getelementptr inbounds %struct.lua_State* %74, i32 0, i32 5, !dbg !2059
  %76 = load %struct.lua_TValue** %75, align 4, !dbg !2059
  %77 = getelementptr inbounds %struct.lua_TValue* %76, i32 -1, !dbg !2059
  %78 = bitcast %struct.lua_TValue* %73 to i8*, !dbg !2059
  %79 = bitcast %struct.lua_TValue* %77 to i8*, !dbg !2059
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %78, i8* %79, i32 16, i32 8, i1 false), !dbg !2059
  br label %80, !dbg !2059

; <label>:80                                      ; preds = %71, %27
  %81 = phi i32 [ 0, %27 ], [ 1, %71 ], !dbg !2039
  %82 = icmp ne i32 %81, 0, !dbg !2062
  br i1 %82, label %95, label %83, !dbg !2062

; <label>:83                                      ; preds = %80, %10
  %84 = load %struct.lua_State** %1, align 4, !dbg !2065
  %85 = load %struct.lua_TValue** %t, align 4, !dbg !2065
  %86 = load %struct.lua_State** %1, align 4, !dbg !2065
  %87 = getelementptr inbounds %struct.lua_State* %86, i32 0, i32 5, !dbg !2065
  %88 = load %struct.lua_TValue** %87, align 4, !dbg !2065
  %89 = getelementptr inbounds %struct.lua_TValue* %88, i32 -2, !dbg !2065
  %90 = load %struct.lua_State** %1, align 4, !dbg !2065
  %91 = getelementptr inbounds %struct.lua_State* %90, i32 0, i32 5, !dbg !2065
  %92 = load %struct.lua_TValue** %91, align 4, !dbg !2065
  %93 = getelementptr inbounds %struct.lua_TValue* %92, i32 -1, !dbg !2065
  %94 = load %struct.lua_TValue** %slot, align 4, !dbg !2065
  call void @luaV_finishset(%struct.lua_State* %84, %struct.lua_TValue* %85, %struct.lua_TValue* %89, %struct.lua_TValue* %93, %struct.lua_TValue* %94), !dbg !2065
  br label %95, !dbg !2065

; <label>:95                                      ; preds = %83, %80, %10
  %96 = load %struct.lua_State** %1, align 4, !dbg !2068
  %97 = getelementptr inbounds %struct.lua_State* %96, i32 0, i32 5, !dbg !2068
  %98 = load %struct.lua_TValue** %97, align 4, !dbg !2068
  %99 = getelementptr inbounds %struct.lua_TValue* %98, i32 -2, !dbg !2068
  store %struct.lua_TValue* %99, %struct.lua_TValue** %97, align 4, !dbg !2068
  ret void, !dbg !2069
}

declare hidden void @luaC_barrierback_(%struct.lua_State*, %struct.Table*) #2

declare hidden void @luaV_finishset(%struct.lua_State*, %struct.lua_TValue*, %struct.lua_TValue*, %struct.lua_TValue*, %struct.lua_TValue*) #2

; Function Attrs: nounwind
define void @lua_setfield(%struct.lua_State* %L, i32 %idx, i8* %k) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !2070), !dbg !2071
  store i32 %idx, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !2072), !dbg !2073
  store i8* %k, i8** %3, align 4
  call void @llvm.dbg.declare(metadata !{i8** %3}, metadata !2074), !dbg !2075
  %4 = load %struct.lua_State** %1, align 4, !dbg !2076
  %5 = load %struct.lua_State** %1, align 4, !dbg !2077
  %6 = load i32* %2, align 4, !dbg !2077
  %7 = call %struct.lua_TValue* @index2addr(%struct.lua_State* %5, i32 %6), !dbg !2077
  %8 = load i8** %3, align 4, !dbg !2076
  call void @auxsetstr(%struct.lua_State* %4, %struct.lua_TValue* %7, i8* %8), !dbg !2076
  ret void, !dbg !2078
}

; Function Attrs: nounwind
define void @lua_seti(%struct.lua_State* %L, i32 %idx, i64 %n) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %t = alloca %struct.lua_TValue*, align 4
  %slot = alloca %struct.lua_TValue*, align 4
  %io = alloca %struct.lua_TValue*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !2079), !dbg !2080
  store i32 %idx, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !2081), !dbg !2082
  store i64 %n, i64* %3, align 8
  call void @llvm.dbg.declare(metadata !{i64* %3}, metadata !2083), !dbg !2084
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %t}, metadata !2085), !dbg !2086
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %slot}, metadata !2087), !dbg !2088
  %4 = load %struct.lua_State** %1, align 4, !dbg !2089
  %5 = load i32* %2, align 4, !dbg !2089
  %6 = call %struct.lua_TValue* @index2addr(%struct.lua_State* %4, i32 %5), !dbg !2089
  store %struct.lua_TValue* %6, %struct.lua_TValue** %t, align 4, !dbg !2089
  %7 = load %struct.lua_TValue** %t, align 4, !dbg !2090
  %8 = getelementptr inbounds %struct.lua_TValue* %7, i32 0, i32 1, !dbg !2090
  %9 = load i32* %8, align 4, !dbg !2090
  %10 = icmp eq i32 %9, 69, !dbg !2090
  br i1 %10, label %12, label %11, !dbg !2090

; <label>:11                                      ; preds = %0
  store %struct.lua_TValue* null, %struct.lua_TValue** %slot, align 4, !dbg !2092
  br i1 false, label %81, label %86, !dbg !2092

; <label>:12                                      ; preds = %0
  %13 = load %struct.lua_TValue** %t, align 4, !dbg !2094
  %14 = getelementptr inbounds %struct.lua_TValue* %13, i32 0, i32 0, !dbg !2094
  %15 = bitcast %union.Value* %14 to %struct.GCObject**, !dbg !2094
  %16 = load %struct.GCObject** %15, align 4, !dbg !2094
  %17 = bitcast %struct.GCObject* %16 to %union.GCUnion*, !dbg !2094
  %18 = bitcast %union.GCUnion* %17 to %struct.Table*, !dbg !2094
  %19 = load i64* %3, align 8, !dbg !2094
  %20 = call %struct.lua_TValue* @luaH_getint(%struct.Table* %18, i64 %19), !dbg !2094
  store %struct.lua_TValue* %20, %struct.lua_TValue** %slot, align 4, !dbg !2094
  %21 = load %struct.lua_TValue** %slot, align 4, !dbg !2094
  %22 = getelementptr inbounds %struct.lua_TValue* %21, i32 0, i32 1, !dbg !2094
  %23 = load i32* %22, align 4, !dbg !2094
  %24 = icmp eq i32 %23, 0, !dbg !2094
  br i1 %24, label %25, label %26, !dbg !2094

; <label>:25                                      ; preds = %12
  br label %78, !dbg !2096

; <label>:26                                      ; preds = %12
  %27 = load %struct.lua_State** %1, align 4, !dbg !2098
  %28 = getelementptr inbounds %struct.lua_State* %27, i32 0, i32 5, !dbg !2098
  %29 = load %struct.lua_TValue** %28, align 4, !dbg !2098
  %30 = getelementptr inbounds %struct.lua_TValue* %29, i32 -1, !dbg !2098
  %31 = getelementptr inbounds %struct.lua_TValue* %30, i32 0, i32 1, !dbg !2098
  %32 = load i32* %31, align 4, !dbg !2098
  %33 = and i32 %32, 64, !dbg !2098
  %34 = icmp ne i32 %33, 0, !dbg !2098
  br i1 %34, label %35, label %68, !dbg !2098

; <label>:35                                      ; preds = %26
  %36 = load %struct.lua_TValue** %t, align 4, !dbg !2100
  %37 = getelementptr inbounds %struct.lua_TValue* %36, i32 0, i32 0, !dbg !2100
  %38 = bitcast %union.Value* %37 to %struct.GCObject**, !dbg !2100
  %39 = load %struct.GCObject** %38, align 4, !dbg !2100
  %40 = bitcast %struct.GCObject* %39 to %union.GCUnion*, !dbg !2100
  %41 = bitcast %union.GCUnion* %40 to %struct.Table*, !dbg !2100
  %42 = getelementptr inbounds %struct.Table* %41, i32 0, i32 2, !dbg !2100
  %43 = load i8* %42, align 1, !dbg !2100
  %44 = zext i8 %43 to i32, !dbg !2100
  %45 = and i32 %44, 4, !dbg !2100
  %46 = icmp ne i32 %45, 0, !dbg !2100
  br i1 %46, label %47, label %68, !dbg !2100

; <label>:47                                      ; preds = %35
  %48 = load %struct.lua_State** %1, align 4, !dbg !2102
  %49 = getelementptr inbounds %struct.lua_State* %48, i32 0, i32 5, !dbg !2102
  %50 = load %struct.lua_TValue** %49, align 4, !dbg !2102
  %51 = getelementptr inbounds %struct.lua_TValue* %50, i32 -1, !dbg !2102
  %52 = getelementptr inbounds %struct.lua_TValue* %51, i32 0, i32 0, !dbg !2102
  %53 = bitcast %union.Value* %52 to %struct.GCObject**, !dbg !2102
  %54 = load %struct.GCObject** %53, align 4, !dbg !2102
  %55 = getelementptr inbounds %struct.GCObject* %54, i32 0, i32 2, !dbg !2102
  %56 = load i8* %55, align 1, !dbg !2102
  %57 = zext i8 %56 to i32, !dbg !2102
  %58 = and i32 %57, 3, !dbg !2102
  %59 = icmp ne i32 %58, 0, !dbg !2102
  br i1 %59, label %60, label %68, !dbg !2102

; <label>:60                                      ; preds = %47
  %61 = load %struct.lua_State** %1, align 4, !dbg !2104
  %62 = load %struct.lua_TValue** %t, align 4, !dbg !2104
  %63 = getelementptr inbounds %struct.lua_TValue* %62, i32 0, i32 0, !dbg !2104
  %64 = bitcast %union.Value* %63 to %struct.GCObject**, !dbg !2104
  %65 = load %struct.GCObject** %64, align 4, !dbg !2104
  %66 = bitcast %struct.GCObject* %65 to %union.GCUnion*, !dbg !2104
  %67 = bitcast %union.GCUnion* %66 to %struct.Table*, !dbg !2104
  call void @luaC_barrierback_(%struct.lua_State* %61, %struct.Table* %67), !dbg !2104
  br label %69, !dbg !2104

; <label>:68                                      ; preds = %47, %35, %26
  br label %69, !dbg !2106

; <label>:69                                      ; preds = %68, %60
  %70 = load %struct.lua_State** %1, align 4, !dbg !2110
  %71 = load %struct.lua_TValue** %slot, align 4, !dbg !2110
  %72 = load %struct.lua_State** %1, align 4, !dbg !2110
  %73 = getelementptr inbounds %struct.lua_State* %72, i32 0, i32 5, !dbg !2110
  %74 = load %struct.lua_TValue** %73, align 4, !dbg !2110
  %75 = getelementptr inbounds %struct.lua_TValue* %74, i32 -1, !dbg !2110
  %76 = bitcast %struct.lua_TValue* %71 to i8*, !dbg !2110
  %77 = bitcast %struct.lua_TValue* %75 to i8*, !dbg !2110
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %76, i8* %77, i32 16, i32 8, i1 false), !dbg !2110
  br label %78, !dbg !2110

; <label>:78                                      ; preds = %69, %25
  %79 = phi i32 [ 0, %25 ], [ 1, %69 ], !dbg !2090
  %80 = icmp ne i32 %79, 0, !dbg !2113
  br i1 %80, label %81, label %86, !dbg !2113

; <label>:81                                      ; preds = %78, %11
  %82 = load %struct.lua_State** %1, align 4, !dbg !2116
  %83 = getelementptr inbounds %struct.lua_State* %82, i32 0, i32 5, !dbg !2116
  %84 = load %struct.lua_TValue** %83, align 4, !dbg !2116
  %85 = getelementptr inbounds %struct.lua_TValue* %84, i32 -1, !dbg !2116
  store %struct.lua_TValue* %85, %struct.lua_TValue** %83, align 4, !dbg !2116
  br label %115, !dbg !2116

; <label>:86                                      ; preds = %78, %11
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %io}, metadata !2117), !dbg !2120
  %87 = load %struct.lua_State** %1, align 4, !dbg !2120
  %88 = getelementptr inbounds %struct.lua_State* %87, i32 0, i32 5, !dbg !2120
  %89 = load %struct.lua_TValue** %88, align 4, !dbg !2120
  store %struct.lua_TValue* %89, %struct.lua_TValue** %io, align 4, !dbg !2120
  %90 = load i64* %3, align 8, !dbg !2120
  %91 = load %struct.lua_TValue** %io, align 4, !dbg !2120
  %92 = getelementptr inbounds %struct.lua_TValue* %91, i32 0, i32 0, !dbg !2120
  %93 = bitcast %union.Value* %92 to i64*, !dbg !2120
  store i64 %90, i64* %93, align 8, !dbg !2120
  %94 = load %struct.lua_TValue** %io, align 4, !dbg !2120
  %95 = getelementptr inbounds %struct.lua_TValue* %94, i32 0, i32 1, !dbg !2120
  store i32 19, i32* %95, align 4, !dbg !2120
  %96 = load %struct.lua_State** %1, align 4, !dbg !2121
  %97 = getelementptr inbounds %struct.lua_State* %96, i32 0, i32 5, !dbg !2121
  %98 = load %struct.lua_TValue** %97, align 4, !dbg !2121
  %99 = getelementptr inbounds %struct.lua_TValue* %98, i32 1, !dbg !2121
  store %struct.lua_TValue* %99, %struct.lua_TValue** %97, align 4, !dbg !2121
  %100 = load %struct.lua_State** %1, align 4, !dbg !2123
  %101 = load %struct.lua_TValue** %t, align 4, !dbg !2123
  %102 = load %struct.lua_State** %1, align 4, !dbg !2123
  %103 = getelementptr inbounds %struct.lua_State* %102, i32 0, i32 5, !dbg !2123
  %104 = load %struct.lua_TValue** %103, align 4, !dbg !2123
  %105 = getelementptr inbounds %struct.lua_TValue* %104, i32 -1, !dbg !2123
  %106 = load %struct.lua_State** %1, align 4, !dbg !2123
  %107 = getelementptr inbounds %struct.lua_State* %106, i32 0, i32 5, !dbg !2123
  %108 = load %struct.lua_TValue** %107, align 4, !dbg !2123
  %109 = getelementptr inbounds %struct.lua_TValue* %108, i32 -2, !dbg !2123
  %110 = load %struct.lua_TValue** %slot, align 4, !dbg !2123
  call void @luaV_finishset(%struct.lua_State* %100, %struct.lua_TValue* %101, %struct.lua_TValue* %105, %struct.lua_TValue* %109, %struct.lua_TValue* %110), !dbg !2123
  %111 = load %struct.lua_State** %1, align 4, !dbg !2124
  %112 = getelementptr inbounds %struct.lua_State* %111, i32 0, i32 5, !dbg !2124
  %113 = load %struct.lua_TValue** %112, align 4, !dbg !2124
  %114 = getelementptr inbounds %struct.lua_TValue* %113, i32 -2, !dbg !2124
  store %struct.lua_TValue* %114, %struct.lua_TValue** %112, align 4, !dbg !2124
  br label %115

; <label>:115                                     ; preds = %86, %81
  ret void, !dbg !2125
}

; Function Attrs: nounwind
define void @lua_rawset(%struct.lua_State* %L, i32 %idx) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca i32, align 4
  %o = alloca %struct.lua_TValue*, align 4
  %slot = alloca %struct.lua_TValue*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !2126), !dbg !2127
  store i32 %idx, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !2128), !dbg !2129
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %o}, metadata !2130), !dbg !2131
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %slot}, metadata !2132), !dbg !2133
  %3 = load %struct.lua_State** %1, align 4, !dbg !2134
  %4 = load i32* %2, align 4, !dbg !2134
  %5 = call %struct.lua_TValue* @index2addr(%struct.lua_State* %3, i32 %4), !dbg !2134
  store %struct.lua_TValue* %5, %struct.lua_TValue** %o, align 4, !dbg !2134
  %6 = load %struct.lua_State** %1, align 4, !dbg !2135
  %7 = load %struct.lua_TValue** %o, align 4, !dbg !2135
  %8 = getelementptr inbounds %struct.lua_TValue* %7, i32 0, i32 0, !dbg !2135
  %9 = bitcast %union.Value* %8 to %struct.GCObject**, !dbg !2135
  %10 = load %struct.GCObject** %9, align 4, !dbg !2135
  %11 = bitcast %struct.GCObject* %10 to %union.GCUnion*, !dbg !2135
  %12 = bitcast %union.GCUnion* %11 to %struct.Table*, !dbg !2135
  %13 = load %struct.lua_State** %1, align 4, !dbg !2135
  %14 = getelementptr inbounds %struct.lua_State* %13, i32 0, i32 5, !dbg !2135
  %15 = load %struct.lua_TValue** %14, align 4, !dbg !2135
  %16 = getelementptr inbounds %struct.lua_TValue* %15, i32 -2, !dbg !2135
  %17 = call %struct.lua_TValue* @luaH_set(%struct.lua_State* %6, %struct.Table* %12, %struct.lua_TValue* %16), !dbg !2135
  store %struct.lua_TValue* %17, %struct.lua_TValue** %slot, align 4, !dbg !2135
  %18 = load %struct.lua_State** %1, align 4, !dbg !2136
  %19 = load %struct.lua_TValue** %slot, align 4, !dbg !2136
  %20 = load %struct.lua_State** %1, align 4, !dbg !2136
  %21 = getelementptr inbounds %struct.lua_State* %20, i32 0, i32 5, !dbg !2136
  %22 = load %struct.lua_TValue** %21, align 4, !dbg !2136
  %23 = getelementptr inbounds %struct.lua_TValue* %22, i32 -1, !dbg !2136
  %24 = bitcast %struct.lua_TValue* %19 to i8*, !dbg !2136
  %25 = bitcast %struct.lua_TValue* %23 to i8*, !dbg !2136
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %24, i8* %25, i32 16, i32 8, i1 false), !dbg !2136
  %26 = load %struct.lua_TValue** %o, align 4, !dbg !2137
  %27 = getelementptr inbounds %struct.lua_TValue* %26, i32 0, i32 0, !dbg !2137
  %28 = bitcast %union.Value* %27 to %struct.GCObject**, !dbg !2137
  %29 = load %struct.GCObject** %28, align 4, !dbg !2137
  %30 = bitcast %struct.GCObject* %29 to %union.GCUnion*, !dbg !2137
  %31 = bitcast %union.GCUnion* %30 to %struct.Table*, !dbg !2137
  %32 = getelementptr inbounds %struct.Table* %31, i32 0, i32 3, !dbg !2137
  store i8 0, i8* %32, align 1, !dbg !2137
  %33 = load %struct.lua_State** %1, align 4, !dbg !2138
  %34 = getelementptr inbounds %struct.lua_State* %33, i32 0, i32 5, !dbg !2138
  %35 = load %struct.lua_TValue** %34, align 4, !dbg !2138
  %36 = getelementptr inbounds %struct.lua_TValue* %35, i32 -1, !dbg !2138
  %37 = getelementptr inbounds %struct.lua_TValue* %36, i32 0, i32 1, !dbg !2138
  %38 = load i32* %37, align 4, !dbg !2138
  %39 = and i32 %38, 64, !dbg !2138
  %40 = icmp ne i32 %39, 0, !dbg !2138
  br i1 %40, label %41, label %74, !dbg !2138

; <label>:41                                      ; preds = %0
  %42 = load %struct.lua_TValue** %o, align 4, !dbg !2139
  %43 = getelementptr inbounds %struct.lua_TValue* %42, i32 0, i32 0, !dbg !2139
  %44 = bitcast %union.Value* %43 to %struct.GCObject**, !dbg !2139
  %45 = load %struct.GCObject** %44, align 4, !dbg !2139
  %46 = bitcast %struct.GCObject* %45 to %union.GCUnion*, !dbg !2139
  %47 = bitcast %union.GCUnion* %46 to %struct.Table*, !dbg !2139
  %48 = getelementptr inbounds %struct.Table* %47, i32 0, i32 2, !dbg !2139
  %49 = load i8* %48, align 1, !dbg !2139
  %50 = zext i8 %49 to i32, !dbg !2139
  %51 = and i32 %50, 4, !dbg !2139
  %52 = icmp ne i32 %51, 0, !dbg !2139
  br i1 %52, label %53, label %74, !dbg !2139

; <label>:53                                      ; preds = %41
  %54 = load %struct.lua_State** %1, align 4, !dbg !2141
  %55 = getelementptr inbounds %struct.lua_State* %54, i32 0, i32 5, !dbg !2141
  %56 = load %struct.lua_TValue** %55, align 4, !dbg !2141
  %57 = getelementptr inbounds %struct.lua_TValue* %56, i32 -1, !dbg !2141
  %58 = getelementptr inbounds %struct.lua_TValue* %57, i32 0, i32 0, !dbg !2141
  %59 = bitcast %union.Value* %58 to %struct.GCObject**, !dbg !2141
  %60 = load %struct.GCObject** %59, align 4, !dbg !2141
  %61 = getelementptr inbounds %struct.GCObject* %60, i32 0, i32 2, !dbg !2141
  %62 = load i8* %61, align 1, !dbg !2141
  %63 = zext i8 %62 to i32, !dbg !2141
  %64 = and i32 %63, 3, !dbg !2141
  %65 = icmp ne i32 %64, 0, !dbg !2141
  br i1 %65, label %66, label %74, !dbg !2141

; <label>:66                                      ; preds = %53
  %67 = load %struct.lua_State** %1, align 4, !dbg !2143
  %68 = load %struct.lua_TValue** %o, align 4, !dbg !2143
  %69 = getelementptr inbounds %struct.lua_TValue* %68, i32 0, i32 0, !dbg !2143
  %70 = bitcast %union.Value* %69 to %struct.GCObject**, !dbg !2143
  %71 = load %struct.GCObject** %70, align 4, !dbg !2143
  %72 = bitcast %struct.GCObject* %71 to %union.GCUnion*, !dbg !2143
  %73 = bitcast %union.GCUnion* %72 to %struct.Table*, !dbg !2143
  call void @luaC_barrierback_(%struct.lua_State* %67, %struct.Table* %73), !dbg !2143
  br label %75, !dbg !2143

; <label>:74                                      ; preds = %53, %41, %0
  br label %75, !dbg !2145

; <label>:75                                      ; preds = %74, %66
  %76 = load %struct.lua_State** %1, align 4, !dbg !2149
  %77 = getelementptr inbounds %struct.lua_State* %76, i32 0, i32 5, !dbg !2149
  %78 = load %struct.lua_TValue** %77, align 4, !dbg !2149
  %79 = getelementptr inbounds %struct.lua_TValue* %78, i32 -2, !dbg !2149
  store %struct.lua_TValue* %79, %struct.lua_TValue** %77, align 4, !dbg !2149
  ret void, !dbg !2150
}

declare hidden %struct.lua_TValue* @luaH_set(%struct.lua_State*, %struct.Table*, %struct.lua_TValue*) #2

; Function Attrs: nounwind
define void @lua_rawseti(%struct.lua_State* %L, i32 %idx, i64 %n) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %o = alloca %struct.lua_TValue*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !2151), !dbg !2152
  store i32 %idx, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !2153), !dbg !2154
  store i64 %n, i64* %3, align 8
  call void @llvm.dbg.declare(metadata !{i64* %3}, metadata !2155), !dbg !2156
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %o}, metadata !2157), !dbg !2158
  %4 = load %struct.lua_State** %1, align 4, !dbg !2159
  %5 = load i32* %2, align 4, !dbg !2159
  %6 = call %struct.lua_TValue* @index2addr(%struct.lua_State* %4, i32 %5), !dbg !2159
  store %struct.lua_TValue* %6, %struct.lua_TValue** %o, align 4, !dbg !2159
  %7 = load %struct.lua_State** %1, align 4, !dbg !2160
  %8 = load %struct.lua_TValue** %o, align 4, !dbg !2160
  %9 = getelementptr inbounds %struct.lua_TValue* %8, i32 0, i32 0, !dbg !2160
  %10 = bitcast %union.Value* %9 to %struct.GCObject**, !dbg !2160
  %11 = load %struct.GCObject** %10, align 4, !dbg !2160
  %12 = bitcast %struct.GCObject* %11 to %union.GCUnion*, !dbg !2160
  %13 = bitcast %union.GCUnion* %12 to %struct.Table*, !dbg !2160
  %14 = load i64* %3, align 8, !dbg !2160
  %15 = load %struct.lua_State** %1, align 4, !dbg !2160
  %16 = getelementptr inbounds %struct.lua_State* %15, i32 0, i32 5, !dbg !2160
  %17 = load %struct.lua_TValue** %16, align 4, !dbg !2160
  %18 = getelementptr inbounds %struct.lua_TValue* %17, i32 -1, !dbg !2160
  call void @luaH_setint(%struct.lua_State* %7, %struct.Table* %13, i64 %14, %struct.lua_TValue* %18), !dbg !2160
  %19 = load %struct.lua_State** %1, align 4, !dbg !2161
  %20 = getelementptr inbounds %struct.lua_State* %19, i32 0, i32 5, !dbg !2161
  %21 = load %struct.lua_TValue** %20, align 4, !dbg !2161
  %22 = getelementptr inbounds %struct.lua_TValue* %21, i32 -1, !dbg !2161
  %23 = getelementptr inbounds %struct.lua_TValue* %22, i32 0, i32 1, !dbg !2161
  %24 = load i32* %23, align 4, !dbg !2161
  %25 = and i32 %24, 64, !dbg !2161
  %26 = icmp ne i32 %25, 0, !dbg !2161
  br i1 %26, label %27, label %60, !dbg !2161

; <label>:27                                      ; preds = %0
  %28 = load %struct.lua_TValue** %o, align 4, !dbg !2162
  %29 = getelementptr inbounds %struct.lua_TValue* %28, i32 0, i32 0, !dbg !2162
  %30 = bitcast %union.Value* %29 to %struct.GCObject**, !dbg !2162
  %31 = load %struct.GCObject** %30, align 4, !dbg !2162
  %32 = bitcast %struct.GCObject* %31 to %union.GCUnion*, !dbg !2162
  %33 = bitcast %union.GCUnion* %32 to %struct.Table*, !dbg !2162
  %34 = getelementptr inbounds %struct.Table* %33, i32 0, i32 2, !dbg !2162
  %35 = load i8* %34, align 1, !dbg !2162
  %36 = zext i8 %35 to i32, !dbg !2162
  %37 = and i32 %36, 4, !dbg !2162
  %38 = icmp ne i32 %37, 0, !dbg !2162
  br i1 %38, label %39, label %60, !dbg !2162

; <label>:39                                      ; preds = %27
  %40 = load %struct.lua_State** %1, align 4, !dbg !2164
  %41 = getelementptr inbounds %struct.lua_State* %40, i32 0, i32 5, !dbg !2164
  %42 = load %struct.lua_TValue** %41, align 4, !dbg !2164
  %43 = getelementptr inbounds %struct.lua_TValue* %42, i32 -1, !dbg !2164
  %44 = getelementptr inbounds %struct.lua_TValue* %43, i32 0, i32 0, !dbg !2164
  %45 = bitcast %union.Value* %44 to %struct.GCObject**, !dbg !2164
  %46 = load %struct.GCObject** %45, align 4, !dbg !2164
  %47 = getelementptr inbounds %struct.GCObject* %46, i32 0, i32 2, !dbg !2164
  %48 = load i8* %47, align 1, !dbg !2164
  %49 = zext i8 %48 to i32, !dbg !2164
  %50 = and i32 %49, 3, !dbg !2164
  %51 = icmp ne i32 %50, 0, !dbg !2164
  br i1 %51, label %52, label %60, !dbg !2164

; <label>:52                                      ; preds = %39
  %53 = load %struct.lua_State** %1, align 4, !dbg !2166
  %54 = load %struct.lua_TValue** %o, align 4, !dbg !2166
  %55 = getelementptr inbounds %struct.lua_TValue* %54, i32 0, i32 0, !dbg !2166
  %56 = bitcast %union.Value* %55 to %struct.GCObject**, !dbg !2166
  %57 = load %struct.GCObject** %56, align 4, !dbg !2166
  %58 = bitcast %struct.GCObject* %57 to %union.GCUnion*, !dbg !2166
  %59 = bitcast %union.GCUnion* %58 to %struct.Table*, !dbg !2166
  call void @luaC_barrierback_(%struct.lua_State* %53, %struct.Table* %59), !dbg !2166
  br label %61, !dbg !2166

; <label>:60                                      ; preds = %39, %27, %0
  br label %61, !dbg !2168

; <label>:61                                      ; preds = %60, %52
  %62 = load %struct.lua_State** %1, align 4, !dbg !2172
  %63 = getelementptr inbounds %struct.lua_State* %62, i32 0, i32 5, !dbg !2172
  %64 = load %struct.lua_TValue** %63, align 4, !dbg !2172
  %65 = getelementptr inbounds %struct.lua_TValue* %64, i32 -1, !dbg !2172
  store %struct.lua_TValue* %65, %struct.lua_TValue** %63, align 4, !dbg !2172
  ret void, !dbg !2173
}

declare hidden void @luaH_setint(%struct.lua_State*, %struct.Table*, i64, %struct.lua_TValue*) #2

; Function Attrs: nounwind
define void @lua_rawsetp(%struct.lua_State* %L, i32 %idx, i8* %p) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 4
  %o = alloca %struct.lua_TValue*, align 4
  %k = alloca %struct.lua_TValue, align 8
  %slot = alloca %struct.lua_TValue*, align 4
  %io = alloca %struct.lua_TValue*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !2174), !dbg !2175
  store i32 %idx, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !2176), !dbg !2177
  store i8* %p, i8** %3, align 4
  call void @llvm.dbg.declare(metadata !{i8** %3}, metadata !2178), !dbg !2179
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %o}, metadata !2180), !dbg !2181
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue* %k}, metadata !2182), !dbg !2183
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %slot}, metadata !2184), !dbg !2185
  %4 = load %struct.lua_State** %1, align 4, !dbg !2186
  %5 = load i32* %2, align 4, !dbg !2186
  %6 = call %struct.lua_TValue* @index2addr(%struct.lua_State* %4, i32 %5), !dbg !2186
  store %struct.lua_TValue* %6, %struct.lua_TValue** %o, align 4, !dbg !2186
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %io}, metadata !2187), !dbg !2189
  store %struct.lua_TValue* %k, %struct.lua_TValue** %io, align 4, !dbg !2189
  %7 = load i8** %3, align 4, !dbg !2189
  %8 = load %struct.lua_TValue** %io, align 4, !dbg !2189
  %9 = getelementptr inbounds %struct.lua_TValue* %8, i32 0, i32 0, !dbg !2189
  %10 = bitcast %union.Value* %9 to i8**, !dbg !2189
  store i8* %7, i8** %10, align 4, !dbg !2189
  %11 = load %struct.lua_TValue** %io, align 4, !dbg !2189
  %12 = getelementptr inbounds %struct.lua_TValue* %11, i32 0, i32 1, !dbg !2189
  store i32 2, i32* %12, align 4, !dbg !2189
  %13 = load %struct.lua_State** %1, align 4, !dbg !2190
  %14 = load %struct.lua_TValue** %o, align 4, !dbg !2190
  %15 = getelementptr inbounds %struct.lua_TValue* %14, i32 0, i32 0, !dbg !2190
  %16 = bitcast %union.Value* %15 to %struct.GCObject**, !dbg !2190
  %17 = load %struct.GCObject** %16, align 4, !dbg !2190
  %18 = bitcast %struct.GCObject* %17 to %union.GCUnion*, !dbg !2190
  %19 = bitcast %union.GCUnion* %18 to %struct.Table*, !dbg !2190
  %20 = call %struct.lua_TValue* @luaH_set(%struct.lua_State* %13, %struct.Table* %19, %struct.lua_TValue* %k), !dbg !2190
  store %struct.lua_TValue* %20, %struct.lua_TValue** %slot, align 4, !dbg !2190
  %21 = load %struct.lua_State** %1, align 4, !dbg !2191
  %22 = load %struct.lua_TValue** %slot, align 4, !dbg !2191
  %23 = load %struct.lua_State** %1, align 4, !dbg !2191
  %24 = getelementptr inbounds %struct.lua_State* %23, i32 0, i32 5, !dbg !2191
  %25 = load %struct.lua_TValue** %24, align 4, !dbg !2191
  %26 = getelementptr inbounds %struct.lua_TValue* %25, i32 -1, !dbg !2191
  %27 = bitcast %struct.lua_TValue* %22 to i8*, !dbg !2191
  %28 = bitcast %struct.lua_TValue* %26 to i8*, !dbg !2191
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %28, i32 16, i32 8, i1 false), !dbg !2191
  %29 = load %struct.lua_State** %1, align 4, !dbg !2192
  %30 = getelementptr inbounds %struct.lua_State* %29, i32 0, i32 5, !dbg !2192
  %31 = load %struct.lua_TValue** %30, align 4, !dbg !2192
  %32 = getelementptr inbounds %struct.lua_TValue* %31, i32 -1, !dbg !2192
  %33 = getelementptr inbounds %struct.lua_TValue* %32, i32 0, i32 1, !dbg !2192
  %34 = load i32* %33, align 4, !dbg !2192
  %35 = and i32 %34, 64, !dbg !2192
  %36 = icmp ne i32 %35, 0, !dbg !2192
  br i1 %36, label %37, label %70, !dbg !2192

; <label>:37                                      ; preds = %0
  %38 = load %struct.lua_TValue** %o, align 4, !dbg !2193
  %39 = getelementptr inbounds %struct.lua_TValue* %38, i32 0, i32 0, !dbg !2193
  %40 = bitcast %union.Value* %39 to %struct.GCObject**, !dbg !2193
  %41 = load %struct.GCObject** %40, align 4, !dbg !2193
  %42 = bitcast %struct.GCObject* %41 to %union.GCUnion*, !dbg !2193
  %43 = bitcast %union.GCUnion* %42 to %struct.Table*, !dbg !2193
  %44 = getelementptr inbounds %struct.Table* %43, i32 0, i32 2, !dbg !2193
  %45 = load i8* %44, align 1, !dbg !2193
  %46 = zext i8 %45 to i32, !dbg !2193
  %47 = and i32 %46, 4, !dbg !2193
  %48 = icmp ne i32 %47, 0, !dbg !2193
  br i1 %48, label %49, label %70, !dbg !2193

; <label>:49                                      ; preds = %37
  %50 = load %struct.lua_State** %1, align 4, !dbg !2195
  %51 = getelementptr inbounds %struct.lua_State* %50, i32 0, i32 5, !dbg !2195
  %52 = load %struct.lua_TValue** %51, align 4, !dbg !2195
  %53 = getelementptr inbounds %struct.lua_TValue* %52, i32 -1, !dbg !2195
  %54 = getelementptr inbounds %struct.lua_TValue* %53, i32 0, i32 0, !dbg !2195
  %55 = bitcast %union.Value* %54 to %struct.GCObject**, !dbg !2195
  %56 = load %struct.GCObject** %55, align 4, !dbg !2195
  %57 = getelementptr inbounds %struct.GCObject* %56, i32 0, i32 2, !dbg !2195
  %58 = load i8* %57, align 1, !dbg !2195
  %59 = zext i8 %58 to i32, !dbg !2195
  %60 = and i32 %59, 3, !dbg !2195
  %61 = icmp ne i32 %60, 0, !dbg !2195
  br i1 %61, label %62, label %70, !dbg !2195

; <label>:62                                      ; preds = %49
  %63 = load %struct.lua_State** %1, align 4, !dbg !2197
  %64 = load %struct.lua_TValue** %o, align 4, !dbg !2197
  %65 = getelementptr inbounds %struct.lua_TValue* %64, i32 0, i32 0, !dbg !2197
  %66 = bitcast %union.Value* %65 to %struct.GCObject**, !dbg !2197
  %67 = load %struct.GCObject** %66, align 4, !dbg !2197
  %68 = bitcast %struct.GCObject* %67 to %union.GCUnion*, !dbg !2197
  %69 = bitcast %union.GCUnion* %68 to %struct.Table*, !dbg !2197
  call void @luaC_barrierback_(%struct.lua_State* %63, %struct.Table* %69), !dbg !2197
  br label %71, !dbg !2197

; <label>:70                                      ; preds = %49, %37, %0
  br label %71, !dbg !2199

; <label>:71                                      ; preds = %70, %62
  %72 = load %struct.lua_State** %1, align 4, !dbg !2203
  %73 = getelementptr inbounds %struct.lua_State* %72, i32 0, i32 5, !dbg !2203
  %74 = load %struct.lua_TValue** %73, align 4, !dbg !2203
  %75 = getelementptr inbounds %struct.lua_TValue* %74, i32 -1, !dbg !2203
  store %struct.lua_TValue* %75, %struct.lua_TValue** %73, align 4, !dbg !2203
  ret void, !dbg !2204
}

; Function Attrs: nounwind
define i32 @lua_setmetatable(%struct.lua_State* %L, i32 %objindex) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca i32, align 4
  %obj = alloca %struct.lua_TValue*, align 4
  %mt = alloca %struct.Table*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !2205), !dbg !2206
  store i32 %objindex, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !2207), !dbg !2208
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %obj}, metadata !2209), !dbg !2210
  call void @llvm.dbg.declare(metadata !{%struct.Table** %mt}, metadata !2211), !dbg !2212
  %3 = load %struct.lua_State** %1, align 4, !dbg !2213
  %4 = load i32* %2, align 4, !dbg !2213
  %5 = call %struct.lua_TValue* @index2addr(%struct.lua_State* %3, i32 %4), !dbg !2213
  store %struct.lua_TValue* %5, %struct.lua_TValue** %obj, align 4, !dbg !2213
  %6 = load %struct.lua_State** %1, align 4, !dbg !2214
  %7 = getelementptr inbounds %struct.lua_State* %6, i32 0, i32 5, !dbg !2214
  %8 = load %struct.lua_TValue** %7, align 4, !dbg !2214
  %9 = getelementptr inbounds %struct.lua_TValue* %8, i32 -1, !dbg !2214
  %10 = getelementptr inbounds %struct.lua_TValue* %9, i32 0, i32 1, !dbg !2214
  %11 = load i32* %10, align 4, !dbg !2214
  %12 = icmp eq i32 %11, 0, !dbg !2214
  br i1 %12, label %13, label %14, !dbg !2214

; <label>:13                                      ; preds = %0
  store %struct.Table* null, %struct.Table** %mt, align 4, !dbg !2216
  br label %24, !dbg !2216

; <label>:14                                      ; preds = %0
  %15 = load %struct.lua_State** %1, align 4, !dbg !2217
  %16 = getelementptr inbounds %struct.lua_State* %15, i32 0, i32 5, !dbg !2217
  %17 = load %struct.lua_TValue** %16, align 4, !dbg !2217
  %18 = getelementptr inbounds %struct.lua_TValue* %17, i32 -1, !dbg !2217
  %19 = getelementptr inbounds %struct.lua_TValue* %18, i32 0, i32 0, !dbg !2217
  %20 = bitcast %union.Value* %19 to %struct.GCObject**, !dbg !2217
  %21 = load %struct.GCObject** %20, align 4, !dbg !2217
  %22 = bitcast %struct.GCObject* %21 to %union.GCUnion*, !dbg !2217
  %23 = bitcast %union.GCUnion* %22 to %struct.Table*, !dbg !2217
  store %struct.Table* %23, %struct.Table** %mt, align 4, !dbg !2217
  br label %24

; <label>:24                                      ; preds = %14, %13
  %25 = load %struct.lua_TValue** %obj, align 4, !dbg !2219
  %26 = getelementptr inbounds %struct.lua_TValue* %25, i32 0, i32 1, !dbg !2219
  %27 = load i32* %26, align 4, !dbg !2219
  %28 = and i32 %27, 15, !dbg !2219
  switch i32 %28, label %129 [
    i32 5, label %29
    i32 7, label %77
  ], !dbg !2219

; <label>:29                                      ; preds = %24
  %30 = load %struct.Table** %mt, align 4, !dbg !2220
  %31 = load %struct.lua_TValue** %obj, align 4, !dbg !2220
  %32 = getelementptr inbounds %struct.lua_TValue* %31, i32 0, i32 0, !dbg !2220
  %33 = bitcast %union.Value* %32 to %struct.GCObject**, !dbg !2220
  %34 = load %struct.GCObject** %33, align 4, !dbg !2220
  %35 = bitcast %struct.GCObject* %34 to %union.GCUnion*, !dbg !2220
  %36 = bitcast %union.GCUnion* %35 to %struct.Table*, !dbg !2220
  %37 = getelementptr inbounds %struct.Table* %36, i32 0, i32 9, !dbg !2220
  store %struct.Table* %30, %struct.Table** %37, align 4, !dbg !2220
  %38 = load %struct.Table** %mt, align 4, !dbg !2223
  %39 = icmp ne %struct.Table* %38, null, !dbg !2223
  br i1 %39, label %40, label %76, !dbg !2223

; <label>:40                                      ; preds = %29
  %41 = load %struct.lua_TValue** %obj, align 4, !dbg !2225
  %42 = getelementptr inbounds %struct.lua_TValue* %41, i32 0, i32 0, !dbg !2225
  %43 = bitcast %union.Value* %42 to %struct.GCObject**, !dbg !2225
  %44 = load %struct.GCObject** %43, align 4, !dbg !2225
  %45 = getelementptr inbounds %struct.GCObject* %44, i32 0, i32 2, !dbg !2225
  %46 = load i8* %45, align 1, !dbg !2225
  %47 = zext i8 %46 to i32, !dbg !2225
  %48 = and i32 %47, 4, !dbg !2225
  %49 = icmp ne i32 %48, 0, !dbg !2225
  br i1 %49, label %50, label %68, !dbg !2225

; <label>:50                                      ; preds = %40
  %51 = load %struct.Table** %mt, align 4, !dbg !2227
  %52 = getelementptr inbounds %struct.Table* %51, i32 0, i32 2, !dbg !2227
  %53 = load i8* %52, align 1, !dbg !2227
  %54 = zext i8 %53 to i32, !dbg !2227
  %55 = and i32 %54, 3, !dbg !2227
  %56 = icmp ne i32 %55, 0, !dbg !2227
  br i1 %56, label %57, label %68, !dbg !2227

; <label>:57                                      ; preds = %50
  %58 = load %struct.lua_State** %1, align 4, !dbg !2229
  %59 = load %struct.lua_TValue** %obj, align 4, !dbg !2229
  %60 = getelementptr inbounds %struct.lua_TValue* %59, i32 0, i32 0, !dbg !2229
  %61 = bitcast %union.Value* %60 to %struct.GCObject**, !dbg !2229
  %62 = load %struct.GCObject** %61, align 4, !dbg !2229
  %63 = bitcast %struct.GCObject* %62 to %union.GCUnion*, !dbg !2229
  %64 = bitcast %union.GCUnion* %63 to %struct.GCObject*, !dbg !2229
  %65 = load %struct.Table** %mt, align 4, !dbg !2229
  %66 = bitcast %struct.Table* %65 to %union.GCUnion*, !dbg !2229
  %67 = bitcast %union.GCUnion* %66 to %struct.GCObject*, !dbg !2229
  call void @luaC_barrier_(%struct.lua_State* %58, %struct.GCObject* %64, %struct.GCObject* %67), !dbg !2229
  br label %69, !dbg !2229

; <label>:68                                      ; preds = %50, %40
  br label %69, !dbg !2231

; <label>:69                                      ; preds = %68, %57
  %70 = load %struct.lua_State** %1, align 4, !dbg !2234
  %71 = load %struct.lua_TValue** %obj, align 4, !dbg !2234
  %72 = getelementptr inbounds %struct.lua_TValue* %71, i32 0, i32 0, !dbg !2234
  %73 = bitcast %union.Value* %72 to %struct.GCObject**, !dbg !2234
  %74 = load %struct.GCObject** %73, align 4, !dbg !2234
  %75 = load %struct.Table** %mt, align 4, !dbg !2234
  call void @luaC_checkfinalizer(%struct.lua_State* %70, %struct.GCObject* %74, %struct.Table* %75), !dbg !2234
  br label %76, !dbg !2235

; <label>:76                                      ; preds = %69, %29
  br label %140, !dbg !2236

; <label>:77                                      ; preds = %24
  %78 = load %struct.Table** %mt, align 4, !dbg !2237
  %79 = load %struct.lua_TValue** %obj, align 4, !dbg !2237
  %80 = getelementptr inbounds %struct.lua_TValue* %79, i32 0, i32 0, !dbg !2237
  %81 = bitcast %union.Value* %80 to %struct.GCObject**, !dbg !2237
  %82 = load %struct.GCObject** %81, align 4, !dbg !2237
  %83 = bitcast %struct.GCObject* %82 to %union.GCUnion*, !dbg !2237
  %84 = bitcast %union.GCUnion* %83 to %struct.Udata*, !dbg !2237
  %85 = getelementptr inbounds %struct.Udata* %84, i32 0, i32 4, !dbg !2237
  store %struct.Table* %78, %struct.Table** %85, align 4, !dbg !2237
  %86 = load %struct.Table** %mt, align 4, !dbg !2239
  %87 = icmp ne %struct.Table* %86, null, !dbg !2239
  br i1 %87, label %88, label %128, !dbg !2239

; <label>:88                                      ; preds = %77
  %89 = load %struct.lua_TValue** %obj, align 4, !dbg !2241
  %90 = getelementptr inbounds %struct.lua_TValue* %89, i32 0, i32 0, !dbg !2241
  %91 = bitcast %union.Value* %90 to %struct.GCObject**, !dbg !2241
  %92 = load %struct.GCObject** %91, align 4, !dbg !2241
  %93 = bitcast %struct.GCObject* %92 to %union.GCUnion*, !dbg !2241
  %94 = bitcast %union.GCUnion* %93 to %struct.Udata*, !dbg !2241
  %95 = getelementptr inbounds %struct.Udata* %94, i32 0, i32 2, !dbg !2241
  %96 = load i8* %95, align 1, !dbg !2241
  %97 = zext i8 %96 to i32, !dbg !2241
  %98 = and i32 %97, 4, !dbg !2241
  %99 = icmp ne i32 %98, 0, !dbg !2241
  br i1 %99, label %100, label %120, !dbg !2241

; <label>:100                                     ; preds = %88
  %101 = load %struct.Table** %mt, align 4, !dbg !2243
  %102 = getelementptr inbounds %struct.Table* %101, i32 0, i32 2, !dbg !2243
  %103 = load i8* %102, align 1, !dbg !2243
  %104 = zext i8 %103 to i32, !dbg !2243
  %105 = and i32 %104, 3, !dbg !2243
  %106 = icmp ne i32 %105, 0, !dbg !2243
  br i1 %106, label %107, label %120, !dbg !2243

; <label>:107                                     ; preds = %100
  %108 = load %struct.lua_State** %1, align 4, !dbg !2245
  %109 = load %struct.lua_TValue** %obj, align 4, !dbg !2245
  %110 = getelementptr inbounds %struct.lua_TValue* %109, i32 0, i32 0, !dbg !2245
  %111 = bitcast %union.Value* %110 to %struct.GCObject**, !dbg !2245
  %112 = load %struct.GCObject** %111, align 4, !dbg !2245
  %113 = bitcast %struct.GCObject* %112 to %union.GCUnion*, !dbg !2245
  %114 = bitcast %union.GCUnion* %113 to %struct.Udata*, !dbg !2245
  %115 = bitcast %struct.Udata* %114 to %union.GCUnion*, !dbg !2245
  %116 = bitcast %union.GCUnion* %115 to %struct.GCObject*, !dbg !2245
  %117 = load %struct.Table** %mt, align 4, !dbg !2245
  %118 = bitcast %struct.Table* %117 to %union.GCUnion*, !dbg !2245
  %119 = bitcast %union.GCUnion* %118 to %struct.GCObject*, !dbg !2245
  call void @luaC_barrier_(%struct.lua_State* %108, %struct.GCObject* %116, %struct.GCObject* %119), !dbg !2245
  br label %121, !dbg !2245

; <label>:120                                     ; preds = %100, %88
  br label %121, !dbg !2247

; <label>:121                                     ; preds = %120, %107
  %122 = load %struct.lua_State** %1, align 4, !dbg !2250
  %123 = load %struct.lua_TValue** %obj, align 4, !dbg !2250
  %124 = getelementptr inbounds %struct.lua_TValue* %123, i32 0, i32 0, !dbg !2250
  %125 = bitcast %union.Value* %124 to %struct.GCObject**, !dbg !2250
  %126 = load %struct.GCObject** %125, align 4, !dbg !2250
  %127 = load %struct.Table** %mt, align 4, !dbg !2250
  call void @luaC_checkfinalizer(%struct.lua_State* %122, %struct.GCObject* %126, %struct.Table* %127), !dbg !2250
  br label %128, !dbg !2251

; <label>:128                                     ; preds = %121, %77
  br label %140, !dbg !2252

; <label>:129                                     ; preds = %24
  %130 = load %struct.Table** %mt, align 4, !dbg !2253
  %131 = load %struct.lua_TValue** %obj, align 4, !dbg !2253
  %132 = getelementptr inbounds %struct.lua_TValue* %131, i32 0, i32 1, !dbg !2253
  %133 = load i32* %132, align 4, !dbg !2253
  %134 = and i32 %133, 15, !dbg !2253
  %135 = load %struct.lua_State** %1, align 4, !dbg !2253
  %136 = getelementptr inbounds %struct.lua_State* %135, i32 0, i32 6, !dbg !2253
  %137 = load %struct.global_State** %136, align 4, !dbg !2253
  %138 = getelementptr inbounds %struct.global_State* %137, i32 0, i32 32, !dbg !2253
  %139 = getelementptr inbounds [9 x %struct.Table*]* %138, i32 0, i32 %134, !dbg !2253
  store %struct.Table* %130, %struct.Table** %139, align 4, !dbg !2253
  br label %140, !dbg !2255

; <label>:140                                     ; preds = %129, %128, %76
  %141 = load %struct.lua_State** %1, align 4, !dbg !2256
  %142 = getelementptr inbounds %struct.lua_State* %141, i32 0, i32 5, !dbg !2256
  %143 = load %struct.lua_TValue** %142, align 4, !dbg !2256
  %144 = getelementptr inbounds %struct.lua_TValue* %143, i32 -1, !dbg !2256
  store %struct.lua_TValue* %144, %struct.lua_TValue** %142, align 4, !dbg !2256
  ret i32 1, !dbg !2257
}

declare hidden void @luaC_checkfinalizer(%struct.lua_State*, %struct.GCObject*, %struct.Table*) #2

; Function Attrs: nounwind
define void @lua_setuservalue(%struct.lua_State* %L, i32 %idx) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca i32, align 4
  %o = alloca %struct.lua_TValue*, align 4
  %io = alloca %struct.lua_TValue*, align 4
  %iu = alloca %struct.Udata*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !2258), !dbg !2259
  store i32 %idx, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !2260), !dbg !2261
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %o}, metadata !2262), !dbg !2263
  %3 = load %struct.lua_State** %1, align 4, !dbg !2264
  %4 = load i32* %2, align 4, !dbg !2264
  %5 = call %struct.lua_TValue* @index2addr(%struct.lua_State* %3, i32 %4), !dbg !2264
  store %struct.lua_TValue* %5, %struct.lua_TValue** %o, align 4, !dbg !2264
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %io}, metadata !2265), !dbg !2267
  %6 = load %struct.lua_State** %1, align 4, !dbg !2267
  %7 = getelementptr inbounds %struct.lua_State* %6, i32 0, i32 5, !dbg !2267
  %8 = load %struct.lua_TValue** %7, align 4, !dbg !2267
  %9 = getelementptr inbounds %struct.lua_TValue* %8, i32 -1, !dbg !2267
  store %struct.lua_TValue* %9, %struct.lua_TValue** %io, align 4, !dbg !2267
  call void @llvm.dbg.declare(metadata !{%struct.Udata** %iu}, metadata !2268), !dbg !2267
  %10 = load %struct.lua_TValue** %o, align 4, !dbg !2267
  %11 = getelementptr inbounds %struct.lua_TValue* %10, i32 0, i32 0, !dbg !2267
  %12 = bitcast %union.Value* %11 to %struct.GCObject**, !dbg !2267
  %13 = load %struct.GCObject** %12, align 4, !dbg !2267
  %14 = bitcast %struct.GCObject* %13 to %union.GCUnion*, !dbg !2267
  %15 = bitcast %union.GCUnion* %14 to %struct.Udata*, !dbg !2267
  store %struct.Udata* %15, %struct.Udata** %iu, align 4, !dbg !2267
  %16 = load %struct.Udata** %iu, align 4, !dbg !2267
  %17 = getelementptr inbounds %struct.Udata* %16, i32 0, i32 6, !dbg !2267
  %18 = load %struct.lua_TValue** %io, align 4, !dbg !2267
  %19 = getelementptr inbounds %struct.lua_TValue* %18, i32 0, i32 0, !dbg !2267
  %20 = bitcast %union.Value* %17 to i8*, !dbg !2267
  %21 = bitcast %union.Value* %19 to i8*, !dbg !2267
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %20, i8* %21, i32 8, i32 8, i1 false), !dbg !2267
  %22 = load %struct.lua_TValue** %io, align 4, !dbg !2267
  %23 = getelementptr inbounds %struct.lua_TValue* %22, i32 0, i32 1, !dbg !2267
  %24 = load i32* %23, align 4, !dbg !2267
  %25 = trunc i32 %24 to i8, !dbg !2267
  %26 = load %struct.Udata** %iu, align 4, !dbg !2267
  %27 = getelementptr inbounds %struct.Udata* %26, i32 0, i32 3, !dbg !2267
  store i8 %25, i8* %27, align 1, !dbg !2267
  %28 = load %struct.lua_State** %1, align 4, !dbg !2270
  %29 = getelementptr inbounds %struct.lua_State* %28, i32 0, i32 5, !dbg !2270
  %30 = load %struct.lua_TValue** %29, align 4, !dbg !2270
  %31 = getelementptr inbounds %struct.lua_TValue* %30, i32 -1, !dbg !2270
  %32 = getelementptr inbounds %struct.lua_TValue* %31, i32 0, i32 1, !dbg !2270
  %33 = load i32* %32, align 4, !dbg !2270
  %34 = and i32 %33, 64, !dbg !2270
  %35 = icmp ne i32 %34, 0, !dbg !2270
  br i1 %35, label %36, label %74, !dbg !2270

; <label>:36                                      ; preds = %0
  %37 = load %struct.lua_TValue** %o, align 4, !dbg !2271
  %38 = getelementptr inbounds %struct.lua_TValue* %37, i32 0, i32 0, !dbg !2271
  %39 = bitcast %union.Value* %38 to %struct.GCObject**, !dbg !2271
  %40 = load %struct.GCObject** %39, align 4, !dbg !2271
  %41 = getelementptr inbounds %struct.GCObject* %40, i32 0, i32 2, !dbg !2271
  %42 = load i8* %41, align 1, !dbg !2271
  %43 = zext i8 %42 to i32, !dbg !2271
  %44 = and i32 %43, 4, !dbg !2271
  %45 = icmp ne i32 %44, 0, !dbg !2271
  br i1 %45, label %46, label %74, !dbg !2271

; <label>:46                                      ; preds = %36
  %47 = load %struct.lua_State** %1, align 4, !dbg !2273
  %48 = getelementptr inbounds %struct.lua_State* %47, i32 0, i32 5, !dbg !2273
  %49 = load %struct.lua_TValue** %48, align 4, !dbg !2273
  %50 = getelementptr inbounds %struct.lua_TValue* %49, i32 -1, !dbg !2273
  %51 = getelementptr inbounds %struct.lua_TValue* %50, i32 0, i32 0, !dbg !2273
  %52 = bitcast %union.Value* %51 to %struct.GCObject**, !dbg !2273
  %53 = load %struct.GCObject** %52, align 4, !dbg !2273
  %54 = getelementptr inbounds %struct.GCObject* %53, i32 0, i32 2, !dbg !2273
  %55 = load i8* %54, align 1, !dbg !2273
  %56 = zext i8 %55 to i32, !dbg !2273
  %57 = and i32 %56, 3, !dbg !2273
  %58 = icmp ne i32 %57, 0, !dbg !2273
  br i1 %58, label %59, label %74, !dbg !2273

; <label>:59                                      ; preds = %46
  %60 = load %struct.lua_State** %1, align 4, !dbg !2275
  %61 = load %struct.lua_TValue** %o, align 4, !dbg !2275
  %62 = getelementptr inbounds %struct.lua_TValue* %61, i32 0, i32 0, !dbg !2275
  %63 = bitcast %union.Value* %62 to %struct.GCObject**, !dbg !2275
  %64 = load %struct.GCObject** %63, align 4, !dbg !2275
  %65 = bitcast %struct.GCObject* %64 to %union.GCUnion*, !dbg !2275
  %66 = bitcast %union.GCUnion* %65 to %struct.GCObject*, !dbg !2275
  %67 = load %struct.lua_State** %1, align 4, !dbg !2275
  %68 = getelementptr inbounds %struct.lua_State* %67, i32 0, i32 5, !dbg !2275
  %69 = load %struct.lua_TValue** %68, align 4, !dbg !2275
  %70 = getelementptr inbounds %struct.lua_TValue* %69, i32 -1, !dbg !2275
  %71 = getelementptr inbounds %struct.lua_TValue* %70, i32 0, i32 0, !dbg !2275
  %72 = bitcast %union.Value* %71 to %struct.GCObject**, !dbg !2275
  %73 = load %struct.GCObject** %72, align 4, !dbg !2275
  call void @luaC_barrier_(%struct.lua_State* %60, %struct.GCObject* %66, %struct.GCObject* %73), !dbg !2275
  br label %75, !dbg !2275

; <label>:74                                      ; preds = %46, %36, %0
  br label %75, !dbg !2277

; <label>:75                                      ; preds = %74, %59
  %76 = load %struct.lua_State** %1, align 4, !dbg !2281
  %77 = getelementptr inbounds %struct.lua_State* %76, i32 0, i32 5, !dbg !2281
  %78 = load %struct.lua_TValue** %77, align 4, !dbg !2281
  %79 = getelementptr inbounds %struct.lua_TValue* %78, i32 -1, !dbg !2281
  store %struct.lua_TValue* %79, %struct.lua_TValue** %77, align 4, !dbg !2281
  ret void, !dbg !2282
}

; Function Attrs: nounwind
define void @lua_callk(%struct.lua_State* %L, i32 %nargs, i32 %nresults, i32 %ctx, i32 (%struct.lua_State*, i32, i32)* %k) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32 (%struct.lua_State*, i32, i32)*, align 4
  %func = alloca %struct.lua_TValue*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !2283), !dbg !2284
  store i32 %nargs, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !2285), !dbg !2286
  store i32 %nresults, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !2287), !dbg !2288
  store i32 %ctx, i32* %4, align 4
  call void @llvm.dbg.declare(metadata !{i32* %4}, metadata !2289), !dbg !2290
  store i32 (%struct.lua_State*, i32, i32)* %k, i32 (%struct.lua_State*, i32, i32)** %5, align 4
  call void @llvm.dbg.declare(metadata !{i32 (%struct.lua_State*, i32, i32)** %5}, metadata !2291), !dbg !2292
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %func}, metadata !2293), !dbg !2294
  %6 = load %struct.lua_State** %1, align 4, !dbg !2295
  %7 = getelementptr inbounds %struct.lua_State* %6, i32 0, i32 5, !dbg !2295
  %8 = load %struct.lua_TValue** %7, align 4, !dbg !2295
  %9 = load i32* %2, align 4, !dbg !2295
  %10 = add nsw i32 %9, 1, !dbg !2295
  %11 = sub i32 0, %10, !dbg !2295
  %12 = getelementptr inbounds %struct.lua_TValue* %8, i32 %11, !dbg !2295
  store %struct.lua_TValue* %12, %struct.lua_TValue** %func, align 4, !dbg !2295
  %13 = load i32 (%struct.lua_State*, i32, i32)** %5, align 4, !dbg !2296
  %14 = icmp ne i32 (%struct.lua_State*, i32, i32)* %13, null, !dbg !2296
  br i1 %14, label %15, label %39, !dbg !2296

; <label>:15                                      ; preds = %0
  %16 = load %struct.lua_State** %1, align 4, !dbg !2298
  %17 = getelementptr inbounds %struct.lua_State* %16, i32 0, i32 21, !dbg !2298
  %18 = load i16* %17, align 2, !dbg !2298
  %19 = zext i16 %18 to i32, !dbg !2298
  %20 = icmp eq i32 %19, 0, !dbg !2298
  br i1 %20, label %21, label %39, !dbg !2298

; <label>:21                                      ; preds = %15
  %22 = load i32 (%struct.lua_State*, i32, i32)** %5, align 4, !dbg !2300
  %23 = load %struct.lua_State** %1, align 4, !dbg !2300
  %24 = getelementptr inbounds %struct.lua_State* %23, i32 0, i32 7, !dbg !2300
  %25 = load %struct.CallInfo** %24, align 4, !dbg !2300
  %26 = getelementptr inbounds %struct.CallInfo* %25, i32 0, i32 4, !dbg !2300
  %27 = bitcast %union.anon.0* %26 to %struct.anon.2*, !dbg !2300
  %28 = getelementptr inbounds %struct.anon.2* %27, i32 0, i32 0, !dbg !2300
  store i32 (%struct.lua_State*, i32, i32)* %22, i32 (%struct.lua_State*, i32, i32)** %28, align 4, !dbg !2300
  %29 = load i32* %4, align 4, !dbg !2302
  %30 = load %struct.lua_State** %1, align 4, !dbg !2302
  %31 = getelementptr inbounds %struct.lua_State* %30, i32 0, i32 7, !dbg !2302
  %32 = load %struct.CallInfo** %31, align 4, !dbg !2302
  %33 = getelementptr inbounds %struct.CallInfo* %32, i32 0, i32 4, !dbg !2302
  %34 = bitcast %union.anon.0* %33 to %struct.anon.2*, !dbg !2302
  %35 = getelementptr inbounds %struct.anon.2* %34, i32 0, i32 2, !dbg !2302
  store i32 %29, i32* %35, align 4, !dbg !2302
  %36 = load %struct.lua_State** %1, align 4, !dbg !2303
  %37 = load %struct.lua_TValue** %func, align 4, !dbg !2303
  %38 = load i32* %3, align 4, !dbg !2303
  call void @luaD_call(%struct.lua_State* %36, %struct.lua_TValue* %37, i32 %38), !dbg !2303
  br label %43, !dbg !2304

; <label>:39                                      ; preds = %15, %0
  %40 = load %struct.lua_State** %1, align 4, !dbg !2305
  %41 = load %struct.lua_TValue** %func, align 4, !dbg !2305
  %42 = load i32* %3, align 4, !dbg !2305
  call void @luaD_callnoyield(%struct.lua_State* %40, %struct.lua_TValue* %41, i32 %42), !dbg !2305
  br label %43

; <label>:43                                      ; preds = %39, %21
  %44 = load i32* %3, align 4, !dbg !2306
  %45 = icmp eq i32 %44, -1, !dbg !2306
  br i1 %45, label %46, label %64, !dbg !2306

; <label>:46                                      ; preds = %43
  %47 = load %struct.lua_State** %1, align 4, !dbg !2309
  %48 = getelementptr inbounds %struct.lua_State* %47, i32 0, i32 7, !dbg !2309
  %49 = load %struct.CallInfo** %48, align 4, !dbg !2309
  %50 = getelementptr inbounds %struct.CallInfo* %49, i32 0, i32 1, !dbg !2309
  %51 = load %struct.lua_TValue** %50, align 4, !dbg !2309
  %52 = load %struct.lua_State** %1, align 4, !dbg !2309
  %53 = getelementptr inbounds %struct.lua_State* %52, i32 0, i32 5, !dbg !2309
  %54 = load %struct.lua_TValue** %53, align 4, !dbg !2309
  %55 = icmp ult %struct.lua_TValue* %51, %54, !dbg !2309
  br i1 %55, label %56, label %64, !dbg !2309

; <label>:56                                      ; preds = %46
  %57 = load %struct.lua_State** %1, align 4, !dbg !2311
  %58 = getelementptr inbounds %struct.lua_State* %57, i32 0, i32 5, !dbg !2311
  %59 = load %struct.lua_TValue** %58, align 4, !dbg !2311
  %60 = load %struct.lua_State** %1, align 4, !dbg !2311
  %61 = getelementptr inbounds %struct.lua_State* %60, i32 0, i32 7, !dbg !2311
  %62 = load %struct.CallInfo** %61, align 4, !dbg !2311
  %63 = getelementptr inbounds %struct.CallInfo* %62, i32 0, i32 1, !dbg !2311
  store %struct.lua_TValue* %59, %struct.lua_TValue** %63, align 4, !dbg !2311
  br label %64, !dbg !2311

; <label>:64                                      ; preds = %56, %46, %43
  ret void, !dbg !2313
}

declare hidden void @luaD_call(%struct.lua_State*, %struct.lua_TValue*, i32) #2

declare hidden void @luaD_callnoyield(%struct.lua_State*, %struct.lua_TValue*, i32) #2

; Function Attrs: nounwind
define i32 @lua_pcallk(%struct.lua_State* %L, i32 %nargs, i32 %nresults, i32 %errfunc, i32 %ctx, i32 (%struct.lua_State*, i32, i32)* %k) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32 (%struct.lua_State*, i32, i32)*, align 4
  %c = alloca %struct.CallS, align 4
  %status = alloca i32, align 4
  %func = alloca i32, align 4
  %o = alloca %struct.lua_TValue*, align 4
  %ci = alloca %struct.CallInfo*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !2314), !dbg !2315
  store i32 %nargs, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !2316), !dbg !2317
  store i32 %nresults, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !2318), !dbg !2319
  store i32 %errfunc, i32* %4, align 4
  call void @llvm.dbg.declare(metadata !{i32* %4}, metadata !2320), !dbg !2321
  store i32 %ctx, i32* %5, align 4
  call void @llvm.dbg.declare(metadata !{i32* %5}, metadata !2322), !dbg !2323
  store i32 (%struct.lua_State*, i32, i32)* %k, i32 (%struct.lua_State*, i32, i32)** %6, align 4
  call void @llvm.dbg.declare(metadata !{i32 (%struct.lua_State*, i32, i32)** %6}, metadata !2324), !dbg !2325
  call void @llvm.dbg.declare(metadata !{%struct.CallS* %c}, metadata !2326), !dbg !2331
  call void @llvm.dbg.declare(metadata !{i32* %status}, metadata !2332), !dbg !2333
  call void @llvm.dbg.declare(metadata !{i32* %func}, metadata !2334), !dbg !2335
  %7 = load i32* %4, align 4, !dbg !2336
  %8 = icmp eq i32 %7, 0, !dbg !2336
  br i1 %8, label %9, label %10, !dbg !2336

; <label>:9                                       ; preds = %0
  store i32 0, i32* %func, align 4, !dbg !2338
  br label %23, !dbg !2338

; <label>:10                                      ; preds = %0
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %o}, metadata !2339), !dbg !2341
  %11 = load %struct.lua_State** %1, align 4, !dbg !2342
  %12 = load i32* %4, align 4, !dbg !2342
  %13 = call %struct.lua_TValue* @index2addr(%struct.lua_State* %11, i32 %12), !dbg !2342
  store %struct.lua_TValue* %13, %struct.lua_TValue** %o, align 4, !dbg !2342
  %14 = load %struct.lua_TValue** %o, align 4, !dbg !2343
  %15 = bitcast %struct.lua_TValue* %14 to i8*, !dbg !2343
  %16 = load %struct.lua_State** %1, align 4, !dbg !2343
  %17 = getelementptr inbounds %struct.lua_State* %16, i32 0, i32 10, !dbg !2343
  %18 = load %struct.lua_TValue** %17, align 4, !dbg !2343
  %19 = bitcast %struct.lua_TValue* %18 to i8*, !dbg !2343
  %20 = ptrtoint i8* %15 to i32, !dbg !2343
  %21 = ptrtoint i8* %19 to i32, !dbg !2343
  %22 = sub i32 %20, %21, !dbg !2343
  store i32 %22, i32* %func, align 4, !dbg !2343
  br label %23

; <label>:23                                      ; preds = %10, %9
  %24 = load %struct.lua_State** %1, align 4, !dbg !2344
  %25 = getelementptr inbounds %struct.lua_State* %24, i32 0, i32 5, !dbg !2344
  %26 = load %struct.lua_TValue** %25, align 4, !dbg !2344
  %27 = load i32* %2, align 4, !dbg !2344
  %28 = add nsw i32 %27, 1, !dbg !2344
  %29 = sub i32 0, %28, !dbg !2344
  %30 = getelementptr inbounds %struct.lua_TValue* %26, i32 %29, !dbg !2344
  %31 = getelementptr inbounds %struct.CallS* %c, i32 0, i32 0, !dbg !2344
  store %struct.lua_TValue* %30, %struct.lua_TValue** %31, align 4, !dbg !2344
  %32 = load i32 (%struct.lua_State*, i32, i32)** %6, align 4, !dbg !2345
  %33 = icmp eq i32 (%struct.lua_State*, i32, i32)* %32, null, !dbg !2345
  br i1 %33, label %40, label %34, !dbg !2345

; <label>:34                                      ; preds = %23
  %35 = load %struct.lua_State** %1, align 4, !dbg !2347
  %36 = getelementptr inbounds %struct.lua_State* %35, i32 0, i32 21, !dbg !2347
  %37 = load i16* %36, align 2, !dbg !2347
  %38 = zext i16 %37 to i32, !dbg !2347
  %39 = icmp sgt i32 %38, 0, !dbg !2347
  br i1 %39, label %40, label %57, !dbg !2347

; <label>:40                                      ; preds = %34, %23
  %41 = load i32* %3, align 4, !dbg !2349
  %42 = getelementptr inbounds %struct.CallS* %c, i32 0, i32 1, !dbg !2349
  store i32 %41, i32* %42, align 4, !dbg !2349
  %43 = load %struct.lua_State** %1, align 4, !dbg !2351
  %44 = bitcast %struct.CallS* %c to i8*, !dbg !2351
  %45 = getelementptr inbounds %struct.CallS* %c, i32 0, i32 0, !dbg !2351
  %46 = load %struct.lua_TValue** %45, align 4, !dbg !2351
  %47 = bitcast %struct.lua_TValue* %46 to i8*, !dbg !2351
  %48 = load %struct.lua_State** %1, align 4, !dbg !2351
  %49 = getelementptr inbounds %struct.lua_State* %48, i32 0, i32 10, !dbg !2351
  %50 = load %struct.lua_TValue** %49, align 4, !dbg !2351
  %51 = bitcast %struct.lua_TValue* %50 to i8*, !dbg !2351
  %52 = ptrtoint i8* %47 to i32, !dbg !2351
  %53 = ptrtoint i8* %51 to i32, !dbg !2351
  %54 = sub i32 %52, %53, !dbg !2351
  %55 = load i32* %func, align 4, !dbg !2351
  %56 = call i32 @luaD_pcall(%struct.lua_State* %43, void (%struct.lua_State*, i8*)* @f_call, i8* %44, i32 %54, i32 %55), !dbg !2351
  store i32 %56, i32* %status, align 4, !dbg !2351
  br label %129, !dbg !2352

; <label>:57                                      ; preds = %34
  call void @llvm.dbg.declare(metadata !{%struct.CallInfo** %ci}, metadata !2353), !dbg !2355
  %58 = load %struct.lua_State** %1, align 4, !dbg !2356
  %59 = getelementptr inbounds %struct.lua_State* %58, i32 0, i32 7, !dbg !2356
  %60 = load %struct.CallInfo** %59, align 4, !dbg !2356
  store %struct.CallInfo* %60, %struct.CallInfo** %ci, align 4, !dbg !2356
  %61 = load i32 (%struct.lua_State*, i32, i32)** %6, align 4, !dbg !2357
  %62 = load %struct.CallInfo** %ci, align 4, !dbg !2357
  %63 = getelementptr inbounds %struct.CallInfo* %62, i32 0, i32 4, !dbg !2357
  %64 = bitcast %union.anon.0* %63 to %struct.anon.2*, !dbg !2357
  %65 = getelementptr inbounds %struct.anon.2* %64, i32 0, i32 0, !dbg !2357
  store i32 (%struct.lua_State*, i32, i32)* %61, i32 (%struct.lua_State*, i32, i32)** %65, align 4, !dbg !2357
  %66 = load i32* %5, align 4, !dbg !2358
  %67 = load %struct.CallInfo** %ci, align 4, !dbg !2358
  %68 = getelementptr inbounds %struct.CallInfo* %67, i32 0, i32 4, !dbg !2358
  %69 = bitcast %union.anon.0* %68 to %struct.anon.2*, !dbg !2358
  %70 = getelementptr inbounds %struct.anon.2* %69, i32 0, i32 2, !dbg !2358
  store i32 %66, i32* %70, align 4, !dbg !2358
  %71 = getelementptr inbounds %struct.CallS* %c, i32 0, i32 0, !dbg !2359
  %72 = load %struct.lua_TValue** %71, align 4, !dbg !2359
  %73 = bitcast %struct.lua_TValue* %72 to i8*, !dbg !2359
  %74 = load %struct.lua_State** %1, align 4, !dbg !2359
  %75 = getelementptr inbounds %struct.lua_State* %74, i32 0, i32 10, !dbg !2359
  %76 = load %struct.lua_TValue** %75, align 4, !dbg !2359
  %77 = bitcast %struct.lua_TValue* %76 to i8*, !dbg !2359
  %78 = ptrtoint i8* %73 to i32, !dbg !2359
  %79 = ptrtoint i8* %77 to i32, !dbg !2359
  %80 = sub i32 %78, %79, !dbg !2359
  %81 = load %struct.CallInfo** %ci, align 4, !dbg !2359
  %82 = getelementptr inbounds %struct.CallInfo* %81, i32 0, i32 5, !dbg !2359
  store i32 %80, i32* %82, align 4, !dbg !2359
  %83 = load %struct.lua_State** %1, align 4, !dbg !2360
  %84 = getelementptr inbounds %struct.lua_State* %83, i32 0, i32 17, !dbg !2360
  %85 = load i32* %84, align 4, !dbg !2360
  %86 = load %struct.CallInfo** %ci, align 4, !dbg !2360
  %87 = getelementptr inbounds %struct.CallInfo* %86, i32 0, i32 4, !dbg !2360
  %88 = bitcast %union.anon.0* %87 to %struct.anon.2*, !dbg !2360
  %89 = getelementptr inbounds %struct.anon.2* %88, i32 0, i32 1, !dbg !2360
  store i32 %85, i32* %89, align 4, !dbg !2360
  %90 = load i32* %func, align 4, !dbg !2361
  %91 = load %struct.lua_State** %1, align 4, !dbg !2361
  %92 = getelementptr inbounds %struct.lua_State* %91, i32 0, i32 17, !dbg !2361
  store i32 %90, i32* %92, align 4, !dbg !2361
  %93 = load %struct.CallInfo** %ci, align 4, !dbg !2362
  %94 = getelementptr inbounds %struct.CallInfo* %93, i32 0, i32 7, !dbg !2362
  %95 = load i8* %94, align 1, !dbg !2362
  %96 = zext i8 %95 to i32, !dbg !2362
  %97 = and i32 %96, -2, !dbg !2362
  %98 = load %struct.lua_State** %1, align 4, !dbg !2362
  %99 = getelementptr inbounds %struct.lua_State* %98, i32 0, i32 24, !dbg !2362
  %100 = load i8* %99, align 1, !dbg !2362
  %101 = zext i8 %100 to i32, !dbg !2362
  %102 = or i32 %97, %101, !dbg !2362
  %103 = trunc i32 %102 to i8, !dbg !2362
  %104 = load %struct.CallInfo** %ci, align 4, !dbg !2362
  %105 = getelementptr inbounds %struct.CallInfo* %104, i32 0, i32 7, !dbg !2362
  store i8 %103, i8* %105, align 1, !dbg !2362
  %106 = load %struct.CallInfo** %ci, align 4, !dbg !2363
  %107 = getelementptr inbounds %struct.CallInfo* %106, i32 0, i32 7, !dbg !2363
  %108 = load i8* %107, align 1, !dbg !2363
  %109 = zext i8 %108 to i32, !dbg !2363
  %110 = or i32 %109, 16, !dbg !2363
  %111 = trunc i32 %110 to i8, !dbg !2363
  store i8 %111, i8* %107, align 1, !dbg !2363
  %112 = load %struct.lua_State** %1, align 4, !dbg !2364
  %113 = getelementptr inbounds %struct.CallS* %c, i32 0, i32 0, !dbg !2364
  %114 = load %struct.lua_TValue** %113, align 4, !dbg !2364
  %115 = load i32* %3, align 4, !dbg !2364
  call void @luaD_call(%struct.lua_State* %112, %struct.lua_TValue* %114, i32 %115), !dbg !2364
  %116 = load %struct.CallInfo** %ci, align 4, !dbg !2365
  %117 = getelementptr inbounds %struct.CallInfo* %116, i32 0, i32 7, !dbg !2365
  %118 = load i8* %117, align 1, !dbg !2365
  %119 = zext i8 %118 to i32, !dbg !2365
  %120 = and i32 %119, -17, !dbg !2365
  %121 = trunc i32 %120 to i8, !dbg !2365
  store i8 %121, i8* %117, align 1, !dbg !2365
  %122 = load %struct.CallInfo** %ci, align 4, !dbg !2366
  %123 = getelementptr inbounds %struct.CallInfo* %122, i32 0, i32 4, !dbg !2366
  %124 = bitcast %union.anon.0* %123 to %struct.anon.2*, !dbg !2366
  %125 = getelementptr inbounds %struct.anon.2* %124, i32 0, i32 1, !dbg !2366
  %126 = load i32* %125, align 4, !dbg !2366
  %127 = load %struct.lua_State** %1, align 4, !dbg !2366
  %128 = getelementptr inbounds %struct.lua_State* %127, i32 0, i32 17, !dbg !2366
  store i32 %126, i32* %128, align 4, !dbg !2366
  store i32 0, i32* %status, align 4, !dbg !2367
  br label %129

; <label>:129                                     ; preds = %57, %40
  %130 = load i32* %3, align 4, !dbg !2368
  %131 = icmp eq i32 %130, -1, !dbg !2368
  br i1 %131, label %132, label %150, !dbg !2368

; <label>:132                                     ; preds = %129
  %133 = load %struct.lua_State** %1, align 4, !dbg !2371
  %134 = getelementptr inbounds %struct.lua_State* %133, i32 0, i32 7, !dbg !2371
  %135 = load %struct.CallInfo** %134, align 4, !dbg !2371
  %136 = getelementptr inbounds %struct.CallInfo* %135, i32 0, i32 1, !dbg !2371
  %137 = load %struct.lua_TValue** %136, align 4, !dbg !2371
  %138 = load %struct.lua_State** %1, align 4, !dbg !2371
  %139 = getelementptr inbounds %struct.lua_State* %138, i32 0, i32 5, !dbg !2371
  %140 = load %struct.lua_TValue** %139, align 4, !dbg !2371
  %141 = icmp ult %struct.lua_TValue* %137, %140, !dbg !2371
  br i1 %141, label %142, label %150, !dbg !2371

; <label>:142                                     ; preds = %132
  %143 = load %struct.lua_State** %1, align 4, !dbg !2373
  %144 = getelementptr inbounds %struct.lua_State* %143, i32 0, i32 5, !dbg !2373
  %145 = load %struct.lua_TValue** %144, align 4, !dbg !2373
  %146 = load %struct.lua_State** %1, align 4, !dbg !2373
  %147 = getelementptr inbounds %struct.lua_State* %146, i32 0, i32 7, !dbg !2373
  %148 = load %struct.CallInfo** %147, align 4, !dbg !2373
  %149 = getelementptr inbounds %struct.CallInfo* %148, i32 0, i32 1, !dbg !2373
  store %struct.lua_TValue* %145, %struct.lua_TValue** %149, align 4, !dbg !2373
  br label %150, !dbg !2373

; <label>:150                                     ; preds = %142, %132, %129
  %151 = load i32* %status, align 4, !dbg !2375
  ret i32 %151, !dbg !2375
}

declare hidden i32 @luaD_pcall(%struct.lua_State*, void (%struct.lua_State*, i8*)*, i8*, i32, i32) #2

; Function Attrs: nounwind
define internal void @f_call(%struct.lua_State* %L, i8* %ud) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca i8*, align 4
  %c = alloca %struct.CallS*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !2376), !dbg !2377
  store i8* %ud, i8** %2, align 4
  call void @llvm.dbg.declare(metadata !{i8** %2}, metadata !2378), !dbg !2379
  call void @llvm.dbg.declare(metadata !{%struct.CallS** %c}, metadata !2380), !dbg !2382
  %3 = load i8** %2, align 4, !dbg !2383
  %4 = bitcast i8* %3 to %struct.CallS*, !dbg !2383
  store %struct.CallS* %4, %struct.CallS** %c, align 4, !dbg !2383
  %5 = load %struct.lua_State** %1, align 4, !dbg !2384
  %6 = load %struct.CallS** %c, align 4, !dbg !2384
  %7 = getelementptr inbounds %struct.CallS* %6, i32 0, i32 0, !dbg !2384
  %8 = load %struct.lua_TValue** %7, align 4, !dbg !2384
  %9 = load %struct.CallS** %c, align 4, !dbg !2384
  %10 = getelementptr inbounds %struct.CallS* %9, i32 0, i32 1, !dbg !2384
  %11 = load i32* %10, align 4, !dbg !2384
  call void @luaD_callnoyield(%struct.lua_State* %5, %struct.lua_TValue* %8, i32 %11), !dbg !2384
  ret void, !dbg !2385
}

; Function Attrs: nounwind
define i32 @lua_load(%struct.lua_State* %L, i8* (%struct.lua_State*, i8*, i32*)* %reader, i8* %data, i8* %chunkname, i8* %mode) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca i8* (%struct.lua_State*, i8*, i32*)*, align 4
  %3 = alloca i8*, align 4
  %4 = alloca i8*, align 4
  %5 = alloca i8*, align 4
  %z = alloca %struct.Zio, align 4
  %status = alloca i32, align 4
  %f = alloca %struct.LClosure*, align 4
  %reg = alloca %struct.Table*, align 4
  %gt = alloca %struct.lua_TValue*, align 4
  %io1 = alloca %struct.lua_TValue*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !2386), !dbg !2387
  store i8* (%struct.lua_State*, i8*, i32*)* %reader, i8* (%struct.lua_State*, i8*, i32*)** %2, align 4
  call void @llvm.dbg.declare(metadata !{i8* (%struct.lua_State*, i8*, i32*)** %2}, metadata !2388), !dbg !2389
  store i8* %data, i8** %3, align 4
  call void @llvm.dbg.declare(metadata !{i8** %3}, metadata !2390), !dbg !2391
  store i8* %chunkname, i8** %4, align 4
  call void @llvm.dbg.declare(metadata !{i8** %4}, metadata !2392), !dbg !2393
  store i8* %mode, i8** %5, align 4
  call void @llvm.dbg.declare(metadata !{i8** %5}, metadata !2394), !dbg !2395
  call void @llvm.dbg.declare(metadata !{%struct.Zio* %z}, metadata !2396), !dbg !2406
  call void @llvm.dbg.declare(metadata !{i32* %status}, metadata !2407), !dbg !2408
  %6 = load i8** %4, align 4, !dbg !2409
  %7 = icmp ne i8* %6, null, !dbg !2409
  br i1 %7, label %9, label %8, !dbg !2409

; <label>:8                                       ; preds = %0
  store i8* getelementptr inbounds ([2 x i8]* @.str1, i32 0, i32 0), i8** %4, align 4, !dbg !2411
  br label %9, !dbg !2411

; <label>:9                                       ; preds = %8, %0
  %10 = load %struct.lua_State** %1, align 4, !dbg !2413
  %11 = load i8* (%struct.lua_State*, i8*, i32*)** %2, align 4, !dbg !2413
  %12 = load i8** %3, align 4, !dbg !2413
  call void @luaZ_init(%struct.lua_State* %10, %struct.Zio* %z, i8* (%struct.lua_State*, i8*, i32*)* %11, i8* %12), !dbg !2413
  %13 = load %struct.lua_State** %1, align 4, !dbg !2414
  %14 = load i8** %4, align 4, !dbg !2414
  %15 = load i8** %5, align 4, !dbg !2414
  %16 = call i32 @luaD_protectedparser(%struct.lua_State* %13, %struct.Zio* %z, i8* %14, i8* %15), !dbg !2414
  store i32 %16, i32* %status, align 4, !dbg !2414
  %17 = load i32* %status, align 4, !dbg !2415
  %18 = icmp eq i32 %17, 0, !dbg !2415
  br i1 %18, label %19, label %91, !dbg !2415

; <label>:19                                      ; preds = %9
  call void @llvm.dbg.declare(metadata !{%struct.LClosure** %f}, metadata !2417), !dbg !2419
  %20 = load %struct.lua_State** %1, align 4, !dbg !2420
  %21 = getelementptr inbounds %struct.lua_State* %20, i32 0, i32 5, !dbg !2420
  %22 = load %struct.lua_TValue** %21, align 4, !dbg !2420
  %23 = getelementptr inbounds %struct.lua_TValue* %22, i32 -1, !dbg !2420
  %24 = getelementptr inbounds %struct.lua_TValue* %23, i32 0, i32 0, !dbg !2420
  %25 = bitcast %union.Value* %24 to %struct.GCObject**, !dbg !2420
  %26 = load %struct.GCObject** %25, align 4, !dbg !2420
  %27 = bitcast %struct.GCObject* %26 to %union.GCUnion*, !dbg !2420
  %28 = bitcast %union.GCUnion* %27 to %union.Closure*, !dbg !2420
  %29 = bitcast %union.Closure* %28 to %struct.LClosure*, !dbg !2420
  store %struct.LClosure* %29, %struct.LClosure** %f, align 4, !dbg !2420
  %30 = load %struct.LClosure** %f, align 4, !dbg !2421
  %31 = getelementptr inbounds %struct.LClosure* %30, i32 0, i32 3, !dbg !2421
  %32 = load i8* %31, align 1, !dbg !2421
  %33 = zext i8 %32 to i32, !dbg !2421
  %34 = icmp sge i32 %33, 1, !dbg !2421
  br i1 %34, label %35, label %90, !dbg !2421

; <label>:35                                      ; preds = %19
  call void @llvm.dbg.declare(metadata !{%struct.Table** %reg}, metadata !2423), !dbg !2425
  %36 = load %struct.lua_State** %1, align 4, !dbg !2426
  %37 = getelementptr inbounds %struct.lua_State* %36, i32 0, i32 6, !dbg !2426
  %38 = load %struct.global_State** %37, align 4, !dbg !2426
  %39 = getelementptr inbounds %struct.global_State* %38, i32 0, i32 7, !dbg !2426
  %40 = getelementptr inbounds %struct.lua_TValue* %39, i32 0, i32 0, !dbg !2426
  %41 = bitcast %union.Value* %40 to %struct.GCObject**, !dbg !2426
  %42 = load %struct.GCObject** %41, align 4, !dbg !2426
  %43 = bitcast %struct.GCObject* %42 to %union.GCUnion*, !dbg !2426
  %44 = bitcast %union.GCUnion* %43 to %struct.Table*, !dbg !2426
  store %struct.Table* %44, %struct.Table** %reg, align 4, !dbg !2426
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %gt}, metadata !2427), !dbg !2428
  %45 = load %struct.Table** %reg, align 4, !dbg !2429
  %46 = call %struct.lua_TValue* @luaH_getint(%struct.Table* %45, i64 2), !dbg !2429
  store %struct.lua_TValue* %46, %struct.lua_TValue** %gt, align 4, !dbg !2429
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %io1}, metadata !2430), !dbg !2432
  %47 = load %struct.LClosure** %f, align 4, !dbg !2432
  %48 = getelementptr inbounds %struct.LClosure* %47, i32 0, i32 6, !dbg !2432
  %49 = getelementptr inbounds [1 x %struct.UpVal*]* %48, i32 0, i32 0, !dbg !2432
  %50 = load %struct.UpVal** %49, align 4, !dbg !2432
  %51 = getelementptr inbounds %struct.UpVal* %50, i32 0, i32 0, !dbg !2432
  %52 = load %struct.lua_TValue** %51, align 4, !dbg !2432
  store %struct.lua_TValue* %52, %struct.lua_TValue** %io1, align 4, !dbg !2432
  %53 = load %struct.lua_TValue** %io1, align 4, !dbg !2432
  %54 = load %struct.lua_TValue** %gt, align 4, !dbg !2432
  %55 = bitcast %struct.lua_TValue* %53 to i8*, !dbg !2432
  %56 = bitcast %struct.lua_TValue* %54 to i8*, !dbg !2432
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %55, i8* %56, i32 16, i32 8, i1 false), !dbg !2432
  %57 = load %struct.lua_State** %1, align 4, !dbg !2432
  %58 = load %struct.LClosure** %f, align 4, !dbg !2433
  %59 = getelementptr inbounds %struct.LClosure* %58, i32 0, i32 6, !dbg !2433
  %60 = getelementptr inbounds [1 x %struct.UpVal*]* %59, i32 0, i32 0, !dbg !2433
  %61 = load %struct.UpVal** %60, align 4, !dbg !2433
  %62 = getelementptr inbounds %struct.UpVal* %61, i32 0, i32 0, !dbg !2433
  %63 = load %struct.lua_TValue** %62, align 4, !dbg !2433
  %64 = getelementptr inbounds %struct.lua_TValue* %63, i32 0, i32 1, !dbg !2433
  %65 = load i32* %64, align 4, !dbg !2433
  %66 = and i32 %65, 64, !dbg !2433
  %67 = icmp ne i32 %66, 0, !dbg !2433
  br i1 %67, label %68, label %88, !dbg !2433

; <label>:68                                      ; preds = %35
  %69 = load %struct.LClosure** %f, align 4, !dbg !2434
  %70 = getelementptr inbounds %struct.LClosure* %69, i32 0, i32 6, !dbg !2434
  %71 = getelementptr inbounds [1 x %struct.UpVal*]* %70, i32 0, i32 0, !dbg !2434
  %72 = load %struct.UpVal** %71, align 4, !dbg !2434
  %73 = getelementptr inbounds %struct.UpVal* %72, i32 0, i32 0, !dbg !2434
  %74 = load %struct.lua_TValue** %73, align 4, !dbg !2434
  %75 = load %struct.LClosure** %f, align 4, !dbg !2434
  %76 = getelementptr inbounds %struct.LClosure* %75, i32 0, i32 6, !dbg !2434
  %77 = getelementptr inbounds [1 x %struct.UpVal*]* %76, i32 0, i32 0, !dbg !2434
  %78 = load %struct.UpVal** %77, align 4, !dbg !2434
  %79 = getelementptr inbounds %struct.UpVal* %78, i32 0, i32 2, !dbg !2434
  %80 = bitcast %union.anon.3* %79 to %struct.lua_TValue*, !dbg !2434
  %81 = icmp ne %struct.lua_TValue* %74, %80, !dbg !2434
  br i1 %81, label %88, label %82, !dbg !2434

; <label>:82                                      ; preds = %68
  %83 = load %struct.lua_State** %1, align 4, !dbg !2436
  %84 = load %struct.LClosure** %f, align 4, !dbg !2436
  %85 = getelementptr inbounds %struct.LClosure* %84, i32 0, i32 6, !dbg !2436
  %86 = getelementptr inbounds [1 x %struct.UpVal*]* %85, i32 0, i32 0, !dbg !2436
  %87 = load %struct.UpVal** %86, align 4, !dbg !2436
  call void @luaC_upvalbarrier_(%struct.lua_State* %83, %struct.UpVal* %87), !dbg !2436
  br label %89, !dbg !2436

; <label>:88                                      ; preds = %68, %35
  br label %89, !dbg !2438

; <label>:89                                      ; preds = %88, %82
  br label %90, !dbg !2441

; <label>:90                                      ; preds = %89, %19
  br label %91, !dbg !2442

; <label>:91                                      ; preds = %90, %9
  %92 = load i32* %status, align 4, !dbg !2443
  ret i32 %92, !dbg !2443
}

declare hidden void @luaZ_init(%struct.lua_State*, %struct.Zio*, i8* (%struct.lua_State*, i8*, i32*)*, i8*) #2

declare hidden i32 @luaD_protectedparser(%struct.lua_State*, %struct.Zio*, i8*, i8*) #2

declare hidden void @luaC_upvalbarrier_(%struct.lua_State*, %struct.UpVal*) #2

; Function Attrs: nounwind
define i32 @lua_dump(%struct.lua_State* %L, i32 (%struct.lua_State*, i8*, i32, i8*)* %writer, i8* %data, i32 %strip) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca i32 (%struct.lua_State*, i8*, i32, i8*)*, align 4
  %3 = alloca i8*, align 4
  %4 = alloca i32, align 4
  %status = alloca i32, align 4
  %o = alloca %struct.lua_TValue*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !2444), !dbg !2445
  store i32 (%struct.lua_State*, i8*, i32, i8*)* %writer, i32 (%struct.lua_State*, i8*, i32, i8*)** %2, align 4
  call void @llvm.dbg.declare(metadata !{i32 (%struct.lua_State*, i8*, i32, i8*)** %2}, metadata !2446), !dbg !2447
  store i8* %data, i8** %3, align 4
  call void @llvm.dbg.declare(metadata !{i8** %3}, metadata !2448), !dbg !2449
  store i32 %strip, i32* %4, align 4
  call void @llvm.dbg.declare(metadata !{i32* %4}, metadata !2450), !dbg !2451
  call void @llvm.dbg.declare(metadata !{i32* %status}, metadata !2452), !dbg !2453
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %o}, metadata !2454), !dbg !2455
  %5 = load %struct.lua_State** %1, align 4, !dbg !2456
  %6 = getelementptr inbounds %struct.lua_State* %5, i32 0, i32 5, !dbg !2456
  %7 = load %struct.lua_TValue** %6, align 4, !dbg !2456
  %8 = getelementptr inbounds %struct.lua_TValue* %7, i32 -1, !dbg !2456
  store %struct.lua_TValue* %8, %struct.lua_TValue** %o, align 4, !dbg !2456
  %9 = load %struct.lua_TValue** %o, align 4, !dbg !2457
  %10 = getelementptr inbounds %struct.lua_TValue* %9, i32 0, i32 1, !dbg !2457
  %11 = load i32* %10, align 4, !dbg !2457
  %12 = icmp eq i32 %11, 70, !dbg !2457
  br i1 %12, label %13, label %28, !dbg !2457

; <label>:13                                      ; preds = %0
  %14 = load %struct.lua_State** %1, align 4, !dbg !2459
  %15 = load %struct.lua_TValue** %o, align 4, !dbg !2459
  %16 = getelementptr inbounds %struct.lua_TValue* %15, i32 0, i32 0, !dbg !2459
  %17 = bitcast %union.Value* %16 to %struct.GCObject**, !dbg !2459
  %18 = load %struct.GCObject** %17, align 4, !dbg !2459
  %19 = bitcast %struct.GCObject* %18 to %union.GCUnion*, !dbg !2459
  %20 = bitcast %union.GCUnion* %19 to %union.Closure*, !dbg !2459
  %21 = bitcast %union.Closure* %20 to %struct.LClosure*, !dbg !2459
  %22 = getelementptr inbounds %struct.LClosure* %21, i32 0, i32 5, !dbg !2459
  %23 = load %struct.Proto** %22, align 4, !dbg !2459
  %24 = load i32 (%struct.lua_State*, i8*, i32, i8*)** %2, align 4, !dbg !2459
  %25 = load i8** %3, align 4, !dbg !2459
  %26 = load i32* %4, align 4, !dbg !2459
  %27 = call i32 @luaU_dump(%struct.lua_State* %14, %struct.Proto* %23, i32 (%struct.lua_State*, i8*, i32, i8*)* %24, i8* %25, i32 %26), !dbg !2459
  store i32 %27, i32* %status, align 4, !dbg !2459
  br label %29, !dbg !2459

; <label>:28                                      ; preds = %0
  store i32 1, i32* %status, align 4, !dbg !2460
  br label %29

; <label>:29                                      ; preds = %28, %13
  %30 = load i32* %status, align 4, !dbg !2461
  ret i32 %30, !dbg !2461
}

declare hidden i32 @luaU_dump(%struct.lua_State*, %struct.Proto*, i32 (%struct.lua_State*, i8*, i32, i8*)*, i8*, i32) #2

; Function Attrs: nounwind
define i32 @lua_status(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !2462), !dbg !2463
  %2 = load %struct.lua_State** %1, align 4, !dbg !2464
  %3 = getelementptr inbounds %struct.lua_State* %2, i32 0, i32 4, !dbg !2464
  %4 = load i8* %3, align 1, !dbg !2464
  %5 = zext i8 %4 to i32, !dbg !2464
  ret i32 %5, !dbg !2464
}

; Function Attrs: nounwind
define i32 @lua_gc(%struct.lua_State* %L, i32 %what, i32 %data) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %res = alloca i32, align 4
  %g = alloca %struct.global_State*, align 4
  %debt = alloca i32, align 4
  %oldrunning = alloca i8, align 1
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !2465), !dbg !2466
  store i32 %what, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !2467), !dbg !2468
  store i32 %data, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !2469), !dbg !2470
  call void @llvm.dbg.declare(metadata !{i32* %res}, metadata !2471), !dbg !2472
  store i32 0, i32* %res, align 4, !dbg !2473
  call void @llvm.dbg.declare(metadata !{%struct.global_State** %g}, metadata !2474), !dbg !2475
  %4 = load %struct.lua_State** %1, align 4, !dbg !2476
  %5 = getelementptr inbounds %struct.lua_State* %4, i32 0, i32 6, !dbg !2476
  %6 = load %struct.global_State** %5, align 4, !dbg !2476
  store %struct.global_State* %6, %struct.global_State** %g, align 4, !dbg !2476
  %7 = load i32* %2, align 4, !dbg !2477
  switch i32 %7, label %101 [
    i32 0, label %8
    i32 1, label %11
    i32 2, label %15
    i32 3, label %17
    i32 4, label %26
    i32 5, label %35
    i32 6, label %78
    i32 7, label %85
    i32 9, label %96
  ], !dbg !2477

; <label>:8                                       ; preds = %0
  %9 = load %struct.global_State** %g, align 4, !dbg !2478
  %10 = getelementptr inbounds %struct.global_State* %9, i32 0, i32 12, !dbg !2478
  store i8 0, i8* %10, align 1, !dbg !2478
  br label %102, !dbg !2481

; <label>:11                                      ; preds = %0
  %12 = load %struct.global_State** %g, align 4, !dbg !2482
  call void @luaE_setdebt(%struct.global_State* %12, i32 0), !dbg !2482
  %13 = load %struct.global_State** %g, align 4, !dbg !2484
  %14 = getelementptr inbounds %struct.global_State* %13, i32 0, i32 12, !dbg !2484
  store i8 1, i8* %14, align 1, !dbg !2484
  br label %102, !dbg !2485

; <label>:15                                      ; preds = %0
  %16 = load %struct.lua_State** %1, align 4, !dbg !2486
  call void @luaC_fullgc(%struct.lua_State* %16, i32 0), !dbg !2486
  br label %102, !dbg !2488

; <label>:17                                      ; preds = %0
  %18 = load %struct.global_State** %g, align 4, !dbg !2489
  %19 = getelementptr inbounds %struct.global_State* %18, i32 0, i32 2, !dbg !2489
  %20 = load i32* %19, align 4, !dbg !2489
  %21 = load %struct.global_State** %g, align 4, !dbg !2489
  %22 = getelementptr inbounds %struct.global_State* %21, i32 0, i32 3, !dbg !2489
  %23 = load i32* %22, align 4, !dbg !2489
  %24 = add nsw i32 %20, %23, !dbg !2489
  %25 = lshr i32 %24, 10, !dbg !2489
  store i32 %25, i32* %res, align 4, !dbg !2489
  br label %102, !dbg !2491

; <label>:26                                      ; preds = %0
  %27 = load %struct.global_State** %g, align 4, !dbg !2492
  %28 = getelementptr inbounds %struct.global_State* %27, i32 0, i32 2, !dbg !2492
  %29 = load i32* %28, align 4, !dbg !2492
  %30 = load %struct.global_State** %g, align 4, !dbg !2492
  %31 = getelementptr inbounds %struct.global_State* %30, i32 0, i32 3, !dbg !2492
  %32 = load i32* %31, align 4, !dbg !2492
  %33 = add nsw i32 %29, %32, !dbg !2492
  %34 = and i32 %33, 1023, !dbg !2492
  store i32 %34, i32* %res, align 4, !dbg !2492
  br label %102, !dbg !2494

; <label>:35                                      ; preds = %0
  call void @llvm.dbg.declare(metadata !{i32* %debt}, metadata !2495), !dbg !2497
  store i32 1, i32* %debt, align 4, !dbg !2498
  call void @llvm.dbg.declare(metadata !{i8* %oldrunning}, metadata !2499), !dbg !2500
  %36 = load %struct.global_State** %g, align 4, !dbg !2501
  %37 = getelementptr inbounds %struct.global_State* %36, i32 0, i32 12, !dbg !2501
  %38 = load i8* %37, align 1, !dbg !2501
  store i8 %38, i8* %oldrunning, align 1, !dbg !2501
  %39 = load %struct.global_State** %g, align 4, !dbg !2502
  %40 = getelementptr inbounds %struct.global_State* %39, i32 0, i32 12, !dbg !2502
  store i8 1, i8* %40, align 1, !dbg !2502
  %41 = load i32* %3, align 4, !dbg !2503
  %42 = icmp eq i32 %41, 0, !dbg !2503
  br i1 %42, label %43, label %46, !dbg !2503

; <label>:43                                      ; preds = %35
  %44 = load %struct.global_State** %g, align 4, !dbg !2505
  call void @luaE_setdebt(%struct.global_State* %44, i32 -1600), !dbg !2505
  %45 = load %struct.lua_State** %1, align 4, !dbg !2507
  call void @luaC_step(%struct.lua_State* %45), !dbg !2507
  br label %64, !dbg !2508

; <label>:46                                      ; preds = %35
  %47 = load i32* %3, align 4, !dbg !2509
  %48 = mul nsw i32 %47, 1024, !dbg !2509
  %49 = load %struct.global_State** %g, align 4, !dbg !2509
  %50 = getelementptr inbounds %struct.global_State* %49, i32 0, i32 3, !dbg !2509
  %51 = load i32* %50, align 4, !dbg !2509
  %52 = add nsw i32 %48, %51, !dbg !2509
  store i32 %52, i32* %debt, align 4, !dbg !2509
  %53 = load %struct.global_State** %g, align 4, !dbg !2511
  %54 = load i32* %debt, align 4, !dbg !2511
  call void @luaE_setdebt(%struct.global_State* %53, i32 %54), !dbg !2511
  %55 = load %struct.lua_State** %1, align 4, !dbg !2512
  %56 = getelementptr inbounds %struct.lua_State* %55, i32 0, i32 6, !dbg !2512
  %57 = load %struct.global_State** %56, align 4, !dbg !2512
  %58 = getelementptr inbounds %struct.global_State* %57, i32 0, i32 3, !dbg !2512
  %59 = load i32* %58, align 4, !dbg !2512
  %60 = icmp sgt i32 %59, 0, !dbg !2512
  br i1 %60, label %61, label %63, !dbg !2512

; <label>:61                                      ; preds = %46
  %62 = load %struct.lua_State** %1, align 4, !dbg !2515
  call void @luaC_step(%struct.lua_State* %62), !dbg !2515
  br label %63, !dbg !2515

; <label>:63                                      ; preds = %61, %46
  br label %64

; <label>:64                                      ; preds = %63, %43
  %65 = load i8* %oldrunning, align 1, !dbg !2518
  %66 = load %struct.global_State** %g, align 4, !dbg !2518
  %67 = getelementptr inbounds %struct.global_State* %66, i32 0, i32 12, !dbg !2518
  store i8 %65, i8* %67, align 1, !dbg !2518
  %68 = load i32* %debt, align 4, !dbg !2519
  %69 = icmp sgt i32 %68, 0, !dbg !2519
  br i1 %69, label %70, label %77, !dbg !2519

; <label>:70                                      ; preds = %64
  %71 = load %struct.global_State** %g, align 4, !dbg !2521
  %72 = getelementptr inbounds %struct.global_State* %71, i32 0, i32 10, !dbg !2521
  %73 = load i8* %72, align 1, !dbg !2521
  %74 = zext i8 %73 to i32, !dbg !2521
  %75 = icmp eq i32 %74, 7, !dbg !2521
  br i1 %75, label %76, label %77, !dbg !2521

; <label>:76                                      ; preds = %70
  store i32 1, i32* %res, align 4, !dbg !2523
  br label %77, !dbg !2523

; <label>:77                                      ; preds = %76, %70, %64
  br label %102, !dbg !2524

; <label>:78                                      ; preds = %0
  %79 = load %struct.global_State** %g, align 4, !dbg !2525
  %80 = getelementptr inbounds %struct.global_State* %79, i32 0, i32 25, !dbg !2525
  %81 = load i32* %80, align 4, !dbg !2525
  store i32 %81, i32* %res, align 4, !dbg !2525
  %82 = load i32* %3, align 4, !dbg !2527
  %83 = load %struct.global_State** %g, align 4, !dbg !2527
  %84 = getelementptr inbounds %struct.global_State* %83, i32 0, i32 25, !dbg !2527
  store i32 %82, i32* %84, align 4, !dbg !2527
  br label %102, !dbg !2528

; <label>:85                                      ; preds = %0
  %86 = load %struct.global_State** %g, align 4, !dbg !2529
  %87 = getelementptr inbounds %struct.global_State* %86, i32 0, i32 26, !dbg !2529
  %88 = load i32* %87, align 4, !dbg !2529
  store i32 %88, i32* %res, align 4, !dbg !2529
  %89 = load i32* %3, align 4, !dbg !2531
  %90 = icmp slt i32 %89, 40, !dbg !2531
  br i1 %90, label %91, label %92, !dbg !2531

; <label>:91                                      ; preds = %85
  store i32 40, i32* %3, align 4, !dbg !2533
  br label %92, !dbg !2533

; <label>:92                                      ; preds = %91, %85
  %93 = load i32* %3, align 4, !dbg !2535
  %94 = load %struct.global_State** %g, align 4, !dbg !2535
  %95 = getelementptr inbounds %struct.global_State* %94, i32 0, i32 26, !dbg !2535
  store i32 %93, i32* %95, align 4, !dbg !2535
  br label %102, !dbg !2536

; <label>:96                                      ; preds = %0
  %97 = load %struct.global_State** %g, align 4, !dbg !2537
  %98 = getelementptr inbounds %struct.global_State* %97, i32 0, i32 12, !dbg !2537
  %99 = load i8* %98, align 1, !dbg !2537
  %100 = zext i8 %99 to i32, !dbg !2537
  store i32 %100, i32* %res, align 4, !dbg !2537
  br label %102, !dbg !2539

; <label>:101                                     ; preds = %0
  store i32 -1, i32* %res, align 4, !dbg !2540
  br label %102, !dbg !2541

; <label>:102                                     ; preds = %101, %96, %92, %78, %77, %26, %17, %15, %11, %8
  %103 = load i32* %res, align 4, !dbg !2542
  ret i32 %103, !dbg !2542
}

declare hidden void @luaE_setdebt(%struct.global_State*, i32) #2

declare hidden void @luaC_fullgc(%struct.lua_State*, i32) #2

; Function Attrs: nounwind
define i32 @lua_error(%struct.lua_State* %L) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.lua_State*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %2}, metadata !2543), !dbg !2544
  %3 = load %struct.lua_State** %2, align 4, !dbg !2545
  call void @luaG_errormsg(%struct.lua_State* %3) #5, !dbg !2545
  unreachable, !dbg !2545
                                                  ; No predecessors!
  %5 = load i32* %1, !dbg !2546
  ret i32 %5, !dbg !2546
}

; Function Attrs: noreturn
declare hidden void @luaG_errormsg(%struct.lua_State*) #4

; Function Attrs: nounwind
define i32 @lua_next(%struct.lua_State* %L, i32 %idx) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca i32, align 4
  %t = alloca %struct.lua_TValue*, align 4
  %more = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !2547), !dbg !2548
  store i32 %idx, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !2549), !dbg !2550
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %t}, metadata !2551), !dbg !2552
  call void @llvm.dbg.declare(metadata !{i32* %more}, metadata !2553), !dbg !2554
  %3 = load %struct.lua_State** %1, align 4, !dbg !2555
  %4 = load i32* %2, align 4, !dbg !2555
  %5 = call %struct.lua_TValue* @index2addr(%struct.lua_State* %3, i32 %4), !dbg !2555
  store %struct.lua_TValue* %5, %struct.lua_TValue** %t, align 4, !dbg !2555
  %6 = load %struct.lua_State** %1, align 4, !dbg !2556
  %7 = load %struct.lua_TValue** %t, align 4, !dbg !2556
  %8 = getelementptr inbounds %struct.lua_TValue* %7, i32 0, i32 0, !dbg !2556
  %9 = bitcast %union.Value* %8 to %struct.GCObject**, !dbg !2556
  %10 = load %struct.GCObject** %9, align 4, !dbg !2556
  %11 = bitcast %struct.GCObject* %10 to %union.GCUnion*, !dbg !2556
  %12 = bitcast %union.GCUnion* %11 to %struct.Table*, !dbg !2556
  %13 = load %struct.lua_State** %1, align 4, !dbg !2556
  %14 = getelementptr inbounds %struct.lua_State* %13, i32 0, i32 5, !dbg !2556
  %15 = load %struct.lua_TValue** %14, align 4, !dbg !2556
  %16 = getelementptr inbounds %struct.lua_TValue* %15, i32 -1, !dbg !2556
  %17 = call i32 @luaH_next(%struct.lua_State* %6, %struct.Table* %12, %struct.lua_TValue* %16), !dbg !2556
  store i32 %17, i32* %more, align 4, !dbg !2556
  %18 = load i32* %more, align 4, !dbg !2557
  %19 = icmp ne i32 %18, 0, !dbg !2557
  br i1 %19, label %20, label %25, !dbg !2557

; <label>:20                                      ; preds = %0
  %21 = load %struct.lua_State** %1, align 4, !dbg !2559
  %22 = getelementptr inbounds %struct.lua_State* %21, i32 0, i32 5, !dbg !2559
  %23 = load %struct.lua_TValue** %22, align 4, !dbg !2559
  %24 = getelementptr inbounds %struct.lua_TValue* %23, i32 1, !dbg !2559
  store %struct.lua_TValue* %24, %struct.lua_TValue** %22, align 4, !dbg !2559
  br label %30, !dbg !2562

; <label>:25                                      ; preds = %0
  %26 = load %struct.lua_State** %1, align 4, !dbg !2563
  %27 = getelementptr inbounds %struct.lua_State* %26, i32 0, i32 5, !dbg !2563
  %28 = load %struct.lua_TValue** %27, align 4, !dbg !2563
  %29 = getelementptr inbounds %struct.lua_TValue* %28, i32 -1, !dbg !2563
  store %struct.lua_TValue* %29, %struct.lua_TValue** %27, align 4, !dbg !2563
  br label %30

; <label>:30                                      ; preds = %25, %20
  %31 = load i32* %more, align 4, !dbg !2564
  ret i32 %31, !dbg !2564
}

declare hidden i32 @luaH_next(%struct.lua_State*, %struct.Table*, %struct.lua_TValue*) #2

; Function Attrs: nounwind
define void @lua_concat(%struct.lua_State* %L, i32 %n) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca i32, align 4
  %io = alloca %struct.lua_TValue*, align 4
  %x_ = alloca %struct.TString*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !2565), !dbg !2566
  store i32 %n, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !2567), !dbg !2568
  %3 = load i32* %2, align 4, !dbg !2569
  %4 = icmp sge i32 %3, 2, !dbg !2569
  br i1 %4, label %5, label %8, !dbg !2569

; <label>:5                                       ; preds = %0
  %6 = load %struct.lua_State** %1, align 4, !dbg !2571
  %7 = load i32* %2, align 4, !dbg !2571
  call void @luaV_concat(%struct.lua_State* %6, i32 %7), !dbg !2571
  br label %35, !dbg !2573

; <label>:8                                       ; preds = %0
  %9 = load i32* %2, align 4, !dbg !2574
  %10 = icmp eq i32 %9, 0, !dbg !2574
  br i1 %10, label %11, label %34, !dbg !2574

; <label>:11                                      ; preds = %8
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %io}, metadata !2576), !dbg !2579
  %12 = load %struct.lua_State** %1, align 4, !dbg !2579
  %13 = getelementptr inbounds %struct.lua_State* %12, i32 0, i32 5, !dbg !2579
  %14 = load %struct.lua_TValue** %13, align 4, !dbg !2579
  store %struct.lua_TValue* %14, %struct.lua_TValue** %io, align 4, !dbg !2579
  call void @llvm.dbg.declare(metadata !{%struct.TString** %x_}, metadata !2580), !dbg !2579
  %15 = load %struct.lua_State** %1, align 4, !dbg !2579
  %16 = call %struct.TString* @luaS_newlstr(%struct.lua_State* %15, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i32 0), !dbg !2579
  store %struct.TString* %16, %struct.TString** %x_, align 4, !dbg !2579
  %17 = load %struct.TString** %x_, align 4, !dbg !2579
  %18 = bitcast %struct.TString* %17 to %union.GCUnion*, !dbg !2579
  %19 = bitcast %union.GCUnion* %18 to %struct.GCObject*, !dbg !2579
  %20 = load %struct.lua_TValue** %io, align 4, !dbg !2579
  %21 = getelementptr inbounds %struct.lua_TValue* %20, i32 0, i32 0, !dbg !2579
  %22 = bitcast %union.Value* %21 to %struct.GCObject**, !dbg !2579
  store %struct.GCObject* %19, %struct.GCObject** %22, align 4, !dbg !2579
  %23 = load %struct.TString** %x_, align 4, !dbg !2579
  %24 = getelementptr inbounds %struct.TString* %23, i32 0, i32 1, !dbg !2579
  %25 = load i8* %24, align 1, !dbg !2579
  %26 = zext i8 %25 to i32, !dbg !2579
  %27 = or i32 %26, 64, !dbg !2579
  %28 = load %struct.lua_TValue** %io, align 4, !dbg !2579
  %29 = getelementptr inbounds %struct.lua_TValue* %28, i32 0, i32 1, !dbg !2579
  store i32 %27, i32* %29, align 4, !dbg !2579
  %30 = load %struct.lua_State** %1, align 4, !dbg !2581
  %31 = getelementptr inbounds %struct.lua_State* %30, i32 0, i32 5, !dbg !2581
  %32 = load %struct.lua_TValue** %31, align 4, !dbg !2581
  %33 = getelementptr inbounds %struct.lua_TValue* %32, i32 1, !dbg !2581
  store %struct.lua_TValue* %33, %struct.lua_TValue** %31, align 4, !dbg !2581
  br label %34, !dbg !2583

; <label>:34                                      ; preds = %11, %8
  br label %35

; <label>:35                                      ; preds = %34, %5
  %36 = load %struct.lua_State** %1, align 4, !dbg !2584
  %37 = getelementptr inbounds %struct.lua_State* %36, i32 0, i32 6, !dbg !2584
  %38 = load %struct.global_State** %37, align 4, !dbg !2584
  %39 = getelementptr inbounds %struct.global_State* %38, i32 0, i32 3, !dbg !2584
  %40 = load i32* %39, align 4, !dbg !2584
  %41 = icmp sgt i32 %40, 0, !dbg !2584
  br i1 %41, label %42, label %44, !dbg !2584

; <label>:42                                      ; preds = %35
  %43 = load %struct.lua_State** %1, align 4, !dbg !2587
  call void @luaC_step(%struct.lua_State* %43), !dbg !2587
  br label %44, !dbg !2587

; <label>:44                                      ; preds = %42, %35
  ret void, !dbg !2590
}

declare hidden void @luaV_concat(%struct.lua_State*, i32) #2

; Function Attrs: nounwind
define void @lua_len(%struct.lua_State* %L, i32 %idx) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca i32, align 4
  %t = alloca %struct.lua_TValue*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !2591), !dbg !2592
  store i32 %idx, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !2593), !dbg !2594
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %t}, metadata !2595), !dbg !2596
  %3 = load %struct.lua_State** %1, align 4, !dbg !2597
  %4 = load i32* %2, align 4, !dbg !2597
  %5 = call %struct.lua_TValue* @index2addr(%struct.lua_State* %3, i32 %4), !dbg !2597
  store %struct.lua_TValue* %5, %struct.lua_TValue** %t, align 4, !dbg !2597
  %6 = load %struct.lua_State** %1, align 4, !dbg !2598
  %7 = load %struct.lua_State** %1, align 4, !dbg !2598
  %8 = getelementptr inbounds %struct.lua_State* %7, i32 0, i32 5, !dbg !2598
  %9 = load %struct.lua_TValue** %8, align 4, !dbg !2598
  %10 = load %struct.lua_TValue** %t, align 4, !dbg !2598
  call void @luaV_objlen(%struct.lua_State* %6, %struct.lua_TValue* %9, %struct.lua_TValue* %10), !dbg !2598
  %11 = load %struct.lua_State** %1, align 4, !dbg !2599
  %12 = getelementptr inbounds %struct.lua_State* %11, i32 0, i32 5, !dbg !2599
  %13 = load %struct.lua_TValue** %12, align 4, !dbg !2599
  %14 = getelementptr inbounds %struct.lua_TValue* %13, i32 1, !dbg !2599
  store %struct.lua_TValue* %14, %struct.lua_TValue** %12, align 4, !dbg !2599
  ret void, !dbg !2601
}

declare hidden void @luaV_objlen(%struct.lua_State*, %struct.lua_TValue*, %struct.lua_TValue*) #2

; Function Attrs: nounwind
define i8* (i8*, i8*, i32, i32)* @lua_getallocf(%struct.lua_State* %L, i8** %ud) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca i8**, align 4
  %f = alloca i8* (i8*, i8*, i32, i32)*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !2602), !dbg !2603
  store i8** %ud, i8*** %2, align 4
  call void @llvm.dbg.declare(metadata !{i8*** %2}, metadata !2604), !dbg !2605
  call void @llvm.dbg.declare(metadata !{i8* (i8*, i8*, i32, i32)** %f}, metadata !2606), !dbg !2607
  %3 = load i8*** %2, align 4, !dbg !2608
  %4 = icmp ne i8** %3, null, !dbg !2608
  br i1 %4, label %5, label %12, !dbg !2608

; <label>:5                                       ; preds = %0
  %6 = load %struct.lua_State** %1, align 4, !dbg !2610
  %7 = getelementptr inbounds %struct.lua_State* %6, i32 0, i32 6, !dbg !2610
  %8 = load %struct.global_State** %7, align 4, !dbg !2610
  %9 = getelementptr inbounds %struct.global_State* %8, i32 0, i32 1, !dbg !2610
  %10 = load i8** %9, align 4, !dbg !2610
  %11 = load i8*** %2, align 4, !dbg !2610
  store i8* %10, i8** %11, align 4, !dbg !2610
  br label %12, !dbg !2610

; <label>:12                                      ; preds = %5, %0
  %13 = load %struct.lua_State** %1, align 4, !dbg !2612
  %14 = getelementptr inbounds %struct.lua_State* %13, i32 0, i32 6, !dbg !2612
  %15 = load %struct.global_State** %14, align 4, !dbg !2612
  %16 = getelementptr inbounds %struct.global_State* %15, i32 0, i32 0, !dbg !2612
  %17 = load i8* (i8*, i8*, i32, i32)** %16, align 4, !dbg !2612
  store i8* (i8*, i8*, i32, i32)* %17, i8* (i8*, i8*, i32, i32)** %f, align 4, !dbg !2612
  %18 = load i8* (i8*, i8*, i32, i32)** %f, align 4, !dbg !2613
  ret i8* (i8*, i8*, i32, i32)* %18, !dbg !2613
}

; Function Attrs: nounwind
define void @lua_setallocf(%struct.lua_State* %L, i8* (i8*, i8*, i32, i32)* %f, i8* %ud) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca i8* (i8*, i8*, i32, i32)*, align 4
  %3 = alloca i8*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !2614), !dbg !2615
  store i8* (i8*, i8*, i32, i32)* %f, i8* (i8*, i8*, i32, i32)** %2, align 4
  call void @llvm.dbg.declare(metadata !{i8* (i8*, i8*, i32, i32)** %2}, metadata !2616), !dbg !2617
  store i8* %ud, i8** %3, align 4
  call void @llvm.dbg.declare(metadata !{i8** %3}, metadata !2618), !dbg !2619
  %4 = load i8** %3, align 4, !dbg !2620
  %5 = load %struct.lua_State** %1, align 4, !dbg !2620
  %6 = getelementptr inbounds %struct.lua_State* %5, i32 0, i32 6, !dbg !2620
  %7 = load %struct.global_State** %6, align 4, !dbg !2620
  %8 = getelementptr inbounds %struct.global_State* %7, i32 0, i32 1, !dbg !2620
  store i8* %4, i8** %8, align 4, !dbg !2620
  %9 = load i8* (i8*, i8*, i32, i32)** %2, align 4, !dbg !2621
  %10 = load %struct.lua_State** %1, align 4, !dbg !2621
  %11 = getelementptr inbounds %struct.lua_State* %10, i32 0, i32 6, !dbg !2621
  %12 = load %struct.global_State** %11, align 4, !dbg !2621
  %13 = getelementptr inbounds %struct.global_State* %12, i32 0, i32 0, !dbg !2621
  store i8* (i8*, i8*, i32, i32)* %9, i8* (i8*, i8*, i32, i32)** %13, align 4, !dbg !2621
  ret void, !dbg !2622
}

; Function Attrs: nounwind
define i8* @lua_newuserdata(%struct.lua_State* %L, i32 %size) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca i32, align 4
  %u = alloca %struct.Udata*, align 4
  %io = alloca %struct.lua_TValue*, align 4
  %x_ = alloca %struct.Udata*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !2623), !dbg !2624
  store i32 %size, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !2625), !dbg !2626
  call void @llvm.dbg.declare(metadata !{%struct.Udata** %u}, metadata !2627), !dbg !2628
  %3 = load %struct.lua_State** %1, align 4, !dbg !2629
  %4 = load i32* %2, align 4, !dbg !2629
  %5 = call %struct.Udata* @luaS_newudata(%struct.lua_State* %3, i32 %4), !dbg !2629
  store %struct.Udata* %5, %struct.Udata** %u, align 4, !dbg !2629
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %io}, metadata !2630), !dbg !2632
  %6 = load %struct.lua_State** %1, align 4, !dbg !2632
  %7 = getelementptr inbounds %struct.lua_State* %6, i32 0, i32 5, !dbg !2632
  %8 = load %struct.lua_TValue** %7, align 4, !dbg !2632
  store %struct.lua_TValue* %8, %struct.lua_TValue** %io, align 4, !dbg !2632
  call void @llvm.dbg.declare(metadata !{%struct.Udata** %x_}, metadata !2633), !dbg !2632
  %9 = load %struct.Udata** %u, align 4, !dbg !2632
  store %struct.Udata* %9, %struct.Udata** %x_, align 4, !dbg !2632
  %10 = load %struct.Udata** %x_, align 4, !dbg !2632
  %11 = bitcast %struct.Udata* %10 to %union.GCUnion*, !dbg !2632
  %12 = bitcast %union.GCUnion* %11 to %struct.GCObject*, !dbg !2632
  %13 = load %struct.lua_TValue** %io, align 4, !dbg !2632
  %14 = getelementptr inbounds %struct.lua_TValue* %13, i32 0, i32 0, !dbg !2632
  %15 = bitcast %union.Value* %14 to %struct.GCObject**, !dbg !2632
  store %struct.GCObject* %12, %struct.GCObject** %15, align 4, !dbg !2632
  %16 = load %struct.lua_TValue** %io, align 4, !dbg !2632
  %17 = getelementptr inbounds %struct.lua_TValue* %16, i32 0, i32 1, !dbg !2632
  store i32 71, i32* %17, align 4, !dbg !2632
  %18 = load %struct.lua_State** %1, align 4, !dbg !2634
  %19 = getelementptr inbounds %struct.lua_State* %18, i32 0, i32 5, !dbg !2634
  %20 = load %struct.lua_TValue** %19, align 4, !dbg !2634
  %21 = getelementptr inbounds %struct.lua_TValue* %20, i32 1, !dbg !2634
  store %struct.lua_TValue* %21, %struct.lua_TValue** %19, align 4, !dbg !2634
  %22 = load %struct.lua_State** %1, align 4, !dbg !2636
  %23 = getelementptr inbounds %struct.lua_State* %22, i32 0, i32 6, !dbg !2636
  %24 = load %struct.global_State** %23, align 4, !dbg !2636
  %25 = getelementptr inbounds %struct.global_State* %24, i32 0, i32 3, !dbg !2636
  %26 = load i32* %25, align 4, !dbg !2636
  %27 = icmp sgt i32 %26, 0, !dbg !2636
  br i1 %27, label %28, label %30, !dbg !2636

; <label>:28                                      ; preds = %0
  %29 = load %struct.lua_State** %1, align 4, !dbg !2639
  call void @luaC_step(%struct.lua_State* %29), !dbg !2639
  br label %30, !dbg !2639

; <label>:30                                      ; preds = %28, %0
  %31 = load %struct.Udata** %u, align 4, !dbg !2642
  %32 = bitcast %struct.Udata* %31 to i8*, !dbg !2642
  %33 = getelementptr inbounds i8* %32, i32 24, !dbg !2642
  ret i8* %33, !dbg !2642
}

declare hidden %struct.Udata* @luaS_newudata(%struct.lua_State*, i32) #2

; Function Attrs: nounwind
define i8* @lua_getupvalue(%struct.lua_State* %L, i32 %funcindex, i32 %n) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %name = alloca i8*, align 4
  %val = alloca %struct.lua_TValue*, align 4
  %io1 = alloca %struct.lua_TValue*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !2643), !dbg !2644
  store i32 %funcindex, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !2645), !dbg !2646
  store i32 %n, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !2647), !dbg !2648
  call void @llvm.dbg.declare(metadata !{i8** %name}, metadata !2649), !dbg !2650
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %val}, metadata !2651), !dbg !2652
  store %struct.lua_TValue* null, %struct.lua_TValue** %val, align 4, !dbg !2653
  %4 = load %struct.lua_State** %1, align 4, !dbg !2654
  %5 = load i32* %2, align 4, !dbg !2654
  %6 = call %struct.lua_TValue* @index2addr(%struct.lua_State* %4, i32 %5), !dbg !2654
  %7 = load i32* %3, align 4, !dbg !2655
  %8 = call i8* @aux_upvalue(%struct.lua_TValue* %6, i32 %7, %struct.lua_TValue** %val, %struct.CClosure** null, %struct.UpVal** null), !dbg !2655
  store i8* %8, i8** %name, align 4, !dbg !2655
  %9 = load i8** %name, align 4, !dbg !2656
  %10 = icmp ne i8* %9, null, !dbg !2656
  br i1 %10, label %11, label %24, !dbg !2656

; <label>:11                                      ; preds = %0
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %io1}, metadata !2658), !dbg !2661
  %12 = load %struct.lua_State** %1, align 4, !dbg !2661
  %13 = getelementptr inbounds %struct.lua_State* %12, i32 0, i32 5, !dbg !2661
  %14 = load %struct.lua_TValue** %13, align 4, !dbg !2661
  store %struct.lua_TValue* %14, %struct.lua_TValue** %io1, align 4, !dbg !2661
  %15 = load %struct.lua_TValue** %io1, align 4, !dbg !2661
  %16 = load %struct.lua_TValue** %val, align 4, !dbg !2661
  %17 = bitcast %struct.lua_TValue* %15 to i8*, !dbg !2661
  %18 = bitcast %struct.lua_TValue* %16 to i8*, !dbg !2661
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %17, i8* %18, i32 16, i32 8, i1 false), !dbg !2661
  %19 = load %struct.lua_State** %1, align 4, !dbg !2661
  %20 = load %struct.lua_State** %1, align 4, !dbg !2662
  %21 = getelementptr inbounds %struct.lua_State* %20, i32 0, i32 5, !dbg !2662
  %22 = load %struct.lua_TValue** %21, align 4, !dbg !2662
  %23 = getelementptr inbounds %struct.lua_TValue* %22, i32 1, !dbg !2662
  store %struct.lua_TValue* %23, %struct.lua_TValue** %21, align 4, !dbg !2662
  br label %24, !dbg !2664

; <label>:24                                      ; preds = %11, %0
  %25 = load i8** %name, align 4, !dbg !2665
  ret i8* %25, !dbg !2665
}

; Function Attrs: nounwind
define internal i8* @aux_upvalue(%struct.lua_TValue* %fi, i32 %n, %struct.lua_TValue** %val, %struct.CClosure** %owner, %struct.UpVal** %uv) #0 {
  %1 = alloca i8*, align 4
  %2 = alloca %struct.lua_TValue*, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.lua_TValue**, align 4
  %5 = alloca %struct.CClosure**, align 4
  %6 = alloca %struct.UpVal**, align 4
  %f = alloca %struct.CClosure*, align 4
  %f1 = alloca %struct.LClosure*, align 4
  %name = alloca %struct.TString*, align 4
  %p = alloca %struct.Proto*, align 4
  store %struct.lua_TValue* %fi, %struct.lua_TValue** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %2}, metadata !2666), !dbg !2667
  store i32 %n, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !2668), !dbg !2669
  store %struct.lua_TValue** %val, %struct.lua_TValue*** %4, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue*** %4}, metadata !2670), !dbg !2671
  store %struct.CClosure** %owner, %struct.CClosure*** %5, align 4
  call void @llvm.dbg.declare(metadata !{%struct.CClosure*** %5}, metadata !2672), !dbg !2673
  store %struct.UpVal** %uv, %struct.UpVal*** %6, align 4
  call void @llvm.dbg.declare(metadata !{%struct.UpVal*** %6}, metadata !2674), !dbg !2675
  %7 = load %struct.lua_TValue** %2, align 4, !dbg !2676
  %8 = getelementptr inbounds %struct.lua_TValue* %7, i32 0, i32 1, !dbg !2676
  %9 = load i32* %8, align 4, !dbg !2676
  %10 = and i32 %9, 63, !dbg !2676
  switch i32 %10, label %100 [
    i32 38, label %11
    i32 6, label %42
  ], !dbg !2676

; <label>:11                                      ; preds = %0
  call void @llvm.dbg.declare(metadata !{%struct.CClosure** %f}, metadata !2677), !dbg !2680
  %12 = load %struct.lua_TValue** %2, align 4, !dbg !2681
  %13 = getelementptr inbounds %struct.lua_TValue* %12, i32 0, i32 0, !dbg !2681
  %14 = bitcast %union.Value* %13 to %struct.GCObject**, !dbg !2681
  %15 = load %struct.GCObject** %14, align 4, !dbg !2681
  %16 = bitcast %struct.GCObject* %15 to %union.GCUnion*, !dbg !2681
  %17 = bitcast %union.GCUnion* %16 to %union.Closure*, !dbg !2681
  %18 = bitcast %union.Closure* %17 to %struct.CClosure*, !dbg !2681
  store %struct.CClosure* %18, %struct.CClosure** %f, align 4, !dbg !2681
  %19 = load i32* %3, align 4, !dbg !2682
  %20 = icmp sle i32 1, %19, !dbg !2682
  br i1 %20, label %21, label %28, !dbg !2682

; <label>:21                                      ; preds = %11
  %22 = load i32* %3, align 4, !dbg !2684
  %23 = load %struct.CClosure** %f, align 4, !dbg !2684
  %24 = getelementptr inbounds %struct.CClosure* %23, i32 0, i32 3, !dbg !2684
  %25 = load i8* %24, align 1, !dbg !2684
  %26 = zext i8 %25 to i32, !dbg !2684
  %27 = icmp sle i32 %22, %26, !dbg !2684
  br i1 %27, label %29, label %28, !dbg !2684

; <label>:28                                      ; preds = %21, %11
  store i8* null, i8** %1, !dbg !2686
  br label %101, !dbg !2686

; <label>:29                                      ; preds = %21
  %30 = load i32* %3, align 4, !dbg !2689
  %31 = sub nsw i32 %30, 1, !dbg !2689
  %32 = load %struct.CClosure** %f, align 4, !dbg !2689
  %33 = getelementptr inbounds %struct.CClosure* %32, i32 0, i32 6, !dbg !2689
  %34 = getelementptr inbounds [1 x %struct.lua_TValue]* %33, i32 0, i32 %31, !dbg !2689
  %35 = load %struct.lua_TValue*** %4, align 4, !dbg !2689
  store %struct.lua_TValue* %34, %struct.lua_TValue** %35, align 4, !dbg !2689
  %36 = load %struct.CClosure*** %5, align 4, !dbg !2690
  %37 = icmp ne %struct.CClosure** %36, null, !dbg !2690
  br i1 %37, label %38, label %41, !dbg !2690

; <label>:38                                      ; preds = %29
  %39 = load %struct.CClosure** %f, align 4, !dbg !2692
  %40 = load %struct.CClosure*** %5, align 4, !dbg !2692
  store %struct.CClosure* %39, %struct.CClosure** %40, align 4, !dbg !2692
  br label %41, !dbg !2692

; <label>:41                                      ; preds = %38, %29
  store i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8** %1, !dbg !2694
  br label %101, !dbg !2694

; <label>:42                                      ; preds = %0
  call void @llvm.dbg.declare(metadata !{%struct.LClosure** %f1}, metadata !2695), !dbg !2697
  %43 = load %struct.lua_TValue** %2, align 4, !dbg !2698
  %44 = getelementptr inbounds %struct.lua_TValue* %43, i32 0, i32 0, !dbg !2698
  %45 = bitcast %union.Value* %44 to %struct.GCObject**, !dbg !2698
  %46 = load %struct.GCObject** %45, align 4, !dbg !2698
  %47 = bitcast %struct.GCObject* %46 to %union.GCUnion*, !dbg !2698
  %48 = bitcast %union.GCUnion* %47 to %union.Closure*, !dbg !2698
  %49 = bitcast %union.Closure* %48 to %struct.LClosure*, !dbg !2698
  store %struct.LClosure* %49, %struct.LClosure** %f1, align 4, !dbg !2698
  call void @llvm.dbg.declare(metadata !{%struct.TString** %name}, metadata !2699), !dbg !2700
  call void @llvm.dbg.declare(metadata !{%struct.Proto** %p}, metadata !2701), !dbg !2704
  %50 = load %struct.LClosure** %f1, align 4, !dbg !2705
  %51 = getelementptr inbounds %struct.LClosure* %50, i32 0, i32 5, !dbg !2705
  %52 = load %struct.Proto** %51, align 4, !dbg !2705
  store %struct.Proto* %52, %struct.Proto** %p, align 4, !dbg !2705
  %53 = load i32* %3, align 4, !dbg !2706
  %54 = icmp sle i32 1, %53, !dbg !2706
  br i1 %54, label %55, label %61, !dbg !2706

; <label>:55                                      ; preds = %42
  %56 = load i32* %3, align 4, !dbg !2708
  %57 = load %struct.Proto** %p, align 4, !dbg !2708
  %58 = getelementptr inbounds %struct.Proto* %57, i32 0, i32 6, !dbg !2708
  %59 = load i32* %58, align 4, !dbg !2708
  %60 = icmp sle i32 %56, %59, !dbg !2708
  br i1 %60, label %62, label %61, !dbg !2708

; <label>:61                                      ; preds = %55, %42
  store i8* null, i8** %1, !dbg !2710
  br label %101, !dbg !2710

; <label>:62                                      ; preds = %55
  %63 = load i32* %3, align 4, !dbg !2713
  %64 = sub nsw i32 %63, 1, !dbg !2713
  %65 = load %struct.LClosure** %f1, align 4, !dbg !2713
  %66 = getelementptr inbounds %struct.LClosure* %65, i32 0, i32 6, !dbg !2713
  %67 = getelementptr inbounds [1 x %struct.UpVal*]* %66, i32 0, i32 %64, !dbg !2713
  %68 = load %struct.UpVal** %67, align 4, !dbg !2713
  %69 = getelementptr inbounds %struct.UpVal* %68, i32 0, i32 0, !dbg !2713
  %70 = load %struct.lua_TValue** %69, align 4, !dbg !2713
  %71 = load %struct.lua_TValue*** %4, align 4, !dbg !2713
  store %struct.lua_TValue* %70, %struct.lua_TValue** %71, align 4, !dbg !2713
  %72 = load %struct.UpVal*** %6, align 4, !dbg !2714
  %73 = icmp ne %struct.UpVal** %72, null, !dbg !2714
  br i1 %73, label %74, label %82, !dbg !2714

; <label>:74                                      ; preds = %62
  %75 = load i32* %3, align 4, !dbg !2716
  %76 = sub nsw i32 %75, 1, !dbg !2716
  %77 = load %struct.LClosure** %f1, align 4, !dbg !2716
  %78 = getelementptr inbounds %struct.LClosure* %77, i32 0, i32 6, !dbg !2716
  %79 = getelementptr inbounds [1 x %struct.UpVal*]* %78, i32 0, i32 %76, !dbg !2716
  %80 = load %struct.UpVal** %79, align 4, !dbg !2716
  %81 = load %struct.UpVal*** %6, align 4, !dbg !2716
  store %struct.UpVal* %80, %struct.UpVal** %81, align 4, !dbg !2716
  br label %82, !dbg !2716

; <label>:82                                      ; preds = %74, %62
  %83 = load i32* %3, align 4, !dbg !2718
  %84 = sub nsw i32 %83, 1, !dbg !2718
  %85 = load %struct.Proto** %p, align 4, !dbg !2718
  %86 = getelementptr inbounds %struct.Proto* %85, i32 0, i32 19, !dbg !2718
  %87 = load %struct.Upvaldesc** %86, align 4, !dbg !2718
  %88 = getelementptr inbounds %struct.Upvaldesc* %87, i32 %84, !dbg !2718
  %89 = getelementptr inbounds %struct.Upvaldesc* %88, i32 0, i32 0, !dbg !2718
  %90 = load %struct.TString** %89, align 4, !dbg !2718
  store %struct.TString* %90, %struct.TString** %name, align 4, !dbg !2718
  %91 = load %struct.TString** %name, align 4, !dbg !2719
  %92 = icmp eq %struct.TString* %91, null, !dbg !2719
  br i1 %92, label %93, label %94, !dbg !2719

; <label>:93                                      ; preds = %82
  br label %98, !dbg !2720

; <label>:94                                      ; preds = %82
  %95 = load %struct.TString** %name, align 4, !dbg !2722
  %96 = bitcast %struct.TString* %95 to i8*, !dbg !2722
  %97 = getelementptr inbounds i8* %96, i32 16, !dbg !2722
  br label %98, !dbg !2722

; <label>:98                                      ; preds = %94, %93
  %99 = phi i8* [ getelementptr inbounds ([11 x i8]* @.str2, i32 0, i32 0), %93 ], [ %97, %94 ], !dbg !2719
  store i8* %99, i8** %1, !dbg !2724
  br label %101, !dbg !2724

; <label>:100                                     ; preds = %0
  store i8* null, i8** %1, !dbg !2727
  br label %101, !dbg !2727

; <label>:101                                     ; preds = %100, %98, %61, %41, %28
  %102 = load i8** %1, !dbg !2728
  ret i8* %102, !dbg !2728
}

; Function Attrs: nounwind
define i8* @lua_setupvalue(%struct.lua_State* %L, i32 %funcindex, i32 %n) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %name = alloca i8*, align 4
  %val = alloca %struct.lua_TValue*, align 4
  %owner = alloca %struct.CClosure*, align 4
  %uv = alloca %struct.UpVal*, align 4
  %fi = alloca %struct.lua_TValue*, align 4
  %io1 = alloca %struct.lua_TValue*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !2729), !dbg !2730
  store i32 %funcindex, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !2731), !dbg !2732
  store i32 %n, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !2733), !dbg !2734
  call void @llvm.dbg.declare(metadata !{i8** %name}, metadata !2735), !dbg !2736
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %val}, metadata !2737), !dbg !2738
  store %struct.lua_TValue* null, %struct.lua_TValue** %val, align 4, !dbg !2739
  call void @llvm.dbg.declare(metadata !{%struct.CClosure** %owner}, metadata !2740), !dbg !2741
  store %struct.CClosure* null, %struct.CClosure** %owner, align 4, !dbg !2742
  call void @llvm.dbg.declare(metadata !{%struct.UpVal** %uv}, metadata !2743), !dbg !2744
  store %struct.UpVal* null, %struct.UpVal** %uv, align 4, !dbg !2745
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %fi}, metadata !2746), !dbg !2747
  %4 = load %struct.lua_State** %1, align 4, !dbg !2748
  %5 = load i32* %2, align 4, !dbg !2748
  %6 = call %struct.lua_TValue* @index2addr(%struct.lua_State* %4, i32 %5), !dbg !2748
  store %struct.lua_TValue* %6, %struct.lua_TValue** %fi, align 4, !dbg !2748
  %7 = load %struct.lua_TValue** %fi, align 4, !dbg !2749
  %8 = load i32* %3, align 4, !dbg !2749
  %9 = call i8* @aux_upvalue(%struct.lua_TValue* %7, i32 %8, %struct.lua_TValue** %val, %struct.CClosure** %owner, %struct.UpVal** %uv), !dbg !2749
  store i8* %9, i8** %name, align 4, !dbg !2749
  %10 = load i8** %name, align 4, !dbg !2750
  %11 = icmp ne i8* %10, null, !dbg !2750
  br i1 %11, label %12, label %93, !dbg !2750

; <label>:12                                      ; preds = %0
  %13 = load %struct.lua_State** %1, align 4, !dbg !2752
  %14 = getelementptr inbounds %struct.lua_State* %13, i32 0, i32 5, !dbg !2752
  %15 = load %struct.lua_TValue** %14, align 4, !dbg !2752
  %16 = getelementptr inbounds %struct.lua_TValue* %15, i32 -1, !dbg !2752
  store %struct.lua_TValue* %16, %struct.lua_TValue** %14, align 4, !dbg !2752
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %io1}, metadata !2754), !dbg !2756
  %17 = load %struct.lua_TValue** %val, align 4, !dbg !2756
  store %struct.lua_TValue* %17, %struct.lua_TValue** %io1, align 4, !dbg !2756
  %18 = load %struct.lua_TValue** %io1, align 4, !dbg !2756
  %19 = load %struct.lua_State** %1, align 4, !dbg !2756
  %20 = getelementptr inbounds %struct.lua_State* %19, i32 0, i32 5, !dbg !2756
  %21 = load %struct.lua_TValue** %20, align 4, !dbg !2756
  %22 = bitcast %struct.lua_TValue* %18 to i8*, !dbg !2756
  %23 = bitcast %struct.lua_TValue* %21 to i8*, !dbg !2756
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %22, i8* %23, i32 16, i32 8, i1 false), !dbg !2756
  %24 = load %struct.lua_State** %1, align 4, !dbg !2756
  %25 = load %struct.CClosure** %owner, align 4, !dbg !2757
  %26 = icmp ne %struct.CClosure* %25, null, !dbg !2757
  br i1 %26, label %27, label %67, !dbg !2757

; <label>:27                                      ; preds = %12
  %28 = load %struct.lua_State** %1, align 4, !dbg !2759
  %29 = getelementptr inbounds %struct.lua_State* %28, i32 0, i32 5, !dbg !2759
  %30 = load %struct.lua_TValue** %29, align 4, !dbg !2759
  %31 = getelementptr inbounds %struct.lua_TValue* %30, i32 0, i32 1, !dbg !2759
  %32 = load i32* %31, align 4, !dbg !2759
  %33 = and i32 %32, 64, !dbg !2759
  %34 = icmp ne i32 %33, 0, !dbg !2759
  br i1 %34, label %35, label %65, !dbg !2759

; <label>:35                                      ; preds = %27
  %36 = load %struct.CClosure** %owner, align 4, !dbg !2762
  %37 = getelementptr inbounds %struct.CClosure* %36, i32 0, i32 2, !dbg !2762
  %38 = load i8* %37, align 1, !dbg !2762
  %39 = zext i8 %38 to i32, !dbg !2762
  %40 = and i32 %39, 4, !dbg !2762
  %41 = icmp ne i32 %40, 0, !dbg !2762
  br i1 %41, label %42, label %65, !dbg !2762

; <label>:42                                      ; preds = %35
  %43 = load %struct.lua_State** %1, align 4, !dbg !2764
  %44 = getelementptr inbounds %struct.lua_State* %43, i32 0, i32 5, !dbg !2764
  %45 = load %struct.lua_TValue** %44, align 4, !dbg !2764
  %46 = getelementptr inbounds %struct.lua_TValue* %45, i32 0, i32 0, !dbg !2764
  %47 = bitcast %union.Value* %46 to %struct.GCObject**, !dbg !2764
  %48 = load %struct.GCObject** %47, align 4, !dbg !2764
  %49 = getelementptr inbounds %struct.GCObject* %48, i32 0, i32 2, !dbg !2764
  %50 = load i8* %49, align 1, !dbg !2764
  %51 = zext i8 %50 to i32, !dbg !2764
  %52 = and i32 %51, 3, !dbg !2764
  %53 = icmp ne i32 %52, 0, !dbg !2764
  br i1 %53, label %54, label %65, !dbg !2764

; <label>:54                                      ; preds = %42
  %55 = load %struct.lua_State** %1, align 4, !dbg !2766
  %56 = load %struct.CClosure** %owner, align 4, !dbg !2766
  %57 = bitcast %struct.CClosure* %56 to %union.GCUnion*, !dbg !2766
  %58 = bitcast %union.GCUnion* %57 to %struct.GCObject*, !dbg !2766
  %59 = load %struct.lua_State** %1, align 4, !dbg !2766
  %60 = getelementptr inbounds %struct.lua_State* %59, i32 0, i32 5, !dbg !2766
  %61 = load %struct.lua_TValue** %60, align 4, !dbg !2766
  %62 = getelementptr inbounds %struct.lua_TValue* %61, i32 0, i32 0, !dbg !2766
  %63 = bitcast %union.Value* %62 to %struct.GCObject**, !dbg !2766
  %64 = load %struct.GCObject** %63, align 4, !dbg !2766
  call void @luaC_barrier_(%struct.lua_State* %55, %struct.GCObject* %58, %struct.GCObject* %64), !dbg !2766
  br label %66, !dbg !2766

; <label>:65                                      ; preds = %42, %35, %27
  br label %66, !dbg !2768

; <label>:66                                      ; preds = %65, %54
  br label %92, !dbg !2772

; <label>:67                                      ; preds = %12
  %68 = load %struct.UpVal** %uv, align 4, !dbg !2775
  %69 = icmp ne %struct.UpVal* %68, null, !dbg !2775
  br i1 %69, label %70, label %91, !dbg !2775

; <label>:70                                      ; preds = %67
  %71 = load %struct.UpVal** %uv, align 4, !dbg !2777
  %72 = getelementptr inbounds %struct.UpVal* %71, i32 0, i32 0, !dbg !2777
  %73 = load %struct.lua_TValue** %72, align 4, !dbg !2777
  %74 = getelementptr inbounds %struct.lua_TValue* %73, i32 0, i32 1, !dbg !2777
  %75 = load i32* %74, align 4, !dbg !2777
  %76 = and i32 %75, 64, !dbg !2777
  %77 = icmp ne i32 %76, 0, !dbg !2777
  br i1 %77, label %78, label %89, !dbg !2777

; <label>:78                                      ; preds = %70
  %79 = load %struct.UpVal** %uv, align 4, !dbg !2780
  %80 = getelementptr inbounds %struct.UpVal* %79, i32 0, i32 0, !dbg !2780
  %81 = load %struct.lua_TValue** %80, align 4, !dbg !2780
  %82 = load %struct.UpVal** %uv, align 4, !dbg !2780
  %83 = getelementptr inbounds %struct.UpVal* %82, i32 0, i32 2, !dbg !2780
  %84 = bitcast %union.anon.3* %83 to %struct.lua_TValue*, !dbg !2780
  %85 = icmp ne %struct.lua_TValue* %81, %84, !dbg !2780
  br i1 %85, label %89, label %86, !dbg !2780

; <label>:86                                      ; preds = %78
  %87 = load %struct.lua_State** %1, align 4, !dbg !2782
  %88 = load %struct.UpVal** %uv, align 4, !dbg !2782
  call void @luaC_upvalbarrier_(%struct.lua_State* %87, %struct.UpVal* %88), !dbg !2782
  br label %90, !dbg !2782

; <label>:89                                      ; preds = %78, %70
  br label %90, !dbg !2784

; <label>:90                                      ; preds = %89, %86
  br label %91, !dbg !2787

; <label>:91                                      ; preds = %90, %67
  br label %92

; <label>:92                                      ; preds = %91, %66
  br label %93, !dbg !2790

; <label>:93                                      ; preds = %92, %0
  %94 = load i8** %name, align 4, !dbg !2791
  ret i8* %94, !dbg !2791
}

; Function Attrs: nounwind
define i8* @lua_upvalueid(%struct.lua_State* %L, i32 %fidx, i32 %n) #0 {
  %1 = alloca i8*, align 4
  %2 = alloca %struct.lua_State*, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %fi = alloca %struct.lua_TValue*, align 4
  %f = alloca %struct.CClosure*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %2}, metadata !2792), !dbg !2793
  store i32 %fidx, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !2794), !dbg !2795
  store i32 %n, i32* %4, align 4
  call void @llvm.dbg.declare(metadata !{i32* %4}, metadata !2796), !dbg !2797
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %fi}, metadata !2798), !dbg !2799
  %5 = load %struct.lua_State** %2, align 4, !dbg !2800
  %6 = load i32* %3, align 4, !dbg !2800
  %7 = call %struct.lua_TValue* @index2addr(%struct.lua_State* %5, i32 %6), !dbg !2800
  store %struct.lua_TValue* %7, %struct.lua_TValue** %fi, align 4, !dbg !2800
  %8 = load %struct.lua_TValue** %fi, align 4, !dbg !2801
  %9 = getelementptr inbounds %struct.lua_TValue* %8, i32 0, i32 1, !dbg !2801
  %10 = load i32* %9, align 4, !dbg !2801
  %11 = and i32 %10, 63, !dbg !2801
  switch i32 %11, label %33 [
    i32 6, label %12
    i32 38, label %19
  ], !dbg !2801

; <label>:12                                      ; preds = %0
  %13 = load %struct.lua_State** %2, align 4, !dbg !2802
  %14 = load i32* %3, align 4, !dbg !2802
  %15 = load i32* %4, align 4, !dbg !2802
  %16 = call %struct.UpVal** @getupvalref(%struct.lua_State* %13, i32 %14, i32 %15, %struct.LClosure** null), !dbg !2802
  %17 = load %struct.UpVal** %16, align 4, !dbg !2802
  %18 = bitcast %struct.UpVal* %17 to i8*, !dbg !2802
  store i8* %18, i8** %1, !dbg !2802
  br label %34, !dbg !2802

; <label>:19                                      ; preds = %0
  call void @llvm.dbg.declare(metadata !{%struct.CClosure** %f}, metadata !2805), !dbg !2807
  %20 = load %struct.lua_TValue** %fi, align 4, !dbg !2808
  %21 = getelementptr inbounds %struct.lua_TValue* %20, i32 0, i32 0, !dbg !2808
  %22 = bitcast %union.Value* %21 to %struct.GCObject**, !dbg !2808
  %23 = load %struct.GCObject** %22, align 4, !dbg !2808
  %24 = bitcast %struct.GCObject* %23 to %union.GCUnion*, !dbg !2808
  %25 = bitcast %union.GCUnion* %24 to %union.Closure*, !dbg !2808
  %26 = bitcast %union.Closure* %25 to %struct.CClosure*, !dbg !2808
  store %struct.CClosure* %26, %struct.CClosure** %f, align 4, !dbg !2808
  %27 = load i32* %4, align 4, !dbg !2809
  %28 = sub nsw i32 %27, 1, !dbg !2809
  %29 = load %struct.CClosure** %f, align 4, !dbg !2809
  %30 = getelementptr inbounds %struct.CClosure* %29, i32 0, i32 6, !dbg !2809
  %31 = getelementptr inbounds [1 x %struct.lua_TValue]* %30, i32 0, i32 %28, !dbg !2809
  %32 = bitcast %struct.lua_TValue* %31 to i8*, !dbg !2809
  store i8* %32, i8** %1, !dbg !2809
  br label %34, !dbg !2809

; <label>:33                                      ; preds = %0
  store i8* null, i8** %1, !dbg !2810
  br label %34, !dbg !2810

; <label>:34                                      ; preds = %33, %19, %12
  %35 = load i8** %1, !dbg !2812
  ret i8* %35, !dbg !2812
}

; Function Attrs: nounwind
define internal %struct.UpVal** @getupvalref(%struct.lua_State* %L, i32 %fidx, i32 %n, %struct.LClosure** %pf) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.LClosure**, align 4
  %f = alloca %struct.LClosure*, align 4
  %fi = alloca %struct.lua_TValue*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !2813), !dbg !2814
  store i32 %fidx, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !2815), !dbg !2816
  store i32 %n, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !2817), !dbg !2818
  store %struct.LClosure** %pf, %struct.LClosure*** %4, align 4
  call void @llvm.dbg.declare(metadata !{%struct.LClosure*** %4}, metadata !2819), !dbg !2820
  call void @llvm.dbg.declare(metadata !{%struct.LClosure** %f}, metadata !2821), !dbg !2822
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %fi}, metadata !2823), !dbg !2824
  %5 = load %struct.lua_State** %1, align 4, !dbg !2825
  %6 = load i32* %2, align 4, !dbg !2825
  %7 = call %struct.lua_TValue* @index2addr(%struct.lua_State* %5, i32 %6), !dbg !2825
  store %struct.lua_TValue* %7, %struct.lua_TValue** %fi, align 4, !dbg !2825
  %8 = load %struct.lua_TValue** %fi, align 4, !dbg !2826
  %9 = getelementptr inbounds %struct.lua_TValue* %8, i32 0, i32 0, !dbg !2826
  %10 = bitcast %union.Value* %9 to %struct.GCObject**, !dbg !2826
  %11 = load %struct.GCObject** %10, align 4, !dbg !2826
  %12 = bitcast %struct.GCObject* %11 to %union.GCUnion*, !dbg !2826
  %13 = bitcast %union.GCUnion* %12 to %union.Closure*, !dbg !2826
  %14 = bitcast %union.Closure* %13 to %struct.LClosure*, !dbg !2826
  store %struct.LClosure* %14, %struct.LClosure** %f, align 4, !dbg !2826
  %15 = load %struct.LClosure*** %4, align 4, !dbg !2827
  %16 = icmp ne %struct.LClosure** %15, null, !dbg !2827
  br i1 %16, label %17, label %20, !dbg !2827

; <label>:17                                      ; preds = %0
  %18 = load %struct.LClosure** %f, align 4, !dbg !2829
  %19 = load %struct.LClosure*** %4, align 4, !dbg !2829
  store %struct.LClosure* %18, %struct.LClosure** %19, align 4, !dbg !2829
  br label %20, !dbg !2829

; <label>:20                                      ; preds = %17, %0
  %21 = load i32* %3, align 4, !dbg !2831
  %22 = sub nsw i32 %21, 1, !dbg !2831
  %23 = load %struct.LClosure** %f, align 4, !dbg !2831
  %24 = getelementptr inbounds %struct.LClosure* %23, i32 0, i32 6, !dbg !2831
  %25 = getelementptr inbounds [1 x %struct.UpVal*]* %24, i32 0, i32 %22, !dbg !2831
  ret %struct.UpVal** %25, !dbg !2831
}

; Function Attrs: nounwind
define void @lua_upvaluejoin(%struct.lua_State* %L, i32 %fidx1, i32 %n1, i32 %fidx2, i32 %n2) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %f1 = alloca %struct.LClosure*, align 4
  %up1 = alloca %struct.UpVal**, align 4
  %up2 = alloca %struct.UpVal**, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !2832), !dbg !2833
  store i32 %fidx1, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !2834), !dbg !2835
  store i32 %n1, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !2836), !dbg !2837
  store i32 %fidx2, i32* %4, align 4
  call void @llvm.dbg.declare(metadata !{i32* %4}, metadata !2838), !dbg !2839
  store i32 %n2, i32* %5, align 4
  call void @llvm.dbg.declare(metadata !{i32* %5}, metadata !2840), !dbg !2841
  call void @llvm.dbg.declare(metadata !{%struct.LClosure** %f1}, metadata !2842), !dbg !2843
  call void @llvm.dbg.declare(metadata !{%struct.UpVal*** %up1}, metadata !2844), !dbg !2845
  %6 = load %struct.lua_State** %1, align 4, !dbg !2846
  %7 = load i32* %2, align 4, !dbg !2846
  %8 = load i32* %3, align 4, !dbg !2846
  %9 = call %struct.UpVal** @getupvalref(%struct.lua_State* %6, i32 %7, i32 %8, %struct.LClosure** %f1), !dbg !2846
  store %struct.UpVal** %9, %struct.UpVal*** %up1, align 4, !dbg !2846
  call void @llvm.dbg.declare(metadata !{%struct.UpVal*** %up2}, metadata !2847), !dbg !2848
  %10 = load %struct.lua_State** %1, align 4, !dbg !2849
  %11 = load i32* %4, align 4, !dbg !2849
  %12 = load i32* %5, align 4, !dbg !2849
  %13 = call %struct.UpVal** @getupvalref(%struct.lua_State* %10, i32 %11, i32 %12, %struct.LClosure** null), !dbg !2849
  store %struct.UpVal** %13, %struct.UpVal*** %up2, align 4, !dbg !2849
  %14 = load %struct.lua_State** %1, align 4, !dbg !2850
  %15 = load %struct.UpVal*** %up1, align 4, !dbg !2850
  %16 = load %struct.UpVal** %15, align 4, !dbg !2850
  call void @luaC_upvdeccount(%struct.lua_State* %14, %struct.UpVal* %16), !dbg !2850
  %17 = load %struct.UpVal*** %up2, align 4, !dbg !2851
  %18 = load %struct.UpVal** %17, align 4, !dbg !2851
  %19 = load %struct.UpVal*** %up1, align 4, !dbg !2851
  store %struct.UpVal* %18, %struct.UpVal** %19, align 4, !dbg !2851
  %20 = load %struct.UpVal*** %up1, align 4, !dbg !2852
  %21 = load %struct.UpVal** %20, align 4, !dbg !2852
  %22 = getelementptr inbounds %struct.UpVal* %21, i32 0, i32 1, !dbg !2852
  %23 = load i32* %22, align 4, !dbg !2852
  %24 = add i32 %23, 1, !dbg !2852
  store i32 %24, i32* %22, align 4, !dbg !2852
  %25 = load %struct.UpVal*** %up1, align 4, !dbg !2853
  %26 = load %struct.UpVal** %25, align 4, !dbg !2853
  %27 = getelementptr inbounds %struct.UpVal* %26, i32 0, i32 0, !dbg !2853
  %28 = load %struct.lua_TValue** %27, align 4, !dbg !2853
  %29 = load %struct.UpVal*** %up1, align 4, !dbg !2853
  %30 = load %struct.UpVal** %29, align 4, !dbg !2853
  %31 = getelementptr inbounds %struct.UpVal* %30, i32 0, i32 2, !dbg !2853
  %32 = bitcast %union.anon.3* %31 to %struct.lua_TValue*, !dbg !2853
  %33 = icmp ne %struct.lua_TValue* %28, %32, !dbg !2853
  br i1 %33, label %34, label %40, !dbg !2853

; <label>:34                                      ; preds = %0
  %35 = load %struct.UpVal*** %up1, align 4, !dbg !2855
  %36 = load %struct.UpVal** %35, align 4, !dbg !2855
  %37 = getelementptr inbounds %struct.UpVal* %36, i32 0, i32 2, !dbg !2855
  %38 = bitcast %union.anon.3* %37 to %struct.anon.4*, !dbg !2855
  %39 = getelementptr inbounds %struct.anon.4* %38, i32 0, i32 1, !dbg !2855
  store i32 1, i32* %39, align 4, !dbg !2855
  br label %40, !dbg !2855

; <label>:40                                      ; preds = %34, %0
  %41 = load %struct.UpVal*** %up1, align 4, !dbg !2857
  %42 = load %struct.UpVal** %41, align 4, !dbg !2857
  %43 = getelementptr inbounds %struct.UpVal* %42, i32 0, i32 0, !dbg !2857
  %44 = load %struct.lua_TValue** %43, align 4, !dbg !2857
  %45 = getelementptr inbounds %struct.lua_TValue* %44, i32 0, i32 1, !dbg !2857
  %46 = load i32* %45, align 4, !dbg !2857
  %47 = and i32 %46, 64, !dbg !2857
  %48 = icmp ne i32 %47, 0, !dbg !2857
  br i1 %48, label %49, label %63, !dbg !2857

; <label>:49                                      ; preds = %40
  %50 = load %struct.UpVal*** %up1, align 4, !dbg !2858
  %51 = load %struct.UpVal** %50, align 4, !dbg !2858
  %52 = getelementptr inbounds %struct.UpVal* %51, i32 0, i32 0, !dbg !2858
  %53 = load %struct.lua_TValue** %52, align 4, !dbg !2858
  %54 = load %struct.UpVal*** %up1, align 4, !dbg !2858
  %55 = load %struct.UpVal** %54, align 4, !dbg !2858
  %56 = getelementptr inbounds %struct.UpVal* %55, i32 0, i32 2, !dbg !2858
  %57 = bitcast %union.anon.3* %56 to %struct.lua_TValue*, !dbg !2858
  %58 = icmp ne %struct.lua_TValue* %53, %57, !dbg !2858
  br i1 %58, label %63, label %59, !dbg !2858

; <label>:59                                      ; preds = %49
  %60 = load %struct.lua_State** %1, align 4, !dbg !2860
  %61 = load %struct.UpVal*** %up1, align 4, !dbg !2860
  %62 = load %struct.UpVal** %61, align 4, !dbg !2860
  call void @luaC_upvalbarrier_(%struct.lua_State* %60, %struct.UpVal* %62), !dbg !2860
  br label %64, !dbg !2860

; <label>:63                                      ; preds = %49, %40
  br label %64, !dbg !2862

; <label>:64                                      ; preds = %63, %59
  ret void, !dbg !2865
}

declare hidden void @luaC_upvdeccount(%struct.lua_State*, %struct.UpVal*) #2

declare hidden %struct.lua_TValue* @luaH_getstr(%struct.Table*, %struct.TString*) #2

declare hidden void @luaD_growstack(%struct.lua_State*, i32) #2

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { noreturn "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn }

!llvm.dbg.cu = !{!0}
!xidane.fname = !{!567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !799, !800, !801, !802, !803, !804, !805, !806, !807, !808, !809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822}
!xidane.function_declaration_type = !{!567, !823, !569, !824, !571, !825, !573, !826, !575, !827, !577, !828, !579, !823, !581, !829, !583, !830, !585, !831, !587, !832, !589, !833, !591, !831, !593, !834, !595, !830, !597, !823, !599, !835, !601, !823, !603, !823, !605, !823, !607, !836, !609, !823, !611, !823, !613, !837, !615, !838, !617, !830, !619, !839, !621, !840, !623, !838, !625, !838, !627, !841, !629, !842, !631, !843, !633, !844, !635, !845, !637, !823, !639, !846, !641, !847, !643, !848, !645, !849, !647, !850, !649, !851, !651, !852, !653, !853, !655, !854, !657, !848, !659, !855, !661, !856, !663, !857, !665, !858, !667, !859, !669, !860, !671, !861, !673, !861, !675, !860, !677, !862, !679, !863, !681, !830, !683, !825, !685, !829, !687, !864, !689, !865, !691, !866, !693, !823, !695, !867, !697, !868, !699, !869, !701, !870, !703, !823, !705, !870, !707, !871, !709, !831, !711, !872, !713, !873, !715, !823, !717, !823, !719, !874, !721, !875, !723, !830, !725, !876, !727, !868, !729, !877, !731, !878, !733, !830, !735, !879, !737, !878, !739, !880, !741, !881, !743, !823, !745, !882, !747, !830, !749, !883, !751, !884, !753, !884, !755, !885, !757, !886, !759, !825, !761, !887, !763, !888, !765, !889, !767, !890, !769, !891, !771, !892, !773, !829, !775, !837, !777, !893, !779, !830, !781, !829, !783, !848, !785, !823, !787, !894, !789, !830, !791, !830, !793, !830, !795, !895, !797, !896, !799, !897, !801, !898, !803, !899, !805, !900, !807, !901, !809, !900, !811, !902, !813, !903, !815, !904, !817, !890, !819, !905, !821, !830}
!xidane.function_declaration_filename = !{!567, !906, !569, !907, !571, !908, !573, !906, !575, !906, !577, !906, !579, !906, !581, !906, !583, !906, !585, !906, !587, !908, !589, !908, !591, !906, !593, !909, !595, !906, !597, !906, !599, !906, !601, !906, !603, !906, !605, !906, !607, !910, !609, !906, !611, !906, !613, !906, !615, !910, !617, !906, !619, !911, !621, !906, !623, !910, !625, !910, !627, !906, !629, !911, !631, !906, !633, !906, !635, !910, !637, !906, !639, !906, !641, !911, !643, !909, !645, !906, !647, !912, !649, !906, !651, !906, !653, !906, !655, !906, !657, !906, !659, !906, !661, !906, !663, !906, !665, !913, !667, !913, !669, !906, !671, !906, !673, !911, !675, !906, !677, !906, !679, !914, !681, !906, !683, !906, !685, !906, !687, !906, !689, !908, !691, !912, !693, !906, !695, !912, !697, !910, !699, !906, !701, !906, !703, !906, !705, !906, !707, !906, !709, !906, !711, !912, !713, !912, !715, !906, !717, !906, !719, !906, !721, !908, !723, !906, !725, !909, !727, !910, !729, !906, !731, !906, !733, !906, !735, !912, !737, !906, !739, !912, !741, !906, !743, !906, !745, !909, !747, !906, !749, !906, !751, !907, !753, !907, !755, !906, !757, !907, !759, !908, !761, !906, !763, !915, !765, !907, !767, !909, !769, !906, !771, !916, !773, !906, !775, !906, !777, !917, !779, !909, !781, !906, !783, !918, !785, !906, !787, !912, !789, !906, !791, !910, !793, !906, !795, !910, !797, !906, !799, !906, !801, !906, !803, !913, !805, !906, !807, !908, !809, !906, !811, !906, !813, !908, !815, !906, !817, !909, !819, !912, !821, !907}
!xidane.ExternC = !{!567, !569, !573, !575, !577, !579, !581, !583, !585, !591, !593, !595, !597, !599, !601, !603, !605, !607, !609, !611, !613, !615, !617, !619, !621, !623, !625, !627, !629, !631, !633, !635, !637, !639, !641, !643, !645, !647, !649, !651, !653, !655, !657, !659, !661, !663, !665, !667, !669, !671, !673, !675, !677, !679, !681, !683, !685, !687, !691, !693, !695, !697, !699, !701, !703, !705, !707, !709, !711, !713, !715, !717, !719, !723, !725, !727, !729, !731, !733, !735, !737, !739, !741, !743, !745, !747, !749, !751, !753, !755, !757, !761, !763, !765, !767, !769, !771, !773, !775, !777, !779, !781, !783, !785, !787, !789, !791, !793, !795, !797, !799, !801, !803, !805, !809, !811, !815, !817, !819, !821}
!llvm.module.flags = !{!919, !920, !921, !922}
!llvm.ident = !{!923}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.0 (tags/RELEASE_350/final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !561, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src\lapi.c] [DW_LANG_C99]
!1 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src\5Clapi.c", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!2 = metadata !{}
!3 = metadata !{metadata !4, metadata !281, metadata !284, metadata !287, metadata !290, metadata !291, metadata !292, metadata !295, metadata !298, metadata !299, metadata !300, metadata !301, metadata !304, metadata !305, metadata !306, metadata !307, metadata !308, metadata !309, metadata !312, metadata !313, metadata !316, metadata !319, metadata !323, metadata !326, metadata !327, metadata !331, metadata !334, metadata !337, metadata !340, metadata !343, metadata !348, metadata !351, metadata !354, metadata !357, metadata !360, metadata !363, metadata !373, metadata !377, metadata !380, metadata !381, metadata !384, metadata !385, metadata !388, metadata !389, metadata !392, metadata !395, metadata !396, metadata !397, metadata !400, metadata !401, metadata !402, metadata !403, metadata !406, metadata !407, metadata !410, metadata !413, metadata !414, metadata !415, metadata !418, metadata !419, metadata !420, metadata !423, metadata !426, metadata !433, metadata !440, metadata !441, metadata !442, metadata !443, metadata !444, metadata !445, metadata !446, metadata !450, metadata !453, metadata !456, metadata !459, metadata !460, metadata !463, metadata !466, metadata !528, metadata !545, metadata !546, metadata !551, metadata !554, metadata !557, metadata !560}
!4 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"lua_checkstack", metadata !"lua_checkstack", metadata !"", i32 97, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*, i32)* @lua_checkstack, null, null, metadata !2, i32 97} ; [ DW_TAG_subprogram ] [line 97] [def] [lua_checkstack]
!5 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lapi.c", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!6 = metadata !{i32 786473, metadata !5}          ; [ DW_TAG_file_type ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!7 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!8 = metadata !{metadata !9, metadata !10, metadata !9}
!9 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!10 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !11} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from lua_State]
!11 = metadata !{i32 786454, metadata !12, null, metadata !"lua_State", i32 56, i64 0, i64 0, i64 0, i32 0, metadata !13} ; [ DW_TAG_typedef ] [lua_State] [line 56, size 0, align 0, offset 0] [from lua_State]
!12 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lua.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!13 = metadata !{i32 786451, metadata !14, null, metadata !"lua_State", i32 159, i64 960, i64 32, i32 0, i32 0, null, metadata !15, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [lua_State] [line 159, size 960, align 32, offset 0] [def] [from ]
!14 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lstate.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!15 = metadata !{metadata !16, metadata !28, metadata !29, metadata !30, metadata !32, metadata !33, metadata !59, metadata !175, metadata !213, metadata !214, metadata !215, metadata !216, metadata !233, metadata !234, metadata !235, metadata !238, metadata !239, metadata !269, metadata !270, metadata !271, metadata !272, metadata !273, metadata !274, metadata !275, metadata !280}
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
!219 = metadata !{i32 786451, metadata !220, null, metadata !"UpVal", i32 35, i64 192, i64 64, i32 0, i32 0, null, metadata !221, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [UpVal] [line 35, size 192, align 64, offset 0] [def] [from ]
!220 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lfunc.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!221 = metadata !{metadata !222, metadata !223, metadata !224}
!222 = metadata !{i32 786445, metadata !220, metadata !219, metadata !"v", i32 36, i64 32, i64 32, i64 0, i32 0, metadata !35} ; [ DW_TAG_member ] [v] [line 36, size 32, align 32, offset 0] [from ]
!223 = metadata !{i32 786445, metadata !220, metadata !219, metadata !"refcount", i32 37, i64 32, i64 32, i64 32, i32 0, metadata !78} ; [ DW_TAG_member ] [refcount] [line 37, size 32, align 32, offset 32] [from lu_mem]
!224 = metadata !{i32 786445, metadata !220, metadata !219, metadata !"u", i32 44, i64 128, i64 64, i64 64, i32 0, metadata !225} ; [ DW_TAG_member ] [u] [line 44, size 128, align 64, offset 64] [from ]
!225 = metadata !{i32 786455, metadata !220, metadata !219, metadata !"", i32 38, i64 128, i64 64, i64 0, i32 0, null, metadata !226, i32 0, null, null, null} ; [ DW_TAG_union_type ] [line 38, size 128, align 64, offset 0] [def] [from ]
!226 = metadata !{metadata !227, metadata !232}
!227 = metadata !{i32 786445, metadata !220, metadata !225, metadata !"open", i32 42, i64 64, i64 32, i64 0, i32 0, metadata !228} ; [ DW_TAG_member ] [open] [line 42, size 64, align 32, offset 0] [from ]
!228 = metadata !{i32 786451, metadata !220, metadata !225, metadata !"", i32 39, i64 64, i64 32, i32 0, i32 0, null, metadata !229, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 39, size 64, align 32, offset 0] [def] [from ]
!229 = metadata !{metadata !230, metadata !231}
!230 = metadata !{i32 786445, metadata !220, metadata !228, metadata !"next", i32 40, i64 32, i64 32, i64 0, i32 0, metadata !217} ; [ DW_TAG_member ] [next] [line 40, size 32, align 32, offset 0] [from ]
!231 = metadata !{i32 786445, metadata !220, metadata !228, metadata !"touched", i32 41, i64 32, i64 32, i64 32, i32 0, metadata !9} ; [ DW_TAG_member ] [touched] [line 41, size 32, align 32, offset 32] [from int]
!232 = metadata !{i32 786445, metadata !220, metadata !225, metadata !"value", i32 43, i64 128, i64 64, i64 0, i32 0, metadata !36} ; [ DW_TAG_member ] [value] [line 43, size 128, align 64, offset 0] [from TValue]
!233 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"gclist", i32 170, i64 32, i64 32, i64 320, i32 0, metadata !17} ; [ DW_TAG_member ] [gclist] [line 170, size 32, align 32, offset 320] [from ]
!234 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"twups", i32 171, i64 32, i64 32, i64 352, i32 0, metadata !122} ; [ DW_TAG_member ] [twups] [line 171, size 32, align 32, offset 352] [from ]
!235 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"errorJmp", i32 172, i64 32, i64 32, i64 384, i32 0, metadata !236} ; [ DW_TAG_member ] [errorJmp] [line 172, size 32, align 32, offset 384] [from ]
!236 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !237} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from lua_longjmp]
!237 = metadata !{i32 786451, metadata !14, null, metadata !"lua_longjmp", i32 33, i64 0, i64 0, i32 0, i32 4, null, null, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [lua_longjmp] [line 33, size 0, align 0, offset 0] [decl] [from ]
!238 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"base_ci", i32 173, i64 288, i64 32, i64 416, i32 0, metadata !177} ; [ DW_TAG_member ] [base_ci] [line 173, size 288, align 32, offset 416] [from CallInfo]
!239 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"hook", i32 174, i64 32, i64 32, i64 704, i32 0, metadata !240} ; [ DW_TAG_member ] [hook] [line 174, size 32, align 32, offset 704] [from ]
!240 = metadata !{i32 786485, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !241} ; [ DW_TAG_volatile_type ] [line 0, size 0, align 0, offset 0] [from lua_Hook]
!241 = metadata !{i32 786454, metadata !12, null, metadata !"lua_Hook", i32 421, i64 0, i64 0, i64 0, i32 0, metadata !242} ; [ DW_TAG_typedef ] [lua_Hook] [line 421, size 0, align 0, offset 0] [from ]
!242 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !243} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!243 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !244, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!244 = metadata !{null, metadata !10, metadata !245}
!245 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !246} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from lua_Debug]
!246 = metadata !{i32 786454, metadata !12, null, metadata !"lua_Debug", i32 417, i64 0, i64 0, i64 0, i32 0, metadata !247} ; [ DW_TAG_typedef ] [lua_Debug] [line 417, size 0, align 0, offset 0] [from lua_Debug]
!247 = metadata !{i32 786451, metadata !12, null, metadata !"lua_Debug", i32 441, i64 800, i64 32, i32 0, i32 0, null, metadata !248, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [lua_Debug] [line 441, size 800, align 32, offset 0] [def] [from ]
!248 = metadata !{metadata !249, metadata !250, metadata !254, metadata !255, metadata !256, metadata !257, metadata !258, metadata !259, metadata !260, metadata !261, metadata !262, metadata !263, metadata !264, metadata !268}
!249 = metadata !{i32 786445, metadata !12, metadata !247, metadata !"event", i32 442, i64 32, i64 32, i64 0, i32 0, metadata !9} ; [ DW_TAG_member ] [event] [line 442, size 32, align 32, offset 0] [from int]
!250 = metadata !{i32 786445, metadata !12, metadata !247, metadata !"name", i32 443, i64 32, i64 32, i64 32, i32 0, metadata !251} ; [ DW_TAG_member ] [name] [line 443, size 32, align 32, offset 32] [from ]
!251 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !252} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!252 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !253} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!253 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!254 = metadata !{i32 786445, metadata !12, metadata !247, metadata !"namewhat", i32 444, i64 32, i64 32, i64 64, i32 0, metadata !251} ; [ DW_TAG_member ] [namewhat] [line 444, size 32, align 32, offset 64] [from ]
!255 = metadata !{i32 786445, metadata !12, metadata !247, metadata !"what", i32 445, i64 32, i64 32, i64 96, i32 0, metadata !251} ; [ DW_TAG_member ] [what] [line 445, size 32, align 32, offset 96] [from ]
!256 = metadata !{i32 786445, metadata !12, metadata !247, metadata !"source", i32 446, i64 32, i64 32, i64 128, i32 0, metadata !251} ; [ DW_TAG_member ] [source] [line 446, size 32, align 32, offset 128] [from ]
!257 = metadata !{i32 786445, metadata !12, metadata !247, metadata !"currentline", i32 447, i64 32, i64 32, i64 160, i32 0, metadata !9} ; [ DW_TAG_member ] [currentline] [line 447, size 32, align 32, offset 160] [from int]
!258 = metadata !{i32 786445, metadata !12, metadata !247, metadata !"linedefined", i32 448, i64 32, i64 32, i64 192, i32 0, metadata !9} ; [ DW_TAG_member ] [linedefined] [line 448, size 32, align 32, offset 192] [from int]
!259 = metadata !{i32 786445, metadata !12, metadata !247, metadata !"lastlinedefined", i32 449, i64 32, i64 32, i64 224, i32 0, metadata !9} ; [ DW_TAG_member ] [lastlinedefined] [line 449, size 32, align 32, offset 224] [from int]
!260 = metadata !{i32 786445, metadata !12, metadata !247, metadata !"nups", i32 450, i64 8, i64 8, i64 256, i32 0, metadata !26} ; [ DW_TAG_member ] [nups] [line 450, size 8, align 8, offset 256] [from unsigned char]
!261 = metadata !{i32 786445, metadata !12, metadata !247, metadata !"nparams", i32 451, i64 8, i64 8, i64 264, i32 0, metadata !26} ; [ DW_TAG_member ] [nparams] [line 451, size 8, align 8, offset 264] [from unsigned char]
!262 = metadata !{i32 786445, metadata !12, metadata !247, metadata !"isvararg", i32 452, i64 8, i64 8, i64 272, i32 0, metadata !253} ; [ DW_TAG_member ] [isvararg] [line 452, size 8, align 8, offset 272] [from char]
!263 = metadata !{i32 786445, metadata !12, metadata !247, metadata !"istailcall", i32 453, i64 8, i64 8, i64 280, i32 0, metadata !253} ; [ DW_TAG_member ] [istailcall] [line 453, size 8, align 8, offset 280] [from char]
!264 = metadata !{i32 786445, metadata !12, metadata !247, metadata !"short_src", i32 454, i64 480, i64 8, i64 288, i32 0, metadata !265} ; [ DW_TAG_member ] [short_src] [line 454, size 480, align 8, offset 288] [from ]
!265 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 480, i64 8, i32 0, i32 0, metadata !253, metadata !266, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 480, align 8, offset 0] [from char]
!266 = metadata !{metadata !267}
!267 = metadata !{i32 786465, i64 0, i64 60}      ; [ DW_TAG_subrange_type ] [0, 59]
!268 = metadata !{i32 786445, metadata !12, metadata !247, metadata !"i_ci", i32 456, i64 32, i64 32, i64 768, i32 0, metadata !183} ; [ DW_TAG_member ] [i_ci] [line 456, size 32, align 32, offset 768] [from ]
!269 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"errfunc", i32 175, i64 32, i64 32, i64 736, i32 0, metadata !75} ; [ DW_TAG_member ] [errfunc] [line 175, size 32, align 32, offset 736] [from ptrdiff_t]
!270 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"stacksize", i32 176, i64 32, i64 32, i64 768, i32 0, metadata !9} ; [ DW_TAG_member ] [stacksize] [line 176, size 32, align 32, offset 768] [from int]
!271 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"basehookcount", i32 177, i64 32, i64 32, i64 800, i32 0, metadata !9} ; [ DW_TAG_member ] [basehookcount] [line 177, size 32, align 32, offset 800] [from int]
!272 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"hookcount", i32 178, i64 32, i64 32, i64 832, i32 0, metadata !9} ; [ DW_TAG_member ] [hookcount] [line 178, size 32, align 32, offset 832] [from int]
!273 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"nny", i32 179, i64 16, i64 16, i64 864, i32 0, metadata !31} ; [ DW_TAG_member ] [nny] [line 179, size 16, align 16, offset 864] [from unsigned short]
!274 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"nCcalls", i32 180, i64 16, i64 16, i64 880, i32 0, metadata !31} ; [ DW_TAG_member ] [nCcalls] [line 180, size 16, align 16, offset 880] [from unsigned short]
!275 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"hookmask", i32 181, i64 32, i64 32, i64 896, i32 0, metadata !276} ; [ DW_TAG_member ] [hookmask] [line 181, size 32, align 32, offset 896] [from sig_atomic_t]
!276 = metadata !{i32 786454, metadata !277, null, metadata !"sig_atomic_t", i32 40, i64 0, i64 0, i64 0, i32 0, metadata !278} ; [ DW_TAG_typedef ] [sig_atomic_t] [line 40, size 0, align 0, offset 0] [from __sig_atomic_t]
!277 = metadata !{metadata !"D:/Xilinx/SDx/2016.3/SDK/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include\5Csignal.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!278 = metadata !{i32 786454, metadata !279, null, metadata !"__sig_atomic_t", i32 22, i64 0, i64 0, i64 0, i32 0, metadata !9} ; [ DW_TAG_typedef ] [__sig_atomic_t] [line 22, size 0, align 0, offset 0] [from int]
!279 = metadata !{metadata !"D:/Xilinx/SDx/2016.3/SDK/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include\5Cbits/sigset.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!280 = metadata !{i32 786445, metadata !14, metadata !13, metadata !"allowhook", i32 182, i64 8, i64 8, i64 928, i32 0, metadata !24} ; [ DW_TAG_member ] [allowhook] [line 182, size 8, align 8, offset 928] [from lu_byte]
!281 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"lua_xmove", metadata !"lua_xmove", metadata !"", i32 118, metadata !282, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.lua_State*, %struct.lua_State*, i32)* @lua_xmove, null, null, metadata !2, i32 118} ; [ DW_TAG_subprogram ] [line 118] [def] [lua_xmove]
!282 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !283, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!283 = metadata !{null, metadata !10, metadata !10, metadata !9}
!284 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"lua_atpanic", metadata !"lua_atpanic", metadata !"", i32 134, metadata !285, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* (%struct.lua_State*, i32 (%struct.lua_State*)*)* @lua_atpanic, null, null, metadata !2, i32 134} ; [ DW_TAG_subprogram ] [line 134] [def] [lua_atpanic]
!285 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !286, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!286 = metadata !{metadata !48, metadata !10, metadata !48}
!287 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"lua_version", metadata !"lua_version", metadata !"", i32 144, metadata !288, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, double* (%struct.lua_State*)* @lua_version, null, null, metadata !2, i32 144} ; [ DW_TAG_subprogram ] [line 144] [def] [lua_version]
!288 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !289, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!289 = metadata !{metadata !129, metadata !10}
!290 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"lua_absindex", metadata !"lua_absindex", metadata !"", i32 160, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*, i32)* @lua_absindex, null, null, metadata !2, i32 160} ; [ DW_TAG_subprogram ] [line 160] [def] [lua_absindex]
!291 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"lua_gettop", metadata !"lua_gettop", metadata !"", i32 167, metadata !50, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @lua_gettop, null, null, metadata !2, i32 167} ; [ DW_TAG_subprogram ] [line 167] [def] [lua_gettop]
!292 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"lua_settop", metadata !"lua_settop", metadata !"", i32 172, metadata !293, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.lua_State*, i32)* @lua_settop, null, null, metadata !2, i32 172} ; [ DW_TAG_subprogram ] [line 172] [def] [lua_settop]
!293 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !294, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!294 = metadata !{null, metadata !10, metadata !9}
!295 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"lua_rotate", metadata !"lua_rotate", metadata !"", i32 207, metadata !296, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.lua_State*, i32, i32)* @lua_rotate, null, null, metadata !2, i32 207} ; [ DW_TAG_subprogram ] [line 207] [def] [lua_rotate]
!296 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !297, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!297 = metadata !{null, metadata !10, metadata !9, metadata !9}
!298 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"lua_copy", metadata !"lua_copy", metadata !"", i32 222, metadata !296, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.lua_State*, i32, i32)* @lua_copy, null, null, metadata !2, i32 222} ; [ DW_TAG_subprogram ] [line 222] [def] [lua_copy]
!299 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"lua_pushvalue", metadata !"lua_pushvalue", metadata !"", i32 237, metadata !293, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.lua_State*, i32)* @lua_pushvalue, null, null, metadata !2, i32 237} ; [ DW_TAG_subprogram ] [line 237] [def] [lua_pushvalue]
!300 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"lua_type", metadata !"lua_type", metadata !"", i32 251, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*, i32)* @lua_type, null, null, metadata !2, i32 251} ; [ DW_TAG_subprogram ] [line 251] [def] [lua_type]
!301 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"lua_typename", metadata !"lua_typename", metadata !"", i32 257, metadata !302, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (%struct.lua_State*, i32)* @lua_typename, null, null, metadata !2, i32 257} ; [ DW_TAG_subprogram ] [line 257] [def] [lua_typename]
!302 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !303, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!303 = metadata !{metadata !251, metadata !10, metadata !9}
!304 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"lua_iscfunction", metadata !"lua_iscfunction", metadata !"", i32 264, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*, i32)* @lua_iscfunction, null, null, metadata !2, i32 264} ; [ DW_TAG_subprogram ] [line 264] [def] [lua_iscfunction]
!305 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"lua_isinteger", metadata !"lua_isinteger", metadata !"", i32 270, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*, i32)* @lua_isinteger, null, null, metadata !2, i32 270} ; [ DW_TAG_subprogram ] [line 270] [def] [lua_isinteger]
!306 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"lua_isnumber", metadata !"lua_isnumber", metadata !"", i32 276, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*, i32)* @lua_isnumber, null, null, metadata !2, i32 276} ; [ DW_TAG_subprogram ] [line 276] [def] [lua_isnumber]
!307 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"lua_isstring", metadata !"lua_isstring", metadata !"", i32 283, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*, i32)* @lua_isstring, null, null, metadata !2, i32 283} ; [ DW_TAG_subprogram ] [line 283] [def] [lua_isstring]
!308 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"lua_isuserdata", metadata !"lua_isuserdata", metadata !"", i32 289, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*, i32)* @lua_isuserdata, null, null, metadata !2, i32 289} ; [ DW_TAG_subprogram ] [line 289] [def] [lua_isuserdata]
!309 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"lua_rawequal", metadata !"lua_rawequal", metadata !"", i32 295, metadata !310, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*, i32, i32)* @lua_rawequal, null, null, metadata !2, i32 295} ; [ DW_TAG_subprogram ] [line 295] [def] [lua_rawequal]
!310 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !311, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!311 = metadata !{metadata !9, metadata !10, metadata !9, metadata !9}
!312 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"lua_arith", metadata !"lua_arith", metadata !"", i32 302, metadata !293, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.lua_State*, i32)* @lua_arith, null, null, metadata !2, i32 302} ; [ DW_TAG_subprogram ] [line 302] [def] [lua_arith]
!313 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"lua_compare", metadata !"lua_compare", metadata !"", i32 318, metadata !314, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*, i32, i32, i32)* @lua_compare, null, null, metadata !2, i32 318} ; [ DW_TAG_subprogram ] [line 318] [def] [lua_compare]
!314 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !315, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!315 = metadata !{metadata !9, metadata !10, metadata !9, metadata !9, metadata !9}
!316 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"lua_stringtonumber", metadata !"lua_stringtonumber", metadata !"", i32 337, metadata !317, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*, i8*)* @lua_stringtonumber, null, null, metadata !2, i32 337} ; [ DW_TAG_subprogram ] [line 337] [def] [lua_stringtonumber]
!317 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !318, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!318 = metadata !{metadata !69, metadata !10, metadata !251}
!319 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"lua_tonumberx", metadata !"lua_tonumberx", metadata !"", i32 345, metadata !320, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, double (%struct.lua_State*, i32, i32*)* @lua_tonumberx, null, null, metadata !2, i32 345} ; [ DW_TAG_subprogram ] [line 345] [def] [lua_tonumberx]
!320 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !321, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!321 = metadata !{metadata !56, metadata !10, metadata !9, metadata !322}
!322 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from int]
!323 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"lua_tointegerx", metadata !"lua_tointegerx", metadata !"", i32 356, metadata !324, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i64 (%struct.lua_State*, i32, i32*)* @lua_tointegerx, null, null, metadata !2, i32 356} ; [ DW_TAG_subprogram ] [line 356] [def] [lua_tointegerx]
!324 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !325, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!325 = metadata !{metadata !53, metadata !10, metadata !9, metadata !322}
!326 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"lua_toboolean", metadata !"lua_toboolean", metadata !"", i32 367, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*, i32)* @lua_toboolean, null, null, metadata !2, i32 367} ; [ DW_TAG_subprogram ] [line 367] [def] [lua_toboolean]
!327 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"lua_tolstring", metadata !"lua_tolstring", metadata !"", i32 373, metadata !328, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (%struct.lua_State*, i32, i32*)* @lua_tolstring, null, null, metadata !2, i32 373} ; [ DW_TAG_subprogram ] [line 373] [def] [lua_tolstring]
!328 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !329, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!329 = metadata !{metadata !251, metadata !10, metadata !9, metadata !330}
!330 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !69} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from size_t]
!331 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"lua_rawlen", metadata !"lua_rawlen", metadata !"", i32 392, metadata !332, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*, i32)* @lua_rawlen, null, null, metadata !2, i32 392} ; [ DW_TAG_subprogram ] [line 392] [def] [lua_rawlen]
!332 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !333, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!333 = metadata !{metadata !69, metadata !10, metadata !9}
!334 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"lua_tocfunction", metadata !"lua_tocfunction", metadata !"", i32 404, metadata !335, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* (%struct.lua_State*, i32)* @lua_tocfunction, null, null, metadata !2, i32 404} ; [ DW_TAG_subprogram ] [line 404] [def] [lua_tocfunction]
!335 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !336, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!336 = metadata !{metadata !48, metadata !10, metadata !9}
!337 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"lua_touserdata", metadata !"lua_touserdata", metadata !"", i32 413, metadata !338, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (%struct.lua_State*, i32)* @lua_touserdata, null, null, metadata !2, i32 413} ; [ DW_TAG_subprogram ] [line 413] [def] [lua_touserdata]
!338 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !339, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!339 = metadata !{metadata !45, metadata !10, metadata !9}
!340 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"lua_tothread", metadata !"lua_tothread", metadata !"", i32 423, metadata !341, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, %struct.lua_State* (%struct.lua_State*, i32)* @lua_tothread, null, null, metadata !2, i32 423} ; [ DW_TAG_subprogram ] [line 423] [def] [lua_tothread]
!341 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !342, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!342 = metadata !{metadata !10, metadata !10, metadata !9}
!343 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"lua_topointer", metadata !"lua_topointer", metadata !"", i32 429, metadata !344, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (%struct.lua_State*, i32)* @lua_topointer, null, null, metadata !2, i32 429} ; [ DW_TAG_subprogram ] [line 429] [def] [lua_topointer]
!344 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !345, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!345 = metadata !{metadata !346, metadata !10, metadata !9}
!346 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !347} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!347 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from ]
!348 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"lua_pushnil", metadata !"lua_pushnil", metadata !"", i32 450, metadata !349, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.lua_State*)* @lua_pushnil, null, null, metadata !2, i32 450} ; [ DW_TAG_subprogram ] [line 450] [def] [lua_pushnil]
!349 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !350, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!350 = metadata !{null, metadata !10}
!351 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"lua_pushnumber", metadata !"lua_pushnumber", metadata !"", i32 458, metadata !352, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.lua_State*, double)* @lua_pushnumber, null, null, metadata !2, i32 458} ; [ DW_TAG_subprogram ] [line 458] [def] [lua_pushnumber]
!352 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !353, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!353 = metadata !{null, metadata !10, metadata !56}
!354 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"lua_pushinteger", metadata !"lua_pushinteger", metadata !"", i32 466, metadata !355, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.lua_State*, i64)* @lua_pushinteger, null, null, metadata !2, i32 466} ; [ DW_TAG_subprogram ] [line 466] [def] [lua_pushinteger]
!355 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !356, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!356 = metadata !{null, metadata !10, metadata !53}
!357 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"lua_pushlstring", metadata !"lua_pushlstring", metadata !"", i32 479, metadata !358, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (%struct.lua_State*, i8*, i32)* @lua_pushlstring, null, null, metadata !2, i32 479} ; [ DW_TAG_subprogram ] [line 479] [def] [lua_pushlstring]
!358 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !359, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!359 = metadata !{metadata !251, metadata !10, metadata !251, metadata !69}
!360 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"lua_pushstring", metadata !"lua_pushstring", metadata !"", i32 491, metadata !361, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (%struct.lua_State*, i8*)* @lua_pushstring, null, null, metadata !2, i32 491} ; [ DW_TAG_subprogram ] [line 491] [def] [lua_pushstring]
!361 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !362, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!362 = metadata !{metadata !251, metadata !10, metadata !251}
!363 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"lua_pushvfstring", metadata !"lua_pushvfstring", metadata !"", i32 508, metadata !364, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (%struct.lua_State*, i8*, { [1 x i32] })* @lua_pushvfstring, null, null, metadata !2, i32 509} ; [ DW_TAG_subprogram ] [line 508] [def] [scope 509] [lua_pushvfstring]
!364 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !365, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!365 = metadata !{metadata !251, metadata !10, metadata !251, metadata !366}
!366 = metadata !{i32 786454, metadata !367, null, metadata !"va_list", i32 98, i64 0, i64 0, i64 0, i32 0, metadata !368} ; [ DW_TAG_typedef ] [va_list] [line 98, size 0, align 0, offset 0] [from __gnuc_va_list]
!367 = metadata !{metadata !"D:/Xilinx/SDx/2016.3/SDK/gnu/aarch32/nt/gcc-arm-linux-gnueabi/lib/gcc/arm-linux-gnueabihf/5.2.1/include\5Cstdarg.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!368 = metadata !{i32 786454, metadata !367, null, metadata !"__gnuc_va_list", i32 40, i64 0, i64 0, i64 0, i32 0, metadata !369} ; [ DW_TAG_typedef ] [__gnuc_va_list] [line 40, size 0, align 0, offset 0] [from __builtin_va_list]
!369 = metadata !{i32 786454, metadata !1, null, metadata !"__builtin_va_list", i32 505, i64 0, i64 0, i64 0, i32 0, metadata !370} ; [ DW_TAG_typedef ] [__builtin_va_list] [line 505, size 0, align 0, offset 0] [from __va_list]
!370 = metadata !{i32 786451, metadata !1, null, metadata !"__va_list", i32 505, i64 32, i64 32, i32 0, i32 0, null, metadata !371, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [__va_list] [line 505, size 32, align 32, offset 0] [def] [from ]
!371 = metadata !{metadata !372}
!372 = metadata !{i32 786445, metadata !1, metadata !370, metadata !"__ap", i32 505, i64 32, i64 32, i64 0, i32 0, metadata !45} ; [ DW_TAG_member ] [__ap] [line 505, size 32, align 32, offset 0] [from ]
!373 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"lua_pushfstring", metadata !"lua_pushfstring", metadata !"", i32 519, metadata !374, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (%struct.lua_State*, i8*, ...)* @lua_pushfstring, null, null, metadata !2, i32 519} ; [ DW_TAG_subprogram ] [line 519] [def] [lua_pushfstring]
!374 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !375, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!375 = metadata !{metadata !251, metadata !10, metadata !251, metadata !376}
!376 = metadata !{i32 786456}                     ; [ DW_TAG_unspecified_parameters ]
!377 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"lua_pushcclosure", metadata !"lua_pushcclosure", metadata !"", i32 532, metadata !378, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.lua_State*, i32 (%struct.lua_State*)*, i32)* @lua_pushcclosure, null, null, metadata !2, i32 532} ; [ DW_TAG_subprogram ] [line 532] [def] [lua_pushcclosure]
!378 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !379, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!379 = metadata !{null, metadata !10, metadata !48, metadata !9}
!380 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"lua_pushboolean", metadata !"lua_pushboolean", metadata !"", i32 556, metadata !293, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.lua_State*, i32)* @lua_pushboolean, null, null, metadata !2, i32 556} ; [ DW_TAG_subprogram ] [line 556] [def] [lua_pushboolean]
!381 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"lua_pushlightuserdata", metadata !"lua_pushlightuserdata", metadata !"", i32 564, metadata !382, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.lua_State*, i8*)* @lua_pushlightuserdata, null, null, metadata !2, i32 564} ; [ DW_TAG_subprogram ] [line 564] [def] [lua_pushlightuserdata]
!382 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !383, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!383 = metadata !{null, metadata !10, metadata !45}
!384 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"lua_pushthread", metadata !"lua_pushthread", metadata !"", i32 572, metadata !50, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @lua_pushthread, null, null, metadata !2, i32 572} ; [ DW_TAG_subprogram ] [line 572] [def] [lua_pushthread]
!385 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"lua_getglobal", metadata !"lua_getglobal", metadata !"", i32 604, metadata !386, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*, i8*)* @lua_getglobal, null, null, metadata !2, i32 604} ; [ DW_TAG_subprogram ] [line 604] [def] [lua_getglobal]
!386 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !387, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!387 = metadata !{metadata !9, metadata !10, metadata !251}
!388 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"lua_gettable", metadata !"lua_gettable", metadata !"", i32 611, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*, i32)* @lua_gettable, null, null, metadata !2, i32 611} ; [ DW_TAG_subprogram ] [line 611] [def] [lua_gettable]
!389 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"lua_getfield", metadata !"lua_getfield", metadata !"", i32 621, metadata !390, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*, i32, i8*)* @lua_getfield, null, null, metadata !2, i32 621} ; [ DW_TAG_subprogram ] [line 621] [def] [lua_getfield]
!390 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !391, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!391 = metadata !{metadata !9, metadata !10, metadata !9, metadata !251}
!392 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"lua_geti", metadata !"lua_geti", metadata !"", i32 627, metadata !393, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*, i32, i64)* @lua_geti, null, null, metadata !2, i32 627} ; [ DW_TAG_subprogram ] [line 627] [def] [lua_geti]
!393 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !394, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!394 = metadata !{metadata !9, metadata !10, metadata !9, metadata !53}
!395 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"lua_rawget", metadata !"lua_rawget", metadata !"", i32 646, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*, i32)* @lua_rawget, null, null, metadata !2, i32 646} ; [ DW_TAG_subprogram ] [line 646] [def] [lua_rawget]
!396 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"lua_rawgeti", metadata !"lua_rawgeti", metadata !"", i32 657, metadata !393, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*, i32, i64)* @lua_rawgeti, null, null, metadata !2, i32 657} ; [ DW_TAG_subprogram ] [line 657] [def] [lua_rawgeti]
!397 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"lua_rawgetp", metadata !"lua_rawgetp", metadata !"", i32 669, metadata !398, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*, i32, i8*)* @lua_rawgetp, null, null, metadata !2, i32 669} ; [ DW_TAG_subprogram ] [line 669] [def] [lua_rawgetp]
!398 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !399, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!399 = metadata !{metadata !9, metadata !10, metadata !9, metadata !346}
!400 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"lua_createtable", metadata !"lua_createtable", metadata !"", i32 683, metadata !296, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.lua_State*, i32, i32)* @lua_createtable, null, null, metadata !2, i32 683} ; [ DW_TAG_subprogram ] [line 683] [def] [lua_createtable]
!401 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"lua_getmetatable", metadata !"lua_getmetatable", metadata !"", i32 696, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*, i32)* @lua_getmetatable, null, null, metadata !2, i32 696} ; [ DW_TAG_subprogram ] [line 696] [def] [lua_getmetatable]
!402 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"lua_getuservalue", metadata !"lua_getuservalue", metadata !"", i32 723, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*, i32)* @lua_getuservalue, null, null, metadata !2, i32 723} ; [ DW_TAG_subprogram ] [line 723] [def] [lua_getuservalue]
!403 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"lua_setglobal", metadata !"lua_setglobal", metadata !"", i32 758, metadata !404, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.lua_State*, i8*)* @lua_setglobal, null, null, metadata !2, i32 758} ; [ DW_TAG_subprogram ] [line 758] [def] [lua_setglobal]
!404 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !405, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!405 = metadata !{null, metadata !10, metadata !251}
!406 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"lua_settable", metadata !"lua_settable", metadata !"", i32 765, metadata !293, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.lua_State*, i32)* @lua_settable, null, null, metadata !2, i32 765} ; [ DW_TAG_subprogram ] [line 765] [def] [lua_settable]
!407 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"lua_setfield", metadata !"lua_setfield", metadata !"", i32 776, metadata !408, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.lua_State*, i32, i8*)* @lua_setfield, null, null, metadata !2, i32 776} ; [ DW_TAG_subprogram ] [line 776] [def] [lua_setfield]
!408 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !409, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!409 = metadata !{null, metadata !10, metadata !9, metadata !251}
!410 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"lua_seti", metadata !"lua_seti", metadata !"", i32 782, metadata !411, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.lua_State*, i32, i64)* @lua_seti, null, null, metadata !2, i32 782} ; [ DW_TAG_subprogram ] [line 782] [def] [lua_seti]
!411 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !412, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!412 = metadata !{null, metadata !10, metadata !9, metadata !53}
!413 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"lua_rawset", metadata !"lua_rawset", metadata !"", i32 800, metadata !293, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.lua_State*, i32)* @lua_rawset, null, null, metadata !2, i32 800} ; [ DW_TAG_subprogram ] [line 800] [def] [lua_rawset]
!414 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"lua_rawseti", metadata !"lua_rawseti", metadata !"", i32 816, metadata !411, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.lua_State*, i32, i64)* @lua_rawseti, null, null, metadata !2, i32 816} ; [ DW_TAG_subprogram ] [line 816] [def] [lua_rawseti]
!415 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"lua_rawsetp", metadata !"lua_rawsetp", metadata !"", i32 829, metadata !416, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.lua_State*, i32, i8*)* @lua_rawsetp, null, null, metadata !2, i32 829} ; [ DW_TAG_subprogram ] [line 829] [def] [lua_rawsetp]
!416 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !417, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!417 = metadata !{null, metadata !10, metadata !9, metadata !346}
!418 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"lua_setmetatable", metadata !"lua_setmetatable", metadata !"", i32 845, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*, i32)* @lua_setmetatable, null, null, metadata !2, i32 845} ; [ DW_TAG_subprogram ] [line 845] [def] [lua_setmetatable]
!419 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"lua_setuservalue", metadata !"lua_setuservalue", metadata !"", i32 885, metadata !293, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.lua_State*, i32)* @lua_setuservalue, null, null, metadata !2, i32 885} ; [ DW_TAG_subprogram ] [line 885] [def] [lua_setuservalue]
!420 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"lua_callk", metadata !"lua_callk", metadata !"", i32 908, metadata !421, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.lua_State*, i32, i32, i32, i32 (%struct.lua_State*, i32, i32)*)* @lua_callk, null, null, metadata !2, i32 909} ; [ DW_TAG_subprogram ] [line 908] [def] [scope 909] [lua_callk]
!421 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !422, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!422 = metadata !{null, metadata !10, metadata !9, metadata !9, metadata !204, metadata !200}
!423 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"lua_pcallk", metadata !"lua_pcallk", metadata !"", i32 947, metadata !424, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*, i32, i32, i32, i32, i32 (%struct.lua_State*, i32, i32)*)* @lua_pcallk, null, null, metadata !2, i32 948} ; [ DW_TAG_subprogram ] [line 947] [def] [scope 948] [lua_pcallk]
!424 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !425, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!425 = metadata !{metadata !9, metadata !10, metadata !9, metadata !9, metadata !9, metadata !204, metadata !200}
!426 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"lua_load", metadata !"lua_load", metadata !"", i32 991, metadata !427, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*, i8* (%struct.lua_State*, i8*, i32*)*, i8*, i8*, i8*)* @lua_load, null, null, metadata !2, i32 992} ; [ DW_TAG_subprogram ] [line 991] [def] [scope 992] [lua_load]
!427 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !428, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!428 = metadata !{metadata !9, metadata !10, metadata !429, metadata !45, metadata !251, metadata !251}
!429 = metadata !{i32 786454, metadata !12, null, metadata !"lua_Reader", i32 116, i64 0, i64 0, i64 0, i32 0, metadata !430} ; [ DW_TAG_typedef ] [lua_Reader] [line 116, size 0, align 0, offset 0] [from ]
!430 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !431} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!431 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !432, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!432 = metadata !{metadata !251, metadata !10, metadata !45, metadata !330}
!433 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"lua_dump", metadata !"lua_dump", metadata !"", i32 1015, metadata !434, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*, i32 (%struct.lua_State*, i8*, i32, i8*)*, i8*, i32)* @lua_dump, null, null, metadata !2, i32 1015} ; [ DW_TAG_subprogram ] [line 1015] [def] [lua_dump]
!434 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !435, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!435 = metadata !{metadata !9, metadata !10, metadata !436, metadata !45, metadata !9}
!436 = metadata !{i32 786454, metadata !12, null, metadata !"lua_Writer", i32 118, i64 0, i64 0, i64 0, i32 0, metadata !437} ; [ DW_TAG_typedef ] [lua_Writer] [line 118, size 0, align 0, offset 0] [from ]
!437 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !438} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!438 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !439, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!439 = metadata !{metadata !9, metadata !10, metadata !346, metadata !69, metadata !45}
!440 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"lua_status", metadata !"lua_status", metadata !"", i32 1030, metadata !50, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @lua_status, null, null, metadata !2, i32 1030} ; [ DW_TAG_subprogram ] [line 1030] [def] [lua_status]
!441 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"lua_gc", metadata !"lua_gc", metadata !"", i32 1039, metadata !310, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*, i32, i32)* @lua_gc, null, null, metadata !2, i32 1039} ; [ DW_TAG_subprogram ] [line 1039] [def] [lua_gc]
!442 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"lua_error", metadata !"lua_error", metadata !"", i32 1113, metadata !50, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @lua_error, null, null, metadata !2, i32 1113} ; [ DW_TAG_subprogram ] [line 1113] [def] [lua_error]
!443 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"lua_next", metadata !"lua_next", metadata !"", i32 1122, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*, i32)* @lua_next, null, null, metadata !2, i32 1122} ; [ DW_TAG_subprogram ] [line 1122] [def] [lua_next]
!444 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"lua_concat", metadata !"lua_concat", metadata !"", i32 1139, metadata !293, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.lua_State*, i32)* @lua_concat, null, null, metadata !2, i32 1139} ; [ DW_TAG_subprogram ] [line 1139] [def] [lua_concat]
!445 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"lua_len", metadata !"lua_len", metadata !"", i32 1155, metadata !293, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.lua_State*, i32)* @lua_len, null, null, metadata !2, i32 1155} ; [ DW_TAG_subprogram ] [line 1155] [def] [lua_len]
!446 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"lua_getallocf", metadata !"lua_getallocf", metadata !"", i32 1165, metadata !447, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (i8*, i8*, i32, i32)* (%struct.lua_State*, i8**)* @lua_getallocf, null, null, metadata !2, i32 1165} ; [ DW_TAG_subprogram ] [line 1165] [def] [lua_getallocf]
!447 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !448, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!448 = metadata !{metadata !65, metadata !10, metadata !449}
!449 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !45} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!450 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"lua_setallocf", metadata !"lua_setallocf", metadata !"", i32 1175, metadata !451, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.lua_State*, i8* (i8*, i8*, i32, i32)*, i8*)* @lua_setallocf, null, null, metadata !2, i32 1175} ; [ DW_TAG_subprogram ] [line 1175] [def] [lua_setallocf]
!451 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !452, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!452 = metadata !{null, metadata !10, metadata !65, metadata !45}
!453 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"lua_newuserdata", metadata !"lua_newuserdata", metadata !"", i32 1183, metadata !454, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (%struct.lua_State*, i32)* @lua_newuserdata, null, null, metadata !2, i32 1183} ; [ DW_TAG_subprogram ] [line 1183] [def] [lua_newuserdata]
!454 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !455, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!455 = metadata !{metadata !45, metadata !10, metadata !69}
!456 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"lua_getupvalue", metadata !"lua_getupvalue", metadata !"", i32 1221, metadata !457, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (%struct.lua_State*, i32, i32)* @lua_getupvalue, null, null, metadata !2, i32 1221} ; [ DW_TAG_subprogram ] [line 1221] [def] [lua_getupvalue]
!457 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !458, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!458 = metadata !{metadata !251, metadata !10, metadata !9, metadata !9}
!459 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"lua_setupvalue", metadata !"lua_setupvalue", metadata !"", i32 1235, metadata !457, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (%struct.lua_State*, i32, i32)* @lua_setupvalue, null, null, metadata !2, i32 1235} ; [ DW_TAG_subprogram ] [line 1235] [def] [lua_setupvalue]
!460 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"lua_upvalueid", metadata !"lua_upvalueid", metadata !"", i32 1267, metadata !461, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (%struct.lua_State*, i32, i32)* @lua_upvalueid, null, null, metadata !2, i32 1267} ; [ DW_TAG_subprogram ] [line 1267] [def] [lua_upvalueid]
!461 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !462, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!462 = metadata !{metadata !45, metadata !10, metadata !9, metadata !9}
!463 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"lua_upvaluejoin", metadata !"lua_upvaluejoin", metadata !"", i32 1286, metadata !464, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.lua_State*, i32, i32, i32, i32)* @lua_upvaluejoin, null, null, metadata !2, i32 1287} ; [ DW_TAG_subprogram ] [line 1286] [def] [scope 1287] [lua_upvaluejoin]
!464 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !465, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!465 = metadata !{null, metadata !10, metadata !9, metadata !9, metadata !9, metadata !9}
!466 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"getupvalref", metadata !"getupvalref", metadata !"", i32 1256, metadata !467, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, %struct.UpVal** (%struct.lua_State*, i32, i32, %struct.LClosure**)* @getupvalref, null, null, metadata !2, i32 1256} ; [ DW_TAG_subprogram ] [line 1256] [local] [def] [getupvalref]
!467 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !468, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!468 = metadata !{metadata !469, metadata !10, metadata !9, metadata !9, metadata !470}
!469 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !217} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!470 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !471} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!471 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !472} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from LClosure]
!472 = metadata !{i32 786454, metadata !19, null, metadata !"LClosure", i32 457, i64 0, i64 0, i64 0, i32 0, metadata !473} ; [ DW_TAG_typedef ] [LClosure] [line 457, size 0, align 0, offset 0] [from LClosure]
!473 = metadata !{i32 786451, metadata !19, null, metadata !"LClosure", i32 453, i64 160, i64 32, i32 0, i32 0, null, metadata !474, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [LClosure] [line 453, size 160, align 32, offset 0] [def] [from ]
!474 = metadata !{metadata !475, metadata !476, metadata !477, metadata !478, metadata !479, metadata !480, metadata !524}
!475 = metadata !{i32 786445, metadata !19, metadata !473, metadata !"next", i32 454, i64 32, i64 32, i64 0, i32 0, metadata !17} ; [ DW_TAG_member ] [next] [line 454, size 32, align 32, offset 0] [from ]
!476 = metadata !{i32 786445, metadata !19, metadata !473, metadata !"tt", i32 454, i64 8, i64 8, i64 32, i32 0, metadata !24} ; [ DW_TAG_member ] [tt] [line 454, size 8, align 8, offset 32] [from lu_byte]
!477 = metadata !{i32 786445, metadata !19, metadata !473, metadata !"marked", i32 454, i64 8, i64 8, i64 40, i32 0, metadata !24} ; [ DW_TAG_member ] [marked] [line 454, size 8, align 8, offset 40] [from lu_byte]
!478 = metadata !{i32 786445, metadata !19, metadata !473, metadata !"nupvalues", i32 454, i64 8, i64 8, i64 48, i32 0, metadata !24} ; [ DW_TAG_member ] [nupvalues] [line 454, size 8, align 8, offset 48] [from lu_byte]
!479 = metadata !{i32 786445, metadata !19, metadata !473, metadata !"gclist", i32 454, i64 32, i64 32, i64 64, i32 0, metadata !17} ; [ DW_TAG_member ] [gclist] [line 454, size 32, align 32, offset 64] [from ]
!480 = metadata !{i32 786445, metadata !19, metadata !473, metadata !"p", i32 455, i64 32, i64 32, i64 96, i32 0, metadata !481} ; [ DW_TAG_member ] [p] [line 455, size 32, align 32, offset 96] [from ]
!481 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !482} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from Proto]
!482 = metadata !{i32 786451, metadata !19, null, metadata !"Proto", i32 407, i64 640, i64 32, i32 0, i32 0, null, metadata !483, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [Proto] [line 407, size 640, align 32, offset 0] [def] [from ]
!483 = metadata !{metadata !484, metadata !485, metadata !486, metadata !487, metadata !488, metadata !489, metadata !490, metadata !491, metadata !492, metadata !493, metadata !494, metadata !495, metadata !496, metadata !497, metadata !498, metadata !499, metadata !501, metadata !503, metadata !504, metadata !512, metadata !520, metadata !522, metadata !523}
!484 = metadata !{i32 786445, metadata !19, metadata !482, metadata !"next", i32 408, i64 32, i64 32, i64 0, i32 0, metadata !17} ; [ DW_TAG_member ] [next] [line 408, size 32, align 32, offset 0] [from ]
!485 = metadata !{i32 786445, metadata !19, metadata !482, metadata !"tt", i32 408, i64 8, i64 8, i64 32, i32 0, metadata !24} ; [ DW_TAG_member ] [tt] [line 408, size 8, align 8, offset 32] [from lu_byte]
!486 = metadata !{i32 786445, metadata !19, metadata !482, metadata !"marked", i32 408, i64 8, i64 8, i64 40, i32 0, metadata !24} ; [ DW_TAG_member ] [marked] [line 408, size 8, align 8, offset 40] [from lu_byte]
!487 = metadata !{i32 786445, metadata !19, metadata !482, metadata !"numparams", i32 409, i64 8, i64 8, i64 48, i32 0, metadata !24} ; [ DW_TAG_member ] [numparams] [line 409, size 8, align 8, offset 48] [from lu_byte]
!488 = metadata !{i32 786445, metadata !19, metadata !482, metadata !"is_vararg", i32 410, i64 8, i64 8, i64 56, i32 0, metadata !24} ; [ DW_TAG_member ] [is_vararg] [line 410, size 8, align 8, offset 56] [from lu_byte]
!489 = metadata !{i32 786445, metadata !19, metadata !482, metadata !"maxstacksize", i32 411, i64 8, i64 8, i64 64, i32 0, metadata !24} ; [ DW_TAG_member ] [maxstacksize] [line 411, size 8, align 8, offset 64] [from lu_byte]
!490 = metadata !{i32 786445, metadata !19, metadata !482, metadata !"sizeupvalues", i32 412, i64 32, i64 32, i64 96, i32 0, metadata !9} ; [ DW_TAG_member ] [sizeupvalues] [line 412, size 32, align 32, offset 96] [from int]
!491 = metadata !{i32 786445, metadata !19, metadata !482, metadata !"sizek", i32 413, i64 32, i64 32, i64 128, i32 0, metadata !9} ; [ DW_TAG_member ] [sizek] [line 413, size 32, align 32, offset 128] [from int]
!492 = metadata !{i32 786445, metadata !19, metadata !482, metadata !"sizecode", i32 414, i64 32, i64 32, i64 160, i32 0, metadata !9} ; [ DW_TAG_member ] [sizecode] [line 414, size 32, align 32, offset 160] [from int]
!493 = metadata !{i32 786445, metadata !19, metadata !482, metadata !"sizelineinfo", i32 415, i64 32, i64 32, i64 192, i32 0, metadata !9} ; [ DW_TAG_member ] [sizelineinfo] [line 415, size 32, align 32, offset 192] [from int]
!494 = metadata !{i32 786445, metadata !19, metadata !482, metadata !"sizep", i32 416, i64 32, i64 32, i64 224, i32 0, metadata !9} ; [ DW_TAG_member ] [sizep] [line 416, size 32, align 32, offset 224] [from int]
!495 = metadata !{i32 786445, metadata !19, metadata !482, metadata !"sizelocvars", i32 417, i64 32, i64 32, i64 256, i32 0, metadata !9} ; [ DW_TAG_member ] [sizelocvars] [line 417, size 32, align 32, offset 256] [from int]
!496 = metadata !{i32 786445, metadata !19, metadata !482, metadata !"linedefined", i32 418, i64 32, i64 32, i64 288, i32 0, metadata !9} ; [ DW_TAG_member ] [linedefined] [line 418, size 32, align 32, offset 288] [from int]
!497 = metadata !{i32 786445, metadata !19, metadata !482, metadata !"lastlinedefined", i32 419, i64 32, i64 32, i64 320, i32 0, metadata !9} ; [ DW_TAG_member ] [lastlinedefined] [line 419, size 32, align 32, offset 320] [from int]
!498 = metadata !{i32 786445, metadata !19, metadata !482, metadata !"k", i32 420, i64 32, i64 32, i64 352, i32 0, metadata !35} ; [ DW_TAG_member ] [k] [line 420, size 32, align 32, offset 352] [from ]
!499 = metadata !{i32 786445, metadata !19, metadata !482, metadata !"code", i32 421, i64 32, i64 32, i64 384, i32 0, metadata !500} ; [ DW_TAG_member ] [code] [line 421, size 32, align 32, offset 384] [from ]
!500 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !195} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from Instruction]
!501 = metadata !{i32 786445, metadata !19, metadata !482, metadata !"p", i32 422, i64 32, i64 32, i64 416, i32 0, metadata !502} ; [ DW_TAG_member ] [p] [line 422, size 32, align 32, offset 416] [from ]
!502 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !481} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!503 = metadata !{i32 786445, metadata !19, metadata !482, metadata !"lineinfo", i32 423, i64 32, i64 32, i64 448, i32 0, metadata !322} ; [ DW_TAG_member ] [lineinfo] [line 423, size 32, align 32, offset 448] [from ]
!504 = metadata !{i32 786445, metadata !19, metadata !482, metadata !"locvars", i32 424, i64 32, i64 32, i64 480, i32 0, metadata !505} ; [ DW_TAG_member ] [locvars] [line 424, size 32, align 32, offset 480] [from ]
!505 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !506} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from LocVar]
!506 = metadata !{i32 786454, metadata !19, null, metadata !"LocVar", i32 401, i64 0, i64 0, i64 0, i32 0, metadata !507} ; [ DW_TAG_typedef ] [LocVar] [line 401, size 0, align 0, offset 0] [from LocVar]
!507 = metadata !{i32 786451, metadata !19, null, metadata !"LocVar", i32 397, i64 96, i64 32, i32 0, i32 0, null, metadata !508, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [LocVar] [line 397, size 96, align 32, offset 0] [def] [from ]
!508 = metadata !{metadata !509, metadata !510, metadata !511}
!509 = metadata !{i32 786445, metadata !19, metadata !507, metadata !"varname", i32 398, i64 32, i64 32, i64 0, i32 0, metadata !86} ; [ DW_TAG_member ] [varname] [line 398, size 32, align 32, offset 0] [from ]
!510 = metadata !{i32 786445, metadata !19, metadata !507, metadata !"startpc", i32 399, i64 32, i64 32, i64 32, i32 0, metadata !9} ; [ DW_TAG_member ] [startpc] [line 399, size 32, align 32, offset 32] [from int]
!511 = metadata !{i32 786445, metadata !19, metadata !507, metadata !"endpc", i32 400, i64 32, i64 32, i64 64, i32 0, metadata !9} ; [ DW_TAG_member ] [endpc] [line 400, size 32, align 32, offset 64] [from int]
!512 = metadata !{i32 786445, metadata !19, metadata !482, metadata !"upvalues", i32 425, i64 32, i64 32, i64 512, i32 0, metadata !513} ; [ DW_TAG_member ] [upvalues] [line 425, size 32, align 32, offset 512] [from ]
!513 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !514} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from Upvaldesc]
!514 = metadata !{i32 786454, metadata !19, null, metadata !"Upvaldesc", i32 390, i64 0, i64 0, i64 0, i32 0, metadata !515} ; [ DW_TAG_typedef ] [Upvaldesc] [line 390, size 0, align 0, offset 0] [from Upvaldesc]
!515 = metadata !{i32 786451, metadata !19, null, metadata !"Upvaldesc", i32 386, i64 64, i64 32, i32 0, i32 0, null, metadata !516, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [Upvaldesc] [line 386, size 64, align 32, offset 0] [def] [from ]
!516 = metadata !{metadata !517, metadata !518, metadata !519}
!517 = metadata !{i32 786445, metadata !19, metadata !515, metadata !"name", i32 387, i64 32, i64 32, i64 0, i32 0, metadata !86} ; [ DW_TAG_member ] [name] [line 387, size 32, align 32, offset 0] [from ]
!518 = metadata !{i32 786445, metadata !19, metadata !515, metadata !"instack", i32 388, i64 8, i64 8, i64 32, i32 0, metadata !24} ; [ DW_TAG_member ] [instack] [line 388, size 8, align 8, offset 32] [from lu_byte]
!519 = metadata !{i32 786445, metadata !19, metadata !515, metadata !"idx", i32 389, i64 8, i64 8, i64 40, i32 0, metadata !24} ; [ DW_TAG_member ] [idx] [line 389, size 8, align 8, offset 40] [from lu_byte]
!520 = metadata !{i32 786445, metadata !19, metadata !482, metadata !"cache", i32 426, i64 32, i64 32, i64 544, i32 0, metadata !521} ; [ DW_TAG_member ] [cache] [line 426, size 32, align 32, offset 544] [from ]
!521 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !473} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from LClosure]
!522 = metadata !{i32 786445, metadata !19, metadata !482, metadata !"source", i32 427, i64 32, i64 32, i64 576, i32 0, metadata !86} ; [ DW_TAG_member ] [source] [line 427, size 32, align 32, offset 576] [from ]
!523 = metadata !{i32 786445, metadata !19, metadata !482, metadata !"gclist", i32 428, i64 32, i64 32, i64 608, i32 0, metadata !17} ; [ DW_TAG_member ] [gclist] [line 428, size 32, align 32, offset 608] [from ]
!524 = metadata !{i32 786445, metadata !19, metadata !473, metadata !"upvals", i32 456, i64 32, i64 32, i64 128, i32 0, metadata !525} ; [ DW_TAG_member ] [upvals] [line 456, size 32, align 32, offset 128] [from ]
!525 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 32, i64 32, i32 0, i32 0, metadata !217, metadata !526, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 32, align 32, offset 0] [from ]
!526 = metadata !{metadata !527}
!527 = metadata !{i32 786465, i64 0, i64 1}       ; [ DW_TAG_subrange_type ] [0, 0]
!528 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"aux_upvalue", metadata !"aux_upvalue", metadata !"", i32 1196, metadata !529, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (%struct.lua_TValue*, i32, %struct.lua_TValue**, %struct.CClosure**, %struct.UpVal**)* @aux_upvalue, null, null, metadata !2, i32 1197} ; [ DW_TAG_subprogram ] [line 1196] [local] [def] [scope 1197] [aux_upvalue]
!529 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !530, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!530 = metadata !{metadata !251, metadata !34, metadata !9, metadata !531, metadata !532, metadata !469}
!531 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !35} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!532 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !533} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!533 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !534} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from CClosure]
!534 = metadata !{i32 786454, metadata !19, null, metadata !"CClosure", i32 450, i64 0, i64 0, i64 0, i32 0, metadata !535} ; [ DW_TAG_typedef ] [CClosure] [line 450, size 0, align 0, offset 0] [from CClosure]
!535 = metadata !{i32 786451, metadata !19, null, metadata !"CClosure", i32 446, i64 256, i64 64, i32 0, i32 0, null, metadata !536, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [CClosure] [line 446, size 256, align 64, offset 0] [def] [from ]
!536 = metadata !{metadata !537, metadata !538, metadata !539, metadata !540, metadata !541, metadata !542, metadata !543}
!537 = metadata !{i32 786445, metadata !19, metadata !535, metadata !"next", i32 447, i64 32, i64 32, i64 0, i32 0, metadata !17} ; [ DW_TAG_member ] [next] [line 447, size 32, align 32, offset 0] [from ]
!538 = metadata !{i32 786445, metadata !19, metadata !535, metadata !"tt", i32 447, i64 8, i64 8, i64 32, i32 0, metadata !24} ; [ DW_TAG_member ] [tt] [line 447, size 8, align 8, offset 32] [from lu_byte]
!539 = metadata !{i32 786445, metadata !19, metadata !535, metadata !"marked", i32 447, i64 8, i64 8, i64 40, i32 0, metadata !24} ; [ DW_TAG_member ] [marked] [line 447, size 8, align 8, offset 40] [from lu_byte]
!540 = metadata !{i32 786445, metadata !19, metadata !535, metadata !"nupvalues", i32 447, i64 8, i64 8, i64 48, i32 0, metadata !24} ; [ DW_TAG_member ] [nupvalues] [line 447, size 8, align 8, offset 48] [from lu_byte]
!541 = metadata !{i32 786445, metadata !19, metadata !535, metadata !"gclist", i32 447, i64 32, i64 32, i64 64, i32 0, metadata !17} ; [ DW_TAG_member ] [gclist] [line 447, size 32, align 32, offset 64] [from ]
!542 = metadata !{i32 786445, metadata !19, metadata !535, metadata !"f", i32 448, i64 32, i64 32, i64 96, i32 0, metadata !48} ; [ DW_TAG_member ] [f] [line 448, size 32, align 32, offset 96] [from lua_CFunction]
!543 = metadata !{i32 786445, metadata !19, metadata !535, metadata !"upvalue", i32 449, i64 128, i64 64, i64 128, i32 0, metadata !544} ; [ DW_TAG_member ] [upvalue] [line 449, size 128, align 64, offset 128] [from ]
!544 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 128, i64 64, i32 0, i32 0, metadata !36, metadata !526, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 128, align 64, offset 0] [from TValue]
!545 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"f_call", metadata !"f_call", metadata !"", i32 940, metadata !382, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.lua_State*, i8*)* @f_call, null, null, metadata !2, i32 940} ; [ DW_TAG_subprogram ] [line 940] [local] [def] [f_call]
!546 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"auxsetstr", metadata !"auxsetstr", metadata !"", i32 742, metadata !547, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.lua_State*, %struct.lua_TValue*, i8*)* @auxsetstr, null, null, metadata !2, i32 742} ; [ DW_TAG_subprogram ] [line 742] [local] [def] [auxsetstr]
!547 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !548, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!548 = metadata !{null, metadata !10, metadata !549, metadata !251}
!549 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !550} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!550 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !36} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from TValue]
!551 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"auxgetstr", metadata !"auxgetstr", metadata !"", i32 587, metadata !552, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*, %struct.lua_TValue*, i8*)* @auxgetstr, null, null, metadata !2, i32 587} ; [ DW_TAG_subprogram ] [line 587] [local] [def] [auxgetstr]
!552 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !553, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!553 = metadata !{metadata !9, metadata !10, metadata !549, metadata !251}
!554 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"reverse", metadata !"reverse", metadata !"", i32 193, metadata !555, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.lua_State*, %struct.lua_TValue*, %struct.lua_TValue*)* @reverse, null, null, metadata !2, i32 193} ; [ DW_TAG_subprogram ] [line 193] [local] [def] [reverse]
!555 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !556, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!556 = metadata !{null, metadata !10, metadata !34, metadata !34}
!557 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"index2addr", metadata !"index2addr", metadata !"", i32 60, metadata !558, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, %struct.lua_TValue* (%struct.lua_State*, i32)* @index2addr, null, null, metadata !2, i32 60} ; [ DW_TAG_subprogram ] [line 60] [local] [def] [index2addr]
!558 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !559, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!559 = metadata !{metadata !35, metadata !10, metadata !9}
!560 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"growstack", metadata !"growstack", metadata !"", i32 91, metadata !382, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.lua_State*, i8*)* @growstack, null, null, metadata !2, i32 91} ; [ DW_TAG_subprogram ] [line 91] [local] [def] [growstack]
!561 = metadata !{metadata !562, metadata !566}
!562 = metadata !{i32 786484, i32 0, null, metadata !"lua_ident", metadata !"lua_ident", metadata !"", metadata !6, i32 34, metadata !563, i32 0, i32 1, [129 x i8]* @lua_ident, null} ; [ DW_TAG_variable ] [lua_ident] [line 34] [def]
!563 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1032, i64 8, i32 0, i32 0, metadata !252, metadata !564, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 1032, align 8, offset 0] [from ]
!564 = metadata !{metadata !565}
!565 = metadata !{i32 786465, i64 0, i64 129}     ; [ DW_TAG_subrange_type ] [0, 128]
!566 = metadata !{i32 786484, i32 0, metadata !287, metadata !"version", metadata !"version", metadata !"", metadata !6, i32 145, metadata !130, i32 1, i32 1, double* @lua_version.version, null} ; [ DW_TAG_variable ] [version] [line 145] [local] [def]
!567 = metadata !{i32 (%struct.lua_State*, i32)* @lua_checkstack}
!568 = metadata !{metadata !"lua_checkstack"}
!569 = metadata !{i32 (%struct.lua_State*, void (%struct.lua_State*, i8*)*, i8*)* @luaD_rawrunprotected}
!570 = metadata !{metadata !"luaD_rawrunprotected"}
!571 = metadata !{void (%struct.lua_State*, i8*)* @growstack}
!572 = metadata !{metadata !"growstack"}
!573 = metadata !{void (%struct.lua_State*, %struct.lua_State*, i32)* @lua_xmove}
!574 = metadata !{metadata !"lua_xmove"}
!575 = metadata !{i32 (%struct.lua_State*)* (%struct.lua_State*, i32 (%struct.lua_State*)*)* @lua_atpanic}
!576 = metadata !{metadata !"lua_atpanic"}
!577 = metadata !{double* (%struct.lua_State*)* @lua_version}
!578 = metadata !{metadata !"lua_version"}
!579 = metadata !{i32 (%struct.lua_State*, i32)* @lua_absindex}
!580 = metadata !{metadata !"lua_absindex"}
!581 = metadata !{i32 (%struct.lua_State*)* @lua_gettop}
!582 = metadata !{metadata !"lua_gettop"}
!583 = metadata !{void (%struct.lua_State*, i32)* @lua_settop}
!584 = metadata !{metadata !"lua_settop"}
!585 = metadata !{void (%struct.lua_State*, i32, i32)* @lua_rotate}
!586 = metadata !{metadata !"lua_rotate"}
!587 = metadata !{%struct.lua_TValue* (%struct.lua_State*, i32)* @index2addr}
!588 = metadata !{metadata !"index2addr"}
!589 = metadata !{void (%struct.lua_State*, %struct.lua_TValue*, %struct.lua_TValue*)* @reverse}
!590 = metadata !{metadata !"reverse"}
!591 = metadata !{void (%struct.lua_State*, i32, i32)* @lua_copy}
!592 = metadata !{metadata !"lua_copy"}
!593 = metadata !{void (%struct.lua_State*, %struct.GCObject*, %struct.GCObject*)* @luaC_barrier_}
!594 = metadata !{metadata !"luaC_barrier_"}
!595 = metadata !{void (%struct.lua_State*, i32)* @lua_pushvalue}
!596 = metadata !{metadata !"lua_pushvalue"}
!597 = metadata !{i32 (%struct.lua_State*, i32)* @lua_type}
!598 = metadata !{metadata !"lua_type"}
!599 = metadata !{i8* (%struct.lua_State*, i32)* @lua_typename}
!600 = metadata !{metadata !"lua_typename"}
!601 = metadata !{i32 (%struct.lua_State*, i32)* @lua_iscfunction}
!602 = metadata !{metadata !"lua_iscfunction"}
!603 = metadata !{i32 (%struct.lua_State*, i32)* @lua_isinteger}
!604 = metadata !{metadata !"lua_isinteger"}
!605 = metadata !{i32 (%struct.lua_State*, i32)* @lua_isnumber}
!606 = metadata !{metadata !"lua_isnumber"}
!607 = metadata !{i32 (%struct.lua_TValue*, double*)* @luaV_tonumber_}
!608 = metadata !{metadata !"luaV_tonumber_"}
!609 = metadata !{i32 (%struct.lua_State*, i32)* @lua_isstring}
!610 = metadata !{metadata !"lua_isstring"}
!611 = metadata !{i32 (%struct.lua_State*, i32)* @lua_isuserdata}
!612 = metadata !{metadata !"lua_isuserdata"}
!613 = metadata !{i32 (%struct.lua_State*, i32, i32)* @lua_rawequal}
!614 = metadata !{metadata !"lua_rawequal"}
!615 = metadata !{i32 (%struct.lua_State*, %struct.lua_TValue*, %struct.lua_TValue*)* @luaV_equalobj}
!616 = metadata !{metadata !"luaV_equalobj"}
!617 = metadata !{void (%struct.lua_State*, i32)* @lua_arith}
!618 = metadata !{metadata !"lua_arith"}
!619 = metadata !{void (%struct.lua_State*, i32, %struct.lua_TValue*, %struct.lua_TValue*, %struct.lua_TValue*)* @luaO_arith}
!620 = metadata !{metadata !"luaO_arith"}
!621 = metadata !{i32 (%struct.lua_State*, i32, i32, i32)* @lua_compare}
!622 = metadata !{metadata !"lua_compare"}
!623 = metadata !{i32 (%struct.lua_State*, %struct.lua_TValue*, %struct.lua_TValue*)* @luaV_lessthan}
!624 = metadata !{metadata !"luaV_lessthan"}
!625 = metadata !{i32 (%struct.lua_State*, %struct.lua_TValue*, %struct.lua_TValue*)* @luaV_lessequal}
!626 = metadata !{metadata !"luaV_lessequal"}
!627 = metadata !{i32 (%struct.lua_State*, i8*)* @lua_stringtonumber}
!628 = metadata !{metadata !"lua_stringtonumber"}
!629 = metadata !{i32 (i8*, %struct.lua_TValue*)* @luaO_str2num}
!630 = metadata !{metadata !"luaO_str2num"}
!631 = metadata !{double (%struct.lua_State*, i32, i32*)* @lua_tonumberx}
!632 = metadata !{metadata !"lua_tonumberx"}
!633 = metadata !{i64 (%struct.lua_State*, i32, i32*)* @lua_tointegerx}
!634 = metadata !{metadata !"lua_tointegerx"}
!635 = metadata !{i32 (%struct.lua_TValue*, i64*, i32)* @luaV_tointeger}
!636 = metadata !{metadata !"luaV_tointeger"}
!637 = metadata !{i32 (%struct.lua_State*, i32)* @lua_toboolean}
!638 = metadata !{metadata !"lua_toboolean"}
!639 = metadata !{i8* (%struct.lua_State*, i32, i32*)* @lua_tolstring}
!640 = metadata !{metadata !"lua_tolstring"}
!641 = metadata !{void (%struct.lua_State*, %struct.lua_TValue*)* @luaO_tostring}
!642 = metadata !{metadata !"luaO_tostring"}
!643 = metadata !{void (%struct.lua_State*)* @luaC_step}
!644 = metadata !{metadata !"luaC_step"}
!645 = metadata !{i32 (%struct.lua_State*, i32)* @lua_rawlen}
!646 = metadata !{metadata !"lua_rawlen"}
!647 = metadata !{i32 (%struct.Table*)* @luaH_getn}
!648 = metadata !{metadata !"luaH_getn"}
!649 = metadata !{i32 (%struct.lua_State*)* (%struct.lua_State*, i32)* @lua_tocfunction}
!650 = metadata !{metadata !"lua_tocfunction"}
!651 = metadata !{i8* (%struct.lua_State*, i32)* @lua_touserdata}
!652 = metadata !{metadata !"lua_touserdata"}
!653 = metadata !{%struct.lua_State* (%struct.lua_State*, i32)* @lua_tothread}
!654 = metadata !{metadata !"lua_tothread"}
!655 = metadata !{i8* (%struct.lua_State*, i32)* @lua_topointer}
!656 = metadata !{metadata !"lua_topointer"}
!657 = metadata !{void (%struct.lua_State*)* @lua_pushnil}
!658 = metadata !{metadata !"lua_pushnil"}
!659 = metadata !{void (%struct.lua_State*, double)* @lua_pushnumber}
!660 = metadata !{metadata !"lua_pushnumber"}
!661 = metadata !{void (%struct.lua_State*, i64)* @lua_pushinteger}
!662 = metadata !{metadata !"lua_pushinteger"}
!663 = metadata !{i8* (%struct.lua_State*, i8*, i32)* @lua_pushlstring}
!664 = metadata !{metadata !"lua_pushlstring"}
!665 = metadata !{%struct.TString* (%struct.lua_State*, i8*)* @luaS_new}
!666 = metadata !{metadata !"luaS_new"}
!667 = metadata !{%struct.TString* (%struct.lua_State*, i8*, i32)* @luaS_newlstr}
!668 = metadata !{metadata !"luaS_newlstr"}
!669 = metadata !{i8* (%struct.lua_State*, i8*)* @lua_pushstring}
!670 = metadata !{metadata !"lua_pushstring"}
!671 = metadata !{i8* (%struct.lua_State*, i8*, { [1 x i32] })* @lua_pushvfstring}
!672 = metadata !{metadata !"lua_pushvfstring"}
!673 = metadata !{i8* (%struct.lua_State*, i8*, { [1 x i32] })* @luaO_pushvfstring}
!674 = metadata !{metadata !"luaO_pushvfstring"}
!675 = metadata !{i8* (%struct.lua_State*, i8*, ...)* @lua_pushfstring}
!676 = metadata !{metadata !"lua_pushfstring"}
!677 = metadata !{void (%struct.lua_State*, i32 (%struct.lua_State*)*, i32)* @lua_pushcclosure}
!678 = metadata !{metadata !"lua_pushcclosure"}
!679 = metadata !{%struct.CClosure* (%struct.lua_State*, i32)* @luaF_newCclosure}
!680 = metadata !{metadata !"luaF_newCclosure"}
!681 = metadata !{void (%struct.lua_State*, i32)* @lua_pushboolean}
!682 = metadata !{metadata !"lua_pushboolean"}
!683 = metadata !{void (%struct.lua_State*, i8*)* @lua_pushlightuserdata}
!684 = metadata !{metadata !"lua_pushlightuserdata"}
!685 = metadata !{i32 (%struct.lua_State*)* @lua_pushthread}
!686 = metadata !{metadata !"lua_pushthread"}
!687 = metadata !{i32 (%struct.lua_State*, i8*)* @lua_getglobal}
!688 = metadata !{metadata !"lua_getglobal"}
!689 = metadata !{i32 (%struct.lua_State*, %struct.lua_TValue*, i8*)* @auxgetstr}
!690 = metadata !{metadata !"auxgetstr"}
!691 = metadata !{%struct.lua_TValue* (%struct.Table*, i64)* @luaH_getint}
!692 = metadata !{metadata !"luaH_getint"}
!693 = metadata !{i32 (%struct.lua_State*, i32)* @lua_gettable}
!694 = metadata !{metadata !"lua_gettable"}
!695 = metadata !{%struct.lua_TValue* (%struct.Table*, %struct.lua_TValue*)* @luaH_get}
!696 = metadata !{metadata !"luaH_get"}
!697 = metadata !{void (%struct.lua_State*, %struct.lua_TValue*, %struct.lua_TValue*, %struct.lua_TValue*, %struct.lua_TValue*)* @luaV_finishget}
!698 = metadata !{metadata !"luaV_finishget"}
!699 = metadata !{i32 (%struct.lua_State*, i32, i8*)* @lua_getfield}
!700 = metadata !{metadata !"lua_getfield"}
!701 = metadata !{i32 (%struct.lua_State*, i32, i64)* @lua_geti}
!702 = metadata !{metadata !"lua_geti"}
!703 = metadata !{i32 (%struct.lua_State*, i32)* @lua_rawget}
!704 = metadata !{metadata !"lua_rawget"}
!705 = metadata !{i32 (%struct.lua_State*, i32, i64)* @lua_rawgeti}
!706 = metadata !{metadata !"lua_rawgeti"}
!707 = metadata !{i32 (%struct.lua_State*, i32, i8*)* @lua_rawgetp}
!708 = metadata !{metadata !"lua_rawgetp"}
!709 = metadata !{void (%struct.lua_State*, i32, i32)* @lua_createtable}
!710 = metadata !{metadata !"lua_createtable"}
!711 = metadata !{%struct.Table* (%struct.lua_State*)* @luaH_new}
!712 = metadata !{metadata !"luaH_new"}
!713 = metadata !{void (%struct.lua_State*, %struct.Table*, i32, i32)* @luaH_resize}
!714 = metadata !{metadata !"luaH_resize"}
!715 = metadata !{i32 (%struct.lua_State*, i32)* @lua_getmetatable}
!716 = metadata !{metadata !"lua_getmetatable"}
!717 = metadata !{i32 (%struct.lua_State*, i32)* @lua_getuservalue}
!718 = metadata !{metadata !"lua_getuservalue"}
!719 = metadata !{void (%struct.lua_State*, i8*)* @lua_setglobal}
!720 = metadata !{metadata !"lua_setglobal"}
!721 = metadata !{void (%struct.lua_State*, %struct.lua_TValue*, i8*)* @auxsetstr}
!722 = metadata !{metadata !"auxsetstr"}
!723 = metadata !{void (%struct.lua_State*, i32)* @lua_settable}
!724 = metadata !{metadata !"lua_settable"}
!725 = metadata !{void (%struct.lua_State*, %struct.Table*)* @luaC_barrierback_}
!726 = metadata !{metadata !"luaC_barrierback_"}
!727 = metadata !{void (%struct.lua_State*, %struct.lua_TValue*, %struct.lua_TValue*, %struct.lua_TValue*, %struct.lua_TValue*)* @luaV_finishset}
!728 = metadata !{metadata !"luaV_finishset"}
!729 = metadata !{void (%struct.lua_State*, i32, i8*)* @lua_setfield}
!730 = metadata !{metadata !"lua_setfield"}
!731 = metadata !{void (%struct.lua_State*, i32, i64)* @lua_seti}
!732 = metadata !{metadata !"lua_seti"}
!733 = metadata !{void (%struct.lua_State*, i32)* @lua_rawset}
!734 = metadata !{metadata !"lua_rawset"}
!735 = metadata !{%struct.lua_TValue* (%struct.lua_State*, %struct.Table*, %struct.lua_TValue*)* @luaH_set}
!736 = metadata !{metadata !"luaH_set"}
!737 = metadata !{void (%struct.lua_State*, i32, i64)* @lua_rawseti}
!738 = metadata !{metadata !"lua_rawseti"}
!739 = metadata !{void (%struct.lua_State*, %struct.Table*, i64, %struct.lua_TValue*)* @luaH_setint}
!740 = metadata !{metadata !"luaH_setint"}
!741 = metadata !{void (%struct.lua_State*, i32, i8*)* @lua_rawsetp}
!742 = metadata !{metadata !"lua_rawsetp"}
!743 = metadata !{i32 (%struct.lua_State*, i32)* @lua_setmetatable}
!744 = metadata !{metadata !"lua_setmetatable"}
!745 = metadata !{void (%struct.lua_State*, %struct.GCObject*, %struct.Table*)* @luaC_checkfinalizer}
!746 = metadata !{metadata !"luaC_checkfinalizer"}
!747 = metadata !{void (%struct.lua_State*, i32)* @lua_setuservalue}
!748 = metadata !{metadata !"lua_setuservalue"}
!749 = metadata !{void (%struct.lua_State*, i32, i32, i32, i32 (%struct.lua_State*, i32, i32)*)* @lua_callk}
!750 = metadata !{metadata !"lua_callk"}
!751 = metadata !{void (%struct.lua_State*, %struct.lua_TValue*, i32)* @luaD_call}
!752 = metadata !{metadata !"luaD_call"}
!753 = metadata !{void (%struct.lua_State*, %struct.lua_TValue*, i32)* @luaD_callnoyield}
!754 = metadata !{metadata !"luaD_callnoyield"}
!755 = metadata !{i32 (%struct.lua_State*, i32, i32, i32, i32, i32 (%struct.lua_State*, i32, i32)*)* @lua_pcallk}
!756 = metadata !{metadata !"lua_pcallk"}
!757 = metadata !{i32 (%struct.lua_State*, void (%struct.lua_State*, i8*)*, i8*, i32, i32)* @luaD_pcall}
!758 = metadata !{metadata !"luaD_pcall"}
!759 = metadata !{void (%struct.lua_State*, i8*)* @f_call}
!760 = metadata !{metadata !"f_call"}
!761 = metadata !{i32 (%struct.lua_State*, i8* (%struct.lua_State*, i8*, i32*)*, i8*, i8*, i8*)* @lua_load}
!762 = metadata !{metadata !"lua_load"}
!763 = metadata !{void (%struct.lua_State*, %struct.Zio*, i8* (%struct.lua_State*, i8*, i32*)*, i8*)* @luaZ_init}
!764 = metadata !{metadata !"luaZ_init"}
!765 = metadata !{i32 (%struct.lua_State*, %struct.Zio*, i8*, i8*)* @luaD_protectedparser}
!766 = metadata !{metadata !"luaD_protectedparser"}
!767 = metadata !{void (%struct.lua_State*, %struct.UpVal*)* @luaC_upvalbarrier_}
!768 = metadata !{metadata !"luaC_upvalbarrier_"}
!769 = metadata !{i32 (%struct.lua_State*, i32 (%struct.lua_State*, i8*, i32, i8*)*, i8*, i32)* @lua_dump}
!770 = metadata !{metadata !"lua_dump"}
!771 = metadata !{i32 (%struct.lua_State*, %struct.Proto*, i32 (%struct.lua_State*, i8*, i32, i8*)*, i8*, i32)* @luaU_dump}
!772 = metadata !{metadata !"luaU_dump"}
!773 = metadata !{i32 (%struct.lua_State*)* @lua_status}
!774 = metadata !{metadata !"lua_status"}
!775 = metadata !{i32 (%struct.lua_State*, i32, i32)* @lua_gc}
!776 = metadata !{metadata !"lua_gc"}
!777 = metadata !{void (%struct.global_State*, i32)* @luaE_setdebt}
!778 = metadata !{metadata !"luaE_setdebt"}
!779 = metadata !{void (%struct.lua_State*, i32)* @luaC_fullgc}
!780 = metadata !{metadata !"luaC_fullgc"}
!781 = metadata !{i32 (%struct.lua_State*)* @lua_error}
!782 = metadata !{metadata !"lua_error"}
!783 = metadata !{void (%struct.lua_State*)* @luaG_errormsg}
!784 = metadata !{metadata !"luaG_errormsg"}
!785 = metadata !{i32 (%struct.lua_State*, i32)* @lua_next}
!786 = metadata !{metadata !"lua_next"}
!787 = metadata !{i32 (%struct.lua_State*, %struct.Table*, %struct.lua_TValue*)* @luaH_next}
!788 = metadata !{metadata !"luaH_next"}
!789 = metadata !{void (%struct.lua_State*, i32)* @lua_concat}
!790 = metadata !{metadata !"lua_concat"}
!791 = metadata !{void (%struct.lua_State*, i32)* @luaV_concat}
!792 = metadata !{metadata !"luaV_concat"}
!793 = metadata !{void (%struct.lua_State*, i32)* @lua_len}
!794 = metadata !{metadata !"lua_len"}
!795 = metadata !{void (%struct.lua_State*, %struct.lua_TValue*, %struct.lua_TValue*)* @luaV_objlen}
!796 = metadata !{metadata !"luaV_objlen"}
!797 = metadata !{i8* (i8*, i8*, i32, i32)* (%struct.lua_State*, i8**)* @lua_getallocf}
!798 = metadata !{metadata !"lua_getallocf"}
!799 = metadata !{void (%struct.lua_State*, i8* (i8*, i8*, i32, i32)*, i8*)* @lua_setallocf}
!800 = metadata !{metadata !"lua_setallocf"}
!801 = metadata !{i8* (%struct.lua_State*, i32)* @lua_newuserdata}
!802 = metadata !{metadata !"lua_newuserdata"}
!803 = metadata !{%struct.Udata* (%struct.lua_State*, i32)* @luaS_newudata}
!804 = metadata !{metadata !"luaS_newudata"}
!805 = metadata !{i8* (%struct.lua_State*, i32, i32)* @lua_getupvalue}
!806 = metadata !{metadata !"lua_getupvalue"}
!807 = metadata !{i8* (%struct.lua_TValue*, i32, %struct.lua_TValue**, %struct.CClosure**, %struct.UpVal**)* @aux_upvalue}
!808 = metadata !{metadata !"aux_upvalue"}
!809 = metadata !{i8* (%struct.lua_State*, i32, i32)* @lua_setupvalue}
!810 = metadata !{metadata !"lua_setupvalue"}
!811 = metadata !{i8* (%struct.lua_State*, i32, i32)* @lua_upvalueid}
!812 = metadata !{metadata !"lua_upvalueid"}
!813 = metadata !{%struct.UpVal** (%struct.lua_State*, i32, i32, %struct.LClosure**)* @getupvalref}
!814 = metadata !{metadata !"getupvalref"}
!815 = metadata !{void (%struct.lua_State*, i32, i32, i32, i32)* @lua_upvaluejoin}
!816 = metadata !{metadata !"lua_upvaluejoin"}
!817 = metadata !{void (%struct.lua_State*, %struct.UpVal*)* @luaC_upvdeccount}
!818 = metadata !{metadata !"luaC_upvdeccount"}
!819 = metadata !{%struct.lua_TValue* (%struct.Table*, %struct.TString*)* @luaH_getstr}
!820 = metadata !{metadata !"luaH_getstr"}
!821 = metadata !{void (%struct.lua_State*, i32)* @luaD_growstack}
!822 = metadata !{metadata !"luaD_growstack"}
!823 = metadata !{metadata !"int.lua_State *.1.int.0"}
!824 = metadata !{metadata !"int.lua_State *.1.Pfunc.1.void *.1"}
!825 = metadata !{metadata !"void.lua_State *.1.void *.1"}
!826 = metadata !{metadata !"void.lua_State *.1.lua_State *.1.int.0"}
!827 = metadata !{metadata !"lua_CFunction.lua_State *.1.lua_CFunction.1"}
!828 = metadata !{metadata !"const lua_Number .lua_State *.1"}
!829 = metadata !{metadata !"int.lua_State *.1"}
!830 = metadata !{metadata !"void.lua_State *.1.int.0"}
!831 = metadata !{metadata !"void.lua_State *.1.int.0.int.0"}
!832 = metadata !{metadata !"TValue .lua_State *.1.int.0"}
!833 = metadata !{metadata !"void.lua_State *.1.StkId.1.StkId.1"}
!834 = metadata !{metadata !"void.lua_State *.1.GCObject *.1.GCObject *.1"}
!835 = metadata !{metadata !"const char .lua_State *.1.int.0"}
!836 = metadata !{metadata !"int.const TValue *.1.lua_Number *.1"}
!837 = metadata !{metadata !"int.lua_State *.1.int.0.int.0"}
!838 = metadata !{metadata !"int.lua_State *.1.const TValue *.1.const TValue *.1"}
!839 = metadata !{metadata !"void.lua_State *.1.int.0.const TValue *.1.const TValue *.1.TValue *.1"}
!840 = metadata !{metadata !"int.lua_State *.1.int.0.int.0.int.0"}
!841 = metadata !{metadata !"size_t.lua_State *.1.const char *.1"}
!842 = metadata !{metadata !"size_t.const char *.1.TValue *.1"}
!843 = metadata !{metadata !"lua_Number.lua_State *.1.int.0.int *.1"}
!844 = metadata !{metadata !"lua_Integer.lua_State *.1.int.0.int *.1"}
!845 = metadata !{metadata !"int.const TValue *.1.lua_Integer *.1.int.0"}
!846 = metadata !{metadata !"const char .lua_State *.1.int.0.size_t *.1"}
!847 = metadata !{metadata !"void.lua_State *.1.StkId.1"}
!848 = metadata !{metadata !"void.lua_State *.1"}
!849 = metadata !{metadata !"size_t.lua_State *.1.int.0"}
!850 = metadata !{metadata !"int.Table *.1"}
!851 = metadata !{metadata !"lua_CFunction.lua_State *.1.int.0"}
!852 = metadata !{metadata !"void .lua_State *.1.int.0"}
!853 = metadata !{metadata !"lua_State .lua_State *.1.int.0"}
!854 = metadata !{metadata !"const void .lua_State *.1.int.0"}
!855 = metadata !{metadata !"void.lua_State *.1.lua_Number.0"}
!856 = metadata !{metadata !"void.lua_State *.1.lua_Integer.0"}
!857 = metadata !{metadata !"const char .lua_State *.1.const char *.1.size_t.0"}
!858 = metadata !{metadata !"TString .lua_State *.1.const char *.1"}
!859 = metadata !{metadata !"TString .lua_State *.1.const char *.1.size_t.0"}
!860 = metadata !{metadata !"const char .lua_State *.1.const char *.1"}
!861 = metadata !{metadata !"const char .lua_State *.1.const char *.1.va_list.0"}
!862 = metadata !{metadata !"void.lua_State *.1.lua_CFunction.1.int.0"}
!863 = metadata !{metadata !"CClosure .lua_State *.1.int.0"}
!864 = metadata !{metadata !"int.lua_State *.1.const char *.1"}
!865 = metadata !{metadata !"int.lua_State *.1.const TValue *.1.const char *.1"}
!866 = metadata !{metadata !"const TValue .Table *.1.lua_Integer.0"}
!867 = metadata !{metadata !"const TValue .Table *.1.const TValue *.1"}
!868 = metadata !{metadata !"void.lua_State *.1.const TValue *.1.TValue *.1.StkId.1.const TValue *.1"}
!869 = metadata !{metadata !"int.lua_State *.1.int.0.const char *.1"}
!870 = metadata !{metadata !"int.lua_State *.1.int.0.lua_Integer.0"}
!871 = metadata !{metadata !"int.lua_State *.1.int.0.const void *.1"}
!872 = metadata !{metadata !"Table .lua_State *.1"}
!873 = metadata !{metadata !"void.lua_State *.1.Table *.1.unsigned int.0.unsigned int.0"}
!874 = metadata !{metadata !"void.lua_State *.1.const char *.1"}
!875 = metadata !{metadata !"void.lua_State *.1.const TValue *.1.const char *.1"}
!876 = metadata !{metadata !"void.lua_State *.1.Table *.1"}
!877 = metadata !{metadata !"void.lua_State *.1.int.0.const char *.1"}
!878 = metadata !{metadata !"void.lua_State *.1.int.0.lua_Integer.0"}
!879 = metadata !{metadata !"TValue .lua_State *.1.Table *.1.const TValue *.1"}
!880 = metadata !{metadata !"void.lua_State *.1.Table *.1.lua_Integer.0.TValue *.1"}
!881 = metadata !{metadata !"void.lua_State *.1.int.0.const void *.1"}
!882 = metadata !{metadata !"void.lua_State *.1.GCObject *.1.Table *.1"}
!883 = metadata !{metadata !"void.lua_State *.1.int.0.int.0.lua_KContext.0.lua_KFunction.1"}
!884 = metadata !{metadata !"void.lua_State *.1.StkId.1.int.0"}
!885 = metadata !{metadata !"int.lua_State *.1.int.0.int.0.int.0.lua_KContext.0.lua_KFunction.1"}
!886 = metadata !{metadata !"int.lua_State *.1.Pfunc.1.void *.1.ptrdiff_t.0.ptrdiff_t.0"}
!887 = metadata !{metadata !"int.lua_State *.1.lua_Reader.1.void *.1.const char *.1.const char *.1"}
!888 = metadata !{metadata !"void.lua_State *.1.ZIO *.1.lua_Reader.1.void *.1"}
!889 = metadata !{metadata !"int.lua_State *.1.ZIO *.1.const char *.1.const char *.1"}
!890 = metadata !{metadata !"void.lua_State *.1.UpVal *.1"}
!891 = metadata !{metadata !"int.lua_State *.1.lua_Writer.1.void *.1.int.0"}
!892 = metadata !{metadata !"int.lua_State *.1.const Proto *.1.lua_Writer.1.void *.1.int.0"}
!893 = metadata !{metadata !"void.global_State *.1.l_mem.0"}
!894 = metadata !{metadata !"int.lua_State *.1.Table *.1.StkId.1"}
!895 = metadata !{metadata !"void.lua_State *.1.StkId.1.const TValue *.1"}
!896 = metadata !{metadata !"lua_Alloc.lua_State *.1.void **.1"}
!897 = metadata !{metadata !"void.lua_State *.1.lua_Alloc.1.void *.1"}
!898 = metadata !{metadata !"void .lua_State *.1.size_t.0"}
!899 = metadata !{metadata !"Udata .lua_State *.1.size_t.0"}
!900 = metadata !{metadata !"const char .lua_State *.1.int.0.int.0"}
!901 = metadata !{metadata !"const char .StkId.1.int.0.TValue **.1.CClosure **.1.UpVal **.1"}
!902 = metadata !{metadata !"void .lua_State *.1.int.0.int.0"}
!903 = metadata !{metadata !"UpVal *.lua_State *.1.int.0.int.0.LClosure **.1"}
!904 = metadata !{metadata !"void.lua_State *.1.int.0.int.0.int.0.int.0"}
!905 = metadata !{metadata !"const TValue .Table *.1.TString *.1"}
!906 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lua.h"}
!907 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/ldo.h"}
!908 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lapi.c"}
!909 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lgc.h"}
!910 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lvm.h"}
!911 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lobject.h"}
!912 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/ltable.h"}
!913 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lstring.h"}
!914 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lfunc.h"}
!915 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lzio.h"}
!916 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lundump.h"}
!917 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lstate.h"}
!918 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/ldebug.h"}
!919 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!920 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!921 = metadata !{i32 1, metadata !"wchar_size", i32 4}
!922 = metadata !{i32 1, metadata !"min_enum_size", i32 4}
!923 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
!924 = metadata !{i32 786689, metadata !4, metadata !"L", metadata !6, i32 16777313, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 97]
!925 = metadata !{i32 97, i32 40, metadata !4, null}
!926 = metadata !{i32 786689, metadata !4, metadata !"n", metadata !6, i32 33554529, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 97]
!927 = metadata !{i32 97, i32 47, metadata !4, null}
!928 = metadata !{i32 786688, metadata !4, metadata !"res", metadata !6, i32 98, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [res] [line 98]
!929 = metadata !{i32 98, i32 7, metadata !4, null}
!930 = metadata !{i32 786688, metadata !4, metadata !"ci", metadata !6, i32 99, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ci] [line 99]
!931 = metadata !{i32 99, i32 13, metadata !4, null}
!932 = metadata !{i32 99, i32 3, metadata !4, null}
!933 = metadata !{i32 102, i32 7, metadata !934, null}
!934 = metadata !{i32 786443, metadata !5, metadata !4, i32 102, i32 7, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!935 = metadata !{i32 103, i32 5, metadata !934, null}
!936 = metadata !{i32 786688, metadata !937, metadata !"inuse", metadata !6, i32 105, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inuse] [line 105]
!937 = metadata !{i32 786443, metadata !5, metadata !934, i32 104, i32 8, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!938 = metadata !{i32 105, i32 9, metadata !937, null}
!939 = metadata !{i32 105, i32 5, metadata !937, null}
!940 = metadata !{i32 106, i32 9, metadata !941, null}
!941 = metadata !{i32 786443, metadata !5, metadata !937, i32 106, i32 9, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!942 = metadata !{i32 107, i32 7, metadata !941, null}
!943 = metadata !{i32 109, i32 14, metadata !941, null}
!944 = metadata !{i32 111, i32 7, metadata !945, null}
!945 = metadata !{i32 786443, metadata !5, metadata !4, i32 111, i32 7, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!946 = metadata !{i32 111, i32 7, metadata !947, null}
!947 = metadata !{i32 786443, metadata !5, metadata !945, i32 111, i32 7, i32 1, i32 235} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!948 = metadata !{i32 112, i32 5, metadata !945, null}
!949 = metadata !{i32 114, i32 3, metadata !4, null}
!950 = metadata !{i32 786689, metadata !560, metadata !"L", metadata !6, i32 16777307, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 91]
!951 = metadata !{i32 91, i32 35, metadata !560, null}
!952 = metadata !{i32 786689, metadata !560, metadata !"ud", metadata !6, i32 33554523, metadata !45, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ud] [line 91]
!953 = metadata !{i32 91, i32 44, metadata !560, null}
!954 = metadata !{i32 786688, metadata !560, metadata !"size", metadata !6, i32 92, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [size] [line 92]
!955 = metadata !{i32 92, i32 7, metadata !560, null}
!956 = metadata !{i32 92, i32 3, metadata !560, null}
!957 = metadata !{i32 93, i32 3, metadata !560, null}
!958 = metadata !{i32 94, i32 1, metadata !560, null}
!959 = metadata !{i32 786689, metadata !281, metadata !"from", metadata !6, i32 16777334, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [from] [line 118]
!960 = metadata !{i32 118, i32 36, metadata !281, null}
!961 = metadata !{i32 786689, metadata !281, metadata !"to", metadata !6, i32 33554550, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [to] [line 118]
!962 = metadata !{i32 118, i32 53, metadata !281, null}
!963 = metadata !{i32 786689, metadata !281, metadata !"n", metadata !6, i32 50331766, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 118]
!964 = metadata !{i32 118, i32 61, metadata !281, null}
!965 = metadata !{i32 786688, metadata !281, metadata !"i", metadata !6, i32 119, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 119]
!966 = metadata !{i32 119, i32 7, metadata !281, null}
!967 = metadata !{i32 120, i32 7, metadata !968, null}
!968 = metadata !{i32 786443, metadata !5, metadata !281, i32 120, i32 7, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!969 = metadata !{i32 120, i32 19, metadata !970, null}
!970 = metadata !{i32 786443, metadata !5, metadata !968, i32 120, i32 19, i32 1, i32 236} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!971 = metadata !{i32 125, i32 3, metadata !281, null}
!972 = metadata !{i32 126, i32 8, metadata !973, null}
!973 = metadata !{i32 786443, metadata !5, metadata !281, i32 126, i32 3, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!974 = metadata !{i32 126, i32 8, metadata !975, null}
!975 = metadata !{i32 786443, metadata !5, metadata !976, i32 126, i32 8, i32 2, i32 238} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!976 = metadata !{i32 786443, metadata !5, metadata !973, i32 126, i32 8, i32 1, i32 237} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!977 = metadata !{i32 786688, metadata !978, metadata !"io1", metadata !6, i32 127, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [io1] [line 127]
!978 = metadata !{i32 786443, metadata !5, metadata !979, i32 127, i32 5, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!979 = metadata !{i32 786443, metadata !5, metadata !973, i32 126, i32 27, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!980 = metadata !{i32 127, i32 5, metadata !978, null}
!981 = metadata !{i32 128, i32 5, metadata !979, null}
!982 = metadata !{i32 129, i32 3, metadata !979, null}
!983 = metadata !{i32 126, i32 22, metadata !973, null}
!984 = metadata !{i32 131, i32 1, metadata !281, null}
!985 = metadata !{i32 786689, metadata !284, metadata !"L", metadata !6, i32 16777350, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 134]
!986 = metadata !{i32 134, i32 47, metadata !284, null}
!987 = metadata !{i32 786689, metadata !284, metadata !"panicf", metadata !6, i32 33554566, metadata !48, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [panicf] [line 134]
!988 = metadata !{i32 134, i32 64, metadata !284, null}
!989 = metadata !{i32 786688, metadata !284, metadata !"old", metadata !6, i32 135, metadata !48, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [old] [line 135]
!990 = metadata !{i32 135, i32 17, metadata !284, null}
!991 = metadata !{i32 137, i32 3, metadata !284, null}
!992 = metadata !{i32 138, i32 3, metadata !284, null}
!993 = metadata !{i32 140, i32 3, metadata !284, null}
!994 = metadata !{i32 786689, metadata !287, metadata !"L", metadata !6, i32 16777360, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 144]
!995 = metadata !{i32 144, i32 51, metadata !287, null}
!996 = metadata !{i32 146, i32 7, metadata !997, null}
!997 = metadata !{i32 786443, metadata !5, metadata !287, i32 146, i32 7, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!998 = metadata !{i32 146, i32 18, metadata !999, null}
!999 = metadata !{i32 786443, metadata !5, metadata !997, i32 146, i32 18, i32 1, i32 239} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1000 = metadata !{i32 147, i32 8, metadata !997, null}
!1001 = metadata !{i32 148, i32 1, metadata !287, null}
!1002 = metadata !{i32 786689, metadata !290, metadata !"L", metadata !6, i32 16777376, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 160]
!1003 = metadata !{i32 160, i32 38, metadata !290, null}
!1004 = metadata !{i32 786689, metadata !290, metadata !"idx", metadata !6, i32 33554592, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [idx] [line 160]
!1005 = metadata !{i32 160, i32 45, metadata !290, null}
!1006 = metadata !{i32 161, i32 3, metadata !290, null}
!1007 = metadata !{i32 161, i32 3, metadata !1008, null}
!1008 = metadata !{i32 786443, metadata !5, metadata !290, i32 161, i32 3, i32 2, i32 241} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1009 = metadata !{i32 161, i32 3, metadata !1010, null}
!1010 = metadata !{i32 786443, metadata !5, metadata !1011, i32 161, i32 3, i32 3, i32 242} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1011 = metadata !{i32 786443, metadata !5, metadata !290, i32 161, i32 3, i32 1, i32 240} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1012 = metadata !{i32 161, i32 3, metadata !1013, null}
!1013 = metadata !{i32 786443, metadata !5, metadata !290, i32 161, i32 3, i32 4, i32 243} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1014 = metadata !{i32 161, i32 3, metadata !1015, null}
!1015 = metadata !{i32 786443, metadata !5, metadata !1016, i32 161, i32 3, i32 6, i32 245} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1016 = metadata !{i32 786443, metadata !5, metadata !290, i32 161, i32 3, i32 5, i32 244} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1017 = metadata !{i32 786689, metadata !291, metadata !"L", metadata !6, i32 16777383, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 167]
!1018 = metadata !{i32 167, i32 36, metadata !291, null}
!1019 = metadata !{i32 168, i32 3, metadata !291, null}
!1020 = metadata !{i32 786689, metadata !292, metadata !"L", metadata !6, i32 16777388, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 172]
!1021 = metadata !{i32 172, i32 37, metadata !292, null}
!1022 = metadata !{i32 786689, metadata !292, metadata !"idx", metadata !6, i32 33554604, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [idx] [line 172]
!1023 = metadata !{i32 172, i32 44, metadata !292, null}
!1024 = metadata !{i32 786688, metadata !292, metadata !"func", metadata !6, i32 173, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [func] [line 173]
!1025 = metadata !{i32 173, i32 9, metadata !292, null}
!1026 = metadata !{i32 173, i32 3, metadata !292, null}
!1027 = metadata !{i32 175, i32 7, metadata !1028, null}
!1028 = metadata !{i32 786443, metadata !5, metadata !292, i32 175, i32 7, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1029 = metadata !{i32 177, i32 5, metadata !1030, null}
!1030 = metadata !{i32 786443, metadata !5, metadata !1028, i32 175, i32 17, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1031 = metadata !{i32 177, i32 5, metadata !1032, null}
!1032 = metadata !{i32 786443, metadata !5, metadata !1030, i32 177, i32 5, i32 1, i32 246} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1033 = metadata !{i32 178, i32 7, metadata !1030, null}
!1034 = metadata !{i32 179, i32 5, metadata !1030, null}
!1035 = metadata !{i32 180, i32 3, metadata !1030, null}
!1036 = metadata !{i32 183, i32 5, metadata !1037, null}
!1037 = metadata !{i32 786443, metadata !5, metadata !1028, i32 181, i32 8, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1038 = metadata !{i32 186, i32 1, metadata !292, null}
!1039 = metadata !{i32 786689, metadata !295, metadata !"L", metadata !6, i32 16777423, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 207]
!1040 = metadata !{i32 207, i32 37, metadata !295, null}
!1041 = metadata !{i32 786689, metadata !295, metadata !"idx", metadata !6, i32 33554639, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [idx] [line 207]
!1042 = metadata !{i32 207, i32 44, metadata !295, null}
!1043 = metadata !{i32 786689, metadata !295, metadata !"n", metadata !6, i32 50331855, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 207]
!1044 = metadata !{i32 207, i32 53, metadata !295, null}
!1045 = metadata !{i32 786688, metadata !295, metadata !"p", metadata !6, i32 208, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 208]
!1046 = metadata !{i32 208, i32 9, metadata !295, null}
!1047 = metadata !{i32 786688, metadata !295, metadata !"t", metadata !6, i32 208, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [t] [line 208]
!1048 = metadata !{i32 208, i32 12, metadata !295, null}
!1049 = metadata !{i32 786688, metadata !295, metadata !"m", metadata !6, i32 208, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [m] [line 208]
!1050 = metadata !{i32 208, i32 15, metadata !295, null}
!1051 = metadata !{i32 210, i32 3, metadata !295, null}
!1052 = metadata !{i32 211, i32 7, metadata !295, null}
!1053 = metadata !{i32 214, i32 3, metadata !295, null}
!1054 = metadata !{i32 214, i32 3, metadata !1055, null}
!1055 = metadata !{i32 786443, metadata !5, metadata !295, i32 214, i32 3, i32 1, i32 247} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1056 = metadata !{i32 214, i32 3, metadata !1057, null}
!1057 = metadata !{i32 786443, metadata !5, metadata !295, i32 214, i32 3, i32 2, i32 248} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1058 = metadata !{i32 214, i32 3, metadata !1059, null}
!1059 = metadata !{i32 786443, metadata !5, metadata !1060, i32 214, i32 3, i32 4, i32 250} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1060 = metadata !{i32 786443, metadata !5, metadata !295, i32 214, i32 3, i32 3, i32 249} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1061 = metadata !{i32 215, i32 3, metadata !295, null}
!1062 = metadata !{i32 216, i32 3, metadata !295, null}
!1063 = metadata !{i32 217, i32 3, metadata !295, null}
!1064 = metadata !{i32 219, i32 1, metadata !295, null}
!1065 = metadata !{i32 786689, metadata !557, metadata !"L", metadata !6, i32 16777276, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 60]
!1066 = metadata !{i32 60, i32 39, metadata !557, null}
!1067 = metadata !{i32 786689, metadata !557, metadata !"idx", metadata !6, i32 33554492, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [idx] [line 60]
!1068 = metadata !{i32 60, i32 46, metadata !557, null}
!1069 = metadata !{i32 786688, metadata !557, metadata !"ci", metadata !6, i32 61, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ci] [line 61]
!1070 = metadata !{i32 61, i32 13, metadata !557, null}
!1071 = metadata !{i32 61, i32 3, metadata !557, null}
!1072 = metadata !{i32 62, i32 7, metadata !1073, null}
!1073 = metadata !{i32 786443, metadata !5, metadata !557, i32 62, i32 7, i32 0, i32 226} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1074 = metadata !{i32 786688, metadata !1075, metadata !"o", metadata !6, i32 63, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [o] [line 63]
!1075 = metadata !{i32 786443, metadata !5, metadata !1073, i32 62, i32 16, i32 0, i32 227} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1076 = metadata !{i32 63, i32 13, metadata !1075, null}
!1077 = metadata !{i32 63, i32 5, metadata !1075, null}
!1078 = metadata !{i32 65, i32 9, metadata !1079, null}
!1079 = metadata !{i32 786443, metadata !5, metadata !1075, i32 65, i32 9, i32 0, i32 228} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1080 = metadata !{i32 65, i32 22, metadata !1081, null}
!1081 = metadata !{i32 786443, metadata !5, metadata !1079, i32 65, i32 22, i32 1, i32 251} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1082 = metadata !{i32 66, i32 10, metadata !1079, null}
!1083 = metadata !{i32 68, i32 12, metadata !1084, null}
!1084 = metadata !{i32 786443, metadata !5, metadata !1073, i32 68, i32 12, i32 0, i32 229} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1085 = metadata !{i32 70, i32 5, metadata !1086, null}
!1086 = metadata !{i32 786443, metadata !5, metadata !1084, i32 68, i32 28, i32 0, i32 230} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1087 = metadata !{i32 72, i32 12, metadata !1088, null}
!1088 = metadata !{i32 786443, metadata !5, metadata !1084, i32 72, i32 12, i32 0, i32 231} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1089 = metadata !{i32 73, i32 5, metadata !1088, null}
!1090 = metadata !{i32 75, i32 5, metadata !1091, null}
!1091 = metadata !{i32 786443, metadata !5, metadata !1088, i32 74, i32 8, i32 0, i32 232} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1092 = metadata !{i32 77, i32 9, metadata !1093, null}
!1093 = metadata !{i32 786443, metadata !5, metadata !1091, i32 77, i32 9, i32 0, i32 233} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1094 = metadata !{i32 78, i32 7, metadata !1093, null}
!1095 = metadata !{i32 786688, metadata !1096, metadata !"func", metadata !6, i32 80, metadata !533, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [func] [line 80]
!1096 = metadata !{i32 786443, metadata !5, metadata !1093, i32 79, i32 10, i32 0, i32 234} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1097 = metadata !{i32 80, i32 17, metadata !1096, null}
!1098 = metadata !{i32 80, i32 7, metadata !1096, null}
!1099 = metadata !{i32 81, i32 7, metadata !1096, null}
!1100 = metadata !{i32 81, i32 7, metadata !1101, null}
!1101 = metadata !{i32 786443, metadata !5, metadata !1096, i32 81, i32 7, i32 1, i32 252} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1102 = metadata !{i32 81, i32 7, metadata !1103, null}
!1103 = metadata !{i32 786443, metadata !5, metadata !1096, i32 81, i32 7, i32 2, i32 253} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1104 = metadata !{i32 81, i32 7, metadata !1105, null}
!1105 = metadata !{i32 786443, metadata !5, metadata !1106, i32 81, i32 7, i32 4, i32 255} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1106 = metadata !{i32 786443, metadata !5, metadata !1096, i32 81, i32 7, i32 3, i32 254} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1107 = metadata !{i32 84, i32 1, metadata !557, null}
!1108 = metadata !{i32 786689, metadata !554, metadata !"L", metadata !6, i32 16777409, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 193]
!1109 = metadata !{i32 193, i32 33, metadata !554, null}
!1110 = metadata !{i32 786689, metadata !554, metadata !"from", metadata !6, i32 33554625, metadata !34, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [from] [line 193]
!1111 = metadata !{i32 193, i32 42, metadata !554, null}
!1112 = metadata !{i32 786689, metadata !554, metadata !"to", metadata !6, i32 50331841, metadata !34, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [to] [line 193]
!1113 = metadata !{i32 193, i32 54, metadata !554, null}
!1114 = metadata !{i32 194, i32 3, metadata !1115, null}
!1115 = metadata !{i32 786443, metadata !5, metadata !554, i32 194, i32 3, i32 0, i32 221} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1116 = metadata !{i32 194, i32 3, metadata !1117, null}
!1117 = metadata !{i32 786443, metadata !5, metadata !1118, i32 194, i32 3, i32 2, i32 257} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1118 = metadata !{i32 786443, metadata !5, metadata !1115, i32 194, i32 3, i32 1, i32 256} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1119 = metadata !{i32 786688, metadata !1120, metadata !"temp", metadata !6, i32 195, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [temp] [line 195]
!1120 = metadata !{i32 786443, metadata !5, metadata !1115, i32 194, i32 35, i32 0, i32 222} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1121 = metadata !{i32 195, i32 12, metadata !1120, null}
!1122 = metadata !{i32 786688, metadata !1123, metadata !"io1", metadata !6, i32 196, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [io1] [line 196]
!1123 = metadata !{i32 786443, metadata !5, metadata !1120, i32 196, i32 5, i32 0, i32 223} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1124 = metadata !{i32 196, i32 5, metadata !1123, null}
!1125 = metadata !{i32 786688, metadata !1126, metadata !"io1", metadata !6, i32 197, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [io1] [line 197]
!1126 = metadata !{i32 786443, metadata !5, metadata !1120, i32 197, i32 5, i32 0, i32 224} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1127 = metadata !{i32 197, i32 5, metadata !1126, null}
!1128 = metadata !{i32 786688, metadata !1129, metadata !"io1", metadata !6, i32 198, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [io1] [line 198]
!1129 = metadata !{i32 786443, metadata !5, metadata !1120, i32 198, i32 5, i32 0, i32 225} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1130 = metadata !{i32 198, i32 5, metadata !1129, null}
!1131 = metadata !{i32 199, i32 3, metadata !1120, null}
!1132 = metadata !{i32 194, i32 21, metadata !1115, null}
!1133 = metadata !{i32 200, i32 1, metadata !554, null}
!1134 = metadata !{i32 786689, metadata !298, metadata !"L", metadata !6, i32 16777438, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 222]
!1135 = metadata !{i32 222, i32 35, metadata !298, null}
!1136 = metadata !{i32 786689, metadata !298, metadata !"fromidx", metadata !6, i32 33554654, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fromidx] [line 222]
!1137 = metadata !{i32 222, i32 42, metadata !298, null}
!1138 = metadata !{i32 786689, metadata !298, metadata !"toidx", metadata !6, i32 50331870, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [toidx] [line 222]
!1139 = metadata !{i32 222, i32 55, metadata !298, null}
!1140 = metadata !{i32 786688, metadata !298, metadata !"fr", metadata !6, i32 223, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fr] [line 223]
!1141 = metadata !{i32 223, i32 11, metadata !298, null}
!1142 = metadata !{i32 786688, metadata !298, metadata !"to", metadata !6, i32 223, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [to] [line 223]
!1143 = metadata !{i32 223, i32 16, metadata !298, null}
!1144 = metadata !{i32 225, i32 8, metadata !298, null}
!1145 = metadata !{i32 226, i32 8, metadata !298, null}
!1146 = metadata !{i32 786688, metadata !1147, metadata !"io1", metadata !6, i32 228, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [io1] [line 228]
!1147 = metadata !{i32 786443, metadata !5, metadata !298, i32 228, i32 3, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1148 = metadata !{i32 228, i32 3, metadata !1147, null}
!1149 = metadata !{i32 229, i32 7, metadata !1150, null}
!1150 = metadata !{i32 786443, metadata !5, metadata !298, i32 229, i32 7, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1151 = metadata !{i32 230, i32 5, metadata !1150, null}
!1152 = metadata !{i32 230, i32 5, metadata !1153, null}
!1153 = metadata !{i32 786443, metadata !5, metadata !1150, i32 230, i32 5, i32 1, i32 258} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1154 = metadata !{i32 230, i32 5, metadata !1155, null}
!1155 = metadata !{i32 786443, metadata !5, metadata !1150, i32 230, i32 5, i32 3, i32 260} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1156 = metadata !{i32 230, i32 5, metadata !1157, null}
!1157 = metadata !{i32 786443, metadata !5, metadata !1150, i32 230, i32 5, i32 5, i32 262} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1158 = metadata !{i32 230, i32 5, metadata !1159, null}
!1159 = metadata !{i32 786443, metadata !5, metadata !1160, i32 230, i32 5, i32 6, i32 263} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1160 = metadata !{i32 786443, metadata !5, metadata !1161, i32 230, i32 5, i32 4, i32 261} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1161 = metadata !{i32 786443, metadata !5, metadata !1150, i32 230, i32 5, i32 2, i32 259} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1162 = metadata !{i32 230, i32 5, metadata !1163, null}
!1163 = metadata !{i32 786443, metadata !5, metadata !1164, i32 230, i32 5, i32 8, i32 265} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1164 = metadata !{i32 786443, metadata !5, metadata !1150, i32 230, i32 5, i32 7, i32 264} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1165 = metadata !{i32 234, i32 1, metadata !298, null}
!1166 = metadata !{i32 786689, metadata !299, metadata !"L", metadata !6, i32 16777453, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 237]
!1167 = metadata !{i32 237, i32 40, metadata !299, null}
!1168 = metadata !{i32 786689, metadata !299, metadata !"idx", metadata !6, i32 33554669, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [idx] [line 237]
!1169 = metadata !{i32 237, i32 47, metadata !299, null}
!1170 = metadata !{i32 786688, metadata !1171, metadata !"io1", metadata !6, i32 239, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [io1] [line 239]
!1171 = metadata !{i32 786443, metadata !5, metadata !299, i32 239, i32 3, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1172 = metadata !{i32 239, i32 3, metadata !1171, null}
!1173 = metadata !{i32 240, i32 3, metadata !1174, null}
!1174 = metadata !{i32 786443, metadata !5, metadata !299, i32 240, i32 3, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1175 = metadata !{i32 242, i32 1, metadata !299, null}
!1176 = metadata !{i32 786689, metadata !300, metadata !"L", metadata !6, i32 16777467, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 251]
!1177 = metadata !{i32 251, i32 34, metadata !300, null}
!1178 = metadata !{i32 786689, metadata !300, metadata !"idx", metadata !6, i32 33554683, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [idx] [line 251]
!1179 = metadata !{i32 251, i32 41, metadata !300, null}
!1180 = metadata !{i32 786688, metadata !300, metadata !"o", metadata !6, i32 252, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [o] [line 252]
!1181 = metadata !{i32 252, i32 9, metadata !300, null}
!1182 = metadata !{i32 252, i32 13, metadata !300, null}
!1183 = metadata !{i32 253, i32 3, metadata !300, null}
!1184 = metadata !{i32 253, i32 3, metadata !1185, null}
!1185 = metadata !{i32 786443, metadata !5, metadata !300, i32 253, i32 3, i32 1, i32 266} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1186 = metadata !{i32 253, i32 3, metadata !1187, null}
!1187 = metadata !{i32 786443, metadata !5, metadata !300, i32 253, i32 3, i32 2, i32 267} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1188 = metadata !{i32 253, i32 3, metadata !1189, null}
!1189 = metadata !{i32 786443, metadata !5, metadata !1190, i32 253, i32 3, i32 4, i32 269} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1190 = metadata !{i32 786443, metadata !5, metadata !300, i32 253, i32 3, i32 3, i32 268} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1191 = metadata !{i32 786689, metadata !301, metadata !"L", metadata !6, i32 16777473, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 257]
!1192 = metadata !{i32 257, i32 46, metadata !301, null}
!1193 = metadata !{i32 786689, metadata !301, metadata !"t", metadata !6, i32 33554689, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [t] [line 257]
!1194 = metadata !{i32 257, i32 53, metadata !301, null}
!1195 = metadata !{i32 258, i32 3, metadata !301, null}
!1196 = metadata !{i32 260, i32 3, metadata !301, null}
!1197 = metadata !{i32 786689, metadata !304, metadata !"L", metadata !6, i32 16777480, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 264]
!1198 = metadata !{i32 264, i32 41, metadata !304, null}
!1199 = metadata !{i32 786689, metadata !304, metadata !"idx", metadata !6, i32 33554696, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [idx] [line 264]
!1200 = metadata !{i32 264, i32 48, metadata !304, null}
!1201 = metadata !{i32 786688, metadata !304, metadata !"o", metadata !6, i32 265, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [o] [line 265]
!1202 = metadata !{i32 265, i32 9, metadata !304, null}
!1203 = metadata !{i32 265, i32 13, metadata !304, null}
!1204 = metadata !{i32 266, i32 3, metadata !304, null}
!1205 = metadata !{i32 266, i32 3, metadata !1206, null}
!1206 = metadata !{i32 786443, metadata !5, metadata !304, i32 266, i32 3, i32 2, i32 271} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1207 = metadata !{i32 266, i32 3, metadata !1208, null}
!1208 = metadata !{i32 786443, metadata !5, metadata !1209, i32 266, i32 3, i32 3, i32 272} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1209 = metadata !{i32 786443, metadata !5, metadata !304, i32 266, i32 3, i32 1, i32 270} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1210 = metadata !{i32 786689, metadata !305, metadata !"L", metadata !6, i32 16777486, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 270]
!1211 = metadata !{i32 270, i32 39, metadata !305, null}
!1212 = metadata !{i32 786689, metadata !305, metadata !"idx", metadata !6, i32 33554702, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [idx] [line 270]
!1213 = metadata !{i32 270, i32 46, metadata !305, null}
!1214 = metadata !{i32 786688, metadata !305, metadata !"o", metadata !6, i32 271, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [o] [line 271]
!1215 = metadata !{i32 271, i32 9, metadata !305, null}
!1216 = metadata !{i32 271, i32 13, metadata !305, null}
!1217 = metadata !{i32 272, i32 3, metadata !305, null}
!1218 = metadata !{i32 786689, metadata !306, metadata !"L", metadata !6, i32 16777492, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 276]
!1219 = metadata !{i32 276, i32 38, metadata !306, null}
!1220 = metadata !{i32 786689, metadata !306, metadata !"idx", metadata !6, i32 33554708, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [idx] [line 276]
!1221 = metadata !{i32 276, i32 45, metadata !306, null}
!1222 = metadata !{i32 786688, metadata !306, metadata !"n", metadata !6, i32 277, metadata !56, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 277]
!1223 = metadata !{i32 277, i32 14, metadata !306, null}
!1224 = metadata !{i32 786688, metadata !306, metadata !"o", metadata !6, i32 278, metadata !549, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [o] [line 278]
!1225 = metadata !{i32 278, i32 17, metadata !306, null}
!1226 = metadata !{i32 278, i32 21, metadata !306, null}
!1227 = metadata !{i32 279, i32 3, metadata !306, null}
!1228 = metadata !{i32 279, i32 3, metadata !1229, null}
!1229 = metadata !{i32 786443, metadata !5, metadata !306, i32 279, i32 3, i32 1, i32 273} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1230 = metadata !{i32 279, i32 10, metadata !1231, null}
!1231 = metadata !{i32 786443, metadata !5, metadata !306, i32 279, i32 10, i32 2, i32 274} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1232 = metadata !{i32 279, i32 10, metadata !306, null}
!1233 = metadata !{i32 279, i32 10, metadata !1234, null}
!1234 = metadata !{i32 786443, metadata !5, metadata !1235, i32 279, i32 10, i32 4, i32 276} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1235 = metadata !{i32 786443, metadata !5, metadata !306, i32 279, i32 10, i32 3, i32 275} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1236 = metadata !{i32 786689, metadata !307, metadata !"L", metadata !6, i32 16777499, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 283]
!1237 = metadata !{i32 283, i32 38, metadata !307, null}
!1238 = metadata !{i32 786689, metadata !307, metadata !"idx", metadata !6, i32 33554715, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [idx] [line 283]
!1239 = metadata !{i32 283, i32 45, metadata !307, null}
!1240 = metadata !{i32 786688, metadata !307, metadata !"o", metadata !6, i32 284, metadata !549, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [o] [line 284]
!1241 = metadata !{i32 284, i32 17, metadata !307, null}
!1242 = metadata !{i32 284, i32 21, metadata !307, null}
!1243 = metadata !{i32 285, i32 3, metadata !307, null}
!1244 = metadata !{i32 285, i32 3, metadata !1245, null}
!1245 = metadata !{i32 786443, metadata !5, metadata !307, i32 285, i32 3, i32 2, i32 278} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1246 = metadata !{i32 285, i32 3, metadata !1247, null}
!1247 = metadata !{i32 786443, metadata !5, metadata !1248, i32 285, i32 3, i32 3, i32 279} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1248 = metadata !{i32 786443, metadata !5, metadata !307, i32 285, i32 3, i32 1, i32 277} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1249 = metadata !{i32 786689, metadata !308, metadata !"L", metadata !6, i32 16777505, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 289]
!1250 = metadata !{i32 289, i32 40, metadata !308, null}
!1251 = metadata !{i32 786689, metadata !308, metadata !"idx", metadata !6, i32 33554721, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [idx] [line 289]
!1252 = metadata !{i32 289, i32 47, metadata !308, null}
!1253 = metadata !{i32 786688, metadata !308, metadata !"o", metadata !6, i32 290, metadata !549, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [o] [line 290]
!1254 = metadata !{i32 290, i32 17, metadata !308, null}
!1255 = metadata !{i32 290, i32 21, metadata !308, null}
!1256 = metadata !{i32 291, i32 3, metadata !308, null}
!1257 = metadata !{i32 291, i32 3, metadata !1258, null}
!1258 = metadata !{i32 786443, metadata !5, metadata !308, i32 291, i32 3, i32 2, i32 281} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1259 = metadata !{i32 291, i32 3, metadata !1260, null}
!1260 = metadata !{i32 786443, metadata !5, metadata !1261, i32 291, i32 3, i32 3, i32 282} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1261 = metadata !{i32 786443, metadata !5, metadata !308, i32 291, i32 3, i32 1, i32 280} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1262 = metadata !{i32 786689, metadata !309, metadata !"L", metadata !6, i32 16777511, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 295]
!1263 = metadata !{i32 295, i32 38, metadata !309, null}
!1264 = metadata !{i32 786689, metadata !309, metadata !"index1", metadata !6, i32 33554727, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [index1] [line 295]
!1265 = metadata !{i32 295, i32 45, metadata !309, null}
!1266 = metadata !{i32 786689, metadata !309, metadata !"index2", metadata !6, i32 50331943, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [index2] [line 295]
!1267 = metadata !{i32 295, i32 57, metadata !309, null}
!1268 = metadata !{i32 786688, metadata !309, metadata !"o1", metadata !6, i32 296, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [o1] [line 296]
!1269 = metadata !{i32 296, i32 9, metadata !309, null}
!1270 = metadata !{i32 296, i32 14, metadata !309, null}
!1271 = metadata !{i32 786688, metadata !309, metadata !"o2", metadata !6, i32 297, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [o2] [line 297]
!1272 = metadata !{i32 297, i32 9, metadata !309, null}
!1273 = metadata !{i32 297, i32 14, metadata !309, null}
!1274 = metadata !{i32 298, i32 3, metadata !309, null}
!1275 = metadata !{i32 298, i32 3, metadata !1276, null}
!1276 = metadata !{i32 786443, metadata !5, metadata !309, i32 298, i32 3, i32 1, i32 283} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1277 = metadata !{i32 298, i32 41, metadata !1278, null}
!1278 = metadata !{i32 786443, metadata !5, metadata !309, i32 298, i32 41, i32 3, i32 285} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1279 = metadata !{i32 298, i32 41, metadata !1280, null}
!1280 = metadata !{i32 786443, metadata !5, metadata !1281, i32 298, i32 41, i32 4, i32 286} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1281 = metadata !{i32 786443, metadata !5, metadata !309, i32 298, i32 41, i32 2, i32 284} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1282 = metadata !{i32 298, i32 41, metadata !309, null}
!1283 = metadata !{i32 298, i32 41, metadata !1284, null}
!1284 = metadata !{i32 786443, metadata !5, metadata !1285, i32 298, i32 41, i32 6, i32 288} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1285 = metadata !{i32 786443, metadata !5, metadata !309, i32 298, i32 41, i32 5, i32 287} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1286 = metadata !{i32 786689, metadata !312, metadata !"L", metadata !6, i32 16777518, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 302]
!1287 = metadata !{i32 302, i32 36, metadata !312, null}
!1288 = metadata !{i32 786689, metadata !312, metadata !"op", metadata !6, i32 33554734, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [op] [line 302]
!1289 = metadata !{i32 302, i32 43, metadata !312, null}
!1290 = metadata !{i32 304, i32 7, metadata !1291, null}
!1291 = metadata !{i32 786443, metadata !5, metadata !312, i32 304, i32 7, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1292 = metadata !{i32 304, i32 7, metadata !1293, null}
!1293 = metadata !{i32 786443, metadata !5, metadata !1291, i32 304, i32 7, i32 1, i32 289} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1294 = metadata !{i32 305, i32 5, metadata !1291, null}
!1295 = metadata !{i32 786688, metadata !1296, metadata !"io1", metadata !6, i32 308, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [io1] [line 308]
!1296 = metadata !{i32 786443, metadata !5, metadata !1297, i32 308, i32 5, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1297 = metadata !{i32 786443, metadata !5, metadata !1291, i32 306, i32 8, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1298 = metadata !{i32 308, i32 5, metadata !1296, null}
!1299 = metadata !{i32 309, i32 5, metadata !1300, null}
!1300 = metadata !{i32 786443, metadata !5, metadata !1297, i32 309, i32 5, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1301 = metadata !{i32 312, i32 3, metadata !312, null}
!1302 = metadata !{i32 313, i32 3, metadata !312, null}
!1303 = metadata !{i32 315, i32 1, metadata !312, null}
!1304 = metadata !{i32 786689, metadata !313, metadata !"L", metadata !6, i32 16777534, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 318]
!1305 = metadata !{i32 318, i32 37, metadata !313, null}
!1306 = metadata !{i32 786689, metadata !313, metadata !"index1", metadata !6, i32 33554750, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [index1] [line 318]
!1307 = metadata !{i32 318, i32 44, metadata !313, null}
!1308 = metadata !{i32 786689, metadata !313, metadata !"index2", metadata !6, i32 50331966, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [index2] [line 318]
!1309 = metadata !{i32 318, i32 56, metadata !313, null}
!1310 = metadata !{i32 786689, metadata !313, metadata !"op", metadata !6, i32 67109182, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [op] [line 318]
!1311 = metadata !{i32 318, i32 68, metadata !313, null}
!1312 = metadata !{i32 786688, metadata !313, metadata !"o1", metadata !6, i32 319, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [o1] [line 319]
!1313 = metadata !{i32 319, i32 9, metadata !313, null}
!1314 = metadata !{i32 786688, metadata !313, metadata !"o2", metadata !6, i32 319, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [o2] [line 319]
!1315 = metadata !{i32 319, i32 13, metadata !313, null}
!1316 = metadata !{i32 786688, metadata !313, metadata !"i", metadata !6, i32 320, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 320]
!1317 = metadata !{i32 320, i32 7, metadata !313, null}
!1318 = metadata !{i32 320, i32 3, metadata !313, null}
!1319 = metadata !{i32 322, i32 8, metadata !313, null}
!1320 = metadata !{i32 323, i32 8, metadata !313, null}
!1321 = metadata !{i32 324, i32 7, metadata !1322, null}
!1322 = metadata !{i32 786443, metadata !5, metadata !313, i32 324, i32 7, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1323 = metadata !{i32 324, i32 7, metadata !1324, null}
!1324 = metadata !{i32 786443, metadata !5, metadata !1322, i32 324, i32 7, i32 1, i32 290} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1325 = metadata !{i32 325, i32 5, metadata !1326, null}
!1326 = metadata !{i32 786443, metadata !5, metadata !1322, i32 324, i32 35, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1327 = metadata !{i32 326, i32 26, metadata !1328, null}
!1328 = metadata !{i32 786443, metadata !5, metadata !1326, i32 325, i32 17, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1329 = metadata !{i32 326, i32 52, metadata !1328, null}
!1330 = metadata !{i32 327, i32 26, metadata !1328, null}
!1331 = metadata !{i32 327, i32 52, metadata !1328, null}
!1332 = metadata !{i32 328, i32 26, metadata !1328, null}
!1333 = metadata !{i32 328, i32 53, metadata !1328, null}
!1334 = metadata !{i32 330, i32 5, metadata !1328, null}
!1335 = metadata !{i32 331, i32 3, metadata !1326, null}
!1336 = metadata !{i32 333, i32 3, metadata !313, null}
!1337 = metadata !{i32 786689, metadata !316, metadata !"L", metadata !6, i32 16777553, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 337]
!1338 = metadata !{i32 337, i32 47, metadata !316, null}
!1339 = metadata !{i32 786689, metadata !316, metadata !"s", metadata !6, i32 33554769, metadata !251, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 337]
!1340 = metadata !{i32 337, i32 62, metadata !316, null}
!1341 = metadata !{i32 786688, metadata !316, metadata !"sz", metadata !6, i32 338, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sz] [line 338]
!1342 = metadata !{i32 338, i32 10, metadata !316, null}
!1343 = metadata !{i32 338, i32 15, metadata !316, null}
!1344 = metadata !{i32 339, i32 7, metadata !1345, null}
!1345 = metadata !{i32 786443, metadata !5, metadata !316, i32 339, i32 7, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1346 = metadata !{i32 340, i32 5, metadata !1347, null}
!1347 = metadata !{i32 786443, metadata !5, metadata !1345, i32 340, i32 5, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1348 = metadata !{i32 341, i32 3, metadata !316, null}
!1349 = metadata !{i32 786689, metadata !319, metadata !"L", metadata !6, i32 16777561, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 345]
!1350 = metadata !{i32 345, i32 46, metadata !319, null}
!1351 = metadata !{i32 786689, metadata !319, metadata !"idx", metadata !6, i32 33554777, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [idx] [line 345]
!1352 = metadata !{i32 345, i32 53, metadata !319, null}
!1353 = metadata !{i32 786689, metadata !319, metadata !"pisnum", metadata !6, i32 50331993, metadata !322, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pisnum] [line 345]
!1354 = metadata !{i32 345, i32 63, metadata !319, null}
!1355 = metadata !{i32 786688, metadata !319, metadata !"n", metadata !6, i32 346, metadata !56, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 346]
!1356 = metadata !{i32 346, i32 14, metadata !319, null}
!1357 = metadata !{i32 786688, metadata !319, metadata !"o", metadata !6, i32 347, metadata !549, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [o] [line 347]
!1358 = metadata !{i32 347, i32 17, metadata !319, null}
!1359 = metadata !{i32 347, i32 21, metadata !319, null}
!1360 = metadata !{i32 786688, metadata !319, metadata !"isnum", metadata !6, i32 348, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [isnum] [line 348]
!1361 = metadata !{i32 348, i32 7, metadata !319, null}
!1362 = metadata !{i32 348, i32 3, metadata !319, null}
!1363 = metadata !{i32 348, i32 3, metadata !1364, null}
!1364 = metadata !{i32 786443, metadata !5, metadata !319, i32 348, i32 3, i32 1, i32 291} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1365 = metadata !{i32 348, i32 15, metadata !1366, null}
!1366 = metadata !{i32 786443, metadata !5, metadata !319, i32 348, i32 15, i32 2, i32 292} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1367 = metadata !{i32 348, i32 15, metadata !319, null}
!1368 = metadata !{i32 348, i32 15, metadata !1369, null}
!1369 = metadata !{i32 786443, metadata !5, metadata !1370, i32 348, i32 15, i32 4, i32 294} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1370 = metadata !{i32 786443, metadata !5, metadata !319, i32 348, i32 15, i32 3, i32 293} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1371 = metadata !{i32 349, i32 7, metadata !1372, null}
!1372 = metadata !{i32 786443, metadata !5, metadata !319, i32 349, i32 7, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1373 = metadata !{i32 350, i32 5, metadata !1372, null}
!1374 = metadata !{i32 351, i32 7, metadata !1375, null}
!1375 = metadata !{i32 786443, metadata !5, metadata !319, i32 351, i32 7, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1376 = metadata !{i32 351, i32 15, metadata !1377, null}
!1377 = metadata !{i32 786443, metadata !5, metadata !1375, i32 351, i32 15, i32 1, i32 295} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1378 = metadata !{i32 352, i32 3, metadata !319, null}
!1379 = metadata !{i32 786689, metadata !323, metadata !"L", metadata !6, i32 16777572, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 356]
!1380 = metadata !{i32 356, i32 48, metadata !323, null}
!1381 = metadata !{i32 786689, metadata !323, metadata !"idx", metadata !6, i32 33554788, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [idx] [line 356]
!1382 = metadata !{i32 356, i32 55, metadata !323, null}
!1383 = metadata !{i32 786689, metadata !323, metadata !"pisnum", metadata !6, i32 50332004, metadata !322, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pisnum] [line 356]
!1384 = metadata !{i32 356, i32 65, metadata !323, null}
!1385 = metadata !{i32 786688, metadata !323, metadata !"res", metadata !6, i32 357, metadata !53, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [res] [line 357]
!1386 = metadata !{i32 357, i32 15, metadata !323, null}
!1387 = metadata !{i32 786688, metadata !323, metadata !"o", metadata !6, i32 358, metadata !549, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [o] [line 358]
!1388 = metadata !{i32 358, i32 17, metadata !323, null}
!1389 = metadata !{i32 358, i32 21, metadata !323, null}
!1390 = metadata !{i32 786688, metadata !323, metadata !"isnum", metadata !6, i32 359, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [isnum] [line 359]
!1391 = metadata !{i32 359, i32 7, metadata !323, null}
!1392 = metadata !{i32 359, i32 3, metadata !323, null}
!1393 = metadata !{i32 359, i32 3, metadata !1394, null}
!1394 = metadata !{i32 786443, metadata !5, metadata !323, i32 359, i32 3, i32 1, i32 296} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1395 = metadata !{i32 359, i32 15, metadata !1396, null}
!1396 = metadata !{i32 786443, metadata !5, metadata !323, i32 359, i32 15, i32 2, i32 297} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1397 = metadata !{i32 359, i32 15, metadata !323, null}
!1398 = metadata !{i32 359, i32 15, metadata !1399, null}
!1399 = metadata !{i32 786443, metadata !5, metadata !1400, i32 359, i32 15, i32 4, i32 299} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1400 = metadata !{i32 786443, metadata !5, metadata !323, i32 359, i32 15, i32 3, i32 298} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1401 = metadata !{i32 360, i32 7, metadata !1402, null}
!1402 = metadata !{i32 786443, metadata !5, metadata !323, i32 360, i32 7, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1403 = metadata !{i32 361, i32 5, metadata !1402, null}
!1404 = metadata !{i32 362, i32 7, metadata !1405, null}
!1405 = metadata !{i32 786443, metadata !5, metadata !323, i32 362, i32 7, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1406 = metadata !{i32 362, i32 15, metadata !1407, null}
!1407 = metadata !{i32 786443, metadata !5, metadata !1405, i32 362, i32 15, i32 1, i32 300} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1408 = metadata !{i32 363, i32 3, metadata !323, null}
!1409 = metadata !{i32 786689, metadata !326, metadata !"L", metadata !6, i32 16777583, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 367]
!1410 = metadata !{i32 367, i32 39, metadata !326, null}
!1411 = metadata !{i32 786689, metadata !326, metadata !"idx", metadata !6, i32 33554799, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [idx] [line 367]
!1412 = metadata !{i32 367, i32 46, metadata !326, null}
!1413 = metadata !{i32 786688, metadata !326, metadata !"o", metadata !6, i32 368, metadata !549, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [o] [line 368]
!1414 = metadata !{i32 368, i32 17, metadata !326, null}
!1415 = metadata !{i32 368, i32 21, metadata !326, null}
!1416 = metadata !{i32 369, i32 3, metadata !326, null}
!1417 = metadata !{i32 369, i32 3, metadata !1418, null}
!1418 = metadata !{i32 786443, metadata !5, metadata !326, i32 369, i32 3, i32 2, i32 302} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1419 = metadata !{i32 369, i32 3, metadata !1420, null}
!1420 = metadata !{i32 786443, metadata !5, metadata !326, i32 369, i32 3, i32 3, i32 303} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1421 = metadata !{i32 369, i32 3, metadata !1422, null}
!1422 = metadata !{i32 786443, metadata !5, metadata !326, i32 369, i32 3, i32 4, i32 304} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1423 = metadata !{i32 369, i32 3, metadata !1424, null}
!1424 = metadata !{i32 786443, metadata !5, metadata !1425, i32 369, i32 3, i32 5, i32 305} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1425 = metadata !{i32 786443, metadata !5, metadata !326, i32 369, i32 3, i32 1, i32 301} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1426 = metadata !{i32 786689, metadata !327, metadata !"L", metadata !6, i32 16777589, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 373]
!1427 = metadata !{i32 373, i32 47, metadata !327, null}
!1428 = metadata !{i32 786689, metadata !327, metadata !"idx", metadata !6, i32 33554805, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [idx] [line 373]
!1429 = metadata !{i32 373, i32 54, metadata !327, null}
!1430 = metadata !{i32 786689, metadata !327, metadata !"len", metadata !6, i32 50332021, metadata !330, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [len] [line 373]
!1431 = metadata !{i32 373, i32 67, metadata !327, null}
!1432 = metadata !{i32 786688, metadata !327, metadata !"o", metadata !6, i32 374, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [o] [line 374]
!1433 = metadata !{i32 374, i32 9, metadata !327, null}
!1434 = metadata !{i32 374, i32 13, metadata !327, null}
!1435 = metadata !{i32 375, i32 7, metadata !1436, null}
!1436 = metadata !{i32 786443, metadata !5, metadata !327, i32 375, i32 7, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1437 = metadata !{i32 376, i32 9, metadata !1438, null}
!1438 = metadata !{i32 786443, metadata !5, metadata !1439, i32 376, i32 9, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1439 = metadata !{i32 786443, metadata !5, metadata !1436, i32 375, i32 23, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1440 = metadata !{i32 377, i32 11, metadata !1441, null}
!1441 = metadata !{i32 786443, metadata !5, metadata !1442, i32 377, i32 11, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1442 = metadata !{i32 786443, metadata !5, metadata !1438, i32 376, i32 22, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1443 = metadata !{i32 377, i32 24, metadata !1444, null}
!1444 = metadata !{i32 786443, metadata !5, metadata !1441, i32 377, i32 24, i32 1, i32 306} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1445 = metadata !{i32 378, i32 7, metadata !1442, null}
!1446 = metadata !{i32 381, i32 5, metadata !1439, null}
!1447 = metadata !{i32 382, i32 5, metadata !1448, null}
!1448 = metadata !{i32 786443, metadata !5, metadata !1449, i32 382, i32 5, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1449 = metadata !{i32 786443, metadata !5, metadata !1439, i32 382, i32 5, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1450 = metadata !{i32 382, i32 5, metadata !1451, null}
!1451 = metadata !{i32 786443, metadata !5, metadata !1452, i32 382, i32 5, i32 1, i32 307} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1452 = metadata !{i32 786443, metadata !5, metadata !1448, i32 382, i32 5, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1453 = metadata !{i32 383, i32 9, metadata !1439, null}
!1454 = metadata !{i32 385, i32 3, metadata !1439, null}
!1455 = metadata !{i32 386, i32 7, metadata !1456, null}
!1456 = metadata !{i32 786443, metadata !5, metadata !327, i32 386, i32 7, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1457 = metadata !{i32 387, i32 5, metadata !1456, null}
!1458 = metadata !{i32 387, i32 5, metadata !1459, null}
!1459 = metadata !{i32 786443, metadata !5, metadata !1456, i32 387, i32 5, i32 1, i32 308} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1460 = metadata !{i32 387, i32 5, metadata !1461, null}
!1461 = metadata !{i32 786443, metadata !5, metadata !1456, i32 387, i32 5, i32 2, i32 309} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1462 = metadata !{i32 387, i32 5, metadata !1463, null}
!1463 = metadata !{i32 786443, metadata !5, metadata !1464, i32 387, i32 5, i32 4, i32 311} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1464 = metadata !{i32 786443, metadata !5, metadata !1456, i32 387, i32 5, i32 3, i32 310} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1465 = metadata !{i32 388, i32 3, metadata !327, null}
!1466 = metadata !{i32 389, i32 1, metadata !327, null}
!1467 = metadata !{i32 786689, metadata !331, metadata !"L", metadata !6, i32 16777608, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 392]
!1468 = metadata !{i32 392, i32 39, metadata !331, null}
!1469 = metadata !{i32 786689, metadata !331, metadata !"idx", metadata !6, i32 33554824, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [idx] [line 392]
!1470 = metadata !{i32 392, i32 46, metadata !331, null}
!1471 = metadata !{i32 786688, metadata !331, metadata !"o", metadata !6, i32 393, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [o] [line 393]
!1472 = metadata !{i32 393, i32 9, metadata !331, null}
!1473 = metadata !{i32 393, i32 13, metadata !331, null}
!1474 = metadata !{i32 394, i32 3, metadata !331, null}
!1475 = metadata !{i32 395, i32 23, metadata !1476, null}
!1476 = metadata !{i32 786443, metadata !5, metadata !331, i32 394, i32 21, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1477 = metadata !{i32 396, i32 23, metadata !1476, null}
!1478 = metadata !{i32 397, i32 25, metadata !1476, null}
!1479 = metadata !{i32 398, i32 29, metadata !1476, null}
!1480 = metadata !{i32 399, i32 14, metadata !1476, null}
!1481 = metadata !{i32 401, i32 1, metadata !331, null}
!1482 = metadata !{i32 786689, metadata !334, metadata !"L", metadata !6, i32 16777620, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 404]
!1483 = metadata !{i32 404, i32 51, metadata !334, null}
!1484 = metadata !{i32 786689, metadata !334, metadata !"idx", metadata !6, i32 33554836, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [idx] [line 404]
!1485 = metadata !{i32 404, i32 58, metadata !334, null}
!1486 = metadata !{i32 786688, metadata !334, metadata !"o", metadata !6, i32 405, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [o] [line 405]
!1487 = metadata !{i32 405, i32 9, metadata !334, null}
!1488 = metadata !{i32 405, i32 13, metadata !334, null}
!1489 = metadata !{i32 406, i32 7, metadata !1490, null}
!1490 = metadata !{i32 786443, metadata !5, metadata !334, i32 406, i32 7, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1491 = metadata !{i32 406, i32 19, metadata !1492, null}
!1492 = metadata !{i32 786443, metadata !5, metadata !1490, i32 406, i32 19, i32 1, i32 312} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1493 = metadata !{i32 407, i32 12, metadata !1494, null}
!1494 = metadata !{i32 786443, metadata !5, metadata !1490, i32 407, i32 12, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1495 = metadata !{i32 408, i32 5, metadata !1494, null}
!1496 = metadata !{i32 409, i32 8, metadata !1494, null}
!1497 = metadata !{i32 410, i32 1, metadata !334, null}
!1498 = metadata !{i32 786689, metadata !337, metadata !"L", metadata !6, i32 16777629, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 413]
!1499 = metadata !{i32 413, i32 42, metadata !337, null}
!1500 = metadata !{i32 786689, metadata !337, metadata !"idx", metadata !6, i32 33554845, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [idx] [line 413]
!1501 = metadata !{i32 413, i32 49, metadata !337, null}
!1502 = metadata !{i32 786688, metadata !337, metadata !"o", metadata !6, i32 414, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [o] [line 414]
!1503 = metadata !{i32 414, i32 9, metadata !337, null}
!1504 = metadata !{i32 414, i32 13, metadata !337, null}
!1505 = metadata !{i32 415, i32 3, metadata !337, null}
!1506 = metadata !{i32 416, i32 25, metadata !1507, null}
!1507 = metadata !{i32 786443, metadata !5, metadata !337, i32 415, i32 21, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1508 = metadata !{i32 417, i32 30, metadata !1507, null}
!1509 = metadata !{i32 418, i32 14, metadata !1507, null}
!1510 = metadata !{i32 420, i32 1, metadata !337, null}
!1511 = metadata !{i32 786689, metadata !340, metadata !"L", metadata !6, i32 16777639, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 423]
!1512 = metadata !{i32 423, i32 45, metadata !340, null}
!1513 = metadata !{i32 786689, metadata !340, metadata !"idx", metadata !6, i32 33554855, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [idx] [line 423]
!1514 = metadata !{i32 423, i32 52, metadata !340, null}
!1515 = metadata !{i32 786688, metadata !340, metadata !"o", metadata !6, i32 424, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [o] [line 424]
!1516 = metadata !{i32 424, i32 9, metadata !340, null}
!1517 = metadata !{i32 424, i32 13, metadata !340, null}
!1518 = metadata !{i32 425, i32 3, metadata !340, null}
!1519 = metadata !{i32 425, i32 3, metadata !1520, null}
!1520 = metadata !{i32 786443, metadata !5, metadata !340, i32 425, i32 3, i32 2, i32 314} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1521 = metadata !{i32 425, i32 3, metadata !1522, null}
!1522 = metadata !{i32 786443, metadata !5, metadata !340, i32 425, i32 3, i32 1, i32 313} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1523 = metadata !{i32 425, i32 3, metadata !1524, null}
!1524 = metadata !{i32 786443, metadata !5, metadata !1525, i32 425, i32 3, i32 4, i32 316} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1525 = metadata !{i32 786443, metadata !5, metadata !340, i32 425, i32 3, i32 3, i32 315} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1526 = metadata !{i32 786689, metadata !343, metadata !"L", metadata !6, i32 16777645, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 429]
!1527 = metadata !{i32 429, i32 47, metadata !343, null}
!1528 = metadata !{i32 786689, metadata !343, metadata !"idx", metadata !6, i32 33554861, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [idx] [line 429]
!1529 = metadata !{i32 429, i32 54, metadata !343, null}
!1530 = metadata !{i32 786688, metadata !343, metadata !"o", metadata !6, i32 430, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [o] [line 430]
!1531 = metadata !{i32 430, i32 9, metadata !343, null}
!1532 = metadata !{i32 430, i32 13, metadata !343, null}
!1533 = metadata !{i32 431, i32 3, metadata !343, null}
!1534 = metadata !{i32 432, i32 22, metadata !1535, null}
!1535 = metadata !{i32 786443, metadata !5, metadata !343, i32 431, i32 21, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1536 = metadata !{i32 433, i32 20, metadata !1535, null}
!1537 = metadata !{i32 434, i32 20, metadata !1535, null}
!1538 = metadata !{i32 435, i32 20, metadata !1535, null}
!1539 = metadata !{i32 436, i32 23, metadata !1535, null}
!1540 = metadata !{i32 437, i32 25, metadata !1535, null}
!1541 = metadata !{i32 438, i32 30, metadata !1535, null}
!1542 = metadata !{i32 439, i32 14, metadata !1535, null}
!1543 = metadata !{i32 441, i32 1, metadata !343, null}
!1544 = metadata !{i32 786689, metadata !348, metadata !"L", metadata !6, i32 16777666, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 450]
!1545 = metadata !{i32 450, i32 38, metadata !348, null}
!1546 = metadata !{i32 452, i32 3, metadata !348, null}
!1547 = metadata !{i32 453, i32 3, metadata !1548, null}
!1548 = metadata !{i32 786443, metadata !5, metadata !348, i32 453, i32 3, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1549 = metadata !{i32 455, i32 1, metadata !348, null}
!1550 = metadata !{i32 786689, metadata !351, metadata !"L", metadata !6, i32 16777674, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 458]
!1551 = metadata !{i32 458, i32 41, metadata !351, null}
!1552 = metadata !{i32 786689, metadata !351, metadata !"n", metadata !6, i32 33554890, metadata !56, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 458]
!1553 = metadata !{i32 458, i32 55, metadata !351, null}
!1554 = metadata !{i32 786688, metadata !1555, metadata !"io", metadata !6, i32 460, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [io] [line 460]
!1555 = metadata !{i32 786443, metadata !5, metadata !351, i32 460, i32 3, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1556 = metadata !{i32 460, i32 3, metadata !1555, null}
!1557 = metadata !{i32 461, i32 3, metadata !1558, null}
!1558 = metadata !{i32 786443, metadata !5, metadata !351, i32 461, i32 3, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1559 = metadata !{i32 463, i32 1, metadata !351, null}
!1560 = metadata !{i32 786689, metadata !354, metadata !"L", metadata !6, i32 16777682, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 466]
!1561 = metadata !{i32 466, i32 42, metadata !354, null}
!1562 = metadata !{i32 786689, metadata !354, metadata !"n", metadata !6, i32 33554898, metadata !53, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 466]
!1563 = metadata !{i32 466, i32 57, metadata !354, null}
!1564 = metadata !{i32 786688, metadata !1565, metadata !"io", metadata !6, i32 468, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [io] [line 468]
!1565 = metadata !{i32 786443, metadata !5, metadata !354, i32 468, i32 3, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1566 = metadata !{i32 468, i32 3, metadata !1565, null}
!1567 = metadata !{i32 469, i32 3, metadata !1568, null}
!1568 = metadata !{i32 786443, metadata !5, metadata !354, i32 469, i32 3, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1569 = metadata !{i32 471, i32 1, metadata !354, null}
!1570 = metadata !{i32 786689, metadata !357, metadata !"L", metadata !6, i32 16777695, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 479]
!1571 = metadata !{i32 479, i32 49, metadata !357, null}
!1572 = metadata !{i32 786689, metadata !357, metadata !"s", metadata !6, i32 33554911, metadata !251, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 479]
!1573 = metadata !{i32 479, i32 64, metadata !357, null}
!1574 = metadata !{i32 786689, metadata !357, metadata !"len", metadata !6, i32 50332127, metadata !69, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [len] [line 479]
!1575 = metadata !{i32 479, i32 74, metadata !357, null}
!1576 = metadata !{i32 786688, metadata !357, metadata !"ts", metadata !6, i32 480, metadata !86, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ts] [line 480]
!1577 = metadata !{i32 480, i32 12, metadata !357, null}
!1578 = metadata !{i32 482, i32 3, metadata !357, null}
!1579 = metadata !{i32 482, i32 21, metadata !1580, null}
!1580 = metadata !{i32 786443, metadata !5, metadata !357, i32 482, i32 21, i32 1, i32 317} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1581 = metadata !{i32 482, i32 39, metadata !1582, null}
!1582 = metadata !{i32 786443, metadata !5, metadata !357, i32 482, i32 39, i32 2, i32 318} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1583 = metadata !{i32 482, i32 39, metadata !357, null}
!1584 = metadata !{i32 482, i32 39, metadata !1585, null}
!1585 = metadata !{i32 786443, metadata !5, metadata !1586, i32 482, i32 39, i32 4, i32 320} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1586 = metadata !{i32 786443, metadata !5, metadata !357, i32 482, i32 39, i32 3, i32 319} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1587 = metadata !{i32 786688, metadata !1588, metadata !"io", metadata !6, i32 483, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [io] [line 483]
!1588 = metadata !{i32 786443, metadata !5, metadata !357, i32 483, i32 3, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1589 = metadata !{i32 483, i32 3, metadata !1588, null}
!1590 = metadata !{i32 786688, metadata !1588, metadata !"x_", metadata !6, i32 483, metadata !86, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x_] [line 483]
!1591 = metadata !{i32 484, i32 3, metadata !1592, null}
!1592 = metadata !{i32 786443, metadata !5, metadata !357, i32 484, i32 3, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1593 = metadata !{i32 485, i32 3, metadata !1594, null}
!1594 = metadata !{i32 786443, metadata !5, metadata !1595, i32 485, i32 3, i32 0, i32 51} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1595 = metadata !{i32 786443, metadata !5, metadata !357, i32 485, i32 3, i32 0, i32 50} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1596 = metadata !{i32 485, i32 3, metadata !1597, null}
!1597 = metadata !{i32 786443, metadata !5, metadata !1598, i32 485, i32 3, i32 1, i32 321} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1598 = metadata !{i32 786443, metadata !5, metadata !1594, i32 485, i32 3, i32 0, i32 52} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1599 = metadata !{i32 487, i32 3, metadata !357, null}
!1600 = metadata !{i32 786689, metadata !360, metadata !"L", metadata !6, i32 16777707, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 491]
!1601 = metadata !{i32 491, i32 48, metadata !360, null}
!1602 = metadata !{i32 786689, metadata !360, metadata !"s", metadata !6, i32 33554923, metadata !251, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 491]
!1603 = metadata !{i32 491, i32 63, metadata !360, null}
!1604 = metadata !{i32 493, i32 7, metadata !1605, null}
!1605 = metadata !{i32 786443, metadata !5, metadata !360, i32 493, i32 7, i32 0, i32 53} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1606 = metadata !{i32 494, i32 5, metadata !1605, null}
!1607 = metadata !{i32 786688, metadata !1608, metadata !"ts", metadata !6, i32 496, metadata !86, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ts] [line 496]
!1608 = metadata !{i32 786443, metadata !5, metadata !1605, i32 495, i32 8, i32 0, i32 54} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1609 = metadata !{i32 496, i32 14, metadata !1608, null}
!1610 = metadata !{i32 497, i32 10, metadata !1608, null}
!1611 = metadata !{i32 786688, metadata !1612, metadata !"io", metadata !6, i32 498, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [io] [line 498]
!1612 = metadata !{i32 786443, metadata !5, metadata !1608, i32 498, i32 5, i32 0, i32 55} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1613 = metadata !{i32 498, i32 5, metadata !1612, null}
!1614 = metadata !{i32 786688, metadata !1612, metadata !"x_", metadata !6, i32 498, metadata !86, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x_] [line 498]
!1615 = metadata !{i32 499, i32 5, metadata !1608, null}
!1616 = metadata !{i32 501, i32 3, metadata !1617, null}
!1617 = metadata !{i32 786443, metadata !5, metadata !360, i32 501, i32 3, i32 0, i32 56} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1618 = metadata !{i32 502, i32 3, metadata !1619, null}
!1619 = metadata !{i32 786443, metadata !5, metadata !1620, i32 502, i32 3, i32 0, i32 58} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1620 = metadata !{i32 786443, metadata !5, metadata !360, i32 502, i32 3, i32 0, i32 57} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1621 = metadata !{i32 502, i32 3, metadata !1622, null}
!1622 = metadata !{i32 786443, metadata !5, metadata !1623, i32 502, i32 3, i32 1, i32 322} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1623 = metadata !{i32 786443, metadata !5, metadata !1619, i32 502, i32 3, i32 0, i32 59} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1624 = metadata !{i32 504, i32 3, metadata !360, null}
!1625 = metadata !{i32 786689, metadata !363, metadata !"L", metadata !6, i32 16777724, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 508]
!1626 = metadata !{i32 508, i32 50, metadata !363, null}
!1627 = metadata !{i32 786689, metadata !363, metadata !"fmt", metadata !6, i32 33554940, metadata !251, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fmt] [line 508]
!1628 = metadata !{i32 508, i32 65, metadata !363, null}
!1629 = metadata !{i32 786689, metadata !363, metadata !"argp", metadata !6, i32 50332157, metadata !366, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argp] [line 509]
!1630 = metadata !{i32 509, i32 47, metadata !363, null}
!1631 = metadata !{i32 786688, metadata !363, metadata !"ret", metadata !6, i32 510, metadata !251, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ret] [line 510]
!1632 = metadata !{i32 510, i32 15, metadata !363, null}
!1633 = metadata !{i32 512, i32 9, metadata !363, null}
!1634 = metadata !{i32 513, i32 3, metadata !1635, null}
!1635 = metadata !{i32 786443, metadata !5, metadata !1636, i32 513, i32 3, i32 0, i32 61} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1636 = metadata !{i32 786443, metadata !5, metadata !363, i32 513, i32 3, i32 0, i32 60} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1637 = metadata !{i32 513, i32 3, metadata !1638, null}
!1638 = metadata !{i32 786443, metadata !5, metadata !1639, i32 513, i32 3, i32 1, i32 323} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1639 = metadata !{i32 786443, metadata !5, metadata !1635, i32 513, i32 3, i32 0, i32 62} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1640 = metadata !{i32 515, i32 3, metadata !363, null}
!1641 = metadata !{i32 786689, metadata !373, metadata !"L", metadata !6, i32 16777735, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 519]
!1642 = metadata !{i32 519, i32 49, metadata !373, null}
!1643 = metadata !{i32 786689, metadata !373, metadata !"fmt", metadata !6, i32 33554951, metadata !251, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fmt] [line 519]
!1644 = metadata !{i32 519, i32 64, metadata !373, null}
!1645 = metadata !{i32 786688, metadata !373, metadata !"ret", metadata !6, i32 520, metadata !251, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ret] [line 520]
!1646 = metadata !{i32 520, i32 15, metadata !373, null}
!1647 = metadata !{i32 786688, metadata !373, metadata !"argp", metadata !6, i32 521, metadata !366, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [argp] [line 521]
!1648 = metadata !{i32 521, i32 11, metadata !373, null}
!1649 = metadata !{i32 523, i32 3, metadata !373, null}
!1650 = metadata !{i32 524, i32 9, metadata !373, null}
!1651 = metadata !{i32 525, i32 3, metadata !373, null}
!1652 = metadata !{i32 526, i32 3, metadata !1653, null}
!1653 = metadata !{i32 786443, metadata !5, metadata !1654, i32 526, i32 3, i32 0, i32 64} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1654 = metadata !{i32 786443, metadata !5, metadata !373, i32 526, i32 3, i32 0, i32 63} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1655 = metadata !{i32 526, i32 3, metadata !1656, null}
!1656 = metadata !{i32 786443, metadata !5, metadata !1657, i32 526, i32 3, i32 1, i32 324} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1657 = metadata !{i32 786443, metadata !5, metadata !1653, i32 526, i32 3, i32 0, i32 65} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1658 = metadata !{i32 528, i32 3, metadata !373, null}
!1659 = metadata !{i32 786689, metadata !377, metadata !"L", metadata !6, i32 16777748, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 532]
!1660 = metadata !{i32 532, i32 43, metadata !377, null}
!1661 = metadata !{i32 786689, metadata !377, metadata !"fn", metadata !6, i32 33554964, metadata !48, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fn] [line 532]
!1662 = metadata !{i32 532, i32 60, metadata !377, null}
!1663 = metadata !{i32 786689, metadata !377, metadata !"n", metadata !6, i32 50332180, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 532]
!1664 = metadata !{i32 532, i32 68, metadata !377, null}
!1665 = metadata !{i32 534, i32 7, metadata !1666, null}
!1666 = metadata !{i32 786443, metadata !5, metadata !377, i32 534, i32 7, i32 0, i32 66} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1667 = metadata !{i32 786688, metadata !1668, metadata !"io", metadata !6, i32 535, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [io] [line 535]
!1668 = metadata !{i32 786443, metadata !5, metadata !1669, i32 535, i32 5, i32 0, i32 68} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1669 = metadata !{i32 786443, metadata !5, metadata !1666, i32 534, i32 15, i32 0, i32 67} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1670 = metadata !{i32 535, i32 5, metadata !1668, null}
!1671 = metadata !{i32 536, i32 3, metadata !1669, null}
!1672 = metadata !{i32 786688, metadata !1673, metadata !"cl", metadata !6, i32 538, metadata !533, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cl] [line 538]
!1673 = metadata !{i32 786443, metadata !5, metadata !1666, i32 537, i32 8, i32 0, i32 69} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1674 = metadata !{i32 538, i32 15, metadata !1673, null}
!1675 = metadata !{i32 541, i32 10, metadata !1673, null}
!1676 = metadata !{i32 542, i32 5, metadata !1673, null}
!1677 = metadata !{i32 543, i32 5, metadata !1673, null}
!1678 = metadata !{i32 544, i32 5, metadata !1673, null}
!1679 = metadata !{i32 544, i32 5, metadata !1680, null}
!1680 = metadata !{i32 786443, metadata !5, metadata !1673, i32 544, i32 5, i32 1, i32 325} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1681 = metadata !{i32 786688, metadata !1682, metadata !"io1", metadata !6, i32 545, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [io1] [line 545]
!1682 = metadata !{i32 786443, metadata !5, metadata !1683, i32 545, i32 7, i32 0, i32 71} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1683 = metadata !{i32 786443, metadata !5, metadata !1673, i32 544, i32 17, i32 0, i32 70} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1684 = metadata !{i32 545, i32 7, metadata !1682, null}
!1685 = metadata !{i32 547, i32 5, metadata !1683, null}
!1686 = metadata !{i32 786688, metadata !1687, metadata !"io", metadata !6, i32 548, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [io] [line 548]
!1687 = metadata !{i32 786443, metadata !5, metadata !1673, i32 548, i32 5, i32 0, i32 72} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1688 = metadata !{i32 548, i32 5, metadata !1687, null}
!1689 = metadata !{i32 786688, metadata !1687, metadata !"x_", metadata !6, i32 548, metadata !533, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x_] [line 548]
!1690 = metadata !{i32 550, i32 3, metadata !1691, null}
!1691 = metadata !{i32 786443, metadata !5, metadata !377, i32 550, i32 3, i32 0, i32 73} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1692 = metadata !{i32 551, i32 3, metadata !1693, null}
!1693 = metadata !{i32 786443, metadata !5, metadata !1694, i32 551, i32 3, i32 0, i32 75} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1694 = metadata !{i32 786443, metadata !5, metadata !377, i32 551, i32 3, i32 0, i32 74} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1695 = metadata !{i32 551, i32 3, metadata !1696, null}
!1696 = metadata !{i32 786443, metadata !5, metadata !1697, i32 551, i32 3, i32 1, i32 326} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1697 = metadata !{i32 786443, metadata !5, metadata !1693, i32 551, i32 3, i32 0, i32 76} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1698 = metadata !{i32 553, i32 1, metadata !377, null}
!1699 = metadata !{i32 786689, metadata !380, metadata !"L", metadata !6, i32 16777772, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 556]
!1700 = metadata !{i32 556, i32 42, metadata !380, null}
!1701 = metadata !{i32 786689, metadata !380, metadata !"b", metadata !6, i32 33554988, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b] [line 556]
!1702 = metadata !{i32 556, i32 49, metadata !380, null}
!1703 = metadata !{i32 786688, metadata !1704, metadata !"io", metadata !6, i32 558, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [io] [line 558]
!1704 = metadata !{i32 786443, metadata !5, metadata !380, i32 558, i32 3, i32 0, i32 77} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1705 = metadata !{i32 558, i32 3, metadata !1704, null}
!1706 = metadata !{i32 559, i32 3, metadata !1707, null}
!1707 = metadata !{i32 786443, metadata !5, metadata !380, i32 559, i32 3, i32 0, i32 78} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1708 = metadata !{i32 561, i32 1, metadata !380, null}
!1709 = metadata !{i32 786689, metadata !381, metadata !"L", metadata !6, i32 16777780, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 564]
!1710 = metadata !{i32 564, i32 48, metadata !381, null}
!1711 = metadata !{i32 786689, metadata !381, metadata !"p", metadata !6, i32 33554996, metadata !45, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [p] [line 564]
!1712 = metadata !{i32 564, i32 57, metadata !381, null}
!1713 = metadata !{i32 786688, metadata !1714, metadata !"io", metadata !6, i32 566, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [io] [line 566]
!1714 = metadata !{i32 786443, metadata !5, metadata !381, i32 566, i32 3, i32 0, i32 79} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1715 = metadata !{i32 566, i32 3, metadata !1714, null}
!1716 = metadata !{i32 567, i32 3, metadata !1717, null}
!1717 = metadata !{i32 786443, metadata !5, metadata !381, i32 567, i32 3, i32 0, i32 80} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1718 = metadata !{i32 569, i32 1, metadata !381, null}
!1719 = metadata !{i32 786689, metadata !384, metadata !"L", metadata !6, i32 16777788, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 572]
!1720 = metadata !{i32 572, i32 40, metadata !384, null}
!1721 = metadata !{i32 786688, metadata !1722, metadata !"io", metadata !6, i32 574, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [io] [line 574]
!1722 = metadata !{i32 786443, metadata !5, metadata !384, i32 574, i32 3, i32 0, i32 81} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1723 = metadata !{i32 574, i32 3, metadata !1722, null}
!1724 = metadata !{i32 786688, metadata !1722, metadata !"x_", metadata !6, i32 574, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x_] [line 574]
!1725 = metadata !{i32 575, i32 3, metadata !1726, null}
!1726 = metadata !{i32 786443, metadata !5, metadata !384, i32 575, i32 3, i32 0, i32 82} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1727 = metadata !{i32 577, i32 3, metadata !384, null}
!1728 = metadata !{i32 786689, metadata !385, metadata !"L", metadata !6, i32 16777820, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 604]
!1729 = metadata !{i32 604, i32 39, metadata !385, null}
!1730 = metadata !{i32 786689, metadata !385, metadata !"name", metadata !6, i32 33555036, metadata !251, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 604]
!1731 = metadata !{i32 604, i32 54, metadata !385, null}
!1732 = metadata !{i32 786688, metadata !385, metadata !"reg", metadata !6, i32 605, metadata !1733, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [reg] [line 605]
!1733 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1734} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from Table]
!1734 = metadata !{i32 786454, metadata !19, null, metadata !"Table", i32 507, i64 0, i64 0, i64 0, i32 0, metadata !139} ; [ DW_TAG_typedef ] [Table] [line 507, size 0, align 0, offset 0] [from Table]
!1735 = metadata !{i32 605, i32 10, metadata !385, null}
!1736 = metadata !{i32 605, i32 3, metadata !385, null}
!1737 = metadata !{i32 607, i32 10, metadata !385, null}
!1738 = metadata !{i32 607, i32 23, metadata !385, null}
!1739 = metadata !{i32 786689, metadata !551, metadata !"L", metadata !6, i32 16777803, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 587]
!1740 = metadata !{i32 587, i32 34, metadata !551, null}
!1741 = metadata !{i32 786689, metadata !551, metadata !"t", metadata !6, i32 33555019, metadata !549, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [t] [line 587]
!1742 = metadata !{i32 587, i32 51, metadata !551, null}
!1743 = metadata !{i32 786689, metadata !551, metadata !"k", metadata !6, i32 50332235, metadata !251, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [k] [line 587]
!1744 = metadata !{i32 587, i32 66, metadata !551, null}
!1745 = metadata !{i32 786688, metadata !551, metadata !"slot", metadata !6, i32 588, metadata !549, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [slot] [line 588]
!1746 = metadata !{i32 588, i32 17, metadata !551, null}
!1747 = metadata !{i32 786688, metadata !551, metadata !"str", metadata !6, i32 589, metadata !86, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [str] [line 589]
!1748 = metadata !{i32 589, i32 12, metadata !551, null}
!1749 = metadata !{i32 589, i32 18, metadata !551, null}
!1750 = metadata !{i32 590, i32 7, metadata !1751, null}
!1751 = metadata !{i32 786443, metadata !5, metadata !551, i32 590, i32 7, i32 0, i32 214} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1752 = metadata !{i32 590, i32 7, metadata !1753, null}
!1753 = metadata !{i32 786443, metadata !5, metadata !1751, i32 590, i32 7, i32 2, i32 328} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1754 = metadata !{i32 590, i32 7, metadata !1755, null}
!1755 = metadata !{i32 786443, metadata !5, metadata !1751, i32 590, i32 7, i32 1, i32 327} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1756 = metadata !{i32 786688, metadata !1757, metadata !"io1", metadata !6, i32 591, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [io1] [line 591]
!1757 = metadata !{i32 786443, metadata !5, metadata !1758, i32 591, i32 5, i32 0, i32 216} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1758 = metadata !{i32 786443, metadata !5, metadata !1751, i32 590, i32 51, i32 0, i32 215} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1759 = metadata !{i32 591, i32 5, metadata !1757, null}
!1760 = metadata !{i32 592, i32 5, metadata !1761, null}
!1761 = metadata !{i32 786443, metadata !5, metadata !1758, i32 592, i32 5, i32 0, i32 217} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1762 = metadata !{i32 593, i32 3, metadata !1758, null}
!1763 = metadata !{i32 786688, metadata !1764, metadata !"io", metadata !6, i32 595, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [io] [line 595]
!1764 = metadata !{i32 786443, metadata !5, metadata !1765, i32 595, i32 5, i32 0, i32 219} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1765 = metadata !{i32 786443, metadata !5, metadata !1751, i32 594, i32 8, i32 0, i32 218} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1766 = metadata !{i32 595, i32 5, metadata !1764, null}
!1767 = metadata !{i32 786688, metadata !1764, metadata !"x_", metadata !6, i32 595, metadata !86, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x_] [line 595]
!1768 = metadata !{i32 596, i32 5, metadata !1769, null}
!1769 = metadata !{i32 786443, metadata !5, metadata !1765, i32 596, i32 5, i32 0, i32 220} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1770 = metadata !{i32 597, i32 5, metadata !1765, null}
!1771 = metadata !{i32 600, i32 3, metadata !551, null}
!1772 = metadata !{i32 786689, metadata !388, metadata !"L", metadata !6, i32 16777827, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 611]
!1773 = metadata !{i32 611, i32 38, metadata !388, null}
!1774 = metadata !{i32 786689, metadata !388, metadata !"idx", metadata !6, i32 33555043, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [idx] [line 611]
!1775 = metadata !{i32 611, i32 45, metadata !388, null}
!1776 = metadata !{i32 786688, metadata !388, metadata !"t", metadata !6, i32 612, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [t] [line 612]
!1777 = metadata !{i32 612, i32 9, metadata !388, null}
!1778 = metadata !{i32 614, i32 7, metadata !388, null}
!1779 = metadata !{i32 786688, metadata !1780, metadata !"slot", metadata !6, i32 615, metadata !549, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [slot] [line 615]
!1780 = metadata !{i32 786443, metadata !5, metadata !388, i32 615, i32 3, i32 0, i32 83} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1781 = metadata !{i32 615, i32 3, metadata !1780, null}
!1782 = metadata !{i32 615, i32 3, metadata !1783, null}
!1783 = metadata !{i32 786443, metadata !5, metadata !1780, i32 615, i32 3, i32 0, i32 84} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1784 = metadata !{i32 615, i32 3, metadata !1785, null}
!1785 = metadata !{i32 786443, metadata !5, metadata !1783, i32 615, i32 3, i32 2, i32 330} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1786 = metadata !{i32 615, i32 3, metadata !1787, null}
!1787 = metadata !{i32 786443, metadata !5, metadata !1783, i32 615, i32 3, i32 1, i32 329} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1788 = metadata !{i32 786688, metadata !1789, metadata !"io1", metadata !6, i32 615, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [io1] [line 615]
!1789 = metadata !{i32 786443, metadata !5, metadata !1790, i32 615, i32 3, i32 0, i32 86} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1790 = metadata !{i32 786443, metadata !5, metadata !1783, i32 615, i32 3, i32 0, i32 85} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1791 = metadata !{i32 615, i32 3, metadata !1789, null}
!1792 = metadata !{i32 615, i32 3, metadata !1793, null}
!1793 = metadata !{i32 786443, metadata !5, metadata !1794, i32 615, i32 3, i32 5, i32 333} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1794 = metadata !{i32 786443, metadata !5, metadata !1789, i32 615, i32 3, i32 3, i32 331} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1795 = metadata !{i32 615, i32 3, metadata !1790, null}
!1796 = metadata !{i32 615, i32 3, metadata !1797, null}
!1797 = metadata !{i32 786443, metadata !5, metadata !1798, i32 615, i32 3, i32 6, i32 334} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1798 = metadata !{i32 786443, metadata !5, metadata !1783, i32 615, i32 3, i32 4, i32 332} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1799 = metadata !{i32 617, i32 3, metadata !388, null}
!1800 = metadata !{i32 786689, metadata !389, metadata !"L", metadata !6, i32 16777837, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 621]
!1801 = metadata !{i32 621, i32 38, metadata !389, null}
!1802 = metadata !{i32 786689, metadata !389, metadata !"idx", metadata !6, i32 33555053, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [idx] [line 621]
!1803 = metadata !{i32 621, i32 45, metadata !389, null}
!1804 = metadata !{i32 786689, metadata !389, metadata !"k", metadata !6, i32 50332269, metadata !251, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [k] [line 621]
!1805 = metadata !{i32 621, i32 62, metadata !389, null}
!1806 = metadata !{i32 623, i32 10, metadata !389, null}
!1807 = metadata !{i32 623, i32 23, metadata !389, null}
!1808 = metadata !{i32 786689, metadata !392, metadata !"L", metadata !6, i32 16777843, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 627]
!1809 = metadata !{i32 627, i32 34, metadata !392, null}
!1810 = metadata !{i32 786689, metadata !392, metadata !"idx", metadata !6, i32 33555059, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [idx] [line 627]
!1811 = metadata !{i32 627, i32 41, metadata !392, null}
!1812 = metadata !{i32 786689, metadata !392, metadata !"n", metadata !6, i32 50332275, metadata !53, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 627]
!1813 = metadata !{i32 627, i32 58, metadata !392, null}
!1814 = metadata !{i32 786688, metadata !392, metadata !"t", metadata !6, i32 628, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [t] [line 628]
!1815 = metadata !{i32 628, i32 9, metadata !392, null}
!1816 = metadata !{i32 786688, metadata !392, metadata !"slot", metadata !6, i32 629, metadata !549, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [slot] [line 629]
!1817 = metadata !{i32 629, i32 17, metadata !392, null}
!1818 = metadata !{i32 631, i32 7, metadata !392, null}
!1819 = metadata !{i32 632, i32 7, metadata !1820, null}
!1820 = metadata !{i32 786443, metadata !5, metadata !392, i32 632, i32 7, i32 0, i32 87} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1821 = metadata !{i32 632, i32 7, metadata !1822, null}
!1822 = metadata !{i32 786443, metadata !5, metadata !1820, i32 632, i32 7, i32 2, i32 336} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1823 = metadata !{i32 632, i32 7, metadata !1824, null}
!1824 = metadata !{i32 786443, metadata !5, metadata !1820, i32 632, i32 7, i32 1, i32 335} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1825 = metadata !{i32 786688, metadata !1826, metadata !"io1", metadata !6, i32 633, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [io1] [line 633]
!1826 = metadata !{i32 786443, metadata !5, metadata !1827, i32 633, i32 5, i32 0, i32 89} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1827 = metadata !{i32 786443, metadata !5, metadata !1820, i32 632, i32 49, i32 0, i32 88} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1828 = metadata !{i32 633, i32 5, metadata !1826, null}
!1829 = metadata !{i32 634, i32 5, metadata !1830, null}
!1830 = metadata !{i32 786443, metadata !5, metadata !1827, i32 634, i32 5, i32 0, i32 90} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1831 = metadata !{i32 635, i32 3, metadata !1827, null}
!1832 = metadata !{i32 786688, metadata !1833, metadata !"io", metadata !6, i32 637, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [io] [line 637]
!1833 = metadata !{i32 786443, metadata !5, metadata !1834, i32 637, i32 5, i32 0, i32 92} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1834 = metadata !{i32 786443, metadata !5, metadata !1820, i32 636, i32 8, i32 0, i32 91} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1835 = metadata !{i32 637, i32 5, metadata !1833, null}
!1836 = metadata !{i32 638, i32 5, metadata !1837, null}
!1837 = metadata !{i32 786443, metadata !5, metadata !1834, i32 638, i32 5, i32 0, i32 93} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1838 = metadata !{i32 639, i32 5, metadata !1834, null}
!1839 = metadata !{i32 642, i32 3, metadata !392, null}
!1840 = metadata !{i32 786689, metadata !395, metadata !"L", metadata !6, i32 16777862, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 646]
!1841 = metadata !{i32 646, i32 36, metadata !395, null}
!1842 = metadata !{i32 786689, metadata !395, metadata !"idx", metadata !6, i32 33555078, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [idx] [line 646]
!1843 = metadata !{i32 646, i32 43, metadata !395, null}
!1844 = metadata !{i32 786688, metadata !395, metadata !"t", metadata !6, i32 647, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [t] [line 647]
!1845 = metadata !{i32 647, i32 9, metadata !395, null}
!1846 = metadata !{i32 649, i32 7, metadata !395, null}
!1847 = metadata !{i32 786688, metadata !1848, metadata !"io1", metadata !6, i32 651, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [io1] [line 651]
!1848 = metadata !{i32 786443, metadata !5, metadata !395, i32 651, i32 3, i32 0, i32 94} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1849 = metadata !{i32 651, i32 3, metadata !1848, null}
!1850 = metadata !{i32 653, i32 3, metadata !395, null}
!1851 = metadata !{i32 786689, metadata !396, metadata !"L", metadata !6, i32 16777873, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 657]
!1852 = metadata !{i32 657, i32 37, metadata !396, null}
!1853 = metadata !{i32 786689, metadata !396, metadata !"idx", metadata !6, i32 33555089, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [idx] [line 657]
!1854 = metadata !{i32 657, i32 44, metadata !396, null}
!1855 = metadata !{i32 786689, metadata !396, metadata !"n", metadata !6, i32 50332305, metadata !53, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 657]
!1856 = metadata !{i32 657, i32 61, metadata !396, null}
!1857 = metadata !{i32 786688, metadata !396, metadata !"t", metadata !6, i32 658, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [t] [line 658]
!1858 = metadata !{i32 658, i32 9, metadata !396, null}
!1859 = metadata !{i32 660, i32 7, metadata !396, null}
!1860 = metadata !{i32 786688, metadata !1861, metadata !"io1", metadata !6, i32 662, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [io1] [line 662]
!1861 = metadata !{i32 786443, metadata !5, metadata !396, i32 662, i32 3, i32 0, i32 95} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1862 = metadata !{i32 662, i32 3, metadata !1861, null}
!1863 = metadata !{i32 663, i32 3, metadata !1864, null}
!1864 = metadata !{i32 786443, metadata !5, metadata !396, i32 663, i32 3, i32 0, i32 96} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1865 = metadata !{i32 665, i32 3, metadata !396, null}
!1866 = metadata !{i32 786689, metadata !397, metadata !"L", metadata !6, i32 16777885, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 669]
!1867 = metadata !{i32 669, i32 37, metadata !397, null}
!1868 = metadata !{i32 786689, metadata !397, metadata !"idx", metadata !6, i32 33555101, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [idx] [line 669]
!1869 = metadata !{i32 669, i32 44, metadata !397, null}
!1870 = metadata !{i32 786689, metadata !397, metadata !"p", metadata !6, i32 50332317, metadata !346, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [p] [line 669]
!1871 = metadata !{i32 669, i32 61, metadata !397, null}
!1872 = metadata !{i32 786688, metadata !397, metadata !"t", metadata !6, i32 670, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [t] [line 670]
!1873 = metadata !{i32 670, i32 9, metadata !397, null}
!1874 = metadata !{i32 786688, metadata !397, metadata !"k", metadata !6, i32 671, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 671]
!1875 = metadata !{i32 671, i32 10, metadata !397, null}
!1876 = metadata !{i32 673, i32 7, metadata !397, null}
!1877 = metadata !{i32 786688, metadata !1878, metadata !"io", metadata !6, i32 675, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [io] [line 675]
!1878 = metadata !{i32 786443, metadata !5, metadata !397, i32 675, i32 3, i32 0, i32 97} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1879 = metadata !{i32 675, i32 3, metadata !1878, null}
!1880 = metadata !{i32 786688, metadata !1881, metadata !"io1", metadata !6, i32 676, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [io1] [line 676]
!1881 = metadata !{i32 786443, metadata !5, metadata !397, i32 676, i32 3, i32 0, i32 98} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1882 = metadata !{i32 676, i32 3, metadata !1881, null}
!1883 = metadata !{i32 677, i32 3, metadata !1884, null}
!1884 = metadata !{i32 786443, metadata !5, metadata !397, i32 677, i32 3, i32 0, i32 99} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1885 = metadata !{i32 679, i32 3, metadata !397, null}
!1886 = metadata !{i32 786689, metadata !400, metadata !"L", metadata !6, i32 16777899, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 683]
!1887 = metadata !{i32 683, i32 42, metadata !400, null}
!1888 = metadata !{i32 786689, metadata !400, metadata !"narray", metadata !6, i32 33555115, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [narray] [line 683]
!1889 = metadata !{i32 683, i32 49, metadata !400, null}
!1890 = metadata !{i32 786689, metadata !400, metadata !"nrec", metadata !6, i32 50332331, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nrec] [line 683]
!1891 = metadata !{i32 683, i32 61, metadata !400, null}
!1892 = metadata !{i32 786688, metadata !400, metadata !"t", metadata !6, i32 684, metadata !1733, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [t] [line 684]
!1893 = metadata !{i32 684, i32 10, metadata !400, null}
!1894 = metadata !{i32 686, i32 7, metadata !400, null}
!1895 = metadata !{i32 786688, metadata !1896, metadata !"io", metadata !6, i32 687, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [io] [line 687]
!1896 = metadata !{i32 786443, metadata !5, metadata !400, i32 687, i32 3, i32 0, i32 100} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1897 = metadata !{i32 687, i32 3, metadata !1896, null}
!1898 = metadata !{i32 786688, metadata !1896, metadata !"x_", metadata !6, i32 687, metadata !1733, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x_] [line 687]
!1899 = metadata !{i32 688, i32 3, metadata !1900, null}
!1900 = metadata !{i32 786443, metadata !5, metadata !400, i32 688, i32 3, i32 0, i32 101} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1901 = metadata !{i32 689, i32 7, metadata !1902, null}
!1902 = metadata !{i32 786443, metadata !5, metadata !400, i32 689, i32 7, i32 0, i32 102} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1903 = metadata !{i32 689, i32 7, metadata !1904, null}
!1904 = metadata !{i32 786443, metadata !5, metadata !1902, i32 689, i32 7, i32 1, i32 337} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1905 = metadata !{i32 690, i32 5, metadata !1902, null}
!1906 = metadata !{i32 691, i32 3, metadata !1907, null}
!1907 = metadata !{i32 786443, metadata !5, metadata !1908, i32 691, i32 3, i32 0, i32 104} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1908 = metadata !{i32 786443, metadata !5, metadata !400, i32 691, i32 3, i32 0, i32 103} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1909 = metadata !{i32 691, i32 3, metadata !1910, null}
!1910 = metadata !{i32 786443, metadata !5, metadata !1911, i32 691, i32 3, i32 1, i32 338} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1911 = metadata !{i32 786443, metadata !5, metadata !1907, i32 691, i32 3, i32 0, i32 105} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1912 = metadata !{i32 693, i32 1, metadata !400, null}
!1913 = metadata !{i32 786689, metadata !401, metadata !"L", metadata !6, i32 16777912, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 696]
!1914 = metadata !{i32 696, i32 42, metadata !401, null}
!1915 = metadata !{i32 786689, metadata !401, metadata !"objindex", metadata !6, i32 33555128, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [objindex] [line 696]
!1916 = metadata !{i32 696, i32 49, metadata !401, null}
!1917 = metadata !{i32 786688, metadata !401, metadata !"obj", metadata !6, i32 697, metadata !549, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [obj] [line 697]
!1918 = metadata !{i32 697, i32 17, metadata !401, null}
!1919 = metadata !{i32 786688, metadata !401, metadata !"mt", metadata !6, i32 698, metadata !1733, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mt] [line 698]
!1920 = metadata !{i32 698, i32 10, metadata !401, null}
!1921 = metadata !{i32 786688, metadata !401, metadata !"res", metadata !6, i32 699, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [res] [line 699]
!1922 = metadata !{i32 699, i32 7, metadata !401, null}
!1923 = metadata !{i32 699, i32 3, metadata !401, null}
!1924 = metadata !{i32 701, i32 9, metadata !401, null}
!1925 = metadata !{i32 702, i32 3, metadata !401, null}
!1926 = metadata !{i32 704, i32 7, metadata !1927, null}
!1927 = metadata !{i32 786443, metadata !5, metadata !401, i32 702, i32 23, i32 0, i32 106} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1928 = metadata !{i32 705, i32 7, metadata !1927, null}
!1929 = metadata !{i32 707, i32 7, metadata !1927, null}
!1930 = metadata !{i32 708, i32 7, metadata !1927, null}
!1931 = metadata !{i32 710, i32 7, metadata !1927, null}
!1932 = metadata !{i32 711, i32 7, metadata !1927, null}
!1933 = metadata !{i32 713, i32 7, metadata !1934, null}
!1934 = metadata !{i32 786443, metadata !5, metadata !401, i32 713, i32 7, i32 0, i32 107} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1935 = metadata !{i32 786688, metadata !1936, metadata !"io", metadata !6, i32 714, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [io] [line 714]
!1936 = metadata !{i32 786443, metadata !5, metadata !1937, i32 714, i32 5, i32 0, i32 109} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1937 = metadata !{i32 786443, metadata !5, metadata !1934, i32 713, i32 19, i32 0, i32 108} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1938 = metadata !{i32 714, i32 5, metadata !1936, null}
!1939 = metadata !{i32 786688, metadata !1936, metadata !"x_", metadata !6, i32 714, metadata !1733, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x_] [line 714]
!1940 = metadata !{i32 715, i32 5, metadata !1941, null}
!1941 = metadata !{i32 786443, metadata !5, metadata !1937, i32 715, i32 5, i32 0, i32 110} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1942 = metadata !{i32 716, i32 5, metadata !1937, null}
!1943 = metadata !{i32 717, i32 3, metadata !1937, null}
!1944 = metadata !{i32 719, i32 3, metadata !401, null}
!1945 = metadata !{i32 786689, metadata !402, metadata !"L", metadata !6, i32 16777939, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 723]
!1946 = metadata !{i32 723, i32 42, metadata !402, null}
!1947 = metadata !{i32 786689, metadata !402, metadata !"idx", metadata !6, i32 33555155, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [idx] [line 723]
!1948 = metadata !{i32 723, i32 49, metadata !402, null}
!1949 = metadata !{i32 786688, metadata !402, metadata !"o", metadata !6, i32 724, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [o] [line 724]
!1950 = metadata !{i32 724, i32 9, metadata !402, null}
!1951 = metadata !{i32 726, i32 7, metadata !402, null}
!1952 = metadata !{i32 786688, metadata !1953, metadata !"io", metadata !6, i32 728, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [io] [line 728]
!1953 = metadata !{i32 786443, metadata !5, metadata !402, i32 728, i32 3, i32 0, i32 111} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1954 = metadata !{i32 728, i32 3, metadata !1953, null}
!1955 = metadata !{i32 786688, metadata !1953, metadata !"iu", metadata !6, i32 728, metadata !1956, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iu] [line 728]
!1956 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1957} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1957 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1958} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from Udata]
!1958 = metadata !{i32 786454, metadata !19, null, metadata !"Udata", i32 352, i64 0, i64 0, i64 0, i32 0, metadata !1959} ; [ DW_TAG_typedef ] [Udata] [line 352, size 0, align 0, offset 0] [from Udata]
!1959 = metadata !{i32 786451, metadata !19, null, metadata !"Udata", i32 346, i64 192, i64 64, i32 0, i32 0, null, metadata !1960, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [Udata] [line 346, size 192, align 64, offset 0] [def] [from ]
!1960 = metadata !{metadata !1961, metadata !1962, metadata !1963, metadata !1964, metadata !1965, metadata !1966, metadata !1967}
!1961 = metadata !{i32 786445, metadata !19, metadata !1959, metadata !"next", i32 347, i64 32, i64 32, i64 0, i32 0, metadata !17} ; [ DW_TAG_member ] [next] [line 347, size 32, align 32, offset 0] [from ]
!1962 = metadata !{i32 786445, metadata !19, metadata !1959, metadata !"tt", i32 347, i64 8, i64 8, i64 32, i32 0, metadata !24} ; [ DW_TAG_member ] [tt] [line 347, size 8, align 8, offset 32] [from lu_byte]
!1963 = metadata !{i32 786445, metadata !19, metadata !1959, metadata !"marked", i32 347, i64 8, i64 8, i64 40, i32 0, metadata !24} ; [ DW_TAG_member ] [marked] [line 347, size 8, align 8, offset 40] [from lu_byte]
!1964 = metadata !{i32 786445, metadata !19, metadata !1959, metadata !"ttuv_", i32 348, i64 8, i64 8, i64 48, i32 0, metadata !24} ; [ DW_TAG_member ] [ttuv_] [line 348, size 8, align 8, offset 48] [from lu_byte]
!1965 = metadata !{i32 786445, metadata !19, metadata !1959, metadata !"metatable", i32 349, i64 32, i64 32, i64 64, i32 0, metadata !138} ; [ DW_TAG_member ] [metatable] [line 349, size 32, align 32, offset 64] [from ]
!1966 = metadata !{i32 786445, metadata !19, metadata !1959, metadata !"len", i32 350, i64 32, i64 32, i64 96, i32 0, metadata !69} ; [ DW_TAG_member ] [len] [line 350, size 32, align 32, offset 96] [from size_t]
!1967 = metadata !{i32 786445, metadata !19, metadata !1959, metadata !"user_", i32 351, i64 64, i64 64, i64 128, i32 0, metadata !41} ; [ DW_TAG_member ] [user_] [line 351, size 64, align 64, offset 128] [from Value]
!1968 = metadata !{i32 729, i32 3, metadata !1969, null}
!1969 = metadata !{i32 786443, metadata !5, metadata !402, i32 729, i32 3, i32 0, i32 112} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1970 = metadata !{i32 731, i32 3, metadata !402, null}
!1971 = metadata !{i32 786689, metadata !403, metadata !"L", metadata !6, i32 16777974, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 758]
!1972 = metadata !{i32 758, i32 40, metadata !403, null}
!1973 = metadata !{i32 786689, metadata !403, metadata !"name", metadata !6, i32 33555190, metadata !251, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 758]
!1974 = metadata !{i32 758, i32 55, metadata !403, null}
!1975 = metadata !{i32 786688, metadata !403, metadata !"reg", metadata !6, i32 759, metadata !1733, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [reg] [line 759]
!1976 = metadata !{i32 759, i32 10, metadata !403, null}
!1977 = metadata !{i32 759, i32 3, metadata !403, null}
!1978 = metadata !{i32 761, i32 3, metadata !403, null}
!1979 = metadata !{i32 761, i32 16, metadata !403, null}
!1980 = metadata !{i32 762, i32 1, metadata !403, null}
!1981 = metadata !{i32 786689, metadata !546, metadata !"L", metadata !6, i32 16777958, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 742]
!1982 = metadata !{i32 742, i32 35, metadata !546, null}
!1983 = metadata !{i32 786689, metadata !546, metadata !"t", metadata !6, i32 33555174, metadata !549, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [t] [line 742]
!1984 = metadata !{i32 742, i32 52, metadata !546, null}
!1985 = metadata !{i32 786689, metadata !546, metadata !"k", metadata !6, i32 50332390, metadata !251, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [k] [line 742]
!1986 = metadata !{i32 742, i32 67, metadata !546, null}
!1987 = metadata !{i32 786688, metadata !546, metadata !"slot", metadata !6, i32 743, metadata !549, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [slot] [line 743]
!1988 = metadata !{i32 743, i32 17, metadata !546, null}
!1989 = metadata !{i32 786688, metadata !546, metadata !"str", metadata !6, i32 744, metadata !86, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [str] [line 744]
!1990 = metadata !{i32 744, i32 12, metadata !546, null}
!1991 = metadata !{i32 744, i32 18, metadata !546, null}
!1992 = metadata !{i32 746, i32 7, metadata !1993, null}
!1993 = metadata !{i32 786443, metadata !5, metadata !546, i32 746, i32 7, i32 0, i32 210} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1994 = metadata !{i32 746, i32 7, metadata !1995, null}
!1995 = metadata !{i32 786443, metadata !5, metadata !1993, i32 746, i32 7, i32 2, i32 340} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1996 = metadata !{i32 746, i32 7, metadata !1997, null}
!1997 = metadata !{i32 786443, metadata !5, metadata !1993, i32 746, i32 7, i32 1, i32 339} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!1998 = metadata !{i32 746, i32 7, metadata !1999, null}
!1999 = metadata !{i32 786443, metadata !5, metadata !1993, i32 746, i32 7, i32 3, i32 341} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2000 = metadata !{i32 746, i32 7, metadata !2001, null}
!2001 = metadata !{i32 786443, metadata !5, metadata !1993, i32 746, i32 7, i32 4, i32 342} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2002 = metadata !{i32 746, i32 7, metadata !2003, null}
!2003 = metadata !{i32 786443, metadata !5, metadata !1993, i32 746, i32 7, i32 6, i32 344} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2004 = metadata !{i32 746, i32 7, metadata !2005, null}
!2005 = metadata !{i32 786443, metadata !5, metadata !1993, i32 746, i32 7, i32 8, i32 346} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2006 = metadata !{i32 746, i32 7, metadata !2007, null}
!2007 = metadata !{i32 786443, metadata !5, metadata !1993, i32 746, i32 7, i32 10, i32 348} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2008 = metadata !{i32 746, i32 7, metadata !2009, null}
!2009 = metadata !{i32 786443, metadata !5, metadata !2010, i32 746, i32 7, i32 11, i32 349} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2010 = metadata !{i32 786443, metadata !5, metadata !2011, i32 746, i32 7, i32 9, i32 347} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2011 = metadata !{i32 786443, metadata !5, metadata !1993, i32 746, i32 7, i32 7, i32 345} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2012 = metadata !{i32 746, i32 7, metadata !2013, null}
!2013 = metadata !{i32 786443, metadata !5, metadata !2014, i32 746, i32 7, i32 13, i32 351} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2014 = metadata !{i32 786443, metadata !5, metadata !1993, i32 746, i32 7, i32 12, i32 350} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2015 = metadata !{i32 746, i32 7, metadata !2016, null}
!2016 = metadata !{i32 786443, metadata !5, metadata !2017, i32 746, i32 7, i32 14, i32 352} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2017 = metadata !{i32 786443, metadata !5, metadata !1993, i32 746, i32 7, i32 5, i32 343} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2018 = metadata !{i32 747, i32 5, metadata !1993, null}
!2019 = metadata !{i32 786688, metadata !2020, metadata !"io", metadata !6, i32 749, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [io] [line 749]
!2020 = metadata !{i32 786443, metadata !5, metadata !2021, i32 749, i32 5, i32 0, i32 212} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2021 = metadata !{i32 786443, metadata !5, metadata !1993, i32 748, i32 8, i32 0, i32 211} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2022 = metadata !{i32 749, i32 5, metadata !2020, null}
!2023 = metadata !{i32 786688, metadata !2020, metadata !"x_", metadata !6, i32 749, metadata !86, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x_] [line 749]
!2024 = metadata !{i32 750, i32 5, metadata !2025, null}
!2025 = metadata !{i32 786443, metadata !5, metadata !2021, i32 750, i32 5, i32 0, i32 213} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2026 = metadata !{i32 751, i32 5, metadata !2021, null}
!2027 = metadata !{i32 752, i32 5, metadata !2021, null}
!2028 = metadata !{i32 755, i32 1, metadata !546, null}
!2029 = metadata !{i32 786689, metadata !406, metadata !"L", metadata !6, i32 16777981, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 765]
!2030 = metadata !{i32 765, i32 39, metadata !406, null}
!2031 = metadata !{i32 786689, metadata !406, metadata !"idx", metadata !6, i32 33555197, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [idx] [line 765]
!2032 = metadata !{i32 765, i32 46, metadata !406, null}
!2033 = metadata !{i32 786688, metadata !406, metadata !"t", metadata !6, i32 766, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [t] [line 766]
!2034 = metadata !{i32 766, i32 9, metadata !406, null}
!2035 = metadata !{i32 769, i32 7, metadata !406, null}
!2036 = metadata !{i32 786688, metadata !2037, metadata !"slot", metadata !6, i32 770, metadata !549, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [slot] [line 770]
!2037 = metadata !{i32 786443, metadata !5, metadata !406, i32 770, i32 3, i32 0, i32 113} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2038 = metadata !{i32 770, i32 3, metadata !2037, null}
!2039 = metadata !{i32 770, i32 3, metadata !2040, null}
!2040 = metadata !{i32 786443, metadata !5, metadata !2037, i32 770, i32 3, i32 0, i32 114} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2041 = metadata !{i32 770, i32 3, metadata !2042, null}
!2042 = metadata !{i32 786443, metadata !5, metadata !2040, i32 770, i32 3, i32 2, i32 354} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2043 = metadata !{i32 770, i32 3, metadata !2044, null}
!2044 = metadata !{i32 786443, metadata !5, metadata !2040, i32 770, i32 3, i32 1, i32 353} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2045 = metadata !{i32 770, i32 3, metadata !2046, null}
!2046 = metadata !{i32 786443, metadata !5, metadata !2040, i32 770, i32 3, i32 4, i32 356} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2047 = metadata !{i32 770, i32 3, metadata !2048, null}
!2048 = metadata !{i32 786443, metadata !5, metadata !2040, i32 770, i32 3, i32 5, i32 357} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2049 = metadata !{i32 770, i32 3, metadata !2050, null}
!2050 = metadata !{i32 786443, metadata !5, metadata !2040, i32 770, i32 3, i32 7, i32 359} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2051 = metadata !{i32 770, i32 3, metadata !2052, null}
!2052 = metadata !{i32 786443, metadata !5, metadata !2040, i32 770, i32 3, i32 9, i32 361} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2053 = metadata !{i32 770, i32 3, metadata !2054, null}
!2054 = metadata !{i32 786443, metadata !5, metadata !2040, i32 770, i32 3, i32 11, i32 363} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2055 = metadata !{i32 770, i32 3, metadata !2056, null}
!2056 = metadata !{i32 786443, metadata !5, metadata !2057, i32 770, i32 3, i32 12, i32 364} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2057 = metadata !{i32 786443, metadata !5, metadata !2058, i32 770, i32 3, i32 10, i32 362} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2058 = metadata !{i32 786443, metadata !5, metadata !2040, i32 770, i32 3, i32 8, i32 360} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2059 = metadata !{i32 770, i32 3, metadata !2060, null}
!2060 = metadata !{i32 786443, metadata !5, metadata !2061, i32 770, i32 3, i32 14, i32 366} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2061 = metadata !{i32 786443, metadata !5, metadata !2040, i32 770, i32 3, i32 13, i32 365} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2062 = metadata !{i32 770, i32 3, metadata !2063, null}
!2063 = metadata !{i32 786443, metadata !5, metadata !2064, i32 770, i32 3, i32 15, i32 367} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2064 = metadata !{i32 786443, metadata !5, metadata !2040, i32 770, i32 3, i32 6, i32 358} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2065 = metadata !{i32 770, i32 3, metadata !2066, null}
!2066 = metadata !{i32 786443, metadata !5, metadata !2067, i32 770, i32 3, i32 16, i32 368} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2067 = metadata !{i32 786443, metadata !5, metadata !2040, i32 770, i32 3, i32 3, i32 355} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2068 = metadata !{i32 771, i32 3, metadata !406, null}
!2069 = metadata !{i32 773, i32 1, metadata !406, null}
!2070 = metadata !{i32 786689, metadata !407, metadata !"L", metadata !6, i32 16777992, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 776]
!2071 = metadata !{i32 776, i32 39, metadata !407, null}
!2072 = metadata !{i32 786689, metadata !407, metadata !"idx", metadata !6, i32 33555208, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [idx] [line 776]
!2073 = metadata !{i32 776, i32 46, metadata !407, null}
!2074 = metadata !{i32 786689, metadata !407, metadata !"k", metadata !6, i32 50332424, metadata !251, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [k] [line 776]
!2075 = metadata !{i32 776, i32 63, metadata !407, null}
!2076 = metadata !{i32 778, i32 3, metadata !407, null}
!2077 = metadata !{i32 778, i32 16, metadata !407, null}
!2078 = metadata !{i32 779, i32 1, metadata !407, null}
!2079 = metadata !{i32 786689, metadata !410, metadata !"L", metadata !6, i32 16777998, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 782]
!2080 = metadata !{i32 782, i32 35, metadata !410, null}
!2081 = metadata !{i32 786689, metadata !410, metadata !"idx", metadata !6, i32 33555214, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [idx] [line 782]
!2082 = metadata !{i32 782, i32 42, metadata !410, null}
!2083 = metadata !{i32 786689, metadata !410, metadata !"n", metadata !6, i32 50332430, metadata !53, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 782]
!2084 = metadata !{i32 782, i32 59, metadata !410, null}
!2085 = metadata !{i32 786688, metadata !410, metadata !"t", metadata !6, i32 783, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [t] [line 783]
!2086 = metadata !{i32 783, i32 9, metadata !410, null}
!2087 = metadata !{i32 786688, metadata !410, metadata !"slot", metadata !6, i32 784, metadata !549, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [slot] [line 784]
!2088 = metadata !{i32 784, i32 17, metadata !410, null}
!2089 = metadata !{i32 787, i32 7, metadata !410, null}
!2090 = metadata !{i32 788, i32 7, metadata !2091, null}
!2091 = metadata !{i32 786443, metadata !5, metadata !410, i32 788, i32 7, i32 0, i32 115} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2092 = metadata !{i32 788, i32 7, metadata !2093, null}
!2093 = metadata !{i32 786443, metadata !5, metadata !2091, i32 788, i32 7, i32 2, i32 370} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2094 = metadata !{i32 788, i32 7, metadata !2095, null}
!2095 = metadata !{i32 786443, metadata !5, metadata !2091, i32 788, i32 7, i32 1, i32 369} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2096 = metadata !{i32 788, i32 7, metadata !2097, null}
!2097 = metadata !{i32 786443, metadata !5, metadata !2091, i32 788, i32 7, i32 3, i32 371} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2098 = metadata !{i32 788, i32 7, metadata !2099, null}
!2099 = metadata !{i32 786443, metadata !5, metadata !2091, i32 788, i32 7, i32 4, i32 372} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2100 = metadata !{i32 788, i32 7, metadata !2101, null}
!2101 = metadata !{i32 786443, metadata !5, metadata !2091, i32 788, i32 7, i32 6, i32 374} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2102 = metadata !{i32 788, i32 7, metadata !2103, null}
!2103 = metadata !{i32 786443, metadata !5, metadata !2091, i32 788, i32 7, i32 8, i32 376} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2104 = metadata !{i32 788, i32 7, metadata !2105, null}
!2105 = metadata !{i32 786443, metadata !5, metadata !2091, i32 788, i32 7, i32 10, i32 378} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2106 = metadata !{i32 788, i32 7, metadata !2107, null}
!2107 = metadata !{i32 786443, metadata !5, metadata !2108, i32 788, i32 7, i32 11, i32 379} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2108 = metadata !{i32 786443, metadata !5, metadata !2109, i32 788, i32 7, i32 9, i32 377} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2109 = metadata !{i32 786443, metadata !5, metadata !2091, i32 788, i32 7, i32 7, i32 375} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2110 = metadata !{i32 788, i32 7, metadata !2111, null}
!2111 = metadata !{i32 786443, metadata !5, metadata !2112, i32 788, i32 7, i32 13, i32 381} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2112 = metadata !{i32 786443, metadata !5, metadata !2091, i32 788, i32 7, i32 12, i32 380} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2113 = metadata !{i32 788, i32 7, metadata !2114, null}
!2114 = metadata !{i32 786443, metadata !5, metadata !2115, i32 788, i32 7, i32 14, i32 382} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2115 = metadata !{i32 786443, metadata !5, metadata !2091, i32 788, i32 7, i32 5, i32 373} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2116 = metadata !{i32 789, i32 5, metadata !2091, null}
!2117 = metadata !{i32 786688, metadata !2118, metadata !"io", metadata !6, i32 791, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [io] [line 791]
!2118 = metadata !{i32 786443, metadata !5, metadata !2119, i32 791, i32 5, i32 0, i32 117} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2119 = metadata !{i32 786443, metadata !5, metadata !2091, i32 790, i32 8, i32 0, i32 116} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2120 = metadata !{i32 791, i32 5, metadata !2118, null}
!2121 = metadata !{i32 792, i32 5, metadata !2122, null}
!2122 = metadata !{i32 786443, metadata !5, metadata !2119, i32 792, i32 5, i32 0, i32 118} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2123 = metadata !{i32 793, i32 5, metadata !2119, null}
!2124 = metadata !{i32 794, i32 5, metadata !2119, null}
!2125 = metadata !{i32 797, i32 1, metadata !410, null}
!2126 = metadata !{i32 786689, metadata !413, metadata !"L", metadata !6, i32 16778016, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 800]
!2127 = metadata !{i32 800, i32 37, metadata !413, null}
!2128 = metadata !{i32 786689, metadata !413, metadata !"idx", metadata !6, i32 33555232, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [idx] [line 800]
!2129 = metadata !{i32 800, i32 44, metadata !413, null}
!2130 = metadata !{i32 786688, metadata !413, metadata !"o", metadata !6, i32 801, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [o] [line 801]
!2131 = metadata !{i32 801, i32 9, metadata !413, null}
!2132 = metadata !{i32 786688, metadata !413, metadata !"slot", metadata !6, i32 802, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [slot] [line 802]
!2133 = metadata !{i32 802, i32 11, metadata !413, null}
!2134 = metadata !{i32 805, i32 7, metadata !413, null}
!2135 = metadata !{i32 807, i32 10, metadata !413, null}
!2136 = metadata !{i32 808, i32 3, metadata !413, null}
!2137 = metadata !{i32 809, i32 3, metadata !413, null}
!2138 = metadata !{i32 810, i32 3, metadata !413, null}
!2139 = metadata !{i32 810, i32 3, metadata !2140, null}
!2140 = metadata !{i32 786443, metadata !5, metadata !413, i32 810, i32 3, i32 1, i32 383} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2141 = metadata !{i32 810, i32 3, metadata !2142, null}
!2142 = metadata !{i32 786443, metadata !5, metadata !413, i32 810, i32 3, i32 3, i32 385} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2143 = metadata !{i32 810, i32 3, metadata !2144, null}
!2144 = metadata !{i32 786443, metadata !5, metadata !413, i32 810, i32 3, i32 5, i32 387} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2145 = metadata !{i32 810, i32 3, metadata !2146, null}
!2146 = metadata !{i32 786443, metadata !5, metadata !2147, i32 810, i32 3, i32 6, i32 388} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2147 = metadata !{i32 786443, metadata !5, metadata !2148, i32 810, i32 3, i32 4, i32 386} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2148 = metadata !{i32 786443, metadata !5, metadata !413, i32 810, i32 3, i32 2, i32 384} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2149 = metadata !{i32 811, i32 3, metadata !413, null}
!2150 = metadata !{i32 813, i32 1, metadata !413, null}
!2151 = metadata !{i32 786689, metadata !414, metadata !"L", metadata !6, i32 16778032, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 816]
!2152 = metadata !{i32 816, i32 38, metadata !414, null}
!2153 = metadata !{i32 786689, metadata !414, metadata !"idx", metadata !6, i32 33555248, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [idx] [line 816]
!2154 = metadata !{i32 816, i32 45, metadata !414, null}
!2155 = metadata !{i32 786689, metadata !414, metadata !"n", metadata !6, i32 50332464, metadata !53, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 816]
!2156 = metadata !{i32 816, i32 62, metadata !414, null}
!2157 = metadata !{i32 786688, metadata !414, metadata !"o", metadata !6, i32 817, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [o] [line 817]
!2158 = metadata !{i32 817, i32 9, metadata !414, null}
!2159 = metadata !{i32 820, i32 7, metadata !414, null}
!2160 = metadata !{i32 822, i32 3, metadata !414, null}
!2161 = metadata !{i32 823, i32 3, metadata !414, null}
!2162 = metadata !{i32 823, i32 3, metadata !2163, null}
!2163 = metadata !{i32 786443, metadata !5, metadata !414, i32 823, i32 3, i32 1, i32 389} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2164 = metadata !{i32 823, i32 3, metadata !2165, null}
!2165 = metadata !{i32 786443, metadata !5, metadata !414, i32 823, i32 3, i32 3, i32 391} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2166 = metadata !{i32 823, i32 3, metadata !2167, null}
!2167 = metadata !{i32 786443, metadata !5, metadata !414, i32 823, i32 3, i32 5, i32 393} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2168 = metadata !{i32 823, i32 3, metadata !2169, null}
!2169 = metadata !{i32 786443, metadata !5, metadata !2170, i32 823, i32 3, i32 6, i32 394} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2170 = metadata !{i32 786443, metadata !5, metadata !2171, i32 823, i32 3, i32 4, i32 392} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2171 = metadata !{i32 786443, metadata !5, metadata !414, i32 823, i32 3, i32 2, i32 390} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2172 = metadata !{i32 824, i32 3, metadata !414, null}
!2173 = metadata !{i32 826, i32 1, metadata !414, null}
!2174 = metadata !{i32 786689, metadata !415, metadata !"L", metadata !6, i32 16778045, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 829]
!2175 = metadata !{i32 829, i32 38, metadata !415, null}
!2176 = metadata !{i32 786689, metadata !415, metadata !"idx", metadata !6, i32 33555261, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [idx] [line 829]
!2177 = metadata !{i32 829, i32 45, metadata !415, null}
!2178 = metadata !{i32 786689, metadata !415, metadata !"p", metadata !6, i32 50332477, metadata !346, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [p] [line 829]
!2179 = metadata !{i32 829, i32 62, metadata !415, null}
!2180 = metadata !{i32 786688, metadata !415, metadata !"o", metadata !6, i32 830, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [o] [line 830]
!2181 = metadata !{i32 830, i32 9, metadata !415, null}
!2182 = metadata !{i32 786688, metadata !415, metadata !"k", metadata !6, i32 831, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 831]
!2183 = metadata !{i32 831, i32 10, metadata !415, null}
!2184 = metadata !{i32 786688, metadata !415, metadata !"slot", metadata !6, i32 831, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [slot] [line 831]
!2185 = metadata !{i32 831, i32 14, metadata !415, null}
!2186 = metadata !{i32 834, i32 7, metadata !415, null}
!2187 = metadata !{i32 786688, metadata !2188, metadata !"io", metadata !6, i32 836, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [io] [line 836]
!2188 = metadata !{i32 786443, metadata !5, metadata !415, i32 836, i32 3, i32 0, i32 119} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2189 = metadata !{i32 836, i32 3, metadata !2188, null}
!2190 = metadata !{i32 837, i32 10, metadata !415, null}
!2191 = metadata !{i32 838, i32 3, metadata !415, null}
!2192 = metadata !{i32 839, i32 3, metadata !415, null}
!2193 = metadata !{i32 839, i32 3, metadata !2194, null}
!2194 = metadata !{i32 786443, metadata !5, metadata !415, i32 839, i32 3, i32 1, i32 395} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2195 = metadata !{i32 839, i32 3, metadata !2196, null}
!2196 = metadata !{i32 786443, metadata !5, metadata !415, i32 839, i32 3, i32 3, i32 397} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2197 = metadata !{i32 839, i32 3, metadata !2198, null}
!2198 = metadata !{i32 786443, metadata !5, metadata !415, i32 839, i32 3, i32 5, i32 399} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2199 = metadata !{i32 839, i32 3, metadata !2200, null}
!2200 = metadata !{i32 786443, metadata !5, metadata !2201, i32 839, i32 3, i32 6, i32 400} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2201 = metadata !{i32 786443, metadata !5, metadata !2202, i32 839, i32 3, i32 4, i32 398} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2202 = metadata !{i32 786443, metadata !5, metadata !415, i32 839, i32 3, i32 2, i32 396} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2203 = metadata !{i32 840, i32 3, metadata !415, null}
!2204 = metadata !{i32 842, i32 1, metadata !415, null}
!2205 = metadata !{i32 786689, metadata !418, metadata !"L", metadata !6, i32 16778061, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 845]
!2206 = metadata !{i32 845, i32 42, metadata !418, null}
!2207 = metadata !{i32 786689, metadata !418, metadata !"objindex", metadata !6, i32 33555277, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [objindex] [line 845]
!2208 = metadata !{i32 845, i32 49, metadata !418, null}
!2209 = metadata !{i32 786688, metadata !418, metadata !"obj", metadata !6, i32 846, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [obj] [line 846]
!2210 = metadata !{i32 846, i32 11, metadata !418, null}
!2211 = metadata !{i32 786688, metadata !418, metadata !"mt", metadata !6, i32 847, metadata !1733, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mt] [line 847]
!2212 = metadata !{i32 847, i32 10, metadata !418, null}
!2213 = metadata !{i32 850, i32 9, metadata !418, null}
!2214 = metadata !{i32 851, i32 7, metadata !2215, null}
!2215 = metadata !{i32 786443, metadata !5, metadata !418, i32 851, i32 7, i32 0, i32 120} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2216 = metadata !{i32 852, i32 5, metadata !2215, null}
!2217 = metadata !{i32 855, i32 5, metadata !2218, null}
!2218 = metadata !{i32 786443, metadata !5, metadata !2215, i32 853, i32 8, i32 0, i32 121} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2219 = metadata !{i32 857, i32 3, metadata !418, null}
!2220 = metadata !{i32 859, i32 7, metadata !2221, null}
!2221 = metadata !{i32 786443, metadata !5, metadata !2222, i32 858, i32 22, i32 0, i32 123} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2222 = metadata !{i32 786443, metadata !5, metadata !418, i32 857, i32 23, i32 0, i32 122} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2223 = metadata !{i32 860, i32 11, metadata !2224, null}
!2224 = metadata !{i32 786443, metadata !5, metadata !2221, i32 860, i32 11, i32 0, i32 124} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2225 = metadata !{i32 861, i32 9, metadata !2226, null}
!2226 = metadata !{i32 786443, metadata !5, metadata !2224, i32 860, i32 15, i32 0, i32 125} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2227 = metadata !{i32 861, i32 9, metadata !2228, null}
!2228 = metadata !{i32 786443, metadata !5, metadata !2226, i32 861, i32 9, i32 1, i32 401} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2229 = metadata !{i32 861, i32 9, metadata !2230, null}
!2230 = metadata !{i32 786443, metadata !5, metadata !2226, i32 861, i32 9, i32 3, i32 403} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2231 = metadata !{i32 861, i32 9, metadata !2232, null}
!2232 = metadata !{i32 786443, metadata !5, metadata !2233, i32 861, i32 9, i32 4, i32 404} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2233 = metadata !{i32 786443, metadata !5, metadata !2226, i32 861, i32 9, i32 2, i32 402} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2234 = metadata !{i32 862, i32 9, metadata !2226, null}
!2235 = metadata !{i32 863, i32 7, metadata !2226, null}
!2236 = metadata !{i32 864, i32 7, metadata !2221, null}
!2237 = metadata !{i32 867, i32 7, metadata !2238, null}
!2238 = metadata !{i32 786443, metadata !5, metadata !2222, i32 866, i32 25, i32 0, i32 126} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2239 = metadata !{i32 868, i32 11, metadata !2240, null}
!2240 = metadata !{i32 786443, metadata !5, metadata !2238, i32 868, i32 11, i32 0, i32 127} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2241 = metadata !{i32 869, i32 9, metadata !2242, null}
!2242 = metadata !{i32 786443, metadata !5, metadata !2240, i32 868, i32 15, i32 0, i32 128} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2243 = metadata !{i32 869, i32 9, metadata !2244, null}
!2244 = metadata !{i32 786443, metadata !5, metadata !2242, i32 869, i32 9, i32 1, i32 405} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2245 = metadata !{i32 869, i32 9, metadata !2246, null}
!2246 = metadata !{i32 786443, metadata !5, metadata !2242, i32 869, i32 9, i32 3, i32 407} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2247 = metadata !{i32 869, i32 9, metadata !2248, null}
!2248 = metadata !{i32 786443, metadata !5, metadata !2249, i32 869, i32 9, i32 4, i32 408} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2249 = metadata !{i32 786443, metadata !5, metadata !2242, i32 869, i32 9, i32 2, i32 406} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2250 = metadata !{i32 870, i32 9, metadata !2242, null}
!2251 = metadata !{i32 871, i32 7, metadata !2242, null}
!2252 = metadata !{i32 872, i32 7, metadata !2238, null}
!2253 = metadata !{i32 875, i32 7, metadata !2254, null}
!2254 = metadata !{i32 786443, metadata !5, metadata !2222, i32 874, i32 14, i32 0, i32 129} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2255 = metadata !{i32 876, i32 7, metadata !2254, null}
!2256 = metadata !{i32 879, i32 3, metadata !418, null}
!2257 = metadata !{i32 881, i32 3, metadata !418, null}
!2258 = metadata !{i32 786689, metadata !419, metadata !"L", metadata !6, i32 16778101, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 885]
!2259 = metadata !{i32 885, i32 43, metadata !419, null}
!2260 = metadata !{i32 786689, metadata !419, metadata !"idx", metadata !6, i32 33555317, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [idx] [line 885]
!2261 = metadata !{i32 885, i32 50, metadata !419, null}
!2262 = metadata !{i32 786688, metadata !419, metadata !"o", metadata !6, i32 886, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [o] [line 886]
!2263 = metadata !{i32 886, i32 9, metadata !419, null}
!2264 = metadata !{i32 889, i32 7, metadata !419, null}
!2265 = metadata !{i32 786688, metadata !2266, metadata !"io", metadata !6, i32 891, metadata !549, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [io] [line 891]
!2266 = metadata !{i32 786443, metadata !5, metadata !419, i32 891, i32 3, i32 0, i32 130} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2267 = metadata !{i32 891, i32 3, metadata !2266, null}
!2268 = metadata !{i32 786688, metadata !2266, metadata !"iu", metadata !6, i32 891, metadata !2269, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iu] [line 891]
!2269 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1958} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from Udata]
!2270 = metadata !{i32 892, i32 3, metadata !419, null}
!2271 = metadata !{i32 892, i32 3, metadata !2272, null}
!2272 = metadata !{i32 786443, metadata !5, metadata !419, i32 892, i32 3, i32 1, i32 409} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2273 = metadata !{i32 892, i32 3, metadata !2274, null}
!2274 = metadata !{i32 786443, metadata !5, metadata !419, i32 892, i32 3, i32 3, i32 411} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2275 = metadata !{i32 892, i32 3, metadata !2276, null}
!2276 = metadata !{i32 786443, metadata !5, metadata !419, i32 892, i32 3, i32 5, i32 413} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2277 = metadata !{i32 892, i32 3, metadata !2278, null}
!2278 = metadata !{i32 786443, metadata !5, metadata !2279, i32 892, i32 3, i32 6, i32 414} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2279 = metadata !{i32 786443, metadata !5, metadata !2280, i32 892, i32 3, i32 4, i32 412} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2280 = metadata !{i32 786443, metadata !5, metadata !419, i32 892, i32 3, i32 2, i32 410} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2281 = metadata !{i32 893, i32 3, metadata !419, null}
!2282 = metadata !{i32 895, i32 1, metadata !419, null}
!2283 = metadata !{i32 786689, metadata !420, metadata !"L", metadata !6, i32 16778124, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 908]
!2284 = metadata !{i32 908, i32 36, metadata !420, null}
!2285 = metadata !{i32 786689, metadata !420, metadata !"nargs", metadata !6, i32 33555340, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nargs] [line 908]
!2286 = metadata !{i32 908, i32 43, metadata !420, null}
!2287 = metadata !{i32 786689, metadata !420, metadata !"nresults", metadata !6, i32 50332556, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nresults] [line 908]
!2288 = metadata !{i32 908, i32 54, metadata !420, null}
!2289 = metadata !{i32 786689, metadata !420, metadata !"ctx", metadata !6, i32 67109773, metadata !204, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ctx] [line 909]
!2290 = metadata !{i32 909, i32 38, metadata !420, null}
!2291 = metadata !{i32 786689, metadata !420, metadata !"k", metadata !6, i32 83886989, metadata !200, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [k] [line 909]
!2292 = metadata !{i32 909, i32 57, metadata !420, null}
!2293 = metadata !{i32 786688, metadata !420, metadata !"func", metadata !6, i32 910, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [func] [line 910]
!2294 = metadata !{i32 910, i32 9, metadata !420, null}
!2295 = metadata !{i32 917, i32 3, metadata !420, null}
!2296 = metadata !{i32 918, i32 7, metadata !2297, null}
!2297 = metadata !{i32 786443, metadata !5, metadata !420, i32 918, i32 7, i32 0, i32 131} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2298 = metadata !{i32 918, i32 7, metadata !2299, null}
!2299 = metadata !{i32 786443, metadata !5, metadata !2297, i32 918, i32 7, i32 1, i32 415} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2300 = metadata !{i32 919, i32 5, metadata !2301, null}
!2301 = metadata !{i32 786443, metadata !5, metadata !2297, i32 918, i32 33, i32 0, i32 132} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2302 = metadata !{i32 920, i32 5, metadata !2301, null}
!2303 = metadata !{i32 921, i32 5, metadata !2301, null}
!2304 = metadata !{i32 922, i32 3, metadata !2301, null}
!2305 = metadata !{i32 924, i32 5, metadata !2297, null}
!2306 = metadata !{i32 925, i32 3, metadata !2307, null}
!2307 = metadata !{i32 786443, metadata !5, metadata !2308, i32 925, i32 3, i32 0, i32 134} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2308 = metadata !{i32 786443, metadata !5, metadata !420, i32 925, i32 3, i32 0, i32 133} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2309 = metadata !{i32 925, i32 3, metadata !2310, null}
!2310 = metadata !{i32 786443, metadata !5, metadata !2307, i32 925, i32 3, i32 1, i32 416} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2311 = metadata !{i32 925, i32 3, metadata !2312, null}
!2312 = metadata !{i32 786443, metadata !5, metadata !2307, i32 925, i32 3, i32 2, i32 417} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2313 = metadata !{i32 927, i32 1, metadata !420, null}
!2314 = metadata !{i32 786689, metadata !423, metadata !"L", metadata !6, i32 16778163, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 947]
!2315 = metadata !{i32 947, i32 36, metadata !423, null}
!2316 = metadata !{i32 786689, metadata !423, metadata !"nargs", metadata !6, i32 33555379, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nargs] [line 947]
!2317 = metadata !{i32 947, i32 43, metadata !423, null}
!2318 = metadata !{i32 786689, metadata !423, metadata !"nresults", metadata !6, i32 50332595, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nresults] [line 947]
!2319 = metadata !{i32 947, i32 54, metadata !423, null}
!2320 = metadata !{i32 786689, metadata !423, metadata !"errfunc", metadata !6, i32 67109811, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [errfunc] [line 947]
!2321 = metadata !{i32 947, i32 68, metadata !423, null}
!2322 = metadata !{i32 786689, metadata !423, metadata !"ctx", metadata !6, i32 83887028, metadata !204, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ctx] [line 948]
!2323 = metadata !{i32 948, i32 38, metadata !423, null}
!2324 = metadata !{i32 786689, metadata !423, metadata !"k", metadata !6, i32 100664244, metadata !200, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [k] [line 948]
!2325 = metadata !{i32 948, i32 57, metadata !423, null}
!2326 = metadata !{i32 786688, metadata !423, metadata !"c", metadata !6, i32 949, metadata !2327, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c] [line 949]
!2327 = metadata !{i32 786451, metadata !5, null, metadata !"CallS", i32 934, i64 64, i64 32, i32 0, i32 0, null, metadata !2328, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [CallS] [line 934, size 64, align 32, offset 0] [def] [from ]
!2328 = metadata !{metadata !2329, metadata !2330}
!2329 = metadata !{i32 786445, metadata !5, metadata !2327, metadata !"func", i32 935, i64 32, i64 32, i64 0, i32 0, metadata !34} ; [ DW_TAG_member ] [func] [line 935, size 32, align 32, offset 0] [from StkId]
!2330 = metadata !{i32 786445, metadata !5, metadata !2327, metadata !"nresults", i32 936, i64 32, i64 32, i64 32, i32 0, metadata !9} ; [ DW_TAG_member ] [nresults] [line 936, size 32, align 32, offset 32] [from int]
!2331 = metadata !{i32 949, i32 16, metadata !423, null}
!2332 = metadata !{i32 786688, metadata !423, metadata !"status", metadata !6, i32 950, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [status] [line 950]
!2333 = metadata !{i32 950, i32 7, metadata !423, null}
!2334 = metadata !{i32 786688, metadata !423, metadata !"func", metadata !6, i32 951, metadata !75, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [func] [line 951]
!2335 = metadata !{i32 951, i32 13, metadata !423, null}
!2336 = metadata !{i32 958, i32 7, metadata !2337, null}
!2337 = metadata !{i32 786443, metadata !5, metadata !423, i32 958, i32 7, i32 0, i32 135} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2338 = metadata !{i32 959, i32 5, metadata !2337, null}
!2339 = metadata !{i32 786688, metadata !2340, metadata !"o", metadata !6, i32 961, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [o] [line 961]
!2340 = metadata !{i32 786443, metadata !5, metadata !2337, i32 960, i32 8, i32 0, i32 136} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2341 = metadata !{i32 961, i32 11, metadata !2340, null}
!2342 = metadata !{i32 961, i32 15, metadata !2340, null}
!2343 = metadata !{i32 963, i32 5, metadata !2340, null}
!2344 = metadata !{i32 965, i32 3, metadata !423, null}
!2345 = metadata !{i32 966, i32 7, metadata !2346, null}
!2346 = metadata !{i32 786443, metadata !5, metadata !423, i32 966, i32 7, i32 0, i32 137} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2347 = metadata !{i32 966, i32 7, metadata !2348, null}
!2348 = metadata !{i32 786443, metadata !5, metadata !2346, i32 966, i32 7, i32 1, i32 418} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2349 = metadata !{i32 967, i32 5, metadata !2350, null}
!2350 = metadata !{i32 786443, metadata !5, metadata !2346, i32 966, i32 32, i32 0, i32 138} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2351 = metadata !{i32 968, i32 14, metadata !2350, null}
!2352 = metadata !{i32 969, i32 3, metadata !2350, null}
!2353 = metadata !{i32 786688, metadata !2354, metadata !"ci", metadata !6, i32 971, metadata !176, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ci] [line 971]
!2354 = metadata !{i32 786443, metadata !5, metadata !2346, i32 970, i32 8, i32 0, i32 139} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2355 = metadata !{i32 971, i32 15, metadata !2354, null}
!2356 = metadata !{i32 971, i32 5, metadata !2354, null}
!2357 = metadata !{i32 972, i32 5, metadata !2354, null}
!2358 = metadata !{i32 973, i32 5, metadata !2354, null}
!2359 = metadata !{i32 975, i32 5, metadata !2354, null}
!2360 = metadata !{i32 976, i32 5, metadata !2354, null}
!2361 = metadata !{i32 977, i32 5, metadata !2354, null}
!2362 = metadata !{i32 978, i32 5, metadata !2354, null}
!2363 = metadata !{i32 979, i32 5, metadata !2354, null}
!2364 = metadata !{i32 980, i32 5, metadata !2354, null}
!2365 = metadata !{i32 981, i32 5, metadata !2354, null}
!2366 = metadata !{i32 982, i32 5, metadata !2354, null}
!2367 = metadata !{i32 983, i32 5, metadata !2354, null}
!2368 = metadata !{i32 985, i32 3, metadata !2369, null}
!2369 = metadata !{i32 786443, metadata !5, metadata !2370, i32 985, i32 3, i32 0, i32 141} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2370 = metadata !{i32 786443, metadata !5, metadata !423, i32 985, i32 3, i32 0, i32 140} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2371 = metadata !{i32 985, i32 3, metadata !2372, null}
!2372 = metadata !{i32 786443, metadata !5, metadata !2369, i32 985, i32 3, i32 1, i32 419} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2373 = metadata !{i32 985, i32 3, metadata !2374, null}
!2374 = metadata !{i32 786443, metadata !5, metadata !2369, i32 985, i32 3, i32 2, i32 420} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2375 = metadata !{i32 987, i32 3, metadata !423, null}
!2376 = metadata !{i32 786689, metadata !545, metadata !"L", metadata !6, i32 16778156, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 940]
!2377 = metadata !{i32 940, i32 32, metadata !545, null}
!2378 = metadata !{i32 786689, metadata !545, metadata !"ud", metadata !6, i32 33555372, metadata !45, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ud] [line 940]
!2379 = metadata !{i32 940, i32 41, metadata !545, null}
!2380 = metadata !{i32 786688, metadata !545, metadata !"c", metadata !6, i32 941, metadata !2381, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c] [line 941]
!2381 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !2327} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from CallS]
!2382 = metadata !{i32 941, i32 17, metadata !545, null}
!2383 = metadata !{i32 941, i32 3, metadata !545, null}
!2384 = metadata !{i32 942, i32 3, metadata !545, null}
!2385 = metadata !{i32 943, i32 1, metadata !545, null}
!2386 = metadata !{i32 786689, metadata !426, metadata !"L", metadata !6, i32 16778207, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 991]
!2387 = metadata !{i32 991, i32 34, metadata !426, null}
!2388 = metadata !{i32 786689, metadata !426, metadata !"reader", metadata !6, i32 33555423, metadata !429, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [reader] [line 991]
!2389 = metadata !{i32 991, i32 48, metadata !426, null}
!2390 = metadata !{i32 786689, metadata !426, metadata !"data", metadata !6, i32 50332639, metadata !45, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [data] [line 991]
!2391 = metadata !{i32 991, i32 62, metadata !426, null}
!2392 = metadata !{i32 786689, metadata !426, metadata !"chunkname", metadata !6, i32 67109856, metadata !251, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [chunkname] [line 992]
!2393 = metadata !{i32 992, i32 35, metadata !426, null}
!2394 = metadata !{i32 786689, metadata !426, metadata !"mode", metadata !6, i32 83887072, metadata !251, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mode] [line 992]
!2395 = metadata !{i32 992, i32 58, metadata !426, null}
!2396 = metadata !{i32 786688, metadata !426, metadata !"z", metadata !6, i32 993, metadata !2397, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [z] [line 993]
!2397 = metadata !{i32 786454, metadata !2398, null, metadata !"ZIO", i32 18, i64 0, i64 0, i64 0, i32 0, metadata !2399} ; [ DW_TAG_typedef ] [ZIO] [line 18, size 0, align 0, offset 0] [from Zio]
!2398 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lzio.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!2399 = metadata !{i32 786451, metadata !2398, null, metadata !"Zio", i32 55, i64 160, i64 32, i32 0, i32 0, null, metadata !2400, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [Zio] [line 55, size 160, align 32, offset 0] [def] [from ]
!2400 = metadata !{metadata !2401, metadata !2402, metadata !2403, metadata !2404, metadata !2405}
!2401 = metadata !{i32 786445, metadata !2398, metadata !2399, metadata !"n", i32 56, i64 32, i64 32, i64 0, i32 0, metadata !69} ; [ DW_TAG_member ] [n] [line 56, size 32, align 32, offset 0] [from size_t]
!2402 = metadata !{i32 786445, metadata !2398, metadata !2399, metadata !"p", i32 57, i64 32, i64 32, i64 32, i32 0, metadata !251} ; [ DW_TAG_member ] [p] [line 57, size 32, align 32, offset 32] [from ]
!2403 = metadata !{i32 786445, metadata !2398, metadata !2399, metadata !"reader", i32 58, i64 32, i64 32, i64 64, i32 0, metadata !429} ; [ DW_TAG_member ] [reader] [line 58, size 32, align 32, offset 64] [from lua_Reader]
!2404 = metadata !{i32 786445, metadata !2398, metadata !2399, metadata !"data", i32 59, i64 32, i64 32, i64 96, i32 0, metadata !45} ; [ DW_TAG_member ] [data] [line 59, size 32, align 32, offset 96] [from ]
!2405 = metadata !{i32 786445, metadata !2398, metadata !2399, metadata !"L", i32 60, i64 32, i64 32, i64 128, i32 0, metadata !10} ; [ DW_TAG_member ] [L] [line 60, size 32, align 32, offset 128] [from ]
!2406 = metadata !{i32 993, i32 7, metadata !426, null}
!2407 = metadata !{i32 786688, metadata !426, metadata !"status", metadata !6, i32 994, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [status] [line 994]
!2408 = metadata !{i32 994, i32 7, metadata !426, null}
!2409 = metadata !{i32 996, i32 7, metadata !2410, null}
!2410 = metadata !{i32 786443, metadata !5, metadata !426, i32 996, i32 7, i32 0, i32 142} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2411 = metadata !{i32 996, i32 19, metadata !2412, null}
!2412 = metadata !{i32 786443, metadata !5, metadata !2410, i32 996, i32 19, i32 1, i32 421} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2413 = metadata !{i32 997, i32 3, metadata !426, null}
!2414 = metadata !{i32 998, i32 12, metadata !426, null}
!2415 = metadata !{i32 999, i32 7, metadata !2416, null}
!2416 = metadata !{i32 786443, metadata !5, metadata !426, i32 999, i32 7, i32 0, i32 143} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2417 = metadata !{i32 786688, metadata !2418, metadata !"f", metadata !6, i32 1000, metadata !471, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [f] [line 1000]
!2418 = metadata !{i32 786443, metadata !5, metadata !2416, i32 999, i32 25, i32 0, i32 144} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2419 = metadata !{i32 1000, i32 15, metadata !2418, null}
!2420 = metadata !{i32 1000, i32 5, metadata !2418, null}
!2421 = metadata !{i32 1001, i32 9, metadata !2422, null}
!2422 = metadata !{i32 786443, metadata !5, metadata !2418, i32 1001, i32 9, i32 0, i32 145} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2423 = metadata !{i32 786688, metadata !2424, metadata !"reg", metadata !6, i32 1003, metadata !1733, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [reg] [line 1003]
!2424 = metadata !{i32 786443, metadata !5, metadata !2422, i32 1001, i32 28, i32 0, i32 146} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2425 = metadata !{i32 1003, i32 14, metadata !2424, null}
!2426 = metadata !{i32 1003, i32 7, metadata !2424, null}
!2427 = metadata !{i32 786688, metadata !2424, metadata !"gt", metadata !6, i32 1004, metadata !549, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gt] [line 1004]
!2428 = metadata !{i32 1004, i32 21, metadata !2424, null}
!2429 = metadata !{i32 1004, i32 26, metadata !2424, null}
!2430 = metadata !{i32 786688, metadata !2431, metadata !"io1", metadata !6, i32 1006, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [io1] [line 1006]
!2431 = metadata !{i32 786443, metadata !5, metadata !2424, i32 1006, i32 7, i32 0, i32 147} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2432 = metadata !{i32 1006, i32 7, metadata !2431, null}
!2433 = metadata !{i32 1007, i32 7, metadata !2424, null}
!2434 = metadata !{i32 1007, i32 7, metadata !2435, null}
!2435 = metadata !{i32 786443, metadata !5, metadata !2424, i32 1007, i32 7, i32 1, i32 422} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2436 = metadata !{i32 1007, i32 7, metadata !2437, null}
!2437 = metadata !{i32 786443, metadata !5, metadata !2424, i32 1007, i32 7, i32 4, i32 425} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2438 = metadata !{i32 1007, i32 7, metadata !2439, null}
!2439 = metadata !{i32 786443, metadata !5, metadata !2440, i32 1007, i32 7, i32 3, i32 424} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2440 = metadata !{i32 786443, metadata !5, metadata !2424, i32 1007, i32 7, i32 2, i32 423} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2441 = metadata !{i32 1008, i32 5, metadata !2424, null}
!2442 = metadata !{i32 1009, i32 3, metadata !2418, null}
!2443 = metadata !{i32 1011, i32 3, metadata !426, null}
!2444 = metadata !{i32 786689, metadata !433, metadata !"L", metadata !6, i32 16778231, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 1015]
!2445 = metadata !{i32 1015, i32 34, metadata !433, null}
!2446 = metadata !{i32 786689, metadata !433, metadata !"writer", metadata !6, i32 33555447, metadata !436, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [writer] [line 1015]
!2447 = metadata !{i32 1015, i32 48, metadata !433, null}
!2448 = metadata !{i32 786689, metadata !433, metadata !"data", metadata !6, i32 50332663, metadata !45, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [data] [line 1015]
!2449 = metadata !{i32 1015, i32 62, metadata !433, null}
!2450 = metadata !{i32 786689, metadata !433, metadata !"strip", metadata !6, i32 67109879, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [strip] [line 1015]
!2451 = metadata !{i32 1015, i32 72, metadata !433, null}
!2452 = metadata !{i32 786688, metadata !433, metadata !"status", metadata !6, i32 1016, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [status] [line 1016]
!2453 = metadata !{i32 1016, i32 7, metadata !433, null}
!2454 = metadata !{i32 786688, metadata !433, metadata !"o", metadata !6, i32 1017, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [o] [line 1017]
!2455 = metadata !{i32 1017, i32 11, metadata !433, null}
!2456 = metadata !{i32 1020, i32 3, metadata !433, null}
!2457 = metadata !{i32 1021, i32 7, metadata !2458, null}
!2458 = metadata !{i32 786443, metadata !5, metadata !433, i32 1021, i32 7, i32 0, i32 148} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2459 = metadata !{i32 1022, i32 14, metadata !2458, null}
!2460 = metadata !{i32 1024, i32 5, metadata !2458, null}
!2461 = metadata !{i32 1026, i32 3, metadata !433, null}
!2462 = metadata !{i32 786689, metadata !440, metadata !"L", metadata !6, i32 16778246, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 1030]
!2463 = metadata !{i32 1030, i32 36, metadata !440, null}
!2464 = metadata !{i32 1031, i32 3, metadata !440, null}
!2465 = metadata !{i32 786689, metadata !441, metadata !"L", metadata !6, i32 16778255, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 1039]
!2466 = metadata !{i32 1039, i32 32, metadata !441, null}
!2467 = metadata !{i32 786689, metadata !441, metadata !"what", metadata !6, i32 33555471, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [what] [line 1039]
!2468 = metadata !{i32 1039, i32 39, metadata !441, null}
!2469 = metadata !{i32 786689, metadata !441, metadata !"data", metadata !6, i32 50332687, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [data] [line 1039]
!2470 = metadata !{i32 1039, i32 49, metadata !441, null}
!2471 = metadata !{i32 786688, metadata !441, metadata !"res", metadata !6, i32 1040, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [res] [line 1040]
!2472 = metadata !{i32 1040, i32 7, metadata !441, null}
!2473 = metadata !{i32 1040, i32 3, metadata !441, null}
!2474 = metadata !{i32 786688, metadata !441, metadata !"g", metadata !6, i32 1041, metadata !60, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [g] [line 1041]
!2475 = metadata !{i32 1041, i32 17, metadata !441, null}
!2476 = metadata !{i32 1043, i32 3, metadata !441, null}
!2477 = metadata !{i32 1044, i32 3, metadata !441, null}
!2478 = metadata !{i32 1046, i32 7, metadata !2479, null}
!2479 = metadata !{i32 786443, metadata !5, metadata !2480, i32 1045, i32 22, i32 0, i32 150} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2480 = metadata !{i32 786443, metadata !5, metadata !441, i32 1044, i32 17, i32 0, i32 149} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2481 = metadata !{i32 1047, i32 7, metadata !2479, null}
!2482 = metadata !{i32 1050, i32 7, metadata !2483, null}
!2483 = metadata !{i32 786443, metadata !5, metadata !2480, i32 1049, i32 25, i32 0, i32 151} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2484 = metadata !{i32 1051, i32 7, metadata !2483, null}
!2485 = metadata !{i32 1052, i32 7, metadata !2483, null}
!2486 = metadata !{i32 1055, i32 7, metadata !2487, null}
!2487 = metadata !{i32 786443, metadata !5, metadata !2480, i32 1054, i32 25, i32 0, i32 152} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2488 = metadata !{i32 1056, i32 7, metadata !2487, null}
!2489 = metadata !{i32 1060, i32 7, metadata !2490, null}
!2490 = metadata !{i32 786443, metadata !5, metadata !2480, i32 1058, i32 23, i32 0, i32 153} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2491 = metadata !{i32 1061, i32 7, metadata !2490, null}
!2492 = metadata !{i32 1064, i32 7, metadata !2493, null}
!2493 = metadata !{i32 786443, metadata !5, metadata !2480, i32 1063, i32 24, i32 0, i32 154} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2494 = metadata !{i32 1065, i32 7, metadata !2493, null}
!2495 = metadata !{i32 786688, metadata !2496, metadata !"debt", metadata !6, i32 1068, metadata !74, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [debt] [line 1068]
!2496 = metadata !{i32 786443, metadata !5, metadata !2480, i32 1067, i32 22, i32 0, i32 155} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2497 = metadata !{i32 1068, i32 13, metadata !2496, null}
!2498 = metadata !{i32 1068, i32 7, metadata !2496, null}
!2499 = metadata !{i32 786688, metadata !2496, metadata !"oldrunning", metadata !6, i32 1069, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [oldrunning] [line 1069]
!2500 = metadata !{i32 1069, i32 15, metadata !2496, null}
!2501 = metadata !{i32 1069, i32 7, metadata !2496, null}
!2502 = metadata !{i32 1070, i32 7, metadata !2496, null}
!2503 = metadata !{i32 1071, i32 11, metadata !2504, null}
!2504 = metadata !{i32 786443, metadata !5, metadata !2496, i32 1071, i32 11, i32 0, i32 156} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2505 = metadata !{i32 1072, i32 9, metadata !2506, null}
!2506 = metadata !{i32 786443, metadata !5, metadata !2504, i32 1071, i32 22, i32 0, i32 157} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2507 = metadata !{i32 1073, i32 9, metadata !2506, null}
!2508 = metadata !{i32 1074, i32 7, metadata !2506, null}
!2509 = metadata !{i32 1076, i32 9, metadata !2510, null}
!2510 = metadata !{i32 786443, metadata !5, metadata !2504, i32 1075, i32 12, i32 0, i32 158} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2511 = metadata !{i32 1077, i32 9, metadata !2510, null}
!2512 = metadata !{i32 1078, i32 9, metadata !2513, null}
!2513 = metadata !{i32 786443, metadata !5, metadata !2514, i32 1078, i32 9, i32 0, i32 160} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2514 = metadata !{i32 786443, metadata !5, metadata !2510, i32 1078, i32 9, i32 0, i32 159} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2515 = metadata !{i32 1078, i32 9, metadata !2516, null}
!2516 = metadata !{i32 786443, metadata !5, metadata !2517, i32 1078, i32 9, i32 1, i32 426} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2517 = metadata !{i32 786443, metadata !5, metadata !2513, i32 1078, i32 9, i32 0, i32 161} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2518 = metadata !{i32 1080, i32 7, metadata !2496, null}
!2519 = metadata !{i32 1081, i32 11, metadata !2520, null}
!2520 = metadata !{i32 786443, metadata !5, metadata !2496, i32 1081, i32 11, i32 0, i32 162} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2521 = metadata !{i32 1081, i32 11, metadata !2522, null}
!2522 = metadata !{i32 786443, metadata !5, metadata !2520, i32 1081, i32 11, i32 1, i32 427} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2523 = metadata !{i32 1082, i32 9, metadata !2520, null}
!2524 = metadata !{i32 1083, i32 7, metadata !2496, null}
!2525 = metadata !{i32 1086, i32 7, metadata !2526, null}
!2526 = metadata !{i32 786443, metadata !5, metadata !2480, i32 1085, i32 26, i32 0, i32 163} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2527 = metadata !{i32 1087, i32 7, metadata !2526, null}
!2528 = metadata !{i32 1088, i32 7, metadata !2526, null}
!2529 = metadata !{i32 1091, i32 7, metadata !2530, null}
!2530 = metadata !{i32 786443, metadata !5, metadata !2480, i32 1090, i32 28, i32 0, i32 164} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2531 = metadata !{i32 1092, i32 11, metadata !2532, null}
!2532 = metadata !{i32 786443, metadata !5, metadata !2530, i32 1092, i32 11, i32 0, i32 165} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2533 = metadata !{i32 1092, i32 22, metadata !2534, null}
!2534 = metadata !{i32 786443, metadata !5, metadata !2532, i32 1092, i32 22, i32 1, i32 428} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2535 = metadata !{i32 1093, i32 7, metadata !2530, null}
!2536 = metadata !{i32 1094, i32 7, metadata !2530, null}
!2537 = metadata !{i32 1097, i32 7, metadata !2538, null}
!2538 = metadata !{i32 786443, metadata !5, metadata !2480, i32 1096, i32 27, i32 0, i32 166} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2539 = metadata !{i32 1098, i32 7, metadata !2538, null}
!2540 = metadata !{i32 1100, i32 14, metadata !2480, null}
!2541 = metadata !{i32 1101, i32 3, metadata !2480, null}
!2542 = metadata !{i32 1103, i32 3, metadata !441, null}
!2543 = metadata !{i32 786689, metadata !442, metadata !"L", metadata !6, i32 16778329, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 1113]
!2544 = metadata !{i32 1113, i32 35, metadata !442, null}
!2545 = metadata !{i32 1116, i32 3, metadata !442, null}
!2546 = metadata !{i32 1119, i32 1, metadata !442, null}
!2547 = metadata !{i32 786689, metadata !443, metadata !"L", metadata !6, i32 16778338, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 1122]
!2548 = metadata !{i32 1122, i32 34, metadata !443, null}
!2549 = metadata !{i32 786689, metadata !443, metadata !"idx", metadata !6, i32 33555554, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [idx] [line 1122]
!2550 = metadata !{i32 1122, i32 41, metadata !443, null}
!2551 = metadata !{i32 786688, metadata !443, metadata !"t", metadata !6, i32 1123, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [t] [line 1123]
!2552 = metadata !{i32 1123, i32 9, metadata !443, null}
!2553 = metadata !{i32 786688, metadata !443, metadata !"more", metadata !6, i32 1124, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [more] [line 1124]
!2554 = metadata !{i32 1124, i32 7, metadata !443, null}
!2555 = metadata !{i32 1126, i32 7, metadata !443, null}
!2556 = metadata !{i32 1128, i32 10, metadata !443, null}
!2557 = metadata !{i32 1129, i32 7, metadata !2558, null}
!2558 = metadata !{i32 786443, metadata !5, metadata !443, i32 1129, i32 7, i32 0, i32 167} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2559 = metadata !{i32 1130, i32 5, metadata !2560, null}
!2560 = metadata !{i32 786443, metadata !5, metadata !2561, i32 1130, i32 5, i32 0, i32 169} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2561 = metadata !{i32 786443, metadata !5, metadata !2558, i32 1129, i32 13, i32 0, i32 168} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2562 = metadata !{i32 1131, i32 3, metadata !2561, null}
!2563 = metadata !{i32 1133, i32 5, metadata !2558, null}
!2564 = metadata !{i32 1135, i32 3, metadata !443, null}
!2565 = metadata !{i32 786689, metadata !444, metadata !"L", metadata !6, i32 16778355, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 1139]
!2566 = metadata !{i32 1139, i32 37, metadata !444, null}
!2567 = metadata !{i32 786689, metadata !444, metadata !"n", metadata !6, i32 33555571, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 1139]
!2568 = metadata !{i32 1139, i32 44, metadata !444, null}
!2569 = metadata !{i32 1142, i32 7, metadata !2570, null}
!2570 = metadata !{i32 786443, metadata !5, metadata !444, i32 1142, i32 7, i32 0, i32 170} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2571 = metadata !{i32 1143, i32 5, metadata !2572, null}
!2572 = metadata !{i32 786443, metadata !5, metadata !2570, i32 1142, i32 15, i32 0, i32 171} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2573 = metadata !{i32 1144, i32 3, metadata !2572, null}
!2574 = metadata !{i32 1145, i32 12, metadata !2575, null}
!2575 = metadata !{i32 786443, metadata !5, metadata !2570, i32 1145, i32 12, i32 0, i32 172} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2576 = metadata !{i32 786688, metadata !2577, metadata !"io", metadata !6, i32 1146, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [io] [line 1146]
!2577 = metadata !{i32 786443, metadata !5, metadata !2578, i32 1146, i32 5, i32 0, i32 174} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2578 = metadata !{i32 786443, metadata !5, metadata !2575, i32 1145, i32 20, i32 0, i32 173} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2579 = metadata !{i32 1146, i32 5, metadata !2577, null}
!2580 = metadata !{i32 786688, metadata !2577, metadata !"x_", metadata !6, i32 1146, metadata !86, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x_] [line 1146]
!2581 = metadata !{i32 1147, i32 5, metadata !2582, null}
!2582 = metadata !{i32 786443, metadata !5, metadata !2578, i32 1147, i32 5, i32 0, i32 175} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2583 = metadata !{i32 1148, i32 3, metadata !2578, null}
!2584 = metadata !{i32 1150, i32 3, metadata !2585, null}
!2585 = metadata !{i32 786443, metadata !5, metadata !2586, i32 1150, i32 3, i32 0, i32 177} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2586 = metadata !{i32 786443, metadata !5, metadata !444, i32 1150, i32 3, i32 0, i32 176} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2587 = metadata !{i32 1150, i32 3, metadata !2588, null}
!2588 = metadata !{i32 786443, metadata !5, metadata !2589, i32 1150, i32 3, i32 1, i32 429} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2589 = metadata !{i32 786443, metadata !5, metadata !2585, i32 1150, i32 3, i32 0, i32 178} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2590 = metadata !{i32 1152, i32 1, metadata !444, null}
!2591 = metadata !{i32 786689, metadata !445, metadata !"L", metadata !6, i32 16778371, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 1155]
!2592 = metadata !{i32 1155, i32 34, metadata !445, null}
!2593 = metadata !{i32 786689, metadata !445, metadata !"idx", metadata !6, i32 33555587, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [idx] [line 1155]
!2594 = metadata !{i32 1155, i32 41, metadata !445, null}
!2595 = metadata !{i32 786688, metadata !445, metadata !"t", metadata !6, i32 1156, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [t] [line 1156]
!2596 = metadata !{i32 1156, i32 9, metadata !445, null}
!2597 = metadata !{i32 1158, i32 7, metadata !445, null}
!2598 = metadata !{i32 1159, i32 3, metadata !445, null}
!2599 = metadata !{i32 1160, i32 3, metadata !2600, null}
!2600 = metadata !{i32 786443, metadata !5, metadata !445, i32 1160, i32 3, i32 0, i32 179} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2601 = metadata !{i32 1162, i32 1, metadata !445, null}
!2602 = metadata !{i32 786689, metadata !446, metadata !"L", metadata !6, i32 16778381, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 1165]
!2603 = metadata !{i32 1165, i32 45, metadata !446, null}
!2604 = metadata !{i32 786689, metadata !446, metadata !"ud", metadata !6, i32 33555597, metadata !449, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ud] [line 1165]
!2605 = metadata !{i32 1165, i32 55, metadata !446, null}
!2606 = metadata !{i32 786688, metadata !446, metadata !"f", metadata !6, i32 1166, metadata !65, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [f] [line 1166]
!2607 = metadata !{i32 1166, i32 13, metadata !446, null}
!2608 = metadata !{i32 1168, i32 7, metadata !2609, null}
!2609 = metadata !{i32 786443, metadata !5, metadata !446, i32 1168, i32 7, i32 0, i32 180} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2610 = metadata !{i32 1168, i32 11, metadata !2611, null}
!2611 = metadata !{i32 786443, metadata !5, metadata !2609, i32 1168, i32 11, i32 1, i32 430} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2612 = metadata !{i32 1169, i32 3, metadata !446, null}
!2613 = metadata !{i32 1171, i32 3, metadata !446, null}
!2614 = metadata !{i32 786689, metadata !450, metadata !"L", metadata !6, i32 16778391, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 1175]
!2615 = metadata !{i32 1175, i32 40, metadata !450, null}
!2616 = metadata !{i32 786689, metadata !450, metadata !"f", metadata !6, i32 33555607, metadata !65, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [f] [line 1175]
!2617 = metadata !{i32 1175, i32 53, metadata !450, null}
!2618 = metadata !{i32 786689, metadata !450, metadata !"ud", metadata !6, i32 50332823, metadata !45, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ud] [line 1175]
!2619 = metadata !{i32 1175, i32 62, metadata !450, null}
!2620 = metadata !{i32 1177, i32 3, metadata !450, null}
!2621 = metadata !{i32 1178, i32 3, metadata !450, null}
!2622 = metadata !{i32 1180, i32 1, metadata !450, null}
!2623 = metadata !{i32 786689, metadata !453, metadata !"L", metadata !6, i32 16778399, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 1183]
!2624 = metadata !{i32 1183, i32 43, metadata !453, null}
!2625 = metadata !{i32 786689, metadata !453, metadata !"size", metadata !6, i32 33555615, metadata !69, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 1183]
!2626 = metadata !{i32 1183, i32 53, metadata !453, null}
!2627 = metadata !{i32 786688, metadata !453, metadata !"u", metadata !6, i32 1184, metadata !2269, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [u] [line 1184]
!2628 = metadata !{i32 1184, i32 10, metadata !453, null}
!2629 = metadata !{i32 1186, i32 7, metadata !453, null}
!2630 = metadata !{i32 786688, metadata !2631, metadata !"io", metadata !6, i32 1187, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [io] [line 1187]
!2631 = metadata !{i32 786443, metadata !5, metadata !453, i32 1187, i32 3, i32 0, i32 181} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2632 = metadata !{i32 1187, i32 3, metadata !2631, null}
!2633 = metadata !{i32 786688, metadata !2631, metadata !"x_", metadata !6, i32 1187, metadata !2269, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x_] [line 1187]
!2634 = metadata !{i32 1188, i32 3, metadata !2635, null}
!2635 = metadata !{i32 786443, metadata !5, metadata !453, i32 1188, i32 3, i32 0, i32 182} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2636 = metadata !{i32 1189, i32 3, metadata !2637, null}
!2637 = metadata !{i32 786443, metadata !5, metadata !2638, i32 1189, i32 3, i32 0, i32 184} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2638 = metadata !{i32 786443, metadata !5, metadata !453, i32 1189, i32 3, i32 0, i32 183} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2639 = metadata !{i32 1189, i32 3, metadata !2640, null}
!2640 = metadata !{i32 786443, metadata !5, metadata !2641, i32 1189, i32 3, i32 1, i32 431} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2641 = metadata !{i32 786443, metadata !5, metadata !2637, i32 1189, i32 3, i32 0, i32 185} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2642 = metadata !{i32 1191, i32 3, metadata !453, null}
!2643 = metadata !{i32 786689, metadata !456, metadata !"L", metadata !6, i32 16778437, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 1221]
!2644 = metadata !{i32 1221, i32 48, metadata !456, null}
!2645 = metadata !{i32 786689, metadata !456, metadata !"funcindex", metadata !6, i32 33555653, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [funcindex] [line 1221]
!2646 = metadata !{i32 1221, i32 55, metadata !456, null}
!2647 = metadata !{i32 786689, metadata !456, metadata !"n", metadata !6, i32 50332869, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 1221]
!2648 = metadata !{i32 1221, i32 70, metadata !456, null}
!2649 = metadata !{i32 786688, metadata !456, metadata !"name", metadata !6, i32 1222, metadata !251, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [name] [line 1222]
!2650 = metadata !{i32 1222, i32 15, metadata !456, null}
!2651 = metadata !{i32 786688, metadata !456, metadata !"val", metadata !6, i32 1223, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [val] [line 1223]
!2652 = metadata !{i32 1223, i32 11, metadata !456, null}
!2653 = metadata !{i32 1223, i32 3, metadata !456, null}
!2654 = metadata !{i32 1225, i32 22, metadata !456, null}
!2655 = metadata !{i32 1225, i32 10, metadata !456, null}
!2656 = metadata !{i32 1226, i32 7, metadata !2657, null}
!2657 = metadata !{i32 786443, metadata !5, metadata !456, i32 1226, i32 7, i32 0, i32 186} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2658 = metadata !{i32 786688, metadata !2659, metadata !"io1", metadata !6, i32 1227, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [io1] [line 1227]
!2659 = metadata !{i32 786443, metadata !5, metadata !2660, i32 1227, i32 5, i32 0, i32 188} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2660 = metadata !{i32 786443, metadata !5, metadata !2657, i32 1226, i32 13, i32 0, i32 187} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2661 = metadata !{i32 1227, i32 5, metadata !2659, null}
!2662 = metadata !{i32 1228, i32 5, metadata !2663, null}
!2663 = metadata !{i32 786443, metadata !5, metadata !2660, i32 1228, i32 5, i32 0, i32 189} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2664 = metadata !{i32 1229, i32 3, metadata !2660, null}
!2665 = metadata !{i32 1231, i32 3, metadata !456, null}
!2666 = metadata !{i32 786689, metadata !528, metadata !"fi", metadata !6, i32 16778412, metadata !34, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fi] [line 1196]
!2667 = metadata !{i32 1196, i32 39, metadata !528, null}
!2668 = metadata !{i32 786689, metadata !528, metadata !"n", metadata !6, i32 33555628, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 1196]
!2669 = metadata !{i32 1196, i32 47, metadata !528, null}
!2670 = metadata !{i32 786689, metadata !528, metadata !"val", metadata !6, i32 50332844, metadata !531, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [val] [line 1196]
!2671 = metadata !{i32 1196, i32 59, metadata !528, null}
!2672 = metadata !{i32 786689, metadata !528, metadata !"owner", metadata !6, i32 67110061, metadata !532, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [owner] [line 1197]
!2673 = metadata !{i32 1197, i32 44, metadata !528, null}
!2674 = metadata !{i32 786689, metadata !528, metadata !"uv", metadata !6, i32 83887277, metadata !469, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [uv] [line 1197]
!2675 = metadata !{i32 1197, i32 59, metadata !528, null}
!2676 = metadata !{i32 1198, i32 3, metadata !528, null}
!2677 = metadata !{i32 786688, metadata !2678, metadata !"f", metadata !6, i32 1200, metadata !533, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [f] [line 1200]
!2678 = metadata !{i32 786443, metadata !5, metadata !2679, i32 1199, i32 20, i32 0, i32 204} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2679 = metadata !{i32 786443, metadata !5, metadata !528, i32 1198, i32 22, i32 0, i32 203} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2680 = metadata !{i32 1200, i32 17, metadata !2678, null}
!2681 = metadata !{i32 1200, i32 7, metadata !2678, null}
!2682 = metadata !{i32 1201, i32 11, metadata !2683, null}
!2683 = metadata !{i32 786443, metadata !5, metadata !2678, i32 1201, i32 11, i32 0, i32 205} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2684 = metadata !{i32 1201, i32 11, metadata !2685, null}
!2685 = metadata !{i32 786443, metadata !5, metadata !2683, i32 1201, i32 11, i32 1, i32 432} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2686 = metadata !{i32 1201, i32 43, metadata !2687, null}
!2687 = metadata !{i32 786443, metadata !5, metadata !2688, i32 1201, i32 43, i32 3, i32 434} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2688 = metadata !{i32 786443, metadata !5, metadata !2683, i32 1201, i32 43, i32 2, i32 433} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2689 = metadata !{i32 1202, i32 7, metadata !2678, null}
!2690 = metadata !{i32 1203, i32 11, metadata !2691, null}
!2691 = metadata !{i32 786443, metadata !5, metadata !2678, i32 1203, i32 11, i32 0, i32 206} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2692 = metadata !{i32 1203, i32 18, metadata !2693, null}
!2693 = metadata !{i32 786443, metadata !5, metadata !2691, i32 1203, i32 18, i32 1, i32 435} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2694 = metadata !{i32 1204, i32 7, metadata !2678, null}
!2695 = metadata !{i32 786688, metadata !2696, metadata !"f", metadata !6, i32 1207, metadata !471, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [f] [line 1207]
!2696 = metadata !{i32 786443, metadata !5, metadata !2679, i32 1206, i32 20, i32 0, i32 207} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2697 = metadata !{i32 1207, i32 17, metadata !2696, null}
!2698 = metadata !{i32 1207, i32 7, metadata !2696, null}
!2699 = metadata !{i32 786688, metadata !2696, metadata !"name", metadata !6, i32 1208, metadata !86, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [name] [line 1208]
!2700 = metadata !{i32 1208, i32 16, metadata !2696, null}
!2701 = metadata !{i32 786688, metadata !2696, metadata !"p", metadata !6, i32 1209, metadata !2702, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 1209]
!2702 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !2703} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from Proto]
!2703 = metadata !{i32 786454, metadata !19, null, metadata !"Proto", i32 429, i64 0, i64 0, i64 0, i32 0, metadata !482} ; [ DW_TAG_typedef ] [Proto] [line 429, size 0, align 0, offset 0] [from Proto]
!2704 = metadata !{i32 1209, i32 14, metadata !2696, null}
!2705 = metadata !{i32 1209, i32 7, metadata !2696, null}
!2706 = metadata !{i32 1210, i32 11, metadata !2707, null}
!2707 = metadata !{i32 786443, metadata !5, metadata !2696, i32 1210, i32 11, i32 0, i32 208} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2708 = metadata !{i32 1210, i32 11, metadata !2709, null}
!2709 = metadata !{i32 786443, metadata !5, metadata !2707, i32 1210, i32 11, i32 1, i32 436} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2710 = metadata !{i32 1210, i32 46, metadata !2711, null}
!2711 = metadata !{i32 786443, metadata !5, metadata !2712, i32 1210, i32 46, i32 3, i32 438} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2712 = metadata !{i32 786443, metadata !5, metadata !2707, i32 1210, i32 46, i32 2, i32 437} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2713 = metadata !{i32 1211, i32 7, metadata !2696, null}
!2714 = metadata !{i32 1212, i32 11, metadata !2715, null}
!2715 = metadata !{i32 786443, metadata !5, metadata !2696, i32 1212, i32 11, i32 0, i32 209} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2716 = metadata !{i32 1212, i32 15, metadata !2717, null}
!2717 = metadata !{i32 786443, metadata !5, metadata !2715, i32 1212, i32 15, i32 1, i32 439} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2718 = metadata !{i32 1213, i32 7, metadata !2696, null}
!2719 = metadata !{i32 1214, i32 7, metadata !2696, null}
!2720 = metadata !{i32 1214, i32 7, metadata !2721, null}
!2721 = metadata !{i32 786443, metadata !5, metadata !2696, i32 1214, i32 7, i32 1, i32 440} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2722 = metadata !{i32 1214, i32 7, metadata !2723, null}
!2723 = metadata !{i32 786443, metadata !5, metadata !2696, i32 1214, i32 7, i32 2, i32 441} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2724 = metadata !{i32 1214, i32 7, metadata !2725, null}
!2725 = metadata !{i32 786443, metadata !5, metadata !2726, i32 1214, i32 7, i32 4, i32 443} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2726 = metadata !{i32 786443, metadata !5, metadata !2696, i32 1214, i32 7, i32 3, i32 442} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2727 = metadata !{i32 1216, i32 14, metadata !2679, null}
!2728 = metadata !{i32 1218, i32 1, metadata !528, null}
!2729 = metadata !{i32 786689, metadata !459, metadata !"L", metadata !6, i32 16778451, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 1235]
!2730 = metadata !{i32 1235, i32 48, metadata !459, null}
!2731 = metadata !{i32 786689, metadata !459, metadata !"funcindex", metadata !6, i32 33555667, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [funcindex] [line 1235]
!2732 = metadata !{i32 1235, i32 55, metadata !459, null}
!2733 = metadata !{i32 786689, metadata !459, metadata !"n", metadata !6, i32 50332883, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 1235]
!2734 = metadata !{i32 1235, i32 70, metadata !459, null}
!2735 = metadata !{i32 786688, metadata !459, metadata !"name", metadata !6, i32 1236, metadata !251, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [name] [line 1236]
!2736 = metadata !{i32 1236, i32 15, metadata !459, null}
!2737 = metadata !{i32 786688, metadata !459, metadata !"val", metadata !6, i32 1237, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [val] [line 1237]
!2738 = metadata !{i32 1237, i32 11, metadata !459, null}
!2739 = metadata !{i32 1237, i32 3, metadata !459, null}
!2740 = metadata !{i32 786688, metadata !459, metadata !"owner", metadata !6, i32 1238, metadata !533, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [owner] [line 1238]
!2741 = metadata !{i32 1238, i32 13, metadata !459, null}
!2742 = metadata !{i32 1238, i32 3, metadata !459, null}
!2743 = metadata !{i32 786688, metadata !459, metadata !"uv", metadata !6, i32 1239, metadata !217, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [uv] [line 1239]
!2744 = metadata !{i32 1239, i32 10, metadata !459, null}
!2745 = metadata !{i32 1239, i32 3, metadata !459, null}
!2746 = metadata !{i32 786688, metadata !459, metadata !"fi", metadata !6, i32 1240, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fi] [line 1240]
!2747 = metadata !{i32 1240, i32 9, metadata !459, null}
!2748 = metadata !{i32 1242, i32 8, metadata !459, null}
!2749 = metadata !{i32 1244, i32 10, metadata !459, null}
!2750 = metadata !{i32 1245, i32 7, metadata !2751, null}
!2751 = metadata !{i32 786443, metadata !5, metadata !459, i32 1245, i32 7, i32 0, i32 190} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2752 = metadata !{i32 1246, i32 5, metadata !2753, null}
!2753 = metadata !{i32 786443, metadata !5, metadata !2751, i32 1245, i32 13, i32 0, i32 191} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2754 = metadata !{i32 786688, metadata !2755, metadata !"io1", metadata !6, i32 1247, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [io1] [line 1247]
!2755 = metadata !{i32 786443, metadata !5, metadata !2753, i32 1247, i32 5, i32 0, i32 192} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2756 = metadata !{i32 1247, i32 5, metadata !2755, null}
!2757 = metadata !{i32 1248, i32 9, metadata !2758, null}
!2758 = metadata !{i32 786443, metadata !5, metadata !2753, i32 1248, i32 9, i32 0, i32 193} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2759 = metadata !{i32 1248, i32 18, metadata !2760, null}
!2760 = metadata !{i32 786443, metadata !5, metadata !2761, i32 1248, i32 18, i32 1, i32 444} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2761 = metadata !{i32 786443, metadata !5, metadata !2758, i32 1248, i32 16, i32 0, i32 194} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2762 = metadata !{i32 1248, i32 18, metadata !2763, null}
!2763 = metadata !{i32 786443, metadata !5, metadata !2761, i32 1248, i32 18, i32 2, i32 445} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2764 = metadata !{i32 1248, i32 18, metadata !2765, null}
!2765 = metadata !{i32 786443, metadata !5, metadata !2761, i32 1248, i32 18, i32 4, i32 447} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2766 = metadata !{i32 1248, i32 18, metadata !2767, null}
!2767 = metadata !{i32 786443, metadata !5, metadata !2761, i32 1248, i32 18, i32 6, i32 449} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2768 = metadata !{i32 1248, i32 18, metadata !2769, null}
!2769 = metadata !{i32 786443, metadata !5, metadata !2770, i32 1248, i32 18, i32 7, i32 450} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2770 = metadata !{i32 786443, metadata !5, metadata !2771, i32 1248, i32 18, i32 5, i32 448} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2771 = metadata !{i32 786443, metadata !5, metadata !2761, i32 1248, i32 18, i32 3, i32 446} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2772 = metadata !{i32 1248, i32 50, metadata !2773, null}
!2773 = metadata !{i32 786443, metadata !5, metadata !2774, i32 1248, i32 50, i32 9, i32 452} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2774 = metadata !{i32 786443, metadata !5, metadata !2761, i32 1248, i32 50, i32 8, i32 451} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2775 = metadata !{i32 1249, i32 14, metadata !2776, null}
!2776 = metadata !{i32 786443, metadata !5, metadata !2758, i32 1249, i32 14, i32 0, i32 195} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2777 = metadata !{i32 1249, i32 20, metadata !2778, null}
!2778 = metadata !{i32 786443, metadata !5, metadata !2779, i32 1249, i32 20, i32 1, i32 453} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2779 = metadata !{i32 786443, metadata !5, metadata !2776, i32 1249, i32 18, i32 0, i32 196} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2780 = metadata !{i32 1249, i32 20, metadata !2781, null}
!2781 = metadata !{i32 786443, metadata !5, metadata !2779, i32 1249, i32 20, i32 2, i32 454} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2782 = metadata !{i32 1249, i32 20, metadata !2783, null}
!2783 = metadata !{i32 786443, metadata !5, metadata !2779, i32 1249, i32 20, i32 5, i32 457} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2784 = metadata !{i32 1249, i32 20, metadata !2785, null}
!2785 = metadata !{i32 786443, metadata !5, metadata !2786, i32 1249, i32 20, i32 4, i32 456} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2786 = metadata !{i32 786443, metadata !5, metadata !2779, i32 1249, i32 20, i32 3, i32 455} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2787 = metadata !{i32 1249, i32 46, metadata !2788, null}
!2788 = metadata !{i32 786443, metadata !5, metadata !2789, i32 1249, i32 46, i32 7, i32 459} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2789 = metadata !{i32 786443, metadata !5, metadata !2779, i32 1249, i32 46, i32 6, i32 458} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2790 = metadata !{i32 1250, i32 3, metadata !2753, null}
!2791 = metadata !{i32 1252, i32 3, metadata !459, null}
!2792 = metadata !{i32 786689, metadata !460, metadata !"L", metadata !6, i32 16778483, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 1267]
!2793 = metadata !{i32 1267, i32 41, metadata !460, null}
!2794 = metadata !{i32 786689, metadata !460, metadata !"fidx", metadata !6, i32 33555699, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fidx] [line 1267]
!2795 = metadata !{i32 1267, i32 48, metadata !460, null}
!2796 = metadata !{i32 786689, metadata !460, metadata !"n", metadata !6, i32 50332915, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 1267]
!2797 = metadata !{i32 1267, i32 58, metadata !460, null}
!2798 = metadata !{i32 786688, metadata !460, metadata !"fi", metadata !6, i32 1268, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fi] [line 1268]
!2799 = metadata !{i32 1268, i32 9, metadata !460, null}
!2800 = metadata !{i32 1268, i32 14, metadata !460, null}
!2801 = metadata !{i32 1269, i32 3, metadata !460, null}
!2802 = metadata !{i32 1271, i32 15, metadata !2803, null}
!2803 = metadata !{i32 786443, metadata !5, metadata !2804, i32 1270, i32 20, i32 0, i32 198} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2804 = metadata !{i32 786443, metadata !5, metadata !460, i32 1269, i32 22, i32 0, i32 197} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2805 = metadata !{i32 786688, metadata !2806, metadata !"f", metadata !6, i32 1274, metadata !533, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [f] [line 1274]
!2806 = metadata !{i32 786443, metadata !5, metadata !2804, i32 1273, i32 20, i32 0, i32 199} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2807 = metadata !{i32 1274, i32 17, metadata !2806, null}
!2808 = metadata !{i32 1274, i32 7, metadata !2806, null}
!2809 = metadata !{i32 1276, i32 7, metadata !2806, null}
!2810 = metadata !{i32 1280, i32 7, metadata !2811, null}
!2811 = metadata !{i32 786443, metadata !5, metadata !2804, i32 1278, i32 14, i32 0, i32 200} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2812 = metadata !{i32 1283, i32 1, metadata !460, null}
!2813 = metadata !{i32 786689, metadata !466, metadata !"L", metadata !6, i32 16778472, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 1256]
!2814 = metadata !{i32 1256, i32 40, metadata !466, null}
!2815 = metadata !{i32 786689, metadata !466, metadata !"fidx", metadata !6, i32 33555688, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fidx] [line 1256]
!2816 = metadata !{i32 1256, i32 47, metadata !466, null}
!2817 = metadata !{i32 786689, metadata !466, metadata !"n", metadata !6, i32 50332904, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 1256]
!2818 = metadata !{i32 1256, i32 57, metadata !466, null}
!2819 = metadata !{i32 786689, metadata !466, metadata !"pf", metadata !6, i32 67110120, metadata !470, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pf] [line 1256]
!2820 = metadata !{i32 1256, i32 71, metadata !466, null}
!2821 = metadata !{i32 786688, metadata !466, metadata !"f", metadata !6, i32 1257, metadata !471, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [f] [line 1257]
!2822 = metadata !{i32 1257, i32 13, metadata !466, null}
!2823 = metadata !{i32 786688, metadata !466, metadata !"fi", metadata !6, i32 1258, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fi] [line 1258]
!2824 = metadata !{i32 1258, i32 9, metadata !466, null}
!2825 = metadata !{i32 1258, i32 14, metadata !466, null}
!2826 = metadata !{i32 1260, i32 3, metadata !466, null}
!2827 = metadata !{i32 1262, i32 7, metadata !2828, null}
!2828 = metadata !{i32 786443, metadata !5, metadata !466, i32 1262, i32 7, i32 0, i32 202} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2829 = metadata !{i32 1262, i32 11, metadata !2830, null}
!2830 = metadata !{i32 786443, metadata !5, metadata !2828, i32 1262, i32 11, i32 1, i32 460} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2831 = metadata !{i32 1263, i32 3, metadata !466, null}
!2832 = metadata !{i32 786689, metadata !463, metadata !"L", metadata !6, i32 16778502, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 1286]
!2833 = metadata !{i32 1286, i32 42, metadata !463, null}
!2834 = metadata !{i32 786689, metadata !463, metadata !"fidx1", metadata !6, i32 33555718, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fidx1] [line 1286]
!2835 = metadata !{i32 1286, i32 49, metadata !463, null}
!2836 = metadata !{i32 786689, metadata !463, metadata !"n1", metadata !6, i32 50332934, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n1] [line 1286]
!2837 = metadata !{i32 1286, i32 60, metadata !463, null}
!2838 = metadata !{i32 786689, metadata !463, metadata !"fidx2", metadata !6, i32 67110151, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fidx2] [line 1287]
!2839 = metadata !{i32 1287, i32 49, metadata !463, null}
!2840 = metadata !{i32 786689, metadata !463, metadata !"n2", metadata !6, i32 83887367, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n2] [line 1287]
!2841 = metadata !{i32 1287, i32 60, metadata !463, null}
!2842 = metadata !{i32 786688, metadata !463, metadata !"f1", metadata !6, i32 1288, metadata !471, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [f1] [line 1288]
!2843 = metadata !{i32 1288, i32 13, metadata !463, null}
!2844 = metadata !{i32 786688, metadata !463, metadata !"up1", metadata !6, i32 1289, metadata !469, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [up1] [line 1289]
!2845 = metadata !{i32 1289, i32 11, metadata !463, null}
!2846 = metadata !{i32 1289, i32 17, metadata !463, null}
!2847 = metadata !{i32 786688, metadata !463, metadata !"up2", metadata !6, i32 1290, metadata !469, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [up2] [line 1290]
!2848 = metadata !{i32 1290, i32 11, metadata !463, null}
!2849 = metadata !{i32 1290, i32 17, metadata !463, null}
!2850 = metadata !{i32 1291, i32 3, metadata !463, null}
!2851 = metadata !{i32 1292, i32 3, metadata !463, null}
!2852 = metadata !{i32 1293, i32 3, metadata !463, null}
!2853 = metadata !{i32 1294, i32 7, metadata !2854, null}
!2854 = metadata !{i32 786443, metadata !5, metadata !463, i32 1294, i32 7, i32 0, i32 201} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2855 = metadata !{i32 1294, i32 23, metadata !2856, null}
!2856 = metadata !{i32 786443, metadata !5, metadata !2854, i32 1294, i32 23, i32 1, i32 461} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2857 = metadata !{i32 1295, i32 3, metadata !463, null}
!2858 = metadata !{i32 1295, i32 3, metadata !2859, null}
!2859 = metadata !{i32 786443, metadata !5, metadata !463, i32 1295, i32 3, i32 1, i32 462} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2860 = metadata !{i32 1295, i32 3, metadata !2861, null}
!2861 = metadata !{i32 786443, metadata !5, metadata !463, i32 1295, i32 3, i32 4, i32 465} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2862 = metadata !{i32 1295, i32 3, metadata !2863, null}
!2863 = metadata !{i32 786443, metadata !5, metadata !2864, i32 1295, i32 3, i32 3, i32 464} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2864 = metadata !{i32 786443, metadata !5, metadata !463, i32 1295, i32 3, i32 2, i32 463} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lapi.c]
!2865 = metadata !{i32 1296, i32 1, metadata !463, null}
