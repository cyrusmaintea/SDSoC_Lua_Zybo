; ModuleID = 'C:/Users/DevolutionX/workspace/lua/src/llex.c'
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
%union.GCUnion = type { %union.Closure, [88 x i8] }
%union.Closure = type { %struct.CClosure }
%struct.CClosure = type { %struct.GCObject*, i8, i8, i8, %struct.GCObject*, i32 (%struct.lua_State*)*, [1 x %struct.lua_TValue] }
%struct.LexState = type { i32, i32, i32, %struct.Token, %struct.Token, %struct.FuncState*, %struct.lua_State*, %struct.Zio*, %struct.Mbuffer*, %struct.Table*, %struct.Dyndata*, %struct.TString*, %struct.TString* }
%struct.Token = type { i32, %union.SemInfo }
%union.SemInfo = type { double }
%struct.FuncState = type { %struct.Proto*, %struct.FuncState*, %struct.LexState*, %struct.BlockCnt*, i32, i32, i32, i32, i32, i32, i16, i8, i8, i8 }
%struct.Proto = type { %struct.GCObject*, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, %struct.lua_TValue*, i32*, %struct.Proto**, i32*, %struct.LocVar*, %struct.Upvaldesc*, %struct.LClosure*, %struct.TString*, %struct.GCObject* }
%struct.LocVar = type { %struct.TString*, i32, i32 }
%struct.Upvaldesc = type { %struct.TString*, i8, i8 }
%struct.LClosure = type { %struct.GCObject*, i8, i8, i8, %struct.GCObject*, %struct.Proto*, [1 x %struct.UpVal*] }
%struct.BlockCnt = type opaque
%struct.Zio = type { i32, i8*, i8* (%struct.lua_State*, i8*, i32*)*, i8*, %struct.lua_State* }
%struct.Mbuffer = type { i8*, i32, i32 }
%struct.Dyndata = type { %struct.anon.3, %struct.Labellist, %struct.Labellist }
%struct.anon.3 = type { %struct.Vardesc*, i32, i32 }
%struct.Vardesc = type { i16 }
%struct.Labellist = type { %struct.Labeldesc*, i32, i32 }
%struct.Labeldesc = type { %struct.TString*, i32, i32, i8 }

@.str = private unnamed_addr constant [5 x i8] c"_ENV\00", align 1
@luaX_tokens = internal constant [37 x i8*] [i8* getelementptr inbounds ([4 x i8]* @.str22, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str23, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str24, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str25, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str26, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str27, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str28, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str29, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str30, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str31, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str32, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str33, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str34, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str35, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str36, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str37, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str38, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str39, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str40, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str41, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str42, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str43, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str44, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str45, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str46, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str47, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str48, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str49, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str50, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str51, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str52, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @.str53, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str54, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str55, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @.str56, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @.str57, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str58, i32 0, i32 0)], align 4
@.str1 = private unnamed_addr constant [5 x i8] c"'%c'\00", align 1
@.str2 = private unnamed_addr constant [5 x i8] c"'%s'\00", align 1
@.str3 = private unnamed_addr constant [30 x i8] c"invalid long string delimiter\00", align 1
@luai_ctype_ = external hidden constant [257 x i8]
@.str4 = private unnamed_addr constant [3 x i8] c"Ee\00", align 1
@.str5 = private unnamed_addr constant [3 x i8] c"xX\00", align 1
@.str6 = private unnamed_addr constant [3 x i8] c"Pp\00", align 1
@.str7 = private unnamed_addr constant [3 x i8] c"-+\00", align 1
@.str8 = private unnamed_addr constant [17 x i8] c"malformed number\00", align 1
@.str9 = private unnamed_addr constant [25 x i8] c"lexical element too long\00", align 1
@.str10 = private unnamed_addr constant [18 x i8] c"unfinished string\00", align 1
@.str11 = private unnamed_addr constant [24 x i8] c"invalid escape sequence\00", align 1
@.str12 = private unnamed_addr constant [25 x i8] c"decimal escape too large\00", align 1
@.str13 = private unnamed_addr constant [12 x i8] c"missing '{'\00", align 1
@.str14 = private unnamed_addr constant [22 x i8] c"UTF-8 value too large\00", align 1
@.str15 = private unnamed_addr constant [12 x i8] c"missing '}'\00", align 1
@.str16 = private unnamed_addr constant [27 x i8] c"hexadecimal digit expected\00", align 1
@.str17 = private unnamed_addr constant [7 x i8] c"string\00", align 1
@.str18 = private unnamed_addr constant [8 x i8] c"comment\00", align 1
@.str19 = private unnamed_addr constant [41 x i8] c"unfinished long %s (starting at line %d)\00", align 1
@.str20 = private unnamed_addr constant [25 x i8] c"chunk has too many lines\00", align 1
@.str21 = private unnamed_addr constant [11 x i8] c"%s near %s\00", align 1
@.str22 = private unnamed_addr constant [4 x i8] c"and\00", align 1
@.str23 = private unnamed_addr constant [6 x i8] c"break\00", align 1
@.str24 = private unnamed_addr constant [3 x i8] c"do\00", align 1
@.str25 = private unnamed_addr constant [5 x i8] c"else\00", align 1
@.str26 = private unnamed_addr constant [7 x i8] c"elseif\00", align 1
@.str27 = private unnamed_addr constant [4 x i8] c"end\00", align 1
@.str28 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str29 = private unnamed_addr constant [4 x i8] c"for\00", align 1
@.str30 = private unnamed_addr constant [9 x i8] c"function\00", align 1
@.str31 = private unnamed_addr constant [5 x i8] c"goto\00", align 1
@.str32 = private unnamed_addr constant [3 x i8] c"if\00", align 1
@.str33 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str34 = private unnamed_addr constant [6 x i8] c"local\00", align 1
@.str35 = private unnamed_addr constant [4 x i8] c"nil\00", align 1
@.str36 = private unnamed_addr constant [4 x i8] c"not\00", align 1
@.str37 = private unnamed_addr constant [3 x i8] c"or\00", align 1
@.str38 = private unnamed_addr constant [7 x i8] c"repeat\00", align 1
@.str39 = private unnamed_addr constant [7 x i8] c"return\00", align 1
@.str40 = private unnamed_addr constant [5 x i8] c"then\00", align 1
@.str41 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str42 = private unnamed_addr constant [6 x i8] c"until\00", align 1
@.str43 = private unnamed_addr constant [6 x i8] c"while\00", align 1
@.str44 = private unnamed_addr constant [3 x i8] c"//\00", align 1
@.str45 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str46 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@.str47 = private unnamed_addr constant [3 x i8] c"==\00", align 1
@.str48 = private unnamed_addr constant [3 x i8] c">=\00", align 1
@.str49 = private unnamed_addr constant [3 x i8] c"<=\00", align 1
@.str50 = private unnamed_addr constant [3 x i8] c"~=\00", align 1
@.str51 = private unnamed_addr constant [3 x i8] c"<<\00", align 1
@.str52 = private unnamed_addr constant [3 x i8] c">>\00", align 1
@.str53 = private unnamed_addr constant [3 x i8] c"::\00", align 1
@.str54 = private unnamed_addr constant [6 x i8] c"<eof>\00", align 1
@.str55 = private unnamed_addr constant [9 x i8] c"<number>\00", align 1
@.str56 = private unnamed_addr constant [10 x i8] c"<integer>\00", align 1
@.str57 = private unnamed_addr constant [7 x i8] c"<name>\00", align 1
@.str58 = private unnamed_addr constant [9 x i8] c"<string>\00", align 1

; Function Attrs: nounwind
define hidden void @luaX_init(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %i = alloca i32, align 4
  %e = alloca %struct.TString*, align 4
  %ts = alloca %struct.TString*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !649), !dbg !650
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !651), !dbg !652
  call void @llvm.dbg.declare(metadata !{%struct.TString** %e}, metadata !653), !dbg !654
  %2 = load %struct.lua_State** %1, align 4, !dbg !655
  %3 = call %struct.TString* @luaS_newlstr(%struct.lua_State* %2, i8* getelementptr inbounds ([5 x i8]* @.str, i32 0, i32 0), i32 4), !dbg !655
  store %struct.TString* %3, %struct.TString** %e, align 4, !dbg !655
  %4 = load %struct.lua_State** %1, align 4, !dbg !656
  %5 = load %struct.TString** %e, align 4, !dbg !656
  %6 = bitcast %struct.TString* %5 to %union.GCUnion*, !dbg !656
  %7 = bitcast %union.GCUnion* %6 to %struct.GCObject*, !dbg !656
  call void @luaC_fix(%struct.lua_State* %4, %struct.GCObject* %7), !dbg !656
  store i32 0, i32* %i, align 4, !dbg !657
  br label %8, !dbg !657

; <label>:8                                       ; preds = %26, %0
  %9 = load i32* %i, align 4, !dbg !659
  %10 = icmp slt i32 %9, 22, !dbg !659
  br i1 %10, label %11, label %29, !dbg !659

; <label>:11                                      ; preds = %8
  call void @llvm.dbg.declare(metadata !{%struct.TString** %ts}, metadata !662), !dbg !664
  %12 = load %struct.lua_State** %1, align 4, !dbg !665
  %13 = load i32* %i, align 4, !dbg !665
  %14 = getelementptr inbounds [37 x i8*]* @luaX_tokens, i32 0, i32 %13, !dbg !665
  %15 = load i8** %14, align 4, !dbg !665
  %16 = call %struct.TString* @luaS_new(%struct.lua_State* %12, i8* %15), !dbg !665
  store %struct.TString* %16, %struct.TString** %ts, align 4, !dbg !665
  %17 = load %struct.lua_State** %1, align 4, !dbg !666
  %18 = load %struct.TString** %ts, align 4, !dbg !666
  %19 = bitcast %struct.TString* %18 to %union.GCUnion*, !dbg !666
  %20 = bitcast %union.GCUnion* %19 to %struct.GCObject*, !dbg !666
  call void @luaC_fix(%struct.lua_State* %17, %struct.GCObject* %20), !dbg !666
  %21 = load i32* %i, align 4, !dbg !667
  %22 = add nsw i32 %21, 1, !dbg !667
  %23 = trunc i32 %22 to i8, !dbg !667
  %24 = load %struct.TString** %ts, align 4, !dbg !667
  %25 = getelementptr inbounds %struct.TString* %24, i32 0, i32 3, !dbg !667
  store i8 %23, i8* %25, align 1, !dbg !667
  br label %26, !dbg !668

; <label>:26                                      ; preds = %11
  %27 = load i32* %i, align 4, !dbg !669
  %28 = add nsw i32 %27, 1, !dbg !669
  store i32 %28, i32* %i, align 4, !dbg !669
  br label %8, !dbg !669

; <label>:29                                      ; preds = %8
  ret void, !dbg !670
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

declare hidden %struct.TString* @luaS_newlstr(%struct.lua_State*, i8*, i32) #2

declare hidden void @luaC_fix(%struct.lua_State*, %struct.GCObject*) #2

declare hidden %struct.TString* @luaS_new(%struct.lua_State*, i8*) #2

; Function Attrs: nounwind
define hidden i8* @luaX_token2str(%struct.LexState* %ls, i32 %token) #0 {
  %1 = alloca i8*, align 4
  %2 = alloca %struct.LexState*, align 4
  %3 = alloca i32, align 4
  %s = alloca i8*, align 4
  store %struct.LexState* %ls, %struct.LexState** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.LexState** %2}, metadata !671), !dbg !672
  store i32 %token, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !673), !dbg !674
  %4 = load i32* %3, align 4, !dbg !675
  %5 = icmp slt i32 %4, 257, !dbg !675
  br i1 %5, label %6, label %12, !dbg !675

; <label>:6                                       ; preds = %0
  %7 = load %struct.LexState** %2, align 4, !dbg !677
  %8 = getelementptr inbounds %struct.LexState* %7, i32 0, i32 6, !dbg !677
  %9 = load %struct.lua_State** %8, align 4, !dbg !677
  %10 = load i32* %3, align 4, !dbg !677
  %11 = call i8* (%struct.lua_State*, i8*, ...)* @luaO_pushfstring(%struct.lua_State* %9, i8* getelementptr inbounds ([5 x i8]* @.str1, i32 0, i32 0), i32 %10), !dbg !677
  store i8* %11, i8** %1, !dbg !677
  br label %27, !dbg !677

; <label>:12                                      ; preds = %0
  call void @llvm.dbg.declare(metadata !{i8** %s}, metadata !679), !dbg !681
  %13 = load i32* %3, align 4, !dbg !682
  %14 = sub nsw i32 %13, 257, !dbg !682
  %15 = getelementptr inbounds [37 x i8*]* @luaX_tokens, i32 0, i32 %14, !dbg !682
  %16 = load i8** %15, align 4, !dbg !682
  store i8* %16, i8** %s, align 4, !dbg !682
  %17 = load i32* %3, align 4, !dbg !683
  %18 = icmp slt i32 %17, 289, !dbg !683
  br i1 %18, label %19, label %25, !dbg !683

; <label>:19                                      ; preds = %12
  %20 = load %struct.LexState** %2, align 4, !dbg !685
  %21 = getelementptr inbounds %struct.LexState* %20, i32 0, i32 6, !dbg !685
  %22 = load %struct.lua_State** %21, align 4, !dbg !685
  %23 = load i8** %s, align 4, !dbg !685
  %24 = call i8* (%struct.lua_State*, i8*, ...)* @luaO_pushfstring(%struct.lua_State* %22, i8* getelementptr inbounds ([5 x i8]* @.str2, i32 0, i32 0), i8* %23), !dbg !685
  store i8* %24, i8** %1, !dbg !685
  br label %27, !dbg !685

; <label>:25                                      ; preds = %12
  %26 = load i8** %s, align 4, !dbg !686
  store i8* %26, i8** %1, !dbg !686
  br label %27, !dbg !686

; <label>:27                                      ; preds = %25, %19, %6
  %28 = load i8** %1, !dbg !687
  ret i8* %28, !dbg !687
}

declare hidden i8* @luaO_pushfstring(%struct.lua_State*, i8*, ...) #2

; Function Attrs: noreturn nounwind
define hidden void @luaX_syntaxerror(%struct.LexState* %ls, i8* %msg) #3 {
  %1 = alloca %struct.LexState*, align 4
  %2 = alloca i8*, align 4
  store %struct.LexState* %ls, %struct.LexState** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.LexState** %1}, metadata !688), !dbg !689
  store i8* %msg, i8** %2, align 4
  call void @llvm.dbg.declare(metadata !{i8** %2}, metadata !690), !dbg !691
  %3 = load %struct.LexState** %1, align 4, !dbg !692
  %4 = load i8** %2, align 4, !dbg !692
  %5 = load %struct.LexState** %1, align 4, !dbg !692
  %6 = getelementptr inbounds %struct.LexState* %5, i32 0, i32 3, !dbg !692
  %7 = getelementptr inbounds %struct.Token* %6, i32 0, i32 0, !dbg !692
  %8 = load i32* %7, align 4, !dbg !692
  call void @lexerror(%struct.LexState* %3, i8* %4, i32 %8) #6, !dbg !692
  unreachable, !dbg !692
                                                  ; No predecessors!
  ret void, !dbg !693
}

; Function Attrs: noreturn nounwind
define internal void @lexerror(%struct.LexState* %ls, i8* %msg, i32 %token) #3 {
  %1 = alloca %struct.LexState*, align 4
  %2 = alloca i8*, align 4
  %3 = alloca i32, align 4
  store %struct.LexState* %ls, %struct.LexState** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.LexState** %1}, metadata !694), !dbg !695
  store i8* %msg, i8** %2, align 4
  call void @llvm.dbg.declare(metadata !{i8** %2}, metadata !696), !dbg !697
  store i32 %token, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !698), !dbg !699
  %4 = load %struct.LexState** %1, align 4, !dbg !700
  %5 = getelementptr inbounds %struct.LexState* %4, i32 0, i32 6, !dbg !700
  %6 = load %struct.lua_State** %5, align 4, !dbg !700
  %7 = load i8** %2, align 4, !dbg !700
  %8 = load %struct.LexState** %1, align 4, !dbg !700
  %9 = getelementptr inbounds %struct.LexState* %8, i32 0, i32 11, !dbg !700
  %10 = load %struct.TString** %9, align 4, !dbg !700
  %11 = load %struct.LexState** %1, align 4, !dbg !700
  %12 = getelementptr inbounds %struct.LexState* %11, i32 0, i32 1, !dbg !700
  %13 = load i32* %12, align 4, !dbg !700
  %14 = call i8* @luaG_addinfo(%struct.lua_State* %6, i8* %7, %struct.TString* %10, i32 %13), !dbg !700
  store i8* %14, i8** %2, align 4, !dbg !700
  %15 = load i32* %3, align 4, !dbg !701
  %16 = icmp ne i32 %15, 0, !dbg !701
  br i1 %16, label %17, label %26, !dbg !701

; <label>:17                                      ; preds = %0
  %18 = load %struct.LexState** %1, align 4, !dbg !703
  %19 = getelementptr inbounds %struct.LexState* %18, i32 0, i32 6, !dbg !703
  %20 = load %struct.lua_State** %19, align 4, !dbg !703
  %21 = load i8** %2, align 4, !dbg !703
  %22 = load %struct.LexState** %1, align 4, !dbg !704
  %23 = load i32* %3, align 4, !dbg !704
  %24 = call i8* @txtToken(%struct.LexState* %22, i32 %23), !dbg !704
  %25 = call i8* (%struct.lua_State*, i8*, ...)* @luaO_pushfstring(%struct.lua_State* %20, i8* getelementptr inbounds ([11 x i8]* @.str21, i32 0, i32 0), i8* %21, i8* %24), !dbg !703
  br label %26, !dbg !703

; <label>:26                                      ; preds = %17, %0
  %27 = load %struct.LexState** %1, align 4, !dbg !705
  %28 = getelementptr inbounds %struct.LexState* %27, i32 0, i32 6, !dbg !705
  %29 = load %struct.lua_State** %28, align 4, !dbg !705
  call void @luaD_throw(%struct.lua_State* %29, i32 3) #6, !dbg !705
  unreachable, !dbg !705
                                                  ; No predecessors!
  ret void, !dbg !706
}

; Function Attrs: nounwind
define hidden %struct.TString* @luaX_newstring(%struct.LexState* %ls, i8* %str, i32 %l) #0 {
  %1 = alloca %struct.LexState*, align 4
  %2 = alloca i8*, align 4
  %3 = alloca i32, align 4
  %L = alloca %struct.lua_State*, align 4
  %o = alloca %struct.lua_TValue*, align 4
  %ts = alloca %struct.TString*, align 4
  %io = alloca %struct.lua_TValue*, align 4
  %x_ = alloca %struct.TString*, align 4
  %io1 = alloca %struct.lua_TValue*, align 4
  store %struct.LexState* %ls, %struct.LexState** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.LexState** %1}, metadata !707), !dbg !708
  store i8* %str, i8** %2, align 4
  call void @llvm.dbg.declare(metadata !{i8** %2}, metadata !709), !dbg !710
  store i32 %l, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !711), !dbg !712
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %L}, metadata !713), !dbg !714
  %4 = load %struct.LexState** %1, align 4, !dbg !715
  %5 = getelementptr inbounds %struct.LexState* %4, i32 0, i32 6, !dbg !715
  %6 = load %struct.lua_State** %5, align 4, !dbg !715
  store %struct.lua_State* %6, %struct.lua_State** %L, align 4, !dbg !715
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %o}, metadata !716), !dbg !717
  call void @llvm.dbg.declare(metadata !{%struct.TString** %ts}, metadata !718), !dbg !719
  %7 = load %struct.lua_State** %L, align 4, !dbg !720
  %8 = load i8** %2, align 4, !dbg !720
  %9 = load i32* %3, align 4, !dbg !720
  %10 = call %struct.TString* @luaS_newlstr(%struct.lua_State* %7, i8* %8, i32 %9), !dbg !720
  store %struct.TString* %10, %struct.TString** %ts, align 4, !dbg !720
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %io}, metadata !721), !dbg !723
  %11 = load %struct.lua_State** %L, align 4, !dbg !723
  %12 = getelementptr inbounds %struct.lua_State* %11, i32 0, i32 5, !dbg !723
  %13 = load %struct.lua_TValue** %12, align 4, !dbg !723
  %14 = getelementptr inbounds %struct.lua_TValue* %13, i32 1, !dbg !723
  store %struct.lua_TValue* %14, %struct.lua_TValue** %12, align 4, !dbg !723
  store %struct.lua_TValue* %13, %struct.lua_TValue** %io, align 4, !dbg !723
  call void @llvm.dbg.declare(metadata !{%struct.TString** %x_}, metadata !724), !dbg !723
  %15 = load %struct.TString** %ts, align 4, !dbg !723
  store %struct.TString* %15, %struct.TString** %x_, align 4, !dbg !723
  %16 = load %struct.TString** %x_, align 4, !dbg !723
  %17 = bitcast %struct.TString* %16 to %union.GCUnion*, !dbg !723
  %18 = bitcast %union.GCUnion* %17 to %struct.GCObject*, !dbg !723
  %19 = load %struct.lua_TValue** %io, align 4, !dbg !723
  %20 = getelementptr inbounds %struct.lua_TValue* %19, i32 0, i32 0, !dbg !723
  %21 = bitcast %union.Value* %20 to %struct.GCObject**, !dbg !723
  store %struct.GCObject* %18, %struct.GCObject** %21, align 4, !dbg !723
  %22 = load %struct.TString** %x_, align 4, !dbg !723
  %23 = getelementptr inbounds %struct.TString* %22, i32 0, i32 1, !dbg !723
  %24 = load i8* %23, align 1, !dbg !723
  %25 = zext i8 %24 to i32, !dbg !723
  %26 = or i32 %25, 64, !dbg !723
  %27 = load %struct.lua_TValue** %io, align 4, !dbg !723
  %28 = getelementptr inbounds %struct.lua_TValue* %27, i32 0, i32 1, !dbg !723
  store i32 %26, i32* %28, align 4, !dbg !723
  %29 = load %struct.lua_State** %L, align 4, !dbg !725
  %30 = load %struct.LexState** %1, align 4, !dbg !725
  %31 = getelementptr inbounds %struct.LexState* %30, i32 0, i32 9, !dbg !725
  %32 = load %struct.Table** %31, align 4, !dbg !725
  %33 = load %struct.lua_State** %L, align 4, !dbg !725
  %34 = getelementptr inbounds %struct.lua_State* %33, i32 0, i32 5, !dbg !725
  %35 = load %struct.lua_TValue** %34, align 4, !dbg !725
  %36 = getelementptr inbounds %struct.lua_TValue* %35, i32 -1, !dbg !725
  %37 = call %struct.lua_TValue* @luaH_set(%struct.lua_State* %29, %struct.Table* %32, %struct.lua_TValue* %36), !dbg !725
  store %struct.lua_TValue* %37, %struct.lua_TValue** %o, align 4, !dbg !725
  %38 = load %struct.lua_TValue** %o, align 4, !dbg !726
  %39 = getelementptr inbounds %struct.lua_TValue* %38, i32 0, i32 1, !dbg !726
  %40 = load i32* %39, align 4, !dbg !726
  %41 = icmp eq i32 %40, 0, !dbg !726
  br i1 %41, label %42, label %58, !dbg !726

; <label>:42                                      ; preds = %0
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %io1}, metadata !728), !dbg !731
  %43 = load %struct.lua_TValue** %o, align 4, !dbg !731
  store %struct.lua_TValue* %43, %struct.lua_TValue** %io1, align 4, !dbg !731
  %44 = load %struct.lua_TValue** %io1, align 4, !dbg !731
  %45 = getelementptr inbounds %struct.lua_TValue* %44, i32 0, i32 0, !dbg !731
  %46 = bitcast %union.Value* %45 to i32*, !dbg !731
  store i32 1, i32* %46, align 4, !dbg !731
  %47 = load %struct.lua_TValue** %io1, align 4, !dbg !731
  %48 = getelementptr inbounds %struct.lua_TValue* %47, i32 0, i32 1, !dbg !731
  store i32 1, i32* %48, align 4, !dbg !731
  %49 = load %struct.lua_State** %L, align 4, !dbg !732
  %50 = getelementptr inbounds %struct.lua_State* %49, i32 0, i32 6, !dbg !732
  %51 = load %struct.global_State** %50, align 4, !dbg !732
  %52 = getelementptr inbounds %struct.global_State* %51, i32 0, i32 3, !dbg !732
  %53 = load i32* %52, align 4, !dbg !732
  %54 = icmp sgt i32 %53, 0, !dbg !732
  br i1 %54, label %55, label %57, !dbg !732

; <label>:55                                      ; preds = %42
  %56 = load %struct.lua_State** %L, align 4, !dbg !735
  call void @luaC_step(%struct.lua_State* %56), !dbg !735
  br label %57, !dbg !735

; <label>:57                                      ; preds = %55, %42
  br label %70, !dbg !738

; <label>:58                                      ; preds = %0
  %59 = load %struct.lua_TValue** %o, align 4, !dbg !739
  %60 = bitcast %struct.lua_TValue* %59 to i8*, !dbg !739
  %61 = getelementptr inbounds i8* %60, i32 0, !dbg !739
  %62 = bitcast i8* %61 to %struct.Node*, !dbg !739
  %63 = getelementptr inbounds %struct.Node* %62, i32 0, i32 1, !dbg !739
  %64 = bitcast %union.TKey* %63 to %struct.lua_TValue*, !dbg !739
  %65 = getelementptr inbounds %struct.lua_TValue* %64, i32 0, i32 0, !dbg !739
  %66 = bitcast %union.Value* %65 to %struct.GCObject**, !dbg !739
  %67 = load %struct.GCObject** %66, align 4, !dbg !739
  %68 = bitcast %struct.GCObject* %67 to %union.GCUnion*, !dbg !739
  %69 = bitcast %union.GCUnion* %68 to %struct.TString*, !dbg !739
  store %struct.TString* %69, %struct.TString** %ts, align 4, !dbg !739
  br label %70

; <label>:70                                      ; preds = %58, %57
  %71 = load %struct.lua_State** %L, align 4, !dbg !741
  %72 = getelementptr inbounds %struct.lua_State* %71, i32 0, i32 5, !dbg !741
  %73 = load %struct.lua_TValue** %72, align 4, !dbg !741
  %74 = getelementptr inbounds %struct.lua_TValue* %73, i32 -1, !dbg !741
  store %struct.lua_TValue* %74, %struct.lua_TValue** %72, align 4, !dbg !741
  %75 = load %struct.TString** %ts, align 4, !dbg !742
  ret %struct.TString* %75, !dbg !742
}

declare hidden %struct.lua_TValue* @luaH_set(%struct.lua_State*, %struct.Table*, %struct.lua_TValue*) #2

declare hidden void @luaC_step(%struct.lua_State*) #2

; Function Attrs: nounwind
define hidden void @luaX_setinput(%struct.lua_State* %L, %struct.LexState* %ls, %struct.Zio* %z, %struct.TString* %source, i32 %firstchar) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca %struct.LexState*, align 4
  %3 = alloca %struct.Zio*, align 4
  %4 = alloca %struct.TString*, align 4
  %5 = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !743), !dbg !744
  store %struct.LexState* %ls, %struct.LexState** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.LexState** %2}, metadata !745), !dbg !746
  store %struct.Zio* %z, %struct.Zio** %3, align 4
  call void @llvm.dbg.declare(metadata !{%struct.Zio** %3}, metadata !747), !dbg !748
  store %struct.TString* %source, %struct.TString** %4, align 4
  call void @llvm.dbg.declare(metadata !{%struct.TString** %4}, metadata !749), !dbg !750
  store i32 %firstchar, i32* %5, align 4
  call void @llvm.dbg.declare(metadata !{i32* %5}, metadata !751), !dbg !752
  %6 = load %struct.LexState** %2, align 4, !dbg !753
  %7 = getelementptr inbounds %struct.LexState* %6, i32 0, i32 3, !dbg !753
  %8 = getelementptr inbounds %struct.Token* %7, i32 0, i32 0, !dbg !753
  store i32 0, i32* %8, align 4, !dbg !753
  %9 = load %struct.lua_State** %1, align 4, !dbg !754
  %10 = load %struct.LexState** %2, align 4, !dbg !754
  %11 = getelementptr inbounds %struct.LexState* %10, i32 0, i32 6, !dbg !754
  store %struct.lua_State* %9, %struct.lua_State** %11, align 4, !dbg !754
  %12 = load i32* %5, align 4, !dbg !755
  %13 = load %struct.LexState** %2, align 4, !dbg !755
  %14 = getelementptr inbounds %struct.LexState* %13, i32 0, i32 0, !dbg !755
  store i32 %12, i32* %14, align 4, !dbg !755
  %15 = load %struct.LexState** %2, align 4, !dbg !756
  %16 = getelementptr inbounds %struct.LexState* %15, i32 0, i32 4, !dbg !756
  %17 = getelementptr inbounds %struct.Token* %16, i32 0, i32 0, !dbg !756
  store i32 289, i32* %17, align 4, !dbg !756
  %18 = load %struct.Zio** %3, align 4, !dbg !757
  %19 = load %struct.LexState** %2, align 4, !dbg !757
  %20 = getelementptr inbounds %struct.LexState* %19, i32 0, i32 7, !dbg !757
  store %struct.Zio* %18, %struct.Zio** %20, align 4, !dbg !757
  %21 = load %struct.LexState** %2, align 4, !dbg !758
  %22 = getelementptr inbounds %struct.LexState* %21, i32 0, i32 5, !dbg !758
  store %struct.FuncState* null, %struct.FuncState** %22, align 4, !dbg !758
  %23 = load %struct.LexState** %2, align 4, !dbg !759
  %24 = getelementptr inbounds %struct.LexState* %23, i32 0, i32 1, !dbg !759
  store i32 1, i32* %24, align 4, !dbg !759
  %25 = load %struct.LexState** %2, align 4, !dbg !760
  %26 = getelementptr inbounds %struct.LexState* %25, i32 0, i32 2, !dbg !760
  store i32 1, i32* %26, align 4, !dbg !760
  %27 = load %struct.TString** %4, align 4, !dbg !761
  %28 = load %struct.LexState** %2, align 4, !dbg !761
  %29 = getelementptr inbounds %struct.LexState* %28, i32 0, i32 11, !dbg !761
  store %struct.TString* %27, %struct.TString** %29, align 4, !dbg !761
  %30 = load %struct.lua_State** %1, align 4, !dbg !762
  %31 = call %struct.TString* @luaS_newlstr(%struct.lua_State* %30, i8* getelementptr inbounds ([5 x i8]* @.str, i32 0, i32 0), i32 4), !dbg !762
  %32 = load %struct.LexState** %2, align 4, !dbg !762
  %33 = getelementptr inbounds %struct.LexState* %32, i32 0, i32 12, !dbg !762
  store %struct.TString* %31, %struct.TString** %33, align 4, !dbg !762
  %34 = load %struct.LexState** %2, align 4, !dbg !763
  %35 = getelementptr inbounds %struct.LexState* %34, i32 0, i32 6, !dbg !763
  %36 = load %struct.lua_State** %35, align 4, !dbg !763
  %37 = load %struct.LexState** %2, align 4, !dbg !763
  %38 = getelementptr inbounds %struct.LexState* %37, i32 0, i32 8, !dbg !763
  %39 = load %struct.Mbuffer** %38, align 4, !dbg !763
  %40 = getelementptr inbounds %struct.Mbuffer* %39, i32 0, i32 0, !dbg !763
  %41 = load i8** %40, align 4, !dbg !763
  %42 = load %struct.LexState** %2, align 4, !dbg !763
  %43 = getelementptr inbounds %struct.LexState* %42, i32 0, i32 8, !dbg !763
  %44 = load %struct.Mbuffer** %43, align 4, !dbg !763
  %45 = getelementptr inbounds %struct.Mbuffer* %44, i32 0, i32 2, !dbg !763
  %46 = load i32* %45, align 4, !dbg !763
  %47 = mul i32 %46, 1, !dbg !763
  %48 = call i8* @luaM_realloc_(%struct.lua_State* %36, i8* %41, i32 %47, i32 32), !dbg !763
  %49 = load %struct.LexState** %2, align 4, !dbg !763
  %50 = getelementptr inbounds %struct.LexState* %49, i32 0, i32 8, !dbg !763
  %51 = load %struct.Mbuffer** %50, align 4, !dbg !763
  %52 = getelementptr inbounds %struct.Mbuffer* %51, i32 0, i32 0, !dbg !763
  store i8* %48, i8** %52, align 4, !dbg !763
  %53 = load %struct.LexState** %2, align 4, !dbg !763
  %54 = getelementptr inbounds %struct.LexState* %53, i32 0, i32 8, !dbg !763
  %55 = load %struct.Mbuffer** %54, align 4, !dbg !763
  %56 = getelementptr inbounds %struct.Mbuffer* %55, i32 0, i32 2, !dbg !763
  store i32 32, i32* %56, align 4, !dbg !763
  ret void, !dbg !764
}

declare hidden i8* @luaM_realloc_(%struct.lua_State*, i8*, i32, i32) #2

; Function Attrs: nounwind
define hidden void @luaX_next(%struct.LexState* %ls) #0 {
  %1 = alloca %struct.LexState*, align 4
  store %struct.LexState* %ls, %struct.LexState** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.LexState** %1}, metadata !765), !dbg !766
  %2 = load %struct.LexState** %1, align 4, !dbg !767
  %3 = getelementptr inbounds %struct.LexState* %2, i32 0, i32 1, !dbg !767
  %4 = load i32* %3, align 4, !dbg !767
  %5 = load %struct.LexState** %1, align 4, !dbg !767
  %6 = getelementptr inbounds %struct.LexState* %5, i32 0, i32 2, !dbg !767
  store i32 %4, i32* %6, align 4, !dbg !767
  %7 = load %struct.LexState** %1, align 4, !dbg !768
  %8 = getelementptr inbounds %struct.LexState* %7, i32 0, i32 4, !dbg !768
  %9 = getelementptr inbounds %struct.Token* %8, i32 0, i32 0, !dbg !768
  %10 = load i32* %9, align 4, !dbg !768
  %11 = icmp ne i32 %10, 289, !dbg !768
  br i1 %11, label %12, label %22, !dbg !768

; <label>:12                                      ; preds = %0
  %13 = load %struct.LexState** %1, align 4, !dbg !770
  %14 = getelementptr inbounds %struct.LexState* %13, i32 0, i32 3, !dbg !770
  %15 = load %struct.LexState** %1, align 4, !dbg !770
  %16 = getelementptr inbounds %struct.LexState* %15, i32 0, i32 4, !dbg !770
  %17 = bitcast %struct.Token* %14 to i8*, !dbg !770
  %18 = bitcast %struct.Token* %16 to i8*, !dbg !770
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %17, i8* %18, i32 16, i32 8, i1 false), !dbg !770
  %19 = load %struct.LexState** %1, align 4, !dbg !772
  %20 = getelementptr inbounds %struct.LexState* %19, i32 0, i32 4, !dbg !772
  %21 = getelementptr inbounds %struct.Token* %20, i32 0, i32 0, !dbg !772
  store i32 289, i32* %21, align 4, !dbg !772
  br label %31, !dbg !773

; <label>:22                                      ; preds = %0
  %23 = load %struct.LexState** %1, align 4, !dbg !774
  %24 = load %struct.LexState** %1, align 4, !dbg !774
  %25 = getelementptr inbounds %struct.LexState* %24, i32 0, i32 3, !dbg !774
  %26 = getelementptr inbounds %struct.Token* %25, i32 0, i32 1, !dbg !774
  %27 = call i32 @llex(%struct.LexState* %23, %union.SemInfo* %26), !dbg !774
  %28 = load %struct.LexState** %1, align 4, !dbg !774
  %29 = getelementptr inbounds %struct.LexState* %28, i32 0, i32 3, !dbg !774
  %30 = getelementptr inbounds %struct.Token* %29, i32 0, i32 0, !dbg !774
  store i32 %27, i32* %30, align 4, !dbg !774
  br label %31

; <label>:31                                      ; preds = %22, %12
  ret void, !dbg !775
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture, i8* nocapture readonly, i32, i32, i1) #4

; Function Attrs: nounwind
define internal i32 @llex(%struct.LexState* %ls, %union.SemInfo* %seminfo) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.LexState*, align 4
  %3 = alloca %union.SemInfo*, align 4
  %sep = alloca i32, align 4
  %sep1 = alloca i32, align 4
  %ts = alloca %struct.TString*, align 4
  %c = alloca i32, align 4
  store %struct.LexState* %ls, %struct.LexState** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.LexState** %2}, metadata !776), !dbg !777
  store %union.SemInfo* %seminfo, %union.SemInfo** %3, align 4
  call void @llvm.dbg.declare(metadata !{%union.SemInfo** %3}, metadata !778), !dbg !779
  %4 = load %struct.LexState** %2, align 4, !dbg !780
  %5 = getelementptr inbounds %struct.LexState* %4, i32 0, i32 8, !dbg !780
  %6 = load %struct.Mbuffer** %5, align 4, !dbg !780
  %7 = getelementptr inbounds %struct.Mbuffer* %6, i32 0, i32 1, !dbg !780
  store i32 0, i32* %7, align 4, !dbg !780
  br label %8, !dbg !781

; <label>:8                                       ; preds = %556, %0
  %9 = load %struct.LexState** %2, align 4, !dbg !783
  %10 = getelementptr inbounds %struct.LexState* %9, i32 0, i32 0, !dbg !783
  %11 = load i32* %10, align 4, !dbg !783
  switch i32 %11, label %440 [
    i32 10, label %12
    i32 13, label %12
    i32 32, label %14
    i32 12, label %14
    i32 9, label %14
    i32 11, label %14
    i32 45, label %40
    i32 91, label %163
    i32 61, label %179
    i32 60, label %210
    i32 62, label %246
    i32 47, label %282
    i32 126, label %313
    i32 58, label %344
    i32 34, label %375
    i32 39, label %375
    i32 46, label %381
    i32 48, label %435
    i32 49, label %435
    i32 50, label %435
    i32 51, label %435
    i32 52, label %435
    i32 53, label %435
    i32 54, label %435
    i32 55, label %435
    i32 56, label %435
    i32 57, label %435
    i32 -1, label %439
  ], !dbg !783

; <label>:12                                      ; preds = %8, %8
  %13 = load %struct.LexState** %2, align 4, !dbg !785
  call void @inclinenumber(%struct.LexState* %13), !dbg !785
  br label %556, !dbg !788

; <label>:14                                      ; preds = %8, %8, %8, %8
  %15 = load %struct.LexState** %2, align 4, !dbg !789
  %16 = getelementptr inbounds %struct.LexState* %15, i32 0, i32 7, !dbg !789
  %17 = load %struct.Zio** %16, align 4, !dbg !789
  %18 = getelementptr inbounds %struct.Zio* %17, i32 0, i32 0, !dbg !789
  %19 = load i32* %18, align 4, !dbg !789
  %20 = add i32 %19, -1, !dbg !789
  store i32 %20, i32* %18, align 4, !dbg !789
  %21 = icmp ugt i32 %19, 0, !dbg !789
  br i1 %21, label %22, label %31, !dbg !789

; <label>:22                                      ; preds = %14
  %23 = load %struct.LexState** %2, align 4, !dbg !791
  %24 = getelementptr inbounds %struct.LexState* %23, i32 0, i32 7, !dbg !791
  %25 = load %struct.Zio** %24, align 4, !dbg !791
  %26 = getelementptr inbounds %struct.Zio* %25, i32 0, i32 1, !dbg !791
  %27 = load i8** %26, align 4, !dbg !791
  %28 = getelementptr inbounds i8* %27, i32 1, !dbg !791
  store i8* %28, i8** %26, align 4, !dbg !791
  %29 = load i8* %27, align 1, !dbg !791
  %30 = zext i8 %29 to i32, !dbg !791
  br label %36, !dbg !791

; <label>:31                                      ; preds = %14
  %32 = load %struct.LexState** %2, align 4, !dbg !793
  %33 = getelementptr inbounds %struct.LexState* %32, i32 0, i32 7, !dbg !793
  %34 = load %struct.Zio** %33, align 4, !dbg !793
  %35 = call i32 @luaZ_fill(%struct.Zio* %34), !dbg !793
  br label %36, !dbg !793

; <label>:36                                      ; preds = %31, %22
  %37 = phi i32 [ %30, %22 ], [ %35, %31 ], !dbg !789
  %38 = load %struct.LexState** %2, align 4, !dbg !795
  %39 = getelementptr inbounds %struct.LexState* %38, i32 0, i32 0, !dbg !795
  store i32 %37, i32* %39, align 4, !dbg !795
  br label %556, !dbg !798

; <label>:40                                      ; preds = %8
  %41 = load %struct.LexState** %2, align 4, !dbg !799
  %42 = getelementptr inbounds %struct.LexState* %41, i32 0, i32 7, !dbg !799
  %43 = load %struct.Zio** %42, align 4, !dbg !799
  %44 = getelementptr inbounds %struct.Zio* %43, i32 0, i32 0, !dbg !799
  %45 = load i32* %44, align 4, !dbg !799
  %46 = add i32 %45, -1, !dbg !799
  store i32 %46, i32* %44, align 4, !dbg !799
  %47 = icmp ugt i32 %45, 0, !dbg !799
  br i1 %47, label %48, label %57, !dbg !799

; <label>:48                                      ; preds = %40
  %49 = load %struct.LexState** %2, align 4, !dbg !801
  %50 = getelementptr inbounds %struct.LexState* %49, i32 0, i32 7, !dbg !801
  %51 = load %struct.Zio** %50, align 4, !dbg !801
  %52 = getelementptr inbounds %struct.Zio* %51, i32 0, i32 1, !dbg !801
  %53 = load i8** %52, align 4, !dbg !801
  %54 = getelementptr inbounds i8* %53, i32 1, !dbg !801
  store i8* %54, i8** %52, align 4, !dbg !801
  %55 = load i8* %53, align 1, !dbg !801
  %56 = zext i8 %55 to i32, !dbg !801
  br label %62, !dbg !801

; <label>:57                                      ; preds = %40
  %58 = load %struct.LexState** %2, align 4, !dbg !803
  %59 = getelementptr inbounds %struct.LexState* %58, i32 0, i32 7, !dbg !803
  %60 = load %struct.Zio** %59, align 4, !dbg !803
  %61 = call i32 @luaZ_fill(%struct.Zio* %60), !dbg !803
  br label %62, !dbg !803

; <label>:62                                      ; preds = %57, %48
  %63 = phi i32 [ %56, %48 ], [ %61, %57 ], !dbg !799
  %64 = load %struct.LexState** %2, align 4, !dbg !805
  %65 = getelementptr inbounds %struct.LexState* %64, i32 0, i32 0, !dbg !805
  store i32 %63, i32* %65, align 4, !dbg !805
  %66 = load %struct.LexState** %2, align 4, !dbg !808
  %67 = getelementptr inbounds %struct.LexState* %66, i32 0, i32 0, !dbg !808
  %68 = load i32* %67, align 4, !dbg !808
  %69 = icmp ne i32 %68, 45, !dbg !808
  br i1 %69, label %70, label %71, !dbg !808

; <label>:70                                      ; preds = %62
  store i32 45, i32* %1, !dbg !810
  br label %557, !dbg !810

; <label>:71                                      ; preds = %62
  %72 = load %struct.LexState** %2, align 4, !dbg !812
  %73 = getelementptr inbounds %struct.LexState* %72, i32 0, i32 7, !dbg !812
  %74 = load %struct.Zio** %73, align 4, !dbg !812
  %75 = getelementptr inbounds %struct.Zio* %74, i32 0, i32 0, !dbg !812
  %76 = load i32* %75, align 4, !dbg !812
  %77 = add i32 %76, -1, !dbg !812
  store i32 %77, i32* %75, align 4, !dbg !812
  %78 = icmp ugt i32 %76, 0, !dbg !812
  br i1 %78, label %79, label %88, !dbg !812

; <label>:79                                      ; preds = %71
  %80 = load %struct.LexState** %2, align 4, !dbg !813
  %81 = getelementptr inbounds %struct.LexState* %80, i32 0, i32 7, !dbg !813
  %82 = load %struct.Zio** %81, align 4, !dbg !813
  %83 = getelementptr inbounds %struct.Zio* %82, i32 0, i32 1, !dbg !813
  %84 = load i8** %83, align 4, !dbg !813
  %85 = getelementptr inbounds i8* %84, i32 1, !dbg !813
  store i8* %85, i8** %83, align 4, !dbg !813
  %86 = load i8* %84, align 1, !dbg !813
  %87 = zext i8 %86 to i32, !dbg !813
  br label %93, !dbg !813

; <label>:88                                      ; preds = %71
  %89 = load %struct.LexState** %2, align 4, !dbg !815
  %90 = getelementptr inbounds %struct.LexState* %89, i32 0, i32 7, !dbg !815
  %91 = load %struct.Zio** %90, align 4, !dbg !815
  %92 = call i32 @luaZ_fill(%struct.Zio* %91), !dbg !815
  br label %93, !dbg !815

; <label>:93                                      ; preds = %88, %79
  %94 = phi i32 [ %87, %79 ], [ %92, %88 ], !dbg !812
  %95 = load %struct.LexState** %2, align 4, !dbg !817
  %96 = getelementptr inbounds %struct.LexState* %95, i32 0, i32 0, !dbg !817
  store i32 %94, i32* %96, align 4, !dbg !817
  %97 = load %struct.LexState** %2, align 4, !dbg !820
  %98 = getelementptr inbounds %struct.LexState* %97, i32 0, i32 0, !dbg !820
  %99 = load i32* %98, align 4, !dbg !820
  %100 = icmp eq i32 %99, 91, !dbg !820
  br i1 %100, label %101, label %118, !dbg !820

; <label>:101                                     ; preds = %93
  call void @llvm.dbg.declare(metadata !{i32* %sep}, metadata !822), !dbg !824
  %102 = load %struct.LexState** %2, align 4, !dbg !825
  %103 = call i32 @skip_sep(%struct.LexState* %102), !dbg !825
  store i32 %103, i32* %sep, align 4, !dbg !825
  %104 = load %struct.LexState** %2, align 4, !dbg !826
  %105 = getelementptr inbounds %struct.LexState* %104, i32 0, i32 8, !dbg !826
  %106 = load %struct.Mbuffer** %105, align 4, !dbg !826
  %107 = getelementptr inbounds %struct.Mbuffer* %106, i32 0, i32 1, !dbg !826
  store i32 0, i32* %107, align 4, !dbg !826
  %108 = load i32* %sep, align 4, !dbg !827
  %109 = icmp sge i32 %108, 0, !dbg !827
  br i1 %109, label %110, label %117, !dbg !827

; <label>:110                                     ; preds = %101
  %111 = load %struct.LexState** %2, align 4, !dbg !829
  %112 = load i32* %sep, align 4, !dbg !829
  call void @read_long_string(%struct.LexState* %111, %union.SemInfo* null, i32 %112), !dbg !829
  %113 = load %struct.LexState** %2, align 4, !dbg !831
  %114 = getelementptr inbounds %struct.LexState* %113, i32 0, i32 8, !dbg !831
  %115 = load %struct.Mbuffer** %114, align 4, !dbg !831
  %116 = getelementptr inbounds %struct.Mbuffer* %115, i32 0, i32 1, !dbg !831
  store i32 0, i32* %116, align 4, !dbg !831
  br label %556, !dbg !832

; <label>:117                                     ; preds = %101
  br label %118, !dbg !833

; <label>:118                                     ; preds = %117, %93
  br label %119, !dbg !834

; <label>:119                                     ; preds = %158, %118
  %120 = load %struct.LexState** %2, align 4, !dbg !835
  %121 = getelementptr inbounds %struct.LexState* %120, i32 0, i32 0, !dbg !835
  %122 = load i32* %121, align 4, !dbg !835
  %123 = icmp eq i32 %122, 10, !dbg !835
  br i1 %123, label %134, label %124, !dbg !835

; <label>:124                                     ; preds = %119
  %125 = load %struct.LexState** %2, align 4, !dbg !837
  %126 = getelementptr inbounds %struct.LexState* %125, i32 0, i32 0, !dbg !837
  %127 = load i32* %126, align 4, !dbg !837
  %128 = icmp eq i32 %127, 13, !dbg !837
  br i1 %128, label %134, label %129, !dbg !837

; <label>:129                                     ; preds = %124
  %130 = load %struct.LexState** %2, align 4, !dbg !839
  %131 = getelementptr inbounds %struct.LexState* %130, i32 0, i32 0, !dbg !839
  %132 = load i32* %131, align 4, !dbg !839
  %133 = icmp ne i32 %132, -1, !dbg !839
  br label %134

; <label>:134                                     ; preds = %129, %124, %119
  %135 = phi i1 [ false, %124 ], [ false, %119 ], [ %133, %129 ]
  br i1 %135, label %136, label %162, !dbg !841

; <label>:136                                     ; preds = %134
  %137 = load %struct.LexState** %2, align 4, !dbg !844
  %138 = getelementptr inbounds %struct.LexState* %137, i32 0, i32 7, !dbg !844
  %139 = load %struct.Zio** %138, align 4, !dbg !844
  %140 = getelementptr inbounds %struct.Zio* %139, i32 0, i32 0, !dbg !844
  %141 = load i32* %140, align 4, !dbg !844
  %142 = add i32 %141, -1, !dbg !844
  store i32 %142, i32* %140, align 4, !dbg !844
  %143 = icmp ugt i32 %141, 0, !dbg !844
  br i1 %143, label %144, label %153, !dbg !844

; <label>:144                                     ; preds = %136
  %145 = load %struct.LexState** %2, align 4, !dbg !845
  %146 = getelementptr inbounds %struct.LexState* %145, i32 0, i32 7, !dbg !845
  %147 = load %struct.Zio** %146, align 4, !dbg !845
  %148 = getelementptr inbounds %struct.Zio* %147, i32 0, i32 1, !dbg !845
  %149 = load i8** %148, align 4, !dbg !845
  %150 = getelementptr inbounds i8* %149, i32 1, !dbg !845
  store i8* %150, i8** %148, align 4, !dbg !845
  %151 = load i8* %149, align 1, !dbg !845
  %152 = zext i8 %151 to i32, !dbg !845
  br label %158, !dbg !845

; <label>:153                                     ; preds = %136
  %154 = load %struct.LexState** %2, align 4, !dbg !847
  %155 = getelementptr inbounds %struct.LexState* %154, i32 0, i32 7, !dbg !847
  %156 = load %struct.Zio** %155, align 4, !dbg !847
  %157 = call i32 @luaZ_fill(%struct.Zio* %156), !dbg !847
  br label %158, !dbg !847

; <label>:158                                     ; preds = %153, %144
  %159 = phi i32 [ %152, %144 ], [ %157, %153 ], !dbg !844
  %160 = load %struct.LexState** %2, align 4, !dbg !849
  %161 = getelementptr inbounds %struct.LexState* %160, i32 0, i32 0, !dbg !849
  store i32 %159, i32* %161, align 4, !dbg !849
  br label %119, !dbg !849

; <label>:162                                     ; preds = %134
  br label %556, !dbg !852

; <label>:163                                     ; preds = %8
  call void @llvm.dbg.declare(metadata !{i32* %sep1}, metadata !853), !dbg !855
  %164 = load %struct.LexState** %2, align 4, !dbg !856
  %165 = call i32 @skip_sep(%struct.LexState* %164), !dbg !856
  store i32 %165, i32* %sep1, align 4, !dbg !856
  %166 = load i32* %sep1, align 4, !dbg !857
  %167 = icmp sge i32 %166, 0, !dbg !857
  br i1 %167, label %168, label %172, !dbg !857

; <label>:168                                     ; preds = %163
  %169 = load %struct.LexState** %2, align 4, !dbg !859
  %170 = load %union.SemInfo** %3, align 4, !dbg !859
  %171 = load i32* %sep1, align 4, !dbg !859
  call void @read_long_string(%struct.LexState* %169, %union.SemInfo* %170, i32 %171), !dbg !859
  store i32 293, i32* %1, !dbg !861
  br label %557, !dbg !861

; <label>:172                                     ; preds = %163
  %173 = load i32* %sep1, align 4, !dbg !862
  %174 = icmp ne i32 %173, -1, !dbg !862
  br i1 %174, label %175, label %177, !dbg !862

; <label>:175                                     ; preds = %172
  %176 = load %struct.LexState** %2, align 4, !dbg !864
  call void @lexerror(%struct.LexState* %176, i8* getelementptr inbounds ([30 x i8]* @.str3, i32 0, i32 0), i32 293) #6, !dbg !864
  unreachable, !dbg !864

; <label>:177                                     ; preds = %172
  br label %178

; <label>:178                                     ; preds = %177
  store i32 91, i32* %1, !dbg !865
  br label %557, !dbg !865

; <label>:179                                     ; preds = %8
  %180 = load %struct.LexState** %2, align 4, !dbg !866
  %181 = getelementptr inbounds %struct.LexState* %180, i32 0, i32 7, !dbg !866
  %182 = load %struct.Zio** %181, align 4, !dbg !866
  %183 = getelementptr inbounds %struct.Zio* %182, i32 0, i32 0, !dbg !866
  %184 = load i32* %183, align 4, !dbg !866
  %185 = add i32 %184, -1, !dbg !866
  store i32 %185, i32* %183, align 4, !dbg !866
  %186 = icmp ugt i32 %184, 0, !dbg !866
  br i1 %186, label %187, label %196, !dbg !866

; <label>:187                                     ; preds = %179
  %188 = load %struct.LexState** %2, align 4, !dbg !868
  %189 = getelementptr inbounds %struct.LexState* %188, i32 0, i32 7, !dbg !868
  %190 = load %struct.Zio** %189, align 4, !dbg !868
  %191 = getelementptr inbounds %struct.Zio* %190, i32 0, i32 1, !dbg !868
  %192 = load i8** %191, align 4, !dbg !868
  %193 = getelementptr inbounds i8* %192, i32 1, !dbg !868
  store i8* %193, i8** %191, align 4, !dbg !868
  %194 = load i8* %192, align 1, !dbg !868
  %195 = zext i8 %194 to i32, !dbg !868
  br label %201, !dbg !868

; <label>:196                                     ; preds = %179
  %197 = load %struct.LexState** %2, align 4, !dbg !870
  %198 = getelementptr inbounds %struct.LexState* %197, i32 0, i32 7, !dbg !870
  %199 = load %struct.Zio** %198, align 4, !dbg !870
  %200 = call i32 @luaZ_fill(%struct.Zio* %199), !dbg !870
  br label %201, !dbg !870

; <label>:201                                     ; preds = %196, %187
  %202 = phi i32 [ %195, %187 ], [ %200, %196 ], !dbg !866
  %203 = load %struct.LexState** %2, align 4, !dbg !872
  %204 = getelementptr inbounds %struct.LexState* %203, i32 0, i32 0, !dbg !872
  store i32 %202, i32* %204, align 4, !dbg !872
  %205 = load %struct.LexState** %2, align 4, !dbg !875
  %206 = call i32 @check_next1(%struct.LexState* %205, i32 61), !dbg !875
  %207 = icmp ne i32 %206, 0, !dbg !875
  br i1 %207, label %208, label %209, !dbg !875

; <label>:208                                     ; preds = %201
  store i32 282, i32* %1, !dbg !877
  br label %557, !dbg !877

; <label>:209                                     ; preds = %201
  store i32 61, i32* %1, !dbg !879
  br label %557, !dbg !879

; <label>:210                                     ; preds = %8
  %211 = load %struct.LexState** %2, align 4, !dbg !880
  %212 = getelementptr inbounds %struct.LexState* %211, i32 0, i32 7, !dbg !880
  %213 = load %struct.Zio** %212, align 4, !dbg !880
  %214 = getelementptr inbounds %struct.Zio* %213, i32 0, i32 0, !dbg !880
  %215 = load i32* %214, align 4, !dbg !880
  %216 = add i32 %215, -1, !dbg !880
  store i32 %216, i32* %214, align 4, !dbg !880
  %217 = icmp ugt i32 %215, 0, !dbg !880
  br i1 %217, label %218, label %227, !dbg !880

; <label>:218                                     ; preds = %210
  %219 = load %struct.LexState** %2, align 4, !dbg !882
  %220 = getelementptr inbounds %struct.LexState* %219, i32 0, i32 7, !dbg !882
  %221 = load %struct.Zio** %220, align 4, !dbg !882
  %222 = getelementptr inbounds %struct.Zio* %221, i32 0, i32 1, !dbg !882
  %223 = load i8** %222, align 4, !dbg !882
  %224 = getelementptr inbounds i8* %223, i32 1, !dbg !882
  store i8* %224, i8** %222, align 4, !dbg !882
  %225 = load i8* %223, align 1, !dbg !882
  %226 = zext i8 %225 to i32, !dbg !882
  br label %232, !dbg !882

; <label>:227                                     ; preds = %210
  %228 = load %struct.LexState** %2, align 4, !dbg !884
  %229 = getelementptr inbounds %struct.LexState* %228, i32 0, i32 7, !dbg !884
  %230 = load %struct.Zio** %229, align 4, !dbg !884
  %231 = call i32 @luaZ_fill(%struct.Zio* %230), !dbg !884
  br label %232, !dbg !884

; <label>:232                                     ; preds = %227, %218
  %233 = phi i32 [ %226, %218 ], [ %231, %227 ], !dbg !880
  %234 = load %struct.LexState** %2, align 4, !dbg !886
  %235 = getelementptr inbounds %struct.LexState* %234, i32 0, i32 0, !dbg !886
  store i32 %233, i32* %235, align 4, !dbg !886
  %236 = load %struct.LexState** %2, align 4, !dbg !889
  %237 = call i32 @check_next1(%struct.LexState* %236, i32 61), !dbg !889
  %238 = icmp ne i32 %237, 0, !dbg !889
  br i1 %238, label %239, label %240, !dbg !889

; <label>:239                                     ; preds = %232
  store i32 284, i32* %1, !dbg !891
  br label %557, !dbg !891

; <label>:240                                     ; preds = %232
  %241 = load %struct.LexState** %2, align 4, !dbg !893
  %242 = call i32 @check_next1(%struct.LexState* %241, i32 60), !dbg !893
  %243 = icmp ne i32 %242, 0, !dbg !893
  br i1 %243, label %244, label %245, !dbg !893

; <label>:244                                     ; preds = %240
  store i32 286, i32* %1, !dbg !895
  br label %557, !dbg !895

; <label>:245                                     ; preds = %240
  store i32 60, i32* %1, !dbg !897
  br label %557, !dbg !897

; <label>:246                                     ; preds = %8
  %247 = load %struct.LexState** %2, align 4, !dbg !898
  %248 = getelementptr inbounds %struct.LexState* %247, i32 0, i32 7, !dbg !898
  %249 = load %struct.Zio** %248, align 4, !dbg !898
  %250 = getelementptr inbounds %struct.Zio* %249, i32 0, i32 0, !dbg !898
  %251 = load i32* %250, align 4, !dbg !898
  %252 = add i32 %251, -1, !dbg !898
  store i32 %252, i32* %250, align 4, !dbg !898
  %253 = icmp ugt i32 %251, 0, !dbg !898
  br i1 %253, label %254, label %263, !dbg !898

; <label>:254                                     ; preds = %246
  %255 = load %struct.LexState** %2, align 4, !dbg !900
  %256 = getelementptr inbounds %struct.LexState* %255, i32 0, i32 7, !dbg !900
  %257 = load %struct.Zio** %256, align 4, !dbg !900
  %258 = getelementptr inbounds %struct.Zio* %257, i32 0, i32 1, !dbg !900
  %259 = load i8** %258, align 4, !dbg !900
  %260 = getelementptr inbounds i8* %259, i32 1, !dbg !900
  store i8* %260, i8** %258, align 4, !dbg !900
  %261 = load i8* %259, align 1, !dbg !900
  %262 = zext i8 %261 to i32, !dbg !900
  br label %268, !dbg !900

; <label>:263                                     ; preds = %246
  %264 = load %struct.LexState** %2, align 4, !dbg !902
  %265 = getelementptr inbounds %struct.LexState* %264, i32 0, i32 7, !dbg !902
  %266 = load %struct.Zio** %265, align 4, !dbg !902
  %267 = call i32 @luaZ_fill(%struct.Zio* %266), !dbg !902
  br label %268, !dbg !902

; <label>:268                                     ; preds = %263, %254
  %269 = phi i32 [ %262, %254 ], [ %267, %263 ], !dbg !898
  %270 = load %struct.LexState** %2, align 4, !dbg !904
  %271 = getelementptr inbounds %struct.LexState* %270, i32 0, i32 0, !dbg !904
  store i32 %269, i32* %271, align 4, !dbg !904
  %272 = load %struct.LexState** %2, align 4, !dbg !907
  %273 = call i32 @check_next1(%struct.LexState* %272, i32 61), !dbg !907
  %274 = icmp ne i32 %273, 0, !dbg !907
  br i1 %274, label %275, label %276, !dbg !907

; <label>:275                                     ; preds = %268
  store i32 283, i32* %1, !dbg !909
  br label %557, !dbg !909

; <label>:276                                     ; preds = %268
  %277 = load %struct.LexState** %2, align 4, !dbg !911
  %278 = call i32 @check_next1(%struct.LexState* %277, i32 62), !dbg !911
  %279 = icmp ne i32 %278, 0, !dbg !911
  br i1 %279, label %280, label %281, !dbg !911

; <label>:280                                     ; preds = %276
  store i32 287, i32* %1, !dbg !913
  br label %557, !dbg !913

; <label>:281                                     ; preds = %276
  store i32 62, i32* %1, !dbg !915
  br label %557, !dbg !915

; <label>:282                                     ; preds = %8
  %283 = load %struct.LexState** %2, align 4, !dbg !916
  %284 = getelementptr inbounds %struct.LexState* %283, i32 0, i32 7, !dbg !916
  %285 = load %struct.Zio** %284, align 4, !dbg !916
  %286 = getelementptr inbounds %struct.Zio* %285, i32 0, i32 0, !dbg !916
  %287 = load i32* %286, align 4, !dbg !916
  %288 = add i32 %287, -1, !dbg !916
  store i32 %288, i32* %286, align 4, !dbg !916
  %289 = icmp ugt i32 %287, 0, !dbg !916
  br i1 %289, label %290, label %299, !dbg !916

; <label>:290                                     ; preds = %282
  %291 = load %struct.LexState** %2, align 4, !dbg !918
  %292 = getelementptr inbounds %struct.LexState* %291, i32 0, i32 7, !dbg !918
  %293 = load %struct.Zio** %292, align 4, !dbg !918
  %294 = getelementptr inbounds %struct.Zio* %293, i32 0, i32 1, !dbg !918
  %295 = load i8** %294, align 4, !dbg !918
  %296 = getelementptr inbounds i8* %295, i32 1, !dbg !918
  store i8* %296, i8** %294, align 4, !dbg !918
  %297 = load i8* %295, align 1, !dbg !918
  %298 = zext i8 %297 to i32, !dbg !918
  br label %304, !dbg !918

; <label>:299                                     ; preds = %282
  %300 = load %struct.LexState** %2, align 4, !dbg !920
  %301 = getelementptr inbounds %struct.LexState* %300, i32 0, i32 7, !dbg !920
  %302 = load %struct.Zio** %301, align 4, !dbg !920
  %303 = call i32 @luaZ_fill(%struct.Zio* %302), !dbg !920
  br label %304, !dbg !920

; <label>:304                                     ; preds = %299, %290
  %305 = phi i32 [ %298, %290 ], [ %303, %299 ], !dbg !916
  %306 = load %struct.LexState** %2, align 4, !dbg !922
  %307 = getelementptr inbounds %struct.LexState* %306, i32 0, i32 0, !dbg !922
  store i32 %305, i32* %307, align 4, !dbg !922
  %308 = load %struct.LexState** %2, align 4, !dbg !925
  %309 = call i32 @check_next1(%struct.LexState* %308, i32 47), !dbg !925
  %310 = icmp ne i32 %309, 0, !dbg !925
  br i1 %310, label %311, label %312, !dbg !925

; <label>:311                                     ; preds = %304
  store i32 279, i32* %1, !dbg !927
  br label %557, !dbg !927

; <label>:312                                     ; preds = %304
  store i32 47, i32* %1, !dbg !929
  br label %557, !dbg !929

; <label>:313                                     ; preds = %8
  %314 = load %struct.LexState** %2, align 4, !dbg !930
  %315 = getelementptr inbounds %struct.LexState* %314, i32 0, i32 7, !dbg !930
  %316 = load %struct.Zio** %315, align 4, !dbg !930
  %317 = getelementptr inbounds %struct.Zio* %316, i32 0, i32 0, !dbg !930
  %318 = load i32* %317, align 4, !dbg !930
  %319 = add i32 %318, -1, !dbg !930
  store i32 %319, i32* %317, align 4, !dbg !930
  %320 = icmp ugt i32 %318, 0, !dbg !930
  br i1 %320, label %321, label %330, !dbg !930

; <label>:321                                     ; preds = %313
  %322 = load %struct.LexState** %2, align 4, !dbg !932
  %323 = getelementptr inbounds %struct.LexState* %322, i32 0, i32 7, !dbg !932
  %324 = load %struct.Zio** %323, align 4, !dbg !932
  %325 = getelementptr inbounds %struct.Zio* %324, i32 0, i32 1, !dbg !932
  %326 = load i8** %325, align 4, !dbg !932
  %327 = getelementptr inbounds i8* %326, i32 1, !dbg !932
  store i8* %327, i8** %325, align 4, !dbg !932
  %328 = load i8* %326, align 1, !dbg !932
  %329 = zext i8 %328 to i32, !dbg !932
  br label %335, !dbg !932

; <label>:330                                     ; preds = %313
  %331 = load %struct.LexState** %2, align 4, !dbg !934
  %332 = getelementptr inbounds %struct.LexState* %331, i32 0, i32 7, !dbg !934
  %333 = load %struct.Zio** %332, align 4, !dbg !934
  %334 = call i32 @luaZ_fill(%struct.Zio* %333), !dbg !934
  br label %335, !dbg !934

; <label>:335                                     ; preds = %330, %321
  %336 = phi i32 [ %329, %321 ], [ %334, %330 ], !dbg !930
  %337 = load %struct.LexState** %2, align 4, !dbg !936
  %338 = getelementptr inbounds %struct.LexState* %337, i32 0, i32 0, !dbg !936
  store i32 %336, i32* %338, align 4, !dbg !936
  %339 = load %struct.LexState** %2, align 4, !dbg !939
  %340 = call i32 @check_next1(%struct.LexState* %339, i32 61), !dbg !939
  %341 = icmp ne i32 %340, 0, !dbg !939
  br i1 %341, label %342, label %343, !dbg !939

; <label>:342                                     ; preds = %335
  store i32 285, i32* %1, !dbg !941
  br label %557, !dbg !941

; <label>:343                                     ; preds = %335
  store i32 126, i32* %1, !dbg !943
  br label %557, !dbg !943

; <label>:344                                     ; preds = %8
  %345 = load %struct.LexState** %2, align 4, !dbg !944
  %346 = getelementptr inbounds %struct.LexState* %345, i32 0, i32 7, !dbg !944
  %347 = load %struct.Zio** %346, align 4, !dbg !944
  %348 = getelementptr inbounds %struct.Zio* %347, i32 0, i32 0, !dbg !944
  %349 = load i32* %348, align 4, !dbg !944
  %350 = add i32 %349, -1, !dbg !944
  store i32 %350, i32* %348, align 4, !dbg !944
  %351 = icmp ugt i32 %349, 0, !dbg !944
  br i1 %351, label %352, label %361, !dbg !944

; <label>:352                                     ; preds = %344
  %353 = load %struct.LexState** %2, align 4, !dbg !946
  %354 = getelementptr inbounds %struct.LexState* %353, i32 0, i32 7, !dbg !946
  %355 = load %struct.Zio** %354, align 4, !dbg !946
  %356 = getelementptr inbounds %struct.Zio* %355, i32 0, i32 1, !dbg !946
  %357 = load i8** %356, align 4, !dbg !946
  %358 = getelementptr inbounds i8* %357, i32 1, !dbg !946
  store i8* %358, i8** %356, align 4, !dbg !946
  %359 = load i8* %357, align 1, !dbg !946
  %360 = zext i8 %359 to i32, !dbg !946
  br label %366, !dbg !946

; <label>:361                                     ; preds = %344
  %362 = load %struct.LexState** %2, align 4, !dbg !948
  %363 = getelementptr inbounds %struct.LexState* %362, i32 0, i32 7, !dbg !948
  %364 = load %struct.Zio** %363, align 4, !dbg !948
  %365 = call i32 @luaZ_fill(%struct.Zio* %364), !dbg !948
  br label %366, !dbg !948

; <label>:366                                     ; preds = %361, %352
  %367 = phi i32 [ %360, %352 ], [ %365, %361 ], !dbg !944
  %368 = load %struct.LexState** %2, align 4, !dbg !950
  %369 = getelementptr inbounds %struct.LexState* %368, i32 0, i32 0, !dbg !950
  store i32 %367, i32* %369, align 4, !dbg !950
  %370 = load %struct.LexState** %2, align 4, !dbg !953
  %371 = call i32 @check_next1(%struct.LexState* %370, i32 58), !dbg !953
  %372 = icmp ne i32 %371, 0, !dbg !953
  br i1 %372, label %373, label %374, !dbg !953

; <label>:373                                     ; preds = %366
  store i32 288, i32* %1, !dbg !955
  br label %557, !dbg !955

; <label>:374                                     ; preds = %366
  store i32 58, i32* %1, !dbg !957
  br label %557, !dbg !957

; <label>:375                                     ; preds = %8, %8
  %376 = load %struct.LexState** %2, align 4, !dbg !958
  %377 = load %struct.LexState** %2, align 4, !dbg !958
  %378 = getelementptr inbounds %struct.LexState* %377, i32 0, i32 0, !dbg !958
  %379 = load i32* %378, align 4, !dbg !958
  %380 = load %union.SemInfo** %3, align 4, !dbg !958
  call void @read_string(%struct.LexState* %376, i32 %379, %union.SemInfo* %380), !dbg !958
  store i32 293, i32* %1, !dbg !960
  br label %557, !dbg !960

; <label>:381                                     ; preds = %8
  %382 = load %struct.LexState** %2, align 4, !dbg !961
  %383 = load %struct.LexState** %2, align 4, !dbg !961
  %384 = getelementptr inbounds %struct.LexState* %383, i32 0, i32 0, !dbg !961
  %385 = load i32* %384, align 4, !dbg !961
  call void @save(%struct.LexState* %382, i32 %385), !dbg !961
  %386 = load %struct.LexState** %2, align 4, !dbg !961
  %387 = getelementptr inbounds %struct.LexState* %386, i32 0, i32 7, !dbg !961
  %388 = load %struct.Zio** %387, align 4, !dbg !961
  %389 = getelementptr inbounds %struct.Zio* %388, i32 0, i32 0, !dbg !961
  %390 = load i32* %389, align 4, !dbg !961
  %391 = add i32 %390, -1, !dbg !961
  store i32 %391, i32* %389, align 4, !dbg !961
  %392 = icmp ugt i32 %390, 0, !dbg !961
  br i1 %392, label %393, label %402, !dbg !961

; <label>:393                                     ; preds = %381
  %394 = load %struct.LexState** %2, align 4, !dbg !963
  %395 = getelementptr inbounds %struct.LexState* %394, i32 0, i32 7, !dbg !963
  %396 = load %struct.Zio** %395, align 4, !dbg !963
  %397 = getelementptr inbounds %struct.Zio* %396, i32 0, i32 1, !dbg !963
  %398 = load i8** %397, align 4, !dbg !963
  %399 = getelementptr inbounds i8* %398, i32 1, !dbg !963
  store i8* %399, i8** %397, align 4, !dbg !963
  %400 = load i8* %398, align 1, !dbg !963
  %401 = zext i8 %400 to i32, !dbg !963
  br label %407, !dbg !963

; <label>:402                                     ; preds = %381
  %403 = load %struct.LexState** %2, align 4, !dbg !965
  %404 = getelementptr inbounds %struct.LexState* %403, i32 0, i32 7, !dbg !965
  %405 = load %struct.Zio** %404, align 4, !dbg !965
  %406 = call i32 @luaZ_fill(%struct.Zio* %405), !dbg !965
  br label %407, !dbg !965

; <label>:407                                     ; preds = %402, %393
  %408 = phi i32 [ %401, %393 ], [ %406, %402 ], !dbg !961
  %409 = load %struct.LexState** %2, align 4, !dbg !967
  %410 = getelementptr inbounds %struct.LexState* %409, i32 0, i32 0, !dbg !967
  store i32 %408, i32* %410, align 4, !dbg !967
  %411 = load %struct.LexState** %2, align 4, !dbg !970
  %412 = call i32 @check_next1(%struct.LexState* %411, i32 46), !dbg !970
  %413 = icmp ne i32 %412, 0, !dbg !970
  br i1 %413, label %414, label %420, !dbg !970

; <label>:414                                     ; preds = %407
  %415 = load %struct.LexState** %2, align 4, !dbg !972
  %416 = call i32 @check_next1(%struct.LexState* %415, i32 46), !dbg !972
  %417 = icmp ne i32 %416, 0, !dbg !972
  br i1 %417, label %418, label %419, !dbg !972

; <label>:418                                     ; preds = %414
  store i32 281, i32* %1, !dbg !975
  br label %557, !dbg !975

; <label>:419                                     ; preds = %414
  store i32 280, i32* %1, !dbg !976
  br label %557, !dbg !976

; <label>:420                                     ; preds = %407
  %421 = load %struct.LexState** %2, align 4, !dbg !977
  %422 = getelementptr inbounds %struct.LexState* %421, i32 0, i32 0, !dbg !977
  %423 = load i32* %422, align 4, !dbg !977
  %424 = add nsw i32 %423, 1, !dbg !977
  %425 = getelementptr inbounds [257 x i8]* @luai_ctype_, i32 0, i32 %424, !dbg !977
  %426 = load i8* %425, align 1, !dbg !977
  %427 = zext i8 %426 to i32, !dbg !977
  %428 = and i32 %427, 2, !dbg !977
  %429 = icmp ne i32 %428, 0, !dbg !977
  br i1 %429, label %431, label %430, !dbg !977

; <label>:430                                     ; preds = %420
  store i32 46, i32* %1, !dbg !979
  br label %557, !dbg !979

; <label>:431                                     ; preds = %420
  %432 = load %struct.LexState** %2, align 4, !dbg !981
  %433 = load %union.SemInfo** %3, align 4, !dbg !981
  %434 = call i32 @read_numeral(%struct.LexState* %432, %union.SemInfo* %433), !dbg !981
  store i32 %434, i32* %1, !dbg !981
  br label %557, !dbg !981

; <label>:435                                     ; preds = %8, %8, %8, %8, %8, %8, %8, %8, %8, %8
  %436 = load %struct.LexState** %2, align 4, !dbg !982
  %437 = load %union.SemInfo** %3, align 4, !dbg !982
  %438 = call i32 @read_numeral(%struct.LexState* %436, %union.SemInfo* %437), !dbg !982
  store i32 %438, i32* %1, !dbg !982
  br label %557, !dbg !982

; <label>:439                                     ; preds = %8
  store i32 289, i32* %1, !dbg !984
  br label %557, !dbg !984

; <label>:440                                     ; preds = %8
  %441 = load %struct.LexState** %2, align 4, !dbg !986
  %442 = getelementptr inbounds %struct.LexState* %441, i32 0, i32 0, !dbg !986
  %443 = load i32* %442, align 4, !dbg !986
  %444 = add nsw i32 %443, 1, !dbg !986
  %445 = getelementptr inbounds [257 x i8]* @luai_ctype_, i32 0, i32 %444, !dbg !986
  %446 = load i8* %445, align 1, !dbg !986
  %447 = zext i8 %446 to i32, !dbg !986
  %448 = and i32 %447, 1, !dbg !986
  %449 = icmp ne i32 %448, 0, !dbg !986
  br i1 %449, label %450, label %526, !dbg !986

; <label>:450                                     ; preds = %440
  call void @llvm.dbg.declare(metadata !{%struct.TString** %ts}, metadata !989), !dbg !991
  br label %451, !dbg !992

; <label>:451                                     ; preds = %481, %450
  %452 = load %struct.LexState** %2, align 4, !dbg !993
  %453 = load %struct.LexState** %2, align 4, !dbg !993
  %454 = getelementptr inbounds %struct.LexState* %453, i32 0, i32 0, !dbg !993
  %455 = load i32* %454, align 4, !dbg !993
  call void @save(%struct.LexState* %452, i32 %455), !dbg !993
  %456 = load %struct.LexState** %2, align 4, !dbg !993
  %457 = getelementptr inbounds %struct.LexState* %456, i32 0, i32 7, !dbg !993
  %458 = load %struct.Zio** %457, align 4, !dbg !993
  %459 = getelementptr inbounds %struct.Zio* %458, i32 0, i32 0, !dbg !993
  %460 = load i32* %459, align 4, !dbg !993
  %461 = add i32 %460, -1, !dbg !993
  store i32 %461, i32* %459, align 4, !dbg !993
  %462 = icmp ugt i32 %460, 0, !dbg !993
  br i1 %462, label %463, label %472, !dbg !993

; <label>:463                                     ; preds = %451
  %464 = load %struct.LexState** %2, align 4, !dbg !995
  %465 = getelementptr inbounds %struct.LexState* %464, i32 0, i32 7, !dbg !995
  %466 = load %struct.Zio** %465, align 4, !dbg !995
  %467 = getelementptr inbounds %struct.Zio* %466, i32 0, i32 1, !dbg !995
  %468 = load i8** %467, align 4, !dbg !995
  %469 = getelementptr inbounds i8* %468, i32 1, !dbg !995
  store i8* %469, i8** %467, align 4, !dbg !995
  %470 = load i8* %468, align 1, !dbg !995
  %471 = zext i8 %470 to i32, !dbg !995
  br label %477, !dbg !995

; <label>:472                                     ; preds = %451
  %473 = load %struct.LexState** %2, align 4, !dbg !997
  %474 = getelementptr inbounds %struct.LexState* %473, i32 0, i32 7, !dbg !997
  %475 = load %struct.Zio** %474, align 4, !dbg !997
  %476 = call i32 @luaZ_fill(%struct.Zio* %475), !dbg !997
  br label %477, !dbg !997

; <label>:477                                     ; preds = %472, %463
  %478 = phi i32 [ %471, %463 ], [ %476, %472 ], !dbg !993
  %479 = load %struct.LexState** %2, align 4, !dbg !999
  %480 = getelementptr inbounds %struct.LexState* %479, i32 0, i32 0, !dbg !999
  store i32 %478, i32* %480, align 4, !dbg !999
  br label %481, !dbg !1002

; <label>:481                                     ; preds = %477
  %482 = load %struct.LexState** %2, align 4, !dbg !1003
  %483 = getelementptr inbounds %struct.LexState* %482, i32 0, i32 0, !dbg !1003
  %484 = load i32* %483, align 4, !dbg !1003
  %485 = add nsw i32 %484, 1, !dbg !1003
  %486 = getelementptr inbounds [257 x i8]* @luai_ctype_, i32 0, i32 %485, !dbg !1003
  %487 = load i8* %486, align 1, !dbg !1003
  %488 = zext i8 %487 to i32, !dbg !1003
  %489 = and i32 %488, 3, !dbg !1003
  %490 = icmp ne i32 %489, 0, !dbg !1003
  br i1 %490, label %451, label %491, !dbg !1003

; <label>:491                                     ; preds = %481
  %492 = load %struct.LexState** %2, align 4, !dbg !1005
  %493 = load %struct.LexState** %2, align 4, !dbg !1005
  %494 = getelementptr inbounds %struct.LexState* %493, i32 0, i32 8, !dbg !1005
  %495 = load %struct.Mbuffer** %494, align 4, !dbg !1005
  %496 = getelementptr inbounds %struct.Mbuffer* %495, i32 0, i32 0, !dbg !1005
  %497 = load i8** %496, align 4, !dbg !1005
  %498 = load %struct.LexState** %2, align 4, !dbg !1005
  %499 = getelementptr inbounds %struct.LexState* %498, i32 0, i32 8, !dbg !1005
  %500 = load %struct.Mbuffer** %499, align 4, !dbg !1005
  %501 = getelementptr inbounds %struct.Mbuffer* %500, i32 0, i32 1, !dbg !1005
  %502 = load i32* %501, align 4, !dbg !1005
  %503 = call %struct.TString* @luaX_newstring(%struct.LexState* %492, i8* %497, i32 %502), !dbg !1005
  store %struct.TString* %503, %struct.TString** %ts, align 4, !dbg !1005
  %504 = load %struct.TString** %ts, align 4, !dbg !1006
  %505 = load %union.SemInfo** %3, align 4, !dbg !1006
  %506 = bitcast %union.SemInfo* %505 to %struct.TString**, !dbg !1006
  store %struct.TString* %504, %struct.TString** %506, align 4, !dbg !1006
  %507 = load %struct.TString** %ts, align 4, !dbg !1007
  %508 = getelementptr inbounds %struct.TString* %507, i32 0, i32 1, !dbg !1007
  %509 = load i8* %508, align 1, !dbg !1007
  %510 = zext i8 %509 to i32, !dbg !1007
  %511 = icmp eq i32 %510, 4, !dbg !1007
  br i1 %511, label %512, label %525, !dbg !1007

; <label>:512                                     ; preds = %491
  %513 = load %struct.TString** %ts, align 4, !dbg !1009
  %514 = getelementptr inbounds %struct.TString* %513, i32 0, i32 3, !dbg !1009
  %515 = load i8* %514, align 1, !dbg !1009
  %516 = zext i8 %515 to i32, !dbg !1009
  %517 = icmp sgt i32 %516, 0, !dbg !1009
  br i1 %517, label %518, label %525, !dbg !1009

; <label>:518                                     ; preds = %512
  %519 = load %struct.TString** %ts, align 4, !dbg !1011
  %520 = getelementptr inbounds %struct.TString* %519, i32 0, i32 3, !dbg !1011
  %521 = load i8* %520, align 1, !dbg !1011
  %522 = zext i8 %521 to i32, !dbg !1011
  %523 = sub nsw i32 %522, 1, !dbg !1011
  %524 = add nsw i32 %523, 257, !dbg !1011
  store i32 %524, i32* %1, !dbg !1011
  br label %557, !dbg !1011

; <label>:525                                     ; preds = %512, %491
  store i32 292, i32* %1, !dbg !1012
  br label %557, !dbg !1012

; <label>:526                                     ; preds = %440
  call void @llvm.dbg.declare(metadata !{i32* %c}, metadata !1014), !dbg !1016
  %527 = load %struct.LexState** %2, align 4, !dbg !1017
  %528 = getelementptr inbounds %struct.LexState* %527, i32 0, i32 0, !dbg !1017
  %529 = load i32* %528, align 4, !dbg !1017
  store i32 %529, i32* %c, align 4, !dbg !1017
  %530 = load %struct.LexState** %2, align 4, !dbg !1018
  %531 = getelementptr inbounds %struct.LexState* %530, i32 0, i32 7, !dbg !1018
  %532 = load %struct.Zio** %531, align 4, !dbg !1018
  %533 = getelementptr inbounds %struct.Zio* %532, i32 0, i32 0, !dbg !1018
  %534 = load i32* %533, align 4, !dbg !1018
  %535 = add i32 %534, -1, !dbg !1018
  store i32 %535, i32* %533, align 4, !dbg !1018
  %536 = icmp ugt i32 %534, 0, !dbg !1018
  br i1 %536, label %537, label %546, !dbg !1018

; <label>:537                                     ; preds = %526
  %538 = load %struct.LexState** %2, align 4, !dbg !1019
  %539 = getelementptr inbounds %struct.LexState* %538, i32 0, i32 7, !dbg !1019
  %540 = load %struct.Zio** %539, align 4, !dbg !1019
  %541 = getelementptr inbounds %struct.Zio* %540, i32 0, i32 1, !dbg !1019
  %542 = load i8** %541, align 4, !dbg !1019
  %543 = getelementptr inbounds i8* %542, i32 1, !dbg !1019
  store i8* %543, i8** %541, align 4, !dbg !1019
  %544 = load i8* %542, align 1, !dbg !1019
  %545 = zext i8 %544 to i32, !dbg !1019
  br label %551, !dbg !1019

; <label>:546                                     ; preds = %526
  %547 = load %struct.LexState** %2, align 4, !dbg !1021
  %548 = getelementptr inbounds %struct.LexState* %547, i32 0, i32 7, !dbg !1021
  %549 = load %struct.Zio** %548, align 4, !dbg !1021
  %550 = call i32 @luaZ_fill(%struct.Zio* %549), !dbg !1021
  br label %551, !dbg !1021

; <label>:551                                     ; preds = %546, %537
  %552 = phi i32 [ %545, %537 ], [ %550, %546 ], !dbg !1018
  %553 = load %struct.LexState** %2, align 4, !dbg !1023
  %554 = getelementptr inbounds %struct.LexState* %553, i32 0, i32 0, !dbg !1023
  store i32 %552, i32* %554, align 4, !dbg !1023
  %555 = load i32* %c, align 4, !dbg !1026
  store i32 %555, i32* %1, !dbg !1026
  br label %557, !dbg !1026

; <label>:556                                     ; preds = %162, %110, %36, %12
  br label %8, !dbg !1027

; <label>:557                                     ; preds = %551, %525, %518, %439, %435, %431, %430, %419, %418, %375, %374, %373, %343, %342, %312, %311, %281, %280, %275, %245, %244, %239, %209, %208, %178, %168, %70
  %558 = load i32* %1, !dbg !1028
  ret i32 %558, !dbg !1028
}

; Function Attrs: nounwind
define hidden i32 @luaX_lookahead(%struct.LexState* %ls) #0 {
  %1 = alloca %struct.LexState*, align 4
  store %struct.LexState* %ls, %struct.LexState** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.LexState** %1}, metadata !1029), !dbg !1030
  %2 = load %struct.LexState** %1, align 4, !dbg !1031
  %3 = load %struct.LexState** %1, align 4, !dbg !1031
  %4 = getelementptr inbounds %struct.LexState* %3, i32 0, i32 4, !dbg !1031
  %5 = getelementptr inbounds %struct.Token* %4, i32 0, i32 1, !dbg !1031
  %6 = call i32 @llex(%struct.LexState* %2, %union.SemInfo* %5), !dbg !1031
  %7 = load %struct.LexState** %1, align 4, !dbg !1031
  %8 = getelementptr inbounds %struct.LexState* %7, i32 0, i32 4, !dbg !1031
  %9 = getelementptr inbounds %struct.Token* %8, i32 0, i32 0, !dbg !1031
  store i32 %6, i32* %9, align 4, !dbg !1031
  %10 = load %struct.LexState** %1, align 4, !dbg !1032
  %11 = getelementptr inbounds %struct.LexState* %10, i32 0, i32 4, !dbg !1032
  %12 = getelementptr inbounds %struct.Token* %11, i32 0, i32 0, !dbg !1032
  %13 = load i32* %12, align 4, !dbg !1032
  ret i32 %13, !dbg !1032
}

; Function Attrs: nounwind
define internal void @inclinenumber(%struct.LexState* %ls) #0 {
  %1 = alloca %struct.LexState*, align 4
  %old = alloca i32, align 4
  store %struct.LexState* %ls, %struct.LexState** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.LexState** %1}, metadata !1033), !dbg !1034
  call void @llvm.dbg.declare(metadata !{i32* %old}, metadata !1035), !dbg !1036
  %2 = load %struct.LexState** %1, align 4, !dbg !1037
  %3 = getelementptr inbounds %struct.LexState* %2, i32 0, i32 0, !dbg !1037
  %4 = load i32* %3, align 4, !dbg !1037
  store i32 %4, i32* %old, align 4, !dbg !1037
  %5 = load %struct.LexState** %1, align 4, !dbg !1038
  %6 = getelementptr inbounds %struct.LexState* %5, i32 0, i32 7, !dbg !1038
  %7 = load %struct.Zio** %6, align 4, !dbg !1038
  %8 = getelementptr inbounds %struct.Zio* %7, i32 0, i32 0, !dbg !1038
  %9 = load i32* %8, align 4, !dbg !1038
  %10 = add i32 %9, -1, !dbg !1038
  store i32 %10, i32* %8, align 4, !dbg !1038
  %11 = icmp ugt i32 %9, 0, !dbg !1038
  br i1 %11, label %12, label %21, !dbg !1038

; <label>:12                                      ; preds = %0
  %13 = load %struct.LexState** %1, align 4, !dbg !1039
  %14 = getelementptr inbounds %struct.LexState* %13, i32 0, i32 7, !dbg !1039
  %15 = load %struct.Zio** %14, align 4, !dbg !1039
  %16 = getelementptr inbounds %struct.Zio* %15, i32 0, i32 1, !dbg !1039
  %17 = load i8** %16, align 4, !dbg !1039
  %18 = getelementptr inbounds i8* %17, i32 1, !dbg !1039
  store i8* %18, i8** %16, align 4, !dbg !1039
  %19 = load i8* %17, align 1, !dbg !1039
  %20 = zext i8 %19 to i32, !dbg !1039
  br label %26, !dbg !1039

; <label>:21                                      ; preds = %0
  %22 = load %struct.LexState** %1, align 4, !dbg !1041
  %23 = getelementptr inbounds %struct.LexState* %22, i32 0, i32 7, !dbg !1041
  %24 = load %struct.Zio** %23, align 4, !dbg !1041
  %25 = call i32 @luaZ_fill(%struct.Zio* %24), !dbg !1041
  br label %26, !dbg !1041

; <label>:26                                      ; preds = %21, %12
  %27 = phi i32 [ %20, %12 ], [ %25, %21 ], !dbg !1038
  %28 = load %struct.LexState** %1, align 4, !dbg !1043
  %29 = getelementptr inbounds %struct.LexState* %28, i32 0, i32 0, !dbg !1043
  store i32 %27, i32* %29, align 4, !dbg !1043
  %30 = load %struct.LexState** %1, align 4, !dbg !1046
  %31 = getelementptr inbounds %struct.LexState* %30, i32 0, i32 0, !dbg !1046
  %32 = load i32* %31, align 4, !dbg !1046
  %33 = icmp eq i32 %32, 10, !dbg !1046
  br i1 %33, label %39, label %34, !dbg !1046

; <label>:34                                      ; preds = %26
  %35 = load %struct.LexState** %1, align 4, !dbg !1048
  %36 = getelementptr inbounds %struct.LexState* %35, i32 0, i32 0, !dbg !1048
  %37 = load i32* %36, align 4, !dbg !1048
  %38 = icmp eq i32 %37, 13, !dbg !1048
  br i1 %38, label %39, label %71, !dbg !1048

; <label>:39                                      ; preds = %34, %26
  %40 = load %struct.LexState** %1, align 4, !dbg !1050
  %41 = getelementptr inbounds %struct.LexState* %40, i32 0, i32 0, !dbg !1050
  %42 = load i32* %41, align 4, !dbg !1050
  %43 = load i32* %old, align 4, !dbg !1050
  %44 = icmp ne i32 %42, %43, !dbg !1050
  br i1 %44, label %45, label %71, !dbg !1050

; <label>:45                                      ; preds = %39
  %46 = load %struct.LexState** %1, align 4, !dbg !1053
  %47 = getelementptr inbounds %struct.LexState* %46, i32 0, i32 7, !dbg !1053
  %48 = load %struct.Zio** %47, align 4, !dbg !1053
  %49 = getelementptr inbounds %struct.Zio* %48, i32 0, i32 0, !dbg !1053
  %50 = load i32* %49, align 4, !dbg !1053
  %51 = add i32 %50, -1, !dbg !1053
  store i32 %51, i32* %49, align 4, !dbg !1053
  %52 = icmp ugt i32 %50, 0, !dbg !1053
  br i1 %52, label %53, label %62, !dbg !1053

; <label>:53                                      ; preds = %45
  %54 = load %struct.LexState** %1, align 4, !dbg !1054
  %55 = getelementptr inbounds %struct.LexState* %54, i32 0, i32 7, !dbg !1054
  %56 = load %struct.Zio** %55, align 4, !dbg !1054
  %57 = getelementptr inbounds %struct.Zio* %56, i32 0, i32 1, !dbg !1054
  %58 = load i8** %57, align 4, !dbg !1054
  %59 = getelementptr inbounds i8* %58, i32 1, !dbg !1054
  store i8* %59, i8** %57, align 4, !dbg !1054
  %60 = load i8* %58, align 1, !dbg !1054
  %61 = zext i8 %60 to i32, !dbg !1054
  br label %67, !dbg !1054

; <label>:62                                      ; preds = %45
  %63 = load %struct.LexState** %1, align 4, !dbg !1056
  %64 = getelementptr inbounds %struct.LexState* %63, i32 0, i32 7, !dbg !1056
  %65 = load %struct.Zio** %64, align 4, !dbg !1056
  %66 = call i32 @luaZ_fill(%struct.Zio* %65), !dbg !1056
  br label %67, !dbg !1056

; <label>:67                                      ; preds = %62, %53
  %68 = phi i32 [ %61, %53 ], [ %66, %62 ], !dbg !1053
  %69 = load %struct.LexState** %1, align 4, !dbg !1058
  %70 = getelementptr inbounds %struct.LexState* %69, i32 0, i32 0, !dbg !1058
  store i32 %68, i32* %70, align 4, !dbg !1058
  br label %71, !dbg !1058

; <label>:71                                      ; preds = %67, %39, %34
  %72 = load %struct.LexState** %1, align 4, !dbg !1061
  %73 = getelementptr inbounds %struct.LexState* %72, i32 0, i32 1, !dbg !1061
  %74 = load i32* %73, align 4, !dbg !1061
  %75 = add nsw i32 %74, 1, !dbg !1061
  store i32 %75, i32* %73, align 4, !dbg !1061
  %76 = icmp sge i32 %75, 2147483647, !dbg !1061
  br i1 %76, label %77, label %79, !dbg !1061

; <label>:77                                      ; preds = %71
  %78 = load %struct.LexState** %1, align 4, !dbg !1063
  call void @lexerror(%struct.LexState* %78, i8* getelementptr inbounds ([25 x i8]* @.str20, i32 0, i32 0), i32 0) #6, !dbg !1063
  unreachable, !dbg !1063

; <label>:79                                      ; preds = %71
  ret void, !dbg !1064
}

declare hidden i32 @luaZ_fill(%struct.Zio*) #2

; Function Attrs: nounwind
define internal i32 @skip_sep(%struct.LexState* %ls) #0 {
  %1 = alloca %struct.LexState*, align 4
  %count = alloca i32, align 4
  %s = alloca i32, align 4
  store %struct.LexState* %ls, %struct.LexState** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.LexState** %1}, metadata !1065), !dbg !1066
  call void @llvm.dbg.declare(metadata !{i32* %count}, metadata !1067), !dbg !1068
  store i32 0, i32* %count, align 4, !dbg !1069
  call void @llvm.dbg.declare(metadata !{i32* %s}, metadata !1070), !dbg !1071
  %2 = load %struct.LexState** %1, align 4, !dbg !1072
  %3 = getelementptr inbounds %struct.LexState* %2, i32 0, i32 0, !dbg !1072
  %4 = load i32* %3, align 4, !dbg !1072
  store i32 %4, i32* %s, align 4, !dbg !1072
  %5 = load %struct.LexState** %1, align 4, !dbg !1073
  %6 = load %struct.LexState** %1, align 4, !dbg !1073
  %7 = getelementptr inbounds %struct.LexState* %6, i32 0, i32 0, !dbg !1073
  %8 = load i32* %7, align 4, !dbg !1073
  call void @save(%struct.LexState* %5, i32 %8), !dbg !1073
  %9 = load %struct.LexState** %1, align 4, !dbg !1073
  %10 = getelementptr inbounds %struct.LexState* %9, i32 0, i32 7, !dbg !1073
  %11 = load %struct.Zio** %10, align 4, !dbg !1073
  %12 = getelementptr inbounds %struct.Zio* %11, i32 0, i32 0, !dbg !1073
  %13 = load i32* %12, align 4, !dbg !1073
  %14 = add i32 %13, -1, !dbg !1073
  store i32 %14, i32* %12, align 4, !dbg !1073
  %15 = icmp ugt i32 %13, 0, !dbg !1073
  br i1 %15, label %16, label %25, !dbg !1073

; <label>:16                                      ; preds = %0
  %17 = load %struct.LexState** %1, align 4, !dbg !1074
  %18 = getelementptr inbounds %struct.LexState* %17, i32 0, i32 7, !dbg !1074
  %19 = load %struct.Zio** %18, align 4, !dbg !1074
  %20 = getelementptr inbounds %struct.Zio* %19, i32 0, i32 1, !dbg !1074
  %21 = load i8** %20, align 4, !dbg !1074
  %22 = getelementptr inbounds i8* %21, i32 1, !dbg !1074
  store i8* %22, i8** %20, align 4, !dbg !1074
  %23 = load i8* %21, align 1, !dbg !1074
  %24 = zext i8 %23 to i32, !dbg !1074
  br label %30, !dbg !1074

; <label>:25                                      ; preds = %0
  %26 = load %struct.LexState** %1, align 4, !dbg !1076
  %27 = getelementptr inbounds %struct.LexState* %26, i32 0, i32 7, !dbg !1076
  %28 = load %struct.Zio** %27, align 4, !dbg !1076
  %29 = call i32 @luaZ_fill(%struct.Zio* %28), !dbg !1076
  br label %30, !dbg !1076

; <label>:30                                      ; preds = %25, %16
  %31 = phi i32 [ %24, %16 ], [ %29, %25 ], !dbg !1073
  %32 = load %struct.LexState** %1, align 4, !dbg !1078
  %33 = getelementptr inbounds %struct.LexState* %32, i32 0, i32 0, !dbg !1078
  store i32 %31, i32* %33, align 4, !dbg !1078
  br label %34, !dbg !1081

; <label>:34                                      ; preds = %65, %30
  %35 = load %struct.LexState** %1, align 4, !dbg !1082
  %36 = getelementptr inbounds %struct.LexState* %35, i32 0, i32 0, !dbg !1082
  %37 = load i32* %36, align 4, !dbg !1082
  %38 = icmp eq i32 %37, 61, !dbg !1082
  br i1 %38, label %39, label %71, !dbg !1082

; <label>:39                                      ; preds = %34
  %40 = load %struct.LexState** %1, align 4, !dbg !1084
  %41 = load %struct.LexState** %1, align 4, !dbg !1084
  %42 = getelementptr inbounds %struct.LexState* %41, i32 0, i32 0, !dbg !1084
  %43 = load i32* %42, align 4, !dbg !1084
  call void @save(%struct.LexState* %40, i32 %43), !dbg !1084
  %44 = load %struct.LexState** %1, align 4, !dbg !1084
  %45 = getelementptr inbounds %struct.LexState* %44, i32 0, i32 7, !dbg !1084
  %46 = load %struct.Zio** %45, align 4, !dbg !1084
  %47 = getelementptr inbounds %struct.Zio* %46, i32 0, i32 0, !dbg !1084
  %48 = load i32* %47, align 4, !dbg !1084
  %49 = add i32 %48, -1, !dbg !1084
  store i32 %49, i32* %47, align 4, !dbg !1084
  %50 = icmp ugt i32 %48, 0, !dbg !1084
  br i1 %50, label %51, label %60, !dbg !1084

; <label>:51                                      ; preds = %39
  %52 = load %struct.LexState** %1, align 4, !dbg !1086
  %53 = getelementptr inbounds %struct.LexState* %52, i32 0, i32 7, !dbg !1086
  %54 = load %struct.Zio** %53, align 4, !dbg !1086
  %55 = getelementptr inbounds %struct.Zio* %54, i32 0, i32 1, !dbg !1086
  %56 = load i8** %55, align 4, !dbg !1086
  %57 = getelementptr inbounds i8* %56, i32 1, !dbg !1086
  store i8* %57, i8** %55, align 4, !dbg !1086
  %58 = load i8* %56, align 1, !dbg !1086
  %59 = zext i8 %58 to i32, !dbg !1086
  br label %65, !dbg !1086

; <label>:60                                      ; preds = %39
  %61 = load %struct.LexState** %1, align 4, !dbg !1088
  %62 = getelementptr inbounds %struct.LexState* %61, i32 0, i32 7, !dbg !1088
  %63 = load %struct.Zio** %62, align 4, !dbg !1088
  %64 = call i32 @luaZ_fill(%struct.Zio* %63), !dbg !1088
  br label %65, !dbg !1088

; <label>:65                                      ; preds = %60, %51
  %66 = phi i32 [ %59, %51 ], [ %64, %60 ], !dbg !1084
  %67 = load %struct.LexState** %1, align 4, !dbg !1090
  %68 = getelementptr inbounds %struct.LexState* %67, i32 0, i32 0, !dbg !1090
  store i32 %66, i32* %68, align 4, !dbg !1090
  %69 = load i32* %count, align 4, !dbg !1093
  %70 = add nsw i32 %69, 1, !dbg !1093
  store i32 %70, i32* %count, align 4, !dbg !1093
  br label %34, !dbg !1094

; <label>:71                                      ; preds = %34
  %72 = load %struct.LexState** %1, align 4, !dbg !1095
  %73 = getelementptr inbounds %struct.LexState* %72, i32 0, i32 0, !dbg !1095
  %74 = load i32* %73, align 4, !dbg !1095
  %75 = load i32* %s, align 4, !dbg !1095
  %76 = icmp eq i32 %74, %75, !dbg !1095
  br i1 %76, label %77, label %79, !dbg !1095

; <label>:77                                      ; preds = %71
  %78 = load i32* %count, align 4, !dbg !1096
  br label %83, !dbg !1096

; <label>:79                                      ; preds = %71
  %80 = load i32* %count, align 4, !dbg !1098
  %81 = sub nsw i32 0, %80, !dbg !1098
  %82 = sub nsw i32 %81, 1, !dbg !1098
  br label %83, !dbg !1098

; <label>:83                                      ; preds = %79, %77
  %84 = phi i32 [ %78, %77 ], [ %82, %79 ], !dbg !1095
  ret i32 %84, !dbg !1100
}

; Function Attrs: nounwind
define internal void @read_long_string(%struct.LexState* %ls, %union.SemInfo* %seminfo, i32 %sep) #0 {
  %1 = alloca %struct.LexState*, align 4
  %2 = alloca %union.SemInfo*, align 4
  %3 = alloca i32, align 4
  %line = alloca i32, align 4
  %what = alloca i8*, align 4
  %msg = alloca i8*, align 4
  store %struct.LexState* %ls, %struct.LexState** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.LexState** %1}, metadata !1103), !dbg !1104
  store %union.SemInfo* %seminfo, %union.SemInfo** %2, align 4
  call void @llvm.dbg.declare(metadata !{%union.SemInfo** %2}, metadata !1105), !dbg !1106
  store i32 %sep, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !1107), !dbg !1108
  call void @llvm.dbg.declare(metadata !{i32* %line}, metadata !1109), !dbg !1110
  %4 = load %struct.LexState** %1, align 4, !dbg !1111
  %5 = getelementptr inbounds %struct.LexState* %4, i32 0, i32 1, !dbg !1111
  %6 = load i32* %5, align 4, !dbg !1111
  store i32 %6, i32* %line, align 4, !dbg !1111
  %7 = load %struct.LexState** %1, align 4, !dbg !1112
  %8 = load %struct.LexState** %1, align 4, !dbg !1112
  %9 = getelementptr inbounds %struct.LexState* %8, i32 0, i32 0, !dbg !1112
  %10 = load i32* %9, align 4, !dbg !1112
  call void @save(%struct.LexState* %7, i32 %10), !dbg !1112
  %11 = load %struct.LexState** %1, align 4, !dbg !1112
  %12 = getelementptr inbounds %struct.LexState* %11, i32 0, i32 7, !dbg !1112
  %13 = load %struct.Zio** %12, align 4, !dbg !1112
  %14 = getelementptr inbounds %struct.Zio* %13, i32 0, i32 0, !dbg !1112
  %15 = load i32* %14, align 4, !dbg !1112
  %16 = add i32 %15, -1, !dbg !1112
  store i32 %16, i32* %14, align 4, !dbg !1112
  %17 = icmp ugt i32 %15, 0, !dbg !1112
  br i1 %17, label %18, label %27, !dbg !1112

; <label>:18                                      ; preds = %0
  %19 = load %struct.LexState** %1, align 4, !dbg !1113
  %20 = getelementptr inbounds %struct.LexState* %19, i32 0, i32 7, !dbg !1113
  %21 = load %struct.Zio** %20, align 4, !dbg !1113
  %22 = getelementptr inbounds %struct.Zio* %21, i32 0, i32 1, !dbg !1113
  %23 = load i8** %22, align 4, !dbg !1113
  %24 = getelementptr inbounds i8* %23, i32 1, !dbg !1113
  store i8* %24, i8** %22, align 4, !dbg !1113
  %25 = load i8* %23, align 1, !dbg !1113
  %26 = zext i8 %25 to i32, !dbg !1113
  br label %32, !dbg !1113

; <label>:27                                      ; preds = %0
  %28 = load %struct.LexState** %1, align 4, !dbg !1115
  %29 = getelementptr inbounds %struct.LexState* %28, i32 0, i32 7, !dbg !1115
  %30 = load %struct.Zio** %29, align 4, !dbg !1115
  %31 = call i32 @luaZ_fill(%struct.Zio* %30), !dbg !1115
  br label %32, !dbg !1115

; <label>:32                                      ; preds = %27, %18
  %33 = phi i32 [ %26, %18 ], [ %31, %27 ], !dbg !1112
  %34 = load %struct.LexState** %1, align 4, !dbg !1117
  %35 = getelementptr inbounds %struct.LexState* %34, i32 0, i32 0, !dbg !1117
  store i32 %33, i32* %35, align 4, !dbg !1117
  %36 = load %struct.LexState** %1, align 4, !dbg !1120
  %37 = getelementptr inbounds %struct.LexState* %36, i32 0, i32 0, !dbg !1120
  %38 = load i32* %37, align 4, !dbg !1120
  %39 = icmp eq i32 %38, 10, !dbg !1120
  br i1 %39, label %45, label %40, !dbg !1120

; <label>:40                                      ; preds = %32
  %41 = load %struct.LexState** %1, align 4, !dbg !1122
  %42 = getelementptr inbounds %struct.LexState* %41, i32 0, i32 0, !dbg !1122
  %43 = load i32* %42, align 4, !dbg !1122
  %44 = icmp eq i32 %43, 13, !dbg !1122
  br i1 %44, label %45, label %47, !dbg !1122

; <label>:45                                      ; preds = %40, %32
  %46 = load %struct.LexState** %1, align 4, !dbg !1124
  call void @inclinenumber(%struct.LexState* %46), !dbg !1124
  br label %47, !dbg !1124

; <label>:47                                      ; preds = %45, %40
  br label %48, !dbg !1125

; <label>:48                                      ; preds = %171, %47
  %49 = load %struct.LexState** %1, align 4, !dbg !1127
  %50 = getelementptr inbounds %struct.LexState* %49, i32 0, i32 0, !dbg !1127
  %51 = load i32* %50, align 4, !dbg !1127
  switch i32 %51, label %111 [
    i32 -1, label %52
    i32 93, label %64
    i32 10, label %100
    i32 13, label %100
  ], !dbg !1127

; <label>:52                                      ; preds = %48
  call void @llvm.dbg.declare(metadata !{i8** %what}, metadata !1129), !dbg !1132
  %53 = load %union.SemInfo** %2, align 4, !dbg !1133
  %54 = icmp ne %union.SemInfo* %53, null, !dbg !1133
  %55 = select i1 %54, i8* getelementptr inbounds ([7 x i8]* @.str17, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @.str18, i32 0, i32 0), !dbg !1133
  store i8* %55, i8** %what, align 4, !dbg !1133
  call void @llvm.dbg.declare(metadata !{i8** %msg}, metadata !1134), !dbg !1135
  %56 = load %struct.LexState** %1, align 4, !dbg !1136
  %57 = getelementptr inbounds %struct.LexState* %56, i32 0, i32 6, !dbg !1136
  %58 = load %struct.lua_State** %57, align 4, !dbg !1136
  %59 = load i8** %what, align 4, !dbg !1136
  %60 = load i32* %line, align 4, !dbg !1136
  %61 = call i8* (%struct.lua_State*, i8*, ...)* @luaO_pushfstring(%struct.lua_State* %58, i8* getelementptr inbounds ([41 x i8]* @.str19, i32 0, i32 0), i8* %59, i32 %60), !dbg !1136
  store i8* %61, i8** %msg, align 4, !dbg !1136
  %62 = load %struct.LexState** %1, align 4, !dbg !1137
  %63 = load i8** %msg, align 4, !dbg !1137
  call void @lexerror(%struct.LexState* %62, i8* %63, i32 289) #6, !dbg !1137
  unreachable, !dbg !1137

; <label>:64                                      ; preds = %48
  %65 = load %struct.LexState** %1, align 4, !dbg !1138
  %66 = call i32 @skip_sep(%struct.LexState* %65), !dbg !1138
  %67 = load i32* %3, align 4, !dbg !1138
  %68 = icmp eq i32 %66, %67, !dbg !1138
  br i1 %68, label %69, label %99, !dbg !1138

; <label>:69                                      ; preds = %64
  %70 = load %struct.LexState** %1, align 4, !dbg !1141
  %71 = load %struct.LexState** %1, align 4, !dbg !1141
  %72 = getelementptr inbounds %struct.LexState* %71, i32 0, i32 0, !dbg !1141
  %73 = load i32* %72, align 4, !dbg !1141
  call void @save(%struct.LexState* %70, i32 %73), !dbg !1141
  %74 = load %struct.LexState** %1, align 4, !dbg !1141
  %75 = getelementptr inbounds %struct.LexState* %74, i32 0, i32 7, !dbg !1141
  %76 = load %struct.Zio** %75, align 4, !dbg !1141
  %77 = getelementptr inbounds %struct.Zio* %76, i32 0, i32 0, !dbg !1141
  %78 = load i32* %77, align 4, !dbg !1141
  %79 = add i32 %78, -1, !dbg !1141
  store i32 %79, i32* %77, align 4, !dbg !1141
  %80 = icmp ugt i32 %78, 0, !dbg !1141
  br i1 %80, label %81, label %90, !dbg !1141

; <label>:81                                      ; preds = %69
  %82 = load %struct.LexState** %1, align 4, !dbg !1143
  %83 = getelementptr inbounds %struct.LexState* %82, i32 0, i32 7, !dbg !1143
  %84 = load %struct.Zio** %83, align 4, !dbg !1143
  %85 = getelementptr inbounds %struct.Zio* %84, i32 0, i32 1, !dbg !1143
  %86 = load i8** %85, align 4, !dbg !1143
  %87 = getelementptr inbounds i8* %86, i32 1, !dbg !1143
  store i8* %87, i8** %85, align 4, !dbg !1143
  %88 = load i8* %86, align 1, !dbg !1143
  %89 = zext i8 %88 to i32, !dbg !1143
  br label %95, !dbg !1143

; <label>:90                                      ; preds = %69
  %91 = load %struct.LexState** %1, align 4, !dbg !1145
  %92 = getelementptr inbounds %struct.LexState* %91, i32 0, i32 7, !dbg !1145
  %93 = load %struct.Zio** %92, align 4, !dbg !1145
  %94 = call i32 @luaZ_fill(%struct.Zio* %93), !dbg !1145
  br label %95, !dbg !1145

; <label>:95                                      ; preds = %90, %81
  %96 = phi i32 [ %89, %81 ], [ %94, %90 ], !dbg !1141
  %97 = load %struct.LexState** %1, align 4, !dbg !1147
  %98 = getelementptr inbounds %struct.LexState* %97, i32 0, i32 0, !dbg !1147
  store i32 %96, i32* %98, align 4, !dbg !1147
  br label %172, !dbg !1150

; <label>:99                                      ; preds = %64
  br label %171, !dbg !1151

; <label>:100                                     ; preds = %48, %48
  %101 = load %struct.LexState** %1, align 4, !dbg !1152
  call void @save(%struct.LexState* %101, i32 10), !dbg !1152
  %102 = load %struct.LexState** %1, align 4, !dbg !1154
  call void @inclinenumber(%struct.LexState* %102), !dbg !1154
  %103 = load %union.SemInfo** %2, align 4, !dbg !1155
  %104 = icmp ne %union.SemInfo* %103, null, !dbg !1155
  br i1 %104, label %110, label %105, !dbg !1155

; <label>:105                                     ; preds = %100
  %106 = load %struct.LexState** %1, align 4, !dbg !1157
  %107 = getelementptr inbounds %struct.LexState* %106, i32 0, i32 8, !dbg !1157
  %108 = load %struct.Mbuffer** %107, align 4, !dbg !1157
  %109 = getelementptr inbounds %struct.Mbuffer* %108, i32 0, i32 1, !dbg !1157
  store i32 0, i32* %109, align 4, !dbg !1157
  br label %110, !dbg !1157

; <label>:110                                     ; preds = %105, %100
  br label %171, !dbg !1159

; <label>:111                                     ; preds = %48
  %112 = load %union.SemInfo** %2, align 4, !dbg !1160
  %113 = icmp ne %union.SemInfo* %112, null, !dbg !1160
  br i1 %113, label %114, label %144, !dbg !1160

; <label>:114                                     ; preds = %111
  %115 = load %struct.LexState** %1, align 4, !dbg !1163
  %116 = load %struct.LexState** %1, align 4, !dbg !1163
  %117 = getelementptr inbounds %struct.LexState* %116, i32 0, i32 0, !dbg !1163
  %118 = load i32* %117, align 4, !dbg !1163
  call void @save(%struct.LexState* %115, i32 %118), !dbg !1163
  %119 = load %struct.LexState** %1, align 4, !dbg !1163
  %120 = getelementptr inbounds %struct.LexState* %119, i32 0, i32 7, !dbg !1163
  %121 = load %struct.Zio** %120, align 4, !dbg !1163
  %122 = getelementptr inbounds %struct.Zio* %121, i32 0, i32 0, !dbg !1163
  %123 = load i32* %122, align 4, !dbg !1163
  %124 = add i32 %123, -1, !dbg !1163
  store i32 %124, i32* %122, align 4, !dbg !1163
  %125 = icmp ugt i32 %123, 0, !dbg !1163
  br i1 %125, label %126, label %135, !dbg !1163

; <label>:126                                     ; preds = %114
  %127 = load %struct.LexState** %1, align 4, !dbg !1165
  %128 = getelementptr inbounds %struct.LexState* %127, i32 0, i32 7, !dbg !1165
  %129 = load %struct.Zio** %128, align 4, !dbg !1165
  %130 = getelementptr inbounds %struct.Zio* %129, i32 0, i32 1, !dbg !1165
  %131 = load i8** %130, align 4, !dbg !1165
  %132 = getelementptr inbounds i8* %131, i32 1, !dbg !1165
  store i8* %132, i8** %130, align 4, !dbg !1165
  %133 = load i8* %131, align 1, !dbg !1165
  %134 = zext i8 %133 to i32, !dbg !1165
  br label %140, !dbg !1165

; <label>:135                                     ; preds = %114
  %136 = load %struct.LexState** %1, align 4, !dbg !1167
  %137 = getelementptr inbounds %struct.LexState* %136, i32 0, i32 7, !dbg !1167
  %138 = load %struct.Zio** %137, align 4, !dbg !1167
  %139 = call i32 @luaZ_fill(%struct.Zio* %138), !dbg !1167
  br label %140, !dbg !1167

; <label>:140                                     ; preds = %135, %126
  %141 = phi i32 [ %134, %126 ], [ %139, %135 ], !dbg !1169
  %142 = load %struct.LexState** %1, align 4, !dbg !1170
  %143 = getelementptr inbounds %struct.LexState* %142, i32 0, i32 0, !dbg !1170
  store i32 %141, i32* %143, align 4, !dbg !1170
  br label %170, !dbg !1170

; <label>:144                                     ; preds = %111
  %145 = load %struct.LexState** %1, align 4, !dbg !1173
  %146 = getelementptr inbounds %struct.LexState* %145, i32 0, i32 7, !dbg !1173
  %147 = load %struct.Zio** %146, align 4, !dbg !1173
  %148 = getelementptr inbounds %struct.Zio* %147, i32 0, i32 0, !dbg !1173
  %149 = load i32* %148, align 4, !dbg !1173
  %150 = add i32 %149, -1, !dbg !1173
  store i32 %150, i32* %148, align 4, !dbg !1173
  %151 = icmp ugt i32 %149, 0, !dbg !1173
  br i1 %151, label %152, label %161, !dbg !1173

; <label>:152                                     ; preds = %144
  %153 = load %struct.LexState** %1, align 4, !dbg !1174
  %154 = getelementptr inbounds %struct.LexState* %153, i32 0, i32 7, !dbg !1174
  %155 = load %struct.Zio** %154, align 4, !dbg !1174
  %156 = getelementptr inbounds %struct.Zio* %155, i32 0, i32 1, !dbg !1174
  %157 = load i8** %156, align 4, !dbg !1174
  %158 = getelementptr inbounds i8* %157, i32 1, !dbg !1174
  store i8* %158, i8** %156, align 4, !dbg !1174
  %159 = load i8* %157, align 1, !dbg !1174
  %160 = zext i8 %159 to i32, !dbg !1174
  br label %166, !dbg !1174

; <label>:161                                     ; preds = %144
  %162 = load %struct.LexState** %1, align 4, !dbg !1176
  %163 = getelementptr inbounds %struct.LexState* %162, i32 0, i32 7, !dbg !1176
  %164 = load %struct.Zio** %163, align 4, !dbg !1176
  %165 = call i32 @luaZ_fill(%struct.Zio* %164), !dbg !1176
  br label %166, !dbg !1176

; <label>:166                                     ; preds = %161, %152
  %167 = phi i32 [ %160, %152 ], [ %165, %161 ], !dbg !1173
  %168 = load %struct.LexState** %1, align 4, !dbg !1178
  %169 = getelementptr inbounds %struct.LexState* %168, i32 0, i32 0, !dbg !1178
  store i32 %167, i32* %169, align 4, !dbg !1178
  br label %170

; <label>:170                                     ; preds = %166, %140
  br label %171, !dbg !1181

; <label>:171                                     ; preds = %170, %110, %99
  br label %48, !dbg !1182

; <label>:172                                     ; preds = %95
  %173 = load %union.SemInfo** %2, align 4, !dbg !1183
  %174 = icmp ne %union.SemInfo* %173, null, !dbg !1183
  br i1 %174, label %175, label %197, !dbg !1183

; <label>:175                                     ; preds = %172
  %176 = load %struct.LexState** %1, align 4, !dbg !1185
  %177 = load %struct.LexState** %1, align 4, !dbg !1185
  %178 = getelementptr inbounds %struct.LexState* %177, i32 0, i32 8, !dbg !1185
  %179 = load %struct.Mbuffer** %178, align 4, !dbg !1185
  %180 = getelementptr inbounds %struct.Mbuffer* %179, i32 0, i32 0, !dbg !1185
  %181 = load i8** %180, align 4, !dbg !1185
  %182 = load i32* %3, align 4, !dbg !1185
  %183 = add nsw i32 2, %182, !dbg !1185
  %184 = getelementptr inbounds i8* %181, i32 %183, !dbg !1185
  %185 = load %struct.LexState** %1, align 4, !dbg !1185
  %186 = getelementptr inbounds %struct.LexState* %185, i32 0, i32 8, !dbg !1185
  %187 = load %struct.Mbuffer** %186, align 4, !dbg !1185
  %188 = getelementptr inbounds %struct.Mbuffer* %187, i32 0, i32 1, !dbg !1185
  %189 = load i32* %188, align 4, !dbg !1185
  %190 = load i32* %3, align 4, !dbg !1185
  %191 = add nsw i32 2, %190, !dbg !1185
  %192 = mul nsw i32 2, %191, !dbg !1185
  %193 = sub i32 %189, %192, !dbg !1185
  %194 = call %struct.TString* @luaX_newstring(%struct.LexState* %176, i8* %184, i32 %193), !dbg !1185
  %195 = load %union.SemInfo** %2, align 4, !dbg !1185
  %196 = bitcast %union.SemInfo* %195 to %struct.TString**, !dbg !1185
  store %struct.TString* %194, %struct.TString** %196, align 4, !dbg !1185
  br label %197, !dbg !1185

; <label>:197                                     ; preds = %175, %172
  ret void, !dbg !1186
}

; Function Attrs: nounwind
define internal i32 @check_next1(%struct.LexState* %ls, i32 %c) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.LexState*, align 4
  %3 = alloca i32, align 4
  store %struct.LexState* %ls, %struct.LexState** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.LexState** %2}, metadata !1187), !dbg !1188
  store i32 %c, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !1189), !dbg !1190
  %4 = load %struct.LexState** %2, align 4, !dbg !1191
  %5 = getelementptr inbounds %struct.LexState* %4, i32 0, i32 0, !dbg !1191
  %6 = load i32* %5, align 4, !dbg !1191
  %7 = load i32* %3, align 4, !dbg !1191
  %8 = icmp eq i32 %6, %7, !dbg !1191
  br i1 %8, label %9, label %35, !dbg !1191

; <label>:9                                       ; preds = %0
  %10 = load %struct.LexState** %2, align 4, !dbg !1193
  %11 = getelementptr inbounds %struct.LexState* %10, i32 0, i32 7, !dbg !1193
  %12 = load %struct.Zio** %11, align 4, !dbg !1193
  %13 = getelementptr inbounds %struct.Zio* %12, i32 0, i32 0, !dbg !1193
  %14 = load i32* %13, align 4, !dbg !1193
  %15 = add i32 %14, -1, !dbg !1193
  store i32 %15, i32* %13, align 4, !dbg !1193
  %16 = icmp ugt i32 %14, 0, !dbg !1193
  br i1 %16, label %17, label %26, !dbg !1193

; <label>:17                                      ; preds = %9
  %18 = load %struct.LexState** %2, align 4, !dbg !1195
  %19 = getelementptr inbounds %struct.LexState* %18, i32 0, i32 7, !dbg !1195
  %20 = load %struct.Zio** %19, align 4, !dbg !1195
  %21 = getelementptr inbounds %struct.Zio* %20, i32 0, i32 1, !dbg !1195
  %22 = load i8** %21, align 4, !dbg !1195
  %23 = getelementptr inbounds i8* %22, i32 1, !dbg !1195
  store i8* %23, i8** %21, align 4, !dbg !1195
  %24 = load i8* %22, align 1, !dbg !1195
  %25 = zext i8 %24 to i32, !dbg !1195
  br label %31, !dbg !1195

; <label>:26                                      ; preds = %9
  %27 = load %struct.LexState** %2, align 4, !dbg !1197
  %28 = getelementptr inbounds %struct.LexState* %27, i32 0, i32 7, !dbg !1197
  %29 = load %struct.Zio** %28, align 4, !dbg !1197
  %30 = call i32 @luaZ_fill(%struct.Zio* %29), !dbg !1197
  br label %31, !dbg !1197

; <label>:31                                      ; preds = %26, %17
  %32 = phi i32 [ %25, %17 ], [ %30, %26 ], !dbg !1193
  %33 = load %struct.LexState** %2, align 4, !dbg !1199
  %34 = getelementptr inbounds %struct.LexState* %33, i32 0, i32 0, !dbg !1199
  store i32 %32, i32* %34, align 4, !dbg !1199
  store i32 1, i32* %1, !dbg !1202
  br label %36, !dbg !1202

; <label>:35                                      ; preds = %0
  store i32 0, i32* %1, !dbg !1203
  br label %36, !dbg !1203

; <label>:36                                      ; preds = %35, %31
  %37 = load i32* %1, !dbg !1204
  ret i32 %37, !dbg !1204
}

; Function Attrs: nounwind
define internal void @read_string(%struct.LexState* %ls, i32 %del, %union.SemInfo* %seminfo) #0 {
  %1 = alloca %struct.LexState*, align 4
  %2 = alloca i32, align 4
  %3 = alloca %union.SemInfo*, align 4
  %c = alloca i32, align 4
  store %struct.LexState* %ls, %struct.LexState** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.LexState** %1}, metadata !1205), !dbg !1206
  store i32 %del, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !1207), !dbg !1208
  store %union.SemInfo* %seminfo, %union.SemInfo** %3, align 4
  call void @llvm.dbg.declare(metadata !{%union.SemInfo** %3}, metadata !1209), !dbg !1210
  %4 = load %struct.LexState** %1, align 4, !dbg !1211
  %5 = load %struct.LexState** %1, align 4, !dbg !1211
  %6 = getelementptr inbounds %struct.LexState* %5, i32 0, i32 0, !dbg !1211
  %7 = load i32* %6, align 4, !dbg !1211
  call void @save(%struct.LexState* %4, i32 %7), !dbg !1211
  %8 = load %struct.LexState** %1, align 4, !dbg !1211
  %9 = getelementptr inbounds %struct.LexState* %8, i32 0, i32 7, !dbg !1211
  %10 = load %struct.Zio** %9, align 4, !dbg !1211
  %11 = getelementptr inbounds %struct.Zio* %10, i32 0, i32 0, !dbg !1211
  %12 = load i32* %11, align 4, !dbg !1211
  %13 = add i32 %12, -1, !dbg !1211
  store i32 %13, i32* %11, align 4, !dbg !1211
  %14 = icmp ugt i32 %12, 0, !dbg !1211
  br i1 %14, label %15, label %24, !dbg !1211

; <label>:15                                      ; preds = %0
  %16 = load %struct.LexState** %1, align 4, !dbg !1212
  %17 = getelementptr inbounds %struct.LexState* %16, i32 0, i32 7, !dbg !1212
  %18 = load %struct.Zio** %17, align 4, !dbg !1212
  %19 = getelementptr inbounds %struct.Zio* %18, i32 0, i32 1, !dbg !1212
  %20 = load i8** %19, align 4, !dbg !1212
  %21 = getelementptr inbounds i8* %20, i32 1, !dbg !1212
  store i8* %21, i8** %19, align 4, !dbg !1212
  %22 = load i8* %20, align 1, !dbg !1212
  %23 = zext i8 %22 to i32, !dbg !1212
  br label %29, !dbg !1212

; <label>:24                                      ; preds = %0
  %25 = load %struct.LexState** %1, align 4, !dbg !1214
  %26 = getelementptr inbounds %struct.LexState* %25, i32 0, i32 7, !dbg !1214
  %27 = load %struct.Zio** %26, align 4, !dbg !1214
  %28 = call i32 @luaZ_fill(%struct.Zio* %27), !dbg !1214
  br label %29, !dbg !1214

; <label>:29                                      ; preds = %24, %15
  %30 = phi i32 [ %23, %15 ], [ %28, %24 ], !dbg !1211
  %31 = load %struct.LexState** %1, align 4, !dbg !1216
  %32 = getelementptr inbounds %struct.LexState* %31, i32 0, i32 0, !dbg !1216
  store i32 %30, i32* %32, align 4, !dbg !1216
  br label %33, !dbg !1219

; <label>:33                                      ; preds = %259, %29
  %34 = load %struct.LexState** %1, align 4, !dbg !1220
  %35 = getelementptr inbounds %struct.LexState* %34, i32 0, i32 0, !dbg !1220
  %36 = load i32* %35, align 4, !dbg !1220
  %37 = load i32* %2, align 4, !dbg !1220
  %38 = icmp ne i32 %36, %37, !dbg !1220
  br i1 %38, label %39, label %260, !dbg !1220

; <label>:39                                      ; preds = %33
  %40 = load %struct.LexState** %1, align 4, !dbg !1222
  %41 = getelementptr inbounds %struct.LexState* %40, i32 0, i32 0, !dbg !1222
  %42 = load i32* %41, align 4, !dbg !1222
  switch i32 %42, label %229 [
    i32 -1, label %43
    i32 10, label %45
    i32 13, label %45
    i32 92, label %47
  ], !dbg !1222

; <label>:43                                      ; preds = %39
  %44 = load %struct.LexState** %1, align 4, !dbg !1224
  call void @lexerror(%struct.LexState* %44, i8* getelementptr inbounds ([18 x i8]* @.str10, i32 0, i32 0), i32 289) #6, !dbg !1224
  unreachable, !dbg !1224

; <label>:45                                      ; preds = %39, %39
  %46 = load %struct.LexState** %1, align 4, !dbg !1226
  call void @lexerror(%struct.LexState* %46, i8* getelementptr inbounds ([18 x i8]* @.str10, i32 0, i32 0), i32 293) #6, !dbg !1226
  unreachable, !dbg !1226

; <label>:47                                      ; preds = %39
  call void @llvm.dbg.declare(metadata !{i32* %c}, metadata !1227), !dbg !1229
  %48 = load %struct.LexState** %1, align 4, !dbg !1230
  %49 = load %struct.LexState** %1, align 4, !dbg !1230
  %50 = getelementptr inbounds %struct.LexState* %49, i32 0, i32 0, !dbg !1230
  %51 = load i32* %50, align 4, !dbg !1230
  call void @save(%struct.LexState* %48, i32 %51), !dbg !1230
  %52 = load %struct.LexState** %1, align 4, !dbg !1230
  %53 = getelementptr inbounds %struct.LexState* %52, i32 0, i32 7, !dbg !1230
  %54 = load %struct.Zio** %53, align 4, !dbg !1230
  %55 = getelementptr inbounds %struct.Zio* %54, i32 0, i32 0, !dbg !1230
  %56 = load i32* %55, align 4, !dbg !1230
  %57 = add i32 %56, -1, !dbg !1230
  store i32 %57, i32* %55, align 4, !dbg !1230
  %58 = icmp ugt i32 %56, 0, !dbg !1230
  br i1 %58, label %59, label %68, !dbg !1230

; <label>:59                                      ; preds = %47
  %60 = load %struct.LexState** %1, align 4, !dbg !1231
  %61 = getelementptr inbounds %struct.LexState* %60, i32 0, i32 7, !dbg !1231
  %62 = load %struct.Zio** %61, align 4, !dbg !1231
  %63 = getelementptr inbounds %struct.Zio* %62, i32 0, i32 1, !dbg !1231
  %64 = load i8** %63, align 4, !dbg !1231
  %65 = getelementptr inbounds i8* %64, i32 1, !dbg !1231
  store i8* %65, i8** %63, align 4, !dbg !1231
  %66 = load i8* %64, align 1, !dbg !1231
  %67 = zext i8 %66 to i32, !dbg !1231
  br label %73, !dbg !1231

; <label>:68                                      ; preds = %47
  %69 = load %struct.LexState** %1, align 4, !dbg !1233
  %70 = getelementptr inbounds %struct.LexState* %69, i32 0, i32 7, !dbg !1233
  %71 = load %struct.Zio** %70, align 4, !dbg !1233
  %72 = call i32 @luaZ_fill(%struct.Zio* %71), !dbg !1233
  br label %73, !dbg !1233

; <label>:73                                      ; preds = %68, %59
  %74 = phi i32 [ %67, %59 ], [ %72, %68 ], !dbg !1230
  %75 = load %struct.LexState** %1, align 4, !dbg !1235
  %76 = getelementptr inbounds %struct.LexState* %75, i32 0, i32 0, !dbg !1235
  store i32 %74, i32* %76, align 4, !dbg !1235
  %77 = load %struct.LexState** %1, align 4, !dbg !1238
  %78 = getelementptr inbounds %struct.LexState* %77, i32 0, i32 0, !dbg !1238
  %79 = load i32* %78, align 4, !dbg !1238
  switch i32 %79, label %181 [
    i32 97, label %80
    i32 98, label %81
    i32 102, label %82
    i32 110, label %83
    i32 114, label %84
    i32 116, label %85
    i32 118, label %86
    i32 120, label %87
    i32 117, label %90
    i32 10, label %92
    i32 13, label %92
    i32 92, label %94
    i32 34, label %94
    i32 39, label %94
    i32 -1, label %98
    i32 122, label %99
  ], !dbg !1238

; <label>:80                                      ; preds = %73
  store i32 7, i32* %c, align 4, !dbg !1239
  br label %193, !dbg !1241

; <label>:81                                      ; preds = %73
  store i32 8, i32* %c, align 4, !dbg !1242
  br label %193, !dbg !1243

; <label>:82                                      ; preds = %73
  store i32 12, i32* %c, align 4, !dbg !1244
  br label %193, !dbg !1245

; <label>:83                                      ; preds = %73
  store i32 10, i32* %c, align 4, !dbg !1246
  br label %193, !dbg !1247

; <label>:84                                      ; preds = %73
  store i32 13, i32* %c, align 4, !dbg !1248
  br label %193, !dbg !1249

; <label>:85                                      ; preds = %73
  store i32 9, i32* %c, align 4, !dbg !1250
  br label %193, !dbg !1251

; <label>:86                                      ; preds = %73
  store i32 11, i32* %c, align 4, !dbg !1252
  br label %193, !dbg !1253

; <label>:87                                      ; preds = %73
  %88 = load %struct.LexState** %1, align 4, !dbg !1254
  %89 = call i32 @readhexaesc(%struct.LexState* %88), !dbg !1254
  store i32 %89, i32* %c, align 4, !dbg !1254
  br label %193, !dbg !1255

; <label>:90                                      ; preds = %73
  %91 = load %struct.LexState** %1, align 4, !dbg !1256
  call void @utf8esc(%struct.LexState* %91), !dbg !1256
  br label %228, !dbg !1257

; <label>:92                                      ; preds = %73, %73
  %93 = load %struct.LexState** %1, align 4, !dbg !1258
  call void @inclinenumber(%struct.LexState* %93), !dbg !1258
  store i32 10, i32* %c, align 4, !dbg !1259
  br label %219, !dbg !1260

; <label>:94                                      ; preds = %73, %73, %73
  %95 = load %struct.LexState** %1, align 4, !dbg !1261
  %96 = getelementptr inbounds %struct.LexState* %95, i32 0, i32 0, !dbg !1261
  %97 = load i32* %96, align 4, !dbg !1261
  store i32 %97, i32* %c, align 4, !dbg !1261
  br label %193, !dbg !1262

; <label>:98                                      ; preds = %73
  br label %228, !dbg !1263

; <label>:99                                      ; preds = %73
  %100 = load %struct.LexState** %1, align 4, !dbg !1264
  %101 = getelementptr inbounds %struct.LexState* %100, i32 0, i32 8, !dbg !1264
  %102 = load %struct.Mbuffer** %101, align 4, !dbg !1264
  %103 = getelementptr inbounds %struct.Mbuffer* %102, i32 0, i32 1, !dbg !1264
  %104 = load i32* %103, align 4, !dbg !1264
  %105 = sub i32 %104, 1, !dbg !1264
  store i32 %105, i32* %103, align 4, !dbg !1264
  %106 = load %struct.LexState** %1, align 4, !dbg !1266
  %107 = getelementptr inbounds %struct.LexState* %106, i32 0, i32 7, !dbg !1266
  %108 = load %struct.Zio** %107, align 4, !dbg !1266
  %109 = getelementptr inbounds %struct.Zio* %108, i32 0, i32 0, !dbg !1266
  %110 = load i32* %109, align 4, !dbg !1266
  %111 = add i32 %110, -1, !dbg !1266
  store i32 %111, i32* %109, align 4, !dbg !1266
  %112 = icmp ugt i32 %110, 0, !dbg !1266
  br i1 %112, label %113, label %122, !dbg !1266

; <label>:113                                     ; preds = %99
  %114 = load %struct.LexState** %1, align 4, !dbg !1267
  %115 = getelementptr inbounds %struct.LexState* %114, i32 0, i32 7, !dbg !1267
  %116 = load %struct.Zio** %115, align 4, !dbg !1267
  %117 = getelementptr inbounds %struct.Zio* %116, i32 0, i32 1, !dbg !1267
  %118 = load i8** %117, align 4, !dbg !1267
  %119 = getelementptr inbounds i8* %118, i32 1, !dbg !1267
  store i8* %119, i8** %117, align 4, !dbg !1267
  %120 = load i8* %118, align 1, !dbg !1267
  %121 = zext i8 %120 to i32, !dbg !1267
  br label %127, !dbg !1267

; <label>:122                                     ; preds = %99
  %123 = load %struct.LexState** %1, align 4, !dbg !1269
  %124 = getelementptr inbounds %struct.LexState* %123, i32 0, i32 7, !dbg !1269
  %125 = load %struct.Zio** %124, align 4, !dbg !1269
  %126 = call i32 @luaZ_fill(%struct.Zio* %125), !dbg !1269
  br label %127, !dbg !1269

; <label>:127                                     ; preds = %122, %113
  %128 = phi i32 [ %121, %113 ], [ %126, %122 ], !dbg !1266
  %129 = load %struct.LexState** %1, align 4, !dbg !1271
  %130 = getelementptr inbounds %struct.LexState* %129, i32 0, i32 0, !dbg !1271
  store i32 %128, i32* %130, align 4, !dbg !1271
  br label %131, !dbg !1274

; <label>:131                                     ; preds = %179, %127
  %132 = load %struct.LexState** %1, align 4, !dbg !1275
  %133 = getelementptr inbounds %struct.LexState* %132, i32 0, i32 0, !dbg !1275
  %134 = load i32* %133, align 4, !dbg !1275
  %135 = add nsw i32 %134, 1, !dbg !1275
  %136 = getelementptr inbounds [257 x i8]* @luai_ctype_, i32 0, i32 %135, !dbg !1275
  %137 = load i8* %136, align 1, !dbg !1275
  %138 = zext i8 %137 to i32, !dbg !1275
  %139 = and i32 %138, 8, !dbg !1275
  %140 = icmp ne i32 %139, 0, !dbg !1275
  br i1 %140, label %141, label %180, !dbg !1275

; <label>:141                                     ; preds = %131
  %142 = load %struct.LexState** %1, align 4, !dbg !1277
  %143 = getelementptr inbounds %struct.LexState* %142, i32 0, i32 0, !dbg !1277
  %144 = load i32* %143, align 4, !dbg !1277
  %145 = icmp eq i32 %144, 10, !dbg !1277
  br i1 %145, label %151, label %146, !dbg !1277

; <label>:146                                     ; preds = %141
  %147 = load %struct.LexState** %1, align 4, !dbg !1280
  %148 = getelementptr inbounds %struct.LexState* %147, i32 0, i32 0, !dbg !1280
  %149 = load i32* %148, align 4, !dbg !1280
  %150 = icmp eq i32 %149, 13, !dbg !1280
  br i1 %150, label %151, label %153, !dbg !1280

; <label>:151                                     ; preds = %146, %141
  %152 = load %struct.LexState** %1, align 4, !dbg !1282
  call void @inclinenumber(%struct.LexState* %152), !dbg !1282
  br label %179, !dbg !1282

; <label>:153                                     ; preds = %146
  %154 = load %struct.LexState** %1, align 4, !dbg !1285
  %155 = getelementptr inbounds %struct.LexState* %154, i32 0, i32 7, !dbg !1285
  %156 = load %struct.Zio** %155, align 4, !dbg !1285
  %157 = getelementptr inbounds %struct.Zio* %156, i32 0, i32 0, !dbg !1285
  %158 = load i32* %157, align 4, !dbg !1285
  %159 = add i32 %158, -1, !dbg !1285
  store i32 %159, i32* %157, align 4, !dbg !1285
  %160 = icmp ugt i32 %158, 0, !dbg !1285
  br i1 %160, label %161, label %170, !dbg !1285

; <label>:161                                     ; preds = %153
  %162 = load %struct.LexState** %1, align 4, !dbg !1286
  %163 = getelementptr inbounds %struct.LexState* %162, i32 0, i32 7, !dbg !1286
  %164 = load %struct.Zio** %163, align 4, !dbg !1286
  %165 = getelementptr inbounds %struct.Zio* %164, i32 0, i32 1, !dbg !1286
  %166 = load i8** %165, align 4, !dbg !1286
  %167 = getelementptr inbounds i8* %166, i32 1, !dbg !1286
  store i8* %167, i8** %165, align 4, !dbg !1286
  %168 = load i8* %166, align 1, !dbg !1286
  %169 = zext i8 %168 to i32, !dbg !1286
  br label %175, !dbg !1286

; <label>:170                                     ; preds = %153
  %171 = load %struct.LexState** %1, align 4, !dbg !1288
  %172 = getelementptr inbounds %struct.LexState* %171, i32 0, i32 7, !dbg !1288
  %173 = load %struct.Zio** %172, align 4, !dbg !1288
  %174 = call i32 @luaZ_fill(%struct.Zio* %173), !dbg !1288
  br label %175, !dbg !1288

; <label>:175                                     ; preds = %170, %161
  %176 = phi i32 [ %169, %161 ], [ %174, %170 ], !dbg !1285
  %177 = load %struct.LexState** %1, align 4, !dbg !1290
  %178 = getelementptr inbounds %struct.LexState* %177, i32 0, i32 0, !dbg !1290
  store i32 %176, i32* %178, align 4, !dbg !1290
  br label %179

; <label>:179                                     ; preds = %175, %151
  br label %131, !dbg !1293

; <label>:180                                     ; preds = %131
  br label %228, !dbg !1294

; <label>:181                                     ; preds = %73
  %182 = load %struct.LexState** %1, align 4, !dbg !1295
  %183 = load %struct.LexState** %1, align 4, !dbg !1295
  %184 = getelementptr inbounds %struct.LexState* %183, i32 0, i32 0, !dbg !1295
  %185 = load i32* %184, align 4, !dbg !1295
  %186 = add nsw i32 %185, 1, !dbg !1295
  %187 = getelementptr inbounds [257 x i8]* @luai_ctype_, i32 0, i32 %186, !dbg !1295
  %188 = load i8* %187, align 1, !dbg !1295
  %189 = zext i8 %188 to i32, !dbg !1295
  %190 = and i32 %189, 2, !dbg !1295
  call void @esccheck(%struct.LexState* %182, i32 %190, i8* getelementptr inbounds ([24 x i8]* @.str11, i32 0, i32 0)), !dbg !1295
  %191 = load %struct.LexState** %1, align 4, !dbg !1297
  %192 = call i32 @readdecesc(%struct.LexState* %191), !dbg !1297
  store i32 %192, i32* %c, align 4, !dbg !1297
  br label %219, !dbg !1298

; <label>:193                                     ; preds = %94, %87, %86, %85, %84, %83, %82, %81, %80
  %194 = load %struct.LexState** %1, align 4, !dbg !1299
  %195 = getelementptr inbounds %struct.LexState* %194, i32 0, i32 7, !dbg !1299
  %196 = load %struct.Zio** %195, align 4, !dbg !1299
  %197 = getelementptr inbounds %struct.Zio* %196, i32 0, i32 0, !dbg !1299
  %198 = load i32* %197, align 4, !dbg !1299
  %199 = add i32 %198, -1, !dbg !1299
  store i32 %199, i32* %197, align 4, !dbg !1299
  %200 = icmp ugt i32 %198, 0, !dbg !1299
  br i1 %200, label %201, label %210, !dbg !1299

; <label>:201                                     ; preds = %193
  %202 = load %struct.LexState** %1, align 4, !dbg !1300
  %203 = getelementptr inbounds %struct.LexState* %202, i32 0, i32 7, !dbg !1300
  %204 = load %struct.Zio** %203, align 4, !dbg !1300
  %205 = getelementptr inbounds %struct.Zio* %204, i32 0, i32 1, !dbg !1300
  %206 = load i8** %205, align 4, !dbg !1300
  %207 = getelementptr inbounds i8* %206, i32 1, !dbg !1300
  store i8* %207, i8** %205, align 4, !dbg !1300
  %208 = load i8* %206, align 1, !dbg !1300
  %209 = zext i8 %208 to i32, !dbg !1300
  br label %215, !dbg !1300

; <label>:210                                     ; preds = %193
  %211 = load %struct.LexState** %1, align 4, !dbg !1302
  %212 = getelementptr inbounds %struct.LexState* %211, i32 0, i32 7, !dbg !1302
  %213 = load %struct.Zio** %212, align 4, !dbg !1302
  %214 = call i32 @luaZ_fill(%struct.Zio* %213), !dbg !1302
  br label %215, !dbg !1302

; <label>:215                                     ; preds = %210, %201
  %216 = phi i32 [ %209, %201 ], [ %214, %210 ], !dbg !1299
  %217 = load %struct.LexState** %1, align 4, !dbg !1304
  %218 = getelementptr inbounds %struct.LexState* %217, i32 0, i32 0, !dbg !1304
  store i32 %216, i32* %218, align 4, !dbg !1304
  br label %219, !dbg !1304

; <label>:219                                     ; preds = %215, %181, %92
  %220 = load %struct.LexState** %1, align 4, !dbg !1307
  %221 = getelementptr inbounds %struct.LexState* %220, i32 0, i32 8, !dbg !1307
  %222 = load %struct.Mbuffer** %221, align 4, !dbg !1307
  %223 = getelementptr inbounds %struct.Mbuffer* %222, i32 0, i32 1, !dbg !1307
  %224 = load i32* %223, align 4, !dbg !1307
  %225 = sub i32 %224, 1, !dbg !1307
  store i32 %225, i32* %223, align 4, !dbg !1307
  %226 = load %struct.LexState** %1, align 4, !dbg !1308
  %227 = load i32* %c, align 4, !dbg !1308
  call void @save(%struct.LexState* %226, i32 %227), !dbg !1308
  br label %228, !dbg !1308

; <label>:228                                     ; preds = %219, %180, %98, %90
  br label %259, !dbg !1309

; <label>:229                                     ; preds = %39
  %230 = load %struct.LexState** %1, align 4, !dbg !1310
  %231 = load %struct.LexState** %1, align 4, !dbg !1310
  %232 = getelementptr inbounds %struct.LexState* %231, i32 0, i32 0, !dbg !1310
  %233 = load i32* %232, align 4, !dbg !1310
  call void @save(%struct.LexState* %230, i32 %233), !dbg !1310
  %234 = load %struct.LexState** %1, align 4, !dbg !1310
  %235 = getelementptr inbounds %struct.LexState* %234, i32 0, i32 7, !dbg !1310
  %236 = load %struct.Zio** %235, align 4, !dbg !1310
  %237 = getelementptr inbounds %struct.Zio* %236, i32 0, i32 0, !dbg !1310
  %238 = load i32* %237, align 4, !dbg !1310
  %239 = add i32 %238, -1, !dbg !1310
  store i32 %239, i32* %237, align 4, !dbg !1310
  %240 = icmp ugt i32 %238, 0, !dbg !1310
  br i1 %240, label %241, label %250, !dbg !1310

; <label>:241                                     ; preds = %229
  %242 = load %struct.LexState** %1, align 4, !dbg !1311
  %243 = getelementptr inbounds %struct.LexState* %242, i32 0, i32 7, !dbg !1311
  %244 = load %struct.Zio** %243, align 4, !dbg !1311
  %245 = getelementptr inbounds %struct.Zio* %244, i32 0, i32 1, !dbg !1311
  %246 = load i8** %245, align 4, !dbg !1311
  %247 = getelementptr inbounds i8* %246, i32 1, !dbg !1311
  store i8* %247, i8** %245, align 4, !dbg !1311
  %248 = load i8* %246, align 1, !dbg !1311
  %249 = zext i8 %248 to i32, !dbg !1311
  br label %255, !dbg !1311

; <label>:250                                     ; preds = %229
  %251 = load %struct.LexState** %1, align 4, !dbg !1313
  %252 = getelementptr inbounds %struct.LexState* %251, i32 0, i32 7, !dbg !1313
  %253 = load %struct.Zio** %252, align 4, !dbg !1313
  %254 = call i32 @luaZ_fill(%struct.Zio* %253), !dbg !1313
  br label %255, !dbg !1313

; <label>:255                                     ; preds = %250, %241
  %256 = phi i32 [ %249, %241 ], [ %254, %250 ], !dbg !1310
  %257 = load %struct.LexState** %1, align 4, !dbg !1315
  %258 = getelementptr inbounds %struct.LexState* %257, i32 0, i32 0, !dbg !1315
  store i32 %256, i32* %258, align 4, !dbg !1315
  br label %259, !dbg !1318

; <label>:259                                     ; preds = %255, %228
  br label %33, !dbg !1319

; <label>:260                                     ; preds = %33
  %261 = load %struct.LexState** %1, align 4, !dbg !1320
  %262 = load %struct.LexState** %1, align 4, !dbg !1320
  %263 = getelementptr inbounds %struct.LexState* %262, i32 0, i32 0, !dbg !1320
  %264 = load i32* %263, align 4, !dbg !1320
  call void @save(%struct.LexState* %261, i32 %264), !dbg !1320
  %265 = load %struct.LexState** %1, align 4, !dbg !1320
  %266 = getelementptr inbounds %struct.LexState* %265, i32 0, i32 7, !dbg !1320
  %267 = load %struct.Zio** %266, align 4, !dbg !1320
  %268 = getelementptr inbounds %struct.Zio* %267, i32 0, i32 0, !dbg !1320
  %269 = load i32* %268, align 4, !dbg !1320
  %270 = add i32 %269, -1, !dbg !1320
  store i32 %270, i32* %268, align 4, !dbg !1320
  %271 = icmp ugt i32 %269, 0, !dbg !1320
  br i1 %271, label %272, label %281, !dbg !1320

; <label>:272                                     ; preds = %260
  %273 = load %struct.LexState** %1, align 4, !dbg !1321
  %274 = getelementptr inbounds %struct.LexState* %273, i32 0, i32 7, !dbg !1321
  %275 = load %struct.Zio** %274, align 4, !dbg !1321
  %276 = getelementptr inbounds %struct.Zio* %275, i32 0, i32 1, !dbg !1321
  %277 = load i8** %276, align 4, !dbg !1321
  %278 = getelementptr inbounds i8* %277, i32 1, !dbg !1321
  store i8* %278, i8** %276, align 4, !dbg !1321
  %279 = load i8* %277, align 1, !dbg !1321
  %280 = zext i8 %279 to i32, !dbg !1321
  br label %286, !dbg !1321

; <label>:281                                     ; preds = %260
  %282 = load %struct.LexState** %1, align 4, !dbg !1323
  %283 = getelementptr inbounds %struct.LexState* %282, i32 0, i32 7, !dbg !1323
  %284 = load %struct.Zio** %283, align 4, !dbg !1323
  %285 = call i32 @luaZ_fill(%struct.Zio* %284), !dbg !1323
  br label %286, !dbg !1323

; <label>:286                                     ; preds = %281, %272
  %287 = phi i32 [ %280, %272 ], [ %285, %281 ], !dbg !1320
  %288 = load %struct.LexState** %1, align 4, !dbg !1325
  %289 = getelementptr inbounds %struct.LexState* %288, i32 0, i32 0, !dbg !1325
  store i32 %287, i32* %289, align 4, !dbg !1325
  %290 = load %struct.LexState** %1, align 4, !dbg !1328
  %291 = load %struct.LexState** %1, align 4, !dbg !1328
  %292 = getelementptr inbounds %struct.LexState* %291, i32 0, i32 8, !dbg !1328
  %293 = load %struct.Mbuffer** %292, align 4, !dbg !1328
  %294 = getelementptr inbounds %struct.Mbuffer* %293, i32 0, i32 0, !dbg !1328
  %295 = load i8** %294, align 4, !dbg !1328
  %296 = getelementptr inbounds i8* %295, i32 1, !dbg !1328
  %297 = load %struct.LexState** %1, align 4, !dbg !1328
  %298 = getelementptr inbounds %struct.LexState* %297, i32 0, i32 8, !dbg !1328
  %299 = load %struct.Mbuffer** %298, align 4, !dbg !1328
  %300 = getelementptr inbounds %struct.Mbuffer* %299, i32 0, i32 1, !dbg !1328
  %301 = load i32* %300, align 4, !dbg !1328
  %302 = sub i32 %301, 2, !dbg !1328
  %303 = call %struct.TString* @luaX_newstring(%struct.LexState* %290, i8* %296, i32 %302), !dbg !1328
  %304 = load %union.SemInfo** %3, align 4, !dbg !1328
  %305 = bitcast %union.SemInfo* %304 to %struct.TString**, !dbg !1328
  store %struct.TString* %303, %struct.TString** %305, align 4, !dbg !1328
  ret void, !dbg !1329
}

; Function Attrs: nounwind
define internal void @save(%struct.LexState* %ls, i32 %c) #0 {
  %1 = alloca %struct.LexState*, align 4
  %2 = alloca i32, align 4
  %b = alloca %struct.Mbuffer*, align 4
  %newsize = alloca i32, align 4
  store %struct.LexState* %ls, %struct.LexState** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.LexState** %1}, metadata !1330), !dbg !1331
  store i32 %c, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !1332), !dbg !1333
  call void @llvm.dbg.declare(metadata !{%struct.Mbuffer** %b}, metadata !1334), !dbg !1335
  %3 = load %struct.LexState** %1, align 4, !dbg !1336
  %4 = getelementptr inbounds %struct.LexState* %3, i32 0, i32 8, !dbg !1336
  %5 = load %struct.Mbuffer** %4, align 4, !dbg !1336
  store %struct.Mbuffer* %5, %struct.Mbuffer** %b, align 4, !dbg !1336
  %6 = load %struct.Mbuffer** %b, align 4, !dbg !1337
  %7 = getelementptr inbounds %struct.Mbuffer* %6, i32 0, i32 1, !dbg !1337
  %8 = load i32* %7, align 4, !dbg !1337
  %9 = add i32 %8, 1, !dbg !1337
  %10 = load %struct.Mbuffer** %b, align 4, !dbg !1337
  %11 = getelementptr inbounds %struct.Mbuffer* %10, i32 0, i32 2, !dbg !1337
  %12 = load i32* %11, align 4, !dbg !1337
  %13 = icmp ugt i32 %9, %12, !dbg !1337
  br i1 %13, label %14, label %44, !dbg !1337

; <label>:14                                      ; preds = %0
  call void @llvm.dbg.declare(metadata !{i32* %newsize}, metadata !1339), !dbg !1341
  %15 = load %struct.Mbuffer** %b, align 4, !dbg !1342
  %16 = getelementptr inbounds %struct.Mbuffer* %15, i32 0, i32 2, !dbg !1342
  %17 = load i32* %16, align 4, !dbg !1342
  %18 = icmp uge i32 %17, 2147483647, !dbg !1342
  br i1 %18, label %19, label %21, !dbg !1342

; <label>:19                                      ; preds = %14
  %20 = load %struct.LexState** %1, align 4, !dbg !1344
  call void @lexerror(%struct.LexState* %20, i8* getelementptr inbounds ([25 x i8]* @.str9, i32 0, i32 0), i32 0) #6, !dbg !1344
  unreachable, !dbg !1344

; <label>:21                                      ; preds = %14
  %22 = load %struct.Mbuffer** %b, align 4, !dbg !1345
  %23 = getelementptr inbounds %struct.Mbuffer* %22, i32 0, i32 2, !dbg !1345
  %24 = load i32* %23, align 4, !dbg !1345
  %25 = mul i32 %24, 2, !dbg !1345
  store i32 %25, i32* %newsize, align 4, !dbg !1345
  %26 = load %struct.LexState** %1, align 4, !dbg !1346
  %27 = getelementptr inbounds %struct.LexState* %26, i32 0, i32 6, !dbg !1346
  %28 = load %struct.lua_State** %27, align 4, !dbg !1346
  %29 = load %struct.Mbuffer** %b, align 4, !dbg !1346
  %30 = getelementptr inbounds %struct.Mbuffer* %29, i32 0, i32 0, !dbg !1346
  %31 = load i8** %30, align 4, !dbg !1346
  %32 = load %struct.Mbuffer** %b, align 4, !dbg !1346
  %33 = getelementptr inbounds %struct.Mbuffer* %32, i32 0, i32 2, !dbg !1346
  %34 = load i32* %33, align 4, !dbg !1346
  %35 = mul i32 %34, 1, !dbg !1346
  %36 = load i32* %newsize, align 4, !dbg !1346
  %37 = mul i32 %36, 1, !dbg !1346
  %38 = call i8* @luaM_realloc_(%struct.lua_State* %28, i8* %31, i32 %35, i32 %37), !dbg !1346
  %39 = load %struct.Mbuffer** %b, align 4, !dbg !1346
  %40 = getelementptr inbounds %struct.Mbuffer* %39, i32 0, i32 0, !dbg !1346
  store i8* %38, i8** %40, align 4, !dbg !1346
  %41 = load i32* %newsize, align 4, !dbg !1346
  %42 = load %struct.Mbuffer** %b, align 4, !dbg !1346
  %43 = getelementptr inbounds %struct.Mbuffer* %42, i32 0, i32 2, !dbg !1346
  store i32 %41, i32* %43, align 4, !dbg !1346
  br label %44, !dbg !1347

; <label>:44                                      ; preds = %21, %0
  %45 = load i32* %2, align 4, !dbg !1348
  %46 = trunc i32 %45 to i8, !dbg !1348
  %47 = load %struct.Mbuffer** %b, align 4, !dbg !1348
  %48 = getelementptr inbounds %struct.Mbuffer* %47, i32 0, i32 1, !dbg !1348
  %49 = load i32* %48, align 4, !dbg !1348
  %50 = add i32 %49, 1, !dbg !1348
  store i32 %50, i32* %48, align 4, !dbg !1348
  %51 = load %struct.Mbuffer** %b, align 4, !dbg !1348
  %52 = getelementptr inbounds %struct.Mbuffer* %51, i32 0, i32 0, !dbg !1348
  %53 = load i8** %52, align 4, !dbg !1348
  %54 = getelementptr inbounds i8* %53, i32 %49, !dbg !1348
  store i8 %46, i8* %54, align 1, !dbg !1348
  ret void, !dbg !1349
}

; Function Attrs: nounwind
define internal i32 @read_numeral(%struct.LexState* %ls, %union.SemInfo* %seminfo) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.LexState*, align 4
  %3 = alloca %union.SemInfo*, align 4
  %obj = alloca %struct.lua_TValue, align 8
  %expo = alloca i8*, align 4
  %first = alloca i32, align 4
  store %struct.LexState* %ls, %struct.LexState** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.LexState** %2}, metadata !1350), !dbg !1351
  store %union.SemInfo* %seminfo, %union.SemInfo** %3, align 4
  call void @llvm.dbg.declare(metadata !{%union.SemInfo** %3}, metadata !1352), !dbg !1353
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue* %obj}, metadata !1354), !dbg !1355
  call void @llvm.dbg.declare(metadata !{i8** %expo}, metadata !1356), !dbg !1357
  store i8* getelementptr inbounds ([3 x i8]* @.str4, i32 0, i32 0), i8** %expo, align 4, !dbg !1358
  call void @llvm.dbg.declare(metadata !{i32* %first}, metadata !1359), !dbg !1360
  %4 = load %struct.LexState** %2, align 4, !dbg !1361
  %5 = getelementptr inbounds %struct.LexState* %4, i32 0, i32 0, !dbg !1361
  %6 = load i32* %5, align 4, !dbg !1361
  store i32 %6, i32* %first, align 4, !dbg !1361
  %7 = load %struct.LexState** %2, align 4, !dbg !1362
  %8 = load %struct.LexState** %2, align 4, !dbg !1362
  %9 = getelementptr inbounds %struct.LexState* %8, i32 0, i32 0, !dbg !1362
  %10 = load i32* %9, align 4, !dbg !1362
  call void @save(%struct.LexState* %7, i32 %10), !dbg !1362
  %11 = load %struct.LexState** %2, align 4, !dbg !1362
  %12 = getelementptr inbounds %struct.LexState* %11, i32 0, i32 7, !dbg !1362
  %13 = load %struct.Zio** %12, align 4, !dbg !1362
  %14 = getelementptr inbounds %struct.Zio* %13, i32 0, i32 0, !dbg !1362
  %15 = load i32* %14, align 4, !dbg !1362
  %16 = add i32 %15, -1, !dbg !1362
  store i32 %16, i32* %14, align 4, !dbg !1362
  %17 = icmp ugt i32 %15, 0, !dbg !1362
  br i1 %17, label %18, label %27, !dbg !1362

; <label>:18                                      ; preds = %0
  %19 = load %struct.LexState** %2, align 4, !dbg !1363
  %20 = getelementptr inbounds %struct.LexState* %19, i32 0, i32 7, !dbg !1363
  %21 = load %struct.Zio** %20, align 4, !dbg !1363
  %22 = getelementptr inbounds %struct.Zio* %21, i32 0, i32 1, !dbg !1363
  %23 = load i8** %22, align 4, !dbg !1363
  %24 = getelementptr inbounds i8* %23, i32 1, !dbg !1363
  store i8* %24, i8** %22, align 4, !dbg !1363
  %25 = load i8* %23, align 1, !dbg !1363
  %26 = zext i8 %25 to i32, !dbg !1363
  br label %32, !dbg !1363

; <label>:27                                      ; preds = %0
  %28 = load %struct.LexState** %2, align 4, !dbg !1365
  %29 = getelementptr inbounds %struct.LexState* %28, i32 0, i32 7, !dbg !1365
  %30 = load %struct.Zio** %29, align 4, !dbg !1365
  %31 = call i32 @luaZ_fill(%struct.Zio* %30), !dbg !1365
  br label %32, !dbg !1365

; <label>:32                                      ; preds = %27, %18
  %33 = phi i32 [ %26, %18 ], [ %31, %27 ], !dbg !1362
  %34 = load %struct.LexState** %2, align 4, !dbg !1367
  %35 = getelementptr inbounds %struct.LexState* %34, i32 0, i32 0, !dbg !1367
  store i32 %33, i32* %35, align 4, !dbg !1367
  %36 = load i32* %first, align 4, !dbg !1370
  %37 = icmp eq i32 %36, 48, !dbg !1370
  br i1 %37, label %38, label %43, !dbg !1370

; <label>:38                                      ; preds = %32
  %39 = load %struct.LexState** %2, align 4, !dbg !1372
  %40 = call i32 @check_next2(%struct.LexState* %39, i8* getelementptr inbounds ([3 x i8]* @.str5, i32 0, i32 0)), !dbg !1372
  %41 = icmp ne i32 %40, 0, !dbg !1372
  br i1 %41, label %42, label %43, !dbg !1372

; <label>:42                                      ; preds = %38
  store i8* getelementptr inbounds ([3 x i8]* @.str6, i32 0, i32 0), i8** %expo, align 4, !dbg !1374
  br label %43, !dbg !1374

; <label>:43                                      ; preds = %42, %38, %32
  br label %44, !dbg !1375

; <label>:44                                      ; preds = %129, %43
  %45 = load %struct.LexState** %2, align 4, !dbg !1377
  %46 = load i8** %expo, align 4, !dbg !1377
  %47 = call i32 @check_next2(%struct.LexState* %45, i8* %46), !dbg !1377
  %48 = icmp ne i32 %47, 0, !dbg !1377
  br i1 %48, label %49, label %52, !dbg !1377

; <label>:49                                      ; preds = %44
  %50 = load %struct.LexState** %2, align 4, !dbg !1380
  %51 = call i32 @check_next2(%struct.LexState* %50, i8* getelementptr inbounds ([3 x i8]* @.str7, i32 0, i32 0)), !dbg !1380
  br label %52, !dbg !1380

; <label>:52                                      ; preds = %49, %44
  %53 = load %struct.LexState** %2, align 4, !dbg !1381
  %54 = getelementptr inbounds %struct.LexState* %53, i32 0, i32 0, !dbg !1381
  %55 = load i32* %54, align 4, !dbg !1381
  %56 = add nsw i32 %55, 1, !dbg !1381
  %57 = getelementptr inbounds [257 x i8]* @luai_ctype_, i32 0, i32 %56, !dbg !1381
  %58 = load i8* %57, align 1, !dbg !1381
  %59 = zext i8 %58 to i32, !dbg !1381
  %60 = and i32 %59, 16, !dbg !1381
  %61 = icmp ne i32 %60, 0, !dbg !1381
  br i1 %61, label %62, label %92, !dbg !1381

; <label>:62                                      ; preds = %52
  %63 = load %struct.LexState** %2, align 4, !dbg !1383
  %64 = load %struct.LexState** %2, align 4, !dbg !1383
  %65 = getelementptr inbounds %struct.LexState* %64, i32 0, i32 0, !dbg !1383
  %66 = load i32* %65, align 4, !dbg !1383
  call void @save(%struct.LexState* %63, i32 %66), !dbg !1383
  %67 = load %struct.LexState** %2, align 4, !dbg !1383
  %68 = getelementptr inbounds %struct.LexState* %67, i32 0, i32 7, !dbg !1383
  %69 = load %struct.Zio** %68, align 4, !dbg !1383
  %70 = getelementptr inbounds %struct.Zio* %69, i32 0, i32 0, !dbg !1383
  %71 = load i32* %70, align 4, !dbg !1383
  %72 = add i32 %71, -1, !dbg !1383
  store i32 %72, i32* %70, align 4, !dbg !1383
  %73 = icmp ugt i32 %71, 0, !dbg !1383
  br i1 %73, label %74, label %83, !dbg !1383

; <label>:74                                      ; preds = %62
  %75 = load %struct.LexState** %2, align 4, !dbg !1384
  %76 = getelementptr inbounds %struct.LexState* %75, i32 0, i32 7, !dbg !1384
  %77 = load %struct.Zio** %76, align 4, !dbg !1384
  %78 = getelementptr inbounds %struct.Zio* %77, i32 0, i32 1, !dbg !1384
  %79 = load i8** %78, align 4, !dbg !1384
  %80 = getelementptr inbounds i8* %79, i32 1, !dbg !1384
  store i8* %80, i8** %78, align 4, !dbg !1384
  %81 = load i8* %79, align 1, !dbg !1384
  %82 = zext i8 %81 to i32, !dbg !1384
  br label %88, !dbg !1384

; <label>:83                                      ; preds = %62
  %84 = load %struct.LexState** %2, align 4, !dbg !1386
  %85 = getelementptr inbounds %struct.LexState* %84, i32 0, i32 7, !dbg !1386
  %86 = load %struct.Zio** %85, align 4, !dbg !1386
  %87 = call i32 @luaZ_fill(%struct.Zio* %86), !dbg !1386
  br label %88, !dbg !1386

; <label>:88                                      ; preds = %83, %74
  %89 = phi i32 [ %82, %74 ], [ %87, %83 ], !dbg !1383
  %90 = load %struct.LexState** %2, align 4, !dbg !1388
  %91 = getelementptr inbounds %struct.LexState* %90, i32 0, i32 0, !dbg !1388
  store i32 %89, i32* %91, align 4, !dbg !1388
  br label %129, !dbg !1388

; <label>:92                                      ; preds = %52
  %93 = load %struct.LexState** %2, align 4, !dbg !1391
  %94 = getelementptr inbounds %struct.LexState* %93, i32 0, i32 0, !dbg !1391
  %95 = load i32* %94, align 4, !dbg !1391
  %96 = icmp eq i32 %95, 46, !dbg !1391
  br i1 %96, label %97, label %127, !dbg !1391

; <label>:97                                      ; preds = %92
  %98 = load %struct.LexState** %2, align 4, !dbg !1393
  %99 = load %struct.LexState** %2, align 4, !dbg !1393
  %100 = getelementptr inbounds %struct.LexState* %99, i32 0, i32 0, !dbg !1393
  %101 = load i32* %100, align 4, !dbg !1393
  call void @save(%struct.LexState* %98, i32 %101), !dbg !1393
  %102 = load %struct.LexState** %2, align 4, !dbg !1393
  %103 = getelementptr inbounds %struct.LexState* %102, i32 0, i32 7, !dbg !1393
  %104 = load %struct.Zio** %103, align 4, !dbg !1393
  %105 = getelementptr inbounds %struct.Zio* %104, i32 0, i32 0, !dbg !1393
  %106 = load i32* %105, align 4, !dbg !1393
  %107 = add i32 %106, -1, !dbg !1393
  store i32 %107, i32* %105, align 4, !dbg !1393
  %108 = icmp ugt i32 %106, 0, !dbg !1393
  br i1 %108, label %109, label %118, !dbg !1393

; <label>:109                                     ; preds = %97
  %110 = load %struct.LexState** %2, align 4, !dbg !1394
  %111 = getelementptr inbounds %struct.LexState* %110, i32 0, i32 7, !dbg !1394
  %112 = load %struct.Zio** %111, align 4, !dbg !1394
  %113 = getelementptr inbounds %struct.Zio* %112, i32 0, i32 1, !dbg !1394
  %114 = load i8** %113, align 4, !dbg !1394
  %115 = getelementptr inbounds i8* %114, i32 1, !dbg !1394
  store i8* %115, i8** %113, align 4, !dbg !1394
  %116 = load i8* %114, align 1, !dbg !1394
  %117 = zext i8 %116 to i32, !dbg !1394
  br label %123, !dbg !1394

; <label>:118                                     ; preds = %97
  %119 = load %struct.LexState** %2, align 4, !dbg !1396
  %120 = getelementptr inbounds %struct.LexState* %119, i32 0, i32 7, !dbg !1396
  %121 = load %struct.Zio** %120, align 4, !dbg !1396
  %122 = call i32 @luaZ_fill(%struct.Zio* %121), !dbg !1396
  br label %123, !dbg !1396

; <label>:123                                     ; preds = %118, %109
  %124 = phi i32 [ %117, %109 ], [ %122, %118 ], !dbg !1393
  %125 = load %struct.LexState** %2, align 4, !dbg !1398
  %126 = getelementptr inbounds %struct.LexState* %125, i32 0, i32 0, !dbg !1398
  store i32 %124, i32* %126, align 4, !dbg !1398
  br label %128, !dbg !1398

; <label>:127                                     ; preds = %92
  br label %130, !dbg !1401

; <label>:128                                     ; preds = %123
  br label %129

; <label>:129                                     ; preds = %128, %88
  br label %44, !dbg !1402

; <label>:130                                     ; preds = %127
  %131 = load %struct.LexState** %2, align 4, !dbg !1403
  call void @save(%struct.LexState* %131, i32 0), !dbg !1403
  %132 = load %struct.LexState** %2, align 4, !dbg !1404
  %133 = getelementptr inbounds %struct.LexState* %132, i32 0, i32 8, !dbg !1404
  %134 = load %struct.Mbuffer** %133, align 4, !dbg !1404
  %135 = getelementptr inbounds %struct.Mbuffer* %134, i32 0, i32 0, !dbg !1404
  %136 = load i8** %135, align 4, !dbg !1404
  %137 = call i32 @luaO_str2num(i8* %136, %struct.lua_TValue* %obj), !dbg !1404
  %138 = icmp eq i32 %137, 0, !dbg !1404
  br i1 %138, label %139, label %141, !dbg !1404

; <label>:139                                     ; preds = %130
  %140 = load %struct.LexState** %2, align 4, !dbg !1406
  call void @lexerror(%struct.LexState* %140, i8* getelementptr inbounds ([17 x i8]* @.str8, i32 0, i32 0), i32 290) #6, !dbg !1406
  unreachable, !dbg !1406

; <label>:141                                     ; preds = %130
  %142 = getelementptr inbounds %struct.lua_TValue* %obj, i32 0, i32 1, !dbg !1407
  %143 = load i32* %142, align 4, !dbg !1407
  %144 = icmp eq i32 %143, 19, !dbg !1407
  br i1 %144, label %145, label %151, !dbg !1407

; <label>:145                                     ; preds = %141
  %146 = getelementptr inbounds %struct.lua_TValue* %obj, i32 0, i32 0, !dbg !1409
  %147 = bitcast %union.Value* %146 to i64*, !dbg !1409
  %148 = load i64* %147, align 8, !dbg !1409
  %149 = load %union.SemInfo** %3, align 4, !dbg !1409
  %150 = bitcast %union.SemInfo* %149 to i64*, !dbg !1409
  store i64 %148, i64* %150, align 8, !dbg !1409
  store i32 291, i32* %1, !dbg !1411
  br label %157, !dbg !1411

; <label>:151                                     ; preds = %141
  %152 = getelementptr inbounds %struct.lua_TValue* %obj, i32 0, i32 0, !dbg !1412
  %153 = bitcast %union.Value* %152 to double*, !dbg !1412
  %154 = load double* %153, align 8, !dbg !1412
  %155 = load %union.SemInfo** %3, align 4, !dbg !1412
  %156 = bitcast %union.SemInfo* %155 to double*, !dbg !1412
  store double %154, double* %156, align 8, !dbg !1412
  store i32 290, i32* %1, !dbg !1414
  br label %157, !dbg !1414

; <label>:157                                     ; preds = %151, %145
  %158 = load i32* %1, !dbg !1415
  ret i32 %158, !dbg !1415
}

; Function Attrs: nounwind
define internal i32 @check_next2(%struct.LexState* %ls, i8* %set) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.LexState*, align 4
  %3 = alloca i8*, align 4
  store %struct.LexState* %ls, %struct.LexState** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.LexState** %2}, metadata !1416), !dbg !1417
  store i8* %set, i8** %3, align 4
  call void @llvm.dbg.declare(metadata !{i8** %3}, metadata !1418), !dbg !1419
  %4 = load %struct.LexState** %2, align 4, !dbg !1420
  %5 = getelementptr inbounds %struct.LexState* %4, i32 0, i32 0, !dbg !1420
  %6 = load i32* %5, align 4, !dbg !1420
  %7 = load i8** %3, align 4, !dbg !1420
  %8 = getelementptr inbounds i8* %7, i32 0, !dbg !1420
  %9 = load i8* %8, align 1, !dbg !1420
  %10 = zext i8 %9 to i32, !dbg !1420
  %11 = icmp eq i32 %6, %10, !dbg !1420
  br i1 %11, label %21, label %12, !dbg !1420

; <label>:12                                      ; preds = %0
  %13 = load %struct.LexState** %2, align 4, !dbg !1422
  %14 = getelementptr inbounds %struct.LexState* %13, i32 0, i32 0, !dbg !1422
  %15 = load i32* %14, align 4, !dbg !1422
  %16 = load i8** %3, align 4, !dbg !1422
  %17 = getelementptr inbounds i8* %16, i32 1, !dbg !1422
  %18 = load i8* %17, align 1, !dbg !1422
  %19 = zext i8 %18 to i32, !dbg !1422
  %20 = icmp eq i32 %15, %19, !dbg !1422
  br i1 %20, label %21, label %51, !dbg !1422

; <label>:21                                      ; preds = %12, %0
  %22 = load %struct.LexState** %2, align 4, !dbg !1424
  %23 = load %struct.LexState** %2, align 4, !dbg !1424
  %24 = getelementptr inbounds %struct.LexState* %23, i32 0, i32 0, !dbg !1424
  %25 = load i32* %24, align 4, !dbg !1424
  call void @save(%struct.LexState* %22, i32 %25), !dbg !1424
  %26 = load %struct.LexState** %2, align 4, !dbg !1424
  %27 = getelementptr inbounds %struct.LexState* %26, i32 0, i32 7, !dbg !1424
  %28 = load %struct.Zio** %27, align 4, !dbg !1424
  %29 = getelementptr inbounds %struct.Zio* %28, i32 0, i32 0, !dbg !1424
  %30 = load i32* %29, align 4, !dbg !1424
  %31 = add i32 %30, -1, !dbg !1424
  store i32 %31, i32* %29, align 4, !dbg !1424
  %32 = icmp ugt i32 %30, 0, !dbg !1424
  br i1 %32, label %33, label %42, !dbg !1424

; <label>:33                                      ; preds = %21
  %34 = load %struct.LexState** %2, align 4, !dbg !1426
  %35 = getelementptr inbounds %struct.LexState* %34, i32 0, i32 7, !dbg !1426
  %36 = load %struct.Zio** %35, align 4, !dbg !1426
  %37 = getelementptr inbounds %struct.Zio* %36, i32 0, i32 1, !dbg !1426
  %38 = load i8** %37, align 4, !dbg !1426
  %39 = getelementptr inbounds i8* %38, i32 1, !dbg !1426
  store i8* %39, i8** %37, align 4, !dbg !1426
  %40 = load i8* %38, align 1, !dbg !1426
  %41 = zext i8 %40 to i32, !dbg !1426
  br label %47, !dbg !1426

; <label>:42                                      ; preds = %21
  %43 = load %struct.LexState** %2, align 4, !dbg !1428
  %44 = getelementptr inbounds %struct.LexState* %43, i32 0, i32 7, !dbg !1428
  %45 = load %struct.Zio** %44, align 4, !dbg !1428
  %46 = call i32 @luaZ_fill(%struct.Zio* %45), !dbg !1428
  br label %47, !dbg !1428

; <label>:47                                      ; preds = %42, %33
  %48 = phi i32 [ %41, %33 ], [ %46, %42 ], !dbg !1424
  %49 = load %struct.LexState** %2, align 4, !dbg !1430
  %50 = getelementptr inbounds %struct.LexState* %49, i32 0, i32 0, !dbg !1430
  store i32 %48, i32* %50, align 4, !dbg !1430
  store i32 1, i32* %1, !dbg !1433
  br label %52, !dbg !1433

; <label>:51                                      ; preds = %12
  store i32 0, i32* %1, !dbg !1434
  br label %52, !dbg !1434

; <label>:52                                      ; preds = %51, %47
  %53 = load i32* %1, !dbg !1435
  ret i32 %53, !dbg !1435
}

declare hidden i32 @luaO_str2num(i8*, %struct.lua_TValue*) #2

; Function Attrs: nounwind
define internal i32 @readhexaesc(%struct.LexState* %ls) #0 {
  %1 = alloca %struct.LexState*, align 4
  %r = alloca i32, align 4
  store %struct.LexState* %ls, %struct.LexState** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.LexState** %1}, metadata !1436), !dbg !1437
  call void @llvm.dbg.declare(metadata !{i32* %r}, metadata !1438), !dbg !1439
  %2 = load %struct.LexState** %1, align 4, !dbg !1440
  %3 = call i32 @gethexa(%struct.LexState* %2), !dbg !1440
  store i32 %3, i32* %r, align 4, !dbg !1440
  %4 = load i32* %r, align 4, !dbg !1441
  %5 = shl i32 %4, 4, !dbg !1441
  %6 = load %struct.LexState** %1, align 4, !dbg !1442
  %7 = call i32 @gethexa(%struct.LexState* %6), !dbg !1442
  %8 = add nsw i32 %5, %7, !dbg !1442
  store i32 %8, i32* %r, align 4, !dbg !1442
  %9 = load %struct.LexState** %1, align 4, !dbg !1443
  %10 = getelementptr inbounds %struct.LexState* %9, i32 0, i32 8, !dbg !1443
  %11 = load %struct.Mbuffer** %10, align 4, !dbg !1443
  %12 = getelementptr inbounds %struct.Mbuffer* %11, i32 0, i32 1, !dbg !1443
  %13 = load i32* %12, align 4, !dbg !1443
  %14 = sub i32 %13, 2, !dbg !1443
  store i32 %14, i32* %12, align 4, !dbg !1443
  %15 = load i32* %r, align 4, !dbg !1444
  ret i32 %15, !dbg !1444
}

; Function Attrs: nounwind
define internal void @utf8esc(%struct.LexState* %ls) #0 {
  %1 = alloca %struct.LexState*, align 4
  %buff = alloca [8 x i8], align 1
  %n = alloca i32, align 4
  store %struct.LexState* %ls, %struct.LexState** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.LexState** %1}, metadata !1445), !dbg !1446
  call void @llvm.dbg.declare(metadata !{[8 x i8]* %buff}, metadata !1447), !dbg !1451
  call void @llvm.dbg.declare(metadata !{i32* %n}, metadata !1452), !dbg !1453
  %2 = getelementptr inbounds [8 x i8]* %buff, i32 0, i32 0, !dbg !1454
  %3 = load %struct.LexState** %1, align 4, !dbg !1455
  %4 = call i32 @readutf8esc(%struct.LexState* %3), !dbg !1455
  %5 = call i32 @luaO_utf8esc(i8* %2, i32 %4), !dbg !1454
  store i32 %5, i32* %n, align 4, !dbg !1454
  br label %6, !dbg !1456

; <label>:6                                       ; preds = %16, %0
  %7 = load i32* %n, align 4, !dbg !1458
  %8 = icmp sgt i32 %7, 0, !dbg !1458
  br i1 %8, label %9, label %19, !dbg !1458

; <label>:9                                       ; preds = %6
  %10 = load %struct.LexState** %1, align 4, !dbg !1461
  %11 = load i32* %n, align 4, !dbg !1461
  %12 = sub nsw i32 8, %11, !dbg !1461
  %13 = getelementptr inbounds [8 x i8]* %buff, i32 0, i32 %12, !dbg !1461
  %14 = load i8* %13, align 1, !dbg !1461
  %15 = zext i8 %14 to i32, !dbg !1461
  call void @save(%struct.LexState* %10, i32 %15), !dbg !1461
  br label %16, !dbg !1461

; <label>:16                                      ; preds = %9
  %17 = load i32* %n, align 4, !dbg !1462
  %18 = add nsw i32 %17, -1, !dbg !1462
  store i32 %18, i32* %n, align 4, !dbg !1462
  br label %6, !dbg !1462

; <label>:19                                      ; preds = %6
  ret void, !dbg !1463
}

; Function Attrs: nounwind
define internal void @esccheck(%struct.LexState* %ls, i32 %c, i8* %msg) #0 {
  %1 = alloca %struct.LexState*, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 4
  store %struct.LexState* %ls, %struct.LexState** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.LexState** %1}, metadata !1464), !dbg !1465
  store i32 %c, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !1466), !dbg !1467
  store i8* %msg, i8** %3, align 4
  call void @llvm.dbg.declare(metadata !{i8** %3}, metadata !1468), !dbg !1469
  %4 = load i32* %2, align 4, !dbg !1470
  %5 = icmp ne i32 %4, 0, !dbg !1470
  br i1 %5, label %44, label %6, !dbg !1470

; <label>:6                                       ; preds = %0
  %7 = load %struct.LexState** %1, align 4, !dbg !1472
  %8 = getelementptr inbounds %struct.LexState* %7, i32 0, i32 0, !dbg !1472
  %9 = load i32* %8, align 4, !dbg !1472
  %10 = icmp ne i32 %9, -1, !dbg !1472
  br i1 %10, label %11, label %41, !dbg !1472

; <label>:11                                      ; preds = %6
  %12 = load %struct.LexState** %1, align 4, !dbg !1475
  %13 = load %struct.LexState** %1, align 4, !dbg !1475
  %14 = getelementptr inbounds %struct.LexState* %13, i32 0, i32 0, !dbg !1475
  %15 = load i32* %14, align 4, !dbg !1475
  call void @save(%struct.LexState* %12, i32 %15), !dbg !1475
  %16 = load %struct.LexState** %1, align 4, !dbg !1475
  %17 = getelementptr inbounds %struct.LexState* %16, i32 0, i32 7, !dbg !1475
  %18 = load %struct.Zio** %17, align 4, !dbg !1475
  %19 = getelementptr inbounds %struct.Zio* %18, i32 0, i32 0, !dbg !1475
  %20 = load i32* %19, align 4, !dbg !1475
  %21 = add i32 %20, -1, !dbg !1475
  store i32 %21, i32* %19, align 4, !dbg !1475
  %22 = icmp ugt i32 %20, 0, !dbg !1475
  br i1 %22, label %23, label %32, !dbg !1475

; <label>:23                                      ; preds = %11
  %24 = load %struct.LexState** %1, align 4, !dbg !1476
  %25 = getelementptr inbounds %struct.LexState* %24, i32 0, i32 7, !dbg !1476
  %26 = load %struct.Zio** %25, align 4, !dbg !1476
  %27 = getelementptr inbounds %struct.Zio* %26, i32 0, i32 1, !dbg !1476
  %28 = load i8** %27, align 4, !dbg !1476
  %29 = getelementptr inbounds i8* %28, i32 1, !dbg !1476
  store i8* %29, i8** %27, align 4, !dbg !1476
  %30 = load i8* %28, align 1, !dbg !1476
  %31 = zext i8 %30 to i32, !dbg !1476
  br label %37, !dbg !1476

; <label>:32                                      ; preds = %11
  %33 = load %struct.LexState** %1, align 4, !dbg !1478
  %34 = getelementptr inbounds %struct.LexState* %33, i32 0, i32 7, !dbg !1478
  %35 = load %struct.Zio** %34, align 4, !dbg !1478
  %36 = call i32 @luaZ_fill(%struct.Zio* %35), !dbg !1478
  br label %37, !dbg !1478

; <label>:37                                      ; preds = %32, %23
  %38 = phi i32 [ %31, %23 ], [ %36, %32 ], !dbg !1475
  %39 = load %struct.LexState** %1, align 4, !dbg !1480
  %40 = getelementptr inbounds %struct.LexState* %39, i32 0, i32 0, !dbg !1480
  store i32 %38, i32* %40, align 4, !dbg !1480
  br label %41, !dbg !1480

; <label>:41                                      ; preds = %37, %6
  %42 = load %struct.LexState** %1, align 4, !dbg !1483
  %43 = load i8** %3, align 4, !dbg !1483
  call void @lexerror(%struct.LexState* %42, i8* %43, i32 293) #6, !dbg !1483
  unreachable, !dbg !1483

; <label>:44                                      ; preds = %0
  ret void, !dbg !1484
}

; Function Attrs: nounwind
define internal i32 @readdecesc(%struct.LexState* %ls) #0 {
  %1 = alloca %struct.LexState*, align 4
  %i = alloca i32, align 4
  %r = alloca i32, align 4
  store %struct.LexState* %ls, %struct.LexState** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.LexState** %1}, metadata !1485), !dbg !1486
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !1487), !dbg !1488
  call void @llvm.dbg.declare(metadata !{i32* %r}, metadata !1489), !dbg !1490
  store i32 0, i32* %r, align 4, !dbg !1491
  store i32 0, i32* %i, align 4, !dbg !1492
  br label %2, !dbg !1492

; <label>:2                                       ; preds = %54, %0
  %3 = load i32* %i, align 4, !dbg !1494
  %4 = icmp slt i32 %3, 3, !dbg !1494
  br i1 %4, label %5, label %15, !dbg !1494

; <label>:5                                       ; preds = %2
  %6 = load %struct.LexState** %1, align 4, !dbg !1497
  %7 = getelementptr inbounds %struct.LexState* %6, i32 0, i32 0, !dbg !1497
  %8 = load i32* %7, align 4, !dbg !1497
  %9 = add nsw i32 %8, 1, !dbg !1497
  %10 = getelementptr inbounds [257 x i8]* @luai_ctype_, i32 0, i32 %9, !dbg !1497
  %11 = load i8* %10, align 1, !dbg !1497
  %12 = zext i8 %11 to i32, !dbg !1497
  %13 = and i32 %12, 2, !dbg !1497
  %14 = icmp ne i32 %13, 0, !dbg !1497
  br label %15

; <label>:15                                      ; preds = %5, %2
  %16 = phi i1 [ false, %2 ], [ %14, %5 ]
  br i1 %16, label %17, label %57, !dbg !1499

; <label>:17                                      ; preds = %15
  %18 = load i32* %r, align 4, !dbg !1501
  %19 = mul nsw i32 10, %18, !dbg !1501
  %20 = load %struct.LexState** %1, align 4, !dbg !1501
  %21 = getelementptr inbounds %struct.LexState* %20, i32 0, i32 0, !dbg !1501
  %22 = load i32* %21, align 4, !dbg !1501
  %23 = add nsw i32 %19, %22, !dbg !1501
  %24 = sub nsw i32 %23, 48, !dbg !1501
  store i32 %24, i32* %r, align 4, !dbg !1501
  %25 = load %struct.LexState** %1, align 4, !dbg !1503
  %26 = load %struct.LexState** %1, align 4, !dbg !1503
  %27 = getelementptr inbounds %struct.LexState* %26, i32 0, i32 0, !dbg !1503
  %28 = load i32* %27, align 4, !dbg !1503
  call void @save(%struct.LexState* %25, i32 %28), !dbg !1503
  %29 = load %struct.LexState** %1, align 4, !dbg !1503
  %30 = getelementptr inbounds %struct.LexState* %29, i32 0, i32 7, !dbg !1503
  %31 = load %struct.Zio** %30, align 4, !dbg !1503
  %32 = getelementptr inbounds %struct.Zio* %31, i32 0, i32 0, !dbg !1503
  %33 = load i32* %32, align 4, !dbg !1503
  %34 = add i32 %33, -1, !dbg !1503
  store i32 %34, i32* %32, align 4, !dbg !1503
  %35 = icmp ugt i32 %33, 0, !dbg !1503
  br i1 %35, label %36, label %45, !dbg !1503

; <label>:36                                      ; preds = %17
  %37 = load %struct.LexState** %1, align 4, !dbg !1504
  %38 = getelementptr inbounds %struct.LexState* %37, i32 0, i32 7, !dbg !1504
  %39 = load %struct.Zio** %38, align 4, !dbg !1504
  %40 = getelementptr inbounds %struct.Zio* %39, i32 0, i32 1, !dbg !1504
  %41 = load i8** %40, align 4, !dbg !1504
  %42 = getelementptr inbounds i8* %41, i32 1, !dbg !1504
  store i8* %42, i8** %40, align 4, !dbg !1504
  %43 = load i8* %41, align 1, !dbg !1504
  %44 = zext i8 %43 to i32, !dbg !1504
  br label %50, !dbg !1504

; <label>:45                                      ; preds = %17
  %46 = load %struct.LexState** %1, align 4, !dbg !1506
  %47 = getelementptr inbounds %struct.LexState* %46, i32 0, i32 7, !dbg !1506
  %48 = load %struct.Zio** %47, align 4, !dbg !1506
  %49 = call i32 @luaZ_fill(%struct.Zio* %48), !dbg !1506
  br label %50, !dbg !1506

; <label>:50                                      ; preds = %45, %36
  %51 = phi i32 [ %44, %36 ], [ %49, %45 ], !dbg !1503
  %52 = load %struct.LexState** %1, align 4, !dbg !1508
  %53 = getelementptr inbounds %struct.LexState* %52, i32 0, i32 0, !dbg !1508
  store i32 %51, i32* %53, align 4, !dbg !1508
  br label %54, !dbg !1511

; <label>:54                                      ; preds = %50
  %55 = load i32* %i, align 4, !dbg !1512
  %56 = add nsw i32 %55, 1, !dbg !1512
  store i32 %56, i32* %i, align 4, !dbg !1512
  br label %2, !dbg !1512

; <label>:57                                      ; preds = %15
  %58 = load %struct.LexState** %1, align 4, !dbg !1513
  %59 = load i32* %r, align 4, !dbg !1513
  %60 = icmp sle i32 %59, 255, !dbg !1513
  %61 = zext i1 %60 to i32, !dbg !1513
  call void @esccheck(%struct.LexState* %58, i32 %61, i8* getelementptr inbounds ([25 x i8]* @.str12, i32 0, i32 0)), !dbg !1513
  %62 = load i32* %i, align 4, !dbg !1514
  %63 = load %struct.LexState** %1, align 4, !dbg !1514
  %64 = getelementptr inbounds %struct.LexState* %63, i32 0, i32 8, !dbg !1514
  %65 = load %struct.Mbuffer** %64, align 4, !dbg !1514
  %66 = getelementptr inbounds %struct.Mbuffer* %65, i32 0, i32 1, !dbg !1514
  %67 = load i32* %66, align 4, !dbg !1514
  %68 = sub i32 %67, %62, !dbg !1514
  store i32 %68, i32* %66, align 4, !dbg !1514
  %69 = load i32* %r, align 4, !dbg !1515
  ret i32 %69, !dbg !1515
}

declare hidden i32 @luaO_utf8esc(i8*, i32) #2

; Function Attrs: nounwind
define internal i32 @readutf8esc(%struct.LexState* %ls) #0 {
  %1 = alloca %struct.LexState*, align 4
  %r = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.LexState* %ls, %struct.LexState** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.LexState** %1}, metadata !1516), !dbg !1517
  call void @llvm.dbg.declare(metadata !{i32* %r}, metadata !1518), !dbg !1519
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !1520), !dbg !1521
  store i32 4, i32* %i, align 4, !dbg !1522
  %2 = load %struct.LexState** %1, align 4, !dbg !1523
  %3 = load %struct.LexState** %1, align 4, !dbg !1523
  %4 = getelementptr inbounds %struct.LexState* %3, i32 0, i32 0, !dbg !1523
  %5 = load i32* %4, align 4, !dbg !1523
  call void @save(%struct.LexState* %2, i32 %5), !dbg !1523
  %6 = load %struct.LexState** %1, align 4, !dbg !1523
  %7 = getelementptr inbounds %struct.LexState* %6, i32 0, i32 7, !dbg !1523
  %8 = load %struct.Zio** %7, align 4, !dbg !1523
  %9 = getelementptr inbounds %struct.Zio* %8, i32 0, i32 0, !dbg !1523
  %10 = load i32* %9, align 4, !dbg !1523
  %11 = add i32 %10, -1, !dbg !1523
  store i32 %11, i32* %9, align 4, !dbg !1523
  %12 = icmp ugt i32 %10, 0, !dbg !1523
  br i1 %12, label %13, label %22, !dbg !1523

; <label>:13                                      ; preds = %0
  %14 = load %struct.LexState** %1, align 4, !dbg !1524
  %15 = getelementptr inbounds %struct.LexState* %14, i32 0, i32 7, !dbg !1524
  %16 = load %struct.Zio** %15, align 4, !dbg !1524
  %17 = getelementptr inbounds %struct.Zio* %16, i32 0, i32 1, !dbg !1524
  %18 = load i8** %17, align 4, !dbg !1524
  %19 = getelementptr inbounds i8* %18, i32 1, !dbg !1524
  store i8* %19, i8** %17, align 4, !dbg !1524
  %20 = load i8* %18, align 1, !dbg !1524
  %21 = zext i8 %20 to i32, !dbg !1524
  br label %27, !dbg !1524

; <label>:22                                      ; preds = %0
  %23 = load %struct.LexState** %1, align 4, !dbg !1526
  %24 = getelementptr inbounds %struct.LexState* %23, i32 0, i32 7, !dbg !1526
  %25 = load %struct.Zio** %24, align 4, !dbg !1526
  %26 = call i32 @luaZ_fill(%struct.Zio* %25), !dbg !1526
  br label %27, !dbg !1526

; <label>:27                                      ; preds = %22, %13
  %28 = phi i32 [ %21, %13 ], [ %26, %22 ], !dbg !1523
  %29 = load %struct.LexState** %1, align 4, !dbg !1528
  %30 = getelementptr inbounds %struct.LexState* %29, i32 0, i32 0, !dbg !1528
  store i32 %28, i32* %30, align 4, !dbg !1528
  %31 = load %struct.LexState** %1, align 4, !dbg !1531
  %32 = load %struct.LexState** %1, align 4, !dbg !1531
  %33 = getelementptr inbounds %struct.LexState* %32, i32 0, i32 0, !dbg !1531
  %34 = load i32* %33, align 4, !dbg !1531
  %35 = icmp eq i32 %34, 123, !dbg !1531
  %36 = zext i1 %35 to i32, !dbg !1531
  call void @esccheck(%struct.LexState* %31, i32 %36, i8* getelementptr inbounds ([12 x i8]* @.str13, i32 0, i32 0)), !dbg !1531
  %37 = load %struct.LexState** %1, align 4, !dbg !1532
  %38 = call i32 @gethexa(%struct.LexState* %37), !dbg !1532
  store i32 %38, i32* %r, align 4, !dbg !1532
  br label %39, !dbg !1533

; <label>:39                                      ; preds = %78, %27
  %40 = load %struct.LexState** %1, align 4, !dbg !1534
  %41 = load %struct.LexState** %1, align 4, !dbg !1534
  %42 = getelementptr inbounds %struct.LexState* %41, i32 0, i32 0, !dbg !1534
  %43 = load i32* %42, align 4, !dbg !1534
  call void @save(%struct.LexState* %40, i32 %43), !dbg !1534
  %44 = load %struct.LexState** %1, align 4, !dbg !1534
  %45 = getelementptr inbounds %struct.LexState* %44, i32 0, i32 7, !dbg !1534
  %46 = load %struct.Zio** %45, align 4, !dbg !1534
  %47 = getelementptr inbounds %struct.Zio* %46, i32 0, i32 0, !dbg !1534
  %48 = load i32* %47, align 4, !dbg !1534
  %49 = add i32 %48, -1, !dbg !1534
  store i32 %49, i32* %47, align 4, !dbg !1534
  %50 = icmp ugt i32 %48, 0, !dbg !1534
  br i1 %50, label %51, label %60, !dbg !1534

; <label>:51                                      ; preds = %39
  %52 = load %struct.LexState** %1, align 4, !dbg !1536
  %53 = getelementptr inbounds %struct.LexState* %52, i32 0, i32 7, !dbg !1536
  %54 = load %struct.Zio** %53, align 4, !dbg !1536
  %55 = getelementptr inbounds %struct.Zio* %54, i32 0, i32 1, !dbg !1536
  %56 = load i8** %55, align 4, !dbg !1536
  %57 = getelementptr inbounds i8* %56, i32 1, !dbg !1536
  store i8* %57, i8** %55, align 4, !dbg !1536
  %58 = load i8* %56, align 1, !dbg !1536
  %59 = zext i8 %58 to i32, !dbg !1536
  br label %65, !dbg !1536

; <label>:60                                      ; preds = %39
  %61 = load %struct.LexState** %1, align 4, !dbg !1538
  %62 = getelementptr inbounds %struct.LexState* %61, i32 0, i32 7, !dbg !1538
  %63 = load %struct.Zio** %62, align 4, !dbg !1538
  %64 = call i32 @luaZ_fill(%struct.Zio* %63), !dbg !1538
  br label %65, !dbg !1538

; <label>:65                                      ; preds = %60, %51
  %66 = phi i32 [ %59, %51 ], [ %64, %60 ], !dbg !1540
  %67 = load %struct.LexState** %1, align 4, !dbg !1541
  %68 = getelementptr inbounds %struct.LexState* %67, i32 0, i32 0, !dbg !1541
  store i32 %66, i32* %68, align 4, !dbg !1541
  %69 = load %struct.LexState** %1, align 4, !dbg !1541
  %70 = getelementptr inbounds %struct.LexState* %69, i32 0, i32 0, !dbg !1541
  %71 = load i32* %70, align 4, !dbg !1541
  %72 = add nsw i32 %71, 1, !dbg !1541
  %73 = getelementptr inbounds [257 x i8]* @luai_ctype_, i32 0, i32 %72, !dbg !1541
  %74 = load i8* %73, align 1, !dbg !1541
  %75 = zext i8 %74 to i32, !dbg !1541
  %76 = and i32 %75, 16, !dbg !1541
  %77 = icmp ne i32 %76, 0, !dbg !1541
  br i1 %77, label %78, label %92, !dbg !1541

; <label>:78                                      ; preds = %65
  %79 = load i32* %i, align 4, !dbg !1544
  %80 = add nsw i32 %79, 1, !dbg !1544
  store i32 %80, i32* %i, align 4, !dbg !1544
  %81 = load i32* %r, align 4, !dbg !1546
  %82 = shl i32 %81, 4, !dbg !1546
  %83 = load %struct.LexState** %1, align 4, !dbg !1547
  %84 = getelementptr inbounds %struct.LexState* %83, i32 0, i32 0, !dbg !1547
  %85 = load i32* %84, align 4, !dbg !1547
  %86 = call i32 @luaO_hexavalue(i32 %85), !dbg !1547
  %87 = add i32 %82, %86, !dbg !1547
  store i32 %87, i32* %r, align 4, !dbg !1547
  %88 = load %struct.LexState** %1, align 4, !dbg !1548
  %89 = load i32* %r, align 4, !dbg !1548
  %90 = icmp ule i32 %89, 1114111, !dbg !1548
  %91 = zext i1 %90 to i32, !dbg !1548
  call void @esccheck(%struct.LexState* %88, i32 %91, i8* getelementptr inbounds ([22 x i8]* @.str14, i32 0, i32 0)), !dbg !1548
  br label %39, !dbg !1549

; <label>:92                                      ; preds = %65
  %93 = load %struct.LexState** %1, align 4, !dbg !1550
  %94 = load %struct.LexState** %1, align 4, !dbg !1550
  %95 = getelementptr inbounds %struct.LexState* %94, i32 0, i32 0, !dbg !1550
  %96 = load i32* %95, align 4, !dbg !1550
  %97 = icmp eq i32 %96, 125, !dbg !1550
  %98 = zext i1 %97 to i32, !dbg !1550
  call void @esccheck(%struct.LexState* %93, i32 %98, i8* getelementptr inbounds ([12 x i8]* @.str15, i32 0, i32 0)), !dbg !1550
  %99 = load %struct.LexState** %1, align 4, !dbg !1551
  %100 = getelementptr inbounds %struct.LexState* %99, i32 0, i32 7, !dbg !1551
  %101 = load %struct.Zio** %100, align 4, !dbg !1551
  %102 = getelementptr inbounds %struct.Zio* %101, i32 0, i32 0, !dbg !1551
  %103 = load i32* %102, align 4, !dbg !1551
  %104 = add i32 %103, -1, !dbg !1551
  store i32 %104, i32* %102, align 4, !dbg !1551
  %105 = icmp ugt i32 %103, 0, !dbg !1551
  br i1 %105, label %106, label %115, !dbg !1551

; <label>:106                                     ; preds = %92
  %107 = load %struct.LexState** %1, align 4, !dbg !1552
  %108 = getelementptr inbounds %struct.LexState* %107, i32 0, i32 7, !dbg !1552
  %109 = load %struct.Zio** %108, align 4, !dbg !1552
  %110 = getelementptr inbounds %struct.Zio* %109, i32 0, i32 1, !dbg !1552
  %111 = load i8** %110, align 4, !dbg !1552
  %112 = getelementptr inbounds i8* %111, i32 1, !dbg !1552
  store i8* %112, i8** %110, align 4, !dbg !1552
  %113 = load i8* %111, align 1, !dbg !1552
  %114 = zext i8 %113 to i32, !dbg !1552
  br label %120, !dbg !1552

; <label>:115                                     ; preds = %92
  %116 = load %struct.LexState** %1, align 4, !dbg !1554
  %117 = getelementptr inbounds %struct.LexState* %116, i32 0, i32 7, !dbg !1554
  %118 = load %struct.Zio** %117, align 4, !dbg !1554
  %119 = call i32 @luaZ_fill(%struct.Zio* %118), !dbg !1554
  br label %120, !dbg !1554

; <label>:120                                     ; preds = %115, %106
  %121 = phi i32 [ %114, %106 ], [ %119, %115 ], !dbg !1551
  %122 = load %struct.LexState** %1, align 4, !dbg !1556
  %123 = getelementptr inbounds %struct.LexState* %122, i32 0, i32 0, !dbg !1556
  store i32 %121, i32* %123, align 4, !dbg !1556
  %124 = load i32* %i, align 4, !dbg !1559
  %125 = load %struct.LexState** %1, align 4, !dbg !1559
  %126 = getelementptr inbounds %struct.LexState* %125, i32 0, i32 8, !dbg !1559
  %127 = load %struct.Mbuffer** %126, align 4, !dbg !1559
  %128 = getelementptr inbounds %struct.Mbuffer* %127, i32 0, i32 1, !dbg !1559
  %129 = load i32* %128, align 4, !dbg !1559
  %130 = sub i32 %129, %124, !dbg !1559
  store i32 %130, i32* %128, align 4, !dbg !1559
  %131 = load i32* %r, align 4, !dbg !1560
  ret i32 %131, !dbg !1560
}

; Function Attrs: nounwind
define internal i32 @gethexa(%struct.LexState* %ls) #0 {
  %1 = alloca %struct.LexState*, align 4
  store %struct.LexState* %ls, %struct.LexState** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.LexState** %1}, metadata !1561), !dbg !1562
  %2 = load %struct.LexState** %1, align 4, !dbg !1563
  %3 = load %struct.LexState** %1, align 4, !dbg !1563
  %4 = getelementptr inbounds %struct.LexState* %3, i32 0, i32 0, !dbg !1563
  %5 = load i32* %4, align 4, !dbg !1563
  call void @save(%struct.LexState* %2, i32 %5), !dbg !1563
  %6 = load %struct.LexState** %1, align 4, !dbg !1563
  %7 = getelementptr inbounds %struct.LexState* %6, i32 0, i32 7, !dbg !1563
  %8 = load %struct.Zio** %7, align 4, !dbg !1563
  %9 = getelementptr inbounds %struct.Zio* %8, i32 0, i32 0, !dbg !1563
  %10 = load i32* %9, align 4, !dbg !1563
  %11 = add i32 %10, -1, !dbg !1563
  store i32 %11, i32* %9, align 4, !dbg !1563
  %12 = icmp ugt i32 %10, 0, !dbg !1563
  br i1 %12, label %13, label %22, !dbg !1563

; <label>:13                                      ; preds = %0
  %14 = load %struct.LexState** %1, align 4, !dbg !1564
  %15 = getelementptr inbounds %struct.LexState* %14, i32 0, i32 7, !dbg !1564
  %16 = load %struct.Zio** %15, align 4, !dbg !1564
  %17 = getelementptr inbounds %struct.Zio* %16, i32 0, i32 1, !dbg !1564
  %18 = load i8** %17, align 4, !dbg !1564
  %19 = getelementptr inbounds i8* %18, i32 1, !dbg !1564
  store i8* %19, i8** %17, align 4, !dbg !1564
  %20 = load i8* %18, align 1, !dbg !1564
  %21 = zext i8 %20 to i32, !dbg !1564
  br label %27, !dbg !1564

; <label>:22                                      ; preds = %0
  %23 = load %struct.LexState** %1, align 4, !dbg !1566
  %24 = getelementptr inbounds %struct.LexState* %23, i32 0, i32 7, !dbg !1566
  %25 = load %struct.Zio** %24, align 4, !dbg !1566
  %26 = call i32 @luaZ_fill(%struct.Zio* %25), !dbg !1566
  br label %27, !dbg !1566

; <label>:27                                      ; preds = %22, %13
  %28 = phi i32 [ %21, %13 ], [ %26, %22 ], !dbg !1563
  %29 = load %struct.LexState** %1, align 4, !dbg !1568
  %30 = getelementptr inbounds %struct.LexState* %29, i32 0, i32 0, !dbg !1568
  store i32 %28, i32* %30, align 4, !dbg !1568
  %31 = load %struct.LexState** %1, align 4, !dbg !1571
  %32 = load %struct.LexState** %1, align 4, !dbg !1571
  %33 = getelementptr inbounds %struct.LexState* %32, i32 0, i32 0, !dbg !1571
  %34 = load i32* %33, align 4, !dbg !1571
  %35 = add nsw i32 %34, 1, !dbg !1571
  %36 = getelementptr inbounds [257 x i8]* @luai_ctype_, i32 0, i32 %35, !dbg !1571
  %37 = load i8* %36, align 1, !dbg !1571
  %38 = zext i8 %37 to i32, !dbg !1571
  %39 = and i32 %38, 16, !dbg !1571
  call void @esccheck(%struct.LexState* %31, i32 %39, i8* getelementptr inbounds ([27 x i8]* @.str16, i32 0, i32 0)), !dbg !1571
  %40 = load %struct.LexState** %1, align 4, !dbg !1572
  %41 = getelementptr inbounds %struct.LexState* %40, i32 0, i32 0, !dbg !1572
  %42 = load i32* %41, align 4, !dbg !1572
  %43 = call i32 @luaO_hexavalue(i32 %42), !dbg !1572
  ret i32 %43, !dbg !1572
}

declare hidden i32 @luaO_hexavalue(i32) #2

declare hidden i8* @luaG_addinfo(%struct.lua_State*, i8*, %struct.TString*, i32) #2

; Function Attrs: nounwind
define internal i8* @txtToken(%struct.LexState* %ls, i32 %token) #0 {
  %1 = alloca i8*, align 4
  %2 = alloca %struct.LexState*, align 4
  %3 = alloca i32, align 4
  store %struct.LexState* %ls, %struct.LexState** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.LexState** %2}, metadata !1573), !dbg !1574
  store i32 %token, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !1575), !dbg !1576
  %4 = load i32* %3, align 4, !dbg !1577
  switch i32 %4, label %16 [
    i32 292, label %5
    i32 293, label %5
    i32 290, label %5
    i32 291, label %5
  ], !dbg !1577

; <label>:5                                       ; preds = %0, %0, %0, %0
  %6 = load %struct.LexState** %2, align 4, !dbg !1578
  call void @save(%struct.LexState* %6, i32 0), !dbg !1578
  %7 = load %struct.LexState** %2, align 4, !dbg !1580
  %8 = getelementptr inbounds %struct.LexState* %7, i32 0, i32 6, !dbg !1580
  %9 = load %struct.lua_State** %8, align 4, !dbg !1580
  %10 = load %struct.LexState** %2, align 4, !dbg !1580
  %11 = getelementptr inbounds %struct.LexState* %10, i32 0, i32 8, !dbg !1580
  %12 = load %struct.Mbuffer** %11, align 4, !dbg !1580
  %13 = getelementptr inbounds %struct.Mbuffer* %12, i32 0, i32 0, !dbg !1580
  %14 = load i8** %13, align 4, !dbg !1580
  %15 = call i8* (%struct.lua_State*, i8*, ...)* @luaO_pushfstring(%struct.lua_State* %9, i8* getelementptr inbounds ([5 x i8]* @.str2, i32 0, i32 0), i8* %14), !dbg !1580
  store i8* %15, i8** %1, !dbg !1580
  br label %20, !dbg !1580

; <label>:16                                      ; preds = %0
  %17 = load %struct.LexState** %2, align 4, !dbg !1581
  %18 = load i32* %3, align 4, !dbg !1581
  %19 = call i8* @luaX_token2str(%struct.LexState* %17, i32 %18), !dbg !1581
  store i8* %19, i8** %1, !dbg !1581
  br label %20, !dbg !1581

; <label>:20                                      ; preds = %16, %5
  %21 = load i8** %1, !dbg !1582
  ret i8* %21, !dbg !1582
}

; Function Attrs: noreturn
declare hidden void @luaD_throw(%struct.lua_State*, i32) #5

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { noreturn "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn }

!llvm.dbg.cu = !{!0}
!xidane.fname = !{!532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605}
!xidane.function_declaration_type = !{!532, !606, !534, !607, !536, !608, !538, !609, !540, !610, !542, !611, !544, !612, !546, !613, !548, !614, !550, !615, !552, !606, !554, !616, !556, !617, !558, !618, !560, !619, !562, !620, !564, !618, !566, !621, !568, !620, !570, !622, !572, !623, !574, !624, !576, !625, !578, !619, !580, !626, !582, !627, !584, !620, !586, !618, !588, !628, !590, !620, !592, !629, !594, !630, !596, !620, !598, !631, !600, !632, !602, !610, !604, !633}
!xidane.function_declaration_filename = !{!532, !634, !534, !635, !536, !636, !538, !635, !540, !634, !542, !637, !544, !634, !546, !638, !548, !634, !550, !639, !552, !636, !554, !634, !556, !640, !558, !634, !560, !638, !562, !634, !564, !638, !566, !641, !568, !638, !570, !638, !572, !638, !574, !638, !576, !638, !578, !638, !580, !638, !582, !637, !584, !638, !586, !638, !588, !638, !590, !638, !592, !637, !594, !638, !596, !638, !598, !637, !600, !642, !602, !638, !604, !643}
!xidane.ExternC = !{!532, !534, !536, !538, !540, !542, !544, !548, !550, !552, !554, !556, !558, !562, !566, !582, !592, !598, !600, !604}
!llvm.module.flags = !{!644, !645, !646, !647}
!llvm.ident = !{!648}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.0 (tags/RELEASE_350/final)", i1 false, metadata !"", i32 0, metadata !2, metadata !43, metadata !44, metadata !526, metadata !43, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src\llex.c] [DW_LANG_C99]
!1 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src\5Cllex.c", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!2 = metadata !{metadata !3}
!3 = metadata !{i32 786436, metadata !4, null, metadata !"RESERVED", i32 26, i64 32, i64 32, i32 0, i32 0, null, metadata !5, i32 0, null, null, null} ; [ DW_TAG_enumeration_type ] [RESERVED] [line 26, size 32, align 32, offset 0] [def] [from ]
!4 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/llex.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!5 = metadata !{metadata !6, metadata !7, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !13, metadata !14, metadata !15, metadata !16, metadata !17, metadata !18, metadata !19, metadata !20, metadata !21, metadata !22, metadata !23, metadata !24, metadata !25, metadata !26, metadata !27, metadata !28, metadata !29, metadata !30, metadata !31, metadata !32, metadata !33, metadata !34, metadata !35, metadata !36, metadata !37, metadata !38, metadata !39, metadata !40, metadata !41, metadata !42}
!6 = metadata !{i32 786472, metadata !"TK_AND", i64 257} ; [ DW_TAG_enumerator ] [TK_AND :: 257]
!7 = metadata !{i32 786472, metadata !"TK_BREAK", i64 258} ; [ DW_TAG_enumerator ] [TK_BREAK :: 258]
!8 = metadata !{i32 786472, metadata !"TK_DO", i64 259} ; [ DW_TAG_enumerator ] [TK_DO :: 259]
!9 = metadata !{i32 786472, metadata !"TK_ELSE", i64 260} ; [ DW_TAG_enumerator ] [TK_ELSE :: 260]
!10 = metadata !{i32 786472, metadata !"TK_ELSEIF", i64 261} ; [ DW_TAG_enumerator ] [TK_ELSEIF :: 261]
!11 = metadata !{i32 786472, metadata !"TK_END", i64 262} ; [ DW_TAG_enumerator ] [TK_END :: 262]
!12 = metadata !{i32 786472, metadata !"TK_FALSE", i64 263} ; [ DW_TAG_enumerator ] [TK_FALSE :: 263]
!13 = metadata !{i32 786472, metadata !"TK_FOR", i64 264} ; [ DW_TAG_enumerator ] [TK_FOR :: 264]
!14 = metadata !{i32 786472, metadata !"TK_FUNCTION", i64 265} ; [ DW_TAG_enumerator ] [TK_FUNCTION :: 265]
!15 = metadata !{i32 786472, metadata !"TK_GOTO", i64 266} ; [ DW_TAG_enumerator ] [TK_GOTO :: 266]
!16 = metadata !{i32 786472, metadata !"TK_IF", i64 267} ; [ DW_TAG_enumerator ] [TK_IF :: 267]
!17 = metadata !{i32 786472, metadata !"TK_IN", i64 268} ; [ DW_TAG_enumerator ] [TK_IN :: 268]
!18 = metadata !{i32 786472, metadata !"TK_LOCAL", i64 269} ; [ DW_TAG_enumerator ] [TK_LOCAL :: 269]
!19 = metadata !{i32 786472, metadata !"TK_NIL", i64 270} ; [ DW_TAG_enumerator ] [TK_NIL :: 270]
!20 = metadata !{i32 786472, metadata !"TK_NOT", i64 271} ; [ DW_TAG_enumerator ] [TK_NOT :: 271]
!21 = metadata !{i32 786472, metadata !"TK_OR", i64 272} ; [ DW_TAG_enumerator ] [TK_OR :: 272]
!22 = metadata !{i32 786472, metadata !"TK_REPEAT", i64 273} ; [ DW_TAG_enumerator ] [TK_REPEAT :: 273]
!23 = metadata !{i32 786472, metadata !"TK_RETURN", i64 274} ; [ DW_TAG_enumerator ] [TK_RETURN :: 274]
!24 = metadata !{i32 786472, metadata !"TK_THEN", i64 275} ; [ DW_TAG_enumerator ] [TK_THEN :: 275]
!25 = metadata !{i32 786472, metadata !"TK_TRUE", i64 276} ; [ DW_TAG_enumerator ] [TK_TRUE :: 276]
!26 = metadata !{i32 786472, metadata !"TK_UNTIL", i64 277} ; [ DW_TAG_enumerator ] [TK_UNTIL :: 277]
!27 = metadata !{i32 786472, metadata !"TK_WHILE", i64 278} ; [ DW_TAG_enumerator ] [TK_WHILE :: 278]
!28 = metadata !{i32 786472, metadata !"TK_IDIV", i64 279} ; [ DW_TAG_enumerator ] [TK_IDIV :: 279]
!29 = metadata !{i32 786472, metadata !"TK_CONCAT", i64 280} ; [ DW_TAG_enumerator ] [TK_CONCAT :: 280]
!30 = metadata !{i32 786472, metadata !"TK_DOTS", i64 281} ; [ DW_TAG_enumerator ] [TK_DOTS :: 281]
!31 = metadata !{i32 786472, metadata !"TK_EQ", i64 282} ; [ DW_TAG_enumerator ] [TK_EQ :: 282]
!32 = metadata !{i32 786472, metadata !"TK_GE", i64 283} ; [ DW_TAG_enumerator ] [TK_GE :: 283]
!33 = metadata !{i32 786472, metadata !"TK_LE", i64 284} ; [ DW_TAG_enumerator ] [TK_LE :: 284]
!34 = metadata !{i32 786472, metadata !"TK_NE", i64 285} ; [ DW_TAG_enumerator ] [TK_NE :: 285]
!35 = metadata !{i32 786472, metadata !"TK_SHL", i64 286} ; [ DW_TAG_enumerator ] [TK_SHL :: 286]
!36 = metadata !{i32 786472, metadata !"TK_SHR", i64 287} ; [ DW_TAG_enumerator ] [TK_SHR :: 287]
!37 = metadata !{i32 786472, metadata !"TK_DBCOLON", i64 288} ; [ DW_TAG_enumerator ] [TK_DBCOLON :: 288]
!38 = metadata !{i32 786472, metadata !"TK_EOS", i64 289} ; [ DW_TAG_enumerator ] [TK_EOS :: 289]
!39 = metadata !{i32 786472, metadata !"TK_FLT", i64 290} ; [ DW_TAG_enumerator ] [TK_FLT :: 290]
!40 = metadata !{i32 786472, metadata !"TK_INT", i64 291} ; [ DW_TAG_enumerator ] [TK_INT :: 291]
!41 = metadata !{i32 786472, metadata !"TK_NAME", i64 292} ; [ DW_TAG_enumerator ] [TK_NAME :: 292]
!42 = metadata !{i32 786472, metadata !"TK_STRING", i64 293} ; [ DW_TAG_enumerator ] [TK_STRING :: 293]
!43 = metadata !{}
!44 = metadata !{metadata !45, metadata !309, metadata !474, metadata !477, metadata !480, metadata !483, metadata !486, metadata !489, metadata !493, metadata !494, metadata !497, metadata !500, metadata !503, metadata !504, metadata !507, metadata !508, metadata !512, metadata !513, metadata !514, metadata !517, metadata !520, metadata !521, metadata !522, metadata !525}
!45 = metadata !{i32 786478, metadata !46, metadata !47, metadata !"luaX_init", metadata !"luaX_init", metadata !"", i32 70, metadata !48, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.lua_State*)* @luaX_init, null, null, metadata !43, i32 70} ; [ DW_TAG_subprogram ] [line 70] [def] [luaX_init]
!46 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/llex.c", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!47 = metadata !{i32 786473, metadata !46}        ; [ DW_TAG_file_type ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!48 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !49, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!49 = metadata !{null, metadata !50}
!50 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !51} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from lua_State]
!51 = metadata !{i32 786454, metadata !52, null, metadata !"lua_State", i32 56, i64 0, i64 0, i64 0, i32 0, metadata !53} ; [ DW_TAG_typedef ] [lua_State] [line 56, size 0, align 0, offset 0] [from lua_State]
!52 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lua.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!53 = metadata !{i32 786451, metadata !54, null, metadata !"lua_State", i32 159, i64 960, i64 32, i32 0, i32 0, null, metadata !55, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [lua_State] [line 159, size 960, align 32, offset 0] [def] [from ]
!54 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lstate.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!55 = metadata !{metadata !56, metadata !68, metadata !69, metadata !70, metadata !72, metadata !73, metadata !100, metadata !216, metadata !254, metadata !255, metadata !256, metadata !257, metadata !261, metadata !262, metadata !263, metadata !266, metadata !267, metadata !297, metadata !298, metadata !299, metadata !300, metadata !301, metadata !302, metadata !303, metadata !308}
!56 = metadata !{i32 786445, metadata !54, metadata !53, metadata !"next", i32 160, i64 32, i64 32, i64 0, i32 0, metadata !57} ; [ DW_TAG_member ] [next] [line 160, size 32, align 32, offset 0] [from ]
!57 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !58} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from GCObject]
!58 = metadata !{i32 786454, metadata !59, null, metadata !"GCObject", i32 72, i64 0, i64 0, i64 0, i32 0, metadata !60} ; [ DW_TAG_typedef ] [GCObject] [line 72, size 0, align 0, offset 0] [from GCObject]
!59 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lobject.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!60 = metadata !{i32 786451, metadata !59, null, metadata !"GCObject", i32 85, i64 64, i64 32, i32 0, i32 0, null, metadata !61, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [GCObject] [line 85, size 64, align 32, offset 0] [def] [from ]
!61 = metadata !{metadata !62, metadata !63, metadata !67}
!62 = metadata !{i32 786445, metadata !59, metadata !60, metadata !"next", i32 86, i64 32, i64 32, i64 0, i32 0, metadata !57} ; [ DW_TAG_member ] [next] [line 86, size 32, align 32, offset 0] [from ]
!63 = metadata !{i32 786445, metadata !59, metadata !60, metadata !"tt", i32 86, i64 8, i64 8, i64 32, i32 0, metadata !64} ; [ DW_TAG_member ] [tt] [line 86, size 8, align 8, offset 32] [from lu_byte]
!64 = metadata !{i32 786454, metadata !65, null, metadata !"lu_byte", i32 35, i64 0, i64 0, i64 0, i32 0, metadata !66} ; [ DW_TAG_typedef ] [lu_byte] [line 35, size 0, align 0, offset 0] [from unsigned char]
!65 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/llimits.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!66 = metadata !{i32 786468, null, null, metadata !"unsigned char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [unsigned char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!67 = metadata !{i32 786445, metadata !59, metadata !60, metadata !"marked", i32 86, i64 8, i64 8, i64 40, i32 0, metadata !64} ; [ DW_TAG_member ] [marked] [line 86, size 8, align 8, offset 40] [from lu_byte]
!68 = metadata !{i32 786445, metadata !54, metadata !53, metadata !"tt", i32 160, i64 8, i64 8, i64 32, i32 0, metadata !64} ; [ DW_TAG_member ] [tt] [line 160, size 8, align 8, offset 32] [from lu_byte]
!69 = metadata !{i32 786445, metadata !54, metadata !53, metadata !"marked", i32 160, i64 8, i64 8, i64 40, i32 0, metadata !64} ; [ DW_TAG_member ] [marked] [line 160, size 8, align 8, offset 40] [from lu_byte]
!70 = metadata !{i32 786445, metadata !54, metadata !53, metadata !"nci", i32 161, i64 16, i64 16, i64 48, i32 0, metadata !71} ; [ DW_TAG_member ] [nci] [line 161, size 16, align 16, offset 48] [from unsigned short]
!71 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!72 = metadata !{i32 786445, metadata !54, metadata !53, metadata !"status", i32 162, i64 8, i64 8, i64 64, i32 0, metadata !64} ; [ DW_TAG_member ] [status] [line 162, size 8, align 8, offset 64] [from lu_byte]
!73 = metadata !{i32 786445, metadata !54, metadata !53, metadata !"top", i32 163, i64 32, i64 32, i64 96, i32 0, metadata !74} ; [ DW_TAG_member ] [top] [line 163, size 32, align 32, offset 96] [from StkId]
!74 = metadata !{i32 786454, metadata !59, null, metadata !"StkId", i32 294, i64 0, i64 0, i64 0, i32 0, metadata !75} ; [ DW_TAG_typedef ] [StkId] [line 294, size 0, align 0, offset 0] [from ]
!75 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !76} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from TValue]
!76 = metadata !{i32 786454, metadata !59, null, metadata !"TValue", i32 115, i64 0, i64 0, i64 0, i32 0, metadata !77} ; [ DW_TAG_typedef ] [TValue] [line 115, size 0, align 0, offset 0] [from lua_TValue]
!77 = metadata !{i32 786451, metadata !59, null, metadata !"lua_TValue", i32 113, i64 128, i64 64, i32 0, i32 0, null, metadata !78, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [lua_TValue] [line 113, size 128, align 64, offset 0] [def] [from ]
!78 = metadata !{metadata !79, metadata !99}
!79 = metadata !{i32 786445, metadata !59, metadata !77, metadata !"value_", i32 114, i64 64, i64 64, i64 0, i32 0, metadata !80} ; [ DW_TAG_member ] [value_] [line 114, size 64, align 64, offset 0] [from Value]
!80 = metadata !{i32 786454, metadata !59, null, metadata !"Value", i32 107, i64 0, i64 0, i64 0, i32 0, metadata !81} ; [ DW_TAG_typedef ] [Value] [line 107, size 0, align 0, offset 0] [from Value]
!81 = metadata !{i32 786455, metadata !59, null, metadata !"Value", i32 100, i64 64, i64 64, i64 0, i32 0, null, metadata !82, i32 0, null, null, null} ; [ DW_TAG_union_type ] [Value] [line 100, size 64, align 64, offset 0] [def] [from ]
!82 = metadata !{metadata !83, metadata !84, metadata !86, metadata !88, metadata !93, metadata !96}
!83 = metadata !{i32 786445, metadata !59, metadata !81, metadata !"gc", i32 101, i64 32, i64 32, i64 0, i32 0, metadata !57} ; [ DW_TAG_member ] [gc] [line 101, size 32, align 32, offset 0] [from ]
!84 = metadata !{i32 786445, metadata !59, metadata !81, metadata !"p", i32 102, i64 32, i64 32, i64 0, i32 0, metadata !85} ; [ DW_TAG_member ] [p] [line 102, size 32, align 32, offset 0] [from ]
!85 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!86 = metadata !{i32 786445, metadata !59, metadata !81, metadata !"b", i32 103, i64 32, i64 32, i64 0, i32 0, metadata !87} ; [ DW_TAG_member ] [b] [line 103, size 32, align 32, offset 0] [from int]
!87 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!88 = metadata !{i32 786445, metadata !59, metadata !81, metadata !"f", i32 104, i64 32, i64 32, i64 0, i32 0, metadata !89} ; [ DW_TAG_member ] [f] [line 104, size 32, align 32, offset 0] [from lua_CFunction]
!89 = metadata !{i32 786454, metadata !52, null, metadata !"lua_CFunction", i32 105, i64 0, i64 0, i64 0, i32 0, metadata !90} ; [ DW_TAG_typedef ] [lua_CFunction] [line 105, size 0, align 0, offset 0] [from ]
!90 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !91} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!91 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !92, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!92 = metadata !{metadata !87, metadata !50}
!93 = metadata !{i32 786445, metadata !59, metadata !81, metadata !"i", i32 105, i64 64, i64 64, i64 0, i32 0, metadata !94} ; [ DW_TAG_member ] [i] [line 105, size 64, align 64, offset 0] [from lua_Integer]
!94 = metadata !{i32 786454, metadata !52, null, metadata !"lua_Integer", i32 93, i64 0, i64 0, i64 0, i32 0, metadata !95} ; [ DW_TAG_typedef ] [lua_Integer] [line 93, size 0, align 0, offset 0] [from long long int]
!95 = metadata !{i32 786468, null, null, metadata !"long long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!96 = metadata !{i32 786445, metadata !59, metadata !81, metadata !"n", i32 106, i64 64, i64 64, i64 0, i32 0, metadata !97} ; [ DW_TAG_member ] [n] [line 106, size 64, align 64, offset 0] [from lua_Number]
!97 = metadata !{i32 786454, metadata !52, null, metadata !"lua_Number", i32 89, i64 0, i64 0, i64 0, i32 0, metadata !98} ; [ DW_TAG_typedef ] [lua_Number] [line 89, size 0, align 0, offset 0] [from double]
!98 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!99 = metadata !{i32 786445, metadata !59, metadata !77, metadata !"tt_", i32 114, i64 32, i64 32, i64 64, i32 0, metadata !87} ; [ DW_TAG_member ] [tt_] [line 114, size 32, align 32, offset 64] [from int]
!100 = metadata !{i32 786445, metadata !54, metadata !53, metadata !"l_G", i32 164, i64 32, i64 32, i64 128, i32 0, metadata !101} ; [ DW_TAG_member ] [l_G] [line 164, size 32, align 32, offset 128] [from ]
!101 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !102} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from global_State]
!102 = metadata !{i32 786454, metadata !54, null, metadata !"global_State", i32 153, i64 0, i64 0, i64 0, i32 0, metadata !103} ; [ DW_TAG_typedef ] [global_State] [line 153, size 0, align 0, offset 0] [from global_State]
!103 = metadata !{i32 786451, metadata !54, null, metadata !"global_State", i32 118, i64 5568, i64 64, i32 0, i32 0, null, metadata !104, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [global_State] [line 118, size 5568, align 64, offset 0] [def] [from ]
!104 = metadata !{metadata !105, metadata !113, metadata !114, metadata !117, metadata !118, metadata !120, metadata !121, metadata !145, metadata !146, metadata !147, metadata !148, metadata !149, metadata !150, metadata !151, metadata !152, metadata !154, metadata !155, metadata !156, metadata !157, metadata !158, metadata !159, metadata !160, metadata !161, metadata !162, metadata !164, metadata !165, metadata !166, metadata !167, metadata !168, metadata !169, metadata !172, metadata !173, metadata !177, metadata !211}
!105 = metadata !{i32 786445, metadata !54, metadata !103, metadata !"frealloc", i32 119, i64 32, i64 32, i64 0, i32 0, metadata !106} ; [ DW_TAG_member ] [frealloc] [line 119, size 32, align 32, offset 0] [from lua_Alloc]
!106 = metadata !{i32 786454, metadata !52, null, metadata !"lua_Alloc", i32 124, i64 0, i64 0, i64 0, i32 0, metadata !107} ; [ DW_TAG_typedef ] [lua_Alloc] [line 124, size 0, align 0, offset 0] [from ]
!107 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !108} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!108 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !109, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!109 = metadata !{metadata !85, metadata !85, metadata !85, metadata !110, metadata !110}
!110 = metadata !{i32 786454, metadata !111, null, metadata !"size_t", i32 216, i64 0, i64 0, i64 0, i32 0, metadata !112} ; [ DW_TAG_typedef ] [size_t] [line 216, size 0, align 0, offset 0] [from unsigned int]
!111 = metadata !{metadata !"D:/Xilinx/SDx/2016.3/SDK/gnu/aarch32/nt/gcc-arm-linux-gnueabi/lib/gcc/arm-linux-gnueabihf/5.2.1/include\5Cstddef.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!112 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!113 = metadata !{i32 786445, metadata !54, metadata !103, metadata !"ud", i32 120, i64 32, i64 32, i64 32, i32 0, metadata !85} ; [ DW_TAG_member ] [ud] [line 120, size 32, align 32, offset 32] [from ]
!114 = metadata !{i32 786445, metadata !54, metadata !103, metadata !"totalbytes", i32 121, i64 32, i64 32, i64 64, i32 0, metadata !115} ; [ DW_TAG_member ] [totalbytes] [line 121, size 32, align 32, offset 64] [from l_mem]
!115 = metadata !{i32 786454, metadata !65, null, metadata !"l_mem", i32 27, i64 0, i64 0, i64 0, i32 0, metadata !116} ; [ DW_TAG_typedef ] [l_mem] [line 27, size 0, align 0, offset 0] [from ptrdiff_t]
!116 = metadata !{i32 786454, metadata !111, null, metadata !"ptrdiff_t", i32 149, i64 0, i64 0, i64 0, i32 0, metadata !87} ; [ DW_TAG_typedef ] [ptrdiff_t] [line 149, size 0, align 0, offset 0] [from int]
!117 = metadata !{i32 786445, metadata !54, metadata !103, metadata !"GCdebt", i32 122, i64 32, i64 32, i64 96, i32 0, metadata !115} ; [ DW_TAG_member ] [GCdebt] [line 122, size 32, align 32, offset 96] [from l_mem]
!118 = metadata !{i32 786445, metadata !54, metadata !103, metadata !"GCmemtrav", i32 123, i64 32, i64 32, i64 128, i32 0, metadata !119} ; [ DW_TAG_member ] [GCmemtrav] [line 123, size 32, align 32, offset 128] [from lu_mem]
!119 = metadata !{i32 786454, metadata !65, null, metadata !"lu_mem", i32 26, i64 0, i64 0, i64 0, i32 0, metadata !110} ; [ DW_TAG_typedef ] [lu_mem] [line 26, size 0, align 0, offset 0] [from size_t]
!120 = metadata !{i32 786445, metadata !54, metadata !103, metadata !"GCestimate", i32 124, i64 32, i64 32, i64 160, i32 0, metadata !119} ; [ DW_TAG_member ] [GCestimate] [line 124, size 32, align 32, offset 160] [from lu_mem]
!121 = metadata !{i32 786445, metadata !54, metadata !103, metadata !"strt", i32 125, i64 96, i64 32, i64 192, i32 0, metadata !122} ; [ DW_TAG_member ] [strt] [line 125, size 96, align 32, offset 192] [from stringtable]
!122 = metadata !{i32 786454, metadata !54, null, metadata !"stringtable", i32 62, i64 0, i64 0, i64 0, i32 0, metadata !123} ; [ DW_TAG_typedef ] [stringtable] [line 62, size 0, align 0, offset 0] [from stringtable]
!123 = metadata !{i32 786451, metadata !54, null, metadata !"stringtable", i32 58, i64 96, i64 32, i32 0, i32 0, null, metadata !124, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [stringtable] [line 58, size 96, align 32, offset 0] [def] [from ]
!124 = metadata !{metadata !125, metadata !143, metadata !144}
!125 = metadata !{i32 786445, metadata !54, metadata !123, metadata !"hash", i32 59, i64 32, i64 32, i64 0, i32 0, metadata !126} ; [ DW_TAG_member ] [hash] [line 59, size 32, align 32, offset 0] [from ]
!126 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !127} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!127 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !128} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from TString]
!128 = metadata !{i32 786454, metadata !59, null, metadata !"TString", i32 312, i64 0, i64 0, i64 0, i32 0, metadata !129} ; [ DW_TAG_typedef ] [TString] [line 312, size 0, align 0, offset 0] [from TString]
!129 = metadata !{i32 786451, metadata !59, null, metadata !"TString", i32 303, i64 128, i64 32, i32 0, i32 0, null, metadata !130, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [TString] [line 303, size 128, align 32, offset 0] [def] [from ]
!130 = metadata !{metadata !131, metadata !132, metadata !133, metadata !134, metadata !135, metadata !136, metadata !137}
!131 = metadata !{i32 786445, metadata !59, metadata !129, metadata !"next", i32 304, i64 32, i64 32, i64 0, i32 0, metadata !57} ; [ DW_TAG_member ] [next] [line 304, size 32, align 32, offset 0] [from ]
!132 = metadata !{i32 786445, metadata !59, metadata !129, metadata !"tt", i32 304, i64 8, i64 8, i64 32, i32 0, metadata !64} ; [ DW_TAG_member ] [tt] [line 304, size 8, align 8, offset 32] [from lu_byte]
!133 = metadata !{i32 786445, metadata !59, metadata !129, metadata !"marked", i32 304, i64 8, i64 8, i64 40, i32 0, metadata !64} ; [ DW_TAG_member ] [marked] [line 304, size 8, align 8, offset 40] [from lu_byte]
!134 = metadata !{i32 786445, metadata !59, metadata !129, metadata !"extra", i32 305, i64 8, i64 8, i64 48, i32 0, metadata !64} ; [ DW_TAG_member ] [extra] [line 305, size 8, align 8, offset 48] [from lu_byte]
!135 = metadata !{i32 786445, metadata !59, metadata !129, metadata !"shrlen", i32 306, i64 8, i64 8, i64 56, i32 0, metadata !64} ; [ DW_TAG_member ] [shrlen] [line 306, size 8, align 8, offset 56] [from lu_byte]
!136 = metadata !{i32 786445, metadata !59, metadata !129, metadata !"hash", i32 307, i64 32, i64 32, i64 64, i32 0, metadata !112} ; [ DW_TAG_member ] [hash] [line 307, size 32, align 32, offset 64] [from unsigned int]
!137 = metadata !{i32 786445, metadata !59, metadata !129, metadata !"u", i32 311, i64 32, i64 32, i64 96, i32 0, metadata !138} ; [ DW_TAG_member ] [u] [line 311, size 32, align 32, offset 96] [from ]
!138 = metadata !{i32 786455, metadata !59, metadata !129, metadata !"", i32 308, i64 32, i64 32, i64 0, i32 0, null, metadata !139, i32 0, null, null, null} ; [ DW_TAG_union_type ] [line 308, size 32, align 32, offset 0] [def] [from ]
!139 = metadata !{metadata !140, metadata !141}
!140 = metadata !{i32 786445, metadata !59, metadata !138, metadata !"lnglen", i32 309, i64 32, i64 32, i64 0, i32 0, metadata !110} ; [ DW_TAG_member ] [lnglen] [line 309, size 32, align 32, offset 0] [from size_t]
!141 = metadata !{i32 786445, metadata !59, metadata !138, metadata !"hnext", i32 310, i64 32, i64 32, i64 0, i32 0, metadata !142} ; [ DW_TAG_member ] [hnext] [line 310, size 32, align 32, offset 0] [from ]
!142 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !129} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from TString]
!143 = metadata !{i32 786445, metadata !54, metadata !123, metadata !"nuse", i32 60, i64 32, i64 32, i64 32, i32 0, metadata !87} ; [ DW_TAG_member ] [nuse] [line 60, size 32, align 32, offset 32] [from int]
!144 = metadata !{i32 786445, metadata !54, metadata !123, metadata !"size", i32 61, i64 32, i64 32, i64 64, i32 0, metadata !87} ; [ DW_TAG_member ] [size] [line 61, size 32, align 32, offset 64] [from int]
!145 = metadata !{i32 786445, metadata !54, metadata !103, metadata !"l_registry", i32 126, i64 128, i64 64, i64 320, i32 0, metadata !76} ; [ DW_TAG_member ] [l_registry] [line 126, size 128, align 64, offset 320] [from TValue]
!146 = metadata !{i32 786445, metadata !54, metadata !103, metadata !"seed", i32 127, i64 32, i64 32, i64 448, i32 0, metadata !112} ; [ DW_TAG_member ] [seed] [line 127, size 32, align 32, offset 448] [from unsigned int]
!147 = metadata !{i32 786445, metadata !54, metadata !103, metadata !"currentwhite", i32 128, i64 8, i64 8, i64 480, i32 0, metadata !64} ; [ DW_TAG_member ] [currentwhite] [line 128, size 8, align 8, offset 480] [from lu_byte]
!148 = metadata !{i32 786445, metadata !54, metadata !103, metadata !"gcstate", i32 129, i64 8, i64 8, i64 488, i32 0, metadata !64} ; [ DW_TAG_member ] [gcstate] [line 129, size 8, align 8, offset 488] [from lu_byte]
!149 = metadata !{i32 786445, metadata !54, metadata !103, metadata !"gckind", i32 130, i64 8, i64 8, i64 496, i32 0, metadata !64} ; [ DW_TAG_member ] [gckind] [line 130, size 8, align 8, offset 496] [from lu_byte]
!150 = metadata !{i32 786445, metadata !54, metadata !103, metadata !"gcrunning", i32 131, i64 8, i64 8, i64 504, i32 0, metadata !64} ; [ DW_TAG_member ] [gcrunning] [line 131, size 8, align 8, offset 504] [from lu_byte]
!151 = metadata !{i32 786445, metadata !54, metadata !103, metadata !"allgc", i32 132, i64 32, i64 32, i64 512, i32 0, metadata !57} ; [ DW_TAG_member ] [allgc] [line 132, size 32, align 32, offset 512] [from ]
!152 = metadata !{i32 786445, metadata !54, metadata !103, metadata !"sweepgc", i32 133, i64 32, i64 32, i64 544, i32 0, metadata !153} ; [ DW_TAG_member ] [sweepgc] [line 133, size 32, align 32, offset 544] [from ]
!153 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !57} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!154 = metadata !{i32 786445, metadata !54, metadata !103, metadata !"finobj", i32 134, i64 32, i64 32, i64 576, i32 0, metadata !57} ; [ DW_TAG_member ] [finobj] [line 134, size 32, align 32, offset 576] [from ]
!155 = metadata !{i32 786445, metadata !54, metadata !103, metadata !"gray", i32 135, i64 32, i64 32, i64 608, i32 0, metadata !57} ; [ DW_TAG_member ] [gray] [line 135, size 32, align 32, offset 608] [from ]
!156 = metadata !{i32 786445, metadata !54, metadata !103, metadata !"grayagain", i32 136, i64 32, i64 32, i64 640, i32 0, metadata !57} ; [ DW_TAG_member ] [grayagain] [line 136, size 32, align 32, offset 640] [from ]
!157 = metadata !{i32 786445, metadata !54, metadata !103, metadata !"weak", i32 137, i64 32, i64 32, i64 672, i32 0, metadata !57} ; [ DW_TAG_member ] [weak] [line 137, size 32, align 32, offset 672] [from ]
!158 = metadata !{i32 786445, metadata !54, metadata !103, metadata !"ephemeron", i32 138, i64 32, i64 32, i64 704, i32 0, metadata !57} ; [ DW_TAG_member ] [ephemeron] [line 138, size 32, align 32, offset 704] [from ]
!159 = metadata !{i32 786445, metadata !54, metadata !103, metadata !"allweak", i32 139, i64 32, i64 32, i64 736, i32 0, metadata !57} ; [ DW_TAG_member ] [allweak] [line 139, size 32, align 32, offset 736] [from ]
!160 = metadata !{i32 786445, metadata !54, metadata !103, metadata !"tobefnz", i32 140, i64 32, i64 32, i64 768, i32 0, metadata !57} ; [ DW_TAG_member ] [tobefnz] [line 140, size 32, align 32, offset 768] [from ]
!161 = metadata !{i32 786445, metadata !54, metadata !103, metadata !"fixedgc", i32 141, i64 32, i64 32, i64 800, i32 0, metadata !57} ; [ DW_TAG_member ] [fixedgc] [line 141, size 32, align 32, offset 800] [from ]
!162 = metadata !{i32 786445, metadata !54, metadata !103, metadata !"twups", i32 142, i64 32, i64 32, i64 832, i32 0, metadata !163} ; [ DW_TAG_member ] [twups] [line 142, size 32, align 32, offset 832] [from ]
!163 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !53} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from lua_State]
!164 = metadata !{i32 786445, metadata !54, metadata !103, metadata !"gcfinnum", i32 143, i64 32, i64 32, i64 864, i32 0, metadata !112} ; [ DW_TAG_member ] [gcfinnum] [line 143, size 32, align 32, offset 864] [from unsigned int]
!165 = metadata !{i32 786445, metadata !54, metadata !103, metadata !"gcpause", i32 144, i64 32, i64 32, i64 896, i32 0, metadata !87} ; [ DW_TAG_member ] [gcpause] [line 144, size 32, align 32, offset 896] [from int]
!166 = metadata !{i32 786445, metadata !54, metadata !103, metadata !"gcstepmul", i32 145, i64 32, i64 32, i64 928, i32 0, metadata !87} ; [ DW_TAG_member ] [gcstepmul] [line 145, size 32, align 32, offset 928] [from int]
!167 = metadata !{i32 786445, metadata !54, metadata !103, metadata !"panic", i32 146, i64 32, i64 32, i64 960, i32 0, metadata !89} ; [ DW_TAG_member ] [panic] [line 146, size 32, align 32, offset 960] [from lua_CFunction]
!168 = metadata !{i32 786445, metadata !54, metadata !103, metadata !"mainthread", i32 147, i64 32, i64 32, i64 992, i32 0, metadata !163} ; [ DW_TAG_member ] [mainthread] [line 147, size 32, align 32, offset 992] [from ]
!169 = metadata !{i32 786445, metadata !54, metadata !103, metadata !"version", i32 148, i64 32, i64 32, i64 1024, i32 0, metadata !170} ; [ DW_TAG_member ] [version] [line 148, size 32, align 32, offset 1024] [from ]
!170 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !171} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!171 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !97} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from lua_Number]
!172 = metadata !{i32 786445, metadata !54, metadata !103, metadata !"memerrmsg", i32 149, i64 32, i64 32, i64 1056, i32 0, metadata !127} ; [ DW_TAG_member ] [memerrmsg] [line 149, size 32, align 32, offset 1056] [from ]
!173 = metadata !{i32 786445, metadata !54, metadata !103, metadata !"tmname", i32 150, i64 768, i64 32, i64 1088, i32 0, metadata !174} ; [ DW_TAG_member ] [tmname] [line 150, size 768, align 32, offset 1088] [from ]
!174 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 768, i64 32, i32 0, i32 0, metadata !127, metadata !175, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 768, align 32, offset 0] [from ]
!175 = metadata !{metadata !176}
!176 = metadata !{i32 786465, i64 0, i64 24}      ; [ DW_TAG_subrange_type ] [0, 23]
!177 = metadata !{i32 786445, metadata !54, metadata !103, metadata !"mt", i32 151, i64 288, i64 32, i64 1856, i32 0, metadata !178} ; [ DW_TAG_member ] [mt] [line 151, size 288, align 32, offset 1856] [from ]
!178 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 288, i64 32, i32 0, i32 0, metadata !179, metadata !209, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 288, align 32, offset 0] [from ]
!179 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !180} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from Table]
!180 = metadata !{i32 786451, metadata !59, null, metadata !"Table", i32 497, i64 256, i64 32, i32 0, i32 0, null, metadata !181, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [Table] [line 497, size 256, align 32, offset 0] [def] [from ]
!181 = metadata !{metadata !182, metadata !183, metadata !184, metadata !185, metadata !186, metadata !187, metadata !188, metadata !189, metadata !206, metadata !207, metadata !208}
!182 = metadata !{i32 786445, metadata !59, metadata !180, metadata !"next", i32 498, i64 32, i64 32, i64 0, i32 0, metadata !57} ; [ DW_TAG_member ] [next] [line 498, size 32, align 32, offset 0] [from ]
!183 = metadata !{i32 786445, metadata !59, metadata !180, metadata !"tt", i32 498, i64 8, i64 8, i64 32, i32 0, metadata !64} ; [ DW_TAG_member ] [tt] [line 498, size 8, align 8, offset 32] [from lu_byte]
!184 = metadata !{i32 786445, metadata !59, metadata !180, metadata !"marked", i32 498, i64 8, i64 8, i64 40, i32 0, metadata !64} ; [ DW_TAG_member ] [marked] [line 498, size 8, align 8, offset 40] [from lu_byte]
!185 = metadata !{i32 786445, metadata !59, metadata !180, metadata !"flags", i32 499, i64 8, i64 8, i64 48, i32 0, metadata !64} ; [ DW_TAG_member ] [flags] [line 499, size 8, align 8, offset 48] [from lu_byte]
!186 = metadata !{i32 786445, metadata !59, metadata !180, metadata !"lsizenode", i32 500, i64 8, i64 8, i64 56, i32 0, metadata !64} ; [ DW_TAG_member ] [lsizenode] [line 500, size 8, align 8, offset 56] [from lu_byte]
!187 = metadata !{i32 786445, metadata !59, metadata !180, metadata !"sizearray", i32 501, i64 32, i64 32, i64 64, i32 0, metadata !112} ; [ DW_TAG_member ] [sizearray] [line 501, size 32, align 32, offset 64] [from unsigned int]
!188 = metadata !{i32 786445, metadata !59, metadata !180, metadata !"array", i32 502, i64 32, i64 32, i64 96, i32 0, metadata !75} ; [ DW_TAG_member ] [array] [line 502, size 32, align 32, offset 96] [from ]
!189 = metadata !{i32 786445, metadata !59, metadata !180, metadata !"node", i32 503, i64 32, i64 32, i64 128, i32 0, metadata !190} ; [ DW_TAG_member ] [node] [line 503, size 32, align 32, offset 128] [from ]
!190 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !191} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from Node]
!191 = metadata !{i32 786454, metadata !59, null, metadata !"Node", i32 494, i64 0, i64 0, i64 0, i32 0, metadata !192} ; [ DW_TAG_typedef ] [Node] [line 494, size 0, align 0, offset 0] [from Node]
!192 = metadata !{i32 786451, metadata !59, null, metadata !"Node", i32 491, i64 256, i64 64, i32 0, i32 0, null, metadata !193, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [Node] [line 491, size 256, align 64, offset 0] [def] [from ]
!193 = metadata !{metadata !194, metadata !195}
!194 = metadata !{i32 786445, metadata !59, metadata !192, metadata !"i_val", i32 492, i64 128, i64 64, i64 0, i32 0, metadata !76} ; [ DW_TAG_member ] [i_val] [line 492, size 128, align 64, offset 0] [from TValue]
!195 = metadata !{i32 786445, metadata !59, metadata !192, metadata !"i_key", i32 493, i64 128, i64 64, i64 128, i32 0, metadata !196} ; [ DW_TAG_member ] [i_key] [line 493, size 128, align 64, offset 128] [from TKey]
!196 = metadata !{i32 786454, metadata !59, null, metadata !"TKey", i32 481, i64 0, i64 0, i64 0, i32 0, metadata !197} ; [ DW_TAG_typedef ] [TKey] [line 481, size 0, align 0, offset 0] [from TKey]
!197 = metadata !{i32 786455, metadata !59, null, metadata !"TKey", i32 475, i64 128, i64 64, i64 0, i32 0, null, metadata !198, i32 0, null, null, null} ; [ DW_TAG_union_type ] [TKey] [line 475, size 128, align 64, offset 0] [def] [from ]
!198 = metadata !{metadata !199, metadata !205}
!199 = metadata !{i32 786445, metadata !59, metadata !197, metadata !"nk", i32 479, i64 128, i64 64, i64 0, i32 0, metadata !200} ; [ DW_TAG_member ] [nk] [line 479, size 128, align 64, offset 0] [from ]
!200 = metadata !{i32 786451, metadata !59, metadata !197, metadata !"", i32 476, i64 128, i64 64, i32 0, i32 0, null, metadata !201, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 476, size 128, align 64, offset 0] [def] [from ]
!201 = metadata !{metadata !202, metadata !203, metadata !204}
!202 = metadata !{i32 786445, metadata !59, metadata !200, metadata !"value_", i32 477, i64 64, i64 64, i64 0, i32 0, metadata !80} ; [ DW_TAG_member ] [value_] [line 477, size 64, align 64, offset 0] [from Value]
!203 = metadata !{i32 786445, metadata !59, metadata !200, metadata !"tt_", i32 477, i64 32, i64 32, i64 64, i32 0, metadata !87} ; [ DW_TAG_member ] [tt_] [line 477, size 32, align 32, offset 64] [from int]
!204 = metadata !{i32 786445, metadata !59, metadata !200, metadata !"next", i32 478, i64 32, i64 32, i64 96, i32 0, metadata !87} ; [ DW_TAG_member ] [next] [line 478, size 32, align 32, offset 96] [from int]
!205 = metadata !{i32 786445, metadata !59, metadata !197, metadata !"tvk", i32 480, i64 128, i64 64, i64 0, i32 0, metadata !76} ; [ DW_TAG_member ] [tvk] [line 480, size 128, align 64, offset 0] [from TValue]
!206 = metadata !{i32 786445, metadata !59, metadata !180, metadata !"lastfree", i32 504, i64 32, i64 32, i64 160, i32 0, metadata !190} ; [ DW_TAG_member ] [lastfree] [line 504, size 32, align 32, offset 160] [from ]
!207 = metadata !{i32 786445, metadata !59, metadata !180, metadata !"metatable", i32 505, i64 32, i64 32, i64 192, i32 0, metadata !179} ; [ DW_TAG_member ] [metatable] [line 505, size 32, align 32, offset 192] [from ]
!208 = metadata !{i32 786445, metadata !59, metadata !180, metadata !"gclist", i32 506, i64 32, i64 32, i64 224, i32 0, metadata !57} ; [ DW_TAG_member ] [gclist] [line 506, size 32, align 32, offset 224] [from ]
!209 = metadata !{metadata !210}
!210 = metadata !{i32 786465, i64 0, i64 9}       ; [ DW_TAG_subrange_type ] [0, 8]
!211 = metadata !{i32 786445, metadata !54, metadata !103, metadata !"strcache", i32 152, i64 3392, i64 32, i64 2144, i32 0, metadata !212} ; [ DW_TAG_member ] [strcache] [line 152, size 3392, align 32, offset 2144] [from ]
!212 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 3392, i64 32, i32 0, i32 0, metadata !127, metadata !213, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 3392, align 32, offset 0] [from ]
!213 = metadata !{metadata !214, metadata !215}
!214 = metadata !{i32 786465, i64 0, i64 53}      ; [ DW_TAG_subrange_type ] [0, 52]
!215 = metadata !{i32 786465, i64 0, i64 2}       ; [ DW_TAG_subrange_type ] [0, 1]
!216 = metadata !{i32 786445, metadata !54, metadata !53, metadata !"ci", i32 165, i64 32, i64 32, i64 160, i32 0, metadata !217} ; [ DW_TAG_member ] [ci] [line 165, size 32, align 32, offset 160] [from ]
!217 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !218} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from CallInfo]
!218 = metadata !{i32 786454, metadata !54, null, metadata !"CallInfo", i32 92, i64 0, i64 0, i64 0, i32 0, metadata !219} ; [ DW_TAG_typedef ] [CallInfo] [line 92, size 0, align 0, offset 0] [from CallInfo]
!219 = metadata !{i32 786451, metadata !54, null, metadata !"CallInfo", i32 74, i64 288, i64 32, i32 0, i32 0, null, metadata !220, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [CallInfo] [line 74, size 288, align 32, offset 0] [def] [from ]
!220 = metadata !{metadata !221, metadata !222, metadata !223, metadata !225, metadata !226, metadata !250, metadata !251, metadata !253}
!221 = metadata !{i32 786445, metadata !54, metadata !219, metadata !"func", i32 75, i64 32, i64 32, i64 0, i32 0, metadata !74} ; [ DW_TAG_member ] [func] [line 75, size 32, align 32, offset 0] [from StkId]
!222 = metadata !{i32 786445, metadata !54, metadata !219, metadata !"top", i32 76, i64 32, i64 32, i64 32, i32 0, metadata !74} ; [ DW_TAG_member ] [top] [line 76, size 32, align 32, offset 32] [from StkId]
!223 = metadata !{i32 786445, metadata !54, metadata !219, metadata !"previous", i32 77, i64 32, i64 32, i64 64, i32 0, metadata !224} ; [ DW_TAG_member ] [previous] [line 77, size 32, align 32, offset 64] [from ]
!224 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !219} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from CallInfo]
!225 = metadata !{i32 786445, metadata !54, metadata !219, metadata !"next", i32 77, i64 32, i64 32, i64 96, i32 0, metadata !224} ; [ DW_TAG_member ] [next] [line 77, size 32, align 32, offset 96] [from ]
!226 = metadata !{i32 786445, metadata !54, metadata !219, metadata !"u", i32 88, i64 96, i64 32, i64 128, i32 0, metadata !227} ; [ DW_TAG_member ] [u] [line 88, size 96, align 32, offset 128] [from ]
!227 = metadata !{i32 786455, metadata !54, metadata !219, metadata !"", i32 78, i64 96, i64 32, i64 0, i32 0, null, metadata !228, i32 0, null, null, null} ; [ DW_TAG_union_type ] [line 78, size 96, align 32, offset 0] [def] [from ]
!228 = metadata !{metadata !229, metadata !237}
!229 = metadata !{i32 786445, metadata !54, metadata !227, metadata !"l", i32 82, i64 64, i64 32, i64 0, i32 0, metadata !230} ; [ DW_TAG_member ] [l] [line 82, size 64, align 32, offset 0] [from ]
!230 = metadata !{i32 786451, metadata !54, metadata !227, metadata !"", i32 79, i64 64, i64 32, i32 0, i32 0, null, metadata !231, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 79, size 64, align 32, offset 0] [def] [from ]
!231 = metadata !{metadata !232, metadata !233}
!232 = metadata !{i32 786445, metadata !54, metadata !230, metadata !"base", i32 80, i64 32, i64 32, i64 0, i32 0, metadata !74} ; [ DW_TAG_member ] [base] [line 80, size 32, align 32, offset 0] [from StkId]
!233 = metadata !{i32 786445, metadata !54, metadata !230, metadata !"savedpc", i32 81, i64 32, i64 32, i64 32, i32 0, metadata !234} ; [ DW_TAG_member ] [savedpc] [line 81, size 32, align 32, offset 32] [from ]
!234 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !235} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!235 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !236} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from Instruction]
!236 = metadata !{i32 786454, metadata !65, null, metadata !"Instruction", i32 163, i64 0, i64 0, i64 0, i32 0, metadata !112} ; [ DW_TAG_typedef ] [Instruction] [line 163, size 0, align 0, offset 0] [from unsigned int]
!237 = metadata !{i32 786445, metadata !54, metadata !227, metadata !"c", i32 87, i64 96, i64 32, i64 0, i32 0, metadata !238} ; [ DW_TAG_member ] [c] [line 87, size 96, align 32, offset 0] [from ]
!238 = metadata !{i32 786451, metadata !54, metadata !227, metadata !"", i32 83, i64 96, i64 32, i32 0, i32 0, null, metadata !239, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 83, size 96, align 32, offset 0] [def] [from ]
!239 = metadata !{metadata !240, metadata !248, metadata !249}
!240 = metadata !{i32 786445, metadata !54, metadata !238, metadata !"k", i32 84, i64 32, i64 32, i64 0, i32 0, metadata !241} ; [ DW_TAG_member ] [k] [line 84, size 32, align 32, offset 0] [from lua_KFunction]
!241 = metadata !{i32 786454, metadata !52, null, metadata !"lua_KFunction", i32 110, i64 0, i64 0, i64 0, i32 0, metadata !242} ; [ DW_TAG_typedef ] [lua_KFunction] [line 110, size 0, align 0, offset 0] [from ]
!242 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !243} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!243 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !244, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!244 = metadata !{metadata !87, metadata !50, metadata !87, metadata !245}
!245 = metadata !{i32 786454, metadata !52, null, metadata !"lua_KContext", i32 99, i64 0, i64 0, i64 0, i32 0, metadata !246} ; [ DW_TAG_typedef ] [lua_KContext] [line 99, size 0, align 0, offset 0] [from intptr_t]
!246 = metadata !{i32 786454, metadata !247, null, metadata !"intptr_t", i32 125, i64 0, i64 0, i64 0, i32 0, metadata !87} ; [ DW_TAG_typedef ] [intptr_t] [line 125, size 0, align 0, offset 0] [from int]
!247 = metadata !{metadata !"D:/Xilinx/SDx/2016.3/SDK/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include\5Cstdint.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!248 = metadata !{i32 786445, metadata !54, metadata !238, metadata !"old_errfunc", i32 85, i64 32, i64 32, i64 32, i32 0, metadata !116} ; [ DW_TAG_member ] [old_errfunc] [line 85, size 32, align 32, offset 32] [from ptrdiff_t]
!249 = metadata !{i32 786445, metadata !54, metadata !238, metadata !"ctx", i32 86, i64 32, i64 32, i64 64, i32 0, metadata !245} ; [ DW_TAG_member ] [ctx] [line 86, size 32, align 32, offset 64] [from lua_KContext]
!250 = metadata !{i32 786445, metadata !54, metadata !219, metadata !"extra", i32 89, i64 32, i64 32, i64 224, i32 0, metadata !116} ; [ DW_TAG_member ] [extra] [line 89, size 32, align 32, offset 224] [from ptrdiff_t]
!251 = metadata !{i32 786445, metadata !54, metadata !219, metadata !"nresults", i32 90, i64 16, i64 16, i64 256, i32 0, metadata !252} ; [ DW_TAG_member ] [nresults] [line 90, size 16, align 16, offset 256] [from short]
!252 = metadata !{i32 786468, null, null, metadata !"short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [short] [line 0, size 16, align 16, offset 0, enc DW_ATE_signed]
!253 = metadata !{i32 786445, metadata !54, metadata !219, metadata !"callstatus", i32 91, i64 8, i64 8, i64 272, i32 0, metadata !64} ; [ DW_TAG_member ] [callstatus] [line 91, size 8, align 8, offset 272] [from lu_byte]
!254 = metadata !{i32 786445, metadata !54, metadata !53, metadata !"oldpc", i32 166, i64 32, i64 32, i64 192, i32 0, metadata !234} ; [ DW_TAG_member ] [oldpc] [line 166, size 32, align 32, offset 192] [from ]
!255 = metadata !{i32 786445, metadata !54, metadata !53, metadata !"stack_last", i32 167, i64 32, i64 32, i64 224, i32 0, metadata !74} ; [ DW_TAG_member ] [stack_last] [line 167, size 32, align 32, offset 224] [from StkId]
!256 = metadata !{i32 786445, metadata !54, metadata !53, metadata !"stack", i32 168, i64 32, i64 32, i64 256, i32 0, metadata !74} ; [ DW_TAG_member ] [stack] [line 168, size 32, align 32, offset 256] [from StkId]
!257 = metadata !{i32 786445, metadata !54, metadata !53, metadata !"openupval", i32 169, i64 32, i64 32, i64 288, i32 0, metadata !258} ; [ DW_TAG_member ] [openupval] [line 169, size 32, align 32, offset 288] [from ]
!258 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !259} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from UpVal]
!259 = metadata !{i32 786454, metadata !59, null, metadata !"UpVal", i32 436, i64 0, i64 0, i64 0, i32 0, metadata !260} ; [ DW_TAG_typedef ] [UpVal] [line 436, size 0, align 0, offset 0] [from UpVal]
!260 = metadata !{i32 786451, metadata !59, null, metadata !"UpVal", i32 436, i64 0, i64 0, i32 0, i32 4, null, null, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [UpVal] [line 436, size 0, align 0, offset 0] [decl] [from ]
!261 = metadata !{i32 786445, metadata !54, metadata !53, metadata !"gclist", i32 170, i64 32, i64 32, i64 320, i32 0, metadata !57} ; [ DW_TAG_member ] [gclist] [line 170, size 32, align 32, offset 320] [from ]
!262 = metadata !{i32 786445, metadata !54, metadata !53, metadata !"twups", i32 171, i64 32, i64 32, i64 352, i32 0, metadata !163} ; [ DW_TAG_member ] [twups] [line 171, size 32, align 32, offset 352] [from ]
!263 = metadata !{i32 786445, metadata !54, metadata !53, metadata !"errorJmp", i32 172, i64 32, i64 32, i64 384, i32 0, metadata !264} ; [ DW_TAG_member ] [errorJmp] [line 172, size 32, align 32, offset 384] [from ]
!264 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !265} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from lua_longjmp]
!265 = metadata !{i32 786451, metadata !54, null, metadata !"lua_longjmp", i32 33, i64 0, i64 0, i32 0, i32 4, null, null, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [lua_longjmp] [line 33, size 0, align 0, offset 0] [decl] [from ]
!266 = metadata !{i32 786445, metadata !54, metadata !53, metadata !"base_ci", i32 173, i64 288, i64 32, i64 416, i32 0, metadata !218} ; [ DW_TAG_member ] [base_ci] [line 173, size 288, align 32, offset 416] [from CallInfo]
!267 = metadata !{i32 786445, metadata !54, metadata !53, metadata !"hook", i32 174, i64 32, i64 32, i64 704, i32 0, metadata !268} ; [ DW_TAG_member ] [hook] [line 174, size 32, align 32, offset 704] [from ]
!268 = metadata !{i32 786485, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !269} ; [ DW_TAG_volatile_type ] [line 0, size 0, align 0, offset 0] [from lua_Hook]
!269 = metadata !{i32 786454, metadata !52, null, metadata !"lua_Hook", i32 421, i64 0, i64 0, i64 0, i32 0, metadata !270} ; [ DW_TAG_typedef ] [lua_Hook] [line 421, size 0, align 0, offset 0] [from ]
!270 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !271} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!271 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !272, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!272 = metadata !{null, metadata !50, metadata !273}
!273 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !274} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from lua_Debug]
!274 = metadata !{i32 786454, metadata !52, null, metadata !"lua_Debug", i32 417, i64 0, i64 0, i64 0, i32 0, metadata !275} ; [ DW_TAG_typedef ] [lua_Debug] [line 417, size 0, align 0, offset 0] [from lua_Debug]
!275 = metadata !{i32 786451, metadata !52, null, metadata !"lua_Debug", i32 441, i64 800, i64 32, i32 0, i32 0, null, metadata !276, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [lua_Debug] [line 441, size 800, align 32, offset 0] [def] [from ]
!276 = metadata !{metadata !277, metadata !278, metadata !282, metadata !283, metadata !284, metadata !285, metadata !286, metadata !287, metadata !288, metadata !289, metadata !290, metadata !291, metadata !292, metadata !296}
!277 = metadata !{i32 786445, metadata !52, metadata !275, metadata !"event", i32 442, i64 32, i64 32, i64 0, i32 0, metadata !87} ; [ DW_TAG_member ] [event] [line 442, size 32, align 32, offset 0] [from int]
!278 = metadata !{i32 786445, metadata !52, metadata !275, metadata !"name", i32 443, i64 32, i64 32, i64 32, i32 0, metadata !279} ; [ DW_TAG_member ] [name] [line 443, size 32, align 32, offset 32] [from ]
!279 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !280} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!280 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !281} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!281 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!282 = metadata !{i32 786445, metadata !52, metadata !275, metadata !"namewhat", i32 444, i64 32, i64 32, i64 64, i32 0, metadata !279} ; [ DW_TAG_member ] [namewhat] [line 444, size 32, align 32, offset 64] [from ]
!283 = metadata !{i32 786445, metadata !52, metadata !275, metadata !"what", i32 445, i64 32, i64 32, i64 96, i32 0, metadata !279} ; [ DW_TAG_member ] [what] [line 445, size 32, align 32, offset 96] [from ]
!284 = metadata !{i32 786445, metadata !52, metadata !275, metadata !"source", i32 446, i64 32, i64 32, i64 128, i32 0, metadata !279} ; [ DW_TAG_member ] [source] [line 446, size 32, align 32, offset 128] [from ]
!285 = metadata !{i32 786445, metadata !52, metadata !275, metadata !"currentline", i32 447, i64 32, i64 32, i64 160, i32 0, metadata !87} ; [ DW_TAG_member ] [currentline] [line 447, size 32, align 32, offset 160] [from int]
!286 = metadata !{i32 786445, metadata !52, metadata !275, metadata !"linedefined", i32 448, i64 32, i64 32, i64 192, i32 0, metadata !87} ; [ DW_TAG_member ] [linedefined] [line 448, size 32, align 32, offset 192] [from int]
!287 = metadata !{i32 786445, metadata !52, metadata !275, metadata !"lastlinedefined", i32 449, i64 32, i64 32, i64 224, i32 0, metadata !87} ; [ DW_TAG_member ] [lastlinedefined] [line 449, size 32, align 32, offset 224] [from int]
!288 = metadata !{i32 786445, metadata !52, metadata !275, metadata !"nups", i32 450, i64 8, i64 8, i64 256, i32 0, metadata !66} ; [ DW_TAG_member ] [nups] [line 450, size 8, align 8, offset 256] [from unsigned char]
!289 = metadata !{i32 786445, metadata !52, metadata !275, metadata !"nparams", i32 451, i64 8, i64 8, i64 264, i32 0, metadata !66} ; [ DW_TAG_member ] [nparams] [line 451, size 8, align 8, offset 264] [from unsigned char]
!290 = metadata !{i32 786445, metadata !52, metadata !275, metadata !"isvararg", i32 452, i64 8, i64 8, i64 272, i32 0, metadata !281} ; [ DW_TAG_member ] [isvararg] [line 452, size 8, align 8, offset 272] [from char]
!291 = metadata !{i32 786445, metadata !52, metadata !275, metadata !"istailcall", i32 453, i64 8, i64 8, i64 280, i32 0, metadata !281} ; [ DW_TAG_member ] [istailcall] [line 453, size 8, align 8, offset 280] [from char]
!292 = metadata !{i32 786445, metadata !52, metadata !275, metadata !"short_src", i32 454, i64 480, i64 8, i64 288, i32 0, metadata !293} ; [ DW_TAG_member ] [short_src] [line 454, size 480, align 8, offset 288] [from ]
!293 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 480, i64 8, i32 0, i32 0, metadata !281, metadata !294, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 480, align 8, offset 0] [from char]
!294 = metadata !{metadata !295}
!295 = metadata !{i32 786465, i64 0, i64 60}      ; [ DW_TAG_subrange_type ] [0, 59]
!296 = metadata !{i32 786445, metadata !52, metadata !275, metadata !"i_ci", i32 456, i64 32, i64 32, i64 768, i32 0, metadata !224} ; [ DW_TAG_member ] [i_ci] [line 456, size 32, align 32, offset 768] [from ]
!297 = metadata !{i32 786445, metadata !54, metadata !53, metadata !"errfunc", i32 175, i64 32, i64 32, i64 736, i32 0, metadata !116} ; [ DW_TAG_member ] [errfunc] [line 175, size 32, align 32, offset 736] [from ptrdiff_t]
!298 = metadata !{i32 786445, metadata !54, metadata !53, metadata !"stacksize", i32 176, i64 32, i64 32, i64 768, i32 0, metadata !87} ; [ DW_TAG_member ] [stacksize] [line 176, size 32, align 32, offset 768] [from int]
!299 = metadata !{i32 786445, metadata !54, metadata !53, metadata !"basehookcount", i32 177, i64 32, i64 32, i64 800, i32 0, metadata !87} ; [ DW_TAG_member ] [basehookcount] [line 177, size 32, align 32, offset 800] [from int]
!300 = metadata !{i32 786445, metadata !54, metadata !53, metadata !"hookcount", i32 178, i64 32, i64 32, i64 832, i32 0, metadata !87} ; [ DW_TAG_member ] [hookcount] [line 178, size 32, align 32, offset 832] [from int]
!301 = metadata !{i32 786445, metadata !54, metadata !53, metadata !"nny", i32 179, i64 16, i64 16, i64 864, i32 0, metadata !71} ; [ DW_TAG_member ] [nny] [line 179, size 16, align 16, offset 864] [from unsigned short]
!302 = metadata !{i32 786445, metadata !54, metadata !53, metadata !"nCcalls", i32 180, i64 16, i64 16, i64 880, i32 0, metadata !71} ; [ DW_TAG_member ] [nCcalls] [line 180, size 16, align 16, offset 880] [from unsigned short]
!303 = metadata !{i32 786445, metadata !54, metadata !53, metadata !"hookmask", i32 181, i64 32, i64 32, i64 896, i32 0, metadata !304} ; [ DW_TAG_member ] [hookmask] [line 181, size 32, align 32, offset 896] [from sig_atomic_t]
!304 = metadata !{i32 786454, metadata !305, null, metadata !"sig_atomic_t", i32 40, i64 0, i64 0, i64 0, i32 0, metadata !306} ; [ DW_TAG_typedef ] [sig_atomic_t] [line 40, size 0, align 0, offset 0] [from __sig_atomic_t]
!305 = metadata !{metadata !"D:/Xilinx/SDx/2016.3/SDK/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include\5Csignal.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!306 = metadata !{i32 786454, metadata !307, null, metadata !"__sig_atomic_t", i32 22, i64 0, i64 0, i64 0, i32 0, metadata !87} ; [ DW_TAG_typedef ] [__sig_atomic_t] [line 22, size 0, align 0, offset 0] [from int]
!307 = metadata !{metadata !"D:/Xilinx/SDx/2016.3/SDK/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include\5Cbits/sigset.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!308 = metadata !{i32 786445, metadata !54, metadata !53, metadata !"allowhook", i32 182, i64 8, i64 8, i64 928, i32 0, metadata !64} ; [ DW_TAG_member ] [allowhook] [line 182, size 8, align 8, offset 928] [from lu_byte]
!309 = metadata !{i32 786478, metadata !46, metadata !47, metadata !"luaX_token2str", metadata !"luaX_token2str", metadata !"", i32 82, metadata !310, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (%struct.LexState*, i32)* @luaX_token2str, null, null, metadata !43, i32 82} ; [ DW_TAG_subprogram ] [line 82] [def] [luaX_token2str]
!310 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !311, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!311 = metadata !{metadata !279, metadata !312, metadata !87}
!312 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !313} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from LexState]
!313 = metadata !{i32 786454, metadata !4, null, metadata !"LexState", i32 72, i64 0, i64 0, i64 0, i32 0, metadata !314} ; [ DW_TAG_typedef ] [LexState] [line 72, size 0, align 0, offset 0] [from LexState]
!314 = metadata !{i32 786451, metadata !4, null, metadata !"LexState", i32 58, i64 640, i64 64, i32 0, i32 0, null, metadata !315, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [LexState] [line 58, size 640, align 64, offset 0] [def] [from ]
!315 = metadata !{metadata !316, metadata !317, metadata !318, metadata !319, metadata !331, metadata !332, metadata !412, metadata !413, metadata !429, metadata !438, metadata !441, metadata !472, metadata !473}
!316 = metadata !{i32 786445, metadata !4, metadata !314, metadata !"current", i32 59, i64 32, i64 32, i64 0, i32 0, metadata !87} ; [ DW_TAG_member ] [current] [line 59, size 32, align 32, offset 0] [from int]
!317 = metadata !{i32 786445, metadata !4, metadata !314, metadata !"linenumber", i32 60, i64 32, i64 32, i64 32, i32 0, metadata !87} ; [ DW_TAG_member ] [linenumber] [line 60, size 32, align 32, offset 32] [from int]
!318 = metadata !{i32 786445, metadata !4, metadata !314, metadata !"lastline", i32 61, i64 32, i64 32, i64 64, i32 0, metadata !87} ; [ DW_TAG_member ] [lastline] [line 61, size 32, align 32, offset 64] [from int]
!319 = metadata !{i32 786445, metadata !4, metadata !314, metadata !"t", i32 62, i64 128, i64 64, i64 128, i32 0, metadata !320} ; [ DW_TAG_member ] [t] [line 62, size 128, align 64, offset 128] [from Token]
!320 = metadata !{i32 786454, metadata !4, null, metadata !"Token", i32 53, i64 0, i64 0, i64 0, i32 0, metadata !321} ; [ DW_TAG_typedef ] [Token] [line 53, size 0, align 0, offset 0] [from Token]
!321 = metadata !{i32 786451, metadata !4, null, metadata !"Token", i32 50, i64 128, i64 64, i32 0, i32 0, null, metadata !322, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [Token] [line 50, size 128, align 64, offset 0] [def] [from ]
!322 = metadata !{metadata !323, metadata !324}
!323 = metadata !{i32 786445, metadata !4, metadata !321, metadata !"token", i32 51, i64 32, i64 32, i64 0, i32 0, metadata !87} ; [ DW_TAG_member ] [token] [line 51, size 32, align 32, offset 0] [from int]
!324 = metadata !{i32 786445, metadata !4, metadata !321, metadata !"seminfo", i32 52, i64 64, i64 64, i64 64, i32 0, metadata !325} ; [ DW_TAG_member ] [seminfo] [line 52, size 64, align 64, offset 64] [from SemInfo]
!325 = metadata !{i32 786454, metadata !4, null, metadata !"SemInfo", i32 47, i64 0, i64 0, i64 0, i32 0, metadata !326} ; [ DW_TAG_typedef ] [SemInfo] [line 47, size 0, align 0, offset 0] [from ]
!326 = metadata !{i32 786455, metadata !4, null, metadata !"", i32 43, i64 64, i64 64, i64 0, i32 0, null, metadata !327, i32 0, null, null, null} ; [ DW_TAG_union_type ] [line 43, size 64, align 64, offset 0] [def] [from ]
!327 = metadata !{metadata !328, metadata !329, metadata !330}
!328 = metadata !{i32 786445, metadata !4, metadata !326, metadata !"r", i32 44, i64 64, i64 64, i64 0, i32 0, metadata !97} ; [ DW_TAG_member ] [r] [line 44, size 64, align 64, offset 0] [from lua_Number]
!329 = metadata !{i32 786445, metadata !4, metadata !326, metadata !"i", i32 45, i64 64, i64 64, i64 0, i32 0, metadata !94} ; [ DW_TAG_member ] [i] [line 45, size 64, align 64, offset 0] [from lua_Integer]
!330 = metadata !{i32 786445, metadata !4, metadata !326, metadata !"ts", i32 46, i64 32, i64 32, i64 0, i32 0, metadata !127} ; [ DW_TAG_member ] [ts] [line 46, size 32, align 32, offset 0] [from ]
!331 = metadata !{i32 786445, metadata !4, metadata !314, metadata !"lookahead", i32 63, i64 128, i64 64, i64 256, i32 0, metadata !320} ; [ DW_TAG_member ] [lookahead] [line 63, size 128, align 64, offset 256] [from Token]
!332 = metadata !{i32 786445, metadata !4, metadata !314, metadata !"fs", i32 64, i64 32, i64 32, i64 384, i32 0, metadata !333} ; [ DW_TAG_member ] [fs] [line 64, size 32, align 32, offset 384] [from ]
!333 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !334} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from FuncState]
!334 = metadata !{i32 786451, metadata !335, null, metadata !"FuncState", i32 111, i64 384, i64 32, i32 0, i32 0, null, metadata !336, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [FuncState] [line 111, size 384, align 32, offset 0] [def] [from ]
!335 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lparser.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!336 = metadata !{metadata !337, metadata !396, metadata !397, metadata !399, metadata !402, metadata !403, metadata !404, metadata !405, metadata !406, metadata !407, metadata !408, metadata !409, metadata !410, metadata !411}
!337 = metadata !{i32 786445, metadata !335, metadata !334, metadata !"f", i32 112, i64 32, i64 32, i64 0, i32 0, metadata !338} ; [ DW_TAG_member ] [f] [line 112, size 32, align 32, offset 0] [from ]
!338 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !339} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from Proto]
!339 = metadata !{i32 786454, metadata !59, null, metadata !"Proto", i32 429, i64 0, i64 0, i64 0, i32 0, metadata !340} ; [ DW_TAG_typedef ] [Proto] [line 429, size 0, align 0, offset 0] [from Proto]
!340 = metadata !{i32 786451, metadata !59, null, metadata !"Proto", i32 407, i64 640, i64 32, i32 0, i32 0, null, metadata !341, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [Proto] [line 407, size 640, align 32, offset 0] [def] [from ]
!341 = metadata !{metadata !342, metadata !343, metadata !344, metadata !345, metadata !346, metadata !347, metadata !348, metadata !349, metadata !350, metadata !351, metadata !352, metadata !353, metadata !354, metadata !355, metadata !356, metadata !357, metadata !359, metadata !362, metadata !364, metadata !372, metadata !380, metadata !394, metadata !395}
!342 = metadata !{i32 786445, metadata !59, metadata !340, metadata !"next", i32 408, i64 32, i64 32, i64 0, i32 0, metadata !57} ; [ DW_TAG_member ] [next] [line 408, size 32, align 32, offset 0] [from ]
!343 = metadata !{i32 786445, metadata !59, metadata !340, metadata !"tt", i32 408, i64 8, i64 8, i64 32, i32 0, metadata !64} ; [ DW_TAG_member ] [tt] [line 408, size 8, align 8, offset 32] [from lu_byte]
!344 = metadata !{i32 786445, metadata !59, metadata !340, metadata !"marked", i32 408, i64 8, i64 8, i64 40, i32 0, metadata !64} ; [ DW_TAG_member ] [marked] [line 408, size 8, align 8, offset 40] [from lu_byte]
!345 = metadata !{i32 786445, metadata !59, metadata !340, metadata !"numparams", i32 409, i64 8, i64 8, i64 48, i32 0, metadata !64} ; [ DW_TAG_member ] [numparams] [line 409, size 8, align 8, offset 48] [from lu_byte]
!346 = metadata !{i32 786445, metadata !59, metadata !340, metadata !"is_vararg", i32 410, i64 8, i64 8, i64 56, i32 0, metadata !64} ; [ DW_TAG_member ] [is_vararg] [line 410, size 8, align 8, offset 56] [from lu_byte]
!347 = metadata !{i32 786445, metadata !59, metadata !340, metadata !"maxstacksize", i32 411, i64 8, i64 8, i64 64, i32 0, metadata !64} ; [ DW_TAG_member ] [maxstacksize] [line 411, size 8, align 8, offset 64] [from lu_byte]
!348 = metadata !{i32 786445, metadata !59, metadata !340, metadata !"sizeupvalues", i32 412, i64 32, i64 32, i64 96, i32 0, metadata !87} ; [ DW_TAG_member ] [sizeupvalues] [line 412, size 32, align 32, offset 96] [from int]
!349 = metadata !{i32 786445, metadata !59, metadata !340, metadata !"sizek", i32 413, i64 32, i64 32, i64 128, i32 0, metadata !87} ; [ DW_TAG_member ] [sizek] [line 413, size 32, align 32, offset 128] [from int]
!350 = metadata !{i32 786445, metadata !59, metadata !340, metadata !"sizecode", i32 414, i64 32, i64 32, i64 160, i32 0, metadata !87} ; [ DW_TAG_member ] [sizecode] [line 414, size 32, align 32, offset 160] [from int]
!351 = metadata !{i32 786445, metadata !59, metadata !340, metadata !"sizelineinfo", i32 415, i64 32, i64 32, i64 192, i32 0, metadata !87} ; [ DW_TAG_member ] [sizelineinfo] [line 415, size 32, align 32, offset 192] [from int]
!352 = metadata !{i32 786445, metadata !59, metadata !340, metadata !"sizep", i32 416, i64 32, i64 32, i64 224, i32 0, metadata !87} ; [ DW_TAG_member ] [sizep] [line 416, size 32, align 32, offset 224] [from int]
!353 = metadata !{i32 786445, metadata !59, metadata !340, metadata !"sizelocvars", i32 417, i64 32, i64 32, i64 256, i32 0, metadata !87} ; [ DW_TAG_member ] [sizelocvars] [line 417, size 32, align 32, offset 256] [from int]
!354 = metadata !{i32 786445, metadata !59, metadata !340, metadata !"linedefined", i32 418, i64 32, i64 32, i64 288, i32 0, metadata !87} ; [ DW_TAG_member ] [linedefined] [line 418, size 32, align 32, offset 288] [from int]
!355 = metadata !{i32 786445, metadata !59, metadata !340, metadata !"lastlinedefined", i32 419, i64 32, i64 32, i64 320, i32 0, metadata !87} ; [ DW_TAG_member ] [lastlinedefined] [line 419, size 32, align 32, offset 320] [from int]
!356 = metadata !{i32 786445, metadata !59, metadata !340, metadata !"k", i32 420, i64 32, i64 32, i64 352, i32 0, metadata !75} ; [ DW_TAG_member ] [k] [line 420, size 32, align 32, offset 352] [from ]
!357 = metadata !{i32 786445, metadata !59, metadata !340, metadata !"code", i32 421, i64 32, i64 32, i64 384, i32 0, metadata !358} ; [ DW_TAG_member ] [code] [line 421, size 32, align 32, offset 384] [from ]
!358 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !236} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from Instruction]
!359 = metadata !{i32 786445, metadata !59, metadata !340, metadata !"p", i32 422, i64 32, i64 32, i64 416, i32 0, metadata !360} ; [ DW_TAG_member ] [p] [line 422, size 32, align 32, offset 416] [from ]
!360 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !361} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!361 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !340} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from Proto]
!362 = metadata !{i32 786445, metadata !59, metadata !340, metadata !"lineinfo", i32 423, i64 32, i64 32, i64 448, i32 0, metadata !363} ; [ DW_TAG_member ] [lineinfo] [line 423, size 32, align 32, offset 448] [from ]
!363 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !87} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from int]
!364 = metadata !{i32 786445, metadata !59, metadata !340, metadata !"locvars", i32 424, i64 32, i64 32, i64 480, i32 0, metadata !365} ; [ DW_TAG_member ] [locvars] [line 424, size 32, align 32, offset 480] [from ]
!365 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !366} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from LocVar]
!366 = metadata !{i32 786454, metadata !59, null, metadata !"LocVar", i32 401, i64 0, i64 0, i64 0, i32 0, metadata !367} ; [ DW_TAG_typedef ] [LocVar] [line 401, size 0, align 0, offset 0] [from LocVar]
!367 = metadata !{i32 786451, metadata !59, null, metadata !"LocVar", i32 397, i64 96, i64 32, i32 0, i32 0, null, metadata !368, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [LocVar] [line 397, size 96, align 32, offset 0] [def] [from ]
!368 = metadata !{metadata !369, metadata !370, metadata !371}
!369 = metadata !{i32 786445, metadata !59, metadata !367, metadata !"varname", i32 398, i64 32, i64 32, i64 0, i32 0, metadata !127} ; [ DW_TAG_member ] [varname] [line 398, size 32, align 32, offset 0] [from ]
!370 = metadata !{i32 786445, metadata !59, metadata !367, metadata !"startpc", i32 399, i64 32, i64 32, i64 32, i32 0, metadata !87} ; [ DW_TAG_member ] [startpc] [line 399, size 32, align 32, offset 32] [from int]
!371 = metadata !{i32 786445, metadata !59, metadata !367, metadata !"endpc", i32 400, i64 32, i64 32, i64 64, i32 0, metadata !87} ; [ DW_TAG_member ] [endpc] [line 400, size 32, align 32, offset 64] [from int]
!372 = metadata !{i32 786445, metadata !59, metadata !340, metadata !"upvalues", i32 425, i64 32, i64 32, i64 512, i32 0, metadata !373} ; [ DW_TAG_member ] [upvalues] [line 425, size 32, align 32, offset 512] [from ]
!373 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !374} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from Upvaldesc]
!374 = metadata !{i32 786454, metadata !59, null, metadata !"Upvaldesc", i32 390, i64 0, i64 0, i64 0, i32 0, metadata !375} ; [ DW_TAG_typedef ] [Upvaldesc] [line 390, size 0, align 0, offset 0] [from Upvaldesc]
!375 = metadata !{i32 786451, metadata !59, null, metadata !"Upvaldesc", i32 386, i64 64, i64 32, i32 0, i32 0, null, metadata !376, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [Upvaldesc] [line 386, size 64, align 32, offset 0] [def] [from ]
!376 = metadata !{metadata !377, metadata !378, metadata !379}
!377 = metadata !{i32 786445, metadata !59, metadata !375, metadata !"name", i32 387, i64 32, i64 32, i64 0, i32 0, metadata !127} ; [ DW_TAG_member ] [name] [line 387, size 32, align 32, offset 0] [from ]
!378 = metadata !{i32 786445, metadata !59, metadata !375, metadata !"instack", i32 388, i64 8, i64 8, i64 32, i32 0, metadata !64} ; [ DW_TAG_member ] [instack] [line 388, size 8, align 8, offset 32] [from lu_byte]
!379 = metadata !{i32 786445, metadata !59, metadata !375, metadata !"idx", i32 389, i64 8, i64 8, i64 40, i32 0, metadata !64} ; [ DW_TAG_member ] [idx] [line 389, size 8, align 8, offset 40] [from lu_byte]
!380 = metadata !{i32 786445, metadata !59, metadata !340, metadata !"cache", i32 426, i64 32, i64 32, i64 544, i32 0, metadata !381} ; [ DW_TAG_member ] [cache] [line 426, size 32, align 32, offset 544] [from ]
!381 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !382} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from LClosure]
!382 = metadata !{i32 786451, metadata !59, null, metadata !"LClosure", i32 453, i64 160, i64 32, i32 0, i32 0, null, metadata !383, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [LClosure] [line 453, size 160, align 32, offset 0] [def] [from ]
!383 = metadata !{metadata !384, metadata !385, metadata !386, metadata !387, metadata !388, metadata !389, metadata !390}
!384 = metadata !{i32 786445, metadata !59, metadata !382, metadata !"next", i32 454, i64 32, i64 32, i64 0, i32 0, metadata !57} ; [ DW_TAG_member ] [next] [line 454, size 32, align 32, offset 0] [from ]
!385 = metadata !{i32 786445, metadata !59, metadata !382, metadata !"tt", i32 454, i64 8, i64 8, i64 32, i32 0, metadata !64} ; [ DW_TAG_member ] [tt] [line 454, size 8, align 8, offset 32] [from lu_byte]
!386 = metadata !{i32 786445, metadata !59, metadata !382, metadata !"marked", i32 454, i64 8, i64 8, i64 40, i32 0, metadata !64} ; [ DW_TAG_member ] [marked] [line 454, size 8, align 8, offset 40] [from lu_byte]
!387 = metadata !{i32 786445, metadata !59, metadata !382, metadata !"nupvalues", i32 454, i64 8, i64 8, i64 48, i32 0, metadata !64} ; [ DW_TAG_member ] [nupvalues] [line 454, size 8, align 8, offset 48] [from lu_byte]
!388 = metadata !{i32 786445, metadata !59, metadata !382, metadata !"gclist", i32 454, i64 32, i64 32, i64 64, i32 0, metadata !57} ; [ DW_TAG_member ] [gclist] [line 454, size 32, align 32, offset 64] [from ]
!389 = metadata !{i32 786445, metadata !59, metadata !382, metadata !"p", i32 455, i64 32, i64 32, i64 96, i32 0, metadata !361} ; [ DW_TAG_member ] [p] [line 455, size 32, align 32, offset 96] [from ]
!390 = metadata !{i32 786445, metadata !59, metadata !382, metadata !"upvals", i32 456, i64 32, i64 32, i64 128, i32 0, metadata !391} ; [ DW_TAG_member ] [upvals] [line 456, size 32, align 32, offset 128] [from ]
!391 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 32, i64 32, i32 0, i32 0, metadata !258, metadata !392, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 32, align 32, offset 0] [from ]
!392 = metadata !{metadata !393}
!393 = metadata !{i32 786465, i64 0, i64 1}       ; [ DW_TAG_subrange_type ] [0, 0]
!394 = metadata !{i32 786445, metadata !59, metadata !340, metadata !"source", i32 427, i64 32, i64 32, i64 576, i32 0, metadata !127} ; [ DW_TAG_member ] [source] [line 427, size 32, align 32, offset 576] [from ]
!395 = metadata !{i32 786445, metadata !59, metadata !340, metadata !"gclist", i32 428, i64 32, i64 32, i64 608, i32 0, metadata !57} ; [ DW_TAG_member ] [gclist] [line 428, size 32, align 32, offset 608] [from ]
!396 = metadata !{i32 786445, metadata !335, metadata !334, metadata !"prev", i32 113, i64 32, i64 32, i64 32, i32 0, metadata !333} ; [ DW_TAG_member ] [prev] [line 113, size 32, align 32, offset 32] [from ]
!397 = metadata !{i32 786445, metadata !335, metadata !334, metadata !"ls", i32 114, i64 32, i64 32, i64 64, i32 0, metadata !398} ; [ DW_TAG_member ] [ls] [line 114, size 32, align 32, offset 64] [from ]
!398 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !314} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from LexState]
!399 = metadata !{i32 786445, metadata !335, metadata !334, metadata !"bl", i32 115, i64 32, i64 32, i64 96, i32 0, metadata !400} ; [ DW_TAG_member ] [bl] [line 115, size 32, align 32, offset 96] [from ]
!400 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !401} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from BlockCnt]
!401 = metadata !{i32 786451, metadata !335, null, metadata !"BlockCnt", i32 107, i64 0, i64 0, i32 0, i32 4, null, null, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [BlockCnt] [line 107, size 0, align 0, offset 0] [decl] [from ]
!402 = metadata !{i32 786445, metadata !335, metadata !334, metadata !"pc", i32 116, i64 32, i64 32, i64 128, i32 0, metadata !87} ; [ DW_TAG_member ] [pc] [line 116, size 32, align 32, offset 128] [from int]
!403 = metadata !{i32 786445, metadata !335, metadata !334, metadata !"lasttarget", i32 117, i64 32, i64 32, i64 160, i32 0, metadata !87} ; [ DW_TAG_member ] [lasttarget] [line 117, size 32, align 32, offset 160] [from int]
!404 = metadata !{i32 786445, metadata !335, metadata !334, metadata !"jpc", i32 118, i64 32, i64 32, i64 192, i32 0, metadata !87} ; [ DW_TAG_member ] [jpc] [line 118, size 32, align 32, offset 192] [from int]
!405 = metadata !{i32 786445, metadata !335, metadata !334, metadata !"nk", i32 119, i64 32, i64 32, i64 224, i32 0, metadata !87} ; [ DW_TAG_member ] [nk] [line 119, size 32, align 32, offset 224] [from int]
!406 = metadata !{i32 786445, metadata !335, metadata !334, metadata !"np", i32 120, i64 32, i64 32, i64 256, i32 0, metadata !87} ; [ DW_TAG_member ] [np] [line 120, size 32, align 32, offset 256] [from int]
!407 = metadata !{i32 786445, metadata !335, metadata !334, metadata !"firstlocal", i32 121, i64 32, i64 32, i64 288, i32 0, metadata !87} ; [ DW_TAG_member ] [firstlocal] [line 121, size 32, align 32, offset 288] [from int]
!408 = metadata !{i32 786445, metadata !335, metadata !334, metadata !"nlocvars", i32 122, i64 16, i64 16, i64 320, i32 0, metadata !252} ; [ DW_TAG_member ] [nlocvars] [line 122, size 16, align 16, offset 320] [from short]
!409 = metadata !{i32 786445, metadata !335, metadata !334, metadata !"nactvar", i32 123, i64 8, i64 8, i64 336, i32 0, metadata !64} ; [ DW_TAG_member ] [nactvar] [line 123, size 8, align 8, offset 336] [from lu_byte]
!410 = metadata !{i32 786445, metadata !335, metadata !334, metadata !"nups", i32 124, i64 8, i64 8, i64 344, i32 0, metadata !64} ; [ DW_TAG_member ] [nups] [line 124, size 8, align 8, offset 344] [from lu_byte]
!411 = metadata !{i32 786445, metadata !335, metadata !334, metadata !"freereg", i32 125, i64 8, i64 8, i64 352, i32 0, metadata !64} ; [ DW_TAG_member ] [freereg] [line 125, size 8, align 8, offset 352] [from lu_byte]
!412 = metadata !{i32 786445, metadata !4, metadata !314, metadata !"L", i32 65, i64 32, i64 32, i64 416, i32 0, metadata !163} ; [ DW_TAG_member ] [L] [line 65, size 32, align 32, offset 416] [from ]
!413 = metadata !{i32 786445, metadata !4, metadata !314, metadata !"z", i32 66, i64 32, i64 32, i64 448, i32 0, metadata !414} ; [ DW_TAG_member ] [z] [line 66, size 32, align 32, offset 448] [from ]
!414 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !415} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ZIO]
!415 = metadata !{i32 786454, metadata !416, null, metadata !"ZIO", i32 18, i64 0, i64 0, i64 0, i32 0, metadata !417} ; [ DW_TAG_typedef ] [ZIO] [line 18, size 0, align 0, offset 0] [from Zio]
!416 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lzio.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!417 = metadata !{i32 786451, metadata !416, null, metadata !"Zio", i32 55, i64 160, i64 32, i32 0, i32 0, null, metadata !418, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [Zio] [line 55, size 160, align 32, offset 0] [def] [from ]
!418 = metadata !{metadata !419, metadata !420, metadata !421, metadata !427, metadata !428}
!419 = metadata !{i32 786445, metadata !416, metadata !417, metadata !"n", i32 56, i64 32, i64 32, i64 0, i32 0, metadata !110} ; [ DW_TAG_member ] [n] [line 56, size 32, align 32, offset 0] [from size_t]
!420 = metadata !{i32 786445, metadata !416, metadata !417, metadata !"p", i32 57, i64 32, i64 32, i64 32, i32 0, metadata !279} ; [ DW_TAG_member ] [p] [line 57, size 32, align 32, offset 32] [from ]
!421 = metadata !{i32 786445, metadata !416, metadata !417, metadata !"reader", i32 58, i64 32, i64 32, i64 64, i32 0, metadata !422} ; [ DW_TAG_member ] [reader] [line 58, size 32, align 32, offset 64] [from lua_Reader]
!422 = metadata !{i32 786454, metadata !52, null, metadata !"lua_Reader", i32 116, i64 0, i64 0, i64 0, i32 0, metadata !423} ; [ DW_TAG_typedef ] [lua_Reader] [line 116, size 0, align 0, offset 0] [from ]
!423 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !424} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!424 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !425, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!425 = metadata !{metadata !279, metadata !50, metadata !85, metadata !426}
!426 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !110} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from size_t]
!427 = metadata !{i32 786445, metadata !416, metadata !417, metadata !"data", i32 59, i64 32, i64 32, i64 96, i32 0, metadata !85} ; [ DW_TAG_member ] [data] [line 59, size 32, align 32, offset 96] [from ]
!428 = metadata !{i32 786445, metadata !416, metadata !417, metadata !"L", i32 60, i64 32, i64 32, i64 128, i32 0, metadata !50} ; [ DW_TAG_member ] [L] [line 60, size 32, align 32, offset 128] [from ]
!429 = metadata !{i32 786445, metadata !4, metadata !314, metadata !"buff", i32 67, i64 32, i64 32, i64 480, i32 0, metadata !430} ; [ DW_TAG_member ] [buff] [line 67, size 32, align 32, offset 480] [from ]
!430 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !431} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from Mbuffer]
!431 = metadata !{i32 786454, metadata !416, null, metadata !"Mbuffer", i32 27, i64 0, i64 0, i64 0, i32 0, metadata !432} ; [ DW_TAG_typedef ] [Mbuffer] [line 27, size 0, align 0, offset 0] [from Mbuffer]
!432 = metadata !{i32 786451, metadata !416, null, metadata !"Mbuffer", i32 23, i64 96, i64 32, i32 0, i32 0, null, metadata !433, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [Mbuffer] [line 23, size 96, align 32, offset 0] [def] [from ]
!433 = metadata !{metadata !434, metadata !436, metadata !437}
!434 = metadata !{i32 786445, metadata !416, metadata !432, metadata !"buffer", i32 24, i64 32, i64 32, i64 0, i32 0, metadata !435} ; [ DW_TAG_member ] [buffer] [line 24, size 32, align 32, offset 0] [from ]
!435 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !281} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from char]
!436 = metadata !{i32 786445, metadata !416, metadata !432, metadata !"n", i32 25, i64 32, i64 32, i64 32, i32 0, metadata !110} ; [ DW_TAG_member ] [n] [line 25, size 32, align 32, offset 32] [from size_t]
!437 = metadata !{i32 786445, metadata !416, metadata !432, metadata !"buffsize", i32 26, i64 32, i64 32, i64 64, i32 0, metadata !110} ; [ DW_TAG_member ] [buffsize] [line 26, size 32, align 32, offset 64] [from size_t]
!438 = metadata !{i32 786445, metadata !4, metadata !314, metadata !"h", i32 68, i64 32, i64 32, i64 512, i32 0, metadata !439} ; [ DW_TAG_member ] [h] [line 68, size 32, align 32, offset 512] [from ]
!439 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !440} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from Table]
!440 = metadata !{i32 786454, metadata !59, null, metadata !"Table", i32 507, i64 0, i64 0, i64 0, i32 0, metadata !180} ; [ DW_TAG_typedef ] [Table] [line 507, size 0, align 0, offset 0] [from Table]
!441 = metadata !{i32 786445, metadata !4, metadata !314, metadata !"dyd", i32 69, i64 32, i64 32, i64 544, i32 0, metadata !442} ; [ DW_TAG_member ] [dyd] [line 69, size 32, align 32, offset 544] [from ]
!442 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !443} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from Dyndata]
!443 = metadata !{i32 786451, metadata !335, null, metadata !"Dyndata", i32 95, i64 288, i64 32, i32 0, i32 0, null, metadata !444, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [Dyndata] [line 95, size 288, align 32, offset 0] [def] [from ]
!444 = metadata !{metadata !445, metadata !456, metadata !471}
!445 = metadata !{i32 786445, metadata !335, metadata !443, metadata !"actvar", i32 100, i64 96, i64 32, i64 0, i32 0, metadata !446} ; [ DW_TAG_member ] [actvar] [line 100, size 96, align 32, offset 0] [from ]
!446 = metadata !{i32 786451, metadata !335, metadata !443, metadata !"", i32 96, i64 96, i64 32, i32 0, i32 0, null, metadata !447, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 96, size 96, align 32, offset 0] [def] [from ]
!447 = metadata !{metadata !448, metadata !454, metadata !455}
!448 = metadata !{i32 786445, metadata !335, metadata !446, metadata !"arr", i32 97, i64 32, i64 32, i64 0, i32 0, metadata !449} ; [ DW_TAG_member ] [arr] [line 97, size 32, align 32, offset 0] [from ]
!449 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !450} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from Vardesc]
!450 = metadata !{i32 786454, metadata !335, null, metadata !"Vardesc", i32 74, i64 0, i64 0, i64 0, i32 0, metadata !451} ; [ DW_TAG_typedef ] [Vardesc] [line 74, size 0, align 0, offset 0] [from Vardesc]
!451 = metadata !{i32 786451, metadata !335, null, metadata !"Vardesc", i32 72, i64 16, i64 16, i32 0, i32 0, null, metadata !452, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [Vardesc] [line 72, size 16, align 16, offset 0] [def] [from ]
!452 = metadata !{metadata !453}
!453 = metadata !{i32 786445, metadata !335, metadata !451, metadata !"idx", i32 73, i64 16, i64 16, i64 0, i32 0, metadata !252} ; [ DW_TAG_member ] [idx] [line 73, size 16, align 16, offset 0] [from short]
!454 = metadata !{i32 786445, metadata !335, metadata !446, metadata !"n", i32 98, i64 32, i64 32, i64 32, i32 0, metadata !87} ; [ DW_TAG_member ] [n] [line 98, size 32, align 32, offset 32] [from int]
!455 = metadata !{i32 786445, metadata !335, metadata !446, metadata !"size", i32 99, i64 32, i64 32, i64 64, i32 0, metadata !87} ; [ DW_TAG_member ] [size] [line 99, size 32, align 32, offset 64] [from int]
!456 = metadata !{i32 786445, metadata !335, metadata !443, metadata !"gt", i32 101, i64 96, i64 32, i64 96, i32 0, metadata !457} ; [ DW_TAG_member ] [gt] [line 101, size 96, align 32, offset 96] [from Labellist]
!457 = metadata !{i32 786454, metadata !335, null, metadata !"Labellist", i32 91, i64 0, i64 0, i64 0, i32 0, metadata !458} ; [ DW_TAG_typedef ] [Labellist] [line 91, size 0, align 0, offset 0] [from Labellist]
!458 = metadata !{i32 786451, metadata !335, null, metadata !"Labellist", i32 87, i64 96, i64 32, i32 0, i32 0, null, metadata !459, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [Labellist] [line 87, size 96, align 32, offset 0] [def] [from ]
!459 = metadata !{metadata !460, metadata !469, metadata !470}
!460 = metadata !{i32 786445, metadata !335, metadata !458, metadata !"arr", i32 88, i64 32, i64 32, i64 0, i32 0, metadata !461} ; [ DW_TAG_member ] [arr] [line 88, size 32, align 32, offset 0] [from ]
!461 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !462} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from Labeldesc]
!462 = metadata !{i32 786454, metadata !335, null, metadata !"Labeldesc", i32 83, i64 0, i64 0, i64 0, i32 0, metadata !463} ; [ DW_TAG_typedef ] [Labeldesc] [line 83, size 0, align 0, offset 0] [from Labeldesc]
!463 = metadata !{i32 786451, metadata !335, null, metadata !"Labeldesc", i32 78, i64 128, i64 32, i32 0, i32 0, null, metadata !464, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [Labeldesc] [line 78, size 128, align 32, offset 0] [def] [from ]
!464 = metadata !{metadata !465, metadata !466, metadata !467, metadata !468}
!465 = metadata !{i32 786445, metadata !335, metadata !463, metadata !"name", i32 79, i64 32, i64 32, i64 0, i32 0, metadata !127} ; [ DW_TAG_member ] [name] [line 79, size 32, align 32, offset 0] [from ]
!466 = metadata !{i32 786445, metadata !335, metadata !463, metadata !"pc", i32 80, i64 32, i64 32, i64 32, i32 0, metadata !87} ; [ DW_TAG_member ] [pc] [line 80, size 32, align 32, offset 32] [from int]
!467 = metadata !{i32 786445, metadata !335, metadata !463, metadata !"line", i32 81, i64 32, i64 32, i64 64, i32 0, metadata !87} ; [ DW_TAG_member ] [line] [line 81, size 32, align 32, offset 64] [from int]
!468 = metadata !{i32 786445, metadata !335, metadata !463, metadata !"nactvar", i32 82, i64 8, i64 8, i64 96, i32 0, metadata !64} ; [ DW_TAG_member ] [nactvar] [line 82, size 8, align 8, offset 96] [from lu_byte]
!469 = metadata !{i32 786445, metadata !335, metadata !458, metadata !"n", i32 89, i64 32, i64 32, i64 32, i32 0, metadata !87} ; [ DW_TAG_member ] [n] [line 89, size 32, align 32, offset 32] [from int]
!470 = metadata !{i32 786445, metadata !335, metadata !458, metadata !"size", i32 90, i64 32, i64 32, i64 64, i32 0, metadata !87} ; [ DW_TAG_member ] [size] [line 90, size 32, align 32, offset 64] [from int]
!471 = metadata !{i32 786445, metadata !335, metadata !443, metadata !"label", i32 102, i64 96, i64 32, i64 192, i32 0, metadata !457} ; [ DW_TAG_member ] [label] [line 102, size 96, align 32, offset 192] [from Labellist]
!472 = metadata !{i32 786445, metadata !4, metadata !314, metadata !"source", i32 70, i64 32, i64 32, i64 576, i32 0, metadata !127} ; [ DW_TAG_member ] [source] [line 70, size 32, align 32, offset 576] [from ]
!473 = metadata !{i32 786445, metadata !4, metadata !314, metadata !"envn", i32 71, i64 32, i64 32, i64 608, i32 0, metadata !127} ; [ DW_TAG_member ] [envn] [line 71, size 32, align 32, offset 608] [from ]
!474 = metadata !{i32 786478, metadata !46, metadata !47, metadata !"luaX_syntaxerror", metadata !"luaX_syntaxerror", metadata !"", i32 117, metadata !475, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.LexState*, i8*)* @luaX_syntaxerror, null, null, metadata !43, i32 117} ; [ DW_TAG_subprogram ] [line 117] [def] [luaX_syntaxerror]
!475 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !476, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!476 = metadata !{null, metadata !312, metadata !279}
!477 = metadata !{i32 786478, metadata !46, metadata !47, metadata !"luaX_newstring", metadata !"luaX_newstring", metadata !"", i32 127, metadata !478, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, %struct.TString* (%struct.LexState*, i8*, i32)* @luaX_newstring, null, null, metadata !43, i32 127} ; [ DW_TAG_subprogram ] [line 127] [def] [luaX_newstring]
!478 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !479, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!479 = metadata !{metadata !127, metadata !312, metadata !279, metadata !110}
!480 = metadata !{i32 786478, metadata !46, metadata !47, metadata !"luaX_setinput", metadata !"luaX_setinput", metadata !"", i32 162, metadata !481, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.lua_State*, %struct.LexState*, %struct.Zio*, %struct.TString*, i32)* @luaX_setinput, null, null, metadata !43, i32 163} ; [ DW_TAG_subprogram ] [line 162] [def] [scope 163] [luaX_setinput]
!481 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !482, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!482 = metadata !{null, metadata !50, metadata !312, metadata !414, metadata !127, metadata !87}
!483 = metadata !{i32 786478, metadata !46, metadata !47, metadata !"luaX_next", metadata !"luaX_next", metadata !"", i32 549, metadata !484, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.LexState*)* @luaX_next, null, null, metadata !43, i32 549} ; [ DW_TAG_subprogram ] [line 549] [def] [luaX_next]
!484 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !485, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!485 = metadata !{null, metadata !312}
!486 = metadata !{i32 786478, metadata !46, metadata !47, metadata !"luaX_lookahead", metadata !"luaX_lookahead", metadata !"", i32 560, metadata !487, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.LexState*)* @luaX_lookahead, null, null, metadata !43, i32 560} ; [ DW_TAG_subprogram ] [line 560] [def] [luaX_lookahead]
!487 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !488, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!488 = metadata !{metadata !87, metadata !312}
!489 = metadata !{i32 786478, metadata !46, metadata !47, metadata !"llex", metadata !"llex", metadata !"", i32 429, metadata !490, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.LexState*, %union.SemInfo*)* @llex, null, null, metadata !43, i32 429} ; [ DW_TAG_subprogram ] [line 429] [local] [def] [llex]
!490 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !491, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!491 = metadata !{metadata !87, metadata !312, metadata !492}
!492 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !325} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from SemInfo]
!493 = metadata !{i32 786478, metadata !46, metadata !47, metadata !"read_numeral", metadata !"read_numeral", metadata !"", i32 214, metadata !490, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.LexState*, %union.SemInfo*)* @read_numeral, null, null, metadata !43, i32 214} ; [ DW_TAG_subprogram ] [line 214] [local] [def] [read_numeral]
!494 = metadata !{i32 786478, metadata !46, metadata !47, metadata !"check_next2", metadata !"check_next2", metadata !"", i32 199, metadata !495, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.LexState*, i8*)* @check_next2, null, null, metadata !43, i32 199} ; [ DW_TAG_subprogram ] [line 199] [local] [def] [check_next2]
!495 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !496, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!496 = metadata !{metadata !87, metadata !312, metadata !279}
!497 = metadata !{i32 786478, metadata !46, metadata !47, metadata !"save", metadata !"save", metadata !"", i32 57, metadata !498, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.LexState*, i32)* @save, null, null, metadata !43, i32 57} ; [ DW_TAG_subprogram ] [line 57] [local] [def] [save]
!498 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !499, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!499 = metadata !{null, metadata !312, metadata !87}
!500 = metadata !{i32 786478, metadata !46, metadata !47, metadata !"read_string", metadata !"read_string", metadata !"", i32 366, metadata !501, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.LexState*, i32, %union.SemInfo*)* @read_string, null, null, metadata !43, i32 366} ; [ DW_TAG_subprogram ] [line 366] [local] [def] [read_string]
!501 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !502, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!502 = metadata !{null, metadata !312, metadata !87, metadata !492}
!503 = metadata !{i32 786478, metadata !46, metadata !47, metadata !"readdecesc", metadata !"readdecesc", metadata !"", i32 353, metadata !487, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.LexState*)* @readdecesc, null, null, metadata !43, i32 353} ; [ DW_TAG_subprogram ] [line 353] [local] [def] [readdecesc]
!504 = metadata !{i32 786478, metadata !46, metadata !47, metadata !"esccheck", metadata !"esccheck", metadata !"", i32 303, metadata !505, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.LexState*, i32, i8*)* @esccheck, null, null, metadata !43, i32 303} ; [ DW_TAG_subprogram ] [line 303] [local] [def] [esccheck]
!505 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !506, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!506 = metadata !{null, metadata !312, metadata !87, metadata !279}
!507 = metadata !{i32 786478, metadata !46, metadata !47, metadata !"utf8esc", metadata !"utf8esc", metadata !"", i32 345, metadata !484, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.LexState*)* @utf8esc, null, null, metadata !43, i32 345} ; [ DW_TAG_subprogram ] [line 345] [local] [def] [utf8esc]
!508 = metadata !{i32 786478, metadata !46, metadata !47, metadata !"readutf8esc", metadata !"readutf8esc", metadata !"", i32 327, metadata !509, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.LexState*)* @readutf8esc, null, null, metadata !43, i32 327} ; [ DW_TAG_subprogram ] [line 327] [local] [def] [readutf8esc]
!509 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !510, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!510 = metadata !{metadata !511, metadata !312}
!511 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!512 = metadata !{i32 786478, metadata !46, metadata !47, metadata !"gethexa", metadata !"gethexa", metadata !"", i32 312, metadata !487, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.LexState*)* @gethexa, null, null, metadata !43, i32 312} ; [ DW_TAG_subprogram ] [line 312] [local] [def] [gethexa]
!513 = metadata !{i32 786478, metadata !46, metadata !47, metadata !"readhexaesc", metadata !"readhexaesc", metadata !"", i32 319, metadata !487, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.LexState*)* @readhexaesc, null, null, metadata !43, i32 319} ; [ DW_TAG_subprogram ] [line 319] [local] [def] [readhexaesc]
!514 = metadata !{i32 786478, metadata !46, metadata !47, metadata !"check_next1", metadata !"check_next1", metadata !"", i32 186, metadata !515, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.LexState*, i32)* @check_next1, null, null, metadata !43, i32 186} ; [ DW_TAG_subprogram ] [line 186] [local] [def] [check_next1]
!515 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !516, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!516 = metadata !{metadata !87, metadata !312, metadata !87}
!517 = metadata !{i32 786478, metadata !46, metadata !47, metadata !"read_long_string", metadata !"read_long_string", metadata !"", i32 264, metadata !518, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.LexState*, %union.SemInfo*, i32)* @read_long_string, null, null, metadata !43, i32 264} ; [ DW_TAG_subprogram ] [line 264] [local] [def] [read_long_string]
!518 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !519, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!519 = metadata !{null, metadata !312, metadata !492, metadata !87}
!520 = metadata !{i32 786478, metadata !46, metadata !47, metadata !"skip_sep", metadata !"skip_sep", metadata !"", i32 251, metadata !487, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.LexState*)* @skip_sep, null, null, metadata !43, i32 251} ; [ DW_TAG_subprogram ] [line 251] [local] [def] [skip_sep]
!521 = metadata !{i32 786478, metadata !46, metadata !47, metadata !"inclinenumber", metadata !"inclinenumber", metadata !"", i32 151, metadata !484, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.LexState*)* @inclinenumber, null, null, metadata !43, i32 151} ; [ DW_TAG_subprogram ] [line 151] [local] [def] [inclinenumber]
!522 = metadata !{i32 786478, metadata !46, metadata !47, metadata !"lexerror", metadata !"lexerror", metadata !"", i32 109, metadata !523, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.LexState*, i8*, i32)* @lexerror, null, null, metadata !43, i32 109} ; [ DW_TAG_subprogram ] [line 109] [local] [def] [lexerror]
!523 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !524, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!524 = metadata !{null, metadata !312, metadata !279, metadata !87}
!525 = metadata !{i32 786478, metadata !46, metadata !47, metadata !"txtToken", metadata !"txtToken", metadata !"", i32 97, metadata !310, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (%struct.LexState*, i32)* @txtToken, null, null, metadata !43, i32 97} ; [ DW_TAG_subprogram ] [line 97] [local] [def] [txtToken]
!526 = metadata !{metadata !527}
!527 = metadata !{i32 786484, i32 0, null, metadata !"luaX_tokens", metadata !"luaX_tokens", metadata !"", metadata !47, i32 40, metadata !528, i32 1, i32 1, [37 x i8*]* @luaX_tokens, null} ; [ DW_TAG_variable ] [luaX_tokens] [line 40] [local] [def]
!528 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1184, i64 32, i32 0, i32 0, metadata !529, metadata !530, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 1184, align 32, offset 0] [from ]
!529 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !279} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from ]
!530 = metadata !{metadata !531}
!531 = metadata !{i32 786465, i64 0, i64 37}      ; [ DW_TAG_subrange_type ] [0, 36]
!532 = metadata !{void (%struct.lua_State*)* @luaX_init}
!533 = metadata !{metadata !"luaX_init"}
!534 = metadata !{%struct.TString* (%struct.lua_State*, i8*, i32)* @luaS_newlstr}
!535 = metadata !{metadata !"luaS_newlstr"}
!536 = metadata !{void (%struct.lua_State*, %struct.GCObject*)* @luaC_fix}
!537 = metadata !{metadata !"luaC_fix"}
!538 = metadata !{%struct.TString* (%struct.lua_State*, i8*)* @luaS_new}
!539 = metadata !{metadata !"luaS_new"}
!540 = metadata !{i8* (%struct.LexState*, i32)* @luaX_token2str}
!541 = metadata !{metadata !"luaX_token2str"}
!542 = metadata !{i8* (%struct.lua_State*, i8*, ...)* @luaO_pushfstring}
!543 = metadata !{metadata !"luaO_pushfstring"}
!544 = metadata !{void (%struct.LexState*, i8*)* @luaX_syntaxerror}
!545 = metadata !{metadata !"luaX_syntaxerror"}
!546 = metadata !{void (%struct.LexState*, i8*, i32)* @lexerror}
!547 = metadata !{metadata !"lexerror"}
!548 = metadata !{%struct.TString* (%struct.LexState*, i8*, i32)* @luaX_newstring}
!549 = metadata !{metadata !"luaX_newstring"}
!550 = metadata !{%struct.lua_TValue* (%struct.lua_State*, %struct.Table*, %struct.lua_TValue*)* @luaH_set}
!551 = metadata !{metadata !"luaH_set"}
!552 = metadata !{void (%struct.lua_State*)* @luaC_step}
!553 = metadata !{metadata !"luaC_step"}
!554 = metadata !{void (%struct.lua_State*, %struct.LexState*, %struct.Zio*, %struct.TString*, i32)* @luaX_setinput}
!555 = metadata !{metadata !"luaX_setinput"}
!556 = metadata !{i8* (%struct.lua_State*, i8*, i32, i32)* @luaM_realloc_}
!557 = metadata !{metadata !"luaM_realloc_"}
!558 = metadata !{void (%struct.LexState*)* @luaX_next}
!559 = metadata !{metadata !"luaX_next"}
!560 = metadata !{i32 (%struct.LexState*, %union.SemInfo*)* @llex}
!561 = metadata !{metadata !"llex"}
!562 = metadata !{i32 (%struct.LexState*)* @luaX_lookahead}
!563 = metadata !{metadata !"luaX_lookahead"}
!564 = metadata !{void (%struct.LexState*)* @inclinenumber}
!565 = metadata !{metadata !"inclinenumber"}
!566 = metadata !{i32 (%struct.Zio*)* @luaZ_fill}
!567 = metadata !{metadata !"luaZ_fill"}
!568 = metadata !{i32 (%struct.LexState*)* @skip_sep}
!569 = metadata !{metadata !"skip_sep"}
!570 = metadata !{void (%struct.LexState*, %union.SemInfo*, i32)* @read_long_string}
!571 = metadata !{metadata !"read_long_string"}
!572 = metadata !{i32 (%struct.LexState*, i32)* @check_next1}
!573 = metadata !{metadata !"check_next1"}
!574 = metadata !{void (%struct.LexState*, i32, %union.SemInfo*)* @read_string}
!575 = metadata !{metadata !"read_string"}
!576 = metadata !{void (%struct.LexState*, i32)* @save}
!577 = metadata !{metadata !"save"}
!578 = metadata !{i32 (%struct.LexState*, %union.SemInfo*)* @read_numeral}
!579 = metadata !{metadata !"read_numeral"}
!580 = metadata !{i32 (%struct.LexState*, i8*)* @check_next2}
!581 = metadata !{metadata !"check_next2"}
!582 = metadata !{i32 (i8*, %struct.lua_TValue*)* @luaO_str2num}
!583 = metadata !{metadata !"luaO_str2num"}
!584 = metadata !{i32 (%struct.LexState*)* @readhexaesc}
!585 = metadata !{metadata !"readhexaesc"}
!586 = metadata !{void (%struct.LexState*)* @utf8esc}
!587 = metadata !{metadata !"utf8esc"}
!588 = metadata !{void (%struct.LexState*, i32, i8*)* @esccheck}
!589 = metadata !{metadata !"esccheck"}
!590 = metadata !{i32 (%struct.LexState*)* @readdecesc}
!591 = metadata !{metadata !"readdecesc"}
!592 = metadata !{i32 (i8*, i32)* @luaO_utf8esc}
!593 = metadata !{metadata !"luaO_utf8esc"}
!594 = metadata !{i32 (%struct.LexState*)* @readutf8esc}
!595 = metadata !{metadata !"readutf8esc"}
!596 = metadata !{i32 (%struct.LexState*)* @gethexa}
!597 = metadata !{metadata !"gethexa"}
!598 = metadata !{i32 (i32)* @luaO_hexavalue}
!599 = metadata !{metadata !"luaO_hexavalue"}
!600 = metadata !{i8* (%struct.lua_State*, i8*, %struct.TString*, i32)* @luaG_addinfo}
!601 = metadata !{metadata !"luaG_addinfo"}
!602 = metadata !{i8* (%struct.LexState*, i32)* @txtToken}
!603 = metadata !{metadata !"txtToken"}
!604 = metadata !{void (%struct.lua_State*, i32)* @luaD_throw}
!605 = metadata !{metadata !"luaD_throw"}
!606 = metadata !{metadata !"void.lua_State *.1"}
!607 = metadata !{metadata !"TString .lua_State *.1.const char *.1.size_t.0"}
!608 = metadata !{metadata !"void.lua_State *.1.GCObject *.1"}
!609 = metadata !{metadata !"TString .lua_State *.1.const char *.1"}
!610 = metadata !{metadata !"const char .LexState *.1.int.0"}
!611 = metadata !{metadata !"const char .lua_State *.1.const char *.1"}
!612 = metadata !{metadata !"void.LexState *.1.const char *.1"}
!613 = metadata !{metadata !"void.LexState *.1.const char *.1.int.0"}
!614 = metadata !{metadata !"TString .LexState *.1.const char *.1.size_t.0"}
!615 = metadata !{metadata !"TValue .lua_State *.1.Table *.1.const TValue *.1"}
!616 = metadata !{metadata !"void.lua_State *.1.LexState *.1.ZIO *.1.TString *.1.int.0"}
!617 = metadata !{metadata !"void .lua_State *.1.void *.1.size_t.0.size_t.0"}
!618 = metadata !{metadata !"void.LexState *.1"}
!619 = metadata !{metadata !"int.LexState *.1.SemInfo *.1"}
!620 = metadata !{metadata !"int.LexState *.1"}
!621 = metadata !{metadata !"int.ZIO *.1"}
!622 = metadata !{metadata !"void.LexState *.1.SemInfo *.1.int.0"}
!623 = metadata !{metadata !"int.LexState *.1.int.0"}
!624 = metadata !{metadata !"void.LexState *.1.int.0.SemInfo *.1"}
!625 = metadata !{metadata !"void.LexState *.1.int.0"}
!626 = metadata !{metadata !"int.LexState *.1.const char *.1"}
!627 = metadata !{metadata !"size_t.const char *.1.TValue *.1"}
!628 = metadata !{metadata !"void.LexState *.1.int.0.const char *.1"}
!629 = metadata !{metadata !"int.char *.1.unsigned long.0"}
!630 = metadata !{metadata !"unsigned long.LexState *.1"}
!631 = metadata !{metadata !"int.int.0"}
!632 = metadata !{metadata !"const char .lua_State *.1.const char *.1.TString *.1.int.0"}
!633 = metadata !{metadata !"void.lua_State *.1.int.0"}
!634 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/llex.h"}
!635 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lstring.h"}
!636 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lgc.h"}
!637 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lobject.h"}
!638 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/llex.c"}
!639 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/ltable.h"}
!640 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lmem.h"}
!641 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lzio.h"}
!642 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/ldebug.h"}
!643 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/ldo.h"}
!644 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!645 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!646 = metadata !{i32 1, metadata !"wchar_size", i32 4}
!647 = metadata !{i32 1, metadata !"min_enum_size", i32 4}
!648 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
!649 = metadata !{i32 786689, metadata !45, metadata !"L", metadata !47, i32 16777286, metadata !50, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 70]
!650 = metadata !{i32 70, i32 28, metadata !45, null}
!651 = metadata !{i32 786688, metadata !45, metadata !"i", metadata !47, i32 71, metadata !87, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 71]
!652 = metadata !{i32 71, i32 7, metadata !45, null}
!653 = metadata !{i32 786688, metadata !45, metadata !"e", metadata !47, i32 72, metadata !127, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [e] [line 72]
!654 = metadata !{i32 72, i32 12, metadata !45, null}
!655 = metadata !{i32 72, i32 16, metadata !45, null}
!656 = metadata !{i32 73, i32 3, metadata !45, null}
!657 = metadata !{i32 74, i32 8, metadata !658, null}
!658 = metadata !{i32 786443, metadata !46, metadata !45, i32 74, i32 3, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!659 = metadata !{i32 74, i32 8, metadata !660, null}
!660 = metadata !{i32 786443, metadata !46, metadata !661, i32 74, i32 8, i32 2, i32 111} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!661 = metadata !{i32 786443, metadata !46, metadata !658, i32 74, i32 8, i32 1, i32 110} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!662 = metadata !{i32 786688, metadata !663, metadata !"ts", metadata !47, i32 75, metadata !127, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ts] [line 75]
!663 = metadata !{i32 786443, metadata !46, metadata !658, i32 74, i32 34, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!664 = metadata !{i32 75, i32 14, metadata !663, null}
!665 = metadata !{i32 75, i32 19, metadata !663, null}
!666 = metadata !{i32 76, i32 5, metadata !663, null}
!667 = metadata !{i32 77, i32 5, metadata !663, null}
!668 = metadata !{i32 78, i32 3, metadata !663, null}
!669 = metadata !{i32 74, i32 29, metadata !658, null}
!670 = metadata !{i32 79, i32 1, metadata !45, null}
!671 = metadata !{i32 786689, metadata !309, metadata !"ls", metadata !47, i32 16777298, metadata !312, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ls] [line 82]
!672 = metadata !{i32 82, i32 39, metadata !309, null}
!673 = metadata !{i32 786689, metadata !309, metadata !"token", metadata !47, i32 33554514, metadata !87, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [token] [line 82]
!674 = metadata !{i32 82, i32 47, metadata !309, null}
!675 = metadata !{i32 83, i32 7, metadata !676, null}
!676 = metadata !{i32 786443, metadata !46, metadata !309, i32 83, i32 7, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!677 = metadata !{i32 85, i32 12, metadata !678, null}
!678 = metadata !{i32 786443, metadata !46, metadata !676, i32 83, i32 31, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!679 = metadata !{i32 786688, metadata !680, metadata !"s", metadata !47, i32 88, metadata !279, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s] [line 88]
!680 = metadata !{i32 786443, metadata !46, metadata !676, i32 87, i32 8, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!681 = metadata !{i32 88, i32 17, metadata !680, null}
!682 = metadata !{i32 88, i32 5, metadata !680, null}
!683 = metadata !{i32 89, i32 9, metadata !684, null}
!684 = metadata !{i32 786443, metadata !46, metadata !680, i32 89, i32 9, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!685 = metadata !{i32 90, i32 14, metadata !684, null}
!686 = metadata !{i32 92, i32 7, metadata !684, null}
!687 = metadata !{i32 94, i32 1, metadata !309, null}
!688 = metadata !{i32 786689, metadata !474, metadata !"ls", metadata !47, i32 16777333, metadata !312, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ls] [line 117]
!689 = metadata !{i32 117, i32 37, metadata !474, null}
!690 = metadata !{i32 786689, metadata !474, metadata !"msg", metadata !47, i32 33554549, metadata !279, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [msg] [line 117]
!691 = metadata !{i32 117, i32 53, metadata !474, null}
!692 = metadata !{i32 118, i32 3, metadata !474, null}
!693 = metadata !{i32 119, i32 1, metadata !474, null}
!694 = metadata !{i32 786689, metadata !522, metadata !"ls", metadata !47, i32 16777325, metadata !312, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ls] [line 109]
!695 = metadata !{i32 109, i32 36, metadata !522, null}
!696 = metadata !{i32 786689, metadata !522, metadata !"msg", metadata !47, i32 33554541, metadata !279, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [msg] [line 109]
!697 = metadata !{i32 109, i32 52, metadata !522, null}
!698 = metadata !{i32 786689, metadata !522, metadata !"token", metadata !47, i32 50331757, metadata !87, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [token] [line 109]
!699 = metadata !{i32 109, i32 61, metadata !522, null}
!700 = metadata !{i32 110, i32 9, metadata !522, null}
!701 = metadata !{i32 111, i32 7, metadata !702, null}
!702 = metadata !{i32 786443, metadata !46, metadata !522, i32 111, i32 7, i32 0, i32 108} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!703 = metadata !{i32 112, i32 5, metadata !702, null}
!704 = metadata !{i32 112, i32 48, metadata !702, null}
!705 = metadata !{i32 113, i32 3, metadata !522, null}
!706 = metadata !{i32 114, i32 1, metadata !522, null}
!707 = metadata !{i32 786689, metadata !477, metadata !"ls", metadata !47, i32 16777343, metadata !312, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ls] [line 127]
!708 = metadata !{i32 127, i32 36, metadata !477, null}
!709 = metadata !{i32 786689, metadata !477, metadata !"str", metadata !47, i32 33554559, metadata !279, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [str] [line 127]
!710 = metadata !{i32 127, i32 52, metadata !477, null}
!711 = metadata !{i32 786689, metadata !477, metadata !"l", metadata !47, i32 50331775, metadata !110, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [l] [line 127]
!712 = metadata !{i32 127, i32 64, metadata !477, null}
!713 = metadata !{i32 786688, metadata !477, metadata !"L", metadata !47, i32 128, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [L] [line 128]
!714 = metadata !{i32 128, i32 14, metadata !477, null}
!715 = metadata !{i32 128, i32 3, metadata !477, null}
!716 = metadata !{i32 786688, metadata !477, metadata !"o", metadata !47, i32 129, metadata !75, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [o] [line 129]
!717 = metadata !{i32 129, i32 11, metadata !477, null}
!718 = metadata !{i32 786688, metadata !477, metadata !"ts", metadata !47, i32 130, metadata !127, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ts] [line 130]
!719 = metadata !{i32 130, i32 12, metadata !477, null}
!720 = metadata !{i32 130, i32 17, metadata !477, null}
!721 = metadata !{i32 786688, metadata !722, metadata !"io", metadata !47, i32 131, metadata !75, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [io] [line 131]
!722 = metadata !{i32 786443, metadata !46, metadata !477, i32 131, i32 3, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!723 = metadata !{i32 131, i32 3, metadata !722, null}
!724 = metadata !{i32 786688, metadata !722, metadata !"x_", metadata !47, i32 131, metadata !127, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x_] [line 131]
!725 = metadata !{i32 132, i32 7, metadata !477, null}
!726 = metadata !{i32 133, i32 7, metadata !727, null}
!727 = metadata !{i32 786443, metadata !46, metadata !477, i32 133, i32 7, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!728 = metadata !{i32 786688, metadata !729, metadata !"io", metadata !47, i32 136, metadata !75, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [io] [line 136]
!729 = metadata !{i32 786443, metadata !46, metadata !730, i32 136, i32 5, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!730 = metadata !{i32 786443, metadata !46, metadata !727, i32 133, i32 19, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!731 = metadata !{i32 136, i32 5, metadata !729, null}
!732 = metadata !{i32 137, i32 5, metadata !733, null}
!733 = metadata !{i32 786443, metadata !46, metadata !734, i32 137, i32 5, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!734 = metadata !{i32 786443, metadata !46, metadata !730, i32 137, i32 5, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!735 = metadata !{i32 137, i32 5, metadata !736, null}
!736 = metadata !{i32 786443, metadata !46, metadata !737, i32 137, i32 5, i32 1, i32 112} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!737 = metadata !{i32 786443, metadata !46, metadata !733, i32 137, i32 5, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!738 = metadata !{i32 138, i32 3, metadata !730, null}
!739 = metadata !{i32 140, i32 5, metadata !740, null}
!740 = metadata !{i32 786443, metadata !46, metadata !727, i32 139, i32 8, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!741 = metadata !{i32 142, i32 3, metadata !477, null}
!742 = metadata !{i32 143, i32 3, metadata !477, null}
!743 = metadata !{i32 786689, metadata !480, metadata !"L", metadata !47, i32 16777378, metadata !50, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 162]
!744 = metadata !{i32 162, i32 32, metadata !480, null}
!745 = metadata !{i32 786689, metadata !480, metadata !"ls", metadata !47, i32 33554594, metadata !312, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ls] [line 162]
!746 = metadata !{i32 162, i32 45, metadata !480, null}
!747 = metadata !{i32 786689, metadata !480, metadata !"z", metadata !47, i32 50331810, metadata !414, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [z] [line 162]
!748 = metadata !{i32 162, i32 54, metadata !480, null}
!749 = metadata !{i32 786689, metadata !480, metadata !"source", metadata !47, i32 67109026, metadata !127, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [source] [line 162]
!750 = metadata !{i32 162, i32 66, metadata !480, null}
!751 = metadata !{i32 786689, metadata !480, metadata !"firstchar", metadata !47, i32 83886243, metadata !87, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [firstchar] [line 163]
!752 = metadata !{i32 163, i32 25, metadata !480, null}
!753 = metadata !{i32 164, i32 3, metadata !480, null}
!754 = metadata !{i32 165, i32 3, metadata !480, null}
!755 = metadata !{i32 166, i32 3, metadata !480, null}
!756 = metadata !{i32 167, i32 3, metadata !480, null}
!757 = metadata !{i32 168, i32 3, metadata !480, null}
!758 = metadata !{i32 169, i32 3, metadata !480, null}
!759 = metadata !{i32 170, i32 3, metadata !480, null}
!760 = metadata !{i32 171, i32 3, metadata !480, null}
!761 = metadata !{i32 172, i32 3, metadata !480, null}
!762 = metadata !{i32 173, i32 14, metadata !480, null}
!763 = metadata !{i32 174, i32 3, metadata !480, null}
!764 = metadata !{i32 175, i32 1, metadata !480, null}
!765 = metadata !{i32 786689, metadata !483, metadata !"ls", metadata !47, i32 16777765, metadata !312, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ls] [line 549]
!766 = metadata !{i32 549, i32 27, metadata !483, null}
!767 = metadata !{i32 550, i32 3, metadata !483, null}
!768 = metadata !{i32 551, i32 7, metadata !769, null}
!769 = metadata !{i32 786443, metadata !46, metadata !483, i32 551, i32 7, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!770 = metadata !{i32 552, i32 5, metadata !771, null}
!771 = metadata !{i32 786443, metadata !46, metadata !769, i32 551, i32 38, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!772 = metadata !{i32 553, i32 5, metadata !771, null}
!773 = metadata !{i32 554, i32 3, metadata !771, null}
!774 = metadata !{i32 556, i32 19, metadata !769, null}
!775 = metadata !{i32 557, i32 1, metadata !483, null}
!776 = metadata !{i32 786689, metadata !489, metadata !"ls", metadata !47, i32 16777645, metadata !312, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ls] [line 429]
!777 = metadata !{i32 429, i32 28, metadata !489, null}
!778 = metadata !{i32 786689, metadata !489, metadata !"seminfo", metadata !47, i32 33554861, metadata !492, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [seminfo] [line 429]
!779 = metadata !{i32 429, i32 41, metadata !489, null}
!780 = metadata !{i32 430, i32 3, metadata !489, null}
!781 = metadata !{i32 431, i32 3, metadata !782, null}
!782 = metadata !{i32 786443, metadata !46, metadata !489, i32 431, i32 3, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!783 = metadata !{i32 432, i32 5, metadata !784, null}
!784 = metadata !{i32 786443, metadata !46, metadata !782, i32 431, i32 12, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!785 = metadata !{i32 434, i32 9, metadata !786, null}
!786 = metadata !{i32 786443, metadata !46, metadata !787, i32 433, i32 29, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!787 = metadata !{i32 786443, metadata !46, metadata !784, i32 432, i32 26, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!788 = metadata !{i32 435, i32 9, metadata !786, null}
!789 = metadata !{i32 438, i32 9, metadata !790, null}
!790 = metadata !{i32 786443, metadata !46, metadata !787, i32 437, i32 50, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!791 = metadata !{i32 438, i32 9, metadata !792, null}
!792 = metadata !{i32 786443, metadata !46, metadata !790, i32 438, i32 9, i32 1, i32 113} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!793 = metadata !{i32 438, i32 9, metadata !794, null}
!794 = metadata !{i32 786443, metadata !46, metadata !790, i32 438, i32 9, i32 2, i32 114} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!795 = metadata !{i32 438, i32 9, metadata !796, null}
!796 = metadata !{i32 786443, metadata !46, metadata !797, i32 438, i32 9, i32 4, i32 116} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!797 = metadata !{i32 786443, metadata !46, metadata !790, i32 438, i32 9, i32 3, i32 115} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!798 = metadata !{i32 439, i32 9, metadata !790, null}
!799 = metadata !{i32 442, i32 9, metadata !800, null}
!800 = metadata !{i32 786443, metadata !46, metadata !787, i32 441, i32 17, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!801 = metadata !{i32 442, i32 9, metadata !802, null}
!802 = metadata !{i32 786443, metadata !46, metadata !800, i32 442, i32 9, i32 1, i32 117} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!803 = metadata !{i32 442, i32 9, metadata !804, null}
!804 = metadata !{i32 786443, metadata !46, metadata !800, i32 442, i32 9, i32 2, i32 118} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!805 = metadata !{i32 442, i32 9, metadata !806, null}
!806 = metadata !{i32 786443, metadata !46, metadata !807, i32 442, i32 9, i32 4, i32 120} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!807 = metadata !{i32 786443, metadata !46, metadata !800, i32 442, i32 9, i32 3, i32 119} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!808 = metadata !{i32 443, i32 13, metadata !809, null}
!809 = metadata !{i32 786443, metadata !46, metadata !800, i32 443, i32 13, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!810 = metadata !{i32 443, i32 33, metadata !811, null}
!811 = metadata !{i32 786443, metadata !46, metadata !809, i32 443, i32 33, i32 1, i32 121} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!812 = metadata !{i32 445, i32 9, metadata !800, null}
!813 = metadata !{i32 445, i32 9, metadata !814, null}
!814 = metadata !{i32 786443, metadata !46, metadata !800, i32 445, i32 9, i32 1, i32 122} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!815 = metadata !{i32 445, i32 9, metadata !816, null}
!816 = metadata !{i32 786443, metadata !46, metadata !800, i32 445, i32 9, i32 2, i32 123} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!817 = metadata !{i32 445, i32 9, metadata !818, null}
!818 = metadata !{i32 786443, metadata !46, metadata !819, i32 445, i32 9, i32 4, i32 125} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!819 = metadata !{i32 786443, metadata !46, metadata !800, i32 445, i32 9, i32 3, i32 124} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!820 = metadata !{i32 446, i32 13, metadata !821, null}
!821 = metadata !{i32 786443, metadata !46, metadata !800, i32 446, i32 13, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!822 = metadata !{i32 786688, metadata !823, metadata !"sep", metadata !47, i32 447, metadata !87, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sep] [line 447]
!823 = metadata !{i32 786443, metadata !46, metadata !821, i32 446, i32 33, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!824 = metadata !{i32 447, i32 15, metadata !823, null}
!825 = metadata !{i32 447, i32 21, metadata !823, null}
!826 = metadata !{i32 448, i32 11, metadata !823, null}
!827 = metadata !{i32 449, i32 15, metadata !828, null}
!828 = metadata !{i32 786443, metadata !46, metadata !823, i32 449, i32 15, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!829 = metadata !{i32 450, i32 13, metadata !830, null}
!830 = metadata !{i32 786443, metadata !46, metadata !828, i32 449, i32 25, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!831 = metadata !{i32 451, i32 13, metadata !830, null}
!832 = metadata !{i32 452, i32 13, metadata !830, null}
!833 = metadata !{i32 454, i32 9, metadata !823, null}
!834 = metadata !{i32 456, i32 9, metadata !800, null}
!835 = metadata !{i32 456, i32 9, metadata !836, null}
!836 = metadata !{i32 786443, metadata !46, metadata !800, i32 456, i32 9, i32 1, i32 126} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!837 = metadata !{i32 456, i32 9, metadata !838, null}
!838 = metadata !{i32 786443, metadata !46, metadata !800, i32 456, i32 9, i32 3, i32 128} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!839 = metadata !{i32 456, i32 9, metadata !840, null}
!840 = metadata !{i32 786443, metadata !46, metadata !800, i32 456, i32 9, i32 5, i32 130} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!841 = metadata !{i32 456, i32 9, metadata !842, null}
!842 = metadata !{i32 786443, metadata !46, metadata !843, i32 456, i32 9, i32 4, i32 129} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!843 = metadata !{i32 786443, metadata !46, metadata !800, i32 456, i32 9, i32 2, i32 127} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!844 = metadata !{i32 457, i32 11, metadata !800, null}
!845 = metadata !{i32 457, i32 11, metadata !846, null}
!846 = metadata !{i32 786443, metadata !46, metadata !800, i32 457, i32 11, i32 1, i32 131} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!847 = metadata !{i32 457, i32 11, metadata !848, null}
!848 = metadata !{i32 786443, metadata !46, metadata !800, i32 457, i32 11, i32 2, i32 132} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!849 = metadata !{i32 457, i32 11, metadata !850, null}
!850 = metadata !{i32 786443, metadata !46, metadata !851, i32 457, i32 11, i32 4, i32 134} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!851 = metadata !{i32 786443, metadata !46, metadata !800, i32 457, i32 11, i32 3, i32 133} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!852 = metadata !{i32 458, i32 9, metadata !800, null}
!853 = metadata !{i32 786688, metadata !854, metadata !"sep", metadata !47, i32 461, metadata !87, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sep] [line 461]
!854 = metadata !{i32 786443, metadata !46, metadata !787, i32 460, i32 17, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!855 = metadata !{i32 461, i32 13, metadata !854, null}
!856 = metadata !{i32 461, i32 19, metadata !854, null}
!857 = metadata !{i32 462, i32 13, metadata !858, null}
!858 = metadata !{i32 786443, metadata !46, metadata !854, i32 462, i32 13, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!859 = metadata !{i32 463, i32 11, metadata !860, null}
!860 = metadata !{i32 786443, metadata !46, metadata !858, i32 462, i32 23, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!861 = metadata !{i32 464, i32 11, metadata !860, null}
!862 = metadata !{i32 466, i32 18, metadata !863, null}
!863 = metadata !{i32 786443, metadata !46, metadata !858, i32 466, i32 18, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!864 = metadata !{i32 467, i32 11, metadata !863, null}
!865 = metadata !{i32 468, i32 9, metadata !854, null}
!866 = metadata !{i32 471, i32 9, metadata !867, null}
!867 = metadata !{i32 786443, metadata !46, metadata !787, i32 470, i32 17, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!868 = metadata !{i32 471, i32 9, metadata !869, null}
!869 = metadata !{i32 786443, metadata !46, metadata !867, i32 471, i32 9, i32 1, i32 135} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!870 = metadata !{i32 471, i32 9, metadata !871, null}
!871 = metadata !{i32 786443, metadata !46, metadata !867, i32 471, i32 9, i32 2, i32 136} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!872 = metadata !{i32 471, i32 9, metadata !873, null}
!873 = metadata !{i32 786443, metadata !46, metadata !874, i32 471, i32 9, i32 4, i32 138} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!874 = metadata !{i32 786443, metadata !46, metadata !867, i32 471, i32 9, i32 3, i32 137} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!875 = metadata !{i32 472, i32 13, metadata !876, null}
!876 = metadata !{i32 786443, metadata !46, metadata !867, i32 472, i32 13, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!877 = metadata !{i32 472, i32 35, metadata !878, null}
!878 = metadata !{i32 786443, metadata !46, metadata !876, i32 472, i32 35, i32 1, i32 139} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!879 = metadata !{i32 473, i32 14, metadata !876, null}
!880 = metadata !{i32 476, i32 9, metadata !881, null}
!881 = metadata !{i32 786443, metadata !46, metadata !787, i32 475, i32 17, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!882 = metadata !{i32 476, i32 9, metadata !883, null}
!883 = metadata !{i32 786443, metadata !46, metadata !881, i32 476, i32 9, i32 1, i32 140} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!884 = metadata !{i32 476, i32 9, metadata !885, null}
!885 = metadata !{i32 786443, metadata !46, metadata !881, i32 476, i32 9, i32 2, i32 141} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!886 = metadata !{i32 476, i32 9, metadata !887, null}
!887 = metadata !{i32 786443, metadata !46, metadata !888, i32 476, i32 9, i32 4, i32 143} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!888 = metadata !{i32 786443, metadata !46, metadata !881, i32 476, i32 9, i32 3, i32 142} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!889 = metadata !{i32 477, i32 13, metadata !890, null}
!890 = metadata !{i32 786443, metadata !46, metadata !881, i32 477, i32 13, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!891 = metadata !{i32 477, i32 35, metadata !892, null}
!892 = metadata !{i32 786443, metadata !46, metadata !890, i32 477, i32 35, i32 1, i32 144} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!893 = metadata !{i32 478, i32 18, metadata !894, null}
!894 = metadata !{i32 786443, metadata !46, metadata !890, i32 478, i32 18, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!895 = metadata !{i32 478, i32 40, metadata !896, null}
!896 = metadata !{i32 786443, metadata !46, metadata !894, i32 478, i32 40, i32 1, i32 145} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!897 = metadata !{i32 479, i32 14, metadata !894, null}
!898 = metadata !{i32 482, i32 9, metadata !899, null}
!899 = metadata !{i32 786443, metadata !46, metadata !787, i32 481, i32 17, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!900 = metadata !{i32 482, i32 9, metadata !901, null}
!901 = metadata !{i32 786443, metadata !46, metadata !899, i32 482, i32 9, i32 1, i32 146} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!902 = metadata !{i32 482, i32 9, metadata !903, null}
!903 = metadata !{i32 786443, metadata !46, metadata !899, i32 482, i32 9, i32 2, i32 147} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!904 = metadata !{i32 482, i32 9, metadata !905, null}
!905 = metadata !{i32 786443, metadata !46, metadata !906, i32 482, i32 9, i32 4, i32 149} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!906 = metadata !{i32 786443, metadata !46, metadata !899, i32 482, i32 9, i32 3, i32 148} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!907 = metadata !{i32 483, i32 13, metadata !908, null}
!908 = metadata !{i32 786443, metadata !46, metadata !899, i32 483, i32 13, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!909 = metadata !{i32 483, i32 35, metadata !910, null}
!910 = metadata !{i32 786443, metadata !46, metadata !908, i32 483, i32 35, i32 1, i32 150} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!911 = metadata !{i32 484, i32 18, metadata !912, null}
!912 = metadata !{i32 786443, metadata !46, metadata !908, i32 484, i32 18, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!913 = metadata !{i32 484, i32 40, metadata !914, null}
!914 = metadata !{i32 786443, metadata !46, metadata !912, i32 484, i32 40, i32 1, i32 151} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!915 = metadata !{i32 485, i32 14, metadata !912, null}
!916 = metadata !{i32 488, i32 9, metadata !917, null}
!917 = metadata !{i32 786443, metadata !46, metadata !787, i32 487, i32 17, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!918 = metadata !{i32 488, i32 9, metadata !919, null}
!919 = metadata !{i32 786443, metadata !46, metadata !917, i32 488, i32 9, i32 1, i32 152} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!920 = metadata !{i32 488, i32 9, metadata !921, null}
!921 = metadata !{i32 786443, metadata !46, metadata !917, i32 488, i32 9, i32 2, i32 153} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!922 = metadata !{i32 488, i32 9, metadata !923, null}
!923 = metadata !{i32 786443, metadata !46, metadata !924, i32 488, i32 9, i32 4, i32 155} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!924 = metadata !{i32 786443, metadata !46, metadata !917, i32 488, i32 9, i32 3, i32 154} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!925 = metadata !{i32 489, i32 13, metadata !926, null}
!926 = metadata !{i32 786443, metadata !46, metadata !917, i32 489, i32 13, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!927 = metadata !{i32 489, i32 35, metadata !928, null}
!928 = metadata !{i32 786443, metadata !46, metadata !926, i32 489, i32 35, i32 1, i32 156} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!929 = metadata !{i32 490, i32 14, metadata !926, null}
!930 = metadata !{i32 493, i32 9, metadata !931, null}
!931 = metadata !{i32 786443, metadata !46, metadata !787, i32 492, i32 17, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!932 = metadata !{i32 493, i32 9, metadata !933, null}
!933 = metadata !{i32 786443, metadata !46, metadata !931, i32 493, i32 9, i32 1, i32 157} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!934 = metadata !{i32 493, i32 9, metadata !935, null}
!935 = metadata !{i32 786443, metadata !46, metadata !931, i32 493, i32 9, i32 2, i32 158} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!936 = metadata !{i32 493, i32 9, metadata !937, null}
!937 = metadata !{i32 786443, metadata !46, metadata !938, i32 493, i32 9, i32 4, i32 160} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!938 = metadata !{i32 786443, metadata !46, metadata !931, i32 493, i32 9, i32 3, i32 159} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!939 = metadata !{i32 494, i32 13, metadata !940, null}
!940 = metadata !{i32 786443, metadata !46, metadata !931, i32 494, i32 13, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!941 = metadata !{i32 494, i32 35, metadata !942, null}
!942 = metadata !{i32 786443, metadata !46, metadata !940, i32 494, i32 35, i32 1, i32 161} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!943 = metadata !{i32 495, i32 14, metadata !940, null}
!944 = metadata !{i32 498, i32 9, metadata !945, null}
!945 = metadata !{i32 786443, metadata !46, metadata !787, i32 497, i32 17, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!946 = metadata !{i32 498, i32 9, metadata !947, null}
!947 = metadata !{i32 786443, metadata !46, metadata !945, i32 498, i32 9, i32 1, i32 162} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!948 = metadata !{i32 498, i32 9, metadata !949, null}
!949 = metadata !{i32 786443, metadata !46, metadata !945, i32 498, i32 9, i32 2, i32 163} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!950 = metadata !{i32 498, i32 9, metadata !951, null}
!951 = metadata !{i32 786443, metadata !46, metadata !952, i32 498, i32 9, i32 4, i32 165} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!952 = metadata !{i32 786443, metadata !46, metadata !945, i32 498, i32 9, i32 3, i32 164} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!953 = metadata !{i32 499, i32 13, metadata !954, null}
!954 = metadata !{i32 786443, metadata !46, metadata !945, i32 499, i32 13, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!955 = metadata !{i32 499, i32 35, metadata !956, null}
!956 = metadata !{i32 786443, metadata !46, metadata !954, i32 499, i32 35, i32 1, i32 166} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!957 = metadata !{i32 500, i32 14, metadata !954, null}
!958 = metadata !{i32 503, i32 9, metadata !959, null}
!959 = metadata !{i32 786443, metadata !46, metadata !787, i32 502, i32 28, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!960 = metadata !{i32 504, i32 9, metadata !959, null}
!961 = metadata !{i32 507, i32 9, metadata !962, null}
!962 = metadata !{i32 786443, metadata !46, metadata !787, i32 506, i32 17, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!963 = metadata !{i32 507, i32 9, metadata !964, null}
!964 = metadata !{i32 786443, metadata !46, metadata !962, i32 507, i32 9, i32 1, i32 167} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!965 = metadata !{i32 507, i32 9, metadata !966, null}
!966 = metadata !{i32 786443, metadata !46, metadata !962, i32 507, i32 9, i32 2, i32 168} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!967 = metadata !{i32 507, i32 9, metadata !968, null}
!968 = metadata !{i32 786443, metadata !46, metadata !969, i32 507, i32 9, i32 4, i32 170} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!969 = metadata !{i32 786443, metadata !46, metadata !962, i32 507, i32 9, i32 3, i32 169} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!970 = metadata !{i32 508, i32 13, metadata !971, null}
!971 = metadata !{i32 786443, metadata !46, metadata !962, i32 508, i32 13, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!972 = metadata !{i32 509, i32 15, metadata !973, null}
!973 = metadata !{i32 786443, metadata !46, metadata !974, i32 509, i32 15, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!974 = metadata !{i32 786443, metadata !46, metadata !971, i32 508, i32 35, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!975 = metadata !{i32 510, i32 13, metadata !973, null}
!976 = metadata !{i32 511, i32 16, metadata !973, null}
!977 = metadata !{i32 513, i32 18, metadata !978, null}
!978 = metadata !{i32 786443, metadata !46, metadata !971, i32 513, i32 18, i32 0, i32 50} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!979 = metadata !{i32 513, i32 42, metadata !980, null}
!980 = metadata !{i32 786443, metadata !46, metadata !978, i32 513, i32 42, i32 1, i32 171} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!981 = metadata !{i32 514, i32 21, metadata !978, null}
!982 = metadata !{i32 518, i32 16, metadata !983, null}
!983 = metadata !{i32 786443, metadata !46, metadata !787, i32 517, i32 57, i32 0, i32 51} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!984 = metadata !{i32 521, i32 9, metadata !985, null}
!985 = metadata !{i32 786443, metadata !46, metadata !787, i32 520, i32 17, i32 0, i32 52} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!986 = metadata !{i32 524, i32 13, metadata !987, null}
!987 = metadata !{i32 786443, metadata !46, metadata !988, i32 524, i32 13, i32 0, i32 54} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!988 = metadata !{i32 786443, metadata !46, metadata !787, i32 523, i32 16, i32 0, i32 53} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!989 = metadata !{i32 786688, metadata !990, metadata !"ts", metadata !47, i32 525, metadata !127, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ts] [line 525]
!990 = metadata !{i32 786443, metadata !46, metadata !987, i32 524, i32 37, i32 0, i32 55} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!991 = metadata !{i32 525, i32 20, metadata !990, null}
!992 = metadata !{i32 526, i32 11, metadata !990, null}
!993 = metadata !{i32 527, i32 13, metadata !994, null}
!994 = metadata !{i32 786443, metadata !46, metadata !990, i32 526, i32 14, i32 0, i32 56} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!995 = metadata !{i32 527, i32 13, metadata !996, null}
!996 = metadata !{i32 786443, metadata !46, metadata !994, i32 527, i32 13, i32 1, i32 172} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!997 = metadata !{i32 527, i32 13, metadata !998, null}
!998 = metadata !{i32 786443, metadata !46, metadata !994, i32 527, i32 13, i32 2, i32 173} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!999 = metadata !{i32 527, i32 13, metadata !1000, null}
!1000 = metadata !{i32 786443, metadata !46, metadata !1001, i32 527, i32 13, i32 4, i32 175} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1001 = metadata !{i32 786443, metadata !46, metadata !994, i32 527, i32 13, i32 3, i32 174} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1002 = metadata !{i32 528, i32 11, metadata !994, null}
!1003 = metadata !{i32 528, i32 11, metadata !1004, null}
!1004 = metadata !{i32 786443, metadata !46, metadata !994, i32 528, i32 11, i32 1, i32 176} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1005 = metadata !{i32 529, i32 16, metadata !990, null}
!1006 = metadata !{i32 531, i32 11, metadata !990, null}
!1007 = metadata !{i32 532, i32 15, metadata !1008, null}
!1008 = metadata !{i32 786443, metadata !46, metadata !990, i32 532, i32 15, i32 0, i32 57} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1009 = metadata !{i32 532, i32 15, metadata !1010, null}
!1010 = metadata !{i32 786443, metadata !46, metadata !1008, i32 532, i32 15, i32 1, i32 177} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1011 = metadata !{i32 533, i32 13, metadata !1008, null}
!1012 = metadata !{i32 535, i32 13, metadata !1013, null}
!1013 = metadata !{i32 786443, metadata !46, metadata !1008, i32 534, i32 16, i32 0, i32 58} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1014 = metadata !{i32 786688, metadata !1015, metadata !"c", metadata !47, i32 539, metadata !87, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c] [line 539]
!1015 = metadata !{i32 786443, metadata !46, metadata !987, i32 538, i32 14, i32 0, i32 59} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1016 = metadata !{i32 539, i32 15, metadata !1015, null}
!1017 = metadata !{i32 539, i32 11, metadata !1015, null}
!1018 = metadata !{i32 540, i32 11, metadata !1015, null}
!1019 = metadata !{i32 540, i32 11, metadata !1020, null}
!1020 = metadata !{i32 786443, metadata !46, metadata !1015, i32 540, i32 11, i32 1, i32 178} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1021 = metadata !{i32 540, i32 11, metadata !1022, null}
!1022 = metadata !{i32 786443, metadata !46, metadata !1015, i32 540, i32 11, i32 2, i32 179} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1023 = metadata !{i32 540, i32 11, metadata !1024, null}
!1024 = metadata !{i32 786443, metadata !46, metadata !1025, i32 540, i32 11, i32 4, i32 181} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1025 = metadata !{i32 786443, metadata !46, metadata !1015, i32 540, i32 11, i32 3, i32 180} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1026 = metadata !{i32 541, i32 11, metadata !1015, null}
!1027 = metadata !{i32 545, i32 3, metadata !784, null}
!1028 = metadata !{i32 546, i32 1, metadata !489, null}
!1029 = metadata !{i32 786689, metadata !486, metadata !"ls", metadata !47, i32 16777776, metadata !312, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ls] [line 560]
!1030 = metadata !{i32 560, i32 31, metadata !486, null}
!1031 = metadata !{i32 562, i32 25, metadata !486, null}
!1032 = metadata !{i32 563, i32 3, metadata !486, null}
!1033 = metadata !{i32 786689, metadata !521, metadata !"ls", metadata !47, i32 16777367, metadata !312, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ls] [line 151]
!1034 = metadata !{i32 151, i32 38, metadata !521, null}
!1035 = metadata !{i32 786688, metadata !521, metadata !"old", metadata !47, i32 152, metadata !87, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [old] [line 152]
!1036 = metadata !{i32 152, i32 7, metadata !521, null}
!1037 = metadata !{i32 152, i32 3, metadata !521, null}
!1038 = metadata !{i32 154, i32 3, metadata !521, null}
!1039 = metadata !{i32 154, i32 3, metadata !1040, null}
!1040 = metadata !{i32 786443, metadata !46, metadata !521, i32 154, i32 3, i32 1, i32 182} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1041 = metadata !{i32 154, i32 3, metadata !1042, null}
!1042 = metadata !{i32 786443, metadata !46, metadata !521, i32 154, i32 3, i32 2, i32 183} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1043 = metadata !{i32 154, i32 3, metadata !1044, null}
!1044 = metadata !{i32 786443, metadata !46, metadata !1045, i32 154, i32 3, i32 4, i32 185} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1045 = metadata !{i32 786443, metadata !46, metadata !521, i32 154, i32 3, i32 3, i32 184} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1046 = metadata !{i32 155, i32 7, metadata !1047, null}
!1047 = metadata !{i32 786443, metadata !46, metadata !521, i32 155, i32 7, i32 0, i32 106} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1048 = metadata !{i32 155, i32 7, metadata !1049, null}
!1049 = metadata !{i32 786443, metadata !46, metadata !1047, i32 155, i32 7, i32 2, i32 187} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1050 = metadata !{i32 155, i32 7, metadata !1051, null}
!1051 = metadata !{i32 786443, metadata !46, metadata !1052, i32 155, i32 7, i32 3, i32 188} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1052 = metadata !{i32 786443, metadata !46, metadata !1047, i32 155, i32 7, i32 1, i32 186} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1053 = metadata !{i32 156, i32 5, metadata !1047, null}
!1054 = metadata !{i32 156, i32 5, metadata !1055, null}
!1055 = metadata !{i32 786443, metadata !46, metadata !1047, i32 156, i32 5, i32 1, i32 189} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1056 = metadata !{i32 156, i32 5, metadata !1057, null}
!1057 = metadata !{i32 786443, metadata !46, metadata !1047, i32 156, i32 5, i32 2, i32 190} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1058 = metadata !{i32 156, i32 5, metadata !1059, null}
!1059 = metadata !{i32 786443, metadata !46, metadata !1060, i32 156, i32 5, i32 4, i32 192} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1060 = metadata !{i32 786443, metadata !46, metadata !1047, i32 156, i32 5, i32 3, i32 191} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1061 = metadata !{i32 157, i32 7, metadata !1062, null}
!1062 = metadata !{i32 786443, metadata !46, metadata !521, i32 157, i32 7, i32 0, i32 107} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1063 = metadata !{i32 158, i32 5, metadata !1062, null}
!1064 = metadata !{i32 159, i32 1, metadata !521, null}
!1065 = metadata !{i32 786689, metadata !520, metadata !"ls", metadata !47, i32 16777467, metadata !312, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ls] [line 251]
!1066 = metadata !{i32 251, i32 32, metadata !520, null}
!1067 = metadata !{i32 786688, metadata !520, metadata !"count", metadata !47, i32 252, metadata !87, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [count] [line 252]
!1068 = metadata !{i32 252, i32 7, metadata !520, null}
!1069 = metadata !{i32 252, i32 3, metadata !520, null}
!1070 = metadata !{i32 786688, metadata !520, metadata !"s", metadata !47, i32 253, metadata !87, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s] [line 253]
!1071 = metadata !{i32 253, i32 7, metadata !520, null}
!1072 = metadata !{i32 253, i32 3, metadata !520, null}
!1073 = metadata !{i32 255, i32 3, metadata !520, null}
!1074 = metadata !{i32 255, i32 3, metadata !1075, null}
!1075 = metadata !{i32 786443, metadata !46, metadata !520, i32 255, i32 3, i32 1, i32 193} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1076 = metadata !{i32 255, i32 3, metadata !1077, null}
!1077 = metadata !{i32 786443, metadata !46, metadata !520, i32 255, i32 3, i32 2, i32 194} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1078 = metadata !{i32 255, i32 3, metadata !1079, null}
!1079 = metadata !{i32 786443, metadata !46, metadata !1080, i32 255, i32 3, i32 4, i32 196} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1080 = metadata !{i32 786443, metadata !46, metadata !520, i32 255, i32 3, i32 3, i32 195} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1081 = metadata !{i32 256, i32 3, metadata !520, null}
!1082 = metadata !{i32 256, i32 3, metadata !1083, null}
!1083 = metadata !{i32 786443, metadata !46, metadata !520, i32 256, i32 3, i32 1, i32 197} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1084 = metadata !{i32 257, i32 5, metadata !1085, null}
!1085 = metadata !{i32 786443, metadata !46, metadata !520, i32 256, i32 30, i32 0, i32 105} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1086 = metadata !{i32 257, i32 5, metadata !1087, null}
!1087 = metadata !{i32 786443, metadata !46, metadata !1085, i32 257, i32 5, i32 1, i32 198} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1088 = metadata !{i32 257, i32 5, metadata !1089, null}
!1089 = metadata !{i32 786443, metadata !46, metadata !1085, i32 257, i32 5, i32 2, i32 199} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1090 = metadata !{i32 257, i32 5, metadata !1091, null}
!1091 = metadata !{i32 786443, metadata !46, metadata !1092, i32 257, i32 5, i32 4, i32 201} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1092 = metadata !{i32 786443, metadata !46, metadata !1085, i32 257, i32 5, i32 3, i32 200} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1093 = metadata !{i32 258, i32 5, metadata !1085, null}
!1094 = metadata !{i32 259, i32 3, metadata !1085, null}
!1095 = metadata !{i32 260, i32 3, metadata !520, null}
!1096 = metadata !{i32 260, i32 3, metadata !1097, null}
!1097 = metadata !{i32 786443, metadata !46, metadata !520, i32 260, i32 3, i32 1, i32 202} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1098 = metadata !{i32 260, i32 3, metadata !1099, null}
!1099 = metadata !{i32 786443, metadata !46, metadata !520, i32 260, i32 3, i32 2, i32 203} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1100 = metadata !{i32 260, i32 3, metadata !1101, null}
!1101 = metadata !{i32 786443, metadata !46, metadata !1102, i32 260, i32 3, i32 4, i32 205} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1102 = metadata !{i32 786443, metadata !46, metadata !520, i32 260, i32 3, i32 3, i32 204} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1103 = metadata !{i32 786689, metadata !517, metadata !"ls", metadata !47, i32 16777480, metadata !312, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ls] [line 264]
!1104 = metadata !{i32 264, i32 41, metadata !517, null}
!1105 = metadata !{i32 786689, metadata !517, metadata !"seminfo", metadata !47, i32 33554696, metadata !492, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [seminfo] [line 264]
!1106 = metadata !{i32 264, i32 54, metadata !517, null}
!1107 = metadata !{i32 786689, metadata !517, metadata !"sep", metadata !47, i32 50331912, metadata !87, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sep] [line 264]
!1108 = metadata !{i32 264, i32 67, metadata !517, null}
!1109 = metadata !{i32 786688, metadata !517, metadata !"line", metadata !47, i32 265, metadata !87, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [line] [line 265]
!1110 = metadata !{i32 265, i32 7, metadata !517, null}
!1111 = metadata !{i32 265, i32 3, metadata !517, null}
!1112 = metadata !{i32 266, i32 3, metadata !517, null}
!1113 = metadata !{i32 266, i32 3, metadata !1114, null}
!1114 = metadata !{i32 786443, metadata !46, metadata !517, i32 266, i32 3, i32 1, i32 206} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1115 = metadata !{i32 266, i32 3, metadata !1116, null}
!1116 = metadata !{i32 786443, metadata !46, metadata !517, i32 266, i32 3, i32 2, i32 207} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1117 = metadata !{i32 266, i32 3, metadata !1118, null}
!1118 = metadata !{i32 786443, metadata !46, metadata !1119, i32 266, i32 3, i32 4, i32 209} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1119 = metadata !{i32 786443, metadata !46, metadata !517, i32 266, i32 3, i32 3, i32 208} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1120 = metadata !{i32 267, i32 7, metadata !1121, null}
!1121 = metadata !{i32 786443, metadata !46, metadata !517, i32 267, i32 7, i32 0, i32 92} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1122 = metadata !{i32 267, i32 7, metadata !1123, null}
!1123 = metadata !{i32 786443, metadata !46, metadata !1121, i32 267, i32 7, i32 1, i32 210} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1124 = metadata !{i32 268, i32 5, metadata !1121, null}
!1125 = metadata !{i32 269, i32 3, metadata !1126, null}
!1126 = metadata !{i32 786443, metadata !46, metadata !517, i32 269, i32 3, i32 0, i32 93} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1127 = metadata !{i32 270, i32 5, metadata !1128, null}
!1128 = metadata !{i32 786443, metadata !46, metadata !1126, i32 269, i32 12, i32 0, i32 94} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1129 = metadata !{i32 786688, metadata !1130, metadata !"what", metadata !47, i32 272, metadata !279, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [what] [line 272]
!1130 = metadata !{i32 786443, metadata !46, metadata !1131, i32 271, i32 17, i32 0, i32 96} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1131 = metadata !{i32 786443, metadata !46, metadata !1128, i32 270, i32 26, i32 0, i32 95} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1132 = metadata !{i32 272, i32 21, metadata !1130, null}
!1133 = metadata !{i32 272, i32 9, metadata !1130, null}
!1134 = metadata !{i32 786688, metadata !1130, metadata !"msg", metadata !47, i32 273, metadata !279, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [msg] [line 273]
!1135 = metadata !{i32 273, i32 21, metadata !1130, null}
!1136 = metadata !{i32 273, i32 27, metadata !1130, null}
!1137 = metadata !{i32 275, i32 9, metadata !1130, null}
!1138 = metadata !{i32 279, i32 13, metadata !1139, null}
!1139 = metadata !{i32 786443, metadata !46, metadata !1140, i32 279, i32 13, i32 0, i32 98} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1140 = metadata !{i32 786443, metadata !46, metadata !1131, i32 278, i32 17, i32 0, i32 97} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1141 = metadata !{i32 280, i32 11, metadata !1142, null}
!1142 = metadata !{i32 786443, metadata !46, metadata !1139, i32 279, i32 34, i32 0, i32 99} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1143 = metadata !{i32 280, i32 11, metadata !1144, null}
!1144 = metadata !{i32 786443, metadata !46, metadata !1142, i32 280, i32 11, i32 1, i32 211} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1145 = metadata !{i32 280, i32 11, metadata !1146, null}
!1146 = metadata !{i32 786443, metadata !46, metadata !1142, i32 280, i32 11, i32 2, i32 212} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1147 = metadata !{i32 280, i32 11, metadata !1148, null}
!1148 = metadata !{i32 786443, metadata !46, metadata !1149, i32 280, i32 11, i32 4, i32 214} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1149 = metadata !{i32 786443, metadata !46, metadata !1142, i32 280, i32 11, i32 3, i32 213} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1150 = metadata !{i32 281, i32 11, metadata !1142, null}
!1151 = metadata !{i32 283, i32 9, metadata !1140, null}
!1152 = metadata !{i32 286, i32 9, metadata !1153, null}
!1153 = metadata !{i32 786443, metadata !46, metadata !1131, i32 285, i32 29, i32 0, i32 100} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1154 = metadata !{i32 287, i32 9, metadata !1153, null}
!1155 = metadata !{i32 288, i32 13, metadata !1156, null}
!1156 = metadata !{i32 786443, metadata !46, metadata !1153, i32 288, i32 13, i32 0, i32 101} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1157 = metadata !{i32 288, i32 23, metadata !1158, null}
!1158 = metadata !{i32 786443, metadata !46, metadata !1156, i32 288, i32 23, i32 1, i32 215} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1159 = metadata !{i32 289, i32 9, metadata !1153, null}
!1160 = metadata !{i32 292, i32 13, metadata !1161, null}
!1161 = metadata !{i32 786443, metadata !46, metadata !1162, i32 292, i32 13, i32 0, i32 103} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1162 = metadata !{i32 786443, metadata !46, metadata !1131, i32 291, i32 16, i32 0, i32 102} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1163 = metadata !{i32 292, i32 22, metadata !1164, null}
!1164 = metadata !{i32 786443, metadata !46, metadata !1161, i32 292, i32 22, i32 1, i32 216} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1165 = metadata !{i32 292, i32 22, metadata !1166, null}
!1166 = metadata !{i32 786443, metadata !46, metadata !1161, i32 292, i32 22, i32 2, i32 217} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1167 = metadata !{i32 292, i32 22, metadata !1168, null}
!1168 = metadata !{i32 786443, metadata !46, metadata !1161, i32 292, i32 22, i32 3, i32 218} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1169 = metadata !{i32 292, i32 22, metadata !1161, null}
!1170 = metadata !{i32 292, i32 22, metadata !1171, null}
!1171 = metadata !{i32 786443, metadata !46, metadata !1172, i32 292, i32 22, i32 5, i32 220} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1172 = metadata !{i32 786443, metadata !46, metadata !1161, i32 292, i32 22, i32 4, i32 219} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1173 = metadata !{i32 293, i32 14, metadata !1161, null}
!1174 = metadata !{i32 293, i32 14, metadata !1175, null}
!1175 = metadata !{i32 786443, metadata !46, metadata !1161, i32 293, i32 14, i32 1, i32 221} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1176 = metadata !{i32 293, i32 14, metadata !1177, null}
!1177 = metadata !{i32 786443, metadata !46, metadata !1161, i32 293, i32 14, i32 2, i32 222} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1178 = metadata !{i32 293, i32 14, metadata !1179, null}
!1179 = metadata !{i32 786443, metadata !46, metadata !1180, i32 293, i32 14, i32 4, i32 224} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1180 = metadata !{i32 786443, metadata !46, metadata !1161, i32 293, i32 14, i32 3, i32 223} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1181 = metadata !{i32 295, i32 5, metadata !1131, null}
!1182 = metadata !{i32 296, i32 3, metadata !1128, null}
!1183 = metadata !{i32 297, i32 7, metadata !1184, null}
!1184 = metadata !{i32 786443, metadata !46, metadata !517, i32 297, i32 7, i32 0, i32 104} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1185 = metadata !{i32 298, i32 19, metadata !1184, null}
!1186 = metadata !{i32 300, i32 1, metadata !517, null}
!1187 = metadata !{i32 786689, metadata !514, metadata !"ls", metadata !47, i32 16777402, metadata !312, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ls] [line 186]
!1188 = metadata !{i32 186, i32 35, metadata !514, null}
!1189 = metadata !{i32 786689, metadata !514, metadata !"c", metadata !47, i32 33554618, metadata !87, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [c] [line 186]
!1190 = metadata !{i32 186, i32 43, metadata !514, null}
!1191 = metadata !{i32 187, i32 7, metadata !1192, null}
!1192 = metadata !{i32 786443, metadata !46, metadata !514, i32 187, i32 7, i32 0, i32 90} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1193 = metadata !{i32 188, i32 5, metadata !1194, null}
!1194 = metadata !{i32 786443, metadata !46, metadata !1192, i32 187, i32 25, i32 0, i32 91} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1195 = metadata !{i32 188, i32 5, metadata !1196, null}
!1196 = metadata !{i32 786443, metadata !46, metadata !1194, i32 188, i32 5, i32 1, i32 225} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1197 = metadata !{i32 188, i32 5, metadata !1198, null}
!1198 = metadata !{i32 786443, metadata !46, metadata !1194, i32 188, i32 5, i32 2, i32 226} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1199 = metadata !{i32 188, i32 5, metadata !1200, null}
!1200 = metadata !{i32 786443, metadata !46, metadata !1201, i32 188, i32 5, i32 4, i32 228} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1201 = metadata !{i32 786443, metadata !46, metadata !1194, i32 188, i32 5, i32 3, i32 227} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1202 = metadata !{i32 189, i32 5, metadata !1194, null}
!1203 = metadata !{i32 191, i32 8, metadata !1192, null}
!1204 = metadata !{i32 192, i32 1, metadata !514, null}
!1205 = metadata !{i32 786689, metadata !500, metadata !"ls", metadata !47, i32 16777582, metadata !312, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ls] [line 366]
!1206 = metadata !{i32 366, i32 36, metadata !500, null}
!1207 = metadata !{i32 786689, metadata !500, metadata !"del", metadata !47, i32 33554798, metadata !87, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [del] [line 366]
!1208 = metadata !{i32 366, i32 44, metadata !500, null}
!1209 = metadata !{i32 786689, metadata !500, metadata !"seminfo", metadata !47, i32 50332014, metadata !492, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [seminfo] [line 366]
!1210 = metadata !{i32 366, i32 58, metadata !500, null}
!1211 = metadata !{i32 367, i32 3, metadata !500, null}
!1212 = metadata !{i32 367, i32 3, metadata !1213, null}
!1213 = metadata !{i32 786443, metadata !46, metadata !500, i32 367, i32 3, i32 1, i32 229} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1214 = metadata !{i32 367, i32 3, metadata !1215, null}
!1215 = metadata !{i32 786443, metadata !46, metadata !500, i32 367, i32 3, i32 2, i32 230} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1216 = metadata !{i32 367, i32 3, metadata !1217, null}
!1217 = metadata !{i32 786443, metadata !46, metadata !1218, i32 367, i32 3, i32 4, i32 232} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1218 = metadata !{i32 786443, metadata !46, metadata !500, i32 367, i32 3, i32 3, i32 231} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1219 = metadata !{i32 368, i32 3, metadata !500, null}
!1220 = metadata !{i32 368, i32 3, metadata !1221, null}
!1221 = metadata !{i32 786443, metadata !46, metadata !500, i32 368, i32 3, i32 1, i32 233} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1222 = metadata !{i32 369, i32 5, metadata !1223, null}
!1223 = metadata !{i32 786443, metadata !46, metadata !500, i32 368, i32 30, i32 0, i32 75} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1224 = metadata !{i32 371, i32 9, metadata !1225, null}
!1225 = metadata !{i32 786443, metadata !46, metadata !1223, i32 369, i32 26, i32 0, i32 76} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1226 = metadata !{i32 375, i32 9, metadata !1225, null}
!1227 = metadata !{i32 786688, metadata !1228, metadata !"c", metadata !47, i32 378, metadata !87, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c] [line 378]
!1228 = metadata !{i32 786443, metadata !46, metadata !1225, i32 377, i32 18, i32 0, i32 77} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1229 = metadata !{i32 378, i32 13, metadata !1228, null}
!1230 = metadata !{i32 379, i32 9, metadata !1228, null}
!1231 = metadata !{i32 379, i32 9, metadata !1232, null}
!1232 = metadata !{i32 786443, metadata !46, metadata !1228, i32 379, i32 9, i32 1, i32 234} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1233 = metadata !{i32 379, i32 9, metadata !1234, null}
!1234 = metadata !{i32 786443, metadata !46, metadata !1228, i32 379, i32 9, i32 2, i32 235} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1235 = metadata !{i32 379, i32 9, metadata !1236, null}
!1236 = metadata !{i32 786443, metadata !46, metadata !1237, i32 379, i32 9, i32 4, i32 237} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1237 = metadata !{i32 786443, metadata !46, metadata !1228, i32 379, i32 9, i32 3, i32 236} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1238 = metadata !{i32 380, i32 9, metadata !1228, null}
!1239 = metadata !{i32 381, i32 21, metadata !1240, null}
!1240 = metadata !{i32 786443, metadata !46, metadata !1228, i32 380, i32 30, i32 0, i32 78} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1241 = metadata !{i32 381, i32 31, metadata !1240, null}
!1242 = metadata !{i32 382, i32 21, metadata !1240, null}
!1243 = metadata !{i32 382, i32 31, metadata !1240, null}
!1244 = metadata !{i32 383, i32 21, metadata !1240, null}
!1245 = metadata !{i32 383, i32 31, metadata !1240, null}
!1246 = metadata !{i32 384, i32 21, metadata !1240, null}
!1247 = metadata !{i32 384, i32 31, metadata !1240, null}
!1248 = metadata !{i32 385, i32 21, metadata !1240, null}
!1249 = metadata !{i32 385, i32 31, metadata !1240, null}
!1250 = metadata !{i32 386, i32 21, metadata !1240, null}
!1251 = metadata !{i32 386, i32 31, metadata !1240, null}
!1252 = metadata !{i32 387, i32 21, metadata !1240, null}
!1253 = metadata !{i32 387, i32 31, metadata !1240, null}
!1254 = metadata !{i32 388, i32 25, metadata !1240, null}
!1255 = metadata !{i32 388, i32 42, metadata !1240, null}
!1256 = metadata !{i32 389, i32 21, metadata !1240, null}
!1257 = metadata !{i32 389, i32 35, metadata !1240, null}
!1258 = metadata !{i32 391, i32 13, metadata !1240, null}
!1259 = metadata !{i32 391, i32 32, metadata !1240, null}
!1260 = metadata !{i32 391, i32 42, metadata !1240, null}
!1261 = metadata !{i32 393, i32 13, metadata !1240, null}
!1262 = metadata !{i32 393, i32 30, metadata !1240, null}
!1263 = metadata !{i32 394, i32 21, metadata !1240, null}
!1264 = metadata !{i32 396, i32 13, metadata !1265, null}
!1265 = metadata !{i32 786443, metadata !46, metadata !1240, i32 395, i32 21, i32 0, i32 79} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1266 = metadata !{i32 397, i32 13, metadata !1265, null}
!1267 = metadata !{i32 397, i32 13, metadata !1268, null}
!1268 = metadata !{i32 786443, metadata !46, metadata !1265, i32 397, i32 13, i32 1, i32 238} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1269 = metadata !{i32 397, i32 13, metadata !1270, null}
!1270 = metadata !{i32 786443, metadata !46, metadata !1265, i32 397, i32 13, i32 2, i32 239} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1271 = metadata !{i32 397, i32 13, metadata !1272, null}
!1272 = metadata !{i32 786443, metadata !46, metadata !1273, i32 397, i32 13, i32 4, i32 241} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1273 = metadata !{i32 786443, metadata !46, metadata !1265, i32 397, i32 13, i32 3, i32 240} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1274 = metadata !{i32 398, i32 13, metadata !1265, null}
!1275 = metadata !{i32 398, i32 13, metadata !1276, null}
!1276 = metadata !{i32 786443, metadata !46, metadata !1265, i32 398, i32 13, i32 1, i32 242} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1277 = metadata !{i32 399, i32 19, metadata !1278, null}
!1278 = metadata !{i32 786443, metadata !46, metadata !1279, i32 399, i32 19, i32 0, i32 81} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1279 = metadata !{i32 786443, metadata !46, metadata !1265, i32 398, i32 43, i32 0, i32 80} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1280 = metadata !{i32 399, i32 19, metadata !1281, null}
!1281 = metadata !{i32 786443, metadata !46, metadata !1278, i32 399, i32 19, i32 2, i32 244} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1282 = metadata !{i32 399, i32 38, metadata !1283, null}
!1283 = metadata !{i32 786443, metadata !46, metadata !1284, i32 399, i32 38, i32 3, i32 245} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1284 = metadata !{i32 786443, metadata !46, metadata !1278, i32 399, i32 38, i32 1, i32 243} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1285 = metadata !{i32 400, i32 20, metadata !1278, null}
!1286 = metadata !{i32 400, i32 20, metadata !1287, null}
!1287 = metadata !{i32 786443, metadata !46, metadata !1278, i32 400, i32 20, i32 1, i32 246} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1288 = metadata !{i32 400, i32 20, metadata !1289, null}
!1289 = metadata !{i32 786443, metadata !46, metadata !1278, i32 400, i32 20, i32 2, i32 247} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1290 = metadata !{i32 400, i32 20, metadata !1291, null}
!1291 = metadata !{i32 786443, metadata !46, metadata !1292, i32 400, i32 20, i32 4, i32 249} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1292 = metadata !{i32 786443, metadata !46, metadata !1278, i32 400, i32 20, i32 3, i32 248} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1293 = metadata !{i32 401, i32 13, metadata !1279, null}
!1294 = metadata !{i32 402, i32 13, metadata !1265, null}
!1295 = metadata !{i32 405, i32 13, metadata !1296, null}
!1296 = metadata !{i32 786443, metadata !46, metadata !1240, i32 404, i32 20, i32 0, i32 82} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1297 = metadata !{i32 406, i32 17, metadata !1296, null}
!1298 = metadata !{i32 407, i32 13, metadata !1296, null}
!1299 = metadata !{i32 411, i32 10, metadata !1228, null}
!1300 = metadata !{i32 411, i32 10, metadata !1301, null}
!1301 = metadata !{i32 786443, metadata !46, metadata !1228, i32 411, i32 10, i32 1, i32 250} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1302 = metadata !{i32 411, i32 10, metadata !1303, null}
!1303 = metadata !{i32 786443, metadata !46, metadata !1228, i32 411, i32 10, i32 2, i32 251} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1304 = metadata !{i32 411, i32 10, metadata !1305, null}
!1305 = metadata !{i32 786443, metadata !46, metadata !1306, i32 411, i32 10, i32 4, i32 253} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1306 = metadata !{i32 786443, metadata !46, metadata !1228, i32 411, i32 10, i32 3, i32 252} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1307 = metadata !{i32 414, i32 10, metadata !1228, null}
!1308 = metadata !{i32 415, i32 10, metadata !1228, null}
!1309 = metadata !{i32 417, i32 17, metadata !1228, null}
!1310 = metadata !{i32 420, i32 9, metadata !1225, null}
!1311 = metadata !{i32 420, i32 9, metadata !1312, null}
!1312 = metadata !{i32 786443, metadata !46, metadata !1225, i32 420, i32 9, i32 1, i32 254} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1313 = metadata !{i32 420, i32 9, metadata !1314, null}
!1314 = metadata !{i32 786443, metadata !46, metadata !1225, i32 420, i32 9, i32 2, i32 255} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1315 = metadata !{i32 420, i32 9, metadata !1316, null}
!1316 = metadata !{i32 786443, metadata !46, metadata !1317, i32 420, i32 9, i32 4, i32 257} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1317 = metadata !{i32 786443, metadata !46, metadata !1225, i32 420, i32 9, i32 3, i32 256} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1318 = metadata !{i32 421, i32 5, metadata !1225, null}
!1319 = metadata !{i32 422, i32 3, metadata !1223, null}
!1320 = metadata !{i32 423, i32 3, metadata !500, null}
!1321 = metadata !{i32 423, i32 3, metadata !1322, null}
!1322 = metadata !{i32 786443, metadata !46, metadata !500, i32 423, i32 3, i32 1, i32 258} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1323 = metadata !{i32 423, i32 3, metadata !1324, null}
!1324 = metadata !{i32 786443, metadata !46, metadata !500, i32 423, i32 3, i32 2, i32 259} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1325 = metadata !{i32 423, i32 3, metadata !1326, null}
!1326 = metadata !{i32 786443, metadata !46, metadata !1327, i32 423, i32 3, i32 4, i32 261} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1327 = metadata !{i32 786443, metadata !46, metadata !500, i32 423, i32 3, i32 3, i32 260} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1328 = metadata !{i32 424, i32 17, metadata !500, null}
!1329 = metadata !{i32 426, i32 1, metadata !500, null}
!1330 = metadata !{i32 786689, metadata !497, metadata !"ls", metadata !47, i32 16777273, metadata !312, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ls] [line 57]
!1331 = metadata !{i32 57, i32 29, metadata !497, null}
!1332 = metadata !{i32 786689, metadata !497, metadata !"c", metadata !47, i32 33554489, metadata !87, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [c] [line 57]
!1333 = metadata !{i32 57, i32 37, metadata !497, null}
!1334 = metadata !{i32 786688, metadata !497, metadata !"b", metadata !47, i32 58, metadata !430, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b] [line 58]
!1335 = metadata !{i32 58, i32 12, metadata !497, null} ; [ DW_TAG_imported_module ]
!1336 = metadata !{i32 58, i32 3, metadata !497, null} ; [ DW_TAG_imported_module ]
!1337 = metadata !{i32 59, i32 7, metadata !1338, null}
!1338 = metadata !{i32 786443, metadata !46, metadata !497, i32 59, i32 7, i32 0, i32 72} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1339 = metadata !{i32 786688, metadata !1340, metadata !"newsize", metadata !47, i32 60, metadata !110, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [newsize] [line 60]
!1340 = metadata !{i32 786443, metadata !46, metadata !1338, i32 59, i32 49, i32 0, i32 73} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1341 = metadata !{i32 60, i32 12, metadata !1340, null}
!1342 = metadata !{i32 61, i32 9, metadata !1343, null}
!1343 = metadata !{i32 786443, metadata !46, metadata !1340, i32 61, i32 9, i32 0, i32 74} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1344 = metadata !{i32 62, i32 7, metadata !1343, null}
!1345 = metadata !{i32 63, i32 5, metadata !1340, null}
!1346 = metadata !{i32 64, i32 5, metadata !1340, null}
!1347 = metadata !{i32 65, i32 3, metadata !1340, null}
!1348 = metadata !{i32 66, i32 3, metadata !497, null}
!1349 = metadata !{i32 67, i32 1, metadata !497, null}
!1350 = metadata !{i32 786689, metadata !493, metadata !"ls", metadata !47, i32 16777430, metadata !312, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ls] [line 214]
!1351 = metadata !{i32 214, i32 36, metadata !493, null}
!1352 = metadata !{i32 786689, metadata !493, metadata !"seminfo", metadata !47, i32 33554646, metadata !492, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [seminfo] [line 214]
!1353 = metadata !{i32 214, i32 49, metadata !493, null}
!1354 = metadata !{i32 786688, metadata !493, metadata !"obj", metadata !47, i32 215, metadata !76, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [obj] [line 215]
!1355 = metadata !{i32 215, i32 10, metadata !493, null}
!1356 = metadata !{i32 786688, metadata !493, metadata !"expo", metadata !47, i32 216, metadata !279, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [expo] [line 216]
!1357 = metadata !{i32 216, i32 15, metadata !493, null}
!1358 = metadata !{i32 216, i32 3, metadata !493, null}
!1359 = metadata !{i32 786688, metadata !493, metadata !"first", metadata !47, i32 217, metadata !87, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [first] [line 217]
!1360 = metadata !{i32 217, i32 7, metadata !493, null}
!1361 = metadata !{i32 217, i32 3, metadata !493, null}
!1362 = metadata !{i32 219, i32 3, metadata !493, null}
!1363 = metadata !{i32 219, i32 3, metadata !1364, null}
!1364 = metadata !{i32 786443, metadata !46, metadata !493, i32 219, i32 3, i32 1, i32 262} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1365 = metadata !{i32 219, i32 3, metadata !1366, null}
!1366 = metadata !{i32 786443, metadata !46, metadata !493, i32 219, i32 3, i32 2, i32 263} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1367 = metadata !{i32 219, i32 3, metadata !1368, null}
!1368 = metadata !{i32 786443, metadata !46, metadata !1369, i32 219, i32 3, i32 4, i32 265} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1369 = metadata !{i32 786443, metadata !46, metadata !493, i32 219, i32 3, i32 3, i32 264} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1370 = metadata !{i32 220, i32 7, metadata !1371, null}
!1371 = metadata !{i32 786443, metadata !46, metadata !493, i32 220, i32 7, i32 0, i32 60} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1372 = metadata !{i32 220, i32 23, metadata !1373, null}
!1373 = metadata !{i32 786443, metadata !46, metadata !1371, i32 220, i32 23, i32 1, i32 266} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1374 = metadata !{i32 221, i32 5, metadata !1371, null}
!1375 = metadata !{i32 222, i32 3, metadata !1376, null}
!1376 = metadata !{i32 786443, metadata !46, metadata !493, i32 222, i32 3, i32 0, i32 61} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1377 = metadata !{i32 223, i32 9, metadata !1378, null}
!1378 = metadata !{i32 786443, metadata !46, metadata !1379, i32 223, i32 9, i32 0, i32 63} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1379 = metadata !{i32 786443, metadata !46, metadata !1376, i32 222, i32 12, i32 0, i32 62} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1380 = metadata !{i32 224, i32 7, metadata !1378, null}
!1381 = metadata !{i32 225, i32 9, metadata !1382, null}
!1382 = metadata !{i32 786443, metadata !46, metadata !1379, i32 225, i32 9, i32 0, i32 64} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1383 = metadata !{i32 226, i32 7, metadata !1382, null}
!1384 = metadata !{i32 226, i32 7, metadata !1385, null}
!1385 = metadata !{i32 786443, metadata !46, metadata !1382, i32 226, i32 7, i32 1, i32 267} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1386 = metadata !{i32 226, i32 7, metadata !1387, null}
!1387 = metadata !{i32 786443, metadata !46, metadata !1382, i32 226, i32 7, i32 2, i32 268} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1388 = metadata !{i32 226, i32 7, metadata !1389, null}
!1389 = metadata !{i32 786443, metadata !46, metadata !1390, i32 226, i32 7, i32 4, i32 270} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1390 = metadata !{i32 786443, metadata !46, metadata !1382, i32 226, i32 7, i32 3, i32 269} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1391 = metadata !{i32 227, i32 14, metadata !1392, null}
!1392 = metadata !{i32 786443, metadata !46, metadata !1382, i32 227, i32 14, i32 0, i32 65} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1393 = metadata !{i32 228, i32 7, metadata !1392, null}
!1394 = metadata !{i32 228, i32 7, metadata !1395, null}
!1395 = metadata !{i32 786443, metadata !46, metadata !1392, i32 228, i32 7, i32 1, i32 271} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1396 = metadata !{i32 228, i32 7, metadata !1397, null}
!1397 = metadata !{i32 786443, metadata !46, metadata !1392, i32 228, i32 7, i32 2, i32 272} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1398 = metadata !{i32 228, i32 7, metadata !1399, null}
!1399 = metadata !{i32 786443, metadata !46, metadata !1400, i32 228, i32 7, i32 4, i32 274} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1400 = metadata !{i32 786443, metadata !46, metadata !1392, i32 228, i32 7, i32 3, i32 273} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1401 = metadata !{i32 229, i32 10, metadata !1392, null}
!1402 = metadata !{i32 230, i32 3, metadata !1379, null}
!1403 = metadata !{i32 231, i32 3, metadata !493, null}
!1404 = metadata !{i32 232, i32 7, metadata !1405, null}
!1405 = metadata !{i32 786443, metadata !46, metadata !493, i32 232, i32 7, i32 0, i32 66} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1406 = metadata !{i32 233, i32 5, metadata !1405, null}
!1407 = metadata !{i32 234, i32 7, metadata !1408, null}
!1408 = metadata !{i32 786443, metadata !46, metadata !493, i32 234, i32 7, i32 0, i32 67} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1409 = metadata !{i32 235, i32 5, metadata !1410, null}
!1410 = metadata !{i32 786443, metadata !46, metadata !1408, i32 234, i32 26, i32 0, i32 68} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1411 = metadata !{i32 236, i32 5, metadata !1410, null}
!1412 = metadata !{i32 240, i32 5, metadata !1413, null}
!1413 = metadata !{i32 786443, metadata !46, metadata !1408, i32 238, i32 8, i32 0, i32 69} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1414 = metadata !{i32 241, i32 5, metadata !1413, null}
!1415 = metadata !{i32 243, i32 1, metadata !493, null}
!1416 = metadata !{i32 786689, metadata !494, metadata !"ls", metadata !47, i32 16777415, metadata !312, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ls] [line 199]
!1417 = metadata !{i32 199, i32 35, metadata !494, null}
!1418 = metadata !{i32 786689, metadata !494, metadata !"set", metadata !47, i32 33554631, metadata !279, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [set] [line 199]
!1419 = metadata !{i32 199, i32 51, metadata !494, null}
!1420 = metadata !{i32 201, i32 7, metadata !1421, null}
!1421 = metadata !{i32 786443, metadata !46, metadata !494, i32 201, i32 7, i32 0, i32 70} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1422 = metadata !{i32 201, i32 7, metadata !1423, null}
!1423 = metadata !{i32 786443, metadata !46, metadata !1421, i32 201, i32 7, i32 1, i32 275} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1424 = metadata !{i32 202, i32 5, metadata !1425, null}
!1425 = metadata !{i32 786443, metadata !46, metadata !1421, i32 201, i32 55, i32 0, i32 71} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1426 = metadata !{i32 202, i32 5, metadata !1427, null}
!1427 = metadata !{i32 786443, metadata !46, metadata !1425, i32 202, i32 5, i32 1, i32 276} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1428 = metadata !{i32 202, i32 5, metadata !1429, null}
!1429 = metadata !{i32 786443, metadata !46, metadata !1425, i32 202, i32 5, i32 2, i32 277} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1430 = metadata !{i32 202, i32 5, metadata !1431, null}
!1431 = metadata !{i32 786443, metadata !46, metadata !1432, i32 202, i32 5, i32 4, i32 279} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1432 = metadata !{i32 786443, metadata !46, metadata !1425, i32 202, i32 5, i32 3, i32 278} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1433 = metadata !{i32 203, i32 5, metadata !1425, null}
!1434 = metadata !{i32 205, i32 8, metadata !1421, null}
!1435 = metadata !{i32 206, i32 1, metadata !494, null}
!1436 = metadata !{i32 786689, metadata !513, metadata !"ls", metadata !47, i32 16777535, metadata !312, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ls] [line 319]
!1437 = metadata !{i32 319, i32 35, metadata !513, null}
!1438 = metadata !{i32 786688, metadata !513, metadata !"r", metadata !47, i32 320, metadata !87, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 320]
!1439 = metadata !{i32 320, i32 7, metadata !513, null}
!1440 = metadata !{i32 320, i32 11, metadata !513, null}
!1441 = metadata !{i32 321, i32 3, metadata !513, null}
!1442 = metadata !{i32 321, i32 18, metadata !513, null}
!1443 = metadata !{i32 322, i32 3, metadata !513, null}
!1444 = metadata !{i32 323, i32 3, metadata !513, null}
!1445 = metadata !{i32 786689, metadata !507, metadata !"ls", metadata !47, i32 16777561, metadata !312, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ls] [line 345]
!1446 = metadata !{i32 345, i32 32, metadata !507, null}
!1447 = metadata !{i32 786688, metadata !507, metadata !"buff", metadata !47, i32 346, metadata !1448, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buff] [line 346]
!1448 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 64, i64 8, i32 0, i32 0, metadata !281, metadata !1449, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 64, align 8, offset 0] [from char]
!1449 = metadata !{metadata !1450}
!1450 = metadata !{i32 786465, i64 0, i64 8}      ; [ DW_TAG_subrange_type ] [0, 7]
!1451 = metadata !{i32 346, i32 8, metadata !507, null}
!1452 = metadata !{i32 786688, metadata !507, metadata !"n", metadata !47, i32 347, metadata !87, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 347]
!1453 = metadata !{i32 347, i32 7, metadata !507, null}
!1454 = metadata !{i32 347, i32 11, metadata !507, null}
!1455 = metadata !{i32 347, i32 30, metadata !507, null}
!1456 = metadata !{i32 348, i32 3, metadata !1457, null}
!1457 = metadata !{i32 786443, metadata !46, metadata !507, i32 348, i32 3, i32 0, i32 88} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1458 = metadata !{i32 348, i32 3, metadata !1459, null}
!1459 = metadata !{i32 786443, metadata !46, metadata !1460, i32 348, i32 3, i32 2, i32 281} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1460 = metadata !{i32 786443, metadata !46, metadata !1457, i32 348, i32 3, i32 1, i32 280} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1461 = metadata !{i32 349, i32 5, metadata !1457, null}
!1462 = metadata !{i32 348, i32 17, metadata !1457, null}
!1463 = metadata !{i32 350, i32 1, metadata !507, null}
!1464 = metadata !{i32 786689, metadata !504, metadata !"ls", metadata !47, i32 16777519, metadata !312, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ls] [line 303]
!1465 = metadata !{i32 303, i32 33, metadata !504, null}
!1466 = metadata !{i32 786689, metadata !504, metadata !"c", metadata !47, i32 33554735, metadata !87, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [c] [line 303]
!1467 = metadata !{i32 303, i32 41, metadata !504, null}
!1468 = metadata !{i32 786689, metadata !504, metadata !"msg", metadata !47, i32 50331951, metadata !279, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [msg] [line 303]
!1469 = metadata !{i32 303, i32 56, metadata !504, null}
!1470 = metadata !{i32 304, i32 7, metadata !1471, null}
!1471 = metadata !{i32 786443, metadata !46, metadata !504, i32 304, i32 7, i32 0, i32 85} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1472 = metadata !{i32 305, i32 9, metadata !1473, null}
!1473 = metadata !{i32 786443, metadata !46, metadata !1474, i32 305, i32 9, i32 0, i32 87} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1474 = metadata !{i32 786443, metadata !46, metadata !1471, i32 304, i32 11, i32 0, i32 86} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1475 = metadata !{i32 306, i32 7, metadata !1473, null}
!1476 = metadata !{i32 306, i32 7, metadata !1477, null}
!1477 = metadata !{i32 786443, metadata !46, metadata !1473, i32 306, i32 7, i32 1, i32 282} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1478 = metadata !{i32 306, i32 7, metadata !1479, null}
!1479 = metadata !{i32 786443, metadata !46, metadata !1473, i32 306, i32 7, i32 2, i32 283} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1480 = metadata !{i32 306, i32 7, metadata !1481, null}
!1481 = metadata !{i32 786443, metadata !46, metadata !1482, i32 306, i32 7, i32 4, i32 285} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1482 = metadata !{i32 786443, metadata !46, metadata !1473, i32 306, i32 7, i32 3, i32 284} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1483 = metadata !{i32 307, i32 5, metadata !1474, null}
!1484 = metadata !{i32 309, i32 1, metadata !504, null}
!1485 = metadata !{i32 786689, metadata !503, metadata !"ls", metadata !47, i32 16777569, metadata !312, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ls] [line 353]
!1486 = metadata !{i32 353, i32 34, metadata !503, null}
!1487 = metadata !{i32 786688, metadata !503, metadata !"i", metadata !47, i32 354, metadata !87, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 354]
!1488 = metadata !{i32 354, i32 7, metadata !503, null}
!1489 = metadata !{i32 786688, metadata !503, metadata !"r", metadata !47, i32 355, metadata !87, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 355]
!1490 = metadata !{i32 355, i32 7, metadata !503, null}
!1491 = metadata !{i32 355, i32 3, metadata !503, null}
!1492 = metadata !{i32 356, i32 8, metadata !1493, null}
!1493 = metadata !{i32 786443, metadata !46, metadata !503, i32 356, i32 3, i32 0, i32 83} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1494 = metadata !{i32 356, i32 8, metadata !1495, null}
!1495 = metadata !{i32 786443, metadata !46, metadata !1496, i32 356, i32 8, i32 4, i32 293} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1496 = metadata !{i32 786443, metadata !46, metadata !1493, i32 356, i32 8, i32 1, i32 286} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1497 = metadata !{i32 356, i32 8, metadata !1498, null}
!1498 = metadata !{i32 786443, metadata !46, metadata !1493, i32 356, i32 8, i32 2, i32 287} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1499 = metadata !{i32 356, i32 8, metadata !1500, null}
!1500 = metadata !{i32 786443, metadata !46, metadata !1493, i32 356, i32 8, i32 3, i32 288} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1501 = metadata !{i32 357, i32 5, metadata !1502, null}
!1502 = metadata !{i32 786443, metadata !46, metadata !1493, i32 356, i32 52, i32 0, i32 84} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1503 = metadata !{i32 358, i32 5, metadata !1502, null}
!1504 = metadata !{i32 358, i32 5, metadata !1505, null}
!1505 = metadata !{i32 786443, metadata !46, metadata !1502, i32 358, i32 5, i32 1, i32 289} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1506 = metadata !{i32 358, i32 5, metadata !1507, null}
!1507 = metadata !{i32 786443, metadata !46, metadata !1502, i32 358, i32 5, i32 2, i32 290} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1508 = metadata !{i32 358, i32 5, metadata !1509, null}
!1509 = metadata !{i32 786443, metadata !46, metadata !1510, i32 358, i32 5, i32 4, i32 292} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1510 = metadata !{i32 786443, metadata !46, metadata !1502, i32 358, i32 5, i32 3, i32 291} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1511 = metadata !{i32 359, i32 3, metadata !1502, null}
!1512 = metadata !{i32 356, i32 47, metadata !1493, null}
!1513 = metadata !{i32 360, i32 3, metadata !503, null}
!1514 = metadata !{i32 361, i32 3, metadata !503, null}
!1515 = metadata !{i32 362, i32 3, metadata !503, null}
!1516 = metadata !{i32 786689, metadata !508, metadata !"ls", metadata !47, i32 16777543, metadata !312, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ls] [line 327]
!1517 = metadata !{i32 327, i32 45, metadata !508, null}
!1518 = metadata !{i32 786688, metadata !508, metadata !"r", metadata !47, i32 328, metadata !511, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 328]
!1519 = metadata !{i32 328, i32 17, metadata !508, null}
!1520 = metadata !{i32 786688, metadata !508, metadata !"i", metadata !47, i32 329, metadata !87, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 329]
!1521 = metadata !{i32 329, i32 7, metadata !508, null}
!1522 = metadata !{i32 329, i32 3, metadata !508, null}
!1523 = metadata !{i32 330, i32 3, metadata !508, null}
!1524 = metadata !{i32 330, i32 3, metadata !1525, null}
!1525 = metadata !{i32 786443, metadata !46, metadata !508, i32 330, i32 3, i32 1, i32 294} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1526 = metadata !{i32 330, i32 3, metadata !1527, null}
!1527 = metadata !{i32 786443, metadata !46, metadata !508, i32 330, i32 3, i32 2, i32 295} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1528 = metadata !{i32 330, i32 3, metadata !1529, null}
!1529 = metadata !{i32 786443, metadata !46, metadata !1530, i32 330, i32 3, i32 4, i32 297} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1530 = metadata !{i32 786443, metadata !46, metadata !508, i32 330, i32 3, i32 3, i32 296} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1531 = metadata !{i32 331, i32 3, metadata !508, null}
!1532 = metadata !{i32 332, i32 7, metadata !508, null}
!1533 = metadata !{i32 333, i32 3, metadata !508, null}
!1534 = metadata !{i32 333, i32 11, metadata !1535, null}
!1535 = metadata !{i32 786443, metadata !46, metadata !508, i32 333, i32 11, i32 1, i32 298} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1536 = metadata !{i32 333, i32 11, metadata !1537, null}
!1537 = metadata !{i32 786443, metadata !46, metadata !508, i32 333, i32 11, i32 2, i32 299} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1538 = metadata !{i32 333, i32 11, metadata !1539, null}
!1539 = metadata !{i32 786443, metadata !46, metadata !508, i32 333, i32 11, i32 3, i32 300} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1540 = metadata !{i32 333, i32 11, metadata !508, null}
!1541 = metadata !{i32 333, i32 11, metadata !1542, null}
!1542 = metadata !{i32 786443, metadata !46, metadata !1543, i32 333, i32 11, i32 5, i32 302} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1543 = metadata !{i32 786443, metadata !46, metadata !508, i32 333, i32 11, i32 4, i32 301} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1544 = metadata !{i32 334, i32 5, metadata !1545, null}
!1545 = metadata !{i32 786443, metadata !46, metadata !508, i32 333, i32 55, i32 0, i32 89} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1546 = metadata !{i32 335, i32 5, metadata !1545, null}
!1547 = metadata !{i32 335, i32 20, metadata !1545, null}
!1548 = metadata !{i32 336, i32 5, metadata !1545, null}
!1549 = metadata !{i32 337, i32 3, metadata !1545, null}
!1550 = metadata !{i32 338, i32 3, metadata !508, null}
!1551 = metadata !{i32 339, i32 3, metadata !508, null}
!1552 = metadata !{i32 339, i32 3, metadata !1553, null}
!1553 = metadata !{i32 786443, metadata !46, metadata !508, i32 339, i32 3, i32 1, i32 303} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1554 = metadata !{i32 339, i32 3, metadata !1555, null}
!1555 = metadata !{i32 786443, metadata !46, metadata !508, i32 339, i32 3, i32 2, i32 304} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1556 = metadata !{i32 339, i32 3, metadata !1557, null}
!1557 = metadata !{i32 786443, metadata !46, metadata !1558, i32 339, i32 3, i32 4, i32 306} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1558 = metadata !{i32 786443, metadata !46, metadata !508, i32 339, i32 3, i32 3, i32 305} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1559 = metadata !{i32 340, i32 3, metadata !508, null}
!1560 = metadata !{i32 341, i32 3, metadata !508, null}
!1561 = metadata !{i32 786689, metadata !512, metadata !"ls", metadata !47, i32 16777528, metadata !312, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ls] [line 312]
!1562 = metadata !{i32 312, i32 31, metadata !512, null}
!1563 = metadata !{i32 313, i32 3, metadata !512, null}
!1564 = metadata !{i32 313, i32 3, metadata !1565, null}
!1565 = metadata !{i32 786443, metadata !46, metadata !512, i32 313, i32 3, i32 1, i32 307} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1566 = metadata !{i32 313, i32 3, metadata !1567, null}
!1567 = metadata !{i32 786443, metadata !46, metadata !512, i32 313, i32 3, i32 2, i32 308} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1568 = metadata !{i32 313, i32 3, metadata !1569, null}
!1569 = metadata !{i32 786443, metadata !46, metadata !1570, i32 313, i32 3, i32 4, i32 310} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1570 = metadata !{i32 786443, metadata !46, metadata !512, i32 313, i32 3, i32 3, i32 309} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1571 = metadata !{i32 314, i32 3, metadata !512, null}
!1572 = metadata !{i32 315, i32 10, metadata !512, null}
!1573 = metadata !{i32 786689, metadata !525, metadata !"ls", metadata !47, i32 16777313, metadata !312, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ls] [line 97]
!1574 = metadata !{i32 97, i32 40, metadata !525, null}
!1575 = metadata !{i32 786689, metadata !525, metadata !"token", metadata !47, i32 33554529, metadata !87, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [token] [line 97]
!1576 = metadata !{i32 97, i32 48, metadata !525, null}
!1577 = metadata !{i32 98, i32 3, metadata !525, null}
!1578 = metadata !{i32 101, i32 7, metadata !1579, null}
!1579 = metadata !{i32 786443, metadata !46, metadata !525, i32 98, i32 18, i32 0, i32 109} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/llex.c]
!1580 = metadata !{i32 102, i32 14, metadata !1579, null}
!1581 = metadata !{i32 104, i32 14, metadata !1579, null}
!1582 = metadata !{i32 106, i32 1, metadata !525, null}
