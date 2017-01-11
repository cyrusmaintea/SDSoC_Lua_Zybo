; ModuleID = 'C:/Users/DevolutionX/workspace/lua/src/ldo.c'
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
%struct.lua_longjmp = type { %struct.lua_longjmp*, [4 x i8], [1 x %struct.__jmp_buf_tag], i32, [4 x i8] }
%struct.__jmp_buf_tag = type { [64 x i32], i32, %struct.__sigset_t, [4 x i8] }
%struct.__sigset_t = type { [32 x i32] }
%struct.CallInfo = type { %struct.lua_TValue*, %struct.lua_TValue*, %struct.CallInfo*, %struct.CallInfo*, %union.anon.0, i32, i16, i8 }
%union.anon.0 = type { %struct.anon.2 }
%struct.anon.2 = type { i32 (%struct.lua_State*, i32, i32)*, i32, i32 }
%struct.lua_Debug = type { i32, i8*, i8*, i8*, i8*, i32, i32, i32, i8, i8, i8, i8, [60 x i8], %struct.CallInfo* }
%union.GCUnion = type { %union.Closure, [88 x i8] }
%union.Closure = type { %struct.CClosure }
%struct.CClosure = type { %struct.GCObject*, i8, i8, i8, %struct.GCObject*, i32 (%struct.lua_State*)*, [1 x %struct.lua_TValue] }
%struct.anon.4 = type { %struct.UpVal*, i32 }
%struct.anon.1 = type { %struct.lua_TValue*, i32* }
%struct.Proto = type { %struct.GCObject*, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, %struct.lua_TValue*, i32*, %struct.Proto**, i32*, %struct.LocVar*, %struct.Upvaldesc*, %struct.LClosure*, %struct.TString*, %struct.GCObject* }
%struct.LocVar = type { %struct.TString*, i32, i32 }
%struct.Upvaldesc = type { %struct.TString*, i8, i8 }
%struct.LClosure = type { %struct.GCObject*, i8, i8, i8, %struct.GCObject*, %struct.Proto*, [1 x %struct.UpVal*] }
%struct.Zio = type { i32, i8*, i8* (%struct.lua_State*, i8*, i32*)*, i8*, %struct.lua_State* }
%struct.SParser = type { %struct.Zio*, %struct.Mbuffer, %struct.Dyndata, i8*, i8* }
%struct.Mbuffer = type { i8*, i32, i32 }
%struct.Dyndata = type { %struct.anon.5, %struct.Labellist, %struct.Labellist }
%struct.anon.5 = type { %struct.Vardesc*, i32, i32 }
%struct.Vardesc = type { i16 }
%struct.Labellist = type { %struct.Labeldesc*, i32, i32 }
%struct.Labeldesc = type { %struct.TString*, i32, i32, i8 }

@.str = private unnamed_addr constant [15 x i8] c"stack overflow\00", align 1
@.str1 = private unnamed_addr constant [42 x i8] c"attempt to yield across a C-call boundary\00", align 1
@.str2 = private unnamed_addr constant [42 x i8] c"attempt to yield from outside a coroutine\00", align 1
@.str3 = private unnamed_addr constant [5 x i8] c"\1BLua\00", align 1
@.str4 = private unnamed_addr constant [7 x i8] c"binary\00", align 1
@.str5 = private unnamed_addr constant [5 x i8] c"text\00", align 1
@.str6 = private unnamed_addr constant [42 x i8] c"attempt to load a %s chunk (mode is '%s')\00", align 1
@.str7 = private unnamed_addr constant [17 x i8] c"C stack overflow\00", align 1
@.str8 = private unnamed_addr constant [38 x i8] c"cannot resume non-suspended coroutine\00", align 1
@.str9 = private unnamed_addr constant [29 x i8] c"cannot resume dead coroutine\00", align 1
@luaO_nilobject_ = external hidden constant %struct.lua_TValue
@.str10 = private unnamed_addr constant [5 x i8] c"call\00", align 1
@.str11 = private unnamed_addr constant [24 x i8] c"error in error handling\00", align 1

; Function Attrs: noreturn nounwind
define hidden void @luaD_throw(%struct.lua_State* %L, i32 %errcode) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca i32, align 4
  %g = alloca %struct.global_State*, align 4
  %io1 = alloca %struct.lua_TValue*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !708), !dbg !709
  store i32 %errcode, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !710), !dbg !711
  %3 = load %struct.lua_State** %1, align 4, !dbg !712
  %4 = getelementptr inbounds %struct.lua_State* %3, i32 0, i32 14, !dbg !712
  %5 = load %struct.lua_longjmp** %4, align 4, !dbg !712
  %6 = icmp ne %struct.lua_longjmp* %5, null, !dbg !712
  br i1 %6, label %7, label %18, !dbg !712

; <label>:7                                       ; preds = %0
  %8 = load i32* %2, align 4, !dbg !714
  %9 = load %struct.lua_State** %1, align 4, !dbg !714
  %10 = getelementptr inbounds %struct.lua_State* %9, i32 0, i32 14, !dbg !714
  %11 = load %struct.lua_longjmp** %10, align 4, !dbg !714
  %12 = getelementptr inbounds %struct.lua_longjmp* %11, i32 0, i32 3, !dbg !714
  store volatile i32 %8, i32* %12, align 4, !dbg !714
  %13 = load %struct.lua_State** %1, align 4, !dbg !716
  %14 = getelementptr inbounds %struct.lua_State* %13, i32 0, i32 14, !dbg !716
  %15 = load %struct.lua_longjmp** %14, align 4, !dbg !716
  %16 = getelementptr inbounds %struct.lua_longjmp* %15, i32 0, i32 2, !dbg !716
  %17 = getelementptr inbounds [1 x %struct.__jmp_buf_tag]* %16, i32 0, i32 0, !dbg !716
  call void @longjmp(%struct.__jmp_buf_tag* %17, i32 1) #8, !dbg !716
  unreachable, !dbg !716

; <label>:18                                      ; preds = %0
  call void @llvm.dbg.declare(metadata !{%struct.global_State** %g}, metadata !717), !dbg !719
  %19 = load %struct.lua_State** %1, align 4, !dbg !720
  %20 = getelementptr inbounds %struct.lua_State* %19, i32 0, i32 6, !dbg !720
  %21 = load %struct.global_State** %20, align 4, !dbg !720
  store %struct.global_State* %21, %struct.global_State** %g, align 4, !dbg !720
  %22 = load i32* %2, align 4, !dbg !721
  %23 = trunc i32 %22 to i8, !dbg !721
  %24 = load %struct.lua_State** %1, align 4, !dbg !721
  %25 = getelementptr inbounds %struct.lua_State* %24, i32 0, i32 4, !dbg !721
  store i8 %23, i8* %25, align 1, !dbg !721
  %26 = load %struct.global_State** %g, align 4, !dbg !722
  %27 = getelementptr inbounds %struct.global_State* %26, i32 0, i32 28, !dbg !722
  %28 = load %struct.lua_State** %27, align 4, !dbg !722
  %29 = getelementptr inbounds %struct.lua_State* %28, i32 0, i32 14, !dbg !722
  %30 = load %struct.lua_longjmp** %29, align 4, !dbg !722
  %31 = icmp ne %struct.lua_longjmp* %30, null, !dbg !722
  br i1 %31, label %32, label %51, !dbg !722

; <label>:32                                      ; preds = %18
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %io1}, metadata !724), !dbg !727
  %33 = load %struct.global_State** %g, align 4, !dbg !727
  %34 = getelementptr inbounds %struct.global_State* %33, i32 0, i32 28, !dbg !727
  %35 = load %struct.lua_State** %34, align 4, !dbg !727
  %36 = getelementptr inbounds %struct.lua_State* %35, i32 0, i32 5, !dbg !727
  %37 = load %struct.lua_TValue** %36, align 4, !dbg !727
  %38 = getelementptr inbounds %struct.lua_TValue* %37, i32 1, !dbg !727
  store %struct.lua_TValue* %38, %struct.lua_TValue** %36, align 4, !dbg !727
  store %struct.lua_TValue* %37, %struct.lua_TValue** %io1, align 4, !dbg !727
  %39 = load %struct.lua_TValue** %io1, align 4, !dbg !727
  %40 = load %struct.lua_State** %1, align 4, !dbg !727
  %41 = getelementptr inbounds %struct.lua_State* %40, i32 0, i32 5, !dbg !727
  %42 = load %struct.lua_TValue** %41, align 4, !dbg !727
  %43 = getelementptr inbounds %struct.lua_TValue* %42, i32 -1, !dbg !727
  %44 = bitcast %struct.lua_TValue* %39 to i8*, !dbg !727
  %45 = bitcast %struct.lua_TValue* %43 to i8*, !dbg !727
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %44, i8* %45, i32 16, i32 8, i1 false), !dbg !727
  %46 = load %struct.lua_State** %1, align 4, !dbg !727
  %47 = load %struct.global_State** %g, align 4, !dbg !728
  %48 = getelementptr inbounds %struct.global_State* %47, i32 0, i32 28, !dbg !728
  %49 = load %struct.lua_State** %48, align 4, !dbg !728
  %50 = load i32* %2, align 4, !dbg !728
  call void @luaD_throw(%struct.lua_State* %49, i32 %50) #9, !dbg !728
  unreachable, !dbg !728

; <label>:51                                      ; preds = %18
  %52 = load %struct.global_State** %g, align 4, !dbg !729
  %53 = getelementptr inbounds %struct.global_State* %52, i32 0, i32 27, !dbg !729
  %54 = load i32 (%struct.lua_State*)** %53, align 4, !dbg !729
  %55 = icmp ne i32 (%struct.lua_State*)* %54, null, !dbg !729
  br i1 %55, label %56, label %85, !dbg !729

; <label>:56                                      ; preds = %51
  %57 = load %struct.lua_State** %1, align 4, !dbg !732
  %58 = load i32* %2, align 4, !dbg !732
  %59 = load %struct.lua_State** %1, align 4, !dbg !732
  %60 = getelementptr inbounds %struct.lua_State* %59, i32 0, i32 5, !dbg !732
  %61 = load %struct.lua_TValue** %60, align 4, !dbg !732
  call void @seterrorobj(%struct.lua_State* %57, i32 %58, %struct.lua_TValue* %61), !dbg !732
  %62 = load %struct.lua_State** %1, align 4, !dbg !734
  %63 = getelementptr inbounds %struct.lua_State* %62, i32 0, i32 7, !dbg !734
  %64 = load %struct.CallInfo** %63, align 4, !dbg !734
  %65 = getelementptr inbounds %struct.CallInfo* %64, i32 0, i32 1, !dbg !734
  %66 = load %struct.lua_TValue** %65, align 4, !dbg !734
  %67 = load %struct.lua_State** %1, align 4, !dbg !734
  %68 = getelementptr inbounds %struct.lua_State* %67, i32 0, i32 5, !dbg !734
  %69 = load %struct.lua_TValue** %68, align 4, !dbg !734
  %70 = icmp ult %struct.lua_TValue* %66, %69, !dbg !734
  br i1 %70, label %71, label %79, !dbg !734

; <label>:71                                      ; preds = %56
  %72 = load %struct.lua_State** %1, align 4, !dbg !736
  %73 = getelementptr inbounds %struct.lua_State* %72, i32 0, i32 5, !dbg !736
  %74 = load %struct.lua_TValue** %73, align 4, !dbg !736
  %75 = load %struct.lua_State** %1, align 4, !dbg !736
  %76 = getelementptr inbounds %struct.lua_State* %75, i32 0, i32 7, !dbg !736
  %77 = load %struct.CallInfo** %76, align 4, !dbg !736
  %78 = getelementptr inbounds %struct.CallInfo* %77, i32 0, i32 1, !dbg !736
  store %struct.lua_TValue* %74, %struct.lua_TValue** %78, align 4, !dbg !736
  br label %79, !dbg !736

; <label>:79                                      ; preds = %71, %56
  %80 = load %struct.global_State** %g, align 4, !dbg !737
  %81 = getelementptr inbounds %struct.global_State* %80, i32 0, i32 27, !dbg !737
  %82 = load i32 (%struct.lua_State*)** %81, align 4, !dbg !737
  %83 = load %struct.lua_State** %1, align 4, !dbg !737
  %84 = call i32 %82(%struct.lua_State* %83), !dbg !737
  br label %85, !dbg !738

; <label>:85                                      ; preds = %79, %51
  call void @abort() #8, !dbg !739
  unreachable, !dbg !739
                                                  ; No predecessors!
  ret void, !dbg !740
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: noreturn nounwind
declare void @longjmp(%struct.__jmp_buf_tag*, i32) #0

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture, i8* nocapture readonly, i32, i32, i1) #2

; Function Attrs: nounwind
define internal void @seterrorobj(%struct.lua_State* %L, i32 %errcode, %struct.lua_TValue* %oldtop) #3 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.lua_TValue*, align 4
  %io = alloca %struct.lua_TValue*, align 4
  %x_ = alloca %struct.TString*, align 4
  %io1 = alloca %struct.lua_TValue*, align 4
  %x_2 = alloca %struct.TString*, align 4
  %io13 = alloca %struct.lua_TValue*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !741), !dbg !742
  store i32 %errcode, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !743), !dbg !744
  store %struct.lua_TValue* %oldtop, %struct.lua_TValue** %3, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %3}, metadata !745), !dbg !746
  %4 = load i32* %2, align 4, !dbg !747
  switch i32 %4, label %42 [
    i32 4, label %5
    i32 6, label %25
  ], !dbg !747

; <label>:5                                       ; preds = %0
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %io}, metadata !748), !dbg !752
  %6 = load %struct.lua_TValue** %3, align 4, !dbg !752
  store %struct.lua_TValue* %6, %struct.lua_TValue** %io, align 4, !dbg !752
  call void @llvm.dbg.declare(metadata !{%struct.TString** %x_}, metadata !753), !dbg !752
  %7 = load %struct.lua_State** %1, align 4, !dbg !752
  %8 = getelementptr inbounds %struct.lua_State* %7, i32 0, i32 6, !dbg !752
  %9 = load %struct.global_State** %8, align 4, !dbg !752
  %10 = getelementptr inbounds %struct.global_State* %9, i32 0, i32 30, !dbg !752
  %11 = load %struct.TString** %10, align 4, !dbg !752
  store %struct.TString* %11, %struct.TString** %x_, align 4, !dbg !752
  %12 = load %struct.TString** %x_, align 4, !dbg !752
  %13 = bitcast %struct.TString* %12 to %union.GCUnion*, !dbg !752
  %14 = bitcast %union.GCUnion* %13 to %struct.GCObject*, !dbg !752
  %15 = load %struct.lua_TValue** %io, align 4, !dbg !752
  %16 = getelementptr inbounds %struct.lua_TValue* %15, i32 0, i32 0, !dbg !752
  %17 = bitcast %union.Value* %16 to %struct.GCObject**, !dbg !752
  store %struct.GCObject* %14, %struct.GCObject** %17, align 4, !dbg !752
  %18 = load %struct.TString** %x_, align 4, !dbg !752
  %19 = getelementptr inbounds %struct.TString* %18, i32 0, i32 1, !dbg !752
  %20 = load i8* %19, align 1, !dbg !752
  %21 = zext i8 %20 to i32, !dbg !752
  %22 = or i32 %21, 64, !dbg !752
  %23 = load %struct.lua_TValue** %io, align 4, !dbg !752
  %24 = getelementptr inbounds %struct.lua_TValue* %23, i32 0, i32 1, !dbg !752
  store i32 %22, i32* %24, align 4, !dbg !752
  br label %52, !dbg !754

; <label>:25                                      ; preds = %0
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %io1}, metadata !755), !dbg !758
  %26 = load %struct.lua_TValue** %3, align 4, !dbg !758
  store %struct.lua_TValue* %26, %struct.lua_TValue** %io1, align 4, !dbg !758
  call void @llvm.dbg.declare(metadata !{%struct.TString** %x_2}, metadata !759), !dbg !758
  %27 = load %struct.lua_State** %1, align 4, !dbg !758
  %28 = call %struct.TString* @luaS_newlstr(%struct.lua_State* %27, i8* getelementptr inbounds ([24 x i8]* @.str11, i32 0, i32 0), i32 23), !dbg !758
  store %struct.TString* %28, %struct.TString** %x_2, align 4, !dbg !758
  %29 = load %struct.TString** %x_2, align 4, !dbg !758
  %30 = bitcast %struct.TString* %29 to %union.GCUnion*, !dbg !758
  %31 = bitcast %union.GCUnion* %30 to %struct.GCObject*, !dbg !758
  %32 = load %struct.lua_TValue** %io1, align 4, !dbg !758
  %33 = getelementptr inbounds %struct.lua_TValue* %32, i32 0, i32 0, !dbg !758
  %34 = bitcast %union.Value* %33 to %struct.GCObject**, !dbg !758
  store %struct.GCObject* %31, %struct.GCObject** %34, align 4, !dbg !758
  %35 = load %struct.TString** %x_2, align 4, !dbg !758
  %36 = getelementptr inbounds %struct.TString* %35, i32 0, i32 1, !dbg !758
  %37 = load i8* %36, align 1, !dbg !758
  %38 = zext i8 %37 to i32, !dbg !758
  %39 = or i32 %38, 64, !dbg !758
  %40 = load %struct.lua_TValue** %io1, align 4, !dbg !758
  %41 = getelementptr inbounds %struct.lua_TValue* %40, i32 0, i32 1, !dbg !758
  store i32 %39, i32* %41, align 4, !dbg !758
  br label %52, !dbg !760

; <label>:42                                      ; preds = %0
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %io13}, metadata !761), !dbg !764
  %43 = load %struct.lua_TValue** %3, align 4, !dbg !764
  store %struct.lua_TValue* %43, %struct.lua_TValue** %io13, align 4, !dbg !764
  %44 = load %struct.lua_TValue** %io13, align 4, !dbg !764
  %45 = load %struct.lua_State** %1, align 4, !dbg !764
  %46 = getelementptr inbounds %struct.lua_State* %45, i32 0, i32 5, !dbg !764
  %47 = load %struct.lua_TValue** %46, align 4, !dbg !764
  %48 = getelementptr inbounds %struct.lua_TValue* %47, i32 -1, !dbg !764
  %49 = bitcast %struct.lua_TValue* %44 to i8*, !dbg !764
  %50 = bitcast %struct.lua_TValue* %48 to i8*, !dbg !764
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %49, i8* %50, i32 16, i32 8, i1 false), !dbg !764
  %51 = load %struct.lua_State** %1, align 4, !dbg !764
  br label %52, !dbg !765

; <label>:52                                      ; preds = %42, %25, %5
  %53 = load %struct.lua_TValue** %3, align 4, !dbg !766
  %54 = getelementptr inbounds %struct.lua_TValue* %53, i32 1, !dbg !766
  %55 = load %struct.lua_State** %1, align 4, !dbg !766
  %56 = getelementptr inbounds %struct.lua_State* %55, i32 0, i32 5, !dbg !766
  store %struct.lua_TValue* %54, %struct.lua_TValue** %56, align 4, !dbg !766
  ret void, !dbg !767
}

; Function Attrs: noreturn nounwind
declare void @abort() #0

; Function Attrs: nounwind
define hidden i32 @luaD_rawrunprotected(%struct.lua_State* %L, void (%struct.lua_State*, i8*)* %f, i8* %ud) #3 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca void (%struct.lua_State*, i8*)*, align 4
  %3 = alloca i8*, align 4
  %oldnCcalls = alloca i16, align 2
  %lj = alloca %struct.lua_longjmp, align 8
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !768), !dbg !769
  store void (%struct.lua_State*, i8*)* %f, void (%struct.lua_State*, i8*)** %2, align 4
  call void @llvm.dbg.declare(metadata !{void (%struct.lua_State*, i8*)** %2}, metadata !770), !dbg !771
  store i8* %ud, i8** %3, align 4
  call void @llvm.dbg.declare(metadata !{i8** %3}, metadata !772), !dbg !773
  call void @llvm.dbg.declare(metadata !{i16* %oldnCcalls}, metadata !774), !dbg !775
  %4 = load %struct.lua_State** %1, align 4, !dbg !776
  %5 = getelementptr inbounds %struct.lua_State* %4, i32 0, i32 22, !dbg !776
  %6 = load i16* %5, align 2, !dbg !776
  store i16 %6, i16* %oldnCcalls, align 2, !dbg !776
  call void @llvm.dbg.declare(metadata !{%struct.lua_longjmp* %lj}, metadata !777), !dbg !778
  %7 = getelementptr inbounds %struct.lua_longjmp* %lj, i32 0, i32 3, !dbg !779
  store volatile i32 0, i32* %7, align 4, !dbg !779
  %8 = load %struct.lua_State** %1, align 4, !dbg !780
  %9 = getelementptr inbounds %struct.lua_State* %8, i32 0, i32 14, !dbg !780
  %10 = load %struct.lua_longjmp** %9, align 4, !dbg !780
  %11 = getelementptr inbounds %struct.lua_longjmp* %lj, i32 0, i32 0, !dbg !780
  store %struct.lua_longjmp* %10, %struct.lua_longjmp** %11, align 4, !dbg !780
  %12 = load %struct.lua_State** %1, align 4, !dbg !781
  %13 = getelementptr inbounds %struct.lua_State* %12, i32 0, i32 14, !dbg !781
  store %struct.lua_longjmp* %lj, %struct.lua_longjmp** %13, align 4, !dbg !781
  %14 = getelementptr inbounds %struct.lua_longjmp* %lj, i32 0, i32 2, !dbg !782
  %15 = getelementptr inbounds [1 x %struct.__jmp_buf_tag]* %14, i32 0, i32 0, !dbg !782
  %16 = call i32 @_setjmp(%struct.__jmp_buf_tag* %15) #10, !dbg !782
  %17 = icmp eq i32 %16, 0, !dbg !782
  br i1 %17, label %18, label %22, !dbg !782

; <label>:18                                      ; preds = %0
  %19 = load void (%struct.lua_State*, i8*)** %2, align 4, !dbg !784
  %20 = load %struct.lua_State** %1, align 4, !dbg !784
  %21 = load i8** %3, align 4, !dbg !784
  call void %19(%struct.lua_State* %20, i8* %21), !dbg !784
  br label %22, !dbg !784

; <label>:22                                      ; preds = %18, %0
  %23 = getelementptr inbounds %struct.lua_longjmp* %lj, i32 0, i32 0, !dbg !787
  %24 = load %struct.lua_longjmp** %23, align 4, !dbg !787
  %25 = load %struct.lua_State** %1, align 4, !dbg !787
  %26 = getelementptr inbounds %struct.lua_State* %25, i32 0, i32 14, !dbg !787
  store %struct.lua_longjmp* %24, %struct.lua_longjmp** %26, align 4, !dbg !787
  %27 = load i16* %oldnCcalls, align 2, !dbg !788
  %28 = load %struct.lua_State** %1, align 4, !dbg !788
  %29 = getelementptr inbounds %struct.lua_State* %28, i32 0, i32 22, !dbg !788
  store i16 %27, i16* %29, align 2, !dbg !788
  %30 = getelementptr inbounds %struct.lua_longjmp* %lj, i32 0, i32 3, !dbg !789
  %31 = load volatile i32* %30, align 4, !dbg !789
  ret i32 %31, !dbg !789
}

; Function Attrs: nounwind returns_twice
declare i32 @_setjmp(%struct.__jmp_buf_tag*) #4

; Function Attrs: nounwind
define hidden void @luaD_reallocstack(%struct.lua_State* %L, i32 %newsize) #3 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca i32, align 4
  %oldstack = alloca %struct.lua_TValue*, align 4
  %lim = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !790), !dbg !791
  store i32 %newsize, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !792), !dbg !793
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %oldstack}, metadata !794), !dbg !795
  %3 = load %struct.lua_State** %1, align 4, !dbg !796
  %4 = getelementptr inbounds %struct.lua_State* %3, i32 0, i32 10, !dbg !796
  %5 = load %struct.lua_TValue** %4, align 4, !dbg !796
  store %struct.lua_TValue* %5, %struct.lua_TValue** %oldstack, align 4, !dbg !796
  call void @llvm.dbg.declare(metadata !{i32* %lim}, metadata !797), !dbg !798
  %6 = load %struct.lua_State** %1, align 4, !dbg !799
  %7 = getelementptr inbounds %struct.lua_State* %6, i32 0, i32 18, !dbg !799
  %8 = load i32* %7, align 4, !dbg !799
  store i32 %8, i32* %lim, align 4, !dbg !799
  %9 = load i32* %2, align 4, !dbg !800
  %10 = add i32 %9, 1, !dbg !800
  %11 = icmp ugt i32 %10, 268435455, !dbg !800
  br i1 %11, label %12, label %15, !dbg !800

; <label>:12                                      ; preds = %0
  %13 = load %struct.lua_State** %1, align 4, !dbg !801
  call void @luaM_toobig(%struct.lua_State* %13) #9, !dbg !801
  unreachable, !dbg !801
                                                  ; No predecessors!
  br label %16, !dbg !800

; <label>:15                                      ; preds = %0
  br label %16, !dbg !803

; <label>:16                                      ; preds = %15, %14
  %17 = load %struct.lua_State** %1, align 4, !dbg !805
  %18 = load %struct.lua_State** %1, align 4, !dbg !805
  %19 = getelementptr inbounds %struct.lua_State* %18, i32 0, i32 10, !dbg !805
  %20 = load %struct.lua_TValue** %19, align 4, !dbg !805
  %21 = bitcast %struct.lua_TValue* %20 to i8*, !dbg !805
  %22 = load %struct.lua_State** %1, align 4, !dbg !805
  %23 = getelementptr inbounds %struct.lua_State* %22, i32 0, i32 18, !dbg !805
  %24 = load i32* %23, align 4, !dbg !805
  %25 = mul i32 %24, 16, !dbg !805
  %26 = load i32* %2, align 4, !dbg !805
  %27 = mul i32 %26, 16, !dbg !805
  %28 = call i8* @luaM_realloc_(%struct.lua_State* %17, i8* %21, i32 %25, i32 %27), !dbg !805
  %29 = bitcast i8* %28 to %struct.lua_TValue*, !dbg !805
  %30 = load %struct.lua_State** %1, align 4, !dbg !805
  %31 = getelementptr inbounds %struct.lua_State* %30, i32 0, i32 10, !dbg !805
  store %struct.lua_TValue* %29, %struct.lua_TValue** %31, align 4, !dbg !805
  br label %32, !dbg !808

; <label>:32                                      ; preds = %43, %16
  %33 = load i32* %lim, align 4, !dbg !810
  %34 = load i32* %2, align 4, !dbg !810
  %35 = icmp slt i32 %33, %34, !dbg !810
  br i1 %35, label %36, label %46, !dbg !810

; <label>:36                                      ; preds = %32
  %37 = load %struct.lua_State** %1, align 4, !dbg !813
  %38 = getelementptr inbounds %struct.lua_State* %37, i32 0, i32 10, !dbg !813
  %39 = load %struct.lua_TValue** %38, align 4, !dbg !813
  %40 = load i32* %lim, align 4, !dbg !813
  %41 = getelementptr inbounds %struct.lua_TValue* %39, i32 %40, !dbg !813
  %42 = getelementptr inbounds %struct.lua_TValue* %41, i32 0, i32 1, !dbg !813
  store i32 0, i32* %42, align 4, !dbg !813
  br label %43, !dbg !813

; <label>:43                                      ; preds = %36
  %44 = load i32* %lim, align 4, !dbg !814
  %45 = add nsw i32 %44, 1, !dbg !814
  store i32 %45, i32* %lim, align 4, !dbg !814
  br label %32, !dbg !814

; <label>:46                                      ; preds = %32
  %47 = load i32* %2, align 4, !dbg !815
  %48 = load %struct.lua_State** %1, align 4, !dbg !815
  %49 = getelementptr inbounds %struct.lua_State* %48, i32 0, i32 18, !dbg !815
  store i32 %47, i32* %49, align 4, !dbg !815
  %50 = load %struct.lua_State** %1, align 4, !dbg !816
  %51 = getelementptr inbounds %struct.lua_State* %50, i32 0, i32 10, !dbg !816
  %52 = load %struct.lua_TValue** %51, align 4, !dbg !816
  %53 = load i32* %2, align 4, !dbg !816
  %54 = getelementptr inbounds %struct.lua_TValue* %52, i32 %53, !dbg !816
  %55 = getelementptr inbounds %struct.lua_TValue* %54, i32 -5, !dbg !816
  %56 = load %struct.lua_State** %1, align 4, !dbg !816
  %57 = getelementptr inbounds %struct.lua_State* %56, i32 0, i32 9, !dbg !816
  store %struct.lua_TValue* %55, %struct.lua_TValue** %57, align 4, !dbg !816
  %58 = load %struct.lua_State** %1, align 4, !dbg !817
  %59 = load %struct.lua_TValue** %oldstack, align 4, !dbg !817
  call void @correctstack(%struct.lua_State* %58, %struct.lua_TValue* %59), !dbg !817
  ret void, !dbg !818
}

; Function Attrs: noreturn
declare hidden void @luaM_toobig(%struct.lua_State*) #5

declare hidden i8* @luaM_realloc_(%struct.lua_State*, i8*, i32, i32) #6

; Function Attrs: nounwind
define internal void @correctstack(%struct.lua_State* %L, %struct.lua_TValue* %oldstack) #3 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca %struct.lua_TValue*, align 4
  %ci = alloca %struct.CallInfo*, align 4
  %up = alloca %struct.UpVal*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !819), !dbg !820
  store %struct.lua_TValue* %oldstack, %struct.lua_TValue** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %2}, metadata !821), !dbg !822
  call void @llvm.dbg.declare(metadata !{%struct.CallInfo** %ci}, metadata !823), !dbg !824
  call void @llvm.dbg.declare(metadata !{%struct.UpVal** %up}, metadata !825), !dbg !826
  %3 = load %struct.lua_State** %1, align 4, !dbg !827
  %4 = getelementptr inbounds %struct.lua_State* %3, i32 0, i32 5, !dbg !827
  %5 = load %struct.lua_TValue** %4, align 4, !dbg !827
  %6 = load %struct.lua_TValue** %2, align 4, !dbg !827
  %7 = ptrtoint %struct.lua_TValue* %5 to i32, !dbg !827
  %8 = ptrtoint %struct.lua_TValue* %6 to i32, !dbg !827
  %9 = sub i32 %7, %8, !dbg !827
  %10 = sdiv exact i32 %9, 16, !dbg !827
  %11 = load %struct.lua_State** %1, align 4, !dbg !827
  %12 = getelementptr inbounds %struct.lua_State* %11, i32 0, i32 10, !dbg !827
  %13 = load %struct.lua_TValue** %12, align 4, !dbg !827
  %14 = getelementptr inbounds %struct.lua_TValue* %13, i32 %10, !dbg !827
  %15 = load %struct.lua_State** %1, align 4, !dbg !827
  %16 = getelementptr inbounds %struct.lua_State* %15, i32 0, i32 5, !dbg !827
  store %struct.lua_TValue* %14, %struct.lua_TValue** %16, align 4, !dbg !827
  %17 = load %struct.lua_State** %1, align 4, !dbg !828
  %18 = getelementptr inbounds %struct.lua_State* %17, i32 0, i32 11, !dbg !828
  %19 = load %struct.UpVal** %18, align 4, !dbg !828
  store %struct.UpVal* %19, %struct.UpVal** %up, align 4, !dbg !828
  br label %20, !dbg !828

; <label>:20                                      ; preds = %38, %0
  %21 = load %struct.UpVal** %up, align 4, !dbg !830
  %22 = icmp ne %struct.UpVal* %21, null, !dbg !830
  br i1 %22, label %23, label %44, !dbg !830

; <label>:23                                      ; preds = %20
  %24 = load %struct.UpVal** %up, align 4, !dbg !833
  %25 = getelementptr inbounds %struct.UpVal* %24, i32 0, i32 0, !dbg !833
  %26 = load %struct.lua_TValue** %25, align 4, !dbg !833
  %27 = load %struct.lua_TValue** %2, align 4, !dbg !833
  %28 = ptrtoint %struct.lua_TValue* %26 to i32, !dbg !833
  %29 = ptrtoint %struct.lua_TValue* %27 to i32, !dbg !833
  %30 = sub i32 %28, %29, !dbg !833
  %31 = sdiv exact i32 %30, 16, !dbg !833
  %32 = load %struct.lua_State** %1, align 4, !dbg !833
  %33 = getelementptr inbounds %struct.lua_State* %32, i32 0, i32 10, !dbg !833
  %34 = load %struct.lua_TValue** %33, align 4, !dbg !833
  %35 = getelementptr inbounds %struct.lua_TValue* %34, i32 %31, !dbg !833
  %36 = load %struct.UpVal** %up, align 4, !dbg !833
  %37 = getelementptr inbounds %struct.UpVal* %36, i32 0, i32 0, !dbg !833
  store %struct.lua_TValue* %35, %struct.lua_TValue** %37, align 4, !dbg !833
  br label %38, !dbg !833

; <label>:38                                      ; preds = %23
  %39 = load %struct.UpVal** %up, align 4, !dbg !834
  %40 = getelementptr inbounds %struct.UpVal* %39, i32 0, i32 2, !dbg !834
  %41 = bitcast %union.anon.3* %40 to %struct.anon.4*, !dbg !834
  %42 = getelementptr inbounds %struct.anon.4* %41, i32 0, i32 0, !dbg !834
  %43 = load %struct.UpVal** %42, align 4, !dbg !834
  store %struct.UpVal* %43, %struct.UpVal** %up, align 4, !dbg !834
  br label %20, !dbg !834

; <label>:44                                      ; preds = %20
  %45 = load %struct.lua_State** %1, align 4, !dbg !835
  %46 = getelementptr inbounds %struct.lua_State* %45, i32 0, i32 7, !dbg !835
  %47 = load %struct.CallInfo** %46, align 4, !dbg !835
  store %struct.CallInfo* %47, %struct.CallInfo** %ci, align 4, !dbg !835
  br label %48, !dbg !835

; <label>:48                                      ; preds = %106, %44
  %49 = load %struct.CallInfo** %ci, align 4, !dbg !837
  %50 = icmp ne %struct.CallInfo* %49, null, !dbg !837
  br i1 %50, label %51, label %110, !dbg !837

; <label>:51                                      ; preds = %48
  %52 = load %struct.CallInfo** %ci, align 4, !dbg !840
  %53 = getelementptr inbounds %struct.CallInfo* %52, i32 0, i32 1, !dbg !840
  %54 = load %struct.lua_TValue** %53, align 4, !dbg !840
  %55 = load %struct.lua_TValue** %2, align 4, !dbg !840
  %56 = ptrtoint %struct.lua_TValue* %54 to i32, !dbg !840
  %57 = ptrtoint %struct.lua_TValue* %55 to i32, !dbg !840
  %58 = sub i32 %56, %57, !dbg !840
  %59 = sdiv exact i32 %58, 16, !dbg !840
  %60 = load %struct.lua_State** %1, align 4, !dbg !840
  %61 = getelementptr inbounds %struct.lua_State* %60, i32 0, i32 10, !dbg !840
  %62 = load %struct.lua_TValue** %61, align 4, !dbg !840
  %63 = getelementptr inbounds %struct.lua_TValue* %62, i32 %59, !dbg !840
  %64 = load %struct.CallInfo** %ci, align 4, !dbg !840
  %65 = getelementptr inbounds %struct.CallInfo* %64, i32 0, i32 1, !dbg !840
  store %struct.lua_TValue* %63, %struct.lua_TValue** %65, align 4, !dbg !840
  %66 = load %struct.CallInfo** %ci, align 4, !dbg !842
  %67 = getelementptr inbounds %struct.CallInfo* %66, i32 0, i32 0, !dbg !842
  %68 = load %struct.lua_TValue** %67, align 4, !dbg !842
  %69 = load %struct.lua_TValue** %2, align 4, !dbg !842
  %70 = ptrtoint %struct.lua_TValue* %68 to i32, !dbg !842
  %71 = ptrtoint %struct.lua_TValue* %69 to i32, !dbg !842
  %72 = sub i32 %70, %71, !dbg !842
  %73 = sdiv exact i32 %72, 16, !dbg !842
  %74 = load %struct.lua_State** %1, align 4, !dbg !842
  %75 = getelementptr inbounds %struct.lua_State* %74, i32 0, i32 10, !dbg !842
  %76 = load %struct.lua_TValue** %75, align 4, !dbg !842
  %77 = getelementptr inbounds %struct.lua_TValue* %76, i32 %73, !dbg !842
  %78 = load %struct.CallInfo** %ci, align 4, !dbg !842
  %79 = getelementptr inbounds %struct.CallInfo* %78, i32 0, i32 0, !dbg !842
  store %struct.lua_TValue* %77, %struct.lua_TValue** %79, align 4, !dbg !842
  %80 = load %struct.CallInfo** %ci, align 4, !dbg !843
  %81 = getelementptr inbounds %struct.CallInfo* %80, i32 0, i32 7, !dbg !843
  %82 = load i8* %81, align 1, !dbg !843
  %83 = zext i8 %82 to i32, !dbg !843
  %84 = and i32 %83, 2, !dbg !843
  %85 = icmp ne i32 %84, 0, !dbg !843
  br i1 %85, label %86, label %105, !dbg !843

; <label>:86                                      ; preds = %51
  %87 = load %struct.CallInfo** %ci, align 4, !dbg !845
  %88 = getelementptr inbounds %struct.CallInfo* %87, i32 0, i32 4, !dbg !845
  %89 = bitcast %union.anon.0* %88 to %struct.anon.1*, !dbg !845
  %90 = getelementptr inbounds %struct.anon.1* %89, i32 0, i32 0, !dbg !845
  %91 = load %struct.lua_TValue** %90, align 4, !dbg !845
  %92 = load %struct.lua_TValue** %2, align 4, !dbg !845
  %93 = ptrtoint %struct.lua_TValue* %91 to i32, !dbg !845
  %94 = ptrtoint %struct.lua_TValue* %92 to i32, !dbg !845
  %95 = sub i32 %93, %94, !dbg !845
  %96 = sdiv exact i32 %95, 16, !dbg !845
  %97 = load %struct.lua_State** %1, align 4, !dbg !845
  %98 = getelementptr inbounds %struct.lua_State* %97, i32 0, i32 10, !dbg !845
  %99 = load %struct.lua_TValue** %98, align 4, !dbg !845
  %100 = getelementptr inbounds %struct.lua_TValue* %99, i32 %96, !dbg !845
  %101 = load %struct.CallInfo** %ci, align 4, !dbg !845
  %102 = getelementptr inbounds %struct.CallInfo* %101, i32 0, i32 4, !dbg !845
  %103 = bitcast %union.anon.0* %102 to %struct.anon.1*, !dbg !845
  %104 = getelementptr inbounds %struct.anon.1* %103, i32 0, i32 0, !dbg !845
  store %struct.lua_TValue* %100, %struct.lua_TValue** %104, align 4, !dbg !845
  br label %105, !dbg !845

; <label>:105                                     ; preds = %86, %51
  br label %106, !dbg !846

; <label>:106                                     ; preds = %105
  %107 = load %struct.CallInfo** %ci, align 4, !dbg !847
  %108 = getelementptr inbounds %struct.CallInfo* %107, i32 0, i32 2, !dbg !847
  %109 = load %struct.CallInfo** %108, align 4, !dbg !847
  store %struct.CallInfo* %109, %struct.CallInfo** %ci, align 4, !dbg !847
  br label %48, !dbg !847

; <label>:110                                     ; preds = %48
  ret void, !dbg !848
}

; Function Attrs: nounwind
define hidden void @luaD_growstack(%struct.lua_State* %L, i32 %n) #3 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca i32, align 4
  %size = alloca i32, align 4
  %needed = alloca i32, align 4
  %newsize = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !849), !dbg !850
  store i32 %n, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !851), !dbg !852
  call void @llvm.dbg.declare(metadata !{i32* %size}, metadata !853), !dbg !854
  %3 = load %struct.lua_State** %1, align 4, !dbg !855
  %4 = getelementptr inbounds %struct.lua_State* %3, i32 0, i32 18, !dbg !855
  %5 = load i32* %4, align 4, !dbg !855
  store i32 %5, i32* %size, align 4, !dbg !855
  %6 = load i32* %size, align 4, !dbg !856
  %7 = icmp sgt i32 %6, 1000000, !dbg !856
  br i1 %7, label %8, label %10, !dbg !856

; <label>:8                                       ; preds = %0
  %9 = load %struct.lua_State** %1, align 4, !dbg !858
  call void @luaD_throw(%struct.lua_State* %9, i32 6) #9, !dbg !858
  unreachable, !dbg !858

; <label>:10                                      ; preds = %0
  call void @llvm.dbg.declare(metadata !{i32* %needed}, metadata !859), !dbg !861
  %11 = load %struct.lua_State** %1, align 4, !dbg !862
  %12 = getelementptr inbounds %struct.lua_State* %11, i32 0, i32 5, !dbg !862
  %13 = load %struct.lua_TValue** %12, align 4, !dbg !862
  %14 = load %struct.lua_State** %1, align 4, !dbg !862
  %15 = getelementptr inbounds %struct.lua_State* %14, i32 0, i32 10, !dbg !862
  %16 = load %struct.lua_TValue** %15, align 4, !dbg !862
  %17 = ptrtoint %struct.lua_TValue* %13 to i32, !dbg !862
  %18 = ptrtoint %struct.lua_TValue* %16 to i32, !dbg !862
  %19 = sub i32 %17, %18, !dbg !862
  %20 = sdiv exact i32 %19, 16, !dbg !862
  %21 = load i32* %2, align 4, !dbg !862
  %22 = add nsw i32 %20, %21, !dbg !862
  %23 = add nsw i32 %22, 5, !dbg !862
  store i32 %23, i32* %needed, align 4, !dbg !862
  call void @llvm.dbg.declare(metadata !{i32* %newsize}, metadata !863), !dbg !864
  %24 = load i32* %size, align 4, !dbg !865
  %25 = mul nsw i32 2, %24, !dbg !865
  store i32 %25, i32* %newsize, align 4, !dbg !865
  %26 = load i32* %newsize, align 4, !dbg !866
  %27 = icmp sgt i32 %26, 1000000, !dbg !866
  br i1 %27, label %28, label %29, !dbg !866

; <label>:28                                      ; preds = %10
  store i32 1000000, i32* %newsize, align 4, !dbg !868
  br label %29, !dbg !868

; <label>:29                                      ; preds = %28, %10
  %30 = load i32* %newsize, align 4, !dbg !870
  %31 = load i32* %needed, align 4, !dbg !870
  %32 = icmp slt i32 %30, %31, !dbg !870
  br i1 %32, label %33, label %35, !dbg !870

; <label>:33                                      ; preds = %29
  %34 = load i32* %needed, align 4, !dbg !872
  store i32 %34, i32* %newsize, align 4, !dbg !872
  br label %35, !dbg !872

; <label>:35                                      ; preds = %33, %29
  %36 = load i32* %newsize, align 4, !dbg !874
  %37 = icmp sgt i32 %36, 1000000, !dbg !874
  br i1 %37, label %38, label %41, !dbg !874

; <label>:38                                      ; preds = %35
  %39 = load %struct.lua_State** %1, align 4, !dbg !876
  call void @luaD_reallocstack(%struct.lua_State* %39, i32 1000200), !dbg !876
  %40 = load %struct.lua_State** %1, align 4, !dbg !878
  call void (%struct.lua_State*, i8*, ...)* @luaG_runerror(%struct.lua_State* %40, i8* getelementptr inbounds ([15 x i8]* @.str, i32 0, i32 0)) #9, !dbg !878
  unreachable, !dbg !878

; <label>:41                                      ; preds = %35
  %42 = load %struct.lua_State** %1, align 4, !dbg !879
  %43 = load i32* %newsize, align 4, !dbg !879
  call void @luaD_reallocstack(%struct.lua_State* %42, i32 %43), !dbg !879
  br label %44

; <label>:44                                      ; preds = %41
  br label %45

; <label>:45                                      ; preds = %44
  ret void, !dbg !880
}

; Function Attrs: noreturn
declare hidden void @luaG_runerror(%struct.lua_State*, i8*, ...) #5

; Function Attrs: nounwind
define hidden void @luaD_shrinkstack(%struct.lua_State* %L) #3 {
  %1 = alloca %struct.lua_State*, align 4
  %inuse = alloca i32, align 4
  %goodsize = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !881), !dbg !882
  call void @llvm.dbg.declare(metadata !{i32* %inuse}, metadata !883), !dbg !884
  %2 = load %struct.lua_State** %1, align 4, !dbg !885
  %3 = call i32 @stackinuse(%struct.lua_State* %2), !dbg !885
  store i32 %3, i32* %inuse, align 4, !dbg !885
  call void @llvm.dbg.declare(metadata !{i32* %goodsize}, metadata !886), !dbg !887
  %4 = load i32* %inuse, align 4, !dbg !888
  %5 = load i32* %inuse, align 4, !dbg !888
  %6 = sdiv i32 %5, 8, !dbg !888
  %7 = add nsw i32 %4, %6, !dbg !888
  %8 = add nsw i32 %7, 10, !dbg !888
  store i32 %8, i32* %goodsize, align 4, !dbg !888
  %9 = load i32* %goodsize, align 4, !dbg !889
  %10 = icmp sgt i32 %9, 1000000, !dbg !889
  br i1 %10, label %11, label %12, !dbg !889

; <label>:11                                      ; preds = %0
  store i32 1000000, i32* %goodsize, align 4, !dbg !891
  br label %12, !dbg !891

; <label>:12                                      ; preds = %11, %0
  %13 = load %struct.lua_State** %1, align 4, !dbg !893
  %14 = getelementptr inbounds %struct.lua_State* %13, i32 0, i32 18, !dbg !893
  %15 = load i32* %14, align 4, !dbg !893
  %16 = icmp sgt i32 %15, 1000000, !dbg !893
  br i1 %16, label %17, label %19, !dbg !893

; <label>:17                                      ; preds = %12
  %18 = load %struct.lua_State** %1, align 4, !dbg !895
  call void @luaE_freeCI(%struct.lua_State* %18), !dbg !895
  br label %21, !dbg !895

; <label>:19                                      ; preds = %12
  %20 = load %struct.lua_State** %1, align 4, !dbg !896
  call void @luaE_shrinkCI(%struct.lua_State* %20), !dbg !896
  br label %21

; <label>:21                                      ; preds = %19, %17
  %22 = load i32* %inuse, align 4, !dbg !897
  %23 = icmp sle i32 %22, 1000000, !dbg !897
  br i1 %23, label %24, label %33, !dbg !897

; <label>:24                                      ; preds = %21
  %25 = load i32* %goodsize, align 4, !dbg !899
  %26 = load %struct.lua_State** %1, align 4, !dbg !899
  %27 = getelementptr inbounds %struct.lua_State* %26, i32 0, i32 18, !dbg !899
  %28 = load i32* %27, align 4, !dbg !899
  %29 = icmp slt i32 %25, %28, !dbg !899
  br i1 %29, label %30, label %33, !dbg !899

; <label>:30                                      ; preds = %24
  %31 = load %struct.lua_State** %1, align 4, !dbg !901
  %32 = load i32* %goodsize, align 4, !dbg !901
  call void @luaD_reallocstack(%struct.lua_State* %31, i32 %32), !dbg !901
  br label %34, !dbg !901

; <label>:33                                      ; preds = %24, %21
  br label %34

; <label>:34                                      ; preds = %33, %30
  ret void, !dbg !902
}

; Function Attrs: nounwind
define internal i32 @stackinuse(%struct.lua_State* %L) #3 {
  %1 = alloca %struct.lua_State*, align 4
  %ci = alloca %struct.CallInfo*, align 4
  %lim = alloca %struct.lua_TValue*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !903), !dbg !904
  call void @llvm.dbg.declare(metadata !{%struct.CallInfo** %ci}, metadata !905), !dbg !906
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %lim}, metadata !907), !dbg !908
  %2 = load %struct.lua_State** %1, align 4, !dbg !909
  %3 = getelementptr inbounds %struct.lua_State* %2, i32 0, i32 5, !dbg !909
  %4 = load %struct.lua_TValue** %3, align 4, !dbg !909
  store %struct.lua_TValue* %4, %struct.lua_TValue** %lim, align 4, !dbg !909
  %5 = load %struct.lua_State** %1, align 4, !dbg !910
  %6 = getelementptr inbounds %struct.lua_State* %5, i32 0, i32 7, !dbg !910
  %7 = load %struct.CallInfo** %6, align 4, !dbg !910
  store %struct.CallInfo* %7, %struct.CallInfo** %ci, align 4, !dbg !910
  br label %8, !dbg !910

; <label>:8                                       ; preds = %22, %0
  %9 = load %struct.CallInfo** %ci, align 4, !dbg !912
  %10 = icmp ne %struct.CallInfo* %9, null, !dbg !912
  br i1 %10, label %11, label %26, !dbg !912

; <label>:11                                      ; preds = %8
  %12 = load %struct.lua_TValue** %lim, align 4, !dbg !915
  %13 = load %struct.CallInfo** %ci, align 4, !dbg !915
  %14 = getelementptr inbounds %struct.CallInfo* %13, i32 0, i32 1, !dbg !915
  %15 = load %struct.lua_TValue** %14, align 4, !dbg !915
  %16 = icmp ult %struct.lua_TValue* %12, %15, !dbg !915
  br i1 %16, label %17, label %21, !dbg !915

; <label>:17                                      ; preds = %11
  %18 = load %struct.CallInfo** %ci, align 4, !dbg !918
  %19 = getelementptr inbounds %struct.CallInfo* %18, i32 0, i32 1, !dbg !918
  %20 = load %struct.lua_TValue** %19, align 4, !dbg !918
  store %struct.lua_TValue* %20, %struct.lua_TValue** %lim, align 4, !dbg !918
  br label %21, !dbg !918

; <label>:21                                      ; preds = %17, %11
  br label %22, !dbg !920

; <label>:22                                      ; preds = %21
  %23 = load %struct.CallInfo** %ci, align 4, !dbg !921
  %24 = getelementptr inbounds %struct.CallInfo* %23, i32 0, i32 2, !dbg !921
  %25 = load %struct.CallInfo** %24, align 4, !dbg !921
  store %struct.CallInfo* %25, %struct.CallInfo** %ci, align 4, !dbg !921
  br label %8, !dbg !921

; <label>:26                                      ; preds = %8
  %27 = load %struct.lua_TValue** %lim, align 4, !dbg !922
  %28 = load %struct.lua_State** %1, align 4, !dbg !922
  %29 = getelementptr inbounds %struct.lua_State* %28, i32 0, i32 10, !dbg !922
  %30 = load %struct.lua_TValue** %29, align 4, !dbg !922
  %31 = ptrtoint %struct.lua_TValue* %27 to i32, !dbg !922
  %32 = ptrtoint %struct.lua_TValue* %30 to i32, !dbg !922
  %33 = sub i32 %31, %32, !dbg !922
  %34 = sdiv exact i32 %33, 16, !dbg !922
  %35 = add nsw i32 %34, 1, !dbg !922
  ret i32 %35, !dbg !922
}

declare hidden void @luaE_freeCI(%struct.lua_State*) #6

declare hidden void @luaE_shrinkCI(%struct.lua_State*) #6

; Function Attrs: nounwind
define hidden void @luaD_inctop(%struct.lua_State* %L) #3 {
  %1 = alloca %struct.lua_State*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !923), !dbg !924
  %2 = load %struct.lua_State** %1, align 4, !dbg !925
  %3 = getelementptr inbounds %struct.lua_State* %2, i32 0, i32 9, !dbg !925
  %4 = load %struct.lua_TValue** %3, align 4, !dbg !925
  %5 = load %struct.lua_State** %1, align 4, !dbg !925
  %6 = getelementptr inbounds %struct.lua_State* %5, i32 0, i32 5, !dbg !925
  %7 = load %struct.lua_TValue** %6, align 4, !dbg !925
  %8 = ptrtoint %struct.lua_TValue* %4 to i32, !dbg !925
  %9 = ptrtoint %struct.lua_TValue* %7 to i32, !dbg !925
  %10 = sub i32 %8, %9, !dbg !925
  %11 = sdiv exact i32 %10, 16, !dbg !925
  %12 = icmp sle i32 %11, 1, !dbg !925
  br i1 %12, label %13, label %15, !dbg !925

; <label>:13                                      ; preds = %0
  %14 = load %struct.lua_State** %1, align 4, !dbg !927
  call void @luaD_growstack(%struct.lua_State* %14, i32 1), !dbg !927
  br label %16, !dbg !927

; <label>:15                                      ; preds = %0
  br label %16

; <label>:16                                      ; preds = %15, %13
  %17 = load %struct.lua_State** %1, align 4, !dbg !930
  %18 = getelementptr inbounds %struct.lua_State* %17, i32 0, i32 5, !dbg !930
  %19 = load %struct.lua_TValue** %18, align 4, !dbg !930
  %20 = getelementptr inbounds %struct.lua_TValue* %19, i32 1, !dbg !930
  store %struct.lua_TValue* %20, %struct.lua_TValue** %18, align 4, !dbg !930
  ret void, !dbg !931
}

; Function Attrs: nounwind
define hidden void @luaD_hook(%struct.lua_State* %L, i32 %event, i32 %line) #3 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %hook = alloca void (%struct.lua_State*, %struct.lua_Debug*)*, align 4
  %ci = alloca %struct.CallInfo*, align 4
  %top = alloca i32, align 4
  %ci_top = alloca i32, align 4
  %ar = alloca %struct.lua_Debug, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !932), !dbg !933
  store i32 %event, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !934), !dbg !935
  store i32 %line, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !936), !dbg !937
  call void @llvm.dbg.declare(metadata !{void (%struct.lua_State*, %struct.lua_Debug*)** %hook}, metadata !938), !dbg !939
  %4 = load %struct.lua_State** %1, align 4, !dbg !940
  %5 = getelementptr inbounds %struct.lua_State* %4, i32 0, i32 16, !dbg !940
  %6 = load volatile void (%struct.lua_State*, %struct.lua_Debug*)** %5, align 4, !dbg !940
  store void (%struct.lua_State*, %struct.lua_Debug*)* %6, void (%struct.lua_State*, %struct.lua_Debug*)** %hook, align 4, !dbg !940
  %7 = load void (%struct.lua_State*, %struct.lua_Debug*)** %hook, align 4, !dbg !941
  %8 = icmp ne void (%struct.lua_State*, %struct.lua_Debug*)* %7, null, !dbg !941
  br i1 %8, label %9, label %104, !dbg !941

; <label>:9                                       ; preds = %0
  %10 = load %struct.lua_State** %1, align 4, !dbg !943
  %11 = getelementptr inbounds %struct.lua_State* %10, i32 0, i32 24, !dbg !943
  %12 = load i8* %11, align 1, !dbg !943
  %13 = zext i8 %12 to i32, !dbg !943
  %14 = icmp ne i32 %13, 0, !dbg !943
  br i1 %14, label %15, label %104, !dbg !943

; <label>:15                                      ; preds = %9
  call void @llvm.dbg.declare(metadata !{%struct.CallInfo** %ci}, metadata !945), !dbg !947
  %16 = load %struct.lua_State** %1, align 4, !dbg !948
  %17 = getelementptr inbounds %struct.lua_State* %16, i32 0, i32 7, !dbg !948
  %18 = load %struct.CallInfo** %17, align 4, !dbg !948
  store %struct.CallInfo* %18, %struct.CallInfo** %ci, align 4, !dbg !948
  call void @llvm.dbg.declare(metadata !{i32* %top}, metadata !949), !dbg !950
  %19 = load %struct.lua_State** %1, align 4, !dbg !951
  %20 = getelementptr inbounds %struct.lua_State* %19, i32 0, i32 5, !dbg !951
  %21 = load %struct.lua_TValue** %20, align 4, !dbg !951
  %22 = bitcast %struct.lua_TValue* %21 to i8*, !dbg !951
  %23 = load %struct.lua_State** %1, align 4, !dbg !951
  %24 = getelementptr inbounds %struct.lua_State* %23, i32 0, i32 10, !dbg !951
  %25 = load %struct.lua_TValue** %24, align 4, !dbg !951
  %26 = bitcast %struct.lua_TValue* %25 to i8*, !dbg !951
  %27 = ptrtoint i8* %22 to i32, !dbg !951
  %28 = ptrtoint i8* %26 to i32, !dbg !951
  %29 = sub i32 %27, %28, !dbg !951
  store i32 %29, i32* %top, align 4, !dbg !951
  call void @llvm.dbg.declare(metadata !{i32* %ci_top}, metadata !952), !dbg !953
  %30 = load %struct.CallInfo** %ci, align 4, !dbg !954
  %31 = getelementptr inbounds %struct.CallInfo* %30, i32 0, i32 1, !dbg !954
  %32 = load %struct.lua_TValue** %31, align 4, !dbg !954
  %33 = bitcast %struct.lua_TValue* %32 to i8*, !dbg !954
  %34 = load %struct.lua_State** %1, align 4, !dbg !954
  %35 = getelementptr inbounds %struct.lua_State* %34, i32 0, i32 10, !dbg !954
  %36 = load %struct.lua_TValue** %35, align 4, !dbg !954
  %37 = bitcast %struct.lua_TValue* %36 to i8*, !dbg !954
  %38 = ptrtoint i8* %33 to i32, !dbg !954
  %39 = ptrtoint i8* %37 to i32, !dbg !954
  %40 = sub i32 %38, %39, !dbg !954
  store i32 %40, i32* %ci_top, align 4, !dbg !954
  call void @llvm.dbg.declare(metadata !{%struct.lua_Debug* %ar}, metadata !955), !dbg !956
  %41 = load i32* %2, align 4, !dbg !957
  %42 = getelementptr inbounds %struct.lua_Debug* %ar, i32 0, i32 0, !dbg !957
  store i32 %41, i32* %42, align 4, !dbg !957
  %43 = load i32* %3, align 4, !dbg !958
  %44 = getelementptr inbounds %struct.lua_Debug* %ar, i32 0, i32 5, !dbg !958
  store i32 %43, i32* %44, align 4, !dbg !958
  %45 = load %struct.CallInfo** %ci, align 4, !dbg !959
  %46 = getelementptr inbounds %struct.lua_Debug* %ar, i32 0, i32 13, !dbg !959
  store %struct.CallInfo* %45, %struct.CallInfo** %46, align 4, !dbg !959
  %47 = load %struct.lua_State** %1, align 4, !dbg !960
  %48 = getelementptr inbounds %struct.lua_State* %47, i32 0, i32 9, !dbg !960
  %49 = load %struct.lua_TValue** %48, align 4, !dbg !960
  %50 = load %struct.lua_State** %1, align 4, !dbg !960
  %51 = getelementptr inbounds %struct.lua_State* %50, i32 0, i32 5, !dbg !960
  %52 = load %struct.lua_TValue** %51, align 4, !dbg !960
  %53 = ptrtoint %struct.lua_TValue* %49 to i32, !dbg !960
  %54 = ptrtoint %struct.lua_TValue* %52 to i32, !dbg !960
  %55 = sub i32 %53, %54, !dbg !960
  %56 = sdiv exact i32 %55, 16, !dbg !960
  %57 = icmp sle i32 %56, 20, !dbg !960
  br i1 %57, label %58, label %60, !dbg !960

; <label>:58                                      ; preds = %15
  %59 = load %struct.lua_State** %1, align 4, !dbg !962
  call void @luaD_growstack(%struct.lua_State* %59, i32 20), !dbg !962
  br label %61, !dbg !962

; <label>:60                                      ; preds = %15
  br label %61

; <label>:61                                      ; preds = %60, %58
  %62 = load %struct.lua_State** %1, align 4, !dbg !965
  %63 = getelementptr inbounds %struct.lua_State* %62, i32 0, i32 5, !dbg !965
  %64 = load %struct.lua_TValue** %63, align 4, !dbg !965
  %65 = getelementptr inbounds %struct.lua_TValue* %64, i32 20, !dbg !965
  %66 = load %struct.CallInfo** %ci, align 4, !dbg !965
  %67 = getelementptr inbounds %struct.CallInfo* %66, i32 0, i32 1, !dbg !965
  store %struct.lua_TValue* %65, %struct.lua_TValue** %67, align 4, !dbg !965
  %68 = load %struct.lua_State** %1, align 4, !dbg !966
  %69 = getelementptr inbounds %struct.lua_State* %68, i32 0, i32 24, !dbg !966
  store i8 0, i8* %69, align 1, !dbg !966
  %70 = load %struct.CallInfo** %ci, align 4, !dbg !967
  %71 = getelementptr inbounds %struct.CallInfo* %70, i32 0, i32 7, !dbg !967
  %72 = load i8* %71, align 1, !dbg !967
  %73 = zext i8 %72 to i32, !dbg !967
  %74 = or i32 %73, 4, !dbg !967
  %75 = trunc i32 %74 to i8, !dbg !967
  store i8 %75, i8* %71, align 1, !dbg !967
  %76 = load void (%struct.lua_State*, %struct.lua_Debug*)** %hook, align 4, !dbg !968
  %77 = load %struct.lua_State** %1, align 4, !dbg !968
  call void %76(%struct.lua_State* %77, %struct.lua_Debug* %ar), !dbg !968
  %78 = load %struct.lua_State** %1, align 4, !dbg !969
  %79 = getelementptr inbounds %struct.lua_State* %78, i32 0, i32 24, !dbg !969
  store i8 1, i8* %79, align 1, !dbg !969
  %80 = load %struct.lua_State** %1, align 4, !dbg !970
  %81 = getelementptr inbounds %struct.lua_State* %80, i32 0, i32 10, !dbg !970
  %82 = load %struct.lua_TValue** %81, align 4, !dbg !970
  %83 = bitcast %struct.lua_TValue* %82 to i8*, !dbg !970
  %84 = load i32* %ci_top, align 4, !dbg !970
  %85 = getelementptr inbounds i8* %83, i32 %84, !dbg !970
  %86 = bitcast i8* %85 to %struct.lua_TValue*, !dbg !970
  %87 = load %struct.CallInfo** %ci, align 4, !dbg !970
  %88 = getelementptr inbounds %struct.CallInfo* %87, i32 0, i32 1, !dbg !970
  store %struct.lua_TValue* %86, %struct.lua_TValue** %88, align 4, !dbg !970
  %89 = load %struct.lua_State** %1, align 4, !dbg !971
  %90 = getelementptr inbounds %struct.lua_State* %89, i32 0, i32 10, !dbg !971
  %91 = load %struct.lua_TValue** %90, align 4, !dbg !971
  %92 = bitcast %struct.lua_TValue* %91 to i8*, !dbg !971
  %93 = load i32* %top, align 4, !dbg !971
  %94 = getelementptr inbounds i8* %92, i32 %93, !dbg !971
  %95 = bitcast i8* %94 to %struct.lua_TValue*, !dbg !971
  %96 = load %struct.lua_State** %1, align 4, !dbg !971
  %97 = getelementptr inbounds %struct.lua_State* %96, i32 0, i32 5, !dbg !971
  store %struct.lua_TValue* %95, %struct.lua_TValue** %97, align 4, !dbg !971
  %98 = load %struct.CallInfo** %ci, align 4, !dbg !972
  %99 = getelementptr inbounds %struct.CallInfo* %98, i32 0, i32 7, !dbg !972
  %100 = load i8* %99, align 1, !dbg !972
  %101 = zext i8 %100 to i32, !dbg !972
  %102 = and i32 %101, -5, !dbg !972
  %103 = trunc i32 %102 to i8, !dbg !972
  store i8 %103, i8* %99, align 1, !dbg !972
  br label %104, !dbg !973

; <label>:104                                     ; preds = %61, %9, %0
  ret void, !dbg !974
}

; Function Attrs: nounwind
define hidden i32 @luaD_precall(%struct.lua_State* %L, %struct.lua_TValue* %func, i32 %nresults) #3 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.lua_State*, align 4
  %3 = alloca %struct.lua_TValue*, align 4
  %4 = alloca i32, align 4
  %f = alloca i32 (%struct.lua_State*)*, align 4
  %ci = alloca %struct.CallInfo*, align 4
  %n = alloca i32, align 4
  %t__ = alloca i32, align 4
  %base = alloca %struct.lua_TValue*, align 4
  %p = alloca %struct.Proto*, align 4
  %n1 = alloca i32, align 4
  %fsize = alloca i32, align 4
  %t__2 = alloca i32, align 4
  %t__3 = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %2}, metadata !975), !dbg !976
  store %struct.lua_TValue* %func, %struct.lua_TValue** %3, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %3}, metadata !977), !dbg !978
  store i32 %nresults, i32* %4, align 4
  call void @llvm.dbg.declare(metadata !{i32* %4}, metadata !979), !dbg !980
  call void @llvm.dbg.declare(metadata !{i32 (%struct.lua_State*)** %f}, metadata !981), !dbg !982
  call void @llvm.dbg.declare(metadata !{%struct.CallInfo** %ci}, metadata !983), !dbg !984
  %5 = load %struct.lua_TValue** %3, align 4, !dbg !985
  %6 = getelementptr inbounds %struct.lua_TValue* %5, i32 0, i32 1, !dbg !985
  %7 = load i32* %6, align 4, !dbg !985
  %8 = and i32 %7, 63, !dbg !985
  switch i32 %8, label %272 [
    i32 38, label %9
    i32 22, label %19
    i32 6, label %120
  ], !dbg !985

; <label>:9                                       ; preds = %0
  %10 = load %struct.lua_TValue** %3, align 4, !dbg !986
  %11 = getelementptr inbounds %struct.lua_TValue* %10, i32 0, i32 0, !dbg !986
  %12 = bitcast %union.Value* %11 to %struct.GCObject**, !dbg !986
  %13 = load %struct.GCObject** %12, align 4, !dbg !986
  %14 = bitcast %struct.GCObject* %13 to %union.GCUnion*, !dbg !986
  %15 = bitcast %union.GCUnion* %14 to %union.Closure*, !dbg !986
  %16 = bitcast %union.Closure* %15 to %struct.CClosure*, !dbg !986
  %17 = getelementptr inbounds %struct.CClosure* %16, i32 0, i32 5, !dbg !986
  %18 = load i32 (%struct.lua_State*)** %17, align 4, !dbg !986
  store i32 (%struct.lua_State*)* %18, i32 (%struct.lua_State*)** %f, align 4, !dbg !986
  br label %24, !dbg !988

; <label>:19                                      ; preds = %0
  %20 = load %struct.lua_TValue** %3, align 4, !dbg !989
  %21 = getelementptr inbounds %struct.lua_TValue* %20, i32 0, i32 0, !dbg !989
  %22 = bitcast %union.Value* %21 to i32 (%struct.lua_State*)**, !dbg !989
  %23 = load i32 (%struct.lua_State*)** %22, align 4, !dbg !989
  store i32 (%struct.lua_State*)* %23, i32 (%struct.lua_State*)** %f, align 4, !dbg !989
  br label %24, !dbg !989

; <label>:24                                      ; preds = %19, %9
  call void @llvm.dbg.declare(metadata !{i32* %n}, metadata !990), !dbg !992
  %25 = load %struct.lua_State** %2, align 4, !dbg !993
  %26 = getelementptr inbounds %struct.lua_State* %25, i32 0, i32 9, !dbg !993
  %27 = load %struct.lua_TValue** %26, align 4, !dbg !993
  %28 = load %struct.lua_State** %2, align 4, !dbg !993
  %29 = getelementptr inbounds %struct.lua_State* %28, i32 0, i32 5, !dbg !993
  %30 = load %struct.lua_TValue** %29, align 4, !dbg !993
  %31 = ptrtoint %struct.lua_TValue* %27 to i32, !dbg !993
  %32 = ptrtoint %struct.lua_TValue* %30 to i32, !dbg !993
  %33 = sub i32 %31, %32, !dbg !993
  %34 = sdiv exact i32 %33, 16, !dbg !993
  %35 = icmp sle i32 %34, 20, !dbg !993
  br i1 %35, label %36, label %63, !dbg !993

; <label>:36                                      ; preds = %24
  call void @llvm.dbg.declare(metadata !{i32* %t__}, metadata !995), !dbg !997
  %37 = load %struct.lua_TValue** %3, align 4, !dbg !998
  %38 = bitcast %struct.lua_TValue* %37 to i8*, !dbg !998
  %39 = load %struct.lua_State** %2, align 4, !dbg !998
  %40 = getelementptr inbounds %struct.lua_State* %39, i32 0, i32 10, !dbg !998
  %41 = load %struct.lua_TValue** %40, align 4, !dbg !998
  %42 = bitcast %struct.lua_TValue* %41 to i8*, !dbg !998
  %43 = ptrtoint i8* %38 to i32, !dbg !998
  %44 = ptrtoint i8* %42 to i32, !dbg !998
  %45 = sub i32 %43, %44, !dbg !998
  store i32 %45, i32* %t__, align 4, !dbg !998
  %46 = load %struct.lua_State** %2, align 4, !dbg !1000
  %47 = getelementptr inbounds %struct.lua_State* %46, i32 0, i32 6, !dbg !1000
  %48 = load %struct.global_State** %47, align 4, !dbg !1000
  %49 = getelementptr inbounds %struct.global_State* %48, i32 0, i32 3, !dbg !1000
  %50 = load i32* %49, align 4, !dbg !1000
  %51 = icmp sgt i32 %50, 0, !dbg !1000
  br i1 %51, label %52, label %54, !dbg !1000

; <label>:52                                      ; preds = %36
  %53 = load %struct.lua_State** %2, align 4, !dbg !1003
  call void @luaC_step(%struct.lua_State* %53), !dbg !1003
  br label %54, !dbg !1003

; <label>:54                                      ; preds = %52, %36
  %55 = load %struct.lua_State** %2, align 4, !dbg !1006
  call void @luaD_growstack(%struct.lua_State* %55, i32 20), !dbg !1006
  %56 = load %struct.lua_State** %2, align 4, !dbg !1006
  %57 = getelementptr inbounds %struct.lua_State* %56, i32 0, i32 10, !dbg !1006
  %58 = load %struct.lua_TValue** %57, align 4, !dbg !1006
  %59 = bitcast %struct.lua_TValue* %58 to i8*, !dbg !1006
  %60 = load i32* %t__, align 4, !dbg !1006
  %61 = getelementptr inbounds i8* %59, i32 %60, !dbg !1006
  %62 = bitcast i8* %61 to %struct.lua_TValue*, !dbg !1006
  store %struct.lua_TValue* %62, %struct.lua_TValue** %3, align 4, !dbg !1006
  br label %64, !dbg !1006

; <label>:63                                      ; preds = %24
  br label %64

; <label>:64                                      ; preds = %63, %54
  %65 = load %struct.lua_State** %2, align 4, !dbg !1009
  %66 = getelementptr inbounds %struct.lua_State* %65, i32 0, i32 7, !dbg !1009
  %67 = load %struct.CallInfo** %66, align 4, !dbg !1009
  %68 = getelementptr inbounds %struct.CallInfo* %67, i32 0, i32 3, !dbg !1009
  %69 = load %struct.CallInfo** %68, align 4, !dbg !1009
  %70 = icmp ne %struct.CallInfo* %69, null, !dbg !1009
  br i1 %70, label %71, label %77, !dbg !1009

; <label>:71                                      ; preds = %64
  %72 = load %struct.lua_State** %2, align 4, !dbg !1010
  %73 = getelementptr inbounds %struct.lua_State* %72, i32 0, i32 7, !dbg !1010
  %74 = load %struct.CallInfo** %73, align 4, !dbg !1010
  %75 = getelementptr inbounds %struct.CallInfo* %74, i32 0, i32 3, !dbg !1010
  %76 = load %struct.CallInfo** %75, align 4, !dbg !1010
  br label %80, !dbg !1010

; <label>:77                                      ; preds = %64
  %78 = load %struct.lua_State** %2, align 4, !dbg !1012
  %79 = call %struct.CallInfo* @luaE_extendCI(%struct.lua_State* %78), !dbg !1012
  br label %80, !dbg !1012

; <label>:80                                      ; preds = %77, %71
  %81 = phi %struct.CallInfo* [ %76, %71 ], [ %79, %77 ], !dbg !1014
  %82 = load %struct.lua_State** %2, align 4, !dbg !1015
  %83 = getelementptr inbounds %struct.lua_State* %82, i32 0, i32 7, !dbg !1015
  store %struct.CallInfo* %81, %struct.CallInfo** %83, align 4, !dbg !1015
  store %struct.CallInfo* %81, %struct.CallInfo** %ci, align 4, !dbg !1015
  %84 = load i32* %4, align 4, !dbg !1018
  %85 = trunc i32 %84 to i16, !dbg !1018
  %86 = load %struct.CallInfo** %ci, align 4, !dbg !1018
  %87 = getelementptr inbounds %struct.CallInfo* %86, i32 0, i32 6, !dbg !1018
  store i16 %85, i16* %87, align 2, !dbg !1018
  %88 = load %struct.lua_TValue** %3, align 4, !dbg !1019
  %89 = load %struct.CallInfo** %ci, align 4, !dbg !1019
  %90 = getelementptr inbounds %struct.CallInfo* %89, i32 0, i32 0, !dbg !1019
  store %struct.lua_TValue* %88, %struct.lua_TValue** %90, align 4, !dbg !1019
  %91 = load %struct.lua_State** %2, align 4, !dbg !1020
  %92 = getelementptr inbounds %struct.lua_State* %91, i32 0, i32 5, !dbg !1020
  %93 = load %struct.lua_TValue** %92, align 4, !dbg !1020
  %94 = getelementptr inbounds %struct.lua_TValue* %93, i32 20, !dbg !1020
  %95 = load %struct.CallInfo** %ci, align 4, !dbg !1020
  %96 = getelementptr inbounds %struct.CallInfo* %95, i32 0, i32 1, !dbg !1020
  store %struct.lua_TValue* %94, %struct.lua_TValue** %96, align 4, !dbg !1020
  %97 = load %struct.CallInfo** %ci, align 4, !dbg !1021
  %98 = getelementptr inbounds %struct.CallInfo* %97, i32 0, i32 7, !dbg !1021
  store i8 0, i8* %98, align 1, !dbg !1021
  %99 = load %struct.lua_State** %2, align 4, !dbg !1022
  %100 = getelementptr inbounds %struct.lua_State* %99, i32 0, i32 23, !dbg !1022
  %101 = load i32* %100, align 4, !dbg !1022
  %102 = and i32 %101, 1, !dbg !1022
  %103 = icmp ne i32 %102, 0, !dbg !1022
  br i1 %103, label %104, label %106, !dbg !1022

; <label>:104                                     ; preds = %80
  %105 = load %struct.lua_State** %2, align 4, !dbg !1024
  call void @luaD_hook(%struct.lua_State* %105, i32 0, i32 -1), !dbg !1024
  br label %106, !dbg !1024

; <label>:106                                     ; preds = %104, %80
  %107 = load i32 (%struct.lua_State*)** %f, align 4, !dbg !1025
  %108 = load %struct.lua_State** %2, align 4, !dbg !1025
  %109 = call i32 %107(%struct.lua_State* %108), !dbg !1025
  store i32 %109, i32* %n, align 4, !dbg !1025
  %110 = load %struct.lua_State** %2, align 4, !dbg !1026
  %111 = load %struct.CallInfo** %ci, align 4, !dbg !1026
  %112 = load %struct.lua_State** %2, align 4, !dbg !1026
  %113 = getelementptr inbounds %struct.lua_State* %112, i32 0, i32 5, !dbg !1026
  %114 = load %struct.lua_TValue** %113, align 4, !dbg !1026
  %115 = load i32* %n, align 4, !dbg !1026
  %116 = sub i32 0, %115, !dbg !1026
  %117 = getelementptr inbounds %struct.lua_TValue* %114, i32 %116, !dbg !1026
  %118 = load i32* %n, align 4, !dbg !1026
  %119 = call i32 @luaD_poscall(%struct.lua_State* %110, %struct.CallInfo* %111, %struct.lua_TValue* %117, i32 %118), !dbg !1026
  store i32 1, i32* %1, !dbg !1027
  br label %319, !dbg !1027

; <label>:120                                     ; preds = %0
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %base}, metadata !1028), !dbg !1030
  call void @llvm.dbg.declare(metadata !{%struct.Proto** %p}, metadata !1031), !dbg !1032
  %121 = load %struct.lua_TValue** %3, align 4, !dbg !1033
  %122 = getelementptr inbounds %struct.lua_TValue* %121, i32 0, i32 0, !dbg !1033
  %123 = bitcast %union.Value* %122 to %struct.GCObject**, !dbg !1033
  %124 = load %struct.GCObject** %123, align 4, !dbg !1033
  %125 = bitcast %struct.GCObject* %124 to %union.GCUnion*, !dbg !1033
  %126 = bitcast %union.GCUnion* %125 to %union.Closure*, !dbg !1033
  %127 = bitcast %union.Closure* %126 to %struct.LClosure*, !dbg !1033
  %128 = getelementptr inbounds %struct.LClosure* %127, i32 0, i32 5, !dbg !1033
  %129 = load %struct.Proto** %128, align 4, !dbg !1033
  store %struct.Proto* %129, %struct.Proto** %p, align 4, !dbg !1033
  call void @llvm.dbg.declare(metadata !{i32* %n1}, metadata !1034), !dbg !1035
  %130 = load %struct.lua_State** %2, align 4, !dbg !1036
  %131 = getelementptr inbounds %struct.lua_State* %130, i32 0, i32 5, !dbg !1036
  %132 = load %struct.lua_TValue** %131, align 4, !dbg !1036
  %133 = load %struct.lua_TValue** %3, align 4, !dbg !1036
  %134 = ptrtoint %struct.lua_TValue* %132 to i32, !dbg !1036
  %135 = ptrtoint %struct.lua_TValue* %133 to i32, !dbg !1036
  %136 = sub i32 %134, %135, !dbg !1036
  %137 = sdiv exact i32 %136, 16, !dbg !1036
  %138 = sub nsw i32 %137, 1, !dbg !1036
  store i32 %138, i32* %n1, align 4, !dbg !1036
  call void @llvm.dbg.declare(metadata !{i32* %fsize}, metadata !1037), !dbg !1038
  %139 = load %struct.Proto** %p, align 4, !dbg !1039
  %140 = getelementptr inbounds %struct.Proto* %139, i32 0, i32 5, !dbg !1039
  %141 = load i8* %140, align 1, !dbg !1039
  %142 = zext i8 %141 to i32, !dbg !1039
  store i32 %142, i32* %fsize, align 4, !dbg !1039
  %143 = load %struct.lua_State** %2, align 4, !dbg !1040
  %144 = getelementptr inbounds %struct.lua_State* %143, i32 0, i32 9, !dbg !1040
  %145 = load %struct.lua_TValue** %144, align 4, !dbg !1040
  %146 = load %struct.lua_State** %2, align 4, !dbg !1040
  %147 = getelementptr inbounds %struct.lua_State* %146, i32 0, i32 5, !dbg !1040
  %148 = load %struct.lua_TValue** %147, align 4, !dbg !1040
  %149 = ptrtoint %struct.lua_TValue* %145 to i32, !dbg !1040
  %150 = ptrtoint %struct.lua_TValue* %148 to i32, !dbg !1040
  %151 = sub i32 %149, %150, !dbg !1040
  %152 = sdiv exact i32 %151, 16, !dbg !1040
  %153 = load i32* %fsize, align 4, !dbg !1040
  %154 = icmp sle i32 %152, %153, !dbg !1040
  br i1 %154, label %155, label %183, !dbg !1040

; <label>:155                                     ; preds = %120
  call void @llvm.dbg.declare(metadata !{i32* %t__2}, metadata !1042), !dbg !1044
  %156 = load %struct.lua_TValue** %3, align 4, !dbg !1045
  %157 = bitcast %struct.lua_TValue* %156 to i8*, !dbg !1045
  %158 = load %struct.lua_State** %2, align 4, !dbg !1045
  %159 = getelementptr inbounds %struct.lua_State* %158, i32 0, i32 10, !dbg !1045
  %160 = load %struct.lua_TValue** %159, align 4, !dbg !1045
  %161 = bitcast %struct.lua_TValue* %160 to i8*, !dbg !1045
  %162 = ptrtoint i8* %157 to i32, !dbg !1045
  %163 = ptrtoint i8* %161 to i32, !dbg !1045
  %164 = sub i32 %162, %163, !dbg !1045
  store i32 %164, i32* %t__2, align 4, !dbg !1045
  %165 = load %struct.lua_State** %2, align 4, !dbg !1047
  %166 = getelementptr inbounds %struct.lua_State* %165, i32 0, i32 6, !dbg !1047
  %167 = load %struct.global_State** %166, align 4, !dbg !1047
  %168 = getelementptr inbounds %struct.global_State* %167, i32 0, i32 3, !dbg !1047
  %169 = load i32* %168, align 4, !dbg !1047
  %170 = icmp sgt i32 %169, 0, !dbg !1047
  br i1 %170, label %171, label %173, !dbg !1047

; <label>:171                                     ; preds = %155
  %172 = load %struct.lua_State** %2, align 4, !dbg !1050
  call void @luaC_step(%struct.lua_State* %172), !dbg !1050
  br label %173, !dbg !1050

; <label>:173                                     ; preds = %171, %155
  %174 = load %struct.lua_State** %2, align 4, !dbg !1053
  %175 = load i32* %fsize, align 4, !dbg !1053
  call void @luaD_growstack(%struct.lua_State* %174, i32 %175), !dbg !1053
  %176 = load %struct.lua_State** %2, align 4, !dbg !1053
  %177 = getelementptr inbounds %struct.lua_State* %176, i32 0, i32 10, !dbg !1053
  %178 = load %struct.lua_TValue** %177, align 4, !dbg !1053
  %179 = bitcast %struct.lua_TValue* %178 to i8*, !dbg !1053
  %180 = load i32* %t__2, align 4, !dbg !1053
  %181 = getelementptr inbounds i8* %179, i32 %180, !dbg !1053
  %182 = bitcast i8* %181 to %struct.lua_TValue*, !dbg !1053
  store %struct.lua_TValue* %182, %struct.lua_TValue** %3, align 4, !dbg !1053
  br label %184, !dbg !1053

; <label>:183                                     ; preds = %120
  br label %184

; <label>:184                                     ; preds = %183, %173
  %185 = load %struct.Proto** %p, align 4, !dbg !1056
  %186 = getelementptr inbounds %struct.Proto* %185, i32 0, i32 4, !dbg !1056
  %187 = load i8* %186, align 1, !dbg !1056
  %188 = zext i8 %187 to i32, !dbg !1056
  %189 = icmp ne i32 %188, 1, !dbg !1056
  br i1 %189, label %190, label %210, !dbg !1056

; <label>:190                                     ; preds = %184
  br label %191, !dbg !1058

; <label>:191                                     ; preds = %204, %190
  %192 = load i32* %n1, align 4, !dbg !1061
  %193 = load %struct.Proto** %p, align 4, !dbg !1061
  %194 = getelementptr inbounds %struct.Proto* %193, i32 0, i32 3, !dbg !1061
  %195 = load i8* %194, align 1, !dbg !1061
  %196 = zext i8 %195 to i32, !dbg !1061
  %197 = icmp slt i32 %192, %196, !dbg !1061
  br i1 %197, label %198, label %207, !dbg !1061

; <label>:198                                     ; preds = %191
  %199 = load %struct.lua_State** %2, align 4, !dbg !1064
  %200 = getelementptr inbounds %struct.lua_State* %199, i32 0, i32 5, !dbg !1064
  %201 = load %struct.lua_TValue** %200, align 4, !dbg !1064
  %202 = getelementptr inbounds %struct.lua_TValue* %201, i32 1, !dbg !1064
  store %struct.lua_TValue* %202, %struct.lua_TValue** %200, align 4, !dbg !1064
  %203 = getelementptr inbounds %struct.lua_TValue* %201, i32 0, i32 1, !dbg !1064
  store i32 0, i32* %203, align 4, !dbg !1064
  br label %204, !dbg !1064

; <label>:204                                     ; preds = %198
  %205 = load i32* %n1, align 4, !dbg !1065
  %206 = add nsw i32 %205, 1, !dbg !1065
  store i32 %206, i32* %n1, align 4, !dbg !1065
  br label %191, !dbg !1065

; <label>:207                                     ; preds = %191
  %208 = load %struct.lua_TValue** %3, align 4, !dbg !1066
  %209 = getelementptr inbounds %struct.lua_TValue* %208, i32 1, !dbg !1066
  store %struct.lua_TValue* %209, %struct.lua_TValue** %base, align 4, !dbg !1066
  br label %215, !dbg !1067

; <label>:210                                     ; preds = %184
  %211 = load %struct.lua_State** %2, align 4, !dbg !1068
  %212 = load %struct.Proto** %p, align 4, !dbg !1068
  %213 = load i32* %n1, align 4, !dbg !1068
  %214 = call %struct.lua_TValue* @adjust_varargs(%struct.lua_State* %211, %struct.Proto* %212, i32 %213), !dbg !1068
  store %struct.lua_TValue* %214, %struct.lua_TValue** %base, align 4, !dbg !1068
  br label %215

; <label>:215                                     ; preds = %210, %207
  %216 = load %struct.lua_State** %2, align 4, !dbg !1069
  %217 = getelementptr inbounds %struct.lua_State* %216, i32 0, i32 7, !dbg !1069
  %218 = load %struct.CallInfo** %217, align 4, !dbg !1069
  %219 = getelementptr inbounds %struct.CallInfo* %218, i32 0, i32 3, !dbg !1069
  %220 = load %struct.CallInfo** %219, align 4, !dbg !1069
  %221 = icmp ne %struct.CallInfo* %220, null, !dbg !1069
  br i1 %221, label %222, label %228, !dbg !1069

; <label>:222                                     ; preds = %215
  %223 = load %struct.lua_State** %2, align 4, !dbg !1070
  %224 = getelementptr inbounds %struct.lua_State* %223, i32 0, i32 7, !dbg !1070
  %225 = load %struct.CallInfo** %224, align 4, !dbg !1070
  %226 = getelementptr inbounds %struct.CallInfo* %225, i32 0, i32 3, !dbg !1070
  %227 = load %struct.CallInfo** %226, align 4, !dbg !1070
  br label %231, !dbg !1070

; <label>:228                                     ; preds = %215
  %229 = load %struct.lua_State** %2, align 4, !dbg !1072
  %230 = call %struct.CallInfo* @luaE_extendCI(%struct.lua_State* %229), !dbg !1072
  br label %231, !dbg !1072

; <label>:231                                     ; preds = %228, %222
  %232 = phi %struct.CallInfo* [ %227, %222 ], [ %230, %228 ], !dbg !1074
  %233 = load %struct.lua_State** %2, align 4, !dbg !1075
  %234 = getelementptr inbounds %struct.lua_State* %233, i32 0, i32 7, !dbg !1075
  store %struct.CallInfo* %232, %struct.CallInfo** %234, align 4, !dbg !1075
  store %struct.CallInfo* %232, %struct.CallInfo** %ci, align 4, !dbg !1075
  %235 = load i32* %4, align 4, !dbg !1078
  %236 = trunc i32 %235 to i16, !dbg !1078
  %237 = load %struct.CallInfo** %ci, align 4, !dbg !1078
  %238 = getelementptr inbounds %struct.CallInfo* %237, i32 0, i32 6, !dbg !1078
  store i16 %236, i16* %238, align 2, !dbg !1078
  %239 = load %struct.lua_TValue** %3, align 4, !dbg !1079
  %240 = load %struct.CallInfo** %ci, align 4, !dbg !1079
  %241 = getelementptr inbounds %struct.CallInfo* %240, i32 0, i32 0, !dbg !1079
  store %struct.lua_TValue* %239, %struct.lua_TValue** %241, align 4, !dbg !1079
  %242 = load %struct.lua_TValue** %base, align 4, !dbg !1080
  %243 = load %struct.CallInfo** %ci, align 4, !dbg !1080
  %244 = getelementptr inbounds %struct.CallInfo* %243, i32 0, i32 4, !dbg !1080
  %245 = bitcast %union.anon.0* %244 to %struct.anon.1*, !dbg !1080
  %246 = getelementptr inbounds %struct.anon.1* %245, i32 0, i32 0, !dbg !1080
  store %struct.lua_TValue* %242, %struct.lua_TValue** %246, align 4, !dbg !1080
  %247 = load %struct.lua_TValue** %base, align 4, !dbg !1081
  %248 = load i32* %fsize, align 4, !dbg !1081
  %249 = getelementptr inbounds %struct.lua_TValue* %247, i32 %248, !dbg !1081
  %250 = load %struct.CallInfo** %ci, align 4, !dbg !1081
  %251 = getelementptr inbounds %struct.CallInfo* %250, i32 0, i32 1, !dbg !1081
  store %struct.lua_TValue* %249, %struct.lua_TValue** %251, align 4, !dbg !1081
  %252 = load %struct.lua_State** %2, align 4, !dbg !1081
  %253 = getelementptr inbounds %struct.lua_State* %252, i32 0, i32 5, !dbg !1081
  store %struct.lua_TValue* %249, %struct.lua_TValue** %253, align 4, !dbg !1081
  %254 = load %struct.Proto** %p, align 4, !dbg !1082
  %255 = getelementptr inbounds %struct.Proto* %254, i32 0, i32 15, !dbg !1082
  %256 = load i32** %255, align 4, !dbg !1082
  %257 = load %struct.CallInfo** %ci, align 4, !dbg !1082
  %258 = getelementptr inbounds %struct.CallInfo* %257, i32 0, i32 4, !dbg !1082
  %259 = bitcast %union.anon.0* %258 to %struct.anon.1*, !dbg !1082
  %260 = getelementptr inbounds %struct.anon.1* %259, i32 0, i32 1, !dbg !1082
  store i32* %256, i32** %260, align 4, !dbg !1082
  %261 = load %struct.CallInfo** %ci, align 4, !dbg !1083
  %262 = getelementptr inbounds %struct.CallInfo* %261, i32 0, i32 7, !dbg !1083
  store i8 2, i8* %262, align 1, !dbg !1083
  %263 = load %struct.lua_State** %2, align 4, !dbg !1084
  %264 = getelementptr inbounds %struct.lua_State* %263, i32 0, i32 23, !dbg !1084
  %265 = load i32* %264, align 4, !dbg !1084
  %266 = and i32 %265, 1, !dbg !1084
  %267 = icmp ne i32 %266, 0, !dbg !1084
  br i1 %267, label %268, label %271, !dbg !1084

; <label>:268                                     ; preds = %231
  %269 = load %struct.lua_State** %2, align 4, !dbg !1086
  %270 = load %struct.CallInfo** %ci, align 4, !dbg !1086
  call void @callhook(%struct.lua_State* %269, %struct.CallInfo* %270), !dbg !1086
  br label %271, !dbg !1086

; <label>:271                                     ; preds = %268, %231
  store i32 0, i32* %1, !dbg !1087
  br label %319, !dbg !1087

; <label>:272                                     ; preds = %0
  %273 = load %struct.lua_State** %2, align 4, !dbg !1088
  %274 = getelementptr inbounds %struct.lua_State* %273, i32 0, i32 9, !dbg !1088
  %275 = load %struct.lua_TValue** %274, align 4, !dbg !1088
  %276 = load %struct.lua_State** %2, align 4, !dbg !1088
  %277 = getelementptr inbounds %struct.lua_State* %276, i32 0, i32 5, !dbg !1088
  %278 = load %struct.lua_TValue** %277, align 4, !dbg !1088
  %279 = ptrtoint %struct.lua_TValue* %275 to i32, !dbg !1088
  %280 = ptrtoint %struct.lua_TValue* %278 to i32, !dbg !1088
  %281 = sub i32 %279, %280, !dbg !1088
  %282 = sdiv exact i32 %281, 16, !dbg !1088
  %283 = icmp sle i32 %282, 1, !dbg !1088
  br i1 %283, label %284, label %311, !dbg !1088

; <label>:284                                     ; preds = %272
  call void @llvm.dbg.declare(metadata !{i32* %t__3}, metadata !1091), !dbg !1093
  %285 = load %struct.lua_TValue** %3, align 4, !dbg !1094
  %286 = bitcast %struct.lua_TValue* %285 to i8*, !dbg !1094
  %287 = load %struct.lua_State** %2, align 4, !dbg !1094
  %288 = getelementptr inbounds %struct.lua_State* %287, i32 0, i32 10, !dbg !1094
  %289 = load %struct.lua_TValue** %288, align 4, !dbg !1094
  %290 = bitcast %struct.lua_TValue* %289 to i8*, !dbg !1094
  %291 = ptrtoint i8* %286 to i32, !dbg !1094
  %292 = ptrtoint i8* %290 to i32, !dbg !1094
  %293 = sub i32 %291, %292, !dbg !1094
  store i32 %293, i32* %t__3, align 4, !dbg !1094
  %294 = load %struct.lua_State** %2, align 4, !dbg !1096
  %295 = getelementptr inbounds %struct.lua_State* %294, i32 0, i32 6, !dbg !1096
  %296 = load %struct.global_State** %295, align 4, !dbg !1096
  %297 = getelementptr inbounds %struct.global_State* %296, i32 0, i32 3, !dbg !1096
  %298 = load i32* %297, align 4, !dbg !1096
  %299 = icmp sgt i32 %298, 0, !dbg !1096
  br i1 %299, label %300, label %302, !dbg !1096

; <label>:300                                     ; preds = %284
  %301 = load %struct.lua_State** %2, align 4, !dbg !1099
  call void @luaC_step(%struct.lua_State* %301), !dbg !1099
  br label %302, !dbg !1099

; <label>:302                                     ; preds = %300, %284
  %303 = load %struct.lua_State** %2, align 4, !dbg !1102
  call void @luaD_growstack(%struct.lua_State* %303, i32 1), !dbg !1102
  %304 = load %struct.lua_State** %2, align 4, !dbg !1102
  %305 = getelementptr inbounds %struct.lua_State* %304, i32 0, i32 10, !dbg !1102
  %306 = load %struct.lua_TValue** %305, align 4, !dbg !1102
  %307 = bitcast %struct.lua_TValue* %306 to i8*, !dbg !1102
  %308 = load i32* %t__3, align 4, !dbg !1102
  %309 = getelementptr inbounds i8* %307, i32 %308, !dbg !1102
  %310 = bitcast i8* %309 to %struct.lua_TValue*, !dbg !1102
  store %struct.lua_TValue* %310, %struct.lua_TValue** %3, align 4, !dbg !1102
  br label %312, !dbg !1102

; <label>:311                                     ; preds = %272
  br label %312

; <label>:312                                     ; preds = %311, %302
  %313 = load %struct.lua_State** %2, align 4, !dbg !1105
  %314 = load %struct.lua_TValue** %3, align 4, !dbg !1105
  call void @tryfuncTM(%struct.lua_State* %313, %struct.lua_TValue* %314), !dbg !1105
  %315 = load %struct.lua_State** %2, align 4, !dbg !1106
  %316 = load %struct.lua_TValue** %3, align 4, !dbg !1106
  %317 = load i32* %4, align 4, !dbg !1106
  %318 = call i32 @luaD_precall(%struct.lua_State* %315, %struct.lua_TValue* %316, i32 %317), !dbg !1106
  store i32 %318, i32* %1, !dbg !1106
  br label %319, !dbg !1106

; <label>:319                                     ; preds = %312, %271, %106
  %320 = load i32* %1, !dbg !1107
  ret i32 %320, !dbg !1107
}

declare hidden void @luaC_step(%struct.lua_State*) #6

declare hidden %struct.CallInfo* @luaE_extendCI(%struct.lua_State*) #6

; Function Attrs: nounwind
define hidden i32 @luaD_poscall(%struct.lua_State* %L, %struct.CallInfo* %ci, %struct.lua_TValue* %firstResult, i32 %nres) #3 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca %struct.CallInfo*, align 4
  %3 = alloca %struct.lua_TValue*, align 4
  %4 = alloca i32, align 4
  %res = alloca %struct.lua_TValue*, align 4
  %wanted = alloca i32, align 4
  %fr = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !1108), !dbg !1109
  store %struct.CallInfo* %ci, %struct.CallInfo** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.CallInfo** %2}, metadata !1110), !dbg !1111
  store %struct.lua_TValue* %firstResult, %struct.lua_TValue** %3, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %3}, metadata !1112), !dbg !1113
  store i32 %nres, i32* %4, align 4
  call void @llvm.dbg.declare(metadata !{i32* %4}, metadata !1114), !dbg !1115
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %res}, metadata !1116), !dbg !1117
  call void @llvm.dbg.declare(metadata !{i32* %wanted}, metadata !1118), !dbg !1119
  %5 = load %struct.CallInfo** %2, align 4, !dbg !1120
  %6 = getelementptr inbounds %struct.CallInfo* %5, i32 0, i32 6, !dbg !1120
  %7 = load i16* %6, align 2, !dbg !1120
  %8 = sext i16 %7 to i32, !dbg !1120
  store i32 %8, i32* %wanted, align 4, !dbg !1120
  %9 = load %struct.lua_State** %1, align 4, !dbg !1121
  %10 = getelementptr inbounds %struct.lua_State* %9, i32 0, i32 23, !dbg !1121
  %11 = load i32* %10, align 4, !dbg !1121
  %12 = and i32 %11, 6, !dbg !1121
  %13 = icmp ne i32 %12, 0, !dbg !1121
  br i1 %13, label %14, label %48, !dbg !1121

; <label>:14                                      ; preds = %0
  %15 = load %struct.lua_State** %1, align 4, !dbg !1123
  %16 = getelementptr inbounds %struct.lua_State* %15, i32 0, i32 23, !dbg !1123
  %17 = load i32* %16, align 4, !dbg !1123
  %18 = and i32 %17, 2, !dbg !1123
  %19 = icmp ne i32 %18, 0, !dbg !1123
  br i1 %19, label %20, label %38, !dbg !1123

; <label>:20                                      ; preds = %14
  call void @llvm.dbg.declare(metadata !{i32* %fr}, metadata !1126), !dbg !1128
  %21 = load %struct.lua_TValue** %3, align 4, !dbg !1129
  %22 = bitcast %struct.lua_TValue* %21 to i8*, !dbg !1129
  %23 = load %struct.lua_State** %1, align 4, !dbg !1129
  %24 = getelementptr inbounds %struct.lua_State* %23, i32 0, i32 10, !dbg !1129
  %25 = load %struct.lua_TValue** %24, align 4, !dbg !1129
  %26 = bitcast %struct.lua_TValue* %25 to i8*, !dbg !1129
  %27 = ptrtoint i8* %22 to i32, !dbg !1129
  %28 = ptrtoint i8* %26 to i32, !dbg !1129
  %29 = sub i32 %27, %28, !dbg !1129
  store i32 %29, i32* %fr, align 4, !dbg !1129
  %30 = load %struct.lua_State** %1, align 4, !dbg !1130
  call void @luaD_hook(%struct.lua_State* %30, i32 1, i32 -1), !dbg !1130
  %31 = load %struct.lua_State** %1, align 4, !dbg !1131
  %32 = getelementptr inbounds %struct.lua_State* %31, i32 0, i32 10, !dbg !1131
  %33 = load %struct.lua_TValue** %32, align 4, !dbg !1131
  %34 = bitcast %struct.lua_TValue* %33 to i8*, !dbg !1131
  %35 = load i32* %fr, align 4, !dbg !1131
  %36 = getelementptr inbounds i8* %34, i32 %35, !dbg !1131
  %37 = bitcast i8* %36 to %struct.lua_TValue*, !dbg !1131
  store %struct.lua_TValue* %37, %struct.lua_TValue** %3, align 4, !dbg !1131
  br label %38, !dbg !1132

; <label>:38                                      ; preds = %20, %14
  %39 = load %struct.CallInfo** %2, align 4, !dbg !1133
  %40 = getelementptr inbounds %struct.CallInfo* %39, i32 0, i32 2, !dbg !1133
  %41 = load %struct.CallInfo** %40, align 4, !dbg !1133
  %42 = getelementptr inbounds %struct.CallInfo* %41, i32 0, i32 4, !dbg !1133
  %43 = bitcast %union.anon.0* %42 to %struct.anon.1*, !dbg !1133
  %44 = getelementptr inbounds %struct.anon.1* %43, i32 0, i32 1, !dbg !1133
  %45 = load i32** %44, align 4, !dbg !1133
  %46 = load %struct.lua_State** %1, align 4, !dbg !1133
  %47 = getelementptr inbounds %struct.lua_State* %46, i32 0, i32 8, !dbg !1133
  store i32* %45, i32** %47, align 4, !dbg !1133
  br label %48, !dbg !1134

; <label>:48                                      ; preds = %38, %0
  %49 = load %struct.CallInfo** %2, align 4, !dbg !1135
  %50 = getelementptr inbounds %struct.CallInfo* %49, i32 0, i32 0, !dbg !1135
  %51 = load %struct.lua_TValue** %50, align 4, !dbg !1135
  store %struct.lua_TValue* %51, %struct.lua_TValue** %res, align 4, !dbg !1135
  %52 = load %struct.CallInfo** %2, align 4, !dbg !1136
  %53 = getelementptr inbounds %struct.CallInfo* %52, i32 0, i32 2, !dbg !1136
  %54 = load %struct.CallInfo** %53, align 4, !dbg !1136
  %55 = load %struct.lua_State** %1, align 4, !dbg !1136
  %56 = getelementptr inbounds %struct.lua_State* %55, i32 0, i32 7, !dbg !1136
  store %struct.CallInfo* %54, %struct.CallInfo** %56, align 4, !dbg !1136
  %57 = load %struct.lua_State** %1, align 4, !dbg !1137
  %58 = load %struct.lua_TValue** %3, align 4, !dbg !1137
  %59 = load %struct.lua_TValue** %res, align 4, !dbg !1137
  %60 = load i32* %4, align 4, !dbg !1137
  %61 = load i32* %wanted, align 4, !dbg !1137
  %62 = call i32 @moveresults(%struct.lua_State* %57, %struct.lua_TValue* %58, %struct.lua_TValue* %59, i32 %60, i32 %61), !dbg !1137
  ret i32 %62, !dbg !1137
}

; Function Attrs: nounwind
define internal %struct.lua_TValue* @adjust_varargs(%struct.lua_State* %L, %struct.Proto* %p, i32 %actual) #3 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca %struct.Proto*, align 4
  %3 = alloca i32, align 4
  %i = alloca i32, align 4
  %nfixargs = alloca i32, align 4
  %base = alloca %struct.lua_TValue*, align 4
  %fixed = alloca %struct.lua_TValue*, align 4
  %io1 = alloca %struct.lua_TValue*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !1138), !dbg !1139
  store %struct.Proto* %p, %struct.Proto** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.Proto** %2}, metadata !1140), !dbg !1141
  store i32 %actual, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !1142), !dbg !1143
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !1144), !dbg !1145
  call void @llvm.dbg.declare(metadata !{i32* %nfixargs}, metadata !1146), !dbg !1147
  %4 = load %struct.Proto** %2, align 4, !dbg !1148
  %5 = getelementptr inbounds %struct.Proto* %4, i32 0, i32 3, !dbg !1148
  %6 = load i8* %5, align 1, !dbg !1148
  %7 = zext i8 %6 to i32, !dbg !1148
  store i32 %7, i32* %nfixargs, align 4, !dbg !1148
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %base}, metadata !1149), !dbg !1150
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %fixed}, metadata !1151), !dbg !1152
  %8 = load %struct.lua_State** %1, align 4, !dbg !1153
  %9 = getelementptr inbounds %struct.lua_State* %8, i32 0, i32 5, !dbg !1153
  %10 = load %struct.lua_TValue** %9, align 4, !dbg !1153
  %11 = load i32* %3, align 4, !dbg !1153
  %12 = sub i32 0, %11, !dbg !1153
  %13 = getelementptr inbounds %struct.lua_TValue* %10, i32 %12, !dbg !1153
  store %struct.lua_TValue* %13, %struct.lua_TValue** %fixed, align 4, !dbg !1153
  %14 = load %struct.lua_State** %1, align 4, !dbg !1154
  %15 = getelementptr inbounds %struct.lua_State* %14, i32 0, i32 5, !dbg !1154
  %16 = load %struct.lua_TValue** %15, align 4, !dbg !1154
  store %struct.lua_TValue* %16, %struct.lua_TValue** %base, align 4, !dbg !1154
  store i32 0, i32* %i, align 4, !dbg !1155
  br label %17, !dbg !1155

; <label>:17                                      ; preds = %43, %0
  %18 = load i32* %i, align 4, !dbg !1157
  %19 = load i32* %nfixargs, align 4, !dbg !1157
  %20 = icmp slt i32 %18, %19, !dbg !1157
  br i1 %20, label %21, label %25, !dbg !1157

; <label>:21                                      ; preds = %17
  %22 = load i32* %i, align 4, !dbg !1160
  %23 = load i32* %3, align 4, !dbg !1160
  %24 = icmp slt i32 %22, %23, !dbg !1160
  br label %25

; <label>:25                                      ; preds = %21, %17
  %26 = phi i1 [ false, %17 ], [ %24, %21 ]
  br i1 %26, label %27, label %46, !dbg !1162

; <label>:27                                      ; preds = %25
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %io1}, metadata !1164), !dbg !1167
  %28 = load %struct.lua_State** %1, align 4, !dbg !1167
  %29 = getelementptr inbounds %struct.lua_State* %28, i32 0, i32 5, !dbg !1167
  %30 = load %struct.lua_TValue** %29, align 4, !dbg !1167
  %31 = getelementptr inbounds %struct.lua_TValue* %30, i32 1, !dbg !1167
  store %struct.lua_TValue* %31, %struct.lua_TValue** %29, align 4, !dbg !1167
  store %struct.lua_TValue* %30, %struct.lua_TValue** %io1, align 4, !dbg !1167
  %32 = load %struct.lua_TValue** %io1, align 4, !dbg !1167
  %33 = load %struct.lua_TValue** %fixed, align 4, !dbg !1167
  %34 = load i32* %i, align 4, !dbg !1167
  %35 = getelementptr inbounds %struct.lua_TValue* %33, i32 %34, !dbg !1167
  %36 = bitcast %struct.lua_TValue* %32 to i8*, !dbg !1167
  %37 = bitcast %struct.lua_TValue* %35 to i8*, !dbg !1167
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %36, i8* %37, i32 16, i32 8, i1 false), !dbg !1167
  %38 = load %struct.lua_State** %1, align 4, !dbg !1167
  %39 = load %struct.lua_TValue** %fixed, align 4, !dbg !1168
  %40 = load i32* %i, align 4, !dbg !1168
  %41 = getelementptr inbounds %struct.lua_TValue* %39, i32 %40, !dbg !1168
  %42 = getelementptr inbounds %struct.lua_TValue* %41, i32 0, i32 1, !dbg !1168
  store i32 0, i32* %42, align 4, !dbg !1168
  br label %43, !dbg !1169

; <label>:43                                      ; preds = %27
  %44 = load i32* %i, align 4, !dbg !1170
  %45 = add nsw i32 %44, 1, !dbg !1170
  store i32 %45, i32* %i, align 4, !dbg !1170
  br label %17, !dbg !1170

; <label>:46                                      ; preds = %25
  br label %47, !dbg !1171

; <label>:47                                      ; preds = %57, %46
  %48 = load i32* %i, align 4, !dbg !1173
  %49 = load i32* %nfixargs, align 4, !dbg !1173
  %50 = icmp slt i32 %48, %49, !dbg !1173
  br i1 %50, label %51, label %60, !dbg !1173

; <label>:51                                      ; preds = %47
  %52 = load %struct.lua_State** %1, align 4, !dbg !1176
  %53 = getelementptr inbounds %struct.lua_State* %52, i32 0, i32 5, !dbg !1176
  %54 = load %struct.lua_TValue** %53, align 4, !dbg !1176
  %55 = getelementptr inbounds %struct.lua_TValue* %54, i32 1, !dbg !1176
  store %struct.lua_TValue* %55, %struct.lua_TValue** %53, align 4, !dbg !1176
  %56 = getelementptr inbounds %struct.lua_TValue* %54, i32 0, i32 1, !dbg !1176
  store i32 0, i32* %56, align 4, !dbg !1176
  br label %57, !dbg !1176

; <label>:57                                      ; preds = %51
  %58 = load i32* %i, align 4, !dbg !1177
  %59 = add nsw i32 %58, 1, !dbg !1177
  store i32 %59, i32* %i, align 4, !dbg !1177
  br label %47, !dbg !1177

; <label>:60                                      ; preds = %47
  %61 = load %struct.lua_TValue** %base, align 4, !dbg !1178
  ret %struct.lua_TValue* %61, !dbg !1178
}

; Function Attrs: nounwind
define internal void @callhook(%struct.lua_State* %L, %struct.CallInfo* %ci) #3 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca %struct.CallInfo*, align 4
  %hook = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !1179), !dbg !1180
  store %struct.CallInfo* %ci, %struct.CallInfo** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.CallInfo** %2}, metadata !1181), !dbg !1182
  call void @llvm.dbg.declare(metadata !{i32* %hook}, metadata !1183), !dbg !1184
  store i32 0, i32* %hook, align 4, !dbg !1185
  %3 = load %struct.CallInfo** %2, align 4, !dbg !1186
  %4 = getelementptr inbounds %struct.CallInfo* %3, i32 0, i32 4, !dbg !1186
  %5 = bitcast %union.anon.0* %4 to %struct.anon.1*, !dbg !1186
  %6 = getelementptr inbounds %struct.anon.1* %5, i32 0, i32 1, !dbg !1186
  %7 = load i32** %6, align 4, !dbg !1186
  %8 = getelementptr inbounds i32* %7, i32 1, !dbg !1186
  store i32* %8, i32** %6, align 4, !dbg !1186
  %9 = load %struct.CallInfo** %2, align 4, !dbg !1187
  %10 = getelementptr inbounds %struct.CallInfo* %9, i32 0, i32 2, !dbg !1187
  %11 = load %struct.CallInfo** %10, align 4, !dbg !1187
  %12 = getelementptr inbounds %struct.CallInfo* %11, i32 0, i32 7, !dbg !1187
  %13 = load i8* %12, align 1, !dbg !1187
  %14 = zext i8 %13 to i32, !dbg !1187
  %15 = and i32 %14, 2, !dbg !1187
  %16 = icmp ne i32 %15, 0, !dbg !1187
  br i1 %16, label %17, label %37, !dbg !1187

; <label>:17                                      ; preds = %0
  %18 = load %struct.CallInfo** %2, align 4, !dbg !1189
  %19 = getelementptr inbounds %struct.CallInfo* %18, i32 0, i32 2, !dbg !1189
  %20 = load %struct.CallInfo** %19, align 4, !dbg !1189
  %21 = getelementptr inbounds %struct.CallInfo* %20, i32 0, i32 4, !dbg !1189
  %22 = bitcast %union.anon.0* %21 to %struct.anon.1*, !dbg !1189
  %23 = getelementptr inbounds %struct.anon.1* %22, i32 0, i32 1, !dbg !1189
  %24 = load i32** %23, align 4, !dbg !1189
  %25 = getelementptr inbounds i32* %24, i32 -1, !dbg !1189
  %26 = load i32* %25, align 4, !dbg !1189
  %27 = lshr i32 %26, 0, !dbg !1189
  %28 = and i32 %27, 63, !dbg !1189
  %29 = icmp eq i32 %28, 37, !dbg !1189
  br i1 %29, label %30, label %37, !dbg !1189

; <label>:30                                      ; preds = %17
  %31 = load %struct.CallInfo** %2, align 4, !dbg !1191
  %32 = getelementptr inbounds %struct.CallInfo* %31, i32 0, i32 7, !dbg !1191
  %33 = load i8* %32, align 1, !dbg !1191
  %34 = zext i8 %33 to i32, !dbg !1191
  %35 = or i32 %34, 32, !dbg !1191
  %36 = trunc i32 %35 to i8, !dbg !1191
  store i8 %36, i8* %32, align 1, !dbg !1191
  store i32 4, i32* %hook, align 4, !dbg !1193
  br label %37, !dbg !1194

; <label>:37                                      ; preds = %30, %17, %0
  %38 = load %struct.lua_State** %1, align 4, !dbg !1195
  %39 = load i32* %hook, align 4, !dbg !1195
  call void @luaD_hook(%struct.lua_State* %38, i32 %39, i32 -1), !dbg !1195
  %40 = load %struct.CallInfo** %2, align 4, !dbg !1196
  %41 = getelementptr inbounds %struct.CallInfo* %40, i32 0, i32 4, !dbg !1196
  %42 = bitcast %union.anon.0* %41 to %struct.anon.1*, !dbg !1196
  %43 = getelementptr inbounds %struct.anon.1* %42, i32 0, i32 1, !dbg !1196
  %44 = load i32** %43, align 4, !dbg !1196
  %45 = getelementptr inbounds i32* %44, i32 -1, !dbg !1196
  store i32* %45, i32** %43, align 4, !dbg !1196
  ret void, !dbg !1197
}

; Function Attrs: nounwind
define internal void @tryfuncTM(%struct.lua_State* %L, %struct.lua_TValue* %func) #3 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca %struct.lua_TValue*, align 4
  %tm = alloca %struct.lua_TValue*, align 4
  %p = alloca %struct.lua_TValue*, align 4
  %io1 = alloca %struct.lua_TValue*, align 4
  %io11 = alloca %struct.lua_TValue*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !1198), !dbg !1199
  store %struct.lua_TValue* %func, %struct.lua_TValue** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %2}, metadata !1200), !dbg !1201
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %tm}, metadata !1202), !dbg !1203
  %3 = load %struct.lua_State** %1, align 4, !dbg !1204
  %4 = load %struct.lua_TValue** %2, align 4, !dbg !1204
  %5 = call %struct.lua_TValue* @luaT_gettmbyobj(%struct.lua_State* %3, %struct.lua_TValue* %4, i32 23), !dbg !1204
  store %struct.lua_TValue* %5, %struct.lua_TValue** %tm, align 4, !dbg !1204
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %p}, metadata !1205), !dbg !1206
  %6 = load %struct.lua_TValue** %tm, align 4, !dbg !1207
  %7 = getelementptr inbounds %struct.lua_TValue* %6, i32 0, i32 1, !dbg !1207
  %8 = load i32* %7, align 4, !dbg !1207
  %9 = and i32 %8, 15, !dbg !1207
  %10 = icmp eq i32 %9, 6, !dbg !1207
  br i1 %10, label %14, label %11, !dbg !1207

; <label>:11                                      ; preds = %0
  %12 = load %struct.lua_State** %1, align 4, !dbg !1209
  %13 = load %struct.lua_TValue** %2, align 4, !dbg !1209
  call void @luaG_typeerror(%struct.lua_State* %12, %struct.lua_TValue* %13, i8* getelementptr inbounds ([5 x i8]* @.str10, i32 0, i32 0)) #9, !dbg !1209
  unreachable, !dbg !1209

; <label>:14                                      ; preds = %0
  %15 = load %struct.lua_State** %1, align 4, !dbg !1210
  %16 = getelementptr inbounds %struct.lua_State* %15, i32 0, i32 5, !dbg !1210
  %17 = load %struct.lua_TValue** %16, align 4, !dbg !1210
  store %struct.lua_TValue* %17, %struct.lua_TValue** %p, align 4, !dbg !1210
  br label %18, !dbg !1210

; <label>:18                                      ; preds = %30, %14
  %19 = load %struct.lua_TValue** %p, align 4, !dbg !1212
  %20 = load %struct.lua_TValue** %2, align 4, !dbg !1212
  %21 = icmp ugt %struct.lua_TValue* %19, %20, !dbg !1212
  br i1 %21, label %22, label %33, !dbg !1212

; <label>:22                                      ; preds = %18
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %io1}, metadata !1215), !dbg !1217
  %23 = load %struct.lua_TValue** %p, align 4, !dbg !1217
  store %struct.lua_TValue* %23, %struct.lua_TValue** %io1, align 4, !dbg !1217
  %24 = load %struct.lua_TValue** %io1, align 4, !dbg !1217
  %25 = load %struct.lua_TValue** %p, align 4, !dbg !1217
  %26 = getelementptr inbounds %struct.lua_TValue* %25, i32 -1, !dbg !1217
  %27 = bitcast %struct.lua_TValue* %24 to i8*, !dbg !1217
  %28 = bitcast %struct.lua_TValue* %26 to i8*, !dbg !1217
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %27, i8* %28, i32 16, i32 8, i1 false), !dbg !1217
  %29 = load %struct.lua_State** %1, align 4, !dbg !1217
  br label %30, !dbg !1217

; <label>:30                                      ; preds = %22
  %31 = load %struct.lua_TValue** %p, align 4, !dbg !1218
  %32 = getelementptr inbounds %struct.lua_TValue* %31, i32 -1, !dbg !1218
  store %struct.lua_TValue* %32, %struct.lua_TValue** %p, align 4, !dbg !1218
  br label %18, !dbg !1218

; <label>:33                                      ; preds = %18
  %34 = load %struct.lua_State** %1, align 4, !dbg !1219
  %35 = getelementptr inbounds %struct.lua_State* %34, i32 0, i32 5, !dbg !1219
  %36 = load %struct.lua_TValue** %35, align 4, !dbg !1219
  %37 = getelementptr inbounds %struct.lua_TValue* %36, i32 1, !dbg !1219
  store %struct.lua_TValue* %37, %struct.lua_TValue** %35, align 4, !dbg !1219
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %io11}, metadata !1220), !dbg !1222
  %38 = load %struct.lua_TValue** %2, align 4, !dbg !1222
  store %struct.lua_TValue* %38, %struct.lua_TValue** %io11, align 4, !dbg !1222
  %39 = load %struct.lua_TValue** %io11, align 4, !dbg !1222
  %40 = load %struct.lua_TValue** %tm, align 4, !dbg !1222
  %41 = bitcast %struct.lua_TValue* %39 to i8*, !dbg !1222
  %42 = bitcast %struct.lua_TValue* %40 to i8*, !dbg !1222
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %41, i8* %42, i32 16, i32 8, i1 false), !dbg !1222
  %43 = load %struct.lua_State** %1, align 4, !dbg !1222
  ret void, !dbg !1223
}

; Function Attrs: nounwind
define internal i32 @moveresults(%struct.lua_State* %L, %struct.lua_TValue* %firstResult, %struct.lua_TValue* %res, i32 %nres, i32 %wanted) #3 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.lua_State*, align 4
  %3 = alloca %struct.lua_TValue*, align 4
  %4 = alloca %struct.lua_TValue*, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %io1 = alloca %struct.lua_TValue*, align 4
  %i = alloca i32, align 4
  %io11 = alloca %struct.lua_TValue*, align 4
  %i2 = alloca i32, align 4
  %io13 = alloca %struct.lua_TValue*, align 4
  %io14 = alloca %struct.lua_TValue*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %2}, metadata !1224), !dbg !1225
  store %struct.lua_TValue* %firstResult, %struct.lua_TValue** %3, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %3}, metadata !1226), !dbg !1227
  store %struct.lua_TValue* %res, %struct.lua_TValue** %4, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %4}, metadata !1228), !dbg !1229
  store i32 %nres, i32* %5, align 4
  call void @llvm.dbg.declare(metadata !{i32* %5}, metadata !1230), !dbg !1231
  store i32 %wanted, i32* %6, align 4
  call void @llvm.dbg.declare(metadata !{i32* %6}, metadata !1232), !dbg !1233
  %7 = load i32* %6, align 4, !dbg !1234
  switch i32 %7, label %45 [
    i32 0, label %8
    i32 1, label %9
    i32 -1, label %20
  ], !dbg !1234

; <label>:8                                       ; preds = %0
  br label %103, !dbg !1235

; <label>:9                                       ; preds = %0
  %10 = load i32* %5, align 4, !dbg !1237
  %11 = icmp eq i32 %10, 0, !dbg !1237
  br i1 %11, label %12, label %13, !dbg !1237

; <label>:12                                      ; preds = %9
  store %struct.lua_TValue* @luaO_nilobject_, %struct.lua_TValue** %3, align 4, !dbg !1240
  br label %13, !dbg !1240

; <label>:13                                      ; preds = %12, %9
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %io1}, metadata !1241), !dbg !1243
  %14 = load %struct.lua_TValue** %4, align 4, !dbg !1243
  store %struct.lua_TValue* %14, %struct.lua_TValue** %io1, align 4, !dbg !1243
  %15 = load %struct.lua_TValue** %io1, align 4, !dbg !1243
  %16 = load %struct.lua_TValue** %3, align 4, !dbg !1243
  %17 = bitcast %struct.lua_TValue* %15 to i8*, !dbg !1243
  %18 = bitcast %struct.lua_TValue* %16 to i8*, !dbg !1243
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %17, i8* %18, i32 16, i32 8, i1 false), !dbg !1243
  %19 = load %struct.lua_State** %2, align 4, !dbg !1243
  br label %103, !dbg !1244

; <label>:20                                      ; preds = %0
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !1245), !dbg !1247
  store i32 0, i32* %i, align 4, !dbg !1248
  br label %21, !dbg !1248

; <label>:21                                      ; preds = %36, %20
  %22 = load i32* %i, align 4, !dbg !1250
  %23 = load i32* %5, align 4, !dbg !1250
  %24 = icmp slt i32 %22, %23, !dbg !1250
  br i1 %24, label %25, label %39, !dbg !1250

; <label>:25                                      ; preds = %21
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %io11}, metadata !1253), !dbg !1255
  %26 = load %struct.lua_TValue** %4, align 4, !dbg !1255
  %27 = load i32* %i, align 4, !dbg !1255
  %28 = getelementptr inbounds %struct.lua_TValue* %26, i32 %27, !dbg !1255
  store %struct.lua_TValue* %28, %struct.lua_TValue** %io11, align 4, !dbg !1255
  %29 = load %struct.lua_TValue** %io11, align 4, !dbg !1255
  %30 = load %struct.lua_TValue** %3, align 4, !dbg !1255
  %31 = load i32* %i, align 4, !dbg !1255
  %32 = getelementptr inbounds %struct.lua_TValue* %30, i32 %31, !dbg !1255
  %33 = bitcast %struct.lua_TValue* %29 to i8*, !dbg !1255
  %34 = bitcast %struct.lua_TValue* %32 to i8*, !dbg !1255
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %33, i8* %34, i32 16, i32 8, i1 false), !dbg !1255
  %35 = load %struct.lua_State** %2, align 4, !dbg !1255
  br label %36, !dbg !1255

; <label>:36                                      ; preds = %25
  %37 = load i32* %i, align 4, !dbg !1256
  %38 = add nsw i32 %37, 1, !dbg !1256
  store i32 %38, i32* %i, align 4, !dbg !1256
  br label %21, !dbg !1256

; <label>:39                                      ; preds = %21
  %40 = load %struct.lua_TValue** %4, align 4, !dbg !1257
  %41 = load i32* %5, align 4, !dbg !1257
  %42 = getelementptr inbounds %struct.lua_TValue* %40, i32 %41, !dbg !1257
  %43 = load %struct.lua_State** %2, align 4, !dbg !1257
  %44 = getelementptr inbounds %struct.lua_State* %43, i32 0, i32 5, !dbg !1257
  store %struct.lua_TValue* %42, %struct.lua_TValue** %44, align 4, !dbg !1257
  store i32 0, i32* %1, !dbg !1258
  br label %109, !dbg !1258

; <label>:45                                      ; preds = %0
  call void @llvm.dbg.declare(metadata !{i32* %i2}, metadata !1259), !dbg !1261
  %46 = load i32* %6, align 4, !dbg !1262
  %47 = load i32* %5, align 4, !dbg !1262
  %48 = icmp sle i32 %46, %47, !dbg !1262
  br i1 %48, label %49, label %69, !dbg !1262

; <label>:49                                      ; preds = %45
  store i32 0, i32* %i2, align 4, !dbg !1264
  br label %50, !dbg !1264

; <label>:50                                      ; preds = %65, %49
  %51 = load i32* %i2, align 4, !dbg !1267
  %52 = load i32* %6, align 4, !dbg !1267
  %53 = icmp slt i32 %51, %52, !dbg !1267
  br i1 %53, label %54, label %68, !dbg !1267

; <label>:54                                      ; preds = %50
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %io13}, metadata !1270), !dbg !1272
  %55 = load %struct.lua_TValue** %4, align 4, !dbg !1272
  %56 = load i32* %i2, align 4, !dbg !1272
  %57 = getelementptr inbounds %struct.lua_TValue* %55, i32 %56, !dbg !1272
  store %struct.lua_TValue* %57, %struct.lua_TValue** %io13, align 4, !dbg !1272
  %58 = load %struct.lua_TValue** %io13, align 4, !dbg !1272
  %59 = load %struct.lua_TValue** %3, align 4, !dbg !1272
  %60 = load i32* %i2, align 4, !dbg !1272
  %61 = getelementptr inbounds %struct.lua_TValue* %59, i32 %60, !dbg !1272
  %62 = bitcast %struct.lua_TValue* %58 to i8*, !dbg !1272
  %63 = bitcast %struct.lua_TValue* %61 to i8*, !dbg !1272
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %62, i8* %63, i32 16, i32 8, i1 false), !dbg !1272
  %64 = load %struct.lua_State** %2, align 4, !dbg !1272
  br label %65, !dbg !1272

; <label>:65                                      ; preds = %54
  %66 = load i32* %i2, align 4, !dbg !1273
  %67 = add nsw i32 %66, 1, !dbg !1273
  store i32 %67, i32* %i2, align 4, !dbg !1273
  br label %50, !dbg !1273

; <label>:68                                      ; preds = %50
  br label %102, !dbg !1274

; <label>:69                                      ; preds = %45
  store i32 0, i32* %i2, align 4, !dbg !1275
  br label %70, !dbg !1275

; <label>:70                                      ; preds = %85, %69
  %71 = load i32* %i2, align 4, !dbg !1278
  %72 = load i32* %5, align 4, !dbg !1278
  %73 = icmp slt i32 %71, %72, !dbg !1278
  br i1 %73, label %74, label %88, !dbg !1278

; <label>:74                                      ; preds = %70
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %io14}, metadata !1281), !dbg !1283
  %75 = load %struct.lua_TValue** %4, align 4, !dbg !1283
  %76 = load i32* %i2, align 4, !dbg !1283
  %77 = getelementptr inbounds %struct.lua_TValue* %75, i32 %76, !dbg !1283
  store %struct.lua_TValue* %77, %struct.lua_TValue** %io14, align 4, !dbg !1283
  %78 = load %struct.lua_TValue** %io14, align 4, !dbg !1283
  %79 = load %struct.lua_TValue** %3, align 4, !dbg !1283
  %80 = load i32* %i2, align 4, !dbg !1283
  %81 = getelementptr inbounds %struct.lua_TValue* %79, i32 %80, !dbg !1283
  %82 = bitcast %struct.lua_TValue* %78 to i8*, !dbg !1283
  %83 = bitcast %struct.lua_TValue* %81 to i8*, !dbg !1283
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %82, i8* %83, i32 16, i32 8, i1 false), !dbg !1283
  %84 = load %struct.lua_State** %2, align 4, !dbg !1283
  br label %85, !dbg !1283

; <label>:85                                      ; preds = %74
  %86 = load i32* %i2, align 4, !dbg !1284
  %87 = add nsw i32 %86, 1, !dbg !1284
  store i32 %87, i32* %i2, align 4, !dbg !1284
  br label %70, !dbg !1284

; <label>:88                                      ; preds = %70
  br label %89, !dbg !1285

; <label>:89                                      ; preds = %98, %88
  %90 = load i32* %i2, align 4, !dbg !1287
  %91 = load i32* %6, align 4, !dbg !1287
  %92 = icmp slt i32 %90, %91, !dbg !1287
  br i1 %92, label %93, label %101, !dbg !1287

; <label>:93                                      ; preds = %89
  %94 = load %struct.lua_TValue** %4, align 4, !dbg !1290
  %95 = load i32* %i2, align 4, !dbg !1290
  %96 = getelementptr inbounds %struct.lua_TValue* %94, i32 %95, !dbg !1290
  %97 = getelementptr inbounds %struct.lua_TValue* %96, i32 0, i32 1, !dbg !1290
  store i32 0, i32* %97, align 4, !dbg !1290
  br label %98, !dbg !1290

; <label>:98                                      ; preds = %93
  %99 = load i32* %i2, align 4, !dbg !1291
  %100 = add nsw i32 %99, 1, !dbg !1291
  store i32 %100, i32* %i2, align 4, !dbg !1291
  br label %89, !dbg !1291

; <label>:101                                     ; preds = %89
  br label %102

; <label>:102                                     ; preds = %101, %68
  br label %103, !dbg !1292

; <label>:103                                     ; preds = %102, %13, %8
  %104 = load %struct.lua_TValue** %4, align 4, !dbg !1293
  %105 = load i32* %6, align 4, !dbg !1293
  %106 = getelementptr inbounds %struct.lua_TValue* %104, i32 %105, !dbg !1293
  %107 = load %struct.lua_State** %2, align 4, !dbg !1293
  %108 = getelementptr inbounds %struct.lua_State* %107, i32 0, i32 5, !dbg !1293
  store %struct.lua_TValue* %106, %struct.lua_TValue** %108, align 4, !dbg !1293
  store i32 1, i32* %1, !dbg !1294
  br label %109, !dbg !1294

; <label>:109                                     ; preds = %103, %39
  %110 = load i32* %1, !dbg !1295
  ret i32 %110, !dbg !1295
}

; Function Attrs: nounwind
define hidden void @luaD_call(%struct.lua_State* %L, %struct.lua_TValue* %func, i32 %nResults) #3 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca %struct.lua_TValue*, align 4
  %3 = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !1296), !dbg !1297
  store %struct.lua_TValue* %func, %struct.lua_TValue** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %2}, metadata !1298), !dbg !1299
  store i32 %nResults, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !1300), !dbg !1301
  %4 = load %struct.lua_State** %1, align 4, !dbg !1302
  %5 = getelementptr inbounds %struct.lua_State* %4, i32 0, i32 22, !dbg !1302
  %6 = load i16* %5, align 2, !dbg !1302
  %7 = add i16 %6, 1, !dbg !1302
  store i16 %7, i16* %5, align 2, !dbg !1302
  %8 = zext i16 %7 to i32, !dbg !1302
  %9 = icmp sge i32 %8, 200, !dbg !1302
  br i1 %9, label %10, label %12, !dbg !1302

; <label>:10                                      ; preds = %0
  %11 = load %struct.lua_State** %1, align 4, !dbg !1304
  call void @stackerror(%struct.lua_State* %11), !dbg !1304
  br label %12, !dbg !1304

; <label>:12                                      ; preds = %10, %0
  %13 = load %struct.lua_State** %1, align 4, !dbg !1305
  %14 = load %struct.lua_TValue** %2, align 4, !dbg !1305
  %15 = load i32* %3, align 4, !dbg !1305
  %16 = call i32 @luaD_precall(%struct.lua_State* %13, %struct.lua_TValue* %14, i32 %15), !dbg !1305
  %17 = icmp ne i32 %16, 0, !dbg !1305
  br i1 %17, label %20, label %18, !dbg !1305

; <label>:18                                      ; preds = %12
  %19 = load %struct.lua_State** %1, align 4, !dbg !1307
  call void @luaV_execute(%struct.lua_State* %19), !dbg !1307
  br label %20, !dbg !1307

; <label>:20                                      ; preds = %18, %12
  %21 = load %struct.lua_State** %1, align 4, !dbg !1308
  %22 = getelementptr inbounds %struct.lua_State* %21, i32 0, i32 22, !dbg !1308
  %23 = load i16* %22, align 2, !dbg !1308
  %24 = add i16 %23, -1, !dbg !1308
  store i16 %24, i16* %22, align 2, !dbg !1308
  ret void, !dbg !1309
}

; Function Attrs: nounwind
define internal void @stackerror(%struct.lua_State* %L) #3 {
  %1 = alloca %struct.lua_State*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !1310), !dbg !1311
  %2 = load %struct.lua_State** %1, align 4, !dbg !1312
  %3 = getelementptr inbounds %struct.lua_State* %2, i32 0, i32 22, !dbg !1312
  %4 = load i16* %3, align 2, !dbg !1312
  %5 = zext i16 %4 to i32, !dbg !1312
  %6 = icmp eq i32 %5, 200, !dbg !1312
  br i1 %6, label %7, label %9, !dbg !1312

; <label>:7                                       ; preds = %0
  %8 = load %struct.lua_State** %1, align 4, !dbg !1314
  call void (%struct.lua_State*, i8*, ...)* @luaG_runerror(%struct.lua_State* %8, i8* getelementptr inbounds ([17 x i8]* @.str7, i32 0, i32 0)) #9, !dbg !1314
  unreachable, !dbg !1314

; <label>:9                                       ; preds = %0
  %10 = load %struct.lua_State** %1, align 4, !dbg !1315
  %11 = getelementptr inbounds %struct.lua_State* %10, i32 0, i32 22, !dbg !1315
  %12 = load i16* %11, align 2, !dbg !1315
  %13 = zext i16 %12 to i32, !dbg !1315
  %14 = icmp sge i32 %13, 225, !dbg !1315
  br i1 %14, label %15, label %17, !dbg !1315

; <label>:15                                      ; preds = %9
  %16 = load %struct.lua_State** %1, align 4, !dbg !1317
  call void @luaD_throw(%struct.lua_State* %16, i32 6) #9, !dbg !1317
  unreachable, !dbg !1317

; <label>:17                                      ; preds = %9
  br label %18

; <label>:18                                      ; preds = %17
  ret void, !dbg !1318
}

declare hidden void @luaV_execute(%struct.lua_State*) #6

; Function Attrs: nounwind
define hidden void @luaD_callnoyield(%struct.lua_State* %L, %struct.lua_TValue* %func, i32 %nResults) #3 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca %struct.lua_TValue*, align 4
  %3 = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !1319), !dbg !1320
  store %struct.lua_TValue* %func, %struct.lua_TValue** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %2}, metadata !1321), !dbg !1322
  store i32 %nResults, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !1323), !dbg !1324
  %4 = load %struct.lua_State** %1, align 4, !dbg !1325
  %5 = getelementptr inbounds %struct.lua_State* %4, i32 0, i32 21, !dbg !1325
  %6 = load i16* %5, align 2, !dbg !1325
  %7 = add i16 %6, 1, !dbg !1325
  store i16 %7, i16* %5, align 2, !dbg !1325
  %8 = load %struct.lua_State** %1, align 4, !dbg !1326
  %9 = load %struct.lua_TValue** %2, align 4, !dbg !1326
  %10 = load i32* %3, align 4, !dbg !1326
  call void @luaD_call(%struct.lua_State* %8, %struct.lua_TValue* %9, i32 %10), !dbg !1326
  %11 = load %struct.lua_State** %1, align 4, !dbg !1327
  %12 = getelementptr inbounds %struct.lua_State* %11, i32 0, i32 21, !dbg !1327
  %13 = load i16* %12, align 2, !dbg !1327
  %14 = add i16 %13, -1, !dbg !1327
  store i16 %14, i16* %12, align 2, !dbg !1327
  ret void, !dbg !1328
}

; Function Attrs: nounwind
define i32 @lua_resume(%struct.lua_State* %L, %struct.lua_State* %from, i32 %nargs) #3 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca %struct.lua_State*, align 4
  %3 = alloca i32, align 4
  %status = alloca i32, align 4
  %oldnny = alloca i16, align 2
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !1329), !dbg !1330
  store %struct.lua_State* %from, %struct.lua_State** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %2}, metadata !1331), !dbg !1332
  store i32 %nargs, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !1333), !dbg !1334
  call void @llvm.dbg.declare(metadata !{i32* %status}, metadata !1335), !dbg !1336
  call void @llvm.dbg.declare(metadata !{i16* %oldnny}, metadata !1337), !dbg !1338
  %4 = load %struct.lua_State** %1, align 4, !dbg !1339
  %5 = getelementptr inbounds %struct.lua_State* %4, i32 0, i32 21, !dbg !1339
  %6 = load i16* %5, align 2, !dbg !1339
  store i16 %6, i16* %oldnny, align 2, !dbg !1339
  %7 = load %struct.lua_State** %1, align 4, !dbg !1340
  %8 = load %struct.lua_State** %2, align 4, !dbg !1341
  %9 = icmp ne %struct.lua_State* %8, null, !dbg !1341
  br i1 %9, label %10, label %16, !dbg !1341

; <label>:10                                      ; preds = %0
  %11 = load %struct.lua_State** %2, align 4, !dbg !1342
  %12 = getelementptr inbounds %struct.lua_State* %11, i32 0, i32 22, !dbg !1342
  %13 = load i16* %12, align 2, !dbg !1342
  %14 = zext i16 %13 to i32, !dbg !1342
  %15 = add nsw i32 %14, 1, !dbg !1342
  br label %17, !dbg !1342

; <label>:16                                      ; preds = %0
  br label %17, !dbg !1344

; <label>:17                                      ; preds = %16, %10
  %18 = phi i32 [ %15, %10 ], [ 1, %16 ], !dbg !1341
  %19 = trunc i32 %18 to i16, !dbg !1346
  %20 = load %struct.lua_State** %1, align 4, !dbg !1346
  %21 = getelementptr inbounds %struct.lua_State* %20, i32 0, i32 22, !dbg !1346
  store i16 %19, i16* %21, align 2, !dbg !1346
  %22 = load %struct.lua_State** %1, align 4, !dbg !1349
  %23 = getelementptr inbounds %struct.lua_State* %22, i32 0, i32 21, !dbg !1349
  store i16 0, i16* %23, align 2, !dbg !1349
  %24 = load %struct.lua_State** %1, align 4, !dbg !1350
  %25 = bitcast i32* %3 to i8*, !dbg !1350
  %26 = call i32 @luaD_rawrunprotected(%struct.lua_State* %24, void (%struct.lua_State*, i8*)* @resume, i8* %25), !dbg !1350
  store i32 %26, i32* %status, align 4, !dbg !1350
  %27 = load i32* %status, align 4, !dbg !1351
  %28 = icmp eq i32 %27, -1, !dbg !1351
  br i1 %28, label %29, label %30, !dbg !1351

; <label>:29                                      ; preds = %17
  store i32 2, i32* %status, align 4, !dbg !1353
  br label %67, !dbg !1353

; <label>:30                                      ; preds = %17
  br label %31, !dbg !1354

; <label>:31                                      ; preds = %41, %30
  %32 = load i32* %status, align 4, !dbg !1356
  %33 = icmp sgt i32 %32, 1, !dbg !1356
  br i1 %33, label %34, label %39, !dbg !1356

; <label>:34                                      ; preds = %31
  %35 = load %struct.lua_State** %1, align 4, !dbg !1358
  %36 = load i32* %status, align 4, !dbg !1358
  %37 = call i32 @recover(%struct.lua_State* %35, i32 %36), !dbg !1358
  %38 = icmp ne i32 %37, 0, !dbg !1358
  br label %39

; <label>:39                                      ; preds = %34, %31
  %40 = phi i1 [ false, %31 ], [ %38, %34 ]
  br i1 %40, label %41, label %45, !dbg !1360

; <label>:41                                      ; preds = %39
  %42 = load %struct.lua_State** %1, align 4, !dbg !1362
  %43 = bitcast i32* %status to i8*, !dbg !1362
  %44 = call i32 @luaD_rawrunprotected(%struct.lua_State* %42, void (%struct.lua_State*, i8*)* @unroll, i8* %43), !dbg !1362
  store i32 %44, i32* %status, align 4, !dbg !1362
  br label %31, !dbg !1364

; <label>:45                                      ; preds = %39
  %46 = load i32* %status, align 4, !dbg !1365
  %47 = icmp sgt i32 %46, 1, !dbg !1365
  br i1 %47, label %48, label %65, !dbg !1365

; <label>:48                                      ; preds = %45
  %49 = load i32* %status, align 4, !dbg !1367
  %50 = trunc i32 %49 to i8, !dbg !1367
  %51 = load %struct.lua_State** %1, align 4, !dbg !1367
  %52 = getelementptr inbounds %struct.lua_State* %51, i32 0, i32 4, !dbg !1367
  store i8 %50, i8* %52, align 1, !dbg !1367
  %53 = load %struct.lua_State** %1, align 4, !dbg !1369
  %54 = load i32* %status, align 4, !dbg !1369
  %55 = load %struct.lua_State** %1, align 4, !dbg !1369
  %56 = getelementptr inbounds %struct.lua_State* %55, i32 0, i32 5, !dbg !1369
  %57 = load %struct.lua_TValue** %56, align 4, !dbg !1369
  call void @seterrorobj(%struct.lua_State* %53, i32 %54, %struct.lua_TValue* %57), !dbg !1369
  %58 = load %struct.lua_State** %1, align 4, !dbg !1370
  %59 = getelementptr inbounds %struct.lua_State* %58, i32 0, i32 5, !dbg !1370
  %60 = load %struct.lua_TValue** %59, align 4, !dbg !1370
  %61 = load %struct.lua_State** %1, align 4, !dbg !1370
  %62 = getelementptr inbounds %struct.lua_State* %61, i32 0, i32 7, !dbg !1370
  %63 = load %struct.CallInfo** %62, align 4, !dbg !1370
  %64 = getelementptr inbounds %struct.CallInfo* %63, i32 0, i32 1, !dbg !1370
  store %struct.lua_TValue* %60, %struct.lua_TValue** %64, align 4, !dbg !1370
  br label %66, !dbg !1371

; <label>:65                                      ; preds = %45
  br label %66

; <label>:66                                      ; preds = %65, %48
  br label %67

; <label>:67                                      ; preds = %66, %29
  %68 = load i16* %oldnny, align 2, !dbg !1372
  %69 = load %struct.lua_State** %1, align 4, !dbg !1372
  %70 = getelementptr inbounds %struct.lua_State* %69, i32 0, i32 21, !dbg !1372
  store i16 %68, i16* %70, align 2, !dbg !1372
  %71 = load %struct.lua_State** %1, align 4, !dbg !1373
  %72 = getelementptr inbounds %struct.lua_State* %71, i32 0, i32 22, !dbg !1373
  %73 = load i16* %72, align 2, !dbg !1373
  %74 = add i16 %73, -1, !dbg !1373
  store i16 %74, i16* %72, align 2, !dbg !1373
  %75 = load i32* %status, align 4, !dbg !1374
  ret i32 %75, !dbg !1374
}

; Function Attrs: nounwind
define internal void @resume(%struct.lua_State* %L, i8* %ud) #3 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca i8*, align 4
  %nCcalls = alloca i32, align 4
  %n = alloca i32, align 4
  %firstArg = alloca %struct.lua_TValue*, align 4
  %ci = alloca %struct.CallInfo*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !1375), !dbg !1376
  store i8* %ud, i8** %2, align 4
  call void @llvm.dbg.declare(metadata !{i8** %2}, metadata !1377), !dbg !1378
  call void @llvm.dbg.declare(metadata !{i32* %nCcalls}, metadata !1379), !dbg !1380
  %3 = load %struct.lua_State** %1, align 4, !dbg !1381
  %4 = getelementptr inbounds %struct.lua_State* %3, i32 0, i32 22, !dbg !1381
  %5 = load i16* %4, align 2, !dbg !1381
  %6 = zext i16 %5 to i32, !dbg !1381
  store i32 %6, i32* %nCcalls, align 4, !dbg !1381
  call void @llvm.dbg.declare(metadata !{i32* %n}, metadata !1382), !dbg !1383
  %7 = load i8** %2, align 4, !dbg !1384
  %8 = bitcast i8* %7 to i32*, !dbg !1384
  %9 = load i32* %8, align 4, !dbg !1384
  store i32 %9, i32* %n, align 4, !dbg !1384
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %firstArg}, metadata !1385), !dbg !1386
  %10 = load %struct.lua_State** %1, align 4, !dbg !1387
  %11 = getelementptr inbounds %struct.lua_State* %10, i32 0, i32 5, !dbg !1387
  %12 = load %struct.lua_TValue** %11, align 4, !dbg !1387
  %13 = load i32* %n, align 4, !dbg !1387
  %14 = sub i32 0, %13, !dbg !1387
  %15 = getelementptr inbounds %struct.lua_TValue* %12, i32 %14, !dbg !1387
  store %struct.lua_TValue* %15, %struct.lua_TValue** %firstArg, align 4, !dbg !1387
  call void @llvm.dbg.declare(metadata !{%struct.CallInfo** %ci}, metadata !1388), !dbg !1389
  %16 = load %struct.lua_State** %1, align 4, !dbg !1390
  %17 = getelementptr inbounds %struct.lua_State* %16, i32 0, i32 7, !dbg !1390
  %18 = load %struct.CallInfo** %17, align 4, !dbg !1390
  store %struct.CallInfo* %18, %struct.CallInfo** %ci, align 4, !dbg !1390
  %19 = load i32* %nCcalls, align 4, !dbg !1391
  %20 = icmp sge i32 %19, 200, !dbg !1391
  br i1 %20, label %21, label %24, !dbg !1391

; <label>:21                                      ; preds = %0
  %22 = load %struct.lua_State** %1, align 4, !dbg !1393
  %23 = load %struct.lua_TValue** %firstArg, align 4, !dbg !1393
  call void @resume_error(%struct.lua_State* %22, i8* getelementptr inbounds ([17 x i8]* @.str7, i32 0, i32 0), %struct.lua_TValue* %23) #9, !dbg !1393
  unreachable, !dbg !1393

; <label>:24                                      ; preds = %0
  %25 = load %struct.lua_State** %1, align 4, !dbg !1394
  %26 = getelementptr inbounds %struct.lua_State* %25, i32 0, i32 4, !dbg !1394
  %27 = load i8* %26, align 1, !dbg !1394
  %28 = zext i8 %27 to i32, !dbg !1394
  %29 = icmp eq i32 %28, 0, !dbg !1394
  br i1 %29, label %30, label %47, !dbg !1394

; <label>:30                                      ; preds = %24
  %31 = load %struct.CallInfo** %ci, align 4, !dbg !1396
  %32 = load %struct.lua_State** %1, align 4, !dbg !1396
  %33 = getelementptr inbounds %struct.lua_State* %32, i32 0, i32 15, !dbg !1396
  %34 = icmp ne %struct.CallInfo* %31, %33, !dbg !1396
  br i1 %34, label %35, label %38, !dbg !1396

; <label>:35                                      ; preds = %30
  %36 = load %struct.lua_State** %1, align 4, !dbg !1399
  %37 = load %struct.lua_TValue** %firstArg, align 4, !dbg !1399
  call void @resume_error(%struct.lua_State* %36, i8* getelementptr inbounds ([38 x i8]* @.str8, i32 0, i32 0), %struct.lua_TValue* %37) #9, !dbg !1399
  unreachable, !dbg !1399

; <label>:38                                      ; preds = %30
  %39 = load %struct.lua_State** %1, align 4, !dbg !1400
  %40 = load %struct.lua_TValue** %firstArg, align 4, !dbg !1400
  %41 = getelementptr inbounds %struct.lua_TValue* %40, i32 -1, !dbg !1400
  %42 = call i32 @luaD_precall(%struct.lua_State* %39, %struct.lua_TValue* %41, i32 -1), !dbg !1400
  %43 = icmp ne i32 %42, 0, !dbg !1400
  br i1 %43, label %46, label %44, !dbg !1400

; <label>:44                                      ; preds = %38
  %45 = load %struct.lua_State** %1, align 4, !dbg !1402
  call void @luaV_execute(%struct.lua_State* %45), !dbg !1402
  br label %46, !dbg !1402

; <label>:46                                      ; preds = %44, %38
  br label %113, !dbg !1403

; <label>:47                                      ; preds = %24
  %48 = load %struct.lua_State** %1, align 4, !dbg !1404
  %49 = getelementptr inbounds %struct.lua_State* %48, i32 0, i32 4, !dbg !1404
  %50 = load i8* %49, align 1, !dbg !1404
  %51 = zext i8 %50 to i32, !dbg !1404
  %52 = icmp ne i32 %51, 1, !dbg !1404
  br i1 %52, label %53, label %56, !dbg !1404

; <label>:53                                      ; preds = %47
  %54 = load %struct.lua_State** %1, align 4, !dbg !1406
  %55 = load %struct.lua_TValue** %firstArg, align 4, !dbg !1406
  call void @resume_error(%struct.lua_State* %54, i8* getelementptr inbounds ([29 x i8]* @.str9, i32 0, i32 0), %struct.lua_TValue* %55) #9, !dbg !1406
  unreachable, !dbg !1406

; <label>:56                                      ; preds = %47
  %57 = load %struct.lua_State** %1, align 4, !dbg !1407
  %58 = getelementptr inbounds %struct.lua_State* %57, i32 0, i32 4, !dbg !1407
  store i8 0, i8* %58, align 1, !dbg !1407
  %59 = load %struct.lua_State** %1, align 4, !dbg !1409
  %60 = getelementptr inbounds %struct.lua_State* %59, i32 0, i32 10, !dbg !1409
  %61 = load %struct.lua_TValue** %60, align 4, !dbg !1409
  %62 = bitcast %struct.lua_TValue* %61 to i8*, !dbg !1409
  %63 = load %struct.CallInfo** %ci, align 4, !dbg !1409
  %64 = getelementptr inbounds %struct.CallInfo* %63, i32 0, i32 5, !dbg !1409
  %65 = load i32* %64, align 4, !dbg !1409
  %66 = getelementptr inbounds i8* %62, i32 %65, !dbg !1409
  %67 = bitcast i8* %66 to %struct.lua_TValue*, !dbg !1409
  %68 = load %struct.CallInfo** %ci, align 4, !dbg !1409
  %69 = getelementptr inbounds %struct.CallInfo* %68, i32 0, i32 0, !dbg !1409
  store %struct.lua_TValue* %67, %struct.lua_TValue** %69, align 4, !dbg !1409
  %70 = load %struct.CallInfo** %ci, align 4, !dbg !1410
  %71 = getelementptr inbounds %struct.CallInfo* %70, i32 0, i32 7, !dbg !1410
  %72 = load i8* %71, align 1, !dbg !1410
  %73 = zext i8 %72 to i32, !dbg !1410
  %74 = and i32 %73, 2, !dbg !1410
  %75 = icmp ne i32 %74, 0, !dbg !1410
  br i1 %75, label %76, label %78, !dbg !1410

; <label>:76                                      ; preds = %56
  %77 = load %struct.lua_State** %1, align 4, !dbg !1412
  call void @luaV_execute(%struct.lua_State* %77), !dbg !1412
  br label %110, !dbg !1412

; <label>:78                                      ; preds = %56
  %79 = load %struct.CallInfo** %ci, align 4, !dbg !1413
  %80 = getelementptr inbounds %struct.CallInfo* %79, i32 0, i32 4, !dbg !1413
  %81 = bitcast %union.anon.0* %80 to %struct.anon.2*, !dbg !1413
  %82 = getelementptr inbounds %struct.anon.2* %81, i32 0, i32 0, !dbg !1413
  %83 = load i32 (%struct.lua_State*, i32, i32)** %82, align 4, !dbg !1413
  %84 = icmp ne i32 (%struct.lua_State*, i32, i32)* %83, null, !dbg !1413
  br i1 %84, label %85, label %104, !dbg !1413

; <label>:85                                      ; preds = %78
  %86 = load %struct.CallInfo** %ci, align 4, !dbg !1416
  %87 = getelementptr inbounds %struct.CallInfo* %86, i32 0, i32 4, !dbg !1416
  %88 = bitcast %union.anon.0* %87 to %struct.anon.2*, !dbg !1416
  %89 = getelementptr inbounds %struct.anon.2* %88, i32 0, i32 0, !dbg !1416
  %90 = load i32 (%struct.lua_State*, i32, i32)** %89, align 4, !dbg !1416
  %91 = load %struct.lua_State** %1, align 4, !dbg !1416
  %92 = load %struct.CallInfo** %ci, align 4, !dbg !1416
  %93 = getelementptr inbounds %struct.CallInfo* %92, i32 0, i32 4, !dbg !1416
  %94 = bitcast %union.anon.0* %93 to %struct.anon.2*, !dbg !1416
  %95 = getelementptr inbounds %struct.anon.2* %94, i32 0, i32 2, !dbg !1416
  %96 = load i32* %95, align 4, !dbg !1416
  %97 = call i32 %90(%struct.lua_State* %91, i32 1, i32 %96), !dbg !1416
  store i32 %97, i32* %n, align 4, !dbg !1416
  %98 = load %struct.lua_State** %1, align 4, !dbg !1418
  %99 = getelementptr inbounds %struct.lua_State* %98, i32 0, i32 5, !dbg !1418
  %100 = load %struct.lua_TValue** %99, align 4, !dbg !1418
  %101 = load i32* %n, align 4, !dbg !1418
  %102 = sub i32 0, %101, !dbg !1418
  %103 = getelementptr inbounds %struct.lua_TValue* %100, i32 %102, !dbg !1418
  store %struct.lua_TValue* %103, %struct.lua_TValue** %firstArg, align 4, !dbg !1418
  br label %104, !dbg !1419

; <label>:104                                     ; preds = %85, %78
  %105 = load %struct.lua_State** %1, align 4, !dbg !1420
  %106 = load %struct.CallInfo** %ci, align 4, !dbg !1420
  %107 = load %struct.lua_TValue** %firstArg, align 4, !dbg !1420
  %108 = load i32* %n, align 4, !dbg !1420
  %109 = call i32 @luaD_poscall(%struct.lua_State* %105, %struct.CallInfo* %106, %struct.lua_TValue* %107, i32 %108), !dbg !1420
  br label %110

; <label>:110                                     ; preds = %104, %76
  %111 = load %struct.lua_State** %1, align 4, !dbg !1421
  call void @unroll(%struct.lua_State* %111, i8* null), !dbg !1421
  br label %112

; <label>:112                                     ; preds = %110
  br label %113

; <label>:113                                     ; preds = %112, %46
  ret void, !dbg !1422
}

; Function Attrs: nounwind
define internal i32 @recover(%struct.lua_State* %L, i32 %status) #3 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.lua_State*, align 4
  %3 = alloca i32, align 4
  %oldtop = alloca %struct.lua_TValue*, align 4
  %ci = alloca %struct.CallInfo*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %2}, metadata !1423), !dbg !1424
  store i32 %status, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !1425), !dbg !1426
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %oldtop}, metadata !1427), !dbg !1428
  call void @llvm.dbg.declare(metadata !{%struct.CallInfo** %ci}, metadata !1429), !dbg !1430
  %4 = load %struct.lua_State** %2, align 4, !dbg !1431
  %5 = call %struct.CallInfo* @findpcall(%struct.lua_State* %4), !dbg !1431
  store %struct.CallInfo* %5, %struct.CallInfo** %ci, align 4, !dbg !1431
  %6 = load %struct.CallInfo** %ci, align 4, !dbg !1432
  %7 = icmp eq %struct.CallInfo* %6, null, !dbg !1432
  br i1 %7, label %8, label %9, !dbg !1432

; <label>:8                                       ; preds = %0
  store i32 0, i32* %1, !dbg !1434
  br label %45, !dbg !1434

; <label>:9                                       ; preds = %0
  %10 = load %struct.lua_State** %2, align 4, !dbg !1436
  %11 = getelementptr inbounds %struct.lua_State* %10, i32 0, i32 10, !dbg !1436
  %12 = load %struct.lua_TValue** %11, align 4, !dbg !1436
  %13 = bitcast %struct.lua_TValue* %12 to i8*, !dbg !1436
  %14 = load %struct.CallInfo** %ci, align 4, !dbg !1436
  %15 = getelementptr inbounds %struct.CallInfo* %14, i32 0, i32 5, !dbg !1436
  %16 = load i32* %15, align 4, !dbg !1436
  %17 = getelementptr inbounds i8* %13, i32 %16, !dbg !1436
  %18 = bitcast i8* %17 to %struct.lua_TValue*, !dbg !1436
  store %struct.lua_TValue* %18, %struct.lua_TValue** %oldtop, align 4, !dbg !1436
  %19 = load %struct.lua_State** %2, align 4, !dbg !1437
  %20 = load %struct.lua_TValue** %oldtop, align 4, !dbg !1437
  call void @luaF_close(%struct.lua_State* %19, %struct.lua_TValue* %20), !dbg !1437
  %21 = load %struct.lua_State** %2, align 4, !dbg !1438
  %22 = load i32* %3, align 4, !dbg !1438
  %23 = load %struct.lua_TValue** %oldtop, align 4, !dbg !1438
  call void @seterrorobj(%struct.lua_State* %21, i32 %22, %struct.lua_TValue* %23), !dbg !1438
  %24 = load %struct.CallInfo** %ci, align 4, !dbg !1439
  %25 = load %struct.lua_State** %2, align 4, !dbg !1439
  %26 = getelementptr inbounds %struct.lua_State* %25, i32 0, i32 7, !dbg !1439
  store %struct.CallInfo* %24, %struct.CallInfo** %26, align 4, !dbg !1439
  %27 = load %struct.CallInfo** %ci, align 4, !dbg !1440
  %28 = getelementptr inbounds %struct.CallInfo* %27, i32 0, i32 7, !dbg !1440
  %29 = load i8* %28, align 1, !dbg !1440
  %30 = zext i8 %29 to i32, !dbg !1440
  %31 = and i32 %30, 1, !dbg !1440
  %32 = trunc i32 %31 to i8, !dbg !1440
  %33 = load %struct.lua_State** %2, align 4, !dbg !1440
  %34 = getelementptr inbounds %struct.lua_State* %33, i32 0, i32 24, !dbg !1440
  store i8 %32, i8* %34, align 1, !dbg !1440
  %35 = load %struct.lua_State** %2, align 4, !dbg !1441
  %36 = getelementptr inbounds %struct.lua_State* %35, i32 0, i32 21, !dbg !1441
  store i16 0, i16* %36, align 2, !dbg !1441
  %37 = load %struct.lua_State** %2, align 4, !dbg !1442
  call void @luaD_shrinkstack(%struct.lua_State* %37), !dbg !1442
  %38 = load %struct.CallInfo** %ci, align 4, !dbg !1443
  %39 = getelementptr inbounds %struct.CallInfo* %38, i32 0, i32 4, !dbg !1443
  %40 = bitcast %union.anon.0* %39 to %struct.anon.2*, !dbg !1443
  %41 = getelementptr inbounds %struct.anon.2* %40, i32 0, i32 1, !dbg !1443
  %42 = load i32* %41, align 4, !dbg !1443
  %43 = load %struct.lua_State** %2, align 4, !dbg !1443
  %44 = getelementptr inbounds %struct.lua_State* %43, i32 0, i32 17, !dbg !1443
  store i32 %42, i32* %44, align 4, !dbg !1443
  store i32 1, i32* %1, !dbg !1444
  br label %45, !dbg !1444

; <label>:45                                      ; preds = %9, %8
  %46 = load i32* %1, !dbg !1445
  ret i32 %46, !dbg !1445
}

; Function Attrs: nounwind
define internal void @unroll(%struct.lua_State* %L, i8* %ud) #3 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca i8*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !1446), !dbg !1447
  store i8* %ud, i8** %2, align 4
  call void @llvm.dbg.declare(metadata !{i8** %2}, metadata !1448), !dbg !1449
  %3 = load i8** %2, align 4, !dbg !1450
  %4 = icmp ne i8* %3, null, !dbg !1450
  br i1 %4, label %5, label %10, !dbg !1450

; <label>:5                                       ; preds = %0
  %6 = load %struct.lua_State** %1, align 4, !dbg !1452
  %7 = load i8** %2, align 4, !dbg !1452
  %8 = bitcast i8* %7 to i32*, !dbg !1452
  %9 = load i32* %8, align 4, !dbg !1452
  call void @finishCcall(%struct.lua_State* %6, i32 %9), !dbg !1452
  br label %10, !dbg !1452

; <label>:10                                      ; preds = %5, %0
  br label %11, !dbg !1453

; <label>:11                                      ; preds = %32, %10
  %12 = load %struct.lua_State** %1, align 4, !dbg !1454
  %13 = getelementptr inbounds %struct.lua_State* %12, i32 0, i32 7, !dbg !1454
  %14 = load %struct.CallInfo** %13, align 4, !dbg !1454
  %15 = load %struct.lua_State** %1, align 4, !dbg !1454
  %16 = getelementptr inbounds %struct.lua_State* %15, i32 0, i32 15, !dbg !1454
  %17 = icmp ne %struct.CallInfo* %14, %16, !dbg !1454
  br i1 %17, label %18, label %33, !dbg !1454

; <label>:18                                      ; preds = %11
  %19 = load %struct.lua_State** %1, align 4, !dbg !1456
  %20 = getelementptr inbounds %struct.lua_State* %19, i32 0, i32 7, !dbg !1456
  %21 = load %struct.CallInfo** %20, align 4, !dbg !1456
  %22 = getelementptr inbounds %struct.CallInfo* %21, i32 0, i32 7, !dbg !1456
  %23 = load i8* %22, align 1, !dbg !1456
  %24 = zext i8 %23 to i32, !dbg !1456
  %25 = and i32 %24, 2, !dbg !1456
  %26 = icmp ne i32 %25, 0, !dbg !1456
  br i1 %26, label %29, label %27, !dbg !1456

; <label>:27                                      ; preds = %18
  %28 = load %struct.lua_State** %1, align 4, !dbg !1459
  call void @finishCcall(%struct.lua_State* %28, i32 1), !dbg !1459
  br label %32, !dbg !1459

; <label>:29                                      ; preds = %18
  %30 = load %struct.lua_State** %1, align 4, !dbg !1460
  call void @luaV_finishOp(%struct.lua_State* %30), !dbg !1460
  %31 = load %struct.lua_State** %1, align 4, !dbg !1462
  call void @luaV_execute(%struct.lua_State* %31), !dbg !1462
  br label %32

; <label>:32                                      ; preds = %29, %27
  br label %11, !dbg !1463

; <label>:33                                      ; preds = %11
  ret void, !dbg !1464
}

; Function Attrs: nounwind
define i32 @lua_isyieldable(%struct.lua_State* %L) #3 {
  %1 = alloca %struct.lua_State*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !1465), !dbg !1466
  %2 = load %struct.lua_State** %1, align 4, !dbg !1467
  %3 = getelementptr inbounds %struct.lua_State* %2, i32 0, i32 21, !dbg !1467
  %4 = load i16* %3, align 2, !dbg !1467
  %5 = zext i16 %4 to i32, !dbg !1467
  %6 = icmp eq i32 %5, 0, !dbg !1467
  %7 = zext i1 %6 to i32, !dbg !1467
  ret i32 %7, !dbg !1467
}

; Function Attrs: nounwind
define i32 @lua_yieldk(%struct.lua_State* %L, i32 %nresults, i32 %ctx, i32 (%struct.lua_State*, i32, i32)* %k) #3 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32 (%struct.lua_State*, i32, i32)*, align 4
  %ci = alloca %struct.CallInfo*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !1468), !dbg !1469
  store i32 %nresults, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !1470), !dbg !1471
  store i32 %ctx, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !1472), !dbg !1473
  store i32 (%struct.lua_State*, i32, i32)* %k, i32 (%struct.lua_State*, i32, i32)** %4, align 4
  call void @llvm.dbg.declare(metadata !{i32 (%struct.lua_State*, i32, i32)** %4}, metadata !1474), !dbg !1475
  call void @llvm.dbg.declare(metadata !{%struct.CallInfo** %ci}, metadata !1476), !dbg !1477
  %5 = load %struct.lua_State** %1, align 4, !dbg !1478
  %6 = getelementptr inbounds %struct.lua_State* %5, i32 0, i32 7, !dbg !1478
  %7 = load %struct.CallInfo** %6, align 4, !dbg !1478
  store %struct.CallInfo* %7, %struct.CallInfo** %ci, align 4, !dbg !1478
  %8 = load %struct.lua_State** %1, align 4, !dbg !1479
  %9 = load %struct.lua_State** %1, align 4, !dbg !1480
  %10 = getelementptr inbounds %struct.lua_State* %9, i32 0, i32 21, !dbg !1480
  %11 = load i16* %10, align 2, !dbg !1480
  %12 = zext i16 %11 to i32, !dbg !1480
  %13 = icmp sgt i32 %12, 0, !dbg !1480
  br i1 %13, label %14, label %26, !dbg !1480

; <label>:14                                      ; preds = %0
  %15 = load %struct.lua_State** %1, align 4, !dbg !1482
  %16 = load %struct.lua_State** %1, align 4, !dbg !1482
  %17 = getelementptr inbounds %struct.lua_State* %16, i32 0, i32 6, !dbg !1482
  %18 = load %struct.global_State** %17, align 4, !dbg !1482
  %19 = getelementptr inbounds %struct.global_State* %18, i32 0, i32 28, !dbg !1482
  %20 = load %struct.lua_State** %19, align 4, !dbg !1482
  %21 = icmp ne %struct.lua_State* %15, %20, !dbg !1482
  br i1 %21, label %22, label %24, !dbg !1482

; <label>:22                                      ; preds = %14
  %23 = load %struct.lua_State** %1, align 4, !dbg !1485
  call void (%struct.lua_State*, i8*, ...)* @luaG_runerror(%struct.lua_State* %23, i8* getelementptr inbounds ([42 x i8]* @.str1, i32 0, i32 0)) #9, !dbg !1485
  unreachable, !dbg !1485

; <label>:24                                      ; preds = %14
  %25 = load %struct.lua_State** %1, align 4, !dbg !1486
  call void (%struct.lua_State*, i8*, ...)* @luaG_runerror(%struct.lua_State* %25, i8* getelementptr inbounds ([42 x i8]* @.str2, i32 0, i32 0)) #9, !dbg !1486
  unreachable, !dbg !1486

; <label>:26                                      ; preds = %0
  %27 = load %struct.lua_State** %1, align 4, !dbg !1487
  %28 = getelementptr inbounds %struct.lua_State* %27, i32 0, i32 4, !dbg !1487
  store i8 1, i8* %28, align 1, !dbg !1487
  %29 = load %struct.CallInfo** %ci, align 4, !dbg !1488
  %30 = getelementptr inbounds %struct.CallInfo* %29, i32 0, i32 0, !dbg !1488
  %31 = load %struct.lua_TValue** %30, align 4, !dbg !1488
  %32 = bitcast %struct.lua_TValue* %31 to i8*, !dbg !1488
  %33 = load %struct.lua_State** %1, align 4, !dbg !1488
  %34 = getelementptr inbounds %struct.lua_State* %33, i32 0, i32 10, !dbg !1488
  %35 = load %struct.lua_TValue** %34, align 4, !dbg !1488
  %36 = bitcast %struct.lua_TValue* %35 to i8*, !dbg !1488
  %37 = ptrtoint i8* %32 to i32, !dbg !1488
  %38 = ptrtoint i8* %36 to i32, !dbg !1488
  %39 = sub i32 %37, %38, !dbg !1488
  %40 = load %struct.CallInfo** %ci, align 4, !dbg !1488
  %41 = getelementptr inbounds %struct.CallInfo* %40, i32 0, i32 5, !dbg !1488
  store i32 %39, i32* %41, align 4, !dbg !1488
  %42 = load %struct.CallInfo** %ci, align 4, !dbg !1489
  %43 = getelementptr inbounds %struct.CallInfo* %42, i32 0, i32 7, !dbg !1489
  %44 = load i8* %43, align 1, !dbg !1489
  %45 = zext i8 %44 to i32, !dbg !1489
  %46 = and i32 %45, 2, !dbg !1489
  %47 = icmp ne i32 %46, 0, !dbg !1489
  br i1 %47, label %48, label %49, !dbg !1489

; <label>:48                                      ; preds = %26
  br label %73, !dbg !1491

; <label>:49                                      ; preds = %26
  %50 = load i32 (%struct.lua_State*, i32, i32)** %4, align 4, !dbg !1493
  %51 = load %struct.CallInfo** %ci, align 4, !dbg !1493
  %52 = getelementptr inbounds %struct.CallInfo* %51, i32 0, i32 4, !dbg !1493
  %53 = bitcast %union.anon.0* %52 to %struct.anon.2*, !dbg !1493
  %54 = getelementptr inbounds %struct.anon.2* %53, i32 0, i32 0, !dbg !1493
  store i32 (%struct.lua_State*, i32, i32)* %50, i32 (%struct.lua_State*, i32, i32)** %54, align 4, !dbg !1493
  %55 = icmp ne i32 (%struct.lua_State*, i32, i32)* %50, null, !dbg !1493
  br i1 %55, label %56, label %62, !dbg !1493

; <label>:56                                      ; preds = %49
  %57 = load i32* %3, align 4, !dbg !1496
  %58 = load %struct.CallInfo** %ci, align 4, !dbg !1496
  %59 = getelementptr inbounds %struct.CallInfo* %58, i32 0, i32 4, !dbg !1496
  %60 = bitcast %union.anon.0* %59 to %struct.anon.2*, !dbg !1496
  %61 = getelementptr inbounds %struct.anon.2* %60, i32 0, i32 2, !dbg !1496
  store i32 %57, i32* %61, align 4, !dbg !1496
  br label %62, !dbg !1496

; <label>:62                                      ; preds = %56, %49
  %63 = load %struct.lua_State** %1, align 4, !dbg !1497
  %64 = getelementptr inbounds %struct.lua_State* %63, i32 0, i32 5, !dbg !1497
  %65 = load %struct.lua_TValue** %64, align 4, !dbg !1497
  %66 = load i32* %2, align 4, !dbg !1497
  %67 = sub i32 0, %66, !dbg !1497
  %68 = getelementptr inbounds %struct.lua_TValue* %65, i32 %67, !dbg !1497
  %69 = getelementptr inbounds %struct.lua_TValue* %68, i32 -1, !dbg !1497
  %70 = load %struct.CallInfo** %ci, align 4, !dbg !1497
  %71 = getelementptr inbounds %struct.CallInfo* %70, i32 0, i32 0, !dbg !1497
  store %struct.lua_TValue* %69, %struct.lua_TValue** %71, align 4, !dbg !1497
  %72 = load %struct.lua_State** %1, align 4, !dbg !1498
  call void @luaD_throw(%struct.lua_State* %72, i32 1) #9, !dbg !1498
  unreachable, !dbg !1498

; <label>:73                                      ; preds = %48
  ret i32 0, !dbg !1499
}

; Function Attrs: nounwind
define hidden i32 @luaD_pcall(%struct.lua_State* %L, void (%struct.lua_State*, i8*)* %func, i8* %u, i32 %old_top, i32 %ef) #3 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca void (%struct.lua_State*, i8*)*, align 4
  %3 = alloca i8*, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %status = alloca i32, align 4
  %old_ci = alloca %struct.CallInfo*, align 4
  %old_allowhooks = alloca i8, align 1
  %old_nny = alloca i16, align 2
  %old_errfunc = alloca i32, align 4
  %oldtop = alloca %struct.lua_TValue*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !1500), !dbg !1501
  store void (%struct.lua_State*, i8*)* %func, void (%struct.lua_State*, i8*)** %2, align 4
  call void @llvm.dbg.declare(metadata !{void (%struct.lua_State*, i8*)** %2}, metadata !1502), !dbg !1503
  store i8* %u, i8** %3, align 4
  call void @llvm.dbg.declare(metadata !{i8** %3}, metadata !1504), !dbg !1505
  store i32 %old_top, i32* %4, align 4
  call void @llvm.dbg.declare(metadata !{i32* %4}, metadata !1506), !dbg !1507
  store i32 %ef, i32* %5, align 4
  call void @llvm.dbg.declare(metadata !{i32* %5}, metadata !1508), !dbg !1509
  call void @llvm.dbg.declare(metadata !{i32* %status}, metadata !1510), !dbg !1511
  call void @llvm.dbg.declare(metadata !{%struct.CallInfo** %old_ci}, metadata !1512), !dbg !1513
  %6 = load %struct.lua_State** %1, align 4, !dbg !1514
  %7 = getelementptr inbounds %struct.lua_State* %6, i32 0, i32 7, !dbg !1514
  %8 = load %struct.CallInfo** %7, align 4, !dbg !1514
  store %struct.CallInfo* %8, %struct.CallInfo** %old_ci, align 4, !dbg !1514
  call void @llvm.dbg.declare(metadata !{i8* %old_allowhooks}, metadata !1515), !dbg !1516
  %9 = load %struct.lua_State** %1, align 4, !dbg !1517
  %10 = getelementptr inbounds %struct.lua_State* %9, i32 0, i32 24, !dbg !1517
  %11 = load i8* %10, align 1, !dbg !1517
  store i8 %11, i8* %old_allowhooks, align 1, !dbg !1517
  call void @llvm.dbg.declare(metadata !{i16* %old_nny}, metadata !1518), !dbg !1519
  %12 = load %struct.lua_State** %1, align 4, !dbg !1520
  %13 = getelementptr inbounds %struct.lua_State* %12, i32 0, i32 21, !dbg !1520
  %14 = load i16* %13, align 2, !dbg !1520
  store i16 %14, i16* %old_nny, align 2, !dbg !1520
  call void @llvm.dbg.declare(metadata !{i32* %old_errfunc}, metadata !1521), !dbg !1522
  %15 = load %struct.lua_State** %1, align 4, !dbg !1523
  %16 = getelementptr inbounds %struct.lua_State* %15, i32 0, i32 17, !dbg !1523
  %17 = load i32* %16, align 4, !dbg !1523
  store i32 %17, i32* %old_errfunc, align 4, !dbg !1523
  %18 = load i32* %5, align 4, !dbg !1524
  %19 = load %struct.lua_State** %1, align 4, !dbg !1524
  %20 = getelementptr inbounds %struct.lua_State* %19, i32 0, i32 17, !dbg !1524
  store i32 %18, i32* %20, align 4, !dbg !1524
  %21 = load %struct.lua_State** %1, align 4, !dbg !1525
  %22 = load void (%struct.lua_State*, i8*)** %2, align 4, !dbg !1525
  %23 = load i8** %3, align 4, !dbg !1525
  %24 = call i32 @luaD_rawrunprotected(%struct.lua_State* %21, void (%struct.lua_State*, i8*)* %22, i8* %23), !dbg !1525
  store i32 %24, i32* %status, align 4, !dbg !1525
  %25 = load i32* %status, align 4, !dbg !1526
  %26 = icmp ne i32 %25, 0, !dbg !1526
  br i1 %26, label %27, label %50, !dbg !1526

; <label>:27                                      ; preds = %0
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %oldtop}, metadata !1528), !dbg !1530
  %28 = load %struct.lua_State** %1, align 4, !dbg !1531
  %29 = getelementptr inbounds %struct.lua_State* %28, i32 0, i32 10, !dbg !1531
  %30 = load %struct.lua_TValue** %29, align 4, !dbg !1531
  %31 = bitcast %struct.lua_TValue* %30 to i8*, !dbg !1531
  %32 = load i32* %4, align 4, !dbg !1531
  %33 = getelementptr inbounds i8* %31, i32 %32, !dbg !1531
  %34 = bitcast i8* %33 to %struct.lua_TValue*, !dbg !1531
  store %struct.lua_TValue* %34, %struct.lua_TValue** %oldtop, align 4, !dbg !1531
  %35 = load %struct.lua_State** %1, align 4, !dbg !1532
  %36 = load %struct.lua_TValue** %oldtop, align 4, !dbg !1532
  call void @luaF_close(%struct.lua_State* %35, %struct.lua_TValue* %36), !dbg !1532
  %37 = load %struct.lua_State** %1, align 4, !dbg !1533
  %38 = load i32* %status, align 4, !dbg !1533
  %39 = load %struct.lua_TValue** %oldtop, align 4, !dbg !1533
  call void @seterrorobj(%struct.lua_State* %37, i32 %38, %struct.lua_TValue* %39), !dbg !1533
  %40 = load %struct.CallInfo** %old_ci, align 4, !dbg !1534
  %41 = load %struct.lua_State** %1, align 4, !dbg !1534
  %42 = getelementptr inbounds %struct.lua_State* %41, i32 0, i32 7, !dbg !1534
  store %struct.CallInfo* %40, %struct.CallInfo** %42, align 4, !dbg !1534
  %43 = load i8* %old_allowhooks, align 1, !dbg !1535
  %44 = load %struct.lua_State** %1, align 4, !dbg !1535
  %45 = getelementptr inbounds %struct.lua_State* %44, i32 0, i32 24, !dbg !1535
  store i8 %43, i8* %45, align 1, !dbg !1535
  %46 = load i16* %old_nny, align 2, !dbg !1536
  %47 = load %struct.lua_State** %1, align 4, !dbg !1536
  %48 = getelementptr inbounds %struct.lua_State* %47, i32 0, i32 21, !dbg !1536
  store i16 %46, i16* %48, align 2, !dbg !1536
  %49 = load %struct.lua_State** %1, align 4, !dbg !1537
  call void @luaD_shrinkstack(%struct.lua_State* %49), !dbg !1537
  br label %50, !dbg !1538

; <label>:50                                      ; preds = %27, %0
  %51 = load i32* %old_errfunc, align 4, !dbg !1539
  %52 = load %struct.lua_State** %1, align 4, !dbg !1539
  %53 = getelementptr inbounds %struct.lua_State* %52, i32 0, i32 17, !dbg !1539
  store i32 %51, i32* %53, align 4, !dbg !1539
  %54 = load i32* %status, align 4, !dbg !1540
  ret i32 %54, !dbg !1540
}

declare hidden void @luaF_close(%struct.lua_State*, %struct.lua_TValue*) #6

; Function Attrs: nounwind
define hidden i32 @luaD_protectedparser(%struct.lua_State* %L, %struct.Zio* %z, i8* %name, i8* %mode) #3 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca %struct.Zio*, align 4
  %3 = alloca i8*, align 4
  %4 = alloca i8*, align 4
  %p = alloca %struct.SParser, align 4
  %status = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !1541), !dbg !1542
  store %struct.Zio* %z, %struct.Zio** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.Zio** %2}, metadata !1543), !dbg !1544
  store i8* %name, i8** %3, align 4
  call void @llvm.dbg.declare(metadata !{i8** %3}, metadata !1545), !dbg !1546
  store i8* %mode, i8** %4, align 4
  call void @llvm.dbg.declare(metadata !{i8** %4}, metadata !1547), !dbg !1548
  call void @llvm.dbg.declare(metadata !{%struct.SParser* %p}, metadata !1549), !dbg !1595
  call void @llvm.dbg.declare(metadata !{i32* %status}, metadata !1596), !dbg !1597
  %5 = load %struct.lua_State** %1, align 4, !dbg !1598
  %6 = getelementptr inbounds %struct.lua_State* %5, i32 0, i32 21, !dbg !1598
  %7 = load i16* %6, align 2, !dbg !1598
  %8 = add i16 %7, 1, !dbg !1598
  store i16 %8, i16* %6, align 2, !dbg !1598
  %9 = load %struct.Zio** %2, align 4, !dbg !1599
  %10 = getelementptr inbounds %struct.SParser* %p, i32 0, i32 0, !dbg !1599
  store %struct.Zio* %9, %struct.Zio** %10, align 4, !dbg !1599
  %11 = load i8** %3, align 4, !dbg !1600
  %12 = getelementptr inbounds %struct.SParser* %p, i32 0, i32 4, !dbg !1600
  store i8* %11, i8** %12, align 4, !dbg !1600
  %13 = load i8** %4, align 4, !dbg !1601
  %14 = getelementptr inbounds %struct.SParser* %p, i32 0, i32 3, !dbg !1601
  store i8* %13, i8** %14, align 4, !dbg !1601
  %15 = getelementptr inbounds %struct.SParser* %p, i32 0, i32 2, !dbg !1602
  %16 = getelementptr inbounds %struct.Dyndata* %15, i32 0, i32 0, !dbg !1602
  %17 = getelementptr inbounds %struct.anon.5* %16, i32 0, i32 0, !dbg !1602
  store %struct.Vardesc* null, %struct.Vardesc** %17, align 4, !dbg !1602
  %18 = getelementptr inbounds %struct.SParser* %p, i32 0, i32 2, !dbg !1603
  %19 = getelementptr inbounds %struct.Dyndata* %18, i32 0, i32 0, !dbg !1603
  %20 = getelementptr inbounds %struct.anon.5* %19, i32 0, i32 2, !dbg !1603
  store i32 0, i32* %20, align 4, !dbg !1603
  %21 = getelementptr inbounds %struct.SParser* %p, i32 0, i32 2, !dbg !1604
  %22 = getelementptr inbounds %struct.Dyndata* %21, i32 0, i32 1, !dbg !1604
  %23 = getelementptr inbounds %struct.Labellist* %22, i32 0, i32 0, !dbg !1604
  store %struct.Labeldesc* null, %struct.Labeldesc** %23, align 4, !dbg !1604
  %24 = getelementptr inbounds %struct.SParser* %p, i32 0, i32 2, !dbg !1605
  %25 = getelementptr inbounds %struct.Dyndata* %24, i32 0, i32 1, !dbg !1605
  %26 = getelementptr inbounds %struct.Labellist* %25, i32 0, i32 2, !dbg !1605
  store i32 0, i32* %26, align 4, !dbg !1605
  %27 = getelementptr inbounds %struct.SParser* %p, i32 0, i32 2, !dbg !1606
  %28 = getelementptr inbounds %struct.Dyndata* %27, i32 0, i32 2, !dbg !1606
  %29 = getelementptr inbounds %struct.Labellist* %28, i32 0, i32 0, !dbg !1606
  store %struct.Labeldesc* null, %struct.Labeldesc** %29, align 4, !dbg !1606
  %30 = getelementptr inbounds %struct.SParser* %p, i32 0, i32 2, !dbg !1607
  %31 = getelementptr inbounds %struct.Dyndata* %30, i32 0, i32 2, !dbg !1607
  %32 = getelementptr inbounds %struct.Labellist* %31, i32 0, i32 2, !dbg !1607
  store i32 0, i32* %32, align 4, !dbg !1607
  %33 = getelementptr inbounds %struct.SParser* %p, i32 0, i32 1, !dbg !1608
  %34 = getelementptr inbounds %struct.Mbuffer* %33, i32 0, i32 0, !dbg !1608
  store i8* null, i8** %34, align 4, !dbg !1608
  %35 = getelementptr inbounds %struct.SParser* %p, i32 0, i32 1, !dbg !1608
  %36 = getelementptr inbounds %struct.Mbuffer* %35, i32 0, i32 2, !dbg !1608
  store i32 0, i32* %36, align 4, !dbg !1608
  %37 = load %struct.lua_State** %1, align 4, !dbg !1609
  %38 = bitcast %struct.SParser* %p to i8*, !dbg !1609
  %39 = load %struct.lua_State** %1, align 4, !dbg !1609
  %40 = getelementptr inbounds %struct.lua_State* %39, i32 0, i32 5, !dbg !1609
  %41 = load %struct.lua_TValue** %40, align 4, !dbg !1609
  %42 = bitcast %struct.lua_TValue* %41 to i8*, !dbg !1609
  %43 = load %struct.lua_State** %1, align 4, !dbg !1609
  %44 = getelementptr inbounds %struct.lua_State* %43, i32 0, i32 10, !dbg !1609
  %45 = load %struct.lua_TValue** %44, align 4, !dbg !1609
  %46 = bitcast %struct.lua_TValue* %45 to i8*, !dbg !1609
  %47 = ptrtoint i8* %42 to i32, !dbg !1609
  %48 = ptrtoint i8* %46 to i32, !dbg !1609
  %49 = sub i32 %47, %48, !dbg !1609
  %50 = load %struct.lua_State** %1, align 4, !dbg !1609
  %51 = getelementptr inbounds %struct.lua_State* %50, i32 0, i32 17, !dbg !1609
  %52 = load i32* %51, align 4, !dbg !1609
  %53 = call i32 @luaD_pcall(%struct.lua_State* %37, void (%struct.lua_State*, i8*)* @f_parser, i8* %38, i32 %49, i32 %52), !dbg !1609
  store i32 %53, i32* %status, align 4, !dbg !1609
  %54 = load %struct.lua_State** %1, align 4, !dbg !1610
  %55 = getelementptr inbounds %struct.SParser* %p, i32 0, i32 1, !dbg !1610
  %56 = getelementptr inbounds %struct.Mbuffer* %55, i32 0, i32 0, !dbg !1610
  %57 = load i8** %56, align 4, !dbg !1610
  %58 = getelementptr inbounds %struct.SParser* %p, i32 0, i32 1, !dbg !1610
  %59 = getelementptr inbounds %struct.Mbuffer* %58, i32 0, i32 2, !dbg !1610
  %60 = load i32* %59, align 4, !dbg !1610
  %61 = mul i32 %60, 1, !dbg !1610
  %62 = call i8* @luaM_realloc_(%struct.lua_State* %54, i8* %57, i32 %61, i32 0), !dbg !1610
  %63 = getelementptr inbounds %struct.SParser* %p, i32 0, i32 1, !dbg !1610
  %64 = getelementptr inbounds %struct.Mbuffer* %63, i32 0, i32 0, !dbg !1610
  store i8* %62, i8** %64, align 4, !dbg !1610
  %65 = getelementptr inbounds %struct.SParser* %p, i32 0, i32 1, !dbg !1610
  %66 = getelementptr inbounds %struct.Mbuffer* %65, i32 0, i32 2, !dbg !1610
  store i32 0, i32* %66, align 4, !dbg !1610
  %67 = load %struct.lua_State** %1, align 4, !dbg !1611
  %68 = getelementptr inbounds %struct.SParser* %p, i32 0, i32 2, !dbg !1611
  %69 = getelementptr inbounds %struct.Dyndata* %68, i32 0, i32 0, !dbg !1611
  %70 = getelementptr inbounds %struct.anon.5* %69, i32 0, i32 0, !dbg !1611
  %71 = load %struct.Vardesc** %70, align 4, !dbg !1611
  %72 = bitcast %struct.Vardesc* %71 to i8*, !dbg !1611
  %73 = getelementptr inbounds %struct.SParser* %p, i32 0, i32 2, !dbg !1611
  %74 = getelementptr inbounds %struct.Dyndata* %73, i32 0, i32 0, !dbg !1611
  %75 = getelementptr inbounds %struct.anon.5* %74, i32 0, i32 2, !dbg !1611
  %76 = load i32* %75, align 4, !dbg !1611
  %77 = mul i32 %76, 2, !dbg !1611
  %78 = call i8* @luaM_realloc_(%struct.lua_State* %67, i8* %72, i32 %77, i32 0), !dbg !1611
  %79 = load %struct.lua_State** %1, align 4, !dbg !1612
  %80 = getelementptr inbounds %struct.SParser* %p, i32 0, i32 2, !dbg !1612
  %81 = getelementptr inbounds %struct.Dyndata* %80, i32 0, i32 1, !dbg !1612
  %82 = getelementptr inbounds %struct.Labellist* %81, i32 0, i32 0, !dbg !1612
  %83 = load %struct.Labeldesc** %82, align 4, !dbg !1612
  %84 = bitcast %struct.Labeldesc* %83 to i8*, !dbg !1612
  %85 = getelementptr inbounds %struct.SParser* %p, i32 0, i32 2, !dbg !1612
  %86 = getelementptr inbounds %struct.Dyndata* %85, i32 0, i32 1, !dbg !1612
  %87 = getelementptr inbounds %struct.Labellist* %86, i32 0, i32 2, !dbg !1612
  %88 = load i32* %87, align 4, !dbg !1612
  %89 = mul i32 %88, 16, !dbg !1612
  %90 = call i8* @luaM_realloc_(%struct.lua_State* %79, i8* %84, i32 %89, i32 0), !dbg !1612
  %91 = load %struct.lua_State** %1, align 4, !dbg !1613
  %92 = getelementptr inbounds %struct.SParser* %p, i32 0, i32 2, !dbg !1613
  %93 = getelementptr inbounds %struct.Dyndata* %92, i32 0, i32 2, !dbg !1613
  %94 = getelementptr inbounds %struct.Labellist* %93, i32 0, i32 0, !dbg !1613
  %95 = load %struct.Labeldesc** %94, align 4, !dbg !1613
  %96 = bitcast %struct.Labeldesc* %95 to i8*, !dbg !1613
  %97 = getelementptr inbounds %struct.SParser* %p, i32 0, i32 2, !dbg !1613
  %98 = getelementptr inbounds %struct.Dyndata* %97, i32 0, i32 2, !dbg !1613
  %99 = getelementptr inbounds %struct.Labellist* %98, i32 0, i32 2, !dbg !1613
  %100 = load i32* %99, align 4, !dbg !1613
  %101 = mul i32 %100, 16, !dbg !1613
  %102 = call i8* @luaM_realloc_(%struct.lua_State* %91, i8* %96, i32 %101, i32 0), !dbg !1613
  %103 = load %struct.lua_State** %1, align 4, !dbg !1614
  %104 = getelementptr inbounds %struct.lua_State* %103, i32 0, i32 21, !dbg !1614
  %105 = load i16* %104, align 2, !dbg !1614
  %106 = add i16 %105, -1, !dbg !1614
  store i16 %106, i16* %104, align 2, !dbg !1614
  %107 = load i32* %status, align 4, !dbg !1615
  ret i32 %107, !dbg !1615
}

; Function Attrs: nounwind
define internal void @f_parser(%struct.lua_State* %L, i8* %ud) #3 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca i8*, align 4
  %cl = alloca %struct.LClosure*, align 4
  %p = alloca %struct.SParser*, align 4
  %c = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !1616), !dbg !1617
  store i8* %ud, i8** %2, align 4
  call void @llvm.dbg.declare(metadata !{i8** %2}, metadata !1618), !dbg !1619
  call void @llvm.dbg.declare(metadata !{%struct.LClosure** %cl}, metadata !1620), !dbg !1623
  call void @llvm.dbg.declare(metadata !{%struct.SParser** %p}, metadata !1624), !dbg !1626
  %3 = load i8** %2, align 4, !dbg !1627
  %4 = bitcast i8* %3 to %struct.SParser*, !dbg !1627
  store %struct.SParser* %4, %struct.SParser** %p, align 4, !dbg !1627
  call void @llvm.dbg.declare(metadata !{i32* %c}, metadata !1628), !dbg !1629
  %5 = load %struct.SParser** %p, align 4, !dbg !1630
  %6 = getelementptr inbounds %struct.SParser* %5, i32 0, i32 0, !dbg !1630
  %7 = load %struct.Zio** %6, align 4, !dbg !1630
  %8 = getelementptr inbounds %struct.Zio* %7, i32 0, i32 0, !dbg !1630
  %9 = load i32* %8, align 4, !dbg !1630
  %10 = add i32 %9, -1, !dbg !1630
  store i32 %10, i32* %8, align 4, !dbg !1630
  %11 = icmp ugt i32 %9, 0, !dbg !1630
  br i1 %11, label %12, label %21, !dbg !1630

; <label>:12                                      ; preds = %0
  %13 = load %struct.SParser** %p, align 4, !dbg !1631
  %14 = getelementptr inbounds %struct.SParser* %13, i32 0, i32 0, !dbg !1631
  %15 = load %struct.Zio** %14, align 4, !dbg !1631
  %16 = getelementptr inbounds %struct.Zio* %15, i32 0, i32 1, !dbg !1631
  %17 = load i8** %16, align 4, !dbg !1631
  %18 = getelementptr inbounds i8* %17, i32 1, !dbg !1631
  store i8* %18, i8** %16, align 4, !dbg !1631
  %19 = load i8* %17, align 1, !dbg !1631
  %20 = zext i8 %19 to i32, !dbg !1631
  br label %26, !dbg !1631

; <label>:21                                      ; preds = %0
  %22 = load %struct.SParser** %p, align 4, !dbg !1633
  %23 = getelementptr inbounds %struct.SParser* %22, i32 0, i32 0, !dbg !1633
  %24 = load %struct.Zio** %23, align 4, !dbg !1633
  %25 = call i32 @luaZ_fill(%struct.Zio* %24), !dbg !1633
  br label %26, !dbg !1633

; <label>:26                                      ; preds = %21, %12
  %27 = phi i32 [ %20, %12 ], [ %25, %21 ], !dbg !1635
  store i32 %27, i32* %c, align 4, !dbg !1636
  %28 = load i32* %c, align 4, !dbg !1639
  %29 = load i8* getelementptr inbounds ([5 x i8]* @.str3, i32 0, i32 0), align 1, !dbg !1639
  %30 = zext i8 %29 to i32, !dbg !1639
  %31 = icmp eq i32 %28, %30, !dbg !1639
  br i1 %31, label %32, label %45, !dbg !1639

; <label>:32                                      ; preds = %26
  %33 = load %struct.lua_State** %1, align 4, !dbg !1641
  %34 = load %struct.SParser** %p, align 4, !dbg !1641
  %35 = getelementptr inbounds %struct.SParser* %34, i32 0, i32 3, !dbg !1641
  %36 = load i8** %35, align 4, !dbg !1641
  call void @checkmode(%struct.lua_State* %33, i8* %36, i8* getelementptr inbounds ([7 x i8]* @.str4, i32 0, i32 0)), !dbg !1641
  %37 = load %struct.lua_State** %1, align 4, !dbg !1643
  %38 = load %struct.SParser** %p, align 4, !dbg !1643
  %39 = getelementptr inbounds %struct.SParser* %38, i32 0, i32 0, !dbg !1643
  %40 = load %struct.Zio** %39, align 4, !dbg !1643
  %41 = load %struct.SParser** %p, align 4, !dbg !1643
  %42 = getelementptr inbounds %struct.SParser* %41, i32 0, i32 4, !dbg !1643
  %43 = load i8** %42, align 4, !dbg !1643
  %44 = call %struct.LClosure* @luaU_undump(%struct.lua_State* %37, %struct.Zio* %40, i8* %43), !dbg !1643
  store %struct.LClosure* %44, %struct.LClosure** %cl, align 4, !dbg !1643
  br label %63, !dbg !1644

; <label>:45                                      ; preds = %26
  %46 = load %struct.lua_State** %1, align 4, !dbg !1645
  %47 = load %struct.SParser** %p, align 4, !dbg !1645
  %48 = getelementptr inbounds %struct.SParser* %47, i32 0, i32 3, !dbg !1645
  %49 = load i8** %48, align 4, !dbg !1645
  call void @checkmode(%struct.lua_State* %46, i8* %49, i8* getelementptr inbounds ([5 x i8]* @.str5, i32 0, i32 0)), !dbg !1645
  %50 = load %struct.lua_State** %1, align 4, !dbg !1647
  %51 = load %struct.SParser** %p, align 4, !dbg !1647
  %52 = getelementptr inbounds %struct.SParser* %51, i32 0, i32 0, !dbg !1647
  %53 = load %struct.Zio** %52, align 4, !dbg !1647
  %54 = load %struct.SParser** %p, align 4, !dbg !1647
  %55 = getelementptr inbounds %struct.SParser* %54, i32 0, i32 1, !dbg !1647
  %56 = load %struct.SParser** %p, align 4, !dbg !1647
  %57 = getelementptr inbounds %struct.SParser* %56, i32 0, i32 2, !dbg !1647
  %58 = load %struct.SParser** %p, align 4, !dbg !1647
  %59 = getelementptr inbounds %struct.SParser* %58, i32 0, i32 4, !dbg !1647
  %60 = load i8** %59, align 4, !dbg !1647
  %61 = load i32* %c, align 4, !dbg !1647
  %62 = call %struct.LClosure* @luaY_parser(%struct.lua_State* %50, %struct.Zio* %53, %struct.Mbuffer* %55, %struct.Dyndata* %57, i8* %60, i32 %61), !dbg !1647
  store %struct.LClosure* %62, %struct.LClosure** %cl, align 4, !dbg !1647
  br label %63

; <label>:63                                      ; preds = %45, %32
  %64 = load %struct.lua_State** %1, align 4, !dbg !1648
  %65 = load %struct.LClosure** %cl, align 4, !dbg !1648
  call void @luaF_initupvals(%struct.lua_State* %64, %struct.LClosure* %65), !dbg !1648
  ret void, !dbg !1649
}

declare hidden i32 @luaZ_fill(%struct.Zio*) #6

; Function Attrs: nounwind
define internal void @checkmode(%struct.lua_State* %L, i8* %mode, i8* %x) #3 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca i8*, align 4
  %3 = alloca i8*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !1650), !dbg !1651
  store i8* %mode, i8** %2, align 4
  call void @llvm.dbg.declare(metadata !{i8** %2}, metadata !1652), !dbg !1653
  store i8* %x, i8** %3, align 4
  call void @llvm.dbg.declare(metadata !{i8** %3}, metadata !1654), !dbg !1655
  %4 = load i8** %2, align 4, !dbg !1656
  %5 = icmp ne i8* %4, null, !dbg !1656
  br i1 %5, label %6, label %20, !dbg !1656

; <label>:6                                       ; preds = %0
  %7 = load i8** %2, align 4, !dbg !1658
  %8 = load i8** %3, align 4, !dbg !1658
  %9 = getelementptr inbounds i8* %8, i32 0, !dbg !1658
  %10 = load i8* %9, align 1, !dbg !1658
  %11 = zext i8 %10 to i32, !dbg !1658
  %12 = call i8* @strchr(i8* %7, i32 %11) #11, !dbg !1658
  %13 = icmp eq i8* %12, null, !dbg !1658
  br i1 %13, label %14, label %20, !dbg !1658

; <label>:14                                      ; preds = %6
  %15 = load %struct.lua_State** %1, align 4, !dbg !1660
  %16 = load i8** %3, align 4, !dbg !1660
  %17 = load i8** %2, align 4, !dbg !1660
  %18 = call i8* (%struct.lua_State*, i8*, ...)* @luaO_pushfstring(%struct.lua_State* %15, i8* getelementptr inbounds ([42 x i8]* @.str6, i32 0, i32 0), i8* %16, i8* %17), !dbg !1660
  %19 = load %struct.lua_State** %1, align 4, !dbg !1662
  call void @luaD_throw(%struct.lua_State* %19, i32 3) #9, !dbg !1662
  unreachable, !dbg !1662

; <label>:20                                      ; preds = %6, %0
  ret void, !dbg !1663
}

declare hidden %struct.LClosure* @luaU_undump(%struct.lua_State*, %struct.Zio*, i8*) #6

declare hidden %struct.LClosure* @luaY_parser(%struct.lua_State*, %struct.Zio*, %struct.Mbuffer*, %struct.Dyndata*, i8*, i32) #6

declare hidden void @luaF_initupvals(%struct.lua_State*, %struct.LClosure*) #6

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #7

declare hidden i8* @luaO_pushfstring(%struct.lua_State*, i8*, ...) #6

; Function Attrs: nounwind
define internal void @finishCcall(%struct.lua_State* %L, i32 %status) #3 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca i32, align 4
  %ci = alloca %struct.CallInfo*, align 4
  %n = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !1664), !dbg !1665
  store i32 %status, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !1666), !dbg !1667
  call void @llvm.dbg.declare(metadata !{%struct.CallInfo** %ci}, metadata !1668), !dbg !1669
  %3 = load %struct.lua_State** %1, align 4, !dbg !1670
  %4 = getelementptr inbounds %struct.lua_State* %3, i32 0, i32 7, !dbg !1670
  %5 = load %struct.CallInfo** %4, align 4, !dbg !1670
  store %struct.CallInfo* %5, %struct.CallInfo** %ci, align 4, !dbg !1670
  call void @llvm.dbg.declare(metadata !{i32* %n}, metadata !1671), !dbg !1672
  %6 = load %struct.CallInfo** %ci, align 4, !dbg !1673
  %7 = getelementptr inbounds %struct.CallInfo* %6, i32 0, i32 7, !dbg !1673
  %8 = load i8* %7, align 1, !dbg !1673
  %9 = zext i8 %8 to i32, !dbg !1673
  %10 = and i32 %9, 16, !dbg !1673
  %11 = icmp ne i32 %10, 0, !dbg !1673
  br i1 %11, label %12, label %26, !dbg !1673

; <label>:12                                      ; preds = %0
  %13 = load %struct.CallInfo** %ci, align 4, !dbg !1675
  %14 = getelementptr inbounds %struct.CallInfo* %13, i32 0, i32 7, !dbg !1675
  %15 = load i8* %14, align 1, !dbg !1675
  %16 = zext i8 %15 to i32, !dbg !1675
  %17 = and i32 %16, -17, !dbg !1675
  %18 = trunc i32 %17 to i8, !dbg !1675
  store i8 %18, i8* %14, align 1, !dbg !1675
  %19 = load %struct.CallInfo** %ci, align 4, !dbg !1677
  %20 = getelementptr inbounds %struct.CallInfo* %19, i32 0, i32 4, !dbg !1677
  %21 = bitcast %union.anon.0* %20 to %struct.anon.2*, !dbg !1677
  %22 = getelementptr inbounds %struct.anon.2* %21, i32 0, i32 1, !dbg !1677
  %23 = load i32* %22, align 4, !dbg !1677
  %24 = load %struct.lua_State** %1, align 4, !dbg !1677
  %25 = getelementptr inbounds %struct.lua_State* %24, i32 0, i32 17, !dbg !1677
  store i32 %23, i32* %25, align 4, !dbg !1677
  br label %26, !dbg !1678

; <label>:26                                      ; preds = %12, %0
  %27 = load %struct.CallInfo** %ci, align 4, !dbg !1679
  %28 = getelementptr inbounds %struct.CallInfo* %27, i32 0, i32 6, !dbg !1679
  %29 = load i16* %28, align 2, !dbg !1679
  %30 = sext i16 %29 to i32, !dbg !1679
  %31 = icmp eq i32 %30, -1, !dbg !1679
  br i1 %31, label %32, label %50, !dbg !1679

; <label>:32                                      ; preds = %26
  %33 = load %struct.lua_State** %1, align 4, !dbg !1682
  %34 = getelementptr inbounds %struct.lua_State* %33, i32 0, i32 7, !dbg !1682
  %35 = load %struct.CallInfo** %34, align 4, !dbg !1682
  %36 = getelementptr inbounds %struct.CallInfo* %35, i32 0, i32 1, !dbg !1682
  %37 = load %struct.lua_TValue** %36, align 4, !dbg !1682
  %38 = load %struct.lua_State** %1, align 4, !dbg !1682
  %39 = getelementptr inbounds %struct.lua_State* %38, i32 0, i32 5, !dbg !1682
  %40 = load %struct.lua_TValue** %39, align 4, !dbg !1682
  %41 = icmp ult %struct.lua_TValue* %37, %40, !dbg !1682
  br i1 %41, label %42, label %50, !dbg !1682

; <label>:42                                      ; preds = %32
  %43 = load %struct.lua_State** %1, align 4, !dbg !1684
  %44 = getelementptr inbounds %struct.lua_State* %43, i32 0, i32 5, !dbg !1684
  %45 = load %struct.lua_TValue** %44, align 4, !dbg !1684
  %46 = load %struct.lua_State** %1, align 4, !dbg !1684
  %47 = getelementptr inbounds %struct.lua_State* %46, i32 0, i32 7, !dbg !1684
  %48 = load %struct.CallInfo** %47, align 4, !dbg !1684
  %49 = getelementptr inbounds %struct.CallInfo* %48, i32 0, i32 1, !dbg !1684
  store %struct.lua_TValue* %45, %struct.lua_TValue** %49, align 4, !dbg !1684
  br label %50, !dbg !1684

; <label>:50                                      ; preds = %42, %32, %26
  %51 = load %struct.CallInfo** %ci, align 4, !dbg !1686
  %52 = getelementptr inbounds %struct.CallInfo* %51, i32 0, i32 4, !dbg !1686
  %53 = bitcast %union.anon.0* %52 to %struct.anon.2*, !dbg !1686
  %54 = getelementptr inbounds %struct.anon.2* %53, i32 0, i32 0, !dbg !1686
  %55 = load i32 (%struct.lua_State*, i32, i32)** %54, align 4, !dbg !1686
  %56 = load %struct.lua_State** %1, align 4, !dbg !1686
  %57 = load i32* %2, align 4, !dbg !1686
  %58 = load %struct.CallInfo** %ci, align 4, !dbg !1686
  %59 = getelementptr inbounds %struct.CallInfo* %58, i32 0, i32 4, !dbg !1686
  %60 = bitcast %union.anon.0* %59 to %struct.anon.2*, !dbg !1686
  %61 = getelementptr inbounds %struct.anon.2* %60, i32 0, i32 2, !dbg !1686
  %62 = load i32* %61, align 4, !dbg !1686
  %63 = call i32 %55(%struct.lua_State* %56, i32 %57, i32 %62), !dbg !1686
  store i32 %63, i32* %n, align 4, !dbg !1686
  %64 = load %struct.lua_State** %1, align 4, !dbg !1687
  %65 = load %struct.CallInfo** %ci, align 4, !dbg !1687
  %66 = load %struct.lua_State** %1, align 4, !dbg !1687
  %67 = getelementptr inbounds %struct.lua_State* %66, i32 0, i32 5, !dbg !1687
  %68 = load %struct.lua_TValue** %67, align 4, !dbg !1687
  %69 = load i32* %n, align 4, !dbg !1687
  %70 = sub i32 0, %69, !dbg !1687
  %71 = getelementptr inbounds %struct.lua_TValue* %68, i32 %70, !dbg !1687
  %72 = load i32* %n, align 4, !dbg !1687
  %73 = call i32 @luaD_poscall(%struct.lua_State* %64, %struct.CallInfo* %65, %struct.lua_TValue* %71, i32 %72), !dbg !1687
  ret void, !dbg !1688
}

declare hidden void @luaV_finishOp(%struct.lua_State*) #6

; Function Attrs: nounwind
define internal %struct.CallInfo* @findpcall(%struct.lua_State* %L) #3 {
  %1 = alloca %struct.CallInfo*, align 4
  %2 = alloca %struct.lua_State*, align 4
  %ci = alloca %struct.CallInfo*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %2}, metadata !1689), !dbg !1690
  call void @llvm.dbg.declare(metadata !{%struct.CallInfo** %ci}, metadata !1691), !dbg !1692
  %3 = load %struct.lua_State** %2, align 4, !dbg !1693
  %4 = getelementptr inbounds %struct.lua_State* %3, i32 0, i32 7, !dbg !1693
  %5 = load %struct.CallInfo** %4, align 4, !dbg !1693
  store %struct.CallInfo* %5, %struct.CallInfo** %ci, align 4, !dbg !1693
  br label %6, !dbg !1693

; <label>:6                                       ; preds = %19, %0
  %7 = load %struct.CallInfo** %ci, align 4, !dbg !1695
  %8 = icmp ne %struct.CallInfo* %7, null, !dbg !1695
  br i1 %8, label %9, label %23, !dbg !1695

; <label>:9                                       ; preds = %6
  %10 = load %struct.CallInfo** %ci, align 4, !dbg !1698
  %11 = getelementptr inbounds %struct.CallInfo* %10, i32 0, i32 7, !dbg !1698
  %12 = load i8* %11, align 1, !dbg !1698
  %13 = zext i8 %12 to i32, !dbg !1698
  %14 = and i32 %13, 16, !dbg !1698
  %15 = icmp ne i32 %14, 0, !dbg !1698
  br i1 %15, label %16, label %18, !dbg !1698

; <label>:16                                      ; preds = %9
  %17 = load %struct.CallInfo** %ci, align 4, !dbg !1701
  store %struct.CallInfo* %17, %struct.CallInfo** %1, !dbg !1701
  br label %24, !dbg !1701

; <label>:18                                      ; preds = %9
  br label %19, !dbg !1702

; <label>:19                                      ; preds = %18
  %20 = load %struct.CallInfo** %ci, align 4, !dbg !1703
  %21 = getelementptr inbounds %struct.CallInfo* %20, i32 0, i32 2, !dbg !1703
  %22 = load %struct.CallInfo** %21, align 4, !dbg !1703
  store %struct.CallInfo* %22, %struct.CallInfo** %ci, align 4, !dbg !1703
  br label %6, !dbg !1703

; <label>:23                                      ; preds = %6
  store %struct.CallInfo* null, %struct.CallInfo** %1, !dbg !1704
  br label %24, !dbg !1704

; <label>:24                                      ; preds = %23, %16
  %25 = load %struct.CallInfo** %1, !dbg !1705
  ret %struct.CallInfo* %25, !dbg !1705
}

; Function Attrs: noreturn nounwind
define internal void @resume_error(%struct.lua_State* %L, i8* %msg, %struct.lua_TValue* %firstArg) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca i8*, align 4
  %3 = alloca %struct.lua_TValue*, align 4
  %io = alloca %struct.lua_TValue*, align 4
  %x_ = alloca %struct.TString*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !1706), !dbg !1707
  store i8* %msg, i8** %2, align 4
  call void @llvm.dbg.declare(metadata !{i8** %2}, metadata !1708), !dbg !1709
  store %struct.lua_TValue* %firstArg, %struct.lua_TValue** %3, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %3}, metadata !1710), !dbg !1711
  %4 = load %struct.lua_TValue** %3, align 4, !dbg !1712
  %5 = load %struct.lua_State** %1, align 4, !dbg !1712
  %6 = getelementptr inbounds %struct.lua_State* %5, i32 0, i32 5, !dbg !1712
  store %struct.lua_TValue* %4, %struct.lua_TValue** %6, align 4, !dbg !1712
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %io}, metadata !1713), !dbg !1715
  %7 = load %struct.lua_State** %1, align 4, !dbg !1715
  %8 = getelementptr inbounds %struct.lua_State* %7, i32 0, i32 5, !dbg !1715
  %9 = load %struct.lua_TValue** %8, align 4, !dbg !1715
  store %struct.lua_TValue* %9, %struct.lua_TValue** %io, align 4, !dbg !1715
  call void @llvm.dbg.declare(metadata !{%struct.TString** %x_}, metadata !1716), !dbg !1715
  %10 = load %struct.lua_State** %1, align 4, !dbg !1715
  %11 = load i8** %2, align 4, !dbg !1715
  %12 = call %struct.TString* @luaS_new(%struct.lua_State* %10, i8* %11), !dbg !1715
  store %struct.TString* %12, %struct.TString** %x_, align 4, !dbg !1715
  %13 = load %struct.TString** %x_, align 4, !dbg !1715
  %14 = bitcast %struct.TString* %13 to %union.GCUnion*, !dbg !1715
  %15 = bitcast %union.GCUnion* %14 to %struct.GCObject*, !dbg !1715
  %16 = load %struct.lua_TValue** %io, align 4, !dbg !1715
  %17 = getelementptr inbounds %struct.lua_TValue* %16, i32 0, i32 0, !dbg !1715
  %18 = bitcast %union.Value* %17 to %struct.GCObject**, !dbg !1715
  store %struct.GCObject* %15, %struct.GCObject** %18, align 4, !dbg !1715
  %19 = load %struct.TString** %x_, align 4, !dbg !1715
  %20 = getelementptr inbounds %struct.TString* %19, i32 0, i32 1, !dbg !1715
  %21 = load i8* %20, align 1, !dbg !1715
  %22 = zext i8 %21 to i32, !dbg !1715
  %23 = or i32 %22, 64, !dbg !1715
  %24 = load %struct.lua_TValue** %io, align 4, !dbg !1715
  %25 = getelementptr inbounds %struct.lua_TValue* %24, i32 0, i32 1, !dbg !1715
  store i32 %23, i32* %25, align 4, !dbg !1715
  %26 = load %struct.lua_State** %1, align 4, !dbg !1717
  %27 = getelementptr inbounds %struct.lua_State* %26, i32 0, i32 5, !dbg !1717
  %28 = load %struct.lua_TValue** %27, align 4, !dbg !1717
  %29 = getelementptr inbounds %struct.lua_TValue* %28, i32 1, !dbg !1717
  store %struct.lua_TValue* %29, %struct.lua_TValue** %27, align 4, !dbg !1717
  %30 = load %struct.lua_State** %1, align 4, !dbg !1719
  call void @luaD_throw(%struct.lua_State* %30, i32 -1) #9, !dbg !1719
  unreachable, !dbg !1719
                                                  ; No predecessors!
  ret void, !dbg !1720
}

declare hidden %struct.TString* @luaS_new(%struct.lua_State*, i8*) #6

declare hidden %struct.lua_TValue* @luaT_gettmbyobj(%struct.lua_State*, %struct.lua_TValue*, i32) #6

; Function Attrs: noreturn
declare hidden void @luaG_typeerror(%struct.lua_State*, %struct.lua_TValue*, i8*) #5

declare hidden %struct.TString* @luaS_newlstr(%struct.lua_State*, i8*, i32) #6

attributes #0 = { noreturn nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind }
attributes #3 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind returns_twice "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noreturn nounwind }
attributes #9 = { noreturn }
attributes #10 = { nounwind returns_twice }
attributes #11 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!xidane.fname = !{!537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646}
!xidane.function_declaration_type = !{!537, !647, !539, !648, !541, !649, !543, !650, !545, !651, !547, !652, !549, !647, !551, !653, !553, !654, !555, !655, !557, !647, !559, !656, !561, !653, !563, !657, !565, !653, !567, !653, !569, !653, !571, !658, !573, !659, !575, !653, !577, !660, !579, !661, !581, !662, !583, !663, !585, !664, !587, !665, !589, !666, !591, !653, !593, !653, !595, !666, !597, !667, !599, !668, !601, !669, !603, !668, !605, !657, !607, !670, !609, !671, !611, !664, !613, !672, !615, !668, !617, !673, !619, !674, !621, !675, !623, !676, !625, !677, !627, !678, !629, !679, !631, !647, !633, !653, !635, !660, !637, !680, !639, !681, !641, !682, !643, !683, !645, !684}
!xidane.function_declaration_filename = !{!537, !685, !539, !686, !541, !687, !543, !688, !545, !685, !547, !686, !549, !685, !551, !689, !553, !689, !555, !687, !557, !685, !559, !690, !561, !685, !563, !687, !565, !691, !567, !691, !569, !685, !571, !685, !573, !685, !575, !692, !577, !691, !579, !685, !581, !687, !583, !687, !585, !687, !587, !687, !589, !685, !591, !687, !593, !693, !595, !685, !597, !694, !599, !687, !601, !687, !603, !687, !605, !694, !607, !694, !609, !685, !611, !695, !613, !685, !615, !687, !617, !696, !619, !687, !621, !697, !623, !698, !625, !695, !627, !699, !629, !700, !631, !687, !633, !693, !635, !687, !637, !687, !639, !701, !641, !702, !643, !690, !645, !701}
!xidane.ExternC = !{!537, !539, !543, !545, !547, !549, !551, !553, !557, !559, !561, !565, !567, !569, !571, !573, !575, !577, !579, !589, !593, !595, !597, !605, !607, !609, !611, !613, !617, !621, !623, !625, !627, !629, !633, !639, !641, !643, !645}
!llvm.module.flags = !{!703, !704, !705, !706}
!llvm.ident = !{!707}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.0 (tags/RELEASE_350/final)", i1 false, metadata !"", i32 0, metadata !2, metadata !81, metadata !82, metadata !81, metadata !81, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src\ldo.c] [DW_LANG_C99]
!1 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src\5Cldo.c", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
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
!82 = metadata !{metadata !83, metadata !388, metadata !396, metadata !397, metadata !398, metadata !401, metadata !402, metadata !405, metadata !408, metadata !411, metadata !414, metadata !415, metadata !418, metadata !419, metadata !422, metadata !425, metadata !443, metadata !444, metadata !447, metadata !448, metadata !449, metadata !452, metadata !455, metadata !456, metadata !459, metadata !460, metadata !465, metadata !468, metadata !471, metadata !530, metadata !531, metadata !534}
!83 = metadata !{i32 786478, metadata !84, metadata !85, metadata !"luaD_throw", metadata !"luaD_throw", metadata !"", i32 110, metadata !86, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.lua_State*, i32)* @luaD_throw, null, null, metadata !81, i32 110} ; [ DW_TAG_subprogram ] [line 110] [def] [luaD_throw]
!84 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/ldo.c", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!85 = metadata !{i32 786473, metadata !84}        ; [ DW_TAG_file_type ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!86 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !87, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!87 = metadata !{null, metadata !88, metadata !125}
!88 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !89} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from lua_State]
!89 = metadata !{i32 786454, metadata !90, null, metadata !"lua_State", i32 56, i64 0, i64 0, i64 0, i32 0, metadata !91} ; [ DW_TAG_typedef ] [lua_State] [line 56, size 0, align 0, offset 0] [from lua_State]
!90 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lua.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!91 = metadata !{i32 786451, metadata !92, null, metadata !"lua_State", i32 159, i64 960, i64 32, i32 0, i32 0, null, metadata !93, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [lua_State] [line 159, size 960, align 32, offset 0] [def] [from ]
!92 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lstate.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!93 = metadata !{metadata !94, metadata !106, metadata !107, metadata !108, metadata !110, metadata !111, metadata !138, metadata !254, metadata !292, metadata !293, metadata !294, metadata !295, metadata !312, metadata !313, metadata !314, metadata !346, metadata !347, metadata !377, metadata !378, metadata !379, metadata !380, metadata !381, metadata !382, metadata !383, metadata !387}
!94 = metadata !{i32 786445, metadata !92, metadata !91, metadata !"next", i32 160, i64 32, i64 32, i64 0, i32 0, metadata !95} ; [ DW_TAG_member ] [next] [line 160, size 32, align 32, offset 0] [from ]
!95 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !96} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from GCObject]
!96 = metadata !{i32 786454, metadata !97, null, metadata !"GCObject", i32 72, i64 0, i64 0, i64 0, i32 0, metadata !98} ; [ DW_TAG_typedef ] [GCObject] [line 72, size 0, align 0, offset 0] [from GCObject]
!97 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lobject.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!98 = metadata !{i32 786451, metadata !97, null, metadata !"GCObject", i32 85, i64 64, i64 32, i32 0, i32 0, null, metadata !99, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [GCObject] [line 85, size 64, align 32, offset 0] [def] [from ]
!99 = metadata !{metadata !100, metadata !101, metadata !105}
!100 = metadata !{i32 786445, metadata !97, metadata !98, metadata !"next", i32 86, i64 32, i64 32, i64 0, i32 0, metadata !95} ; [ DW_TAG_member ] [next] [line 86, size 32, align 32, offset 0] [from ]
!101 = metadata !{i32 786445, metadata !97, metadata !98, metadata !"tt", i32 86, i64 8, i64 8, i64 32, i32 0, metadata !102} ; [ DW_TAG_member ] [tt] [line 86, size 8, align 8, offset 32] [from lu_byte]
!102 = metadata !{i32 786454, metadata !103, null, metadata !"lu_byte", i32 35, i64 0, i64 0, i64 0, i32 0, metadata !104} ; [ DW_TAG_typedef ] [lu_byte] [line 35, size 0, align 0, offset 0] [from unsigned char]
!103 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/llimits.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!104 = metadata !{i32 786468, null, null, metadata !"unsigned char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [unsigned char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!105 = metadata !{i32 786445, metadata !97, metadata !98, metadata !"marked", i32 86, i64 8, i64 8, i64 40, i32 0, metadata !102} ; [ DW_TAG_member ] [marked] [line 86, size 8, align 8, offset 40] [from lu_byte]
!106 = metadata !{i32 786445, metadata !92, metadata !91, metadata !"tt", i32 160, i64 8, i64 8, i64 32, i32 0, metadata !102} ; [ DW_TAG_member ] [tt] [line 160, size 8, align 8, offset 32] [from lu_byte]
!107 = metadata !{i32 786445, metadata !92, metadata !91, metadata !"marked", i32 160, i64 8, i64 8, i64 40, i32 0, metadata !102} ; [ DW_TAG_member ] [marked] [line 160, size 8, align 8, offset 40] [from lu_byte]
!108 = metadata !{i32 786445, metadata !92, metadata !91, metadata !"nci", i32 161, i64 16, i64 16, i64 48, i32 0, metadata !109} ; [ DW_TAG_member ] [nci] [line 161, size 16, align 16, offset 48] [from unsigned short]
!109 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!110 = metadata !{i32 786445, metadata !92, metadata !91, metadata !"status", i32 162, i64 8, i64 8, i64 64, i32 0, metadata !102} ; [ DW_TAG_member ] [status] [line 162, size 8, align 8, offset 64] [from lu_byte]
!111 = metadata !{i32 786445, metadata !92, metadata !91, metadata !"top", i32 163, i64 32, i64 32, i64 96, i32 0, metadata !112} ; [ DW_TAG_member ] [top] [line 163, size 32, align 32, offset 96] [from StkId]
!112 = metadata !{i32 786454, metadata !97, null, metadata !"StkId", i32 294, i64 0, i64 0, i64 0, i32 0, metadata !113} ; [ DW_TAG_typedef ] [StkId] [line 294, size 0, align 0, offset 0] [from ]
!113 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !114} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from TValue]
!114 = metadata !{i32 786454, metadata !97, null, metadata !"TValue", i32 115, i64 0, i64 0, i64 0, i32 0, metadata !115} ; [ DW_TAG_typedef ] [TValue] [line 115, size 0, align 0, offset 0] [from lua_TValue]
!115 = metadata !{i32 786451, metadata !97, null, metadata !"lua_TValue", i32 113, i64 128, i64 64, i32 0, i32 0, null, metadata !116, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [lua_TValue] [line 113, size 128, align 64, offset 0] [def] [from ]
!116 = metadata !{metadata !117, metadata !137}
!117 = metadata !{i32 786445, metadata !97, metadata !115, metadata !"value_", i32 114, i64 64, i64 64, i64 0, i32 0, metadata !118} ; [ DW_TAG_member ] [value_] [line 114, size 64, align 64, offset 0] [from Value]
!118 = metadata !{i32 786454, metadata !97, null, metadata !"Value", i32 107, i64 0, i64 0, i64 0, i32 0, metadata !119} ; [ DW_TAG_typedef ] [Value] [line 107, size 0, align 0, offset 0] [from Value]
!119 = metadata !{i32 786455, metadata !97, null, metadata !"Value", i32 100, i64 64, i64 64, i64 0, i32 0, null, metadata !120, i32 0, null, null, null} ; [ DW_TAG_union_type ] [Value] [line 100, size 64, align 64, offset 0] [def] [from ]
!120 = metadata !{metadata !121, metadata !122, metadata !124, metadata !126, metadata !131, metadata !134}
!121 = metadata !{i32 786445, metadata !97, metadata !119, metadata !"gc", i32 101, i64 32, i64 32, i64 0, i32 0, metadata !95} ; [ DW_TAG_member ] [gc] [line 101, size 32, align 32, offset 0] [from ]
!122 = metadata !{i32 786445, metadata !97, metadata !119, metadata !"p", i32 102, i64 32, i64 32, i64 0, i32 0, metadata !123} ; [ DW_TAG_member ] [p] [line 102, size 32, align 32, offset 0] [from ]
!123 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!124 = metadata !{i32 786445, metadata !97, metadata !119, metadata !"b", i32 103, i64 32, i64 32, i64 0, i32 0, metadata !125} ; [ DW_TAG_member ] [b] [line 103, size 32, align 32, offset 0] [from int]
!125 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!126 = metadata !{i32 786445, metadata !97, metadata !119, metadata !"f", i32 104, i64 32, i64 32, i64 0, i32 0, metadata !127} ; [ DW_TAG_member ] [f] [line 104, size 32, align 32, offset 0] [from lua_CFunction]
!127 = metadata !{i32 786454, metadata !90, null, metadata !"lua_CFunction", i32 105, i64 0, i64 0, i64 0, i32 0, metadata !128} ; [ DW_TAG_typedef ] [lua_CFunction] [line 105, size 0, align 0, offset 0] [from ]
!128 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !129} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!129 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !130, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!130 = metadata !{metadata !125, metadata !88}
!131 = metadata !{i32 786445, metadata !97, metadata !119, metadata !"i", i32 105, i64 64, i64 64, i64 0, i32 0, metadata !132} ; [ DW_TAG_member ] [i] [line 105, size 64, align 64, offset 0] [from lua_Integer]
!132 = metadata !{i32 786454, metadata !90, null, metadata !"lua_Integer", i32 93, i64 0, i64 0, i64 0, i32 0, metadata !133} ; [ DW_TAG_typedef ] [lua_Integer] [line 93, size 0, align 0, offset 0] [from long long int]
!133 = metadata !{i32 786468, null, null, metadata !"long long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!134 = metadata !{i32 786445, metadata !97, metadata !119, metadata !"n", i32 106, i64 64, i64 64, i64 0, i32 0, metadata !135} ; [ DW_TAG_member ] [n] [line 106, size 64, align 64, offset 0] [from lua_Number]
!135 = metadata !{i32 786454, metadata !90, null, metadata !"lua_Number", i32 89, i64 0, i64 0, i64 0, i32 0, metadata !136} ; [ DW_TAG_typedef ] [lua_Number] [line 89, size 0, align 0, offset 0] [from double]
!136 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!137 = metadata !{i32 786445, metadata !97, metadata !115, metadata !"tt_", i32 114, i64 32, i64 32, i64 64, i32 0, metadata !125} ; [ DW_TAG_member ] [tt_] [line 114, size 32, align 32, offset 64] [from int]
!138 = metadata !{i32 786445, metadata !92, metadata !91, metadata !"l_G", i32 164, i64 32, i64 32, i64 128, i32 0, metadata !139} ; [ DW_TAG_member ] [l_G] [line 164, size 32, align 32, offset 128] [from ]
!139 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !140} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from global_State]
!140 = metadata !{i32 786454, metadata !92, null, metadata !"global_State", i32 153, i64 0, i64 0, i64 0, i32 0, metadata !141} ; [ DW_TAG_typedef ] [global_State] [line 153, size 0, align 0, offset 0] [from global_State]
!141 = metadata !{i32 786451, metadata !92, null, metadata !"global_State", i32 118, i64 5568, i64 64, i32 0, i32 0, null, metadata !142, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [global_State] [line 118, size 5568, align 64, offset 0] [def] [from ]
!142 = metadata !{metadata !143, metadata !151, metadata !152, metadata !155, metadata !156, metadata !158, metadata !159, metadata !183, metadata !184, metadata !185, metadata !186, metadata !187, metadata !188, metadata !189, metadata !190, metadata !192, metadata !193, metadata !194, metadata !195, metadata !196, metadata !197, metadata !198, metadata !199, metadata !200, metadata !202, metadata !203, metadata !204, metadata !205, metadata !206, metadata !207, metadata !210, metadata !211, metadata !215, metadata !249}
!143 = metadata !{i32 786445, metadata !92, metadata !141, metadata !"frealloc", i32 119, i64 32, i64 32, i64 0, i32 0, metadata !144} ; [ DW_TAG_member ] [frealloc] [line 119, size 32, align 32, offset 0] [from lua_Alloc]
!144 = metadata !{i32 786454, metadata !90, null, metadata !"lua_Alloc", i32 124, i64 0, i64 0, i64 0, i32 0, metadata !145} ; [ DW_TAG_typedef ] [lua_Alloc] [line 124, size 0, align 0, offset 0] [from ]
!145 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !146} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!146 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !147, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!147 = metadata !{metadata !123, metadata !123, metadata !123, metadata !148, metadata !148}
!148 = metadata !{i32 786454, metadata !149, null, metadata !"size_t", i32 216, i64 0, i64 0, i64 0, i32 0, metadata !150} ; [ DW_TAG_typedef ] [size_t] [line 216, size 0, align 0, offset 0] [from unsigned int]
!149 = metadata !{metadata !"D:/Xilinx/SDx/2016.3/SDK/gnu/aarch32/nt/gcc-arm-linux-gnueabi/lib/gcc/arm-linux-gnueabihf/5.2.1/include\5Cstddef.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!150 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!151 = metadata !{i32 786445, metadata !92, metadata !141, metadata !"ud", i32 120, i64 32, i64 32, i64 32, i32 0, metadata !123} ; [ DW_TAG_member ] [ud] [line 120, size 32, align 32, offset 32] [from ]
!152 = metadata !{i32 786445, metadata !92, metadata !141, metadata !"totalbytes", i32 121, i64 32, i64 32, i64 64, i32 0, metadata !153} ; [ DW_TAG_member ] [totalbytes] [line 121, size 32, align 32, offset 64] [from l_mem]
!153 = metadata !{i32 786454, metadata !103, null, metadata !"l_mem", i32 27, i64 0, i64 0, i64 0, i32 0, metadata !154} ; [ DW_TAG_typedef ] [l_mem] [line 27, size 0, align 0, offset 0] [from ptrdiff_t]
!154 = metadata !{i32 786454, metadata !149, null, metadata !"ptrdiff_t", i32 149, i64 0, i64 0, i64 0, i32 0, metadata !125} ; [ DW_TAG_typedef ] [ptrdiff_t] [line 149, size 0, align 0, offset 0] [from int]
!155 = metadata !{i32 786445, metadata !92, metadata !141, metadata !"GCdebt", i32 122, i64 32, i64 32, i64 96, i32 0, metadata !153} ; [ DW_TAG_member ] [GCdebt] [line 122, size 32, align 32, offset 96] [from l_mem]
!156 = metadata !{i32 786445, metadata !92, metadata !141, metadata !"GCmemtrav", i32 123, i64 32, i64 32, i64 128, i32 0, metadata !157} ; [ DW_TAG_member ] [GCmemtrav] [line 123, size 32, align 32, offset 128] [from lu_mem]
!157 = metadata !{i32 786454, metadata !103, null, metadata !"lu_mem", i32 26, i64 0, i64 0, i64 0, i32 0, metadata !148} ; [ DW_TAG_typedef ] [lu_mem] [line 26, size 0, align 0, offset 0] [from size_t]
!158 = metadata !{i32 786445, metadata !92, metadata !141, metadata !"GCestimate", i32 124, i64 32, i64 32, i64 160, i32 0, metadata !157} ; [ DW_TAG_member ] [GCestimate] [line 124, size 32, align 32, offset 160] [from lu_mem]
!159 = metadata !{i32 786445, metadata !92, metadata !141, metadata !"strt", i32 125, i64 96, i64 32, i64 192, i32 0, metadata !160} ; [ DW_TAG_member ] [strt] [line 125, size 96, align 32, offset 192] [from stringtable]
!160 = metadata !{i32 786454, metadata !92, null, metadata !"stringtable", i32 62, i64 0, i64 0, i64 0, i32 0, metadata !161} ; [ DW_TAG_typedef ] [stringtable] [line 62, size 0, align 0, offset 0] [from stringtable]
!161 = metadata !{i32 786451, metadata !92, null, metadata !"stringtable", i32 58, i64 96, i64 32, i32 0, i32 0, null, metadata !162, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [stringtable] [line 58, size 96, align 32, offset 0] [def] [from ]
!162 = metadata !{metadata !163, metadata !181, metadata !182}
!163 = metadata !{i32 786445, metadata !92, metadata !161, metadata !"hash", i32 59, i64 32, i64 32, i64 0, i32 0, metadata !164} ; [ DW_TAG_member ] [hash] [line 59, size 32, align 32, offset 0] [from ]
!164 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !165} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!165 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !166} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from TString]
!166 = metadata !{i32 786454, metadata !97, null, metadata !"TString", i32 312, i64 0, i64 0, i64 0, i32 0, metadata !167} ; [ DW_TAG_typedef ] [TString] [line 312, size 0, align 0, offset 0] [from TString]
!167 = metadata !{i32 786451, metadata !97, null, metadata !"TString", i32 303, i64 128, i64 32, i32 0, i32 0, null, metadata !168, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [TString] [line 303, size 128, align 32, offset 0] [def] [from ]
!168 = metadata !{metadata !169, metadata !170, metadata !171, metadata !172, metadata !173, metadata !174, metadata !175}
!169 = metadata !{i32 786445, metadata !97, metadata !167, metadata !"next", i32 304, i64 32, i64 32, i64 0, i32 0, metadata !95} ; [ DW_TAG_member ] [next] [line 304, size 32, align 32, offset 0] [from ]
!170 = metadata !{i32 786445, metadata !97, metadata !167, metadata !"tt", i32 304, i64 8, i64 8, i64 32, i32 0, metadata !102} ; [ DW_TAG_member ] [tt] [line 304, size 8, align 8, offset 32] [from lu_byte]
!171 = metadata !{i32 786445, metadata !97, metadata !167, metadata !"marked", i32 304, i64 8, i64 8, i64 40, i32 0, metadata !102} ; [ DW_TAG_member ] [marked] [line 304, size 8, align 8, offset 40] [from lu_byte]
!172 = metadata !{i32 786445, metadata !97, metadata !167, metadata !"extra", i32 305, i64 8, i64 8, i64 48, i32 0, metadata !102} ; [ DW_TAG_member ] [extra] [line 305, size 8, align 8, offset 48] [from lu_byte]
!173 = metadata !{i32 786445, metadata !97, metadata !167, metadata !"shrlen", i32 306, i64 8, i64 8, i64 56, i32 0, metadata !102} ; [ DW_TAG_member ] [shrlen] [line 306, size 8, align 8, offset 56] [from lu_byte]
!174 = metadata !{i32 786445, metadata !97, metadata !167, metadata !"hash", i32 307, i64 32, i64 32, i64 64, i32 0, metadata !150} ; [ DW_TAG_member ] [hash] [line 307, size 32, align 32, offset 64] [from unsigned int]
!175 = metadata !{i32 786445, metadata !97, metadata !167, metadata !"u", i32 311, i64 32, i64 32, i64 96, i32 0, metadata !176} ; [ DW_TAG_member ] [u] [line 311, size 32, align 32, offset 96] [from ]
!176 = metadata !{i32 786455, metadata !97, metadata !167, metadata !"", i32 308, i64 32, i64 32, i64 0, i32 0, null, metadata !177, i32 0, null, null, null} ; [ DW_TAG_union_type ] [line 308, size 32, align 32, offset 0] [def] [from ]
!177 = metadata !{metadata !178, metadata !179}
!178 = metadata !{i32 786445, metadata !97, metadata !176, metadata !"lnglen", i32 309, i64 32, i64 32, i64 0, i32 0, metadata !148} ; [ DW_TAG_member ] [lnglen] [line 309, size 32, align 32, offset 0] [from size_t]
!179 = metadata !{i32 786445, metadata !97, metadata !176, metadata !"hnext", i32 310, i64 32, i64 32, i64 0, i32 0, metadata !180} ; [ DW_TAG_member ] [hnext] [line 310, size 32, align 32, offset 0] [from ]
!180 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !167} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from TString]
!181 = metadata !{i32 786445, metadata !92, metadata !161, metadata !"nuse", i32 60, i64 32, i64 32, i64 32, i32 0, metadata !125} ; [ DW_TAG_member ] [nuse] [line 60, size 32, align 32, offset 32] [from int]
!182 = metadata !{i32 786445, metadata !92, metadata !161, metadata !"size", i32 61, i64 32, i64 32, i64 64, i32 0, metadata !125} ; [ DW_TAG_member ] [size] [line 61, size 32, align 32, offset 64] [from int]
!183 = metadata !{i32 786445, metadata !92, metadata !141, metadata !"l_registry", i32 126, i64 128, i64 64, i64 320, i32 0, metadata !114} ; [ DW_TAG_member ] [l_registry] [line 126, size 128, align 64, offset 320] [from TValue]
!184 = metadata !{i32 786445, metadata !92, metadata !141, metadata !"seed", i32 127, i64 32, i64 32, i64 448, i32 0, metadata !150} ; [ DW_TAG_member ] [seed] [line 127, size 32, align 32, offset 448] [from unsigned int]
!185 = metadata !{i32 786445, metadata !92, metadata !141, metadata !"currentwhite", i32 128, i64 8, i64 8, i64 480, i32 0, metadata !102} ; [ DW_TAG_member ] [currentwhite] [line 128, size 8, align 8, offset 480] [from lu_byte]
!186 = metadata !{i32 786445, metadata !92, metadata !141, metadata !"gcstate", i32 129, i64 8, i64 8, i64 488, i32 0, metadata !102} ; [ DW_TAG_member ] [gcstate] [line 129, size 8, align 8, offset 488] [from lu_byte]
!187 = metadata !{i32 786445, metadata !92, metadata !141, metadata !"gckind", i32 130, i64 8, i64 8, i64 496, i32 0, metadata !102} ; [ DW_TAG_member ] [gckind] [line 130, size 8, align 8, offset 496] [from lu_byte]
!188 = metadata !{i32 786445, metadata !92, metadata !141, metadata !"gcrunning", i32 131, i64 8, i64 8, i64 504, i32 0, metadata !102} ; [ DW_TAG_member ] [gcrunning] [line 131, size 8, align 8, offset 504] [from lu_byte]
!189 = metadata !{i32 786445, metadata !92, metadata !141, metadata !"allgc", i32 132, i64 32, i64 32, i64 512, i32 0, metadata !95} ; [ DW_TAG_member ] [allgc] [line 132, size 32, align 32, offset 512] [from ]
!190 = metadata !{i32 786445, metadata !92, metadata !141, metadata !"sweepgc", i32 133, i64 32, i64 32, i64 544, i32 0, metadata !191} ; [ DW_TAG_member ] [sweepgc] [line 133, size 32, align 32, offset 544] [from ]
!191 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !95} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!192 = metadata !{i32 786445, metadata !92, metadata !141, metadata !"finobj", i32 134, i64 32, i64 32, i64 576, i32 0, metadata !95} ; [ DW_TAG_member ] [finobj] [line 134, size 32, align 32, offset 576] [from ]
!193 = metadata !{i32 786445, metadata !92, metadata !141, metadata !"gray", i32 135, i64 32, i64 32, i64 608, i32 0, metadata !95} ; [ DW_TAG_member ] [gray] [line 135, size 32, align 32, offset 608] [from ]
!194 = metadata !{i32 786445, metadata !92, metadata !141, metadata !"grayagain", i32 136, i64 32, i64 32, i64 640, i32 0, metadata !95} ; [ DW_TAG_member ] [grayagain] [line 136, size 32, align 32, offset 640] [from ]
!195 = metadata !{i32 786445, metadata !92, metadata !141, metadata !"weak", i32 137, i64 32, i64 32, i64 672, i32 0, metadata !95} ; [ DW_TAG_member ] [weak] [line 137, size 32, align 32, offset 672] [from ]
!196 = metadata !{i32 786445, metadata !92, metadata !141, metadata !"ephemeron", i32 138, i64 32, i64 32, i64 704, i32 0, metadata !95} ; [ DW_TAG_member ] [ephemeron] [line 138, size 32, align 32, offset 704] [from ]
!197 = metadata !{i32 786445, metadata !92, metadata !141, metadata !"allweak", i32 139, i64 32, i64 32, i64 736, i32 0, metadata !95} ; [ DW_TAG_member ] [allweak] [line 139, size 32, align 32, offset 736] [from ]
!198 = metadata !{i32 786445, metadata !92, metadata !141, metadata !"tobefnz", i32 140, i64 32, i64 32, i64 768, i32 0, metadata !95} ; [ DW_TAG_member ] [tobefnz] [line 140, size 32, align 32, offset 768] [from ]
!199 = metadata !{i32 786445, metadata !92, metadata !141, metadata !"fixedgc", i32 141, i64 32, i64 32, i64 800, i32 0, metadata !95} ; [ DW_TAG_member ] [fixedgc] [line 141, size 32, align 32, offset 800] [from ]
!200 = metadata !{i32 786445, metadata !92, metadata !141, metadata !"twups", i32 142, i64 32, i64 32, i64 832, i32 0, metadata !201} ; [ DW_TAG_member ] [twups] [line 142, size 32, align 32, offset 832] [from ]
!201 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !91} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from lua_State]
!202 = metadata !{i32 786445, metadata !92, metadata !141, metadata !"gcfinnum", i32 143, i64 32, i64 32, i64 864, i32 0, metadata !150} ; [ DW_TAG_member ] [gcfinnum] [line 143, size 32, align 32, offset 864] [from unsigned int]
!203 = metadata !{i32 786445, metadata !92, metadata !141, metadata !"gcpause", i32 144, i64 32, i64 32, i64 896, i32 0, metadata !125} ; [ DW_TAG_member ] [gcpause] [line 144, size 32, align 32, offset 896] [from int]
!204 = metadata !{i32 786445, metadata !92, metadata !141, metadata !"gcstepmul", i32 145, i64 32, i64 32, i64 928, i32 0, metadata !125} ; [ DW_TAG_member ] [gcstepmul] [line 145, size 32, align 32, offset 928] [from int]
!205 = metadata !{i32 786445, metadata !92, metadata !141, metadata !"panic", i32 146, i64 32, i64 32, i64 960, i32 0, metadata !127} ; [ DW_TAG_member ] [panic] [line 146, size 32, align 32, offset 960] [from lua_CFunction]
!206 = metadata !{i32 786445, metadata !92, metadata !141, metadata !"mainthread", i32 147, i64 32, i64 32, i64 992, i32 0, metadata !201} ; [ DW_TAG_member ] [mainthread] [line 147, size 32, align 32, offset 992] [from ]
!207 = metadata !{i32 786445, metadata !92, metadata !141, metadata !"version", i32 148, i64 32, i64 32, i64 1024, i32 0, metadata !208} ; [ DW_TAG_member ] [version] [line 148, size 32, align 32, offset 1024] [from ]
!208 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !209} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!209 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !135} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from lua_Number]
!210 = metadata !{i32 786445, metadata !92, metadata !141, metadata !"memerrmsg", i32 149, i64 32, i64 32, i64 1056, i32 0, metadata !165} ; [ DW_TAG_member ] [memerrmsg] [line 149, size 32, align 32, offset 1056] [from ]
!211 = metadata !{i32 786445, metadata !92, metadata !141, metadata !"tmname", i32 150, i64 768, i64 32, i64 1088, i32 0, metadata !212} ; [ DW_TAG_member ] [tmname] [line 150, size 768, align 32, offset 1088] [from ]
!212 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 768, i64 32, i32 0, i32 0, metadata !165, metadata !213, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 768, align 32, offset 0] [from ]
!213 = metadata !{metadata !214}
!214 = metadata !{i32 786465, i64 0, i64 24}      ; [ DW_TAG_subrange_type ] [0, 23]
!215 = metadata !{i32 786445, metadata !92, metadata !141, metadata !"mt", i32 151, i64 288, i64 32, i64 1856, i32 0, metadata !216} ; [ DW_TAG_member ] [mt] [line 151, size 288, align 32, offset 1856] [from ]
!216 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 288, i64 32, i32 0, i32 0, metadata !217, metadata !247, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 288, align 32, offset 0] [from ]
!217 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !218} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from Table]
!218 = metadata !{i32 786451, metadata !97, null, metadata !"Table", i32 497, i64 256, i64 32, i32 0, i32 0, null, metadata !219, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [Table] [line 497, size 256, align 32, offset 0] [def] [from ]
!219 = metadata !{metadata !220, metadata !221, metadata !222, metadata !223, metadata !224, metadata !225, metadata !226, metadata !227, metadata !244, metadata !245, metadata !246}
!220 = metadata !{i32 786445, metadata !97, metadata !218, metadata !"next", i32 498, i64 32, i64 32, i64 0, i32 0, metadata !95} ; [ DW_TAG_member ] [next] [line 498, size 32, align 32, offset 0] [from ]
!221 = metadata !{i32 786445, metadata !97, metadata !218, metadata !"tt", i32 498, i64 8, i64 8, i64 32, i32 0, metadata !102} ; [ DW_TAG_member ] [tt] [line 498, size 8, align 8, offset 32] [from lu_byte]
!222 = metadata !{i32 786445, metadata !97, metadata !218, metadata !"marked", i32 498, i64 8, i64 8, i64 40, i32 0, metadata !102} ; [ DW_TAG_member ] [marked] [line 498, size 8, align 8, offset 40] [from lu_byte]
!223 = metadata !{i32 786445, metadata !97, metadata !218, metadata !"flags", i32 499, i64 8, i64 8, i64 48, i32 0, metadata !102} ; [ DW_TAG_member ] [flags] [line 499, size 8, align 8, offset 48] [from lu_byte]
!224 = metadata !{i32 786445, metadata !97, metadata !218, metadata !"lsizenode", i32 500, i64 8, i64 8, i64 56, i32 0, metadata !102} ; [ DW_TAG_member ] [lsizenode] [line 500, size 8, align 8, offset 56] [from lu_byte]
!225 = metadata !{i32 786445, metadata !97, metadata !218, metadata !"sizearray", i32 501, i64 32, i64 32, i64 64, i32 0, metadata !150} ; [ DW_TAG_member ] [sizearray] [line 501, size 32, align 32, offset 64] [from unsigned int]
!226 = metadata !{i32 786445, metadata !97, metadata !218, metadata !"array", i32 502, i64 32, i64 32, i64 96, i32 0, metadata !113} ; [ DW_TAG_member ] [array] [line 502, size 32, align 32, offset 96] [from ]
!227 = metadata !{i32 786445, metadata !97, metadata !218, metadata !"node", i32 503, i64 32, i64 32, i64 128, i32 0, metadata !228} ; [ DW_TAG_member ] [node] [line 503, size 32, align 32, offset 128] [from ]
!228 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !229} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from Node]
!229 = metadata !{i32 786454, metadata !97, null, metadata !"Node", i32 494, i64 0, i64 0, i64 0, i32 0, metadata !230} ; [ DW_TAG_typedef ] [Node] [line 494, size 0, align 0, offset 0] [from Node]
!230 = metadata !{i32 786451, metadata !97, null, metadata !"Node", i32 491, i64 256, i64 64, i32 0, i32 0, null, metadata !231, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [Node] [line 491, size 256, align 64, offset 0] [def] [from ]
!231 = metadata !{metadata !232, metadata !233}
!232 = metadata !{i32 786445, metadata !97, metadata !230, metadata !"i_val", i32 492, i64 128, i64 64, i64 0, i32 0, metadata !114} ; [ DW_TAG_member ] [i_val] [line 492, size 128, align 64, offset 0] [from TValue]
!233 = metadata !{i32 786445, metadata !97, metadata !230, metadata !"i_key", i32 493, i64 128, i64 64, i64 128, i32 0, metadata !234} ; [ DW_TAG_member ] [i_key] [line 493, size 128, align 64, offset 128] [from TKey]
!234 = metadata !{i32 786454, metadata !97, null, metadata !"TKey", i32 481, i64 0, i64 0, i64 0, i32 0, metadata !235} ; [ DW_TAG_typedef ] [TKey] [line 481, size 0, align 0, offset 0] [from TKey]
!235 = metadata !{i32 786455, metadata !97, null, metadata !"TKey", i32 475, i64 128, i64 64, i64 0, i32 0, null, metadata !236, i32 0, null, null, null} ; [ DW_TAG_union_type ] [TKey] [line 475, size 128, align 64, offset 0] [def] [from ]
!236 = metadata !{metadata !237, metadata !243}
!237 = metadata !{i32 786445, metadata !97, metadata !235, metadata !"nk", i32 479, i64 128, i64 64, i64 0, i32 0, metadata !238} ; [ DW_TAG_member ] [nk] [line 479, size 128, align 64, offset 0] [from ]
!238 = metadata !{i32 786451, metadata !97, metadata !235, metadata !"", i32 476, i64 128, i64 64, i32 0, i32 0, null, metadata !239, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 476, size 128, align 64, offset 0] [def] [from ]
!239 = metadata !{metadata !240, metadata !241, metadata !242}
!240 = metadata !{i32 786445, metadata !97, metadata !238, metadata !"value_", i32 477, i64 64, i64 64, i64 0, i32 0, metadata !118} ; [ DW_TAG_member ] [value_] [line 477, size 64, align 64, offset 0] [from Value]
!241 = metadata !{i32 786445, metadata !97, metadata !238, metadata !"tt_", i32 477, i64 32, i64 32, i64 64, i32 0, metadata !125} ; [ DW_TAG_member ] [tt_] [line 477, size 32, align 32, offset 64] [from int]
!242 = metadata !{i32 786445, metadata !97, metadata !238, metadata !"next", i32 478, i64 32, i64 32, i64 96, i32 0, metadata !125} ; [ DW_TAG_member ] [next] [line 478, size 32, align 32, offset 96] [from int]
!243 = metadata !{i32 786445, metadata !97, metadata !235, metadata !"tvk", i32 480, i64 128, i64 64, i64 0, i32 0, metadata !114} ; [ DW_TAG_member ] [tvk] [line 480, size 128, align 64, offset 0] [from TValue]
!244 = metadata !{i32 786445, metadata !97, metadata !218, metadata !"lastfree", i32 504, i64 32, i64 32, i64 160, i32 0, metadata !228} ; [ DW_TAG_member ] [lastfree] [line 504, size 32, align 32, offset 160] [from ]
!245 = metadata !{i32 786445, metadata !97, metadata !218, metadata !"metatable", i32 505, i64 32, i64 32, i64 192, i32 0, metadata !217} ; [ DW_TAG_member ] [metatable] [line 505, size 32, align 32, offset 192] [from ]
!246 = metadata !{i32 786445, metadata !97, metadata !218, metadata !"gclist", i32 506, i64 32, i64 32, i64 224, i32 0, metadata !95} ; [ DW_TAG_member ] [gclist] [line 506, size 32, align 32, offset 224] [from ]
!247 = metadata !{metadata !248}
!248 = metadata !{i32 786465, i64 0, i64 9}       ; [ DW_TAG_subrange_type ] [0, 8]
!249 = metadata !{i32 786445, metadata !92, metadata !141, metadata !"strcache", i32 152, i64 3392, i64 32, i64 2144, i32 0, metadata !250} ; [ DW_TAG_member ] [strcache] [line 152, size 3392, align 32, offset 2144] [from ]
!250 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 3392, i64 32, i32 0, i32 0, metadata !165, metadata !251, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 3392, align 32, offset 0] [from ]
!251 = metadata !{metadata !252, metadata !253}
!252 = metadata !{i32 786465, i64 0, i64 53}      ; [ DW_TAG_subrange_type ] [0, 52]
!253 = metadata !{i32 786465, i64 0, i64 2}       ; [ DW_TAG_subrange_type ] [0, 1]
!254 = metadata !{i32 786445, metadata !92, metadata !91, metadata !"ci", i32 165, i64 32, i64 32, i64 160, i32 0, metadata !255} ; [ DW_TAG_member ] [ci] [line 165, size 32, align 32, offset 160] [from ]
!255 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !256} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from CallInfo]
!256 = metadata !{i32 786454, metadata !92, null, metadata !"CallInfo", i32 92, i64 0, i64 0, i64 0, i32 0, metadata !257} ; [ DW_TAG_typedef ] [CallInfo] [line 92, size 0, align 0, offset 0] [from CallInfo]
!257 = metadata !{i32 786451, metadata !92, null, metadata !"CallInfo", i32 74, i64 288, i64 32, i32 0, i32 0, null, metadata !258, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [CallInfo] [line 74, size 288, align 32, offset 0] [def] [from ]
!258 = metadata !{metadata !259, metadata !260, metadata !261, metadata !263, metadata !264, metadata !288, metadata !289, metadata !291}
!259 = metadata !{i32 786445, metadata !92, metadata !257, metadata !"func", i32 75, i64 32, i64 32, i64 0, i32 0, metadata !112} ; [ DW_TAG_member ] [func] [line 75, size 32, align 32, offset 0] [from StkId]
!260 = metadata !{i32 786445, metadata !92, metadata !257, metadata !"top", i32 76, i64 32, i64 32, i64 32, i32 0, metadata !112} ; [ DW_TAG_member ] [top] [line 76, size 32, align 32, offset 32] [from StkId]
!261 = metadata !{i32 786445, metadata !92, metadata !257, metadata !"previous", i32 77, i64 32, i64 32, i64 64, i32 0, metadata !262} ; [ DW_TAG_member ] [previous] [line 77, size 32, align 32, offset 64] [from ]
!262 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !257} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from CallInfo]
!263 = metadata !{i32 786445, metadata !92, metadata !257, metadata !"next", i32 77, i64 32, i64 32, i64 96, i32 0, metadata !262} ; [ DW_TAG_member ] [next] [line 77, size 32, align 32, offset 96] [from ]
!264 = metadata !{i32 786445, metadata !92, metadata !257, metadata !"u", i32 88, i64 96, i64 32, i64 128, i32 0, metadata !265} ; [ DW_TAG_member ] [u] [line 88, size 96, align 32, offset 128] [from ]
!265 = metadata !{i32 786455, metadata !92, metadata !257, metadata !"", i32 78, i64 96, i64 32, i64 0, i32 0, null, metadata !266, i32 0, null, null, null} ; [ DW_TAG_union_type ] [line 78, size 96, align 32, offset 0] [def] [from ]
!266 = metadata !{metadata !267, metadata !275}
!267 = metadata !{i32 786445, metadata !92, metadata !265, metadata !"l", i32 82, i64 64, i64 32, i64 0, i32 0, metadata !268} ; [ DW_TAG_member ] [l] [line 82, size 64, align 32, offset 0] [from ]
!268 = metadata !{i32 786451, metadata !92, metadata !265, metadata !"", i32 79, i64 64, i64 32, i32 0, i32 0, null, metadata !269, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 79, size 64, align 32, offset 0] [def] [from ]
!269 = metadata !{metadata !270, metadata !271}
!270 = metadata !{i32 786445, metadata !92, metadata !268, metadata !"base", i32 80, i64 32, i64 32, i64 0, i32 0, metadata !112} ; [ DW_TAG_member ] [base] [line 80, size 32, align 32, offset 0] [from StkId]
!271 = metadata !{i32 786445, metadata !92, metadata !268, metadata !"savedpc", i32 81, i64 32, i64 32, i64 32, i32 0, metadata !272} ; [ DW_TAG_member ] [savedpc] [line 81, size 32, align 32, offset 32] [from ]
!272 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !273} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!273 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !274} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from Instruction]
!274 = metadata !{i32 786454, metadata !103, null, metadata !"Instruction", i32 163, i64 0, i64 0, i64 0, i32 0, metadata !150} ; [ DW_TAG_typedef ] [Instruction] [line 163, size 0, align 0, offset 0] [from unsigned int]
!275 = metadata !{i32 786445, metadata !92, metadata !265, metadata !"c", i32 87, i64 96, i64 32, i64 0, i32 0, metadata !276} ; [ DW_TAG_member ] [c] [line 87, size 96, align 32, offset 0] [from ]
!276 = metadata !{i32 786451, metadata !92, metadata !265, metadata !"", i32 83, i64 96, i64 32, i32 0, i32 0, null, metadata !277, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 83, size 96, align 32, offset 0] [def] [from ]
!277 = metadata !{metadata !278, metadata !286, metadata !287}
!278 = metadata !{i32 786445, metadata !92, metadata !276, metadata !"k", i32 84, i64 32, i64 32, i64 0, i32 0, metadata !279} ; [ DW_TAG_member ] [k] [line 84, size 32, align 32, offset 0] [from lua_KFunction]
!279 = metadata !{i32 786454, metadata !90, null, metadata !"lua_KFunction", i32 110, i64 0, i64 0, i64 0, i32 0, metadata !280} ; [ DW_TAG_typedef ] [lua_KFunction] [line 110, size 0, align 0, offset 0] [from ]
!280 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !281} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!281 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !282, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!282 = metadata !{metadata !125, metadata !88, metadata !125, metadata !283}
!283 = metadata !{i32 786454, metadata !90, null, metadata !"lua_KContext", i32 99, i64 0, i64 0, i64 0, i32 0, metadata !284} ; [ DW_TAG_typedef ] [lua_KContext] [line 99, size 0, align 0, offset 0] [from intptr_t]
!284 = metadata !{i32 786454, metadata !285, null, metadata !"intptr_t", i32 125, i64 0, i64 0, i64 0, i32 0, metadata !125} ; [ DW_TAG_typedef ] [intptr_t] [line 125, size 0, align 0, offset 0] [from int]
!285 = metadata !{metadata !"D:/Xilinx/SDx/2016.3/SDK/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include\5Cstdint.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!286 = metadata !{i32 786445, metadata !92, metadata !276, metadata !"old_errfunc", i32 85, i64 32, i64 32, i64 32, i32 0, metadata !154} ; [ DW_TAG_member ] [old_errfunc] [line 85, size 32, align 32, offset 32] [from ptrdiff_t]
!287 = metadata !{i32 786445, metadata !92, metadata !276, metadata !"ctx", i32 86, i64 32, i64 32, i64 64, i32 0, metadata !283} ; [ DW_TAG_member ] [ctx] [line 86, size 32, align 32, offset 64] [from lua_KContext]
!288 = metadata !{i32 786445, metadata !92, metadata !257, metadata !"extra", i32 89, i64 32, i64 32, i64 224, i32 0, metadata !154} ; [ DW_TAG_member ] [extra] [line 89, size 32, align 32, offset 224] [from ptrdiff_t]
!289 = metadata !{i32 786445, metadata !92, metadata !257, metadata !"nresults", i32 90, i64 16, i64 16, i64 256, i32 0, metadata !290} ; [ DW_TAG_member ] [nresults] [line 90, size 16, align 16, offset 256] [from short]
!290 = metadata !{i32 786468, null, null, metadata !"short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [short] [line 0, size 16, align 16, offset 0, enc DW_ATE_signed]
!291 = metadata !{i32 786445, metadata !92, metadata !257, metadata !"callstatus", i32 91, i64 8, i64 8, i64 272, i32 0, metadata !102} ; [ DW_TAG_member ] [callstatus] [line 91, size 8, align 8, offset 272] [from lu_byte]
!292 = metadata !{i32 786445, metadata !92, metadata !91, metadata !"oldpc", i32 166, i64 32, i64 32, i64 192, i32 0, metadata !272} ; [ DW_TAG_member ] [oldpc] [line 166, size 32, align 32, offset 192] [from ]
!293 = metadata !{i32 786445, metadata !92, metadata !91, metadata !"stack_last", i32 167, i64 32, i64 32, i64 224, i32 0, metadata !112} ; [ DW_TAG_member ] [stack_last] [line 167, size 32, align 32, offset 224] [from StkId]
!294 = metadata !{i32 786445, metadata !92, metadata !91, metadata !"stack", i32 168, i64 32, i64 32, i64 256, i32 0, metadata !112} ; [ DW_TAG_member ] [stack] [line 168, size 32, align 32, offset 256] [from StkId]
!295 = metadata !{i32 786445, metadata !92, metadata !91, metadata !"openupval", i32 169, i64 32, i64 32, i64 288, i32 0, metadata !296} ; [ DW_TAG_member ] [openupval] [line 169, size 32, align 32, offset 288] [from ]
!296 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !297} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from UpVal]
!297 = metadata !{i32 786454, metadata !97, null, metadata !"UpVal", i32 436, i64 0, i64 0, i64 0, i32 0, metadata !298} ; [ DW_TAG_typedef ] [UpVal] [line 436, size 0, align 0, offset 0] [from UpVal]
!298 = metadata !{i32 786451, metadata !299, null, metadata !"UpVal", i32 35, i64 192, i64 64, i32 0, i32 0, null, metadata !300, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [UpVal] [line 35, size 192, align 64, offset 0] [def] [from ]
!299 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lfunc.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!300 = metadata !{metadata !301, metadata !302, metadata !303}
!301 = metadata !{i32 786445, metadata !299, metadata !298, metadata !"v", i32 36, i64 32, i64 32, i64 0, i32 0, metadata !113} ; [ DW_TAG_member ] [v] [line 36, size 32, align 32, offset 0] [from ]
!302 = metadata !{i32 786445, metadata !299, metadata !298, metadata !"refcount", i32 37, i64 32, i64 32, i64 32, i32 0, metadata !157} ; [ DW_TAG_member ] [refcount] [line 37, size 32, align 32, offset 32] [from lu_mem]
!303 = metadata !{i32 786445, metadata !299, metadata !298, metadata !"u", i32 44, i64 128, i64 64, i64 64, i32 0, metadata !304} ; [ DW_TAG_member ] [u] [line 44, size 128, align 64, offset 64] [from ]
!304 = metadata !{i32 786455, metadata !299, metadata !298, metadata !"", i32 38, i64 128, i64 64, i64 0, i32 0, null, metadata !305, i32 0, null, null, null} ; [ DW_TAG_union_type ] [line 38, size 128, align 64, offset 0] [def] [from ]
!305 = metadata !{metadata !306, metadata !311}
!306 = metadata !{i32 786445, metadata !299, metadata !304, metadata !"open", i32 42, i64 64, i64 32, i64 0, i32 0, metadata !307} ; [ DW_TAG_member ] [open] [line 42, size 64, align 32, offset 0] [from ]
!307 = metadata !{i32 786451, metadata !299, metadata !304, metadata !"", i32 39, i64 64, i64 32, i32 0, i32 0, null, metadata !308, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 39, size 64, align 32, offset 0] [def] [from ]
!308 = metadata !{metadata !309, metadata !310}
!309 = metadata !{i32 786445, metadata !299, metadata !307, metadata !"next", i32 40, i64 32, i64 32, i64 0, i32 0, metadata !296} ; [ DW_TAG_member ] [next] [line 40, size 32, align 32, offset 0] [from ]
!310 = metadata !{i32 786445, metadata !299, metadata !307, metadata !"touched", i32 41, i64 32, i64 32, i64 32, i32 0, metadata !125} ; [ DW_TAG_member ] [touched] [line 41, size 32, align 32, offset 32] [from int]
!311 = metadata !{i32 786445, metadata !299, metadata !304, metadata !"value", i32 43, i64 128, i64 64, i64 0, i32 0, metadata !114} ; [ DW_TAG_member ] [value] [line 43, size 128, align 64, offset 0] [from TValue]
!312 = metadata !{i32 786445, metadata !92, metadata !91, metadata !"gclist", i32 170, i64 32, i64 32, i64 320, i32 0, metadata !95} ; [ DW_TAG_member ] [gclist] [line 170, size 32, align 32, offset 320] [from ]
!313 = metadata !{i32 786445, metadata !92, metadata !91, metadata !"twups", i32 171, i64 32, i64 32, i64 352, i32 0, metadata !201} ; [ DW_TAG_member ] [twups] [line 171, size 32, align 32, offset 352] [from ]
!314 = metadata !{i32 786445, metadata !92, metadata !91, metadata !"errorJmp", i32 172, i64 32, i64 32, i64 384, i32 0, metadata !315} ; [ DW_TAG_member ] [errorJmp] [line 172, size 32, align 32, offset 384] [from ]
!315 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !316} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from lua_longjmp]
!316 = metadata !{i32 786451, metadata !84, null, metadata !"lua_longjmp", i32 84, i64 3264, i64 64, i32 0, i32 0, null, metadata !317, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [lua_longjmp] [line 84, size 3264, align 64, offset 0] [def] [from ]
!317 = metadata !{metadata !318, metadata !319, metadata !344}
!318 = metadata !{i32 786445, metadata !84, metadata !316, metadata !"previous", i32 85, i64 32, i64 32, i64 0, i32 0, metadata !315} ; [ DW_TAG_member ] [previous] [line 85, size 32, align 32, offset 0] [from ]
!319 = metadata !{i32 786445, metadata !84, metadata !316, metadata !"b", i32 86, i64 3136, i64 64, i64 64, i32 0, metadata !320} ; [ DW_TAG_member ] [b] [line 86, size 3136, align 64, offset 64] [from jmp_buf]
!320 = metadata !{i32 786454, metadata !321, null, metadata !"jmp_buf", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !322} ; [ DW_TAG_typedef ] [jmp_buf] [line 48, size 0, align 0, offset 0] [from ]
!321 = metadata !{metadata !"D:/Xilinx/SDx/2016.3/SDK/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include\5Csetjmp.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!322 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 3136, i64 64, i32 0, i32 0, metadata !323, metadata !342, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 3136, align 64, offset 0] [from __jmp_buf_tag]
!323 = metadata !{i32 786451, metadata !321, null, metadata !"__jmp_buf_tag", i32 34, i64 3136, i64 64, i32 0, i32 0, null, metadata !324, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [__jmp_buf_tag] [line 34, size 3136, align 64, offset 0] [def] [from ]
!324 = metadata !{metadata !325, metadata !331, metadata !332}
!325 = metadata !{i32 786445, metadata !321, metadata !323, metadata !"__jmpbuf", i32 40, i64 2048, i64 64, i64 0, i32 0, metadata !326} ; [ DW_TAG_member ] [__jmpbuf] [line 40, size 2048, align 64, offset 0] [from __jmp_buf]
!326 = metadata !{i32 786454, metadata !327, null, metadata !"__jmp_buf", i32 33, i64 0, i64 0, i64 0, i32 0, metadata !328} ; [ DW_TAG_typedef ] [__jmp_buf] [line 33, size 0, align 0, offset 0] [from ]
!327 = metadata !{metadata !"D:/Xilinx/SDx/2016.3/SDK/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include\5Cbits/setjmp.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!328 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 2048, i64 32, i32 0, i32 0, metadata !125, metadata !329, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 2048, align 32, offset 0] [from int]
!329 = metadata !{metadata !330}
!330 = metadata !{i32 786465, i64 0, i64 64}      ; [ DW_TAG_subrange_type ] [0, 63]
!331 = metadata !{i32 786445, metadata !321, metadata !323, metadata !"__mask_was_saved", i32 41, i64 32, i64 32, i64 2048, i32 0, metadata !125} ; [ DW_TAG_member ] [__mask_was_saved] [line 41, size 32, align 32, offset 2048] [from int]
!332 = metadata !{i32 786445, metadata !321, metadata !323, metadata !"__saved_mask", i32 42, i64 1024, i64 32, i64 2080, i32 0, metadata !333} ; [ DW_TAG_member ] [__saved_mask] [line 42, size 1024, align 32, offset 2080] [from __sigset_t]
!333 = metadata !{i32 786454, metadata !334, null, metadata !"__sigset_t", i32 30, i64 0, i64 0, i64 0, i32 0, metadata !335} ; [ DW_TAG_typedef ] [__sigset_t] [line 30, size 0, align 0, offset 0] [from ]
!334 = metadata !{metadata !"D:/Xilinx/SDx/2016.3/SDK/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include\5Cbits/sigset.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!335 = metadata !{i32 786451, metadata !334, null, metadata !"", i32 27, i64 1024, i64 32, i32 0, i32 0, null, metadata !336, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 27, size 1024, align 32, offset 0] [def] [from ]
!336 = metadata !{metadata !337}
!337 = metadata !{i32 786445, metadata !334, metadata !335, metadata !"__val", i32 29, i64 1024, i64 32, i64 0, i32 0, metadata !338} ; [ DW_TAG_member ] [__val] [line 29, size 1024, align 32, offset 0] [from ]
!338 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1024, i64 32, i32 0, i32 0, metadata !339, metadata !340, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 1024, align 32, offset 0] [from long unsigned int]
!339 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!340 = metadata !{metadata !341}
!341 = metadata !{i32 786465, i64 0, i64 32}      ; [ DW_TAG_subrange_type ] [0, 31]
!342 = metadata !{metadata !343}
!343 = metadata !{i32 786465, i64 0, i64 1}       ; [ DW_TAG_subrange_type ] [0, 0]
!344 = metadata !{i32 786445, metadata !84, metadata !316, metadata !"status", i32 87, i64 32, i64 32, i64 3200, i32 0, metadata !345} ; [ DW_TAG_member ] [status] [line 87, size 32, align 32, offset 3200] [from ]
!345 = metadata !{i32 786485, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !125} ; [ DW_TAG_volatile_type ] [line 0, size 0, align 0, offset 0] [from int]
!346 = metadata !{i32 786445, metadata !92, metadata !91, metadata !"base_ci", i32 173, i64 288, i64 32, i64 416, i32 0, metadata !256} ; [ DW_TAG_member ] [base_ci] [line 173, size 288, align 32, offset 416] [from CallInfo]
!347 = metadata !{i32 786445, metadata !92, metadata !91, metadata !"hook", i32 174, i64 32, i64 32, i64 704, i32 0, metadata !348} ; [ DW_TAG_member ] [hook] [line 174, size 32, align 32, offset 704] [from ]
!348 = metadata !{i32 786485, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !349} ; [ DW_TAG_volatile_type ] [line 0, size 0, align 0, offset 0] [from lua_Hook]
!349 = metadata !{i32 786454, metadata !90, null, metadata !"lua_Hook", i32 421, i64 0, i64 0, i64 0, i32 0, metadata !350} ; [ DW_TAG_typedef ] [lua_Hook] [line 421, size 0, align 0, offset 0] [from ]
!350 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !351} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!351 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !352, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!352 = metadata !{null, metadata !88, metadata !353}
!353 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !354} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from lua_Debug]
!354 = metadata !{i32 786454, metadata !90, null, metadata !"lua_Debug", i32 417, i64 0, i64 0, i64 0, i32 0, metadata !355} ; [ DW_TAG_typedef ] [lua_Debug] [line 417, size 0, align 0, offset 0] [from lua_Debug]
!355 = metadata !{i32 786451, metadata !90, null, metadata !"lua_Debug", i32 441, i64 800, i64 32, i32 0, i32 0, null, metadata !356, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [lua_Debug] [line 441, size 800, align 32, offset 0] [def] [from ]
!356 = metadata !{metadata !357, metadata !358, metadata !362, metadata !363, metadata !364, metadata !365, metadata !366, metadata !367, metadata !368, metadata !369, metadata !370, metadata !371, metadata !372, metadata !376}
!357 = metadata !{i32 786445, metadata !90, metadata !355, metadata !"event", i32 442, i64 32, i64 32, i64 0, i32 0, metadata !125} ; [ DW_TAG_member ] [event] [line 442, size 32, align 32, offset 0] [from int]
!358 = metadata !{i32 786445, metadata !90, metadata !355, metadata !"name", i32 443, i64 32, i64 32, i64 32, i32 0, metadata !359} ; [ DW_TAG_member ] [name] [line 443, size 32, align 32, offset 32] [from ]
!359 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !360} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!360 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !361} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!361 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!362 = metadata !{i32 786445, metadata !90, metadata !355, metadata !"namewhat", i32 444, i64 32, i64 32, i64 64, i32 0, metadata !359} ; [ DW_TAG_member ] [namewhat] [line 444, size 32, align 32, offset 64] [from ]
!363 = metadata !{i32 786445, metadata !90, metadata !355, metadata !"what", i32 445, i64 32, i64 32, i64 96, i32 0, metadata !359} ; [ DW_TAG_member ] [what] [line 445, size 32, align 32, offset 96] [from ]
!364 = metadata !{i32 786445, metadata !90, metadata !355, metadata !"source", i32 446, i64 32, i64 32, i64 128, i32 0, metadata !359} ; [ DW_TAG_member ] [source] [line 446, size 32, align 32, offset 128] [from ]
!365 = metadata !{i32 786445, metadata !90, metadata !355, metadata !"currentline", i32 447, i64 32, i64 32, i64 160, i32 0, metadata !125} ; [ DW_TAG_member ] [currentline] [line 447, size 32, align 32, offset 160] [from int]
!366 = metadata !{i32 786445, metadata !90, metadata !355, metadata !"linedefined", i32 448, i64 32, i64 32, i64 192, i32 0, metadata !125} ; [ DW_TAG_member ] [linedefined] [line 448, size 32, align 32, offset 192] [from int]
!367 = metadata !{i32 786445, metadata !90, metadata !355, metadata !"lastlinedefined", i32 449, i64 32, i64 32, i64 224, i32 0, metadata !125} ; [ DW_TAG_member ] [lastlinedefined] [line 449, size 32, align 32, offset 224] [from int]
!368 = metadata !{i32 786445, metadata !90, metadata !355, metadata !"nups", i32 450, i64 8, i64 8, i64 256, i32 0, metadata !104} ; [ DW_TAG_member ] [nups] [line 450, size 8, align 8, offset 256] [from unsigned char]
!369 = metadata !{i32 786445, metadata !90, metadata !355, metadata !"nparams", i32 451, i64 8, i64 8, i64 264, i32 0, metadata !104} ; [ DW_TAG_member ] [nparams] [line 451, size 8, align 8, offset 264] [from unsigned char]
!370 = metadata !{i32 786445, metadata !90, metadata !355, metadata !"isvararg", i32 452, i64 8, i64 8, i64 272, i32 0, metadata !361} ; [ DW_TAG_member ] [isvararg] [line 452, size 8, align 8, offset 272] [from char]
!371 = metadata !{i32 786445, metadata !90, metadata !355, metadata !"istailcall", i32 453, i64 8, i64 8, i64 280, i32 0, metadata !361} ; [ DW_TAG_member ] [istailcall] [line 453, size 8, align 8, offset 280] [from char]
!372 = metadata !{i32 786445, metadata !90, metadata !355, metadata !"short_src", i32 454, i64 480, i64 8, i64 288, i32 0, metadata !373} ; [ DW_TAG_member ] [short_src] [line 454, size 480, align 8, offset 288] [from ]
!373 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 480, i64 8, i32 0, i32 0, metadata !361, metadata !374, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 480, align 8, offset 0] [from char]
!374 = metadata !{metadata !375}
!375 = metadata !{i32 786465, i64 0, i64 60}      ; [ DW_TAG_subrange_type ] [0, 59]
!376 = metadata !{i32 786445, metadata !90, metadata !355, metadata !"i_ci", i32 456, i64 32, i64 32, i64 768, i32 0, metadata !262} ; [ DW_TAG_member ] [i_ci] [line 456, size 32, align 32, offset 768] [from ]
!377 = metadata !{i32 786445, metadata !92, metadata !91, metadata !"errfunc", i32 175, i64 32, i64 32, i64 736, i32 0, metadata !154} ; [ DW_TAG_member ] [errfunc] [line 175, size 32, align 32, offset 736] [from ptrdiff_t]
!378 = metadata !{i32 786445, metadata !92, metadata !91, metadata !"stacksize", i32 176, i64 32, i64 32, i64 768, i32 0, metadata !125} ; [ DW_TAG_member ] [stacksize] [line 176, size 32, align 32, offset 768] [from int]
!379 = metadata !{i32 786445, metadata !92, metadata !91, metadata !"basehookcount", i32 177, i64 32, i64 32, i64 800, i32 0, metadata !125} ; [ DW_TAG_member ] [basehookcount] [line 177, size 32, align 32, offset 800] [from int]
!380 = metadata !{i32 786445, metadata !92, metadata !91, metadata !"hookcount", i32 178, i64 32, i64 32, i64 832, i32 0, metadata !125} ; [ DW_TAG_member ] [hookcount] [line 178, size 32, align 32, offset 832] [from int]
!381 = metadata !{i32 786445, metadata !92, metadata !91, metadata !"nny", i32 179, i64 16, i64 16, i64 864, i32 0, metadata !109} ; [ DW_TAG_member ] [nny] [line 179, size 16, align 16, offset 864] [from unsigned short]
!382 = metadata !{i32 786445, metadata !92, metadata !91, metadata !"nCcalls", i32 180, i64 16, i64 16, i64 880, i32 0, metadata !109} ; [ DW_TAG_member ] [nCcalls] [line 180, size 16, align 16, offset 880] [from unsigned short]
!383 = metadata !{i32 786445, metadata !92, metadata !91, metadata !"hookmask", i32 181, i64 32, i64 32, i64 896, i32 0, metadata !384} ; [ DW_TAG_member ] [hookmask] [line 181, size 32, align 32, offset 896] [from sig_atomic_t]
!384 = metadata !{i32 786454, metadata !385, null, metadata !"sig_atomic_t", i32 40, i64 0, i64 0, i64 0, i32 0, metadata !386} ; [ DW_TAG_typedef ] [sig_atomic_t] [line 40, size 0, align 0, offset 0] [from __sig_atomic_t]
!385 = metadata !{metadata !"D:/Xilinx/SDx/2016.3/SDK/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include\5Csignal.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!386 = metadata !{i32 786454, metadata !334, null, metadata !"__sig_atomic_t", i32 22, i64 0, i64 0, i64 0, i32 0, metadata !125} ; [ DW_TAG_typedef ] [__sig_atomic_t] [line 22, size 0, align 0, offset 0] [from int]
!387 = metadata !{i32 786445, metadata !92, metadata !91, metadata !"allowhook", i32 182, i64 8, i64 8, i64 928, i32 0, metadata !102} ; [ DW_TAG_member ] [allowhook] [line 182, size 8, align 8, offset 928] [from lu_byte]
!388 = metadata !{i32 786478, metadata !84, metadata !85, metadata !"luaD_rawrunprotected", metadata !"luaD_rawrunprotected", metadata !"", i32 136, metadata !389, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*, void (%struct.lua_State*, i8*)*, i8*)* @luaD_rawrunprotected, null, null, metadata !81, i32 136} ; [ DW_TAG_subprogram ] [line 136] [def] [luaD_rawrunprotected]
!389 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !390, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!390 = metadata !{metadata !125, metadata !88, metadata !391, metadata !123}
!391 = metadata !{i32 786454, metadata !392, null, metadata !"Pfunc", i32 37, i64 0, i64 0, i64 0, i32 0, metadata !393} ; [ DW_TAG_typedef ] [Pfunc] [line 37, size 0, align 0, offset 0] [from ]
!392 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/ldo.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!393 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !394} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!394 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !395, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!395 = metadata !{null, metadata !88, metadata !123}
!396 = metadata !{i32 786478, metadata !84, metadata !85, metadata !"luaD_reallocstack", metadata !"luaD_reallocstack", metadata !"", i32 177, metadata !86, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.lua_State*, i32)* @luaD_reallocstack, null, null, metadata !81, i32 177} ; [ DW_TAG_subprogram ] [line 177] [def] [luaD_reallocstack]
!397 = metadata !{i32 786478, metadata !84, metadata !85, metadata !"luaD_growstack", metadata !"luaD_growstack", metadata !"", i32 191, metadata !86, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.lua_State*, i32)* @luaD_growstack, null, null, metadata !81, i32 191} ; [ DW_TAG_subprogram ] [line 191] [def] [luaD_growstack]
!398 = metadata !{i32 786478, metadata !84, metadata !85, metadata !"luaD_shrinkstack", metadata !"luaD_shrinkstack", metadata !"", i32 221, metadata !399, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.lua_State*)* @luaD_shrinkstack, null, null, metadata !81, i32 221} ; [ DW_TAG_subprogram ] [line 221] [def] [luaD_shrinkstack]
!399 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !400, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!400 = metadata !{null, metadata !88}
!401 = metadata !{i32 786478, metadata !84, metadata !85, metadata !"luaD_inctop", metadata !"luaD_inctop", metadata !"", i32 237, metadata !399, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.lua_State*)* @luaD_inctop, null, null, metadata !81, i32 237} ; [ DW_TAG_subprogram ] [line 237] [def] [luaD_inctop]
!402 = metadata !{i32 786478, metadata !84, metadata !85, metadata !"luaD_hook", metadata !"luaD_hook", metadata !"", i32 250, metadata !403, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.lua_State*, i32, i32)* @luaD_hook, null, null, metadata !81, i32 250} ; [ DW_TAG_subprogram ] [line 250] [def] [luaD_hook]
!403 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !404, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!404 = metadata !{null, metadata !88, metadata !125, metadata !125}
!405 = metadata !{i32 786478, metadata !84, metadata !85, metadata !"luaD_precall", metadata !"luaD_precall", metadata !"", i32 344, metadata !406, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*, %struct.lua_TValue*, i32)* @luaD_precall, null, null, metadata !81, i32 344} ; [ DW_TAG_subprogram ] [line 344] [def] [luaD_precall]
!406 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !407, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!407 = metadata !{metadata !125, metadata !88, metadata !112, metadata !125}
!408 = metadata !{i32 786478, metadata !84, metadata !85, metadata !"luaD_poscall", metadata !"luaD_poscall", metadata !"", i32 453, metadata !409, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*, %struct.CallInfo*, %struct.lua_TValue*, i32)* @luaD_poscall, null, null, metadata !81, i32 453} ; [ DW_TAG_subprogram ] [line 453] [def] [luaD_poscall]
!409 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !410, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!410 = metadata !{metadata !125, metadata !88, metadata !255, metadata !112, metadata !125}
!411 = metadata !{i32 786478, metadata !84, metadata !85, metadata !"luaD_call", metadata !"luaD_call", metadata !"", i32 492, metadata !412, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.lua_State*, %struct.lua_TValue*, i32)* @luaD_call, null, null, metadata !81, i32 492} ; [ DW_TAG_subprogram ] [line 492] [def] [luaD_call]
!412 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !413, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!413 = metadata !{null, metadata !88, metadata !112, metadata !125}
!414 = metadata !{i32 786478, metadata !84, metadata !85, metadata !"luaD_callnoyield", metadata !"luaD_callnoyield", metadata !"", i32 504, metadata !412, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.lua_State*, %struct.lua_TValue*, i32)* @luaD_callnoyield, null, null, metadata !81, i32 504} ; [ DW_TAG_subprogram ] [line 504] [def] [luaD_callnoyield]
!415 = metadata !{i32 786478, metadata !84, metadata !85, metadata !"lua_resume", metadata !"lua_resume", metadata !"", i32 654, metadata !416, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*, %struct.lua_State*, i32)* @lua_resume, null, null, metadata !81, i32 654} ; [ DW_TAG_subprogram ] [line 654] [def] [lua_resume]
!416 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !417, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!417 = metadata !{metadata !125, metadata !88, metadata !88, metadata !125}
!418 = metadata !{i32 786478, metadata !84, metadata !85, metadata !"lua_isyieldable", metadata !"lua_isyieldable", metadata !"", i32 685, metadata !129, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @lua_isyieldable, null, null, metadata !81, i32 685} ; [ DW_TAG_subprogram ] [line 685] [def] [lua_isyieldable]
!419 = metadata !{i32 786478, metadata !84, metadata !85, metadata !"lua_yieldk", metadata !"lua_yieldk", metadata !"", i32 690, metadata !420, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*, i32, i32, i32 (%struct.lua_State*, i32, i32)*)* @lua_yieldk, null, null, metadata !81, i32 691} ; [ DW_TAG_subprogram ] [line 690] [def] [scope 691] [lua_yieldk]
!420 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !421, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!421 = metadata !{metadata !125, metadata !88, metadata !125, metadata !283, metadata !279}
!422 = metadata !{i32 786478, metadata !84, metadata !85, metadata !"luaD_pcall", metadata !"luaD_pcall", metadata !"", i32 719, metadata !423, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*, void (%struct.lua_State*, i8*)*, i8*, i32, i32)* @luaD_pcall, null, null, metadata !81, i32 720} ; [ DW_TAG_subprogram ] [line 719] [def] [scope 720] [luaD_pcall]
!423 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !424, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!424 = metadata !{metadata !125, metadata !88, metadata !391, metadata !123, metadata !154, metadata !154}
!425 = metadata !{i32 786478, metadata !84, metadata !85, metadata !"luaD_protectedparser", metadata !"luaD_protectedparser", metadata !"", i32 781, metadata !426, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*, %struct.Zio*, i8*, i8*)* @luaD_protectedparser, null, null, metadata !81, i32 782} ; [ DW_TAG_subprogram ] [line 781] [def] [scope 782] [luaD_protectedparser]
!426 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !427, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!427 = metadata !{metadata !125, metadata !88, metadata !428, metadata !359, metadata !359}
!428 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !429} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ZIO]
!429 = metadata !{i32 786454, metadata !430, null, metadata !"ZIO", i32 18, i64 0, i64 0, i64 0, i32 0, metadata !431} ; [ DW_TAG_typedef ] [ZIO] [line 18, size 0, align 0, offset 0] [from Zio]
!430 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lzio.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!431 = metadata !{i32 786451, metadata !430, null, metadata !"Zio", i32 55, i64 160, i64 32, i32 0, i32 0, null, metadata !432, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [Zio] [line 55, size 160, align 32, offset 0] [def] [from ]
!432 = metadata !{metadata !433, metadata !434, metadata !435, metadata !441, metadata !442}
!433 = metadata !{i32 786445, metadata !430, metadata !431, metadata !"n", i32 56, i64 32, i64 32, i64 0, i32 0, metadata !148} ; [ DW_TAG_member ] [n] [line 56, size 32, align 32, offset 0] [from size_t]
!434 = metadata !{i32 786445, metadata !430, metadata !431, metadata !"p", i32 57, i64 32, i64 32, i64 32, i32 0, metadata !359} ; [ DW_TAG_member ] [p] [line 57, size 32, align 32, offset 32] [from ]
!435 = metadata !{i32 786445, metadata !430, metadata !431, metadata !"reader", i32 58, i64 32, i64 32, i64 64, i32 0, metadata !436} ; [ DW_TAG_member ] [reader] [line 58, size 32, align 32, offset 64] [from lua_Reader]
!436 = metadata !{i32 786454, metadata !90, null, metadata !"lua_Reader", i32 116, i64 0, i64 0, i64 0, i32 0, metadata !437} ; [ DW_TAG_typedef ] [lua_Reader] [line 116, size 0, align 0, offset 0] [from ]
!437 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !438} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!438 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !439, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!439 = metadata !{metadata !359, metadata !88, metadata !123, metadata !440}
!440 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !148} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from size_t]
!441 = metadata !{i32 786445, metadata !430, metadata !431, metadata !"data", i32 59, i64 32, i64 32, i64 96, i32 0, metadata !123} ; [ DW_TAG_member ] [data] [line 59, size 32, align 32, offset 96] [from ]
!442 = metadata !{i32 786445, metadata !430, metadata !431, metadata !"L", i32 60, i64 32, i64 32, i64 128, i32 0, metadata !88} ; [ DW_TAG_member ] [L] [line 60, size 32, align 32, offset 128] [from ]
!443 = metadata !{i32 786478, metadata !84, metadata !85, metadata !"f_parser", metadata !"f_parser", metadata !"", i32 764, metadata !394, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.lua_State*, i8*)* @f_parser, null, null, metadata !81, i32 764} ; [ DW_TAG_subprogram ] [line 764] [local] [def] [f_parser]
!444 = metadata !{i32 786478, metadata !84, metadata !85, metadata !"checkmode", metadata !"checkmode", metadata !"", i32 755, metadata !445, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.lua_State*, i8*, i8*)* @checkmode, null, null, metadata !81, i32 755} ; [ DW_TAG_subprogram ] [line 755] [local] [def] [checkmode]
!445 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !446, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!446 = metadata !{null, metadata !88, metadata !359, metadata !359}
!447 = metadata !{i32 786478, metadata !84, metadata !85, metadata !"unroll", metadata !"unroll", metadata !"", i32 547, metadata !394, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.lua_State*, i8*)* @unroll, null, null, metadata !81, i32 547} ; [ DW_TAG_subprogram ] [line 547] [local] [def] [unroll]
!448 = metadata !{i32 786478, metadata !84, metadata !85, metadata !"finishCcall", metadata !"finishCcall", metadata !"", i32 515, metadata !86, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.lua_State*, i32)* @finishCcall, null, null, metadata !81, i32 515} ; [ DW_TAG_subprogram ] [line 515] [local] [def] [finishCcall]
!449 = metadata !{i32 786478, metadata !84, metadata !85, metadata !"recover", metadata !"recover", metadata !"", i32 580, metadata !450, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*, i32)* @recover, null, null, metadata !81, i32 580} ; [ DW_TAG_subprogram ] [line 580] [local] [def] [recover]
!450 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !451, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!451 = metadata !{metadata !125, metadata !88, metadata !125}
!452 = metadata !{i32 786478, metadata !84, metadata !85, metadata !"findpcall", metadata !"findpcall", metadata !"", i32 565, metadata !453, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, %struct.CallInfo* (%struct.lua_State*)* @findpcall, null, null, metadata !81, i32 565} ; [ DW_TAG_subprogram ] [line 565] [local] [def] [findpcall]
!453 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !454, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!454 = metadata !{metadata !255, metadata !88}
!455 = metadata !{i32 786478, metadata !84, metadata !85, metadata !"resume", metadata !"resume", metadata !"", i32 617, metadata !394, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.lua_State*, i8*)* @resume, null, null, metadata !81, i32 617} ; [ DW_TAG_subprogram ] [line 617] [local] [def] [resume]
!456 = metadata !{i32 786478, metadata !84, metadata !85, metadata !"resume_error", metadata !"resume_error", metadata !"", i32 602, metadata !457, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.lua_State*, i8*, %struct.lua_TValue*)* @resume_error, null, null, metadata !81, i32 602} ; [ DW_TAG_subprogram ] [line 602] [local] [def] [resume_error]
!457 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !458, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!458 = metadata !{null, metadata !88, metadata !359, metadata !112}
!459 = metadata !{i32 786478, metadata !84, metadata !85, metadata !"stackerror", metadata !"stackerror", metadata !"", i32 478, metadata !399, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.lua_State*)* @stackerror, null, null, metadata !81, i32 478} ; [ DW_TAG_subprogram ] [line 478] [local] [def] [stackerror]
!460 = metadata !{i32 786478, metadata !84, metadata !85, metadata !"moveresults", metadata !"moveresults", metadata !"", i32 411, metadata !461, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*, %struct.lua_TValue*, %struct.lua_TValue*, i32, i32)* @moveresults, null, null, metadata !81, i32 412} ; [ DW_TAG_subprogram ] [line 411] [local] [def] [scope 412] [moveresults]
!461 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !462, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!462 = metadata !{metadata !125, metadata !88, metadata !463, metadata !112, metadata !125, metadata !125}
!463 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !464} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!464 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !114} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from TValue]
!465 = metadata !{i32 786478, metadata !84, metadata !85, metadata !"tryfuncTM", metadata !"tryfuncTM", metadata !"", i32 312, metadata !466, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.lua_State*, %struct.lua_TValue*)* @tryfuncTM, null, null, metadata !81, i32 312} ; [ DW_TAG_subprogram ] [line 312] [local] [def] [tryfuncTM]
!466 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !467, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!467 = metadata !{null, metadata !88, metadata !112}
!468 = metadata !{i32 786478, metadata !84, metadata !85, metadata !"callhook", metadata !"callhook", metadata !"", i32 277, metadata !469, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.lua_State*, %struct.CallInfo*)* @callhook, null, null, metadata !81, i32 277} ; [ DW_TAG_subprogram ] [line 277] [local] [def] [callhook]
!469 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !470, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!470 = metadata !{null, metadata !88, metadata !255}
!471 = metadata !{i32 786478, metadata !84, metadata !85, metadata !"adjust_varargs", metadata !"adjust_varargs", metadata !"", i32 290, metadata !472, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, %struct.lua_TValue* (%struct.lua_State*, %struct.Proto*, i32)* @adjust_varargs, null, null, metadata !81, i32 290} ; [ DW_TAG_subprogram ] [line 290] [local] [def] [adjust_varargs]
!472 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !473, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!473 = metadata !{metadata !112, metadata !88, metadata !474, metadata !125}
!474 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !475} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from Proto]
!475 = metadata !{i32 786454, metadata !97, null, metadata !"Proto", i32 429, i64 0, i64 0, i64 0, i32 0, metadata !476} ; [ DW_TAG_typedef ] [Proto] [line 429, size 0, align 0, offset 0] [from Proto]
!476 = metadata !{i32 786451, metadata !97, null, metadata !"Proto", i32 407, i64 640, i64 32, i32 0, i32 0, null, metadata !477, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [Proto] [line 407, size 640, align 32, offset 0] [def] [from ]
!477 = metadata !{metadata !478, metadata !479, metadata !480, metadata !481, metadata !482, metadata !483, metadata !484, metadata !485, metadata !486, metadata !487, metadata !488, metadata !489, metadata !490, metadata !491, metadata !492, metadata !493, metadata !495, metadata !498, metadata !500, metadata !508, metadata !516, metadata !528, metadata !529}
!478 = metadata !{i32 786445, metadata !97, metadata !476, metadata !"next", i32 408, i64 32, i64 32, i64 0, i32 0, metadata !95} ; [ DW_TAG_member ] [next] [line 408, size 32, align 32, offset 0] [from ]
!479 = metadata !{i32 786445, metadata !97, metadata !476, metadata !"tt", i32 408, i64 8, i64 8, i64 32, i32 0, metadata !102} ; [ DW_TAG_member ] [tt] [line 408, size 8, align 8, offset 32] [from lu_byte]
!480 = metadata !{i32 786445, metadata !97, metadata !476, metadata !"marked", i32 408, i64 8, i64 8, i64 40, i32 0, metadata !102} ; [ DW_TAG_member ] [marked] [line 408, size 8, align 8, offset 40] [from lu_byte]
!481 = metadata !{i32 786445, metadata !97, metadata !476, metadata !"numparams", i32 409, i64 8, i64 8, i64 48, i32 0, metadata !102} ; [ DW_TAG_member ] [numparams] [line 409, size 8, align 8, offset 48] [from lu_byte]
!482 = metadata !{i32 786445, metadata !97, metadata !476, metadata !"is_vararg", i32 410, i64 8, i64 8, i64 56, i32 0, metadata !102} ; [ DW_TAG_member ] [is_vararg] [line 410, size 8, align 8, offset 56] [from lu_byte]
!483 = metadata !{i32 786445, metadata !97, metadata !476, metadata !"maxstacksize", i32 411, i64 8, i64 8, i64 64, i32 0, metadata !102} ; [ DW_TAG_member ] [maxstacksize] [line 411, size 8, align 8, offset 64] [from lu_byte]
!484 = metadata !{i32 786445, metadata !97, metadata !476, metadata !"sizeupvalues", i32 412, i64 32, i64 32, i64 96, i32 0, metadata !125} ; [ DW_TAG_member ] [sizeupvalues] [line 412, size 32, align 32, offset 96] [from int]
!485 = metadata !{i32 786445, metadata !97, metadata !476, metadata !"sizek", i32 413, i64 32, i64 32, i64 128, i32 0, metadata !125} ; [ DW_TAG_member ] [sizek] [line 413, size 32, align 32, offset 128] [from int]
!486 = metadata !{i32 786445, metadata !97, metadata !476, metadata !"sizecode", i32 414, i64 32, i64 32, i64 160, i32 0, metadata !125} ; [ DW_TAG_member ] [sizecode] [line 414, size 32, align 32, offset 160] [from int]
!487 = metadata !{i32 786445, metadata !97, metadata !476, metadata !"sizelineinfo", i32 415, i64 32, i64 32, i64 192, i32 0, metadata !125} ; [ DW_TAG_member ] [sizelineinfo] [line 415, size 32, align 32, offset 192] [from int]
!488 = metadata !{i32 786445, metadata !97, metadata !476, metadata !"sizep", i32 416, i64 32, i64 32, i64 224, i32 0, metadata !125} ; [ DW_TAG_member ] [sizep] [line 416, size 32, align 32, offset 224] [from int]
!489 = metadata !{i32 786445, metadata !97, metadata !476, metadata !"sizelocvars", i32 417, i64 32, i64 32, i64 256, i32 0, metadata !125} ; [ DW_TAG_member ] [sizelocvars] [line 417, size 32, align 32, offset 256] [from int]
!490 = metadata !{i32 786445, metadata !97, metadata !476, metadata !"linedefined", i32 418, i64 32, i64 32, i64 288, i32 0, metadata !125} ; [ DW_TAG_member ] [linedefined] [line 418, size 32, align 32, offset 288] [from int]
!491 = metadata !{i32 786445, metadata !97, metadata !476, metadata !"lastlinedefined", i32 419, i64 32, i64 32, i64 320, i32 0, metadata !125} ; [ DW_TAG_member ] [lastlinedefined] [line 419, size 32, align 32, offset 320] [from int]
!492 = metadata !{i32 786445, metadata !97, metadata !476, metadata !"k", i32 420, i64 32, i64 32, i64 352, i32 0, metadata !113} ; [ DW_TAG_member ] [k] [line 420, size 32, align 32, offset 352] [from ]
!493 = metadata !{i32 786445, metadata !97, metadata !476, metadata !"code", i32 421, i64 32, i64 32, i64 384, i32 0, metadata !494} ; [ DW_TAG_member ] [code] [line 421, size 32, align 32, offset 384] [from ]
!494 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !274} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from Instruction]
!495 = metadata !{i32 786445, metadata !97, metadata !476, metadata !"p", i32 422, i64 32, i64 32, i64 416, i32 0, metadata !496} ; [ DW_TAG_member ] [p] [line 422, size 32, align 32, offset 416] [from ]
!496 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !497} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!497 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !476} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from Proto]
!498 = metadata !{i32 786445, metadata !97, metadata !476, metadata !"lineinfo", i32 423, i64 32, i64 32, i64 448, i32 0, metadata !499} ; [ DW_TAG_member ] [lineinfo] [line 423, size 32, align 32, offset 448] [from ]
!499 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !125} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from int]
!500 = metadata !{i32 786445, metadata !97, metadata !476, metadata !"locvars", i32 424, i64 32, i64 32, i64 480, i32 0, metadata !501} ; [ DW_TAG_member ] [locvars] [line 424, size 32, align 32, offset 480] [from ]
!501 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !502} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from LocVar]
!502 = metadata !{i32 786454, metadata !97, null, metadata !"LocVar", i32 401, i64 0, i64 0, i64 0, i32 0, metadata !503} ; [ DW_TAG_typedef ] [LocVar] [line 401, size 0, align 0, offset 0] [from LocVar]
!503 = metadata !{i32 786451, metadata !97, null, metadata !"LocVar", i32 397, i64 96, i64 32, i32 0, i32 0, null, metadata !504, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [LocVar] [line 397, size 96, align 32, offset 0] [def] [from ]
!504 = metadata !{metadata !505, metadata !506, metadata !507}
!505 = metadata !{i32 786445, metadata !97, metadata !503, metadata !"varname", i32 398, i64 32, i64 32, i64 0, i32 0, metadata !165} ; [ DW_TAG_member ] [varname] [line 398, size 32, align 32, offset 0] [from ]
!506 = metadata !{i32 786445, metadata !97, metadata !503, metadata !"startpc", i32 399, i64 32, i64 32, i64 32, i32 0, metadata !125} ; [ DW_TAG_member ] [startpc] [line 399, size 32, align 32, offset 32] [from int]
!507 = metadata !{i32 786445, metadata !97, metadata !503, metadata !"endpc", i32 400, i64 32, i64 32, i64 64, i32 0, metadata !125} ; [ DW_TAG_member ] [endpc] [line 400, size 32, align 32, offset 64] [from int]
!508 = metadata !{i32 786445, metadata !97, metadata !476, metadata !"upvalues", i32 425, i64 32, i64 32, i64 512, i32 0, metadata !509} ; [ DW_TAG_member ] [upvalues] [line 425, size 32, align 32, offset 512] [from ]
!509 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !510} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from Upvaldesc]
!510 = metadata !{i32 786454, metadata !97, null, metadata !"Upvaldesc", i32 390, i64 0, i64 0, i64 0, i32 0, metadata !511} ; [ DW_TAG_typedef ] [Upvaldesc] [line 390, size 0, align 0, offset 0] [from Upvaldesc]
!511 = metadata !{i32 786451, metadata !97, null, metadata !"Upvaldesc", i32 386, i64 64, i64 32, i32 0, i32 0, null, metadata !512, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [Upvaldesc] [line 386, size 64, align 32, offset 0] [def] [from ]
!512 = metadata !{metadata !513, metadata !514, metadata !515}
!513 = metadata !{i32 786445, metadata !97, metadata !511, metadata !"name", i32 387, i64 32, i64 32, i64 0, i32 0, metadata !165} ; [ DW_TAG_member ] [name] [line 387, size 32, align 32, offset 0] [from ]
!514 = metadata !{i32 786445, metadata !97, metadata !511, metadata !"instack", i32 388, i64 8, i64 8, i64 32, i32 0, metadata !102} ; [ DW_TAG_member ] [instack] [line 388, size 8, align 8, offset 32] [from lu_byte]
!515 = metadata !{i32 786445, metadata !97, metadata !511, metadata !"idx", i32 389, i64 8, i64 8, i64 40, i32 0, metadata !102} ; [ DW_TAG_member ] [idx] [line 389, size 8, align 8, offset 40] [from lu_byte]
!516 = metadata !{i32 786445, metadata !97, metadata !476, metadata !"cache", i32 426, i64 32, i64 32, i64 544, i32 0, metadata !517} ; [ DW_TAG_member ] [cache] [line 426, size 32, align 32, offset 544] [from ]
!517 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !518} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from LClosure]
!518 = metadata !{i32 786451, metadata !97, null, metadata !"LClosure", i32 453, i64 160, i64 32, i32 0, i32 0, null, metadata !519, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [LClosure] [line 453, size 160, align 32, offset 0] [def] [from ]
!519 = metadata !{metadata !520, metadata !521, metadata !522, metadata !523, metadata !524, metadata !525, metadata !526}
!520 = metadata !{i32 786445, metadata !97, metadata !518, metadata !"next", i32 454, i64 32, i64 32, i64 0, i32 0, metadata !95} ; [ DW_TAG_member ] [next] [line 454, size 32, align 32, offset 0] [from ]
!521 = metadata !{i32 786445, metadata !97, metadata !518, metadata !"tt", i32 454, i64 8, i64 8, i64 32, i32 0, metadata !102} ; [ DW_TAG_member ] [tt] [line 454, size 8, align 8, offset 32] [from lu_byte]
!522 = metadata !{i32 786445, metadata !97, metadata !518, metadata !"marked", i32 454, i64 8, i64 8, i64 40, i32 0, metadata !102} ; [ DW_TAG_member ] [marked] [line 454, size 8, align 8, offset 40] [from lu_byte]
!523 = metadata !{i32 786445, metadata !97, metadata !518, metadata !"nupvalues", i32 454, i64 8, i64 8, i64 48, i32 0, metadata !102} ; [ DW_TAG_member ] [nupvalues] [line 454, size 8, align 8, offset 48] [from lu_byte]
!524 = metadata !{i32 786445, metadata !97, metadata !518, metadata !"gclist", i32 454, i64 32, i64 32, i64 64, i32 0, metadata !95} ; [ DW_TAG_member ] [gclist] [line 454, size 32, align 32, offset 64] [from ]
!525 = metadata !{i32 786445, metadata !97, metadata !518, metadata !"p", i32 455, i64 32, i64 32, i64 96, i32 0, metadata !497} ; [ DW_TAG_member ] [p] [line 455, size 32, align 32, offset 96] [from ]
!526 = metadata !{i32 786445, metadata !97, metadata !518, metadata !"upvals", i32 456, i64 32, i64 32, i64 128, i32 0, metadata !527} ; [ DW_TAG_member ] [upvals] [line 456, size 32, align 32, offset 128] [from ]
!527 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 32, i64 32, i32 0, i32 0, metadata !296, metadata !342, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 32, align 32, offset 0] [from ]
!528 = metadata !{i32 786445, metadata !97, metadata !476, metadata !"source", i32 427, i64 32, i64 32, i64 576, i32 0, metadata !165} ; [ DW_TAG_member ] [source] [line 427, size 32, align 32, offset 576] [from ]
!529 = metadata !{i32 786445, metadata !97, metadata !476, metadata !"gclist", i32 428, i64 32, i64 32, i64 608, i32 0, metadata !95} ; [ DW_TAG_member ] [gclist] [line 428, size 32, align 32, offset 608] [from ]
!530 = metadata !{i32 786478, metadata !84, metadata !85, metadata !"stackinuse", metadata !"stackinuse", metadata !"", i32 210, metadata !129, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @stackinuse, null, null, metadata !81, i32 210} ; [ DW_TAG_subprogram ] [line 210] [local] [def] [stackinuse]
!531 = metadata !{i32 786478, metadata !84, metadata !85, metadata !"correctstack", metadata !"correctstack", metadata !"", i32 158, metadata !532, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.lua_State*, %struct.lua_TValue*)* @correctstack, null, null, metadata !81, i32 158} ; [ DW_TAG_subprogram ] [line 158] [local] [def] [correctstack]
!532 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !533, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!533 = metadata !{null, metadata !88, metadata !113}
!534 = metadata !{i32 786478, metadata !84, metadata !85, metadata !"seterrorobj", metadata !"seterrorobj", metadata !"", i32 91, metadata !535, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.lua_State*, i32, %struct.lua_TValue*)* @seterrorobj, null, null, metadata !81, i32 91} ; [ DW_TAG_subprogram ] [line 91] [local] [def] [seterrorobj]
!535 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !536, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!536 = metadata !{null, metadata !88, metadata !125, metadata !112}
!537 = metadata !{void (%struct.lua_State*, i32)* @luaD_throw}
!538 = metadata !{metadata !"luaD_throw"}
!539 = metadata !{void (%struct.__jmp_buf_tag*, i32)* @longjmp}
!540 = metadata !{metadata !"longjmp"}
!541 = metadata !{void (%struct.lua_State*, i32, %struct.lua_TValue*)* @seterrorobj}
!542 = metadata !{metadata !"seterrorobj"}
!543 = metadata !{void ()* @abort}
!544 = metadata !{metadata !"abort"}
!545 = metadata !{i32 (%struct.lua_State*, void (%struct.lua_State*, i8*)*, i8*)* @luaD_rawrunprotected}
!546 = metadata !{metadata !"luaD_rawrunprotected"}
!547 = metadata !{i32 (%struct.__jmp_buf_tag*)* @_setjmp}
!548 = metadata !{metadata !"_setjmp"}
!549 = metadata !{void (%struct.lua_State*, i32)* @luaD_reallocstack}
!550 = metadata !{metadata !"luaD_reallocstack"}
!551 = metadata !{void (%struct.lua_State*)* @luaM_toobig}
!552 = metadata !{metadata !"luaM_toobig"}
!553 = metadata !{i8* (%struct.lua_State*, i8*, i32, i32)* @luaM_realloc_}
!554 = metadata !{metadata !"luaM_realloc_"}
!555 = metadata !{void (%struct.lua_State*, %struct.lua_TValue*)* @correctstack}
!556 = metadata !{metadata !"correctstack"}
!557 = metadata !{void (%struct.lua_State*, i32)* @luaD_growstack}
!558 = metadata !{metadata !"luaD_growstack"}
!559 = metadata !{void (%struct.lua_State*, i8*, ...)* @luaG_runerror}
!560 = metadata !{metadata !"luaG_runerror"}
!561 = metadata !{void (%struct.lua_State*)* @luaD_shrinkstack}
!562 = metadata !{metadata !"luaD_shrinkstack"}
!563 = metadata !{i32 (%struct.lua_State*)* @stackinuse}
!564 = metadata !{metadata !"stackinuse"}
!565 = metadata !{void (%struct.lua_State*)* @luaE_freeCI}
!566 = metadata !{metadata !"luaE_freeCI"}
!567 = metadata !{void (%struct.lua_State*)* @luaE_shrinkCI}
!568 = metadata !{metadata !"luaE_shrinkCI"}
!569 = metadata !{void (%struct.lua_State*)* @luaD_inctop}
!570 = metadata !{metadata !"luaD_inctop"}
!571 = metadata !{void (%struct.lua_State*, i32, i32)* @luaD_hook}
!572 = metadata !{metadata !"luaD_hook"}
!573 = metadata !{i32 (%struct.lua_State*, %struct.lua_TValue*, i32)* @luaD_precall}
!574 = metadata !{metadata !"luaD_precall"}
!575 = metadata !{void (%struct.lua_State*)* @luaC_step}
!576 = metadata !{metadata !"luaC_step"}
!577 = metadata !{%struct.CallInfo* (%struct.lua_State*)* @luaE_extendCI}
!578 = metadata !{metadata !"luaE_extendCI"}
!579 = metadata !{i32 (%struct.lua_State*, %struct.CallInfo*, %struct.lua_TValue*, i32)* @luaD_poscall}
!580 = metadata !{metadata !"luaD_poscall"}
!581 = metadata !{%struct.lua_TValue* (%struct.lua_State*, %struct.Proto*, i32)* @adjust_varargs}
!582 = metadata !{metadata !"adjust_varargs"}
!583 = metadata !{void (%struct.lua_State*, %struct.CallInfo*)* @callhook}
!584 = metadata !{metadata !"callhook"}
!585 = metadata !{void (%struct.lua_State*, %struct.lua_TValue*)* @tryfuncTM}
!586 = metadata !{metadata !"tryfuncTM"}
!587 = metadata !{i32 (%struct.lua_State*, %struct.lua_TValue*, %struct.lua_TValue*, i32, i32)* @moveresults}
!588 = metadata !{metadata !"moveresults"}
!589 = metadata !{void (%struct.lua_State*, %struct.lua_TValue*, i32)* @luaD_call}
!590 = metadata !{metadata !"luaD_call"}
!591 = metadata !{void (%struct.lua_State*)* @stackerror}
!592 = metadata !{metadata !"stackerror"}
!593 = metadata !{void (%struct.lua_State*)* @luaV_execute}
!594 = metadata !{metadata !"luaV_execute"}
!595 = metadata !{void (%struct.lua_State*, %struct.lua_TValue*, i32)* @luaD_callnoyield}
!596 = metadata !{metadata !"luaD_callnoyield"}
!597 = metadata !{i32 (%struct.lua_State*, %struct.lua_State*, i32)* @lua_resume}
!598 = metadata !{metadata !"lua_resume"}
!599 = metadata !{void (%struct.lua_State*, i8*)* @resume}
!600 = metadata !{metadata !"resume"}
!601 = metadata !{i32 (%struct.lua_State*, i32)* @recover}
!602 = metadata !{metadata !"recover"}
!603 = metadata !{void (%struct.lua_State*, i8*)* @unroll}
!604 = metadata !{metadata !"unroll"}
!605 = metadata !{i32 (%struct.lua_State*)* @lua_isyieldable}
!606 = metadata !{metadata !"lua_isyieldable"}
!607 = metadata !{i32 (%struct.lua_State*, i32, i32, i32 (%struct.lua_State*, i32, i32)*)* @lua_yieldk}
!608 = metadata !{metadata !"lua_yieldk"}
!609 = metadata !{i32 (%struct.lua_State*, void (%struct.lua_State*, i8*)*, i8*, i32, i32)* @luaD_pcall}
!610 = metadata !{metadata !"luaD_pcall"}
!611 = metadata !{void (%struct.lua_State*, %struct.lua_TValue*)* @luaF_close}
!612 = metadata !{metadata !"luaF_close"}
!613 = metadata !{i32 (%struct.lua_State*, %struct.Zio*, i8*, i8*)* @luaD_protectedparser}
!614 = metadata !{metadata !"luaD_protectedparser"}
!615 = metadata !{void (%struct.lua_State*, i8*)* @f_parser}
!616 = metadata !{metadata !"f_parser"}
!617 = metadata !{i32 (%struct.Zio*)* @luaZ_fill}
!618 = metadata !{metadata !"luaZ_fill"}
!619 = metadata !{void (%struct.lua_State*, i8*, i8*)* @checkmode}
!620 = metadata !{metadata !"checkmode"}
!621 = metadata !{%struct.LClosure* (%struct.lua_State*, %struct.Zio*, i8*)* @luaU_undump}
!622 = metadata !{metadata !"luaU_undump"}
!623 = metadata !{%struct.LClosure* (%struct.lua_State*, %struct.Zio*, %struct.Mbuffer*, %struct.Dyndata*, i8*, i32)* @luaY_parser}
!624 = metadata !{metadata !"luaY_parser"}
!625 = metadata !{void (%struct.lua_State*, %struct.LClosure*)* @luaF_initupvals}
!626 = metadata !{metadata !"luaF_initupvals"}
!627 = metadata !{i8* (i8*, i32)* @strchr}
!628 = metadata !{metadata !"strchr"}
!629 = metadata !{i8* (%struct.lua_State*, i8*, ...)* @luaO_pushfstring}
!630 = metadata !{metadata !"luaO_pushfstring"}
!631 = metadata !{void (%struct.lua_State*, i32)* @finishCcall}
!632 = metadata !{metadata !"finishCcall"}
!633 = metadata !{void (%struct.lua_State*)* @luaV_finishOp}
!634 = metadata !{metadata !"luaV_finishOp"}
!635 = metadata !{%struct.CallInfo* (%struct.lua_State*)* @findpcall}
!636 = metadata !{metadata !"findpcall"}
!637 = metadata !{void (%struct.lua_State*, i8*, %struct.lua_TValue*)* @resume_error}
!638 = metadata !{metadata !"resume_error"}
!639 = metadata !{%struct.TString* (%struct.lua_State*, i8*)* @luaS_new}
!640 = metadata !{metadata !"luaS_new"}
!641 = metadata !{%struct.lua_TValue* (%struct.lua_State*, %struct.lua_TValue*, i32)* @luaT_gettmbyobj}
!642 = metadata !{metadata !"luaT_gettmbyobj"}
!643 = metadata !{void (%struct.lua_State*, %struct.lua_TValue*, i8*)* @luaG_typeerror}
!644 = metadata !{metadata !"luaG_typeerror"}
!645 = metadata !{%struct.TString* (%struct.lua_State*, i8*, i32)* @luaS_newlstr}
!646 = metadata !{metadata !"luaS_newlstr"}
!647 = metadata !{metadata !"void.lua_State *.1.int.0"}
!648 = metadata !{metadata !"void.struct __jmp_buf_tag [1].1.int.0"}
!649 = metadata !{metadata !"void.lua_State *.1.int.0.StkId.1"}
!650 = metadata !{metadata !"void."}
!651 = metadata !{metadata !"int.lua_State *.1.Pfunc.1.void *.1"}
!652 = metadata !{metadata !"int.struct __jmp_buf_tag [1].1"}
!653 = metadata !{metadata !"void.lua_State *.1"}
!654 = metadata !{metadata !"void .lua_State *.1.void *.1.size_t.0.size_t.0"}
!655 = metadata !{metadata !"void.lua_State *.1.TValue *.1"}
!656 = metadata !{metadata !"void.lua_State *.1.const char *.1"}
!657 = metadata !{metadata !"int.lua_State *.1"}
!658 = metadata !{metadata !"void.lua_State *.1.int.0.int.0"}
!659 = metadata !{metadata !"int.lua_State *.1.StkId.1.int.0"}
!660 = metadata !{metadata !"CallInfo .lua_State *.1"}
!661 = metadata !{metadata !"int.lua_State *.1.CallInfo *.1.StkId.1.int.0"}
!662 = metadata !{metadata !"StkId.lua_State *.1.Proto *.1.int.0"}
!663 = metadata !{metadata !"void.lua_State *.1.CallInfo *.1"}
!664 = metadata !{metadata !"void.lua_State *.1.StkId.1"}
!665 = metadata !{metadata !"int.lua_State *.1.const TValue *.1.StkId.1.int.0.int.0"}
!666 = metadata !{metadata !"void.lua_State *.1.StkId.1.int.0"}
!667 = metadata !{metadata !"int.lua_State *.1.lua_State *.1.int.0"}
!668 = metadata !{metadata !"void.lua_State *.1.void *.1"}
!669 = metadata !{metadata !"int.lua_State *.1.int.0"}
!670 = metadata !{metadata !"int.lua_State *.1.int.0.lua_KContext.0.lua_KFunction.1"}
!671 = metadata !{metadata !"int.lua_State *.1.Pfunc.1.void *.1.ptrdiff_t.0.ptrdiff_t.0"}
!672 = metadata !{metadata !"int.lua_State *.1.ZIO *.1.const char *.1.const char *.1"}
!673 = metadata !{metadata !"int.ZIO *.1"}
!674 = metadata !{metadata !"void.lua_State *.1.const char *.1.const char *.1"}
!675 = metadata !{metadata !"LClosure .lua_State *.1.ZIO *.1.const char *.1"}
!676 = metadata !{metadata !"LClosure .lua_State *.1.ZIO *.1.Mbuffer *.1.Dyndata *.1.const char *.1.int.0"}
!677 = metadata !{metadata !"void.lua_State *.1.LClosure *.1"}
!678 = metadata !{metadata !"char .const char *.1.int.0"}
!679 = metadata !{metadata !"const char .lua_State *.1.const char *.1"}
!680 = metadata !{metadata !"void.lua_State *.1.const char *.1.StkId.1"}
!681 = metadata !{metadata !"TString .lua_State *.1.const char *.1"}
!682 = metadata !{metadata !"const TValue .lua_State *.1.const TValue *.1.TMS.0"}
!683 = metadata !{metadata !"void.lua_State *.1.const TValue *.1.const char *.1"}
!684 = metadata !{metadata !"TString .lua_State *.1.const char *.1.size_t.0"}
!685 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/ldo.h"}
!686 = metadata !{metadata !"D:/Xilinx/SDx/2016.3/SDK/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include\5Csetjmp.h"}
!687 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/ldo.c"}
!688 = metadata !{metadata !"D:/Xilinx/SDx/2016.3/SDK/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include\5Cstdlib.h"}
!689 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lmem.h"}
!690 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/ldebug.h"}
!691 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lstate.h"}
!692 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lgc.h"}
!693 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lvm.h"}
!694 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lua.h"}
!695 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lfunc.h"}
!696 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lzio.h"}
!697 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lundump.h"}
!698 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lparser.h"}
!699 = metadata !{metadata !"D:/Xilinx/SDx/2016.3/SDK/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include\5Cstring.h"}
!700 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lobject.h"}
!701 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lstring.h"}
!702 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/ltm.h"}
!703 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!704 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!705 = metadata !{i32 1, metadata !"wchar_size", i32 4}
!706 = metadata !{i32 1, metadata !"min_enum_size", i32 4}
!707 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
!708 = metadata !{i32 786689, metadata !83, metadata !"L", metadata !85, i32 16777326, metadata !88, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 110]
!709 = metadata !{i32 110, i32 32, metadata !83, null}
!710 = metadata !{i32 786689, metadata !83, metadata !"errcode", metadata !85, i32 33554542, metadata !125, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [errcode] [line 110]
!711 = metadata !{i32 110, i32 39, metadata !83, null}
!712 = metadata !{i32 111, i32 7, metadata !713, null}
!713 = metadata !{i32 786443, metadata !84, metadata !83, i32 111, i32 7, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!714 = metadata !{i32 112, i32 5, metadata !715, null}
!715 = metadata !{i32 786443, metadata !84, metadata !713, i32 111, i32 20, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!716 = metadata !{i32 113, i32 5, metadata !715, null}
!717 = metadata !{i32 786688, metadata !718, metadata !"g", metadata !85, i32 116, metadata !139, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [g] [line 116]
!718 = metadata !{i32 786443, metadata !84, metadata !713, i32 115, i32 8, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!719 = metadata !{i32 116, i32 19, metadata !718, null}
!720 = metadata !{i32 116, i32 5, metadata !718, null}
!721 = metadata !{i32 117, i32 5, metadata !718, null}
!722 = metadata !{i32 118, i32 9, metadata !723, null}
!723 = metadata !{i32 786443, metadata !84, metadata !718, i32 118, i32 9, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!724 = metadata !{i32 786688, metadata !725, metadata !"io1", metadata !85, i32 119, metadata !113, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [io1] [line 119]
!725 = metadata !{i32 786443, metadata !84, metadata !726, i32 119, i32 7, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!726 = metadata !{i32 786443, metadata !84, metadata !723, i32 118, i32 34, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!727 = metadata !{i32 119, i32 7, metadata !725, null}
!728 = metadata !{i32 120, i32 7, metadata !726, null}
!729 = metadata !{i32 123, i32 11, metadata !730, null}
!730 = metadata !{i32 786443, metadata !84, metadata !731, i32 123, i32 11, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!731 = metadata !{i32 786443, metadata !84, metadata !723, i32 122, i32 10, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!732 = metadata !{i32 124, i32 9, metadata !733, null}
!733 = metadata !{i32 786443, metadata !84, metadata !730, i32 123, i32 21, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!734 = metadata !{i32 125, i32 13, metadata !735, null}
!735 = metadata !{i32 786443, metadata !84, metadata !733, i32 125, i32 13, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!736 = metadata !{i32 126, i32 11, metadata !735, null}
!737 = metadata !{i32 128, i32 9, metadata !733, null}
!738 = metadata !{i32 129, i32 7, metadata !733, null}
!739 = metadata !{i32 130, i32 7, metadata !731, null}
!740 = metadata !{i32 133, i32 1, metadata !83, null}
!741 = metadata !{i32 786689, metadata !534, metadata !"L", metadata !85, i32 16777307, metadata !88, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 91]
!742 = metadata !{i32 91, i32 37, metadata !534, null}
!743 = metadata !{i32 786689, metadata !534, metadata !"errcode", metadata !85, i32 33554523, metadata !125, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [errcode] [line 91]
!744 = metadata !{i32 91, i32 44, metadata !534, null}
!745 = metadata !{i32 786689, metadata !534, metadata !"oldtop", metadata !85, i32 50331739, metadata !112, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [oldtop] [line 91]
!746 = metadata !{i32 91, i32 59, metadata !534, null}
!747 = metadata !{i32 92, i32 3, metadata !534, null}
!748 = metadata !{i32 786688, metadata !749, metadata !"io", metadata !85, i32 94, metadata !113, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [io] [line 94]
!749 = metadata !{i32 786443, metadata !84, metadata !750, i32 94, i32 7, i32 0, i32 144} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!750 = metadata !{i32 786443, metadata !84, metadata !751, i32 93, i32 22, i32 0, i32 143} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!751 = metadata !{i32 786443, metadata !84, metadata !534, i32 92, i32 20, i32 0, i32 142} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!752 = metadata !{i32 94, i32 7, metadata !749, null}
!753 = metadata !{i32 786688, metadata !749, metadata !"x_", metadata !85, i32 94, metadata !165, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x_] [line 94]
!754 = metadata !{i32 95, i32 7, metadata !750, null}
!755 = metadata !{i32 786688, metadata !756, metadata !"io", metadata !85, i32 98, metadata !113, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [io] [line 98]
!756 = metadata !{i32 786443, metadata !84, metadata !757, i32 98, i32 7, i32 0, i32 146} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!757 = metadata !{i32 786443, metadata !84, metadata !751, i32 97, i32 22, i32 0, i32 145} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!758 = metadata !{i32 98, i32 7, metadata !756, null}
!759 = metadata !{i32 786688, metadata !756, metadata !"x_", metadata !85, i32 98, metadata !165, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x_] [line 98]
!760 = metadata !{i32 99, i32 7, metadata !757, null}
!761 = metadata !{i32 786688, metadata !762, metadata !"io1", metadata !85, i32 102, metadata !113, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [io1] [line 102]
!762 = metadata !{i32 786443, metadata !84, metadata !763, i32 102, i32 7, i32 0, i32 148} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!763 = metadata !{i32 786443, metadata !84, metadata !751, i32 101, i32 14, i32 0, i32 147} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!764 = metadata !{i32 102, i32 7, metadata !762, null}
!765 = metadata !{i32 103, i32 7, metadata !763, null}
!766 = metadata !{i32 106, i32 3, metadata !534, null}
!767 = metadata !{i32 107, i32 1, metadata !534, null}
!768 = metadata !{i32 786689, metadata !388, metadata !"L", metadata !85, i32 16777352, metadata !88, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 136]
!769 = metadata !{i32 136, i32 38, metadata !388, null}
!770 = metadata !{i32 786689, metadata !388, metadata !"f", metadata !85, i32 33554568, metadata !391, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [f] [line 136]
!771 = metadata !{i32 136, i32 47, metadata !388, null}
!772 = metadata !{i32 786689, metadata !388, metadata !"ud", metadata !85, i32 50331784, metadata !123, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ud] [line 136]
!773 = metadata !{i32 136, i32 56, metadata !388, null}
!774 = metadata !{i32 786688, metadata !388, metadata !"oldnCcalls", metadata !85, i32 137, metadata !109, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [oldnCcalls] [line 137]
!775 = metadata !{i32 137, i32 18, metadata !388, null}
!776 = metadata !{i32 137, i32 3, metadata !388, null}
!777 = metadata !{i32 786688, metadata !388, metadata !"lj", metadata !85, i32 138, metadata !316, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lj] [line 138]
!778 = metadata !{i32 138, i32 22, metadata !388, null}
!779 = metadata !{i32 139, i32 3, metadata !388, null}
!780 = metadata !{i32 140, i32 3, metadata !388, null}
!781 = metadata !{i32 141, i32 3, metadata !388, null}
!782 = metadata !{i32 142, i32 3, metadata !783, null}
!783 = metadata !{i32 786443, metadata !84, metadata !388, i32 142, i32 3, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!784 = metadata !{i32 142, i32 3, metadata !785, null}
!785 = metadata !{i32 786443, metadata !84, metadata !786, i32 142, i32 3, i32 1, i32 149} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!786 = metadata !{i32 786443, metadata !84, metadata !783, i32 142, i32 3, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!787 = metadata !{i32 145, i32 3, metadata !388, null}
!788 = metadata !{i32 146, i32 3, metadata !388, null}
!789 = metadata !{i32 147, i32 3, metadata !388, null}
!790 = metadata !{i32 786689, metadata !396, metadata !"L", metadata !85, i32 16777393, metadata !88, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 177]
!791 = metadata !{i32 177, i32 36, metadata !396, null}
!792 = metadata !{i32 786689, metadata !396, metadata !"newsize", metadata !85, i32 33554609, metadata !125, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [newsize] [line 177]
!793 = metadata !{i32 177, i32 43, metadata !396, null}
!794 = metadata !{i32 786688, metadata !396, metadata !"oldstack", metadata !85, i32 178, metadata !113, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [oldstack] [line 178]
!795 = metadata !{i32 178, i32 11, metadata !396, null}
!796 = metadata !{i32 178, i32 3, metadata !396, null}
!797 = metadata !{i32 786688, metadata !396, metadata !"lim", metadata !85, i32 179, metadata !125, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lim] [line 179]
!798 = metadata !{i32 179, i32 7, metadata !396, null}
!799 = metadata !{i32 179, i32 3, metadata !396, null}
!800 = metadata !{i32 182, i32 3, metadata !396, null}
!801 = metadata !{i32 182, i32 3, metadata !802, null}
!802 = metadata !{i32 786443, metadata !84, metadata !396, i32 182, i32 3, i32 1, i32 150} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!803 = metadata !{i32 182, i32 3, metadata !804, null}
!804 = metadata !{i32 786443, metadata !84, metadata !396, i32 182, i32 3, i32 2, i32 151} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!805 = metadata !{i32 182, i32 3, metadata !806, null}
!806 = metadata !{i32 786443, metadata !84, metadata !807, i32 182, i32 3, i32 4, i32 153} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!807 = metadata !{i32 786443, metadata !84, metadata !396, i32 182, i32 3, i32 3, i32 152} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!808 = metadata !{i32 183, i32 3, metadata !809, null}
!809 = metadata !{i32 786443, metadata !84, metadata !396, i32 183, i32 3, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!810 = metadata !{i32 183, i32 3, metadata !811, null}
!811 = metadata !{i32 786443, metadata !84, metadata !812, i32 183, i32 3, i32 2, i32 155} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!812 = metadata !{i32 786443, metadata !84, metadata !809, i32 183, i32 3, i32 1, i32 154} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!813 = metadata !{i32 184, i32 5, metadata !809, null}
!814 = metadata !{i32 183, i32 25, metadata !809, null}
!815 = metadata !{i32 185, i32 3, metadata !396, null}
!816 = metadata !{i32 186, i32 3, metadata !396, null}
!817 = metadata !{i32 187, i32 3, metadata !396, null}
!818 = metadata !{i32 188, i32 1, metadata !396, null}
!819 = metadata !{i32 786689, metadata !531, metadata !"L", metadata !85, i32 16777374, metadata !88, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 158]
!820 = metadata !{i32 158, i32 38, metadata !531, null}
!821 = metadata !{i32 786689, metadata !531, metadata !"oldstack", metadata !85, i32 33554590, metadata !113, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [oldstack] [line 158]
!822 = metadata !{i32 158, i32 49, metadata !531, null}
!823 = metadata !{i32 786688, metadata !531, metadata !"ci", metadata !85, i32 159, metadata !255, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ci] [line 159]
!824 = metadata !{i32 159, i32 13, metadata !531, null}
!825 = metadata !{i32 786688, metadata !531, metadata !"up", metadata !85, i32 160, metadata !296, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [up] [line 160]
!826 = metadata !{i32 160, i32 10, metadata !531, null}
!827 = metadata !{i32 161, i32 3, metadata !531, null}
!828 = metadata !{i32 162, i32 8, metadata !829, null}
!829 = metadata !{i32 786443, metadata !84, metadata !531, i32 162, i32 3, i32 0, i32 138} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!830 = metadata !{i32 162, i32 8, metadata !831, null}
!831 = metadata !{i32 786443, metadata !84, metadata !832, i32 162, i32 8, i32 2, i32 157} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!832 = metadata !{i32 786443, metadata !84, metadata !829, i32 162, i32 8, i32 1, i32 156} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!833 = metadata !{i32 163, i32 5, metadata !829, null}
!834 = metadata !{i32 162, i32 39, metadata !829, null}
!835 = metadata !{i32 164, i32 8, metadata !836, null}
!836 = metadata !{i32 786443, metadata !84, metadata !531, i32 164, i32 3, i32 0, i32 139} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!837 = metadata !{i32 164, i32 8, metadata !838, null}
!838 = metadata !{i32 786443, metadata !84, metadata !839, i32 164, i32 8, i32 2, i32 159} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!839 = metadata !{i32 786443, metadata !84, metadata !836, i32 164, i32 8, i32 1, i32 158} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!840 = metadata !{i32 165, i32 5, metadata !841, null}
!841 = metadata !{i32 786443, metadata !84, metadata !836, i32 164, i32 51, i32 0, i32 140} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!842 = metadata !{i32 166, i32 5, metadata !841, null}
!843 = metadata !{i32 167, i32 9, metadata !844, null}
!844 = metadata !{i32 786443, metadata !84, metadata !841, i32 167, i32 9, i32 0, i32 141} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!845 = metadata !{i32 168, i32 7, metadata !844, null}
!846 = metadata !{i32 169, i32 3, metadata !841, null}
!847 = metadata !{i32 164, i32 32, metadata !836, null}
!848 = metadata !{i32 170, i32 1, metadata !531, null}
!849 = metadata !{i32 786689, metadata !397, metadata !"L", metadata !85, i32 16777407, metadata !88, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 191]
!850 = metadata !{i32 191, i32 33, metadata !397, null}
!851 = metadata !{i32 786689, metadata !397, metadata !"n", metadata !85, i32 33554623, metadata !125, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 191]
!852 = metadata !{i32 191, i32 40, metadata !397, null}
!853 = metadata !{i32 786688, metadata !397, metadata !"size", metadata !85, i32 192, metadata !125, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [size] [line 192]
!854 = metadata !{i32 192, i32 7, metadata !397, null}
!855 = metadata !{i32 192, i32 3, metadata !397, null}
!856 = metadata !{i32 193, i32 7, metadata !857, null}
!857 = metadata !{i32 786443, metadata !84, metadata !397, i32 193, i32 7, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!858 = metadata !{i32 194, i32 5, metadata !857, null}
!859 = metadata !{i32 786688, metadata !860, metadata !"needed", metadata !85, i32 196, metadata !125, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [needed] [line 196]
!860 = metadata !{i32 786443, metadata !84, metadata !857, i32 195, i32 8, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!861 = metadata !{i32 196, i32 9, metadata !860, null}
!862 = metadata !{i32 196, i32 5, metadata !860, null}
!863 = metadata !{i32 786688, metadata !860, metadata !"newsize", metadata !85, i32 197, metadata !125, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [newsize] [line 197]
!864 = metadata !{i32 197, i32 9, metadata !860, null}
!865 = metadata !{i32 197, i32 5, metadata !860, null}
!866 = metadata !{i32 198, i32 9, metadata !867, null}
!867 = metadata !{i32 786443, metadata !84, metadata !860, i32 198, i32 9, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!868 = metadata !{i32 198, i32 34, metadata !869, null}
!869 = metadata !{i32 786443, metadata !84, metadata !867, i32 198, i32 34, i32 1, i32 160} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!870 = metadata !{i32 199, i32 9, metadata !871, null}
!871 = metadata !{i32 786443, metadata !84, metadata !860, i32 199, i32 9, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!872 = metadata !{i32 199, i32 27, metadata !873, null}
!873 = metadata !{i32 786443, metadata !84, metadata !871, i32 199, i32 27, i32 1, i32 161} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!874 = metadata !{i32 200, i32 9, metadata !875, null}
!875 = metadata !{i32 786443, metadata !84, metadata !860, i32 200, i32 9, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!876 = metadata !{i32 201, i32 7, metadata !877, null}
!877 = metadata !{i32 786443, metadata !84, metadata !875, i32 200, i32 34, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!878 = metadata !{i32 202, i32 7, metadata !877, null}
!879 = metadata !{i32 205, i32 7, metadata !875, null}
!880 = metadata !{i32 207, i32 1, metadata !397, null}
!881 = metadata !{i32 786689, metadata !398, metadata !"L", metadata !85, i32 16777437, metadata !88, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 221]
!882 = metadata !{i32 221, i32 35, metadata !398, null}
!883 = metadata !{i32 786688, metadata !398, metadata !"inuse", metadata !85, i32 222, metadata !125, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inuse] [line 222]
!884 = metadata !{i32 222, i32 7, metadata !398, null}
!885 = metadata !{i32 222, i32 15, metadata !398, null}
!886 = metadata !{i32 786688, metadata !398, metadata !"goodsize", metadata !85, i32 223, metadata !125, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [goodsize] [line 223]
!887 = metadata !{i32 223, i32 7, metadata !398, null}
!888 = metadata !{i32 223, i32 3, metadata !398, null}
!889 = metadata !{i32 224, i32 7, metadata !890, null}
!890 = metadata !{i32 786443, metadata !84, metadata !398, i32 224, i32 7, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!891 = metadata !{i32 224, i32 33, metadata !892, null}
!892 = metadata !{i32 786443, metadata !84, metadata !890, i32 224, i32 33, i32 1, i32 162} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!893 = metadata !{i32 225, i32 7, metadata !894, null}
!894 = metadata !{i32 786443, metadata !84, metadata !398, i32 225, i32 7, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!895 = metadata !{i32 226, i32 5, metadata !894, null}
!896 = metadata !{i32 228, i32 5, metadata !894, null}
!897 = metadata !{i32 229, i32 7, metadata !898, null}
!898 = metadata !{i32 786443, metadata !84, metadata !398, i32 229, i32 7, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!899 = metadata !{i32 229, i32 7, metadata !900, null}
!900 = metadata !{i32 786443, metadata !84, metadata !898, i32 229, i32 7, i32 1, i32 163} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!901 = metadata !{i32 231, i32 5, metadata !898, null}
!902 = metadata !{i32 234, i32 1, metadata !398, null}
!903 = metadata !{i32 786689, metadata !530, metadata !"L", metadata !85, i32 16777426, metadata !88, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 210]
!904 = metadata !{i32 210, i32 35, metadata !530, null}
!905 = metadata !{i32 786688, metadata !530, metadata !"ci", metadata !85, i32 211, metadata !255, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ci] [line 211]
!906 = metadata !{i32 211, i32 13, metadata !530, null}
!907 = metadata !{i32 786688, metadata !530, metadata !"lim", metadata !85, i32 212, metadata !112, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lim] [line 212]
!908 = metadata !{i32 212, i32 9, metadata !530, null}
!909 = metadata !{i32 212, i32 3, metadata !530, null}
!910 = metadata !{i32 213, i32 8, metadata !911, null}
!911 = metadata !{i32 786443, metadata !84, metadata !530, i32 213, i32 3, i32 0, i32 135} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!912 = metadata !{i32 213, i32 8, metadata !913, null}
!913 = metadata !{i32 786443, metadata !84, metadata !914, i32 213, i32 8, i32 2, i32 166} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!914 = metadata !{i32 786443, metadata !84, metadata !911, i32 213, i32 8, i32 1, i32 164} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!915 = metadata !{i32 215, i32 9, metadata !916, null}
!916 = metadata !{i32 786443, metadata !84, metadata !917, i32 215, i32 9, i32 0, i32 137} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!917 = metadata !{i32 786443, metadata !84, metadata !911, i32 213, i32 51, i32 0, i32 136} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!918 = metadata !{i32 215, i32 24, metadata !919, null}
!919 = metadata !{i32 786443, metadata !84, metadata !916, i32 215, i32 24, i32 1, i32 165} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!920 = metadata !{i32 216, i32 3, metadata !917, null}
!921 = metadata !{i32 213, i32 32, metadata !911, null}
!922 = metadata !{i32 217, i32 3, metadata !530, null}
!923 = metadata !{i32 786689, metadata !401, metadata !"L", metadata !85, i32 16777453, metadata !88, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 237]
!924 = metadata !{i32 237, i32 30, metadata !401, null}
!925 = metadata !{i32 238, i32 3, metadata !926, null}
!926 = metadata !{i32 786443, metadata !84, metadata !401, i32 238, i32 3, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!927 = metadata !{i32 238, i32 3, metadata !928, null}
!928 = metadata !{i32 786443, metadata !84, metadata !929, i32 238, i32 3, i32 1, i32 167} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!929 = metadata !{i32 786443, metadata !84, metadata !926, i32 238, i32 3, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!930 = metadata !{i32 239, i32 3, metadata !401, null}
!931 = metadata !{i32 240, i32 1, metadata !401, null}
!932 = metadata !{i32 786689, metadata !402, metadata !"L", metadata !85, i32 16777466, metadata !88, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 250]
!933 = metadata !{i32 250, i32 28, metadata !402, null}
!934 = metadata !{i32 786689, metadata !402, metadata !"event", metadata !85, i32 33554682, metadata !125, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [event] [line 250]
!935 = metadata !{i32 250, i32 35, metadata !402, null}
!936 = metadata !{i32 786689, metadata !402, metadata !"line", metadata !85, i32 50331898, metadata !125, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [line] [line 250]
!937 = metadata !{i32 250, i32 46, metadata !402, null}
!938 = metadata !{i32 786688, metadata !402, metadata !"hook", metadata !85, i32 251, metadata !349, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [hook] [line 251]
!939 = metadata !{i32 251, i32 12, metadata !402, null}
!940 = metadata !{i32 251, i32 3, metadata !402, null}
!941 = metadata !{i32 252, i32 7, metadata !942, null}
!942 = metadata !{i32 786443, metadata !84, metadata !402, i32 252, i32 7, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!943 = metadata !{i32 252, i32 7, metadata !944, null}
!944 = metadata !{i32 786443, metadata !84, metadata !942, i32 252, i32 7, i32 1, i32 168} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!945 = metadata !{i32 786688, metadata !946, metadata !"ci", metadata !85, i32 253, metadata !255, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ci] [line 253]
!946 = metadata !{i32 786443, metadata !84, metadata !942, i32 252, i32 29, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!947 = metadata !{i32 253, i32 15, metadata !946, null}
!948 = metadata !{i32 253, i32 5, metadata !946, null}
!949 = metadata !{i32 786688, metadata !946, metadata !"top", metadata !85, i32 254, metadata !154, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [top] [line 254]
!950 = metadata !{i32 254, i32 15, metadata !946, null}
!951 = metadata !{i32 254, i32 5, metadata !946, null}
!952 = metadata !{i32 786688, metadata !946, metadata !"ci_top", metadata !85, i32 255, metadata !154, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ci_top] [line 255]
!953 = metadata !{i32 255, i32 15, metadata !946, null}
!954 = metadata !{i32 255, i32 5, metadata !946, null}
!955 = metadata !{i32 786688, metadata !946, metadata !"ar", metadata !85, i32 256, metadata !354, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ar] [line 256]
!956 = metadata !{i32 256, i32 15, metadata !946, null}
!957 = metadata !{i32 257, i32 5, metadata !946, null}
!958 = metadata !{i32 258, i32 5, metadata !946, null}
!959 = metadata !{i32 259, i32 5, metadata !946, null}
!960 = metadata !{i32 260, i32 5, metadata !961, null}
!961 = metadata !{i32 786443, metadata !84, metadata !946, i32 260, i32 5, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!962 = metadata !{i32 260, i32 5, metadata !963, null}
!963 = metadata !{i32 786443, metadata !84, metadata !964, i32 260, i32 5, i32 1, i32 169} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!964 = metadata !{i32 786443, metadata !84, metadata !961, i32 260, i32 5, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!965 = metadata !{i32 261, i32 5, metadata !946, null}
!966 = metadata !{i32 263, i32 5, metadata !946, null}
!967 = metadata !{i32 264, i32 5, metadata !946, null}
!968 = metadata !{i32 266, i32 5, metadata !946, null}
!969 = metadata !{i32 269, i32 5, metadata !946, null}
!970 = metadata !{i32 270, i32 5, metadata !946, null}
!971 = metadata !{i32 271, i32 5, metadata !946, null}
!972 = metadata !{i32 272, i32 5, metadata !946, null}
!973 = metadata !{i32 273, i32 3, metadata !946, null}
!974 = metadata !{i32 274, i32 1, metadata !402, null}
!975 = metadata !{i32 786689, metadata !405, metadata !"L", metadata !85, i32 16777560, metadata !88, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 344]
!976 = metadata !{i32 344, i32 30, metadata !405, null}
!977 = metadata !{i32 786689, metadata !405, metadata !"func", metadata !85, i32 33554776, metadata !112, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [func] [line 344]
!978 = metadata !{i32 344, i32 39, metadata !405, null}
!979 = metadata !{i32 786689, metadata !405, metadata !"nresults", metadata !85, i32 50331992, metadata !125, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nresults] [line 344]
!980 = metadata !{i32 344, i32 49, metadata !405, null}
!981 = metadata !{i32 786688, metadata !405, metadata !"f", metadata !85, i32 345, metadata !127, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [f] [line 345]
!982 = metadata !{i32 345, i32 17, metadata !405, null}
!983 = metadata !{i32 786688, metadata !405, metadata !"ci", metadata !85, i32 346, metadata !255, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ci] [line 346]
!984 = metadata !{i32 346, i32 13, metadata !405, null}
!985 = metadata !{i32 347, i32 3, metadata !405, null}
!986 = metadata !{i32 349, i32 7, metadata !987, null}
!987 = metadata !{i32 786443, metadata !84, metadata !405, i32 347, i32 24, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!988 = metadata !{i32 350, i32 7, metadata !987, null}
!989 = metadata !{i32 352, i32 7, metadata !987, null}
!990 = metadata !{i32 786688, metadata !991, metadata !"n", metadata !85, i32 354, metadata !125, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 354]
!991 = metadata !{i32 786443, metadata !84, metadata !987, i32 353, i32 13, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!992 = metadata !{i32 354, i32 11, metadata !991, null}
!993 = metadata !{i32 355, i32 7, metadata !994, null}
!994 = metadata !{i32 786443, metadata !84, metadata !991, i32 355, i32 7, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!995 = metadata !{i32 786688, metadata !996, metadata !"t__", metadata !85, i32 355, metadata !154, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [t__] [line 355]
!996 = metadata !{i32 786443, metadata !84, metadata !994, i32 355, i32 7, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!997 = metadata !{i32 355, i32 7, metadata !996, null}
!998 = metadata !{i32 355, i32 7, metadata !999, null}
!999 = metadata !{i32 786443, metadata !84, metadata !996, i32 355, i32 7, i32 1, i32 170} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!1000 = metadata !{i32 355, i32 7, metadata !1001, null}
!1001 = metadata !{i32 786443, metadata !84, metadata !1002, i32 355, i32 7, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!1002 = metadata !{i32 786443, metadata !84, metadata !996, i32 355, i32 7, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!1003 = metadata !{i32 355, i32 7, metadata !1004, null}
!1004 = metadata !{i32 786443, metadata !84, metadata !1005, i32 355, i32 7, i32 2, i32 171} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!1005 = metadata !{i32 786443, metadata !84, metadata !1001, i32 355, i32 7, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!1006 = metadata !{i32 355, i32 7, metadata !1007, null}
!1007 = metadata !{i32 786443, metadata !84, metadata !1008, i32 355, i32 7, i32 4, i32 173} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!1008 = metadata !{i32 786443, metadata !84, metadata !996, i32 355, i32 7, i32 3, i32 172} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!1009 = metadata !{i32 356, i32 7, metadata !991, null}
!1010 = metadata !{i32 356, i32 7, metadata !1011, null}
!1011 = metadata !{i32 786443, metadata !84, metadata !991, i32 356, i32 7, i32 1, i32 174} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!1012 = metadata !{i32 356, i32 12, metadata !1013, null}
!1013 = metadata !{i32 786443, metadata !84, metadata !991, i32 356, i32 12, i32 2, i32 175} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!1014 = metadata !{i32 356, i32 12, metadata !991, null}
!1015 = metadata !{i32 356, i32 12, metadata !1016, null}
!1016 = metadata !{i32 786443, metadata !84, metadata !1017, i32 356, i32 12, i32 4, i32 177} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!1017 = metadata !{i32 786443, metadata !84, metadata !991, i32 356, i32 12, i32 3, i32 176} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!1018 = metadata !{i32 357, i32 7, metadata !991, null}
!1019 = metadata !{i32 358, i32 7, metadata !991, null}
!1020 = metadata !{i32 359, i32 7, metadata !991, null}
!1021 = metadata !{i32 361, i32 7, metadata !991, null}
!1022 = metadata !{i32 362, i32 11, metadata !1023, null}
!1023 = metadata !{i32 786443, metadata !84, metadata !991, i32 362, i32 11, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!1024 = metadata !{i32 363, i32 9, metadata !1023, null}
!1025 = metadata !{i32 365, i32 11, metadata !991, null}
!1026 = metadata !{i32 368, i32 7, metadata !991, null}
!1027 = metadata !{i32 369, i32 7, metadata !991, null}
!1028 = metadata !{i32 786688, metadata !1029, metadata !"base", metadata !85, i32 372, metadata !112, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [base] [line 372]
!1029 = metadata !{i32 786443, metadata !84, metadata !987, i32 371, i32 20, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!1030 = metadata !{i32 372, i32 13, metadata !1029, null}
!1031 = metadata !{i32 786688, metadata !1029, metadata !"p", metadata !85, i32 373, metadata !474, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 373]
!1032 = metadata !{i32 373, i32 14, metadata !1029, null}
!1033 = metadata !{i32 373, i32 7, metadata !1029, null}
!1034 = metadata !{i32 786688, metadata !1029, metadata !"n", metadata !85, i32 374, metadata !125, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 374]
!1035 = metadata !{i32 374, i32 11, metadata !1029, null}
!1036 = metadata !{i32 374, i32 7, metadata !1029, null}
!1037 = metadata !{i32 786688, metadata !1029, metadata !"fsize", metadata !85, i32 375, metadata !125, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fsize] [line 375]
!1038 = metadata !{i32 375, i32 11, metadata !1029, null}
!1039 = metadata !{i32 375, i32 7, metadata !1029, null}
!1040 = metadata !{i32 376, i32 7, metadata !1041, null}
!1041 = metadata !{i32 786443, metadata !84, metadata !1029, i32 376, i32 7, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!1042 = metadata !{i32 786688, metadata !1043, metadata !"t__", metadata !85, i32 376, metadata !154, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [t__] [line 376]
!1043 = metadata !{i32 786443, metadata !84, metadata !1041, i32 376, i32 7, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!1044 = metadata !{i32 376, i32 7, metadata !1043, null}
!1045 = metadata !{i32 376, i32 7, metadata !1046, null}
!1046 = metadata !{i32 786443, metadata !84, metadata !1043, i32 376, i32 7, i32 1, i32 178} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!1047 = metadata !{i32 376, i32 7, metadata !1048, null}
!1048 = metadata !{i32 786443, metadata !84, metadata !1049, i32 376, i32 7, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!1049 = metadata !{i32 786443, metadata !84, metadata !1043, i32 376, i32 7, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!1050 = metadata !{i32 376, i32 7, metadata !1051, null}
!1051 = metadata !{i32 786443, metadata !84, metadata !1052, i32 376, i32 7, i32 2, i32 179} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!1052 = metadata !{i32 786443, metadata !84, metadata !1048, i32 376, i32 7, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!1053 = metadata !{i32 376, i32 7, metadata !1054, null}
!1054 = metadata !{i32 786443, metadata !84, metadata !1055, i32 376, i32 7, i32 4, i32 181} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!1055 = metadata !{i32 786443, metadata !84, metadata !1043, i32 376, i32 7, i32 3, i32 180} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!1056 = metadata !{i32 377, i32 11, metadata !1057, null}
!1057 = metadata !{i32 786443, metadata !84, metadata !1029, i32 377, i32 11, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!1058 = metadata !{i32 378, i32 9, metadata !1059, null}
!1059 = metadata !{i32 786443, metadata !84, metadata !1060, i32 378, i32 9, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!1060 = metadata !{i32 786443, metadata !84, metadata !1057, i32 377, i32 30, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!1061 = metadata !{i32 378, i32 9, metadata !1062, null}
!1062 = metadata !{i32 786443, metadata !84, metadata !1063, i32 378, i32 9, i32 2, i32 183} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!1063 = metadata !{i32 786443, metadata !84, metadata !1059, i32 378, i32 9, i32 1, i32 182} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!1064 = metadata !{i32 379, i32 11, metadata !1059, null}
!1065 = metadata !{i32 378, i32 34, metadata !1059, null}
!1066 = metadata !{i32 380, i32 9, metadata !1060, null}
!1067 = metadata !{i32 381, i32 7, metadata !1060, null}
!1068 = metadata !{i32 383, i32 16, metadata !1057, null}
!1069 = metadata !{i32 384, i32 7, metadata !1029, null}
!1070 = metadata !{i32 384, i32 7, metadata !1071, null}
!1071 = metadata !{i32 786443, metadata !84, metadata !1029, i32 384, i32 7, i32 1, i32 184} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!1072 = metadata !{i32 384, i32 12, metadata !1073, null}
!1073 = metadata !{i32 786443, metadata !84, metadata !1029, i32 384, i32 12, i32 2, i32 185} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!1074 = metadata !{i32 384, i32 12, metadata !1029, null}
!1075 = metadata !{i32 384, i32 12, metadata !1076, null}
!1076 = metadata !{i32 786443, metadata !84, metadata !1077, i32 384, i32 12, i32 4, i32 187} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!1077 = metadata !{i32 786443, metadata !84, metadata !1029, i32 384, i32 12, i32 3, i32 186} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!1078 = metadata !{i32 385, i32 7, metadata !1029, null}
!1079 = metadata !{i32 386, i32 7, metadata !1029, null}
!1080 = metadata !{i32 387, i32 7, metadata !1029, null}
!1081 = metadata !{i32 388, i32 7, metadata !1029, null}
!1082 = metadata !{i32 390, i32 7, metadata !1029, null}
!1083 = metadata !{i32 391, i32 7, metadata !1029, null}
!1084 = metadata !{i32 392, i32 11, metadata !1085, null}
!1085 = metadata !{i32 786443, metadata !84, metadata !1029, i32 392, i32 11, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!1086 = metadata !{i32 393, i32 9, metadata !1085, null}
!1087 = metadata !{i32 394, i32 7, metadata !1029, null}
!1088 = metadata !{i32 397, i32 7, metadata !1089, null}
!1089 = metadata !{i32 786443, metadata !84, metadata !1090, i32 397, i32 7, i32 0, i32 51} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!1090 = metadata !{i32 786443, metadata !84, metadata !987, i32 396, i32 14, i32 0, i32 50} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!1091 = metadata !{i32 786688, metadata !1092, metadata !"t__", metadata !85, i32 397, metadata !154, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [t__] [line 397]
!1092 = metadata !{i32 786443, metadata !84, metadata !1089, i32 397, i32 7, i32 0, i32 52} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!1093 = metadata !{i32 397, i32 7, metadata !1092, null}
!1094 = metadata !{i32 397, i32 7, metadata !1095, null}
!1095 = metadata !{i32 786443, metadata !84, metadata !1092, i32 397, i32 7, i32 1, i32 188} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!1096 = metadata !{i32 397, i32 7, metadata !1097, null}
!1097 = metadata !{i32 786443, metadata !84, metadata !1098, i32 397, i32 7, i32 0, i32 54} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!1098 = metadata !{i32 786443, metadata !84, metadata !1092, i32 397, i32 7, i32 0, i32 53} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!1099 = metadata !{i32 397, i32 7, metadata !1100, null}
!1100 = metadata !{i32 786443, metadata !84, metadata !1101, i32 397, i32 7, i32 2, i32 189} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!1101 = metadata !{i32 786443, metadata !84, metadata !1097, i32 397, i32 7, i32 0, i32 55} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!1102 = metadata !{i32 397, i32 7, metadata !1103, null}
!1103 = metadata !{i32 786443, metadata !84, metadata !1104, i32 397, i32 7, i32 4, i32 191} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!1104 = metadata !{i32 786443, metadata !84, metadata !1092, i32 397, i32 7, i32 3, i32 190} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!1105 = metadata !{i32 398, i32 7, metadata !1090, null}
!1106 = metadata !{i32 399, i32 14, metadata !1090, null}
!1107 = metadata !{i32 402, i32 1, metadata !405, null}
!1108 = metadata !{i32 786689, metadata !408, metadata !"L", metadata !85, i32 16777669, metadata !88, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 453]
!1109 = metadata !{i32 453, i32 30, metadata !408, null}
!1110 = metadata !{i32 786689, metadata !408, metadata !"ci", metadata !85, i32 33554885, metadata !255, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ci] [line 453]
!1111 = metadata !{i32 453, i32 43, metadata !408, null}
!1112 = metadata !{i32 786689, metadata !408, metadata !"firstResult", metadata !85, i32 50332101, metadata !112, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [firstResult] [line 453]
!1113 = metadata !{i32 453, i32 53, metadata !408, null}
!1114 = metadata !{i32 786689, metadata !408, metadata !"nres", metadata !85, i32 67109317, metadata !125, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nres] [line 453]
!1115 = metadata !{i32 453, i32 70, metadata !408, null}
!1116 = metadata !{i32 786688, metadata !408, metadata !"res", metadata !85, i32 454, metadata !112, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [res] [line 454]
!1117 = metadata !{i32 454, i32 9, metadata !408, null}
!1118 = metadata !{i32 786688, metadata !408, metadata !"wanted", metadata !85, i32 455, metadata !125, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [wanted] [line 455]
!1119 = metadata !{i32 455, i32 7, metadata !408, null}
!1120 = metadata !{i32 455, i32 3, metadata !408, null}
!1121 = metadata !{i32 456, i32 7, metadata !1122, null}
!1122 = metadata !{i32 786443, metadata !84, metadata !408, i32 456, i32 7, i32 0, i32 57} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!1123 = metadata !{i32 457, i32 9, metadata !1124, null}
!1124 = metadata !{i32 786443, metadata !84, metadata !1125, i32 457, i32 9, i32 0, i32 59} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!1125 = metadata !{i32 786443, metadata !84, metadata !1122, i32 456, i32 51, i32 0, i32 58} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!1126 = metadata !{i32 786688, metadata !1127, metadata !"fr", metadata !85, i32 458, metadata !154, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fr] [line 458]
!1127 = metadata !{i32 786443, metadata !84, metadata !1124, i32 457, i32 36, i32 0, i32 60} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!1128 = metadata !{i32 458, i32 17, metadata !1127, null}
!1129 = metadata !{i32 458, i32 7, metadata !1127, null}
!1130 = metadata !{i32 459, i32 7, metadata !1127, null}
!1131 = metadata !{i32 460, i32 7, metadata !1127, null}
!1132 = metadata !{i32 461, i32 5, metadata !1127, null}
!1133 = metadata !{i32 462, i32 5, metadata !1125, null}
!1134 = metadata !{i32 463, i32 3, metadata !1125, null}
!1135 = metadata !{i32 464, i32 3, metadata !408, null}
!1136 = metadata !{i32 465, i32 3, metadata !408, null}
!1137 = metadata !{i32 467, i32 10, metadata !408, null}
!1138 = metadata !{i32 786689, metadata !471, metadata !"L", metadata !85, i32 16777506, metadata !88, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 290]
!1139 = metadata !{i32 290, i32 41, metadata !471, null}
!1140 = metadata !{i32 786689, metadata !471, metadata !"p", metadata !85, i32 33554722, metadata !474, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [p] [line 290]
!1141 = metadata !{i32 290, i32 51, metadata !471, null}
!1142 = metadata !{i32 786689, metadata !471, metadata !"actual", metadata !85, i32 50331938, metadata !125, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [actual] [line 290]
!1143 = metadata !{i32 290, i32 58, metadata !471, null}
!1144 = metadata !{i32 786688, metadata !471, metadata !"i", metadata !85, i32 291, metadata !125, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 291]
!1145 = metadata !{i32 291, i32 7, metadata !471, null}
!1146 = metadata !{i32 786688, metadata !471, metadata !"nfixargs", metadata !85, i32 292, metadata !125, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nfixargs] [line 292]
!1147 = metadata !{i32 292, i32 7, metadata !471, null}
!1148 = metadata !{i32 292, i32 3, metadata !471, null}
!1149 = metadata !{i32 786688, metadata !471, metadata !"base", metadata !85, i32 293, metadata !112, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [base] [line 293]
!1150 = metadata !{i32 293, i32 9, metadata !471, null}
!1151 = metadata !{i32 786688, metadata !471, metadata !"fixed", metadata !85, i32 293, metadata !112, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fixed] [line 293]
!1152 = metadata !{i32 293, i32 15, metadata !471, null}
!1153 = metadata !{i32 295, i32 3, metadata !471, null}
!1154 = metadata !{i32 296, i32 3, metadata !471, null}
!1155 = metadata !{i32 297, i32 8, metadata !1156, null}
!1156 = metadata !{i32 786443, metadata !84, metadata !471, i32 297, i32 3, i32 0, i32 131} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!1157 = metadata !{i32 297, i32 8, metadata !1158, null}
!1158 = metadata !{i32 786443, metadata !84, metadata !1159, i32 297, i32 8, i32 4, i32 195} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!1159 = metadata !{i32 786443, metadata !84, metadata !1156, i32 297, i32 8, i32 1, i32 192} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!1160 = metadata !{i32 297, i32 8, metadata !1161, null}
!1161 = metadata !{i32 786443, metadata !84, metadata !1156, i32 297, i32 8, i32 2, i32 193} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!1162 = metadata !{i32 297, i32 8, metadata !1163, null}
!1163 = metadata !{i32 786443, metadata !84, metadata !1156, i32 297, i32 8, i32 3, i32 194} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!1164 = metadata !{i32 786688, metadata !1165, metadata !"io1", metadata !85, i32 298, metadata !113, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [io1] [line 298]
!1165 = metadata !{i32 786443, metadata !84, metadata !1166, i32 298, i32 5, i32 0, i32 133} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!1166 = metadata !{i32 786443, metadata !84, metadata !1156, i32 297, i32 48, i32 0, i32 132} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!1167 = metadata !{i32 298, i32 5, metadata !1165, null}
!1168 = metadata !{i32 299, i32 5, metadata !1166, null}
!1169 = metadata !{i32 300, i32 3, metadata !1166, null}
!1170 = metadata !{i32 297, i32 43, metadata !1156, null}
!1171 = metadata !{i32 301, i32 3, metadata !1172, null}
!1172 = metadata !{i32 786443, metadata !84, metadata !471, i32 301, i32 3, i32 0, i32 134} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!1173 = metadata !{i32 301, i32 3, metadata !1174, null}
!1174 = metadata !{i32 786443, metadata !84, metadata !1175, i32 301, i32 3, i32 2, i32 197} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!1175 = metadata !{i32 786443, metadata !84, metadata !1172, i32 301, i32 3, i32 1, i32 196} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!1176 = metadata !{i32 302, i32 5, metadata !1172, null}
!1177 = metadata !{i32 301, i32 24, metadata !1172, null}
!1178 = metadata !{i32 303, i32 3, metadata !471, null}
!1179 = metadata !{i32 786689, metadata !468, metadata !"L", metadata !85, i32 16777493, metadata !88, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 277]
!1180 = metadata !{i32 277, i32 34, metadata !468, null}
!1181 = metadata !{i32 786689, metadata !468, metadata !"ci", metadata !85, i32 33554709, metadata !255, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ci] [line 277]
!1182 = metadata !{i32 277, i32 47, metadata !468, null}
!1183 = metadata !{i32 786688, metadata !468, metadata !"hook", metadata !85, i32 278, metadata !125, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [hook] [line 278]
!1184 = metadata !{i32 278, i32 7, metadata !468, null}
!1185 = metadata !{i32 278, i32 3, metadata !468, null}
!1186 = metadata !{i32 279, i32 3, metadata !468, null}
!1187 = metadata !{i32 280, i32 7, metadata !1188, null}
!1188 = metadata !{i32 786443, metadata !84, metadata !468, i32 280, i32 7, i32 0, i32 129} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!1189 = metadata !{i32 280, i32 7, metadata !1190, null}
!1190 = metadata !{i32 786443, metadata !84, metadata !1188, i32 280, i32 7, i32 1, i32 198} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!1191 = metadata !{i32 282, i32 5, metadata !1192, null}
!1192 = metadata !{i32 786443, metadata !84, metadata !1188, i32 281, i32 68, i32 0, i32 130} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!1193 = metadata !{i32 283, i32 5, metadata !1192, null}
!1194 = metadata !{i32 284, i32 3, metadata !1192, null}
!1195 = metadata !{i32 285, i32 3, metadata !468, null}
!1196 = metadata !{i32 286, i32 3, metadata !468, null}
!1197 = metadata !{i32 287, i32 1, metadata !468, null}
!1198 = metadata !{i32 786689, metadata !465, metadata !"L", metadata !85, i32 16777528, metadata !88, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 312]
!1199 = metadata !{i32 312, i32 35, metadata !465, null}
!1200 = metadata !{i32 786689, metadata !465, metadata !"func", metadata !85, i32 33554744, metadata !112, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [func] [line 312]
!1201 = metadata !{i32 312, i32 44, metadata !465, null}
!1202 = metadata !{i32 786688, metadata !465, metadata !"tm", metadata !85, i32 313, metadata !463, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tm] [line 313]
!1203 = metadata !{i32 313, i32 17, metadata !465, null}
!1204 = metadata !{i32 313, i32 22, metadata !465, null}
!1205 = metadata !{i32 786688, metadata !465, metadata !"p", metadata !85, i32 314, metadata !112, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 314]
!1206 = metadata !{i32 314, i32 9, metadata !465, null}
!1207 = metadata !{i32 315, i32 7, metadata !1208, null}
!1208 = metadata !{i32 786443, metadata !84, metadata !465, i32 315, i32 7, i32 0, i32 125} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!1209 = metadata !{i32 316, i32 5, metadata !1208, null}
!1210 = metadata !{i32 318, i32 8, metadata !1211, null}
!1211 = metadata !{i32 786443, metadata !84, metadata !465, i32 318, i32 3, i32 0, i32 126} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!1212 = metadata !{i32 318, i32 8, metadata !1213, null}
!1213 = metadata !{i32 786443, metadata !84, metadata !1214, i32 318, i32 8, i32 2, i32 200} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!1214 = metadata !{i32 786443, metadata !84, metadata !1211, i32 318, i32 8, i32 1, i32 199} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!1215 = metadata !{i32 786688, metadata !1216, metadata !"io1", metadata !85, i32 319, metadata !113, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [io1] [line 319]
!1216 = metadata !{i32 786443, metadata !84, metadata !1211, i32 319, i32 5, i32 0, i32 127} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!1217 = metadata !{i32 319, i32 5, metadata !1216, null}
!1218 = metadata !{i32 318, i32 30, metadata !1211, null}
!1219 = metadata !{i32 320, i32 3, metadata !465, null}
!1220 = metadata !{i32 786688, metadata !1221, metadata !"io1", metadata !85, i32 321, metadata !113, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [io1] [line 321]
!1221 = metadata !{i32 786443, metadata !84, metadata !465, i32 321, i32 3, i32 0, i32 128} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!1222 = metadata !{i32 321, i32 3, metadata !1221, null}
!1223 = metadata !{i32 322, i32 1, metadata !465, null}
!1224 = metadata !{i32 786689, metadata !460, metadata !"L", metadata !85, i32 16777627, metadata !88, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 411]
!1225 = metadata !{i32 411, i32 36, metadata !460, null}
!1226 = metadata !{i32 786689, metadata !460, metadata !"firstResult", metadata !85, i32 33554843, metadata !463, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [firstResult] [line 411]
!1227 = metadata !{i32 411, i32 53, metadata !460, null}
!1228 = metadata !{i32 786689, metadata !460, metadata !"res", metadata !85, i32 50332059, metadata !112, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [res] [line 411]
!1229 = metadata !{i32 411, i32 72, metadata !460, null}
!1230 = metadata !{i32 786689, metadata !460, metadata !"nres", metadata !85, i32 67109276, metadata !125, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nres] [line 412]
!1231 = metadata !{i32 412, i32 43, metadata !460, null}
!1232 = metadata !{i32 786689, metadata !460, metadata !"wanted", metadata !85, i32 83886492, metadata !125, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [wanted] [line 412]
!1233 = metadata !{i32 412, i32 53, metadata !460, null}
!1234 = metadata !{i32 413, i32 3, metadata !460, null}
!1235 = metadata !{i32 414, i32 13, metadata !1236, null}
!1236 = metadata !{i32 786443, metadata !84, metadata !460, i32 413, i32 19, i32 0, i32 109} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!1237 = metadata !{i32 416, i32 11, metadata !1238, null}
!1238 = metadata !{i32 786443, metadata !84, metadata !1239, i32 416, i32 11, i32 0, i32 111} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!1239 = metadata !{i32 786443, metadata !84, metadata !1236, i32 415, i32 13, i32 0, i32 110} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!1240 = metadata !{i32 417, i32 9, metadata !1238, null}
!1241 = metadata !{i32 786688, metadata !1242, metadata !"io1", metadata !85, i32 418, metadata !113, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [io1] [line 418]
!1242 = metadata !{i32 786443, metadata !84, metadata !1239, i32 418, i32 7, i32 0, i32 112} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!1243 = metadata !{i32 418, i32 7, metadata !1242, null}
!1244 = metadata !{i32 419, i32 7, metadata !1239, null}
!1245 = metadata !{i32 786688, metadata !1246, metadata !"i", metadata !85, i32 422, metadata !125, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 422]
!1246 = metadata !{i32 786443, metadata !84, metadata !1236, i32 421, i32 23, i32 0, i32 113} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!1247 = metadata !{i32 422, i32 11, metadata !1246, null}
!1248 = metadata !{i32 423, i32 12, metadata !1249, null}
!1249 = metadata !{i32 786443, metadata !84, metadata !1246, i32 423, i32 7, i32 0, i32 114} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!1250 = metadata !{i32 423, i32 12, metadata !1251, null}
!1251 = metadata !{i32 786443, metadata !84, metadata !1252, i32 423, i32 12, i32 2, i32 202} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!1252 = metadata !{i32 786443, metadata !84, metadata !1249, i32 423, i32 12, i32 1, i32 201} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!1253 = metadata !{i32 786688, metadata !1254, metadata !"io1", metadata !85, i32 424, metadata !113, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [io1] [line 424]
!1254 = metadata !{i32 786443, metadata !84, metadata !1249, i32 424, i32 9, i32 0, i32 115} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!1255 = metadata !{i32 424, i32 9, metadata !1254, null}
!1256 = metadata !{i32 423, i32 29, metadata !1249, null}
!1257 = metadata !{i32 425, i32 7, metadata !1246, null}
!1258 = metadata !{i32 426, i32 7, metadata !1246, null}
!1259 = metadata !{i32 786688, metadata !1260, metadata !"i", metadata !85, i32 429, metadata !125, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 429]
!1260 = metadata !{i32 786443, metadata !84, metadata !1236, i32 428, i32 14, i32 0, i32 116} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!1261 = metadata !{i32 429, i32 11, metadata !1260, null}
!1262 = metadata !{i32 430, i32 11, metadata !1263, null}
!1263 = metadata !{i32 786443, metadata !84, metadata !1260, i32 430, i32 11, i32 0, i32 117} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!1264 = metadata !{i32 431, i32 14, metadata !1265, null}
!1265 = metadata !{i32 786443, metadata !84, metadata !1266, i32 431, i32 9, i32 0, i32 119} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!1266 = metadata !{i32 786443, metadata !84, metadata !1263, i32 430, i32 27, i32 0, i32 118} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!1267 = metadata !{i32 431, i32 14, metadata !1268, null}
!1268 = metadata !{i32 786443, metadata !84, metadata !1269, i32 431, i32 14, i32 2, i32 204} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!1269 = metadata !{i32 786443, metadata !84, metadata !1265, i32 431, i32 14, i32 1, i32 203} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!1270 = metadata !{i32 786688, metadata !1271, metadata !"io1", metadata !85, i32 432, metadata !113, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [io1] [line 432]
!1271 = metadata !{i32 786443, metadata !84, metadata !1265, i32 432, i32 11, i32 0, i32 120} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!1272 = metadata !{i32 432, i32 11, metadata !1271, null}
!1273 = metadata !{i32 431, i32 33, metadata !1265, null}
!1274 = metadata !{i32 433, i32 7, metadata !1266, null}
!1275 = metadata !{i32 435, i32 14, metadata !1276, null}
!1276 = metadata !{i32 786443, metadata !84, metadata !1277, i32 435, i32 9, i32 0, i32 122} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!1277 = metadata !{i32 786443, metadata !84, metadata !1263, i32 434, i32 12, i32 0, i32 121} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!1278 = metadata !{i32 435, i32 14, metadata !1279, null}
!1279 = metadata !{i32 786443, metadata !84, metadata !1280, i32 435, i32 14, i32 2, i32 206} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!1280 = metadata !{i32 786443, metadata !84, metadata !1276, i32 435, i32 14, i32 1, i32 205} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!1281 = metadata !{i32 786688, metadata !1282, metadata !"io1", metadata !85, i32 436, metadata !113, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [io1] [line 436]
!1282 = metadata !{i32 786443, metadata !84, metadata !1276, i32 436, i32 11, i32 0, i32 123} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!1283 = metadata !{i32 436, i32 11, metadata !1282, null}
!1284 = metadata !{i32 435, i32 31, metadata !1276, null}
!1285 = metadata !{i32 437, i32 9, metadata !1286, null}
!1286 = metadata !{i32 786443, metadata !84, metadata !1277, i32 437, i32 9, i32 0, i32 124} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!1287 = metadata !{i32 437, i32 9, metadata !1288, null}
!1288 = metadata !{i32 786443, metadata !84, metadata !1289, i32 437, i32 9, i32 2, i32 208} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!1289 = metadata !{i32 786443, metadata !84, metadata !1286, i32 437, i32 9, i32 1, i32 207} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!1290 = metadata !{i32 438, i32 11, metadata !1286, null}
!1291 = metadata !{i32 437, i32 28, metadata !1286, null}
!1292 = metadata !{i32 440, i32 7, metadata !1260, null}
!1293 = metadata !{i32 443, i32 3, metadata !460, null}
!1294 = metadata !{i32 444, i32 3, metadata !460, null}
!1295 = metadata !{i32 445, i32 1, metadata !460, null}
!1296 = metadata !{i32 786689, metadata !411, metadata !"L", metadata !85, i32 16777708, metadata !88, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 492]
!1297 = metadata !{i32 492, i32 28, metadata !411, null}
!1298 = metadata !{i32 786689, metadata !411, metadata !"func", metadata !85, i32 33554924, metadata !112, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [func] [line 492]
!1299 = metadata !{i32 492, i32 37, metadata !411, null}
!1300 = metadata !{i32 786689, metadata !411, metadata !"nResults", metadata !85, i32 50332140, metadata !125, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nResults] [line 492]
!1301 = metadata !{i32 492, i32 47, metadata !411, null}
!1302 = metadata !{i32 493, i32 7, metadata !1303, null}
!1303 = metadata !{i32 786443, metadata !84, metadata !411, i32 493, i32 7, i32 0, i32 61} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!1304 = metadata !{i32 494, i32 5, metadata !1303, null}
!1305 = metadata !{i32 495, i32 8, metadata !1306, null}
!1306 = metadata !{i32 786443, metadata !84, metadata !411, i32 495, i32 7, i32 0, i32 62} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!1307 = metadata !{i32 496, i32 5, metadata !1306, null}
!1308 = metadata !{i32 497, i32 3, metadata !411, null}
!1309 = metadata !{i32 498, i32 1, metadata !411, null}
!1310 = metadata !{i32 786689, metadata !459, metadata !"L", metadata !85, i32 16777694, metadata !88, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 478]
!1311 = metadata !{i32 478, i32 36, metadata !459, null}
!1312 = metadata !{i32 479, i32 7, metadata !1313, null}
!1313 = metadata !{i32 786443, metadata !84, metadata !459, i32 479, i32 7, i32 0, i32 107} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!1314 = metadata !{i32 480, i32 5, metadata !1313, null}
!1315 = metadata !{i32 481, i32 12, metadata !1316, null}
!1316 = metadata !{i32 786443, metadata !84, metadata !1313, i32 481, i32 12, i32 0, i32 108} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!1317 = metadata !{i32 482, i32 5, metadata !1316, null}
!1318 = metadata !{i32 483, i32 1, metadata !459, null}
!1319 = metadata !{i32 786689, metadata !414, metadata !"L", metadata !85, i32 16777720, metadata !88, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 504]
!1320 = metadata !{i32 504, i32 35, metadata !414, null}
!1321 = metadata !{i32 786689, metadata !414, metadata !"func", metadata !85, i32 33554936, metadata !112, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [func] [line 504]
!1322 = metadata !{i32 504, i32 44, metadata !414, null}
!1323 = metadata !{i32 786689, metadata !414, metadata !"nResults", metadata !85, i32 50332152, metadata !125, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nResults] [line 504]
!1324 = metadata !{i32 504, i32 54, metadata !414, null}
!1325 = metadata !{i32 505, i32 3, metadata !414, null}
!1326 = metadata !{i32 506, i32 3, metadata !414, null}
!1327 = metadata !{i32 507, i32 3, metadata !414, null}
!1328 = metadata !{i32 508, i32 1, metadata !414, null}
!1329 = metadata !{i32 786689, metadata !415, metadata !"L", metadata !85, i32 16777870, metadata !88, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 654]
!1330 = metadata !{i32 654, i32 36, metadata !415, null}
!1331 = metadata !{i32 786689, metadata !415, metadata !"from", metadata !85, i32 33555086, metadata !88, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [from] [line 654]
!1332 = metadata !{i32 654, i32 50, metadata !415, null}
!1333 = metadata !{i32 786689, metadata !415, metadata !"nargs", metadata !85, i32 50332302, metadata !125, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nargs] [line 654]
!1334 = metadata !{i32 654, i32 60, metadata !415, null}
!1335 = metadata !{i32 786688, metadata !415, metadata !"status", metadata !85, i32 655, metadata !125, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [status] [line 655]
!1336 = metadata !{i32 655, i32 7, metadata !415, null}
!1337 = metadata !{i32 786688, metadata !415, metadata !"oldnny", metadata !85, i32 656, metadata !109, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [oldnny] [line 656]
!1338 = metadata !{i32 656, i32 18, metadata !415, null}
!1339 = metadata !{i32 656, i32 3, metadata !415, null}
!1340 = metadata !{i32 658, i32 3, metadata !415, null}
!1341 = metadata !{i32 659, i32 3, metadata !415, null}
!1342 = metadata !{i32 659, i32 3, metadata !1343, null}
!1343 = metadata !{i32 786443, metadata !84, metadata !415, i32 659, i32 3, i32 1, i32 209} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!1344 = metadata !{i32 659, i32 3, metadata !1345, null}
!1345 = metadata !{i32 786443, metadata !84, metadata !415, i32 659, i32 3, i32 2, i32 210} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!1346 = metadata !{i32 659, i32 3, metadata !1347, null}
!1347 = metadata !{i32 786443, metadata !84, metadata !1348, i32 659, i32 3, i32 4, i32 212} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!1348 = metadata !{i32 786443, metadata !84, metadata !415, i32 659, i32 3, i32 3, i32 211} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!1349 = metadata !{i32 660, i32 3, metadata !415, null}
!1350 = metadata !{i32 662, i32 12, metadata !415, null}
!1351 = metadata !{i32 663, i32 7, metadata !1352, null}
!1352 = metadata !{i32 786443, metadata !84, metadata !415, i32 663, i32 7, i32 0, i32 63} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!1353 = metadata !{i32 664, i32 5, metadata !1352, null}
!1354 = metadata !{i32 666, i32 5, metadata !1355, null}
!1355 = metadata !{i32 786443, metadata !84, metadata !1352, i32 665, i32 8, i32 0, i32 64} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!1356 = metadata !{i32 666, i32 5, metadata !1357, null}
!1357 = metadata !{i32 786443, metadata !84, metadata !1355, i32 666, i32 5, i32 1, i32 213} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!1358 = metadata !{i32 666, i32 35, metadata !1359, null}
!1359 = metadata !{i32 786443, metadata !84, metadata !1355, i32 666, i32 35, i32 2, i32 214} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!1360 = metadata !{i32 666, i32 35, metadata !1361, null}
!1361 = metadata !{i32 786443, metadata !84, metadata !1355, i32 666, i32 35, i32 3, i32 215} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!1362 = metadata !{i32 668, i32 16, metadata !1363, null}
!1363 = metadata !{i32 786443, metadata !84, metadata !1355, i32 666, i32 55, i32 0, i32 65} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!1364 = metadata !{i32 669, i32 5, metadata !1363, null}
!1365 = metadata !{i32 670, i32 9, metadata !1366, null}
!1366 = metadata !{i32 786443, metadata !84, metadata !1355, i32 670, i32 9, i32 0, i32 66} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!1367 = metadata !{i32 671, i32 7, metadata !1368, null}
!1368 = metadata !{i32 786443, metadata !84, metadata !1366, i32 670, i32 30, i32 0, i32 67} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!1369 = metadata !{i32 672, i32 7, metadata !1368, null}
!1370 = metadata !{i32 673, i32 7, metadata !1368, null}
!1371 = metadata !{i32 674, i32 5, metadata !1368, null}
!1372 = metadata !{i32 677, i32 3, metadata !415, null}
!1373 = metadata !{i32 678, i32 3, metadata !415, null}
!1374 = metadata !{i32 681, i32 3, metadata !415, null}
!1375 = metadata !{i32 786689, metadata !455, metadata !"L", metadata !85, i32 16777833, metadata !88, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 617]
!1376 = metadata !{i32 617, i32 32, metadata !455, null}
!1377 = metadata !{i32 786689, metadata !455, metadata !"ud", metadata !85, i32 33555049, metadata !123, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ud] [line 617]
!1378 = metadata !{i32 617, i32 41, metadata !455, null}
!1379 = metadata !{i32 786688, metadata !455, metadata !"nCcalls", metadata !85, i32 618, metadata !125, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nCcalls] [line 618]
!1380 = metadata !{i32 618, i32 7, metadata !455, null}
!1381 = metadata !{i32 618, i32 3, metadata !455, null}
!1382 = metadata !{i32 786688, metadata !455, metadata !"n", metadata !85, i32 619, metadata !125, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 619]
!1383 = metadata !{i32 619, i32 7, metadata !455, null}
!1384 = metadata !{i32 619, i32 3, metadata !455, null}
!1385 = metadata !{i32 786688, metadata !455, metadata !"firstArg", metadata !85, i32 620, metadata !112, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [firstArg] [line 620]
!1386 = metadata !{i32 620, i32 9, metadata !455, null}
!1387 = metadata !{i32 620, i32 3, metadata !455, null}
!1388 = metadata !{i32 786688, metadata !455, metadata !"ci", metadata !85, i32 621, metadata !255, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ci] [line 621]
!1389 = metadata !{i32 621, i32 13, metadata !455, null}
!1390 = metadata !{i32 621, i32 3, metadata !455, null}
!1391 = metadata !{i32 622, i32 7, metadata !1392, null}
!1392 = metadata !{i32 786443, metadata !84, metadata !455, i32 622, i32 7, i32 0, i32 94} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!1393 = metadata !{i32 623, i32 5, metadata !1392, null}
!1394 = metadata !{i32 624, i32 7, metadata !1395, null}
!1395 = metadata !{i32 786443, metadata !84, metadata !455, i32 624, i32 7, i32 0, i32 95} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!1396 = metadata !{i32 625, i32 9, metadata !1397, null}
!1397 = metadata !{i32 786443, metadata !84, metadata !1398, i32 625, i32 9, i32 0, i32 97} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!1398 = metadata !{i32 786443, metadata !84, metadata !1395, i32 624, i32 28, i32 0, i32 96} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!1399 = metadata !{i32 626, i32 7, metadata !1397, null}
!1400 = metadata !{i32 628, i32 10, metadata !1401, null}
!1401 = metadata !{i32 786443, metadata !84, metadata !1398, i32 628, i32 9, i32 0, i32 98} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!1402 = metadata !{i32 629, i32 7, metadata !1401, null}
!1403 = metadata !{i32 630, i32 3, metadata !1398, null}
!1404 = metadata !{i32 631, i32 12, metadata !1405, null}
!1405 = metadata !{i32 786443, metadata !84, metadata !1395, i32 631, i32 12, i32 0, i32 99} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!1406 = metadata !{i32 632, i32 5, metadata !1405, null}
!1407 = metadata !{i32 634, i32 5, metadata !1408, null}
!1408 = metadata !{i32 786443, metadata !84, metadata !1405, i32 633, i32 8, i32 0, i32 100} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!1409 = metadata !{i32 635, i32 5, metadata !1408, null}
!1410 = metadata !{i32 636, i32 9, metadata !1411, null}
!1411 = metadata !{i32 786443, metadata !84, metadata !1408, i32 636, i32 9, i32 0, i32 101} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!1412 = metadata !{i32 637, i32 7, metadata !1411, null}
!1413 = metadata !{i32 639, i32 11, metadata !1414, null}
!1414 = metadata !{i32 786443, metadata !84, metadata !1415, i32 639, i32 11, i32 0, i32 103} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!1415 = metadata !{i32 786443, metadata !84, metadata !1411, i32 638, i32 10, i32 0, i32 102} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!1416 = metadata !{i32 641, i32 13, metadata !1417, null}
!1417 = metadata !{i32 786443, metadata !84, metadata !1414, i32 639, i32 30, i32 0, i32 104} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!1418 = metadata !{i32 644, i32 9, metadata !1417, null}
!1419 = metadata !{i32 645, i32 7, metadata !1417, null}
!1420 = metadata !{i32 646, i32 7, metadata !1415, null}
!1421 = metadata !{i32 648, i32 5, metadata !1408, null}
!1422 = metadata !{i32 651, i32 1, metadata !455, null}
!1423 = metadata !{i32 786689, metadata !449, metadata !"L", metadata !85, i32 16777796, metadata !88, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 580]
!1424 = metadata !{i32 580, i32 32, metadata !449, null}
!1425 = metadata !{i32 786689, metadata !449, metadata !"status", metadata !85, i32 33555012, metadata !125, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [status] [line 580]
!1426 = metadata !{i32 580, i32 39, metadata !449, null}
!1427 = metadata !{i32 786688, metadata !449, metadata !"oldtop", metadata !85, i32 581, metadata !112, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [oldtop] [line 581]
!1428 = metadata !{i32 581, i32 9, metadata !449, null}
!1429 = metadata !{i32 786688, metadata !449, metadata !"ci", metadata !85, i32 582, metadata !255, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ci] [line 582]
!1430 = metadata !{i32 582, i32 13, metadata !449, null}
!1431 = metadata !{i32 582, i32 18, metadata !449, null}
!1432 = metadata !{i32 583, i32 7, metadata !1433, null}
!1433 = metadata !{i32 786443, metadata !84, metadata !449, i32 583, i32 7, i32 0, i32 90} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!1434 = metadata !{i32 583, i32 19, metadata !1435, null}
!1435 = metadata !{i32 786443, metadata !84, metadata !1433, i32 583, i32 19, i32 1, i32 216} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!1436 = metadata !{i32 585, i32 3, metadata !449, null}
!1437 = metadata !{i32 586, i32 3, metadata !449, null}
!1438 = metadata !{i32 587, i32 3, metadata !449, null}
!1439 = metadata !{i32 588, i32 3, metadata !449, null}
!1440 = metadata !{i32 589, i32 3, metadata !449, null}
!1441 = metadata !{i32 590, i32 3, metadata !449, null}
!1442 = metadata !{i32 591, i32 3, metadata !449, null}
!1443 = metadata !{i32 592, i32 3, metadata !449, null}
!1444 = metadata !{i32 593, i32 3, metadata !449, null}
!1445 = metadata !{i32 594, i32 1, metadata !449, null}
!1446 = metadata !{i32 786689, metadata !447, metadata !"L", metadata !85, i32 16777763, metadata !88, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 547]
!1447 = metadata !{i32 547, i32 32, metadata !447, null}
!1448 = metadata !{i32 786689, metadata !447, metadata !"ud", metadata !85, i32 33554979, metadata !123, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ud] [line 547]
!1449 = metadata !{i32 547, i32 41, metadata !447, null}
!1450 = metadata !{i32 548, i32 7, metadata !1451, null}
!1451 = metadata !{i32 786443, metadata !84, metadata !447, i32 548, i32 7, i32 0, i32 82} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!1452 = metadata !{i32 549, i32 5, metadata !1451, null}
!1453 = metadata !{i32 550, i32 3, metadata !447, null}
!1454 = metadata !{i32 550, i32 3, metadata !1455, null}
!1455 = metadata !{i32 786443, metadata !84, metadata !447, i32 550, i32 3, i32 1, i32 217} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!1456 = metadata !{i32 551, i32 9, metadata !1457, null}
!1457 = metadata !{i32 786443, metadata !84, metadata !1458, i32 551, i32 9, i32 0, i32 84} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!1458 = metadata !{i32 786443, metadata !84, metadata !447, i32 550, i32 32, i32 0, i32 83} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!1459 = metadata !{i32 552, i32 7, metadata !1457, null}
!1460 = metadata !{i32 554, i32 7, metadata !1461, null}
!1461 = metadata !{i32 786443, metadata !84, metadata !1457, i32 553, i32 10, i32 0, i32 85} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!1462 = metadata !{i32 555, i32 7, metadata !1461, null}
!1463 = metadata !{i32 557, i32 3, metadata !1458, null}
!1464 = metadata !{i32 558, i32 1, metadata !447, null}
!1465 = metadata !{i32 786689, metadata !418, metadata !"L", metadata !85, i32 16777901, metadata !88, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 685]
!1466 = metadata !{i32 685, i32 41, metadata !418, null}
!1467 = metadata !{i32 686, i32 3, metadata !418, null}
!1468 = metadata !{i32 786689, metadata !419, metadata !"L", metadata !85, i32 16777906, metadata !88, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 690]
!1469 = metadata !{i32 690, i32 36, metadata !419, null}
!1470 = metadata !{i32 786689, metadata !419, metadata !"nresults", metadata !85, i32 33555122, metadata !125, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nresults] [line 690]
!1471 = metadata !{i32 690, i32 43, metadata !419, null}
!1472 = metadata !{i32 786689, metadata !419, metadata !"ctx", metadata !85, i32 50332338, metadata !283, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ctx] [line 690]
!1473 = metadata !{i32 690, i32 66, metadata !419, null}
!1474 = metadata !{i32 786689, metadata !419, metadata !"k", metadata !85, i32 67109555, metadata !279, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [k] [line 691]
!1475 = metadata !{i32 691, i32 39, metadata !419, null}
!1476 = metadata !{i32 786688, metadata !419, metadata !"ci", metadata !85, i32 692, metadata !255, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ci] [line 692]
!1477 = metadata !{i32 692, i32 13, metadata !419, null}
!1478 = metadata !{i32 692, i32 3, metadata !419, null}
!1479 = metadata !{i32 693, i32 3, metadata !419, null}
!1480 = metadata !{i32 696, i32 7, metadata !1481, null}
!1481 = metadata !{i32 786443, metadata !84, metadata !419, i32 696, i32 7, i32 0, i32 68} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!1482 = metadata !{i32 697, i32 9, metadata !1483, null}
!1483 = metadata !{i32 786443, metadata !84, metadata !1484, i32 697, i32 9, i32 0, i32 70} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!1484 = metadata !{i32 786443, metadata !84, metadata !1481, i32 696, i32 19, i32 0, i32 69} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!1485 = metadata !{i32 698, i32 7, metadata !1483, null}
!1486 = metadata !{i32 700, i32 7, metadata !1483, null}
!1487 = metadata !{i32 702, i32 3, metadata !419, null}
!1488 = metadata !{i32 703, i32 3, metadata !419, null}
!1489 = metadata !{i32 704, i32 7, metadata !1490, null}
!1490 = metadata !{i32 786443, metadata !84, metadata !419, i32 704, i32 7, i32 0, i32 71} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!1491 = metadata !{i32 706, i32 3, metadata !1492, null}
!1492 = metadata !{i32 786443, metadata !84, metadata !1490, i32 704, i32 18, i32 0, i32 72} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!1493 = metadata !{i32 708, i32 9, metadata !1494, null}
!1494 = metadata !{i32 786443, metadata !84, metadata !1495, i32 708, i32 9, i32 0, i32 74} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!1495 = metadata !{i32 786443, metadata !84, metadata !1490, i32 707, i32 8, i32 0, i32 73} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!1496 = metadata !{i32 709, i32 7, metadata !1494, null}
!1497 = metadata !{i32 710, i32 5, metadata !1495, null}
!1498 = metadata !{i32 711, i32 5, metadata !1495, null}
!1499 = metadata !{i32 715, i32 3, metadata !419, null}
!1500 = metadata !{i32 786689, metadata !422, metadata !"L", metadata !85, i32 16777935, metadata !88, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 719]
!1501 = metadata !{i32 719, i32 28, metadata !422, null}
!1502 = metadata !{i32 786689, metadata !422, metadata !"func", metadata !85, i32 33555151, metadata !391, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [func] [line 719]
!1503 = metadata !{i32 719, i32 37, metadata !422, null}
!1504 = metadata !{i32 786689, metadata !422, metadata !"u", metadata !85, i32 50332367, metadata !123, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [u] [line 719]
!1505 = metadata !{i32 719, i32 49, metadata !422, null}
!1506 = metadata !{i32 786689, metadata !422, metadata !"old_top", metadata !85, i32 67109584, metadata !154, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [old_top] [line 720]
!1507 = metadata !{i32 720, i32 27, metadata !422, null}
!1508 = metadata !{i32 786689, metadata !422, metadata !"ef", metadata !85, i32 83886800, metadata !154, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ef] [line 720]
!1509 = metadata !{i32 720, i32 46, metadata !422, null}
!1510 = metadata !{i32 786688, metadata !422, metadata !"status", metadata !85, i32 721, metadata !125, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [status] [line 721]
!1511 = metadata !{i32 721, i32 7, metadata !422, null}
!1512 = metadata !{i32 786688, metadata !422, metadata !"old_ci", metadata !85, i32 722, metadata !255, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [old_ci] [line 722]
!1513 = metadata !{i32 722, i32 13, metadata !422, null}
!1514 = metadata !{i32 722, i32 3, metadata !422, null}
!1515 = metadata !{i32 786688, metadata !422, metadata !"old_allowhooks", metadata !85, i32 723, metadata !102, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [old_allowhooks] [line 723]
!1516 = metadata !{i32 723, i32 11, metadata !422, null}
!1517 = metadata !{i32 723, i32 3, metadata !422, null}
!1518 = metadata !{i32 786688, metadata !422, metadata !"old_nny", metadata !85, i32 724, metadata !109, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [old_nny] [line 724]
!1519 = metadata !{i32 724, i32 18, metadata !422, null}
!1520 = metadata !{i32 724, i32 3, metadata !422, null}
!1521 = metadata !{i32 786688, metadata !422, metadata !"old_errfunc", metadata !85, i32 725, metadata !154, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [old_errfunc] [line 725]
!1522 = metadata !{i32 725, i32 13, metadata !422, null}
!1523 = metadata !{i32 725, i32 3, metadata !422, null}
!1524 = metadata !{i32 726, i32 3, metadata !422, null}
!1525 = metadata !{i32 727, i32 12, metadata !422, null}
!1526 = metadata !{i32 728, i32 7, metadata !1527, null}
!1527 = metadata !{i32 786443, metadata !84, metadata !422, i32 728, i32 7, i32 0, i32 75} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!1528 = metadata !{i32 786688, metadata !1529, metadata !"oldtop", metadata !85, i32 729, metadata !112, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [oldtop] [line 729]
!1529 = metadata !{i32 786443, metadata !84, metadata !1527, i32 728, i32 25, i32 0, i32 76} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!1530 = metadata !{i32 729, i32 11, metadata !1529, null}
!1531 = metadata !{i32 729, i32 5, metadata !1529, null}
!1532 = metadata !{i32 730, i32 5, metadata !1529, null}
!1533 = metadata !{i32 731, i32 5, metadata !1529, null}
!1534 = metadata !{i32 732, i32 5, metadata !1529, null}
!1535 = metadata !{i32 733, i32 5, metadata !1529, null}
!1536 = metadata !{i32 734, i32 5, metadata !1529, null}
!1537 = metadata !{i32 735, i32 5, metadata !1529, null}
!1538 = metadata !{i32 736, i32 3, metadata !1529, null}
!1539 = metadata !{i32 737, i32 3, metadata !422, null}
!1540 = metadata !{i32 738, i32 3, metadata !422, null}
!1541 = metadata !{i32 786689, metadata !425, metadata !"L", metadata !85, i32 16777997, metadata !88, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 781]
!1542 = metadata !{i32 781, i32 38, metadata !425, null}
!1543 = metadata !{i32 786689, metadata !425, metadata !"z", metadata !85, i32 33555213, metadata !428, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [z] [line 781]
!1544 = metadata !{i32 781, i32 46, metadata !425, null}
!1545 = metadata !{i32 786689, metadata !425, metadata !"name", metadata !85, i32 50332429, metadata !359, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 781]
!1546 = metadata !{i32 781, i32 61, metadata !425, null}
!1547 = metadata !{i32 786689, metadata !425, metadata !"mode", metadata !85, i32 67109646, metadata !359, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mode] [line 782]
!1548 = metadata !{i32 782, i32 53, metadata !425, null}
!1549 = metadata !{i32 786688, metadata !425, metadata !"p", metadata !85, i32 783, metadata !1550, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 783]
!1550 = metadata !{i32 786451, metadata !84, null, metadata !"SParser", i32 746, i64 480, i64 32, i32 0, i32 0, null, metadata !1551, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [SParser] [line 746, size 480, align 32, offset 0] [def] [from ]
!1551 = metadata !{metadata !1552, metadata !1553, metadata !1561, metadata !1593, metadata !1594}
!1552 = metadata !{i32 786445, metadata !84, metadata !1550, metadata !"z", i32 747, i64 32, i64 32, i64 0, i32 0, metadata !428} ; [ DW_TAG_member ] [z] [line 747, size 32, align 32, offset 0] [from ]
!1553 = metadata !{i32 786445, metadata !84, metadata !1550, metadata !"buff", i32 748, i64 96, i64 32, i64 32, i32 0, metadata !1554} ; [ DW_TAG_member ] [buff] [line 748, size 96, align 32, offset 32] [from Mbuffer]
!1554 = metadata !{i32 786454, metadata !430, null, metadata !"Mbuffer", i32 27, i64 0, i64 0, i64 0, i32 0, metadata !1555} ; [ DW_TAG_typedef ] [Mbuffer] [line 27, size 0, align 0, offset 0] [from Mbuffer]
!1555 = metadata !{i32 786451, metadata !430, null, metadata !"Mbuffer", i32 23, i64 96, i64 32, i32 0, i32 0, null, metadata !1556, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [Mbuffer] [line 23, size 96, align 32, offset 0] [def] [from ]
!1556 = metadata !{metadata !1557, metadata !1559, metadata !1560}
!1557 = metadata !{i32 786445, metadata !430, metadata !1555, metadata !"buffer", i32 24, i64 32, i64 32, i64 0, i32 0, metadata !1558} ; [ DW_TAG_member ] [buffer] [line 24, size 32, align 32, offset 0] [from ]
!1558 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !361} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from char]
!1559 = metadata !{i32 786445, metadata !430, metadata !1555, metadata !"n", i32 25, i64 32, i64 32, i64 32, i32 0, metadata !148} ; [ DW_TAG_member ] [n] [line 25, size 32, align 32, offset 32] [from size_t]
!1560 = metadata !{i32 786445, metadata !430, metadata !1555, metadata !"buffsize", i32 26, i64 32, i64 32, i64 64, i32 0, metadata !148} ; [ DW_TAG_member ] [buffsize] [line 26, size 32, align 32, offset 64] [from size_t]
!1561 = metadata !{i32 786445, metadata !84, metadata !1550, metadata !"dyd", i32 749, i64 288, i64 32, i64 128, i32 0, metadata !1562} ; [ DW_TAG_member ] [dyd] [line 749, size 288, align 32, offset 128] [from Dyndata]
!1562 = metadata !{i32 786454, metadata !1563, null, metadata !"Dyndata", i32 103, i64 0, i64 0, i64 0, i32 0, metadata !1564} ; [ DW_TAG_typedef ] [Dyndata] [line 103, size 0, align 0, offset 0] [from Dyndata]
!1563 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lparser.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!1564 = metadata !{i32 786451, metadata !1563, null, metadata !"Dyndata", i32 95, i64 288, i64 32, i32 0, i32 0, null, metadata !1565, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [Dyndata] [line 95, size 288, align 32, offset 0] [def] [from ]
!1565 = metadata !{metadata !1566, metadata !1577, metadata !1592}
!1566 = metadata !{i32 786445, metadata !1563, metadata !1564, metadata !"actvar", i32 100, i64 96, i64 32, i64 0, i32 0, metadata !1567} ; [ DW_TAG_member ] [actvar] [line 100, size 96, align 32, offset 0] [from ]
!1567 = metadata !{i32 786451, metadata !1563, metadata !1564, metadata !"", i32 96, i64 96, i64 32, i32 0, i32 0, null, metadata !1568, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 96, size 96, align 32, offset 0] [def] [from ]
!1568 = metadata !{metadata !1569, metadata !1575, metadata !1576}
!1569 = metadata !{i32 786445, metadata !1563, metadata !1567, metadata !"arr", i32 97, i64 32, i64 32, i64 0, i32 0, metadata !1570} ; [ DW_TAG_member ] [arr] [line 97, size 32, align 32, offset 0] [from ]
!1570 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1571} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from Vardesc]
!1571 = metadata !{i32 786454, metadata !1563, null, metadata !"Vardesc", i32 74, i64 0, i64 0, i64 0, i32 0, metadata !1572} ; [ DW_TAG_typedef ] [Vardesc] [line 74, size 0, align 0, offset 0] [from Vardesc]
!1572 = metadata !{i32 786451, metadata !1563, null, metadata !"Vardesc", i32 72, i64 16, i64 16, i32 0, i32 0, null, metadata !1573, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [Vardesc] [line 72, size 16, align 16, offset 0] [def] [from ]
!1573 = metadata !{metadata !1574}
!1574 = metadata !{i32 786445, metadata !1563, metadata !1572, metadata !"idx", i32 73, i64 16, i64 16, i64 0, i32 0, metadata !290} ; [ DW_TAG_member ] [idx] [line 73, size 16, align 16, offset 0] [from short]
!1575 = metadata !{i32 786445, metadata !1563, metadata !1567, metadata !"n", i32 98, i64 32, i64 32, i64 32, i32 0, metadata !125} ; [ DW_TAG_member ] [n] [line 98, size 32, align 32, offset 32] [from int]
!1576 = metadata !{i32 786445, metadata !1563, metadata !1567, metadata !"size", i32 99, i64 32, i64 32, i64 64, i32 0, metadata !125} ; [ DW_TAG_member ] [size] [line 99, size 32, align 32, offset 64] [from int]
!1577 = metadata !{i32 786445, metadata !1563, metadata !1564, metadata !"gt", i32 101, i64 96, i64 32, i64 96, i32 0, metadata !1578} ; [ DW_TAG_member ] [gt] [line 101, size 96, align 32, offset 96] [from Labellist]
!1578 = metadata !{i32 786454, metadata !1563, null, metadata !"Labellist", i32 91, i64 0, i64 0, i64 0, i32 0, metadata !1579} ; [ DW_TAG_typedef ] [Labellist] [line 91, size 0, align 0, offset 0] [from Labellist]
!1579 = metadata !{i32 786451, metadata !1563, null, metadata !"Labellist", i32 87, i64 96, i64 32, i32 0, i32 0, null, metadata !1580, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [Labellist] [line 87, size 96, align 32, offset 0] [def] [from ]
!1580 = metadata !{metadata !1581, metadata !1590, metadata !1591}
!1581 = metadata !{i32 786445, metadata !1563, metadata !1579, metadata !"arr", i32 88, i64 32, i64 32, i64 0, i32 0, metadata !1582} ; [ DW_TAG_member ] [arr] [line 88, size 32, align 32, offset 0] [from ]
!1582 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1583} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from Labeldesc]
!1583 = metadata !{i32 786454, metadata !1563, null, metadata !"Labeldesc", i32 83, i64 0, i64 0, i64 0, i32 0, metadata !1584} ; [ DW_TAG_typedef ] [Labeldesc] [line 83, size 0, align 0, offset 0] [from Labeldesc]
!1584 = metadata !{i32 786451, metadata !1563, null, metadata !"Labeldesc", i32 78, i64 128, i64 32, i32 0, i32 0, null, metadata !1585, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [Labeldesc] [line 78, size 128, align 32, offset 0] [def] [from ]
!1585 = metadata !{metadata !1586, metadata !1587, metadata !1588, metadata !1589}
!1586 = metadata !{i32 786445, metadata !1563, metadata !1584, metadata !"name", i32 79, i64 32, i64 32, i64 0, i32 0, metadata !165} ; [ DW_TAG_member ] [name] [line 79, size 32, align 32, offset 0] [from ]
!1587 = metadata !{i32 786445, metadata !1563, metadata !1584, metadata !"pc", i32 80, i64 32, i64 32, i64 32, i32 0, metadata !125} ; [ DW_TAG_member ] [pc] [line 80, size 32, align 32, offset 32] [from int]
!1588 = metadata !{i32 786445, metadata !1563, metadata !1584, metadata !"line", i32 81, i64 32, i64 32, i64 64, i32 0, metadata !125} ; [ DW_TAG_member ] [line] [line 81, size 32, align 32, offset 64] [from int]
!1589 = metadata !{i32 786445, metadata !1563, metadata !1584, metadata !"nactvar", i32 82, i64 8, i64 8, i64 96, i32 0, metadata !102} ; [ DW_TAG_member ] [nactvar] [line 82, size 8, align 8, offset 96] [from lu_byte]
!1590 = metadata !{i32 786445, metadata !1563, metadata !1579, metadata !"n", i32 89, i64 32, i64 32, i64 32, i32 0, metadata !125} ; [ DW_TAG_member ] [n] [line 89, size 32, align 32, offset 32] [from int]
!1591 = metadata !{i32 786445, metadata !1563, metadata !1579, metadata !"size", i32 90, i64 32, i64 32, i64 64, i32 0, metadata !125} ; [ DW_TAG_member ] [size] [line 90, size 32, align 32, offset 64] [from int]
!1592 = metadata !{i32 786445, metadata !1563, metadata !1564, metadata !"label", i32 102, i64 96, i64 32, i64 192, i32 0, metadata !1578} ; [ DW_TAG_member ] [label] [line 102, size 96, align 32, offset 192] [from Labellist]
!1593 = metadata !{i32 786445, metadata !84, metadata !1550, metadata !"mode", i32 750, i64 32, i64 32, i64 416, i32 0, metadata !359} ; [ DW_TAG_member ] [mode] [line 750, size 32, align 32, offset 416] [from ]
!1594 = metadata !{i32 786445, metadata !84, metadata !1550, metadata !"name", i32 751, i64 32, i64 32, i64 448, i32 0, metadata !359} ; [ DW_TAG_member ] [name] [line 751, size 32, align 32, offset 448] [from ]
!1595 = metadata !{i32 783, i32 18, metadata !425, null}
!1596 = metadata !{i32 786688, metadata !425, metadata !"status", metadata !85, i32 784, metadata !125, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [status] [line 784]
!1597 = metadata !{i32 784, i32 7, metadata !425, null}
!1598 = metadata !{i32 785, i32 3, metadata !425, null}
!1599 = metadata !{i32 786, i32 3, metadata !425, null}
!1600 = metadata !{i32 786, i32 12, metadata !425, null}
!1601 = metadata !{i32 786, i32 27, metadata !425, null}
!1602 = metadata !{i32 787, i32 3, metadata !425, null}
!1603 = metadata !{i32 787, i32 28, metadata !425, null}
!1604 = metadata !{i32 788, i32 3, metadata !425, null}
!1605 = metadata !{i32 788, i32 24, metadata !425, null}
!1606 = metadata !{i32 789, i32 3, metadata !425, null}
!1607 = metadata !{i32 789, i32 27, metadata !425, null}
!1608 = metadata !{i32 790, i32 3, metadata !425, null}
!1609 = metadata !{i32 791, i32 12, metadata !425, null}
!1610 = metadata !{i32 792, i32 3, metadata !425, null}
!1611 = metadata !{i32 793, i32 3, metadata !425, null}
!1612 = metadata !{i32 794, i32 3, metadata !425, null}
!1613 = metadata !{i32 795, i32 3, metadata !425, null}
!1614 = metadata !{i32 796, i32 3, metadata !425, null}
!1615 = metadata !{i32 797, i32 3, metadata !425, null}
!1616 = metadata !{i32 786689, metadata !443, metadata !"L", metadata !85, i32 16777980, metadata !88, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 764]
!1617 = metadata !{i32 764, i32 34, metadata !443, null}
!1618 = metadata !{i32 786689, metadata !443, metadata !"ud", metadata !85, i32 33555196, metadata !123, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ud] [line 764]
!1619 = metadata !{i32 764, i32 43, metadata !443, null}
!1620 = metadata !{i32 786688, metadata !443, metadata !"cl", metadata !85, i32 765, metadata !1621, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cl] [line 765]
!1621 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1622} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from LClosure]
!1622 = metadata !{i32 786454, metadata !97, null, metadata !"LClosure", i32 457, i64 0, i64 0, i64 0, i32 0, metadata !518} ; [ DW_TAG_typedef ] [LClosure] [line 457, size 0, align 0, offset 0] [from LClosure]
!1623 = metadata !{i32 765, i32 13, metadata !443, null}
!1624 = metadata !{i32 786688, metadata !443, metadata !"p", metadata !85, i32 766, metadata !1625, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 766]
!1625 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1550} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from SParser]
!1626 = metadata !{i32 766, i32 19, metadata !443, null}
!1627 = metadata !{i32 766, i32 3, metadata !443, null}
!1628 = metadata !{i32 786688, metadata !443, metadata !"c", metadata !85, i32 767, metadata !125, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c] [line 767]
!1629 = metadata !{i32 767, i32 7, metadata !443, null}
!1630 = metadata !{i32 767, i32 3, metadata !443, null}
!1631 = metadata !{i32 767, i32 3, metadata !1632, null}
!1632 = metadata !{i32 786443, metadata !84, metadata !443, i32 767, i32 3, i32 1, i32 218} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!1633 = metadata !{i32 767, i32 11, metadata !1634, null}
!1634 = metadata !{i32 786443, metadata !84, metadata !443, i32 767, i32 11, i32 2, i32 219} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!1635 = metadata !{i32 767, i32 11, metadata !443, null}
!1636 = metadata !{i32 767, i32 11, metadata !1637, null}
!1637 = metadata !{i32 786443, metadata !84, metadata !1638, i32 767, i32 11, i32 4, i32 221} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!1638 = metadata !{i32 786443, metadata !84, metadata !443, i32 767, i32 11, i32 3, i32 220} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!1639 = metadata !{i32 768, i32 7, metadata !1640, null}
!1640 = metadata !{i32 786443, metadata !84, metadata !443, i32 768, i32 7, i32 0, i32 77} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!1641 = metadata !{i32 769, i32 5, metadata !1642, null}
!1642 = metadata !{i32 786443, metadata !84, metadata !1640, i32 768, i32 30, i32 0, i32 78} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!1643 = metadata !{i32 770, i32 10, metadata !1642, null}
!1644 = metadata !{i32 771, i32 3, metadata !1642, null}
!1645 = metadata !{i32 773, i32 5, metadata !1646, null}
!1646 = metadata !{i32 786443, metadata !84, metadata !1640, i32 772, i32 8, i32 0, i32 79} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!1647 = metadata !{i32 774, i32 10, metadata !1646, null}
!1648 = metadata !{i32 777, i32 3, metadata !443, null}
!1649 = metadata !{i32 778, i32 1, metadata !443, null}
!1650 = metadata !{i32 786689, metadata !444, metadata !"L", metadata !85, i32 16777971, metadata !88, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 755]
!1651 = metadata !{i32 755, i32 35, metadata !444, null}
!1652 = metadata !{i32 786689, metadata !444, metadata !"mode", metadata !85, i32 33555187, metadata !359, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mode] [line 755]
!1653 = metadata !{i32 755, i32 50, metadata !444, null}
!1654 = metadata !{i32 786689, metadata !444, metadata !"x", metadata !85, i32 50332403, metadata !359, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 755]
!1655 = metadata !{i32 755, i32 68, metadata !444, null}
!1656 = metadata !{i32 756, i32 7, metadata !1657, null}
!1657 = metadata !{i32 786443, metadata !84, metadata !444, i32 756, i32 7, i32 0, i32 80} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!1658 = metadata !{i32 756, i32 15, metadata !1659, null}
!1659 = metadata !{i32 786443, metadata !84, metadata !1657, i32 756, i32 15, i32 1, i32 222} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!1660 = metadata !{i32 757, i32 5, metadata !1661, null}
!1661 = metadata !{i32 786443, metadata !84, metadata !1657, i32 756, i32 43, i32 0, i32 81} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!1662 = metadata !{i32 759, i32 5, metadata !1661, null}
!1663 = metadata !{i32 761, i32 1, metadata !444, null}
!1664 = metadata !{i32 786689, metadata !448, metadata !"L", metadata !85, i32 16777731, metadata !88, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 515]
!1665 = metadata !{i32 515, i32 37, metadata !448, null}
!1666 = metadata !{i32 786689, metadata !448, metadata !"status", metadata !85, i32 33554947, metadata !125, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [status] [line 515]
!1667 = metadata !{i32 515, i32 44, metadata !448, null}
!1668 = metadata !{i32 786688, metadata !448, metadata !"ci", metadata !85, i32 516, metadata !255, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ci] [line 516]
!1669 = metadata !{i32 516, i32 13, metadata !448, null}
!1670 = metadata !{i32 516, i32 3, metadata !448, null}
!1671 = metadata !{i32 786688, metadata !448, metadata !"n", metadata !85, i32 517, metadata !125, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 517]
!1672 = metadata !{i32 517, i32 7, metadata !448, null}
!1673 = metadata !{i32 522, i32 7, metadata !1674, null}
!1674 = metadata !{i32 786443, metadata !84, metadata !448, i32 522, i32 7, i32 0, i32 86} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!1675 = metadata !{i32 523, i32 5, metadata !1676, null}
!1676 = metadata !{i32 786443, metadata !84, metadata !1674, i32 522, i32 37, i32 0, i32 87} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!1677 = metadata !{i32 524, i32 5, metadata !1676, null}
!1678 = metadata !{i32 525, i32 3, metadata !1676, null}
!1679 = metadata !{i32 528, i32 3, metadata !1680, null}
!1680 = metadata !{i32 786443, metadata !84, metadata !1681, i32 528, i32 3, i32 0, i32 89} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!1681 = metadata !{i32 786443, metadata !84, metadata !448, i32 528, i32 3, i32 0, i32 88} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!1682 = metadata !{i32 528, i32 3, metadata !1683, null}
!1683 = metadata !{i32 786443, metadata !84, metadata !1680, i32 528, i32 3, i32 1, i32 223} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!1684 = metadata !{i32 528, i32 3, metadata !1685, null}
!1685 = metadata !{i32 786443, metadata !84, metadata !1680, i32 528, i32 3, i32 2, i32 224} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!1686 = metadata !{i32 531, i32 7, metadata !448, null}
!1687 = metadata !{i32 535, i32 3, metadata !448, null}
!1688 = metadata !{i32 536, i32 1, metadata !448, null}
!1689 = metadata !{i32 786689, metadata !452, metadata !"L", metadata !85, i32 16777781, metadata !88, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 565]
!1690 = metadata !{i32 565, i32 40, metadata !452, null}
!1691 = metadata !{i32 786688, metadata !452, metadata !"ci", metadata !85, i32 566, metadata !255, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ci] [line 566]
!1692 = metadata !{i32 566, i32 13, metadata !452, null}
!1693 = metadata !{i32 567, i32 8, metadata !1694, null}
!1694 = metadata !{i32 786443, metadata !84, metadata !452, i32 567, i32 3, i32 0, i32 91} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!1695 = metadata !{i32 567, i32 8, metadata !1696, null}
!1696 = metadata !{i32 786443, metadata !84, metadata !1697, i32 567, i32 8, i32 2, i32 226} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!1697 = metadata !{i32 786443, metadata !84, metadata !1694, i32 567, i32 8, i32 1, i32 225} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!1698 = metadata !{i32 568, i32 9, metadata !1699, null}
!1699 = metadata !{i32 786443, metadata !84, metadata !1700, i32 568, i32 9, i32 0, i32 93} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!1700 = metadata !{i32 786443, metadata !84, metadata !1694, i32 567, i32 51, i32 0, i32 92} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!1701 = metadata !{i32 569, i32 7, metadata !1699, null}
!1702 = metadata !{i32 570, i32 3, metadata !1700, null}
!1703 = metadata !{i32 567, i32 32, metadata !1694, null}
!1704 = metadata !{i32 571, i32 3, metadata !452, null}
!1705 = metadata !{i32 572, i32 1, metadata !452, null}
!1706 = metadata !{i32 786689, metadata !456, metadata !"L", metadata !85, i32 16777818, metadata !88, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 602]
!1707 = metadata !{i32 602, i32 41, metadata !456, null}
!1708 = metadata !{i32 786689, metadata !456, metadata !"msg", metadata !85, i32 33555034, metadata !359, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [msg] [line 602]
!1709 = metadata !{i32 602, i32 56, metadata !456, null}
!1710 = metadata !{i32 786689, metadata !456, metadata !"firstArg", metadata !85, i32 50332250, metadata !112, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [firstArg] [line 602]
!1711 = metadata !{i32 602, i32 67, metadata !456, null}
!1712 = metadata !{i32 603, i32 3, metadata !456, null}
!1713 = metadata !{i32 786688, metadata !1714, metadata !"io", metadata !85, i32 604, metadata !113, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [io] [line 604]
!1714 = metadata !{i32 786443, metadata !84, metadata !456, i32 604, i32 3, i32 0, i32 105} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!1715 = metadata !{i32 604, i32 3, metadata !1714, null}
!1716 = metadata !{i32 786688, metadata !1714, metadata !"x_", metadata !85, i32 604, metadata !165, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x_] [line 604]
!1717 = metadata !{i32 605, i32 3, metadata !1718, null}
!1718 = metadata !{i32 786443, metadata !84, metadata !456, i32 605, i32 3, i32 0, i32 106} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldo.c]
!1719 = metadata !{i32 606, i32 3, metadata !456, null}
!1720 = metadata !{i32 607, i32 1, metadata !456, null}
