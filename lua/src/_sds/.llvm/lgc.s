; ModuleID = 'C:/Users/DevolutionX/workspace/lua/src/lgc.c'
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
%struct.UpVal = type { %struct.lua_TValue*, i32, %union.anon.3 }
%union.anon.3 = type { %struct.lua_TValue }
%struct.lua_longjmp = type opaque
%struct.CallInfo = type { %struct.lua_TValue*, %struct.lua_TValue*, %struct.CallInfo*, %struct.CallInfo*, %union.anon.0, i32, i16, i8 }
%union.anon.0 = type { %struct.anon.2 }
%struct.anon.2 = type { i32 (%struct.lua_State*, i32, i32)*, i32, i32 }
%struct.lua_Debug = type { i32, i8*, i8*, i8*, i8*, i32, i32, i32, i8, i8, i8, i8, [60 x i8], %struct.CallInfo* }
%struct.GCObject = type { %struct.GCObject*, i8, i8 }
%struct.Udata = type { %struct.GCObject*, i8, i8, i8, %struct.Table*, i32, %union.Value }
%union.GCUnion = type { %union.Closure, [88 x i8] }
%union.Closure = type { %struct.CClosure }
%struct.CClosure = type { %struct.GCObject*, i8, i8, i8, %struct.GCObject*, i32 (%struct.lua_State*)*, [1 x %struct.lua_TValue] }
%struct.LClosure = type { %struct.GCObject*, i8, i8, i8, %struct.GCObject*, %struct.Proto*, [1 x %struct.UpVal*] }
%struct.Proto = type { %struct.GCObject*, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, %struct.lua_TValue*, i32*, %struct.Proto**, i32*, %struct.LocVar*, %struct.Upvaldesc*, %struct.LClosure*, %struct.TString*, %struct.GCObject* }
%struct.LocVar = type { %struct.TString*, i32, i32 }
%struct.Upvaldesc = type { %struct.TString*, i8, i8 }
%struct.anon.4 = type { %struct.UpVal*, i32 }

@.str = private unnamed_addr constant [11 x i8] c"no message\00", align 1
@.str1 = private unnamed_addr constant [30 x i8] c"error in __gc metamethod (%s)\00", align 1

; Function Attrs: nounwind
define hidden void @luaC_barrier_(%struct.lua_State* %L, %struct.GCObject* %o, %struct.GCObject* %v) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca %struct.GCObject*, align 4
  %3 = alloca %struct.GCObject*, align 4
  %g = alloca %struct.global_State*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !686), !dbg !687
  store %struct.GCObject* %o, %struct.GCObject** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.GCObject** %2}, metadata !688), !dbg !689
  store %struct.GCObject* %v, %struct.GCObject** %3, align 4
  call void @llvm.dbg.declare(metadata !{%struct.GCObject** %3}, metadata !690), !dbg !691
  call void @llvm.dbg.declare(metadata !{%struct.global_State** %g}, metadata !692), !dbg !693
  %4 = load %struct.lua_State** %1, align 4, !dbg !694
  %5 = getelementptr inbounds %struct.lua_State* %4, i32 0, i32 6, !dbg !694
  %6 = load %struct.global_State** %5, align 4, !dbg !694
  store %struct.global_State* %6, %struct.global_State** %g, align 4, !dbg !694
  %7 = load %struct.global_State** %g, align 4, !dbg !695
  %8 = getelementptr inbounds %struct.global_State* %7, i32 0, i32 10, !dbg !695
  %9 = load i8* %8, align 1, !dbg !695
  %10 = zext i8 %9 to i32, !dbg !695
  %11 = icmp sle i32 %10, 1, !dbg !695
  br i1 %11, label %12, label %15, !dbg !695

; <label>:12                                      ; preds = %0
  %13 = load %struct.global_State** %g, align 4, !dbg !697
  %14 = load %struct.GCObject** %3, align 4, !dbg !697
  call void @reallymarkobject(%struct.global_State* %13, %struct.GCObject* %14), !dbg !697
  br label %32, !dbg !697

; <label>:15                                      ; preds = %0
  %16 = load %struct.GCObject** %2, align 4, !dbg !698
  %17 = getelementptr inbounds %struct.GCObject* %16, i32 0, i32 2, !dbg !698
  %18 = load i8* %17, align 1, !dbg !698
  %19 = zext i8 %18 to i32, !dbg !698
  %20 = and i32 %19, -8, !dbg !698
  %21 = load %struct.global_State** %g, align 4, !dbg !698
  %22 = getelementptr inbounds %struct.global_State* %21, i32 0, i32 9, !dbg !698
  %23 = load i8* %22, align 1, !dbg !698
  %24 = zext i8 %23 to i32, !dbg !698
  %25 = and i32 %24, 3, !dbg !698
  %26 = trunc i32 %25 to i8, !dbg !698
  %27 = zext i8 %26 to i32, !dbg !698
  %28 = or i32 %20, %27, !dbg !698
  %29 = trunc i32 %28 to i8, !dbg !698
  %30 = load %struct.GCObject** %2, align 4, !dbg !698
  %31 = getelementptr inbounds %struct.GCObject* %30, i32 0, i32 2, !dbg !698
  store i8 %29, i8* %31, align 1, !dbg !698
  br label %32

; <label>:32                                      ; preds = %15, %12
  ret void, !dbg !700
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind
define internal void @reallymarkobject(%struct.global_State* %g, %struct.GCObject* %o) #0 {
  %1 = alloca %struct.global_State*, align 4
  %2 = alloca %struct.GCObject*, align 4
  %uvalue = alloca %struct.lua_TValue, align 8
  %io = alloca %struct.lua_TValue*, align 4
  %iu = alloca %struct.Udata*, align 4
  store %struct.global_State* %g, %struct.global_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.global_State** %1}, metadata !701), !dbg !702
  store %struct.GCObject* %o, %struct.GCObject** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.GCObject** %2}, metadata !703), !dbg !704
  br label %3, !dbg !705

; <label>:3                                       ; preds = %127, %0
  %4 = load %struct.GCObject** %2, align 4, !dbg !706
  %5 = getelementptr inbounds %struct.GCObject* %4, i32 0, i32 2, !dbg !706
  %6 = load i8* %5, align 1, !dbg !706
  %7 = zext i8 %6 to i32, !dbg !706
  %8 = and i32 %7, 252, !dbg !706
  %9 = trunc i32 %8 to i8, !dbg !706
  store i8 %9, i8* %5, align 1, !dbg !706
  %10 = load %struct.GCObject** %2, align 4, !dbg !707
  %11 = getelementptr inbounds %struct.GCObject* %10, i32 0, i32 1, !dbg !707
  %12 = load i8* %11, align 1, !dbg !707
  %13 = zext i8 %12 to i32, !dbg !707
  switch i32 %13, label %211 [
    i32 4, label %14
    i32 20, label %34
    i32 7, label %54
    i32 6, label %132
    i32 38, label %149
    i32 5, label %166
    i32 8, label %181
    i32 9, label %196
  ], !dbg !707

; <label>:14                                      ; preds = %3
  %15 = load %struct.GCObject** %2, align 4, !dbg !708
  %16 = getelementptr inbounds %struct.GCObject* %15, i32 0, i32 2, !dbg !708
  %17 = load i8* %16, align 1, !dbg !708
  %18 = zext i8 %17 to i32, !dbg !708
  %19 = or i32 %18, 4, !dbg !708
  %20 = trunc i32 %19 to i8, !dbg !708
  store i8 %20, i8* %16, align 1, !dbg !708
  %21 = load %struct.GCObject** %2, align 4, !dbg !711
  %22 = bitcast %struct.GCObject* %21 to %union.GCUnion*, !dbg !711
  %23 = bitcast %union.GCUnion* %22 to %struct.TString*, !dbg !711
  %24 = getelementptr inbounds %struct.TString* %23, i32 0, i32 4, !dbg !711
  %25 = load i8* %24, align 1, !dbg !711
  %26 = zext i8 %25 to i32, !dbg !711
  %27 = add nsw i32 %26, 1, !dbg !711
  %28 = mul i32 %27, 1, !dbg !711
  %29 = add i32 16, %28, !dbg !711
  %30 = load %struct.global_State** %1, align 4, !dbg !711
  %31 = getelementptr inbounds %struct.global_State* %30, i32 0, i32 4, !dbg !711
  %32 = load i32* %31, align 4, !dbg !711
  %33 = add i32 %32, %29, !dbg !711
  store i32 %33, i32* %31, align 4, !dbg !711
  br label %212, !dbg !712

; <label>:34                                      ; preds = %3
  %35 = load %struct.GCObject** %2, align 4, !dbg !713
  %36 = getelementptr inbounds %struct.GCObject* %35, i32 0, i32 2, !dbg !713
  %37 = load i8* %36, align 1, !dbg !713
  %38 = zext i8 %37 to i32, !dbg !713
  %39 = or i32 %38, 4, !dbg !713
  %40 = trunc i32 %39 to i8, !dbg !713
  store i8 %40, i8* %36, align 1, !dbg !713
  %41 = load %struct.GCObject** %2, align 4, !dbg !715
  %42 = bitcast %struct.GCObject* %41 to %union.GCUnion*, !dbg !715
  %43 = bitcast %union.GCUnion* %42 to %struct.TString*, !dbg !715
  %44 = getelementptr inbounds %struct.TString* %43, i32 0, i32 6, !dbg !715
  %45 = bitcast %union.anon* %44 to i32*, !dbg !715
  %46 = load i32* %45, align 4, !dbg !715
  %47 = add i32 %46, 1, !dbg !715
  %48 = mul i32 %47, 1, !dbg !715
  %49 = add i32 16, %48, !dbg !715
  %50 = load %struct.global_State** %1, align 4, !dbg !715
  %51 = getelementptr inbounds %struct.global_State* %50, i32 0, i32 4, !dbg !715
  %52 = load i32* %51, align 4, !dbg !715
  %53 = add i32 %52, %49, !dbg !715
  store i32 %53, i32* %51, align 4, !dbg !715
  br label %212, !dbg !716

; <label>:54                                      ; preds = %3
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue* %uvalue}, metadata !717), !dbg !719
  %55 = load %struct.GCObject** %2, align 4, !dbg !720
  %56 = bitcast %struct.GCObject* %55 to %union.GCUnion*, !dbg !720
  %57 = bitcast %union.GCUnion* %56 to %struct.Udata*, !dbg !720
  %58 = getelementptr inbounds %struct.Udata* %57, i32 0, i32 4, !dbg !720
  %59 = load %struct.Table** %58, align 4, !dbg !720
  %60 = icmp ne %struct.Table* %59, null, !dbg !720
  br i1 %60, label %61, label %82, !dbg !720

; <label>:61                                      ; preds = %54
  %62 = load %struct.GCObject** %2, align 4, !dbg !723
  %63 = bitcast %struct.GCObject* %62 to %union.GCUnion*, !dbg !723
  %64 = bitcast %union.GCUnion* %63 to %struct.Udata*, !dbg !723
  %65 = getelementptr inbounds %struct.Udata* %64, i32 0, i32 4, !dbg !723
  %66 = load %struct.Table** %65, align 4, !dbg !723
  %67 = getelementptr inbounds %struct.Table* %66, i32 0, i32 2, !dbg !723
  %68 = load i8* %67, align 1, !dbg !723
  %69 = zext i8 %68 to i32, !dbg !723
  %70 = and i32 %69, 3, !dbg !723
  %71 = icmp ne i32 %70, 0, !dbg !723
  br i1 %71, label %72, label %81, !dbg !723

; <label>:72                                      ; preds = %61
  %73 = load %struct.global_State** %1, align 4, !dbg !727
  %74 = load %struct.GCObject** %2, align 4, !dbg !727
  %75 = bitcast %struct.GCObject* %74 to %union.GCUnion*, !dbg !727
  %76 = bitcast %union.GCUnion* %75 to %struct.Udata*, !dbg !727
  %77 = getelementptr inbounds %struct.Udata* %76, i32 0, i32 4, !dbg !727
  %78 = load %struct.Table** %77, align 4, !dbg !727
  %79 = bitcast %struct.Table* %78 to %union.GCUnion*, !dbg !727
  %80 = bitcast %union.GCUnion* %79 to %struct.GCObject*, !dbg !727
  call void @reallymarkobject(%struct.global_State* %73, %struct.GCObject* %80), !dbg !727
  br label %81, !dbg !727

; <label>:81                                      ; preds = %72, %61
  br label %82, !dbg !729

; <label>:82                                      ; preds = %81, %54
  %83 = load %struct.GCObject** %2, align 4, !dbg !732
  %84 = getelementptr inbounds %struct.GCObject* %83, i32 0, i32 2, !dbg !732
  %85 = load i8* %84, align 1, !dbg !732
  %86 = zext i8 %85 to i32, !dbg !732
  %87 = or i32 %86, 4, !dbg !732
  %88 = trunc i32 %87 to i8, !dbg !732
  store i8 %88, i8* %84, align 1, !dbg !732
  %89 = load %struct.GCObject** %2, align 4, !dbg !733
  %90 = bitcast %struct.GCObject* %89 to %union.GCUnion*, !dbg !733
  %91 = bitcast %union.GCUnion* %90 to %struct.Udata*, !dbg !733
  %92 = getelementptr inbounds %struct.Udata* %91, i32 0, i32 5, !dbg !733
  %93 = load i32* %92, align 4, !dbg !733
  %94 = add i32 24, %93, !dbg !733
  %95 = load %struct.global_State** %1, align 4, !dbg !733
  %96 = getelementptr inbounds %struct.global_State* %95, i32 0, i32 4, !dbg !733
  %97 = load i32* %96, align 4, !dbg !733
  %98 = add i32 %97, %94, !dbg !733
  store i32 %98, i32* %96, align 4, !dbg !733
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %io}, metadata !734), !dbg !736
  store %struct.lua_TValue* %uvalue, %struct.lua_TValue** %io, align 4, !dbg !736
  call void @llvm.dbg.declare(metadata !{%struct.Udata** %iu}, metadata !737), !dbg !736
  %99 = load %struct.GCObject** %2, align 4, !dbg !736
  %100 = bitcast %struct.GCObject* %99 to %union.GCUnion*, !dbg !736
  %101 = bitcast %union.GCUnion* %100 to %struct.Udata*, !dbg !736
  store %struct.Udata* %101, %struct.Udata** %iu, align 4, !dbg !736
  %102 = load %struct.lua_TValue** %io, align 4, !dbg !736
  %103 = getelementptr inbounds %struct.lua_TValue* %102, i32 0, i32 0, !dbg !736
  %104 = load %struct.Udata** %iu, align 4, !dbg !736
  %105 = getelementptr inbounds %struct.Udata* %104, i32 0, i32 6, !dbg !736
  %106 = bitcast %union.Value* %103 to i8*, !dbg !736
  %107 = bitcast %union.Value* %105 to i8*, !dbg !736
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %106, i8* %107, i32 8, i32 8, i1 false), !dbg !736
  %108 = load %struct.Udata** %iu, align 4, !dbg !736
  %109 = getelementptr inbounds %struct.Udata* %108, i32 0, i32 3, !dbg !736
  %110 = load i8* %109, align 1, !dbg !736
  %111 = zext i8 %110 to i32, !dbg !736
  %112 = load %struct.lua_TValue** %io, align 4, !dbg !736
  %113 = getelementptr inbounds %struct.lua_TValue* %112, i32 0, i32 1, !dbg !736
  store i32 %111, i32* %113, align 4, !dbg !736
  %114 = getelementptr inbounds %struct.lua_TValue* %uvalue, i32 0, i32 1, !dbg !750
  %115 = load i32* %114, align 4, !dbg !750
  %116 = and i32 %115, 64, !dbg !750
  %117 = icmp ne i32 %116, 0, !dbg !750
  br i1 %117, label %118, label %131, !dbg !750

; <label>:118                                     ; preds = %82
  %119 = getelementptr inbounds %struct.lua_TValue* %uvalue, i32 0, i32 0, !dbg !752
  %120 = bitcast %union.Value* %119 to %struct.GCObject**, !dbg !752
  %121 = load %struct.GCObject** %120, align 4, !dbg !752
  %122 = getelementptr inbounds %struct.GCObject* %121, i32 0, i32 2, !dbg !752
  %123 = load i8* %122, align 1, !dbg !752
  %124 = zext i8 %123 to i32, !dbg !752
  %125 = and i32 %124, 3, !dbg !752
  %126 = icmp ne i32 %125, 0, !dbg !752
  br i1 %126, label %127, label %131, !dbg !752

; <label>:127                                     ; preds = %118
  %128 = getelementptr inbounds %struct.lua_TValue* %uvalue, i32 0, i32 0, !dbg !754
  %129 = bitcast %union.Value* %128 to %struct.GCObject**, !dbg !754
  %130 = load %struct.GCObject** %129, align 4, !dbg !754
  store %struct.GCObject* %130, %struct.GCObject** %2, align 4, !dbg !754
  br label %3, !dbg !756

; <label>:131                                     ; preds = %118, %82
  br label %212, !dbg !757

; <label>:132                                     ; preds = %3
  %133 = load %struct.global_State** %1, align 4, !dbg !758
  %134 = getelementptr inbounds %struct.global_State* %133, i32 0, i32 16, !dbg !758
  %135 = load %struct.GCObject** %134, align 4, !dbg !758
  %136 = load %struct.GCObject** %2, align 4, !dbg !758
  %137 = bitcast %struct.GCObject* %136 to %union.GCUnion*, !dbg !758
  %138 = bitcast %union.GCUnion* %137 to %union.Closure*, !dbg !758
  %139 = bitcast %union.Closure* %138 to %struct.LClosure*, !dbg !758
  %140 = getelementptr inbounds %struct.LClosure* %139, i32 0, i32 4, !dbg !758
  store %struct.GCObject* %135, %struct.GCObject** %140, align 4, !dbg !758
  %141 = load %struct.GCObject** %2, align 4, !dbg !758
  %142 = bitcast %struct.GCObject* %141 to %union.GCUnion*, !dbg !758
  %143 = bitcast %union.GCUnion* %142 to %union.Closure*, !dbg !758
  %144 = bitcast %union.Closure* %143 to %struct.LClosure*, !dbg !758
  %145 = bitcast %struct.LClosure* %144 to %union.GCUnion*, !dbg !758
  %146 = bitcast %union.GCUnion* %145 to %struct.GCObject*, !dbg !758
  %147 = load %struct.global_State** %1, align 4, !dbg !758
  %148 = getelementptr inbounds %struct.global_State* %147, i32 0, i32 16, !dbg !758
  store %struct.GCObject* %146, %struct.GCObject** %148, align 4, !dbg !758
  br label %212, !dbg !760

; <label>:149                                     ; preds = %3
  %150 = load %struct.global_State** %1, align 4, !dbg !761
  %151 = getelementptr inbounds %struct.global_State* %150, i32 0, i32 16, !dbg !761
  %152 = load %struct.GCObject** %151, align 4, !dbg !761
  %153 = load %struct.GCObject** %2, align 4, !dbg !761
  %154 = bitcast %struct.GCObject* %153 to %union.GCUnion*, !dbg !761
  %155 = bitcast %union.GCUnion* %154 to %union.Closure*, !dbg !761
  %156 = bitcast %union.Closure* %155 to %struct.CClosure*, !dbg !761
  %157 = getelementptr inbounds %struct.CClosure* %156, i32 0, i32 4, !dbg !761
  store %struct.GCObject* %152, %struct.GCObject** %157, align 4, !dbg !761
  %158 = load %struct.GCObject** %2, align 4, !dbg !761
  %159 = bitcast %struct.GCObject* %158 to %union.GCUnion*, !dbg !761
  %160 = bitcast %union.GCUnion* %159 to %union.Closure*, !dbg !761
  %161 = bitcast %union.Closure* %160 to %struct.CClosure*, !dbg !761
  %162 = bitcast %struct.CClosure* %161 to %union.GCUnion*, !dbg !761
  %163 = bitcast %union.GCUnion* %162 to %struct.GCObject*, !dbg !761
  %164 = load %struct.global_State** %1, align 4, !dbg !761
  %165 = getelementptr inbounds %struct.global_State* %164, i32 0, i32 16, !dbg !761
  store %struct.GCObject* %163, %struct.GCObject** %165, align 4, !dbg !761
  br label %212, !dbg !763

; <label>:166                                     ; preds = %3
  %167 = load %struct.global_State** %1, align 4, !dbg !764
  %168 = getelementptr inbounds %struct.global_State* %167, i32 0, i32 16, !dbg !764
  %169 = load %struct.GCObject** %168, align 4, !dbg !764
  %170 = load %struct.GCObject** %2, align 4, !dbg !764
  %171 = bitcast %struct.GCObject* %170 to %union.GCUnion*, !dbg !764
  %172 = bitcast %union.GCUnion* %171 to %struct.Table*, !dbg !764
  %173 = getelementptr inbounds %struct.Table* %172, i32 0, i32 10, !dbg !764
  store %struct.GCObject* %169, %struct.GCObject** %173, align 4, !dbg !764
  %174 = load %struct.GCObject** %2, align 4, !dbg !764
  %175 = bitcast %struct.GCObject* %174 to %union.GCUnion*, !dbg !764
  %176 = bitcast %union.GCUnion* %175 to %struct.Table*, !dbg !764
  %177 = bitcast %struct.Table* %176 to %union.GCUnion*, !dbg !764
  %178 = bitcast %union.GCUnion* %177 to %struct.GCObject*, !dbg !764
  %179 = load %struct.global_State** %1, align 4, !dbg !764
  %180 = getelementptr inbounds %struct.global_State* %179, i32 0, i32 16, !dbg !764
  store %struct.GCObject* %178, %struct.GCObject** %180, align 4, !dbg !764
  br label %212, !dbg !766

; <label>:181                                     ; preds = %3
  %182 = load %struct.global_State** %1, align 4, !dbg !767
  %183 = getelementptr inbounds %struct.global_State* %182, i32 0, i32 16, !dbg !767
  %184 = load %struct.GCObject** %183, align 4, !dbg !767
  %185 = load %struct.GCObject** %2, align 4, !dbg !767
  %186 = bitcast %struct.GCObject* %185 to %union.GCUnion*, !dbg !767
  %187 = bitcast %union.GCUnion* %186 to %struct.lua_State*, !dbg !767
  %188 = getelementptr inbounds %struct.lua_State* %187, i32 0, i32 12, !dbg !767
  store %struct.GCObject* %184, %struct.GCObject** %188, align 4, !dbg !767
  %189 = load %struct.GCObject** %2, align 4, !dbg !767
  %190 = bitcast %struct.GCObject* %189 to %union.GCUnion*, !dbg !767
  %191 = bitcast %union.GCUnion* %190 to %struct.lua_State*, !dbg !767
  %192 = bitcast %struct.lua_State* %191 to %union.GCUnion*, !dbg !767
  %193 = bitcast %union.GCUnion* %192 to %struct.GCObject*, !dbg !767
  %194 = load %struct.global_State** %1, align 4, !dbg !767
  %195 = getelementptr inbounds %struct.global_State* %194, i32 0, i32 16, !dbg !767
  store %struct.GCObject* %193, %struct.GCObject** %195, align 4, !dbg !767
  br label %212, !dbg !769

; <label>:196                                     ; preds = %3
  %197 = load %struct.global_State** %1, align 4, !dbg !770
  %198 = getelementptr inbounds %struct.global_State* %197, i32 0, i32 16, !dbg !770
  %199 = load %struct.GCObject** %198, align 4, !dbg !770
  %200 = load %struct.GCObject** %2, align 4, !dbg !770
  %201 = bitcast %struct.GCObject* %200 to %union.GCUnion*, !dbg !770
  %202 = bitcast %union.GCUnion* %201 to %struct.Proto*, !dbg !770
  %203 = getelementptr inbounds %struct.Proto* %202, i32 0, i32 22, !dbg !770
  store %struct.GCObject* %199, %struct.GCObject** %203, align 4, !dbg !770
  %204 = load %struct.GCObject** %2, align 4, !dbg !770
  %205 = bitcast %struct.GCObject* %204 to %union.GCUnion*, !dbg !770
  %206 = bitcast %union.GCUnion* %205 to %struct.Proto*, !dbg !770
  %207 = bitcast %struct.Proto* %206 to %union.GCUnion*, !dbg !770
  %208 = bitcast %union.GCUnion* %207 to %struct.GCObject*, !dbg !770
  %209 = load %struct.global_State** %1, align 4, !dbg !770
  %210 = getelementptr inbounds %struct.global_State* %209, i32 0, i32 16, !dbg !770
  store %struct.GCObject* %208, %struct.GCObject** %210, align 4, !dbg !770
  br label %212, !dbg !772

; <label>:211                                     ; preds = %3
  br label %212, !dbg !773

; <label>:212                                     ; preds = %211, %196, %181, %166, %149, %132, %131, %34, %14
  ret void, !dbg !774
}

; Function Attrs: nounwind
define hidden void @luaC_barrierback_(%struct.lua_State* %L, %struct.Table* %t) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca %struct.Table*, align 4
  %g = alloca %struct.global_State*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !775), !dbg !776
  store %struct.Table* %t, %struct.Table** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.Table** %2}, metadata !777), !dbg !778
  call void @llvm.dbg.declare(metadata !{%struct.global_State** %g}, metadata !779), !dbg !780
  %3 = load %struct.lua_State** %1, align 4, !dbg !781
  %4 = getelementptr inbounds %struct.lua_State* %3, i32 0, i32 6, !dbg !781
  %5 = load %struct.global_State** %4, align 4, !dbg !781
  store %struct.global_State* %5, %struct.global_State** %g, align 4, !dbg !781
  %6 = load %struct.Table** %2, align 4, !dbg !782
  %7 = getelementptr inbounds %struct.Table* %6, i32 0, i32 2, !dbg !782
  %8 = load i8* %7, align 1, !dbg !782
  %9 = zext i8 %8 to i32, !dbg !782
  %10 = and i32 %9, 251, !dbg !782
  %11 = trunc i32 %10 to i8, !dbg !782
  store i8 %11, i8* %7, align 1, !dbg !782
  %12 = load %struct.global_State** %g, align 4, !dbg !783
  %13 = getelementptr inbounds %struct.global_State* %12, i32 0, i32 17, !dbg !783
  %14 = load %struct.GCObject** %13, align 4, !dbg !783
  %15 = load %struct.Table** %2, align 4, !dbg !783
  %16 = getelementptr inbounds %struct.Table* %15, i32 0, i32 10, !dbg !783
  store %struct.GCObject* %14, %struct.GCObject** %16, align 4, !dbg !783
  %17 = load %struct.Table** %2, align 4, !dbg !783
  %18 = bitcast %struct.Table* %17 to %union.GCUnion*, !dbg !783
  %19 = bitcast %union.GCUnion* %18 to %struct.GCObject*, !dbg !783
  %20 = load %struct.global_State** %g, align 4, !dbg !783
  %21 = getelementptr inbounds %struct.global_State* %20, i32 0, i32 17, !dbg !783
  store %struct.GCObject* %19, %struct.GCObject** %21, align 4, !dbg !783
  ret void, !dbg !784
}

; Function Attrs: nounwind
define hidden void @luaC_upvalbarrier_(%struct.lua_State* %L, %struct.UpVal* %uv) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca %struct.UpVal*, align 4
  %g = alloca %struct.global_State*, align 4
  %o = alloca %struct.GCObject*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !785), !dbg !786
  store %struct.UpVal* %uv, %struct.UpVal** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.UpVal** %2}, metadata !787), !dbg !788
  call void @llvm.dbg.declare(metadata !{%struct.global_State** %g}, metadata !789), !dbg !790
  %3 = load %struct.lua_State** %1, align 4, !dbg !791
  %4 = getelementptr inbounds %struct.lua_State* %3, i32 0, i32 6, !dbg !791
  %5 = load %struct.global_State** %4, align 4, !dbg !791
  store %struct.global_State* %5, %struct.global_State** %g, align 4, !dbg !791
  call void @llvm.dbg.declare(metadata !{%struct.GCObject** %o}, metadata !792), !dbg !793
  %6 = load %struct.UpVal** %2, align 4, !dbg !794
  %7 = getelementptr inbounds %struct.UpVal* %6, i32 0, i32 0, !dbg !794
  %8 = load %struct.lua_TValue** %7, align 4, !dbg !794
  %9 = getelementptr inbounds %struct.lua_TValue* %8, i32 0, i32 0, !dbg !794
  %10 = bitcast %union.Value* %9 to %struct.GCObject**, !dbg !794
  %11 = load %struct.GCObject** %10, align 4, !dbg !794
  store %struct.GCObject* %11, %struct.GCObject** %o, align 4, !dbg !794
  %12 = load %struct.global_State** %g, align 4, !dbg !795
  %13 = getelementptr inbounds %struct.global_State* %12, i32 0, i32 10, !dbg !795
  %14 = load i8* %13, align 1, !dbg !795
  %15 = zext i8 %14 to i32, !dbg !795
  %16 = icmp sle i32 %15, 1, !dbg !795
  br i1 %16, label %17, label %30, !dbg !795

; <label>:17                                      ; preds = %0
  %18 = load %struct.GCObject** %o, align 4, !dbg !797
  %19 = getelementptr inbounds %struct.GCObject* %18, i32 0, i32 2, !dbg !797
  %20 = load i8* %19, align 1, !dbg !797
  %21 = zext i8 %20 to i32, !dbg !797
  %22 = and i32 %21, 3, !dbg !797
  %23 = icmp ne i32 %22, 0, !dbg !797
  br i1 %23, label %24, label %29, !dbg !797

; <label>:24                                      ; preds = %17
  %25 = load %struct.global_State** %g, align 4, !dbg !800
  %26 = load %struct.GCObject** %o, align 4, !dbg !800
  %27 = bitcast %struct.GCObject* %26 to %union.GCUnion*, !dbg !800
  %28 = bitcast %union.GCUnion* %27 to %struct.GCObject*, !dbg !800
  call void @reallymarkobject(%struct.global_State* %25, %struct.GCObject* %28), !dbg !800
  br label %29, !dbg !800

; <label>:29                                      ; preds = %24, %17
  br label %30, !dbg !802

; <label>:30                                      ; preds = %29, %0
  ret void, !dbg !805
}

; Function Attrs: nounwind
define hidden void @luaC_fix(%struct.lua_State* %L, %struct.GCObject* %o) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca %struct.GCObject*, align 4
  %g = alloca %struct.global_State*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !806), !dbg !807
  store %struct.GCObject* %o, %struct.GCObject** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.GCObject** %2}, metadata !808), !dbg !809
  call void @llvm.dbg.declare(metadata !{%struct.global_State** %g}, metadata !810), !dbg !811
  %3 = load %struct.lua_State** %1, align 4, !dbg !812
  %4 = getelementptr inbounds %struct.lua_State* %3, i32 0, i32 6, !dbg !812
  %5 = load %struct.global_State** %4, align 4, !dbg !812
  store %struct.global_State* %5, %struct.global_State** %g, align 4, !dbg !812
  %6 = load %struct.GCObject** %2, align 4, !dbg !813
  %7 = getelementptr inbounds %struct.GCObject* %6, i32 0, i32 2, !dbg !813
  %8 = load i8* %7, align 1, !dbg !813
  %9 = zext i8 %8 to i32, !dbg !813
  %10 = and i32 %9, 252, !dbg !813
  %11 = trunc i32 %10 to i8, !dbg !813
  store i8 %11, i8* %7, align 1, !dbg !813
  %12 = load %struct.GCObject** %2, align 4, !dbg !814
  %13 = getelementptr inbounds %struct.GCObject* %12, i32 0, i32 0, !dbg !814
  %14 = load %struct.GCObject** %13, align 4, !dbg !814
  %15 = load %struct.global_State** %g, align 4, !dbg !814
  %16 = getelementptr inbounds %struct.global_State* %15, i32 0, i32 13, !dbg !814
  store %struct.GCObject* %14, %struct.GCObject** %16, align 4, !dbg !814
  %17 = load %struct.global_State** %g, align 4, !dbg !815
  %18 = getelementptr inbounds %struct.global_State* %17, i32 0, i32 22, !dbg !815
  %19 = load %struct.GCObject** %18, align 4, !dbg !815
  %20 = load %struct.GCObject** %2, align 4, !dbg !815
  %21 = getelementptr inbounds %struct.GCObject* %20, i32 0, i32 0, !dbg !815
  store %struct.GCObject* %19, %struct.GCObject** %21, align 4, !dbg !815
  %22 = load %struct.GCObject** %2, align 4, !dbg !816
  %23 = load %struct.global_State** %g, align 4, !dbg !816
  %24 = getelementptr inbounds %struct.global_State* %23, i32 0, i32 22, !dbg !816
  store %struct.GCObject* %22, %struct.GCObject** %24, align 4, !dbg !816
  ret void, !dbg !817
}

; Function Attrs: nounwind
define hidden %struct.GCObject* @luaC_newobj(%struct.lua_State* %L, i32 %tt, i32 %sz) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %g = alloca %struct.global_State*, align 4
  %o = alloca %struct.GCObject*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !818), !dbg !819
  store i32 %tt, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !820), !dbg !821
  store i32 %sz, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !822), !dbg !823
  call void @llvm.dbg.declare(metadata !{%struct.global_State** %g}, metadata !824), !dbg !825
  %4 = load %struct.lua_State** %1, align 4, !dbg !826
  %5 = getelementptr inbounds %struct.lua_State* %4, i32 0, i32 6, !dbg !826
  %6 = load %struct.global_State** %5, align 4, !dbg !826
  store %struct.global_State* %6, %struct.global_State** %g, align 4, !dbg !826
  call void @llvm.dbg.declare(metadata !{%struct.GCObject** %o}, metadata !827), !dbg !828
  %7 = load %struct.lua_State** %1, align 4, !dbg !829
  %8 = load i32* %2, align 4, !dbg !829
  %9 = and i32 %8, 15, !dbg !829
  %10 = load i32* %3, align 4, !dbg !829
  %11 = call i8* @luaM_realloc_(%struct.lua_State* %7, i8* null, i32 %9, i32 %10), !dbg !829
  %12 = bitcast i8* %11 to %struct.GCObject*, !dbg !829
  store %struct.GCObject* %12, %struct.GCObject** %o, align 4, !dbg !829
  %13 = load %struct.global_State** %g, align 4, !dbg !830
  %14 = getelementptr inbounds %struct.global_State* %13, i32 0, i32 9, !dbg !830
  %15 = load i8* %14, align 1, !dbg !830
  %16 = zext i8 %15 to i32, !dbg !830
  %17 = and i32 %16, 3, !dbg !830
  %18 = trunc i32 %17 to i8, !dbg !830
  %19 = load %struct.GCObject** %o, align 4, !dbg !830
  %20 = getelementptr inbounds %struct.GCObject* %19, i32 0, i32 2, !dbg !830
  store i8 %18, i8* %20, align 1, !dbg !830
  %21 = load i32* %2, align 4, !dbg !831
  %22 = trunc i32 %21 to i8, !dbg !831
  %23 = load %struct.GCObject** %o, align 4, !dbg !831
  %24 = getelementptr inbounds %struct.GCObject* %23, i32 0, i32 1, !dbg !831
  store i8 %22, i8* %24, align 1, !dbg !831
  %25 = load %struct.global_State** %g, align 4, !dbg !832
  %26 = getelementptr inbounds %struct.global_State* %25, i32 0, i32 13, !dbg !832
  %27 = load %struct.GCObject** %26, align 4, !dbg !832
  %28 = load %struct.GCObject** %o, align 4, !dbg !832
  %29 = getelementptr inbounds %struct.GCObject* %28, i32 0, i32 0, !dbg !832
  store %struct.GCObject* %27, %struct.GCObject** %29, align 4, !dbg !832
  %30 = load %struct.GCObject** %o, align 4, !dbg !833
  %31 = load %struct.global_State** %g, align 4, !dbg !833
  %32 = getelementptr inbounds %struct.global_State* %31, i32 0, i32 13, !dbg !833
  store %struct.GCObject* %30, %struct.GCObject** %32, align 4, !dbg !833
  %33 = load %struct.GCObject** %o, align 4, !dbg !834
  ret %struct.GCObject* %33, !dbg !834
}

declare hidden i8* @luaM_realloc_(%struct.lua_State*, i8*, i32, i32) #2

; Function Attrs: nounwind
define hidden void @luaC_upvdeccount(%struct.lua_State* %L, %struct.UpVal* %uv) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca %struct.UpVal*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !835), !dbg !836
  store %struct.UpVal* %uv, %struct.UpVal** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.UpVal** %2}, metadata !837), !dbg !838
  %3 = load %struct.UpVal** %2, align 4, !dbg !839
  %4 = getelementptr inbounds %struct.UpVal* %3, i32 0, i32 1, !dbg !839
  %5 = load i32* %4, align 4, !dbg !839
  %6 = add i32 %5, -1, !dbg !839
  store i32 %6, i32* %4, align 4, !dbg !839
  %7 = load %struct.UpVal** %2, align 4, !dbg !840
  %8 = getelementptr inbounds %struct.UpVal* %7, i32 0, i32 1, !dbg !840
  %9 = load i32* %8, align 4, !dbg !840
  %10 = icmp eq i32 %9, 0, !dbg !840
  br i1 %10, label %11, label %24, !dbg !840

; <label>:11                                      ; preds = %0
  %12 = load %struct.UpVal** %2, align 4, !dbg !842
  %13 = getelementptr inbounds %struct.UpVal* %12, i32 0, i32 0, !dbg !842
  %14 = load %struct.lua_TValue** %13, align 4, !dbg !842
  %15 = load %struct.UpVal** %2, align 4, !dbg !842
  %16 = getelementptr inbounds %struct.UpVal* %15, i32 0, i32 2, !dbg !842
  %17 = bitcast %union.anon.3* %16 to %struct.lua_TValue*, !dbg !842
  %18 = icmp ne %struct.lua_TValue* %14, %17, !dbg !842
  br i1 %18, label %24, label %19, !dbg !842

; <label>:19                                      ; preds = %11
  %20 = load %struct.lua_State** %1, align 4, !dbg !844
  %21 = load %struct.UpVal** %2, align 4, !dbg !844
  %22 = bitcast %struct.UpVal* %21 to i8*, !dbg !844
  %23 = call i8* @luaM_realloc_(%struct.lua_State* %20, i8* %22, i32 24, i32 0), !dbg !844
  br label %24, !dbg !844

; <label>:24                                      ; preds = %19, %11, %0
  ret void, !dbg !845
}

; Function Attrs: nounwind
define hidden void @luaC_checkfinalizer(%struct.lua_State* %L, %struct.GCObject* %o, %struct.Table* %mt) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca %struct.GCObject*, align 4
  %3 = alloca %struct.Table*, align 4
  %g = alloca %struct.global_State*, align 4
  %p = alloca %struct.GCObject**, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !846), !dbg !847
  store %struct.GCObject* %o, %struct.GCObject** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.GCObject** %2}, metadata !848), !dbg !849
  store %struct.Table* %mt, %struct.Table** %3, align 4
  call void @llvm.dbg.declare(metadata !{%struct.Table** %3}, metadata !850), !dbg !851
  call void @llvm.dbg.declare(metadata !{%struct.global_State** %g}, metadata !852), !dbg !853
  %4 = load %struct.lua_State** %1, align 4, !dbg !854
  %5 = getelementptr inbounds %struct.lua_State* %4, i32 0, i32 6, !dbg !854
  %6 = load %struct.global_State** %5, align 4, !dbg !854
  store %struct.global_State* %6, %struct.global_State** %g, align 4, !dbg !854
  %7 = load %struct.GCObject** %2, align 4, !dbg !855
  %8 = getelementptr inbounds %struct.GCObject* %7, i32 0, i32 2, !dbg !855
  %9 = load i8* %8, align 1, !dbg !855
  %10 = zext i8 %9 to i32, !dbg !855
  %11 = and i32 %10, 8, !dbg !855
  %12 = icmp ne i32 %11, 0, !dbg !855
  br i1 %12, label %37, label %13, !dbg !855

; <label>:13                                      ; preds = %0
  %14 = load %struct.Table** %3, align 4, !dbg !857
  %15 = icmp eq %struct.Table* %14, null, !dbg !857
  br i1 %15, label %16, label %17, !dbg !857

; <label>:16                                      ; preds = %13
  br label %34, !dbg !859

; <label>:17                                      ; preds = %13
  %18 = load %struct.Table** %3, align 4, !dbg !861
  %19 = getelementptr inbounds %struct.Table* %18, i32 0, i32 3, !dbg !861
  %20 = load i8* %19, align 1, !dbg !861
  %21 = zext i8 %20 to i32, !dbg !861
  %22 = and i32 %21, 4, !dbg !861
  %23 = icmp ne i32 %22, 0, !dbg !861
  br i1 %23, label %24, label %25, !dbg !861

; <label>:24                                      ; preds = %17
  br label %32, !dbg !863

; <label>:25                                      ; preds = %17
  %26 = load %struct.Table** %3, align 4, !dbg !865
  %27 = load %struct.global_State** %g, align 4, !dbg !865
  %28 = getelementptr inbounds %struct.global_State* %27, i32 0, i32 31, !dbg !865
  %29 = getelementptr inbounds [24 x %struct.TString*]* %28, i32 0, i32 2, !dbg !865
  %30 = load %struct.TString** %29, align 4, !dbg !865
  %31 = call %struct.lua_TValue* @luaT_gettm(%struct.Table* %26, i32 2, %struct.TString* %30), !dbg !865
  br label %32, !dbg !865

; <label>:32                                      ; preds = %25, %24
  %33 = phi %struct.lua_TValue* [ null, %24 ], [ %31, %25 ], !dbg !865
  br label %34, !dbg !866

; <label>:34                                      ; preds = %32, %16
  %35 = phi %struct.lua_TValue* [ null, %16 ], [ %33, %32 ], !dbg !865
  %36 = icmp eq %struct.lua_TValue* %35, null, !dbg !868
  br i1 %36, label %37, label %38, !dbg !868

; <label>:37                                      ; preds = %34, %0
  br label %114, !dbg !870

; <label>:38                                      ; preds = %34
  call void @llvm.dbg.declare(metadata !{%struct.GCObject*** %p}, metadata !871), !dbg !873
  %39 = load %struct.global_State** %g, align 4, !dbg !874
  %40 = getelementptr inbounds %struct.global_State* %39, i32 0, i32 10, !dbg !874
  %41 = load i8* %40, align 1, !dbg !874
  %42 = zext i8 %41 to i32, !dbg !874
  %43 = icmp sle i32 2, %42, !dbg !874
  br i1 %43, label %44, label %82, !dbg !874

; <label>:44                                      ; preds = %38
  %45 = load %struct.global_State** %g, align 4, !dbg !876
  %46 = getelementptr inbounds %struct.global_State* %45, i32 0, i32 10, !dbg !876
  %47 = load i8* %46, align 1, !dbg !876
  %48 = zext i8 %47 to i32, !dbg !876
  %49 = icmp sle i32 %48, 5, !dbg !876
  br i1 %49, label %50, label %82, !dbg !876

; <label>:50                                      ; preds = %44
  %51 = load %struct.GCObject** %2, align 4, !dbg !878
  %52 = getelementptr inbounds %struct.GCObject* %51, i32 0, i32 2, !dbg !878
  %53 = load i8* %52, align 1, !dbg !878
  %54 = zext i8 %53 to i32, !dbg !878
  %55 = and i32 %54, -8, !dbg !878
  %56 = load %struct.global_State** %g, align 4, !dbg !878
  %57 = getelementptr inbounds %struct.global_State* %56, i32 0, i32 9, !dbg !878
  %58 = load i8* %57, align 1, !dbg !878
  %59 = zext i8 %58 to i32, !dbg !878
  %60 = and i32 %59, 3, !dbg !878
  %61 = trunc i32 %60 to i8, !dbg !878
  %62 = zext i8 %61 to i32, !dbg !878
  %63 = or i32 %55, %62, !dbg !878
  %64 = trunc i32 %63 to i8, !dbg !878
  %65 = load %struct.GCObject** %2, align 4, !dbg !878
  %66 = getelementptr inbounds %struct.GCObject* %65, i32 0, i32 2, !dbg !878
  store i8 %64, i8* %66, align 1, !dbg !878
  %67 = load %struct.global_State** %g, align 4, !dbg !880
  %68 = getelementptr inbounds %struct.global_State* %67, i32 0, i32 14, !dbg !880
  %69 = load %struct.GCObject*** %68, align 4, !dbg !880
  %70 = load %struct.GCObject** %2, align 4, !dbg !880
  %71 = getelementptr inbounds %struct.GCObject* %70, i32 0, i32 0, !dbg !880
  %72 = icmp eq %struct.GCObject** %69, %71, !dbg !880
  br i1 %72, label %73, label %81, !dbg !880

; <label>:73                                      ; preds = %50
  %74 = load %struct.lua_State** %1, align 4, !dbg !882
  %75 = load %struct.global_State** %g, align 4, !dbg !882
  %76 = getelementptr inbounds %struct.global_State* %75, i32 0, i32 14, !dbg !882
  %77 = load %struct.GCObject*** %76, align 4, !dbg !882
  %78 = call %struct.GCObject** @sweeptolive(%struct.lua_State* %74, %struct.GCObject** %77), !dbg !882
  %79 = load %struct.global_State** %g, align 4, !dbg !882
  %80 = getelementptr inbounds %struct.global_State* %79, i32 0, i32 14, !dbg !882
  store %struct.GCObject** %78, %struct.GCObject*** %80, align 4, !dbg !882
  br label %81, !dbg !882

; <label>:81                                      ; preds = %73, %50
  br label %82, !dbg !883

; <label>:82                                      ; preds = %81, %44, %38
  %83 = load %struct.global_State** %g, align 4, !dbg !884
  %84 = getelementptr inbounds %struct.global_State* %83, i32 0, i32 13, !dbg !884
  store %struct.GCObject** %84, %struct.GCObject*** %p, align 4, !dbg !884
  br label %85, !dbg !884

; <label>:85                                      ; preds = %91, %82
  %86 = load %struct.GCObject*** %p, align 4, !dbg !886
  %87 = load %struct.GCObject** %86, align 4, !dbg !886
  %88 = load %struct.GCObject** %2, align 4, !dbg !886
  %89 = icmp ne %struct.GCObject* %87, %88, !dbg !886
  br i1 %89, label %90, label %95, !dbg !886

; <label>:90                                      ; preds = %85
  br label %91, !dbg !889

; <label>:91                                      ; preds = %90
  %92 = load %struct.GCObject*** %p, align 4, !dbg !892
  %93 = load %struct.GCObject** %92, align 4, !dbg !892
  %94 = getelementptr inbounds %struct.GCObject* %93, i32 0, i32 0, !dbg !892
  store %struct.GCObject** %94, %struct.GCObject*** %p, align 4, !dbg !892
  br label %85, !dbg !892

; <label>:95                                      ; preds = %85
  %96 = load %struct.GCObject** %2, align 4, !dbg !894
  %97 = getelementptr inbounds %struct.GCObject* %96, i32 0, i32 0, !dbg !894
  %98 = load %struct.GCObject** %97, align 4, !dbg !894
  %99 = load %struct.GCObject*** %p, align 4, !dbg !894
  store %struct.GCObject* %98, %struct.GCObject** %99, align 4, !dbg !894
  %100 = load %struct.global_State** %g, align 4, !dbg !895
  %101 = getelementptr inbounds %struct.global_State* %100, i32 0, i32 15, !dbg !895
  %102 = load %struct.GCObject** %101, align 4, !dbg !895
  %103 = load %struct.GCObject** %2, align 4, !dbg !895
  %104 = getelementptr inbounds %struct.GCObject* %103, i32 0, i32 0, !dbg !895
  store %struct.GCObject* %102, %struct.GCObject** %104, align 4, !dbg !895
  %105 = load %struct.GCObject** %2, align 4, !dbg !896
  %106 = load %struct.global_State** %g, align 4, !dbg !896
  %107 = getelementptr inbounds %struct.global_State* %106, i32 0, i32 15, !dbg !896
  store %struct.GCObject* %105, %struct.GCObject** %107, align 4, !dbg !896
  %108 = load %struct.GCObject** %2, align 4, !dbg !897
  %109 = getelementptr inbounds %struct.GCObject* %108, i32 0, i32 2, !dbg !897
  %110 = load i8* %109, align 1, !dbg !897
  %111 = zext i8 %110 to i32, !dbg !897
  %112 = or i32 %111, 8, !dbg !897
  %113 = trunc i32 %112 to i8, !dbg !897
  store i8 %113, i8* %109, align 1, !dbg !897
  br label %114

; <label>:114                                     ; preds = %37, %95
  ret void, !dbg !898
}

declare hidden %struct.lua_TValue* @luaT_gettm(%struct.Table*, i32, %struct.TString*) #2

; Function Attrs: nounwind
define internal %struct.GCObject** @sweeptolive(%struct.lua_State* %L, %struct.GCObject** %p) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca %struct.GCObject**, align 4
  %old = alloca %struct.GCObject**, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !899), !dbg !900
  store %struct.GCObject** %p, %struct.GCObject*** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.GCObject*** %2}, metadata !901), !dbg !902
  call void @llvm.dbg.declare(metadata !{%struct.GCObject*** %old}, metadata !903), !dbg !904
  %3 = load %struct.GCObject*** %2, align 4, !dbg !905
  store %struct.GCObject** %3, %struct.GCObject*** %old, align 4, !dbg !905
  br label %4, !dbg !906

; <label>:4                                       ; preds = %8, %0
  %5 = load %struct.lua_State** %1, align 4, !dbg !907
  %6 = load %struct.GCObject*** %2, align 4, !dbg !907
  %7 = call %struct.GCObject** @sweeplist(%struct.lua_State* %5, %struct.GCObject** %6, i32 1), !dbg !907
  store %struct.GCObject** %7, %struct.GCObject*** %2, align 4, !dbg !907
  br label %8, !dbg !909

; <label>:8                                       ; preds = %4
  %9 = load %struct.GCObject*** %2, align 4, !dbg !910
  %10 = load %struct.GCObject*** %old, align 4, !dbg !910
  %11 = icmp eq %struct.GCObject** %9, %10, !dbg !910
  br i1 %11, label %4, label %12, !dbg !910

; <label>:12                                      ; preds = %8
  %13 = load %struct.GCObject*** %2, align 4, !dbg !912
  ret %struct.GCObject** %13, !dbg !912
}

; Function Attrs: nounwind
define hidden void @luaC_freeallobjects(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %g = alloca %struct.global_State*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !913), !dbg !914
  call void @llvm.dbg.declare(metadata !{%struct.global_State** %g}, metadata !915), !dbg !916
  %2 = load %struct.lua_State** %1, align 4, !dbg !917
  %3 = getelementptr inbounds %struct.lua_State* %2, i32 0, i32 6, !dbg !917
  %4 = load %struct.global_State** %3, align 4, !dbg !917
  store %struct.global_State* %4, %struct.global_State** %g, align 4, !dbg !917
  %5 = load %struct.global_State** %g, align 4, !dbg !918
  call void @separatetobefnz(%struct.global_State* %5, i32 1), !dbg !918
  %6 = load %struct.lua_State** %1, align 4, !dbg !919
  call void @callallpendingfinalizers(%struct.lua_State* %6), !dbg !919
  %7 = load %struct.global_State** %g, align 4, !dbg !920
  %8 = getelementptr inbounds %struct.global_State* %7, i32 0, i32 9, !dbg !920
  store i8 3, i8* %8, align 1, !dbg !920
  %9 = load %struct.global_State** %g, align 4, !dbg !921
  %10 = getelementptr inbounds %struct.global_State* %9, i32 0, i32 11, !dbg !921
  store i8 0, i8* %10, align 1, !dbg !921
  %11 = load %struct.lua_State** %1, align 4, !dbg !922
  %12 = load %struct.global_State** %g, align 4, !dbg !922
  %13 = getelementptr inbounds %struct.global_State* %12, i32 0, i32 15, !dbg !922
  %14 = call %struct.GCObject** @sweeplist(%struct.lua_State* %11, %struct.GCObject** %13, i32 -1), !dbg !922
  %15 = load %struct.lua_State** %1, align 4, !dbg !923
  %16 = load %struct.global_State** %g, align 4, !dbg !923
  %17 = getelementptr inbounds %struct.global_State* %16, i32 0, i32 13, !dbg !923
  %18 = call %struct.GCObject** @sweeplist(%struct.lua_State* %15, %struct.GCObject** %17, i32 -1), !dbg !923
  %19 = load %struct.lua_State** %1, align 4, !dbg !924
  %20 = load %struct.global_State** %g, align 4, !dbg !924
  %21 = getelementptr inbounds %struct.global_State* %20, i32 0, i32 22, !dbg !924
  %22 = call %struct.GCObject** @sweeplist(%struct.lua_State* %19, %struct.GCObject** %21, i32 -1), !dbg !924
  ret void, !dbg !925
}

; Function Attrs: nounwind
define internal void @separatetobefnz(%struct.global_State* %g, i32 %all) #0 {
  %1 = alloca %struct.global_State*, align 4
  %2 = alloca i32, align 4
  %curr = alloca %struct.GCObject*, align 4
  %p = alloca %struct.GCObject**, align 4
  %lastnext = alloca %struct.GCObject**, align 4
  store %struct.global_State* %g, %struct.global_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.global_State** %1}, metadata !926), !dbg !927
  store i32 %all, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !928), !dbg !929
  call void @llvm.dbg.declare(metadata !{%struct.GCObject** %curr}, metadata !930), !dbg !931
  call void @llvm.dbg.declare(metadata !{%struct.GCObject*** %p}, metadata !932), !dbg !933
  %3 = load %struct.global_State** %1, align 4, !dbg !934
  %4 = getelementptr inbounds %struct.global_State* %3, i32 0, i32 15, !dbg !934
  store %struct.GCObject** %4, %struct.GCObject*** %p, align 4, !dbg !934
  call void @llvm.dbg.declare(metadata !{%struct.GCObject*** %lastnext}, metadata !935), !dbg !936
  %5 = load %struct.global_State** %1, align 4, !dbg !937
  %6 = getelementptr inbounds %struct.global_State* %5, i32 0, i32 21, !dbg !937
  %7 = call %struct.GCObject** @findlast(%struct.GCObject** %6), !dbg !937
  store %struct.GCObject** %7, %struct.GCObject*** %lastnext, align 4, !dbg !937
  br label %8, !dbg !938

; <label>:8                                       ; preds = %38, %0
  %9 = load %struct.GCObject*** %p, align 4, !dbg !939
  %10 = load %struct.GCObject** %9, align 4, !dbg !939
  store %struct.GCObject* %10, %struct.GCObject** %curr, align 4, !dbg !939
  %11 = icmp ne %struct.GCObject* %10, null, !dbg !939
  br i1 %11, label %12, label %39, !dbg !939

; <label>:12                                      ; preds = %8
  %13 = load %struct.GCObject** %curr, align 4, !dbg !941
  %14 = getelementptr inbounds %struct.GCObject* %13, i32 0, i32 2, !dbg !941
  %15 = load i8* %14, align 1, !dbg !941
  %16 = zext i8 %15 to i32, !dbg !941
  %17 = and i32 %16, 3, !dbg !941
  %18 = icmp ne i32 %17, 0, !dbg !941
  br i1 %18, label %25, label %19, !dbg !941

; <label>:19                                      ; preds = %12
  %20 = load i32* %2, align 4, !dbg !944
  %21 = icmp ne i32 %20, 0, !dbg !944
  br i1 %21, label %25, label %22, !dbg !944

; <label>:22                                      ; preds = %19
  %23 = load %struct.GCObject** %curr, align 4, !dbg !946
  %24 = getelementptr inbounds %struct.GCObject* %23, i32 0, i32 0, !dbg !946
  store %struct.GCObject** %24, %struct.GCObject*** %p, align 4, !dbg !946
  br label %38, !dbg !946

; <label>:25                                      ; preds = %19, %12
  %26 = load %struct.GCObject** %curr, align 4, !dbg !947
  %27 = getelementptr inbounds %struct.GCObject* %26, i32 0, i32 0, !dbg !947
  %28 = load %struct.GCObject** %27, align 4, !dbg !947
  %29 = load %struct.GCObject*** %p, align 4, !dbg !947
  store %struct.GCObject* %28, %struct.GCObject** %29, align 4, !dbg !947
  %30 = load %struct.GCObject*** %lastnext, align 4, !dbg !949
  %31 = load %struct.GCObject** %30, align 4, !dbg !949
  %32 = load %struct.GCObject** %curr, align 4, !dbg !949
  %33 = getelementptr inbounds %struct.GCObject* %32, i32 0, i32 0, !dbg !949
  store %struct.GCObject* %31, %struct.GCObject** %33, align 4, !dbg !949
  %34 = load %struct.GCObject** %curr, align 4, !dbg !950
  %35 = load %struct.GCObject*** %lastnext, align 4, !dbg !950
  store %struct.GCObject* %34, %struct.GCObject** %35, align 4, !dbg !950
  %36 = load %struct.GCObject** %curr, align 4, !dbg !951
  %37 = getelementptr inbounds %struct.GCObject* %36, i32 0, i32 0, !dbg !951
  store %struct.GCObject** %37, %struct.GCObject*** %lastnext, align 4, !dbg !951
  br label %38

; <label>:38                                      ; preds = %25, %22
  br label %8, !dbg !952

; <label>:39                                      ; preds = %8
  ret void, !dbg !953
}

; Function Attrs: nounwind
define internal void @callallpendingfinalizers(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %g = alloca %struct.global_State*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !954), !dbg !955
  call void @llvm.dbg.declare(metadata !{%struct.global_State** %g}, metadata !956), !dbg !957
  %2 = load %struct.lua_State** %1, align 4, !dbg !958
  %3 = getelementptr inbounds %struct.lua_State* %2, i32 0, i32 6, !dbg !958
  %4 = load %struct.global_State** %3, align 4, !dbg !958
  store %struct.global_State* %4, %struct.global_State** %g, align 4, !dbg !958
  br label %5, !dbg !959

; <label>:5                                       ; preds = %10, %0
  %6 = load %struct.global_State** %g, align 4, !dbg !960
  %7 = getelementptr inbounds %struct.global_State* %6, i32 0, i32 21, !dbg !960
  %8 = load %struct.GCObject** %7, align 4, !dbg !960
  %9 = icmp ne %struct.GCObject* %8, null, !dbg !960
  br i1 %9, label %10, label %12, !dbg !960

; <label>:10                                      ; preds = %5
  %11 = load %struct.lua_State** %1, align 4, !dbg !962
  call void @GCTM(%struct.lua_State* %11, i32 0), !dbg !962
  br label %5, !dbg !962

; <label>:12                                      ; preds = %5
  ret void, !dbg !963
}

; Function Attrs: nounwind
define internal %struct.GCObject** @sweeplist(%struct.lua_State* %L, %struct.GCObject** %p, i32 %count) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca %struct.GCObject**, align 4
  %3 = alloca i32, align 4
  %g = alloca %struct.global_State*, align 4
  %ow = alloca i32, align 4
  %white = alloca i32, align 4
  %curr = alloca %struct.GCObject*, align 4
  %marked = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !964), !dbg !965
  store %struct.GCObject** %p, %struct.GCObject*** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.GCObject*** %2}, metadata !966), !dbg !967
  store i32 %count, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !968), !dbg !969
  call void @llvm.dbg.declare(metadata !{%struct.global_State** %g}, metadata !970), !dbg !971
  %4 = load %struct.lua_State** %1, align 4, !dbg !972
  %5 = getelementptr inbounds %struct.lua_State* %4, i32 0, i32 6, !dbg !972
  %6 = load %struct.global_State** %5, align 4, !dbg !972
  store %struct.global_State* %6, %struct.global_State** %g, align 4, !dbg !972
  call void @llvm.dbg.declare(metadata !{i32* %ow}, metadata !973), !dbg !974
  %7 = load %struct.global_State** %g, align 4, !dbg !975
  %8 = getelementptr inbounds %struct.global_State* %7, i32 0, i32 9, !dbg !975
  %9 = load i8* %8, align 1, !dbg !975
  %10 = zext i8 %9 to i32, !dbg !975
  %11 = xor i32 %10, 3, !dbg !975
  store i32 %11, i32* %ow, align 4, !dbg !975
  call void @llvm.dbg.declare(metadata !{i32* %white}, metadata !976), !dbg !977
  %12 = load %struct.global_State** %g, align 4, !dbg !978
  %13 = getelementptr inbounds %struct.global_State* %12, i32 0, i32 9, !dbg !978
  %14 = load i8* %13, align 1, !dbg !978
  %15 = zext i8 %14 to i32, !dbg !978
  %16 = and i32 %15, 3, !dbg !978
  %17 = trunc i32 %16 to i8, !dbg !978
  %18 = zext i8 %17 to i32, !dbg !978
  store i32 %18, i32* %white, align 4, !dbg !978
  br label %19, !dbg !979

; <label>:19                                      ; preds = %58, %0
  %20 = load %struct.GCObject*** %2, align 4, !dbg !980
  %21 = load %struct.GCObject** %20, align 4, !dbg !980
  %22 = icmp ne %struct.GCObject* %21, null, !dbg !980
  br i1 %22, label %23, label %27, !dbg !980

; <label>:23                                      ; preds = %19
  %24 = load i32* %3, align 4, !dbg !982
  %25 = add i32 %24, -1, !dbg !982
  store i32 %25, i32* %3, align 4, !dbg !982
  %26 = icmp ugt i32 %24, 0, !dbg !982
  br label %27

; <label>:27                                      ; preds = %23, %19
  %28 = phi i1 [ false, %19 ], [ %26, %23 ]
  br i1 %28, label %29, label %59, !dbg !984

; <label>:29                                      ; preds = %27
  call void @llvm.dbg.declare(metadata !{%struct.GCObject** %curr}, metadata !986), !dbg !988
  %30 = load %struct.GCObject*** %2, align 4, !dbg !989
  %31 = load %struct.GCObject** %30, align 4, !dbg !989
  store %struct.GCObject* %31, %struct.GCObject** %curr, align 4, !dbg !989
  call void @llvm.dbg.declare(metadata !{i32* %marked}, metadata !990), !dbg !991
  %32 = load %struct.GCObject** %curr, align 4, !dbg !992
  %33 = getelementptr inbounds %struct.GCObject* %32, i32 0, i32 2, !dbg !992
  %34 = load i8* %33, align 1, !dbg !992
  %35 = zext i8 %34 to i32, !dbg !992
  store i32 %35, i32* %marked, align 4, !dbg !992
  %36 = load i32* %marked, align 4, !dbg !993
  %37 = xor i32 %36, 3, !dbg !993
  %38 = load i32* %ow, align 4, !dbg !993
  %39 = and i32 %37, %38, !dbg !993
  %40 = icmp ne i32 %39, 0, !dbg !993
  br i1 %40, label %48, label %41, !dbg !993

; <label>:41                                      ; preds = %29
  %42 = load %struct.GCObject** %curr, align 4, !dbg !995
  %43 = getelementptr inbounds %struct.GCObject* %42, i32 0, i32 0, !dbg !995
  %44 = load %struct.GCObject** %43, align 4, !dbg !995
  %45 = load %struct.GCObject*** %2, align 4, !dbg !995
  store %struct.GCObject* %44, %struct.GCObject** %45, align 4, !dbg !995
  %46 = load %struct.lua_State** %1, align 4, !dbg !997
  %47 = load %struct.GCObject** %curr, align 4, !dbg !997
  call void @freeobj(%struct.lua_State* %46, %struct.GCObject* %47), !dbg !997
  br label %58, !dbg !998

; <label>:48                                      ; preds = %29
  %49 = load i32* %marked, align 4, !dbg !999
  %50 = and i32 %49, -8, !dbg !999
  %51 = load i32* %white, align 4, !dbg !999
  %52 = or i32 %50, %51, !dbg !999
  %53 = trunc i32 %52 to i8, !dbg !999
  %54 = load %struct.GCObject** %curr, align 4, !dbg !999
  %55 = getelementptr inbounds %struct.GCObject* %54, i32 0, i32 2, !dbg !999
  store i8 %53, i8* %55, align 1, !dbg !999
  %56 = load %struct.GCObject** %curr, align 4, !dbg !1001
  %57 = getelementptr inbounds %struct.GCObject* %56, i32 0, i32 0, !dbg !1001
  store %struct.GCObject** %57, %struct.GCObject*** %2, align 4, !dbg !1001
  br label %58

; <label>:58                                      ; preds = %48, %41
  br label %19, !dbg !1002

; <label>:59                                      ; preds = %27
  %60 = load %struct.GCObject*** %2, align 4, !dbg !1003
  %61 = load %struct.GCObject** %60, align 4, !dbg !1003
  %62 = icmp eq %struct.GCObject* %61, null, !dbg !1003
  br i1 %62, label %63, label %64, !dbg !1003

; <label>:63                                      ; preds = %59
  br label %66, !dbg !1004

; <label>:64                                      ; preds = %59
  %65 = load %struct.GCObject*** %2, align 4, !dbg !1006
  br label %66, !dbg !1006

; <label>:66                                      ; preds = %64, %63
  %67 = phi %struct.GCObject** [ null, %63 ], [ %65, %64 ], !dbg !1003
  ret %struct.GCObject** %67, !dbg !1008
}

; Function Attrs: nounwind
define hidden void @luaC_runtilstate(%struct.lua_State* %L, i32 %statesmask) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca i32, align 4
  %g = alloca %struct.global_State*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !1011), !dbg !1012
  store i32 %statesmask, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !1013), !dbg !1014
  call void @llvm.dbg.declare(metadata !{%struct.global_State** %g}, metadata !1015), !dbg !1016
  %3 = load %struct.lua_State** %1, align 4, !dbg !1017
  %4 = getelementptr inbounds %struct.lua_State* %3, i32 0, i32 6, !dbg !1017
  %5 = load %struct.global_State** %4, align 4, !dbg !1017
  store %struct.global_State* %5, %struct.global_State** %g, align 4, !dbg !1017
  br label %6, !dbg !1018

; <label>:6                                       ; preds = %16, %0
  %7 = load i32* %2, align 4, !dbg !1019
  %8 = load %struct.global_State** %g, align 4, !dbg !1019
  %9 = getelementptr inbounds %struct.global_State* %8, i32 0, i32 10, !dbg !1019
  %10 = load i8* %9, align 1, !dbg !1019
  %11 = zext i8 %10 to i32, !dbg !1019
  %12 = shl i32 1, %11, !dbg !1019
  %13 = and i32 %7, %12, !dbg !1019
  %14 = icmp ne i32 %13, 0, !dbg !1019
  %15 = xor i1 %14, true, !dbg !1019
  br i1 %15, label %16, label %19, !dbg !1019

; <label>:16                                      ; preds = %6
  %17 = load %struct.lua_State** %1, align 4, !dbg !1021
  %18 = call i32 @singlestep(%struct.lua_State* %17), !dbg !1021
  br label %6, !dbg !1021

; <label>:19                                      ; preds = %6
  ret void, !dbg !1022
}

; Function Attrs: nounwind
define internal i32 @singlestep(%struct.lua_State* %L) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.lua_State*, align 4
  %g = alloca %struct.global_State*, align 4
  %work = alloca i32, align 4
  %n = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %2}, metadata !1023), !dbg !1024
  call void @llvm.dbg.declare(metadata !{%struct.global_State** %g}, metadata !1025), !dbg !1026
  %3 = load %struct.lua_State** %2, align 4, !dbg !1027
  %4 = getelementptr inbounds %struct.lua_State* %3, i32 0, i32 6, !dbg !1027
  %5 = load %struct.global_State** %4, align 4, !dbg !1027
  store %struct.global_State* %5, %struct.global_State** %g, align 4, !dbg !1027
  %6 = load %struct.global_State** %g, align 4, !dbg !1028
  %7 = getelementptr inbounds %struct.global_State* %6, i32 0, i32 10, !dbg !1028
  %8 = load i8* %7, align 1, !dbg !1028
  %9 = zext i8 %8 to i32, !dbg !1028
  switch i32 %9, label %114 [
    i32 7, label %10
    i32 0, label %24
    i32 1, label %39
    i32 2, label %54
    i32 3, label %60
    i32 4, label %66
    i32 5, label %70
    i32 6, label %95
  ], !dbg !1028

; <label>:10                                      ; preds = %0
  %11 = load %struct.global_State** %g, align 4, !dbg !1029
  %12 = getelementptr inbounds %struct.global_State* %11, i32 0, i32 6, !dbg !1029
  %13 = getelementptr inbounds %struct.stringtable* %12, i32 0, i32 2, !dbg !1029
  %14 = load i32* %13, align 4, !dbg !1029
  %15 = mul i32 %14, 4, !dbg !1029
  %16 = load %struct.global_State** %g, align 4, !dbg !1029
  %17 = getelementptr inbounds %struct.global_State* %16, i32 0, i32 4, !dbg !1029
  store i32 %15, i32* %17, align 4, !dbg !1029
  %18 = load %struct.global_State** %g, align 4, !dbg !1032
  call void @restartcollection(%struct.global_State* %18), !dbg !1032
  %19 = load %struct.global_State** %g, align 4, !dbg !1033
  %20 = getelementptr inbounds %struct.global_State* %19, i32 0, i32 10, !dbg !1033
  store i8 0, i8* %20, align 1, !dbg !1033
  %21 = load %struct.global_State** %g, align 4, !dbg !1034
  %22 = getelementptr inbounds %struct.global_State* %21, i32 0, i32 4, !dbg !1034
  %23 = load i32* %22, align 4, !dbg !1034
  store i32 %23, i32* %1, !dbg !1034
  br label %115, !dbg !1034

; <label>:24                                      ; preds = %0
  %25 = load %struct.global_State** %g, align 4, !dbg !1035
  %26 = getelementptr inbounds %struct.global_State* %25, i32 0, i32 4, !dbg !1035
  store i32 0, i32* %26, align 4, !dbg !1035
  %27 = load %struct.global_State** %g, align 4, !dbg !1037
  call void @propagatemark(%struct.global_State* %27), !dbg !1037
  %28 = load %struct.global_State** %g, align 4, !dbg !1038
  %29 = getelementptr inbounds %struct.global_State* %28, i32 0, i32 16, !dbg !1038
  %30 = load %struct.GCObject** %29, align 4, !dbg !1038
  %31 = icmp eq %struct.GCObject* %30, null, !dbg !1038
  br i1 %31, label %32, label %35, !dbg !1038

; <label>:32                                      ; preds = %24
  %33 = load %struct.global_State** %g, align 4, !dbg !1040
  %34 = getelementptr inbounds %struct.global_State* %33, i32 0, i32 10, !dbg !1040
  store i8 1, i8* %34, align 1, !dbg !1040
  br label %35, !dbg !1040

; <label>:35                                      ; preds = %32, %24
  %36 = load %struct.global_State** %g, align 4, !dbg !1041
  %37 = getelementptr inbounds %struct.global_State* %36, i32 0, i32 4, !dbg !1041
  %38 = load i32* %37, align 4, !dbg !1041
  store i32 %38, i32* %1, !dbg !1041
  br label %115, !dbg !1041

; <label>:39                                      ; preds = %0
  call void @llvm.dbg.declare(metadata !{i32* %work}, metadata !1042), !dbg !1044
  %40 = load %struct.global_State** %g, align 4, !dbg !1045
  call void @propagateall(%struct.global_State* %40), !dbg !1045
  %41 = load %struct.lua_State** %2, align 4, !dbg !1046
  %42 = call i32 @atomic(%struct.lua_State* %41), !dbg !1046
  store i32 %42, i32* %work, align 4, !dbg !1046
  %43 = load %struct.lua_State** %2, align 4, !dbg !1047
  call void @entersweep(%struct.lua_State* %43), !dbg !1047
  %44 = load %struct.global_State** %g, align 4, !dbg !1048
  %45 = getelementptr inbounds %struct.global_State* %44, i32 0, i32 2, !dbg !1048
  %46 = load i32* %45, align 4, !dbg !1048
  %47 = load %struct.global_State** %g, align 4, !dbg !1048
  %48 = getelementptr inbounds %struct.global_State* %47, i32 0, i32 3, !dbg !1048
  %49 = load i32* %48, align 4, !dbg !1048
  %50 = add nsw i32 %46, %49, !dbg !1048
  %51 = load %struct.global_State** %g, align 4, !dbg !1048
  %52 = getelementptr inbounds %struct.global_State* %51, i32 0, i32 5, !dbg !1048
  store i32 %50, i32* %52, align 4, !dbg !1048
  %53 = load i32* %work, align 4, !dbg !1049
  store i32 %53, i32* %1, !dbg !1049
  br label %115, !dbg !1049

; <label>:54                                      ; preds = %0
  %55 = load %struct.lua_State** %2, align 4, !dbg !1050
  %56 = load %struct.global_State** %g, align 4, !dbg !1050
  %57 = load %struct.global_State** %g, align 4, !dbg !1050
  %58 = getelementptr inbounds %struct.global_State* %57, i32 0, i32 15, !dbg !1050
  %59 = call i32 @sweepstep(%struct.lua_State* %55, %struct.global_State* %56, i32 3, %struct.GCObject** %58), !dbg !1050
  store i32 %59, i32* %1, !dbg !1050
  br label %115, !dbg !1050

; <label>:60                                      ; preds = %0
  %61 = load %struct.lua_State** %2, align 4, !dbg !1052
  %62 = load %struct.global_State** %g, align 4, !dbg !1052
  %63 = load %struct.global_State** %g, align 4, !dbg !1052
  %64 = getelementptr inbounds %struct.global_State* %63, i32 0, i32 21, !dbg !1052
  %65 = call i32 @sweepstep(%struct.lua_State* %61, %struct.global_State* %62, i32 4, %struct.GCObject** %64), !dbg !1052
  store i32 %65, i32* %1, !dbg !1052
  br label %115, !dbg !1052

; <label>:66                                      ; preds = %0
  %67 = load %struct.lua_State** %2, align 4, !dbg !1054
  %68 = load %struct.global_State** %g, align 4, !dbg !1054
  %69 = call i32 @sweepstep(%struct.lua_State* %67, %struct.global_State* %68, i32 5, %struct.GCObject** null), !dbg !1054
  store i32 %69, i32* %1, !dbg !1054
  br label %115, !dbg !1054

; <label>:70                                      ; preds = %0
  %71 = load %struct.global_State** %g, align 4, !dbg !1056
  %72 = getelementptr inbounds %struct.global_State* %71, i32 0, i32 28, !dbg !1056
  %73 = load %struct.lua_State** %72, align 4, !dbg !1056
  %74 = getelementptr inbounds %struct.lua_State* %73, i32 0, i32 2, !dbg !1056
  %75 = load i8* %74, align 1, !dbg !1056
  %76 = zext i8 %75 to i32, !dbg !1056
  %77 = and i32 %76, -8, !dbg !1056
  %78 = load %struct.global_State** %g, align 4, !dbg !1056
  %79 = getelementptr inbounds %struct.global_State* %78, i32 0, i32 9, !dbg !1056
  %80 = load i8* %79, align 1, !dbg !1056
  %81 = zext i8 %80 to i32, !dbg !1056
  %82 = and i32 %81, 3, !dbg !1056
  %83 = trunc i32 %82 to i8, !dbg !1056
  %84 = zext i8 %83 to i32, !dbg !1056
  %85 = or i32 %77, %84, !dbg !1056
  %86 = trunc i32 %85 to i8, !dbg !1056
  %87 = load %struct.global_State** %g, align 4, !dbg !1056
  %88 = getelementptr inbounds %struct.global_State* %87, i32 0, i32 28, !dbg !1056
  %89 = load %struct.lua_State** %88, align 4, !dbg !1056
  %90 = getelementptr inbounds %struct.lua_State* %89, i32 0, i32 2, !dbg !1056
  store i8 %86, i8* %90, align 1, !dbg !1056
  %91 = load %struct.lua_State** %2, align 4, !dbg !1058
  %92 = load %struct.global_State** %g, align 4, !dbg !1058
  call void @checkSizes(%struct.lua_State* %91, %struct.global_State* %92), !dbg !1058
  %93 = load %struct.global_State** %g, align 4, !dbg !1059
  %94 = getelementptr inbounds %struct.global_State* %93, i32 0, i32 10, !dbg !1059
  store i8 6, i8* %94, align 1, !dbg !1059
  store i32 0, i32* %1, !dbg !1060
  br label %115, !dbg !1060

; <label>:95                                      ; preds = %0
  %96 = load %struct.global_State** %g, align 4, !dbg !1061
  %97 = getelementptr inbounds %struct.global_State* %96, i32 0, i32 21, !dbg !1061
  %98 = load %struct.GCObject** %97, align 4, !dbg !1061
  %99 = icmp ne %struct.GCObject* %98, null, !dbg !1061
  br i1 %99, label %100, label %111, !dbg !1061

; <label>:100                                     ; preds = %95
  %101 = load %struct.global_State** %g, align 4, !dbg !1064
  %102 = getelementptr inbounds %struct.global_State* %101, i32 0, i32 11, !dbg !1064
  %103 = load i8* %102, align 1, !dbg !1064
  %104 = zext i8 %103 to i32, !dbg !1064
  %105 = icmp ne i32 %104, 1, !dbg !1064
  br i1 %105, label %106, label %111, !dbg !1064

; <label>:106                                     ; preds = %100
  call void @llvm.dbg.declare(metadata !{i32* %n}, metadata !1066), !dbg !1068
  %107 = load %struct.lua_State** %2, align 4, !dbg !1069
  %108 = call i32 @runafewfinalizers(%struct.lua_State* %107), !dbg !1069
  store i32 %108, i32* %n, align 4, !dbg !1069
  %109 = load i32* %n, align 4, !dbg !1070
  %110 = mul i32 %109, 5, !dbg !1070
  store i32 %110, i32* %1, !dbg !1070
  br label %115, !dbg !1070

; <label>:111                                     ; preds = %100, %95
  %112 = load %struct.global_State** %g, align 4, !dbg !1071
  %113 = getelementptr inbounds %struct.global_State* %112, i32 0, i32 10, !dbg !1071
  store i8 7, i8* %113, align 1, !dbg !1071
  store i32 0, i32* %1, !dbg !1073
  br label %115, !dbg !1073

; <label>:114                                     ; preds = %0
  store i32 0, i32* %1, !dbg !1074
  br label %115, !dbg !1074

; <label>:115                                     ; preds = %114, %111, %106, %70, %66, %60, %54, %39, %35, %10
  %116 = load i32* %1, !dbg !1075
  ret i32 %116, !dbg !1075
}

; Function Attrs: nounwind
define hidden void @luaC_step(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %g = alloca %struct.global_State*, align 4
  %debt = alloca i32, align 4
  %work = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !1076), !dbg !1077
  call void @llvm.dbg.declare(metadata !{%struct.global_State** %g}, metadata !1078), !dbg !1079
  %2 = load %struct.lua_State** %1, align 4, !dbg !1080
  %3 = getelementptr inbounds %struct.lua_State* %2, i32 0, i32 6, !dbg !1080
  %4 = load %struct.global_State** %3, align 4, !dbg !1080
  store %struct.global_State* %4, %struct.global_State** %g, align 4, !dbg !1080
  call void @llvm.dbg.declare(metadata !{i32* %debt}, metadata !1081), !dbg !1082
  %5 = load %struct.global_State** %g, align 4, !dbg !1083
  %6 = call i32 @getdebt(%struct.global_State* %5), !dbg !1083
  store i32 %6, i32* %debt, align 4, !dbg !1083
  %7 = load %struct.global_State** %g, align 4, !dbg !1084
  %8 = getelementptr inbounds %struct.global_State* %7, i32 0, i32 12, !dbg !1084
  %9 = load i8* %8, align 1, !dbg !1084
  %10 = icmp ne i8 %9, 0, !dbg !1084
  br i1 %10, label %13, label %11, !dbg !1084

; <label>:11                                      ; preds = %0
  %12 = load %struct.global_State** %g, align 4, !dbg !1086
  call void @luaE_setdebt(%struct.global_State* %12, i32 -16000), !dbg !1086
  br label %50, !dbg !1088

; <label>:13                                      ; preds = %0
  br label %14, !dbg !1089

; <label>:14                                      ; preds = %29, %13
  call void @llvm.dbg.declare(metadata !{i32* %work}, metadata !1090), !dbg !1092
  %15 = load %struct.lua_State** %1, align 4, !dbg !1093
  %16 = call i32 @singlestep(%struct.lua_State* %15), !dbg !1093
  store i32 %16, i32* %work, align 4, !dbg !1093
  %17 = load i32* %work, align 4, !dbg !1094
  %18 = load i32* %debt, align 4, !dbg !1094
  %19 = sub i32 %18, %17, !dbg !1094
  store i32 %19, i32* %debt, align 4, !dbg !1094
  br label %20, !dbg !1095

; <label>:20                                      ; preds = %14
  %21 = load i32* %debt, align 4, !dbg !1096
  %22 = icmp sgt i32 %21, -1600, !dbg !1096
  br i1 %22, label %23, label %29, !dbg !1096

; <label>:23                                      ; preds = %20
  %24 = load %struct.global_State** %g, align 4, !dbg !1098
  %25 = getelementptr inbounds %struct.global_State* %24, i32 0, i32 10, !dbg !1098
  %26 = load i8* %25, align 1, !dbg !1098
  %27 = zext i8 %26 to i32, !dbg !1098
  %28 = icmp ne i32 %27, 7, !dbg !1098
  br label %29

; <label>:29                                      ; preds = %23, %20
  %30 = phi i1 [ false, %20 ], [ %28, %23 ]
  br i1 %30, label %14, label %31, !dbg !1100

; <label>:31                                      ; preds = %29
  %32 = load %struct.global_State** %g, align 4, !dbg !1102
  %33 = getelementptr inbounds %struct.global_State* %32, i32 0, i32 10, !dbg !1102
  %34 = load i8* %33, align 1, !dbg !1102
  %35 = zext i8 %34 to i32, !dbg !1102
  %36 = icmp eq i32 %35, 7, !dbg !1102
  br i1 %36, label %37, label %39, !dbg !1102

; <label>:37                                      ; preds = %31
  %38 = load %struct.global_State** %g, align 4, !dbg !1104
  call void @setpause(%struct.global_State* %38), !dbg !1104
  br label %50, !dbg !1104

; <label>:39                                      ; preds = %31
  %40 = load i32* %debt, align 4, !dbg !1105
  %41 = load %struct.global_State** %g, align 4, !dbg !1105
  %42 = getelementptr inbounds %struct.global_State* %41, i32 0, i32 26, !dbg !1105
  %43 = load i32* %42, align 4, !dbg !1105
  %44 = sdiv i32 %40, %43, !dbg !1105
  %45 = mul nsw i32 %44, 200, !dbg !1105
  store i32 %45, i32* %debt, align 4, !dbg !1105
  %46 = load %struct.global_State** %g, align 4, !dbg !1107
  %47 = load i32* %debt, align 4, !dbg !1107
  call void @luaE_setdebt(%struct.global_State* %46, i32 %47), !dbg !1107
  %48 = load %struct.lua_State** %1, align 4, !dbg !1108
  %49 = call i32 @runafewfinalizers(%struct.lua_State* %48), !dbg !1108
  br label %50

; <label>:50                                      ; preds = %11, %39, %37
  ret void, !dbg !1109
}

; Function Attrs: nounwind
define internal i32 @getdebt(%struct.global_State* %g) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.global_State*, align 4
  %debt = alloca i32, align 4
  %stepmul = alloca i32, align 4
  store %struct.global_State* %g, %struct.global_State** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.global_State** %2}, metadata !1110), !dbg !1111
  call void @llvm.dbg.declare(metadata !{i32* %debt}, metadata !1112), !dbg !1113
  %3 = load %struct.global_State** %2, align 4, !dbg !1114
  %4 = getelementptr inbounds %struct.global_State* %3, i32 0, i32 3, !dbg !1114
  %5 = load i32* %4, align 4, !dbg !1114
  store i32 %5, i32* %debt, align 4, !dbg !1114
  call void @llvm.dbg.declare(metadata !{i32* %stepmul}, metadata !1115), !dbg !1116
  %6 = load %struct.global_State** %2, align 4, !dbg !1117
  %7 = getelementptr inbounds %struct.global_State* %6, i32 0, i32 26, !dbg !1117
  %8 = load i32* %7, align 4, !dbg !1117
  store i32 %8, i32* %stepmul, align 4, !dbg !1117
  %9 = load i32* %debt, align 4, !dbg !1118
  %10 = icmp sle i32 %9, 0, !dbg !1118
  br i1 %10, label %11, label %12, !dbg !1118

; <label>:11                                      ; preds = %0
  store i32 0, i32* %1, !dbg !1120
  br label %28, !dbg !1120

; <label>:12                                      ; preds = %0
  %13 = load i32* %debt, align 4, !dbg !1122
  %14 = sdiv i32 %13, 200, !dbg !1122
  %15 = add nsw i32 %14, 1, !dbg !1122
  store i32 %15, i32* %debt, align 4, !dbg !1122
  %16 = load i32* %debt, align 4, !dbg !1124
  %17 = load i32* %stepmul, align 4, !dbg !1124
  %18 = sdiv i32 2147483647, %17, !dbg !1124
  %19 = icmp slt i32 %16, %18, !dbg !1124
  br i1 %19, label %20, label %24, !dbg !1124

; <label>:20                                      ; preds = %12
  %21 = load i32* %debt, align 4, !dbg !1125
  %22 = load i32* %stepmul, align 4, !dbg !1125
  %23 = mul nsw i32 %21, %22, !dbg !1125
  br label %25, !dbg !1125

; <label>:24                                      ; preds = %12
  br label %25, !dbg !1127

; <label>:25                                      ; preds = %24, %20
  %26 = phi i32 [ %23, %20 ], [ 2147483647, %24 ], !dbg !1124
  store i32 %26, i32* %debt, align 4, !dbg !1129
  %27 = load i32* %debt, align 4, !dbg !1132
  store i32 %27, i32* %1, !dbg !1132
  br label %28, !dbg !1132

; <label>:28                                      ; preds = %25, %11
  %29 = load i32* %1, !dbg !1133
  ret i32 %29, !dbg !1133
}

declare hidden void @luaE_setdebt(%struct.global_State*, i32) #2

; Function Attrs: nounwind
define internal void @setpause(%struct.global_State* %g) #0 {
  %1 = alloca %struct.global_State*, align 4
  %threshold = alloca i32, align 4
  %debt = alloca i32, align 4
  %estimate = alloca i32, align 4
  store %struct.global_State* %g, %struct.global_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.global_State** %1}, metadata !1134), !dbg !1135
  call void @llvm.dbg.declare(metadata !{i32* %threshold}, metadata !1136), !dbg !1137
  call void @llvm.dbg.declare(metadata !{i32* %debt}, metadata !1138), !dbg !1139
  call void @llvm.dbg.declare(metadata !{i32* %estimate}, metadata !1140), !dbg !1141
  %2 = load %struct.global_State** %1, align 4, !dbg !1142
  %3 = getelementptr inbounds %struct.global_State* %2, i32 0, i32 5, !dbg !1142
  %4 = load i32* %3, align 4, !dbg !1142
  %5 = udiv i32 %4, 100, !dbg !1142
  store i32 %5, i32* %estimate, align 4, !dbg !1142
  %6 = load %struct.global_State** %1, align 4, !dbg !1143
  %7 = getelementptr inbounds %struct.global_State* %6, i32 0, i32 25, !dbg !1143
  %8 = load i32* %7, align 4, !dbg !1143
  %9 = load i32* %estimate, align 4, !dbg !1143
  %10 = sdiv i32 2147483647, %9, !dbg !1143
  %11 = icmp slt i32 %8, %10, !dbg !1143
  br i1 %11, label %12, label %18, !dbg !1143

; <label>:12                                      ; preds = %0
  %13 = load i32* %estimate, align 4, !dbg !1144
  %14 = load %struct.global_State** %1, align 4, !dbg !1144
  %15 = getelementptr inbounds %struct.global_State* %14, i32 0, i32 25, !dbg !1144
  %16 = load i32* %15, align 4, !dbg !1144
  %17 = mul nsw i32 %13, %16, !dbg !1144
  br label %19, !dbg !1144

; <label>:18                                      ; preds = %0
  br label %19, !dbg !1146

; <label>:19                                      ; preds = %18, %12
  %20 = phi i32 [ %17, %12 ], [ 2147483647, %18 ], !dbg !1143
  store i32 %20, i32* %threshold, align 4, !dbg !1148
  %21 = load %struct.global_State** %1, align 4, !dbg !1151
  %22 = getelementptr inbounds %struct.global_State* %21, i32 0, i32 2, !dbg !1151
  %23 = load i32* %22, align 4, !dbg !1151
  %24 = load %struct.global_State** %1, align 4, !dbg !1151
  %25 = getelementptr inbounds %struct.global_State* %24, i32 0, i32 3, !dbg !1151
  %26 = load i32* %25, align 4, !dbg !1151
  %27 = add nsw i32 %23, %26, !dbg !1151
  %28 = load i32* %threshold, align 4, !dbg !1151
  %29 = sub i32 %27, %28, !dbg !1151
  store i32 %29, i32* %debt, align 4, !dbg !1151
  %30 = load %struct.global_State** %1, align 4, !dbg !1152
  %31 = load i32* %debt, align 4, !dbg !1152
  call void @luaE_setdebt(%struct.global_State* %30, i32 %31), !dbg !1152
  ret void, !dbg !1153
}

; Function Attrs: nounwind
define internal i32 @runafewfinalizers(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %g = alloca %struct.global_State*, align 4
  %i = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !1154), !dbg !1155
  call void @llvm.dbg.declare(metadata !{%struct.global_State** %g}, metadata !1156), !dbg !1157
  %2 = load %struct.lua_State** %1, align 4, !dbg !1158
  %3 = getelementptr inbounds %struct.lua_State* %2, i32 0, i32 6, !dbg !1158
  %4 = load %struct.global_State** %3, align 4, !dbg !1158
  store %struct.global_State* %4, %struct.global_State** %g, align 4, !dbg !1158
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !1159), !dbg !1160
  store i32 0, i32* %i, align 4, !dbg !1161
  br label %5, !dbg !1161

; <label>:5                                       ; preds = %20, %0
  %6 = load %struct.global_State** %g, align 4, !dbg !1163
  %7 = getelementptr inbounds %struct.global_State* %6, i32 0, i32 21, !dbg !1163
  %8 = load %struct.GCObject** %7, align 4, !dbg !1163
  %9 = icmp ne %struct.GCObject* %8, null, !dbg !1163
  br i1 %9, label %10, label %16, !dbg !1163

; <label>:10                                      ; preds = %5
  %11 = load i32* %i, align 4, !dbg !1166
  %12 = load %struct.global_State** %g, align 4, !dbg !1166
  %13 = getelementptr inbounds %struct.global_State* %12, i32 0, i32 24, !dbg !1166
  %14 = load i32* %13, align 4, !dbg !1166
  %15 = icmp ult i32 %11, %14, !dbg !1166
  br label %16

; <label>:16                                      ; preds = %10, %5
  %17 = phi i1 [ false, %5 ], [ %15, %10 ]
  br i1 %17, label %18, label %23, !dbg !1168

; <label>:18                                      ; preds = %16
  %19 = load %struct.lua_State** %1, align 4, !dbg !1170
  call void @GCTM(%struct.lua_State* %19, i32 1), !dbg !1170
  br label %20, !dbg !1170

; <label>:20                                      ; preds = %18
  %21 = load i32* %i, align 4, !dbg !1171
  %22 = add i32 %21, 1, !dbg !1171
  store i32 %22, i32* %i, align 4, !dbg !1171
  br label %5, !dbg !1171

; <label>:23                                      ; preds = %16
  %24 = load %struct.global_State** %g, align 4, !dbg !1172
  %25 = getelementptr inbounds %struct.global_State* %24, i32 0, i32 21, !dbg !1172
  %26 = load %struct.GCObject** %25, align 4, !dbg !1172
  %27 = icmp ne %struct.GCObject* %26, null, !dbg !1172
  br i1 %27, label %29, label %28, !dbg !1172

; <label>:28                                      ; preds = %23
  br label %34, !dbg !1173

; <label>:29                                      ; preds = %23
  %30 = load %struct.global_State** %g, align 4, !dbg !1175
  %31 = getelementptr inbounds %struct.global_State* %30, i32 0, i32 24, !dbg !1175
  %32 = load i32* %31, align 4, !dbg !1175
  %33 = mul i32 %32, 2, !dbg !1175
  br label %34, !dbg !1175

; <label>:34                                      ; preds = %29, %28
  %35 = phi i32 [ 0, %28 ], [ %33, %29 ], !dbg !1172
  %36 = load %struct.global_State** %g, align 4, !dbg !1177
  %37 = getelementptr inbounds %struct.global_State* %36, i32 0, i32 24, !dbg !1177
  store i32 %35, i32* %37, align 4, !dbg !1177
  %38 = load i32* %i, align 4, !dbg !1180
  ret i32 %38, !dbg !1180
}

; Function Attrs: nounwind
define hidden void @luaC_fullgc(%struct.lua_State* %L, i32 %isemergency) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca i32, align 4
  %g = alloca %struct.global_State*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !1181), !dbg !1182
  store i32 %isemergency, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !1183), !dbg !1184
  call void @llvm.dbg.declare(metadata !{%struct.global_State** %g}, metadata !1185), !dbg !1186
  %3 = load %struct.lua_State** %1, align 4, !dbg !1187
  %4 = getelementptr inbounds %struct.lua_State* %3, i32 0, i32 6, !dbg !1187
  %5 = load %struct.global_State** %4, align 4, !dbg !1187
  store %struct.global_State* %5, %struct.global_State** %g, align 4, !dbg !1187
  %6 = load i32* %2, align 4, !dbg !1188
  %7 = icmp ne i32 %6, 0, !dbg !1188
  br i1 %7, label %8, label %11, !dbg !1188

; <label>:8                                       ; preds = %0
  %9 = load %struct.global_State** %g, align 4, !dbg !1190
  %10 = getelementptr inbounds %struct.global_State* %9, i32 0, i32 11, !dbg !1190
  store i8 1, i8* %10, align 1, !dbg !1190
  br label %11, !dbg !1190

; <label>:11                                      ; preds = %8, %0
  %12 = load %struct.global_State** %g, align 4, !dbg !1192
  %13 = getelementptr inbounds %struct.global_State* %12, i32 0, i32 10, !dbg !1192
  %14 = load i8* %13, align 1, !dbg !1192
  %15 = zext i8 %14 to i32, !dbg !1192
  %16 = icmp sle i32 %15, 1, !dbg !1192
  br i1 %16, label %17, label %19, !dbg !1192

; <label>:17                                      ; preds = %11
  %18 = load %struct.lua_State** %1, align 4, !dbg !1194
  call void @entersweep(%struct.lua_State* %18), !dbg !1194
  br label %19, !dbg !1196

; <label>:19                                      ; preds = %17, %11
  %20 = load %struct.lua_State** %1, align 4, !dbg !1197
  call void @luaC_runtilstate(%struct.lua_State* %20, i32 128), !dbg !1197
  %21 = load %struct.lua_State** %1, align 4, !dbg !1198
  call void @luaC_runtilstate(%struct.lua_State* %21, i32 -129), !dbg !1198
  %22 = load %struct.lua_State** %1, align 4, !dbg !1199
  call void @luaC_runtilstate(%struct.lua_State* %22, i32 64), !dbg !1199
  %23 = load %struct.lua_State** %1, align 4, !dbg !1200
  call void @luaC_runtilstate(%struct.lua_State* %23, i32 128), !dbg !1200
  %24 = load %struct.global_State** %g, align 4, !dbg !1201
  %25 = getelementptr inbounds %struct.global_State* %24, i32 0, i32 11, !dbg !1201
  store i8 0, i8* %25, align 1, !dbg !1201
  %26 = load %struct.global_State** %g, align 4, !dbg !1202
  call void @setpause(%struct.global_State* %26), !dbg !1202
  ret void, !dbg !1203
}

; Function Attrs: nounwind
define internal void @entersweep(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %g = alloca %struct.global_State*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !1204), !dbg !1205
  call void @llvm.dbg.declare(metadata !{%struct.global_State** %g}, metadata !1206), !dbg !1207
  %2 = load %struct.lua_State** %1, align 4, !dbg !1208
  %3 = getelementptr inbounds %struct.lua_State* %2, i32 0, i32 6, !dbg !1208
  %4 = load %struct.global_State** %3, align 4, !dbg !1208
  store %struct.global_State* %4, %struct.global_State** %g, align 4, !dbg !1208
  %5 = load %struct.global_State** %g, align 4, !dbg !1209
  %6 = getelementptr inbounds %struct.global_State* %5, i32 0, i32 10, !dbg !1209
  store i8 2, i8* %6, align 1, !dbg !1209
  %7 = load %struct.lua_State** %1, align 4, !dbg !1210
  %8 = load %struct.global_State** %g, align 4, !dbg !1210
  %9 = getelementptr inbounds %struct.global_State* %8, i32 0, i32 13, !dbg !1210
  %10 = call %struct.GCObject** @sweeplist(%struct.lua_State* %7, %struct.GCObject** %9, i32 1), !dbg !1210
  %11 = load %struct.global_State** %g, align 4, !dbg !1210
  %12 = getelementptr inbounds %struct.global_State* %11, i32 0, i32 14, !dbg !1210
  store %struct.GCObject** %10, %struct.GCObject*** %12, align 4, !dbg !1210
  ret void, !dbg !1211
}

; Function Attrs: nounwind
define internal void @GCTM(%struct.lua_State* %L, i32 %propagateerrors) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca i32, align 4
  %g = alloca %struct.global_State*, align 4
  %tm = alloca %struct.lua_TValue*, align 4
  %v = alloca %struct.lua_TValue, align 8
  %io = alloca %struct.lua_TValue*, align 4
  %i_g = alloca %struct.GCObject*, align 4
  %status = alloca i32, align 4
  %oldah = alloca i8, align 1
  %running = alloca i32, align 4
  %io1 = alloca %struct.lua_TValue*, align 4
  %io11 = alloca %struct.lua_TValue*, align 4
  %msg = alloca i8*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !1212), !dbg !1213
  store i32 %propagateerrors, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !1214), !dbg !1215
  call void @llvm.dbg.declare(metadata !{%struct.global_State** %g}, metadata !1216), !dbg !1217
  %3 = load %struct.lua_State** %1, align 4, !dbg !1218
  %4 = getelementptr inbounds %struct.lua_State* %3, i32 0, i32 6, !dbg !1218
  %5 = load %struct.global_State** %4, align 4, !dbg !1218
  store %struct.global_State* %5, %struct.global_State** %g, align 4, !dbg !1218
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %tm}, metadata !1219), !dbg !1220
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue* %v}, metadata !1221), !dbg !1222
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %io}, metadata !1223), !dbg !1225
  store %struct.lua_TValue* %v, %struct.lua_TValue** %io, align 4, !dbg !1225
  call void @llvm.dbg.declare(metadata !{%struct.GCObject** %i_g}, metadata !1226), !dbg !1225
  %6 = load %struct.global_State** %g, align 4, !dbg !1225
  %7 = call %struct.GCObject* @udata2finalize(%struct.global_State* %6), !dbg !1225
  store %struct.GCObject* %7, %struct.GCObject** %i_g, align 4, !dbg !1225
  %8 = load %struct.GCObject** %i_g, align 4, !dbg !1225
  %9 = load %struct.lua_TValue** %io, align 4, !dbg !1225
  %10 = getelementptr inbounds %struct.lua_TValue* %9, i32 0, i32 0, !dbg !1225
  %11 = bitcast %union.Value* %10 to %struct.GCObject**, !dbg !1225
  store %struct.GCObject* %8, %struct.GCObject** %11, align 4, !dbg !1225
  %12 = load %struct.GCObject** %i_g, align 4, !dbg !1225
  %13 = getelementptr inbounds %struct.GCObject* %12, i32 0, i32 1, !dbg !1225
  %14 = load i8* %13, align 1, !dbg !1225
  %15 = zext i8 %14 to i32, !dbg !1225
  %16 = or i32 %15, 64, !dbg !1225
  %17 = load %struct.lua_TValue** %io, align 4, !dbg !1225
  %18 = getelementptr inbounds %struct.lua_TValue* %17, i32 0, i32 1, !dbg !1225
  store i32 %16, i32* %18, align 4, !dbg !1225
  %19 = load %struct.lua_State** %1, align 4, !dbg !1227
  %20 = call %struct.lua_TValue* @luaT_gettmbyobj(%struct.lua_State* %19, %struct.lua_TValue* %v, i32 2), !dbg !1227
  store %struct.lua_TValue* %20, %struct.lua_TValue** %tm, align 4, !dbg !1227
  %21 = load %struct.lua_TValue** %tm, align 4, !dbg !1228
  %22 = icmp ne %struct.lua_TValue* %21, null, !dbg !1228
  br i1 %22, label %23, label %121, !dbg !1228

; <label>:23                                      ; preds = %0
  %24 = load %struct.lua_TValue** %tm, align 4, !dbg !1230
  %25 = getelementptr inbounds %struct.lua_TValue* %24, i32 0, i32 1, !dbg !1230
  %26 = load i32* %25, align 4, !dbg !1230
  %27 = and i32 %26, 15, !dbg !1230
  %28 = icmp eq i32 %27, 6, !dbg !1230
  br i1 %28, label %29, label %121, !dbg !1230

; <label>:29                                      ; preds = %23
  call void @llvm.dbg.declare(metadata !{i32* %status}, metadata !1232), !dbg !1234
  call void @llvm.dbg.declare(metadata !{i8* %oldah}, metadata !1235), !dbg !1236
  %30 = load %struct.lua_State** %1, align 4, !dbg !1237
  %31 = getelementptr inbounds %struct.lua_State* %30, i32 0, i32 24, !dbg !1237
  %32 = load i8* %31, align 1, !dbg !1237
  store i8 %32, i8* %oldah, align 1, !dbg !1237
  call void @llvm.dbg.declare(metadata !{i32* %running}, metadata !1238), !dbg !1239
  %33 = load %struct.global_State** %g, align 4, !dbg !1240
  %34 = getelementptr inbounds %struct.global_State* %33, i32 0, i32 12, !dbg !1240
  %35 = load i8* %34, align 1, !dbg !1240
  %36 = zext i8 %35 to i32, !dbg !1240
  store i32 %36, i32* %running, align 4, !dbg !1240
  %37 = load %struct.lua_State** %1, align 4, !dbg !1241
  %38 = getelementptr inbounds %struct.lua_State* %37, i32 0, i32 24, !dbg !1241
  store i8 0, i8* %38, align 1, !dbg !1241
  %39 = load %struct.global_State** %g, align 4, !dbg !1242
  %40 = getelementptr inbounds %struct.global_State* %39, i32 0, i32 12, !dbg !1242
  store i8 0, i8* %40, align 1, !dbg !1242
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %io1}, metadata !1243), !dbg !1245
  %41 = load %struct.lua_State** %1, align 4, !dbg !1245
  %42 = getelementptr inbounds %struct.lua_State* %41, i32 0, i32 5, !dbg !1245
  %43 = load %struct.lua_TValue** %42, align 4, !dbg !1245
  store %struct.lua_TValue* %43, %struct.lua_TValue** %io1, align 4, !dbg !1245
  %44 = load %struct.lua_TValue** %io1, align 4, !dbg !1245
  %45 = load %struct.lua_TValue** %tm, align 4, !dbg !1245
  %46 = bitcast %struct.lua_TValue* %44 to i8*, !dbg !1245
  %47 = bitcast %struct.lua_TValue* %45 to i8*, !dbg !1245
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %46, i8* %47, i32 16, i32 8, i1 false), !dbg !1245
  %48 = load %struct.lua_State** %1, align 4, !dbg !1245
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %io11}, metadata !1246), !dbg !1248
  %49 = load %struct.lua_State** %1, align 4, !dbg !1248
  %50 = getelementptr inbounds %struct.lua_State* %49, i32 0, i32 5, !dbg !1248
  %51 = load %struct.lua_TValue** %50, align 4, !dbg !1248
  %52 = getelementptr inbounds %struct.lua_TValue* %51, i32 1, !dbg !1248
  store %struct.lua_TValue* %52, %struct.lua_TValue** %io11, align 4, !dbg !1248
  %53 = load %struct.lua_TValue** %io11, align 4, !dbg !1248
  %54 = bitcast %struct.lua_TValue* %53 to i8*, !dbg !1248
  %55 = bitcast %struct.lua_TValue* %v to i8*, !dbg !1248
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %54, i8* %55, i32 16, i32 8, i1 false), !dbg !1248
  %56 = load %struct.lua_State** %1, align 4, !dbg !1248
  %57 = load %struct.lua_State** %1, align 4, !dbg !1249
  %58 = getelementptr inbounds %struct.lua_State* %57, i32 0, i32 5, !dbg !1249
  %59 = load %struct.lua_TValue** %58, align 4, !dbg !1249
  %60 = getelementptr inbounds %struct.lua_TValue* %59, i32 2, !dbg !1249
  store %struct.lua_TValue* %60, %struct.lua_TValue** %58, align 4, !dbg !1249
  %61 = load %struct.lua_State** %1, align 4, !dbg !1250
  %62 = load %struct.lua_State** %1, align 4, !dbg !1250
  %63 = getelementptr inbounds %struct.lua_State* %62, i32 0, i32 5, !dbg !1250
  %64 = load %struct.lua_TValue** %63, align 4, !dbg !1250
  %65 = getelementptr inbounds %struct.lua_TValue* %64, i32 -2, !dbg !1250
  %66 = bitcast %struct.lua_TValue* %65 to i8*, !dbg !1250
  %67 = load %struct.lua_State** %1, align 4, !dbg !1250
  %68 = getelementptr inbounds %struct.lua_State* %67, i32 0, i32 10, !dbg !1250
  %69 = load %struct.lua_TValue** %68, align 4, !dbg !1250
  %70 = bitcast %struct.lua_TValue* %69 to i8*, !dbg !1250
  %71 = ptrtoint i8* %66 to i32, !dbg !1250
  %72 = ptrtoint i8* %70 to i32, !dbg !1250
  %73 = sub i32 %71, %72, !dbg !1250
  %74 = call i32 @luaD_pcall(%struct.lua_State* %61, void (%struct.lua_State*, i8*)* @dothecall, i8* null, i32 %73, i32 0), !dbg !1250
  store i32 %74, i32* %status, align 4, !dbg !1250
  %75 = load i8* %oldah, align 1, !dbg !1251
  %76 = load %struct.lua_State** %1, align 4, !dbg !1251
  %77 = getelementptr inbounds %struct.lua_State* %76, i32 0, i32 24, !dbg !1251
  store i8 %75, i8* %77, align 1, !dbg !1251
  %78 = load i32* %running, align 4, !dbg !1252
  %79 = trunc i32 %78 to i8, !dbg !1252
  %80 = load %struct.global_State** %g, align 4, !dbg !1252
  %81 = getelementptr inbounds %struct.global_State* %80, i32 0, i32 12, !dbg !1252
  store i8 %79, i8* %81, align 1, !dbg !1252
  %82 = load i32* %status, align 4, !dbg !1253
  %83 = icmp ne i32 %82, 0, !dbg !1253
  br i1 %83, label %84, label %120, !dbg !1253

; <label>:84                                      ; preds = %29
  %85 = load i32* %2, align 4, !dbg !1255
  %86 = icmp ne i32 %85, 0, !dbg !1255
  br i1 %86, label %87, label %120, !dbg !1255

; <label>:87                                      ; preds = %84
  %88 = load i32* %status, align 4, !dbg !1257
  %89 = icmp eq i32 %88, 2, !dbg !1257
  br i1 %89, label %90, label %117, !dbg !1257

; <label>:90                                      ; preds = %87
  call void @llvm.dbg.declare(metadata !{i8** %msg}, metadata !1260), !dbg !1262
  %91 = load %struct.lua_State** %1, align 4, !dbg !1263
  %92 = getelementptr inbounds %struct.lua_State* %91, i32 0, i32 5, !dbg !1263
  %93 = load %struct.lua_TValue** %92, align 4, !dbg !1263
  %94 = getelementptr inbounds %struct.lua_TValue* %93, i32 -1, !dbg !1263
  %95 = getelementptr inbounds %struct.lua_TValue* %94, i32 0, i32 1, !dbg !1263
  %96 = load i32* %95, align 4, !dbg !1263
  %97 = and i32 %96, 15, !dbg !1263
  %98 = icmp eq i32 %97, 4, !dbg !1263
  br i1 %98, label %99, label %111, !dbg !1263

; <label>:99                                      ; preds = %90
  %100 = load %struct.lua_State** %1, align 4, !dbg !1264
  %101 = getelementptr inbounds %struct.lua_State* %100, i32 0, i32 5, !dbg !1264
  %102 = load %struct.lua_TValue** %101, align 4, !dbg !1264
  %103 = getelementptr inbounds %struct.lua_TValue* %102, i32 -1, !dbg !1264
  %104 = getelementptr inbounds %struct.lua_TValue* %103, i32 0, i32 0, !dbg !1264
  %105 = bitcast %union.Value* %104 to %struct.GCObject**, !dbg !1264
  %106 = load %struct.GCObject** %105, align 4, !dbg !1264
  %107 = bitcast %struct.GCObject* %106 to %union.GCUnion*, !dbg !1264
  %108 = bitcast %union.GCUnion* %107 to %struct.TString*, !dbg !1264
  %109 = bitcast %struct.TString* %108 to i8*, !dbg !1264
  %110 = getelementptr inbounds i8* %109, i32 16, !dbg !1264
  br label %112, !dbg !1264

; <label>:111                                     ; preds = %90
  br label %112, !dbg !1266

; <label>:112                                     ; preds = %111, %99
  %113 = phi i8* [ %110, %99 ], [ getelementptr inbounds ([11 x i8]* @.str, i32 0, i32 0), %111 ], !dbg !1263
  store i8* %113, i8** %msg, align 4, !dbg !1268
  %114 = load %struct.lua_State** %1, align 4, !dbg !1271
  %115 = load i8** %msg, align 4, !dbg !1271
  %116 = call i8* (%struct.lua_State*, i8*, ...)* @luaO_pushfstring(%struct.lua_State* %114, i8* getelementptr inbounds ([30 x i8]* @.str1, i32 0, i32 0), i8* %115), !dbg !1271
  store i32 5, i32* %status, align 4, !dbg !1272
  br label %117, !dbg !1273

; <label>:117                                     ; preds = %112, %87
  %118 = load %struct.lua_State** %1, align 4, !dbg !1274
  %119 = load i32* %status, align 4, !dbg !1274
  call void @luaD_throw(%struct.lua_State* %118, i32 %119) #6, !dbg !1274
  unreachable, !dbg !1274

; <label>:120                                     ; preds = %84, %29
  br label %121, !dbg !1275

; <label>:121                                     ; preds = %120, %23, %0
  ret void, !dbg !1276
}

; Function Attrs: nounwind
define internal %struct.GCObject* @udata2finalize(%struct.global_State* %g) #0 {
  %1 = alloca %struct.global_State*, align 4
  %o = alloca %struct.GCObject*, align 4
  store %struct.global_State* %g, %struct.global_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.global_State** %1}, metadata !1277), !dbg !1278
  call void @llvm.dbg.declare(metadata !{%struct.GCObject** %o}, metadata !1279), !dbg !1280
  %2 = load %struct.global_State** %1, align 4, !dbg !1281
  %3 = getelementptr inbounds %struct.global_State* %2, i32 0, i32 21, !dbg !1281
  %4 = load %struct.GCObject** %3, align 4, !dbg !1281
  store %struct.GCObject* %4, %struct.GCObject** %o, align 4, !dbg !1281
  %5 = load %struct.GCObject** %o, align 4, !dbg !1282
  %6 = getelementptr inbounds %struct.GCObject* %5, i32 0, i32 0, !dbg !1282
  %7 = load %struct.GCObject** %6, align 4, !dbg !1282
  %8 = load %struct.global_State** %1, align 4, !dbg !1282
  %9 = getelementptr inbounds %struct.global_State* %8, i32 0, i32 21, !dbg !1282
  store %struct.GCObject* %7, %struct.GCObject** %9, align 4, !dbg !1282
  %10 = load %struct.global_State** %1, align 4, !dbg !1283
  %11 = getelementptr inbounds %struct.global_State* %10, i32 0, i32 13, !dbg !1283
  %12 = load %struct.GCObject** %11, align 4, !dbg !1283
  %13 = load %struct.GCObject** %o, align 4, !dbg !1283
  %14 = getelementptr inbounds %struct.GCObject* %13, i32 0, i32 0, !dbg !1283
  store %struct.GCObject* %12, %struct.GCObject** %14, align 4, !dbg !1283
  %15 = load %struct.GCObject** %o, align 4, !dbg !1284
  %16 = load %struct.global_State** %1, align 4, !dbg !1284
  %17 = getelementptr inbounds %struct.global_State* %16, i32 0, i32 13, !dbg !1284
  store %struct.GCObject* %15, %struct.GCObject** %17, align 4, !dbg !1284
  %18 = load %struct.GCObject** %o, align 4, !dbg !1285
  %19 = getelementptr inbounds %struct.GCObject* %18, i32 0, i32 2, !dbg !1285
  %20 = load i8* %19, align 1, !dbg !1285
  %21 = zext i8 %20 to i32, !dbg !1285
  %22 = and i32 %21, 247, !dbg !1285
  %23 = trunc i32 %22 to i8, !dbg !1285
  store i8 %23, i8* %19, align 1, !dbg !1285
  %24 = load %struct.global_State** %1, align 4, !dbg !1286
  %25 = getelementptr inbounds %struct.global_State* %24, i32 0, i32 10, !dbg !1286
  %26 = load i8* %25, align 1, !dbg !1286
  %27 = zext i8 %26 to i32, !dbg !1286
  %28 = icmp sle i32 2, %27, !dbg !1286
  br i1 %28, label %29, label %52, !dbg !1286

; <label>:29                                      ; preds = %0
  %30 = load %struct.global_State** %1, align 4, !dbg !1288
  %31 = getelementptr inbounds %struct.global_State* %30, i32 0, i32 10, !dbg !1288
  %32 = load i8* %31, align 1, !dbg !1288
  %33 = zext i8 %32 to i32, !dbg !1288
  %34 = icmp sle i32 %33, 5, !dbg !1288
  br i1 %34, label %35, label %52, !dbg !1288

; <label>:35                                      ; preds = %29
  %36 = load %struct.GCObject** %o, align 4, !dbg !1290
  %37 = getelementptr inbounds %struct.GCObject* %36, i32 0, i32 2, !dbg !1290
  %38 = load i8* %37, align 1, !dbg !1290
  %39 = zext i8 %38 to i32, !dbg !1290
  %40 = and i32 %39, -8, !dbg !1290
  %41 = load %struct.global_State** %1, align 4, !dbg !1290
  %42 = getelementptr inbounds %struct.global_State* %41, i32 0, i32 9, !dbg !1290
  %43 = load i8* %42, align 1, !dbg !1290
  %44 = zext i8 %43 to i32, !dbg !1290
  %45 = and i32 %44, 3, !dbg !1290
  %46 = trunc i32 %45 to i8, !dbg !1290
  %47 = zext i8 %46 to i32, !dbg !1290
  %48 = or i32 %40, %47, !dbg !1290
  %49 = trunc i32 %48 to i8, !dbg !1290
  %50 = load %struct.GCObject** %o, align 4, !dbg !1290
  %51 = getelementptr inbounds %struct.GCObject* %50, i32 0, i32 2, !dbg !1290
  store i8 %49, i8* %51, align 1, !dbg !1290
  br label %52, !dbg !1290

; <label>:52                                      ; preds = %35, %29, %0
  %53 = load %struct.GCObject** %o, align 4, !dbg !1291
  ret %struct.GCObject* %53, !dbg !1291
}

declare hidden %struct.lua_TValue* @luaT_gettmbyobj(%struct.lua_State*, %struct.lua_TValue*, i32) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture, i8* nocapture readonly, i32, i32, i1) #3

declare hidden i32 @luaD_pcall(%struct.lua_State*, void (%struct.lua_State*, i8*)*, i8*, i32, i32) #2

; Function Attrs: nounwind
define internal void @dothecall(%struct.lua_State* %L, i8* %ud) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca i8*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !1292), !dbg !1293
  store i8* %ud, i8** %2, align 4
  call void @llvm.dbg.declare(metadata !{i8** %2}, metadata !1294), !dbg !1295
  %3 = load i8** %2, align 4, !dbg !1296
  %4 = load %struct.lua_State** %1, align 4, !dbg !1297
  %5 = load %struct.lua_State** %1, align 4, !dbg !1297
  %6 = getelementptr inbounds %struct.lua_State* %5, i32 0, i32 5, !dbg !1297
  %7 = load %struct.lua_TValue** %6, align 4, !dbg !1297
  %8 = getelementptr inbounds %struct.lua_TValue* %7, i32 -2, !dbg !1297
  call void @luaD_callnoyield(%struct.lua_State* %4, %struct.lua_TValue* %8, i32 0), !dbg !1297
  ret void, !dbg !1298
}

declare hidden i8* @luaO_pushfstring(%struct.lua_State*, i8*, ...) #2

; Function Attrs: noreturn
declare hidden void @luaD_throw(%struct.lua_State*, i32) #4

declare hidden void @luaD_callnoyield(%struct.lua_State*, %struct.lua_TValue*, i32) #2

; Function Attrs: nounwind
define internal void @restartcollection(%struct.global_State* %g) #0 {
  %1 = alloca %struct.global_State*, align 4
  store %struct.global_State* %g, %struct.global_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.global_State** %1}, metadata !1299), !dbg !1300
  %2 = load %struct.global_State** %1, align 4, !dbg !1301
  %3 = getelementptr inbounds %struct.global_State* %2, i32 0, i32 17, !dbg !1301
  store %struct.GCObject* null, %struct.GCObject** %3, align 4, !dbg !1301
  %4 = load %struct.global_State** %1, align 4, !dbg !1301
  %5 = getelementptr inbounds %struct.global_State* %4, i32 0, i32 16, !dbg !1301
  store %struct.GCObject* null, %struct.GCObject** %5, align 4, !dbg !1301
  %6 = load %struct.global_State** %1, align 4, !dbg !1302
  %7 = getelementptr inbounds %struct.global_State* %6, i32 0, i32 19, !dbg !1302
  store %struct.GCObject* null, %struct.GCObject** %7, align 4, !dbg !1302
  %8 = load %struct.global_State** %1, align 4, !dbg !1302
  %9 = getelementptr inbounds %struct.global_State* %8, i32 0, i32 20, !dbg !1302
  store %struct.GCObject* null, %struct.GCObject** %9, align 4, !dbg !1302
  %10 = load %struct.global_State** %1, align 4, !dbg !1302
  %11 = getelementptr inbounds %struct.global_State* %10, i32 0, i32 18, !dbg !1302
  store %struct.GCObject* null, %struct.GCObject** %11, align 4, !dbg !1302
  %12 = load %struct.global_State** %1, align 4, !dbg !1303
  %13 = getelementptr inbounds %struct.global_State* %12, i32 0, i32 28, !dbg !1303
  %14 = load %struct.lua_State** %13, align 4, !dbg !1303
  %15 = getelementptr inbounds %struct.lua_State* %14, i32 0, i32 2, !dbg !1303
  %16 = load i8* %15, align 1, !dbg !1303
  %17 = zext i8 %16 to i32, !dbg !1303
  %18 = and i32 %17, 3, !dbg !1303
  %19 = icmp ne i32 %18, 0, !dbg !1303
  br i1 %19, label %20, label %27, !dbg !1303

; <label>:20                                      ; preds = %0
  %21 = load %struct.global_State** %1, align 4, !dbg !1306
  %22 = load %struct.global_State** %1, align 4, !dbg !1306
  %23 = getelementptr inbounds %struct.global_State* %22, i32 0, i32 28, !dbg !1306
  %24 = load %struct.lua_State** %23, align 4, !dbg !1306
  %25 = bitcast %struct.lua_State* %24 to %union.GCUnion*, !dbg !1306
  %26 = bitcast %union.GCUnion* %25 to %struct.GCObject*, !dbg !1306
  call void @reallymarkobject(%struct.global_State* %21, %struct.GCObject* %26), !dbg !1306
  br label %27, !dbg !1306

; <label>:27                                      ; preds = %20, %0
  %28 = load %struct.global_State** %1, align 4, !dbg !1308
  %29 = getelementptr inbounds %struct.global_State* %28, i32 0, i32 7, !dbg !1308
  %30 = getelementptr inbounds %struct.lua_TValue* %29, i32 0, i32 1, !dbg !1308
  %31 = load i32* %30, align 4, !dbg !1308
  %32 = and i32 %31, 64, !dbg !1308
  %33 = icmp ne i32 %32, 0, !dbg !1308
  br i1 %33, label %34, label %52, !dbg !1308

; <label>:34                                      ; preds = %27
  %35 = load %struct.global_State** %1, align 4, !dbg !1311
  %36 = getelementptr inbounds %struct.global_State* %35, i32 0, i32 7, !dbg !1311
  %37 = getelementptr inbounds %struct.lua_TValue* %36, i32 0, i32 0, !dbg !1311
  %38 = bitcast %union.Value* %37 to %struct.GCObject**, !dbg !1311
  %39 = load %struct.GCObject** %38, align 4, !dbg !1311
  %40 = getelementptr inbounds %struct.GCObject* %39, i32 0, i32 2, !dbg !1311
  %41 = load i8* %40, align 1, !dbg !1311
  %42 = zext i8 %41 to i32, !dbg !1311
  %43 = and i32 %42, 3, !dbg !1311
  %44 = icmp ne i32 %43, 0, !dbg !1311
  br i1 %44, label %45, label %52, !dbg !1311

; <label>:45                                      ; preds = %34
  %46 = load %struct.global_State** %1, align 4, !dbg !1313
  %47 = load %struct.global_State** %1, align 4, !dbg !1313
  %48 = getelementptr inbounds %struct.global_State* %47, i32 0, i32 7, !dbg !1313
  %49 = getelementptr inbounds %struct.lua_TValue* %48, i32 0, i32 0, !dbg !1313
  %50 = bitcast %union.Value* %49 to %struct.GCObject**, !dbg !1313
  %51 = load %struct.GCObject** %50, align 4, !dbg !1313
  call void @reallymarkobject(%struct.global_State* %46, %struct.GCObject* %51), !dbg !1313
  br label %52, !dbg !1313

; <label>:52                                      ; preds = %45, %34, %27
  %53 = load %struct.global_State** %1, align 4, !dbg !1315
  call void @markmt(%struct.global_State* %53), !dbg !1315
  %54 = load %struct.global_State** %1, align 4, !dbg !1316
  call void @markbeingfnz(%struct.global_State* %54), !dbg !1316
  ret void, !dbg !1317
}

; Function Attrs: nounwind
define internal void @propagatemark(%struct.global_State* %g) #0 {
  %1 = alloca %struct.global_State*, align 4
  %size = alloca i32, align 4
  %o = alloca %struct.GCObject*, align 4
  %h = alloca %struct.Table*, align 4
  %cl = alloca %struct.LClosure*, align 4
  %cl1 = alloca %struct.CClosure*, align 4
  %th = alloca %struct.lua_State*, align 4
  %p = alloca %struct.Proto*, align 4
  store %struct.global_State* %g, %struct.global_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.global_State** %1}, metadata !1318), !dbg !1319
  call void @llvm.dbg.declare(metadata !{i32* %size}, metadata !1320), !dbg !1321
  call void @llvm.dbg.declare(metadata !{%struct.GCObject** %o}, metadata !1322), !dbg !1323
  %2 = load %struct.global_State** %1, align 4, !dbg !1324
  %3 = getelementptr inbounds %struct.global_State* %2, i32 0, i32 16, !dbg !1324
  %4 = load %struct.GCObject** %3, align 4, !dbg !1324
  store %struct.GCObject* %4, %struct.GCObject** %o, align 4, !dbg !1324
  %5 = load %struct.GCObject** %o, align 4, !dbg !1325
  %6 = getelementptr inbounds %struct.GCObject* %5, i32 0, i32 2, !dbg !1325
  %7 = load i8* %6, align 1, !dbg !1325
  %8 = zext i8 %7 to i32, !dbg !1325
  %9 = or i32 %8, 4, !dbg !1325
  %10 = trunc i32 %9 to i8, !dbg !1325
  store i8 %10, i8* %6, align 1, !dbg !1325
  %11 = load %struct.GCObject** %o, align 4, !dbg !1326
  %12 = getelementptr inbounds %struct.GCObject* %11, i32 0, i32 1, !dbg !1326
  %13 = load i8* %12, align 1, !dbg !1326
  %14 = zext i8 %13 to i32, !dbg !1326
  switch i32 %14, label %93 [
    i32 5, label %15
    i32 6, label %27
    i32 38, label %40
    i32 8, label %53
    i32 9, label %81
  ], !dbg !1326

; <label>:15                                      ; preds = %0
  call void @llvm.dbg.declare(metadata !{%struct.Table** %h}, metadata !1327), !dbg !1330
  %16 = load %struct.GCObject** %o, align 4, !dbg !1331
  %17 = bitcast %struct.GCObject* %16 to %union.GCUnion*, !dbg !1331
  %18 = bitcast %union.GCUnion* %17 to %struct.Table*, !dbg !1331
  store %struct.Table* %18, %struct.Table** %h, align 4, !dbg !1331
  %19 = load %struct.Table** %h, align 4, !dbg !1332
  %20 = getelementptr inbounds %struct.Table* %19, i32 0, i32 10, !dbg !1332
  %21 = load %struct.GCObject** %20, align 4, !dbg !1332
  %22 = load %struct.global_State** %1, align 4, !dbg !1332
  %23 = getelementptr inbounds %struct.global_State* %22, i32 0, i32 16, !dbg !1332
  store %struct.GCObject* %21, %struct.GCObject** %23, align 4, !dbg !1332
  %24 = load %struct.global_State** %1, align 4, !dbg !1333
  %25 = load %struct.Table** %h, align 4, !dbg !1333
  %26 = call i32 @traversetable(%struct.global_State* %24, %struct.Table* %25), !dbg !1333
  store i32 %26, i32* %size, align 4, !dbg !1333
  br label %94, !dbg !1334

; <label>:27                                      ; preds = %0
  call void @llvm.dbg.declare(metadata !{%struct.LClosure** %cl}, metadata !1335), !dbg !1337
  %28 = load %struct.GCObject** %o, align 4, !dbg !1338
  %29 = bitcast %struct.GCObject* %28 to %union.GCUnion*, !dbg !1338
  %30 = bitcast %union.GCUnion* %29 to %union.Closure*, !dbg !1338
  %31 = bitcast %union.Closure* %30 to %struct.LClosure*, !dbg !1338
  store %struct.LClosure* %31, %struct.LClosure** %cl, align 4, !dbg !1338
  %32 = load %struct.LClosure** %cl, align 4, !dbg !1339
  %33 = getelementptr inbounds %struct.LClosure* %32, i32 0, i32 4, !dbg !1339
  %34 = load %struct.GCObject** %33, align 4, !dbg !1339
  %35 = load %struct.global_State** %1, align 4, !dbg !1339
  %36 = getelementptr inbounds %struct.global_State* %35, i32 0, i32 16, !dbg !1339
  store %struct.GCObject* %34, %struct.GCObject** %36, align 4, !dbg !1339
  %37 = load %struct.global_State** %1, align 4, !dbg !1340
  %38 = load %struct.LClosure** %cl, align 4, !dbg !1340
  %39 = call i32 @traverseLclosure(%struct.global_State* %37, %struct.LClosure* %38), !dbg !1340
  store i32 %39, i32* %size, align 4, !dbg !1340
  br label %94, !dbg !1341

; <label>:40                                      ; preds = %0
  call void @llvm.dbg.declare(metadata !{%struct.CClosure** %cl1}, metadata !1342), !dbg !1344
  %41 = load %struct.GCObject** %o, align 4, !dbg !1345
  %42 = bitcast %struct.GCObject* %41 to %union.GCUnion*, !dbg !1345
  %43 = bitcast %union.GCUnion* %42 to %union.Closure*, !dbg !1345
  %44 = bitcast %union.Closure* %43 to %struct.CClosure*, !dbg !1345
  store %struct.CClosure* %44, %struct.CClosure** %cl1, align 4, !dbg !1345
  %45 = load %struct.CClosure** %cl1, align 4, !dbg !1346
  %46 = getelementptr inbounds %struct.CClosure* %45, i32 0, i32 4, !dbg !1346
  %47 = load %struct.GCObject** %46, align 4, !dbg !1346
  %48 = load %struct.global_State** %1, align 4, !dbg !1346
  %49 = getelementptr inbounds %struct.global_State* %48, i32 0, i32 16, !dbg !1346
  store %struct.GCObject* %47, %struct.GCObject** %49, align 4, !dbg !1346
  %50 = load %struct.global_State** %1, align 4, !dbg !1347
  %51 = load %struct.CClosure** %cl1, align 4, !dbg !1347
  %52 = call i32 @traverseCclosure(%struct.global_State* %50, %struct.CClosure* %51), !dbg !1347
  store i32 %52, i32* %size, align 4, !dbg !1347
  br label %94, !dbg !1348

; <label>:53                                      ; preds = %0
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %th}, metadata !1349), !dbg !1351
  %54 = load %struct.GCObject** %o, align 4, !dbg !1352
  %55 = bitcast %struct.GCObject* %54 to %union.GCUnion*, !dbg !1352
  %56 = bitcast %union.GCUnion* %55 to %struct.lua_State*, !dbg !1352
  store %struct.lua_State* %56, %struct.lua_State** %th, align 4, !dbg !1352
  %57 = load %struct.lua_State** %th, align 4, !dbg !1353
  %58 = getelementptr inbounds %struct.lua_State* %57, i32 0, i32 12, !dbg !1353
  %59 = load %struct.GCObject** %58, align 4, !dbg !1353
  %60 = load %struct.global_State** %1, align 4, !dbg !1353
  %61 = getelementptr inbounds %struct.global_State* %60, i32 0, i32 16, !dbg !1353
  store %struct.GCObject* %59, %struct.GCObject** %61, align 4, !dbg !1353
  %62 = load %struct.global_State** %1, align 4, !dbg !1354
  %63 = getelementptr inbounds %struct.global_State* %62, i32 0, i32 17, !dbg !1354
  %64 = load %struct.GCObject** %63, align 4, !dbg !1354
  %65 = load %struct.lua_State** %th, align 4, !dbg !1354
  %66 = getelementptr inbounds %struct.lua_State* %65, i32 0, i32 12, !dbg !1354
  store %struct.GCObject* %64, %struct.GCObject** %66, align 4, !dbg !1354
  %67 = load %struct.lua_State** %th, align 4, !dbg !1354
  %68 = bitcast %struct.lua_State* %67 to %union.GCUnion*, !dbg !1354
  %69 = bitcast %union.GCUnion* %68 to %struct.GCObject*, !dbg !1354
  %70 = load %struct.global_State** %1, align 4, !dbg !1354
  %71 = getelementptr inbounds %struct.global_State* %70, i32 0, i32 17, !dbg !1354
  store %struct.GCObject* %69, %struct.GCObject** %71, align 4, !dbg !1354
  %72 = load %struct.GCObject** %o, align 4, !dbg !1355
  %73 = getelementptr inbounds %struct.GCObject* %72, i32 0, i32 2, !dbg !1355
  %74 = load i8* %73, align 1, !dbg !1355
  %75 = zext i8 %74 to i32, !dbg !1355
  %76 = and i32 %75, 251, !dbg !1355
  %77 = trunc i32 %76 to i8, !dbg !1355
  store i8 %77, i8* %73, align 1, !dbg !1355
  %78 = load %struct.global_State** %1, align 4, !dbg !1356
  %79 = load %struct.lua_State** %th, align 4, !dbg !1356
  %80 = call i32 @traversethread(%struct.global_State* %78, %struct.lua_State* %79), !dbg !1356
  store i32 %80, i32* %size, align 4, !dbg !1356
  br label %94, !dbg !1357

; <label>:81                                      ; preds = %0
  call void @llvm.dbg.declare(metadata !{%struct.Proto** %p}, metadata !1358), !dbg !1360
  %82 = load %struct.GCObject** %o, align 4, !dbg !1361
  %83 = bitcast %struct.GCObject* %82 to %union.GCUnion*, !dbg !1361
  %84 = bitcast %union.GCUnion* %83 to %struct.Proto*, !dbg !1361
  store %struct.Proto* %84, %struct.Proto** %p, align 4, !dbg !1361
  %85 = load %struct.Proto** %p, align 4, !dbg !1362
  %86 = getelementptr inbounds %struct.Proto* %85, i32 0, i32 22, !dbg !1362
  %87 = load %struct.GCObject** %86, align 4, !dbg !1362
  %88 = load %struct.global_State** %1, align 4, !dbg !1362
  %89 = getelementptr inbounds %struct.global_State* %88, i32 0, i32 16, !dbg !1362
  store %struct.GCObject* %87, %struct.GCObject** %89, align 4, !dbg !1362
  %90 = load %struct.global_State** %1, align 4, !dbg !1363
  %91 = load %struct.Proto** %p, align 4, !dbg !1363
  %92 = call i32 @traverseproto(%struct.global_State* %90, %struct.Proto* %91), !dbg !1363
  store i32 %92, i32* %size, align 4, !dbg !1363
  br label %94, !dbg !1364

; <label>:93                                      ; preds = %0
  br label %100, !dbg !1365

; <label>:94                                      ; preds = %81, %53, %40, %27, %15
  %95 = load i32* %size, align 4, !dbg !1366
  %96 = load %struct.global_State** %1, align 4, !dbg !1366
  %97 = getelementptr inbounds %struct.global_State* %96, i32 0, i32 4, !dbg !1366
  %98 = load i32* %97, align 4, !dbg !1366
  %99 = add i32 %98, %95, !dbg !1366
  store i32 %99, i32* %97, align 4, !dbg !1366
  br label %100, !dbg !1367

; <label>:100                                     ; preds = %94, %93
  ret void, !dbg !1368
}

; Function Attrs: nounwind
define internal void @propagateall(%struct.global_State* %g) #0 {
  %1 = alloca %struct.global_State*, align 4
  store %struct.global_State* %g, %struct.global_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.global_State** %1}, metadata !1370), !dbg !1371
  br label %2, !dbg !1372

; <label>:2                                       ; preds = %7, %0
  %3 = load %struct.global_State** %1, align 4, !dbg !1373
  %4 = getelementptr inbounds %struct.global_State* %3, i32 0, i32 16, !dbg !1373
  %5 = load %struct.GCObject** %4, align 4, !dbg !1373
  %6 = icmp ne %struct.GCObject* %5, null, !dbg !1373
  br i1 %6, label %7, label %9, !dbg !1373

; <label>:7                                       ; preds = %2
  %8 = load %struct.global_State** %1, align 4, !dbg !1376
  call void @propagatemark(%struct.global_State* %8), !dbg !1376
  br label %2, !dbg !1376

; <label>:9                                       ; preds = %2
  ret void, !dbg !1378
}

; Function Attrs: nounwind
define internal i32 @atomic(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %g = alloca %struct.global_State*, align 4
  %work = alloca i32, align 4
  %origweak = alloca %struct.GCObject*, align 4
  %origall = alloca %struct.GCObject*, align 4
  %grayagain = alloca %struct.GCObject*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !1379), !dbg !1380
  call void @llvm.dbg.declare(metadata !{%struct.global_State** %g}, metadata !1381), !dbg !1382
  %2 = load %struct.lua_State** %1, align 4, !dbg !1383
  %3 = getelementptr inbounds %struct.lua_State* %2, i32 0, i32 6, !dbg !1383
  %4 = load %struct.global_State** %3, align 4, !dbg !1383
  store %struct.global_State* %4, %struct.global_State** %g, align 4, !dbg !1383
  call void @llvm.dbg.declare(metadata !{i32* %work}, metadata !1384), !dbg !1385
  call void @llvm.dbg.declare(metadata !{%struct.GCObject** %origweak}, metadata !1386), !dbg !1387
  call void @llvm.dbg.declare(metadata !{%struct.GCObject** %origall}, metadata !1388), !dbg !1389
  call void @llvm.dbg.declare(metadata !{%struct.GCObject** %grayagain}, metadata !1390), !dbg !1391
  %5 = load %struct.global_State** %g, align 4, !dbg !1392
  %6 = getelementptr inbounds %struct.global_State* %5, i32 0, i32 17, !dbg !1392
  %7 = load %struct.GCObject** %6, align 4, !dbg !1392
  store %struct.GCObject* %7, %struct.GCObject** %grayagain, align 4, !dbg !1392
  %8 = load %struct.global_State** %g, align 4, !dbg !1393
  %9 = getelementptr inbounds %struct.global_State* %8, i32 0, i32 10, !dbg !1393
  store i8 8, i8* %9, align 1, !dbg !1393
  %10 = load %struct.global_State** %g, align 4, !dbg !1394
  %11 = getelementptr inbounds %struct.global_State* %10, i32 0, i32 4, !dbg !1394
  store i32 0, i32* %11, align 4, !dbg !1394
  %12 = load %struct.lua_State** %1, align 4, !dbg !1395
  %13 = getelementptr inbounds %struct.lua_State* %12, i32 0, i32 2, !dbg !1395
  %14 = load i8* %13, align 1, !dbg !1395
  %15 = zext i8 %14 to i32, !dbg !1395
  %16 = and i32 %15, 3, !dbg !1395
  %17 = icmp ne i32 %16, 0, !dbg !1395
  br i1 %17, label %18, label %23, !dbg !1395

; <label>:18                                      ; preds = %0
  %19 = load %struct.global_State** %g, align 4, !dbg !1398
  %20 = load %struct.lua_State** %1, align 4, !dbg !1398
  %21 = bitcast %struct.lua_State* %20 to %union.GCUnion*, !dbg !1398
  %22 = bitcast %union.GCUnion* %21 to %struct.GCObject*, !dbg !1398
  call void @reallymarkobject(%struct.global_State* %19, %struct.GCObject* %22), !dbg !1398
  br label %23, !dbg !1398

; <label>:23                                      ; preds = %18, %0
  %24 = load %struct.global_State** %g, align 4, !dbg !1400
  %25 = getelementptr inbounds %struct.global_State* %24, i32 0, i32 7, !dbg !1400
  %26 = getelementptr inbounds %struct.lua_TValue* %25, i32 0, i32 1, !dbg !1400
  %27 = load i32* %26, align 4, !dbg !1400
  %28 = and i32 %27, 64, !dbg !1400
  %29 = icmp ne i32 %28, 0, !dbg !1400
  br i1 %29, label %30, label %48, !dbg !1400

; <label>:30                                      ; preds = %23
  %31 = load %struct.global_State** %g, align 4, !dbg !1403
  %32 = getelementptr inbounds %struct.global_State* %31, i32 0, i32 7, !dbg !1403
  %33 = getelementptr inbounds %struct.lua_TValue* %32, i32 0, i32 0, !dbg !1403
  %34 = bitcast %union.Value* %33 to %struct.GCObject**, !dbg !1403
  %35 = load %struct.GCObject** %34, align 4, !dbg !1403
  %36 = getelementptr inbounds %struct.GCObject* %35, i32 0, i32 2, !dbg !1403
  %37 = load i8* %36, align 1, !dbg !1403
  %38 = zext i8 %37 to i32, !dbg !1403
  %39 = and i32 %38, 3, !dbg !1403
  %40 = icmp ne i32 %39, 0, !dbg !1403
  br i1 %40, label %41, label %48, !dbg !1403

; <label>:41                                      ; preds = %30
  %42 = load %struct.global_State** %g, align 4, !dbg !1405
  %43 = load %struct.global_State** %g, align 4, !dbg !1405
  %44 = getelementptr inbounds %struct.global_State* %43, i32 0, i32 7, !dbg !1405
  %45 = getelementptr inbounds %struct.lua_TValue* %44, i32 0, i32 0, !dbg !1405
  %46 = bitcast %union.Value* %45 to %struct.GCObject**, !dbg !1405
  %47 = load %struct.GCObject** %46, align 4, !dbg !1405
  call void @reallymarkobject(%struct.global_State* %42, %struct.GCObject* %47), !dbg !1405
  br label %48, !dbg !1405

; <label>:48                                      ; preds = %41, %30, %23
  %49 = load %struct.global_State** %g, align 4, !dbg !1407
  call void @markmt(%struct.global_State* %49), !dbg !1407
  %50 = load %struct.global_State** %g, align 4, !dbg !1408
  call void @remarkupvals(%struct.global_State* %50), !dbg !1408
  %51 = load %struct.global_State** %g, align 4, !dbg !1409
  call void @propagateall(%struct.global_State* %51), !dbg !1409
  %52 = load %struct.global_State** %g, align 4, !dbg !1410
  %53 = getelementptr inbounds %struct.global_State* %52, i32 0, i32 4, !dbg !1410
  %54 = load i32* %53, align 4, !dbg !1410
  store i32 %54, i32* %work, align 4, !dbg !1410
  %55 = load %struct.GCObject** %grayagain, align 4, !dbg !1411
  %56 = load %struct.global_State** %g, align 4, !dbg !1411
  %57 = getelementptr inbounds %struct.global_State* %56, i32 0, i32 16, !dbg !1411
  store %struct.GCObject* %55, %struct.GCObject** %57, align 4, !dbg !1411
  %58 = load %struct.global_State** %g, align 4, !dbg !1412
  call void @propagateall(%struct.global_State* %58), !dbg !1412
  %59 = load %struct.global_State** %g, align 4, !dbg !1413
  %60 = getelementptr inbounds %struct.global_State* %59, i32 0, i32 4, !dbg !1413
  store i32 0, i32* %60, align 4, !dbg !1413
  %61 = load %struct.global_State** %g, align 4, !dbg !1414
  call void @convergeephemerons(%struct.global_State* %61), !dbg !1414
  %62 = load %struct.global_State** %g, align 4, !dbg !1415
  %63 = load %struct.global_State** %g, align 4, !dbg !1415
  %64 = getelementptr inbounds %struct.global_State* %63, i32 0, i32 18, !dbg !1415
  %65 = load %struct.GCObject** %64, align 4, !dbg !1415
  call void @clearvalues(%struct.global_State* %62, %struct.GCObject* %65, %struct.GCObject* null), !dbg !1415
  %66 = load %struct.global_State** %g, align 4, !dbg !1416
  %67 = load %struct.global_State** %g, align 4, !dbg !1416
  %68 = getelementptr inbounds %struct.global_State* %67, i32 0, i32 20, !dbg !1416
  %69 = load %struct.GCObject** %68, align 4, !dbg !1416
  call void @clearvalues(%struct.global_State* %66, %struct.GCObject* %69, %struct.GCObject* null), !dbg !1416
  %70 = load %struct.global_State** %g, align 4, !dbg !1417
  %71 = getelementptr inbounds %struct.global_State* %70, i32 0, i32 18, !dbg !1417
  %72 = load %struct.GCObject** %71, align 4, !dbg !1417
  store %struct.GCObject* %72, %struct.GCObject** %origweak, align 4, !dbg !1417
  %73 = load %struct.global_State** %g, align 4, !dbg !1418
  %74 = getelementptr inbounds %struct.global_State* %73, i32 0, i32 20, !dbg !1418
  %75 = load %struct.GCObject** %74, align 4, !dbg !1418
  store %struct.GCObject* %75, %struct.GCObject** %origall, align 4, !dbg !1418
  %76 = load %struct.global_State** %g, align 4, !dbg !1419
  %77 = getelementptr inbounds %struct.global_State* %76, i32 0, i32 4, !dbg !1419
  %78 = load i32* %77, align 4, !dbg !1419
  %79 = load i32* %work, align 4, !dbg !1419
  %80 = add i32 %79, %78, !dbg !1419
  store i32 %80, i32* %work, align 4, !dbg !1419
  %81 = load %struct.global_State** %g, align 4, !dbg !1420
  call void @separatetobefnz(%struct.global_State* %81, i32 0), !dbg !1420
  %82 = load %struct.global_State** %g, align 4, !dbg !1421
  %83 = getelementptr inbounds %struct.global_State* %82, i32 0, i32 24, !dbg !1421
  store i32 1, i32* %83, align 4, !dbg !1421
  %84 = load %struct.global_State** %g, align 4, !dbg !1422
  call void @markbeingfnz(%struct.global_State* %84), !dbg !1422
  %85 = load %struct.global_State** %g, align 4, !dbg !1423
  call void @propagateall(%struct.global_State* %85), !dbg !1423
  %86 = load %struct.global_State** %g, align 4, !dbg !1424
  %87 = getelementptr inbounds %struct.global_State* %86, i32 0, i32 4, !dbg !1424
  store i32 0, i32* %87, align 4, !dbg !1424
  %88 = load %struct.global_State** %g, align 4, !dbg !1425
  call void @convergeephemerons(%struct.global_State* %88), !dbg !1425
  %89 = load %struct.global_State** %g, align 4, !dbg !1426
  %90 = load %struct.global_State** %g, align 4, !dbg !1426
  %91 = getelementptr inbounds %struct.global_State* %90, i32 0, i32 19, !dbg !1426
  %92 = load %struct.GCObject** %91, align 4, !dbg !1426
  call void @clearkeys(%struct.global_State* %89, %struct.GCObject* %92, %struct.GCObject* null), !dbg !1426
  %93 = load %struct.global_State** %g, align 4, !dbg !1427
  %94 = load %struct.global_State** %g, align 4, !dbg !1427
  %95 = getelementptr inbounds %struct.global_State* %94, i32 0, i32 20, !dbg !1427
  %96 = load %struct.GCObject** %95, align 4, !dbg !1427
  call void @clearkeys(%struct.global_State* %93, %struct.GCObject* %96, %struct.GCObject* null), !dbg !1427
  %97 = load %struct.global_State** %g, align 4, !dbg !1428
  %98 = load %struct.global_State** %g, align 4, !dbg !1428
  %99 = getelementptr inbounds %struct.global_State* %98, i32 0, i32 18, !dbg !1428
  %100 = load %struct.GCObject** %99, align 4, !dbg !1428
  %101 = load %struct.GCObject** %origweak, align 4, !dbg !1428
  call void @clearvalues(%struct.global_State* %97, %struct.GCObject* %100, %struct.GCObject* %101), !dbg !1428
  %102 = load %struct.global_State** %g, align 4, !dbg !1429
  %103 = load %struct.global_State** %g, align 4, !dbg !1429
  %104 = getelementptr inbounds %struct.global_State* %103, i32 0, i32 20, !dbg !1429
  %105 = load %struct.GCObject** %104, align 4, !dbg !1429
  %106 = load %struct.GCObject** %origall, align 4, !dbg !1429
  call void @clearvalues(%struct.global_State* %102, %struct.GCObject* %105, %struct.GCObject* %106), !dbg !1429
  %107 = load %struct.global_State** %g, align 4, !dbg !1430
  call void @luaS_clearcache(%struct.global_State* %107), !dbg !1430
  %108 = load %struct.global_State** %g, align 4, !dbg !1431
  %109 = getelementptr inbounds %struct.global_State* %108, i32 0, i32 9, !dbg !1431
  %110 = load i8* %109, align 1, !dbg !1431
  %111 = zext i8 %110 to i32, !dbg !1431
  %112 = xor i32 %111, 3, !dbg !1431
  %113 = trunc i32 %112 to i8, !dbg !1431
  %114 = load %struct.global_State** %g, align 4, !dbg !1431
  %115 = getelementptr inbounds %struct.global_State* %114, i32 0, i32 9, !dbg !1431
  store i8 %113, i8* %115, align 1, !dbg !1431
  %116 = load %struct.global_State** %g, align 4, !dbg !1432
  %117 = getelementptr inbounds %struct.global_State* %116, i32 0, i32 4, !dbg !1432
  %118 = load i32* %117, align 4, !dbg !1432
  %119 = load i32* %work, align 4, !dbg !1432
  %120 = add i32 %119, %118, !dbg !1432
  store i32 %120, i32* %work, align 4, !dbg !1432
  %121 = load i32* %work, align 4, !dbg !1433
  ret i32 %121, !dbg !1433
}

; Function Attrs: nounwind
define internal i32 @sweepstep(%struct.lua_State* %L, %struct.global_State* %g, i32 %nextstate, %struct.GCObject** %nextlist) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.lua_State*, align 4
  %3 = alloca %struct.global_State*, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.GCObject**, align 4
  %olddebt = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %2}, metadata !1434), !dbg !1435
  store %struct.global_State* %g, %struct.global_State** %3, align 4
  call void @llvm.dbg.declare(metadata !{%struct.global_State** %3}, metadata !1436), !dbg !1437
  store i32 %nextstate, i32* %4, align 4
  call void @llvm.dbg.declare(metadata !{i32* %4}, metadata !1438), !dbg !1439
  store %struct.GCObject** %nextlist, %struct.GCObject*** %5, align 4
  call void @llvm.dbg.declare(metadata !{%struct.GCObject*** %5}, metadata !1440), !dbg !1441
  %6 = load %struct.global_State** %3, align 4, !dbg !1442
  %7 = getelementptr inbounds %struct.global_State* %6, i32 0, i32 14, !dbg !1442
  %8 = load %struct.GCObject*** %7, align 4, !dbg !1442
  %9 = icmp ne %struct.GCObject** %8, null, !dbg !1442
  br i1 %9, label %10, label %36, !dbg !1442

; <label>:10                                      ; preds = %0
  call void @llvm.dbg.declare(metadata !{i32* %olddebt}, metadata !1444), !dbg !1446
  %11 = load %struct.global_State** %3, align 4, !dbg !1447
  %12 = getelementptr inbounds %struct.global_State* %11, i32 0, i32 3, !dbg !1447
  %13 = load i32* %12, align 4, !dbg !1447
  store i32 %13, i32* %olddebt, align 4, !dbg !1447
  %14 = load %struct.lua_State** %2, align 4, !dbg !1448
  %15 = load %struct.global_State** %3, align 4, !dbg !1448
  %16 = getelementptr inbounds %struct.global_State* %15, i32 0, i32 14, !dbg !1448
  %17 = load %struct.GCObject*** %16, align 4, !dbg !1448
  %18 = call %struct.GCObject** @sweeplist(%struct.lua_State* %14, %struct.GCObject** %17, i32 80), !dbg !1448
  %19 = load %struct.global_State** %3, align 4, !dbg !1448
  %20 = getelementptr inbounds %struct.global_State* %19, i32 0, i32 14, !dbg !1448
  store %struct.GCObject** %18, %struct.GCObject*** %20, align 4, !dbg !1448
  %21 = load %struct.global_State** %3, align 4, !dbg !1449
  %22 = getelementptr inbounds %struct.global_State* %21, i32 0, i32 3, !dbg !1449
  %23 = load i32* %22, align 4, !dbg !1449
  %24 = load i32* %olddebt, align 4, !dbg !1449
  %25 = sub nsw i32 %23, %24, !dbg !1449
  %26 = load %struct.global_State** %3, align 4, !dbg !1449
  %27 = getelementptr inbounds %struct.global_State* %26, i32 0, i32 5, !dbg !1449
  %28 = load i32* %27, align 4, !dbg !1449
  %29 = add i32 %28, %25, !dbg !1449
  store i32 %29, i32* %27, align 4, !dbg !1449
  %30 = load %struct.global_State** %3, align 4, !dbg !1450
  %31 = getelementptr inbounds %struct.global_State* %30, i32 0, i32 14, !dbg !1450
  %32 = load %struct.GCObject*** %31, align 4, !dbg !1450
  %33 = icmp ne %struct.GCObject** %32, null, !dbg !1450
  br i1 %33, label %34, label %35, !dbg !1450

; <label>:34                                      ; preds = %10
  store i32 400, i32* %1, !dbg !1452
  br label %44, !dbg !1452

; <label>:35                                      ; preds = %10
  br label %36, !dbg !1453

; <label>:36                                      ; preds = %35, %0
  %37 = load i32* %4, align 4, !dbg !1454
  %38 = trunc i32 %37 to i8, !dbg !1454
  %39 = load %struct.global_State** %3, align 4, !dbg !1454
  %40 = getelementptr inbounds %struct.global_State* %39, i32 0, i32 10, !dbg !1454
  store i8 %38, i8* %40, align 1, !dbg !1454
  %41 = load %struct.GCObject*** %5, align 4, !dbg !1455
  %42 = load %struct.global_State** %3, align 4, !dbg !1455
  %43 = getelementptr inbounds %struct.global_State* %42, i32 0, i32 14, !dbg !1455
  store %struct.GCObject** %41, %struct.GCObject*** %43, align 4, !dbg !1455
  store i32 0, i32* %1, !dbg !1456
  br label %44, !dbg !1456

; <label>:44                                      ; preds = %36, %34
  %45 = load i32* %1, !dbg !1457
  ret i32 %45, !dbg !1457
}

; Function Attrs: nounwind
define internal void @checkSizes(%struct.lua_State* %L, %struct.global_State* %g) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca %struct.global_State*, align 4
  %olddebt = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !1458), !dbg !1459
  store %struct.global_State* %g, %struct.global_State** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.global_State** %2}, metadata !1460), !dbg !1461
  %3 = load %struct.global_State** %2, align 4, !dbg !1462
  %4 = getelementptr inbounds %struct.global_State* %3, i32 0, i32 11, !dbg !1462
  %5 = load i8* %4, align 1, !dbg !1462
  %6 = zext i8 %5 to i32, !dbg !1462
  %7 = icmp ne i32 %6, 1, !dbg !1462
  br i1 %7, label %8, label %39, !dbg !1462

; <label>:8                                       ; preds = %0
  call void @llvm.dbg.declare(metadata !{i32* %olddebt}, metadata !1464), !dbg !1466
  %9 = load %struct.global_State** %2, align 4, !dbg !1467
  %10 = getelementptr inbounds %struct.global_State* %9, i32 0, i32 3, !dbg !1467
  %11 = load i32* %10, align 4, !dbg !1467
  store i32 %11, i32* %olddebt, align 4, !dbg !1467
  %12 = load %struct.global_State** %2, align 4, !dbg !1468
  %13 = getelementptr inbounds %struct.global_State* %12, i32 0, i32 6, !dbg !1468
  %14 = getelementptr inbounds %struct.stringtable* %13, i32 0, i32 1, !dbg !1468
  %15 = load i32* %14, align 4, !dbg !1468
  %16 = load %struct.global_State** %2, align 4, !dbg !1468
  %17 = getelementptr inbounds %struct.global_State* %16, i32 0, i32 6, !dbg !1468
  %18 = getelementptr inbounds %struct.stringtable* %17, i32 0, i32 2, !dbg !1468
  %19 = load i32* %18, align 4, !dbg !1468
  %20 = sdiv i32 %19, 4, !dbg !1468
  %21 = icmp slt i32 %15, %20, !dbg !1468
  br i1 %21, label %22, label %29, !dbg !1468

; <label>:22                                      ; preds = %8
  %23 = load %struct.lua_State** %1, align 4, !dbg !1470
  %24 = load %struct.global_State** %2, align 4, !dbg !1470
  %25 = getelementptr inbounds %struct.global_State* %24, i32 0, i32 6, !dbg !1470
  %26 = getelementptr inbounds %struct.stringtable* %25, i32 0, i32 2, !dbg !1470
  %27 = load i32* %26, align 4, !dbg !1470
  %28 = sdiv i32 %27, 2, !dbg !1470
  call void @luaS_resize(%struct.lua_State* %23, i32 %28), !dbg !1470
  br label %29, !dbg !1470

; <label>:29                                      ; preds = %22, %8
  %30 = load %struct.global_State** %2, align 4, !dbg !1471
  %31 = getelementptr inbounds %struct.global_State* %30, i32 0, i32 3, !dbg !1471
  %32 = load i32* %31, align 4, !dbg !1471
  %33 = load i32* %olddebt, align 4, !dbg !1471
  %34 = sub nsw i32 %32, %33, !dbg !1471
  %35 = load %struct.global_State** %2, align 4, !dbg !1471
  %36 = getelementptr inbounds %struct.global_State* %35, i32 0, i32 5, !dbg !1471
  %37 = load i32* %36, align 4, !dbg !1471
  %38 = add i32 %37, %34, !dbg !1471
  store i32 %38, i32* %36, align 4, !dbg !1471
  br label %39, !dbg !1472

; <label>:39                                      ; preds = %29, %0
  ret void, !dbg !1473
}

declare hidden void @luaS_resize(%struct.lua_State*, i32) #2

; Function Attrs: nounwind
define internal void @markmt(%struct.global_State* %g) #0 {
  %1 = alloca %struct.global_State*, align 4
  %i = alloca i32, align 4
  store %struct.global_State* %g, %struct.global_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.global_State** %1}, metadata !1474), !dbg !1475
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !1476), !dbg !1477
  store i32 0, i32* %i, align 4, !dbg !1478
  br label %2, !dbg !1478

; <label>:2                                       ; preds = %34, %0
  %3 = load i32* %i, align 4, !dbg !1480
  %4 = icmp slt i32 %3, 9, !dbg !1480
  br i1 %4, label %5, label %37, !dbg !1480

; <label>:5                                       ; preds = %2
  %6 = load i32* %i, align 4, !dbg !1483
  %7 = load %struct.global_State** %1, align 4, !dbg !1483
  %8 = getelementptr inbounds %struct.global_State* %7, i32 0, i32 32, !dbg !1483
  %9 = getelementptr inbounds [9 x %struct.Table*]* %8, i32 0, i32 %6, !dbg !1483
  %10 = load %struct.Table** %9, align 4, !dbg !1483
  %11 = icmp ne %struct.Table* %10, null, !dbg !1483
  br i1 %11, label %12, label %33, !dbg !1483

; <label>:12                                      ; preds = %5
  %13 = load i32* %i, align 4, !dbg !1486
  %14 = load %struct.global_State** %1, align 4, !dbg !1486
  %15 = getelementptr inbounds %struct.global_State* %14, i32 0, i32 32, !dbg !1486
  %16 = getelementptr inbounds [9 x %struct.Table*]* %15, i32 0, i32 %13, !dbg !1486
  %17 = load %struct.Table** %16, align 4, !dbg !1486
  %18 = getelementptr inbounds %struct.Table* %17, i32 0, i32 2, !dbg !1486
  %19 = load i8* %18, align 1, !dbg !1486
  %20 = zext i8 %19 to i32, !dbg !1486
  %21 = and i32 %20, 3, !dbg !1486
  %22 = icmp ne i32 %21, 0, !dbg !1486
  br i1 %22, label %23, label %32, !dbg !1486

; <label>:23                                      ; preds = %12
  %24 = load %struct.global_State** %1, align 4, !dbg !1490
  %25 = load i32* %i, align 4, !dbg !1490
  %26 = load %struct.global_State** %1, align 4, !dbg !1490
  %27 = getelementptr inbounds %struct.global_State* %26, i32 0, i32 32, !dbg !1490
  %28 = getelementptr inbounds [9 x %struct.Table*]* %27, i32 0, i32 %25, !dbg !1490
  %29 = load %struct.Table** %28, align 4, !dbg !1490
  %30 = bitcast %struct.Table* %29 to %union.GCUnion*, !dbg !1490
  %31 = bitcast %union.GCUnion* %30 to %struct.GCObject*, !dbg !1490
  call void @reallymarkobject(%struct.global_State* %24, %struct.GCObject* %31), !dbg !1490
  br label %32, !dbg !1490

; <label>:32                                      ; preds = %23, %12
  br label %33, !dbg !1492

; <label>:33                                      ; preds = %32, %5
  br label %34, !dbg !1495

; <label>:34                                      ; preds = %33
  %35 = load i32* %i, align 4, !dbg !1498
  %36 = add nsw i32 %35, 1, !dbg !1498
  store i32 %36, i32* %i, align 4, !dbg !1498
  br label %2, !dbg !1498

; <label>:37                                      ; preds = %2
  ret void, !dbg !1499
}

; Function Attrs: nounwind
define internal void @remarkupvals(%struct.global_State* %g) #0 {
  %1 = alloca %struct.global_State*, align 4
  %thread = alloca %struct.lua_State*, align 4
  %p = alloca %struct.lua_State**, align 4
  %uv = alloca %struct.UpVal*, align 4
  store %struct.global_State* %g, %struct.global_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.global_State** %1}, metadata !1500), !dbg !1501
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %thread}, metadata !1502), !dbg !1503
  call void @llvm.dbg.declare(metadata !{%struct.lua_State*** %p}, metadata !1504), !dbg !1506
  %2 = load %struct.global_State** %1, align 4, !dbg !1507
  %3 = getelementptr inbounds %struct.global_State* %2, i32 0, i32 23, !dbg !1507
  store %struct.lua_State** %3, %struct.lua_State*** %p, align 4, !dbg !1507
  br label %4, !dbg !1508

; <label>:4                                       ; preds = %85, %0
  %5 = load %struct.lua_State*** %p, align 4, !dbg !1509
  %6 = load %struct.lua_State** %5, align 4, !dbg !1509
  store %struct.lua_State* %6, %struct.lua_State** %thread, align 4, !dbg !1509
  %7 = icmp ne %struct.lua_State* %6, null, !dbg !1509
  br i1 %7, label %8, label %86, !dbg !1509

; <label>:8                                       ; preds = %4
  %9 = load %struct.lua_State** %thread, align 4, !dbg !1511
  %10 = getelementptr inbounds %struct.lua_State* %9, i32 0, i32 2, !dbg !1511
  %11 = load i8* %10, align 1, !dbg !1511
  %12 = zext i8 %11 to i32, !dbg !1511
  %13 = and i32 %12, 7, !dbg !1511
  %14 = icmp ne i32 %13, 0, !dbg !1511
  br i1 %14, label %23, label %15, !dbg !1511

; <label>:15                                      ; preds = %8
  %16 = load %struct.lua_State** %thread, align 4, !dbg !1514
  %17 = getelementptr inbounds %struct.lua_State* %16, i32 0, i32 11, !dbg !1514
  %18 = load %struct.UpVal** %17, align 4, !dbg !1514
  %19 = icmp ne %struct.UpVal* %18, null, !dbg !1514
  br i1 %19, label %20, label %23, !dbg !1514

; <label>:20                                      ; preds = %15
  %21 = load %struct.lua_State** %thread, align 4, !dbg !1516
  %22 = getelementptr inbounds %struct.lua_State* %21, i32 0, i32 13, !dbg !1516
  store %struct.lua_State** %22, %struct.lua_State*** %p, align 4, !dbg !1516
  br label %85, !dbg !1516

; <label>:23                                      ; preds = %15, %8
  call void @llvm.dbg.declare(metadata !{%struct.UpVal** %uv}, metadata !1517), !dbg !1519
  %24 = load %struct.lua_State** %thread, align 4, !dbg !1520
  %25 = getelementptr inbounds %struct.lua_State* %24, i32 0, i32 13, !dbg !1520
  %26 = load %struct.lua_State** %25, align 4, !dbg !1520
  %27 = load %struct.lua_State*** %p, align 4, !dbg !1520
  store %struct.lua_State* %26, %struct.lua_State** %27, align 4, !dbg !1520
  %28 = load %struct.lua_State** %thread, align 4, !dbg !1521
  %29 = load %struct.lua_State** %thread, align 4, !dbg !1521
  %30 = getelementptr inbounds %struct.lua_State* %29, i32 0, i32 13, !dbg !1521
  store %struct.lua_State* %28, %struct.lua_State** %30, align 4, !dbg !1521
  %31 = load %struct.lua_State** %thread, align 4, !dbg !1522
  %32 = getelementptr inbounds %struct.lua_State* %31, i32 0, i32 11, !dbg !1522
  %33 = load %struct.UpVal** %32, align 4, !dbg !1522
  store %struct.UpVal* %33, %struct.UpVal** %uv, align 4, !dbg !1522
  br label %34, !dbg !1522

; <label>:34                                      ; preds = %78, %23
  %35 = load %struct.UpVal** %uv, align 4, !dbg !1524
  %36 = icmp ne %struct.UpVal* %35, null, !dbg !1524
  br i1 %36, label %37, label %84, !dbg !1524

; <label>:37                                      ; preds = %34
  %38 = load %struct.UpVal** %uv, align 4, !dbg !1527
  %39 = getelementptr inbounds %struct.UpVal* %38, i32 0, i32 2, !dbg !1527
  %40 = bitcast %union.anon.3* %39 to %struct.anon.4*, !dbg !1527
  %41 = getelementptr inbounds %struct.anon.4* %40, i32 0, i32 1, !dbg !1527
  %42 = load i32* %41, align 4, !dbg !1527
  %43 = icmp ne i32 %42, 0, !dbg !1527
  br i1 %43, label %44, label %77, !dbg !1527

; <label>:44                                      ; preds = %37
  %45 = load %struct.UpVal** %uv, align 4, !dbg !1530
  %46 = getelementptr inbounds %struct.UpVal* %45, i32 0, i32 0, !dbg !1530
  %47 = load %struct.lua_TValue** %46, align 4, !dbg !1530
  %48 = getelementptr inbounds %struct.lua_TValue* %47, i32 0, i32 1, !dbg !1530
  %49 = load i32* %48, align 4, !dbg !1530
  %50 = and i32 %49, 64, !dbg !1530
  %51 = icmp ne i32 %50, 0, !dbg !1530
  br i1 %51, label %52, label %72, !dbg !1530

; <label>:52                                      ; preds = %44
  %53 = load %struct.UpVal** %uv, align 4, !dbg !1534
  %54 = getelementptr inbounds %struct.UpVal* %53, i32 0, i32 0, !dbg !1534
  %55 = load %struct.lua_TValue** %54, align 4, !dbg !1534
  %56 = getelementptr inbounds %struct.lua_TValue* %55, i32 0, i32 0, !dbg !1534
  %57 = bitcast %union.Value* %56 to %struct.GCObject**, !dbg !1534
  %58 = load %struct.GCObject** %57, align 4, !dbg !1534
  %59 = getelementptr inbounds %struct.GCObject* %58, i32 0, i32 2, !dbg !1534
  %60 = load i8* %59, align 1, !dbg !1534
  %61 = zext i8 %60 to i32, !dbg !1534
  %62 = and i32 %61, 3, !dbg !1534
  %63 = icmp ne i32 %62, 0, !dbg !1534
  br i1 %63, label %64, label %72, !dbg !1534

; <label>:64                                      ; preds = %52
  %65 = load %struct.global_State** %1, align 4, !dbg !1536
  %66 = load %struct.UpVal** %uv, align 4, !dbg !1536
  %67 = getelementptr inbounds %struct.UpVal* %66, i32 0, i32 0, !dbg !1536
  %68 = load %struct.lua_TValue** %67, align 4, !dbg !1536
  %69 = getelementptr inbounds %struct.lua_TValue* %68, i32 0, i32 0, !dbg !1536
  %70 = bitcast %union.Value* %69 to %struct.GCObject**, !dbg !1536
  %71 = load %struct.GCObject** %70, align 4, !dbg !1536
  call void @reallymarkobject(%struct.global_State* %65, %struct.GCObject* %71), !dbg !1536
  br label %72, !dbg !1536

; <label>:72                                      ; preds = %64, %52, %44
  %73 = load %struct.UpVal** %uv, align 4, !dbg !1538
  %74 = getelementptr inbounds %struct.UpVal* %73, i32 0, i32 2, !dbg !1538
  %75 = bitcast %union.anon.3* %74 to %struct.anon.4*, !dbg !1538
  %76 = getelementptr inbounds %struct.anon.4* %75, i32 0, i32 1, !dbg !1538
  store i32 0, i32* %76, align 4, !dbg !1538
  br label %77, !dbg !1539

; <label>:77                                      ; preds = %72, %37
  br label %78, !dbg !1540

; <label>:78                                      ; preds = %77
  %79 = load %struct.UpVal** %uv, align 4, !dbg !1541
  %80 = getelementptr inbounds %struct.UpVal* %79, i32 0, i32 2, !dbg !1541
  %81 = bitcast %union.anon.3* %80 to %struct.anon.4*, !dbg !1541
  %82 = getelementptr inbounds %struct.anon.4* %81, i32 0, i32 0, !dbg !1541
  %83 = load %struct.UpVal** %82, align 4, !dbg !1541
  store %struct.UpVal* %83, %struct.UpVal** %uv, align 4, !dbg !1541
  br label %34, !dbg !1541

; <label>:84                                      ; preds = %34
  br label %85

; <label>:85                                      ; preds = %84, %20
  br label %4, !dbg !1542

; <label>:86                                      ; preds = %4
  ret void, !dbg !1543
}

; Function Attrs: nounwind
define internal void @convergeephemerons(%struct.global_State* %g) #0 {
  %1 = alloca %struct.global_State*, align 4
  %changed = alloca i32, align 4
  %w = alloca %struct.GCObject*, align 4
  %next = alloca %struct.GCObject*, align 4
  store %struct.global_State* %g, %struct.global_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.global_State** %1}, metadata !1544), !dbg !1545
  call void @llvm.dbg.declare(metadata !{i32* %changed}, metadata !1546), !dbg !1547
  br label %2, !dbg !1548

; <label>:2                                       ; preds = %27, %0
  call void @llvm.dbg.declare(metadata !{%struct.GCObject** %w}, metadata !1549), !dbg !1551
  call void @llvm.dbg.declare(metadata !{%struct.GCObject** %next}, metadata !1552), !dbg !1553
  %3 = load %struct.global_State** %1, align 4, !dbg !1554
  %4 = getelementptr inbounds %struct.global_State* %3, i32 0, i32 19, !dbg !1554
  %5 = load %struct.GCObject** %4, align 4, !dbg !1554
  store %struct.GCObject* %5, %struct.GCObject** %next, align 4, !dbg !1554
  %6 = load %struct.global_State** %1, align 4, !dbg !1555
  %7 = getelementptr inbounds %struct.global_State* %6, i32 0, i32 19, !dbg !1555
  store %struct.GCObject* null, %struct.GCObject** %7, align 4, !dbg !1555
  store i32 0, i32* %changed, align 4, !dbg !1556
  br label %8, !dbg !1557

; <label>:8                                       ; preds = %25, %2
  %9 = load %struct.GCObject** %next, align 4, !dbg !1558
  store %struct.GCObject* %9, %struct.GCObject** %w, align 4, !dbg !1558
  %10 = icmp ne %struct.GCObject* %9, null, !dbg !1558
  br i1 %10, label %11, label %26, !dbg !1558

; <label>:11                                      ; preds = %8
  %12 = load %struct.GCObject** %w, align 4, !dbg !1560
  %13 = bitcast %struct.GCObject* %12 to %union.GCUnion*, !dbg !1560
  %14 = bitcast %union.GCUnion* %13 to %struct.Table*, !dbg !1560
  %15 = getelementptr inbounds %struct.Table* %14, i32 0, i32 10, !dbg !1560
  %16 = load %struct.GCObject** %15, align 4, !dbg !1560
  store %struct.GCObject* %16, %struct.GCObject** %next, align 4, !dbg !1560
  %17 = load %struct.global_State** %1, align 4, !dbg !1562
  %18 = load %struct.GCObject** %w, align 4, !dbg !1562
  %19 = bitcast %struct.GCObject* %18 to %union.GCUnion*, !dbg !1562
  %20 = bitcast %union.GCUnion* %19 to %struct.Table*, !dbg !1562
  %21 = call i32 @traverseephemeron(%struct.global_State* %17, %struct.Table* %20), !dbg !1562
  %22 = icmp ne i32 %21, 0, !dbg !1562
  br i1 %22, label %23, label %25, !dbg !1562

; <label>:23                                      ; preds = %11
  %24 = load %struct.global_State** %1, align 4, !dbg !1564
  call void @propagateall(%struct.global_State* %24), !dbg !1564
  store i32 1, i32* %changed, align 4, !dbg !1566
  br label %25, !dbg !1567

; <label>:25                                      ; preds = %23, %11
  br label %8, !dbg !1568

; <label>:26                                      ; preds = %8
  br label %27, !dbg !1569

; <label>:27                                      ; preds = %26
  %28 = load i32* %changed, align 4, !dbg !1570
  %29 = icmp ne i32 %28, 0, !dbg !1570
  br i1 %29, label %2, label %30, !dbg !1570

; <label>:30                                      ; preds = %27
  ret void, !dbg !1572
}

; Function Attrs: nounwind
define internal void @clearvalues(%struct.global_State* %g, %struct.GCObject* %l, %struct.GCObject* %f) #0 {
  %1 = alloca %struct.global_State*, align 4
  %2 = alloca %struct.GCObject*, align 4
  %3 = alloca %struct.GCObject*, align 4
  %h = alloca %struct.Table*, align 4
  %n = alloca %struct.Node*, align 4
  %limit = alloca %struct.Node*, align 4
  %i = alloca i32, align 4
  %o = alloca %struct.lua_TValue*, align 4
  store %struct.global_State* %g, %struct.global_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.global_State** %1}, metadata !1573), !dbg !1574
  store %struct.GCObject* %l, %struct.GCObject** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.GCObject** %2}, metadata !1575), !dbg !1576
  store %struct.GCObject* %f, %struct.GCObject** %3, align 4
  call void @llvm.dbg.declare(metadata !{%struct.GCObject** %3}, metadata !1577), !dbg !1578
  br label %4, !dbg !1579

; <label>:4                                       ; preds = %75, %0
  %5 = load %struct.GCObject** %2, align 4, !dbg !1581
  %6 = load %struct.GCObject** %3, align 4, !dbg !1581
  %7 = icmp ne %struct.GCObject* %5, %6, !dbg !1581
  br i1 %7, label %8, label %81, !dbg !1581

; <label>:8                                       ; preds = %4
  call void @llvm.dbg.declare(metadata !{%struct.Table** %h}, metadata !1584), !dbg !1586
  %9 = load %struct.GCObject** %2, align 4, !dbg !1587
  %10 = bitcast %struct.GCObject* %9 to %union.GCUnion*, !dbg !1587
  %11 = bitcast %union.GCUnion* %10 to %struct.Table*, !dbg !1587
  store %struct.Table* %11, %struct.Table** %h, align 4, !dbg !1587
  call void @llvm.dbg.declare(metadata !{%struct.Node** %n}, metadata !1588), !dbg !1589
  call void @llvm.dbg.declare(metadata !{%struct.Node** %limit}, metadata !1590), !dbg !1591
  %12 = load %struct.Table** %h, align 4, !dbg !1592
  %13 = getelementptr inbounds %struct.Table* %12, i32 0, i32 4, !dbg !1592
  %14 = load i8* %13, align 1, !dbg !1592
  %15 = zext i8 %14 to i32, !dbg !1592
  %16 = shl i32 1, %15, !dbg !1592
  %17 = load %struct.Table** %h, align 4, !dbg !1592
  %18 = getelementptr inbounds %struct.Table* %17, i32 0, i32 7, !dbg !1592
  %19 = load %struct.Node** %18, align 4, !dbg !1592
  %20 = getelementptr inbounds %struct.Node* %19, i32 %16, !dbg !1592
  store %struct.Node* %20, %struct.Node** %limit, align 4, !dbg !1592
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !1593), !dbg !1594
  store i32 0, i32* %i, align 4, !dbg !1595
  br label %21, !dbg !1595

; <label>:21                                      ; preds = %41, %8
  %22 = load i32* %i, align 4, !dbg !1597
  %23 = load %struct.Table** %h, align 4, !dbg !1597
  %24 = getelementptr inbounds %struct.Table* %23, i32 0, i32 5, !dbg !1597
  %25 = load i32* %24, align 4, !dbg !1597
  %26 = icmp ult i32 %22, %25, !dbg !1597
  br i1 %26, label %27, label %44, !dbg !1597

; <label>:27                                      ; preds = %21
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %o}, metadata !1600), !dbg !1602
  %28 = load i32* %i, align 4, !dbg !1603
  %29 = load %struct.Table** %h, align 4, !dbg !1603
  %30 = getelementptr inbounds %struct.Table* %29, i32 0, i32 6, !dbg !1603
  %31 = load %struct.lua_TValue** %30, align 4, !dbg !1603
  %32 = getelementptr inbounds %struct.lua_TValue* %31, i32 %28, !dbg !1603
  store %struct.lua_TValue* %32, %struct.lua_TValue** %o, align 4, !dbg !1603
  %33 = load %struct.global_State** %1, align 4, !dbg !1604
  %34 = load %struct.lua_TValue** %o, align 4, !dbg !1604
  %35 = call i32 @iscleared(%struct.global_State* %33, %struct.lua_TValue* %34), !dbg !1604
  %36 = icmp ne i32 %35, 0, !dbg !1604
  br i1 %36, label %37, label %40, !dbg !1604

; <label>:37                                      ; preds = %27
  %38 = load %struct.lua_TValue** %o, align 4, !dbg !1606
  %39 = getelementptr inbounds %struct.lua_TValue* %38, i32 0, i32 1, !dbg !1606
  store i32 0, i32* %39, align 4, !dbg !1606
  br label %40, !dbg !1606

; <label>:40                                      ; preds = %37, %27
  br label %41, !dbg !1607

; <label>:41                                      ; preds = %40
  %42 = load i32* %i, align 4, !dbg !1608
  %43 = add i32 %42, 1, !dbg !1608
  store i32 %43, i32* %i, align 4, !dbg !1608
  br label %21, !dbg !1608

; <label>:44                                      ; preds = %21
  %45 = load %struct.Table** %h, align 4, !dbg !1609
  %46 = getelementptr inbounds %struct.Table* %45, i32 0, i32 7, !dbg !1609
  %47 = load %struct.Node** %46, align 4, !dbg !1609
  %48 = getelementptr inbounds %struct.Node* %47, i32 0, !dbg !1609
  store %struct.Node* %48, %struct.Node** %n, align 4, !dbg !1609
  br label %49, !dbg !1609

; <label>:49                                      ; preds = %71, %44
  %50 = load %struct.Node** %n, align 4, !dbg !1611
  %51 = load %struct.Node** %limit, align 4, !dbg !1611
  %52 = icmp ult %struct.Node* %50, %51, !dbg !1611
  br i1 %52, label %53, label %74, !dbg !1611

; <label>:53                                      ; preds = %49
  %54 = load %struct.Node** %n, align 4, !dbg !1614
  %55 = getelementptr inbounds %struct.Node* %54, i32 0, i32 0, !dbg !1614
  %56 = getelementptr inbounds %struct.lua_TValue* %55, i32 0, i32 1, !dbg !1614
  %57 = load i32* %56, align 4, !dbg !1614
  %58 = icmp eq i32 %57, 0, !dbg !1614
  br i1 %58, label %70, label %59, !dbg !1614

; <label>:59                                      ; preds = %53
  %60 = load %struct.global_State** %1, align 4, !dbg !1617
  %61 = load %struct.Node** %n, align 4, !dbg !1617
  %62 = getelementptr inbounds %struct.Node* %61, i32 0, i32 0, !dbg !1617
  %63 = call i32 @iscleared(%struct.global_State* %60, %struct.lua_TValue* %62), !dbg !1617
  %64 = icmp ne i32 %63, 0, !dbg !1617
  br i1 %64, label %65, label %70, !dbg !1617

; <label>:65                                      ; preds = %59
  %66 = load %struct.Node** %n, align 4, !dbg !1619
  %67 = getelementptr inbounds %struct.Node* %66, i32 0, i32 0, !dbg !1619
  %68 = getelementptr inbounds %struct.lua_TValue* %67, i32 0, i32 1, !dbg !1619
  store i32 0, i32* %68, align 4, !dbg !1619
  %69 = load %struct.Node** %n, align 4, !dbg !1621
  call void @removeentry(%struct.Node* %69), !dbg !1621
  br label %70, !dbg !1622

; <label>:70                                      ; preds = %65, %59, %53
  br label %71, !dbg !1623

; <label>:71                                      ; preds = %70
  %72 = load %struct.Node** %n, align 4, !dbg !1624
  %73 = getelementptr inbounds %struct.Node* %72, i32 1, !dbg !1624
  store %struct.Node* %73, %struct.Node** %n, align 4, !dbg !1624
  br label %49, !dbg !1624

; <label>:74                                      ; preds = %49
  br label %75, !dbg !1625

; <label>:75                                      ; preds = %74
  %76 = load %struct.GCObject** %2, align 4, !dbg !1626
  %77 = bitcast %struct.GCObject* %76 to %union.GCUnion*, !dbg !1626
  %78 = bitcast %union.GCUnion* %77 to %struct.Table*, !dbg !1626
  %79 = getelementptr inbounds %struct.Table* %78, i32 0, i32 10, !dbg !1626
  %80 = load %struct.GCObject** %79, align 4, !dbg !1626
  store %struct.GCObject* %80, %struct.GCObject** %2, align 4, !dbg !1626
  br label %4, !dbg !1626

; <label>:81                                      ; preds = %4
  ret void, !dbg !1627
}

; Function Attrs: nounwind
define internal void @markbeingfnz(%struct.global_State* %g) #0 {
  %1 = alloca %struct.global_State*, align 4
  %o = alloca %struct.GCObject*, align 4
  store %struct.global_State* %g, %struct.global_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.global_State** %1}, metadata !1628), !dbg !1629
  call void @llvm.dbg.declare(metadata !{%struct.GCObject** %o}, metadata !1630), !dbg !1631
  %2 = load %struct.global_State** %1, align 4, !dbg !1632
  %3 = getelementptr inbounds %struct.global_State* %2, i32 0, i32 21, !dbg !1632
  %4 = load %struct.GCObject** %3, align 4, !dbg !1632
  store %struct.GCObject* %4, %struct.GCObject** %o, align 4, !dbg !1632
  br label %5, !dbg !1632

; <label>:5                                       ; preds = %21, %0
  %6 = load %struct.GCObject** %o, align 4, !dbg !1634
  %7 = icmp ne %struct.GCObject* %6, null, !dbg !1634
  br i1 %7, label %8, label %25, !dbg !1634

; <label>:8                                       ; preds = %5
  %9 = load %struct.GCObject** %o, align 4, !dbg !1637
  %10 = getelementptr inbounds %struct.GCObject* %9, i32 0, i32 2, !dbg !1637
  %11 = load i8* %10, align 1, !dbg !1637
  %12 = zext i8 %11 to i32, !dbg !1637
  %13 = and i32 %12, 3, !dbg !1637
  %14 = icmp ne i32 %13, 0, !dbg !1637
  br i1 %14, label %15, label %20, !dbg !1637

; <label>:15                                      ; preds = %8
  %16 = load %struct.global_State** %1, align 4, !dbg !1640
  %17 = load %struct.GCObject** %o, align 4, !dbg !1640
  %18 = bitcast %struct.GCObject* %17 to %union.GCUnion*, !dbg !1640
  %19 = bitcast %union.GCUnion* %18 to %struct.GCObject*, !dbg !1640
  call void @reallymarkobject(%struct.global_State* %16, %struct.GCObject* %19), !dbg !1640
  br label %20, !dbg !1640

; <label>:20                                      ; preds = %15, %8
  br label %21, !dbg !1642

; <label>:21                                      ; preds = %20
  %22 = load %struct.GCObject** %o, align 4, !dbg !1645
  %23 = getelementptr inbounds %struct.GCObject* %22, i32 0, i32 0, !dbg !1645
  %24 = load %struct.GCObject** %23, align 4, !dbg !1645
  store %struct.GCObject* %24, %struct.GCObject** %o, align 4, !dbg !1645
  br label %5, !dbg !1645

; <label>:25                                      ; preds = %5
  ret void, !dbg !1646
}

; Function Attrs: nounwind
define internal void @clearkeys(%struct.global_State* %g, %struct.GCObject* %l, %struct.GCObject* %f) #0 {
  %1 = alloca %struct.global_State*, align 4
  %2 = alloca %struct.GCObject*, align 4
  %3 = alloca %struct.GCObject*, align 4
  %h = alloca %struct.Table*, align 4
  %n = alloca %struct.Node*, align 4
  %limit = alloca %struct.Node*, align 4
  store %struct.global_State* %g, %struct.global_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.global_State** %1}, metadata !1647), !dbg !1648
  store %struct.GCObject* %l, %struct.GCObject** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.GCObject** %2}, metadata !1649), !dbg !1650
  store %struct.GCObject* %f, %struct.GCObject** %3, align 4
  call void @llvm.dbg.declare(metadata !{%struct.GCObject** %3}, metadata !1651), !dbg !1652
  br label %4, !dbg !1653

; <label>:4                                       ; preds = %52, %0
  %5 = load %struct.GCObject** %2, align 4, !dbg !1655
  %6 = load %struct.GCObject** %3, align 4, !dbg !1655
  %7 = icmp ne %struct.GCObject* %5, %6, !dbg !1655
  br i1 %7, label %8, label %58, !dbg !1655

; <label>:8                                       ; preds = %4
  call void @llvm.dbg.declare(metadata !{%struct.Table** %h}, metadata !1658), !dbg !1660
  %9 = load %struct.GCObject** %2, align 4, !dbg !1661
  %10 = bitcast %struct.GCObject* %9 to %union.GCUnion*, !dbg !1661
  %11 = bitcast %union.GCUnion* %10 to %struct.Table*, !dbg !1661
  store %struct.Table* %11, %struct.Table** %h, align 4, !dbg !1661
  call void @llvm.dbg.declare(metadata !{%struct.Node** %n}, metadata !1662), !dbg !1663
  call void @llvm.dbg.declare(metadata !{%struct.Node** %limit}, metadata !1664), !dbg !1665
  %12 = load %struct.Table** %h, align 4, !dbg !1666
  %13 = getelementptr inbounds %struct.Table* %12, i32 0, i32 4, !dbg !1666
  %14 = load i8* %13, align 1, !dbg !1666
  %15 = zext i8 %14 to i32, !dbg !1666
  %16 = shl i32 1, %15, !dbg !1666
  %17 = load %struct.Table** %h, align 4, !dbg !1666
  %18 = getelementptr inbounds %struct.Table* %17, i32 0, i32 7, !dbg !1666
  %19 = load %struct.Node** %18, align 4, !dbg !1666
  %20 = getelementptr inbounds %struct.Node* %19, i32 %16, !dbg !1666
  store %struct.Node* %20, %struct.Node** %limit, align 4, !dbg !1666
  %21 = load %struct.Table** %h, align 4, !dbg !1667
  %22 = getelementptr inbounds %struct.Table* %21, i32 0, i32 7, !dbg !1667
  %23 = load %struct.Node** %22, align 4, !dbg !1667
  %24 = getelementptr inbounds %struct.Node* %23, i32 0, !dbg !1667
  store %struct.Node* %24, %struct.Node** %n, align 4, !dbg !1667
  br label %25, !dbg !1667

; <label>:25                                      ; preds = %48, %8
  %26 = load %struct.Node** %n, align 4, !dbg !1669
  %27 = load %struct.Node** %limit, align 4, !dbg !1669
  %28 = icmp ult %struct.Node* %26, %27, !dbg !1669
  br i1 %28, label %29, label %51, !dbg !1669

; <label>:29                                      ; preds = %25
  %30 = load %struct.Node** %n, align 4, !dbg !1672
  %31 = getelementptr inbounds %struct.Node* %30, i32 0, i32 0, !dbg !1672
  %32 = getelementptr inbounds %struct.lua_TValue* %31, i32 0, i32 1, !dbg !1672
  %33 = load i32* %32, align 4, !dbg !1672
  %34 = icmp eq i32 %33, 0, !dbg !1672
  br i1 %34, label %47, label %35, !dbg !1672

; <label>:35                                      ; preds = %29
  %36 = load %struct.global_State** %1, align 4, !dbg !1675
  %37 = load %struct.Node** %n, align 4, !dbg !1675
  %38 = getelementptr inbounds %struct.Node* %37, i32 0, i32 1, !dbg !1675
  %39 = bitcast %union.TKey* %38 to %struct.lua_TValue*, !dbg !1675
  %40 = call i32 @iscleared(%struct.global_State* %36, %struct.lua_TValue* %39), !dbg !1675
  %41 = icmp ne i32 %40, 0, !dbg !1675
  br i1 %41, label %42, label %47, !dbg !1675

; <label>:42                                      ; preds = %35
  %43 = load %struct.Node** %n, align 4, !dbg !1677
  %44 = getelementptr inbounds %struct.Node* %43, i32 0, i32 0, !dbg !1677
  %45 = getelementptr inbounds %struct.lua_TValue* %44, i32 0, i32 1, !dbg !1677
  store i32 0, i32* %45, align 4, !dbg !1677
  %46 = load %struct.Node** %n, align 4, !dbg !1679
  call void @removeentry(%struct.Node* %46), !dbg !1679
  br label %47, !dbg !1680

; <label>:47                                      ; preds = %42, %35, %29
  br label %48, !dbg !1681

; <label>:48                                      ; preds = %47
  %49 = load %struct.Node** %n, align 4, !dbg !1682
  %50 = getelementptr inbounds %struct.Node* %49, i32 1, !dbg !1682
  store %struct.Node* %50, %struct.Node** %n, align 4, !dbg !1682
  br label %25, !dbg !1682

; <label>:51                                      ; preds = %25
  br label %52, !dbg !1683

; <label>:52                                      ; preds = %51
  %53 = load %struct.GCObject** %2, align 4, !dbg !1684
  %54 = bitcast %struct.GCObject* %53 to %union.GCUnion*, !dbg !1684
  %55 = bitcast %union.GCUnion* %54 to %struct.Table*, !dbg !1684
  %56 = getelementptr inbounds %struct.Table* %55, i32 0, i32 10, !dbg !1684
  %57 = load %struct.GCObject** %56, align 4, !dbg !1684
  store %struct.GCObject* %57, %struct.GCObject** %2, align 4, !dbg !1684
  br label %4, !dbg !1684

; <label>:58                                      ; preds = %4
  ret void, !dbg !1685
}

declare hidden void @luaS_clearcache(%struct.global_State*) #2

; Function Attrs: nounwind
define internal i32 @iscleared(%struct.global_State* %g, %struct.lua_TValue* %o) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.global_State*, align 4
  %3 = alloca %struct.lua_TValue*, align 4
  store %struct.global_State* %g, %struct.global_State** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.global_State** %2}, metadata !1686), !dbg !1687
  store %struct.lua_TValue* %o, %struct.lua_TValue** %3, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %3}, metadata !1688), !dbg !1689
  %4 = load %struct.lua_TValue** %3, align 4, !dbg !1690
  %5 = getelementptr inbounds %struct.lua_TValue* %4, i32 0, i32 1, !dbg !1690
  %6 = load i32* %5, align 4, !dbg !1690
  %7 = and i32 %6, 64, !dbg !1690
  %8 = icmp ne i32 %7, 0, !dbg !1690
  br i1 %8, label %10, label %9, !dbg !1690

; <label>:9                                       ; preds = %0
  store i32 0, i32* %1, !dbg !1692
  br label %48, !dbg !1692

; <label>:10                                      ; preds = %0
  %11 = load %struct.lua_TValue** %3, align 4, !dbg !1694
  %12 = getelementptr inbounds %struct.lua_TValue* %11, i32 0, i32 1, !dbg !1694
  %13 = load i32* %12, align 4, !dbg !1694
  %14 = and i32 %13, 15, !dbg !1694
  %15 = icmp eq i32 %14, 4, !dbg !1694
  br i1 %15, label %16, label %39, !dbg !1694

; <label>:16                                      ; preds = %10
  %17 = load %struct.lua_TValue** %3, align 4, !dbg !1696
  %18 = getelementptr inbounds %struct.lua_TValue* %17, i32 0, i32 0, !dbg !1696
  %19 = bitcast %union.Value* %18 to %struct.GCObject**, !dbg !1696
  %20 = load %struct.GCObject** %19, align 4, !dbg !1696
  %21 = bitcast %struct.GCObject* %20 to %union.GCUnion*, !dbg !1696
  %22 = bitcast %union.GCUnion* %21 to %struct.TString*, !dbg !1696
  %23 = getelementptr inbounds %struct.TString* %22, i32 0, i32 2, !dbg !1696
  %24 = load i8* %23, align 1, !dbg !1696
  %25 = zext i8 %24 to i32, !dbg !1696
  %26 = and i32 %25, 3, !dbg !1696
  %27 = icmp ne i32 %26, 0, !dbg !1696
  br i1 %27, label %28, label %38, !dbg !1696

; <label>:28                                      ; preds = %16
  %29 = load %struct.global_State** %2, align 4, !dbg !1700
  %30 = load %struct.lua_TValue** %3, align 4, !dbg !1700
  %31 = getelementptr inbounds %struct.lua_TValue* %30, i32 0, i32 0, !dbg !1700
  %32 = bitcast %union.Value* %31 to %struct.GCObject**, !dbg !1700
  %33 = load %struct.GCObject** %32, align 4, !dbg !1700
  %34 = bitcast %struct.GCObject* %33 to %union.GCUnion*, !dbg !1700
  %35 = bitcast %union.GCUnion* %34 to %struct.TString*, !dbg !1700
  %36 = bitcast %struct.TString* %35 to %union.GCUnion*, !dbg !1700
  %37 = bitcast %union.GCUnion* %36 to %struct.GCObject*, !dbg !1700
  call void @reallymarkobject(%struct.global_State* %29, %struct.GCObject* %37), !dbg !1700
  br label %38, !dbg !1700

; <label>:38                                      ; preds = %28, %16
  store i32 0, i32* %1, !dbg !1702
  br label %48, !dbg !1702

; <label>:39                                      ; preds = %10
  %40 = load %struct.lua_TValue** %3, align 4, !dbg !1703
  %41 = getelementptr inbounds %struct.lua_TValue* %40, i32 0, i32 0, !dbg !1703
  %42 = bitcast %union.Value* %41 to %struct.GCObject**, !dbg !1703
  %43 = load %struct.GCObject** %42, align 4, !dbg !1703
  %44 = getelementptr inbounds %struct.GCObject* %43, i32 0, i32 2, !dbg !1703
  %45 = load i8* %44, align 1, !dbg !1703
  %46 = zext i8 %45 to i32, !dbg !1703
  %47 = and i32 %46, 3, !dbg !1703
  store i32 %47, i32* %1, !dbg !1703
  br label %48, !dbg !1703

; <label>:48                                      ; preds = %39, %38, %9
  %49 = load i32* %1, !dbg !1704
  ret i32 %49, !dbg !1704
}

; Function Attrs: nounwind
define internal void @removeentry(%struct.Node* %n) #0 {
  %1 = alloca %struct.Node*, align 4
  store %struct.Node* %n, %struct.Node** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.Node** %1}, metadata !1705), !dbg !1706
  %2 = load %struct.Node** %1, align 4, !dbg !1707
  %3 = getelementptr inbounds %struct.Node* %2, i32 0, i32 1, !dbg !1707
  %4 = bitcast %union.TKey* %3 to %struct.lua_TValue*, !dbg !1707
  %5 = getelementptr inbounds %struct.lua_TValue* %4, i32 0, i32 1, !dbg !1707
  %6 = load i32* %5, align 4, !dbg !1707
  %7 = and i32 %6, 64, !dbg !1707
  %8 = icmp ne i32 %7, 0, !dbg !1707
  br i1 %8, label %9, label %26, !dbg !1707

; <label>:9                                       ; preds = %0
  %10 = load %struct.Node** %1, align 4, !dbg !1709
  %11 = getelementptr inbounds %struct.Node* %10, i32 0, i32 1, !dbg !1709
  %12 = bitcast %union.TKey* %11 to %struct.lua_TValue*, !dbg !1709
  %13 = getelementptr inbounds %struct.lua_TValue* %12, i32 0, i32 0, !dbg !1709
  %14 = bitcast %union.Value* %13 to %struct.GCObject**, !dbg !1709
  %15 = load %struct.GCObject** %14, align 4, !dbg !1709
  %16 = getelementptr inbounds %struct.GCObject* %15, i32 0, i32 2, !dbg !1709
  %17 = load i8* %16, align 1, !dbg !1709
  %18 = zext i8 %17 to i32, !dbg !1709
  %19 = and i32 %18, 3, !dbg !1709
  %20 = icmp ne i32 %19, 0, !dbg !1709
  br i1 %20, label %21, label %26, !dbg !1709

; <label>:21                                      ; preds = %9
  %22 = load %struct.Node** %1, align 4, !dbg !1711
  %23 = getelementptr inbounds %struct.Node* %22, i32 0, i32 1, !dbg !1711
  %24 = bitcast %union.TKey* %23 to %struct.anon*, !dbg !1711
  %25 = getelementptr inbounds %struct.anon* %24, i32 0, i32 1, !dbg !1711
  store i32 10, i32* %25, align 4, !dbg !1711
  br label %26, !dbg !1711

; <label>:26                                      ; preds = %21, %9, %0
  ret void, !dbg !1712
}

; Function Attrs: nounwind
define internal i32 @traverseephemeron(%struct.global_State* %g, %struct.Table* %h) #0 {
  %1 = alloca %struct.global_State*, align 4
  %2 = alloca %struct.Table*, align 4
  %marked = alloca i32, align 4
  %hasclears = alloca i32, align 4
  %hasww = alloca i32, align 4
  %n = alloca %struct.Node*, align 4
  %limit = alloca %struct.Node*, align 4
  %i = alloca i32, align 4
  store %struct.global_State* %g, %struct.global_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.global_State** %1}, metadata !1713), !dbg !1714
  store %struct.Table* %h, %struct.Table** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.Table** %2}, metadata !1715), !dbg !1716
  call void @llvm.dbg.declare(metadata !{i32* %marked}, metadata !1717), !dbg !1718
  store i32 0, i32* %marked, align 4, !dbg !1719
  call void @llvm.dbg.declare(metadata !{i32* %hasclears}, metadata !1720), !dbg !1721
  store i32 0, i32* %hasclears, align 4, !dbg !1722
  call void @llvm.dbg.declare(metadata !{i32* %hasww}, metadata !1723), !dbg !1724
  store i32 0, i32* %hasww, align 4, !dbg !1725
  call void @llvm.dbg.declare(metadata !{%struct.Node** %n}, metadata !1726), !dbg !1727
  call void @llvm.dbg.declare(metadata !{%struct.Node** %limit}, metadata !1728), !dbg !1729
  %3 = load %struct.Table** %2, align 4, !dbg !1730
  %4 = getelementptr inbounds %struct.Table* %3, i32 0, i32 4, !dbg !1730
  %5 = load i8* %4, align 1, !dbg !1730
  %6 = zext i8 %5 to i32, !dbg !1730
  %7 = shl i32 1, %6, !dbg !1730
  %8 = load %struct.Table** %2, align 4, !dbg !1730
  %9 = getelementptr inbounds %struct.Table* %8, i32 0, i32 7, !dbg !1730
  %10 = load %struct.Node** %9, align 4, !dbg !1730
  %11 = getelementptr inbounds %struct.Node* %10, i32 %7, !dbg !1730
  store %struct.Node* %11, %struct.Node** %limit, align 4, !dbg !1730
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !1731), !dbg !1732
  store i32 0, i32* %i, align 4, !dbg !1733
  br label %12, !dbg !1733

; <label>:12                                      ; preds = %53, %0
  %13 = load i32* %i, align 4, !dbg !1735
  %14 = load %struct.Table** %2, align 4, !dbg !1735
  %15 = getelementptr inbounds %struct.Table* %14, i32 0, i32 5, !dbg !1735
  %16 = load i32* %15, align 4, !dbg !1735
  %17 = icmp ult i32 %13, %16, !dbg !1735
  br i1 %17, label %18, label %56, !dbg !1735

; <label>:18                                      ; preds = %12
  %19 = load i32* %i, align 4, !dbg !1738
  %20 = load %struct.Table** %2, align 4, !dbg !1738
  %21 = getelementptr inbounds %struct.Table* %20, i32 0, i32 6, !dbg !1738
  %22 = load %struct.lua_TValue** %21, align 4, !dbg !1738
  %23 = getelementptr inbounds %struct.lua_TValue* %22, i32 %19, !dbg !1738
  %24 = getelementptr inbounds %struct.lua_TValue* %23, i32 0, i32 1, !dbg !1738
  %25 = load i32* %24, align 4, !dbg !1738
  %26 = and i32 %25, 64, !dbg !1738
  %27 = icmp ne i32 %26, 0, !dbg !1738
  br i1 %27, label %28, label %52, !dbg !1738

; <label>:28                                      ; preds = %18
  %29 = load i32* %i, align 4, !dbg !1741
  %30 = load %struct.Table** %2, align 4, !dbg !1741
  %31 = getelementptr inbounds %struct.Table* %30, i32 0, i32 6, !dbg !1741
  %32 = load %struct.lua_TValue** %31, align 4, !dbg !1741
  %33 = getelementptr inbounds %struct.lua_TValue* %32, i32 %29, !dbg !1741
  %34 = getelementptr inbounds %struct.lua_TValue* %33, i32 0, i32 0, !dbg !1741
  %35 = bitcast %union.Value* %34 to %struct.GCObject**, !dbg !1741
  %36 = load %struct.GCObject** %35, align 4, !dbg !1741
  %37 = getelementptr inbounds %struct.GCObject* %36, i32 0, i32 2, !dbg !1741
  %38 = load i8* %37, align 1, !dbg !1741
  %39 = zext i8 %38 to i32, !dbg !1741
  %40 = and i32 %39, 3, !dbg !1741
  %41 = icmp ne i32 %40, 0, !dbg !1741
  br i1 %41, label %42, label %52, !dbg !1741

; <label>:42                                      ; preds = %28
  store i32 1, i32* %marked, align 4, !dbg !1743
  %43 = load %struct.global_State** %1, align 4, !dbg !1745
  %44 = load i32* %i, align 4, !dbg !1745
  %45 = load %struct.Table** %2, align 4, !dbg !1745
  %46 = getelementptr inbounds %struct.Table* %45, i32 0, i32 6, !dbg !1745
  %47 = load %struct.lua_TValue** %46, align 4, !dbg !1745
  %48 = getelementptr inbounds %struct.lua_TValue* %47, i32 %44, !dbg !1745
  %49 = getelementptr inbounds %struct.lua_TValue* %48, i32 0, i32 0, !dbg !1745
  %50 = bitcast %union.Value* %49 to %struct.GCObject**, !dbg !1745
  %51 = load %struct.GCObject** %50, align 4, !dbg !1745
  call void @reallymarkobject(%struct.global_State* %43, %struct.GCObject* %51), !dbg !1745
  br label %52, !dbg !1746

; <label>:52                                      ; preds = %42, %28, %18
  br label %53, !dbg !1747

; <label>:53                                      ; preds = %52
  %54 = load i32* %i, align 4, !dbg !1748
  %55 = add i32 %54, 1, !dbg !1748
  store i32 %55, i32* %i, align 4, !dbg !1748
  br label %12, !dbg !1748

; <label>:56                                      ; preds = %12
  %57 = load %struct.Table** %2, align 4, !dbg !1749
  %58 = getelementptr inbounds %struct.Table* %57, i32 0, i32 7, !dbg !1749
  %59 = load %struct.Node** %58, align 4, !dbg !1749
  %60 = getelementptr inbounds %struct.Node* %59, i32 0, !dbg !1749
  store %struct.Node* %60, %struct.Node** %n, align 4, !dbg !1749
  br label %61, !dbg !1749

; <label>:61                                      ; preds = %128, %56
  %62 = load %struct.Node** %n, align 4, !dbg !1751
  %63 = load %struct.Node** %limit, align 4, !dbg !1751
  %64 = icmp ult %struct.Node* %62, %63, !dbg !1751
  br i1 %64, label %65, label %131, !dbg !1751

; <label>:65                                      ; preds = %61
  %66 = load %struct.Node** %n, align 4, !dbg !1754
  %67 = getelementptr inbounds %struct.Node* %66, i32 0, i32 0, !dbg !1754
  %68 = getelementptr inbounds %struct.lua_TValue* %67, i32 0, i32 1, !dbg !1754
  %69 = load i32* %68, align 4, !dbg !1754
  %70 = icmp eq i32 %69, 0, !dbg !1754
  br i1 %70, label %71, label %73, !dbg !1754

; <label>:71                                      ; preds = %65
  %72 = load %struct.Node** %n, align 4, !dbg !1757
  call void @removeentry(%struct.Node* %72), !dbg !1757
  br label %127, !dbg !1757

; <label>:73                                      ; preds = %65
  %74 = load %struct.global_State** %1, align 4, !dbg !1758
  %75 = load %struct.Node** %n, align 4, !dbg !1758
  %76 = getelementptr inbounds %struct.Node* %75, i32 0, i32 1, !dbg !1758
  %77 = bitcast %union.TKey* %76 to %struct.lua_TValue*, !dbg !1758
  %78 = call i32 @iscleared(%struct.global_State* %74, %struct.lua_TValue* %77), !dbg !1758
  %79 = icmp ne i32 %78, 0, !dbg !1758
  br i1 %79, label %80, label %100, !dbg !1758

; <label>:80                                      ; preds = %73
  store i32 1, i32* %hasclears, align 4, !dbg !1760
  %81 = load %struct.Node** %n, align 4, !dbg !1762
  %82 = getelementptr inbounds %struct.Node* %81, i32 0, i32 0, !dbg !1762
  %83 = getelementptr inbounds %struct.lua_TValue* %82, i32 0, i32 1, !dbg !1762
  %84 = load i32* %83, align 4, !dbg !1762
  %85 = and i32 %84, 64, !dbg !1762
  %86 = icmp ne i32 %85, 0, !dbg !1762
  br i1 %86, label %87, label %99, !dbg !1762

; <label>:87                                      ; preds = %80
  %88 = load %struct.Node** %n, align 4, !dbg !1764
  %89 = getelementptr inbounds %struct.Node* %88, i32 0, i32 0, !dbg !1764
  %90 = getelementptr inbounds %struct.lua_TValue* %89, i32 0, i32 0, !dbg !1764
  %91 = bitcast %union.Value* %90 to %struct.GCObject**, !dbg !1764
  %92 = load %struct.GCObject** %91, align 4, !dbg !1764
  %93 = getelementptr inbounds %struct.GCObject* %92, i32 0, i32 2, !dbg !1764
  %94 = load i8* %93, align 1, !dbg !1764
  %95 = zext i8 %94 to i32, !dbg !1764
  %96 = and i32 %95, 3, !dbg !1764
  %97 = icmp ne i32 %96, 0, !dbg !1764
  br i1 %97, label %98, label %99, !dbg !1764

; <label>:98                                      ; preds = %87
  store i32 1, i32* %hasww, align 4, !dbg !1766
  br label %99, !dbg !1766

; <label>:99                                      ; preds = %98, %87, %80
  br label %126, !dbg !1767

; <label>:100                                     ; preds = %73
  %101 = load %struct.Node** %n, align 4, !dbg !1768
  %102 = getelementptr inbounds %struct.Node* %101, i32 0, i32 0, !dbg !1768
  %103 = getelementptr inbounds %struct.lua_TValue* %102, i32 0, i32 1, !dbg !1768
  %104 = load i32* %103, align 4, !dbg !1768
  %105 = and i32 %104, 64, !dbg !1768
  %106 = icmp ne i32 %105, 0, !dbg !1768
  br i1 %106, label %107, label %125, !dbg !1768

; <label>:107                                     ; preds = %100
  %108 = load %struct.Node** %n, align 4, !dbg !1770
  %109 = getelementptr inbounds %struct.Node* %108, i32 0, i32 0, !dbg !1770
  %110 = getelementptr inbounds %struct.lua_TValue* %109, i32 0, i32 0, !dbg !1770
  %111 = bitcast %union.Value* %110 to %struct.GCObject**, !dbg !1770
  %112 = load %struct.GCObject** %111, align 4, !dbg !1770
  %113 = getelementptr inbounds %struct.GCObject* %112, i32 0, i32 2, !dbg !1770
  %114 = load i8* %113, align 1, !dbg !1770
  %115 = zext i8 %114 to i32, !dbg !1770
  %116 = and i32 %115, 3, !dbg !1770
  %117 = icmp ne i32 %116, 0, !dbg !1770
  br i1 %117, label %118, label %125, !dbg !1770

; <label>:118                                     ; preds = %107
  store i32 1, i32* %marked, align 4, !dbg !1772
  %119 = load %struct.global_State** %1, align 4, !dbg !1774
  %120 = load %struct.Node** %n, align 4, !dbg !1774
  %121 = getelementptr inbounds %struct.Node* %120, i32 0, i32 0, !dbg !1774
  %122 = getelementptr inbounds %struct.lua_TValue* %121, i32 0, i32 0, !dbg !1774
  %123 = bitcast %union.Value* %122 to %struct.GCObject**, !dbg !1774
  %124 = load %struct.GCObject** %123, align 4, !dbg !1774
  call void @reallymarkobject(%struct.global_State* %119, %struct.GCObject* %124), !dbg !1774
  br label %125, !dbg !1775

; <label>:125                                     ; preds = %118, %107, %100
  br label %126

; <label>:126                                     ; preds = %125, %99
  br label %127

; <label>:127                                     ; preds = %126, %71
  br label %128, !dbg !1776

; <label>:128                                     ; preds = %127
  %129 = load %struct.Node** %n, align 4, !dbg !1777
  %130 = getelementptr inbounds %struct.Node* %129, i32 1, !dbg !1777
  store %struct.Node* %130, %struct.Node** %n, align 4, !dbg !1777
  br label %61, !dbg !1777

; <label>:131                                     ; preds = %61
  %132 = load %struct.global_State** %1, align 4, !dbg !1778
  %133 = getelementptr inbounds %struct.global_State* %132, i32 0, i32 10, !dbg !1778
  %134 = load i8* %133, align 1, !dbg !1778
  %135 = zext i8 %134 to i32, !dbg !1778
  %136 = icmp eq i32 %135, 0, !dbg !1778
  br i1 %136, label %137, label %148, !dbg !1778

; <label>:137                                     ; preds = %131
  %138 = load %struct.global_State** %1, align 4, !dbg !1780
  %139 = getelementptr inbounds %struct.global_State* %138, i32 0, i32 17, !dbg !1780
  %140 = load %struct.GCObject** %139, align 4, !dbg !1780
  %141 = load %struct.Table** %2, align 4, !dbg !1780
  %142 = getelementptr inbounds %struct.Table* %141, i32 0, i32 10, !dbg !1780
  store %struct.GCObject* %140, %struct.GCObject** %142, align 4, !dbg !1780
  %143 = load %struct.Table** %2, align 4, !dbg !1780
  %144 = bitcast %struct.Table* %143 to %union.GCUnion*, !dbg !1780
  %145 = bitcast %union.GCUnion* %144 to %struct.GCObject*, !dbg !1780
  %146 = load %struct.global_State** %1, align 4, !dbg !1780
  %147 = getelementptr inbounds %struct.global_State* %146, i32 0, i32 17, !dbg !1780
  store %struct.GCObject* %145, %struct.GCObject** %147, align 4, !dbg !1780
  br label %178, !dbg !1780

; <label>:148                                     ; preds = %131
  %149 = load i32* %hasww, align 4, !dbg !1781
  %150 = icmp ne i32 %149, 0, !dbg !1781
  br i1 %150, label %151, label %162, !dbg !1781

; <label>:151                                     ; preds = %148
  %152 = load %struct.global_State** %1, align 4, !dbg !1783
  %153 = getelementptr inbounds %struct.global_State* %152, i32 0, i32 19, !dbg !1783
  %154 = load %struct.GCObject** %153, align 4, !dbg !1783
  %155 = load %struct.Table** %2, align 4, !dbg !1783
  %156 = getelementptr inbounds %struct.Table* %155, i32 0, i32 10, !dbg !1783
  store %struct.GCObject* %154, %struct.GCObject** %156, align 4, !dbg !1783
  %157 = load %struct.Table** %2, align 4, !dbg !1783
  %158 = bitcast %struct.Table* %157 to %union.GCUnion*, !dbg !1783
  %159 = bitcast %union.GCUnion* %158 to %struct.GCObject*, !dbg !1783
  %160 = load %struct.global_State** %1, align 4, !dbg !1783
  %161 = getelementptr inbounds %struct.global_State* %160, i32 0, i32 19, !dbg !1783
  store %struct.GCObject* %159, %struct.GCObject** %161, align 4, !dbg !1783
  br label %177, !dbg !1783

; <label>:162                                     ; preds = %148
  %163 = load i32* %hasclears, align 4, !dbg !1784
  %164 = icmp ne i32 %163, 0, !dbg !1784
  br i1 %164, label %165, label %176, !dbg !1784

; <label>:165                                     ; preds = %162
  %166 = load %struct.global_State** %1, align 4, !dbg !1786
  %167 = getelementptr inbounds %struct.global_State* %166, i32 0, i32 20, !dbg !1786
  %168 = load %struct.GCObject** %167, align 4, !dbg !1786
  %169 = load %struct.Table** %2, align 4, !dbg !1786
  %170 = getelementptr inbounds %struct.Table* %169, i32 0, i32 10, !dbg !1786
  store %struct.GCObject* %168, %struct.GCObject** %170, align 4, !dbg !1786
  %171 = load %struct.Table** %2, align 4, !dbg !1786
  %172 = bitcast %struct.Table* %171 to %union.GCUnion*, !dbg !1786
  %173 = bitcast %union.GCUnion* %172 to %struct.GCObject*, !dbg !1786
  %174 = load %struct.global_State** %1, align 4, !dbg !1786
  %175 = getelementptr inbounds %struct.global_State* %174, i32 0, i32 20, !dbg !1786
  store %struct.GCObject* %173, %struct.GCObject** %175, align 4, !dbg !1786
  br label %176, !dbg !1786

; <label>:176                                     ; preds = %165, %162
  br label %177

; <label>:177                                     ; preds = %176, %151
  br label %178

; <label>:178                                     ; preds = %177, %137
  %179 = load i32* %marked, align 4, !dbg !1787
  ret i32 %179, !dbg !1787
}

; Function Attrs: nounwind
define internal i32 @traversetable(%struct.global_State* %g, %struct.Table* %h) #0 {
  %1 = alloca %struct.global_State*, align 4
  %2 = alloca %struct.Table*, align 4
  %weakkey = alloca i8*, align 4
  %weakvalue = alloca i8*, align 4
  %mode = alloca %struct.lua_TValue*, align 4
  store %struct.global_State* %g, %struct.global_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.global_State** %1}, metadata !1788), !dbg !1789
  store %struct.Table* %h, %struct.Table** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.Table** %2}, metadata !1790), !dbg !1791
  call void @llvm.dbg.declare(metadata !{i8** %weakkey}, metadata !1792), !dbg !1793
  call void @llvm.dbg.declare(metadata !{i8** %weakvalue}, metadata !1794), !dbg !1795
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %mode}, metadata !1796), !dbg !1797
  %3 = load %struct.Table** %2, align 4, !dbg !1798
  %4 = getelementptr inbounds %struct.Table* %3, i32 0, i32 9, !dbg !1798
  %5 = load %struct.Table** %4, align 4, !dbg !1798
  %6 = icmp eq %struct.Table* %5, null, !dbg !1798
  br i1 %6, label %7, label %8, !dbg !1798

; <label>:7                                       ; preds = %0
  br label %29, !dbg !1799

; <label>:8                                       ; preds = %0
  %9 = load %struct.Table** %2, align 4, !dbg !1801
  %10 = getelementptr inbounds %struct.Table* %9, i32 0, i32 9, !dbg !1801
  %11 = load %struct.Table** %10, align 4, !dbg !1801
  %12 = getelementptr inbounds %struct.Table* %11, i32 0, i32 3, !dbg !1801
  %13 = load i8* %12, align 1, !dbg !1801
  %14 = zext i8 %13 to i32, !dbg !1801
  %15 = and i32 %14, 8, !dbg !1801
  %16 = icmp ne i32 %15, 0, !dbg !1801
  br i1 %16, label %17, label %18, !dbg !1801

; <label>:17                                      ; preds = %8
  br label %27, !dbg !1803

; <label>:18                                      ; preds = %8
  %19 = load %struct.Table** %2, align 4, !dbg !1805
  %20 = getelementptr inbounds %struct.Table* %19, i32 0, i32 9, !dbg !1805
  %21 = load %struct.Table** %20, align 4, !dbg !1805
  %22 = load %struct.global_State** %1, align 4, !dbg !1805
  %23 = getelementptr inbounds %struct.global_State* %22, i32 0, i32 31, !dbg !1805
  %24 = getelementptr inbounds [24 x %struct.TString*]* %23, i32 0, i32 3, !dbg !1805
  %25 = load %struct.TString** %24, align 4, !dbg !1805
  %26 = call %struct.lua_TValue* @luaT_gettm(%struct.Table* %21, i32 3, %struct.TString* %25), !dbg !1805
  br label %27, !dbg !1805

; <label>:27                                      ; preds = %18, %17
  %28 = phi %struct.lua_TValue* [ null, %17 ], [ %26, %18 ], !dbg !1807
  br label %29, !dbg !1808

; <label>:29                                      ; preds = %27, %7
  %30 = phi %struct.lua_TValue* [ null, %7 ], [ %28, %27 ], !dbg !1807
  store %struct.lua_TValue* %30, %struct.lua_TValue** %mode, align 4, !dbg !1811
  %31 = load %struct.Table** %2, align 4, !dbg !1814
  %32 = getelementptr inbounds %struct.Table* %31, i32 0, i32 9, !dbg !1814
  %33 = load %struct.Table** %32, align 4, !dbg !1814
  %34 = icmp ne %struct.Table* %33, null, !dbg !1814
  br i1 %34, label %35, label %52, !dbg !1814

; <label>:35                                      ; preds = %29
  %36 = load %struct.Table** %2, align 4, !dbg !1817
  %37 = getelementptr inbounds %struct.Table* %36, i32 0, i32 9, !dbg !1817
  %38 = load %struct.Table** %37, align 4, !dbg !1817
  %39 = getelementptr inbounds %struct.Table* %38, i32 0, i32 2, !dbg !1817
  %40 = load i8* %39, align 1, !dbg !1817
  %41 = zext i8 %40 to i32, !dbg !1817
  %42 = and i32 %41, 3, !dbg !1817
  %43 = icmp ne i32 %42, 0, !dbg !1817
  br i1 %43, label %44, label %51, !dbg !1817

; <label>:44                                      ; preds = %35
  %45 = load %struct.global_State** %1, align 4, !dbg !1821
  %46 = load %struct.Table** %2, align 4, !dbg !1821
  %47 = getelementptr inbounds %struct.Table* %46, i32 0, i32 9, !dbg !1821
  %48 = load %struct.Table** %47, align 4, !dbg !1821
  %49 = bitcast %struct.Table* %48 to %union.GCUnion*, !dbg !1821
  %50 = bitcast %union.GCUnion* %49 to %struct.GCObject*, !dbg !1821
  call void @reallymarkobject(%struct.global_State* %45, %struct.GCObject* %50), !dbg !1821
  br label %51, !dbg !1821

; <label>:51                                      ; preds = %44, %35
  br label %52, !dbg !1823

; <label>:52                                      ; preds = %51, %29
  %53 = load %struct.lua_TValue** %mode, align 4, !dbg !1826
  %54 = icmp ne %struct.lua_TValue* %53, null, !dbg !1826
  br i1 %54, label %55, label %119, !dbg !1826

; <label>:55                                      ; preds = %52
  %56 = load %struct.lua_TValue** %mode, align 4, !dbg !1828
  %57 = getelementptr inbounds %struct.lua_TValue* %56, i32 0, i32 1, !dbg !1828
  %58 = load i32* %57, align 4, !dbg !1828
  %59 = and i32 %58, 15, !dbg !1828
  %60 = icmp eq i32 %59, 4, !dbg !1828
  br i1 %60, label %61, label %119, !dbg !1828

; <label>:61                                      ; preds = %55
  %62 = load %struct.lua_TValue** %mode, align 4, !dbg !1830
  %63 = getelementptr inbounds %struct.lua_TValue* %62, i32 0, i32 0, !dbg !1830
  %64 = bitcast %union.Value* %63 to %struct.GCObject**, !dbg !1830
  %65 = load %struct.GCObject** %64, align 4, !dbg !1830
  %66 = bitcast %struct.GCObject* %65 to %union.GCUnion*, !dbg !1830
  %67 = bitcast %union.GCUnion* %66 to %struct.TString*, !dbg !1830
  %68 = bitcast %struct.TString* %67 to i8*, !dbg !1830
  %69 = getelementptr inbounds i8* %68, i32 16, !dbg !1830
  %70 = call i8* @strchr(i8* %69, i32 107) #7, !dbg !1830
  store i8* %70, i8** %weakkey, align 4, !dbg !1830
  %71 = load %struct.lua_TValue** %mode, align 4, !dbg !1831
  %72 = getelementptr inbounds %struct.lua_TValue* %71, i32 0, i32 0, !dbg !1831
  %73 = bitcast %union.Value* %72 to %struct.GCObject**, !dbg !1831
  %74 = load %struct.GCObject** %73, align 4, !dbg !1831
  %75 = bitcast %struct.GCObject* %74 to %union.GCUnion*, !dbg !1831
  %76 = bitcast %union.GCUnion* %75 to %struct.TString*, !dbg !1831
  %77 = bitcast %struct.TString* %76 to i8*, !dbg !1831
  %78 = getelementptr inbounds i8* %77, i32 16, !dbg !1831
  %79 = call i8* @strchr(i8* %78, i32 118) #7, !dbg !1831
  store i8* %79, i8** %weakvalue, align 4, !dbg !1831
  %80 = load i8** %weakkey, align 4, !dbg !1831
  %81 = icmp ne i8* %80, null, !dbg !1831
  br i1 %81, label %85, label %82, !dbg !1831

; <label>:82                                      ; preds = %61
  %83 = load i8** %weakvalue, align 4, !dbg !1832
  %84 = icmp ne i8* %83, null, !dbg !1832
  br label %85, !dbg !1832

; <label>:85                                      ; preds = %82, %61
  %86 = phi i1 [ true, %61 ], [ %84, %82 ]
  br i1 %86, label %87, label %119, !dbg !1834

; <label>:87                                      ; preds = %85
  %88 = load %struct.Table** %2, align 4, !dbg !1837
  %89 = getelementptr inbounds %struct.Table* %88, i32 0, i32 2, !dbg !1837
  %90 = load i8* %89, align 1, !dbg !1837
  %91 = zext i8 %90 to i32, !dbg !1837
  %92 = and i32 %91, 251, !dbg !1837
  %93 = trunc i32 %92 to i8, !dbg !1837
  store i8 %93, i8* %89, align 1, !dbg !1837
  %94 = load i8** %weakkey, align 4, !dbg !1839
  %95 = icmp ne i8* %94, null, !dbg !1839
  br i1 %95, label %99, label %96, !dbg !1839

; <label>:96                                      ; preds = %87
  %97 = load %struct.global_State** %1, align 4, !dbg !1841
  %98 = load %struct.Table** %2, align 4, !dbg !1841
  call void @traverseweakvalue(%struct.global_State* %97, %struct.Table* %98), !dbg !1841
  br label %118, !dbg !1841

; <label>:99                                      ; preds = %87
  %100 = load i8** %weakvalue, align 4, !dbg !1842
  %101 = icmp ne i8* %100, null, !dbg !1842
  br i1 %101, label %106, label %102, !dbg !1842

; <label>:102                                     ; preds = %99
  %103 = load %struct.global_State** %1, align 4, !dbg !1844
  %104 = load %struct.Table** %2, align 4, !dbg !1844
  %105 = call i32 @traverseephemeron(%struct.global_State* %103, %struct.Table* %104), !dbg !1844
  br label %117, !dbg !1844

; <label>:106                                     ; preds = %99
  %107 = load %struct.global_State** %1, align 4, !dbg !1845
  %108 = getelementptr inbounds %struct.global_State* %107, i32 0, i32 20, !dbg !1845
  %109 = load %struct.GCObject** %108, align 4, !dbg !1845
  %110 = load %struct.Table** %2, align 4, !dbg !1845
  %111 = getelementptr inbounds %struct.Table* %110, i32 0, i32 10, !dbg !1845
  store %struct.GCObject* %109, %struct.GCObject** %111, align 4, !dbg !1845
  %112 = load %struct.Table** %2, align 4, !dbg !1845
  %113 = bitcast %struct.Table* %112 to %union.GCUnion*, !dbg !1845
  %114 = bitcast %union.GCUnion* %113 to %struct.GCObject*, !dbg !1845
  %115 = load %struct.global_State** %1, align 4, !dbg !1845
  %116 = getelementptr inbounds %struct.global_State* %115, i32 0, i32 20, !dbg !1845
  store %struct.GCObject* %114, %struct.GCObject** %116, align 4, !dbg !1845
  br label %117

; <label>:117                                     ; preds = %106, %102
  br label %118

; <label>:118                                     ; preds = %117, %96
  br label %122, !dbg !1846

; <label>:119                                     ; preds = %85, %55, %52
  %120 = load %struct.global_State** %1, align 4, !dbg !1847
  %121 = load %struct.Table** %2, align 4, !dbg !1847
  call void @traversestrongtable(%struct.global_State* %120, %struct.Table* %121), !dbg !1847
  br label %122

; <label>:122                                     ; preds = %119, %118
  %123 = load %struct.Table** %2, align 4, !dbg !1848
  %124 = getelementptr inbounds %struct.Table* %123, i32 0, i32 5, !dbg !1848
  %125 = load i32* %124, align 4, !dbg !1848
  %126 = mul i32 16, %125, !dbg !1848
  %127 = add i32 32, %126, !dbg !1848
  %128 = load %struct.Table** %2, align 4, !dbg !1848
  %129 = getelementptr inbounds %struct.Table* %128, i32 0, i32 4, !dbg !1848
  %130 = load i8* %129, align 1, !dbg !1848
  %131 = zext i8 %130 to i32, !dbg !1848
  %132 = shl i32 1, %131, !dbg !1848
  %133 = mul i32 32, %132, !dbg !1848
  %134 = add i32 %127, %133, !dbg !1848
  ret i32 %134, !dbg !1848
}

; Function Attrs: nounwind
define internal i32 @traverseLclosure(%struct.global_State* %g, %struct.LClosure* %cl) #0 {
  %1 = alloca %struct.global_State*, align 4
  %2 = alloca %struct.LClosure*, align 4
  %i = alloca i32, align 4
  %uv = alloca %struct.UpVal*, align 4
  store %struct.global_State* %g, %struct.global_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.global_State** %1}, metadata !1849), !dbg !1850
  store %struct.LClosure* %cl, %struct.LClosure** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.LClosure** %2}, metadata !1851), !dbg !1852
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !1853), !dbg !1854
  %3 = load %struct.LClosure** %2, align 4, !dbg !1855
  %4 = getelementptr inbounds %struct.LClosure* %3, i32 0, i32 5, !dbg !1855
  %5 = load %struct.Proto** %4, align 4, !dbg !1855
  %6 = icmp ne %struct.Proto* %5, null, !dbg !1855
  br i1 %6, label %7, label %24, !dbg !1855

; <label>:7                                       ; preds = %0
  %8 = load %struct.LClosure** %2, align 4, !dbg !1858
  %9 = getelementptr inbounds %struct.LClosure* %8, i32 0, i32 5, !dbg !1858
  %10 = load %struct.Proto** %9, align 4, !dbg !1858
  %11 = getelementptr inbounds %struct.Proto* %10, i32 0, i32 2, !dbg !1858
  %12 = load i8* %11, align 1, !dbg !1858
  %13 = zext i8 %12 to i32, !dbg !1858
  %14 = and i32 %13, 3, !dbg !1858
  %15 = icmp ne i32 %14, 0, !dbg !1858
  br i1 %15, label %16, label %23, !dbg !1858

; <label>:16                                      ; preds = %7
  %17 = load %struct.global_State** %1, align 4, !dbg !1862
  %18 = load %struct.LClosure** %2, align 4, !dbg !1862
  %19 = getelementptr inbounds %struct.LClosure* %18, i32 0, i32 5, !dbg !1862
  %20 = load %struct.Proto** %19, align 4, !dbg !1862
  %21 = bitcast %struct.Proto* %20 to %union.GCUnion*, !dbg !1862
  %22 = bitcast %union.GCUnion* %21 to %struct.GCObject*, !dbg !1862
  call void @reallymarkobject(%struct.global_State* %17, %struct.GCObject* %22), !dbg !1862
  br label %23, !dbg !1862

; <label>:23                                      ; preds = %16, %7
  br label %24, !dbg !1864

; <label>:24                                      ; preds = %23, %0
  store i32 0, i32* %i, align 4, !dbg !1867
  br label %25, !dbg !1867

; <label>:25                                      ; preds = %90, %24
  %26 = load i32* %i, align 4, !dbg !1869
  %27 = load %struct.LClosure** %2, align 4, !dbg !1869
  %28 = getelementptr inbounds %struct.LClosure* %27, i32 0, i32 3, !dbg !1869
  %29 = load i8* %28, align 1, !dbg !1869
  %30 = zext i8 %29 to i32, !dbg !1869
  %31 = icmp slt i32 %26, %30, !dbg !1869
  br i1 %31, label %32, label %93, !dbg !1869

; <label>:32                                      ; preds = %25
  call void @llvm.dbg.declare(metadata !{%struct.UpVal** %uv}, metadata !1872), !dbg !1874
  %33 = load i32* %i, align 4, !dbg !1875
  %34 = load %struct.LClosure** %2, align 4, !dbg !1875
  %35 = getelementptr inbounds %struct.LClosure* %34, i32 0, i32 6, !dbg !1875
  %36 = getelementptr inbounds [1 x %struct.UpVal*]* %35, i32 0, i32 %33, !dbg !1875
  %37 = load %struct.UpVal** %36, align 4, !dbg !1875
  store %struct.UpVal* %37, %struct.UpVal** %uv, align 4, !dbg !1875
  %38 = load %struct.UpVal** %uv, align 4, !dbg !1876
  %39 = icmp ne %struct.UpVal* %38, null, !dbg !1876
  br i1 %39, label %40, label %89, !dbg !1876

; <label>:40                                      ; preds = %32
  %41 = load %struct.UpVal** %uv, align 4, !dbg !1878
  %42 = getelementptr inbounds %struct.UpVal* %41, i32 0, i32 0, !dbg !1878
  %43 = load %struct.lua_TValue** %42, align 4, !dbg !1878
  %44 = load %struct.UpVal** %uv, align 4, !dbg !1878
  %45 = getelementptr inbounds %struct.UpVal* %44, i32 0, i32 2, !dbg !1878
  %46 = bitcast %union.anon.3* %45 to %struct.lua_TValue*, !dbg !1878
  %47 = icmp ne %struct.lua_TValue* %43, %46, !dbg !1878
  br i1 %47, label %48, label %59, !dbg !1878

; <label>:48                                      ; preds = %40
  %49 = load %struct.global_State** %1, align 4, !dbg !1881
  %50 = getelementptr inbounds %struct.global_State* %49, i32 0, i32 10, !dbg !1881
  %51 = load i8* %50, align 1, !dbg !1881
  %52 = zext i8 %51 to i32, !dbg !1881
  %53 = icmp ne i32 %52, 8, !dbg !1881
  br i1 %53, label %54, label %59, !dbg !1881

; <label>:54                                      ; preds = %48
  %55 = load %struct.UpVal** %uv, align 4, !dbg !1883
  %56 = getelementptr inbounds %struct.UpVal* %55, i32 0, i32 2, !dbg !1883
  %57 = bitcast %union.anon.3* %56 to %struct.anon.4*, !dbg !1883
  %58 = getelementptr inbounds %struct.anon.4* %57, i32 0, i32 1, !dbg !1883
  store i32 1, i32* %58, align 4, !dbg !1883
  br label %88, !dbg !1883

; <label>:59                                      ; preds = %48, %40
  %60 = load %struct.UpVal** %uv, align 4, !dbg !1884
  %61 = getelementptr inbounds %struct.UpVal* %60, i32 0, i32 0, !dbg !1884
  %62 = load %struct.lua_TValue** %61, align 4, !dbg !1884
  %63 = getelementptr inbounds %struct.lua_TValue* %62, i32 0, i32 1, !dbg !1884
  %64 = load i32* %63, align 4, !dbg !1884
  %65 = and i32 %64, 64, !dbg !1884
  %66 = icmp ne i32 %65, 0, !dbg !1884
  br i1 %66, label %67, label %87, !dbg !1884

; <label>:67                                      ; preds = %59
  %68 = load %struct.UpVal** %uv, align 4, !dbg !1887
  %69 = getelementptr inbounds %struct.UpVal* %68, i32 0, i32 0, !dbg !1887
  %70 = load %struct.lua_TValue** %69, align 4, !dbg !1887
  %71 = getelementptr inbounds %struct.lua_TValue* %70, i32 0, i32 0, !dbg !1887
  %72 = bitcast %union.Value* %71 to %struct.GCObject**, !dbg !1887
  %73 = load %struct.GCObject** %72, align 4, !dbg !1887
  %74 = getelementptr inbounds %struct.GCObject* %73, i32 0, i32 2, !dbg !1887
  %75 = load i8* %74, align 1, !dbg !1887
  %76 = zext i8 %75 to i32, !dbg !1887
  %77 = and i32 %76, 3, !dbg !1887
  %78 = icmp ne i32 %77, 0, !dbg !1887
  br i1 %78, label %79, label %87, !dbg !1887

; <label>:79                                      ; preds = %67
  %80 = load %struct.global_State** %1, align 4, !dbg !1889
  %81 = load %struct.UpVal** %uv, align 4, !dbg !1889
  %82 = getelementptr inbounds %struct.UpVal* %81, i32 0, i32 0, !dbg !1889
  %83 = load %struct.lua_TValue** %82, align 4, !dbg !1889
  %84 = getelementptr inbounds %struct.lua_TValue* %83, i32 0, i32 0, !dbg !1889
  %85 = bitcast %union.Value* %84 to %struct.GCObject**, !dbg !1889
  %86 = load %struct.GCObject** %85, align 4, !dbg !1889
  call void @reallymarkobject(%struct.global_State* %80, %struct.GCObject* %86), !dbg !1889
  br label %87, !dbg !1889

; <label>:87                                      ; preds = %79, %67, %59
  br label %88

; <label>:88                                      ; preds = %87, %54
  br label %89, !dbg !1891

; <label>:89                                      ; preds = %88, %32
  br label %90, !dbg !1892

; <label>:90                                      ; preds = %89
  %91 = load i32* %i, align 4, !dbg !1893
  %92 = add nsw i32 %91, 1, !dbg !1893
  store i32 %92, i32* %i, align 4, !dbg !1893
  br label %25, !dbg !1893

; <label>:93                                      ; preds = %25
  %94 = load %struct.LClosure** %2, align 4, !dbg !1894
  %95 = getelementptr inbounds %struct.LClosure* %94, i32 0, i32 3, !dbg !1894
  %96 = load i8* %95, align 1, !dbg !1894
  %97 = zext i8 %96 to i32, !dbg !1894
  %98 = sub nsw i32 %97, 1, !dbg !1894
  %99 = mul i32 4, %98, !dbg !1894
  %100 = add nsw i32 20, %99, !dbg !1894
  ret i32 %100, !dbg !1894
}

; Function Attrs: nounwind
define internal i32 @traverseCclosure(%struct.global_State* %g, %struct.CClosure* %cl) #0 {
  %1 = alloca %struct.global_State*, align 4
  %2 = alloca %struct.CClosure*, align 4
  %i = alloca i32, align 4
  store %struct.global_State* %g, %struct.global_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.global_State** %1}, metadata !1895), !dbg !1896
  store %struct.CClosure* %cl, %struct.CClosure** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.CClosure** %2}, metadata !1897), !dbg !1898
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !1899), !dbg !1900
  store i32 0, i32* %i, align 4, !dbg !1901
  br label %3, !dbg !1901

; <label>:3                                       ; preds = %42, %0
  %4 = load i32* %i, align 4, !dbg !1903
  %5 = load %struct.CClosure** %2, align 4, !dbg !1903
  %6 = getelementptr inbounds %struct.CClosure* %5, i32 0, i32 3, !dbg !1903
  %7 = load i8* %6, align 1, !dbg !1903
  %8 = zext i8 %7 to i32, !dbg !1903
  %9 = icmp slt i32 %4, %8, !dbg !1903
  br i1 %9, label %10, label %45, !dbg !1903

; <label>:10                                      ; preds = %3
  %11 = load i32* %i, align 4, !dbg !1906
  %12 = load %struct.CClosure** %2, align 4, !dbg !1906
  %13 = getelementptr inbounds %struct.CClosure* %12, i32 0, i32 6, !dbg !1906
  %14 = getelementptr inbounds [1 x %struct.lua_TValue]* %13, i32 0, i32 %11, !dbg !1906
  %15 = getelementptr inbounds %struct.lua_TValue* %14, i32 0, i32 1, !dbg !1906
  %16 = load i32* %15, align 4, !dbg !1906
  %17 = and i32 %16, 64, !dbg !1906
  %18 = icmp ne i32 %17, 0, !dbg !1906
  br i1 %18, label %19, label %41, !dbg !1906

; <label>:19                                      ; preds = %10
  %20 = load i32* %i, align 4, !dbg !1909
  %21 = load %struct.CClosure** %2, align 4, !dbg !1909
  %22 = getelementptr inbounds %struct.CClosure* %21, i32 0, i32 6, !dbg !1909
  %23 = getelementptr inbounds [1 x %struct.lua_TValue]* %22, i32 0, i32 %20, !dbg !1909
  %24 = getelementptr inbounds %struct.lua_TValue* %23, i32 0, i32 0, !dbg !1909
  %25 = bitcast %union.Value* %24 to %struct.GCObject**, !dbg !1909
  %26 = load %struct.GCObject** %25, align 4, !dbg !1909
  %27 = getelementptr inbounds %struct.GCObject* %26, i32 0, i32 2, !dbg !1909
  %28 = load i8* %27, align 1, !dbg !1909
  %29 = zext i8 %28 to i32, !dbg !1909
  %30 = and i32 %29, 3, !dbg !1909
  %31 = icmp ne i32 %30, 0, !dbg !1909
  br i1 %31, label %32, label %41, !dbg !1909

; <label>:32                                      ; preds = %19
  %33 = load %struct.global_State** %1, align 4, !dbg !1911
  %34 = load i32* %i, align 4, !dbg !1911
  %35 = load %struct.CClosure** %2, align 4, !dbg !1911
  %36 = getelementptr inbounds %struct.CClosure* %35, i32 0, i32 6, !dbg !1911
  %37 = getelementptr inbounds [1 x %struct.lua_TValue]* %36, i32 0, i32 %34, !dbg !1911
  %38 = getelementptr inbounds %struct.lua_TValue* %37, i32 0, i32 0, !dbg !1911
  %39 = bitcast %union.Value* %38 to %struct.GCObject**, !dbg !1911
  %40 = load %struct.GCObject** %39, align 4, !dbg !1911
  call void @reallymarkobject(%struct.global_State* %33, %struct.GCObject* %40), !dbg !1911
  br label %41, !dbg !1911

; <label>:41                                      ; preds = %32, %19, %10
  br label %42, !dbg !1913

; <label>:42                                      ; preds = %41
  %43 = load i32* %i, align 4, !dbg !1917
  %44 = add nsw i32 %43, 1, !dbg !1917
  store i32 %44, i32* %i, align 4, !dbg !1917
  br label %3, !dbg !1917

; <label>:45                                      ; preds = %3
  %46 = load %struct.CClosure** %2, align 4, !dbg !1918
  %47 = getelementptr inbounds %struct.CClosure* %46, i32 0, i32 3, !dbg !1918
  %48 = load i8* %47, align 1, !dbg !1918
  %49 = zext i8 %48 to i32, !dbg !1918
  %50 = sub nsw i32 %49, 1, !dbg !1918
  %51 = mul i32 16, %50, !dbg !1918
  %52 = add nsw i32 32, %51, !dbg !1918
  ret i32 %52, !dbg !1918
}

; Function Attrs: nounwind
define internal i32 @traversethread(%struct.global_State* %g, %struct.lua_State* %th) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.global_State*, align 4
  %3 = alloca %struct.lua_State*, align 4
  %o = alloca %struct.lua_TValue*, align 4
  %lim = alloca %struct.lua_TValue*, align 4
  store %struct.global_State* %g, %struct.global_State** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.global_State** %2}, metadata !1919), !dbg !1920
  store %struct.lua_State* %th, %struct.lua_State** %3, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %3}, metadata !1921), !dbg !1922
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %o}, metadata !1923), !dbg !1924
  %4 = load %struct.lua_State** %3, align 4, !dbg !1925
  %5 = getelementptr inbounds %struct.lua_State* %4, i32 0, i32 10, !dbg !1925
  %6 = load %struct.lua_TValue** %5, align 4, !dbg !1925
  store %struct.lua_TValue* %6, %struct.lua_TValue** %o, align 4, !dbg !1925
  %7 = load %struct.lua_TValue** %o, align 4, !dbg !1926
  %8 = icmp eq %struct.lua_TValue* %7, null, !dbg !1926
  br i1 %8, label %9, label %10, !dbg !1926

; <label>:9                                       ; preds = %0
  store i32 1, i32* %1, !dbg !1928
  br label %109, !dbg !1928

; <label>:10                                      ; preds = %0
  br label %11, !dbg !1929

; <label>:11                                      ; preds = %40, %10
  %12 = load %struct.lua_TValue** %o, align 4, !dbg !1931
  %13 = load %struct.lua_State** %3, align 4, !dbg !1931
  %14 = getelementptr inbounds %struct.lua_State* %13, i32 0, i32 5, !dbg !1931
  %15 = load %struct.lua_TValue** %14, align 4, !dbg !1931
  %16 = icmp ult %struct.lua_TValue* %12, %15, !dbg !1931
  br i1 %16, label %17, label %43, !dbg !1931

; <label>:17                                      ; preds = %11
  %18 = load %struct.lua_TValue** %o, align 4, !dbg !1934
  %19 = getelementptr inbounds %struct.lua_TValue* %18, i32 0, i32 1, !dbg !1934
  %20 = load i32* %19, align 4, !dbg !1934
  %21 = and i32 %20, 64, !dbg !1934
  %22 = icmp ne i32 %21, 0, !dbg !1934
  br i1 %22, label %23, label %39, !dbg !1934

; <label>:23                                      ; preds = %17
  %24 = load %struct.lua_TValue** %o, align 4, !dbg !1937
  %25 = getelementptr inbounds %struct.lua_TValue* %24, i32 0, i32 0, !dbg !1937
  %26 = bitcast %union.Value* %25 to %struct.GCObject**, !dbg !1937
  %27 = load %struct.GCObject** %26, align 4, !dbg !1937
  %28 = getelementptr inbounds %struct.GCObject* %27, i32 0, i32 2, !dbg !1937
  %29 = load i8* %28, align 1, !dbg !1937
  %30 = zext i8 %29 to i32, !dbg !1937
  %31 = and i32 %30, 3, !dbg !1937
  %32 = icmp ne i32 %31, 0, !dbg !1937
  br i1 %32, label %33, label %39, !dbg !1937

; <label>:33                                      ; preds = %23
  %34 = load %struct.global_State** %2, align 4, !dbg !1939
  %35 = load %struct.lua_TValue** %o, align 4, !dbg !1939
  %36 = getelementptr inbounds %struct.lua_TValue* %35, i32 0, i32 0, !dbg !1939
  %37 = bitcast %union.Value* %36 to %struct.GCObject**, !dbg !1939
  %38 = load %struct.GCObject** %37, align 4, !dbg !1939
  call void @reallymarkobject(%struct.global_State* %34, %struct.GCObject* %38), !dbg !1939
  br label %39, !dbg !1939

; <label>:39                                      ; preds = %33, %23, %17
  br label %40, !dbg !1941

; <label>:40                                      ; preds = %39
  %41 = load %struct.lua_TValue** %o, align 4, !dbg !1945
  %42 = getelementptr inbounds %struct.lua_TValue* %41, i32 1, !dbg !1945
  store %struct.lua_TValue* %42, %struct.lua_TValue** %o, align 4, !dbg !1945
  br label %11, !dbg !1945

; <label>:43                                      ; preds = %11
  %44 = load %struct.global_State** %2, align 4, !dbg !1946
  %45 = getelementptr inbounds %struct.global_State* %44, i32 0, i32 10, !dbg !1946
  %46 = load i8* %45, align 1, !dbg !1946
  %47 = zext i8 %46 to i32, !dbg !1946
  %48 = icmp eq i32 %47, 8, !dbg !1946
  br i1 %48, label %49, label %88, !dbg !1946

; <label>:49                                      ; preds = %43
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %lim}, metadata !1948), !dbg !1950
  %50 = load %struct.lua_State** %3, align 4, !dbg !1951
  %51 = getelementptr inbounds %struct.lua_State* %50, i32 0, i32 10, !dbg !1951
  %52 = load %struct.lua_TValue** %51, align 4, !dbg !1951
  %53 = load %struct.lua_State** %3, align 4, !dbg !1951
  %54 = getelementptr inbounds %struct.lua_State* %53, i32 0, i32 18, !dbg !1951
  %55 = load i32* %54, align 4, !dbg !1951
  %56 = getelementptr inbounds %struct.lua_TValue* %52, i32 %55, !dbg !1951
  store %struct.lua_TValue* %56, %struct.lua_TValue** %lim, align 4, !dbg !1951
  br label %57, !dbg !1952

; <label>:57                                      ; preds = %64, %49
  %58 = load %struct.lua_TValue** %o, align 4, !dbg !1954
  %59 = load %struct.lua_TValue** %lim, align 4, !dbg !1954
  %60 = icmp ult %struct.lua_TValue* %58, %59, !dbg !1954
  br i1 %60, label %61, label %67, !dbg !1954

; <label>:61                                      ; preds = %57
  %62 = load %struct.lua_TValue** %o, align 4, !dbg !1957
  %63 = getelementptr inbounds %struct.lua_TValue* %62, i32 0, i32 1, !dbg !1957
  store i32 0, i32* %63, align 4, !dbg !1957
  br label %64, !dbg !1957

; <label>:64                                      ; preds = %61
  %65 = load %struct.lua_TValue** %o, align 4, !dbg !1958
  %66 = getelementptr inbounds %struct.lua_TValue* %65, i32 1, !dbg !1958
  store %struct.lua_TValue* %66, %struct.lua_TValue** %o, align 4, !dbg !1958
  br label %57, !dbg !1958

; <label>:67                                      ; preds = %57
  %68 = load %struct.lua_State** %3, align 4, !dbg !1959
  %69 = getelementptr inbounds %struct.lua_State* %68, i32 0, i32 13, !dbg !1959
  %70 = load %struct.lua_State** %69, align 4, !dbg !1959
  %71 = load %struct.lua_State** %3, align 4, !dbg !1959
  %72 = icmp ne %struct.lua_State* %70, %71, !dbg !1959
  br i1 %72, label %87, label %73, !dbg !1959

; <label>:73                                      ; preds = %67
  %74 = load %struct.lua_State** %3, align 4, !dbg !1961
  %75 = getelementptr inbounds %struct.lua_State* %74, i32 0, i32 11, !dbg !1961
  %76 = load %struct.UpVal** %75, align 4, !dbg !1961
  %77 = icmp ne %struct.UpVal* %76, null, !dbg !1961
  br i1 %77, label %78, label %87, !dbg !1961

; <label>:78                                      ; preds = %73
  %79 = load %struct.global_State** %2, align 4, !dbg !1963
  %80 = getelementptr inbounds %struct.global_State* %79, i32 0, i32 23, !dbg !1963
  %81 = load %struct.lua_State** %80, align 4, !dbg !1963
  %82 = load %struct.lua_State** %3, align 4, !dbg !1963
  %83 = getelementptr inbounds %struct.lua_State* %82, i32 0, i32 13, !dbg !1963
  store %struct.lua_State* %81, %struct.lua_State** %83, align 4, !dbg !1963
  %84 = load %struct.lua_State** %3, align 4, !dbg !1965
  %85 = load %struct.global_State** %2, align 4, !dbg !1965
  %86 = getelementptr inbounds %struct.global_State* %85, i32 0, i32 23, !dbg !1965
  store %struct.lua_State* %84, %struct.lua_State** %86, align 4, !dbg !1965
  br label %87, !dbg !1966

; <label>:87                                      ; preds = %78, %73, %67
  br label %97, !dbg !1967

; <label>:88                                      ; preds = %43
  %89 = load %struct.global_State** %2, align 4, !dbg !1968
  %90 = getelementptr inbounds %struct.global_State* %89, i32 0, i32 11, !dbg !1968
  %91 = load i8* %90, align 1, !dbg !1968
  %92 = zext i8 %91 to i32, !dbg !1968
  %93 = icmp ne i32 %92, 1, !dbg !1968
  br i1 %93, label %94, label %96, !dbg !1968

; <label>:94                                      ; preds = %88
  %95 = load %struct.lua_State** %3, align 4, !dbg !1970
  call void @luaD_shrinkstack(%struct.lua_State* %95), !dbg !1970
  br label %96, !dbg !1970

; <label>:96                                      ; preds = %94, %88
  br label %97

; <label>:97                                      ; preds = %96, %87
  %98 = load %struct.lua_State** %3, align 4, !dbg !1971
  %99 = getelementptr inbounds %struct.lua_State* %98, i32 0, i32 18, !dbg !1971
  %100 = load i32* %99, align 4, !dbg !1971
  %101 = mul i32 16, %100, !dbg !1971
  %102 = add i32 120, %101, !dbg !1971
  %103 = load %struct.lua_State** %3, align 4, !dbg !1971
  %104 = getelementptr inbounds %struct.lua_State* %103, i32 0, i32 3, !dbg !1971
  %105 = load i16* %104, align 2, !dbg !1971
  %106 = zext i16 %105 to i32, !dbg !1971
  %107 = mul i32 36, %106, !dbg !1971
  %108 = add i32 %102, %107, !dbg !1971
  store i32 %108, i32* %1, !dbg !1971
  br label %109, !dbg !1971

; <label>:109                                     ; preds = %97, %9
  %110 = load i32* %1, !dbg !1972
  ret i32 %110, !dbg !1972
}

; Function Attrs: nounwind
define internal i32 @traverseproto(%struct.global_State* %g, %struct.Proto* %f) #0 {
  %1 = alloca %struct.global_State*, align 4
  %2 = alloca %struct.Proto*, align 4
  %i = alloca i32, align 4
  store %struct.global_State* %g, %struct.global_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.global_State** %1}, metadata !1973), !dbg !1974
  store %struct.Proto* %f, %struct.Proto** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.Proto** %2}, metadata !1975), !dbg !1976
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !1977), !dbg !1978
  %3 = load %struct.Proto** %2, align 4, !dbg !1979
  %4 = getelementptr inbounds %struct.Proto* %3, i32 0, i32 20, !dbg !1979
  %5 = load %struct.LClosure** %4, align 4, !dbg !1979
  %6 = icmp ne %struct.LClosure* %5, null, !dbg !1979
  br i1 %6, label %7, label %19, !dbg !1979

; <label>:7                                       ; preds = %0
  %8 = load %struct.Proto** %2, align 4, !dbg !1981
  %9 = getelementptr inbounds %struct.Proto* %8, i32 0, i32 20, !dbg !1981
  %10 = load %struct.LClosure** %9, align 4, !dbg !1981
  %11 = getelementptr inbounds %struct.LClosure* %10, i32 0, i32 2, !dbg !1981
  %12 = load i8* %11, align 1, !dbg !1981
  %13 = zext i8 %12 to i32, !dbg !1981
  %14 = and i32 %13, 3, !dbg !1981
  %15 = icmp ne i32 %14, 0, !dbg !1981
  br i1 %15, label %16, label %19, !dbg !1981

; <label>:16                                      ; preds = %7
  %17 = load %struct.Proto** %2, align 4, !dbg !1983
  %18 = getelementptr inbounds %struct.Proto* %17, i32 0, i32 20, !dbg !1983
  store %struct.LClosure* null, %struct.LClosure** %18, align 4, !dbg !1983
  br label %19, !dbg !1983

; <label>:19                                      ; preds = %16, %7, %0
  %20 = load %struct.Proto** %2, align 4, !dbg !1984
  %21 = getelementptr inbounds %struct.Proto* %20, i32 0, i32 21, !dbg !1984
  %22 = load %struct.TString** %21, align 4, !dbg !1984
  %23 = icmp ne %struct.TString* %22, null, !dbg !1984
  br i1 %23, label %24, label %41, !dbg !1984

; <label>:24                                      ; preds = %19
  %25 = load %struct.Proto** %2, align 4, !dbg !1987
  %26 = getelementptr inbounds %struct.Proto* %25, i32 0, i32 21, !dbg !1987
  %27 = load %struct.TString** %26, align 4, !dbg !1987
  %28 = getelementptr inbounds %struct.TString* %27, i32 0, i32 2, !dbg !1987
  %29 = load i8* %28, align 1, !dbg !1987
  %30 = zext i8 %29 to i32, !dbg !1987
  %31 = and i32 %30, 3, !dbg !1987
  %32 = icmp ne i32 %31, 0, !dbg !1987
  br i1 %32, label %33, label %40, !dbg !1987

; <label>:33                                      ; preds = %24
  %34 = load %struct.global_State** %1, align 4, !dbg !1991
  %35 = load %struct.Proto** %2, align 4, !dbg !1991
  %36 = getelementptr inbounds %struct.Proto* %35, i32 0, i32 21, !dbg !1991
  %37 = load %struct.TString** %36, align 4, !dbg !1991
  %38 = bitcast %struct.TString* %37 to %union.GCUnion*, !dbg !1991
  %39 = bitcast %union.GCUnion* %38 to %struct.GCObject*, !dbg !1991
  call void @reallymarkobject(%struct.global_State* %34, %struct.GCObject* %39), !dbg !1991
  br label %40, !dbg !1991

; <label>:40                                      ; preds = %33, %24
  br label %41, !dbg !1993

; <label>:41                                      ; preds = %40, %19
  store i32 0, i32* %i, align 4, !dbg !1996
  br label %42, !dbg !1996

; <label>:42                                      ; preds = %83, %41
  %43 = load i32* %i, align 4, !dbg !1998
  %44 = load %struct.Proto** %2, align 4, !dbg !1998
  %45 = getelementptr inbounds %struct.Proto* %44, i32 0, i32 7, !dbg !1998
  %46 = load i32* %45, align 4, !dbg !1998
  %47 = icmp slt i32 %43, %46, !dbg !1998
  br i1 %47, label %48, label %86, !dbg !1998

; <label>:48                                      ; preds = %42
  %49 = load i32* %i, align 4, !dbg !2001
  %50 = load %struct.Proto** %2, align 4, !dbg !2001
  %51 = getelementptr inbounds %struct.Proto* %50, i32 0, i32 14, !dbg !2001
  %52 = load %struct.lua_TValue** %51, align 4, !dbg !2001
  %53 = getelementptr inbounds %struct.lua_TValue* %52, i32 %49, !dbg !2001
  %54 = getelementptr inbounds %struct.lua_TValue* %53, i32 0, i32 1, !dbg !2001
  %55 = load i32* %54, align 4, !dbg !2001
  %56 = and i32 %55, 64, !dbg !2001
  %57 = icmp ne i32 %56, 0, !dbg !2001
  br i1 %57, label %58, label %82, !dbg !2001

; <label>:58                                      ; preds = %48
  %59 = load i32* %i, align 4, !dbg !2004
  %60 = load %struct.Proto** %2, align 4, !dbg !2004
  %61 = getelementptr inbounds %struct.Proto* %60, i32 0, i32 14, !dbg !2004
  %62 = load %struct.lua_TValue** %61, align 4, !dbg !2004
  %63 = getelementptr inbounds %struct.lua_TValue* %62, i32 %59, !dbg !2004
  %64 = getelementptr inbounds %struct.lua_TValue* %63, i32 0, i32 0, !dbg !2004
  %65 = bitcast %union.Value* %64 to %struct.GCObject**, !dbg !2004
  %66 = load %struct.GCObject** %65, align 4, !dbg !2004
  %67 = getelementptr inbounds %struct.GCObject* %66, i32 0, i32 2, !dbg !2004
  %68 = load i8* %67, align 1, !dbg !2004
  %69 = zext i8 %68 to i32, !dbg !2004
  %70 = and i32 %69, 3, !dbg !2004
  %71 = icmp ne i32 %70, 0, !dbg !2004
  br i1 %71, label %72, label %82, !dbg !2004

; <label>:72                                      ; preds = %58
  %73 = load %struct.global_State** %1, align 4, !dbg !2006
  %74 = load i32* %i, align 4, !dbg !2006
  %75 = load %struct.Proto** %2, align 4, !dbg !2006
  %76 = getelementptr inbounds %struct.Proto* %75, i32 0, i32 14, !dbg !2006
  %77 = load %struct.lua_TValue** %76, align 4, !dbg !2006
  %78 = getelementptr inbounds %struct.lua_TValue* %77, i32 %74, !dbg !2006
  %79 = getelementptr inbounds %struct.lua_TValue* %78, i32 0, i32 0, !dbg !2006
  %80 = bitcast %union.Value* %79 to %struct.GCObject**, !dbg !2006
  %81 = load %struct.GCObject** %80, align 4, !dbg !2006
  call void @reallymarkobject(%struct.global_State* %73, %struct.GCObject* %81), !dbg !2006
  br label %82, !dbg !2006

; <label>:82                                      ; preds = %72, %58, %48
  br label %83, !dbg !2008

; <label>:83                                      ; preds = %82
  %84 = load i32* %i, align 4, !dbg !2012
  %85 = add nsw i32 %84, 1, !dbg !2012
  store i32 %85, i32* %i, align 4, !dbg !2012
  br label %42, !dbg !2012

; <label>:86                                      ; preds = %42
  store i32 0, i32* %i, align 4, !dbg !2013
  br label %87, !dbg !2013

; <label>:87                                      ; preds = %128, %86
  %88 = load i32* %i, align 4, !dbg !2015
  %89 = load %struct.Proto** %2, align 4, !dbg !2015
  %90 = getelementptr inbounds %struct.Proto* %89, i32 0, i32 6, !dbg !2015
  %91 = load i32* %90, align 4, !dbg !2015
  %92 = icmp slt i32 %88, %91, !dbg !2015
  br i1 %92, label %93, label %131, !dbg !2015

; <label>:93                                      ; preds = %87
  %94 = load i32* %i, align 4, !dbg !2018
  %95 = load %struct.Proto** %2, align 4, !dbg !2018
  %96 = getelementptr inbounds %struct.Proto* %95, i32 0, i32 19, !dbg !2018
  %97 = load %struct.Upvaldesc** %96, align 4, !dbg !2018
  %98 = getelementptr inbounds %struct.Upvaldesc* %97, i32 %94, !dbg !2018
  %99 = getelementptr inbounds %struct.Upvaldesc* %98, i32 0, i32 0, !dbg !2018
  %100 = load %struct.TString** %99, align 4, !dbg !2018
  %101 = icmp ne %struct.TString* %100, null, !dbg !2018
  br i1 %101, label %102, label %127, !dbg !2018

; <label>:102                                     ; preds = %93
  %103 = load i32* %i, align 4, !dbg !2021
  %104 = load %struct.Proto** %2, align 4, !dbg !2021
  %105 = getelementptr inbounds %struct.Proto* %104, i32 0, i32 19, !dbg !2021
  %106 = load %struct.Upvaldesc** %105, align 4, !dbg !2021
  %107 = getelementptr inbounds %struct.Upvaldesc* %106, i32 %103, !dbg !2021
  %108 = getelementptr inbounds %struct.Upvaldesc* %107, i32 0, i32 0, !dbg !2021
  %109 = load %struct.TString** %108, align 4, !dbg !2021
  %110 = getelementptr inbounds %struct.TString* %109, i32 0, i32 2, !dbg !2021
  %111 = load i8* %110, align 1, !dbg !2021
  %112 = zext i8 %111 to i32, !dbg !2021
  %113 = and i32 %112, 3, !dbg !2021
  %114 = icmp ne i32 %113, 0, !dbg !2021
  br i1 %114, label %115, label %126, !dbg !2021

; <label>:115                                     ; preds = %102
  %116 = load %struct.global_State** %1, align 4, !dbg !2025
  %117 = load i32* %i, align 4, !dbg !2025
  %118 = load %struct.Proto** %2, align 4, !dbg !2025
  %119 = getelementptr inbounds %struct.Proto* %118, i32 0, i32 19, !dbg !2025
  %120 = load %struct.Upvaldesc** %119, align 4, !dbg !2025
  %121 = getelementptr inbounds %struct.Upvaldesc* %120, i32 %117, !dbg !2025
  %122 = getelementptr inbounds %struct.Upvaldesc* %121, i32 0, i32 0, !dbg !2025
  %123 = load %struct.TString** %122, align 4, !dbg !2025
  %124 = bitcast %struct.TString* %123 to %union.GCUnion*, !dbg !2025
  %125 = bitcast %union.GCUnion* %124 to %struct.GCObject*, !dbg !2025
  call void @reallymarkobject(%struct.global_State* %116, %struct.GCObject* %125), !dbg !2025
  br label %126, !dbg !2025

; <label>:126                                     ; preds = %115, %102
  br label %127, !dbg !2027

; <label>:127                                     ; preds = %126, %93
  br label %128, !dbg !2030

; <label>:128                                     ; preds = %127
  %129 = load i32* %i, align 4, !dbg !2033
  %130 = add nsw i32 %129, 1, !dbg !2033
  store i32 %130, i32* %i, align 4, !dbg !2033
  br label %87, !dbg !2033

; <label>:131                                     ; preds = %87
  store i32 0, i32* %i, align 4, !dbg !2034
  br label %132, !dbg !2034

; <label>:132                                     ; preds = %170, %131
  %133 = load i32* %i, align 4, !dbg !2036
  %134 = load %struct.Proto** %2, align 4, !dbg !2036
  %135 = getelementptr inbounds %struct.Proto* %134, i32 0, i32 10, !dbg !2036
  %136 = load i32* %135, align 4, !dbg !2036
  %137 = icmp slt i32 %133, %136, !dbg !2036
  br i1 %137, label %138, label %173, !dbg !2036

; <label>:138                                     ; preds = %132
  %139 = load i32* %i, align 4, !dbg !2039
  %140 = load %struct.Proto** %2, align 4, !dbg !2039
  %141 = getelementptr inbounds %struct.Proto* %140, i32 0, i32 16, !dbg !2039
  %142 = load %struct.Proto*** %141, align 4, !dbg !2039
  %143 = getelementptr inbounds %struct.Proto** %142, i32 %139, !dbg !2039
  %144 = load %struct.Proto** %143, align 4, !dbg !2039
  %145 = icmp ne %struct.Proto* %144, null, !dbg !2039
  br i1 %145, label %146, label %169, !dbg !2039

; <label>:146                                     ; preds = %138
  %147 = load i32* %i, align 4, !dbg !2042
  %148 = load %struct.Proto** %2, align 4, !dbg !2042
  %149 = getelementptr inbounds %struct.Proto* %148, i32 0, i32 16, !dbg !2042
  %150 = load %struct.Proto*** %149, align 4, !dbg !2042
  %151 = getelementptr inbounds %struct.Proto** %150, i32 %147, !dbg !2042
  %152 = load %struct.Proto** %151, align 4, !dbg !2042
  %153 = getelementptr inbounds %struct.Proto* %152, i32 0, i32 2, !dbg !2042
  %154 = load i8* %153, align 1, !dbg !2042
  %155 = zext i8 %154 to i32, !dbg !2042
  %156 = and i32 %155, 3, !dbg !2042
  %157 = icmp ne i32 %156, 0, !dbg !2042
  br i1 %157, label %158, label %168, !dbg !2042

; <label>:158                                     ; preds = %146
  %159 = load %struct.global_State** %1, align 4, !dbg !2046
  %160 = load i32* %i, align 4, !dbg !2046
  %161 = load %struct.Proto** %2, align 4, !dbg !2046
  %162 = getelementptr inbounds %struct.Proto* %161, i32 0, i32 16, !dbg !2046
  %163 = load %struct.Proto*** %162, align 4, !dbg !2046
  %164 = getelementptr inbounds %struct.Proto** %163, i32 %160, !dbg !2046
  %165 = load %struct.Proto** %164, align 4, !dbg !2046
  %166 = bitcast %struct.Proto* %165 to %union.GCUnion*, !dbg !2046
  %167 = bitcast %union.GCUnion* %166 to %struct.GCObject*, !dbg !2046
  call void @reallymarkobject(%struct.global_State* %159, %struct.GCObject* %167), !dbg !2046
  br label %168, !dbg !2046

; <label>:168                                     ; preds = %158, %146
  br label %169, !dbg !2048

; <label>:169                                     ; preds = %168, %138
  br label %170, !dbg !2051

; <label>:170                                     ; preds = %169
  %171 = load i32* %i, align 4, !dbg !2054
  %172 = add nsw i32 %171, 1, !dbg !2054
  store i32 %172, i32* %i, align 4, !dbg !2054
  br label %132, !dbg !2054

; <label>:173                                     ; preds = %132
  store i32 0, i32* %i, align 4, !dbg !2055
  br label %174, !dbg !2055

; <label>:174                                     ; preds = %215, %173
  %175 = load i32* %i, align 4, !dbg !2057
  %176 = load %struct.Proto** %2, align 4, !dbg !2057
  %177 = getelementptr inbounds %struct.Proto* %176, i32 0, i32 11, !dbg !2057
  %178 = load i32* %177, align 4, !dbg !2057
  %179 = icmp slt i32 %175, %178, !dbg !2057
  br i1 %179, label %180, label %218, !dbg !2057

; <label>:180                                     ; preds = %174
  %181 = load i32* %i, align 4, !dbg !2060
  %182 = load %struct.Proto** %2, align 4, !dbg !2060
  %183 = getelementptr inbounds %struct.Proto* %182, i32 0, i32 18, !dbg !2060
  %184 = load %struct.LocVar** %183, align 4, !dbg !2060
  %185 = getelementptr inbounds %struct.LocVar* %184, i32 %181, !dbg !2060
  %186 = getelementptr inbounds %struct.LocVar* %185, i32 0, i32 0, !dbg !2060
  %187 = load %struct.TString** %186, align 4, !dbg !2060
  %188 = icmp ne %struct.TString* %187, null, !dbg !2060
  br i1 %188, label %189, label %214, !dbg !2060

; <label>:189                                     ; preds = %180
  %190 = load i32* %i, align 4, !dbg !2063
  %191 = load %struct.Proto** %2, align 4, !dbg !2063
  %192 = getelementptr inbounds %struct.Proto* %191, i32 0, i32 18, !dbg !2063
  %193 = load %struct.LocVar** %192, align 4, !dbg !2063
  %194 = getelementptr inbounds %struct.LocVar* %193, i32 %190, !dbg !2063
  %195 = getelementptr inbounds %struct.LocVar* %194, i32 0, i32 0, !dbg !2063
  %196 = load %struct.TString** %195, align 4, !dbg !2063
  %197 = getelementptr inbounds %struct.TString* %196, i32 0, i32 2, !dbg !2063
  %198 = load i8* %197, align 1, !dbg !2063
  %199 = zext i8 %198 to i32, !dbg !2063
  %200 = and i32 %199, 3, !dbg !2063
  %201 = icmp ne i32 %200, 0, !dbg !2063
  br i1 %201, label %202, label %213, !dbg !2063

; <label>:202                                     ; preds = %189
  %203 = load %struct.global_State** %1, align 4, !dbg !2067
  %204 = load i32* %i, align 4, !dbg !2067
  %205 = load %struct.Proto** %2, align 4, !dbg !2067
  %206 = getelementptr inbounds %struct.Proto* %205, i32 0, i32 18, !dbg !2067
  %207 = load %struct.LocVar** %206, align 4, !dbg !2067
  %208 = getelementptr inbounds %struct.LocVar* %207, i32 %204, !dbg !2067
  %209 = getelementptr inbounds %struct.LocVar* %208, i32 0, i32 0, !dbg !2067
  %210 = load %struct.TString** %209, align 4, !dbg !2067
  %211 = bitcast %struct.TString* %210 to %union.GCUnion*, !dbg !2067
  %212 = bitcast %union.GCUnion* %211 to %struct.GCObject*, !dbg !2067
  call void @reallymarkobject(%struct.global_State* %203, %struct.GCObject* %212), !dbg !2067
  br label %213, !dbg !2067

; <label>:213                                     ; preds = %202, %189
  br label %214, !dbg !2069

; <label>:214                                     ; preds = %213, %180
  br label %215, !dbg !2072

; <label>:215                                     ; preds = %214
  %216 = load i32* %i, align 4, !dbg !2075
  %217 = add nsw i32 %216, 1, !dbg !2075
  store i32 %217, i32* %i, align 4, !dbg !2075
  br label %174, !dbg !2075

; <label>:218                                     ; preds = %174
  %219 = load %struct.Proto** %2, align 4, !dbg !2076
  %220 = getelementptr inbounds %struct.Proto* %219, i32 0, i32 8, !dbg !2076
  %221 = load i32* %220, align 4, !dbg !2076
  %222 = mul i32 4, %221, !dbg !2076
  %223 = add i32 80, %222, !dbg !2076
  %224 = load %struct.Proto** %2, align 4, !dbg !2076
  %225 = getelementptr inbounds %struct.Proto* %224, i32 0, i32 10, !dbg !2076
  %226 = load i32* %225, align 4, !dbg !2076
  %227 = mul i32 4, %226, !dbg !2076
  %228 = add i32 %223, %227, !dbg !2076
  %229 = load %struct.Proto** %2, align 4, !dbg !2076
  %230 = getelementptr inbounds %struct.Proto* %229, i32 0, i32 7, !dbg !2076
  %231 = load i32* %230, align 4, !dbg !2076
  %232 = mul i32 16, %231, !dbg !2076
  %233 = add i32 %228, %232, !dbg !2076
  %234 = load %struct.Proto** %2, align 4, !dbg !2076
  %235 = getelementptr inbounds %struct.Proto* %234, i32 0, i32 9, !dbg !2076
  %236 = load i32* %235, align 4, !dbg !2076
  %237 = mul i32 4, %236, !dbg !2076
  %238 = add i32 %233, %237, !dbg !2076
  %239 = load %struct.Proto** %2, align 4, !dbg !2076
  %240 = getelementptr inbounds %struct.Proto* %239, i32 0, i32 11, !dbg !2076
  %241 = load i32* %240, align 4, !dbg !2076
  %242 = mul i32 12, %241, !dbg !2076
  %243 = add i32 %238, %242, !dbg !2076
  %244 = load %struct.Proto** %2, align 4, !dbg !2076
  %245 = getelementptr inbounds %struct.Proto* %244, i32 0, i32 6, !dbg !2076
  %246 = load i32* %245, align 4, !dbg !2076
  %247 = mul i32 8, %246, !dbg !2076
  %248 = add i32 %243, %247, !dbg !2076
  ret i32 %248, !dbg !2076
}

declare hidden void @luaD_shrinkstack(%struct.lua_State*) #2

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #5

; Function Attrs: nounwind
define internal void @traverseweakvalue(%struct.global_State* %g, %struct.Table* %h) #0 {
  %1 = alloca %struct.global_State*, align 4
  %2 = alloca %struct.Table*, align 4
  %n = alloca %struct.Node*, align 4
  %limit = alloca %struct.Node*, align 4
  %hasclears = alloca i32, align 4
  store %struct.global_State* %g, %struct.global_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.global_State** %1}, metadata !2077), !dbg !2078
  store %struct.Table* %h, %struct.Table** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.Table** %2}, metadata !2079), !dbg !2080
  call void @llvm.dbg.declare(metadata !{%struct.Node** %n}, metadata !2081), !dbg !2082
  call void @llvm.dbg.declare(metadata !{%struct.Node** %limit}, metadata !2083), !dbg !2084
  %3 = load %struct.Table** %2, align 4, !dbg !2085
  %4 = getelementptr inbounds %struct.Table* %3, i32 0, i32 4, !dbg !2085
  %5 = load i8* %4, align 1, !dbg !2085
  %6 = zext i8 %5 to i32, !dbg !2085
  %7 = shl i32 1, %6, !dbg !2085
  %8 = load %struct.Table** %2, align 4, !dbg !2085
  %9 = getelementptr inbounds %struct.Table* %8, i32 0, i32 7, !dbg !2085
  %10 = load %struct.Node** %9, align 4, !dbg !2085
  %11 = getelementptr inbounds %struct.Node* %10, i32 %7, !dbg !2085
  store %struct.Node* %11, %struct.Node** %limit, align 4, !dbg !2085
  call void @llvm.dbg.declare(metadata !{i32* %hasclears}, metadata !2086), !dbg !2087
  %12 = load %struct.Table** %2, align 4, !dbg !2088
  %13 = getelementptr inbounds %struct.Table* %12, i32 0, i32 5, !dbg !2088
  %14 = load i32* %13, align 4, !dbg !2088
  %15 = icmp ugt i32 %14, 0, !dbg !2088
  %16 = zext i1 %15 to i32, !dbg !2088
  store i32 %16, i32* %hasclears, align 4, !dbg !2088
  %17 = load %struct.Table** %2, align 4, !dbg !2089
  %18 = getelementptr inbounds %struct.Table* %17, i32 0, i32 7, !dbg !2089
  %19 = load %struct.Node** %18, align 4, !dbg !2089
  %20 = getelementptr inbounds %struct.Node* %19, i32 0, !dbg !2089
  store %struct.Node* %20, %struct.Node** %n, align 4, !dbg !2089
  br label %21, !dbg !2089

; <label>:21                                      ; preds = %73, %0
  %22 = load %struct.Node** %n, align 4, !dbg !2091
  %23 = load %struct.Node** %limit, align 4, !dbg !2091
  %24 = icmp ult %struct.Node* %22, %23, !dbg !2091
  br i1 %24, label %25, label %76, !dbg !2091

; <label>:25                                      ; preds = %21
  %26 = load %struct.Node** %n, align 4, !dbg !2094
  %27 = getelementptr inbounds %struct.Node* %26, i32 0, i32 0, !dbg !2094
  %28 = getelementptr inbounds %struct.lua_TValue* %27, i32 0, i32 1, !dbg !2094
  %29 = load i32* %28, align 4, !dbg !2094
  %30 = icmp eq i32 %29, 0, !dbg !2094
  br i1 %30, label %31, label %33, !dbg !2094

; <label>:31                                      ; preds = %25
  %32 = load %struct.Node** %n, align 4, !dbg !2097
  call void @removeentry(%struct.Node* %32), !dbg !2097
  br label %72, !dbg !2097

; <label>:33                                      ; preds = %25
  %34 = load %struct.Node** %n, align 4, !dbg !2098
  %35 = getelementptr inbounds %struct.Node* %34, i32 0, i32 1, !dbg !2098
  %36 = bitcast %union.TKey* %35 to %struct.lua_TValue*, !dbg !2098
  %37 = getelementptr inbounds %struct.lua_TValue* %36, i32 0, i32 1, !dbg !2098
  %38 = load i32* %37, align 4, !dbg !2098
  %39 = and i32 %38, 64, !dbg !2098
  %40 = icmp ne i32 %39, 0, !dbg !2098
  br i1 %40, label %41, label %61, !dbg !2098

; <label>:41                                      ; preds = %33
  %42 = load %struct.Node** %n, align 4, !dbg !2102
  %43 = getelementptr inbounds %struct.Node* %42, i32 0, i32 1, !dbg !2102
  %44 = bitcast %union.TKey* %43 to %struct.lua_TValue*, !dbg !2102
  %45 = getelementptr inbounds %struct.lua_TValue* %44, i32 0, i32 0, !dbg !2102
  %46 = bitcast %union.Value* %45 to %struct.GCObject**, !dbg !2102
  %47 = load %struct.GCObject** %46, align 4, !dbg !2102
  %48 = getelementptr inbounds %struct.GCObject* %47, i32 0, i32 2, !dbg !2102
  %49 = load i8* %48, align 1, !dbg !2102
  %50 = zext i8 %49 to i32, !dbg !2102
  %51 = and i32 %50, 3, !dbg !2102
  %52 = icmp ne i32 %51, 0, !dbg !2102
  br i1 %52, label %53, label %61, !dbg !2102

; <label>:53                                      ; preds = %41
  %54 = load %struct.global_State** %1, align 4, !dbg !2104
  %55 = load %struct.Node** %n, align 4, !dbg !2104
  %56 = getelementptr inbounds %struct.Node* %55, i32 0, i32 1, !dbg !2104
  %57 = bitcast %union.TKey* %56 to %struct.lua_TValue*, !dbg !2104
  %58 = getelementptr inbounds %struct.lua_TValue* %57, i32 0, i32 0, !dbg !2104
  %59 = bitcast %union.Value* %58 to %struct.GCObject**, !dbg !2104
  %60 = load %struct.GCObject** %59, align 4, !dbg !2104
  call void @reallymarkobject(%struct.global_State* %54, %struct.GCObject* %60), !dbg !2104
  br label %61, !dbg !2104

; <label>:61                                      ; preds = %53, %41, %33
  %62 = load i32* %hasclears, align 4, !dbg !2106
  %63 = icmp ne i32 %62, 0, !dbg !2106
  br i1 %63, label %71, label %64, !dbg !2106

; <label>:64                                      ; preds = %61
  %65 = load %struct.global_State** %1, align 4, !dbg !2108
  %66 = load %struct.Node** %n, align 4, !dbg !2108
  %67 = getelementptr inbounds %struct.Node* %66, i32 0, i32 0, !dbg !2108
  %68 = call i32 @iscleared(%struct.global_State* %65, %struct.lua_TValue* %67), !dbg !2108
  %69 = icmp ne i32 %68, 0, !dbg !2108
  br i1 %69, label %70, label %71, !dbg !2108

; <label>:70                                      ; preds = %64
  store i32 1, i32* %hasclears, align 4, !dbg !2110
  br label %71, !dbg !2110

; <label>:71                                      ; preds = %70, %64, %61
  br label %72

; <label>:72                                      ; preds = %71, %31
  br label %73, !dbg !2111

; <label>:73                                      ; preds = %72
  %74 = load %struct.Node** %n, align 4, !dbg !2112
  %75 = getelementptr inbounds %struct.Node* %74, i32 1, !dbg !2112
  store %struct.Node* %75, %struct.Node** %n, align 4, !dbg !2112
  br label %21, !dbg !2112

; <label>:76                                      ; preds = %21
  %77 = load %struct.global_State** %1, align 4, !dbg !2113
  %78 = getelementptr inbounds %struct.global_State* %77, i32 0, i32 10, !dbg !2113
  %79 = load i8* %78, align 1, !dbg !2113
  %80 = zext i8 %79 to i32, !dbg !2113
  %81 = icmp eq i32 %80, 0, !dbg !2113
  br i1 %81, label %82, label %93, !dbg !2113

; <label>:82                                      ; preds = %76
  %83 = load %struct.global_State** %1, align 4, !dbg !2115
  %84 = getelementptr inbounds %struct.global_State* %83, i32 0, i32 17, !dbg !2115
  %85 = load %struct.GCObject** %84, align 4, !dbg !2115
  %86 = load %struct.Table** %2, align 4, !dbg !2115
  %87 = getelementptr inbounds %struct.Table* %86, i32 0, i32 10, !dbg !2115
  store %struct.GCObject* %85, %struct.GCObject** %87, align 4, !dbg !2115
  %88 = load %struct.Table** %2, align 4, !dbg !2115
  %89 = bitcast %struct.Table* %88 to %union.GCUnion*, !dbg !2115
  %90 = bitcast %union.GCUnion* %89 to %struct.GCObject*, !dbg !2115
  %91 = load %struct.global_State** %1, align 4, !dbg !2115
  %92 = getelementptr inbounds %struct.global_State* %91, i32 0, i32 17, !dbg !2115
  store %struct.GCObject* %90, %struct.GCObject** %92, align 4, !dbg !2115
  br label %108, !dbg !2115

; <label>:93                                      ; preds = %76
  %94 = load i32* %hasclears, align 4, !dbg !2116
  %95 = icmp ne i32 %94, 0, !dbg !2116
  br i1 %95, label %96, label %107, !dbg !2116

; <label>:96                                      ; preds = %93
  %97 = load %struct.global_State** %1, align 4, !dbg !2118
  %98 = getelementptr inbounds %struct.global_State* %97, i32 0, i32 18, !dbg !2118
  %99 = load %struct.GCObject** %98, align 4, !dbg !2118
  %100 = load %struct.Table** %2, align 4, !dbg !2118
  %101 = getelementptr inbounds %struct.Table* %100, i32 0, i32 10, !dbg !2118
  store %struct.GCObject* %99, %struct.GCObject** %101, align 4, !dbg !2118
  %102 = load %struct.Table** %2, align 4, !dbg !2118
  %103 = bitcast %struct.Table* %102 to %union.GCUnion*, !dbg !2118
  %104 = bitcast %union.GCUnion* %103 to %struct.GCObject*, !dbg !2118
  %105 = load %struct.global_State** %1, align 4, !dbg !2118
  %106 = getelementptr inbounds %struct.global_State* %105, i32 0, i32 18, !dbg !2118
  store %struct.GCObject* %104, %struct.GCObject** %106, align 4, !dbg !2118
  br label %107, !dbg !2118

; <label>:107                                     ; preds = %96, %93
  br label %108

; <label>:108                                     ; preds = %107, %82
  ret void, !dbg !2119
}

; Function Attrs: nounwind
define internal void @traversestrongtable(%struct.global_State* %g, %struct.Table* %h) #0 {
  %1 = alloca %struct.global_State*, align 4
  %2 = alloca %struct.Table*, align 4
  %n = alloca %struct.Node*, align 4
  %limit = alloca %struct.Node*, align 4
  %i = alloca i32, align 4
  store %struct.global_State* %g, %struct.global_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.global_State** %1}, metadata !2120), !dbg !2121
  store %struct.Table* %h, %struct.Table** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.Table** %2}, metadata !2122), !dbg !2123
  call void @llvm.dbg.declare(metadata !{%struct.Node** %n}, metadata !2124), !dbg !2125
  call void @llvm.dbg.declare(metadata !{%struct.Node** %limit}, metadata !2126), !dbg !2127
  %3 = load %struct.Table** %2, align 4, !dbg !2128
  %4 = getelementptr inbounds %struct.Table* %3, i32 0, i32 4, !dbg !2128
  %5 = load i8* %4, align 1, !dbg !2128
  %6 = zext i8 %5 to i32, !dbg !2128
  %7 = shl i32 1, %6, !dbg !2128
  %8 = load %struct.Table** %2, align 4, !dbg !2128
  %9 = getelementptr inbounds %struct.Table* %8, i32 0, i32 7, !dbg !2128
  %10 = load %struct.Node** %9, align 4, !dbg !2128
  %11 = getelementptr inbounds %struct.Node* %10, i32 %7, !dbg !2128
  store %struct.Node* %11, %struct.Node** %limit, align 4, !dbg !2128
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !2129), !dbg !2130
  store i32 0, i32* %i, align 4, !dbg !2131
  br label %12, !dbg !2131

; <label>:12                                      ; preds = %53, %0
  %13 = load i32* %i, align 4, !dbg !2133
  %14 = load %struct.Table** %2, align 4, !dbg !2133
  %15 = getelementptr inbounds %struct.Table* %14, i32 0, i32 5, !dbg !2133
  %16 = load i32* %15, align 4, !dbg !2133
  %17 = icmp ult i32 %13, %16, !dbg !2133
  br i1 %17, label %18, label %56, !dbg !2133

; <label>:18                                      ; preds = %12
  %19 = load i32* %i, align 4, !dbg !2136
  %20 = load %struct.Table** %2, align 4, !dbg !2136
  %21 = getelementptr inbounds %struct.Table* %20, i32 0, i32 6, !dbg !2136
  %22 = load %struct.lua_TValue** %21, align 4, !dbg !2136
  %23 = getelementptr inbounds %struct.lua_TValue* %22, i32 %19, !dbg !2136
  %24 = getelementptr inbounds %struct.lua_TValue* %23, i32 0, i32 1, !dbg !2136
  %25 = load i32* %24, align 4, !dbg !2136
  %26 = and i32 %25, 64, !dbg !2136
  %27 = icmp ne i32 %26, 0, !dbg !2136
  br i1 %27, label %28, label %52, !dbg !2136

; <label>:28                                      ; preds = %18
  %29 = load i32* %i, align 4, !dbg !2139
  %30 = load %struct.Table** %2, align 4, !dbg !2139
  %31 = getelementptr inbounds %struct.Table* %30, i32 0, i32 6, !dbg !2139
  %32 = load %struct.lua_TValue** %31, align 4, !dbg !2139
  %33 = getelementptr inbounds %struct.lua_TValue* %32, i32 %29, !dbg !2139
  %34 = getelementptr inbounds %struct.lua_TValue* %33, i32 0, i32 0, !dbg !2139
  %35 = bitcast %union.Value* %34 to %struct.GCObject**, !dbg !2139
  %36 = load %struct.GCObject** %35, align 4, !dbg !2139
  %37 = getelementptr inbounds %struct.GCObject* %36, i32 0, i32 2, !dbg !2139
  %38 = load i8* %37, align 1, !dbg !2139
  %39 = zext i8 %38 to i32, !dbg !2139
  %40 = and i32 %39, 3, !dbg !2139
  %41 = icmp ne i32 %40, 0, !dbg !2139
  br i1 %41, label %42, label %52, !dbg !2139

; <label>:42                                      ; preds = %28
  %43 = load %struct.global_State** %1, align 4, !dbg !2141
  %44 = load i32* %i, align 4, !dbg !2141
  %45 = load %struct.Table** %2, align 4, !dbg !2141
  %46 = getelementptr inbounds %struct.Table* %45, i32 0, i32 6, !dbg !2141
  %47 = load %struct.lua_TValue** %46, align 4, !dbg !2141
  %48 = getelementptr inbounds %struct.lua_TValue* %47, i32 %44, !dbg !2141
  %49 = getelementptr inbounds %struct.lua_TValue* %48, i32 0, i32 0, !dbg !2141
  %50 = bitcast %union.Value* %49 to %struct.GCObject**, !dbg !2141
  %51 = load %struct.GCObject** %50, align 4, !dbg !2141
  call void @reallymarkobject(%struct.global_State* %43, %struct.GCObject* %51), !dbg !2141
  br label %52, !dbg !2141

; <label>:52                                      ; preds = %42, %28, %18
  br label %53, !dbg !2143

; <label>:53                                      ; preds = %52
  %54 = load i32* %i, align 4, !dbg !2147
  %55 = add i32 %54, 1, !dbg !2147
  store i32 %55, i32* %i, align 4, !dbg !2147
  br label %12, !dbg !2147

; <label>:56                                      ; preds = %12
  %57 = load %struct.Table** %2, align 4, !dbg !2148
  %58 = getelementptr inbounds %struct.Table* %57, i32 0, i32 7, !dbg !2148
  %59 = load %struct.Node** %58, align 4, !dbg !2148
  %60 = getelementptr inbounds %struct.Node* %59, i32 0, !dbg !2148
  store %struct.Node* %60, %struct.Node** %n, align 4, !dbg !2148
  br label %61, !dbg !2148

; <label>:61                                      ; preds = %128, %56
  %62 = load %struct.Node** %n, align 4, !dbg !2150
  %63 = load %struct.Node** %limit, align 4, !dbg !2150
  %64 = icmp ult %struct.Node* %62, %63, !dbg !2150
  br i1 %64, label %65, label %131, !dbg !2150

; <label>:65                                      ; preds = %61
  %66 = load %struct.Node** %n, align 4, !dbg !2153
  %67 = getelementptr inbounds %struct.Node* %66, i32 0, i32 0, !dbg !2153
  %68 = getelementptr inbounds %struct.lua_TValue* %67, i32 0, i32 1, !dbg !2153
  %69 = load i32* %68, align 4, !dbg !2153
  %70 = icmp eq i32 %69, 0, !dbg !2153
  br i1 %70, label %71, label %73, !dbg !2153

; <label>:71                                      ; preds = %65
  %72 = load %struct.Node** %n, align 4, !dbg !2156
  call void @removeentry(%struct.Node* %72), !dbg !2156
  br label %127, !dbg !2156

; <label>:73                                      ; preds = %65
  %74 = load %struct.Node** %n, align 4, !dbg !2157
  %75 = getelementptr inbounds %struct.Node* %74, i32 0, i32 1, !dbg !2157
  %76 = bitcast %union.TKey* %75 to %struct.lua_TValue*, !dbg !2157
  %77 = getelementptr inbounds %struct.lua_TValue* %76, i32 0, i32 1, !dbg !2157
  %78 = load i32* %77, align 4, !dbg !2157
  %79 = and i32 %78, 64, !dbg !2157
  %80 = icmp ne i32 %79, 0, !dbg !2157
  br i1 %80, label %81, label %101, !dbg !2157

; <label>:81                                      ; preds = %73
  %82 = load %struct.Node** %n, align 4, !dbg !2161
  %83 = getelementptr inbounds %struct.Node* %82, i32 0, i32 1, !dbg !2161
  %84 = bitcast %union.TKey* %83 to %struct.lua_TValue*, !dbg !2161
  %85 = getelementptr inbounds %struct.lua_TValue* %84, i32 0, i32 0, !dbg !2161
  %86 = bitcast %union.Value* %85 to %struct.GCObject**, !dbg !2161
  %87 = load %struct.GCObject** %86, align 4, !dbg !2161
  %88 = getelementptr inbounds %struct.GCObject* %87, i32 0, i32 2, !dbg !2161
  %89 = load i8* %88, align 1, !dbg !2161
  %90 = zext i8 %89 to i32, !dbg !2161
  %91 = and i32 %90, 3, !dbg !2161
  %92 = icmp ne i32 %91, 0, !dbg !2161
  br i1 %92, label %93, label %101, !dbg !2161

; <label>:93                                      ; preds = %81
  %94 = load %struct.global_State** %1, align 4, !dbg !2163
  %95 = load %struct.Node** %n, align 4, !dbg !2163
  %96 = getelementptr inbounds %struct.Node* %95, i32 0, i32 1, !dbg !2163
  %97 = bitcast %union.TKey* %96 to %struct.lua_TValue*, !dbg !2163
  %98 = getelementptr inbounds %struct.lua_TValue* %97, i32 0, i32 0, !dbg !2163
  %99 = bitcast %union.Value* %98 to %struct.GCObject**, !dbg !2163
  %100 = load %struct.GCObject** %99, align 4, !dbg !2163
  call void @reallymarkobject(%struct.global_State* %94, %struct.GCObject* %100), !dbg !2163
  br label %101, !dbg !2163

; <label>:101                                     ; preds = %93, %81, %73
  %102 = load %struct.Node** %n, align 4, !dbg !2165
  %103 = getelementptr inbounds %struct.Node* %102, i32 0, i32 0, !dbg !2165
  %104 = getelementptr inbounds %struct.lua_TValue* %103, i32 0, i32 1, !dbg !2165
  %105 = load i32* %104, align 4, !dbg !2165
  %106 = and i32 %105, 64, !dbg !2165
  %107 = icmp ne i32 %106, 0, !dbg !2165
  br i1 %107, label %108, label %126, !dbg !2165

; <label>:108                                     ; preds = %101
  %109 = load %struct.Node** %n, align 4, !dbg !2168
  %110 = getelementptr inbounds %struct.Node* %109, i32 0, i32 0, !dbg !2168
  %111 = getelementptr inbounds %struct.lua_TValue* %110, i32 0, i32 0, !dbg !2168
  %112 = bitcast %union.Value* %111 to %struct.GCObject**, !dbg !2168
  %113 = load %struct.GCObject** %112, align 4, !dbg !2168
  %114 = getelementptr inbounds %struct.GCObject* %113, i32 0, i32 2, !dbg !2168
  %115 = load i8* %114, align 1, !dbg !2168
  %116 = zext i8 %115 to i32, !dbg !2168
  %117 = and i32 %116, 3, !dbg !2168
  %118 = icmp ne i32 %117, 0, !dbg !2168
  br i1 %118, label %119, label %126, !dbg !2168

; <label>:119                                     ; preds = %108
  %120 = load %struct.global_State** %1, align 4, !dbg !2170
  %121 = load %struct.Node** %n, align 4, !dbg !2170
  %122 = getelementptr inbounds %struct.Node* %121, i32 0, i32 0, !dbg !2170
  %123 = getelementptr inbounds %struct.lua_TValue* %122, i32 0, i32 0, !dbg !2170
  %124 = bitcast %union.Value* %123 to %struct.GCObject**, !dbg !2170
  %125 = load %struct.GCObject** %124, align 4, !dbg !2170
  call void @reallymarkobject(%struct.global_State* %120, %struct.GCObject* %125), !dbg !2170
  br label %126, !dbg !2170

; <label>:126                                     ; preds = %119, %108, %101
  br label %127

; <label>:127                                     ; preds = %126, %71
  br label %128, !dbg !2172

; <label>:128                                     ; preds = %127
  %129 = load %struct.Node** %n, align 4, !dbg !2173
  %130 = getelementptr inbounds %struct.Node* %129, i32 1, !dbg !2173
  store %struct.Node* %130, %struct.Node** %n, align 4, !dbg !2173
  br label %61, !dbg !2173

; <label>:131                                     ; preds = %61
  ret void, !dbg !2174
}

; Function Attrs: nounwind
define internal void @freeobj(%struct.lua_State* %L, %struct.GCObject* %o) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca %struct.GCObject*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !2175), !dbg !2176
  store %struct.GCObject* %o, %struct.GCObject** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.GCObject** %2}, metadata !2177), !dbg !2178
  %3 = load %struct.GCObject** %2, align 4, !dbg !2179
  %4 = getelementptr inbounds %struct.GCObject* %3, i32 0, i32 1, !dbg !2179
  %5 = load i8* %4, align 1, !dbg !2179
  %6 = zext i8 %5 to i32, !dbg !2179
  switch i32 %6, label %86 [
    i32 9, label %7
    i32 6, label %12
    i32 38, label %18
    i32 5, label %33
    i32 8, label %38
    i32 7, label %43
    i32 4, label %54
    i32 20, label %72
  ], !dbg !2179

; <label>:7                                       ; preds = %0
  %8 = load %struct.lua_State** %1, align 4, !dbg !2180
  %9 = load %struct.GCObject** %2, align 4, !dbg !2180
  %10 = bitcast %struct.GCObject* %9 to %union.GCUnion*, !dbg !2180
  %11 = bitcast %union.GCUnion* %10 to %struct.Proto*, !dbg !2180
  call void @luaF_freeproto(%struct.lua_State* %8, %struct.Proto* %11), !dbg !2180
  br label %87, !dbg !2182

; <label>:12                                      ; preds = %0
  %13 = load %struct.lua_State** %1, align 4, !dbg !2183
  %14 = load %struct.GCObject** %2, align 4, !dbg !2183
  %15 = bitcast %struct.GCObject* %14 to %union.GCUnion*, !dbg !2183
  %16 = bitcast %union.GCUnion* %15 to %union.Closure*, !dbg !2183
  %17 = bitcast %union.Closure* %16 to %struct.LClosure*, !dbg !2183
  call void @freeLclosure(%struct.lua_State* %13, %struct.LClosure* %17), !dbg !2183
  br label %87, !dbg !2185

; <label>:18                                      ; preds = %0
  %19 = load %struct.lua_State** %1, align 4, !dbg !2186
  %20 = load %struct.GCObject** %2, align 4, !dbg !2186
  %21 = bitcast %struct.GCObject* %20 to i8*, !dbg !2186
  %22 = load %struct.GCObject** %2, align 4, !dbg !2186
  %23 = bitcast %struct.GCObject* %22 to %union.GCUnion*, !dbg !2186
  %24 = bitcast %union.GCUnion* %23 to %union.Closure*, !dbg !2186
  %25 = bitcast %union.Closure* %24 to %struct.CClosure*, !dbg !2186
  %26 = getelementptr inbounds %struct.CClosure* %25, i32 0, i32 3, !dbg !2186
  %27 = load i8* %26, align 1, !dbg !2186
  %28 = zext i8 %27 to i32, !dbg !2186
  %29 = sub nsw i32 %28, 1, !dbg !2186
  %30 = mul i32 16, %29, !dbg !2186
  %31 = add nsw i32 32, %30, !dbg !2186
  %32 = call i8* @luaM_realloc_(%struct.lua_State* %19, i8* %21, i32 %31, i32 0), !dbg !2186
  br label %87, !dbg !2188

; <label>:33                                      ; preds = %0
  %34 = load %struct.lua_State** %1, align 4, !dbg !2189
  %35 = load %struct.GCObject** %2, align 4, !dbg !2189
  %36 = bitcast %struct.GCObject* %35 to %union.GCUnion*, !dbg !2189
  %37 = bitcast %union.GCUnion* %36 to %struct.Table*, !dbg !2189
  call void @luaH_free(%struct.lua_State* %34, %struct.Table* %37), !dbg !2189
  br label %87, !dbg !2190

; <label>:38                                      ; preds = %0
  %39 = load %struct.lua_State** %1, align 4, !dbg !2191
  %40 = load %struct.GCObject** %2, align 4, !dbg !2191
  %41 = bitcast %struct.GCObject* %40 to %union.GCUnion*, !dbg !2191
  %42 = bitcast %union.GCUnion* %41 to %struct.lua_State*, !dbg !2191
  call void @luaE_freethread(%struct.lua_State* %39, %struct.lua_State* %42), !dbg !2191
  br label %87, !dbg !2192

; <label>:43                                      ; preds = %0
  %44 = load %struct.lua_State** %1, align 4, !dbg !2193
  %45 = load %struct.GCObject** %2, align 4, !dbg !2193
  %46 = bitcast %struct.GCObject* %45 to i8*, !dbg !2193
  %47 = load %struct.GCObject** %2, align 4, !dbg !2193
  %48 = bitcast %struct.GCObject* %47 to %union.GCUnion*, !dbg !2193
  %49 = bitcast %union.GCUnion* %48 to %struct.Udata*, !dbg !2193
  %50 = getelementptr inbounds %struct.Udata* %49, i32 0, i32 5, !dbg !2193
  %51 = load i32* %50, align 4, !dbg !2193
  %52 = add i32 24, %51, !dbg !2193
  %53 = call i8* @luaM_realloc_(%struct.lua_State* %44, i8* %46, i32 %52, i32 0), !dbg !2193
  br label %87, !dbg !2194

; <label>:54                                      ; preds = %0
  %55 = load %struct.lua_State** %1, align 4, !dbg !2195
  %56 = load %struct.GCObject** %2, align 4, !dbg !2195
  %57 = bitcast %struct.GCObject* %56 to %union.GCUnion*, !dbg !2195
  %58 = bitcast %union.GCUnion* %57 to %struct.TString*, !dbg !2195
  call void @luaS_remove(%struct.lua_State* %55, %struct.TString* %58), !dbg !2195
  %59 = load %struct.lua_State** %1, align 4, !dbg !2196
  %60 = load %struct.GCObject** %2, align 4, !dbg !2196
  %61 = bitcast %struct.GCObject* %60 to i8*, !dbg !2196
  %62 = load %struct.GCObject** %2, align 4, !dbg !2196
  %63 = bitcast %struct.GCObject* %62 to %union.GCUnion*, !dbg !2196
  %64 = bitcast %union.GCUnion* %63 to %struct.TString*, !dbg !2196
  %65 = getelementptr inbounds %struct.TString* %64, i32 0, i32 4, !dbg !2196
  %66 = load i8* %65, align 1, !dbg !2196
  %67 = zext i8 %66 to i32, !dbg !2196
  %68 = add nsw i32 %67, 1, !dbg !2196
  %69 = mul i32 %68, 1, !dbg !2196
  %70 = add i32 16, %69, !dbg !2196
  %71 = call i8* @luaM_realloc_(%struct.lua_State* %59, i8* %61, i32 %70, i32 0), !dbg !2196
  br label %87, !dbg !2197

; <label>:72                                      ; preds = %0
  %73 = load %struct.lua_State** %1, align 4, !dbg !2198
  %74 = load %struct.GCObject** %2, align 4, !dbg !2198
  %75 = bitcast %struct.GCObject* %74 to i8*, !dbg !2198
  %76 = load %struct.GCObject** %2, align 4, !dbg !2198
  %77 = bitcast %struct.GCObject* %76 to %union.GCUnion*, !dbg !2198
  %78 = bitcast %union.GCUnion* %77 to %struct.TString*, !dbg !2198
  %79 = getelementptr inbounds %struct.TString* %78, i32 0, i32 6, !dbg !2198
  %80 = bitcast %union.anon* %79 to i32*, !dbg !2198
  %81 = load i32* %80, align 4, !dbg !2198
  %82 = add i32 %81, 1, !dbg !2198
  %83 = mul i32 %82, 1, !dbg !2198
  %84 = add i32 16, %83, !dbg !2198
  %85 = call i8* @luaM_realloc_(%struct.lua_State* %73, i8* %75, i32 %84, i32 0), !dbg !2198
  br label %87, !dbg !2200

; <label>:86                                      ; preds = %0
  br label %87, !dbg !2201

; <label>:87                                      ; preds = %86, %72, %54, %43, %38, %33, %18, %12, %7
  ret void, !dbg !2202
}

declare hidden void @luaF_freeproto(%struct.lua_State*, %struct.Proto*) #2

; Function Attrs: nounwind
define internal void @freeLclosure(%struct.lua_State* %L, %struct.LClosure* %cl) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca %struct.LClosure*, align 4
  %i = alloca i32, align 4
  %uv = alloca %struct.UpVal*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !2203), !dbg !2204
  store %struct.LClosure* %cl, %struct.LClosure** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.LClosure** %2}, metadata !2205), !dbg !2206
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !2207), !dbg !2208
  store i32 0, i32* %i, align 4, !dbg !2209
  br label %3, !dbg !2209

; <label>:3                                       ; preds = %22, %0
  %4 = load i32* %i, align 4, !dbg !2211
  %5 = load %struct.LClosure** %2, align 4, !dbg !2211
  %6 = getelementptr inbounds %struct.LClosure* %5, i32 0, i32 3, !dbg !2211
  %7 = load i8* %6, align 1, !dbg !2211
  %8 = zext i8 %7 to i32, !dbg !2211
  %9 = icmp slt i32 %4, %8, !dbg !2211
  br i1 %9, label %10, label %25, !dbg !2211

; <label>:10                                      ; preds = %3
  call void @llvm.dbg.declare(metadata !{%struct.UpVal** %uv}, metadata !2214), !dbg !2216
  %11 = load i32* %i, align 4, !dbg !2217
  %12 = load %struct.LClosure** %2, align 4, !dbg !2217
  %13 = getelementptr inbounds %struct.LClosure* %12, i32 0, i32 6, !dbg !2217
  %14 = getelementptr inbounds [1 x %struct.UpVal*]* %13, i32 0, i32 %11, !dbg !2217
  %15 = load %struct.UpVal** %14, align 4, !dbg !2217
  store %struct.UpVal* %15, %struct.UpVal** %uv, align 4, !dbg !2217
  %16 = load %struct.UpVal** %uv, align 4, !dbg !2218
  %17 = icmp ne %struct.UpVal* %16, null, !dbg !2218
  br i1 %17, label %18, label %21, !dbg !2218

; <label>:18                                      ; preds = %10
  %19 = load %struct.lua_State** %1, align 4, !dbg !2220
  %20 = load %struct.UpVal** %uv, align 4, !dbg !2220
  call void @luaC_upvdeccount(%struct.lua_State* %19, %struct.UpVal* %20), !dbg !2220
  br label %21, !dbg !2220

; <label>:21                                      ; preds = %18, %10
  br label %22, !dbg !2221

; <label>:22                                      ; preds = %21
  %23 = load i32* %i, align 4, !dbg !2222
  %24 = add nsw i32 %23, 1, !dbg !2222
  store i32 %24, i32* %i, align 4, !dbg !2222
  br label %3, !dbg !2222

; <label>:25                                      ; preds = %3
  %26 = load %struct.lua_State** %1, align 4, !dbg !2223
  %27 = load %struct.LClosure** %2, align 4, !dbg !2223
  %28 = bitcast %struct.LClosure* %27 to i8*, !dbg !2223
  %29 = load %struct.LClosure** %2, align 4, !dbg !2223
  %30 = getelementptr inbounds %struct.LClosure* %29, i32 0, i32 3, !dbg !2223
  %31 = load i8* %30, align 1, !dbg !2223
  %32 = zext i8 %31 to i32, !dbg !2223
  %33 = sub nsw i32 %32, 1, !dbg !2223
  %34 = mul i32 4, %33, !dbg !2223
  %35 = add nsw i32 20, %34, !dbg !2223
  %36 = call i8* @luaM_realloc_(%struct.lua_State* %26, i8* %28, i32 %35, i32 0), !dbg !2223
  ret void, !dbg !2224
}

declare hidden void @luaH_free(%struct.lua_State*, %struct.Table*) #2

declare hidden void @luaE_freethread(%struct.lua_State*, %struct.lua_State*) #2

declare hidden void @luaS_remove(%struct.lua_State*, %struct.TString*) #2

; Function Attrs: nounwind
define internal %struct.GCObject** @findlast(%struct.GCObject** %p) #0 {
  %1 = alloca %struct.GCObject**, align 4
  store %struct.GCObject** %p, %struct.GCObject*** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.GCObject*** %1}, metadata !2225), !dbg !2226
  br label %2, !dbg !2227

; <label>:2                                       ; preds = %6, %0
  %3 = load %struct.GCObject*** %1, align 4, !dbg !2228
  %4 = load %struct.GCObject** %3, align 4, !dbg !2228
  %5 = icmp ne %struct.GCObject* %4, null, !dbg !2228
  br i1 %5, label %6, label %10, !dbg !2228

; <label>:6                                       ; preds = %2
  %7 = load %struct.GCObject*** %1, align 4, !dbg !2230
  %8 = load %struct.GCObject** %7, align 4, !dbg !2230
  %9 = getelementptr inbounds %struct.GCObject* %8, i32 0, i32 0, !dbg !2230
  store %struct.GCObject** %9, %struct.GCObject*** %1, align 4, !dbg !2230
  br label %2, !dbg !2230

; <label>:10                                      ; preds = %2
  %11 = load %struct.GCObject*** %1, align 4, !dbg !2231
  ret %struct.GCObject** %11, !dbg !2231
}

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { noreturn "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn }
attributes #7 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!xidane.fname = !{!496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625}
!xidane.function_declaration_type = !{!496, !626, !498, !627, !500, !628, !502, !629, !504, !630, !506, !631, !508, !632, !510, !629, !512, !633, !514, !634, !516, !635, !518, !636, !520, !637, !522, !636, !524, !638, !526, !639, !528, !640, !530, !636, !532, !641, !534, !642, !536, !643, !538, !644, !540, !639, !542, !636, !544, !639, !546, !645, !548, !646, !550, !647, !552, !648, !554, !649, !556, !639, !558, !650, !560, !643, !562, !643, !564, !643, !566, !651, !568, !652, !570, !653, !572, !639, !574, !643, !576, !643, !578, !643, !580, !654, !582, !643, !584, !654, !586, !643, !588, !655, !590, !656, !592, !657, !594, !658, !596, !659, !598, !660, !600, !661, !602, !662, !604, !636, !606, !663, !608, !664, !610, !664, !612, !630, !614, !665, !616, !666, !618, !628, !620, !667, !622, !668, !624, !669}
!xidane.function_declaration_filename = !{!496, !670, !498, !671, !500, !670, !502, !670, !504, !670, !506, !670, !508, !672, !510, !670, !512, !670, !514, !673, !516, !671, !518, !670, !520, !671, !522, !671, !524, !671, !526, !670, !528, !671, !530, !670, !532, !671, !534, !674, !536, !671, !538, !671, !540, !670, !542, !671, !544, !671, !546, !671, !548, !673, !550, !675, !552, !671, !554, !676, !556, !675, !558, !675, !560, !671, !562, !671, !564, !671, !566, !671, !568, !671, !570, !671, !572, !677, !574, !671, !576, !671, !578, !671, !580, !671, !582, !671, !584, !671, !586, !677, !588, !671, !590, !671, !592, !671, !594, !671, !596, !671, !598, !671, !600, !671, !602, !671, !604, !675, !606, !678, !608, !671, !610, !671, !612, !671, !614, !679, !616, !671, !618, !680, !620, !674, !622, !677, !624, !671}
!xidane.ExternC = !{!496, !500, !502, !504, !506, !508, !510, !512, !514, !518, !526, !530, !534, !540, !548, !550, !554, !556, !558, !572, !586, !604, !606, !614, !618, !620, !622}
!llvm.module.flags = !{!681, !682, !683, !684}
!llvm.ident = !{!685}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.0 (tags/RELEASE_350/final)", i1 false, metadata !"", i32 0, metadata !2, metadata !31, metadata !32, metadata !31, metadata !31, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src\lgc.c] [DW_LANG_C99]
!1 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src\5Clgc.c", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
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
!32 = metadata !{metadata !33, metadata !310, metadata !315, metadata !318, metadata !321, metadata !324, metadata !325, metadata !328, metadata !331, metadata !334, metadata !335, metadata !336, metadata !337, metadata !338, metadata !339, metadata !342, metadata !345, metadata !348, metadata !351, metadata !354, metadata !357, metadata !360, metadata !363, metadata !366, metadata !369, metadata !374, metadata !375, metadata !376, metadata !377, metadata !380, metadata !381, metadata !382, metadata !383, metadata !384, metadata !445, metadata !448, metadata !463, metadata !468, metadata !471, metadata !474, metadata !475, metadata !476, metadata !479, metadata !480, metadata !483, metadata !484, metadata !487, metadata !490, metadata !493}
!33 = metadata !{i32 786478, metadata !34, metadata !35, metadata !"luaC_barrier_", metadata !"luaC_barrier_", metadata !"", i32 155, metadata !36, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.lua_State*, %struct.GCObject*, %struct.GCObject*)* @luaC_barrier_, null, null, metadata !31, i32 155} ; [ DW_TAG_subprogram ] [line 155] [def] [luaC_barrier_]
!34 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lgc.c", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!35 = metadata !{i32 786473, metadata !34}        ; [ DW_TAG_file_type ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!36 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !37, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!37 = metadata !{null, metadata !38, metadata !45, metadata !45}
!38 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !39} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from lua_State]
!39 = metadata !{i32 786454, metadata !40, null, metadata !"lua_State", i32 56, i64 0, i64 0, i64 0, i32 0, metadata !41} ; [ DW_TAG_typedef ] [lua_State] [line 56, size 0, align 0, offset 0] [from lua_State]
!40 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lua.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!41 = metadata !{i32 786451, metadata !42, null, metadata !"lua_State", i32 159, i64 960, i64 32, i32 0, i32 0, null, metadata !43, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [lua_State] [line 159, size 960, align 32, offset 0] [def] [from ]
!42 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lstate.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!43 = metadata !{metadata !44, metadata !56, metadata !57, metadata !58, metadata !60, metadata !61, metadata !88, metadata !204, metadata !242, metadata !243, metadata !244, metadata !245, metadata !262, metadata !263, metadata !264, metadata !267, metadata !268, metadata !298, metadata !299, metadata !300, metadata !301, metadata !302, metadata !303, metadata !304, metadata !309}
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
!248 = metadata !{i32 786451, metadata !249, null, metadata !"UpVal", i32 35, i64 192, i64 64, i32 0, i32 0, null, metadata !250, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [UpVal] [line 35, size 192, align 64, offset 0] [def] [from ]
!249 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lfunc.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!250 = metadata !{metadata !251, metadata !252, metadata !253}
!251 = metadata !{i32 786445, metadata !249, metadata !248, metadata !"v", i32 36, i64 32, i64 32, i64 0, i32 0, metadata !63} ; [ DW_TAG_member ] [v] [line 36, size 32, align 32, offset 0] [from ]
!252 = metadata !{i32 786445, metadata !249, metadata !248, metadata !"refcount", i32 37, i64 32, i64 32, i64 32, i32 0, metadata !107} ; [ DW_TAG_member ] [refcount] [line 37, size 32, align 32, offset 32] [from lu_mem]
!253 = metadata !{i32 786445, metadata !249, metadata !248, metadata !"u", i32 44, i64 128, i64 64, i64 64, i32 0, metadata !254} ; [ DW_TAG_member ] [u] [line 44, size 128, align 64, offset 64] [from ]
!254 = metadata !{i32 786455, metadata !249, metadata !248, metadata !"", i32 38, i64 128, i64 64, i64 0, i32 0, null, metadata !255, i32 0, null, null, null} ; [ DW_TAG_union_type ] [line 38, size 128, align 64, offset 0] [def] [from ]
!255 = metadata !{metadata !256, metadata !261}
!256 = metadata !{i32 786445, metadata !249, metadata !254, metadata !"open", i32 42, i64 64, i64 32, i64 0, i32 0, metadata !257} ; [ DW_TAG_member ] [open] [line 42, size 64, align 32, offset 0] [from ]
!257 = metadata !{i32 786451, metadata !249, metadata !254, metadata !"", i32 39, i64 64, i64 32, i32 0, i32 0, null, metadata !258, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 39, size 64, align 32, offset 0] [def] [from ]
!258 = metadata !{metadata !259, metadata !260}
!259 = metadata !{i32 786445, metadata !249, metadata !257, metadata !"next", i32 40, i64 32, i64 32, i64 0, i32 0, metadata !246} ; [ DW_TAG_member ] [next] [line 40, size 32, align 32, offset 0] [from ]
!260 = metadata !{i32 786445, metadata !249, metadata !257, metadata !"touched", i32 41, i64 32, i64 32, i64 32, i32 0, metadata !75} ; [ DW_TAG_member ] [touched] [line 41, size 32, align 32, offset 32] [from int]
!261 = metadata !{i32 786445, metadata !249, metadata !254, metadata !"value", i32 43, i64 128, i64 64, i64 0, i32 0, metadata !64} ; [ DW_TAG_member ] [value] [line 43, size 128, align 64, offset 0] [from TValue]
!262 = metadata !{i32 786445, metadata !42, metadata !41, metadata !"gclist", i32 170, i64 32, i64 32, i64 320, i32 0, metadata !45} ; [ DW_TAG_member ] [gclist] [line 170, size 32, align 32, offset 320] [from ]
!263 = metadata !{i32 786445, metadata !42, metadata !41, metadata !"twups", i32 171, i64 32, i64 32, i64 352, i32 0, metadata !151} ; [ DW_TAG_member ] [twups] [line 171, size 32, align 32, offset 352] [from ]
!264 = metadata !{i32 786445, metadata !42, metadata !41, metadata !"errorJmp", i32 172, i64 32, i64 32, i64 384, i32 0, metadata !265} ; [ DW_TAG_member ] [errorJmp] [line 172, size 32, align 32, offset 384] [from ]
!265 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !266} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from lua_longjmp]
!266 = metadata !{i32 786451, metadata !42, null, metadata !"lua_longjmp", i32 33, i64 0, i64 0, i32 0, i32 4, null, null, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [lua_longjmp] [line 33, size 0, align 0, offset 0] [decl] [from ]
!267 = metadata !{i32 786445, metadata !42, metadata !41, metadata !"base_ci", i32 173, i64 288, i64 32, i64 416, i32 0, metadata !206} ; [ DW_TAG_member ] [base_ci] [line 173, size 288, align 32, offset 416] [from CallInfo]
!268 = metadata !{i32 786445, metadata !42, metadata !41, metadata !"hook", i32 174, i64 32, i64 32, i64 704, i32 0, metadata !269} ; [ DW_TAG_member ] [hook] [line 174, size 32, align 32, offset 704] [from ]
!269 = metadata !{i32 786485, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !270} ; [ DW_TAG_volatile_type ] [line 0, size 0, align 0, offset 0] [from lua_Hook]
!270 = metadata !{i32 786454, metadata !40, null, metadata !"lua_Hook", i32 421, i64 0, i64 0, i64 0, i32 0, metadata !271} ; [ DW_TAG_typedef ] [lua_Hook] [line 421, size 0, align 0, offset 0] [from ]
!271 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !272} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!272 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !273, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!273 = metadata !{null, metadata !38, metadata !274}
!274 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !275} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from lua_Debug]
!275 = metadata !{i32 786454, metadata !40, null, metadata !"lua_Debug", i32 417, i64 0, i64 0, i64 0, i32 0, metadata !276} ; [ DW_TAG_typedef ] [lua_Debug] [line 417, size 0, align 0, offset 0] [from lua_Debug]
!276 = metadata !{i32 786451, metadata !40, null, metadata !"lua_Debug", i32 441, i64 800, i64 32, i32 0, i32 0, null, metadata !277, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [lua_Debug] [line 441, size 800, align 32, offset 0] [def] [from ]
!277 = metadata !{metadata !278, metadata !279, metadata !283, metadata !284, metadata !285, metadata !286, metadata !287, metadata !288, metadata !289, metadata !290, metadata !291, metadata !292, metadata !293, metadata !297}
!278 = metadata !{i32 786445, metadata !40, metadata !276, metadata !"event", i32 442, i64 32, i64 32, i64 0, i32 0, metadata !75} ; [ DW_TAG_member ] [event] [line 442, size 32, align 32, offset 0] [from int]
!279 = metadata !{i32 786445, metadata !40, metadata !276, metadata !"name", i32 443, i64 32, i64 32, i64 32, i32 0, metadata !280} ; [ DW_TAG_member ] [name] [line 443, size 32, align 32, offset 32] [from ]
!280 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !281} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!281 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !282} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!282 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!283 = metadata !{i32 786445, metadata !40, metadata !276, metadata !"namewhat", i32 444, i64 32, i64 32, i64 64, i32 0, metadata !280} ; [ DW_TAG_member ] [namewhat] [line 444, size 32, align 32, offset 64] [from ]
!284 = metadata !{i32 786445, metadata !40, metadata !276, metadata !"what", i32 445, i64 32, i64 32, i64 96, i32 0, metadata !280} ; [ DW_TAG_member ] [what] [line 445, size 32, align 32, offset 96] [from ]
!285 = metadata !{i32 786445, metadata !40, metadata !276, metadata !"source", i32 446, i64 32, i64 32, i64 128, i32 0, metadata !280} ; [ DW_TAG_member ] [source] [line 446, size 32, align 32, offset 128] [from ]
!286 = metadata !{i32 786445, metadata !40, metadata !276, metadata !"currentline", i32 447, i64 32, i64 32, i64 160, i32 0, metadata !75} ; [ DW_TAG_member ] [currentline] [line 447, size 32, align 32, offset 160] [from int]
!287 = metadata !{i32 786445, metadata !40, metadata !276, metadata !"linedefined", i32 448, i64 32, i64 32, i64 192, i32 0, metadata !75} ; [ DW_TAG_member ] [linedefined] [line 448, size 32, align 32, offset 192] [from int]
!288 = metadata !{i32 786445, metadata !40, metadata !276, metadata !"lastlinedefined", i32 449, i64 32, i64 32, i64 224, i32 0, metadata !75} ; [ DW_TAG_member ] [lastlinedefined] [line 449, size 32, align 32, offset 224] [from int]
!289 = metadata !{i32 786445, metadata !40, metadata !276, metadata !"nups", i32 450, i64 8, i64 8, i64 256, i32 0, metadata !54} ; [ DW_TAG_member ] [nups] [line 450, size 8, align 8, offset 256] [from unsigned char]
!290 = metadata !{i32 786445, metadata !40, metadata !276, metadata !"nparams", i32 451, i64 8, i64 8, i64 264, i32 0, metadata !54} ; [ DW_TAG_member ] [nparams] [line 451, size 8, align 8, offset 264] [from unsigned char]
!291 = metadata !{i32 786445, metadata !40, metadata !276, metadata !"isvararg", i32 452, i64 8, i64 8, i64 272, i32 0, metadata !282} ; [ DW_TAG_member ] [isvararg] [line 452, size 8, align 8, offset 272] [from char]
!292 = metadata !{i32 786445, metadata !40, metadata !276, metadata !"istailcall", i32 453, i64 8, i64 8, i64 280, i32 0, metadata !282} ; [ DW_TAG_member ] [istailcall] [line 453, size 8, align 8, offset 280] [from char]
!293 = metadata !{i32 786445, metadata !40, metadata !276, metadata !"short_src", i32 454, i64 480, i64 8, i64 288, i32 0, metadata !294} ; [ DW_TAG_member ] [short_src] [line 454, size 480, align 8, offset 288] [from ]
!294 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 480, i64 8, i32 0, i32 0, metadata !282, metadata !295, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 480, align 8, offset 0] [from char]
!295 = metadata !{metadata !296}
!296 = metadata !{i32 786465, i64 0, i64 60}      ; [ DW_TAG_subrange_type ] [0, 59]
!297 = metadata !{i32 786445, metadata !40, metadata !276, metadata !"i_ci", i32 456, i64 32, i64 32, i64 768, i32 0, metadata !212} ; [ DW_TAG_member ] [i_ci] [line 456, size 32, align 32, offset 768] [from ]
!298 = metadata !{i32 786445, metadata !42, metadata !41, metadata !"errfunc", i32 175, i64 32, i64 32, i64 736, i32 0, metadata !104} ; [ DW_TAG_member ] [errfunc] [line 175, size 32, align 32, offset 736] [from ptrdiff_t]
!299 = metadata !{i32 786445, metadata !42, metadata !41, metadata !"stacksize", i32 176, i64 32, i64 32, i64 768, i32 0, metadata !75} ; [ DW_TAG_member ] [stacksize] [line 176, size 32, align 32, offset 768] [from int]
!300 = metadata !{i32 786445, metadata !42, metadata !41, metadata !"basehookcount", i32 177, i64 32, i64 32, i64 800, i32 0, metadata !75} ; [ DW_TAG_member ] [basehookcount] [line 177, size 32, align 32, offset 800] [from int]
!301 = metadata !{i32 786445, metadata !42, metadata !41, metadata !"hookcount", i32 178, i64 32, i64 32, i64 832, i32 0, metadata !75} ; [ DW_TAG_member ] [hookcount] [line 178, size 32, align 32, offset 832] [from int]
!302 = metadata !{i32 786445, metadata !42, metadata !41, metadata !"nny", i32 179, i64 16, i64 16, i64 864, i32 0, metadata !59} ; [ DW_TAG_member ] [nny] [line 179, size 16, align 16, offset 864] [from unsigned short]
!303 = metadata !{i32 786445, metadata !42, metadata !41, metadata !"nCcalls", i32 180, i64 16, i64 16, i64 880, i32 0, metadata !59} ; [ DW_TAG_member ] [nCcalls] [line 180, size 16, align 16, offset 880] [from unsigned short]
!304 = metadata !{i32 786445, metadata !42, metadata !41, metadata !"hookmask", i32 181, i64 32, i64 32, i64 896, i32 0, metadata !305} ; [ DW_TAG_member ] [hookmask] [line 181, size 32, align 32, offset 896] [from sig_atomic_t]
!305 = metadata !{i32 786454, metadata !306, null, metadata !"sig_atomic_t", i32 40, i64 0, i64 0, i64 0, i32 0, metadata !307} ; [ DW_TAG_typedef ] [sig_atomic_t] [line 40, size 0, align 0, offset 0] [from __sig_atomic_t]
!306 = metadata !{metadata !"D:/Xilinx/SDx/2016.3/SDK/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include\5Csignal.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!307 = metadata !{i32 786454, metadata !308, null, metadata !"__sig_atomic_t", i32 22, i64 0, i64 0, i64 0, i32 0, metadata !75} ; [ DW_TAG_typedef ] [__sig_atomic_t] [line 22, size 0, align 0, offset 0] [from int]
!308 = metadata !{metadata !"D:/Xilinx/SDx/2016.3/SDK/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include\5Cbits/sigset.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!309 = metadata !{i32 786445, metadata !42, metadata !41, metadata !"allowhook", i32 182, i64 8, i64 8, i64 928, i32 0, metadata !52} ; [ DW_TAG_member ] [allowhook] [line 182, size 8, align 8, offset 928] [from lu_byte]
!310 = metadata !{i32 786478, metadata !34, metadata !35, metadata !"luaC_barrierback_", metadata !"luaC_barrierback_", metadata !"", i32 171, metadata !311, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.lua_State*, %struct.Table*)* @luaC_barrierback_, null, null, metadata !31, i32 171} ; [ DW_TAG_subprogram ] [line 171] [def] [luaC_barrierback_]
!311 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !312, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!312 = metadata !{null, metadata !38, metadata !313}
!313 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !314} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from Table]
!314 = metadata !{i32 786454, metadata !47, null, metadata !"Table", i32 507, i64 0, i64 0, i64 0, i32 0, metadata !168} ; [ DW_TAG_typedef ] [Table] [line 507, size 0, align 0, offset 0] [from Table]
!315 = metadata !{i32 786478, metadata !34, metadata !35, metadata !"luaC_upvalbarrier_", metadata !"luaC_upvalbarrier_", metadata !"", i32 185, metadata !316, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.lua_State*, %struct.UpVal*)* @luaC_upvalbarrier_, null, null, metadata !31, i32 185} ; [ DW_TAG_subprogram ] [line 185] [def] [luaC_upvalbarrier_]
!316 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !317, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!317 = metadata !{null, metadata !38, metadata !246}
!318 = metadata !{i32 786478, metadata !34, metadata !35, metadata !"luaC_fix", metadata !"luaC_fix", metadata !"", i32 194, metadata !319, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.lua_State*, %struct.GCObject*)* @luaC_fix, null, null, metadata !31, i32 194} ; [ DW_TAG_subprogram ] [line 194] [def] [luaC_fix]
!319 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !320, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!320 = metadata !{null, metadata !38, metadata !45}
!321 = metadata !{i32 786478, metadata !34, metadata !35, metadata !"luaC_newobj", metadata !"luaC_newobj", metadata !"", i32 208, metadata !322, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, %struct.GCObject* (%struct.lua_State*, i32, i32)* @luaC_newobj, null, null, metadata !31, i32 208} ; [ DW_TAG_subprogram ] [line 208] [def] [luaC_newobj]
!322 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !323, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!323 = metadata !{metadata !45, metadata !38, metadata !75, metadata !98}
!324 = metadata !{i32 786478, metadata !34, metadata !35, metadata !"luaC_upvdeccount", metadata !"luaC_upvdeccount", metadata !"", i32 677, metadata !316, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.lua_State*, %struct.UpVal*)* @luaC_upvdeccount, null, null, metadata !31, i32 677} ; [ DW_TAG_subprogram ] [line 677] [def] [luaC_upvdeccount]
!325 = metadata !{i32 786478, metadata !34, metadata !35, metadata !"luaC_checkfinalizer", metadata !"luaC_checkfinalizer", metadata !"", i32 899, metadata !326, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.lua_State*, %struct.GCObject*, %struct.Table*)* @luaC_checkfinalizer, null, null, metadata !31, i32 899} ; [ DW_TAG_subprogram ] [line 899] [def] [luaC_checkfinalizer]
!326 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !327, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!327 = metadata !{null, metadata !38, metadata !45, metadata !313}
!328 = metadata !{i32 786478, metadata !34, metadata !35, metadata !"luaC_freeallobjects", metadata !"luaC_freeallobjects", metadata !"", i32 964, metadata !329, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.lua_State*)* @luaC_freeallobjects, null, null, metadata !31, i32 964} ; [ DW_TAG_subprogram ] [line 964] [def] [luaC_freeallobjects]
!329 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !330, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!330 = metadata !{null, metadata !38}
!331 = metadata !{i32 786478, metadata !34, metadata !35, metadata !"luaC_runtilstate", metadata !"luaC_runtilstate", metadata !"", i32 1101, metadata !332, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.lua_State*, i32)* @luaC_runtilstate, null, null, metadata !31, i32 1101} ; [ DW_TAG_subprogram ] [line 1101] [def] [luaC_runtilstate]
!332 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !333, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!333 = metadata !{null, metadata !38, metadata !75}
!334 = metadata !{i32 786478, metadata !34, metadata !35, metadata !"luaC_step", metadata !"luaC_step", metadata !"", i32 1126, metadata !329, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.lua_State*)* @luaC_step, null, null, metadata !31, i32 1126} ; [ DW_TAG_subprogram ] [line 1126] [def] [luaC_step]
!335 = metadata !{i32 786478, metadata !34, metadata !35, metadata !"luaC_fullgc", metadata !"luaC_fullgc", metadata !"", i32 1156, metadata !332, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.lua_State*, i32)* @luaC_fullgc, null, null, metadata !31, i32 1156} ; [ DW_TAG_subprogram ] [line 1156] [def] [luaC_fullgc]
!336 = metadata !{i32 786478, metadata !34, metadata !35, metadata !"entersweep", metadata !"entersweep", metadata !"", i32 956, metadata !329, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.lua_State*)* @entersweep, null, null, metadata !31, i32 956} ; [ DW_TAG_subprogram ] [line 956] [local] [def] [entersweep]
!337 = metadata !{i32 786478, metadata !34, metadata !35, metadata !"runafewfinalizers", metadata !"runafewfinalizers", metadata !"", i32 841, metadata !79, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @runafewfinalizers, null, null, metadata !31, i32 841} ; [ DW_TAG_subprogram ] [line 841] [local] [def] [runafewfinalizers]
!338 = metadata !{i32 786478, metadata !34, metadata !35, metadata !"GCTM", metadata !"GCTM", metadata !"", i32 806, metadata !332, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.lua_State*, i32)* @GCTM, null, null, metadata !31, i32 806} ; [ DW_TAG_subprogram ] [line 806] [local] [def] [GCTM]
!339 = metadata !{i32 786478, metadata !34, metadata !35, metadata !"dothecall", metadata !"dothecall", metadata !"", i32 800, metadata !340, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.lua_State*, i8*)* @dothecall, null, null, metadata !31, i32 800} ; [ DW_TAG_subprogram ] [line 800] [local] [def] [dothecall]
!340 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !341, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!341 = metadata !{null, metadata !38, metadata !73}
!342 = metadata !{i32 786478, metadata !34, metadata !35, metadata !"udata2finalize", metadata !"udata2finalize", metadata !"", i32 787, metadata !343, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, %struct.GCObject* (%struct.global_State*)* @udata2finalize, null, null, metadata !31, i32 787} ; [ DW_TAG_subprogram ] [line 787] [local] [def] [udata2finalize]
!343 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !344, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!344 = metadata !{metadata !45, metadata !89}
!345 = metadata !{i32 786478, metadata !34, metadata !35, metadata !"setpause", metadata !"setpause", metadata !"", i32 937, metadata !346, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.global_State*)* @setpause, null, null, metadata !31, i32 937} ; [ DW_TAG_subprogram ] [line 937] [local] [def] [setpause]
!346 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !347, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!347 = metadata !{null, metadata !89}
!348 = metadata !{i32 786478, metadata !34, metadata !35, metadata !"getdebt", metadata !"getdebt", metadata !"", i32 1112, metadata !349, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.global_State*)* @getdebt, null, null, metadata !31, i32 1112} ; [ DW_TAG_subprogram ] [line 1112] [local] [def] [getdebt]
!349 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !350, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!350 = metadata !{metadata !103, metadata !89}
!351 = metadata !{i32 786478, metadata !34, metadata !35, metadata !"singlestep", metadata !"singlestep", metadata !"", i32 1042, metadata !352, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @singlestep, null, null, metadata !31, i32 1042} ; [ DW_TAG_subprogram ] [line 1042] [local] [def] [singlestep]
!352 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !353, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!353 = metadata !{metadata !107, metadata !38}
!354 = metadata !{i32 786478, metadata !34, metadata !35, metadata !"checkSizes", metadata !"checkSizes", metadata !"", i32 777, metadata !355, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.lua_State*, %struct.global_State*)* @checkSizes, null, null, metadata !31, i32 777} ; [ DW_TAG_subprogram ] [line 777] [local] [def] [checkSizes]
!355 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !356, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!356 = metadata !{null, metadata !38, metadata !89}
!357 = metadata !{i32 786478, metadata !34, metadata !35, metadata !"sweepstep", metadata !"sweepstep", metadata !"", i32 1026, metadata !358, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*, %struct.global_State*, i32, %struct.GCObject**)* @sweepstep, null, null, metadata !31, i32 1027} ; [ DW_TAG_subprogram ] [line 1026] [local] [def] [scope 1027] [sweepstep]
!358 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !359, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!359 = metadata !{metadata !107, metadata !38, metadata !89, metadata !75, metadata !141}
!360 = metadata !{i32 786478, metadata !34, metadata !35, metadata !"atomic", metadata !"atomic", metadata !"", i32 979, metadata !361, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @atomic, null, null, metadata !31, i32 979} ; [ DW_TAG_subprogram ] [line 979] [local] [def] [atomic]
!361 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !362, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!362 = metadata !{metadata !103, metadata !38}
!363 = metadata !{i32 786478, metadata !34, metadata !35, metadata !"clearkeys", metadata !"clearkeys", metadata !"", i32 639, metadata !364, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.global_State*, %struct.GCObject*, %struct.GCObject*)* @clearkeys, null, null, metadata !31, i32 639} ; [ DW_TAG_subprogram ] [line 639] [local] [def] [clearkeys]
!364 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !365, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!365 = metadata !{null, metadata !89, metadata !45, metadata !45}
!366 = metadata !{i32 786478, metadata !34, metadata !35, metadata !"removeentry", metadata !"removeentry", metadata !"", i32 125, metadata !367, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.Node*)* @removeentry, null, null, metadata !31, i32 125} ; [ DW_TAG_subprogram ] [line 125] [local] [def] [removeentry]
!367 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !368, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!368 = metadata !{null, metadata !178}
!369 = metadata !{i32 786478, metadata !34, metadata !35, metadata !"iscleared", metadata !"iscleared", metadata !"", i32 139, metadata !370, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.global_State*, %struct.lua_TValue*)* @iscleared, null, null, metadata !31, i32 139} ; [ DW_TAG_subprogram ] [line 139] [local] [def] [iscleared]
!370 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !371, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!371 = metadata !{metadata !75, metadata !89, metadata !372}
!372 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !373} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!373 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !64} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from TValue]
!374 = metadata !{i32 786478, metadata !34, metadata !35, metadata !"markbeingfnz", metadata !"markbeingfnz", metadata !"", i32 299, metadata !346, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.global_State*)* @markbeingfnz, null, null, metadata !31, i32 299} ; [ DW_TAG_subprogram ] [line 299] [local] [def] [markbeingfnz]
!375 = metadata !{i32 786478, metadata !34, metadata !35, metadata !"clearvalues", metadata !"clearvalues", metadata !"", i32 657, metadata !364, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.global_State*, %struct.GCObject*, %struct.GCObject*)* @clearvalues, null, null, metadata !31, i32 657} ; [ DW_TAG_subprogram ] [line 657] [local] [def] [clearvalues]
!376 = metadata !{i32 786478, metadata !34, metadata !35, metadata !"convergeephemerons", metadata !"convergeephemerons", metadata !"", i32 608, metadata !346, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.global_State*)* @convergeephemerons, null, null, metadata !31, i32 608} ; [ DW_TAG_subprogram ] [line 608] [local] [def] [convergeephemerons]
!377 = metadata !{i32 786478, metadata !34, metadata !35, metadata !"traverseephemeron", metadata !"traverseephemeron", metadata !"", i32 394, metadata !378, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.global_State*, %struct.Table*)* @traverseephemeron, null, null, metadata !31, i32 394} ; [ DW_TAG_subprogram ] [line 394] [local] [def] [traverseephemeron]
!378 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !379, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!379 = metadata !{metadata !75, metadata !89, metadata !313}
!380 = metadata !{i32 786478, metadata !34, metadata !35, metadata !"remarkupvals", metadata !"remarkupvals", metadata !"", i32 312, metadata !346, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.global_State*)* @remarkupvals, null, null, metadata !31, i32 312} ; [ DW_TAG_subprogram ] [line 312] [local] [def] [remarkupvals]
!381 = metadata !{i32 786478, metadata !34, metadata !35, metadata !"markmt", metadata !"markmt", metadata !"", i32 289, metadata !346, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.global_State*)* @markmt, null, null, metadata !31, i32 289} ; [ DW_TAG_subprogram ] [line 289] [local] [def] [markmt]
!382 = metadata !{i32 786478, metadata !34, metadata !35, metadata !"propagateall", metadata !"propagateall", metadata !"", i32 603, metadata !346, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.global_State*)* @propagateall, null, null, metadata !31, i32 603} ; [ DW_TAG_subprogram ] [line 603] [local] [def] [propagateall]
!383 = metadata !{i32 786478, metadata !34, metadata !35, metadata !"propagatemark", metadata !"propagatemark", metadata !"", i32 559, metadata !346, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.global_State*)* @propagatemark, null, null, metadata !31, i32 559} ; [ DW_TAG_subprogram ] [line 559] [local] [def] [propagatemark]
!384 = metadata !{i32 786478, metadata !34, metadata !35, metadata !"traverseproto", metadata !"traverseproto", metadata !"", i32 479, metadata !385, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.global_State*, %struct.Proto*)* @traverseproto, null, null, metadata !31, i32 479} ; [ DW_TAG_subprogram ] [line 479] [local] [def] [traverseproto]
!385 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !386, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!386 = metadata !{metadata !75, metadata !89, metadata !387}
!387 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !388} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from Proto]
!388 = metadata !{i32 786454, metadata !47, null, metadata !"Proto", i32 429, i64 0, i64 0, i64 0, i32 0, metadata !389} ; [ DW_TAG_typedef ] [Proto] [line 429, size 0, align 0, offset 0] [from Proto]
!389 = metadata !{i32 786451, metadata !47, null, metadata !"Proto", i32 407, i64 640, i64 32, i32 0, i32 0, null, metadata !390, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [Proto] [line 407, size 640, align 32, offset 0] [def] [from ]
!390 = metadata !{metadata !391, metadata !392, metadata !393, metadata !394, metadata !395, metadata !396, metadata !397, metadata !398, metadata !399, metadata !400, metadata !401, metadata !402, metadata !403, metadata !404, metadata !405, metadata !406, metadata !408, metadata !411, metadata !413, metadata !421, metadata !429, metadata !443, metadata !444}
!391 = metadata !{i32 786445, metadata !47, metadata !389, metadata !"next", i32 408, i64 32, i64 32, i64 0, i32 0, metadata !45} ; [ DW_TAG_member ] [next] [line 408, size 32, align 32, offset 0] [from ]
!392 = metadata !{i32 786445, metadata !47, metadata !389, metadata !"tt", i32 408, i64 8, i64 8, i64 32, i32 0, metadata !52} ; [ DW_TAG_member ] [tt] [line 408, size 8, align 8, offset 32] [from lu_byte]
!393 = metadata !{i32 786445, metadata !47, metadata !389, metadata !"marked", i32 408, i64 8, i64 8, i64 40, i32 0, metadata !52} ; [ DW_TAG_member ] [marked] [line 408, size 8, align 8, offset 40] [from lu_byte]
!394 = metadata !{i32 786445, metadata !47, metadata !389, metadata !"numparams", i32 409, i64 8, i64 8, i64 48, i32 0, metadata !52} ; [ DW_TAG_member ] [numparams] [line 409, size 8, align 8, offset 48] [from lu_byte]
!395 = metadata !{i32 786445, metadata !47, metadata !389, metadata !"is_vararg", i32 410, i64 8, i64 8, i64 56, i32 0, metadata !52} ; [ DW_TAG_member ] [is_vararg] [line 410, size 8, align 8, offset 56] [from lu_byte]
!396 = metadata !{i32 786445, metadata !47, metadata !389, metadata !"maxstacksize", i32 411, i64 8, i64 8, i64 64, i32 0, metadata !52} ; [ DW_TAG_member ] [maxstacksize] [line 411, size 8, align 8, offset 64] [from lu_byte]
!397 = metadata !{i32 786445, metadata !47, metadata !389, metadata !"sizeupvalues", i32 412, i64 32, i64 32, i64 96, i32 0, metadata !75} ; [ DW_TAG_member ] [sizeupvalues] [line 412, size 32, align 32, offset 96] [from int]
!398 = metadata !{i32 786445, metadata !47, metadata !389, metadata !"sizek", i32 413, i64 32, i64 32, i64 128, i32 0, metadata !75} ; [ DW_TAG_member ] [sizek] [line 413, size 32, align 32, offset 128] [from int]
!399 = metadata !{i32 786445, metadata !47, metadata !389, metadata !"sizecode", i32 414, i64 32, i64 32, i64 160, i32 0, metadata !75} ; [ DW_TAG_member ] [sizecode] [line 414, size 32, align 32, offset 160] [from int]
!400 = metadata !{i32 786445, metadata !47, metadata !389, metadata !"sizelineinfo", i32 415, i64 32, i64 32, i64 192, i32 0, metadata !75} ; [ DW_TAG_member ] [sizelineinfo] [line 415, size 32, align 32, offset 192] [from int]
!401 = metadata !{i32 786445, metadata !47, metadata !389, metadata !"sizep", i32 416, i64 32, i64 32, i64 224, i32 0, metadata !75} ; [ DW_TAG_member ] [sizep] [line 416, size 32, align 32, offset 224] [from int]
!402 = metadata !{i32 786445, metadata !47, metadata !389, metadata !"sizelocvars", i32 417, i64 32, i64 32, i64 256, i32 0, metadata !75} ; [ DW_TAG_member ] [sizelocvars] [line 417, size 32, align 32, offset 256] [from int]
!403 = metadata !{i32 786445, metadata !47, metadata !389, metadata !"linedefined", i32 418, i64 32, i64 32, i64 288, i32 0, metadata !75} ; [ DW_TAG_member ] [linedefined] [line 418, size 32, align 32, offset 288] [from int]
!404 = metadata !{i32 786445, metadata !47, metadata !389, metadata !"lastlinedefined", i32 419, i64 32, i64 32, i64 320, i32 0, metadata !75} ; [ DW_TAG_member ] [lastlinedefined] [line 419, size 32, align 32, offset 320] [from int]
!405 = metadata !{i32 786445, metadata !47, metadata !389, metadata !"k", i32 420, i64 32, i64 32, i64 352, i32 0, metadata !63} ; [ DW_TAG_member ] [k] [line 420, size 32, align 32, offset 352] [from ]
!406 = metadata !{i32 786445, metadata !47, metadata !389, metadata !"code", i32 421, i64 32, i64 32, i64 384, i32 0, metadata !407} ; [ DW_TAG_member ] [code] [line 421, size 32, align 32, offset 384] [from ]
!407 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !224} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from Instruction]
!408 = metadata !{i32 786445, metadata !47, metadata !389, metadata !"p", i32 422, i64 32, i64 32, i64 416, i32 0, metadata !409} ; [ DW_TAG_member ] [p] [line 422, size 32, align 32, offset 416] [from ]
!409 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !410} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!410 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !389} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from Proto]
!411 = metadata !{i32 786445, metadata !47, metadata !389, metadata !"lineinfo", i32 423, i64 32, i64 32, i64 448, i32 0, metadata !412} ; [ DW_TAG_member ] [lineinfo] [line 423, size 32, align 32, offset 448] [from ]
!412 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !75} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from int]
!413 = metadata !{i32 786445, metadata !47, metadata !389, metadata !"locvars", i32 424, i64 32, i64 32, i64 480, i32 0, metadata !414} ; [ DW_TAG_member ] [locvars] [line 424, size 32, align 32, offset 480] [from ]
!414 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !415} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from LocVar]
!415 = metadata !{i32 786454, metadata !47, null, metadata !"LocVar", i32 401, i64 0, i64 0, i64 0, i32 0, metadata !416} ; [ DW_TAG_typedef ] [LocVar] [line 401, size 0, align 0, offset 0] [from LocVar]
!416 = metadata !{i32 786451, metadata !47, null, metadata !"LocVar", i32 397, i64 96, i64 32, i32 0, i32 0, null, metadata !417, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [LocVar] [line 397, size 96, align 32, offset 0] [def] [from ]
!417 = metadata !{metadata !418, metadata !419, metadata !420}
!418 = metadata !{i32 786445, metadata !47, metadata !416, metadata !"varname", i32 398, i64 32, i64 32, i64 0, i32 0, metadata !115} ; [ DW_TAG_member ] [varname] [line 398, size 32, align 32, offset 0] [from ]
!419 = metadata !{i32 786445, metadata !47, metadata !416, metadata !"startpc", i32 399, i64 32, i64 32, i64 32, i32 0, metadata !75} ; [ DW_TAG_member ] [startpc] [line 399, size 32, align 32, offset 32] [from int]
!420 = metadata !{i32 786445, metadata !47, metadata !416, metadata !"endpc", i32 400, i64 32, i64 32, i64 64, i32 0, metadata !75} ; [ DW_TAG_member ] [endpc] [line 400, size 32, align 32, offset 64] [from int]
!421 = metadata !{i32 786445, metadata !47, metadata !389, metadata !"upvalues", i32 425, i64 32, i64 32, i64 512, i32 0, metadata !422} ; [ DW_TAG_member ] [upvalues] [line 425, size 32, align 32, offset 512] [from ]
!422 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !423} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from Upvaldesc]
!423 = metadata !{i32 786454, metadata !47, null, metadata !"Upvaldesc", i32 390, i64 0, i64 0, i64 0, i32 0, metadata !424} ; [ DW_TAG_typedef ] [Upvaldesc] [line 390, size 0, align 0, offset 0] [from Upvaldesc]
!424 = metadata !{i32 786451, metadata !47, null, metadata !"Upvaldesc", i32 386, i64 64, i64 32, i32 0, i32 0, null, metadata !425, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [Upvaldesc] [line 386, size 64, align 32, offset 0] [def] [from ]
!425 = metadata !{metadata !426, metadata !427, metadata !428}
!426 = metadata !{i32 786445, metadata !47, metadata !424, metadata !"name", i32 387, i64 32, i64 32, i64 0, i32 0, metadata !115} ; [ DW_TAG_member ] [name] [line 387, size 32, align 32, offset 0] [from ]
!427 = metadata !{i32 786445, metadata !47, metadata !424, metadata !"instack", i32 388, i64 8, i64 8, i64 32, i32 0, metadata !52} ; [ DW_TAG_member ] [instack] [line 388, size 8, align 8, offset 32] [from lu_byte]
!428 = metadata !{i32 786445, metadata !47, metadata !424, metadata !"idx", i32 389, i64 8, i64 8, i64 40, i32 0, metadata !52} ; [ DW_TAG_member ] [idx] [line 389, size 8, align 8, offset 40] [from lu_byte]
!429 = metadata !{i32 786445, metadata !47, metadata !389, metadata !"cache", i32 426, i64 32, i64 32, i64 544, i32 0, metadata !430} ; [ DW_TAG_member ] [cache] [line 426, size 32, align 32, offset 544] [from ]
!430 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !431} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from LClosure]
!431 = metadata !{i32 786451, metadata !47, null, metadata !"LClosure", i32 453, i64 160, i64 32, i32 0, i32 0, null, metadata !432, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [LClosure] [line 453, size 160, align 32, offset 0] [def] [from ]
!432 = metadata !{metadata !433, metadata !434, metadata !435, metadata !436, metadata !437, metadata !438, metadata !439}
!433 = metadata !{i32 786445, metadata !47, metadata !431, metadata !"next", i32 454, i64 32, i64 32, i64 0, i32 0, metadata !45} ; [ DW_TAG_member ] [next] [line 454, size 32, align 32, offset 0] [from ]
!434 = metadata !{i32 786445, metadata !47, metadata !431, metadata !"tt", i32 454, i64 8, i64 8, i64 32, i32 0, metadata !52} ; [ DW_TAG_member ] [tt] [line 454, size 8, align 8, offset 32] [from lu_byte]
!435 = metadata !{i32 786445, metadata !47, metadata !431, metadata !"marked", i32 454, i64 8, i64 8, i64 40, i32 0, metadata !52} ; [ DW_TAG_member ] [marked] [line 454, size 8, align 8, offset 40] [from lu_byte]
!436 = metadata !{i32 786445, metadata !47, metadata !431, metadata !"nupvalues", i32 454, i64 8, i64 8, i64 48, i32 0, metadata !52} ; [ DW_TAG_member ] [nupvalues] [line 454, size 8, align 8, offset 48] [from lu_byte]
!437 = metadata !{i32 786445, metadata !47, metadata !431, metadata !"gclist", i32 454, i64 32, i64 32, i64 64, i32 0, metadata !45} ; [ DW_TAG_member ] [gclist] [line 454, size 32, align 32, offset 64] [from ]
!438 = metadata !{i32 786445, metadata !47, metadata !431, metadata !"p", i32 455, i64 32, i64 32, i64 96, i32 0, metadata !410} ; [ DW_TAG_member ] [p] [line 455, size 32, align 32, offset 96] [from ]
!439 = metadata !{i32 786445, metadata !47, metadata !431, metadata !"upvals", i32 456, i64 32, i64 32, i64 128, i32 0, metadata !440} ; [ DW_TAG_member ] [upvals] [line 456, size 32, align 32, offset 128] [from ]
!440 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 32, i64 32, i32 0, i32 0, metadata !246, metadata !441, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 32, align 32, offset 0] [from ]
!441 = metadata !{metadata !442}
!442 = metadata !{i32 786465, i64 0, i64 1}       ; [ DW_TAG_subrange_type ] [0, 0]
!443 = metadata !{i32 786445, metadata !47, metadata !389, metadata !"source", i32 427, i64 32, i64 32, i64 576, i32 0, metadata !115} ; [ DW_TAG_member ] [source] [line 427, size 32, align 32, offset 576] [from ]
!444 = metadata !{i32 786445, metadata !47, metadata !389, metadata !"gclist", i32 428, i64 32, i64 32, i64 608, i32 0, metadata !45} ; [ DW_TAG_member ] [gclist] [line 428, size 32, align 32, offset 608] [from ]
!445 = metadata !{i32 786478, metadata !34, metadata !35, metadata !"traversethread", metadata !"traversethread", metadata !"", i32 530, metadata !446, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.global_State*, %struct.lua_State*)* @traversethread, null, null, metadata !31, i32 530} ; [ DW_TAG_subprogram ] [line 530] [local] [def] [traversethread]
!446 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !447, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!447 = metadata !{metadata !107, metadata !89, metadata !38}
!448 = metadata !{i32 786478, metadata !34, metadata !35, metadata !"traverseCclosure", metadata !"traverseCclosure", metadata !"", i32 501, metadata !449, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.global_State*, %struct.CClosure*)* @traverseCclosure, null, null, metadata !31, i32 501} ; [ DW_TAG_subprogram ] [line 501] [local] [def] [traverseCclosure]
!449 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !450, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!450 = metadata !{metadata !107, metadata !89, metadata !451}
!451 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !452} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from CClosure]
!452 = metadata !{i32 786454, metadata !47, null, metadata !"CClosure", i32 450, i64 0, i64 0, i64 0, i32 0, metadata !453} ; [ DW_TAG_typedef ] [CClosure] [line 450, size 0, align 0, offset 0] [from CClosure]
!453 = metadata !{i32 786451, metadata !47, null, metadata !"CClosure", i32 446, i64 256, i64 64, i32 0, i32 0, null, metadata !454, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [CClosure] [line 446, size 256, align 64, offset 0] [def] [from ]
!454 = metadata !{metadata !455, metadata !456, metadata !457, metadata !458, metadata !459, metadata !460, metadata !461}
!455 = metadata !{i32 786445, metadata !47, metadata !453, metadata !"next", i32 447, i64 32, i64 32, i64 0, i32 0, metadata !45} ; [ DW_TAG_member ] [next] [line 447, size 32, align 32, offset 0] [from ]
!456 = metadata !{i32 786445, metadata !47, metadata !453, metadata !"tt", i32 447, i64 8, i64 8, i64 32, i32 0, metadata !52} ; [ DW_TAG_member ] [tt] [line 447, size 8, align 8, offset 32] [from lu_byte]
!457 = metadata !{i32 786445, metadata !47, metadata !453, metadata !"marked", i32 447, i64 8, i64 8, i64 40, i32 0, metadata !52} ; [ DW_TAG_member ] [marked] [line 447, size 8, align 8, offset 40] [from lu_byte]
!458 = metadata !{i32 786445, metadata !47, metadata !453, metadata !"nupvalues", i32 447, i64 8, i64 8, i64 48, i32 0, metadata !52} ; [ DW_TAG_member ] [nupvalues] [line 447, size 8, align 8, offset 48] [from lu_byte]
!459 = metadata !{i32 786445, metadata !47, metadata !453, metadata !"gclist", i32 447, i64 32, i64 32, i64 64, i32 0, metadata !45} ; [ DW_TAG_member ] [gclist] [line 447, size 32, align 32, offset 64] [from ]
!460 = metadata !{i32 786445, metadata !47, metadata !453, metadata !"f", i32 448, i64 32, i64 32, i64 96, i32 0, metadata !77} ; [ DW_TAG_member ] [f] [line 448, size 32, align 32, offset 96] [from lua_CFunction]
!461 = metadata !{i32 786445, metadata !47, metadata !453, metadata !"upvalue", i32 449, i64 128, i64 64, i64 128, i32 0, metadata !462} ; [ DW_TAG_member ] [upvalue] [line 449, size 128, align 64, offset 128] [from ]
!462 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 128, i64 64, i32 0, i32 0, metadata !64, metadata !441, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 128, align 64, offset 0] [from TValue]
!463 = metadata !{i32 786478, metadata !34, metadata !35, metadata !"traverseLclosure", metadata !"traverseLclosure", metadata !"", i32 514, metadata !464, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.global_State*, %struct.LClosure*)* @traverseLclosure, null, null, metadata !31, i32 514} ; [ DW_TAG_subprogram ] [line 514] [local] [def] [traverseLclosure]
!464 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !465, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!465 = metadata !{metadata !107, metadata !89, metadata !466}
!466 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !467} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from LClosure]
!467 = metadata !{i32 786454, metadata !47, null, metadata !"LClosure", i32 457, i64 0, i64 0, i64 0, i32 0, metadata !431} ; [ DW_TAG_typedef ] [LClosure] [line 457, size 0, align 0, offset 0] [from LClosure]
!468 = metadata !{i32 786478, metadata !34, metadata !35, metadata !"traversetable", metadata !"traversetable", metadata !"", i32 451, metadata !469, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.global_State*, %struct.Table*)* @traversetable, null, null, metadata !31, i32 451} ; [ DW_TAG_subprogram ] [line 451] [local] [def] [traversetable]
!469 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !470, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!470 = metadata !{metadata !107, metadata !89, metadata !313}
!471 = metadata !{i32 786478, metadata !34, metadata !35, metadata !"traversestrongtable", metadata !"traversestrongtable", metadata !"", i32 433, metadata !472, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.global_State*, %struct.Table*)* @traversestrongtable, null, null, metadata !31, i32 433} ; [ DW_TAG_subprogram ] [line 433] [local] [def] [traversestrongtable]
!472 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !473, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!473 = metadata !{null, metadata !89, metadata !313}
!474 = metadata !{i32 786478, metadata !34, metadata !35, metadata !"traverseweakvalue", metadata !"traverseweakvalue", metadata !"", i32 361, metadata !472, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.global_State*, %struct.Table*)* @traverseweakvalue, null, null, metadata !31, i32 361} ; [ DW_TAG_subprogram ] [line 361] [local] [def] [traverseweakvalue]
!475 = metadata !{i32 786478, metadata !34, metadata !35, metadata !"restartcollection", metadata !"restartcollection", metadata !"", i32 337, metadata !346, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.global_State*)* @restartcollection, null, null, metadata !31, i32 337} ; [ DW_TAG_subprogram ] [line 337] [local] [def] [restartcollection]
!476 = metadata !{i32 786478, metadata !34, metadata !35, metadata !"sweeplist", metadata !"sweeplist", metadata !"", i32 734, metadata !477, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, %struct.GCObject** (%struct.lua_State*, %struct.GCObject**, i32)* @sweeplist, null, null, metadata !31, i32 734} ; [ DW_TAG_subprogram ] [line 734] [local] [def] [sweeplist]
!477 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !478, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!478 = metadata !{metadata !141, metadata !38, metadata !141, metadata !107}
!479 = metadata !{i32 786478, metadata !34, metadata !35, metadata !"freeobj", metadata !"freeobj", metadata !"", i32 696, metadata !319, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.lua_State*, %struct.GCObject*)* @freeobj, null, null, metadata !31, i32 696} ; [ DW_TAG_subprogram ] [line 696] [local] [def] [freeobj]
!480 = metadata !{i32 786478, metadata !34, metadata !35, metadata !"freeLclosure", metadata !"freeLclosure", metadata !"", i32 685, metadata !481, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.lua_State*, %struct.LClosure*)* @freeLclosure, null, null, metadata !31, i32 685} ; [ DW_TAG_subprogram ] [line 685] [local] [def] [freeLclosure]
!481 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !482, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!482 = metadata !{null, metadata !38, metadata !466}
!483 = metadata !{i32 786478, metadata !34, metadata !35, metadata !"callallpendingfinalizers", metadata !"callallpendingfinalizers", metadata !"", i32 856, metadata !329, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.lua_State*)* @callallpendingfinalizers, null, null, metadata !31, i32 856} ; [ DW_TAG_subprogram ] [line 856] [local] [def] [callallpendingfinalizers]
!484 = metadata !{i32 786478, metadata !34, metadata !35, metadata !"separatetobefnz", metadata !"separatetobefnz", metadata !"", i32 877, metadata !485, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.global_State*, i32)* @separatetobefnz, null, null, metadata !31, i32 877} ; [ DW_TAG_subprogram ] [line 877] [local] [def] [separatetobefnz]
!485 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !486, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!486 = metadata !{null, metadata !89, metadata !75}
!487 = metadata !{i32 786478, metadata !34, metadata !35, metadata !"findlast", metadata !"findlast", metadata !"", i32 866, metadata !488, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, %struct.GCObject** (%struct.GCObject**)* @findlast, null, null, metadata !31, i32 866} ; [ DW_TAG_subprogram ] [line 866] [local] [def] [findlast]
!488 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !489, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!489 = metadata !{metadata !141, metadata !141}
!490 = metadata !{i32 786478, metadata !34, metadata !35, metadata !"sweeptolive", metadata !"sweeptolive", metadata !"", i32 757, metadata !491, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, %struct.GCObject** (%struct.lua_State*, %struct.GCObject**)* @sweeptolive, null, null, metadata !31, i32 757} ; [ DW_TAG_subprogram ] [line 757] [local] [def] [sweeptolive]
!491 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !492, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!492 = metadata !{metadata !141, metadata !38, metadata !141}
!493 = metadata !{i32 786478, metadata !34, metadata !35, metadata !"reallymarkobject", metadata !"reallymarkobject", metadata !"", i32 235, metadata !494, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.global_State*, %struct.GCObject*)* @reallymarkobject, null, null, metadata !31, i32 235} ; [ DW_TAG_subprogram ] [line 235] [local] [def] [reallymarkobject]
!494 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !495, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!495 = metadata !{null, metadata !89, metadata !45}
!496 = metadata !{void (%struct.lua_State*, %struct.GCObject*, %struct.GCObject*)* @luaC_barrier_}
!497 = metadata !{metadata !"luaC_barrier_"}
!498 = metadata !{void (%struct.global_State*, %struct.GCObject*)* @reallymarkobject}
!499 = metadata !{metadata !"reallymarkobject"}
!500 = metadata !{void (%struct.lua_State*, %struct.Table*)* @luaC_barrierback_}
!501 = metadata !{metadata !"luaC_barrierback_"}
!502 = metadata !{void (%struct.lua_State*, %struct.UpVal*)* @luaC_upvalbarrier_}
!503 = metadata !{metadata !"luaC_upvalbarrier_"}
!504 = metadata !{void (%struct.lua_State*, %struct.GCObject*)* @luaC_fix}
!505 = metadata !{metadata !"luaC_fix"}
!506 = metadata !{%struct.GCObject* (%struct.lua_State*, i32, i32)* @luaC_newobj}
!507 = metadata !{metadata !"luaC_newobj"}
!508 = metadata !{i8* (%struct.lua_State*, i8*, i32, i32)* @luaM_realloc_}
!509 = metadata !{metadata !"luaM_realloc_"}
!510 = metadata !{void (%struct.lua_State*, %struct.UpVal*)* @luaC_upvdeccount}
!511 = metadata !{metadata !"luaC_upvdeccount"}
!512 = metadata !{void (%struct.lua_State*, %struct.GCObject*, %struct.Table*)* @luaC_checkfinalizer}
!513 = metadata !{metadata !"luaC_checkfinalizer"}
!514 = metadata !{%struct.lua_TValue* (%struct.Table*, i32, %struct.TString*)* @luaT_gettm}
!515 = metadata !{metadata !"luaT_gettm"}
!516 = metadata !{%struct.GCObject** (%struct.lua_State*, %struct.GCObject**)* @sweeptolive}
!517 = metadata !{metadata !"sweeptolive"}
!518 = metadata !{void (%struct.lua_State*)* @luaC_freeallobjects}
!519 = metadata !{metadata !"luaC_freeallobjects"}
!520 = metadata !{void (%struct.global_State*, i32)* @separatetobefnz}
!521 = metadata !{metadata !"separatetobefnz"}
!522 = metadata !{void (%struct.lua_State*)* @callallpendingfinalizers}
!523 = metadata !{metadata !"callallpendingfinalizers"}
!524 = metadata !{%struct.GCObject** (%struct.lua_State*, %struct.GCObject**, i32)* @sweeplist}
!525 = metadata !{metadata !"sweeplist"}
!526 = metadata !{void (%struct.lua_State*, i32)* @luaC_runtilstate}
!527 = metadata !{metadata !"luaC_runtilstate"}
!528 = metadata !{i32 (%struct.lua_State*)* @singlestep}
!529 = metadata !{metadata !"singlestep"}
!530 = metadata !{void (%struct.lua_State*)* @luaC_step}
!531 = metadata !{metadata !"luaC_step"}
!532 = metadata !{i32 (%struct.global_State*)* @getdebt}
!533 = metadata !{metadata !"getdebt"}
!534 = metadata !{void (%struct.global_State*, i32)* @luaE_setdebt}
!535 = metadata !{metadata !"luaE_setdebt"}
!536 = metadata !{void (%struct.global_State*)* @setpause}
!537 = metadata !{metadata !"setpause"}
!538 = metadata !{i32 (%struct.lua_State*)* @runafewfinalizers}
!539 = metadata !{metadata !"runafewfinalizers"}
!540 = metadata !{void (%struct.lua_State*, i32)* @luaC_fullgc}
!541 = metadata !{metadata !"luaC_fullgc"}
!542 = metadata !{void (%struct.lua_State*)* @entersweep}
!543 = metadata !{metadata !"entersweep"}
!544 = metadata !{void (%struct.lua_State*, i32)* @GCTM}
!545 = metadata !{metadata !"GCTM"}
!546 = metadata !{%struct.GCObject* (%struct.global_State*)* @udata2finalize}
!547 = metadata !{metadata !"udata2finalize"}
!548 = metadata !{%struct.lua_TValue* (%struct.lua_State*, %struct.lua_TValue*, i32)* @luaT_gettmbyobj}
!549 = metadata !{metadata !"luaT_gettmbyobj"}
!550 = metadata !{i32 (%struct.lua_State*, void (%struct.lua_State*, i8*)*, i8*, i32, i32)* @luaD_pcall}
!551 = metadata !{metadata !"luaD_pcall"}
!552 = metadata !{void (%struct.lua_State*, i8*)* @dothecall}
!553 = metadata !{metadata !"dothecall"}
!554 = metadata !{i8* (%struct.lua_State*, i8*, ...)* @luaO_pushfstring}
!555 = metadata !{metadata !"luaO_pushfstring"}
!556 = metadata !{void (%struct.lua_State*, i32)* @luaD_throw}
!557 = metadata !{metadata !"luaD_throw"}
!558 = metadata !{void (%struct.lua_State*, %struct.lua_TValue*, i32)* @luaD_callnoyield}
!559 = metadata !{metadata !"luaD_callnoyield"}
!560 = metadata !{void (%struct.global_State*)* @restartcollection}
!561 = metadata !{metadata !"restartcollection"}
!562 = metadata !{void (%struct.global_State*)* @propagatemark}
!563 = metadata !{metadata !"propagatemark"}
!564 = metadata !{void (%struct.global_State*)* @propagateall}
!565 = metadata !{metadata !"propagateall"}
!566 = metadata !{i32 (%struct.lua_State*)* @atomic}
!567 = metadata !{metadata !"atomic"}
!568 = metadata !{i32 (%struct.lua_State*, %struct.global_State*, i32, %struct.GCObject**)* @sweepstep}
!569 = metadata !{metadata !"sweepstep"}
!570 = metadata !{void (%struct.lua_State*, %struct.global_State*)* @checkSizes}
!571 = metadata !{metadata !"checkSizes"}
!572 = metadata !{void (%struct.lua_State*, i32)* @luaS_resize}
!573 = metadata !{metadata !"luaS_resize"}
!574 = metadata !{void (%struct.global_State*)* @markmt}
!575 = metadata !{metadata !"markmt"}
!576 = metadata !{void (%struct.global_State*)* @remarkupvals}
!577 = metadata !{metadata !"remarkupvals"}
!578 = metadata !{void (%struct.global_State*)* @convergeephemerons}
!579 = metadata !{metadata !"convergeephemerons"}
!580 = metadata !{void (%struct.global_State*, %struct.GCObject*, %struct.GCObject*)* @clearvalues}
!581 = metadata !{metadata !"clearvalues"}
!582 = metadata !{void (%struct.global_State*)* @markbeingfnz}
!583 = metadata !{metadata !"markbeingfnz"}
!584 = metadata !{void (%struct.global_State*, %struct.GCObject*, %struct.GCObject*)* @clearkeys}
!585 = metadata !{metadata !"clearkeys"}
!586 = metadata !{void (%struct.global_State*)* @luaS_clearcache}
!587 = metadata !{metadata !"luaS_clearcache"}
!588 = metadata !{i32 (%struct.global_State*, %struct.lua_TValue*)* @iscleared}
!589 = metadata !{metadata !"iscleared"}
!590 = metadata !{void (%struct.Node*)* @removeentry}
!591 = metadata !{metadata !"removeentry"}
!592 = metadata !{i32 (%struct.global_State*, %struct.Table*)* @traverseephemeron}
!593 = metadata !{metadata !"traverseephemeron"}
!594 = metadata !{i32 (%struct.global_State*, %struct.Table*)* @traversetable}
!595 = metadata !{metadata !"traversetable"}
!596 = metadata !{i32 (%struct.global_State*, %struct.LClosure*)* @traverseLclosure}
!597 = metadata !{metadata !"traverseLclosure"}
!598 = metadata !{i32 (%struct.global_State*, %struct.CClosure*)* @traverseCclosure}
!599 = metadata !{metadata !"traverseCclosure"}
!600 = metadata !{i32 (%struct.global_State*, %struct.lua_State*)* @traversethread}
!601 = metadata !{metadata !"traversethread"}
!602 = metadata !{i32 (%struct.global_State*, %struct.Proto*)* @traverseproto}
!603 = metadata !{metadata !"traverseproto"}
!604 = metadata !{void (%struct.lua_State*)* @luaD_shrinkstack}
!605 = metadata !{metadata !"luaD_shrinkstack"}
!606 = metadata !{i8* (i8*, i32)* @strchr}
!607 = metadata !{metadata !"strchr"}
!608 = metadata !{void (%struct.global_State*, %struct.Table*)* @traverseweakvalue}
!609 = metadata !{metadata !"traverseweakvalue"}
!610 = metadata !{void (%struct.global_State*, %struct.Table*)* @traversestrongtable}
!611 = metadata !{metadata !"traversestrongtable"}
!612 = metadata !{void (%struct.lua_State*, %struct.GCObject*)* @freeobj}
!613 = metadata !{metadata !"freeobj"}
!614 = metadata !{void (%struct.lua_State*, %struct.Proto*)* @luaF_freeproto}
!615 = metadata !{metadata !"luaF_freeproto"}
!616 = metadata !{void (%struct.lua_State*, %struct.LClosure*)* @freeLclosure}
!617 = metadata !{metadata !"freeLclosure"}
!618 = metadata !{void (%struct.lua_State*, %struct.Table*)* @luaH_free}
!619 = metadata !{metadata !"luaH_free"}
!620 = metadata !{void (%struct.lua_State*, %struct.lua_State*)* @luaE_freethread}
!621 = metadata !{metadata !"luaE_freethread"}
!622 = metadata !{void (%struct.lua_State*, %struct.TString*)* @luaS_remove}
!623 = metadata !{metadata !"luaS_remove"}
!624 = metadata !{%struct.GCObject** (%struct.GCObject**)* @findlast}
!625 = metadata !{metadata !"findlast"}
!626 = metadata !{metadata !"void.lua_State *.1.GCObject *.1.GCObject *.1"}
!627 = metadata !{metadata !"void.global_State *.1.GCObject *.1"}
!628 = metadata !{metadata !"void.lua_State *.1.Table *.1"}
!629 = metadata !{metadata !"void.lua_State *.1.UpVal *.1"}
!630 = metadata !{metadata !"void.lua_State *.1.GCObject *.1"}
!631 = metadata !{metadata !"GCObject .lua_State *.1.int.0.size_t.0"}
!632 = metadata !{metadata !"void .lua_State *.1.void *.1.size_t.0.size_t.0"}
!633 = metadata !{metadata !"void.lua_State *.1.GCObject *.1.Table *.1"}
!634 = metadata !{metadata !"const TValue .Table *.1.TMS.0.TString *.1"}
!635 = metadata !{metadata !"GCObject *.lua_State *.1.GCObject **.1"}
!636 = metadata !{metadata !"void.lua_State *.1"}
!637 = metadata !{metadata !"void.global_State *.1.int.0"}
!638 = metadata !{metadata !"GCObject *.lua_State *.1.GCObject **.1.lu_mem.0"}
!639 = metadata !{metadata !"void.lua_State *.1.int.0"}
!640 = metadata !{metadata !"lu_mem.lua_State *.1"}
!641 = metadata !{metadata !"l_mem.global_State *.1"}
!642 = metadata !{metadata !"void.global_State *.1.l_mem.0"}
!643 = metadata !{metadata !"void.global_State *.1"}
!644 = metadata !{metadata !"int.lua_State *.1"}
!645 = metadata !{metadata !"GCObject .global_State *.1"}
!646 = metadata !{metadata !"const TValue .lua_State *.1.const TValue *.1.TMS.0"}
!647 = metadata !{metadata !"int.lua_State *.1.Pfunc.1.void *.1.ptrdiff_t.0.ptrdiff_t.0"}
!648 = metadata !{metadata !"void.lua_State *.1.void *.1"}
!649 = metadata !{metadata !"const char .lua_State *.1.const char *.1"}
!650 = metadata !{metadata !"void.lua_State *.1.StkId.1.int.0"}
!651 = metadata !{metadata !"l_mem.lua_State *.1"}
!652 = metadata !{metadata !"lu_mem.lua_State *.1.global_State *.1.int.0.GCObject **.1"}
!653 = metadata !{metadata !"void.lua_State *.1.global_State *.1"}
!654 = metadata !{metadata !"void.global_State *.1.GCObject *.1.GCObject *.1"}
!655 = metadata !{metadata !"int.global_State *.1.const TValue *.1"}
!656 = metadata !{metadata !"void.Node *.1"}
!657 = metadata !{metadata !"int.global_State *.1.Table *.1"}
!658 = metadata !{metadata !"lu_mem.global_State *.1.Table *.1"}
!659 = metadata !{metadata !"lu_mem.global_State *.1.LClosure *.1"}
!660 = metadata !{metadata !"lu_mem.global_State *.1.CClosure *.1"}
!661 = metadata !{metadata !"lu_mem.global_State *.1.lua_State *.1"}
!662 = metadata !{metadata !"int.global_State *.1.Proto *.1"}
!663 = metadata !{metadata !"char .const char *.1.int.0"}
!664 = metadata !{metadata !"void.global_State *.1.Table *.1"}
!665 = metadata !{metadata !"void.lua_State *.1.Proto *.1"}
!666 = metadata !{metadata !"void.lua_State *.1.LClosure *.1"}
!667 = metadata !{metadata !"void.lua_State *.1.lua_State *.1"}
!668 = metadata !{metadata !"void.lua_State *.1.TString *.1"}
!669 = metadata !{metadata !"GCObject *.GCObject **.1"}
!670 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lgc.h"}
!671 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lgc.c"}
!672 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lmem.h"}
!673 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/ltm.h"}
!674 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lstate.h"}
!675 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/ldo.h"}
!676 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lobject.h"}
!677 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lstring.h"}
!678 = metadata !{metadata !"D:/Xilinx/SDx/2016.3/SDK/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include\5Cstring.h"}
!679 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lfunc.h"}
!680 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/ltable.h"}
!681 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!682 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!683 = metadata !{i32 1, metadata !"wchar_size", i32 4}
!684 = metadata !{i32 1, metadata !"min_enum_size", i32 4}
!685 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
!686 = metadata !{i32 786689, metadata !33, metadata !"L", metadata !35, i32 16777371, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 155]
!687 = metadata !{i32 155, i32 32, metadata !33, null}
!688 = metadata !{i32 786689, metadata !33, metadata !"o", metadata !35, i32 33554587, metadata !45, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [o] [line 155]
!689 = metadata !{i32 155, i32 45, metadata !33, null}
!690 = metadata !{i32 786689, metadata !33, metadata !"v", metadata !35, i32 50331803, metadata !45, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [v] [line 155]
!691 = metadata !{i32 155, i32 58, metadata !33, null}
!692 = metadata !{i32 786688, metadata !33, metadata !"g", metadata !35, i32 156, metadata !89, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [g] [line 156]
!693 = metadata !{i32 156, i32 17, metadata !33, null}
!694 = metadata !{i32 156, i32 3, metadata !33, null}
!695 = metadata !{i32 158, i32 7, metadata !696, null}
!696 = metadata !{i32 786443, metadata !34, metadata !33, i32 158, i32 7, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!697 = metadata !{i32 159, i32 5, metadata !696, null}
!698 = metadata !{i32 162, i32 5, metadata !699, null}
!699 = metadata !{i32 786443, metadata !34, metadata !696, i32 160, i32 8, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!700 = metadata !{i32 164, i32 1, metadata !33, null}
!701 = metadata !{i32 786689, metadata !493, metadata !"g", metadata !35, i32 16777451, metadata !89, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [g] [line 235]
!702 = metadata !{i32 235, i32 45, metadata !493, null}
!703 = metadata !{i32 786689, metadata !493, metadata !"o", metadata !35, i32 33554667, metadata !45, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [o] [line 235]
!704 = metadata !{i32 235, i32 58, metadata !493, null}
!705 = metadata !{i32 235, i32 61, metadata !493, null}
!706 = metadata !{i32 237, i32 3, metadata !493, null}
!707 = metadata !{i32 238, i32 3, metadata !493, null}
!708 = metadata !{i32 240, i32 7, metadata !709, null}
!709 = metadata !{i32 786443, metadata !34, metadata !710, i32 239, i32 23, i32 0, i32 215} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!710 = metadata !{i32 786443, metadata !34, metadata !493, i32 238, i32 18, i32 0, i32 214} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!711 = metadata !{i32 241, i32 7, metadata !709, null}
!712 = metadata !{i32 242, i32 7, metadata !709, null}
!713 = metadata !{i32 245, i32 7, metadata !714, null}
!714 = metadata !{i32 786443, metadata !34, metadata !710, i32 244, i32 23, i32 0, i32 216} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!715 = metadata !{i32 246, i32 7, metadata !714, null}
!716 = metadata !{i32 247, i32 7, metadata !714, null}
!717 = metadata !{i32 786688, metadata !718, metadata !"uvalue", metadata !35, i32 250, metadata !64, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [uvalue] [line 250]
!718 = metadata !{i32 786443, metadata !34, metadata !710, i32 249, i32 25, i32 0, i32 217} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!719 = metadata !{i32 250, i32 14, metadata !718, null}
!720 = metadata !{i32 251, i32 7, metadata !721, null}
!721 = metadata !{i32 786443, metadata !34, metadata !722, i32 251, i32 7, i32 0, i32 219} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!722 = metadata !{i32 786443, metadata !34, metadata !718, i32 251, i32 7, i32 0, i32 218} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!723 = metadata !{i32 251, i32 7, metadata !724, null}
!724 = metadata !{i32 786443, metadata !34, metadata !725, i32 251, i32 7, i32 1, i32 230} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!725 = metadata !{i32 786443, metadata !34, metadata !726, i32 251, i32 7, i32 0, i32 221} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!726 = metadata !{i32 786443, metadata !34, metadata !721, i32 251, i32 7, i32 0, i32 220} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!727 = metadata !{i32 251, i32 7, metadata !728, null}
!728 = metadata !{i32 786443, metadata !34, metadata !725, i32 251, i32 7, i32 2, i32 231} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!729 = metadata !{i32 251, i32 7, metadata !730, null}
!730 = metadata !{i32 786443, metadata !34, metadata !731, i32 251, i32 7, i32 4, i32 233} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!731 = metadata !{i32 786443, metadata !34, metadata !726, i32 251, i32 7, i32 3, i32 232} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!732 = metadata !{i32 252, i32 7, metadata !718, null}
!733 = metadata !{i32 253, i32 7, metadata !718, null}
!734 = metadata !{i32 786688, metadata !735, metadata !"io", metadata !35, i32 254, metadata !63, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [io] [line 254]
!735 = metadata !{i32 786443, metadata !34, metadata !718, i32 254, i32 7, i32 0, i32 222} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!736 = metadata !{i32 254, i32 7, metadata !735, null}
!737 = metadata !{i32 786688, metadata !735, metadata !"iu", metadata !35, i32 254, metadata !738, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iu] [line 254]
!738 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !739} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!739 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !740} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from Udata]
!740 = metadata !{i32 786454, metadata !47, null, metadata !"Udata", i32 352, i64 0, i64 0, i64 0, i32 0, metadata !741} ; [ DW_TAG_typedef ] [Udata] [line 352, size 0, align 0, offset 0] [from Udata]
!741 = metadata !{i32 786451, metadata !47, null, metadata !"Udata", i32 346, i64 192, i64 64, i32 0, i32 0, null, metadata !742, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [Udata] [line 346, size 192, align 64, offset 0] [def] [from ]
!742 = metadata !{metadata !743, metadata !744, metadata !745, metadata !746, metadata !747, metadata !748, metadata !749}
!743 = metadata !{i32 786445, metadata !47, metadata !741, metadata !"next", i32 347, i64 32, i64 32, i64 0, i32 0, metadata !45} ; [ DW_TAG_member ] [next] [line 347, size 32, align 32, offset 0] [from ]
!744 = metadata !{i32 786445, metadata !47, metadata !741, metadata !"tt", i32 347, i64 8, i64 8, i64 32, i32 0, metadata !52} ; [ DW_TAG_member ] [tt] [line 347, size 8, align 8, offset 32] [from lu_byte]
!745 = metadata !{i32 786445, metadata !47, metadata !741, metadata !"marked", i32 347, i64 8, i64 8, i64 40, i32 0, metadata !52} ; [ DW_TAG_member ] [marked] [line 347, size 8, align 8, offset 40] [from lu_byte]
!746 = metadata !{i32 786445, metadata !47, metadata !741, metadata !"ttuv_", i32 348, i64 8, i64 8, i64 48, i32 0, metadata !52} ; [ DW_TAG_member ] [ttuv_] [line 348, size 8, align 8, offset 48] [from lu_byte]
!747 = metadata !{i32 786445, metadata !47, metadata !741, metadata !"metatable", i32 349, i64 32, i64 32, i64 64, i32 0, metadata !167} ; [ DW_TAG_member ] [metatable] [line 349, size 32, align 32, offset 64] [from ]
!748 = metadata !{i32 786445, metadata !47, metadata !741, metadata !"len", i32 350, i64 32, i64 32, i64 96, i32 0, metadata !98} ; [ DW_TAG_member ] [len] [line 350, size 32, align 32, offset 96] [from size_t]
!749 = metadata !{i32 786445, metadata !47, metadata !741, metadata !"user_", i32 351, i64 64, i64 64, i64 128, i32 0, metadata !69} ; [ DW_TAG_member ] [user_] [line 351, size 64, align 64, offset 128] [from Value]
!750 = metadata !{i32 255, i32 11, metadata !751, null}
!751 = metadata !{i32 786443, metadata !34, metadata !718, i32 255, i32 11, i32 0, i32 223} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!752 = metadata !{i32 255, i32 11, metadata !753, null}
!753 = metadata !{i32 786443, metadata !34, metadata !751, i32 255, i32 11, i32 1, i32 234} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!754 = metadata !{i32 256, i32 9, metadata !755, null}
!755 = metadata !{i32 786443, metadata !34, metadata !751, i32 255, i32 32, i32 0, i32 224} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!756 = metadata !{i32 257, i32 9, metadata !755, null}
!757 = metadata !{i32 259, i32 7, metadata !718, null}
!758 = metadata !{i32 262, i32 7, metadata !759, null}
!759 = metadata !{i32 786443, metadata !34, metadata !710, i32 261, i32 20, i32 0, i32 225} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!760 = metadata !{i32 263, i32 7, metadata !759, null}
!761 = metadata !{i32 266, i32 7, metadata !762, null}
!762 = metadata !{i32 786443, metadata !34, metadata !710, i32 265, i32 20, i32 0, i32 226} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!763 = metadata !{i32 267, i32 7, metadata !762, null}
!764 = metadata !{i32 270, i32 7, metadata !765, null}
!765 = metadata !{i32 786443, metadata !34, metadata !710, i32 269, i32 22, i32 0, i32 227} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!766 = metadata !{i32 271, i32 7, metadata !765, null}
!767 = metadata !{i32 274, i32 7, metadata !768, null}
!768 = metadata !{i32 786443, metadata !34, metadata !710, i32 273, i32 23, i32 0, i32 228} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!769 = metadata !{i32 275, i32 7, metadata !768, null}
!770 = metadata !{i32 278, i32 7, metadata !771, null}
!771 = metadata !{i32 786443, metadata !34, metadata !710, i32 277, i32 22, i32 0, i32 229} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!772 = metadata !{i32 279, i32 7, metadata !771, null}
!773 = metadata !{i32 281, i32 29, metadata !710, null}
!774 = metadata !{i32 283, i32 1, metadata !493, null}
!775 = metadata !{i32 786689, metadata !310, metadata !"L", metadata !35, i32 16777387, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 171]
!776 = metadata !{i32 171, i32 36, metadata !310, null}
!777 = metadata !{i32 786689, metadata !310, metadata !"t", metadata !35, i32 33554603, metadata !313, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [t] [line 171]
!778 = metadata !{i32 171, i32 46, metadata !310, null}
!779 = metadata !{i32 786688, metadata !310, metadata !"g", metadata !35, i32 172, metadata !89, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [g] [line 172]
!780 = metadata !{i32 172, i32 17, metadata !310, null}
!781 = metadata !{i32 172, i32 3, metadata !310, null}
!782 = metadata !{i32 174, i32 3, metadata !310, null}
!783 = metadata !{i32 175, i32 3, metadata !310, null}
!784 = metadata !{i32 176, i32 1, metadata !310, null}
!785 = metadata !{i32 786689, metadata !315, metadata !"L", metadata !35, i32 16777401, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 185]
!786 = metadata !{i32 185, i32 37, metadata !315, null}
!787 = metadata !{i32 786689, metadata !315, metadata !"uv", metadata !35, i32 33554617, metadata !246, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [uv] [line 185]
!788 = metadata !{i32 185, i32 47, metadata !315, null}
!789 = metadata !{i32 786688, metadata !315, metadata !"g", metadata !35, i32 186, metadata !89, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [g] [line 186]
!790 = metadata !{i32 186, i32 17, metadata !315, null}
!791 = metadata !{i32 186, i32 3, metadata !315, null}
!792 = metadata !{i32 786688, metadata !315, metadata !"o", metadata !35, i32 187, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [o] [line 187]
!793 = metadata !{i32 187, i32 13, metadata !315, null}
!794 = metadata !{i32 187, i32 3, metadata !315, null}
!795 = metadata !{i32 189, i32 7, metadata !796, null}
!796 = metadata !{i32 786443, metadata !34, metadata !315, i32 189, i32 7, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!797 = metadata !{i32 190, i32 5, metadata !798, null}
!798 = metadata !{i32 786443, metadata !34, metadata !799, i32 190, i32 5, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!799 = metadata !{i32 786443, metadata !34, metadata !796, i32 190, i32 5, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!800 = metadata !{i32 190, i32 5, metadata !801, null}
!801 = metadata !{i32 786443, metadata !34, metadata !798, i32 190, i32 5, i32 1, i32 235} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!802 = metadata !{i32 190, i32 5, metadata !803, null}
!803 = metadata !{i32 786443, metadata !34, metadata !804, i32 190, i32 5, i32 3, i32 237} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!804 = metadata !{i32 786443, metadata !34, metadata !799, i32 190, i32 5, i32 2, i32 236} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!805 = metadata !{i32 191, i32 1, metadata !315, null}
!806 = metadata !{i32 786689, metadata !318, metadata !"L", metadata !35, i32 16777410, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 194]
!807 = metadata !{i32 194, i32 27, metadata !318, null}
!808 = metadata !{i32 786689, metadata !318, metadata !"o", metadata !35, i32 33554626, metadata !45, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [o] [line 194]
!809 = metadata !{i32 194, i32 40, metadata !318, null}
!810 = metadata !{i32 786688, metadata !318, metadata !"g", metadata !35, i32 195, metadata !89, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [g] [line 195]
!811 = metadata !{i32 195, i32 17, metadata !318, null}
!812 = metadata !{i32 195, i32 3, metadata !318, null}
!813 = metadata !{i32 197, i32 3, metadata !318, null}
!814 = metadata !{i32 198, i32 3, metadata !318, null}
!815 = metadata !{i32 199, i32 3, metadata !318, null}
!816 = metadata !{i32 200, i32 3, metadata !318, null}
!817 = metadata !{i32 201, i32 1, metadata !318, null}
!818 = metadata !{i32 786689, metadata !321, metadata !"L", metadata !35, i32 16777424, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 208]
!819 = metadata !{i32 208, i32 35, metadata !321, null}
!820 = metadata !{i32 786689, metadata !321, metadata !"tt", metadata !35, i32 33554640, metadata !75, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tt] [line 208]
!821 = metadata !{i32 208, i32 42, metadata !321, null}
!822 = metadata !{i32 786689, metadata !321, metadata !"sz", metadata !35, i32 50331856, metadata !98, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sz] [line 208]
!823 = metadata !{i32 208, i32 53, metadata !321, null}
!824 = metadata !{i32 786688, metadata !321, metadata !"g", metadata !35, i32 209, metadata !89, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [g] [line 209]
!825 = metadata !{i32 209, i32 17, metadata !321, null}
!826 = metadata !{i32 209, i32 3, metadata !321, null}
!827 = metadata !{i32 786688, metadata !321, metadata !"o", metadata !35, i32 210, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [o] [line 210]
!828 = metadata !{i32 210, i32 13, metadata !321, null}
!829 = metadata !{i32 210, i32 17, metadata !321, null}
!830 = metadata !{i32 211, i32 3, metadata !321, null}
!831 = metadata !{i32 212, i32 3, metadata !321, null}
!832 = metadata !{i32 213, i32 3, metadata !321, null}
!833 = metadata !{i32 214, i32 3, metadata !321, null}
!834 = metadata !{i32 215, i32 3, metadata !321, null}
!835 = metadata !{i32 786689, metadata !324, metadata !"L", metadata !35, i32 16777893, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 677]
!836 = metadata !{i32 677, i32 35, metadata !324, null}
!837 = metadata !{i32 786689, metadata !324, metadata !"uv", metadata !35, i32 33555109, metadata !246, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [uv] [line 677]
!838 = metadata !{i32 677, i32 45, metadata !324, null}
!839 = metadata !{i32 679, i32 3, metadata !324, null}
!840 = metadata !{i32 680, i32 7, metadata !841, null}
!841 = metadata !{i32 786443, metadata !34, metadata !324, i32 680, i32 7, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!842 = metadata !{i32 680, i32 7, metadata !843, null}
!843 = metadata !{i32 786443, metadata !34, metadata !841, i32 680, i32 7, i32 1, i32 238} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!844 = metadata !{i32 681, i32 5, metadata !841, null}
!845 = metadata !{i32 682, i32 1, metadata !324, null}
!846 = metadata !{i32 786689, metadata !325, metadata !"L", metadata !35, i32 16778115, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 899]
!847 = metadata !{i32 899, i32 38, metadata !325, null}
!848 = metadata !{i32 786689, metadata !325, metadata !"o", metadata !35, i32 33555331, metadata !45, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [o] [line 899]
!849 = metadata !{i32 899, i32 51, metadata !325, null}
!850 = metadata !{i32 786689, metadata !325, metadata !"mt", metadata !35, i32 50332547, metadata !313, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mt] [line 899]
!851 = metadata !{i32 899, i32 61, metadata !325, null}
!852 = metadata !{i32 786688, metadata !325, metadata !"g", metadata !35, i32 900, metadata !89, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [g] [line 900]
!853 = metadata !{i32 900, i32 17, metadata !325, null}
!854 = metadata !{i32 900, i32 3, metadata !325, null}
!855 = metadata !{i32 901, i32 7, metadata !856, null}
!856 = metadata !{i32 786443, metadata !34, metadata !325, i32 901, i32 7, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!857 = metadata !{i32 901, i32 7, metadata !858, null}
!858 = metadata !{i32 786443, metadata !34, metadata !856, i32 901, i32 7, i32 1, i32 239} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!859 = metadata !{i32 901, i32 7, metadata !860, null}
!860 = metadata !{i32 786443, metadata !34, metadata !856, i32 901, i32 7, i32 2, i32 240} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!861 = metadata !{i32 901, i32 7, metadata !862, null}
!862 = metadata !{i32 786443, metadata !34, metadata !856, i32 901, i32 7, i32 3, i32 241} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!863 = metadata !{i32 901, i32 7, metadata !864, null}
!864 = metadata !{i32 786443, metadata !34, metadata !856, i32 901, i32 7, i32 4, i32 242} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!865 = metadata !{i32 902, i32 7, metadata !856, null}
!866 = metadata !{i32 902, i32 7, metadata !867, null}
!867 = metadata !{i32 786443, metadata !34, metadata !856, i32 902, i32 7, i32 1, i32 243} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!868 = metadata !{i32 902, i32 7, metadata !869, null}
!869 = metadata !{i32 786443, metadata !34, metadata !856, i32 902, i32 7, i32 2, i32 244} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!870 = metadata !{i32 903, i32 5, metadata !856, null}
!871 = metadata !{i32 786688, metadata !872, metadata !"p", metadata !35, i32 905, metadata !141, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 905]
!872 = metadata !{i32 786443, metadata !34, metadata !856, i32 904, i32 8, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!873 = metadata !{i32 905, i32 16, metadata !872, null}
!874 = metadata !{i32 906, i32 9, metadata !875, null}
!875 = metadata !{i32 786443, metadata !34, metadata !872, i32 906, i32 9, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!876 = metadata !{i32 906, i32 9, metadata !877, null}
!877 = metadata !{i32 786443, metadata !34, metadata !875, i32 906, i32 9, i32 1, i32 245} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!878 = metadata !{i32 907, i32 7, metadata !879, null}
!879 = metadata !{i32 786443, metadata !34, metadata !875, i32 906, i32 26, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!880 = metadata !{i32 908, i32 11, metadata !881, null}
!881 = metadata !{i32 786443, metadata !34, metadata !879, i32 908, i32 11, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!882 = metadata !{i32 909, i32 22, metadata !881, null}
!883 = metadata !{i32 910, i32 5, metadata !879, null}
!884 = metadata !{i32 912, i32 10, metadata !885, null}
!885 = metadata !{i32 786443, metadata !34, metadata !872, i32 912, i32 5, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!886 = metadata !{i32 912, i32 10, metadata !887, null}
!887 = metadata !{i32 786443, metadata !34, metadata !888, i32 912, i32 10, i32 4, i32 249} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!888 = metadata !{i32 786443, metadata !34, metadata !885, i32 912, i32 10, i32 1, i32 246} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!889 = metadata !{i32 912, i32 65, metadata !890, null}
!890 = metadata !{i32 786443, metadata !34, metadata !891, i32 912, i32 65, i32 2, i32 247} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!891 = metadata !{i32 786443, metadata !34, metadata !885, i32 912, i32 51, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!892 = metadata !{i32 912, i32 34, metadata !893, null}
!893 = metadata !{i32 786443, metadata !34, metadata !885, i32 912, i32 34, i32 3, i32 248} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!894 = metadata !{i32 913, i32 5, metadata !872, null}
!895 = metadata !{i32 914, i32 5, metadata !872, null}
!896 = metadata !{i32 915, i32 5, metadata !872, null}
!897 = metadata !{i32 916, i32 5, metadata !872, null}
!898 = metadata !{i32 918, i32 1, metadata !325, null}
!899 = metadata !{i32 786689, metadata !490, metadata !"L", metadata !35, i32 16777973, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 757]
!900 = metadata !{i32 757, i32 43, metadata !490, null}
!901 = metadata !{i32 786689, metadata !490, metadata !"p", metadata !35, i32 33555189, metadata !141, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [p] [line 757]
!902 = metadata !{i32 757, i32 57, metadata !490, null}
!903 = metadata !{i32 786688, metadata !490, metadata !"old", metadata !35, i32 758, metadata !141, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [old] [line 758]
!904 = metadata !{i32 758, i32 14, metadata !490, null}
!905 = metadata !{i32 758, i32 3, metadata !490, null}
!906 = metadata !{i32 759, i32 3, metadata !490, null}
!907 = metadata !{i32 760, i32 9, metadata !908, null}
!908 = metadata !{i32 786443, metadata !34, metadata !490, i32 759, i32 6, i32 0, i32 213} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!909 = metadata !{i32 761, i32 3, metadata !908, null}
!910 = metadata !{i32 761, i32 3, metadata !911, null}
!911 = metadata !{i32 786443, metadata !34, metadata !908, i32 761, i32 3, i32 1, i32 250} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!912 = metadata !{i32 762, i32 3, metadata !490, null}
!913 = metadata !{i32 786689, metadata !328, metadata !"L", metadata !35, i32 16778180, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 964]
!914 = metadata !{i32 964, i32 38, metadata !328, null}
!915 = metadata !{i32 786688, metadata !328, metadata !"g", metadata !35, i32 965, metadata !89, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [g] [line 965]
!916 = metadata !{i32 965, i32 17, metadata !328, null}
!917 = metadata !{i32 965, i32 3, metadata !328, null}
!918 = metadata !{i32 966, i32 3, metadata !328, null}
!919 = metadata !{i32 968, i32 3, metadata !328, null}
!920 = metadata !{i32 970, i32 3, metadata !328, null}
!921 = metadata !{i32 971, i32 3, metadata !328, null}
!922 = metadata !{i32 972, i32 3, metadata !328, null}
!923 = metadata !{i32 973, i32 3, metadata !328, null}
!924 = metadata !{i32 974, i32 3, metadata !328, null}
!925 = metadata !{i32 976, i32 1, metadata !328, null}
!926 = metadata !{i32 786689, metadata !484, metadata !"g", metadata !35, i32 16778093, metadata !89, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [g] [line 877]
!927 = metadata !{i32 877, i32 44, metadata !484, null}
!928 = metadata !{i32 786689, metadata !484, metadata !"all", metadata !35, i32 33555309, metadata !75, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [all] [line 877]
!929 = metadata !{i32 877, i32 51, metadata !484, null}
!930 = metadata !{i32 786688, metadata !484, metadata !"curr", metadata !35, i32 878, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [curr] [line 878]
!931 = metadata !{i32 878, i32 13, metadata !484, null}
!932 = metadata !{i32 786688, metadata !484, metadata !"p", metadata !35, i32 879, metadata !141, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 879]
!933 = metadata !{i32 879, i32 14, metadata !484, null}
!934 = metadata !{i32 879, i32 3, metadata !484, null}
!935 = metadata !{i32 786688, metadata !484, metadata !"lastnext", metadata !35, i32 880, metadata !141, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lastnext] [line 880]
!936 = metadata !{i32 880, i32 14, metadata !484, null}
!937 = metadata !{i32 880, i32 25, metadata !484, null}
!938 = metadata !{i32 881, i32 3, metadata !484, null}
!939 = metadata !{i32 881, i32 3, metadata !940, null}
!940 = metadata !{i32 786443, metadata !34, metadata !484, i32 881, i32 3, i32 1, i32 251} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!941 = metadata !{i32 883, i32 9, metadata !942, null}
!942 = metadata !{i32 786443, metadata !34, metadata !943, i32 883, i32 9, i32 0, i32 211} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!943 = metadata !{i32 786443, metadata !34, metadata !484, i32 881, i32 31, i32 0, i32 210} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!944 = metadata !{i32 883, i32 9, metadata !945, null}
!945 = metadata !{i32 786443, metadata !34, metadata !942, i32 883, i32 9, i32 1, i32 252} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!946 = metadata !{i32 884, i32 7, metadata !942, null}
!947 = metadata !{i32 886, i32 7, metadata !948, null}
!948 = metadata !{i32 786443, metadata !34, metadata !942, i32 885, i32 10, i32 0, i32 212} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!949 = metadata !{i32 887, i32 7, metadata !948, null}
!950 = metadata !{i32 888, i32 7, metadata !948, null}
!951 = metadata !{i32 889, i32 7, metadata !948, null}
!952 = metadata !{i32 891, i32 3, metadata !943, null}
!953 = metadata !{i32 892, i32 1, metadata !484, null}
!954 = metadata !{i32 786689, metadata !483, metadata !"L", metadata !35, i32 16778072, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 856]
!955 = metadata !{i32 856, i32 50, metadata !483, null}
!956 = metadata !{i32 786688, metadata !483, metadata !"g", metadata !35, i32 857, metadata !89, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [g] [line 857]
!957 = metadata !{i32 857, i32 17, metadata !483, null}
!958 = metadata !{i32 857, i32 3, metadata !483, null}
!959 = metadata !{i32 858, i32 3, metadata !483, null}
!960 = metadata !{i32 858, i32 3, metadata !961, null}
!961 = metadata !{i32 786443, metadata !34, metadata !483, i32 858, i32 3, i32 1, i32 253} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!962 = metadata !{i32 859, i32 5, metadata !483, null}
!963 = metadata !{i32 860, i32 1, metadata !483, null}
!964 = metadata !{i32 786689, metadata !476, metadata !"L", metadata !35, i32 16777950, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 734]
!965 = metadata !{i32 734, i32 41, metadata !476, null}
!966 = metadata !{i32 786689, metadata !476, metadata !"p", metadata !35, i32 33555166, metadata !141, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [p] [line 734]
!967 = metadata !{i32 734, i32 55, metadata !476, null}
!968 = metadata !{i32 786689, metadata !476, metadata !"count", metadata !35, i32 50332382, metadata !107, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [count] [line 734]
!969 = metadata !{i32 734, i32 65, metadata !476, null}
!970 = metadata !{i32 786688, metadata !476, metadata !"g", metadata !35, i32 735, metadata !89, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [g] [line 735]
!971 = metadata !{i32 735, i32 17, metadata !476, null}
!972 = metadata !{i32 735, i32 3, metadata !476, null}
!973 = metadata !{i32 786688, metadata !476, metadata !"ow", metadata !35, i32 736, metadata !75, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ow] [line 736]
!974 = metadata !{i32 736, i32 7, metadata !476, null}
!975 = metadata !{i32 736, i32 3, metadata !476, null}
!976 = metadata !{i32 786688, metadata !476, metadata !"white", metadata !35, i32 737, metadata !75, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [white] [line 737]
!977 = metadata !{i32 737, i32 7, metadata !476, null}
!978 = metadata !{i32 737, i32 3, metadata !476, null}
!979 = metadata !{i32 738, i32 3, metadata !476, null}
!980 = metadata !{i32 738, i32 3, metadata !981, null}
!981 = metadata !{i32 786443, metadata !34, metadata !476, i32 738, i32 3, i32 1, i32 254} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!982 = metadata !{i32 738, i32 3, metadata !983, null}
!983 = metadata !{i32 786443, metadata !34, metadata !476, i32 738, i32 3, i32 2, i32 255} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!984 = metadata !{i32 738, i32 3, metadata !985, null}
!985 = metadata !{i32 786443, metadata !34, metadata !476, i32 738, i32 3, i32 3, i32 256} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!986 = metadata !{i32 786688, metadata !987, metadata !"curr", metadata !35, i32 739, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [curr] [line 739]
!987 = metadata !{i32 786443, metadata !34, metadata !476, i32 738, i32 37, i32 0, i32 199} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!988 = metadata !{i32 739, i32 15, metadata !987, null}
!989 = metadata !{i32 739, i32 5, metadata !987, null}
!990 = metadata !{i32 786688, metadata !987, metadata !"marked", metadata !35, i32 740, metadata !75, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [marked] [line 740]
!991 = metadata !{i32 740, i32 9, metadata !987, null}
!992 = metadata !{i32 740, i32 5, metadata !987, null}
!993 = metadata !{i32 741, i32 9, metadata !994, null}
!994 = metadata !{i32 786443, metadata !34, metadata !987, i32 741, i32 9, i32 0, i32 200} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!995 = metadata !{i32 742, i32 7, metadata !996, null}
!996 = metadata !{i32 786443, metadata !34, metadata !994, i32 741, i32 30, i32 0, i32 201} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!997 = metadata !{i32 743, i32 7, metadata !996, null}
!998 = metadata !{i32 744, i32 5, metadata !996, null}
!999 = metadata !{i32 746, i32 7, metadata !1000, null}
!1000 = metadata !{i32 786443, metadata !34, metadata !994, i32 745, i32 10, i32 0, i32 202} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1001 = metadata !{i32 747, i32 7, metadata !1000, null}
!1002 = metadata !{i32 749, i32 3, metadata !987, null}
!1003 = metadata !{i32 750, i32 3, metadata !476, null}
!1004 = metadata !{i32 750, i32 3, metadata !1005, null}
!1005 = metadata !{i32 786443, metadata !34, metadata !476, i32 750, i32 3, i32 1, i32 257} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1006 = metadata !{i32 750, i32 3, metadata !1007, null}
!1007 = metadata !{i32 786443, metadata !34, metadata !476, i32 750, i32 3, i32 2, i32 258} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1008 = metadata !{i32 750, i32 3, metadata !1009, null}
!1009 = metadata !{i32 786443, metadata !34, metadata !1010, i32 750, i32 3, i32 4, i32 260} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1010 = metadata !{i32 786443, metadata !34, metadata !476, i32 750, i32 3, i32 3, i32 259} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1011 = metadata !{i32 786689, metadata !331, metadata !"L", metadata !35, i32 16778317, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 1101]
!1012 = metadata !{i32 1101, i32 35, metadata !331, null}
!1013 = metadata !{i32 786689, metadata !331, metadata !"statesmask", metadata !35, i32 33555533, metadata !75, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [statesmask] [line 1101]
!1014 = metadata !{i32 1101, i32 42, metadata !331, null}
!1015 = metadata !{i32 786688, metadata !331, metadata !"g", metadata !35, i32 1102, metadata !89, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [g] [line 1102]
!1016 = metadata !{i32 1102, i32 17, metadata !331, null}
!1017 = metadata !{i32 1102, i32 3, metadata !331, null}
!1018 = metadata !{i32 1103, i32 3, metadata !331, null}
!1019 = metadata !{i32 1103, i32 3, metadata !1020, null}
!1020 = metadata !{i32 786443, metadata !34, metadata !331, i32 1103, i32 3, i32 1, i32 261} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1021 = metadata !{i32 1104, i32 5, metadata !331, null}
!1022 = metadata !{i32 1105, i32 1, metadata !331, null}
!1023 = metadata !{i32 786689, metadata !351, metadata !"L", metadata !35, i32 16778258, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 1042]
!1024 = metadata !{i32 1042, i32 38, metadata !351, null}
!1025 = metadata !{i32 786688, metadata !351, metadata !"g", metadata !35, i32 1043, metadata !89, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [g] [line 1043]
!1026 = metadata !{i32 1043, i32 17, metadata !351, null}
!1027 = metadata !{i32 1043, i32 3, metadata !351, null}
!1028 = metadata !{i32 1044, i32 3, metadata !351, null}
!1029 = metadata !{i32 1046, i32 7, metadata !1030, null}
!1030 = metadata !{i32 786443, metadata !34, metadata !1031, i32 1045, i32 20, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1031 = metadata !{i32 786443, metadata !34, metadata !351, i32 1044, i32 23, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1032 = metadata !{i32 1047, i32 7, metadata !1030, null}
!1033 = metadata !{i32 1048, i32 7, metadata !1030, null}
!1034 = metadata !{i32 1049, i32 7, metadata !1030, null}
!1035 = metadata !{i32 1052, i32 7, metadata !1036, null}
!1036 = metadata !{i32 786443, metadata !34, metadata !1031, i32 1051, i32 24, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1037 = metadata !{i32 1054, i32 7, metadata !1036, null}
!1038 = metadata !{i32 1055, i32 12, metadata !1039, null}
!1039 = metadata !{i32 786443, metadata !34, metadata !1036, i32 1055, i32 12, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1040 = metadata !{i32 1056, i32 9, metadata !1039, null}
!1041 = metadata !{i32 1057, i32 7, metadata !1036, null}
!1042 = metadata !{i32 786688, metadata !1043, metadata !"work", metadata !35, i32 1060, metadata !107, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [work] [line 1060]
!1043 = metadata !{i32 786443, metadata !34, metadata !1031, i32 1059, i32 21, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1044 = metadata !{i32 1060, i32 14, metadata !1043, null}
!1045 = metadata !{i32 1061, i32 7, metadata !1043, null}
!1046 = metadata !{i32 1062, i32 14, metadata !1043, null}
!1047 = metadata !{i32 1063, i32 7, metadata !1043, null}
!1048 = metadata !{i32 1064, i32 7, metadata !1043, null}
!1049 = metadata !{i32 1065, i32 7, metadata !1043, null}
!1050 = metadata !{i32 1068, i32 14, metadata !1051, null}
!1051 = metadata !{i32 786443, metadata !34, metadata !1031, i32 1067, i32 23, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1052 = metadata !{i32 1071, i32 14, metadata !1053, null}
!1053 = metadata !{i32 786443, metadata !34, metadata !1031, i32 1070, i32 24, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1054 = metadata !{i32 1074, i32 14, metadata !1055, null}
!1055 = metadata !{i32 786443, metadata !34, metadata !1031, i32 1073, i32 25, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1056 = metadata !{i32 1077, i32 7, metadata !1057, null}
!1057 = metadata !{i32 786443, metadata !34, metadata !1031, i32 1076, i32 21, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1058 = metadata !{i32 1078, i32 7, metadata !1057, null}
!1059 = metadata !{i32 1079, i32 7, metadata !1057, null}
!1060 = metadata !{i32 1080, i32 7, metadata !1057, null}
!1061 = metadata !{i32 1083, i32 11, metadata !1062, null}
!1062 = metadata !{i32 786443, metadata !34, metadata !1063, i32 1083, i32 11, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1063 = metadata !{i32 786443, metadata !34, metadata !1031, i32 1082, i32 22, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1064 = metadata !{i32 1083, i32 11, metadata !1065, null}
!1065 = metadata !{i32 786443, metadata !34, metadata !1062, i32 1083, i32 11, i32 1, i32 262} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1066 = metadata !{i32 786688, metadata !1067, metadata !"n", metadata !35, i32 1084, metadata !75, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 1084]
!1067 = metadata !{i32 786443, metadata !34, metadata !1062, i32 1083, i32 53, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1068 = metadata !{i32 1084, i32 13, metadata !1067, null}
!1069 = metadata !{i32 1084, i32 17, metadata !1067, null}
!1070 = metadata !{i32 1085, i32 9, metadata !1067, null}
!1071 = metadata !{i32 1088, i32 9, metadata !1072, null}
!1072 = metadata !{i32 786443, metadata !34, metadata !1062, i32 1087, i32 12, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1073 = metadata !{i32 1089, i32 9, metadata !1072, null}
!1074 = metadata !{i32 1092, i32 29, metadata !1031, null}
!1075 = metadata !{i32 1094, i32 1, metadata !351, null}
!1076 = metadata !{i32 786689, metadata !334, metadata !"L", metadata !35, i32 16778342, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 1126]
!1077 = metadata !{i32 1126, i32 28, metadata !334, null}
!1078 = metadata !{i32 786688, metadata !334, metadata !"g", metadata !35, i32 1127, metadata !89, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [g] [line 1127]
!1079 = metadata !{i32 1127, i32 17, metadata !334, null}
!1080 = metadata !{i32 1127, i32 3, metadata !334, null}
!1081 = metadata !{i32 786688, metadata !334, metadata !"debt", metadata !35, i32 1128, metadata !103, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [debt] [line 1128]
!1082 = metadata !{i32 1128, i32 9, metadata !334, null}
!1083 = metadata !{i32 1128, i32 16, metadata !334, null}
!1084 = metadata !{i32 1129, i32 7, metadata !1085, null}
!1085 = metadata !{i32 786443, metadata !34, metadata !334, i32 1129, i32 7, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1086 = metadata !{i32 1130, i32 5, metadata !1087, null}
!1087 = metadata !{i32 786443, metadata !34, metadata !1085, i32 1129, i32 22, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1088 = metadata !{i32 1131, i32 5, metadata !1087, null}
!1089 = metadata !{i32 1133, i32 3, metadata !334, null}
!1090 = metadata !{i32 786688, metadata !1091, metadata !"work", metadata !35, i32 1134, metadata !107, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [work] [line 1134]
!1091 = metadata !{i32 786443, metadata !34, metadata !334, i32 1133, i32 6, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1092 = metadata !{i32 1134, i32 12, metadata !1091, null}
!1093 = metadata !{i32 1134, i32 19, metadata !1091, null}
!1094 = metadata !{i32 1135, i32 5, metadata !1091, null}
!1095 = metadata !{i32 1136, i32 3, metadata !1091, null}
!1096 = metadata !{i32 1136, i32 3, metadata !1097, null}
!1097 = metadata !{i32 786443, metadata !34, metadata !1091, i32 1136, i32 3, i32 1, i32 263} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1098 = metadata !{i32 1136, i32 3, metadata !1099, null}
!1099 = metadata !{i32 786443, metadata !34, metadata !1091, i32 1136, i32 3, i32 2, i32 264} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1100 = metadata !{i32 1136, i32 3, metadata !1101, null}
!1101 = metadata !{i32 786443, metadata !34, metadata !1091, i32 1136, i32 3, i32 3, i32 265} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1102 = metadata !{i32 1137, i32 7, metadata !1103, null}
!1103 = metadata !{i32 786443, metadata !34, metadata !334, i32 1137, i32 7, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1104 = metadata !{i32 1138, i32 5, metadata !1103, null}
!1105 = metadata !{i32 1140, i32 5, metadata !1106, null}
!1106 = metadata !{i32 786443, metadata !34, metadata !1103, i32 1139, i32 8, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1107 = metadata !{i32 1141, i32 5, metadata !1106, null}
!1108 = metadata !{i32 1142, i32 5, metadata !1106, null}
!1109 = metadata !{i32 1144, i32 1, metadata !334, null}
!1110 = metadata !{i32 786689, metadata !348, metadata !"g", metadata !35, i32 16778328, metadata !89, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [g] [line 1112]
!1111 = metadata !{i32 1112, i32 37, metadata !348, null}
!1112 = metadata !{i32 786688, metadata !348, metadata !"debt", metadata !35, i32 1113, metadata !103, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [debt] [line 1113]
!1113 = metadata !{i32 1113, i32 9, metadata !348, null}
!1114 = metadata !{i32 1113, i32 3, metadata !348, null}
!1115 = metadata !{i32 786688, metadata !348, metadata !"stepmul", metadata !35, i32 1114, metadata !75, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [stepmul] [line 1114]
!1116 = metadata !{i32 1114, i32 7, metadata !348, null}
!1117 = metadata !{i32 1114, i32 3, metadata !348, null}
!1118 = metadata !{i32 1115, i32 7, metadata !1119, null}
!1119 = metadata !{i32 786443, metadata !34, metadata !348, i32 1115, i32 7, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1120 = metadata !{i32 1115, i32 18, metadata !1121, null}
!1121 = metadata !{i32 786443, metadata !34, metadata !1119, i32 1115, i32 18, i32 1, i32 266} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1122 = metadata !{i32 1117, i32 5, metadata !1123, null}
!1123 = metadata !{i32 786443, metadata !34, metadata !1119, i32 1116, i32 8, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1124 = metadata !{i32 1118, i32 5, metadata !1123, null}
!1125 = metadata !{i32 1118, i32 5, metadata !1126, null}
!1126 = metadata !{i32 786443, metadata !34, metadata !1123, i32 1118, i32 5, i32 1, i32 267} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1127 = metadata !{i32 1118, i32 5, metadata !1128, null}
!1128 = metadata !{i32 786443, metadata !34, metadata !1123, i32 1118, i32 5, i32 2, i32 268} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1129 = metadata !{i32 1118, i32 5, metadata !1130, null}
!1130 = metadata !{i32 786443, metadata !34, metadata !1131, i32 1118, i32 5, i32 4, i32 270} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1131 = metadata !{i32 786443, metadata !34, metadata !1123, i32 1118, i32 5, i32 3, i32 269} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1132 = metadata !{i32 1119, i32 5, metadata !1123, null}
!1133 = metadata !{i32 1121, i32 1, metadata !348, null}
!1134 = metadata !{i32 786689, metadata !345, metadata !"g", metadata !35, i32 16778153, metadata !89, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [g] [line 937]
!1135 = metadata !{i32 937, i32 37, metadata !345, null}
!1136 = metadata !{i32 786688, metadata !345, metadata !"threshold", metadata !35, i32 938, metadata !103, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [threshold] [line 938]
!1137 = metadata !{i32 938, i32 9, metadata !345, null}
!1138 = metadata !{i32 786688, metadata !345, metadata !"debt", metadata !35, i32 938, metadata !103, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [debt] [line 938]
!1139 = metadata !{i32 938, i32 20, metadata !345, null}
!1140 = metadata !{i32 786688, metadata !345, metadata !"estimate", metadata !35, i32 939, metadata !103, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [estimate] [line 939]
!1141 = metadata !{i32 939, i32 9, metadata !345, null}
!1142 = metadata !{i32 939, i32 3, metadata !345, null}
!1143 = metadata !{i32 941, i32 3, metadata !345, null}
!1144 = metadata !{i32 941, i32 3, metadata !1145, null}
!1145 = metadata !{i32 786443, metadata !34, metadata !345, i32 941, i32 3, i32 1, i32 271} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1146 = metadata !{i32 941, i32 3, metadata !1147, null}
!1147 = metadata !{i32 786443, metadata !34, metadata !345, i32 941, i32 3, i32 2, i32 272} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1148 = metadata !{i32 941, i32 3, metadata !1149, null}
!1149 = metadata !{i32 786443, metadata !34, metadata !1150, i32 941, i32 3, i32 4, i32 274} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1150 = metadata !{i32 786443, metadata !34, metadata !345, i32 941, i32 3, i32 3, i32 273} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1151 = metadata !{i32 944, i32 3, metadata !345, null}
!1152 = metadata !{i32 945, i32 3, metadata !345, null}
!1153 = metadata !{i32 946, i32 1, metadata !345, null}
!1154 = metadata !{i32 786689, metadata !337, metadata !"L", metadata !35, i32 16778057, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 841]
!1155 = metadata !{i32 841, i32 42, metadata !337, null}
!1156 = metadata !{i32 786688, metadata !337, metadata !"g", metadata !35, i32 842, metadata !89, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [g] [line 842]
!1157 = metadata !{i32 842, i32 17, metadata !337, null}
!1158 = metadata !{i32 842, i32 3, metadata !337, null}
!1159 = metadata !{i32 786688, metadata !337, metadata !"i", metadata !35, i32 843, metadata !100, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 843]
!1160 = metadata !{i32 843, i32 16, metadata !337, null}
!1161 = metadata !{i32 845, i32 8, metadata !1162, null}
!1162 = metadata !{i32 786443, metadata !34, metadata !337, i32 845, i32 3, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1163 = metadata !{i32 845, i32 8, metadata !1164, null}
!1164 = metadata !{i32 786443, metadata !34, metadata !1165, i32 845, i32 8, i32 4, i32 278} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1165 = metadata !{i32 786443, metadata !34, metadata !1162, i32 845, i32 8, i32 1, i32 275} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1166 = metadata !{i32 845, i32 8, metadata !1167, null}
!1167 = metadata !{i32 786443, metadata !34, metadata !1162, i32 845, i32 8, i32 2, i32 276} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1168 = metadata !{i32 845, i32 8, metadata !1169, null}
!1169 = metadata !{i32 786443, metadata !34, metadata !1162, i32 845, i32 8, i32 3, i32 277} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1170 = metadata !{i32 846, i32 5, metadata !1162, null}
!1171 = metadata !{i32 845, i32 46, metadata !1162, null}
!1172 = metadata !{i32 847, i32 3, metadata !337, null}
!1173 = metadata !{i32 847, i32 3, metadata !1174, null}
!1174 = metadata !{i32 786443, metadata !34, metadata !337, i32 847, i32 3, i32 2, i32 280} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1175 = metadata !{i32 847, i32 3, metadata !1176, null}
!1176 = metadata !{i32 786443, metadata !34, metadata !337, i32 847, i32 3, i32 1, i32 279} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1177 = metadata !{i32 847, i32 3, metadata !1178, null}
!1178 = metadata !{i32 786443, metadata !34, metadata !1179, i32 847, i32 3, i32 4, i32 282} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1179 = metadata !{i32 786443, metadata !34, metadata !337, i32 847, i32 3, i32 3, i32 281} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1180 = metadata !{i32 849, i32 3, metadata !337, null}
!1181 = metadata !{i32 786689, metadata !335, metadata !"L", metadata !35, i32 16778372, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 1156]
!1182 = metadata !{i32 1156, i32 30, metadata !335, null}
!1183 = metadata !{i32 786689, metadata !335, metadata !"isemergency", metadata !35, i32 33555588, metadata !75, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [isemergency] [line 1156]
!1184 = metadata !{i32 1156, i32 37, metadata !335, null}
!1185 = metadata !{i32 786688, metadata !335, metadata !"g", metadata !35, i32 1157, metadata !89, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [g] [line 1157]
!1186 = metadata !{i32 1157, i32 17, metadata !335, null}
!1187 = metadata !{i32 1157, i32 3, metadata !335, null}
!1188 = metadata !{i32 1159, i32 7, metadata !1189, null}
!1189 = metadata !{i32 786443, metadata !34, metadata !335, i32 1159, i32 7, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1190 = metadata !{i32 1159, i32 20, metadata !1191, null}
!1191 = metadata !{i32 786443, metadata !34, metadata !1189, i32 1159, i32 20, i32 1, i32 283} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1192 = metadata !{i32 1160, i32 7, metadata !1193, null}
!1193 = metadata !{i32 786443, metadata !34, metadata !335, i32 1160, i32 7, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1194 = metadata !{i32 1161, i32 5, metadata !1195, null}
!1195 = metadata !{i32 786443, metadata !34, metadata !1193, i32 1160, i32 25, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1196 = metadata !{i32 1162, i32 3, metadata !1195, null}
!1197 = metadata !{i32 1164, i32 3, metadata !335, null}
!1198 = metadata !{i32 1165, i32 3, metadata !335, null}
!1199 = metadata !{i32 1166, i32 3, metadata !335, null}
!1200 = metadata !{i32 1169, i32 3, metadata !335, null}
!1201 = metadata !{i32 1170, i32 3, metadata !335, null}
!1202 = metadata !{i32 1171, i32 3, metadata !335, null}
!1203 = metadata !{i32 1172, i32 1, metadata !335, null}
!1204 = metadata !{i32 786689, metadata !336, metadata !"L", metadata !35, i32 16778172, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 956]
!1205 = metadata !{i32 956, i32 36, metadata !336, null}
!1206 = metadata !{i32 786688, metadata !336, metadata !"g", metadata !35, i32 957, metadata !89, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [g] [line 957]
!1207 = metadata !{i32 957, i32 17, metadata !336, null}
!1208 = metadata !{i32 957, i32 3, metadata !336, null}
!1209 = metadata !{i32 958, i32 3, metadata !336, null}
!1210 = metadata !{i32 960, i32 16, metadata !336, null}
!1211 = metadata !{i32 961, i32 1, metadata !336, null}
!1212 = metadata !{i32 786689, metadata !338, metadata !"L", metadata !35, i32 16778022, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 806]
!1213 = metadata !{i32 806, i32 30, metadata !338, null}
!1214 = metadata !{i32 786689, metadata !338, metadata !"propagateerrors", metadata !35, i32 33555238, metadata !75, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [propagateerrors] [line 806]
!1215 = metadata !{i32 806, i32 37, metadata !338, null}
!1216 = metadata !{i32 786688, metadata !338, metadata !"g", metadata !35, i32 807, metadata !89, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [g] [line 807]
!1217 = metadata !{i32 807, i32 17, metadata !338, null}
!1218 = metadata !{i32 807, i32 3, metadata !338, null}
!1219 = metadata !{i32 786688, metadata !338, metadata !"tm", metadata !35, i32 808, metadata !372, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tm] [line 808]
!1220 = metadata !{i32 808, i32 17, metadata !338, null}
!1221 = metadata !{i32 786688, metadata !338, metadata !"v", metadata !35, i32 809, metadata !64, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [v] [line 809]
!1222 = metadata !{i32 809, i32 10, metadata !338, null}
!1223 = metadata !{i32 786688, metadata !1224, metadata !"io", metadata !35, i32 810, metadata !63, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [io] [line 810]
!1224 = metadata !{i32 786443, metadata !34, metadata !338, i32 810, i32 3, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1225 = metadata !{i32 810, i32 3, metadata !1224, null}
!1226 = metadata !{i32 786688, metadata !1224, metadata !"i_g", metadata !35, i32 810, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i_g] [line 810]
!1227 = metadata !{i32 811, i32 8, metadata !338, null}
!1228 = metadata !{i32 812, i32 7, metadata !1229, null}
!1229 = metadata !{i32 786443, metadata !34, metadata !338, i32 812, i32 7, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1230 = metadata !{i32 812, i32 7, metadata !1231, null}
!1231 = metadata !{i32 786443, metadata !34, metadata !1229, i32 812, i32 7, i32 1, i32 284} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1232 = metadata !{i32 786688, metadata !1233, metadata !"status", metadata !35, i32 813, metadata !75, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [status] [line 813]
!1233 = metadata !{i32 786443, metadata !34, metadata !1229, i32 812, i32 39, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1234 = metadata !{i32 813, i32 9, metadata !1233, null}
!1235 = metadata !{i32 786688, metadata !1233, metadata !"oldah", metadata !35, i32 814, metadata !52, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [oldah] [line 814]
!1236 = metadata !{i32 814, i32 13, metadata !1233, null}
!1237 = metadata !{i32 814, i32 5, metadata !1233, null}
!1238 = metadata !{i32 786688, metadata !1233, metadata !"running", metadata !35, i32 815, metadata !75, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [running] [line 815]
!1239 = metadata !{i32 815, i32 9, metadata !1233, null}
!1240 = metadata !{i32 815, i32 5, metadata !1233, null}
!1241 = metadata !{i32 816, i32 5, metadata !1233, null}
!1242 = metadata !{i32 817, i32 5, metadata !1233, null}
!1243 = metadata !{i32 786688, metadata !1244, metadata !"io1", metadata !35, i32 818, metadata !63, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [io1] [line 818]
!1244 = metadata !{i32 786443, metadata !34, metadata !1233, i32 818, i32 5, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1245 = metadata !{i32 818, i32 5, metadata !1244, null}
!1246 = metadata !{i32 786688, metadata !1247, metadata !"io1", metadata !35, i32 819, metadata !63, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [io1] [line 819]
!1247 = metadata !{i32 786443, metadata !34, metadata !1233, i32 819, i32 5, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1248 = metadata !{i32 819, i32 5, metadata !1247, null}
!1249 = metadata !{i32 820, i32 5, metadata !1233, null}
!1250 = metadata !{i32 821, i32 14, metadata !1233, null}
!1251 = metadata !{i32 822, i32 5, metadata !1233, null}
!1252 = metadata !{i32 823, i32 5, metadata !1233, null}
!1253 = metadata !{i32 824, i32 9, metadata !1254, null}
!1254 = metadata !{i32 786443, metadata !34, metadata !1233, i32 824, i32 9, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1255 = metadata !{i32 824, i32 9, metadata !1256, null}
!1256 = metadata !{i32 786443, metadata !34, metadata !1254, i32 824, i32 9, i32 1, i32 285} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1257 = metadata !{i32 825, i32 11, metadata !1258, null}
!1258 = metadata !{i32 786443, metadata !34, metadata !1259, i32 825, i32 11, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1259 = metadata !{i32 786443, metadata !34, metadata !1254, i32 824, i32 46, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1260 = metadata !{i32 786688, metadata !1261, metadata !"msg", metadata !35, i32 826, metadata !280, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [msg] [line 826]
!1261 = metadata !{i32 786443, metadata !34, metadata !1258, i32 825, i32 33, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1262 = metadata !{i32 826, i32 21, metadata !1261, null}
!1263 = metadata !{i32 826, i32 9, metadata !1261, null}
!1264 = metadata !{i32 826, i32 9, metadata !1265, null}
!1265 = metadata !{i32 786443, metadata !34, metadata !1261, i32 826, i32 9, i32 1, i32 286} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1266 = metadata !{i32 826, i32 9, metadata !1267, null}
!1267 = metadata !{i32 786443, metadata !34, metadata !1261, i32 826, i32 9, i32 2, i32 287} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1268 = metadata !{i32 826, i32 9, metadata !1269, null}
!1269 = metadata !{i32 786443, metadata !34, metadata !1270, i32 826, i32 9, i32 4, i32 289} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1270 = metadata !{i32 786443, metadata !34, metadata !1261, i32 826, i32 9, i32 3, i32 288} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1271 = metadata !{i32 829, i32 9, metadata !1261, null}
!1272 = metadata !{i32 830, i32 9, metadata !1261, null}
!1273 = metadata !{i32 831, i32 7, metadata !1261, null}
!1274 = metadata !{i32 832, i32 7, metadata !1259, null}
!1275 = metadata !{i32 834, i32 3, metadata !1233, null}
!1276 = metadata !{i32 835, i32 1, metadata !338, null}
!1277 = metadata !{i32 786689, metadata !342, metadata !"g", metadata !35, i32 16778003, metadata !89, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [g] [line 787]
!1278 = metadata !{i32 787, i32 48, metadata !342, null}
!1279 = metadata !{i32 786688, metadata !342, metadata !"o", metadata !35, i32 788, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [o] [line 788]
!1280 = metadata !{i32 788, i32 13, metadata !342, null}
!1281 = metadata !{i32 788, i32 3, metadata !342, null}
!1282 = metadata !{i32 790, i32 3, metadata !342, null}
!1283 = metadata !{i32 791, i32 3, metadata !342, null}
!1284 = metadata !{i32 792, i32 3, metadata !342, null}
!1285 = metadata !{i32 793, i32 3, metadata !342, null}
!1286 = metadata !{i32 794, i32 7, metadata !1287, null}
!1287 = metadata !{i32 786443, metadata !34, metadata !342, i32 794, i32 7, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1288 = metadata !{i32 794, i32 7, metadata !1289, null}
!1289 = metadata !{i32 786443, metadata !34, metadata !1287, i32 794, i32 7, i32 1, i32 290} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1290 = metadata !{i32 795, i32 5, metadata !1287, null}
!1291 = metadata !{i32 796, i32 3, metadata !342, null}
!1292 = metadata !{i32 786689, metadata !339, metadata !"L", metadata !35, i32 16778016, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 800]
!1293 = metadata !{i32 800, i32 35, metadata !339, null}
!1294 = metadata !{i32 786689, metadata !339, metadata !"ud", metadata !35, i32 33555232, metadata !73, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ud] [line 800]
!1295 = metadata !{i32 800, i32 44, metadata !339, null}
!1296 = metadata !{i32 801, i32 3, metadata !339, null}
!1297 = metadata !{i32 802, i32 3, metadata !339, null}
!1298 = metadata !{i32 803, i32 1, metadata !339, null}
!1299 = metadata !{i32 786689, metadata !475, metadata !"g", metadata !35, i32 16777553, metadata !89, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [g] [line 337]
!1300 = metadata !{i32 337, i32 46, metadata !475, null}
!1301 = metadata !{i32 338, i32 3, metadata !475, null}
!1302 = metadata !{i32 339, i32 3, metadata !475, null}
!1303 = metadata !{i32 340, i32 3, metadata !1304, null}
!1304 = metadata !{i32 786443, metadata !34, metadata !1305, i32 340, i32 3, i32 0, i32 196} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1305 = metadata !{i32 786443, metadata !34, metadata !475, i32 340, i32 3, i32 0, i32 195} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1306 = metadata !{i32 340, i32 3, metadata !1307, null}
!1307 = metadata !{i32 786443, metadata !34, metadata !1304, i32 340, i32 3, i32 1, i32 291} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1308 = metadata !{i32 341, i32 3, metadata !1309, null}
!1309 = metadata !{i32 786443, metadata !34, metadata !1310, i32 341, i32 3, i32 0, i32 198} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1310 = metadata !{i32 786443, metadata !34, metadata !475, i32 341, i32 3, i32 0, i32 197} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1311 = metadata !{i32 341, i32 3, metadata !1312, null}
!1312 = metadata !{i32 786443, metadata !34, metadata !1309, i32 341, i32 3, i32 1, i32 292} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1313 = metadata !{i32 341, i32 3, metadata !1314, null}
!1314 = metadata !{i32 786443, metadata !34, metadata !1309, i32 341, i32 3, i32 2, i32 293} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1315 = metadata !{i32 342, i32 3, metadata !475, null}
!1316 = metadata !{i32 343, i32 3, metadata !475, null}
!1317 = metadata !{i32 344, i32 1, metadata !475, null}
!1318 = metadata !{i32 786689, metadata !383, metadata !"g", metadata !35, i32 16777775, metadata !89, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [g] [line 559]
!1319 = metadata !{i32 559, i32 42, metadata !383, null}
!1320 = metadata !{i32 786688, metadata !383, metadata !"size", metadata !35, i32 560, metadata !107, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [size] [line 560]
!1321 = metadata !{i32 560, i32 10, metadata !383, null}
!1322 = metadata !{i32 786688, metadata !383, metadata !"o", metadata !35, i32 561, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [o] [line 561]
!1323 = metadata !{i32 561, i32 13, metadata !383, null}
!1324 = metadata !{i32 561, i32 3, metadata !383, null}
!1325 = metadata !{i32 563, i32 3, metadata !383, null}
!1326 = metadata !{i32 564, i32 3, metadata !383, null}
!1327 = metadata !{i32 786688, metadata !1328, metadata !"h", metadata !35, i32 566, metadata !313, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [h] [line 566]
!1328 = metadata !{i32 786443, metadata !34, metadata !1329, i32 565, i32 22, i32 0, i32 115} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1329 = metadata !{i32 786443, metadata !34, metadata !383, i32 564, i32 18, i32 0, i32 114} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1330 = metadata !{i32 566, i32 14, metadata !1328, null}
!1331 = metadata !{i32 566, i32 7, metadata !1328, null}
!1332 = metadata !{i32 567, i32 7, metadata !1328, null}
!1333 = metadata !{i32 568, i32 14, metadata !1328, null}
!1334 = metadata !{i32 569, i32 7, metadata !1328, null}
!1335 = metadata !{i32 786688, metadata !1336, metadata !"cl", metadata !35, i32 572, metadata !466, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cl] [line 572]
!1336 = metadata !{i32 786443, metadata !34, metadata !1329, i32 571, i32 20, i32 0, i32 116} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1337 = metadata !{i32 572, i32 17, metadata !1336, null}
!1338 = metadata !{i32 572, i32 7, metadata !1336, null}
!1339 = metadata !{i32 573, i32 7, metadata !1336, null}
!1340 = metadata !{i32 574, i32 14, metadata !1336, null}
!1341 = metadata !{i32 575, i32 7, metadata !1336, null}
!1342 = metadata !{i32 786688, metadata !1343, metadata !"cl", metadata !35, i32 578, metadata !451, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cl] [line 578]
!1343 = metadata !{i32 786443, metadata !34, metadata !1329, i32 577, i32 20, i32 0, i32 117} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1344 = metadata !{i32 578, i32 17, metadata !1343, null}
!1345 = metadata !{i32 578, i32 7, metadata !1343, null}
!1346 = metadata !{i32 579, i32 7, metadata !1343, null}
!1347 = metadata !{i32 580, i32 14, metadata !1343, null}
!1348 = metadata !{i32 581, i32 7, metadata !1343, null}
!1349 = metadata !{i32 786688, metadata !1350, metadata !"th", metadata !35, i32 584, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [th] [line 584]
!1350 = metadata !{i32 786443, metadata !34, metadata !1329, i32 583, i32 23, i32 0, i32 118} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1351 = metadata !{i32 584, i32 18, metadata !1350, null}
!1352 = metadata !{i32 584, i32 7, metadata !1350, null}
!1353 = metadata !{i32 585, i32 7, metadata !1350, null}
!1354 = metadata !{i32 586, i32 7, metadata !1350, null}
!1355 = metadata !{i32 587, i32 7, metadata !1350, null}
!1356 = metadata !{i32 588, i32 14, metadata !1350, null}
!1357 = metadata !{i32 589, i32 7, metadata !1350, null}
!1358 = metadata !{i32 786688, metadata !1359, metadata !"p", metadata !35, i32 592, metadata !387, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 592]
!1359 = metadata !{i32 786443, metadata !34, metadata !1329, i32 591, i32 22, i32 0, i32 119} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1360 = metadata !{i32 592, i32 14, metadata !1359, null}
!1361 = metadata !{i32 592, i32 7, metadata !1359, null}
!1362 = metadata !{i32 593, i32 7, metadata !1359, null}
!1363 = metadata !{i32 594, i32 14, metadata !1359, null}
!1364 = metadata !{i32 595, i32 7, metadata !1359, null}
!1365 = metadata !{i32 597, i32 29, metadata !1329, null}
!1366 = metadata !{i32 599, i32 3, metadata !383, null}
!1367 = metadata !{i32 600, i32 1, metadata !383, null}
!1368 = metadata !{i32 600, i32 1, metadata !1369, null}
!1369 = metadata !{i32 786443, metadata !34, metadata !383, i32 600, i32 1, i32 1, i32 294} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1370 = metadata !{i32 786689, metadata !382, metadata !"g", metadata !35, i32 16777819, metadata !89, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [g] [line 603]
!1371 = metadata !{i32 603, i32 41, metadata !382, null}
!1372 = metadata !{i32 604, i32 3, metadata !382, null}
!1373 = metadata !{i32 604, i32 3, metadata !1374, null}
!1374 = metadata !{i32 786443, metadata !34, metadata !1375, i32 604, i32 3, i32 3, i32 297} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1375 = metadata !{i32 786443, metadata !34, metadata !382, i32 604, i32 3, i32 1, i32 295} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1376 = metadata !{i32 604, i32 19, metadata !1377, null}
!1377 = metadata !{i32 786443, metadata !34, metadata !382, i32 604, i32 19, i32 2, i32 296} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1378 = metadata !{i32 605, i32 1, metadata !382, null}
!1379 = metadata !{i32 786689, metadata !360, metadata !"L", metadata !35, i32 16778195, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 979]
!1380 = metadata !{i32 979, i32 33, metadata !360, null}
!1381 = metadata !{i32 786688, metadata !360, metadata !"g", metadata !35, i32 980, metadata !89, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [g] [line 980]
!1382 = metadata !{i32 980, i32 17, metadata !360, null}
!1383 = metadata !{i32 980, i32 3, metadata !360, null}
!1384 = metadata !{i32 786688, metadata !360, metadata !"work", metadata !35, i32 981, metadata !103, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [work] [line 981]
!1385 = metadata !{i32 981, i32 9, metadata !360, null}
!1386 = metadata !{i32 786688, metadata !360, metadata !"origweak", metadata !35, i32 982, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [origweak] [line 982]
!1387 = metadata !{i32 982, i32 13, metadata !360, null}
!1388 = metadata !{i32 786688, metadata !360, metadata !"origall", metadata !35, i32 982, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [origall] [line 982]
!1389 = metadata !{i32 982, i32 24, metadata !360, null}
!1390 = metadata !{i32 786688, metadata !360, metadata !"grayagain", metadata !35, i32 983, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [grayagain] [line 983]
!1391 = metadata !{i32 983, i32 13, metadata !360, null}
!1392 = metadata !{i32 983, i32 3, metadata !360, null}
!1393 = metadata !{i32 986, i32 3, metadata !360, null}
!1394 = metadata !{i32 987, i32 3, metadata !360, null}
!1395 = metadata !{i32 988, i32 3, metadata !1396, null}
!1396 = metadata !{i32 786443, metadata !34, metadata !1397, i32 988, i32 3, i32 0, i32 54} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1397 = metadata !{i32 786443, metadata !34, metadata !360, i32 988, i32 3, i32 0, i32 53} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1398 = metadata !{i32 988, i32 3, metadata !1399, null}
!1399 = metadata !{i32 786443, metadata !34, metadata !1396, i32 988, i32 3, i32 1, i32 298} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1400 = metadata !{i32 990, i32 3, metadata !1401, null}
!1401 = metadata !{i32 786443, metadata !34, metadata !1402, i32 990, i32 3, i32 0, i32 56} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1402 = metadata !{i32 786443, metadata !34, metadata !360, i32 990, i32 3, i32 0, i32 55} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1403 = metadata !{i32 990, i32 3, metadata !1404, null}
!1404 = metadata !{i32 786443, metadata !34, metadata !1401, i32 990, i32 3, i32 1, i32 299} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1405 = metadata !{i32 990, i32 3, metadata !1406, null}
!1406 = metadata !{i32 786443, metadata !34, metadata !1401, i32 990, i32 3, i32 2, i32 300} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1407 = metadata !{i32 991, i32 3, metadata !360, null}
!1408 = metadata !{i32 993, i32 3, metadata !360, null}
!1409 = metadata !{i32 994, i32 3, metadata !360, null}
!1410 = metadata !{i32 995, i32 3, metadata !360, null}
!1411 = metadata !{i32 996, i32 3, metadata !360, null}
!1412 = metadata !{i32 997, i32 3, metadata !360, null}
!1413 = metadata !{i32 998, i32 3, metadata !360, null}
!1414 = metadata !{i32 999, i32 3, metadata !360, null}
!1415 = metadata !{i32 1002, i32 3, metadata !360, null}
!1416 = metadata !{i32 1003, i32 3, metadata !360, null}
!1417 = metadata !{i32 1004, i32 3, metadata !360, null}
!1418 = metadata !{i32 1004, i32 23, metadata !360, null}
!1419 = metadata !{i32 1005, i32 3, metadata !360, null}
!1420 = metadata !{i32 1006, i32 3, metadata !360, null}
!1421 = metadata !{i32 1007, i32 3, metadata !360, null}
!1422 = metadata !{i32 1008, i32 3, metadata !360, null}
!1423 = metadata !{i32 1009, i32 3, metadata !360, null}
!1424 = metadata !{i32 1010, i32 3, metadata !360, null}
!1425 = metadata !{i32 1011, i32 3, metadata !360, null}
!1426 = metadata !{i32 1014, i32 3, metadata !360, null}
!1427 = metadata !{i32 1015, i32 3, metadata !360, null}
!1428 = metadata !{i32 1017, i32 3, metadata !360, null}
!1429 = metadata !{i32 1018, i32 3, metadata !360, null}
!1430 = metadata !{i32 1019, i32 3, metadata !360, null}
!1431 = metadata !{i32 1020, i32 3, metadata !360, null}
!1432 = metadata !{i32 1021, i32 3, metadata !360, null}
!1433 = metadata !{i32 1022, i32 3, metadata !360, null}
!1434 = metadata !{i32 786689, metadata !357, metadata !"L", metadata !35, i32 16778242, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 1026]
!1435 = metadata !{i32 1026, i32 37, metadata !357, null}
!1436 = metadata !{i32 786689, metadata !357, metadata !"g", metadata !35, i32 33555458, metadata !89, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [g] [line 1026]
!1437 = metadata !{i32 1026, i32 54, metadata !357, null}
!1438 = metadata !{i32 786689, metadata !357, metadata !"nextstate", metadata !35, i32 50332675, metadata !75, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nextstate] [line 1027]
!1439 = metadata !{i32 1027, i32 30, metadata !357, null}
!1440 = metadata !{i32 786689, metadata !357, metadata !"nextlist", metadata !35, i32 67109891, metadata !141, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nextlist] [line 1027]
!1441 = metadata !{i32 1027, i32 52, metadata !357, null}
!1442 = metadata !{i32 1028, i32 7, metadata !1443, null}
!1443 = metadata !{i32 786443, metadata !34, metadata !357, i32 1028, i32 7, i32 0, i32 50} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1444 = metadata !{i32 786688, metadata !1445, metadata !"olddebt", metadata !35, i32 1029, metadata !103, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [olddebt] [line 1029]
!1445 = metadata !{i32 786443, metadata !34, metadata !1443, i32 1028, i32 19, i32 0, i32 51} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1446 = metadata !{i32 1029, i32 11, metadata !1445, null}
!1447 = metadata !{i32 1029, i32 5, metadata !1445, null}
!1448 = metadata !{i32 1030, i32 18, metadata !1445, null}
!1449 = metadata !{i32 1031, i32 5, metadata !1445, null}
!1450 = metadata !{i32 1032, i32 9, metadata !1451, null}
!1451 = metadata !{i32 786443, metadata !34, metadata !1445, i32 1032, i32 9, i32 0, i32 52} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1452 = metadata !{i32 1033, i32 7, metadata !1451, null}
!1453 = metadata !{i32 1034, i32 3, metadata !1445, null}
!1454 = metadata !{i32 1036, i32 3, metadata !357, null}
!1455 = metadata !{i32 1037, i32 3, metadata !357, null}
!1456 = metadata !{i32 1038, i32 3, metadata !357, null}
!1457 = metadata !{i32 1039, i32 1, metadata !357, null}
!1458 = metadata !{i32 786689, metadata !354, metadata !"L", metadata !35, i32 16777993, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 777]
!1459 = metadata !{i32 777, i32 36, metadata !354, null}
!1460 = metadata !{i32 786689, metadata !354, metadata !"g", metadata !35, i32 33555209, metadata !89, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [g] [line 777]
!1461 = metadata !{i32 777, i32 53, metadata !354, null}
!1462 = metadata !{i32 778, i32 7, metadata !1463, null}
!1463 = metadata !{i32 786443, metadata !34, metadata !354, i32 778, i32 7, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1464 = metadata !{i32 786688, metadata !1465, metadata !"olddebt", metadata !35, i32 779, metadata !103, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [olddebt] [line 779]
!1465 = metadata !{i32 786443, metadata !34, metadata !1463, i32 778, i32 35, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1466 = metadata !{i32 779, i32 11, metadata !1465, null}
!1467 = metadata !{i32 779, i32 5, metadata !1465, null}
!1468 = metadata !{i32 780, i32 9, metadata !1469, null}
!1469 = metadata !{i32 786443, metadata !34, metadata !1465, i32 780, i32 9, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1470 = metadata !{i32 781, i32 7, metadata !1469, null}
!1471 = metadata !{i32 782, i32 5, metadata !1465, null}
!1472 = metadata !{i32 783, i32 3, metadata !1465, null}
!1473 = metadata !{i32 784, i32 1, metadata !354, null}
!1474 = metadata !{i32 786689, metadata !381, metadata !"g", metadata !35, i32 16777505, metadata !89, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [g] [line 289]
!1475 = metadata !{i32 289, i32 35, metadata !381, null}
!1476 = metadata !{i32 786688, metadata !381, metadata !"i", metadata !35, i32 290, metadata !75, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 290]
!1477 = metadata !{i32 290, i32 7, metadata !381, null}
!1478 = metadata !{i32 291, i32 8, metadata !1479, null}
!1479 = metadata !{i32 786443, metadata !34, metadata !381, i32 291, i32 3, i32 0, i32 109} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1480 = metadata !{i32 291, i32 8, metadata !1481, null}
!1481 = metadata !{i32 786443, metadata !34, metadata !1482, i32 291, i32 8, i32 2, i32 308} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1482 = metadata !{i32 786443, metadata !34, metadata !1479, i32 291, i32 8, i32 1, i32 301} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1483 = metadata !{i32 292, i32 5, metadata !1484, null}
!1484 = metadata !{i32 786443, metadata !34, metadata !1485, i32 292, i32 5, i32 0, i32 111} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1485 = metadata !{i32 786443, metadata !34, metadata !1479, i32 292, i32 5, i32 0, i32 110} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1486 = metadata !{i32 292, i32 5, metadata !1487, null}
!1487 = metadata !{i32 786443, metadata !34, metadata !1488, i32 292, i32 5, i32 1, i32 302} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1488 = metadata !{i32 786443, metadata !34, metadata !1489, i32 292, i32 5, i32 0, i32 113} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1489 = metadata !{i32 786443, metadata !34, metadata !1484, i32 292, i32 5, i32 0, i32 112} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1490 = metadata !{i32 292, i32 5, metadata !1491, null}
!1491 = metadata !{i32 786443, metadata !34, metadata !1488, i32 292, i32 5, i32 3, i32 304} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1492 = metadata !{i32 292, i32 5, metadata !1493, null}
!1493 = metadata !{i32 786443, metadata !34, metadata !1494, i32 292, i32 5, i32 5, i32 306} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1494 = metadata !{i32 786443, metadata !34, metadata !1489, i32 292, i32 5, i32 4, i32 305} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1495 = metadata !{i32 292, i32 5, metadata !1496, null}
!1496 = metadata !{i32 786443, metadata !34, metadata !1497, i32 292, i32 5, i32 6, i32 307} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1497 = metadata !{i32 786443, metadata !34, metadata !1485, i32 292, i32 5, i32 2, i32 303} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1498 = metadata !{i32 291, i32 30, metadata !1479, null}
!1499 = metadata !{i32 293, i32 1, metadata !381, null}
!1500 = metadata !{i32 786689, metadata !380, metadata !"g", metadata !35, i32 16777528, metadata !89, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [g] [line 312]
!1501 = metadata !{i32 312, i32 41, metadata !380, null}
!1502 = metadata !{i32 786688, metadata !380, metadata !"thread", metadata !35, i32 313, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [thread] [line 313]
!1503 = metadata !{i32 313, i32 14, metadata !380, null}
!1504 = metadata !{i32 786688, metadata !380, metadata !"p", metadata !35, i32 314, metadata !1505, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 314]
!1505 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !38} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1506 = metadata !{i32 314, i32 15, metadata !380, null}
!1507 = metadata !{i32 314, i32 3, metadata !380, null}
!1508 = metadata !{i32 315, i32 3, metadata !380, null}
!1509 = metadata !{i32 315, i32 3, metadata !1510, null}
!1510 = metadata !{i32 786443, metadata !34, metadata !380, i32 315, i32 3, i32 1, i32 309} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1511 = metadata !{i32 317, i32 9, metadata !1512, null}
!1512 = metadata !{i32 786443, metadata !34, metadata !1513, i32 317, i32 9, i32 0, i32 101} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1513 = metadata !{i32 786443, metadata !34, metadata !380, i32 315, i32 33, i32 0, i32 100} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1514 = metadata !{i32 317, i32 9, metadata !1515, null}
!1515 = metadata !{i32 786443, metadata !34, metadata !1512, i32 317, i32 9, i32 1, i32 310} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1516 = metadata !{i32 318, i32 7, metadata !1512, null}
!1517 = metadata !{i32 786688, metadata !1518, metadata !"uv", metadata !35, i32 320, metadata !246, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [uv] [line 320]
!1518 = metadata !{i32 786443, metadata !34, metadata !1512, i32 319, i32 10, i32 0, i32 102} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1519 = metadata !{i32 320, i32 14, metadata !1518, null}
!1520 = metadata !{i32 321, i32 7, metadata !1518, null}
!1521 = metadata !{i32 322, i32 7, metadata !1518, null}
!1522 = metadata !{i32 323, i32 12, metadata !1523, null}
!1523 = metadata !{i32 786443, metadata !34, metadata !1518, i32 323, i32 7, i32 0, i32 103} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1524 = metadata !{i32 323, i32 12, metadata !1525, null}
!1525 = metadata !{i32 786443, metadata !34, metadata !1526, i32 323, i32 12, i32 2, i32 314} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1526 = metadata !{i32 786443, metadata !34, metadata !1523, i32 323, i32 12, i32 1, i32 311} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1527 = metadata !{i32 324, i32 13, metadata !1528, null}
!1528 = metadata !{i32 786443, metadata !34, metadata !1529, i32 324, i32 13, i32 0, i32 105} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1529 = metadata !{i32 786443, metadata !34, metadata !1523, i32 323, i32 70, i32 0, i32 104} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1530 = metadata !{i32 325, i32 11, metadata !1531, null}
!1531 = metadata !{i32 786443, metadata !34, metadata !1532, i32 325, i32 11, i32 0, i32 108} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1532 = metadata !{i32 786443, metadata !34, metadata !1533, i32 325, i32 11, i32 0, i32 107} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1533 = metadata !{i32 786443, metadata !34, metadata !1528, i32 324, i32 33, i32 0, i32 106} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1534 = metadata !{i32 325, i32 11, metadata !1535, null}
!1535 = metadata !{i32 786443, metadata !34, metadata !1531, i32 325, i32 11, i32 1, i32 312} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1536 = metadata !{i32 325, i32 11, metadata !1537, null}
!1537 = metadata !{i32 786443, metadata !34, metadata !1531, i32 325, i32 11, i32 2, i32 313} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1538 = metadata !{i32 326, i32 11, metadata !1533, null}
!1539 = metadata !{i32 327, i32 9, metadata !1533, null}
!1540 = metadata !{i32 328, i32 7, metadata !1529, null}
!1541 = metadata !{i32 323, i32 48, metadata !1523, null}
!1542 = metadata !{i32 330, i32 3, metadata !1513, null}
!1543 = metadata !{i32 331, i32 1, metadata !380, null}
!1544 = metadata !{i32 786689, metadata !376, metadata !"g", metadata !35, i32 16777824, metadata !89, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [g] [line 608]
!1545 = metadata !{i32 608, i32 47, metadata !376, null}
!1546 = metadata !{i32 786688, metadata !376, metadata !"changed", metadata !35, i32 609, metadata !75, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [changed] [line 609]
!1547 = metadata !{i32 609, i32 7, metadata !376, null}
!1548 = metadata !{i32 610, i32 3, metadata !376, null}
!1549 = metadata !{i32 786688, metadata !1550, metadata !"w", metadata !35, i32 611, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [w] [line 611]
!1550 = metadata !{i32 786443, metadata !34, metadata !376, i32 610, i32 6, i32 0, i32 81} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1551 = metadata !{i32 611, i32 15, metadata !1550, null}
!1552 = metadata !{i32 786688, metadata !1550, metadata !"next", metadata !35, i32 612, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [next] [line 612]
!1553 = metadata !{i32 612, i32 15, metadata !1550, null}
!1554 = metadata !{i32 612, i32 5, metadata !1550, null}
!1555 = metadata !{i32 613, i32 5, metadata !1550, null}
!1556 = metadata !{i32 614, i32 5, metadata !1550, null}
!1557 = metadata !{i32 615, i32 5, metadata !1550, null}
!1558 = metadata !{i32 615, i32 5, metadata !1559, null}
!1559 = metadata !{i32 786443, metadata !34, metadata !1550, i32 615, i32 5, i32 1, i32 315} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1560 = metadata !{i32 616, i32 7, metadata !1561, null}
!1561 = metadata !{i32 786443, metadata !34, metadata !1550, i32 615, i32 32, i32 0, i32 82} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1562 = metadata !{i32 617, i32 11, metadata !1563, null}
!1563 = metadata !{i32 786443, metadata !34, metadata !1561, i32 617, i32 11, i32 0, i32 83} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1564 = metadata !{i32 618, i32 9, metadata !1565, null}
!1565 = metadata !{i32 786443, metadata !34, metadata !1563, i32 617, i32 43, i32 0, i32 84} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1566 = metadata !{i32 619, i32 9, metadata !1565, null}
!1567 = metadata !{i32 620, i32 7, metadata !1565, null}
!1568 = metadata !{i32 621, i32 5, metadata !1561, null}
!1569 = metadata !{i32 622, i32 3, metadata !1550, null}
!1570 = metadata !{i32 622, i32 3, metadata !1571, null}
!1571 = metadata !{i32 786443, metadata !34, metadata !1550, i32 622, i32 3, i32 1, i32 316} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1572 = metadata !{i32 623, i32 1, metadata !376, null}
!1573 = metadata !{i32 786689, metadata !375, metadata !"g", metadata !35, i32 16777873, metadata !89, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [g] [line 657]
!1574 = metadata !{i32 657, i32 40, metadata !375, null}
!1575 = metadata !{i32 786689, metadata !375, metadata !"l", metadata !35, i32 33555089, metadata !45, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [l] [line 657]
!1576 = metadata !{i32 657, i32 53, metadata !375, null}
!1577 = metadata !{i32 786689, metadata !375, metadata !"f", metadata !35, i32 50332305, metadata !45, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [f] [line 657]
!1578 = metadata !{i32 657, i32 66, metadata !375, null}
!1579 = metadata !{i32 658, i32 3, metadata !1580, null}
!1580 = metadata !{i32 786443, metadata !34, metadata !375, i32 658, i32 3, i32 0, i32 72} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1581 = metadata !{i32 658, i32 3, metadata !1582, null}
!1582 = metadata !{i32 786443, metadata !34, metadata !1583, i32 658, i32 3, i32 2, i32 323} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1583 = metadata !{i32 786443, metadata !34, metadata !1580, i32 658, i32 3, i32 1, i32 317} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1584 = metadata !{i32 786688, metadata !1585, metadata !"h", metadata !35, i32 659, metadata !313, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [h] [line 659]
!1585 = metadata !{i32 786443, metadata !34, metadata !1580, i32 658, i32 40, i32 0, i32 73} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1586 = metadata !{i32 659, i32 12, metadata !1585, null}
!1587 = metadata !{i32 659, i32 5, metadata !1585, null}
!1588 = metadata !{i32 786688, metadata !1585, metadata !"n", metadata !35, i32 660, metadata !178, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 660]
!1589 = metadata !{i32 660, i32 11, metadata !1585, null}
!1590 = metadata !{i32 786688, metadata !1585, metadata !"limit", metadata !35, i32 660, metadata !178, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [limit] [line 660]
!1591 = metadata !{i32 660, i32 15, metadata !1585, null}
!1592 = metadata !{i32 660, i32 5, metadata !1585, null}
!1593 = metadata !{i32 786688, metadata !1585, metadata !"i", metadata !35, i32 661, metadata !100, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 661]
!1594 = metadata !{i32 661, i32 18, metadata !1585, null}
!1595 = metadata !{i32 662, i32 10, metadata !1596, null}
!1596 = metadata !{i32 786443, metadata !34, metadata !1585, i32 662, i32 5, i32 0, i32 74} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1597 = metadata !{i32 662, i32 10, metadata !1598, null}
!1598 = metadata !{i32 786443, metadata !34, metadata !1599, i32 662, i32 10, i32 2, i32 319} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1599 = metadata !{i32 786443, metadata !34, metadata !1596, i32 662, i32 10, i32 1, i32 318} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1600 = metadata !{i32 786688, metadata !1601, metadata !"o", metadata !35, i32 663, metadata !63, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [o] [line 663]
!1601 = metadata !{i32 786443, metadata !34, metadata !1596, i32 662, i32 40, i32 0, i32 75} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1602 = metadata !{i32 663, i32 15, metadata !1601, null}
!1603 = metadata !{i32 663, i32 7, metadata !1601, null}
!1604 = metadata !{i32 664, i32 11, metadata !1605, null}
!1605 = metadata !{i32 786443, metadata !34, metadata !1601, i32 664, i32 11, i32 0, i32 76} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1606 = metadata !{i32 665, i32 9, metadata !1605, null}
!1607 = metadata !{i32 666, i32 5, metadata !1601, null}
!1608 = metadata !{i32 662, i32 35, metadata !1596, null}
!1609 = metadata !{i32 667, i32 10, metadata !1610, null}
!1610 = metadata !{i32 786443, metadata !34, metadata !1585, i32 667, i32 5, i32 0, i32 77} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1611 = metadata !{i32 667, i32 10, metadata !1612, null}
!1612 = metadata !{i32 786443, metadata !34, metadata !1613, i32 667, i32 10, i32 2, i32 322} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1613 = metadata !{i32 786443, metadata !34, metadata !1610, i32 667, i32 10, i32 1, i32 320} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1614 = metadata !{i32 668, i32 11, metadata !1615, null}
!1615 = metadata !{i32 786443, metadata !34, metadata !1616, i32 668, i32 11, i32 0, i32 79} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1616 = metadata !{i32 786443, metadata !34, metadata !1610, i32 667, i32 43, i32 0, i32 78} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1617 = metadata !{i32 668, i32 32, metadata !1618, null}
!1618 = metadata !{i32 786443, metadata !34, metadata !1615, i32 668, i32 32, i32 1, i32 321} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1619 = metadata !{i32 669, i32 9, metadata !1620, null}
!1620 = metadata !{i32 786443, metadata !34, metadata !1615, i32 668, i32 55, i32 0, i32 80} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1621 = metadata !{i32 670, i32 9, metadata !1620, null}
!1622 = metadata !{i32 671, i32 7, metadata !1620, null}
!1623 = metadata !{i32 672, i32 5, metadata !1616, null}
!1624 = metadata !{i32 667, i32 38, metadata !1610, null}
!1625 = metadata !{i32 673, i32 3, metadata !1585, null}
!1626 = metadata !{i32 658, i32 18, metadata !1580, null}
!1627 = metadata !{i32 674, i32 1, metadata !375, null}
!1628 = metadata !{i32 786689, metadata !374, metadata !"g", metadata !35, i32 16777515, metadata !89, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [g] [line 299]
!1629 = metadata !{i32 299, i32 41, metadata !374, null}
!1630 = metadata !{i32 786688, metadata !374, metadata !"o", metadata !35, i32 300, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [o] [line 300]
!1631 = metadata !{i32 300, i32 13, metadata !374, null}
!1632 = metadata !{i32 301, i32 8, metadata !1633, null}
!1633 = metadata !{i32 786443, metadata !34, metadata !374, i32 301, i32 3, i32 0, i32 69} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1634 = metadata !{i32 301, i32 8, metadata !1635, null}
!1635 = metadata !{i32 786443, metadata !34, metadata !1636, i32 301, i32 8, i32 2, i32 328} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1636 = metadata !{i32 786443, metadata !34, metadata !1633, i32 301, i32 8, i32 1, i32 324} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1637 = metadata !{i32 302, i32 5, metadata !1638, null}
!1638 = metadata !{i32 786443, metadata !34, metadata !1639, i32 302, i32 5, i32 0, i32 71} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1639 = metadata !{i32 786443, metadata !34, metadata !1633, i32 302, i32 5, i32 0, i32 70} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1640 = metadata !{i32 302, i32 5, metadata !1641, null}
!1641 = metadata !{i32 786443, metadata !34, metadata !1638, i32 302, i32 5, i32 1, i32 325} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1642 = metadata !{i32 302, i32 5, metadata !1643, null}
!1643 = metadata !{i32 786443, metadata !34, metadata !1644, i32 302, i32 5, i32 3, i32 327} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1644 = metadata !{i32 786443, metadata !34, metadata !1639, i32 302, i32 5, i32 2, i32 326} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1645 = metadata !{i32 301, i32 35, metadata !1633, null}
!1646 = metadata !{i32 303, i32 1, metadata !374, null}
!1647 = metadata !{i32 786689, metadata !363, metadata !"g", metadata !35, i32 16777855, metadata !89, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [g] [line 639]
!1648 = metadata !{i32 639, i32 38, metadata !363, null}
!1649 = metadata !{i32 786689, metadata !363, metadata !"l", metadata !35, i32 33555071, metadata !45, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [l] [line 639]
!1650 = metadata !{i32 639, i32 51, metadata !363, null}
!1651 = metadata !{i32 786689, metadata !363, metadata !"f", metadata !35, i32 50332287, metadata !45, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [f] [line 639]
!1652 = metadata !{i32 639, i32 64, metadata !363, null}
!1653 = metadata !{i32 640, i32 3, metadata !1654, null}
!1654 = metadata !{i32 786443, metadata !34, metadata !363, i32 640, i32 3, i32 0, i32 57} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1655 = metadata !{i32 640, i32 3, metadata !1656, null}
!1656 = metadata !{i32 786443, metadata !34, metadata !1657, i32 640, i32 3, i32 2, i32 333} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1657 = metadata !{i32 786443, metadata !34, metadata !1654, i32 640, i32 3, i32 1, i32 329} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1658 = metadata !{i32 786688, metadata !1659, metadata !"h", metadata !35, i32 641, metadata !313, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [h] [line 641]
!1659 = metadata !{i32 786443, metadata !34, metadata !1654, i32 640, i32 40, i32 0, i32 58} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1660 = metadata !{i32 641, i32 12, metadata !1659, null}
!1661 = metadata !{i32 641, i32 5, metadata !1659, null}
!1662 = metadata !{i32 786688, metadata !1659, metadata !"n", metadata !35, i32 642, metadata !178, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 642]
!1663 = metadata !{i32 642, i32 11, metadata !1659, null}
!1664 = metadata !{i32 786688, metadata !1659, metadata !"limit", metadata !35, i32 642, metadata !178, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [limit] [line 642]
!1665 = metadata !{i32 642, i32 15, metadata !1659, null}
!1666 = metadata !{i32 642, i32 5, metadata !1659, null}
!1667 = metadata !{i32 643, i32 10, metadata !1668, null}
!1668 = metadata !{i32 786443, metadata !34, metadata !1659, i32 643, i32 5, i32 0, i32 59} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1669 = metadata !{i32 643, i32 10, metadata !1670, null}
!1670 = metadata !{i32 786443, metadata !34, metadata !1671, i32 643, i32 10, i32 2, i32 332} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1671 = metadata !{i32 786443, metadata !34, metadata !1668, i32 643, i32 10, i32 1, i32 330} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1672 = metadata !{i32 644, i32 11, metadata !1673, null}
!1673 = metadata !{i32 786443, metadata !34, metadata !1674, i32 644, i32 11, i32 0, i32 61} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1674 = metadata !{i32 786443, metadata !34, metadata !1668, i32 643, i32 43, i32 0, i32 60} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1675 = metadata !{i32 644, i32 33, metadata !1676, null}
!1676 = metadata !{i32 786443, metadata !34, metadata !1673, i32 644, i32 33, i32 1, i32 331} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1677 = metadata !{i32 645, i32 9, metadata !1678, null}
!1678 = metadata !{i32 786443, metadata !34, metadata !1673, i32 644, i32 57, i32 0, i32 62} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1679 = metadata !{i32 646, i32 9, metadata !1678, null}
!1680 = metadata !{i32 647, i32 7, metadata !1678, null}
!1681 = metadata !{i32 648, i32 5, metadata !1674, null}
!1682 = metadata !{i32 643, i32 38, metadata !1668, null}
!1683 = metadata !{i32 649, i32 3, metadata !1659, null}
!1684 = metadata !{i32 640, i32 18, metadata !1654, null}
!1685 = metadata !{i32 650, i32 1, metadata !363, null}
!1686 = metadata !{i32 786689, metadata !369, metadata !"g", metadata !35, i32 16777355, metadata !89, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [g] [line 139]
!1687 = metadata !{i32 139, i32 37, metadata !369, null}
!1688 = metadata !{i32 786689, metadata !369, metadata !"o", metadata !35, i32 33554571, metadata !372, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [o] [line 139]
!1689 = metadata !{i32 139, i32 54, metadata !369, null}
!1690 = metadata !{i32 140, i32 7, metadata !1691, null}
!1691 = metadata !{i32 786443, metadata !34, metadata !369, i32 140, i32 7, i32 0, i32 64} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1692 = metadata !{i32 140, i32 26, metadata !1693, null}
!1693 = metadata !{i32 786443, metadata !34, metadata !1691, i32 140, i32 26, i32 1, i32 334} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1694 = metadata !{i32 141, i32 12, metadata !1695, null}
!1695 = metadata !{i32 786443, metadata !34, metadata !1691, i32 141, i32 12, i32 0, i32 65} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1696 = metadata !{i32 142, i32 5, metadata !1697, null}
!1697 = metadata !{i32 786443, metadata !34, metadata !1698, i32 142, i32 5, i32 0, i32 68} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1698 = metadata !{i32 786443, metadata !34, metadata !1699, i32 142, i32 5, i32 0, i32 67} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1699 = metadata !{i32 786443, metadata !34, metadata !1695, i32 141, i32 27, i32 0, i32 66} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1700 = metadata !{i32 142, i32 5, metadata !1701, null}
!1701 = metadata !{i32 786443, metadata !34, metadata !1697, i32 142, i32 5, i32 1, i32 335} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1702 = metadata !{i32 143, i32 5, metadata !1699, null}
!1703 = metadata !{i32 145, i32 8, metadata !1695, null}
!1704 = metadata !{i32 146, i32 1, metadata !369, null}
!1705 = metadata !{i32 786689, metadata !366, metadata !"n", metadata !35, i32 16777341, metadata !178, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 125]
!1706 = metadata !{i32 125, i32 32, metadata !366, null}
!1707 = metadata !{i32 127, i32 7, metadata !1708, null}
!1708 = metadata !{i32 786443, metadata !34, metadata !366, i32 127, i32 7, i32 0, i32 63} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1709 = metadata !{i32 127, i32 7, metadata !1710, null}
!1710 = metadata !{i32 786443, metadata !34, metadata !1708, i32 127, i32 7, i32 1, i32 336} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1711 = metadata !{i32 128, i32 5, metadata !1708, null}
!1712 = metadata !{i32 129, i32 1, metadata !366, null}
!1713 = metadata !{i32 786689, metadata !377, metadata !"g", metadata !35, i32 16777610, metadata !89, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [g] [line 394]
!1714 = metadata !{i32 394, i32 45, metadata !377, null}
!1715 = metadata !{i32 786689, metadata !377, metadata !"h", metadata !35, i32 33554826, metadata !313, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [h] [line 394]
!1716 = metadata !{i32 394, i32 55, metadata !377, null}
!1717 = metadata !{i32 786688, metadata !377, metadata !"marked", metadata !35, i32 395, metadata !75, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [marked] [line 395]
!1718 = metadata !{i32 395, i32 7, metadata !377, null}
!1719 = metadata !{i32 395, i32 3, metadata !377, null}
!1720 = metadata !{i32 786688, metadata !377, metadata !"hasclears", metadata !35, i32 396, metadata !75, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [hasclears] [line 396]
!1721 = metadata !{i32 396, i32 7, metadata !377, null}
!1722 = metadata !{i32 396, i32 3, metadata !377, null}
!1723 = metadata !{i32 786688, metadata !377, metadata !"hasww", metadata !35, i32 397, metadata !75, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [hasww] [line 397]
!1724 = metadata !{i32 397, i32 7, metadata !377, null}
!1725 = metadata !{i32 397, i32 3, metadata !377, null}
!1726 = metadata !{i32 786688, metadata !377, metadata !"n", metadata !35, i32 398, metadata !178, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 398]
!1727 = metadata !{i32 398, i32 9, metadata !377, null}
!1728 = metadata !{i32 786688, metadata !377, metadata !"limit", metadata !35, i32 398, metadata !178, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [limit] [line 398]
!1729 = metadata !{i32 398, i32 13, metadata !377, null}
!1730 = metadata !{i32 398, i32 3, metadata !377, null}
!1731 = metadata !{i32 786688, metadata !377, metadata !"i", metadata !35, i32 399, metadata !100, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 399]
!1732 = metadata !{i32 399, i32 16, metadata !377, null}
!1733 = metadata !{i32 401, i32 8, metadata !1734, null}
!1734 = metadata !{i32 786443, metadata !34, metadata !377, i32 401, i32 3, i32 0, i32 85} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1735 = metadata !{i32 401, i32 8, metadata !1736, null}
!1736 = metadata !{i32 786443, metadata !34, metadata !1737, i32 401, i32 8, i32 2, i32 339} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1737 = metadata !{i32 786443, metadata !34, metadata !1734, i32 401, i32 8, i32 1, i32 337} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1738 = metadata !{i32 402, i32 9, metadata !1739, null}
!1739 = metadata !{i32 786443, metadata !34, metadata !1740, i32 402, i32 9, i32 0, i32 87} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1740 = metadata !{i32 786443, metadata !34, metadata !1734, i32 401, i32 38, i32 0, i32 86} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1741 = metadata !{i32 402, i32 9, metadata !1742, null}
!1742 = metadata !{i32 786443, metadata !34, metadata !1739, i32 402, i32 9, i32 1, i32 338} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1743 = metadata !{i32 403, i32 7, metadata !1744, null}
!1744 = metadata !{i32 786443, metadata !34, metadata !1739, i32 402, i32 35, i32 0, i32 88} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1745 = metadata !{i32 404, i32 7, metadata !1744, null}
!1746 = metadata !{i32 405, i32 5, metadata !1744, null}
!1747 = metadata !{i32 406, i32 3, metadata !1740, null}
!1748 = metadata !{i32 401, i32 33, metadata !1734, null}
!1749 = metadata !{i32 408, i32 8, metadata !1750, null}
!1750 = metadata !{i32 786443, metadata !34, metadata !377, i32 408, i32 3, i32 0, i32 89} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1751 = metadata !{i32 408, i32 8, metadata !1752, null}
!1752 = metadata !{i32 786443, metadata !34, metadata !1753, i32 408, i32 8, i32 2, i32 343} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1753 = metadata !{i32 786443, metadata !34, metadata !1750, i32 408, i32 8, i32 1, i32 340} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1754 = metadata !{i32 410, i32 9, metadata !1755, null}
!1755 = metadata !{i32 786443, metadata !34, metadata !1756, i32 410, i32 9, i32 0, i32 91} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1756 = metadata !{i32 786443, metadata !34, metadata !1750, i32 408, i32 41, i32 0, i32 90} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1757 = metadata !{i32 411, i32 7, metadata !1755, null}
!1758 = metadata !{i32 412, i32 14, metadata !1759, null}
!1759 = metadata !{i32 786443, metadata !34, metadata !1755, i32 412, i32 14, i32 0, i32 92} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1760 = metadata !{i32 413, i32 7, metadata !1761, null}
!1761 = metadata !{i32 786443, metadata !34, metadata !1759, i32 412, i32 37, i32 0, i32 93} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1762 = metadata !{i32 414, i32 11, metadata !1763, null}
!1763 = metadata !{i32 786443, metadata !34, metadata !1761, i32 414, i32 11, i32 0, i32 94} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1764 = metadata !{i32 414, i32 11, metadata !1765, null}
!1765 = metadata !{i32 786443, metadata !34, metadata !1763, i32 414, i32 11, i32 1, i32 341} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1766 = metadata !{i32 415, i32 9, metadata !1763, null}
!1767 = metadata !{i32 416, i32 5, metadata !1761, null}
!1768 = metadata !{i32 417, i32 14, metadata !1769, null}
!1769 = metadata !{i32 786443, metadata !34, metadata !1759, i32 417, i32 14, i32 0, i32 95} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1770 = metadata !{i32 417, i32 14, metadata !1771, null}
!1771 = metadata !{i32 786443, metadata !34, metadata !1769, i32 417, i32 14, i32 1, i32 342} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1772 = metadata !{i32 418, i32 7, metadata !1773, null}
!1773 = metadata !{i32 786443, metadata !34, metadata !1769, i32 417, i32 35, i32 0, i32 96} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1774 = metadata !{i32 419, i32 7, metadata !1773, null}
!1775 = metadata !{i32 420, i32 5, metadata !1773, null}
!1776 = metadata !{i32 421, i32 3, metadata !1756, null}
!1777 = metadata !{i32 408, i32 36, metadata !1750, null}
!1778 = metadata !{i32 423, i32 7, metadata !1779, null}
!1779 = metadata !{i32 786443, metadata !34, metadata !377, i32 423, i32 7, i32 0, i32 97} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1780 = metadata !{i32 424, i32 5, metadata !1779, null}
!1781 = metadata !{i32 425, i32 12, metadata !1782, null}
!1782 = metadata !{i32 786443, metadata !34, metadata !1779, i32 425, i32 12, i32 0, i32 98} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1783 = metadata !{i32 426, i32 5, metadata !1782, null}
!1784 = metadata !{i32 427, i32 12, metadata !1785, null}
!1785 = metadata !{i32 786443, metadata !34, metadata !1782, i32 427, i32 12, i32 0, i32 99} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1786 = metadata !{i32 428, i32 5, metadata !1785, null}
!1787 = metadata !{i32 429, i32 3, metadata !377, null}
!1788 = metadata !{i32 786689, metadata !468, metadata !"g", metadata !35, i32 16777667, metadata !89, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [g] [line 451]
!1789 = metadata !{i32 451, i32 44, metadata !468, null}
!1790 = metadata !{i32 786689, metadata !468, metadata !"h", metadata !35, i32 33554883, metadata !313, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [h] [line 451]
!1791 = metadata !{i32 451, i32 54, metadata !468, null}
!1792 = metadata !{i32 786688, metadata !468, metadata !"weakkey", metadata !35, i32 452, metadata !280, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [weakkey] [line 452]
!1793 = metadata !{i32 452, i32 15, metadata !468, null}
!1794 = metadata !{i32 786688, metadata !468, metadata !"weakvalue", metadata !35, i32 452, metadata !280, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [weakvalue] [line 452]
!1795 = metadata !{i32 452, i32 25, metadata !468, null}
!1796 = metadata !{i32 786688, metadata !468, metadata !"mode", metadata !35, i32 453, metadata !372, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mode] [line 453]
!1797 = metadata !{i32 453, i32 17, metadata !468, null}
!1798 = metadata !{i32 453, i32 3, metadata !468, null}
!1799 = metadata !{i32 453, i32 3, metadata !1800, null}
!1800 = metadata !{i32 786443, metadata !34, metadata !468, i32 453, i32 3, i32 1, i32 344} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1801 = metadata !{i32 453, i32 3, metadata !1802, null}
!1802 = metadata !{i32 786443, metadata !34, metadata !468, i32 453, i32 3, i32 2, i32 345} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1803 = metadata !{i32 453, i32 3, metadata !1804, null}
!1804 = metadata !{i32 786443, metadata !34, metadata !468, i32 453, i32 3, i32 4, i32 347} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1805 = metadata !{i32 453, i32 24, metadata !1806, null}
!1806 = metadata !{i32 786443, metadata !34, metadata !468, i32 453, i32 24, i32 5, i32 348} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1807 = metadata !{i32 453, i32 24, metadata !468, null}
!1808 = metadata !{i32 453, i32 24, metadata !1809, null}
!1809 = metadata !{i32 786443, metadata !34, metadata !1810, i32 453, i32 24, i32 7, i32 350} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1810 = metadata !{i32 786443, metadata !34, metadata !468, i32 453, i32 24, i32 6, i32 349} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1811 = metadata !{i32 453, i32 24, metadata !1812, null}
!1812 = metadata !{i32 786443, metadata !34, metadata !1813, i32 453, i32 24, i32 8, i32 351} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1813 = metadata !{i32 786443, metadata !34, metadata !468, i32 453, i32 24, i32 3, i32 346} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1814 = metadata !{i32 454, i32 3, metadata !1815, null}
!1815 = metadata !{i32 786443, metadata !34, metadata !1816, i32 454, i32 3, i32 0, i32 168} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1816 = metadata !{i32 786443, metadata !34, metadata !468, i32 454, i32 3, i32 0, i32 167} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1817 = metadata !{i32 454, i32 3, metadata !1818, null}
!1818 = metadata !{i32 786443, metadata !34, metadata !1819, i32 454, i32 3, i32 1, i32 352} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1819 = metadata !{i32 786443, metadata !34, metadata !1820, i32 454, i32 3, i32 0, i32 170} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1820 = metadata !{i32 786443, metadata !34, metadata !1815, i32 454, i32 3, i32 0, i32 169} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1821 = metadata !{i32 454, i32 3, metadata !1822, null}
!1822 = metadata !{i32 786443, metadata !34, metadata !1819, i32 454, i32 3, i32 2, i32 353} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1823 = metadata !{i32 454, i32 3, metadata !1824, null}
!1824 = metadata !{i32 786443, metadata !34, metadata !1825, i32 454, i32 3, i32 4, i32 355} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1825 = metadata !{i32 786443, metadata !34, metadata !1820, i32 454, i32 3, i32 3, i32 354} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1826 = metadata !{i32 455, i32 7, metadata !1827, null}
!1827 = metadata !{i32 786443, metadata !34, metadata !468, i32 455, i32 7, i32 0, i32 171} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1828 = metadata !{i32 455, i32 7, metadata !1829, null}
!1829 = metadata !{i32 786443, metadata !34, metadata !1827, i32 455, i32 7, i32 1, i32 356} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1830 = metadata !{i32 456, i32 19, metadata !1827, null}
!1831 = metadata !{i32 457, i32 21, metadata !1827, null}
!1832 = metadata !{i32 457, i32 21, metadata !1833, null}
!1833 = metadata !{i32 786443, metadata !34, metadata !1827, i32 457, i32 21, i32 2, i32 358} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1834 = metadata !{i32 457, i32 21, metadata !1835, null}
!1835 = metadata !{i32 786443, metadata !34, metadata !1836, i32 457, i32 21, i32 3, i32 359} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1836 = metadata !{i32 786443, metadata !34, metadata !1827, i32 457, i32 21, i32 1, i32 357} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1837 = metadata !{i32 459, i32 5, metadata !1838, null}
!1838 = metadata !{i32 786443, metadata !34, metadata !1827, i32 458, i32 33, i32 0, i32 172} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1839 = metadata !{i32 460, i32 9, metadata !1840, null}
!1840 = metadata !{i32 786443, metadata !34, metadata !1838, i32 460, i32 9, i32 0, i32 173} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1841 = metadata !{i32 461, i32 7, metadata !1840, null}
!1842 = metadata !{i32 462, i32 14, metadata !1843, null}
!1843 = metadata !{i32 786443, metadata !34, metadata !1840, i32 462, i32 14, i32 0, i32 174} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1844 = metadata !{i32 463, i32 7, metadata !1843, null}
!1845 = metadata !{i32 465, i32 7, metadata !1843, null}
!1846 = metadata !{i32 466, i32 3, metadata !1838, null}
!1847 = metadata !{i32 468, i32 5, metadata !1827, null}
!1848 = metadata !{i32 469, i32 3, metadata !468, null}
!1849 = metadata !{i32 786689, metadata !463, metadata !"g", metadata !35, i32 16777730, metadata !89, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [g] [line 514]
!1850 = metadata !{i32 514, i32 47, metadata !463, null}
!1851 = metadata !{i32 786689, metadata !463, metadata !"cl", metadata !35, i32 33554946, metadata !466, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cl] [line 514]
!1852 = metadata !{i32 514, i32 60, metadata !463, null}
!1853 = metadata !{i32 786688, metadata !463, metadata !"i", metadata !35, i32 515, metadata !75, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 515]
!1854 = metadata !{i32 515, i32 7, metadata !463, null}
!1855 = metadata !{i32 516, i32 3, metadata !1856, null}
!1856 = metadata !{i32 786443, metadata !34, metadata !1857, i32 516, i32 3, i32 0, i32 157} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1857 = metadata !{i32 786443, metadata !34, metadata !463, i32 516, i32 3, i32 0, i32 156} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1858 = metadata !{i32 516, i32 3, metadata !1859, null}
!1859 = metadata !{i32 786443, metadata !34, metadata !1860, i32 516, i32 3, i32 1, i32 360} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1860 = metadata !{i32 786443, metadata !34, metadata !1861, i32 516, i32 3, i32 0, i32 159} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1861 = metadata !{i32 786443, metadata !34, metadata !1856, i32 516, i32 3, i32 0, i32 158} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1862 = metadata !{i32 516, i32 3, metadata !1863, null}
!1863 = metadata !{i32 786443, metadata !34, metadata !1860, i32 516, i32 3, i32 2, i32 361} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1864 = metadata !{i32 516, i32 3, metadata !1865, null}
!1865 = metadata !{i32 786443, metadata !34, metadata !1866, i32 516, i32 3, i32 4, i32 363} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1866 = metadata !{i32 786443, metadata !34, metadata !1861, i32 516, i32 3, i32 3, i32 362} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1867 = metadata !{i32 517, i32 8, metadata !1868, null}
!1868 = metadata !{i32 786443, metadata !34, metadata !463, i32 517, i32 3, i32 0, i32 160} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1869 = metadata !{i32 517, i32 8, metadata !1870, null}
!1870 = metadata !{i32 786443, metadata !34, metadata !1871, i32 517, i32 8, i32 2, i32 368} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1871 = metadata !{i32 786443, metadata !34, metadata !1868, i32 517, i32 8, i32 1, i32 364} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1872 = metadata !{i32 786688, metadata !1873, metadata !"uv", metadata !35, i32 518, metadata !246, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [uv] [line 518]
!1873 = metadata !{i32 786443, metadata !34, metadata !1868, i32 517, i32 39, i32 0, i32 161} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1874 = metadata !{i32 518, i32 12, metadata !1873, null}
!1875 = metadata !{i32 518, i32 5, metadata !1873, null}
!1876 = metadata !{i32 519, i32 9, metadata !1877, null}
!1877 = metadata !{i32 786443, metadata !34, metadata !1873, i32 519, i32 9, i32 0, i32 162} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1878 = metadata !{i32 520, i32 11, metadata !1879, null}
!1879 = metadata !{i32 786443, metadata !34, metadata !1880, i32 520, i32 11, i32 0, i32 164} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1880 = metadata !{i32 786443, metadata !34, metadata !1877, i32 519, i32 21, i32 0, i32 163} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1881 = metadata !{i32 520, i32 11, metadata !1882, null}
!1882 = metadata !{i32 786443, metadata !34, metadata !1879, i32 520, i32 11, i32 1, i32 365} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1883 = metadata !{i32 521, i32 9, metadata !1879, null}
!1884 = metadata !{i32 523, i32 9, metadata !1885, null}
!1885 = metadata !{i32 786443, metadata !34, metadata !1886, i32 523, i32 9, i32 0, i32 166} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1886 = metadata !{i32 786443, metadata !34, metadata !1879, i32 523, i32 9, i32 0, i32 165} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1887 = metadata !{i32 523, i32 9, metadata !1888, null}
!1888 = metadata !{i32 786443, metadata !34, metadata !1885, i32 523, i32 9, i32 1, i32 366} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1889 = metadata !{i32 523, i32 9, metadata !1890, null}
!1890 = metadata !{i32 786443, metadata !34, metadata !1885, i32 523, i32 9, i32 2, i32 367} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1891 = metadata !{i32 524, i32 5, metadata !1880, null}
!1892 = metadata !{i32 525, i32 3, metadata !1873, null}
!1893 = metadata !{i32 517, i32 34, metadata !1868, null}
!1894 = metadata !{i32 526, i32 3, metadata !463, null}
!1895 = metadata !{i32 786689, metadata !448, metadata !"g", metadata !35, i32 16777717, metadata !89, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [g] [line 501]
!1896 = metadata !{i32 501, i32 47, metadata !448, null}
!1897 = metadata !{i32 786689, metadata !448, metadata !"cl", metadata !35, i32 33554933, metadata !451, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cl] [line 501]
!1898 = metadata !{i32 501, i32 60, metadata !448, null}
!1899 = metadata !{i32 786688, metadata !448, metadata !"i", metadata !35, i32 502, metadata !75, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 502]
!1900 = metadata !{i32 502, i32 7, metadata !448, null}
!1901 = metadata !{i32 503, i32 8, metadata !1902, null}
!1902 = metadata !{i32 786443, metadata !34, metadata !448, i32 503, i32 3, i32 0, i32 153} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1903 = metadata !{i32 503, i32 8, metadata !1904, null}
!1904 = metadata !{i32 786443, metadata !34, metadata !1905, i32 503, i32 8, i32 2, i32 375} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1905 = metadata !{i32 786443, metadata !34, metadata !1902, i32 503, i32 8, i32 1, i32 369} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1906 = metadata !{i32 504, i32 5, metadata !1907, null}
!1907 = metadata !{i32 786443, metadata !34, metadata !1908, i32 504, i32 5, i32 0, i32 155} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1908 = metadata !{i32 786443, metadata !34, metadata !1902, i32 504, i32 5, i32 0, i32 154} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1909 = metadata !{i32 504, i32 5, metadata !1910, null}
!1910 = metadata !{i32 786443, metadata !34, metadata !1907, i32 504, i32 5, i32 1, i32 370} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1911 = metadata !{i32 504, i32 5, metadata !1912, null}
!1912 = metadata !{i32 786443, metadata !34, metadata !1907, i32 504, i32 5, i32 3, i32 372} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1913 = metadata !{i32 504, i32 5, metadata !1914, null}
!1914 = metadata !{i32 786443, metadata !34, metadata !1915, i32 504, i32 5, i32 5, i32 374} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1915 = metadata !{i32 786443, metadata !34, metadata !1916, i32 504, i32 5, i32 4, i32 373} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1916 = metadata !{i32 786443, metadata !34, metadata !1908, i32 504, i32 5, i32 2, i32 371} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1917 = metadata !{i32 503, i32 34, metadata !1902, null}
!1918 = metadata !{i32 505, i32 3, metadata !448, null}
!1919 = metadata !{i32 786689, metadata !445, metadata !"g", metadata !35, i32 16777746, metadata !89, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [g] [line 530]
!1920 = metadata !{i32 530, i32 45, metadata !445, null}
!1921 = metadata !{i32 786689, metadata !445, metadata !"th", metadata !35, i32 33554962, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [th] [line 530]
!1922 = metadata !{i32 530, i32 59, metadata !445, null}
!1923 = metadata !{i32 786688, metadata !445, metadata !"o", metadata !35, i32 531, metadata !62, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [o] [line 531]
!1924 = metadata !{i32 531, i32 9, metadata !445, null}
!1925 = metadata !{i32 531, i32 3, metadata !445, null}
!1926 = metadata !{i32 532, i32 7, metadata !1927, null}
!1927 = metadata !{i32 786443, metadata !34, metadata !445, i32 532, i32 7, i32 0, i32 143} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1928 = metadata !{i32 533, i32 5, metadata !1927, null}
!1929 = metadata !{i32 536, i32 3, metadata !1930, null}
!1930 = metadata !{i32 786443, metadata !34, metadata !445, i32 536, i32 3, i32 0, i32 144} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1931 = metadata !{i32 536, i32 3, metadata !1932, null}
!1932 = metadata !{i32 786443, metadata !34, metadata !1933, i32 536, i32 3, i32 2, i32 382} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1933 = metadata !{i32 786443, metadata !34, metadata !1930, i32 536, i32 3, i32 1, i32 376} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1934 = metadata !{i32 537, i32 5, metadata !1935, null}
!1935 = metadata !{i32 786443, metadata !34, metadata !1936, i32 537, i32 5, i32 0, i32 146} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1936 = metadata !{i32 786443, metadata !34, metadata !1930, i32 537, i32 5, i32 0, i32 145} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1937 = metadata !{i32 537, i32 5, metadata !1938, null}
!1938 = metadata !{i32 786443, metadata !34, metadata !1935, i32 537, i32 5, i32 1, i32 377} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1939 = metadata !{i32 537, i32 5, metadata !1940, null}
!1940 = metadata !{i32 786443, metadata !34, metadata !1935, i32 537, i32 5, i32 3, i32 379} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1941 = metadata !{i32 537, i32 5, metadata !1942, null}
!1942 = metadata !{i32 786443, metadata !34, metadata !1943, i32 537, i32 5, i32 5, i32 381} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1943 = metadata !{i32 786443, metadata !34, metadata !1944, i32 537, i32 5, i32 4, i32 380} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1944 = metadata !{i32 786443, metadata !34, metadata !1936, i32 537, i32 5, i32 2, i32 378} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1945 = metadata !{i32 536, i32 23, metadata !1930, null}
!1946 = metadata !{i32 538, i32 7, metadata !1947, null}
!1947 = metadata !{i32 786443, metadata !34, metadata !445, i32 538, i32 7, i32 0, i32 147} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1948 = metadata !{i32 786688, metadata !1949, metadata !"lim", metadata !35, i32 539, metadata !62, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lim] [line 539]
!1949 = metadata !{i32 786443, metadata !34, metadata !1947, i32 538, i32 38, i32 0, i32 148} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1950 = metadata !{i32 539, i32 11, metadata !1949, null}
!1951 = metadata !{i32 539, i32 5, metadata !1949, null}
!1952 = metadata !{i32 540, i32 5, metadata !1953, null}
!1953 = metadata !{i32 786443, metadata !34, metadata !1949, i32 540, i32 5, i32 0, i32 149} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1954 = metadata !{i32 540, i32 5, metadata !1955, null}
!1955 = metadata !{i32 786443, metadata !34, metadata !1956, i32 540, i32 5, i32 2, i32 384} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1956 = metadata !{i32 786443, metadata !34, metadata !1953, i32 540, i32 5, i32 1, i32 383} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1957 = metadata !{i32 541, i32 7, metadata !1953, null}
!1958 = metadata !{i32 540, i32 21, metadata !1953, null}
!1959 = metadata !{i32 543, i32 9, metadata !1960, null}
!1960 = metadata !{i32 786443, metadata !34, metadata !1949, i32 543, i32 9, i32 0, i32 150} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1961 = metadata !{i32 543, i32 9, metadata !1962, null}
!1962 = metadata !{i32 786443, metadata !34, metadata !1960, i32 543, i32 9, i32 1, i32 385} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1963 = metadata !{i32 544, i32 7, metadata !1964, null}
!1964 = metadata !{i32 786443, metadata !34, metadata !1960, i32 543, i32 50, i32 0, i32 151} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1965 = metadata !{i32 545, i32 7, metadata !1964, null}
!1966 = metadata !{i32 546, i32 5, metadata !1964, null}
!1967 = metadata !{i32 547, i32 3, metadata !1949, null}
!1968 = metadata !{i32 548, i32 12, metadata !1969, null}
!1969 = metadata !{i32 786443, metadata !34, metadata !1947, i32 548, i32 12, i32 0, i32 152} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1970 = metadata !{i32 549, i32 5, metadata !1969, null}
!1971 = metadata !{i32 550, i32 3, metadata !445, null}
!1972 = metadata !{i32 552, i32 1, metadata !445, null}
!1973 = metadata !{i32 786689, metadata !384, metadata !"g", metadata !35, i32 16777695, metadata !89, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [g] [line 479]
!1974 = metadata !{i32 479, i32 41, metadata !384, null}
!1975 = metadata !{i32 786689, metadata !384, metadata !"f", metadata !35, i32 33554911, metadata !387, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [f] [line 479]
!1976 = metadata !{i32 479, i32 51, metadata !384, null}
!1977 = metadata !{i32 786688, metadata !384, metadata !"i", metadata !35, i32 480, metadata !75, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 480]
!1978 = metadata !{i32 480, i32 7, metadata !384, null}
!1979 = metadata !{i32 481, i32 7, metadata !1980, null}
!1980 = metadata !{i32 786443, metadata !34, metadata !384, i32 481, i32 7, i32 0, i32 120} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1981 = metadata !{i32 481, i32 7, metadata !1982, null}
!1982 = metadata !{i32 786443, metadata !34, metadata !1980, i32 481, i32 7, i32 1, i32 386} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1983 = metadata !{i32 482, i32 5, metadata !1980, null}
!1984 = metadata !{i32 483, i32 3, metadata !1985, null}
!1985 = metadata !{i32 786443, metadata !34, metadata !1986, i32 483, i32 3, i32 0, i32 122} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1986 = metadata !{i32 786443, metadata !34, metadata !384, i32 483, i32 3, i32 0, i32 121} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1987 = metadata !{i32 483, i32 3, metadata !1988, null}
!1988 = metadata !{i32 786443, metadata !34, metadata !1989, i32 483, i32 3, i32 1, i32 387} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1989 = metadata !{i32 786443, metadata !34, metadata !1990, i32 483, i32 3, i32 0, i32 124} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1990 = metadata !{i32 786443, metadata !34, metadata !1985, i32 483, i32 3, i32 0, i32 123} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1991 = metadata !{i32 483, i32 3, metadata !1992, null}
!1992 = metadata !{i32 786443, metadata !34, metadata !1989, i32 483, i32 3, i32 2, i32 388} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1993 = metadata !{i32 483, i32 3, metadata !1994, null}
!1994 = metadata !{i32 786443, metadata !34, metadata !1995, i32 483, i32 3, i32 4, i32 390} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1995 = metadata !{i32 786443, metadata !34, metadata !1990, i32 483, i32 3, i32 3, i32 389} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1996 = metadata !{i32 484, i32 8, metadata !1997, null}
!1997 = metadata !{i32 786443, metadata !34, metadata !384, i32 484, i32 3, i32 0, i32 125} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!1998 = metadata !{i32 484, i32 8, metadata !1999, null}
!1999 = metadata !{i32 786443, metadata !34, metadata !2000, i32 484, i32 8, i32 2, i32 397} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!2000 = metadata !{i32 786443, metadata !34, metadata !1997, i32 484, i32 8, i32 1, i32 391} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!2001 = metadata !{i32 485, i32 5, metadata !2002, null}
!2002 = metadata !{i32 786443, metadata !34, metadata !2003, i32 485, i32 5, i32 0, i32 127} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!2003 = metadata !{i32 786443, metadata !34, metadata !1997, i32 485, i32 5, i32 0, i32 126} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!2004 = metadata !{i32 485, i32 5, metadata !2005, null}
!2005 = metadata !{i32 786443, metadata !34, metadata !2002, i32 485, i32 5, i32 1, i32 392} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!2006 = metadata !{i32 485, i32 5, metadata !2007, null}
!2007 = metadata !{i32 786443, metadata !34, metadata !2002, i32 485, i32 5, i32 3, i32 394} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!2008 = metadata !{i32 485, i32 5, metadata !2009, null}
!2009 = metadata !{i32 786443, metadata !34, metadata !2010, i32 485, i32 5, i32 5, i32 396} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!2010 = metadata !{i32 786443, metadata !34, metadata !2011, i32 485, i32 5, i32 4, i32 395} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!2011 = metadata !{i32 786443, metadata !34, metadata !2003, i32 485, i32 5, i32 2, i32 393} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!2012 = metadata !{i32 484, i32 29, metadata !1997, null}
!2013 = metadata !{i32 486, i32 8, metadata !2014, null}
!2014 = metadata !{i32 786443, metadata !34, metadata !384, i32 486, i32 3, i32 0, i32 128} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!2015 = metadata !{i32 486, i32 8, metadata !2016, null}
!2016 = metadata !{i32 786443, metadata !34, metadata !2017, i32 486, i32 8, i32 2, i32 405} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!2017 = metadata !{i32 786443, metadata !34, metadata !2014, i32 486, i32 8, i32 1, i32 398} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!2018 = metadata !{i32 487, i32 5, metadata !2019, null}
!2019 = metadata !{i32 786443, metadata !34, metadata !2020, i32 487, i32 5, i32 0, i32 130} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!2020 = metadata !{i32 786443, metadata !34, metadata !2014, i32 487, i32 5, i32 0, i32 129} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!2021 = metadata !{i32 487, i32 5, metadata !2022, null}
!2022 = metadata !{i32 786443, metadata !34, metadata !2023, i32 487, i32 5, i32 1, i32 399} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!2023 = metadata !{i32 786443, metadata !34, metadata !2024, i32 487, i32 5, i32 0, i32 132} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!2024 = metadata !{i32 786443, metadata !34, metadata !2019, i32 487, i32 5, i32 0, i32 131} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!2025 = metadata !{i32 487, i32 5, metadata !2026, null}
!2026 = metadata !{i32 786443, metadata !34, metadata !2023, i32 487, i32 5, i32 3, i32 401} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!2027 = metadata !{i32 487, i32 5, metadata !2028, null}
!2028 = metadata !{i32 786443, metadata !34, metadata !2029, i32 487, i32 5, i32 5, i32 403} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!2029 = metadata !{i32 786443, metadata !34, metadata !2024, i32 487, i32 5, i32 4, i32 402} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!2030 = metadata !{i32 487, i32 5, metadata !2031, null}
!2031 = metadata !{i32 786443, metadata !34, metadata !2032, i32 487, i32 5, i32 6, i32 404} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!2032 = metadata !{i32 786443, metadata !34, metadata !2020, i32 487, i32 5, i32 2, i32 400} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!2033 = metadata !{i32 486, i32 36, metadata !2014, null}
!2034 = metadata !{i32 488, i32 8, metadata !2035, null}
!2035 = metadata !{i32 786443, metadata !34, metadata !384, i32 488, i32 3, i32 0, i32 133} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!2036 = metadata !{i32 488, i32 8, metadata !2037, null}
!2037 = metadata !{i32 786443, metadata !34, metadata !2038, i32 488, i32 8, i32 2, i32 413} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!2038 = metadata !{i32 786443, metadata !34, metadata !2035, i32 488, i32 8, i32 1, i32 406} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!2039 = metadata !{i32 489, i32 5, metadata !2040, null}
!2040 = metadata !{i32 786443, metadata !34, metadata !2041, i32 489, i32 5, i32 0, i32 135} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!2041 = metadata !{i32 786443, metadata !34, metadata !2035, i32 489, i32 5, i32 0, i32 134} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!2042 = metadata !{i32 489, i32 5, metadata !2043, null}
!2043 = metadata !{i32 786443, metadata !34, metadata !2044, i32 489, i32 5, i32 1, i32 407} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!2044 = metadata !{i32 786443, metadata !34, metadata !2045, i32 489, i32 5, i32 0, i32 137} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!2045 = metadata !{i32 786443, metadata !34, metadata !2040, i32 489, i32 5, i32 0, i32 136} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!2046 = metadata !{i32 489, i32 5, metadata !2047, null}
!2047 = metadata !{i32 786443, metadata !34, metadata !2044, i32 489, i32 5, i32 3, i32 409} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!2048 = metadata !{i32 489, i32 5, metadata !2049, null}
!2049 = metadata !{i32 786443, metadata !34, metadata !2050, i32 489, i32 5, i32 5, i32 411} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!2050 = metadata !{i32 786443, metadata !34, metadata !2045, i32 489, i32 5, i32 4, i32 410} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!2051 = metadata !{i32 489, i32 5, metadata !2052, null}
!2052 = metadata !{i32 786443, metadata !34, metadata !2053, i32 489, i32 5, i32 6, i32 412} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!2053 = metadata !{i32 786443, metadata !34, metadata !2041, i32 489, i32 5, i32 2, i32 408} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!2054 = metadata !{i32 488, i32 29, metadata !2035, null}
!2055 = metadata !{i32 490, i32 8, metadata !2056, null}
!2056 = metadata !{i32 786443, metadata !34, metadata !384, i32 490, i32 3, i32 0, i32 138} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!2057 = metadata !{i32 490, i32 8, metadata !2058, null}
!2058 = metadata !{i32 786443, metadata !34, metadata !2059, i32 490, i32 8, i32 2, i32 421} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!2059 = metadata !{i32 786443, metadata !34, metadata !2056, i32 490, i32 8, i32 1, i32 414} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!2060 = metadata !{i32 491, i32 5, metadata !2061, null}
!2061 = metadata !{i32 786443, metadata !34, metadata !2062, i32 491, i32 5, i32 0, i32 140} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!2062 = metadata !{i32 786443, metadata !34, metadata !2056, i32 491, i32 5, i32 0, i32 139} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!2063 = metadata !{i32 491, i32 5, metadata !2064, null}
!2064 = metadata !{i32 786443, metadata !34, metadata !2065, i32 491, i32 5, i32 1, i32 415} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!2065 = metadata !{i32 786443, metadata !34, metadata !2066, i32 491, i32 5, i32 0, i32 142} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!2066 = metadata !{i32 786443, metadata !34, metadata !2061, i32 491, i32 5, i32 0, i32 141} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!2067 = metadata !{i32 491, i32 5, metadata !2068, null}
!2068 = metadata !{i32 786443, metadata !34, metadata !2065, i32 491, i32 5, i32 3, i32 417} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!2069 = metadata !{i32 491, i32 5, metadata !2070, null}
!2070 = metadata !{i32 786443, metadata !34, metadata !2071, i32 491, i32 5, i32 5, i32 419} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!2071 = metadata !{i32 786443, metadata !34, metadata !2066, i32 491, i32 5, i32 4, i32 418} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!2072 = metadata !{i32 491, i32 5, metadata !2073, null}
!2073 = metadata !{i32 786443, metadata !34, metadata !2074, i32 491, i32 5, i32 6, i32 420} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!2074 = metadata !{i32 786443, metadata !34, metadata !2062, i32 491, i32 5, i32 2, i32 416} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!2075 = metadata !{i32 490, i32 35, metadata !2056, null}
!2076 = metadata !{i32 492, i32 3, metadata !384, null}
!2077 = metadata !{i32 786689, metadata !474, metadata !"g", metadata !35, i32 16777577, metadata !89, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [g] [line 361]
!2078 = metadata !{i32 361, i32 46, metadata !474, null}
!2079 = metadata !{i32 786689, metadata !474, metadata !"h", metadata !35, i32 33554793, metadata !313, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [h] [line 361]
!2080 = metadata !{i32 361, i32 56, metadata !474, null}
!2081 = metadata !{i32 786688, metadata !474, metadata !"n", metadata !35, i32 362, metadata !178, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 362]
!2082 = metadata !{i32 362, i32 9, metadata !474, null}
!2083 = metadata !{i32 786688, metadata !474, metadata !"limit", metadata !35, i32 362, metadata !178, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [limit] [line 362]
!2084 = metadata !{i32 362, i32 13, metadata !474, null}
!2085 = metadata !{i32 362, i32 3, metadata !474, null}
!2086 = metadata !{i32 786688, metadata !474, metadata !"hasclears", metadata !35, i32 365, metadata !75, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [hasclears] [line 365]
!2087 = metadata !{i32 365, i32 7, metadata !474, null}
!2088 = metadata !{i32 365, i32 3, metadata !474, null}
!2089 = metadata !{i32 366, i32 8, metadata !2090, null}
!2090 = metadata !{i32 786443, metadata !34, metadata !474, i32 366, i32 3, i32 0, i32 186} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!2091 = metadata !{i32 366, i32 8, metadata !2092, null}
!2092 = metadata !{i32 786443, metadata !34, metadata !2093, i32 366, i32 8, i32 2, i32 426} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!2093 = metadata !{i32 786443, metadata !34, metadata !2090, i32 366, i32 8, i32 1, i32 422} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!2094 = metadata !{i32 368, i32 9, metadata !2095, null}
!2095 = metadata !{i32 786443, metadata !34, metadata !2096, i32 368, i32 9, i32 0, i32 188} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!2096 = metadata !{i32 786443, metadata !34, metadata !2090, i32 366, i32 41, i32 0, i32 187} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!2097 = metadata !{i32 369, i32 7, metadata !2095, null}
!2098 = metadata !{i32 372, i32 7, metadata !2099, null}
!2099 = metadata !{i32 786443, metadata !34, metadata !2100, i32 372, i32 7, i32 0, i32 191} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!2100 = metadata !{i32 786443, metadata !34, metadata !2101, i32 372, i32 7, i32 0, i32 190} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!2101 = metadata !{i32 786443, metadata !34, metadata !2095, i32 370, i32 10, i32 0, i32 189} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!2102 = metadata !{i32 372, i32 7, metadata !2103, null}
!2103 = metadata !{i32 786443, metadata !34, metadata !2099, i32 372, i32 7, i32 1, i32 423} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!2104 = metadata !{i32 372, i32 7, metadata !2105, null}
!2105 = metadata !{i32 786443, metadata !34, metadata !2099, i32 372, i32 7, i32 2, i32 424} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!2106 = metadata !{i32 373, i32 11, metadata !2107, null}
!2107 = metadata !{i32 786443, metadata !34, metadata !2101, i32 373, i32 11, i32 0, i32 192} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!2108 = metadata !{i32 373, i32 25, metadata !2109, null}
!2109 = metadata !{i32 786443, metadata !34, metadata !2107, i32 373, i32 25, i32 1, i32 425} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!2110 = metadata !{i32 374, i32 9, metadata !2107, null}
!2111 = metadata !{i32 376, i32 3, metadata !2096, null}
!2112 = metadata !{i32 366, i32 36, metadata !2090, null}
!2113 = metadata !{i32 377, i32 7, metadata !2114, null}
!2114 = metadata !{i32 786443, metadata !34, metadata !474, i32 377, i32 7, i32 0, i32 193} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!2115 = metadata !{i32 378, i32 5, metadata !2114, null}
!2116 = metadata !{i32 379, i32 12, metadata !2117, null}
!2117 = metadata !{i32 786443, metadata !34, metadata !2114, i32 379, i32 12, i32 0, i32 194} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!2118 = metadata !{i32 380, i32 5, metadata !2117, null}
!2119 = metadata !{i32 381, i32 1, metadata !474, null}
!2120 = metadata !{i32 786689, metadata !471, metadata !"g", metadata !35, i32 16777649, metadata !89, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [g] [line 433]
!2121 = metadata !{i32 433, i32 48, metadata !471, null}
!2122 = metadata !{i32 786689, metadata !471, metadata !"h", metadata !35, i32 33554865, metadata !313, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [h] [line 433]
!2123 = metadata !{i32 433, i32 58, metadata !471, null}
!2124 = metadata !{i32 786688, metadata !471, metadata !"n", metadata !35, i32 434, metadata !178, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 434]
!2125 = metadata !{i32 434, i32 9, metadata !471, null}
!2126 = metadata !{i32 786688, metadata !471, metadata !"limit", metadata !35, i32 434, metadata !178, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [limit] [line 434]
!2127 = metadata !{i32 434, i32 13, metadata !471, null}
!2128 = metadata !{i32 434, i32 3, metadata !471, null}
!2129 = metadata !{i32 786688, metadata !471, metadata !"i", metadata !35, i32 435, metadata !100, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 435]
!2130 = metadata !{i32 435, i32 16, metadata !471, null}
!2131 = metadata !{i32 436, i32 8, metadata !2132, null}
!2132 = metadata !{i32 786443, metadata !34, metadata !471, i32 436, i32 3, i32 0, i32 175} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!2133 = metadata !{i32 436, i32 8, metadata !2134, null}
!2134 = metadata !{i32 786443, metadata !34, metadata !2135, i32 436, i32 8, i32 2, i32 433} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!2135 = metadata !{i32 786443, metadata !34, metadata !2132, i32 436, i32 8, i32 1, i32 427} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!2136 = metadata !{i32 437, i32 5, metadata !2137, null}
!2137 = metadata !{i32 786443, metadata !34, metadata !2138, i32 437, i32 5, i32 0, i32 177} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!2138 = metadata !{i32 786443, metadata !34, metadata !2132, i32 437, i32 5, i32 0, i32 176} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!2139 = metadata !{i32 437, i32 5, metadata !2140, null}
!2140 = metadata !{i32 786443, metadata !34, metadata !2137, i32 437, i32 5, i32 1, i32 428} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!2141 = metadata !{i32 437, i32 5, metadata !2142, null}
!2142 = metadata !{i32 786443, metadata !34, metadata !2137, i32 437, i32 5, i32 3, i32 430} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!2143 = metadata !{i32 437, i32 5, metadata !2144, null}
!2144 = metadata !{i32 786443, metadata !34, metadata !2145, i32 437, i32 5, i32 5, i32 432} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!2145 = metadata !{i32 786443, metadata !34, metadata !2146, i32 437, i32 5, i32 4, i32 431} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!2146 = metadata !{i32 786443, metadata !34, metadata !2138, i32 437, i32 5, i32 2, i32 429} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!2147 = metadata !{i32 436, i32 33, metadata !2132, null}
!2148 = metadata !{i32 438, i32 8, metadata !2149, null}
!2149 = metadata !{i32 786443, metadata !34, metadata !471, i32 438, i32 3, i32 0, i32 178} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!2150 = metadata !{i32 438, i32 8, metadata !2151, null}
!2151 = metadata !{i32 786443, metadata !34, metadata !2152, i32 438, i32 8, i32 2, i32 439} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!2152 = metadata !{i32 786443, metadata !34, metadata !2149, i32 438, i32 8, i32 1, i32 434} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!2153 = metadata !{i32 440, i32 9, metadata !2154, null}
!2154 = metadata !{i32 786443, metadata !34, metadata !2155, i32 440, i32 9, i32 0, i32 180} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!2155 = metadata !{i32 786443, metadata !34, metadata !2149, i32 438, i32 41, i32 0, i32 179} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!2156 = metadata !{i32 441, i32 7, metadata !2154, null}
!2157 = metadata !{i32 444, i32 7, metadata !2158, null}
!2158 = metadata !{i32 786443, metadata !34, metadata !2159, i32 444, i32 7, i32 0, i32 183} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!2159 = metadata !{i32 786443, metadata !34, metadata !2160, i32 444, i32 7, i32 0, i32 182} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!2160 = metadata !{i32 786443, metadata !34, metadata !2154, i32 442, i32 10, i32 0, i32 181} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!2161 = metadata !{i32 444, i32 7, metadata !2162, null}
!2162 = metadata !{i32 786443, metadata !34, metadata !2158, i32 444, i32 7, i32 1, i32 435} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!2163 = metadata !{i32 444, i32 7, metadata !2164, null}
!2164 = metadata !{i32 786443, metadata !34, metadata !2158, i32 444, i32 7, i32 2, i32 436} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!2165 = metadata !{i32 445, i32 7, metadata !2166, null}
!2166 = metadata !{i32 786443, metadata !34, metadata !2167, i32 445, i32 7, i32 0, i32 185} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!2167 = metadata !{i32 786443, metadata !34, metadata !2160, i32 445, i32 7, i32 0, i32 184} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!2168 = metadata !{i32 445, i32 7, metadata !2169, null}
!2169 = metadata !{i32 786443, metadata !34, metadata !2166, i32 445, i32 7, i32 1, i32 437} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!2170 = metadata !{i32 445, i32 7, metadata !2171, null}
!2171 = metadata !{i32 786443, metadata !34, metadata !2166, i32 445, i32 7, i32 2, i32 438} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!2172 = metadata !{i32 447, i32 3, metadata !2155, null}
!2173 = metadata !{i32 438, i32 36, metadata !2149, null}
!2174 = metadata !{i32 448, i32 1, metadata !471, null}
!2175 = metadata !{i32 786689, metadata !479, metadata !"L", metadata !35, i32 16777912, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 696]
!2176 = metadata !{i32 696, i32 33, metadata !479, null}
!2177 = metadata !{i32 786689, metadata !479, metadata !"o", metadata !35, i32 33555128, metadata !45, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [o] [line 696]
!2178 = metadata !{i32 696, i32 46, metadata !479, null}
!2179 = metadata !{i32 697, i32 3, metadata !479, null}
!2180 = metadata !{i32 698, i32 22, metadata !2181, null}
!2181 = metadata !{i32 786443, metadata !34, metadata !479, i32 697, i32 18, i32 0, i32 203} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!2182 = metadata !{i32 698, i32 51, metadata !2181, null}
!2183 = metadata !{i32 700, i32 7, metadata !2184, null}
!2184 = metadata !{i32 786443, metadata !34, metadata !2181, i32 699, i32 20, i32 0, i32 204} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!2185 = metadata !{i32 701, i32 7, metadata !2184, null}
!2186 = metadata !{i32 704, i32 7, metadata !2187, null}
!2187 = metadata !{i32 786443, metadata !34, metadata !2181, i32 703, i32 20, i32 0, i32 205} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!2188 = metadata !{i32 705, i32 7, metadata !2187, null}
!2189 = metadata !{i32 707, i32 22, metadata !2181, null}
!2190 = metadata !{i32 707, i32 46, metadata !2181, null}
!2191 = metadata !{i32 708, i32 23, metadata !2181, null}
!2192 = metadata !{i32 708, i32 54, metadata !2181, null}
!2193 = metadata !{i32 709, i32 25, metadata !2181, null}
!2194 = metadata !{i32 709, i32 66, metadata !2181, null}
!2195 = metadata !{i32 711, i32 7, metadata !2181, null}
!2196 = metadata !{i32 712, i32 7, metadata !2181, null}
!2197 = metadata !{i32 713, i32 7, metadata !2181, null}
!2198 = metadata !{i32 715, i32 7, metadata !2199, null}
!2199 = metadata !{i32 786443, metadata !34, metadata !2181, i32 714, i32 23, i32 0, i32 206} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!2200 = metadata !{i32 716, i32 7, metadata !2199, null}
!2201 = metadata !{i32 719, i32 3, metadata !2181, null}
!2202 = metadata !{i32 720, i32 1, metadata !479, null}
!2203 = metadata !{i32 786689, metadata !480, metadata !"L", metadata !35, i32 16777901, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 685]
!2204 = metadata !{i32 685, i32 38, metadata !480, null}
!2205 = metadata !{i32 786689, metadata !480, metadata !"cl", metadata !35, i32 33555117, metadata !466, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cl] [line 685]
!2206 = metadata !{i32 685, i32 51, metadata !480, null}
!2207 = metadata !{i32 786688, metadata !480, metadata !"i", metadata !35, i32 686, metadata !75, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 686]
!2208 = metadata !{i32 686, i32 7, metadata !480, null}
!2209 = metadata !{i32 687, i32 8, metadata !2210, null}
!2210 = metadata !{i32 786443, metadata !34, metadata !480, i32 687, i32 3, i32 0, i32 207} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!2211 = metadata !{i32 687, i32 8, metadata !2212, null}
!2212 = metadata !{i32 786443, metadata !34, metadata !2213, i32 687, i32 8, i32 2, i32 441} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!2213 = metadata !{i32 786443, metadata !34, metadata !2210, i32 687, i32 8, i32 1, i32 440} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!2214 = metadata !{i32 786688, metadata !2215, metadata !"uv", metadata !35, i32 688, metadata !246, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [uv] [line 688]
!2215 = metadata !{i32 786443, metadata !34, metadata !2210, i32 687, i32 39, i32 0, i32 208} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!2216 = metadata !{i32 688, i32 12, metadata !2215, null}
!2217 = metadata !{i32 688, i32 5, metadata !2215, null}
!2218 = metadata !{i32 689, i32 9, metadata !2219, null}
!2219 = metadata !{i32 786443, metadata !34, metadata !2215, i32 689, i32 9, i32 0, i32 209} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!2220 = metadata !{i32 690, i32 7, metadata !2219, null}
!2221 = metadata !{i32 691, i32 3, metadata !2215, null}
!2222 = metadata !{i32 687, i32 34, metadata !2210, null}
!2223 = metadata !{i32 692, i32 3, metadata !480, null}
!2224 = metadata !{i32 693, i32 1, metadata !480, null}
!2225 = metadata !{i32 786689, metadata !487, metadata !"p", metadata !35, i32 16778082, metadata !141, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [p] [line 866]
!2226 = metadata !{i32 866, i32 40, metadata !487, null}
!2227 = metadata !{i32 867, i32 3, metadata !487, null}
!2228 = metadata !{i32 867, i32 3, metadata !2229, null}
!2229 = metadata !{i32 786443, metadata !34, metadata !487, i32 867, i32 3, i32 1, i32 442} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lgc.c]
!2230 = metadata !{i32 868, i32 5, metadata !487, null}
!2231 = metadata !{i32 869, i32 3, metadata !487, null}
