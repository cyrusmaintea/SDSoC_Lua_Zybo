; ModuleID = 'C:/Users/DevolutionX/workspace/lua/src/ldebug.c'
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
%struct.GCObject = type { %struct.GCObject*, i8, i8 }
%struct.lua_longjmp = type opaque
%struct.CallInfo = type { %struct.lua_TValue*, %struct.lua_TValue*, %struct.CallInfo*, %struct.CallInfo*, %union.anon.0, i32, i16, i8 }
%union.anon.0 = type { %struct.anon.2 }
%struct.anon.2 = type { i32 (%struct.lua_State*, i32, i32)*, i32, i32 }
%struct.lua_Debug = type { i32, i8*, i8*, i8*, i8*, i32, i32, i32, i8, i8, i8, i8, [60 x i8], %struct.CallInfo* }
%struct.anon.1 = type { %struct.lua_TValue*, i32* }
%union.GCUnion = type { %union.Closure, [88 x i8] }
%union.Closure = type { %struct.CClosure }
%struct.CClosure = type { %struct.GCObject*, i8, i8, i8, %struct.GCObject*, i32 (%struct.lua_State*)*, [1 x %struct.lua_TValue] }
%struct.LClosure = type { %struct.GCObject*, i8, i8, i8, %struct.GCObject*, %struct.Proto*, [1 x %struct.UpVal*] }
%struct.Proto = type { %struct.GCObject*, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, %struct.lua_TValue*, i32*, %struct.Proto**, i32*, %struct.LocVar*, %struct.Upvaldesc*, %struct.LClosure*, %struct.TString*, %struct.GCObject* }
%struct.LocVar = type { %struct.TString*, i32, i32 }
%struct.Upvaldesc = type { %struct.TString*, i8, i8 }
%struct.__va_list = type { i8* }

@.str = private unnamed_addr constant [27 x i8] c"attempt to %s a %s value%s\00", align 1
@.str1 = private unnamed_addr constant [12 x i8] c"concatenate\00", align 1
@.str2 = private unnamed_addr constant [39 x i8] c"number%s has no integer representation\00", align 1
@.str3 = private unnamed_addr constant [33 x i8] c"attempt to compare two %s values\00", align 1
@.str4 = private unnamed_addr constant [30 x i8] c"attempt to compare %s with %s\00", align 1
@.str5 = private unnamed_addr constant [10 x i8] c"%s:%d: %s\00", align 1
@.str6 = private unnamed_addr constant [11 x i8] c" (%s '%s')\00", align 1
@.str7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str8 = private unnamed_addr constant [6 x i8] c"local\00", align 1
@.str9 = private unnamed_addr constant [5 x i8] c"_ENV\00", align 1
@.str10 = private unnamed_addr constant [7 x i8] c"global\00", align 1
@.str11 = private unnamed_addr constant [6 x i8] c"field\00", align 1
@.str12 = private unnamed_addr constant [8 x i8] c"upvalue\00", align 1
@.str13 = private unnamed_addr constant [9 x i8] c"constant\00", align 1
@.str14 = private unnamed_addr constant [7 x i8] c"method\00", align 1
@.str15 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@luaP_opmodes = external hidden constant [47 x i8]
@.str16 = private unnamed_addr constant [5 x i8] c"hook\00", align 1
@.str17 = private unnamed_addr constant [13 x i8] c"for iterator\00", align 1
@.str18 = private unnamed_addr constant [11 x i8] c"metamethod\00", align 1
@.str19 = private unnamed_addr constant [5 x i8] c"=[C]\00", align 1
@.str20 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str21 = private unnamed_addr constant [3 x i8] c"=?\00", align 1
@.str22 = private unnamed_addr constant [5 x i8] c"main\00", align 1
@.str23 = private unnamed_addr constant [4 x i8] c"Lua\00", align 1
@.str24 = private unnamed_addr constant [13 x i8] c"(*temporary)\00", align 1
@.str25 = private unnamed_addr constant [10 x i8] c"(*vararg)\00", align 1

; Function Attrs: nounwind
define void @lua_sethook(%struct.lua_State* %L, void (%struct.lua_State*, %struct.lua_Debug*)* %func, i32 %mask, i32 %count) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca void (%struct.lua_State*, %struct.lua_Debug*)*, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !677), !dbg !678
  store void (%struct.lua_State*, %struct.lua_Debug*)* %func, void (%struct.lua_State*, %struct.lua_Debug*)** %2, align 4
  call void @llvm.dbg.declare(metadata !{void (%struct.lua_State*, %struct.lua_Debug*)** %2}, metadata !679), !dbg !680
  store i32 %mask, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !681), !dbg !682
  store i32 %count, i32* %4, align 4
  call void @llvm.dbg.declare(metadata !{i32* %4}, metadata !683), !dbg !684
  %5 = load void (%struct.lua_State*, %struct.lua_Debug*)** %2, align 4, !dbg !685
  %6 = icmp eq void (%struct.lua_State*, %struct.lua_Debug*)* %5, null, !dbg !685
  br i1 %6, label %10, label %7, !dbg !685

; <label>:7                                       ; preds = %0
  %8 = load i32* %3, align 4, !dbg !687
  %9 = icmp eq i32 %8, 0, !dbg !687
  br i1 %9, label %10, label %11, !dbg !687

; <label>:10                                      ; preds = %7, %0
  store i32 0, i32* %3, align 4, !dbg !689
  store void (%struct.lua_State*, %struct.lua_Debug*)* null, void (%struct.lua_State*, %struct.lua_Debug*)** %2, align 4, !dbg !691
  br label %11, !dbg !692

; <label>:11                                      ; preds = %10, %7
  %12 = load %struct.lua_State** %1, align 4, !dbg !693
  %13 = getelementptr inbounds %struct.lua_State* %12, i32 0, i32 7, !dbg !693
  %14 = load %struct.CallInfo** %13, align 4, !dbg !693
  %15 = getelementptr inbounds %struct.CallInfo* %14, i32 0, i32 7, !dbg !693
  %16 = load i8* %15, align 1, !dbg !693
  %17 = zext i8 %16 to i32, !dbg !693
  %18 = and i32 %17, 2, !dbg !693
  %19 = icmp ne i32 %18, 0, !dbg !693
  br i1 %19, label %20, label %30, !dbg !693

; <label>:20                                      ; preds = %11
  %21 = load %struct.lua_State** %1, align 4, !dbg !695
  %22 = getelementptr inbounds %struct.lua_State* %21, i32 0, i32 7, !dbg !695
  %23 = load %struct.CallInfo** %22, align 4, !dbg !695
  %24 = getelementptr inbounds %struct.CallInfo* %23, i32 0, i32 4, !dbg !695
  %25 = bitcast %union.anon.0* %24 to %struct.anon.1*, !dbg !695
  %26 = getelementptr inbounds %struct.anon.1* %25, i32 0, i32 1, !dbg !695
  %27 = load i32** %26, align 4, !dbg !695
  %28 = load %struct.lua_State** %1, align 4, !dbg !695
  %29 = getelementptr inbounds %struct.lua_State* %28, i32 0, i32 8, !dbg !695
  store i32* %27, i32** %29, align 4, !dbg !695
  br label %30, !dbg !695

; <label>:30                                      ; preds = %20, %11
  %31 = load void (%struct.lua_State*, %struct.lua_Debug*)** %2, align 4, !dbg !696
  %32 = load %struct.lua_State** %1, align 4, !dbg !696
  %33 = getelementptr inbounds %struct.lua_State* %32, i32 0, i32 16, !dbg !696
  store volatile void (%struct.lua_State*, %struct.lua_Debug*)* %31, void (%struct.lua_State*, %struct.lua_Debug*)** %33, align 4, !dbg !696
  %34 = load i32* %4, align 4, !dbg !697
  %35 = load %struct.lua_State** %1, align 4, !dbg !697
  %36 = getelementptr inbounds %struct.lua_State* %35, i32 0, i32 19, !dbg !697
  store i32 %34, i32* %36, align 4, !dbg !697
  %37 = load %struct.lua_State** %1, align 4, !dbg !698
  %38 = getelementptr inbounds %struct.lua_State* %37, i32 0, i32 19, !dbg !698
  %39 = load i32* %38, align 4, !dbg !698
  %40 = load %struct.lua_State** %1, align 4, !dbg !698
  %41 = getelementptr inbounds %struct.lua_State* %40, i32 0, i32 20, !dbg !698
  store i32 %39, i32* %41, align 4, !dbg !698
  %42 = load i32* %3, align 4, !dbg !699
  %43 = trunc i32 %42 to i8, !dbg !699
  %44 = zext i8 %43 to i32, !dbg !699
  %45 = load %struct.lua_State** %1, align 4, !dbg !699
  %46 = getelementptr inbounds %struct.lua_State* %45, i32 0, i32 23, !dbg !699
  store i32 %44, i32* %46, align 4, !dbg !699
  ret void, !dbg !700
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind
define void (%struct.lua_State*, %struct.lua_Debug*)* @lua_gethook(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !701), !dbg !702
  %2 = load %struct.lua_State** %1, align 4, !dbg !703
  %3 = getelementptr inbounds %struct.lua_State* %2, i32 0, i32 16, !dbg !703
  %4 = load volatile void (%struct.lua_State*, %struct.lua_Debug*)** %3, align 4, !dbg !703
  ret void (%struct.lua_State*, %struct.lua_Debug*)* %4, !dbg !703
}

; Function Attrs: nounwind
define i32 @lua_gethookmask(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !704), !dbg !705
  %2 = load %struct.lua_State** %1, align 4, !dbg !706
  %3 = getelementptr inbounds %struct.lua_State* %2, i32 0, i32 23, !dbg !706
  %4 = load i32* %3, align 4, !dbg !706
  ret i32 %4, !dbg !706
}

; Function Attrs: nounwind
define i32 @lua_gethookcount(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !707), !dbg !708
  %2 = load %struct.lua_State** %1, align 4, !dbg !709
  %3 = getelementptr inbounds %struct.lua_State* %2, i32 0, i32 19, !dbg !709
  %4 = load i32* %3, align 4, !dbg !709
  ret i32 %4, !dbg !709
}

; Function Attrs: nounwind
define i32 @lua_getstack(%struct.lua_State* %L, i32 %level, %struct.lua_Debug* %ar) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.lua_State*, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.lua_Debug*, align 4
  %status = alloca i32, align 4
  %ci = alloca %struct.CallInfo*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %2}, metadata !710), !dbg !711
  store i32 %level, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !712), !dbg !713
  store %struct.lua_Debug* %ar, %struct.lua_Debug** %4, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_Debug** %4}, metadata !714), !dbg !715
  call void @llvm.dbg.declare(metadata !{i32* %status}, metadata !716), !dbg !717
  call void @llvm.dbg.declare(metadata !{%struct.CallInfo** %ci}, metadata !718), !dbg !719
  %5 = load i32* %3, align 4, !dbg !720
  %6 = icmp slt i32 %5, 0, !dbg !720
  br i1 %6, label %7, label %8, !dbg !720

; <label>:7                                       ; preds = %0
  store i32 0, i32* %1, !dbg !722
  br label %44, !dbg !722

; <label>:8                                       ; preds = %0
  %9 = load %struct.lua_State** %2, align 4, !dbg !724
  %10 = getelementptr inbounds %struct.lua_State* %9, i32 0, i32 7, !dbg !724
  %11 = load %struct.CallInfo** %10, align 4, !dbg !724
  store %struct.CallInfo* %11, %struct.CallInfo** %ci, align 4, !dbg !724
  br label %12, !dbg !724

; <label>:12                                      ; preds = %25, %8
  %13 = load i32* %3, align 4, !dbg !726
  %14 = icmp sgt i32 %13, 0, !dbg !726
  br i1 %14, label %15, label %20, !dbg !726

; <label>:15                                      ; preds = %12
  %16 = load %struct.CallInfo** %ci, align 4, !dbg !729
  %17 = load %struct.lua_State** %2, align 4, !dbg !729
  %18 = getelementptr inbounds %struct.lua_State* %17, i32 0, i32 15, !dbg !729
  %19 = icmp ne %struct.CallInfo* %16, %18, !dbg !729
  br label %20

; <label>:20                                      ; preds = %15, %12
  %21 = phi i1 [ false, %12 ], [ %19, %15 ]
  br i1 %21, label %22, label %29, !dbg !731

; <label>:22                                      ; preds = %20
  %23 = load i32* %3, align 4, !dbg !733
  %24 = add nsw i32 %23, -1, !dbg !733
  store i32 %24, i32* %3, align 4, !dbg !733
  br label %25, !dbg !733

; <label>:25                                      ; preds = %22
  %26 = load %struct.CallInfo** %ci, align 4, !dbg !734
  %27 = getelementptr inbounds %struct.CallInfo* %26, i32 0, i32 2, !dbg !734
  %28 = load %struct.CallInfo** %27, align 4, !dbg !734
  store %struct.CallInfo* %28, %struct.CallInfo** %ci, align 4, !dbg !734
  br label %12, !dbg !734

; <label>:29                                      ; preds = %20
  %30 = load i32* %3, align 4, !dbg !735
  %31 = icmp eq i32 %30, 0, !dbg !735
  br i1 %31, label %32, label %41, !dbg !735

; <label>:32                                      ; preds = %29
  %33 = load %struct.CallInfo** %ci, align 4, !dbg !737
  %34 = load %struct.lua_State** %2, align 4, !dbg !737
  %35 = getelementptr inbounds %struct.lua_State* %34, i32 0, i32 15, !dbg !737
  %36 = icmp ne %struct.CallInfo* %33, %35, !dbg !737
  br i1 %36, label %37, label %41, !dbg !737

; <label>:37                                      ; preds = %32
  store i32 1, i32* %status, align 4, !dbg !739
  %38 = load %struct.CallInfo** %ci, align 4, !dbg !741
  %39 = load %struct.lua_Debug** %4, align 4, !dbg !741
  %40 = getelementptr inbounds %struct.lua_Debug* %39, i32 0, i32 13, !dbg !741
  store %struct.CallInfo* %38, %struct.CallInfo** %40, align 4, !dbg !741
  br label %42, !dbg !742

; <label>:41                                      ; preds = %32, %29
  store i32 0, i32* %status, align 4, !dbg !743
  br label %42

; <label>:42                                      ; preds = %41, %37
  %43 = load i32* %status, align 4, !dbg !744
  store i32 %43, i32* %1, !dbg !744
  br label %44, !dbg !744

; <label>:44                                      ; preds = %42, %7
  %45 = load i32* %1, !dbg !745
  ret i32 %45, !dbg !745
}

; Function Attrs: nounwind
define i8* @lua_getlocal(%struct.lua_State* %L, %struct.lua_Debug* %ar, i32 %n) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca %struct.lua_Debug*, align 4
  %3 = alloca i32, align 4
  %name = alloca i8*, align 4
  %pos = alloca %struct.lua_TValue*, align 4
  %io1 = alloca %struct.lua_TValue*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !746), !dbg !747
  store %struct.lua_Debug* %ar, %struct.lua_Debug** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_Debug** %2}, metadata !748), !dbg !749
  store i32 %n, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !750), !dbg !751
  call void @llvm.dbg.declare(metadata !{i8** %name}, metadata !752), !dbg !753
  %4 = load %struct.lua_State** %1, align 4, !dbg !754
  call void @swapextra(%struct.lua_State* %4), !dbg !754
  %5 = load %struct.lua_Debug** %2, align 4, !dbg !755
  %6 = icmp eq %struct.lua_Debug* %5, null, !dbg !755
  br i1 %6, label %7, label %32, !dbg !755

; <label>:7                                       ; preds = %0
  %8 = load %struct.lua_State** %1, align 4, !dbg !757
  %9 = getelementptr inbounds %struct.lua_State* %8, i32 0, i32 5, !dbg !757
  %10 = load %struct.lua_TValue** %9, align 4, !dbg !757
  %11 = getelementptr inbounds %struct.lua_TValue* %10, i32 -1, !dbg !757
  %12 = getelementptr inbounds %struct.lua_TValue* %11, i32 0, i32 1, !dbg !757
  %13 = load i32* %12, align 4, !dbg !757
  %14 = icmp eq i32 %13, 70, !dbg !757
  br i1 %14, label %16, label %15, !dbg !757

; <label>:15                                      ; preds = %7
  store i8* null, i8** %name, align 4, !dbg !760
  br label %31, !dbg !760

; <label>:16                                      ; preds = %7
  %17 = load %struct.lua_State** %1, align 4, !dbg !761
  %18 = getelementptr inbounds %struct.lua_State* %17, i32 0, i32 5, !dbg !761
  %19 = load %struct.lua_TValue** %18, align 4, !dbg !761
  %20 = getelementptr inbounds %struct.lua_TValue* %19, i32 -1, !dbg !761
  %21 = getelementptr inbounds %struct.lua_TValue* %20, i32 0, i32 0, !dbg !761
  %22 = bitcast %union.Value* %21 to %struct.GCObject**, !dbg !761
  %23 = load %struct.GCObject** %22, align 4, !dbg !761
  %24 = bitcast %struct.GCObject* %23 to %union.GCUnion*, !dbg !761
  %25 = bitcast %union.GCUnion* %24 to %union.Closure*, !dbg !761
  %26 = bitcast %union.Closure* %25 to %struct.LClosure*, !dbg !761
  %27 = getelementptr inbounds %struct.LClosure* %26, i32 0, i32 5, !dbg !761
  %28 = load %struct.Proto** %27, align 4, !dbg !761
  %29 = load i32* %3, align 4, !dbg !761
  %30 = call i8* @luaF_getlocalname(%struct.Proto* %28, i32 %29, i32 0), !dbg !761
  store i8* %30, i8** %name, align 4, !dbg !761
  br label %31

; <label>:31                                      ; preds = %16, %15
  br label %55, !dbg !762

; <label>:32                                      ; preds = %0
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %pos}, metadata !763), !dbg !765
  store %struct.lua_TValue* null, %struct.lua_TValue** %pos, align 4, !dbg !766
  %33 = load %struct.lua_State** %1, align 4, !dbg !767
  %34 = load %struct.lua_Debug** %2, align 4, !dbg !767
  %35 = getelementptr inbounds %struct.lua_Debug* %34, i32 0, i32 13, !dbg !767
  %36 = load %struct.CallInfo** %35, align 4, !dbg !767
  %37 = load i32* %3, align 4, !dbg !767
  %38 = call i8* @findlocal(%struct.lua_State* %33, %struct.CallInfo* %36, i32 %37, %struct.lua_TValue** %pos), !dbg !767
  store i8* %38, i8** %name, align 4, !dbg !767
  %39 = load i8** %name, align 4, !dbg !768
  %40 = icmp ne i8* %39, null, !dbg !768
  br i1 %40, label %41, label %54, !dbg !768

; <label>:41                                      ; preds = %32
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %io1}, metadata !770), !dbg !773
  %42 = load %struct.lua_State** %1, align 4, !dbg !773
  %43 = getelementptr inbounds %struct.lua_State* %42, i32 0, i32 5, !dbg !773
  %44 = load %struct.lua_TValue** %43, align 4, !dbg !773
  store %struct.lua_TValue* %44, %struct.lua_TValue** %io1, align 4, !dbg !773
  %45 = load %struct.lua_TValue** %io1, align 4, !dbg !773
  %46 = load %struct.lua_TValue** %pos, align 4, !dbg !773
  %47 = bitcast %struct.lua_TValue* %45 to i8*, !dbg !773
  %48 = bitcast %struct.lua_TValue* %46 to i8*, !dbg !773
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %47, i8* %48, i32 16, i32 8, i1 false), !dbg !773
  %49 = load %struct.lua_State** %1, align 4, !dbg !773
  %50 = load %struct.lua_State** %1, align 4, !dbg !774
  %51 = getelementptr inbounds %struct.lua_State* %50, i32 0, i32 5, !dbg !774
  %52 = load %struct.lua_TValue** %51, align 4, !dbg !774
  %53 = getelementptr inbounds %struct.lua_TValue* %52, i32 1, !dbg !774
  store %struct.lua_TValue* %53, %struct.lua_TValue** %51, align 4, !dbg !774
  br label %54, !dbg !776

; <label>:54                                      ; preds = %41, %32
  br label %55

; <label>:55                                      ; preds = %54, %31
  %56 = load %struct.lua_State** %1, align 4, !dbg !777
  call void @swapextra(%struct.lua_State* %56), !dbg !777
  %57 = load i8** %name, align 4, !dbg !778
  ret i8* %57, !dbg !778
}

; Function Attrs: nounwind
define internal void @swapextra(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %ci = alloca %struct.CallInfo*, align 4
  %temp = alloca %struct.lua_TValue*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !779), !dbg !780
  %2 = load %struct.lua_State** %1, align 4, !dbg !781
  %3 = getelementptr inbounds %struct.lua_State* %2, i32 0, i32 4, !dbg !781
  %4 = load i8* %3, align 1, !dbg !781
  %5 = zext i8 %4 to i32, !dbg !781
  %6 = icmp eq i32 %5, 1, !dbg !781
  br i1 %6, label %7, label %36, !dbg !781

; <label>:7                                       ; preds = %0
  call void @llvm.dbg.declare(metadata !{%struct.CallInfo** %ci}, metadata !783), !dbg !785
  %8 = load %struct.lua_State** %1, align 4, !dbg !786
  %9 = getelementptr inbounds %struct.lua_State* %8, i32 0, i32 7, !dbg !786
  %10 = load %struct.CallInfo** %9, align 4, !dbg !786
  store %struct.CallInfo* %10, %struct.CallInfo** %ci, align 4, !dbg !786
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %temp}, metadata !787), !dbg !788
  %11 = load %struct.CallInfo** %ci, align 4, !dbg !789
  %12 = getelementptr inbounds %struct.CallInfo* %11, i32 0, i32 0, !dbg !789
  %13 = load %struct.lua_TValue** %12, align 4, !dbg !789
  store %struct.lua_TValue* %13, %struct.lua_TValue** %temp, align 4, !dbg !789
  %14 = load %struct.lua_State** %1, align 4, !dbg !790
  %15 = getelementptr inbounds %struct.lua_State* %14, i32 0, i32 10, !dbg !790
  %16 = load %struct.lua_TValue** %15, align 4, !dbg !790
  %17 = bitcast %struct.lua_TValue* %16 to i8*, !dbg !790
  %18 = load %struct.CallInfo** %ci, align 4, !dbg !790
  %19 = getelementptr inbounds %struct.CallInfo* %18, i32 0, i32 5, !dbg !790
  %20 = load i32* %19, align 4, !dbg !790
  %21 = getelementptr inbounds i8* %17, i32 %20, !dbg !790
  %22 = bitcast i8* %21 to %struct.lua_TValue*, !dbg !790
  %23 = load %struct.CallInfo** %ci, align 4, !dbg !790
  %24 = getelementptr inbounds %struct.CallInfo* %23, i32 0, i32 0, !dbg !790
  store %struct.lua_TValue* %22, %struct.lua_TValue** %24, align 4, !dbg !790
  %25 = load %struct.lua_TValue** %temp, align 4, !dbg !791
  %26 = bitcast %struct.lua_TValue* %25 to i8*, !dbg !791
  %27 = load %struct.lua_State** %1, align 4, !dbg !791
  %28 = getelementptr inbounds %struct.lua_State* %27, i32 0, i32 10, !dbg !791
  %29 = load %struct.lua_TValue** %28, align 4, !dbg !791
  %30 = bitcast %struct.lua_TValue* %29 to i8*, !dbg !791
  %31 = ptrtoint i8* %26 to i32, !dbg !791
  %32 = ptrtoint i8* %30 to i32, !dbg !791
  %33 = sub i32 %31, %32, !dbg !791
  %34 = load %struct.CallInfo** %ci, align 4, !dbg !791
  %35 = getelementptr inbounds %struct.CallInfo* %34, i32 0, i32 5, !dbg !791
  store i32 %33, i32* %35, align 4, !dbg !791
  br label %36, !dbg !792

; <label>:36                                      ; preds = %7, %0
  ret void, !dbg !793
}

declare hidden i8* @luaF_getlocalname(%struct.Proto*, i32, i32) #2

; Function Attrs: nounwind
define internal i8* @findlocal(%struct.lua_State* %L, %struct.CallInfo* %ci, i32 %n, %struct.lua_TValue** %pos) #0 {
  %1 = alloca i8*, align 4
  %2 = alloca %struct.lua_State*, align 4
  %3 = alloca %struct.CallInfo*, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.lua_TValue**, align 4
  %name = alloca i8*, align 4
  %base = alloca %struct.lua_TValue*, align 4
  %limit = alloca %struct.lua_TValue*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %2}, metadata !794), !dbg !795
  store %struct.CallInfo* %ci, %struct.CallInfo** %3, align 4
  call void @llvm.dbg.declare(metadata !{%struct.CallInfo** %3}, metadata !796), !dbg !797
  store i32 %n, i32* %4, align 4
  call void @llvm.dbg.declare(metadata !{i32* %4}, metadata !798), !dbg !799
  store %struct.lua_TValue** %pos, %struct.lua_TValue*** %5, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue*** %5}, metadata !800), !dbg !801
  call void @llvm.dbg.declare(metadata !{i8** %name}, metadata !802), !dbg !803
  store i8* null, i8** %name, align 4, !dbg !804
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %base}, metadata !805), !dbg !806
  %6 = load %struct.CallInfo** %3, align 4, !dbg !807
  %7 = getelementptr inbounds %struct.CallInfo* %6, i32 0, i32 7, !dbg !807
  %8 = load i8* %7, align 1, !dbg !807
  %9 = zext i8 %8 to i32, !dbg !807
  %10 = and i32 %9, 2, !dbg !807
  %11 = icmp ne i32 %10, 0, !dbg !807
  br i1 %11, label %12, label %43, !dbg !807

; <label>:12                                      ; preds = %0
  %13 = load i32* %4, align 4, !dbg !809
  %14 = icmp slt i32 %13, 0, !dbg !809
  br i1 %14, label %15, label %21, !dbg !809

; <label>:15                                      ; preds = %12
  %16 = load %struct.CallInfo** %3, align 4, !dbg !812
  %17 = load i32* %4, align 4, !dbg !812
  %18 = sub nsw i32 0, %17, !dbg !812
  %19 = load %struct.lua_TValue*** %5, align 4, !dbg !812
  %20 = call i8* @findvararg(%struct.CallInfo* %16, i32 %18, %struct.lua_TValue** %19), !dbg !812
  store i8* %20, i8** %1, !dbg !812
  br label %90, !dbg !812

; <label>:21                                      ; preds = %12
  %22 = load %struct.CallInfo** %3, align 4, !dbg !813
  %23 = getelementptr inbounds %struct.CallInfo* %22, i32 0, i32 4, !dbg !813
  %24 = bitcast %union.anon.0* %23 to %struct.anon.1*, !dbg !813
  %25 = getelementptr inbounds %struct.anon.1* %24, i32 0, i32 0, !dbg !813
  %26 = load %struct.lua_TValue** %25, align 4, !dbg !813
  store %struct.lua_TValue* %26, %struct.lua_TValue** %base, align 4, !dbg !813
  %27 = load %struct.CallInfo** %3, align 4, !dbg !815
  %28 = getelementptr inbounds %struct.CallInfo* %27, i32 0, i32 0, !dbg !815
  %29 = load %struct.lua_TValue** %28, align 4, !dbg !815
  %30 = getelementptr inbounds %struct.lua_TValue* %29, i32 0, i32 0, !dbg !815
  %31 = bitcast %union.Value* %30 to %struct.GCObject**, !dbg !815
  %32 = load %struct.GCObject** %31, align 4, !dbg !815
  %33 = bitcast %struct.GCObject* %32 to %union.GCUnion*, !dbg !815
  %34 = bitcast %union.GCUnion* %33 to %union.Closure*, !dbg !815
  %35 = bitcast %union.Closure* %34 to %struct.LClosure*, !dbg !815
  %36 = getelementptr inbounds %struct.LClosure* %35, i32 0, i32 5, !dbg !815
  %37 = load %struct.Proto** %36, align 4, !dbg !815
  %38 = load i32* %4, align 4, !dbg !815
  %39 = load %struct.CallInfo** %3, align 4, !dbg !816
  %40 = call i32 @currentpc(%struct.CallInfo* %39), !dbg !816
  %41 = call i8* @luaF_getlocalname(%struct.Proto* %37, i32 %38, i32 %40), !dbg !815
  store i8* %41, i8** %name, align 4, !dbg !815
  br label %42

; <label>:42                                      ; preds = %21
  br label %48, !dbg !817

; <label>:43                                      ; preds = %0
  %44 = load %struct.CallInfo** %3, align 4, !dbg !818
  %45 = getelementptr inbounds %struct.CallInfo* %44, i32 0, i32 0, !dbg !818
  %46 = load %struct.lua_TValue** %45, align 4, !dbg !818
  %47 = getelementptr inbounds %struct.lua_TValue* %46, i32 1, !dbg !818
  store %struct.lua_TValue* %47, %struct.lua_TValue** %base, align 4, !dbg !818
  br label %48

; <label>:48                                      ; preds = %43, %42
  %49 = load i8** %name, align 4, !dbg !819
  %50 = icmp eq i8* %49, null, !dbg !819
  br i1 %50, label %51, label %83, !dbg !819

; <label>:51                                      ; preds = %48
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %limit}, metadata !821), !dbg !823
  %52 = load %struct.CallInfo** %3, align 4, !dbg !824
  %53 = load %struct.lua_State** %2, align 4, !dbg !824
  %54 = getelementptr inbounds %struct.lua_State* %53, i32 0, i32 7, !dbg !824
  %55 = load %struct.CallInfo** %54, align 4, !dbg !824
  %56 = icmp eq %struct.CallInfo* %52, %55, !dbg !824
  br i1 %56, label %57, label %61, !dbg !824

; <label>:57                                      ; preds = %51
  %58 = load %struct.lua_State** %2, align 4, !dbg !825
  %59 = getelementptr inbounds %struct.lua_State* %58, i32 0, i32 5, !dbg !825
  %60 = load %struct.lua_TValue** %59, align 4, !dbg !825
  br label %67, !dbg !825

; <label>:61                                      ; preds = %51
  %62 = load %struct.CallInfo** %3, align 4, !dbg !827
  %63 = getelementptr inbounds %struct.CallInfo* %62, i32 0, i32 3, !dbg !827
  %64 = load %struct.CallInfo** %63, align 4, !dbg !827
  %65 = getelementptr inbounds %struct.CallInfo* %64, i32 0, i32 0, !dbg !827
  %66 = load %struct.lua_TValue** %65, align 4, !dbg !827
  br label %67, !dbg !827

; <label>:67                                      ; preds = %61, %57
  %68 = phi %struct.lua_TValue* [ %60, %57 ], [ %66, %61 ], !dbg !824
  store %struct.lua_TValue* %68, %struct.lua_TValue** %limit, align 4, !dbg !829
  %69 = load %struct.lua_TValue** %limit, align 4, !dbg !832
  %70 = load %struct.lua_TValue** %base, align 4, !dbg !832
  %71 = ptrtoint %struct.lua_TValue* %69 to i32, !dbg !832
  %72 = ptrtoint %struct.lua_TValue* %70 to i32, !dbg !832
  %73 = sub i32 %71, %72, !dbg !832
  %74 = sdiv exact i32 %73, 16, !dbg !832
  %75 = load i32* %4, align 4, !dbg !832
  %76 = icmp sge i32 %74, %75, !dbg !832
  br i1 %76, label %77, label %81, !dbg !832

; <label>:77                                      ; preds = %67
  %78 = load i32* %4, align 4, !dbg !834
  %79 = icmp sgt i32 %78, 0, !dbg !834
  br i1 %79, label %80, label %81, !dbg !834

; <label>:80                                      ; preds = %77
  store i8* getelementptr inbounds ([13 x i8]* @.str24, i32 0, i32 0), i8** %name, align 4, !dbg !836
  br label %82, !dbg !836

; <label>:81                                      ; preds = %77, %67
  store i8* null, i8** %1, !dbg !837
  br label %90, !dbg !837

; <label>:82                                      ; preds = %80
  br label %83, !dbg !838

; <label>:83                                      ; preds = %82, %48
  %84 = load %struct.lua_TValue** %base, align 4, !dbg !839
  %85 = load i32* %4, align 4, !dbg !839
  %86 = sub nsw i32 %85, 1, !dbg !839
  %87 = getelementptr inbounds %struct.lua_TValue* %84, i32 %86, !dbg !839
  %88 = load %struct.lua_TValue*** %5, align 4, !dbg !839
  store %struct.lua_TValue* %87, %struct.lua_TValue** %88, align 4, !dbg !839
  %89 = load i8** %name, align 4, !dbg !840
  store i8* %89, i8** %1, !dbg !840
  br label %90, !dbg !840

; <label>:90                                      ; preds = %83, %81, %15
  %91 = load i8** %1, !dbg !841
  ret i8* %91, !dbg !841
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture, i8* nocapture readonly, i32, i32, i1) #3

; Function Attrs: nounwind
define i8* @lua_setlocal(%struct.lua_State* %L, %struct.lua_Debug* %ar, i32 %n) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca %struct.lua_Debug*, align 4
  %3 = alloca i32, align 4
  %pos = alloca %struct.lua_TValue*, align 4
  %name = alloca i8*, align 4
  %io1 = alloca %struct.lua_TValue*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !842), !dbg !843
  store %struct.lua_Debug* %ar, %struct.lua_Debug** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_Debug** %2}, metadata !844), !dbg !845
  store i32 %n, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !846), !dbg !847
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %pos}, metadata !848), !dbg !849
  store %struct.lua_TValue* null, %struct.lua_TValue** %pos, align 4, !dbg !850
  call void @llvm.dbg.declare(metadata !{i8** %name}, metadata !851), !dbg !852
  %4 = load %struct.lua_State** %1, align 4, !dbg !853
  call void @swapextra(%struct.lua_State* %4), !dbg !853
  %5 = load %struct.lua_State** %1, align 4, !dbg !854
  %6 = load %struct.lua_Debug** %2, align 4, !dbg !854
  %7 = getelementptr inbounds %struct.lua_Debug* %6, i32 0, i32 13, !dbg !854
  %8 = load %struct.CallInfo** %7, align 4, !dbg !854
  %9 = load i32* %3, align 4, !dbg !854
  %10 = call i8* @findlocal(%struct.lua_State* %5, %struct.CallInfo* %8, i32 %9, %struct.lua_TValue** %pos), !dbg !854
  store i8* %10, i8** %name, align 4, !dbg !854
  %11 = load i8** %name, align 4, !dbg !855
  %12 = icmp ne i8* %11, null, !dbg !855
  br i1 %12, label %13, label %27, !dbg !855

; <label>:13                                      ; preds = %0
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %io1}, metadata !857), !dbg !860
  %14 = load %struct.lua_TValue** %pos, align 4, !dbg !860
  store %struct.lua_TValue* %14, %struct.lua_TValue** %io1, align 4, !dbg !860
  %15 = load %struct.lua_TValue** %io1, align 4, !dbg !860
  %16 = load %struct.lua_State** %1, align 4, !dbg !860
  %17 = getelementptr inbounds %struct.lua_State* %16, i32 0, i32 5, !dbg !860
  %18 = load %struct.lua_TValue** %17, align 4, !dbg !860
  %19 = getelementptr inbounds %struct.lua_TValue* %18, i32 -1, !dbg !860
  %20 = bitcast %struct.lua_TValue* %15 to i8*, !dbg !860
  %21 = bitcast %struct.lua_TValue* %19 to i8*, !dbg !860
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %20, i8* %21, i32 16, i32 8, i1 false), !dbg !860
  %22 = load %struct.lua_State** %1, align 4, !dbg !860
  %23 = load %struct.lua_State** %1, align 4, !dbg !861
  %24 = getelementptr inbounds %struct.lua_State* %23, i32 0, i32 5, !dbg !861
  %25 = load %struct.lua_TValue** %24, align 4, !dbg !861
  %26 = getelementptr inbounds %struct.lua_TValue* %25, i32 -1, !dbg !861
  store %struct.lua_TValue* %26, %struct.lua_TValue** %24, align 4, !dbg !861
  br label %27, !dbg !862

; <label>:27                                      ; preds = %13, %0
  %28 = load %struct.lua_State** %1, align 4, !dbg !863
  call void @swapextra(%struct.lua_State* %28), !dbg !863
  %29 = load i8** %name, align 4, !dbg !864
  ret i8* %29, !dbg !864
}

; Function Attrs: nounwind
define i32 @lua_getinfo(%struct.lua_State* %L, i8* %what, %struct.lua_Debug* %ar) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca i8*, align 4
  %3 = alloca %struct.lua_Debug*, align 4
  %status = alloca i32, align 4
  %cl = alloca %union.Closure*, align 4
  %ci = alloca %struct.CallInfo*, align 4
  %func = alloca %struct.lua_TValue*, align 4
  %io1 = alloca %struct.lua_TValue*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !865), !dbg !866
  store i8* %what, i8** %2, align 4
  call void @llvm.dbg.declare(metadata !{i8** %2}, metadata !867), !dbg !868
  store %struct.lua_Debug* %ar, %struct.lua_Debug** %3, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_Debug** %3}, metadata !869), !dbg !870
  call void @llvm.dbg.declare(metadata !{i32* %status}, metadata !871), !dbg !872
  call void @llvm.dbg.declare(metadata !{%union.Closure** %cl}, metadata !873), !dbg !874
  call void @llvm.dbg.declare(metadata !{%struct.CallInfo** %ci}, metadata !875), !dbg !876
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %func}, metadata !877), !dbg !878
  %4 = load %struct.lua_State** %1, align 4, !dbg !879
  call void @swapextra(%struct.lua_State* %4), !dbg !879
  %5 = load i8** %2, align 4, !dbg !880
  %6 = load i8* %5, align 1, !dbg !880
  %7 = zext i8 %6 to i32, !dbg !880
  %8 = icmp eq i32 %7, 62, !dbg !880
  br i1 %8, label %9, label %20, !dbg !880

; <label>:9                                       ; preds = %0
  store %struct.CallInfo* null, %struct.CallInfo** %ci, align 4, !dbg !882
  %10 = load %struct.lua_State** %1, align 4, !dbg !884
  %11 = getelementptr inbounds %struct.lua_State* %10, i32 0, i32 5, !dbg !884
  %12 = load %struct.lua_TValue** %11, align 4, !dbg !884
  %13 = getelementptr inbounds %struct.lua_TValue* %12, i32 -1, !dbg !884
  store %struct.lua_TValue* %13, %struct.lua_TValue** %func, align 4, !dbg !884
  %14 = load i8** %2, align 4, !dbg !885
  %15 = getelementptr inbounds i8* %14, i32 1, !dbg !885
  store i8* %15, i8** %2, align 4, !dbg !885
  %16 = load %struct.lua_State** %1, align 4, !dbg !886
  %17 = getelementptr inbounds %struct.lua_State* %16, i32 0, i32 5, !dbg !886
  %18 = load %struct.lua_TValue** %17, align 4, !dbg !886
  %19 = getelementptr inbounds %struct.lua_TValue* %18, i32 -1, !dbg !886
  store %struct.lua_TValue* %19, %struct.lua_TValue** %17, align 4, !dbg !886
  br label %27, !dbg !887

; <label>:20                                      ; preds = %0
  %21 = load %struct.lua_Debug** %3, align 4, !dbg !888
  %22 = getelementptr inbounds %struct.lua_Debug* %21, i32 0, i32 13, !dbg !888
  %23 = load %struct.CallInfo** %22, align 4, !dbg !888
  store %struct.CallInfo* %23, %struct.CallInfo** %ci, align 4, !dbg !888
  %24 = load %struct.CallInfo** %ci, align 4, !dbg !890
  %25 = getelementptr inbounds %struct.CallInfo* %24, i32 0, i32 0, !dbg !890
  %26 = load %struct.lua_TValue** %25, align 4, !dbg !890
  store %struct.lua_TValue* %26, %struct.lua_TValue** %func, align 4, !dbg !890
  br label %27

; <label>:27                                      ; preds = %20, %9
  %28 = load %struct.lua_TValue** %func, align 4, !dbg !891
  %29 = getelementptr inbounds %struct.lua_TValue* %28, i32 0, i32 1, !dbg !891
  %30 = load i32* %29, align 4, !dbg !891
  %31 = and i32 %30, 31, !dbg !891
  %32 = icmp eq i32 %31, 6, !dbg !891
  br i1 %32, label %33, label %40, !dbg !891

; <label>:33                                      ; preds = %27
  %34 = load %struct.lua_TValue** %func, align 4, !dbg !892
  %35 = getelementptr inbounds %struct.lua_TValue* %34, i32 0, i32 0, !dbg !892
  %36 = bitcast %union.Value* %35 to %struct.GCObject**, !dbg !892
  %37 = load %struct.GCObject** %36, align 4, !dbg !892
  %38 = bitcast %struct.GCObject* %37 to %union.GCUnion*, !dbg !892
  %39 = bitcast %union.GCUnion* %38 to %union.Closure*, !dbg !892
  br label %41, !dbg !892

; <label>:40                                      ; preds = %27
  br label %41, !dbg !894

; <label>:41                                      ; preds = %40, %33
  %42 = phi %union.Closure* [ %39, %33 ], [ null, %40 ], !dbg !891
  store %union.Closure* %42, %union.Closure** %cl, align 4, !dbg !896
  %43 = load %struct.lua_State** %1, align 4, !dbg !899
  %44 = load i8** %2, align 4, !dbg !899
  %45 = load %struct.lua_Debug** %3, align 4, !dbg !899
  %46 = load %union.Closure** %cl, align 4, !dbg !899
  %47 = load %struct.CallInfo** %ci, align 4, !dbg !899
  %48 = call i32 @auxgetinfo(%struct.lua_State* %43, i8* %44, %struct.lua_Debug* %45, %union.Closure* %46, %struct.CallInfo* %47), !dbg !899
  store i32 %48, i32* %status, align 4, !dbg !899
  %49 = load i8** %2, align 4, !dbg !900
  %50 = call i8* @strchr(i8* %49, i32 102) #7, !dbg !900
  %51 = icmp ne i8* %50, null, !dbg !900
  br i1 %51, label %52, label %65, !dbg !900

; <label>:52                                      ; preds = %41
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %io1}, metadata !902), !dbg !905
  %53 = load %struct.lua_State** %1, align 4, !dbg !905
  %54 = getelementptr inbounds %struct.lua_State* %53, i32 0, i32 5, !dbg !905
  %55 = load %struct.lua_TValue** %54, align 4, !dbg !905
  store %struct.lua_TValue* %55, %struct.lua_TValue** %io1, align 4, !dbg !905
  %56 = load %struct.lua_TValue** %io1, align 4, !dbg !905
  %57 = load %struct.lua_TValue** %func, align 4, !dbg !905
  %58 = bitcast %struct.lua_TValue* %56 to i8*, !dbg !905
  %59 = bitcast %struct.lua_TValue* %57 to i8*, !dbg !905
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %58, i8* %59, i32 16, i32 8, i1 false), !dbg !905
  %60 = load %struct.lua_State** %1, align 4, !dbg !905
  %61 = load %struct.lua_State** %1, align 4, !dbg !906
  %62 = getelementptr inbounds %struct.lua_State* %61, i32 0, i32 5, !dbg !906
  %63 = load %struct.lua_TValue** %62, align 4, !dbg !906
  %64 = getelementptr inbounds %struct.lua_TValue* %63, i32 1, !dbg !906
  store %struct.lua_TValue* %64, %struct.lua_TValue** %62, align 4, !dbg !906
  br label %65, !dbg !908

; <label>:65                                      ; preds = %52, %41
  %66 = load %struct.lua_State** %1, align 4, !dbg !909
  call void @swapextra(%struct.lua_State* %66), !dbg !909
  %67 = load i8** %2, align 4, !dbg !910
  %68 = call i8* @strchr(i8* %67, i32 76) #7, !dbg !910
  %69 = icmp ne i8* %68, null, !dbg !910
  br i1 %69, label %70, label %73, !dbg !910

; <label>:70                                      ; preds = %65
  %71 = load %struct.lua_State** %1, align 4, !dbg !912
  %72 = load %union.Closure** %cl, align 4, !dbg !912
  call void @collectvalidlines(%struct.lua_State* %71, %union.Closure* %72), !dbg !912
  br label %73, !dbg !912

; <label>:73                                      ; preds = %70, %65
  %74 = load i32* %status, align 4, !dbg !913
  ret i32 %74, !dbg !913
}

; Function Attrs: nounwind
define internal i32 @auxgetinfo(%struct.lua_State* %L, i8* %what, %struct.lua_Debug* %ar, %union.Closure* %f, %struct.CallInfo* %ci) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca i8*, align 4
  %3 = alloca %struct.lua_Debug*, align 4
  %4 = alloca %union.Closure*, align 4
  %5 = alloca %struct.CallInfo*, align 4
  %status = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !914), !dbg !915
  store i8* %what, i8** %2, align 4
  call void @llvm.dbg.declare(metadata !{i8** %2}, metadata !916), !dbg !917
  store %struct.lua_Debug* %ar, %struct.lua_Debug** %3, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_Debug** %3}, metadata !918), !dbg !919
  store %union.Closure* %f, %union.Closure** %4, align 4
  call void @llvm.dbg.declare(metadata !{%union.Closure** %4}, metadata !920), !dbg !921
  store %struct.CallInfo* %ci, %struct.CallInfo** %5, align 4
  call void @llvm.dbg.declare(metadata !{%struct.CallInfo** %5}, metadata !922), !dbg !923
  call void @llvm.dbg.declare(metadata !{i32* %status}, metadata !924), !dbg !925
  store i32 1, i32* %status, align 4, !dbg !926
  br label %6, !dbg !927

; <label>:6                                       ; preds = %143, %0
  %7 = load i8** %2, align 4, !dbg !929
  %8 = load i8* %7, align 1, !dbg !929
  %9 = icmp ne i8 %8, 0, !dbg !929
  br i1 %9, label %10, label %146, !dbg !929

; <label>:10                                      ; preds = %6
  %11 = load i8** %2, align 4, !dbg !932
  %12 = load i8* %11, align 1, !dbg !932
  %13 = zext i8 %12 to i32, !dbg !932
  switch i32 %13, label %141 [
    i32 83, label %14
    i32 108, label %17
    i32 117, label %35
    i32 116, label %82
    i32 110, label %97
    i32 76, label %140
    i32 102, label %140
  ], !dbg !932

; <label>:14                                      ; preds = %10
  %15 = load %struct.lua_Debug** %3, align 4, !dbg !934
  %16 = load %union.Closure** %4, align 4, !dbg !934
  call void @funcinfo(%struct.lua_Debug* %15, %union.Closure* %16), !dbg !934
  br label %142, !dbg !937

; <label>:17                                      ; preds = %10
  %18 = load %struct.CallInfo** %5, align 4, !dbg !938
  %19 = icmp ne %struct.CallInfo* %18, null, !dbg !938
  br i1 %19, label %20, label %30, !dbg !938

; <label>:20                                      ; preds = %17
  %21 = load %struct.CallInfo** %5, align 4, !dbg !940
  %22 = getelementptr inbounds %struct.CallInfo* %21, i32 0, i32 7, !dbg !940
  %23 = load i8* %22, align 1, !dbg !940
  %24 = zext i8 %23 to i32, !dbg !940
  %25 = and i32 %24, 2, !dbg !940
  %26 = icmp ne i32 %25, 0, !dbg !940
  br i1 %26, label %27, label %30, !dbg !940

; <label>:27                                      ; preds = %20
  %28 = load %struct.CallInfo** %5, align 4, !dbg !942
  %29 = call i32 @currentline(%struct.CallInfo* %28), !dbg !942
  br label %31, !dbg !942

; <label>:30                                      ; preds = %20, %17
  br label %31, !dbg !944

; <label>:31                                      ; preds = %30, %27
  %32 = phi i32 [ %29, %27 ], [ -1, %30 ], !dbg !947
  %33 = load %struct.lua_Debug** %3, align 4, !dbg !948
  %34 = getelementptr inbounds %struct.lua_Debug* %33, i32 0, i32 5, !dbg !948
  store i32 %32, i32* %34, align 4, !dbg !948
  br label %142, !dbg !951

; <label>:35                                      ; preds = %10
  %36 = load %union.Closure** %4, align 4, !dbg !952
  %37 = icmp eq %union.Closure* %36, null, !dbg !952
  br i1 %37, label %38, label %39, !dbg !952

; <label>:38                                      ; preds = %35
  br label %45, !dbg !954

; <label>:39                                      ; preds = %35
  %40 = load %union.Closure** %4, align 4, !dbg !956
  %41 = bitcast %union.Closure* %40 to %struct.CClosure*, !dbg !956
  %42 = getelementptr inbounds %struct.CClosure* %41, i32 0, i32 3, !dbg !956
  %43 = load i8* %42, align 1, !dbg !956
  %44 = zext i8 %43 to i32, !dbg !956
  br label %45, !dbg !956

; <label>:45                                      ; preds = %39, %38
  %46 = phi i32 [ 0, %38 ], [ %44, %39 ], !dbg !952
  %47 = trunc i32 %46 to i8, !dbg !958
  %48 = load %struct.lua_Debug** %3, align 4, !dbg !958
  %49 = getelementptr inbounds %struct.lua_Debug* %48, i32 0, i32 8, !dbg !958
  store i8 %47, i8* %49, align 1, !dbg !958
  %50 = load %union.Closure** %4, align 4, !dbg !961
  %51 = icmp eq %union.Closure* %50, null, !dbg !961
  br i1 %51, label %59, label %52, !dbg !961

; <label>:52                                      ; preds = %45
  %53 = load %union.Closure** %4, align 4, !dbg !963
  %54 = bitcast %union.Closure* %53 to %struct.CClosure*, !dbg !963
  %55 = getelementptr inbounds %struct.CClosure* %54, i32 0, i32 1, !dbg !963
  %56 = load i8* %55, align 1, !dbg !963
  %57 = zext i8 %56 to i32, !dbg !963
  %58 = icmp eq i32 %57, 38, !dbg !963
  br i1 %58, label %59, label %64, !dbg !963

; <label>:59                                      ; preds = %52, %45
  %60 = load %struct.lua_Debug** %3, align 4, !dbg !965
  %61 = getelementptr inbounds %struct.lua_Debug* %60, i32 0, i32 10, !dbg !965
  store i8 1, i8* %61, align 1, !dbg !965
  %62 = load %struct.lua_Debug** %3, align 4, !dbg !967
  %63 = getelementptr inbounds %struct.lua_Debug* %62, i32 0, i32 9, !dbg !967
  store i8 0, i8* %63, align 1, !dbg !967
  br label %81, !dbg !968

; <label>:64                                      ; preds = %52
  %65 = load %union.Closure** %4, align 4, !dbg !969
  %66 = bitcast %union.Closure* %65 to %struct.LClosure*, !dbg !969
  %67 = getelementptr inbounds %struct.LClosure* %66, i32 0, i32 5, !dbg !969
  %68 = load %struct.Proto** %67, align 4, !dbg !969
  %69 = getelementptr inbounds %struct.Proto* %68, i32 0, i32 4, !dbg !969
  %70 = load i8* %69, align 1, !dbg !969
  %71 = load %struct.lua_Debug** %3, align 4, !dbg !969
  %72 = getelementptr inbounds %struct.lua_Debug* %71, i32 0, i32 10, !dbg !969
  store i8 %70, i8* %72, align 1, !dbg !969
  %73 = load %union.Closure** %4, align 4, !dbg !971
  %74 = bitcast %union.Closure* %73 to %struct.LClosure*, !dbg !971
  %75 = getelementptr inbounds %struct.LClosure* %74, i32 0, i32 5, !dbg !971
  %76 = load %struct.Proto** %75, align 4, !dbg !971
  %77 = getelementptr inbounds %struct.Proto* %76, i32 0, i32 3, !dbg !971
  %78 = load i8* %77, align 1, !dbg !971
  %79 = load %struct.lua_Debug** %3, align 4, !dbg !971
  %80 = getelementptr inbounds %struct.lua_Debug* %79, i32 0, i32 9, !dbg !971
  store i8 %78, i8* %80, align 1, !dbg !971
  br label %81

; <label>:81                                      ; preds = %64, %59
  br label %142, !dbg !972

; <label>:82                                      ; preds = %10
  %83 = load %struct.CallInfo** %5, align 4, !dbg !973
  %84 = icmp ne %struct.CallInfo* %83, null, !dbg !973
  br i1 %84, label %85, label %91, !dbg !973

; <label>:85                                      ; preds = %82
  %86 = load %struct.CallInfo** %5, align 4, !dbg !975
  %87 = getelementptr inbounds %struct.CallInfo* %86, i32 0, i32 7, !dbg !975
  %88 = load i8* %87, align 1, !dbg !975
  %89 = zext i8 %88 to i32, !dbg !975
  %90 = and i32 %89, 32, !dbg !975
  br label %92, !dbg !975

; <label>:91                                      ; preds = %82
  br label %92, !dbg !977

; <label>:92                                      ; preds = %91, %85
  %93 = phi i32 [ %90, %85 ], [ 0, %91 ], !dbg !973
  %94 = trunc i32 %93 to i8, !dbg !979
  %95 = load %struct.lua_Debug** %3, align 4, !dbg !979
  %96 = getelementptr inbounds %struct.lua_Debug* %95, i32 0, i32 11, !dbg !979
  store i8 %94, i8* %96, align 1, !dbg !979
  br label %142, !dbg !982

; <label>:97                                      ; preds = %10
  %98 = load %struct.CallInfo** %5, align 4, !dbg !983
  %99 = icmp ne %struct.CallInfo* %98, null, !dbg !983
  br i1 %99, label %100, label %126, !dbg !983

; <label>:100                                     ; preds = %97
  %101 = load %struct.CallInfo** %5, align 4, !dbg !986
  %102 = getelementptr inbounds %struct.CallInfo* %101, i32 0, i32 7, !dbg !986
  %103 = load i8* %102, align 1, !dbg !986
  %104 = zext i8 %103 to i32, !dbg !986
  %105 = and i32 %104, 32, !dbg !986
  %106 = icmp ne i32 %105, 0, !dbg !986
  br i1 %106, label %126, label %107, !dbg !986

; <label>:107                                     ; preds = %100
  %108 = load %struct.CallInfo** %5, align 4, !dbg !988
  %109 = getelementptr inbounds %struct.CallInfo* %108, i32 0, i32 2, !dbg !988
  %110 = load %struct.CallInfo** %109, align 4, !dbg !988
  %111 = getelementptr inbounds %struct.CallInfo* %110, i32 0, i32 7, !dbg !988
  %112 = load i8* %111, align 1, !dbg !988
  %113 = zext i8 %112 to i32, !dbg !988
  %114 = and i32 %113, 2, !dbg !988
  %115 = icmp ne i32 %114, 0, !dbg !988
  br i1 %115, label %116, label %126, !dbg !988

; <label>:116                                     ; preds = %107
  %117 = load %struct.lua_State** %1, align 4, !dbg !990
  %118 = load %struct.CallInfo** %5, align 4, !dbg !990
  %119 = getelementptr inbounds %struct.CallInfo* %118, i32 0, i32 2, !dbg !990
  %120 = load %struct.CallInfo** %119, align 4, !dbg !990
  %121 = load %struct.lua_Debug** %3, align 4, !dbg !990
  %122 = getelementptr inbounds %struct.lua_Debug* %121, i32 0, i32 1, !dbg !990
  %123 = call i8* @getfuncname(%struct.lua_State* %117, %struct.CallInfo* %120, i8** %122), !dbg !990
  %124 = load %struct.lua_Debug** %3, align 4, !dbg !990
  %125 = getelementptr inbounds %struct.lua_Debug* %124, i32 0, i32 2, !dbg !990
  store i8* %123, i8** %125, align 4, !dbg !990
  br label %129, !dbg !990

; <label>:126                                     ; preds = %107, %100, %97
  %127 = load %struct.lua_Debug** %3, align 4, !dbg !991
  %128 = getelementptr inbounds %struct.lua_Debug* %127, i32 0, i32 2, !dbg !991
  store i8* null, i8** %128, align 4, !dbg !991
  br label %129

; <label>:129                                     ; preds = %126, %116
  %130 = load %struct.lua_Debug** %3, align 4, !dbg !992
  %131 = getelementptr inbounds %struct.lua_Debug* %130, i32 0, i32 2, !dbg !992
  %132 = load i8** %131, align 4, !dbg !992
  %133 = icmp eq i8* %132, null, !dbg !992
  br i1 %133, label %134, label %139, !dbg !992

; <label>:134                                     ; preds = %129
  %135 = load %struct.lua_Debug** %3, align 4, !dbg !994
  %136 = getelementptr inbounds %struct.lua_Debug* %135, i32 0, i32 2, !dbg !994
  store i8* getelementptr inbounds ([1 x i8]* @.str7, i32 0, i32 0), i8** %136, align 4, !dbg !994
  %137 = load %struct.lua_Debug** %3, align 4, !dbg !996
  %138 = getelementptr inbounds %struct.lua_Debug* %137, i32 0, i32 1, !dbg !996
  store i8* null, i8** %138, align 4, !dbg !996
  br label %139, !dbg !997

; <label>:139                                     ; preds = %134, %129
  br label %142, !dbg !998

; <label>:140                                     ; preds = %10, %10
  br label %142, !dbg !999

; <label>:141                                     ; preds = %10
  store i32 0, i32* %status, align 4, !dbg !1000
  br label %142, !dbg !1001

; <label>:142                                     ; preds = %141, %140, %139, %92, %81, %31, %14
  br label %143, !dbg !1002

; <label>:143                                     ; preds = %142
  %144 = load i8** %2, align 4, !dbg !1003
  %145 = getelementptr inbounds i8* %144, i32 1, !dbg !1003
  store i8* %145, i8** %2, align 4, !dbg !1003
  br label %6, !dbg !1003

; <label>:146                                     ; preds = %6
  %147 = load i32* %status, align 4, !dbg !1004
  ret i32 %147, !dbg !1004
}

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #4

; Function Attrs: nounwind
define internal void @collectvalidlines(%struct.lua_State* %L, %union.Closure* %f) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca %union.Closure*, align 4
  %i = alloca i32, align 4
  %v = alloca %struct.lua_TValue, align 8
  %lineinfo = alloca i32*, align 4
  %t = alloca %struct.Table*, align 4
  %io = alloca %struct.lua_TValue*, align 4
  %x_ = alloca %struct.Table*, align 4
  %io1 = alloca %struct.lua_TValue*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !1005), !dbg !1006
  store %union.Closure* %f, %union.Closure** %2, align 4
  call void @llvm.dbg.declare(metadata !{%union.Closure** %2}, metadata !1007), !dbg !1008
  %3 = load %union.Closure** %2, align 4, !dbg !1009
  %4 = icmp eq %union.Closure* %3, null, !dbg !1009
  br i1 %4, label %12, label %5, !dbg !1009

; <label>:5                                       ; preds = %0
  %6 = load %union.Closure** %2, align 4, !dbg !1011
  %7 = bitcast %union.Closure* %6 to %struct.CClosure*, !dbg !1011
  %8 = getelementptr inbounds %struct.CClosure* %7, i32 0, i32 1, !dbg !1011
  %9 = load i8* %8, align 1, !dbg !1011
  %10 = zext i8 %9 to i32, !dbg !1011
  %11 = icmp eq i32 %10, 38, !dbg !1011
  br i1 %11, label %12, label %21, !dbg !1011

; <label>:12                                      ; preds = %5, %0
  %13 = load %struct.lua_State** %1, align 4, !dbg !1013
  %14 = getelementptr inbounds %struct.lua_State* %13, i32 0, i32 5, !dbg !1013
  %15 = load %struct.lua_TValue** %14, align 4, !dbg !1013
  %16 = getelementptr inbounds %struct.lua_TValue* %15, i32 0, i32 1, !dbg !1013
  store i32 0, i32* %16, align 4, !dbg !1013
  %17 = load %struct.lua_State** %1, align 4, !dbg !1015
  %18 = getelementptr inbounds %struct.lua_State* %17, i32 0, i32 5, !dbg !1015
  %19 = load %struct.lua_TValue** %18, align 4, !dbg !1015
  %20 = getelementptr inbounds %struct.lua_TValue* %19, i32 1, !dbg !1015
  store %struct.lua_TValue* %20, %struct.lua_TValue** %18, align 4, !dbg !1015
  br label %72, !dbg !1017

; <label>:21                                      ; preds = %5
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !1018), !dbg !1020
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue* %v}, metadata !1021), !dbg !1022
  call void @llvm.dbg.declare(metadata !{i32** %lineinfo}, metadata !1023), !dbg !1024
  %22 = load %union.Closure** %2, align 4, !dbg !1025
  %23 = bitcast %union.Closure* %22 to %struct.LClosure*, !dbg !1025
  %24 = getelementptr inbounds %struct.LClosure* %23, i32 0, i32 5, !dbg !1025
  %25 = load %struct.Proto** %24, align 4, !dbg !1025
  %26 = getelementptr inbounds %struct.Proto* %25, i32 0, i32 17, !dbg !1025
  %27 = load i32** %26, align 4, !dbg !1025
  store i32* %27, i32** %lineinfo, align 4, !dbg !1025
  call void @llvm.dbg.declare(metadata !{%struct.Table** %t}, metadata !1026), !dbg !1029
  %28 = load %struct.lua_State** %1, align 4, !dbg !1030
  %29 = call %struct.Table* @luaH_new(%struct.lua_State* %28), !dbg !1030
  store %struct.Table* %29, %struct.Table** %t, align 4, !dbg !1030
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %io}, metadata !1031), !dbg !1033
  %30 = load %struct.lua_State** %1, align 4, !dbg !1033
  %31 = getelementptr inbounds %struct.lua_State* %30, i32 0, i32 5, !dbg !1033
  %32 = load %struct.lua_TValue** %31, align 4, !dbg !1033
  store %struct.lua_TValue* %32, %struct.lua_TValue** %io, align 4, !dbg !1033
  call void @llvm.dbg.declare(metadata !{%struct.Table** %x_}, metadata !1034), !dbg !1033
  %33 = load %struct.Table** %t, align 4, !dbg !1033
  store %struct.Table* %33, %struct.Table** %x_, align 4, !dbg !1033
  %34 = load %struct.Table** %x_, align 4, !dbg !1033
  %35 = bitcast %struct.Table* %34 to %union.GCUnion*, !dbg !1033
  %36 = bitcast %union.GCUnion* %35 to %struct.GCObject*, !dbg !1033
  %37 = load %struct.lua_TValue** %io, align 4, !dbg !1033
  %38 = getelementptr inbounds %struct.lua_TValue* %37, i32 0, i32 0, !dbg !1033
  %39 = bitcast %union.Value* %38 to %struct.GCObject**, !dbg !1033
  store %struct.GCObject* %36, %struct.GCObject** %39, align 4, !dbg !1033
  %40 = load %struct.lua_TValue** %io, align 4, !dbg !1033
  %41 = getelementptr inbounds %struct.lua_TValue* %40, i32 0, i32 1, !dbg !1033
  store i32 69, i32* %41, align 4, !dbg !1033
  %42 = load %struct.lua_State** %1, align 4, !dbg !1035
  %43 = getelementptr inbounds %struct.lua_State* %42, i32 0, i32 5, !dbg !1035
  %44 = load %struct.lua_TValue** %43, align 4, !dbg !1035
  %45 = getelementptr inbounds %struct.lua_TValue* %44, i32 1, !dbg !1035
  store %struct.lua_TValue* %45, %struct.lua_TValue** %43, align 4, !dbg !1035
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %io1}, metadata !1037), !dbg !1039
  store %struct.lua_TValue* %v, %struct.lua_TValue** %io1, align 4, !dbg !1039
  %46 = load %struct.lua_TValue** %io1, align 4, !dbg !1039
  %47 = getelementptr inbounds %struct.lua_TValue* %46, i32 0, i32 0, !dbg !1039
  %48 = bitcast %union.Value* %47 to i32*, !dbg !1039
  store i32 1, i32* %48, align 4, !dbg !1039
  %49 = load %struct.lua_TValue** %io1, align 4, !dbg !1039
  %50 = getelementptr inbounds %struct.lua_TValue* %49, i32 0, i32 1, !dbg !1039
  store i32 1, i32* %50, align 4, !dbg !1039
  store i32 0, i32* %i, align 4, !dbg !1040
  br label %51, !dbg !1040

; <label>:51                                      ; preds = %68, %21
  %52 = load i32* %i, align 4, !dbg !1042
  %53 = load %union.Closure** %2, align 4, !dbg !1042
  %54 = bitcast %union.Closure* %53 to %struct.LClosure*, !dbg !1042
  %55 = getelementptr inbounds %struct.LClosure* %54, i32 0, i32 5, !dbg !1042
  %56 = load %struct.Proto** %55, align 4, !dbg !1042
  %57 = getelementptr inbounds %struct.Proto* %56, i32 0, i32 9, !dbg !1042
  %58 = load i32* %57, align 4, !dbg !1042
  %59 = icmp slt i32 %52, %58, !dbg !1042
  br i1 %59, label %60, label %71, !dbg !1042

; <label>:60                                      ; preds = %51
  %61 = load %struct.lua_State** %1, align 4, !dbg !1045
  %62 = load %struct.Table** %t, align 4, !dbg !1045
  %63 = load i32* %i, align 4, !dbg !1045
  %64 = load i32** %lineinfo, align 4, !dbg !1045
  %65 = getelementptr inbounds i32* %64, i32 %63, !dbg !1045
  %66 = load i32* %65, align 4, !dbg !1045
  %67 = sext i32 %66 to i64, !dbg !1045
  call void @luaH_setint(%struct.lua_State* %61, %struct.Table* %62, i64 %67, %struct.lua_TValue* %v), !dbg !1045
  br label %68, !dbg !1045

; <label>:68                                      ; preds = %60
  %69 = load i32* %i, align 4, !dbg !1046
  %70 = add nsw i32 %69, 1, !dbg !1046
  store i32 %70, i32* %i, align 4, !dbg !1046
  br label %51, !dbg !1046

; <label>:71                                      ; preds = %51
  br label %72

; <label>:72                                      ; preds = %71, %12
  ret void, !dbg !1047
}

; Function Attrs: noreturn nounwind
define hidden void @luaG_typeerror(%struct.lua_State* %L, %struct.lua_TValue* %o, i8* %op) #5 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca %struct.lua_TValue*, align 4
  %3 = alloca i8*, align 4
  %t = alloca i8*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !1048), !dbg !1049
  store %struct.lua_TValue* %o, %struct.lua_TValue** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %2}, metadata !1050), !dbg !1051
  store i8* %op, i8** %3, align 4
  call void @llvm.dbg.declare(metadata !{i8** %3}, metadata !1052), !dbg !1053
  call void @llvm.dbg.declare(metadata !{i8** %t}, metadata !1054), !dbg !1055
  %4 = load %struct.lua_State** %1, align 4, !dbg !1056
  %5 = load %struct.lua_TValue** %2, align 4, !dbg !1056
  %6 = call i8* @luaT_objtypename(%struct.lua_State* %4, %struct.lua_TValue* %5), !dbg !1056
  store i8* %6, i8** %t, align 4, !dbg !1056
  %7 = load %struct.lua_State** %1, align 4, !dbg !1057
  %8 = load i8** %3, align 4, !dbg !1057
  %9 = load i8** %t, align 4, !dbg !1057
  %10 = load %struct.lua_State** %1, align 4, !dbg !1058
  %11 = load %struct.lua_TValue** %2, align 4, !dbg !1058
  %12 = call i8* @varinfo(%struct.lua_State* %10, %struct.lua_TValue* %11), !dbg !1058
  call void (%struct.lua_State*, i8*, ...)* @luaG_runerror(%struct.lua_State* %7, i8* getelementptr inbounds ([27 x i8]* @.str, i32 0, i32 0), i8* %8, i8* %9, i8* %12) #8, !dbg !1057
  unreachable, !dbg !1057
                                                  ; No predecessors!
  ret void, !dbg !1059
}

declare hidden i8* @luaT_objtypename(%struct.lua_State*, %struct.lua_TValue*) #2

; Function Attrs: noreturn nounwind
define hidden void @luaG_runerror(%struct.lua_State* %L, i8* %fmt, ...) #5 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca i8*, align 4
  %ci = alloca %struct.CallInfo*, align 4
  %msg = alloca i8*, align 4
  %argp = alloca %struct.__va_list, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !1060), !dbg !1061
  store i8* %fmt, i8** %2, align 4
  call void @llvm.dbg.declare(metadata !{i8** %2}, metadata !1062), !dbg !1063
  call void @llvm.dbg.declare(metadata !{%struct.CallInfo** %ci}, metadata !1064), !dbg !1065
  %3 = load %struct.lua_State** %1, align 4, !dbg !1066
  %4 = getelementptr inbounds %struct.lua_State* %3, i32 0, i32 7, !dbg !1066
  %5 = load %struct.CallInfo** %4, align 4, !dbg !1066
  store %struct.CallInfo* %5, %struct.CallInfo** %ci, align 4, !dbg !1066
  call void @llvm.dbg.declare(metadata !{i8** %msg}, metadata !1067), !dbg !1068
  call void @llvm.dbg.declare(metadata !{%struct.__va_list* %argp}, metadata !1069), !dbg !1077
  %6 = bitcast %struct.__va_list* %argp to i8*, !dbg !1078
  call void @llvm.va_start(i8* %6), !dbg !1078
  %7 = load %struct.lua_State** %1, align 4, !dbg !1079
  %8 = load i8** %2, align 4, !dbg !1079
  %9 = getelementptr %struct.__va_list* %argp, i32 0, i32 0, !dbg !1079
  %10 = bitcast i8** %9 to { [1 x i32] }*, !dbg !1079
  %11 = load { [1 x i32] }* %10, align 1, !dbg !1079
  %12 = call i8* @luaO_pushvfstring(%struct.lua_State* %7, i8* %8, { [1 x i32] } %11), !dbg !1079
  store i8* %12, i8** %msg, align 4, !dbg !1079
  %13 = bitcast %struct.__va_list* %argp to i8*, !dbg !1080
  call void @llvm.va_end(i8* %13), !dbg !1080
  %14 = load %struct.CallInfo** %ci, align 4, !dbg !1081
  %15 = getelementptr inbounds %struct.CallInfo* %14, i32 0, i32 7, !dbg !1081
  %16 = load i8* %15, align 1, !dbg !1081
  %17 = zext i8 %16 to i32, !dbg !1081
  %18 = and i32 %17, 2, !dbg !1081
  %19 = icmp ne i32 %18, 0, !dbg !1081
  br i1 %19, label %20, label %39, !dbg !1081

; <label>:20                                      ; preds = %0
  %21 = load %struct.lua_State** %1, align 4, !dbg !1083
  %22 = load i8** %msg, align 4, !dbg !1083
  %23 = load %struct.CallInfo** %ci, align 4, !dbg !1083
  %24 = getelementptr inbounds %struct.CallInfo* %23, i32 0, i32 0, !dbg !1083
  %25 = load %struct.lua_TValue** %24, align 4, !dbg !1083
  %26 = getelementptr inbounds %struct.lua_TValue* %25, i32 0, i32 0, !dbg !1083
  %27 = bitcast %union.Value* %26 to %struct.GCObject**, !dbg !1083
  %28 = load %struct.GCObject** %27, align 4, !dbg !1083
  %29 = bitcast %struct.GCObject* %28 to %union.GCUnion*, !dbg !1083
  %30 = bitcast %union.GCUnion* %29 to %union.Closure*, !dbg !1083
  %31 = bitcast %union.Closure* %30 to %struct.LClosure*, !dbg !1083
  %32 = getelementptr inbounds %struct.LClosure* %31, i32 0, i32 5, !dbg !1083
  %33 = load %struct.Proto** %32, align 4, !dbg !1083
  %34 = getelementptr inbounds %struct.Proto* %33, i32 0, i32 21, !dbg !1083
  %35 = load %struct.TString** %34, align 4, !dbg !1083
  %36 = load %struct.CallInfo** %ci, align 4, !dbg !1084
  %37 = call i32 @currentline(%struct.CallInfo* %36), !dbg !1084
  %38 = call i8* @luaG_addinfo(%struct.lua_State* %21, i8* %22, %struct.TString* %35, i32 %37), !dbg !1083
  br label %39, !dbg !1083

; <label>:39                                      ; preds = %20, %0
  %40 = load %struct.lua_State** %1, align 4, !dbg !1085
  call void @luaG_errormsg(%struct.lua_State* %40) #8, !dbg !1085
  unreachable, !dbg !1085
                                                  ; No predecessors!
  ret void, !dbg !1086
}

; Function Attrs: nounwind
define internal i8* @varinfo(%struct.lua_State* %L, %struct.lua_TValue* %o) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca %struct.lua_TValue*, align 4
  %name = alloca i8*, align 4
  %ci = alloca %struct.CallInfo*, align 4
  %kind = alloca i8*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !1087), !dbg !1088
  store %struct.lua_TValue* %o, %struct.lua_TValue** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %2}, metadata !1089), !dbg !1090
  call void @llvm.dbg.declare(metadata !{i8** %name}, metadata !1091), !dbg !1092
  store i8* null, i8** %name, align 4, !dbg !1093
  call void @llvm.dbg.declare(metadata !{%struct.CallInfo** %ci}, metadata !1094), !dbg !1095
  %3 = load %struct.lua_State** %1, align 4, !dbg !1096
  %4 = getelementptr inbounds %struct.lua_State* %3, i32 0, i32 7, !dbg !1096
  %5 = load %struct.CallInfo** %4, align 4, !dbg !1096
  store %struct.CallInfo* %5, %struct.CallInfo** %ci, align 4, !dbg !1096
  call void @llvm.dbg.declare(metadata !{i8** %kind}, metadata !1097), !dbg !1098
  store i8* null, i8** %kind, align 4, !dbg !1099
  %6 = load %struct.CallInfo** %ci, align 4, !dbg !1100
  %7 = getelementptr inbounds %struct.CallInfo* %6, i32 0, i32 7, !dbg !1100
  %8 = load i8* %7, align 1, !dbg !1100
  %9 = zext i8 %8 to i32, !dbg !1100
  %10 = and i32 %9, 2, !dbg !1100
  %11 = icmp ne i32 %10, 0, !dbg !1100
  br i1 %11, label %12, label %49, !dbg !1100

; <label>:12                                      ; preds = %0
  %13 = load %struct.CallInfo** %ci, align 4, !dbg !1102
  %14 = load %struct.lua_TValue** %2, align 4, !dbg !1102
  %15 = call i8* @getupvalname(%struct.CallInfo* %13, %struct.lua_TValue* %14, i8** %name), !dbg !1102
  store i8* %15, i8** %kind, align 4, !dbg !1102
  %16 = load i8** %kind, align 4, !dbg !1104
  %17 = icmp ne i8* %16, null, !dbg !1104
  br i1 %17, label %48, label %18, !dbg !1104

; <label>:18                                      ; preds = %12
  %19 = load %struct.CallInfo** %ci, align 4, !dbg !1106
  %20 = load %struct.lua_TValue** %2, align 4, !dbg !1106
  %21 = call i32 @isinstack(%struct.CallInfo* %19, %struct.lua_TValue* %20), !dbg !1106
  %22 = icmp ne i32 %21, 0, !dbg !1106
  br i1 %22, label %23, label %48, !dbg !1106

; <label>:23                                      ; preds = %18
  %24 = load %struct.CallInfo** %ci, align 4, !dbg !1108
  %25 = getelementptr inbounds %struct.CallInfo* %24, i32 0, i32 0, !dbg !1108
  %26 = load %struct.lua_TValue** %25, align 4, !dbg !1108
  %27 = getelementptr inbounds %struct.lua_TValue* %26, i32 0, i32 0, !dbg !1108
  %28 = bitcast %union.Value* %27 to %struct.GCObject**, !dbg !1108
  %29 = load %struct.GCObject** %28, align 4, !dbg !1108
  %30 = bitcast %struct.GCObject* %29 to %union.GCUnion*, !dbg !1108
  %31 = bitcast %union.GCUnion* %30 to %union.Closure*, !dbg !1108
  %32 = bitcast %union.Closure* %31 to %struct.LClosure*, !dbg !1108
  %33 = getelementptr inbounds %struct.LClosure* %32, i32 0, i32 5, !dbg !1108
  %34 = load %struct.Proto** %33, align 4, !dbg !1108
  %35 = load %struct.CallInfo** %ci, align 4, !dbg !1109
  %36 = call i32 @currentpc(%struct.CallInfo* %35), !dbg !1109
  %37 = load %struct.lua_TValue** %2, align 4, !dbg !1108
  %38 = load %struct.CallInfo** %ci, align 4, !dbg !1108
  %39 = getelementptr inbounds %struct.CallInfo* %38, i32 0, i32 4, !dbg !1108
  %40 = bitcast %union.anon.0* %39 to %struct.anon.1*, !dbg !1108
  %41 = getelementptr inbounds %struct.anon.1* %40, i32 0, i32 0, !dbg !1108
  %42 = load %struct.lua_TValue** %41, align 4, !dbg !1108
  %43 = ptrtoint %struct.lua_TValue* %37 to i32, !dbg !1108
  %44 = ptrtoint %struct.lua_TValue* %42 to i32, !dbg !1108
  %45 = sub i32 %43, %44, !dbg !1108
  %46 = sdiv exact i32 %45, 16, !dbg !1108
  %47 = call i8* @getobjname(%struct.Proto* %34, i32 %36, i32 %46, i8** %name), !dbg !1108
  store i8* %47, i8** %kind, align 4, !dbg !1108
  br label %48, !dbg !1108

; <label>:48                                      ; preds = %23, %18, %12
  br label %49, !dbg !1110

; <label>:49                                      ; preds = %48, %0
  %50 = load i8** %kind, align 4, !dbg !1111
  %51 = icmp ne i8* %50, null, !dbg !1111
  br i1 %51, label %52, label %57, !dbg !1111

; <label>:52                                      ; preds = %49
  %53 = load %struct.lua_State** %1, align 4, !dbg !1112
  %54 = load i8** %kind, align 4, !dbg !1112
  %55 = load i8** %name, align 4, !dbg !1112
  %56 = call i8* (%struct.lua_State*, i8*, ...)* @luaO_pushfstring(%struct.lua_State* %53, i8* getelementptr inbounds ([11 x i8]* @.str6, i32 0, i32 0), i8* %54, i8* %55), !dbg !1112
  br label %58, !dbg !1112

; <label>:57                                      ; preds = %49
  br label %58, !dbg !1114

; <label>:58                                      ; preds = %57, %52
  %59 = phi i8* [ %56, %52 ], [ getelementptr inbounds ([1 x i8]* @.str7, i32 0, i32 0), %57 ], !dbg !1116
  ret i8* %59, !dbg !1117
}

; Function Attrs: noreturn nounwind
define hidden void @luaG_concaterror(%struct.lua_State* %L, %struct.lua_TValue* %p1, %struct.lua_TValue* %p2) #5 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca %struct.lua_TValue*, align 4
  %3 = alloca %struct.lua_TValue*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !1120), !dbg !1121
  store %struct.lua_TValue* %p1, %struct.lua_TValue** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %2}, metadata !1122), !dbg !1123
  store %struct.lua_TValue* %p2, %struct.lua_TValue** %3, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %3}, metadata !1124), !dbg !1125
  %4 = load %struct.lua_TValue** %2, align 4, !dbg !1126
  %5 = getelementptr inbounds %struct.lua_TValue* %4, i32 0, i32 1, !dbg !1126
  %6 = load i32* %5, align 4, !dbg !1126
  %7 = and i32 %6, 15, !dbg !1126
  %8 = icmp eq i32 %7, 4, !dbg !1126
  br i1 %8, label %15, label %9, !dbg !1126

; <label>:9                                       ; preds = %0
  %10 = load %struct.lua_TValue** %2, align 4, !dbg !1128
  %11 = getelementptr inbounds %struct.lua_TValue* %10, i32 0, i32 1, !dbg !1128
  %12 = load i32* %11, align 4, !dbg !1128
  %13 = and i32 %12, 15, !dbg !1128
  %14 = icmp eq i32 %13, 3, !dbg !1128
  br i1 %14, label %15, label %17, !dbg !1128

; <label>:15                                      ; preds = %9, %0
  %16 = load %struct.lua_TValue** %3, align 4, !dbg !1130
  store %struct.lua_TValue* %16, %struct.lua_TValue** %2, align 4, !dbg !1130
  br label %17, !dbg !1130

; <label>:17                                      ; preds = %15, %9
  %18 = load %struct.lua_State** %1, align 4, !dbg !1133
  %19 = load %struct.lua_TValue** %2, align 4, !dbg !1133
  call void @luaG_typeerror(%struct.lua_State* %18, %struct.lua_TValue* %19, i8* getelementptr inbounds ([12 x i8]* @.str1, i32 0, i32 0)) #8, !dbg !1133
  unreachable, !dbg !1133
                                                  ; No predecessors!
  ret void, !dbg !1134
}

; Function Attrs: noreturn nounwind
define hidden void @luaG_opinterror(%struct.lua_State* %L, %struct.lua_TValue* %p1, %struct.lua_TValue* %p2, i8* %msg) #5 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca %struct.lua_TValue*, align 4
  %3 = alloca %struct.lua_TValue*, align 4
  %4 = alloca i8*, align 4
  %temp = alloca double, align 8
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !1135), !dbg !1136
  store %struct.lua_TValue* %p1, %struct.lua_TValue** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %2}, metadata !1137), !dbg !1138
  store %struct.lua_TValue* %p2, %struct.lua_TValue** %3, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %3}, metadata !1139), !dbg !1140
  store i8* %msg, i8** %4, align 4
  call void @llvm.dbg.declare(metadata !{i8** %4}, metadata !1141), !dbg !1142
  call void @llvm.dbg.declare(metadata !{double* %temp}, metadata !1143), !dbg !1144
  %5 = load %struct.lua_TValue** %2, align 4, !dbg !1145
  %6 = getelementptr inbounds %struct.lua_TValue* %5, i32 0, i32 1, !dbg !1145
  %7 = load i32* %6, align 4, !dbg !1145
  %8 = icmp eq i32 %7, 3, !dbg !1145
  br i1 %8, label %9, label %14, !dbg !1145

; <label>:9                                       ; preds = %0
  %10 = load %struct.lua_TValue** %2, align 4, !dbg !1147
  %11 = getelementptr inbounds %struct.lua_TValue* %10, i32 0, i32 0, !dbg !1147
  %12 = bitcast %union.Value* %11 to double*, !dbg !1147
  %13 = load double* %12, align 8, !dbg !1147
  store double %13, double* %temp, align 8, !dbg !1147
  br i1 true, label %20, label %18, !dbg !1147

; <label>:14                                      ; preds = %0
  %15 = load %struct.lua_TValue** %2, align 4, !dbg !1149
  %16 = call i32 @luaV_tonumber_(%struct.lua_TValue* %15, double* %temp), !dbg !1149
  %17 = icmp ne i32 %16, 0, !dbg !1149
  br i1 %17, label %20, label %18, !dbg !1149

; <label>:18                                      ; preds = %14, %9
  %19 = load %struct.lua_TValue** %2, align 4, !dbg !1151
  store %struct.lua_TValue* %19, %struct.lua_TValue** %3, align 4, !dbg !1151
  br label %20, !dbg !1151

; <label>:20                                      ; preds = %18, %14, %9
  %21 = load %struct.lua_State** %1, align 4, !dbg !1152
  %22 = load %struct.lua_TValue** %3, align 4, !dbg !1152
  %23 = load i8** %4, align 4, !dbg !1152
  call void @luaG_typeerror(%struct.lua_State* %21, %struct.lua_TValue* %22, i8* %23) #8, !dbg !1152
  unreachable, !dbg !1152
                                                  ; No predecessors!
  ret void, !dbg !1153
}

declare hidden i32 @luaV_tonumber_(%struct.lua_TValue*, double*) #2

; Function Attrs: noreturn nounwind
define hidden void @luaG_tointerror(%struct.lua_State* %L, %struct.lua_TValue* %p1, %struct.lua_TValue* %p2) #5 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca %struct.lua_TValue*, align 4
  %3 = alloca %struct.lua_TValue*, align 4
  %temp = alloca i64, align 8
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !1154), !dbg !1155
  store %struct.lua_TValue* %p1, %struct.lua_TValue** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %2}, metadata !1156), !dbg !1157
  store %struct.lua_TValue* %p2, %struct.lua_TValue** %3, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %3}, metadata !1158), !dbg !1159
  call void @llvm.dbg.declare(metadata !{i64* %temp}, metadata !1160), !dbg !1161
  %4 = load %struct.lua_TValue** %2, align 4, !dbg !1162
  %5 = getelementptr inbounds %struct.lua_TValue* %4, i32 0, i32 1, !dbg !1162
  %6 = load i32* %5, align 4, !dbg !1162
  %7 = icmp eq i32 %6, 19, !dbg !1162
  br i1 %7, label %8, label %13, !dbg !1162

; <label>:8                                       ; preds = %0
  %9 = load %struct.lua_TValue** %2, align 4, !dbg !1164
  %10 = getelementptr inbounds %struct.lua_TValue* %9, i32 0, i32 0, !dbg !1164
  %11 = bitcast %union.Value* %10 to i64*, !dbg !1164
  %12 = load i64* %11, align 8, !dbg !1164
  store i64 %12, i64* %temp, align 8, !dbg !1164
  br i1 true, label %19, label %17, !dbg !1164

; <label>:13                                      ; preds = %0
  %14 = load %struct.lua_TValue** %2, align 4, !dbg !1166
  %15 = call i32 @luaV_tointeger(%struct.lua_TValue* %14, i64* %temp, i32 0), !dbg !1166
  %16 = icmp ne i32 %15, 0, !dbg !1166
  br i1 %16, label %19, label %17, !dbg !1166

; <label>:17                                      ; preds = %13, %8
  %18 = load %struct.lua_TValue** %2, align 4, !dbg !1168
  store %struct.lua_TValue* %18, %struct.lua_TValue** %3, align 4, !dbg !1168
  br label %19, !dbg !1168

; <label>:19                                      ; preds = %17, %13, %8
  %20 = load %struct.lua_State** %1, align 4, !dbg !1169
  %21 = load %struct.lua_State** %1, align 4, !dbg !1170
  %22 = load %struct.lua_TValue** %3, align 4, !dbg !1170
  %23 = call i8* @varinfo(%struct.lua_State* %21, %struct.lua_TValue* %22), !dbg !1170
  call void (%struct.lua_State*, i8*, ...)* @luaG_runerror(%struct.lua_State* %20, i8* getelementptr inbounds ([39 x i8]* @.str2, i32 0, i32 0), i8* %23) #8, !dbg !1169
  unreachable, !dbg !1169
                                                  ; No predecessors!
  ret void, !dbg !1171
}

declare hidden i32 @luaV_tointeger(%struct.lua_TValue*, i64*, i32) #2

; Function Attrs: noreturn nounwind
define hidden void @luaG_ordererror(%struct.lua_State* %L, %struct.lua_TValue* %p1, %struct.lua_TValue* %p2) #5 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca %struct.lua_TValue*, align 4
  %3 = alloca %struct.lua_TValue*, align 4
  %t1 = alloca i8*, align 4
  %t2 = alloca i8*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !1172), !dbg !1173
  store %struct.lua_TValue* %p1, %struct.lua_TValue** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %2}, metadata !1174), !dbg !1175
  store %struct.lua_TValue* %p2, %struct.lua_TValue** %3, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %3}, metadata !1176), !dbg !1177
  call void @llvm.dbg.declare(metadata !{i8** %t1}, metadata !1178), !dbg !1179
  %4 = load %struct.lua_State** %1, align 4, !dbg !1180
  %5 = load %struct.lua_TValue** %2, align 4, !dbg !1180
  %6 = call i8* @luaT_objtypename(%struct.lua_State* %4, %struct.lua_TValue* %5), !dbg !1180
  store i8* %6, i8** %t1, align 4, !dbg !1180
  call void @llvm.dbg.declare(metadata !{i8** %t2}, metadata !1181), !dbg !1182
  %7 = load %struct.lua_State** %1, align 4, !dbg !1183
  %8 = load %struct.lua_TValue** %3, align 4, !dbg !1183
  %9 = call i8* @luaT_objtypename(%struct.lua_State* %7, %struct.lua_TValue* %8), !dbg !1183
  store i8* %9, i8** %t2, align 4, !dbg !1183
  %10 = load i8** %t1, align 4, !dbg !1184
  %11 = load i8** %t2, align 4, !dbg !1184
  %12 = call i32 @strcmp(i8* %10, i8* %11) #7, !dbg !1184
  %13 = icmp eq i32 %12, 0, !dbg !1184
  br i1 %13, label %14, label %17, !dbg !1184

; <label>:14                                      ; preds = %0
  %15 = load %struct.lua_State** %1, align 4, !dbg !1186
  %16 = load i8** %t1, align 4, !dbg !1186
  call void (%struct.lua_State*, i8*, ...)* @luaG_runerror(%struct.lua_State* %15, i8* getelementptr inbounds ([33 x i8]* @.str3, i32 0, i32 0), i8* %16) #8, !dbg !1186
  unreachable, !dbg !1186

; <label>:17                                      ; preds = %0
  %18 = load %struct.lua_State** %1, align 4, !dbg !1187
  %19 = load i8** %t1, align 4, !dbg !1187
  %20 = load i8** %t2, align 4, !dbg !1187
  call void (%struct.lua_State*, i8*, ...)* @luaG_runerror(%struct.lua_State* %18, i8* getelementptr inbounds ([30 x i8]* @.str4, i32 0, i32 0), i8* %19, i8* %20) #8, !dbg !1187
  unreachable, !dbg !1187
                                                  ; No predecessors!
  ret void, !dbg !1188
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

; Function Attrs: nounwind
define hidden i8* @luaG_addinfo(%struct.lua_State* %L, i8* %msg, %struct.TString* %src, i32 %line) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca i8*, align 4
  %3 = alloca %struct.TString*, align 4
  %4 = alloca i32, align 4
  %buff = alloca [60 x i8], align 1
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !1189), !dbg !1190
  store i8* %msg, i8** %2, align 4
  call void @llvm.dbg.declare(metadata !{i8** %2}, metadata !1191), !dbg !1192
  store %struct.TString* %src, %struct.TString** %3, align 4
  call void @llvm.dbg.declare(metadata !{%struct.TString** %3}, metadata !1193), !dbg !1194
  store i32 %line, i32* %4, align 4
  call void @llvm.dbg.declare(metadata !{i32* %4}, metadata !1195), !dbg !1196
  call void @llvm.dbg.declare(metadata !{[60 x i8]* %buff}, metadata !1197), !dbg !1198
  %5 = load %struct.TString** %3, align 4, !dbg !1199
  %6 = icmp ne %struct.TString* %5, null, !dbg !1199
  br i1 %6, label %7, label %12, !dbg !1199

; <label>:7                                       ; preds = %0
  %8 = getelementptr inbounds [60 x i8]* %buff, i32 0, i32 0, !dbg !1201
  %9 = load %struct.TString** %3, align 4, !dbg !1201
  %10 = bitcast %struct.TString* %9 to i8*, !dbg !1201
  %11 = getelementptr inbounds i8* %10, i32 16, !dbg !1201
  call void @luaO_chunkid(i8* %8, i8* %11, i32 60), !dbg !1201
  br label %15, !dbg !1201

; <label>:12                                      ; preds = %0
  %13 = getelementptr inbounds [60 x i8]* %buff, i32 0, i32 0, !dbg !1202
  store i8 63, i8* %13, align 1, !dbg !1202
  %14 = getelementptr inbounds [60 x i8]* %buff, i32 0, i32 1, !dbg !1204
  store i8 0, i8* %14, align 1, !dbg !1204
  br label %15

; <label>:15                                      ; preds = %12, %7
  %16 = load %struct.lua_State** %1, align 4, !dbg !1205
  %17 = getelementptr inbounds [60 x i8]* %buff, i32 0, i32 0, !dbg !1205
  %18 = load i32* %4, align 4, !dbg !1205
  %19 = load i8** %2, align 4, !dbg !1205
  %20 = call i8* (%struct.lua_State*, i8*, ...)* @luaO_pushfstring(%struct.lua_State* %16, i8* getelementptr inbounds ([10 x i8]* @.str5, i32 0, i32 0), i8* %17, i32 %18, i8* %19), !dbg !1205
  ret i8* %20, !dbg !1205
}

declare hidden void @luaO_chunkid(i8*, i8*, i32) #2

declare hidden i8* @luaO_pushfstring(%struct.lua_State*, i8*, ...) #2

; Function Attrs: noreturn nounwind
define hidden void @luaG_errormsg(%struct.lua_State* %L) #5 {
  %1 = alloca %struct.lua_State*, align 4
  %errfunc = alloca %struct.lua_TValue*, align 4
  %io1 = alloca %struct.lua_TValue*, align 4
  %io11 = alloca %struct.lua_TValue*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !1206), !dbg !1207
  %2 = load %struct.lua_State** %1, align 4, !dbg !1208
  %3 = getelementptr inbounds %struct.lua_State* %2, i32 0, i32 17, !dbg !1208
  %4 = load i32* %3, align 4, !dbg !1208
  %5 = icmp ne i32 %4, 0, !dbg !1208
  br i1 %5, label %6, label %45, !dbg !1208

; <label>:6                                       ; preds = %0
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %errfunc}, metadata !1210), !dbg !1212
  %7 = load %struct.lua_State** %1, align 4, !dbg !1213
  %8 = getelementptr inbounds %struct.lua_State* %7, i32 0, i32 10, !dbg !1213
  %9 = load %struct.lua_TValue** %8, align 4, !dbg !1213
  %10 = bitcast %struct.lua_TValue* %9 to i8*, !dbg !1213
  %11 = load %struct.lua_State** %1, align 4, !dbg !1213
  %12 = getelementptr inbounds %struct.lua_State* %11, i32 0, i32 17, !dbg !1213
  %13 = load i32* %12, align 4, !dbg !1213
  %14 = getelementptr inbounds i8* %10, i32 %13, !dbg !1213
  %15 = bitcast i8* %14 to %struct.lua_TValue*, !dbg !1213
  store %struct.lua_TValue* %15, %struct.lua_TValue** %errfunc, align 4, !dbg !1213
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %io1}, metadata !1214), !dbg !1216
  %16 = load %struct.lua_State** %1, align 4, !dbg !1216
  %17 = getelementptr inbounds %struct.lua_State* %16, i32 0, i32 5, !dbg !1216
  %18 = load %struct.lua_TValue** %17, align 4, !dbg !1216
  store %struct.lua_TValue* %18, %struct.lua_TValue** %io1, align 4, !dbg !1216
  %19 = load %struct.lua_TValue** %io1, align 4, !dbg !1216
  %20 = load %struct.lua_State** %1, align 4, !dbg !1216
  %21 = getelementptr inbounds %struct.lua_State* %20, i32 0, i32 5, !dbg !1216
  %22 = load %struct.lua_TValue** %21, align 4, !dbg !1216
  %23 = getelementptr inbounds %struct.lua_TValue* %22, i32 -1, !dbg !1216
  %24 = bitcast %struct.lua_TValue* %19 to i8*, !dbg !1216
  %25 = bitcast %struct.lua_TValue* %23 to i8*, !dbg !1216
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %24, i8* %25, i32 16, i32 8, i1 false), !dbg !1216
  %26 = load %struct.lua_State** %1, align 4, !dbg !1216
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %io11}, metadata !1217), !dbg !1219
  %27 = load %struct.lua_State** %1, align 4, !dbg !1219
  %28 = getelementptr inbounds %struct.lua_State* %27, i32 0, i32 5, !dbg !1219
  %29 = load %struct.lua_TValue** %28, align 4, !dbg !1219
  %30 = getelementptr inbounds %struct.lua_TValue* %29, i32 -1, !dbg !1219
  store %struct.lua_TValue* %30, %struct.lua_TValue** %io11, align 4, !dbg !1219
  %31 = load %struct.lua_TValue** %io11, align 4, !dbg !1219
  %32 = load %struct.lua_TValue** %errfunc, align 4, !dbg !1219
  %33 = bitcast %struct.lua_TValue* %31 to i8*, !dbg !1219
  %34 = bitcast %struct.lua_TValue* %32 to i8*, !dbg !1219
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %33, i8* %34, i32 16, i32 8, i1 false), !dbg !1219
  %35 = load %struct.lua_State** %1, align 4, !dbg !1219
  %36 = load %struct.lua_State** %1, align 4, !dbg !1220
  %37 = getelementptr inbounds %struct.lua_State* %36, i32 0, i32 5, !dbg !1220
  %38 = load %struct.lua_TValue** %37, align 4, !dbg !1220
  %39 = getelementptr inbounds %struct.lua_TValue* %38, i32 1, !dbg !1220
  store %struct.lua_TValue* %39, %struct.lua_TValue** %37, align 4, !dbg !1220
  %40 = load %struct.lua_State** %1, align 4, !dbg !1221
  %41 = load %struct.lua_State** %1, align 4, !dbg !1221
  %42 = getelementptr inbounds %struct.lua_State* %41, i32 0, i32 5, !dbg !1221
  %43 = load %struct.lua_TValue** %42, align 4, !dbg !1221
  %44 = getelementptr inbounds %struct.lua_TValue* %43, i32 -2, !dbg !1221
  call void @luaD_callnoyield(%struct.lua_State* %40, %struct.lua_TValue* %44, i32 1), !dbg !1221
  br label %45, !dbg !1222

; <label>:45                                      ; preds = %6, %0
  %46 = load %struct.lua_State** %1, align 4, !dbg !1223
  call void @luaD_throw(%struct.lua_State* %46, i32 2) #8, !dbg !1223
  unreachable, !dbg !1223
                                                  ; No predecessors!
  ret void, !dbg !1224
}

declare hidden void @luaD_callnoyield(%struct.lua_State*, %struct.lua_TValue*, i32) #2

; Function Attrs: noreturn
declare hidden void @luaD_throw(%struct.lua_State*, i32) #6

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #3

declare hidden i8* @luaO_pushvfstring(%struct.lua_State*, i8*, { [1 x i32] }) #2

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #3

; Function Attrs: nounwind
define internal i32 @currentline(%struct.CallInfo* %ci) #0 {
  %1 = alloca %struct.CallInfo*, align 4
  store %struct.CallInfo* %ci, %struct.CallInfo** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.CallInfo** %1}, metadata !1225), !dbg !1226
  %2 = load %struct.CallInfo** %1, align 4, !dbg !1227
  %3 = getelementptr inbounds %struct.CallInfo* %2, i32 0, i32 0, !dbg !1227
  %4 = load %struct.lua_TValue** %3, align 4, !dbg !1227
  %5 = getelementptr inbounds %struct.lua_TValue* %4, i32 0, i32 0, !dbg !1227
  %6 = bitcast %union.Value* %5 to %struct.GCObject**, !dbg !1227
  %7 = load %struct.GCObject** %6, align 4, !dbg !1227
  %8 = bitcast %struct.GCObject* %7 to %union.GCUnion*, !dbg !1227
  %9 = bitcast %union.GCUnion* %8 to %union.Closure*, !dbg !1227
  %10 = bitcast %union.Closure* %9 to %struct.LClosure*, !dbg !1227
  %11 = getelementptr inbounds %struct.LClosure* %10, i32 0, i32 5, !dbg !1227
  %12 = load %struct.Proto** %11, align 4, !dbg !1227
  %13 = getelementptr inbounds %struct.Proto* %12, i32 0, i32 17, !dbg !1227
  %14 = load i32** %13, align 4, !dbg !1227
  %15 = icmp ne i32* %14, null, !dbg !1227
  br i1 %15, label %16, label %34, !dbg !1227

; <label>:16                                      ; preds = %0
  %17 = load %struct.CallInfo** %1, align 4, !dbg !1228
  %18 = call i32 @currentpc(%struct.CallInfo* %17), !dbg !1228
  %19 = load %struct.CallInfo** %1, align 4, !dbg !1228
  %20 = getelementptr inbounds %struct.CallInfo* %19, i32 0, i32 0, !dbg !1228
  %21 = load %struct.lua_TValue** %20, align 4, !dbg !1228
  %22 = getelementptr inbounds %struct.lua_TValue* %21, i32 0, i32 0, !dbg !1228
  %23 = bitcast %union.Value* %22 to %struct.GCObject**, !dbg !1228
  %24 = load %struct.GCObject** %23, align 4, !dbg !1228
  %25 = bitcast %struct.GCObject* %24 to %union.GCUnion*, !dbg !1228
  %26 = bitcast %union.GCUnion* %25 to %union.Closure*, !dbg !1228
  %27 = bitcast %union.Closure* %26 to %struct.LClosure*, !dbg !1228
  %28 = getelementptr inbounds %struct.LClosure* %27, i32 0, i32 5, !dbg !1228
  %29 = load %struct.Proto** %28, align 4, !dbg !1228
  %30 = getelementptr inbounds %struct.Proto* %29, i32 0, i32 17, !dbg !1228
  %31 = load i32** %30, align 4, !dbg !1228
  %32 = getelementptr inbounds i32* %31, i32 %18, !dbg !1228
  %33 = load i32* %32, align 4, !dbg !1228
  br label %35, !dbg !1228

; <label>:34                                      ; preds = %0
  br label %35, !dbg !1230

; <label>:35                                      ; preds = %34, %16
  %36 = phi i32 [ %33, %16 ], [ -1, %34 ], !dbg !1232
  ret i32 %36, !dbg !1233
}

; Function Attrs: nounwind
define hidden void @luaG_traceexec(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %ci = alloca %struct.CallInfo*, align 4
  %mask = alloca i8, align 1
  %counthook = alloca i32, align 4
  %p = alloca %struct.Proto*, align 4
  %npc = alloca i32, align 4
  %newline = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !1236), !dbg !1237
  call void @llvm.dbg.declare(metadata !{%struct.CallInfo** %ci}, metadata !1238), !dbg !1239
  %2 = load %struct.lua_State** %1, align 4, !dbg !1240
  %3 = getelementptr inbounds %struct.lua_State* %2, i32 0, i32 7, !dbg !1240
  %4 = load %struct.CallInfo** %3, align 4, !dbg !1240
  store %struct.CallInfo* %4, %struct.CallInfo** %ci, align 4, !dbg !1240
  call void @llvm.dbg.declare(metadata !{i8* %mask}, metadata !1241), !dbg !1242
  %5 = load %struct.lua_State** %1, align 4, !dbg !1243
  %6 = getelementptr inbounds %struct.lua_State* %5, i32 0, i32 23, !dbg !1243
  %7 = load i32* %6, align 4, !dbg !1243
  %8 = trunc i32 %7 to i8, !dbg !1243
  store i8 %8, i8* %mask, align 1, !dbg !1243
  call void @llvm.dbg.declare(metadata !{i32* %counthook}, metadata !1244), !dbg !1245
  %9 = load %struct.lua_State** %1, align 4, !dbg !1246
  %10 = getelementptr inbounds %struct.lua_State* %9, i32 0, i32 20, !dbg !1246
  %11 = load i32* %10, align 4, !dbg !1246
  %12 = add nsw i32 %11, -1, !dbg !1246
  store i32 %12, i32* %10, align 4, !dbg !1246
  %13 = icmp eq i32 %12, 0, !dbg !1246
  br i1 %13, label %14, label %19, !dbg !1246

; <label>:14                                      ; preds = %0
  %15 = load i8* %mask, align 1, !dbg !1247
  %16 = zext i8 %15 to i32, !dbg !1247
  %17 = and i32 %16, 8, !dbg !1247
  %18 = icmp ne i32 %17, 0, !dbg !1247
  br label %19

; <label>:19                                      ; preds = %14, %0
  %20 = phi i1 [ false, %0 ], [ %18, %14 ]
  %21 = zext i1 %20 to i32, !dbg !1249
  store i32 %21, i32* %counthook, align 4, !dbg !1249
  %22 = load i32* %counthook, align 4, !dbg !1251
  %23 = icmp ne i32 %22, 0, !dbg !1251
  br i1 %23, label %24, label %30, !dbg !1251

; <label>:24                                      ; preds = %19
  %25 = load %struct.lua_State** %1, align 4, !dbg !1253
  %26 = getelementptr inbounds %struct.lua_State* %25, i32 0, i32 19, !dbg !1253
  %27 = load i32* %26, align 4, !dbg !1253
  %28 = load %struct.lua_State** %1, align 4, !dbg !1253
  %29 = getelementptr inbounds %struct.lua_State* %28, i32 0, i32 20, !dbg !1253
  store i32 %27, i32* %29, align 4, !dbg !1253
  br label %37, !dbg !1253

; <label>:30                                      ; preds = %19
  %31 = load i8* %mask, align 1, !dbg !1254
  %32 = zext i8 %31 to i32, !dbg !1254
  %33 = and i32 %32, 4, !dbg !1254
  %34 = icmp ne i32 %33, 0, !dbg !1254
  br i1 %34, label %36, label %35, !dbg !1254

; <label>:35                                      ; preds = %30
  br label %182, !dbg !1256

; <label>:36                                      ; preds = %30
  br label %37

; <label>:37                                      ; preds = %36, %24
  %38 = load %struct.CallInfo** %ci, align 4, !dbg !1257
  %39 = getelementptr inbounds %struct.CallInfo* %38, i32 0, i32 7, !dbg !1257
  %40 = load i8* %39, align 1, !dbg !1257
  %41 = zext i8 %40 to i32, !dbg !1257
  %42 = and i32 %41, 64, !dbg !1257
  %43 = icmp ne i32 %42, 0, !dbg !1257
  br i1 %43, label %44, label %51, !dbg !1257

; <label>:44                                      ; preds = %37
  %45 = load %struct.CallInfo** %ci, align 4, !dbg !1259
  %46 = getelementptr inbounds %struct.CallInfo* %45, i32 0, i32 7, !dbg !1259
  %47 = load i8* %46, align 1, !dbg !1259
  %48 = zext i8 %47 to i32, !dbg !1259
  %49 = and i32 %48, -65, !dbg !1259
  %50 = trunc i32 %49 to i8, !dbg !1259
  store i8 %50, i8* %46, align 1, !dbg !1259
  br label %182, !dbg !1261

; <label>:51                                      ; preds = %37
  %52 = load i32* %counthook, align 4, !dbg !1262
  %53 = icmp ne i32 %52, 0, !dbg !1262
  br i1 %53, label %54, label %56, !dbg !1262

; <label>:54                                      ; preds = %51
  %55 = load %struct.lua_State** %1, align 4, !dbg !1264
  call void @luaD_hook(%struct.lua_State* %55, i32 3, i32 -1), !dbg !1264
  br label %56, !dbg !1264

; <label>:56                                      ; preds = %54, %51
  %57 = load i8* %mask, align 1, !dbg !1265
  %58 = zext i8 %57 to i32, !dbg !1265
  %59 = and i32 %58, 4, !dbg !1265
  %60 = icmp ne i32 %59, 0, !dbg !1265
  br i1 %60, label %61, label %143, !dbg !1265

; <label>:61                                      ; preds = %56
  call void @llvm.dbg.declare(metadata !{%struct.Proto** %p}, metadata !1267), !dbg !1269
  %62 = load %struct.CallInfo** %ci, align 4, !dbg !1270
  %63 = getelementptr inbounds %struct.CallInfo* %62, i32 0, i32 0, !dbg !1270
  %64 = load %struct.lua_TValue** %63, align 4, !dbg !1270
  %65 = getelementptr inbounds %struct.lua_TValue* %64, i32 0, i32 0, !dbg !1270
  %66 = bitcast %union.Value* %65 to %struct.GCObject**, !dbg !1270
  %67 = load %struct.GCObject** %66, align 4, !dbg !1270
  %68 = bitcast %struct.GCObject* %67 to %union.GCUnion*, !dbg !1270
  %69 = bitcast %union.GCUnion* %68 to %union.Closure*, !dbg !1270
  %70 = bitcast %union.Closure* %69 to %struct.LClosure*, !dbg !1270
  %71 = getelementptr inbounds %struct.LClosure* %70, i32 0, i32 5, !dbg !1270
  %72 = load %struct.Proto** %71, align 4, !dbg !1270
  store %struct.Proto* %72, %struct.Proto** %p, align 4, !dbg !1270
  call void @llvm.dbg.declare(metadata !{i32* %npc}, metadata !1271), !dbg !1272
  %73 = load %struct.CallInfo** %ci, align 4, !dbg !1273
  %74 = getelementptr inbounds %struct.CallInfo* %73, i32 0, i32 4, !dbg !1273
  %75 = bitcast %union.anon.0* %74 to %struct.anon.1*, !dbg !1273
  %76 = getelementptr inbounds %struct.anon.1* %75, i32 0, i32 1, !dbg !1273
  %77 = load i32** %76, align 4, !dbg !1273
  %78 = load %struct.Proto** %p, align 4, !dbg !1273
  %79 = getelementptr inbounds %struct.Proto* %78, i32 0, i32 15, !dbg !1273
  %80 = load i32** %79, align 4, !dbg !1273
  %81 = ptrtoint i32* %77 to i32, !dbg !1273
  %82 = ptrtoint i32* %80 to i32, !dbg !1273
  %83 = sub i32 %81, %82, !dbg !1273
  %84 = sdiv exact i32 %83, 4, !dbg !1273
  %85 = sub nsw i32 %84, 1, !dbg !1273
  store i32 %85, i32* %npc, align 4, !dbg !1273
  call void @llvm.dbg.declare(metadata !{i32* %newline}, metadata !1274), !dbg !1275
  %86 = load %struct.Proto** %p, align 4, !dbg !1276
  %87 = getelementptr inbounds %struct.Proto* %86, i32 0, i32 17, !dbg !1276
  %88 = load i32** %87, align 4, !dbg !1276
  %89 = icmp ne i32* %88, null, !dbg !1276
  br i1 %89, label %90, label %97, !dbg !1276

; <label>:90                                      ; preds = %61
  %91 = load i32* %npc, align 4, !dbg !1277
  %92 = load %struct.Proto** %p, align 4, !dbg !1277
  %93 = getelementptr inbounds %struct.Proto* %92, i32 0, i32 17, !dbg !1277
  %94 = load i32** %93, align 4, !dbg !1277
  %95 = getelementptr inbounds i32* %94, i32 %91, !dbg !1277
  %96 = load i32* %95, align 4, !dbg !1277
  br label %98, !dbg !1277

; <label>:97                                      ; preds = %61
  br label %98, !dbg !1279

; <label>:98                                      ; preds = %97, %90
  %99 = phi i32 [ %96, %90 ], [ -1, %97 ], !dbg !1276
  store i32 %99, i32* %newline, align 4, !dbg !1281
  %100 = load i32* %npc, align 4, !dbg !1284
  %101 = icmp eq i32 %100, 0, !dbg !1284
  br i1 %101, label %139, label %102, !dbg !1284

; <label>:102                                     ; preds = %98
  %103 = load %struct.CallInfo** %ci, align 4, !dbg !1286
  %104 = getelementptr inbounds %struct.CallInfo* %103, i32 0, i32 4, !dbg !1286
  %105 = bitcast %union.anon.0* %104 to %struct.anon.1*, !dbg !1286
  %106 = getelementptr inbounds %struct.anon.1* %105, i32 0, i32 1, !dbg !1286
  %107 = load i32** %106, align 4, !dbg !1286
  %108 = load %struct.lua_State** %1, align 4, !dbg !1286
  %109 = getelementptr inbounds %struct.lua_State* %108, i32 0, i32 8, !dbg !1286
  %110 = load i32** %109, align 4, !dbg !1286
  %111 = icmp ule i32* %107, %110, !dbg !1286
  br i1 %111, label %139, label %112, !dbg !1286

; <label>:112                                     ; preds = %102
  %113 = load i32* %newline, align 4, !dbg !1288
  %114 = load %struct.Proto** %p, align 4, !dbg !1288
  %115 = getelementptr inbounds %struct.Proto* %114, i32 0, i32 17, !dbg !1288
  %116 = load i32** %115, align 4, !dbg !1288
  %117 = icmp ne i32* %116, null, !dbg !1288
  br i1 %117, label %118, label %135, !dbg !1288

; <label>:118                                     ; preds = %112
  %119 = load %struct.lua_State** %1, align 4, !dbg !1290
  %120 = getelementptr inbounds %struct.lua_State* %119, i32 0, i32 8, !dbg !1290
  %121 = load i32** %120, align 4, !dbg !1290
  %122 = load %struct.Proto** %p, align 4, !dbg !1290
  %123 = getelementptr inbounds %struct.Proto* %122, i32 0, i32 15, !dbg !1290
  %124 = load i32** %123, align 4, !dbg !1290
  %125 = ptrtoint i32* %121 to i32, !dbg !1290
  %126 = ptrtoint i32* %124 to i32, !dbg !1290
  %127 = sub i32 %125, %126, !dbg !1290
  %128 = sdiv exact i32 %127, 4, !dbg !1290
  %129 = sub nsw i32 %128, 1, !dbg !1290
  %130 = load %struct.Proto** %p, align 4, !dbg !1290
  %131 = getelementptr inbounds %struct.Proto* %130, i32 0, i32 17, !dbg !1290
  %132 = load i32** %131, align 4, !dbg !1290
  %133 = getelementptr inbounds i32* %132, i32 %129, !dbg !1290
  %134 = load i32* %133, align 4, !dbg !1290
  br label %136, !dbg !1290

; <label>:135                                     ; preds = %112
  br label %136, !dbg !1292

; <label>:136                                     ; preds = %135, %118
  %137 = phi i32 [ %134, %118 ], [ -1, %135 ], !dbg !1284
  %138 = icmp ne i32 %113, %137, !dbg !1294
  br i1 %138, label %139, label %142, !dbg !1294

; <label>:139                                     ; preds = %136, %102, %98
  %140 = load %struct.lua_State** %1, align 4, !dbg !1297
  %141 = load i32* %newline, align 4, !dbg !1297
  call void @luaD_hook(%struct.lua_State* %140, i32 2, i32 %141), !dbg !1297
  br label %142, !dbg !1297

; <label>:142                                     ; preds = %139, %136
  br label %143, !dbg !1298

; <label>:143                                     ; preds = %142, %56
  %144 = load %struct.CallInfo** %ci, align 4, !dbg !1299
  %145 = getelementptr inbounds %struct.CallInfo* %144, i32 0, i32 4, !dbg !1299
  %146 = bitcast %union.anon.0* %145 to %struct.anon.1*, !dbg !1299
  %147 = getelementptr inbounds %struct.anon.1* %146, i32 0, i32 1, !dbg !1299
  %148 = load i32** %147, align 4, !dbg !1299
  %149 = load %struct.lua_State** %1, align 4, !dbg !1299
  %150 = getelementptr inbounds %struct.lua_State* %149, i32 0, i32 8, !dbg !1299
  store i32* %148, i32** %150, align 4, !dbg !1299
  %151 = load %struct.lua_State** %1, align 4, !dbg !1300
  %152 = getelementptr inbounds %struct.lua_State* %151, i32 0, i32 4, !dbg !1300
  %153 = load i8* %152, align 1, !dbg !1300
  %154 = zext i8 %153 to i32, !dbg !1300
  %155 = icmp eq i32 %154, 1, !dbg !1300
  br i1 %155, label %156, label %182, !dbg !1300

; <label>:156                                     ; preds = %143
  %157 = load i32* %counthook, align 4, !dbg !1302
  %158 = icmp ne i32 %157, 0, !dbg !1302
  br i1 %158, label %159, label %162, !dbg !1302

; <label>:159                                     ; preds = %156
  %160 = load %struct.lua_State** %1, align 4, !dbg !1305
  %161 = getelementptr inbounds %struct.lua_State* %160, i32 0, i32 20, !dbg !1305
  store i32 1, i32* %161, align 4, !dbg !1305
  br label %162, !dbg !1305

; <label>:162                                     ; preds = %159, %156
  %163 = load %struct.CallInfo** %ci, align 4, !dbg !1306
  %164 = getelementptr inbounds %struct.CallInfo* %163, i32 0, i32 4, !dbg !1306
  %165 = bitcast %union.anon.0* %164 to %struct.anon.1*, !dbg !1306
  %166 = getelementptr inbounds %struct.anon.1* %165, i32 0, i32 1, !dbg !1306
  %167 = load i32** %166, align 4, !dbg !1306
  %168 = getelementptr inbounds i32* %167, i32 -1, !dbg !1306
  store i32* %168, i32** %166, align 4, !dbg !1306
  %169 = load %struct.CallInfo** %ci, align 4, !dbg !1307
  %170 = getelementptr inbounds %struct.CallInfo* %169, i32 0, i32 7, !dbg !1307
  %171 = load i8* %170, align 1, !dbg !1307
  %172 = zext i8 %171 to i32, !dbg !1307
  %173 = or i32 %172, 64, !dbg !1307
  %174 = trunc i32 %173 to i8, !dbg !1307
  store i8 %174, i8* %170, align 1, !dbg !1307
  %175 = load %struct.lua_State** %1, align 4, !dbg !1308
  %176 = getelementptr inbounds %struct.lua_State* %175, i32 0, i32 5, !dbg !1308
  %177 = load %struct.lua_TValue** %176, align 4, !dbg !1308
  %178 = getelementptr inbounds %struct.lua_TValue* %177, i32 -1, !dbg !1308
  %179 = load %struct.CallInfo** %ci, align 4, !dbg !1308
  %180 = getelementptr inbounds %struct.CallInfo* %179, i32 0, i32 0, !dbg !1308
  store %struct.lua_TValue* %178, %struct.lua_TValue** %180, align 4, !dbg !1308
  %181 = load %struct.lua_State** %1, align 4, !dbg !1309
  call void @luaD_throw(%struct.lua_State* %181, i32 1) #8, !dbg !1309
  unreachable, !dbg !1309

; <label>:182                                     ; preds = %35, %44, %143
  ret void, !dbg !1310
}

declare hidden void @luaD_hook(%struct.lua_State*, i32, i32) #2

; Function Attrs: nounwind
define internal i32 @currentpc(%struct.CallInfo* %ci) #0 {
  %1 = alloca %struct.CallInfo*, align 4
  store %struct.CallInfo* %ci, %struct.CallInfo** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.CallInfo** %1}, metadata !1311), !dbg !1312
  %2 = load %struct.CallInfo** %1, align 4, !dbg !1313
  %3 = getelementptr inbounds %struct.CallInfo* %2, i32 0, i32 4, !dbg !1313
  %4 = bitcast %union.anon.0* %3 to %struct.anon.1*, !dbg !1313
  %5 = getelementptr inbounds %struct.anon.1* %4, i32 0, i32 1, !dbg !1313
  %6 = load i32** %5, align 4, !dbg !1313
  %7 = load %struct.CallInfo** %1, align 4, !dbg !1313
  %8 = getelementptr inbounds %struct.CallInfo* %7, i32 0, i32 0, !dbg !1313
  %9 = load %struct.lua_TValue** %8, align 4, !dbg !1313
  %10 = getelementptr inbounds %struct.lua_TValue* %9, i32 0, i32 0, !dbg !1313
  %11 = bitcast %union.Value* %10 to %struct.GCObject**, !dbg !1313
  %12 = load %struct.GCObject** %11, align 4, !dbg !1313
  %13 = bitcast %struct.GCObject* %12 to %union.GCUnion*, !dbg !1313
  %14 = bitcast %union.GCUnion* %13 to %union.Closure*, !dbg !1313
  %15 = bitcast %union.Closure* %14 to %struct.LClosure*, !dbg !1313
  %16 = getelementptr inbounds %struct.LClosure* %15, i32 0, i32 5, !dbg !1313
  %17 = load %struct.Proto** %16, align 4, !dbg !1313
  %18 = getelementptr inbounds %struct.Proto* %17, i32 0, i32 15, !dbg !1313
  %19 = load i32** %18, align 4, !dbg !1313
  %20 = ptrtoint i32* %6 to i32, !dbg !1313
  %21 = ptrtoint i32* %19 to i32, !dbg !1313
  %22 = sub i32 %20, %21, !dbg !1313
  %23 = sdiv exact i32 %22, 4, !dbg !1313
  %24 = sub nsw i32 %23, 1, !dbg !1313
  ret i32 %24, !dbg !1313
}

; Function Attrs: nounwind
define internal i8* @getupvalname(%struct.CallInfo* %ci, %struct.lua_TValue* %o, i8** %name) #0 {
  %1 = alloca i8*, align 4
  %2 = alloca %struct.CallInfo*, align 4
  %3 = alloca %struct.lua_TValue*, align 4
  %4 = alloca i8**, align 4
  %c = alloca %struct.LClosure*, align 4
  %i = alloca i32, align 4
  store %struct.CallInfo* %ci, %struct.CallInfo** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.CallInfo** %2}, metadata !1314), !dbg !1315
  store %struct.lua_TValue* %o, %struct.lua_TValue** %3, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %3}, metadata !1316), !dbg !1317
  store i8** %name, i8*** %4, align 4
  call void @llvm.dbg.declare(metadata !{i8*** %4}, metadata !1318), !dbg !1319
  call void @llvm.dbg.declare(metadata !{%struct.LClosure** %c}, metadata !1320), !dbg !1322
  %5 = load %struct.CallInfo** %2, align 4, !dbg !1323
  %6 = getelementptr inbounds %struct.CallInfo* %5, i32 0, i32 0, !dbg !1323
  %7 = load %struct.lua_TValue** %6, align 4, !dbg !1323
  %8 = getelementptr inbounds %struct.lua_TValue* %7, i32 0, i32 0, !dbg !1323
  %9 = bitcast %union.Value* %8 to %struct.GCObject**, !dbg !1323
  %10 = load %struct.GCObject** %9, align 4, !dbg !1323
  %11 = bitcast %struct.GCObject* %10 to %union.GCUnion*, !dbg !1323
  %12 = bitcast %union.GCUnion* %11 to %union.Closure*, !dbg !1323
  %13 = bitcast %union.Closure* %12 to %struct.LClosure*, !dbg !1323
  store %struct.LClosure* %13, %struct.LClosure** %c, align 4, !dbg !1323
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !1324), !dbg !1325
  store i32 0, i32* %i, align 4, !dbg !1326
  br label %14, !dbg !1326

; <label>:14                                      ; preds = %39, %0
  %15 = load i32* %i, align 4, !dbg !1328
  %16 = load %struct.LClosure** %c, align 4, !dbg !1328
  %17 = getelementptr inbounds %struct.LClosure* %16, i32 0, i32 3, !dbg !1328
  %18 = load i8* %17, align 1, !dbg !1328
  %19 = zext i8 %18 to i32, !dbg !1328
  %20 = icmp slt i32 %15, %19, !dbg !1328
  br i1 %20, label %21, label %42, !dbg !1328

; <label>:21                                      ; preds = %14
  %22 = load i32* %i, align 4, !dbg !1331
  %23 = load %struct.LClosure** %c, align 4, !dbg !1331
  %24 = getelementptr inbounds %struct.LClosure* %23, i32 0, i32 6, !dbg !1331
  %25 = getelementptr inbounds [1 x %struct.UpVal*]* %24, i32 0, i32 %22, !dbg !1331
  %26 = load %struct.UpVal** %25, align 4, !dbg !1331
  %27 = getelementptr inbounds %struct.UpVal* %26, i32 0, i32 0, !dbg !1331
  %28 = load %struct.lua_TValue** %27, align 4, !dbg !1331
  %29 = load %struct.lua_TValue** %3, align 4, !dbg !1331
  %30 = icmp eq %struct.lua_TValue* %28, %29, !dbg !1331
  br i1 %30, label %31, label %38, !dbg !1331

; <label>:31                                      ; preds = %21
  %32 = load %struct.LClosure** %c, align 4, !dbg !1334
  %33 = getelementptr inbounds %struct.LClosure* %32, i32 0, i32 5, !dbg !1334
  %34 = load %struct.Proto** %33, align 4, !dbg !1334
  %35 = load i32* %i, align 4, !dbg !1334
  %36 = call i8* @upvalname(%struct.Proto* %34, i32 %35), !dbg !1334
  %37 = load i8*** %4, align 4, !dbg !1334
  store i8* %36, i8** %37, align 4, !dbg !1334
  store i8* getelementptr inbounds ([8 x i8]* @.str12, i32 0, i32 0), i8** %1, !dbg !1336
  br label %43, !dbg !1336

; <label>:38                                      ; preds = %21
  br label %39, !dbg !1337

; <label>:39                                      ; preds = %38
  %40 = load i32* %i, align 4, !dbg !1338
  %41 = add nsw i32 %40, 1, !dbg !1338
  store i32 %41, i32* %i, align 4, !dbg !1338
  br label %14, !dbg !1338

; <label>:42                                      ; preds = %14
  store i8* null, i8** %1, !dbg !1339
  br label %43, !dbg !1339

; <label>:43                                      ; preds = %42, %31
  %44 = load i8** %1, !dbg !1340
  ret i8* %44, !dbg !1340
}

; Function Attrs: nounwind
define internal i32 @isinstack(%struct.CallInfo* %ci, %struct.lua_TValue* %o) #0 {
  %1 = alloca %struct.CallInfo*, align 4
  %2 = alloca %struct.lua_TValue*, align 4
  %i = alloca i32, align 4
  store %struct.CallInfo* %ci, %struct.CallInfo** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.CallInfo** %1}, metadata !1341), !dbg !1342
  store %struct.lua_TValue* %o, %struct.lua_TValue** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %2}, metadata !1343), !dbg !1344
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !1345), !dbg !1346
  %3 = load %struct.lua_TValue** %2, align 4, !dbg !1347
  %4 = load %struct.CallInfo** %1, align 4, !dbg !1347
  %5 = getelementptr inbounds %struct.CallInfo* %4, i32 0, i32 4, !dbg !1347
  %6 = bitcast %union.anon.0* %5 to %struct.anon.1*, !dbg !1347
  %7 = getelementptr inbounds %struct.anon.1* %6, i32 0, i32 0, !dbg !1347
  %8 = load %struct.lua_TValue** %7, align 4, !dbg !1347
  %9 = ptrtoint %struct.lua_TValue* %3 to i32, !dbg !1347
  %10 = ptrtoint %struct.lua_TValue* %8 to i32, !dbg !1347
  %11 = sub i32 %9, %10, !dbg !1347
  %12 = sdiv exact i32 %11, 16, !dbg !1347
  store i32 %12, i32* %i, align 4, !dbg !1347
  %13 = load i32* %i, align 4, !dbg !1348
  %14 = icmp sle i32 0, %13, !dbg !1348
  br i1 %14, label %15, label %40, !dbg !1348

; <label>:15                                      ; preds = %0
  %16 = load i32* %i, align 4, !dbg !1349
  %17 = load %struct.CallInfo** %1, align 4, !dbg !1349
  %18 = getelementptr inbounds %struct.CallInfo* %17, i32 0, i32 1, !dbg !1349
  %19 = load %struct.lua_TValue** %18, align 4, !dbg !1349
  %20 = load %struct.CallInfo** %1, align 4, !dbg !1349
  %21 = getelementptr inbounds %struct.CallInfo* %20, i32 0, i32 4, !dbg !1349
  %22 = bitcast %union.anon.0* %21 to %struct.anon.1*, !dbg !1349
  %23 = getelementptr inbounds %struct.anon.1* %22, i32 0, i32 0, !dbg !1349
  %24 = load %struct.lua_TValue** %23, align 4, !dbg !1349
  %25 = ptrtoint %struct.lua_TValue* %19 to i32, !dbg !1349
  %26 = ptrtoint %struct.lua_TValue* %24 to i32, !dbg !1349
  %27 = sub i32 %25, %26, !dbg !1349
  %28 = sdiv exact i32 %27, 16, !dbg !1349
  %29 = icmp slt i32 %16, %28, !dbg !1349
  br i1 %29, label %30, label %40, !dbg !1349

; <label>:30                                      ; preds = %15
  %31 = load %struct.CallInfo** %1, align 4, !dbg !1351
  %32 = getelementptr inbounds %struct.CallInfo* %31, i32 0, i32 4, !dbg !1351
  %33 = bitcast %union.anon.0* %32 to %struct.anon.1*, !dbg !1351
  %34 = getelementptr inbounds %struct.anon.1* %33, i32 0, i32 0, !dbg !1351
  %35 = load %struct.lua_TValue** %34, align 4, !dbg !1351
  %36 = load i32* %i, align 4, !dbg !1351
  %37 = getelementptr inbounds %struct.lua_TValue* %35, i32 %36, !dbg !1351
  %38 = load %struct.lua_TValue** %2, align 4, !dbg !1351
  %39 = icmp eq %struct.lua_TValue* %37, %38, !dbg !1351
  br label %40

; <label>:40                                      ; preds = %30, %15, %0
  %41 = phi i1 [ false, %15 ], [ false, %0 ], [ %39, %30 ]
  %42 = zext i1 %41 to i32, !dbg !1353
  ret i32 %42, !dbg !1353
}

; Function Attrs: nounwind
define internal i8* @getobjname(%struct.Proto* %p, i32 %lastpc, i32 %reg, i8** %name) #0 {
  %1 = alloca i8*, align 4
  %2 = alloca %struct.Proto*, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 4
  %pc = alloca i32, align 4
  %i = alloca i32, align 4
  %op = alloca i32, align 4
  %b = alloca i32, align 4
  %k = alloca i32, align 4
  %t = alloca i32, align 4
  %vn = alloca i8*, align 4
  %b1 = alloca i32, align 4
  %k2 = alloca i32, align 4
  store %struct.Proto* %p, %struct.Proto** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.Proto** %2}, metadata !1356), !dbg !1357
  store i32 %lastpc, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !1358), !dbg !1359
  store i32 %reg, i32* %4, align 4
  call void @llvm.dbg.declare(metadata !{i32* %4}, metadata !1360), !dbg !1361
  store i8** %name, i8*** %5, align 4
  call void @llvm.dbg.declare(metadata !{i8*** %5}, metadata !1362), !dbg !1363
  call void @llvm.dbg.declare(metadata !{i32* %pc}, metadata !1364), !dbg !1365
  %6 = load %struct.Proto** %2, align 4, !dbg !1366
  %7 = load i32* %4, align 4, !dbg !1366
  %8 = add nsw i32 %7, 1, !dbg !1366
  %9 = load i32* %3, align 4, !dbg !1366
  %10 = call i8* @luaF_getlocalname(%struct.Proto* %6, i32 %8, i32 %9), !dbg !1366
  %11 = load i8*** %5, align 4, !dbg !1366
  store i8* %10, i8** %11, align 4, !dbg !1366
  %12 = load i8*** %5, align 4, !dbg !1367
  %13 = load i8** %12, align 4, !dbg !1367
  %14 = icmp ne i8* %13, null, !dbg !1367
  br i1 %14, label %15, label %16, !dbg !1367

; <label>:15                                      ; preds = %0
  store i8* getelementptr inbounds ([6 x i8]* @.str8, i32 0, i32 0), i8** %1, !dbg !1369
  br label %145, !dbg !1369

; <label>:16                                      ; preds = %0
  %17 = load %struct.Proto** %2, align 4, !dbg !1370
  %18 = load i32* %3, align 4, !dbg !1370
  %19 = load i32* %4, align 4, !dbg !1370
  %20 = call i32 @findsetreg(%struct.Proto* %17, i32 %18, i32 %19), !dbg !1370
  store i32 %20, i32* %pc, align 4, !dbg !1370
  %21 = load i32* %pc, align 4, !dbg !1371
  %22 = icmp ne i32 %21, -1, !dbg !1371
  br i1 %22, label %23, label %144, !dbg !1371

; <label>:23                                      ; preds = %16
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !1373), !dbg !1375
  %24 = load i32* %pc, align 4, !dbg !1376
  %25 = load %struct.Proto** %2, align 4, !dbg !1376
  %26 = getelementptr inbounds %struct.Proto* %25, i32 0, i32 15, !dbg !1376
  %27 = load i32** %26, align 4, !dbg !1376
  %28 = getelementptr inbounds i32* %27, i32 %24, !dbg !1376
  %29 = load i32* %28, align 4, !dbg !1376
  store i32 %29, i32* %i, align 4, !dbg !1376
  call void @llvm.dbg.declare(metadata !{i32* %op}, metadata !1377), !dbg !1379
  %30 = load i32* %i, align 4, !dbg !1380
  %31 = lshr i32 %30, 0, !dbg !1380
  %32 = and i32 %31, 63, !dbg !1380
  store i32 %32, i32* %op, align 4, !dbg !1380
  %33 = load i32* %op, align 4, !dbg !1381
  switch i32 %33, label %142 [
    i32 0, label %34
    i32 6, label %50
    i32 7, label %50
    i32 5, label %84
    i32 1, label %91
    i32 2, label %91
    i32 12, label %134
  ], !dbg !1381

; <label>:34                                      ; preds = %23
  call void @llvm.dbg.declare(metadata !{i32* %b}, metadata !1382), !dbg !1385
  %35 = load i32* %i, align 4, !dbg !1386
  %36 = lshr i32 %35, 23, !dbg !1386
  %37 = and i32 %36, 511, !dbg !1386
  store i32 %37, i32* %b, align 4, !dbg !1386
  %38 = load i32* %b, align 4, !dbg !1387
  %39 = load i32* %i, align 4, !dbg !1387
  %40 = lshr i32 %39, 6, !dbg !1387
  %41 = and i32 %40, 255, !dbg !1387
  %42 = icmp slt i32 %38, %41, !dbg !1387
  br i1 %42, label %43, label %49, !dbg !1387

; <label>:43                                      ; preds = %34
  %44 = load %struct.Proto** %2, align 4, !dbg !1389
  %45 = load i32* %pc, align 4, !dbg !1389
  %46 = load i32* %b, align 4, !dbg !1389
  %47 = load i8*** %5, align 4, !dbg !1389
  %48 = call i8* @getobjname(%struct.Proto* %44, i32 %45, i32 %46, i8** %47), !dbg !1389
  store i8* %48, i8** %1, !dbg !1389
  br label %145, !dbg !1389

; <label>:49                                      ; preds = %34
  br label %143, !dbg !1390

; <label>:50                                      ; preds = %23, %23
  call void @llvm.dbg.declare(metadata !{i32* %k}, metadata !1391), !dbg !1393
  %51 = load i32* %i, align 4, !dbg !1394
  %52 = lshr i32 %51, 14, !dbg !1394
  %53 = and i32 %52, 511, !dbg !1394
  store i32 %53, i32* %k, align 4, !dbg !1394
  call void @llvm.dbg.declare(metadata !{i32* %t}, metadata !1395), !dbg !1396
  %54 = load i32* %i, align 4, !dbg !1397
  %55 = lshr i32 %54, 23, !dbg !1397
  %56 = and i32 %55, 511, !dbg !1397
  store i32 %56, i32* %t, align 4, !dbg !1397
  call void @llvm.dbg.declare(metadata !{i8** %vn}, metadata !1398), !dbg !1399
  %57 = load i32* %op, align 4, !dbg !1400
  %58 = icmp eq i32 %57, 7, !dbg !1400
  br i1 %58, label %59, label %65, !dbg !1400

; <label>:59                                      ; preds = %50
  %60 = load %struct.Proto** %2, align 4, !dbg !1401
  %61 = load i32* %t, align 4, !dbg !1401
  %62 = add nsw i32 %61, 1, !dbg !1401
  %63 = load i32* %pc, align 4, !dbg !1401
  %64 = call i8* @luaF_getlocalname(%struct.Proto* %60, i32 %62, i32 %63), !dbg !1401
  br label %69, !dbg !1401

; <label>:65                                      ; preds = %50
  %66 = load %struct.Proto** %2, align 4, !dbg !1402
  %67 = load i32* %t, align 4, !dbg !1402
  %68 = call i8* @upvalname(%struct.Proto* %66, i32 %67), !dbg !1402
  br label %69, !dbg !1402

; <label>:69                                      ; preds = %65, %59
  %70 = phi i8* [ %64, %59 ], [ %68, %65 ], !dbg !1402
  store i8* %70, i8** %vn, align 4, !dbg !1403
  %71 = load %struct.Proto** %2, align 4, !dbg !1405
  %72 = load i32* %pc, align 4, !dbg !1405
  %73 = load i32* %k, align 4, !dbg !1405
  %74 = load i8*** %5, align 4, !dbg !1405
  call void @kname(%struct.Proto* %71, i32 %72, i32 %73, i8** %74), !dbg !1405
  %75 = load i8** %vn, align 4, !dbg !1406
  %76 = icmp ne i8* %75, null, !dbg !1406
  br i1 %76, label %77, label %81, !dbg !1406

; <label>:77                                      ; preds = %69
  %78 = load i8** %vn, align 4, !dbg !1407
  %79 = call i32 @strcmp(i8* %78, i8* getelementptr inbounds ([5 x i8]* @.str9, i32 0, i32 0)) #7, !dbg !1407
  %80 = icmp eq i32 %79, 0, !dbg !1407
  br label %81

; <label>:81                                      ; preds = %77, %69
  %82 = phi i1 [ false, %69 ], [ %80, %77 ]
  %83 = select i1 %82, i8* getelementptr inbounds ([7 x i8]* @.str10, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str11, i32 0, i32 0), !dbg !1409
  store i8* %83, i8** %1, !dbg !1409
  br label %145, !dbg !1409

; <label>:84                                      ; preds = %23
  %85 = load %struct.Proto** %2, align 4, !dbg !1411
  %86 = load i32* %i, align 4, !dbg !1411
  %87 = lshr i32 %86, 23, !dbg !1411
  %88 = and i32 %87, 511, !dbg !1411
  %89 = call i8* @upvalname(%struct.Proto* %85, i32 %88), !dbg !1411
  %90 = load i8*** %5, align 4, !dbg !1411
  store i8* %89, i8** %90, align 4, !dbg !1411
  store i8* getelementptr inbounds ([8 x i8]* @.str12, i32 0, i32 0), i8** %1, !dbg !1413
  br label %145, !dbg !1413

; <label>:91                                      ; preds = %23, %23
  call void @llvm.dbg.declare(metadata !{i32* %b1}, metadata !1414), !dbg !1416
  %92 = load i32* %op, align 4, !dbg !1417
  %93 = icmp eq i32 %92, 1, !dbg !1417
  br i1 %93, label %94, label %98, !dbg !1417

; <label>:94                                      ; preds = %91
  %95 = load i32* %i, align 4, !dbg !1418
  %96 = lshr i32 %95, 14, !dbg !1418
  %97 = and i32 %96, 262143, !dbg !1418
  br label %108, !dbg !1418

; <label>:98                                      ; preds = %91
  %99 = load i32* %pc, align 4, !dbg !1420
  %100 = add nsw i32 %99, 1, !dbg !1420
  %101 = load %struct.Proto** %2, align 4, !dbg !1420
  %102 = getelementptr inbounds %struct.Proto* %101, i32 0, i32 15, !dbg !1420
  %103 = load i32** %102, align 4, !dbg !1420
  %104 = getelementptr inbounds i32* %103, i32 %100, !dbg !1420
  %105 = load i32* %104, align 4, !dbg !1420
  %106 = lshr i32 %105, 6, !dbg !1420
  %107 = and i32 %106, 67108863, !dbg !1420
  br label %108, !dbg !1420

; <label>:108                                     ; preds = %98, %94
  %109 = phi i32 [ %97, %94 ], [ %107, %98 ], !dbg !1417
  store i32 %109, i32* %b1, align 4, !dbg !1422
  %110 = load i32* %b1, align 4, !dbg !1425
  %111 = load %struct.Proto** %2, align 4, !dbg !1425
  %112 = getelementptr inbounds %struct.Proto* %111, i32 0, i32 14, !dbg !1425
  %113 = load %struct.lua_TValue** %112, align 4, !dbg !1425
  %114 = getelementptr inbounds %struct.lua_TValue* %113, i32 %110, !dbg !1425
  %115 = getelementptr inbounds %struct.lua_TValue* %114, i32 0, i32 1, !dbg !1425
  %116 = load i32* %115, align 4, !dbg !1425
  %117 = and i32 %116, 15, !dbg !1425
  %118 = icmp eq i32 %117, 4, !dbg !1425
  br i1 %118, label %119, label %133, !dbg !1425

; <label>:119                                     ; preds = %108
  %120 = load i32* %b1, align 4, !dbg !1427
  %121 = load %struct.Proto** %2, align 4, !dbg !1427
  %122 = getelementptr inbounds %struct.Proto* %121, i32 0, i32 14, !dbg !1427
  %123 = load %struct.lua_TValue** %122, align 4, !dbg !1427
  %124 = getelementptr inbounds %struct.lua_TValue* %123, i32 %120, !dbg !1427
  %125 = getelementptr inbounds %struct.lua_TValue* %124, i32 0, i32 0, !dbg !1427
  %126 = bitcast %union.Value* %125 to %struct.GCObject**, !dbg !1427
  %127 = load %struct.GCObject** %126, align 4, !dbg !1427
  %128 = bitcast %struct.GCObject* %127 to %union.GCUnion*, !dbg !1427
  %129 = bitcast %union.GCUnion* %128 to %struct.TString*, !dbg !1427
  %130 = bitcast %struct.TString* %129 to i8*, !dbg !1427
  %131 = getelementptr inbounds i8* %130, i32 16, !dbg !1427
  %132 = load i8*** %5, align 4, !dbg !1427
  store i8* %131, i8** %132, align 4, !dbg !1427
  store i8* getelementptr inbounds ([9 x i8]* @.str13, i32 0, i32 0), i8** %1, !dbg !1429
  br label %145, !dbg !1429

; <label>:133                                     ; preds = %108
  br label %143, !dbg !1430

; <label>:134                                     ; preds = %23
  call void @llvm.dbg.declare(metadata !{i32* %k2}, metadata !1431), !dbg !1433
  %135 = load i32* %i, align 4, !dbg !1434
  %136 = lshr i32 %135, 14, !dbg !1434
  %137 = and i32 %136, 511, !dbg !1434
  store i32 %137, i32* %k2, align 4, !dbg !1434
  %138 = load %struct.Proto** %2, align 4, !dbg !1435
  %139 = load i32* %pc, align 4, !dbg !1435
  %140 = load i32* %k2, align 4, !dbg !1435
  %141 = load i8*** %5, align 4, !dbg !1435
  call void @kname(%struct.Proto* %138, i32 %139, i32 %140, i8** %141), !dbg !1435
  store i8* getelementptr inbounds ([7 x i8]* @.str14, i32 0, i32 0), i8** %1, !dbg !1436
  br label %145, !dbg !1436

; <label>:142                                     ; preds = %23
  br label %143, !dbg !1437

; <label>:143                                     ; preds = %142, %133, %49
  br label %144, !dbg !1438

; <label>:144                                     ; preds = %143, %16
  store i8* null, i8** %1, !dbg !1439
  br label %145, !dbg !1439

; <label>:145                                     ; preds = %144, %134, %119, %84, %81, %43, %15
  %146 = load i8** %1, !dbg !1440
  ret i8* %146, !dbg !1440
}

; Function Attrs: nounwind
define internal i32 @findsetreg(%struct.Proto* %p, i32 %lastpc, i32 %reg) #0 {
  %1 = alloca %struct.Proto*, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %pc = alloca i32, align 4
  %setreg = alloca i32, align 4
  %jmptarget = alloca i32, align 4
  %i = alloca i32, align 4
  %op = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %b1 = alloca i32, align 4
  %dest = alloca i32, align 4
  store %struct.Proto* %p, %struct.Proto** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.Proto** %1}, metadata !1441), !dbg !1442
  store i32 %lastpc, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !1443), !dbg !1444
  store i32 %reg, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !1445), !dbg !1446
  call void @llvm.dbg.declare(metadata !{i32* %pc}, metadata !1447), !dbg !1448
  call void @llvm.dbg.declare(metadata !{i32* %setreg}, metadata !1449), !dbg !1450
  store i32 -1, i32* %setreg, align 4, !dbg !1451
  call void @llvm.dbg.declare(metadata !{i32* %jmptarget}, metadata !1452), !dbg !1453
  store i32 0, i32* %jmptarget, align 4, !dbg !1454
  store i32 0, i32* %pc, align 4, !dbg !1455
  br label %4, !dbg !1455

; <label>:4                                       ; preds = %100, %0
  %5 = load i32* %pc, align 4, !dbg !1457
  %6 = load i32* %2, align 4, !dbg !1457
  %7 = icmp slt i32 %5, %6, !dbg !1457
  br i1 %7, label %8, label %103, !dbg !1457

; <label>:8                                       ; preds = %4
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !1460), !dbg !1462
  %9 = load i32* %pc, align 4, !dbg !1463
  %10 = load %struct.Proto** %1, align 4, !dbg !1463
  %11 = getelementptr inbounds %struct.Proto* %10, i32 0, i32 15, !dbg !1463
  %12 = load i32** %11, align 4, !dbg !1463
  %13 = getelementptr inbounds i32* %12, i32 %9, !dbg !1463
  %14 = load i32* %13, align 4, !dbg !1463
  store i32 %14, i32* %i, align 4, !dbg !1463
  call void @llvm.dbg.declare(metadata !{i32* %op}, metadata !1464), !dbg !1465
  %15 = load i32* %i, align 4, !dbg !1466
  %16 = lshr i32 %15, 0, !dbg !1466
  %17 = and i32 %16, 63, !dbg !1466
  store i32 %17, i32* %op, align 4, !dbg !1466
  call void @llvm.dbg.declare(metadata !{i32* %a}, metadata !1467), !dbg !1468
  %18 = load i32* %i, align 4, !dbg !1469
  %19 = lshr i32 %18, 6, !dbg !1469
  %20 = and i32 %19, 255, !dbg !1469
  store i32 %20, i32* %a, align 4, !dbg !1469
  %21 = load i32* %op, align 4, !dbg !1470
  switch i32 %21, label %83 [
    i32 4, label %22
    i32 41, label %40
    i32 36, label %50
    i32 37, label %50
    i32 30, label %59
  ], !dbg !1470

; <label>:22                                      ; preds = %8
  call void @llvm.dbg.declare(metadata !{i32* %b}, metadata !1471), !dbg !1474
  %23 = load i32* %i, align 4, !dbg !1475
  %24 = lshr i32 %23, 23, !dbg !1475
  %25 = and i32 %24, 511, !dbg !1475
  store i32 %25, i32* %b, align 4, !dbg !1475
  %26 = load i32* %a, align 4, !dbg !1476
  %27 = load i32* %3, align 4, !dbg !1476
  %28 = icmp sle i32 %26, %27, !dbg !1476
  br i1 %28, label %29, label %39, !dbg !1476

; <label>:29                                      ; preds = %22
  %30 = load i32* %3, align 4, !dbg !1478
  %31 = load i32* %a, align 4, !dbg !1478
  %32 = load i32* %b, align 4, !dbg !1478
  %33 = add nsw i32 %31, %32, !dbg !1478
  %34 = icmp sle i32 %30, %33, !dbg !1478
  br i1 %34, label %35, label %39, !dbg !1478

; <label>:35                                      ; preds = %29
  %36 = load i32* %pc, align 4, !dbg !1480
  %37 = load i32* %jmptarget, align 4, !dbg !1480
  %38 = call i32 @filterpc(i32 %36, i32 %37), !dbg !1480
  store i32 %38, i32* %setreg, align 4, !dbg !1480
  br label %39, !dbg !1480

; <label>:39                                      ; preds = %35, %29, %22
  br label %99, !dbg !1481

; <label>:40                                      ; preds = %8
  %41 = load i32* %3, align 4, !dbg !1482
  %42 = load i32* %a, align 4, !dbg !1482
  %43 = add nsw i32 %42, 2, !dbg !1482
  %44 = icmp sge i32 %41, %43, !dbg !1482
  br i1 %44, label %45, label %49, !dbg !1482

; <label>:45                                      ; preds = %40
  %46 = load i32* %pc, align 4, !dbg !1485
  %47 = load i32* %jmptarget, align 4, !dbg !1485
  %48 = call i32 @filterpc(i32 %46, i32 %47), !dbg !1485
  store i32 %48, i32* %setreg, align 4, !dbg !1485
  br label %49, !dbg !1485

; <label>:49                                      ; preds = %45, %40
  br label %99, !dbg !1486

; <label>:50                                      ; preds = %8, %8
  %51 = load i32* %3, align 4, !dbg !1487
  %52 = load i32* %a, align 4, !dbg !1487
  %53 = icmp sge i32 %51, %52, !dbg !1487
  br i1 %53, label %54, label %58, !dbg !1487

; <label>:54                                      ; preds = %50
  %55 = load i32* %pc, align 4, !dbg !1490
  %56 = load i32* %jmptarget, align 4, !dbg !1490
  %57 = call i32 @filterpc(i32 %55, i32 %56), !dbg !1490
  store i32 %57, i32* %setreg, align 4, !dbg !1490
  br label %58, !dbg !1490

; <label>:58                                      ; preds = %54, %50
  br label %99, !dbg !1491

; <label>:59                                      ; preds = %8
  call void @llvm.dbg.declare(metadata !{i32* %b1}, metadata !1492), !dbg !1494
  %60 = load i32* %i, align 4, !dbg !1495
  %61 = lshr i32 %60, 14, !dbg !1495
  %62 = and i32 %61, 262143, !dbg !1495
  %63 = sub nsw i32 %62, 131071, !dbg !1495
  store i32 %63, i32* %b1, align 4, !dbg !1495
  call void @llvm.dbg.declare(metadata !{i32* %dest}, metadata !1496), !dbg !1497
  %64 = load i32* %pc, align 4, !dbg !1498
  %65 = add nsw i32 %64, 1, !dbg !1498
  %66 = load i32* %b1, align 4, !dbg !1498
  %67 = add nsw i32 %65, %66, !dbg !1498
  store i32 %67, i32* %dest, align 4, !dbg !1498
  %68 = load i32* %pc, align 4, !dbg !1499
  %69 = load i32* %dest, align 4, !dbg !1499
  %70 = icmp slt i32 %68, %69, !dbg !1499
  br i1 %70, label %71, label %82, !dbg !1499

; <label>:71                                      ; preds = %59
  %72 = load i32* %dest, align 4, !dbg !1501
  %73 = load i32* %2, align 4, !dbg !1501
  %74 = icmp sle i32 %72, %73, !dbg !1501
  br i1 %74, label %75, label %82, !dbg !1501

; <label>:75                                      ; preds = %71
  %76 = load i32* %dest, align 4, !dbg !1503
  %77 = load i32* %jmptarget, align 4, !dbg !1503
  %78 = icmp sgt i32 %76, %77, !dbg !1503
  br i1 %78, label %79, label %81, !dbg !1503

; <label>:79                                      ; preds = %75
  %80 = load i32* %dest, align 4, !dbg !1506
  store i32 %80, i32* %jmptarget, align 4, !dbg !1506
  br label %81, !dbg !1506

; <label>:81                                      ; preds = %79, %75
  br label %82, !dbg !1507

; <label>:82                                      ; preds = %81, %71, %59
  br label %99, !dbg !1508

; <label>:83                                      ; preds = %8
  %84 = load i32* %op, align 4, !dbg !1509
  %85 = getelementptr inbounds [47 x i8]* @luaP_opmodes, i32 0, i32 %84, !dbg !1509
  %86 = load i8* %85, align 1, !dbg !1509
  %87 = zext i8 %86 to i32, !dbg !1509
  %88 = and i32 %87, 64, !dbg !1509
  %89 = icmp ne i32 %88, 0, !dbg !1509
  br i1 %89, label %90, label %98, !dbg !1509

; <label>:90                                      ; preds = %83
  %91 = load i32* %3, align 4, !dbg !1511
  %92 = load i32* %a, align 4, !dbg !1511
  %93 = icmp eq i32 %91, %92, !dbg !1511
  br i1 %93, label %94, label %98, !dbg !1511

; <label>:94                                      ; preds = %90
  %95 = load i32* %pc, align 4, !dbg !1513
  %96 = load i32* %jmptarget, align 4, !dbg !1513
  %97 = call i32 @filterpc(i32 %95, i32 %96), !dbg !1513
  store i32 %97, i32* %setreg, align 4, !dbg !1513
  br label %98, !dbg !1513

; <label>:98                                      ; preds = %94, %90, %83
  br label %99, !dbg !1514

; <label>:99                                      ; preds = %98, %82, %58, %49, %39
  br label %100, !dbg !1515

; <label>:100                                     ; preds = %99
  %101 = load i32* %pc, align 4, !dbg !1516
  %102 = add nsw i32 %101, 1, !dbg !1516
  store i32 %102, i32* %pc, align 4, !dbg !1516
  br label %4, !dbg !1516

; <label>:103                                     ; preds = %4
  %104 = load i32* %setreg, align 4, !dbg !1517
  ret i32 %104, !dbg !1517
}

; Function Attrs: nounwind
define internal i8* @upvalname(%struct.Proto* %p, i32 %uv) #0 {
  %1 = alloca i8*, align 4
  %2 = alloca %struct.Proto*, align 4
  %3 = alloca i32, align 4
  %s = alloca %struct.TString*, align 4
  store %struct.Proto* %p, %struct.Proto** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.Proto** %2}, metadata !1518), !dbg !1519
  store i32 %uv, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !1520), !dbg !1521
  call void @llvm.dbg.declare(metadata !{%struct.TString** %s}, metadata !1522), !dbg !1523
  %4 = load i32* %3, align 4, !dbg !1524
  %5 = load %struct.Proto** %2, align 4, !dbg !1524
  %6 = getelementptr inbounds %struct.Proto* %5, i32 0, i32 19, !dbg !1524
  %7 = load %struct.Upvaldesc** %6, align 4, !dbg !1524
  %8 = getelementptr inbounds %struct.Upvaldesc* %7, i32 %4, !dbg !1524
  %9 = getelementptr inbounds %struct.Upvaldesc* %8, i32 0, i32 0, !dbg !1524
  %10 = load %struct.TString** %9, align 4, !dbg !1524
  store %struct.TString* %10, %struct.TString** %s, align 4, !dbg !1524
  %11 = load %struct.TString** %s, align 4, !dbg !1525
  %12 = icmp eq %struct.TString* %11, null, !dbg !1525
  br i1 %12, label %13, label %14, !dbg !1525

; <label>:13                                      ; preds = %0
  store i8* getelementptr inbounds ([2 x i8]* @.str15, i32 0, i32 0), i8** %1, !dbg !1527
  br label %18, !dbg !1527

; <label>:14                                      ; preds = %0
  %15 = load %struct.TString** %s, align 4, !dbg !1529
  %16 = bitcast %struct.TString* %15 to i8*, !dbg !1529
  %17 = getelementptr inbounds i8* %16, i32 16, !dbg !1529
  store i8* %17, i8** %1, !dbg !1529
  br label %18, !dbg !1529

; <label>:18                                      ; preds = %14, %13
  %19 = load i8** %1, !dbg !1530
  ret i8* %19, !dbg !1530
}

; Function Attrs: nounwind
define internal void @kname(%struct.Proto* %p, i32 %pc, i32 %c, i8** %name) #0 {
  %1 = alloca %struct.Proto*, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 4
  %kvalue = alloca %struct.lua_TValue*, align 4
  %what = alloca i8*, align 4
  store %struct.Proto* %p, %struct.Proto** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.Proto** %1}, metadata !1531), !dbg !1532
  store i32 %pc, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !1533), !dbg !1534
  store i32 %c, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !1535), !dbg !1536
  store i8** %name, i8*** %4, align 4
  call void @llvm.dbg.declare(metadata !{i8*** %4}, metadata !1537), !dbg !1538
  %5 = load i32* %3, align 4, !dbg !1539
  %6 = and i32 %5, 256, !dbg !1539
  %7 = icmp ne i32 %6, 0, !dbg !1539
  br i1 %7, label %8, label %31, !dbg !1539

; <label>:8                                       ; preds = %0
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %kvalue}, metadata !1541), !dbg !1543
  %9 = load i32* %3, align 4, !dbg !1544
  %10 = and i32 %9, -257, !dbg !1544
  %11 = load %struct.Proto** %1, align 4, !dbg !1544
  %12 = getelementptr inbounds %struct.Proto* %11, i32 0, i32 14, !dbg !1544
  %13 = load %struct.lua_TValue** %12, align 4, !dbg !1544
  %14 = getelementptr inbounds %struct.lua_TValue* %13, i32 %10, !dbg !1544
  store %struct.lua_TValue* %14, %struct.lua_TValue** %kvalue, align 4, !dbg !1544
  %15 = load %struct.lua_TValue** %kvalue, align 4, !dbg !1545
  %16 = getelementptr inbounds %struct.lua_TValue* %15, i32 0, i32 1, !dbg !1545
  %17 = load i32* %16, align 4, !dbg !1545
  %18 = and i32 %17, 15, !dbg !1545
  %19 = icmp eq i32 %18, 4, !dbg !1545
  br i1 %19, label %20, label %30, !dbg !1545

; <label>:20                                      ; preds = %8
  %21 = load %struct.lua_TValue** %kvalue, align 4, !dbg !1547
  %22 = getelementptr inbounds %struct.lua_TValue* %21, i32 0, i32 0, !dbg !1547
  %23 = bitcast %union.Value* %22 to %struct.GCObject**, !dbg !1547
  %24 = load %struct.GCObject** %23, align 4, !dbg !1547
  %25 = bitcast %struct.GCObject* %24 to %union.GCUnion*, !dbg !1547
  %26 = bitcast %union.GCUnion* %25 to %struct.TString*, !dbg !1547
  %27 = bitcast %struct.TString* %26 to i8*, !dbg !1547
  %28 = getelementptr inbounds i8* %27, i32 16, !dbg !1547
  %29 = load i8*** %4, align 4, !dbg !1547
  store i8* %28, i8** %29, align 4, !dbg !1547
  br label %48, !dbg !1549

; <label>:30                                      ; preds = %8
  br label %46, !dbg !1550

; <label>:31                                      ; preds = %0
  call void @llvm.dbg.declare(metadata !{i8** %what}, metadata !1551), !dbg !1553
  %32 = load %struct.Proto** %1, align 4, !dbg !1554
  %33 = load i32* %2, align 4, !dbg !1554
  %34 = load i32* %3, align 4, !dbg !1554
  %35 = load i8*** %4, align 4, !dbg !1554
  %36 = call i8* @getobjname(%struct.Proto* %32, i32 %33, i32 %34, i8** %35), !dbg !1554
  store i8* %36, i8** %what, align 4, !dbg !1554
  %37 = load i8** %what, align 4, !dbg !1555
  %38 = icmp ne i8* %37, null, !dbg !1555
  br i1 %38, label %39, label %45, !dbg !1555

; <label>:39                                      ; preds = %31
  %40 = load i8** %what, align 4, !dbg !1557
  %41 = load i8* %40, align 1, !dbg !1557
  %42 = zext i8 %41 to i32, !dbg !1557
  %43 = icmp eq i32 %42, 99, !dbg !1557
  br i1 %43, label %44, label %45, !dbg !1557

; <label>:44                                      ; preds = %39
  br label %48, !dbg !1559

; <label>:45                                      ; preds = %39, %31
  br label %46

; <label>:46                                      ; preds = %45, %30
  %47 = load i8*** %4, align 4, !dbg !1561
  store i8* getelementptr inbounds ([2 x i8]* @.str15, i32 0, i32 0), i8** %47, align 4, !dbg !1561
  br label %48, !dbg !1562

; <label>:48                                      ; preds = %46, %44, %20
  ret void, !dbg !1563
}

; Function Attrs: nounwind
define internal i32 @filterpc(i32 %pc, i32 %jmptarget) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %pc, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !1565), !dbg !1566
  store i32 %jmptarget, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !1567), !dbg !1568
  %4 = load i32* %2, align 4, !dbg !1569
  %5 = load i32* %3, align 4, !dbg !1569
  %6 = icmp slt i32 %4, %5, !dbg !1569
  br i1 %6, label %7, label %8, !dbg !1569

; <label>:7                                       ; preds = %0
  store i32 -1, i32* %1, !dbg !1571
  br label %10, !dbg !1571

; <label>:8                                       ; preds = %0
  %9 = load i32* %2, align 4, !dbg !1572
  store i32 %9, i32* %1, !dbg !1572
  br label %10, !dbg !1572

; <label>:10                                      ; preds = %8, %7
  %11 = load i32* %1, !dbg !1573
  ret i32 %11, !dbg !1573
}

declare hidden %struct.Table* @luaH_new(%struct.lua_State*) #2

declare hidden void @luaH_setint(%struct.lua_State*, %struct.Table*, i64, %struct.lua_TValue*) #2

; Function Attrs: nounwind
define internal void @funcinfo(%struct.lua_Debug* %ar, %union.Closure* %cl) #0 {
  %1 = alloca %struct.lua_Debug*, align 4
  %2 = alloca %union.Closure*, align 4
  %p = alloca %struct.Proto*, align 4
  store %struct.lua_Debug* %ar, %struct.lua_Debug** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_Debug** %1}, metadata !1574), !dbg !1575
  store %union.Closure* %cl, %union.Closure** %2, align 4
  call void @llvm.dbg.declare(metadata !{%union.Closure** %2}, metadata !1576), !dbg !1577
  %3 = load %union.Closure** %2, align 4, !dbg !1578
  %4 = icmp eq %union.Closure* %3, null, !dbg !1578
  br i1 %4, label %12, label %5, !dbg !1578

; <label>:5                                       ; preds = %0
  %6 = load %union.Closure** %2, align 4, !dbg !1580
  %7 = bitcast %union.Closure* %6 to %struct.CClosure*, !dbg !1580
  %8 = getelementptr inbounds %struct.CClosure* %7, i32 0, i32 1, !dbg !1580
  %9 = load i8* %8, align 1, !dbg !1580
  %10 = zext i8 %9 to i32, !dbg !1580
  %11 = icmp eq i32 %10, 38, !dbg !1580
  br i1 %11, label %12, label %21, !dbg !1580

; <label>:12                                      ; preds = %5, %0
  %13 = load %struct.lua_Debug** %1, align 4, !dbg !1582
  %14 = getelementptr inbounds %struct.lua_Debug* %13, i32 0, i32 4, !dbg !1582
  store i8* getelementptr inbounds ([5 x i8]* @.str19, i32 0, i32 0), i8** %14, align 4, !dbg !1582
  %15 = load %struct.lua_Debug** %1, align 4, !dbg !1584
  %16 = getelementptr inbounds %struct.lua_Debug* %15, i32 0, i32 6, !dbg !1584
  store i32 -1, i32* %16, align 4, !dbg !1584
  %17 = load %struct.lua_Debug** %1, align 4, !dbg !1585
  %18 = getelementptr inbounds %struct.lua_Debug* %17, i32 0, i32 7, !dbg !1585
  store i32 -1, i32* %18, align 4, !dbg !1585
  %19 = load %struct.lua_Debug** %1, align 4, !dbg !1586
  %20 = getelementptr inbounds %struct.lua_Debug* %19, i32 0, i32 3, !dbg !1586
  store i8* getelementptr inbounds ([2 x i8]* @.str20, i32 0, i32 0), i8** %20, align 4, !dbg !1586
  br label %58, !dbg !1587

; <label>:21                                      ; preds = %5
  call void @llvm.dbg.declare(metadata !{%struct.Proto** %p}, metadata !1588), !dbg !1590
  %22 = load %union.Closure** %2, align 4, !dbg !1591
  %23 = bitcast %union.Closure* %22 to %struct.LClosure*, !dbg !1591
  %24 = getelementptr inbounds %struct.LClosure* %23, i32 0, i32 5, !dbg !1591
  %25 = load %struct.Proto** %24, align 4, !dbg !1591
  store %struct.Proto* %25, %struct.Proto** %p, align 4, !dbg !1591
  %26 = load %struct.Proto** %p, align 4, !dbg !1592
  %27 = getelementptr inbounds %struct.Proto* %26, i32 0, i32 21, !dbg !1592
  %28 = load %struct.TString** %27, align 4, !dbg !1592
  %29 = icmp ne %struct.TString* %28, null, !dbg !1592
  br i1 %29, label %30, label %36, !dbg !1592

; <label>:30                                      ; preds = %21
  %31 = load %struct.Proto** %p, align 4, !dbg !1593
  %32 = getelementptr inbounds %struct.Proto* %31, i32 0, i32 21, !dbg !1593
  %33 = load %struct.TString** %32, align 4, !dbg !1593
  %34 = bitcast %struct.TString* %33 to i8*, !dbg !1593
  %35 = getelementptr inbounds i8* %34, i32 16, !dbg !1593
  br label %37, !dbg !1593

; <label>:36                                      ; preds = %21
  br label %37, !dbg !1595

; <label>:37                                      ; preds = %36, %30
  %38 = phi i8* [ %35, %30 ], [ getelementptr inbounds ([3 x i8]* @.str21, i32 0, i32 0), %36 ], !dbg !1592
  %39 = load %struct.lua_Debug** %1, align 4, !dbg !1597
  %40 = getelementptr inbounds %struct.lua_Debug* %39, i32 0, i32 4, !dbg !1597
  store i8* %38, i8** %40, align 4, !dbg !1597
  %41 = load %struct.Proto** %p, align 4, !dbg !1600
  %42 = getelementptr inbounds %struct.Proto* %41, i32 0, i32 12, !dbg !1600
  %43 = load i32* %42, align 4, !dbg !1600
  %44 = load %struct.lua_Debug** %1, align 4, !dbg !1600
  %45 = getelementptr inbounds %struct.lua_Debug* %44, i32 0, i32 6, !dbg !1600
  store i32 %43, i32* %45, align 4, !dbg !1600
  %46 = load %struct.Proto** %p, align 4, !dbg !1601
  %47 = getelementptr inbounds %struct.Proto* %46, i32 0, i32 13, !dbg !1601
  %48 = load i32* %47, align 4, !dbg !1601
  %49 = load %struct.lua_Debug** %1, align 4, !dbg !1601
  %50 = getelementptr inbounds %struct.lua_Debug* %49, i32 0, i32 7, !dbg !1601
  store i32 %48, i32* %50, align 4, !dbg !1601
  %51 = load %struct.lua_Debug** %1, align 4, !dbg !1602
  %52 = getelementptr inbounds %struct.lua_Debug* %51, i32 0, i32 6, !dbg !1602
  %53 = load i32* %52, align 4, !dbg !1602
  %54 = icmp eq i32 %53, 0, !dbg !1602
  %55 = select i1 %54, i8* getelementptr inbounds ([5 x i8]* @.str22, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str23, i32 0, i32 0), !dbg !1602
  %56 = load %struct.lua_Debug** %1, align 4, !dbg !1602
  %57 = getelementptr inbounds %struct.lua_Debug* %56, i32 0, i32 3, !dbg !1602
  store i8* %55, i8** %57, align 4, !dbg !1602
  br label %58

; <label>:58                                      ; preds = %37, %12
  %59 = load %struct.lua_Debug** %1, align 4, !dbg !1603
  %60 = getelementptr inbounds %struct.lua_Debug* %59, i32 0, i32 12, !dbg !1603
  %61 = getelementptr inbounds [60 x i8]* %60, i32 0, i32 0, !dbg !1603
  %62 = load %struct.lua_Debug** %1, align 4, !dbg !1603
  %63 = getelementptr inbounds %struct.lua_Debug* %62, i32 0, i32 4, !dbg !1603
  %64 = load i8** %63, align 4, !dbg !1603
  call void @luaO_chunkid(i8* %61, i8* %64, i32 60), !dbg !1603
  ret void, !dbg !1604
}

; Function Attrs: nounwind
define internal i8* @getfuncname(%struct.lua_State* %L, %struct.CallInfo* %ci, i8** %name) #0 {
  %1 = alloca i8*, align 4
  %2 = alloca %struct.lua_State*, align 4
  %3 = alloca %struct.CallInfo*, align 4
  %4 = alloca i8**, align 4
  %tm = alloca i32, align 4
  %p = alloca %struct.Proto*, align 4
  %pc = alloca i32, align 4
  %i = alloca i32, align 4
  %offset = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %2}, metadata !1605), !dbg !1606
  store %struct.CallInfo* %ci, %struct.CallInfo** %3, align 4
  call void @llvm.dbg.declare(metadata !{%struct.CallInfo** %3}, metadata !1607), !dbg !1608
  store i8** %name, i8*** %4, align 4
  call void @llvm.dbg.declare(metadata !{i8*** %4}, metadata !1609), !dbg !1610
  call void @llvm.dbg.declare(metadata !{i32* %tm}, metadata !1611), !dbg !1613
  store i32 0, i32* %tm, align 4, !dbg !1614
  call void @llvm.dbg.declare(metadata !{%struct.Proto** %p}, metadata !1615), !dbg !1616
  %5 = load %struct.CallInfo** %3, align 4, !dbg !1617
  %6 = getelementptr inbounds %struct.CallInfo* %5, i32 0, i32 0, !dbg !1617
  %7 = load %struct.lua_TValue** %6, align 4, !dbg !1617
  %8 = getelementptr inbounds %struct.lua_TValue* %7, i32 0, i32 0, !dbg !1617
  %9 = bitcast %union.Value* %8 to %struct.GCObject**, !dbg !1617
  %10 = load %struct.GCObject** %9, align 4, !dbg !1617
  %11 = bitcast %struct.GCObject* %10 to %union.GCUnion*, !dbg !1617
  %12 = bitcast %union.GCUnion* %11 to %union.Closure*, !dbg !1617
  %13 = bitcast %union.Closure* %12 to %struct.LClosure*, !dbg !1617
  %14 = getelementptr inbounds %struct.LClosure* %13, i32 0, i32 5, !dbg !1617
  %15 = load %struct.Proto** %14, align 4, !dbg !1617
  store %struct.Proto* %15, %struct.Proto** %p, align 4, !dbg !1617
  call void @llvm.dbg.declare(metadata !{i32* %pc}, metadata !1618), !dbg !1619
  %16 = load %struct.CallInfo** %3, align 4, !dbg !1620
  %17 = call i32 @currentpc(%struct.CallInfo* %16), !dbg !1620
  store i32 %17, i32* %pc, align 4, !dbg !1620
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !1621), !dbg !1622
  %18 = load i32* %pc, align 4, !dbg !1623
  %19 = load %struct.Proto** %p, align 4, !dbg !1623
  %20 = getelementptr inbounds %struct.Proto* %19, i32 0, i32 15, !dbg !1623
  %21 = load i32** %20, align 4, !dbg !1623
  %22 = getelementptr inbounds i32* %21, i32 %18, !dbg !1623
  %23 = load i32* %22, align 4, !dbg !1623
  store i32 %23, i32* %i, align 4, !dbg !1623
  %24 = load %struct.CallInfo** %3, align 4, !dbg !1624
  %25 = getelementptr inbounds %struct.CallInfo* %24, i32 0, i32 7, !dbg !1624
  %26 = load i8* %25, align 1, !dbg !1624
  %27 = zext i8 %26 to i32, !dbg !1624
  %28 = and i32 %27, 4, !dbg !1624
  %29 = icmp ne i32 %28, 0, !dbg !1624
  br i1 %29, label %30, label %32, !dbg !1624

; <label>:30                                      ; preds = %0
  %31 = load i8*** %4, align 4, !dbg !1626
  store i8* getelementptr inbounds ([2 x i8]* @.str15, i32 0, i32 0), i8** %31, align 4, !dbg !1626
  store i8* getelementptr inbounds ([5 x i8]* @.str16, i32 0, i32 0), i8** %1, !dbg !1628
  br label %74, !dbg !1628

; <label>:32                                      ; preds = %0
  %33 = load i32* %i, align 4, !dbg !1629
  %34 = lshr i32 %33, 0, !dbg !1629
  %35 = and i32 %34, 63, !dbg !1629
  switch i32 %35, label %62 [
    i32 36, label %36
    i32 37, label %36
    i32 41, label %44
    i32 12, label %46
    i32 6, label %46
    i32 7, label %46
    i32 8, label %47
    i32 10, label %47
    i32 13, label %48
    i32 14, label %48
    i32 15, label %48
    i32 16, label %48
    i32 17, label %48
    i32 18, label %48
    i32 19, label %48
    i32 20, label %48
    i32 21, label %48
    i32 22, label %48
    i32 23, label %48
    i32 24, label %48
    i32 25, label %55
    i32 26, label %56
    i32 28, label %57
    i32 29, label %58
    i32 31, label %59
    i32 32, label %60
    i32 33, label %61
  ], !dbg !1629

; <label>:36                                      ; preds = %32, %32
  %37 = load %struct.Proto** %p, align 4, !dbg !1630
  %38 = load i32* %pc, align 4, !dbg !1630
  %39 = load i32* %i, align 4, !dbg !1630
  %40 = lshr i32 %39, 6, !dbg !1630
  %41 = and i32 %40, 255, !dbg !1630
  %42 = load i8*** %4, align 4, !dbg !1630
  %43 = call i8* @getobjname(%struct.Proto* %37, i32 %38, i32 %41, i8** %42), !dbg !1630
  store i8* %43, i8** %1, !dbg !1630
  br label %74, !dbg !1630

; <label>:44                                      ; preds = %32
  %45 = load i8*** %4, align 4, !dbg !1632
  store i8* getelementptr inbounds ([13 x i8]* @.str17, i32 0, i32 0), i8** %45, align 4, !dbg !1632
  store i8* getelementptr inbounds ([13 x i8]* @.str17, i32 0, i32 0), i8** %1, !dbg !1634
  br label %74, !dbg !1634

; <label>:46                                      ; preds = %32, %32, %32
  store i32 0, i32* %tm, align 4, !dbg !1635
  br label %63, !dbg !1636

; <label>:47                                      ; preds = %32, %32
  store i32 1, i32* %tm, align 4, !dbg !1637
  br label %63, !dbg !1638

; <label>:48                                      ; preds = %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32
  call void @llvm.dbg.declare(metadata !{i32* %offset}, metadata !1639), !dbg !1641
  %49 = load i32* %i, align 4, !dbg !1642
  %50 = lshr i32 %49, 0, !dbg !1642
  %51 = and i32 %50, 63, !dbg !1642
  %52 = sub nsw i32 %51, 13, !dbg !1642
  store i32 %52, i32* %offset, align 4, !dbg !1642
  %53 = load i32* %offset, align 4, !dbg !1643
  %54 = add nsw i32 %53, 6, !dbg !1643
  store i32 %54, i32* %tm, align 4, !dbg !1643
  br label %63, !dbg !1644

; <label>:55                                      ; preds = %32
  store i32 18, i32* %tm, align 4, !dbg !1645
  br label %63, !dbg !1646

; <label>:56                                      ; preds = %32
  store i32 19, i32* %tm, align 4, !dbg !1647
  br label %63, !dbg !1648

; <label>:57                                      ; preds = %32
  store i32 4, i32* %tm, align 4, !dbg !1649
  br label %63, !dbg !1650

; <label>:58                                      ; preds = %32
  store i32 22, i32* %tm, align 4, !dbg !1651
  br label %63, !dbg !1652

; <label>:59                                      ; preds = %32
  store i32 5, i32* %tm, align 4, !dbg !1653
  br label %63, !dbg !1654

; <label>:60                                      ; preds = %32
  store i32 20, i32* %tm, align 4, !dbg !1655
  br label %63, !dbg !1656

; <label>:61                                      ; preds = %32
  store i32 21, i32* %tm, align 4, !dbg !1657
  br label %63, !dbg !1658

; <label>:62                                      ; preds = %32
  br label %63, !dbg !1659

; <label>:63                                      ; preds = %62, %61, %60, %59, %58, %57, %56, %55, %48, %47, %46
  %64 = load i32* %tm, align 4, !dbg !1660
  %65 = load %struct.lua_State** %2, align 4, !dbg !1660
  %66 = getelementptr inbounds %struct.lua_State* %65, i32 0, i32 6, !dbg !1660
  %67 = load %struct.global_State** %66, align 4, !dbg !1660
  %68 = getelementptr inbounds %struct.global_State* %67, i32 0, i32 31, !dbg !1660
  %69 = getelementptr inbounds [24 x %struct.TString*]* %68, i32 0, i32 %64, !dbg !1660
  %70 = load %struct.TString** %69, align 4, !dbg !1660
  %71 = bitcast %struct.TString* %70 to i8*, !dbg !1660
  %72 = getelementptr inbounds i8* %71, i32 16, !dbg !1660
  %73 = load i8*** %4, align 4, !dbg !1660
  store i8* %72, i8** %73, align 4, !dbg !1660
  store i8* getelementptr inbounds ([11 x i8]* @.str18, i32 0, i32 0), i8** %1, !dbg !1661
  br label %74, !dbg !1661

; <label>:74                                      ; preds = %63, %44, %36, %30
  %75 = load i8** %1, !dbg !1662
  ret i8* %75, !dbg !1662
}

; Function Attrs: nounwind
define internal i8* @findvararg(%struct.CallInfo* %ci, i32 %n, %struct.lua_TValue** %pos) #0 {
  %1 = alloca i8*, align 4
  %2 = alloca %struct.CallInfo*, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.lua_TValue**, align 4
  %nparams = alloca i32, align 4
  store %struct.CallInfo* %ci, %struct.CallInfo** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.CallInfo** %2}, metadata !1663), !dbg !1664
  store i32 %n, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !1665), !dbg !1666
  store %struct.lua_TValue** %pos, %struct.lua_TValue*** %4, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue*** %4}, metadata !1667), !dbg !1668
  call void @llvm.dbg.declare(metadata !{i32* %nparams}, metadata !1669), !dbg !1670
  %5 = load %struct.CallInfo** %2, align 4, !dbg !1671
  %6 = getelementptr inbounds %struct.CallInfo* %5, i32 0, i32 0, !dbg !1671
  %7 = load %struct.lua_TValue** %6, align 4, !dbg !1671
  %8 = getelementptr inbounds %struct.lua_TValue* %7, i32 0, i32 0, !dbg !1671
  %9 = bitcast %union.Value* %8 to %struct.GCObject**, !dbg !1671
  %10 = load %struct.GCObject** %9, align 4, !dbg !1671
  %11 = bitcast %struct.GCObject* %10 to %union.GCUnion*, !dbg !1671
  %12 = bitcast %union.GCUnion* %11 to %union.Closure*, !dbg !1671
  %13 = bitcast %union.Closure* %12 to %struct.LClosure*, !dbg !1671
  %14 = getelementptr inbounds %struct.LClosure* %13, i32 0, i32 5, !dbg !1671
  %15 = load %struct.Proto** %14, align 4, !dbg !1671
  %16 = getelementptr inbounds %struct.Proto* %15, i32 0, i32 3, !dbg !1671
  %17 = load i8* %16, align 1, !dbg !1671
  %18 = zext i8 %17 to i32, !dbg !1671
  store i32 %18, i32* %nparams, align 4, !dbg !1671
  %19 = load i32* %3, align 4, !dbg !1672
  %20 = load %struct.CallInfo** %2, align 4, !dbg !1672
  %21 = getelementptr inbounds %struct.CallInfo* %20, i32 0, i32 4, !dbg !1672
  %22 = bitcast %union.anon.0* %21 to %struct.anon.1*, !dbg !1672
  %23 = getelementptr inbounds %struct.anon.1* %22, i32 0, i32 0, !dbg !1672
  %24 = load %struct.lua_TValue** %23, align 4, !dbg !1672
  %25 = load %struct.CallInfo** %2, align 4, !dbg !1672
  %26 = getelementptr inbounds %struct.CallInfo* %25, i32 0, i32 0, !dbg !1672
  %27 = load %struct.lua_TValue** %26, align 4, !dbg !1672
  %28 = ptrtoint %struct.lua_TValue* %24 to i32, !dbg !1672
  %29 = ptrtoint %struct.lua_TValue* %27 to i32, !dbg !1672
  %30 = sub i32 %28, %29, !dbg !1672
  %31 = sdiv exact i32 %30, 16, !dbg !1672
  %32 = load i32* %nparams, align 4, !dbg !1672
  %33 = sub nsw i32 %31, %32, !dbg !1672
  %34 = icmp sge i32 %19, %33, !dbg !1672
  br i1 %34, label %35, label %36, !dbg !1672

; <label>:35                                      ; preds = %0
  store i8* null, i8** %1, !dbg !1674
  br label %45, !dbg !1674

; <label>:36                                      ; preds = %0
  %37 = load %struct.CallInfo** %2, align 4, !dbg !1675
  %38 = getelementptr inbounds %struct.CallInfo* %37, i32 0, i32 0, !dbg !1675
  %39 = load %struct.lua_TValue** %38, align 4, !dbg !1675
  %40 = load i32* %nparams, align 4, !dbg !1675
  %41 = getelementptr inbounds %struct.lua_TValue* %39, i32 %40, !dbg !1675
  %42 = load i32* %3, align 4, !dbg !1675
  %43 = getelementptr inbounds %struct.lua_TValue* %41, i32 %42, !dbg !1675
  %44 = load %struct.lua_TValue*** %4, align 4, !dbg !1675
  store %struct.lua_TValue* %43, %struct.lua_TValue** %44, align 4, !dbg !1675
  store i8* getelementptr inbounds ([10 x i8]* @.str25, i32 0, i32 0), i8** %1, !dbg !1677
  br label %45, !dbg !1677

; <label>:45                                      ; preds = %36, %35
  %46 = load i8** %1, !dbg !1678
  ret i8* %46, !dbg !1678
}

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly }
attributes #8 = { noreturn }

!llvm.dbg.cu = !{!0}
!xidane.fname = !{!526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621}
!xidane.function_declaration_type = !{!526, !622, !528, !623, !530, !624, !532, !624, !534, !625, !536, !626, !538, !627, !540, !628, !542, !629, !544, !626, !546, !630, !548, !631, !550, !632, !552, !633, !554, !634, !556, !635, !558, !636, !560, !635, !562, !637, !564, !638, !566, !639, !568, !637, !570, !640, !572, !637, !574, !641, !576, !642, !578, !643, !580, !644, !582, !627, !584, !645, !586, !646, !588, !647, !590, !648, !592, !627, !594, !649, !596, !648, !598, !650, !600, !651, !602, !652, !604, !653, !606, !654, !608, !655, !610, !656, !612, !657, !614, !658, !616, !659, !618, !660, !620, !661}
!xidane.function_declaration_filename = !{!526, !662, !528, !662, !530, !662, !532, !662, !534, !662, !536, !662, !538, !663, !540, !664, !542, !663, !544, !662, !546, !662, !548, !663, !550, !665, !552, !663, !554, !666, !556, !667, !558, !666, !560, !663, !562, !666, !564, !666, !566, !668, !568, !666, !570, !668, !572, !666, !574, !665, !576, !666, !578, !669, !580, !669, !582, !666, !584, !670, !586, !670, !588, !669, !590, !663, !592, !666, !594, !670, !596, !663, !598, !663, !600, !663, !602, !663, !604, !663, !606, !663, !608, !663, !610, !663, !612, !671, !614, !671, !616, !663, !618, !663, !620, !663}
!xidane.ExternC = !{!526, !528, !530, !532, !534, !536, !540, !544, !546, !550, !554, !556, !558, !562, !564, !566, !568, !570, !572, !574, !576, !578, !580, !582, !584, !586, !588, !592, !594, !612, !614}
!llvm.module.flags = !{!672, !673, !674, !675}
!llvm.ident = !{!676}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.0 (tags/RELEASE_350/final)", i1 false, metadata !"", i32 0, metadata !2, metadata !81, metadata !82, metadata !81, metadata !81, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src\ldebug.c] [DW_LANG_C99]
!1 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src\5Cldebug.c", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!2 = metadata !{metadata !3, metadata !53}
!3 = metadata !{i32 786436, metadata !4, null, metadata !"", i32 165, i64 32, i64 32, i32 0, i32 0, null, metadata !5, i32 0, null, null, null} ; [ DW_TAG_enumeration_type ] [line 165, size 32, align 32, offset 0] [def] [from ]
!4 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lopcodes.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!5 = metadata !{metadata !6, metadata !7, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !13, metadata !14, metadata !15, metadata !16, metadata !17, metadata !18, metadata !19, metadata !20, metadata !21, metadata !22, metadata !23, metadata !24, metadata !25, metadata !26, metadata !27, metadata !28, metadata !29, metadata !30, metadata !31, metadata !32, metadata !33, metadata !34, metadata !35, metadata !36, metadata !37, metadata !38, metadata !39, metadata !40, metadata !41, metadata !42, metadata !43, metadata !44, metadata !45, metadata !46, metadata !47, metadata !48, metadata !49, metadata !50, metadata !51, metadata !52}
!6 = metadata !{i32 786472, metadata !"OP_MOVE", i64 0} ; [ DW_TAG_enumerator ] [OP_MOVE :: 0]
!7 = metadata !{i32 786472, metadata !"OP_LOADK", i64 1} ; [ DW_TAG_enumerator ] [OP_LOADK :: 1]
!8 = metadata !{i32 786472, metadata !"OP_LOADKX", i64 2} ; [ DW_TAG_enumerator ] [OP_LOADKX :: 2]
!9 = metadata !{i32 786472, metadata !"OP_LOADBOOL", i64 3} ; [ DW_TAG_enumerator ] [OP_LOADBOOL :: 3]
!10 = metadata !{i32 786472, metadata !"OP_LOADNIL", i64 4} ; [ DW_TAG_enumerator ] [OP_LOADNIL :: 4]
!11 = metadata !{i32 786472, metadata !"OP_GETUPVAL", i64 5} ; [ DW_TAG_enumerator ] [OP_GETUPVAL :: 5]
!12 = metadata !{i32 786472, metadata !"OP_GETTABUP", i64 6} ; [ DW_TAG_enumerator ] [OP_GETTABUP :: 6]
!13 = metadata !{i32 786472, metadata !"OP_GETTABLE", i64 7} ; [ DW_TAG_enumerator ] [OP_GETTABLE :: 7]
!14 = metadata !{i32 786472, metadata !"OP_SETTABUP", i64 8} ; [ DW_TAG_enumerator ] [OP_SETTABUP :: 8]
!15 = metadata !{i32 786472, metadata !"OP_SETUPVAL", i64 9} ; [ DW_TAG_enumerator ] [OP_SETUPVAL :: 9]
!16 = metadata !{i32 786472, metadata !"OP_SETTABLE", i64 10} ; [ DW_TAG_enumerator ] [OP_SETTABLE :: 10]
!17 = metadata !{i32 786472, metadata !"OP_NEWTABLE", i64 11} ; [ DW_TAG_enumerator ] [OP_NEWTABLE :: 11]
!18 = metadata !{i32 786472, metadata !"OP_SELF", i64 12} ; [ DW_TAG_enumerator ] [OP_SELF :: 12]
!19 = metadata !{i32 786472, metadata !"OP_ADD", i64 13} ; [ DW_TAG_enumerator ] [OP_ADD :: 13]
!20 = metadata !{i32 786472, metadata !"OP_SUB", i64 14} ; [ DW_TAG_enumerator ] [OP_SUB :: 14]
!21 = metadata !{i32 786472, metadata !"OP_MUL", i64 15} ; [ DW_TAG_enumerator ] [OP_MUL :: 15]
!22 = metadata !{i32 786472, metadata !"OP_MOD", i64 16} ; [ DW_TAG_enumerator ] [OP_MOD :: 16]
!23 = metadata !{i32 786472, metadata !"OP_POW", i64 17} ; [ DW_TAG_enumerator ] [OP_POW :: 17]
!24 = metadata !{i32 786472, metadata !"OP_DIV", i64 18} ; [ DW_TAG_enumerator ] [OP_DIV :: 18]
!25 = metadata !{i32 786472, metadata !"OP_IDIV", i64 19} ; [ DW_TAG_enumerator ] [OP_IDIV :: 19]
!26 = metadata !{i32 786472, metadata !"OP_BAND", i64 20} ; [ DW_TAG_enumerator ] [OP_BAND :: 20]
!27 = metadata !{i32 786472, metadata !"OP_BOR", i64 21} ; [ DW_TAG_enumerator ] [OP_BOR :: 21]
!28 = metadata !{i32 786472, metadata !"OP_BXOR", i64 22} ; [ DW_TAG_enumerator ] [OP_BXOR :: 22]
!29 = metadata !{i32 786472, metadata !"OP_SHL", i64 23} ; [ DW_TAG_enumerator ] [OP_SHL :: 23]
!30 = metadata !{i32 786472, metadata !"OP_SHR", i64 24} ; [ DW_TAG_enumerator ] [OP_SHR :: 24]
!31 = metadata !{i32 786472, metadata !"OP_UNM", i64 25} ; [ DW_TAG_enumerator ] [OP_UNM :: 25]
!32 = metadata !{i32 786472, metadata !"OP_BNOT", i64 26} ; [ DW_TAG_enumerator ] [OP_BNOT :: 26]
!33 = metadata !{i32 786472, metadata !"OP_NOT", i64 27} ; [ DW_TAG_enumerator ] [OP_NOT :: 27]
!34 = metadata !{i32 786472, metadata !"OP_LEN", i64 28} ; [ DW_TAG_enumerator ] [OP_LEN :: 28]
!35 = metadata !{i32 786472, metadata !"OP_CONCAT", i64 29} ; [ DW_TAG_enumerator ] [OP_CONCAT :: 29]
!36 = metadata !{i32 786472, metadata !"OP_JMP", i64 30} ; [ DW_TAG_enumerator ] [OP_JMP :: 30]
!37 = metadata !{i32 786472, metadata !"OP_EQ", i64 31} ; [ DW_TAG_enumerator ] [OP_EQ :: 31]
!38 = metadata !{i32 786472, metadata !"OP_LT", i64 32} ; [ DW_TAG_enumerator ] [OP_LT :: 32]
!39 = metadata !{i32 786472, metadata !"OP_LE", i64 33} ; [ DW_TAG_enumerator ] [OP_LE :: 33]
!40 = metadata !{i32 786472, metadata !"OP_TEST", i64 34} ; [ DW_TAG_enumerator ] [OP_TEST :: 34]
!41 = metadata !{i32 786472, metadata !"OP_TESTSET", i64 35} ; [ DW_TAG_enumerator ] [OP_TESTSET :: 35]
!42 = metadata !{i32 786472, metadata !"OP_CALL", i64 36} ; [ DW_TAG_enumerator ] [OP_CALL :: 36]
!43 = metadata !{i32 786472, metadata !"OP_TAILCALL", i64 37} ; [ DW_TAG_enumerator ] [OP_TAILCALL :: 37]
!44 = metadata !{i32 786472, metadata !"OP_RETURN", i64 38} ; [ DW_TAG_enumerator ] [OP_RETURN :: 38]
!45 = metadata !{i32 786472, metadata !"OP_FORLOOP", i64 39} ; [ DW_TAG_enumerator ] [OP_FORLOOP :: 39]
!46 = metadata !{i32 786472, metadata !"OP_FORPREP", i64 40} ; [ DW_TAG_enumerator ] [OP_FORPREP :: 40]
!47 = metadata !{i32 786472, metadata !"OP_TFORCALL", i64 41} ; [ DW_TAG_enumerator ] [OP_TFORCALL :: 41]
!48 = metadata !{i32 786472, metadata !"OP_TFORLOOP", i64 42} ; [ DW_TAG_enumerator ] [OP_TFORLOOP :: 42]
!49 = metadata !{i32 786472, metadata !"OP_SETLIST", i64 43} ; [ DW_TAG_enumerator ] [OP_SETLIST :: 43]
!50 = metadata !{i32 786472, metadata !"OP_CLOSURE", i64 44} ; [ DW_TAG_enumerator ] [OP_CLOSURE :: 44]
!51 = metadata !{i32 786472, metadata !"OP_VARARG", i64 45} ; [ DW_TAG_enumerator ] [OP_VARARG :: 45]
!52 = metadata !{i32 786472, metadata !"OP_EXTRAARG", i64 46} ; [ DW_TAG_enumerator ] [OP_EXTRAARG :: 46]
!53 = metadata !{i32 786436, metadata !54, null, metadata !"", i32 18, i64 32, i64 32, i32 0, i32 0, null, metadata !55, i32 0, null, null, null} ; [ DW_TAG_enumeration_type ] [line 18, size 32, align 32, offset 0] [def] [from ]
!54 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/ltm.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!55 = metadata !{metadata !56, metadata !57, metadata !58, metadata !59, metadata !60, metadata !61, metadata !62, metadata !63, metadata !64, metadata !65, metadata !66, metadata !67, metadata !68, metadata !69, metadata !70, metadata !71, metadata !72, metadata !73, metadata !74, metadata !75, metadata !76, metadata !77, metadata !78, metadata !79, metadata !80}
!56 = metadata !{i32 786472, metadata !"TM_INDEX", i64 0} ; [ DW_TAG_enumerator ] [TM_INDEX :: 0]
!57 = metadata !{i32 786472, metadata !"TM_NEWINDEX", i64 1} ; [ DW_TAG_enumerator ] [TM_NEWINDEX :: 1]
!58 = metadata !{i32 786472, metadata !"TM_GC", i64 2} ; [ DW_TAG_enumerator ] [TM_GC :: 2]
!59 = metadata !{i32 786472, metadata !"TM_MODE", i64 3} ; [ DW_TAG_enumerator ] [TM_MODE :: 3]
!60 = metadata !{i32 786472, metadata !"TM_LEN", i64 4} ; [ DW_TAG_enumerator ] [TM_LEN :: 4]
!61 = metadata !{i32 786472, metadata !"TM_EQ", i64 5} ; [ DW_TAG_enumerator ] [TM_EQ :: 5]
!62 = metadata !{i32 786472, metadata !"TM_ADD", i64 6} ; [ DW_TAG_enumerator ] [TM_ADD :: 6]
!63 = metadata !{i32 786472, metadata !"TM_SUB", i64 7} ; [ DW_TAG_enumerator ] [TM_SUB :: 7]
!64 = metadata !{i32 786472, metadata !"TM_MUL", i64 8} ; [ DW_TAG_enumerator ] [TM_MUL :: 8]
!65 = metadata !{i32 786472, metadata !"TM_MOD", i64 9} ; [ DW_TAG_enumerator ] [TM_MOD :: 9]
!66 = metadata !{i32 786472, metadata !"TM_POW", i64 10} ; [ DW_TAG_enumerator ] [TM_POW :: 10]
!67 = metadata !{i32 786472, metadata !"TM_DIV", i64 11} ; [ DW_TAG_enumerator ] [TM_DIV :: 11]
!68 = metadata !{i32 786472, metadata !"TM_IDIV", i64 12} ; [ DW_TAG_enumerator ] [TM_IDIV :: 12]
!69 = metadata !{i32 786472, metadata !"TM_BAND", i64 13} ; [ DW_TAG_enumerator ] [TM_BAND :: 13]
!70 = metadata !{i32 786472, metadata !"TM_BOR", i64 14} ; [ DW_TAG_enumerator ] [TM_BOR :: 14]
!71 = metadata !{i32 786472, metadata !"TM_BXOR", i64 15} ; [ DW_TAG_enumerator ] [TM_BXOR :: 15]
!72 = metadata !{i32 786472, metadata !"TM_SHL", i64 16} ; [ DW_TAG_enumerator ] [TM_SHL :: 16]
!73 = metadata !{i32 786472, metadata !"TM_SHR", i64 17} ; [ DW_TAG_enumerator ] [TM_SHR :: 17]
!74 = metadata !{i32 786472, metadata !"TM_UNM", i64 18} ; [ DW_TAG_enumerator ] [TM_UNM :: 18]
!75 = metadata !{i32 786472, metadata !"TM_BNOT", i64 19} ; [ DW_TAG_enumerator ] [TM_BNOT :: 19]
!76 = metadata !{i32 786472, metadata !"TM_LT", i64 20} ; [ DW_TAG_enumerator ] [TM_LT :: 20]
!77 = metadata !{i32 786472, metadata !"TM_LE", i64 21} ; [ DW_TAG_enumerator ] [TM_LE :: 21]
!78 = metadata !{i32 786472, metadata !"TM_CONCAT", i64 22} ; [ DW_TAG_enumerator ] [TM_CONCAT :: 22]
!79 = metadata !{i32 786472, metadata !"TM_CALL", i64 23} ; [ DW_TAG_enumerator ] [TM_CALL :: 23]
!80 = metadata !{i32 786472, metadata !"TM_N", i64 24} ; [ DW_TAG_enumerator ] [TM_N :: 24]
!81 = metadata !{}
!82 = metadata !{metadata !83, metadata !360, metadata !363, metadata !364, metadata !365, metadata !368, metadata !373, metadata !374, metadata !377, metadata !382, metadata !385, metadata !388, metadata !389, metadata !390, metadata !393, metadata !396, metadata !400, metadata !401, metadata !404, metadata !405, metadata !408, metadata !470, metadata !473, metadata !476, metadata !479, metadata !482, metadata !485, metadata !488, metadata !509, metadata !512, metadata !515, metadata !518, metadata !522, metadata !525}
!83 = metadata !{i32 786478, metadata !84, metadata !85, metadata !"lua_sethook", metadata !"lua_sethook", metadata !"", i32 80, metadata !86, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.lua_State*, void (%struct.lua_State*, %struct.lua_Debug*)*, i32, i32)* @lua_sethook, null, null, metadata !81, i32 80} ; [ DW_TAG_subprogram ] [line 80] [def] [lua_sethook]
!84 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/ldebug.c", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!85 = metadata !{i32 786473, metadata !84}        ; [ DW_TAG_file_type ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!86 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !87, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!87 = metadata !{null, metadata !88, metadata !320, metadata !125, metadata !125}
!88 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !89} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from lua_State]
!89 = metadata !{i32 786454, metadata !90, null, metadata !"lua_State", i32 56, i64 0, i64 0, i64 0, i32 0, metadata !91} ; [ DW_TAG_typedef ] [lua_State] [line 56, size 0, align 0, offset 0] [from lua_State]
!90 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lua.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!91 = metadata !{i32 786451, metadata !92, null, metadata !"lua_State", i32 159, i64 960, i64 32, i32 0, i32 0, null, metadata !93, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [lua_State] [line 159, size 960, align 32, offset 0] [def] [from ]
!92 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lstate.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!93 = metadata !{metadata !94, metadata !106, metadata !107, metadata !108, metadata !110, metadata !111, metadata !138, metadata !254, metadata !292, metadata !293, metadata !294, metadata !295, metadata !312, metadata !313, metadata !314, metadata !317, metadata !318, metadata !348, metadata !349, metadata !350, metadata !351, metadata !352, metadata !353, metadata !354, metadata !359}
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
!316 = metadata !{i32 786451, metadata !92, null, metadata !"lua_longjmp", i32 33, i64 0, i64 0, i32 0, i32 4, null, null, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [lua_longjmp] [line 33, size 0, align 0, offset 0] [decl] [from ]
!317 = metadata !{i32 786445, metadata !92, metadata !91, metadata !"base_ci", i32 173, i64 288, i64 32, i64 416, i32 0, metadata !256} ; [ DW_TAG_member ] [base_ci] [line 173, size 288, align 32, offset 416] [from CallInfo]
!318 = metadata !{i32 786445, metadata !92, metadata !91, metadata !"hook", i32 174, i64 32, i64 32, i64 704, i32 0, metadata !319} ; [ DW_TAG_member ] [hook] [line 174, size 32, align 32, offset 704] [from ]
!319 = metadata !{i32 786485, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !320} ; [ DW_TAG_volatile_type ] [line 0, size 0, align 0, offset 0] [from lua_Hook]
!320 = metadata !{i32 786454, metadata !90, null, metadata !"lua_Hook", i32 421, i64 0, i64 0, i64 0, i32 0, metadata !321} ; [ DW_TAG_typedef ] [lua_Hook] [line 421, size 0, align 0, offset 0] [from ]
!321 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !322} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!322 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !323, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!323 = metadata !{null, metadata !88, metadata !324}
!324 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !325} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from lua_Debug]
!325 = metadata !{i32 786454, metadata !90, null, metadata !"lua_Debug", i32 417, i64 0, i64 0, i64 0, i32 0, metadata !326} ; [ DW_TAG_typedef ] [lua_Debug] [line 417, size 0, align 0, offset 0] [from lua_Debug]
!326 = metadata !{i32 786451, metadata !90, null, metadata !"lua_Debug", i32 441, i64 800, i64 32, i32 0, i32 0, null, metadata !327, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [lua_Debug] [line 441, size 800, align 32, offset 0] [def] [from ]
!327 = metadata !{metadata !328, metadata !329, metadata !333, metadata !334, metadata !335, metadata !336, metadata !337, metadata !338, metadata !339, metadata !340, metadata !341, metadata !342, metadata !343, metadata !347}
!328 = metadata !{i32 786445, metadata !90, metadata !326, metadata !"event", i32 442, i64 32, i64 32, i64 0, i32 0, metadata !125} ; [ DW_TAG_member ] [event] [line 442, size 32, align 32, offset 0] [from int]
!329 = metadata !{i32 786445, metadata !90, metadata !326, metadata !"name", i32 443, i64 32, i64 32, i64 32, i32 0, metadata !330} ; [ DW_TAG_member ] [name] [line 443, size 32, align 32, offset 32] [from ]
!330 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !331} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!331 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !332} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!332 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!333 = metadata !{i32 786445, metadata !90, metadata !326, metadata !"namewhat", i32 444, i64 32, i64 32, i64 64, i32 0, metadata !330} ; [ DW_TAG_member ] [namewhat] [line 444, size 32, align 32, offset 64] [from ]
!334 = metadata !{i32 786445, metadata !90, metadata !326, metadata !"what", i32 445, i64 32, i64 32, i64 96, i32 0, metadata !330} ; [ DW_TAG_member ] [what] [line 445, size 32, align 32, offset 96] [from ]
!335 = metadata !{i32 786445, metadata !90, metadata !326, metadata !"source", i32 446, i64 32, i64 32, i64 128, i32 0, metadata !330} ; [ DW_TAG_member ] [source] [line 446, size 32, align 32, offset 128] [from ]
!336 = metadata !{i32 786445, metadata !90, metadata !326, metadata !"currentline", i32 447, i64 32, i64 32, i64 160, i32 0, metadata !125} ; [ DW_TAG_member ] [currentline] [line 447, size 32, align 32, offset 160] [from int]
!337 = metadata !{i32 786445, metadata !90, metadata !326, metadata !"linedefined", i32 448, i64 32, i64 32, i64 192, i32 0, metadata !125} ; [ DW_TAG_member ] [linedefined] [line 448, size 32, align 32, offset 192] [from int]
!338 = metadata !{i32 786445, metadata !90, metadata !326, metadata !"lastlinedefined", i32 449, i64 32, i64 32, i64 224, i32 0, metadata !125} ; [ DW_TAG_member ] [lastlinedefined] [line 449, size 32, align 32, offset 224] [from int]
!339 = metadata !{i32 786445, metadata !90, metadata !326, metadata !"nups", i32 450, i64 8, i64 8, i64 256, i32 0, metadata !104} ; [ DW_TAG_member ] [nups] [line 450, size 8, align 8, offset 256] [from unsigned char]
!340 = metadata !{i32 786445, metadata !90, metadata !326, metadata !"nparams", i32 451, i64 8, i64 8, i64 264, i32 0, metadata !104} ; [ DW_TAG_member ] [nparams] [line 451, size 8, align 8, offset 264] [from unsigned char]
!341 = metadata !{i32 786445, metadata !90, metadata !326, metadata !"isvararg", i32 452, i64 8, i64 8, i64 272, i32 0, metadata !332} ; [ DW_TAG_member ] [isvararg] [line 452, size 8, align 8, offset 272] [from char]
!342 = metadata !{i32 786445, metadata !90, metadata !326, metadata !"istailcall", i32 453, i64 8, i64 8, i64 280, i32 0, metadata !332} ; [ DW_TAG_member ] [istailcall] [line 453, size 8, align 8, offset 280] [from char]
!343 = metadata !{i32 786445, metadata !90, metadata !326, metadata !"short_src", i32 454, i64 480, i64 8, i64 288, i32 0, metadata !344} ; [ DW_TAG_member ] [short_src] [line 454, size 480, align 8, offset 288] [from ]
!344 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 480, i64 8, i32 0, i32 0, metadata !332, metadata !345, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 480, align 8, offset 0] [from char]
!345 = metadata !{metadata !346}
!346 = metadata !{i32 786465, i64 0, i64 60}      ; [ DW_TAG_subrange_type ] [0, 59]
!347 = metadata !{i32 786445, metadata !90, metadata !326, metadata !"i_ci", i32 456, i64 32, i64 32, i64 768, i32 0, metadata !262} ; [ DW_TAG_member ] [i_ci] [line 456, size 32, align 32, offset 768] [from ]
!348 = metadata !{i32 786445, metadata !92, metadata !91, metadata !"errfunc", i32 175, i64 32, i64 32, i64 736, i32 0, metadata !154} ; [ DW_TAG_member ] [errfunc] [line 175, size 32, align 32, offset 736] [from ptrdiff_t]
!349 = metadata !{i32 786445, metadata !92, metadata !91, metadata !"stacksize", i32 176, i64 32, i64 32, i64 768, i32 0, metadata !125} ; [ DW_TAG_member ] [stacksize] [line 176, size 32, align 32, offset 768] [from int]
!350 = metadata !{i32 786445, metadata !92, metadata !91, metadata !"basehookcount", i32 177, i64 32, i64 32, i64 800, i32 0, metadata !125} ; [ DW_TAG_member ] [basehookcount] [line 177, size 32, align 32, offset 800] [from int]
!351 = metadata !{i32 786445, metadata !92, metadata !91, metadata !"hookcount", i32 178, i64 32, i64 32, i64 832, i32 0, metadata !125} ; [ DW_TAG_member ] [hookcount] [line 178, size 32, align 32, offset 832] [from int]
!352 = metadata !{i32 786445, metadata !92, metadata !91, metadata !"nny", i32 179, i64 16, i64 16, i64 864, i32 0, metadata !109} ; [ DW_TAG_member ] [nny] [line 179, size 16, align 16, offset 864] [from unsigned short]
!353 = metadata !{i32 786445, metadata !92, metadata !91, metadata !"nCcalls", i32 180, i64 16, i64 16, i64 880, i32 0, metadata !109} ; [ DW_TAG_member ] [nCcalls] [line 180, size 16, align 16, offset 880] [from unsigned short]
!354 = metadata !{i32 786445, metadata !92, metadata !91, metadata !"hookmask", i32 181, i64 32, i64 32, i64 896, i32 0, metadata !355} ; [ DW_TAG_member ] [hookmask] [line 181, size 32, align 32, offset 896] [from sig_atomic_t]
!355 = metadata !{i32 786454, metadata !356, null, metadata !"sig_atomic_t", i32 40, i64 0, i64 0, i64 0, i32 0, metadata !357} ; [ DW_TAG_typedef ] [sig_atomic_t] [line 40, size 0, align 0, offset 0] [from __sig_atomic_t]
!356 = metadata !{metadata !"D:/Xilinx/SDx/2016.3/SDK/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include\5Csignal.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!357 = metadata !{i32 786454, metadata !358, null, metadata !"__sig_atomic_t", i32 22, i64 0, i64 0, i64 0, i32 0, metadata !125} ; [ DW_TAG_typedef ] [__sig_atomic_t] [line 22, size 0, align 0, offset 0] [from int]
!358 = metadata !{metadata !"D:/Xilinx/SDx/2016.3/SDK/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include\5Cbits/sigset.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!359 = metadata !{i32 786445, metadata !92, metadata !91, metadata !"allowhook", i32 182, i64 8, i64 8, i64 928, i32 0, metadata !102} ; [ DW_TAG_member ] [allowhook] [line 182, size 8, align 8, offset 928] [from lu_byte]
!360 = metadata !{i32 786478, metadata !84, metadata !85, metadata !"lua_gethook", metadata !"lua_gethook", metadata !"", i32 94, metadata !361, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.lua_State*, %struct.lua_Debug*)* (%struct.lua_State*)* @lua_gethook, null, null, metadata !81, i32 94} ; [ DW_TAG_subprogram ] [line 94] [def] [lua_gethook]
!361 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !362, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!362 = metadata !{metadata !320, metadata !88}
!363 = metadata !{i32 786478, metadata !84, metadata !85, metadata !"lua_gethookmask", metadata !"lua_gethookmask", metadata !"", i32 99, metadata !129, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @lua_gethookmask, null, null, metadata !81, i32 99} ; [ DW_TAG_subprogram ] [line 99] [def] [lua_gethookmask]
!364 = metadata !{i32 786478, metadata !84, metadata !85, metadata !"lua_gethookcount", metadata !"lua_gethookcount", metadata !"", i32 104, metadata !129, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @lua_gethookcount, null, null, metadata !81, i32 104} ; [ DW_TAG_subprogram ] [line 104] [def] [lua_gethookcount]
!365 = metadata !{i32 786478, metadata !84, metadata !85, metadata !"lua_getstack", metadata !"lua_getstack", metadata !"", i32 109, metadata !366, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*, i32, %struct.lua_Debug*)* @lua_getstack, null, null, metadata !81, i32 109} ; [ DW_TAG_subprogram ] [line 109] [def] [lua_getstack]
!366 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !367, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!367 = metadata !{metadata !125, metadata !88, metadata !125, metadata !324}
!368 = metadata !{i32 786478, metadata !84, metadata !85, metadata !"lua_getlocal", metadata !"lua_getlocal", metadata !"", i32 170, metadata !369, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (%struct.lua_State*, %struct.lua_Debug*, i32)* @lua_getlocal, null, null, metadata !81, i32 170} ; [ DW_TAG_subprogram ] [line 170] [def] [lua_getlocal]
!369 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !370, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!370 = metadata !{metadata !330, metadata !88, metadata !371, metadata !125}
!371 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !372} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!372 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !325} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from lua_Debug]
!373 = metadata !{i32 786478, metadata !84, metadata !85, metadata !"lua_setlocal", metadata !"lua_setlocal", metadata !"", i32 194, metadata !369, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (%struct.lua_State*, %struct.lua_Debug*, i32)* @lua_setlocal, null, null, metadata !81, i32 194} ; [ DW_TAG_subprogram ] [line 194] [def] [lua_setlocal]
!374 = metadata !{i32 786478, metadata !84, metadata !85, metadata !"lua_getinfo", metadata !"lua_getinfo", metadata !"", i32 298, metadata !375, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*, i8*, %struct.lua_Debug*)* @lua_getinfo, null, null, metadata !81, i32 298} ; [ DW_TAG_subprogram ] [line 298] [def] [lua_getinfo]
!375 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !376, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!376 = metadata !{metadata !125, metadata !88, metadata !330, metadata !324}
!377 = metadata !{i32 786478, metadata !84, metadata !85, metadata !"luaG_typeerror", metadata !"luaG_typeerror", metadata !"", i32 566, metadata !378, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.lua_State*, %struct.lua_TValue*, i8*)* @luaG_typeerror, null, null, metadata !81, i32 566} ; [ DW_TAG_subprogram ] [line 566] [def] [luaG_typeerror]
!378 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !379, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!379 = metadata !{null, metadata !88, metadata !380, metadata !330}
!380 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !381} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!381 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !114} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from TValue]
!382 = metadata !{i32 786478, metadata !84, metadata !85, metadata !"luaG_concaterror", metadata !"luaG_concaterror", metadata !"", i32 572, metadata !383, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.lua_State*, %struct.lua_TValue*, %struct.lua_TValue*)* @luaG_concaterror, null, null, metadata !81, i32 572} ; [ DW_TAG_subprogram ] [line 572] [def] [luaG_concaterror]
!383 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !384, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!384 = metadata !{null, metadata !88, metadata !380, metadata !380}
!385 = metadata !{i32 786478, metadata !84, metadata !85, metadata !"luaG_opinterror", metadata !"luaG_opinterror", metadata !"", i32 578, metadata !386, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.lua_State*, %struct.lua_TValue*, %struct.lua_TValue*, i8*)* @luaG_opinterror, null, null, metadata !81, i32 579} ; [ DW_TAG_subprogram ] [line 578] [def] [scope 579] [luaG_opinterror]
!386 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !387, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!387 = metadata !{null, metadata !88, metadata !380, metadata !380, metadata !330}
!388 = metadata !{i32 786478, metadata !84, metadata !85, metadata !"luaG_tointerror", metadata !"luaG_tointerror", metadata !"", i32 590, metadata !383, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.lua_State*, %struct.lua_TValue*, %struct.lua_TValue*)* @luaG_tointerror, null, null, metadata !81, i32 590} ; [ DW_TAG_subprogram ] [line 590] [def] [luaG_tointerror]
!389 = metadata !{i32 786478, metadata !84, metadata !85, metadata !"luaG_ordererror", metadata !"luaG_ordererror", metadata !"", i32 598, metadata !383, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.lua_State*, %struct.lua_TValue*, %struct.lua_TValue*)* @luaG_ordererror, null, null, metadata !81, i32 598} ; [ DW_TAG_subprogram ] [line 598] [def] [luaG_ordererror]
!390 = metadata !{i32 786478, metadata !84, metadata !85, metadata !"luaG_addinfo", metadata !"luaG_addinfo", metadata !"", i32 609, metadata !391, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (%struct.lua_State*, i8*, %struct.TString*, i32)* @luaG_addinfo, null, null, metadata !81, i32 610} ; [ DW_TAG_subprogram ] [line 609] [def] [scope 610] [luaG_addinfo]
!391 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !392, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!392 = metadata !{metadata !330, metadata !88, metadata !330, metadata !165, metadata !125}
!393 = metadata !{i32 786478, metadata !84, metadata !85, metadata !"luaG_errormsg", metadata !"luaG_errormsg", metadata !"", i32 621, metadata !394, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.lua_State*)* @luaG_errormsg, null, null, metadata !81, i32 621} ; [ DW_TAG_subprogram ] [line 621] [def] [luaG_errormsg]
!394 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !395, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!395 = metadata !{null, metadata !88}
!396 = metadata !{i32 786478, metadata !84, metadata !85, metadata !"luaG_runerror", metadata !"luaG_runerror", metadata !"", i32 633, metadata !397, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.lua_State*, i8*, ...)* @luaG_runerror, null, null, metadata !81, i32 633} ; [ DW_TAG_subprogram ] [line 633] [def] [luaG_runerror]
!397 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !398, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!398 = metadata !{null, metadata !88, metadata !330, metadata !399}
!399 = metadata !{i32 786456}                     ; [ DW_TAG_unspecified_parameters ]
!400 = metadata !{i32 786478, metadata !84, metadata !85, metadata !"luaG_traceexec", metadata !"luaG_traceexec", metadata !"", i32 646, metadata !394, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.lua_State*)* @luaG_traceexec, null, null, metadata !81, i32 646} ; [ DW_TAG_subprogram ] [line 646] [def] [luaG_traceexec]
!401 = metadata !{i32 786478, metadata !84, metadata !85, metadata !"currentline", metadata !"currentline", metadata !"", i32 50, metadata !402, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.CallInfo*)* @currentline, null, null, metadata !81, i32 50} ; [ DW_TAG_subprogram ] [line 50] [local] [def] [currentline]
!402 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !403, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!403 = metadata !{metadata !125, metadata !255}
!404 = metadata !{i32 786478, metadata !84, metadata !85, metadata !"currentpc", metadata !"currentpc", metadata !"", i32 44, metadata !402, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.CallInfo*)* @currentpc, null, null, metadata !81, i32 44} ; [ DW_TAG_subprogram ] [line 44] [local] [def] [currentpc]
!405 = metadata !{i32 786478, metadata !84, metadata !85, metadata !"varinfo", metadata !"varinfo", metadata !"", i32 552, metadata !406, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (%struct.lua_State*, %struct.lua_TValue*)* @varinfo, null, null, metadata !81, i32 552} ; [ DW_TAG_subprogram ] [line 552] [local] [def] [varinfo]
!406 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !407, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!407 = metadata !{metadata !330, metadata !88, metadata !380}
!408 = metadata !{i32 786478, metadata !84, metadata !85, metadata !"getobjname", metadata !"getobjname", metadata !"", i32 420, metadata !409, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (%struct.Proto*, i32, i32, i8**)* @getobjname, null, null, metadata !81, i32 421} ; [ DW_TAG_subprogram ] [line 420] [local] [def] [scope 421] [getobjname]
!409 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !410, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!410 = metadata !{metadata !330, metadata !411, metadata !125, metadata !125, metadata !469}
!411 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !412} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from Proto]
!412 = metadata !{i32 786454, metadata !97, null, metadata !"Proto", i32 429, i64 0, i64 0, i64 0, i32 0, metadata !413} ; [ DW_TAG_typedef ] [Proto] [line 429, size 0, align 0, offset 0] [from Proto]
!413 = metadata !{i32 786451, metadata !97, null, metadata !"Proto", i32 407, i64 640, i64 32, i32 0, i32 0, null, metadata !414, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [Proto] [line 407, size 640, align 32, offset 0] [def] [from ]
!414 = metadata !{metadata !415, metadata !416, metadata !417, metadata !418, metadata !419, metadata !420, metadata !421, metadata !422, metadata !423, metadata !424, metadata !425, metadata !426, metadata !427, metadata !428, metadata !429, metadata !430, metadata !432, metadata !435, metadata !437, metadata !445, metadata !453, metadata !467, metadata !468}
!415 = metadata !{i32 786445, metadata !97, metadata !413, metadata !"next", i32 408, i64 32, i64 32, i64 0, i32 0, metadata !95} ; [ DW_TAG_member ] [next] [line 408, size 32, align 32, offset 0] [from ]
!416 = metadata !{i32 786445, metadata !97, metadata !413, metadata !"tt", i32 408, i64 8, i64 8, i64 32, i32 0, metadata !102} ; [ DW_TAG_member ] [tt] [line 408, size 8, align 8, offset 32] [from lu_byte]
!417 = metadata !{i32 786445, metadata !97, metadata !413, metadata !"marked", i32 408, i64 8, i64 8, i64 40, i32 0, metadata !102} ; [ DW_TAG_member ] [marked] [line 408, size 8, align 8, offset 40] [from lu_byte]
!418 = metadata !{i32 786445, metadata !97, metadata !413, metadata !"numparams", i32 409, i64 8, i64 8, i64 48, i32 0, metadata !102} ; [ DW_TAG_member ] [numparams] [line 409, size 8, align 8, offset 48] [from lu_byte]
!419 = metadata !{i32 786445, metadata !97, metadata !413, metadata !"is_vararg", i32 410, i64 8, i64 8, i64 56, i32 0, metadata !102} ; [ DW_TAG_member ] [is_vararg] [line 410, size 8, align 8, offset 56] [from lu_byte]
!420 = metadata !{i32 786445, metadata !97, metadata !413, metadata !"maxstacksize", i32 411, i64 8, i64 8, i64 64, i32 0, metadata !102} ; [ DW_TAG_member ] [maxstacksize] [line 411, size 8, align 8, offset 64] [from lu_byte]
!421 = metadata !{i32 786445, metadata !97, metadata !413, metadata !"sizeupvalues", i32 412, i64 32, i64 32, i64 96, i32 0, metadata !125} ; [ DW_TAG_member ] [sizeupvalues] [line 412, size 32, align 32, offset 96] [from int]
!422 = metadata !{i32 786445, metadata !97, metadata !413, metadata !"sizek", i32 413, i64 32, i64 32, i64 128, i32 0, metadata !125} ; [ DW_TAG_member ] [sizek] [line 413, size 32, align 32, offset 128] [from int]
!423 = metadata !{i32 786445, metadata !97, metadata !413, metadata !"sizecode", i32 414, i64 32, i64 32, i64 160, i32 0, metadata !125} ; [ DW_TAG_member ] [sizecode] [line 414, size 32, align 32, offset 160] [from int]
!424 = metadata !{i32 786445, metadata !97, metadata !413, metadata !"sizelineinfo", i32 415, i64 32, i64 32, i64 192, i32 0, metadata !125} ; [ DW_TAG_member ] [sizelineinfo] [line 415, size 32, align 32, offset 192] [from int]
!425 = metadata !{i32 786445, metadata !97, metadata !413, metadata !"sizep", i32 416, i64 32, i64 32, i64 224, i32 0, metadata !125} ; [ DW_TAG_member ] [sizep] [line 416, size 32, align 32, offset 224] [from int]
!426 = metadata !{i32 786445, metadata !97, metadata !413, metadata !"sizelocvars", i32 417, i64 32, i64 32, i64 256, i32 0, metadata !125} ; [ DW_TAG_member ] [sizelocvars] [line 417, size 32, align 32, offset 256] [from int]
!427 = metadata !{i32 786445, metadata !97, metadata !413, metadata !"linedefined", i32 418, i64 32, i64 32, i64 288, i32 0, metadata !125} ; [ DW_TAG_member ] [linedefined] [line 418, size 32, align 32, offset 288] [from int]
!428 = metadata !{i32 786445, metadata !97, metadata !413, metadata !"lastlinedefined", i32 419, i64 32, i64 32, i64 320, i32 0, metadata !125} ; [ DW_TAG_member ] [lastlinedefined] [line 419, size 32, align 32, offset 320] [from int]
!429 = metadata !{i32 786445, metadata !97, metadata !413, metadata !"k", i32 420, i64 32, i64 32, i64 352, i32 0, metadata !113} ; [ DW_TAG_member ] [k] [line 420, size 32, align 32, offset 352] [from ]
!430 = metadata !{i32 786445, metadata !97, metadata !413, metadata !"code", i32 421, i64 32, i64 32, i64 384, i32 0, metadata !431} ; [ DW_TAG_member ] [code] [line 421, size 32, align 32, offset 384] [from ]
!431 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !274} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from Instruction]
!432 = metadata !{i32 786445, metadata !97, metadata !413, metadata !"p", i32 422, i64 32, i64 32, i64 416, i32 0, metadata !433} ; [ DW_TAG_member ] [p] [line 422, size 32, align 32, offset 416] [from ]
!433 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !434} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!434 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !413} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from Proto]
!435 = metadata !{i32 786445, metadata !97, metadata !413, metadata !"lineinfo", i32 423, i64 32, i64 32, i64 448, i32 0, metadata !436} ; [ DW_TAG_member ] [lineinfo] [line 423, size 32, align 32, offset 448] [from ]
!436 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !125} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from int]
!437 = metadata !{i32 786445, metadata !97, metadata !413, metadata !"locvars", i32 424, i64 32, i64 32, i64 480, i32 0, metadata !438} ; [ DW_TAG_member ] [locvars] [line 424, size 32, align 32, offset 480] [from ]
!438 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !439} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from LocVar]
!439 = metadata !{i32 786454, metadata !97, null, metadata !"LocVar", i32 401, i64 0, i64 0, i64 0, i32 0, metadata !440} ; [ DW_TAG_typedef ] [LocVar] [line 401, size 0, align 0, offset 0] [from LocVar]
!440 = metadata !{i32 786451, metadata !97, null, metadata !"LocVar", i32 397, i64 96, i64 32, i32 0, i32 0, null, metadata !441, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [LocVar] [line 397, size 96, align 32, offset 0] [def] [from ]
!441 = metadata !{metadata !442, metadata !443, metadata !444}
!442 = metadata !{i32 786445, metadata !97, metadata !440, metadata !"varname", i32 398, i64 32, i64 32, i64 0, i32 0, metadata !165} ; [ DW_TAG_member ] [varname] [line 398, size 32, align 32, offset 0] [from ]
!443 = metadata !{i32 786445, metadata !97, metadata !440, metadata !"startpc", i32 399, i64 32, i64 32, i64 32, i32 0, metadata !125} ; [ DW_TAG_member ] [startpc] [line 399, size 32, align 32, offset 32] [from int]
!444 = metadata !{i32 786445, metadata !97, metadata !440, metadata !"endpc", i32 400, i64 32, i64 32, i64 64, i32 0, metadata !125} ; [ DW_TAG_member ] [endpc] [line 400, size 32, align 32, offset 64] [from int]
!445 = metadata !{i32 786445, metadata !97, metadata !413, metadata !"upvalues", i32 425, i64 32, i64 32, i64 512, i32 0, metadata !446} ; [ DW_TAG_member ] [upvalues] [line 425, size 32, align 32, offset 512] [from ]
!446 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !447} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from Upvaldesc]
!447 = metadata !{i32 786454, metadata !97, null, metadata !"Upvaldesc", i32 390, i64 0, i64 0, i64 0, i32 0, metadata !448} ; [ DW_TAG_typedef ] [Upvaldesc] [line 390, size 0, align 0, offset 0] [from Upvaldesc]
!448 = metadata !{i32 786451, metadata !97, null, metadata !"Upvaldesc", i32 386, i64 64, i64 32, i32 0, i32 0, null, metadata !449, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [Upvaldesc] [line 386, size 64, align 32, offset 0] [def] [from ]
!449 = metadata !{metadata !450, metadata !451, metadata !452}
!450 = metadata !{i32 786445, metadata !97, metadata !448, metadata !"name", i32 387, i64 32, i64 32, i64 0, i32 0, metadata !165} ; [ DW_TAG_member ] [name] [line 387, size 32, align 32, offset 0] [from ]
!451 = metadata !{i32 786445, metadata !97, metadata !448, metadata !"instack", i32 388, i64 8, i64 8, i64 32, i32 0, metadata !102} ; [ DW_TAG_member ] [instack] [line 388, size 8, align 8, offset 32] [from lu_byte]
!452 = metadata !{i32 786445, metadata !97, metadata !448, metadata !"idx", i32 389, i64 8, i64 8, i64 40, i32 0, metadata !102} ; [ DW_TAG_member ] [idx] [line 389, size 8, align 8, offset 40] [from lu_byte]
!453 = metadata !{i32 786445, metadata !97, metadata !413, metadata !"cache", i32 426, i64 32, i64 32, i64 544, i32 0, metadata !454} ; [ DW_TAG_member ] [cache] [line 426, size 32, align 32, offset 544] [from ]
!454 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !455} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from LClosure]
!455 = metadata !{i32 786451, metadata !97, null, metadata !"LClosure", i32 453, i64 160, i64 32, i32 0, i32 0, null, metadata !456, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [LClosure] [line 453, size 160, align 32, offset 0] [def] [from ]
!456 = metadata !{metadata !457, metadata !458, metadata !459, metadata !460, metadata !461, metadata !462, metadata !463}
!457 = metadata !{i32 786445, metadata !97, metadata !455, metadata !"next", i32 454, i64 32, i64 32, i64 0, i32 0, metadata !95} ; [ DW_TAG_member ] [next] [line 454, size 32, align 32, offset 0] [from ]
!458 = metadata !{i32 786445, metadata !97, metadata !455, metadata !"tt", i32 454, i64 8, i64 8, i64 32, i32 0, metadata !102} ; [ DW_TAG_member ] [tt] [line 454, size 8, align 8, offset 32] [from lu_byte]
!459 = metadata !{i32 786445, metadata !97, metadata !455, metadata !"marked", i32 454, i64 8, i64 8, i64 40, i32 0, metadata !102} ; [ DW_TAG_member ] [marked] [line 454, size 8, align 8, offset 40] [from lu_byte]
!460 = metadata !{i32 786445, metadata !97, metadata !455, metadata !"nupvalues", i32 454, i64 8, i64 8, i64 48, i32 0, metadata !102} ; [ DW_TAG_member ] [nupvalues] [line 454, size 8, align 8, offset 48] [from lu_byte]
!461 = metadata !{i32 786445, metadata !97, metadata !455, metadata !"gclist", i32 454, i64 32, i64 32, i64 64, i32 0, metadata !95} ; [ DW_TAG_member ] [gclist] [line 454, size 32, align 32, offset 64] [from ]
!462 = metadata !{i32 786445, metadata !97, metadata !455, metadata !"p", i32 455, i64 32, i64 32, i64 96, i32 0, metadata !434} ; [ DW_TAG_member ] [p] [line 455, size 32, align 32, offset 96] [from ]
!463 = metadata !{i32 786445, metadata !97, metadata !455, metadata !"upvals", i32 456, i64 32, i64 32, i64 128, i32 0, metadata !464} ; [ DW_TAG_member ] [upvals] [line 456, size 32, align 32, offset 128] [from ]
!464 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 32, i64 32, i32 0, i32 0, metadata !296, metadata !465, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 32, align 32, offset 0] [from ]
!465 = metadata !{metadata !466}
!466 = metadata !{i32 786465, i64 0, i64 1}       ; [ DW_TAG_subrange_type ] [0, 0]
!467 = metadata !{i32 786445, metadata !97, metadata !413, metadata !"source", i32 427, i64 32, i64 32, i64 576, i32 0, metadata !165} ; [ DW_TAG_member ] [source] [line 427, size 32, align 32, offset 576] [from ]
!468 = metadata !{i32 786445, metadata !97, metadata !413, metadata !"gclist", i32 428, i64 32, i64 32, i64 608, i32 0, metadata !95} ; [ DW_TAG_member ] [gclist] [line 428, size 32, align 32, offset 608] [from ]
!469 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !330} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!470 = metadata !{i32 786478, metadata !84, metadata !85, metadata !"kname", metadata !"kname", metadata !"", i32 344, metadata !471, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.Proto*, i32, i32, i8**)* @kname, null, null, metadata !81, i32 344} ; [ DW_TAG_subprogram ] [line 344] [local] [def] [kname]
!471 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !472, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!472 = metadata !{null, metadata !411, metadata !125, metadata !125, metadata !469}
!473 = metadata !{i32 786478, metadata !84, metadata !85, metadata !"upvalname", metadata !"upvalname", metadata !"", i32 126, metadata !474, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (%struct.Proto*, i32)* @upvalname, null, null, metadata !81, i32 126} ; [ DW_TAG_subprogram ] [line 126] [local] [def] [upvalname]
!474 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !475, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!475 = metadata !{metadata !330, metadata !411, metadata !125}
!476 = metadata !{i32 786478, metadata !84, metadata !85, metadata !"findsetreg", metadata !"findsetreg", metadata !"", i32 374, metadata !477, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.Proto*, i32, i32)* @findsetreg, null, null, metadata !81, i32 374} ; [ DW_TAG_subprogram ] [line 374] [local] [def] [findsetreg]
!477 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !478, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!478 = metadata !{metadata !125, metadata !411, metadata !125, metadata !125}
!479 = metadata !{i32 786478, metadata !84, metadata !85, metadata !"filterpc", metadata !"filterpc", metadata !"", i32 364, metadata !480, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i32)* @filterpc, null, null, metadata !81, i32 364} ; [ DW_TAG_subprogram ] [line 364] [local] [def] [filterpc]
!480 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !481, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!481 = metadata !{metadata !125, metadata !125, metadata !125}
!482 = metadata !{i32 786478, metadata !84, metadata !85, metadata !"isinstack", metadata !"isinstack", metadata !"", i32 527, metadata !483, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.CallInfo*, %struct.lua_TValue*)* @isinstack, null, null, metadata !81, i32 527} ; [ DW_TAG_subprogram ] [line 527] [local] [def] [isinstack]
!483 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !484, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!484 = metadata !{metadata !125, metadata !255, metadata !380}
!485 = metadata !{i32 786478, metadata !84, metadata !85, metadata !"getupvalname", metadata !"getupvalname", metadata !"", i32 538, metadata !486, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (%struct.CallInfo*, %struct.lua_TValue*, i8**)* @getupvalname, null, null, metadata !81, i32 539} ; [ DW_TAG_subprogram ] [line 538] [local] [def] [scope 539] [getupvalname]
!486 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !487, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!487 = metadata !{metadata !330, metadata !255, metadata !380, metadata !469}
!488 = metadata !{i32 786478, metadata !84, metadata !85, metadata !"collectvalidlines", metadata !"collectvalidlines", metadata !"", i32 228, metadata !489, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.lua_State*, %union.Closure*)* @collectvalidlines, null, null, metadata !81, i32 228} ; [ DW_TAG_subprogram ] [line 228] [local] [def] [collectvalidlines]
!489 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !490, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!490 = metadata !{null, metadata !88, metadata !491}
!491 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !492} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from Closure]
!492 = metadata !{i32 786454, metadata !97, null, metadata !"Closure", i32 463, i64 0, i64 0, i64 0, i32 0, metadata !493} ; [ DW_TAG_typedef ] [Closure] [line 463, size 0, align 0, offset 0] [from Closure]
!493 = metadata !{i32 786455, metadata !97, null, metadata !"Closure", i32 460, i64 256, i64 64, i64 0, i32 0, null, metadata !494, i32 0, null, null, null} ; [ DW_TAG_union_type ] [Closure] [line 460, size 256, align 64, offset 0] [def] [from ]
!494 = metadata !{metadata !495, metadata !507}
!495 = metadata !{i32 786445, metadata !97, metadata !493, metadata !"c", i32 461, i64 256, i64 64, i64 0, i32 0, metadata !496} ; [ DW_TAG_member ] [c] [line 461, size 256, align 64, offset 0] [from CClosure]
!496 = metadata !{i32 786454, metadata !97, null, metadata !"CClosure", i32 450, i64 0, i64 0, i64 0, i32 0, metadata !497} ; [ DW_TAG_typedef ] [CClosure] [line 450, size 0, align 0, offset 0] [from CClosure]
!497 = metadata !{i32 786451, metadata !97, null, metadata !"CClosure", i32 446, i64 256, i64 64, i32 0, i32 0, null, metadata !498, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [CClosure] [line 446, size 256, align 64, offset 0] [def] [from ]
!498 = metadata !{metadata !499, metadata !500, metadata !501, metadata !502, metadata !503, metadata !504, metadata !505}
!499 = metadata !{i32 786445, metadata !97, metadata !497, metadata !"next", i32 447, i64 32, i64 32, i64 0, i32 0, metadata !95} ; [ DW_TAG_member ] [next] [line 447, size 32, align 32, offset 0] [from ]
!500 = metadata !{i32 786445, metadata !97, metadata !497, metadata !"tt", i32 447, i64 8, i64 8, i64 32, i32 0, metadata !102} ; [ DW_TAG_member ] [tt] [line 447, size 8, align 8, offset 32] [from lu_byte]
!501 = metadata !{i32 786445, metadata !97, metadata !497, metadata !"marked", i32 447, i64 8, i64 8, i64 40, i32 0, metadata !102} ; [ DW_TAG_member ] [marked] [line 447, size 8, align 8, offset 40] [from lu_byte]
!502 = metadata !{i32 786445, metadata !97, metadata !497, metadata !"nupvalues", i32 447, i64 8, i64 8, i64 48, i32 0, metadata !102} ; [ DW_TAG_member ] [nupvalues] [line 447, size 8, align 8, offset 48] [from lu_byte]
!503 = metadata !{i32 786445, metadata !97, metadata !497, metadata !"gclist", i32 447, i64 32, i64 32, i64 64, i32 0, metadata !95} ; [ DW_TAG_member ] [gclist] [line 447, size 32, align 32, offset 64] [from ]
!504 = metadata !{i32 786445, metadata !97, metadata !497, metadata !"f", i32 448, i64 32, i64 32, i64 96, i32 0, metadata !127} ; [ DW_TAG_member ] [f] [line 448, size 32, align 32, offset 96] [from lua_CFunction]
!505 = metadata !{i32 786445, metadata !97, metadata !497, metadata !"upvalue", i32 449, i64 128, i64 64, i64 128, i32 0, metadata !506} ; [ DW_TAG_member ] [upvalue] [line 449, size 128, align 64, offset 128] [from ]
!506 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 128, i64 64, i32 0, i32 0, metadata !114, metadata !465, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 128, align 64, offset 0] [from TValue]
!507 = metadata !{i32 786445, metadata !97, metadata !493, metadata !"l", i32 462, i64 160, i64 32, i64 0, i32 0, metadata !508} ; [ DW_TAG_member ] [l] [line 462, size 160, align 32, offset 0] [from LClosure]
!508 = metadata !{i32 786454, metadata !97, null, metadata !"LClosure", i32 457, i64 0, i64 0, i64 0, i32 0, metadata !455} ; [ DW_TAG_typedef ] [LClosure] [line 457, size 0, align 0, offset 0] [from LClosure]
!509 = metadata !{i32 786478, metadata !84, metadata !85, metadata !"auxgetinfo", metadata !"auxgetinfo", metadata !"", i32 247, metadata !510, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*, i8*, %struct.lua_Debug*, %union.Closure*, %struct.CallInfo*)* @auxgetinfo, null, null, metadata !81, i32 248} ; [ DW_TAG_subprogram ] [line 247] [local] [def] [scope 248] [auxgetinfo]
!510 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !511, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!511 = metadata !{metadata !125, metadata !88, metadata !330, metadata !324, metadata !491, metadata !255}
!512 = metadata !{i32 786478, metadata !84, metadata !85, metadata !"getfuncname", metadata !"getfuncname", metadata !"", i32 474, metadata !513, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (%struct.lua_State*, %struct.CallInfo*, i8**)* @getfuncname, null, null, metadata !81, i32 474} ; [ DW_TAG_subprogram ] [line 474] [local] [def] [getfuncname]
!513 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !514, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!514 = metadata !{metadata !330, metadata !88, metadata !255, metadata !469}
!515 = metadata !{i32 786478, metadata !84, metadata !85, metadata !"funcinfo", metadata !"funcinfo", metadata !"", i32 210, metadata !516, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.lua_Debug*, %union.Closure*)* @funcinfo, null, null, metadata !81, i32 210} ; [ DW_TAG_subprogram ] [line 210] [local] [def] [funcinfo]
!516 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !517, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!517 = metadata !{null, metadata !324, metadata !491}
!518 = metadata !{i32 786478, metadata !84, metadata !85, metadata !"findlocal", metadata !"findlocal", metadata !"", i32 144, metadata !519, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (%struct.lua_State*, %struct.CallInfo*, i32, %struct.lua_TValue**)* @findlocal, null, null, metadata !81, i32 145} ; [ DW_TAG_subprogram ] [line 144] [local] [def] [scope 145] [findlocal]
!519 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !520, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!520 = metadata !{metadata !330, metadata !88, metadata !255, metadata !125, metadata !521}
!521 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !112} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from StkId]
!522 = metadata !{i32 786478, metadata !84, metadata !85, metadata !"findvararg", metadata !"findvararg", metadata !"", i32 133, metadata !523, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (%struct.CallInfo*, i32, %struct.lua_TValue**)* @findvararg, null, null, metadata !81, i32 133} ; [ DW_TAG_subprogram ] [line 133] [local] [def] [findvararg]
!523 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !524, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!524 = metadata !{metadata !330, metadata !255, metadata !125, metadata !521}
!525 = metadata !{i32 786478, metadata !84, metadata !85, metadata !"swapextra", metadata !"swapextra", metadata !"", i32 61, metadata !394, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.lua_State*)* @swapextra, null, null, metadata !81, i32 61} ; [ DW_TAG_subprogram ] [line 61] [local] [def] [swapextra]
!526 = metadata !{void (%struct.lua_State*, void (%struct.lua_State*, %struct.lua_Debug*)*, i32, i32)* @lua_sethook}
!527 = metadata !{metadata !"lua_sethook"}
!528 = metadata !{void (%struct.lua_State*, %struct.lua_Debug*)* (%struct.lua_State*)* @lua_gethook}
!529 = metadata !{metadata !"lua_gethook"}
!530 = metadata !{i32 (%struct.lua_State*)* @lua_gethookmask}
!531 = metadata !{metadata !"lua_gethookmask"}
!532 = metadata !{i32 (%struct.lua_State*)* @lua_gethookcount}
!533 = metadata !{metadata !"lua_gethookcount"}
!534 = metadata !{i32 (%struct.lua_State*, i32, %struct.lua_Debug*)* @lua_getstack}
!535 = metadata !{metadata !"lua_getstack"}
!536 = metadata !{i8* (%struct.lua_State*, %struct.lua_Debug*, i32)* @lua_getlocal}
!537 = metadata !{metadata !"lua_getlocal"}
!538 = metadata !{void (%struct.lua_State*)* @swapextra}
!539 = metadata !{metadata !"swapextra"}
!540 = metadata !{i8* (%struct.Proto*, i32, i32)* @luaF_getlocalname}
!541 = metadata !{metadata !"luaF_getlocalname"}
!542 = metadata !{i8* (%struct.lua_State*, %struct.CallInfo*, i32, %struct.lua_TValue**)* @findlocal}
!543 = metadata !{metadata !"findlocal"}
!544 = metadata !{i8* (%struct.lua_State*, %struct.lua_Debug*, i32)* @lua_setlocal}
!545 = metadata !{metadata !"lua_setlocal"}
!546 = metadata !{i32 (%struct.lua_State*, i8*, %struct.lua_Debug*)* @lua_getinfo}
!547 = metadata !{metadata !"lua_getinfo"}
!548 = metadata !{i32 (%struct.lua_State*, i8*, %struct.lua_Debug*, %union.Closure*, %struct.CallInfo*)* @auxgetinfo}
!549 = metadata !{metadata !"auxgetinfo"}
!550 = metadata !{i8* (i8*, i32)* @strchr}
!551 = metadata !{metadata !"strchr"}
!552 = metadata !{void (%struct.lua_State*, %union.Closure*)* @collectvalidlines}
!553 = metadata !{metadata !"collectvalidlines"}
!554 = metadata !{void (%struct.lua_State*, %struct.lua_TValue*, i8*)* @luaG_typeerror}
!555 = metadata !{metadata !"luaG_typeerror"}
!556 = metadata !{i8* (%struct.lua_State*, %struct.lua_TValue*)* @luaT_objtypename}
!557 = metadata !{metadata !"luaT_objtypename"}
!558 = metadata !{void (%struct.lua_State*, i8*, ...)* @luaG_runerror}
!559 = metadata !{metadata !"luaG_runerror"}
!560 = metadata !{i8* (%struct.lua_State*, %struct.lua_TValue*)* @varinfo}
!561 = metadata !{metadata !"varinfo"}
!562 = metadata !{void (%struct.lua_State*, %struct.lua_TValue*, %struct.lua_TValue*)* @luaG_concaterror}
!563 = metadata !{metadata !"luaG_concaterror"}
!564 = metadata !{void (%struct.lua_State*, %struct.lua_TValue*, %struct.lua_TValue*, i8*)* @luaG_opinterror}
!565 = metadata !{metadata !"luaG_opinterror"}
!566 = metadata !{i32 (%struct.lua_TValue*, double*)* @luaV_tonumber_}
!567 = metadata !{metadata !"luaV_tonumber_"}
!568 = metadata !{void (%struct.lua_State*, %struct.lua_TValue*, %struct.lua_TValue*)* @luaG_tointerror}
!569 = metadata !{metadata !"luaG_tointerror"}
!570 = metadata !{i32 (%struct.lua_TValue*, i64*, i32)* @luaV_tointeger}
!571 = metadata !{metadata !"luaV_tointeger"}
!572 = metadata !{void (%struct.lua_State*, %struct.lua_TValue*, %struct.lua_TValue*)* @luaG_ordererror}
!573 = metadata !{metadata !"luaG_ordererror"}
!574 = metadata !{i32 (i8*, i8*)* @strcmp}
!575 = metadata !{metadata !"strcmp"}
!576 = metadata !{i8* (%struct.lua_State*, i8*, %struct.TString*, i32)* @luaG_addinfo}
!577 = metadata !{metadata !"luaG_addinfo"}
!578 = metadata !{void (i8*, i8*, i32)* @luaO_chunkid}
!579 = metadata !{metadata !"luaO_chunkid"}
!580 = metadata !{i8* (%struct.lua_State*, i8*, ...)* @luaO_pushfstring}
!581 = metadata !{metadata !"luaO_pushfstring"}
!582 = metadata !{void (%struct.lua_State*)* @luaG_errormsg}
!583 = metadata !{metadata !"luaG_errormsg"}
!584 = metadata !{void (%struct.lua_State*, %struct.lua_TValue*, i32)* @luaD_callnoyield}
!585 = metadata !{metadata !"luaD_callnoyield"}
!586 = metadata !{void (%struct.lua_State*, i32)* @luaD_throw}
!587 = metadata !{metadata !"luaD_throw"}
!588 = metadata !{i8* (%struct.lua_State*, i8*, { [1 x i32] })* @luaO_pushvfstring}
!589 = metadata !{metadata !"luaO_pushvfstring"}
!590 = metadata !{i32 (%struct.CallInfo*)* @currentline}
!591 = metadata !{metadata !"currentline"}
!592 = metadata !{void (%struct.lua_State*)* @luaG_traceexec}
!593 = metadata !{metadata !"luaG_traceexec"}
!594 = metadata !{void (%struct.lua_State*, i32, i32)* @luaD_hook}
!595 = metadata !{metadata !"luaD_hook"}
!596 = metadata !{i32 (%struct.CallInfo*)* @currentpc}
!597 = metadata !{metadata !"currentpc"}
!598 = metadata !{i8* (%struct.CallInfo*, %struct.lua_TValue*, i8**)* @getupvalname}
!599 = metadata !{metadata !"getupvalname"}
!600 = metadata !{i32 (%struct.CallInfo*, %struct.lua_TValue*)* @isinstack}
!601 = metadata !{metadata !"isinstack"}
!602 = metadata !{i8* (%struct.Proto*, i32, i32, i8**)* @getobjname}
!603 = metadata !{metadata !"getobjname"}
!604 = metadata !{i32 (%struct.Proto*, i32, i32)* @findsetreg}
!605 = metadata !{metadata !"findsetreg"}
!606 = metadata !{i8* (%struct.Proto*, i32)* @upvalname}
!607 = metadata !{metadata !"upvalname"}
!608 = metadata !{void (%struct.Proto*, i32, i32, i8**)* @kname}
!609 = metadata !{metadata !"kname"}
!610 = metadata !{i32 (i32, i32)* @filterpc}
!611 = metadata !{metadata !"filterpc"}
!612 = metadata !{%struct.Table* (%struct.lua_State*)* @luaH_new}
!613 = metadata !{metadata !"luaH_new"}
!614 = metadata !{void (%struct.lua_State*, %struct.Table*, i64, %struct.lua_TValue*)* @luaH_setint}
!615 = metadata !{metadata !"luaH_setint"}
!616 = metadata !{void (%struct.lua_Debug*, %union.Closure*)* @funcinfo}
!617 = metadata !{metadata !"funcinfo"}
!618 = metadata !{i8* (%struct.lua_State*, %struct.CallInfo*, i8**)* @getfuncname}
!619 = metadata !{metadata !"getfuncname"}
!620 = metadata !{i8* (%struct.CallInfo*, i32, %struct.lua_TValue**)* @findvararg}
!621 = metadata !{metadata !"findvararg"}
!622 = metadata !{metadata !"void.lua_State *.1.lua_Hook.1.int.0.int.0"}
!623 = metadata !{metadata !"lua_Hook.lua_State *.1"}
!624 = metadata !{metadata !"int.lua_State *.1"}
!625 = metadata !{metadata !"int.lua_State *.1.int.0.lua_Debug *.1"}
!626 = metadata !{metadata !"const char .lua_State *.1.const lua_Debug *.1.int.0"}
!627 = metadata !{metadata !"void.lua_State *.1"}
!628 = metadata !{metadata !"const char .const Proto *.1.int.0.int.0"}
!629 = metadata !{metadata !"const char .lua_State *.1.CallInfo *.1.int.0.StkId *.1"}
!630 = metadata !{metadata !"int.lua_State *.1.const char *.1.lua_Debug *.1"}
!631 = metadata !{metadata !"int.lua_State *.1.const char *.1.lua_Debug *.1.Closure *.1.CallInfo *.1"}
!632 = metadata !{metadata !"char .const char *.1.int.0"}
!633 = metadata !{metadata !"void.lua_State *.1.Closure *.1"}
!634 = metadata !{metadata !"void.lua_State *.1.const TValue *.1.const char *.1"}
!635 = metadata !{metadata !"const char .lua_State *.1.const TValue *.1"}
!636 = metadata !{metadata !"void.lua_State *.1.const char *.1"}
!637 = metadata !{metadata !"void.lua_State *.1.const TValue *.1.const TValue *.1"}
!638 = metadata !{metadata !"void.lua_State *.1.const TValue *.1.const TValue *.1.const char *.1"}
!639 = metadata !{metadata !"int.const TValue *.1.lua_Number *.1"}
!640 = metadata !{metadata !"int.const TValue *.1.lua_Integer *.1.int.0"}
!641 = metadata !{metadata !"int.const char *.1.const char *.1"}
!642 = metadata !{metadata !"const char .lua_State *.1.const char *.1.TString *.1.int.0"}
!643 = metadata !{metadata !"void.char *.1.const char *.1.size_t.0"}
!644 = metadata !{metadata !"const char .lua_State *.1.const char *.1"}
!645 = metadata !{metadata !"void.lua_State *.1.StkId.1.int.0"}
!646 = metadata !{metadata !"void.lua_State *.1.int.0"}
!647 = metadata !{metadata !"const char .lua_State *.1.const char *.1.va_list.0"}
!648 = metadata !{metadata !"int.CallInfo *.1"}
!649 = metadata !{metadata !"void.lua_State *.1.int.0.int.0"}
!650 = metadata !{metadata !"const char .CallInfo *.1.const TValue *.1.const char **.1"}
!651 = metadata !{metadata !"int.CallInfo *.1.const TValue *.1"}
!652 = metadata !{metadata !"const char .Proto *.1.int.0.int.0.const char **.1"}
!653 = metadata !{metadata !"int.Proto *.1.int.0.int.0"}
!654 = metadata !{metadata !"const char .Proto *.1.int.0"}
!655 = metadata !{metadata !"void.Proto *.1.int.0.int.0.const char **.1"}
!656 = metadata !{metadata !"int.int.0.int.0"}
!657 = metadata !{metadata !"Table .lua_State *.1"}
!658 = metadata !{metadata !"void.lua_State *.1.Table *.1.lua_Integer.0.TValue *.1"}
!659 = metadata !{metadata !"void.lua_Debug *.1.Closure *.1"}
!660 = metadata !{metadata !"const char .lua_State *.1.CallInfo *.1.const char **.1"}
!661 = metadata !{metadata !"const char .CallInfo *.1.int.0.StkId *.1"}
!662 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lua.h"}
!663 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/ldebug.c"}
!664 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lfunc.h"}
!665 = metadata !{metadata !"D:/Xilinx/SDx/2016.3/SDK/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include\5Cstring.h"}
!666 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/ldebug.h"}
!667 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/ltm.h"}
!668 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lvm.h"}
!669 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lobject.h"}
!670 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/ldo.h"}
!671 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/ltable.h"}
!672 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!673 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!674 = metadata !{i32 1, metadata !"wchar_size", i32 4}
!675 = metadata !{i32 1, metadata !"min_enum_size", i32 4}
!676 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
!677 = metadata !{i32 786689, metadata !83, metadata !"L", metadata !85, i32 16777296, metadata !88, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 80]
!678 = metadata !{i32 80, i32 38, metadata !83, null}
!679 = metadata !{i32 786689, metadata !83, metadata !"func", metadata !85, i32 33554512, metadata !320, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [func] [line 80]
!680 = metadata !{i32 80, i32 50, metadata !83, null}
!681 = metadata !{i32 786689, metadata !83, metadata !"mask", metadata !85, i32 50331728, metadata !125, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mask] [line 80]
!682 = metadata !{i32 80, i32 60, metadata !83, null}
!683 = metadata !{i32 786689, metadata !83, metadata !"count", metadata !85, i32 67108944, metadata !125, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [count] [line 80]
!684 = metadata !{i32 80, i32 70, metadata !83, null}
!685 = metadata !{i32 81, i32 7, metadata !686, null}
!686 = metadata !{i32 786443, metadata !84, metadata !83, i32 81, i32 7, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!687 = metadata !{i32 81, i32 7, metadata !688, null}
!688 = metadata !{i32 786443, metadata !84, metadata !686, i32 81, i32 7, i32 1, i32 131} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!689 = metadata !{i32 82, i32 5, metadata !690, null}
!690 = metadata !{i32 786443, metadata !84, metadata !686, i32 81, i32 34, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!691 = metadata !{i32 83, i32 5, metadata !690, null}
!692 = metadata !{i32 84, i32 3, metadata !690, null}
!693 = metadata !{i32 85, i32 7, metadata !694, null}
!694 = metadata !{i32 786443, metadata !84, metadata !83, i32 85, i32 7, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!695 = metadata !{i32 86, i32 5, metadata !694, null}
!696 = metadata !{i32 87, i32 3, metadata !83, null}
!697 = metadata !{i32 88, i32 3, metadata !83, null}
!698 = metadata !{i32 89, i32 3, metadata !83, null}
!699 = metadata !{i32 90, i32 3, metadata !83, null}
!700 = metadata !{i32 91, i32 1, metadata !83, null}
!701 = metadata !{i32 786689, metadata !360, metadata !"L", metadata !85, i32 16777310, metadata !88, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 94]
!702 = metadata !{i32 94, i32 42, metadata !360, null}
!703 = metadata !{i32 95, i32 3, metadata !360, null}
!704 = metadata !{i32 786689, metadata !363, metadata !"L", metadata !85, i32 16777315, metadata !88, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 99]
!705 = metadata !{i32 99, i32 41, metadata !363, null}
!706 = metadata !{i32 100, i32 3, metadata !363, null}
!707 = metadata !{i32 786689, metadata !364, metadata !"L", metadata !85, i32 16777320, metadata !88, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 104]
!708 = metadata !{i32 104, i32 42, metadata !364, null}
!709 = metadata !{i32 105, i32 3, metadata !364, null}
!710 = metadata !{i32 786689, metadata !365, metadata !"L", metadata !85, i32 16777325, metadata !88, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 109]
!711 = metadata !{i32 109, i32 38, metadata !365, null}
!712 = metadata !{i32 786689, metadata !365, metadata !"level", metadata !85, i32 33554541, metadata !125, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [level] [line 109]
!713 = metadata !{i32 109, i32 45, metadata !365, null}
!714 = metadata !{i32 786689, metadata !365, metadata !"ar", metadata !85, i32 50331757, metadata !324, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ar] [line 109]
!715 = metadata !{i32 109, i32 63, metadata !365, null}
!716 = metadata !{i32 786688, metadata !365, metadata !"status", metadata !85, i32 110, metadata !125, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [status] [line 110]
!717 = metadata !{i32 110, i32 7, metadata !365, null}
!718 = metadata !{i32 786688, metadata !365, metadata !"ci", metadata !85, i32 111, metadata !255, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ci] [line 111]
!719 = metadata !{i32 111, i32 13, metadata !365, null}
!720 = metadata !{i32 112, i32 7, metadata !721, null}
!721 = metadata !{i32 786443, metadata !84, metadata !365, i32 112, i32 7, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!722 = metadata !{i32 112, i32 18, metadata !723, null}
!723 = metadata !{i32 786443, metadata !84, metadata !721, i32 112, i32 18, i32 1, i32 132} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!724 = metadata !{i32 114, i32 8, metadata !725, null}
!725 = metadata !{i32 786443, metadata !84, metadata !365, i32 114, i32 3, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!726 = metadata !{i32 114, i32 8, metadata !727, null}
!727 = metadata !{i32 786443, metadata !84, metadata !728, i32 114, i32 8, i32 4, i32 136} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!728 = metadata !{i32 786443, metadata !84, metadata !725, i32 114, i32 8, i32 1, i32 133} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!729 = metadata !{i32 114, i32 8, metadata !730, null}
!730 = metadata !{i32 786443, metadata !84, metadata !725, i32 114, i32 8, i32 2, i32 134} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!731 = metadata !{i32 114, i32 8, metadata !732, null}
!732 = metadata !{i32 786443, metadata !84, metadata !725, i32 114, i32 8, i32 3, i32 135} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!733 = metadata !{i32 115, i32 5, metadata !725, null}
!734 = metadata !{i32 114, i32 52, metadata !725, null}
!735 = metadata !{i32 116, i32 7, metadata !736, null}
!736 = metadata !{i32 786443, metadata !84, metadata !365, i32 116, i32 7, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!737 = metadata !{i32 116, i32 7, metadata !738, null}
!738 = metadata !{i32 786443, metadata !84, metadata !736, i32 116, i32 7, i32 1, i32 137} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!739 = metadata !{i32 117, i32 5, metadata !740, null}
!740 = metadata !{i32 786443, metadata !84, metadata !736, i32 116, i32 40, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!741 = metadata !{i32 118, i32 5, metadata !740, null}
!742 = metadata !{i32 119, i32 3, metadata !740, null}
!743 = metadata !{i32 120, i32 8, metadata !736, null}
!744 = metadata !{i32 122, i32 3, metadata !365, null}
!745 = metadata !{i32 123, i32 1, metadata !365, null}
!746 = metadata !{i32 786689, metadata !368, metadata !"L", metadata !85, i32 16777386, metadata !88, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 170]
!747 = metadata !{i32 170, i32 46, metadata !368, null}
!748 = metadata !{i32 786689, metadata !368, metadata !"ar", metadata !85, i32 33554602, metadata !371, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ar] [line 170]
!749 = metadata !{i32 170, i32 66, metadata !368, null}
!750 = metadata !{i32 786689, metadata !368, metadata !"n", metadata !85, i32 50331818, metadata !125, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 170]
!751 = metadata !{i32 170, i32 74, metadata !368, null}
!752 = metadata !{i32 786688, metadata !368, metadata !"name", metadata !85, i32 171, metadata !330, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [name] [line 171]
!753 = metadata !{i32 171, i32 15, metadata !368, null}
!754 = metadata !{i32 173, i32 3, metadata !368, null}
!755 = metadata !{i32 174, i32 7, metadata !756, null}
!756 = metadata !{i32 786443, metadata !84, metadata !368, i32 174, i32 7, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!757 = metadata !{i32 175, i32 9, metadata !758, null}
!758 = metadata !{i32 786443, metadata !84, metadata !759, i32 175, i32 9, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!759 = metadata !{i32 786443, metadata !84, metadata !756, i32 174, i32 19, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!760 = metadata !{i32 176, i32 7, metadata !758, null}
!761 = metadata !{i32 178, i32 14, metadata !758, null}
!762 = metadata !{i32 179, i32 3, metadata !759, null}
!763 = metadata !{i32 786688, metadata !764, metadata !"pos", metadata !85, i32 181, metadata !112, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pos] [line 181]
!764 = metadata !{i32 786443, metadata !84, metadata !756, i32 180, i32 8, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!765 = metadata !{i32 181, i32 11, metadata !764, null}
!766 = metadata !{i32 181, i32 5, metadata !764, null}
!767 = metadata !{i32 182, i32 12, metadata !764, null}
!768 = metadata !{i32 183, i32 9, metadata !769, null}
!769 = metadata !{i32 786443, metadata !84, metadata !764, i32 183, i32 9, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!770 = metadata !{i32 786688, metadata !771, metadata !"io1", metadata !85, i32 184, metadata !113, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [io1] [line 184]
!771 = metadata !{i32 786443, metadata !84, metadata !772, i32 184, i32 7, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!772 = metadata !{i32 786443, metadata !84, metadata !769, i32 183, i32 15, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!773 = metadata !{i32 184, i32 7, metadata !771, null}
!774 = metadata !{i32 185, i32 7, metadata !775, null}
!775 = metadata !{i32 786443, metadata !84, metadata !772, i32 185, i32 7, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!776 = metadata !{i32 186, i32 5, metadata !772, null}
!777 = metadata !{i32 188, i32 3, metadata !368, null}
!778 = metadata !{i32 190, i32 3, metadata !368, null}
!779 = metadata !{i32 786689, metadata !525, metadata !"L", metadata !85, i32 16777277, metadata !88, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 61]
!780 = metadata !{i32 61, i32 35, metadata !525, null}
!781 = metadata !{i32 62, i32 7, metadata !782, null}
!782 = metadata !{i32 786443, metadata !84, metadata !525, i32 62, i32 7, i32 0, i32 129} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!783 = metadata !{i32 786688, metadata !784, metadata !"ci", metadata !85, i32 63, metadata !255, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ci] [line 63]
!784 = metadata !{i32 786443, metadata !84, metadata !782, i32 62, i32 31, i32 0, i32 130} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!785 = metadata !{i32 63, i32 15, metadata !784, null}
!786 = metadata !{i32 63, i32 5, metadata !784, null}
!787 = metadata !{i32 786688, metadata !784, metadata !"temp", metadata !85, i32 64, metadata !112, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [temp] [line 64]
!788 = metadata !{i32 64, i32 11, metadata !784, null}
!789 = metadata !{i32 64, i32 5, metadata !784, null}
!790 = metadata !{i32 65, i32 5, metadata !784, null}
!791 = metadata !{i32 66, i32 5, metadata !784, null}
!792 = metadata !{i32 67, i32 3, metadata !784, null}
!793 = metadata !{i32 68, i32 1, metadata !525, null}
!794 = metadata !{i32 786689, metadata !518, metadata !"L", metadata !85, i32 16777360, metadata !88, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 144]
!795 = metadata !{i32 144, i32 42, metadata !518, null}
!796 = metadata !{i32 786689, metadata !518, metadata !"ci", metadata !85, i32 33554576, metadata !255, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ci] [line 144]
!797 = metadata !{i32 144, i32 55, metadata !518, null}
!798 = metadata !{i32 786689, metadata !518, metadata !"n", metadata !85, i32 50331792, metadata !125, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 144]
!799 = metadata !{i32 144, i32 63, metadata !518, null}
!800 = metadata !{i32 786689, metadata !518, metadata !"pos", metadata !85, i32 67109009, metadata !521, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pos] [line 145]
!801 = metadata !{i32 145, i32 38, metadata !518, null}
!802 = metadata !{i32 786688, metadata !518, metadata !"name", metadata !85, i32 146, metadata !330, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [name] [line 146]
!803 = metadata !{i32 146, i32 15, metadata !518, null}
!804 = metadata !{i32 146, i32 3, metadata !518, null}
!805 = metadata !{i32 786688, metadata !518, metadata !"base", metadata !85, i32 147, metadata !112, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [base] [line 147]
!806 = metadata !{i32 147, i32 9, metadata !518, null}
!807 = metadata !{i32 148, i32 7, metadata !808, null}
!808 = metadata !{i32 786443, metadata !84, metadata !518, i32 148, i32 7, i32 0, i32 120} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!809 = metadata !{i32 149, i32 9, metadata !810, null}
!810 = metadata !{i32 786443, metadata !84, metadata !811, i32 149, i32 9, i32 0, i32 122} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!811 = metadata !{i32 786443, metadata !84, metadata !808, i32 148, i32 18, i32 0, i32 121} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!812 = metadata !{i32 150, i32 14, metadata !810, null}
!813 = metadata !{i32 152, i32 7, metadata !814, null}
!814 = metadata !{i32 786443, metadata !84, metadata !810, i32 151, i32 10, i32 0, i32 123} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!815 = metadata !{i32 153, i32 14, metadata !814, null}
!816 = metadata !{i32 153, i32 51, metadata !814, null}
!817 = metadata !{i32 155, i32 3, metadata !811, null}
!818 = metadata !{i32 157, i32 5, metadata !808, null}
!819 = metadata !{i32 158, i32 7, metadata !820, null}
!820 = metadata !{i32 786443, metadata !84, metadata !518, i32 158, i32 7, i32 0, i32 124} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!821 = metadata !{i32 786688, metadata !822, metadata !"limit", metadata !85, i32 159, metadata !112, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [limit] [line 159]
!822 = metadata !{i32 786443, metadata !84, metadata !820, i32 158, i32 21, i32 0, i32 125} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!823 = metadata !{i32 159, i32 11, metadata !822, null}
!824 = metadata !{i32 159, i32 5, metadata !822, null}
!825 = metadata !{i32 159, i32 5, metadata !826, null}
!826 = metadata !{i32 786443, metadata !84, metadata !822, i32 159, i32 5, i32 1, i32 138} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!827 = metadata !{i32 159, i32 5, metadata !828, null}
!828 = metadata !{i32 786443, metadata !84, metadata !822, i32 159, i32 5, i32 2, i32 139} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!829 = metadata !{i32 159, i32 5, metadata !830, null}
!830 = metadata !{i32 786443, metadata !84, metadata !831, i32 159, i32 5, i32 4, i32 141} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!831 = metadata !{i32 786443, metadata !84, metadata !822, i32 159, i32 5, i32 3, i32 140} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!832 = metadata !{i32 160, i32 9, metadata !833, null}
!833 = metadata !{i32 786443, metadata !84, metadata !822, i32 160, i32 9, i32 0, i32 126} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!834 = metadata !{i32 160, i32 9, metadata !835, null}
!835 = metadata !{i32 786443, metadata !84, metadata !833, i32 160, i32 9, i32 1, i32 142} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!836 = metadata !{i32 161, i32 7, metadata !833, null}
!837 = metadata !{i32 163, i32 7, metadata !833, null}
!838 = metadata !{i32 164, i32 3, metadata !822, null}
!839 = metadata !{i32 165, i32 3, metadata !518, null}
!840 = metadata !{i32 166, i32 3, metadata !518, null}
!841 = metadata !{i32 167, i32 1, metadata !518, null}
!842 = metadata !{i32 786689, metadata !373, metadata !"L", metadata !85, i32 16777410, metadata !88, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 194]
!843 = metadata !{i32 194, i32 46, metadata !373, null}
!844 = metadata !{i32 786689, metadata !373, metadata !"ar", metadata !85, i32 33554626, metadata !371, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ar] [line 194]
!845 = metadata !{i32 194, i32 66, metadata !373, null}
!846 = metadata !{i32 786689, metadata !373, metadata !"n", metadata !85, i32 50331842, metadata !125, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 194]
!847 = metadata !{i32 194, i32 74, metadata !373, null}
!848 = metadata !{i32 786688, metadata !373, metadata !"pos", metadata !85, i32 195, metadata !112, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pos] [line 195]
!849 = metadata !{i32 195, i32 9, metadata !373, null}
!850 = metadata !{i32 195, i32 3, metadata !373, null}
!851 = metadata !{i32 786688, metadata !373, metadata !"name", metadata !85, i32 196, metadata !330, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [name] [line 196]
!852 = metadata !{i32 196, i32 15, metadata !373, null}
!853 = metadata !{i32 198, i32 3, metadata !373, null}
!854 = metadata !{i32 199, i32 10, metadata !373, null}
!855 = metadata !{i32 200, i32 7, metadata !856, null}
!856 = metadata !{i32 786443, metadata !84, metadata !373, i32 200, i32 7, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!857 = metadata !{i32 786688, metadata !858, metadata !"io1", metadata !85, i32 201, metadata !113, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [io1] [line 201]
!858 = metadata !{i32 786443, metadata !84, metadata !859, i32 201, i32 5, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!859 = metadata !{i32 786443, metadata !84, metadata !856, i32 200, i32 13, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!860 = metadata !{i32 201, i32 5, metadata !858, null}
!861 = metadata !{i32 202, i32 5, metadata !859, null}
!862 = metadata !{i32 203, i32 3, metadata !859, null}
!863 = metadata !{i32 204, i32 3, metadata !373, null}
!864 = metadata !{i32 206, i32 3, metadata !373, null}
!865 = metadata !{i32 786689, metadata !374, metadata !"L", metadata !85, i32 16777514, metadata !88, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 298]
!866 = metadata !{i32 298, i32 37, metadata !374, null}
!867 = metadata !{i32 786689, metadata !374, metadata !"what", metadata !85, i32 33554730, metadata !330, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [what] [line 298]
!868 = metadata !{i32 298, i32 52, metadata !374, null}
!869 = metadata !{i32 786689, metadata !374, metadata !"ar", metadata !85, i32 50331946, metadata !324, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ar] [line 298]
!870 = metadata !{i32 298, i32 69, metadata !374, null}
!871 = metadata !{i32 786688, metadata !374, metadata !"status", metadata !85, i32 299, metadata !125, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [status] [line 299]
!872 = metadata !{i32 299, i32 7, metadata !374, null}
!873 = metadata !{i32 786688, metadata !374, metadata !"cl", metadata !85, i32 300, metadata !491, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cl] [line 300]
!874 = metadata !{i32 300, i32 12, metadata !374, null}
!875 = metadata !{i32 786688, metadata !374, metadata !"ci", metadata !85, i32 301, metadata !255, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ci] [line 301]
!876 = metadata !{i32 301, i32 13, metadata !374, null}
!877 = metadata !{i32 786688, metadata !374, metadata !"func", metadata !85, i32 302, metadata !112, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [func] [line 302]
!878 = metadata !{i32 302, i32 9, metadata !374, null}
!879 = metadata !{i32 304, i32 3, metadata !374, null}
!880 = metadata !{i32 305, i32 7, metadata !881, null}
!881 = metadata !{i32 786443, metadata !84, metadata !374, i32 305, i32 7, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!882 = metadata !{i32 306, i32 5, metadata !883, null}
!883 = metadata !{i32 786443, metadata !84, metadata !881, i32 305, i32 21, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!884 = metadata !{i32 307, i32 5, metadata !883, null}
!885 = metadata !{i32 309, i32 5, metadata !883, null}
!886 = metadata !{i32 310, i32 5, metadata !883, null}
!887 = metadata !{i32 311, i32 3, metadata !883, null}
!888 = metadata !{i32 313, i32 5, metadata !889, null}
!889 = metadata !{i32 786443, metadata !84, metadata !881, i32 312, i32 8, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!890 = metadata !{i32 314, i32 5, metadata !889, null}
!891 = metadata !{i32 317, i32 3, metadata !374, null}
!892 = metadata !{i32 317, i32 3, metadata !893, null}
!893 = metadata !{i32 786443, metadata !84, metadata !374, i32 317, i32 3, i32 1, i32 143} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!894 = metadata !{i32 317, i32 3, metadata !895, null}
!895 = metadata !{i32 786443, metadata !84, metadata !374, i32 317, i32 3, i32 2, i32 144} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!896 = metadata !{i32 317, i32 3, metadata !897, null}
!897 = metadata !{i32 786443, metadata !84, metadata !898, i32 317, i32 3, i32 4, i32 146} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!898 = metadata !{i32 786443, metadata !84, metadata !374, i32 317, i32 3, i32 3, i32 145} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!899 = metadata !{i32 318, i32 12, metadata !374, null}
!900 = metadata !{i32 319, i32 7, metadata !901, null}
!901 = metadata !{i32 786443, metadata !84, metadata !374, i32 319, i32 7, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!902 = metadata !{i32 786688, metadata !903, metadata !"io1", metadata !85, i32 320, metadata !113, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [io1] [line 320]
!903 = metadata !{i32 786443, metadata !84, metadata !904, i32 320, i32 5, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!904 = metadata !{i32 786443, metadata !84, metadata !901, i32 319, i32 26, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!905 = metadata !{i32 320, i32 5, metadata !903, null}
!906 = metadata !{i32 321, i32 5, metadata !907, null}
!907 = metadata !{i32 786443, metadata !84, metadata !904, i32 321, i32 5, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!908 = metadata !{i32 322, i32 3, metadata !904, null}
!909 = metadata !{i32 323, i32 3, metadata !374, null}
!910 = metadata !{i32 324, i32 7, metadata !911, null}
!911 = metadata !{i32 786443, metadata !84, metadata !374, i32 324, i32 7, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!912 = metadata !{i32 325, i32 5, metadata !911, null}
!913 = metadata !{i32 327, i32 3, metadata !374, null}
!914 = metadata !{i32 786689, metadata !509, metadata !"L", metadata !85, i32 16777463, metadata !88, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 247]
!915 = metadata !{i32 247, i32 35, metadata !509, null}
!916 = metadata !{i32 786689, metadata !509, metadata !"what", metadata !85, i32 33554679, metadata !330, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [what] [line 247]
!917 = metadata !{i32 247, i32 50, metadata !509, null}
!918 = metadata !{i32 786689, metadata !509, metadata !"ar", metadata !85, i32 50331895, metadata !324, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ar] [line 247]
!919 = metadata !{i32 247, i32 67, metadata !509, null}
!920 = metadata !{i32 786689, metadata !509, metadata !"f", metadata !85, i32 67109112, metadata !491, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [f] [line 248]
!921 = metadata !{i32 248, i32 33, metadata !509, null}
!922 = metadata !{i32 786689, metadata !509, metadata !"ci", metadata !85, i32 83886328, metadata !255, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ci] [line 248]
!923 = metadata !{i32 248, i32 46, metadata !509, null}
!924 = metadata !{i32 786688, metadata !509, metadata !"status", metadata !85, i32 249, metadata !125, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [status] [line 249]
!925 = metadata !{i32 249, i32 7, metadata !509, null}
!926 = metadata !{i32 249, i32 3, metadata !509, null}
!927 = metadata !{i32 250, i32 3, metadata !928, null}
!928 = metadata !{i32 786443, metadata !84, metadata !509, i32 250, i32 3, i32 0, i32 98} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!929 = metadata !{i32 250, i32 3, metadata !930, null}
!930 = metadata !{i32 786443, metadata !84, metadata !931, i32 250, i32 3, i32 2, i32 165} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!931 = metadata !{i32 786443, metadata !84, metadata !928, i32 250, i32 3, i32 1, i32 147} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!932 = metadata !{i32 251, i32 5, metadata !933, null}
!933 = metadata !{i32 786443, metadata !84, metadata !928, i32 250, i32 25, i32 0, i32 99} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!934 = metadata !{i32 253, i32 9, metadata !935, null}
!935 = metadata !{i32 786443, metadata !84, metadata !936, i32 252, i32 17, i32 0, i32 101} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!936 = metadata !{i32 786443, metadata !84, metadata !933, i32 251, i32 20, i32 0, i32 100} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!937 = metadata !{i32 254, i32 9, metadata !935, null}
!938 = metadata !{i32 257, i32 9, metadata !939, null}
!939 = metadata !{i32 786443, metadata !84, metadata !936, i32 256, i32 17, i32 0, i32 102} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!940 = metadata !{i32 257, i32 9, metadata !941, null}
!941 = metadata !{i32 786443, metadata !84, metadata !939, i32 257, i32 9, i32 1, i32 148} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!942 = metadata !{i32 257, i32 47, metadata !943, null}
!943 = metadata !{i32 786443, metadata !84, metadata !939, i32 257, i32 47, i32 3, i32 150} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!944 = metadata !{i32 257, i32 47, metadata !945, null}
!945 = metadata !{i32 786443, metadata !84, metadata !946, i32 257, i32 47, i32 4, i32 151} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!946 = metadata !{i32 786443, metadata !84, metadata !939, i32 257, i32 47, i32 2, i32 149} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!947 = metadata !{i32 257, i32 47, metadata !939, null}
!948 = metadata !{i32 257, i32 47, metadata !949, null}
!949 = metadata !{i32 786443, metadata !84, metadata !950, i32 257, i32 47, i32 6, i32 153} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!950 = metadata !{i32 786443, metadata !84, metadata !939, i32 257, i32 47, i32 5, i32 152} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!951 = metadata !{i32 258, i32 9, metadata !939, null}
!952 = metadata !{i32 261, i32 9, metadata !953, null}
!953 = metadata !{i32 786443, metadata !84, metadata !936, i32 260, i32 17, i32 0, i32 103} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!954 = metadata !{i32 261, i32 9, metadata !955, null}
!955 = metadata !{i32 786443, metadata !84, metadata !953, i32 261, i32 9, i32 1, i32 154} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!956 = metadata !{i32 261, i32 9, metadata !957, null}
!957 = metadata !{i32 786443, metadata !84, metadata !953, i32 261, i32 9, i32 2, i32 155} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!958 = metadata !{i32 261, i32 9, metadata !959, null}
!959 = metadata !{i32 786443, metadata !84, metadata !960, i32 261, i32 9, i32 4, i32 157} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!960 = metadata !{i32 786443, metadata !84, metadata !953, i32 261, i32 9, i32 3, i32 156} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!961 = metadata !{i32 262, i32 13, metadata !962, null}
!962 = metadata !{i32 786443, metadata !84, metadata !953, i32 262, i32 13, i32 0, i32 104} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!963 = metadata !{i32 262, i32 13, metadata !964, null}
!964 = metadata !{i32 786443, metadata !84, metadata !962, i32 262, i32 13, i32 1, i32 158} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!965 = metadata !{i32 263, i32 11, metadata !966, null}
!966 = metadata !{i32 786443, metadata !84, metadata !962, i32 262, i32 30, i32 0, i32 105} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!967 = metadata !{i32 264, i32 11, metadata !966, null}
!968 = metadata !{i32 265, i32 9, metadata !966, null}
!969 = metadata !{i32 267, i32 11, metadata !970, null}
!970 = metadata !{i32 786443, metadata !84, metadata !962, i32 266, i32 14, i32 0, i32 106} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!971 = metadata !{i32 268, i32 11, metadata !970, null}
!972 = metadata !{i32 270, i32 9, metadata !953, null}
!973 = metadata !{i32 273, i32 9, metadata !974, null}
!974 = metadata !{i32 786443, metadata !84, metadata !936, i32 272, i32 17, i32 0, i32 107} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!975 = metadata !{i32 273, i32 9, metadata !976, null}
!976 = metadata !{i32 786443, metadata !84, metadata !974, i32 273, i32 9, i32 1, i32 159} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!977 = metadata !{i32 273, i32 9, metadata !978, null}
!978 = metadata !{i32 786443, metadata !84, metadata !974, i32 273, i32 9, i32 2, i32 160} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!979 = metadata !{i32 273, i32 9, metadata !980, null}
!980 = metadata !{i32 786443, metadata !84, metadata !981, i32 273, i32 9, i32 4, i32 162} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!981 = metadata !{i32 786443, metadata !84, metadata !974, i32 273, i32 9, i32 3, i32 161} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!982 = metadata !{i32 274, i32 9, metadata !974, null}
!983 = metadata !{i32 278, i32 13, metadata !984, null}
!984 = metadata !{i32 786443, metadata !84, metadata !985, i32 278, i32 13, i32 0, i32 109} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!985 = metadata !{i32 786443, metadata !84, metadata !936, i32 276, i32 17, i32 0, i32 108} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!986 = metadata !{i32 278, i32 13, metadata !987, null}
!987 = metadata !{i32 786443, metadata !84, metadata !984, i32 278, i32 13, i32 1, i32 163} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!988 = metadata !{i32 278, i32 13, metadata !989, null}
!989 = metadata !{i32 786443, metadata !84, metadata !984, i32 278, i32 13, i32 2, i32 164} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!990 = metadata !{i32 279, i32 26, metadata !984, null}
!991 = metadata !{i32 281, i32 11, metadata !984, null}
!992 = metadata !{i32 282, i32 13, metadata !993, null}
!993 = metadata !{i32 786443, metadata !84, metadata !985, i32 282, i32 13, i32 0, i32 110} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!994 = metadata !{i32 283, i32 11, metadata !995, null}
!995 = metadata !{i32 786443, metadata !84, metadata !993, i32 282, i32 35, i32 0, i32 111} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!996 = metadata !{i32 284, i32 11, metadata !995, null}
!997 = metadata !{i32 285, i32 9, metadata !995, null}
!998 = metadata !{i32 286, i32 9, metadata !985, null}
!999 = metadata !{i32 290, i32 9, metadata !936, null}
!1000 = metadata !{i32 291, i32 16, metadata !936, null}
!1001 = metadata !{i32 292, i32 5, metadata !936, null}
!1002 = metadata !{i32 293, i32 3, metadata !933, null}
!1003 = metadata !{i32 250, i32 17, metadata !928, null}
!1004 = metadata !{i32 294, i32 3, metadata !509, null}
!1005 = metadata !{i32 786689, metadata !488, metadata !"L", metadata !85, i32 16777444, metadata !88, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 228]
!1006 = metadata !{i32 228, i32 43, metadata !488, null}
!1007 = metadata !{i32 786689, metadata !488, metadata !"f", metadata !85, i32 33554660, metadata !491, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [f] [line 228]
!1008 = metadata !{i32 228, i32 55, metadata !488, null}
!1009 = metadata !{i32 229, i32 7, metadata !1010, null}
!1010 = metadata !{i32 786443, metadata !84, metadata !488, i32 229, i32 7, i32 0, i32 90} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!1011 = metadata !{i32 229, i32 7, metadata !1012, null}
!1012 = metadata !{i32 786443, metadata !84, metadata !1010, i32 229, i32 7, i32 1, i32 166} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!1013 = metadata !{i32 230, i32 5, metadata !1014, null}
!1014 = metadata !{i32 786443, metadata !84, metadata !1010, i32 229, i32 24, i32 0, i32 91} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!1015 = metadata !{i32 231, i32 5, metadata !1016, null}
!1016 = metadata !{i32 786443, metadata !84, metadata !1014, i32 231, i32 5, i32 0, i32 92} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!1017 = metadata !{i32 232, i32 3, metadata !1014, null}
!1018 = metadata !{i32 786688, metadata !1019, metadata !"i", metadata !85, i32 234, metadata !125, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 234]
!1019 = metadata !{i32 786443, metadata !84, metadata !1010, i32 233, i32 8, i32 0, i32 93} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!1020 = metadata !{i32 234, i32 9, metadata !1019, null}
!1021 = metadata !{i32 786688, metadata !1019, metadata !"v", metadata !85, i32 235, metadata !114, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [v] [line 235]
!1022 = metadata !{i32 235, i32 12, metadata !1019, null}
!1023 = metadata !{i32 786688, metadata !1019, metadata !"lineinfo", metadata !85, i32 236, metadata !436, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lineinfo] [line 236]
!1024 = metadata !{i32 236, i32 10, metadata !1019, null}
!1025 = metadata !{i32 236, i32 5, metadata !1019, null}
!1026 = metadata !{i32 786688, metadata !1019, metadata !"t", metadata !85, i32 237, metadata !1027, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [t] [line 237]
!1027 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1028} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from Table]
!1028 = metadata !{i32 786454, metadata !97, null, metadata !"Table", i32 507, i64 0, i64 0, i64 0, i32 0, metadata !218} ; [ DW_TAG_typedef ] [Table] [line 507, size 0, align 0, offset 0] [from Table]
!1029 = metadata !{i32 237, i32 12, metadata !1019, null}
!1030 = metadata !{i32 237, i32 16, metadata !1019, null}
!1031 = metadata !{i32 786688, metadata !1032, metadata !"io", metadata !85, i32 238, metadata !113, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [io] [line 238]
!1032 = metadata !{i32 786443, metadata !84, metadata !1019, i32 238, i32 5, i32 0, i32 94} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!1033 = metadata !{i32 238, i32 5, metadata !1032, null}
!1034 = metadata !{i32 786688, metadata !1032, metadata !"x_", metadata !85, i32 238, metadata !1027, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x_] [line 238]
!1035 = metadata !{i32 239, i32 5, metadata !1036, null}
!1036 = metadata !{i32 786443, metadata !84, metadata !1019, i32 239, i32 5, i32 0, i32 95} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!1037 = metadata !{i32 786688, metadata !1038, metadata !"io", metadata !85, i32 240, metadata !113, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [io] [line 240]
!1038 = metadata !{i32 786443, metadata !84, metadata !1019, i32 240, i32 5, i32 0, i32 96} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!1039 = metadata !{i32 240, i32 5, metadata !1038, null}
!1040 = metadata !{i32 241, i32 10, metadata !1041, null}
!1041 = metadata !{i32 786443, metadata !84, metadata !1019, i32 241, i32 5, i32 0, i32 97} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!1042 = metadata !{i32 241, i32 10, metadata !1043, null}
!1043 = metadata !{i32 786443, metadata !84, metadata !1044, i32 241, i32 10, i32 2, i32 168} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!1044 = metadata !{i32 786443, metadata !84, metadata !1041, i32 241, i32 10, i32 1, i32 167} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!1045 = metadata !{i32 242, i32 7, metadata !1041, null}
!1046 = metadata !{i32 241, i32 43, metadata !1041, null}
!1047 = metadata !{i32 244, i32 1, metadata !488, null}
!1048 = metadata !{i32 786689, metadata !377, metadata !"L", metadata !85, i32 16777782, metadata !88, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 566]
!1049 = metadata !{i32 566, i32 36, metadata !377, null}
!1050 = metadata !{i32 786689, metadata !377, metadata !"o", metadata !85, i32 33554998, metadata !380, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [o] [line 566]
!1051 = metadata !{i32 566, i32 53, metadata !377, null}
!1052 = metadata !{i32 786689, metadata !377, metadata !"op", metadata !85, i32 50332214, metadata !330, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [op] [line 566]
!1053 = metadata !{i32 566, i32 68, metadata !377, null}
!1054 = metadata !{i32 786688, metadata !377, metadata !"t", metadata !85, i32 567, metadata !330, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [t] [line 567]
!1055 = metadata !{i32 567, i32 15, metadata !377, null}
!1056 = metadata !{i32 567, i32 19, metadata !377, null}
!1057 = metadata !{i32 568, i32 3, metadata !377, null}
!1058 = metadata !{i32 568, i32 57, metadata !377, null}
!1059 = metadata !{i32 569, i32 1, metadata !377, null}
!1060 = metadata !{i32 786689, metadata !396, metadata !"L", metadata !85, i32 16777849, metadata !88, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 633]
!1061 = metadata !{i32 633, i32 35, metadata !396, null}
!1062 = metadata !{i32 786689, metadata !396, metadata !"fmt", metadata !85, i32 33555065, metadata !330, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fmt] [line 633]
!1063 = metadata !{i32 633, i32 50, metadata !396, null}
!1064 = metadata !{i32 786688, metadata !396, metadata !"ci", metadata !85, i32 634, metadata !255, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ci] [line 634]
!1065 = metadata !{i32 634, i32 13, metadata !396, null}
!1066 = metadata !{i32 634, i32 3, metadata !396, null}
!1067 = metadata !{i32 786688, metadata !396, metadata !"msg", metadata !85, i32 635, metadata !330, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [msg] [line 635]
!1068 = metadata !{i32 635, i32 15, metadata !396, null}
!1069 = metadata !{i32 786688, metadata !396, metadata !"argp", metadata !85, i32 636, metadata !1070, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [argp] [line 636]
!1070 = metadata !{i32 786454, metadata !1071, null, metadata !"va_list", i32 98, i64 0, i64 0, i64 0, i32 0, metadata !1072} ; [ DW_TAG_typedef ] [va_list] [line 98, size 0, align 0, offset 0] [from __gnuc_va_list]
!1071 = metadata !{metadata !"D:/Xilinx/SDx/2016.3/SDK/gnu/aarch32/nt/gcc-arm-linux-gnueabi/lib/gcc/arm-linux-gnueabihf/5.2.1/include\5Cstdarg.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!1072 = metadata !{i32 786454, metadata !1071, null, metadata !"__gnuc_va_list", i32 40, i64 0, i64 0, i64 0, i32 0, metadata !1073} ; [ DW_TAG_typedef ] [__gnuc_va_list] [line 40, size 0, align 0, offset 0] [from __builtin_va_list]
!1073 = metadata !{i32 786454, metadata !1, null, metadata !"__builtin_va_list", i32 636, i64 0, i64 0, i64 0, i32 0, metadata !1074} ; [ DW_TAG_typedef ] [__builtin_va_list] [line 636, size 0, align 0, offset 0] [from __va_list]
!1074 = metadata !{i32 786451, metadata !1, null, metadata !"__va_list", i32 636, i64 32, i64 32, i32 0, i32 0, null, metadata !1075, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [__va_list] [line 636, size 32, align 32, offset 0] [def] [from ]
!1075 = metadata !{metadata !1076}
!1076 = metadata !{i32 786445, metadata !1, metadata !1074, metadata !"__ap", i32 636, i64 32, i64 32, i64 0, i32 0, metadata !123} ; [ DW_TAG_member ] [__ap] [line 636, size 32, align 32, offset 0] [from ]
!1077 = metadata !{i32 636, i32 11, metadata !396, null}
!1078 = metadata !{i32 637, i32 3, metadata !396, null}
!1079 = metadata !{i32 638, i32 9, metadata !396, null}
!1080 = metadata !{i32 639, i32 3, metadata !396, null}
!1081 = metadata !{i32 640, i32 7, metadata !1082, null}
!1082 = metadata !{i32 786443, metadata !84, metadata !396, i32 640, i32 7, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!1083 = metadata !{i32 641, i32 5, metadata !1082, null}
!1084 = metadata !{i32 641, i32 50, metadata !1082, null}
!1085 = metadata !{i32 642, i32 3, metadata !396, null}
!1086 = metadata !{i32 643, i32 1, metadata !396, null}
!1087 = metadata !{i32 786689, metadata !405, metadata !"L", metadata !85, i32 16777768, metadata !88, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 552]
!1088 = metadata !{i32 552, i32 40, metadata !405, null}
!1089 = metadata !{i32 786689, metadata !405, metadata !"o", metadata !85, i32 33554984, metadata !380, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [o] [line 552]
!1090 = metadata !{i32 552, i32 57, metadata !405, null}
!1091 = metadata !{i32 786688, metadata !405, metadata !"name", metadata !85, i32 553, metadata !330, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [name] [line 553]
!1092 = metadata !{i32 553, i32 15, metadata !405, null}
!1093 = metadata !{i32 553, i32 3, metadata !405, null}
!1094 = metadata !{i32 786688, metadata !405, metadata !"ci", metadata !85, i32 554, metadata !255, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ci] [line 554]
!1095 = metadata !{i32 554, i32 13, metadata !405, null}
!1096 = metadata !{i32 554, i32 3, metadata !405, null}
!1097 = metadata !{i32 786688, metadata !405, metadata !"kind", metadata !85, i32 555, metadata !330, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [kind] [line 555]
!1098 = metadata !{i32 555, i32 15, metadata !405, null}
!1099 = metadata !{i32 555, i32 3, metadata !405, null}
!1100 = metadata !{i32 556, i32 7, metadata !1101, null}
!1101 = metadata !{i32 786443, metadata !84, metadata !405, i32 556, i32 7, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!1102 = metadata !{i32 557, i32 12, metadata !1103, null}
!1103 = metadata !{i32 786443, metadata !84, metadata !1101, i32 556, i32 18, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!1104 = metadata !{i32 558, i32 9, metadata !1105, null}
!1105 = metadata !{i32 786443, metadata !84, metadata !1103, i32 558, i32 9, i32 0, i32 50} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!1106 = metadata !{i32 558, i32 18, metadata !1107, null}
!1107 = metadata !{i32 786443, metadata !84, metadata !1105, i32 558, i32 18, i32 1, i32 169} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!1108 = metadata !{i32 559, i32 14, metadata !1105, null}
!1109 = metadata !{i32 559, i32 41, metadata !1105, null}
!1110 = metadata !{i32 561, i32 3, metadata !1103, null}
!1111 = metadata !{i32 562, i32 3, metadata !405, null}
!1112 = metadata !{i32 562, i32 19, metadata !1113, null}
!1113 = metadata !{i32 786443, metadata !84, metadata !405, i32 562, i32 19, i32 1, i32 170} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!1114 = metadata !{i32 562, i32 19, metadata !1115, null}
!1115 = metadata !{i32 786443, metadata !84, metadata !405, i32 562, i32 19, i32 2, i32 171} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!1116 = metadata !{i32 562, i32 19, metadata !405, null}
!1117 = metadata !{i32 562, i32 19, metadata !1118, null}
!1118 = metadata !{i32 786443, metadata !84, metadata !1119, i32 562, i32 19, i32 4, i32 173} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!1119 = metadata !{i32 786443, metadata !84, metadata !405, i32 562, i32 19, i32 3, i32 172} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!1120 = metadata !{i32 786689, metadata !382, metadata !"L", metadata !85, i32 16777788, metadata !88, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 572]
!1121 = metadata !{i32 572, i32 38, metadata !382, null}
!1122 = metadata !{i32 786689, metadata !382, metadata !"p1", metadata !85, i32 33555004, metadata !380, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [p1] [line 572]
!1123 = metadata !{i32 572, i32 55, metadata !382, null}
!1124 = metadata !{i32 786689, metadata !382, metadata !"p2", metadata !85, i32 50332220, metadata !380, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [p2] [line 572]
!1125 = metadata !{i32 572, i32 73, metadata !382, null}
!1126 = metadata !{i32 573, i32 7, metadata !1127, null}
!1127 = metadata !{i32 786443, metadata !84, metadata !382, i32 573, i32 7, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!1128 = metadata !{i32 573, i32 7, metadata !1129, null}
!1129 = metadata !{i32 786443, metadata !84, metadata !1127, i32 573, i32 7, i32 2, i32 175} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!1130 = metadata !{i32 573, i32 38, metadata !1131, null}
!1131 = metadata !{i32 786443, metadata !84, metadata !1132, i32 573, i32 38, i32 3, i32 176} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!1132 = metadata !{i32 786443, metadata !84, metadata !1127, i32 573, i32 38, i32 1, i32 174} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!1133 = metadata !{i32 574, i32 3, metadata !382, null}
!1134 = metadata !{i32 575, i32 1, metadata !382, null}
!1135 = metadata !{i32 786689, metadata !385, metadata !"L", metadata !85, i32 16777794, metadata !88, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 578]
!1136 = metadata !{i32 578, i32 37, metadata !385, null}
!1137 = metadata !{i32 786689, metadata !385, metadata !"p1", metadata !85, i32 33555010, metadata !380, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [p1] [line 578]
!1138 = metadata !{i32 578, i32 54, metadata !385, null}
!1139 = metadata !{i32 786689, metadata !385, metadata !"p2", metadata !85, i32 50332227, metadata !380, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [p2] [line 579]
!1140 = metadata !{i32 579, i32 40, metadata !385, null}
!1141 = metadata !{i32 786689, metadata !385, metadata !"msg", metadata !85, i32 67109443, metadata !330, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [msg] [line 579]
!1142 = metadata !{i32 579, i32 56, metadata !385, null}
!1143 = metadata !{i32 786688, metadata !385, metadata !"temp", metadata !85, i32 580, metadata !135, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [temp] [line 580]
!1144 = metadata !{i32 580, i32 14, metadata !385, null}
!1145 = metadata !{i32 581, i32 7, metadata !1146, null}
!1146 = metadata !{i32 786443, metadata !84, metadata !385, i32 581, i32 7, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!1147 = metadata !{i32 581, i32 7, metadata !1148, null}
!1148 = metadata !{i32 786443, metadata !84, metadata !1146, i32 581, i32 7, i32 1, i32 177} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!1149 = metadata !{i32 581, i32 8, metadata !1150, null}
!1150 = metadata !{i32 786443, metadata !84, metadata !1146, i32 581, i32 8, i32 2, i32 178} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!1151 = metadata !{i32 582, i32 5, metadata !1146, null}
!1152 = metadata !{i32 583, i32 3, metadata !385, null}
!1153 = metadata !{i32 584, i32 1, metadata !385, null}
!1154 = metadata !{i32 786689, metadata !388, metadata !"L", metadata !85, i32 16777806, metadata !88, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 590]
!1155 = metadata !{i32 590, i32 37, metadata !388, null}
!1156 = metadata !{i32 786689, metadata !388, metadata !"p1", metadata !85, i32 33555022, metadata !380, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [p1] [line 590]
!1157 = metadata !{i32 590, i32 54, metadata !388, null}
!1158 = metadata !{i32 786689, metadata !388, metadata !"p2", metadata !85, i32 50332238, metadata !380, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [p2] [line 590]
!1159 = metadata !{i32 590, i32 72, metadata !388, null}
!1160 = metadata !{i32 786688, metadata !388, metadata !"temp", metadata !85, i32 591, metadata !132, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [temp] [line 591]
!1161 = metadata !{i32 591, i32 15, metadata !388, null}
!1162 = metadata !{i32 592, i32 7, metadata !1163, null}
!1163 = metadata !{i32 786443, metadata !84, metadata !388, i32 592, i32 7, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!1164 = metadata !{i32 592, i32 7, metadata !1165, null}
!1165 = metadata !{i32 786443, metadata !84, metadata !1163, i32 592, i32 7, i32 1, i32 179} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!1166 = metadata !{i32 592, i32 8, metadata !1167, null}
!1167 = metadata !{i32 786443, metadata !84, metadata !1163, i32 592, i32 8, i32 2, i32 180} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!1168 = metadata !{i32 593, i32 5, metadata !1163, null}
!1169 = metadata !{i32 594, i32 3, metadata !388, null}
!1170 = metadata !{i32 594, i32 62, metadata !388, null}
!1171 = metadata !{i32 595, i32 1, metadata !388, null}
!1172 = metadata !{i32 786689, metadata !389, metadata !"L", metadata !85, i32 16777814, metadata !88, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 598]
!1173 = metadata !{i32 598, i32 37, metadata !389, null}
!1174 = metadata !{i32 786689, metadata !389, metadata !"p1", metadata !85, i32 33555030, metadata !380, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [p1] [line 598]
!1175 = metadata !{i32 598, i32 54, metadata !389, null}
!1176 = metadata !{i32 786689, metadata !389, metadata !"p2", metadata !85, i32 50332246, metadata !380, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [p2] [line 598]
!1177 = metadata !{i32 598, i32 72, metadata !389, null}
!1178 = metadata !{i32 786688, metadata !389, metadata !"t1", metadata !85, i32 599, metadata !330, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [t1] [line 599]
!1179 = metadata !{i32 599, i32 15, metadata !389, null}
!1180 = metadata !{i32 599, i32 20, metadata !389, null}
!1181 = metadata !{i32 786688, metadata !389, metadata !"t2", metadata !85, i32 600, metadata !330, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [t2] [line 600]
!1182 = metadata !{i32 600, i32 15, metadata !389, null}
!1183 = metadata !{i32 600, i32 20, metadata !389, null}
!1184 = metadata !{i32 601, i32 7, metadata !1185, null}
!1185 = metadata !{i32 786443, metadata !84, metadata !389, i32 601, i32 7, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!1186 = metadata !{i32 602, i32 5, metadata !1185, null}
!1187 = metadata !{i32 604, i32 5, metadata !1185, null}
!1188 = metadata !{i32 605, i32 1, metadata !389, null}
!1189 = metadata !{i32 786689, metadata !390, metadata !"L", metadata !85, i32 16777825, metadata !88, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 609]
!1190 = metadata !{i32 609, i32 38, metadata !390, null}
!1191 = metadata !{i32 786689, metadata !390, metadata !"msg", metadata !85, i32 33555041, metadata !330, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [msg] [line 609]
!1192 = metadata !{i32 609, i32 53, metadata !390, null}
!1193 = metadata !{i32 786689, metadata !390, metadata !"src", metadata !85, i32 50332257, metadata !165, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [src] [line 609]
!1194 = metadata !{i32 609, i32 67, metadata !390, null}
!1195 = metadata !{i32 786689, metadata !390, metadata !"line", metadata !85, i32 67109474, metadata !125, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [line] [line 610]
!1196 = metadata !{i32 610, i32 45, metadata !390, null}
!1197 = metadata !{i32 786688, metadata !390, metadata !"buff", metadata !85, i32 611, metadata !344, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buff] [line 611]
!1198 = metadata !{i32 611, i32 8, metadata !390, null}
!1199 = metadata !{i32 612, i32 7, metadata !1200, null}
!1200 = metadata !{i32 786443, metadata !84, metadata !390, i32 612, i32 7, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!1201 = metadata !{i32 613, i32 5, metadata !1200, null}
!1202 = metadata !{i32 615, i32 5, metadata !1203, null}
!1203 = metadata !{i32 786443, metadata !84, metadata !1200, i32 614, i32 8, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!1204 = metadata !{i32 615, i32 20, metadata !1203, null}
!1205 = metadata !{i32 617, i32 10, metadata !390, null}
!1206 = metadata !{i32 786689, metadata !393, metadata !"L", metadata !85, i32 16777837, metadata !88, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 621]
!1207 = metadata !{i32 621, i32 35, metadata !393, null}
!1208 = metadata !{i32 622, i32 7, metadata !1209, null}
!1209 = metadata !{i32 786443, metadata !84, metadata !393, i32 622, i32 7, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!1210 = metadata !{i32 786688, metadata !1211, metadata !"errfunc", metadata !85, i32 623, metadata !112, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [errfunc] [line 623]
!1211 = metadata !{i32 786443, metadata !84, metadata !1209, i32 622, i32 24, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!1212 = metadata !{i32 623, i32 11, metadata !1211, null}
!1213 = metadata !{i32 623, i32 5, metadata !1211, null}
!1214 = metadata !{i32 786688, metadata !1215, metadata !"io1", metadata !85, i32 624, metadata !113, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [io1] [line 624]
!1215 = metadata !{i32 786443, metadata !84, metadata !1211, i32 624, i32 5, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!1216 = metadata !{i32 624, i32 5, metadata !1215, null}
!1217 = metadata !{i32 786688, metadata !1218, metadata !"io1", metadata !85, i32 625, metadata !113, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [io1] [line 625]
!1218 = metadata !{i32 786443, metadata !84, metadata !1211, i32 625, i32 5, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!1219 = metadata !{i32 625, i32 5, metadata !1218, null}
!1220 = metadata !{i32 626, i32 5, metadata !1211, null}
!1221 = metadata !{i32 627, i32 5, metadata !1211, null}
!1222 = metadata !{i32 628, i32 3, metadata !1211, null}
!1223 = metadata !{i32 629, i32 3, metadata !393, null}
!1224 = metadata !{i32 630, i32 1, metadata !393, null}
!1225 = metadata !{i32 786689, metadata !401, metadata !"ci", metadata !85, i32 16777266, metadata !255, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ci] [line 50]
!1226 = metadata !{i32 50, i32 35, metadata !401, null}
!1227 = metadata !{i32 51, i32 3, metadata !401, null}
!1228 = metadata !{i32 51, i32 10, metadata !1229, null}
!1229 = metadata !{i32 786443, metadata !84, metadata !401, i32 51, i32 10, i32 1, i32 181} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!1230 = metadata !{i32 51, i32 10, metadata !1231, null}
!1231 = metadata !{i32 786443, metadata !84, metadata !401, i32 51, i32 10, i32 2, i32 182} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!1232 = metadata !{i32 51, i32 10, metadata !401, null}
!1233 = metadata !{i32 51, i32 10, metadata !1234, null}
!1234 = metadata !{i32 786443, metadata !84, metadata !1235, i32 51, i32 10, i32 4, i32 184} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!1235 = metadata !{i32 786443, metadata !84, metadata !401, i32 51, i32 10, i32 3, i32 183} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!1236 = metadata !{i32 786689, metadata !400, metadata !"L", metadata !85, i32 16777862, metadata !88, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 646]
!1237 = metadata !{i32 646, i32 33, metadata !400, null}
!1238 = metadata !{i32 786688, metadata !400, metadata !"ci", metadata !85, i32 647, metadata !255, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ci] [line 647]
!1239 = metadata !{i32 647, i32 13, metadata !400, null}
!1240 = metadata !{i32 647, i32 3, metadata !400, null}
!1241 = metadata !{i32 786688, metadata !400, metadata !"mask", metadata !85, i32 648, metadata !102, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mask] [line 648]
!1242 = metadata !{i32 648, i32 11, metadata !400, null}
!1243 = metadata !{i32 648, i32 3, metadata !400, null}
!1244 = metadata !{i32 786688, metadata !400, metadata !"counthook", metadata !85, i32 649, metadata !125, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [counthook] [line 649]
!1245 = metadata !{i32 649, i32 7, metadata !400, null}
!1246 = metadata !{i32 649, i32 3, metadata !400, null}
!1247 = metadata !{i32 649, i32 3, metadata !1248, null}
!1248 = metadata !{i32 786443, metadata !84, metadata !400, i32 649, i32 3, i32 1, i32 185} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!1249 = metadata !{i32 649, i32 3, metadata !1250, null}
!1250 = metadata !{i32 786443, metadata !84, metadata !400, i32 649, i32 3, i32 2, i32 186} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!1251 = metadata !{i32 650, i32 7, metadata !1252, null}
!1252 = metadata !{i32 786443, metadata !84, metadata !400, i32 650, i32 7, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!1253 = metadata !{i32 651, i32 5, metadata !1252, null}
!1254 = metadata !{i32 652, i32 12, metadata !1255, null}
!1255 = metadata !{i32 786443, metadata !84, metadata !1252, i32 652, i32 12, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!1256 = metadata !{i32 653, i32 5, metadata !1255, null}
!1257 = metadata !{i32 654, i32 7, metadata !1258, null}
!1258 = metadata !{i32 786443, metadata !84, metadata !400, i32 654, i32 7, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!1259 = metadata !{i32 655, i32 5, metadata !1260, null}
!1260 = metadata !{i32 786443, metadata !84, metadata !1258, i32 654, i32 40, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!1261 = metadata !{i32 656, i32 5, metadata !1260, null}
!1262 = metadata !{i32 658, i32 7, metadata !1263, null}
!1263 = metadata !{i32 786443, metadata !84, metadata !400, i32 658, i32 7, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!1264 = metadata !{i32 659, i32 5, metadata !1263, null}
!1265 = metadata !{i32 660, i32 7, metadata !1266, null}
!1266 = metadata !{i32 786443, metadata !84, metadata !400, i32 660, i32 7, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!1267 = metadata !{i32 786688, metadata !1268, metadata !"p", metadata !85, i32 661, metadata !411, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 661]
!1268 = metadata !{i32 786443, metadata !84, metadata !1266, i32 660, i32 28, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!1269 = metadata !{i32 661, i32 12, metadata !1268, null}
!1270 = metadata !{i32 661, i32 5, metadata !1268, null}
!1271 = metadata !{i32 786688, metadata !1268, metadata !"npc", metadata !85, i32 662, metadata !125, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [npc] [line 662]
!1272 = metadata !{i32 662, i32 9, metadata !1268, null}
!1273 = metadata !{i32 662, i32 5, metadata !1268, null}
!1274 = metadata !{i32 786688, metadata !1268, metadata !"newline", metadata !85, i32 663, metadata !125, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [newline] [line 663]
!1275 = metadata !{i32 663, i32 9, metadata !1268, null}
!1276 = metadata !{i32 663, i32 5, metadata !1268, null}
!1277 = metadata !{i32 663, i32 5, metadata !1278, null}
!1278 = metadata !{i32 786443, metadata !84, metadata !1268, i32 663, i32 5, i32 1, i32 187} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!1279 = metadata !{i32 663, i32 5, metadata !1280, null}
!1280 = metadata !{i32 786443, metadata !84, metadata !1268, i32 663, i32 5, i32 2, i32 188} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!1281 = metadata !{i32 663, i32 5, metadata !1282, null}
!1282 = metadata !{i32 786443, metadata !84, metadata !1283, i32 663, i32 5, i32 4, i32 190} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!1283 = metadata !{i32 786443, metadata !84, metadata !1268, i32 663, i32 5, i32 3, i32 189} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!1284 = metadata !{i32 664, i32 9, metadata !1285, null}
!1285 = metadata !{i32 786443, metadata !84, metadata !1268, i32 664, i32 9, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!1286 = metadata !{i32 664, i32 9, metadata !1287, null}
!1287 = metadata !{i32 786443, metadata !84, metadata !1285, i32 664, i32 9, i32 1, i32 191} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!1288 = metadata !{i32 664, i32 9, metadata !1289, null}
!1289 = metadata !{i32 786443, metadata !84, metadata !1285, i32 664, i32 9, i32 2, i32 192} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!1290 = metadata !{i32 664, i32 9, metadata !1291, null}
!1291 = metadata !{i32 786443, metadata !84, metadata !1285, i32 664, i32 9, i32 3, i32 193} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!1292 = metadata !{i32 664, i32 9, metadata !1293, null}
!1293 = metadata !{i32 786443, metadata !84, metadata !1285, i32 664, i32 9, i32 4, i32 194} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!1294 = metadata !{i32 664, i32 9, metadata !1295, null}
!1295 = metadata !{i32 786443, metadata !84, metadata !1296, i32 664, i32 9, i32 6, i32 196} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!1296 = metadata !{i32 786443, metadata !84, metadata !1285, i32 664, i32 9, i32 5, i32 195} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!1297 = metadata !{i32 667, i32 7, metadata !1285, null}
!1298 = metadata !{i32 668, i32 3, metadata !1268, null}
!1299 = metadata !{i32 669, i32 3, metadata !400, null}
!1300 = metadata !{i32 670, i32 7, metadata !1301, null}
!1301 = metadata !{i32 786443, metadata !84, metadata !400, i32 670, i32 7, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!1302 = metadata !{i32 671, i32 9, metadata !1303, null}
!1303 = metadata !{i32 786443, metadata !84, metadata !1304, i32 671, i32 9, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!1304 = metadata !{i32 786443, metadata !84, metadata !1301, i32 670, i32 31, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!1305 = metadata !{i32 672, i32 7, metadata !1303, null}
!1306 = metadata !{i32 673, i32 5, metadata !1304, null}
!1307 = metadata !{i32 674, i32 5, metadata !1304, null}
!1308 = metadata !{i32 675, i32 5, metadata !1304, null}
!1309 = metadata !{i32 676, i32 5, metadata !1304, null}
!1310 = metadata !{i32 678, i32 1, metadata !400, null}
!1311 = metadata !{i32 786689, metadata !404, metadata !"ci", metadata !85, i32 16777260, metadata !255, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ci] [line 44]
!1312 = metadata !{i32 44, i32 33, metadata !404, null}
!1313 = metadata !{i32 46, i32 3, metadata !404, null}
!1314 = metadata !{i32 786689, metadata !485, metadata !"ci", metadata !85, i32 16777754, metadata !255, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ci] [line 538]
!1315 = metadata !{i32 538, i32 44, metadata !485, null}
!1316 = metadata !{i32 786689, metadata !485, metadata !"o", metadata !85, i32 33554970, metadata !380, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [o] [line 538]
!1317 = metadata !{i32 538, i32 62, metadata !485, null}
!1318 = metadata !{i32 786689, metadata !485, metadata !"name", metadata !85, i32 50332187, metadata !469, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 539]
!1319 = metadata !{i32 539, i32 47, metadata !485, null}
!1320 = metadata !{i32 786688, metadata !485, metadata !"c", metadata !85, i32 540, metadata !1321, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c] [line 540]
!1321 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !508} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from LClosure]
!1322 = metadata !{i32 540, i32 13, metadata !485, null}
!1323 = metadata !{i32 540, i32 3, metadata !485, null}
!1324 = metadata !{i32 786688, metadata !485, metadata !"i", metadata !85, i32 541, metadata !125, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 541]
!1325 = metadata !{i32 541, i32 7, metadata !485, null}
!1326 = metadata !{i32 542, i32 8, metadata !1327, null}
!1327 = metadata !{i32 786443, metadata !84, metadata !485, i32 542, i32 3, i32 0, i32 86} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!1328 = metadata !{i32 542, i32 8, metadata !1329, null}
!1329 = metadata !{i32 786443, metadata !84, metadata !1330, i32 542, i32 8, i32 2, i32 198} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!1330 = metadata !{i32 786443, metadata !84, metadata !1327, i32 542, i32 8, i32 1, i32 197} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!1331 = metadata !{i32 543, i32 9, metadata !1332, null}
!1332 = metadata !{i32 786443, metadata !84, metadata !1333, i32 543, i32 9, i32 0, i32 88} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!1333 = metadata !{i32 786443, metadata !84, metadata !1327, i32 542, i32 38, i32 0, i32 87} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!1334 = metadata !{i32 544, i32 15, metadata !1335, null}
!1335 = metadata !{i32 786443, metadata !84, metadata !1332, i32 543, i32 31, i32 0, i32 89} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!1336 = metadata !{i32 545, i32 7, metadata !1335, null}
!1337 = metadata !{i32 547, i32 3, metadata !1333, null}
!1338 = metadata !{i32 542, i32 33, metadata !1327, null}
!1339 = metadata !{i32 548, i32 3, metadata !485, null}
!1340 = metadata !{i32 549, i32 1, metadata !485, null}
!1341 = metadata !{i32 786689, metadata !482, metadata !"ci", metadata !85, i32 16777743, metadata !255, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ci] [line 527]
!1342 = metadata !{i32 527, i32 33, metadata !482, null}
!1343 = metadata !{i32 786689, metadata !482, metadata !"o", metadata !85, i32 33554959, metadata !380, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [o] [line 527]
!1344 = metadata !{i32 527, i32 51, metadata !482, null}
!1345 = metadata !{i32 786688, metadata !482, metadata !"i", metadata !85, i32 528, metadata !154, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 528]
!1346 = metadata !{i32 528, i32 13, metadata !482, null}
!1347 = metadata !{i32 528, i32 3, metadata !482, null}
!1348 = metadata !{i32 529, i32 3, metadata !482, null}
!1349 = metadata !{i32 529, i32 3, metadata !1350, null}
!1350 = metadata !{i32 786443, metadata !84, metadata !482, i32 529, i32 3, i32 1, i32 199} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!1351 = metadata !{i32 529, i32 3, metadata !1352, null}
!1352 = metadata !{i32 786443, metadata !84, metadata !482, i32 529, i32 3, i32 3, i32 201} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!1353 = metadata !{i32 529, i32 3, metadata !1354, null}
!1354 = metadata !{i32 786443, metadata !84, metadata !1355, i32 529, i32 3, i32 4, i32 202} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!1355 = metadata !{i32 786443, metadata !84, metadata !482, i32 529, i32 3, i32 2, i32 200} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!1356 = metadata !{i32 786689, metadata !408, metadata !"p", metadata !85, i32 16777636, metadata !411, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [p] [line 420]
!1357 = metadata !{i32 420, i32 39, metadata !408, null}
!1358 = metadata !{i32 786689, metadata !408, metadata !"lastpc", metadata !85, i32 33554852, metadata !125, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [lastpc] [line 420]
!1359 = metadata !{i32 420, i32 46, metadata !408, null}
!1360 = metadata !{i32 786689, metadata !408, metadata !"reg", metadata !85, i32 50332068, metadata !125, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [reg] [line 420]
!1361 = metadata !{i32 420, i32 58, metadata !408, null}
!1362 = metadata !{i32 786689, metadata !408, metadata !"name", metadata !85, i32 67109285, metadata !469, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 421]
!1363 = metadata !{i32 421, i32 45, metadata !408, null}
!1364 = metadata !{i32 786688, metadata !408, metadata !"pc", metadata !85, i32 422, metadata !125, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pc] [line 422]
!1365 = metadata !{i32 422, i32 7, metadata !408, null}
!1366 = metadata !{i32 423, i32 11, metadata !408, null}
!1367 = metadata !{i32 424, i32 7, metadata !1368, null}
!1368 = metadata !{i32 786443, metadata !84, metadata !408, i32 424, i32 7, i32 0, i32 51} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!1369 = metadata !{i32 425, i32 5, metadata !1368, null}
!1370 = metadata !{i32 427, i32 8, metadata !408, null}
!1371 = metadata !{i32 428, i32 7, metadata !1372, null}
!1372 = metadata !{i32 786443, metadata !84, metadata !408, i32 428, i32 7, i32 0, i32 52} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!1373 = metadata !{i32 786688, metadata !1374, metadata !"i", metadata !85, i32 429, metadata !274, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 429]
!1374 = metadata !{i32 786443, metadata !84, metadata !1372, i32 428, i32 17, i32 0, i32 53} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!1375 = metadata !{i32 429, i32 17, metadata !1374, null}
!1376 = metadata !{i32 429, i32 5, metadata !1374, null}
!1377 = metadata !{i32 786688, metadata !1374, metadata !"op", metadata !85, i32 430, metadata !1378, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [op] [line 430]
!1378 = metadata !{i32 786454, metadata !4, null, metadata !"OpCode", i32 232, i64 0, i64 0, i64 0, i32 0, metadata !3} ; [ DW_TAG_typedef ] [OpCode] [line 232, size 0, align 0, offset 0] [from ]
!1379 = metadata !{i32 430, i32 12, metadata !1374, null}
!1380 = metadata !{i32 430, i32 5, metadata !1374, null}
!1381 = metadata !{i32 431, i32 5, metadata !1374, null}
!1382 = metadata !{i32 786688, metadata !1383, metadata !"b", metadata !85, i32 433, metadata !125, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b] [line 433]
!1383 = metadata !{i32 786443, metadata !84, metadata !1384, i32 432, i32 21, i32 0, i32 55} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!1384 = metadata !{i32 786443, metadata !84, metadata !1374, i32 431, i32 17, i32 0, i32 54} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!1385 = metadata !{i32 433, i32 13, metadata !1383, null}
!1386 = metadata !{i32 433, i32 9, metadata !1383, null}
!1387 = metadata !{i32 434, i32 13, metadata !1388, null}
!1388 = metadata !{i32 786443, metadata !84, metadata !1383, i32 434, i32 13, i32 0, i32 56} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!1389 = metadata !{i32 435, i32 18, metadata !1388, null}
!1390 = metadata !{i32 436, i32 9, metadata !1383, null}
!1391 = metadata !{i32 786688, metadata !1392, metadata !"k", metadata !85, i32 440, metadata !125, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 440]
!1392 = metadata !{i32 786443, metadata !84, metadata !1384, i32 439, i32 25, i32 0, i32 57} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!1393 = metadata !{i32 440, i32 13, metadata !1392, null}
!1394 = metadata !{i32 440, i32 9, metadata !1392, null}
!1395 = metadata !{i32 786688, metadata !1392, metadata !"t", metadata !85, i32 441, metadata !125, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [t] [line 441]
!1396 = metadata !{i32 441, i32 13, metadata !1392, null}
!1397 = metadata !{i32 441, i32 9, metadata !1392, null}
!1398 = metadata !{i32 786688, metadata !1392, metadata !"vn", metadata !85, i32 442, metadata !330, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vn] [line 442]
!1399 = metadata !{i32 442, i32 21, metadata !1392, null}
!1400 = metadata !{i32 442, i32 9, metadata !1392, null}
!1401 = metadata !{i32 443, i32 28, metadata !1392, null}
!1402 = metadata !{i32 444, i32 28, metadata !1392, null}
!1403 = metadata !{i32 444, i32 28, metadata !1404, null}
!1404 = metadata !{i32 786443, metadata !84, metadata !1392, i32 444, i32 28, i32 1, i32 203} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!1405 = metadata !{i32 445, i32 9, metadata !1392, null}
!1406 = metadata !{i32 446, i32 9, metadata !1392, null}
!1407 = metadata !{i32 446, i32 23, metadata !1408, null}
!1408 = metadata !{i32 786443, metadata !84, metadata !1392, i32 446, i32 23, i32 1, i32 204} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!1409 = metadata !{i32 446, i32 23, metadata !1410, null}
!1410 = metadata !{i32 786443, metadata !84, metadata !1392, i32 446, i32 23, i32 2, i32 205} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!1411 = metadata !{i32 449, i32 17, metadata !1412, null}
!1412 = metadata !{i32 786443, metadata !84, metadata !1384, i32 448, i32 25, i32 0, i32 58} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!1413 = metadata !{i32 450, i32 9, metadata !1412, null}
!1414 = metadata !{i32 786688, metadata !1415, metadata !"b", metadata !85, i32 454, metadata !125, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b] [line 454]
!1415 = metadata !{i32 786443, metadata !84, metadata !1384, i32 453, i32 23, i32 0, i32 59} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!1416 = metadata !{i32 454, i32 13, metadata !1415, null}
!1417 = metadata !{i32 454, i32 9, metadata !1415, null}
!1418 = metadata !{i32 454, i32 9, metadata !1419, null}
!1419 = metadata !{i32 786443, metadata !84, metadata !1415, i32 454, i32 9, i32 1, i32 206} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!1420 = metadata !{i32 454, i32 9, metadata !1421, null}
!1421 = metadata !{i32 786443, metadata !84, metadata !1415, i32 454, i32 9, i32 2, i32 207} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!1422 = metadata !{i32 454, i32 9, metadata !1423, null}
!1423 = metadata !{i32 786443, metadata !84, metadata !1424, i32 454, i32 9, i32 4, i32 209} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!1424 = metadata !{i32 786443, metadata !84, metadata !1415, i32 454, i32 9, i32 3, i32 208} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!1425 = metadata !{i32 456, i32 13, metadata !1426, null}
!1426 = metadata !{i32 786443, metadata !84, metadata !1415, i32 456, i32 13, i32 0, i32 60} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!1427 = metadata !{i32 457, i32 11, metadata !1428, null}
!1428 = metadata !{i32 786443, metadata !84, metadata !1426, i32 456, i32 35, i32 0, i32 61} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!1429 = metadata !{i32 458, i32 11, metadata !1428, null}
!1430 = metadata !{i32 460, i32 9, metadata !1415, null}
!1431 = metadata !{i32 786688, metadata !1432, metadata !"k", metadata !85, i32 463, metadata !125, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 463]
!1432 = metadata !{i32 786443, metadata !84, metadata !1384, i32 462, i32 21, i32 0, i32 62} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!1433 = metadata !{i32 463, i32 13, metadata !1432, null}
!1434 = metadata !{i32 463, i32 9, metadata !1432, null}
!1435 = metadata !{i32 464, i32 9, metadata !1432, null}
!1436 = metadata !{i32 465, i32 9, metadata !1432, null}
!1437 = metadata !{i32 467, i32 16, metadata !1384, null}
!1438 = metadata !{i32 469, i32 3, metadata !1374, null}
!1439 = metadata !{i32 470, i32 3, metadata !408, null}
!1440 = metadata !{i32 471, i32 1, metadata !408, null}
!1441 = metadata !{i32 786689, metadata !476, metadata !"p", metadata !85, i32 16777590, metadata !411, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [p] [line 374]
!1442 = metadata !{i32 374, i32 31, metadata !476, null}
!1443 = metadata !{i32 786689, metadata !476, metadata !"lastpc", metadata !85, i32 33554806, metadata !125, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [lastpc] [line 374]
!1444 = metadata !{i32 374, i32 38, metadata !476, null}
!1445 = metadata !{i32 786689, metadata !476, metadata !"reg", metadata !85, i32 50332022, metadata !125, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [reg] [line 374]
!1446 = metadata !{i32 374, i32 50, metadata !476, null}
!1447 = metadata !{i32 786688, metadata !476, metadata !"pc", metadata !85, i32 375, metadata !125, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pc] [line 375]
!1448 = metadata !{i32 375, i32 7, metadata !476, null}
!1449 = metadata !{i32 786688, metadata !476, metadata !"setreg", metadata !85, i32 376, metadata !125, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [setreg] [line 376]
!1450 = metadata !{i32 376, i32 7, metadata !476, null}
!1451 = metadata !{i32 376, i32 3, metadata !476, null}
!1452 = metadata !{i32 786688, metadata !476, metadata !"jmptarget", metadata !85, i32 377, metadata !125, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jmptarget] [line 377]
!1453 = metadata !{i32 377, i32 7, metadata !476, null}
!1454 = metadata !{i32 377, i32 3, metadata !476, null}
!1455 = metadata !{i32 378, i32 8, metadata !1456, null}
!1456 = metadata !{i32 786443, metadata !84, metadata !476, i32 378, i32 3, i32 0, i32 71} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!1457 = metadata !{i32 378, i32 8, metadata !1458, null}
!1458 = metadata !{i32 786443, metadata !84, metadata !1459, i32 378, i32 8, i32 2, i32 214} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!1459 = metadata !{i32 786443, metadata !84, metadata !1456, i32 378, i32 8, i32 1, i32 210} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!1460 = metadata !{i32 786688, metadata !1461, metadata !"i", metadata !85, i32 379, metadata !274, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 379]
!1461 = metadata !{i32 786443, metadata !84, metadata !1456, i32 378, i32 35, i32 0, i32 72} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!1462 = metadata !{i32 379, i32 17, metadata !1461, null}
!1463 = metadata !{i32 379, i32 5, metadata !1461, null}
!1464 = metadata !{i32 786688, metadata !1461, metadata !"op", metadata !85, i32 380, metadata !1378, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [op] [line 380]
!1465 = metadata !{i32 380, i32 12, metadata !1461, null}
!1466 = metadata !{i32 380, i32 5, metadata !1461, null}
!1467 = metadata !{i32 786688, metadata !1461, metadata !"a", metadata !85, i32 381, metadata !125, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a] [line 381]
!1468 = metadata !{i32 381, i32 9, metadata !1461, null}
!1469 = metadata !{i32 381, i32 5, metadata !1461, null}
!1470 = metadata !{i32 382, i32 5, metadata !1461, null}
!1471 = metadata !{i32 786688, metadata !1472, metadata !"b", metadata !85, i32 384, metadata !125, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b] [line 384]
!1472 = metadata !{i32 786443, metadata !84, metadata !1473, i32 383, i32 24, i32 0, i32 74} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!1473 = metadata !{i32 786443, metadata !84, metadata !1461, i32 382, i32 17, i32 0, i32 73} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!1474 = metadata !{i32 384, i32 13, metadata !1472, null}
!1475 = metadata !{i32 384, i32 9, metadata !1472, null}
!1476 = metadata !{i32 385, i32 13, metadata !1477, null}
!1477 = metadata !{i32 786443, metadata !84, metadata !1472, i32 385, i32 13, i32 0, i32 75} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!1478 = metadata !{i32 385, i32 13, metadata !1479, null}
!1479 = metadata !{i32 786443, metadata !84, metadata !1477, i32 385, i32 13, i32 1, i32 211} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!1480 = metadata !{i32 386, i32 20, metadata !1477, null}
!1481 = metadata !{i32 387, i32 9, metadata !1472, null}
!1482 = metadata !{i32 390, i32 13, metadata !1483, null}
!1483 = metadata !{i32 786443, metadata !84, metadata !1484, i32 390, i32 13, i32 0, i32 77} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!1484 = metadata !{i32 786443, metadata !84, metadata !1473, i32 389, i32 25, i32 0, i32 76} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!1485 = metadata !{i32 391, i32 20, metadata !1483, null}
!1486 = metadata !{i32 392, i32 9, metadata !1484, null}
!1487 = metadata !{i32 396, i32 13, metadata !1488, null}
!1488 = metadata !{i32 786443, metadata !84, metadata !1489, i32 396, i32 13, i32 0, i32 79} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!1489 = metadata !{i32 786443, metadata !84, metadata !1473, i32 395, i32 25, i32 0, i32 78} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!1490 = metadata !{i32 397, i32 20, metadata !1488, null}
!1491 = metadata !{i32 398, i32 9, metadata !1489, null}
!1492 = metadata !{i32 786688, metadata !1493, metadata !"b", metadata !85, i32 401, metadata !125, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b] [line 401]
!1493 = metadata !{i32 786443, metadata !84, metadata !1473, i32 400, i32 20, i32 0, i32 80} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!1494 = metadata !{i32 401, i32 13, metadata !1493, null}
!1495 = metadata !{i32 401, i32 9, metadata !1493, null}
!1496 = metadata !{i32 786688, metadata !1493, metadata !"dest", metadata !85, i32 402, metadata !125, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dest] [line 402]
!1497 = metadata !{i32 402, i32 13, metadata !1493, null}
!1498 = metadata !{i32 402, i32 9, metadata !1493, null}
!1499 = metadata !{i32 404, i32 13, metadata !1500, null}
!1500 = metadata !{i32 786443, metadata !84, metadata !1493, i32 404, i32 13, i32 0, i32 81} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!1501 = metadata !{i32 404, i32 13, metadata !1502, null}
!1502 = metadata !{i32 786443, metadata !84, metadata !1500, i32 404, i32 13, i32 1, i32 212} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!1503 = metadata !{i32 405, i32 15, metadata !1504, null}
!1504 = metadata !{i32 786443, metadata !84, metadata !1505, i32 405, i32 15, i32 0, i32 83} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!1505 = metadata !{i32 786443, metadata !84, metadata !1500, i32 404, i32 42, i32 0, i32 82} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!1506 = metadata !{i32 406, i32 13, metadata !1504, null}
!1507 = metadata !{i32 407, i32 9, metadata !1505, null}
!1508 = metadata !{i32 408, i32 9, metadata !1493, null}
!1509 = metadata !{i32 411, i32 13, metadata !1510, null}
!1510 = metadata !{i32 786443, metadata !84, metadata !1473, i32 411, i32 13, i32 0, i32 84} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!1511 = metadata !{i32 411, i32 13, metadata !1512, null}
!1512 = metadata !{i32 786443, metadata !84, metadata !1510, i32 411, i32 13, i32 1, i32 213} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!1513 = metadata !{i32 412, i32 20, metadata !1510, null}
!1514 = metadata !{i32 413, i32 9, metadata !1473, null}
!1515 = metadata !{i32 415, i32 3, metadata !1461, null}
!1516 = metadata !{i32 378, i32 29, metadata !1456, null}
!1517 = metadata !{i32 416, i32 3, metadata !476, null}
!1518 = metadata !{i32 786689, metadata !473, metadata !"p", metadata !85, i32 16777342, metadata !411, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [p] [line 126]
!1519 = metadata !{i32 126, i32 38, metadata !473, null}
!1520 = metadata !{i32 786689, metadata !473, metadata !"uv", metadata !85, i32 33554558, metadata !125, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [uv] [line 126]
!1521 = metadata !{i32 126, i32 45, metadata !473, null}
!1522 = metadata !{i32 786688, metadata !473, metadata !"s", metadata !85, i32 127, metadata !165, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s] [line 127]
!1523 = metadata !{i32 127, i32 12, metadata !473, null}
!1524 = metadata !{i32 127, i32 3, metadata !473, null}
!1525 = metadata !{i32 128, i32 7, metadata !1526, null}
!1526 = metadata !{i32 786443, metadata !84, metadata !473, i32 128, i32 7, i32 0, i32 70} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!1527 = metadata !{i32 128, i32 18, metadata !1528, null}
!1528 = metadata !{i32 786443, metadata !84, metadata !1526, i32 128, i32 18, i32 1, i32 215} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!1529 = metadata !{i32 129, i32 8, metadata !1526, null}
!1530 = metadata !{i32 130, i32 1, metadata !473, null}
!1531 = metadata !{i32 786689, metadata !470, metadata !"p", metadata !85, i32 16777560, metadata !411, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [p] [line 344]
!1532 = metadata !{i32 344, i32 27, metadata !470, null}
!1533 = metadata !{i32 786689, metadata !470, metadata !"pc", metadata !85, i32 33554776, metadata !125, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pc] [line 344]
!1534 = metadata !{i32 344, i32 34, metadata !470, null}
!1535 = metadata !{i32 786689, metadata !470, metadata !"c", metadata !85, i32 50331992, metadata !125, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [c] [line 344]
!1536 = metadata !{i32 344, i32 42, metadata !470, null}
!1537 = metadata !{i32 786689, metadata !470, metadata !"name", metadata !85, i32 67109208, metadata !469, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 344]
!1538 = metadata !{i32 344, i32 58, metadata !470, null}
!1539 = metadata !{i32 345, i32 7, metadata !1540, null}
!1540 = metadata !{i32 786443, metadata !84, metadata !470, i32 345, i32 7, i32 0, i32 63} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!1541 = metadata !{i32 786688, metadata !1542, metadata !"kvalue", metadata !85, i32 346, metadata !113, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [kvalue] [line 346]
!1542 = metadata !{i32 786443, metadata !84, metadata !1540, i32 345, i32 15, i32 0, i32 64} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!1543 = metadata !{i32 346, i32 13, metadata !1542, null}
!1544 = metadata !{i32 346, i32 5, metadata !1542, null}
!1545 = metadata !{i32 347, i32 9, metadata !1546, null}
!1546 = metadata !{i32 786443, metadata !84, metadata !1542, i32 347, i32 9, i32 0, i32 65} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!1547 = metadata !{i32 348, i32 7, metadata !1548, null}
!1548 = metadata !{i32 786443, metadata !84, metadata !1546, i32 347, i32 29, i32 0, i32 66} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!1549 = metadata !{i32 349, i32 7, metadata !1548, null}
!1550 = metadata !{i32 352, i32 3, metadata !1542, null}
!1551 = metadata !{i32 786688, metadata !1552, metadata !"what", metadata !85, i32 354, metadata !330, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [what] [line 354]
!1552 = metadata !{i32 786443, metadata !84, metadata !1540, i32 353, i32 8, i32 0, i32 67} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!1553 = metadata !{i32 354, i32 17, metadata !1552, null}
!1554 = metadata !{i32 354, i32 24, metadata !1552, null}
!1555 = metadata !{i32 355, i32 9, metadata !1556, null}
!1556 = metadata !{i32 786443, metadata !84, metadata !1552, i32 355, i32 9, i32 0, i32 68} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!1557 = metadata !{i32 355, i32 9, metadata !1558, null}
!1558 = metadata !{i32 786443, metadata !84, metadata !1556, i32 355, i32 9, i32 1, i32 216} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!1559 = metadata !{i32 356, i32 7, metadata !1560, null}
!1560 = metadata !{i32 786443, metadata !84, metadata !1556, i32 355, i32 31, i32 0, i32 69} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!1561 = metadata !{i32 360, i32 3, metadata !470, null}
!1562 = metadata !{i32 361, i32 1, metadata !470, null}
!1563 = metadata !{i32 361, i32 1, metadata !1564, null}
!1564 = metadata !{i32 786443, metadata !84, metadata !470, i32 361, i32 1, i32 1, i32 217} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!1565 = metadata !{i32 786689, metadata !479, metadata !"pc", metadata !85, i32 16777580, metadata !125, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pc] [line 364]
!1566 = metadata !{i32 364, i32 26, metadata !479, null}
!1567 = metadata !{i32 786689, metadata !479, metadata !"jmptarget", metadata !85, i32 33554796, metadata !125, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [jmptarget] [line 364]
!1568 = metadata !{i32 364, i32 34, metadata !479, null}
!1569 = metadata !{i32 365, i32 7, metadata !1570, null}
!1570 = metadata !{i32 786443, metadata !84, metadata !479, i32 365, i32 7, i32 0, i32 85} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!1571 = metadata !{i32 366, i32 5, metadata !1570, null}
!1572 = metadata !{i32 367, i32 8, metadata !1570, null}
!1573 = metadata !{i32 368, i32 1, metadata !479, null}
!1574 = metadata !{i32 786689, metadata !515, metadata !"ar", metadata !85, i32 16777426, metadata !324, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ar] [line 210]
!1575 = metadata !{i32 210, i32 34, metadata !515, null}
!1576 = metadata !{i32 786689, metadata !515, metadata !"cl", metadata !85, i32 33554642, metadata !491, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cl] [line 210]
!1577 = metadata !{i32 210, i32 47, metadata !515, null}
!1578 = metadata !{i32 211, i32 7, metadata !1579, null}
!1579 = metadata !{i32 786443, metadata !84, metadata !515, i32 211, i32 7, i32 0, i32 117} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!1580 = metadata !{i32 211, i32 7, metadata !1581, null}
!1581 = metadata !{i32 786443, metadata !84, metadata !1579, i32 211, i32 7, i32 1, i32 218} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!1582 = metadata !{i32 212, i32 5, metadata !1583, null}
!1583 = metadata !{i32 786443, metadata !84, metadata !1579, i32 211, i32 25, i32 0, i32 118} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!1584 = metadata !{i32 213, i32 5, metadata !1583, null}
!1585 = metadata !{i32 214, i32 5, metadata !1583, null}
!1586 = metadata !{i32 215, i32 5, metadata !1583, null}
!1587 = metadata !{i32 216, i32 3, metadata !1583, null}
!1588 = metadata !{i32 786688, metadata !1589, metadata !"p", metadata !85, i32 218, metadata !411, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 218]
!1589 = metadata !{i32 786443, metadata !84, metadata !1579, i32 217, i32 8, i32 0, i32 119} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!1590 = metadata !{i32 218, i32 12, metadata !1589, null}
!1591 = metadata !{i32 218, i32 5, metadata !1589, null}
!1592 = metadata !{i32 219, i32 5, metadata !1589, null}
!1593 = metadata !{i32 219, i32 5, metadata !1594, null}
!1594 = metadata !{i32 786443, metadata !84, metadata !1589, i32 219, i32 5, i32 1, i32 219} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!1595 = metadata !{i32 219, i32 5, metadata !1596, null}
!1596 = metadata !{i32 786443, metadata !84, metadata !1589, i32 219, i32 5, i32 2, i32 220} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!1597 = metadata !{i32 219, i32 5, metadata !1598, null}
!1598 = metadata !{i32 786443, metadata !84, metadata !1599, i32 219, i32 5, i32 4, i32 222} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!1599 = metadata !{i32 786443, metadata !84, metadata !1589, i32 219, i32 5, i32 3, i32 221} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!1600 = metadata !{i32 220, i32 5, metadata !1589, null}
!1601 = metadata !{i32 221, i32 5, metadata !1589, null}
!1602 = metadata !{i32 222, i32 5, metadata !1589, null}
!1603 = metadata !{i32 224, i32 3, metadata !515, null}
!1604 = metadata !{i32 225, i32 1, metadata !515, null}
!1605 = metadata !{i32 786689, metadata !512, metadata !"L", metadata !85, i32 16777690, metadata !88, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 474]
!1606 = metadata !{i32 474, i32 44, metadata !512, null}
!1607 = metadata !{i32 786689, metadata !512, metadata !"ci", metadata !85, i32 33554906, metadata !255, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ci] [line 474]
!1608 = metadata !{i32 474, i32 57, metadata !512, null}
!1609 = metadata !{i32 786689, metadata !512, metadata !"name", metadata !85, i32 50332122, metadata !469, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 474]
!1610 = metadata !{i32 474, i32 74, metadata !512, null}
!1611 = metadata !{i32 786688, metadata !512, metadata !"tm", metadata !85, i32 475, metadata !1612, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tm] [line 475]
!1612 = metadata !{i32 786454, metadata !54, null, metadata !"TMS", i32 44, i64 0, i64 0, i64 0, i32 0, metadata !53} ; [ DW_TAG_typedef ] [TMS] [line 44, size 0, align 0, offset 0] [from ]
!1613 = metadata !{i32 475, i32 7, metadata !512, null}
!1614 = metadata !{i32 475, i32 3, metadata !512, null}
!1615 = metadata !{i32 786688, metadata !512, metadata !"p", metadata !85, i32 476, metadata !411, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 476]
!1616 = metadata !{i32 476, i32 10, metadata !512, null}
!1617 = metadata !{i32 476, i32 3, metadata !512, null}
!1618 = metadata !{i32 786688, metadata !512, metadata !"pc", metadata !85, i32 477, metadata !125, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pc] [line 477]
!1619 = metadata !{i32 477, i32 7, metadata !512, null}
!1620 = metadata !{i32 477, i32 12, metadata !512, null}
!1621 = metadata !{i32 786688, metadata !512, metadata !"i", metadata !85, i32 478, metadata !274, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 478]
!1622 = metadata !{i32 478, i32 15, metadata !512, null}
!1623 = metadata !{i32 478, i32 3, metadata !512, null}
!1624 = metadata !{i32 479, i32 7, metadata !1625, null}
!1625 = metadata !{i32 786443, metadata !84, metadata !512, i32 479, i32 7, i32 0, i32 112} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!1626 = metadata !{i32 480, i32 5, metadata !1627, null}
!1627 = metadata !{i32 786443, metadata !84, metadata !1625, i32 479, i32 37, i32 0, i32 113} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!1628 = metadata !{i32 481, i32 5, metadata !1627, null}
!1629 = metadata !{i32 483, i32 3, metadata !512, null}
!1630 = metadata !{i32 486, i32 14, metadata !1631, null}
!1631 = metadata !{i32 786443, metadata !84, metadata !512, i32 483, i32 26, i32 0, i32 114} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!1632 = metadata !{i32 488, i32 7, metadata !1633, null}
!1633 = metadata !{i32 786443, metadata !84, metadata !1631, i32 487, i32 23, i32 0, i32 115} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!1634 = metadata !{i32 489, i32 8, metadata !1633, null}
!1635 = metadata !{i32 493, i32 7, metadata !1631, null}
!1636 = metadata !{i32 494, i32 7, metadata !1631, null}
!1637 = metadata !{i32 496, i32 7, metadata !1631, null}
!1638 = metadata !{i32 497, i32 7, metadata !1631, null}
!1639 = metadata !{i32 786688, metadata !1640, metadata !"offset", metadata !85, i32 501, metadata !125, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [offset] [line 501]
!1640 = metadata !{i32 786443, metadata !84, metadata !1631, i32 500, i32 58, i32 0, i32 116} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!1641 = metadata !{i32 501, i32 11, metadata !1640, null}
!1642 = metadata !{i32 501, i32 7, metadata !1640, null}
!1643 = metadata !{i32 502, i32 7, metadata !1640, null}
!1644 = metadata !{i32 503, i32 7, metadata !1640, null}
!1645 = metadata !{i32 505, i32 18, metadata !1631, null}
!1646 = metadata !{i32 505, i32 31, metadata !1631, null}
!1647 = metadata !{i32 506, i32 19, metadata !1631, null}
!1648 = metadata !{i32 506, i32 33, metadata !1631, null}
!1649 = metadata !{i32 507, i32 18, metadata !1631, null}
!1650 = metadata !{i32 507, i32 31, metadata !1631, null}
!1651 = metadata !{i32 508, i32 21, metadata !1631, null}
!1652 = metadata !{i32 508, i32 37, metadata !1631, null}
!1653 = metadata !{i32 509, i32 17, metadata !1631, null}
!1654 = metadata !{i32 509, i32 29, metadata !1631, null}
!1655 = metadata !{i32 510, i32 17, metadata !1631, null}
!1656 = metadata !{i32 510, i32 29, metadata !1631, null}
!1657 = metadata !{i32 511, i32 17, metadata !1631, null}
!1658 = metadata !{i32 511, i32 29, metadata !1631, null}
!1659 = metadata !{i32 513, i32 3, metadata !1631, null}
!1660 = metadata !{i32 514, i32 3, metadata !512, null}
!1661 = metadata !{i32 515, i32 3, metadata !512, null}
!1662 = metadata !{i32 516, i32 1, metadata !512, null}
!1663 = metadata !{i32 786689, metadata !522, metadata !"ci", metadata !85, i32 16777349, metadata !255, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ci] [line 133]
!1664 = metadata !{i32 133, i32 42, metadata !522, null}
!1665 = metadata !{i32 786689, metadata !522, metadata !"n", metadata !85, i32 33554565, metadata !125, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 133]
!1666 = metadata !{i32 133, i32 50, metadata !522, null}
!1667 = metadata !{i32 786689, metadata !522, metadata !"pos", metadata !85, i32 50331781, metadata !521, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pos] [line 133]
!1668 = metadata !{i32 133, i32 60, metadata !522, null}
!1669 = metadata !{i32 786688, metadata !522, metadata !"nparams", metadata !85, i32 134, metadata !125, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nparams] [line 134]
!1670 = metadata !{i32 134, i32 7, metadata !522, null}
!1671 = metadata !{i32 134, i32 3, metadata !522, null}
!1672 = metadata !{i32 135, i32 7, metadata !1673, null}
!1673 = metadata !{i32 786443, metadata !84, metadata !522, i32 135, i32 7, i32 0, i32 127} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!1674 = metadata !{i32 136, i32 5, metadata !1673, null}
!1675 = metadata !{i32 138, i32 5, metadata !1676, null}
!1676 = metadata !{i32 786443, metadata !84, metadata !1673, i32 137, i32 8, i32 0, i32 128} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ldebug.c]
!1677 = metadata !{i32 139, i32 5, metadata !1676, null}
!1678 = metadata !{i32 141, i32 1, metadata !522, null}
