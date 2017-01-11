; ModuleID = 'C:/Users/DevolutionX/workspace/lua/src/lcode.c'
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-n32-S64"
target triple = "armv7--linux-gnueabihf"

%struct.expdesc = type { i32, %union.anon.4, i32, i32 }
%union.anon.4 = type { i64 }
%struct.FuncState = type { %struct.Proto*, %struct.FuncState*, %struct.LexState*, %struct.BlockCnt*, i32, i32, i32, i32, i32, i32, i16, i8, i8, i8 }
%struct.Proto = type { %struct.GCObject*, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, %struct.lua_TValue*, i32*, %struct.Proto**, i32*, %struct.LocVar*, %struct.Upvaldesc*, %struct.LClosure*, %struct.TString*, %struct.GCObject* }
%struct.lua_TValue = type { %union.Value, i32 }
%union.Value = type { i64 }
%struct.LocVar = type { %struct.TString*, i32, i32 }
%struct.Upvaldesc = type { %struct.TString*, i8, i8 }
%struct.LClosure = type { %struct.GCObject*, i8, i8, i8, %struct.GCObject*, %struct.Proto*, [1 x %struct.UpVal*] }
%struct.UpVal = type opaque
%struct.TString = type { %struct.GCObject*, i8, i8, i8, i8, i32, %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.GCObject = type { %struct.GCObject*, i8, i8 }
%struct.LexState = type { i32, i32, i32, %struct.Token, %struct.Token, %struct.FuncState*, %struct.lua_State*, %struct.Zio*, %struct.Mbuffer*, %struct.Table*, %struct.Dyndata*, %struct.TString*, %struct.TString* }
%struct.Token = type { i32, %union.SemInfo }
%union.SemInfo = type { double }
%struct.lua_State = type { %struct.GCObject*, i8, i8, i16, i8, %struct.lua_TValue*, %struct.global_State*, %struct.CallInfo*, i32*, %struct.lua_TValue*, %struct.lua_TValue*, %struct.UpVal*, %struct.GCObject*, %struct.lua_State*, %struct.lua_longjmp*, %struct.CallInfo, void (%struct.lua_State*, %struct.lua_Debug*)*, i32, i32, i32, i32, i16, i16, i32, i8 }
%struct.global_State = type { i8* (i8*, i8*, i32, i32)*, i8*, i32, i32, i32, i32, %struct.stringtable, %struct.lua_TValue, i32, i8, i8, i8, i8, %struct.GCObject*, %struct.GCObject**, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.GCObject*, %struct.lua_State*, i32, i32, i32, i32 (%struct.lua_State*)*, %struct.lua_State*, double*, %struct.TString*, [24 x %struct.TString*], [9 x %struct.Table*], [53 x [2 x %struct.TString*]] }
%struct.stringtable = type { %struct.TString**, i32, i32 }
%struct.lua_longjmp = type opaque
%struct.CallInfo = type { %struct.lua_TValue*, %struct.lua_TValue*, %struct.CallInfo*, %struct.CallInfo*, %union.anon, i32, i16, i8 }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { i32 (%struct.lua_State*, i32, i32)*, i32, i32 }
%struct.lua_Debug = type { i32, i8*, i8*, i8*, i8*, i32, i32, i32, i8, i8, i8, i8, [60 x i8], %struct.CallInfo* }
%struct.Zio = type { i32, i8*, i8* (%struct.lua_State*, i8*, i32*)*, i8*, %struct.lua_State* }
%struct.Mbuffer = type { i8*, i32, i32 }
%struct.Table = type { %struct.GCObject*, i8, i8, i8, i8, i32, %struct.lua_TValue*, %struct.Node*, %struct.Node*, %struct.Table*, %struct.GCObject* }
%struct.Node = type { %struct.lua_TValue, %union.TKey }
%union.TKey = type { %struct.anon.2 }
%struct.anon.2 = type { %union.Value, i32, i32 }
%struct.Dyndata = type { %struct.anon.3, %struct.Labellist, %struct.Labellist }
%struct.anon.3 = type { %struct.Vardesc*, i32, i32 }
%struct.Vardesc = type { i16 }
%struct.Labellist = type { %struct.Labeldesc*, i32, i32 }
%struct.Labeldesc = type { %struct.TString*, i32, i32, i8 }
%struct.BlockCnt = type opaque
%union.GCUnion = type { %union.Closure, [88 x i8] }
%union.Closure = type { %struct.CClosure }
%struct.CClosure = type { %struct.GCObject*, i8, i8, i8, %struct.GCObject*, i32 (%struct.lua_State*)*, [1 x %struct.lua_TValue] }
%struct.anon.5 = type { i16, i8, i8 }

@.str = private unnamed_addr constant [48 x i8] c"function or expression needs too many registers\00", align 1
@luaK_prefix.ef = internal global %struct.expdesc { i32 6, %union.anon.4 zeroinitializer, i32 -1, i32 -1 }, align 8
@.str1 = private unnamed_addr constant [21 x i8] c"constructor too long\00", align 1
@luaP_opmodes = external hidden constant [47 x i8]
@.str2 = private unnamed_addr constant [10 x i8] c"constants\00", align 1
@.str3 = private unnamed_addr constant [8 x i8] c"opcodes\00", align 1
@.str4 = private unnamed_addr constant [27 x i8] c"control structure too long\00", align 1

; Function Attrs: nounwind
define hidden void @luaK_nil(%struct.FuncState* %fs, i32 %from, i32 %n) #0 {
  %1 = alloca %struct.FuncState*, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %previous = alloca i32*, align 4
  %l = alloca i32, align 4
  %pfrom = alloca i32, align 4
  %pl = alloca i32, align 4
  store %struct.FuncState* %fs, %struct.FuncState** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.FuncState** %1}, metadata !879), !dbg !880
  store i32 %from, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !881), !dbg !882
  store i32 %n, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !883), !dbg !884
  call void @llvm.dbg.declare(metadata !{i32** %previous}, metadata !885), !dbg !886
  call void @llvm.dbg.declare(metadata !{i32* %l}, metadata !887), !dbg !888
  %4 = load i32* %2, align 4, !dbg !889
  %5 = load i32* %3, align 4, !dbg !889
  %6 = add nsw i32 %4, %5, !dbg !889
  %7 = sub nsw i32 %6, 1, !dbg !889
  store i32 %7, i32* %l, align 4, !dbg !889
  %8 = load %struct.FuncState** %1, align 4, !dbg !890
  %9 = getelementptr inbounds %struct.FuncState* %8, i32 0, i32 4, !dbg !890
  %10 = load i32* %9, align 4, !dbg !890
  %11 = load %struct.FuncState** %1, align 4, !dbg !890
  %12 = getelementptr inbounds %struct.FuncState* %11, i32 0, i32 5, !dbg !890
  %13 = load i32* %12, align 4, !dbg !890
  %14 = icmp sgt i32 %10, %13, !dbg !890
  br i1 %14, label %15, label %92, !dbg !890

; <label>:15                                      ; preds = %0
  %16 = load %struct.FuncState** %1, align 4, !dbg !892
  %17 = getelementptr inbounds %struct.FuncState* %16, i32 0, i32 4, !dbg !892
  %18 = load i32* %17, align 4, !dbg !892
  %19 = sub nsw i32 %18, 1, !dbg !892
  %20 = load %struct.FuncState** %1, align 4, !dbg !892
  %21 = getelementptr inbounds %struct.FuncState* %20, i32 0, i32 0, !dbg !892
  %22 = load %struct.Proto** %21, align 4, !dbg !892
  %23 = getelementptr inbounds %struct.Proto* %22, i32 0, i32 15, !dbg !892
  %24 = load i32** %23, align 4, !dbg !892
  %25 = getelementptr inbounds i32* %24, i32 %19, !dbg !892
  store i32* %25, i32** %previous, align 4, !dbg !892
  %26 = load i32** %previous, align 4, !dbg !894
  %27 = load i32* %26, align 4, !dbg !894
  %28 = lshr i32 %27, 0, !dbg !894
  %29 = and i32 %28, 63, !dbg !894
  %30 = icmp eq i32 %29, 4, !dbg !894
  br i1 %30, label %31, label %91, !dbg !894

; <label>:31                                      ; preds = %15
  call void @llvm.dbg.declare(metadata !{i32* %pfrom}, metadata !896), !dbg !898
  %32 = load i32** %previous, align 4, !dbg !899
  %33 = load i32* %32, align 4, !dbg !899
  %34 = lshr i32 %33, 6, !dbg !899
  %35 = and i32 %34, 255, !dbg !899
  store i32 %35, i32* %pfrom, align 4, !dbg !899
  call void @llvm.dbg.declare(metadata !{i32* %pl}, metadata !900), !dbg !901
  %36 = load i32* %pfrom, align 4, !dbg !902
  %37 = load i32** %previous, align 4, !dbg !902
  %38 = load i32* %37, align 4, !dbg !902
  %39 = lshr i32 %38, 23, !dbg !902
  %40 = and i32 %39, 511, !dbg !902
  %41 = add nsw i32 %36, %40, !dbg !902
  store i32 %41, i32* %pl, align 4, !dbg !902
  %42 = load i32* %pfrom, align 4, !dbg !903
  %43 = load i32* %2, align 4, !dbg !903
  %44 = icmp sle i32 %42, %43, !dbg !903
  br i1 %44, label %45, label %50, !dbg !903

; <label>:45                                      ; preds = %31
  %46 = load i32* %2, align 4, !dbg !905
  %47 = load i32* %pl, align 4, !dbg !905
  %48 = add nsw i32 %47, 1, !dbg !905
  %49 = icmp sle i32 %46, %48, !dbg !905
  br i1 %49, label %59, label %50, !dbg !905

; <label>:50                                      ; preds = %45, %31
  %51 = load i32* %2, align 4, !dbg !907
  %52 = load i32* %pfrom, align 4, !dbg !907
  %53 = icmp sle i32 %51, %52, !dbg !907
  br i1 %53, label %54, label %90, !dbg !907

; <label>:54                                      ; preds = %50
  %55 = load i32* %pfrom, align 4, !dbg !910
  %56 = load i32* %l, align 4, !dbg !910
  %57 = add nsw i32 %56, 1, !dbg !910
  %58 = icmp sle i32 %55, %57, !dbg !910
  br i1 %58, label %59, label %90, !dbg !910

; <label>:59                                      ; preds = %54, %45
  %60 = load i32* %pfrom, align 4, !dbg !912
  %61 = load i32* %2, align 4, !dbg !912
  %62 = icmp slt i32 %60, %61, !dbg !912
  br i1 %62, label %63, label %65, !dbg !912

; <label>:63                                      ; preds = %59
  %64 = load i32* %pfrom, align 4, !dbg !915
  store i32 %64, i32* %2, align 4, !dbg !915
  br label %65, !dbg !915

; <label>:65                                      ; preds = %63, %59
  %66 = load i32* %pl, align 4, !dbg !917
  %67 = load i32* %l, align 4, !dbg !917
  %68 = icmp sgt i32 %66, %67, !dbg !917
  br i1 %68, label %69, label %71, !dbg !917

; <label>:69                                      ; preds = %65
  %70 = load i32* %pl, align 4, !dbg !919
  store i32 %70, i32* %l, align 4, !dbg !919
  br label %71, !dbg !919

; <label>:71                                      ; preds = %69, %65
  %72 = load i32** %previous, align 4, !dbg !921
  %73 = load i32* %72, align 4, !dbg !921
  %74 = and i32 %73, -16321, !dbg !921
  %75 = load i32* %2, align 4, !dbg !921
  %76 = shl i32 %75, 6, !dbg !921
  %77 = and i32 %76, 16320, !dbg !921
  %78 = or i32 %74, %77, !dbg !921
  %79 = load i32** %previous, align 4, !dbg !921
  store i32 %78, i32* %79, align 4, !dbg !921
  %80 = load i32** %previous, align 4, !dbg !922
  %81 = load i32* %80, align 4, !dbg !922
  %82 = and i32 %81, 8388607, !dbg !922
  %83 = load i32* %l, align 4, !dbg !922
  %84 = load i32* %2, align 4, !dbg !922
  %85 = sub nsw i32 %83, %84, !dbg !922
  %86 = shl i32 %85, 23, !dbg !922
  %87 = and i32 %86, -8388608, !dbg !922
  %88 = or i32 %82, %87, !dbg !922
  %89 = load i32** %previous, align 4, !dbg !922
  store i32 %88, i32* %89, align 4, !dbg !922
  br label %98, !dbg !923

; <label>:90                                      ; preds = %54, %50
  br label %91, !dbg !924

; <label>:91                                      ; preds = %90, %15
  br label %92, !dbg !925

; <label>:92                                      ; preds = %91, %0
  %93 = load %struct.FuncState** %1, align 4, !dbg !926
  %94 = load i32* %2, align 4, !dbg !926
  %95 = load i32* %3, align 4, !dbg !926
  %96 = sub nsw i32 %95, 1, !dbg !926
  %97 = call i32 @luaK_codeABC(%struct.FuncState* %93, i32 4, i32 %94, i32 %96, i32 0), !dbg !926
  br label %98, !dbg !927

; <label>:98                                      ; preds = %92, %71
  ret void, !dbg !928
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind
define hidden i32 @luaK_codeABC(%struct.FuncState* %fs, i32 %o, i32 %a, i32 %b, i32 %c) #0 {
  %1 = alloca %struct.FuncState*, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.FuncState* %fs, %struct.FuncState** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.FuncState** %1}, metadata !930), !dbg !931
  store i32 %o, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !932), !dbg !933
  store i32 %a, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !934), !dbg !935
  store i32 %b, i32* %4, align 4
  call void @llvm.dbg.declare(metadata !{i32* %4}, metadata !936), !dbg !937
  store i32 %c, i32* %5, align 4
  call void @llvm.dbg.declare(metadata !{i32* %5}, metadata !938), !dbg !939
  %6 = load %struct.FuncState** %1, align 4, !dbg !940
  %7 = load i32* %2, align 4, !dbg !940
  %8 = shl i32 %7, 0, !dbg !940
  %9 = load i32* %3, align 4, !dbg !940
  %10 = shl i32 %9, 6, !dbg !940
  %11 = or i32 %8, %10, !dbg !940
  %12 = load i32* %4, align 4, !dbg !940
  %13 = shl i32 %12, 23, !dbg !940
  %14 = or i32 %11, %13, !dbg !940
  %15 = load i32* %5, align 4, !dbg !940
  %16 = shl i32 %15, 14, !dbg !940
  %17 = or i32 %14, %16, !dbg !940
  %18 = call i32 @luaK_code(%struct.FuncState* %6, i32 %17), !dbg !940
  ret i32 %18, !dbg !940
}

; Function Attrs: nounwind
define hidden void @luaK_concat(%struct.FuncState* %fs, i32* %l1, i32 %l2) #0 {
  %1 = alloca %struct.FuncState*, align 4
  %2 = alloca i32*, align 4
  %3 = alloca i32, align 4
  %list = alloca i32, align 4
  %next = alloca i32, align 4
  store %struct.FuncState* %fs, %struct.FuncState** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.FuncState** %1}, metadata !941), !dbg !942
  store i32* %l1, i32** %2, align 4
  call void @llvm.dbg.declare(metadata !{i32** %2}, metadata !943), !dbg !944
  store i32 %l2, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !945), !dbg !946
  %4 = load i32* %3, align 4, !dbg !947
  %5 = icmp eq i32 %4, -1, !dbg !947
  br i1 %5, label %6, label %7, !dbg !947

; <label>:6                                       ; preds = %0
  br label %29, !dbg !949

; <label>:7                                       ; preds = %0
  %8 = load i32** %2, align 4, !dbg !951
  %9 = load i32* %8, align 4, !dbg !951
  %10 = icmp eq i32 %9, -1, !dbg !951
  br i1 %10, label %11, label %14, !dbg !951

; <label>:11                                      ; preds = %7
  %12 = load i32* %3, align 4, !dbg !953
  %13 = load i32** %2, align 4, !dbg !953
  store i32 %12, i32* %13, align 4, !dbg !953
  br label %28, !dbg !953

; <label>:14                                      ; preds = %7
  call void @llvm.dbg.declare(metadata !{i32* %list}, metadata !954), !dbg !956
  %15 = load i32** %2, align 4, !dbg !957
  %16 = load i32* %15, align 4, !dbg !957
  store i32 %16, i32* %list, align 4, !dbg !957
  call void @llvm.dbg.declare(metadata !{i32* %next}, metadata !958), !dbg !959
  br label %17, !dbg !960

; <label>:17                                      ; preds = %22, %14
  %18 = load %struct.FuncState** %1, align 4, !dbg !961
  %19 = load i32* %list, align 4, !dbg !961
  %20 = call i32 @getjump(%struct.FuncState* %18, i32 %19), !dbg !961
  store i32 %20, i32* %next, align 4, !dbg !961
  %21 = icmp ne i32 %20, -1, !dbg !961
  br i1 %21, label %22, label %24, !dbg !961

; <label>:22                                      ; preds = %17
  %23 = load i32* %next, align 4, !dbg !963
  store i32 %23, i32* %list, align 4, !dbg !963
  br label %17, !dbg !963

; <label>:24                                      ; preds = %17
  %25 = load %struct.FuncState** %1, align 4, !dbg !964
  %26 = load i32* %list, align 4, !dbg !964
  %27 = load i32* %3, align 4, !dbg !964
  call void @fixjump(%struct.FuncState* %25, i32 %26, i32 %27), !dbg !964
  br label %28

; <label>:28                                      ; preds = %24, %11
  br label %29

; <label>:29                                      ; preds = %6, %28
  ret void, !dbg !965
}

; Function Attrs: nounwind
define internal i32 @getjump(%struct.FuncState* %fs, i32 %pc) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.FuncState*, align 4
  %3 = alloca i32, align 4
  %offset = alloca i32, align 4
  store %struct.FuncState* %fs, %struct.FuncState** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.FuncState** %2}, metadata !966), !dbg !967
  store i32 %pc, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !968), !dbg !969
  call void @llvm.dbg.declare(metadata !{i32* %offset}, metadata !970), !dbg !971
  %4 = load i32* %3, align 4, !dbg !972
  %5 = load %struct.FuncState** %2, align 4, !dbg !972
  %6 = getelementptr inbounds %struct.FuncState* %5, i32 0, i32 0, !dbg !972
  %7 = load %struct.Proto** %6, align 4, !dbg !972
  %8 = getelementptr inbounds %struct.Proto* %7, i32 0, i32 15, !dbg !972
  %9 = load i32** %8, align 4, !dbg !972
  %10 = getelementptr inbounds i32* %9, i32 %4, !dbg !972
  %11 = load i32* %10, align 4, !dbg !972
  %12 = lshr i32 %11, 14, !dbg !972
  %13 = and i32 %12, 262143, !dbg !972
  %14 = sub nsw i32 %13, 131071, !dbg !972
  store i32 %14, i32* %offset, align 4, !dbg !972
  %15 = load i32* %offset, align 4, !dbg !973
  %16 = icmp eq i32 %15, -1, !dbg !973
  br i1 %16, label %17, label %18, !dbg !973

; <label>:17                                      ; preds = %0
  store i32 -1, i32* %1, !dbg !975
  br label %23, !dbg !975

; <label>:18                                      ; preds = %0
  %19 = load i32* %3, align 4, !dbg !976
  %20 = add nsw i32 %19, 1, !dbg !976
  %21 = load i32* %offset, align 4, !dbg !976
  %22 = add nsw i32 %20, %21, !dbg !976
  store i32 %22, i32* %1, !dbg !976
  br label %23, !dbg !976

; <label>:23                                      ; preds = %18, %17
  %24 = load i32* %1, !dbg !977
  ret i32 %24, !dbg !977
}

; Function Attrs: nounwind
define internal void @fixjump(%struct.FuncState* %fs, i32 %pc, i32 %dest) #0 {
  %1 = alloca %struct.FuncState*, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %jmp = alloca i32*, align 4
  %offset = alloca i32, align 4
  store %struct.FuncState* %fs, %struct.FuncState** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.FuncState** %1}, metadata !978), !dbg !979
  store i32 %pc, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !980), !dbg !981
  store i32 %dest, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !982), !dbg !983
  call void @llvm.dbg.declare(metadata !{i32** %jmp}, metadata !984), !dbg !985
  %4 = load i32* %2, align 4, !dbg !986
  %5 = load %struct.FuncState** %1, align 4, !dbg !986
  %6 = getelementptr inbounds %struct.FuncState* %5, i32 0, i32 0, !dbg !986
  %7 = load %struct.Proto** %6, align 4, !dbg !986
  %8 = getelementptr inbounds %struct.Proto* %7, i32 0, i32 15, !dbg !986
  %9 = load i32** %8, align 4, !dbg !986
  %10 = getelementptr inbounds i32* %9, i32 %4, !dbg !986
  store i32* %10, i32** %jmp, align 4, !dbg !986
  call void @llvm.dbg.declare(metadata !{i32* %offset}, metadata !987), !dbg !988
  %11 = load i32* %3, align 4, !dbg !989
  %12 = load i32* %2, align 4, !dbg !989
  %13 = add nsw i32 %12, 1, !dbg !989
  %14 = sub nsw i32 %11, %13, !dbg !989
  store i32 %14, i32* %offset, align 4, !dbg !989
  %15 = load i32* %offset, align 4, !dbg !990
  %16 = call i32 @abs(i32 %15) #1, !dbg !990
  %17 = icmp sgt i32 %16, 131071, !dbg !990
  br i1 %17, label %18, label %22, !dbg !990

; <label>:18                                      ; preds = %0
  %19 = load %struct.FuncState** %1, align 4, !dbg !992
  %20 = getelementptr inbounds %struct.FuncState* %19, i32 0, i32 2, !dbg !992
  %21 = load %struct.LexState** %20, align 4, !dbg !992
  call void @luaX_syntaxerror(%struct.LexState* %21, i8* getelementptr inbounds ([27 x i8]* @.str4, i32 0, i32 0)) #6, !dbg !992
  unreachable, !dbg !992

; <label>:22                                      ; preds = %0
  %23 = load i32** %jmp, align 4, !dbg !993
  %24 = load i32* %23, align 4, !dbg !993
  %25 = and i32 %24, 16383, !dbg !993
  %26 = load i32* %offset, align 4, !dbg !993
  %27 = add nsw i32 %26, 131071, !dbg !993
  %28 = shl i32 %27, 14, !dbg !993
  %29 = and i32 %28, -16384, !dbg !993
  %30 = or i32 %25, %29, !dbg !993
  %31 = load i32** %jmp, align 4, !dbg !993
  store i32 %30, i32* %31, align 4, !dbg !993
  ret void, !dbg !994
}

; Function Attrs: nounwind
define hidden i32 @luaK_jump(%struct.FuncState* %fs) #0 {
  %1 = alloca %struct.FuncState*, align 4
  %jpc = alloca i32, align 4
  %j = alloca i32, align 4
  store %struct.FuncState* %fs, %struct.FuncState** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.FuncState** %1}, metadata !995), !dbg !996
  call void @llvm.dbg.declare(metadata !{i32* %jpc}, metadata !997), !dbg !998
  %2 = load %struct.FuncState** %1, align 4, !dbg !999
  %3 = getelementptr inbounds %struct.FuncState* %2, i32 0, i32 6, !dbg !999
  %4 = load i32* %3, align 4, !dbg !999
  store i32 %4, i32* %jpc, align 4, !dbg !999
  call void @llvm.dbg.declare(metadata !{i32* %j}, metadata !1000), !dbg !1001
  %5 = load %struct.FuncState** %1, align 4, !dbg !1002
  %6 = getelementptr inbounds %struct.FuncState* %5, i32 0, i32 6, !dbg !1002
  store i32 -1, i32* %6, align 4, !dbg !1002
  %7 = load %struct.FuncState** %1, align 4, !dbg !1003
  %8 = call i32 @luaK_codeABx(%struct.FuncState* %7, i32 30, i32 0, i32 131070), !dbg !1003
  store i32 %8, i32* %j, align 4, !dbg !1003
  %9 = load %struct.FuncState** %1, align 4, !dbg !1004
  %10 = load i32* %jpc, align 4, !dbg !1004
  call void @luaK_concat(%struct.FuncState* %9, i32* %j, i32 %10), !dbg !1004
  %11 = load i32* %j, align 4, !dbg !1005
  ret i32 %11, !dbg !1005
}

; Function Attrs: nounwind
define hidden i32 @luaK_codeABx(%struct.FuncState* %fs, i32 %o, i32 %a, i32 %bc) #0 {
  %1 = alloca %struct.FuncState*, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.FuncState* %fs, %struct.FuncState** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.FuncState** %1}, metadata !1006), !dbg !1007
  store i32 %o, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !1008), !dbg !1009
  store i32 %a, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !1010), !dbg !1011
  store i32 %bc, i32* %4, align 4
  call void @llvm.dbg.declare(metadata !{i32* %4}, metadata !1012), !dbg !1013
  %5 = load %struct.FuncState** %1, align 4, !dbg !1014
  %6 = load i32* %2, align 4, !dbg !1014
  %7 = shl i32 %6, 0, !dbg !1014
  %8 = load i32* %3, align 4, !dbg !1014
  %9 = shl i32 %8, 6, !dbg !1014
  %10 = or i32 %7, %9, !dbg !1014
  %11 = load i32* %4, align 4, !dbg !1014
  %12 = shl i32 %11, 14, !dbg !1014
  %13 = or i32 %10, %12, !dbg !1014
  %14 = call i32 @luaK_code(%struct.FuncState* %5, i32 %13), !dbg !1014
  ret i32 %14, !dbg !1014
}

; Function Attrs: nounwind
define hidden void @luaK_ret(%struct.FuncState* %fs, i32 %first, i32 %nret) #0 {
  %1 = alloca %struct.FuncState*, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store %struct.FuncState* %fs, %struct.FuncState** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.FuncState** %1}, metadata !1015), !dbg !1016
  store i32 %first, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !1017), !dbg !1018
  store i32 %nret, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !1019), !dbg !1020
  %4 = load %struct.FuncState** %1, align 4, !dbg !1021
  %5 = load i32* %2, align 4, !dbg !1021
  %6 = load i32* %3, align 4, !dbg !1021
  %7 = add nsw i32 %6, 1, !dbg !1021
  %8 = call i32 @luaK_codeABC(%struct.FuncState* %4, i32 38, i32 %5, i32 %7, i32 0), !dbg !1021
  ret void, !dbg !1022
}

; Function Attrs: nounwind
define hidden i32 @luaK_getlabel(%struct.FuncState* %fs) #0 {
  %1 = alloca %struct.FuncState*, align 4
  store %struct.FuncState* %fs, %struct.FuncState** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.FuncState** %1}, metadata !1023), !dbg !1024
  %2 = load %struct.FuncState** %1, align 4, !dbg !1025
  %3 = getelementptr inbounds %struct.FuncState* %2, i32 0, i32 4, !dbg !1025
  %4 = load i32* %3, align 4, !dbg !1025
  %5 = load %struct.FuncState** %1, align 4, !dbg !1025
  %6 = getelementptr inbounds %struct.FuncState* %5, i32 0, i32 5, !dbg !1025
  store i32 %4, i32* %6, align 4, !dbg !1025
  %7 = load %struct.FuncState** %1, align 4, !dbg !1026
  %8 = getelementptr inbounds %struct.FuncState* %7, i32 0, i32 4, !dbg !1026
  %9 = load i32* %8, align 4, !dbg !1026
  ret i32 %9, !dbg !1026
}

; Function Attrs: nounwind
define hidden void @luaK_patchtohere(%struct.FuncState* %fs, i32 %list) #0 {
  %1 = alloca %struct.FuncState*, align 4
  %2 = alloca i32, align 4
  store %struct.FuncState* %fs, %struct.FuncState** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.FuncState** %1}, metadata !1027), !dbg !1028
  store i32 %list, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !1029), !dbg !1030
  %3 = load %struct.FuncState** %1, align 4, !dbg !1031
  %4 = call i32 @luaK_getlabel(%struct.FuncState* %3), !dbg !1031
  %5 = load %struct.FuncState** %1, align 4, !dbg !1032
  %6 = load %struct.FuncState** %1, align 4, !dbg !1032
  %7 = getelementptr inbounds %struct.FuncState* %6, i32 0, i32 6, !dbg !1032
  %8 = load i32* %2, align 4, !dbg !1032
  call void @luaK_concat(%struct.FuncState* %5, i32* %7, i32 %8), !dbg !1032
  ret void, !dbg !1033
}

; Function Attrs: nounwind
define hidden void @luaK_patchlist(%struct.FuncState* %fs, i32 %list, i32 %target) #0 {
  %1 = alloca %struct.FuncState*, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store %struct.FuncState* %fs, %struct.FuncState** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.FuncState** %1}, metadata !1034), !dbg !1035
  store i32 %list, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !1036), !dbg !1037
  store i32 %target, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !1038), !dbg !1039
  %4 = load i32* %3, align 4, !dbg !1040
  %5 = load %struct.FuncState** %1, align 4, !dbg !1040
  %6 = getelementptr inbounds %struct.FuncState* %5, i32 0, i32 4, !dbg !1040
  %7 = load i32* %6, align 4, !dbg !1040
  %8 = icmp eq i32 %4, %7, !dbg !1040
  br i1 %8, label %9, label %12, !dbg !1040

; <label>:9                                       ; preds = %0
  %10 = load %struct.FuncState** %1, align 4, !dbg !1042
  %11 = load i32* %2, align 4, !dbg !1042
  call void @luaK_patchtohere(%struct.FuncState* %10, i32 %11), !dbg !1042
  br label %17, !dbg !1042

; <label>:12                                      ; preds = %0
  %13 = load %struct.FuncState** %1, align 4, !dbg !1043
  %14 = load i32* %2, align 4, !dbg !1043
  %15 = load i32* %3, align 4, !dbg !1043
  %16 = load i32* %3, align 4, !dbg !1043
  call void @patchlistaux(%struct.FuncState* %13, i32 %14, i32 %15, i32 255, i32 %16), !dbg !1043
  br label %17

; <label>:17                                      ; preds = %12, %9
  ret void, !dbg !1045
}

; Function Attrs: nounwind
define internal void @patchlistaux(%struct.FuncState* %fs, i32 %list, i32 %vtarget, i32 %reg, i32 %dtarget) #0 {
  %1 = alloca %struct.FuncState*, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %next = alloca i32, align 4
  store %struct.FuncState* %fs, %struct.FuncState** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.FuncState** %1}, metadata !1046), !dbg !1047
  store i32 %list, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !1048), !dbg !1049
  store i32 %vtarget, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !1050), !dbg !1051
  store i32 %reg, i32* %4, align 4
  call void @llvm.dbg.declare(metadata !{i32* %4}, metadata !1052), !dbg !1053
  store i32 %dtarget, i32* %5, align 4
  call void @llvm.dbg.declare(metadata !{i32* %5}, metadata !1054), !dbg !1055
  br label %6, !dbg !1056

; <label>:6                                       ; preds = %26, %0
  %7 = load i32* %2, align 4, !dbg !1057
  %8 = icmp ne i32 %7, -1, !dbg !1057
  br i1 %8, label %9, label %28, !dbg !1057

; <label>:9                                       ; preds = %6
  call void @llvm.dbg.declare(metadata !{i32* %next}, metadata !1059), !dbg !1061
  %10 = load %struct.FuncState** %1, align 4, !dbg !1062
  %11 = load i32* %2, align 4, !dbg !1062
  %12 = call i32 @getjump(%struct.FuncState* %10, i32 %11), !dbg !1062
  store i32 %12, i32* %next, align 4, !dbg !1062
  %13 = load %struct.FuncState** %1, align 4, !dbg !1063
  %14 = load i32* %2, align 4, !dbg !1063
  %15 = load i32* %4, align 4, !dbg !1063
  %16 = call i32 @patchtestreg(%struct.FuncState* %13, i32 %14, i32 %15), !dbg !1063
  %17 = icmp ne i32 %16, 0, !dbg !1063
  br i1 %17, label %18, label %22, !dbg !1063

; <label>:18                                      ; preds = %9
  %19 = load %struct.FuncState** %1, align 4, !dbg !1065
  %20 = load i32* %2, align 4, !dbg !1065
  %21 = load i32* %3, align 4, !dbg !1065
  call void @fixjump(%struct.FuncState* %19, i32 %20, i32 %21), !dbg !1065
  br label %26, !dbg !1065

; <label>:22                                      ; preds = %9
  %23 = load %struct.FuncState** %1, align 4, !dbg !1066
  %24 = load i32* %2, align 4, !dbg !1066
  %25 = load i32* %5, align 4, !dbg !1066
  call void @fixjump(%struct.FuncState* %23, i32 %24, i32 %25), !dbg !1066
  br label %26

; <label>:26                                      ; preds = %22, %18
  %27 = load i32* %next, align 4, !dbg !1067
  store i32 %27, i32* %2, align 4, !dbg !1067
  br label %6, !dbg !1068

; <label>:28                                      ; preds = %6
  ret void, !dbg !1069
}

; Function Attrs: nounwind
define hidden void @luaK_patchclose(%struct.FuncState* %fs, i32 %list, i32 %level) #0 {
  %1 = alloca %struct.FuncState*, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store %struct.FuncState* %fs, %struct.FuncState** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.FuncState** %1}, metadata !1070), !dbg !1071
  store i32 %list, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !1072), !dbg !1073
  store i32 %level, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !1074), !dbg !1075
  %4 = load i32* %3, align 4, !dbg !1076
  %5 = add nsw i32 %4, 1, !dbg !1076
  store i32 %5, i32* %3, align 4, !dbg !1076
  br label %6, !dbg !1077

; <label>:6                                       ; preds = %30, %0
  %7 = load i32* %2, align 4, !dbg !1079
  %8 = icmp ne i32 %7, -1, !dbg !1079
  br i1 %8, label %9, label %34, !dbg !1079

; <label>:9                                       ; preds = %6
  %10 = load i32* %2, align 4, !dbg !1082
  %11 = load %struct.FuncState** %1, align 4, !dbg !1082
  %12 = getelementptr inbounds %struct.FuncState* %11, i32 0, i32 0, !dbg !1082
  %13 = load %struct.Proto** %12, align 4, !dbg !1082
  %14 = getelementptr inbounds %struct.Proto* %13, i32 0, i32 15, !dbg !1082
  %15 = load i32** %14, align 4, !dbg !1082
  %16 = getelementptr inbounds i32* %15, i32 %10, !dbg !1082
  %17 = load i32* %16, align 4, !dbg !1082
  %18 = and i32 %17, -16321, !dbg !1082
  %19 = load i32* %3, align 4, !dbg !1082
  %20 = shl i32 %19, 6, !dbg !1082
  %21 = and i32 %20, 16320, !dbg !1082
  %22 = or i32 %18, %21, !dbg !1082
  %23 = load i32* %2, align 4, !dbg !1082
  %24 = load %struct.FuncState** %1, align 4, !dbg !1082
  %25 = getelementptr inbounds %struct.FuncState* %24, i32 0, i32 0, !dbg !1082
  %26 = load %struct.Proto** %25, align 4, !dbg !1082
  %27 = getelementptr inbounds %struct.Proto* %26, i32 0, i32 15, !dbg !1082
  %28 = load i32** %27, align 4, !dbg !1082
  %29 = getelementptr inbounds i32* %28, i32 %23, !dbg !1082
  store i32 %22, i32* %29, align 4, !dbg !1082
  br label %30, !dbg !1084

; <label>:30                                      ; preds = %9
  %31 = load %struct.FuncState** %1, align 4, !dbg !1085
  %32 = load i32* %2, align 4, !dbg !1085
  %33 = call i32 @getjump(%struct.FuncState* %31, i32 %32), !dbg !1085
  store i32 %33, i32* %2, align 4, !dbg !1085
  br label %6, !dbg !1085

; <label>:34                                      ; preds = %6
  ret void, !dbg !1086
}

; Function Attrs: nounwind
define internal i32 @luaK_code(%struct.FuncState* %fs, i32 %i) #0 {
  %1 = alloca %struct.FuncState*, align 4
  %2 = alloca i32, align 4
  %f = alloca %struct.Proto*, align 4
  store %struct.FuncState* %fs, %struct.FuncState** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.FuncState** %1}, metadata !1087), !dbg !1088
  store i32 %i, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !1089), !dbg !1090
  call void @llvm.dbg.declare(metadata !{%struct.Proto** %f}, metadata !1091), !dbg !1092
  %3 = load %struct.FuncState** %1, align 4, !dbg !1093
  %4 = getelementptr inbounds %struct.FuncState* %3, i32 0, i32 0, !dbg !1093
  %5 = load %struct.Proto** %4, align 4, !dbg !1093
  store %struct.Proto* %5, %struct.Proto** %f, align 4, !dbg !1093
  %6 = load %struct.FuncState** %1, align 4, !dbg !1094
  call void @dischargejpc(%struct.FuncState* %6), !dbg !1094
  %7 = load %struct.FuncState** %1, align 4, !dbg !1095
  %8 = getelementptr inbounds %struct.FuncState* %7, i32 0, i32 4, !dbg !1095
  %9 = load i32* %8, align 4, !dbg !1095
  %10 = add nsw i32 %9, 1, !dbg !1095
  %11 = load %struct.Proto** %f, align 4, !dbg !1095
  %12 = getelementptr inbounds %struct.Proto* %11, i32 0, i32 8, !dbg !1095
  %13 = load i32* %12, align 4, !dbg !1095
  %14 = icmp sgt i32 %10, %13, !dbg !1095
  br i1 %14, label %15, label %31, !dbg !1095

; <label>:15                                      ; preds = %0
  %16 = load %struct.FuncState** %1, align 4, !dbg !1097
  %17 = getelementptr inbounds %struct.FuncState* %16, i32 0, i32 2, !dbg !1097
  %18 = load %struct.LexState** %17, align 4, !dbg !1097
  %19 = getelementptr inbounds %struct.LexState* %18, i32 0, i32 6, !dbg !1097
  %20 = load %struct.lua_State** %19, align 4, !dbg !1097
  %21 = load %struct.Proto** %f, align 4, !dbg !1097
  %22 = getelementptr inbounds %struct.Proto* %21, i32 0, i32 15, !dbg !1097
  %23 = load i32** %22, align 4, !dbg !1097
  %24 = bitcast i32* %23 to i8*, !dbg !1097
  %25 = load %struct.Proto** %f, align 4, !dbg !1097
  %26 = getelementptr inbounds %struct.Proto* %25, i32 0, i32 8, !dbg !1097
  %27 = call i8* @luaM_growaux_(%struct.lua_State* %20, i8* %24, i32* %26, i32 4, i32 2147483647, i8* getelementptr inbounds ([8 x i8]* @.str3, i32 0, i32 0)), !dbg !1097
  %28 = bitcast i8* %27 to i32*, !dbg !1097
  %29 = load %struct.Proto** %f, align 4, !dbg !1097
  %30 = getelementptr inbounds %struct.Proto* %29, i32 0, i32 15, !dbg !1097
  store i32* %28, i32** %30, align 4, !dbg !1097
  br label %31, !dbg !1097

; <label>:31                                      ; preds = %15, %0
  %32 = load i32* %2, align 4, !dbg !1099
  %33 = load %struct.FuncState** %1, align 4, !dbg !1099
  %34 = getelementptr inbounds %struct.FuncState* %33, i32 0, i32 4, !dbg !1099
  %35 = load i32* %34, align 4, !dbg !1099
  %36 = load %struct.Proto** %f, align 4, !dbg !1099
  %37 = getelementptr inbounds %struct.Proto* %36, i32 0, i32 15, !dbg !1099
  %38 = load i32** %37, align 4, !dbg !1099
  %39 = getelementptr inbounds i32* %38, i32 %35, !dbg !1099
  store i32 %32, i32* %39, align 4, !dbg !1099
  %40 = load %struct.FuncState** %1, align 4, !dbg !1100
  %41 = getelementptr inbounds %struct.FuncState* %40, i32 0, i32 4, !dbg !1100
  %42 = load i32* %41, align 4, !dbg !1100
  %43 = add nsw i32 %42, 1, !dbg !1100
  %44 = load %struct.Proto** %f, align 4, !dbg !1100
  %45 = getelementptr inbounds %struct.Proto* %44, i32 0, i32 9, !dbg !1100
  %46 = load i32* %45, align 4, !dbg !1100
  %47 = icmp sgt i32 %43, %46, !dbg !1100
  br i1 %47, label %48, label %64, !dbg !1100

; <label>:48                                      ; preds = %31
  %49 = load %struct.FuncState** %1, align 4, !dbg !1102
  %50 = getelementptr inbounds %struct.FuncState* %49, i32 0, i32 2, !dbg !1102
  %51 = load %struct.LexState** %50, align 4, !dbg !1102
  %52 = getelementptr inbounds %struct.LexState* %51, i32 0, i32 6, !dbg !1102
  %53 = load %struct.lua_State** %52, align 4, !dbg !1102
  %54 = load %struct.Proto** %f, align 4, !dbg !1102
  %55 = getelementptr inbounds %struct.Proto* %54, i32 0, i32 17, !dbg !1102
  %56 = load i32** %55, align 4, !dbg !1102
  %57 = bitcast i32* %56 to i8*, !dbg !1102
  %58 = load %struct.Proto** %f, align 4, !dbg !1102
  %59 = getelementptr inbounds %struct.Proto* %58, i32 0, i32 9, !dbg !1102
  %60 = call i8* @luaM_growaux_(%struct.lua_State* %53, i8* %57, i32* %59, i32 4, i32 2147483647, i8* getelementptr inbounds ([8 x i8]* @.str3, i32 0, i32 0)), !dbg !1102
  %61 = bitcast i8* %60 to i32*, !dbg !1102
  %62 = load %struct.Proto** %f, align 4, !dbg !1102
  %63 = getelementptr inbounds %struct.Proto* %62, i32 0, i32 17, !dbg !1102
  store i32* %61, i32** %63, align 4, !dbg !1102
  br label %64, !dbg !1102

; <label>:64                                      ; preds = %48, %31
  %65 = load %struct.FuncState** %1, align 4, !dbg !1104
  %66 = getelementptr inbounds %struct.FuncState* %65, i32 0, i32 2, !dbg !1104
  %67 = load %struct.LexState** %66, align 4, !dbg !1104
  %68 = getelementptr inbounds %struct.LexState* %67, i32 0, i32 2, !dbg !1104
  %69 = load i32* %68, align 4, !dbg !1104
  %70 = load %struct.FuncState** %1, align 4, !dbg !1104
  %71 = getelementptr inbounds %struct.FuncState* %70, i32 0, i32 4, !dbg !1104
  %72 = load i32* %71, align 4, !dbg !1104
  %73 = load %struct.Proto** %f, align 4, !dbg !1104
  %74 = getelementptr inbounds %struct.Proto* %73, i32 0, i32 17, !dbg !1104
  %75 = load i32** %74, align 4, !dbg !1104
  %76 = getelementptr inbounds i32* %75, i32 %72, !dbg !1104
  store i32 %69, i32* %76, align 4, !dbg !1104
  %77 = load %struct.FuncState** %1, align 4, !dbg !1105
  %78 = getelementptr inbounds %struct.FuncState* %77, i32 0, i32 4, !dbg !1105
  %79 = load i32* %78, align 4, !dbg !1105
  %80 = add nsw i32 %79, 1, !dbg !1105
  store i32 %80, i32* %78, align 4, !dbg !1105
  ret i32 %79, !dbg !1105
}

; Function Attrs: nounwind
define hidden i32 @luaK_codek(%struct.FuncState* %fs, i32 %reg, i32 %k) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.FuncState*, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %p = alloca i32, align 4
  store %struct.FuncState* %fs, %struct.FuncState** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.FuncState** %2}, metadata !1106), !dbg !1107
  store i32 %reg, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !1108), !dbg !1109
  store i32 %k, i32* %4, align 4
  call void @llvm.dbg.declare(metadata !{i32* %4}, metadata !1110), !dbg !1111
  %5 = load i32* %4, align 4, !dbg !1112
  %6 = icmp sle i32 %5, 262143, !dbg !1112
  br i1 %6, label %7, label %12, !dbg !1112

; <label>:7                                       ; preds = %0
  %8 = load %struct.FuncState** %2, align 4, !dbg !1114
  %9 = load i32* %3, align 4, !dbg !1114
  %10 = load i32* %4, align 4, !dbg !1114
  %11 = call i32 @luaK_codeABx(%struct.FuncState* %8, i32 1, i32 %9, i32 %10), !dbg !1114
  store i32 %11, i32* %1, !dbg !1114
  br label %20, !dbg !1114

; <label>:12                                      ; preds = %0
  call void @llvm.dbg.declare(metadata !{i32* %p}, metadata !1115), !dbg !1117
  %13 = load %struct.FuncState** %2, align 4, !dbg !1118
  %14 = load i32* %3, align 4, !dbg !1118
  %15 = call i32 @luaK_codeABx(%struct.FuncState* %13, i32 2, i32 %14, i32 0), !dbg !1118
  store i32 %15, i32* %p, align 4, !dbg !1118
  %16 = load %struct.FuncState** %2, align 4, !dbg !1119
  %17 = load i32* %4, align 4, !dbg !1119
  %18 = call i32 @codeextraarg(%struct.FuncState* %16, i32 %17), !dbg !1119
  %19 = load i32* %p, align 4, !dbg !1120
  store i32 %19, i32* %1, !dbg !1120
  br label %20, !dbg !1120

; <label>:20                                      ; preds = %12, %7
  %21 = load i32* %1, !dbg !1121
  ret i32 %21, !dbg !1121
}

; Function Attrs: nounwind
define internal i32 @codeextraarg(%struct.FuncState* %fs, i32 %a) #0 {
  %1 = alloca %struct.FuncState*, align 4
  %2 = alloca i32, align 4
  store %struct.FuncState* %fs, %struct.FuncState** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.FuncState** %1}, metadata !1122), !dbg !1123
  store i32 %a, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !1124), !dbg !1125
  %3 = load %struct.FuncState** %1, align 4, !dbg !1126
  %4 = load i32* %2, align 4, !dbg !1126
  %5 = shl i32 %4, 6, !dbg !1126
  %6 = or i32 46, %5, !dbg !1126
  %7 = call i32 @luaK_code(%struct.FuncState* %3, i32 %6), !dbg !1126
  ret i32 %7, !dbg !1126
}

; Function Attrs: nounwind
define hidden void @luaK_checkstack(%struct.FuncState* %fs, i32 %n) #0 {
  %1 = alloca %struct.FuncState*, align 4
  %2 = alloca i32, align 4
  %newstack = alloca i32, align 4
  store %struct.FuncState* %fs, %struct.FuncState** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.FuncState** %1}, metadata !1127), !dbg !1128
  store i32 %n, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !1129), !dbg !1130
  call void @llvm.dbg.declare(metadata !{i32* %newstack}, metadata !1131), !dbg !1132
  %3 = load %struct.FuncState** %1, align 4, !dbg !1133
  %4 = getelementptr inbounds %struct.FuncState* %3, i32 0, i32 13, !dbg !1133
  %5 = load i8* %4, align 1, !dbg !1133
  %6 = zext i8 %5 to i32, !dbg !1133
  %7 = load i32* %2, align 4, !dbg !1133
  %8 = add nsw i32 %6, %7, !dbg !1133
  store i32 %8, i32* %newstack, align 4, !dbg !1133
  %9 = load i32* %newstack, align 4, !dbg !1134
  %10 = load %struct.FuncState** %1, align 4, !dbg !1134
  %11 = getelementptr inbounds %struct.FuncState* %10, i32 0, i32 0, !dbg !1134
  %12 = load %struct.Proto** %11, align 4, !dbg !1134
  %13 = getelementptr inbounds %struct.Proto* %12, i32 0, i32 5, !dbg !1134
  %14 = load i8* %13, align 1, !dbg !1134
  %15 = zext i8 %14 to i32, !dbg !1134
  %16 = icmp sgt i32 %9, %15, !dbg !1134
  br i1 %16, label %17, label %31, !dbg !1134

; <label>:17                                      ; preds = %0
  %18 = load i32* %newstack, align 4, !dbg !1136
  %19 = icmp sge i32 %18, 255, !dbg !1136
  br i1 %19, label %20, label %24, !dbg !1136

; <label>:20                                      ; preds = %17
  %21 = load %struct.FuncState** %1, align 4, !dbg !1139
  %22 = getelementptr inbounds %struct.FuncState* %21, i32 0, i32 2, !dbg !1139
  %23 = load %struct.LexState** %22, align 4, !dbg !1139
  call void @luaX_syntaxerror(%struct.LexState* %23, i8* getelementptr inbounds ([48 x i8]* @.str, i32 0, i32 0)) #6, !dbg !1139
  unreachable, !dbg !1139

; <label>:24                                      ; preds = %17
  %25 = load i32* %newstack, align 4, !dbg !1140
  %26 = trunc i32 %25 to i8, !dbg !1140
  %27 = load %struct.FuncState** %1, align 4, !dbg !1140
  %28 = getelementptr inbounds %struct.FuncState* %27, i32 0, i32 0, !dbg !1140
  %29 = load %struct.Proto** %28, align 4, !dbg !1140
  %30 = getelementptr inbounds %struct.Proto* %29, i32 0, i32 5, !dbg !1140
  store i8 %26, i8* %30, align 1, !dbg !1140
  br label %31, !dbg !1141

; <label>:31                                      ; preds = %24, %0
  ret void, !dbg !1142
}

; Function Attrs: noreturn
declare hidden void @luaX_syntaxerror(%struct.LexState*, i8*) #2

; Function Attrs: nounwind
define hidden void @luaK_reserveregs(%struct.FuncState* %fs, i32 %n) #0 {
  %1 = alloca %struct.FuncState*, align 4
  %2 = alloca i32, align 4
  store %struct.FuncState* %fs, %struct.FuncState** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.FuncState** %1}, metadata !1143), !dbg !1144
  store i32 %n, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !1145), !dbg !1146
  %3 = load %struct.FuncState** %1, align 4, !dbg !1147
  %4 = load i32* %2, align 4, !dbg !1147
  call void @luaK_checkstack(%struct.FuncState* %3, i32 %4), !dbg !1147
  %5 = load i32* %2, align 4, !dbg !1148
  %6 = load %struct.FuncState** %1, align 4, !dbg !1148
  %7 = getelementptr inbounds %struct.FuncState* %6, i32 0, i32 13, !dbg !1148
  %8 = load i8* %7, align 1, !dbg !1148
  %9 = zext i8 %8 to i32, !dbg !1148
  %10 = add nsw i32 %9, %5, !dbg !1148
  %11 = trunc i32 %10 to i8, !dbg !1148
  store i8 %11, i8* %7, align 1, !dbg !1148
  ret void, !dbg !1149
}

; Function Attrs: nounwind
define hidden i32 @luaK_stringK(%struct.FuncState* %fs, %struct.TString* %s) #0 {
  %1 = alloca %struct.FuncState*, align 4
  %2 = alloca %struct.TString*, align 4
  %o = alloca %struct.lua_TValue, align 8
  %io = alloca %struct.lua_TValue*, align 4
  %x_ = alloca %struct.TString*, align 4
  store %struct.FuncState* %fs, %struct.FuncState** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.FuncState** %1}, metadata !1150), !dbg !1151
  store %struct.TString* %s, %struct.TString** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.TString** %2}, metadata !1152), !dbg !1153
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue* %o}, metadata !1154), !dbg !1155
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %io}, metadata !1156), !dbg !1158
  store %struct.lua_TValue* %o, %struct.lua_TValue** %io, align 4, !dbg !1158
  call void @llvm.dbg.declare(metadata !{%struct.TString** %x_}, metadata !1159), !dbg !1158
  %3 = load %struct.TString** %2, align 4, !dbg !1158
  store %struct.TString* %3, %struct.TString** %x_, align 4, !dbg !1158
  %4 = load %struct.TString** %x_, align 4, !dbg !1158
  %5 = bitcast %struct.TString* %4 to %union.GCUnion*, !dbg !1158
  %6 = bitcast %union.GCUnion* %5 to %struct.GCObject*, !dbg !1158
  %7 = load %struct.lua_TValue** %io, align 4, !dbg !1158
  %8 = getelementptr inbounds %struct.lua_TValue* %7, i32 0, i32 0, !dbg !1158
  %9 = bitcast %union.Value* %8 to %struct.GCObject**, !dbg !1158
  store %struct.GCObject* %6, %struct.GCObject** %9, align 4, !dbg !1158
  %10 = load %struct.TString** %x_, align 4, !dbg !1158
  %11 = getelementptr inbounds %struct.TString* %10, i32 0, i32 1, !dbg !1158
  %12 = load i8* %11, align 1, !dbg !1158
  %13 = zext i8 %12 to i32, !dbg !1158
  %14 = or i32 %13, 64, !dbg !1158
  %15 = load %struct.lua_TValue** %io, align 4, !dbg !1158
  %16 = getelementptr inbounds %struct.lua_TValue* %15, i32 0, i32 1, !dbg !1158
  store i32 %14, i32* %16, align 4, !dbg !1158
  %17 = load %struct.FuncState** %1, align 4, !dbg !1160
  %18 = call i32 @addk(%struct.FuncState* %17, %struct.lua_TValue* %o, %struct.lua_TValue* %o), !dbg !1160
  ret i32 %18, !dbg !1160
}

; Function Attrs: nounwind
define internal i32 @addk(%struct.FuncState* %fs, %struct.lua_TValue* %key, %struct.lua_TValue* %v) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.FuncState*, align 4
  %3 = alloca %struct.lua_TValue*, align 4
  %4 = alloca %struct.lua_TValue*, align 4
  %L = alloca %struct.lua_State*, align 4
  %f = alloca %struct.Proto*, align 4
  %idx = alloca %struct.lua_TValue*, align 4
  %k = alloca i32, align 4
  %oldsize = alloca i32, align 4
  %io = alloca %struct.lua_TValue*, align 4
  %io1 = alloca %struct.lua_TValue*, align 4
  store %struct.FuncState* %fs, %struct.FuncState** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.FuncState** %2}, metadata !1161), !dbg !1162
  store %struct.lua_TValue* %key, %struct.lua_TValue** %3, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %3}, metadata !1163), !dbg !1164
  store %struct.lua_TValue* %v, %struct.lua_TValue** %4, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %4}, metadata !1165), !dbg !1166
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %L}, metadata !1167), !dbg !1168
  %5 = load %struct.FuncState** %2, align 4, !dbg !1169
  %6 = getelementptr inbounds %struct.FuncState* %5, i32 0, i32 2, !dbg !1169
  %7 = load %struct.LexState** %6, align 4, !dbg !1169
  %8 = getelementptr inbounds %struct.LexState* %7, i32 0, i32 6, !dbg !1169
  %9 = load %struct.lua_State** %8, align 4, !dbg !1169
  store %struct.lua_State* %9, %struct.lua_State** %L, align 4, !dbg !1169
  call void @llvm.dbg.declare(metadata !{%struct.Proto** %f}, metadata !1170), !dbg !1171
  %10 = load %struct.FuncState** %2, align 4, !dbg !1172
  %11 = getelementptr inbounds %struct.FuncState* %10, i32 0, i32 0, !dbg !1172
  %12 = load %struct.Proto** %11, align 4, !dbg !1172
  store %struct.Proto* %12, %struct.Proto** %f, align 4, !dbg !1172
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %idx}, metadata !1173), !dbg !1174
  %13 = load %struct.lua_State** %L, align 4, !dbg !1175
  %14 = load %struct.FuncState** %2, align 4, !dbg !1175
  %15 = getelementptr inbounds %struct.FuncState* %14, i32 0, i32 2, !dbg !1175
  %16 = load %struct.LexState** %15, align 4, !dbg !1175
  %17 = getelementptr inbounds %struct.LexState* %16, i32 0, i32 9, !dbg !1175
  %18 = load %struct.Table** %17, align 4, !dbg !1175
  %19 = load %struct.lua_TValue** %3, align 4, !dbg !1175
  %20 = call %struct.lua_TValue* @luaH_set(%struct.lua_State* %13, %struct.Table* %18, %struct.lua_TValue* %19), !dbg !1175
  store %struct.lua_TValue* %20, %struct.lua_TValue** %idx, align 4, !dbg !1175
  call void @llvm.dbg.declare(metadata !{i32* %k}, metadata !1176), !dbg !1177
  call void @llvm.dbg.declare(metadata !{i32* %oldsize}, metadata !1178), !dbg !1179
  %21 = load %struct.lua_TValue** %idx, align 4, !dbg !1180
  %22 = getelementptr inbounds %struct.lua_TValue* %21, i32 0, i32 1, !dbg !1180
  %23 = load i32* %22, align 4, !dbg !1180
  %24 = icmp eq i32 %23, 19, !dbg !1180
  br i1 %24, label %25, label %62, !dbg !1180

; <label>:25                                      ; preds = %0
  %26 = load %struct.lua_TValue** %idx, align 4, !dbg !1182
  %27 = getelementptr inbounds %struct.lua_TValue* %26, i32 0, i32 0, !dbg !1182
  %28 = bitcast %union.Value* %27 to i64*, !dbg !1182
  %29 = load i64* %28, align 8, !dbg !1182
  %30 = trunc i64 %29 to i32, !dbg !1182
  store i32 %30, i32* %k, align 4, !dbg !1182
  %31 = load i32* %k, align 4, !dbg !1184
  %32 = load %struct.FuncState** %2, align 4, !dbg !1184
  %33 = getelementptr inbounds %struct.FuncState* %32, i32 0, i32 7, !dbg !1184
  %34 = load i32* %33, align 4, !dbg !1184
  %35 = icmp slt i32 %31, %34, !dbg !1184
  br i1 %35, label %36, label %61, !dbg !1184

; <label>:36                                      ; preds = %25
  %37 = load i32* %k, align 4, !dbg !1186
  %38 = load %struct.Proto** %f, align 4, !dbg !1186
  %39 = getelementptr inbounds %struct.Proto* %38, i32 0, i32 14, !dbg !1186
  %40 = load %struct.lua_TValue** %39, align 4, !dbg !1186
  %41 = getelementptr inbounds %struct.lua_TValue* %40, i32 %37, !dbg !1186
  %42 = getelementptr inbounds %struct.lua_TValue* %41, i32 0, i32 1, !dbg !1186
  %43 = load i32* %42, align 4, !dbg !1186
  %44 = and i32 %43, 63, !dbg !1186
  %45 = load %struct.lua_TValue** %4, align 4, !dbg !1186
  %46 = getelementptr inbounds %struct.lua_TValue* %45, i32 0, i32 1, !dbg !1186
  %47 = load i32* %46, align 4, !dbg !1186
  %48 = and i32 %47, 63, !dbg !1186
  %49 = icmp eq i32 %44, %48, !dbg !1186
  br i1 %49, label %50, label %61, !dbg !1186

; <label>:50                                      ; preds = %36
  %51 = load i32* %k, align 4, !dbg !1188
  %52 = load %struct.Proto** %f, align 4, !dbg !1188
  %53 = getelementptr inbounds %struct.Proto* %52, i32 0, i32 14, !dbg !1188
  %54 = load %struct.lua_TValue** %53, align 4, !dbg !1188
  %55 = getelementptr inbounds %struct.lua_TValue* %54, i32 %51, !dbg !1188
  %56 = load %struct.lua_TValue** %4, align 4, !dbg !1188
  %57 = call i32 @luaV_equalobj(%struct.lua_State* null, %struct.lua_TValue* %55, %struct.lua_TValue* %56), !dbg !1188
  %58 = icmp ne i32 %57, 0, !dbg !1188
  br i1 %58, label %59, label %61, !dbg !1188

; <label>:59                                      ; preds = %50
  %60 = load i32* %k, align 4, !dbg !1189
  store i32 %60, i32* %1, !dbg !1189
  br label %159, !dbg !1189

; <label>:61                                      ; preds = %50, %36, %25
  br label %62, !dbg !1190

; <label>:62                                      ; preds = %61, %0
  %63 = load %struct.Proto** %f, align 4, !dbg !1191
  %64 = getelementptr inbounds %struct.Proto* %63, i32 0, i32 7, !dbg !1191
  %65 = load i32* %64, align 4, !dbg !1191
  store i32 %65, i32* %oldsize, align 4, !dbg !1191
  %66 = load %struct.FuncState** %2, align 4, !dbg !1192
  %67 = getelementptr inbounds %struct.FuncState* %66, i32 0, i32 7, !dbg !1192
  %68 = load i32* %67, align 4, !dbg !1192
  store i32 %68, i32* %k, align 4, !dbg !1192
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %io}, metadata !1193), !dbg !1195
  %69 = load %struct.lua_TValue** %idx, align 4, !dbg !1195
  store %struct.lua_TValue* %69, %struct.lua_TValue** %io, align 4, !dbg !1195
  %70 = load i32* %k, align 4, !dbg !1195
  %71 = sext i32 %70 to i64, !dbg !1195
  %72 = load %struct.lua_TValue** %io, align 4, !dbg !1195
  %73 = getelementptr inbounds %struct.lua_TValue* %72, i32 0, i32 0, !dbg !1195
  %74 = bitcast %union.Value* %73 to i64*, !dbg !1195
  store i64 %71, i64* %74, align 8, !dbg !1195
  %75 = load %struct.lua_TValue** %io, align 4, !dbg !1195
  %76 = getelementptr inbounds %struct.lua_TValue* %75, i32 0, i32 1, !dbg !1195
  store i32 19, i32* %76, align 4, !dbg !1195
  %77 = load i32* %k, align 4, !dbg !1196
  %78 = add nsw i32 %77, 1, !dbg !1196
  %79 = load %struct.Proto** %f, align 4, !dbg !1196
  %80 = getelementptr inbounds %struct.Proto* %79, i32 0, i32 7, !dbg !1196
  %81 = load i32* %80, align 4, !dbg !1196
  %82 = icmp sgt i32 %78, %81, !dbg !1196
  br i1 %82, label %83, label %95, !dbg !1196

; <label>:83                                      ; preds = %62
  %84 = load %struct.lua_State** %L, align 4, !dbg !1198
  %85 = load %struct.Proto** %f, align 4, !dbg !1198
  %86 = getelementptr inbounds %struct.Proto* %85, i32 0, i32 14, !dbg !1198
  %87 = load %struct.lua_TValue** %86, align 4, !dbg !1198
  %88 = bitcast %struct.lua_TValue* %87 to i8*, !dbg !1198
  %89 = load %struct.Proto** %f, align 4, !dbg !1198
  %90 = getelementptr inbounds %struct.Proto* %89, i32 0, i32 7, !dbg !1198
  %91 = call i8* @luaM_growaux_(%struct.lua_State* %84, i8* %88, i32* %90, i32 16, i32 67108863, i8* getelementptr inbounds ([10 x i8]* @.str2, i32 0, i32 0)), !dbg !1198
  %92 = bitcast i8* %91 to %struct.lua_TValue*, !dbg !1198
  %93 = load %struct.Proto** %f, align 4, !dbg !1198
  %94 = getelementptr inbounds %struct.Proto* %93, i32 0, i32 14, !dbg !1198
  store %struct.lua_TValue* %92, %struct.lua_TValue** %94, align 4, !dbg !1198
  br label %95, !dbg !1198

; <label>:95                                      ; preds = %83, %62
  br label %96, !dbg !1200

; <label>:96                                      ; preds = %102, %95
  %97 = load i32* %oldsize, align 4, !dbg !1201
  %98 = load %struct.Proto** %f, align 4, !dbg !1201
  %99 = getelementptr inbounds %struct.Proto* %98, i32 0, i32 7, !dbg !1201
  %100 = load i32* %99, align 4, !dbg !1201
  %101 = icmp slt i32 %97, %100, !dbg !1201
  br i1 %101, label %102, label %110, !dbg !1201

; <label>:102                                     ; preds = %96
  %103 = load i32* %oldsize, align 4, !dbg !1204
  %104 = add nsw i32 %103, 1, !dbg !1204
  store i32 %104, i32* %oldsize, align 4, !dbg !1204
  %105 = load %struct.Proto** %f, align 4, !dbg !1204
  %106 = getelementptr inbounds %struct.Proto* %105, i32 0, i32 14, !dbg !1204
  %107 = load %struct.lua_TValue** %106, align 4, !dbg !1204
  %108 = getelementptr inbounds %struct.lua_TValue* %107, i32 %103, !dbg !1204
  %109 = getelementptr inbounds %struct.lua_TValue* %108, i32 0, i32 1, !dbg !1204
  store i32 0, i32* %109, align 4, !dbg !1204
  br label %96, !dbg !1204

; <label>:110                                     ; preds = %96
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %io1}, metadata !1206), !dbg !1208
  %111 = load i32* %k, align 4, !dbg !1208
  %112 = load %struct.Proto** %f, align 4, !dbg !1208
  %113 = getelementptr inbounds %struct.Proto* %112, i32 0, i32 14, !dbg !1208
  %114 = load %struct.lua_TValue** %113, align 4, !dbg !1208
  %115 = getelementptr inbounds %struct.lua_TValue* %114, i32 %111, !dbg !1208
  store %struct.lua_TValue* %115, %struct.lua_TValue** %io1, align 4, !dbg !1208
  %116 = load %struct.lua_TValue** %io1, align 4, !dbg !1208
  %117 = load %struct.lua_TValue** %4, align 4, !dbg !1208
  %118 = bitcast %struct.lua_TValue* %116 to i8*, !dbg !1208
  %119 = bitcast %struct.lua_TValue* %117 to i8*, !dbg !1208
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %118, i8* %119, i32 16, i32 8, i1 false), !dbg !1208
  %120 = load %struct.lua_State** %L, align 4, !dbg !1208
  %121 = load %struct.FuncState** %2, align 4, !dbg !1209
  %122 = getelementptr inbounds %struct.FuncState* %121, i32 0, i32 7, !dbg !1209
  %123 = load i32* %122, align 4, !dbg !1209
  %124 = add nsw i32 %123, 1, !dbg !1209
  store i32 %124, i32* %122, align 4, !dbg !1209
  %125 = load %struct.lua_TValue** %4, align 4, !dbg !1210
  %126 = getelementptr inbounds %struct.lua_TValue* %125, i32 0, i32 1, !dbg !1210
  %127 = load i32* %126, align 4, !dbg !1210
  %128 = and i32 %127, 64, !dbg !1210
  %129 = icmp ne i32 %128, 0, !dbg !1210
  br i1 %129, label %130, label %156, !dbg !1210

; <label>:130                                     ; preds = %110
  %131 = load %struct.Proto** %f, align 4, !dbg !1211
  %132 = getelementptr inbounds %struct.Proto* %131, i32 0, i32 2, !dbg !1211
  %133 = load i8* %132, align 1, !dbg !1211
  %134 = zext i8 %133 to i32, !dbg !1211
  %135 = and i32 %134, 4, !dbg !1211
  %136 = icmp ne i32 %135, 0, !dbg !1211
  br i1 %136, label %137, label %156, !dbg !1211

; <label>:137                                     ; preds = %130
  %138 = load %struct.lua_TValue** %4, align 4, !dbg !1213
  %139 = getelementptr inbounds %struct.lua_TValue* %138, i32 0, i32 0, !dbg !1213
  %140 = bitcast %union.Value* %139 to %struct.GCObject**, !dbg !1213
  %141 = load %struct.GCObject** %140, align 4, !dbg !1213
  %142 = getelementptr inbounds %struct.GCObject* %141, i32 0, i32 2, !dbg !1213
  %143 = load i8* %142, align 1, !dbg !1213
  %144 = zext i8 %143 to i32, !dbg !1213
  %145 = and i32 %144, 3, !dbg !1213
  %146 = icmp ne i32 %145, 0, !dbg !1213
  br i1 %146, label %147, label %156, !dbg !1213

; <label>:147                                     ; preds = %137
  %148 = load %struct.lua_State** %L, align 4, !dbg !1215
  %149 = load %struct.Proto** %f, align 4, !dbg !1215
  %150 = bitcast %struct.Proto* %149 to %union.GCUnion*, !dbg !1215
  %151 = bitcast %union.GCUnion* %150 to %struct.GCObject*, !dbg !1215
  %152 = load %struct.lua_TValue** %4, align 4, !dbg !1215
  %153 = getelementptr inbounds %struct.lua_TValue* %152, i32 0, i32 0, !dbg !1215
  %154 = bitcast %union.Value* %153 to %struct.GCObject**, !dbg !1215
  %155 = load %struct.GCObject** %154, align 4, !dbg !1215
  call void @luaC_barrier_(%struct.lua_State* %148, %struct.GCObject* %151, %struct.GCObject* %155), !dbg !1215
  br label %157, !dbg !1215

; <label>:156                                     ; preds = %137, %130, %110
  br label %157, !dbg !1217

; <label>:157                                     ; preds = %156, %147
  %158 = load i32* %k, align 4, !dbg !1221
  store i32 %158, i32* %1, !dbg !1221
  br label %159, !dbg !1221

; <label>:159                                     ; preds = %157, %59
  %160 = load i32* %1, !dbg !1222
  ret i32 %160, !dbg !1222
}

; Function Attrs: nounwind
define hidden i32 @luaK_intK(%struct.FuncState* %fs, i64 %n) #0 {
  %1 = alloca %struct.FuncState*, align 4
  %2 = alloca i64, align 8
  %k = alloca %struct.lua_TValue, align 8
  %o = alloca %struct.lua_TValue, align 8
  %io = alloca %struct.lua_TValue*, align 4
  %io1 = alloca %struct.lua_TValue*, align 4
  store %struct.FuncState* %fs, %struct.FuncState** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.FuncState** %1}, metadata !1223), !dbg !1224
  store i64 %n, i64* %2, align 8
  call void @llvm.dbg.declare(metadata !{i64* %2}, metadata !1225), !dbg !1226
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue* %k}, metadata !1227), !dbg !1228
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue* %o}, metadata !1229), !dbg !1230
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %io}, metadata !1231), !dbg !1233
  store %struct.lua_TValue* %k, %struct.lua_TValue** %io, align 4, !dbg !1233
  %3 = load i64* %2, align 8, !dbg !1233
  %4 = trunc i64 %3 to i32, !dbg !1233
  %5 = inttoptr i32 %4 to i8*, !dbg !1233
  %6 = load %struct.lua_TValue** %io, align 4, !dbg !1233
  %7 = getelementptr inbounds %struct.lua_TValue* %6, i32 0, i32 0, !dbg !1233
  %8 = bitcast %union.Value* %7 to i8**, !dbg !1233
  store i8* %5, i8** %8, align 4, !dbg !1233
  %9 = load %struct.lua_TValue** %io, align 4, !dbg !1233
  %10 = getelementptr inbounds %struct.lua_TValue* %9, i32 0, i32 1, !dbg !1233
  store i32 2, i32* %10, align 4, !dbg !1233
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %io1}, metadata !1234), !dbg !1236
  store %struct.lua_TValue* %o, %struct.lua_TValue** %io1, align 4, !dbg !1236
  %11 = load i64* %2, align 8, !dbg !1236
  %12 = load %struct.lua_TValue** %io1, align 4, !dbg !1236
  %13 = getelementptr inbounds %struct.lua_TValue* %12, i32 0, i32 0, !dbg !1236
  %14 = bitcast %union.Value* %13 to i64*, !dbg !1236
  store i64 %11, i64* %14, align 8, !dbg !1236
  %15 = load %struct.lua_TValue** %io1, align 4, !dbg !1236
  %16 = getelementptr inbounds %struct.lua_TValue* %15, i32 0, i32 1, !dbg !1236
  store i32 19, i32* %16, align 4, !dbg !1236
  %17 = load %struct.FuncState** %1, align 4, !dbg !1237
  %18 = call i32 @addk(%struct.FuncState* %17, %struct.lua_TValue* %k, %struct.lua_TValue* %o), !dbg !1237
  ret i32 %18, !dbg !1237
}

; Function Attrs: nounwind
define hidden void @luaK_setreturns(%struct.FuncState* %fs, %struct.expdesc* %e, i32 %nresults) #0 {
  %1 = alloca %struct.FuncState*, align 4
  %2 = alloca %struct.expdesc*, align 4
  %3 = alloca i32, align 4
  %pc = alloca i32*, align 4
  store %struct.FuncState* %fs, %struct.FuncState** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.FuncState** %1}, metadata !1238), !dbg !1239
  store %struct.expdesc* %e, %struct.expdesc** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.expdesc** %2}, metadata !1240), !dbg !1241
  store i32 %nresults, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !1242), !dbg !1243
  %4 = load %struct.expdesc** %2, align 4, !dbg !1244
  %5 = getelementptr inbounds %struct.expdesc* %4, i32 0, i32 0, !dbg !1244
  %6 = load i32* %5, align 4, !dbg !1244
  %7 = icmp eq i32 %6, 13, !dbg !1244
  br i1 %7, label %8, label %36, !dbg !1244

; <label>:8                                       ; preds = %0
  %9 = load %struct.expdesc** %2, align 4, !dbg !1246
  %10 = getelementptr inbounds %struct.expdesc* %9, i32 0, i32 1, !dbg !1246
  %11 = bitcast %union.anon.4* %10 to i32*, !dbg !1246
  %12 = load i32* %11, align 4, !dbg !1246
  %13 = load %struct.FuncState** %1, align 4, !dbg !1246
  %14 = getelementptr inbounds %struct.FuncState* %13, i32 0, i32 0, !dbg !1246
  %15 = load %struct.Proto** %14, align 4, !dbg !1246
  %16 = getelementptr inbounds %struct.Proto* %15, i32 0, i32 15, !dbg !1246
  %17 = load i32** %16, align 4, !dbg !1246
  %18 = getelementptr inbounds i32* %17, i32 %12, !dbg !1246
  %19 = load i32* %18, align 4, !dbg !1246
  %20 = and i32 %19, -8372225, !dbg !1246
  %21 = load i32* %3, align 4, !dbg !1246
  %22 = add nsw i32 %21, 1, !dbg !1246
  %23 = shl i32 %22, 14, !dbg !1246
  %24 = and i32 %23, 8372224, !dbg !1246
  %25 = or i32 %20, %24, !dbg !1246
  %26 = load %struct.expdesc** %2, align 4, !dbg !1246
  %27 = getelementptr inbounds %struct.expdesc* %26, i32 0, i32 1, !dbg !1246
  %28 = bitcast %union.anon.4* %27 to i32*, !dbg !1246
  %29 = load i32* %28, align 4, !dbg !1246
  %30 = load %struct.FuncState** %1, align 4, !dbg !1246
  %31 = getelementptr inbounds %struct.FuncState* %30, i32 0, i32 0, !dbg !1246
  %32 = load %struct.Proto** %31, align 4, !dbg !1246
  %33 = getelementptr inbounds %struct.Proto* %32, i32 0, i32 15, !dbg !1246
  %34 = load i32** %33, align 4, !dbg !1246
  %35 = getelementptr inbounds i32* %34, i32 %29, !dbg !1246
  store i32 %25, i32* %35, align 4, !dbg !1246
  br label %75, !dbg !1248

; <label>:36                                      ; preds = %0
  %37 = load %struct.expdesc** %2, align 4, !dbg !1249
  %38 = getelementptr inbounds %struct.expdesc* %37, i32 0, i32 0, !dbg !1249
  %39 = load i32* %38, align 4, !dbg !1249
  %40 = icmp eq i32 %39, 14, !dbg !1249
  br i1 %40, label %41, label %73, !dbg !1249

; <label>:41                                      ; preds = %36
  call void @llvm.dbg.declare(metadata !{i32** %pc}, metadata !1251), !dbg !1253
  %42 = load %struct.expdesc** %2, align 4, !dbg !1254
  %43 = getelementptr inbounds %struct.expdesc* %42, i32 0, i32 1, !dbg !1254
  %44 = bitcast %union.anon.4* %43 to i32*, !dbg !1254
  %45 = load i32* %44, align 4, !dbg !1254
  %46 = load %struct.FuncState** %1, align 4, !dbg !1254
  %47 = getelementptr inbounds %struct.FuncState* %46, i32 0, i32 0, !dbg !1254
  %48 = load %struct.Proto** %47, align 4, !dbg !1254
  %49 = getelementptr inbounds %struct.Proto* %48, i32 0, i32 15, !dbg !1254
  %50 = load i32** %49, align 4, !dbg !1254
  %51 = getelementptr inbounds i32* %50, i32 %45, !dbg !1254
  store i32* %51, i32** %pc, align 4, !dbg !1254
  %52 = load i32** %pc, align 4, !dbg !1255
  %53 = load i32* %52, align 4, !dbg !1255
  %54 = and i32 %53, 8388607, !dbg !1255
  %55 = load i32* %3, align 4, !dbg !1255
  %56 = add nsw i32 %55, 1, !dbg !1255
  %57 = shl i32 %56, 23, !dbg !1255
  %58 = and i32 %57, -8388608, !dbg !1255
  %59 = or i32 %54, %58, !dbg !1255
  %60 = load i32** %pc, align 4, !dbg !1255
  store i32 %59, i32* %60, align 4, !dbg !1255
  %61 = load i32** %pc, align 4, !dbg !1256
  %62 = load i32* %61, align 4, !dbg !1256
  %63 = and i32 %62, -16321, !dbg !1256
  %64 = load %struct.FuncState** %1, align 4, !dbg !1256
  %65 = getelementptr inbounds %struct.FuncState* %64, i32 0, i32 13, !dbg !1256
  %66 = load i8* %65, align 1, !dbg !1256
  %67 = zext i8 %66 to i32, !dbg !1256
  %68 = shl i32 %67, 6, !dbg !1256
  %69 = and i32 %68, 16320, !dbg !1256
  %70 = or i32 %63, %69, !dbg !1256
  %71 = load i32** %pc, align 4, !dbg !1256
  store i32 %70, i32* %71, align 4, !dbg !1256
  %72 = load %struct.FuncState** %1, align 4, !dbg !1257
  call void @luaK_reserveregs(%struct.FuncState* %72, i32 1), !dbg !1257
  br label %74, !dbg !1258

; <label>:73                                      ; preds = %36
  br label %74

; <label>:74                                      ; preds = %73, %41
  br label %75

; <label>:75                                      ; preds = %74, %8
  ret void, !dbg !1259
}

; Function Attrs: nounwind
define hidden void @luaK_setoneret(%struct.FuncState* %fs, %struct.expdesc* %e) #0 {
  %1 = alloca %struct.FuncState*, align 4
  %2 = alloca %struct.expdesc*, align 4
  store %struct.FuncState* %fs, %struct.FuncState** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.FuncState** %1}, metadata !1260), !dbg !1261
  store %struct.expdesc* %e, %struct.expdesc** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.expdesc** %2}, metadata !1262), !dbg !1263
  %3 = load %struct.expdesc** %2, align 4, !dbg !1264
  %4 = getelementptr inbounds %struct.expdesc* %3, i32 0, i32 0, !dbg !1264
  %5 = load i32* %4, align 4, !dbg !1264
  %6 = icmp eq i32 %5, 13, !dbg !1264
  br i1 %6, label %7, label %26, !dbg !1264

; <label>:7                                       ; preds = %0
  %8 = load %struct.expdesc** %2, align 4, !dbg !1266
  %9 = getelementptr inbounds %struct.expdesc* %8, i32 0, i32 0, !dbg !1266
  store i32 7, i32* %9, align 4, !dbg !1266
  %10 = load %struct.expdesc** %2, align 4, !dbg !1268
  %11 = getelementptr inbounds %struct.expdesc* %10, i32 0, i32 1, !dbg !1268
  %12 = bitcast %union.anon.4* %11 to i32*, !dbg !1268
  %13 = load i32* %12, align 4, !dbg !1268
  %14 = load %struct.FuncState** %1, align 4, !dbg !1268
  %15 = getelementptr inbounds %struct.FuncState* %14, i32 0, i32 0, !dbg !1268
  %16 = load %struct.Proto** %15, align 4, !dbg !1268
  %17 = getelementptr inbounds %struct.Proto* %16, i32 0, i32 15, !dbg !1268
  %18 = load i32** %17, align 4, !dbg !1268
  %19 = getelementptr inbounds i32* %18, i32 %13, !dbg !1268
  %20 = load i32* %19, align 4, !dbg !1268
  %21 = lshr i32 %20, 6, !dbg !1268
  %22 = and i32 %21, 255, !dbg !1268
  %23 = load %struct.expdesc** %2, align 4, !dbg !1268
  %24 = getelementptr inbounds %struct.expdesc* %23, i32 0, i32 1, !dbg !1268
  %25 = bitcast %union.anon.4* %24 to i32*, !dbg !1268
  store i32 %22, i32* %25, align 4, !dbg !1268
  br label %58, !dbg !1269

; <label>:26                                      ; preds = %0
  %27 = load %struct.expdesc** %2, align 4, !dbg !1270
  %28 = getelementptr inbounds %struct.expdesc* %27, i32 0, i32 0, !dbg !1270
  %29 = load i32* %28, align 4, !dbg !1270
  %30 = icmp eq i32 %29, 14, !dbg !1270
  br i1 %30, label %31, label %57, !dbg !1270

; <label>:31                                      ; preds = %26
  %32 = load %struct.expdesc** %2, align 4, !dbg !1272
  %33 = getelementptr inbounds %struct.expdesc* %32, i32 0, i32 1, !dbg !1272
  %34 = bitcast %union.anon.4* %33 to i32*, !dbg !1272
  %35 = load i32* %34, align 4, !dbg !1272
  %36 = load %struct.FuncState** %1, align 4, !dbg !1272
  %37 = getelementptr inbounds %struct.FuncState* %36, i32 0, i32 0, !dbg !1272
  %38 = load %struct.Proto** %37, align 4, !dbg !1272
  %39 = getelementptr inbounds %struct.Proto* %38, i32 0, i32 15, !dbg !1272
  %40 = load i32** %39, align 4, !dbg !1272
  %41 = getelementptr inbounds i32* %40, i32 %35, !dbg !1272
  %42 = load i32* %41, align 4, !dbg !1272
  %43 = and i32 %42, 8388607, !dbg !1272
  %44 = or i32 %43, 16777216, !dbg !1272
  %45 = load %struct.expdesc** %2, align 4, !dbg !1272
  %46 = getelementptr inbounds %struct.expdesc* %45, i32 0, i32 1, !dbg !1272
  %47 = bitcast %union.anon.4* %46 to i32*, !dbg !1272
  %48 = load i32* %47, align 4, !dbg !1272
  %49 = load %struct.FuncState** %1, align 4, !dbg !1272
  %50 = getelementptr inbounds %struct.FuncState* %49, i32 0, i32 0, !dbg !1272
  %51 = load %struct.Proto** %50, align 4, !dbg !1272
  %52 = getelementptr inbounds %struct.Proto* %51, i32 0, i32 15, !dbg !1272
  %53 = load i32** %52, align 4, !dbg !1272
  %54 = getelementptr inbounds i32* %53, i32 %48, !dbg !1272
  store i32 %44, i32* %54, align 4, !dbg !1272
  %55 = load %struct.expdesc** %2, align 4, !dbg !1274
  %56 = getelementptr inbounds %struct.expdesc* %55, i32 0, i32 0, !dbg !1274
  store i32 12, i32* %56, align 4, !dbg !1274
  br label %57, !dbg !1275

; <label>:57                                      ; preds = %31, %26
  br label %58

; <label>:58                                      ; preds = %57, %7
  ret void, !dbg !1276
}

; Function Attrs: nounwind
define hidden void @luaK_dischargevars(%struct.FuncState* %fs, %struct.expdesc* %e) #0 {
  %1 = alloca %struct.FuncState*, align 4
  %2 = alloca %struct.expdesc*, align 4
  %op = alloca i32, align 4
  store %struct.FuncState* %fs, %struct.FuncState** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.FuncState** %1}, metadata !1277), !dbg !1278
  store %struct.expdesc* %e, %struct.expdesc** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.expdesc** %2}, metadata !1279), !dbg !1280
  %3 = load %struct.expdesc** %2, align 4, !dbg !1281
  %4 = getelementptr inbounds %struct.expdesc* %3, i32 0, i32 0, !dbg !1281
  %5 = load i32* %4, align 4, !dbg !1281
  switch i32 %5, label %69 [
    i32 8, label %6
    i32 9, label %9
    i32 10, label %21
    i32 14, label %66
    i32 13, label %66
  ], !dbg !1281

; <label>:6                                       ; preds = %0
  %7 = load %struct.expdesc** %2, align 4, !dbg !1282
  %8 = getelementptr inbounds %struct.expdesc* %7, i32 0, i32 0, !dbg !1282
  store i32 7, i32* %8, align 4, !dbg !1282
  br label %70, !dbg !1285

; <label>:9                                       ; preds = %0
  %10 = load %struct.FuncState** %1, align 4, !dbg !1286
  %11 = load %struct.expdesc** %2, align 4, !dbg !1286
  %12 = getelementptr inbounds %struct.expdesc* %11, i32 0, i32 1, !dbg !1286
  %13 = bitcast %union.anon.4* %12 to i32*, !dbg !1286
  %14 = load i32* %13, align 4, !dbg !1286
  %15 = call i32 @luaK_codeABC(%struct.FuncState* %10, i32 5, i32 0, i32 %14, i32 0), !dbg !1286
  %16 = load %struct.expdesc** %2, align 4, !dbg !1286
  %17 = getelementptr inbounds %struct.expdesc* %16, i32 0, i32 1, !dbg !1286
  %18 = bitcast %union.anon.4* %17 to i32*, !dbg !1286
  store i32 %15, i32* %18, align 4, !dbg !1286
  %19 = load %struct.expdesc** %2, align 4, !dbg !1288
  %20 = getelementptr inbounds %struct.expdesc* %19, i32 0, i32 0, !dbg !1288
  store i32 12, i32* %20, align 4, !dbg !1288
  br label %70, !dbg !1289

; <label>:21                                      ; preds = %0
  call void @llvm.dbg.declare(metadata !{i32* %op}, metadata !1290), !dbg !1292
  %22 = load %struct.FuncState** %1, align 4, !dbg !1293
  %23 = load %struct.expdesc** %2, align 4, !dbg !1293
  %24 = getelementptr inbounds %struct.expdesc* %23, i32 0, i32 1, !dbg !1293
  %25 = bitcast %union.anon.4* %24 to %struct.anon.5*, !dbg !1293
  %26 = getelementptr inbounds %struct.anon.5* %25, i32 0, i32 0, !dbg !1293
  %27 = load i16* %26, align 2, !dbg !1293
  %28 = sext i16 %27 to i32, !dbg !1293
  call void @freereg(%struct.FuncState* %22, i32 %28), !dbg !1293
  %29 = load %struct.expdesc** %2, align 4, !dbg !1294
  %30 = getelementptr inbounds %struct.expdesc* %29, i32 0, i32 1, !dbg !1294
  %31 = bitcast %union.anon.4* %30 to %struct.anon.5*, !dbg !1294
  %32 = getelementptr inbounds %struct.anon.5* %31, i32 0, i32 2, !dbg !1294
  %33 = load i8* %32, align 1, !dbg !1294
  %34 = zext i8 %33 to i32, !dbg !1294
  %35 = icmp eq i32 %34, 8, !dbg !1294
  br i1 %35, label %36, label %44, !dbg !1294

; <label>:36                                      ; preds = %21
  %37 = load %struct.FuncState** %1, align 4, !dbg !1296
  %38 = load %struct.expdesc** %2, align 4, !dbg !1296
  %39 = getelementptr inbounds %struct.expdesc* %38, i32 0, i32 1, !dbg !1296
  %40 = bitcast %union.anon.4* %39 to %struct.anon.5*, !dbg !1296
  %41 = getelementptr inbounds %struct.anon.5* %40, i32 0, i32 1, !dbg !1296
  %42 = load i8* %41, align 1, !dbg !1296
  %43 = zext i8 %42 to i32, !dbg !1296
  call void @freereg(%struct.FuncState* %37, i32 %43), !dbg !1296
  store i32 7, i32* %op, align 4, !dbg !1298
  br label %45, !dbg !1299

; <label>:44                                      ; preds = %21
  store i32 6, i32* %op, align 4, !dbg !1300
  br label %45

; <label>:45                                      ; preds = %44, %36
  %46 = load %struct.FuncState** %1, align 4, !dbg !1302
  %47 = load i32* %op, align 4, !dbg !1302
  %48 = load %struct.expdesc** %2, align 4, !dbg !1302
  %49 = getelementptr inbounds %struct.expdesc* %48, i32 0, i32 1, !dbg !1302
  %50 = bitcast %union.anon.4* %49 to %struct.anon.5*, !dbg !1302
  %51 = getelementptr inbounds %struct.anon.5* %50, i32 0, i32 1, !dbg !1302
  %52 = load i8* %51, align 1, !dbg !1302
  %53 = zext i8 %52 to i32, !dbg !1302
  %54 = load %struct.expdesc** %2, align 4, !dbg !1302
  %55 = getelementptr inbounds %struct.expdesc* %54, i32 0, i32 1, !dbg !1302
  %56 = bitcast %union.anon.4* %55 to %struct.anon.5*, !dbg !1302
  %57 = getelementptr inbounds %struct.anon.5* %56, i32 0, i32 0, !dbg !1302
  %58 = load i16* %57, align 2, !dbg !1302
  %59 = sext i16 %58 to i32, !dbg !1302
  %60 = call i32 @luaK_codeABC(%struct.FuncState* %46, i32 %47, i32 0, i32 %53, i32 %59), !dbg !1302
  %61 = load %struct.expdesc** %2, align 4, !dbg !1302
  %62 = getelementptr inbounds %struct.expdesc* %61, i32 0, i32 1, !dbg !1302
  %63 = bitcast %union.anon.4* %62 to i32*, !dbg !1302
  store i32 %60, i32* %63, align 4, !dbg !1302
  %64 = load %struct.expdesc** %2, align 4, !dbg !1303
  %65 = getelementptr inbounds %struct.expdesc* %64, i32 0, i32 0, !dbg !1303
  store i32 12, i32* %65, align 4, !dbg !1303
  br label %70, !dbg !1304

; <label>:66                                      ; preds = %0, %0
  %67 = load %struct.FuncState** %1, align 4, !dbg !1305
  %68 = load %struct.expdesc** %2, align 4, !dbg !1305
  call void @luaK_setoneret(%struct.FuncState* %67, %struct.expdesc* %68), !dbg !1305
  br label %70, !dbg !1307

; <label>:69                                      ; preds = %0
  br label %70, !dbg !1308

; <label>:70                                      ; preds = %69, %66, %45, %9, %6
  ret void, !dbg !1309
}

; Function Attrs: nounwind
define internal void @freereg(%struct.FuncState* %fs, i32 %reg) #0 {
  %1 = alloca %struct.FuncState*, align 4
  %2 = alloca i32, align 4
  store %struct.FuncState* %fs, %struct.FuncState** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.FuncState** %1}, metadata !1310), !dbg !1311
  store i32 %reg, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !1312), !dbg !1313
  %3 = load i32* %2, align 4, !dbg !1314
  %4 = and i32 %3, 256, !dbg !1314
  %5 = icmp ne i32 %4, 0, !dbg !1314
  br i1 %5, label %18, label %6, !dbg !1314

; <label>:6                                       ; preds = %0
  %7 = load i32* %2, align 4, !dbg !1316
  %8 = load %struct.FuncState** %1, align 4, !dbg !1316
  %9 = getelementptr inbounds %struct.FuncState* %8, i32 0, i32 11, !dbg !1316
  %10 = load i8* %9, align 1, !dbg !1316
  %11 = zext i8 %10 to i32, !dbg !1316
  %12 = icmp sge i32 %7, %11, !dbg !1316
  br i1 %12, label %13, label %18, !dbg !1316

; <label>:13                                      ; preds = %6
  %14 = load %struct.FuncState** %1, align 4, !dbg !1318
  %15 = getelementptr inbounds %struct.FuncState* %14, i32 0, i32 13, !dbg !1318
  %16 = load i8* %15, align 1, !dbg !1318
  %17 = add i8 %16, -1, !dbg !1318
  store i8 %17, i8* %15, align 1, !dbg !1318
  br label %18, !dbg !1320

; <label>:18                                      ; preds = %13, %6, %0
  ret void, !dbg !1321
}

; Function Attrs: nounwind
define hidden void @luaK_exp2nextreg(%struct.FuncState* %fs, %struct.expdesc* %e) #0 {
  %1 = alloca %struct.FuncState*, align 4
  %2 = alloca %struct.expdesc*, align 4
  store %struct.FuncState* %fs, %struct.FuncState** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.FuncState** %1}, metadata !1322), !dbg !1323
  store %struct.expdesc* %e, %struct.expdesc** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.expdesc** %2}, metadata !1324), !dbg !1325
  %3 = load %struct.FuncState** %1, align 4, !dbg !1326
  %4 = load %struct.expdesc** %2, align 4, !dbg !1326
  call void @luaK_dischargevars(%struct.FuncState* %3, %struct.expdesc* %4), !dbg !1326
  %5 = load %struct.FuncState** %1, align 4, !dbg !1327
  %6 = load %struct.expdesc** %2, align 4, !dbg !1327
  call void @freeexp(%struct.FuncState* %5, %struct.expdesc* %6), !dbg !1327
  %7 = load %struct.FuncState** %1, align 4, !dbg !1328
  call void @luaK_reserveregs(%struct.FuncState* %7, i32 1), !dbg !1328
  %8 = load %struct.FuncState** %1, align 4, !dbg !1329
  %9 = load %struct.expdesc** %2, align 4, !dbg !1329
  %10 = load %struct.FuncState** %1, align 4, !dbg !1329
  %11 = getelementptr inbounds %struct.FuncState* %10, i32 0, i32 13, !dbg !1329
  %12 = load i8* %11, align 1, !dbg !1329
  %13 = zext i8 %12 to i32, !dbg !1329
  %14 = sub nsw i32 %13, 1, !dbg !1329
  call void @exp2reg(%struct.FuncState* %8, %struct.expdesc* %9, i32 %14), !dbg !1329
  ret void, !dbg !1330
}

; Function Attrs: nounwind
define internal void @freeexp(%struct.FuncState* %fs, %struct.expdesc* %e) #0 {
  %1 = alloca %struct.FuncState*, align 4
  %2 = alloca %struct.expdesc*, align 4
  store %struct.FuncState* %fs, %struct.FuncState** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.FuncState** %1}, metadata !1331), !dbg !1332
  store %struct.expdesc* %e, %struct.expdesc** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.expdesc** %2}, metadata !1333), !dbg !1334
  %3 = load %struct.expdesc** %2, align 4, !dbg !1335
  %4 = getelementptr inbounds %struct.expdesc* %3, i32 0, i32 0, !dbg !1335
  %5 = load i32* %4, align 4, !dbg !1335
  %6 = icmp eq i32 %5, 7, !dbg !1335
  br i1 %6, label %7, label %13, !dbg !1335

; <label>:7                                       ; preds = %0
  %8 = load %struct.FuncState** %1, align 4, !dbg !1337
  %9 = load %struct.expdesc** %2, align 4, !dbg !1337
  %10 = getelementptr inbounds %struct.expdesc* %9, i32 0, i32 1, !dbg !1337
  %11 = bitcast %union.anon.4* %10 to i32*, !dbg !1337
  %12 = load i32* %11, align 4, !dbg !1337
  call void @freereg(%struct.FuncState* %8, i32 %12), !dbg !1337
  br label %13, !dbg !1337

; <label>:13                                      ; preds = %7, %0
  ret void, !dbg !1338
}

; Function Attrs: nounwind
define internal void @exp2reg(%struct.FuncState* %fs, %struct.expdesc* %e, i32 %reg) #0 {
  %1 = alloca %struct.FuncState*, align 4
  %2 = alloca %struct.expdesc*, align 4
  %3 = alloca i32, align 4
  %final = alloca i32, align 4
  %p_f = alloca i32, align 4
  %p_t = alloca i32, align 4
  %fj = alloca i32, align 4
  store %struct.FuncState* %fs, %struct.FuncState** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.FuncState** %1}, metadata !1339), !dbg !1340
  store %struct.expdesc* %e, %struct.expdesc** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.expdesc** %2}, metadata !1341), !dbg !1342
  store i32 %reg, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !1343), !dbg !1344
  %4 = load %struct.FuncState** %1, align 4, !dbg !1345
  %5 = load %struct.expdesc** %2, align 4, !dbg !1345
  %6 = load i32* %3, align 4, !dbg !1345
  call void @discharge2reg(%struct.FuncState* %4, %struct.expdesc* %5, i32 %6), !dbg !1345
  %7 = load %struct.expdesc** %2, align 4, !dbg !1346
  %8 = getelementptr inbounds %struct.expdesc* %7, i32 0, i32 0, !dbg !1346
  %9 = load i32* %8, align 4, !dbg !1346
  %10 = icmp eq i32 %9, 11, !dbg !1346
  br i1 %10, label %11, label %19, !dbg !1346

; <label>:11                                      ; preds = %0
  %12 = load %struct.FuncState** %1, align 4, !dbg !1348
  %13 = load %struct.expdesc** %2, align 4, !dbg !1348
  %14 = getelementptr inbounds %struct.expdesc* %13, i32 0, i32 2, !dbg !1348
  %15 = load %struct.expdesc** %2, align 4, !dbg !1348
  %16 = getelementptr inbounds %struct.expdesc* %15, i32 0, i32 1, !dbg !1348
  %17 = bitcast %union.anon.4* %16 to i32*, !dbg !1348
  %18 = load i32* %17, align 4, !dbg !1348
  call void @luaK_concat(%struct.FuncState* %12, i32* %14, i32 %18), !dbg !1348
  br label %19, !dbg !1348

; <label>:19                                      ; preds = %11, %0
  %20 = load %struct.expdesc** %2, align 4, !dbg !1349
  %21 = getelementptr inbounds %struct.expdesc* %20, i32 0, i32 2, !dbg !1349
  %22 = load i32* %21, align 4, !dbg !1349
  %23 = load %struct.expdesc** %2, align 4, !dbg !1349
  %24 = getelementptr inbounds %struct.expdesc* %23, i32 0, i32 3, !dbg !1349
  %25 = load i32* %24, align 4, !dbg !1349
  %26 = icmp ne i32 %22, %25, !dbg !1349
  br i1 %26, label %27, label %77, !dbg !1349

; <label>:27                                      ; preds = %19
  call void @llvm.dbg.declare(metadata !{i32* %final}, metadata !1351), !dbg !1353
  call void @llvm.dbg.declare(metadata !{i32* %p_f}, metadata !1354), !dbg !1355
  store i32 -1, i32* %p_f, align 4, !dbg !1356
  call void @llvm.dbg.declare(metadata !{i32* %p_t}, metadata !1357), !dbg !1358
  store i32 -1, i32* %p_t, align 4, !dbg !1359
  %28 = load %struct.FuncState** %1, align 4, !dbg !1360
  %29 = load %struct.expdesc** %2, align 4, !dbg !1360
  %30 = getelementptr inbounds %struct.expdesc* %29, i32 0, i32 2, !dbg !1360
  %31 = load i32* %30, align 4, !dbg !1360
  %32 = call i32 @need_value(%struct.FuncState* %28, i32 %31), !dbg !1360
  %33 = icmp ne i32 %32, 0, !dbg !1360
  br i1 %33, label %41, label %34, !dbg !1360

; <label>:34                                      ; preds = %27
  %35 = load %struct.FuncState** %1, align 4, !dbg !1362
  %36 = load %struct.expdesc** %2, align 4, !dbg !1362
  %37 = getelementptr inbounds %struct.expdesc* %36, i32 0, i32 3, !dbg !1362
  %38 = load i32* %37, align 4, !dbg !1362
  %39 = call i32 @need_value(%struct.FuncState* %35, i32 %38), !dbg !1362
  %40 = icmp ne i32 %39, 0, !dbg !1362
  br i1 %40, label %41, label %60, !dbg !1362

; <label>:41                                      ; preds = %34, %27
  call void @llvm.dbg.declare(metadata !{i32* %fj}, metadata !1364), !dbg !1366
  %42 = load %struct.expdesc** %2, align 4, !dbg !1367
  %43 = getelementptr inbounds %struct.expdesc* %42, i32 0, i32 0, !dbg !1367
  %44 = load i32* %43, align 4, !dbg !1367
  %45 = icmp eq i32 %44, 11, !dbg !1367
  br i1 %45, label %46, label %47, !dbg !1367

; <label>:46                                      ; preds = %41
  br label %50, !dbg !1368

; <label>:47                                      ; preds = %41
  %48 = load %struct.FuncState** %1, align 4, !dbg !1370
  %49 = call i32 @luaK_jump(%struct.FuncState* %48), !dbg !1370
  br label %50, !dbg !1370

; <label>:50                                      ; preds = %47, %46
  %51 = phi i32 [ -1, %46 ], [ %49, %47 ], !dbg !1372
  store i32 %51, i32* %fj, align 4, !dbg !1373
  %52 = load %struct.FuncState** %1, align 4, !dbg !1376
  %53 = load i32* %3, align 4, !dbg !1376
  %54 = call i32 @code_loadbool(%struct.FuncState* %52, i32 %53, i32 0, i32 1), !dbg !1376
  store i32 %54, i32* %p_f, align 4, !dbg !1376
  %55 = load %struct.FuncState** %1, align 4, !dbg !1377
  %56 = load i32* %3, align 4, !dbg !1377
  %57 = call i32 @code_loadbool(%struct.FuncState* %55, i32 %56, i32 1, i32 0), !dbg !1377
  store i32 %57, i32* %p_t, align 4, !dbg !1377
  %58 = load %struct.FuncState** %1, align 4, !dbg !1378
  %59 = load i32* %fj, align 4, !dbg !1378
  call void @luaK_patchtohere(%struct.FuncState* %58, i32 %59), !dbg !1378
  br label %60, !dbg !1379

; <label>:60                                      ; preds = %50, %34
  %61 = load %struct.FuncState** %1, align 4, !dbg !1380
  %62 = call i32 @luaK_getlabel(%struct.FuncState* %61), !dbg !1380
  store i32 %62, i32* %final, align 4, !dbg !1380
  %63 = load %struct.FuncState** %1, align 4, !dbg !1381
  %64 = load %struct.expdesc** %2, align 4, !dbg !1381
  %65 = getelementptr inbounds %struct.expdesc* %64, i32 0, i32 3, !dbg !1381
  %66 = load i32* %65, align 4, !dbg !1381
  %67 = load i32* %final, align 4, !dbg !1381
  %68 = load i32* %3, align 4, !dbg !1381
  %69 = load i32* %p_f, align 4, !dbg !1381
  call void @patchlistaux(%struct.FuncState* %63, i32 %66, i32 %67, i32 %68, i32 %69), !dbg !1381
  %70 = load %struct.FuncState** %1, align 4, !dbg !1382
  %71 = load %struct.expdesc** %2, align 4, !dbg !1382
  %72 = getelementptr inbounds %struct.expdesc* %71, i32 0, i32 2, !dbg !1382
  %73 = load i32* %72, align 4, !dbg !1382
  %74 = load i32* %final, align 4, !dbg !1382
  %75 = load i32* %3, align 4, !dbg !1382
  %76 = load i32* %p_t, align 4, !dbg !1382
  call void @patchlistaux(%struct.FuncState* %70, i32 %73, i32 %74, i32 %75, i32 %76), !dbg !1382
  br label %77, !dbg !1383

; <label>:77                                      ; preds = %60, %19
  %78 = load %struct.expdesc** %2, align 4, !dbg !1384
  %79 = getelementptr inbounds %struct.expdesc* %78, i32 0, i32 2, !dbg !1384
  store i32 -1, i32* %79, align 4, !dbg !1384
  %80 = load %struct.expdesc** %2, align 4, !dbg !1384
  %81 = getelementptr inbounds %struct.expdesc* %80, i32 0, i32 3, !dbg !1384
  store i32 -1, i32* %81, align 4, !dbg !1384
  %82 = load i32* %3, align 4, !dbg !1385
  %83 = load %struct.expdesc** %2, align 4, !dbg !1385
  %84 = getelementptr inbounds %struct.expdesc* %83, i32 0, i32 1, !dbg !1385
  %85 = bitcast %union.anon.4* %84 to i32*, !dbg !1385
  store i32 %82, i32* %85, align 4, !dbg !1385
  %86 = load %struct.expdesc** %2, align 4, !dbg !1386
  %87 = getelementptr inbounds %struct.expdesc* %86, i32 0, i32 0, !dbg !1386
  store i32 7, i32* %87, align 4, !dbg !1386
  ret void, !dbg !1387
}

; Function Attrs: nounwind
define hidden i32 @luaK_exp2anyreg(%struct.FuncState* %fs, %struct.expdesc* %e) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.FuncState*, align 4
  %3 = alloca %struct.expdesc*, align 4
  store %struct.FuncState* %fs, %struct.FuncState** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.FuncState** %2}, metadata !1388), !dbg !1389
  store %struct.expdesc* %e, %struct.expdesc** %3, align 4
  call void @llvm.dbg.declare(metadata !{%struct.expdesc** %3}, metadata !1390), !dbg !1391
  %4 = load %struct.FuncState** %2, align 4, !dbg !1392
  %5 = load %struct.expdesc** %3, align 4, !dbg !1392
  call void @luaK_dischargevars(%struct.FuncState* %4, %struct.expdesc* %5), !dbg !1392
  %6 = load %struct.expdesc** %3, align 4, !dbg !1393
  %7 = getelementptr inbounds %struct.expdesc* %6, i32 0, i32 0, !dbg !1393
  %8 = load i32* %7, align 4, !dbg !1393
  %9 = icmp eq i32 %8, 7, !dbg !1393
  br i1 %9, label %10, label %45, !dbg !1393

; <label>:10                                      ; preds = %0
  %11 = load %struct.expdesc** %3, align 4, !dbg !1395
  %12 = getelementptr inbounds %struct.expdesc* %11, i32 0, i32 2, !dbg !1395
  %13 = load i32* %12, align 4, !dbg !1395
  %14 = load %struct.expdesc** %3, align 4, !dbg !1395
  %15 = getelementptr inbounds %struct.expdesc* %14, i32 0, i32 3, !dbg !1395
  %16 = load i32* %15, align 4, !dbg !1395
  %17 = icmp ne i32 %13, %16, !dbg !1395
  br i1 %17, label %23, label %18, !dbg !1395

; <label>:18                                      ; preds = %10
  %19 = load %struct.expdesc** %3, align 4, !dbg !1398
  %20 = getelementptr inbounds %struct.expdesc* %19, i32 0, i32 1, !dbg !1398
  %21 = bitcast %union.anon.4* %20 to i32*, !dbg !1398
  %22 = load i32* %21, align 4, !dbg !1398
  store i32 %22, i32* %1, !dbg !1398
  br label %52, !dbg !1398

; <label>:23                                      ; preds = %10
  %24 = load %struct.expdesc** %3, align 4, !dbg !1399
  %25 = getelementptr inbounds %struct.expdesc* %24, i32 0, i32 1, !dbg !1399
  %26 = bitcast %union.anon.4* %25 to i32*, !dbg !1399
  %27 = load i32* %26, align 4, !dbg !1399
  %28 = load %struct.FuncState** %2, align 4, !dbg !1399
  %29 = getelementptr inbounds %struct.FuncState* %28, i32 0, i32 11, !dbg !1399
  %30 = load i8* %29, align 1, !dbg !1399
  %31 = zext i8 %30 to i32, !dbg !1399
  %32 = icmp sge i32 %27, %31, !dbg !1399
  br i1 %32, label %33, label %44, !dbg !1399

; <label>:33                                      ; preds = %23
  %34 = load %struct.FuncState** %2, align 4, !dbg !1401
  %35 = load %struct.expdesc** %3, align 4, !dbg !1401
  %36 = load %struct.expdesc** %3, align 4, !dbg !1401
  %37 = getelementptr inbounds %struct.expdesc* %36, i32 0, i32 1, !dbg !1401
  %38 = bitcast %union.anon.4* %37 to i32*, !dbg !1401
  %39 = load i32* %38, align 4, !dbg !1401
  call void @exp2reg(%struct.FuncState* %34, %struct.expdesc* %35, i32 %39), !dbg !1401
  %40 = load %struct.expdesc** %3, align 4, !dbg !1403
  %41 = getelementptr inbounds %struct.expdesc* %40, i32 0, i32 1, !dbg !1403
  %42 = bitcast %union.anon.4* %41 to i32*, !dbg !1403
  %43 = load i32* %42, align 4, !dbg !1403
  store i32 %43, i32* %1, !dbg !1403
  br label %52, !dbg !1403

; <label>:44                                      ; preds = %23
  br label %45, !dbg !1404

; <label>:45                                      ; preds = %44, %0
  %46 = load %struct.FuncState** %2, align 4, !dbg !1405
  %47 = load %struct.expdesc** %3, align 4, !dbg !1405
  call void @luaK_exp2nextreg(%struct.FuncState* %46, %struct.expdesc* %47), !dbg !1405
  %48 = load %struct.expdesc** %3, align 4, !dbg !1406
  %49 = getelementptr inbounds %struct.expdesc* %48, i32 0, i32 1, !dbg !1406
  %50 = bitcast %union.anon.4* %49 to i32*, !dbg !1406
  %51 = load i32* %50, align 4, !dbg !1406
  store i32 %51, i32* %1, !dbg !1406
  br label %52, !dbg !1406

; <label>:52                                      ; preds = %45, %33, %18
  %53 = load i32* %1, !dbg !1407
  ret i32 %53, !dbg !1407
}

; Function Attrs: nounwind
define hidden void @luaK_exp2anyregup(%struct.FuncState* %fs, %struct.expdesc* %e) #0 {
  %1 = alloca %struct.FuncState*, align 4
  %2 = alloca %struct.expdesc*, align 4
  store %struct.FuncState* %fs, %struct.FuncState** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.FuncState** %1}, metadata !1408), !dbg !1409
  store %struct.expdesc* %e, %struct.expdesc** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.expdesc** %2}, metadata !1410), !dbg !1411
  %3 = load %struct.expdesc** %2, align 4, !dbg !1412
  %4 = getelementptr inbounds %struct.expdesc* %3, i32 0, i32 0, !dbg !1412
  %5 = load i32* %4, align 4, !dbg !1412
  %6 = icmp ne i32 %5, 9, !dbg !1412
  br i1 %6, label %15, label %7, !dbg !1412

; <label>:7                                       ; preds = %0
  %8 = load %struct.expdesc** %2, align 4, !dbg !1414
  %9 = getelementptr inbounds %struct.expdesc* %8, i32 0, i32 2, !dbg !1414
  %10 = load i32* %9, align 4, !dbg !1414
  %11 = load %struct.expdesc** %2, align 4, !dbg !1414
  %12 = getelementptr inbounds %struct.expdesc* %11, i32 0, i32 3, !dbg !1414
  %13 = load i32* %12, align 4, !dbg !1414
  %14 = icmp ne i32 %10, %13, !dbg !1414
  br i1 %14, label %15, label %19, !dbg !1414

; <label>:15                                      ; preds = %7, %0
  %16 = load %struct.FuncState** %1, align 4, !dbg !1416
  %17 = load %struct.expdesc** %2, align 4, !dbg !1416
  %18 = call i32 @luaK_exp2anyreg(%struct.FuncState* %16, %struct.expdesc* %17), !dbg !1416
  br label %19, !dbg !1416

; <label>:19                                      ; preds = %15, %7
  ret void, !dbg !1417
}

; Function Attrs: nounwind
define hidden void @luaK_exp2val(%struct.FuncState* %fs, %struct.expdesc* %e) #0 {
  %1 = alloca %struct.FuncState*, align 4
  %2 = alloca %struct.expdesc*, align 4
  store %struct.FuncState* %fs, %struct.FuncState** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.FuncState** %1}, metadata !1418), !dbg !1419
  store %struct.expdesc* %e, %struct.expdesc** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.expdesc** %2}, metadata !1420), !dbg !1421
  %3 = load %struct.expdesc** %2, align 4, !dbg !1422
  %4 = getelementptr inbounds %struct.expdesc* %3, i32 0, i32 2, !dbg !1422
  %5 = load i32* %4, align 4, !dbg !1422
  %6 = load %struct.expdesc** %2, align 4, !dbg !1422
  %7 = getelementptr inbounds %struct.expdesc* %6, i32 0, i32 3, !dbg !1422
  %8 = load i32* %7, align 4, !dbg !1422
  %9 = icmp ne i32 %5, %8, !dbg !1422
  br i1 %9, label %10, label %14, !dbg !1422

; <label>:10                                      ; preds = %0
  %11 = load %struct.FuncState** %1, align 4, !dbg !1424
  %12 = load %struct.expdesc** %2, align 4, !dbg !1424
  %13 = call i32 @luaK_exp2anyreg(%struct.FuncState* %11, %struct.expdesc* %12), !dbg !1424
  br label %17, !dbg !1424

; <label>:14                                      ; preds = %0
  %15 = load %struct.FuncState** %1, align 4, !dbg !1425
  %16 = load %struct.expdesc** %2, align 4, !dbg !1425
  call void @luaK_dischargevars(%struct.FuncState* %15, %struct.expdesc* %16), !dbg !1425
  br label %17

; <label>:17                                      ; preds = %14, %10
  ret void, !dbg !1426
}

; Function Attrs: nounwind
define hidden i32 @luaK_exp2RK(%struct.FuncState* %fs, %struct.expdesc* %e) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.FuncState*, align 4
  %3 = alloca %struct.expdesc*, align 4
  store %struct.FuncState* %fs, %struct.FuncState** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.FuncState** %2}, metadata !1427), !dbg !1428
  store %struct.expdesc* %e, %struct.expdesc** %3, align 4
  call void @llvm.dbg.declare(metadata !{%struct.expdesc** %3}, metadata !1429), !dbg !1430
  %4 = load %struct.FuncState** %2, align 4, !dbg !1431
  %5 = load %struct.expdesc** %3, align 4, !dbg !1431
  call void @luaK_exp2val(%struct.FuncState* %4, %struct.expdesc* %5), !dbg !1431
  %6 = load %struct.expdesc** %3, align 4, !dbg !1432
  %7 = getelementptr inbounds %struct.expdesc* %6, i32 0, i32 0, !dbg !1432
  %8 = load i32* %7, align 4, !dbg !1432
  switch i32 %8, label %63 [
    i32 2, label %9
    i32 3, label %15
    i32 1, label %21
    i32 6, label %27
    i32 5, label %37
    i32 4, label %47
  ], !dbg !1432

; <label>:9                                       ; preds = %0
  %10 = load %struct.FuncState** %2, align 4, !dbg !1433
  %11 = call i32 @boolK(%struct.FuncState* %10, i32 1), !dbg !1433
  %12 = load %struct.expdesc** %3, align 4, !dbg !1433
  %13 = getelementptr inbounds %struct.expdesc* %12, i32 0, i32 1, !dbg !1433
  %14 = bitcast %union.anon.4* %13 to i32*, !dbg !1433
  store i32 %11, i32* %14, align 4, !dbg !1433
  br label %48, !dbg !1435

; <label>:15                                      ; preds = %0
  %16 = load %struct.FuncState** %2, align 4, !dbg !1436
  %17 = call i32 @boolK(%struct.FuncState* %16, i32 0), !dbg !1436
  %18 = load %struct.expdesc** %3, align 4, !dbg !1436
  %19 = getelementptr inbounds %struct.expdesc* %18, i32 0, i32 1, !dbg !1436
  %20 = bitcast %union.anon.4* %19 to i32*, !dbg !1436
  store i32 %17, i32* %20, align 4, !dbg !1436
  br label %48, !dbg !1437

; <label>:21                                      ; preds = %0
  %22 = load %struct.FuncState** %2, align 4, !dbg !1438
  %23 = call i32 @nilK(%struct.FuncState* %22), !dbg !1438
  %24 = load %struct.expdesc** %3, align 4, !dbg !1438
  %25 = getelementptr inbounds %struct.expdesc* %24, i32 0, i32 1, !dbg !1438
  %26 = bitcast %union.anon.4* %25 to i32*, !dbg !1438
  store i32 %23, i32* %26, align 4, !dbg !1438
  br label %48, !dbg !1439

; <label>:27                                      ; preds = %0
  %28 = load %struct.FuncState** %2, align 4, !dbg !1440
  %29 = load %struct.expdesc** %3, align 4, !dbg !1440
  %30 = getelementptr inbounds %struct.expdesc* %29, i32 0, i32 1, !dbg !1440
  %31 = bitcast %union.anon.4* %30 to i64*, !dbg !1440
  %32 = load i64* %31, align 8, !dbg !1440
  %33 = call i32 @luaK_intK(%struct.FuncState* %28, i64 %32), !dbg !1440
  %34 = load %struct.expdesc** %3, align 4, !dbg !1440
  %35 = getelementptr inbounds %struct.expdesc* %34, i32 0, i32 1, !dbg !1440
  %36 = bitcast %union.anon.4* %35 to i32*, !dbg !1440
  store i32 %33, i32* %36, align 4, !dbg !1440
  br label %48, !dbg !1441

; <label>:37                                      ; preds = %0
  %38 = load %struct.FuncState** %2, align 4, !dbg !1442
  %39 = load %struct.expdesc** %3, align 4, !dbg !1442
  %40 = getelementptr inbounds %struct.expdesc* %39, i32 0, i32 1, !dbg !1442
  %41 = bitcast %union.anon.4* %40 to double*, !dbg !1442
  %42 = load double* %41, align 8, !dbg !1442
  %43 = call i32 @luaK_numberK(%struct.FuncState* %38, double %42), !dbg !1442
  %44 = load %struct.expdesc** %3, align 4, !dbg !1442
  %45 = getelementptr inbounds %struct.expdesc* %44, i32 0, i32 1, !dbg !1442
  %46 = bitcast %union.anon.4* %45 to i32*, !dbg !1442
  store i32 %43, i32* %46, align 4, !dbg !1442
  br label %48, !dbg !1443

; <label>:47                                      ; preds = %0
  br label %48, !dbg !1443

; <label>:48                                      ; preds = %47, %37, %27, %21, %15, %9
  %49 = load %struct.expdesc** %3, align 4, !dbg !1444
  %50 = getelementptr inbounds %struct.expdesc* %49, i32 0, i32 0, !dbg !1444
  store i32 4, i32* %50, align 4, !dbg !1444
  %51 = load %struct.expdesc** %3, align 4, !dbg !1445
  %52 = getelementptr inbounds %struct.expdesc* %51, i32 0, i32 1, !dbg !1445
  %53 = bitcast %union.anon.4* %52 to i32*, !dbg !1445
  %54 = load i32* %53, align 4, !dbg !1445
  %55 = icmp sle i32 %54, 255, !dbg !1445
  br i1 %55, label %56, label %62, !dbg !1445

; <label>:56                                      ; preds = %48
  %57 = load %struct.expdesc** %3, align 4, !dbg !1447
  %58 = getelementptr inbounds %struct.expdesc* %57, i32 0, i32 1, !dbg !1447
  %59 = bitcast %union.anon.4* %58 to i32*, !dbg !1447
  %60 = load i32* %59, align 4, !dbg !1447
  %61 = or i32 %60, 256, !dbg !1447
  store i32 %61, i32* %1, !dbg !1447
  br label %68, !dbg !1447

; <label>:62                                      ; preds = %48
  br label %64, !dbg !1448

; <label>:63                                      ; preds = %0
  br label %64, !dbg !1449

; <label>:64                                      ; preds = %63, %62
  %65 = load %struct.FuncState** %2, align 4, !dbg !1450
  %66 = load %struct.expdesc** %3, align 4, !dbg !1450
  %67 = call i32 @luaK_exp2anyreg(%struct.FuncState* %65, %struct.expdesc* %66), !dbg !1450
  store i32 %67, i32* %1, !dbg !1450
  br label %68, !dbg !1450

; <label>:68                                      ; preds = %64, %56
  %69 = load i32* %1, !dbg !1451
  ret i32 %69, !dbg !1451
}

; Function Attrs: nounwind
define internal i32 @boolK(%struct.FuncState* %fs, i32 %b) #0 {
  %1 = alloca %struct.FuncState*, align 4
  %2 = alloca i32, align 4
  %o = alloca %struct.lua_TValue, align 8
  %io = alloca %struct.lua_TValue*, align 4
  store %struct.FuncState* %fs, %struct.FuncState** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.FuncState** %1}, metadata !1452), !dbg !1453
  store i32 %b, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !1454), !dbg !1455
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue* %o}, metadata !1456), !dbg !1457
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %io}, metadata !1458), !dbg !1460
  store %struct.lua_TValue* %o, %struct.lua_TValue** %io, align 4, !dbg !1460
  %3 = load i32* %2, align 4, !dbg !1460
  %4 = load %struct.lua_TValue** %io, align 4, !dbg !1460
  %5 = getelementptr inbounds %struct.lua_TValue* %4, i32 0, i32 0, !dbg !1460
  %6 = bitcast %union.Value* %5 to i32*, !dbg !1460
  store i32 %3, i32* %6, align 4, !dbg !1460
  %7 = load %struct.lua_TValue** %io, align 4, !dbg !1460
  %8 = getelementptr inbounds %struct.lua_TValue* %7, i32 0, i32 1, !dbg !1460
  store i32 1, i32* %8, align 4, !dbg !1460
  %9 = load %struct.FuncState** %1, align 4, !dbg !1461
  %10 = call i32 @addk(%struct.FuncState* %9, %struct.lua_TValue* %o, %struct.lua_TValue* %o), !dbg !1461
  ret i32 %10, !dbg !1461
}

; Function Attrs: nounwind
define internal i32 @nilK(%struct.FuncState* %fs) #0 {
  %1 = alloca %struct.FuncState*, align 4
  %k = alloca %struct.lua_TValue, align 8
  %v = alloca %struct.lua_TValue, align 8
  %io = alloca %struct.lua_TValue*, align 4
  %x_ = alloca %struct.Table*, align 4
  store %struct.FuncState* %fs, %struct.FuncState** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.FuncState** %1}, metadata !1462), !dbg !1463
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue* %k}, metadata !1464), !dbg !1465
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue* %v}, metadata !1466), !dbg !1467
  %2 = getelementptr inbounds %struct.lua_TValue* %v, i32 0, i32 1, !dbg !1468
  store i32 0, i32* %2, align 4, !dbg !1468
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %io}, metadata !1469), !dbg !1471
  store %struct.lua_TValue* %k, %struct.lua_TValue** %io, align 4, !dbg !1471
  call void @llvm.dbg.declare(metadata !{%struct.Table** %x_}, metadata !1472), !dbg !1471
  %3 = load %struct.FuncState** %1, align 4, !dbg !1471
  %4 = getelementptr inbounds %struct.FuncState* %3, i32 0, i32 2, !dbg !1471
  %5 = load %struct.LexState** %4, align 4, !dbg !1471
  %6 = getelementptr inbounds %struct.LexState* %5, i32 0, i32 9, !dbg !1471
  %7 = load %struct.Table** %6, align 4, !dbg !1471
  store %struct.Table* %7, %struct.Table** %x_, align 4, !dbg !1471
  %8 = load %struct.Table** %x_, align 4, !dbg !1471
  %9 = bitcast %struct.Table* %8 to %union.GCUnion*, !dbg !1471
  %10 = bitcast %union.GCUnion* %9 to %struct.GCObject*, !dbg !1471
  %11 = load %struct.lua_TValue** %io, align 4, !dbg !1471
  %12 = getelementptr inbounds %struct.lua_TValue* %11, i32 0, i32 0, !dbg !1471
  %13 = bitcast %union.Value* %12 to %struct.GCObject**, !dbg !1471
  store %struct.GCObject* %10, %struct.GCObject** %13, align 4, !dbg !1471
  %14 = load %struct.lua_TValue** %io, align 4, !dbg !1471
  %15 = getelementptr inbounds %struct.lua_TValue* %14, i32 0, i32 1, !dbg !1471
  store i32 69, i32* %15, align 4, !dbg !1471
  %16 = load %struct.FuncState** %1, align 4, !dbg !1473
  %17 = call i32 @addk(%struct.FuncState* %16, %struct.lua_TValue* %k, %struct.lua_TValue* %v), !dbg !1473
  ret i32 %17, !dbg !1473
}

; Function Attrs: nounwind
define internal i32 @luaK_numberK(%struct.FuncState* %fs, double %r) #0 {
  %1 = alloca %struct.FuncState*, align 4
  %2 = alloca double, align 8
  %o = alloca %struct.lua_TValue, align 8
  %io = alloca %struct.lua_TValue*, align 4
  store %struct.FuncState* %fs, %struct.FuncState** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.FuncState** %1}, metadata !1474), !dbg !1475
  store double %r, double* %2, align 8
  call void @llvm.dbg.declare(metadata !{double* %2}, metadata !1476), !dbg !1477
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue* %o}, metadata !1478), !dbg !1479
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %io}, metadata !1480), !dbg !1482
  store %struct.lua_TValue* %o, %struct.lua_TValue** %io, align 4, !dbg !1482
  %3 = load double* %2, align 8, !dbg !1482
  %4 = load %struct.lua_TValue** %io, align 4, !dbg !1482
  %5 = getelementptr inbounds %struct.lua_TValue* %4, i32 0, i32 0, !dbg !1482
  %6 = bitcast %union.Value* %5 to double*, !dbg !1482
  store double %3, double* %6, align 8, !dbg !1482
  %7 = load %struct.lua_TValue** %io, align 4, !dbg !1482
  %8 = getelementptr inbounds %struct.lua_TValue* %7, i32 0, i32 1, !dbg !1482
  store i32 3, i32* %8, align 4, !dbg !1482
  %9 = load %struct.FuncState** %1, align 4, !dbg !1483
  %10 = call i32 @addk(%struct.FuncState* %9, %struct.lua_TValue* %o, %struct.lua_TValue* %o), !dbg !1483
  ret i32 %10, !dbg !1483
}

; Function Attrs: nounwind
define hidden void @luaK_storevar(%struct.FuncState* %fs, %struct.expdesc* %var, %struct.expdesc* %ex) #0 {
  %1 = alloca %struct.FuncState*, align 4
  %2 = alloca %struct.expdesc*, align 4
  %3 = alloca %struct.expdesc*, align 4
  %e = alloca i32, align 4
  %op = alloca i32, align 4
  %e1 = alloca i32, align 4
  store %struct.FuncState* %fs, %struct.FuncState** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.FuncState** %1}, metadata !1484), !dbg !1485
  store %struct.expdesc* %var, %struct.expdesc** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.expdesc** %2}, metadata !1486), !dbg !1487
  store %struct.expdesc* %ex, %struct.expdesc** %3, align 4
  call void @llvm.dbg.declare(metadata !{%struct.expdesc** %3}, metadata !1488), !dbg !1489
  %4 = load %struct.expdesc** %2, align 4, !dbg !1490
  %5 = getelementptr inbounds %struct.expdesc* %4, i32 0, i32 0, !dbg !1490
  %6 = load i32* %5, align 4, !dbg !1490
  switch i32 %6, label %55 [
    i32 8, label %7
    i32 9, label %16
    i32 10, label %27
  ], !dbg !1490

; <label>:7                                       ; preds = %0
  %8 = load %struct.FuncState** %1, align 4, !dbg !1491
  %9 = load %struct.expdesc** %3, align 4, !dbg !1491
  call void @freeexp(%struct.FuncState* %8, %struct.expdesc* %9), !dbg !1491
  %10 = load %struct.FuncState** %1, align 4, !dbg !1494
  %11 = load %struct.expdesc** %3, align 4, !dbg !1494
  %12 = load %struct.expdesc** %2, align 4, !dbg !1494
  %13 = getelementptr inbounds %struct.expdesc* %12, i32 0, i32 1, !dbg !1494
  %14 = bitcast %union.anon.4* %13 to i32*, !dbg !1494
  %15 = load i32* %14, align 4, !dbg !1494
  call void @exp2reg(%struct.FuncState* %10, %struct.expdesc* %11, i32 %15), !dbg !1494
  br label %59, !dbg !1495

; <label>:16                                      ; preds = %0
  call void @llvm.dbg.declare(metadata !{i32* %e}, metadata !1496), !dbg !1498
  %17 = load %struct.FuncState** %1, align 4, !dbg !1499
  %18 = load %struct.expdesc** %3, align 4, !dbg !1499
  %19 = call i32 @luaK_exp2anyreg(%struct.FuncState* %17, %struct.expdesc* %18), !dbg !1499
  store i32 %19, i32* %e, align 4, !dbg !1499
  %20 = load %struct.FuncState** %1, align 4, !dbg !1500
  %21 = load i32* %e, align 4, !dbg !1500
  %22 = load %struct.expdesc** %2, align 4, !dbg !1500
  %23 = getelementptr inbounds %struct.expdesc* %22, i32 0, i32 1, !dbg !1500
  %24 = bitcast %union.anon.4* %23 to i32*, !dbg !1500
  %25 = load i32* %24, align 4, !dbg !1500
  %26 = call i32 @luaK_codeABC(%struct.FuncState* %20, i32 9, i32 %21, i32 %25, i32 0), !dbg !1500
  br label %56, !dbg !1501

; <label>:27                                      ; preds = %0
  call void @llvm.dbg.declare(metadata !{i32* %op}, metadata !1502), !dbg !1504
  %28 = load %struct.expdesc** %2, align 4, !dbg !1505
  %29 = getelementptr inbounds %struct.expdesc* %28, i32 0, i32 1, !dbg !1505
  %30 = bitcast %union.anon.4* %29 to %struct.anon.5*, !dbg !1505
  %31 = getelementptr inbounds %struct.anon.5* %30, i32 0, i32 2, !dbg !1505
  %32 = load i8* %31, align 1, !dbg !1505
  %33 = zext i8 %32 to i32, !dbg !1505
  %34 = icmp eq i32 %33, 8, !dbg !1505
  %35 = select i1 %34, i32 10, i32 8, !dbg !1505
  store i32 %35, i32* %op, align 4, !dbg !1505
  call void @llvm.dbg.declare(metadata !{i32* %e1}, metadata !1506), !dbg !1507
  %36 = load %struct.FuncState** %1, align 4, !dbg !1508
  %37 = load %struct.expdesc** %3, align 4, !dbg !1508
  %38 = call i32 @luaK_exp2RK(%struct.FuncState* %36, %struct.expdesc* %37), !dbg !1508
  store i32 %38, i32* %e1, align 4, !dbg !1508
  %39 = load %struct.FuncState** %1, align 4, !dbg !1509
  %40 = load i32* %op, align 4, !dbg !1509
  %41 = load %struct.expdesc** %2, align 4, !dbg !1509
  %42 = getelementptr inbounds %struct.expdesc* %41, i32 0, i32 1, !dbg !1509
  %43 = bitcast %union.anon.4* %42 to %struct.anon.5*, !dbg !1509
  %44 = getelementptr inbounds %struct.anon.5* %43, i32 0, i32 1, !dbg !1509
  %45 = load i8* %44, align 1, !dbg !1509
  %46 = zext i8 %45 to i32, !dbg !1509
  %47 = load %struct.expdesc** %2, align 4, !dbg !1509
  %48 = getelementptr inbounds %struct.expdesc* %47, i32 0, i32 1, !dbg !1509
  %49 = bitcast %union.anon.4* %48 to %struct.anon.5*, !dbg !1509
  %50 = getelementptr inbounds %struct.anon.5* %49, i32 0, i32 0, !dbg !1509
  %51 = load i16* %50, align 2, !dbg !1509
  %52 = sext i16 %51 to i32, !dbg !1509
  %53 = load i32* %e1, align 4, !dbg !1509
  %54 = call i32 @luaK_codeABC(%struct.FuncState* %39, i32 %40, i32 %46, i32 %52, i32 %53), !dbg !1509
  br label %56, !dbg !1510

; <label>:55                                      ; preds = %0
  br label %56, !dbg !1511

; <label>:56                                      ; preds = %55, %27, %16
  %57 = load %struct.FuncState** %1, align 4, !dbg !1512
  %58 = load %struct.expdesc** %3, align 4, !dbg !1512
  call void @freeexp(%struct.FuncState* %57, %struct.expdesc* %58), !dbg !1512
  br label %59, !dbg !1513

; <label>:59                                      ; preds = %56, %7
  ret void, !dbg !1514
}

; Function Attrs: nounwind
define hidden void @luaK_self(%struct.FuncState* %fs, %struct.expdesc* %e, %struct.expdesc* %key) #0 {
  %1 = alloca %struct.FuncState*, align 4
  %2 = alloca %struct.expdesc*, align 4
  %3 = alloca %struct.expdesc*, align 4
  %ereg = alloca i32, align 4
  store %struct.FuncState* %fs, %struct.FuncState** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.FuncState** %1}, metadata !1516), !dbg !1517
  store %struct.expdesc* %e, %struct.expdesc** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.expdesc** %2}, metadata !1518), !dbg !1519
  store %struct.expdesc* %key, %struct.expdesc** %3, align 4
  call void @llvm.dbg.declare(metadata !{%struct.expdesc** %3}, metadata !1520), !dbg !1521
  call void @llvm.dbg.declare(metadata !{i32* %ereg}, metadata !1522), !dbg !1523
  %4 = load %struct.FuncState** %1, align 4, !dbg !1524
  %5 = load %struct.expdesc** %2, align 4, !dbg !1524
  %6 = call i32 @luaK_exp2anyreg(%struct.FuncState* %4, %struct.expdesc* %5), !dbg !1524
  %7 = load %struct.expdesc** %2, align 4, !dbg !1525
  %8 = getelementptr inbounds %struct.expdesc* %7, i32 0, i32 1, !dbg !1525
  %9 = bitcast %union.anon.4* %8 to i32*, !dbg !1525
  %10 = load i32* %9, align 4, !dbg !1525
  store i32 %10, i32* %ereg, align 4, !dbg !1525
  %11 = load %struct.FuncState** %1, align 4, !dbg !1526
  %12 = load %struct.expdesc** %2, align 4, !dbg !1526
  call void @freeexp(%struct.FuncState* %11, %struct.expdesc* %12), !dbg !1526
  %13 = load %struct.FuncState** %1, align 4, !dbg !1527
  %14 = getelementptr inbounds %struct.FuncState* %13, i32 0, i32 13, !dbg !1527
  %15 = load i8* %14, align 1, !dbg !1527
  %16 = zext i8 %15 to i32, !dbg !1527
  %17 = load %struct.expdesc** %2, align 4, !dbg !1527
  %18 = getelementptr inbounds %struct.expdesc* %17, i32 0, i32 1, !dbg !1527
  %19 = bitcast %union.anon.4* %18 to i32*, !dbg !1527
  store i32 %16, i32* %19, align 4, !dbg !1527
  %20 = load %struct.expdesc** %2, align 4, !dbg !1528
  %21 = getelementptr inbounds %struct.expdesc* %20, i32 0, i32 0, !dbg !1528
  store i32 7, i32* %21, align 4, !dbg !1528
  %22 = load %struct.FuncState** %1, align 4, !dbg !1529
  call void @luaK_reserveregs(%struct.FuncState* %22, i32 2), !dbg !1529
  %23 = load %struct.FuncState** %1, align 4, !dbg !1530
  %24 = load %struct.expdesc** %2, align 4, !dbg !1530
  %25 = getelementptr inbounds %struct.expdesc* %24, i32 0, i32 1, !dbg !1530
  %26 = bitcast %union.anon.4* %25 to i32*, !dbg !1530
  %27 = load i32* %26, align 4, !dbg !1530
  %28 = load i32* %ereg, align 4, !dbg !1530
  %29 = load %struct.FuncState** %1, align 4, !dbg !1531
  %30 = load %struct.expdesc** %3, align 4, !dbg !1531
  %31 = call i32 @luaK_exp2RK(%struct.FuncState* %29, %struct.expdesc* %30), !dbg !1531
  %32 = call i32 @luaK_codeABC(%struct.FuncState* %23, i32 12, i32 %27, i32 %28, i32 %31), !dbg !1530
  %33 = load %struct.FuncState** %1, align 4, !dbg !1532
  %34 = load %struct.expdesc** %3, align 4, !dbg !1532
  call void @freeexp(%struct.FuncState* %33, %struct.expdesc* %34), !dbg !1532
  ret void, !dbg !1533
}

; Function Attrs: nounwind
define hidden void @luaK_goiftrue(%struct.FuncState* %fs, %struct.expdesc* %e) #0 {
  %1 = alloca %struct.FuncState*, align 4
  %2 = alloca %struct.expdesc*, align 4
  %pc = alloca i32, align 4
  store %struct.FuncState* %fs, %struct.FuncState** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.FuncState** %1}, metadata !1534), !dbg !1535
  store %struct.expdesc* %e, %struct.expdesc** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.expdesc** %2}, metadata !1536), !dbg !1537
  call void @llvm.dbg.declare(metadata !{i32* %pc}, metadata !1538), !dbg !1539
  %3 = load %struct.FuncState** %1, align 4, !dbg !1540
  %4 = load %struct.expdesc** %2, align 4, !dbg !1540
  call void @luaK_dischargevars(%struct.FuncState* %3, %struct.expdesc* %4), !dbg !1540
  %5 = load %struct.expdesc** %2, align 4, !dbg !1541
  %6 = getelementptr inbounds %struct.expdesc* %5, i32 0, i32 0, !dbg !1541
  %7 = load i32* %6, align 4, !dbg !1541
  switch i32 %7, label %16 [
    i32 11, label %8
    i32 4, label %15
    i32 5, label %15
    i32 6, label %15
    i32 2, label %15
  ], !dbg !1541

; <label>:8                                       ; preds = %0
  %9 = load %struct.FuncState** %1, align 4, !dbg !1542
  %10 = load %struct.expdesc** %2, align 4, !dbg !1542
  call void @negatecondition(%struct.FuncState* %9, %struct.expdesc* %10), !dbg !1542
  %11 = load %struct.expdesc** %2, align 4, !dbg !1545
  %12 = getelementptr inbounds %struct.expdesc* %11, i32 0, i32 1, !dbg !1545
  %13 = bitcast %union.anon.4* %12 to i32*, !dbg !1545
  %14 = load i32* %13, align 4, !dbg !1545
  store i32 %14, i32* %pc, align 4, !dbg !1545
  br label %20, !dbg !1546

; <label>:15                                      ; preds = %0, %0, %0, %0
  store i32 -1, i32* %pc, align 4, !dbg !1547
  br label %20, !dbg !1549

; <label>:16                                      ; preds = %0
  %17 = load %struct.FuncState** %1, align 4, !dbg !1550
  %18 = load %struct.expdesc** %2, align 4, !dbg !1550
  %19 = call i32 @jumponcond(%struct.FuncState* %17, %struct.expdesc* %18, i32 0), !dbg !1550
  store i32 %19, i32* %pc, align 4, !dbg !1550
  br label %20, !dbg !1552

; <label>:20                                      ; preds = %16, %15, %8
  %21 = load %struct.FuncState** %1, align 4, !dbg !1553
  %22 = load %struct.expdesc** %2, align 4, !dbg !1553
  %23 = getelementptr inbounds %struct.expdesc* %22, i32 0, i32 3, !dbg !1553
  %24 = load i32* %pc, align 4, !dbg !1553
  call void @luaK_concat(%struct.FuncState* %21, i32* %23, i32 %24), !dbg !1553
  %25 = load %struct.FuncState** %1, align 4, !dbg !1554
  %26 = load %struct.expdesc** %2, align 4, !dbg !1554
  %27 = getelementptr inbounds %struct.expdesc* %26, i32 0, i32 2, !dbg !1554
  %28 = load i32* %27, align 4, !dbg !1554
  call void @luaK_patchtohere(%struct.FuncState* %25, i32 %28), !dbg !1554
  %29 = load %struct.expdesc** %2, align 4, !dbg !1555
  %30 = getelementptr inbounds %struct.expdesc* %29, i32 0, i32 2, !dbg !1555
  store i32 -1, i32* %30, align 4, !dbg !1555
  ret void, !dbg !1556
}

; Function Attrs: nounwind
define internal void @negatecondition(%struct.FuncState* %fs, %struct.expdesc* %e) #0 {
  %1 = alloca %struct.FuncState*, align 4
  %2 = alloca %struct.expdesc*, align 4
  %pc = alloca i32*, align 4
  store %struct.FuncState* %fs, %struct.FuncState** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.FuncState** %1}, metadata !1557), !dbg !1558
  store %struct.expdesc* %e, %struct.expdesc** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.expdesc** %2}, metadata !1559), !dbg !1560
  call void @llvm.dbg.declare(metadata !{i32** %pc}, metadata !1561), !dbg !1562
  %3 = load %struct.FuncState** %1, align 4, !dbg !1563
  %4 = load %struct.expdesc** %2, align 4, !dbg !1563
  %5 = getelementptr inbounds %struct.expdesc* %4, i32 0, i32 1, !dbg !1563
  %6 = bitcast %union.anon.4* %5 to i32*, !dbg !1563
  %7 = load i32* %6, align 4, !dbg !1563
  %8 = call i32* @getjumpcontrol(%struct.FuncState* %3, i32 %7), !dbg !1563
  store i32* %8, i32** %pc, align 4, !dbg !1563
  %9 = load i32** %pc, align 4, !dbg !1564
  %10 = load i32* %9, align 4, !dbg !1564
  %11 = and i32 %10, -16321, !dbg !1564
  %12 = load i32** %pc, align 4, !dbg !1564
  %13 = load i32* %12, align 4, !dbg !1564
  %14 = lshr i32 %13, 6, !dbg !1564
  %15 = and i32 %14, 255, !dbg !1564
  %16 = icmp ne i32 %15, 0, !dbg !1564
  %17 = xor i1 %16, true, !dbg !1564
  %18 = zext i1 %17 to i32, !dbg !1564
  %19 = shl i32 %18, 6, !dbg !1564
  %20 = and i32 %19, 16320, !dbg !1564
  %21 = or i32 %11, %20, !dbg !1564
  %22 = load i32** %pc, align 4, !dbg !1564
  store i32 %21, i32* %22, align 4, !dbg !1564
  ret void, !dbg !1565
}

; Function Attrs: nounwind
define internal i32 @jumponcond(%struct.FuncState* %fs, %struct.expdesc* %e, i32 %cond) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.FuncState*, align 4
  %3 = alloca %struct.expdesc*, align 4
  %4 = alloca i32, align 4
  %ie = alloca i32, align 4
  store %struct.FuncState* %fs, %struct.FuncState** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.FuncState** %2}, metadata !1566), !dbg !1567
  store %struct.expdesc* %e, %struct.expdesc** %3, align 4
  call void @llvm.dbg.declare(metadata !{%struct.expdesc** %3}, metadata !1568), !dbg !1569
  store i32 %cond, i32* %4, align 4
  call void @llvm.dbg.declare(metadata !{i32* %4}, metadata !1570), !dbg !1571
  %5 = load %struct.expdesc** %3, align 4, !dbg !1572
  %6 = getelementptr inbounds %struct.expdesc* %5, i32 0, i32 0, !dbg !1572
  %7 = load i32* %6, align 4, !dbg !1572
  %8 = icmp eq i32 %7, 12, !dbg !1572
  br i1 %8, label %9, label %40, !dbg !1572

; <label>:9                                       ; preds = %0
  call void @llvm.dbg.declare(metadata !{i32* %ie}, metadata !1574), !dbg !1576
  %10 = load %struct.expdesc** %3, align 4, !dbg !1577
  %11 = getelementptr inbounds %struct.expdesc* %10, i32 0, i32 1, !dbg !1577
  %12 = bitcast %union.anon.4* %11 to i32*, !dbg !1577
  %13 = load i32* %12, align 4, !dbg !1577
  %14 = load %struct.FuncState** %2, align 4, !dbg !1577
  %15 = getelementptr inbounds %struct.FuncState* %14, i32 0, i32 0, !dbg !1577
  %16 = load %struct.Proto** %15, align 4, !dbg !1577
  %17 = getelementptr inbounds %struct.Proto* %16, i32 0, i32 15, !dbg !1577
  %18 = load i32** %17, align 4, !dbg !1577
  %19 = getelementptr inbounds i32* %18, i32 %13, !dbg !1577
  %20 = load i32* %19, align 4, !dbg !1577
  store i32 %20, i32* %ie, align 4, !dbg !1577
  %21 = load i32* %ie, align 4, !dbg !1578
  %22 = lshr i32 %21, 0, !dbg !1578
  %23 = and i32 %22, 63, !dbg !1578
  %24 = icmp eq i32 %23, 27, !dbg !1578
  br i1 %24, label %25, label %39, !dbg !1578

; <label>:25                                      ; preds = %9
  %26 = load %struct.FuncState** %2, align 4, !dbg !1580
  %27 = getelementptr inbounds %struct.FuncState* %26, i32 0, i32 4, !dbg !1580
  %28 = load i32* %27, align 4, !dbg !1580
  %29 = add nsw i32 %28, -1, !dbg !1580
  store i32 %29, i32* %27, align 4, !dbg !1580
  %30 = load %struct.FuncState** %2, align 4, !dbg !1582
  %31 = load i32* %ie, align 4, !dbg !1582
  %32 = lshr i32 %31, 23, !dbg !1582
  %33 = and i32 %32, 511, !dbg !1582
  %34 = load i32* %4, align 4, !dbg !1582
  %35 = icmp ne i32 %34, 0, !dbg !1582
  %36 = xor i1 %35, true, !dbg !1582
  %37 = zext i1 %36 to i32, !dbg !1582
  %38 = call i32 @condjump(%struct.FuncState* %30, i32 34, i32 %33, i32 0, i32 %37), !dbg !1582
  store i32 %38, i32* %1, !dbg !1582
  br label %52, !dbg !1582

; <label>:39                                      ; preds = %9
  br label %40, !dbg !1583

; <label>:40                                      ; preds = %39, %0
  %41 = load %struct.FuncState** %2, align 4, !dbg !1584
  %42 = load %struct.expdesc** %3, align 4, !dbg !1584
  call void @discharge2anyreg(%struct.FuncState* %41, %struct.expdesc* %42), !dbg !1584
  %43 = load %struct.FuncState** %2, align 4, !dbg !1585
  %44 = load %struct.expdesc** %3, align 4, !dbg !1585
  call void @freeexp(%struct.FuncState* %43, %struct.expdesc* %44), !dbg !1585
  %45 = load %struct.FuncState** %2, align 4, !dbg !1586
  %46 = load %struct.expdesc** %3, align 4, !dbg !1586
  %47 = getelementptr inbounds %struct.expdesc* %46, i32 0, i32 1, !dbg !1586
  %48 = bitcast %union.anon.4* %47 to i32*, !dbg !1586
  %49 = load i32* %48, align 4, !dbg !1586
  %50 = load i32* %4, align 4, !dbg !1586
  %51 = call i32 @condjump(%struct.FuncState* %45, i32 35, i32 255, i32 %49, i32 %50), !dbg !1586
  store i32 %51, i32* %1, !dbg !1586
  br label %52, !dbg !1586

; <label>:52                                      ; preds = %40, %25
  %53 = load i32* %1, !dbg !1587
  ret i32 %53, !dbg !1587
}

; Function Attrs: nounwind
define hidden void @luaK_goiffalse(%struct.FuncState* %fs, %struct.expdesc* %e) #0 {
  %1 = alloca %struct.FuncState*, align 4
  %2 = alloca %struct.expdesc*, align 4
  %pc = alloca i32, align 4
  store %struct.FuncState* %fs, %struct.FuncState** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.FuncState** %1}, metadata !1588), !dbg !1589
  store %struct.expdesc* %e, %struct.expdesc** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.expdesc** %2}, metadata !1590), !dbg !1591
  call void @llvm.dbg.declare(metadata !{i32* %pc}, metadata !1592), !dbg !1593
  %3 = load %struct.FuncState** %1, align 4, !dbg !1594
  %4 = load %struct.expdesc** %2, align 4, !dbg !1594
  call void @luaK_dischargevars(%struct.FuncState* %3, %struct.expdesc* %4), !dbg !1594
  %5 = load %struct.expdesc** %2, align 4, !dbg !1595
  %6 = getelementptr inbounds %struct.expdesc* %5, i32 0, i32 0, !dbg !1595
  %7 = load i32* %6, align 4, !dbg !1595
  switch i32 %7, label %14 [
    i32 11, label %8
    i32 1, label %13
    i32 3, label %13
  ], !dbg !1595

; <label>:8                                       ; preds = %0
  %9 = load %struct.expdesc** %2, align 4, !dbg !1596
  %10 = getelementptr inbounds %struct.expdesc* %9, i32 0, i32 1, !dbg !1596
  %11 = bitcast %union.anon.4* %10 to i32*, !dbg !1596
  %12 = load i32* %11, align 4, !dbg !1596
  store i32 %12, i32* %pc, align 4, !dbg !1596
  br label %18, !dbg !1599

; <label>:13                                      ; preds = %0, %0
  store i32 -1, i32* %pc, align 4, !dbg !1600
  br label %18, !dbg !1602

; <label>:14                                      ; preds = %0
  %15 = load %struct.FuncState** %1, align 4, !dbg !1603
  %16 = load %struct.expdesc** %2, align 4, !dbg !1603
  %17 = call i32 @jumponcond(%struct.FuncState* %15, %struct.expdesc* %16, i32 1), !dbg !1603
  store i32 %17, i32* %pc, align 4, !dbg !1603
  br label %18, !dbg !1605

; <label>:18                                      ; preds = %14, %13, %8
  %19 = load %struct.FuncState** %1, align 4, !dbg !1606
  %20 = load %struct.expdesc** %2, align 4, !dbg !1606
  %21 = getelementptr inbounds %struct.expdesc* %20, i32 0, i32 2, !dbg !1606
  %22 = load i32* %pc, align 4, !dbg !1606
  call void @luaK_concat(%struct.FuncState* %19, i32* %21, i32 %22), !dbg !1606
  %23 = load %struct.FuncState** %1, align 4, !dbg !1607
  %24 = load %struct.expdesc** %2, align 4, !dbg !1607
  %25 = getelementptr inbounds %struct.expdesc* %24, i32 0, i32 3, !dbg !1607
  %26 = load i32* %25, align 4, !dbg !1607
  call void @luaK_patchtohere(%struct.FuncState* %23, i32 %26), !dbg !1607
  %27 = load %struct.expdesc** %2, align 4, !dbg !1608
  %28 = getelementptr inbounds %struct.expdesc* %27, i32 0, i32 3, !dbg !1608
  store i32 -1, i32* %28, align 4, !dbg !1608
  ret void, !dbg !1609
}

; Function Attrs: nounwind
define hidden void @luaK_indexed(%struct.FuncState* %fs, %struct.expdesc* %t, %struct.expdesc* %k) #0 {
  %1 = alloca %struct.FuncState*, align 4
  %2 = alloca %struct.expdesc*, align 4
  %3 = alloca %struct.expdesc*, align 4
  store %struct.FuncState* %fs, %struct.FuncState** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.FuncState** %1}, metadata !1610), !dbg !1611
  store %struct.expdesc* %t, %struct.expdesc** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.expdesc** %2}, metadata !1612), !dbg !1613
  store %struct.expdesc* %k, %struct.expdesc** %3, align 4
  call void @llvm.dbg.declare(metadata !{%struct.expdesc** %3}, metadata !1614), !dbg !1615
  %4 = load %struct.expdesc** %2, align 4, !dbg !1616
  %5 = getelementptr inbounds %struct.expdesc* %4, i32 0, i32 1, !dbg !1616
  %6 = bitcast %union.anon.4* %5 to i32*, !dbg !1616
  %7 = load i32* %6, align 4, !dbg !1616
  %8 = trunc i32 %7 to i8, !dbg !1616
  %9 = load %struct.expdesc** %2, align 4, !dbg !1616
  %10 = getelementptr inbounds %struct.expdesc* %9, i32 0, i32 1, !dbg !1616
  %11 = bitcast %union.anon.4* %10 to %struct.anon.5*, !dbg !1616
  %12 = getelementptr inbounds %struct.anon.5* %11, i32 0, i32 1, !dbg !1616
  store i8 %8, i8* %12, align 1, !dbg !1616
  %13 = load %struct.FuncState** %1, align 4, !dbg !1617
  %14 = load %struct.expdesc** %3, align 4, !dbg !1617
  %15 = call i32 @luaK_exp2RK(%struct.FuncState* %13, %struct.expdesc* %14), !dbg !1617
  %16 = trunc i32 %15 to i16, !dbg !1617
  %17 = load %struct.expdesc** %2, align 4, !dbg !1617
  %18 = getelementptr inbounds %struct.expdesc* %17, i32 0, i32 1, !dbg !1617
  %19 = bitcast %union.anon.4* %18 to %struct.anon.5*, !dbg !1617
  %20 = getelementptr inbounds %struct.anon.5* %19, i32 0, i32 0, !dbg !1617
  store i16 %16, i16* %20, align 2, !dbg !1617
  %21 = load %struct.expdesc** %2, align 4, !dbg !1618
  %22 = getelementptr inbounds %struct.expdesc* %21, i32 0, i32 0, !dbg !1618
  %23 = load i32* %22, align 4, !dbg !1618
  %24 = icmp eq i32 %23, 9, !dbg !1618
  %25 = select i1 %24, i32 9, i32 8, !dbg !1618
  %26 = trunc i32 %25 to i8, !dbg !1618
  %27 = load %struct.expdesc** %2, align 4, !dbg !1618
  %28 = getelementptr inbounds %struct.expdesc* %27, i32 0, i32 1, !dbg !1618
  %29 = bitcast %union.anon.4* %28 to %struct.anon.5*, !dbg !1618
  %30 = getelementptr inbounds %struct.anon.5* %29, i32 0, i32 2, !dbg !1618
  store i8 %26, i8* %30, align 1, !dbg !1618
  %31 = load %struct.expdesc** %2, align 4, !dbg !1619
  %32 = getelementptr inbounds %struct.expdesc* %31, i32 0, i32 0, !dbg !1619
  store i32 10, i32* %32, align 4, !dbg !1619
  ret void, !dbg !1620
}

; Function Attrs: nounwind
define hidden void @luaK_prefix(%struct.FuncState* %fs, i32 %op, %struct.expdesc* %e, i32 %line) #0 {
  %1 = alloca %struct.FuncState*, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.expdesc*, align 4
  %4 = alloca i32, align 4
  store %struct.FuncState* %fs, %struct.FuncState** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.FuncState** %1}, metadata !1621), !dbg !1622
  store i32 %op, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !1623), !dbg !1624
  store %struct.expdesc* %e, %struct.expdesc** %3, align 4
  call void @llvm.dbg.declare(metadata !{%struct.expdesc** %3}, metadata !1625), !dbg !1626
  store i32 %line, i32* %4, align 4
  call void @llvm.dbg.declare(metadata !{i32* %4}, metadata !1627), !dbg !1628
  %5 = load i32* %2, align 4, !dbg !1629
  switch i32 %5, label %24 [
    i32 0, label %6
    i32 1, label %6
    i32 3, label %15
    i32 2, label %21
  ], !dbg !1629

; <label>:6                                       ; preds = %0, %0
  %7 = load %struct.FuncState** %1, align 4, !dbg !1630
  %8 = load i32* %2, align 4, !dbg !1630
  %9 = add i32 %8, 12, !dbg !1630
  %10 = load %struct.expdesc** %3, align 4, !dbg !1630
  %11 = call i32 @constfolding(%struct.FuncState* %7, i32 %9, %struct.expdesc* %10, %struct.expdesc* @luaK_prefix.ef), !dbg !1630
  %12 = icmp ne i32 %11, 0, !dbg !1630
  br i1 %12, label %13, label %14, !dbg !1630

; <label>:13                                      ; preds = %6
  br label %25, !dbg !1633

; <label>:14                                      ; preds = %6
  br label %15, !dbg !1634

; <label>:15                                      ; preds = %0, %14
  %16 = load %struct.FuncState** %1, align 4, !dbg !1636
  %17 = load i32* %2, align 4, !dbg !1636
  %18 = add i32 %17, 25, !dbg !1636
  %19 = load %struct.expdesc** %3, align 4, !dbg !1636
  %20 = load i32* %4, align 4, !dbg !1636
  call void @codeunexpval(%struct.FuncState* %16, i32 %18, %struct.expdesc* %19, i32 %20), !dbg !1636
  br label %25, !dbg !1637

; <label>:21                                      ; preds = %0
  %22 = load %struct.FuncState** %1, align 4, !dbg !1638
  %23 = load %struct.expdesc** %3, align 4, !dbg !1638
  call void @codenot(%struct.FuncState* %22, %struct.expdesc* %23), !dbg !1638
  br label %25, !dbg !1639

; <label>:24                                      ; preds = %0
  br label %25, !dbg !1640

; <label>:25                                      ; preds = %24, %21, %15, %13
  ret void, !dbg !1641
}

; Function Attrs: nounwind
define internal i32 @constfolding(%struct.FuncState* %fs, i32 %op, %struct.expdesc* %e1, %struct.expdesc* %e2) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.FuncState*, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.expdesc*, align 4
  %5 = alloca %struct.expdesc*, align 4
  %v1 = alloca %struct.lua_TValue, align 8
  %v2 = alloca %struct.lua_TValue, align 8
  %res = alloca %struct.lua_TValue, align 8
  %n = alloca double, align 8
  store %struct.FuncState* %fs, %struct.FuncState** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.FuncState** %2}, metadata !1642), !dbg !1643
  store i32 %op, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !1644), !dbg !1645
  store %struct.expdesc* %e1, %struct.expdesc** %4, align 4
  call void @llvm.dbg.declare(metadata !{%struct.expdesc** %4}, metadata !1646), !dbg !1647
  store %struct.expdesc* %e2, %struct.expdesc** %5, align 4
  call void @llvm.dbg.declare(metadata !{%struct.expdesc** %5}, metadata !1648), !dbg !1649
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue* %v1}, metadata !1650), !dbg !1651
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue* %v2}, metadata !1652), !dbg !1653
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue* %res}, metadata !1654), !dbg !1655
  %6 = load %struct.expdesc** %4, align 4, !dbg !1656
  %7 = call i32 @tonumeral(%struct.expdesc* %6, %struct.lua_TValue* %v1), !dbg !1656
  %8 = icmp ne i32 %7, 0, !dbg !1656
  br i1 %8, label %9, label %17, !dbg !1656

; <label>:9                                       ; preds = %0
  %10 = load %struct.expdesc** %5, align 4, !dbg !1658
  %11 = call i32 @tonumeral(%struct.expdesc* %10, %struct.lua_TValue* %v2), !dbg !1658
  %12 = icmp ne i32 %11, 0, !dbg !1658
  br i1 %12, label %13, label %17, !dbg !1658

; <label>:13                                      ; preds = %9
  %14 = load i32* %3, align 4, !dbg !1660
  %15 = call i32 @validop(i32 %14, %struct.lua_TValue* %v1, %struct.lua_TValue* %v2), !dbg !1660
  %16 = icmp ne i32 %15, 0, !dbg !1660
  br i1 %16, label %18, label %17, !dbg !1660

; <label>:17                                      ; preds = %13, %9, %0
  store i32 0, i32* %1, !dbg !1662
  br label %56, !dbg !1662

; <label>:18                                      ; preds = %13
  %19 = load %struct.FuncState** %2, align 4, !dbg !1663
  %20 = getelementptr inbounds %struct.FuncState* %19, i32 0, i32 2, !dbg !1663
  %21 = load %struct.LexState** %20, align 4, !dbg !1663
  %22 = getelementptr inbounds %struct.LexState* %21, i32 0, i32 6, !dbg !1663
  %23 = load %struct.lua_State** %22, align 4, !dbg !1663
  %24 = load i32* %3, align 4, !dbg !1663
  call void @luaO_arith(%struct.lua_State* %23, i32 %24, %struct.lua_TValue* %v1, %struct.lua_TValue* %v2, %struct.lua_TValue* %res), !dbg !1663
  %25 = getelementptr inbounds %struct.lua_TValue* %res, i32 0, i32 1, !dbg !1664
  %26 = load i32* %25, align 4, !dbg !1664
  %27 = icmp eq i32 %26, 19, !dbg !1664
  br i1 %27, label %28, label %37, !dbg !1664

; <label>:28                                      ; preds = %18
  %29 = load %struct.expdesc** %4, align 4, !dbg !1666
  %30 = getelementptr inbounds %struct.expdesc* %29, i32 0, i32 0, !dbg !1666
  store i32 6, i32* %30, align 4, !dbg !1666
  %31 = getelementptr inbounds %struct.lua_TValue* %res, i32 0, i32 0, !dbg !1668
  %32 = bitcast %union.Value* %31 to i64*, !dbg !1668
  %33 = load i64* %32, align 8, !dbg !1668
  %34 = load %struct.expdesc** %4, align 4, !dbg !1668
  %35 = getelementptr inbounds %struct.expdesc* %34, i32 0, i32 1, !dbg !1668
  %36 = bitcast %union.anon.4* %35 to i64*, !dbg !1668
  store i64 %33, i64* %36, align 8, !dbg !1668
  br label %55, !dbg !1669

; <label>:37                                      ; preds = %18
  call void @llvm.dbg.declare(metadata !{double* %n}, metadata !1670), !dbg !1672
  %38 = getelementptr inbounds %struct.lua_TValue* %res, i32 0, i32 0, !dbg !1673
  %39 = bitcast %union.Value* %38 to double*, !dbg !1673
  %40 = load double* %39, align 8, !dbg !1673
  store double %40, double* %n, align 8, !dbg !1673
  %41 = load double* %n, align 8, !dbg !1674
  %42 = load double* %n, align 8, !dbg !1674
  %43 = fcmp oeq double %41, %42, !dbg !1674
  br i1 %43, label %44, label %47, !dbg !1674

; <label>:44                                      ; preds = %37
  %45 = load double* %n, align 8, !dbg !1676
  %46 = fcmp oeq double %45, 0.000000e+00, !dbg !1676
  br i1 %46, label %47, label %48, !dbg !1676

; <label>:47                                      ; preds = %44, %37
  store i32 0, i32* %1, !dbg !1678
  br label %56, !dbg !1678

; <label>:48                                      ; preds = %44
  %49 = load %struct.expdesc** %4, align 4, !dbg !1679
  %50 = getelementptr inbounds %struct.expdesc* %49, i32 0, i32 0, !dbg !1679
  store i32 5, i32* %50, align 4, !dbg !1679
  %51 = load double* %n, align 8, !dbg !1680
  %52 = load %struct.expdesc** %4, align 4, !dbg !1680
  %53 = getelementptr inbounds %struct.expdesc* %52, i32 0, i32 1, !dbg !1680
  %54 = bitcast %union.anon.4* %53 to double*, !dbg !1680
  store double %51, double* %54, align 8, !dbg !1680
  br label %55

; <label>:55                                      ; preds = %48, %28
  store i32 1, i32* %1, !dbg !1681
  br label %56, !dbg !1681

; <label>:56                                      ; preds = %55, %47, %17
  %57 = load i32* %1, !dbg !1682
  ret i32 %57, !dbg !1682
}

; Function Attrs: nounwind
define internal void @codeunexpval(%struct.FuncState* %fs, i32 %op, %struct.expdesc* %e, i32 %line) #0 {
  %1 = alloca %struct.FuncState*, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.expdesc*, align 4
  %4 = alloca i32, align 4
  %r = alloca i32, align 4
  store %struct.FuncState* %fs, %struct.FuncState** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.FuncState** %1}, metadata !1683), !dbg !1684
  store i32 %op, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !1685), !dbg !1686
  store %struct.expdesc* %e, %struct.expdesc** %3, align 4
  call void @llvm.dbg.declare(metadata !{%struct.expdesc** %3}, metadata !1687), !dbg !1688
  store i32 %line, i32* %4, align 4
  call void @llvm.dbg.declare(metadata !{i32* %4}, metadata !1689), !dbg !1690
  call void @llvm.dbg.declare(metadata !{i32* %r}, metadata !1691), !dbg !1692
  %5 = load %struct.FuncState** %1, align 4, !dbg !1693
  %6 = load %struct.expdesc** %3, align 4, !dbg !1693
  %7 = call i32 @luaK_exp2anyreg(%struct.FuncState* %5, %struct.expdesc* %6), !dbg !1693
  store i32 %7, i32* %r, align 4, !dbg !1693
  %8 = load %struct.FuncState** %1, align 4, !dbg !1694
  %9 = load %struct.expdesc** %3, align 4, !dbg !1694
  call void @freeexp(%struct.FuncState* %8, %struct.expdesc* %9), !dbg !1694
  %10 = load %struct.FuncState** %1, align 4, !dbg !1695
  %11 = load i32* %2, align 4, !dbg !1695
  %12 = load i32* %r, align 4, !dbg !1695
  %13 = call i32 @luaK_codeABC(%struct.FuncState* %10, i32 %11, i32 0, i32 %12, i32 0), !dbg !1695
  %14 = load %struct.expdesc** %3, align 4, !dbg !1695
  %15 = getelementptr inbounds %struct.expdesc* %14, i32 0, i32 1, !dbg !1695
  %16 = bitcast %union.anon.4* %15 to i32*, !dbg !1695
  store i32 %13, i32* %16, align 4, !dbg !1695
  %17 = load %struct.expdesc** %3, align 4, !dbg !1696
  %18 = getelementptr inbounds %struct.expdesc* %17, i32 0, i32 0, !dbg !1696
  store i32 12, i32* %18, align 4, !dbg !1696
  %19 = load %struct.FuncState** %1, align 4, !dbg !1697
  %20 = load i32* %4, align 4, !dbg !1697
  call void @luaK_fixline(%struct.FuncState* %19, i32 %20), !dbg !1697
  ret void, !dbg !1698
}

; Function Attrs: nounwind
define internal void @codenot(%struct.FuncState* %fs, %struct.expdesc* %e) #0 {
  %1 = alloca %struct.FuncState*, align 4
  %2 = alloca %struct.expdesc*, align 4
  %temp = alloca i32, align 4
  store %struct.FuncState* %fs, %struct.FuncState** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.FuncState** %1}, metadata !1699), !dbg !1700
  store %struct.expdesc* %e, %struct.expdesc** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.expdesc** %2}, metadata !1701), !dbg !1702
  %3 = load %struct.FuncState** %1, align 4, !dbg !1703
  %4 = load %struct.expdesc** %2, align 4, !dbg !1703
  call void @luaK_dischargevars(%struct.FuncState* %3, %struct.expdesc* %4), !dbg !1703
  %5 = load %struct.expdesc** %2, align 4, !dbg !1704
  %6 = getelementptr inbounds %struct.expdesc* %5, i32 0, i32 0, !dbg !1704
  %7 = load i32* %6, align 4, !dbg !1704
  switch i32 %7, label %33 [
    i32 1, label %8
    i32 3, label %8
    i32 4, label %11
    i32 5, label %11
    i32 6, label %11
    i32 2, label %11
    i32 11, label %14
    i32 12, label %17
    i32 7, label %17
  ], !dbg !1704

; <label>:8                                       ; preds = %0, %0
  %9 = load %struct.expdesc** %2, align 4, !dbg !1705
  %10 = getelementptr inbounds %struct.expdesc* %9, i32 0, i32 0, !dbg !1705
  store i32 2, i32* %10, align 4, !dbg !1705
  br label %34, !dbg !1708

; <label>:11                                      ; preds = %0, %0, %0, %0
  %12 = load %struct.expdesc** %2, align 4, !dbg !1709
  %13 = getelementptr inbounds %struct.expdesc* %12, i32 0, i32 0, !dbg !1709
  store i32 3, i32* %13, align 4, !dbg !1709
  br label %34, !dbg !1711

; <label>:14                                      ; preds = %0
  %15 = load %struct.FuncState** %1, align 4, !dbg !1712
  %16 = load %struct.expdesc** %2, align 4, !dbg !1712
  call void @negatecondition(%struct.FuncState* %15, %struct.expdesc* %16), !dbg !1712
  br label %34, !dbg !1714

; <label>:17                                      ; preds = %0, %0
  %18 = load %struct.FuncState** %1, align 4, !dbg !1715
  %19 = load %struct.expdesc** %2, align 4, !dbg !1715
  call void @discharge2anyreg(%struct.FuncState* %18, %struct.expdesc* %19), !dbg !1715
  %20 = load %struct.FuncState** %1, align 4, !dbg !1717
  %21 = load %struct.expdesc** %2, align 4, !dbg !1717
  call void @freeexp(%struct.FuncState* %20, %struct.expdesc* %21), !dbg !1717
  %22 = load %struct.FuncState** %1, align 4, !dbg !1718
  %23 = load %struct.expdesc** %2, align 4, !dbg !1718
  %24 = getelementptr inbounds %struct.expdesc* %23, i32 0, i32 1, !dbg !1718
  %25 = bitcast %union.anon.4* %24 to i32*, !dbg !1718
  %26 = load i32* %25, align 4, !dbg !1718
  %27 = call i32 @luaK_codeABC(%struct.FuncState* %22, i32 27, i32 0, i32 %26, i32 0), !dbg !1718
  %28 = load %struct.expdesc** %2, align 4, !dbg !1718
  %29 = getelementptr inbounds %struct.expdesc* %28, i32 0, i32 1, !dbg !1718
  %30 = bitcast %union.anon.4* %29 to i32*, !dbg !1718
  store i32 %27, i32* %30, align 4, !dbg !1718
  %31 = load %struct.expdesc** %2, align 4, !dbg !1719
  %32 = getelementptr inbounds %struct.expdesc* %31, i32 0, i32 0, !dbg !1719
  store i32 12, i32* %32, align 4, !dbg !1719
  br label %34, !dbg !1720

; <label>:33                                      ; preds = %0
  br label %34, !dbg !1721

; <label>:34                                      ; preds = %33, %17, %14, %11, %8
  call void @llvm.dbg.declare(metadata !{i32* %temp}, metadata !1722), !dbg !1724
  %35 = load %struct.expdesc** %2, align 4, !dbg !1725
  %36 = getelementptr inbounds %struct.expdesc* %35, i32 0, i32 3, !dbg !1725
  %37 = load i32* %36, align 4, !dbg !1725
  store i32 %37, i32* %temp, align 4, !dbg !1725
  %38 = load %struct.expdesc** %2, align 4, !dbg !1726
  %39 = getelementptr inbounds %struct.expdesc* %38, i32 0, i32 2, !dbg !1726
  %40 = load i32* %39, align 4, !dbg !1726
  %41 = load %struct.expdesc** %2, align 4, !dbg !1726
  %42 = getelementptr inbounds %struct.expdesc* %41, i32 0, i32 3, !dbg !1726
  store i32 %40, i32* %42, align 4, !dbg !1726
  %43 = load i32* %temp, align 4, !dbg !1727
  %44 = load %struct.expdesc** %2, align 4, !dbg !1727
  %45 = getelementptr inbounds %struct.expdesc* %44, i32 0, i32 2, !dbg !1727
  store i32 %43, i32* %45, align 4, !dbg !1727
  %46 = load %struct.FuncState** %1, align 4, !dbg !1728
  %47 = load %struct.expdesc** %2, align 4, !dbg !1728
  %48 = getelementptr inbounds %struct.expdesc* %47, i32 0, i32 3, !dbg !1728
  %49 = load i32* %48, align 4, !dbg !1728
  call void @removevalues(%struct.FuncState* %46, i32 %49), !dbg !1728
  %50 = load %struct.FuncState** %1, align 4, !dbg !1729
  %51 = load %struct.expdesc** %2, align 4, !dbg !1729
  %52 = getelementptr inbounds %struct.expdesc* %51, i32 0, i32 2, !dbg !1729
  %53 = load i32* %52, align 4, !dbg !1729
  call void @removevalues(%struct.FuncState* %50, i32 %53), !dbg !1729
  ret void, !dbg !1730
}

; Function Attrs: nounwind
define hidden void @luaK_infix(%struct.FuncState* %fs, i32 %op, %struct.expdesc* %v) #0 {
  %1 = alloca %struct.FuncState*, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.expdesc*, align 4
  store %struct.FuncState* %fs, %struct.FuncState** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.FuncState** %1}, metadata !1731), !dbg !1732
  store i32 %op, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !1733), !dbg !1734
  store %struct.expdesc* %v, %struct.expdesc** %3, align 4
  call void @llvm.dbg.declare(metadata !{%struct.expdesc** %3}, metadata !1735), !dbg !1736
  %4 = load i32* %2, align 4, !dbg !1737
  switch i32 %4, label %23 [
    i32 19, label %5
    i32 20, label %8
    i32 12, label %11
    i32 0, label %14
    i32 1, label %14
    i32 2, label %14
    i32 5, label %14
    i32 6, label %14
    i32 3, label %14
    i32 4, label %14
    i32 7, label %14
    i32 8, label %14
    i32 9, label %14
    i32 10, label %14
    i32 11, label %14
  ], !dbg !1737

; <label>:5                                       ; preds = %0
  %6 = load %struct.FuncState** %1, align 4, !dbg !1738
  %7 = load %struct.expdesc** %3, align 4, !dbg !1738
  call void @luaK_goiftrue(%struct.FuncState* %6, %struct.expdesc* %7), !dbg !1738
  br label %27, !dbg !1741

; <label>:8                                       ; preds = %0
  %9 = load %struct.FuncState** %1, align 4, !dbg !1742
  %10 = load %struct.expdesc** %3, align 4, !dbg !1742
  call void @luaK_goiffalse(%struct.FuncState* %9, %struct.expdesc* %10), !dbg !1742
  br label %27, !dbg !1744

; <label>:11                                      ; preds = %0
  %12 = load %struct.FuncState** %1, align 4, !dbg !1745
  %13 = load %struct.expdesc** %3, align 4, !dbg !1745
  call void @luaK_exp2nextreg(%struct.FuncState* %12, %struct.expdesc* %13), !dbg !1745
  br label %27, !dbg !1747

; <label>:14                                      ; preds = %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0
  %15 = load %struct.expdesc** %3, align 4, !dbg !1748
  %16 = call i32 @tonumeral(%struct.expdesc* %15, %struct.lua_TValue* null), !dbg !1748
  %17 = icmp ne i32 %16, 0, !dbg !1748
  br i1 %17, label %22, label %18, !dbg !1748

; <label>:18                                      ; preds = %14
  %19 = load %struct.FuncState** %1, align 4, !dbg !1751
  %20 = load %struct.expdesc** %3, align 4, !dbg !1751
  %21 = call i32 @luaK_exp2RK(%struct.FuncState* %19, %struct.expdesc* %20), !dbg !1751
  br label %22, !dbg !1751

; <label>:22                                      ; preds = %18, %14
  br label %27, !dbg !1752

; <label>:23                                      ; preds = %0
  %24 = load %struct.FuncState** %1, align 4, !dbg !1753
  %25 = load %struct.expdesc** %3, align 4, !dbg !1753
  %26 = call i32 @luaK_exp2RK(%struct.FuncState* %24, %struct.expdesc* %25), !dbg !1753
  br label %27, !dbg !1755

; <label>:27                                      ; preds = %23, %22, %11, %8, %5
  ret void, !dbg !1756
}

; Function Attrs: nounwind
define internal i32 @tonumeral(%struct.expdesc* %e, %struct.lua_TValue* %v) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.expdesc*, align 4
  %3 = alloca %struct.lua_TValue*, align 4
  %io = alloca %struct.lua_TValue*, align 4
  %io1 = alloca %struct.lua_TValue*, align 4
  store %struct.expdesc* %e, %struct.expdesc** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.expdesc** %2}, metadata !1757), !dbg !1758
  store %struct.lua_TValue* %v, %struct.lua_TValue** %3, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %3}, metadata !1759), !dbg !1760
  %4 = load %struct.expdesc** %2, align 4, !dbg !1761
  %5 = getelementptr inbounds %struct.expdesc* %4, i32 0, i32 2, !dbg !1761
  %6 = load i32* %5, align 4, !dbg !1761
  %7 = load %struct.expdesc** %2, align 4, !dbg !1761
  %8 = getelementptr inbounds %struct.expdesc* %7, i32 0, i32 3, !dbg !1761
  %9 = load i32* %8, align 4, !dbg !1761
  %10 = icmp ne i32 %6, %9, !dbg !1761
  br i1 %10, label %11, label %12, !dbg !1761

; <label>:11                                      ; preds = %0
  store i32 0, i32* %1, !dbg !1763
  br label %47, !dbg !1763

; <label>:12                                      ; preds = %0
  %13 = load %struct.expdesc** %2, align 4, !dbg !1764
  %14 = getelementptr inbounds %struct.expdesc* %13, i32 0, i32 0, !dbg !1764
  %15 = load i32* %14, align 4, !dbg !1764
  switch i32 %15, label %46 [
    i32 6, label %16
    i32 5, label %31
  ], !dbg !1764

; <label>:16                                      ; preds = %12
  %17 = load %struct.lua_TValue** %3, align 4, !dbg !1765
  %18 = icmp ne %struct.lua_TValue* %17, null, !dbg !1765
  br i1 %18, label %19, label %30, !dbg !1765

; <label>:19                                      ; preds = %16
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %io}, metadata !1768), !dbg !1770
  %20 = load %struct.lua_TValue** %3, align 4, !dbg !1771
  store %struct.lua_TValue* %20, %struct.lua_TValue** %io, align 4, !dbg !1771
  %21 = load %struct.expdesc** %2, align 4, !dbg !1771
  %22 = getelementptr inbounds %struct.expdesc* %21, i32 0, i32 1, !dbg !1771
  %23 = bitcast %union.anon.4* %22 to i64*, !dbg !1771
  %24 = load i64* %23, align 8, !dbg !1771
  %25 = load %struct.lua_TValue** %io, align 4, !dbg !1771
  %26 = getelementptr inbounds %struct.lua_TValue* %25, i32 0, i32 0, !dbg !1771
  %27 = bitcast %union.Value* %26 to i64*, !dbg !1771
  store i64 %24, i64* %27, align 8, !dbg !1771
  %28 = load %struct.lua_TValue** %io, align 4, !dbg !1771
  %29 = getelementptr inbounds %struct.lua_TValue* %28, i32 0, i32 1, !dbg !1771
  store i32 19, i32* %29, align 4, !dbg !1771
  br label %30, !dbg !1771

; <label>:30                                      ; preds = %19, %16
  store i32 1, i32* %1, !dbg !1773
  br label %47, !dbg !1773

; <label>:31                                      ; preds = %12
  %32 = load %struct.lua_TValue** %3, align 4, !dbg !1774
  %33 = icmp ne %struct.lua_TValue* %32, null, !dbg !1774
  br i1 %33, label %34, label %45, !dbg !1774

; <label>:34                                      ; preds = %31
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %io1}, metadata !1776), !dbg !1778
  %35 = load %struct.lua_TValue** %3, align 4, !dbg !1779
  store %struct.lua_TValue* %35, %struct.lua_TValue** %io1, align 4, !dbg !1779
  %36 = load %struct.expdesc** %2, align 4, !dbg !1779
  %37 = getelementptr inbounds %struct.expdesc* %36, i32 0, i32 1, !dbg !1779
  %38 = bitcast %union.anon.4* %37 to double*, !dbg !1779
  %39 = load double* %38, align 8, !dbg !1779
  %40 = load %struct.lua_TValue** %io1, align 4, !dbg !1779
  %41 = getelementptr inbounds %struct.lua_TValue* %40, i32 0, i32 0, !dbg !1779
  %42 = bitcast %union.Value* %41 to double*, !dbg !1779
  store double %39, double* %42, align 8, !dbg !1779
  %43 = load %struct.lua_TValue** %io1, align 4, !dbg !1779
  %44 = getelementptr inbounds %struct.lua_TValue* %43, i32 0, i32 1, !dbg !1779
  store i32 3, i32* %44, align 4, !dbg !1779
  br label %45, !dbg !1779

; <label>:45                                      ; preds = %34, %31
  store i32 1, i32* %1, !dbg !1781
  br label %47, !dbg !1781

; <label>:46                                      ; preds = %12
  store i32 0, i32* %1, !dbg !1782
  br label %47, !dbg !1782

; <label>:47                                      ; preds = %46, %45, %30, %11
  %48 = load i32* %1, !dbg !1783
  ret i32 %48, !dbg !1783
}

; Function Attrs: nounwind
define hidden void @luaK_posfix(%struct.FuncState* %fs, i32 %op, %struct.expdesc* %e1, %struct.expdesc* %e2, i32 %line) #0 {
  %1 = alloca %struct.FuncState*, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.expdesc*, align 4
  %4 = alloca %struct.expdesc*, align 4
  %5 = alloca i32, align 4
  store %struct.FuncState* %fs, %struct.FuncState** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.FuncState** %1}, metadata !1784), !dbg !1785
  store i32 %op, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !1786), !dbg !1787
  store %struct.expdesc* %e1, %struct.expdesc** %3, align 4
  call void @llvm.dbg.declare(metadata !{%struct.expdesc** %3}, metadata !1788), !dbg !1789
  store %struct.expdesc* %e2, %struct.expdesc** %4, align 4
  call void @llvm.dbg.declare(metadata !{%struct.expdesc** %4}, metadata !1790), !dbg !1791
  store i32 %line, i32* %5, align 4
  call void @llvm.dbg.declare(metadata !{i32* %5}, metadata !1792), !dbg !1793
  %6 = load i32* %2, align 4, !dbg !1794
  switch i32 %6, label %125 [
    i32 19, label %7
    i32 20, label %20
    i32 12, label %33
    i32 0, label %104
    i32 1, label %104
    i32 2, label %104
    i32 5, label %104
    i32 6, label %104
    i32 3, label %104
    i32 4, label %104
    i32 7, label %104
    i32 8, label %104
    i32 9, label %104
    i32 10, label %104
    i32 11, label %104
    i32 13, label %120
    i32 14, label %120
    i32 15, label %120
    i32 16, label %120
    i32 17, label %120
    i32 18, label %120
  ], !dbg !1794

; <label>:7                                       ; preds = %0
  %8 = load %struct.FuncState** %1, align 4, !dbg !1795
  %9 = load %struct.expdesc** %4, align 4, !dbg !1795
  call void @luaK_dischargevars(%struct.FuncState* %8, %struct.expdesc* %9), !dbg !1795
  %10 = load %struct.FuncState** %1, align 4, !dbg !1798
  %11 = load %struct.expdesc** %4, align 4, !dbg !1798
  %12 = getelementptr inbounds %struct.expdesc* %11, i32 0, i32 3, !dbg !1798
  %13 = load %struct.expdesc** %3, align 4, !dbg !1798
  %14 = getelementptr inbounds %struct.expdesc* %13, i32 0, i32 3, !dbg !1798
  %15 = load i32* %14, align 4, !dbg !1798
  call void @luaK_concat(%struct.FuncState* %10, i32* %12, i32 %15), !dbg !1798
  %16 = load %struct.expdesc** %3, align 4, !dbg !1799
  %17 = load %struct.expdesc** %4, align 4, !dbg !1799
  %18 = bitcast %struct.expdesc* %16 to i8*, !dbg !1799
  %19 = bitcast %struct.expdesc* %17 to i8*, !dbg !1799
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %18, i8* %19, i32 24, i32 8, i1 false), !dbg !1799
  br label %126, !dbg !1800

; <label>:20                                      ; preds = %0
  %21 = load %struct.FuncState** %1, align 4, !dbg !1801
  %22 = load %struct.expdesc** %4, align 4, !dbg !1801
  call void @luaK_dischargevars(%struct.FuncState* %21, %struct.expdesc* %22), !dbg !1801
  %23 = load %struct.FuncState** %1, align 4, !dbg !1803
  %24 = load %struct.expdesc** %4, align 4, !dbg !1803
  %25 = getelementptr inbounds %struct.expdesc* %24, i32 0, i32 2, !dbg !1803
  %26 = load %struct.expdesc** %3, align 4, !dbg !1803
  %27 = getelementptr inbounds %struct.expdesc* %26, i32 0, i32 2, !dbg !1803
  %28 = load i32* %27, align 4, !dbg !1803
  call void @luaK_concat(%struct.FuncState* %23, i32* %25, i32 %28), !dbg !1803
  %29 = load %struct.expdesc** %3, align 4, !dbg !1804
  %30 = load %struct.expdesc** %4, align 4, !dbg !1804
  %31 = bitcast %struct.expdesc* %29 to i8*, !dbg !1804
  %32 = bitcast %struct.expdesc* %30 to i8*, !dbg !1804
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %31, i8* %32, i32 24, i32 8, i1 false), !dbg !1804
  br label %126, !dbg !1805

; <label>:33                                      ; preds = %0
  %34 = load %struct.FuncState** %1, align 4, !dbg !1806
  %35 = load %struct.expdesc** %4, align 4, !dbg !1806
  call void @luaK_exp2val(%struct.FuncState* %34, %struct.expdesc* %35), !dbg !1806
  %36 = load %struct.expdesc** %4, align 4, !dbg !1808
  %37 = getelementptr inbounds %struct.expdesc* %36, i32 0, i32 0, !dbg !1808
  %38 = load i32* %37, align 4, !dbg !1808
  %39 = icmp eq i32 %38, 12, !dbg !1808
  br i1 %39, label %40, label %96, !dbg !1808

; <label>:40                                      ; preds = %33
  %41 = load %struct.expdesc** %4, align 4, !dbg !1810
  %42 = getelementptr inbounds %struct.expdesc* %41, i32 0, i32 1, !dbg !1810
  %43 = bitcast %union.anon.4* %42 to i32*, !dbg !1810
  %44 = load i32* %43, align 4, !dbg !1810
  %45 = load %struct.FuncState** %1, align 4, !dbg !1810
  %46 = getelementptr inbounds %struct.FuncState* %45, i32 0, i32 0, !dbg !1810
  %47 = load %struct.Proto** %46, align 4, !dbg !1810
  %48 = getelementptr inbounds %struct.Proto* %47, i32 0, i32 15, !dbg !1810
  %49 = load i32** %48, align 4, !dbg !1810
  %50 = getelementptr inbounds i32* %49, i32 %44, !dbg !1810
  %51 = load i32* %50, align 4, !dbg !1810
  %52 = lshr i32 %51, 0, !dbg !1810
  %53 = and i32 %52, 63, !dbg !1810
  %54 = icmp eq i32 %53, 29, !dbg !1810
  br i1 %54, label %55, label %96, !dbg !1810

; <label>:55                                      ; preds = %40
  %56 = load %struct.FuncState** %1, align 4, !dbg !1812
  %57 = load %struct.expdesc** %3, align 4, !dbg !1812
  call void @freeexp(%struct.FuncState* %56, %struct.expdesc* %57), !dbg !1812
  %58 = load %struct.expdesc** %4, align 4, !dbg !1814
  %59 = getelementptr inbounds %struct.expdesc* %58, i32 0, i32 1, !dbg !1814
  %60 = bitcast %union.anon.4* %59 to i32*, !dbg !1814
  %61 = load i32* %60, align 4, !dbg !1814
  %62 = load %struct.FuncState** %1, align 4, !dbg !1814
  %63 = getelementptr inbounds %struct.FuncState* %62, i32 0, i32 0, !dbg !1814
  %64 = load %struct.Proto** %63, align 4, !dbg !1814
  %65 = getelementptr inbounds %struct.Proto* %64, i32 0, i32 15, !dbg !1814
  %66 = load i32** %65, align 4, !dbg !1814
  %67 = getelementptr inbounds i32* %66, i32 %61, !dbg !1814
  %68 = load i32* %67, align 4, !dbg !1814
  %69 = and i32 %68, 8388607, !dbg !1814
  %70 = load %struct.expdesc** %3, align 4, !dbg !1814
  %71 = getelementptr inbounds %struct.expdesc* %70, i32 0, i32 1, !dbg !1814
  %72 = bitcast %union.anon.4* %71 to i32*, !dbg !1814
  %73 = load i32* %72, align 4, !dbg !1814
  %74 = shl i32 %73, 23, !dbg !1814
  %75 = and i32 %74, -8388608, !dbg !1814
  %76 = or i32 %69, %75, !dbg !1814
  %77 = load %struct.expdesc** %4, align 4, !dbg !1814
  %78 = getelementptr inbounds %struct.expdesc* %77, i32 0, i32 1, !dbg !1814
  %79 = bitcast %union.anon.4* %78 to i32*, !dbg !1814
  %80 = load i32* %79, align 4, !dbg !1814
  %81 = load %struct.FuncState** %1, align 4, !dbg !1814
  %82 = getelementptr inbounds %struct.FuncState* %81, i32 0, i32 0, !dbg !1814
  %83 = load %struct.Proto** %82, align 4, !dbg !1814
  %84 = getelementptr inbounds %struct.Proto* %83, i32 0, i32 15, !dbg !1814
  %85 = load i32** %84, align 4, !dbg !1814
  %86 = getelementptr inbounds i32* %85, i32 %80, !dbg !1814
  store i32 %76, i32* %86, align 4, !dbg !1814
  %87 = load %struct.expdesc** %3, align 4, !dbg !1815
  %88 = getelementptr inbounds %struct.expdesc* %87, i32 0, i32 0, !dbg !1815
  store i32 12, i32* %88, align 4, !dbg !1815
  %89 = load %struct.expdesc** %4, align 4, !dbg !1816
  %90 = getelementptr inbounds %struct.expdesc* %89, i32 0, i32 1, !dbg !1816
  %91 = bitcast %union.anon.4* %90 to i32*, !dbg !1816
  %92 = load i32* %91, align 4, !dbg !1816
  %93 = load %struct.expdesc** %3, align 4, !dbg !1816
  %94 = getelementptr inbounds %struct.expdesc* %93, i32 0, i32 1, !dbg !1816
  %95 = bitcast %union.anon.4* %94 to i32*, !dbg !1816
  store i32 %92, i32* %95, align 4, !dbg !1816
  br label %103, !dbg !1817

; <label>:96                                      ; preds = %40, %33
  %97 = load %struct.FuncState** %1, align 4, !dbg !1818
  %98 = load %struct.expdesc** %4, align 4, !dbg !1818
  call void @luaK_exp2nextreg(%struct.FuncState* %97, %struct.expdesc* %98), !dbg !1818
  %99 = load %struct.FuncState** %1, align 4, !dbg !1820
  %100 = load %struct.expdesc** %3, align 4, !dbg !1820
  %101 = load %struct.expdesc** %4, align 4, !dbg !1820
  %102 = load i32* %5, align 4, !dbg !1820
  call void @codebinexpval(%struct.FuncState* %99, i32 29, %struct.expdesc* %100, %struct.expdesc* %101, i32 %102), !dbg !1820
  br label %103

; <label>:103                                     ; preds = %96, %55
  br label %126, !dbg !1821

; <label>:104                                     ; preds = %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0
  %105 = load %struct.FuncState** %1, align 4, !dbg !1822
  %106 = load i32* %2, align 4, !dbg !1822
  %107 = add i32 %106, 0, !dbg !1822
  %108 = load %struct.expdesc** %3, align 4, !dbg !1822
  %109 = load %struct.expdesc** %4, align 4, !dbg !1822
  %110 = call i32 @constfolding(%struct.FuncState* %105, i32 %107, %struct.expdesc* %108, %struct.expdesc* %109), !dbg !1822
  %111 = icmp ne i32 %110, 0, !dbg !1822
  br i1 %111, label %119, label %112, !dbg !1822

; <label>:112                                     ; preds = %104
  %113 = load %struct.FuncState** %1, align 4, !dbg !1825
  %114 = load i32* %2, align 4, !dbg !1825
  %115 = add i32 %114, 13, !dbg !1825
  %116 = load %struct.expdesc** %3, align 4, !dbg !1825
  %117 = load %struct.expdesc** %4, align 4, !dbg !1825
  %118 = load i32* %5, align 4, !dbg !1825
  call void @codebinexpval(%struct.FuncState* %113, i32 %115, %struct.expdesc* %116, %struct.expdesc* %117, i32 %118), !dbg !1825
  br label %119, !dbg !1825

; <label>:119                                     ; preds = %112, %104
  br label %126, !dbg !1826

; <label>:120                                     ; preds = %0, %0, %0, %0, %0, %0
  %121 = load %struct.FuncState** %1, align 4, !dbg !1827
  %122 = load i32* %2, align 4, !dbg !1827
  %123 = load %struct.expdesc** %3, align 4, !dbg !1827
  %124 = load %struct.expdesc** %4, align 4, !dbg !1827
  call void @codecomp(%struct.FuncState* %121, i32 %122, %struct.expdesc* %123, %struct.expdesc* %124), !dbg !1827
  br label %126, !dbg !1829

; <label>:125                                     ; preds = %0
  br label %126, !dbg !1830

; <label>:126                                     ; preds = %125, %120, %119, %103, %20, %7
  ret void, !dbg !1831
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture, i8* nocapture readonly, i32, i32, i1) #3

; Function Attrs: nounwind
define internal void @codebinexpval(%struct.FuncState* %fs, i32 %op, %struct.expdesc* %e1, %struct.expdesc* %e2, i32 %line) #0 {
  %1 = alloca %struct.FuncState*, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.expdesc*, align 4
  %4 = alloca %struct.expdesc*, align 4
  %5 = alloca i32, align 4
  %rk1 = alloca i32, align 4
  %rk2 = alloca i32, align 4
  store %struct.FuncState* %fs, %struct.FuncState** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.FuncState** %1}, metadata !1832), !dbg !1833
  store i32 %op, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !1834), !dbg !1835
  store %struct.expdesc* %e1, %struct.expdesc** %3, align 4
  call void @llvm.dbg.declare(metadata !{%struct.expdesc** %3}, metadata !1836), !dbg !1837
  store %struct.expdesc* %e2, %struct.expdesc** %4, align 4
  call void @llvm.dbg.declare(metadata !{%struct.expdesc** %4}, metadata !1838), !dbg !1839
  store i32 %line, i32* %5, align 4
  call void @llvm.dbg.declare(metadata !{i32* %5}, metadata !1840), !dbg !1841
  call void @llvm.dbg.declare(metadata !{i32* %rk1}, metadata !1842), !dbg !1843
  %6 = load %struct.FuncState** %1, align 4, !dbg !1844
  %7 = load %struct.expdesc** %3, align 4, !dbg !1844
  %8 = call i32 @luaK_exp2RK(%struct.FuncState* %6, %struct.expdesc* %7), !dbg !1844
  store i32 %8, i32* %rk1, align 4, !dbg !1844
  call void @llvm.dbg.declare(metadata !{i32* %rk2}, metadata !1845), !dbg !1846
  %9 = load %struct.FuncState** %1, align 4, !dbg !1847
  %10 = load %struct.expdesc** %4, align 4, !dbg !1847
  %11 = call i32 @luaK_exp2RK(%struct.FuncState* %9, %struct.expdesc* %10), !dbg !1847
  store i32 %11, i32* %rk2, align 4, !dbg !1847
  %12 = load %struct.FuncState** %1, align 4, !dbg !1848
  %13 = load %struct.expdesc** %3, align 4, !dbg !1848
  %14 = load %struct.expdesc** %4, align 4, !dbg !1848
  call void @freeexps(%struct.FuncState* %12, %struct.expdesc* %13, %struct.expdesc* %14), !dbg !1848
  %15 = load %struct.FuncState** %1, align 4, !dbg !1849
  %16 = load i32* %2, align 4, !dbg !1849
  %17 = load i32* %rk1, align 4, !dbg !1849
  %18 = load i32* %rk2, align 4, !dbg !1849
  %19 = call i32 @luaK_codeABC(%struct.FuncState* %15, i32 %16, i32 0, i32 %17, i32 %18), !dbg !1849
  %20 = load %struct.expdesc** %3, align 4, !dbg !1849
  %21 = getelementptr inbounds %struct.expdesc* %20, i32 0, i32 1, !dbg !1849
  %22 = bitcast %union.anon.4* %21 to i32*, !dbg !1849
  store i32 %19, i32* %22, align 4, !dbg !1849
  %23 = load %struct.expdesc** %3, align 4, !dbg !1850
  %24 = getelementptr inbounds %struct.expdesc* %23, i32 0, i32 0, !dbg !1850
  store i32 12, i32* %24, align 4, !dbg !1850
  %25 = load %struct.FuncState** %1, align 4, !dbg !1851
  %26 = load i32* %5, align 4, !dbg !1851
  call void @luaK_fixline(%struct.FuncState* %25, i32 %26), !dbg !1851
  ret void, !dbg !1852
}

; Function Attrs: nounwind
define internal void @codecomp(%struct.FuncState* %fs, i32 %opr, %struct.expdesc* %e1, %struct.expdesc* %e2) #0 {
  %1 = alloca %struct.FuncState*, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.expdesc*, align 4
  %4 = alloca %struct.expdesc*, align 4
  %rk1 = alloca i32, align 4
  %rk2 = alloca i32, align 4
  %op = alloca i32, align 4
  %op1 = alloca i32, align 4
  store %struct.FuncState* %fs, %struct.FuncState** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.FuncState** %1}, metadata !1853), !dbg !1854
  store i32 %opr, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !1855), !dbg !1856
  store %struct.expdesc* %e1, %struct.expdesc** %3, align 4
  call void @llvm.dbg.declare(metadata !{%struct.expdesc** %3}, metadata !1857), !dbg !1858
  store %struct.expdesc* %e2, %struct.expdesc** %4, align 4
  call void @llvm.dbg.declare(metadata !{%struct.expdesc** %4}, metadata !1859), !dbg !1860
  call void @llvm.dbg.declare(metadata !{i32* %rk1}, metadata !1861), !dbg !1862
  %5 = load %struct.expdesc** %3, align 4, !dbg !1863
  %6 = getelementptr inbounds %struct.expdesc* %5, i32 0, i32 0, !dbg !1863
  %7 = load i32* %6, align 4, !dbg !1863
  %8 = icmp eq i32 %7, 4, !dbg !1863
  br i1 %8, label %9, label %15, !dbg !1863

; <label>:9                                       ; preds = %0
  %10 = load %struct.expdesc** %3, align 4, !dbg !1864
  %11 = getelementptr inbounds %struct.expdesc* %10, i32 0, i32 1, !dbg !1864
  %12 = bitcast %union.anon.4* %11 to i32*, !dbg !1864
  %13 = load i32* %12, align 4, !dbg !1864
  %14 = or i32 %13, 256, !dbg !1864
  br label %20, !dbg !1864

; <label>:15                                      ; preds = %0
  %16 = load %struct.expdesc** %3, align 4, !dbg !1866
  %17 = getelementptr inbounds %struct.expdesc* %16, i32 0, i32 1, !dbg !1866
  %18 = bitcast %union.anon.4* %17 to i32*, !dbg !1866
  %19 = load i32* %18, align 4, !dbg !1866
  br label %20, !dbg !1866

; <label>:20                                      ; preds = %15, %9
  %21 = phi i32 [ %14, %9 ], [ %19, %15 ], !dbg !1863
  store i32 %21, i32* %rk1, align 4, !dbg !1868
  call void @llvm.dbg.declare(metadata !{i32* %rk2}, metadata !1871), !dbg !1872
  %22 = load %struct.FuncState** %1, align 4, !dbg !1873
  %23 = load %struct.expdesc** %4, align 4, !dbg !1873
  %24 = call i32 @luaK_exp2RK(%struct.FuncState* %22, %struct.expdesc* %23), !dbg !1873
  store i32 %24, i32* %rk2, align 4, !dbg !1873
  %25 = load %struct.FuncState** %1, align 4, !dbg !1874
  %26 = load %struct.expdesc** %3, align 4, !dbg !1874
  %27 = load %struct.expdesc** %4, align 4, !dbg !1874
  call void @freeexps(%struct.FuncState* %25, %struct.expdesc* %26, %struct.expdesc* %27), !dbg !1874
  %28 = load i32* %2, align 4, !dbg !1875
  switch i32 %28, label %49 [
    i32 16, label %29
    i32 17, label %37
    i32 18, label %37
  ], !dbg !1875

; <label>:29                                      ; preds = %20
  %30 = load %struct.FuncState** %1, align 4, !dbg !1876
  %31 = load i32* %rk1, align 4, !dbg !1876
  %32 = load i32* %rk2, align 4, !dbg !1876
  %33 = call i32 @condjump(%struct.FuncState* %30, i32 31, i32 0, i32 %31, i32 %32), !dbg !1876
  %34 = load %struct.expdesc** %3, align 4, !dbg !1876
  %35 = getelementptr inbounds %struct.expdesc* %34, i32 0, i32 1, !dbg !1876
  %36 = bitcast %union.anon.4* %35 to i32*, !dbg !1876
  store i32 %33, i32* %36, align 4, !dbg !1876
  br label %61, !dbg !1879

; <label>:37                                      ; preds = %20, %20
  call void @llvm.dbg.declare(metadata !{i32* %op}, metadata !1880), !dbg !1882
  %38 = load i32* %2, align 4, !dbg !1883
  %39 = sub i32 %38, 16, !dbg !1883
  %40 = add i32 %39, 31, !dbg !1883
  store i32 %40, i32* %op, align 4, !dbg !1883
  %41 = load %struct.FuncState** %1, align 4, !dbg !1884
  %42 = load i32* %op, align 4, !dbg !1884
  %43 = load i32* %rk2, align 4, !dbg !1884
  %44 = load i32* %rk1, align 4, !dbg !1884
  %45 = call i32 @condjump(%struct.FuncState* %41, i32 %42, i32 1, i32 %43, i32 %44), !dbg !1884
  %46 = load %struct.expdesc** %3, align 4, !dbg !1884
  %47 = getelementptr inbounds %struct.expdesc* %46, i32 0, i32 1, !dbg !1884
  %48 = bitcast %union.anon.4* %47 to i32*, !dbg !1884
  store i32 %45, i32* %48, align 4, !dbg !1884
  br label %61, !dbg !1885

; <label>:49                                      ; preds = %20
  call void @llvm.dbg.declare(metadata !{i32* %op1}, metadata !1886), !dbg !1888
  %50 = load i32* %2, align 4, !dbg !1889
  %51 = sub i32 %50, 13, !dbg !1889
  %52 = add i32 %51, 31, !dbg !1889
  store i32 %52, i32* %op1, align 4, !dbg !1889
  %53 = load %struct.FuncState** %1, align 4, !dbg !1890
  %54 = load i32* %op1, align 4, !dbg !1890
  %55 = load i32* %rk1, align 4, !dbg !1890
  %56 = load i32* %rk2, align 4, !dbg !1890
  %57 = call i32 @condjump(%struct.FuncState* %53, i32 %54, i32 1, i32 %55, i32 %56), !dbg !1890
  %58 = load %struct.expdesc** %3, align 4, !dbg !1890
  %59 = getelementptr inbounds %struct.expdesc* %58, i32 0, i32 1, !dbg !1890
  %60 = bitcast %union.anon.4* %59 to i32*, !dbg !1890
  store i32 %57, i32* %60, align 4, !dbg !1890
  br label %61, !dbg !1891

; <label>:61                                      ; preds = %49, %37, %29
  %62 = load %struct.expdesc** %3, align 4, !dbg !1892
  %63 = getelementptr inbounds %struct.expdesc* %62, i32 0, i32 0, !dbg !1892
  store i32 11, i32* %63, align 4, !dbg !1892
  ret void, !dbg !1893
}

; Function Attrs: nounwind
define hidden void @luaK_fixline(%struct.FuncState* %fs, i32 %line) #0 {
  %1 = alloca %struct.FuncState*, align 4
  %2 = alloca i32, align 4
  store %struct.FuncState* %fs, %struct.FuncState** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.FuncState** %1}, metadata !1894), !dbg !1895
  store i32 %line, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !1896), !dbg !1897
  %3 = load i32* %2, align 4, !dbg !1898
  %4 = load %struct.FuncState** %1, align 4, !dbg !1898
  %5 = getelementptr inbounds %struct.FuncState* %4, i32 0, i32 4, !dbg !1898
  %6 = load i32* %5, align 4, !dbg !1898
  %7 = sub nsw i32 %6, 1, !dbg !1898
  %8 = load %struct.FuncState** %1, align 4, !dbg !1898
  %9 = getelementptr inbounds %struct.FuncState* %8, i32 0, i32 0, !dbg !1898
  %10 = load %struct.Proto** %9, align 4, !dbg !1898
  %11 = getelementptr inbounds %struct.Proto* %10, i32 0, i32 17, !dbg !1898
  %12 = load i32** %11, align 4, !dbg !1898
  %13 = getelementptr inbounds i32* %12, i32 %7, !dbg !1898
  store i32 %3, i32* %13, align 4, !dbg !1898
  ret void, !dbg !1899
}

; Function Attrs: nounwind
define hidden void @luaK_setlist(%struct.FuncState* %fs, i32 %base, i32 %nelems, i32 %tostore) #0 {
  %1 = alloca %struct.FuncState*, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %c = alloca i32, align 4
  %b = alloca i32, align 4
  store %struct.FuncState* %fs, %struct.FuncState** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.FuncState** %1}, metadata !1900), !dbg !1901
  store i32 %base, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !1902), !dbg !1903
  store i32 %nelems, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !1904), !dbg !1905
  store i32 %tostore, i32* %4, align 4
  call void @llvm.dbg.declare(metadata !{i32* %4}, metadata !1906), !dbg !1907
  call void @llvm.dbg.declare(metadata !{i32* %c}, metadata !1908), !dbg !1909
  %5 = load i32* %3, align 4, !dbg !1910
  %6 = sub nsw i32 %5, 1, !dbg !1910
  %7 = sdiv i32 %6, 50, !dbg !1910
  %8 = add nsw i32 %7, 1, !dbg !1910
  store i32 %8, i32* %c, align 4, !dbg !1910
  call void @llvm.dbg.declare(metadata !{i32* %b}, metadata !1911), !dbg !1912
  %9 = load i32* %4, align 4, !dbg !1913
  %10 = icmp eq i32 %9, -1, !dbg !1913
  br i1 %10, label %11, label %12, !dbg !1913

; <label>:11                                      ; preds = %0
  br label %14, !dbg !1914

; <label>:12                                      ; preds = %0
  %13 = load i32* %4, align 4, !dbg !1916
  br label %14, !dbg !1916

; <label>:14                                      ; preds = %12, %11
  %15 = phi i32 [ 0, %11 ], [ %13, %12 ], !dbg !1913
  store i32 %15, i32* %b, align 4, !dbg !1918
  %16 = load i32* %c, align 4, !dbg !1921
  %17 = icmp sle i32 %16, 511, !dbg !1921
  br i1 %17, label %18, label %24, !dbg !1921

; <label>:18                                      ; preds = %14
  %19 = load %struct.FuncState** %1, align 4, !dbg !1923
  %20 = load i32* %2, align 4, !dbg !1923
  %21 = load i32* %b, align 4, !dbg !1923
  %22 = load i32* %c, align 4, !dbg !1923
  %23 = call i32 @luaK_codeABC(%struct.FuncState* %19, i32 43, i32 %20, i32 %21, i32 %22), !dbg !1923
  br label %40, !dbg !1923

; <label>:24                                      ; preds = %14
  %25 = load i32* %c, align 4, !dbg !1924
  %26 = icmp sle i32 %25, 67108863, !dbg !1924
  br i1 %26, label %27, label %35, !dbg !1924

; <label>:27                                      ; preds = %24
  %28 = load %struct.FuncState** %1, align 4, !dbg !1926
  %29 = load i32* %2, align 4, !dbg !1926
  %30 = load i32* %b, align 4, !dbg !1926
  %31 = call i32 @luaK_codeABC(%struct.FuncState* %28, i32 43, i32 %29, i32 %30, i32 0), !dbg !1926
  %32 = load %struct.FuncState** %1, align 4, !dbg !1928
  %33 = load i32* %c, align 4, !dbg !1928
  %34 = call i32 @codeextraarg(%struct.FuncState* %32, i32 %33), !dbg !1928
  br label %39, !dbg !1929

; <label>:35                                      ; preds = %24
  %36 = load %struct.FuncState** %1, align 4, !dbg !1930
  %37 = getelementptr inbounds %struct.FuncState* %36, i32 0, i32 2, !dbg !1930
  %38 = load %struct.LexState** %37, align 4, !dbg !1930
  call void @luaX_syntaxerror(%struct.LexState* %38, i8* getelementptr inbounds ([21 x i8]* @.str1, i32 0, i32 0)) #6, !dbg !1930
  unreachable, !dbg !1930

; <label>:39                                      ; preds = %27
  br label %40

; <label>:40                                      ; preds = %39, %18
  %41 = load i32* %2, align 4, !dbg !1931
  %42 = add nsw i32 %41, 1, !dbg !1931
  %43 = trunc i32 %42 to i8, !dbg !1931
  %44 = load %struct.FuncState** %1, align 4, !dbg !1931
  %45 = getelementptr inbounds %struct.FuncState* %44, i32 0, i32 13, !dbg !1931
  store i8 %43, i8* %45, align 1, !dbg !1931
  ret void, !dbg !1932
}

; Function Attrs: nounwind
define internal void @freeexps(%struct.FuncState* %fs, %struct.expdesc* %e1, %struct.expdesc* %e2) #0 {
  %1 = alloca %struct.FuncState*, align 4
  %2 = alloca %struct.expdesc*, align 4
  %3 = alloca %struct.expdesc*, align 4
  %r1 = alloca i32, align 4
  %r2 = alloca i32, align 4
  store %struct.FuncState* %fs, %struct.FuncState** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.FuncState** %1}, metadata !1933), !dbg !1934
  store %struct.expdesc* %e1, %struct.expdesc** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.expdesc** %2}, metadata !1935), !dbg !1936
  store %struct.expdesc* %e2, %struct.expdesc** %3, align 4
  call void @llvm.dbg.declare(metadata !{%struct.expdesc** %3}, metadata !1937), !dbg !1938
  call void @llvm.dbg.declare(metadata !{i32* %r1}, metadata !1939), !dbg !1940
  %4 = load %struct.expdesc** %2, align 4, !dbg !1941
  %5 = getelementptr inbounds %struct.expdesc* %4, i32 0, i32 0, !dbg !1941
  %6 = load i32* %5, align 4, !dbg !1941
  %7 = icmp eq i32 %6, 7, !dbg !1941
  br i1 %7, label %8, label %13, !dbg !1941

; <label>:8                                       ; preds = %0
  %9 = load %struct.expdesc** %2, align 4, !dbg !1942
  %10 = getelementptr inbounds %struct.expdesc* %9, i32 0, i32 1, !dbg !1942
  %11 = bitcast %union.anon.4* %10 to i32*, !dbg !1942
  %12 = load i32* %11, align 4, !dbg !1942
  br label %14, !dbg !1942

; <label>:13                                      ; preds = %0
  br label %14, !dbg !1944

; <label>:14                                      ; preds = %13, %8
  %15 = phi i32 [ %12, %8 ], [ -1, %13 ], !dbg !1941
  store i32 %15, i32* %r1, align 4, !dbg !1946
  call void @llvm.dbg.declare(metadata !{i32* %r2}, metadata !1949), !dbg !1950
  %16 = load %struct.expdesc** %3, align 4, !dbg !1951
  %17 = getelementptr inbounds %struct.expdesc* %16, i32 0, i32 0, !dbg !1951
  %18 = load i32* %17, align 4, !dbg !1951
  %19 = icmp eq i32 %18, 7, !dbg !1951
  br i1 %19, label %20, label %25, !dbg !1951

; <label>:20                                      ; preds = %14
  %21 = load %struct.expdesc** %3, align 4, !dbg !1952
  %22 = getelementptr inbounds %struct.expdesc* %21, i32 0, i32 1, !dbg !1952
  %23 = bitcast %union.anon.4* %22 to i32*, !dbg !1952
  %24 = load i32* %23, align 4, !dbg !1952
  br label %26, !dbg !1952

; <label>:25                                      ; preds = %14
  br label %26, !dbg !1954

; <label>:26                                      ; preds = %25, %20
  %27 = phi i32 [ %24, %20 ], [ -1, %25 ], !dbg !1951
  store i32 %27, i32* %r2, align 4, !dbg !1956
  %28 = load i32* %r1, align 4, !dbg !1959
  %29 = load i32* %r2, align 4, !dbg !1959
  %30 = icmp sgt i32 %28, %29, !dbg !1959
  br i1 %30, label %31, label %36, !dbg !1959

; <label>:31                                      ; preds = %26
  %32 = load %struct.FuncState** %1, align 4, !dbg !1961
  %33 = load i32* %r1, align 4, !dbg !1961
  call void @freereg(%struct.FuncState* %32, i32 %33), !dbg !1961
  %34 = load %struct.FuncState** %1, align 4, !dbg !1963
  %35 = load i32* %r2, align 4, !dbg !1963
  call void @freereg(%struct.FuncState* %34, i32 %35), !dbg !1963
  br label %41, !dbg !1964

; <label>:36                                      ; preds = %26
  %37 = load %struct.FuncState** %1, align 4, !dbg !1965
  %38 = load i32* %r2, align 4, !dbg !1965
  call void @freereg(%struct.FuncState* %37, i32 %38), !dbg !1965
  %39 = load %struct.FuncState** %1, align 4, !dbg !1967
  %40 = load i32* %r1, align 4, !dbg !1967
  call void @freereg(%struct.FuncState* %39, i32 %40), !dbg !1967
  br label %41

; <label>:41                                      ; preds = %36, %31
  ret void, !dbg !1968
}

; Function Attrs: nounwind
define internal i32 @condjump(%struct.FuncState* %fs, i32 %op, i32 %A, i32 %B, i32 %C) #0 {
  %1 = alloca %struct.FuncState*, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.FuncState* %fs, %struct.FuncState** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.FuncState** %1}, metadata !1969), !dbg !1970
  store i32 %op, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !1971), !dbg !1972
  store i32 %A, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !1973), !dbg !1974
  store i32 %B, i32* %4, align 4
  call void @llvm.dbg.declare(metadata !{i32* %4}, metadata !1975), !dbg !1976
  store i32 %C, i32* %5, align 4
  call void @llvm.dbg.declare(metadata !{i32* %5}, metadata !1977), !dbg !1978
  %6 = load %struct.FuncState** %1, align 4, !dbg !1979
  %7 = load i32* %2, align 4, !dbg !1979
  %8 = load i32* %3, align 4, !dbg !1979
  %9 = load i32* %4, align 4, !dbg !1979
  %10 = load i32* %5, align 4, !dbg !1979
  %11 = call i32 @luaK_codeABC(%struct.FuncState* %6, i32 %7, i32 %8, i32 %9, i32 %10), !dbg !1979
  %12 = load %struct.FuncState** %1, align 4, !dbg !1980
  %13 = call i32 @luaK_jump(%struct.FuncState* %12), !dbg !1980
  ret i32 %13, !dbg !1980
}

; Function Attrs: nounwind
define internal void @discharge2anyreg(%struct.FuncState* %fs, %struct.expdesc* %e) #0 {
  %1 = alloca %struct.FuncState*, align 4
  %2 = alloca %struct.expdesc*, align 4
  store %struct.FuncState* %fs, %struct.FuncState** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.FuncState** %1}, metadata !1981), !dbg !1982
  store %struct.expdesc* %e, %struct.expdesc** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.expdesc** %2}, metadata !1983), !dbg !1984
  %3 = load %struct.expdesc** %2, align 4, !dbg !1985
  %4 = getelementptr inbounds %struct.expdesc* %3, i32 0, i32 0, !dbg !1985
  %5 = load i32* %4, align 4, !dbg !1985
  %6 = icmp ne i32 %5, 7, !dbg !1985
  br i1 %6, label %7, label %16, !dbg !1985

; <label>:7                                       ; preds = %0
  %8 = load %struct.FuncState** %1, align 4, !dbg !1987
  call void @luaK_reserveregs(%struct.FuncState* %8, i32 1), !dbg !1987
  %9 = load %struct.FuncState** %1, align 4, !dbg !1989
  %10 = load %struct.expdesc** %2, align 4, !dbg !1989
  %11 = load %struct.FuncState** %1, align 4, !dbg !1989
  %12 = getelementptr inbounds %struct.FuncState* %11, i32 0, i32 13, !dbg !1989
  %13 = load i8* %12, align 1, !dbg !1989
  %14 = zext i8 %13 to i32, !dbg !1989
  %15 = sub nsw i32 %14, 1, !dbg !1989
  call void @discharge2reg(%struct.FuncState* %9, %struct.expdesc* %10, i32 %15), !dbg !1989
  br label %16, !dbg !1990

; <label>:16                                      ; preds = %7, %0
  ret void, !dbg !1991
}

; Function Attrs: nounwind
define internal void @removevalues(%struct.FuncState* %fs, i32 %list) #0 {
  %1 = alloca %struct.FuncState*, align 4
  %2 = alloca i32, align 4
  store %struct.FuncState* %fs, %struct.FuncState** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.FuncState** %1}, metadata !1992), !dbg !1993
  store i32 %list, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !1994), !dbg !1995
  br label %3, !dbg !1996

; <label>:3                                       ; preds = %10, %0
  %4 = load i32* %2, align 4, !dbg !1998
  %5 = icmp ne i32 %4, -1, !dbg !1998
  br i1 %5, label %6, label %14, !dbg !1998

; <label>:6                                       ; preds = %3
  %7 = load %struct.FuncState** %1, align 4, !dbg !2001
  %8 = load i32* %2, align 4, !dbg !2001
  %9 = call i32 @patchtestreg(%struct.FuncState* %7, i32 %8, i32 255), !dbg !2001
  br label %10, !dbg !2001

; <label>:10                                      ; preds = %6
  %11 = load %struct.FuncState** %1, align 4, !dbg !2002
  %12 = load i32* %2, align 4, !dbg !2002
  %13 = call i32 @getjump(%struct.FuncState* %11, i32 %12), !dbg !2002
  store i32 %13, i32* %2, align 4, !dbg !2002
  br label %3, !dbg !2002

; <label>:14                                      ; preds = %3
  ret void, !dbg !2003
}

; Function Attrs: nounwind
define internal i32 @patchtestreg(%struct.FuncState* %fs, i32 %node, i32 %reg) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.FuncState*, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %i = alloca i32*, align 4
  store %struct.FuncState* %fs, %struct.FuncState** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.FuncState** %2}, metadata !2004), !dbg !2005
  store i32 %node, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !2006), !dbg !2007
  store i32 %reg, i32* %4, align 4
  call void @llvm.dbg.declare(metadata !{i32* %4}, metadata !2008), !dbg !2009
  call void @llvm.dbg.declare(metadata !{i32** %i}, metadata !2010), !dbg !2011
  %5 = load %struct.FuncState** %2, align 4, !dbg !2012
  %6 = load i32* %3, align 4, !dbg !2012
  %7 = call i32* @getjumpcontrol(%struct.FuncState* %5, i32 %6), !dbg !2012
  store i32* %7, i32** %i, align 4, !dbg !2012
  %8 = load i32** %i, align 4, !dbg !2013
  %9 = load i32* %8, align 4, !dbg !2013
  %10 = lshr i32 %9, 0, !dbg !2013
  %11 = and i32 %10, 63, !dbg !2013
  %12 = icmp ne i32 %11, 35, !dbg !2013
  br i1 %12, label %13, label %14, !dbg !2013

; <label>:13                                      ; preds = %0
  store i32 0, i32* %1, !dbg !2015
  br label %48, !dbg !2015

; <label>:14                                      ; preds = %0
  %15 = load i32* %4, align 4, !dbg !2016
  %16 = icmp ne i32 %15, 255, !dbg !2016
  br i1 %16, label %17, label %33, !dbg !2016

; <label>:17                                      ; preds = %14
  %18 = load i32* %4, align 4, !dbg !2018
  %19 = load i32** %i, align 4, !dbg !2018
  %20 = load i32* %19, align 4, !dbg !2018
  %21 = lshr i32 %20, 23, !dbg !2018
  %22 = and i32 %21, 511, !dbg !2018
  %23 = icmp ne i32 %18, %22, !dbg !2018
  br i1 %23, label %24, label %33, !dbg !2018

; <label>:24                                      ; preds = %17
  %25 = load i32** %i, align 4, !dbg !2020
  %26 = load i32* %25, align 4, !dbg !2020
  %27 = and i32 %26, -16321, !dbg !2020
  %28 = load i32* %4, align 4, !dbg !2020
  %29 = shl i32 %28, 6, !dbg !2020
  %30 = and i32 %29, 16320, !dbg !2020
  %31 = or i32 %27, %30, !dbg !2020
  %32 = load i32** %i, align 4, !dbg !2020
  store i32 %31, i32* %32, align 4, !dbg !2020
  br label %47, !dbg !2020

; <label>:33                                      ; preds = %17, %14
  %34 = load i32** %i, align 4, !dbg !2021
  %35 = load i32* %34, align 4, !dbg !2021
  %36 = lshr i32 %35, 23, !dbg !2021
  %37 = and i32 %36, 511, !dbg !2021
  %38 = shl i32 %37, 6, !dbg !2021
  %39 = or i32 34, %38, !dbg !2021
  %40 = load i32** %i, align 4, !dbg !2021
  %41 = load i32* %40, align 4, !dbg !2021
  %42 = lshr i32 %41, 14, !dbg !2021
  %43 = and i32 %42, 511, !dbg !2021
  %44 = shl i32 %43, 14, !dbg !2021
  %45 = or i32 %39, %44, !dbg !2021
  %46 = load i32** %i, align 4, !dbg !2021
  store i32 %45, i32* %46, align 4, !dbg !2021
  br label %47

; <label>:47                                      ; preds = %33, %24
  store i32 1, i32* %1, !dbg !2023
  br label %48, !dbg !2023

; <label>:48                                      ; preds = %47, %13
  %49 = load i32* %1, !dbg !2024
  ret i32 %49, !dbg !2024
}

; Function Attrs: nounwind
define internal i32* @getjumpcontrol(%struct.FuncState* %fs, i32 %pc) #0 {
  %1 = alloca i32*, align 4
  %2 = alloca %struct.FuncState*, align 4
  %3 = alloca i32, align 4
  %pi = alloca i32*, align 4
  store %struct.FuncState* %fs, %struct.FuncState** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.FuncState** %2}, metadata !2025), !dbg !2026
  store i32 %pc, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !2027), !dbg !2028
  call void @llvm.dbg.declare(metadata !{i32** %pi}, metadata !2029), !dbg !2030
  %4 = load i32* %3, align 4, !dbg !2031
  %5 = load %struct.FuncState** %2, align 4, !dbg !2031
  %6 = getelementptr inbounds %struct.FuncState* %5, i32 0, i32 0, !dbg !2031
  %7 = load %struct.Proto** %6, align 4, !dbg !2031
  %8 = getelementptr inbounds %struct.Proto* %7, i32 0, i32 15, !dbg !2031
  %9 = load i32** %8, align 4, !dbg !2031
  %10 = getelementptr inbounds i32* %9, i32 %4, !dbg !2031
  store i32* %10, i32** %pi, align 4, !dbg !2031
  %11 = load i32* %3, align 4, !dbg !2032
  %12 = icmp sge i32 %11, 1, !dbg !2032
  br i1 %12, label %13, label %27, !dbg !2032

; <label>:13                                      ; preds = %0
  %14 = load i32** %pi, align 4, !dbg !2034
  %15 = getelementptr inbounds i32* %14, i32 -1, !dbg !2034
  %16 = load i32* %15, align 4, !dbg !2034
  %17 = lshr i32 %16, 0, !dbg !2034
  %18 = and i32 %17, 63, !dbg !2034
  %19 = getelementptr inbounds [47 x i8]* @luaP_opmodes, i32 0, i32 %18, !dbg !2034
  %20 = load i8* %19, align 1, !dbg !2034
  %21 = zext i8 %20 to i32, !dbg !2034
  %22 = and i32 %21, 128, !dbg !2034
  %23 = icmp ne i32 %22, 0, !dbg !2034
  br i1 %23, label %24, label %27, !dbg !2034

; <label>:24                                      ; preds = %13
  %25 = load i32** %pi, align 4, !dbg !2036
  %26 = getelementptr inbounds i32* %25, i32 -1, !dbg !2036
  store i32* %26, i32** %1, !dbg !2036
  br label %29, !dbg !2036

; <label>:27                                      ; preds = %13, %0
  %28 = load i32** %pi, align 4, !dbg !2037
  store i32* %28, i32** %1, !dbg !2037
  br label %29, !dbg !2037

; <label>:29                                      ; preds = %27, %24
  %30 = load i32** %1, !dbg !2038
  ret i32* %30, !dbg !2038
}

; Function Attrs: nounwind
define internal void @discharge2reg(%struct.FuncState* %fs, %struct.expdesc* %e, i32 %reg) #0 {
  %1 = alloca %struct.FuncState*, align 4
  %2 = alloca %struct.expdesc*, align 4
  %3 = alloca i32, align 4
  %pc = alloca i32*, align 4
  store %struct.FuncState* %fs, %struct.FuncState** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.FuncState** %1}, metadata !2039), !dbg !2040
  store %struct.expdesc* %e, %struct.expdesc** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.expdesc** %2}, metadata !2041), !dbg !2042
  store i32 %reg, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !2043), !dbg !2044
  %4 = load %struct.FuncState** %1, align 4, !dbg !2045
  %5 = load %struct.expdesc** %2, align 4, !dbg !2045
  call void @luaK_dischargevars(%struct.FuncState* %4, %struct.expdesc* %5), !dbg !2045
  %6 = load %struct.expdesc** %2, align 4, !dbg !2046
  %7 = getelementptr inbounds %struct.expdesc* %6, i32 0, i32 0, !dbg !2046
  %8 = load i32* %7, align 4, !dbg !2046
  switch i32 %8, label %84 [
    i32 1, label %9
    i32 3, label %12
    i32 2, label %12
    i32 4, label %21
    i32 5, label %29
    i32 6, label %39
    i32 12, label %49
    i32 7, label %68
  ], !dbg !2046

; <label>:9                                       ; preds = %0
  %10 = load %struct.FuncState** %1, align 4, !dbg !2047
  %11 = load i32* %3, align 4, !dbg !2047
  call void @luaK_nil(%struct.FuncState* %10, i32 %11, i32 1), !dbg !2047
  br label %85, !dbg !2050

; <label>:12                                      ; preds = %0, %0
  %13 = load %struct.FuncState** %1, align 4, !dbg !2051
  %14 = load i32* %3, align 4, !dbg !2051
  %15 = load %struct.expdesc** %2, align 4, !dbg !2051
  %16 = getelementptr inbounds %struct.expdesc* %15, i32 0, i32 0, !dbg !2051
  %17 = load i32* %16, align 4, !dbg !2051
  %18 = icmp eq i32 %17, 2, !dbg !2051
  %19 = zext i1 %18 to i32, !dbg !2051
  %20 = call i32 @luaK_codeABC(%struct.FuncState* %13, i32 3, i32 %14, i32 %19, i32 0), !dbg !2051
  br label %85, !dbg !2053

; <label>:21                                      ; preds = %0
  %22 = load %struct.FuncState** %1, align 4, !dbg !2054
  %23 = load i32* %3, align 4, !dbg !2054
  %24 = load %struct.expdesc** %2, align 4, !dbg !2054
  %25 = getelementptr inbounds %struct.expdesc* %24, i32 0, i32 1, !dbg !2054
  %26 = bitcast %union.anon.4* %25 to i32*, !dbg !2054
  %27 = load i32* %26, align 4, !dbg !2054
  %28 = call i32 @luaK_codek(%struct.FuncState* %22, i32 %23, i32 %27), !dbg !2054
  br label %85, !dbg !2056

; <label>:29                                      ; preds = %0
  %30 = load %struct.FuncState** %1, align 4, !dbg !2057
  %31 = load i32* %3, align 4, !dbg !2057
  %32 = load %struct.FuncState** %1, align 4, !dbg !2059
  %33 = load %struct.expdesc** %2, align 4, !dbg !2059
  %34 = getelementptr inbounds %struct.expdesc* %33, i32 0, i32 1, !dbg !2059
  %35 = bitcast %union.anon.4* %34 to double*, !dbg !2059
  %36 = load double* %35, align 8, !dbg !2059
  %37 = call i32 @luaK_numberK(%struct.FuncState* %32, double %36), !dbg !2059
  %38 = call i32 @luaK_codek(%struct.FuncState* %30, i32 %31, i32 %37), !dbg !2057
  br label %85, !dbg !2060

; <label>:39                                      ; preds = %0
  %40 = load %struct.FuncState** %1, align 4, !dbg !2061
  %41 = load i32* %3, align 4, !dbg !2061
  %42 = load %struct.FuncState** %1, align 4, !dbg !2063
  %43 = load %struct.expdesc** %2, align 4, !dbg !2063
  %44 = getelementptr inbounds %struct.expdesc* %43, i32 0, i32 1, !dbg !2063
  %45 = bitcast %union.anon.4* %44 to i64*, !dbg !2063
  %46 = load i64* %45, align 8, !dbg !2063
  %47 = call i32 @luaK_intK(%struct.FuncState* %42, i64 %46), !dbg !2063
  %48 = call i32 @luaK_codek(%struct.FuncState* %40, i32 %41, i32 %47), !dbg !2061
  br label %85, !dbg !2064

; <label>:49                                      ; preds = %0
  call void @llvm.dbg.declare(metadata !{i32** %pc}, metadata !2065), !dbg !2067
  %50 = load %struct.expdesc** %2, align 4, !dbg !2068
  %51 = getelementptr inbounds %struct.expdesc* %50, i32 0, i32 1, !dbg !2068
  %52 = bitcast %union.anon.4* %51 to i32*, !dbg !2068
  %53 = load i32* %52, align 4, !dbg !2068
  %54 = load %struct.FuncState** %1, align 4, !dbg !2068
  %55 = getelementptr inbounds %struct.FuncState* %54, i32 0, i32 0, !dbg !2068
  %56 = load %struct.Proto** %55, align 4, !dbg !2068
  %57 = getelementptr inbounds %struct.Proto* %56, i32 0, i32 15, !dbg !2068
  %58 = load i32** %57, align 4, !dbg !2068
  %59 = getelementptr inbounds i32* %58, i32 %53, !dbg !2068
  store i32* %59, i32** %pc, align 4, !dbg !2068
  %60 = load i32** %pc, align 4, !dbg !2069
  %61 = load i32* %60, align 4, !dbg !2069
  %62 = and i32 %61, -16321, !dbg !2069
  %63 = load i32* %3, align 4, !dbg !2069
  %64 = shl i32 %63, 6, !dbg !2069
  %65 = and i32 %64, 16320, !dbg !2069
  %66 = or i32 %62, %65, !dbg !2069
  %67 = load i32** %pc, align 4, !dbg !2069
  store i32 %66, i32* %67, align 4, !dbg !2069
  br label %85, !dbg !2070

; <label>:68                                      ; preds = %0
  %69 = load i32* %3, align 4, !dbg !2071
  %70 = load %struct.expdesc** %2, align 4, !dbg !2071
  %71 = getelementptr inbounds %struct.expdesc* %70, i32 0, i32 1, !dbg !2071
  %72 = bitcast %union.anon.4* %71 to i32*, !dbg !2071
  %73 = load i32* %72, align 4, !dbg !2071
  %74 = icmp ne i32 %69, %73, !dbg !2071
  br i1 %74, label %75, label %83, !dbg !2071

; <label>:75                                      ; preds = %68
  %76 = load %struct.FuncState** %1, align 4, !dbg !2074
  %77 = load i32* %3, align 4, !dbg !2074
  %78 = load %struct.expdesc** %2, align 4, !dbg !2074
  %79 = getelementptr inbounds %struct.expdesc* %78, i32 0, i32 1, !dbg !2074
  %80 = bitcast %union.anon.4* %79 to i32*, !dbg !2074
  %81 = load i32* %80, align 4, !dbg !2074
  %82 = call i32 @luaK_codeABC(%struct.FuncState* %76, i32 0, i32 %77, i32 %81, i32 0), !dbg !2074
  br label %83, !dbg !2074

; <label>:83                                      ; preds = %75, %68
  br label %85, !dbg !2075

; <label>:84                                      ; preds = %0
  br label %92, !dbg !2076

; <label>:85                                      ; preds = %83, %49, %39, %29, %21, %12, %9
  %86 = load i32* %3, align 4, !dbg !2078
  %87 = load %struct.expdesc** %2, align 4, !dbg !2078
  %88 = getelementptr inbounds %struct.expdesc* %87, i32 0, i32 1, !dbg !2078
  %89 = bitcast %union.anon.4* %88 to i32*, !dbg !2078
  store i32 %86, i32* %89, align 4, !dbg !2078
  %90 = load %struct.expdesc** %2, align 4, !dbg !2079
  %91 = getelementptr inbounds %struct.expdesc* %90, i32 0, i32 0, !dbg !2079
  store i32 7, i32* %91, align 4, !dbg !2079
  br label %92, !dbg !2080

; <label>:92                                      ; preds = %85, %84
  ret void, !dbg !2081
}

; Function Attrs: nounwind
define internal i32 @validop(i32 %op, %struct.lua_TValue* %v1, %struct.lua_TValue* %v2) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.lua_TValue*, align 4
  %4 = alloca %struct.lua_TValue*, align 4
  %i = alloca i64, align 8
  store i32 %op, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !2083), !dbg !2084
  store %struct.lua_TValue* %v1, %struct.lua_TValue** %3, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %3}, metadata !2085), !dbg !2086
  store %struct.lua_TValue* %v2, %struct.lua_TValue** %4, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %4}, metadata !2087), !dbg !2088
  %5 = load i32* %2, align 4, !dbg !2089
  switch i32 %5, label %59 [
    i32 7, label %6
    i32 8, label %6
    i32 9, label %6
    i32 10, label %6
    i32 11, label %6
    i32 13, label %6
    i32 5, label %39
    i32 6, label %39
    i32 3, label %39
  ], !dbg !2089

; <label>:6                                       ; preds = %0, %0, %0, %0, %0, %0
  call void @llvm.dbg.declare(metadata !{i64* %i}, metadata !2090), !dbg !2093
  %7 = load %struct.lua_TValue** %3, align 4, !dbg !2094
  %8 = getelementptr inbounds %struct.lua_TValue* %7, i32 0, i32 1, !dbg !2094
  %9 = load i32* %8, align 4, !dbg !2094
  %10 = icmp eq i32 %9, 19, !dbg !2094
  br i1 %10, label %11, label %16, !dbg !2094

; <label>:11                                      ; preds = %6
  %12 = load %struct.lua_TValue** %3, align 4, !dbg !2095
  %13 = getelementptr inbounds %struct.lua_TValue* %12, i32 0, i32 0, !dbg !2095
  %14 = bitcast %union.Value* %13 to i64*, !dbg !2095
  %15 = load i64* %14, align 8, !dbg !2095
  store i64 %15, i64* %i, align 8, !dbg !2095
  br i1 true, label %20, label %36, !dbg !2095

; <label>:16                                      ; preds = %6
  %17 = load %struct.lua_TValue** %3, align 4, !dbg !2097
  %18 = call i32 @luaV_tointeger(%struct.lua_TValue* %17, i64* %i, i32 0), !dbg !2097
  %19 = icmp ne i32 %18, 0, !dbg !2097
  br i1 %19, label %20, label %36, !dbg !2097

; <label>:20                                      ; preds = %16, %11
  %21 = load %struct.lua_TValue** %4, align 4, !dbg !2099
  %22 = getelementptr inbounds %struct.lua_TValue* %21, i32 0, i32 1, !dbg !2099
  %23 = load i32* %22, align 4, !dbg !2099
  %24 = icmp eq i32 %23, 19, !dbg !2099
  br i1 %24, label %25, label %30, !dbg !2099

; <label>:25                                      ; preds = %20
  %26 = load %struct.lua_TValue** %4, align 4, !dbg !2102
  %27 = getelementptr inbounds %struct.lua_TValue* %26, i32 0, i32 0, !dbg !2102
  %28 = bitcast %union.Value* %27 to i64*, !dbg !2102
  %29 = load i64* %28, align 8, !dbg !2102
  store i64 %29, i64* %i, align 8, !dbg !2102
  br label %33, !dbg !2102

; <label>:30                                      ; preds = %20
  %31 = load %struct.lua_TValue** %4, align 4, !dbg !2104
  %32 = call i32 @luaV_tointeger(%struct.lua_TValue* %31, i64* %i, i32 0), !dbg !2104
  br label %33, !dbg !2104

; <label>:33                                      ; preds = %30, %25
  %34 = phi i32 [ 1, %25 ], [ %32, %30 ], !dbg !2106
  %35 = icmp ne i32 %34, 0, !dbg !2107
  br label %36

; <label>:36                                      ; preds = %33, %16, %11
  %37 = phi i1 [ false, %16 ], [ false, %11 ], [ %35, %33 ]
  %38 = zext i1 %37 to i32, !dbg !2110
  store i32 %38, i32* %1, !dbg !2110
  br label %60, !dbg !2110

; <label>:39                                      ; preds = %0, %0, %0
  %40 = load %struct.lua_TValue** %4, align 4, !dbg !2113
  %41 = getelementptr inbounds %struct.lua_TValue* %40, i32 0, i32 1, !dbg !2113
  %42 = load i32* %41, align 4, !dbg !2113
  %43 = icmp eq i32 %42, 19, !dbg !2113
  br i1 %43, label %44, label %50, !dbg !2113

; <label>:44                                      ; preds = %39
  %45 = load %struct.lua_TValue** %4, align 4, !dbg !2114
  %46 = getelementptr inbounds %struct.lua_TValue* %45, i32 0, i32 0, !dbg !2114
  %47 = bitcast %union.Value* %46 to i64*, !dbg !2114
  %48 = load i64* %47, align 8, !dbg !2114
  %49 = sitofp i64 %48 to double, !dbg !2114
  br label %55, !dbg !2114

; <label>:50                                      ; preds = %39
  %51 = load %struct.lua_TValue** %4, align 4, !dbg !2116
  %52 = getelementptr inbounds %struct.lua_TValue* %51, i32 0, i32 0, !dbg !2116
  %53 = bitcast %union.Value* %52 to double*, !dbg !2116
  %54 = load double* %53, align 8, !dbg !2116
  br label %55, !dbg !2116

; <label>:55                                      ; preds = %50, %44
  %56 = phi double [ %49, %44 ], [ %54, %50 ], !dbg !2113
  %57 = fcmp une double %56, 0.000000e+00, !dbg !2118
  %58 = zext i1 %57 to i32, !dbg !2118
  store i32 %58, i32* %1, !dbg !2118
  br label %60, !dbg !2118

; <label>:59                                      ; preds = %0
  store i32 1, i32* %1, !dbg !2121
  br label %60, !dbg !2121

; <label>:60                                      ; preds = %59, %55, %36
  %61 = load i32* %1, !dbg !2122
  ret i32 %61, !dbg !2122
}

declare hidden void @luaO_arith(%struct.lua_State*, i32, %struct.lua_TValue*, %struct.lua_TValue*, %struct.lua_TValue*) #4

declare hidden i32 @luaV_tointeger(%struct.lua_TValue*, i64*, i32) #4

; Function Attrs: nounwind
define internal i32 @need_value(%struct.FuncState* %fs, i32 %list) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.FuncState*, align 4
  %3 = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.FuncState* %fs, %struct.FuncState** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.FuncState** %2}, metadata !2123), !dbg !2124
  store i32 %list, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !2125), !dbg !2126
  br label %4, !dbg !2127

; <label>:4                                       ; preds = %18, %0
  %5 = load i32* %3, align 4, !dbg !2129
  %6 = icmp ne i32 %5, -1, !dbg !2129
  br i1 %6, label %7, label %22, !dbg !2129

; <label>:7                                       ; preds = %4
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !2132), !dbg !2134
  %8 = load %struct.FuncState** %2, align 4, !dbg !2135
  %9 = load i32* %3, align 4, !dbg !2135
  %10 = call i32* @getjumpcontrol(%struct.FuncState* %8, i32 %9), !dbg !2135
  %11 = load i32* %10, align 4, !dbg !2135
  store i32 %11, i32* %i, align 4, !dbg !2135
  %12 = load i32* %i, align 4, !dbg !2136
  %13 = lshr i32 %12, 0, !dbg !2136
  %14 = and i32 %13, 63, !dbg !2136
  %15 = icmp ne i32 %14, 35, !dbg !2136
  br i1 %15, label %16, label %17, !dbg !2136

; <label>:16                                      ; preds = %7
  store i32 1, i32* %1, !dbg !2138
  br label %23, !dbg !2138

; <label>:17                                      ; preds = %7
  br label %18, !dbg !2140

; <label>:18                                      ; preds = %17
  %19 = load %struct.FuncState** %2, align 4, !dbg !2141
  %20 = load i32* %3, align 4, !dbg !2141
  %21 = call i32 @getjump(%struct.FuncState* %19, i32 %20), !dbg !2141
  store i32 %21, i32* %3, align 4, !dbg !2141
  br label %4, !dbg !2141

; <label>:22                                      ; preds = %4
  store i32 0, i32* %1, !dbg !2142
  br label %23, !dbg !2142

; <label>:23                                      ; preds = %22, %16
  %24 = load i32* %1, !dbg !2143
  ret i32 %24, !dbg !2143
}

; Function Attrs: nounwind
define internal i32 @code_loadbool(%struct.FuncState* %fs, i32 %A, i32 %b, i32 %jump) #0 {
  %1 = alloca %struct.FuncState*, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.FuncState* %fs, %struct.FuncState** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.FuncState** %1}, metadata !2144), !dbg !2145
  store i32 %A, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !2146), !dbg !2147
  store i32 %b, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !2148), !dbg !2149
  store i32 %jump, i32* %4, align 4
  call void @llvm.dbg.declare(metadata !{i32* %4}, metadata !2150), !dbg !2151
  %5 = load %struct.FuncState** %1, align 4, !dbg !2152
  %6 = call i32 @luaK_getlabel(%struct.FuncState* %5), !dbg !2152
  %7 = load %struct.FuncState** %1, align 4, !dbg !2153
  %8 = load i32* %2, align 4, !dbg !2153
  %9 = load i32* %3, align 4, !dbg !2153
  %10 = load i32* %4, align 4, !dbg !2153
  %11 = call i32 @luaK_codeABC(%struct.FuncState* %7, i32 3, i32 %8, i32 %9, i32 %10), !dbg !2153
  ret i32 %11, !dbg !2153
}

declare hidden %struct.lua_TValue* @luaH_set(%struct.lua_State*, %struct.Table*, %struct.lua_TValue*) #4

declare hidden i32 @luaV_equalobj(%struct.lua_State*, %struct.lua_TValue*, %struct.lua_TValue*) #4

declare hidden i8* @luaM_growaux_(%struct.lua_State*, i8*, i32*, i32, i32, i8*) #4

declare hidden void @luaC_barrier_(%struct.lua_State*, %struct.GCObject*, %struct.GCObject*) #4

; Function Attrs: nounwind
define internal void @dischargejpc(%struct.FuncState* %fs) #0 {
  %1 = alloca %struct.FuncState*, align 4
  store %struct.FuncState* %fs, %struct.FuncState** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.FuncState** %1}, metadata !2154), !dbg !2155
  %2 = load %struct.FuncState** %1, align 4, !dbg !2156
  %3 = load %struct.FuncState** %1, align 4, !dbg !2156
  %4 = getelementptr inbounds %struct.FuncState* %3, i32 0, i32 6, !dbg !2156
  %5 = load i32* %4, align 4, !dbg !2156
  %6 = load %struct.FuncState** %1, align 4, !dbg !2156
  %7 = getelementptr inbounds %struct.FuncState* %6, i32 0, i32 4, !dbg !2156
  %8 = load i32* %7, align 4, !dbg !2156
  %9 = load %struct.FuncState** %1, align 4, !dbg !2156
  %10 = getelementptr inbounds %struct.FuncState* %9, i32 0, i32 4, !dbg !2156
  %11 = load i32* %10, align 4, !dbg !2156
  call void @patchlistaux(%struct.FuncState* %2, i32 %5, i32 %8, i32 255, i32 %11), !dbg !2156
  %12 = load %struct.FuncState** %1, align 4, !dbg !2157
  %13 = getelementptr inbounds %struct.FuncState* %12, i32 0, i32 6, !dbg !2157
  store i32 -1, i32* %13, align 4, !dbg !2157
  ret void, !dbg !2158
}

; Function Attrs: nounwind readnone
declare i32 @abs(i32) #5

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { noreturn "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn }

!llvm.dbg.cu = !{!0}
!xidane.fname = !{!681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !799, !800, !801, !802, !803, !804, !805, !806, !807, !808, !809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822, !823, !824}
!xidane.function_declaration_type = !{!681, !825, !683, !826, !685, !827, !687, !828, !689, !825, !691, !829, !693, !830, !695, !825, !697, !829, !699, !831, !701, !825, !703, !832, !705, !825, !707, !833, !709, !834, !711, !828, !713, !831, !715, !835, !717, !831, !719, !836, !721, !837, !723, !838, !725, !839, !727, !840, !729, !840, !731, !831, !733, !840, !735, !840, !737, !839, !739, !841, !741, !840, !743, !840, !745, !841, !747, !828, !749, !829, !751, !842, !753, !843, !755, !843, !757, !840, !759, !840, !761, !844, !763, !840, !765, !843, !767, !845, !769, !846, !771, !847, !773, !840, !775, !848, !777, !849, !779, !850, !781, !851, !783, !852, !785, !831, !787, !853, !789, !843, !791, !826, !793, !840, !795, !831, !797, !834, !799, !854, !801, !839, !803, !855, !805, !856, !807, !857, !809, !828, !811, !858, !813, !859, !815, !860, !817, !861, !819, !862, !821, !863, !823, !864}
!xidane.function_declaration_filename = !{!681, !865, !683, !865, !685, !865, !687, !866, !689, !866, !691, !865, !693, !865, !695, !865, !697, !865, !699, !865, !701, !865, !703, !866, !705, !865, !707, !866, !709, !865, !711, !866, !713, !865, !715, !867, !717, !865, !719, !865, !721, !866, !723, !865, !725, !865, !727, !865, !729, !865, !731, !866, !733, !865, !735, !866, !737, !866, !739, !865, !741, !865, !743, !865, !745, !865, !747, !866, !749, !866, !751, !866, !753, !865, !755, !865, !757, !865, !759, !866, !761, !866, !763, !865, !765, !865, !767, !865, !769, !866, !771, !866, !773, !866, !775, !865, !777, !866, !779, !865, !781, !866, !783, !866, !785, !865, !787, !865, !789, !866, !791, !866, !793, !866, !795, !866, !797, !866, !799, !866, !801, !866, !803, !866, !805, !868, !807, !869, !809, !866, !811, !866, !813, !870, !815, !869, !817, !871, !819, !872, !821, !866, !823, !873}
!xidane.ExternC = !{!681, !683, !685, !691, !693, !695, !697, !699, !701, !705, !709, !713, !715, !717, !719, !723, !725, !727, !729, !733, !739, !741, !743, !745, !753, !755, !757, !763, !765, !767, !775, !779, !785, !787, !805, !807, !813, !815, !817, !819, !823}
!llvm.module.flags = !{!874, !875, !876, !877}
!llvm.ident = !{!878}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.0 (tags/RELEASE_350/final)", i1 false, metadata !"", i32 0, metadata !2, metadata !103, metadata !104, metadata !679, metadata !103, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src\lcode.c] [DW_LANG_C99]
!1 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src\5Clcode.c", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!2 = metadata !{metadata !3, metadata !53, metadata !71, metadata !79}
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
!53 = metadata !{i32 786436, metadata !54, null, metadata !"", i32 25, i64 32, i64 32, i32 0, i32 0, null, metadata !55, i32 0, null, null, null} ; [ DW_TAG_enumeration_type ] [line 25, size 32, align 32, offset 0] [def] [from ]
!54 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lparser.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!55 = metadata !{metadata !56, metadata !57, metadata !58, metadata !59, metadata !60, metadata !61, metadata !62, metadata !63, metadata !64, metadata !65, metadata !66, metadata !67, metadata !68, metadata !69, metadata !70}
!56 = metadata !{i32 786472, metadata !"VVOID", i64 0} ; [ DW_TAG_enumerator ] [VVOID :: 0]
!57 = metadata !{i32 786472, metadata !"VNIL", i64 1} ; [ DW_TAG_enumerator ] [VNIL :: 1]
!58 = metadata !{i32 786472, metadata !"VTRUE", i64 2} ; [ DW_TAG_enumerator ] [VTRUE :: 2]
!59 = metadata !{i32 786472, metadata !"VFALSE", i64 3} ; [ DW_TAG_enumerator ] [VFALSE :: 3]
!60 = metadata !{i32 786472, metadata !"VK", i64 4} ; [ DW_TAG_enumerator ] [VK :: 4]
!61 = metadata !{i32 786472, metadata !"VKFLT", i64 5} ; [ DW_TAG_enumerator ] [VKFLT :: 5]
!62 = metadata !{i32 786472, metadata !"VKINT", i64 6} ; [ DW_TAG_enumerator ] [VKINT :: 6]
!63 = metadata !{i32 786472, metadata !"VNONRELOC", i64 7} ; [ DW_TAG_enumerator ] [VNONRELOC :: 7]
!64 = metadata !{i32 786472, metadata !"VLOCAL", i64 8} ; [ DW_TAG_enumerator ] [VLOCAL :: 8]
!65 = metadata !{i32 786472, metadata !"VUPVAL", i64 9} ; [ DW_TAG_enumerator ] [VUPVAL :: 9]
!66 = metadata !{i32 786472, metadata !"VINDEXED", i64 10} ; [ DW_TAG_enumerator ] [VINDEXED :: 10]
!67 = metadata !{i32 786472, metadata !"VJMP", i64 11} ; [ DW_TAG_enumerator ] [VJMP :: 11]
!68 = metadata !{i32 786472, metadata !"VRELOCABLE", i64 12} ; [ DW_TAG_enumerator ] [VRELOCABLE :: 12]
!69 = metadata !{i32 786472, metadata !"VCALL", i64 13} ; [ DW_TAG_enumerator ] [VCALL :: 13]
!70 = metadata !{i32 786472, metadata !"VVARARG", i64 14} ; [ DW_TAG_enumerator ] [VVARARG :: 14]
!71 = metadata !{i32 786436, metadata !72, null, metadata !"UnOpr", i32 40, i64 32, i64 32, i32 0, i32 0, null, metadata !73, i32 0, null, null, null} ; [ DW_TAG_enumeration_type ] [UnOpr] [line 40, size 32, align 32, offset 0] [def] [from ]
!72 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lcode.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!73 = metadata !{metadata !74, metadata !75, metadata !76, metadata !77, metadata !78}
!74 = metadata !{i32 786472, metadata !"OPR_MINUS", i64 0} ; [ DW_TAG_enumerator ] [OPR_MINUS :: 0]
!75 = metadata !{i32 786472, metadata !"OPR_BNOT", i64 1} ; [ DW_TAG_enumerator ] [OPR_BNOT :: 1]
!76 = metadata !{i32 786472, metadata !"OPR_NOT", i64 2} ; [ DW_TAG_enumerator ] [OPR_NOT :: 2]
!77 = metadata !{i32 786472, metadata !"OPR_LEN", i64 3} ; [ DW_TAG_enumerator ] [OPR_LEN :: 3]
!78 = metadata !{i32 786472, metadata !"OPR_NOUNOPR", i64 4} ; [ DW_TAG_enumerator ] [OPR_NOUNOPR :: 4]
!79 = metadata !{i32 786436, metadata !72, null, metadata !"BinOpr", i32 26, i64 32, i64 32, i32 0, i32 0, null, metadata !80, i32 0, null, null, null} ; [ DW_TAG_enumeration_type ] [BinOpr] [line 26, size 32, align 32, offset 0] [def] [from ]
!80 = metadata !{metadata !81, metadata !82, metadata !83, metadata !84, metadata !85, metadata !86, metadata !87, metadata !88, metadata !89, metadata !90, metadata !91, metadata !92, metadata !93, metadata !94, metadata !95, metadata !96, metadata !97, metadata !98, metadata !99, metadata !100, metadata !101, metadata !102}
!81 = metadata !{i32 786472, metadata !"OPR_ADD", i64 0} ; [ DW_TAG_enumerator ] [OPR_ADD :: 0]
!82 = metadata !{i32 786472, metadata !"OPR_SUB", i64 1} ; [ DW_TAG_enumerator ] [OPR_SUB :: 1]
!83 = metadata !{i32 786472, metadata !"OPR_MUL", i64 2} ; [ DW_TAG_enumerator ] [OPR_MUL :: 2]
!84 = metadata !{i32 786472, metadata !"OPR_MOD", i64 3} ; [ DW_TAG_enumerator ] [OPR_MOD :: 3]
!85 = metadata !{i32 786472, metadata !"OPR_POW", i64 4} ; [ DW_TAG_enumerator ] [OPR_POW :: 4]
!86 = metadata !{i32 786472, metadata !"OPR_DIV", i64 5} ; [ DW_TAG_enumerator ] [OPR_DIV :: 5]
!87 = metadata !{i32 786472, metadata !"OPR_IDIV", i64 6} ; [ DW_TAG_enumerator ] [OPR_IDIV :: 6]
!88 = metadata !{i32 786472, metadata !"OPR_BAND", i64 7} ; [ DW_TAG_enumerator ] [OPR_BAND :: 7]
!89 = metadata !{i32 786472, metadata !"OPR_BOR", i64 8} ; [ DW_TAG_enumerator ] [OPR_BOR :: 8]
!90 = metadata !{i32 786472, metadata !"OPR_BXOR", i64 9} ; [ DW_TAG_enumerator ] [OPR_BXOR :: 9]
!91 = metadata !{i32 786472, metadata !"OPR_SHL", i64 10} ; [ DW_TAG_enumerator ] [OPR_SHL :: 10]
!92 = metadata !{i32 786472, metadata !"OPR_SHR", i64 11} ; [ DW_TAG_enumerator ] [OPR_SHR :: 11]
!93 = metadata !{i32 786472, metadata !"OPR_CONCAT", i64 12} ; [ DW_TAG_enumerator ] [OPR_CONCAT :: 12]
!94 = metadata !{i32 786472, metadata !"OPR_EQ", i64 13} ; [ DW_TAG_enumerator ] [OPR_EQ :: 13]
!95 = metadata !{i32 786472, metadata !"OPR_LT", i64 14} ; [ DW_TAG_enumerator ] [OPR_LT :: 14]
!96 = metadata !{i32 786472, metadata !"OPR_LE", i64 15} ; [ DW_TAG_enumerator ] [OPR_LE :: 15]
!97 = metadata !{i32 786472, metadata !"OPR_NE", i64 16} ; [ DW_TAG_enumerator ] [OPR_NE :: 16]
!98 = metadata !{i32 786472, metadata !"OPR_GT", i64 17} ; [ DW_TAG_enumerator ] [OPR_GT :: 17]
!99 = metadata !{i32 786472, metadata !"OPR_GE", i64 18} ; [ DW_TAG_enumerator ] [OPR_GE :: 18]
!100 = metadata !{i32 786472, metadata !"OPR_AND", i64 19} ; [ DW_TAG_enumerator ] [OPR_AND :: 19]
!101 = metadata !{i32 786472, metadata !"OPR_OR", i64 20} ; [ DW_TAG_enumerator ] [OPR_OR :: 20]
!102 = metadata !{i32 786472, metadata !"OPR_NOBINOPR", i64 21} ; [ DW_TAG_enumerator ] [OPR_NOBINOPR :: 21]
!103 = metadata !{}
!104 = metadata !{metadata !105, metadata !531, metadata !534, metadata !537, metadata !538, metadata !539, metadata !542, metadata !543, metadata !544, metadata !548, metadata !551, metadata !554, metadata !555, metadata !556, metadata !559, metadata !562, metadata !585, metadata !588, metadata !589, metadata !590, metadata !593, metadata !594, metadata !595, metadata !596, metadata !599, metadata !600, metadata !601, metadata !602, metadata !603, metadata !607, metadata !611, metadata !614, metadata !615, metadata !618, metadata !621, metadata !622, metadata !623, metadata !626, metadata !629, metadata !630, metadata !631, metadata !632, metadata !635, metadata !636, metadata !637, metadata !640, metadata !643, metadata !646, metadata !649, metadata !650, metadata !653, metadata !654, metadata !657, metadata !658, metadata !661, metadata !662, metadata !663, metadata !664, metadata !667, metadata !668, metadata !671, metadata !674, metadata !677, metadata !678}
!105 = metadata !{i32 786478, metadata !106, metadata !107, metadata !"luaK_nil", metadata !"luaK_nil", metadata !"", i32 64, metadata !108, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.FuncState*, i32, i32)* @luaK_nil, null, null, metadata !103, i32 64} ; [ DW_TAG_subprogram ] [line 64] [def] [luaK_nil]
!106 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lcode.c", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!107 = metadata !{i32 786473, metadata !106}      ; [ DW_TAG_file_type ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!108 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !109, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!109 = metadata !{null, metadata !110, metadata !137, metadata !137}
!110 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !111} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from FuncState]
!111 = metadata !{i32 786454, metadata !54, null, metadata !"FuncState", i32 126, i64 0, i64 0, i64 0, i32 0, metadata !112} ; [ DW_TAG_typedef ] [FuncState] [line 126, size 0, align 0, offset 0] [from FuncState]
!112 = metadata !{i32 786451, metadata !54, null, metadata !"FuncState", i32 111, i64 384, i64 32, i32 0, i32 0, null, metadata !113, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [FuncState] [line 111, size 384, align 32, offset 0] [def] [from ]
!113 = metadata !{metadata !114, metadata !432, metadata !434, metadata !518, metadata !521, metadata !522, metadata !523, metadata !524, metadata !525, metadata !526, metadata !527, metadata !528, metadata !529, metadata !530}
!114 = metadata !{i32 786445, metadata !54, metadata !112, metadata !"f", i32 112, i64 32, i64 32, i64 0, i32 0, metadata !115} ; [ DW_TAG_member ] [f] [line 112, size 32, align 32, offset 0] [from ]
!115 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !116} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from Proto]
!116 = metadata !{i32 786454, metadata !117, null, metadata !"Proto", i32 429, i64 0, i64 0, i64 0, i32 0, metadata !118} ; [ DW_TAG_typedef ] [Proto] [line 429, size 0, align 0, offset 0] [from Proto]
!117 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lobject.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!118 = metadata !{i32 786451, metadata !117, null, metadata !"Proto", i32 407, i64 640, i64 32, i32 0, i32 0, null, metadata !119, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [Proto] [line 407, size 640, align 32, offset 0] [def] [from ]
!119 = metadata !{metadata !120, metadata !131, metadata !132, metadata !133, metadata !134, metadata !135, metadata !136, metadata !138, metadata !139, metadata !140, metadata !141, metadata !142, metadata !143, metadata !144, metadata !145, metadata !393, metadata !395, metadata !398, metadata !400, metadata !408, metadata !416, metadata !430, metadata !431}
!120 = metadata !{i32 786445, metadata !117, metadata !118, metadata !"next", i32 408, i64 32, i64 32, i64 0, i32 0, metadata !121} ; [ DW_TAG_member ] [next] [line 408, size 32, align 32, offset 0] [from ]
!121 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !122} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from GCObject]
!122 = metadata !{i32 786454, metadata !117, null, metadata !"GCObject", i32 72, i64 0, i64 0, i64 0, i32 0, metadata !123} ; [ DW_TAG_typedef ] [GCObject] [line 72, size 0, align 0, offset 0] [from GCObject]
!123 = metadata !{i32 786451, metadata !117, null, metadata !"GCObject", i32 85, i64 64, i64 32, i32 0, i32 0, null, metadata !124, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [GCObject] [line 85, size 64, align 32, offset 0] [def] [from ]
!124 = metadata !{metadata !125, metadata !126, metadata !130}
!125 = metadata !{i32 786445, metadata !117, metadata !123, metadata !"next", i32 86, i64 32, i64 32, i64 0, i32 0, metadata !121} ; [ DW_TAG_member ] [next] [line 86, size 32, align 32, offset 0] [from ]
!126 = metadata !{i32 786445, metadata !117, metadata !123, metadata !"tt", i32 86, i64 8, i64 8, i64 32, i32 0, metadata !127} ; [ DW_TAG_member ] [tt] [line 86, size 8, align 8, offset 32] [from lu_byte]
!127 = metadata !{i32 786454, metadata !128, null, metadata !"lu_byte", i32 35, i64 0, i64 0, i64 0, i32 0, metadata !129} ; [ DW_TAG_typedef ] [lu_byte] [line 35, size 0, align 0, offset 0] [from unsigned char]
!128 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/llimits.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!129 = metadata !{i32 786468, null, null, metadata !"unsigned char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [unsigned char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!130 = metadata !{i32 786445, metadata !117, metadata !123, metadata !"marked", i32 86, i64 8, i64 8, i64 40, i32 0, metadata !127} ; [ DW_TAG_member ] [marked] [line 86, size 8, align 8, offset 40] [from lu_byte]
!131 = metadata !{i32 786445, metadata !117, metadata !118, metadata !"tt", i32 408, i64 8, i64 8, i64 32, i32 0, metadata !127} ; [ DW_TAG_member ] [tt] [line 408, size 8, align 8, offset 32] [from lu_byte]
!132 = metadata !{i32 786445, metadata !117, metadata !118, metadata !"marked", i32 408, i64 8, i64 8, i64 40, i32 0, metadata !127} ; [ DW_TAG_member ] [marked] [line 408, size 8, align 8, offset 40] [from lu_byte]
!133 = metadata !{i32 786445, metadata !117, metadata !118, metadata !"numparams", i32 409, i64 8, i64 8, i64 48, i32 0, metadata !127} ; [ DW_TAG_member ] [numparams] [line 409, size 8, align 8, offset 48] [from lu_byte]
!134 = metadata !{i32 786445, metadata !117, metadata !118, metadata !"is_vararg", i32 410, i64 8, i64 8, i64 56, i32 0, metadata !127} ; [ DW_TAG_member ] [is_vararg] [line 410, size 8, align 8, offset 56] [from lu_byte]
!135 = metadata !{i32 786445, metadata !117, metadata !118, metadata !"maxstacksize", i32 411, i64 8, i64 8, i64 64, i32 0, metadata !127} ; [ DW_TAG_member ] [maxstacksize] [line 411, size 8, align 8, offset 64] [from lu_byte]
!136 = metadata !{i32 786445, metadata !117, metadata !118, metadata !"sizeupvalues", i32 412, i64 32, i64 32, i64 96, i32 0, metadata !137} ; [ DW_TAG_member ] [sizeupvalues] [line 412, size 32, align 32, offset 96] [from int]
!137 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!138 = metadata !{i32 786445, metadata !117, metadata !118, metadata !"sizek", i32 413, i64 32, i64 32, i64 128, i32 0, metadata !137} ; [ DW_TAG_member ] [sizek] [line 413, size 32, align 32, offset 128] [from int]
!139 = metadata !{i32 786445, metadata !117, metadata !118, metadata !"sizecode", i32 414, i64 32, i64 32, i64 160, i32 0, metadata !137} ; [ DW_TAG_member ] [sizecode] [line 414, size 32, align 32, offset 160] [from int]
!140 = metadata !{i32 786445, metadata !117, metadata !118, metadata !"sizelineinfo", i32 415, i64 32, i64 32, i64 192, i32 0, metadata !137} ; [ DW_TAG_member ] [sizelineinfo] [line 415, size 32, align 32, offset 192] [from int]
!141 = metadata !{i32 786445, metadata !117, metadata !118, metadata !"sizep", i32 416, i64 32, i64 32, i64 224, i32 0, metadata !137} ; [ DW_TAG_member ] [sizep] [line 416, size 32, align 32, offset 224] [from int]
!142 = metadata !{i32 786445, metadata !117, metadata !118, metadata !"sizelocvars", i32 417, i64 32, i64 32, i64 256, i32 0, metadata !137} ; [ DW_TAG_member ] [sizelocvars] [line 417, size 32, align 32, offset 256] [from int]
!143 = metadata !{i32 786445, metadata !117, metadata !118, metadata !"linedefined", i32 418, i64 32, i64 32, i64 288, i32 0, metadata !137} ; [ DW_TAG_member ] [linedefined] [line 418, size 32, align 32, offset 288] [from int]
!144 = metadata !{i32 786445, metadata !117, metadata !118, metadata !"lastlinedefined", i32 419, i64 32, i64 32, i64 320, i32 0, metadata !137} ; [ DW_TAG_member ] [lastlinedefined] [line 419, size 32, align 32, offset 320] [from int]
!145 = metadata !{i32 786445, metadata !117, metadata !118, metadata !"k", i32 420, i64 32, i64 32, i64 352, i32 0, metadata !146} ; [ DW_TAG_member ] [k] [line 420, size 32, align 32, offset 352] [from ]
!146 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !147} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from TValue]
!147 = metadata !{i32 786454, metadata !117, null, metadata !"TValue", i32 115, i64 0, i64 0, i64 0, i32 0, metadata !148} ; [ DW_TAG_typedef ] [TValue] [line 115, size 0, align 0, offset 0] [from lua_TValue]
!148 = metadata !{i32 786451, metadata !117, null, metadata !"lua_TValue", i32 113, i64 128, i64 64, i32 0, i32 0, null, metadata !149, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [lua_TValue] [line 113, size 128, align 64, offset 0] [def] [from ]
!149 = metadata !{metadata !150, metadata !392}
!150 = metadata !{i32 786445, metadata !117, metadata !148, metadata !"value_", i32 114, i64 64, i64 64, i64 0, i32 0, metadata !151} ; [ DW_TAG_member ] [value_] [line 114, size 64, align 64, offset 0] [from Value]
!151 = metadata !{i32 786454, metadata !117, null, metadata !"Value", i32 107, i64 0, i64 0, i64 0, i32 0, metadata !152} ; [ DW_TAG_typedef ] [Value] [line 107, size 0, align 0, offset 0] [from Value]
!152 = metadata !{i32 786455, metadata !117, null, metadata !"Value", i32 100, i64 64, i64 64, i64 0, i32 0, null, metadata !153, i32 0, null, null, null} ; [ DW_TAG_union_type ] [Value] [line 100, size 64, align 64, offset 0] [def] [from ]
!153 = metadata !{metadata !154, metadata !155, metadata !157, metadata !158, metadata !388, metadata !391}
!154 = metadata !{i32 786445, metadata !117, metadata !152, metadata !"gc", i32 101, i64 32, i64 32, i64 0, i32 0, metadata !121} ; [ DW_TAG_member ] [gc] [line 101, size 32, align 32, offset 0] [from ]
!155 = metadata !{i32 786445, metadata !117, metadata !152, metadata !"p", i32 102, i64 32, i64 32, i64 0, i32 0, metadata !156} ; [ DW_TAG_member ] [p] [line 102, size 32, align 32, offset 0] [from ]
!156 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!157 = metadata !{i32 786445, metadata !117, metadata !152, metadata !"b", i32 103, i64 32, i64 32, i64 0, i32 0, metadata !137} ; [ DW_TAG_member ] [b] [line 103, size 32, align 32, offset 0] [from int]
!158 = metadata !{i32 786445, metadata !117, metadata !152, metadata !"f", i32 104, i64 32, i64 32, i64 0, i32 0, metadata !159} ; [ DW_TAG_member ] [f] [line 104, size 32, align 32, offset 0] [from lua_CFunction]
!159 = metadata !{i32 786454, metadata !160, null, metadata !"lua_CFunction", i32 105, i64 0, i64 0, i64 0, i32 0, metadata !161} ; [ DW_TAG_typedef ] [lua_CFunction] [line 105, size 0, align 0, offset 0] [from ]
!160 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lua.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!161 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !162} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!162 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !163, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!163 = metadata !{metadata !137, metadata !164}
!164 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !165} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from lua_State]
!165 = metadata !{i32 786454, metadata !160, null, metadata !"lua_State", i32 56, i64 0, i64 0, i64 0, i32 0, metadata !166} ; [ DW_TAG_typedef ] [lua_State] [line 56, size 0, align 0, offset 0] [from lua_State]
!166 = metadata !{i32 786451, metadata !167, null, metadata !"lua_State", i32 159, i64 960, i64 32, i32 0, i32 0, null, metadata !168, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [lua_State] [line 159, size 960, align 32, offset 0] [def] [from ]
!167 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lstate.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!168 = metadata !{metadata !169, metadata !170, metadata !171, metadata !172, metadata !174, metadata !175, metadata !177, metadata !295, metadata !333, metadata !334, metadata !335, metadata !336, metadata !340, metadata !341, metadata !342, metadata !345, metadata !346, metadata !376, metadata !377, metadata !378, metadata !379, metadata !380, metadata !381, metadata !382, metadata !387}
!169 = metadata !{i32 786445, metadata !167, metadata !166, metadata !"next", i32 160, i64 32, i64 32, i64 0, i32 0, metadata !121} ; [ DW_TAG_member ] [next] [line 160, size 32, align 32, offset 0] [from ]
!170 = metadata !{i32 786445, metadata !167, metadata !166, metadata !"tt", i32 160, i64 8, i64 8, i64 32, i32 0, metadata !127} ; [ DW_TAG_member ] [tt] [line 160, size 8, align 8, offset 32] [from lu_byte]
!171 = metadata !{i32 786445, metadata !167, metadata !166, metadata !"marked", i32 160, i64 8, i64 8, i64 40, i32 0, metadata !127} ; [ DW_TAG_member ] [marked] [line 160, size 8, align 8, offset 40] [from lu_byte]
!172 = metadata !{i32 786445, metadata !167, metadata !166, metadata !"nci", i32 161, i64 16, i64 16, i64 48, i32 0, metadata !173} ; [ DW_TAG_member ] [nci] [line 161, size 16, align 16, offset 48] [from unsigned short]
!173 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!174 = metadata !{i32 786445, metadata !167, metadata !166, metadata !"status", i32 162, i64 8, i64 8, i64 64, i32 0, metadata !127} ; [ DW_TAG_member ] [status] [line 162, size 8, align 8, offset 64] [from lu_byte]
!175 = metadata !{i32 786445, metadata !167, metadata !166, metadata !"top", i32 163, i64 32, i64 32, i64 96, i32 0, metadata !176} ; [ DW_TAG_member ] [top] [line 163, size 32, align 32, offset 96] [from StkId]
!176 = metadata !{i32 786454, metadata !117, null, metadata !"StkId", i32 294, i64 0, i64 0, i64 0, i32 0, metadata !146} ; [ DW_TAG_typedef ] [StkId] [line 294, size 0, align 0, offset 0] [from ]
!177 = metadata !{i32 786445, metadata !167, metadata !166, metadata !"l_G", i32 164, i64 32, i64 32, i64 128, i32 0, metadata !178} ; [ DW_TAG_member ] [l_G] [line 164, size 32, align 32, offset 128] [from ]
!178 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !179} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from global_State]
!179 = metadata !{i32 786454, metadata !167, null, metadata !"global_State", i32 153, i64 0, i64 0, i64 0, i32 0, metadata !180} ; [ DW_TAG_typedef ] [global_State] [line 153, size 0, align 0, offset 0] [from global_State]
!180 = metadata !{i32 786451, metadata !167, null, metadata !"global_State", i32 118, i64 5568, i64 64, i32 0, i32 0, null, metadata !181, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [global_State] [line 118, size 5568, align 64, offset 0] [def] [from ]
!181 = metadata !{metadata !182, metadata !190, metadata !191, metadata !194, metadata !195, metadata !197, metadata !198, metadata !222, metadata !223, metadata !224, metadata !225, metadata !226, metadata !227, metadata !228, metadata !229, metadata !231, metadata !232, metadata !233, metadata !234, metadata !235, metadata !236, metadata !237, metadata !238, metadata !239, metadata !241, metadata !242, metadata !243, metadata !244, metadata !245, metadata !246, metadata !251, metadata !252, metadata !256, metadata !290}
!182 = metadata !{i32 786445, metadata !167, metadata !180, metadata !"frealloc", i32 119, i64 32, i64 32, i64 0, i32 0, metadata !183} ; [ DW_TAG_member ] [frealloc] [line 119, size 32, align 32, offset 0] [from lua_Alloc]
!183 = metadata !{i32 786454, metadata !160, null, metadata !"lua_Alloc", i32 124, i64 0, i64 0, i64 0, i32 0, metadata !184} ; [ DW_TAG_typedef ] [lua_Alloc] [line 124, size 0, align 0, offset 0] [from ]
!184 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !185} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!185 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !186, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!186 = metadata !{metadata !156, metadata !156, metadata !156, metadata !187, metadata !187}
!187 = metadata !{i32 786454, metadata !188, null, metadata !"size_t", i32 216, i64 0, i64 0, i64 0, i32 0, metadata !189} ; [ DW_TAG_typedef ] [size_t] [line 216, size 0, align 0, offset 0] [from unsigned int]
!188 = metadata !{metadata !"D:/Xilinx/SDx/2016.3/SDK/gnu/aarch32/nt/gcc-arm-linux-gnueabi/lib/gcc/arm-linux-gnueabihf/5.2.1/include\5Cstddef.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!189 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!190 = metadata !{i32 786445, metadata !167, metadata !180, metadata !"ud", i32 120, i64 32, i64 32, i64 32, i32 0, metadata !156} ; [ DW_TAG_member ] [ud] [line 120, size 32, align 32, offset 32] [from ]
!191 = metadata !{i32 786445, metadata !167, metadata !180, metadata !"totalbytes", i32 121, i64 32, i64 32, i64 64, i32 0, metadata !192} ; [ DW_TAG_member ] [totalbytes] [line 121, size 32, align 32, offset 64] [from l_mem]
!192 = metadata !{i32 786454, metadata !128, null, metadata !"l_mem", i32 27, i64 0, i64 0, i64 0, i32 0, metadata !193} ; [ DW_TAG_typedef ] [l_mem] [line 27, size 0, align 0, offset 0] [from ptrdiff_t]
!193 = metadata !{i32 786454, metadata !188, null, metadata !"ptrdiff_t", i32 149, i64 0, i64 0, i64 0, i32 0, metadata !137} ; [ DW_TAG_typedef ] [ptrdiff_t] [line 149, size 0, align 0, offset 0] [from int]
!194 = metadata !{i32 786445, metadata !167, metadata !180, metadata !"GCdebt", i32 122, i64 32, i64 32, i64 96, i32 0, metadata !192} ; [ DW_TAG_member ] [GCdebt] [line 122, size 32, align 32, offset 96] [from l_mem]
!195 = metadata !{i32 786445, metadata !167, metadata !180, metadata !"GCmemtrav", i32 123, i64 32, i64 32, i64 128, i32 0, metadata !196} ; [ DW_TAG_member ] [GCmemtrav] [line 123, size 32, align 32, offset 128] [from lu_mem]
!196 = metadata !{i32 786454, metadata !128, null, metadata !"lu_mem", i32 26, i64 0, i64 0, i64 0, i32 0, metadata !187} ; [ DW_TAG_typedef ] [lu_mem] [line 26, size 0, align 0, offset 0] [from size_t]
!197 = metadata !{i32 786445, metadata !167, metadata !180, metadata !"GCestimate", i32 124, i64 32, i64 32, i64 160, i32 0, metadata !196} ; [ DW_TAG_member ] [GCestimate] [line 124, size 32, align 32, offset 160] [from lu_mem]
!198 = metadata !{i32 786445, metadata !167, metadata !180, metadata !"strt", i32 125, i64 96, i64 32, i64 192, i32 0, metadata !199} ; [ DW_TAG_member ] [strt] [line 125, size 96, align 32, offset 192] [from stringtable]
!199 = metadata !{i32 786454, metadata !167, null, metadata !"stringtable", i32 62, i64 0, i64 0, i64 0, i32 0, metadata !200} ; [ DW_TAG_typedef ] [stringtable] [line 62, size 0, align 0, offset 0] [from stringtable]
!200 = metadata !{i32 786451, metadata !167, null, metadata !"stringtable", i32 58, i64 96, i64 32, i32 0, i32 0, null, metadata !201, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [stringtable] [line 58, size 96, align 32, offset 0] [def] [from ]
!201 = metadata !{metadata !202, metadata !220, metadata !221}
!202 = metadata !{i32 786445, metadata !167, metadata !200, metadata !"hash", i32 59, i64 32, i64 32, i64 0, i32 0, metadata !203} ; [ DW_TAG_member ] [hash] [line 59, size 32, align 32, offset 0] [from ]
!203 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !204} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!204 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !205} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from TString]
!205 = metadata !{i32 786454, metadata !117, null, metadata !"TString", i32 312, i64 0, i64 0, i64 0, i32 0, metadata !206} ; [ DW_TAG_typedef ] [TString] [line 312, size 0, align 0, offset 0] [from TString]
!206 = metadata !{i32 786451, metadata !117, null, metadata !"TString", i32 303, i64 128, i64 32, i32 0, i32 0, null, metadata !207, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [TString] [line 303, size 128, align 32, offset 0] [def] [from ]
!207 = metadata !{metadata !208, metadata !209, metadata !210, metadata !211, metadata !212, metadata !213, metadata !214}
!208 = metadata !{i32 786445, metadata !117, metadata !206, metadata !"next", i32 304, i64 32, i64 32, i64 0, i32 0, metadata !121} ; [ DW_TAG_member ] [next] [line 304, size 32, align 32, offset 0] [from ]
!209 = metadata !{i32 786445, metadata !117, metadata !206, metadata !"tt", i32 304, i64 8, i64 8, i64 32, i32 0, metadata !127} ; [ DW_TAG_member ] [tt] [line 304, size 8, align 8, offset 32] [from lu_byte]
!210 = metadata !{i32 786445, metadata !117, metadata !206, metadata !"marked", i32 304, i64 8, i64 8, i64 40, i32 0, metadata !127} ; [ DW_TAG_member ] [marked] [line 304, size 8, align 8, offset 40] [from lu_byte]
!211 = metadata !{i32 786445, metadata !117, metadata !206, metadata !"extra", i32 305, i64 8, i64 8, i64 48, i32 0, metadata !127} ; [ DW_TAG_member ] [extra] [line 305, size 8, align 8, offset 48] [from lu_byte]
!212 = metadata !{i32 786445, metadata !117, metadata !206, metadata !"shrlen", i32 306, i64 8, i64 8, i64 56, i32 0, metadata !127} ; [ DW_TAG_member ] [shrlen] [line 306, size 8, align 8, offset 56] [from lu_byte]
!213 = metadata !{i32 786445, metadata !117, metadata !206, metadata !"hash", i32 307, i64 32, i64 32, i64 64, i32 0, metadata !189} ; [ DW_TAG_member ] [hash] [line 307, size 32, align 32, offset 64] [from unsigned int]
!214 = metadata !{i32 786445, metadata !117, metadata !206, metadata !"u", i32 311, i64 32, i64 32, i64 96, i32 0, metadata !215} ; [ DW_TAG_member ] [u] [line 311, size 32, align 32, offset 96] [from ]
!215 = metadata !{i32 786455, metadata !117, metadata !206, metadata !"", i32 308, i64 32, i64 32, i64 0, i32 0, null, metadata !216, i32 0, null, null, null} ; [ DW_TAG_union_type ] [line 308, size 32, align 32, offset 0] [def] [from ]
!216 = metadata !{metadata !217, metadata !218}
!217 = metadata !{i32 786445, metadata !117, metadata !215, metadata !"lnglen", i32 309, i64 32, i64 32, i64 0, i32 0, metadata !187} ; [ DW_TAG_member ] [lnglen] [line 309, size 32, align 32, offset 0] [from size_t]
!218 = metadata !{i32 786445, metadata !117, metadata !215, metadata !"hnext", i32 310, i64 32, i64 32, i64 0, i32 0, metadata !219} ; [ DW_TAG_member ] [hnext] [line 310, size 32, align 32, offset 0] [from ]
!219 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !206} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from TString]
!220 = metadata !{i32 786445, metadata !167, metadata !200, metadata !"nuse", i32 60, i64 32, i64 32, i64 32, i32 0, metadata !137} ; [ DW_TAG_member ] [nuse] [line 60, size 32, align 32, offset 32] [from int]
!221 = metadata !{i32 786445, metadata !167, metadata !200, metadata !"size", i32 61, i64 32, i64 32, i64 64, i32 0, metadata !137} ; [ DW_TAG_member ] [size] [line 61, size 32, align 32, offset 64] [from int]
!222 = metadata !{i32 786445, metadata !167, metadata !180, metadata !"l_registry", i32 126, i64 128, i64 64, i64 320, i32 0, metadata !147} ; [ DW_TAG_member ] [l_registry] [line 126, size 128, align 64, offset 320] [from TValue]
!223 = metadata !{i32 786445, metadata !167, metadata !180, metadata !"seed", i32 127, i64 32, i64 32, i64 448, i32 0, metadata !189} ; [ DW_TAG_member ] [seed] [line 127, size 32, align 32, offset 448] [from unsigned int]
!224 = metadata !{i32 786445, metadata !167, metadata !180, metadata !"currentwhite", i32 128, i64 8, i64 8, i64 480, i32 0, metadata !127} ; [ DW_TAG_member ] [currentwhite] [line 128, size 8, align 8, offset 480] [from lu_byte]
!225 = metadata !{i32 786445, metadata !167, metadata !180, metadata !"gcstate", i32 129, i64 8, i64 8, i64 488, i32 0, metadata !127} ; [ DW_TAG_member ] [gcstate] [line 129, size 8, align 8, offset 488] [from lu_byte]
!226 = metadata !{i32 786445, metadata !167, metadata !180, metadata !"gckind", i32 130, i64 8, i64 8, i64 496, i32 0, metadata !127} ; [ DW_TAG_member ] [gckind] [line 130, size 8, align 8, offset 496] [from lu_byte]
!227 = metadata !{i32 786445, metadata !167, metadata !180, metadata !"gcrunning", i32 131, i64 8, i64 8, i64 504, i32 0, metadata !127} ; [ DW_TAG_member ] [gcrunning] [line 131, size 8, align 8, offset 504] [from lu_byte]
!228 = metadata !{i32 786445, metadata !167, metadata !180, metadata !"allgc", i32 132, i64 32, i64 32, i64 512, i32 0, metadata !121} ; [ DW_TAG_member ] [allgc] [line 132, size 32, align 32, offset 512] [from ]
!229 = metadata !{i32 786445, metadata !167, metadata !180, metadata !"sweepgc", i32 133, i64 32, i64 32, i64 544, i32 0, metadata !230} ; [ DW_TAG_member ] [sweepgc] [line 133, size 32, align 32, offset 544] [from ]
!230 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !121} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!231 = metadata !{i32 786445, metadata !167, metadata !180, metadata !"finobj", i32 134, i64 32, i64 32, i64 576, i32 0, metadata !121} ; [ DW_TAG_member ] [finobj] [line 134, size 32, align 32, offset 576] [from ]
!232 = metadata !{i32 786445, metadata !167, metadata !180, metadata !"gray", i32 135, i64 32, i64 32, i64 608, i32 0, metadata !121} ; [ DW_TAG_member ] [gray] [line 135, size 32, align 32, offset 608] [from ]
!233 = metadata !{i32 786445, metadata !167, metadata !180, metadata !"grayagain", i32 136, i64 32, i64 32, i64 640, i32 0, metadata !121} ; [ DW_TAG_member ] [grayagain] [line 136, size 32, align 32, offset 640] [from ]
!234 = metadata !{i32 786445, metadata !167, metadata !180, metadata !"weak", i32 137, i64 32, i64 32, i64 672, i32 0, metadata !121} ; [ DW_TAG_member ] [weak] [line 137, size 32, align 32, offset 672] [from ]
!235 = metadata !{i32 786445, metadata !167, metadata !180, metadata !"ephemeron", i32 138, i64 32, i64 32, i64 704, i32 0, metadata !121} ; [ DW_TAG_member ] [ephemeron] [line 138, size 32, align 32, offset 704] [from ]
!236 = metadata !{i32 786445, metadata !167, metadata !180, metadata !"allweak", i32 139, i64 32, i64 32, i64 736, i32 0, metadata !121} ; [ DW_TAG_member ] [allweak] [line 139, size 32, align 32, offset 736] [from ]
!237 = metadata !{i32 786445, metadata !167, metadata !180, metadata !"tobefnz", i32 140, i64 32, i64 32, i64 768, i32 0, metadata !121} ; [ DW_TAG_member ] [tobefnz] [line 140, size 32, align 32, offset 768] [from ]
!238 = metadata !{i32 786445, metadata !167, metadata !180, metadata !"fixedgc", i32 141, i64 32, i64 32, i64 800, i32 0, metadata !121} ; [ DW_TAG_member ] [fixedgc] [line 141, size 32, align 32, offset 800] [from ]
!239 = metadata !{i32 786445, metadata !167, metadata !180, metadata !"twups", i32 142, i64 32, i64 32, i64 832, i32 0, metadata !240} ; [ DW_TAG_member ] [twups] [line 142, size 32, align 32, offset 832] [from ]
!240 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !166} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from lua_State]
!241 = metadata !{i32 786445, metadata !167, metadata !180, metadata !"gcfinnum", i32 143, i64 32, i64 32, i64 864, i32 0, metadata !189} ; [ DW_TAG_member ] [gcfinnum] [line 143, size 32, align 32, offset 864] [from unsigned int]
!242 = metadata !{i32 786445, metadata !167, metadata !180, metadata !"gcpause", i32 144, i64 32, i64 32, i64 896, i32 0, metadata !137} ; [ DW_TAG_member ] [gcpause] [line 144, size 32, align 32, offset 896] [from int]
!243 = metadata !{i32 786445, metadata !167, metadata !180, metadata !"gcstepmul", i32 145, i64 32, i64 32, i64 928, i32 0, metadata !137} ; [ DW_TAG_member ] [gcstepmul] [line 145, size 32, align 32, offset 928] [from int]
!244 = metadata !{i32 786445, metadata !167, metadata !180, metadata !"panic", i32 146, i64 32, i64 32, i64 960, i32 0, metadata !159} ; [ DW_TAG_member ] [panic] [line 146, size 32, align 32, offset 960] [from lua_CFunction]
!245 = metadata !{i32 786445, metadata !167, metadata !180, metadata !"mainthread", i32 147, i64 32, i64 32, i64 992, i32 0, metadata !240} ; [ DW_TAG_member ] [mainthread] [line 147, size 32, align 32, offset 992] [from ]
!246 = metadata !{i32 786445, metadata !167, metadata !180, metadata !"version", i32 148, i64 32, i64 32, i64 1024, i32 0, metadata !247} ; [ DW_TAG_member ] [version] [line 148, size 32, align 32, offset 1024] [from ]
!247 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !248} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!248 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !249} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from lua_Number]
!249 = metadata !{i32 786454, metadata !160, null, metadata !"lua_Number", i32 89, i64 0, i64 0, i64 0, i32 0, metadata !250} ; [ DW_TAG_typedef ] [lua_Number] [line 89, size 0, align 0, offset 0] [from double]
!250 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!251 = metadata !{i32 786445, metadata !167, metadata !180, metadata !"memerrmsg", i32 149, i64 32, i64 32, i64 1056, i32 0, metadata !204} ; [ DW_TAG_member ] [memerrmsg] [line 149, size 32, align 32, offset 1056] [from ]
!252 = metadata !{i32 786445, metadata !167, metadata !180, metadata !"tmname", i32 150, i64 768, i64 32, i64 1088, i32 0, metadata !253} ; [ DW_TAG_member ] [tmname] [line 150, size 768, align 32, offset 1088] [from ]
!253 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 768, i64 32, i32 0, i32 0, metadata !204, metadata !254, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 768, align 32, offset 0] [from ]
!254 = metadata !{metadata !255}
!255 = metadata !{i32 786465, i64 0, i64 24}      ; [ DW_TAG_subrange_type ] [0, 23]
!256 = metadata !{i32 786445, metadata !167, metadata !180, metadata !"mt", i32 151, i64 288, i64 32, i64 1856, i32 0, metadata !257} ; [ DW_TAG_member ] [mt] [line 151, size 288, align 32, offset 1856] [from ]
!257 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 288, i64 32, i32 0, i32 0, metadata !258, metadata !288, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 288, align 32, offset 0] [from ]
!258 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !259} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from Table]
!259 = metadata !{i32 786451, metadata !117, null, metadata !"Table", i32 497, i64 256, i64 32, i32 0, i32 0, null, metadata !260, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [Table] [line 497, size 256, align 32, offset 0] [def] [from ]
!260 = metadata !{metadata !261, metadata !262, metadata !263, metadata !264, metadata !265, metadata !266, metadata !267, metadata !268, metadata !285, metadata !286, metadata !287}
!261 = metadata !{i32 786445, metadata !117, metadata !259, metadata !"next", i32 498, i64 32, i64 32, i64 0, i32 0, metadata !121} ; [ DW_TAG_member ] [next] [line 498, size 32, align 32, offset 0] [from ]
!262 = metadata !{i32 786445, metadata !117, metadata !259, metadata !"tt", i32 498, i64 8, i64 8, i64 32, i32 0, metadata !127} ; [ DW_TAG_member ] [tt] [line 498, size 8, align 8, offset 32] [from lu_byte]
!263 = metadata !{i32 786445, metadata !117, metadata !259, metadata !"marked", i32 498, i64 8, i64 8, i64 40, i32 0, metadata !127} ; [ DW_TAG_member ] [marked] [line 498, size 8, align 8, offset 40] [from lu_byte]
!264 = metadata !{i32 786445, metadata !117, metadata !259, metadata !"flags", i32 499, i64 8, i64 8, i64 48, i32 0, metadata !127} ; [ DW_TAG_member ] [flags] [line 499, size 8, align 8, offset 48] [from lu_byte]
!265 = metadata !{i32 786445, metadata !117, metadata !259, metadata !"lsizenode", i32 500, i64 8, i64 8, i64 56, i32 0, metadata !127} ; [ DW_TAG_member ] [lsizenode] [line 500, size 8, align 8, offset 56] [from lu_byte]
!266 = metadata !{i32 786445, metadata !117, metadata !259, metadata !"sizearray", i32 501, i64 32, i64 32, i64 64, i32 0, metadata !189} ; [ DW_TAG_member ] [sizearray] [line 501, size 32, align 32, offset 64] [from unsigned int]
!267 = metadata !{i32 786445, metadata !117, metadata !259, metadata !"array", i32 502, i64 32, i64 32, i64 96, i32 0, metadata !146} ; [ DW_TAG_member ] [array] [line 502, size 32, align 32, offset 96] [from ]
!268 = metadata !{i32 786445, metadata !117, metadata !259, metadata !"node", i32 503, i64 32, i64 32, i64 128, i32 0, metadata !269} ; [ DW_TAG_member ] [node] [line 503, size 32, align 32, offset 128] [from ]
!269 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !270} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from Node]
!270 = metadata !{i32 786454, metadata !117, null, metadata !"Node", i32 494, i64 0, i64 0, i64 0, i32 0, metadata !271} ; [ DW_TAG_typedef ] [Node] [line 494, size 0, align 0, offset 0] [from Node]
!271 = metadata !{i32 786451, metadata !117, null, metadata !"Node", i32 491, i64 256, i64 64, i32 0, i32 0, null, metadata !272, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [Node] [line 491, size 256, align 64, offset 0] [def] [from ]
!272 = metadata !{metadata !273, metadata !274}
!273 = metadata !{i32 786445, metadata !117, metadata !271, metadata !"i_val", i32 492, i64 128, i64 64, i64 0, i32 0, metadata !147} ; [ DW_TAG_member ] [i_val] [line 492, size 128, align 64, offset 0] [from TValue]
!274 = metadata !{i32 786445, metadata !117, metadata !271, metadata !"i_key", i32 493, i64 128, i64 64, i64 128, i32 0, metadata !275} ; [ DW_TAG_member ] [i_key] [line 493, size 128, align 64, offset 128] [from TKey]
!275 = metadata !{i32 786454, metadata !117, null, metadata !"TKey", i32 481, i64 0, i64 0, i64 0, i32 0, metadata !276} ; [ DW_TAG_typedef ] [TKey] [line 481, size 0, align 0, offset 0] [from TKey]
!276 = metadata !{i32 786455, metadata !117, null, metadata !"TKey", i32 475, i64 128, i64 64, i64 0, i32 0, null, metadata !277, i32 0, null, null, null} ; [ DW_TAG_union_type ] [TKey] [line 475, size 128, align 64, offset 0] [def] [from ]
!277 = metadata !{metadata !278, metadata !284}
!278 = metadata !{i32 786445, metadata !117, metadata !276, metadata !"nk", i32 479, i64 128, i64 64, i64 0, i32 0, metadata !279} ; [ DW_TAG_member ] [nk] [line 479, size 128, align 64, offset 0] [from ]
!279 = metadata !{i32 786451, metadata !117, metadata !276, metadata !"", i32 476, i64 128, i64 64, i32 0, i32 0, null, metadata !280, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 476, size 128, align 64, offset 0] [def] [from ]
!280 = metadata !{metadata !281, metadata !282, metadata !283}
!281 = metadata !{i32 786445, metadata !117, metadata !279, metadata !"value_", i32 477, i64 64, i64 64, i64 0, i32 0, metadata !151} ; [ DW_TAG_member ] [value_] [line 477, size 64, align 64, offset 0] [from Value]
!282 = metadata !{i32 786445, metadata !117, metadata !279, metadata !"tt_", i32 477, i64 32, i64 32, i64 64, i32 0, metadata !137} ; [ DW_TAG_member ] [tt_] [line 477, size 32, align 32, offset 64] [from int]
!283 = metadata !{i32 786445, metadata !117, metadata !279, metadata !"next", i32 478, i64 32, i64 32, i64 96, i32 0, metadata !137} ; [ DW_TAG_member ] [next] [line 478, size 32, align 32, offset 96] [from int]
!284 = metadata !{i32 786445, metadata !117, metadata !276, metadata !"tvk", i32 480, i64 128, i64 64, i64 0, i32 0, metadata !147} ; [ DW_TAG_member ] [tvk] [line 480, size 128, align 64, offset 0] [from TValue]
!285 = metadata !{i32 786445, metadata !117, metadata !259, metadata !"lastfree", i32 504, i64 32, i64 32, i64 160, i32 0, metadata !269} ; [ DW_TAG_member ] [lastfree] [line 504, size 32, align 32, offset 160] [from ]
!286 = metadata !{i32 786445, metadata !117, metadata !259, metadata !"metatable", i32 505, i64 32, i64 32, i64 192, i32 0, metadata !258} ; [ DW_TAG_member ] [metatable] [line 505, size 32, align 32, offset 192] [from ]
!287 = metadata !{i32 786445, metadata !117, metadata !259, metadata !"gclist", i32 506, i64 32, i64 32, i64 224, i32 0, metadata !121} ; [ DW_TAG_member ] [gclist] [line 506, size 32, align 32, offset 224] [from ]
!288 = metadata !{metadata !289}
!289 = metadata !{i32 786465, i64 0, i64 9}       ; [ DW_TAG_subrange_type ] [0, 8]
!290 = metadata !{i32 786445, metadata !167, metadata !180, metadata !"strcache", i32 152, i64 3392, i64 32, i64 2144, i32 0, metadata !291} ; [ DW_TAG_member ] [strcache] [line 152, size 3392, align 32, offset 2144] [from ]
!291 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 3392, i64 32, i32 0, i32 0, metadata !204, metadata !292, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 3392, align 32, offset 0] [from ]
!292 = metadata !{metadata !293, metadata !294}
!293 = metadata !{i32 786465, i64 0, i64 53}      ; [ DW_TAG_subrange_type ] [0, 52]
!294 = metadata !{i32 786465, i64 0, i64 2}       ; [ DW_TAG_subrange_type ] [0, 1]
!295 = metadata !{i32 786445, metadata !167, metadata !166, metadata !"ci", i32 165, i64 32, i64 32, i64 160, i32 0, metadata !296} ; [ DW_TAG_member ] [ci] [line 165, size 32, align 32, offset 160] [from ]
!296 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !297} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from CallInfo]
!297 = metadata !{i32 786454, metadata !167, null, metadata !"CallInfo", i32 92, i64 0, i64 0, i64 0, i32 0, metadata !298} ; [ DW_TAG_typedef ] [CallInfo] [line 92, size 0, align 0, offset 0] [from CallInfo]
!298 = metadata !{i32 786451, metadata !167, null, metadata !"CallInfo", i32 74, i64 288, i64 32, i32 0, i32 0, null, metadata !299, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [CallInfo] [line 74, size 288, align 32, offset 0] [def] [from ]
!299 = metadata !{metadata !300, metadata !301, metadata !302, metadata !304, metadata !305, metadata !329, metadata !330, metadata !332}
!300 = metadata !{i32 786445, metadata !167, metadata !298, metadata !"func", i32 75, i64 32, i64 32, i64 0, i32 0, metadata !176} ; [ DW_TAG_member ] [func] [line 75, size 32, align 32, offset 0] [from StkId]
!301 = metadata !{i32 786445, metadata !167, metadata !298, metadata !"top", i32 76, i64 32, i64 32, i64 32, i32 0, metadata !176} ; [ DW_TAG_member ] [top] [line 76, size 32, align 32, offset 32] [from StkId]
!302 = metadata !{i32 786445, metadata !167, metadata !298, metadata !"previous", i32 77, i64 32, i64 32, i64 64, i32 0, metadata !303} ; [ DW_TAG_member ] [previous] [line 77, size 32, align 32, offset 64] [from ]
!303 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !298} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from CallInfo]
!304 = metadata !{i32 786445, metadata !167, metadata !298, metadata !"next", i32 77, i64 32, i64 32, i64 96, i32 0, metadata !303} ; [ DW_TAG_member ] [next] [line 77, size 32, align 32, offset 96] [from ]
!305 = metadata !{i32 786445, metadata !167, metadata !298, metadata !"u", i32 88, i64 96, i64 32, i64 128, i32 0, metadata !306} ; [ DW_TAG_member ] [u] [line 88, size 96, align 32, offset 128] [from ]
!306 = metadata !{i32 786455, metadata !167, metadata !298, metadata !"", i32 78, i64 96, i64 32, i64 0, i32 0, null, metadata !307, i32 0, null, null, null} ; [ DW_TAG_union_type ] [line 78, size 96, align 32, offset 0] [def] [from ]
!307 = metadata !{metadata !308, metadata !316}
!308 = metadata !{i32 786445, metadata !167, metadata !306, metadata !"l", i32 82, i64 64, i64 32, i64 0, i32 0, metadata !309} ; [ DW_TAG_member ] [l] [line 82, size 64, align 32, offset 0] [from ]
!309 = metadata !{i32 786451, metadata !167, metadata !306, metadata !"", i32 79, i64 64, i64 32, i32 0, i32 0, null, metadata !310, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 79, size 64, align 32, offset 0] [def] [from ]
!310 = metadata !{metadata !311, metadata !312}
!311 = metadata !{i32 786445, metadata !167, metadata !309, metadata !"base", i32 80, i64 32, i64 32, i64 0, i32 0, metadata !176} ; [ DW_TAG_member ] [base] [line 80, size 32, align 32, offset 0] [from StkId]
!312 = metadata !{i32 786445, metadata !167, metadata !309, metadata !"savedpc", i32 81, i64 32, i64 32, i64 32, i32 0, metadata !313} ; [ DW_TAG_member ] [savedpc] [line 81, size 32, align 32, offset 32] [from ]
!313 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !314} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!314 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !315} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from Instruction]
!315 = metadata !{i32 786454, metadata !128, null, metadata !"Instruction", i32 163, i64 0, i64 0, i64 0, i32 0, metadata !189} ; [ DW_TAG_typedef ] [Instruction] [line 163, size 0, align 0, offset 0] [from unsigned int]
!316 = metadata !{i32 786445, metadata !167, metadata !306, metadata !"c", i32 87, i64 96, i64 32, i64 0, i32 0, metadata !317} ; [ DW_TAG_member ] [c] [line 87, size 96, align 32, offset 0] [from ]
!317 = metadata !{i32 786451, metadata !167, metadata !306, metadata !"", i32 83, i64 96, i64 32, i32 0, i32 0, null, metadata !318, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 83, size 96, align 32, offset 0] [def] [from ]
!318 = metadata !{metadata !319, metadata !327, metadata !328}
!319 = metadata !{i32 786445, metadata !167, metadata !317, metadata !"k", i32 84, i64 32, i64 32, i64 0, i32 0, metadata !320} ; [ DW_TAG_member ] [k] [line 84, size 32, align 32, offset 0] [from lua_KFunction]
!320 = metadata !{i32 786454, metadata !160, null, metadata !"lua_KFunction", i32 110, i64 0, i64 0, i64 0, i32 0, metadata !321} ; [ DW_TAG_typedef ] [lua_KFunction] [line 110, size 0, align 0, offset 0] [from ]
!321 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !322} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!322 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !323, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!323 = metadata !{metadata !137, metadata !164, metadata !137, metadata !324}
!324 = metadata !{i32 786454, metadata !160, null, metadata !"lua_KContext", i32 99, i64 0, i64 0, i64 0, i32 0, metadata !325} ; [ DW_TAG_typedef ] [lua_KContext] [line 99, size 0, align 0, offset 0] [from intptr_t]
!325 = metadata !{i32 786454, metadata !326, null, metadata !"intptr_t", i32 125, i64 0, i64 0, i64 0, i32 0, metadata !137} ; [ DW_TAG_typedef ] [intptr_t] [line 125, size 0, align 0, offset 0] [from int]
!326 = metadata !{metadata !"D:/Xilinx/SDx/2016.3/SDK/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include\5Cstdint.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!327 = metadata !{i32 786445, metadata !167, metadata !317, metadata !"old_errfunc", i32 85, i64 32, i64 32, i64 32, i32 0, metadata !193} ; [ DW_TAG_member ] [old_errfunc] [line 85, size 32, align 32, offset 32] [from ptrdiff_t]
!328 = metadata !{i32 786445, metadata !167, metadata !317, metadata !"ctx", i32 86, i64 32, i64 32, i64 64, i32 0, metadata !324} ; [ DW_TAG_member ] [ctx] [line 86, size 32, align 32, offset 64] [from lua_KContext]
!329 = metadata !{i32 786445, metadata !167, metadata !298, metadata !"extra", i32 89, i64 32, i64 32, i64 224, i32 0, metadata !193} ; [ DW_TAG_member ] [extra] [line 89, size 32, align 32, offset 224] [from ptrdiff_t]
!330 = metadata !{i32 786445, metadata !167, metadata !298, metadata !"nresults", i32 90, i64 16, i64 16, i64 256, i32 0, metadata !331} ; [ DW_TAG_member ] [nresults] [line 90, size 16, align 16, offset 256] [from short]
!331 = metadata !{i32 786468, null, null, metadata !"short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [short] [line 0, size 16, align 16, offset 0, enc DW_ATE_signed]
!332 = metadata !{i32 786445, metadata !167, metadata !298, metadata !"callstatus", i32 91, i64 8, i64 8, i64 272, i32 0, metadata !127} ; [ DW_TAG_member ] [callstatus] [line 91, size 8, align 8, offset 272] [from lu_byte]
!333 = metadata !{i32 786445, metadata !167, metadata !166, metadata !"oldpc", i32 166, i64 32, i64 32, i64 192, i32 0, metadata !313} ; [ DW_TAG_member ] [oldpc] [line 166, size 32, align 32, offset 192] [from ]
!334 = metadata !{i32 786445, metadata !167, metadata !166, metadata !"stack_last", i32 167, i64 32, i64 32, i64 224, i32 0, metadata !176} ; [ DW_TAG_member ] [stack_last] [line 167, size 32, align 32, offset 224] [from StkId]
!335 = metadata !{i32 786445, metadata !167, metadata !166, metadata !"stack", i32 168, i64 32, i64 32, i64 256, i32 0, metadata !176} ; [ DW_TAG_member ] [stack] [line 168, size 32, align 32, offset 256] [from StkId]
!336 = metadata !{i32 786445, metadata !167, metadata !166, metadata !"openupval", i32 169, i64 32, i64 32, i64 288, i32 0, metadata !337} ; [ DW_TAG_member ] [openupval] [line 169, size 32, align 32, offset 288] [from ]
!337 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !338} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from UpVal]
!338 = metadata !{i32 786454, metadata !117, null, metadata !"UpVal", i32 436, i64 0, i64 0, i64 0, i32 0, metadata !339} ; [ DW_TAG_typedef ] [UpVal] [line 436, size 0, align 0, offset 0] [from UpVal]
!339 = metadata !{i32 786451, metadata !117, null, metadata !"UpVal", i32 436, i64 0, i64 0, i32 0, i32 4, null, null, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [UpVal] [line 436, size 0, align 0, offset 0] [decl] [from ]
!340 = metadata !{i32 786445, metadata !167, metadata !166, metadata !"gclist", i32 170, i64 32, i64 32, i64 320, i32 0, metadata !121} ; [ DW_TAG_member ] [gclist] [line 170, size 32, align 32, offset 320] [from ]
!341 = metadata !{i32 786445, metadata !167, metadata !166, metadata !"twups", i32 171, i64 32, i64 32, i64 352, i32 0, metadata !240} ; [ DW_TAG_member ] [twups] [line 171, size 32, align 32, offset 352] [from ]
!342 = metadata !{i32 786445, metadata !167, metadata !166, metadata !"errorJmp", i32 172, i64 32, i64 32, i64 384, i32 0, metadata !343} ; [ DW_TAG_member ] [errorJmp] [line 172, size 32, align 32, offset 384] [from ]
!343 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !344} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from lua_longjmp]
!344 = metadata !{i32 786451, metadata !167, null, metadata !"lua_longjmp", i32 33, i64 0, i64 0, i32 0, i32 4, null, null, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [lua_longjmp] [line 33, size 0, align 0, offset 0] [decl] [from ]
!345 = metadata !{i32 786445, metadata !167, metadata !166, metadata !"base_ci", i32 173, i64 288, i64 32, i64 416, i32 0, metadata !297} ; [ DW_TAG_member ] [base_ci] [line 173, size 288, align 32, offset 416] [from CallInfo]
!346 = metadata !{i32 786445, metadata !167, metadata !166, metadata !"hook", i32 174, i64 32, i64 32, i64 704, i32 0, metadata !347} ; [ DW_TAG_member ] [hook] [line 174, size 32, align 32, offset 704] [from ]
!347 = metadata !{i32 786485, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !348} ; [ DW_TAG_volatile_type ] [line 0, size 0, align 0, offset 0] [from lua_Hook]
!348 = metadata !{i32 786454, metadata !160, null, metadata !"lua_Hook", i32 421, i64 0, i64 0, i64 0, i32 0, metadata !349} ; [ DW_TAG_typedef ] [lua_Hook] [line 421, size 0, align 0, offset 0] [from ]
!349 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !350} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!350 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !351, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!351 = metadata !{null, metadata !164, metadata !352}
!352 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !353} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from lua_Debug]
!353 = metadata !{i32 786454, metadata !160, null, metadata !"lua_Debug", i32 417, i64 0, i64 0, i64 0, i32 0, metadata !354} ; [ DW_TAG_typedef ] [lua_Debug] [line 417, size 0, align 0, offset 0] [from lua_Debug]
!354 = metadata !{i32 786451, metadata !160, null, metadata !"lua_Debug", i32 441, i64 800, i64 32, i32 0, i32 0, null, metadata !355, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [lua_Debug] [line 441, size 800, align 32, offset 0] [def] [from ]
!355 = metadata !{metadata !356, metadata !357, metadata !361, metadata !362, metadata !363, metadata !364, metadata !365, metadata !366, metadata !367, metadata !368, metadata !369, metadata !370, metadata !371, metadata !375}
!356 = metadata !{i32 786445, metadata !160, metadata !354, metadata !"event", i32 442, i64 32, i64 32, i64 0, i32 0, metadata !137} ; [ DW_TAG_member ] [event] [line 442, size 32, align 32, offset 0] [from int]
!357 = metadata !{i32 786445, metadata !160, metadata !354, metadata !"name", i32 443, i64 32, i64 32, i64 32, i32 0, metadata !358} ; [ DW_TAG_member ] [name] [line 443, size 32, align 32, offset 32] [from ]
!358 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !359} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!359 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !360} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!360 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!361 = metadata !{i32 786445, metadata !160, metadata !354, metadata !"namewhat", i32 444, i64 32, i64 32, i64 64, i32 0, metadata !358} ; [ DW_TAG_member ] [namewhat] [line 444, size 32, align 32, offset 64] [from ]
!362 = metadata !{i32 786445, metadata !160, metadata !354, metadata !"what", i32 445, i64 32, i64 32, i64 96, i32 0, metadata !358} ; [ DW_TAG_member ] [what] [line 445, size 32, align 32, offset 96] [from ]
!363 = metadata !{i32 786445, metadata !160, metadata !354, metadata !"source", i32 446, i64 32, i64 32, i64 128, i32 0, metadata !358} ; [ DW_TAG_member ] [source] [line 446, size 32, align 32, offset 128] [from ]
!364 = metadata !{i32 786445, metadata !160, metadata !354, metadata !"currentline", i32 447, i64 32, i64 32, i64 160, i32 0, metadata !137} ; [ DW_TAG_member ] [currentline] [line 447, size 32, align 32, offset 160] [from int]
!365 = metadata !{i32 786445, metadata !160, metadata !354, metadata !"linedefined", i32 448, i64 32, i64 32, i64 192, i32 0, metadata !137} ; [ DW_TAG_member ] [linedefined] [line 448, size 32, align 32, offset 192] [from int]
!366 = metadata !{i32 786445, metadata !160, metadata !354, metadata !"lastlinedefined", i32 449, i64 32, i64 32, i64 224, i32 0, metadata !137} ; [ DW_TAG_member ] [lastlinedefined] [line 449, size 32, align 32, offset 224] [from int]
!367 = metadata !{i32 786445, metadata !160, metadata !354, metadata !"nups", i32 450, i64 8, i64 8, i64 256, i32 0, metadata !129} ; [ DW_TAG_member ] [nups] [line 450, size 8, align 8, offset 256] [from unsigned char]
!368 = metadata !{i32 786445, metadata !160, metadata !354, metadata !"nparams", i32 451, i64 8, i64 8, i64 264, i32 0, metadata !129} ; [ DW_TAG_member ] [nparams] [line 451, size 8, align 8, offset 264] [from unsigned char]
!369 = metadata !{i32 786445, metadata !160, metadata !354, metadata !"isvararg", i32 452, i64 8, i64 8, i64 272, i32 0, metadata !360} ; [ DW_TAG_member ] [isvararg] [line 452, size 8, align 8, offset 272] [from char]
!370 = metadata !{i32 786445, metadata !160, metadata !354, metadata !"istailcall", i32 453, i64 8, i64 8, i64 280, i32 0, metadata !360} ; [ DW_TAG_member ] [istailcall] [line 453, size 8, align 8, offset 280] [from char]
!371 = metadata !{i32 786445, metadata !160, metadata !354, metadata !"short_src", i32 454, i64 480, i64 8, i64 288, i32 0, metadata !372} ; [ DW_TAG_member ] [short_src] [line 454, size 480, align 8, offset 288] [from ]
!372 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 480, i64 8, i32 0, i32 0, metadata !360, metadata !373, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 480, align 8, offset 0] [from char]
!373 = metadata !{metadata !374}
!374 = metadata !{i32 786465, i64 0, i64 60}      ; [ DW_TAG_subrange_type ] [0, 59]
!375 = metadata !{i32 786445, metadata !160, metadata !354, metadata !"i_ci", i32 456, i64 32, i64 32, i64 768, i32 0, metadata !303} ; [ DW_TAG_member ] [i_ci] [line 456, size 32, align 32, offset 768] [from ]
!376 = metadata !{i32 786445, metadata !167, metadata !166, metadata !"errfunc", i32 175, i64 32, i64 32, i64 736, i32 0, metadata !193} ; [ DW_TAG_member ] [errfunc] [line 175, size 32, align 32, offset 736] [from ptrdiff_t]
!377 = metadata !{i32 786445, metadata !167, metadata !166, metadata !"stacksize", i32 176, i64 32, i64 32, i64 768, i32 0, metadata !137} ; [ DW_TAG_member ] [stacksize] [line 176, size 32, align 32, offset 768] [from int]
!378 = metadata !{i32 786445, metadata !167, metadata !166, metadata !"basehookcount", i32 177, i64 32, i64 32, i64 800, i32 0, metadata !137} ; [ DW_TAG_member ] [basehookcount] [line 177, size 32, align 32, offset 800] [from int]
!379 = metadata !{i32 786445, metadata !167, metadata !166, metadata !"hookcount", i32 178, i64 32, i64 32, i64 832, i32 0, metadata !137} ; [ DW_TAG_member ] [hookcount] [line 178, size 32, align 32, offset 832] [from int]
!380 = metadata !{i32 786445, metadata !167, metadata !166, metadata !"nny", i32 179, i64 16, i64 16, i64 864, i32 0, metadata !173} ; [ DW_TAG_member ] [nny] [line 179, size 16, align 16, offset 864] [from unsigned short]
!381 = metadata !{i32 786445, metadata !167, metadata !166, metadata !"nCcalls", i32 180, i64 16, i64 16, i64 880, i32 0, metadata !173} ; [ DW_TAG_member ] [nCcalls] [line 180, size 16, align 16, offset 880] [from unsigned short]
!382 = metadata !{i32 786445, metadata !167, metadata !166, metadata !"hookmask", i32 181, i64 32, i64 32, i64 896, i32 0, metadata !383} ; [ DW_TAG_member ] [hookmask] [line 181, size 32, align 32, offset 896] [from sig_atomic_t]
!383 = metadata !{i32 786454, metadata !384, null, metadata !"sig_atomic_t", i32 40, i64 0, i64 0, i64 0, i32 0, metadata !385} ; [ DW_TAG_typedef ] [sig_atomic_t] [line 40, size 0, align 0, offset 0] [from __sig_atomic_t]
!384 = metadata !{metadata !"D:/Xilinx/SDx/2016.3/SDK/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include\5Csignal.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!385 = metadata !{i32 786454, metadata !386, null, metadata !"__sig_atomic_t", i32 22, i64 0, i64 0, i64 0, i32 0, metadata !137} ; [ DW_TAG_typedef ] [__sig_atomic_t] [line 22, size 0, align 0, offset 0] [from int]
!386 = metadata !{metadata !"D:/Xilinx/SDx/2016.3/SDK/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include\5Cbits/sigset.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!387 = metadata !{i32 786445, metadata !167, metadata !166, metadata !"allowhook", i32 182, i64 8, i64 8, i64 928, i32 0, metadata !127} ; [ DW_TAG_member ] [allowhook] [line 182, size 8, align 8, offset 928] [from lu_byte]
!388 = metadata !{i32 786445, metadata !117, metadata !152, metadata !"i", i32 105, i64 64, i64 64, i64 0, i32 0, metadata !389} ; [ DW_TAG_member ] [i] [line 105, size 64, align 64, offset 0] [from lua_Integer]
!389 = metadata !{i32 786454, metadata !160, null, metadata !"lua_Integer", i32 93, i64 0, i64 0, i64 0, i32 0, metadata !390} ; [ DW_TAG_typedef ] [lua_Integer] [line 93, size 0, align 0, offset 0] [from long long int]
!390 = metadata !{i32 786468, null, null, metadata !"long long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!391 = metadata !{i32 786445, metadata !117, metadata !152, metadata !"n", i32 106, i64 64, i64 64, i64 0, i32 0, metadata !249} ; [ DW_TAG_member ] [n] [line 106, size 64, align 64, offset 0] [from lua_Number]
!392 = metadata !{i32 786445, metadata !117, metadata !148, metadata !"tt_", i32 114, i64 32, i64 32, i64 64, i32 0, metadata !137} ; [ DW_TAG_member ] [tt_] [line 114, size 32, align 32, offset 64] [from int]
!393 = metadata !{i32 786445, metadata !117, metadata !118, metadata !"code", i32 421, i64 32, i64 32, i64 384, i32 0, metadata !394} ; [ DW_TAG_member ] [code] [line 421, size 32, align 32, offset 384] [from ]
!394 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !315} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from Instruction]
!395 = metadata !{i32 786445, metadata !117, metadata !118, metadata !"p", i32 422, i64 32, i64 32, i64 416, i32 0, metadata !396} ; [ DW_TAG_member ] [p] [line 422, size 32, align 32, offset 416] [from ]
!396 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !397} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!397 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !118} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from Proto]
!398 = metadata !{i32 786445, metadata !117, metadata !118, metadata !"lineinfo", i32 423, i64 32, i64 32, i64 448, i32 0, metadata !399} ; [ DW_TAG_member ] [lineinfo] [line 423, size 32, align 32, offset 448] [from ]
!399 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !137} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from int]
!400 = metadata !{i32 786445, metadata !117, metadata !118, metadata !"locvars", i32 424, i64 32, i64 32, i64 480, i32 0, metadata !401} ; [ DW_TAG_member ] [locvars] [line 424, size 32, align 32, offset 480] [from ]
!401 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !402} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from LocVar]
!402 = metadata !{i32 786454, metadata !117, null, metadata !"LocVar", i32 401, i64 0, i64 0, i64 0, i32 0, metadata !403} ; [ DW_TAG_typedef ] [LocVar] [line 401, size 0, align 0, offset 0] [from LocVar]
!403 = metadata !{i32 786451, metadata !117, null, metadata !"LocVar", i32 397, i64 96, i64 32, i32 0, i32 0, null, metadata !404, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [LocVar] [line 397, size 96, align 32, offset 0] [def] [from ]
!404 = metadata !{metadata !405, metadata !406, metadata !407}
!405 = metadata !{i32 786445, metadata !117, metadata !403, metadata !"varname", i32 398, i64 32, i64 32, i64 0, i32 0, metadata !204} ; [ DW_TAG_member ] [varname] [line 398, size 32, align 32, offset 0] [from ]
!406 = metadata !{i32 786445, metadata !117, metadata !403, metadata !"startpc", i32 399, i64 32, i64 32, i64 32, i32 0, metadata !137} ; [ DW_TAG_member ] [startpc] [line 399, size 32, align 32, offset 32] [from int]
!407 = metadata !{i32 786445, metadata !117, metadata !403, metadata !"endpc", i32 400, i64 32, i64 32, i64 64, i32 0, metadata !137} ; [ DW_TAG_member ] [endpc] [line 400, size 32, align 32, offset 64] [from int]
!408 = metadata !{i32 786445, metadata !117, metadata !118, metadata !"upvalues", i32 425, i64 32, i64 32, i64 512, i32 0, metadata !409} ; [ DW_TAG_member ] [upvalues] [line 425, size 32, align 32, offset 512] [from ]
!409 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !410} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from Upvaldesc]
!410 = metadata !{i32 786454, metadata !117, null, metadata !"Upvaldesc", i32 390, i64 0, i64 0, i64 0, i32 0, metadata !411} ; [ DW_TAG_typedef ] [Upvaldesc] [line 390, size 0, align 0, offset 0] [from Upvaldesc]
!411 = metadata !{i32 786451, metadata !117, null, metadata !"Upvaldesc", i32 386, i64 64, i64 32, i32 0, i32 0, null, metadata !412, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [Upvaldesc] [line 386, size 64, align 32, offset 0] [def] [from ]
!412 = metadata !{metadata !413, metadata !414, metadata !415}
!413 = metadata !{i32 786445, metadata !117, metadata !411, metadata !"name", i32 387, i64 32, i64 32, i64 0, i32 0, metadata !204} ; [ DW_TAG_member ] [name] [line 387, size 32, align 32, offset 0] [from ]
!414 = metadata !{i32 786445, metadata !117, metadata !411, metadata !"instack", i32 388, i64 8, i64 8, i64 32, i32 0, metadata !127} ; [ DW_TAG_member ] [instack] [line 388, size 8, align 8, offset 32] [from lu_byte]
!415 = metadata !{i32 786445, metadata !117, metadata !411, metadata !"idx", i32 389, i64 8, i64 8, i64 40, i32 0, metadata !127} ; [ DW_TAG_member ] [idx] [line 389, size 8, align 8, offset 40] [from lu_byte]
!416 = metadata !{i32 786445, metadata !117, metadata !118, metadata !"cache", i32 426, i64 32, i64 32, i64 544, i32 0, metadata !417} ; [ DW_TAG_member ] [cache] [line 426, size 32, align 32, offset 544] [from ]
!417 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !418} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from LClosure]
!418 = metadata !{i32 786451, metadata !117, null, metadata !"LClosure", i32 453, i64 160, i64 32, i32 0, i32 0, null, metadata !419, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [LClosure] [line 453, size 160, align 32, offset 0] [def] [from ]
!419 = metadata !{metadata !420, metadata !421, metadata !422, metadata !423, metadata !424, metadata !425, metadata !426}
!420 = metadata !{i32 786445, metadata !117, metadata !418, metadata !"next", i32 454, i64 32, i64 32, i64 0, i32 0, metadata !121} ; [ DW_TAG_member ] [next] [line 454, size 32, align 32, offset 0] [from ]
!421 = metadata !{i32 786445, metadata !117, metadata !418, metadata !"tt", i32 454, i64 8, i64 8, i64 32, i32 0, metadata !127} ; [ DW_TAG_member ] [tt] [line 454, size 8, align 8, offset 32] [from lu_byte]
!422 = metadata !{i32 786445, metadata !117, metadata !418, metadata !"marked", i32 454, i64 8, i64 8, i64 40, i32 0, metadata !127} ; [ DW_TAG_member ] [marked] [line 454, size 8, align 8, offset 40] [from lu_byte]
!423 = metadata !{i32 786445, metadata !117, metadata !418, metadata !"nupvalues", i32 454, i64 8, i64 8, i64 48, i32 0, metadata !127} ; [ DW_TAG_member ] [nupvalues] [line 454, size 8, align 8, offset 48] [from lu_byte]
!424 = metadata !{i32 786445, metadata !117, metadata !418, metadata !"gclist", i32 454, i64 32, i64 32, i64 64, i32 0, metadata !121} ; [ DW_TAG_member ] [gclist] [line 454, size 32, align 32, offset 64] [from ]
!425 = metadata !{i32 786445, metadata !117, metadata !418, metadata !"p", i32 455, i64 32, i64 32, i64 96, i32 0, metadata !397} ; [ DW_TAG_member ] [p] [line 455, size 32, align 32, offset 96] [from ]
!426 = metadata !{i32 786445, metadata !117, metadata !418, metadata !"upvals", i32 456, i64 32, i64 32, i64 128, i32 0, metadata !427} ; [ DW_TAG_member ] [upvals] [line 456, size 32, align 32, offset 128] [from ]
!427 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 32, i64 32, i32 0, i32 0, metadata !337, metadata !428, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 32, align 32, offset 0] [from ]
!428 = metadata !{metadata !429}
!429 = metadata !{i32 786465, i64 0, i64 1}       ; [ DW_TAG_subrange_type ] [0, 0]
!430 = metadata !{i32 786445, metadata !117, metadata !118, metadata !"source", i32 427, i64 32, i64 32, i64 576, i32 0, metadata !204} ; [ DW_TAG_member ] [source] [line 427, size 32, align 32, offset 576] [from ]
!431 = metadata !{i32 786445, metadata !117, metadata !118, metadata !"gclist", i32 428, i64 32, i64 32, i64 608, i32 0, metadata !121} ; [ DW_TAG_member ] [gclist] [line 428, size 32, align 32, offset 608] [from ]
!432 = metadata !{i32 786445, metadata !54, metadata !112, metadata !"prev", i32 113, i64 32, i64 32, i64 32, i32 0, metadata !433} ; [ DW_TAG_member ] [prev] [line 113, size 32, align 32, offset 32] [from ]
!433 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !112} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from FuncState]
!434 = metadata !{i32 786445, metadata !54, metadata !112, metadata !"ls", i32 114, i64 32, i64 32, i64 64, i32 0, metadata !435} ; [ DW_TAG_member ] [ls] [line 114, size 32, align 32, offset 64] [from ]
!435 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !436} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from LexState]
!436 = metadata !{i32 786451, metadata !437, null, metadata !"LexState", i32 58, i64 640, i64 64, i32 0, i32 0, null, metadata !438, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [LexState] [line 58, size 640, align 64, offset 0] [def] [from ]
!437 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/llex.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!438 = metadata !{metadata !439, metadata !440, metadata !441, metadata !442, metadata !454, metadata !455, metadata !456, metadata !457, metadata !473, metadata !482, metadata !485, metadata !516, metadata !517}
!439 = metadata !{i32 786445, metadata !437, metadata !436, metadata !"current", i32 59, i64 32, i64 32, i64 0, i32 0, metadata !137} ; [ DW_TAG_member ] [current] [line 59, size 32, align 32, offset 0] [from int]
!440 = metadata !{i32 786445, metadata !437, metadata !436, metadata !"linenumber", i32 60, i64 32, i64 32, i64 32, i32 0, metadata !137} ; [ DW_TAG_member ] [linenumber] [line 60, size 32, align 32, offset 32] [from int]
!441 = metadata !{i32 786445, metadata !437, metadata !436, metadata !"lastline", i32 61, i64 32, i64 32, i64 64, i32 0, metadata !137} ; [ DW_TAG_member ] [lastline] [line 61, size 32, align 32, offset 64] [from int]
!442 = metadata !{i32 786445, metadata !437, metadata !436, metadata !"t", i32 62, i64 128, i64 64, i64 128, i32 0, metadata !443} ; [ DW_TAG_member ] [t] [line 62, size 128, align 64, offset 128] [from Token]
!443 = metadata !{i32 786454, metadata !437, null, metadata !"Token", i32 53, i64 0, i64 0, i64 0, i32 0, metadata !444} ; [ DW_TAG_typedef ] [Token] [line 53, size 0, align 0, offset 0] [from Token]
!444 = metadata !{i32 786451, metadata !437, null, metadata !"Token", i32 50, i64 128, i64 64, i32 0, i32 0, null, metadata !445, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [Token] [line 50, size 128, align 64, offset 0] [def] [from ]
!445 = metadata !{metadata !446, metadata !447}
!446 = metadata !{i32 786445, metadata !437, metadata !444, metadata !"token", i32 51, i64 32, i64 32, i64 0, i32 0, metadata !137} ; [ DW_TAG_member ] [token] [line 51, size 32, align 32, offset 0] [from int]
!447 = metadata !{i32 786445, metadata !437, metadata !444, metadata !"seminfo", i32 52, i64 64, i64 64, i64 64, i32 0, metadata !448} ; [ DW_TAG_member ] [seminfo] [line 52, size 64, align 64, offset 64] [from SemInfo]
!448 = metadata !{i32 786454, metadata !437, null, metadata !"SemInfo", i32 47, i64 0, i64 0, i64 0, i32 0, metadata !449} ; [ DW_TAG_typedef ] [SemInfo] [line 47, size 0, align 0, offset 0] [from ]
!449 = metadata !{i32 786455, metadata !437, null, metadata !"", i32 43, i64 64, i64 64, i64 0, i32 0, null, metadata !450, i32 0, null, null, null} ; [ DW_TAG_union_type ] [line 43, size 64, align 64, offset 0] [def] [from ]
!450 = metadata !{metadata !451, metadata !452, metadata !453}
!451 = metadata !{i32 786445, metadata !437, metadata !449, metadata !"r", i32 44, i64 64, i64 64, i64 0, i32 0, metadata !249} ; [ DW_TAG_member ] [r] [line 44, size 64, align 64, offset 0] [from lua_Number]
!452 = metadata !{i32 786445, metadata !437, metadata !449, metadata !"i", i32 45, i64 64, i64 64, i64 0, i32 0, metadata !389} ; [ DW_TAG_member ] [i] [line 45, size 64, align 64, offset 0] [from lua_Integer]
!453 = metadata !{i32 786445, metadata !437, metadata !449, metadata !"ts", i32 46, i64 32, i64 32, i64 0, i32 0, metadata !204} ; [ DW_TAG_member ] [ts] [line 46, size 32, align 32, offset 0] [from ]
!454 = metadata !{i32 786445, metadata !437, metadata !436, metadata !"lookahead", i32 63, i64 128, i64 64, i64 256, i32 0, metadata !443} ; [ DW_TAG_member ] [lookahead] [line 63, size 128, align 64, offset 256] [from Token]
!455 = metadata !{i32 786445, metadata !437, metadata !436, metadata !"fs", i32 64, i64 32, i64 32, i64 384, i32 0, metadata !433} ; [ DW_TAG_member ] [fs] [line 64, size 32, align 32, offset 384] [from ]
!456 = metadata !{i32 786445, metadata !437, metadata !436, metadata !"L", i32 65, i64 32, i64 32, i64 416, i32 0, metadata !240} ; [ DW_TAG_member ] [L] [line 65, size 32, align 32, offset 416] [from ]
!457 = metadata !{i32 786445, metadata !437, metadata !436, metadata !"z", i32 66, i64 32, i64 32, i64 448, i32 0, metadata !458} ; [ DW_TAG_member ] [z] [line 66, size 32, align 32, offset 448] [from ]
!458 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !459} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ZIO]
!459 = metadata !{i32 786454, metadata !460, null, metadata !"ZIO", i32 18, i64 0, i64 0, i64 0, i32 0, metadata !461} ; [ DW_TAG_typedef ] [ZIO] [line 18, size 0, align 0, offset 0] [from Zio]
!460 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lzio.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!461 = metadata !{i32 786451, metadata !460, null, metadata !"Zio", i32 55, i64 160, i64 32, i32 0, i32 0, null, metadata !462, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [Zio] [line 55, size 160, align 32, offset 0] [def] [from ]
!462 = metadata !{metadata !463, metadata !464, metadata !465, metadata !471, metadata !472}
!463 = metadata !{i32 786445, metadata !460, metadata !461, metadata !"n", i32 56, i64 32, i64 32, i64 0, i32 0, metadata !187} ; [ DW_TAG_member ] [n] [line 56, size 32, align 32, offset 0] [from size_t]
!464 = metadata !{i32 786445, metadata !460, metadata !461, metadata !"p", i32 57, i64 32, i64 32, i64 32, i32 0, metadata !358} ; [ DW_TAG_member ] [p] [line 57, size 32, align 32, offset 32] [from ]
!465 = metadata !{i32 786445, metadata !460, metadata !461, metadata !"reader", i32 58, i64 32, i64 32, i64 64, i32 0, metadata !466} ; [ DW_TAG_member ] [reader] [line 58, size 32, align 32, offset 64] [from lua_Reader]
!466 = metadata !{i32 786454, metadata !160, null, metadata !"lua_Reader", i32 116, i64 0, i64 0, i64 0, i32 0, metadata !467} ; [ DW_TAG_typedef ] [lua_Reader] [line 116, size 0, align 0, offset 0] [from ]
!467 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !468} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!468 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !469, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!469 = metadata !{metadata !358, metadata !164, metadata !156, metadata !470}
!470 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !187} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from size_t]
!471 = metadata !{i32 786445, metadata !460, metadata !461, metadata !"data", i32 59, i64 32, i64 32, i64 96, i32 0, metadata !156} ; [ DW_TAG_member ] [data] [line 59, size 32, align 32, offset 96] [from ]
!472 = metadata !{i32 786445, metadata !460, metadata !461, metadata !"L", i32 60, i64 32, i64 32, i64 128, i32 0, metadata !164} ; [ DW_TAG_member ] [L] [line 60, size 32, align 32, offset 128] [from ]
!473 = metadata !{i32 786445, metadata !437, metadata !436, metadata !"buff", i32 67, i64 32, i64 32, i64 480, i32 0, metadata !474} ; [ DW_TAG_member ] [buff] [line 67, size 32, align 32, offset 480] [from ]
!474 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !475} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from Mbuffer]
!475 = metadata !{i32 786454, metadata !460, null, metadata !"Mbuffer", i32 27, i64 0, i64 0, i64 0, i32 0, metadata !476} ; [ DW_TAG_typedef ] [Mbuffer] [line 27, size 0, align 0, offset 0] [from Mbuffer]
!476 = metadata !{i32 786451, metadata !460, null, metadata !"Mbuffer", i32 23, i64 96, i64 32, i32 0, i32 0, null, metadata !477, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [Mbuffer] [line 23, size 96, align 32, offset 0] [def] [from ]
!477 = metadata !{metadata !478, metadata !480, metadata !481}
!478 = metadata !{i32 786445, metadata !460, metadata !476, metadata !"buffer", i32 24, i64 32, i64 32, i64 0, i32 0, metadata !479} ; [ DW_TAG_member ] [buffer] [line 24, size 32, align 32, offset 0] [from ]
!479 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !360} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from char]
!480 = metadata !{i32 786445, metadata !460, metadata !476, metadata !"n", i32 25, i64 32, i64 32, i64 32, i32 0, metadata !187} ; [ DW_TAG_member ] [n] [line 25, size 32, align 32, offset 32] [from size_t]
!481 = metadata !{i32 786445, metadata !460, metadata !476, metadata !"buffsize", i32 26, i64 32, i64 32, i64 64, i32 0, metadata !187} ; [ DW_TAG_member ] [buffsize] [line 26, size 32, align 32, offset 64] [from size_t]
!482 = metadata !{i32 786445, metadata !437, metadata !436, metadata !"h", i32 68, i64 32, i64 32, i64 512, i32 0, metadata !483} ; [ DW_TAG_member ] [h] [line 68, size 32, align 32, offset 512] [from ]
!483 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !484} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from Table]
!484 = metadata !{i32 786454, metadata !117, null, metadata !"Table", i32 507, i64 0, i64 0, i64 0, i32 0, metadata !259} ; [ DW_TAG_typedef ] [Table] [line 507, size 0, align 0, offset 0] [from Table]
!485 = metadata !{i32 786445, metadata !437, metadata !436, metadata !"dyd", i32 69, i64 32, i64 32, i64 544, i32 0, metadata !486} ; [ DW_TAG_member ] [dyd] [line 69, size 32, align 32, offset 544] [from ]
!486 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !487} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from Dyndata]
!487 = metadata !{i32 786451, metadata !54, null, metadata !"Dyndata", i32 95, i64 288, i64 32, i32 0, i32 0, null, metadata !488, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [Dyndata] [line 95, size 288, align 32, offset 0] [def] [from ]
!488 = metadata !{metadata !489, metadata !500, metadata !515}
!489 = metadata !{i32 786445, metadata !54, metadata !487, metadata !"actvar", i32 100, i64 96, i64 32, i64 0, i32 0, metadata !490} ; [ DW_TAG_member ] [actvar] [line 100, size 96, align 32, offset 0] [from ]
!490 = metadata !{i32 786451, metadata !54, metadata !487, metadata !"", i32 96, i64 96, i64 32, i32 0, i32 0, null, metadata !491, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 96, size 96, align 32, offset 0] [def] [from ]
!491 = metadata !{metadata !492, metadata !498, metadata !499}
!492 = metadata !{i32 786445, metadata !54, metadata !490, metadata !"arr", i32 97, i64 32, i64 32, i64 0, i32 0, metadata !493} ; [ DW_TAG_member ] [arr] [line 97, size 32, align 32, offset 0] [from ]
!493 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !494} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from Vardesc]
!494 = metadata !{i32 786454, metadata !54, null, metadata !"Vardesc", i32 74, i64 0, i64 0, i64 0, i32 0, metadata !495} ; [ DW_TAG_typedef ] [Vardesc] [line 74, size 0, align 0, offset 0] [from Vardesc]
!495 = metadata !{i32 786451, metadata !54, null, metadata !"Vardesc", i32 72, i64 16, i64 16, i32 0, i32 0, null, metadata !496, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [Vardesc] [line 72, size 16, align 16, offset 0] [def] [from ]
!496 = metadata !{metadata !497}
!497 = metadata !{i32 786445, metadata !54, metadata !495, metadata !"idx", i32 73, i64 16, i64 16, i64 0, i32 0, metadata !331} ; [ DW_TAG_member ] [idx] [line 73, size 16, align 16, offset 0] [from short]
!498 = metadata !{i32 786445, metadata !54, metadata !490, metadata !"n", i32 98, i64 32, i64 32, i64 32, i32 0, metadata !137} ; [ DW_TAG_member ] [n] [line 98, size 32, align 32, offset 32] [from int]
!499 = metadata !{i32 786445, metadata !54, metadata !490, metadata !"size", i32 99, i64 32, i64 32, i64 64, i32 0, metadata !137} ; [ DW_TAG_member ] [size] [line 99, size 32, align 32, offset 64] [from int]
!500 = metadata !{i32 786445, metadata !54, metadata !487, metadata !"gt", i32 101, i64 96, i64 32, i64 96, i32 0, metadata !501} ; [ DW_TAG_member ] [gt] [line 101, size 96, align 32, offset 96] [from Labellist]
!501 = metadata !{i32 786454, metadata !54, null, metadata !"Labellist", i32 91, i64 0, i64 0, i64 0, i32 0, metadata !502} ; [ DW_TAG_typedef ] [Labellist] [line 91, size 0, align 0, offset 0] [from Labellist]
!502 = metadata !{i32 786451, metadata !54, null, metadata !"Labellist", i32 87, i64 96, i64 32, i32 0, i32 0, null, metadata !503, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [Labellist] [line 87, size 96, align 32, offset 0] [def] [from ]
!503 = metadata !{metadata !504, metadata !513, metadata !514}
!504 = metadata !{i32 786445, metadata !54, metadata !502, metadata !"arr", i32 88, i64 32, i64 32, i64 0, i32 0, metadata !505} ; [ DW_TAG_member ] [arr] [line 88, size 32, align 32, offset 0] [from ]
!505 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !506} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from Labeldesc]
!506 = metadata !{i32 786454, metadata !54, null, metadata !"Labeldesc", i32 83, i64 0, i64 0, i64 0, i32 0, metadata !507} ; [ DW_TAG_typedef ] [Labeldesc] [line 83, size 0, align 0, offset 0] [from Labeldesc]
!507 = metadata !{i32 786451, metadata !54, null, metadata !"Labeldesc", i32 78, i64 128, i64 32, i32 0, i32 0, null, metadata !508, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [Labeldesc] [line 78, size 128, align 32, offset 0] [def] [from ]
!508 = metadata !{metadata !509, metadata !510, metadata !511, metadata !512}
!509 = metadata !{i32 786445, metadata !54, metadata !507, metadata !"name", i32 79, i64 32, i64 32, i64 0, i32 0, metadata !204} ; [ DW_TAG_member ] [name] [line 79, size 32, align 32, offset 0] [from ]
!510 = metadata !{i32 786445, metadata !54, metadata !507, metadata !"pc", i32 80, i64 32, i64 32, i64 32, i32 0, metadata !137} ; [ DW_TAG_member ] [pc] [line 80, size 32, align 32, offset 32] [from int]
!511 = metadata !{i32 786445, metadata !54, metadata !507, metadata !"line", i32 81, i64 32, i64 32, i64 64, i32 0, metadata !137} ; [ DW_TAG_member ] [line] [line 81, size 32, align 32, offset 64] [from int]
!512 = metadata !{i32 786445, metadata !54, metadata !507, metadata !"nactvar", i32 82, i64 8, i64 8, i64 96, i32 0, metadata !127} ; [ DW_TAG_member ] [nactvar] [line 82, size 8, align 8, offset 96] [from lu_byte]
!513 = metadata !{i32 786445, metadata !54, metadata !502, metadata !"n", i32 89, i64 32, i64 32, i64 32, i32 0, metadata !137} ; [ DW_TAG_member ] [n] [line 89, size 32, align 32, offset 32] [from int]
!514 = metadata !{i32 786445, metadata !54, metadata !502, metadata !"size", i32 90, i64 32, i64 32, i64 64, i32 0, metadata !137} ; [ DW_TAG_member ] [size] [line 90, size 32, align 32, offset 64] [from int]
!515 = metadata !{i32 786445, metadata !54, metadata !487, metadata !"label", i32 102, i64 96, i64 32, i64 192, i32 0, metadata !501} ; [ DW_TAG_member ] [label] [line 102, size 96, align 32, offset 192] [from Labellist]
!516 = metadata !{i32 786445, metadata !437, metadata !436, metadata !"source", i32 70, i64 32, i64 32, i64 576, i32 0, metadata !204} ; [ DW_TAG_member ] [source] [line 70, size 32, align 32, offset 576] [from ]
!517 = metadata !{i32 786445, metadata !437, metadata !436, metadata !"envn", i32 71, i64 32, i64 32, i64 608, i32 0, metadata !204} ; [ DW_TAG_member ] [envn] [line 71, size 32, align 32, offset 608] [from ]
!518 = metadata !{i32 786445, metadata !54, metadata !112, metadata !"bl", i32 115, i64 32, i64 32, i64 96, i32 0, metadata !519} ; [ DW_TAG_member ] [bl] [line 115, size 32, align 32, offset 96] [from ]
!519 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !520} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from BlockCnt]
!520 = metadata !{i32 786451, metadata !54, null, metadata !"BlockCnt", i32 107, i64 0, i64 0, i32 0, i32 4, null, null, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [BlockCnt] [line 107, size 0, align 0, offset 0] [decl] [from ]
!521 = metadata !{i32 786445, metadata !54, metadata !112, metadata !"pc", i32 116, i64 32, i64 32, i64 128, i32 0, metadata !137} ; [ DW_TAG_member ] [pc] [line 116, size 32, align 32, offset 128] [from int]
!522 = metadata !{i32 786445, metadata !54, metadata !112, metadata !"lasttarget", i32 117, i64 32, i64 32, i64 160, i32 0, metadata !137} ; [ DW_TAG_member ] [lasttarget] [line 117, size 32, align 32, offset 160] [from int]
!523 = metadata !{i32 786445, metadata !54, metadata !112, metadata !"jpc", i32 118, i64 32, i64 32, i64 192, i32 0, metadata !137} ; [ DW_TAG_member ] [jpc] [line 118, size 32, align 32, offset 192] [from int]
!524 = metadata !{i32 786445, metadata !54, metadata !112, metadata !"nk", i32 119, i64 32, i64 32, i64 224, i32 0, metadata !137} ; [ DW_TAG_member ] [nk] [line 119, size 32, align 32, offset 224] [from int]
!525 = metadata !{i32 786445, metadata !54, metadata !112, metadata !"np", i32 120, i64 32, i64 32, i64 256, i32 0, metadata !137} ; [ DW_TAG_member ] [np] [line 120, size 32, align 32, offset 256] [from int]
!526 = metadata !{i32 786445, metadata !54, metadata !112, metadata !"firstlocal", i32 121, i64 32, i64 32, i64 288, i32 0, metadata !137} ; [ DW_TAG_member ] [firstlocal] [line 121, size 32, align 32, offset 288] [from int]
!527 = metadata !{i32 786445, metadata !54, metadata !112, metadata !"nlocvars", i32 122, i64 16, i64 16, i64 320, i32 0, metadata !331} ; [ DW_TAG_member ] [nlocvars] [line 122, size 16, align 16, offset 320] [from short]
!528 = metadata !{i32 786445, metadata !54, metadata !112, metadata !"nactvar", i32 123, i64 8, i64 8, i64 336, i32 0, metadata !127} ; [ DW_TAG_member ] [nactvar] [line 123, size 8, align 8, offset 336] [from lu_byte]
!529 = metadata !{i32 786445, metadata !54, metadata !112, metadata !"nups", i32 124, i64 8, i64 8, i64 344, i32 0, metadata !127} ; [ DW_TAG_member ] [nups] [line 124, size 8, align 8, offset 344] [from lu_byte]
!530 = metadata !{i32 786445, metadata !54, metadata !112, metadata !"freereg", i32 125, i64 8, i64 8, i64 352, i32 0, metadata !127} ; [ DW_TAG_member ] [freereg] [line 125, size 8, align 8, offset 352] [from lu_byte]
!531 = metadata !{i32 786478, metadata !106, metadata !107, metadata !"luaK_concat", metadata !"luaK_concat", metadata !"", i32 116, metadata !532, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.FuncState*, i32*, i32)* @luaK_concat, null, null, metadata !103, i32 116} ; [ DW_TAG_subprogram ] [line 116] [def] [luaK_concat]
!532 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !533, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!533 = metadata !{null, metadata !110, metadata !399, metadata !137}
!534 = metadata !{i32 786478, metadata !106, metadata !107, metadata !"luaK_jump", metadata !"luaK_jump", metadata !"", i32 136, metadata !535, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.FuncState*)* @luaK_jump, null, null, metadata !103, i32 136} ; [ DW_TAG_subprogram ] [line 136] [def] [luaK_jump]
!535 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !536, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!536 = metadata !{metadata !137, metadata !110}
!537 = metadata !{i32 786478, metadata !106, metadata !107, metadata !"luaK_ret", metadata !"luaK_ret", metadata !"", i32 149, metadata !108, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.FuncState*, i32, i32)* @luaK_ret, null, null, metadata !103, i32 149} ; [ DW_TAG_subprogram ] [line 149] [def] [luaK_ret]
!538 = metadata !{i32 786478, metadata !106, metadata !107, metadata !"luaK_getlabel", metadata !"luaK_getlabel", metadata !"", i32 168, metadata !535, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.FuncState*)* @luaK_getlabel, null, null, metadata !103, i32 168} ; [ DW_TAG_subprogram ] [line 168] [def] [luaK_getlabel]
!539 = metadata !{i32 786478, metadata !106, metadata !107, metadata !"luaK_patchtohere", metadata !"luaK_patchtohere", metadata !"", i32 252, metadata !540, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.FuncState*, i32)* @luaK_patchtohere, null, null, metadata !103, i32 252} ; [ DW_TAG_subprogram ] [line 252] [def] [luaK_patchtohere]
!540 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !541, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!541 = metadata !{null, metadata !110, metadata !137}
!542 = metadata !{i32 786478, metadata !106, metadata !107, metadata !"luaK_patchlist", metadata !"luaK_patchlist", metadata !"", i32 263, metadata !108, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.FuncState*, i32, i32)* @luaK_patchlist, null, null, metadata !103, i32 263} ; [ DW_TAG_subprogram ] [line 263] [def] [luaK_patchlist]
!543 = metadata !{i32 786478, metadata !106, metadata !107, metadata !"luaK_patchclose", metadata !"luaK_patchclose", metadata !"", i32 278, metadata !108, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.FuncState*, i32, i32)* @luaK_patchclose, null, null, metadata !103, i32 278} ; [ DW_TAG_subprogram ] [line 278] [def] [luaK_patchclose]
!544 = metadata !{i32 786478, metadata !106, metadata !107, metadata !"luaK_codeABC", metadata !"luaK_codeABC", metadata !"", i32 312, metadata !545, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.FuncState*, i32, i32, i32, i32)* @luaK_codeABC, null, null, metadata !103, i32 312} ; [ DW_TAG_subprogram ] [line 312] [def] [luaK_codeABC]
!545 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !546, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!546 = metadata !{metadata !137, metadata !110, metadata !547, metadata !137, metadata !137, metadata !137}
!547 = metadata !{i32 786454, metadata !4, null, metadata !"OpCode", i32 232, i64 0, i64 0, i64 0, i32 0, metadata !3} ; [ DW_TAG_typedef ] [OpCode] [line 232, size 0, align 0, offset 0] [from ]
!548 = metadata !{i32 786478, metadata !106, metadata !107, metadata !"luaK_codeABx", metadata !"luaK_codeABx", metadata !"", i32 324, metadata !549, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.FuncState*, i32, i32, i32)* @luaK_codeABx, null, null, metadata !103, i32 324} ; [ DW_TAG_subprogram ] [line 324] [def] [luaK_codeABx]
!549 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !550, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!550 = metadata !{metadata !137, metadata !110, metadata !547, metadata !137, metadata !189}
!551 = metadata !{i32 786478, metadata !106, metadata !107, metadata !"luaK_codek", metadata !"luaK_codek", metadata !"", i32 346, metadata !552, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.FuncState*, i32, i32)* @luaK_codek, null, null, metadata !103, i32 346} ; [ DW_TAG_subprogram ] [line 346] [def] [luaK_codek]
!552 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !553, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!553 = metadata !{metadata !137, metadata !110, metadata !137, metadata !137}
!554 = metadata !{i32 786478, metadata !106, metadata !107, metadata !"luaK_checkstack", metadata !"luaK_checkstack", metadata !"", i32 361, metadata !540, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.FuncState*, i32)* @luaK_checkstack, null, null, metadata !103, i32 361} ; [ DW_TAG_subprogram ] [line 361] [def] [luaK_checkstack]
!555 = metadata !{i32 786478, metadata !106, metadata !107, metadata !"luaK_reserveregs", metadata !"luaK_reserveregs", metadata !"", i32 375, metadata !540, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.FuncState*, i32)* @luaK_reserveregs, null, null, metadata !103, i32 375} ; [ DW_TAG_subprogram ] [line 375] [def] [luaK_reserveregs]
!556 = metadata !{i32 786478, metadata !106, metadata !107, metadata !"luaK_stringK", metadata !"luaK_stringK", metadata !"", i32 458, metadata !557, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.FuncState*, %struct.TString*)* @luaK_stringK, null, null, metadata !103, i32 458} ; [ DW_TAG_subprogram ] [line 458] [def] [luaK_stringK]
!557 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !558, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!558 = metadata !{metadata !137, metadata !110, metadata !204}
!559 = metadata !{i32 786478, metadata !106, metadata !107, metadata !"luaK_intK", metadata !"luaK_intK", metadata !"", i32 471, metadata !560, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.FuncState*, i64)* @luaK_intK, null, null, metadata !103, i32 471} ; [ DW_TAG_subprogram ] [line 471] [def] [luaK_intK]
!560 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !561, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!561 = metadata !{metadata !137, metadata !110, metadata !389}
!562 = metadata !{i32 786478, metadata !106, metadata !107, metadata !"luaK_setreturns", metadata !"luaK_setreturns", metadata !"", i32 515, metadata !563, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.FuncState*, %struct.expdesc*, i32)* @luaK_setreturns, null, null, metadata !103, i32 515} ; [ DW_TAG_subprogram ] [line 515] [def] [luaK_setreturns]
!563 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !564, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!564 = metadata !{null, metadata !110, metadata !565, metadata !137}
!565 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !566} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from expdesc]
!566 = metadata !{i32 786454, metadata !54, null, metadata !"expdesc", i32 68, i64 0, i64 0, i64 0, i32 0, metadata !567} ; [ DW_TAG_typedef ] [expdesc] [line 68, size 0, align 0, offset 0] [from expdesc]
!567 = metadata !{i32 786451, metadata !54, null, metadata !"expdesc", i32 54, i64 192, i64 64, i32 0, i32 0, null, metadata !568, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [expdesc] [line 54, size 192, align 64, offset 0] [def] [from ]
!568 = metadata !{metadata !569, metadata !571, metadata !583, metadata !584}
!569 = metadata !{i32 786445, metadata !54, metadata !567, metadata !"k", i32 55, i64 32, i64 32, i64 0, i32 0, metadata !570} ; [ DW_TAG_member ] [k] [line 55, size 32, align 32, offset 0] [from expkind]
!570 = metadata !{i32 786454, metadata !54, null, metadata !"expkind", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !53} ; [ DW_TAG_typedef ] [expkind] [line 48, size 0, align 0, offset 0] [from ]
!571 = metadata !{i32 786445, metadata !54, metadata !567, metadata !"u", i32 65, i64 64, i64 64, i64 64, i32 0, metadata !572} ; [ DW_TAG_member ] [u] [line 65, size 64, align 64, offset 64] [from ]
!572 = metadata !{i32 786455, metadata !54, metadata !567, metadata !"", i32 56, i64 64, i64 64, i64 0, i32 0, null, metadata !573, i32 0, null, null, null} ; [ DW_TAG_union_type ] [line 56, size 64, align 64, offset 0] [def] [from ]
!573 = metadata !{metadata !574, metadata !575, metadata !576, metadata !577}
!574 = metadata !{i32 786445, metadata !54, metadata !572, metadata !"ival", i32 57, i64 64, i64 64, i64 0, i32 0, metadata !389} ; [ DW_TAG_member ] [ival] [line 57, size 64, align 64, offset 0] [from lua_Integer]
!575 = metadata !{i32 786445, metadata !54, metadata !572, metadata !"nval", i32 58, i64 64, i64 64, i64 0, i32 0, metadata !249} ; [ DW_TAG_member ] [nval] [line 58, size 64, align 64, offset 0] [from lua_Number]
!576 = metadata !{i32 786445, metadata !54, metadata !572, metadata !"info", i32 59, i64 32, i64 32, i64 0, i32 0, metadata !137} ; [ DW_TAG_member ] [info] [line 59, size 32, align 32, offset 0] [from int]
!577 = metadata !{i32 786445, metadata !54, metadata !572, metadata !"ind", i32 64, i64 32, i64 16, i64 0, i32 0, metadata !578} ; [ DW_TAG_member ] [ind] [line 64, size 32, align 16, offset 0] [from ]
!578 = metadata !{i32 786451, metadata !54, metadata !572, metadata !"", i32 60, i64 32, i64 16, i32 0, i32 0, null, metadata !579, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 60, size 32, align 16, offset 0] [def] [from ]
!579 = metadata !{metadata !580, metadata !581, metadata !582}
!580 = metadata !{i32 786445, metadata !54, metadata !578, metadata !"idx", i32 61, i64 16, i64 16, i64 0, i32 0, metadata !331} ; [ DW_TAG_member ] [idx] [line 61, size 16, align 16, offset 0] [from short]
!581 = metadata !{i32 786445, metadata !54, metadata !578, metadata !"t", i32 62, i64 8, i64 8, i64 16, i32 0, metadata !127} ; [ DW_TAG_member ] [t] [line 62, size 8, align 8, offset 16] [from lu_byte]
!582 = metadata !{i32 786445, metadata !54, metadata !578, metadata !"vt", i32 63, i64 8, i64 8, i64 24, i32 0, metadata !127} ; [ DW_TAG_member ] [vt] [line 63, size 8, align 8, offset 24] [from lu_byte]
!583 = metadata !{i32 786445, metadata !54, metadata !567, metadata !"t", i32 66, i64 32, i64 32, i64 128, i32 0, metadata !137} ; [ DW_TAG_member ] [t] [line 66, size 32, align 32, offset 128] [from int]
!584 = metadata !{i32 786445, metadata !54, metadata !567, metadata !"f", i32 67, i64 32, i64 32, i64 160, i32 0, metadata !137} ; [ DW_TAG_member ] [f] [line 67, size 32, align 32, offset 160] [from int]
!585 = metadata !{i32 786478, metadata !106, metadata !107, metadata !"luaK_setoneret", metadata !"luaK_setoneret", metadata !"", i32 539, metadata !586, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.FuncState*, %struct.expdesc*)* @luaK_setoneret, null, null, metadata !103, i32 539} ; [ DW_TAG_subprogram ] [line 539] [def] [luaK_setoneret]
!586 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !587, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!587 = metadata !{null, metadata !110, metadata !565}
!588 = metadata !{i32 786478, metadata !106, metadata !107, metadata !"luaK_dischargevars", metadata !"luaK_dischargevars", metadata !"", i32 556, metadata !586, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.FuncState*, %struct.expdesc*)* @luaK_dischargevars, null, null, metadata !103, i32 556} ; [ DW_TAG_subprogram ] [line 556] [def] [luaK_dischargevars]
!589 = metadata !{i32 786478, metadata !106, metadata !107, metadata !"luaK_exp2nextreg", metadata !"luaK_exp2nextreg", metadata !"", i32 703, metadata !586, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.FuncState*, %struct.expdesc*)* @luaK_exp2nextreg, null, null, metadata !103, i32 703} ; [ DW_TAG_subprogram ] [line 703] [def] [luaK_exp2nextreg]
!590 = metadata !{i32 786478, metadata !106, metadata !107, metadata !"luaK_exp2anyreg", metadata !"luaK_exp2anyreg", metadata !"", i32 715, metadata !591, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.FuncState*, %struct.expdesc*)* @luaK_exp2anyreg, null, null, metadata !103, i32 715} ; [ DW_TAG_subprogram ] [line 715] [def] [luaK_exp2anyreg]
!591 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !592, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!592 = metadata !{metadata !137, metadata !110, metadata !565}
!593 = metadata !{i32 786478, metadata !106, metadata !107, metadata !"luaK_exp2anyregup", metadata !"luaK_exp2anyregup", metadata !"", i32 734, metadata !586, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.FuncState*, %struct.expdesc*)* @luaK_exp2anyregup, null, null, metadata !103, i32 734} ; [ DW_TAG_subprogram ] [line 734] [def] [luaK_exp2anyregup]
!594 = metadata !{i32 786478, metadata !106, metadata !107, metadata !"luaK_exp2val", metadata !"luaK_exp2val", metadata !"", i32 744, metadata !586, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.FuncState*, %struct.expdesc*)* @luaK_exp2val, null, null, metadata !103, i32 744} ; [ DW_TAG_subprogram ] [line 744] [def] [luaK_exp2val]
!595 = metadata !{i32 786478, metadata !106, metadata !107, metadata !"luaK_exp2RK", metadata !"luaK_exp2RK", metadata !"", i32 758, metadata !591, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.FuncState*, %struct.expdesc*)* @luaK_exp2RK, null, null, metadata !103, i32 758} ; [ DW_TAG_subprogram ] [line 758] [def] [luaK_exp2RK]
!596 = metadata !{i32 786478, metadata !106, metadata !107, metadata !"luaK_storevar", metadata !"luaK_storevar", metadata !"", i32 782, metadata !597, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.FuncState*, %struct.expdesc*, %struct.expdesc*)* @luaK_storevar, null, null, metadata !103, i32 782} ; [ DW_TAG_subprogram ] [line 782] [def] [luaK_storevar]
!597 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !598, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!598 = metadata !{null, metadata !110, metadata !565, metadata !565}
!599 = metadata !{i32 786478, metadata !106, metadata !107, metadata !"luaK_self", metadata !"luaK_self", metadata !"", i32 809, metadata !597, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.FuncState*, %struct.expdesc*, %struct.expdesc*)* @luaK_self, null, null, metadata !103, i32 809} ; [ DW_TAG_subprogram ] [line 809] [def] [luaK_self]
!600 = metadata !{i32 786478, metadata !106, metadata !107, metadata !"luaK_goiftrue", metadata !"luaK_goiftrue", metadata !"", i32 857, metadata !586, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.FuncState*, %struct.expdesc*)* @luaK_goiftrue, null, null, metadata !103, i32 857} ; [ DW_TAG_subprogram ] [line 857] [def] [luaK_goiftrue]
!601 = metadata !{i32 786478, metadata !106, metadata !107, metadata !"luaK_goiffalse", metadata !"luaK_goiffalse", metadata !"", i32 884, metadata !586, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.FuncState*, %struct.expdesc*)* @luaK_goiffalse, null, null, metadata !103, i32 884} ; [ DW_TAG_subprogram ] [line 884] [def] [luaK_goiffalse]
!602 = metadata !{i32 786478, metadata !106, metadata !107, metadata !"luaK_indexed", metadata !"luaK_indexed", metadata !"", i32 946, metadata !597, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.FuncState*, %struct.expdesc*, %struct.expdesc*)* @luaK_indexed, null, null, metadata !103, i32 946} ; [ DW_TAG_subprogram ] [line 946] [def] [luaK_indexed]
!603 = metadata !{i32 786478, metadata !106, metadata !107, metadata !"luaK_prefix", metadata !"luaK_prefix", metadata !"", i32 1062, metadata !604, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.FuncState*, i32, %struct.expdesc*, i32)* @luaK_prefix, null, null, metadata !103, i32 1062} ; [ DW_TAG_subprogram ] [line 1062] [def] [luaK_prefix]
!604 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !605, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!605 = metadata !{null, metadata !110, metadata !606, metadata !565, metadata !137}
!606 = metadata !{i32 786454, metadata !72, null, metadata !"UnOpr", i32 40, i64 0, i64 0, i64 0, i32 0, metadata !71} ; [ DW_TAG_typedef ] [UnOpr] [line 40, size 0, align 0, offset 0] [from UnOpr]
!607 = metadata !{i32 786478, metadata !106, metadata !107, metadata !"luaK_infix", metadata !"luaK_infix", metadata !"", i32 1082, metadata !608, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.FuncState*, i32, %struct.expdesc*)* @luaK_infix, null, null, metadata !103, i32 1082} ; [ DW_TAG_subprogram ] [line 1082] [def] [luaK_infix]
!608 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !609, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!609 = metadata !{null, metadata !110, metadata !610, metadata !565}
!610 = metadata !{i32 786454, metadata !72, null, metadata !"BinOpr", i32 37, i64 0, i64 0, i64 0, i32 0, metadata !79} ; [ DW_TAG_typedef ] [BinOpr] [line 37, size 0, align 0, offset 0] [from BinOpr]
!611 = metadata !{i32 786478, metadata !106, metadata !107, metadata !"luaK_posfix", metadata !"luaK_posfix", metadata !"", i32 1120, metadata !612, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.FuncState*, i32, %struct.expdesc*, %struct.expdesc*, i32)* @luaK_posfix, null, null, metadata !103, i32 1121} ; [ DW_TAG_subprogram ] [line 1120] [def] [scope 1121] [luaK_posfix]
!612 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !613, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!613 = metadata !{null, metadata !110, metadata !610, metadata !565, metadata !565, metadata !137}
!614 = metadata !{i32 786478, metadata !106, metadata !107, metadata !"luaK_fixline", metadata !"luaK_fixline", metadata !"", i32 1173, metadata !540, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.FuncState*, i32)* @luaK_fixline, null, null, metadata !103, i32 1173} ; [ DW_TAG_subprogram ] [line 1173] [def] [luaK_fixline]
!615 = metadata !{i32 786478, metadata !106, metadata !107, metadata !"luaK_setlist", metadata !"luaK_setlist", metadata !"", i32 1185, metadata !616, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.FuncState*, i32, i32, i32)* @luaK_setlist, null, null, metadata !103, i32 1185} ; [ DW_TAG_subprogram ] [line 1185] [def] [luaK_setlist]
!616 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !617, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!617 = metadata !{null, metadata !110, metadata !137, metadata !137, metadata !137}
!618 = metadata !{i32 786478, metadata !106, metadata !107, metadata !"codecomp", metadata !"codecomp", metadata !"", i32 1033, metadata !619, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.FuncState*, i32, %struct.expdesc*, %struct.expdesc*)* @codecomp, null, null, metadata !103, i32 1033} ; [ DW_TAG_subprogram ] [line 1033] [local] [def] [codecomp]
!619 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !620, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!620 = metadata !{null, metadata !110, metadata !610, metadata !565, metadata !565}
!621 = metadata !{i32 786478, metadata !106, metadata !107, metadata !"condjump", metadata !"condjump", metadata !"", i32 158, metadata !545, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.FuncState*, i32, i32, i32, i32)* @condjump, null, null, metadata !103, i32 158} ; [ DW_TAG_subprogram ] [line 158] [local] [def] [condjump]
!622 = metadata !{i32 786478, metadata !106, metadata !107, metadata !"freeexps", metadata !"freeexps", metadata !"", i32 407, metadata !597, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.FuncState*, %struct.expdesc*, %struct.expdesc*)* @freeexps, null, null, metadata !103, i32 407} ; [ DW_TAG_subprogram ] [line 407] [local] [def] [freeexps]
!623 = metadata !{i32 786478, metadata !106, metadata !107, metadata !"codebinexpval", metadata !"codebinexpval", metadata !"", i32 1018, metadata !624, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.FuncState*, i32, %struct.expdesc*, %struct.expdesc*, i32)* @codebinexpval, null, null, metadata !103, i32 1019} ; [ DW_TAG_subprogram ] [line 1018] [local] [def] [scope 1019] [codebinexpval]
!624 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !625, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!625 = metadata !{null, metadata !110, metadata !547, metadata !565, metadata !565, metadata !137}
!626 = metadata !{i32 786478, metadata !106, metadata !107, metadata !"tonumeral", metadata !"tonumeral", metadata !"", i32 43, metadata !627, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.expdesc*, %struct.lua_TValue*)* @tonumeral, null, null, metadata !103, i32 43} ; [ DW_TAG_subprogram ] [line 43] [local] [def] [tonumeral]
!627 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !628, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!628 = metadata !{metadata !137, metadata !565, metadata !146}
!629 = metadata !{i32 786478, metadata !106, metadata !107, metadata !"codenot", metadata !"codenot", metadata !"", i32 910, metadata !586, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.FuncState*, %struct.expdesc*)* @codenot, null, null, metadata !103, i32 910} ; [ DW_TAG_subprogram ] [line 910] [local] [def] [codenot]
!630 = metadata !{i32 786478, metadata !106, metadata !107, metadata !"removevalues", metadata !"removevalues", metadata !"", i32 213, metadata !540, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.FuncState*, i32)* @removevalues, null, null, metadata !103, i32 213} ; [ DW_TAG_subprogram ] [line 213] [local] [def] [removevalues]
!631 = metadata !{i32 786478, metadata !106, metadata !107, metadata !"patchtestreg", metadata !"patchtestreg", metadata !"", i32 195, metadata !552, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.FuncState*, i32, i32)* @patchtestreg, null, null, metadata !103, i32 195} ; [ DW_TAG_subprogram ] [line 195] [local] [def] [patchtestreg]
!632 = metadata !{i32 786478, metadata !106, metadata !107, metadata !"getjumpcontrol", metadata !"getjumpcontrol", metadata !"", i32 179, metadata !633, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32* (%struct.FuncState*, i32)* @getjumpcontrol, null, null, metadata !103, i32 179} ; [ DW_TAG_subprogram ] [line 179] [local] [def] [getjumpcontrol]
!633 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !634, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!634 = metadata !{metadata !394, metadata !110, metadata !137}
!635 = metadata !{i32 786478, metadata !106, metadata !107, metadata !"discharge2anyreg", metadata !"discharge2anyreg", metadata !"", i32 641, metadata !586, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.FuncState*, %struct.expdesc*)* @discharge2anyreg, null, null, metadata !103, i32 641} ; [ DW_TAG_subprogram ] [line 641] [local] [def] [discharge2anyreg]
!636 = metadata !{i32 786478, metadata !106, metadata !107, metadata !"discharge2reg", metadata !"discharge2reg", metadata !"", i32 595, metadata !563, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.FuncState*, %struct.expdesc*, i32)* @discharge2reg, null, null, metadata !103, i32 595} ; [ DW_TAG_subprogram ] [line 595] [local] [def] [discharge2reg]
!637 = metadata !{i32 786478, metadata !106, metadata !107, metadata !"codeunexpval", metadata !"codeunexpval", metadata !"", i32 1003, metadata !638, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.FuncState*, i32, %struct.expdesc*, i32)* @codeunexpval, null, null, metadata !103, i32 1003} ; [ DW_TAG_subprogram ] [line 1003] [local] [def] [codeunexpval]
!638 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !639, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!639 = metadata !{null, metadata !110, metadata !547, metadata !565, metadata !137}
!640 = metadata !{i32 786478, metadata !106, metadata !107, metadata !"constfolding", metadata !"constfolding", metadata !"", i32 978, metadata !641, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.FuncState*, i32, %struct.expdesc*, %struct.expdesc*)* @constfolding, null, null, metadata !103, i32 978} ; [ DW_TAG_subprogram ] [line 978] [local] [def] [constfolding]
!641 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !642, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!642 = metadata !{metadata !137, metadata !110, metadata !137, metadata !565, metadata !565}
!643 = metadata !{i32 786478, metadata !106, metadata !107, metadata !"validop", metadata !"validop", metadata !"", i32 960, metadata !644, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, %struct.lua_TValue*, %struct.lua_TValue*)* @validop, null, null, metadata !103, i32 960} ; [ DW_TAG_subprogram ] [line 960] [local] [def] [validop]
!644 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !645, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!645 = metadata !{metadata !137, metadata !137, metadata !146, metadata !146}
!646 = metadata !{i32 786478, metadata !106, metadata !107, metadata !"jumponcond", metadata !"jumponcond", metadata !"", i32 839, metadata !647, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.FuncState*, %struct.expdesc*, i32)* @jumponcond, null, null, metadata !103, i32 839} ; [ DW_TAG_subprogram ] [line 839] [local] [def] [jumponcond]
!647 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !648, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!648 = metadata !{metadata !137, metadata !110, metadata !565, metadata !137}
!649 = metadata !{i32 786478, metadata !106, metadata !107, metadata !"negatecondition", metadata !"negatecondition", metadata !"", i32 825, metadata !586, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.FuncState*, %struct.expdesc*)* @negatecondition, null, null, metadata !103, i32 825} ; [ DW_TAG_subprogram ] [line 825] [local] [def] [negatecondition]
!650 = metadata !{i32 786478, metadata !106, metadata !107, metadata !"luaK_numberK", metadata !"luaK_numberK", metadata !"", i32 481, metadata !651, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.FuncState*, double)* @luaK_numberK, null, null, metadata !103, i32 481} ; [ DW_TAG_subprogram ] [line 481] [local] [def] [luaK_numberK]
!651 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !652, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!652 = metadata !{metadata !137, metadata !110, metadata !249}
!653 = metadata !{i32 786478, metadata !106, metadata !107, metadata !"nilK", metadata !"nilK", metadata !"", i32 501, metadata !535, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.FuncState*)* @nilK, null, null, metadata !103, i32 501} ; [ DW_TAG_subprogram ] [line 501] [local] [def] [nilK]
!654 = metadata !{i32 786478, metadata !106, metadata !107, metadata !"boolK", metadata !"boolK", metadata !"", i32 491, metadata !655, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.FuncState*, i32)* @boolK, null, null, metadata !103, i32 491} ; [ DW_TAG_subprogram ] [line 491] [local] [def] [boolK]
!655 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !656, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!656 = metadata !{metadata !137, metadata !110, metadata !137}
!657 = metadata !{i32 786478, metadata !106, metadata !107, metadata !"exp2reg", metadata !"exp2reg", metadata !"", i32 675, metadata !563, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.FuncState*, %struct.expdesc*, i32)* @exp2reg, null, null, metadata !103, i32 675} ; [ DW_TAG_subprogram ] [line 675] [local] [def] [exp2reg]
!658 = metadata !{i32 786478, metadata !106, metadata !107, metadata !"code_loadbool", metadata !"code_loadbool", metadata !"", i32 649, metadata !659, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.FuncState*, i32, i32, i32)* @code_loadbool, null, null, metadata !103, i32 649} ; [ DW_TAG_subprogram ] [line 649] [local] [def] [code_loadbool]
!659 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !660, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!660 = metadata !{metadata !137, metadata !110, metadata !137, metadata !137, metadata !137}
!661 = metadata !{i32 786478, metadata !106, metadata !107, metadata !"need_value", metadata !"need_value", metadata !"", i32 659, metadata !655, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.FuncState*, i32)* @need_value, null, null, metadata !103, i32 659} ; [ DW_TAG_subprogram ] [line 659] [local] [def] [need_value]
!662 = metadata !{i32 786478, metadata !106, metadata !107, metadata !"freeexp", metadata !"freeexp", metadata !"", i32 397, metadata !586, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.FuncState*, %struct.expdesc*)* @freeexp, null, null, metadata !103, i32 397} ; [ DW_TAG_subprogram ] [line 397] [local] [def] [freeexp]
!663 = metadata !{i32 786478, metadata !106, metadata !107, metadata !"freereg", metadata !"freereg", metadata !"", i32 386, metadata !540, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.FuncState*, i32)* @freereg, null, null, metadata !103, i32 386} ; [ DW_TAG_subprogram ] [line 386] [local] [def] [freereg]
!664 = metadata !{i32 786478, metadata !106, metadata !107, metadata !"addk", metadata !"addk", metadata !"", i32 428, metadata !665, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.FuncState*, %struct.lua_TValue*, %struct.lua_TValue*)* @addk, null, null, metadata !103, i32 428} ; [ DW_TAG_subprogram ] [line 428] [local] [def] [addk]
!665 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !666, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!666 = metadata !{metadata !137, metadata !110, metadata !146, metadata !146}
!667 = metadata !{i32 786478, metadata !106, metadata !107, metadata !"codeextraarg", metadata !"codeextraarg", metadata !"", i32 335, metadata !655, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.FuncState*, i32)* @codeextraarg, null, null, metadata !103, i32 335} ; [ DW_TAG_subprogram ] [line 335] [local] [def] [codeextraarg]
!668 = metadata !{i32 786478, metadata !106, metadata !107, metadata !"luaK_code", metadata !"luaK_code", metadata !"", i32 293, metadata !669, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.FuncState*, i32)* @luaK_code, null, null, metadata !103, i32 293} ; [ DW_TAG_subprogram ] [line 293] [local] [def] [luaK_code]
!669 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !670, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!670 = metadata !{metadata !137, metadata !110, metadata !315}
!671 = metadata !{i32 786478, metadata !106, metadata !107, metadata !"dischargejpc", metadata !"dischargejpc", metadata !"", i32 242, metadata !672, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.FuncState*)* @dischargejpc, null, null, metadata !103, i32 242} ; [ DW_TAG_subprogram ] [line 242] [local] [def] [dischargejpc]
!672 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !673, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!673 = metadata !{null, metadata !110}
!674 = metadata !{i32 786478, metadata !106, metadata !107, metadata !"patchlistaux", metadata !"patchlistaux", metadata !"", i32 224, metadata !675, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.FuncState*, i32, i32, i32, i32)* @patchlistaux, null, null, metadata !103, i32 225} ; [ DW_TAG_subprogram ] [line 224] [local] [def] [scope 225] [patchlistaux]
!675 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !676, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!676 = metadata !{null, metadata !110, metadata !137, metadata !137, metadata !137, metadata !137}
!677 = metadata !{i32 786478, metadata !106, metadata !107, metadata !"fixjump", metadata !"fixjump", metadata !"", i32 103, metadata !108, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.FuncState*, i32, i32)* @fixjump, null, null, metadata !103, i32 103} ; [ DW_TAG_subprogram ] [line 103] [local] [def] [fixjump]
!678 = metadata !{i32 786478, metadata !106, metadata !107, metadata !"getjump", metadata !"getjump", metadata !"", i32 90, metadata !655, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.FuncState*, i32)* @getjump, null, null, metadata !103, i32 90} ; [ DW_TAG_subprogram ] [line 90] [local] [def] [getjump]
!679 = metadata !{metadata !680}
!680 = metadata !{i32 786484, i32 0, metadata !603, metadata !"ef", metadata !"ef", metadata !"", metadata !107, i32 1063, metadata !566, i32 1, i32 1, %struct.expdesc* @luaK_prefix.ef, null} ; [ DW_TAG_variable ] [ef] [line 1063] [local] [def]
!681 = metadata !{void (%struct.FuncState*, i32, i32)* @luaK_nil}
!682 = metadata !{metadata !"luaK_nil"}
!683 = metadata !{i32 (%struct.FuncState*, i32, i32, i32, i32)* @luaK_codeABC}
!684 = metadata !{metadata !"luaK_codeABC"}
!685 = metadata !{void (%struct.FuncState*, i32*, i32)* @luaK_concat}
!686 = metadata !{metadata !"luaK_concat"}
!687 = metadata !{i32 (%struct.FuncState*, i32)* @getjump}
!688 = metadata !{metadata !"getjump"}
!689 = metadata !{void (%struct.FuncState*, i32, i32)* @fixjump}
!690 = metadata !{metadata !"fixjump"}
!691 = metadata !{i32 (%struct.FuncState*)* @luaK_jump}
!692 = metadata !{metadata !"luaK_jump"}
!693 = metadata !{i32 (%struct.FuncState*, i32, i32, i32)* @luaK_codeABx}
!694 = metadata !{metadata !"luaK_codeABx"}
!695 = metadata !{void (%struct.FuncState*, i32, i32)* @luaK_ret}
!696 = metadata !{metadata !"luaK_ret"}
!697 = metadata !{i32 (%struct.FuncState*)* @luaK_getlabel}
!698 = metadata !{metadata !"luaK_getlabel"}
!699 = metadata !{void (%struct.FuncState*, i32)* @luaK_patchtohere}
!700 = metadata !{metadata !"luaK_patchtohere"}
!701 = metadata !{void (%struct.FuncState*, i32, i32)* @luaK_patchlist}
!702 = metadata !{metadata !"luaK_patchlist"}
!703 = metadata !{void (%struct.FuncState*, i32, i32, i32, i32)* @patchlistaux}
!704 = metadata !{metadata !"patchlistaux"}
!705 = metadata !{void (%struct.FuncState*, i32, i32)* @luaK_patchclose}
!706 = metadata !{metadata !"luaK_patchclose"}
!707 = metadata !{i32 (%struct.FuncState*, i32)* @luaK_code}
!708 = metadata !{metadata !"luaK_code"}
!709 = metadata !{i32 (%struct.FuncState*, i32, i32)* @luaK_codek}
!710 = metadata !{metadata !"luaK_codek"}
!711 = metadata !{i32 (%struct.FuncState*, i32)* @codeextraarg}
!712 = metadata !{metadata !"codeextraarg"}
!713 = metadata !{void (%struct.FuncState*, i32)* @luaK_checkstack}
!714 = metadata !{metadata !"luaK_checkstack"}
!715 = metadata !{void (%struct.LexState*, i8*)* @luaX_syntaxerror}
!716 = metadata !{metadata !"luaX_syntaxerror"}
!717 = metadata !{void (%struct.FuncState*, i32)* @luaK_reserveregs}
!718 = metadata !{metadata !"luaK_reserveregs"}
!719 = metadata !{i32 (%struct.FuncState*, %struct.TString*)* @luaK_stringK}
!720 = metadata !{metadata !"luaK_stringK"}
!721 = metadata !{i32 (%struct.FuncState*, %struct.lua_TValue*, %struct.lua_TValue*)* @addk}
!722 = metadata !{metadata !"addk"}
!723 = metadata !{i32 (%struct.FuncState*, i64)* @luaK_intK}
!724 = metadata !{metadata !"luaK_intK"}
!725 = metadata !{void (%struct.FuncState*, %struct.expdesc*, i32)* @luaK_setreturns}
!726 = metadata !{metadata !"luaK_setreturns"}
!727 = metadata !{void (%struct.FuncState*, %struct.expdesc*)* @luaK_setoneret}
!728 = metadata !{metadata !"luaK_setoneret"}
!729 = metadata !{void (%struct.FuncState*, %struct.expdesc*)* @luaK_dischargevars}
!730 = metadata !{metadata !"luaK_dischargevars"}
!731 = metadata !{void (%struct.FuncState*, i32)* @freereg}
!732 = metadata !{metadata !"freereg"}
!733 = metadata !{void (%struct.FuncState*, %struct.expdesc*)* @luaK_exp2nextreg}
!734 = metadata !{metadata !"luaK_exp2nextreg"}
!735 = metadata !{void (%struct.FuncState*, %struct.expdesc*)* @freeexp}
!736 = metadata !{metadata !"freeexp"}
!737 = metadata !{void (%struct.FuncState*, %struct.expdesc*, i32)* @exp2reg}
!738 = metadata !{metadata !"exp2reg"}
!739 = metadata !{i32 (%struct.FuncState*, %struct.expdesc*)* @luaK_exp2anyreg}
!740 = metadata !{metadata !"luaK_exp2anyreg"}
!741 = metadata !{void (%struct.FuncState*, %struct.expdesc*)* @luaK_exp2anyregup}
!742 = metadata !{metadata !"luaK_exp2anyregup"}
!743 = metadata !{void (%struct.FuncState*, %struct.expdesc*)* @luaK_exp2val}
!744 = metadata !{metadata !"luaK_exp2val"}
!745 = metadata !{i32 (%struct.FuncState*, %struct.expdesc*)* @luaK_exp2RK}
!746 = metadata !{metadata !"luaK_exp2RK"}
!747 = metadata !{i32 (%struct.FuncState*, i32)* @boolK}
!748 = metadata !{metadata !"boolK"}
!749 = metadata !{i32 (%struct.FuncState*)* @nilK}
!750 = metadata !{metadata !"nilK"}
!751 = metadata !{i32 (%struct.FuncState*, double)* @luaK_numberK}
!752 = metadata !{metadata !"luaK_numberK"}
!753 = metadata !{void (%struct.FuncState*, %struct.expdesc*, %struct.expdesc*)* @luaK_storevar}
!754 = metadata !{metadata !"luaK_storevar"}
!755 = metadata !{void (%struct.FuncState*, %struct.expdesc*, %struct.expdesc*)* @luaK_self}
!756 = metadata !{metadata !"luaK_self"}
!757 = metadata !{void (%struct.FuncState*, %struct.expdesc*)* @luaK_goiftrue}
!758 = metadata !{metadata !"luaK_goiftrue"}
!759 = metadata !{void (%struct.FuncState*, %struct.expdesc*)* @negatecondition}
!760 = metadata !{metadata !"negatecondition"}
!761 = metadata !{i32 (%struct.FuncState*, %struct.expdesc*, i32)* @jumponcond}
!762 = metadata !{metadata !"jumponcond"}
!763 = metadata !{void (%struct.FuncState*, %struct.expdesc*)* @luaK_goiffalse}
!764 = metadata !{metadata !"luaK_goiffalse"}
!765 = metadata !{void (%struct.FuncState*, %struct.expdesc*, %struct.expdesc*)* @luaK_indexed}
!766 = metadata !{metadata !"luaK_indexed"}
!767 = metadata !{void (%struct.FuncState*, i32, %struct.expdesc*, i32)* @luaK_prefix}
!768 = metadata !{metadata !"luaK_prefix"}
!769 = metadata !{i32 (%struct.FuncState*, i32, %struct.expdesc*, %struct.expdesc*)* @constfolding}
!770 = metadata !{metadata !"constfolding"}
!771 = metadata !{void (%struct.FuncState*, i32, %struct.expdesc*, i32)* @codeunexpval}
!772 = metadata !{metadata !"codeunexpval"}
!773 = metadata !{void (%struct.FuncState*, %struct.expdesc*)* @codenot}
!774 = metadata !{metadata !"codenot"}
!775 = metadata !{void (%struct.FuncState*, i32, %struct.expdesc*)* @luaK_infix}
!776 = metadata !{metadata !"luaK_infix"}
!777 = metadata !{i32 (%struct.expdesc*, %struct.lua_TValue*)* @tonumeral}
!778 = metadata !{metadata !"tonumeral"}
!779 = metadata !{void (%struct.FuncState*, i32, %struct.expdesc*, %struct.expdesc*, i32)* @luaK_posfix}
!780 = metadata !{metadata !"luaK_posfix"}
!781 = metadata !{void (%struct.FuncState*, i32, %struct.expdesc*, %struct.expdesc*, i32)* @codebinexpval}
!782 = metadata !{metadata !"codebinexpval"}
!783 = metadata !{void (%struct.FuncState*, i32, %struct.expdesc*, %struct.expdesc*)* @codecomp}
!784 = metadata !{metadata !"codecomp"}
!785 = metadata !{void (%struct.FuncState*, i32)* @luaK_fixline}
!786 = metadata !{metadata !"luaK_fixline"}
!787 = metadata !{void (%struct.FuncState*, i32, i32, i32)* @luaK_setlist}
!788 = metadata !{metadata !"luaK_setlist"}
!789 = metadata !{void (%struct.FuncState*, %struct.expdesc*, %struct.expdesc*)* @freeexps}
!790 = metadata !{metadata !"freeexps"}
!791 = metadata !{i32 (%struct.FuncState*, i32, i32, i32, i32)* @condjump}
!792 = metadata !{metadata !"condjump"}
!793 = metadata !{void (%struct.FuncState*, %struct.expdesc*)* @discharge2anyreg}
!794 = metadata !{metadata !"discharge2anyreg"}
!795 = metadata !{void (%struct.FuncState*, i32)* @removevalues}
!796 = metadata !{metadata !"removevalues"}
!797 = metadata !{i32 (%struct.FuncState*, i32, i32)* @patchtestreg}
!798 = metadata !{metadata !"patchtestreg"}
!799 = metadata !{i32* (%struct.FuncState*, i32)* @getjumpcontrol}
!800 = metadata !{metadata !"getjumpcontrol"}
!801 = metadata !{void (%struct.FuncState*, %struct.expdesc*, i32)* @discharge2reg}
!802 = metadata !{metadata !"discharge2reg"}
!803 = metadata !{i32 (i32, %struct.lua_TValue*, %struct.lua_TValue*)* @validop}
!804 = metadata !{metadata !"validop"}
!805 = metadata !{void (%struct.lua_State*, i32, %struct.lua_TValue*, %struct.lua_TValue*, %struct.lua_TValue*)* @luaO_arith}
!806 = metadata !{metadata !"luaO_arith"}
!807 = metadata !{i32 (%struct.lua_TValue*, i64*, i32)* @luaV_tointeger}
!808 = metadata !{metadata !"luaV_tointeger"}
!809 = metadata !{i32 (%struct.FuncState*, i32)* @need_value}
!810 = metadata !{metadata !"need_value"}
!811 = metadata !{i32 (%struct.FuncState*, i32, i32, i32)* @code_loadbool}
!812 = metadata !{metadata !"code_loadbool"}
!813 = metadata !{%struct.lua_TValue* (%struct.lua_State*, %struct.Table*, %struct.lua_TValue*)* @luaH_set}
!814 = metadata !{metadata !"luaH_set"}
!815 = metadata !{i32 (%struct.lua_State*, %struct.lua_TValue*, %struct.lua_TValue*)* @luaV_equalobj}
!816 = metadata !{metadata !"luaV_equalobj"}
!817 = metadata !{i8* (%struct.lua_State*, i8*, i32*, i32, i32, i8*)* @luaM_growaux_}
!818 = metadata !{metadata !"luaM_growaux_"}
!819 = metadata !{void (%struct.lua_State*, %struct.GCObject*, %struct.GCObject*)* @luaC_barrier_}
!820 = metadata !{metadata !"luaC_barrier_"}
!821 = metadata !{void (%struct.FuncState*)* @dischargejpc}
!822 = metadata !{metadata !"dischargejpc"}
!823 = metadata !{i32 (i32)* @abs}
!824 = metadata !{metadata !"abs"}
!825 = metadata !{metadata !"void.FuncState *.1.int.0.int.0"}
!826 = metadata !{metadata !"int.FuncState *.1.OpCode.0.int.0.int.0.int.0"}
!827 = metadata !{metadata !"void.FuncState *.1.int *.1.int.0"}
!828 = metadata !{metadata !"int.FuncState *.1.int.0"}
!829 = metadata !{metadata !"int.FuncState *.1"}
!830 = metadata !{metadata !"int.FuncState *.1.OpCode.0.int.0.unsigned int.0"}
!831 = metadata !{metadata !"void.FuncState *.1.int.0"}
!832 = metadata !{metadata !"void.FuncState *.1.int.0.int.0.int.0.int.0"}
!833 = metadata !{metadata !"int.FuncState *.1.Instruction.0"}
!834 = metadata !{metadata !"int.FuncState *.1.int.0.int.0"}
!835 = metadata !{metadata !"void.LexState *.1.const char *.1"}
!836 = metadata !{metadata !"int.FuncState *.1.TString *.1"}
!837 = metadata !{metadata !"int.FuncState *.1.TValue *.1.TValue *.1"}
!838 = metadata !{metadata !"int.FuncState *.1.lua_Integer.0"}
!839 = metadata !{metadata !"void.FuncState *.1.expdesc *.1.int.0"}
!840 = metadata !{metadata !"void.FuncState *.1.expdesc *.1"}
!841 = metadata !{metadata !"int.FuncState *.1.expdesc *.1"}
!842 = metadata !{metadata !"int.FuncState *.1.lua_Number.0"}
!843 = metadata !{metadata !"void.FuncState *.1.expdesc *.1.expdesc *.1"}
!844 = metadata !{metadata !"int.FuncState *.1.expdesc *.1.int.0"}
!845 = metadata !{metadata !"void.FuncState *.1.UnOpr.0.expdesc *.1.int.0"}
!846 = metadata !{metadata !"int.FuncState *.1.int.0.expdesc *.1.expdesc *.1"}
!847 = metadata !{metadata !"void.FuncState *.1.OpCode.0.expdesc *.1.int.0"}
!848 = metadata !{metadata !"void.FuncState *.1.BinOpr.0.expdesc *.1"}
!849 = metadata !{metadata !"int.expdesc *.1.TValue *.1"}
!850 = metadata !{metadata !"void.FuncState *.1.BinOpr.0.expdesc *.1.expdesc *.1.int.0"}
!851 = metadata !{metadata !"void.FuncState *.1.OpCode.0.expdesc *.1.expdesc *.1.int.0"}
!852 = metadata !{metadata !"void.FuncState *.1.BinOpr.0.expdesc *.1.expdesc *.1"}
!853 = metadata !{metadata !"void.FuncState *.1.int.0.int.0.int.0"}
!854 = metadata !{metadata !"Instruction .FuncState *.1.int.0"}
!855 = metadata !{metadata !"int.int.0.TValue *.1.TValue *.1"}
!856 = metadata !{metadata !"void.lua_State *.1.int.0.const TValue *.1.const TValue *.1.TValue *.1"}
!857 = metadata !{metadata !"int.const TValue *.1.lua_Integer *.1.int.0"}
!858 = metadata !{metadata !"int.FuncState *.1.int.0.int.0.int.0"}
!859 = metadata !{metadata !"TValue .lua_State *.1.Table *.1.const TValue *.1"}
!860 = metadata !{metadata !"int.lua_State *.1.const TValue *.1.const TValue *.1"}
!861 = metadata !{metadata !"void .lua_State *.1.void *.1.int *.1.size_t.0.int.0.const char *.1"}
!862 = metadata !{metadata !"void.lua_State *.1.GCObject *.1.GCObject *.1"}
!863 = metadata !{metadata !"void.FuncState *.1"}
!864 = metadata !{metadata !"int.int.0"}
!865 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lcode.h"}
!866 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lcode.c"}
!867 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/llex.h"}
!868 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lobject.h"}
!869 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lvm.h"}
!870 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/ltable.h"}
!871 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lmem.h"}
!872 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lgc.h"}
!873 = metadata !{metadata !"D:/Xilinx/SDx/2016.3/SDK/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include\5Cstdlib.h"}
!874 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!875 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!876 = metadata !{i32 1, metadata !"wchar_size", i32 4}
!877 = metadata !{i32 1, metadata !"min_enum_size", i32 4}
!878 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
!879 = metadata !{i32 786689, metadata !105, metadata !"fs", metadata !107, i32 16777280, metadata !110, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fs] [line 64]
!880 = metadata !{i32 64, i32 27, metadata !105, null}
!881 = metadata !{i32 786689, metadata !105, metadata !"from", metadata !107, i32 33554496, metadata !137, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [from] [line 64]
!882 = metadata !{i32 64, i32 35, metadata !105, null}
!883 = metadata !{i32 786689, metadata !105, metadata !"n", metadata !107, i32 50331712, metadata !137, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 64]
!884 = metadata !{i32 64, i32 45, metadata !105, null}
!885 = metadata !{i32 786688, metadata !105, metadata !"previous", metadata !107, i32 65, metadata !394, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [previous] [line 65]
!886 = metadata !{i32 65, i32 16, metadata !105, null}
!887 = metadata !{i32 786688, metadata !105, metadata !"l", metadata !107, i32 66, metadata !137, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [l] [line 66]
!888 = metadata !{i32 66, i32 7, metadata !105, null}
!889 = metadata !{i32 66, i32 3, metadata !105, null}
!890 = metadata !{i32 67, i32 7, metadata !891, null}
!891 = metadata !{i32 786443, metadata !106, metadata !105, i32 67, i32 7, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!892 = metadata !{i32 68, i32 5, metadata !893, null}
!893 = metadata !{i32 786443, metadata !106, metadata !891, i32 67, i32 32, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!894 = metadata !{i32 69, i32 9, metadata !895, null}
!895 = metadata !{i32 786443, metadata !106, metadata !893, i32 69, i32 9, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!896 = metadata !{i32 786688, metadata !897, metadata !"pfrom", metadata !107, i32 70, metadata !137, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pfrom] [line 70]
!897 = metadata !{i32 786443, metadata !106, metadata !895, i32 69, i32 46, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!898 = metadata !{i32 70, i32 11, metadata !897, null}
!899 = metadata !{i32 70, i32 7, metadata !897, null}
!900 = metadata !{i32 786688, metadata !897, metadata !"pl", metadata !107, i32 71, metadata !137, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pl] [line 71]
!901 = metadata !{i32 71, i32 11, metadata !897, null}
!902 = metadata !{i32 71, i32 7, metadata !897, null}
!903 = metadata !{i32 72, i32 11, metadata !904, null}
!904 = metadata !{i32 786443, metadata !106, metadata !897, i32 72, i32 11, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!905 = metadata !{i32 72, i32 11, metadata !906, null}
!906 = metadata !{i32 786443, metadata !106, metadata !904, i32 72, i32 11, i32 1, i32 155} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!907 = metadata !{i32 72, i32 11, metadata !908, null}
!908 = metadata !{i32 786443, metadata !106, metadata !909, i32 72, i32 11, i32 3, i32 157} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!909 = metadata !{i32 786443, metadata !106, metadata !904, i32 72, i32 11, i32 2, i32 156} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!910 = metadata !{i32 72, i32 11, metadata !911, null}
!911 = metadata !{i32 786443, metadata !106, metadata !904, i32 72, i32 11, i32 4, i32 158} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!912 = metadata !{i32 74, i32 13, metadata !913, null}
!913 = metadata !{i32 786443, metadata !106, metadata !914, i32 74, i32 13, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!914 = metadata !{i32 786443, metadata !106, metadata !904, i32 73, i32 46, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!915 = metadata !{i32 74, i32 27, metadata !916, null}
!916 = metadata !{i32 786443, metadata !106, metadata !913, i32 74, i32 27, i32 1, i32 159} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!917 = metadata !{i32 75, i32 13, metadata !918, null}
!918 = metadata !{i32 786443, metadata !106, metadata !914, i32 75, i32 13, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!919 = metadata !{i32 75, i32 21, metadata !920, null}
!920 = metadata !{i32 786443, metadata !106, metadata !918, i32 75, i32 21, i32 1, i32 160} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!921 = metadata !{i32 76, i32 9, metadata !914, null}
!922 = metadata !{i32 77, i32 9, metadata !914, null}
!923 = metadata !{i32 78, i32 9, metadata !914, null}
!924 = metadata !{i32 80, i32 5, metadata !897, null}
!925 = metadata !{i32 81, i32 3, metadata !893, null}
!926 = metadata !{i32 82, i32 3, metadata !105, null}
!927 = metadata !{i32 83, i32 1, metadata !105, null}
!928 = metadata !{i32 83, i32 1, metadata !929, null}
!929 = metadata !{i32 786443, metadata !106, metadata !105, i32 83, i32 1, i32 1, i32 161} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!930 = metadata !{i32 786689, metadata !544, metadata !"fs", metadata !107, i32 16777528, metadata !110, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fs] [line 312]
!931 = metadata !{i32 312, i32 30, metadata !544, null}
!932 = metadata !{i32 786689, metadata !544, metadata !"o", metadata !107, i32 33554744, metadata !547, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [o] [line 312]
!933 = metadata !{i32 312, i32 41, metadata !544, null}
!934 = metadata !{i32 786689, metadata !544, metadata !"a", metadata !107, i32 50331960, metadata !137, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 312]
!935 = metadata !{i32 312, i32 48, metadata !544, null}
!936 = metadata !{i32 786689, metadata !544, metadata !"b", metadata !107, i32 67109176, metadata !137, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b] [line 312]
!937 = metadata !{i32 312, i32 55, metadata !544, null}
!938 = metadata !{i32 786689, metadata !544, metadata !"c", metadata !107, i32 83886392, metadata !137, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [c] [line 312]
!939 = metadata !{i32 312, i32 62, metadata !544, null}
!940 = metadata !{i32 317, i32 10, metadata !544, null}
!941 = metadata !{i32 786689, metadata !531, metadata !"fs", metadata !107, i32 16777332, metadata !110, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fs] [line 116]
!942 = metadata !{i32 116, i32 30, metadata !531, null}
!943 = metadata !{i32 786689, metadata !531, metadata !"l1", metadata !107, i32 33554548, metadata !399, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [l1] [line 116]
!944 = metadata !{i32 116, i32 39, metadata !531, null}
!945 = metadata !{i32 786689, metadata !531, metadata !"l2", metadata !107, i32 50331764, metadata !137, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [l2] [line 116]
!946 = metadata !{i32 116, i32 47, metadata !531, null}
!947 = metadata !{i32 117, i32 7, metadata !948, null}
!948 = metadata !{i32 786443, metadata !106, metadata !531, i32 117, i32 7, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!949 = metadata !{i32 117, i32 22, metadata !950, null}
!950 = metadata !{i32 786443, metadata !106, metadata !948, i32 117, i32 22, i32 1, i32 162} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!951 = metadata !{i32 118, i32 12, metadata !952, null}
!952 = metadata !{i32 786443, metadata !106, metadata !948, i32 118, i32 12, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!953 = metadata !{i32 119, i32 5, metadata !952, null}
!954 = metadata !{i32 786688, metadata !955, metadata !"list", metadata !107, i32 121, metadata !137, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [list] [line 121]
!955 = metadata !{i32 786443, metadata !106, metadata !952, i32 120, i32 8, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!956 = metadata !{i32 121, i32 9, metadata !955, null}
!957 = metadata !{i32 121, i32 5, metadata !955, null}
!958 = metadata !{i32 786688, metadata !955, metadata !"next", metadata !107, i32 122, metadata !137, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [next] [line 122]
!959 = metadata !{i32 122, i32 9, metadata !955, null}
!960 = metadata !{i32 123, i32 5, metadata !955, null}
!961 = metadata !{i32 123, i32 20, metadata !962, null}
!962 = metadata !{i32 786443, metadata !106, metadata !955, i32 123, i32 20, i32 1, i32 163} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!963 = metadata !{i32 124, i32 7, metadata !955, null}
!964 = metadata !{i32 125, i32 5, metadata !955, null}
!965 = metadata !{i32 127, i32 1, metadata !531, null}
!966 = metadata !{i32 786689, metadata !678, metadata !"fs", metadata !107, i32 16777306, metadata !110, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fs] [line 90]
!967 = metadata !{i32 90, i32 32, metadata !678, null}
!968 = metadata !{i32 786689, metadata !678, metadata !"pc", metadata !107, i32 33554522, metadata !137, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pc] [line 90]
!969 = metadata !{i32 90, i32 40, metadata !678, null}
!970 = metadata !{i32 786688, metadata !678, metadata !"offset", metadata !107, i32 91, metadata !137, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [offset] [line 91]
!971 = metadata !{i32 91, i32 7, metadata !678, null}
!972 = metadata !{i32 91, i32 3, metadata !678, null}
!973 = metadata !{i32 92, i32 7, metadata !974, null}
!974 = metadata !{i32 786443, metadata !106, metadata !678, i32 92, i32 7, i32 0, i32 154} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!975 = metadata !{i32 93, i32 5, metadata !974, null}
!976 = metadata !{i32 95, i32 5, metadata !974, null}
!977 = metadata !{i32 96, i32 1, metadata !678, null}
!978 = metadata !{i32 786689, metadata !677, metadata !"fs", metadata !107, i32 16777319, metadata !110, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fs] [line 103]
!979 = metadata !{i32 103, i32 33, metadata !677, null}
!980 = metadata !{i32 786689, metadata !677, metadata !"pc", metadata !107, i32 33554535, metadata !137, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pc] [line 103]
!981 = metadata !{i32 103, i32 41, metadata !677, null}
!982 = metadata !{i32 786689, metadata !677, metadata !"dest", metadata !107, i32 50331751, metadata !137, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dest] [line 103]
!983 = metadata !{i32 103, i32 49, metadata !677, null}
!984 = metadata !{i32 786688, metadata !677, metadata !"jmp", metadata !107, i32 104, metadata !394, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jmp] [line 104]
!985 = metadata !{i32 104, i32 16, metadata !677, null}
!986 = metadata !{i32 104, i32 3, metadata !677, null}
!987 = metadata !{i32 786688, metadata !677, metadata !"offset", metadata !107, i32 105, metadata !137, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [offset] [line 105]
!988 = metadata !{i32 105, i32 7, metadata !677, null}
!989 = metadata !{i32 105, i32 3, metadata !677, null}
!990 = metadata !{i32 107, i32 7, metadata !991, null}
!991 = metadata !{i32 786443, metadata !106, metadata !677, i32 107, i32 7, i32 0, i32 153} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!992 = metadata !{i32 108, i32 5, metadata !991, null}
!993 = metadata !{i32 109, i32 3, metadata !677, null}
!994 = metadata !{i32 110, i32 1, metadata !677, null}
!995 = metadata !{i32 786689, metadata !534, metadata !"fs", metadata !107, i32 16777352, metadata !110, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fs] [line 136]
!996 = metadata !{i32 136, i32 27, metadata !534, null}
!997 = metadata !{i32 786688, metadata !534, metadata !"jpc", metadata !107, i32 137, metadata !137, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jpc] [line 137]
!998 = metadata !{i32 137, i32 7, metadata !534, null}
!999 = metadata !{i32 137, i32 3, metadata !534, null}
!1000 = metadata !{i32 786688, metadata !534, metadata !"j", metadata !107, i32 138, metadata !137, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 138]
!1001 = metadata !{i32 138, i32 7, metadata !534, null}
!1002 = metadata !{i32 139, i32 3, metadata !534, null}
!1003 = metadata !{i32 140, i32 7, metadata !534, null}
!1004 = metadata !{i32 141, i32 3, metadata !534, null}
!1005 = metadata !{i32 142, i32 3, metadata !534, null}
!1006 = metadata !{i32 786689, metadata !548, metadata !"fs", metadata !107, i32 16777540, metadata !110, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fs] [line 324]
!1007 = metadata !{i32 324, i32 30, metadata !548, null}
!1008 = metadata !{i32 786689, metadata !548, metadata !"o", metadata !107, i32 33554756, metadata !547, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [o] [line 324]
!1009 = metadata !{i32 324, i32 41, metadata !548, null}
!1010 = metadata !{i32 786689, metadata !548, metadata !"a", metadata !107, i32 50331972, metadata !137, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 324]
!1011 = metadata !{i32 324, i32 48, metadata !548, null}
!1012 = metadata !{i32 786689, metadata !548, metadata !"bc", metadata !107, i32 67109188, metadata !189, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bc] [line 324]
!1013 = metadata !{i32 324, i32 64, metadata !548, null}
!1014 = metadata !{i32 328, i32 10, metadata !548, null}
!1015 = metadata !{i32 786689, metadata !537, metadata !"fs", metadata !107, i32 16777365, metadata !110, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fs] [line 149]
!1016 = metadata !{i32 149, i32 27, metadata !537, null}
!1017 = metadata !{i32 786689, metadata !537, metadata !"first", metadata !107, i32 33554581, metadata !137, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [first] [line 149]
!1018 = metadata !{i32 149, i32 35, metadata !537, null}
!1019 = metadata !{i32 786689, metadata !537, metadata !"nret", metadata !107, i32 50331797, metadata !137, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nret] [line 149]
!1020 = metadata !{i32 149, i32 46, metadata !537, null}
!1021 = metadata !{i32 150, i32 3, metadata !537, null}
!1022 = metadata !{i32 151, i32 1, metadata !537, null}
!1023 = metadata !{i32 786689, metadata !538, metadata !"fs", metadata !107, i32 16777384, metadata !110, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fs] [line 168]
!1024 = metadata !{i32 168, i32 31, metadata !538, null}
!1025 = metadata !{i32 169, i32 3, metadata !538, null}
!1026 = metadata !{i32 170, i32 3, metadata !538, null}
!1027 = metadata !{i32 786689, metadata !539, metadata !"fs", metadata !107, i32 16777468, metadata !110, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fs] [line 252]
!1028 = metadata !{i32 252, i32 35, metadata !539, null}
!1029 = metadata !{i32 786689, metadata !539, metadata !"list", metadata !107, i32 33554684, metadata !137, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [list] [line 252]
!1030 = metadata !{i32 252, i32 43, metadata !539, null}
!1031 = metadata !{i32 253, i32 3, metadata !539, null}
!1032 = metadata !{i32 254, i32 3, metadata !539, null}
!1033 = metadata !{i32 255, i32 1, metadata !539, null}
!1034 = metadata !{i32 786689, metadata !542, metadata !"fs", metadata !107, i32 16777479, metadata !110, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fs] [line 263]
!1035 = metadata !{i32 263, i32 33, metadata !542, null}
!1036 = metadata !{i32 786689, metadata !542, metadata !"list", metadata !107, i32 33554695, metadata !137, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [list] [line 263]
!1037 = metadata !{i32 263, i32 41, metadata !542, null}
!1038 = metadata !{i32 786689, metadata !542, metadata !"target", metadata !107, i32 50331911, metadata !137, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [target] [line 263]
!1039 = metadata !{i32 263, i32 51, metadata !542, null}
!1040 = metadata !{i32 264, i32 7, metadata !1041, null}
!1041 = metadata !{i32 786443, metadata !106, metadata !542, i32 264, i32 7, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!1042 = metadata !{i32 265, i32 5, metadata !1041, null}
!1043 = metadata !{i32 268, i32 5, metadata !1044, null}
!1044 = metadata !{i32 786443, metadata !106, metadata !1041, i32 266, i32 8, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!1045 = metadata !{i32 270, i32 1, metadata !542, null}
!1046 = metadata !{i32 786689, metadata !674, metadata !"fs", metadata !107, i32 16777440, metadata !110, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fs] [line 224]
!1047 = metadata !{i32 224, i32 38, metadata !674, null}
!1048 = metadata !{i32 786689, metadata !674, metadata !"list", metadata !107, i32 33554656, metadata !137, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [list] [line 224]
!1049 = metadata !{i32 224, i32 46, metadata !674, null}
!1050 = metadata !{i32 786689, metadata !674, metadata !"vtarget", metadata !107, i32 50331872, metadata !137, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vtarget] [line 224]
!1051 = metadata !{i32 224, i32 56, metadata !674, null}
!1052 = metadata !{i32 786689, metadata !674, metadata !"reg", metadata !107, i32 67109088, metadata !137, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [reg] [line 224]
!1053 = metadata !{i32 224, i32 69, metadata !674, null}
!1054 = metadata !{i32 786689, metadata !674, metadata !"dtarget", metadata !107, i32 83886305, metadata !137, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dtarget] [line 225]
!1055 = metadata !{i32 225, i32 31, metadata !674, null}
!1056 = metadata !{i32 226, i32 3, metadata !674, null}
!1057 = metadata !{i32 226, i32 3, metadata !1058, null}
!1058 = metadata !{i32 786443, metadata !106, metadata !674, i32 226, i32 3, i32 1, i32 164} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!1059 = metadata !{i32 786688, metadata !1060, metadata !"next", metadata !107, i32 227, metadata !137, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [next] [line 227]
!1060 = metadata !{i32 786443, metadata !106, metadata !674, i32 226, i32 27, i32 0, i32 151} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!1061 = metadata !{i32 227, i32 9, metadata !1060, null}
!1062 = metadata !{i32 227, i32 16, metadata !1060, null}
!1063 = metadata !{i32 228, i32 9, metadata !1064, null}
!1064 = metadata !{i32 786443, metadata !106, metadata !1060, i32 228, i32 9, i32 0, i32 152} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!1065 = metadata !{i32 229, i32 7, metadata !1064, null}
!1066 = metadata !{i32 231, i32 7, metadata !1064, null}
!1067 = metadata !{i32 232, i32 5, metadata !1060, null}
!1068 = metadata !{i32 233, i32 3, metadata !1060, null}
!1069 = metadata !{i32 234, i32 1, metadata !674, null}
!1070 = metadata !{i32 786689, metadata !543, metadata !"fs", metadata !107, i32 16777494, metadata !110, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fs] [line 278]
!1071 = metadata !{i32 278, i32 34, metadata !543, null}
!1072 = metadata !{i32 786689, metadata !543, metadata !"list", metadata !107, i32 33554710, metadata !137, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [list] [line 278]
!1073 = metadata !{i32 278, i32 42, metadata !543, null}
!1074 = metadata !{i32 786689, metadata !543, metadata !"level", metadata !107, i32 50331926, metadata !137, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [level] [line 278]
!1075 = metadata !{i32 278, i32 52, metadata !543, null}
!1076 = metadata !{i32 279, i32 3, metadata !543, null}
!1077 = metadata !{i32 280, i32 3, metadata !1078, null}
!1078 = metadata !{i32 786443, metadata !106, metadata !543, i32 280, i32 3, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!1079 = metadata !{i32 280, i32 3, metadata !1080, null}
!1080 = metadata !{i32 786443, metadata !106, metadata !1081, i32 280, i32 3, i32 2, i32 166} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!1081 = metadata !{i32 786443, metadata !106, metadata !1078, i32 280, i32 3, i32 1, i32 165} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!1082 = metadata !{i32 284, i32 5, metadata !1083, null}
!1083 = metadata !{i32 786443, metadata !106, metadata !1078, i32 280, i32 53, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!1084 = metadata !{i32 285, i32 3, metadata !1083, null}
!1085 = metadata !{i32 280, i32 34, metadata !1078, null}
!1086 = metadata !{i32 286, i32 1, metadata !543, null}
!1087 = metadata !{i32 786689, metadata !668, metadata !"fs", metadata !107, i32 16777509, metadata !110, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fs] [line 293]
!1088 = metadata !{i32 293, i32 34, metadata !668, null}
!1089 = metadata !{i32 786689, metadata !668, metadata !"i", metadata !107, i32 33554725, metadata !315, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [i] [line 293]
!1090 = metadata !{i32 293, i32 50, metadata !668, null}
!1091 = metadata !{i32 786688, metadata !668, metadata !"f", metadata !107, i32 294, metadata !115, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [f] [line 294]
!1092 = metadata !{i32 294, i32 10, metadata !668, null}
!1093 = metadata !{i32 294, i32 3, metadata !668, null}
!1094 = metadata !{i32 295, i32 3, metadata !668, null}
!1095 = metadata !{i32 297, i32 3, metadata !1096, null}
!1096 = metadata !{i32 786443, metadata !106, metadata !668, i32 297, i32 3, i32 0, i32 149} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!1097 = metadata !{i32 297, i32 3, metadata !1098, null}
!1098 = metadata !{i32 786443, metadata !106, metadata !1096, i32 297, i32 3, i32 1, i32 167} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!1099 = metadata !{i32 299, i32 3, metadata !668, null}
!1100 = metadata !{i32 301, i32 3, metadata !1101, null}
!1101 = metadata !{i32 786443, metadata !106, metadata !668, i32 301, i32 3, i32 0, i32 150} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!1102 = metadata !{i32 301, i32 3, metadata !1103, null}
!1103 = metadata !{i32 786443, metadata !106, metadata !1101, i32 301, i32 3, i32 1, i32 168} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!1104 = metadata !{i32 303, i32 3, metadata !668, null}
!1105 = metadata !{i32 304, i32 3, metadata !668, null}
!1106 = metadata !{i32 786689, metadata !551, metadata !"fs", metadata !107, i32 16777562, metadata !110, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fs] [line 346]
!1107 = metadata !{i32 346, i32 28, metadata !551, null}
!1108 = metadata !{i32 786689, metadata !551, metadata !"reg", metadata !107, i32 33554778, metadata !137, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [reg] [line 346]
!1109 = metadata !{i32 346, i32 36, metadata !551, null}
!1110 = metadata !{i32 786689, metadata !551, metadata !"k", metadata !107, i32 50331994, metadata !137, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [k] [line 346]
!1111 = metadata !{i32 346, i32 45, metadata !551, null}
!1112 = metadata !{i32 347, i32 7, metadata !1113, null}
!1113 = metadata !{i32 786443, metadata !106, metadata !551, i32 347, i32 7, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!1114 = metadata !{i32 348, i32 12, metadata !1113, null}
!1115 = metadata !{i32 786688, metadata !1116, metadata !"p", metadata !107, i32 350, metadata !137, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 350]
!1116 = metadata !{i32 786443, metadata !106, metadata !1113, i32 349, i32 8, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!1117 = metadata !{i32 350, i32 9, metadata !1116, null}
!1118 = metadata !{i32 350, i32 13, metadata !1116, null}
!1119 = metadata !{i32 351, i32 5, metadata !1116, null}
!1120 = metadata !{i32 352, i32 5, metadata !1116, null}
!1121 = metadata !{i32 354, i32 1, metadata !551, null}
!1122 = metadata !{i32 786689, metadata !667, metadata !"fs", metadata !107, i32 16777551, metadata !110, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fs] [line 335]
!1123 = metadata !{i32 335, i32 37, metadata !667, null}
!1124 = metadata !{i32 786689, metadata !667, metadata !"a", metadata !107, i32 33554767, metadata !137, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 335]
!1125 = metadata !{i32 335, i32 45, metadata !667, null}
!1126 = metadata !{i32 337, i32 10, metadata !667, null}
!1127 = metadata !{i32 786689, metadata !554, metadata !"fs", metadata !107, i32 16777577, metadata !110, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fs] [line 361]
!1128 = metadata !{i32 361, i32 34, metadata !554, null}
!1129 = metadata !{i32 786689, metadata !554, metadata !"n", metadata !107, i32 33554793, metadata !137, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 361]
!1130 = metadata !{i32 361, i32 42, metadata !554, null}
!1131 = metadata !{i32 786688, metadata !554, metadata !"newstack", metadata !107, i32 362, metadata !137, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [newstack] [line 362]
!1132 = metadata !{i32 362, i32 7, metadata !554, null}
!1133 = metadata !{i32 362, i32 3, metadata !554, null}
!1134 = metadata !{i32 363, i32 7, metadata !1135, null}
!1135 = metadata !{i32 786443, metadata !106, metadata !554, i32 363, i32 7, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!1136 = metadata !{i32 364, i32 9, metadata !1137, null}
!1137 = metadata !{i32 786443, metadata !106, metadata !1138, i32 364, i32 9, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!1138 = metadata !{i32 786443, metadata !106, metadata !1135, i32 363, i32 39, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!1139 = metadata !{i32 365, i32 7, metadata !1137, null}
!1140 = metadata !{i32 367, i32 5, metadata !1138, null}
!1141 = metadata !{i32 368, i32 3, metadata !1138, null}
!1142 = metadata !{i32 369, i32 1, metadata !554, null}
!1143 = metadata !{i32 786689, metadata !555, metadata !"fs", metadata !107, i32 16777591, metadata !110, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fs] [line 375]
!1144 = metadata !{i32 375, i32 35, metadata !555, null}
!1145 = metadata !{i32 786689, metadata !555, metadata !"n", metadata !107, i32 33554807, metadata !137, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 375]
!1146 = metadata !{i32 375, i32 43, metadata !555, null}
!1147 = metadata !{i32 376, i32 3, metadata !555, null}
!1148 = metadata !{i32 377, i32 3, metadata !555, null}
!1149 = metadata !{i32 378, i32 1, metadata !555, null}
!1150 = metadata !{i32 786689, metadata !556, metadata !"fs", metadata !107, i32 16777674, metadata !110, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fs] [line 458]
!1151 = metadata !{i32 458, i32 30, metadata !556, null}
!1152 = metadata !{i32 786689, metadata !556, metadata !"s", metadata !107, i32 33554890, metadata !204, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 458]
!1153 = metadata !{i32 458, i32 43, metadata !556, null}
!1154 = metadata !{i32 786688, metadata !556, metadata !"o", metadata !107, i32 459, metadata !147, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [o] [line 459]
!1155 = metadata !{i32 459, i32 10, metadata !556, null}
!1156 = metadata !{i32 786688, metadata !1157, metadata !"io", metadata !107, i32 460, metadata !146, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [io] [line 460]
!1157 = metadata !{i32 786443, metadata !106, metadata !556, i32 460, i32 3, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!1158 = metadata !{i32 460, i32 3, metadata !1157, null}
!1159 = metadata !{i32 786688, metadata !1157, metadata !"x_", metadata !107, i32 460, metadata !204, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x_] [line 460]
!1160 = metadata !{i32 461, i32 10, metadata !556, null}
!1161 = metadata !{i32 786689, metadata !664, metadata !"fs", metadata !107, i32 16777644, metadata !110, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fs] [line 428]
!1162 = metadata !{i32 428, i32 29, metadata !664, null}
!1163 = metadata !{i32 786689, metadata !664, metadata !"key", metadata !107, i32 33554860, metadata !146, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [key] [line 428]
!1164 = metadata !{i32 428, i32 41, metadata !664, null}
!1165 = metadata !{i32 786689, metadata !664, metadata !"v", metadata !107, i32 50332076, metadata !146, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [v] [line 428]
!1166 = metadata !{i32 428, i32 54, metadata !664, null}
!1167 = metadata !{i32 786688, metadata !664, metadata !"L", metadata !107, i32 429, metadata !164, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [L] [line 429]
!1168 = metadata !{i32 429, i32 14, metadata !664, null}
!1169 = metadata !{i32 429, i32 3, metadata !664, null}
!1170 = metadata !{i32 786688, metadata !664, metadata !"f", metadata !107, i32 430, metadata !115, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [f] [line 430]
!1171 = metadata !{i32 430, i32 10, metadata !664, null}
!1172 = metadata !{i32 430, i32 3, metadata !664, null}
!1173 = metadata !{i32 786688, metadata !664, metadata !"idx", metadata !107, i32 431, metadata !146, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [idx] [line 431]
!1174 = metadata !{i32 431, i32 11, metadata !664, null}
!1175 = metadata !{i32 431, i32 17, metadata !664, null}
!1176 = metadata !{i32 786688, metadata !664, metadata !"k", metadata !107, i32 432, metadata !137, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 432]
!1177 = metadata !{i32 432, i32 7, metadata !664, null}
!1178 = metadata !{i32 786688, metadata !664, metadata !"oldsize", metadata !107, i32 432, metadata !137, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [oldsize] [line 432]
!1179 = metadata !{i32 432, i32 10, metadata !664, null}
!1180 = metadata !{i32 433, i32 7, metadata !1181, null}
!1181 = metadata !{i32 786443, metadata !106, metadata !664, i32 433, i32 7, i32 0, i32 143} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!1182 = metadata !{i32 434, i32 5, metadata !1183, null}
!1183 = metadata !{i32 786443, metadata !106, metadata !1181, i32 433, i32 25, i32 0, i32 144} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!1184 = metadata !{i32 436, i32 9, metadata !1185, null}
!1185 = metadata !{i32 786443, metadata !106, metadata !1183, i32 436, i32 9, i32 0, i32 145} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!1186 = metadata !{i32 436, i32 9, metadata !1187, null}
!1187 = metadata !{i32 786443, metadata !106, metadata !1185, i32 436, i32 9, i32 1, i32 169} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!1188 = metadata !{i32 437, i32 23, metadata !1185, null}
!1189 = metadata !{i32 438, i32 7, metadata !1185, null}
!1190 = metadata !{i32 439, i32 3, metadata !1183, null}
!1191 = metadata !{i32 441, i32 3, metadata !664, null}
!1192 = metadata !{i32 442, i32 3, metadata !664, null}
!1193 = metadata !{i32 786688, metadata !1194, metadata !"io", metadata !107, i32 445, metadata !146, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [io] [line 445]
!1194 = metadata !{i32 786443, metadata !106, metadata !664, i32 445, i32 3, i32 0, i32 146} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!1195 = metadata !{i32 445, i32 3, metadata !1194, null}
!1196 = metadata !{i32 446, i32 3, metadata !1197, null}
!1197 = metadata !{i32 786443, metadata !106, metadata !664, i32 446, i32 3, i32 0, i32 147} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!1198 = metadata !{i32 446, i32 3, metadata !1199, null}
!1199 = metadata !{i32 786443, metadata !106, metadata !1197, i32 446, i32 3, i32 1, i32 170} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!1200 = metadata !{i32 447, i32 3, metadata !664, null}
!1201 = metadata !{i32 447, i32 3, metadata !1202, null}
!1202 = metadata !{i32 786443, metadata !106, metadata !1203, i32 447, i32 3, i32 3, i32 173} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!1203 = metadata !{i32 786443, metadata !106, metadata !664, i32 447, i32 3, i32 1, i32 171} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!1204 = metadata !{i32 447, i32 30, metadata !1205, null}
!1205 = metadata !{i32 786443, metadata !106, metadata !664, i32 447, i32 30, i32 2, i32 172} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!1206 = metadata !{i32 786688, metadata !1207, metadata !"io1", metadata !107, i32 448, metadata !146, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [io1] [line 448]
!1207 = metadata !{i32 786443, metadata !106, metadata !664, i32 448, i32 3, i32 0, i32 148} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!1208 = metadata !{i32 448, i32 3, metadata !1207, null}
!1209 = metadata !{i32 449, i32 3, metadata !664, null}
!1210 = metadata !{i32 450, i32 3, metadata !664, null}
!1211 = metadata !{i32 450, i32 3, metadata !1212, null}
!1212 = metadata !{i32 786443, metadata !106, metadata !664, i32 450, i32 3, i32 1, i32 174} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!1213 = metadata !{i32 450, i32 3, metadata !1214, null}
!1214 = metadata !{i32 786443, metadata !106, metadata !664, i32 450, i32 3, i32 3, i32 176} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!1215 = metadata !{i32 450, i32 3, metadata !1216, null}
!1216 = metadata !{i32 786443, metadata !106, metadata !664, i32 450, i32 3, i32 5, i32 178} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!1217 = metadata !{i32 450, i32 3, metadata !1218, null}
!1218 = metadata !{i32 786443, metadata !106, metadata !1219, i32 450, i32 3, i32 6, i32 179} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!1219 = metadata !{i32 786443, metadata !106, metadata !1220, i32 450, i32 3, i32 4, i32 177} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!1220 = metadata !{i32 786443, metadata !106, metadata !664, i32 450, i32 3, i32 2, i32 175} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!1221 = metadata !{i32 451, i32 3, metadata !664, null}
!1222 = metadata !{i32 452, i32 1, metadata !664, null}
!1223 = metadata !{i32 786689, metadata !559, metadata !"fs", metadata !107, i32 16777687, metadata !110, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fs] [line 471]
!1224 = metadata !{i32 471, i32 27, metadata !559, null}
!1225 = metadata !{i32 786689, metadata !559, metadata !"n", metadata !107, i32 33554903, metadata !389, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 471]
!1226 = metadata !{i32 471, i32 43, metadata !559, null}
!1227 = metadata !{i32 786688, metadata !559, metadata !"k", metadata !107, i32 472, metadata !147, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 472]
!1228 = metadata !{i32 472, i32 10, metadata !559, null}
!1229 = metadata !{i32 786688, metadata !559, metadata !"o", metadata !107, i32 472, metadata !147, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [o] [line 472]
!1230 = metadata !{i32 472, i32 13, metadata !559, null}
!1231 = metadata !{i32 786688, metadata !1232, metadata !"io", metadata !107, i32 473, metadata !146, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [io] [line 473]
!1232 = metadata !{i32 786443, metadata !106, metadata !559, i32 473, i32 3, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!1233 = metadata !{i32 473, i32 3, metadata !1232, null}
!1234 = metadata !{i32 786688, metadata !1235, metadata !"io", metadata !107, i32 474, metadata !146, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [io] [line 474]
!1235 = metadata !{i32 786443, metadata !106, metadata !559, i32 474, i32 3, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!1236 = metadata !{i32 474, i32 3, metadata !1235, null}
!1237 = metadata !{i32 475, i32 10, metadata !559, null}
!1238 = metadata !{i32 786689, metadata !562, metadata !"fs", metadata !107, i32 16777731, metadata !110, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fs] [line 515]
!1239 = metadata !{i32 515, i32 34, metadata !562, null}
!1240 = metadata !{i32 786689, metadata !562, metadata !"e", metadata !107, i32 33554947, metadata !565, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [e] [line 515]
!1241 = metadata !{i32 515, i32 47, metadata !562, null}
!1242 = metadata !{i32 786689, metadata !562, metadata !"nresults", metadata !107, i32 50332163, metadata !137, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nresults] [line 515]
!1243 = metadata !{i32 515, i32 54, metadata !562, null}
!1244 = metadata !{i32 516, i32 7, metadata !1245, null}
!1245 = metadata !{i32 786443, metadata !106, metadata !562, i32 516, i32 7, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!1246 = metadata !{i32 517, i32 5, metadata !1247, null}
!1247 = metadata !{i32 786443, metadata !106, metadata !1245, i32 516, i32 22, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!1248 = metadata !{i32 518, i32 3, metadata !1247, null}
!1249 = metadata !{i32 519, i32 12, metadata !1250, null}
!1250 = metadata !{i32 786443, metadata !106, metadata !1245, i32 519, i32 12, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!1251 = metadata !{i32 786688, metadata !1252, metadata !"pc", metadata !107, i32 520, metadata !394, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pc] [line 520]
!1252 = metadata !{i32 786443, metadata !106, metadata !1250, i32 519, i32 29, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!1253 = metadata !{i32 520, i32 18, metadata !1252, null}
!1254 = metadata !{i32 520, i32 5, metadata !1252, null}
!1255 = metadata !{i32 521, i32 5, metadata !1252, null}
!1256 = metadata !{i32 522, i32 5, metadata !1252, null}
!1257 = metadata !{i32 523, i32 5, metadata !1252, null}
!1258 = metadata !{i32 524, i32 3, metadata !1252, null}
!1259 = metadata !{i32 526, i32 1, metadata !562, null}
!1260 = metadata !{i32 786689, metadata !585, metadata !"fs", metadata !107, i32 16777755, metadata !110, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fs] [line 539]
!1261 = metadata !{i32 539, i32 33, metadata !585, null}
!1262 = metadata !{i32 786689, metadata !585, metadata !"e", metadata !107, i32 33554971, metadata !565, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [e] [line 539]
!1263 = metadata !{i32 539, i32 46, metadata !585, null}
!1264 = metadata !{i32 540, i32 7, metadata !1265, null}
!1265 = metadata !{i32 786443, metadata !106, metadata !585, i32 540, i32 7, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!1266 = metadata !{i32 543, i32 5, metadata !1267, null}
!1267 = metadata !{i32 786443, metadata !106, metadata !1265, i32 540, i32 22, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!1268 = metadata !{i32 544, i32 5, metadata !1267, null}
!1269 = metadata !{i32 545, i32 3, metadata !1267, null}
!1270 = metadata !{i32 546, i32 12, metadata !1271, null}
!1271 = metadata !{i32 786443, metadata !106, metadata !1265, i32 546, i32 12, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!1272 = metadata !{i32 547, i32 5, metadata !1273, null}
!1273 = metadata !{i32 786443, metadata !106, metadata !1271, i32 546, i32 29, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!1274 = metadata !{i32 548, i32 5, metadata !1273, null}
!1275 = metadata !{i32 549, i32 3, metadata !1273, null}
!1276 = metadata !{i32 550, i32 1, metadata !585, null}
!1277 = metadata !{i32 786689, metadata !588, metadata !"fs", metadata !107, i32 16777772, metadata !110, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fs] [line 556]
!1278 = metadata !{i32 556, i32 37, metadata !588, null}
!1279 = metadata !{i32 786689, metadata !588, metadata !"e", metadata !107, i32 33554988, metadata !565, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [e] [line 556]
!1280 = metadata !{i32 556, i32 50, metadata !588, null}
!1281 = metadata !{i32 557, i32 3, metadata !588, null}
!1282 = metadata !{i32 559, i32 7, metadata !1283, null}
!1283 = metadata !{i32 786443, metadata !106, metadata !1284, i32 558, i32 18, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!1284 = metadata !{i32 786443, metadata !106, metadata !588, i32 557, i32 17, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!1285 = metadata !{i32 560, i32 7, metadata !1283, null}
!1286 = metadata !{i32 563, i32 19, metadata !1287, null}
!1287 = metadata !{i32 786443, metadata !106, metadata !1284, i32 562, i32 18, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!1288 = metadata !{i32 564, i32 7, metadata !1287, null}
!1289 = metadata !{i32 565, i32 7, metadata !1287, null}
!1290 = metadata !{i32 786688, metadata !1291, metadata !"op", metadata !107, i32 568, metadata !547, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [op] [line 568]
!1291 = metadata !{i32 786443, metadata !106, metadata !1284, i32 567, i32 20, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!1292 = metadata !{i32 568, i32 14, metadata !1291, null}
!1293 = metadata !{i32 569, i32 7, metadata !1291, null}
!1294 = metadata !{i32 570, i32 11, metadata !1295, null}
!1295 = metadata !{i32 786443, metadata !106, metadata !1291, i32 570, i32 11, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!1296 = metadata !{i32 571, i32 9, metadata !1297, null}
!1297 = metadata !{i32 786443, metadata !106, metadata !1295, i32 570, i32 34, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!1298 = metadata !{i32 572, i32 9, metadata !1297, null}
!1299 = metadata !{i32 573, i32 7, metadata !1297, null}
!1300 = metadata !{i32 576, i32 9, metadata !1301, null}
!1301 = metadata !{i32 786443, metadata !106, metadata !1295, i32 574, i32 12, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!1302 = metadata !{i32 578, i32 19, metadata !1291, null}
!1303 = metadata !{i32 579, i32 7, metadata !1291, null}
!1304 = metadata !{i32 580, i32 7, metadata !1291, null}
!1305 = metadata !{i32 583, i32 7, metadata !1306, null}
!1306 = metadata !{i32 786443, metadata !106, metadata !1284, i32 582, i32 31, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!1307 = metadata !{i32 584, i32 7, metadata !1306, null}
!1308 = metadata !{i32 586, i32 14, metadata !1284, null}
!1309 = metadata !{i32 588, i32 1, metadata !588, null}
!1310 = metadata !{i32 786689, metadata !663, metadata !"fs", metadata !107, i32 16777602, metadata !110, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fs] [line 386]
!1311 = metadata !{i32 386, i32 33, metadata !663, null}
!1312 = metadata !{i32 786689, metadata !663, metadata !"reg", metadata !107, i32 33554818, metadata !137, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [reg] [line 386]
!1313 = metadata !{i32 386, i32 41, metadata !663, null}
!1314 = metadata !{i32 387, i32 7, metadata !1315, null}
!1315 = metadata !{i32 786443, metadata !106, metadata !663, i32 387, i32 7, i32 0, i32 141} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!1316 = metadata !{i32 387, i32 7, metadata !1317, null}
!1317 = metadata !{i32 786443, metadata !106, metadata !1315, i32 387, i32 7, i32 1, i32 180} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!1318 = metadata !{i32 388, i32 5, metadata !1319, null}
!1319 = metadata !{i32 786443, metadata !106, metadata !1315, i32 387, i32 40, i32 0, i32 142} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!1320 = metadata !{i32 390, i32 3, metadata !1319, null}
!1321 = metadata !{i32 391, i32 1, metadata !663, null}
!1322 = metadata !{i32 786689, metadata !589, metadata !"fs", metadata !107, i32 16777919, metadata !110, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fs] [line 703]
!1323 = metadata !{i32 703, i32 35, metadata !589, null}
!1324 = metadata !{i32 786689, metadata !589, metadata !"e", metadata !107, i32 33555135, metadata !565, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [e] [line 703]
!1325 = metadata !{i32 703, i32 48, metadata !589, null}
!1326 = metadata !{i32 704, i32 3, metadata !589, null}
!1327 = metadata !{i32 705, i32 3, metadata !589, null}
!1328 = metadata !{i32 706, i32 3, metadata !589, null}
!1329 = metadata !{i32 707, i32 3, metadata !589, null}
!1330 = metadata !{i32 708, i32 1, metadata !589, null}
!1331 = metadata !{i32 786689, metadata !662, metadata !"fs", metadata !107, i32 16777613, metadata !110, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fs] [line 397]
!1332 = metadata !{i32 397, i32 33, metadata !662, null}
!1333 = metadata !{i32 786689, metadata !662, metadata !"e", metadata !107, i32 33554829, metadata !565, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [e] [line 397]
!1334 = metadata !{i32 397, i32 46, metadata !662, null}
!1335 = metadata !{i32 398, i32 7, metadata !1336, null}
!1336 = metadata !{i32 786443, metadata !106, metadata !662, i32 398, i32 7, i32 0, i32 140} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!1337 = metadata !{i32 399, i32 5, metadata !1336, null}
!1338 = metadata !{i32 400, i32 1, metadata !662, null}
!1339 = metadata !{i32 786689, metadata !657, metadata !"fs", metadata !107, i32 16777891, metadata !110, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fs] [line 675]
!1340 = metadata !{i32 675, i32 33, metadata !657, null}
!1341 = metadata !{i32 786689, metadata !657, metadata !"e", metadata !107, i32 33555107, metadata !565, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [e] [line 675]
!1342 = metadata !{i32 675, i32 46, metadata !657, null}
!1343 = metadata !{i32 786689, metadata !657, metadata !"reg", metadata !107, i32 50332323, metadata !137, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [reg] [line 675]
!1344 = metadata !{i32 675, i32 53, metadata !657, null}
!1345 = metadata !{i32 676, i32 3, metadata !657, null}
!1346 = metadata !{i32 677, i32 7, metadata !1347, null}
!1347 = metadata !{i32 786443, metadata !106, metadata !657, i32 677, i32 7, i32 0, i32 132} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!1348 = metadata !{i32 678, i32 5, metadata !1347, null}
!1349 = metadata !{i32 679, i32 7, metadata !1350, null}
!1350 = metadata !{i32 786443, metadata !106, metadata !657, i32 679, i32 7, i32 0, i32 133} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!1351 = metadata !{i32 786688, metadata !1352, metadata !"final", metadata !107, i32 680, metadata !137, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [final] [line 680]
!1352 = metadata !{i32 786443, metadata !106, metadata !1350, i32 679, i32 20, i32 0, i32 134} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!1353 = metadata !{i32 680, i32 9, metadata !1352, null}
!1354 = metadata !{i32 786688, metadata !1352, metadata !"p_f", metadata !107, i32 681, metadata !137, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p_f] [line 681]
!1355 = metadata !{i32 681, i32 9, metadata !1352, null}
!1356 = metadata !{i32 681, i32 5, metadata !1352, null}
!1357 = metadata !{i32 786688, metadata !1352, metadata !"p_t", metadata !107, i32 682, metadata !137, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p_t] [line 682]
!1358 = metadata !{i32 682, i32 9, metadata !1352, null}
!1359 = metadata !{i32 682, i32 5, metadata !1352, null}
!1360 = metadata !{i32 683, i32 9, metadata !1361, null}
!1361 = metadata !{i32 786443, metadata !106, metadata !1352, i32 683, i32 9, i32 0, i32 135} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!1362 = metadata !{i32 683, i32 33, metadata !1363, null}
!1363 = metadata !{i32 786443, metadata !106, metadata !1361, i32 683, i32 33, i32 1, i32 181} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!1364 = metadata !{i32 786688, metadata !1365, metadata !"fj", metadata !107, i32 684, metadata !137, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fj] [line 684]
!1365 = metadata !{i32 786443, metadata !106, metadata !1361, i32 683, i32 55, i32 0, i32 136} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!1366 = metadata !{i32 684, i32 11, metadata !1365, null}
!1367 = metadata !{i32 684, i32 7, metadata !1365, null}
!1368 = metadata !{i32 684, i32 7, metadata !1369, null}
!1369 = metadata !{i32 786443, metadata !106, metadata !1365, i32 684, i32 7, i32 1, i32 182} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!1370 = metadata !{i32 684, i32 43, metadata !1371, null}
!1371 = metadata !{i32 786443, metadata !106, metadata !1365, i32 684, i32 43, i32 2, i32 183} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!1372 = metadata !{i32 684, i32 43, metadata !1365, null}
!1373 = metadata !{i32 684, i32 43, metadata !1374, null}
!1374 = metadata !{i32 786443, metadata !106, metadata !1375, i32 684, i32 43, i32 4, i32 185} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!1375 = metadata !{i32 786443, metadata !106, metadata !1365, i32 684, i32 43, i32 3, i32 184} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!1376 = metadata !{i32 685, i32 13, metadata !1365, null}
!1377 = metadata !{i32 686, i32 13, metadata !1365, null}
!1378 = metadata !{i32 687, i32 7, metadata !1365, null}
!1379 = metadata !{i32 688, i32 5, metadata !1365, null}
!1380 = metadata !{i32 689, i32 13, metadata !1352, null}
!1381 = metadata !{i32 690, i32 5, metadata !1352, null}
!1382 = metadata !{i32 691, i32 5, metadata !1352, null}
!1383 = metadata !{i32 692, i32 3, metadata !1352, null}
!1384 = metadata !{i32 693, i32 3, metadata !657, null}
!1385 = metadata !{i32 694, i32 3, metadata !657, null}
!1386 = metadata !{i32 695, i32 3, metadata !657, null}
!1387 = metadata !{i32 696, i32 1, metadata !657, null}
!1388 = metadata !{i32 786689, metadata !590, metadata !"fs", metadata !107, i32 16777931, metadata !110, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fs] [line 715]
!1389 = metadata !{i32 715, i32 33, metadata !590, null}
!1390 = metadata !{i32 786689, metadata !590, metadata !"e", metadata !107, i32 33555147, metadata !565, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [e] [line 715]
!1391 = metadata !{i32 715, i32 46, metadata !590, null}
!1392 = metadata !{i32 716, i32 3, metadata !590, null}
!1393 = metadata !{i32 717, i32 7, metadata !1394, null}
!1394 = metadata !{i32 786443, metadata !106, metadata !590, i32 717, i32 7, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!1395 = metadata !{i32 718, i32 9, metadata !1396, null}
!1396 = metadata !{i32 786443, metadata !106, metadata !1397, i32 718, i32 9, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!1397 = metadata !{i32 786443, metadata !106, metadata !1394, i32 717, i32 26, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!1398 = metadata !{i32 719, i32 7, metadata !1396, null}
!1399 = metadata !{i32 720, i32 9, metadata !1400, null}
!1400 = metadata !{i32 786443, metadata !106, metadata !1397, i32 720, i32 9, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!1401 = metadata !{i32 721, i32 7, metadata !1402, null}
!1402 = metadata !{i32 786443, metadata !106, metadata !1400, i32 720, i32 35, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!1403 = metadata !{i32 722, i32 7, metadata !1402, null}
!1404 = metadata !{i32 724, i32 3, metadata !1397, null}
!1405 = metadata !{i32 725, i32 3, metadata !590, null}
!1406 = metadata !{i32 726, i32 3, metadata !590, null}
!1407 = metadata !{i32 727, i32 1, metadata !590, null}
!1408 = metadata !{i32 786689, metadata !593, metadata !"fs", metadata !107, i32 16777950, metadata !110, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fs] [line 734]
!1409 = metadata !{i32 734, i32 36, metadata !593, null}
!1410 = metadata !{i32 786689, metadata !593, metadata !"e", metadata !107, i32 33555166, metadata !565, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [e] [line 734]
!1411 = metadata !{i32 734, i32 49, metadata !593, null}
!1412 = metadata !{i32 735, i32 7, metadata !1413, null}
!1413 = metadata !{i32 786443, metadata !106, metadata !593, i32 735, i32 7, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!1414 = metadata !{i32 735, i32 7, metadata !1415, null}
!1415 = metadata !{i32 786443, metadata !106, metadata !1413, i32 735, i32 7, i32 1, i32 186} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!1416 = metadata !{i32 736, i32 5, metadata !1413, null}
!1417 = metadata !{i32 737, i32 1, metadata !593, null}
!1418 = metadata !{i32 786689, metadata !594, metadata !"fs", metadata !107, i32 16777960, metadata !110, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fs] [line 744]
!1419 = metadata !{i32 744, i32 31, metadata !594, null}
!1420 = metadata !{i32 786689, metadata !594, metadata !"e", metadata !107, i32 33555176, metadata !565, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [e] [line 744]
!1421 = metadata !{i32 744, i32 44, metadata !594, null}
!1422 = metadata !{i32 745, i32 7, metadata !1423, null}
!1423 = metadata !{i32 786443, metadata !106, metadata !594, i32 745, i32 7, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!1424 = metadata !{i32 746, i32 5, metadata !1423, null}
!1425 = metadata !{i32 748, i32 5, metadata !1423, null}
!1426 = metadata !{i32 749, i32 1, metadata !594, null}
!1427 = metadata !{i32 786689, metadata !595, metadata !"fs", metadata !107, i32 16777974, metadata !110, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fs] [line 758]
!1428 = metadata !{i32 758, i32 29, metadata !595, null}
!1429 = metadata !{i32 786689, metadata !595, metadata !"e", metadata !107, i32 33555190, metadata !565, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [e] [line 758]
!1430 = metadata !{i32 758, i32 42, metadata !595, null}
!1431 = metadata !{i32 759, i32 3, metadata !595, null}
!1432 = metadata !{i32 760, i32 3, metadata !595, null}
!1433 = metadata !{i32 761, i32 29, metadata !1434, null}
!1434 = metadata !{i32 786443, metadata !106, metadata !595, i32 760, i32 17, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!1435 = metadata !{i32 761, i32 43, metadata !1434, null}
!1436 = metadata !{i32 762, i32 30, metadata !1434, null}
!1437 = metadata !{i32 762, i32 44, metadata !1434, null}
!1438 = metadata !{i32 763, i32 28, metadata !1434, null}
!1439 = metadata !{i32 763, i32 38, metadata !1434, null}
!1440 = metadata !{i32 764, i32 29, metadata !1434, null}
!1441 = metadata !{i32 764, i32 55, metadata !1434, null}
!1442 = metadata !{i32 765, i32 29, metadata !1434, null}
!1443 = metadata !{i32 765, i32 58, metadata !1434, null}
!1444 = metadata !{i32 768, i32 7, metadata !1434, null}
!1445 = metadata !{i32 769, i32 11, metadata !1446, null}
!1446 = metadata !{i32 786443, metadata !106, metadata !1434, i32 769, i32 11, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!1447 = metadata !{i32 770, i32 9, metadata !1446, null}
!1448 = metadata !{i32 771, i32 12, metadata !1446, null}
!1449 = metadata !{i32 772, i32 14, metadata !1434, null}
!1450 = metadata !{i32 775, i32 10, metadata !595, null}
!1451 = metadata !{i32 776, i32 1, metadata !595, null}
!1452 = metadata !{i32 786689, metadata !654, metadata !"fs", metadata !107, i32 16777707, metadata !110, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fs] [line 491]
!1453 = metadata !{i32 491, i32 30, metadata !654, null}
!1454 = metadata !{i32 786689, metadata !654, metadata !"b", metadata !107, i32 33554923, metadata !137, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b] [line 491]
!1455 = metadata !{i32 491, i32 38, metadata !654, null}
!1456 = metadata !{i32 786688, metadata !654, metadata !"o", metadata !107, i32 492, metadata !147, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [o] [line 492]
!1457 = metadata !{i32 492, i32 10, metadata !654, null}
!1458 = metadata !{i32 786688, metadata !1459, metadata !"io", metadata !107, i32 493, metadata !146, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [io] [line 493]
!1459 = metadata !{i32 786443, metadata !106, metadata !654, i32 493, i32 3, i32 0, i32 131} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!1460 = metadata !{i32 493, i32 3, metadata !1459, null}
!1461 = metadata !{i32 494, i32 10, metadata !654, null}
!1462 = metadata !{i32 786689, metadata !653, metadata !"fs", metadata !107, i32 16777717, metadata !110, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fs] [line 501]
!1463 = metadata !{i32 501, i32 29, metadata !653, null}
!1464 = metadata !{i32 786688, metadata !653, metadata !"k", metadata !107, i32 502, metadata !147, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 502]
!1465 = metadata !{i32 502, i32 10, metadata !653, null}
!1466 = metadata !{i32 786688, metadata !653, metadata !"v", metadata !107, i32 502, metadata !147, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [v] [line 502]
!1467 = metadata !{i32 502, i32 13, metadata !653, null}
!1468 = metadata !{i32 503, i32 3, metadata !653, null}
!1469 = metadata !{i32 786688, metadata !1470, metadata !"io", metadata !107, i32 505, metadata !146, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [io] [line 505]
!1470 = metadata !{i32 786443, metadata !106, metadata !653, i32 505, i32 3, i32 0, i32 130} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!1471 = metadata !{i32 505, i32 3, metadata !1470, null}
!1472 = metadata !{i32 786688, metadata !1470, metadata !"x_", metadata !107, i32 505, metadata !483, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x_] [line 505]
!1473 = metadata !{i32 506, i32 10, metadata !653, null}
!1474 = metadata !{i32 786689, metadata !650, metadata !"fs", metadata !107, i32 16777697, metadata !110, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fs] [line 481]
!1475 = metadata !{i32 481, i32 37, metadata !650, null}
!1476 = metadata !{i32 786689, metadata !650, metadata !"r", metadata !107, i32 33554913, metadata !249, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [r] [line 481]
!1477 = metadata !{i32 481, i32 52, metadata !650, null}
!1478 = metadata !{i32 786688, metadata !650, metadata !"o", metadata !107, i32 482, metadata !147, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [o] [line 482]
!1479 = metadata !{i32 482, i32 10, metadata !650, null}
!1480 = metadata !{i32 786688, metadata !1481, metadata !"io", metadata !107, i32 483, metadata !146, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [io] [line 483]
!1481 = metadata !{i32 786443, metadata !106, metadata !650, i32 483, i32 3, i32 0, i32 129} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!1482 = metadata !{i32 483, i32 3, metadata !1481, null}
!1483 = metadata !{i32 484, i32 10, metadata !650, null}
!1484 = metadata !{i32 786689, metadata !596, metadata !"fs", metadata !107, i32 16777998, metadata !110, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fs] [line 782]
!1485 = metadata !{i32 782, i32 32, metadata !596, null}
!1486 = metadata !{i32 786689, metadata !596, metadata !"var", metadata !107, i32 33555214, metadata !565, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [var] [line 782]
!1487 = metadata !{i32 782, i32 45, metadata !596, null}
!1488 = metadata !{i32 786689, metadata !596, metadata !"ex", metadata !107, i32 50332430, metadata !565, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ex] [line 782]
!1489 = metadata !{i32 782, i32 59, metadata !596, null}
!1490 = metadata !{i32 783, i32 3, metadata !596, null}
!1491 = metadata !{i32 785, i32 7, metadata !1492, null}
!1492 = metadata !{i32 786443, metadata !106, metadata !1493, i32 784, i32 18, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!1493 = metadata !{i32 786443, metadata !106, metadata !596, i32 783, i32 19, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!1494 = metadata !{i32 786, i32 7, metadata !1492, null}
!1495 = metadata !{i32 787, i32 7, metadata !1492, null}
!1496 = metadata !{i32 786688, metadata !1497, metadata !"e", metadata !107, i32 790, metadata !137, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [e] [line 790]
!1497 = metadata !{i32 786443, metadata !106, metadata !1493, i32 789, i32 18, i32 0, i32 50} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!1498 = metadata !{i32 790, i32 11, metadata !1497, null}
!1499 = metadata !{i32 790, i32 15, metadata !1497, null}
!1500 = metadata !{i32 791, i32 7, metadata !1497, null}
!1501 = metadata !{i32 792, i32 7, metadata !1497, null}
!1502 = metadata !{i32 786688, metadata !1503, metadata !"op", metadata !107, i32 795, metadata !547, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [op] [line 795]
!1503 = metadata !{i32 786443, metadata !106, metadata !1493, i32 794, i32 20, i32 0, i32 51} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!1504 = metadata !{i32 795, i32 14, metadata !1503, null}
!1505 = metadata !{i32 795, i32 7, metadata !1503, null}
!1506 = metadata !{i32 786688, metadata !1503, metadata !"e", metadata !107, i32 796, metadata !137, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [e] [line 796]
!1507 = metadata !{i32 796, i32 11, metadata !1503, null}
!1508 = metadata !{i32 796, i32 15, metadata !1503, null}
!1509 = metadata !{i32 797, i32 7, metadata !1503, null}
!1510 = metadata !{i32 798, i32 7, metadata !1503, null}
!1511 = metadata !{i32 801, i32 3, metadata !1493, null}
!1512 = metadata !{i32 802, i32 3, metadata !596, null}
!1513 = metadata !{i32 803, i32 1, metadata !596, null}
!1514 = metadata !{i32 803, i32 1, metadata !1515, null}
!1515 = metadata !{i32 786443, metadata !106, metadata !596, i32 803, i32 1, i32 1, i32 187} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!1516 = metadata !{i32 786689, metadata !599, metadata !"fs", metadata !107, i32 16778025, metadata !110, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fs] [line 809]
!1517 = metadata !{i32 809, i32 28, metadata !599, null}
!1518 = metadata !{i32 786689, metadata !599, metadata !"e", metadata !107, i32 33555241, metadata !565, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [e] [line 809]
!1519 = metadata !{i32 809, i32 41, metadata !599, null}
!1520 = metadata !{i32 786689, metadata !599, metadata !"key", metadata !107, i32 50332457, metadata !565, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [key] [line 809]
!1521 = metadata !{i32 809, i32 53, metadata !599, null}
!1522 = metadata !{i32 786688, metadata !599, metadata !"ereg", metadata !107, i32 810, metadata !137, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ereg] [line 810]
!1523 = metadata !{i32 810, i32 7, metadata !599, null}
!1524 = metadata !{i32 811, i32 3, metadata !599, null}
!1525 = metadata !{i32 812, i32 3, metadata !599, null}
!1526 = metadata !{i32 813, i32 3, metadata !599, null}
!1527 = metadata !{i32 814, i32 3, metadata !599, null}
!1528 = metadata !{i32 815, i32 3, metadata !599, null}
!1529 = metadata !{i32 816, i32 3, metadata !599, null}
!1530 = metadata !{i32 817, i32 3, metadata !599, null}
!1531 = metadata !{i32 817, i32 46, metadata !599, null}
!1532 = metadata !{i32 818, i32 3, metadata !599, null}
!1533 = metadata !{i32 819, i32 1, metadata !599, null}
!1534 = metadata !{i32 786689, metadata !600, metadata !"fs", metadata !107, i32 16778073, metadata !110, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fs] [line 857]
!1535 = metadata !{i32 857, i32 32, metadata !600, null}
!1536 = metadata !{i32 786689, metadata !600, metadata !"e", metadata !107, i32 33555289, metadata !565, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [e] [line 857]
!1537 = metadata !{i32 857, i32 45, metadata !600, null}
!1538 = metadata !{i32 786688, metadata !600, metadata !"pc", metadata !107, i32 858, metadata !137, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pc] [line 858]
!1539 = metadata !{i32 858, i32 7, metadata !600, null}
!1540 = metadata !{i32 859, i32 3, metadata !600, null}
!1541 = metadata !{i32 860, i32 3, metadata !600, null}
!1542 = metadata !{i32 862, i32 7, metadata !1543, null}
!1543 = metadata !{i32 786443, metadata !106, metadata !1544, i32 861, i32 16, i32 0, i32 53} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!1544 = metadata !{i32 786443, metadata !106, metadata !600, i32 860, i32 17, i32 0, i32 52} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!1545 = metadata !{i32 863, i32 7, metadata !1543, null}
!1546 = metadata !{i32 864, i32 7, metadata !1543, null}
!1547 = metadata !{i32 867, i32 7, metadata !1548, null}
!1548 = metadata !{i32 786443, metadata !106, metadata !1544, i32 866, i32 50, i32 0, i32 54} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!1549 = metadata !{i32 868, i32 7, metadata !1548, null}
!1550 = metadata !{i32 871, i32 12, metadata !1551, null}
!1551 = metadata !{i32 786443, metadata !106, metadata !1544, i32 870, i32 14, i32 0, i32 55} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!1552 = metadata !{i32 872, i32 7, metadata !1551, null}
!1553 = metadata !{i32 875, i32 3, metadata !600, null}
!1554 = metadata !{i32 876, i32 3, metadata !600, null}
!1555 = metadata !{i32 877, i32 3, metadata !600, null}
!1556 = metadata !{i32 878, i32 1, metadata !600, null}
!1557 = metadata !{i32 786689, metadata !649, metadata !"fs", metadata !107, i32 16778041, metadata !110, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fs] [line 825]
!1558 = metadata !{i32 825, i32 41, metadata !649, null}
!1559 = metadata !{i32 786689, metadata !649, metadata !"e", metadata !107, i32 33555257, metadata !565, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [e] [line 825]
!1560 = metadata !{i32 825, i32 54, metadata !649, null}
!1561 = metadata !{i32 786688, metadata !649, metadata !"pc", metadata !107, i32 826, metadata !394, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pc] [line 826]
!1562 = metadata !{i32 826, i32 16, metadata !649, null}
!1563 = metadata !{i32 826, i32 21, metadata !649, null}
!1564 = metadata !{i32 829, i32 3, metadata !649, null}
!1565 = metadata !{i32 830, i32 1, metadata !649, null}
!1566 = metadata !{i32 786689, metadata !646, metadata !"fs", metadata !107, i32 16778055, metadata !110, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fs] [line 839]
!1567 = metadata !{i32 839, i32 35, metadata !646, null}
!1568 = metadata !{i32 786689, metadata !646, metadata !"e", metadata !107, i32 33555271, metadata !565, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [e] [line 839]
!1569 = metadata !{i32 839, i32 48, metadata !646, null}
!1570 = metadata !{i32 786689, metadata !646, metadata !"cond", metadata !107, i32 50332487, metadata !137, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cond] [line 839]
!1571 = metadata !{i32 839, i32 55, metadata !646, null}
!1572 = metadata !{i32 840, i32 7, metadata !1573, null}
!1573 = metadata !{i32 786443, metadata !106, metadata !646, i32 840, i32 7, i32 0, i32 125} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!1574 = metadata !{i32 786688, metadata !1575, metadata !"ie", metadata !107, i32 841, metadata !315, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ie] [line 841]
!1575 = metadata !{i32 786443, metadata !106, metadata !1573, i32 840, i32 27, i32 0, i32 126} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!1576 = metadata !{i32 841, i32 17, metadata !1575, null}
!1577 = metadata !{i32 841, i32 5, metadata !1575, null}
!1578 = metadata !{i32 842, i32 9, metadata !1579, null}
!1579 = metadata !{i32 786443, metadata !106, metadata !1575, i32 842, i32 9, i32 0, i32 127} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!1580 = metadata !{i32 843, i32 7, metadata !1581, null}
!1581 = metadata !{i32 786443, metadata !106, metadata !1579, i32 842, i32 35, i32 0, i32 128} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!1582 = metadata !{i32 844, i32 14, metadata !1581, null}
!1583 = metadata !{i32 847, i32 3, metadata !1575, null}
!1584 = metadata !{i32 848, i32 3, metadata !646, null}
!1585 = metadata !{i32 849, i32 3, metadata !646, null}
!1586 = metadata !{i32 850, i32 10, metadata !646, null}
!1587 = metadata !{i32 851, i32 1, metadata !646, null}
!1588 = metadata !{i32 786689, metadata !601, metadata !"fs", metadata !107, i32 16778100, metadata !110, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fs] [line 884]
!1589 = metadata !{i32 884, i32 33, metadata !601, null}
!1590 = metadata !{i32 786689, metadata !601, metadata !"e", metadata !107, i32 33555316, metadata !565, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [e] [line 884]
!1591 = metadata !{i32 884, i32 46, metadata !601, null}
!1592 = metadata !{i32 786688, metadata !601, metadata !"pc", metadata !107, i32 885, metadata !137, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pc] [line 885]
!1593 = metadata !{i32 885, i32 7, metadata !601, null}
!1594 = metadata !{i32 886, i32 3, metadata !601, null}
!1595 = metadata !{i32 887, i32 3, metadata !601, null}
!1596 = metadata !{i32 889, i32 7, metadata !1597, null}
!1597 = metadata !{i32 786443, metadata !106, metadata !1598, i32 888, i32 16, i32 0, i32 57} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!1598 = metadata !{i32 786443, metadata !106, metadata !601, i32 887, i32 17, i32 0, i32 56} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!1599 = metadata !{i32 890, i32 7, metadata !1597, null}
!1600 = metadata !{i32 893, i32 7, metadata !1601, null}
!1601 = metadata !{i32 786443, metadata !106, metadata !1598, i32 892, i32 29, i32 0, i32 58} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!1602 = metadata !{i32 894, i32 7, metadata !1601, null}
!1603 = metadata !{i32 897, i32 12, metadata !1604, null}
!1604 = metadata !{i32 786443, metadata !106, metadata !1598, i32 896, i32 14, i32 0, i32 59} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!1605 = metadata !{i32 898, i32 7, metadata !1604, null}
!1606 = metadata !{i32 901, i32 3, metadata !601, null}
!1607 = metadata !{i32 902, i32 3, metadata !601, null}
!1608 = metadata !{i32 903, i32 3, metadata !601, null}
!1609 = metadata !{i32 904, i32 1, metadata !601, null}
!1610 = metadata !{i32 786689, metadata !602, metadata !"fs", metadata !107, i32 16778162, metadata !110, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fs] [line 946]
!1611 = metadata !{i32 946, i32 31, metadata !602, null}
!1612 = metadata !{i32 786689, metadata !602, metadata !"t", metadata !107, i32 33555378, metadata !565, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [t] [line 946]
!1613 = metadata !{i32 946, i32 44, metadata !602, null}
!1614 = metadata !{i32 786689, metadata !602, metadata !"k", metadata !107, i32 50332594, metadata !565, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [k] [line 946]
!1615 = metadata !{i32 946, i32 56, metadata !602, null}
!1616 = metadata !{i32 948, i32 3, metadata !602, null}
!1617 = metadata !{i32 949, i32 18, metadata !602, null}
!1618 = metadata !{i32 950, i32 3, metadata !602, null}
!1619 = metadata !{i32 951, i32 3, metadata !602, null}
!1620 = metadata !{i32 952, i32 1, metadata !602, null}
!1621 = metadata !{i32 786689, metadata !603, metadata !"fs", metadata !107, i32 16778278, metadata !110, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fs] [line 1062]
!1622 = metadata !{i32 1062, i32 30, metadata !603, null}
!1623 = metadata !{i32 786689, metadata !603, metadata !"op", metadata !107, i32 33555494, metadata !606, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [op] [line 1062]
!1624 = metadata !{i32 1062, i32 40, metadata !603, null}
!1625 = metadata !{i32 786689, metadata !603, metadata !"e", metadata !107, i32 50332710, metadata !565, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [e] [line 1062]
!1626 = metadata !{i32 1062, i32 53, metadata !603, null}
!1627 = metadata !{i32 786689, metadata !603, metadata !"line", metadata !107, i32 67109926, metadata !137, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [line] [line 1062]
!1628 = metadata !{i32 1062, i32 60, metadata !603, null}
!1629 = metadata !{i32 1064, i32 3, metadata !603, null}
!1630 = metadata !{i32 1066, i32 11, metadata !1631, null}
!1631 = metadata !{i32 786443, metadata !106, metadata !1632, i32 1066, i32 11, i32 0, i32 61} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!1632 = metadata !{i32 786443, metadata !106, metadata !603, i32 1064, i32 15, i32 0, i32 60} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!1633 = metadata !{i32 1067, i32 9, metadata !1631, null}
!1634 = metadata !{i32 1066, i32 50, metadata !1635, null}
!1635 = metadata !{i32 786443, metadata !106, metadata !1631, i32 1066, i32 50, i32 1, i32 188} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!1636 = metadata !{i32 1070, i32 7, metadata !1632, null}
!1637 = metadata !{i32 1071, i32 7, metadata !1632, null}
!1638 = metadata !{i32 1072, i32 19, metadata !1632, null}
!1639 = metadata !{i32 1072, i32 35, metadata !1632, null}
!1640 = metadata !{i32 1074, i32 3, metadata !1632, null}
!1641 = metadata !{i32 1075, i32 1, metadata !603, null}
!1642 = metadata !{i32 786689, metadata !640, metadata !"fs", metadata !107, i32 16778194, metadata !110, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fs] [line 978]
!1643 = metadata !{i32 978, i32 37, metadata !640, null}
!1644 = metadata !{i32 786689, metadata !640, metadata !"op", metadata !107, i32 33555410, metadata !137, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [op] [line 978]
!1645 = metadata !{i32 978, i32 45, metadata !640, null}
!1646 = metadata !{i32 786689, metadata !640, metadata !"e1", metadata !107, i32 50332626, metadata !565, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [e1] [line 978]
!1647 = metadata !{i32 978, i32 58, metadata !640, null}
!1648 = metadata !{i32 786689, metadata !640, metadata !"e2", metadata !107, i32 67109842, metadata !565, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [e2] [line 978]
!1649 = metadata !{i32 978, i32 71, metadata !640, null}
!1650 = metadata !{i32 786688, metadata !640, metadata !"v1", metadata !107, i32 979, metadata !147, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [v1] [line 979]
!1651 = metadata !{i32 979, i32 10, metadata !640, null}
!1652 = metadata !{i32 786688, metadata !640, metadata !"v2", metadata !107, i32 979, metadata !147, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [v2] [line 979]
!1653 = metadata !{i32 979, i32 14, metadata !640, null}
!1654 = metadata !{i32 786688, metadata !640, metadata !"res", metadata !107, i32 979, metadata !147, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [res] [line 979]
!1655 = metadata !{i32 979, i32 18, metadata !640, null}
!1656 = metadata !{i32 980, i32 8, metadata !1657, null}
!1657 = metadata !{i32 786443, metadata !106, metadata !640, i32 980, i32 7, i32 0, i32 118} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!1658 = metadata !{i32 980, i32 31, metadata !1659, null}
!1659 = metadata !{i32 786443, metadata !106, metadata !1657, i32 980, i32 31, i32 1, i32 189} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!1660 = metadata !{i32 980, i32 54, metadata !1661, null}
!1661 = metadata !{i32 786443, metadata !106, metadata !1657, i32 980, i32 54, i32 2, i32 190} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!1662 = metadata !{i32 981, i32 5, metadata !1657, null}
!1663 = metadata !{i32 982, i32 3, metadata !640, null}
!1664 = metadata !{i32 983, i32 7, metadata !1665, null}
!1665 = metadata !{i32 786443, metadata !106, metadata !640, i32 983, i32 7, i32 0, i32 119} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!1666 = metadata !{i32 984, i32 5, metadata !1667, null}
!1667 = metadata !{i32 786443, metadata !106, metadata !1665, i32 983, i32 26, i32 0, i32 120} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!1668 = metadata !{i32 985, i32 5, metadata !1667, null}
!1669 = metadata !{i32 986, i32 3, metadata !1667, null}
!1670 = metadata !{i32 786688, metadata !1671, metadata !"n", metadata !107, i32 988, metadata !249, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 988]
!1671 = metadata !{i32 786443, metadata !106, metadata !1665, i32 987, i32 8, i32 0, i32 121} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!1672 = metadata !{i32 988, i32 16, metadata !1671, null}
!1673 = metadata !{i32 988, i32 5, metadata !1671, null}
!1674 = metadata !{i32 989, i32 9, metadata !1675, null}
!1675 = metadata !{i32 786443, metadata !106, metadata !1671, i32 989, i32 9, i32 0, i32 122} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!1676 = metadata !{i32 989, i32 9, metadata !1677, null}
!1677 = metadata !{i32 786443, metadata !106, metadata !1675, i32 989, i32 9, i32 1, i32 191} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!1678 = metadata !{i32 990, i32 7, metadata !1675, null}
!1679 = metadata !{i32 991, i32 5, metadata !1671, null}
!1680 = metadata !{i32 992, i32 5, metadata !1671, null}
!1681 = metadata !{i32 994, i32 3, metadata !640, null}
!1682 = metadata !{i32 995, i32 1, metadata !640, null}
!1683 = metadata !{i32 786689, metadata !637, metadata !"fs", metadata !107, i32 16778219, metadata !110, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fs] [line 1003]
!1684 = metadata !{i32 1003, i32 38, metadata !637, null}
!1685 = metadata !{i32 786689, metadata !637, metadata !"op", metadata !107, i32 33555435, metadata !547, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [op] [line 1003]
!1686 = metadata !{i32 1003, i32 49, metadata !637, null}
!1687 = metadata !{i32 786689, metadata !637, metadata !"e", metadata !107, i32 50332651, metadata !565, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [e] [line 1003]
!1688 = metadata !{i32 1003, i32 62, metadata !637, null}
!1689 = metadata !{i32 786689, metadata !637, metadata !"line", metadata !107, i32 67109867, metadata !137, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [line] [line 1003]
!1690 = metadata !{i32 1003, i32 69, metadata !637, null}
!1691 = metadata !{i32 786688, metadata !637, metadata !"r", metadata !107, i32 1004, metadata !137, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 1004]
!1692 = metadata !{i32 1004, i32 7, metadata !637, null}
!1693 = metadata !{i32 1004, i32 11, metadata !637, null}
!1694 = metadata !{i32 1005, i32 3, metadata !637, null}
!1695 = metadata !{i32 1006, i32 15, metadata !637, null}
!1696 = metadata !{i32 1007, i32 3, metadata !637, null}
!1697 = metadata !{i32 1008, i32 3, metadata !637, null}
!1698 = metadata !{i32 1009, i32 1, metadata !637, null}
!1699 = metadata !{i32 786689, metadata !629, metadata !"fs", metadata !107, i32 16778126, metadata !110, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fs] [line 910]
!1700 = metadata !{i32 910, i32 33, metadata !629, null}
!1701 = metadata !{i32 786689, metadata !629, metadata !"e", metadata !107, i32 33555342, metadata !565, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [e] [line 910]
!1702 = metadata !{i32 910, i32 46, metadata !629, null}
!1703 = metadata !{i32 911, i32 3, metadata !629, null}
!1704 = metadata !{i32 912, i32 3, metadata !629, null}
!1705 = metadata !{i32 914, i32 7, metadata !1706, null}
!1706 = metadata !{i32 786443, metadata !106, metadata !1707, i32 913, i32 29, i32 0, i32 96} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!1707 = metadata !{i32 786443, metadata !106, metadata !629, i32 912, i32 17, i32 0, i32 95} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!1708 = metadata !{i32 915, i32 7, metadata !1706, null}
!1709 = metadata !{i32 918, i32 7, metadata !1710, null}
!1710 = metadata !{i32 786443, metadata !106, metadata !1707, i32 917, i32 50, i32 0, i32 97} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!1711 = metadata !{i32 919, i32 7, metadata !1710, null}
!1712 = metadata !{i32 922, i32 7, metadata !1713, null}
!1713 = metadata !{i32 786443, metadata !106, metadata !1707, i32 921, i32 16, i32 0, i32 98} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!1714 = metadata !{i32 923, i32 7, metadata !1713, null}
!1715 = metadata !{i32 927, i32 7, metadata !1716, null}
!1716 = metadata !{i32 786443, metadata !106, metadata !1707, i32 926, i32 21, i32 0, i32 99} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!1717 = metadata !{i32 928, i32 7, metadata !1716, null}
!1718 = metadata !{i32 929, i32 19, metadata !1716, null}
!1719 = metadata !{i32 930, i32 7, metadata !1716, null}
!1720 = metadata !{i32 931, i32 7, metadata !1716, null}
!1721 = metadata !{i32 934, i32 3, metadata !1707, null}
!1722 = metadata !{i32 786688, metadata !1723, metadata !"temp", metadata !107, i32 936, metadata !137, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [temp] [line 936]
!1723 = metadata !{i32 786443, metadata !106, metadata !629, i32 936, i32 3, i32 0, i32 100} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!1724 = metadata !{i32 936, i32 9, metadata !1723, null}
!1725 = metadata !{i32 936, i32 5, metadata !1723, null}
!1726 = metadata !{i32 936, i32 22, metadata !1723, null}
!1727 = metadata !{i32 936, i32 35, metadata !1723, null}
!1728 = metadata !{i32 937, i32 3, metadata !629, null}
!1729 = metadata !{i32 938, i32 3, metadata !629, null}
!1730 = metadata !{i32 939, i32 1, metadata !629, null}
!1731 = metadata !{i32 786689, metadata !607, metadata !"fs", metadata !107, i32 16778298, metadata !110, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fs] [line 1082]
!1732 = metadata !{i32 1082, i32 29, metadata !607, null}
!1733 = metadata !{i32 786689, metadata !607, metadata !"op", metadata !107, i32 33555514, metadata !610, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [op] [line 1082]
!1734 = metadata !{i32 1082, i32 40, metadata !607, null}
!1735 = metadata !{i32 786689, metadata !607, metadata !"v", metadata !107, i32 50332730, metadata !565, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [v] [line 1082]
!1736 = metadata !{i32 1082, i32 53, metadata !607, null}
!1737 = metadata !{i32 1083, i32 3, metadata !607, null}
!1738 = metadata !{i32 1085, i32 7, metadata !1739, null}
!1739 = metadata !{i32 786443, metadata !106, metadata !1740, i32 1084, i32 19, i32 0, i32 63} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!1740 = metadata !{i32 786443, metadata !106, metadata !607, i32 1083, i32 15, i32 0, i32 62} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!1741 = metadata !{i32 1086, i32 7, metadata !1739, null}
!1742 = metadata !{i32 1089, i32 7, metadata !1743, null}
!1743 = metadata !{i32 786443, metadata !106, metadata !1740, i32 1088, i32 18, i32 0, i32 64} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!1744 = metadata !{i32 1090, i32 7, metadata !1743, null}
!1745 = metadata !{i32 1093, i32 7, metadata !1746, null}
!1746 = metadata !{i32 786443, metadata !106, metadata !1740, i32 1092, i32 22, i32 0, i32 65} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!1747 = metadata !{i32 1094, i32 7, metadata !1746, null}
!1748 = metadata !{i32 1101, i32 12, metadata !1749, null}
!1749 = metadata !{i32 786443, metadata !106, metadata !1750, i32 1101, i32 11, i32 0, i32 67} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!1750 = metadata !{i32 786443, metadata !106, metadata !1740, i32 1100, i32 33, i32 0, i32 66} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!1751 = metadata !{i32 1102, i32 9, metadata !1749, null}
!1752 = metadata !{i32 1104, i32 7, metadata !1750, null}
!1753 = metadata !{i32 1107, i32 7, metadata !1754, null}
!1754 = metadata !{i32 786443, metadata !106, metadata !1740, i32 1106, i32 14, i32 0, i32 68} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!1755 = metadata !{i32 1108, i32 7, metadata !1754, null}
!1756 = metadata !{i32 1111, i32 1, metadata !607, null}
!1757 = metadata !{i32 786689, metadata !626, metadata !"e", metadata !107, i32 16777259, metadata !565, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [e] [line 43]
!1758 = metadata !{i32 43, i32 31, metadata !626, null}
!1759 = metadata !{i32 786689, metadata !626, metadata !"v", metadata !107, i32 33554475, metadata !146, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [v] [line 43]
!1760 = metadata !{i32 43, i32 42, metadata !626, null}
!1761 = metadata !{i32 44, i32 7, metadata !1762, null}
!1762 = metadata !{i32 786443, metadata !106, metadata !626, i32 44, i32 7, i32 0, i32 89} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!1763 = metadata !{i32 45, i32 5, metadata !1762, null}
!1764 = metadata !{i32 46, i32 3, metadata !626, null}
!1765 = metadata !{i32 48, i32 11, metadata !1766, null}
!1766 = metadata !{i32 786443, metadata !106, metadata !1767, i32 48, i32 11, i32 0, i32 91} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!1767 = metadata !{i32 786443, metadata !106, metadata !626, i32 46, i32 17, i32 0, i32 90} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!1768 = metadata !{i32 786688, metadata !1769, metadata !"io", metadata !107, i32 48, metadata !146, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [io] [line 48]
!1769 = metadata !{i32 786443, metadata !106, metadata !1766, i32 48, i32 14, i32 0, i32 92} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!1770 = metadata !{i32 48, i32 14, metadata !1769, null}
!1771 = metadata !{i32 48, i32 14, metadata !1772, null}
!1772 = metadata !{i32 786443, metadata !106, metadata !1769, i32 48, i32 14, i32 1, i32 192} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!1773 = metadata !{i32 49, i32 7, metadata !1767, null}
!1774 = metadata !{i32 51, i32 11, metadata !1775, null}
!1775 = metadata !{i32 786443, metadata !106, metadata !1767, i32 51, i32 11, i32 0, i32 93} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!1776 = metadata !{i32 786688, metadata !1777, metadata !"io", metadata !107, i32 51, metadata !146, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [io] [line 51]
!1777 = metadata !{i32 786443, metadata !106, metadata !1775, i32 51, i32 14, i32 0, i32 94} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!1778 = metadata !{i32 51, i32 14, metadata !1777, null}
!1779 = metadata !{i32 51, i32 14, metadata !1780, null}
!1780 = metadata !{i32 786443, metadata !106, metadata !1777, i32 51, i32 14, i32 1, i32 193} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!1781 = metadata !{i32 52, i32 7, metadata !1767, null}
!1782 = metadata !{i32 53, i32 14, metadata !1767, null}
!1783 = metadata !{i32 55, i32 1, metadata !626, null}
!1784 = metadata !{i32 786689, metadata !611, metadata !"fs", metadata !107, i32 16778336, metadata !110, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fs] [line 1120]
!1785 = metadata !{i32 1120, i32 30, metadata !611, null}
!1786 = metadata !{i32 786689, metadata !611, metadata !"op", metadata !107, i32 33555552, metadata !610, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [op] [line 1120]
!1787 = metadata !{i32 1120, i32 41, metadata !611, null}
!1788 = metadata !{i32 786689, metadata !611, metadata !"e1", metadata !107, i32 50332769, metadata !565, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [e1] [line 1121]
!1789 = metadata !{i32 1121, i32 28, metadata !611, null}
!1790 = metadata !{i32 786689, metadata !611, metadata !"e2", metadata !107, i32 67109985, metadata !565, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [e2] [line 1121]
!1791 = metadata !{i32 1121, i32 41, metadata !611, null}
!1792 = metadata !{i32 786689, metadata !611, metadata !"line", metadata !107, i32 83887201, metadata !137, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [line] [line 1121]
!1793 = metadata !{i32 1121, i32 49, metadata !611, null}
!1794 = metadata !{i32 1122, i32 3, metadata !611, null}
!1795 = metadata !{i32 1125, i32 7, metadata !1796, null}
!1796 = metadata !{i32 786443, metadata !106, metadata !1797, i32 1123, i32 19, i32 0, i32 70} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!1797 = metadata !{i32 786443, metadata !106, metadata !611, i32 1122, i32 15, i32 0, i32 69} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!1798 = metadata !{i32 1126, i32 7, metadata !1796, null}
!1799 = metadata !{i32 1127, i32 7, metadata !1796, null}
!1800 = metadata !{i32 1128, i32 7, metadata !1796, null}
!1801 = metadata !{i32 1132, i32 7, metadata !1802, null}
!1802 = metadata !{i32 786443, metadata !106, metadata !1797, i32 1130, i32 18, i32 0, i32 71} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!1803 = metadata !{i32 1133, i32 7, metadata !1802, null}
!1804 = metadata !{i32 1134, i32 7, metadata !1802, null}
!1805 = metadata !{i32 1135, i32 7, metadata !1802, null}
!1806 = metadata !{i32 1138, i32 7, metadata !1807, null}
!1807 = metadata !{i32 786443, metadata !106, metadata !1797, i32 1137, i32 22, i32 0, i32 72} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!1808 = metadata !{i32 1139, i32 11, metadata !1809, null}
!1809 = metadata !{i32 786443, metadata !106, metadata !1807, i32 1139, i32 11, i32 0, i32 73} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!1810 = metadata !{i32 1139, i32 11, metadata !1811, null}
!1811 = metadata !{i32 786443, metadata !106, metadata !1809, i32 1139, i32 11, i32 1, i32 194} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!1812 = metadata !{i32 1142, i32 9, metadata !1813, null}
!1813 = metadata !{i32 786443, metadata !106, metadata !1809, i32 1140, i32 60, i32 0, i32 74} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!1814 = metadata !{i32 1143, i32 9, metadata !1813, null}
!1815 = metadata !{i32 1144, i32 9, metadata !1813, null}
!1816 = metadata !{i32 1144, i32 29, metadata !1813, null}
!1817 = metadata !{i32 1145, i32 7, metadata !1813, null}
!1818 = metadata !{i32 1147, i32 9, metadata !1819, null}
!1819 = metadata !{i32 786443, metadata !106, metadata !1809, i32 1146, i32 12, i32 0, i32 75} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!1820 = metadata !{i32 1148, i32 9, metadata !1819, null}
!1821 = metadata !{i32 1150, i32 7, metadata !1807, null}
!1822 = metadata !{i32 1156, i32 12, metadata !1823, null}
!1823 = metadata !{i32 786443, metadata !106, metadata !1824, i32 1156, i32 11, i32 0, i32 77} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!1824 = metadata !{i32 786443, metadata !106, metadata !1797, i32 1155, i32 33, i32 0, i32 76} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!1825 = metadata !{i32 1157, i32 9, metadata !1823, null}
!1826 = metadata !{i32 1158, i32 7, metadata !1824, null}
!1827 = metadata !{i32 1162, i32 7, metadata !1828, null}
!1828 = metadata !{i32 786443, metadata !106, metadata !1797, i32 1161, i32 44, i32 0, i32 78} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!1829 = metadata !{i32 1163, i32 7, metadata !1828, null}
!1830 = metadata !{i32 1166, i32 3, metadata !1797, null}
!1831 = metadata !{i32 1167, i32 1, metadata !611, null}
!1832 = metadata !{i32 786689, metadata !623, metadata !"fs", metadata !107, i32 16778234, metadata !110, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fs] [line 1018]
!1833 = metadata !{i32 1018, i32 39, metadata !623, null}
!1834 = metadata !{i32 786689, metadata !623, metadata !"op", metadata !107, i32 33555450, metadata !547, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [op] [line 1018]
!1835 = metadata !{i32 1018, i32 50, metadata !623, null}
!1836 = metadata !{i32 786689, metadata !623, metadata !"e1", metadata !107, i32 50332667, metadata !565, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [e1] [line 1019]
!1837 = metadata !{i32 1019, i32 37, metadata !623, null}
!1838 = metadata !{i32 786689, metadata !623, metadata !"e2", metadata !107, i32 67109883, metadata !565, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [e2] [line 1019]
!1839 = metadata !{i32 1019, i32 50, metadata !623, null}
!1840 = metadata !{i32 786689, metadata !623, metadata !"line", metadata !107, i32 83887099, metadata !137, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [line] [line 1019]
!1841 = metadata !{i32 1019, i32 58, metadata !623, null}
!1842 = metadata !{i32 786688, metadata !623, metadata !"rk1", metadata !107, i32 1020, metadata !137, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rk1] [line 1020]
!1843 = metadata !{i32 1020, i32 7, metadata !623, null}
!1844 = metadata !{i32 1020, i32 13, metadata !623, null}
!1845 = metadata !{i32 786688, metadata !623, metadata !"rk2", metadata !107, i32 1021, metadata !137, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rk2] [line 1021]
!1846 = metadata !{i32 1021, i32 7, metadata !623, null}
!1847 = metadata !{i32 1021, i32 13, metadata !623, null}
!1848 = metadata !{i32 1022, i32 3, metadata !623, null}
!1849 = metadata !{i32 1023, i32 16, metadata !623, null}
!1850 = metadata !{i32 1024, i32 3, metadata !623, null}
!1851 = metadata !{i32 1025, i32 3, metadata !623, null}
!1852 = metadata !{i32 1026, i32 1, metadata !623, null}
!1853 = metadata !{i32 786689, metadata !618, metadata !"fs", metadata !107, i32 16778249, metadata !110, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fs] [line 1033]
!1854 = metadata !{i32 1033, i32 34, metadata !618, null}
!1855 = metadata !{i32 786689, metadata !618, metadata !"opr", metadata !107, i32 33555465, metadata !610, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [opr] [line 1033]
!1856 = metadata !{i32 1033, i32 45, metadata !618, null}
!1857 = metadata !{i32 786689, metadata !618, metadata !"e1", metadata !107, i32 50332681, metadata !565, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [e1] [line 1033]
!1858 = metadata !{i32 1033, i32 59, metadata !618, null}
!1859 = metadata !{i32 786689, metadata !618, metadata !"e2", metadata !107, i32 67109897, metadata !565, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [e2] [line 1033]
!1860 = metadata !{i32 1033, i32 72, metadata !618, null}
!1861 = metadata !{i32 786688, metadata !618, metadata !"rk1", metadata !107, i32 1034, metadata !137, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rk1] [line 1034]
!1862 = metadata !{i32 1034, i32 7, metadata !618, null}
!1863 = metadata !{i32 1034, i32 3, metadata !618, null}
!1864 = metadata !{i32 1034, i32 3, metadata !1865, null}
!1865 = metadata !{i32 786443, metadata !106, metadata !618, i32 1034, i32 3, i32 1, i32 195} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!1866 = metadata !{i32 1034, i32 3, metadata !1867, null}
!1867 = metadata !{i32 786443, metadata !106, metadata !618, i32 1034, i32 3, i32 2, i32 196} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!1868 = metadata !{i32 1034, i32 3, metadata !1869, null}
!1869 = metadata !{i32 786443, metadata !106, metadata !1870, i32 1034, i32 3, i32 4, i32 198} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!1870 = metadata !{i32 786443, metadata !106, metadata !618, i32 1034, i32 3, i32 3, i32 197} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!1871 = metadata !{i32 786688, metadata !618, metadata !"rk2", metadata !107, i32 1036, metadata !137, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rk2] [line 1036]
!1872 = metadata !{i32 1036, i32 7, metadata !618, null}
!1873 = metadata !{i32 1036, i32 13, metadata !618, null}
!1874 = metadata !{i32 1037, i32 3, metadata !618, null}
!1875 = metadata !{i32 1038, i32 3, metadata !618, null}
!1876 = metadata !{i32 1040, i32 20, metadata !1877, null}
!1877 = metadata !{i32 786443, metadata !106, metadata !1878, i32 1039, i32 18, i32 0, i32 83} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!1878 = metadata !{i32 786443, metadata !106, metadata !618, i32 1038, i32 16, i32 0, i32 82} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!1879 = metadata !{i32 1041, i32 7, metadata !1877, null}
!1880 = metadata !{i32 786688, metadata !1881, metadata !"op", metadata !107, i32 1045, metadata !547, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [op] [line 1045]
!1881 = metadata !{i32 786443, metadata !106, metadata !1878, i32 1043, i32 31, i32 0, i32 84} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!1882 = metadata !{i32 1045, i32 14, metadata !1881, null}
!1883 = metadata !{i32 1045, i32 7, metadata !1881, null}
!1884 = metadata !{i32 1046, i32 20, metadata !1881, null}
!1885 = metadata !{i32 1047, i32 7, metadata !1881, null}
!1886 = metadata !{i32 786688, metadata !1887, metadata !"op", metadata !107, i32 1050, metadata !547, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [op] [line 1050]
!1887 = metadata !{i32 786443, metadata !106, metadata !1878, i32 1049, i32 14, i32 0, i32 85} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!1888 = metadata !{i32 1050, i32 14, metadata !1887, null}
!1889 = metadata !{i32 1050, i32 7, metadata !1887, null}
!1890 = metadata !{i32 1051, i32 20, metadata !1887, null}
!1891 = metadata !{i32 1052, i32 7, metadata !1887, null}
!1892 = metadata !{i32 1055, i32 3, metadata !618, null}
!1893 = metadata !{i32 1056, i32 1, metadata !618, null}
!1894 = metadata !{i32 786689, metadata !614, metadata !"fs", metadata !107, i32 16778389, metadata !110, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fs] [line 1173]
!1895 = metadata !{i32 1173, i32 31, metadata !614, null}
!1896 = metadata !{i32 786689, metadata !614, metadata !"line", metadata !107, i32 33555605, metadata !137, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [line] [line 1173]
!1897 = metadata !{i32 1173, i32 39, metadata !614, null}
!1898 = metadata !{i32 1174, i32 3, metadata !614, null}
!1899 = metadata !{i32 1175, i32 1, metadata !614, null}
!1900 = metadata !{i32 786689, metadata !615, metadata !"fs", metadata !107, i32 16778401, metadata !110, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fs] [line 1185]
!1901 = metadata !{i32 1185, i32 31, metadata !615, null}
!1902 = metadata !{i32 786689, metadata !615, metadata !"base", metadata !107, i32 33555617, metadata !137, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [base] [line 1185]
!1903 = metadata !{i32 1185, i32 39, metadata !615, null}
!1904 = metadata !{i32 786689, metadata !615, metadata !"nelems", metadata !107, i32 50332833, metadata !137, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nelems] [line 1185]
!1905 = metadata !{i32 1185, i32 49, metadata !615, null}
!1906 = metadata !{i32 786689, metadata !615, metadata !"tostore", metadata !107, i32 67110049, metadata !137, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tostore] [line 1185]
!1907 = metadata !{i32 1185, i32 61, metadata !615, null}
!1908 = metadata !{i32 786688, metadata !615, metadata !"c", metadata !107, i32 1186, metadata !137, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c] [line 1186]
!1909 = metadata !{i32 1186, i32 7, metadata !615, null}
!1910 = metadata !{i32 1186, i32 3, metadata !615, null}
!1911 = metadata !{i32 786688, metadata !615, metadata !"b", metadata !107, i32 1187, metadata !137, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b] [line 1187]
!1912 = metadata !{i32 1187, i32 7, metadata !615, null}
!1913 = metadata !{i32 1187, i32 3, metadata !615, null}
!1914 = metadata !{i32 1187, i32 3, metadata !1915, null}
!1915 = metadata !{i32 786443, metadata !106, metadata !615, i32 1187, i32 3, i32 1, i32 199} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!1916 = metadata !{i32 1187, i32 3, metadata !1917, null}
!1917 = metadata !{i32 786443, metadata !106, metadata !615, i32 1187, i32 3, i32 2, i32 200} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!1918 = metadata !{i32 1187, i32 3, metadata !1919, null}
!1919 = metadata !{i32 786443, metadata !106, metadata !1920, i32 1187, i32 3, i32 4, i32 202} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!1920 = metadata !{i32 786443, metadata !106, metadata !615, i32 1187, i32 3, i32 3, i32 201} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!1921 = metadata !{i32 1189, i32 7, metadata !1922, null}
!1922 = metadata !{i32 786443, metadata !106, metadata !615, i32 1189, i32 7, i32 0, i32 79} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!1923 = metadata !{i32 1190, i32 5, metadata !1922, null}
!1924 = metadata !{i32 1191, i32 12, metadata !1925, null}
!1925 = metadata !{i32 786443, metadata !106, metadata !1922, i32 1191, i32 12, i32 0, i32 80} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!1926 = metadata !{i32 1192, i32 5, metadata !1927, null}
!1927 = metadata !{i32 786443, metadata !106, metadata !1925, i32 1191, i32 28, i32 0, i32 81} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!1928 = metadata !{i32 1193, i32 5, metadata !1927, null}
!1929 = metadata !{i32 1194, i32 3, metadata !1927, null}
!1930 = metadata !{i32 1196, i32 5, metadata !1925, null}
!1931 = metadata !{i32 1197, i32 3, metadata !615, null}
!1932 = metadata !{i32 1198, i32 1, metadata !615, null}
!1933 = metadata !{i32 786689, metadata !622, metadata !"fs", metadata !107, i32 16777623, metadata !110, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fs] [line 407]
!1934 = metadata !{i32 407, i32 34, metadata !622, null}
!1935 = metadata !{i32 786689, metadata !622, metadata !"e1", metadata !107, i32 33554839, metadata !565, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [e1] [line 407]
!1936 = metadata !{i32 407, i32 47, metadata !622, null}
!1937 = metadata !{i32 786689, metadata !622, metadata !"e2", metadata !107, i32 50332055, metadata !565, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [e2] [line 407]
!1938 = metadata !{i32 407, i32 60, metadata !622, null}
!1939 = metadata !{i32 786688, metadata !622, metadata !"r1", metadata !107, i32 408, metadata !137, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r1] [line 408]
!1940 = metadata !{i32 408, i32 7, metadata !622, null}
!1941 = metadata !{i32 408, i32 3, metadata !622, null}
!1942 = metadata !{i32 408, i32 3, metadata !1943, null}
!1943 = metadata !{i32 786443, metadata !106, metadata !622, i32 408, i32 3, i32 1, i32 203} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!1944 = metadata !{i32 408, i32 3, metadata !1945, null}
!1945 = metadata !{i32 786443, metadata !106, metadata !622, i32 408, i32 3, i32 2, i32 204} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!1946 = metadata !{i32 408, i32 3, metadata !1947, null}
!1947 = metadata !{i32 786443, metadata !106, metadata !1948, i32 408, i32 3, i32 4, i32 206} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!1948 = metadata !{i32 786443, metadata !106, metadata !622, i32 408, i32 3, i32 3, i32 205} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!1949 = metadata !{i32 786688, metadata !622, metadata !"r2", metadata !107, i32 409, metadata !137, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r2] [line 409]
!1950 = metadata !{i32 409, i32 7, metadata !622, null}
!1951 = metadata !{i32 409, i32 3, metadata !622, null}
!1952 = metadata !{i32 409, i32 3, metadata !1953, null}
!1953 = metadata !{i32 786443, metadata !106, metadata !622, i32 409, i32 3, i32 1, i32 207} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!1954 = metadata !{i32 409, i32 3, metadata !1955, null}
!1955 = metadata !{i32 786443, metadata !106, metadata !622, i32 409, i32 3, i32 2, i32 208} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!1956 = metadata !{i32 409, i32 3, metadata !1957, null}
!1957 = metadata !{i32 786443, metadata !106, metadata !1958, i32 409, i32 3, i32 4, i32 210} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!1958 = metadata !{i32 786443, metadata !106, metadata !622, i32 409, i32 3, i32 3, i32 209} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!1959 = metadata !{i32 410, i32 7, metadata !1960, null}
!1960 = metadata !{i32 786443, metadata !106, metadata !622, i32 410, i32 7, i32 0, i32 86} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!1961 = metadata !{i32 411, i32 5, metadata !1962, null}
!1962 = metadata !{i32 786443, metadata !106, metadata !1960, i32 410, i32 16, i32 0, i32 87} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!1963 = metadata !{i32 412, i32 5, metadata !1962, null}
!1964 = metadata !{i32 413, i32 3, metadata !1962, null}
!1965 = metadata !{i32 415, i32 5, metadata !1966, null}
!1966 = metadata !{i32 786443, metadata !106, metadata !1960, i32 414, i32 8, i32 0, i32 88} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!1967 = metadata !{i32 416, i32 5, metadata !1966, null}
!1968 = metadata !{i32 418, i32 1, metadata !622, null}
!1969 = metadata !{i32 786689, metadata !621, metadata !"fs", metadata !107, i32 16777374, metadata !110, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fs] [line 158]
!1970 = metadata !{i32 158, i32 33, metadata !621, null}
!1971 = metadata !{i32 786689, metadata !621, metadata !"op", metadata !107, i32 33554590, metadata !547, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [op] [line 158]
!1972 = metadata !{i32 158, i32 44, metadata !621, null}
!1973 = metadata !{i32 786689, metadata !621, metadata !"A", metadata !107, i32 50331806, metadata !137, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [A] [line 158]
!1974 = metadata !{i32 158, i32 52, metadata !621, null}
!1975 = metadata !{i32 786689, metadata !621, metadata !"B", metadata !107, i32 67109022, metadata !137, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [B] [line 158]
!1976 = metadata !{i32 158, i32 59, metadata !621, null}
!1977 = metadata !{i32 786689, metadata !621, metadata !"C", metadata !107, i32 83886238, metadata !137, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [C] [line 158]
!1978 = metadata !{i32 158, i32 66, metadata !621, null}
!1979 = metadata !{i32 159, i32 3, metadata !621, null}
!1980 = metadata !{i32 160, i32 10, metadata !621, null}
!1981 = metadata !{i32 786689, metadata !635, metadata !"fs", metadata !107, i32 16777857, metadata !110, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fs] [line 641]
!1982 = metadata !{i32 641, i32 42, metadata !635, null}
!1983 = metadata !{i32 786689, metadata !635, metadata !"e", metadata !107, i32 33555073, metadata !565, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [e] [line 641]
!1984 = metadata !{i32 641, i32 55, metadata !635, null}
!1985 = metadata !{i32 642, i32 7, metadata !1986, null}
!1986 = metadata !{i32 786443, metadata !106, metadata !635, i32 642, i32 7, i32 0, i32 106} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!1987 = metadata !{i32 643, i32 5, metadata !1988, null}
!1988 = metadata !{i32 786443, metadata !106, metadata !1986, i32 642, i32 26, i32 0, i32 107} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!1989 = metadata !{i32 644, i32 5, metadata !1988, null}
!1990 = metadata !{i32 645, i32 3, metadata !1988, null}
!1991 = metadata !{i32 646, i32 1, metadata !635, null}
!1992 = metadata !{i32 786689, metadata !630, metadata !"fs", metadata !107, i32 16777429, metadata !110, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fs] [line 213]
!1993 = metadata !{i32 213, i32 38, metadata !630, null}
!1994 = metadata !{i32 786689, metadata !630, metadata !"list", metadata !107, i32 33554645, metadata !137, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [list] [line 213]
!1995 = metadata !{i32 213, i32 46, metadata !630, null}
!1996 = metadata !{i32 214, i32 3, metadata !1997, null}
!1997 = metadata !{i32 786443, metadata !106, metadata !630, i32 214, i32 3, i32 0, i32 101} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!1998 = metadata !{i32 214, i32 3, metadata !1999, null}
!1999 = metadata !{i32 786443, metadata !106, metadata !2000, i32 214, i32 3, i32 2, i32 212} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!2000 = metadata !{i32 786443, metadata !106, metadata !1997, i32 214, i32 3, i32 1, i32 211} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!2001 = metadata !{i32 215, i32 7, metadata !1997, null}
!2002 = metadata !{i32 214, i32 34, metadata !1997, null}
!2003 = metadata !{i32 216, i32 1, metadata !630, null}
!2004 = metadata !{i32 786689, metadata !631, metadata !"fs", metadata !107, i32 16777411, metadata !110, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fs] [line 195]
!2005 = metadata !{i32 195, i32 37, metadata !631, null}
!2006 = metadata !{i32 786689, metadata !631, metadata !"node", metadata !107, i32 33554627, metadata !137, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [node] [line 195]
!2007 = metadata !{i32 195, i32 45, metadata !631, null}
!2008 = metadata !{i32 786689, metadata !631, metadata !"reg", metadata !107, i32 50331843, metadata !137, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [reg] [line 195]
!2009 = metadata !{i32 195, i32 55, metadata !631, null}
!2010 = metadata !{i32 786688, metadata !631, metadata !"i", metadata !107, i32 196, metadata !394, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 196]
!2011 = metadata !{i32 196, i32 16, metadata !631, null}
!2012 = metadata !{i32 196, i32 20, metadata !631, null}
!2013 = metadata !{i32 197, i32 7, metadata !2014, null}
!2014 = metadata !{i32 786443, metadata !106, metadata !631, i32 197, i32 7, i32 0, i32 102} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!2015 = metadata !{i32 198, i32 5, metadata !2014, null}
!2016 = metadata !{i32 199, i32 7, metadata !2017, null}
!2017 = metadata !{i32 786443, metadata !106, metadata !631, i32 199, i32 7, i32 0, i32 103} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!2018 = metadata !{i32 199, i32 7, metadata !2019, null}
!2019 = metadata !{i32 786443, metadata !106, metadata !2017, i32 199, i32 7, i32 1, i32 213} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!2020 = metadata !{i32 200, i32 5, metadata !2017, null}
!2021 = metadata !{i32 204, i32 5, metadata !2022, null}
!2022 = metadata !{i32 786443, metadata !106, metadata !2017, i32 201, i32 8, i32 0, i32 104} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!2023 = metadata !{i32 206, i32 3, metadata !631, null}
!2024 = metadata !{i32 207, i32 1, metadata !631, null}
!2025 = metadata !{i32 786689, metadata !632, metadata !"fs", metadata !107, i32 16777395, metadata !110, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fs] [line 179]
!2026 = metadata !{i32 179, i32 48, metadata !632, null}
!2027 = metadata !{i32 786689, metadata !632, metadata !"pc", metadata !107, i32 33554611, metadata !137, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pc] [line 179]
!2028 = metadata !{i32 179, i32 56, metadata !632, null}
!2029 = metadata !{i32 786688, metadata !632, metadata !"pi", metadata !107, i32 180, metadata !394, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pi] [line 180]
!2030 = metadata !{i32 180, i32 16, metadata !632, null}
!2031 = metadata !{i32 180, i32 3, metadata !632, null}
!2032 = metadata !{i32 181, i32 7, metadata !2033, null}
!2033 = metadata !{i32 786443, metadata !106, metadata !632, i32 181, i32 7, i32 0, i32 105} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!2034 = metadata !{i32 181, i32 7, metadata !2035, null}
!2035 = metadata !{i32 786443, metadata !106, metadata !2033, i32 181, i32 7, i32 1, i32 214} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!2036 = metadata !{i32 182, i32 5, metadata !2033, null}
!2037 = metadata !{i32 184, i32 5, metadata !2033, null}
!2038 = metadata !{i32 185, i32 1, metadata !632, null}
!2039 = metadata !{i32 786689, metadata !636, metadata !"fs", metadata !107, i32 16777811, metadata !110, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fs] [line 595]
!2040 = metadata !{i32 595, i32 39, metadata !636, null}
!2041 = metadata !{i32 786689, metadata !636, metadata !"e", metadata !107, i32 33555027, metadata !565, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [e] [line 595]
!2042 = metadata !{i32 595, i32 52, metadata !636, null}
!2043 = metadata !{i32 786689, metadata !636, metadata !"reg", metadata !107, i32 50332243, metadata !137, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [reg] [line 595]
!2044 = metadata !{i32 595, i32 59, metadata !636, null}
!2045 = metadata !{i32 596, i32 3, metadata !636, null}
!2046 = metadata !{i32 597, i32 3, metadata !636, null}
!2047 = metadata !{i32 599, i32 7, metadata !2048, null}
!2048 = metadata !{i32 786443, metadata !106, metadata !2049, i32 598, i32 16, i32 0, i32 109} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!2049 = metadata !{i32 786443, metadata !106, metadata !636, i32 597, i32 17, i32 0, i32 108} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!2050 = metadata !{i32 600, i32 7, metadata !2048, null}
!2051 = metadata !{i32 603, i32 7, metadata !2052, null}
!2052 = metadata !{i32 786443, metadata !106, metadata !2049, i32 602, i32 30, i32 0, i32 110} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!2053 = metadata !{i32 604, i32 7, metadata !2052, null}
!2054 = metadata !{i32 607, i32 7, metadata !2055, null}
!2055 = metadata !{i32 786443, metadata !106, metadata !2049, i32 606, i32 14, i32 0, i32 111} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!2056 = metadata !{i32 608, i32 7, metadata !2055, null}
!2057 = metadata !{i32 611, i32 7, metadata !2058, null}
!2058 = metadata !{i32 786443, metadata !106, metadata !2049, i32 610, i32 17, i32 0, i32 112} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!2059 = metadata !{i32 611, i32 27, metadata !2058, null}
!2060 = metadata !{i32 612, i32 7, metadata !2058, null}
!2061 = metadata !{i32 615, i32 7, metadata !2062, null}
!2062 = metadata !{i32 786443, metadata !106, metadata !2049, i32 614, i32 17, i32 0, i32 113} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!2063 = metadata !{i32 615, i32 27, metadata !2062, null}
!2064 = metadata !{i32 616, i32 7, metadata !2062, null}
!2065 = metadata !{i32 786688, metadata !2066, metadata !"pc", metadata !107, i32 619, metadata !394, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pc] [line 619]
!2066 = metadata !{i32 786443, metadata !106, metadata !2049, i32 618, i32 22, i32 0, i32 114} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!2067 = metadata !{i32 619, i32 20, metadata !2066, null}
!2068 = metadata !{i32 619, i32 7, metadata !2066, null}
!2069 = metadata !{i32 620, i32 7, metadata !2066, null}
!2070 = metadata !{i32 621, i32 7, metadata !2066, null}
!2071 = metadata !{i32 624, i32 11, metadata !2072, null}
!2072 = metadata !{i32 786443, metadata !106, metadata !2073, i32 624, i32 11, i32 0, i32 116} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!2073 = metadata !{i32 786443, metadata !106, metadata !2049, i32 623, i32 21, i32 0, i32 115} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!2074 = metadata !{i32 625, i32 9, metadata !2072, null}
!2075 = metadata !{i32 626, i32 7, metadata !2073, null}
!2076 = metadata !{i32 630, i32 7, metadata !2077, null}
!2077 = metadata !{i32 786443, metadata !106, metadata !2049, i32 628, i32 14, i32 0, i32 117} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!2078 = metadata !{i32 633, i32 3, metadata !636, null}
!2079 = metadata !{i32 634, i32 3, metadata !636, null}
!2080 = metadata !{i32 635, i32 1, metadata !636, null}
!2081 = metadata !{i32 635, i32 1, metadata !2082, null}
!2082 = metadata !{i32 786443, metadata !106, metadata !636, i32 635, i32 1, i32 1, i32 215} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!2083 = metadata !{i32 786689, metadata !643, metadata !"op", metadata !107, i32 16778176, metadata !137, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [op] [line 960]
!2084 = metadata !{i32 960, i32 25, metadata !643, null}
!2085 = metadata !{i32 786689, metadata !643, metadata !"v1", metadata !107, i32 33555392, metadata !146, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [v1] [line 960]
!2086 = metadata !{i32 960, i32 37, metadata !643, null}
!2087 = metadata !{i32 786689, metadata !643, metadata !"v2", metadata !107, i32 50332608, metadata !146, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [v2] [line 960]
!2088 = metadata !{i32 960, i32 49, metadata !643, null}
!2089 = metadata !{i32 961, i32 3, metadata !643, null}
!2090 = metadata !{i32 786688, metadata !2091, metadata !"i", metadata !107, i32 964, metadata !389, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 964]
!2091 = metadata !{i32 786443, metadata !106, metadata !2092, i32 963, i32 54, i32 0, i32 124} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!2092 = metadata !{i32 786443, metadata !106, metadata !643, i32 961, i32 15, i32 0, i32 123} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!2093 = metadata !{i32 964, i32 19, metadata !2091, null}
!2094 = metadata !{i32 965, i32 7, metadata !2091, null}
!2095 = metadata !{i32 965, i32 7, metadata !2096, null}
!2096 = metadata !{i32 786443, metadata !106, metadata !2091, i32 965, i32 7, i32 1, i32 216} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!2097 = metadata !{i32 965, i32 15, metadata !2098, null}
!2098 = metadata !{i32 786443, metadata !106, metadata !2091, i32 965, i32 15, i32 2, i32 217} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!2099 = metadata !{i32 965, i32 15, metadata !2100, null}
!2100 = metadata !{i32 786443, metadata !106, metadata !2101, i32 965, i32 15, i32 5, i32 220} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!2101 = metadata !{i32 786443, metadata !106, metadata !2091, i32 965, i32 15, i32 3, i32 218} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!2102 = metadata !{i32 965, i32 15, metadata !2103, null}
!2103 = metadata !{i32 786443, metadata !106, metadata !2091, i32 965, i32 15, i32 7, i32 222} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!2104 = metadata !{i32 965, i32 36, metadata !2105, null}
!2105 = metadata !{i32 786443, metadata !106, metadata !2091, i32 965, i32 36, i32 8, i32 223} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!2106 = metadata !{i32 965, i32 36, metadata !2091, null}
!2107 = metadata !{i32 965, i32 36, metadata !2108, null}
!2108 = metadata !{i32 786443, metadata !106, metadata !2109, i32 965, i32 36, i32 10, i32 225} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!2109 = metadata !{i32 786443, metadata !106, metadata !2091, i32 965, i32 36, i32 9, i32 224} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!2110 = metadata !{i32 965, i32 36, metadata !2111, null}
!2111 = metadata !{i32 786443, metadata !106, metadata !2112, i32 965, i32 36, i32 6, i32 221} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!2112 = metadata !{i32 786443, metadata !106, metadata !2091, i32 965, i32 36, i32 4, i32 219} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!2113 = metadata !{i32 968, i32 7, metadata !2092, null}
!2114 = metadata !{i32 968, i32 7, metadata !2115, null}
!2115 = metadata !{i32 786443, metadata !106, metadata !2092, i32 968, i32 7, i32 1, i32 226} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!2116 = metadata !{i32 968, i32 7, metadata !2117, null}
!2117 = metadata !{i32 786443, metadata !106, metadata !2092, i32 968, i32 7, i32 2, i32 227} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!2118 = metadata !{i32 968, i32 7, metadata !2119, null}
!2119 = metadata !{i32 786443, metadata !106, metadata !2120, i32 968, i32 7, i32 4, i32 229} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!2120 = metadata !{i32 786443, metadata !106, metadata !2092, i32 968, i32 7, i32 3, i32 228} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!2121 = metadata !{i32 969, i32 14, metadata !2092, null}
!2122 = metadata !{i32 971, i32 1, metadata !643, null}
!2123 = metadata !{i32 786689, metadata !661, metadata !"fs", metadata !107, i32 16777875, metadata !110, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fs] [line 659]
!2124 = metadata !{i32 659, i32 35, metadata !661, null}
!2125 = metadata !{i32 786689, metadata !661, metadata !"list", metadata !107, i32 33555091, metadata !137, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [list] [line 659]
!2126 = metadata !{i32 659, i32 43, metadata !661, null}
!2127 = metadata !{i32 660, i32 3, metadata !2128, null}
!2128 = metadata !{i32 786443, metadata !106, metadata !661, i32 660, i32 3, i32 0, i32 137} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!2129 = metadata !{i32 660, i32 3, metadata !2130, null}
!2130 = metadata !{i32 786443, metadata !106, metadata !2131, i32 660, i32 3, i32 2, i32 232} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!2131 = metadata !{i32 786443, metadata !106, metadata !2128, i32 660, i32 3, i32 1, i32 230} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!2132 = metadata !{i32 786688, metadata !2133, metadata !"i", metadata !107, i32 661, metadata !315, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 661]
!2133 = metadata !{i32 786443, metadata !106, metadata !2128, i32 660, i32 53, i32 0, i32 138} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!2134 = metadata !{i32 661, i32 17, metadata !2133, null}
!2135 = metadata !{i32 661, i32 22, metadata !2133, null}
!2136 = metadata !{i32 662, i32 9, metadata !2137, null}
!2137 = metadata !{i32 786443, metadata !106, metadata !2133, i32 662, i32 9, i32 0, i32 139} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!2138 = metadata !{i32 662, i32 38, metadata !2139, null}
!2139 = metadata !{i32 786443, metadata !106, metadata !2137, i32 662, i32 38, i32 1, i32 231} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcode.c]
!2140 = metadata !{i32 663, i32 3, metadata !2133, null}
!2141 = metadata !{i32 660, i32 34, metadata !2128, null}
!2142 = metadata !{i32 664, i32 3, metadata !661, null}
!2143 = metadata !{i32 665, i32 1, metadata !661, null}
!2144 = metadata !{i32 786689, metadata !658, metadata !"fs", metadata !107, i32 16777865, metadata !110, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fs] [line 649]
!2145 = metadata !{i32 649, i32 38, metadata !658, null}
!2146 = metadata !{i32 786689, metadata !658, metadata !"A", metadata !107, i32 33555081, metadata !137, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [A] [line 649]
!2147 = metadata !{i32 649, i32 46, metadata !658, null}
!2148 = metadata !{i32 786689, metadata !658, metadata !"b", metadata !107, i32 50332297, metadata !137, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b] [line 649]
!2149 = metadata !{i32 649, i32 53, metadata !658, null}
!2150 = metadata !{i32 786689, metadata !658, metadata !"jump", metadata !107, i32 67109513, metadata !137, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [jump] [line 649]
!2151 = metadata !{i32 649, i32 60, metadata !658, null}
!2152 = metadata !{i32 650, i32 3, metadata !658, null}
!2153 = metadata !{i32 651, i32 10, metadata !658, null}
!2154 = metadata !{i32 786689, metadata !671, metadata !"fs", metadata !107, i32 16777458, metadata !110, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fs] [line 242]
!2155 = metadata !{i32 242, i32 38, metadata !671, null}
!2156 = metadata !{i32 243, i32 3, metadata !671, null}
!2157 = metadata !{i32 244, i32 3, metadata !671, null}
!2158 = metadata !{i32 245, i32 1, metadata !671, null}
