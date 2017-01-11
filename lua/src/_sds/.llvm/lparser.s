; ModuleID = 'C:/Users/DevolutionX/workspace/lua/src/lparser.c'
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-n32-S64"
target triple = "armv7--linux-gnueabihf"

%struct.anon.8 = type { i8, i8 }
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
%struct.Mbuffer = type { i8*, i32, i32 }
%struct.Dyndata = type { %struct.anon.5, %struct.Labellist, %struct.Labellist }
%struct.anon.5 = type { %struct.Vardesc*, i32, i32 }
%struct.Vardesc = type { i16 }
%struct.Labellist = type { %struct.Labeldesc*, i32, i32 }
%struct.Labeldesc = type { %struct.TString*, i32, i32, i8 }
%struct.LexState = type { i32, i32, i32, %struct.Token, %struct.Token, %struct.FuncState*, %struct.lua_State*, %struct.Zio*, %struct.Mbuffer*, %struct.Table*, %struct.Dyndata*, %struct.TString*, %struct.TString* }
%struct.Token = type { i32, %union.SemInfo }
%union.SemInfo = type { double }
%struct.FuncState = type { %struct.Proto*, %struct.FuncState*, %struct.LexState*, %struct.BlockCnt*, i32, i32, i32, i32, i32, i32, i16, i8, i8, i8 }
%struct.BlockCnt = type { %struct.BlockCnt*, i32, i32, i8, i8, i8 }
%union.GCUnion = type { %union.Closure, [88 x i8] }
%union.Closure = type { %struct.CClosure }
%struct.CClosure = type { %struct.GCObject*, i8, i8, i8, %struct.GCObject*, i32 (%struct.lua_State*)*, [1 x %struct.lua_TValue] }
%struct.expdesc = type { i32, %union.anon.6, i32, i32 }
%union.anon.6 = type { i64 }
%struct.LHS_assign = type { %struct.LHS_assign*, %struct.expdesc }
%struct.anon.7 = type { i16, i8, i8 }
%struct.ConsControl = type { %struct.expdesc, %struct.expdesc*, i32, i32, i32 }

@.str = private unnamed_addr constant [34 x i8] c"<%s> at line %d not inside a loop\00", align 1
@.str1 = private unnamed_addr constant [44 x i8] c"no visible label '%s' for <goto> at line %d\00", align 1
@.str2 = private unnamed_addr constant [56 x i8] c"<goto %s> at line %d jumps into the scope of local '%s'\00", align 1
@.str3 = private unnamed_addr constant [6 x i8] c"break\00", align 1
@.str4 = private unnamed_addr constant [13 x i8] c"labels/gotos\00", align 1
@.str5 = private unnamed_addr constant [12 x i8] c"%s expected\00", align 1
@.str6 = private unnamed_addr constant [13 x i8] c"syntax error\00", align 1
@.str7 = private unnamed_addr constant [9 x i8] c"C levels\00", align 1
@priority = internal constant [21 x %struct.anon.8] [%struct.anon.8 { i8 10, i8 10 }, %struct.anon.8 { i8 10, i8 10 }, %struct.anon.8 { i8 11, i8 11 }, %struct.anon.8 { i8 11, i8 11 }, %struct.anon.8 { i8 14, i8 13 }, %struct.anon.8 { i8 11, i8 11 }, %struct.anon.8 { i8 11, i8 11 }, %struct.anon.8 { i8 6, i8 6 }, %struct.anon.8 { i8 4, i8 4 }, %struct.anon.8 { i8 5, i8 5 }, %struct.anon.8 { i8 7, i8 7 }, %struct.anon.8 { i8 7, i8 7 }, %struct.anon.8 { i8 9, i8 8 }, %struct.anon.8 { i8 3, i8 3 }, %struct.anon.8 { i8 3, i8 3 }, %struct.anon.8 { i8 3, i8 3 }, %struct.anon.8 { i8 3, i8 3 }, %struct.anon.8 { i8 3, i8 3 }, %struct.anon.8 { i8 3, i8 3 }, %struct.anon.8 { i8 2, i8 2 }, %struct.anon.8 { i8 1, i8 1 }], align 1
@.str8 = private unnamed_addr constant [43 x i8] c"cannot use '...' outside a vararg function\00", align 1
@.str9 = private unnamed_addr constant [5 x i8] c"self\00", align 1
@.str10 = private unnamed_addr constant [25 x i8] c"<name> or '...' expected\00", align 1
@.str11 = private unnamed_addr constant [16 x i8] c"local variables\00", align 1
@.str12 = private unnamed_addr constant [10 x i8] c"functions\00", align 1
@.str13 = private unnamed_addr constant [23 x i8] c"items in a constructor\00", align 1
@.str14 = private unnamed_addr constant [14 x i8] c"main function\00", align 1
@.str15 = private unnamed_addr constant [20 x i8] c"function at line %d\00", align 1
@.str16 = private unnamed_addr constant [32 x i8] c"too many %s (limit is %d) in %s\00", align 1
@.str17 = private unnamed_addr constant [28 x i8] c"function arguments expected\00", align 1
@.str18 = private unnamed_addr constant [18 x i8] c"unexpected symbol\00", align 1
@.str19 = private unnamed_addr constant [38 x i8] c"label '%s' already defined on line %d\00", align 1
@.str20 = private unnamed_addr constant [21 x i8] c"'=' or 'in' expected\00", align 1
@.str21 = private unnamed_addr constant [16 x i8] c"(for generator)\00", align 1
@.str22 = private unnamed_addr constant [12 x i8] c"(for state)\00", align 1
@.str23 = private unnamed_addr constant [14 x i8] c"(for control)\00", align 1
@.str24 = private unnamed_addr constant [12 x i8] c"(for index)\00", align 1
@.str25 = private unnamed_addr constant [12 x i8] c"(for limit)\00", align 1
@.str26 = private unnamed_addr constant [11 x i8] c"(for step)\00", align 1
@.str27 = private unnamed_addr constant [37 x i8] c"%s expected (to close %s at line %d)\00", align 1
@.str28 = private unnamed_addr constant [9 x i8] c"upvalues\00", align 1

; Function Attrs: nounwind
define hidden %struct.LClosure* @luaY_parser(%struct.lua_State* %L, %struct.Zio* %z, %struct.Mbuffer* %buff, %struct.Dyndata* %dyd, i8* %name, i32 %firstchar) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca %struct.Zio*, align 4
  %3 = alloca %struct.Mbuffer*, align 4
  %4 = alloca %struct.Dyndata*, align 4
  %5 = alloca i8*, align 4
  %6 = alloca i32, align 4
  %lexstate = alloca %struct.LexState, align 8
  %funcstate = alloca %struct.FuncState, align 4
  %cl = alloca %struct.LClosure*, align 4
  %io = alloca %struct.lua_TValue*, align 4
  %x_ = alloca %struct.LClosure*, align 4
  %io1 = alloca %struct.lua_TValue*, align 4
  %x_2 = alloca %struct.Table*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !1180), !dbg !1181
  store %struct.Zio* %z, %struct.Zio** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.Zio** %2}, metadata !1182), !dbg !1183
  store %struct.Mbuffer* %buff, %struct.Mbuffer** %3, align 4
  call void @llvm.dbg.declare(metadata !{%struct.Mbuffer** %3}, metadata !1184), !dbg !1185
  store %struct.Dyndata* %dyd, %struct.Dyndata** %4, align 4
  call void @llvm.dbg.declare(metadata !{%struct.Dyndata** %4}, metadata !1186), !dbg !1187
  store i8* %name, i8** %5, align 4
  call void @llvm.dbg.declare(metadata !{i8** %5}, metadata !1188), !dbg !1189
  store i32 %firstchar, i32* %6, align 4
  call void @llvm.dbg.declare(metadata !{i32* %6}, metadata !1190), !dbg !1191
  call void @llvm.dbg.declare(metadata !{%struct.LexState* %lexstate}, metadata !1192), !dbg !1193
  call void @llvm.dbg.declare(metadata !{%struct.FuncState* %funcstate}, metadata !1194), !dbg !1195
  call void @llvm.dbg.declare(metadata !{%struct.LClosure** %cl}, metadata !1196), !dbg !1197
  %7 = load %struct.lua_State** %1, align 4, !dbg !1198
  %8 = call %struct.LClosure* @luaF_newLclosure(%struct.lua_State* %7, i32 1), !dbg !1198
  store %struct.LClosure* %8, %struct.LClosure** %cl, align 4, !dbg !1198
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %io}, metadata !1199), !dbg !1201
  %9 = load %struct.lua_State** %1, align 4, !dbg !1201
  %10 = getelementptr inbounds %struct.lua_State* %9, i32 0, i32 5, !dbg !1201
  %11 = load %struct.lua_TValue** %10, align 4, !dbg !1201
  store %struct.lua_TValue* %11, %struct.lua_TValue** %io, align 4, !dbg !1201
  call void @llvm.dbg.declare(metadata !{%struct.LClosure** %x_}, metadata !1202), !dbg !1201
  %12 = load %struct.LClosure** %cl, align 4, !dbg !1201
  store %struct.LClosure* %12, %struct.LClosure** %x_, align 4, !dbg !1201
  %13 = load %struct.LClosure** %x_, align 4, !dbg !1201
  %14 = bitcast %struct.LClosure* %13 to %union.GCUnion*, !dbg !1201
  %15 = bitcast %union.GCUnion* %14 to %struct.GCObject*, !dbg !1201
  %16 = load %struct.lua_TValue** %io, align 4, !dbg !1201
  %17 = getelementptr inbounds %struct.lua_TValue* %16, i32 0, i32 0, !dbg !1201
  %18 = bitcast %union.Value* %17 to %struct.GCObject**, !dbg !1201
  store %struct.GCObject* %15, %struct.GCObject** %18, align 4, !dbg !1201
  %19 = load %struct.lua_TValue** %io, align 4, !dbg !1201
  %20 = getelementptr inbounds %struct.lua_TValue* %19, i32 0, i32 1, !dbg !1201
  store i32 70, i32* %20, align 4, !dbg !1201
  %21 = load %struct.lua_State** %1, align 4, !dbg !1203
  call void @luaD_inctop(%struct.lua_State* %21), !dbg !1203
  %22 = load %struct.lua_State** %1, align 4, !dbg !1204
  %23 = call %struct.Table* @luaH_new(%struct.lua_State* %22), !dbg !1204
  %24 = getelementptr inbounds %struct.LexState* %lexstate, i32 0, i32 9, !dbg !1204
  store %struct.Table* %23, %struct.Table** %24, align 4, !dbg !1204
  call void @llvm.dbg.declare(metadata !{%struct.lua_TValue** %io1}, metadata !1205), !dbg !1207
  %25 = load %struct.lua_State** %1, align 4, !dbg !1207
  %26 = getelementptr inbounds %struct.lua_State* %25, i32 0, i32 5, !dbg !1207
  %27 = load %struct.lua_TValue** %26, align 4, !dbg !1207
  store %struct.lua_TValue* %27, %struct.lua_TValue** %io1, align 4, !dbg !1207
  call void @llvm.dbg.declare(metadata !{%struct.Table** %x_2}, metadata !1208), !dbg !1207
  %28 = getelementptr inbounds %struct.LexState* %lexstate, i32 0, i32 9, !dbg !1207
  %29 = load %struct.Table** %28, align 4, !dbg !1207
  store %struct.Table* %29, %struct.Table** %x_2, align 4, !dbg !1207
  %30 = load %struct.Table** %x_2, align 4, !dbg !1207
  %31 = bitcast %struct.Table* %30 to %union.GCUnion*, !dbg !1207
  %32 = bitcast %union.GCUnion* %31 to %struct.GCObject*, !dbg !1207
  %33 = load %struct.lua_TValue** %io1, align 4, !dbg !1207
  %34 = getelementptr inbounds %struct.lua_TValue* %33, i32 0, i32 0, !dbg !1207
  %35 = bitcast %union.Value* %34 to %struct.GCObject**, !dbg !1207
  store %struct.GCObject* %32, %struct.GCObject** %35, align 4, !dbg !1207
  %36 = load %struct.lua_TValue** %io1, align 4, !dbg !1207
  %37 = getelementptr inbounds %struct.lua_TValue* %36, i32 0, i32 1, !dbg !1207
  store i32 69, i32* %37, align 4, !dbg !1207
  %38 = load %struct.lua_State** %1, align 4, !dbg !1209
  call void @luaD_inctop(%struct.lua_State* %38), !dbg !1209
  %39 = load %struct.lua_State** %1, align 4, !dbg !1210
  %40 = call %struct.Proto* @luaF_newproto(%struct.lua_State* %39), !dbg !1210
  %41 = load %struct.LClosure** %cl, align 4, !dbg !1210
  %42 = getelementptr inbounds %struct.LClosure* %41, i32 0, i32 5, !dbg !1210
  store %struct.Proto* %40, %struct.Proto** %42, align 4, !dbg !1210
  %43 = getelementptr inbounds %struct.FuncState* %funcstate, i32 0, i32 0, !dbg !1210
  store %struct.Proto* %40, %struct.Proto** %43, align 4, !dbg !1210
  %44 = load %struct.lua_State** %1, align 4, !dbg !1211
  %45 = load i8** %5, align 4, !dbg !1211
  %46 = call %struct.TString* @luaS_new(%struct.lua_State* %44, i8* %45), !dbg !1211
  %47 = getelementptr inbounds %struct.FuncState* %funcstate, i32 0, i32 0, !dbg !1211
  %48 = load %struct.Proto** %47, align 4, !dbg !1211
  %49 = getelementptr inbounds %struct.Proto* %48, i32 0, i32 21, !dbg !1211
  store %struct.TString* %46, %struct.TString** %49, align 4, !dbg !1211
  %50 = load %struct.Mbuffer** %3, align 4, !dbg !1212
  %51 = getelementptr inbounds %struct.LexState* %lexstate, i32 0, i32 8, !dbg !1212
  store %struct.Mbuffer* %50, %struct.Mbuffer** %51, align 4, !dbg !1212
  %52 = load %struct.Dyndata** %4, align 4, !dbg !1213
  %53 = getelementptr inbounds %struct.LexState* %lexstate, i32 0, i32 10, !dbg !1213
  store %struct.Dyndata* %52, %struct.Dyndata** %53, align 4, !dbg !1213
  %54 = load %struct.Dyndata** %4, align 4, !dbg !1214
  %55 = getelementptr inbounds %struct.Dyndata* %54, i32 0, i32 2, !dbg !1214
  %56 = getelementptr inbounds %struct.Labellist* %55, i32 0, i32 1, !dbg !1214
  store i32 0, i32* %56, align 4, !dbg !1214
  %57 = load %struct.Dyndata** %4, align 4, !dbg !1214
  %58 = getelementptr inbounds %struct.Dyndata* %57, i32 0, i32 1, !dbg !1214
  %59 = getelementptr inbounds %struct.Labellist* %58, i32 0, i32 1, !dbg !1214
  store i32 0, i32* %59, align 4, !dbg !1214
  %60 = load %struct.Dyndata** %4, align 4, !dbg !1214
  %61 = getelementptr inbounds %struct.Dyndata* %60, i32 0, i32 0, !dbg !1214
  %62 = getelementptr inbounds %struct.anon.5* %61, i32 0, i32 1, !dbg !1214
  store i32 0, i32* %62, align 4, !dbg !1214
  %63 = load %struct.lua_State** %1, align 4, !dbg !1215
  %64 = load %struct.Zio** %2, align 4, !dbg !1215
  %65 = getelementptr inbounds %struct.FuncState* %funcstate, i32 0, i32 0, !dbg !1215
  %66 = load %struct.Proto** %65, align 4, !dbg !1215
  %67 = getelementptr inbounds %struct.Proto* %66, i32 0, i32 21, !dbg !1215
  %68 = load %struct.TString** %67, align 4, !dbg !1215
  %69 = load i32* %6, align 4, !dbg !1215
  call void @luaX_setinput(%struct.lua_State* %63, %struct.LexState* %lexstate, %struct.Zio* %64, %struct.TString* %68, i32 %69), !dbg !1215
  call void @mainfunc(%struct.LexState* %lexstate, %struct.FuncState* %funcstate), !dbg !1216
  %70 = load %struct.lua_State** %1, align 4, !dbg !1217
  %71 = getelementptr inbounds %struct.lua_State* %70, i32 0, i32 5, !dbg !1217
  %72 = load %struct.lua_TValue** %71, align 4, !dbg !1217
  %73 = getelementptr inbounds %struct.lua_TValue* %72, i32 -1, !dbg !1217
  store %struct.lua_TValue* %73, %struct.lua_TValue** %71, align 4, !dbg !1217
  %74 = load %struct.LClosure** %cl, align 4, !dbg !1218
  ret %struct.LClosure* %74, !dbg !1218
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

declare hidden %struct.LClosure* @luaF_newLclosure(%struct.lua_State*, i32) #2

declare hidden void @luaD_inctop(%struct.lua_State*) #2

declare hidden %struct.Table* @luaH_new(%struct.lua_State*) #2

declare hidden %struct.Proto* @luaF_newproto(%struct.lua_State*) #2

declare hidden %struct.TString* @luaS_new(%struct.lua_State*, i8*) #2

declare hidden void @luaX_setinput(%struct.lua_State*, %struct.LexState*, %struct.Zio*, %struct.TString*, i32) #2

; Function Attrs: nounwind
define internal void @mainfunc(%struct.LexState* %ls, %struct.FuncState* %fs) #0 {
  %1 = alloca %struct.LexState*, align 4
  %2 = alloca %struct.FuncState*, align 4
  %bl = alloca %struct.BlockCnt, align 4
  %v = alloca %struct.expdesc, align 8
  store %struct.LexState* %ls, %struct.LexState** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.LexState** %1}, metadata !1219), !dbg !1220
  store %struct.FuncState* %fs, %struct.FuncState** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.FuncState** %2}, metadata !1221), !dbg !1222
  call void @llvm.dbg.declare(metadata !{%struct.BlockCnt* %bl}, metadata !1223), !dbg !1224
  call void @llvm.dbg.declare(metadata !{%struct.expdesc* %v}, metadata !1225), !dbg !1226
  %3 = load %struct.LexState** %1, align 4, !dbg !1227
  %4 = load %struct.FuncState** %2, align 4, !dbg !1227
  call void @open_func(%struct.LexState* %3, %struct.FuncState* %4, %struct.BlockCnt* %bl), !dbg !1227
  %5 = load %struct.FuncState** %2, align 4, !dbg !1228
  %6 = getelementptr inbounds %struct.FuncState* %5, i32 0, i32 0, !dbg !1228
  %7 = load %struct.Proto** %6, align 4, !dbg !1228
  %8 = getelementptr inbounds %struct.Proto* %7, i32 0, i32 4, !dbg !1228
  store i8 2, i8* %8, align 1, !dbg !1228
  call void @init_exp(%struct.expdesc* %v, i32 8, i32 0), !dbg !1229
  %9 = load %struct.FuncState** %2, align 4, !dbg !1230
  %10 = load %struct.LexState** %1, align 4, !dbg !1230
  %11 = getelementptr inbounds %struct.LexState* %10, i32 0, i32 12, !dbg !1230
  %12 = load %struct.TString** %11, align 4, !dbg !1230
  %13 = call i32 @newupvalue(%struct.FuncState* %9, %struct.TString* %12, %struct.expdesc* %v), !dbg !1230
  %14 = load %struct.LexState** %1, align 4, !dbg !1231
  call void @luaX_next(%struct.LexState* %14), !dbg !1231
  %15 = load %struct.LexState** %1, align 4, !dbg !1232
  call void @statlist(%struct.LexState* %15), !dbg !1232
  %16 = load %struct.LexState** %1, align 4, !dbg !1233
  call void @check(%struct.LexState* %16, i32 289), !dbg !1233
  %17 = load %struct.LexState** %1, align 4, !dbg !1234
  call void @close_func(%struct.LexState* %17), !dbg !1234
  ret void, !dbg !1235
}

; Function Attrs: nounwind
define internal void @open_func(%struct.LexState* %ls, %struct.FuncState* %fs, %struct.BlockCnt* %bl) #0 {
  %1 = alloca %struct.LexState*, align 4
  %2 = alloca %struct.FuncState*, align 4
  %3 = alloca %struct.BlockCnt*, align 4
  %f = alloca %struct.Proto*, align 4
  store %struct.LexState* %ls, %struct.LexState** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.LexState** %1}, metadata !1236), !dbg !1237
  store %struct.FuncState* %fs, %struct.FuncState** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.FuncState** %2}, metadata !1238), !dbg !1239
  store %struct.BlockCnt* %bl, %struct.BlockCnt** %3, align 4
  call void @llvm.dbg.declare(metadata !{%struct.BlockCnt** %3}, metadata !1240), !dbg !1241
  call void @llvm.dbg.declare(metadata !{%struct.Proto** %f}, metadata !1242), !dbg !1243
  %4 = load %struct.LexState** %1, align 4, !dbg !1244
  %5 = getelementptr inbounds %struct.LexState* %4, i32 0, i32 5, !dbg !1244
  %6 = load %struct.FuncState** %5, align 4, !dbg !1244
  %7 = load %struct.FuncState** %2, align 4, !dbg !1244
  %8 = getelementptr inbounds %struct.FuncState* %7, i32 0, i32 1, !dbg !1244
  store %struct.FuncState* %6, %struct.FuncState** %8, align 4, !dbg !1244
  %9 = load %struct.LexState** %1, align 4, !dbg !1245
  %10 = load %struct.FuncState** %2, align 4, !dbg !1245
  %11 = getelementptr inbounds %struct.FuncState* %10, i32 0, i32 2, !dbg !1245
  store %struct.LexState* %9, %struct.LexState** %11, align 4, !dbg !1245
  %12 = load %struct.FuncState** %2, align 4, !dbg !1246
  %13 = load %struct.LexState** %1, align 4, !dbg !1246
  %14 = getelementptr inbounds %struct.LexState* %13, i32 0, i32 5, !dbg !1246
  store %struct.FuncState* %12, %struct.FuncState** %14, align 4, !dbg !1246
  %15 = load %struct.FuncState** %2, align 4, !dbg !1247
  %16 = getelementptr inbounds %struct.FuncState* %15, i32 0, i32 4, !dbg !1247
  store i32 0, i32* %16, align 4, !dbg !1247
  %17 = load %struct.FuncState** %2, align 4, !dbg !1248
  %18 = getelementptr inbounds %struct.FuncState* %17, i32 0, i32 5, !dbg !1248
  store i32 0, i32* %18, align 4, !dbg !1248
  %19 = load %struct.FuncState** %2, align 4, !dbg !1249
  %20 = getelementptr inbounds %struct.FuncState* %19, i32 0, i32 6, !dbg !1249
  store i32 -1, i32* %20, align 4, !dbg !1249
  %21 = load %struct.FuncState** %2, align 4, !dbg !1250
  %22 = getelementptr inbounds %struct.FuncState* %21, i32 0, i32 13, !dbg !1250
  store i8 0, i8* %22, align 1, !dbg !1250
  %23 = load %struct.FuncState** %2, align 4, !dbg !1251
  %24 = getelementptr inbounds %struct.FuncState* %23, i32 0, i32 7, !dbg !1251
  store i32 0, i32* %24, align 4, !dbg !1251
  %25 = load %struct.FuncState** %2, align 4, !dbg !1252
  %26 = getelementptr inbounds %struct.FuncState* %25, i32 0, i32 8, !dbg !1252
  store i32 0, i32* %26, align 4, !dbg !1252
  %27 = load %struct.FuncState** %2, align 4, !dbg !1253
  %28 = getelementptr inbounds %struct.FuncState* %27, i32 0, i32 12, !dbg !1253
  store i8 0, i8* %28, align 1, !dbg !1253
  %29 = load %struct.FuncState** %2, align 4, !dbg !1254
  %30 = getelementptr inbounds %struct.FuncState* %29, i32 0, i32 10, !dbg !1254
  store i16 0, i16* %30, align 2, !dbg !1254
  %31 = load %struct.FuncState** %2, align 4, !dbg !1255
  %32 = getelementptr inbounds %struct.FuncState* %31, i32 0, i32 11, !dbg !1255
  store i8 0, i8* %32, align 1, !dbg !1255
  %33 = load %struct.LexState** %1, align 4, !dbg !1256
  %34 = getelementptr inbounds %struct.LexState* %33, i32 0, i32 10, !dbg !1256
  %35 = load %struct.Dyndata** %34, align 4, !dbg !1256
  %36 = getelementptr inbounds %struct.Dyndata* %35, i32 0, i32 0, !dbg !1256
  %37 = getelementptr inbounds %struct.anon.5* %36, i32 0, i32 1, !dbg !1256
  %38 = load i32* %37, align 4, !dbg !1256
  %39 = load %struct.FuncState** %2, align 4, !dbg !1256
  %40 = getelementptr inbounds %struct.FuncState* %39, i32 0, i32 9, !dbg !1256
  store i32 %38, i32* %40, align 4, !dbg !1256
  %41 = load %struct.FuncState** %2, align 4, !dbg !1257
  %42 = getelementptr inbounds %struct.FuncState* %41, i32 0, i32 3, !dbg !1257
  store %struct.BlockCnt* null, %struct.BlockCnt** %42, align 4, !dbg !1257
  %43 = load %struct.FuncState** %2, align 4, !dbg !1258
  %44 = getelementptr inbounds %struct.FuncState* %43, i32 0, i32 0, !dbg !1258
  %45 = load %struct.Proto** %44, align 4, !dbg !1258
  store %struct.Proto* %45, %struct.Proto** %f, align 4, !dbg !1258
  %46 = load %struct.LexState** %1, align 4, !dbg !1259
  %47 = getelementptr inbounds %struct.LexState* %46, i32 0, i32 11, !dbg !1259
  %48 = load %struct.TString** %47, align 4, !dbg !1259
  %49 = load %struct.Proto** %f, align 4, !dbg !1259
  %50 = getelementptr inbounds %struct.Proto* %49, i32 0, i32 21, !dbg !1259
  store %struct.TString* %48, %struct.TString** %50, align 4, !dbg !1259
  %51 = load %struct.Proto** %f, align 4, !dbg !1260
  %52 = getelementptr inbounds %struct.Proto* %51, i32 0, i32 5, !dbg !1260
  store i8 2, i8* %52, align 1, !dbg !1260
  %53 = load %struct.FuncState** %2, align 4, !dbg !1261
  %54 = load %struct.BlockCnt** %3, align 4, !dbg !1261
  call void @enterblock(%struct.FuncState* %53, %struct.BlockCnt* %54, i8 zeroext 0), !dbg !1261
  ret void, !dbg !1262
}

; Function Attrs: nounwind
define internal void @init_exp(%struct.expdesc* %e, i32 %k, i32 %i) #0 {
  %1 = alloca %struct.expdesc*, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store %struct.expdesc* %e, %struct.expdesc** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.expdesc** %1}, metadata !1263), !dbg !1264
  store i32 %k, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !1265), !dbg !1266
  store i32 %i, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !1267), !dbg !1268
  %4 = load %struct.expdesc** %1, align 4, !dbg !1269
  %5 = getelementptr inbounds %struct.expdesc* %4, i32 0, i32 2, !dbg !1269
  store i32 -1, i32* %5, align 4, !dbg !1269
  %6 = load %struct.expdesc** %1, align 4, !dbg !1269
  %7 = getelementptr inbounds %struct.expdesc* %6, i32 0, i32 3, !dbg !1269
  store i32 -1, i32* %7, align 4, !dbg !1269
  %8 = load i32* %2, align 4, !dbg !1270
  %9 = load %struct.expdesc** %1, align 4, !dbg !1270
  %10 = getelementptr inbounds %struct.expdesc* %9, i32 0, i32 0, !dbg !1270
  store i32 %8, i32* %10, align 4, !dbg !1270
  %11 = load i32* %3, align 4, !dbg !1271
  %12 = load %struct.expdesc** %1, align 4, !dbg !1271
  %13 = getelementptr inbounds %struct.expdesc* %12, i32 0, i32 1, !dbg !1271
  %14 = bitcast %union.anon.6* %13 to i32*, !dbg !1271
  store i32 %11, i32* %14, align 4, !dbg !1271
  ret void, !dbg !1272
}

; Function Attrs: nounwind
define internal i32 @newupvalue(%struct.FuncState* %fs, %struct.TString* %name, %struct.expdesc* %v) #0 {
  %1 = alloca %struct.FuncState*, align 4
  %2 = alloca %struct.TString*, align 4
  %3 = alloca %struct.expdesc*, align 4
  %f = alloca %struct.Proto*, align 4
  %oldsize = alloca i32, align 4
  store %struct.FuncState* %fs, %struct.FuncState** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.FuncState** %1}, metadata !1273), !dbg !1274
  store %struct.TString* %name, %struct.TString** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.TString** %2}, metadata !1275), !dbg !1276
  store %struct.expdesc* %v, %struct.expdesc** %3, align 4
  call void @llvm.dbg.declare(metadata !{%struct.expdesc** %3}, metadata !1277), !dbg !1278
  call void @llvm.dbg.declare(metadata !{%struct.Proto** %f}, metadata !1279), !dbg !1280
  %4 = load %struct.FuncState** %1, align 4, !dbg !1281
  %5 = getelementptr inbounds %struct.FuncState* %4, i32 0, i32 0, !dbg !1281
  %6 = load %struct.Proto** %5, align 4, !dbg !1281
  store %struct.Proto* %6, %struct.Proto** %f, align 4, !dbg !1281
  call void @llvm.dbg.declare(metadata !{i32* %oldsize}, metadata !1282), !dbg !1283
  %7 = load %struct.Proto** %f, align 4, !dbg !1284
  %8 = getelementptr inbounds %struct.Proto* %7, i32 0, i32 6, !dbg !1284
  %9 = load i32* %8, align 4, !dbg !1284
  store i32 %9, i32* %oldsize, align 4, !dbg !1284
  %10 = load %struct.FuncState** %1, align 4, !dbg !1285
  %11 = load %struct.FuncState** %1, align 4, !dbg !1285
  %12 = getelementptr inbounds %struct.FuncState* %11, i32 0, i32 12, !dbg !1285
  %13 = load i8* %12, align 1, !dbg !1285
  %14 = zext i8 %13 to i32, !dbg !1285
  %15 = add nsw i32 %14, 1, !dbg !1285
  call void @checklimit(%struct.FuncState* %10, i32 %15, i32 255, i8* getelementptr inbounds ([9 x i8]* @.str28, i32 0, i32 0)), !dbg !1285
  %16 = load %struct.FuncState** %1, align 4, !dbg !1286
  %17 = getelementptr inbounds %struct.FuncState* %16, i32 0, i32 12, !dbg !1286
  %18 = load i8* %17, align 1, !dbg !1286
  %19 = zext i8 %18 to i32, !dbg !1286
  %20 = add nsw i32 %19, 1, !dbg !1286
  %21 = load %struct.Proto** %f, align 4, !dbg !1286
  %22 = getelementptr inbounds %struct.Proto* %21, i32 0, i32 6, !dbg !1286
  %23 = load i32* %22, align 4, !dbg !1286
  %24 = icmp sgt i32 %20, %23, !dbg !1286
  br i1 %24, label %25, label %41, !dbg !1286

; <label>:25                                      ; preds = %0
  %26 = load %struct.FuncState** %1, align 4, !dbg !1288
  %27 = getelementptr inbounds %struct.FuncState* %26, i32 0, i32 2, !dbg !1288
  %28 = load %struct.LexState** %27, align 4, !dbg !1288
  %29 = getelementptr inbounds %struct.LexState* %28, i32 0, i32 6, !dbg !1288
  %30 = load %struct.lua_State** %29, align 4, !dbg !1288
  %31 = load %struct.Proto** %f, align 4, !dbg !1288
  %32 = getelementptr inbounds %struct.Proto* %31, i32 0, i32 19, !dbg !1288
  %33 = load %struct.Upvaldesc** %32, align 4, !dbg !1288
  %34 = bitcast %struct.Upvaldesc* %33 to i8*, !dbg !1288
  %35 = load %struct.Proto** %f, align 4, !dbg !1288
  %36 = getelementptr inbounds %struct.Proto* %35, i32 0, i32 6, !dbg !1288
  %37 = call i8* @luaM_growaux_(%struct.lua_State* %30, i8* %34, i32* %36, i32 8, i32 255, i8* getelementptr inbounds ([9 x i8]* @.str28, i32 0, i32 0)), !dbg !1288
  %38 = bitcast i8* %37 to %struct.Upvaldesc*, !dbg !1288
  %39 = load %struct.Proto** %f, align 4, !dbg !1288
  %40 = getelementptr inbounds %struct.Proto* %39, i32 0, i32 19, !dbg !1288
  store %struct.Upvaldesc* %38, %struct.Upvaldesc** %40, align 4, !dbg !1288
  br label %41, !dbg !1288

; <label>:41                                      ; preds = %25, %0
  br label %42, !dbg !1290

; <label>:42                                      ; preds = %48, %41
  %43 = load i32* %oldsize, align 4, !dbg !1291
  %44 = load %struct.Proto** %f, align 4, !dbg !1291
  %45 = getelementptr inbounds %struct.Proto* %44, i32 0, i32 6, !dbg !1291
  %46 = load i32* %45, align 4, !dbg !1291
  %47 = icmp slt i32 %43, %46, !dbg !1291
  br i1 %47, label %48, label %56, !dbg !1291

; <label>:48                                      ; preds = %42
  %49 = load i32* %oldsize, align 4, !dbg !1293
  %50 = add nsw i32 %49, 1, !dbg !1293
  store i32 %50, i32* %oldsize, align 4, !dbg !1293
  %51 = load %struct.Proto** %f, align 4, !dbg !1293
  %52 = getelementptr inbounds %struct.Proto* %51, i32 0, i32 19, !dbg !1293
  %53 = load %struct.Upvaldesc** %52, align 4, !dbg !1293
  %54 = getelementptr inbounds %struct.Upvaldesc* %53, i32 %49, !dbg !1293
  %55 = getelementptr inbounds %struct.Upvaldesc* %54, i32 0, i32 0, !dbg !1293
  store %struct.TString* null, %struct.TString** %55, align 4, !dbg !1293
  br label %42, !dbg !1293

; <label>:56                                      ; preds = %42
  %57 = load %struct.expdesc** %3, align 4, !dbg !1294
  %58 = getelementptr inbounds %struct.expdesc* %57, i32 0, i32 0, !dbg !1294
  %59 = load i32* %58, align 4, !dbg !1294
  %60 = icmp eq i32 %59, 8, !dbg !1294
  %61 = zext i1 %60 to i32, !dbg !1294
  %62 = trunc i32 %61 to i8, !dbg !1294
  %63 = load %struct.FuncState** %1, align 4, !dbg !1294
  %64 = getelementptr inbounds %struct.FuncState* %63, i32 0, i32 12, !dbg !1294
  %65 = load i8* %64, align 1, !dbg !1294
  %66 = zext i8 %65 to i32, !dbg !1294
  %67 = load %struct.Proto** %f, align 4, !dbg !1294
  %68 = getelementptr inbounds %struct.Proto* %67, i32 0, i32 19, !dbg !1294
  %69 = load %struct.Upvaldesc** %68, align 4, !dbg !1294
  %70 = getelementptr inbounds %struct.Upvaldesc* %69, i32 %66, !dbg !1294
  %71 = getelementptr inbounds %struct.Upvaldesc* %70, i32 0, i32 1, !dbg !1294
  store i8 %62, i8* %71, align 1, !dbg !1294
  %72 = load %struct.expdesc** %3, align 4, !dbg !1295
  %73 = getelementptr inbounds %struct.expdesc* %72, i32 0, i32 1, !dbg !1295
  %74 = bitcast %union.anon.6* %73 to i32*, !dbg !1295
  %75 = load i32* %74, align 4, !dbg !1295
  %76 = trunc i32 %75 to i8, !dbg !1295
  %77 = load %struct.FuncState** %1, align 4, !dbg !1295
  %78 = getelementptr inbounds %struct.FuncState* %77, i32 0, i32 12, !dbg !1295
  %79 = load i8* %78, align 1, !dbg !1295
  %80 = zext i8 %79 to i32, !dbg !1295
  %81 = load %struct.Proto** %f, align 4, !dbg !1295
  %82 = getelementptr inbounds %struct.Proto* %81, i32 0, i32 19, !dbg !1295
  %83 = load %struct.Upvaldesc** %82, align 4, !dbg !1295
  %84 = getelementptr inbounds %struct.Upvaldesc* %83, i32 %80, !dbg !1295
  %85 = getelementptr inbounds %struct.Upvaldesc* %84, i32 0, i32 2, !dbg !1295
  store i8 %76, i8* %85, align 1, !dbg !1295
  %86 = load %struct.TString** %2, align 4, !dbg !1296
  %87 = load %struct.FuncState** %1, align 4, !dbg !1296
  %88 = getelementptr inbounds %struct.FuncState* %87, i32 0, i32 12, !dbg !1296
  %89 = load i8* %88, align 1, !dbg !1296
  %90 = zext i8 %89 to i32, !dbg !1296
  %91 = load %struct.Proto** %f, align 4, !dbg !1296
  %92 = getelementptr inbounds %struct.Proto* %91, i32 0, i32 19, !dbg !1296
  %93 = load %struct.Upvaldesc** %92, align 4, !dbg !1296
  %94 = getelementptr inbounds %struct.Upvaldesc* %93, i32 %90, !dbg !1296
  %95 = getelementptr inbounds %struct.Upvaldesc* %94, i32 0, i32 0, !dbg !1296
  store %struct.TString* %86, %struct.TString** %95, align 4, !dbg !1296
  %96 = load %struct.Proto** %f, align 4, !dbg !1297
  %97 = getelementptr inbounds %struct.Proto* %96, i32 0, i32 2, !dbg !1297
  %98 = load i8* %97, align 1, !dbg !1297
  %99 = zext i8 %98 to i32, !dbg !1297
  %100 = and i32 %99, 4, !dbg !1297
  %101 = icmp ne i32 %100, 0, !dbg !1297
  br i1 %101, label %102, label %121, !dbg !1297

; <label>:102                                     ; preds = %56
  %103 = load %struct.TString** %2, align 4, !dbg !1298
  %104 = getelementptr inbounds %struct.TString* %103, i32 0, i32 2, !dbg !1298
  %105 = load i8* %104, align 1, !dbg !1298
  %106 = zext i8 %105 to i32, !dbg !1298
  %107 = and i32 %106, 3, !dbg !1298
  %108 = icmp ne i32 %107, 0, !dbg !1298
  br i1 %108, label %109, label %121, !dbg !1298

; <label>:109                                     ; preds = %102
  %110 = load %struct.FuncState** %1, align 4, !dbg !1300
  %111 = getelementptr inbounds %struct.FuncState* %110, i32 0, i32 2, !dbg !1300
  %112 = load %struct.LexState** %111, align 4, !dbg !1300
  %113 = getelementptr inbounds %struct.LexState* %112, i32 0, i32 6, !dbg !1300
  %114 = load %struct.lua_State** %113, align 4, !dbg !1300
  %115 = load %struct.Proto** %f, align 4, !dbg !1300
  %116 = bitcast %struct.Proto* %115 to %union.GCUnion*, !dbg !1300
  %117 = bitcast %union.GCUnion* %116 to %struct.GCObject*, !dbg !1300
  %118 = load %struct.TString** %2, align 4, !dbg !1300
  %119 = bitcast %struct.TString* %118 to %union.GCUnion*, !dbg !1300
  %120 = bitcast %union.GCUnion* %119 to %struct.GCObject*, !dbg !1300
  call void @luaC_barrier_(%struct.lua_State* %114, %struct.GCObject* %117, %struct.GCObject* %120), !dbg !1300
  br label %122, !dbg !1300

; <label>:121                                     ; preds = %102, %56
  br label %122, !dbg !1302

; <label>:122                                     ; preds = %121, %109
  %123 = load %struct.FuncState** %1, align 4, !dbg !1305
  %124 = getelementptr inbounds %struct.FuncState* %123, i32 0, i32 12, !dbg !1305
  %125 = load i8* %124, align 1, !dbg !1305
  %126 = add i8 %125, 1, !dbg !1305
  store i8 %126, i8* %124, align 1, !dbg !1305
  %127 = zext i8 %125 to i32, !dbg !1305
  ret i32 %127, !dbg !1305
}

declare hidden void @luaX_next(%struct.LexState*) #2

; Function Attrs: nounwind
define internal void @statlist(%struct.LexState* %ls) #0 {
  %1 = alloca %struct.LexState*, align 4
  store %struct.LexState* %ls, %struct.LexState** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.LexState** %1}, metadata !1306), !dbg !1307
  br label %2, !dbg !1308

; <label>:2                                       ; preds = %15, %0
  %3 = load %struct.LexState** %1, align 4, !dbg !1309
  %4 = call i32 @block_follow(%struct.LexState* %3, i32 1), !dbg !1309
  %5 = icmp ne i32 %4, 0, !dbg !1309
  %6 = xor i1 %5, true, !dbg !1309
  br i1 %6, label %7, label %17, !dbg !1309

; <label>:7                                       ; preds = %2
  %8 = load %struct.LexState** %1, align 4, !dbg !1311
  %9 = getelementptr inbounds %struct.LexState* %8, i32 0, i32 3, !dbg !1311
  %10 = getelementptr inbounds %struct.Token* %9, i32 0, i32 0, !dbg !1311
  %11 = load i32* %10, align 4, !dbg !1311
  %12 = icmp eq i32 %11, 274, !dbg !1311
  br i1 %12, label %13, label %15, !dbg !1311

; <label>:13                                      ; preds = %7
  %14 = load %struct.LexState** %1, align 4, !dbg !1314
  call void @statement(%struct.LexState* %14), !dbg !1314
  br label %17, !dbg !1316

; <label>:15                                      ; preds = %7
  %16 = load %struct.LexState** %1, align 4, !dbg !1317
  call void @statement(%struct.LexState* %16), !dbg !1317
  br label %2, !dbg !1318

; <label>:17                                      ; preds = %13, %2
  ret void, !dbg !1319
}

; Function Attrs: nounwind
define internal void @check(%struct.LexState* %ls, i32 %c) #0 {
  %1 = alloca %struct.LexState*, align 4
  %2 = alloca i32, align 4
  store %struct.LexState* %ls, %struct.LexState** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.LexState** %1}, metadata !1320), !dbg !1321
  store i32 %c, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !1322), !dbg !1323
  %3 = load %struct.LexState** %1, align 4, !dbg !1324
  %4 = getelementptr inbounds %struct.LexState* %3, i32 0, i32 3, !dbg !1324
  %5 = getelementptr inbounds %struct.Token* %4, i32 0, i32 0, !dbg !1324
  %6 = load i32* %5, align 4, !dbg !1324
  %7 = load i32* %2, align 4, !dbg !1324
  %8 = icmp ne i32 %6, %7, !dbg !1324
  br i1 %8, label %9, label %12, !dbg !1324

; <label>:9                                       ; preds = %0
  %10 = load %struct.LexState** %1, align 4, !dbg !1326
  %11 = load i32* %2, align 4, !dbg !1326
  call void @error_expected(%struct.LexState* %10, i32 %11) #6, !dbg !1326
  unreachable, !dbg !1326

; <label>:12                                      ; preds = %0
  ret void, !dbg !1327
}

; Function Attrs: nounwind
define internal void @close_func(%struct.LexState* %ls) #0 {
  %1 = alloca %struct.LexState*, align 4
  %L = alloca %struct.lua_State*, align 4
  %fs = alloca %struct.FuncState*, align 4
  %f = alloca %struct.Proto*, align 4
  store %struct.LexState* %ls, %struct.LexState** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.LexState** %1}, metadata !1328), !dbg !1329
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %L}, metadata !1330), !dbg !1331
  %2 = load %struct.LexState** %1, align 4, !dbg !1332
  %3 = getelementptr inbounds %struct.LexState* %2, i32 0, i32 6, !dbg !1332
  %4 = load %struct.lua_State** %3, align 4, !dbg !1332
  store %struct.lua_State* %4, %struct.lua_State** %L, align 4, !dbg !1332
  call void @llvm.dbg.declare(metadata !{%struct.FuncState** %fs}, metadata !1333), !dbg !1334
  %5 = load %struct.LexState** %1, align 4, !dbg !1335
  %6 = getelementptr inbounds %struct.LexState* %5, i32 0, i32 5, !dbg !1335
  %7 = load %struct.FuncState** %6, align 4, !dbg !1335
  store %struct.FuncState* %7, %struct.FuncState** %fs, align 4, !dbg !1335
  call void @llvm.dbg.declare(metadata !{%struct.Proto** %f}, metadata !1336), !dbg !1337
  %8 = load %struct.FuncState** %fs, align 4, !dbg !1338
  %9 = getelementptr inbounds %struct.FuncState* %8, i32 0, i32 0, !dbg !1338
  %10 = load %struct.Proto** %9, align 4, !dbg !1338
  store %struct.Proto* %10, %struct.Proto** %f, align 4, !dbg !1338
  %11 = load %struct.FuncState** %fs, align 4, !dbg !1339
  call void @luaK_ret(%struct.FuncState* %11, i32 0, i32 0), !dbg !1339
  %12 = load %struct.FuncState** %fs, align 4, !dbg !1340
  call void @leaveblock(%struct.FuncState* %12), !dbg !1340
  %13 = load %struct.FuncState** %fs, align 4, !dbg !1341
  %14 = getelementptr inbounds %struct.FuncState* %13, i32 0, i32 4, !dbg !1341
  %15 = load i32* %14, align 4, !dbg !1341
  %16 = add i32 %15, 1, !dbg !1341
  %17 = icmp ugt i32 %16, 1073741823, !dbg !1341
  br i1 %17, label %18, label %21, !dbg !1341

; <label>:18                                      ; preds = %0
  %19 = load %struct.lua_State** %L, align 4, !dbg !1342
  call void @luaM_toobig(%struct.lua_State* %19) #6, !dbg !1342
  unreachable, !dbg !1342
                                                  ; No predecessors!
  br label %22, !dbg !1341

; <label>:21                                      ; preds = %0
  br label %22, !dbg !1344

; <label>:22                                      ; preds = %21, %20
  %23 = load %struct.lua_State** %L, align 4, !dbg !1346
  %24 = load %struct.Proto** %f, align 4, !dbg !1346
  %25 = getelementptr inbounds %struct.Proto* %24, i32 0, i32 15, !dbg !1346
  %26 = load i32** %25, align 4, !dbg !1346
  %27 = bitcast i32* %26 to i8*, !dbg !1346
  %28 = load %struct.Proto** %f, align 4, !dbg !1346
  %29 = getelementptr inbounds %struct.Proto* %28, i32 0, i32 8, !dbg !1346
  %30 = load i32* %29, align 4, !dbg !1346
  %31 = mul i32 %30, 4, !dbg !1346
  %32 = load %struct.FuncState** %fs, align 4, !dbg !1346
  %33 = getelementptr inbounds %struct.FuncState* %32, i32 0, i32 4, !dbg !1346
  %34 = load i32* %33, align 4, !dbg !1346
  %35 = mul i32 %34, 4, !dbg !1346
  %36 = call i8* @luaM_realloc_(%struct.lua_State* %23, i8* %27, i32 %31, i32 %35), !dbg !1346
  %37 = bitcast i8* %36 to i32*, !dbg !1346
  %38 = load %struct.Proto** %f, align 4, !dbg !1346
  %39 = getelementptr inbounds %struct.Proto* %38, i32 0, i32 15, !dbg !1346
  store i32* %37, i32** %39, align 4, !dbg !1346
  %40 = load %struct.FuncState** %fs, align 4, !dbg !1349
  %41 = getelementptr inbounds %struct.FuncState* %40, i32 0, i32 4, !dbg !1349
  %42 = load i32* %41, align 4, !dbg !1349
  %43 = load %struct.Proto** %f, align 4, !dbg !1349
  %44 = getelementptr inbounds %struct.Proto* %43, i32 0, i32 8, !dbg !1349
  store i32 %42, i32* %44, align 4, !dbg !1349
  %45 = load %struct.FuncState** %fs, align 4, !dbg !1350
  %46 = getelementptr inbounds %struct.FuncState* %45, i32 0, i32 4, !dbg !1350
  %47 = load i32* %46, align 4, !dbg !1350
  %48 = add i32 %47, 1, !dbg !1350
  %49 = icmp ugt i32 %48, 1073741823, !dbg !1350
  br i1 %49, label %50, label %53, !dbg !1350

; <label>:50                                      ; preds = %22
  %51 = load %struct.lua_State** %L, align 4, !dbg !1351
  call void @luaM_toobig(%struct.lua_State* %51) #6, !dbg !1351
  unreachable, !dbg !1351
                                                  ; No predecessors!
  br label %54, !dbg !1350

; <label>:53                                      ; preds = %22
  br label %54, !dbg !1353

; <label>:54                                      ; preds = %53, %52
  %55 = load %struct.lua_State** %L, align 4, !dbg !1355
  %56 = load %struct.Proto** %f, align 4, !dbg !1355
  %57 = getelementptr inbounds %struct.Proto* %56, i32 0, i32 17, !dbg !1355
  %58 = load i32** %57, align 4, !dbg !1355
  %59 = bitcast i32* %58 to i8*, !dbg !1355
  %60 = load %struct.Proto** %f, align 4, !dbg !1355
  %61 = getelementptr inbounds %struct.Proto* %60, i32 0, i32 9, !dbg !1355
  %62 = load i32* %61, align 4, !dbg !1355
  %63 = mul i32 %62, 4, !dbg !1355
  %64 = load %struct.FuncState** %fs, align 4, !dbg !1355
  %65 = getelementptr inbounds %struct.FuncState* %64, i32 0, i32 4, !dbg !1355
  %66 = load i32* %65, align 4, !dbg !1355
  %67 = mul i32 %66, 4, !dbg !1355
  %68 = call i8* @luaM_realloc_(%struct.lua_State* %55, i8* %59, i32 %63, i32 %67), !dbg !1355
  %69 = bitcast i8* %68 to i32*, !dbg !1355
  %70 = load %struct.Proto** %f, align 4, !dbg !1355
  %71 = getelementptr inbounds %struct.Proto* %70, i32 0, i32 17, !dbg !1355
  store i32* %69, i32** %71, align 4, !dbg !1355
  %72 = load %struct.FuncState** %fs, align 4, !dbg !1358
  %73 = getelementptr inbounds %struct.FuncState* %72, i32 0, i32 4, !dbg !1358
  %74 = load i32* %73, align 4, !dbg !1358
  %75 = load %struct.Proto** %f, align 4, !dbg !1358
  %76 = getelementptr inbounds %struct.Proto* %75, i32 0, i32 9, !dbg !1358
  store i32 %74, i32* %76, align 4, !dbg !1358
  %77 = load %struct.FuncState** %fs, align 4, !dbg !1359
  %78 = getelementptr inbounds %struct.FuncState* %77, i32 0, i32 7, !dbg !1359
  %79 = load i32* %78, align 4, !dbg !1359
  %80 = add i32 %79, 1, !dbg !1359
  %81 = icmp ugt i32 %80, 268435455, !dbg !1359
  br i1 %81, label %82, label %85, !dbg !1359

; <label>:82                                      ; preds = %54
  %83 = load %struct.lua_State** %L, align 4, !dbg !1360
  call void @luaM_toobig(%struct.lua_State* %83) #6, !dbg !1360
  unreachable, !dbg !1360
                                                  ; No predecessors!
  br label %86, !dbg !1359

; <label>:85                                      ; preds = %54
  br label %86, !dbg !1362

; <label>:86                                      ; preds = %85, %84
  %87 = load %struct.lua_State** %L, align 4, !dbg !1364
  %88 = load %struct.Proto** %f, align 4, !dbg !1364
  %89 = getelementptr inbounds %struct.Proto* %88, i32 0, i32 14, !dbg !1364
  %90 = load %struct.lua_TValue** %89, align 4, !dbg !1364
  %91 = bitcast %struct.lua_TValue* %90 to i8*, !dbg !1364
  %92 = load %struct.Proto** %f, align 4, !dbg !1364
  %93 = getelementptr inbounds %struct.Proto* %92, i32 0, i32 7, !dbg !1364
  %94 = load i32* %93, align 4, !dbg !1364
  %95 = mul i32 %94, 16, !dbg !1364
  %96 = load %struct.FuncState** %fs, align 4, !dbg !1364
  %97 = getelementptr inbounds %struct.FuncState* %96, i32 0, i32 7, !dbg !1364
  %98 = load i32* %97, align 4, !dbg !1364
  %99 = mul i32 %98, 16, !dbg !1364
  %100 = call i8* @luaM_realloc_(%struct.lua_State* %87, i8* %91, i32 %95, i32 %99), !dbg !1364
  %101 = bitcast i8* %100 to %struct.lua_TValue*, !dbg !1364
  %102 = load %struct.Proto** %f, align 4, !dbg !1364
  %103 = getelementptr inbounds %struct.Proto* %102, i32 0, i32 14, !dbg !1364
  store %struct.lua_TValue* %101, %struct.lua_TValue** %103, align 4, !dbg !1364
  %104 = load %struct.FuncState** %fs, align 4, !dbg !1367
  %105 = getelementptr inbounds %struct.FuncState* %104, i32 0, i32 7, !dbg !1367
  %106 = load i32* %105, align 4, !dbg !1367
  %107 = load %struct.Proto** %f, align 4, !dbg !1367
  %108 = getelementptr inbounds %struct.Proto* %107, i32 0, i32 7, !dbg !1367
  store i32 %106, i32* %108, align 4, !dbg !1367
  %109 = load %struct.FuncState** %fs, align 4, !dbg !1368
  %110 = getelementptr inbounds %struct.FuncState* %109, i32 0, i32 8, !dbg !1368
  %111 = load i32* %110, align 4, !dbg !1368
  %112 = add i32 %111, 1, !dbg !1368
  %113 = icmp ugt i32 %112, 1073741823, !dbg !1368
  br i1 %113, label %114, label %117, !dbg !1368

; <label>:114                                     ; preds = %86
  %115 = load %struct.lua_State** %L, align 4, !dbg !1369
  call void @luaM_toobig(%struct.lua_State* %115) #6, !dbg !1369
  unreachable, !dbg !1369
                                                  ; No predecessors!
  br label %118, !dbg !1368

; <label>:117                                     ; preds = %86
  br label %118, !dbg !1371

; <label>:118                                     ; preds = %117, %116
  %119 = load %struct.lua_State** %L, align 4, !dbg !1373
  %120 = load %struct.Proto** %f, align 4, !dbg !1373
  %121 = getelementptr inbounds %struct.Proto* %120, i32 0, i32 16, !dbg !1373
  %122 = load %struct.Proto*** %121, align 4, !dbg !1373
  %123 = bitcast %struct.Proto** %122 to i8*, !dbg !1373
  %124 = load %struct.Proto** %f, align 4, !dbg !1373
  %125 = getelementptr inbounds %struct.Proto* %124, i32 0, i32 10, !dbg !1373
  %126 = load i32* %125, align 4, !dbg !1373
  %127 = mul i32 %126, 4, !dbg !1373
  %128 = load %struct.FuncState** %fs, align 4, !dbg !1373
  %129 = getelementptr inbounds %struct.FuncState* %128, i32 0, i32 8, !dbg !1373
  %130 = load i32* %129, align 4, !dbg !1373
  %131 = mul i32 %130, 4, !dbg !1373
  %132 = call i8* @luaM_realloc_(%struct.lua_State* %119, i8* %123, i32 %127, i32 %131), !dbg !1373
  %133 = bitcast i8* %132 to %struct.Proto**, !dbg !1373
  %134 = load %struct.Proto** %f, align 4, !dbg !1373
  %135 = getelementptr inbounds %struct.Proto* %134, i32 0, i32 16, !dbg !1373
  store %struct.Proto** %133, %struct.Proto*** %135, align 4, !dbg !1373
  %136 = load %struct.FuncState** %fs, align 4, !dbg !1376
  %137 = getelementptr inbounds %struct.FuncState* %136, i32 0, i32 8, !dbg !1376
  %138 = load i32* %137, align 4, !dbg !1376
  %139 = load %struct.Proto** %f, align 4, !dbg !1376
  %140 = getelementptr inbounds %struct.Proto* %139, i32 0, i32 10, !dbg !1376
  store i32 %138, i32* %140, align 4, !dbg !1376
  %141 = load %struct.lua_State** %L, align 4, !dbg !1377
  %142 = load %struct.Proto** %f, align 4, !dbg !1377
  %143 = getelementptr inbounds %struct.Proto* %142, i32 0, i32 18, !dbg !1377
  %144 = load %struct.LocVar** %143, align 4, !dbg !1377
  %145 = bitcast %struct.LocVar* %144 to i8*, !dbg !1377
  %146 = load %struct.Proto** %f, align 4, !dbg !1377
  %147 = getelementptr inbounds %struct.Proto* %146, i32 0, i32 11, !dbg !1377
  %148 = load i32* %147, align 4, !dbg !1377
  %149 = mul i32 %148, 12, !dbg !1377
  %150 = load %struct.FuncState** %fs, align 4, !dbg !1377
  %151 = getelementptr inbounds %struct.FuncState* %150, i32 0, i32 10, !dbg !1377
  %152 = load i16* %151, align 2, !dbg !1377
  %153 = sext i16 %152 to i32, !dbg !1377
  %154 = mul i32 %153, 12, !dbg !1377
  %155 = call i8* @luaM_realloc_(%struct.lua_State* %141, i8* %145, i32 %149, i32 %154), !dbg !1377
  %156 = bitcast i8* %155 to %struct.LocVar*, !dbg !1377
  %157 = load %struct.Proto** %f, align 4, !dbg !1377
  %158 = getelementptr inbounds %struct.Proto* %157, i32 0, i32 18, !dbg !1377
  store %struct.LocVar* %156, %struct.LocVar** %158, align 4, !dbg !1377
  %159 = load %struct.FuncState** %fs, align 4, !dbg !1378
  %160 = getelementptr inbounds %struct.FuncState* %159, i32 0, i32 10, !dbg !1378
  %161 = load i16* %160, align 2, !dbg !1378
  %162 = sext i16 %161 to i32, !dbg !1378
  %163 = load %struct.Proto** %f, align 4, !dbg !1378
  %164 = getelementptr inbounds %struct.Proto* %163, i32 0, i32 11, !dbg !1378
  store i32 %162, i32* %164, align 4, !dbg !1378
  %165 = load %struct.lua_State** %L, align 4, !dbg !1379
  %166 = load %struct.Proto** %f, align 4, !dbg !1379
  %167 = getelementptr inbounds %struct.Proto* %166, i32 0, i32 19, !dbg !1379
  %168 = load %struct.Upvaldesc** %167, align 4, !dbg !1379
  %169 = bitcast %struct.Upvaldesc* %168 to i8*, !dbg !1379
  %170 = load %struct.Proto** %f, align 4, !dbg !1379
  %171 = getelementptr inbounds %struct.Proto* %170, i32 0, i32 6, !dbg !1379
  %172 = load i32* %171, align 4, !dbg !1379
  %173 = mul i32 %172, 8, !dbg !1379
  %174 = load %struct.FuncState** %fs, align 4, !dbg !1379
  %175 = getelementptr inbounds %struct.FuncState* %174, i32 0, i32 12, !dbg !1379
  %176 = load i8* %175, align 1, !dbg !1379
  %177 = zext i8 %176 to i32, !dbg !1379
  %178 = mul i32 %177, 8, !dbg !1379
  %179 = call i8* @luaM_realloc_(%struct.lua_State* %165, i8* %169, i32 %173, i32 %178), !dbg !1379
  %180 = bitcast i8* %179 to %struct.Upvaldesc*, !dbg !1379
  %181 = load %struct.Proto** %f, align 4, !dbg !1379
  %182 = getelementptr inbounds %struct.Proto* %181, i32 0, i32 19, !dbg !1379
  store %struct.Upvaldesc* %180, %struct.Upvaldesc** %182, align 4, !dbg !1379
  %183 = load %struct.FuncState** %fs, align 4, !dbg !1380
  %184 = getelementptr inbounds %struct.FuncState* %183, i32 0, i32 12, !dbg !1380
  %185 = load i8* %184, align 1, !dbg !1380
  %186 = zext i8 %185 to i32, !dbg !1380
  %187 = load %struct.Proto** %f, align 4, !dbg !1380
  %188 = getelementptr inbounds %struct.Proto* %187, i32 0, i32 6, !dbg !1380
  store i32 %186, i32* %188, align 4, !dbg !1380
  %189 = load %struct.FuncState** %fs, align 4, !dbg !1381
  %190 = getelementptr inbounds %struct.FuncState* %189, i32 0, i32 1, !dbg !1381
  %191 = load %struct.FuncState** %190, align 4, !dbg !1381
  %192 = load %struct.LexState** %1, align 4, !dbg !1381
  %193 = getelementptr inbounds %struct.LexState* %192, i32 0, i32 5, !dbg !1381
  store %struct.FuncState* %191, %struct.FuncState** %193, align 4, !dbg !1381
  %194 = load %struct.lua_State** %L, align 4, !dbg !1382
  %195 = getelementptr inbounds %struct.lua_State* %194, i32 0, i32 6, !dbg !1382
  %196 = load %struct.global_State** %195, align 4, !dbg !1382
  %197 = getelementptr inbounds %struct.global_State* %196, i32 0, i32 3, !dbg !1382
  %198 = load i32* %197, align 4, !dbg !1382
  %199 = icmp sgt i32 %198, 0, !dbg !1382
  br i1 %199, label %200, label %202, !dbg !1382

; <label>:200                                     ; preds = %118
  %201 = load %struct.lua_State** %L, align 4, !dbg !1385
  call void @luaC_step(%struct.lua_State* %201), !dbg !1385
  br label %202, !dbg !1385

; <label>:202                                     ; preds = %200, %118
  ret void, !dbg !1388
}

declare hidden void @luaK_ret(%struct.FuncState*, i32, i32) #2

; Function Attrs: nounwind
define internal void @leaveblock(%struct.FuncState* %fs) #0 {
  %1 = alloca %struct.FuncState*, align 4
  %bl = alloca %struct.BlockCnt*, align 4
  %ls = alloca %struct.LexState*, align 4
  %j = alloca i32, align 4
  store %struct.FuncState* %fs, %struct.FuncState** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.FuncState** %1}, metadata !1389), !dbg !1390
  call void @llvm.dbg.declare(metadata !{%struct.BlockCnt** %bl}, metadata !1391), !dbg !1392
  %2 = load %struct.FuncState** %1, align 4, !dbg !1393
  %3 = getelementptr inbounds %struct.FuncState* %2, i32 0, i32 3, !dbg !1393
  %4 = load %struct.BlockCnt** %3, align 4, !dbg !1393
  store %struct.BlockCnt* %4, %struct.BlockCnt** %bl, align 4, !dbg !1393
  call void @llvm.dbg.declare(metadata !{%struct.LexState** %ls}, metadata !1394), !dbg !1395
  %5 = load %struct.FuncState** %1, align 4, !dbg !1396
  %6 = getelementptr inbounds %struct.FuncState* %5, i32 0, i32 2, !dbg !1396
  %7 = load %struct.LexState** %6, align 4, !dbg !1396
  store %struct.LexState* %7, %struct.LexState** %ls, align 4, !dbg !1396
  %8 = load %struct.BlockCnt** %bl, align 4, !dbg !1397
  %9 = getelementptr inbounds %struct.BlockCnt* %8, i32 0, i32 0, !dbg !1397
  %10 = load %struct.BlockCnt** %9, align 4, !dbg !1397
  %11 = icmp ne %struct.BlockCnt* %10, null, !dbg !1397
  br i1 %11, label %12, label %29, !dbg !1397

; <label>:12                                      ; preds = %0
  %13 = load %struct.BlockCnt** %bl, align 4, !dbg !1399
  %14 = getelementptr inbounds %struct.BlockCnt* %13, i32 0, i32 4, !dbg !1399
  %15 = load i8* %14, align 1, !dbg !1399
  %16 = zext i8 %15 to i32, !dbg !1399
  %17 = icmp ne i32 %16, 0, !dbg !1399
  br i1 %17, label %18, label %29, !dbg !1399

; <label>:18                                      ; preds = %12
  call void @llvm.dbg.declare(metadata !{i32* %j}, metadata !1401), !dbg !1403
  %19 = load %struct.FuncState** %1, align 4, !dbg !1404
  %20 = call i32 @luaK_jump(%struct.FuncState* %19), !dbg !1404
  store i32 %20, i32* %j, align 4, !dbg !1404
  %21 = load %struct.FuncState** %1, align 4, !dbg !1405
  %22 = load i32* %j, align 4, !dbg !1405
  %23 = load %struct.BlockCnt** %bl, align 4, !dbg !1405
  %24 = getelementptr inbounds %struct.BlockCnt* %23, i32 0, i32 3, !dbg !1405
  %25 = load i8* %24, align 1, !dbg !1405
  %26 = zext i8 %25 to i32, !dbg !1405
  call void @luaK_patchclose(%struct.FuncState* %21, i32 %22, i32 %26), !dbg !1405
  %27 = load %struct.FuncState** %1, align 4, !dbg !1406
  %28 = load i32* %j, align 4, !dbg !1406
  call void @luaK_patchtohere(%struct.FuncState* %27, i32 %28), !dbg !1406
  br label %29, !dbg !1407

; <label>:29                                      ; preds = %18, %12, %0
  %30 = load %struct.BlockCnt** %bl, align 4, !dbg !1408
  %31 = getelementptr inbounds %struct.BlockCnt* %30, i32 0, i32 5, !dbg !1408
  %32 = load i8* %31, align 1, !dbg !1408
  %33 = icmp ne i8 %32, 0, !dbg !1408
  br i1 %33, label %34, label %36, !dbg !1408

; <label>:34                                      ; preds = %29
  %35 = load %struct.LexState** %ls, align 4, !dbg !1410
  call void @breaklabel(%struct.LexState* %35), !dbg !1410
  br label %36, !dbg !1410

; <label>:36                                      ; preds = %34, %29
  %37 = load %struct.BlockCnt** %bl, align 4, !dbg !1411
  %38 = getelementptr inbounds %struct.BlockCnt* %37, i32 0, i32 0, !dbg !1411
  %39 = load %struct.BlockCnt** %38, align 4, !dbg !1411
  %40 = load %struct.FuncState** %1, align 4, !dbg !1411
  %41 = getelementptr inbounds %struct.FuncState* %40, i32 0, i32 3, !dbg !1411
  store %struct.BlockCnt* %39, %struct.BlockCnt** %41, align 4, !dbg !1411
  %42 = load %struct.FuncState** %1, align 4, !dbg !1412
  %43 = load %struct.BlockCnt** %bl, align 4, !dbg !1412
  %44 = getelementptr inbounds %struct.BlockCnt* %43, i32 0, i32 3, !dbg !1412
  %45 = load i8* %44, align 1, !dbg !1412
  %46 = zext i8 %45 to i32, !dbg !1412
  call void @removevars(%struct.FuncState* %42, i32 %46), !dbg !1412
  %47 = load %struct.FuncState** %1, align 4, !dbg !1413
  %48 = getelementptr inbounds %struct.FuncState* %47, i32 0, i32 11, !dbg !1413
  %49 = load i8* %48, align 1, !dbg !1413
  %50 = load %struct.FuncState** %1, align 4, !dbg !1413
  %51 = getelementptr inbounds %struct.FuncState* %50, i32 0, i32 13, !dbg !1413
  store i8 %49, i8* %51, align 1, !dbg !1413
  %52 = load %struct.BlockCnt** %bl, align 4, !dbg !1414
  %53 = getelementptr inbounds %struct.BlockCnt* %52, i32 0, i32 1, !dbg !1414
  %54 = load i32* %53, align 4, !dbg !1414
  %55 = load %struct.LexState** %ls, align 4, !dbg !1414
  %56 = getelementptr inbounds %struct.LexState* %55, i32 0, i32 10, !dbg !1414
  %57 = load %struct.Dyndata** %56, align 4, !dbg !1414
  %58 = getelementptr inbounds %struct.Dyndata* %57, i32 0, i32 2, !dbg !1414
  %59 = getelementptr inbounds %struct.Labellist* %58, i32 0, i32 1, !dbg !1414
  store i32 %54, i32* %59, align 4, !dbg !1414
  %60 = load %struct.BlockCnt** %bl, align 4, !dbg !1415
  %61 = getelementptr inbounds %struct.BlockCnt* %60, i32 0, i32 0, !dbg !1415
  %62 = load %struct.BlockCnt** %61, align 4, !dbg !1415
  %63 = icmp ne %struct.BlockCnt* %62, null, !dbg !1415
  br i1 %63, label %64, label %67, !dbg !1415

; <label>:64                                      ; preds = %36
  %65 = load %struct.FuncState** %1, align 4, !dbg !1417
  %66 = load %struct.BlockCnt** %bl, align 4, !dbg !1417
  call void @movegotosout(%struct.FuncState* %65, %struct.BlockCnt* %66), !dbg !1417
  br label %91, !dbg !1417

; <label>:67                                      ; preds = %36
  %68 = load %struct.BlockCnt** %bl, align 4, !dbg !1418
  %69 = getelementptr inbounds %struct.BlockCnt* %68, i32 0, i32 2, !dbg !1418
  %70 = load i32* %69, align 4, !dbg !1418
  %71 = load %struct.LexState** %ls, align 4, !dbg !1418
  %72 = getelementptr inbounds %struct.LexState* %71, i32 0, i32 10, !dbg !1418
  %73 = load %struct.Dyndata** %72, align 4, !dbg !1418
  %74 = getelementptr inbounds %struct.Dyndata* %73, i32 0, i32 1, !dbg !1418
  %75 = getelementptr inbounds %struct.Labellist* %74, i32 0, i32 1, !dbg !1418
  %76 = load i32* %75, align 4, !dbg !1418
  %77 = icmp slt i32 %70, %76, !dbg !1418
  br i1 %77, label %78, label %90, !dbg !1418

; <label>:78                                      ; preds = %67
  %79 = load %struct.LexState** %ls, align 4, !dbg !1420
  %80 = load %struct.BlockCnt** %bl, align 4, !dbg !1420
  %81 = getelementptr inbounds %struct.BlockCnt* %80, i32 0, i32 2, !dbg !1420
  %82 = load i32* %81, align 4, !dbg !1420
  %83 = load %struct.LexState** %ls, align 4, !dbg !1420
  %84 = getelementptr inbounds %struct.LexState* %83, i32 0, i32 10, !dbg !1420
  %85 = load %struct.Dyndata** %84, align 4, !dbg !1420
  %86 = getelementptr inbounds %struct.Dyndata* %85, i32 0, i32 1, !dbg !1420
  %87 = getelementptr inbounds %struct.Labellist* %86, i32 0, i32 0, !dbg !1420
  %88 = load %struct.Labeldesc** %87, align 4, !dbg !1420
  %89 = getelementptr inbounds %struct.Labeldesc* %88, i32 %82, !dbg !1420
  call void @undefgoto(%struct.LexState* %79, %struct.Labeldesc* %89) #6, !dbg !1420
  unreachable, !dbg !1420

; <label>:90                                      ; preds = %67
  br label %91

; <label>:91                                      ; preds = %90, %64
  ret void, !dbg !1421
}

; Function Attrs: noreturn
declare hidden void @luaM_toobig(%struct.lua_State*) #3

declare hidden i8* @luaM_realloc_(%struct.lua_State*, i8*, i32, i32) #2

declare hidden void @luaC_step(%struct.lua_State*) #2

declare hidden i32 @luaK_jump(%struct.FuncState*) #2

declare hidden void @luaK_patchclose(%struct.FuncState*, i32, i32) #2

declare hidden void @luaK_patchtohere(%struct.FuncState*, i32) #2

; Function Attrs: nounwind
define internal void @breaklabel(%struct.LexState* %ls) #0 {
  %1 = alloca %struct.LexState*, align 4
  %n = alloca %struct.TString*, align 4
  %l = alloca i32, align 4
  store %struct.LexState* %ls, %struct.LexState** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.LexState** %1}, metadata !1422), !dbg !1423
  call void @llvm.dbg.declare(metadata !{%struct.TString** %n}, metadata !1424), !dbg !1425
  %2 = load %struct.LexState** %1, align 4, !dbg !1426
  %3 = getelementptr inbounds %struct.LexState* %2, i32 0, i32 6, !dbg !1426
  %4 = load %struct.lua_State** %3, align 4, !dbg !1426
  %5 = call %struct.TString* @luaS_new(%struct.lua_State* %4, i8* getelementptr inbounds ([6 x i8]* @.str3, i32 0, i32 0)), !dbg !1426
  store %struct.TString* %5, %struct.TString** %n, align 4, !dbg !1426
  call void @llvm.dbg.declare(metadata !{i32* %l}, metadata !1427), !dbg !1428
  %6 = load %struct.LexState** %1, align 4, !dbg !1429
  %7 = load %struct.LexState** %1, align 4, !dbg !1429
  %8 = getelementptr inbounds %struct.LexState* %7, i32 0, i32 10, !dbg !1429
  %9 = load %struct.Dyndata** %8, align 4, !dbg !1429
  %10 = getelementptr inbounds %struct.Dyndata* %9, i32 0, i32 2, !dbg !1429
  %11 = load %struct.TString** %n, align 4, !dbg !1429
  %12 = load %struct.LexState** %1, align 4, !dbg !1429
  %13 = getelementptr inbounds %struct.LexState* %12, i32 0, i32 5, !dbg !1429
  %14 = load %struct.FuncState** %13, align 4, !dbg !1429
  %15 = getelementptr inbounds %struct.FuncState* %14, i32 0, i32 4, !dbg !1429
  %16 = load i32* %15, align 4, !dbg !1429
  %17 = call i32 @newlabelentry(%struct.LexState* %6, %struct.Labellist* %10, %struct.TString* %11, i32 0, i32 %16), !dbg !1429
  store i32 %17, i32* %l, align 4, !dbg !1429
  %18 = load %struct.LexState** %1, align 4, !dbg !1430
  %19 = load i32* %l, align 4, !dbg !1430
  %20 = load %struct.LexState** %1, align 4, !dbg !1430
  %21 = getelementptr inbounds %struct.LexState* %20, i32 0, i32 10, !dbg !1430
  %22 = load %struct.Dyndata** %21, align 4, !dbg !1430
  %23 = getelementptr inbounds %struct.Dyndata* %22, i32 0, i32 2, !dbg !1430
  %24 = getelementptr inbounds %struct.Labellist* %23, i32 0, i32 0, !dbg !1430
  %25 = load %struct.Labeldesc** %24, align 4, !dbg !1430
  %26 = getelementptr inbounds %struct.Labeldesc* %25, i32 %19, !dbg !1430
  call void @findgotos(%struct.LexState* %18, %struct.Labeldesc* %26), !dbg !1430
  ret void, !dbg !1431
}

; Function Attrs: nounwind
define internal void @removevars(%struct.FuncState* %fs, i32 %tolevel) #0 {
  %1 = alloca %struct.FuncState*, align 4
  %2 = alloca i32, align 4
  store %struct.FuncState* %fs, %struct.FuncState** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.FuncState** %1}, metadata !1432), !dbg !1433
  store i32 %tolevel, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !1434), !dbg !1435
  %3 = load %struct.FuncState** %1, align 4, !dbg !1436
  %4 = getelementptr inbounds %struct.FuncState* %3, i32 0, i32 11, !dbg !1436
  %5 = load i8* %4, align 1, !dbg !1436
  %6 = zext i8 %5 to i32, !dbg !1436
  %7 = load i32* %2, align 4, !dbg !1436
  %8 = sub nsw i32 %6, %7, !dbg !1436
  %9 = load %struct.FuncState** %1, align 4, !dbg !1436
  %10 = getelementptr inbounds %struct.FuncState* %9, i32 0, i32 2, !dbg !1436
  %11 = load %struct.LexState** %10, align 4, !dbg !1436
  %12 = getelementptr inbounds %struct.LexState* %11, i32 0, i32 10, !dbg !1436
  %13 = load %struct.Dyndata** %12, align 4, !dbg !1436
  %14 = getelementptr inbounds %struct.Dyndata* %13, i32 0, i32 0, !dbg !1436
  %15 = getelementptr inbounds %struct.anon.5* %14, i32 0, i32 1, !dbg !1436
  %16 = load i32* %15, align 4, !dbg !1436
  %17 = sub nsw i32 %16, %8, !dbg !1436
  store i32 %17, i32* %15, align 4, !dbg !1436
  br label %18, !dbg !1437

; <label>:18                                      ; preds = %25, %0
  %19 = load %struct.FuncState** %1, align 4, !dbg !1438
  %20 = getelementptr inbounds %struct.FuncState* %19, i32 0, i32 11, !dbg !1438
  %21 = load i8* %20, align 1, !dbg !1438
  %22 = zext i8 %21 to i32, !dbg !1438
  %23 = load i32* %2, align 4, !dbg !1438
  %24 = icmp sgt i32 %22, %23, !dbg !1438
  br i1 %24, label %25, label %37, !dbg !1438

; <label>:25                                      ; preds = %18
  %26 = load %struct.FuncState** %1, align 4, !dbg !1440
  %27 = getelementptr inbounds %struct.FuncState* %26, i32 0, i32 4, !dbg !1440
  %28 = load i32* %27, align 4, !dbg !1440
  %29 = load %struct.FuncState** %1, align 4, !dbg !1440
  %30 = load %struct.FuncState** %1, align 4, !dbg !1440
  %31 = getelementptr inbounds %struct.FuncState* %30, i32 0, i32 11, !dbg !1440
  %32 = load i8* %31, align 1, !dbg !1440
  %33 = add i8 %32, -1, !dbg !1440
  store i8 %33, i8* %31, align 1, !dbg !1440
  %34 = zext i8 %33 to i32, !dbg !1440
  %35 = call %struct.LocVar* @getlocvar(%struct.FuncState* %29, i32 %34), !dbg !1440
  %36 = getelementptr inbounds %struct.LocVar* %35, i32 0, i32 2, !dbg !1440
  store i32 %28, i32* %36, align 4, !dbg !1440
  br label %18, !dbg !1440

; <label>:37                                      ; preds = %18
  ret void, !dbg !1441
}

; Function Attrs: nounwind
define internal void @movegotosout(%struct.FuncState* %fs, %struct.BlockCnt* %bl) #0 {
  %1 = alloca %struct.FuncState*, align 4
  %2 = alloca %struct.BlockCnt*, align 4
  %i = alloca i32, align 4
  %gl = alloca %struct.Labellist*, align 4
  %gt = alloca %struct.Labeldesc*, align 4
  store %struct.FuncState* %fs, %struct.FuncState** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.FuncState** %1}, metadata !1442), !dbg !1443
  store %struct.BlockCnt* %bl, %struct.BlockCnt** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.BlockCnt** %2}, metadata !1444), !dbg !1445
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !1446), !dbg !1447
  %3 = load %struct.BlockCnt** %2, align 4, !dbg !1448
  %4 = getelementptr inbounds %struct.BlockCnt* %3, i32 0, i32 2, !dbg !1448
  %5 = load i32* %4, align 4, !dbg !1448
  store i32 %5, i32* %i, align 4, !dbg !1448
  call void @llvm.dbg.declare(metadata !{%struct.Labellist** %gl}, metadata !1449), !dbg !1450
  %6 = load %struct.FuncState** %1, align 4, !dbg !1451
  %7 = getelementptr inbounds %struct.FuncState* %6, i32 0, i32 2, !dbg !1451
  %8 = load %struct.LexState** %7, align 4, !dbg !1451
  %9 = getelementptr inbounds %struct.LexState* %8, i32 0, i32 10, !dbg !1451
  %10 = load %struct.Dyndata** %9, align 4, !dbg !1451
  %11 = getelementptr inbounds %struct.Dyndata* %10, i32 0, i32 1, !dbg !1451
  store %struct.Labellist* %11, %struct.Labellist** %gl, align 4, !dbg !1451
  br label %12, !dbg !1452

; <label>:12                                      ; preds = %63, %0
  %13 = load i32* %i, align 4, !dbg !1453
  %14 = load %struct.Labellist** %gl, align 4, !dbg !1453
  %15 = getelementptr inbounds %struct.Labellist* %14, i32 0, i32 1, !dbg !1453
  %16 = load i32* %15, align 4, !dbg !1453
  %17 = icmp slt i32 %13, %16, !dbg !1453
  br i1 %17, label %18, label %64, !dbg !1453

; <label>:18                                      ; preds = %12
  call void @llvm.dbg.declare(metadata !{%struct.Labeldesc** %gt}, metadata !1455), !dbg !1457
  %19 = load i32* %i, align 4, !dbg !1458
  %20 = load %struct.Labellist** %gl, align 4, !dbg !1458
  %21 = getelementptr inbounds %struct.Labellist* %20, i32 0, i32 0, !dbg !1458
  %22 = load %struct.Labeldesc** %21, align 4, !dbg !1458
  %23 = getelementptr inbounds %struct.Labeldesc* %22, i32 %19, !dbg !1458
  store %struct.Labeldesc* %23, %struct.Labeldesc** %gt, align 4, !dbg !1458
  %24 = load %struct.Labeldesc** %gt, align 4, !dbg !1459
  %25 = getelementptr inbounds %struct.Labeldesc* %24, i32 0, i32 3, !dbg !1459
  %26 = load i8* %25, align 1, !dbg !1459
  %27 = zext i8 %26 to i32, !dbg !1459
  %28 = load %struct.BlockCnt** %2, align 4, !dbg !1459
  %29 = getelementptr inbounds %struct.BlockCnt* %28, i32 0, i32 3, !dbg !1459
  %30 = load i8* %29, align 1, !dbg !1459
  %31 = zext i8 %30 to i32, !dbg !1459
  %32 = icmp sgt i32 %27, %31, !dbg !1459
  br i1 %32, label %33, label %53, !dbg !1459

; <label>:33                                      ; preds = %18
  %34 = load %struct.BlockCnt** %2, align 4, !dbg !1461
  %35 = getelementptr inbounds %struct.BlockCnt* %34, i32 0, i32 4, !dbg !1461
  %36 = load i8* %35, align 1, !dbg !1461
  %37 = icmp ne i8 %36, 0, !dbg !1461
  br i1 %37, label %38, label %47, !dbg !1461

; <label>:38                                      ; preds = %33
  %39 = load %struct.FuncState** %1, align 4, !dbg !1464
  %40 = load %struct.Labeldesc** %gt, align 4, !dbg !1464
  %41 = getelementptr inbounds %struct.Labeldesc* %40, i32 0, i32 1, !dbg !1464
  %42 = load i32* %41, align 4, !dbg !1464
  %43 = load %struct.BlockCnt** %2, align 4, !dbg !1464
  %44 = getelementptr inbounds %struct.BlockCnt* %43, i32 0, i32 3, !dbg !1464
  %45 = load i8* %44, align 1, !dbg !1464
  %46 = zext i8 %45 to i32, !dbg !1464
  call void @luaK_patchclose(%struct.FuncState* %39, i32 %42, i32 %46), !dbg !1464
  br label %47, !dbg !1464

; <label>:47                                      ; preds = %38, %33
  %48 = load %struct.BlockCnt** %2, align 4, !dbg !1465
  %49 = getelementptr inbounds %struct.BlockCnt* %48, i32 0, i32 3, !dbg !1465
  %50 = load i8* %49, align 1, !dbg !1465
  %51 = load %struct.Labeldesc** %gt, align 4, !dbg !1465
  %52 = getelementptr inbounds %struct.Labeldesc* %51, i32 0, i32 3, !dbg !1465
  store i8 %50, i8* %52, align 1, !dbg !1465
  br label %53, !dbg !1466

; <label>:53                                      ; preds = %47, %18
  %54 = load %struct.FuncState** %1, align 4, !dbg !1467
  %55 = getelementptr inbounds %struct.FuncState* %54, i32 0, i32 2, !dbg !1467
  %56 = load %struct.LexState** %55, align 4, !dbg !1467
  %57 = load i32* %i, align 4, !dbg !1467
  %58 = call i32 @findlabel(%struct.LexState* %56, i32 %57), !dbg !1467
  %59 = icmp ne i32 %58, 0, !dbg !1467
  br i1 %59, label %63, label %60, !dbg !1467

; <label>:60                                      ; preds = %53
  %61 = load i32* %i, align 4, !dbg !1469
  %62 = add nsw i32 %61, 1, !dbg !1469
  store i32 %62, i32* %i, align 4, !dbg !1469
  br label %63, !dbg !1469

; <label>:63                                      ; preds = %60, %53
  br label %12, !dbg !1470

; <label>:64                                      ; preds = %12
  ret void, !dbg !1471
}

; Function Attrs: noreturn nounwind
define internal void @undefgoto(%struct.LexState* %ls, %struct.Labeldesc* %gt) #4 {
  %1 = alloca %struct.LexState*, align 4
  %2 = alloca %struct.Labeldesc*, align 4
  %msg = alloca i8*, align 4
  store %struct.LexState* %ls, %struct.LexState** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.LexState** %1}, metadata !1472), !dbg !1473
  store %struct.Labeldesc* %gt, %struct.Labeldesc** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.Labeldesc** %2}, metadata !1474), !dbg !1475
  call void @llvm.dbg.declare(metadata !{i8** %msg}, metadata !1476), !dbg !1477
  %3 = load %struct.Labeldesc** %2, align 4, !dbg !1478
  %4 = getelementptr inbounds %struct.Labeldesc* %3, i32 0, i32 0, !dbg !1478
  %5 = load %struct.TString** %4, align 4, !dbg !1478
  %6 = getelementptr inbounds %struct.TString* %5, i32 0, i32 1, !dbg !1478
  %7 = load i8* %6, align 1, !dbg !1478
  %8 = zext i8 %7 to i32, !dbg !1478
  %9 = icmp eq i32 %8, 4, !dbg !1478
  br i1 %9, label %10, label %18, !dbg !1478

; <label>:10                                      ; preds = %0
  %11 = load %struct.Labeldesc** %2, align 4, !dbg !1479
  %12 = getelementptr inbounds %struct.Labeldesc* %11, i32 0, i32 0, !dbg !1479
  %13 = load %struct.TString** %12, align 4, !dbg !1479
  %14 = getelementptr inbounds %struct.TString* %13, i32 0, i32 3, !dbg !1479
  %15 = load i8* %14, align 1, !dbg !1479
  %16 = zext i8 %15 to i32, !dbg !1479
  %17 = icmp sgt i32 %16, 0, !dbg !1479
  br label %18

; <label>:18                                      ; preds = %10, %0
  %19 = phi i1 [ false, %0 ], [ %17, %10 ]
  %20 = select i1 %19, i8* getelementptr inbounds ([34 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8]* @.str1, i32 0, i32 0), !dbg !1481
  store i8* %20, i8** %msg, align 4, !dbg !1481
  %21 = load %struct.LexState** %1, align 4, !dbg !1483
  %22 = getelementptr inbounds %struct.LexState* %21, i32 0, i32 6, !dbg !1483
  %23 = load %struct.lua_State** %22, align 4, !dbg !1483
  %24 = load i8** %msg, align 4, !dbg !1483
  %25 = load %struct.Labeldesc** %2, align 4, !dbg !1483
  %26 = getelementptr inbounds %struct.Labeldesc* %25, i32 0, i32 0, !dbg !1483
  %27 = load %struct.TString** %26, align 4, !dbg !1483
  %28 = bitcast %struct.TString* %27 to i8*, !dbg !1483
  %29 = getelementptr inbounds i8* %28, i32 16, !dbg !1483
  %30 = load %struct.Labeldesc** %2, align 4, !dbg !1483
  %31 = getelementptr inbounds %struct.Labeldesc* %30, i32 0, i32 2, !dbg !1483
  %32 = load i32* %31, align 4, !dbg !1483
  %33 = call i8* (%struct.lua_State*, i8*, ...)* @luaO_pushfstring(%struct.lua_State* %23, i8* %24, i8* %29, i32 %32), !dbg !1483
  store i8* %33, i8** %msg, align 4, !dbg !1483
  %34 = load %struct.LexState** %1, align 4, !dbg !1484
  %35 = load i8** %msg, align 4, !dbg !1484
  call void @semerror(%struct.LexState* %34, i8* %35) #6, !dbg !1484
  unreachable, !dbg !1484
                                                  ; No predecessors!
  ret void, !dbg !1485
}

declare hidden i8* @luaO_pushfstring(%struct.lua_State*, i8*, ...) #2

; Function Attrs: noreturn nounwind
define internal void @semerror(%struct.LexState* %ls, i8* %msg) #4 {
  %1 = alloca %struct.LexState*, align 4
  %2 = alloca i8*, align 4
  store %struct.LexState* %ls, %struct.LexState** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.LexState** %1}, metadata !1486), !dbg !1487
  store i8* %msg, i8** %2, align 4
  call void @llvm.dbg.declare(metadata !{i8** %2}, metadata !1488), !dbg !1489
  %3 = load %struct.LexState** %1, align 4, !dbg !1490
  %4 = getelementptr inbounds %struct.LexState* %3, i32 0, i32 3, !dbg !1490
  %5 = getelementptr inbounds %struct.Token* %4, i32 0, i32 0, !dbg !1490
  store i32 0, i32* %5, align 4, !dbg !1490
  %6 = load %struct.LexState** %1, align 4, !dbg !1491
  %7 = load i8** %2, align 4, !dbg !1491
  call void @luaX_syntaxerror(%struct.LexState* %6, i8* %7) #6, !dbg !1491
  unreachable, !dbg !1491
                                                  ; No predecessors!
  ret void, !dbg !1492
}

; Function Attrs: noreturn
declare hidden void @luaX_syntaxerror(%struct.LexState*, i8*) #3

; Function Attrs: nounwind
define internal i32 @findlabel(%struct.LexState* %ls, i32 %g) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.LexState*, align 4
  %3 = alloca i32, align 4
  %i = alloca i32, align 4
  %bl = alloca %struct.BlockCnt*, align 4
  %dyd = alloca %struct.Dyndata*, align 4
  %gt = alloca %struct.Labeldesc*, align 4
  %lb = alloca %struct.Labeldesc*, align 4
  store %struct.LexState* %ls, %struct.LexState** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.LexState** %2}, metadata !1493), !dbg !1494
  store i32 %g, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !1495), !dbg !1496
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !1497), !dbg !1498
  call void @llvm.dbg.declare(metadata !{%struct.BlockCnt** %bl}, metadata !1499), !dbg !1500
  %4 = load %struct.LexState** %2, align 4, !dbg !1501
  %5 = getelementptr inbounds %struct.LexState* %4, i32 0, i32 5, !dbg !1501
  %6 = load %struct.FuncState** %5, align 4, !dbg !1501
  %7 = getelementptr inbounds %struct.FuncState* %6, i32 0, i32 3, !dbg !1501
  %8 = load %struct.BlockCnt** %7, align 4, !dbg !1501
  store %struct.BlockCnt* %8, %struct.BlockCnt** %bl, align 4, !dbg !1501
  call void @llvm.dbg.declare(metadata !{%struct.Dyndata** %dyd}, metadata !1502), !dbg !1503
  %9 = load %struct.LexState** %2, align 4, !dbg !1504
  %10 = getelementptr inbounds %struct.LexState* %9, i32 0, i32 10, !dbg !1504
  %11 = load %struct.Dyndata** %10, align 4, !dbg !1504
  store %struct.Dyndata* %11, %struct.Dyndata** %dyd, align 4, !dbg !1504
  call void @llvm.dbg.declare(metadata !{%struct.Labeldesc** %gt}, metadata !1505), !dbg !1506
  %12 = load i32* %3, align 4, !dbg !1507
  %13 = load %struct.Dyndata** %dyd, align 4, !dbg !1507
  %14 = getelementptr inbounds %struct.Dyndata* %13, i32 0, i32 1, !dbg !1507
  %15 = getelementptr inbounds %struct.Labellist* %14, i32 0, i32 0, !dbg !1507
  %16 = load %struct.Labeldesc** %15, align 4, !dbg !1507
  %17 = getelementptr inbounds %struct.Labeldesc* %16, i32 %12, !dbg !1507
  store %struct.Labeldesc* %17, %struct.Labeldesc** %gt, align 4, !dbg !1507
  %18 = load %struct.BlockCnt** %bl, align 4, !dbg !1508
  %19 = getelementptr inbounds %struct.BlockCnt* %18, i32 0, i32 1, !dbg !1508
  %20 = load i32* %19, align 4, !dbg !1508
  store i32 %20, i32* %i, align 4, !dbg !1508
  br label %21, !dbg !1508

; <label>:21                                      ; preds = %83, %0
  %22 = load i32* %i, align 4, !dbg !1510
  %23 = load %struct.Dyndata** %dyd, align 4, !dbg !1510
  %24 = getelementptr inbounds %struct.Dyndata* %23, i32 0, i32 2, !dbg !1510
  %25 = getelementptr inbounds %struct.Labellist* %24, i32 0, i32 1, !dbg !1510
  %26 = load i32* %25, align 4, !dbg !1510
  %27 = icmp slt i32 %22, %26, !dbg !1510
  br i1 %27, label %28, label %86, !dbg !1510

; <label>:28                                      ; preds = %21
  call void @llvm.dbg.declare(metadata !{%struct.Labeldesc** %lb}, metadata !1513), !dbg !1515
  %29 = load i32* %i, align 4, !dbg !1516
  %30 = load %struct.Dyndata** %dyd, align 4, !dbg !1516
  %31 = getelementptr inbounds %struct.Dyndata* %30, i32 0, i32 2, !dbg !1516
  %32 = getelementptr inbounds %struct.Labellist* %31, i32 0, i32 0, !dbg !1516
  %33 = load %struct.Labeldesc** %32, align 4, !dbg !1516
  %34 = getelementptr inbounds %struct.Labeldesc* %33, i32 %29, !dbg !1516
  store %struct.Labeldesc* %34, %struct.Labeldesc** %lb, align 4, !dbg !1516
  %35 = load %struct.Labeldesc** %lb, align 4, !dbg !1517
  %36 = getelementptr inbounds %struct.Labeldesc* %35, i32 0, i32 0, !dbg !1517
  %37 = load %struct.TString** %36, align 4, !dbg !1517
  %38 = load %struct.Labeldesc** %gt, align 4, !dbg !1517
  %39 = getelementptr inbounds %struct.Labeldesc* %38, i32 0, i32 0, !dbg !1517
  %40 = load %struct.TString** %39, align 4, !dbg !1517
  %41 = icmp eq %struct.TString* %37, %40, !dbg !1517
  br i1 %41, label %42, label %82, !dbg !1517

; <label>:42                                      ; preds = %28
  %43 = load %struct.Labeldesc** %gt, align 4, !dbg !1519
  %44 = getelementptr inbounds %struct.Labeldesc* %43, i32 0, i32 3, !dbg !1519
  %45 = load i8* %44, align 1, !dbg !1519
  %46 = zext i8 %45 to i32, !dbg !1519
  %47 = load %struct.Labeldesc** %lb, align 4, !dbg !1519
  %48 = getelementptr inbounds %struct.Labeldesc* %47, i32 0, i32 3, !dbg !1519
  %49 = load i8* %48, align 1, !dbg !1519
  %50 = zext i8 %49 to i32, !dbg !1519
  %51 = icmp sgt i32 %46, %50, !dbg !1519
  br i1 %51, label %52, label %78, !dbg !1519

; <label>:52                                      ; preds = %42
  %53 = load %struct.BlockCnt** %bl, align 4, !dbg !1522
  %54 = getelementptr inbounds %struct.BlockCnt* %53, i32 0, i32 4, !dbg !1522
  %55 = load i8* %54, align 1, !dbg !1522
  %56 = zext i8 %55 to i32, !dbg !1522
  %57 = icmp ne i32 %56, 0, !dbg !1522
  br i1 %57, label %67, label %58, !dbg !1522

; <label>:58                                      ; preds = %52
  %59 = load %struct.Dyndata** %dyd, align 4, !dbg !1524
  %60 = getelementptr inbounds %struct.Dyndata* %59, i32 0, i32 2, !dbg !1524
  %61 = getelementptr inbounds %struct.Labellist* %60, i32 0, i32 1, !dbg !1524
  %62 = load i32* %61, align 4, !dbg !1524
  %63 = load %struct.BlockCnt** %bl, align 4, !dbg !1524
  %64 = getelementptr inbounds %struct.BlockCnt* %63, i32 0, i32 1, !dbg !1524
  %65 = load i32* %64, align 4, !dbg !1524
  %66 = icmp sgt i32 %62, %65, !dbg !1524
  br i1 %66, label %67, label %78, !dbg !1524

; <label>:67                                      ; preds = %58, %52
  %68 = load %struct.LexState** %2, align 4, !dbg !1526
  %69 = getelementptr inbounds %struct.LexState* %68, i32 0, i32 5, !dbg !1526
  %70 = load %struct.FuncState** %69, align 4, !dbg !1526
  %71 = load %struct.Labeldesc** %gt, align 4, !dbg !1526
  %72 = getelementptr inbounds %struct.Labeldesc* %71, i32 0, i32 1, !dbg !1526
  %73 = load i32* %72, align 4, !dbg !1526
  %74 = load %struct.Labeldesc** %lb, align 4, !dbg !1526
  %75 = getelementptr inbounds %struct.Labeldesc* %74, i32 0, i32 3, !dbg !1526
  %76 = load i8* %75, align 1, !dbg !1526
  %77 = zext i8 %76 to i32, !dbg !1526
  call void @luaK_patchclose(%struct.FuncState* %70, i32 %73, i32 %77), !dbg !1526
  br label %78, !dbg !1526

; <label>:78                                      ; preds = %67, %58, %42
  %79 = load %struct.LexState** %2, align 4, !dbg !1527
  %80 = load i32* %3, align 4, !dbg !1527
  %81 = load %struct.Labeldesc** %lb, align 4, !dbg !1527
  call void @closegoto(%struct.LexState* %79, i32 %80, %struct.Labeldesc* %81), !dbg !1527
  store i32 1, i32* %1, !dbg !1528
  br label %87, !dbg !1528

; <label>:82                                      ; preds = %28
  br label %83, !dbg !1529

; <label>:83                                      ; preds = %82
  %84 = load i32* %i, align 4, !dbg !1530
  %85 = add nsw i32 %84, 1, !dbg !1530
  store i32 %85, i32* %i, align 4, !dbg !1530
  br label %21, !dbg !1530

; <label>:86                                      ; preds = %21
  store i32 0, i32* %1, !dbg !1531
  br label %87, !dbg !1531

; <label>:87                                      ; preds = %86, %78
  %88 = load i32* %1, !dbg !1532
  ret i32 %88, !dbg !1532
}

; Function Attrs: nounwind
define internal void @closegoto(%struct.LexState* %ls, i32 %g, %struct.Labeldesc* %label) #0 {
  %1 = alloca %struct.LexState*, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.Labeldesc*, align 4
  %i = alloca i32, align 4
  %fs = alloca %struct.FuncState*, align 4
  %gl = alloca %struct.Labellist*, align 4
  %gt = alloca %struct.Labeldesc*, align 4
  %vname = alloca %struct.TString*, align 4
  %msg = alloca i8*, align 4
  store %struct.LexState* %ls, %struct.LexState** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.LexState** %1}, metadata !1533), !dbg !1534
  store i32 %g, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !1535), !dbg !1536
  store %struct.Labeldesc* %label, %struct.Labeldesc** %3, align 4
  call void @llvm.dbg.declare(metadata !{%struct.Labeldesc** %3}, metadata !1537), !dbg !1538
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !1539), !dbg !1540
  call void @llvm.dbg.declare(metadata !{%struct.FuncState** %fs}, metadata !1541), !dbg !1542
  %4 = load %struct.LexState** %1, align 4, !dbg !1543
  %5 = getelementptr inbounds %struct.LexState* %4, i32 0, i32 5, !dbg !1543
  %6 = load %struct.FuncState** %5, align 4, !dbg !1543
  store %struct.FuncState* %6, %struct.FuncState** %fs, align 4, !dbg !1543
  call void @llvm.dbg.declare(metadata !{%struct.Labellist** %gl}, metadata !1544), !dbg !1545
  %7 = load %struct.LexState** %1, align 4, !dbg !1546
  %8 = getelementptr inbounds %struct.LexState* %7, i32 0, i32 10, !dbg !1546
  %9 = load %struct.Dyndata** %8, align 4, !dbg !1546
  %10 = getelementptr inbounds %struct.Dyndata* %9, i32 0, i32 1, !dbg !1546
  store %struct.Labellist* %10, %struct.Labellist** %gl, align 4, !dbg !1546
  call void @llvm.dbg.declare(metadata !{%struct.Labeldesc** %gt}, metadata !1547), !dbg !1548
  %11 = load i32* %2, align 4, !dbg !1549
  %12 = load %struct.Labellist** %gl, align 4, !dbg !1549
  %13 = getelementptr inbounds %struct.Labellist* %12, i32 0, i32 0, !dbg !1549
  %14 = load %struct.Labeldesc** %13, align 4, !dbg !1549
  %15 = getelementptr inbounds %struct.Labeldesc* %14, i32 %11, !dbg !1549
  store %struct.Labeldesc* %15, %struct.Labeldesc** %gt, align 4, !dbg !1549
  %16 = load %struct.Labeldesc** %gt, align 4, !dbg !1550
  %17 = getelementptr inbounds %struct.Labeldesc* %16, i32 0, i32 3, !dbg !1550
  %18 = load i8* %17, align 1, !dbg !1550
  %19 = zext i8 %18 to i32, !dbg !1550
  %20 = load %struct.Labeldesc** %3, align 4, !dbg !1550
  %21 = getelementptr inbounds %struct.Labeldesc* %20, i32 0, i32 3, !dbg !1550
  %22 = load i8* %21, align 1, !dbg !1550
  %23 = zext i8 %22 to i32, !dbg !1550
  %24 = icmp slt i32 %19, %23, !dbg !1550
  br i1 %24, label %25, label %51, !dbg !1550

; <label>:25                                      ; preds = %0
  call void @llvm.dbg.declare(metadata !{%struct.TString** %vname}, metadata !1552), !dbg !1554
  %26 = load %struct.FuncState** %fs, align 4, !dbg !1555
  %27 = load %struct.Labeldesc** %gt, align 4, !dbg !1555
  %28 = getelementptr inbounds %struct.Labeldesc* %27, i32 0, i32 3, !dbg !1555
  %29 = load i8* %28, align 1, !dbg !1555
  %30 = zext i8 %29 to i32, !dbg !1555
  %31 = call %struct.LocVar* @getlocvar(%struct.FuncState* %26, i32 %30), !dbg !1555
  %32 = getelementptr inbounds %struct.LocVar* %31, i32 0, i32 0, !dbg !1555
  %33 = load %struct.TString** %32, align 4, !dbg !1555
  store %struct.TString* %33, %struct.TString** %vname, align 4, !dbg !1555
  call void @llvm.dbg.declare(metadata !{i8** %msg}, metadata !1556), !dbg !1557
  %34 = load %struct.LexState** %1, align 4, !dbg !1558
  %35 = getelementptr inbounds %struct.LexState* %34, i32 0, i32 6, !dbg !1558
  %36 = load %struct.lua_State** %35, align 4, !dbg !1558
  %37 = load %struct.Labeldesc** %gt, align 4, !dbg !1558
  %38 = getelementptr inbounds %struct.Labeldesc* %37, i32 0, i32 0, !dbg !1558
  %39 = load %struct.TString** %38, align 4, !dbg !1558
  %40 = bitcast %struct.TString* %39 to i8*, !dbg !1558
  %41 = getelementptr inbounds i8* %40, i32 16, !dbg !1558
  %42 = load %struct.Labeldesc** %gt, align 4, !dbg !1558
  %43 = getelementptr inbounds %struct.Labeldesc* %42, i32 0, i32 2, !dbg !1558
  %44 = load i32* %43, align 4, !dbg !1558
  %45 = load %struct.TString** %vname, align 4, !dbg !1558
  %46 = bitcast %struct.TString* %45 to i8*, !dbg !1558
  %47 = getelementptr inbounds i8* %46, i32 16, !dbg !1558
  %48 = call i8* (%struct.lua_State*, i8*, ...)* @luaO_pushfstring(%struct.lua_State* %36, i8* getelementptr inbounds ([56 x i8]* @.str2, i32 0, i32 0), i8* %41, i32 %44, i8* %47), !dbg !1558
  store i8* %48, i8** %msg, align 4, !dbg !1558
  %49 = load %struct.LexState** %1, align 4, !dbg !1559
  %50 = load i8** %msg, align 4, !dbg !1559
  call void @semerror(%struct.LexState* %49, i8* %50) #6, !dbg !1559
  unreachable, !dbg !1559

; <label>:51                                      ; preds = %0
  %52 = load %struct.FuncState** %fs, align 4, !dbg !1560
  %53 = load %struct.Labeldesc** %gt, align 4, !dbg !1560
  %54 = getelementptr inbounds %struct.Labeldesc* %53, i32 0, i32 1, !dbg !1560
  %55 = load i32* %54, align 4, !dbg !1560
  %56 = load %struct.Labeldesc** %3, align 4, !dbg !1560
  %57 = getelementptr inbounds %struct.Labeldesc* %56, i32 0, i32 1, !dbg !1560
  %58 = load i32* %57, align 4, !dbg !1560
  call void @luaK_patchlist(%struct.FuncState* %52, i32 %55, i32 %58), !dbg !1560
  %59 = load i32* %2, align 4, !dbg !1561
  store i32 %59, i32* %i, align 4, !dbg !1561
  br label %60, !dbg !1561

; <label>:60                                      ; preds = %81, %51
  %61 = load i32* %i, align 4, !dbg !1563
  %62 = load %struct.Labellist** %gl, align 4, !dbg !1563
  %63 = getelementptr inbounds %struct.Labellist* %62, i32 0, i32 1, !dbg !1563
  %64 = load i32* %63, align 4, !dbg !1563
  %65 = sub nsw i32 %64, 1, !dbg !1563
  %66 = icmp slt i32 %61, %65, !dbg !1563
  br i1 %66, label %67, label %84, !dbg !1563

; <label>:67                                      ; preds = %60
  %68 = load i32* %i, align 4, !dbg !1566
  %69 = load %struct.Labellist** %gl, align 4, !dbg !1566
  %70 = getelementptr inbounds %struct.Labellist* %69, i32 0, i32 0, !dbg !1566
  %71 = load %struct.Labeldesc** %70, align 4, !dbg !1566
  %72 = getelementptr inbounds %struct.Labeldesc* %71, i32 %68, !dbg !1566
  %73 = load i32* %i, align 4, !dbg !1566
  %74 = add nsw i32 %73, 1, !dbg !1566
  %75 = load %struct.Labellist** %gl, align 4, !dbg !1566
  %76 = getelementptr inbounds %struct.Labellist* %75, i32 0, i32 0, !dbg !1566
  %77 = load %struct.Labeldesc** %76, align 4, !dbg !1566
  %78 = getelementptr inbounds %struct.Labeldesc* %77, i32 %74, !dbg !1566
  %79 = bitcast %struct.Labeldesc* %72 to i8*, !dbg !1566
  %80 = bitcast %struct.Labeldesc* %78 to i8*, !dbg !1566
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %79, i8* %80, i32 16, i32 4, i1 false), !dbg !1566
  br label %81, !dbg !1566

; <label>:81                                      ; preds = %67
  %82 = load i32* %i, align 4, !dbg !1567
  %83 = add nsw i32 %82, 1, !dbg !1567
  store i32 %83, i32* %i, align 4, !dbg !1567
  br label %60, !dbg !1567

; <label>:84                                      ; preds = %60
  %85 = load %struct.Labellist** %gl, align 4, !dbg !1568
  %86 = getelementptr inbounds %struct.Labellist* %85, i32 0, i32 1, !dbg !1568
  %87 = load i32* %86, align 4, !dbg !1568
  %88 = add nsw i32 %87, -1, !dbg !1568
  store i32 %88, i32* %86, align 4, !dbg !1568
  ret void, !dbg !1569
}

; Function Attrs: nounwind
define internal %struct.LocVar* @getlocvar(%struct.FuncState* %fs, i32 %i) #0 {
  %1 = alloca %struct.FuncState*, align 4
  %2 = alloca i32, align 4
  %idx = alloca i32, align 4
  store %struct.FuncState* %fs, %struct.FuncState** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.FuncState** %1}, metadata !1570), !dbg !1571
  store i32 %i, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !1572), !dbg !1573
  call void @llvm.dbg.declare(metadata !{i32* %idx}, metadata !1574), !dbg !1575
  %3 = load %struct.FuncState** %1, align 4, !dbg !1576
  %4 = getelementptr inbounds %struct.FuncState* %3, i32 0, i32 9, !dbg !1576
  %5 = load i32* %4, align 4, !dbg !1576
  %6 = load i32* %2, align 4, !dbg !1576
  %7 = add nsw i32 %5, %6, !dbg !1576
  %8 = load %struct.FuncState** %1, align 4, !dbg !1576
  %9 = getelementptr inbounds %struct.FuncState* %8, i32 0, i32 2, !dbg !1576
  %10 = load %struct.LexState** %9, align 4, !dbg !1576
  %11 = getelementptr inbounds %struct.LexState* %10, i32 0, i32 10, !dbg !1576
  %12 = load %struct.Dyndata** %11, align 4, !dbg !1576
  %13 = getelementptr inbounds %struct.Dyndata* %12, i32 0, i32 0, !dbg !1576
  %14 = getelementptr inbounds %struct.anon.5* %13, i32 0, i32 0, !dbg !1576
  %15 = load %struct.Vardesc** %14, align 4, !dbg !1576
  %16 = getelementptr inbounds %struct.Vardesc* %15, i32 %7, !dbg !1576
  %17 = getelementptr inbounds %struct.Vardesc* %16, i32 0, i32 0, !dbg !1576
  %18 = load i16* %17, align 2, !dbg !1576
  %19 = sext i16 %18 to i32, !dbg !1576
  store i32 %19, i32* %idx, align 4, !dbg !1576
  %20 = load i32* %idx, align 4, !dbg !1577
  %21 = load %struct.FuncState** %1, align 4, !dbg !1577
  %22 = getelementptr inbounds %struct.FuncState* %21, i32 0, i32 0, !dbg !1577
  %23 = load %struct.Proto** %22, align 4, !dbg !1577
  %24 = getelementptr inbounds %struct.Proto* %23, i32 0, i32 18, !dbg !1577
  %25 = load %struct.LocVar** %24, align 4, !dbg !1577
  %26 = getelementptr inbounds %struct.LocVar* %25, i32 %20, !dbg !1577
  ret %struct.LocVar* %26, !dbg !1577
}

declare hidden void @luaK_patchlist(%struct.FuncState*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture, i8* nocapture readonly, i32, i32, i1) #5

; Function Attrs: nounwind
define internal i32 @newlabelentry(%struct.LexState* %ls, %struct.Labellist* %l, %struct.TString* %name, i32 %line, i32 %pc) #0 {
  %1 = alloca %struct.LexState*, align 4
  %2 = alloca %struct.Labellist*, align 4
  %3 = alloca %struct.TString*, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %n = alloca i32, align 4
  store %struct.LexState* %ls, %struct.LexState** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.LexState** %1}, metadata !1578), !dbg !1579
  store %struct.Labellist* %l, %struct.Labellist** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.Labellist** %2}, metadata !1580), !dbg !1581
  store %struct.TString* %name, %struct.TString** %3, align 4
  call void @llvm.dbg.declare(metadata !{%struct.TString** %3}, metadata !1582), !dbg !1583
  store i32 %line, i32* %4, align 4
  call void @llvm.dbg.declare(metadata !{i32* %4}, metadata !1584), !dbg !1585
  store i32 %pc, i32* %5, align 4
  call void @llvm.dbg.declare(metadata !{i32* %5}, metadata !1586), !dbg !1587
  call void @llvm.dbg.declare(metadata !{i32* %n}, metadata !1588), !dbg !1589
  %6 = load %struct.Labellist** %2, align 4, !dbg !1590
  %7 = getelementptr inbounds %struct.Labellist* %6, i32 0, i32 1, !dbg !1590
  %8 = load i32* %7, align 4, !dbg !1590
  store i32 %8, i32* %n, align 4, !dbg !1590
  %9 = load i32* %n, align 4, !dbg !1591
  %10 = add nsw i32 %9, 1, !dbg !1591
  %11 = load %struct.Labellist** %2, align 4, !dbg !1591
  %12 = getelementptr inbounds %struct.Labellist* %11, i32 0, i32 2, !dbg !1591
  %13 = load i32* %12, align 4, !dbg !1591
  %14 = icmp sgt i32 %10, %13, !dbg !1591
  br i1 %14, label %15, label %29, !dbg !1591

; <label>:15                                      ; preds = %0
  %16 = load %struct.LexState** %1, align 4, !dbg !1593
  %17 = getelementptr inbounds %struct.LexState* %16, i32 0, i32 6, !dbg !1593
  %18 = load %struct.lua_State** %17, align 4, !dbg !1593
  %19 = load %struct.Labellist** %2, align 4, !dbg !1593
  %20 = getelementptr inbounds %struct.Labellist* %19, i32 0, i32 0, !dbg !1593
  %21 = load %struct.Labeldesc** %20, align 4, !dbg !1593
  %22 = bitcast %struct.Labeldesc* %21 to i8*, !dbg !1593
  %23 = load %struct.Labellist** %2, align 4, !dbg !1593
  %24 = getelementptr inbounds %struct.Labellist* %23, i32 0, i32 2, !dbg !1593
  %25 = call i8* @luaM_growaux_(%struct.lua_State* %18, i8* %22, i32* %24, i32 16, i32 32767, i8* getelementptr inbounds ([13 x i8]* @.str4, i32 0, i32 0)), !dbg !1593
  %26 = bitcast i8* %25 to %struct.Labeldesc*, !dbg !1593
  %27 = load %struct.Labellist** %2, align 4, !dbg !1593
  %28 = getelementptr inbounds %struct.Labellist* %27, i32 0, i32 0, !dbg !1593
  store %struct.Labeldesc* %26, %struct.Labeldesc** %28, align 4, !dbg !1593
  br label %29, !dbg !1593

; <label>:29                                      ; preds = %15, %0
  %30 = load %struct.TString** %3, align 4, !dbg !1595
  %31 = load i32* %n, align 4, !dbg !1595
  %32 = load %struct.Labellist** %2, align 4, !dbg !1595
  %33 = getelementptr inbounds %struct.Labellist* %32, i32 0, i32 0, !dbg !1595
  %34 = load %struct.Labeldesc** %33, align 4, !dbg !1595
  %35 = getelementptr inbounds %struct.Labeldesc* %34, i32 %31, !dbg !1595
  %36 = getelementptr inbounds %struct.Labeldesc* %35, i32 0, i32 0, !dbg !1595
  store %struct.TString* %30, %struct.TString** %36, align 4, !dbg !1595
  %37 = load i32* %4, align 4, !dbg !1596
  %38 = load i32* %n, align 4, !dbg !1596
  %39 = load %struct.Labellist** %2, align 4, !dbg !1596
  %40 = getelementptr inbounds %struct.Labellist* %39, i32 0, i32 0, !dbg !1596
  %41 = load %struct.Labeldesc** %40, align 4, !dbg !1596
  %42 = getelementptr inbounds %struct.Labeldesc* %41, i32 %38, !dbg !1596
  %43 = getelementptr inbounds %struct.Labeldesc* %42, i32 0, i32 2, !dbg !1596
  store i32 %37, i32* %43, align 4, !dbg !1596
  %44 = load %struct.LexState** %1, align 4, !dbg !1597
  %45 = getelementptr inbounds %struct.LexState* %44, i32 0, i32 5, !dbg !1597
  %46 = load %struct.FuncState** %45, align 4, !dbg !1597
  %47 = getelementptr inbounds %struct.FuncState* %46, i32 0, i32 11, !dbg !1597
  %48 = load i8* %47, align 1, !dbg !1597
  %49 = load i32* %n, align 4, !dbg !1597
  %50 = load %struct.Labellist** %2, align 4, !dbg !1597
  %51 = getelementptr inbounds %struct.Labellist* %50, i32 0, i32 0, !dbg !1597
  %52 = load %struct.Labeldesc** %51, align 4, !dbg !1597
  %53 = getelementptr inbounds %struct.Labeldesc* %52, i32 %49, !dbg !1597
  %54 = getelementptr inbounds %struct.Labeldesc* %53, i32 0, i32 3, !dbg !1597
  store i8 %48, i8* %54, align 1, !dbg !1597
  %55 = load i32* %5, align 4, !dbg !1598
  %56 = load i32* %n, align 4, !dbg !1598
  %57 = load %struct.Labellist** %2, align 4, !dbg !1598
  %58 = getelementptr inbounds %struct.Labellist* %57, i32 0, i32 0, !dbg !1598
  %59 = load %struct.Labeldesc** %58, align 4, !dbg !1598
  %60 = getelementptr inbounds %struct.Labeldesc* %59, i32 %56, !dbg !1598
  %61 = getelementptr inbounds %struct.Labeldesc* %60, i32 0, i32 1, !dbg !1598
  store i32 %55, i32* %61, align 4, !dbg !1598
  %62 = load i32* %n, align 4, !dbg !1599
  %63 = add nsw i32 %62, 1, !dbg !1599
  %64 = load %struct.Labellist** %2, align 4, !dbg !1599
  %65 = getelementptr inbounds %struct.Labellist* %64, i32 0, i32 1, !dbg !1599
  store i32 %63, i32* %65, align 4, !dbg !1599
  %66 = load i32* %n, align 4, !dbg !1600
  ret i32 %66, !dbg !1600
}

; Function Attrs: nounwind
define internal void @findgotos(%struct.LexState* %ls, %struct.Labeldesc* %lb) #0 {
  %1 = alloca %struct.LexState*, align 4
  %2 = alloca %struct.Labeldesc*, align 4
  %gl = alloca %struct.Labellist*, align 4
  %i = alloca i32, align 4
  store %struct.LexState* %ls, %struct.LexState** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.LexState** %1}, metadata !1601), !dbg !1602
  store %struct.Labeldesc* %lb, %struct.Labeldesc** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.Labeldesc** %2}, metadata !1603), !dbg !1604
  call void @llvm.dbg.declare(metadata !{%struct.Labellist** %gl}, metadata !1605), !dbg !1606
  %3 = load %struct.LexState** %1, align 4, !dbg !1607
  %4 = getelementptr inbounds %struct.LexState* %3, i32 0, i32 10, !dbg !1607
  %5 = load %struct.Dyndata** %4, align 4, !dbg !1607
  %6 = getelementptr inbounds %struct.Dyndata* %5, i32 0, i32 1, !dbg !1607
  store %struct.Labellist* %6, %struct.Labellist** %gl, align 4, !dbg !1607
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !1608), !dbg !1609
  %7 = load %struct.LexState** %1, align 4, !dbg !1610
  %8 = getelementptr inbounds %struct.LexState* %7, i32 0, i32 5, !dbg !1610
  %9 = load %struct.FuncState** %8, align 4, !dbg !1610
  %10 = getelementptr inbounds %struct.FuncState* %9, i32 0, i32 3, !dbg !1610
  %11 = load %struct.BlockCnt** %10, align 4, !dbg !1610
  %12 = getelementptr inbounds %struct.BlockCnt* %11, i32 0, i32 2, !dbg !1610
  %13 = load i32* %12, align 4, !dbg !1610
  store i32 %13, i32* %i, align 4, !dbg !1610
  br label %14, !dbg !1611

; <label>:14                                      ; preds = %39, %0
  %15 = load i32* %i, align 4, !dbg !1612
  %16 = load %struct.Labellist** %gl, align 4, !dbg !1612
  %17 = getelementptr inbounds %struct.Labellist* %16, i32 0, i32 1, !dbg !1612
  %18 = load i32* %17, align 4, !dbg !1612
  %19 = icmp slt i32 %15, %18, !dbg !1612
  br i1 %19, label %20, label %40, !dbg !1612

; <label>:20                                      ; preds = %14
  %21 = load i32* %i, align 4, !dbg !1614
  %22 = load %struct.Labellist** %gl, align 4, !dbg !1614
  %23 = getelementptr inbounds %struct.Labellist* %22, i32 0, i32 0, !dbg !1614
  %24 = load %struct.Labeldesc** %23, align 4, !dbg !1614
  %25 = getelementptr inbounds %struct.Labeldesc* %24, i32 %21, !dbg !1614
  %26 = getelementptr inbounds %struct.Labeldesc* %25, i32 0, i32 0, !dbg !1614
  %27 = load %struct.TString** %26, align 4, !dbg !1614
  %28 = load %struct.Labeldesc** %2, align 4, !dbg !1614
  %29 = getelementptr inbounds %struct.Labeldesc* %28, i32 0, i32 0, !dbg !1614
  %30 = load %struct.TString** %29, align 4, !dbg !1614
  %31 = icmp eq %struct.TString* %27, %30, !dbg !1614
  br i1 %31, label %32, label %36, !dbg !1614

; <label>:32                                      ; preds = %20
  %33 = load %struct.LexState** %1, align 4, !dbg !1617
  %34 = load i32* %i, align 4, !dbg !1617
  %35 = load %struct.Labeldesc** %2, align 4, !dbg !1617
  call void @closegoto(%struct.LexState* %33, i32 %34, %struct.Labeldesc* %35), !dbg !1617
  br label %39, !dbg !1617

; <label>:36                                      ; preds = %20
  %37 = load i32* %i, align 4, !dbg !1618
  %38 = add nsw i32 %37, 1, !dbg !1618
  store i32 %38, i32* %i, align 4, !dbg !1618
  br label %39

; <label>:39                                      ; preds = %36, %32
  br label %14, !dbg !1619

; <label>:40                                      ; preds = %14
  ret void, !dbg !1620
}

declare hidden i8* @luaM_growaux_(%struct.lua_State*, i8*, i32*, i32, i32, i8*) #2

; Function Attrs: noreturn nounwind
define internal void @error_expected(%struct.LexState* %ls, i32 %token) #4 {
  %1 = alloca %struct.LexState*, align 4
  %2 = alloca i32, align 4
  store %struct.LexState* %ls, %struct.LexState** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.LexState** %1}, metadata !1621), !dbg !1622
  store i32 %token, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !1623), !dbg !1624
  %3 = load %struct.LexState** %1, align 4, !dbg !1625
  %4 = load %struct.LexState** %1, align 4, !dbg !1626
  %5 = getelementptr inbounds %struct.LexState* %4, i32 0, i32 6, !dbg !1626
  %6 = load %struct.lua_State** %5, align 4, !dbg !1626
  %7 = load %struct.LexState** %1, align 4, !dbg !1627
  %8 = load i32* %2, align 4, !dbg !1627
  %9 = call i8* @luaX_token2str(%struct.LexState* %7, i32 %8), !dbg !1627
  %10 = call i8* (%struct.lua_State*, i8*, ...)* @luaO_pushfstring(%struct.lua_State* %6, i8* getelementptr inbounds ([12 x i8]* @.str5, i32 0, i32 0), i8* %9), !dbg !1626
  call void @luaX_syntaxerror(%struct.LexState* %3, i8* %10) #6, !dbg !1625
  unreachable, !dbg !1625
                                                  ; No predecessors!
  ret void, !dbg !1628
}

declare hidden i8* @luaX_token2str(%struct.LexState*, i32) #2

; Function Attrs: nounwind
define internal i32 @block_follow(%struct.LexState* %ls, i32 %withuntil) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.LexState*, align 4
  %3 = alloca i32, align 4
  store %struct.LexState* %ls, %struct.LexState** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.LexState** %2}, metadata !1629), !dbg !1630
  store i32 %withuntil, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !1631), !dbg !1632
  %4 = load %struct.LexState** %2, align 4, !dbg !1633
  %5 = getelementptr inbounds %struct.LexState* %4, i32 0, i32 3, !dbg !1633
  %6 = getelementptr inbounds %struct.Token* %5, i32 0, i32 0, !dbg !1633
  %7 = load i32* %6, align 4, !dbg !1633
  switch i32 %7, label %11 [
    i32 260, label %8
    i32 261, label %8
    i32 262, label %8
    i32 289, label %8
    i32 277, label %9
  ], !dbg !1633

; <label>:8                                       ; preds = %0, %0, %0, %0
  store i32 1, i32* %1, !dbg !1634
  br label %12, !dbg !1634

; <label>:9                                       ; preds = %0
  %10 = load i32* %3, align 4, !dbg !1636
  store i32 %10, i32* %1, !dbg !1636
  br label %12, !dbg !1636

; <label>:11                                      ; preds = %0
  store i32 0, i32* %1, !dbg !1637
  br label %12, !dbg !1637

; <label>:12                                      ; preds = %11, %9, %8
  %13 = load i32* %1, !dbg !1638
  ret i32 %13, !dbg !1638
}

; Function Attrs: nounwind
define internal void @statement(%struct.LexState* %ls) #0 {
  %1 = alloca %struct.LexState*, align 4
  %line = alloca i32, align 4
  store %struct.LexState* %ls, %struct.LexState** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.LexState** %1}, metadata !1639), !dbg !1640
  call void @llvm.dbg.declare(metadata !{i32* %line}, metadata !1641), !dbg !1642
  %2 = load %struct.LexState** %1, align 4, !dbg !1643
  %3 = getelementptr inbounds %struct.LexState* %2, i32 0, i32 1, !dbg !1643
  %4 = load i32* %3, align 4, !dbg !1643
  store i32 %4, i32* %line, align 4, !dbg !1643
  %5 = load %struct.LexState** %1, align 4, !dbg !1644
  call void @enterlevel(%struct.LexState* %5), !dbg !1644
  %6 = load %struct.LexState** %1, align 4, !dbg !1645
  %7 = getelementptr inbounds %struct.LexState* %6, i32 0, i32 3, !dbg !1645
  %8 = getelementptr inbounds %struct.Token* %7, i32 0, i32 0, !dbg !1645
  %9 = load i32* %8, align 4, !dbg !1645
  switch i32 %9, label %57 [
    i32 59, label %10
    i32 267, label %12
    i32 278, label %15
    i32 259, label %18
    i32 264, label %23
    i32 273, label %26
    i32 265, label %29
    i32 269, label %32
    i32 288, label %42
    i32 274, label %48
    i32 258, label %51
    i32 266, label %51
  ], !dbg !1645

; <label>:10                                      ; preds = %0
  %11 = load %struct.LexState** %1, align 4, !dbg !1646
  call void @luaX_next(%struct.LexState* %11), !dbg !1646
  br label %59, !dbg !1649

; <label>:12                                      ; preds = %0
  %13 = load %struct.LexState** %1, align 4, !dbg !1650
  %14 = load i32* %line, align 4, !dbg !1650
  call void @ifstat(%struct.LexState* %13, i32 %14), !dbg !1650
  br label %59, !dbg !1652

; <label>:15                                      ; preds = %0
  %16 = load %struct.LexState** %1, align 4, !dbg !1653
  %17 = load i32* %line, align 4, !dbg !1653
  call void @whilestat(%struct.LexState* %16, i32 %17), !dbg !1653
  br label %59, !dbg !1655

; <label>:18                                      ; preds = %0
  %19 = load %struct.LexState** %1, align 4, !dbg !1656
  call void @luaX_next(%struct.LexState* %19), !dbg !1656
  %20 = load %struct.LexState** %1, align 4, !dbg !1658
  call void @block(%struct.LexState* %20), !dbg !1658
  %21 = load %struct.LexState** %1, align 4, !dbg !1659
  %22 = load i32* %line, align 4, !dbg !1659
  call void @check_match(%struct.LexState* %21, i32 262, i32 259, i32 %22), !dbg !1659
  br label %59, !dbg !1660

; <label>:23                                      ; preds = %0
  %24 = load %struct.LexState** %1, align 4, !dbg !1661
  %25 = load i32* %line, align 4, !dbg !1661
  call void @forstat(%struct.LexState* %24, i32 %25), !dbg !1661
  br label %59, !dbg !1663

; <label>:26                                      ; preds = %0
  %27 = load %struct.LexState** %1, align 4, !dbg !1664
  %28 = load i32* %line, align 4, !dbg !1664
  call void @repeatstat(%struct.LexState* %27, i32 %28), !dbg !1664
  br label %59, !dbg !1666

; <label>:29                                      ; preds = %0
  %30 = load %struct.LexState** %1, align 4, !dbg !1667
  %31 = load i32* %line, align 4, !dbg !1667
  call void @funcstat(%struct.LexState* %30, i32 %31), !dbg !1667
  br label %59, !dbg !1669

; <label>:32                                      ; preds = %0
  %33 = load %struct.LexState** %1, align 4, !dbg !1670
  call void @luaX_next(%struct.LexState* %33), !dbg !1670
  %34 = load %struct.LexState** %1, align 4, !dbg !1672
  %35 = call i32 @testnext(%struct.LexState* %34, i32 265), !dbg !1672
  %36 = icmp ne i32 %35, 0, !dbg !1672
  br i1 %36, label %37, label %39, !dbg !1672

; <label>:37                                      ; preds = %32
  %38 = load %struct.LexState** %1, align 4, !dbg !1674
  call void @localfunc(%struct.LexState* %38), !dbg !1674
  br label %41, !dbg !1674

; <label>:39                                      ; preds = %32
  %40 = load %struct.LexState** %1, align 4, !dbg !1675
  call void @localstat(%struct.LexState* %40), !dbg !1675
  br label %41

; <label>:41                                      ; preds = %39, %37
  br label %59, !dbg !1676

; <label>:42                                      ; preds = %0
  %43 = load %struct.LexState** %1, align 4, !dbg !1677
  call void @luaX_next(%struct.LexState* %43), !dbg !1677
  %44 = load %struct.LexState** %1, align 4, !dbg !1679
  %45 = load %struct.LexState** %1, align 4, !dbg !1680
  %46 = call %struct.TString* @str_checkname(%struct.LexState* %45), !dbg !1680
  %47 = load i32* %line, align 4, !dbg !1679
  call void @labelstat(%struct.LexState* %44, %struct.TString* %46, i32 %47), !dbg !1679
  br label %59, !dbg !1681

; <label>:48                                      ; preds = %0
  %49 = load %struct.LexState** %1, align 4, !dbg !1682
  call void @luaX_next(%struct.LexState* %49), !dbg !1682
  %50 = load %struct.LexState** %1, align 4, !dbg !1684
  call void @retstat(%struct.LexState* %50), !dbg !1684
  br label %59, !dbg !1685

; <label>:51                                      ; preds = %0, %0
  %52 = load %struct.LexState** %1, align 4, !dbg !1686
  %53 = load %struct.LexState** %1, align 4, !dbg !1688
  %54 = getelementptr inbounds %struct.LexState* %53, i32 0, i32 5, !dbg !1688
  %55 = load %struct.FuncState** %54, align 4, !dbg !1688
  %56 = call i32 @luaK_jump(%struct.FuncState* %55), !dbg !1688
  call void @gotostat(%struct.LexState* %52, i32 %56), !dbg !1686
  br label %59, !dbg !1689

; <label>:57                                      ; preds = %0
  %58 = load %struct.LexState** %1, align 4, !dbg !1690
  call void @exprstat(%struct.LexState* %58), !dbg !1690
  br label %59, !dbg !1692

; <label>:59                                      ; preds = %57, %51, %48, %42, %41, %29, %26, %23, %18, %15, %12, %10
  %60 = load %struct.LexState** %1, align 4, !dbg !1693
  %61 = getelementptr inbounds %struct.LexState* %60, i32 0, i32 5, !dbg !1693
  %62 = load %struct.FuncState** %61, align 4, !dbg !1693
  %63 = getelementptr inbounds %struct.FuncState* %62, i32 0, i32 11, !dbg !1693
  %64 = load i8* %63, align 1, !dbg !1693
  %65 = load %struct.LexState** %1, align 4, !dbg !1693
  %66 = getelementptr inbounds %struct.LexState* %65, i32 0, i32 5, !dbg !1693
  %67 = load %struct.FuncState** %66, align 4, !dbg !1693
  %68 = getelementptr inbounds %struct.FuncState* %67, i32 0, i32 13, !dbg !1693
  store i8 %64, i8* %68, align 1, !dbg !1693
  %69 = load %struct.LexState** %1, align 4, !dbg !1694
  %70 = getelementptr inbounds %struct.LexState* %69, i32 0, i32 6, !dbg !1694
  %71 = load %struct.lua_State** %70, align 4, !dbg !1694
  %72 = getelementptr inbounds %struct.lua_State* %71, i32 0, i32 22, !dbg !1694
  %73 = load i16* %72, align 2, !dbg !1694
  %74 = add i16 %73, -1, !dbg !1694
  store i16 %74, i16* %72, align 2, !dbg !1694
  ret void, !dbg !1695
}

; Function Attrs: nounwind
define internal void @enterlevel(%struct.LexState* %ls) #0 {
  %1 = alloca %struct.LexState*, align 4
  %L = alloca %struct.lua_State*, align 4
  store %struct.LexState* %ls, %struct.LexState** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.LexState** %1}, metadata !1696), !dbg !1697
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %L}, metadata !1698), !dbg !1699
  %2 = load %struct.LexState** %1, align 4, !dbg !1700
  %3 = getelementptr inbounds %struct.LexState* %2, i32 0, i32 6, !dbg !1700
  %4 = load %struct.lua_State** %3, align 4, !dbg !1700
  store %struct.lua_State* %4, %struct.lua_State** %L, align 4, !dbg !1700
  %5 = load %struct.lua_State** %L, align 4, !dbg !1701
  %6 = getelementptr inbounds %struct.lua_State* %5, i32 0, i32 22, !dbg !1701
  %7 = load i16* %6, align 2, !dbg !1701
  %8 = add i16 %7, 1, !dbg !1701
  store i16 %8, i16* %6, align 2, !dbg !1701
  %9 = load %struct.LexState** %1, align 4, !dbg !1702
  %10 = getelementptr inbounds %struct.LexState* %9, i32 0, i32 5, !dbg !1702
  %11 = load %struct.FuncState** %10, align 4, !dbg !1702
  %12 = load %struct.lua_State** %L, align 4, !dbg !1702
  %13 = getelementptr inbounds %struct.lua_State* %12, i32 0, i32 22, !dbg !1702
  %14 = load i16* %13, align 2, !dbg !1702
  %15 = zext i16 %14 to i32, !dbg !1702
  call void @checklimit(%struct.FuncState* %11, i32 %15, i32 200, i8* getelementptr inbounds ([9 x i8]* @.str7, i32 0, i32 0)), !dbg !1702
  ret void, !dbg !1703
}

; Function Attrs: nounwind
define internal void @ifstat(%struct.LexState* %ls, i32 %line) #0 {
  %1 = alloca %struct.LexState*, align 4
  %2 = alloca i32, align 4
  %fs = alloca %struct.FuncState*, align 4
  %escapelist = alloca i32, align 4
  store %struct.LexState* %ls, %struct.LexState** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.LexState** %1}, metadata !1704), !dbg !1705
  store i32 %line, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !1706), !dbg !1707
  call void @llvm.dbg.declare(metadata !{%struct.FuncState** %fs}, metadata !1708), !dbg !1709
  %3 = load %struct.LexState** %1, align 4, !dbg !1710
  %4 = getelementptr inbounds %struct.LexState* %3, i32 0, i32 5, !dbg !1710
  %5 = load %struct.FuncState** %4, align 4, !dbg !1710
  store %struct.FuncState* %5, %struct.FuncState** %fs, align 4, !dbg !1710
  call void @llvm.dbg.declare(metadata !{i32* %escapelist}, metadata !1711), !dbg !1712
  store i32 -1, i32* %escapelist, align 4, !dbg !1713
  %6 = load %struct.LexState** %1, align 4, !dbg !1714
  call void @test_then_block(%struct.LexState* %6, i32* %escapelist), !dbg !1714
  br label %7, !dbg !1715

; <label>:7                                       ; preds = %13, %0
  %8 = load %struct.LexState** %1, align 4, !dbg !1716
  %9 = getelementptr inbounds %struct.LexState* %8, i32 0, i32 3, !dbg !1716
  %10 = getelementptr inbounds %struct.Token* %9, i32 0, i32 0, !dbg !1716
  %11 = load i32* %10, align 4, !dbg !1716
  %12 = icmp eq i32 %11, 261, !dbg !1716
  br i1 %12, label %13, label %15, !dbg !1716

; <label>:13                                      ; preds = %7
  %14 = load %struct.LexState** %1, align 4, !dbg !1718
  call void @test_then_block(%struct.LexState* %14, i32* %escapelist), !dbg !1718
  br label %7, !dbg !1718

; <label>:15                                      ; preds = %7
  %16 = load %struct.LexState** %1, align 4, !dbg !1719
  %17 = call i32 @testnext(%struct.LexState* %16, i32 260), !dbg !1719
  %18 = icmp ne i32 %17, 0, !dbg !1719
  br i1 %18, label %19, label %21, !dbg !1719

; <label>:19                                      ; preds = %15
  %20 = load %struct.LexState** %1, align 4, !dbg !1721
  call void @block(%struct.LexState* %20), !dbg !1721
  br label %21, !dbg !1721

; <label>:21                                      ; preds = %19, %15
  %22 = load %struct.LexState** %1, align 4, !dbg !1722
  %23 = load i32* %2, align 4, !dbg !1722
  call void @check_match(%struct.LexState* %22, i32 262, i32 267, i32 %23), !dbg !1722
  %24 = load %struct.FuncState** %fs, align 4, !dbg !1723
  %25 = load i32* %escapelist, align 4, !dbg !1723
  call void @luaK_patchtohere(%struct.FuncState* %24, i32 %25), !dbg !1723
  ret void, !dbg !1724
}

; Function Attrs: nounwind
define internal void @whilestat(%struct.LexState* %ls, i32 %line) #0 {
  %1 = alloca %struct.LexState*, align 4
  %2 = alloca i32, align 4
  %fs = alloca %struct.FuncState*, align 4
  %whileinit = alloca i32, align 4
  %condexit = alloca i32, align 4
  %bl = alloca %struct.BlockCnt, align 4
  store %struct.LexState* %ls, %struct.LexState** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.LexState** %1}, metadata !1725), !dbg !1726
  store i32 %line, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !1727), !dbg !1728
  call void @llvm.dbg.declare(metadata !{%struct.FuncState** %fs}, metadata !1729), !dbg !1730
  %3 = load %struct.LexState** %1, align 4, !dbg !1731
  %4 = getelementptr inbounds %struct.LexState* %3, i32 0, i32 5, !dbg !1731
  %5 = load %struct.FuncState** %4, align 4, !dbg !1731
  store %struct.FuncState* %5, %struct.FuncState** %fs, align 4, !dbg !1731
  call void @llvm.dbg.declare(metadata !{i32* %whileinit}, metadata !1732), !dbg !1733
  call void @llvm.dbg.declare(metadata !{i32* %condexit}, metadata !1734), !dbg !1735
  call void @llvm.dbg.declare(metadata !{%struct.BlockCnt* %bl}, metadata !1736), !dbg !1737
  %6 = load %struct.LexState** %1, align 4, !dbg !1738
  call void @luaX_next(%struct.LexState* %6), !dbg !1738
  %7 = load %struct.FuncState** %fs, align 4, !dbg !1739
  %8 = call i32 @luaK_getlabel(%struct.FuncState* %7), !dbg !1739
  store i32 %8, i32* %whileinit, align 4, !dbg !1739
  %9 = load %struct.LexState** %1, align 4, !dbg !1740
  %10 = call i32 @cond(%struct.LexState* %9), !dbg !1740
  store i32 %10, i32* %condexit, align 4, !dbg !1740
  %11 = load %struct.FuncState** %fs, align 4, !dbg !1741
  call void @enterblock(%struct.FuncState* %11, %struct.BlockCnt* %bl, i8 zeroext 1), !dbg !1741
  %12 = load %struct.LexState** %1, align 4, !dbg !1742
  call void @checknext(%struct.LexState* %12, i32 259), !dbg !1742
  %13 = load %struct.LexState** %1, align 4, !dbg !1743
  call void @block(%struct.LexState* %13), !dbg !1743
  %14 = load %struct.FuncState** %fs, align 4, !dbg !1744
  %15 = load %struct.FuncState** %fs, align 4, !dbg !1744
  %16 = call i32 @luaK_jump(%struct.FuncState* %15), !dbg !1744
  %17 = load i32* %whileinit, align 4, !dbg !1744
  call void @luaK_patchlist(%struct.FuncState* %14, i32 %16, i32 %17), !dbg !1744
  %18 = load %struct.LexState** %1, align 4, !dbg !1745
  %19 = load i32* %2, align 4, !dbg !1745
  call void @check_match(%struct.LexState* %18, i32 262, i32 278, i32 %19), !dbg !1745
  %20 = load %struct.FuncState** %fs, align 4, !dbg !1746
  call void @leaveblock(%struct.FuncState* %20), !dbg !1746
  %21 = load %struct.FuncState** %fs, align 4, !dbg !1747
  %22 = load i32* %condexit, align 4, !dbg !1747
  call void @luaK_patchtohere(%struct.FuncState* %21, i32 %22), !dbg !1747
  ret void, !dbg !1748
}

; Function Attrs: nounwind
define internal void @block(%struct.LexState* %ls) #0 {
  %1 = alloca %struct.LexState*, align 4
  %fs = alloca %struct.FuncState*, align 4
  %bl = alloca %struct.BlockCnt, align 4
  store %struct.LexState* %ls, %struct.LexState** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.LexState** %1}, metadata !1749), !dbg !1750
  call void @llvm.dbg.declare(metadata !{%struct.FuncState** %fs}, metadata !1751), !dbg !1752
  %2 = load %struct.LexState** %1, align 4, !dbg !1753
  %3 = getelementptr inbounds %struct.LexState* %2, i32 0, i32 5, !dbg !1753
  %4 = load %struct.FuncState** %3, align 4, !dbg !1753
  store %struct.FuncState* %4, %struct.FuncState** %fs, align 4, !dbg !1753
  call void @llvm.dbg.declare(metadata !{%struct.BlockCnt* %bl}, metadata !1754), !dbg !1755
  %5 = load %struct.FuncState** %fs, align 4, !dbg !1756
  call void @enterblock(%struct.FuncState* %5, %struct.BlockCnt* %bl, i8 zeroext 0), !dbg !1756
  %6 = load %struct.LexState** %1, align 4, !dbg !1757
  call void @statlist(%struct.LexState* %6), !dbg !1757
  %7 = load %struct.FuncState** %fs, align 4, !dbg !1758
  call void @leaveblock(%struct.FuncState* %7), !dbg !1758
  ret void, !dbg !1759
}

; Function Attrs: nounwind
define internal void @check_match(%struct.LexState* %ls, i32 %what, i32 %who, i32 %where) #0 {
  %1 = alloca %struct.LexState*, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.LexState* %ls, %struct.LexState** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.LexState** %1}, metadata !1760), !dbg !1761
  store i32 %what, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !1762), !dbg !1763
  store i32 %who, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !1764), !dbg !1765
  store i32 %where, i32* %4, align 4
  call void @llvm.dbg.declare(metadata !{i32* %4}, metadata !1766), !dbg !1767
  %5 = load %struct.LexState** %1, align 4, !dbg !1768
  %6 = load i32* %2, align 4, !dbg !1768
  %7 = call i32 @testnext(%struct.LexState* %5, i32 %6), !dbg !1768
  %8 = icmp ne i32 %7, 0, !dbg !1768
  br i1 %8, label %31, label %9, !dbg !1768

; <label>:9                                       ; preds = %0
  %10 = load i32* %4, align 4, !dbg !1770
  %11 = load %struct.LexState** %1, align 4, !dbg !1770
  %12 = getelementptr inbounds %struct.LexState* %11, i32 0, i32 1, !dbg !1770
  %13 = load i32* %12, align 4, !dbg !1770
  %14 = icmp eq i32 %10, %13, !dbg !1770
  br i1 %14, label %15, label %18, !dbg !1770

; <label>:15                                      ; preds = %9
  %16 = load %struct.LexState** %1, align 4, !dbg !1773
  %17 = load i32* %2, align 4, !dbg !1773
  call void @error_expected(%struct.LexState* %16, i32 %17) #6, !dbg !1773
  unreachable, !dbg !1773

; <label>:18                                      ; preds = %9
  %19 = load %struct.LexState** %1, align 4, !dbg !1774
  %20 = load %struct.LexState** %1, align 4, !dbg !1776
  %21 = getelementptr inbounds %struct.LexState* %20, i32 0, i32 6, !dbg !1776
  %22 = load %struct.lua_State** %21, align 4, !dbg !1776
  %23 = load %struct.LexState** %1, align 4, !dbg !1777
  %24 = load i32* %2, align 4, !dbg !1777
  %25 = call i8* @luaX_token2str(%struct.LexState* %23, i32 %24), !dbg !1777
  %26 = load %struct.LexState** %1, align 4, !dbg !1778
  %27 = load i32* %3, align 4, !dbg !1778
  %28 = call i8* @luaX_token2str(%struct.LexState* %26, i32 %27), !dbg !1778
  %29 = load i32* %4, align 4, !dbg !1776
  %30 = call i8* (%struct.lua_State*, i8*, ...)* @luaO_pushfstring(%struct.lua_State* %22, i8* getelementptr inbounds ([37 x i8]* @.str27, i32 0, i32 0), i8* %25, i8* %28, i32 %29), !dbg !1776
  call void @luaX_syntaxerror(%struct.LexState* %19, i8* %30) #6, !dbg !1774
  unreachable, !dbg !1774

; <label>:31                                      ; preds = %0
  ret void, !dbg !1779
}

; Function Attrs: nounwind
define internal void @forstat(%struct.LexState* %ls, i32 %line) #0 {
  %1 = alloca %struct.LexState*, align 4
  %2 = alloca i32, align 4
  %fs = alloca %struct.FuncState*, align 4
  %varname = alloca %struct.TString*, align 4
  %bl = alloca %struct.BlockCnt, align 4
  store %struct.LexState* %ls, %struct.LexState** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.LexState** %1}, metadata !1780), !dbg !1781
  store i32 %line, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !1782), !dbg !1783
  call void @llvm.dbg.declare(metadata !{%struct.FuncState** %fs}, metadata !1784), !dbg !1785
  %3 = load %struct.LexState** %1, align 4, !dbg !1786
  %4 = getelementptr inbounds %struct.LexState* %3, i32 0, i32 5, !dbg !1786
  %5 = load %struct.FuncState** %4, align 4, !dbg !1786
  store %struct.FuncState* %5, %struct.FuncState** %fs, align 4, !dbg !1786
  call void @llvm.dbg.declare(metadata !{%struct.TString** %varname}, metadata !1787), !dbg !1788
  call void @llvm.dbg.declare(metadata !{%struct.BlockCnt* %bl}, metadata !1789), !dbg !1790
  %6 = load %struct.FuncState** %fs, align 4, !dbg !1791
  call void @enterblock(%struct.FuncState* %6, %struct.BlockCnt* %bl, i8 zeroext 1), !dbg !1791
  %7 = load %struct.LexState** %1, align 4, !dbg !1792
  call void @luaX_next(%struct.LexState* %7), !dbg !1792
  %8 = load %struct.LexState** %1, align 4, !dbg !1793
  %9 = call %struct.TString* @str_checkname(%struct.LexState* %8), !dbg !1793
  store %struct.TString* %9, %struct.TString** %varname, align 4, !dbg !1793
  %10 = load %struct.LexState** %1, align 4, !dbg !1794
  %11 = getelementptr inbounds %struct.LexState* %10, i32 0, i32 3, !dbg !1794
  %12 = getelementptr inbounds %struct.Token* %11, i32 0, i32 0, !dbg !1794
  %13 = load i32* %12, align 4, !dbg !1794
  switch i32 %13, label %21 [
    i32 61, label %14
    i32 44, label %18
    i32 268, label %18
  ], !dbg !1794

; <label>:14                                      ; preds = %0
  %15 = load %struct.LexState** %1, align 4, !dbg !1795
  %16 = load %struct.TString** %varname, align 4, !dbg !1795
  %17 = load i32* %2, align 4, !dbg !1795
  call void @fornum(%struct.LexState* %15, %struct.TString* %16, i32 %17), !dbg !1795
  br label %23, !dbg !1797

; <label>:18                                      ; preds = %0, %0
  %19 = load %struct.LexState** %1, align 4, !dbg !1798
  %20 = load %struct.TString** %varname, align 4, !dbg !1798
  call void @forlist(%struct.LexState* %19, %struct.TString* %20), !dbg !1798
  br label %23, !dbg !1799

; <label>:21                                      ; preds = %0
  %22 = load %struct.LexState** %1, align 4, !dbg !1800
  call void @luaX_syntaxerror(%struct.LexState* %22, i8* getelementptr inbounds ([21 x i8]* @.str20, i32 0, i32 0)) #6, !dbg !1800
  unreachable, !dbg !1800

; <label>:23                                      ; preds = %18, %14
  %24 = load %struct.LexState** %1, align 4, !dbg !1801
  %25 = load i32* %2, align 4, !dbg !1801
  call void @check_match(%struct.LexState* %24, i32 262, i32 264, i32 %25), !dbg !1801
  %26 = load %struct.FuncState** %fs, align 4, !dbg !1802
  call void @leaveblock(%struct.FuncState* %26), !dbg !1802
  ret void, !dbg !1803
}

; Function Attrs: nounwind
define internal void @repeatstat(%struct.LexState* %ls, i32 %line) #0 {
  %1 = alloca %struct.LexState*, align 4
  %2 = alloca i32, align 4
  %condexit = alloca i32, align 4
  %fs = alloca %struct.FuncState*, align 4
  %repeat_init = alloca i32, align 4
  %bl1 = alloca %struct.BlockCnt, align 4
  %bl2 = alloca %struct.BlockCnt, align 4
  store %struct.LexState* %ls, %struct.LexState** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.LexState** %1}, metadata !1804), !dbg !1805
  store i32 %line, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !1806), !dbg !1807
  call void @llvm.dbg.declare(metadata !{i32* %condexit}, metadata !1808), !dbg !1809
  call void @llvm.dbg.declare(metadata !{%struct.FuncState** %fs}, metadata !1810), !dbg !1811
  %3 = load %struct.LexState** %1, align 4, !dbg !1812
  %4 = getelementptr inbounds %struct.LexState* %3, i32 0, i32 5, !dbg !1812
  %5 = load %struct.FuncState** %4, align 4, !dbg !1812
  store %struct.FuncState* %5, %struct.FuncState** %fs, align 4, !dbg !1812
  call void @llvm.dbg.declare(metadata !{i32* %repeat_init}, metadata !1813), !dbg !1814
  %6 = load %struct.FuncState** %fs, align 4, !dbg !1815
  %7 = call i32 @luaK_getlabel(%struct.FuncState* %6), !dbg !1815
  store i32 %7, i32* %repeat_init, align 4, !dbg !1815
  call void @llvm.dbg.declare(metadata !{%struct.BlockCnt* %bl1}, metadata !1816), !dbg !1817
  call void @llvm.dbg.declare(metadata !{%struct.BlockCnt* %bl2}, metadata !1818), !dbg !1819
  %8 = load %struct.FuncState** %fs, align 4, !dbg !1820
  call void @enterblock(%struct.FuncState* %8, %struct.BlockCnt* %bl1, i8 zeroext 1), !dbg !1820
  %9 = load %struct.FuncState** %fs, align 4, !dbg !1821
  call void @enterblock(%struct.FuncState* %9, %struct.BlockCnt* %bl2, i8 zeroext 0), !dbg !1821
  %10 = load %struct.LexState** %1, align 4, !dbg !1822
  call void @luaX_next(%struct.LexState* %10), !dbg !1822
  %11 = load %struct.LexState** %1, align 4, !dbg !1823
  call void @statlist(%struct.LexState* %11), !dbg !1823
  %12 = load %struct.LexState** %1, align 4, !dbg !1824
  %13 = load i32* %2, align 4, !dbg !1824
  call void @check_match(%struct.LexState* %12, i32 277, i32 273, i32 %13), !dbg !1824
  %14 = load %struct.LexState** %1, align 4, !dbg !1825
  %15 = call i32 @cond(%struct.LexState* %14), !dbg !1825
  store i32 %15, i32* %condexit, align 4, !dbg !1825
  %16 = getelementptr inbounds %struct.BlockCnt* %bl2, i32 0, i32 4, !dbg !1826
  %17 = load i8* %16, align 1, !dbg !1826
  %18 = icmp ne i8 %17, 0, !dbg !1826
  br i1 %18, label %19, label %25, !dbg !1826

; <label>:19                                      ; preds = %0
  %20 = load %struct.FuncState** %fs, align 4, !dbg !1828
  %21 = load i32* %condexit, align 4, !dbg !1828
  %22 = getelementptr inbounds %struct.BlockCnt* %bl2, i32 0, i32 3, !dbg !1828
  %23 = load i8* %22, align 1, !dbg !1828
  %24 = zext i8 %23 to i32, !dbg !1828
  call void @luaK_patchclose(%struct.FuncState* %20, i32 %21, i32 %24), !dbg !1828
  br label %25, !dbg !1828

; <label>:25                                      ; preds = %19, %0
  %26 = load %struct.FuncState** %fs, align 4, !dbg !1829
  call void @leaveblock(%struct.FuncState* %26), !dbg !1829
  %27 = load %struct.FuncState** %fs, align 4, !dbg !1830
  %28 = load i32* %condexit, align 4, !dbg !1830
  %29 = load i32* %repeat_init, align 4, !dbg !1830
  call void @luaK_patchlist(%struct.FuncState* %27, i32 %28, i32 %29), !dbg !1830
  %30 = load %struct.FuncState** %fs, align 4, !dbg !1831
  call void @leaveblock(%struct.FuncState* %30), !dbg !1831
  ret void, !dbg !1832
}

; Function Attrs: nounwind
define internal void @funcstat(%struct.LexState* %ls, i32 %line) #0 {
  %1 = alloca %struct.LexState*, align 4
  %2 = alloca i32, align 4
  %ismethod = alloca i32, align 4
  %v = alloca %struct.expdesc, align 8
  %b = alloca %struct.expdesc, align 8
  store %struct.LexState* %ls, %struct.LexState** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.LexState** %1}, metadata !1833), !dbg !1834
  store i32 %line, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !1835), !dbg !1836
  call void @llvm.dbg.declare(metadata !{i32* %ismethod}, metadata !1837), !dbg !1838
  call void @llvm.dbg.declare(metadata !{%struct.expdesc* %v}, metadata !1839), !dbg !1840
  call void @llvm.dbg.declare(metadata !{%struct.expdesc* %b}, metadata !1841), !dbg !1842
  %3 = load %struct.LexState** %1, align 4, !dbg !1843
  call void @luaX_next(%struct.LexState* %3), !dbg !1843
  %4 = load %struct.LexState** %1, align 4, !dbg !1844
  %5 = call i32 @funcname(%struct.LexState* %4, %struct.expdesc* %v), !dbg !1844
  store i32 %5, i32* %ismethod, align 4, !dbg !1844
  %6 = load %struct.LexState** %1, align 4, !dbg !1845
  %7 = load i32* %ismethod, align 4, !dbg !1845
  %8 = load i32* %2, align 4, !dbg !1845
  call void @body(%struct.LexState* %6, %struct.expdesc* %b, i32 %7, i32 %8), !dbg !1845
  %9 = load %struct.LexState** %1, align 4, !dbg !1846
  %10 = getelementptr inbounds %struct.LexState* %9, i32 0, i32 5, !dbg !1846
  %11 = load %struct.FuncState** %10, align 4, !dbg !1846
  call void @luaK_storevar(%struct.FuncState* %11, %struct.expdesc* %v, %struct.expdesc* %b), !dbg !1846
  %12 = load %struct.LexState** %1, align 4, !dbg !1847
  %13 = getelementptr inbounds %struct.LexState* %12, i32 0, i32 5, !dbg !1847
  %14 = load %struct.FuncState** %13, align 4, !dbg !1847
  %15 = load i32* %2, align 4, !dbg !1847
  call void @luaK_fixline(%struct.FuncState* %14, i32 %15), !dbg !1847
  ret void, !dbg !1848
}

; Function Attrs: nounwind
define internal i32 @testnext(%struct.LexState* %ls, i32 %c) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.LexState*, align 4
  %3 = alloca i32, align 4
  store %struct.LexState* %ls, %struct.LexState** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.LexState** %2}, metadata !1849), !dbg !1850
  store i32 %c, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !1851), !dbg !1852
  %4 = load %struct.LexState** %2, align 4, !dbg !1853
  %5 = getelementptr inbounds %struct.LexState* %4, i32 0, i32 3, !dbg !1853
  %6 = getelementptr inbounds %struct.Token* %5, i32 0, i32 0, !dbg !1853
  %7 = load i32* %6, align 4, !dbg !1853
  %8 = load i32* %3, align 4, !dbg !1853
  %9 = icmp eq i32 %7, %8, !dbg !1853
  br i1 %9, label %10, label %12, !dbg !1853

; <label>:10                                      ; preds = %0
  %11 = load %struct.LexState** %2, align 4, !dbg !1855
  call void @luaX_next(%struct.LexState* %11), !dbg !1855
  store i32 1, i32* %1, !dbg !1857
  br label %13, !dbg !1857

; <label>:12                                      ; preds = %0
  store i32 0, i32* %1, !dbg !1858
  br label %13, !dbg !1858

; <label>:13                                      ; preds = %12, %10
  %14 = load i32* %1, !dbg !1859
  ret i32 %14, !dbg !1859
}

; Function Attrs: nounwind
define internal void @localfunc(%struct.LexState* %ls) #0 {
  %1 = alloca %struct.LexState*, align 4
  %b = alloca %struct.expdesc, align 8
  %fs = alloca %struct.FuncState*, align 4
  store %struct.LexState* %ls, %struct.LexState** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.LexState** %1}, metadata !1860), !dbg !1861
  call void @llvm.dbg.declare(metadata !{%struct.expdesc* %b}, metadata !1862), !dbg !1863
  call void @llvm.dbg.declare(metadata !{%struct.FuncState** %fs}, metadata !1864), !dbg !1865
  %2 = load %struct.LexState** %1, align 4, !dbg !1866
  %3 = getelementptr inbounds %struct.LexState* %2, i32 0, i32 5, !dbg !1866
  %4 = load %struct.FuncState** %3, align 4, !dbg !1866
  store %struct.FuncState* %4, %struct.FuncState** %fs, align 4, !dbg !1866
  %5 = load %struct.LexState** %1, align 4, !dbg !1867
  %6 = load %struct.LexState** %1, align 4, !dbg !1868
  %7 = call %struct.TString* @str_checkname(%struct.LexState* %6), !dbg !1868
  call void @new_localvar(%struct.LexState* %5, %struct.TString* %7), !dbg !1867
  %8 = load %struct.LexState** %1, align 4, !dbg !1869
  call void @adjustlocalvars(%struct.LexState* %8, i32 1), !dbg !1869
  %9 = load %struct.LexState** %1, align 4, !dbg !1870
  %10 = load %struct.LexState** %1, align 4, !dbg !1870
  %11 = getelementptr inbounds %struct.LexState* %10, i32 0, i32 1, !dbg !1870
  %12 = load i32* %11, align 4, !dbg !1870
  call void @body(%struct.LexState* %9, %struct.expdesc* %b, i32 0, i32 %12), !dbg !1870
  %13 = load %struct.FuncState** %fs, align 4, !dbg !1871
  %14 = getelementptr inbounds %struct.FuncState* %13, i32 0, i32 4, !dbg !1871
  %15 = load i32* %14, align 4, !dbg !1871
  %16 = load %struct.FuncState** %fs, align 4, !dbg !1871
  %17 = getelementptr inbounds %struct.expdesc* %b, i32 0, i32 1, !dbg !1871
  %18 = bitcast %union.anon.6* %17 to i32*, !dbg !1871
  %19 = load i32* %18, align 4, !dbg !1871
  %20 = call %struct.LocVar* @getlocvar(%struct.FuncState* %16, i32 %19), !dbg !1871
  %21 = getelementptr inbounds %struct.LocVar* %20, i32 0, i32 1, !dbg !1871
  store i32 %15, i32* %21, align 4, !dbg !1871
  ret void, !dbg !1872
}

; Function Attrs: nounwind
define internal void @localstat(%struct.LexState* %ls) #0 {
  %1 = alloca %struct.LexState*, align 4
  %nvars = alloca i32, align 4
  %nexps = alloca i32, align 4
  %e = alloca %struct.expdesc, align 8
  store %struct.LexState* %ls, %struct.LexState** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.LexState** %1}, metadata !1873), !dbg !1874
  call void @llvm.dbg.declare(metadata !{i32* %nvars}, metadata !1875), !dbg !1876
  store i32 0, i32* %nvars, align 4, !dbg !1877
  call void @llvm.dbg.declare(metadata !{i32* %nexps}, metadata !1878), !dbg !1879
  call void @llvm.dbg.declare(metadata !{%struct.expdesc* %e}, metadata !1880), !dbg !1881
  br label %2, !dbg !1882

; <label>:2                                       ; preds = %8, %0
  %3 = load %struct.LexState** %1, align 4, !dbg !1883
  %4 = load %struct.LexState** %1, align 4, !dbg !1885
  %5 = call %struct.TString* @str_checkname(%struct.LexState* %4), !dbg !1885
  call void @new_localvar(%struct.LexState* %3, %struct.TString* %5), !dbg !1883
  %6 = load i32* %nvars, align 4, !dbg !1886
  %7 = add nsw i32 %6, 1, !dbg !1886
  store i32 %7, i32* %nvars, align 4, !dbg !1886
  br label %8, !dbg !1887

; <label>:8                                       ; preds = %2
  %9 = load %struct.LexState** %1, align 4, !dbg !1888
  %10 = call i32 @testnext(%struct.LexState* %9, i32 44), !dbg !1888
  %11 = icmp ne i32 %10, 0, !dbg !1888
  br i1 %11, label %2, label %12, !dbg !1888

; <label>:12                                      ; preds = %8
  %13 = load %struct.LexState** %1, align 4, !dbg !1890
  %14 = call i32 @testnext(%struct.LexState* %13, i32 61), !dbg !1890
  %15 = icmp ne i32 %14, 0, !dbg !1890
  br i1 %15, label %16, label %19, !dbg !1890

; <label>:16                                      ; preds = %12
  %17 = load %struct.LexState** %1, align 4, !dbg !1892
  %18 = call i32 @explist(%struct.LexState* %17, %struct.expdesc* %e), !dbg !1892
  store i32 %18, i32* %nexps, align 4, !dbg !1892
  br label %21, !dbg !1892

; <label>:19                                      ; preds = %12
  %20 = getelementptr inbounds %struct.expdesc* %e, i32 0, i32 0, !dbg !1893
  store i32 0, i32* %20, align 4, !dbg !1893
  store i32 0, i32* %nexps, align 4, !dbg !1895
  br label %21

; <label>:21                                      ; preds = %19, %16
  %22 = load %struct.LexState** %1, align 4, !dbg !1896
  %23 = load i32* %nvars, align 4, !dbg !1896
  %24 = load i32* %nexps, align 4, !dbg !1896
  call void @adjust_assign(%struct.LexState* %22, i32 %23, i32 %24, %struct.expdesc* %e), !dbg !1896
  %25 = load %struct.LexState** %1, align 4, !dbg !1897
  %26 = load i32* %nvars, align 4, !dbg !1897
  call void @adjustlocalvars(%struct.LexState* %25, i32 %26), !dbg !1897
  ret void, !dbg !1898
}

; Function Attrs: nounwind
define internal void @labelstat(%struct.LexState* %ls, %struct.TString* %label, i32 %line) #0 {
  %1 = alloca %struct.LexState*, align 4
  %2 = alloca %struct.TString*, align 4
  %3 = alloca i32, align 4
  %fs = alloca %struct.FuncState*, align 4
  %ll = alloca %struct.Labellist*, align 4
  %l = alloca i32, align 4
  store %struct.LexState* %ls, %struct.LexState** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.LexState** %1}, metadata !1899), !dbg !1900
  store %struct.TString* %label, %struct.TString** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.TString** %2}, metadata !1901), !dbg !1902
  store i32 %line, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !1903), !dbg !1904
  call void @llvm.dbg.declare(metadata !{%struct.FuncState** %fs}, metadata !1905), !dbg !1906
  %4 = load %struct.LexState** %1, align 4, !dbg !1907
  %5 = getelementptr inbounds %struct.LexState* %4, i32 0, i32 5, !dbg !1907
  %6 = load %struct.FuncState** %5, align 4, !dbg !1907
  store %struct.FuncState* %6, %struct.FuncState** %fs, align 4, !dbg !1907
  call void @llvm.dbg.declare(metadata !{%struct.Labellist** %ll}, metadata !1908), !dbg !1909
  %7 = load %struct.LexState** %1, align 4, !dbg !1910
  %8 = getelementptr inbounds %struct.LexState* %7, i32 0, i32 10, !dbg !1910
  %9 = load %struct.Dyndata** %8, align 4, !dbg !1910
  %10 = getelementptr inbounds %struct.Dyndata* %9, i32 0, i32 2, !dbg !1910
  store %struct.Labellist* %10, %struct.Labellist** %ll, align 4, !dbg !1910
  call void @llvm.dbg.declare(metadata !{i32* %l}, metadata !1911), !dbg !1912
  %11 = load %struct.FuncState** %fs, align 4, !dbg !1913
  %12 = load %struct.Labellist** %ll, align 4, !dbg !1913
  %13 = load %struct.TString** %2, align 4, !dbg !1913
  call void @checkrepeated(%struct.FuncState* %11, %struct.Labellist* %12, %struct.TString* %13), !dbg !1913
  %14 = load %struct.LexState** %1, align 4, !dbg !1914
  call void @checknext(%struct.LexState* %14, i32 288), !dbg !1914
  %15 = load %struct.LexState** %1, align 4, !dbg !1915
  %16 = load %struct.Labellist** %ll, align 4, !dbg !1915
  %17 = load %struct.TString** %2, align 4, !dbg !1915
  %18 = load i32* %3, align 4, !dbg !1915
  %19 = load %struct.FuncState** %fs, align 4, !dbg !1916
  %20 = call i32 @luaK_getlabel(%struct.FuncState* %19), !dbg !1916
  %21 = call i32 @newlabelentry(%struct.LexState* %15, %struct.Labellist* %16, %struct.TString* %17, i32 %18, i32 %20), !dbg !1915
  store i32 %21, i32* %l, align 4, !dbg !1915
  %22 = load %struct.LexState** %1, align 4, !dbg !1917
  call void @skipnoopstat(%struct.LexState* %22), !dbg !1917
  %23 = load %struct.LexState** %1, align 4, !dbg !1918
  %24 = call i32 @block_follow(%struct.LexState* %23, i32 0), !dbg !1918
  %25 = icmp ne i32 %24, 0, !dbg !1918
  br i1 %25, label %26, label %38, !dbg !1918

; <label>:26                                      ; preds = %0
  %27 = load %struct.FuncState** %fs, align 4, !dbg !1920
  %28 = getelementptr inbounds %struct.FuncState* %27, i32 0, i32 3, !dbg !1920
  %29 = load %struct.BlockCnt** %28, align 4, !dbg !1920
  %30 = getelementptr inbounds %struct.BlockCnt* %29, i32 0, i32 3, !dbg !1920
  %31 = load i8* %30, align 1, !dbg !1920
  %32 = load i32* %l, align 4, !dbg !1920
  %33 = load %struct.Labellist** %ll, align 4, !dbg !1920
  %34 = getelementptr inbounds %struct.Labellist* %33, i32 0, i32 0, !dbg !1920
  %35 = load %struct.Labeldesc** %34, align 4, !dbg !1920
  %36 = getelementptr inbounds %struct.Labeldesc* %35, i32 %32, !dbg !1920
  %37 = getelementptr inbounds %struct.Labeldesc* %36, i32 0, i32 3, !dbg !1920
  store i8 %31, i8* %37, align 1, !dbg !1920
  br label %38, !dbg !1922

; <label>:38                                      ; preds = %26, %0
  %39 = load %struct.LexState** %1, align 4, !dbg !1923
  %40 = load i32* %l, align 4, !dbg !1923
  %41 = load %struct.Labellist** %ll, align 4, !dbg !1923
  %42 = getelementptr inbounds %struct.Labellist* %41, i32 0, i32 0, !dbg !1923
  %43 = load %struct.Labeldesc** %42, align 4, !dbg !1923
  %44 = getelementptr inbounds %struct.Labeldesc* %43, i32 %40, !dbg !1923
  call void @findgotos(%struct.LexState* %39, %struct.Labeldesc* %44), !dbg !1923
  ret void, !dbg !1924
}

; Function Attrs: nounwind
define internal %struct.TString* @str_checkname(%struct.LexState* %ls) #0 {
  %1 = alloca %struct.LexState*, align 4
  %ts = alloca %struct.TString*, align 4
  store %struct.LexState* %ls, %struct.LexState** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.LexState** %1}, metadata !1925), !dbg !1926
  call void @llvm.dbg.declare(metadata !{%struct.TString** %ts}, metadata !1927), !dbg !1928
  %2 = load %struct.LexState** %1, align 4, !dbg !1929
  call void @check(%struct.LexState* %2, i32 292), !dbg !1929
  %3 = load %struct.LexState** %1, align 4, !dbg !1930
  %4 = getelementptr inbounds %struct.LexState* %3, i32 0, i32 3, !dbg !1930
  %5 = getelementptr inbounds %struct.Token* %4, i32 0, i32 1, !dbg !1930
  %6 = bitcast %union.SemInfo* %5 to %struct.TString**, !dbg !1930
  %7 = load %struct.TString** %6, align 4, !dbg !1930
  store %struct.TString* %7, %struct.TString** %ts, align 4, !dbg !1930
  %8 = load %struct.LexState** %1, align 4, !dbg !1931
  call void @luaX_next(%struct.LexState* %8), !dbg !1931
  %9 = load %struct.TString** %ts, align 4, !dbg !1932
  ret %struct.TString* %9, !dbg !1932
}

; Function Attrs: nounwind
define internal void @retstat(%struct.LexState* %ls) #0 {
  %1 = alloca %struct.LexState*, align 4
  %fs = alloca %struct.FuncState*, align 4
  %e = alloca %struct.expdesc, align 8
  %first = alloca i32, align 4
  %nret = alloca i32, align 4
  store %struct.LexState* %ls, %struct.LexState** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.LexState** %1}, metadata !1933), !dbg !1934
  call void @llvm.dbg.declare(metadata !{%struct.FuncState** %fs}, metadata !1935), !dbg !1936
  %2 = load %struct.LexState** %1, align 4, !dbg !1937
  %3 = getelementptr inbounds %struct.LexState* %2, i32 0, i32 5, !dbg !1937
  %4 = load %struct.FuncState** %3, align 4, !dbg !1937
  store %struct.FuncState* %4, %struct.FuncState** %fs, align 4, !dbg !1937
  call void @llvm.dbg.declare(metadata !{%struct.expdesc* %e}, metadata !1938), !dbg !1939
  call void @llvm.dbg.declare(metadata !{i32* %first}, metadata !1940), !dbg !1941
  call void @llvm.dbg.declare(metadata !{i32* %nret}, metadata !1942), !dbg !1943
  %5 = load %struct.LexState** %1, align 4, !dbg !1944
  %6 = call i32 @block_follow(%struct.LexState* %5, i32 1), !dbg !1944
  %7 = icmp ne i32 %6, 0, !dbg !1944
  br i1 %7, label %14, label %8, !dbg !1944

; <label>:8                                       ; preds = %0
  %9 = load %struct.LexState** %1, align 4, !dbg !1946
  %10 = getelementptr inbounds %struct.LexState* %9, i32 0, i32 3, !dbg !1946
  %11 = getelementptr inbounds %struct.Token* %10, i32 0, i32 0, !dbg !1946
  %12 = load i32* %11, align 4, !dbg !1946
  %13 = icmp eq i32 %12, 59, !dbg !1946
  br i1 %13, label %14, label %15, !dbg !1946

; <label>:14                                      ; preds = %8, %0
  store i32 0, i32* %nret, align 4, !dbg !1948
  store i32 0, i32* %first, align 4, !dbg !1948
  br label %74, !dbg !1948

; <label>:15                                      ; preds = %8
  %16 = load %struct.LexState** %1, align 4, !dbg !1949
  %17 = call i32 @explist(%struct.LexState* %16, %struct.expdesc* %e), !dbg !1949
  store i32 %17, i32* %nret, align 4, !dbg !1949
  %18 = getelementptr inbounds %struct.expdesc* %e, i32 0, i32 0, !dbg !1951
  %19 = load i32* %18, align 4, !dbg !1951
  %20 = icmp eq i32 %19, 13, !dbg !1951
  br i1 %20, label %25, label %21, !dbg !1951

; <label>:21                                      ; preds = %15
  %22 = getelementptr inbounds %struct.expdesc* %e, i32 0, i32 0, !dbg !1953
  %23 = load i32* %22, align 4, !dbg !1953
  %24 = icmp eq i32 %23, 14, !dbg !1953
  br i1 %24, label %25, label %60, !dbg !1953

; <label>:25                                      ; preds = %21, %15
  %26 = load %struct.FuncState** %fs, align 4, !dbg !1955
  call void @luaK_setreturns(%struct.FuncState* %26, %struct.expdesc* %e, i32 -1), !dbg !1955
  %27 = getelementptr inbounds %struct.expdesc* %e, i32 0, i32 0, !dbg !1957
  %28 = load i32* %27, align 4, !dbg !1957
  %29 = icmp eq i32 %28, 13, !dbg !1957
  br i1 %29, label %30, label %55, !dbg !1957

; <label>:30                                      ; preds = %25
  %31 = load i32* %nret, align 4, !dbg !1959
  %32 = icmp eq i32 %31, 1, !dbg !1959
  br i1 %32, label %33, label %55, !dbg !1959

; <label>:33                                      ; preds = %30
  %34 = getelementptr inbounds %struct.expdesc* %e, i32 0, i32 1, !dbg !1961
  %35 = bitcast %union.anon.6* %34 to i32*, !dbg !1961
  %36 = load i32* %35, align 4, !dbg !1961
  %37 = load %struct.FuncState** %fs, align 4, !dbg !1961
  %38 = getelementptr inbounds %struct.FuncState* %37, i32 0, i32 0, !dbg !1961
  %39 = load %struct.Proto** %38, align 4, !dbg !1961
  %40 = getelementptr inbounds %struct.Proto* %39, i32 0, i32 15, !dbg !1961
  %41 = load i32** %40, align 4, !dbg !1961
  %42 = getelementptr inbounds i32* %41, i32 %36, !dbg !1961
  %43 = load i32* %42, align 4, !dbg !1961
  %44 = and i32 %43, -64, !dbg !1961
  %45 = or i32 %44, 37, !dbg !1961
  %46 = getelementptr inbounds %struct.expdesc* %e, i32 0, i32 1, !dbg !1961
  %47 = bitcast %union.anon.6* %46 to i32*, !dbg !1961
  %48 = load i32* %47, align 4, !dbg !1961
  %49 = load %struct.FuncState** %fs, align 4, !dbg !1961
  %50 = getelementptr inbounds %struct.FuncState* %49, i32 0, i32 0, !dbg !1961
  %51 = load %struct.Proto** %50, align 4, !dbg !1961
  %52 = getelementptr inbounds %struct.Proto* %51, i32 0, i32 15, !dbg !1961
  %53 = load i32** %52, align 4, !dbg !1961
  %54 = getelementptr inbounds i32* %53, i32 %48, !dbg !1961
  store i32 %45, i32* %54, align 4, !dbg !1961
  br label %55, !dbg !1963

; <label>:55                                      ; preds = %33, %30, %25
  %56 = load %struct.FuncState** %fs, align 4, !dbg !1964
  %57 = getelementptr inbounds %struct.FuncState* %56, i32 0, i32 11, !dbg !1964
  %58 = load i8* %57, align 1, !dbg !1964
  %59 = zext i8 %58 to i32, !dbg !1964
  store i32 %59, i32* %first, align 4, !dbg !1964
  store i32 -1, i32* %nret, align 4, !dbg !1965
  br label %73, !dbg !1966

; <label>:60                                      ; preds = %21
  %61 = load i32* %nret, align 4, !dbg !1967
  %62 = icmp eq i32 %61, 1, !dbg !1967
  br i1 %62, label %63, label %66, !dbg !1967

; <label>:63                                      ; preds = %60
  %64 = load %struct.FuncState** %fs, align 4, !dbg !1970
  %65 = call i32 @luaK_exp2anyreg(%struct.FuncState* %64, %struct.expdesc* %e), !dbg !1970
  store i32 %65, i32* %first, align 4, !dbg !1970
  br label %72, !dbg !1970

; <label>:66                                      ; preds = %60
  %67 = load %struct.FuncState** %fs, align 4, !dbg !1971
  call void @luaK_exp2nextreg(%struct.FuncState* %67, %struct.expdesc* %e), !dbg !1971
  %68 = load %struct.FuncState** %fs, align 4, !dbg !1973
  %69 = getelementptr inbounds %struct.FuncState* %68, i32 0, i32 11, !dbg !1973
  %70 = load i8* %69, align 1, !dbg !1973
  %71 = zext i8 %70 to i32, !dbg !1973
  store i32 %71, i32* %first, align 4, !dbg !1973
  br label %72

; <label>:72                                      ; preds = %66, %63
  br label %73

; <label>:73                                      ; preds = %72, %55
  br label %74

; <label>:74                                      ; preds = %73, %14
  %75 = load %struct.FuncState** %fs, align 4, !dbg !1974
  %76 = load i32* %first, align 4, !dbg !1974
  %77 = load i32* %nret, align 4, !dbg !1974
  call void @luaK_ret(%struct.FuncState* %75, i32 %76, i32 %77), !dbg !1974
  %78 = load %struct.LexState** %1, align 4, !dbg !1975
  %79 = call i32 @testnext(%struct.LexState* %78, i32 59), !dbg !1975
  ret void, !dbg !1976
}

; Function Attrs: nounwind
define internal void @gotostat(%struct.LexState* %ls, i32 %pc) #0 {
  %1 = alloca %struct.LexState*, align 4
  %2 = alloca i32, align 4
  %line = alloca i32, align 4
  %label = alloca %struct.TString*, align 4
  %g = alloca i32, align 4
  store %struct.LexState* %ls, %struct.LexState** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.LexState** %1}, metadata !1977), !dbg !1978
  store i32 %pc, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !1979), !dbg !1980
  call void @llvm.dbg.declare(metadata !{i32* %line}, metadata !1981), !dbg !1982
  %3 = load %struct.LexState** %1, align 4, !dbg !1983
  %4 = getelementptr inbounds %struct.LexState* %3, i32 0, i32 1, !dbg !1983
  %5 = load i32* %4, align 4, !dbg !1983
  store i32 %5, i32* %line, align 4, !dbg !1983
  call void @llvm.dbg.declare(metadata !{%struct.TString** %label}, metadata !1984), !dbg !1985
  call void @llvm.dbg.declare(metadata !{i32* %g}, metadata !1986), !dbg !1987
  %6 = load %struct.LexState** %1, align 4, !dbg !1988
  %7 = call i32 @testnext(%struct.LexState* %6, i32 266), !dbg !1988
  %8 = icmp ne i32 %7, 0, !dbg !1988
  br i1 %8, label %9, label %12, !dbg !1988

; <label>:9                                       ; preds = %0
  %10 = load %struct.LexState** %1, align 4, !dbg !1990
  %11 = call %struct.TString* @str_checkname(%struct.LexState* %10), !dbg !1990
  store %struct.TString* %11, %struct.TString** %label, align 4, !dbg !1990
  br label %18, !dbg !1990

; <label>:12                                      ; preds = %0
  %13 = load %struct.LexState** %1, align 4, !dbg !1991
  call void @luaX_next(%struct.LexState* %13), !dbg !1991
  %14 = load %struct.LexState** %1, align 4, !dbg !1993
  %15 = getelementptr inbounds %struct.LexState* %14, i32 0, i32 6, !dbg !1993
  %16 = load %struct.lua_State** %15, align 4, !dbg !1993
  %17 = call %struct.TString* @luaS_new(%struct.lua_State* %16, i8* getelementptr inbounds ([6 x i8]* @.str3, i32 0, i32 0)), !dbg !1993
  store %struct.TString* %17, %struct.TString** %label, align 4, !dbg !1993
  br label %18

; <label>:18                                      ; preds = %12, %9
  %19 = load %struct.LexState** %1, align 4, !dbg !1994
  %20 = load %struct.LexState** %1, align 4, !dbg !1994
  %21 = getelementptr inbounds %struct.LexState* %20, i32 0, i32 10, !dbg !1994
  %22 = load %struct.Dyndata** %21, align 4, !dbg !1994
  %23 = getelementptr inbounds %struct.Dyndata* %22, i32 0, i32 1, !dbg !1994
  %24 = load %struct.TString** %label, align 4, !dbg !1994
  %25 = load i32* %line, align 4, !dbg !1994
  %26 = load i32* %2, align 4, !dbg !1994
  %27 = call i32 @newlabelentry(%struct.LexState* %19, %struct.Labellist* %23, %struct.TString* %24, i32 %25, i32 %26), !dbg !1994
  store i32 %27, i32* %g, align 4, !dbg !1994
  %28 = load %struct.LexState** %1, align 4, !dbg !1995
  %29 = load i32* %g, align 4, !dbg !1995
  %30 = call i32 @findlabel(%struct.LexState* %28, i32 %29), !dbg !1995
  ret void, !dbg !1996
}

; Function Attrs: nounwind
define internal void @exprstat(%struct.LexState* %ls) #0 {
  %1 = alloca %struct.LexState*, align 4
  %fs = alloca %struct.FuncState*, align 4
  %v = alloca %struct.LHS_assign, align 8
  store %struct.LexState* %ls, %struct.LexState** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.LexState** %1}, metadata !1997), !dbg !1998
  call void @llvm.dbg.declare(metadata !{%struct.FuncState** %fs}, metadata !1999), !dbg !2000
  %2 = load %struct.LexState** %1, align 4, !dbg !2001
  %3 = getelementptr inbounds %struct.LexState* %2, i32 0, i32 5, !dbg !2001
  %4 = load %struct.FuncState** %3, align 4, !dbg !2001
  store %struct.FuncState* %4, %struct.FuncState** %fs, align 4, !dbg !2001
  call void @llvm.dbg.declare(metadata !{%struct.LHS_assign* %v}, metadata !2002), !dbg !2003
  %5 = load %struct.LexState** %1, align 4, !dbg !2004
  %6 = getelementptr inbounds %struct.LHS_assign* %v, i32 0, i32 1, !dbg !2004
  call void @suffixedexp(%struct.LexState* %5, %struct.expdesc* %6), !dbg !2004
  %7 = load %struct.LexState** %1, align 4, !dbg !2005
  %8 = getelementptr inbounds %struct.LexState* %7, i32 0, i32 3, !dbg !2005
  %9 = getelementptr inbounds %struct.Token* %8, i32 0, i32 0, !dbg !2005
  %10 = load i32* %9, align 4, !dbg !2005
  %11 = icmp eq i32 %10, 61, !dbg !2005
  br i1 %11, label %18, label %12, !dbg !2005

; <label>:12                                      ; preds = %0
  %13 = load %struct.LexState** %1, align 4, !dbg !2007
  %14 = getelementptr inbounds %struct.LexState* %13, i32 0, i32 3, !dbg !2007
  %15 = getelementptr inbounds %struct.Token* %14, i32 0, i32 0, !dbg !2007
  %16 = load i32* %15, align 4, !dbg !2007
  %17 = icmp eq i32 %16, 44, !dbg !2007
  br i1 %17, label %18, label %21, !dbg !2007

; <label>:18                                      ; preds = %12, %0
  %19 = getelementptr inbounds %struct.LHS_assign* %v, i32 0, i32 0, !dbg !2009
  store %struct.LHS_assign* null, %struct.LHS_assign** %19, align 4, !dbg !2009
  %20 = load %struct.LexState** %1, align 4, !dbg !2011
  call void @assignment(%struct.LexState* %20, %struct.LHS_assign* %v, i32 1), !dbg !2011
  br label %52, !dbg !2012

; <label>:21                                      ; preds = %12
  %22 = getelementptr inbounds %struct.LHS_assign* %v, i32 0, i32 1, !dbg !2013
  %23 = getelementptr inbounds %struct.expdesc* %22, i32 0, i32 0, !dbg !2013
  %24 = load i32* %23, align 4, !dbg !2013
  %25 = icmp eq i32 %24, 13, !dbg !2013
  br i1 %25, label %28, label %26, !dbg !2013

; <label>:26                                      ; preds = %21
  %27 = load %struct.LexState** %1, align 4, !dbg !2017
  call void @luaX_syntaxerror(%struct.LexState* %27, i8* getelementptr inbounds ([13 x i8]* @.str6, i32 0, i32 0)) #6, !dbg !2017
  unreachable, !dbg !2017

; <label>:28                                      ; preds = %21
  %29 = getelementptr inbounds %struct.LHS_assign* %v, i32 0, i32 1, !dbg !2019
  %30 = getelementptr inbounds %struct.expdesc* %29, i32 0, i32 1, !dbg !2019
  %31 = bitcast %union.anon.6* %30 to i32*, !dbg !2019
  %32 = load i32* %31, align 4, !dbg !2019
  %33 = load %struct.FuncState** %fs, align 4, !dbg !2019
  %34 = getelementptr inbounds %struct.FuncState* %33, i32 0, i32 0, !dbg !2019
  %35 = load %struct.Proto** %34, align 4, !dbg !2019
  %36 = getelementptr inbounds %struct.Proto* %35, i32 0, i32 15, !dbg !2019
  %37 = load i32** %36, align 4, !dbg !2019
  %38 = getelementptr inbounds i32* %37, i32 %32, !dbg !2019
  %39 = load i32* %38, align 4, !dbg !2019
  %40 = and i32 %39, -8372225, !dbg !2019
  %41 = or i32 %40, 16384, !dbg !2019
  %42 = getelementptr inbounds %struct.LHS_assign* %v, i32 0, i32 1, !dbg !2019
  %43 = getelementptr inbounds %struct.expdesc* %42, i32 0, i32 1, !dbg !2019
  %44 = bitcast %union.anon.6* %43 to i32*, !dbg !2019
  %45 = load i32* %44, align 4, !dbg !2019
  %46 = load %struct.FuncState** %fs, align 4, !dbg !2019
  %47 = getelementptr inbounds %struct.FuncState* %46, i32 0, i32 0, !dbg !2019
  %48 = load %struct.Proto** %47, align 4, !dbg !2019
  %49 = getelementptr inbounds %struct.Proto* %48, i32 0, i32 15, !dbg !2019
  %50 = load i32** %49, align 4, !dbg !2019
  %51 = getelementptr inbounds i32* %50, i32 %45, !dbg !2019
  store i32 %41, i32* %51, align 4, !dbg !2019
  br label %52

; <label>:52                                      ; preds = %28, %18
  ret void, !dbg !2020
}

; Function Attrs: nounwind
define internal void @suffixedexp(%struct.LexState* %ls, %struct.expdesc* %v) #0 {
  %1 = alloca %struct.LexState*, align 4
  %2 = alloca %struct.expdesc*, align 4
  %fs = alloca %struct.FuncState*, align 4
  %line = alloca i32, align 4
  %key = alloca %struct.expdesc, align 8
  %key1 = alloca %struct.expdesc, align 8
  store %struct.LexState* %ls, %struct.LexState** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.LexState** %1}, metadata !2021), !dbg !2022
  store %struct.expdesc* %v, %struct.expdesc** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.expdesc** %2}, metadata !2023), !dbg !2024
  call void @llvm.dbg.declare(metadata !{%struct.FuncState** %fs}, metadata !2025), !dbg !2026
  %3 = load %struct.LexState** %1, align 4, !dbg !2027
  %4 = getelementptr inbounds %struct.LexState* %3, i32 0, i32 5, !dbg !2027
  %5 = load %struct.FuncState** %4, align 4, !dbg !2027
  store %struct.FuncState* %5, %struct.FuncState** %fs, align 4, !dbg !2027
  call void @llvm.dbg.declare(metadata !{i32* %line}, metadata !2028), !dbg !2029
  %6 = load %struct.LexState** %1, align 4, !dbg !2030
  %7 = getelementptr inbounds %struct.LexState* %6, i32 0, i32 1, !dbg !2030
  %8 = load i32* %7, align 4, !dbg !2030
  store i32 %8, i32* %line, align 4, !dbg !2030
  %9 = load %struct.LexState** %1, align 4, !dbg !2031
  %10 = load %struct.expdesc** %2, align 4, !dbg !2031
  call void @primaryexp(%struct.LexState* %9, %struct.expdesc* %10), !dbg !2031
  br label %11, !dbg !2032

; <label>:11                                      ; preds = %40, %0
  %12 = load %struct.LexState** %1, align 4, !dbg !2034
  %13 = getelementptr inbounds %struct.LexState* %12, i32 0, i32 3, !dbg !2034
  %14 = getelementptr inbounds %struct.Token* %13, i32 0, i32 0, !dbg !2034
  %15 = load i32* %14, align 4, !dbg !2034
  switch i32 %15, label %39 [
    i32 46, label %16
    i32 91, label %19
    i32 58, label %25
    i32 40, label %33
    i32 293, label %33
    i32 123, label %33
  ], !dbg !2034

; <label>:16                                      ; preds = %11
  %17 = load %struct.LexState** %1, align 4, !dbg !2036
  %18 = load %struct.expdesc** %2, align 4, !dbg !2036
  call void @fieldsel(%struct.LexState* %17, %struct.expdesc* %18), !dbg !2036
  br label %40, !dbg !2039

; <label>:19                                      ; preds = %11
  call void @llvm.dbg.declare(metadata !{%struct.expdesc* %key}, metadata !2040), !dbg !2042
  %20 = load %struct.FuncState** %fs, align 4, !dbg !2043
  %21 = load %struct.expdesc** %2, align 4, !dbg !2043
  call void @luaK_exp2anyregup(%struct.FuncState* %20, %struct.expdesc* %21), !dbg !2043
  %22 = load %struct.LexState** %1, align 4, !dbg !2044
  call void @yindex(%struct.LexState* %22, %struct.expdesc* %key), !dbg !2044
  %23 = load %struct.FuncState** %fs, align 4, !dbg !2045
  %24 = load %struct.expdesc** %2, align 4, !dbg !2045
  call void @luaK_indexed(%struct.FuncState* %23, %struct.expdesc* %24, %struct.expdesc* %key), !dbg !2045
  br label %40, !dbg !2046

; <label>:25                                      ; preds = %11
  call void @llvm.dbg.declare(metadata !{%struct.expdesc* %key1}, metadata !2047), !dbg !2049
  %26 = load %struct.LexState** %1, align 4, !dbg !2050
  call void @luaX_next(%struct.LexState* %26), !dbg !2050
  %27 = load %struct.LexState** %1, align 4, !dbg !2051
  call void @checkname(%struct.LexState* %27, %struct.expdesc* %key1), !dbg !2051
  %28 = load %struct.FuncState** %fs, align 4, !dbg !2052
  %29 = load %struct.expdesc** %2, align 4, !dbg !2052
  call void @luaK_self(%struct.FuncState* %28, %struct.expdesc* %29, %struct.expdesc* %key1), !dbg !2052
  %30 = load %struct.LexState** %1, align 4, !dbg !2053
  %31 = load %struct.expdesc** %2, align 4, !dbg !2053
  %32 = load i32* %line, align 4, !dbg !2053
  call void @funcargs(%struct.LexState* %30, %struct.expdesc* %31, i32 %32), !dbg !2053
  br label %40, !dbg !2054

; <label>:33                                      ; preds = %11, %11, %11
  %34 = load %struct.FuncState** %fs, align 4, !dbg !2055
  %35 = load %struct.expdesc** %2, align 4, !dbg !2055
  call void @luaK_exp2nextreg(%struct.FuncState* %34, %struct.expdesc* %35), !dbg !2055
  %36 = load %struct.LexState** %1, align 4, !dbg !2057
  %37 = load %struct.expdesc** %2, align 4, !dbg !2057
  %38 = load i32* %line, align 4, !dbg !2057
  call void @funcargs(%struct.LexState* %36, %struct.expdesc* %37, i32 %38), !dbg !2057
  br label %40, !dbg !2058

; <label>:39                                      ; preds = %11
  ret void, !dbg !2059

; <label>:40                                      ; preds = %33, %25, %19, %16
  br label %11, !dbg !2060
}

; Function Attrs: nounwind
define internal void @assignment(%struct.LexState* %ls, %struct.LHS_assign* %lh, i32 %nvars) #0 {
  %1 = alloca %struct.LexState*, align 4
  %2 = alloca %struct.LHS_assign*, align 4
  %3 = alloca i32, align 4
  %e = alloca %struct.expdesc, align 8
  %nv = alloca %struct.LHS_assign, align 8
  %nexps = alloca i32, align 4
  store %struct.LexState* %ls, %struct.LexState** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.LexState** %1}, metadata !2061), !dbg !2062
  store %struct.LHS_assign* %lh, %struct.LHS_assign** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.LHS_assign** %2}, metadata !2063), !dbg !2064
  store i32 %nvars, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !2065), !dbg !2066
  call void @llvm.dbg.declare(metadata !{%struct.expdesc* %e}, metadata !2067), !dbg !2068
  %4 = load %struct.LHS_assign** %2, align 4, !dbg !2069
  %5 = getelementptr inbounds %struct.LHS_assign* %4, i32 0, i32 1, !dbg !2069
  %6 = getelementptr inbounds %struct.expdesc* %5, i32 0, i32 0, !dbg !2069
  %7 = load i32* %6, align 4, !dbg !2069
  %8 = icmp ule i32 8, %7, !dbg !2069
  br i1 %8, label %9, label %15, !dbg !2069

; <label>:9                                       ; preds = %0
  %10 = load %struct.LHS_assign** %2, align 4, !dbg !2072
  %11 = getelementptr inbounds %struct.LHS_assign* %10, i32 0, i32 1, !dbg !2072
  %12 = getelementptr inbounds %struct.expdesc* %11, i32 0, i32 0, !dbg !2072
  %13 = load i32* %12, align 4, !dbg !2072
  %14 = icmp ule i32 %13, 10, !dbg !2072
  br i1 %14, label %17, label %15, !dbg !2072

; <label>:15                                      ; preds = %9, %0
  %16 = load %struct.LexState** %1, align 4, !dbg !2074
  call void @luaX_syntaxerror(%struct.LexState* %16, i8* getelementptr inbounds ([13 x i8]* @.str6, i32 0, i32 0)) #6, !dbg !2074
  unreachable, !dbg !2074

; <label>:17                                      ; preds = %9
  %18 = load %struct.LexState** %1, align 4, !dbg !2077
  %19 = call i32 @testnext(%struct.LexState* %18, i32 44), !dbg !2077
  %20 = icmp ne i32 %19, 0, !dbg !2077
  br i1 %20, label %21, label %49, !dbg !2077

; <label>:21                                      ; preds = %17
  call void @llvm.dbg.declare(metadata !{%struct.LHS_assign* %nv}, metadata !2079), !dbg !2081
  %22 = load %struct.LHS_assign** %2, align 4, !dbg !2082
  %23 = getelementptr inbounds %struct.LHS_assign* %nv, i32 0, i32 0, !dbg !2082
  store %struct.LHS_assign* %22, %struct.LHS_assign** %23, align 4, !dbg !2082
  %24 = load %struct.LexState** %1, align 4, !dbg !2083
  %25 = getelementptr inbounds %struct.LHS_assign* %nv, i32 0, i32 1, !dbg !2083
  call void @suffixedexp(%struct.LexState* %24, %struct.expdesc* %25), !dbg !2083
  %26 = getelementptr inbounds %struct.LHS_assign* %nv, i32 0, i32 1, !dbg !2084
  %27 = getelementptr inbounds %struct.expdesc* %26, i32 0, i32 0, !dbg !2084
  %28 = load i32* %27, align 4, !dbg !2084
  %29 = icmp ne i32 %28, 10, !dbg !2084
  br i1 %29, label %30, label %34, !dbg !2084

; <label>:30                                      ; preds = %21
  %31 = load %struct.LexState** %1, align 4, !dbg !2086
  %32 = load %struct.LHS_assign** %2, align 4, !dbg !2086
  %33 = getelementptr inbounds %struct.LHS_assign* %nv, i32 0, i32 1, !dbg !2086
  call void @check_conflict(%struct.LexState* %31, %struct.LHS_assign* %32, %struct.expdesc* %33), !dbg !2086
  br label %34, !dbg !2086

; <label>:34                                      ; preds = %30, %21
  %35 = load %struct.LexState** %1, align 4, !dbg !2087
  %36 = getelementptr inbounds %struct.LexState* %35, i32 0, i32 5, !dbg !2087
  %37 = load %struct.FuncState** %36, align 4, !dbg !2087
  %38 = load i32* %3, align 4, !dbg !2087
  %39 = load %struct.LexState** %1, align 4, !dbg !2087
  %40 = getelementptr inbounds %struct.LexState* %39, i32 0, i32 6, !dbg !2087
  %41 = load %struct.lua_State** %40, align 4, !dbg !2087
  %42 = getelementptr inbounds %struct.lua_State* %41, i32 0, i32 22, !dbg !2087
  %43 = load i16* %42, align 2, !dbg !2087
  %44 = zext i16 %43 to i32, !dbg !2087
  %45 = add nsw i32 %38, %44, !dbg !2087
  call void @checklimit(%struct.FuncState* %37, i32 %45, i32 200, i8* getelementptr inbounds ([9 x i8]* @.str7, i32 0, i32 0)), !dbg !2087
  %46 = load %struct.LexState** %1, align 4, !dbg !2088
  %47 = load i32* %3, align 4, !dbg !2088
  %48 = add nsw i32 %47, 1, !dbg !2088
  call void @assignment(%struct.LexState* %46, %struct.LHS_assign* %nv, i32 %48), !dbg !2088
  br label %86, !dbg !2089

; <label>:49                                      ; preds = %17
  call void @llvm.dbg.declare(metadata !{i32* %nexps}, metadata !2090), !dbg !2092
  %50 = load %struct.LexState** %1, align 4, !dbg !2093
  call void @checknext(%struct.LexState* %50, i32 61), !dbg !2093
  %51 = load %struct.LexState** %1, align 4, !dbg !2094
  %52 = call i32 @explist(%struct.LexState* %51, %struct.expdesc* %e), !dbg !2094
  store i32 %52, i32* %nexps, align 4, !dbg !2094
  %53 = load i32* %nexps, align 4, !dbg !2095
  %54 = load i32* %3, align 4, !dbg !2095
  %55 = icmp ne i32 %53, %54, !dbg !2095
  br i1 %55, label %56, label %76, !dbg !2095

; <label>:56                                      ; preds = %49
  %57 = load %struct.LexState** %1, align 4, !dbg !2097
  %58 = load i32* %3, align 4, !dbg !2097
  %59 = load i32* %nexps, align 4, !dbg !2097
  call void @adjust_assign(%struct.LexState* %57, i32 %58, i32 %59, %struct.expdesc* %e), !dbg !2097
  %60 = load i32* %nexps, align 4, !dbg !2099
  %61 = load i32* %3, align 4, !dbg !2099
  %62 = icmp sgt i32 %60, %61, !dbg !2099
  br i1 %62, label %63, label %75, !dbg !2099

; <label>:63                                      ; preds = %56
  %64 = load i32* %nexps, align 4, !dbg !2101
  %65 = load i32* %3, align 4, !dbg !2101
  %66 = sub nsw i32 %64, %65, !dbg !2101
  %67 = load %struct.LexState** %1, align 4, !dbg !2101
  %68 = getelementptr inbounds %struct.LexState* %67, i32 0, i32 5, !dbg !2101
  %69 = load %struct.FuncState** %68, align 4, !dbg !2101
  %70 = getelementptr inbounds %struct.FuncState* %69, i32 0, i32 13, !dbg !2101
  %71 = load i8* %70, align 1, !dbg !2101
  %72 = zext i8 %71 to i32, !dbg !2101
  %73 = sub nsw i32 %72, %66, !dbg !2101
  %74 = trunc i32 %73 to i8, !dbg !2101
  store i8 %74, i8* %70, align 1, !dbg !2101
  br label %75, !dbg !2101

; <label>:75                                      ; preds = %63, %56
  br label %85, !dbg !2102

; <label>:76                                      ; preds = %49
  %77 = load %struct.LexState** %1, align 4, !dbg !2103
  %78 = getelementptr inbounds %struct.LexState* %77, i32 0, i32 5, !dbg !2103
  %79 = load %struct.FuncState** %78, align 4, !dbg !2103
  call void @luaK_setoneret(%struct.FuncState* %79, %struct.expdesc* %e), !dbg !2103
  %80 = load %struct.LexState** %1, align 4, !dbg !2105
  %81 = getelementptr inbounds %struct.LexState* %80, i32 0, i32 5, !dbg !2105
  %82 = load %struct.FuncState** %81, align 4, !dbg !2105
  %83 = load %struct.LHS_assign** %2, align 4, !dbg !2105
  %84 = getelementptr inbounds %struct.LHS_assign* %83, i32 0, i32 1, !dbg !2105
  call void @luaK_storevar(%struct.FuncState* %82, %struct.expdesc* %84, %struct.expdesc* %e), !dbg !2105
  br label %99, !dbg !2106

; <label>:85                                      ; preds = %75
  br label %86

; <label>:86                                      ; preds = %85, %34
  %87 = load %struct.LexState** %1, align 4, !dbg !2107
  %88 = getelementptr inbounds %struct.LexState* %87, i32 0, i32 5, !dbg !2107
  %89 = load %struct.FuncState** %88, align 4, !dbg !2107
  %90 = getelementptr inbounds %struct.FuncState* %89, i32 0, i32 13, !dbg !2107
  %91 = load i8* %90, align 1, !dbg !2107
  %92 = zext i8 %91 to i32, !dbg !2107
  %93 = sub nsw i32 %92, 1, !dbg !2107
  call void @init_exp(%struct.expdesc* %e, i32 7, i32 %93), !dbg !2107
  %94 = load %struct.LexState** %1, align 4, !dbg !2108
  %95 = getelementptr inbounds %struct.LexState* %94, i32 0, i32 5, !dbg !2108
  %96 = load %struct.FuncState** %95, align 4, !dbg !2108
  %97 = load %struct.LHS_assign** %2, align 4, !dbg !2108
  %98 = getelementptr inbounds %struct.LHS_assign* %97, i32 0, i32 1, !dbg !2108
  call void @luaK_storevar(%struct.FuncState* %96, %struct.expdesc* %98, %struct.expdesc* %e), !dbg !2108
  br label %99, !dbg !2109

; <label>:99                                      ; preds = %86, %76
  ret void, !dbg !2110
}

; Function Attrs: nounwind
define internal void @check_conflict(%struct.LexState* %ls, %struct.LHS_assign* %lh, %struct.expdesc* %v) #0 {
  %1 = alloca %struct.LexState*, align 4
  %2 = alloca %struct.LHS_assign*, align 4
  %3 = alloca %struct.expdesc*, align 4
  %fs = alloca %struct.FuncState*, align 4
  %extra = alloca i32, align 4
  %conflict = alloca i32, align 4
  %op = alloca i32, align 4
  store %struct.LexState* %ls, %struct.LexState** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.LexState** %1}, metadata !2112), !dbg !2113
  store %struct.LHS_assign* %lh, %struct.LHS_assign** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.LHS_assign** %2}, metadata !2114), !dbg !2115
  store %struct.expdesc* %v, %struct.expdesc** %3, align 4
  call void @llvm.dbg.declare(metadata !{%struct.expdesc** %3}, metadata !2116), !dbg !2117
  call void @llvm.dbg.declare(metadata !{%struct.FuncState** %fs}, metadata !2118), !dbg !2119
  %4 = load %struct.LexState** %1, align 4, !dbg !2120
  %5 = getelementptr inbounds %struct.LexState* %4, i32 0, i32 5, !dbg !2120
  %6 = load %struct.FuncState** %5, align 4, !dbg !2120
  store %struct.FuncState* %6, %struct.FuncState** %fs, align 4, !dbg !2120
  call void @llvm.dbg.declare(metadata !{i32* %extra}, metadata !2121), !dbg !2122
  %7 = load %struct.FuncState** %fs, align 4, !dbg !2123
  %8 = getelementptr inbounds %struct.FuncState* %7, i32 0, i32 13, !dbg !2123
  %9 = load i8* %8, align 1, !dbg !2123
  %10 = zext i8 %9 to i32, !dbg !2123
  store i32 %10, i32* %extra, align 4, !dbg !2123
  call void @llvm.dbg.declare(metadata !{i32* %conflict}, metadata !2124), !dbg !2125
  store i32 0, i32* %conflict, align 4, !dbg !2126
  br label %11, !dbg !2127

; <label>:11                                      ; preds = %86, %0
  %12 = load %struct.LHS_assign** %2, align 4, !dbg !2129
  %13 = icmp ne %struct.LHS_assign* %12, null, !dbg !2129
  br i1 %13, label %14, label %90, !dbg !2129

; <label>:14                                      ; preds = %11
  %15 = load %struct.LHS_assign** %2, align 4, !dbg !2132
  %16 = getelementptr inbounds %struct.LHS_assign* %15, i32 0, i32 1, !dbg !2132
  %17 = getelementptr inbounds %struct.expdesc* %16, i32 0, i32 0, !dbg !2132
  %18 = load i32* %17, align 4, !dbg !2132
  %19 = icmp eq i32 %18, 10, !dbg !2132
  br i1 %19, label %20, label %85, !dbg !2132

; <label>:20                                      ; preds = %14
  %21 = load %struct.LHS_assign** %2, align 4, !dbg !2135
  %22 = getelementptr inbounds %struct.LHS_assign* %21, i32 0, i32 1, !dbg !2135
  %23 = getelementptr inbounds %struct.expdesc* %22, i32 0, i32 1, !dbg !2135
  %24 = bitcast %union.anon.6* %23 to %struct.anon.7*, !dbg !2135
  %25 = getelementptr inbounds %struct.anon.7* %24, i32 0, i32 2, !dbg !2135
  %26 = load i8* %25, align 1, !dbg !2135
  %27 = zext i8 %26 to i32, !dbg !2135
  %28 = load %struct.expdesc** %3, align 4, !dbg !2135
  %29 = getelementptr inbounds %struct.expdesc* %28, i32 0, i32 0, !dbg !2135
  %30 = load i32* %29, align 4, !dbg !2135
  %31 = icmp eq i32 %27, %30, !dbg !2135
  br i1 %31, label %32, label %58, !dbg !2135

; <label>:32                                      ; preds = %20
  %33 = load %struct.LHS_assign** %2, align 4, !dbg !2138
  %34 = getelementptr inbounds %struct.LHS_assign* %33, i32 0, i32 1, !dbg !2138
  %35 = getelementptr inbounds %struct.expdesc* %34, i32 0, i32 1, !dbg !2138
  %36 = bitcast %union.anon.6* %35 to %struct.anon.7*, !dbg !2138
  %37 = getelementptr inbounds %struct.anon.7* %36, i32 0, i32 1, !dbg !2138
  %38 = load i8* %37, align 1, !dbg !2138
  %39 = zext i8 %38 to i32, !dbg !2138
  %40 = load %struct.expdesc** %3, align 4, !dbg !2138
  %41 = getelementptr inbounds %struct.expdesc* %40, i32 0, i32 1, !dbg !2138
  %42 = bitcast %union.anon.6* %41 to i32*, !dbg !2138
  %43 = load i32* %42, align 4, !dbg !2138
  %44 = icmp eq i32 %39, %43, !dbg !2138
  br i1 %44, label %45, label %58, !dbg !2138

; <label>:45                                      ; preds = %32
  store i32 1, i32* %conflict, align 4, !dbg !2140
  %46 = load %struct.LHS_assign** %2, align 4, !dbg !2142
  %47 = getelementptr inbounds %struct.LHS_assign* %46, i32 0, i32 1, !dbg !2142
  %48 = getelementptr inbounds %struct.expdesc* %47, i32 0, i32 1, !dbg !2142
  %49 = bitcast %union.anon.6* %48 to %struct.anon.7*, !dbg !2142
  %50 = getelementptr inbounds %struct.anon.7* %49, i32 0, i32 2, !dbg !2142
  store i8 8, i8* %50, align 1, !dbg !2142
  %51 = load i32* %extra, align 4, !dbg !2143
  %52 = trunc i32 %51 to i8, !dbg !2143
  %53 = load %struct.LHS_assign** %2, align 4, !dbg !2143
  %54 = getelementptr inbounds %struct.LHS_assign* %53, i32 0, i32 1, !dbg !2143
  %55 = getelementptr inbounds %struct.expdesc* %54, i32 0, i32 1, !dbg !2143
  %56 = bitcast %union.anon.6* %55 to %struct.anon.7*, !dbg !2143
  %57 = getelementptr inbounds %struct.anon.7* %56, i32 0, i32 1, !dbg !2143
  store i8 %52, i8* %57, align 1, !dbg !2143
  br label %58, !dbg !2144

; <label>:58                                      ; preds = %45, %32, %20
  %59 = load %struct.expdesc** %3, align 4, !dbg !2145
  %60 = getelementptr inbounds %struct.expdesc* %59, i32 0, i32 0, !dbg !2145
  %61 = load i32* %60, align 4, !dbg !2145
  %62 = icmp eq i32 %61, 8, !dbg !2145
  br i1 %62, label %63, label %84, !dbg !2145

; <label>:63                                      ; preds = %58
  %64 = load %struct.LHS_assign** %2, align 4, !dbg !2147
  %65 = getelementptr inbounds %struct.LHS_assign* %64, i32 0, i32 1, !dbg !2147
  %66 = getelementptr inbounds %struct.expdesc* %65, i32 0, i32 1, !dbg !2147
  %67 = bitcast %union.anon.6* %66 to %struct.anon.7*, !dbg !2147
  %68 = getelementptr inbounds %struct.anon.7* %67, i32 0, i32 0, !dbg !2147
  %69 = load i16* %68, align 2, !dbg !2147
  %70 = sext i16 %69 to i32, !dbg !2147
  %71 = load %struct.expdesc** %3, align 4, !dbg !2147
  %72 = getelementptr inbounds %struct.expdesc* %71, i32 0, i32 1, !dbg !2147
  %73 = bitcast %union.anon.6* %72 to i32*, !dbg !2147
  %74 = load i32* %73, align 4, !dbg !2147
  %75 = icmp eq i32 %70, %74, !dbg !2147
  br i1 %75, label %76, label %84, !dbg !2147

; <label>:76                                      ; preds = %63
  store i32 1, i32* %conflict, align 4, !dbg !2149
  %77 = load i32* %extra, align 4, !dbg !2151
  %78 = trunc i32 %77 to i16, !dbg !2151
  %79 = load %struct.LHS_assign** %2, align 4, !dbg !2151
  %80 = getelementptr inbounds %struct.LHS_assign* %79, i32 0, i32 1, !dbg !2151
  %81 = getelementptr inbounds %struct.expdesc* %80, i32 0, i32 1, !dbg !2151
  %82 = bitcast %union.anon.6* %81 to %struct.anon.7*, !dbg !2151
  %83 = getelementptr inbounds %struct.anon.7* %82, i32 0, i32 0, !dbg !2151
  store i16 %78, i16* %83, align 2, !dbg !2151
  br label %84, !dbg !2152

; <label>:84                                      ; preds = %76, %63, %58
  br label %85, !dbg !2153

; <label>:85                                      ; preds = %84, %14
  br label %86, !dbg !2154

; <label>:86                                      ; preds = %85
  %87 = load %struct.LHS_assign** %2, align 4, !dbg !2155
  %88 = getelementptr inbounds %struct.LHS_assign* %87, i32 0, i32 0, !dbg !2155
  %89 = load %struct.LHS_assign** %88, align 4, !dbg !2155
  store %struct.LHS_assign* %89, %struct.LHS_assign** %2, align 4, !dbg !2155
  br label %11, !dbg !2155

; <label>:90                                      ; preds = %11
  %91 = load i32* %conflict, align 4, !dbg !2156
  %92 = icmp ne i32 %91, 0, !dbg !2156
  br i1 %92, label %93, label %108, !dbg !2156

; <label>:93                                      ; preds = %90
  call void @llvm.dbg.declare(metadata !{i32* %op}, metadata !2158), !dbg !2161
  %94 = load %struct.expdesc** %3, align 4, !dbg !2162
  %95 = getelementptr inbounds %struct.expdesc* %94, i32 0, i32 0, !dbg !2162
  %96 = load i32* %95, align 4, !dbg !2162
  %97 = icmp eq i32 %96, 8, !dbg !2162
  %98 = select i1 %97, i32 0, i32 5, !dbg !2162
  store i32 %98, i32* %op, align 4, !dbg !2162
  %99 = load %struct.FuncState** %fs, align 4, !dbg !2163
  %100 = load i32* %op, align 4, !dbg !2163
  %101 = load i32* %extra, align 4, !dbg !2163
  %102 = load %struct.expdesc** %3, align 4, !dbg !2163
  %103 = getelementptr inbounds %struct.expdesc* %102, i32 0, i32 1, !dbg !2163
  %104 = bitcast %union.anon.6* %103 to i32*, !dbg !2163
  %105 = load i32* %104, align 4, !dbg !2163
  %106 = call i32 @luaK_codeABC(%struct.FuncState* %99, i32 %100, i32 %101, i32 %105, i32 0), !dbg !2163
  %107 = load %struct.FuncState** %fs, align 4, !dbg !2164
  call void @luaK_reserveregs(%struct.FuncState* %107, i32 1), !dbg !2164
  br label %108, !dbg !2165

; <label>:108                                     ; preds = %93, %90
  ret void, !dbg !2166
}

; Function Attrs: nounwind
define internal void @checklimit(%struct.FuncState* %fs, i32 %v, i32 %l, i8* %what) #0 {
  %1 = alloca %struct.FuncState*, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 4
  store %struct.FuncState* %fs, %struct.FuncState** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.FuncState** %1}, metadata !2167), !dbg !2168
  store i32 %v, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !2169), !dbg !2170
  store i32 %l, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !2171), !dbg !2172
  store i8* %what, i8** %4, align 4
  call void @llvm.dbg.declare(metadata !{i8** %4}, metadata !2173), !dbg !2174
  %5 = load i32* %2, align 4, !dbg !2175
  %6 = load i32* %3, align 4, !dbg !2175
  %7 = icmp sgt i32 %5, %6, !dbg !2175
  br i1 %7, label %8, label %12, !dbg !2175

; <label>:8                                       ; preds = %0
  %9 = load %struct.FuncState** %1, align 4, !dbg !2177
  %10 = load i32* %3, align 4, !dbg !2177
  %11 = load i8** %4, align 4, !dbg !2177
  call void @errorlimit(%struct.FuncState* %9, i32 %10, i8* %11) #6, !dbg !2177
  unreachable, !dbg !2177

; <label>:12                                      ; preds = %0
  ret void, !dbg !2179
}

; Function Attrs: nounwind
define internal void @checknext(%struct.LexState* %ls, i32 %c) #0 {
  %1 = alloca %struct.LexState*, align 4
  %2 = alloca i32, align 4
  store %struct.LexState* %ls, %struct.LexState** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.LexState** %1}, metadata !2180), !dbg !2181
  store i32 %c, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !2182), !dbg !2183
  %3 = load %struct.LexState** %1, align 4, !dbg !2184
  %4 = load i32* %2, align 4, !dbg !2184
  call void @check(%struct.LexState* %3, i32 %4), !dbg !2184
  %5 = load %struct.LexState** %1, align 4, !dbg !2185
  call void @luaX_next(%struct.LexState* %5), !dbg !2185
  ret void, !dbg !2186
}

; Function Attrs: nounwind
define internal i32 @explist(%struct.LexState* %ls, %struct.expdesc* %v) #0 {
  %1 = alloca %struct.LexState*, align 4
  %2 = alloca %struct.expdesc*, align 4
  %n = alloca i32, align 4
  store %struct.LexState* %ls, %struct.LexState** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.LexState** %1}, metadata !2187), !dbg !2188
  store %struct.expdesc* %v, %struct.expdesc** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.expdesc** %2}, metadata !2189), !dbg !2190
  call void @llvm.dbg.declare(metadata !{i32* %n}, metadata !2191), !dbg !2192
  store i32 1, i32* %n, align 4, !dbg !2193
  %3 = load %struct.LexState** %1, align 4, !dbg !2194
  %4 = load %struct.expdesc** %2, align 4, !dbg !2194
  call void @expr(%struct.LexState* %3, %struct.expdesc* %4), !dbg !2194
  br label %5, !dbg !2195

; <label>:5                                       ; preds = %9, %0
  %6 = load %struct.LexState** %1, align 4, !dbg !2196
  %7 = call i32 @testnext(%struct.LexState* %6, i32 44), !dbg !2196
  %8 = icmp ne i32 %7, 0, !dbg !2196
  br i1 %8, label %9, label %18, !dbg !2196

; <label>:9                                       ; preds = %5
  %10 = load %struct.LexState** %1, align 4, !dbg !2198
  %11 = getelementptr inbounds %struct.LexState* %10, i32 0, i32 5, !dbg !2198
  %12 = load %struct.FuncState** %11, align 4, !dbg !2198
  %13 = load %struct.expdesc** %2, align 4, !dbg !2198
  call void @luaK_exp2nextreg(%struct.FuncState* %12, %struct.expdesc* %13), !dbg !2198
  %14 = load %struct.LexState** %1, align 4, !dbg !2200
  %15 = load %struct.expdesc** %2, align 4, !dbg !2200
  call void @expr(%struct.LexState* %14, %struct.expdesc* %15), !dbg !2200
  %16 = load i32* %n, align 4, !dbg !2201
  %17 = add nsw i32 %16, 1, !dbg !2201
  store i32 %17, i32* %n, align 4, !dbg !2201
  br label %5, !dbg !2202

; <label>:18                                      ; preds = %5
  %19 = load i32* %n, align 4, !dbg !2203
  ret i32 %19, !dbg !2203
}

; Function Attrs: nounwind
define internal void @adjust_assign(%struct.LexState* %ls, i32 %nvars, i32 %nexps, %struct.expdesc* %e) #0 {
  %1 = alloca %struct.LexState*, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.expdesc*, align 4
  %fs = alloca %struct.FuncState*, align 4
  %extra = alloca i32, align 4
  %reg = alloca i32, align 4
  store %struct.LexState* %ls, %struct.LexState** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.LexState** %1}, metadata !2204), !dbg !2205
  store i32 %nvars, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !2206), !dbg !2207
  store i32 %nexps, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !2208), !dbg !2209
  store %struct.expdesc* %e, %struct.expdesc** %4, align 4
  call void @llvm.dbg.declare(metadata !{%struct.expdesc** %4}, metadata !2210), !dbg !2211
  call void @llvm.dbg.declare(metadata !{%struct.FuncState** %fs}, metadata !2212), !dbg !2213
  %5 = load %struct.LexState** %1, align 4, !dbg !2214
  %6 = getelementptr inbounds %struct.LexState* %5, i32 0, i32 5, !dbg !2214
  %7 = load %struct.FuncState** %6, align 4, !dbg !2214
  store %struct.FuncState* %7, %struct.FuncState** %fs, align 4, !dbg !2214
  call void @llvm.dbg.declare(metadata !{i32* %extra}, metadata !2215), !dbg !2216
  %8 = load i32* %2, align 4, !dbg !2217
  %9 = load i32* %3, align 4, !dbg !2217
  %10 = sub nsw i32 %8, %9, !dbg !2217
  store i32 %10, i32* %extra, align 4, !dbg !2217
  %11 = load %struct.expdesc** %4, align 4, !dbg !2218
  %12 = getelementptr inbounds %struct.expdesc* %11, i32 0, i32 0, !dbg !2218
  %13 = load i32* %12, align 4, !dbg !2218
  %14 = icmp eq i32 %13, 13, !dbg !2218
  br i1 %14, label %20, label %15, !dbg !2218

; <label>:15                                      ; preds = %0
  %16 = load %struct.expdesc** %4, align 4, !dbg !2220
  %17 = getelementptr inbounds %struct.expdesc* %16, i32 0, i32 0, !dbg !2220
  %18 = load i32* %17, align 4, !dbg !2220
  %19 = icmp eq i32 %18, 14, !dbg !2220
  br i1 %19, label %20, label %37, !dbg !2220

; <label>:20                                      ; preds = %15, %0
  %21 = load i32* %extra, align 4, !dbg !2222
  %22 = add nsw i32 %21, 1, !dbg !2222
  store i32 %22, i32* %extra, align 4, !dbg !2222
  %23 = load i32* %extra, align 4, !dbg !2224
  %24 = icmp slt i32 %23, 0, !dbg !2224
  br i1 %24, label %25, label %26, !dbg !2224

; <label>:25                                      ; preds = %20
  store i32 0, i32* %extra, align 4, !dbg !2226
  br label %26, !dbg !2226

; <label>:26                                      ; preds = %25, %20
  %27 = load %struct.FuncState** %fs, align 4, !dbg !2228
  %28 = load %struct.expdesc** %4, align 4, !dbg !2228
  %29 = load i32* %extra, align 4, !dbg !2228
  call void @luaK_setreturns(%struct.FuncState* %27, %struct.expdesc* %28, i32 %29), !dbg !2228
  %30 = load i32* %extra, align 4, !dbg !2229
  %31 = icmp sgt i32 %30, 1, !dbg !2229
  br i1 %31, label %32, label %36, !dbg !2229

; <label>:32                                      ; preds = %26
  %33 = load %struct.FuncState** %fs, align 4, !dbg !2231
  %34 = load i32* %extra, align 4, !dbg !2231
  %35 = sub nsw i32 %34, 1, !dbg !2231
  call void @luaK_reserveregs(%struct.FuncState* %33, i32 %35), !dbg !2231
  br label %36, !dbg !2231

; <label>:36                                      ; preds = %32, %26
  br label %59, !dbg !2233

; <label>:37                                      ; preds = %15
  %38 = load %struct.expdesc** %4, align 4, !dbg !2234
  %39 = getelementptr inbounds %struct.expdesc* %38, i32 0, i32 0, !dbg !2234
  %40 = load i32* %39, align 4, !dbg !2234
  %41 = icmp ne i32 %40, 0, !dbg !2234
  br i1 %41, label %42, label %45, !dbg !2234

; <label>:42                                      ; preds = %37
  %43 = load %struct.FuncState** %fs, align 4, !dbg !2237
  %44 = load %struct.expdesc** %4, align 4, !dbg !2237
  call void @luaK_exp2nextreg(%struct.FuncState* %43, %struct.expdesc* %44), !dbg !2237
  br label %45, !dbg !2237

; <label>:45                                      ; preds = %42, %37
  %46 = load i32* %extra, align 4, !dbg !2239
  %47 = icmp sgt i32 %46, 0, !dbg !2239
  br i1 %47, label %48, label %58, !dbg !2239

; <label>:48                                      ; preds = %45
  call void @llvm.dbg.declare(metadata !{i32* %reg}, metadata !2241), !dbg !2243
  %49 = load %struct.FuncState** %fs, align 4, !dbg !2244
  %50 = getelementptr inbounds %struct.FuncState* %49, i32 0, i32 13, !dbg !2244
  %51 = load i8* %50, align 1, !dbg !2244
  %52 = zext i8 %51 to i32, !dbg !2244
  store i32 %52, i32* %reg, align 4, !dbg !2244
  %53 = load %struct.FuncState** %fs, align 4, !dbg !2245
  %54 = load i32* %extra, align 4, !dbg !2245
  call void @luaK_reserveregs(%struct.FuncState* %53, i32 %54), !dbg !2245
  %55 = load %struct.FuncState** %fs, align 4, !dbg !2246
  %56 = load i32* %reg, align 4, !dbg !2246
  %57 = load i32* %extra, align 4, !dbg !2246
  call void @luaK_nil(%struct.FuncState* %55, i32 %56, i32 %57), !dbg !2246
  br label %58, !dbg !2247

; <label>:58                                      ; preds = %48, %45
  br label %59

; <label>:59                                      ; preds = %58, %36
  ret void, !dbg !2248
}

declare hidden void @luaK_setoneret(%struct.FuncState*, %struct.expdesc*) #2

declare hidden void @luaK_storevar(%struct.FuncState*, %struct.expdesc*, %struct.expdesc*) #2

declare hidden void @luaK_setreturns(%struct.FuncState*, %struct.expdesc*, i32) #2

declare hidden void @luaK_reserveregs(%struct.FuncState*, i32) #2

declare hidden void @luaK_exp2nextreg(%struct.FuncState*, %struct.expdesc*) #2

declare hidden void @luaK_nil(%struct.FuncState*, i32, i32) #2

; Function Attrs: nounwind
define internal void @expr(%struct.LexState* %ls, %struct.expdesc* %v) #0 {
  %1 = alloca %struct.LexState*, align 4
  %2 = alloca %struct.expdesc*, align 4
  store %struct.LexState* %ls, %struct.LexState** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.LexState** %1}, metadata !2249), !dbg !2250
  store %struct.expdesc* %v, %struct.expdesc** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.expdesc** %2}, metadata !2251), !dbg !2252
  %3 = load %struct.LexState** %1, align 4, !dbg !2253
  %4 = load %struct.expdesc** %2, align 4, !dbg !2253
  %5 = call i32 @subexpr(%struct.LexState* %3, %struct.expdesc* %4, i32 0), !dbg !2253
  ret void, !dbg !2254
}

; Function Attrs: nounwind
define internal i32 @subexpr(%struct.LexState* %ls, %struct.expdesc* %v, i32 %limit) #0 {
  %1 = alloca %struct.LexState*, align 4
  %2 = alloca %struct.expdesc*, align 4
  %3 = alloca i32, align 4
  %op = alloca i32, align 4
  %uop = alloca i32, align 4
  %line = alloca i32, align 4
  %v2 = alloca %struct.expdesc, align 8
  %nextop = alloca i32, align 4
  %line1 = alloca i32, align 4
  store %struct.LexState* %ls, %struct.LexState** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.LexState** %1}, metadata !2255), !dbg !2256
  store %struct.expdesc* %v, %struct.expdesc** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.expdesc** %2}, metadata !2257), !dbg !2258
  store i32 %limit, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !2259), !dbg !2260
  call void @llvm.dbg.declare(metadata !{i32* %op}, metadata !2261), !dbg !2262
  call void @llvm.dbg.declare(metadata !{i32* %uop}, metadata !2263), !dbg !2264
  %4 = load %struct.LexState** %1, align 4, !dbg !2265
  call void @enterlevel(%struct.LexState* %4), !dbg !2265
  %5 = load %struct.LexState** %1, align 4, !dbg !2266
  %6 = getelementptr inbounds %struct.LexState* %5, i32 0, i32 3, !dbg !2266
  %7 = getelementptr inbounds %struct.Token* %6, i32 0, i32 0, !dbg !2266
  %8 = load i32* %7, align 4, !dbg !2266
  %9 = call i32 @getunopr(i32 %8), !dbg !2266
  store i32 %9, i32* %uop, align 4, !dbg !2266
  %10 = load i32* %uop, align 4, !dbg !2267
  %11 = icmp ne i32 %10, 4, !dbg !2267
  br i1 %11, label %12, label %26, !dbg !2267

; <label>:12                                      ; preds = %0
  call void @llvm.dbg.declare(metadata !{i32* %line}, metadata !2269), !dbg !2271
  %13 = load %struct.LexState** %1, align 4, !dbg !2272
  %14 = getelementptr inbounds %struct.LexState* %13, i32 0, i32 1, !dbg !2272
  %15 = load i32* %14, align 4, !dbg !2272
  store i32 %15, i32* %line, align 4, !dbg !2272
  %16 = load %struct.LexState** %1, align 4, !dbg !2273
  call void @luaX_next(%struct.LexState* %16), !dbg !2273
  %17 = load %struct.LexState** %1, align 4, !dbg !2274
  %18 = load %struct.expdesc** %2, align 4, !dbg !2274
  %19 = call i32 @subexpr(%struct.LexState* %17, %struct.expdesc* %18, i32 12), !dbg !2274
  %20 = load %struct.LexState** %1, align 4, !dbg !2275
  %21 = getelementptr inbounds %struct.LexState* %20, i32 0, i32 5, !dbg !2275
  %22 = load %struct.FuncState** %21, align 4, !dbg !2275
  %23 = load i32* %uop, align 4, !dbg !2275
  %24 = load %struct.expdesc** %2, align 4, !dbg !2275
  %25 = load i32* %line, align 4, !dbg !2275
  call void @luaK_prefix(%struct.FuncState* %22, i32 %23, %struct.expdesc* %24, i32 %25), !dbg !2275
  br label %29, !dbg !2276

; <label>:26                                      ; preds = %0
  %27 = load %struct.LexState** %1, align 4, !dbg !2277
  %28 = load %struct.expdesc** %2, align 4, !dbg !2277
  call void @simpleexp(%struct.LexState* %27, %struct.expdesc* %28), !dbg !2277
  br label %29

; <label>:29                                      ; preds = %26, %12
  %30 = load %struct.LexState** %1, align 4, !dbg !2278
  %31 = getelementptr inbounds %struct.LexState* %30, i32 0, i32 3, !dbg !2278
  %32 = getelementptr inbounds %struct.Token* %31, i32 0, i32 0, !dbg !2278
  %33 = load i32* %32, align 4, !dbg !2278
  %34 = call i32 @getbinopr(i32 %33), !dbg !2278
  store i32 %34, i32* %op, align 4, !dbg !2278
  br label %35, !dbg !2279

; <label>:35                                      ; preds = %48, %29
  %36 = load i32* %op, align 4, !dbg !2280
  %37 = icmp ne i32 %36, 21, !dbg !2280
  br i1 %37, label %38, label %46, !dbg !2280

; <label>:38                                      ; preds = %35
  %39 = load i32* %op, align 4, !dbg !2282
  %40 = getelementptr inbounds [21 x %struct.anon.8]* @priority, i32 0, i32 %39, !dbg !2282
  %41 = getelementptr inbounds %struct.anon.8* %40, i32 0, i32 0, !dbg !2282
  %42 = load i8* %41, align 1, !dbg !2282
  %43 = zext i8 %42 to i32, !dbg !2282
  %44 = load i32* %3, align 4, !dbg !2282
  %45 = icmp sgt i32 %43, %44, !dbg !2282
  br label %46

; <label>:46                                      ; preds = %38, %35
  %47 = phi i1 [ false, %35 ], [ %45, %38 ]
  br i1 %47, label %48, label %72, !dbg !2284

; <label>:48                                      ; preds = %46
  call void @llvm.dbg.declare(metadata !{%struct.expdesc* %v2}, metadata !2286), !dbg !2288
  call void @llvm.dbg.declare(metadata !{i32* %nextop}, metadata !2289), !dbg !2290
  call void @llvm.dbg.declare(metadata !{i32* %line1}, metadata !2291), !dbg !2292
  %49 = load %struct.LexState** %1, align 4, !dbg !2293
  %50 = getelementptr inbounds %struct.LexState* %49, i32 0, i32 1, !dbg !2293
  %51 = load i32* %50, align 4, !dbg !2293
  store i32 %51, i32* %line1, align 4, !dbg !2293
  %52 = load %struct.LexState** %1, align 4, !dbg !2294
  call void @luaX_next(%struct.LexState* %52), !dbg !2294
  %53 = load %struct.LexState** %1, align 4, !dbg !2295
  %54 = getelementptr inbounds %struct.LexState* %53, i32 0, i32 5, !dbg !2295
  %55 = load %struct.FuncState** %54, align 4, !dbg !2295
  %56 = load i32* %op, align 4, !dbg !2295
  %57 = load %struct.expdesc** %2, align 4, !dbg !2295
  call void @luaK_infix(%struct.FuncState* %55, i32 %56, %struct.expdesc* %57), !dbg !2295
  %58 = load %struct.LexState** %1, align 4, !dbg !2296
  %59 = load i32* %op, align 4, !dbg !2296
  %60 = getelementptr inbounds [21 x %struct.anon.8]* @priority, i32 0, i32 %59, !dbg !2296
  %61 = getelementptr inbounds %struct.anon.8* %60, i32 0, i32 1, !dbg !2296
  %62 = load i8* %61, align 1, !dbg !2296
  %63 = zext i8 %62 to i32, !dbg !2296
  %64 = call i32 @subexpr(%struct.LexState* %58, %struct.expdesc* %v2, i32 %63), !dbg !2296
  store i32 %64, i32* %nextop, align 4, !dbg !2296
  %65 = load %struct.LexState** %1, align 4, !dbg !2297
  %66 = getelementptr inbounds %struct.LexState* %65, i32 0, i32 5, !dbg !2297
  %67 = load %struct.FuncState** %66, align 4, !dbg !2297
  %68 = load i32* %op, align 4, !dbg !2297
  %69 = load %struct.expdesc** %2, align 4, !dbg !2297
  %70 = load i32* %line1, align 4, !dbg !2297
  call void @luaK_posfix(%struct.FuncState* %67, i32 %68, %struct.expdesc* %69, %struct.expdesc* %v2, i32 %70), !dbg !2297
  %71 = load i32* %nextop, align 4, !dbg !2298
  store i32 %71, i32* %op, align 4, !dbg !2298
  br label %35, !dbg !2299

; <label>:72                                      ; preds = %46
  %73 = load %struct.LexState** %1, align 4, !dbg !2300
  %74 = getelementptr inbounds %struct.LexState* %73, i32 0, i32 6, !dbg !2300
  %75 = load %struct.lua_State** %74, align 4, !dbg !2300
  %76 = getelementptr inbounds %struct.lua_State* %75, i32 0, i32 22, !dbg !2300
  %77 = load i16* %76, align 2, !dbg !2300
  %78 = add i16 %77, -1, !dbg !2300
  store i16 %78, i16* %76, align 2, !dbg !2300
  %79 = load i32* %op, align 4, !dbg !2301
  ret i32 %79, !dbg !2301
}

; Function Attrs: nounwind
define internal i32 @getunopr(i32 %op) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 %op, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !2302), !dbg !2303
  %3 = load i32* %2, align 4, !dbg !2304
  switch i32 %3, label %8 [
    i32 271, label %4
    i32 45, label %5
    i32 126, label %6
    i32 35, label %7
  ], !dbg !2304

; <label>:4                                       ; preds = %0
  store i32 2, i32* %1, !dbg !2305
  br label %9, !dbg !2305

; <label>:5                                       ; preds = %0
  store i32 0, i32* %1, !dbg !2307
  br label %9, !dbg !2307

; <label>:6                                       ; preds = %0
  store i32 1, i32* %1, !dbg !2308
  br label %9, !dbg !2308

; <label>:7                                       ; preds = %0
  store i32 3, i32* %1, !dbg !2309
  br label %9, !dbg !2309

; <label>:8                                       ; preds = %0
  store i32 4, i32* %1, !dbg !2310
  br label %9, !dbg !2310

; <label>:9                                       ; preds = %8, %7, %6, %5, %4
  %10 = load i32* %1, !dbg !2311
  ret i32 %10, !dbg !2311
}

declare hidden void @luaK_prefix(%struct.FuncState*, i32, %struct.expdesc*, i32) #2

; Function Attrs: nounwind
define internal void @simpleexp(%struct.LexState* %ls, %struct.expdesc* %v) #0 {
  %1 = alloca %struct.LexState*, align 4
  %2 = alloca %struct.expdesc*, align 4
  %fs = alloca %struct.FuncState*, align 4
  store %struct.LexState* %ls, %struct.LexState** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.LexState** %1}, metadata !2312), !dbg !2313
  store %struct.expdesc* %v, %struct.expdesc** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.expdesc** %2}, metadata !2314), !dbg !2315
  %3 = load %struct.LexState** %1, align 4, !dbg !2316
  %4 = getelementptr inbounds %struct.LexState* %3, i32 0, i32 3, !dbg !2316
  %5 = getelementptr inbounds %struct.Token* %4, i32 0, i32 0, !dbg !2316
  %6 = load i32* %5, align 4, !dbg !2316
  switch i32 %6, label %71 [
    i32 290, label %7
    i32 291, label %17
    i32 293, label %27
    i32 270, label %35
    i32 276, label %37
    i32 263, label %39
    i32 281, label %41
    i32 123, label %61
    i32 265, label %64
  ], !dbg !2316

; <label>:7                                       ; preds = %0
  %8 = load %struct.expdesc** %2, align 4, !dbg !2317
  call void @init_exp(%struct.expdesc* %8, i32 5, i32 0), !dbg !2317
  %9 = load %struct.LexState** %1, align 4, !dbg !2320
  %10 = getelementptr inbounds %struct.LexState* %9, i32 0, i32 3, !dbg !2320
  %11 = getelementptr inbounds %struct.Token* %10, i32 0, i32 1, !dbg !2320
  %12 = bitcast %union.SemInfo* %11 to double*, !dbg !2320
  %13 = load double* %12, align 8, !dbg !2320
  %14 = load %struct.expdesc** %2, align 4, !dbg !2320
  %15 = getelementptr inbounds %struct.expdesc* %14, i32 0, i32 1, !dbg !2320
  %16 = bitcast %union.anon.6* %15 to double*, !dbg !2320
  store double %13, double* %16, align 8, !dbg !2320
  br label %74, !dbg !2321

; <label>:17                                      ; preds = %0
  %18 = load %struct.expdesc** %2, align 4, !dbg !2322
  call void @init_exp(%struct.expdesc* %18, i32 6, i32 0), !dbg !2322
  %19 = load %struct.LexState** %1, align 4, !dbg !2324
  %20 = getelementptr inbounds %struct.LexState* %19, i32 0, i32 3, !dbg !2324
  %21 = getelementptr inbounds %struct.Token* %20, i32 0, i32 1, !dbg !2324
  %22 = bitcast %union.SemInfo* %21 to i64*, !dbg !2324
  %23 = load i64* %22, align 8, !dbg !2324
  %24 = load %struct.expdesc** %2, align 4, !dbg !2324
  %25 = getelementptr inbounds %struct.expdesc* %24, i32 0, i32 1, !dbg !2324
  %26 = bitcast %union.anon.6* %25 to i64*, !dbg !2324
  store i64 %23, i64* %26, align 8, !dbg !2324
  br label %74, !dbg !2325

; <label>:27                                      ; preds = %0
  %28 = load %struct.LexState** %1, align 4, !dbg !2326
  %29 = load %struct.expdesc** %2, align 4, !dbg !2326
  %30 = load %struct.LexState** %1, align 4, !dbg !2326
  %31 = getelementptr inbounds %struct.LexState* %30, i32 0, i32 3, !dbg !2326
  %32 = getelementptr inbounds %struct.Token* %31, i32 0, i32 1, !dbg !2326
  %33 = bitcast %union.SemInfo* %32 to %struct.TString**, !dbg !2326
  %34 = load %struct.TString** %33, align 4, !dbg !2326
  call void @codestring(%struct.LexState* %28, %struct.expdesc* %29, %struct.TString* %34), !dbg !2326
  br label %74, !dbg !2328

; <label>:35                                      ; preds = %0
  %36 = load %struct.expdesc** %2, align 4, !dbg !2329
  call void @init_exp(%struct.expdesc* %36, i32 1, i32 0), !dbg !2329
  br label %74, !dbg !2331

; <label>:37                                      ; preds = %0
  %38 = load %struct.expdesc** %2, align 4, !dbg !2332
  call void @init_exp(%struct.expdesc* %38, i32 2, i32 0), !dbg !2332
  br label %74, !dbg !2334

; <label>:39                                      ; preds = %0
  %40 = load %struct.expdesc** %2, align 4, !dbg !2335
  call void @init_exp(%struct.expdesc* %40, i32 3, i32 0), !dbg !2335
  br label %74, !dbg !2337

; <label>:41                                      ; preds = %0
  call void @llvm.dbg.declare(metadata !{%struct.FuncState** %fs}, metadata !2338), !dbg !2340
  %42 = load %struct.LexState** %1, align 4, !dbg !2341
  %43 = getelementptr inbounds %struct.LexState* %42, i32 0, i32 5, !dbg !2341
  %44 = load %struct.FuncState** %43, align 4, !dbg !2341
  store %struct.FuncState* %44, %struct.FuncState** %fs, align 4, !dbg !2341
  %45 = load %struct.FuncState** %fs, align 4, !dbg !2342
  %46 = getelementptr inbounds %struct.FuncState* %45, i32 0, i32 0, !dbg !2342
  %47 = load %struct.Proto** %46, align 4, !dbg !2342
  %48 = getelementptr inbounds %struct.Proto* %47, i32 0, i32 4, !dbg !2342
  %49 = load i8* %48, align 1, !dbg !2342
  %50 = icmp ne i8 %49, 0, !dbg !2342
  br i1 %50, label %53, label %51, !dbg !2342

; <label>:51                                      ; preds = %41
  %52 = load %struct.LexState** %1, align 4, !dbg !2345
  call void @luaX_syntaxerror(%struct.LexState* %52, i8* getelementptr inbounds ([43 x i8]* @.str8, i32 0, i32 0)) #6, !dbg !2345
  unreachable, !dbg !2345

; <label>:53                                      ; preds = %41
  %54 = load %struct.FuncState** %fs, align 4, !dbg !2347
  %55 = getelementptr inbounds %struct.FuncState* %54, i32 0, i32 0, !dbg !2347
  %56 = load %struct.Proto** %55, align 4, !dbg !2347
  %57 = getelementptr inbounds %struct.Proto* %56, i32 0, i32 4, !dbg !2347
  store i8 1, i8* %57, align 1, !dbg !2347
  %58 = load %struct.expdesc** %2, align 4, !dbg !2348
  %59 = load %struct.FuncState** %fs, align 4, !dbg !2349
  %60 = call i32 @luaK_codeABC(%struct.FuncState* %59, i32 45, i32 0, i32 1, i32 0), !dbg !2349
  call void @init_exp(%struct.expdesc* %58, i32 14, i32 %60), !dbg !2348
  br label %74, !dbg !2350

; <label>:61                                      ; preds = %0
  %62 = load %struct.LexState** %1, align 4, !dbg !2351
  %63 = load %struct.expdesc** %2, align 4, !dbg !2351
  call void @constructor(%struct.LexState* %62, %struct.expdesc* %63), !dbg !2351
  br label %76, !dbg !2353

; <label>:64                                      ; preds = %0
  %65 = load %struct.LexState** %1, align 4, !dbg !2354
  call void @luaX_next(%struct.LexState* %65), !dbg !2354
  %66 = load %struct.LexState** %1, align 4, !dbg !2356
  %67 = load %struct.expdesc** %2, align 4, !dbg !2356
  %68 = load %struct.LexState** %1, align 4, !dbg !2356
  %69 = getelementptr inbounds %struct.LexState* %68, i32 0, i32 1, !dbg !2356
  %70 = load i32* %69, align 4, !dbg !2356
  call void @body(%struct.LexState* %66, %struct.expdesc* %67, i32 0, i32 %70), !dbg !2356
  br label %76, !dbg !2357

; <label>:71                                      ; preds = %0
  %72 = load %struct.LexState** %1, align 4, !dbg !2358
  %73 = load %struct.expdesc** %2, align 4, !dbg !2358
  call void @suffixedexp(%struct.LexState* %72, %struct.expdesc* %73), !dbg !2358
  br label %76, !dbg !2360

; <label>:74                                      ; preds = %53, %39, %37, %35, %27, %17, %7
  %75 = load %struct.LexState** %1, align 4, !dbg !2361
  call void @luaX_next(%struct.LexState* %75), !dbg !2361
  br label %76, !dbg !2362

; <label>:76                                      ; preds = %74, %71, %64, %61
  ret void, !dbg !2363
}

; Function Attrs: nounwind
define internal i32 @getbinopr(i32 %op) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 %op, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !2365), !dbg !2366
  %3 = load i32* %2, align 4, !dbg !2367
  switch i32 %3, label %25 [
    i32 43, label %4
    i32 45, label %5
    i32 42, label %6
    i32 37, label %7
    i32 94, label %8
    i32 47, label %9
    i32 279, label %10
    i32 38, label %11
    i32 124, label %12
    i32 126, label %13
    i32 286, label %14
    i32 287, label %15
    i32 280, label %16
    i32 285, label %17
    i32 282, label %18
    i32 60, label %19
    i32 284, label %20
    i32 62, label %21
    i32 283, label %22
    i32 257, label %23
    i32 272, label %24
  ], !dbg !2367

; <label>:4                                       ; preds = %0
  store i32 0, i32* %1, !dbg !2368
  br label %26, !dbg !2368

; <label>:5                                       ; preds = %0
  store i32 1, i32* %1, !dbg !2370
  br label %26, !dbg !2370

; <label>:6                                       ; preds = %0
  store i32 2, i32* %1, !dbg !2371
  br label %26, !dbg !2371

; <label>:7                                       ; preds = %0
  store i32 3, i32* %1, !dbg !2372
  br label %26, !dbg !2372

; <label>:8                                       ; preds = %0
  store i32 4, i32* %1, !dbg !2373
  br label %26, !dbg !2373

; <label>:9                                       ; preds = %0
  store i32 5, i32* %1, !dbg !2374
  br label %26, !dbg !2374

; <label>:10                                      ; preds = %0
  store i32 6, i32* %1, !dbg !2375
  br label %26, !dbg !2375

; <label>:11                                      ; preds = %0
  store i32 7, i32* %1, !dbg !2376
  br label %26, !dbg !2376

; <label>:12                                      ; preds = %0
  store i32 8, i32* %1, !dbg !2377
  br label %26, !dbg !2377

; <label>:13                                      ; preds = %0
  store i32 9, i32* %1, !dbg !2378
  br label %26, !dbg !2378

; <label>:14                                      ; preds = %0
  store i32 10, i32* %1, !dbg !2379
  br label %26, !dbg !2379

; <label>:15                                      ; preds = %0
  store i32 11, i32* %1, !dbg !2380
  br label %26, !dbg !2380

; <label>:16                                      ; preds = %0
  store i32 12, i32* %1, !dbg !2381
  br label %26, !dbg !2381

; <label>:17                                      ; preds = %0
  store i32 16, i32* %1, !dbg !2382
  br label %26, !dbg !2382

; <label>:18                                      ; preds = %0
  store i32 13, i32* %1, !dbg !2383
  br label %26, !dbg !2383

; <label>:19                                      ; preds = %0
  store i32 14, i32* %1, !dbg !2384
  br label %26, !dbg !2384

; <label>:20                                      ; preds = %0
  store i32 15, i32* %1, !dbg !2385
  br label %26, !dbg !2385

; <label>:21                                      ; preds = %0
  store i32 17, i32* %1, !dbg !2386
  br label %26, !dbg !2386

; <label>:22                                      ; preds = %0
  store i32 18, i32* %1, !dbg !2387
  br label %26, !dbg !2387

; <label>:23                                      ; preds = %0
  store i32 19, i32* %1, !dbg !2388
  br label %26, !dbg !2388

; <label>:24                                      ; preds = %0
  store i32 20, i32* %1, !dbg !2389
  br label %26, !dbg !2389

; <label>:25                                      ; preds = %0
  store i32 21, i32* %1, !dbg !2390
  br label %26, !dbg !2390

; <label>:26                                      ; preds = %25, %24, %23, %22, %21, %20, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9, %8, %7, %6, %5, %4
  %27 = load i32* %1, !dbg !2391
  ret i32 %27, !dbg !2391
}

declare hidden void @luaK_infix(%struct.FuncState*, i32, %struct.expdesc*) #2

declare hidden void @luaK_posfix(%struct.FuncState*, i32, %struct.expdesc*, %struct.expdesc*, i32) #2

; Function Attrs: nounwind
define internal void @codestring(%struct.LexState* %ls, %struct.expdesc* %e, %struct.TString* %s) #0 {
  %1 = alloca %struct.LexState*, align 4
  %2 = alloca %struct.expdesc*, align 4
  %3 = alloca %struct.TString*, align 4
  store %struct.LexState* %ls, %struct.LexState** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.LexState** %1}, metadata !2392), !dbg !2393
  store %struct.expdesc* %e, %struct.expdesc** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.expdesc** %2}, metadata !2394), !dbg !2395
  store %struct.TString* %s, %struct.TString** %3, align 4
  call void @llvm.dbg.declare(metadata !{%struct.TString** %3}, metadata !2396), !dbg !2397
  %4 = load %struct.expdesc** %2, align 4, !dbg !2398
  %5 = load %struct.LexState** %1, align 4, !dbg !2399
  %6 = getelementptr inbounds %struct.LexState* %5, i32 0, i32 5, !dbg !2399
  %7 = load %struct.FuncState** %6, align 4, !dbg !2399
  %8 = load %struct.TString** %3, align 4, !dbg !2399
  %9 = call i32 @luaK_stringK(%struct.FuncState* %7, %struct.TString* %8), !dbg !2399
  call void @init_exp(%struct.expdesc* %4, i32 4, i32 %9), !dbg !2398
  ret void, !dbg !2400
}

declare hidden i32 @luaK_codeABC(%struct.FuncState*, i32, i32, i32, i32) #2

; Function Attrs: nounwind
define internal void @constructor(%struct.LexState* %ls, %struct.expdesc* %t) #0 {
  %1 = alloca %struct.LexState*, align 4
  %2 = alloca %struct.expdesc*, align 4
  %fs = alloca %struct.FuncState*, align 4
  %line = alloca i32, align 4
  %pc = alloca i32, align 4
  %cc = alloca %struct.ConsControl, align 8
  store %struct.LexState* %ls, %struct.LexState** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.LexState** %1}, metadata !2401), !dbg !2402
  store %struct.expdesc* %t, %struct.expdesc** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.expdesc** %2}, metadata !2403), !dbg !2404
  call void @llvm.dbg.declare(metadata !{%struct.FuncState** %fs}, metadata !2405), !dbg !2406
  %3 = load %struct.LexState** %1, align 4, !dbg !2407
  %4 = getelementptr inbounds %struct.LexState* %3, i32 0, i32 5, !dbg !2407
  %5 = load %struct.FuncState** %4, align 4, !dbg !2407
  store %struct.FuncState* %5, %struct.FuncState** %fs, align 4, !dbg !2407
  call void @llvm.dbg.declare(metadata !{i32* %line}, metadata !2408), !dbg !2409
  %6 = load %struct.LexState** %1, align 4, !dbg !2410
  %7 = getelementptr inbounds %struct.LexState* %6, i32 0, i32 1, !dbg !2410
  %8 = load i32* %7, align 4, !dbg !2410
  store i32 %8, i32* %line, align 4, !dbg !2410
  call void @llvm.dbg.declare(metadata !{i32* %pc}, metadata !2411), !dbg !2412
  %9 = load %struct.FuncState** %fs, align 4, !dbg !2413
  %10 = call i32 @luaK_codeABC(%struct.FuncState* %9, i32 11, i32 0, i32 0, i32 0), !dbg !2413
  store i32 %10, i32* %pc, align 4, !dbg !2413
  call void @llvm.dbg.declare(metadata !{%struct.ConsControl* %cc}, metadata !2414), !dbg !2415
  %11 = getelementptr inbounds %struct.ConsControl* %cc, i32 0, i32 4, !dbg !2416
  store i32 0, i32* %11, align 4, !dbg !2416
  %12 = getelementptr inbounds %struct.ConsControl* %cc, i32 0, i32 2, !dbg !2416
  store i32 0, i32* %12, align 4, !dbg !2416
  %13 = getelementptr inbounds %struct.ConsControl* %cc, i32 0, i32 3, !dbg !2416
  store i32 0, i32* %13, align 4, !dbg !2416
  %14 = load %struct.expdesc** %2, align 4, !dbg !2417
  %15 = getelementptr inbounds %struct.ConsControl* %cc, i32 0, i32 1, !dbg !2417
  store %struct.expdesc* %14, %struct.expdesc** %15, align 4, !dbg !2417
  %16 = load %struct.expdesc** %2, align 4, !dbg !2418
  %17 = load i32* %pc, align 4, !dbg !2418
  call void @init_exp(%struct.expdesc* %16, i32 12, i32 %17), !dbg !2418
  %18 = getelementptr inbounds %struct.ConsControl* %cc, i32 0, i32 0, !dbg !2419
  call void @init_exp(%struct.expdesc* %18, i32 0, i32 0), !dbg !2419
  %19 = load %struct.LexState** %1, align 4, !dbg !2420
  %20 = getelementptr inbounds %struct.LexState* %19, i32 0, i32 5, !dbg !2420
  %21 = load %struct.FuncState** %20, align 4, !dbg !2420
  %22 = load %struct.expdesc** %2, align 4, !dbg !2420
  call void @luaK_exp2nextreg(%struct.FuncState* %21, %struct.expdesc* %22), !dbg !2420
  %23 = load %struct.LexState** %1, align 4, !dbg !2421
  call void @checknext(%struct.LexState* %23, i32 123), !dbg !2421
  br label %24, !dbg !2422

; <label>:24                                      ; preds = %42, %0
  %25 = load %struct.LexState** %1, align 4, !dbg !2423
  %26 = getelementptr inbounds %struct.LexState* %25, i32 0, i32 3, !dbg !2423
  %27 = getelementptr inbounds %struct.Token* %26, i32 0, i32 0, !dbg !2423
  %28 = load i32* %27, align 4, !dbg !2423
  %29 = icmp eq i32 %28, 125, !dbg !2423
  br i1 %29, label %30, label %31, !dbg !2423

; <label>:30                                      ; preds = %24
  br label %44, !dbg !2426

; <label>:31                                      ; preds = %24
  %32 = load %struct.FuncState** %fs, align 4, !dbg !2428
  call void @closelistfield(%struct.FuncState* %32, %struct.ConsControl* %cc), !dbg !2428
  %33 = load %struct.LexState** %1, align 4, !dbg !2429
  call void @field(%struct.LexState* %33, %struct.ConsControl* %cc), !dbg !2429
  br label %34, !dbg !2430

; <label>:34                                      ; preds = %31
  %35 = load %struct.LexState** %1, align 4, !dbg !2431
  %36 = call i32 @testnext(%struct.LexState* %35, i32 44), !dbg !2431
  %37 = icmp ne i32 %36, 0, !dbg !2431
  br i1 %37, label %42, label %38, !dbg !2431

; <label>:38                                      ; preds = %34
  %39 = load %struct.LexState** %1, align 4, !dbg !2433
  %40 = call i32 @testnext(%struct.LexState* %39, i32 59), !dbg !2433
  %41 = icmp ne i32 %40, 0, !dbg !2433
  br label %42, !dbg !2433

; <label>:42                                      ; preds = %38, %34
  %43 = phi i1 [ true, %34 ], [ %41, %38 ]
  br i1 %43, label %24, label %44, !dbg !2435

; <label>:44                                      ; preds = %42, %30
  %45 = load %struct.LexState** %1, align 4, !dbg !2438
  %46 = load i32* %line, align 4, !dbg !2438
  call void @check_match(%struct.LexState* %45, i32 125, i32 123, i32 %46), !dbg !2438
  %47 = load %struct.FuncState** %fs, align 4, !dbg !2439
  call void @lastlistfield(%struct.FuncState* %47, %struct.ConsControl* %cc), !dbg !2439
  %48 = load i32* %pc, align 4, !dbg !2440
  %49 = load %struct.FuncState** %fs, align 4, !dbg !2440
  %50 = getelementptr inbounds %struct.FuncState* %49, i32 0, i32 0, !dbg !2440
  %51 = load %struct.Proto** %50, align 4, !dbg !2440
  %52 = getelementptr inbounds %struct.Proto* %51, i32 0, i32 15, !dbg !2440
  %53 = load i32** %52, align 4, !dbg !2440
  %54 = getelementptr inbounds i32* %53, i32 %48, !dbg !2440
  %55 = load i32* %54, align 4, !dbg !2440
  %56 = and i32 %55, 8388607, !dbg !2440
  %57 = getelementptr inbounds %struct.ConsControl* %cc, i32 0, i32 3, !dbg !2440
  %58 = load i32* %57, align 4, !dbg !2440
  %59 = call i32 @luaO_int2fb(i32 %58), !dbg !2440
  %60 = shl i32 %59, 23, !dbg !2440
  %61 = and i32 %60, -8388608, !dbg !2440
  %62 = or i32 %56, %61, !dbg !2440
  %63 = load i32* %pc, align 4, !dbg !2440
  %64 = load %struct.FuncState** %fs, align 4, !dbg !2440
  %65 = getelementptr inbounds %struct.FuncState* %64, i32 0, i32 0, !dbg !2440
  %66 = load %struct.Proto** %65, align 4, !dbg !2440
  %67 = getelementptr inbounds %struct.Proto* %66, i32 0, i32 15, !dbg !2440
  %68 = load i32** %67, align 4, !dbg !2440
  %69 = getelementptr inbounds i32* %68, i32 %63, !dbg !2440
  store i32 %62, i32* %69, align 4, !dbg !2440
  %70 = load i32* %pc, align 4, !dbg !2441
  %71 = load %struct.FuncState** %fs, align 4, !dbg !2441
  %72 = getelementptr inbounds %struct.FuncState* %71, i32 0, i32 0, !dbg !2441
  %73 = load %struct.Proto** %72, align 4, !dbg !2441
  %74 = getelementptr inbounds %struct.Proto* %73, i32 0, i32 15, !dbg !2441
  %75 = load i32** %74, align 4, !dbg !2441
  %76 = getelementptr inbounds i32* %75, i32 %70, !dbg !2441
  %77 = load i32* %76, align 4, !dbg !2441
  %78 = and i32 %77, -8372225, !dbg !2441
  %79 = getelementptr inbounds %struct.ConsControl* %cc, i32 0, i32 2, !dbg !2441
  %80 = load i32* %79, align 4, !dbg !2441
  %81 = call i32 @luaO_int2fb(i32 %80), !dbg !2441
  %82 = shl i32 %81, 14, !dbg !2441
  %83 = and i32 %82, 8372224, !dbg !2441
  %84 = or i32 %78, %83, !dbg !2441
  %85 = load i32* %pc, align 4, !dbg !2441
  %86 = load %struct.FuncState** %fs, align 4, !dbg !2441
  %87 = getelementptr inbounds %struct.FuncState* %86, i32 0, i32 0, !dbg !2441
  %88 = load %struct.Proto** %87, align 4, !dbg !2441
  %89 = getelementptr inbounds %struct.Proto* %88, i32 0, i32 15, !dbg !2441
  %90 = load i32** %89, align 4, !dbg !2441
  %91 = getelementptr inbounds i32* %90, i32 %85, !dbg !2441
  store i32 %84, i32* %91, align 4, !dbg !2441
  ret void, !dbg !2442
}

; Function Attrs: nounwind
define internal void @body(%struct.LexState* %ls, %struct.expdesc* %e, i32 %ismethod, i32 %line) #0 {
  %1 = alloca %struct.LexState*, align 4
  %2 = alloca %struct.expdesc*, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %new_fs = alloca %struct.FuncState, align 4
  %bl = alloca %struct.BlockCnt, align 4
  store %struct.LexState* %ls, %struct.LexState** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.LexState** %1}, metadata !2443), !dbg !2444
  store %struct.expdesc* %e, %struct.expdesc** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.expdesc** %2}, metadata !2445), !dbg !2446
  store i32 %ismethod, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !2447), !dbg !2448
  store i32 %line, i32* %4, align 4
  call void @llvm.dbg.declare(metadata !{i32* %4}, metadata !2449), !dbg !2450
  call void @llvm.dbg.declare(metadata !{%struct.FuncState* %new_fs}, metadata !2451), !dbg !2452
  call void @llvm.dbg.declare(metadata !{%struct.BlockCnt* %bl}, metadata !2453), !dbg !2454
  %5 = load %struct.LexState** %1, align 4, !dbg !2455
  %6 = call %struct.Proto* @addprototype(%struct.LexState* %5), !dbg !2455
  %7 = getelementptr inbounds %struct.FuncState* %new_fs, i32 0, i32 0, !dbg !2455
  store %struct.Proto* %6, %struct.Proto** %7, align 4, !dbg !2455
  %8 = load i32* %4, align 4, !dbg !2456
  %9 = getelementptr inbounds %struct.FuncState* %new_fs, i32 0, i32 0, !dbg !2456
  %10 = load %struct.Proto** %9, align 4, !dbg !2456
  %11 = getelementptr inbounds %struct.Proto* %10, i32 0, i32 12, !dbg !2456
  store i32 %8, i32* %11, align 4, !dbg !2456
  %12 = load %struct.LexState** %1, align 4, !dbg !2457
  call void @open_func(%struct.LexState* %12, %struct.FuncState* %new_fs, %struct.BlockCnt* %bl), !dbg !2457
  %13 = load %struct.LexState** %1, align 4, !dbg !2458
  call void @checknext(%struct.LexState* %13, i32 40), !dbg !2458
  %14 = load i32* %3, align 4, !dbg !2459
  %15 = icmp ne i32 %14, 0, !dbg !2459
  br i1 %15, label %16, label %19, !dbg !2459

; <label>:16                                      ; preds = %0
  %17 = load %struct.LexState** %1, align 4, !dbg !2461
  call void @new_localvarliteral_(%struct.LexState* %17, i8* getelementptr inbounds ([5 x i8]* @.str9, i32 0, i32 0), i32 4), !dbg !2461
  %18 = load %struct.LexState** %1, align 4, !dbg !2463
  call void @adjustlocalvars(%struct.LexState* %18, i32 1), !dbg !2463
  br label %19, !dbg !2464

; <label>:19                                      ; preds = %16, %0
  %20 = load %struct.LexState** %1, align 4, !dbg !2465
  call void @parlist(%struct.LexState* %20), !dbg !2465
  %21 = load %struct.LexState** %1, align 4, !dbg !2466
  call void @checknext(%struct.LexState* %21, i32 41), !dbg !2466
  %22 = load %struct.LexState** %1, align 4, !dbg !2467
  call void @statlist(%struct.LexState* %22), !dbg !2467
  %23 = load %struct.LexState** %1, align 4, !dbg !2468
  %24 = getelementptr inbounds %struct.LexState* %23, i32 0, i32 1, !dbg !2468
  %25 = load i32* %24, align 4, !dbg !2468
  %26 = getelementptr inbounds %struct.FuncState* %new_fs, i32 0, i32 0, !dbg !2468
  %27 = load %struct.Proto** %26, align 4, !dbg !2468
  %28 = getelementptr inbounds %struct.Proto* %27, i32 0, i32 13, !dbg !2468
  store i32 %25, i32* %28, align 4, !dbg !2468
  %29 = load %struct.LexState** %1, align 4, !dbg !2469
  %30 = load i32* %4, align 4, !dbg !2469
  call void @check_match(%struct.LexState* %29, i32 262, i32 265, i32 %30), !dbg !2469
  %31 = load %struct.LexState** %1, align 4, !dbg !2470
  %32 = load %struct.expdesc** %2, align 4, !dbg !2470
  call void @codeclosure(%struct.LexState* %31, %struct.expdesc* %32), !dbg !2470
  %33 = load %struct.LexState** %1, align 4, !dbg !2471
  call void @close_func(%struct.LexState* %33), !dbg !2471
  ret void, !dbg !2472
}

; Function Attrs: nounwind
define internal %struct.Proto* @addprototype(%struct.LexState* %ls) #0 {
  %1 = alloca %struct.LexState*, align 4
  %clp = alloca %struct.Proto*, align 4
  %L = alloca %struct.lua_State*, align 4
  %fs = alloca %struct.FuncState*, align 4
  %f = alloca %struct.Proto*, align 4
  %oldsize = alloca i32, align 4
  store %struct.LexState* %ls, %struct.LexState** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.LexState** %1}, metadata !2473), !dbg !2474
  call void @llvm.dbg.declare(metadata !{%struct.Proto** %clp}, metadata !2475), !dbg !2476
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %L}, metadata !2477), !dbg !2478
  %2 = load %struct.LexState** %1, align 4, !dbg !2479
  %3 = getelementptr inbounds %struct.LexState* %2, i32 0, i32 6, !dbg !2479
  %4 = load %struct.lua_State** %3, align 4, !dbg !2479
  store %struct.lua_State* %4, %struct.lua_State** %L, align 4, !dbg !2479
  call void @llvm.dbg.declare(metadata !{%struct.FuncState** %fs}, metadata !2480), !dbg !2481
  %5 = load %struct.LexState** %1, align 4, !dbg !2482
  %6 = getelementptr inbounds %struct.LexState* %5, i32 0, i32 5, !dbg !2482
  %7 = load %struct.FuncState** %6, align 4, !dbg !2482
  store %struct.FuncState* %7, %struct.FuncState** %fs, align 4, !dbg !2482
  call void @llvm.dbg.declare(metadata !{%struct.Proto** %f}, metadata !2483), !dbg !2484
  %8 = load %struct.FuncState** %fs, align 4, !dbg !2485
  %9 = getelementptr inbounds %struct.FuncState* %8, i32 0, i32 0, !dbg !2485
  %10 = load %struct.Proto** %9, align 4, !dbg !2485
  store %struct.Proto* %10, %struct.Proto** %f, align 4, !dbg !2485
  %11 = load %struct.FuncState** %fs, align 4, !dbg !2486
  %12 = getelementptr inbounds %struct.FuncState* %11, i32 0, i32 8, !dbg !2486
  %13 = load i32* %12, align 4, !dbg !2486
  %14 = load %struct.Proto** %f, align 4, !dbg !2486
  %15 = getelementptr inbounds %struct.Proto* %14, i32 0, i32 10, !dbg !2486
  %16 = load i32* %15, align 4, !dbg !2486
  %17 = icmp sge i32 %13, %16, !dbg !2486
  br i1 %17, label %18, label %57, !dbg !2486

; <label>:18                                      ; preds = %0
  call void @llvm.dbg.declare(metadata !{i32* %oldsize}, metadata !2488), !dbg !2490
  %19 = load %struct.Proto** %f, align 4, !dbg !2491
  %20 = getelementptr inbounds %struct.Proto* %19, i32 0, i32 10, !dbg !2491
  %21 = load i32* %20, align 4, !dbg !2491
  store i32 %21, i32* %oldsize, align 4, !dbg !2491
  %22 = load %struct.FuncState** %fs, align 4, !dbg !2492
  %23 = getelementptr inbounds %struct.FuncState* %22, i32 0, i32 8, !dbg !2492
  %24 = load i32* %23, align 4, !dbg !2492
  %25 = add nsw i32 %24, 1, !dbg !2492
  %26 = load %struct.Proto** %f, align 4, !dbg !2492
  %27 = getelementptr inbounds %struct.Proto* %26, i32 0, i32 10, !dbg !2492
  %28 = load i32* %27, align 4, !dbg !2492
  %29 = icmp sgt i32 %25, %28, !dbg !2492
  br i1 %29, label %30, label %42, !dbg !2492

; <label>:30                                      ; preds = %18
  %31 = load %struct.lua_State** %L, align 4, !dbg !2494
  %32 = load %struct.Proto** %f, align 4, !dbg !2494
  %33 = getelementptr inbounds %struct.Proto* %32, i32 0, i32 16, !dbg !2494
  %34 = load %struct.Proto*** %33, align 4, !dbg !2494
  %35 = bitcast %struct.Proto** %34 to i8*, !dbg !2494
  %36 = load %struct.Proto** %f, align 4, !dbg !2494
  %37 = getelementptr inbounds %struct.Proto* %36, i32 0, i32 10, !dbg !2494
  %38 = call i8* @luaM_growaux_(%struct.lua_State* %31, i8* %35, i32* %37, i32 4, i32 262143, i8* getelementptr inbounds ([10 x i8]* @.str12, i32 0, i32 0)), !dbg !2494
  %39 = bitcast i8* %38 to %struct.Proto**, !dbg !2494
  %40 = load %struct.Proto** %f, align 4, !dbg !2494
  %41 = getelementptr inbounds %struct.Proto* %40, i32 0, i32 16, !dbg !2494
  store %struct.Proto** %39, %struct.Proto*** %41, align 4, !dbg !2494
  br label %42, !dbg !2494

; <label>:42                                      ; preds = %30, %18
  br label %43, !dbg !2496

; <label>:43                                      ; preds = %49, %42
  %44 = load i32* %oldsize, align 4, !dbg !2497
  %45 = load %struct.Proto** %f, align 4, !dbg !2497
  %46 = getelementptr inbounds %struct.Proto* %45, i32 0, i32 10, !dbg !2497
  %47 = load i32* %46, align 4, !dbg !2497
  %48 = icmp slt i32 %44, %47, !dbg !2497
  br i1 %48, label %49, label %56, !dbg !2497

; <label>:49                                      ; preds = %43
  %50 = load i32* %oldsize, align 4, !dbg !2499
  %51 = add nsw i32 %50, 1, !dbg !2499
  store i32 %51, i32* %oldsize, align 4, !dbg !2499
  %52 = load %struct.Proto** %f, align 4, !dbg !2499
  %53 = getelementptr inbounds %struct.Proto* %52, i32 0, i32 16, !dbg !2499
  %54 = load %struct.Proto*** %53, align 4, !dbg !2499
  %55 = getelementptr inbounds %struct.Proto** %54, i32 %50, !dbg !2499
  store %struct.Proto* null, %struct.Proto** %55, align 4, !dbg !2499
  br label %43, !dbg !2499

; <label>:56                                      ; preds = %43
  br label %57, !dbg !2500

; <label>:57                                      ; preds = %56, %0
  %58 = load %struct.lua_State** %L, align 4, !dbg !2501
  %59 = call %struct.Proto* @luaF_newproto(%struct.lua_State* %58), !dbg !2501
  store %struct.Proto* %59, %struct.Proto** %clp, align 4, !dbg !2501
  %60 = load %struct.FuncState** %fs, align 4, !dbg !2501
  %61 = getelementptr inbounds %struct.FuncState* %60, i32 0, i32 8, !dbg !2501
  %62 = load i32* %61, align 4, !dbg !2501
  %63 = add nsw i32 %62, 1, !dbg !2501
  store i32 %63, i32* %61, align 4, !dbg !2501
  %64 = load %struct.Proto** %f, align 4, !dbg !2501
  %65 = getelementptr inbounds %struct.Proto* %64, i32 0, i32 16, !dbg !2501
  %66 = load %struct.Proto*** %65, align 4, !dbg !2501
  %67 = getelementptr inbounds %struct.Proto** %66, i32 %62, !dbg !2501
  store %struct.Proto* %59, %struct.Proto** %67, align 4, !dbg !2501
  %68 = load %struct.Proto** %f, align 4, !dbg !2502
  %69 = getelementptr inbounds %struct.Proto* %68, i32 0, i32 2, !dbg !2502
  %70 = load i8* %69, align 1, !dbg !2502
  %71 = zext i8 %70 to i32, !dbg !2502
  %72 = and i32 %71, 4, !dbg !2502
  %73 = icmp ne i32 %72, 0, !dbg !2502
  br i1 %73, label %74, label %89, !dbg !2502

; <label>:74                                      ; preds = %57
  %75 = load %struct.Proto** %clp, align 4, !dbg !2503
  %76 = getelementptr inbounds %struct.Proto* %75, i32 0, i32 2, !dbg !2503
  %77 = load i8* %76, align 1, !dbg !2503
  %78 = zext i8 %77 to i32, !dbg !2503
  %79 = and i32 %78, 3, !dbg !2503
  %80 = icmp ne i32 %79, 0, !dbg !2503
  br i1 %80, label %81, label %89, !dbg !2503

; <label>:81                                      ; preds = %74
  %82 = load %struct.lua_State** %L, align 4, !dbg !2505
  %83 = load %struct.Proto** %f, align 4, !dbg !2505
  %84 = bitcast %struct.Proto* %83 to %union.GCUnion*, !dbg !2505
  %85 = bitcast %union.GCUnion* %84 to %struct.GCObject*, !dbg !2505
  %86 = load %struct.Proto** %clp, align 4, !dbg !2505
  %87 = bitcast %struct.Proto* %86 to %union.GCUnion*, !dbg !2505
  %88 = bitcast %union.GCUnion* %87 to %struct.GCObject*, !dbg !2505
  call void @luaC_barrier_(%struct.lua_State* %82, %struct.GCObject* %85, %struct.GCObject* %88), !dbg !2505
  br label %90, !dbg !2505

; <label>:89                                      ; preds = %74, %57
  br label %90, !dbg !2507

; <label>:90                                      ; preds = %89, %81
  %91 = load %struct.Proto** %clp, align 4, !dbg !2510
  ret %struct.Proto* %91, !dbg !2510
}

; Function Attrs: nounwind
define internal void @new_localvarliteral_(%struct.LexState* %ls, i8* %name, i32 %sz) #0 {
  %1 = alloca %struct.LexState*, align 4
  %2 = alloca i8*, align 4
  %3 = alloca i32, align 4
  store %struct.LexState* %ls, %struct.LexState** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.LexState** %1}, metadata !2511), !dbg !2512
  store i8* %name, i8** %2, align 4
  call void @llvm.dbg.declare(metadata !{i8** %2}, metadata !2513), !dbg !2514
  store i32 %sz, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !2515), !dbg !2516
  %4 = load %struct.LexState** %1, align 4, !dbg !2517
  %5 = load %struct.LexState** %1, align 4, !dbg !2518
  %6 = load i8** %2, align 4, !dbg !2518
  %7 = load i32* %3, align 4, !dbg !2518
  %8 = call %struct.TString* @luaX_newstring(%struct.LexState* %5, i8* %6, i32 %7), !dbg !2518
  call void @new_localvar(%struct.LexState* %4, %struct.TString* %8), !dbg !2517
  ret void, !dbg !2519
}

; Function Attrs: nounwind
define internal void @adjustlocalvars(%struct.LexState* %ls, i32 %nvars) #0 {
  %1 = alloca %struct.LexState*, align 4
  %2 = alloca i32, align 4
  %fs = alloca %struct.FuncState*, align 4
  store %struct.LexState* %ls, %struct.LexState** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.LexState** %1}, metadata !2520), !dbg !2521
  store i32 %nvars, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !2522), !dbg !2523
  call void @llvm.dbg.declare(metadata !{%struct.FuncState** %fs}, metadata !2524), !dbg !2525
  %3 = load %struct.LexState** %1, align 4, !dbg !2526
  %4 = getelementptr inbounds %struct.LexState* %3, i32 0, i32 5, !dbg !2526
  %5 = load %struct.FuncState** %4, align 4, !dbg !2526
  store %struct.FuncState* %5, %struct.FuncState** %fs, align 4, !dbg !2526
  %6 = load %struct.FuncState** %fs, align 4, !dbg !2527
  %7 = getelementptr inbounds %struct.FuncState* %6, i32 0, i32 11, !dbg !2527
  %8 = load i8* %7, align 1, !dbg !2527
  %9 = zext i8 %8 to i32, !dbg !2527
  %10 = load i32* %2, align 4, !dbg !2527
  %11 = add nsw i32 %9, %10, !dbg !2527
  %12 = trunc i32 %11 to i8, !dbg !2527
  %13 = load %struct.FuncState** %fs, align 4, !dbg !2527
  %14 = getelementptr inbounds %struct.FuncState* %13, i32 0, i32 11, !dbg !2527
  store i8 %12, i8* %14, align 1, !dbg !2527
  br label %15, !dbg !2528

; <label>:15                                      ; preds = %31, %0
  %16 = load i32* %2, align 4, !dbg !2530
  %17 = icmp ne i32 %16, 0, !dbg !2530
  br i1 %17, label %18, label %34, !dbg !2530

; <label>:18                                      ; preds = %15
  %19 = load %struct.FuncState** %fs, align 4, !dbg !2533
  %20 = getelementptr inbounds %struct.FuncState* %19, i32 0, i32 4, !dbg !2533
  %21 = load i32* %20, align 4, !dbg !2533
  %22 = load %struct.FuncState** %fs, align 4, !dbg !2533
  %23 = load %struct.FuncState** %fs, align 4, !dbg !2533
  %24 = getelementptr inbounds %struct.FuncState* %23, i32 0, i32 11, !dbg !2533
  %25 = load i8* %24, align 1, !dbg !2533
  %26 = zext i8 %25 to i32, !dbg !2533
  %27 = load i32* %2, align 4, !dbg !2533
  %28 = sub nsw i32 %26, %27, !dbg !2533
  %29 = call %struct.LocVar* @getlocvar(%struct.FuncState* %22, i32 %28), !dbg !2533
  %30 = getelementptr inbounds %struct.LocVar* %29, i32 0, i32 1, !dbg !2533
  store i32 %21, i32* %30, align 4, !dbg !2533
  br label %31, !dbg !2535

; <label>:31                                      ; preds = %18
  %32 = load i32* %2, align 4, !dbg !2536
  %33 = add nsw i32 %32, -1, !dbg !2536
  store i32 %33, i32* %2, align 4, !dbg !2536
  br label %15, !dbg !2536

; <label>:34                                      ; preds = %15
  ret void, !dbg !2537
}

; Function Attrs: nounwind
define internal void @parlist(%struct.LexState* %ls) #0 {
  %1 = alloca %struct.LexState*, align 4
  %fs = alloca %struct.FuncState*, align 4
  %f = alloca %struct.Proto*, align 4
  %nparams = alloca i32, align 4
  store %struct.LexState* %ls, %struct.LexState** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.LexState** %1}, metadata !2538), !dbg !2539
  call void @llvm.dbg.declare(metadata !{%struct.FuncState** %fs}, metadata !2540), !dbg !2541
  %2 = load %struct.LexState** %1, align 4, !dbg !2542
  %3 = getelementptr inbounds %struct.LexState* %2, i32 0, i32 5, !dbg !2542
  %4 = load %struct.FuncState** %3, align 4, !dbg !2542
  store %struct.FuncState* %4, %struct.FuncState** %fs, align 4, !dbg !2542
  call void @llvm.dbg.declare(metadata !{%struct.Proto** %f}, metadata !2543), !dbg !2544
  %5 = load %struct.FuncState** %fs, align 4, !dbg !2545
  %6 = getelementptr inbounds %struct.FuncState* %5, i32 0, i32 0, !dbg !2545
  %7 = load %struct.Proto** %6, align 4, !dbg !2545
  store %struct.Proto* %7, %struct.Proto** %f, align 4, !dbg !2545
  call void @llvm.dbg.declare(metadata !{i32* %nparams}, metadata !2546), !dbg !2547
  store i32 0, i32* %nparams, align 4, !dbg !2548
  %8 = load %struct.Proto** %f, align 4, !dbg !2549
  %9 = getelementptr inbounds %struct.Proto* %8, i32 0, i32 4, !dbg !2549
  store i8 0, i8* %9, align 1, !dbg !2549
  %10 = load %struct.LexState** %1, align 4, !dbg !2550
  %11 = getelementptr inbounds %struct.LexState* %10, i32 0, i32 3, !dbg !2550
  %12 = getelementptr inbounds %struct.Token* %11, i32 0, i32 0, !dbg !2550
  %13 = load i32* %12, align 4, !dbg !2550
  %14 = icmp ne i32 %13, 41, !dbg !2550
  br i1 %14, label %15, label %46, !dbg !2550

; <label>:15                                      ; preds = %0
  br label %16, !dbg !2552

; <label>:16                                      ; preds = %43, %15
  %17 = load %struct.LexState** %1, align 4, !dbg !2554
  %18 = getelementptr inbounds %struct.LexState* %17, i32 0, i32 3, !dbg !2554
  %19 = getelementptr inbounds %struct.Token* %18, i32 0, i32 0, !dbg !2554
  %20 = load i32* %19, align 4, !dbg !2554
  switch i32 %20, label %31 [
    i32 292, label %21
    i32 281, label %27
  ], !dbg !2554

; <label>:21                                      ; preds = %16
  %22 = load %struct.LexState** %1, align 4, !dbg !2556
  %23 = load %struct.LexState** %1, align 4, !dbg !2559
  %24 = call %struct.TString* @str_checkname(%struct.LexState* %23), !dbg !2559
  call void @new_localvar(%struct.LexState* %22, %struct.TString* %24), !dbg !2556
  %25 = load i32* %nparams, align 4, !dbg !2560
  %26 = add nsw i32 %25, 1, !dbg !2560
  store i32 %26, i32* %nparams, align 4, !dbg !2560
  br label %33, !dbg !2561

; <label>:27                                      ; preds = %16
  %28 = load %struct.LexState** %1, align 4, !dbg !2562
  call void @luaX_next(%struct.LexState* %28), !dbg !2562
  %29 = load %struct.Proto** %f, align 4, !dbg !2564
  %30 = getelementptr inbounds %struct.Proto* %29, i32 0, i32 4, !dbg !2564
  store i8 2, i8* %30, align 1, !dbg !2564
  br label %33, !dbg !2565

; <label>:31                                      ; preds = %16
  %32 = load %struct.LexState** %1, align 4, !dbg !2566
  call void @luaX_syntaxerror(%struct.LexState* %32, i8* getelementptr inbounds ([25 x i8]* @.str10, i32 0, i32 0)) #6, !dbg !2566
  unreachable, !dbg !2566

; <label>:33                                      ; preds = %27, %21
  br label %34, !dbg !2567

; <label>:34                                      ; preds = %33
  %35 = load %struct.Proto** %f, align 4, !dbg !2568
  %36 = getelementptr inbounds %struct.Proto* %35, i32 0, i32 4, !dbg !2568
  %37 = load i8* %36, align 1, !dbg !2568
  %38 = icmp ne i8 %37, 0, !dbg !2568
  br i1 %38, label %43, label %39, !dbg !2568

; <label>:39                                      ; preds = %34
  %40 = load %struct.LexState** %1, align 4, !dbg !2570
  %41 = call i32 @testnext(%struct.LexState* %40, i32 44), !dbg !2570
  %42 = icmp ne i32 %41, 0, !dbg !2570
  br label %43

; <label>:43                                      ; preds = %39, %34
  %44 = phi i1 [ false, %34 ], [ %42, %39 ]
  br i1 %44, label %16, label %45, !dbg !2572

; <label>:45                                      ; preds = %43
  br label %46, !dbg !2574

; <label>:46                                      ; preds = %45, %0
  %47 = load %struct.LexState** %1, align 4, !dbg !2575
  %48 = load i32* %nparams, align 4, !dbg !2575
  call void @adjustlocalvars(%struct.LexState* %47, i32 %48), !dbg !2575
  %49 = load %struct.FuncState** %fs, align 4, !dbg !2576
  %50 = getelementptr inbounds %struct.FuncState* %49, i32 0, i32 11, !dbg !2576
  %51 = load i8* %50, align 1, !dbg !2576
  %52 = load %struct.Proto** %f, align 4, !dbg !2576
  %53 = getelementptr inbounds %struct.Proto* %52, i32 0, i32 3, !dbg !2576
  store i8 %51, i8* %53, align 1, !dbg !2576
  %54 = load %struct.FuncState** %fs, align 4, !dbg !2577
  %55 = load %struct.FuncState** %fs, align 4, !dbg !2577
  %56 = getelementptr inbounds %struct.FuncState* %55, i32 0, i32 11, !dbg !2577
  %57 = load i8* %56, align 1, !dbg !2577
  %58 = zext i8 %57 to i32, !dbg !2577
  call void @luaK_reserveregs(%struct.FuncState* %54, i32 %58), !dbg !2577
  ret void, !dbg !2578
}

; Function Attrs: nounwind
define internal void @codeclosure(%struct.LexState* %ls, %struct.expdesc* %v) #0 {
  %1 = alloca %struct.LexState*, align 4
  %2 = alloca %struct.expdesc*, align 4
  %fs = alloca %struct.FuncState*, align 4
  store %struct.LexState* %ls, %struct.LexState** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.LexState** %1}, metadata !2579), !dbg !2580
  store %struct.expdesc* %v, %struct.expdesc** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.expdesc** %2}, metadata !2581), !dbg !2582
  call void @llvm.dbg.declare(metadata !{%struct.FuncState** %fs}, metadata !2583), !dbg !2584
  %3 = load %struct.LexState** %1, align 4, !dbg !2585
  %4 = getelementptr inbounds %struct.LexState* %3, i32 0, i32 5, !dbg !2585
  %5 = load %struct.FuncState** %4, align 4, !dbg !2585
  %6 = getelementptr inbounds %struct.FuncState* %5, i32 0, i32 1, !dbg !2585
  %7 = load %struct.FuncState** %6, align 4, !dbg !2585
  store %struct.FuncState* %7, %struct.FuncState** %fs, align 4, !dbg !2585
  %8 = load %struct.expdesc** %2, align 4, !dbg !2586
  %9 = load %struct.FuncState** %fs, align 4, !dbg !2587
  %10 = load %struct.FuncState** %fs, align 4, !dbg !2587
  %11 = getelementptr inbounds %struct.FuncState* %10, i32 0, i32 8, !dbg !2587
  %12 = load i32* %11, align 4, !dbg !2587
  %13 = sub nsw i32 %12, 1, !dbg !2587
  %14 = call i32 @luaK_codeABx(%struct.FuncState* %9, i32 44, i32 0, i32 %13), !dbg !2587
  call void @init_exp(%struct.expdesc* %8, i32 12, i32 %14), !dbg !2586
  %15 = load %struct.FuncState** %fs, align 4, !dbg !2588
  %16 = load %struct.expdesc** %2, align 4, !dbg !2588
  call void @luaK_exp2nextreg(%struct.FuncState* %15, %struct.expdesc* %16), !dbg !2588
  ret void, !dbg !2589
}

declare hidden i32 @luaK_codeABx(%struct.FuncState*, i32, i32, i32) #2

; Function Attrs: nounwind
define internal void @new_localvar(%struct.LexState* %ls, %struct.TString* %name) #0 {
  %1 = alloca %struct.LexState*, align 4
  %2 = alloca %struct.TString*, align 4
  %fs = alloca %struct.FuncState*, align 4
  %dyd = alloca %struct.Dyndata*, align 4
  %reg = alloca i32, align 4
  store %struct.LexState* %ls, %struct.LexState** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.LexState** %1}, metadata !2590), !dbg !2591
  store %struct.TString* %name, %struct.TString** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.TString** %2}, metadata !2592), !dbg !2593
  call void @llvm.dbg.declare(metadata !{%struct.FuncState** %fs}, metadata !2594), !dbg !2595
  %3 = load %struct.LexState** %1, align 4, !dbg !2596
  %4 = getelementptr inbounds %struct.LexState* %3, i32 0, i32 5, !dbg !2596
  %5 = load %struct.FuncState** %4, align 4, !dbg !2596
  store %struct.FuncState* %5, %struct.FuncState** %fs, align 4, !dbg !2596
  call void @llvm.dbg.declare(metadata !{%struct.Dyndata** %dyd}, metadata !2597), !dbg !2598
  %6 = load %struct.LexState** %1, align 4, !dbg !2599
  %7 = getelementptr inbounds %struct.LexState* %6, i32 0, i32 10, !dbg !2599
  %8 = load %struct.Dyndata** %7, align 4, !dbg !2599
  store %struct.Dyndata* %8, %struct.Dyndata** %dyd, align 4, !dbg !2599
  call void @llvm.dbg.declare(metadata !{i32* %reg}, metadata !2600), !dbg !2601
  %9 = load %struct.LexState** %1, align 4, !dbg !2602
  %10 = load %struct.TString** %2, align 4, !dbg !2602
  %11 = call i32 @registerlocalvar(%struct.LexState* %9, %struct.TString* %10), !dbg !2602
  store i32 %11, i32* %reg, align 4, !dbg !2602
  %12 = load %struct.FuncState** %fs, align 4, !dbg !2603
  %13 = load %struct.Dyndata** %dyd, align 4, !dbg !2603
  %14 = getelementptr inbounds %struct.Dyndata* %13, i32 0, i32 0, !dbg !2603
  %15 = getelementptr inbounds %struct.anon.5* %14, i32 0, i32 1, !dbg !2603
  %16 = load i32* %15, align 4, !dbg !2603
  %17 = add nsw i32 %16, 1, !dbg !2603
  %18 = load %struct.FuncState** %fs, align 4, !dbg !2603
  %19 = getelementptr inbounds %struct.FuncState* %18, i32 0, i32 9, !dbg !2603
  %20 = load i32* %19, align 4, !dbg !2603
  %21 = sub nsw i32 %17, %20, !dbg !2603
  call void @checklimit(%struct.FuncState* %12, i32 %21, i32 200, i8* getelementptr inbounds ([16 x i8]* @.str11, i32 0, i32 0)), !dbg !2603
  %22 = load %struct.Dyndata** %dyd, align 4, !dbg !2604
  %23 = getelementptr inbounds %struct.Dyndata* %22, i32 0, i32 0, !dbg !2604
  %24 = getelementptr inbounds %struct.anon.5* %23, i32 0, i32 1, !dbg !2604
  %25 = load i32* %24, align 4, !dbg !2604
  %26 = add nsw i32 %25, 1, !dbg !2604
  %27 = add nsw i32 %26, 1, !dbg !2604
  %28 = load %struct.Dyndata** %dyd, align 4, !dbg !2604
  %29 = getelementptr inbounds %struct.Dyndata* %28, i32 0, i32 0, !dbg !2604
  %30 = getelementptr inbounds %struct.anon.5* %29, i32 0, i32 2, !dbg !2604
  %31 = load i32* %30, align 4, !dbg !2604
  %32 = icmp sgt i32 %27, %31, !dbg !2604
  br i1 %32, label %33, label %50, !dbg !2604

; <label>:33                                      ; preds = %0
  %34 = load %struct.LexState** %1, align 4, !dbg !2606
  %35 = getelementptr inbounds %struct.LexState* %34, i32 0, i32 6, !dbg !2606
  %36 = load %struct.lua_State** %35, align 4, !dbg !2606
  %37 = load %struct.Dyndata** %dyd, align 4, !dbg !2606
  %38 = getelementptr inbounds %struct.Dyndata* %37, i32 0, i32 0, !dbg !2606
  %39 = getelementptr inbounds %struct.anon.5* %38, i32 0, i32 0, !dbg !2606
  %40 = load %struct.Vardesc** %39, align 4, !dbg !2606
  %41 = bitcast %struct.Vardesc* %40 to i8*, !dbg !2606
  %42 = load %struct.Dyndata** %dyd, align 4, !dbg !2606
  %43 = getelementptr inbounds %struct.Dyndata* %42, i32 0, i32 0, !dbg !2606
  %44 = getelementptr inbounds %struct.anon.5* %43, i32 0, i32 2, !dbg !2606
  %45 = call i8* @luaM_growaux_(%struct.lua_State* %36, i8* %41, i32* %44, i32 2, i32 2147483647, i8* getelementptr inbounds ([16 x i8]* @.str11, i32 0, i32 0)), !dbg !2606
  %46 = bitcast i8* %45 to %struct.Vardesc*, !dbg !2606
  %47 = load %struct.Dyndata** %dyd, align 4, !dbg !2606
  %48 = getelementptr inbounds %struct.Dyndata* %47, i32 0, i32 0, !dbg !2606
  %49 = getelementptr inbounds %struct.anon.5* %48, i32 0, i32 0, !dbg !2606
  store %struct.Vardesc* %46, %struct.Vardesc** %49, align 4, !dbg !2606
  br label %50, !dbg !2606

; <label>:50                                      ; preds = %33, %0
  %51 = load i32* %reg, align 4, !dbg !2608
  %52 = trunc i32 %51 to i16, !dbg !2608
  %53 = load %struct.Dyndata** %dyd, align 4, !dbg !2608
  %54 = getelementptr inbounds %struct.Dyndata* %53, i32 0, i32 0, !dbg !2608
  %55 = getelementptr inbounds %struct.anon.5* %54, i32 0, i32 1, !dbg !2608
  %56 = load i32* %55, align 4, !dbg !2608
  %57 = add nsw i32 %56, 1, !dbg !2608
  store i32 %57, i32* %55, align 4, !dbg !2608
  %58 = load %struct.Dyndata** %dyd, align 4, !dbg !2608
  %59 = getelementptr inbounds %struct.Dyndata* %58, i32 0, i32 0, !dbg !2608
  %60 = getelementptr inbounds %struct.anon.5* %59, i32 0, i32 0, !dbg !2608
  %61 = load %struct.Vardesc** %60, align 4, !dbg !2608
  %62 = getelementptr inbounds %struct.Vardesc* %61, i32 %56, !dbg !2608
  %63 = getelementptr inbounds %struct.Vardesc* %62, i32 0, i32 0, !dbg !2608
  store i16 %52, i16* %63, align 2, !dbg !2608
  ret void, !dbg !2609
}

; Function Attrs: nounwind
define internal i32 @registerlocalvar(%struct.LexState* %ls, %struct.TString* %varname) #0 {
  %1 = alloca %struct.LexState*, align 4
  %2 = alloca %struct.TString*, align 4
  %fs = alloca %struct.FuncState*, align 4
  %f = alloca %struct.Proto*, align 4
  %oldsize = alloca i32, align 4
  store %struct.LexState* %ls, %struct.LexState** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.LexState** %1}, metadata !2610), !dbg !2611
  store %struct.TString* %varname, %struct.TString** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.TString** %2}, metadata !2612), !dbg !2613
  call void @llvm.dbg.declare(metadata !{%struct.FuncState** %fs}, metadata !2614), !dbg !2615
  %3 = load %struct.LexState** %1, align 4, !dbg !2616
  %4 = getelementptr inbounds %struct.LexState* %3, i32 0, i32 5, !dbg !2616
  %5 = load %struct.FuncState** %4, align 4, !dbg !2616
  store %struct.FuncState* %5, %struct.FuncState** %fs, align 4, !dbg !2616
  call void @llvm.dbg.declare(metadata !{%struct.Proto** %f}, metadata !2617), !dbg !2618
  %6 = load %struct.FuncState** %fs, align 4, !dbg !2619
  %7 = getelementptr inbounds %struct.FuncState* %6, i32 0, i32 0, !dbg !2619
  %8 = load %struct.Proto** %7, align 4, !dbg !2619
  store %struct.Proto* %8, %struct.Proto** %f, align 4, !dbg !2619
  call void @llvm.dbg.declare(metadata !{i32* %oldsize}, metadata !2620), !dbg !2621
  %9 = load %struct.Proto** %f, align 4, !dbg !2622
  %10 = getelementptr inbounds %struct.Proto* %9, i32 0, i32 11, !dbg !2622
  %11 = load i32* %10, align 4, !dbg !2622
  store i32 %11, i32* %oldsize, align 4, !dbg !2622
  %12 = load %struct.FuncState** %fs, align 4, !dbg !2623
  %13 = getelementptr inbounds %struct.FuncState* %12, i32 0, i32 10, !dbg !2623
  %14 = load i16* %13, align 2, !dbg !2623
  %15 = sext i16 %14 to i32, !dbg !2623
  %16 = add nsw i32 %15, 1, !dbg !2623
  %17 = load %struct.Proto** %f, align 4, !dbg !2623
  %18 = getelementptr inbounds %struct.Proto* %17, i32 0, i32 11, !dbg !2623
  %19 = load i32* %18, align 4, !dbg !2623
  %20 = icmp sgt i32 %16, %19, !dbg !2623
  br i1 %20, label %21, label %35, !dbg !2623

; <label>:21                                      ; preds = %0
  %22 = load %struct.LexState** %1, align 4, !dbg !2625
  %23 = getelementptr inbounds %struct.LexState* %22, i32 0, i32 6, !dbg !2625
  %24 = load %struct.lua_State** %23, align 4, !dbg !2625
  %25 = load %struct.Proto** %f, align 4, !dbg !2625
  %26 = getelementptr inbounds %struct.Proto* %25, i32 0, i32 18, !dbg !2625
  %27 = load %struct.LocVar** %26, align 4, !dbg !2625
  %28 = bitcast %struct.LocVar* %27 to i8*, !dbg !2625
  %29 = load %struct.Proto** %f, align 4, !dbg !2625
  %30 = getelementptr inbounds %struct.Proto* %29, i32 0, i32 11, !dbg !2625
  %31 = call i8* @luaM_growaux_(%struct.lua_State* %24, i8* %28, i32* %30, i32 12, i32 32767, i8* getelementptr inbounds ([16 x i8]* @.str11, i32 0, i32 0)), !dbg !2625
  %32 = bitcast i8* %31 to %struct.LocVar*, !dbg !2625
  %33 = load %struct.Proto** %f, align 4, !dbg !2625
  %34 = getelementptr inbounds %struct.Proto* %33, i32 0, i32 18, !dbg !2625
  store %struct.LocVar* %32, %struct.LocVar** %34, align 4, !dbg !2625
  br label %35, !dbg !2625

; <label>:35                                      ; preds = %21, %0
  br label %36, !dbg !2627

; <label>:36                                      ; preds = %42, %35
  %37 = load i32* %oldsize, align 4, !dbg !2628
  %38 = load %struct.Proto** %f, align 4, !dbg !2628
  %39 = getelementptr inbounds %struct.Proto* %38, i32 0, i32 11, !dbg !2628
  %40 = load i32* %39, align 4, !dbg !2628
  %41 = icmp slt i32 %37, %40, !dbg !2628
  br i1 %41, label %42, label %50, !dbg !2628

; <label>:42                                      ; preds = %36
  %43 = load i32* %oldsize, align 4, !dbg !2630
  %44 = add nsw i32 %43, 1, !dbg !2630
  store i32 %44, i32* %oldsize, align 4, !dbg !2630
  %45 = load %struct.Proto** %f, align 4, !dbg !2630
  %46 = getelementptr inbounds %struct.Proto* %45, i32 0, i32 18, !dbg !2630
  %47 = load %struct.LocVar** %46, align 4, !dbg !2630
  %48 = getelementptr inbounds %struct.LocVar* %47, i32 %43, !dbg !2630
  %49 = getelementptr inbounds %struct.LocVar* %48, i32 0, i32 0, !dbg !2630
  store %struct.TString* null, %struct.TString** %49, align 4, !dbg !2630
  br label %36, !dbg !2630

; <label>:50                                      ; preds = %36
  %51 = load %struct.TString** %2, align 4, !dbg !2631
  %52 = load %struct.FuncState** %fs, align 4, !dbg !2631
  %53 = getelementptr inbounds %struct.FuncState* %52, i32 0, i32 10, !dbg !2631
  %54 = load i16* %53, align 2, !dbg !2631
  %55 = sext i16 %54 to i32, !dbg !2631
  %56 = load %struct.Proto** %f, align 4, !dbg !2631
  %57 = getelementptr inbounds %struct.Proto* %56, i32 0, i32 18, !dbg !2631
  %58 = load %struct.LocVar** %57, align 4, !dbg !2631
  %59 = getelementptr inbounds %struct.LocVar* %58, i32 %55, !dbg !2631
  %60 = getelementptr inbounds %struct.LocVar* %59, i32 0, i32 0, !dbg !2631
  store %struct.TString* %51, %struct.TString** %60, align 4, !dbg !2631
  %61 = load %struct.Proto** %f, align 4, !dbg !2632
  %62 = getelementptr inbounds %struct.Proto* %61, i32 0, i32 2, !dbg !2632
  %63 = load i8* %62, align 1, !dbg !2632
  %64 = zext i8 %63 to i32, !dbg !2632
  %65 = and i32 %64, 4, !dbg !2632
  %66 = icmp ne i32 %65, 0, !dbg !2632
  br i1 %66, label %67, label %84, !dbg !2632

; <label>:67                                      ; preds = %50
  %68 = load %struct.TString** %2, align 4, !dbg !2633
  %69 = getelementptr inbounds %struct.TString* %68, i32 0, i32 2, !dbg !2633
  %70 = load i8* %69, align 1, !dbg !2633
  %71 = zext i8 %70 to i32, !dbg !2633
  %72 = and i32 %71, 3, !dbg !2633
  %73 = icmp ne i32 %72, 0, !dbg !2633
  br i1 %73, label %74, label %84, !dbg !2633

; <label>:74                                      ; preds = %67
  %75 = load %struct.LexState** %1, align 4, !dbg !2635
  %76 = getelementptr inbounds %struct.LexState* %75, i32 0, i32 6, !dbg !2635
  %77 = load %struct.lua_State** %76, align 4, !dbg !2635
  %78 = load %struct.Proto** %f, align 4, !dbg !2635
  %79 = bitcast %struct.Proto* %78 to %union.GCUnion*, !dbg !2635
  %80 = bitcast %union.GCUnion* %79 to %struct.GCObject*, !dbg !2635
  %81 = load %struct.TString** %2, align 4, !dbg !2635
  %82 = bitcast %struct.TString* %81 to %union.GCUnion*, !dbg !2635
  %83 = bitcast %union.GCUnion* %82 to %struct.GCObject*, !dbg !2635
  call void @luaC_barrier_(%struct.lua_State* %77, %struct.GCObject* %80, %struct.GCObject* %83), !dbg !2635
  br label %85, !dbg !2635

; <label>:84                                      ; preds = %67, %50
  br label %85, !dbg !2637

; <label>:85                                      ; preds = %84, %74
  %86 = load %struct.FuncState** %fs, align 4, !dbg !2640
  %87 = getelementptr inbounds %struct.FuncState* %86, i32 0, i32 10, !dbg !2640
  %88 = load i16* %87, align 2, !dbg !2640
  %89 = add i16 %88, 1, !dbg !2640
  store i16 %89, i16* %87, align 2, !dbg !2640
  %90 = sext i16 %88 to i32, !dbg !2640
  ret i32 %90, !dbg !2640
}

declare hidden void @luaC_barrier_(%struct.lua_State*, %struct.GCObject*, %struct.GCObject*) #2

declare hidden %struct.TString* @luaX_newstring(%struct.LexState*, i8*, i32) #2

; Function Attrs: nounwind
define internal void @closelistfield(%struct.FuncState* %fs, %struct.ConsControl* %cc) #0 {
  %1 = alloca %struct.FuncState*, align 4
  %2 = alloca %struct.ConsControl*, align 4
  store %struct.FuncState* %fs, %struct.FuncState** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.FuncState** %1}, metadata !2641), !dbg !2642
  store %struct.ConsControl* %cc, %struct.ConsControl** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.ConsControl** %2}, metadata !2643), !dbg !2644
  %3 = load %struct.ConsControl** %2, align 4, !dbg !2645
  %4 = getelementptr inbounds %struct.ConsControl* %3, i32 0, i32 0, !dbg !2645
  %5 = getelementptr inbounds %struct.expdesc* %4, i32 0, i32 0, !dbg !2645
  %6 = load i32* %5, align 4, !dbg !2645
  %7 = icmp eq i32 %6, 0, !dbg !2645
  br i1 %7, label %8, label %9, !dbg !2645

; <label>:8                                       ; preds = %0
  br label %36, !dbg !2647

; <label>:9                                       ; preds = %0
  %10 = load %struct.FuncState** %1, align 4, !dbg !2649
  %11 = load %struct.ConsControl** %2, align 4, !dbg !2649
  %12 = getelementptr inbounds %struct.ConsControl* %11, i32 0, i32 0, !dbg !2649
  call void @luaK_exp2nextreg(%struct.FuncState* %10, %struct.expdesc* %12), !dbg !2649
  %13 = load %struct.ConsControl** %2, align 4, !dbg !2650
  %14 = getelementptr inbounds %struct.ConsControl* %13, i32 0, i32 0, !dbg !2650
  %15 = getelementptr inbounds %struct.expdesc* %14, i32 0, i32 0, !dbg !2650
  store i32 0, i32* %15, align 4, !dbg !2650
  %16 = load %struct.ConsControl** %2, align 4, !dbg !2651
  %17 = getelementptr inbounds %struct.ConsControl* %16, i32 0, i32 4, !dbg !2651
  %18 = load i32* %17, align 4, !dbg !2651
  %19 = icmp eq i32 %18, 50, !dbg !2651
  br i1 %19, label %20, label %36, !dbg !2651

; <label>:20                                      ; preds = %9
  %21 = load %struct.FuncState** %1, align 4, !dbg !2653
  %22 = load %struct.ConsControl** %2, align 4, !dbg !2653
  %23 = getelementptr inbounds %struct.ConsControl* %22, i32 0, i32 1, !dbg !2653
  %24 = load %struct.expdesc** %23, align 4, !dbg !2653
  %25 = getelementptr inbounds %struct.expdesc* %24, i32 0, i32 1, !dbg !2653
  %26 = bitcast %union.anon.6* %25 to i32*, !dbg !2653
  %27 = load i32* %26, align 4, !dbg !2653
  %28 = load %struct.ConsControl** %2, align 4, !dbg !2653
  %29 = getelementptr inbounds %struct.ConsControl* %28, i32 0, i32 3, !dbg !2653
  %30 = load i32* %29, align 4, !dbg !2653
  %31 = load %struct.ConsControl** %2, align 4, !dbg !2653
  %32 = getelementptr inbounds %struct.ConsControl* %31, i32 0, i32 4, !dbg !2653
  %33 = load i32* %32, align 4, !dbg !2653
  call void @luaK_setlist(%struct.FuncState* %21, i32 %27, i32 %30, i32 %33), !dbg !2653
  %34 = load %struct.ConsControl** %2, align 4, !dbg !2655
  %35 = getelementptr inbounds %struct.ConsControl* %34, i32 0, i32 4, !dbg !2655
  store i32 0, i32* %35, align 4, !dbg !2655
  br label %36, !dbg !2656

; <label>:36                                      ; preds = %8, %20, %9
  ret void, !dbg !2657
}

; Function Attrs: nounwind
define internal void @field(%struct.LexState* %ls, %struct.ConsControl* %cc) #0 {
  %1 = alloca %struct.LexState*, align 4
  %2 = alloca %struct.ConsControl*, align 4
  store %struct.LexState* %ls, %struct.LexState** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.LexState** %1}, metadata !2658), !dbg !2659
  store %struct.ConsControl* %cc, %struct.ConsControl** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.ConsControl** %2}, metadata !2660), !dbg !2661
  %3 = load %struct.LexState** %1, align 4, !dbg !2662
  %4 = getelementptr inbounds %struct.LexState* %3, i32 0, i32 3, !dbg !2662
  %5 = getelementptr inbounds %struct.Token* %4, i32 0, i32 0, !dbg !2662
  %6 = load i32* %5, align 4, !dbg !2662
  switch i32 %6, label %21 [
    i32 292, label %7
    i32 91, label %18
  ], !dbg !2662

; <label>:7                                       ; preds = %0
  %8 = load %struct.LexState** %1, align 4, !dbg !2663
  %9 = call i32 @luaX_lookahead(%struct.LexState* %8), !dbg !2663
  %10 = icmp ne i32 %9, 61, !dbg !2663
  br i1 %10, label %11, label %14, !dbg !2663

; <label>:11                                      ; preds = %7
  %12 = load %struct.LexState** %1, align 4, !dbg !2667
  %13 = load %struct.ConsControl** %2, align 4, !dbg !2667
  call void @listfield(%struct.LexState* %12, %struct.ConsControl* %13), !dbg !2667
  br label %17, !dbg !2667

; <label>:14                                      ; preds = %7
  %15 = load %struct.LexState** %1, align 4, !dbg !2668
  %16 = load %struct.ConsControl** %2, align 4, !dbg !2668
  call void @recfield(%struct.LexState* %15, %struct.ConsControl* %16), !dbg !2668
  br label %17

; <label>:17                                      ; preds = %14, %11
  br label %24, !dbg !2669

; <label>:18                                      ; preds = %0
  %19 = load %struct.LexState** %1, align 4, !dbg !2670
  %20 = load %struct.ConsControl** %2, align 4, !dbg !2670
  call void @recfield(%struct.LexState* %19, %struct.ConsControl* %20), !dbg !2670
  br label %24, !dbg !2672

; <label>:21                                      ; preds = %0
  %22 = load %struct.LexState** %1, align 4, !dbg !2673
  %23 = load %struct.ConsControl** %2, align 4, !dbg !2673
  call void @listfield(%struct.LexState* %22, %struct.ConsControl* %23), !dbg !2673
  br label %24, !dbg !2675

; <label>:24                                      ; preds = %21, %18, %17
  ret void, !dbg !2676
}

; Function Attrs: nounwind
define internal void @lastlistfield(%struct.FuncState* %fs, %struct.ConsControl* %cc) #0 {
  %1 = alloca %struct.FuncState*, align 4
  %2 = alloca %struct.ConsControl*, align 4
  store %struct.FuncState* %fs, %struct.FuncState** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.FuncState** %1}, metadata !2677), !dbg !2678
  store %struct.ConsControl* %cc, %struct.ConsControl** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.ConsControl** %2}, metadata !2679), !dbg !2680
  %3 = load %struct.ConsControl** %2, align 4, !dbg !2681
  %4 = getelementptr inbounds %struct.ConsControl* %3, i32 0, i32 4, !dbg !2681
  %5 = load i32* %4, align 4, !dbg !2681
  %6 = icmp eq i32 %5, 0, !dbg !2681
  br i1 %6, label %7, label %8, !dbg !2681

; <label>:7                                       ; preds = %0
  br label %62, !dbg !2683

; <label>:8                                       ; preds = %0
  %9 = load %struct.ConsControl** %2, align 4, !dbg !2685
  %10 = getelementptr inbounds %struct.ConsControl* %9, i32 0, i32 0, !dbg !2685
  %11 = getelementptr inbounds %struct.expdesc* %10, i32 0, i32 0, !dbg !2685
  %12 = load i32* %11, align 4, !dbg !2685
  %13 = icmp eq i32 %12, 13, !dbg !2685
  br i1 %13, label %20, label %14, !dbg !2685

; <label>:14                                      ; preds = %8
  %15 = load %struct.ConsControl** %2, align 4, !dbg !2687
  %16 = getelementptr inbounds %struct.ConsControl* %15, i32 0, i32 0, !dbg !2687
  %17 = getelementptr inbounds %struct.expdesc* %16, i32 0, i32 0, !dbg !2687
  %18 = load i32* %17, align 4, !dbg !2687
  %19 = icmp eq i32 %18, 14, !dbg !2687
  br i1 %19, label %20, label %38, !dbg !2687

; <label>:20                                      ; preds = %14, %8
  %21 = load %struct.FuncState** %1, align 4, !dbg !2689
  %22 = load %struct.ConsControl** %2, align 4, !dbg !2689
  %23 = getelementptr inbounds %struct.ConsControl* %22, i32 0, i32 0, !dbg !2689
  call void @luaK_setreturns(%struct.FuncState* %21, %struct.expdesc* %23, i32 -1), !dbg !2689
  %24 = load %struct.FuncState** %1, align 4, !dbg !2691
  %25 = load %struct.ConsControl** %2, align 4, !dbg !2691
  %26 = getelementptr inbounds %struct.ConsControl* %25, i32 0, i32 1, !dbg !2691
  %27 = load %struct.expdesc** %26, align 4, !dbg !2691
  %28 = getelementptr inbounds %struct.expdesc* %27, i32 0, i32 1, !dbg !2691
  %29 = bitcast %union.anon.6* %28 to i32*, !dbg !2691
  %30 = load i32* %29, align 4, !dbg !2691
  %31 = load %struct.ConsControl** %2, align 4, !dbg !2691
  %32 = getelementptr inbounds %struct.ConsControl* %31, i32 0, i32 3, !dbg !2691
  %33 = load i32* %32, align 4, !dbg !2691
  call void @luaK_setlist(%struct.FuncState* %24, i32 %30, i32 %33, i32 -1), !dbg !2691
  %34 = load %struct.ConsControl** %2, align 4, !dbg !2692
  %35 = getelementptr inbounds %struct.ConsControl* %34, i32 0, i32 3, !dbg !2692
  %36 = load i32* %35, align 4, !dbg !2692
  %37 = add nsw i32 %36, -1, !dbg !2692
  store i32 %37, i32* %35, align 4, !dbg !2692
  br label %62, !dbg !2693

; <label>:38                                      ; preds = %14
  %39 = load %struct.ConsControl** %2, align 4, !dbg !2694
  %40 = getelementptr inbounds %struct.ConsControl* %39, i32 0, i32 0, !dbg !2694
  %41 = getelementptr inbounds %struct.expdesc* %40, i32 0, i32 0, !dbg !2694
  %42 = load i32* %41, align 4, !dbg !2694
  %43 = icmp ne i32 %42, 0, !dbg !2694
  br i1 %43, label %44, label %48, !dbg !2694

; <label>:44                                      ; preds = %38
  %45 = load %struct.FuncState** %1, align 4, !dbg !2697
  %46 = load %struct.ConsControl** %2, align 4, !dbg !2697
  %47 = getelementptr inbounds %struct.ConsControl* %46, i32 0, i32 0, !dbg !2697
  call void @luaK_exp2nextreg(%struct.FuncState* %45, %struct.expdesc* %47), !dbg !2697
  br label %48, !dbg !2697

; <label>:48                                      ; preds = %44, %38
  %49 = load %struct.FuncState** %1, align 4, !dbg !2698
  %50 = load %struct.ConsControl** %2, align 4, !dbg !2698
  %51 = getelementptr inbounds %struct.ConsControl* %50, i32 0, i32 1, !dbg !2698
  %52 = load %struct.expdesc** %51, align 4, !dbg !2698
  %53 = getelementptr inbounds %struct.expdesc* %52, i32 0, i32 1, !dbg !2698
  %54 = bitcast %union.anon.6* %53 to i32*, !dbg !2698
  %55 = load i32* %54, align 4, !dbg !2698
  %56 = load %struct.ConsControl** %2, align 4, !dbg !2698
  %57 = getelementptr inbounds %struct.ConsControl* %56, i32 0, i32 3, !dbg !2698
  %58 = load i32* %57, align 4, !dbg !2698
  %59 = load %struct.ConsControl** %2, align 4, !dbg !2698
  %60 = getelementptr inbounds %struct.ConsControl* %59, i32 0, i32 4, !dbg !2698
  %61 = load i32* %60, align 4, !dbg !2698
  call void @luaK_setlist(%struct.FuncState* %49, i32 %55, i32 %58, i32 %61), !dbg !2698
  br label %62

; <label>:62                                      ; preds = %7, %48, %20
  ret void, !dbg !2699
}

declare hidden i32 @luaO_int2fb(i32) #2

declare hidden void @luaK_setlist(%struct.FuncState*, i32, i32, i32) #2

declare hidden i32 @luaX_lookahead(%struct.LexState*) #2

; Function Attrs: nounwind
define internal void @listfield(%struct.LexState* %ls, %struct.ConsControl* %cc) #0 {
  %1 = alloca %struct.LexState*, align 4
  %2 = alloca %struct.ConsControl*, align 4
  store %struct.LexState* %ls, %struct.LexState** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.LexState** %1}, metadata !2700), !dbg !2701
  store %struct.ConsControl* %cc, %struct.ConsControl** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.ConsControl** %2}, metadata !2702), !dbg !2703
  %3 = load %struct.LexState** %1, align 4, !dbg !2704
  %4 = load %struct.ConsControl** %2, align 4, !dbg !2704
  %5 = getelementptr inbounds %struct.ConsControl* %4, i32 0, i32 0, !dbg !2704
  call void @expr(%struct.LexState* %3, %struct.expdesc* %5), !dbg !2704
  %6 = load %struct.LexState** %1, align 4, !dbg !2705
  %7 = getelementptr inbounds %struct.LexState* %6, i32 0, i32 5, !dbg !2705
  %8 = load %struct.FuncState** %7, align 4, !dbg !2705
  %9 = load %struct.ConsControl** %2, align 4, !dbg !2705
  %10 = getelementptr inbounds %struct.ConsControl* %9, i32 0, i32 3, !dbg !2705
  %11 = load i32* %10, align 4, !dbg !2705
  call void @checklimit(%struct.FuncState* %8, i32 %11, i32 2147483647, i8* getelementptr inbounds ([23 x i8]* @.str13, i32 0, i32 0)), !dbg !2705
  %12 = load %struct.ConsControl** %2, align 4, !dbg !2706
  %13 = getelementptr inbounds %struct.ConsControl* %12, i32 0, i32 3, !dbg !2706
  %14 = load i32* %13, align 4, !dbg !2706
  %15 = add nsw i32 %14, 1, !dbg !2706
  store i32 %15, i32* %13, align 4, !dbg !2706
  %16 = load %struct.ConsControl** %2, align 4, !dbg !2707
  %17 = getelementptr inbounds %struct.ConsControl* %16, i32 0, i32 4, !dbg !2707
  %18 = load i32* %17, align 4, !dbg !2707
  %19 = add nsw i32 %18, 1, !dbg !2707
  store i32 %19, i32* %17, align 4, !dbg !2707
  ret void, !dbg !2708
}

; Function Attrs: nounwind
define internal void @recfield(%struct.LexState* %ls, %struct.ConsControl* %cc) #0 {
  %1 = alloca %struct.LexState*, align 4
  %2 = alloca %struct.ConsControl*, align 4
  %fs = alloca %struct.FuncState*, align 4
  %reg = alloca i32, align 4
  %key = alloca %struct.expdesc, align 8
  %val = alloca %struct.expdesc, align 8
  %rkkey = alloca i32, align 4
  store %struct.LexState* %ls, %struct.LexState** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.LexState** %1}, metadata !2709), !dbg !2710
  store %struct.ConsControl* %cc, %struct.ConsControl** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.ConsControl** %2}, metadata !2711), !dbg !2712
  call void @llvm.dbg.declare(metadata !{%struct.FuncState** %fs}, metadata !2713), !dbg !2714
  %3 = load %struct.LexState** %1, align 4, !dbg !2715
  %4 = getelementptr inbounds %struct.LexState* %3, i32 0, i32 5, !dbg !2715
  %5 = load %struct.FuncState** %4, align 4, !dbg !2715
  store %struct.FuncState* %5, %struct.FuncState** %fs, align 4, !dbg !2715
  call void @llvm.dbg.declare(metadata !{i32* %reg}, metadata !2716), !dbg !2717
  %6 = load %struct.LexState** %1, align 4, !dbg !2718
  %7 = getelementptr inbounds %struct.LexState* %6, i32 0, i32 5, !dbg !2718
  %8 = load %struct.FuncState** %7, align 4, !dbg !2718
  %9 = getelementptr inbounds %struct.FuncState* %8, i32 0, i32 13, !dbg !2718
  %10 = load i8* %9, align 1, !dbg !2718
  %11 = zext i8 %10 to i32, !dbg !2718
  store i32 %11, i32* %reg, align 4, !dbg !2718
  call void @llvm.dbg.declare(metadata !{%struct.expdesc* %key}, metadata !2719), !dbg !2720
  call void @llvm.dbg.declare(metadata !{%struct.expdesc* %val}, metadata !2721), !dbg !2722
  call void @llvm.dbg.declare(metadata !{i32* %rkkey}, metadata !2723), !dbg !2724
  %12 = load %struct.LexState** %1, align 4, !dbg !2725
  %13 = getelementptr inbounds %struct.LexState* %12, i32 0, i32 3, !dbg !2725
  %14 = getelementptr inbounds %struct.Token* %13, i32 0, i32 0, !dbg !2725
  %15 = load i32* %14, align 4, !dbg !2725
  %16 = icmp eq i32 %15, 292, !dbg !2725
  br i1 %16, label %17, label %23, !dbg !2725

; <label>:17                                      ; preds = %0
  %18 = load %struct.FuncState** %fs, align 4, !dbg !2727
  %19 = load %struct.ConsControl** %2, align 4, !dbg !2727
  %20 = getelementptr inbounds %struct.ConsControl* %19, i32 0, i32 2, !dbg !2727
  %21 = load i32* %20, align 4, !dbg !2727
  call void @checklimit(%struct.FuncState* %18, i32 %21, i32 2147483647, i8* getelementptr inbounds ([23 x i8]* @.str13, i32 0, i32 0)), !dbg !2727
  %22 = load %struct.LexState** %1, align 4, !dbg !2729
  call void @checkname(%struct.LexState* %22, %struct.expdesc* %key), !dbg !2729
  br label %25, !dbg !2730

; <label>:23                                      ; preds = %0
  %24 = load %struct.LexState** %1, align 4, !dbg !2731
  call void @yindex(%struct.LexState* %24, %struct.expdesc* %key), !dbg !2731
  br label %25

; <label>:25                                      ; preds = %23, %17
  %26 = load %struct.ConsControl** %2, align 4, !dbg !2732
  %27 = getelementptr inbounds %struct.ConsControl* %26, i32 0, i32 2, !dbg !2732
  %28 = load i32* %27, align 4, !dbg !2732
  %29 = add nsw i32 %28, 1, !dbg !2732
  store i32 %29, i32* %27, align 4, !dbg !2732
  %30 = load %struct.LexState** %1, align 4, !dbg !2733
  call void @checknext(%struct.LexState* %30, i32 61), !dbg !2733
  %31 = load %struct.FuncState** %fs, align 4, !dbg !2734
  %32 = call i32 @luaK_exp2RK(%struct.FuncState* %31, %struct.expdesc* %key), !dbg !2734
  store i32 %32, i32* %rkkey, align 4, !dbg !2734
  %33 = load %struct.LexState** %1, align 4, !dbg !2735
  call void @expr(%struct.LexState* %33, %struct.expdesc* %val), !dbg !2735
  %34 = load %struct.FuncState** %fs, align 4, !dbg !2736
  %35 = load %struct.ConsControl** %2, align 4, !dbg !2736
  %36 = getelementptr inbounds %struct.ConsControl* %35, i32 0, i32 1, !dbg !2736
  %37 = load %struct.expdesc** %36, align 4, !dbg !2736
  %38 = getelementptr inbounds %struct.expdesc* %37, i32 0, i32 1, !dbg !2736
  %39 = bitcast %union.anon.6* %38 to i32*, !dbg !2736
  %40 = load i32* %39, align 4, !dbg !2736
  %41 = load i32* %rkkey, align 4, !dbg !2736
  %42 = load %struct.FuncState** %fs, align 4, !dbg !2737
  %43 = call i32 @luaK_exp2RK(%struct.FuncState* %42, %struct.expdesc* %val), !dbg !2737
  %44 = call i32 @luaK_codeABC(%struct.FuncState* %34, i32 10, i32 %40, i32 %41, i32 %43), !dbg !2736
  %45 = load i32* %reg, align 4, !dbg !2738
  %46 = trunc i32 %45 to i8, !dbg !2738
  %47 = load %struct.FuncState** %fs, align 4, !dbg !2738
  %48 = getelementptr inbounds %struct.FuncState* %47, i32 0, i32 13, !dbg !2738
  store i8 %46, i8* %48, align 1, !dbg !2738
  ret void, !dbg !2739
}

; Function Attrs: nounwind
define internal void @checkname(%struct.LexState* %ls, %struct.expdesc* %e) #0 {
  %1 = alloca %struct.LexState*, align 4
  %2 = alloca %struct.expdesc*, align 4
  store %struct.LexState* %ls, %struct.LexState** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.LexState** %1}, metadata !2740), !dbg !2741
  store %struct.expdesc* %e, %struct.expdesc** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.expdesc** %2}, metadata !2742), !dbg !2743
  %3 = load %struct.LexState** %1, align 4, !dbg !2744
  %4 = load %struct.expdesc** %2, align 4, !dbg !2744
  %5 = load %struct.LexState** %1, align 4, !dbg !2745
  %6 = call %struct.TString* @str_checkname(%struct.LexState* %5), !dbg !2745
  call void @codestring(%struct.LexState* %3, %struct.expdesc* %4, %struct.TString* %6), !dbg !2744
  ret void, !dbg !2746
}

; Function Attrs: nounwind
define internal void @yindex(%struct.LexState* %ls, %struct.expdesc* %v) #0 {
  %1 = alloca %struct.LexState*, align 4
  %2 = alloca %struct.expdesc*, align 4
  store %struct.LexState* %ls, %struct.LexState** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.LexState** %1}, metadata !2747), !dbg !2748
  store %struct.expdesc* %v, %struct.expdesc** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.expdesc** %2}, metadata !2749), !dbg !2750
  %3 = load %struct.LexState** %1, align 4, !dbg !2751
  call void @luaX_next(%struct.LexState* %3), !dbg !2751
  %4 = load %struct.LexState** %1, align 4, !dbg !2752
  %5 = load %struct.expdesc** %2, align 4, !dbg !2752
  call void @expr(%struct.LexState* %4, %struct.expdesc* %5), !dbg !2752
  %6 = load %struct.LexState** %1, align 4, !dbg !2753
  %7 = getelementptr inbounds %struct.LexState* %6, i32 0, i32 5, !dbg !2753
  %8 = load %struct.FuncState** %7, align 4, !dbg !2753
  %9 = load %struct.expdesc** %2, align 4, !dbg !2753
  call void @luaK_exp2val(%struct.FuncState* %8, %struct.expdesc* %9), !dbg !2753
  %10 = load %struct.LexState** %1, align 4, !dbg !2754
  call void @checknext(%struct.LexState* %10, i32 93), !dbg !2754
  ret void, !dbg !2755
}

declare hidden i32 @luaK_exp2RK(%struct.FuncState*, %struct.expdesc*) #2

declare hidden void @luaK_exp2val(%struct.FuncState*, %struct.expdesc*) #2

declare hidden i32 @luaK_stringK(%struct.FuncState*, %struct.TString*) #2

; Function Attrs: noreturn nounwind
define internal void @errorlimit(%struct.FuncState* %fs, i32 %limit, i8* %what) #4 {
  %1 = alloca %struct.FuncState*, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 4
  %L = alloca %struct.lua_State*, align 4
  %msg = alloca i8*, align 4
  %line = alloca i32, align 4
  %where = alloca i8*, align 4
  store %struct.FuncState* %fs, %struct.FuncState** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.FuncState** %1}, metadata !2756), !dbg !2757
  store i32 %limit, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !2758), !dbg !2759
  store i8* %what, i8** %3, align 4
  call void @llvm.dbg.declare(metadata !{i8** %3}, metadata !2760), !dbg !2761
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %L}, metadata !2762), !dbg !2763
  %4 = load %struct.FuncState** %1, align 4, !dbg !2764
  %5 = getelementptr inbounds %struct.FuncState* %4, i32 0, i32 2, !dbg !2764
  %6 = load %struct.LexState** %5, align 4, !dbg !2764
  %7 = getelementptr inbounds %struct.LexState* %6, i32 0, i32 6, !dbg !2764
  %8 = load %struct.lua_State** %7, align 4, !dbg !2764
  store %struct.lua_State* %8, %struct.lua_State** %L, align 4, !dbg !2764
  call void @llvm.dbg.declare(metadata !{i8** %msg}, metadata !2765), !dbg !2766
  call void @llvm.dbg.declare(metadata !{i32* %line}, metadata !2767), !dbg !2768
  %9 = load %struct.FuncState** %1, align 4, !dbg !2769
  %10 = getelementptr inbounds %struct.FuncState* %9, i32 0, i32 0, !dbg !2769
  %11 = load %struct.Proto** %10, align 4, !dbg !2769
  %12 = getelementptr inbounds %struct.Proto* %11, i32 0, i32 12, !dbg !2769
  %13 = load i32* %12, align 4, !dbg !2769
  store i32 %13, i32* %line, align 4, !dbg !2769
  call void @llvm.dbg.declare(metadata !{i8** %where}, metadata !2770), !dbg !2771
  %14 = load i32* %line, align 4, !dbg !2772
  %15 = icmp eq i32 %14, 0, !dbg !2772
  br i1 %15, label %16, label %17, !dbg !2772

; <label>:16                                      ; preds = %0
  br label %21, !dbg !2773

; <label>:17                                      ; preds = %0
  %18 = load %struct.lua_State** %L, align 4, !dbg !2775
  %19 = load i32* %line, align 4, !dbg !2775
  %20 = call i8* (%struct.lua_State*, i8*, ...)* @luaO_pushfstring(%struct.lua_State* %18, i8* getelementptr inbounds ([20 x i8]* @.str15, i32 0, i32 0), i32 %19), !dbg !2775
  br label %21, !dbg !2775

; <label>:21                                      ; preds = %17, %16
  %22 = phi i8* [ getelementptr inbounds ([14 x i8]* @.str14, i32 0, i32 0), %16 ], [ %20, %17 ], !dbg !2775
  store i8* %22, i8** %where, align 4, !dbg !2776
  %23 = load %struct.lua_State** %L, align 4, !dbg !2778
  %24 = load i8** %3, align 4, !dbg !2778
  %25 = load i32* %2, align 4, !dbg !2778
  %26 = load i8** %where, align 4, !dbg !2778
  %27 = call i8* (%struct.lua_State*, i8*, ...)* @luaO_pushfstring(%struct.lua_State* %23, i8* getelementptr inbounds ([32 x i8]* @.str16, i32 0, i32 0), i8* %24, i32 %25, i8* %26), !dbg !2778
  store i8* %27, i8** %msg, align 4, !dbg !2778
  %28 = load %struct.FuncState** %1, align 4, !dbg !2779
  %29 = getelementptr inbounds %struct.FuncState* %28, i32 0, i32 2, !dbg !2779
  %30 = load %struct.LexState** %29, align 4, !dbg !2779
  %31 = load i8** %msg, align 4, !dbg !2779
  call void @luaX_syntaxerror(%struct.LexState* %30, i8* %31) #6, !dbg !2779
  unreachable, !dbg !2779
                                                  ; No predecessors!
  ret void, !dbg !2780
}

; Function Attrs: nounwind
define internal void @primaryexp(%struct.LexState* %ls, %struct.expdesc* %v) #0 {
  %1 = alloca %struct.LexState*, align 4
  %2 = alloca %struct.expdesc*, align 4
  %line = alloca i32, align 4
  store %struct.LexState* %ls, %struct.LexState** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.LexState** %1}, metadata !2781), !dbg !2782
  store %struct.expdesc* %v, %struct.expdesc** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.expdesc** %2}, metadata !2783), !dbg !2784
  %3 = load %struct.LexState** %1, align 4, !dbg !2785
  %4 = getelementptr inbounds %struct.LexState* %3, i32 0, i32 3, !dbg !2785
  %5 = getelementptr inbounds %struct.Token* %4, i32 0, i32 0, !dbg !2785
  %6 = load i32* %5, align 4, !dbg !2785
  switch i32 %6, label %23 [
    i32 40, label %7
    i32 292, label %20
  ], !dbg !2785

; <label>:7                                       ; preds = %0
  call void @llvm.dbg.declare(metadata !{i32* %line}, metadata !2786), !dbg !2789
  %8 = load %struct.LexState** %1, align 4, !dbg !2790
  %9 = getelementptr inbounds %struct.LexState* %8, i32 0, i32 1, !dbg !2790
  %10 = load i32* %9, align 4, !dbg !2790
  store i32 %10, i32* %line, align 4, !dbg !2790
  %11 = load %struct.LexState** %1, align 4, !dbg !2791
  call void @luaX_next(%struct.LexState* %11), !dbg !2791
  %12 = load %struct.LexState** %1, align 4, !dbg !2792
  %13 = load %struct.expdesc** %2, align 4, !dbg !2792
  call void @expr(%struct.LexState* %12, %struct.expdesc* %13), !dbg !2792
  %14 = load %struct.LexState** %1, align 4, !dbg !2793
  %15 = load i32* %line, align 4, !dbg !2793
  call void @check_match(%struct.LexState* %14, i32 41, i32 40, i32 %15), !dbg !2793
  %16 = load %struct.LexState** %1, align 4, !dbg !2794
  %17 = getelementptr inbounds %struct.LexState* %16, i32 0, i32 5, !dbg !2794
  %18 = load %struct.FuncState** %17, align 4, !dbg !2794
  %19 = load %struct.expdesc** %2, align 4, !dbg !2794
  call void @luaK_dischargevars(%struct.FuncState* %18, %struct.expdesc* %19), !dbg !2794
  br label %25, !dbg !2795

; <label>:20                                      ; preds = %0
  %21 = load %struct.LexState** %1, align 4, !dbg !2796
  %22 = load %struct.expdesc** %2, align 4, !dbg !2796
  call void @singlevar(%struct.LexState* %21, %struct.expdesc* %22), !dbg !2796
  br label %25, !dbg !2798

; <label>:23                                      ; preds = %0
  %24 = load %struct.LexState** %1, align 4, !dbg !2799
  call void @luaX_syntaxerror(%struct.LexState* %24, i8* getelementptr inbounds ([18 x i8]* @.str18, i32 0, i32 0)) #6, !dbg !2799
  unreachable, !dbg !2799

; <label>:25                                      ; preds = %20, %7
  ret void, !dbg !2801
}

; Function Attrs: nounwind
define internal void @fieldsel(%struct.LexState* %ls, %struct.expdesc* %v) #0 {
  %1 = alloca %struct.LexState*, align 4
  %2 = alloca %struct.expdesc*, align 4
  %fs = alloca %struct.FuncState*, align 4
  %key = alloca %struct.expdesc, align 8
  store %struct.LexState* %ls, %struct.LexState** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.LexState** %1}, metadata !2802), !dbg !2803
  store %struct.expdesc* %v, %struct.expdesc** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.expdesc** %2}, metadata !2804), !dbg !2805
  call void @llvm.dbg.declare(metadata !{%struct.FuncState** %fs}, metadata !2806), !dbg !2807
  %3 = load %struct.LexState** %1, align 4, !dbg !2808
  %4 = getelementptr inbounds %struct.LexState* %3, i32 0, i32 5, !dbg !2808
  %5 = load %struct.FuncState** %4, align 4, !dbg !2808
  store %struct.FuncState* %5, %struct.FuncState** %fs, align 4, !dbg !2808
  call void @llvm.dbg.declare(metadata !{%struct.expdesc* %key}, metadata !2809), !dbg !2810
  %6 = load %struct.FuncState** %fs, align 4, !dbg !2811
  %7 = load %struct.expdesc** %2, align 4, !dbg !2811
  call void @luaK_exp2anyregup(%struct.FuncState* %6, %struct.expdesc* %7), !dbg !2811
  %8 = load %struct.LexState** %1, align 4, !dbg !2812
  call void @luaX_next(%struct.LexState* %8), !dbg !2812
  %9 = load %struct.LexState** %1, align 4, !dbg !2813
  call void @checkname(%struct.LexState* %9, %struct.expdesc* %key), !dbg !2813
  %10 = load %struct.FuncState** %fs, align 4, !dbg !2814
  %11 = load %struct.expdesc** %2, align 4, !dbg !2814
  call void @luaK_indexed(%struct.FuncState* %10, %struct.expdesc* %11, %struct.expdesc* %key), !dbg !2814
  ret void, !dbg !2815
}

declare hidden void @luaK_exp2anyregup(%struct.FuncState*, %struct.expdesc*) #2

declare hidden void @luaK_indexed(%struct.FuncState*, %struct.expdesc*, %struct.expdesc*) #2

declare hidden void @luaK_self(%struct.FuncState*, %struct.expdesc*, %struct.expdesc*) #2

; Function Attrs: nounwind
define internal void @funcargs(%struct.LexState* %ls, %struct.expdesc* %f, i32 %line) #0 {
  %1 = alloca %struct.LexState*, align 4
  %2 = alloca %struct.expdesc*, align 4
  %3 = alloca i32, align 4
  %fs = alloca %struct.FuncState*, align 4
  %args = alloca %struct.expdesc, align 8
  %base = alloca i32, align 4
  %nparams = alloca i32, align 4
  store %struct.LexState* %ls, %struct.LexState** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.LexState** %1}, metadata !2816), !dbg !2817
  store %struct.expdesc* %f, %struct.expdesc** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.expdesc** %2}, metadata !2818), !dbg !2819
  store i32 %line, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !2820), !dbg !2821
  call void @llvm.dbg.declare(metadata !{%struct.FuncState** %fs}, metadata !2822), !dbg !2823
  %4 = load %struct.LexState** %1, align 4, !dbg !2824
  %5 = getelementptr inbounds %struct.LexState* %4, i32 0, i32 5, !dbg !2824
  %6 = load %struct.FuncState** %5, align 4, !dbg !2824
  store %struct.FuncState* %6, %struct.FuncState** %fs, align 4, !dbg !2824
  call void @llvm.dbg.declare(metadata !{%struct.expdesc* %args}, metadata !2825), !dbg !2826
  call void @llvm.dbg.declare(metadata !{i32* %base}, metadata !2827), !dbg !2828
  call void @llvm.dbg.declare(metadata !{i32* %nparams}, metadata !2829), !dbg !2830
  %7 = load %struct.LexState** %1, align 4, !dbg !2831
  %8 = getelementptr inbounds %struct.LexState* %7, i32 0, i32 3, !dbg !2831
  %9 = getelementptr inbounds %struct.Token* %8, i32 0, i32 0, !dbg !2831
  %10 = load i32* %9, align 4, !dbg !2831
  switch i32 %10, label %37 [
    i32 40, label %11
    i32 123, label %27
    i32 293, label %29
  ], !dbg !2831

; <label>:11                                      ; preds = %0
  %12 = load %struct.LexState** %1, align 4, !dbg !2832
  call void @luaX_next(%struct.LexState* %12), !dbg !2832
  %13 = load %struct.LexState** %1, align 4, !dbg !2835
  %14 = getelementptr inbounds %struct.LexState* %13, i32 0, i32 3, !dbg !2835
  %15 = getelementptr inbounds %struct.Token* %14, i32 0, i32 0, !dbg !2835
  %16 = load i32* %15, align 4, !dbg !2835
  %17 = icmp eq i32 %16, 41, !dbg !2835
  br i1 %17, label %18, label %20, !dbg !2835

; <label>:18                                      ; preds = %11
  %19 = getelementptr inbounds %struct.expdesc* %args, i32 0, i32 0, !dbg !2837
  store i32 0, i32* %19, align 4, !dbg !2837
  br label %24, !dbg !2837

; <label>:20                                      ; preds = %11
  %21 = load %struct.LexState** %1, align 4, !dbg !2838
  %22 = call i32 @explist(%struct.LexState* %21, %struct.expdesc* %args), !dbg !2838
  %23 = load %struct.FuncState** %fs, align 4, !dbg !2840
  call void @luaK_setreturns(%struct.FuncState* %23, %struct.expdesc* %args, i32 -1), !dbg !2840
  br label %24

; <label>:24                                      ; preds = %20, %18
  %25 = load %struct.LexState** %1, align 4, !dbg !2841
  %26 = load i32* %3, align 4, !dbg !2841
  call void @check_match(%struct.LexState* %25, i32 41, i32 40, i32 %26), !dbg !2841
  br label %39, !dbg !2842

; <label>:27                                      ; preds = %0
  %28 = load %struct.LexState** %1, align 4, !dbg !2843
  call void @constructor(%struct.LexState* %28, %struct.expdesc* %args), !dbg !2843
  br label %39, !dbg !2845

; <label>:29                                      ; preds = %0
  %30 = load %struct.LexState** %1, align 4, !dbg !2846
  %31 = load %struct.LexState** %1, align 4, !dbg !2846
  %32 = getelementptr inbounds %struct.LexState* %31, i32 0, i32 3, !dbg !2846
  %33 = getelementptr inbounds %struct.Token* %32, i32 0, i32 1, !dbg !2846
  %34 = bitcast %union.SemInfo* %33 to %struct.TString**, !dbg !2846
  %35 = load %struct.TString** %34, align 4, !dbg !2846
  call void @codestring(%struct.LexState* %30, %struct.expdesc* %args, %struct.TString* %35), !dbg !2846
  %36 = load %struct.LexState** %1, align 4, !dbg !2848
  call void @luaX_next(%struct.LexState* %36), !dbg !2848
  br label %39, !dbg !2849

; <label>:37                                      ; preds = %0
  %38 = load %struct.LexState** %1, align 4, !dbg !2850
  call void @luaX_syntaxerror(%struct.LexState* %38, i8* getelementptr inbounds ([28 x i8]* @.str17, i32 0, i32 0)) #6, !dbg !2850
  unreachable, !dbg !2850

; <label>:39                                      ; preds = %29, %27, %24
  %40 = load %struct.expdesc** %2, align 4, !dbg !2852
  %41 = getelementptr inbounds %struct.expdesc* %40, i32 0, i32 1, !dbg !2852
  %42 = bitcast %union.anon.6* %41 to i32*, !dbg !2852
  %43 = load i32* %42, align 4, !dbg !2852
  store i32 %43, i32* %base, align 4, !dbg !2852
  %44 = getelementptr inbounds %struct.expdesc* %args, i32 0, i32 0, !dbg !2853
  %45 = load i32* %44, align 4, !dbg !2853
  %46 = icmp eq i32 %45, 13, !dbg !2853
  br i1 %46, label %51, label %47, !dbg !2853

; <label>:47                                      ; preds = %39
  %48 = getelementptr inbounds %struct.expdesc* %args, i32 0, i32 0, !dbg !2855
  %49 = load i32* %48, align 4, !dbg !2855
  %50 = icmp eq i32 %49, 14, !dbg !2855
  br i1 %50, label %51, label %52, !dbg !2855

; <label>:51                                      ; preds = %47, %39
  store i32 -1, i32* %nparams, align 4, !dbg !2857
  br label %66, !dbg !2857

; <label>:52                                      ; preds = %47
  %53 = getelementptr inbounds %struct.expdesc* %args, i32 0, i32 0, !dbg !2858
  %54 = load i32* %53, align 4, !dbg !2858
  %55 = icmp ne i32 %54, 0, !dbg !2858
  br i1 %55, label %56, label %58, !dbg !2858

; <label>:56                                      ; preds = %52
  %57 = load %struct.FuncState** %fs, align 4, !dbg !2861
  call void @luaK_exp2nextreg(%struct.FuncState* %57, %struct.expdesc* %args), !dbg !2861
  br label %58, !dbg !2861

; <label>:58                                      ; preds = %56, %52
  %59 = load %struct.FuncState** %fs, align 4, !dbg !2862
  %60 = getelementptr inbounds %struct.FuncState* %59, i32 0, i32 13, !dbg !2862
  %61 = load i8* %60, align 1, !dbg !2862
  %62 = zext i8 %61 to i32, !dbg !2862
  %63 = load i32* %base, align 4, !dbg !2862
  %64 = add nsw i32 %63, 1, !dbg !2862
  %65 = sub nsw i32 %62, %64, !dbg !2862
  store i32 %65, i32* %nparams, align 4, !dbg !2862
  br label %66

; <label>:66                                      ; preds = %58, %51
  %67 = load %struct.expdesc** %2, align 4, !dbg !2863
  %68 = load %struct.FuncState** %fs, align 4, !dbg !2864
  %69 = load i32* %base, align 4, !dbg !2864
  %70 = load i32* %nparams, align 4, !dbg !2864
  %71 = add nsw i32 %70, 1, !dbg !2864
  %72 = call i32 @luaK_codeABC(%struct.FuncState* %68, i32 36, i32 %69, i32 %71, i32 2), !dbg !2864
  call void @init_exp(%struct.expdesc* %67, i32 13, i32 %72), !dbg !2863
  %73 = load %struct.FuncState** %fs, align 4, !dbg !2865
  %74 = load i32* %3, align 4, !dbg !2865
  call void @luaK_fixline(%struct.FuncState* %73, i32 %74), !dbg !2865
  %75 = load i32* %base, align 4, !dbg !2866
  %76 = add nsw i32 %75, 1, !dbg !2866
  %77 = trunc i32 %76 to i8, !dbg !2866
  %78 = load %struct.FuncState** %fs, align 4, !dbg !2866
  %79 = getelementptr inbounds %struct.FuncState* %78, i32 0, i32 13, !dbg !2866
  store i8 %77, i8* %79, align 1, !dbg !2866
  ret void, !dbg !2867
}

declare hidden void @luaK_fixline(%struct.FuncState*, i32) #2

declare hidden void @luaK_dischargevars(%struct.FuncState*, %struct.expdesc*) #2

; Function Attrs: nounwind
define internal void @singlevar(%struct.LexState* %ls, %struct.expdesc* %var) #0 {
  %1 = alloca %struct.LexState*, align 4
  %2 = alloca %struct.expdesc*, align 4
  %varname = alloca %struct.TString*, align 4
  %fs = alloca %struct.FuncState*, align 4
  %key = alloca %struct.expdesc, align 8
  store %struct.LexState* %ls, %struct.LexState** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.LexState** %1}, metadata !2868), !dbg !2869
  store %struct.expdesc* %var, %struct.expdesc** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.expdesc** %2}, metadata !2870), !dbg !2871
  call void @llvm.dbg.declare(metadata !{%struct.TString** %varname}, metadata !2872), !dbg !2873
  %3 = load %struct.LexState** %1, align 4, !dbg !2874
  %4 = call %struct.TString* @str_checkname(%struct.LexState* %3), !dbg !2874
  store %struct.TString* %4, %struct.TString** %varname, align 4, !dbg !2874
  call void @llvm.dbg.declare(metadata !{%struct.FuncState** %fs}, metadata !2875), !dbg !2876
  %5 = load %struct.LexState** %1, align 4, !dbg !2877
  %6 = getelementptr inbounds %struct.LexState* %5, i32 0, i32 5, !dbg !2877
  %7 = load %struct.FuncState** %6, align 4, !dbg !2877
  store %struct.FuncState* %7, %struct.FuncState** %fs, align 4, !dbg !2877
  %8 = load %struct.FuncState** %fs, align 4, !dbg !2878
  %9 = load %struct.TString** %varname, align 4, !dbg !2878
  %10 = load %struct.expdesc** %2, align 4, !dbg !2878
  call void @singlevaraux(%struct.FuncState* %8, %struct.TString* %9, %struct.expdesc* %10, i32 1), !dbg !2878
  %11 = load %struct.expdesc** %2, align 4, !dbg !2879
  %12 = getelementptr inbounds %struct.expdesc* %11, i32 0, i32 0, !dbg !2879
  %13 = load i32* %12, align 4, !dbg !2879
  %14 = icmp eq i32 %13, 0, !dbg !2879
  br i1 %14, label %15, label %25, !dbg !2879

; <label>:15                                      ; preds = %0
  call void @llvm.dbg.declare(metadata !{%struct.expdesc* %key}, metadata !2881), !dbg !2883
  %16 = load %struct.FuncState** %fs, align 4, !dbg !2884
  %17 = load %struct.LexState** %1, align 4, !dbg !2884
  %18 = getelementptr inbounds %struct.LexState* %17, i32 0, i32 12, !dbg !2884
  %19 = load %struct.TString** %18, align 4, !dbg !2884
  %20 = load %struct.expdesc** %2, align 4, !dbg !2884
  call void @singlevaraux(%struct.FuncState* %16, %struct.TString* %19, %struct.expdesc* %20, i32 1), !dbg !2884
  %21 = load %struct.LexState** %1, align 4, !dbg !2885
  %22 = load %struct.TString** %varname, align 4, !dbg !2885
  call void @codestring(%struct.LexState* %21, %struct.expdesc* %key, %struct.TString* %22), !dbg !2885
  %23 = load %struct.FuncState** %fs, align 4, !dbg !2886
  %24 = load %struct.expdesc** %2, align 4, !dbg !2886
  call void @luaK_indexed(%struct.FuncState* %23, %struct.expdesc* %24, %struct.expdesc* %key), !dbg !2886
  br label %25, !dbg !2887

; <label>:25                                      ; preds = %15, %0
  ret void, !dbg !2888
}

; Function Attrs: nounwind
define internal void @singlevaraux(%struct.FuncState* %fs, %struct.TString* %n, %struct.expdesc* %var, i32 %base) #0 {
  %1 = alloca %struct.FuncState*, align 4
  %2 = alloca %struct.TString*, align 4
  %3 = alloca %struct.expdesc*, align 4
  %4 = alloca i32, align 4
  %v = alloca i32, align 4
  %idx = alloca i32, align 4
  store %struct.FuncState* %fs, %struct.FuncState** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.FuncState** %1}, metadata !2889), !dbg !2890
  store %struct.TString* %n, %struct.TString** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.TString** %2}, metadata !2891), !dbg !2892
  store %struct.expdesc* %var, %struct.expdesc** %3, align 4
  call void @llvm.dbg.declare(metadata !{%struct.expdesc** %3}, metadata !2893), !dbg !2894
  store i32 %base, i32* %4, align 4
  call void @llvm.dbg.declare(metadata !{i32* %4}, metadata !2895), !dbg !2896
  %5 = load %struct.FuncState** %1, align 4, !dbg !2897
  %6 = icmp eq %struct.FuncState* %5, null, !dbg !2897
  br i1 %6, label %7, label %9, !dbg !2897

; <label>:7                                       ; preds = %0
  %8 = load %struct.expdesc** %3, align 4, !dbg !2899
  call void @init_exp(%struct.expdesc* %8, i32 0, i32 0), !dbg !2899
  br label %50, !dbg !2899

; <label>:9                                       ; preds = %0
  call void @llvm.dbg.declare(metadata !{i32* %v}, metadata !2900), !dbg !2902
  %10 = load %struct.FuncState** %1, align 4, !dbg !2903
  %11 = load %struct.TString** %2, align 4, !dbg !2903
  %12 = call i32 @searchvar(%struct.FuncState* %10, %struct.TString* %11), !dbg !2903
  store i32 %12, i32* %v, align 4, !dbg !2903
  %13 = load i32* %v, align 4, !dbg !2904
  %14 = icmp sge i32 %13, 0, !dbg !2904
  br i1 %14, label %15, label %24, !dbg !2904

; <label>:15                                      ; preds = %9
  %16 = load %struct.expdesc** %3, align 4, !dbg !2906
  %17 = load i32* %v, align 4, !dbg !2906
  call void @init_exp(%struct.expdesc* %16, i32 8, i32 %17), !dbg !2906
  %18 = load i32* %4, align 4, !dbg !2908
  %19 = icmp ne i32 %18, 0, !dbg !2908
  br i1 %19, label %23, label %20, !dbg !2908

; <label>:20                                      ; preds = %15
  %21 = load %struct.FuncState** %1, align 4, !dbg !2910
  %22 = load i32* %v, align 4, !dbg !2910
  call void @markupval(%struct.FuncState* %21, i32 %22), !dbg !2910
  br label %23, !dbg !2910

; <label>:23                                      ; preds = %20, %15
  br label %49, !dbg !2911

; <label>:24                                      ; preds = %9
  call void @llvm.dbg.declare(metadata !{i32* %idx}, metadata !2912), !dbg !2914
  %25 = load %struct.FuncState** %1, align 4, !dbg !2915
  %26 = load %struct.TString** %2, align 4, !dbg !2915
  %27 = call i32 @searchupvalue(%struct.FuncState* %25, %struct.TString* %26), !dbg !2915
  store i32 %27, i32* %idx, align 4, !dbg !2915
  %28 = load i32* %idx, align 4, !dbg !2916
  %29 = icmp slt i32 %28, 0, !dbg !2916
  br i1 %29, label %30, label %46, !dbg !2916

; <label>:30                                      ; preds = %24
  %31 = load %struct.FuncState** %1, align 4, !dbg !2918
  %32 = getelementptr inbounds %struct.FuncState* %31, i32 0, i32 1, !dbg !2918
  %33 = load %struct.FuncState** %32, align 4, !dbg !2918
  %34 = load %struct.TString** %2, align 4, !dbg !2918
  %35 = load %struct.expdesc** %3, align 4, !dbg !2918
  call void @singlevaraux(%struct.FuncState* %33, %struct.TString* %34, %struct.expdesc* %35, i32 0), !dbg !2918
  %36 = load %struct.expdesc** %3, align 4, !dbg !2920
  %37 = getelementptr inbounds %struct.expdesc* %36, i32 0, i32 0, !dbg !2920
  %38 = load i32* %37, align 4, !dbg !2920
  %39 = icmp eq i32 %38, 0, !dbg !2920
  br i1 %39, label %40, label %41, !dbg !2920

; <label>:40                                      ; preds = %30
  br label %50, !dbg !2922

; <label>:41                                      ; preds = %30
  %42 = load %struct.FuncState** %1, align 4, !dbg !2923
  %43 = load %struct.TString** %2, align 4, !dbg !2923
  %44 = load %struct.expdesc** %3, align 4, !dbg !2923
  %45 = call i32 @newupvalue(%struct.FuncState* %42, %struct.TString* %43, %struct.expdesc* %44), !dbg !2923
  store i32 %45, i32* %idx, align 4, !dbg !2923
  br label %46, !dbg !2924

; <label>:46                                      ; preds = %41, %24
  %47 = load %struct.expdesc** %3, align 4, !dbg !2925
  %48 = load i32* %idx, align 4, !dbg !2925
  call void @init_exp(%struct.expdesc* %47, i32 9, i32 %48), !dbg !2925
  br label %49

; <label>:49                                      ; preds = %46, %23
  br label %50

; <label>:50                                      ; preds = %40, %49, %7
  ret void, !dbg !2926
}

; Function Attrs: nounwind
define internal i32 @searchvar(%struct.FuncState* %fs, %struct.TString* %n) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.FuncState*, align 4
  %3 = alloca %struct.TString*, align 4
  %i = alloca i32, align 4
  store %struct.FuncState* %fs, %struct.FuncState** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.FuncState** %2}, metadata !2927), !dbg !2928
  store %struct.TString* %n, %struct.TString** %3, align 4
  call void @llvm.dbg.declare(metadata !{%struct.TString** %3}, metadata !2929), !dbg !2930
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !2931), !dbg !2932
  %4 = load %struct.FuncState** %2, align 4, !dbg !2933
  %5 = getelementptr inbounds %struct.FuncState* %4, i32 0, i32 11, !dbg !2933
  %6 = load i8* %5, align 1, !dbg !2933
  %7 = zext i8 %6 to i32, !dbg !2933
  %8 = sub nsw i32 %7, 1, !dbg !2933
  store i32 %8, i32* %i, align 4, !dbg !2933
  br label %9, !dbg !2933

; <label>:9                                       ; preds = %23, %0
  %10 = load i32* %i, align 4, !dbg !2935
  %11 = icmp sge i32 %10, 0, !dbg !2935
  br i1 %11, label %12, label %26, !dbg !2935

; <label>:12                                      ; preds = %9
  %13 = load %struct.TString** %3, align 4, !dbg !2938
  %14 = load %struct.FuncState** %2, align 4, !dbg !2938
  %15 = load i32* %i, align 4, !dbg !2938
  %16 = call %struct.LocVar* @getlocvar(%struct.FuncState* %14, i32 %15), !dbg !2938
  %17 = getelementptr inbounds %struct.LocVar* %16, i32 0, i32 0, !dbg !2938
  %18 = load %struct.TString** %17, align 4, !dbg !2938
  %19 = icmp eq %struct.TString* %13, %18, !dbg !2938
  br i1 %19, label %20, label %22, !dbg !2938

; <label>:20                                      ; preds = %12
  %21 = load i32* %i, align 4, !dbg !2941
  store i32 %21, i32* %1, !dbg !2941
  br label %27, !dbg !2941

; <label>:22                                      ; preds = %12
  br label %23, !dbg !2942

; <label>:23                                      ; preds = %22
  %24 = load i32* %i, align 4, !dbg !2943
  %25 = add nsw i32 %24, -1, !dbg !2943
  store i32 %25, i32* %i, align 4, !dbg !2943
  br label %9, !dbg !2943

; <label>:26                                      ; preds = %9
  store i32 -1, i32* %1, !dbg !2944
  br label %27, !dbg !2944

; <label>:27                                      ; preds = %26, %20
  %28 = load i32* %1, !dbg !2945
  ret i32 %28, !dbg !2945
}

; Function Attrs: nounwind
define internal void @markupval(%struct.FuncState* %fs, i32 %level) #0 {
  %1 = alloca %struct.FuncState*, align 4
  %2 = alloca i32, align 4
  %bl = alloca %struct.BlockCnt*, align 4
  store %struct.FuncState* %fs, %struct.FuncState** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.FuncState** %1}, metadata !2946), !dbg !2947
  store i32 %level, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !2948), !dbg !2949
  call void @llvm.dbg.declare(metadata !{%struct.BlockCnt** %bl}, metadata !2950), !dbg !2951
  %3 = load %struct.FuncState** %1, align 4, !dbg !2952
  %4 = getelementptr inbounds %struct.FuncState* %3, i32 0, i32 3, !dbg !2952
  %5 = load %struct.BlockCnt** %4, align 4, !dbg !2952
  store %struct.BlockCnt* %5, %struct.BlockCnt** %bl, align 4, !dbg !2952
  br label %6, !dbg !2953

; <label>:6                                       ; preds = %13, %0
  %7 = load %struct.BlockCnt** %bl, align 4, !dbg !2954
  %8 = getelementptr inbounds %struct.BlockCnt* %7, i32 0, i32 3, !dbg !2954
  %9 = load i8* %8, align 1, !dbg !2954
  %10 = zext i8 %9 to i32, !dbg !2954
  %11 = load i32* %2, align 4, !dbg !2954
  %12 = icmp sgt i32 %10, %11, !dbg !2954
  br i1 %12, label %13, label %17, !dbg !2954

; <label>:13                                      ; preds = %6
  %14 = load %struct.BlockCnt** %bl, align 4, !dbg !2956
  %15 = getelementptr inbounds %struct.BlockCnt* %14, i32 0, i32 0, !dbg !2956
  %16 = load %struct.BlockCnt** %15, align 4, !dbg !2956
  store %struct.BlockCnt* %16, %struct.BlockCnt** %bl, align 4, !dbg !2956
  br label %6, !dbg !2956

; <label>:17                                      ; preds = %6
  %18 = load %struct.BlockCnt** %bl, align 4, !dbg !2957
  %19 = getelementptr inbounds %struct.BlockCnt* %18, i32 0, i32 4, !dbg !2957
  store i8 1, i8* %19, align 1, !dbg !2957
  ret void, !dbg !2958
}

; Function Attrs: nounwind
define internal i32 @searchupvalue(%struct.FuncState* %fs, %struct.TString* %name) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.FuncState*, align 4
  %3 = alloca %struct.TString*, align 4
  %i = alloca i32, align 4
  %up = alloca %struct.Upvaldesc*, align 4
  store %struct.FuncState* %fs, %struct.FuncState** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.FuncState** %2}, metadata !2959), !dbg !2960
  store %struct.TString* %name, %struct.TString** %3, align 4
  call void @llvm.dbg.declare(metadata !{%struct.TString** %3}, metadata !2961), !dbg !2962
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !2963), !dbg !2964
  call void @llvm.dbg.declare(metadata !{%struct.Upvaldesc** %up}, metadata !2965), !dbg !2966
  %4 = load %struct.FuncState** %2, align 4, !dbg !2967
  %5 = getelementptr inbounds %struct.FuncState* %4, i32 0, i32 0, !dbg !2967
  %6 = load %struct.Proto** %5, align 4, !dbg !2967
  %7 = getelementptr inbounds %struct.Proto* %6, i32 0, i32 19, !dbg !2967
  %8 = load %struct.Upvaldesc** %7, align 4, !dbg !2967
  store %struct.Upvaldesc* %8, %struct.Upvaldesc** %up, align 4, !dbg !2967
  store i32 0, i32* %i, align 4, !dbg !2968
  br label %9, !dbg !2968

; <label>:9                                       ; preds = %27, %0
  %10 = load i32* %i, align 4, !dbg !2970
  %11 = load %struct.FuncState** %2, align 4, !dbg !2970
  %12 = getelementptr inbounds %struct.FuncState* %11, i32 0, i32 12, !dbg !2970
  %13 = load i8* %12, align 1, !dbg !2970
  %14 = zext i8 %13 to i32, !dbg !2970
  %15 = icmp slt i32 %10, %14, !dbg !2970
  br i1 %15, label %16, label %30, !dbg !2970

; <label>:16                                      ; preds = %9
  %17 = load i32* %i, align 4, !dbg !2973
  %18 = load %struct.Upvaldesc** %up, align 4, !dbg !2973
  %19 = getelementptr inbounds %struct.Upvaldesc* %18, i32 %17, !dbg !2973
  %20 = getelementptr inbounds %struct.Upvaldesc* %19, i32 0, i32 0, !dbg !2973
  %21 = load %struct.TString** %20, align 4, !dbg !2973
  %22 = load %struct.TString** %3, align 4, !dbg !2973
  %23 = icmp eq %struct.TString* %21, %22, !dbg !2973
  br i1 %23, label %24, label %26, !dbg !2973

; <label>:24                                      ; preds = %16
  %25 = load i32* %i, align 4, !dbg !2976
  store i32 %25, i32* %1, !dbg !2976
  br label %31, !dbg !2976

; <label>:26                                      ; preds = %16
  br label %27, !dbg !2978

; <label>:27                                      ; preds = %26
  %28 = load i32* %i, align 4, !dbg !2979
  %29 = add nsw i32 %28, 1, !dbg !2979
  store i32 %29, i32* %i, align 4, !dbg !2979
  br label %9, !dbg !2979

; <label>:30                                      ; preds = %9
  store i32 -1, i32* %1, !dbg !2980
  br label %31, !dbg !2980

; <label>:31                                      ; preds = %30, %24
  %32 = load i32* %1, !dbg !2981
  ret i32 %32, !dbg !2981
}

declare hidden i32 @luaK_exp2anyreg(%struct.FuncState*, %struct.expdesc*) #2

; Function Attrs: nounwind
define internal void @checkrepeated(%struct.FuncState* %fs, %struct.Labellist* %ll, %struct.TString* %label) #0 {
  %1 = alloca %struct.FuncState*, align 4
  %2 = alloca %struct.Labellist*, align 4
  %3 = alloca %struct.TString*, align 4
  %i = alloca i32, align 4
  %msg = alloca i8*, align 4
  store %struct.FuncState* %fs, %struct.FuncState** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.FuncState** %1}, metadata !2982), !dbg !2983
  store %struct.Labellist* %ll, %struct.Labellist** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.Labellist** %2}, metadata !2984), !dbg !2985
  store %struct.TString* %label, %struct.TString** %3, align 4
  call void @llvm.dbg.declare(metadata !{%struct.TString** %3}, metadata !2986), !dbg !2987
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !2988), !dbg !2989
  %4 = load %struct.FuncState** %1, align 4, !dbg !2990
  %5 = getelementptr inbounds %struct.FuncState* %4, i32 0, i32 3, !dbg !2990
  %6 = load %struct.BlockCnt** %5, align 4, !dbg !2990
  %7 = getelementptr inbounds %struct.BlockCnt* %6, i32 0, i32 1, !dbg !2990
  %8 = load i32* %7, align 4, !dbg !2990
  store i32 %8, i32* %i, align 4, !dbg !2990
  br label %9, !dbg !2990

; <label>:9                                       ; preds = %47, %0
  %10 = load i32* %i, align 4, !dbg !2992
  %11 = load %struct.Labellist** %2, align 4, !dbg !2992
  %12 = getelementptr inbounds %struct.Labellist* %11, i32 0, i32 1, !dbg !2992
  %13 = load i32* %12, align 4, !dbg !2992
  %14 = icmp slt i32 %10, %13, !dbg !2992
  br i1 %14, label %15, label %50, !dbg !2992

; <label>:15                                      ; preds = %9
  %16 = load %struct.TString** %3, align 4, !dbg !2995
  %17 = load i32* %i, align 4, !dbg !2995
  %18 = load %struct.Labellist** %2, align 4, !dbg !2995
  %19 = getelementptr inbounds %struct.Labellist* %18, i32 0, i32 0, !dbg !2995
  %20 = load %struct.Labeldesc** %19, align 4, !dbg !2995
  %21 = getelementptr inbounds %struct.Labeldesc* %20, i32 %17, !dbg !2995
  %22 = getelementptr inbounds %struct.Labeldesc* %21, i32 0, i32 0, !dbg !2995
  %23 = load %struct.TString** %22, align 4, !dbg !2995
  %24 = icmp eq %struct.TString* %16, %23, !dbg !2995
  br i1 %24, label %25, label %46, !dbg !2995

; <label>:25                                      ; preds = %15
  call void @llvm.dbg.declare(metadata !{i8** %msg}, metadata !2998), !dbg !3000
  %26 = load %struct.FuncState** %1, align 4, !dbg !3001
  %27 = getelementptr inbounds %struct.FuncState* %26, i32 0, i32 2, !dbg !3001
  %28 = load %struct.LexState** %27, align 4, !dbg !3001
  %29 = getelementptr inbounds %struct.LexState* %28, i32 0, i32 6, !dbg !3001
  %30 = load %struct.lua_State** %29, align 4, !dbg !3001
  %31 = load %struct.TString** %3, align 4, !dbg !3001
  %32 = bitcast %struct.TString* %31 to i8*, !dbg !3001
  %33 = getelementptr inbounds i8* %32, i32 16, !dbg !3001
  %34 = load i32* %i, align 4, !dbg !3001
  %35 = load %struct.Labellist** %2, align 4, !dbg !3001
  %36 = getelementptr inbounds %struct.Labellist* %35, i32 0, i32 0, !dbg !3001
  %37 = load %struct.Labeldesc** %36, align 4, !dbg !3001
  %38 = getelementptr inbounds %struct.Labeldesc* %37, i32 %34, !dbg !3001
  %39 = getelementptr inbounds %struct.Labeldesc* %38, i32 0, i32 2, !dbg !3001
  %40 = load i32* %39, align 4, !dbg !3001
  %41 = call i8* (%struct.lua_State*, i8*, ...)* @luaO_pushfstring(%struct.lua_State* %30, i8* getelementptr inbounds ([38 x i8]* @.str19, i32 0, i32 0), i8* %33, i32 %40), !dbg !3001
  store i8* %41, i8** %msg, align 4, !dbg !3001
  %42 = load %struct.FuncState** %1, align 4, !dbg !3002
  %43 = getelementptr inbounds %struct.FuncState* %42, i32 0, i32 2, !dbg !3002
  %44 = load %struct.LexState** %43, align 4, !dbg !3002
  %45 = load i8** %msg, align 4, !dbg !3002
  call void @semerror(%struct.LexState* %44, i8* %45) #6, !dbg !3002
  unreachable, !dbg !3002

; <label>:46                                      ; preds = %15
  br label %47, !dbg !3003

; <label>:47                                      ; preds = %46
  %48 = load i32* %i, align 4, !dbg !3004
  %49 = add nsw i32 %48, 1, !dbg !3004
  store i32 %49, i32* %i, align 4, !dbg !3004
  br label %9, !dbg !3004

; <label>:50                                      ; preds = %9
  ret void, !dbg !3005
}

declare hidden i32 @luaK_getlabel(%struct.FuncState*) #2

; Function Attrs: nounwind
define internal void @skipnoopstat(%struct.LexState* %ls) #0 {
  %1 = alloca %struct.LexState*, align 4
  store %struct.LexState* %ls, %struct.LexState** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.LexState** %1}, metadata !3006), !dbg !3007
  br label %2, !dbg !3008

; <label>:2                                       ; preds = %16, %0
  %3 = load %struct.LexState** %1, align 4, !dbg !3009
  %4 = getelementptr inbounds %struct.LexState* %3, i32 0, i32 3, !dbg !3009
  %5 = getelementptr inbounds %struct.Token* %4, i32 0, i32 0, !dbg !3009
  %6 = load i32* %5, align 4, !dbg !3009
  %7 = icmp eq i32 %6, 59, !dbg !3009
  br i1 %7, label %14, label %8, !dbg !3009

; <label>:8                                       ; preds = %2
  %9 = load %struct.LexState** %1, align 4, !dbg !3011
  %10 = getelementptr inbounds %struct.LexState* %9, i32 0, i32 3, !dbg !3011
  %11 = getelementptr inbounds %struct.Token* %10, i32 0, i32 0, !dbg !3011
  %12 = load i32* %11, align 4, !dbg !3011
  %13 = icmp eq i32 %12, 288, !dbg !3011
  br label %14, !dbg !3011

; <label>:14                                      ; preds = %8, %2
  %15 = phi i1 [ true, %2 ], [ %13, %8 ]
  br i1 %15, label %16, label %18, !dbg !3013

; <label>:16                                      ; preds = %14
  %17 = load %struct.LexState** %1, align 4, !dbg !3016
  call void @statement(%struct.LexState* %17), !dbg !3016
  br label %2, !dbg !3016

; <label>:18                                      ; preds = %14
  ret void, !dbg !3017
}

; Function Attrs: nounwind
define internal i32 @funcname(%struct.LexState* %ls, %struct.expdesc* %v) #0 {
  %1 = alloca %struct.LexState*, align 4
  %2 = alloca %struct.expdesc*, align 4
  %ismethod = alloca i32, align 4
  store %struct.LexState* %ls, %struct.LexState** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.LexState** %1}, metadata !3018), !dbg !3019
  store %struct.expdesc* %v, %struct.expdesc** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.expdesc** %2}, metadata !3020), !dbg !3021
  call void @llvm.dbg.declare(metadata !{i32* %ismethod}, metadata !3022), !dbg !3023
  store i32 0, i32* %ismethod, align 4, !dbg !3024
  %3 = load %struct.LexState** %1, align 4, !dbg !3025
  %4 = load %struct.expdesc** %2, align 4, !dbg !3025
  call void @singlevar(%struct.LexState* %3, %struct.expdesc* %4), !dbg !3025
  br label %5, !dbg !3026

; <label>:5                                       ; preds = %11, %0
  %6 = load %struct.LexState** %1, align 4, !dbg !3027
  %7 = getelementptr inbounds %struct.LexState* %6, i32 0, i32 3, !dbg !3027
  %8 = getelementptr inbounds %struct.Token* %7, i32 0, i32 0, !dbg !3027
  %9 = load i32* %8, align 4, !dbg !3027
  %10 = icmp eq i32 %9, 46, !dbg !3027
  br i1 %10, label %11, label %14, !dbg !3027

; <label>:11                                      ; preds = %5
  %12 = load %struct.LexState** %1, align 4, !dbg !3029
  %13 = load %struct.expdesc** %2, align 4, !dbg !3029
  call void @fieldsel(%struct.LexState* %12, %struct.expdesc* %13), !dbg !3029
  br label %5, !dbg !3029

; <label>:14                                      ; preds = %5
  %15 = load %struct.LexState** %1, align 4, !dbg !3030
  %16 = getelementptr inbounds %struct.LexState* %15, i32 0, i32 3, !dbg !3030
  %17 = getelementptr inbounds %struct.Token* %16, i32 0, i32 0, !dbg !3030
  %18 = load i32* %17, align 4, !dbg !3030
  %19 = icmp eq i32 %18, 58, !dbg !3030
  br i1 %19, label %20, label %23, !dbg !3030

; <label>:20                                      ; preds = %14
  store i32 1, i32* %ismethod, align 4, !dbg !3032
  %21 = load %struct.LexState** %1, align 4, !dbg !3034
  %22 = load %struct.expdesc** %2, align 4, !dbg !3034
  call void @fieldsel(%struct.LexState* %21, %struct.expdesc* %22), !dbg !3034
  br label %23, !dbg !3035

; <label>:23                                      ; preds = %20, %14
  %24 = load i32* %ismethod, align 4, !dbg !3036
  ret i32 %24, !dbg !3036
}

; Function Attrs: nounwind
define internal void @enterblock(%struct.FuncState* %fs, %struct.BlockCnt* %bl, i8 zeroext %isloop) #0 {
  %1 = alloca %struct.FuncState*, align 4
  %2 = alloca %struct.BlockCnt*, align 4
  %3 = alloca i8, align 1
  store %struct.FuncState* %fs, %struct.FuncState** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.FuncState** %1}, metadata !3037), !dbg !3038
  store %struct.BlockCnt* %bl, %struct.BlockCnt** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.BlockCnt** %2}, metadata !3039), !dbg !3040
  store i8 %isloop, i8* %3, align 1
  call void @llvm.dbg.declare(metadata !{i8* %3}, metadata !3041), !dbg !3042
  %4 = load i8* %3, align 1, !dbg !3043
  %5 = load %struct.BlockCnt** %2, align 4, !dbg !3043
  %6 = getelementptr inbounds %struct.BlockCnt* %5, i32 0, i32 5, !dbg !3043
  store i8 %4, i8* %6, align 1, !dbg !3043
  %7 = load %struct.FuncState** %1, align 4, !dbg !3044
  %8 = getelementptr inbounds %struct.FuncState* %7, i32 0, i32 11, !dbg !3044
  %9 = load i8* %8, align 1, !dbg !3044
  %10 = load %struct.BlockCnt** %2, align 4, !dbg !3044
  %11 = getelementptr inbounds %struct.BlockCnt* %10, i32 0, i32 3, !dbg !3044
  store i8 %9, i8* %11, align 1, !dbg !3044
  %12 = load %struct.FuncState** %1, align 4, !dbg !3045
  %13 = getelementptr inbounds %struct.FuncState* %12, i32 0, i32 2, !dbg !3045
  %14 = load %struct.LexState** %13, align 4, !dbg !3045
  %15 = getelementptr inbounds %struct.LexState* %14, i32 0, i32 10, !dbg !3045
  %16 = load %struct.Dyndata** %15, align 4, !dbg !3045
  %17 = getelementptr inbounds %struct.Dyndata* %16, i32 0, i32 2, !dbg !3045
  %18 = getelementptr inbounds %struct.Labellist* %17, i32 0, i32 1, !dbg !3045
  %19 = load i32* %18, align 4, !dbg !3045
  %20 = load %struct.BlockCnt** %2, align 4, !dbg !3045
  %21 = getelementptr inbounds %struct.BlockCnt* %20, i32 0, i32 1, !dbg !3045
  store i32 %19, i32* %21, align 4, !dbg !3045
  %22 = load %struct.FuncState** %1, align 4, !dbg !3046
  %23 = getelementptr inbounds %struct.FuncState* %22, i32 0, i32 2, !dbg !3046
  %24 = load %struct.LexState** %23, align 4, !dbg !3046
  %25 = getelementptr inbounds %struct.LexState* %24, i32 0, i32 10, !dbg !3046
  %26 = load %struct.Dyndata** %25, align 4, !dbg !3046
  %27 = getelementptr inbounds %struct.Dyndata* %26, i32 0, i32 1, !dbg !3046
  %28 = getelementptr inbounds %struct.Labellist* %27, i32 0, i32 1, !dbg !3046
  %29 = load i32* %28, align 4, !dbg !3046
  %30 = load %struct.BlockCnt** %2, align 4, !dbg !3046
  %31 = getelementptr inbounds %struct.BlockCnt* %30, i32 0, i32 2, !dbg !3046
  store i32 %29, i32* %31, align 4, !dbg !3046
  %32 = load %struct.BlockCnt** %2, align 4, !dbg !3047
  %33 = getelementptr inbounds %struct.BlockCnt* %32, i32 0, i32 4, !dbg !3047
  store i8 0, i8* %33, align 1, !dbg !3047
  %34 = load %struct.FuncState** %1, align 4, !dbg !3048
  %35 = getelementptr inbounds %struct.FuncState* %34, i32 0, i32 3, !dbg !3048
  %36 = load %struct.BlockCnt** %35, align 4, !dbg !3048
  %37 = load %struct.BlockCnt** %2, align 4, !dbg !3048
  %38 = getelementptr inbounds %struct.BlockCnt* %37, i32 0, i32 0, !dbg !3048
  store %struct.BlockCnt* %36, %struct.BlockCnt** %38, align 4, !dbg !3048
  %39 = load %struct.BlockCnt** %2, align 4, !dbg !3049
  %40 = load %struct.FuncState** %1, align 4, !dbg !3049
  %41 = getelementptr inbounds %struct.FuncState* %40, i32 0, i32 3, !dbg !3049
  store %struct.BlockCnt* %39, %struct.BlockCnt** %41, align 4, !dbg !3049
  ret void, !dbg !3050
}

; Function Attrs: nounwind
define internal i32 @cond(%struct.LexState* %ls) #0 {
  %1 = alloca %struct.LexState*, align 4
  %v = alloca %struct.expdesc, align 8
  store %struct.LexState* %ls, %struct.LexState** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.LexState** %1}, metadata !3051), !dbg !3052
  call void @llvm.dbg.declare(metadata !{%struct.expdesc* %v}, metadata !3053), !dbg !3054
  %2 = load %struct.LexState** %1, align 4, !dbg !3055
  call void @expr(%struct.LexState* %2, %struct.expdesc* %v), !dbg !3055
  %3 = getelementptr inbounds %struct.expdesc* %v, i32 0, i32 0, !dbg !3056
  %4 = load i32* %3, align 4, !dbg !3056
  %5 = icmp eq i32 %4, 1, !dbg !3056
  br i1 %5, label %6, label %8, !dbg !3056

; <label>:6                                       ; preds = %0
  %7 = getelementptr inbounds %struct.expdesc* %v, i32 0, i32 0, !dbg !3058
  store i32 3, i32* %7, align 4, !dbg !3058
  br label %8, !dbg !3058

; <label>:8                                       ; preds = %6, %0
  %9 = load %struct.LexState** %1, align 4, !dbg !3060
  %10 = getelementptr inbounds %struct.LexState* %9, i32 0, i32 5, !dbg !3060
  %11 = load %struct.FuncState** %10, align 4, !dbg !3060
  call void @luaK_goiftrue(%struct.FuncState* %11, %struct.expdesc* %v), !dbg !3060
  %12 = getelementptr inbounds %struct.expdesc* %v, i32 0, i32 3, !dbg !3061
  %13 = load i32* %12, align 4, !dbg !3061
  ret i32 %13, !dbg !3061
}

declare hidden void @luaK_goiftrue(%struct.FuncState*, %struct.expdesc*) #2

; Function Attrs: nounwind
define internal void @fornum(%struct.LexState* %ls, %struct.TString* %varname, i32 %line) #0 {
  %1 = alloca %struct.LexState*, align 4
  %2 = alloca %struct.TString*, align 4
  %3 = alloca i32, align 4
  %fs = alloca %struct.FuncState*, align 4
  %base = alloca i32, align 4
  store %struct.LexState* %ls, %struct.LexState** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.LexState** %1}, metadata !3062), !dbg !3063
  store %struct.TString* %varname, %struct.TString** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.TString** %2}, metadata !3064), !dbg !3065
  store i32 %line, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !3066), !dbg !3067
  call void @llvm.dbg.declare(metadata !{%struct.FuncState** %fs}, metadata !3068), !dbg !3069
  %4 = load %struct.LexState** %1, align 4, !dbg !3070
  %5 = getelementptr inbounds %struct.LexState* %4, i32 0, i32 5, !dbg !3070
  %6 = load %struct.FuncState** %5, align 4, !dbg !3070
  store %struct.FuncState* %6, %struct.FuncState** %fs, align 4, !dbg !3070
  call void @llvm.dbg.declare(metadata !{i32* %base}, metadata !3071), !dbg !3072
  %7 = load %struct.FuncState** %fs, align 4, !dbg !3073
  %8 = getelementptr inbounds %struct.FuncState* %7, i32 0, i32 13, !dbg !3073
  %9 = load i8* %8, align 1, !dbg !3073
  %10 = zext i8 %9 to i32, !dbg !3073
  store i32 %10, i32* %base, align 4, !dbg !3073
  %11 = load %struct.LexState** %1, align 4, !dbg !3074
  call void @new_localvarliteral_(%struct.LexState* %11, i8* getelementptr inbounds ([12 x i8]* @.str24, i32 0, i32 0), i32 11), !dbg !3074
  %12 = load %struct.LexState** %1, align 4, !dbg !3075
  call void @new_localvarliteral_(%struct.LexState* %12, i8* getelementptr inbounds ([12 x i8]* @.str25, i32 0, i32 0), i32 11), !dbg !3075
  %13 = load %struct.LexState** %1, align 4, !dbg !3076
  call void @new_localvarliteral_(%struct.LexState* %13, i8* getelementptr inbounds ([11 x i8]* @.str26, i32 0, i32 0), i32 10), !dbg !3076
  %14 = load %struct.LexState** %1, align 4, !dbg !3077
  %15 = load %struct.TString** %2, align 4, !dbg !3077
  call void @new_localvar(%struct.LexState* %14, %struct.TString* %15), !dbg !3077
  %16 = load %struct.LexState** %1, align 4, !dbg !3078
  call void @checknext(%struct.LexState* %16, i32 61), !dbg !3078
  %17 = load %struct.LexState** %1, align 4, !dbg !3079
  %18 = call i32 @exp1(%struct.LexState* %17), !dbg !3079
  %19 = load %struct.LexState** %1, align 4, !dbg !3080
  call void @checknext(%struct.LexState* %19, i32 44), !dbg !3080
  %20 = load %struct.LexState** %1, align 4, !dbg !3081
  %21 = call i32 @exp1(%struct.LexState* %20), !dbg !3081
  %22 = load %struct.LexState** %1, align 4, !dbg !3082
  %23 = call i32 @testnext(%struct.LexState* %22, i32 44), !dbg !3082
  %24 = icmp ne i32 %23, 0, !dbg !3082
  br i1 %24, label %25, label %28, !dbg !3082

; <label>:25                                      ; preds = %0
  %26 = load %struct.LexState** %1, align 4, !dbg !3084
  %27 = call i32 @exp1(%struct.LexState* %26), !dbg !3084
  br label %38, !dbg !3084

; <label>:28                                      ; preds = %0
  %29 = load %struct.FuncState** %fs, align 4, !dbg !3085
  %30 = load %struct.FuncState** %fs, align 4, !dbg !3085
  %31 = getelementptr inbounds %struct.FuncState* %30, i32 0, i32 13, !dbg !3085
  %32 = load i8* %31, align 1, !dbg !3085
  %33 = zext i8 %32 to i32, !dbg !3085
  %34 = load %struct.FuncState** %fs, align 4, !dbg !3087
  %35 = call i32 @luaK_intK(%struct.FuncState* %34, i64 1), !dbg !3087
  %36 = call i32 @luaK_codek(%struct.FuncState* %29, i32 %33, i32 %35), !dbg !3085
  %37 = load %struct.FuncState** %fs, align 4, !dbg !3088
  call void @luaK_reserveregs(%struct.FuncState* %37, i32 1), !dbg !3088
  br label %38

; <label>:38                                      ; preds = %28, %25
  %39 = load %struct.LexState** %1, align 4, !dbg !3089
  %40 = load i32* %base, align 4, !dbg !3089
  %41 = load i32* %3, align 4, !dbg !3089
  call void @forbody(%struct.LexState* %39, i32 %40, i32 %41, i32 1, i32 1), !dbg !3089
  ret void, !dbg !3090
}

; Function Attrs: nounwind
define internal void @forlist(%struct.LexState* %ls, %struct.TString* %indexname) #0 {
  %1 = alloca %struct.LexState*, align 4
  %2 = alloca %struct.TString*, align 4
  %fs = alloca %struct.FuncState*, align 4
  %e = alloca %struct.expdesc, align 8
  %nvars = alloca i32, align 4
  %line = alloca i32, align 4
  %base = alloca i32, align 4
  store %struct.LexState* %ls, %struct.LexState** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.LexState** %1}, metadata !3091), !dbg !3092
  store %struct.TString* %indexname, %struct.TString** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.TString** %2}, metadata !3093), !dbg !3094
  call void @llvm.dbg.declare(metadata !{%struct.FuncState** %fs}, metadata !3095), !dbg !3096
  %3 = load %struct.LexState** %1, align 4, !dbg !3097
  %4 = getelementptr inbounds %struct.LexState* %3, i32 0, i32 5, !dbg !3097
  %5 = load %struct.FuncState** %4, align 4, !dbg !3097
  store %struct.FuncState* %5, %struct.FuncState** %fs, align 4, !dbg !3097
  call void @llvm.dbg.declare(metadata !{%struct.expdesc* %e}, metadata !3098), !dbg !3099
  call void @llvm.dbg.declare(metadata !{i32* %nvars}, metadata !3100), !dbg !3101
  store i32 4, i32* %nvars, align 4, !dbg !3102
  call void @llvm.dbg.declare(metadata !{i32* %line}, metadata !3103), !dbg !3104
  call void @llvm.dbg.declare(metadata !{i32* %base}, metadata !3105), !dbg !3106
  %6 = load %struct.FuncState** %fs, align 4, !dbg !3107
  %7 = getelementptr inbounds %struct.FuncState* %6, i32 0, i32 13, !dbg !3107
  %8 = load i8* %7, align 1, !dbg !3107
  %9 = zext i8 %8 to i32, !dbg !3107
  store i32 %9, i32* %base, align 4, !dbg !3107
  %10 = load %struct.LexState** %1, align 4, !dbg !3108
  call void @new_localvarliteral_(%struct.LexState* %10, i8* getelementptr inbounds ([16 x i8]* @.str21, i32 0, i32 0), i32 15), !dbg !3108
  %11 = load %struct.LexState** %1, align 4, !dbg !3109
  call void @new_localvarliteral_(%struct.LexState* %11, i8* getelementptr inbounds ([12 x i8]* @.str22, i32 0, i32 0), i32 11), !dbg !3109
  %12 = load %struct.LexState** %1, align 4, !dbg !3110
  call void @new_localvarliteral_(%struct.LexState* %12, i8* getelementptr inbounds ([14 x i8]* @.str23, i32 0, i32 0), i32 13), !dbg !3110
  %13 = load %struct.LexState** %1, align 4, !dbg !3111
  %14 = load %struct.TString** %2, align 4, !dbg !3111
  call void @new_localvar(%struct.LexState* %13, %struct.TString* %14), !dbg !3111
  br label %15, !dbg !3112

; <label>:15                                      ; preds = %19, %0
  %16 = load %struct.LexState** %1, align 4, !dbg !3113
  %17 = call i32 @testnext(%struct.LexState* %16, i32 44), !dbg !3113
  %18 = icmp ne i32 %17, 0, !dbg !3113
  br i1 %18, label %19, label %25, !dbg !3113

; <label>:19                                      ; preds = %15
  %20 = load %struct.LexState** %1, align 4, !dbg !3115
  %21 = load %struct.LexState** %1, align 4, !dbg !3117
  %22 = call %struct.TString* @str_checkname(%struct.LexState* %21), !dbg !3117
  call void @new_localvar(%struct.LexState* %20, %struct.TString* %22), !dbg !3115
  %23 = load i32* %nvars, align 4, !dbg !3118
  %24 = add nsw i32 %23, 1, !dbg !3118
  store i32 %24, i32* %nvars, align 4, !dbg !3118
  br label %15, !dbg !3119

; <label>:25                                      ; preds = %15
  %26 = load %struct.LexState** %1, align 4, !dbg !3120
  call void @checknext(%struct.LexState* %26, i32 268), !dbg !3120
  %27 = load %struct.LexState** %1, align 4, !dbg !3121
  %28 = getelementptr inbounds %struct.LexState* %27, i32 0, i32 1, !dbg !3121
  %29 = load i32* %28, align 4, !dbg !3121
  store i32 %29, i32* %line, align 4, !dbg !3121
  %30 = load %struct.LexState** %1, align 4, !dbg !3122
  %31 = load %struct.LexState** %1, align 4, !dbg !3123
  %32 = call i32 @explist(%struct.LexState* %31, %struct.expdesc* %e), !dbg !3123
  call void @adjust_assign(%struct.LexState* %30, i32 3, i32 %32, %struct.expdesc* %e), !dbg !3122
  %33 = load %struct.FuncState** %fs, align 4, !dbg !3124
  call void @luaK_checkstack(%struct.FuncState* %33, i32 3), !dbg !3124
  %34 = load %struct.LexState** %1, align 4, !dbg !3125
  %35 = load i32* %base, align 4, !dbg !3125
  %36 = load i32* %line, align 4, !dbg !3125
  %37 = load i32* %nvars, align 4, !dbg !3125
  %38 = sub nsw i32 %37, 3, !dbg !3125
  call void @forbody(%struct.LexState* %34, i32 %35, i32 %36, i32 %38, i32 0), !dbg !3125
  ret void, !dbg !3126
}

declare hidden void @luaK_checkstack(%struct.FuncState*, i32) #2

; Function Attrs: nounwind
define internal void @forbody(%struct.LexState* %ls, i32 %base, i32 %line, i32 %nvars, i32 %isnum) #0 {
  %1 = alloca %struct.LexState*, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %bl = alloca %struct.BlockCnt, align 4
  %fs = alloca %struct.FuncState*, align 4
  %prep = alloca i32, align 4
  %endfor = alloca i32, align 4
  store %struct.LexState* %ls, %struct.LexState** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.LexState** %1}, metadata !3127), !dbg !3128
  store i32 %base, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !3129), !dbg !3130
  store i32 %line, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !3131), !dbg !3132
  store i32 %nvars, i32* %4, align 4
  call void @llvm.dbg.declare(metadata !{i32* %4}, metadata !3133), !dbg !3134
  store i32 %isnum, i32* %5, align 4
  call void @llvm.dbg.declare(metadata !{i32* %5}, metadata !3135), !dbg !3136
  call void @llvm.dbg.declare(metadata !{%struct.BlockCnt* %bl}, metadata !3137), !dbg !3138
  call void @llvm.dbg.declare(metadata !{%struct.FuncState** %fs}, metadata !3139), !dbg !3140
  %6 = load %struct.LexState** %1, align 4, !dbg !3141
  %7 = getelementptr inbounds %struct.LexState* %6, i32 0, i32 5, !dbg !3141
  %8 = load %struct.FuncState** %7, align 4, !dbg !3141
  store %struct.FuncState* %8, %struct.FuncState** %fs, align 4, !dbg !3141
  call void @llvm.dbg.declare(metadata !{i32* %prep}, metadata !3142), !dbg !3143
  call void @llvm.dbg.declare(metadata !{i32* %endfor}, metadata !3144), !dbg !3145
  %9 = load %struct.LexState** %1, align 4, !dbg !3146
  call void @adjustlocalvars(%struct.LexState* %9, i32 3), !dbg !3146
  %10 = load %struct.LexState** %1, align 4, !dbg !3147
  call void @checknext(%struct.LexState* %10, i32 259), !dbg !3147
  %11 = load i32* %5, align 4, !dbg !3148
  %12 = icmp ne i32 %11, 0, !dbg !3148
  br i1 %12, label %13, label %17, !dbg !3148

; <label>:13                                      ; preds = %0
  %14 = load %struct.FuncState** %fs, align 4, !dbg !3149
  %15 = load i32* %2, align 4, !dbg !3149
  %16 = call i32 @luaK_codeABx(%struct.FuncState* %14, i32 40, i32 %15, i32 131070), !dbg !3149
  br label %20, !dbg !3149

; <label>:17                                      ; preds = %0
  %18 = load %struct.FuncState** %fs, align 4, !dbg !3151
  %19 = call i32 @luaK_jump(%struct.FuncState* %18), !dbg !3151
  br label %20, !dbg !3151

; <label>:20                                      ; preds = %17, %13
  %21 = phi i32 [ %16, %13 ], [ %19, %17 ], !dbg !3153
  store i32 %21, i32* %prep, align 4, !dbg !3154
  %22 = load %struct.FuncState** %fs, align 4, !dbg !3157
  call void @enterblock(%struct.FuncState* %22, %struct.BlockCnt* %bl, i8 zeroext 0), !dbg !3157
  %23 = load %struct.LexState** %1, align 4, !dbg !3158
  %24 = load i32* %4, align 4, !dbg !3158
  call void @adjustlocalvars(%struct.LexState* %23, i32 %24), !dbg !3158
  %25 = load %struct.FuncState** %fs, align 4, !dbg !3159
  %26 = load i32* %4, align 4, !dbg !3159
  call void @luaK_reserveregs(%struct.FuncState* %25, i32 %26), !dbg !3159
  %27 = load %struct.LexState** %1, align 4, !dbg !3160
  call void @block(%struct.LexState* %27), !dbg !3160
  %28 = load %struct.FuncState** %fs, align 4, !dbg !3161
  call void @leaveblock(%struct.FuncState* %28), !dbg !3161
  %29 = load %struct.FuncState** %fs, align 4, !dbg !3162
  %30 = load i32* %prep, align 4, !dbg !3162
  call void @luaK_patchtohere(%struct.FuncState* %29, i32 %30), !dbg !3162
  %31 = load i32* %5, align 4, !dbg !3163
  %32 = icmp ne i32 %31, 0, !dbg !3163
  br i1 %32, label %33, label %37, !dbg !3163

; <label>:33                                      ; preds = %20
  %34 = load %struct.FuncState** %fs, align 4, !dbg !3165
  %35 = load i32* %2, align 4, !dbg !3165
  %36 = call i32 @luaK_codeABx(%struct.FuncState* %34, i32 39, i32 %35, i32 131070), !dbg !3165
  store i32 %36, i32* %endfor, align 4, !dbg !3165
  br label %48, !dbg !3165

; <label>:37                                      ; preds = %20
  %38 = load %struct.FuncState** %fs, align 4, !dbg !3166
  %39 = load i32* %2, align 4, !dbg !3166
  %40 = load i32* %4, align 4, !dbg !3166
  %41 = call i32 @luaK_codeABC(%struct.FuncState* %38, i32 41, i32 %39, i32 0, i32 %40), !dbg !3166
  %42 = load %struct.FuncState** %fs, align 4, !dbg !3168
  %43 = load i32* %3, align 4, !dbg !3168
  call void @luaK_fixline(%struct.FuncState* %42, i32 %43), !dbg !3168
  %44 = load %struct.FuncState** %fs, align 4, !dbg !3169
  %45 = load i32* %2, align 4, !dbg !3169
  %46 = add nsw i32 %45, 2, !dbg !3169
  %47 = call i32 @luaK_codeABx(%struct.FuncState* %44, i32 42, i32 %46, i32 131070), !dbg !3169
  store i32 %47, i32* %endfor, align 4, !dbg !3169
  br label %48

; <label>:48                                      ; preds = %37, %33
  %49 = load %struct.FuncState** %fs, align 4, !dbg !3170
  %50 = load i32* %endfor, align 4, !dbg !3170
  %51 = load i32* %prep, align 4, !dbg !3170
  %52 = add nsw i32 %51, 1, !dbg !3170
  call void @luaK_patchlist(%struct.FuncState* %49, i32 %50, i32 %52), !dbg !3170
  %53 = load %struct.FuncState** %fs, align 4, !dbg !3171
  %54 = load i32* %3, align 4, !dbg !3171
  call void @luaK_fixline(%struct.FuncState* %53, i32 %54), !dbg !3171
  ret void, !dbg !3172
}

; Function Attrs: nounwind
define internal i32 @exp1(%struct.LexState* %ls) #0 {
  %1 = alloca %struct.LexState*, align 4
  %e = alloca %struct.expdesc, align 8
  %reg = alloca i32, align 4
  store %struct.LexState* %ls, %struct.LexState** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.LexState** %1}, metadata !3173), !dbg !3174
  call void @llvm.dbg.declare(metadata !{%struct.expdesc* %e}, metadata !3175), !dbg !3176
  call void @llvm.dbg.declare(metadata !{i32* %reg}, metadata !3177), !dbg !3178
  %2 = load %struct.LexState** %1, align 4, !dbg !3179
  call void @expr(%struct.LexState* %2, %struct.expdesc* %e), !dbg !3179
  %3 = load %struct.LexState** %1, align 4, !dbg !3180
  %4 = getelementptr inbounds %struct.LexState* %3, i32 0, i32 5, !dbg !3180
  %5 = load %struct.FuncState** %4, align 4, !dbg !3180
  call void @luaK_exp2nextreg(%struct.FuncState* %5, %struct.expdesc* %e), !dbg !3180
  %6 = getelementptr inbounds %struct.expdesc* %e, i32 0, i32 1, !dbg !3181
  %7 = bitcast %union.anon.6* %6 to i32*, !dbg !3181
  %8 = load i32* %7, align 4, !dbg !3181
  store i32 %8, i32* %reg, align 4, !dbg !3181
  %9 = load i32* %reg, align 4, !dbg !3182
  ret i32 %9, !dbg !3182
}

declare hidden i32 @luaK_codek(%struct.FuncState*, i32, i32) #2

declare hidden i32 @luaK_intK(%struct.FuncState*, i64) #2

; Function Attrs: nounwind
define internal void @test_then_block(%struct.LexState* %ls, i32* %escapelist) #0 {
  %1 = alloca %struct.LexState*, align 4
  %2 = alloca i32*, align 4
  %bl = alloca %struct.BlockCnt, align 4
  %fs = alloca %struct.FuncState*, align 4
  %v = alloca %struct.expdesc, align 8
  %jf = alloca i32, align 4
  store %struct.LexState* %ls, %struct.LexState** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.LexState** %1}, metadata !3183), !dbg !3184
  store i32* %escapelist, i32** %2, align 4
  call void @llvm.dbg.declare(metadata !{i32** %2}, metadata !3185), !dbg !3186
  call void @llvm.dbg.declare(metadata !{%struct.BlockCnt* %bl}, metadata !3187), !dbg !3188
  call void @llvm.dbg.declare(metadata !{%struct.FuncState** %fs}, metadata !3189), !dbg !3190
  %3 = load %struct.LexState** %1, align 4, !dbg !3191
  %4 = getelementptr inbounds %struct.LexState* %3, i32 0, i32 5, !dbg !3191
  %5 = load %struct.FuncState** %4, align 4, !dbg !3191
  store %struct.FuncState* %5, %struct.FuncState** %fs, align 4, !dbg !3191
  call void @llvm.dbg.declare(metadata !{%struct.expdesc* %v}, metadata !3192), !dbg !3193
  call void @llvm.dbg.declare(metadata !{i32* %jf}, metadata !3194), !dbg !3195
  %6 = load %struct.LexState** %1, align 4, !dbg !3196
  call void @luaX_next(%struct.LexState* %6), !dbg !3196
  %7 = load %struct.LexState** %1, align 4, !dbg !3197
  call void @expr(%struct.LexState* %7, %struct.expdesc* %v), !dbg !3197
  %8 = load %struct.LexState** %1, align 4, !dbg !3198
  call void @checknext(%struct.LexState* %8, i32 275), !dbg !3198
  %9 = load %struct.LexState** %1, align 4, !dbg !3199
  %10 = getelementptr inbounds %struct.LexState* %9, i32 0, i32 3, !dbg !3199
  %11 = getelementptr inbounds %struct.Token* %10, i32 0, i32 0, !dbg !3199
  %12 = load i32* %11, align 4, !dbg !3199
  %13 = icmp eq i32 %12, 266, !dbg !3199
  br i1 %13, label %20, label %14, !dbg !3199

; <label>:14                                      ; preds = %0
  %15 = load %struct.LexState** %1, align 4, !dbg !3201
  %16 = getelementptr inbounds %struct.LexState* %15, i32 0, i32 3, !dbg !3201
  %17 = getelementptr inbounds %struct.Token* %16, i32 0, i32 0, !dbg !3201
  %18 = load i32* %17, align 4, !dbg !3201
  %19 = icmp eq i32 %18, 258, !dbg !3201
  br i1 %19, label %20, label %38, !dbg !3201

; <label>:20                                      ; preds = %14, %0
  %21 = load %struct.LexState** %1, align 4, !dbg !3203
  %22 = getelementptr inbounds %struct.LexState* %21, i32 0, i32 5, !dbg !3203
  %23 = load %struct.FuncState** %22, align 4, !dbg !3203
  call void @luaK_goiffalse(%struct.FuncState* %23, %struct.expdesc* %v), !dbg !3203
  %24 = load %struct.FuncState** %fs, align 4, !dbg !3205
  call void @enterblock(%struct.FuncState* %24, %struct.BlockCnt* %bl, i8 zeroext 0), !dbg !3205
  %25 = load %struct.LexState** %1, align 4, !dbg !3206
  %26 = getelementptr inbounds %struct.expdesc* %v, i32 0, i32 2, !dbg !3206
  %27 = load i32* %26, align 4, !dbg !3206
  call void @gotostat(%struct.LexState* %25, i32 %27), !dbg !3206
  %28 = load %struct.LexState** %1, align 4, !dbg !3207
  call void @skipnoopstat(%struct.LexState* %28), !dbg !3207
  %29 = load %struct.LexState** %1, align 4, !dbg !3208
  %30 = call i32 @block_follow(%struct.LexState* %29, i32 0), !dbg !3208
  %31 = icmp ne i32 %30, 0, !dbg !3208
  br i1 %31, label %32, label %34, !dbg !3208

; <label>:32                                      ; preds = %20
  %33 = load %struct.FuncState** %fs, align 4, !dbg !3210
  call void @leaveblock(%struct.FuncState* %33), !dbg !3210
  br label %67, !dbg !3212

; <label>:34                                      ; preds = %20
  %35 = load %struct.FuncState** %fs, align 4, !dbg !3213
  %36 = call i32 @luaK_jump(%struct.FuncState* %35), !dbg !3213
  store i32 %36, i32* %jf, align 4, !dbg !3213
  br label %37

; <label>:37                                      ; preds = %34
  br label %45, !dbg !3214

; <label>:38                                      ; preds = %14
  %39 = load %struct.LexState** %1, align 4, !dbg !3215
  %40 = getelementptr inbounds %struct.LexState* %39, i32 0, i32 5, !dbg !3215
  %41 = load %struct.FuncState** %40, align 4, !dbg !3215
  call void @luaK_goiftrue(%struct.FuncState* %41, %struct.expdesc* %v), !dbg !3215
  %42 = load %struct.FuncState** %fs, align 4, !dbg !3217
  call void @enterblock(%struct.FuncState* %42, %struct.BlockCnt* %bl, i8 zeroext 0), !dbg !3217
  %43 = getelementptr inbounds %struct.expdesc* %v, i32 0, i32 3, !dbg !3218
  %44 = load i32* %43, align 4, !dbg !3218
  store i32 %44, i32* %jf, align 4, !dbg !3218
  br label %45

; <label>:45                                      ; preds = %38, %37
  %46 = load %struct.LexState** %1, align 4, !dbg !3219
  call void @statlist(%struct.LexState* %46), !dbg !3219
  %47 = load %struct.FuncState** %fs, align 4, !dbg !3220
  call void @leaveblock(%struct.FuncState* %47), !dbg !3220
  %48 = load %struct.LexState** %1, align 4, !dbg !3221
  %49 = getelementptr inbounds %struct.LexState* %48, i32 0, i32 3, !dbg !3221
  %50 = getelementptr inbounds %struct.Token* %49, i32 0, i32 0, !dbg !3221
  %51 = load i32* %50, align 4, !dbg !3221
  %52 = icmp eq i32 %51, 260, !dbg !3221
  br i1 %52, label %59, label %53, !dbg !3221

; <label>:53                                      ; preds = %45
  %54 = load %struct.LexState** %1, align 4, !dbg !3223
  %55 = getelementptr inbounds %struct.LexState* %54, i32 0, i32 3, !dbg !3223
  %56 = getelementptr inbounds %struct.Token* %55, i32 0, i32 0, !dbg !3223
  %57 = load i32* %56, align 4, !dbg !3223
  %58 = icmp eq i32 %57, 261, !dbg !3223
  br i1 %58, label %59, label %64, !dbg !3223

; <label>:59                                      ; preds = %53, %45
  %60 = load %struct.FuncState** %fs, align 4, !dbg !3225
  %61 = load i32** %2, align 4, !dbg !3225
  %62 = load %struct.FuncState** %fs, align 4, !dbg !3226
  %63 = call i32 @luaK_jump(%struct.FuncState* %62), !dbg !3226
  call void @luaK_concat(%struct.FuncState* %60, i32* %61, i32 %63), !dbg !3225
  br label %64, !dbg !3225

; <label>:64                                      ; preds = %59, %53
  %65 = load %struct.FuncState** %fs, align 4, !dbg !3227
  %66 = load i32* %jf, align 4, !dbg !3227
  call void @luaK_patchtohere(%struct.FuncState* %65, i32 %66), !dbg !3227
  br label %67, !dbg !3228

; <label>:67                                      ; preds = %64, %32
  ret void, !dbg !3229
}

declare hidden void @luaK_goiffalse(%struct.FuncState*, %struct.expdesc*) #2

declare hidden void @luaK_concat(%struct.FuncState*, i32*, i32) #2

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { noreturn }

!llvm.dbg.cu = !{!0}
!xidane.fname = !{!817, !818, !819, !820, !821, !822, !823, !824, !825, !826, !827, !828, !829, !830, !831, !832, !833, !834, !835, !836, !837, !838, !839, !840, !841, !842, !843, !844, !845, !846, !847, !848, !849, !850, !851, !852, !853, !854, !855, !856, !857, !858, !859, !860, !861, !862, !863, !864, !865, !866, !867, !868, !869, !870, !871, !872, !873, !874, !875, !876, !877, !878, !879, !880, !881, !882, !883, !884, !885, !886, !887, !888, !889, !890, !891, !892, !893, !894, !895, !896, !897, !898, !899, !900, !901, !902, !903, !904, !905, !906, !907, !908, !909, !910, !911, !912, !913, !914, !915, !916, !917, !918, !919, !920, !921, !922, !923, !924, !925, !926, !927, !928, !929, !930, !931, !932, !933, !934, !935, !936, !937, !938, !939, !940, !941, !942, !943, !944, !945, !946, !947, !948, !949, !950, !951, !952, !953, !954, !955, !956, !957, !958, !959, !960, !961, !962, !963, !964, !965, !966, !967, !968, !969, !970, !971, !972, !973, !974, !975, !976, !977, !978, !979, !980, !981, !982, !983, !984, !985, !986, !987, !988, !989, !990, !991, !992, !993, !994, !995, !996, !997, !998, !999, !1000, !1001, !1002, !1003, !1004, !1005, !1006, !1007, !1008, !1009, !1010, !1011, !1012, !1013, !1014, !1015, !1016, !1017, !1018, !1019, !1020, !1021, !1022, !1023, !1024, !1025, !1026, !1027, !1028, !1029, !1030, !1031, !1032, !1033, !1034, !1035, !1036, !1037, !1038, !1039, !1040, !1041, !1042, !1043, !1044, !1045, !1046, !1047, !1048, !1049, !1050, !1051, !1052, !1053, !1054, !1055, !1056, !1057, !1058, !1059, !1060, !1061, !1062, !1063, !1064, !1065, !1066, !1067, !1068, !1069, !1070, !1071, !1072, !1073, !1074, !1075, !1076, !1077, !1078, !1079, !1080, !1081, !1082, !1083, !1084, !1085, !1086, !1087, !1088, !1089, !1090}
!xidane.function_declaration_type = !{!817, !1091, !819, !1092, !821, !1093, !823, !1094, !825, !1095, !827, !1096, !829, !1097, !831, !1098, !833, !1099, !835, !1100, !837, !1101, !839, !1102, !841, !1102, !843, !1103, !845, !1102, !847, !1104, !849, !1105, !851, !1093, !853, !1106, !855, !1093, !857, !1107, !859, !1104, !861, !1108, !863, !1102, !865, !1108, !867, !1109, !869, !1110, !871, !1111, !873, !1112, !875, !1112, !877, !1113, !879, !1114, !881, !1115, !883, !1104, !885, !1116, !887, !1110, !889, !1117, !891, !1103, !893, !1118, !895, !1113, !897, !1102, !899, !1102, !901, !1103, !903, !1103, !905, !1102, !907, !1119, !909, !1103, !911, !1103, !913, !1103, !915, !1113, !917, !1102, !919, !1102, !921, !1120, !923, !1121, !925, !1102, !927, !1103, !929, !1102, !931, !1122, !933, !1123, !935, !1124, !937, !1125, !939, !1103, !941, !1126, !943, !1127, !945, !1128, !947, !1129, !949, !1130, !951, !1108, !953, !1128, !955, !1104, !957, !1122, !959, !1131, !961, !1132, !963, !1133, !965, !1122, !967, !1134, !969, !1135, !971, !1136, !973, !1137, !975, !1138, !977, !1122, !979, !1139, !981, !1140, !983, !1141, !985, !1103, !987, !1102, !989, !1122, !991, !1142, !993, !1143, !995, !1144, !997, !1145, !999, !1146, !1001, !1147, !1003, !1148, !1005, !1147, !1007, !1149, !1009, !1150, !1011, !1151, !1013, !1148, !1015, !1148, !1017, !1122, !1019, !1122, !1021, !1152, !1023, !1128, !1025, !1153, !1027, !1154, !1029, !1122, !1031, !1122, !1033, !1128, !1035, !1129, !1037, !1129, !1039, !1155, !1041, !1108, !1043, !1128, !1045, !1122, !1047, !1156, !1049, !1153, !1051, !1108, !1053, !1153, !1055, !1152, !1057, !1157, !1059, !1107, !1061, !1102, !1063, !1126, !1065, !1158, !1067, !1151, !1069, !1128, !1071, !1120, !1073, !1143, !1075, !1108, !1077, !1159, !1079, !1151, !1081, !1160, !1083, !1161, !1085, !1162, !1087, !1128, !1089, !1163}
!xidane.function_declaration_filename = !{!817, !1164, !819, !1165, !821, !1166, !823, !1167, !825, !1165, !827, !1168, !829, !1169, !831, !1170, !833, !1170, !835, !1170, !837, !1170, !839, !1169, !841, !1170, !843, !1170, !845, !1170, !847, !1171, !849, !1170, !851, !1172, !853, !1172, !855, !1173, !857, !1171, !859, !1171, !861, !1171, !863, !1170, !865, !1170, !867, !1170, !869, !1170, !871, !1174, !873, !1170, !875, !1169, !877, !1170, !879, !1170, !881, !1170, !883, !1171, !885, !1170, !887, !1170, !889, !1172, !891, !1170, !893, !1169, !895, !1170, !897, !1170, !899, !1170, !901, !1170, !903, !1170, !905, !1170, !907, !1170, !909, !1170, !911, !1170, !913, !1170, !915, !1170, !917, !1170, !919, !1170, !921, !1170, !923, !1170, !925, !1170, !927, !1170, !929, !1170, !931, !1170, !933, !1170, !935, !1170, !937, !1170, !939, !1170, !941, !1170, !943, !1170, !945, !1171, !947, !1171, !949, !1171, !951, !1171, !953, !1171, !955, !1171, !957, !1170, !959, !1170, !961, !1170, !963, !1171, !965, !1170, !967, !1170, !969, !1171, !971, !1171, !973, !1170, !975, !1171, !977, !1170, !979, !1170, !981, !1170, !983, !1170, !985, !1170, !987, !1170, !989, !1170, !991, !1171, !993, !1170, !995, !1170, !997, !1173, !999, !1169, !1001, !1170, !1003, !1170, !1005, !1170, !1007, !1174, !1009, !1171, !1011, !1169, !1013, !1170, !1015, !1170, !1017, !1170, !1019, !1170, !1021, !1171, !1023, !1171, !1025, !1171, !1027, !1170, !1029, !1170, !1031, !1170, !1033, !1171, !1035, !1171, !1037, !1171, !1039, !1170, !1041, !1171, !1043, !1171, !1045, !1170, !1047, !1170, !1049, !1170, !1051, !1170, !1053, !1170, !1055, !1171, !1057, !1170, !1059, !1171, !1061, !1170, !1063, !1170, !1065, !1170, !1067, !1170, !1069, !1171, !1071, !1170, !1073, !1170, !1075, !1171, !1077, !1170, !1079, !1170, !1081, !1171, !1083, !1171, !1085, !1170, !1087, !1171, !1089, !1171}
!xidane.ExternC = !{!817, !819, !821, !823, !825, !827, !829, !839, !847, !851, !853, !855, !857, !859, !861, !871, !875, !883, !889, !893, !945, !947, !949, !951, !953, !955, !963, !969, !971, !975, !991, !997, !999, !1007, !1009, !1011, !1021, !1023, !1025, !1033, !1035, !1037, !1041, !1043, !1055, !1059, !1069, !1075, !1081, !1083, !1087, !1089}
!llvm.module.flags = !{!1175, !1176, !1177, !1178}
!llvm.ident = !{!1179}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.0 (tags/RELEASE_350/final)", i1 false, metadata !"", i32 0, metadata !2, metadata !143, metadata !144, metadata !807, metadata !143, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src\lparser.c] [DW_LANG_C99]
!1 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src\5Clparser.c", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!2 = metadata !{metadata !3, metadata !21, metadata !61, metadata !86, metadata !93}
!3 = metadata !{i32 786436, metadata !4, null, metadata !"", i32 25, i64 32, i64 32, i32 0, i32 0, null, metadata !5, i32 0, null, null, null} ; [ DW_TAG_enumeration_type ] [line 25, size 32, align 32, offset 0] [def] [from ]
!4 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lparser.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!5 = metadata !{metadata !6, metadata !7, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !13, metadata !14, metadata !15, metadata !16, metadata !17, metadata !18, metadata !19, metadata !20}
!6 = metadata !{i32 786472, metadata !"VVOID", i64 0} ; [ DW_TAG_enumerator ] [VVOID :: 0]
!7 = metadata !{i32 786472, metadata !"VNIL", i64 1} ; [ DW_TAG_enumerator ] [VNIL :: 1]
!8 = metadata !{i32 786472, metadata !"VTRUE", i64 2} ; [ DW_TAG_enumerator ] [VTRUE :: 2]
!9 = metadata !{i32 786472, metadata !"VFALSE", i64 3} ; [ DW_TAG_enumerator ] [VFALSE :: 3]
!10 = metadata !{i32 786472, metadata !"VK", i64 4} ; [ DW_TAG_enumerator ] [VK :: 4]
!11 = metadata !{i32 786472, metadata !"VKFLT", i64 5} ; [ DW_TAG_enumerator ] [VKFLT :: 5]
!12 = metadata !{i32 786472, metadata !"VKINT", i64 6} ; [ DW_TAG_enumerator ] [VKINT :: 6]
!13 = metadata !{i32 786472, metadata !"VNONRELOC", i64 7} ; [ DW_TAG_enumerator ] [VNONRELOC :: 7]
!14 = metadata !{i32 786472, metadata !"VLOCAL", i64 8} ; [ DW_TAG_enumerator ] [VLOCAL :: 8]
!15 = metadata !{i32 786472, metadata !"VUPVAL", i64 9} ; [ DW_TAG_enumerator ] [VUPVAL :: 9]
!16 = metadata !{i32 786472, metadata !"VINDEXED", i64 10} ; [ DW_TAG_enumerator ] [VINDEXED :: 10]
!17 = metadata !{i32 786472, metadata !"VJMP", i64 11} ; [ DW_TAG_enumerator ] [VJMP :: 11]
!18 = metadata !{i32 786472, metadata !"VRELOCABLE", i64 12} ; [ DW_TAG_enumerator ] [VRELOCABLE :: 12]
!19 = metadata !{i32 786472, metadata !"VCALL", i64 13} ; [ DW_TAG_enumerator ] [VCALL :: 13]
!20 = metadata !{i32 786472, metadata !"VVARARG", i64 14} ; [ DW_TAG_enumerator ] [VVARARG :: 14]
!21 = metadata !{i32 786436, metadata !22, null, metadata !"RESERVED", i32 26, i64 32, i64 32, i32 0, i32 0, null, metadata !23, i32 0, null, null, null} ; [ DW_TAG_enumeration_type ] [RESERVED] [line 26, size 32, align 32, offset 0] [def] [from ]
!22 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/llex.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!23 = metadata !{metadata !24, metadata !25, metadata !26, metadata !27, metadata !28, metadata !29, metadata !30, metadata !31, metadata !32, metadata !33, metadata !34, metadata !35, metadata !36, metadata !37, metadata !38, metadata !39, metadata !40, metadata !41, metadata !42, metadata !43, metadata !44, metadata !45, metadata !46, metadata !47, metadata !48, metadata !49, metadata !50, metadata !51, metadata !52, metadata !53, metadata !54, metadata !55, metadata !56, metadata !57, metadata !58, metadata !59, metadata !60}
!24 = metadata !{i32 786472, metadata !"TK_AND", i64 257} ; [ DW_TAG_enumerator ] [TK_AND :: 257]
!25 = metadata !{i32 786472, metadata !"TK_BREAK", i64 258} ; [ DW_TAG_enumerator ] [TK_BREAK :: 258]
!26 = metadata !{i32 786472, metadata !"TK_DO", i64 259} ; [ DW_TAG_enumerator ] [TK_DO :: 259]
!27 = metadata !{i32 786472, metadata !"TK_ELSE", i64 260} ; [ DW_TAG_enumerator ] [TK_ELSE :: 260]
!28 = metadata !{i32 786472, metadata !"TK_ELSEIF", i64 261} ; [ DW_TAG_enumerator ] [TK_ELSEIF :: 261]
!29 = metadata !{i32 786472, metadata !"TK_END", i64 262} ; [ DW_TAG_enumerator ] [TK_END :: 262]
!30 = metadata !{i32 786472, metadata !"TK_FALSE", i64 263} ; [ DW_TAG_enumerator ] [TK_FALSE :: 263]
!31 = metadata !{i32 786472, metadata !"TK_FOR", i64 264} ; [ DW_TAG_enumerator ] [TK_FOR :: 264]
!32 = metadata !{i32 786472, metadata !"TK_FUNCTION", i64 265} ; [ DW_TAG_enumerator ] [TK_FUNCTION :: 265]
!33 = metadata !{i32 786472, metadata !"TK_GOTO", i64 266} ; [ DW_TAG_enumerator ] [TK_GOTO :: 266]
!34 = metadata !{i32 786472, metadata !"TK_IF", i64 267} ; [ DW_TAG_enumerator ] [TK_IF :: 267]
!35 = metadata !{i32 786472, metadata !"TK_IN", i64 268} ; [ DW_TAG_enumerator ] [TK_IN :: 268]
!36 = metadata !{i32 786472, metadata !"TK_LOCAL", i64 269} ; [ DW_TAG_enumerator ] [TK_LOCAL :: 269]
!37 = metadata !{i32 786472, metadata !"TK_NIL", i64 270} ; [ DW_TAG_enumerator ] [TK_NIL :: 270]
!38 = metadata !{i32 786472, metadata !"TK_NOT", i64 271} ; [ DW_TAG_enumerator ] [TK_NOT :: 271]
!39 = metadata !{i32 786472, metadata !"TK_OR", i64 272} ; [ DW_TAG_enumerator ] [TK_OR :: 272]
!40 = metadata !{i32 786472, metadata !"TK_REPEAT", i64 273} ; [ DW_TAG_enumerator ] [TK_REPEAT :: 273]
!41 = metadata !{i32 786472, metadata !"TK_RETURN", i64 274} ; [ DW_TAG_enumerator ] [TK_RETURN :: 274]
!42 = metadata !{i32 786472, metadata !"TK_THEN", i64 275} ; [ DW_TAG_enumerator ] [TK_THEN :: 275]
!43 = metadata !{i32 786472, metadata !"TK_TRUE", i64 276} ; [ DW_TAG_enumerator ] [TK_TRUE :: 276]
!44 = metadata !{i32 786472, metadata !"TK_UNTIL", i64 277} ; [ DW_TAG_enumerator ] [TK_UNTIL :: 277]
!45 = metadata !{i32 786472, metadata !"TK_WHILE", i64 278} ; [ DW_TAG_enumerator ] [TK_WHILE :: 278]
!46 = metadata !{i32 786472, metadata !"TK_IDIV", i64 279} ; [ DW_TAG_enumerator ] [TK_IDIV :: 279]
!47 = metadata !{i32 786472, metadata !"TK_CONCAT", i64 280} ; [ DW_TAG_enumerator ] [TK_CONCAT :: 280]
!48 = metadata !{i32 786472, metadata !"TK_DOTS", i64 281} ; [ DW_TAG_enumerator ] [TK_DOTS :: 281]
!49 = metadata !{i32 786472, metadata !"TK_EQ", i64 282} ; [ DW_TAG_enumerator ] [TK_EQ :: 282]
!50 = metadata !{i32 786472, metadata !"TK_GE", i64 283} ; [ DW_TAG_enumerator ] [TK_GE :: 283]
!51 = metadata !{i32 786472, metadata !"TK_LE", i64 284} ; [ DW_TAG_enumerator ] [TK_LE :: 284]
!52 = metadata !{i32 786472, metadata !"TK_NE", i64 285} ; [ DW_TAG_enumerator ] [TK_NE :: 285]
!53 = metadata !{i32 786472, metadata !"TK_SHL", i64 286} ; [ DW_TAG_enumerator ] [TK_SHL :: 286]
!54 = metadata !{i32 786472, metadata !"TK_SHR", i64 287} ; [ DW_TAG_enumerator ] [TK_SHR :: 287]
!55 = metadata !{i32 786472, metadata !"TK_DBCOLON", i64 288} ; [ DW_TAG_enumerator ] [TK_DBCOLON :: 288]
!56 = metadata !{i32 786472, metadata !"TK_EOS", i64 289} ; [ DW_TAG_enumerator ] [TK_EOS :: 289]
!57 = metadata !{i32 786472, metadata !"TK_FLT", i64 290} ; [ DW_TAG_enumerator ] [TK_FLT :: 290]
!58 = metadata !{i32 786472, metadata !"TK_INT", i64 291} ; [ DW_TAG_enumerator ] [TK_INT :: 291]
!59 = metadata !{i32 786472, metadata !"TK_NAME", i64 292} ; [ DW_TAG_enumerator ] [TK_NAME :: 292]
!60 = metadata !{i32 786472, metadata !"TK_STRING", i64 293} ; [ DW_TAG_enumerator ] [TK_STRING :: 293]
!61 = metadata !{i32 786436, metadata !62, null, metadata !"BinOpr", i32 26, i64 32, i64 32, i32 0, i32 0, null, metadata !63, i32 0, null, null, null} ; [ DW_TAG_enumeration_type ] [BinOpr] [line 26, size 32, align 32, offset 0] [def] [from ]
!62 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lcode.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!63 = metadata !{metadata !64, metadata !65, metadata !66, metadata !67, metadata !68, metadata !69, metadata !70, metadata !71, metadata !72, metadata !73, metadata !74, metadata !75, metadata !76, metadata !77, metadata !78, metadata !79, metadata !80, metadata !81, metadata !82, metadata !83, metadata !84, metadata !85}
!64 = metadata !{i32 786472, metadata !"OPR_ADD", i64 0} ; [ DW_TAG_enumerator ] [OPR_ADD :: 0]
!65 = metadata !{i32 786472, metadata !"OPR_SUB", i64 1} ; [ DW_TAG_enumerator ] [OPR_SUB :: 1]
!66 = metadata !{i32 786472, metadata !"OPR_MUL", i64 2} ; [ DW_TAG_enumerator ] [OPR_MUL :: 2]
!67 = metadata !{i32 786472, metadata !"OPR_MOD", i64 3} ; [ DW_TAG_enumerator ] [OPR_MOD :: 3]
!68 = metadata !{i32 786472, metadata !"OPR_POW", i64 4} ; [ DW_TAG_enumerator ] [OPR_POW :: 4]
!69 = metadata !{i32 786472, metadata !"OPR_DIV", i64 5} ; [ DW_TAG_enumerator ] [OPR_DIV :: 5]
!70 = metadata !{i32 786472, metadata !"OPR_IDIV", i64 6} ; [ DW_TAG_enumerator ] [OPR_IDIV :: 6]
!71 = metadata !{i32 786472, metadata !"OPR_BAND", i64 7} ; [ DW_TAG_enumerator ] [OPR_BAND :: 7]
!72 = metadata !{i32 786472, metadata !"OPR_BOR", i64 8} ; [ DW_TAG_enumerator ] [OPR_BOR :: 8]
!73 = metadata !{i32 786472, metadata !"OPR_BXOR", i64 9} ; [ DW_TAG_enumerator ] [OPR_BXOR :: 9]
!74 = metadata !{i32 786472, metadata !"OPR_SHL", i64 10} ; [ DW_TAG_enumerator ] [OPR_SHL :: 10]
!75 = metadata !{i32 786472, metadata !"OPR_SHR", i64 11} ; [ DW_TAG_enumerator ] [OPR_SHR :: 11]
!76 = metadata !{i32 786472, metadata !"OPR_CONCAT", i64 12} ; [ DW_TAG_enumerator ] [OPR_CONCAT :: 12]
!77 = metadata !{i32 786472, metadata !"OPR_EQ", i64 13} ; [ DW_TAG_enumerator ] [OPR_EQ :: 13]
!78 = metadata !{i32 786472, metadata !"OPR_LT", i64 14} ; [ DW_TAG_enumerator ] [OPR_LT :: 14]
!79 = metadata !{i32 786472, metadata !"OPR_LE", i64 15} ; [ DW_TAG_enumerator ] [OPR_LE :: 15]
!80 = metadata !{i32 786472, metadata !"OPR_NE", i64 16} ; [ DW_TAG_enumerator ] [OPR_NE :: 16]
!81 = metadata !{i32 786472, metadata !"OPR_GT", i64 17} ; [ DW_TAG_enumerator ] [OPR_GT :: 17]
!82 = metadata !{i32 786472, metadata !"OPR_GE", i64 18} ; [ DW_TAG_enumerator ] [OPR_GE :: 18]
!83 = metadata !{i32 786472, metadata !"OPR_AND", i64 19} ; [ DW_TAG_enumerator ] [OPR_AND :: 19]
!84 = metadata !{i32 786472, metadata !"OPR_OR", i64 20} ; [ DW_TAG_enumerator ] [OPR_OR :: 20]
!85 = metadata !{i32 786472, metadata !"OPR_NOBINOPR", i64 21} ; [ DW_TAG_enumerator ] [OPR_NOBINOPR :: 21]
!86 = metadata !{i32 786436, metadata !62, null, metadata !"UnOpr", i32 40, i64 32, i64 32, i32 0, i32 0, null, metadata !87, i32 0, null, null, null} ; [ DW_TAG_enumeration_type ] [UnOpr] [line 40, size 32, align 32, offset 0] [def] [from ]
!87 = metadata !{metadata !88, metadata !89, metadata !90, metadata !91, metadata !92}
!88 = metadata !{i32 786472, metadata !"OPR_MINUS", i64 0} ; [ DW_TAG_enumerator ] [OPR_MINUS :: 0]
!89 = metadata !{i32 786472, metadata !"OPR_BNOT", i64 1} ; [ DW_TAG_enumerator ] [OPR_BNOT :: 1]
!90 = metadata !{i32 786472, metadata !"OPR_NOT", i64 2} ; [ DW_TAG_enumerator ] [OPR_NOT :: 2]
!91 = metadata !{i32 786472, metadata !"OPR_LEN", i64 3} ; [ DW_TAG_enumerator ] [OPR_LEN :: 3]
!92 = metadata !{i32 786472, metadata !"OPR_NOUNOPR", i64 4} ; [ DW_TAG_enumerator ] [OPR_NOUNOPR :: 4]
!93 = metadata !{i32 786436, metadata !94, null, metadata !"", i32 165, i64 32, i64 32, i32 0, i32 0, null, metadata !95, i32 0, null, null, null} ; [ DW_TAG_enumeration_type ] [line 165, size 32, align 32, offset 0] [def] [from ]
!94 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lopcodes.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!95 = metadata !{metadata !96, metadata !97, metadata !98, metadata !99, metadata !100, metadata !101, metadata !102, metadata !103, metadata !104, metadata !105, metadata !106, metadata !107, metadata !108, metadata !109, metadata !110, metadata !111, metadata !112, metadata !113, metadata !114, metadata !115, metadata !116, metadata !117, metadata !118, metadata !119, metadata !120, metadata !121, metadata !122, metadata !123, metadata !124, metadata !125, metadata !126, metadata !127, metadata !128, metadata !129, metadata !130, metadata !131, metadata !132, metadata !133, metadata !134, metadata !135, metadata !136, metadata !137, metadata !138, metadata !139, metadata !140, metadata !141, metadata !142}
!96 = metadata !{i32 786472, metadata !"OP_MOVE", i64 0} ; [ DW_TAG_enumerator ] [OP_MOVE :: 0]
!97 = metadata !{i32 786472, metadata !"OP_LOADK", i64 1} ; [ DW_TAG_enumerator ] [OP_LOADK :: 1]
!98 = metadata !{i32 786472, metadata !"OP_LOADKX", i64 2} ; [ DW_TAG_enumerator ] [OP_LOADKX :: 2]
!99 = metadata !{i32 786472, metadata !"OP_LOADBOOL", i64 3} ; [ DW_TAG_enumerator ] [OP_LOADBOOL :: 3]
!100 = metadata !{i32 786472, metadata !"OP_LOADNIL", i64 4} ; [ DW_TAG_enumerator ] [OP_LOADNIL :: 4]
!101 = metadata !{i32 786472, metadata !"OP_GETUPVAL", i64 5} ; [ DW_TAG_enumerator ] [OP_GETUPVAL :: 5]
!102 = metadata !{i32 786472, metadata !"OP_GETTABUP", i64 6} ; [ DW_TAG_enumerator ] [OP_GETTABUP :: 6]
!103 = metadata !{i32 786472, metadata !"OP_GETTABLE", i64 7} ; [ DW_TAG_enumerator ] [OP_GETTABLE :: 7]
!104 = metadata !{i32 786472, metadata !"OP_SETTABUP", i64 8} ; [ DW_TAG_enumerator ] [OP_SETTABUP :: 8]
!105 = metadata !{i32 786472, metadata !"OP_SETUPVAL", i64 9} ; [ DW_TAG_enumerator ] [OP_SETUPVAL :: 9]
!106 = metadata !{i32 786472, metadata !"OP_SETTABLE", i64 10} ; [ DW_TAG_enumerator ] [OP_SETTABLE :: 10]
!107 = metadata !{i32 786472, metadata !"OP_NEWTABLE", i64 11} ; [ DW_TAG_enumerator ] [OP_NEWTABLE :: 11]
!108 = metadata !{i32 786472, metadata !"OP_SELF", i64 12} ; [ DW_TAG_enumerator ] [OP_SELF :: 12]
!109 = metadata !{i32 786472, metadata !"OP_ADD", i64 13} ; [ DW_TAG_enumerator ] [OP_ADD :: 13]
!110 = metadata !{i32 786472, metadata !"OP_SUB", i64 14} ; [ DW_TAG_enumerator ] [OP_SUB :: 14]
!111 = metadata !{i32 786472, metadata !"OP_MUL", i64 15} ; [ DW_TAG_enumerator ] [OP_MUL :: 15]
!112 = metadata !{i32 786472, metadata !"OP_MOD", i64 16} ; [ DW_TAG_enumerator ] [OP_MOD :: 16]
!113 = metadata !{i32 786472, metadata !"OP_POW", i64 17} ; [ DW_TAG_enumerator ] [OP_POW :: 17]
!114 = metadata !{i32 786472, metadata !"OP_DIV", i64 18} ; [ DW_TAG_enumerator ] [OP_DIV :: 18]
!115 = metadata !{i32 786472, metadata !"OP_IDIV", i64 19} ; [ DW_TAG_enumerator ] [OP_IDIV :: 19]
!116 = metadata !{i32 786472, metadata !"OP_BAND", i64 20} ; [ DW_TAG_enumerator ] [OP_BAND :: 20]
!117 = metadata !{i32 786472, metadata !"OP_BOR", i64 21} ; [ DW_TAG_enumerator ] [OP_BOR :: 21]
!118 = metadata !{i32 786472, metadata !"OP_BXOR", i64 22} ; [ DW_TAG_enumerator ] [OP_BXOR :: 22]
!119 = metadata !{i32 786472, metadata !"OP_SHL", i64 23} ; [ DW_TAG_enumerator ] [OP_SHL :: 23]
!120 = metadata !{i32 786472, metadata !"OP_SHR", i64 24} ; [ DW_TAG_enumerator ] [OP_SHR :: 24]
!121 = metadata !{i32 786472, metadata !"OP_UNM", i64 25} ; [ DW_TAG_enumerator ] [OP_UNM :: 25]
!122 = metadata !{i32 786472, metadata !"OP_BNOT", i64 26} ; [ DW_TAG_enumerator ] [OP_BNOT :: 26]
!123 = metadata !{i32 786472, metadata !"OP_NOT", i64 27} ; [ DW_TAG_enumerator ] [OP_NOT :: 27]
!124 = metadata !{i32 786472, metadata !"OP_LEN", i64 28} ; [ DW_TAG_enumerator ] [OP_LEN :: 28]
!125 = metadata !{i32 786472, metadata !"OP_CONCAT", i64 29} ; [ DW_TAG_enumerator ] [OP_CONCAT :: 29]
!126 = metadata !{i32 786472, metadata !"OP_JMP", i64 30} ; [ DW_TAG_enumerator ] [OP_JMP :: 30]
!127 = metadata !{i32 786472, metadata !"OP_EQ", i64 31} ; [ DW_TAG_enumerator ] [OP_EQ :: 31]
!128 = metadata !{i32 786472, metadata !"OP_LT", i64 32} ; [ DW_TAG_enumerator ] [OP_LT :: 32]
!129 = metadata !{i32 786472, metadata !"OP_LE", i64 33} ; [ DW_TAG_enumerator ] [OP_LE :: 33]
!130 = metadata !{i32 786472, metadata !"OP_TEST", i64 34} ; [ DW_TAG_enumerator ] [OP_TEST :: 34]
!131 = metadata !{i32 786472, metadata !"OP_TESTSET", i64 35} ; [ DW_TAG_enumerator ] [OP_TESTSET :: 35]
!132 = metadata !{i32 786472, metadata !"OP_CALL", i64 36} ; [ DW_TAG_enumerator ] [OP_CALL :: 36]
!133 = metadata !{i32 786472, metadata !"OP_TAILCALL", i64 37} ; [ DW_TAG_enumerator ] [OP_TAILCALL :: 37]
!134 = metadata !{i32 786472, metadata !"OP_RETURN", i64 38} ; [ DW_TAG_enumerator ] [OP_RETURN :: 38]
!135 = metadata !{i32 786472, metadata !"OP_FORLOOP", i64 39} ; [ DW_TAG_enumerator ] [OP_FORLOOP :: 39]
!136 = metadata !{i32 786472, metadata !"OP_FORPREP", i64 40} ; [ DW_TAG_enumerator ] [OP_FORPREP :: 40]
!137 = metadata !{i32 786472, metadata !"OP_TFORCALL", i64 41} ; [ DW_TAG_enumerator ] [OP_TFORCALL :: 41]
!138 = metadata !{i32 786472, metadata !"OP_TFORLOOP", i64 42} ; [ DW_TAG_enumerator ] [OP_TFORLOOP :: 42]
!139 = metadata !{i32 786472, metadata !"OP_SETLIST", i64 43} ; [ DW_TAG_enumerator ] [OP_SETLIST :: 43]
!140 = metadata !{i32 786472, metadata !"OP_CLOSURE", i64 44} ; [ DW_TAG_enumerator ] [OP_CLOSURE :: 44]
!141 = metadata !{i32 786472, metadata !"OP_VARARG", i64 45} ; [ DW_TAG_enumerator ] [OP_VARARG :: 45]
!142 = metadata !{i32 786472, metadata !"OP_EXTRAARG", i64 46} ; [ DW_TAG_enumerator ] [OP_EXTRAARG :: 46]
!143 = metadata !{}
!144 = metadata !{metadata !145, metadata !534, metadata !599, metadata !602, metadata !605, metadata !608, metadata !611, metadata !616, metadata !619, metadata !622, metadata !625, metadata !628, metadata !629, metadata !630, metadata !634, metadata !637, metadata !638, metadata !639, metadata !640, metadata !641, metadata !668, metadata !672, metadata !675, metadata !678, metadata !682, metadata !685, metadata !686, metadata !689, metadata !690, metadata !691, metadata !694, metadata !697, metadata !698, metadata !701, metadata !704, metadata !705, metadata !716, metadata !719, metadata !720, metadata !721, metadata !722, metadata !723, metadata !724, metadata !727, metadata !731, metadata !732, metadata !735, metadata !738, metadata !741, metadata !742, metadata !745, metadata !746, metadata !747, metadata !748, metadata !751, metadata !754, metadata !755, metadata !756, metadata !757, metadata !758, metadata !761, metadata !764, metadata !765, metadata !768, metadata !769, metadata !770, metadata !771, metadata !772, metadata !773, metadata !774, metadata !777, metadata !780, metadata !781, metadata !782, metadata !785, metadata !786, metadata !787, metadata !790, metadata !791, metadata !792, metadata !793, metadata !796, metadata !797, metadata !798, metadata !801, metadata !804}
!145 = metadata !{i32 786478, metadata !146, metadata !147, metadata !"luaY_parser", metadata !"luaY_parser", metadata !"", i32 1628, metadata !148, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, %struct.LClosure* (%struct.lua_State*, %struct.Zio*, %struct.Mbuffer*, %struct.Dyndata*, i8*, i32)* @luaY_parser, null, null, metadata !143, i32 1629} ; [ DW_TAG_subprogram ] [line 1628] [def] [scope 1629] [luaY_parser]
!146 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lparser.c", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!147 = metadata !{i32 786473, metadata !146}      ; [ DW_TAG_file_type ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!148 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !149, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!149 = metadata !{metadata !150, metadata !208, metadata !480, metadata !495, metadata !503, metadata !415, metadata !181}
!150 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !151} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from LClosure]
!151 = metadata !{i32 786454, metadata !152, null, metadata !"LClosure", i32 457, i64 0, i64 0, i64 0, i32 0, metadata !153} ; [ DW_TAG_typedef ] [LClosure] [line 457, size 0, align 0, offset 0] [from LClosure]
!152 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lobject.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!153 = metadata !{i32 786451, metadata !152, null, metadata !"LClosure", i32 453, i64 160, i64 32, i32 0, i32 0, null, metadata !154, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [LClosure] [line 453, size 160, align 32, offset 0] [def] [from ]
!154 = metadata !{metadata !155, metadata !166, metadata !167, metadata !168, metadata !169, metadata !170, metadata !476}
!155 = metadata !{i32 786445, metadata !152, metadata !153, metadata !"next", i32 454, i64 32, i64 32, i64 0, i32 0, metadata !156} ; [ DW_TAG_member ] [next] [line 454, size 32, align 32, offset 0] [from ]
!156 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !157} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from GCObject]
!157 = metadata !{i32 786454, metadata !152, null, metadata !"GCObject", i32 72, i64 0, i64 0, i64 0, i32 0, metadata !158} ; [ DW_TAG_typedef ] [GCObject] [line 72, size 0, align 0, offset 0] [from GCObject]
!158 = metadata !{i32 786451, metadata !152, null, metadata !"GCObject", i32 85, i64 64, i64 32, i32 0, i32 0, null, metadata !159, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [GCObject] [line 85, size 64, align 32, offset 0] [def] [from ]
!159 = metadata !{metadata !160, metadata !161, metadata !165}
!160 = metadata !{i32 786445, metadata !152, metadata !158, metadata !"next", i32 86, i64 32, i64 32, i64 0, i32 0, metadata !156} ; [ DW_TAG_member ] [next] [line 86, size 32, align 32, offset 0] [from ]
!161 = metadata !{i32 786445, metadata !152, metadata !158, metadata !"tt", i32 86, i64 8, i64 8, i64 32, i32 0, metadata !162} ; [ DW_TAG_member ] [tt] [line 86, size 8, align 8, offset 32] [from lu_byte]
!162 = metadata !{i32 786454, metadata !163, null, metadata !"lu_byte", i32 35, i64 0, i64 0, i64 0, i32 0, metadata !164} ; [ DW_TAG_typedef ] [lu_byte] [line 35, size 0, align 0, offset 0] [from unsigned char]
!163 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/llimits.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!164 = metadata !{i32 786468, null, null, metadata !"unsigned char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [unsigned char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!165 = metadata !{i32 786445, metadata !152, metadata !158, metadata !"marked", i32 86, i64 8, i64 8, i64 40, i32 0, metadata !162} ; [ DW_TAG_member ] [marked] [line 86, size 8, align 8, offset 40] [from lu_byte]
!166 = metadata !{i32 786445, metadata !152, metadata !153, metadata !"tt", i32 454, i64 8, i64 8, i64 32, i32 0, metadata !162} ; [ DW_TAG_member ] [tt] [line 454, size 8, align 8, offset 32] [from lu_byte]
!167 = metadata !{i32 786445, metadata !152, metadata !153, metadata !"marked", i32 454, i64 8, i64 8, i64 40, i32 0, metadata !162} ; [ DW_TAG_member ] [marked] [line 454, size 8, align 8, offset 40] [from lu_byte]
!168 = metadata !{i32 786445, metadata !152, metadata !153, metadata !"nupvalues", i32 454, i64 8, i64 8, i64 48, i32 0, metadata !162} ; [ DW_TAG_member ] [nupvalues] [line 454, size 8, align 8, offset 48] [from lu_byte]
!169 = metadata !{i32 786445, metadata !152, metadata !153, metadata !"gclist", i32 454, i64 32, i64 32, i64 64, i32 0, metadata !156} ; [ DW_TAG_member ] [gclist] [line 454, size 32, align 32, offset 64] [from ]
!170 = metadata !{i32 786445, metadata !152, metadata !153, metadata !"p", i32 455, i64 32, i64 32, i64 96, i32 0, metadata !171} ; [ DW_TAG_member ] [p] [line 455, size 32, align 32, offset 96] [from ]
!171 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !172} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from Proto]
!172 = metadata !{i32 786451, metadata !152, null, metadata !"Proto", i32 407, i64 640, i64 32, i32 0, i32 0, null, metadata !173, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [Proto] [line 407, size 640, align 32, offset 0] [def] [from ]
!173 = metadata !{metadata !174, metadata !175, metadata !176, metadata !177, metadata !178, metadata !179, metadata !180, metadata !182, metadata !183, metadata !184, metadata !185, metadata !186, metadata !187, metadata !188, metadata !189, metadata !450, metadata !452, metadata !454, metadata !456, metadata !464, metadata !472, metadata !474, metadata !475}
!174 = metadata !{i32 786445, metadata !152, metadata !172, metadata !"next", i32 408, i64 32, i64 32, i64 0, i32 0, metadata !156} ; [ DW_TAG_member ] [next] [line 408, size 32, align 32, offset 0] [from ]
!175 = metadata !{i32 786445, metadata !152, metadata !172, metadata !"tt", i32 408, i64 8, i64 8, i64 32, i32 0, metadata !162} ; [ DW_TAG_member ] [tt] [line 408, size 8, align 8, offset 32] [from lu_byte]
!176 = metadata !{i32 786445, metadata !152, metadata !172, metadata !"marked", i32 408, i64 8, i64 8, i64 40, i32 0, metadata !162} ; [ DW_TAG_member ] [marked] [line 408, size 8, align 8, offset 40] [from lu_byte]
!177 = metadata !{i32 786445, metadata !152, metadata !172, metadata !"numparams", i32 409, i64 8, i64 8, i64 48, i32 0, metadata !162} ; [ DW_TAG_member ] [numparams] [line 409, size 8, align 8, offset 48] [from lu_byte]
!178 = metadata !{i32 786445, metadata !152, metadata !172, metadata !"is_vararg", i32 410, i64 8, i64 8, i64 56, i32 0, metadata !162} ; [ DW_TAG_member ] [is_vararg] [line 410, size 8, align 8, offset 56] [from lu_byte]
!179 = metadata !{i32 786445, metadata !152, metadata !172, metadata !"maxstacksize", i32 411, i64 8, i64 8, i64 64, i32 0, metadata !162} ; [ DW_TAG_member ] [maxstacksize] [line 411, size 8, align 8, offset 64] [from lu_byte]
!180 = metadata !{i32 786445, metadata !152, metadata !172, metadata !"sizeupvalues", i32 412, i64 32, i64 32, i64 96, i32 0, metadata !181} ; [ DW_TAG_member ] [sizeupvalues] [line 412, size 32, align 32, offset 96] [from int]
!181 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!182 = metadata !{i32 786445, metadata !152, metadata !172, metadata !"sizek", i32 413, i64 32, i64 32, i64 128, i32 0, metadata !181} ; [ DW_TAG_member ] [sizek] [line 413, size 32, align 32, offset 128] [from int]
!183 = metadata !{i32 786445, metadata !152, metadata !172, metadata !"sizecode", i32 414, i64 32, i64 32, i64 160, i32 0, metadata !181} ; [ DW_TAG_member ] [sizecode] [line 414, size 32, align 32, offset 160] [from int]
!184 = metadata !{i32 786445, metadata !152, metadata !172, metadata !"sizelineinfo", i32 415, i64 32, i64 32, i64 192, i32 0, metadata !181} ; [ DW_TAG_member ] [sizelineinfo] [line 415, size 32, align 32, offset 192] [from int]
!185 = metadata !{i32 786445, metadata !152, metadata !172, metadata !"sizep", i32 416, i64 32, i64 32, i64 224, i32 0, metadata !181} ; [ DW_TAG_member ] [sizep] [line 416, size 32, align 32, offset 224] [from int]
!186 = metadata !{i32 786445, metadata !152, metadata !172, metadata !"sizelocvars", i32 417, i64 32, i64 32, i64 256, i32 0, metadata !181} ; [ DW_TAG_member ] [sizelocvars] [line 417, size 32, align 32, offset 256] [from int]
!187 = metadata !{i32 786445, metadata !152, metadata !172, metadata !"linedefined", i32 418, i64 32, i64 32, i64 288, i32 0, metadata !181} ; [ DW_TAG_member ] [linedefined] [line 418, size 32, align 32, offset 288] [from int]
!188 = metadata !{i32 786445, metadata !152, metadata !172, metadata !"lastlinedefined", i32 419, i64 32, i64 32, i64 320, i32 0, metadata !181} ; [ DW_TAG_member ] [lastlinedefined] [line 419, size 32, align 32, offset 320] [from int]
!189 = metadata !{i32 786445, metadata !152, metadata !172, metadata !"k", i32 420, i64 32, i64 32, i64 352, i32 0, metadata !190} ; [ DW_TAG_member ] [k] [line 420, size 32, align 32, offset 352] [from ]
!190 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !191} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from TValue]
!191 = metadata !{i32 786454, metadata !152, null, metadata !"TValue", i32 115, i64 0, i64 0, i64 0, i32 0, metadata !192} ; [ DW_TAG_typedef ] [TValue] [line 115, size 0, align 0, offset 0] [from lua_TValue]
!192 = metadata !{i32 786451, metadata !152, null, metadata !"lua_TValue", i32 113, i64 128, i64 64, i32 0, i32 0, null, metadata !193, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [lua_TValue] [line 113, size 128, align 64, offset 0] [def] [from ]
!193 = metadata !{metadata !194, metadata !449}
!194 = metadata !{i32 786445, metadata !152, metadata !192, metadata !"value_", i32 114, i64 64, i64 64, i64 0, i32 0, metadata !195} ; [ DW_TAG_member ] [value_] [line 114, size 64, align 64, offset 0] [from Value]
!195 = metadata !{i32 786454, metadata !152, null, metadata !"Value", i32 107, i64 0, i64 0, i64 0, i32 0, metadata !196} ; [ DW_TAG_typedef ] [Value] [line 107, size 0, align 0, offset 0] [from Value]
!196 = metadata !{i32 786455, metadata !152, null, metadata !"Value", i32 100, i64 64, i64 64, i64 0, i32 0, null, metadata !197, i32 0, null, null, null} ; [ DW_TAG_union_type ] [Value] [line 100, size 64, align 64, offset 0] [def] [from ]
!197 = metadata !{metadata !198, metadata !199, metadata !201, metadata !202, metadata !445, metadata !448}
!198 = metadata !{i32 786445, metadata !152, metadata !196, metadata !"gc", i32 101, i64 32, i64 32, i64 0, i32 0, metadata !156} ; [ DW_TAG_member ] [gc] [line 101, size 32, align 32, offset 0] [from ]
!199 = metadata !{i32 786445, metadata !152, metadata !196, metadata !"p", i32 102, i64 32, i64 32, i64 0, i32 0, metadata !200} ; [ DW_TAG_member ] [p] [line 102, size 32, align 32, offset 0] [from ]
!200 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!201 = metadata !{i32 786445, metadata !152, metadata !196, metadata !"b", i32 103, i64 32, i64 32, i64 0, i32 0, metadata !181} ; [ DW_TAG_member ] [b] [line 103, size 32, align 32, offset 0] [from int]
!202 = metadata !{i32 786445, metadata !152, metadata !196, metadata !"f", i32 104, i64 32, i64 32, i64 0, i32 0, metadata !203} ; [ DW_TAG_member ] [f] [line 104, size 32, align 32, offset 0] [from lua_CFunction]
!203 = metadata !{i32 786454, metadata !204, null, metadata !"lua_CFunction", i32 105, i64 0, i64 0, i64 0, i32 0, metadata !205} ; [ DW_TAG_typedef ] [lua_CFunction] [line 105, size 0, align 0, offset 0] [from ]
!204 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lua.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!205 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !206} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!206 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !207, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!207 = metadata !{metadata !181, metadata !208}
!208 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !209} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from lua_State]
!209 = metadata !{i32 786454, metadata !204, null, metadata !"lua_State", i32 56, i64 0, i64 0, i64 0, i32 0, metadata !210} ; [ DW_TAG_typedef ] [lua_State] [line 56, size 0, align 0, offset 0] [from lua_State]
!210 = metadata !{i32 786451, metadata !211, null, metadata !"lua_State", i32 159, i64 960, i64 32, i32 0, i32 0, null, metadata !212, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [lua_State] [line 159, size 960, align 32, offset 0] [def] [from ]
!211 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lstate.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!212 = metadata !{metadata !213, metadata !214, metadata !215, metadata !216, metadata !218, metadata !219, metadata !221, metadata !339, metadata !377, metadata !378, metadata !379, metadata !380, metadata !397, metadata !398, metadata !399, metadata !402, metadata !403, metadata !433, metadata !434, metadata !435, metadata !436, metadata !437, metadata !438, metadata !439, metadata !444}
!213 = metadata !{i32 786445, metadata !211, metadata !210, metadata !"next", i32 160, i64 32, i64 32, i64 0, i32 0, metadata !156} ; [ DW_TAG_member ] [next] [line 160, size 32, align 32, offset 0] [from ]
!214 = metadata !{i32 786445, metadata !211, metadata !210, metadata !"tt", i32 160, i64 8, i64 8, i64 32, i32 0, metadata !162} ; [ DW_TAG_member ] [tt] [line 160, size 8, align 8, offset 32] [from lu_byte]
!215 = metadata !{i32 786445, metadata !211, metadata !210, metadata !"marked", i32 160, i64 8, i64 8, i64 40, i32 0, metadata !162} ; [ DW_TAG_member ] [marked] [line 160, size 8, align 8, offset 40] [from lu_byte]
!216 = metadata !{i32 786445, metadata !211, metadata !210, metadata !"nci", i32 161, i64 16, i64 16, i64 48, i32 0, metadata !217} ; [ DW_TAG_member ] [nci] [line 161, size 16, align 16, offset 48] [from unsigned short]
!217 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!218 = metadata !{i32 786445, metadata !211, metadata !210, metadata !"status", i32 162, i64 8, i64 8, i64 64, i32 0, metadata !162} ; [ DW_TAG_member ] [status] [line 162, size 8, align 8, offset 64] [from lu_byte]
!219 = metadata !{i32 786445, metadata !211, metadata !210, metadata !"top", i32 163, i64 32, i64 32, i64 96, i32 0, metadata !220} ; [ DW_TAG_member ] [top] [line 163, size 32, align 32, offset 96] [from StkId]
!220 = metadata !{i32 786454, metadata !152, null, metadata !"StkId", i32 294, i64 0, i64 0, i64 0, i32 0, metadata !190} ; [ DW_TAG_typedef ] [StkId] [line 294, size 0, align 0, offset 0] [from ]
!221 = metadata !{i32 786445, metadata !211, metadata !210, metadata !"l_G", i32 164, i64 32, i64 32, i64 128, i32 0, metadata !222} ; [ DW_TAG_member ] [l_G] [line 164, size 32, align 32, offset 128] [from ]
!222 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !223} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from global_State]
!223 = metadata !{i32 786454, metadata !211, null, metadata !"global_State", i32 153, i64 0, i64 0, i64 0, i32 0, metadata !224} ; [ DW_TAG_typedef ] [global_State] [line 153, size 0, align 0, offset 0] [from global_State]
!224 = metadata !{i32 786451, metadata !211, null, metadata !"global_State", i32 118, i64 5568, i64 64, i32 0, i32 0, null, metadata !225, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [global_State] [line 118, size 5568, align 64, offset 0] [def] [from ]
!225 = metadata !{metadata !226, metadata !234, metadata !235, metadata !238, metadata !239, metadata !241, metadata !242, metadata !266, metadata !267, metadata !268, metadata !269, metadata !270, metadata !271, metadata !272, metadata !273, metadata !275, metadata !276, metadata !277, metadata !278, metadata !279, metadata !280, metadata !281, metadata !282, metadata !283, metadata !285, metadata !286, metadata !287, metadata !288, metadata !289, metadata !290, metadata !295, metadata !296, metadata !300, metadata !334}
!226 = metadata !{i32 786445, metadata !211, metadata !224, metadata !"frealloc", i32 119, i64 32, i64 32, i64 0, i32 0, metadata !227} ; [ DW_TAG_member ] [frealloc] [line 119, size 32, align 32, offset 0] [from lua_Alloc]
!227 = metadata !{i32 786454, metadata !204, null, metadata !"lua_Alloc", i32 124, i64 0, i64 0, i64 0, i32 0, metadata !228} ; [ DW_TAG_typedef ] [lua_Alloc] [line 124, size 0, align 0, offset 0] [from ]
!228 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !229} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!229 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !230, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!230 = metadata !{metadata !200, metadata !200, metadata !200, metadata !231, metadata !231}
!231 = metadata !{i32 786454, metadata !232, null, metadata !"size_t", i32 216, i64 0, i64 0, i64 0, i32 0, metadata !233} ; [ DW_TAG_typedef ] [size_t] [line 216, size 0, align 0, offset 0] [from unsigned int]
!232 = metadata !{metadata !"D:/Xilinx/SDx/2016.3/SDK/gnu/aarch32/nt/gcc-arm-linux-gnueabi/lib/gcc/arm-linux-gnueabihf/5.2.1/include\5Cstddef.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!233 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!234 = metadata !{i32 786445, metadata !211, metadata !224, metadata !"ud", i32 120, i64 32, i64 32, i64 32, i32 0, metadata !200} ; [ DW_TAG_member ] [ud] [line 120, size 32, align 32, offset 32] [from ]
!235 = metadata !{i32 786445, metadata !211, metadata !224, metadata !"totalbytes", i32 121, i64 32, i64 32, i64 64, i32 0, metadata !236} ; [ DW_TAG_member ] [totalbytes] [line 121, size 32, align 32, offset 64] [from l_mem]
!236 = metadata !{i32 786454, metadata !163, null, metadata !"l_mem", i32 27, i64 0, i64 0, i64 0, i32 0, metadata !237} ; [ DW_TAG_typedef ] [l_mem] [line 27, size 0, align 0, offset 0] [from ptrdiff_t]
!237 = metadata !{i32 786454, metadata !232, null, metadata !"ptrdiff_t", i32 149, i64 0, i64 0, i64 0, i32 0, metadata !181} ; [ DW_TAG_typedef ] [ptrdiff_t] [line 149, size 0, align 0, offset 0] [from int]
!238 = metadata !{i32 786445, metadata !211, metadata !224, metadata !"GCdebt", i32 122, i64 32, i64 32, i64 96, i32 0, metadata !236} ; [ DW_TAG_member ] [GCdebt] [line 122, size 32, align 32, offset 96] [from l_mem]
!239 = metadata !{i32 786445, metadata !211, metadata !224, metadata !"GCmemtrav", i32 123, i64 32, i64 32, i64 128, i32 0, metadata !240} ; [ DW_TAG_member ] [GCmemtrav] [line 123, size 32, align 32, offset 128] [from lu_mem]
!240 = metadata !{i32 786454, metadata !163, null, metadata !"lu_mem", i32 26, i64 0, i64 0, i64 0, i32 0, metadata !231} ; [ DW_TAG_typedef ] [lu_mem] [line 26, size 0, align 0, offset 0] [from size_t]
!241 = metadata !{i32 786445, metadata !211, metadata !224, metadata !"GCestimate", i32 124, i64 32, i64 32, i64 160, i32 0, metadata !240} ; [ DW_TAG_member ] [GCestimate] [line 124, size 32, align 32, offset 160] [from lu_mem]
!242 = metadata !{i32 786445, metadata !211, metadata !224, metadata !"strt", i32 125, i64 96, i64 32, i64 192, i32 0, metadata !243} ; [ DW_TAG_member ] [strt] [line 125, size 96, align 32, offset 192] [from stringtable]
!243 = metadata !{i32 786454, metadata !211, null, metadata !"stringtable", i32 62, i64 0, i64 0, i64 0, i32 0, metadata !244} ; [ DW_TAG_typedef ] [stringtable] [line 62, size 0, align 0, offset 0] [from stringtable]
!244 = metadata !{i32 786451, metadata !211, null, metadata !"stringtable", i32 58, i64 96, i64 32, i32 0, i32 0, null, metadata !245, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [stringtable] [line 58, size 96, align 32, offset 0] [def] [from ]
!245 = metadata !{metadata !246, metadata !264, metadata !265}
!246 = metadata !{i32 786445, metadata !211, metadata !244, metadata !"hash", i32 59, i64 32, i64 32, i64 0, i32 0, metadata !247} ; [ DW_TAG_member ] [hash] [line 59, size 32, align 32, offset 0] [from ]
!247 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !248} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!248 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !249} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from TString]
!249 = metadata !{i32 786454, metadata !152, null, metadata !"TString", i32 312, i64 0, i64 0, i64 0, i32 0, metadata !250} ; [ DW_TAG_typedef ] [TString] [line 312, size 0, align 0, offset 0] [from TString]
!250 = metadata !{i32 786451, metadata !152, null, metadata !"TString", i32 303, i64 128, i64 32, i32 0, i32 0, null, metadata !251, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [TString] [line 303, size 128, align 32, offset 0] [def] [from ]
!251 = metadata !{metadata !252, metadata !253, metadata !254, metadata !255, metadata !256, metadata !257, metadata !258}
!252 = metadata !{i32 786445, metadata !152, metadata !250, metadata !"next", i32 304, i64 32, i64 32, i64 0, i32 0, metadata !156} ; [ DW_TAG_member ] [next] [line 304, size 32, align 32, offset 0] [from ]
!253 = metadata !{i32 786445, metadata !152, metadata !250, metadata !"tt", i32 304, i64 8, i64 8, i64 32, i32 0, metadata !162} ; [ DW_TAG_member ] [tt] [line 304, size 8, align 8, offset 32] [from lu_byte]
!254 = metadata !{i32 786445, metadata !152, metadata !250, metadata !"marked", i32 304, i64 8, i64 8, i64 40, i32 0, metadata !162} ; [ DW_TAG_member ] [marked] [line 304, size 8, align 8, offset 40] [from lu_byte]
!255 = metadata !{i32 786445, metadata !152, metadata !250, metadata !"extra", i32 305, i64 8, i64 8, i64 48, i32 0, metadata !162} ; [ DW_TAG_member ] [extra] [line 305, size 8, align 8, offset 48] [from lu_byte]
!256 = metadata !{i32 786445, metadata !152, metadata !250, metadata !"shrlen", i32 306, i64 8, i64 8, i64 56, i32 0, metadata !162} ; [ DW_TAG_member ] [shrlen] [line 306, size 8, align 8, offset 56] [from lu_byte]
!257 = metadata !{i32 786445, metadata !152, metadata !250, metadata !"hash", i32 307, i64 32, i64 32, i64 64, i32 0, metadata !233} ; [ DW_TAG_member ] [hash] [line 307, size 32, align 32, offset 64] [from unsigned int]
!258 = metadata !{i32 786445, metadata !152, metadata !250, metadata !"u", i32 311, i64 32, i64 32, i64 96, i32 0, metadata !259} ; [ DW_TAG_member ] [u] [line 311, size 32, align 32, offset 96] [from ]
!259 = metadata !{i32 786455, metadata !152, metadata !250, metadata !"", i32 308, i64 32, i64 32, i64 0, i32 0, null, metadata !260, i32 0, null, null, null} ; [ DW_TAG_union_type ] [line 308, size 32, align 32, offset 0] [def] [from ]
!260 = metadata !{metadata !261, metadata !262}
!261 = metadata !{i32 786445, metadata !152, metadata !259, metadata !"lnglen", i32 309, i64 32, i64 32, i64 0, i32 0, metadata !231} ; [ DW_TAG_member ] [lnglen] [line 309, size 32, align 32, offset 0] [from size_t]
!262 = metadata !{i32 786445, metadata !152, metadata !259, metadata !"hnext", i32 310, i64 32, i64 32, i64 0, i32 0, metadata !263} ; [ DW_TAG_member ] [hnext] [line 310, size 32, align 32, offset 0] [from ]
!263 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !250} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from TString]
!264 = metadata !{i32 786445, metadata !211, metadata !244, metadata !"nuse", i32 60, i64 32, i64 32, i64 32, i32 0, metadata !181} ; [ DW_TAG_member ] [nuse] [line 60, size 32, align 32, offset 32] [from int]
!265 = metadata !{i32 786445, metadata !211, metadata !244, metadata !"size", i32 61, i64 32, i64 32, i64 64, i32 0, metadata !181} ; [ DW_TAG_member ] [size] [line 61, size 32, align 32, offset 64] [from int]
!266 = metadata !{i32 786445, metadata !211, metadata !224, metadata !"l_registry", i32 126, i64 128, i64 64, i64 320, i32 0, metadata !191} ; [ DW_TAG_member ] [l_registry] [line 126, size 128, align 64, offset 320] [from TValue]
!267 = metadata !{i32 786445, metadata !211, metadata !224, metadata !"seed", i32 127, i64 32, i64 32, i64 448, i32 0, metadata !233} ; [ DW_TAG_member ] [seed] [line 127, size 32, align 32, offset 448] [from unsigned int]
!268 = metadata !{i32 786445, metadata !211, metadata !224, metadata !"currentwhite", i32 128, i64 8, i64 8, i64 480, i32 0, metadata !162} ; [ DW_TAG_member ] [currentwhite] [line 128, size 8, align 8, offset 480] [from lu_byte]
!269 = metadata !{i32 786445, metadata !211, metadata !224, metadata !"gcstate", i32 129, i64 8, i64 8, i64 488, i32 0, metadata !162} ; [ DW_TAG_member ] [gcstate] [line 129, size 8, align 8, offset 488] [from lu_byte]
!270 = metadata !{i32 786445, metadata !211, metadata !224, metadata !"gckind", i32 130, i64 8, i64 8, i64 496, i32 0, metadata !162} ; [ DW_TAG_member ] [gckind] [line 130, size 8, align 8, offset 496] [from lu_byte]
!271 = metadata !{i32 786445, metadata !211, metadata !224, metadata !"gcrunning", i32 131, i64 8, i64 8, i64 504, i32 0, metadata !162} ; [ DW_TAG_member ] [gcrunning] [line 131, size 8, align 8, offset 504] [from lu_byte]
!272 = metadata !{i32 786445, metadata !211, metadata !224, metadata !"allgc", i32 132, i64 32, i64 32, i64 512, i32 0, metadata !156} ; [ DW_TAG_member ] [allgc] [line 132, size 32, align 32, offset 512] [from ]
!273 = metadata !{i32 786445, metadata !211, metadata !224, metadata !"sweepgc", i32 133, i64 32, i64 32, i64 544, i32 0, metadata !274} ; [ DW_TAG_member ] [sweepgc] [line 133, size 32, align 32, offset 544] [from ]
!274 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !156} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!275 = metadata !{i32 786445, metadata !211, metadata !224, metadata !"finobj", i32 134, i64 32, i64 32, i64 576, i32 0, metadata !156} ; [ DW_TAG_member ] [finobj] [line 134, size 32, align 32, offset 576] [from ]
!276 = metadata !{i32 786445, metadata !211, metadata !224, metadata !"gray", i32 135, i64 32, i64 32, i64 608, i32 0, metadata !156} ; [ DW_TAG_member ] [gray] [line 135, size 32, align 32, offset 608] [from ]
!277 = metadata !{i32 786445, metadata !211, metadata !224, metadata !"grayagain", i32 136, i64 32, i64 32, i64 640, i32 0, metadata !156} ; [ DW_TAG_member ] [grayagain] [line 136, size 32, align 32, offset 640] [from ]
!278 = metadata !{i32 786445, metadata !211, metadata !224, metadata !"weak", i32 137, i64 32, i64 32, i64 672, i32 0, metadata !156} ; [ DW_TAG_member ] [weak] [line 137, size 32, align 32, offset 672] [from ]
!279 = metadata !{i32 786445, metadata !211, metadata !224, metadata !"ephemeron", i32 138, i64 32, i64 32, i64 704, i32 0, metadata !156} ; [ DW_TAG_member ] [ephemeron] [line 138, size 32, align 32, offset 704] [from ]
!280 = metadata !{i32 786445, metadata !211, metadata !224, metadata !"allweak", i32 139, i64 32, i64 32, i64 736, i32 0, metadata !156} ; [ DW_TAG_member ] [allweak] [line 139, size 32, align 32, offset 736] [from ]
!281 = metadata !{i32 786445, metadata !211, metadata !224, metadata !"tobefnz", i32 140, i64 32, i64 32, i64 768, i32 0, metadata !156} ; [ DW_TAG_member ] [tobefnz] [line 140, size 32, align 32, offset 768] [from ]
!282 = metadata !{i32 786445, metadata !211, metadata !224, metadata !"fixedgc", i32 141, i64 32, i64 32, i64 800, i32 0, metadata !156} ; [ DW_TAG_member ] [fixedgc] [line 141, size 32, align 32, offset 800] [from ]
!283 = metadata !{i32 786445, metadata !211, metadata !224, metadata !"twups", i32 142, i64 32, i64 32, i64 832, i32 0, metadata !284} ; [ DW_TAG_member ] [twups] [line 142, size 32, align 32, offset 832] [from ]
!284 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !210} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from lua_State]
!285 = metadata !{i32 786445, metadata !211, metadata !224, metadata !"gcfinnum", i32 143, i64 32, i64 32, i64 864, i32 0, metadata !233} ; [ DW_TAG_member ] [gcfinnum] [line 143, size 32, align 32, offset 864] [from unsigned int]
!286 = metadata !{i32 786445, metadata !211, metadata !224, metadata !"gcpause", i32 144, i64 32, i64 32, i64 896, i32 0, metadata !181} ; [ DW_TAG_member ] [gcpause] [line 144, size 32, align 32, offset 896] [from int]
!287 = metadata !{i32 786445, metadata !211, metadata !224, metadata !"gcstepmul", i32 145, i64 32, i64 32, i64 928, i32 0, metadata !181} ; [ DW_TAG_member ] [gcstepmul] [line 145, size 32, align 32, offset 928] [from int]
!288 = metadata !{i32 786445, metadata !211, metadata !224, metadata !"panic", i32 146, i64 32, i64 32, i64 960, i32 0, metadata !203} ; [ DW_TAG_member ] [panic] [line 146, size 32, align 32, offset 960] [from lua_CFunction]
!289 = metadata !{i32 786445, metadata !211, metadata !224, metadata !"mainthread", i32 147, i64 32, i64 32, i64 992, i32 0, metadata !284} ; [ DW_TAG_member ] [mainthread] [line 147, size 32, align 32, offset 992] [from ]
!290 = metadata !{i32 786445, metadata !211, metadata !224, metadata !"version", i32 148, i64 32, i64 32, i64 1024, i32 0, metadata !291} ; [ DW_TAG_member ] [version] [line 148, size 32, align 32, offset 1024] [from ]
!291 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !292} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!292 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !293} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from lua_Number]
!293 = metadata !{i32 786454, metadata !204, null, metadata !"lua_Number", i32 89, i64 0, i64 0, i64 0, i32 0, metadata !294} ; [ DW_TAG_typedef ] [lua_Number] [line 89, size 0, align 0, offset 0] [from double]
!294 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!295 = metadata !{i32 786445, metadata !211, metadata !224, metadata !"memerrmsg", i32 149, i64 32, i64 32, i64 1056, i32 0, metadata !248} ; [ DW_TAG_member ] [memerrmsg] [line 149, size 32, align 32, offset 1056] [from ]
!296 = metadata !{i32 786445, metadata !211, metadata !224, metadata !"tmname", i32 150, i64 768, i64 32, i64 1088, i32 0, metadata !297} ; [ DW_TAG_member ] [tmname] [line 150, size 768, align 32, offset 1088] [from ]
!297 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 768, i64 32, i32 0, i32 0, metadata !248, metadata !298, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 768, align 32, offset 0] [from ]
!298 = metadata !{metadata !299}
!299 = metadata !{i32 786465, i64 0, i64 24}      ; [ DW_TAG_subrange_type ] [0, 23]
!300 = metadata !{i32 786445, metadata !211, metadata !224, metadata !"mt", i32 151, i64 288, i64 32, i64 1856, i32 0, metadata !301} ; [ DW_TAG_member ] [mt] [line 151, size 288, align 32, offset 1856] [from ]
!301 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 288, i64 32, i32 0, i32 0, metadata !302, metadata !332, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 288, align 32, offset 0] [from ]
!302 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !303} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from Table]
!303 = metadata !{i32 786451, metadata !152, null, metadata !"Table", i32 497, i64 256, i64 32, i32 0, i32 0, null, metadata !304, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [Table] [line 497, size 256, align 32, offset 0] [def] [from ]
!304 = metadata !{metadata !305, metadata !306, metadata !307, metadata !308, metadata !309, metadata !310, metadata !311, metadata !312, metadata !329, metadata !330, metadata !331}
!305 = metadata !{i32 786445, metadata !152, metadata !303, metadata !"next", i32 498, i64 32, i64 32, i64 0, i32 0, metadata !156} ; [ DW_TAG_member ] [next] [line 498, size 32, align 32, offset 0] [from ]
!306 = metadata !{i32 786445, metadata !152, metadata !303, metadata !"tt", i32 498, i64 8, i64 8, i64 32, i32 0, metadata !162} ; [ DW_TAG_member ] [tt] [line 498, size 8, align 8, offset 32] [from lu_byte]
!307 = metadata !{i32 786445, metadata !152, metadata !303, metadata !"marked", i32 498, i64 8, i64 8, i64 40, i32 0, metadata !162} ; [ DW_TAG_member ] [marked] [line 498, size 8, align 8, offset 40] [from lu_byte]
!308 = metadata !{i32 786445, metadata !152, metadata !303, metadata !"flags", i32 499, i64 8, i64 8, i64 48, i32 0, metadata !162} ; [ DW_TAG_member ] [flags] [line 499, size 8, align 8, offset 48] [from lu_byte]
!309 = metadata !{i32 786445, metadata !152, metadata !303, metadata !"lsizenode", i32 500, i64 8, i64 8, i64 56, i32 0, metadata !162} ; [ DW_TAG_member ] [lsizenode] [line 500, size 8, align 8, offset 56] [from lu_byte]
!310 = metadata !{i32 786445, metadata !152, metadata !303, metadata !"sizearray", i32 501, i64 32, i64 32, i64 64, i32 0, metadata !233} ; [ DW_TAG_member ] [sizearray] [line 501, size 32, align 32, offset 64] [from unsigned int]
!311 = metadata !{i32 786445, metadata !152, metadata !303, metadata !"array", i32 502, i64 32, i64 32, i64 96, i32 0, metadata !190} ; [ DW_TAG_member ] [array] [line 502, size 32, align 32, offset 96] [from ]
!312 = metadata !{i32 786445, metadata !152, metadata !303, metadata !"node", i32 503, i64 32, i64 32, i64 128, i32 0, metadata !313} ; [ DW_TAG_member ] [node] [line 503, size 32, align 32, offset 128] [from ]
!313 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !314} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from Node]
!314 = metadata !{i32 786454, metadata !152, null, metadata !"Node", i32 494, i64 0, i64 0, i64 0, i32 0, metadata !315} ; [ DW_TAG_typedef ] [Node] [line 494, size 0, align 0, offset 0] [from Node]
!315 = metadata !{i32 786451, metadata !152, null, metadata !"Node", i32 491, i64 256, i64 64, i32 0, i32 0, null, metadata !316, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [Node] [line 491, size 256, align 64, offset 0] [def] [from ]
!316 = metadata !{metadata !317, metadata !318}
!317 = metadata !{i32 786445, metadata !152, metadata !315, metadata !"i_val", i32 492, i64 128, i64 64, i64 0, i32 0, metadata !191} ; [ DW_TAG_member ] [i_val] [line 492, size 128, align 64, offset 0] [from TValue]
!318 = metadata !{i32 786445, metadata !152, metadata !315, metadata !"i_key", i32 493, i64 128, i64 64, i64 128, i32 0, metadata !319} ; [ DW_TAG_member ] [i_key] [line 493, size 128, align 64, offset 128] [from TKey]
!319 = metadata !{i32 786454, metadata !152, null, metadata !"TKey", i32 481, i64 0, i64 0, i64 0, i32 0, metadata !320} ; [ DW_TAG_typedef ] [TKey] [line 481, size 0, align 0, offset 0] [from TKey]
!320 = metadata !{i32 786455, metadata !152, null, metadata !"TKey", i32 475, i64 128, i64 64, i64 0, i32 0, null, metadata !321, i32 0, null, null, null} ; [ DW_TAG_union_type ] [TKey] [line 475, size 128, align 64, offset 0] [def] [from ]
!321 = metadata !{metadata !322, metadata !328}
!322 = metadata !{i32 786445, metadata !152, metadata !320, metadata !"nk", i32 479, i64 128, i64 64, i64 0, i32 0, metadata !323} ; [ DW_TAG_member ] [nk] [line 479, size 128, align 64, offset 0] [from ]
!323 = metadata !{i32 786451, metadata !152, metadata !320, metadata !"", i32 476, i64 128, i64 64, i32 0, i32 0, null, metadata !324, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 476, size 128, align 64, offset 0] [def] [from ]
!324 = metadata !{metadata !325, metadata !326, metadata !327}
!325 = metadata !{i32 786445, metadata !152, metadata !323, metadata !"value_", i32 477, i64 64, i64 64, i64 0, i32 0, metadata !195} ; [ DW_TAG_member ] [value_] [line 477, size 64, align 64, offset 0] [from Value]
!326 = metadata !{i32 786445, metadata !152, metadata !323, metadata !"tt_", i32 477, i64 32, i64 32, i64 64, i32 0, metadata !181} ; [ DW_TAG_member ] [tt_] [line 477, size 32, align 32, offset 64] [from int]
!327 = metadata !{i32 786445, metadata !152, metadata !323, metadata !"next", i32 478, i64 32, i64 32, i64 96, i32 0, metadata !181} ; [ DW_TAG_member ] [next] [line 478, size 32, align 32, offset 96] [from int]
!328 = metadata !{i32 786445, metadata !152, metadata !320, metadata !"tvk", i32 480, i64 128, i64 64, i64 0, i32 0, metadata !191} ; [ DW_TAG_member ] [tvk] [line 480, size 128, align 64, offset 0] [from TValue]
!329 = metadata !{i32 786445, metadata !152, metadata !303, metadata !"lastfree", i32 504, i64 32, i64 32, i64 160, i32 0, metadata !313} ; [ DW_TAG_member ] [lastfree] [line 504, size 32, align 32, offset 160] [from ]
!330 = metadata !{i32 786445, metadata !152, metadata !303, metadata !"metatable", i32 505, i64 32, i64 32, i64 192, i32 0, metadata !302} ; [ DW_TAG_member ] [metatable] [line 505, size 32, align 32, offset 192] [from ]
!331 = metadata !{i32 786445, metadata !152, metadata !303, metadata !"gclist", i32 506, i64 32, i64 32, i64 224, i32 0, metadata !156} ; [ DW_TAG_member ] [gclist] [line 506, size 32, align 32, offset 224] [from ]
!332 = metadata !{metadata !333}
!333 = metadata !{i32 786465, i64 0, i64 9}       ; [ DW_TAG_subrange_type ] [0, 8]
!334 = metadata !{i32 786445, metadata !211, metadata !224, metadata !"strcache", i32 152, i64 3392, i64 32, i64 2144, i32 0, metadata !335} ; [ DW_TAG_member ] [strcache] [line 152, size 3392, align 32, offset 2144] [from ]
!335 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 3392, i64 32, i32 0, i32 0, metadata !248, metadata !336, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 3392, align 32, offset 0] [from ]
!336 = metadata !{metadata !337, metadata !338}
!337 = metadata !{i32 786465, i64 0, i64 53}      ; [ DW_TAG_subrange_type ] [0, 52]
!338 = metadata !{i32 786465, i64 0, i64 2}       ; [ DW_TAG_subrange_type ] [0, 1]
!339 = metadata !{i32 786445, metadata !211, metadata !210, metadata !"ci", i32 165, i64 32, i64 32, i64 160, i32 0, metadata !340} ; [ DW_TAG_member ] [ci] [line 165, size 32, align 32, offset 160] [from ]
!340 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !341} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from CallInfo]
!341 = metadata !{i32 786454, metadata !211, null, metadata !"CallInfo", i32 92, i64 0, i64 0, i64 0, i32 0, metadata !342} ; [ DW_TAG_typedef ] [CallInfo] [line 92, size 0, align 0, offset 0] [from CallInfo]
!342 = metadata !{i32 786451, metadata !211, null, metadata !"CallInfo", i32 74, i64 288, i64 32, i32 0, i32 0, null, metadata !343, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [CallInfo] [line 74, size 288, align 32, offset 0] [def] [from ]
!343 = metadata !{metadata !344, metadata !345, metadata !346, metadata !348, metadata !349, metadata !373, metadata !374, metadata !376}
!344 = metadata !{i32 786445, metadata !211, metadata !342, metadata !"func", i32 75, i64 32, i64 32, i64 0, i32 0, metadata !220} ; [ DW_TAG_member ] [func] [line 75, size 32, align 32, offset 0] [from StkId]
!345 = metadata !{i32 786445, metadata !211, metadata !342, metadata !"top", i32 76, i64 32, i64 32, i64 32, i32 0, metadata !220} ; [ DW_TAG_member ] [top] [line 76, size 32, align 32, offset 32] [from StkId]
!346 = metadata !{i32 786445, metadata !211, metadata !342, metadata !"previous", i32 77, i64 32, i64 32, i64 64, i32 0, metadata !347} ; [ DW_TAG_member ] [previous] [line 77, size 32, align 32, offset 64] [from ]
!347 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !342} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from CallInfo]
!348 = metadata !{i32 786445, metadata !211, metadata !342, metadata !"next", i32 77, i64 32, i64 32, i64 96, i32 0, metadata !347} ; [ DW_TAG_member ] [next] [line 77, size 32, align 32, offset 96] [from ]
!349 = metadata !{i32 786445, metadata !211, metadata !342, metadata !"u", i32 88, i64 96, i64 32, i64 128, i32 0, metadata !350} ; [ DW_TAG_member ] [u] [line 88, size 96, align 32, offset 128] [from ]
!350 = metadata !{i32 786455, metadata !211, metadata !342, metadata !"", i32 78, i64 96, i64 32, i64 0, i32 0, null, metadata !351, i32 0, null, null, null} ; [ DW_TAG_union_type ] [line 78, size 96, align 32, offset 0] [def] [from ]
!351 = metadata !{metadata !352, metadata !360}
!352 = metadata !{i32 786445, metadata !211, metadata !350, metadata !"l", i32 82, i64 64, i64 32, i64 0, i32 0, metadata !353} ; [ DW_TAG_member ] [l] [line 82, size 64, align 32, offset 0] [from ]
!353 = metadata !{i32 786451, metadata !211, metadata !350, metadata !"", i32 79, i64 64, i64 32, i32 0, i32 0, null, metadata !354, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 79, size 64, align 32, offset 0] [def] [from ]
!354 = metadata !{metadata !355, metadata !356}
!355 = metadata !{i32 786445, metadata !211, metadata !353, metadata !"base", i32 80, i64 32, i64 32, i64 0, i32 0, metadata !220} ; [ DW_TAG_member ] [base] [line 80, size 32, align 32, offset 0] [from StkId]
!356 = metadata !{i32 786445, metadata !211, metadata !353, metadata !"savedpc", i32 81, i64 32, i64 32, i64 32, i32 0, metadata !357} ; [ DW_TAG_member ] [savedpc] [line 81, size 32, align 32, offset 32] [from ]
!357 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !358} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!358 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !359} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from Instruction]
!359 = metadata !{i32 786454, metadata !163, null, metadata !"Instruction", i32 163, i64 0, i64 0, i64 0, i32 0, metadata !233} ; [ DW_TAG_typedef ] [Instruction] [line 163, size 0, align 0, offset 0] [from unsigned int]
!360 = metadata !{i32 786445, metadata !211, metadata !350, metadata !"c", i32 87, i64 96, i64 32, i64 0, i32 0, metadata !361} ; [ DW_TAG_member ] [c] [line 87, size 96, align 32, offset 0] [from ]
!361 = metadata !{i32 786451, metadata !211, metadata !350, metadata !"", i32 83, i64 96, i64 32, i32 0, i32 0, null, metadata !362, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 83, size 96, align 32, offset 0] [def] [from ]
!362 = metadata !{metadata !363, metadata !371, metadata !372}
!363 = metadata !{i32 786445, metadata !211, metadata !361, metadata !"k", i32 84, i64 32, i64 32, i64 0, i32 0, metadata !364} ; [ DW_TAG_member ] [k] [line 84, size 32, align 32, offset 0] [from lua_KFunction]
!364 = metadata !{i32 786454, metadata !204, null, metadata !"lua_KFunction", i32 110, i64 0, i64 0, i64 0, i32 0, metadata !365} ; [ DW_TAG_typedef ] [lua_KFunction] [line 110, size 0, align 0, offset 0] [from ]
!365 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !366} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!366 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !367, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!367 = metadata !{metadata !181, metadata !208, metadata !181, metadata !368}
!368 = metadata !{i32 786454, metadata !204, null, metadata !"lua_KContext", i32 99, i64 0, i64 0, i64 0, i32 0, metadata !369} ; [ DW_TAG_typedef ] [lua_KContext] [line 99, size 0, align 0, offset 0] [from intptr_t]
!369 = metadata !{i32 786454, metadata !370, null, metadata !"intptr_t", i32 125, i64 0, i64 0, i64 0, i32 0, metadata !181} ; [ DW_TAG_typedef ] [intptr_t] [line 125, size 0, align 0, offset 0] [from int]
!370 = metadata !{metadata !"D:/Xilinx/SDx/2016.3/SDK/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include\5Cstdint.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!371 = metadata !{i32 786445, metadata !211, metadata !361, metadata !"old_errfunc", i32 85, i64 32, i64 32, i64 32, i32 0, metadata !237} ; [ DW_TAG_member ] [old_errfunc] [line 85, size 32, align 32, offset 32] [from ptrdiff_t]
!372 = metadata !{i32 786445, metadata !211, metadata !361, metadata !"ctx", i32 86, i64 32, i64 32, i64 64, i32 0, metadata !368} ; [ DW_TAG_member ] [ctx] [line 86, size 32, align 32, offset 64] [from lua_KContext]
!373 = metadata !{i32 786445, metadata !211, metadata !342, metadata !"extra", i32 89, i64 32, i64 32, i64 224, i32 0, metadata !237} ; [ DW_TAG_member ] [extra] [line 89, size 32, align 32, offset 224] [from ptrdiff_t]
!374 = metadata !{i32 786445, metadata !211, metadata !342, metadata !"nresults", i32 90, i64 16, i64 16, i64 256, i32 0, metadata !375} ; [ DW_TAG_member ] [nresults] [line 90, size 16, align 16, offset 256] [from short]
!375 = metadata !{i32 786468, null, null, metadata !"short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [short] [line 0, size 16, align 16, offset 0, enc DW_ATE_signed]
!376 = metadata !{i32 786445, metadata !211, metadata !342, metadata !"callstatus", i32 91, i64 8, i64 8, i64 272, i32 0, metadata !162} ; [ DW_TAG_member ] [callstatus] [line 91, size 8, align 8, offset 272] [from lu_byte]
!377 = metadata !{i32 786445, metadata !211, metadata !210, metadata !"oldpc", i32 166, i64 32, i64 32, i64 192, i32 0, metadata !357} ; [ DW_TAG_member ] [oldpc] [line 166, size 32, align 32, offset 192] [from ]
!378 = metadata !{i32 786445, metadata !211, metadata !210, metadata !"stack_last", i32 167, i64 32, i64 32, i64 224, i32 0, metadata !220} ; [ DW_TAG_member ] [stack_last] [line 167, size 32, align 32, offset 224] [from StkId]
!379 = metadata !{i32 786445, metadata !211, metadata !210, metadata !"stack", i32 168, i64 32, i64 32, i64 256, i32 0, metadata !220} ; [ DW_TAG_member ] [stack] [line 168, size 32, align 32, offset 256] [from StkId]
!380 = metadata !{i32 786445, metadata !211, metadata !210, metadata !"openupval", i32 169, i64 32, i64 32, i64 288, i32 0, metadata !381} ; [ DW_TAG_member ] [openupval] [line 169, size 32, align 32, offset 288] [from ]
!381 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !382} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from UpVal]
!382 = metadata !{i32 786454, metadata !152, null, metadata !"UpVal", i32 436, i64 0, i64 0, i64 0, i32 0, metadata !383} ; [ DW_TAG_typedef ] [UpVal] [line 436, size 0, align 0, offset 0] [from UpVal]
!383 = metadata !{i32 786451, metadata !384, null, metadata !"UpVal", i32 35, i64 192, i64 64, i32 0, i32 0, null, metadata !385, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [UpVal] [line 35, size 192, align 64, offset 0] [def] [from ]
!384 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lfunc.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!385 = metadata !{metadata !386, metadata !387, metadata !388}
!386 = metadata !{i32 786445, metadata !384, metadata !383, metadata !"v", i32 36, i64 32, i64 32, i64 0, i32 0, metadata !190} ; [ DW_TAG_member ] [v] [line 36, size 32, align 32, offset 0] [from ]
!387 = metadata !{i32 786445, metadata !384, metadata !383, metadata !"refcount", i32 37, i64 32, i64 32, i64 32, i32 0, metadata !240} ; [ DW_TAG_member ] [refcount] [line 37, size 32, align 32, offset 32] [from lu_mem]
!388 = metadata !{i32 786445, metadata !384, metadata !383, metadata !"u", i32 44, i64 128, i64 64, i64 64, i32 0, metadata !389} ; [ DW_TAG_member ] [u] [line 44, size 128, align 64, offset 64] [from ]
!389 = metadata !{i32 786455, metadata !384, metadata !383, metadata !"", i32 38, i64 128, i64 64, i64 0, i32 0, null, metadata !390, i32 0, null, null, null} ; [ DW_TAG_union_type ] [line 38, size 128, align 64, offset 0] [def] [from ]
!390 = metadata !{metadata !391, metadata !396}
!391 = metadata !{i32 786445, metadata !384, metadata !389, metadata !"open", i32 42, i64 64, i64 32, i64 0, i32 0, metadata !392} ; [ DW_TAG_member ] [open] [line 42, size 64, align 32, offset 0] [from ]
!392 = metadata !{i32 786451, metadata !384, metadata !389, metadata !"", i32 39, i64 64, i64 32, i32 0, i32 0, null, metadata !393, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 39, size 64, align 32, offset 0] [def] [from ]
!393 = metadata !{metadata !394, metadata !395}
!394 = metadata !{i32 786445, metadata !384, metadata !392, metadata !"next", i32 40, i64 32, i64 32, i64 0, i32 0, metadata !381} ; [ DW_TAG_member ] [next] [line 40, size 32, align 32, offset 0] [from ]
!395 = metadata !{i32 786445, metadata !384, metadata !392, metadata !"touched", i32 41, i64 32, i64 32, i64 32, i32 0, metadata !181} ; [ DW_TAG_member ] [touched] [line 41, size 32, align 32, offset 32] [from int]
!396 = metadata !{i32 786445, metadata !384, metadata !389, metadata !"value", i32 43, i64 128, i64 64, i64 0, i32 0, metadata !191} ; [ DW_TAG_member ] [value] [line 43, size 128, align 64, offset 0] [from TValue]
!397 = metadata !{i32 786445, metadata !211, metadata !210, metadata !"gclist", i32 170, i64 32, i64 32, i64 320, i32 0, metadata !156} ; [ DW_TAG_member ] [gclist] [line 170, size 32, align 32, offset 320] [from ]
!398 = metadata !{i32 786445, metadata !211, metadata !210, metadata !"twups", i32 171, i64 32, i64 32, i64 352, i32 0, metadata !284} ; [ DW_TAG_member ] [twups] [line 171, size 32, align 32, offset 352] [from ]
!399 = metadata !{i32 786445, metadata !211, metadata !210, metadata !"errorJmp", i32 172, i64 32, i64 32, i64 384, i32 0, metadata !400} ; [ DW_TAG_member ] [errorJmp] [line 172, size 32, align 32, offset 384] [from ]
!400 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !401} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from lua_longjmp]
!401 = metadata !{i32 786451, metadata !211, null, metadata !"lua_longjmp", i32 33, i64 0, i64 0, i32 0, i32 4, null, null, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [lua_longjmp] [line 33, size 0, align 0, offset 0] [decl] [from ]
!402 = metadata !{i32 786445, metadata !211, metadata !210, metadata !"base_ci", i32 173, i64 288, i64 32, i64 416, i32 0, metadata !341} ; [ DW_TAG_member ] [base_ci] [line 173, size 288, align 32, offset 416] [from CallInfo]
!403 = metadata !{i32 786445, metadata !211, metadata !210, metadata !"hook", i32 174, i64 32, i64 32, i64 704, i32 0, metadata !404} ; [ DW_TAG_member ] [hook] [line 174, size 32, align 32, offset 704] [from ]
!404 = metadata !{i32 786485, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !405} ; [ DW_TAG_volatile_type ] [line 0, size 0, align 0, offset 0] [from lua_Hook]
!405 = metadata !{i32 786454, metadata !204, null, metadata !"lua_Hook", i32 421, i64 0, i64 0, i64 0, i32 0, metadata !406} ; [ DW_TAG_typedef ] [lua_Hook] [line 421, size 0, align 0, offset 0] [from ]
!406 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !407} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!407 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !408, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!408 = metadata !{null, metadata !208, metadata !409}
!409 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !410} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from lua_Debug]
!410 = metadata !{i32 786454, metadata !204, null, metadata !"lua_Debug", i32 417, i64 0, i64 0, i64 0, i32 0, metadata !411} ; [ DW_TAG_typedef ] [lua_Debug] [line 417, size 0, align 0, offset 0] [from lua_Debug]
!411 = metadata !{i32 786451, metadata !204, null, metadata !"lua_Debug", i32 441, i64 800, i64 32, i32 0, i32 0, null, metadata !412, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [lua_Debug] [line 441, size 800, align 32, offset 0] [def] [from ]
!412 = metadata !{metadata !413, metadata !414, metadata !418, metadata !419, metadata !420, metadata !421, metadata !422, metadata !423, metadata !424, metadata !425, metadata !426, metadata !427, metadata !428, metadata !432}
!413 = metadata !{i32 786445, metadata !204, metadata !411, metadata !"event", i32 442, i64 32, i64 32, i64 0, i32 0, metadata !181} ; [ DW_TAG_member ] [event] [line 442, size 32, align 32, offset 0] [from int]
!414 = metadata !{i32 786445, metadata !204, metadata !411, metadata !"name", i32 443, i64 32, i64 32, i64 32, i32 0, metadata !415} ; [ DW_TAG_member ] [name] [line 443, size 32, align 32, offset 32] [from ]
!415 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !416} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!416 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !417} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!417 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!418 = metadata !{i32 786445, metadata !204, metadata !411, metadata !"namewhat", i32 444, i64 32, i64 32, i64 64, i32 0, metadata !415} ; [ DW_TAG_member ] [namewhat] [line 444, size 32, align 32, offset 64] [from ]
!419 = metadata !{i32 786445, metadata !204, metadata !411, metadata !"what", i32 445, i64 32, i64 32, i64 96, i32 0, metadata !415} ; [ DW_TAG_member ] [what] [line 445, size 32, align 32, offset 96] [from ]
!420 = metadata !{i32 786445, metadata !204, metadata !411, metadata !"source", i32 446, i64 32, i64 32, i64 128, i32 0, metadata !415} ; [ DW_TAG_member ] [source] [line 446, size 32, align 32, offset 128] [from ]
!421 = metadata !{i32 786445, metadata !204, metadata !411, metadata !"currentline", i32 447, i64 32, i64 32, i64 160, i32 0, metadata !181} ; [ DW_TAG_member ] [currentline] [line 447, size 32, align 32, offset 160] [from int]
!422 = metadata !{i32 786445, metadata !204, metadata !411, metadata !"linedefined", i32 448, i64 32, i64 32, i64 192, i32 0, metadata !181} ; [ DW_TAG_member ] [linedefined] [line 448, size 32, align 32, offset 192] [from int]
!423 = metadata !{i32 786445, metadata !204, metadata !411, metadata !"lastlinedefined", i32 449, i64 32, i64 32, i64 224, i32 0, metadata !181} ; [ DW_TAG_member ] [lastlinedefined] [line 449, size 32, align 32, offset 224] [from int]
!424 = metadata !{i32 786445, metadata !204, metadata !411, metadata !"nups", i32 450, i64 8, i64 8, i64 256, i32 0, metadata !164} ; [ DW_TAG_member ] [nups] [line 450, size 8, align 8, offset 256] [from unsigned char]
!425 = metadata !{i32 786445, metadata !204, metadata !411, metadata !"nparams", i32 451, i64 8, i64 8, i64 264, i32 0, metadata !164} ; [ DW_TAG_member ] [nparams] [line 451, size 8, align 8, offset 264] [from unsigned char]
!426 = metadata !{i32 786445, metadata !204, metadata !411, metadata !"isvararg", i32 452, i64 8, i64 8, i64 272, i32 0, metadata !417} ; [ DW_TAG_member ] [isvararg] [line 452, size 8, align 8, offset 272] [from char]
!427 = metadata !{i32 786445, metadata !204, metadata !411, metadata !"istailcall", i32 453, i64 8, i64 8, i64 280, i32 0, metadata !417} ; [ DW_TAG_member ] [istailcall] [line 453, size 8, align 8, offset 280] [from char]
!428 = metadata !{i32 786445, metadata !204, metadata !411, metadata !"short_src", i32 454, i64 480, i64 8, i64 288, i32 0, metadata !429} ; [ DW_TAG_member ] [short_src] [line 454, size 480, align 8, offset 288] [from ]
!429 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 480, i64 8, i32 0, i32 0, metadata !417, metadata !430, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 480, align 8, offset 0] [from char]
!430 = metadata !{metadata !431}
!431 = metadata !{i32 786465, i64 0, i64 60}      ; [ DW_TAG_subrange_type ] [0, 59]
!432 = metadata !{i32 786445, metadata !204, metadata !411, metadata !"i_ci", i32 456, i64 32, i64 32, i64 768, i32 0, metadata !347} ; [ DW_TAG_member ] [i_ci] [line 456, size 32, align 32, offset 768] [from ]
!433 = metadata !{i32 786445, metadata !211, metadata !210, metadata !"errfunc", i32 175, i64 32, i64 32, i64 736, i32 0, metadata !237} ; [ DW_TAG_member ] [errfunc] [line 175, size 32, align 32, offset 736] [from ptrdiff_t]
!434 = metadata !{i32 786445, metadata !211, metadata !210, metadata !"stacksize", i32 176, i64 32, i64 32, i64 768, i32 0, metadata !181} ; [ DW_TAG_member ] [stacksize] [line 176, size 32, align 32, offset 768] [from int]
!435 = metadata !{i32 786445, metadata !211, metadata !210, metadata !"basehookcount", i32 177, i64 32, i64 32, i64 800, i32 0, metadata !181} ; [ DW_TAG_member ] [basehookcount] [line 177, size 32, align 32, offset 800] [from int]
!436 = metadata !{i32 786445, metadata !211, metadata !210, metadata !"hookcount", i32 178, i64 32, i64 32, i64 832, i32 0, metadata !181} ; [ DW_TAG_member ] [hookcount] [line 178, size 32, align 32, offset 832] [from int]
!437 = metadata !{i32 786445, metadata !211, metadata !210, metadata !"nny", i32 179, i64 16, i64 16, i64 864, i32 0, metadata !217} ; [ DW_TAG_member ] [nny] [line 179, size 16, align 16, offset 864] [from unsigned short]
!438 = metadata !{i32 786445, metadata !211, metadata !210, metadata !"nCcalls", i32 180, i64 16, i64 16, i64 880, i32 0, metadata !217} ; [ DW_TAG_member ] [nCcalls] [line 180, size 16, align 16, offset 880] [from unsigned short]
!439 = metadata !{i32 786445, metadata !211, metadata !210, metadata !"hookmask", i32 181, i64 32, i64 32, i64 896, i32 0, metadata !440} ; [ DW_TAG_member ] [hookmask] [line 181, size 32, align 32, offset 896] [from sig_atomic_t]
!440 = metadata !{i32 786454, metadata !441, null, metadata !"sig_atomic_t", i32 40, i64 0, i64 0, i64 0, i32 0, metadata !442} ; [ DW_TAG_typedef ] [sig_atomic_t] [line 40, size 0, align 0, offset 0] [from __sig_atomic_t]
!441 = metadata !{metadata !"D:/Xilinx/SDx/2016.3/SDK/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include\5Csignal.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!442 = metadata !{i32 786454, metadata !443, null, metadata !"__sig_atomic_t", i32 22, i64 0, i64 0, i64 0, i32 0, metadata !181} ; [ DW_TAG_typedef ] [__sig_atomic_t] [line 22, size 0, align 0, offset 0] [from int]
!443 = metadata !{metadata !"D:/Xilinx/SDx/2016.3/SDK/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include\5Cbits/sigset.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!444 = metadata !{i32 786445, metadata !211, metadata !210, metadata !"allowhook", i32 182, i64 8, i64 8, i64 928, i32 0, metadata !162} ; [ DW_TAG_member ] [allowhook] [line 182, size 8, align 8, offset 928] [from lu_byte]
!445 = metadata !{i32 786445, metadata !152, metadata !196, metadata !"i", i32 105, i64 64, i64 64, i64 0, i32 0, metadata !446} ; [ DW_TAG_member ] [i] [line 105, size 64, align 64, offset 0] [from lua_Integer]
!446 = metadata !{i32 786454, metadata !204, null, metadata !"lua_Integer", i32 93, i64 0, i64 0, i64 0, i32 0, metadata !447} ; [ DW_TAG_typedef ] [lua_Integer] [line 93, size 0, align 0, offset 0] [from long long int]
!447 = metadata !{i32 786468, null, null, metadata !"long long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!448 = metadata !{i32 786445, metadata !152, metadata !196, metadata !"n", i32 106, i64 64, i64 64, i64 0, i32 0, metadata !293} ; [ DW_TAG_member ] [n] [line 106, size 64, align 64, offset 0] [from lua_Number]
!449 = metadata !{i32 786445, metadata !152, metadata !192, metadata !"tt_", i32 114, i64 32, i64 32, i64 64, i32 0, metadata !181} ; [ DW_TAG_member ] [tt_] [line 114, size 32, align 32, offset 64] [from int]
!450 = metadata !{i32 786445, metadata !152, metadata !172, metadata !"code", i32 421, i64 32, i64 32, i64 384, i32 0, metadata !451} ; [ DW_TAG_member ] [code] [line 421, size 32, align 32, offset 384] [from ]
!451 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !359} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from Instruction]
!452 = metadata !{i32 786445, metadata !152, metadata !172, metadata !"p", i32 422, i64 32, i64 32, i64 416, i32 0, metadata !453} ; [ DW_TAG_member ] [p] [line 422, size 32, align 32, offset 416] [from ]
!453 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !171} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!454 = metadata !{i32 786445, metadata !152, metadata !172, metadata !"lineinfo", i32 423, i64 32, i64 32, i64 448, i32 0, metadata !455} ; [ DW_TAG_member ] [lineinfo] [line 423, size 32, align 32, offset 448] [from ]
!455 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !181} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from int]
!456 = metadata !{i32 786445, metadata !152, metadata !172, metadata !"locvars", i32 424, i64 32, i64 32, i64 480, i32 0, metadata !457} ; [ DW_TAG_member ] [locvars] [line 424, size 32, align 32, offset 480] [from ]
!457 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !458} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from LocVar]
!458 = metadata !{i32 786454, metadata !152, null, metadata !"LocVar", i32 401, i64 0, i64 0, i64 0, i32 0, metadata !459} ; [ DW_TAG_typedef ] [LocVar] [line 401, size 0, align 0, offset 0] [from LocVar]
!459 = metadata !{i32 786451, metadata !152, null, metadata !"LocVar", i32 397, i64 96, i64 32, i32 0, i32 0, null, metadata !460, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [LocVar] [line 397, size 96, align 32, offset 0] [def] [from ]
!460 = metadata !{metadata !461, metadata !462, metadata !463}
!461 = metadata !{i32 786445, metadata !152, metadata !459, metadata !"varname", i32 398, i64 32, i64 32, i64 0, i32 0, metadata !248} ; [ DW_TAG_member ] [varname] [line 398, size 32, align 32, offset 0] [from ]
!462 = metadata !{i32 786445, metadata !152, metadata !459, metadata !"startpc", i32 399, i64 32, i64 32, i64 32, i32 0, metadata !181} ; [ DW_TAG_member ] [startpc] [line 399, size 32, align 32, offset 32] [from int]
!463 = metadata !{i32 786445, metadata !152, metadata !459, metadata !"endpc", i32 400, i64 32, i64 32, i64 64, i32 0, metadata !181} ; [ DW_TAG_member ] [endpc] [line 400, size 32, align 32, offset 64] [from int]
!464 = metadata !{i32 786445, metadata !152, metadata !172, metadata !"upvalues", i32 425, i64 32, i64 32, i64 512, i32 0, metadata !465} ; [ DW_TAG_member ] [upvalues] [line 425, size 32, align 32, offset 512] [from ]
!465 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !466} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from Upvaldesc]
!466 = metadata !{i32 786454, metadata !152, null, metadata !"Upvaldesc", i32 390, i64 0, i64 0, i64 0, i32 0, metadata !467} ; [ DW_TAG_typedef ] [Upvaldesc] [line 390, size 0, align 0, offset 0] [from Upvaldesc]
!467 = metadata !{i32 786451, metadata !152, null, metadata !"Upvaldesc", i32 386, i64 64, i64 32, i32 0, i32 0, null, metadata !468, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [Upvaldesc] [line 386, size 64, align 32, offset 0] [def] [from ]
!468 = metadata !{metadata !469, metadata !470, metadata !471}
!469 = metadata !{i32 786445, metadata !152, metadata !467, metadata !"name", i32 387, i64 32, i64 32, i64 0, i32 0, metadata !248} ; [ DW_TAG_member ] [name] [line 387, size 32, align 32, offset 0] [from ]
!470 = metadata !{i32 786445, metadata !152, metadata !467, metadata !"instack", i32 388, i64 8, i64 8, i64 32, i32 0, metadata !162} ; [ DW_TAG_member ] [instack] [line 388, size 8, align 8, offset 32] [from lu_byte]
!471 = metadata !{i32 786445, metadata !152, metadata !467, metadata !"idx", i32 389, i64 8, i64 8, i64 40, i32 0, metadata !162} ; [ DW_TAG_member ] [idx] [line 389, size 8, align 8, offset 40] [from lu_byte]
!472 = metadata !{i32 786445, metadata !152, metadata !172, metadata !"cache", i32 426, i64 32, i64 32, i64 544, i32 0, metadata !473} ; [ DW_TAG_member ] [cache] [line 426, size 32, align 32, offset 544] [from ]
!473 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !153} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from LClosure]
!474 = metadata !{i32 786445, metadata !152, metadata !172, metadata !"source", i32 427, i64 32, i64 32, i64 576, i32 0, metadata !248} ; [ DW_TAG_member ] [source] [line 427, size 32, align 32, offset 576] [from ]
!475 = metadata !{i32 786445, metadata !152, metadata !172, metadata !"gclist", i32 428, i64 32, i64 32, i64 608, i32 0, metadata !156} ; [ DW_TAG_member ] [gclist] [line 428, size 32, align 32, offset 608] [from ]
!476 = metadata !{i32 786445, metadata !152, metadata !153, metadata !"upvals", i32 456, i64 32, i64 32, i64 128, i32 0, metadata !477} ; [ DW_TAG_member ] [upvals] [line 456, size 32, align 32, offset 128] [from ]
!477 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 32, i64 32, i32 0, i32 0, metadata !381, metadata !478, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 32, align 32, offset 0] [from ]
!478 = metadata !{metadata !479}
!479 = metadata !{i32 786465, i64 0, i64 1}       ; [ DW_TAG_subrange_type ] [0, 0]
!480 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !481} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ZIO]
!481 = metadata !{i32 786454, metadata !482, null, metadata !"ZIO", i32 18, i64 0, i64 0, i64 0, i32 0, metadata !483} ; [ DW_TAG_typedef ] [ZIO] [line 18, size 0, align 0, offset 0] [from Zio]
!482 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lzio.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!483 = metadata !{i32 786451, metadata !482, null, metadata !"Zio", i32 55, i64 160, i64 32, i32 0, i32 0, null, metadata !484, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [Zio] [line 55, size 160, align 32, offset 0] [def] [from ]
!484 = metadata !{metadata !485, metadata !486, metadata !487, metadata !493, metadata !494}
!485 = metadata !{i32 786445, metadata !482, metadata !483, metadata !"n", i32 56, i64 32, i64 32, i64 0, i32 0, metadata !231} ; [ DW_TAG_member ] [n] [line 56, size 32, align 32, offset 0] [from size_t]
!486 = metadata !{i32 786445, metadata !482, metadata !483, metadata !"p", i32 57, i64 32, i64 32, i64 32, i32 0, metadata !415} ; [ DW_TAG_member ] [p] [line 57, size 32, align 32, offset 32] [from ]
!487 = metadata !{i32 786445, metadata !482, metadata !483, metadata !"reader", i32 58, i64 32, i64 32, i64 64, i32 0, metadata !488} ; [ DW_TAG_member ] [reader] [line 58, size 32, align 32, offset 64] [from lua_Reader]
!488 = metadata !{i32 786454, metadata !204, null, metadata !"lua_Reader", i32 116, i64 0, i64 0, i64 0, i32 0, metadata !489} ; [ DW_TAG_typedef ] [lua_Reader] [line 116, size 0, align 0, offset 0] [from ]
!489 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !490} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!490 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !491, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!491 = metadata !{metadata !415, metadata !208, metadata !200, metadata !492}
!492 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !231} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from size_t]
!493 = metadata !{i32 786445, metadata !482, metadata !483, metadata !"data", i32 59, i64 32, i64 32, i64 96, i32 0, metadata !200} ; [ DW_TAG_member ] [data] [line 59, size 32, align 32, offset 96] [from ]
!494 = metadata !{i32 786445, metadata !482, metadata !483, metadata !"L", i32 60, i64 32, i64 32, i64 128, i32 0, metadata !208} ; [ DW_TAG_member ] [L] [line 60, size 32, align 32, offset 128] [from ]
!495 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !496} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from Mbuffer]
!496 = metadata !{i32 786454, metadata !482, null, metadata !"Mbuffer", i32 27, i64 0, i64 0, i64 0, i32 0, metadata !497} ; [ DW_TAG_typedef ] [Mbuffer] [line 27, size 0, align 0, offset 0] [from Mbuffer]
!497 = metadata !{i32 786451, metadata !482, null, metadata !"Mbuffer", i32 23, i64 96, i64 32, i32 0, i32 0, null, metadata !498, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [Mbuffer] [line 23, size 96, align 32, offset 0] [def] [from ]
!498 = metadata !{metadata !499, metadata !501, metadata !502}
!499 = metadata !{i32 786445, metadata !482, metadata !497, metadata !"buffer", i32 24, i64 32, i64 32, i64 0, i32 0, metadata !500} ; [ DW_TAG_member ] [buffer] [line 24, size 32, align 32, offset 0] [from ]
!500 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !417} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from char]
!501 = metadata !{i32 786445, metadata !482, metadata !497, metadata !"n", i32 25, i64 32, i64 32, i64 32, i32 0, metadata !231} ; [ DW_TAG_member ] [n] [line 25, size 32, align 32, offset 32] [from size_t]
!502 = metadata !{i32 786445, metadata !482, metadata !497, metadata !"buffsize", i32 26, i64 32, i64 32, i64 64, i32 0, metadata !231} ; [ DW_TAG_member ] [buffsize] [line 26, size 32, align 32, offset 64] [from size_t]
!503 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !504} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from Dyndata]
!504 = metadata !{i32 786454, metadata !4, null, metadata !"Dyndata", i32 103, i64 0, i64 0, i64 0, i32 0, metadata !505} ; [ DW_TAG_typedef ] [Dyndata] [line 103, size 0, align 0, offset 0] [from Dyndata]
!505 = metadata !{i32 786451, metadata !4, null, metadata !"Dyndata", i32 95, i64 288, i64 32, i32 0, i32 0, null, metadata !506, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [Dyndata] [line 95, size 288, align 32, offset 0] [def] [from ]
!506 = metadata !{metadata !507, metadata !518, metadata !533}
!507 = metadata !{i32 786445, metadata !4, metadata !505, metadata !"actvar", i32 100, i64 96, i64 32, i64 0, i32 0, metadata !508} ; [ DW_TAG_member ] [actvar] [line 100, size 96, align 32, offset 0] [from ]
!508 = metadata !{i32 786451, metadata !4, metadata !505, metadata !"", i32 96, i64 96, i64 32, i32 0, i32 0, null, metadata !509, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 96, size 96, align 32, offset 0] [def] [from ]
!509 = metadata !{metadata !510, metadata !516, metadata !517}
!510 = metadata !{i32 786445, metadata !4, metadata !508, metadata !"arr", i32 97, i64 32, i64 32, i64 0, i32 0, metadata !511} ; [ DW_TAG_member ] [arr] [line 97, size 32, align 32, offset 0] [from ]
!511 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !512} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from Vardesc]
!512 = metadata !{i32 786454, metadata !4, null, metadata !"Vardesc", i32 74, i64 0, i64 0, i64 0, i32 0, metadata !513} ; [ DW_TAG_typedef ] [Vardesc] [line 74, size 0, align 0, offset 0] [from Vardesc]
!513 = metadata !{i32 786451, metadata !4, null, metadata !"Vardesc", i32 72, i64 16, i64 16, i32 0, i32 0, null, metadata !514, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [Vardesc] [line 72, size 16, align 16, offset 0] [def] [from ]
!514 = metadata !{metadata !515}
!515 = metadata !{i32 786445, metadata !4, metadata !513, metadata !"idx", i32 73, i64 16, i64 16, i64 0, i32 0, metadata !375} ; [ DW_TAG_member ] [idx] [line 73, size 16, align 16, offset 0] [from short]
!516 = metadata !{i32 786445, metadata !4, metadata !508, metadata !"n", i32 98, i64 32, i64 32, i64 32, i32 0, metadata !181} ; [ DW_TAG_member ] [n] [line 98, size 32, align 32, offset 32] [from int]
!517 = metadata !{i32 786445, metadata !4, metadata !508, metadata !"size", i32 99, i64 32, i64 32, i64 64, i32 0, metadata !181} ; [ DW_TAG_member ] [size] [line 99, size 32, align 32, offset 64] [from int]
!518 = metadata !{i32 786445, metadata !4, metadata !505, metadata !"gt", i32 101, i64 96, i64 32, i64 96, i32 0, metadata !519} ; [ DW_TAG_member ] [gt] [line 101, size 96, align 32, offset 96] [from Labellist]
!519 = metadata !{i32 786454, metadata !4, null, metadata !"Labellist", i32 91, i64 0, i64 0, i64 0, i32 0, metadata !520} ; [ DW_TAG_typedef ] [Labellist] [line 91, size 0, align 0, offset 0] [from Labellist]
!520 = metadata !{i32 786451, metadata !4, null, metadata !"Labellist", i32 87, i64 96, i64 32, i32 0, i32 0, null, metadata !521, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [Labellist] [line 87, size 96, align 32, offset 0] [def] [from ]
!521 = metadata !{metadata !522, metadata !531, metadata !532}
!522 = metadata !{i32 786445, metadata !4, metadata !520, metadata !"arr", i32 88, i64 32, i64 32, i64 0, i32 0, metadata !523} ; [ DW_TAG_member ] [arr] [line 88, size 32, align 32, offset 0] [from ]
!523 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !524} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from Labeldesc]
!524 = metadata !{i32 786454, metadata !4, null, metadata !"Labeldesc", i32 83, i64 0, i64 0, i64 0, i32 0, metadata !525} ; [ DW_TAG_typedef ] [Labeldesc] [line 83, size 0, align 0, offset 0] [from Labeldesc]
!525 = metadata !{i32 786451, metadata !4, null, metadata !"Labeldesc", i32 78, i64 128, i64 32, i32 0, i32 0, null, metadata !526, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [Labeldesc] [line 78, size 128, align 32, offset 0] [def] [from ]
!526 = metadata !{metadata !527, metadata !528, metadata !529, metadata !530}
!527 = metadata !{i32 786445, metadata !4, metadata !525, metadata !"name", i32 79, i64 32, i64 32, i64 0, i32 0, metadata !248} ; [ DW_TAG_member ] [name] [line 79, size 32, align 32, offset 0] [from ]
!528 = metadata !{i32 786445, metadata !4, metadata !525, metadata !"pc", i32 80, i64 32, i64 32, i64 32, i32 0, metadata !181} ; [ DW_TAG_member ] [pc] [line 80, size 32, align 32, offset 32] [from int]
!529 = metadata !{i32 786445, metadata !4, metadata !525, metadata !"line", i32 81, i64 32, i64 32, i64 64, i32 0, metadata !181} ; [ DW_TAG_member ] [line] [line 81, size 32, align 32, offset 64] [from int]
!530 = metadata !{i32 786445, metadata !4, metadata !525, metadata !"nactvar", i32 82, i64 8, i64 8, i64 96, i32 0, metadata !162} ; [ DW_TAG_member ] [nactvar] [line 82, size 8, align 8, offset 96] [from lu_byte]
!531 = metadata !{i32 786445, metadata !4, metadata !520, metadata !"n", i32 89, i64 32, i64 32, i64 32, i32 0, metadata !181} ; [ DW_TAG_member ] [n] [line 89, size 32, align 32, offset 32] [from int]
!532 = metadata !{i32 786445, metadata !4, metadata !520, metadata !"size", i32 90, i64 32, i64 32, i64 64, i32 0, metadata !181} ; [ DW_TAG_member ] [size] [line 90, size 32, align 32, offset 64] [from int]
!533 = metadata !{i32 786445, metadata !4, metadata !505, metadata !"label", i32 102, i64 96, i64 32, i64 192, i32 0, metadata !519} ; [ DW_TAG_member ] [label] [line 102, size 96, align 32, offset 192] [from Labellist]
!534 = metadata !{i32 786478, metadata !146, metadata !147, metadata !"mainfunc", metadata !"mainfunc", metadata !"", i32 1614, metadata !535, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.LexState*, %struct.FuncState*)* @mainfunc, null, null, metadata !143, i32 1614} ; [ DW_TAG_subprogram ] [line 1614] [local] [def] [mainfunc]
!535 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !536, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!536 = metadata !{null, metadata !537, metadata !597}
!537 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !538} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from LexState]
!538 = metadata !{i32 786454, metadata !22, null, metadata !"LexState", i32 72, i64 0, i64 0, i64 0, i32 0, metadata !539} ; [ DW_TAG_typedef ] [LexState] [line 72, size 0, align 0, offset 0] [from LexState]
!539 = metadata !{i32 786451, metadata !22, null, metadata !"LexState", i32 58, i64 640, i64 64, i32 0, i32 0, null, metadata !540, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [LexState] [line 58, size 640, align 64, offset 0] [def] [from ]
!540 = metadata !{metadata !541, metadata !542, metadata !543, metadata !544, metadata !556, metadata !557, metadata !587, metadata !588, metadata !589, metadata !590, metadata !593, metadata !595, metadata !596}
!541 = metadata !{i32 786445, metadata !22, metadata !539, metadata !"current", i32 59, i64 32, i64 32, i64 0, i32 0, metadata !181} ; [ DW_TAG_member ] [current] [line 59, size 32, align 32, offset 0] [from int]
!542 = metadata !{i32 786445, metadata !22, metadata !539, metadata !"linenumber", i32 60, i64 32, i64 32, i64 32, i32 0, metadata !181} ; [ DW_TAG_member ] [linenumber] [line 60, size 32, align 32, offset 32] [from int]
!543 = metadata !{i32 786445, metadata !22, metadata !539, metadata !"lastline", i32 61, i64 32, i64 32, i64 64, i32 0, metadata !181} ; [ DW_TAG_member ] [lastline] [line 61, size 32, align 32, offset 64] [from int]
!544 = metadata !{i32 786445, metadata !22, metadata !539, metadata !"t", i32 62, i64 128, i64 64, i64 128, i32 0, metadata !545} ; [ DW_TAG_member ] [t] [line 62, size 128, align 64, offset 128] [from Token]
!545 = metadata !{i32 786454, metadata !22, null, metadata !"Token", i32 53, i64 0, i64 0, i64 0, i32 0, metadata !546} ; [ DW_TAG_typedef ] [Token] [line 53, size 0, align 0, offset 0] [from Token]
!546 = metadata !{i32 786451, metadata !22, null, metadata !"Token", i32 50, i64 128, i64 64, i32 0, i32 0, null, metadata !547, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [Token] [line 50, size 128, align 64, offset 0] [def] [from ]
!547 = metadata !{metadata !548, metadata !549}
!548 = metadata !{i32 786445, metadata !22, metadata !546, metadata !"token", i32 51, i64 32, i64 32, i64 0, i32 0, metadata !181} ; [ DW_TAG_member ] [token] [line 51, size 32, align 32, offset 0] [from int]
!549 = metadata !{i32 786445, metadata !22, metadata !546, metadata !"seminfo", i32 52, i64 64, i64 64, i64 64, i32 0, metadata !550} ; [ DW_TAG_member ] [seminfo] [line 52, size 64, align 64, offset 64] [from SemInfo]
!550 = metadata !{i32 786454, metadata !22, null, metadata !"SemInfo", i32 47, i64 0, i64 0, i64 0, i32 0, metadata !551} ; [ DW_TAG_typedef ] [SemInfo] [line 47, size 0, align 0, offset 0] [from ]
!551 = metadata !{i32 786455, metadata !22, null, metadata !"", i32 43, i64 64, i64 64, i64 0, i32 0, null, metadata !552, i32 0, null, null, null} ; [ DW_TAG_union_type ] [line 43, size 64, align 64, offset 0] [def] [from ]
!552 = metadata !{metadata !553, metadata !554, metadata !555}
!553 = metadata !{i32 786445, metadata !22, metadata !551, metadata !"r", i32 44, i64 64, i64 64, i64 0, i32 0, metadata !293} ; [ DW_TAG_member ] [r] [line 44, size 64, align 64, offset 0] [from lua_Number]
!554 = metadata !{i32 786445, metadata !22, metadata !551, metadata !"i", i32 45, i64 64, i64 64, i64 0, i32 0, metadata !446} ; [ DW_TAG_member ] [i] [line 45, size 64, align 64, offset 0] [from lua_Integer]
!555 = metadata !{i32 786445, metadata !22, metadata !551, metadata !"ts", i32 46, i64 32, i64 32, i64 0, i32 0, metadata !248} ; [ DW_TAG_member ] [ts] [line 46, size 32, align 32, offset 0] [from ]
!556 = metadata !{i32 786445, metadata !22, metadata !539, metadata !"lookahead", i32 63, i64 128, i64 64, i64 256, i32 0, metadata !545} ; [ DW_TAG_member ] [lookahead] [line 63, size 128, align 64, offset 256] [from Token]
!557 = metadata !{i32 786445, metadata !22, metadata !539, metadata !"fs", i32 64, i64 32, i64 32, i64 384, i32 0, metadata !558} ; [ DW_TAG_member ] [fs] [line 64, size 32, align 32, offset 384] [from ]
!558 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !559} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from FuncState]
!559 = metadata !{i32 786451, metadata !4, null, metadata !"FuncState", i32 111, i64 384, i64 32, i32 0, i32 0, null, metadata !560, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [FuncState] [line 111, size 384, align 32, offset 0] [def] [from ]
!560 = metadata !{metadata !561, metadata !564, metadata !565, metadata !567, metadata !577, metadata !578, metadata !579, metadata !580, metadata !581, metadata !582, metadata !583, metadata !584, metadata !585, metadata !586}
!561 = metadata !{i32 786445, metadata !4, metadata !559, metadata !"f", i32 112, i64 32, i64 32, i64 0, i32 0, metadata !562} ; [ DW_TAG_member ] [f] [line 112, size 32, align 32, offset 0] [from ]
!562 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !563} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from Proto]
!563 = metadata !{i32 786454, metadata !152, null, metadata !"Proto", i32 429, i64 0, i64 0, i64 0, i32 0, metadata !172} ; [ DW_TAG_typedef ] [Proto] [line 429, size 0, align 0, offset 0] [from Proto]
!564 = metadata !{i32 786445, metadata !4, metadata !559, metadata !"prev", i32 113, i64 32, i64 32, i64 32, i32 0, metadata !558} ; [ DW_TAG_member ] [prev] [line 113, size 32, align 32, offset 32] [from ]
!565 = metadata !{i32 786445, metadata !4, metadata !559, metadata !"ls", i32 114, i64 32, i64 32, i64 64, i32 0, metadata !566} ; [ DW_TAG_member ] [ls] [line 114, size 32, align 32, offset 64] [from ]
!566 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !539} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from LexState]
!567 = metadata !{i32 786445, metadata !4, metadata !559, metadata !"bl", i32 115, i64 32, i64 32, i64 96, i32 0, metadata !568} ; [ DW_TAG_member ] [bl] [line 115, size 32, align 32, offset 96] [from ]
!568 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !569} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from BlockCnt]
!569 = metadata !{i32 786451, metadata !146, null, metadata !"BlockCnt", i32 48, i64 128, i64 32, i32 0, i32 0, null, metadata !570, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [BlockCnt] [line 48, size 128, align 32, offset 0] [def] [from ]
!570 = metadata !{metadata !571, metadata !572, metadata !573, metadata !574, metadata !575, metadata !576}
!571 = metadata !{i32 786445, metadata !146, metadata !569, metadata !"previous", i32 49, i64 32, i64 32, i64 0, i32 0, metadata !568} ; [ DW_TAG_member ] [previous] [line 49, size 32, align 32, offset 0] [from ]
!572 = metadata !{i32 786445, metadata !146, metadata !569, metadata !"firstlabel", i32 50, i64 32, i64 32, i64 32, i32 0, metadata !181} ; [ DW_TAG_member ] [firstlabel] [line 50, size 32, align 32, offset 32] [from int]
!573 = metadata !{i32 786445, metadata !146, metadata !569, metadata !"firstgoto", i32 51, i64 32, i64 32, i64 64, i32 0, metadata !181} ; [ DW_TAG_member ] [firstgoto] [line 51, size 32, align 32, offset 64] [from int]
!574 = metadata !{i32 786445, metadata !146, metadata !569, metadata !"nactvar", i32 52, i64 8, i64 8, i64 96, i32 0, metadata !162} ; [ DW_TAG_member ] [nactvar] [line 52, size 8, align 8, offset 96] [from lu_byte]
!575 = metadata !{i32 786445, metadata !146, metadata !569, metadata !"upval", i32 53, i64 8, i64 8, i64 104, i32 0, metadata !162} ; [ DW_TAG_member ] [upval] [line 53, size 8, align 8, offset 104] [from lu_byte]
!576 = metadata !{i32 786445, metadata !146, metadata !569, metadata !"isloop", i32 54, i64 8, i64 8, i64 112, i32 0, metadata !162} ; [ DW_TAG_member ] [isloop] [line 54, size 8, align 8, offset 112] [from lu_byte]
!577 = metadata !{i32 786445, metadata !4, metadata !559, metadata !"pc", i32 116, i64 32, i64 32, i64 128, i32 0, metadata !181} ; [ DW_TAG_member ] [pc] [line 116, size 32, align 32, offset 128] [from int]
!578 = metadata !{i32 786445, metadata !4, metadata !559, metadata !"lasttarget", i32 117, i64 32, i64 32, i64 160, i32 0, metadata !181} ; [ DW_TAG_member ] [lasttarget] [line 117, size 32, align 32, offset 160] [from int]
!579 = metadata !{i32 786445, metadata !4, metadata !559, metadata !"jpc", i32 118, i64 32, i64 32, i64 192, i32 0, metadata !181} ; [ DW_TAG_member ] [jpc] [line 118, size 32, align 32, offset 192] [from int]
!580 = metadata !{i32 786445, metadata !4, metadata !559, metadata !"nk", i32 119, i64 32, i64 32, i64 224, i32 0, metadata !181} ; [ DW_TAG_member ] [nk] [line 119, size 32, align 32, offset 224] [from int]
!581 = metadata !{i32 786445, metadata !4, metadata !559, metadata !"np", i32 120, i64 32, i64 32, i64 256, i32 0, metadata !181} ; [ DW_TAG_member ] [np] [line 120, size 32, align 32, offset 256] [from int]
!582 = metadata !{i32 786445, metadata !4, metadata !559, metadata !"firstlocal", i32 121, i64 32, i64 32, i64 288, i32 0, metadata !181} ; [ DW_TAG_member ] [firstlocal] [line 121, size 32, align 32, offset 288] [from int]
!583 = metadata !{i32 786445, metadata !4, metadata !559, metadata !"nlocvars", i32 122, i64 16, i64 16, i64 320, i32 0, metadata !375} ; [ DW_TAG_member ] [nlocvars] [line 122, size 16, align 16, offset 320] [from short]
!584 = metadata !{i32 786445, metadata !4, metadata !559, metadata !"nactvar", i32 123, i64 8, i64 8, i64 336, i32 0, metadata !162} ; [ DW_TAG_member ] [nactvar] [line 123, size 8, align 8, offset 336] [from lu_byte]
!585 = metadata !{i32 786445, metadata !4, metadata !559, metadata !"nups", i32 124, i64 8, i64 8, i64 344, i32 0, metadata !162} ; [ DW_TAG_member ] [nups] [line 124, size 8, align 8, offset 344] [from lu_byte]
!586 = metadata !{i32 786445, metadata !4, metadata !559, metadata !"freereg", i32 125, i64 8, i64 8, i64 352, i32 0, metadata !162} ; [ DW_TAG_member ] [freereg] [line 125, size 8, align 8, offset 352] [from lu_byte]
!587 = metadata !{i32 786445, metadata !22, metadata !539, metadata !"L", i32 65, i64 32, i64 32, i64 416, i32 0, metadata !284} ; [ DW_TAG_member ] [L] [line 65, size 32, align 32, offset 416] [from ]
!588 = metadata !{i32 786445, metadata !22, metadata !539, metadata !"z", i32 66, i64 32, i64 32, i64 448, i32 0, metadata !480} ; [ DW_TAG_member ] [z] [line 66, size 32, align 32, offset 448] [from ]
!589 = metadata !{i32 786445, metadata !22, metadata !539, metadata !"buff", i32 67, i64 32, i64 32, i64 480, i32 0, metadata !495} ; [ DW_TAG_member ] [buff] [line 67, size 32, align 32, offset 480] [from ]
!590 = metadata !{i32 786445, metadata !22, metadata !539, metadata !"h", i32 68, i64 32, i64 32, i64 512, i32 0, metadata !591} ; [ DW_TAG_member ] [h] [line 68, size 32, align 32, offset 512] [from ]
!591 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !592} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from Table]
!592 = metadata !{i32 786454, metadata !152, null, metadata !"Table", i32 507, i64 0, i64 0, i64 0, i32 0, metadata !303} ; [ DW_TAG_typedef ] [Table] [line 507, size 0, align 0, offset 0] [from Table]
!593 = metadata !{i32 786445, metadata !22, metadata !539, metadata !"dyd", i32 69, i64 32, i64 32, i64 544, i32 0, metadata !594} ; [ DW_TAG_member ] [dyd] [line 69, size 32, align 32, offset 544] [from ]
!594 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !505} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from Dyndata]
!595 = metadata !{i32 786445, metadata !22, metadata !539, metadata !"source", i32 70, i64 32, i64 32, i64 576, i32 0, metadata !248} ; [ DW_TAG_member ] [source] [line 70, size 32, align 32, offset 576] [from ]
!596 = metadata !{i32 786445, metadata !22, metadata !539, metadata !"envn", i32 71, i64 32, i64 32, i64 608, i32 0, metadata !248} ; [ DW_TAG_member ] [envn] [line 71, size 32, align 32, offset 608] [from ]
!597 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !598} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from FuncState]
!598 = metadata !{i32 786454, metadata !4, null, metadata !"FuncState", i32 126, i64 0, i64 0, i64 0, i32 0, metadata !559} ; [ DW_TAG_typedef ] [FuncState] [line 126, size 0, align 0, offset 0] [from FuncState]
!599 = metadata !{i32 786478, metadata !146, metadata !147, metadata !"close_func", metadata !"close_func", metadata !"", i32 550, metadata !600, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.LexState*)* @close_func, null, null, metadata !143, i32 550} ; [ DW_TAG_subprogram ] [line 550] [local] [def] [close_func]
!600 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !601, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!601 = metadata !{null, metadata !537}
!602 = metadata !{i32 786478, metadata !146, metadata !147, metadata !"leaveblock", metadata !"leaveblock", metadata !"", i32 471, metadata !603, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.FuncState*)* @leaveblock, null, null, metadata !143, i32 471} ; [ DW_TAG_subprogram ] [line 471] [local] [def] [leaveblock]
!603 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !604, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!604 = metadata !{null, metadata !597}
!605 = metadata !{i32 786478, metadata !146, metadata !147, metadata !"undefgoto", metadata !"undefgoto", metadata !"", i32 462, metadata !606, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.LexState*, %struct.Labeldesc*)* @undefgoto, null, null, metadata !143, i32 462} ; [ DW_TAG_subprogram ] [line 462] [local] [def] [undefgoto]
!606 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !607, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!607 = metadata !{null, metadata !537, metadata !523}
!608 = metadata !{i32 786478, metadata !146, metadata !147, metadata !"semerror", metadata !"semerror", metadata !"", i32 67, metadata !609, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.LexState*, i8*)* @semerror, null, null, metadata !143, i32 67} ; [ DW_TAG_subprogram ] [line 67] [local] [def] [semerror]
!609 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !610, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!610 = metadata !{null, metadata !537, metadata !415}
!611 = metadata !{i32 786478, metadata !146, metadata !147, metadata !"movegotosout", metadata !"movegotosout", metadata !"", i32 419, metadata !612, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.FuncState*, %struct.BlockCnt*)* @movegotosout, null, null, metadata !143, i32 419} ; [ DW_TAG_subprogram ] [line 419] [local] [def] [movegotosout]
!612 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !613, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!613 = metadata !{null, metadata !597, metadata !614}
!614 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !615} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from BlockCnt]
!615 = metadata !{i32 786454, metadata !146, null, metadata !"BlockCnt", i32 55, i64 0, i64 0, i64 0, i32 0, metadata !569} ; [ DW_TAG_typedef ] [BlockCnt] [line 55, size 0, align 0, offset 0] [from BlockCnt]
!616 = metadata !{i32 786478, metadata !146, metadata !147, metadata !"findlabel", metadata !"findlabel", metadata !"", i32 363, metadata !617, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.LexState*, i32)* @findlabel, null, null, metadata !143, i32 363} ; [ DW_TAG_subprogram ] [line 363] [local] [def] [findlabel]
!617 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !618, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!618 = metadata !{metadata !181, metadata !537, metadata !181}
!619 = metadata !{i32 786478, metadata !146, metadata !147, metadata !"closegoto", metadata !"closegoto", metadata !"", i32 339, metadata !620, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.LexState*, i32, %struct.Labeldesc*)* @closegoto, null, null, metadata !143, i32 339} ; [ DW_TAG_subprogram ] [line 339] [local] [def] [closegoto]
!620 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !621, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!621 = metadata !{null, metadata !537, metadata !181, metadata !523}
!622 = metadata !{i32 786478, metadata !146, metadata !147, metadata !"getlocvar", metadata !"getlocvar", metadata !"", i32 195, metadata !623, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, %struct.LocVar* (%struct.FuncState*, i32)* @getlocvar, null, null, metadata !143, i32 195} ; [ DW_TAG_subprogram ] [line 195] [local] [def] [getlocvar]
!623 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !624, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!624 = metadata !{metadata !457, metadata !597, metadata !181}
!625 = metadata !{i32 786478, metadata !146, metadata !147, metadata !"removevars", metadata !"removevars", metadata !"", i32 211, metadata !626, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.FuncState*, i32)* @removevars, null, null, metadata !143, i32 211} ; [ DW_TAG_subprogram ] [line 211] [local] [def] [removevars]
!626 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !627, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!627 = metadata !{null, metadata !597, metadata !181}
!628 = metadata !{i32 786478, metadata !146, metadata !147, metadata !"breaklabel", metadata !"breaklabel", metadata !"", i32 452, metadata !600, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.LexState*)* @breaklabel, null, null, metadata !143, i32 452} ; [ DW_TAG_subprogram ] [line 452] [local] [def] [breaklabel]
!629 = metadata !{i32 786478, metadata !146, metadata !147, metadata !"findgotos", metadata !"findgotos", metadata !"", i32 401, metadata !606, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.LexState*, %struct.Labeldesc*)* @findgotos, null, null, metadata !143, i32 401} ; [ DW_TAG_subprogram ] [line 401] [local] [def] [findgotos]
!630 = metadata !{i32 786478, metadata !146, metadata !147, metadata !"newlabelentry", metadata !"newlabelentry", metadata !"", i32 383, metadata !631, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.LexState*, %struct.Labellist*, %struct.TString*, i32, i32)* @newlabelentry, null, null, metadata !143, i32 384} ; [ DW_TAG_subprogram ] [line 383] [local] [def] [scope 384] [newlabelentry]
!631 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !632, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!632 = metadata !{metadata !181, metadata !537, metadata !633, metadata !248, metadata !181, metadata !181}
!633 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !519} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from Labellist]
!634 = metadata !{i32 786478, metadata !146, metadata !147, metadata !"check", metadata !"check", metadata !"", i32 106, metadata !635, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.LexState*, i32)* @check, null, null, metadata !143, i32 106} ; [ DW_TAG_subprogram ] [line 106] [local] [def] [check]
!635 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !636, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!636 = metadata !{null, metadata !537, metadata !181}
!637 = metadata !{i32 786478, metadata !146, metadata !147, metadata !"error_expected", metadata !"error_expected", metadata !"", i32 73, metadata !635, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.LexState*, i32)* @error_expected, null, null, metadata !143, i32 73} ; [ DW_TAG_subprogram ] [line 73] [local] [def] [error_expected]
!638 = metadata !{i32 786478, metadata !146, metadata !147, metadata !"statlist", metadata !"statlist", metadata !"", i32 596, metadata !600, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.LexState*)* @statlist, null, null, metadata !143, i32 596} ; [ DW_TAG_subprogram ] [line 596] [local] [def] [statlist]
!639 = metadata !{i32 786478, metadata !146, metadata !147, metadata !"statement", metadata !"statement", metadata !"", i32 1539, metadata !600, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.LexState*)* @statement, null, null, metadata !143, i32 1539} ; [ DW_TAG_subprogram ] [line 1539] [local] [def] [statement]
!640 = metadata !{i32 786478, metadata !146, metadata !147, metadata !"exprstat", metadata !"exprstat", metadata !"", i32 1490, metadata !600, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.LexState*)* @exprstat, null, null, metadata !143, i32 1490} ; [ DW_TAG_subprogram ] [line 1490] [local] [def] [exprstat]
!641 = metadata !{i32 786478, metadata !146, metadata !147, metadata !"assignment", metadata !"assignment", metadata !"", i32 1146, metadata !642, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.LexState*, %struct.LHS_assign*, i32)* @assignment, null, null, metadata !143, i32 1146} ; [ DW_TAG_subprogram ] [line 1146] [local] [def] [assignment]
!642 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !643, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!643 = metadata !{null, metadata !537, metadata !644, metadata !181}
!644 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !645} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from LHS_assign]
!645 = metadata !{i32 786451, metadata !146, null, metadata !"LHS_assign", i32 1106, i64 256, i64 64, i32 0, i32 0, null, metadata !646, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [LHS_assign] [line 1106, size 256, align 64, offset 0] [def] [from ]
!646 = metadata !{metadata !647, metadata !648}
!647 = metadata !{i32 786445, metadata !146, metadata !645, metadata !"prev", i32 1107, i64 32, i64 32, i64 0, i32 0, metadata !644} ; [ DW_TAG_member ] [prev] [line 1107, size 32, align 32, offset 0] [from ]
!648 = metadata !{i32 786445, metadata !146, metadata !645, metadata !"v", i32 1108, i64 192, i64 64, i64 64, i32 0, metadata !649} ; [ DW_TAG_member ] [v] [line 1108, size 192, align 64, offset 64] [from expdesc]
!649 = metadata !{i32 786454, metadata !4, null, metadata !"expdesc", i32 68, i64 0, i64 0, i64 0, i32 0, metadata !650} ; [ DW_TAG_typedef ] [expdesc] [line 68, size 0, align 0, offset 0] [from expdesc]
!650 = metadata !{i32 786451, metadata !4, null, metadata !"expdesc", i32 54, i64 192, i64 64, i32 0, i32 0, null, metadata !651, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [expdesc] [line 54, size 192, align 64, offset 0] [def] [from ]
!651 = metadata !{metadata !652, metadata !654, metadata !666, metadata !667}
!652 = metadata !{i32 786445, metadata !4, metadata !650, metadata !"k", i32 55, i64 32, i64 32, i64 0, i32 0, metadata !653} ; [ DW_TAG_member ] [k] [line 55, size 32, align 32, offset 0] [from expkind]
!653 = metadata !{i32 786454, metadata !4, null, metadata !"expkind", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !3} ; [ DW_TAG_typedef ] [expkind] [line 48, size 0, align 0, offset 0] [from ]
!654 = metadata !{i32 786445, metadata !4, metadata !650, metadata !"u", i32 65, i64 64, i64 64, i64 64, i32 0, metadata !655} ; [ DW_TAG_member ] [u] [line 65, size 64, align 64, offset 64] [from ]
!655 = metadata !{i32 786455, metadata !4, metadata !650, metadata !"", i32 56, i64 64, i64 64, i64 0, i32 0, null, metadata !656, i32 0, null, null, null} ; [ DW_TAG_union_type ] [line 56, size 64, align 64, offset 0] [def] [from ]
!656 = metadata !{metadata !657, metadata !658, metadata !659, metadata !660}
!657 = metadata !{i32 786445, metadata !4, metadata !655, metadata !"ival", i32 57, i64 64, i64 64, i64 0, i32 0, metadata !446} ; [ DW_TAG_member ] [ival] [line 57, size 64, align 64, offset 0] [from lua_Integer]
!658 = metadata !{i32 786445, metadata !4, metadata !655, metadata !"nval", i32 58, i64 64, i64 64, i64 0, i32 0, metadata !293} ; [ DW_TAG_member ] [nval] [line 58, size 64, align 64, offset 0] [from lua_Number]
!659 = metadata !{i32 786445, metadata !4, metadata !655, metadata !"info", i32 59, i64 32, i64 32, i64 0, i32 0, metadata !181} ; [ DW_TAG_member ] [info] [line 59, size 32, align 32, offset 0] [from int]
!660 = metadata !{i32 786445, metadata !4, metadata !655, metadata !"ind", i32 64, i64 32, i64 16, i64 0, i32 0, metadata !661} ; [ DW_TAG_member ] [ind] [line 64, size 32, align 16, offset 0] [from ]
!661 = metadata !{i32 786451, metadata !4, metadata !655, metadata !"", i32 60, i64 32, i64 16, i32 0, i32 0, null, metadata !662, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 60, size 32, align 16, offset 0] [def] [from ]
!662 = metadata !{metadata !663, metadata !664, metadata !665}
!663 = metadata !{i32 786445, metadata !4, metadata !661, metadata !"idx", i32 61, i64 16, i64 16, i64 0, i32 0, metadata !375} ; [ DW_TAG_member ] [idx] [line 61, size 16, align 16, offset 0] [from short]
!664 = metadata !{i32 786445, metadata !4, metadata !661, metadata !"t", i32 62, i64 8, i64 8, i64 16, i32 0, metadata !162} ; [ DW_TAG_member ] [t] [line 62, size 8, align 8, offset 16] [from lu_byte]
!665 = metadata !{i32 786445, metadata !4, metadata !661, metadata !"vt", i32 63, i64 8, i64 8, i64 24, i32 0, metadata !162} ; [ DW_TAG_member ] [vt] [line 63, size 8, align 8, offset 24] [from lu_byte]
!666 = metadata !{i32 786445, metadata !4, metadata !650, metadata !"t", i32 66, i64 32, i64 32, i64 128, i32 0, metadata !181} ; [ DW_TAG_member ] [t] [line 66, size 32, align 32, offset 128] [from int]
!667 = metadata !{i32 786445, metadata !4, metadata !650, metadata !"f", i32 67, i64 32, i64 32, i64 160, i32 0, metadata !181} ; [ DW_TAG_member ] [f] [line 67, size 32, align 32, offset 160] [from int]
!668 = metadata !{i32 786478, metadata !146, metadata !147, metadata !"adjust_assign", metadata !"adjust_assign", metadata !"", i32 309, metadata !669, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.LexState*, i32, i32, %struct.expdesc*)* @adjust_assign, null, null, metadata !143, i32 309} ; [ DW_TAG_subprogram ] [line 309] [local] [def] [adjust_assign]
!669 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !670, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!670 = metadata !{null, metadata !537, metadata !181, metadata !181, metadata !671}
!671 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !649} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from expdesc]
!672 = metadata !{i32 786478, metadata !146, metadata !147, metadata !"explist", metadata !"explist", metadata !"", i32 802, metadata !673, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.LexState*, %struct.expdesc*)* @explist, null, null, metadata !143, i32 802} ; [ DW_TAG_subprogram ] [line 802] [local] [def] [explist]
!673 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !674, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!674 = metadata !{metadata !181, metadata !537, metadata !671}
!675 = metadata !{i32 786478, metadata !146, metadata !147, metadata !"expr", metadata !"expr", metadata !"", i32 1077, metadata !676, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.LexState*, %struct.expdesc*)* @expr, null, null, metadata !143, i32 1077} ; [ DW_TAG_subprogram ] [line 1077] [local] [def] [expr]
!676 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !677, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!677 = metadata !{null, metadata !537, metadata !671}
!678 = metadata !{i32 786478, metadata !146, metadata !147, metadata !"subexpr", metadata !"subexpr", metadata !"", i32 1047, metadata !679, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.LexState*, %struct.expdesc*, i32)* @subexpr, null, null, metadata !143, i32 1047} ; [ DW_TAG_subprogram ] [line 1047] [local] [def] [subexpr]
!679 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !680, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!680 = metadata !{metadata !681, metadata !537, metadata !671, metadata !181}
!681 = metadata !{i32 786454, metadata !62, null, metadata !"BinOpr", i32 37, i64 0, i64 0, i64 0, i32 0, metadata !61} ; [ DW_TAG_typedef ] [BinOpr] [line 37, size 0, align 0, offset 0] [from BinOpr]
!682 = metadata !{i32 786478, metadata !146, metadata !147, metadata !"getbinopr", metadata !"getbinopr", metadata !"", i32 996, metadata !683, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @getbinopr, null, null, metadata !143, i32 996} ; [ DW_TAG_subprogram ] [line 996] [local] [def] [getbinopr]
!683 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !684, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!684 = metadata !{metadata !681, metadata !181}
!685 = metadata !{i32 786478, metadata !146, metadata !147, metadata !"simpleexp", metadata !"simpleexp", metadata !"", i32 929, metadata !676, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.LexState*, %struct.expdesc*)* @simpleexp, null, null, metadata !143, i32 929} ; [ DW_TAG_subprogram ] [line 929] [local] [def] [simpleexp]
!686 = metadata !{i32 786478, metadata !146, metadata !147, metadata !"body", metadata !"body", metadata !"", i32 780, metadata !687, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.LexState*, %struct.expdesc*, i32, i32)* @body, null, null, metadata !143, i32 780} ; [ DW_TAG_subprogram ] [line 780] [local] [def] [body]
!687 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !688, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!688 = metadata !{null, metadata !537, metadata !671, metadata !181, metadata !181}
!689 = metadata !{i32 786478, metadata !146, metadata !147, metadata !"codeclosure", metadata !"codeclosure", metadata !"", i32 520, metadata !676, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.LexState*, %struct.expdesc*)* @codeclosure, null, null, metadata !143, i32 520} ; [ DW_TAG_subprogram ] [line 520] [local] [def] [codeclosure]
!690 = metadata !{i32 786478, metadata !146, metadata !147, metadata !"parlist", metadata !"parlist", metadata !"", i32 751, metadata !600, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.LexState*)* @parlist, null, null, metadata !143, i32 751} ; [ DW_TAG_subprogram ] [line 751] [local] [def] [parlist]
!691 = metadata !{i32 786478, metadata !146, metadata !147, metadata !"new_localvar", metadata !"new_localvar", metadata !"", i32 175, metadata !692, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.LexState*, %struct.TString*)* @new_localvar, null, null, metadata !143, i32 175} ; [ DW_TAG_subprogram ] [line 175] [local] [def] [new_localvar]
!692 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !693, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!693 = metadata !{null, metadata !537, metadata !248}
!694 = metadata !{i32 786478, metadata !146, metadata !147, metadata !"registerlocalvar", metadata !"registerlocalvar", metadata !"", i32 161, metadata !695, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.LexState*, %struct.TString*)* @registerlocalvar, null, null, metadata !143, i32 161} ; [ DW_TAG_subprogram ] [line 161] [local] [def] [registerlocalvar]
!695 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !696, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!696 = metadata !{metadata !181, metadata !537, metadata !248}
!697 = metadata !{i32 786478, metadata !146, metadata !147, metadata !"adjustlocalvars", metadata !"adjustlocalvars", metadata !"", i32 202, metadata !635, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.LexState*, i32)* @adjustlocalvars, null, null, metadata !143, i32 202} ; [ DW_TAG_subprogram ] [line 202] [local] [def] [adjustlocalvars]
!698 = metadata !{i32 786478, metadata !146, metadata !147, metadata !"new_localvarliteral_", metadata !"new_localvarliteral_", metadata !"", i32 187, metadata !699, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.LexState*, i8*, i32)* @new_localvarliteral_, null, null, metadata !143, i32 187} ; [ DW_TAG_subprogram ] [line 187] [local] [def] [new_localvarliteral_]
!699 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !700, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!700 = metadata !{null, metadata !537, metadata !415, metadata !231}
!701 = metadata !{i32 786478, metadata !146, metadata !147, metadata !"addprototype", metadata !"addprototype", metadata !"", i32 497, metadata !702, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, %struct.Proto* (%struct.LexState*)* @addprototype, null, null, metadata !143, i32 497} ; [ DW_TAG_subprogram ] [line 497] [local] [def] [addprototype]
!702 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !703, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!703 = metadata !{metadata !562, metadata !537}
!704 = metadata !{i32 786478, metadata !146, metadata !147, metadata !"constructor", metadata !"constructor", metadata !"", i32 722, metadata !676, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.LexState*, %struct.expdesc*)* @constructor, null, null, metadata !143, i32 722} ; [ DW_TAG_subprogram ] [line 722] [local] [def] [constructor]
!705 = metadata !{i32 786478, metadata !146, metadata !147, metadata !"lastlistfield", metadata !"lastlistfield", metadata !"", i32 676, metadata !706, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.FuncState*, %struct.ConsControl*)* @lastlistfield, null, null, metadata !143, i32 676} ; [ DW_TAG_subprogram ] [line 676] [local] [def] [lastlistfield]
!706 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !707, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!707 = metadata !{null, metadata !597, metadata !708}
!708 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !709} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ConsControl]
!709 = metadata !{i32 786451, metadata !146, null, metadata !"ConsControl", i32 635, i64 320, i64 64, i32 0, i32 0, null, metadata !710, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [ConsControl] [line 635, size 320, align 64, offset 0] [def] [from ]
!710 = metadata !{metadata !711, metadata !712, metadata !713, metadata !714, metadata !715}
!711 = metadata !{i32 786445, metadata !146, metadata !709, metadata !"v", i32 636, i64 192, i64 64, i64 0, i32 0, metadata !649} ; [ DW_TAG_member ] [v] [line 636, size 192, align 64, offset 0] [from expdesc]
!712 = metadata !{i32 786445, metadata !146, metadata !709, metadata !"t", i32 637, i64 32, i64 32, i64 192, i32 0, metadata !671} ; [ DW_TAG_member ] [t] [line 637, size 32, align 32, offset 192] [from ]
!713 = metadata !{i32 786445, metadata !146, metadata !709, metadata !"nh", i32 638, i64 32, i64 32, i64 224, i32 0, metadata !181} ; [ DW_TAG_member ] [nh] [line 638, size 32, align 32, offset 224] [from int]
!714 = metadata !{i32 786445, metadata !146, metadata !709, metadata !"na", i32 639, i64 32, i64 32, i64 256, i32 0, metadata !181} ; [ DW_TAG_member ] [na] [line 639, size 32, align 32, offset 256] [from int]
!715 = metadata !{i32 786445, metadata !146, metadata !709, metadata !"tostore", i32 640, i64 32, i64 32, i64 288, i32 0, metadata !181} ; [ DW_TAG_member ] [tostore] [line 640, size 32, align 32, offset 288] [from int]
!716 = metadata !{i32 786478, metadata !146, metadata !147, metadata !"field", metadata !"field", metadata !"", i32 700, metadata !717, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.LexState*, %struct.ConsControl*)* @field, null, null, metadata !143, i32 700} ; [ DW_TAG_subprogram ] [line 700] [local] [def] [field]
!717 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !718, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!718 = metadata !{null, metadata !537, metadata !708}
!719 = metadata !{i32 786478, metadata !146, metadata !147, metadata !"recfield", metadata !"recfield", metadata !"", i32 644, metadata !717, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.LexState*, %struct.ConsControl*)* @recfield, null, null, metadata !143, i32 644} ; [ DW_TAG_subprogram ] [line 644] [local] [def] [recfield]
!720 = metadata !{i32 786478, metadata !146, metadata !147, metadata !"yindex", metadata !"yindex", metadata !"", i32 619, metadata !676, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.LexState*, %struct.expdesc*)* @yindex, null, null, metadata !143, i32 619} ; [ DW_TAG_subprogram ] [line 619] [local] [def] [yindex]
!721 = metadata !{i32 786478, metadata !146, metadata !147, metadata !"checkname", metadata !"checkname", metadata !"", i32 156, metadata !676, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.LexState*, %struct.expdesc*)* @checkname, null, null, metadata !143, i32 156} ; [ DW_TAG_subprogram ] [line 156] [local] [def] [checkname]
!722 = metadata !{i32 786478, metadata !146, metadata !147, metadata !"listfield", metadata !"listfield", metadata !"", i32 691, metadata !717, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.LexState*, %struct.ConsControl*)* @listfield, null, null, metadata !143, i32 691} ; [ DW_TAG_subprogram ] [line 691] [local] [def] [listfield]
!723 = metadata !{i32 786478, metadata !146, metadata !147, metadata !"closelistfield", metadata !"closelistfield", metadata !"", i32 665, metadata !706, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.FuncState*, %struct.ConsControl*)* @closelistfield, null, null, metadata !143, i32 665} ; [ DW_TAG_subprogram ] [line 665] [local] [def] [closelistfield]
!724 = metadata !{i32 786478, metadata !146, metadata !147, metadata !"codestring", metadata !"codestring", metadata !"", i32 151, metadata !725, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.LexState*, %struct.expdesc*, %struct.TString*)* @codestring, null, null, metadata !143, i32 151} ; [ DW_TAG_subprogram ] [line 151] [local] [def] [codestring]
!725 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !726, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!726 = metadata !{null, metadata !537, metadata !671, metadata !248}
!727 = metadata !{i32 786478, metadata !146, metadata !147, metadata !"getunopr", metadata !"getunopr", metadata !"", i32 985, metadata !728, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @getunopr, null, null, metadata !143, i32 985} ; [ DW_TAG_subprogram ] [line 985] [local] [def] [getunopr]
!728 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !729, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!729 = metadata !{metadata !730, metadata !181}
!730 = metadata !{i32 786454, metadata !62, null, metadata !"UnOpr", i32 40, i64 0, i64 0, i64 0, i32 0, metadata !86} ; [ DW_TAG_typedef ] [UnOpr] [line 40, size 0, align 0, offset 0] [from UnOpr]
!731 = metadata !{i32 786478, metadata !146, metadata !147, metadata !"checknext", metadata !"checknext", metadata !"", i32 112, metadata !635, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.LexState*, i32)* @checknext, null, null, metadata !143, i32 112} ; [ DW_TAG_subprogram ] [line 112] [local] [def] [checknext]
!732 = metadata !{i32 786478, metadata !146, metadata !147, metadata !"checklimit", metadata !"checklimit", metadata !"", i32 92, metadata !733, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.FuncState*, i32, i32, i8*)* @checklimit, null, null, metadata !143, i32 92} ; [ DW_TAG_subprogram ] [line 92] [local] [def] [checklimit]
!733 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !734, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!734 = metadata !{null, metadata !597, metadata !181, metadata !181, metadata !415}
!735 = metadata !{i32 786478, metadata !146, metadata !147, metadata !"errorlimit", metadata !"errorlimit", metadata !"", i32 79, metadata !736, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.FuncState*, i32, i8*)* @errorlimit, null, null, metadata !143, i32 79} ; [ DW_TAG_subprogram ] [line 79] [local] [def] [errorlimit]
!736 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !737, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!737 = metadata !{null, metadata !597, metadata !181, metadata !415}
!738 = metadata !{i32 786478, metadata !146, metadata !147, metadata !"check_conflict", metadata !"check_conflict", metadata !"", i32 1118, metadata !739, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.LexState*, %struct.LHS_assign*, %struct.expdesc*)* @check_conflict, null, null, metadata !143, i32 1118} ; [ DW_TAG_subprogram ] [line 1118] [local] [def] [check_conflict]
!739 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !740, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!740 = metadata !{null, metadata !537, metadata !644, metadata !671}
!741 = metadata !{i32 786478, metadata !146, metadata !147, metadata !"suffixedexp", metadata !"suffixedexp", metadata !"", i32 891, metadata !676, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.LexState*, %struct.expdesc*)* @suffixedexp, null, null, metadata !143, i32 891} ; [ DW_TAG_subprogram ] [line 891] [local] [def] [suffixedexp]
!742 = metadata !{i32 786478, metadata !146, metadata !147, metadata !"funcargs", metadata !"funcargs", metadata !"", i32 815, metadata !743, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.LexState*, %struct.expdesc*, i32)* @funcargs, null, null, metadata !143, i32 815} ; [ DW_TAG_subprogram ] [line 815] [local] [def] [funcargs]
!743 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !744, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!744 = metadata !{null, metadata !537, metadata !671, metadata !181}
!745 = metadata !{i32 786478, metadata !146, metadata !147, metadata !"fieldsel", metadata !"fieldsel", metadata !"", i32 608, metadata !676, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.LexState*, %struct.expdesc*)* @fieldsel, null, null, metadata !143, i32 608} ; [ DW_TAG_subprogram ] [line 608] [local] [def] [fieldsel]
!746 = metadata !{i32 786478, metadata !146, metadata !147, metadata !"primaryexp", metadata !"primaryexp", metadata !"", i32 869, metadata !676, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.LexState*, %struct.expdesc*)* @primaryexp, null, null, metadata !143, i32 869} ; [ DW_TAG_subprogram ] [line 869] [local] [def] [primaryexp]
!747 = metadata !{i32 786478, metadata !146, metadata !147, metadata !"singlevar", metadata !"singlevar", metadata !"", i32 295, metadata !676, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.LexState*, %struct.expdesc*)* @singlevar, null, null, metadata !143, i32 295} ; [ DW_TAG_subprogram ] [line 295] [local] [def] [singlevar]
!748 = metadata !{i32 786478, metadata !146, metadata !147, metadata !"singlevaraux", metadata !"singlevaraux", metadata !"", i32 270, metadata !749, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.FuncState*, %struct.TString*, %struct.expdesc*, i32)* @singlevaraux, null, null, metadata !143, i32 270} ; [ DW_TAG_subprogram ] [line 270] [local] [def] [singlevaraux]
!749 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !750, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!750 = metadata !{null, metadata !597, metadata !248, metadata !671, metadata !181}
!751 = metadata !{i32 786478, metadata !146, metadata !147, metadata !"searchupvalue", metadata !"searchupvalue", metadata !"", i32 218, metadata !752, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.FuncState*, %struct.TString*)* @searchupvalue, null, null, metadata !143, i32 218} ; [ DW_TAG_subprogram ] [line 218] [local] [def] [searchupvalue]
!752 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !753, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!753 = metadata !{metadata !181, metadata !597, metadata !248}
!754 = metadata !{i32 786478, metadata !146, metadata !147, metadata !"markupval", metadata !"markupval", metadata !"", i32 258, metadata !626, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.FuncState*, i32)* @markupval, null, null, metadata !143, i32 258} ; [ DW_TAG_subprogram ] [line 258] [local] [def] [markupval]
!755 = metadata !{i32 786478, metadata !146, metadata !147, metadata !"searchvar", metadata !"searchvar", metadata !"", i32 244, metadata !752, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.FuncState*, %struct.TString*)* @searchvar, null, null, metadata !143, i32 244} ; [ DW_TAG_subprogram ] [line 244] [local] [def] [searchvar]
!756 = metadata !{i32 786478, metadata !146, metadata !147, metadata !"gotostat", metadata !"gotostat", metadata !"", i32 1189, metadata !635, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.LexState*, i32)* @gotostat, null, null, metadata !143, i32 1189} ; [ DW_TAG_subprogram ] [line 1189] [local] [def] [gotostat]
!757 = metadata !{i32 786478, metadata !146, metadata !147, metadata !"retstat", metadata !"retstat", metadata !"", i32 1506, metadata !600, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.LexState*)* @retstat, null, null, metadata !143, i32 1506} ; [ DW_TAG_subprogram ] [line 1506] [local] [def] [retstat]
!758 = metadata !{i32 786478, metadata !146, metadata !147, metadata !"str_checkname", metadata !"str_checkname", metadata !"", i32 135, metadata !759, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, %struct.TString* (%struct.LexState*)* @str_checkname, null, null, metadata !143, i32 135} ; [ DW_TAG_subprogram ] [line 135] [local] [def] [str_checkname]
!759 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !760, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!760 = metadata !{metadata !248, metadata !537}
!761 = metadata !{i32 786478, metadata !146, metadata !147, metadata !"labelstat", metadata !"labelstat", metadata !"", i32 1225, metadata !762, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.LexState*, %struct.TString*, i32)* @labelstat, null, null, metadata !143, i32 1225} ; [ DW_TAG_subprogram ] [line 1225] [local] [def] [labelstat]
!762 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !763, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!763 = metadata !{null, metadata !537, metadata !248, metadata !181}
!764 = metadata !{i32 786478, metadata !146, metadata !147, metadata !"skipnoopstat", metadata !"skipnoopstat", metadata !"", i32 1219, metadata !600, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.LexState*)* @skipnoopstat, null, null, metadata !143, i32 1219} ; [ DW_TAG_subprogram ] [line 1219] [local] [def] [skipnoopstat]
!765 = metadata !{i32 786478, metadata !146, metadata !147, metadata !"checkrepeated", metadata !"checkrepeated", metadata !"", i32 1205, metadata !766, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.FuncState*, %struct.Labellist*, %struct.TString*)* @checkrepeated, null, null, metadata !143, i32 1205} ; [ DW_TAG_subprogram ] [line 1205] [local] [def] [checkrepeated]
!766 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !767, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!767 = metadata !{null, metadata !597, metadata !633, metadata !248}
!768 = metadata !{i32 786478, metadata !146, metadata !147, metadata !"localstat", metadata !"localstat", metadata !"", i32 1444, metadata !600, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.LexState*)* @localstat, null, null, metadata !143, i32 1444} ; [ DW_TAG_subprogram ] [line 1444] [local] [def] [localstat]
!769 = metadata !{i32 786478, metadata !146, metadata !147, metadata !"localfunc", metadata !"localfunc", metadata !"", i32 1433, metadata !600, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.LexState*)* @localfunc, null, null, metadata !143, i32 1433} ; [ DW_TAG_subprogram ] [line 1433] [local] [def] [localfunc]
!770 = metadata !{i32 786478, metadata !146, metadata !147, metadata !"testnext", metadata !"testnext", metadata !"", i32 97, metadata !617, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.LexState*, i32)* @testnext, null, null, metadata !143, i32 97} ; [ DW_TAG_subprogram ] [line 97] [local] [def] [testnext]
!771 = metadata !{i32 786478, metadata !146, metadata !147, metadata !"funcstat", metadata !"funcstat", metadata !"", i32 1478, metadata !635, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.LexState*, i32)* @funcstat, null, null, metadata !143, i32 1478} ; [ DW_TAG_subprogram ] [line 1478] [local] [def] [funcstat]
!772 = metadata !{i32 786478, metadata !146, metadata !147, metadata !"funcname", metadata !"funcname", metadata !"", i32 1464, metadata !673, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.LexState*, %struct.expdesc*)* @funcname, null, null, metadata !143, i32 1464} ; [ DW_TAG_subprogram ] [line 1464] [local] [def] [funcname]
!773 = metadata !{i32 786478, metadata !146, metadata !147, metadata !"repeatstat", metadata !"repeatstat", metadata !"", i32 1262, metadata !635, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.LexState*, i32)* @repeatstat, null, null, metadata !143, i32 1262} ; [ DW_TAG_subprogram ] [line 1262] [local] [def] [repeatstat]
!774 = metadata !{i32 786478, metadata !146, metadata !147, metadata !"cond", metadata !"cond", metadata !"", i32 1179, metadata !775, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.LexState*)* @cond, null, null, metadata !143, i32 1179} ; [ DW_TAG_subprogram ] [line 1179] [local] [def] [cond]
!775 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !776, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!776 = metadata !{metadata !181, metadata !537}
!777 = metadata !{i32 786478, metadata !146, metadata !147, metadata !"enterblock", metadata !"enterblock", metadata !"", i32 437, metadata !778, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.FuncState*, %struct.BlockCnt*, i8)* @enterblock, null, null, metadata !143, i32 437} ; [ DW_TAG_subprogram ] [line 437] [local] [def] [enterblock]
!778 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !779, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!779 = metadata !{null, metadata !597, metadata !614, metadata !162}
!780 = metadata !{i32 786478, metadata !146, metadata !147, metadata !"forstat", metadata !"forstat", metadata !"", i32 1366, metadata !635, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.LexState*, i32)* @forstat, null, null, metadata !143, i32 1366} ; [ DW_TAG_subprogram ] [line 1366] [local] [def] [forstat]
!781 = metadata !{i32 786478, metadata !146, metadata !147, metadata !"forlist", metadata !"forlist", metadata !"", i32 1341, metadata !692, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.LexState*, %struct.TString*)* @forlist, null, null, metadata !143, i32 1341} ; [ DW_TAG_subprogram ] [line 1341] [local] [def] [forlist]
!782 = metadata !{i32 786478, metadata !146, metadata !147, metadata !"forbody", metadata !"forbody", metadata !"", i32 1293, metadata !783, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.LexState*, i32, i32, i32, i32)* @forbody, null, null, metadata !143, i32 1293} ; [ DW_TAG_subprogram ] [line 1293] [local] [def] [forbody]
!783 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !784, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!784 = metadata !{null, metadata !537, metadata !181, metadata !181, metadata !181, metadata !181}
!785 = metadata !{i32 786478, metadata !146, metadata !147, metadata !"fornum", metadata !"fornum", metadata !"", i32 1319, metadata !762, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.LexState*, %struct.TString*, i32)* @fornum, null, null, metadata !143, i32 1319} ; [ DW_TAG_subprogram ] [line 1319] [local] [def] [fornum]
!786 = metadata !{i32 786478, metadata !146, metadata !147, metadata !"exp1", metadata !"exp1", metadata !"", i32 1282, metadata !775, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.LexState*)* @exp1, null, null, metadata !143, i32 1282} ; [ DW_TAG_subprogram ] [line 1282] [local] [def] [exp1]
!787 = metadata !{i32 786478, metadata !146, metadata !147, metadata !"check_match", metadata !"check_match", metadata !"", i32 122, metadata !788, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.LexState*, i32, i32, i32)* @check_match, null, null, metadata !143, i32 122} ; [ DW_TAG_subprogram ] [line 122] [local] [def] [check_match]
!788 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !789, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!789 = metadata !{null, metadata !537, metadata !181, metadata !181, metadata !181}
!790 = metadata !{i32 786478, metadata !146, metadata !147, metadata !"block", metadata !"block", metadata !"", i32 1092, metadata !600, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.LexState*)* @block, null, null, metadata !143, i32 1092} ; [ DW_TAG_subprogram ] [line 1092] [local] [def] [block]
!791 = metadata !{i32 786478, metadata !146, metadata !147, metadata !"whilestat", metadata !"whilestat", metadata !"", i32 1243, metadata !635, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.LexState*, i32)* @whilestat, null, null, metadata !143, i32 1243} ; [ DW_TAG_subprogram ] [line 1243] [local] [def] [whilestat]
!792 = metadata !{i32 786478, metadata !146, metadata !147, metadata !"ifstat", metadata !"ifstat", metadata !"", i32 1419, metadata !635, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.LexState*, i32)* @ifstat, null, null, metadata !143, i32 1419} ; [ DW_TAG_subprogram ] [line 1419] [local] [def] [ifstat]
!793 = metadata !{i32 786478, metadata !146, metadata !147, metadata !"test_then_block", metadata !"test_then_block", metadata !"", i32 1384, metadata !794, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.LexState*, i32*)* @test_then_block, null, null, metadata !143, i32 1384} ; [ DW_TAG_subprogram ] [line 1384] [local] [def] [test_then_block]
!794 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !795, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!795 = metadata !{null, metadata !537, metadata !455}
!796 = metadata !{i32 786478, metadata !146, metadata !147, metadata !"enterlevel", metadata !"enterlevel", metadata !"", i32 329, metadata !600, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.LexState*)* @enterlevel, null, null, metadata !143, i32 329} ; [ DW_TAG_subprogram ] [line 329] [local] [def] [enterlevel]
!797 = metadata !{i32 786478, metadata !146, metadata !147, metadata !"block_follow", metadata !"block_follow", metadata !"", i32 585, metadata !617, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.LexState*, i32)* @block_follow, null, null, metadata !143, i32 585} ; [ DW_TAG_subprogram ] [line 585] [local] [def] [block_follow]
!798 = metadata !{i32 786478, metadata !146, metadata !147, metadata !"newupvalue", metadata !"newupvalue", metadata !"", i32 228, metadata !799, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.FuncState*, %struct.TString*, %struct.expdesc*)* @newupvalue, null, null, metadata !143, i32 228} ; [ DW_TAG_subprogram ] [line 228] [local] [def] [newupvalue]
!799 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !800, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!800 = metadata !{metadata !181, metadata !597, metadata !248, metadata !671}
!801 = metadata !{i32 786478, metadata !146, metadata !147, metadata !"init_exp", metadata !"init_exp", metadata !"", i32 144, metadata !802, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.expdesc*, i32, i32)* @init_exp, null, null, metadata !143, i32 144} ; [ DW_TAG_subprogram ] [line 144] [local] [def] [init_exp]
!802 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !803, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!803 = metadata !{null, metadata !671, metadata !653, metadata !181}
!804 = metadata !{i32 786478, metadata !146, metadata !147, metadata !"open_func", metadata !"open_func", metadata !"", i32 527, metadata !805, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.LexState*, %struct.FuncState*, %struct.BlockCnt*)* @open_func, null, null, metadata !143, i32 527} ; [ DW_TAG_subprogram ] [line 527] [local] [def] [open_func]
!805 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !806, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!806 = metadata !{null, metadata !537, metadata !597, metadata !614}
!807 = metadata !{metadata !808}
!808 = metadata !{i32 786484, i32 0, null, metadata !"priority", metadata !"priority", metadata !"", metadata !147, i32 1027, metadata !809, i32 1, i32 1, [21 x %struct.anon.8]* @priority, null} ; [ DW_TAG_variable ] [priority] [line 1027] [local] [def]
!809 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 336, i64 8, i32 0, i32 0, metadata !810, metadata !815, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 336, align 8, offset 0] [from ]
!810 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !811} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from ]
!811 = metadata !{i32 786451, metadata !146, null, metadata !"", i32 1024, i64 16, i64 8, i32 0, i32 0, null, metadata !812, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [line 1024, size 16, align 8, offset 0] [def] [from ]
!812 = metadata !{metadata !813, metadata !814}
!813 = metadata !{i32 786445, metadata !146, metadata !811, metadata !"left", i32 1025, i64 8, i64 8, i64 0, i32 0, metadata !162} ; [ DW_TAG_member ] [left] [line 1025, size 8, align 8, offset 0] [from lu_byte]
!814 = metadata !{i32 786445, metadata !146, metadata !811, metadata !"right", i32 1026, i64 8, i64 8, i64 8, i32 0, metadata !162} ; [ DW_TAG_member ] [right] [line 1026, size 8, align 8, offset 8] [from lu_byte]
!815 = metadata !{metadata !816}
!816 = metadata !{i32 786465, i64 0, i64 21}      ; [ DW_TAG_subrange_type ] [0, 20]
!817 = metadata !{%struct.LClosure* (%struct.lua_State*, %struct.Zio*, %struct.Mbuffer*, %struct.Dyndata*, i8*, i32)* @luaY_parser}
!818 = metadata !{metadata !"luaY_parser"}
!819 = metadata !{%struct.LClosure* (%struct.lua_State*, i32)* @luaF_newLclosure}
!820 = metadata !{metadata !"luaF_newLclosure"}
!821 = metadata !{void (%struct.lua_State*)* @luaD_inctop}
!822 = metadata !{metadata !"luaD_inctop"}
!823 = metadata !{%struct.Table* (%struct.lua_State*)* @luaH_new}
!824 = metadata !{metadata !"luaH_new"}
!825 = metadata !{%struct.Proto* (%struct.lua_State*)* @luaF_newproto}
!826 = metadata !{metadata !"luaF_newproto"}
!827 = metadata !{%struct.TString* (%struct.lua_State*, i8*)* @luaS_new}
!828 = metadata !{metadata !"luaS_new"}
!829 = metadata !{void (%struct.lua_State*, %struct.LexState*, %struct.Zio*, %struct.TString*, i32)* @luaX_setinput}
!830 = metadata !{metadata !"luaX_setinput"}
!831 = metadata !{void (%struct.LexState*, %struct.FuncState*)* @mainfunc}
!832 = metadata !{metadata !"mainfunc"}
!833 = metadata !{void (%struct.LexState*, %struct.FuncState*, %struct.BlockCnt*)* @open_func}
!834 = metadata !{metadata !"open_func"}
!835 = metadata !{void (%struct.expdesc*, i32, i32)* @init_exp}
!836 = metadata !{metadata !"init_exp"}
!837 = metadata !{i32 (%struct.FuncState*, %struct.TString*, %struct.expdesc*)* @newupvalue}
!838 = metadata !{metadata !"newupvalue"}
!839 = metadata !{void (%struct.LexState*)* @luaX_next}
!840 = metadata !{metadata !"luaX_next"}
!841 = metadata !{void (%struct.LexState*)* @statlist}
!842 = metadata !{metadata !"statlist"}
!843 = metadata !{void (%struct.LexState*, i32)* @check}
!844 = metadata !{metadata !"check"}
!845 = metadata !{void (%struct.LexState*)* @close_func}
!846 = metadata !{metadata !"close_func"}
!847 = metadata !{void (%struct.FuncState*, i32, i32)* @luaK_ret}
!848 = metadata !{metadata !"luaK_ret"}
!849 = metadata !{void (%struct.FuncState*)* @leaveblock}
!850 = metadata !{metadata !"leaveblock"}
!851 = metadata !{void (%struct.lua_State*)* @luaM_toobig}
!852 = metadata !{metadata !"luaM_toobig"}
!853 = metadata !{i8* (%struct.lua_State*, i8*, i32, i32)* @luaM_realloc_}
!854 = metadata !{metadata !"luaM_realloc_"}
!855 = metadata !{void (%struct.lua_State*)* @luaC_step}
!856 = metadata !{metadata !"luaC_step"}
!857 = metadata !{i32 (%struct.FuncState*)* @luaK_jump}
!858 = metadata !{metadata !"luaK_jump"}
!859 = metadata !{void (%struct.FuncState*, i32, i32)* @luaK_patchclose}
!860 = metadata !{metadata !"luaK_patchclose"}
!861 = metadata !{void (%struct.FuncState*, i32)* @luaK_patchtohere}
!862 = metadata !{metadata !"luaK_patchtohere"}
!863 = metadata !{void (%struct.LexState*)* @breaklabel}
!864 = metadata !{metadata !"breaklabel"}
!865 = metadata !{void (%struct.FuncState*, i32)* @removevars}
!866 = metadata !{metadata !"removevars"}
!867 = metadata !{void (%struct.FuncState*, %struct.BlockCnt*)* @movegotosout}
!868 = metadata !{metadata !"movegotosout"}
!869 = metadata !{void (%struct.LexState*, %struct.Labeldesc*)* @undefgoto}
!870 = metadata !{metadata !"undefgoto"}
!871 = metadata !{i8* (%struct.lua_State*, i8*, ...)* @luaO_pushfstring}
!872 = metadata !{metadata !"luaO_pushfstring"}
!873 = metadata !{void (%struct.LexState*, i8*)* @semerror}
!874 = metadata !{metadata !"semerror"}
!875 = metadata !{void (%struct.LexState*, i8*)* @luaX_syntaxerror}
!876 = metadata !{metadata !"luaX_syntaxerror"}
!877 = metadata !{i32 (%struct.LexState*, i32)* @findlabel}
!878 = metadata !{metadata !"findlabel"}
!879 = metadata !{void (%struct.LexState*, i32, %struct.Labeldesc*)* @closegoto}
!880 = metadata !{metadata !"closegoto"}
!881 = metadata !{%struct.LocVar* (%struct.FuncState*, i32)* @getlocvar}
!882 = metadata !{metadata !"getlocvar"}
!883 = metadata !{void (%struct.FuncState*, i32, i32)* @luaK_patchlist}
!884 = metadata !{metadata !"luaK_patchlist"}
!885 = metadata !{i32 (%struct.LexState*, %struct.Labellist*, %struct.TString*, i32, i32)* @newlabelentry}
!886 = metadata !{metadata !"newlabelentry"}
!887 = metadata !{void (%struct.LexState*, %struct.Labeldesc*)* @findgotos}
!888 = metadata !{metadata !"findgotos"}
!889 = metadata !{i8* (%struct.lua_State*, i8*, i32*, i32, i32, i8*)* @luaM_growaux_}
!890 = metadata !{metadata !"luaM_growaux_"}
!891 = metadata !{void (%struct.LexState*, i32)* @error_expected}
!892 = metadata !{metadata !"error_expected"}
!893 = metadata !{i8* (%struct.LexState*, i32)* @luaX_token2str}
!894 = metadata !{metadata !"luaX_token2str"}
!895 = metadata !{i32 (%struct.LexState*, i32)* @block_follow}
!896 = metadata !{metadata !"block_follow"}
!897 = metadata !{void (%struct.LexState*)* @statement}
!898 = metadata !{metadata !"statement"}
!899 = metadata !{void (%struct.LexState*)* @enterlevel}
!900 = metadata !{metadata !"enterlevel"}
!901 = metadata !{void (%struct.LexState*, i32)* @ifstat}
!902 = metadata !{metadata !"ifstat"}
!903 = metadata !{void (%struct.LexState*, i32)* @whilestat}
!904 = metadata !{metadata !"whilestat"}
!905 = metadata !{void (%struct.LexState*)* @block}
!906 = metadata !{metadata !"block"}
!907 = metadata !{void (%struct.LexState*, i32, i32, i32)* @check_match}
!908 = metadata !{metadata !"check_match"}
!909 = metadata !{void (%struct.LexState*, i32)* @forstat}
!910 = metadata !{metadata !"forstat"}
!911 = metadata !{void (%struct.LexState*, i32)* @repeatstat}
!912 = metadata !{metadata !"repeatstat"}
!913 = metadata !{void (%struct.LexState*, i32)* @funcstat}
!914 = metadata !{metadata !"funcstat"}
!915 = metadata !{i32 (%struct.LexState*, i32)* @testnext}
!916 = metadata !{metadata !"testnext"}
!917 = metadata !{void (%struct.LexState*)* @localfunc}
!918 = metadata !{metadata !"localfunc"}
!919 = metadata !{void (%struct.LexState*)* @localstat}
!920 = metadata !{metadata !"localstat"}
!921 = metadata !{void (%struct.LexState*, %struct.TString*, i32)* @labelstat}
!922 = metadata !{metadata !"labelstat"}
!923 = metadata !{%struct.TString* (%struct.LexState*)* @str_checkname}
!924 = metadata !{metadata !"str_checkname"}
!925 = metadata !{void (%struct.LexState*)* @retstat}
!926 = metadata !{metadata !"retstat"}
!927 = metadata !{void (%struct.LexState*, i32)* @gotostat}
!928 = metadata !{metadata !"gotostat"}
!929 = metadata !{void (%struct.LexState*)* @exprstat}
!930 = metadata !{metadata !"exprstat"}
!931 = metadata !{void (%struct.LexState*, %struct.expdesc*)* @suffixedexp}
!932 = metadata !{metadata !"suffixedexp"}
!933 = metadata !{void (%struct.LexState*, %struct.LHS_assign*, i32)* @assignment}
!934 = metadata !{metadata !"assignment"}
!935 = metadata !{void (%struct.LexState*, %struct.LHS_assign*, %struct.expdesc*)* @check_conflict}
!936 = metadata !{metadata !"check_conflict"}
!937 = metadata !{void (%struct.FuncState*, i32, i32, i8*)* @checklimit}
!938 = metadata !{metadata !"checklimit"}
!939 = metadata !{void (%struct.LexState*, i32)* @checknext}
!940 = metadata !{metadata !"checknext"}
!941 = metadata !{i32 (%struct.LexState*, %struct.expdesc*)* @explist}
!942 = metadata !{metadata !"explist"}
!943 = metadata !{void (%struct.LexState*, i32, i32, %struct.expdesc*)* @adjust_assign}
!944 = metadata !{metadata !"adjust_assign"}
!945 = metadata !{void (%struct.FuncState*, %struct.expdesc*)* @luaK_setoneret}
!946 = metadata !{metadata !"luaK_setoneret"}
!947 = metadata !{void (%struct.FuncState*, %struct.expdesc*, %struct.expdesc*)* @luaK_storevar}
!948 = metadata !{metadata !"luaK_storevar"}
!949 = metadata !{void (%struct.FuncState*, %struct.expdesc*, i32)* @luaK_setreturns}
!950 = metadata !{metadata !"luaK_setreturns"}
!951 = metadata !{void (%struct.FuncState*, i32)* @luaK_reserveregs}
!952 = metadata !{metadata !"luaK_reserveregs"}
!953 = metadata !{void (%struct.FuncState*, %struct.expdesc*)* @luaK_exp2nextreg}
!954 = metadata !{metadata !"luaK_exp2nextreg"}
!955 = metadata !{void (%struct.FuncState*, i32, i32)* @luaK_nil}
!956 = metadata !{metadata !"luaK_nil"}
!957 = metadata !{void (%struct.LexState*, %struct.expdesc*)* @expr}
!958 = metadata !{metadata !"expr"}
!959 = metadata !{i32 (%struct.LexState*, %struct.expdesc*, i32)* @subexpr}
!960 = metadata !{metadata !"subexpr"}
!961 = metadata !{i32 (i32)* @getunopr}
!962 = metadata !{metadata !"getunopr"}
!963 = metadata !{void (%struct.FuncState*, i32, %struct.expdesc*, i32)* @luaK_prefix}
!964 = metadata !{metadata !"luaK_prefix"}
!965 = metadata !{void (%struct.LexState*, %struct.expdesc*)* @simpleexp}
!966 = metadata !{metadata !"simpleexp"}
!967 = metadata !{i32 (i32)* @getbinopr}
!968 = metadata !{metadata !"getbinopr"}
!969 = metadata !{void (%struct.FuncState*, i32, %struct.expdesc*)* @luaK_infix}
!970 = metadata !{metadata !"luaK_infix"}
!971 = metadata !{void (%struct.FuncState*, i32, %struct.expdesc*, %struct.expdesc*, i32)* @luaK_posfix}
!972 = metadata !{metadata !"luaK_posfix"}
!973 = metadata !{void (%struct.LexState*, %struct.expdesc*, %struct.TString*)* @codestring}
!974 = metadata !{metadata !"codestring"}
!975 = metadata !{i32 (%struct.FuncState*, i32, i32, i32, i32)* @luaK_codeABC}
!976 = metadata !{metadata !"luaK_codeABC"}
!977 = metadata !{void (%struct.LexState*, %struct.expdesc*)* @constructor}
!978 = metadata !{metadata !"constructor"}
!979 = metadata !{void (%struct.LexState*, %struct.expdesc*, i32, i32)* @body}
!980 = metadata !{metadata !"body"}
!981 = metadata !{%struct.Proto* (%struct.LexState*)* @addprototype}
!982 = metadata !{metadata !"addprototype"}
!983 = metadata !{void (%struct.LexState*, i8*, i32)* @new_localvarliteral_}
!984 = metadata !{metadata !"new_localvarliteral_"}
!985 = metadata !{void (%struct.LexState*, i32)* @adjustlocalvars}
!986 = metadata !{metadata !"adjustlocalvars"}
!987 = metadata !{void (%struct.LexState*)* @parlist}
!988 = metadata !{metadata !"parlist"}
!989 = metadata !{void (%struct.LexState*, %struct.expdesc*)* @codeclosure}
!990 = metadata !{metadata !"codeclosure"}
!991 = metadata !{i32 (%struct.FuncState*, i32, i32, i32)* @luaK_codeABx}
!992 = metadata !{metadata !"luaK_codeABx"}
!993 = metadata !{void (%struct.LexState*, %struct.TString*)* @new_localvar}
!994 = metadata !{metadata !"new_localvar"}
!995 = metadata !{i32 (%struct.LexState*, %struct.TString*)* @registerlocalvar}
!996 = metadata !{metadata !"registerlocalvar"}
!997 = metadata !{void (%struct.lua_State*, %struct.GCObject*, %struct.GCObject*)* @luaC_barrier_}
!998 = metadata !{metadata !"luaC_barrier_"}
!999 = metadata !{%struct.TString* (%struct.LexState*, i8*, i32)* @luaX_newstring}
!1000 = metadata !{metadata !"luaX_newstring"}
!1001 = metadata !{void (%struct.FuncState*, %struct.ConsControl*)* @closelistfield}
!1002 = metadata !{metadata !"closelistfield"}
!1003 = metadata !{void (%struct.LexState*, %struct.ConsControl*)* @field}
!1004 = metadata !{metadata !"field"}
!1005 = metadata !{void (%struct.FuncState*, %struct.ConsControl*)* @lastlistfield}
!1006 = metadata !{metadata !"lastlistfield"}
!1007 = metadata !{i32 (i32)* @luaO_int2fb}
!1008 = metadata !{metadata !"luaO_int2fb"}
!1009 = metadata !{void (%struct.FuncState*, i32, i32, i32)* @luaK_setlist}
!1010 = metadata !{metadata !"luaK_setlist"}
!1011 = metadata !{i32 (%struct.LexState*)* @luaX_lookahead}
!1012 = metadata !{metadata !"luaX_lookahead"}
!1013 = metadata !{void (%struct.LexState*, %struct.ConsControl*)* @listfield}
!1014 = metadata !{metadata !"listfield"}
!1015 = metadata !{void (%struct.LexState*, %struct.ConsControl*)* @recfield}
!1016 = metadata !{metadata !"recfield"}
!1017 = metadata !{void (%struct.LexState*, %struct.expdesc*)* @checkname}
!1018 = metadata !{metadata !"checkname"}
!1019 = metadata !{void (%struct.LexState*, %struct.expdesc*)* @yindex}
!1020 = metadata !{metadata !"yindex"}
!1021 = metadata !{i32 (%struct.FuncState*, %struct.expdesc*)* @luaK_exp2RK}
!1022 = metadata !{metadata !"luaK_exp2RK"}
!1023 = metadata !{void (%struct.FuncState*, %struct.expdesc*)* @luaK_exp2val}
!1024 = metadata !{metadata !"luaK_exp2val"}
!1025 = metadata !{i32 (%struct.FuncState*, %struct.TString*)* @luaK_stringK}
!1026 = metadata !{metadata !"luaK_stringK"}
!1027 = metadata !{void (%struct.FuncState*, i32, i8*)* @errorlimit}
!1028 = metadata !{metadata !"errorlimit"}
!1029 = metadata !{void (%struct.LexState*, %struct.expdesc*)* @primaryexp}
!1030 = metadata !{metadata !"primaryexp"}
!1031 = metadata !{void (%struct.LexState*, %struct.expdesc*)* @fieldsel}
!1032 = metadata !{metadata !"fieldsel"}
!1033 = metadata !{void (%struct.FuncState*, %struct.expdesc*)* @luaK_exp2anyregup}
!1034 = metadata !{metadata !"luaK_exp2anyregup"}
!1035 = metadata !{void (%struct.FuncState*, %struct.expdesc*, %struct.expdesc*)* @luaK_indexed}
!1036 = metadata !{metadata !"luaK_indexed"}
!1037 = metadata !{void (%struct.FuncState*, %struct.expdesc*, %struct.expdesc*)* @luaK_self}
!1038 = metadata !{metadata !"luaK_self"}
!1039 = metadata !{void (%struct.LexState*, %struct.expdesc*, i32)* @funcargs}
!1040 = metadata !{metadata !"funcargs"}
!1041 = metadata !{void (%struct.FuncState*, i32)* @luaK_fixline}
!1042 = metadata !{metadata !"luaK_fixline"}
!1043 = metadata !{void (%struct.FuncState*, %struct.expdesc*)* @luaK_dischargevars}
!1044 = metadata !{metadata !"luaK_dischargevars"}
!1045 = metadata !{void (%struct.LexState*, %struct.expdesc*)* @singlevar}
!1046 = metadata !{metadata !"singlevar"}
!1047 = metadata !{void (%struct.FuncState*, %struct.TString*, %struct.expdesc*, i32)* @singlevaraux}
!1048 = metadata !{metadata !"singlevaraux"}
!1049 = metadata !{i32 (%struct.FuncState*, %struct.TString*)* @searchvar}
!1050 = metadata !{metadata !"searchvar"}
!1051 = metadata !{void (%struct.FuncState*, i32)* @markupval}
!1052 = metadata !{metadata !"markupval"}
!1053 = metadata !{i32 (%struct.FuncState*, %struct.TString*)* @searchupvalue}
!1054 = metadata !{metadata !"searchupvalue"}
!1055 = metadata !{i32 (%struct.FuncState*, %struct.expdesc*)* @luaK_exp2anyreg}
!1056 = metadata !{metadata !"luaK_exp2anyreg"}
!1057 = metadata !{void (%struct.FuncState*, %struct.Labellist*, %struct.TString*)* @checkrepeated}
!1058 = metadata !{metadata !"checkrepeated"}
!1059 = metadata !{i32 (%struct.FuncState*)* @luaK_getlabel}
!1060 = metadata !{metadata !"luaK_getlabel"}
!1061 = metadata !{void (%struct.LexState*)* @skipnoopstat}
!1062 = metadata !{metadata !"skipnoopstat"}
!1063 = metadata !{i32 (%struct.LexState*, %struct.expdesc*)* @funcname}
!1064 = metadata !{metadata !"funcname"}
!1065 = metadata !{void (%struct.FuncState*, %struct.BlockCnt*, i8)* @enterblock}
!1066 = metadata !{metadata !"enterblock"}
!1067 = metadata !{i32 (%struct.LexState*)* @cond}
!1068 = metadata !{metadata !"cond"}
!1069 = metadata !{void (%struct.FuncState*, %struct.expdesc*)* @luaK_goiftrue}
!1070 = metadata !{metadata !"luaK_goiftrue"}
!1071 = metadata !{void (%struct.LexState*, %struct.TString*, i32)* @fornum}
!1072 = metadata !{metadata !"fornum"}
!1073 = metadata !{void (%struct.LexState*, %struct.TString*)* @forlist}
!1074 = metadata !{metadata !"forlist"}
!1075 = metadata !{void (%struct.FuncState*, i32)* @luaK_checkstack}
!1076 = metadata !{metadata !"luaK_checkstack"}
!1077 = metadata !{void (%struct.LexState*, i32, i32, i32, i32)* @forbody}
!1078 = metadata !{metadata !"forbody"}
!1079 = metadata !{i32 (%struct.LexState*)* @exp1}
!1080 = metadata !{metadata !"exp1"}
!1081 = metadata !{i32 (%struct.FuncState*, i32, i32)* @luaK_codek}
!1082 = metadata !{metadata !"luaK_codek"}
!1083 = metadata !{i32 (%struct.FuncState*, i64)* @luaK_intK}
!1084 = metadata !{metadata !"luaK_intK"}
!1085 = metadata !{void (%struct.LexState*, i32*)* @test_then_block}
!1086 = metadata !{metadata !"test_then_block"}
!1087 = metadata !{void (%struct.FuncState*, %struct.expdesc*)* @luaK_goiffalse}
!1088 = metadata !{metadata !"luaK_goiffalse"}
!1089 = metadata !{void (%struct.FuncState*, i32*, i32)* @luaK_concat}
!1090 = metadata !{metadata !"luaK_concat"}
!1091 = metadata !{metadata !"LClosure .lua_State *.1.ZIO *.1.Mbuffer *.1.Dyndata *.1.const char *.1.int.0"}
!1092 = metadata !{metadata !"LClosure .lua_State *.1.int.0"}
!1093 = metadata !{metadata !"void.lua_State *.1"}
!1094 = metadata !{metadata !"Table .lua_State *.1"}
!1095 = metadata !{metadata !"Proto .lua_State *.1"}
!1096 = metadata !{metadata !"TString .lua_State *.1.const char *.1"}
!1097 = metadata !{metadata !"void.lua_State *.1.LexState *.1.ZIO *.1.TString *.1.int.0"}
!1098 = metadata !{metadata !"void.LexState *.1.FuncState *.1"}
!1099 = metadata !{metadata !"void.LexState *.1.FuncState *.1.BlockCnt *.1"}
!1100 = metadata !{metadata !"void.expdesc *.1.expkind.0.int.0"}
!1101 = metadata !{metadata !"int.FuncState *.1.TString *.1.expdesc *.1"}
!1102 = metadata !{metadata !"void.LexState *.1"}
!1103 = metadata !{metadata !"void.LexState *.1.int.0"}
!1104 = metadata !{metadata !"void.FuncState *.1.int.0.int.0"}
!1105 = metadata !{metadata !"void.FuncState *.1"}
!1106 = metadata !{metadata !"void .lua_State *.1.void *.1.size_t.0.size_t.0"}
!1107 = metadata !{metadata !"int.FuncState *.1"}
!1108 = metadata !{metadata !"void.FuncState *.1.int.0"}
!1109 = metadata !{metadata !"void.FuncState *.1.BlockCnt *.1"}
!1110 = metadata !{metadata !"void.LexState *.1.Labeldesc *.1"}
!1111 = metadata !{metadata !"const char .lua_State *.1.const char *.1"}
!1112 = metadata !{metadata !"void.LexState *.1.const char *.1"}
!1113 = metadata !{metadata !"int.LexState *.1.int.0"}
!1114 = metadata !{metadata !"void.LexState *.1.int.0.Labeldesc *.1"}
!1115 = metadata !{metadata !"LocVar .FuncState *.1.int.0"}
!1116 = metadata !{metadata !"int.LexState *.1.Labellist *.1.TString *.1.int.0.int.0"}
!1117 = metadata !{metadata !"void .lua_State *.1.void *.1.int *.1.size_t.0.int.0.const char *.1"}
!1118 = metadata !{metadata !"const char .LexState *.1.int.0"}
!1119 = metadata !{metadata !"void.LexState *.1.int.0.int.0.int.0"}
!1120 = metadata !{metadata !"void.LexState *.1.TString *.1.int.0"}
!1121 = metadata !{metadata !"TString .LexState *.1"}
!1122 = metadata !{metadata !"void.LexState *.1.expdesc *.1"}
!1123 = metadata !{metadata !"void.LexState *.1.struct LHS_assign *.1.int.0"}
!1124 = metadata !{metadata !"void.LexState *.1.struct LHS_assign *.1.expdesc *.1"}
!1125 = metadata !{metadata !"void.FuncState *.1.int.0.int.0.const char *.1"}
!1126 = metadata !{metadata !"int.LexState *.1.expdesc *.1"}
!1127 = metadata !{metadata !"void.LexState *.1.int.0.int.0.expdesc *.1"}
!1128 = metadata !{metadata !"void.FuncState *.1.expdesc *.1"}
!1129 = metadata !{metadata !"void.FuncState *.1.expdesc *.1.expdesc *.1"}
!1130 = metadata !{metadata !"void.FuncState *.1.expdesc *.1.int.0"}
!1131 = metadata !{metadata !"BinOpr.LexState *.1.expdesc *.1.int.0"}
!1132 = metadata !{metadata !"UnOpr.int.0"}
!1133 = metadata !{metadata !"void.FuncState *.1.UnOpr.0.expdesc *.1.int.0"}
!1134 = metadata !{metadata !"BinOpr.int.0"}
!1135 = metadata !{metadata !"void.FuncState *.1.BinOpr.0.expdesc *.1"}
!1136 = metadata !{metadata !"void.FuncState *.1.BinOpr.0.expdesc *.1.expdesc *.1.int.0"}
!1137 = metadata !{metadata !"void.LexState *.1.expdesc *.1.TString *.1"}
!1138 = metadata !{metadata !"int.FuncState *.1.OpCode.0.int.0.int.0.int.0"}
!1139 = metadata !{metadata !"void.LexState *.1.expdesc *.1.int.0.int.0"}
!1140 = metadata !{metadata !"Proto .LexState *.1"}
!1141 = metadata !{metadata !"void.LexState *.1.const char *.1.size_t.0"}
!1142 = metadata !{metadata !"int.FuncState *.1.OpCode.0.int.0.unsigned int.0"}
!1143 = metadata !{metadata !"void.LexState *.1.TString *.1"}
!1144 = metadata !{metadata !"int.LexState *.1.TString *.1"}
!1145 = metadata !{metadata !"void.lua_State *.1.GCObject *.1.GCObject *.1"}
!1146 = metadata !{metadata !"TString .LexState *.1.const char *.1.size_t.0"}
!1147 = metadata !{metadata !"void.FuncState *.1.struct ConsControl *.1"}
!1148 = metadata !{metadata !"void.LexState *.1.struct ConsControl *.1"}
!1149 = metadata !{metadata !"int.unsigned int.0"}
!1150 = metadata !{metadata !"void.FuncState *.1.int.0.int.0.int.0"}
!1151 = metadata !{metadata !"int.LexState *.1"}
!1152 = metadata !{metadata !"int.FuncState *.1.expdesc *.1"}
!1153 = metadata !{metadata !"int.FuncState *.1.TString *.1"}
!1154 = metadata !{metadata !"void.FuncState *.1.int.0.const char *.1"}
!1155 = metadata !{metadata !"void.LexState *.1.expdesc *.1.int.0"}
!1156 = metadata !{metadata !"void.FuncState *.1.TString *.1.expdesc *.1.int.0"}
!1157 = metadata !{metadata !"void.FuncState *.1.Labellist *.1.TString *.1"}
!1158 = metadata !{metadata !"void.FuncState *.1.BlockCnt *.1.lu_byte.0"}
!1159 = metadata !{metadata !"void.LexState *.1.int.0.int.0.int.0.int.0"}
!1160 = metadata !{metadata !"int.FuncState *.1.int.0.int.0"}
!1161 = metadata !{metadata !"int.FuncState *.1.lua_Integer.0"}
!1162 = metadata !{metadata !"void.LexState *.1.int *.1"}
!1163 = metadata !{metadata !"void.FuncState *.1.int *.1.int.0"}
!1164 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lparser.h"}
!1165 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lfunc.h"}
!1166 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/ldo.h"}
!1167 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/ltable.h"}
!1168 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lstring.h"}
!1169 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/llex.h"}
!1170 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lparser.c"}
!1171 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lcode.h"}
!1172 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lmem.h"}
!1173 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lgc.h"}
!1174 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lobject.h"}
!1175 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!1176 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!1177 = metadata !{i32 1, metadata !"wchar_size", i32 4}
!1178 = metadata !{i32 1, metadata !"min_enum_size", i32 4}
!1179 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
!1180 = metadata !{i32 786689, metadata !145, metadata !"L", metadata !147, i32 16778844, metadata !208, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 1628]
!1181 = metadata !{i32 1628, i32 35, metadata !145, null}
!1182 = metadata !{i32 786689, metadata !145, metadata !"z", metadata !147, i32 33556060, metadata !480, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [z] [line 1628]
!1183 = metadata !{i32 1628, i32 43, metadata !145, null}
!1184 = metadata !{i32 786689, metadata !145, metadata !"buff", metadata !147, i32 50333276, metadata !495, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [buff] [line 1628]
!1185 = metadata !{i32 1628, i32 55, metadata !145, null}
!1186 = metadata !{i32 786689, metadata !145, metadata !"dyd", metadata !147, i32 67110493, metadata !503, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dyd] [line 1629]
!1187 = metadata !{i32 1629, i32 33, metadata !145, null}
!1188 = metadata !{i32 786689, metadata !145, metadata !"name", metadata !147, i32 83887709, metadata !415, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 1629]
!1189 = metadata !{i32 1629, i32 50, metadata !145, null}
!1190 = metadata !{i32 786689, metadata !145, metadata !"firstchar", metadata !147, i32 100664925, metadata !181, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [firstchar] [line 1629]
!1191 = metadata !{i32 1629, i32 60, metadata !145, null}
!1192 = metadata !{i32 786688, metadata !145, metadata !"lexstate", metadata !147, i32 1630, metadata !538, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lexstate] [line 1630]
!1193 = metadata !{i32 1630, i32 12, metadata !145, null}
!1194 = metadata !{i32 786688, metadata !145, metadata !"funcstate", metadata !147, i32 1631, metadata !598, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [funcstate] [line 1631]
!1195 = metadata !{i32 1631, i32 13, metadata !145, null}
!1196 = metadata !{i32 786688, metadata !145, metadata !"cl", metadata !147, i32 1632, metadata !150, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cl] [line 1632]
!1197 = metadata !{i32 1632, i32 13, metadata !145, null}
!1198 = metadata !{i32 1632, i32 18, metadata !145, null}
!1199 = metadata !{i32 786688, metadata !1200, metadata !"io", metadata !147, i32 1633, metadata !190, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [io] [line 1633]
!1200 = metadata !{i32 786443, metadata !146, metadata !145, i32 1633, i32 3, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!1201 = metadata !{i32 1633, i32 3, metadata !1200, null}
!1202 = metadata !{i32 786688, metadata !1200, metadata !"x_", metadata !147, i32 1633, metadata !150, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x_] [line 1633]
!1203 = metadata !{i32 1634, i32 3, metadata !145, null}
!1204 = metadata !{i32 1635, i32 16, metadata !145, null}
!1205 = metadata !{i32 786688, metadata !1206, metadata !"io", metadata !147, i32 1636, metadata !190, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [io] [line 1636]
!1206 = metadata !{i32 786443, metadata !146, metadata !145, i32 1636, i32 3, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!1207 = metadata !{i32 1636, i32 3, metadata !1206, null}
!1208 = metadata !{i32 786688, metadata !1206, metadata !"x_", metadata !147, i32 1636, metadata !591, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x_] [line 1636]
!1209 = metadata !{i32 1637, i32 3, metadata !145, null}
!1210 = metadata !{i32 1638, i32 25, metadata !145, null}
!1211 = metadata !{i32 1639, i32 25, metadata !145, null}
!1212 = metadata !{i32 1641, i32 3, metadata !145, null}
!1213 = metadata !{i32 1642, i32 3, metadata !145, null}
!1214 = metadata !{i32 1643, i32 3, metadata !145, null}
!1215 = metadata !{i32 1644, i32 3, metadata !145, null}
!1216 = metadata !{i32 1645, i32 3, metadata !145, null}
!1217 = metadata !{i32 1649, i32 3, metadata !145, null}
!1218 = metadata !{i32 1650, i32 3, metadata !145, null}
!1219 = metadata !{i32 786689, metadata !534, metadata !"ls", metadata !147, i32 16778830, metadata !537, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ls] [line 1614]
!1220 = metadata !{i32 1614, i32 33, metadata !534, null}
!1221 = metadata !{i32 786689, metadata !534, metadata !"fs", metadata !147, i32 33556046, metadata !597, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fs] [line 1614]
!1222 = metadata !{i32 1614, i32 48, metadata !534, null}
!1223 = metadata !{i32 786688, metadata !534, metadata !"bl", metadata !147, i32 1615, metadata !615, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bl] [line 1615]
!1224 = metadata !{i32 1615, i32 12, metadata !534, null}
!1225 = metadata !{i32 786688, metadata !534, metadata !"v", metadata !147, i32 1616, metadata !649, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [v] [line 1616]
!1226 = metadata !{i32 1616, i32 11, metadata !534, null}
!1227 = metadata !{i32 1617, i32 3, metadata !534, null}
!1228 = metadata !{i32 1618, i32 3, metadata !534, null}
!1229 = metadata !{i32 1619, i32 3, metadata !534, null}
!1230 = metadata !{i32 1620, i32 3, metadata !534, null}
!1231 = metadata !{i32 1621, i32 3, metadata !534, null}
!1232 = metadata !{i32 1622, i32 3, metadata !534, null}
!1233 = metadata !{i32 1623, i32 3, metadata !534, null}
!1234 = metadata !{i32 1624, i32 3, metadata !534, null}
!1235 = metadata !{i32 1625, i32 1, metadata !534, null}
!1236 = metadata !{i32 786689, metadata !804, metadata !"ls", metadata !147, i32 16777743, metadata !537, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ls] [line 527]
!1237 = metadata !{i32 527, i32 34, metadata !804, null}
!1238 = metadata !{i32 786689, metadata !804, metadata !"fs", metadata !147, i32 33554959, metadata !597, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fs] [line 527]
!1239 = metadata !{i32 527, i32 49, metadata !804, null}
!1240 = metadata !{i32 786689, metadata !804, metadata !"bl", metadata !147, i32 50332175, metadata !614, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bl] [line 527]
!1241 = metadata !{i32 527, i32 63, metadata !804, null}
!1242 = metadata !{i32 786688, metadata !804, metadata !"f", metadata !147, i32 528, metadata !562, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [f] [line 528]
!1243 = metadata !{i32 528, i32 10, metadata !804, null}
!1244 = metadata !{i32 529, i32 3, metadata !804, null}
!1245 = metadata !{i32 530, i32 3, metadata !804, null}
!1246 = metadata !{i32 531, i32 3, metadata !804, null}
!1247 = metadata !{i32 532, i32 3, metadata !804, null}
!1248 = metadata !{i32 533, i32 3, metadata !804, null}
!1249 = metadata !{i32 534, i32 3, metadata !804, null}
!1250 = metadata !{i32 535, i32 3, metadata !804, null}
!1251 = metadata !{i32 536, i32 3, metadata !804, null}
!1252 = metadata !{i32 537, i32 3, metadata !804, null}
!1253 = metadata !{i32 538, i32 3, metadata !804, null}
!1254 = metadata !{i32 539, i32 3, metadata !804, null}
!1255 = metadata !{i32 540, i32 3, metadata !804, null}
!1256 = metadata !{i32 541, i32 3, metadata !804, null}
!1257 = metadata !{i32 542, i32 3, metadata !804, null}
!1258 = metadata !{i32 543, i32 3, metadata !804, null}
!1259 = metadata !{i32 544, i32 3, metadata !804, null}
!1260 = metadata !{i32 545, i32 3, metadata !804, null}
!1261 = metadata !{i32 546, i32 3, metadata !804, null}
!1262 = metadata !{i32 547, i32 1, metadata !804, null}
!1263 = metadata !{i32 786689, metadata !801, metadata !"e", metadata !147, i32 16777360, metadata !671, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [e] [line 144]
!1264 = metadata !{i32 144, i32 32, metadata !801, null}
!1265 = metadata !{i32 786689, metadata !801, metadata !"k", metadata !147, i32 33554576, metadata !653, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [k] [line 144]
!1266 = metadata !{i32 144, i32 43, metadata !801, null}
!1267 = metadata !{i32 786689, metadata !801, metadata !"i", metadata !147, i32 50331792, metadata !181, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [i] [line 144]
!1268 = metadata !{i32 144, i32 50, metadata !801, null}
!1269 = metadata !{i32 145, i32 3, metadata !801, null}
!1270 = metadata !{i32 146, i32 3, metadata !801, null}
!1271 = metadata !{i32 147, i32 3, metadata !801, null}
!1272 = metadata !{i32 148, i32 1, metadata !801, null}
!1273 = metadata !{i32 786689, metadata !798, metadata !"fs", metadata !147, i32 16777444, metadata !597, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fs] [line 228]
!1274 = metadata !{i32 228, i32 35, metadata !798, null}
!1275 = metadata !{i32 786689, metadata !798, metadata !"name", metadata !147, i32 33554660, metadata !248, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 228]
!1276 = metadata !{i32 228, i32 48, metadata !798, null}
!1277 = metadata !{i32 786689, metadata !798, metadata !"v", metadata !147, i32 50331876, metadata !671, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [v] [line 228]
!1278 = metadata !{i32 228, i32 63, metadata !798, null}
!1279 = metadata !{i32 786688, metadata !798, metadata !"f", metadata !147, i32 229, metadata !562, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [f] [line 229]
!1280 = metadata !{i32 229, i32 10, metadata !798, null}
!1281 = metadata !{i32 229, i32 3, metadata !798, null}
!1282 = metadata !{i32 786688, metadata !798, metadata !"oldsize", metadata !147, i32 230, metadata !181, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [oldsize] [line 230]
!1283 = metadata !{i32 230, i32 7, metadata !798, null}
!1284 = metadata !{i32 230, i32 3, metadata !798, null}
!1285 = metadata !{i32 231, i32 3, metadata !798, null}
!1286 = metadata !{i32 232, i32 3, metadata !1287, null}
!1287 = metadata !{i32 786443, metadata !146, metadata !798, i32 232, i32 3, i32 0, i32 211} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!1288 = metadata !{i32 232, i32 3, metadata !1289, null}
!1289 = metadata !{i32 786443, metadata !146, metadata !1287, i32 232, i32 3, i32 1, i32 212} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!1290 = metadata !{i32 234, i32 3, metadata !798, null}
!1291 = metadata !{i32 234, i32 3, metadata !1292, null}
!1292 = metadata !{i32 786443, metadata !146, metadata !798, i32 234, i32 3, i32 1, i32 213} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!1293 = metadata !{i32 235, i32 5, metadata !798, null}
!1294 = metadata !{i32 236, i32 3, metadata !798, null}
!1295 = metadata !{i32 237, i32 3, metadata !798, null}
!1296 = metadata !{i32 238, i32 3, metadata !798, null}
!1297 = metadata !{i32 239, i32 3, metadata !798, null}
!1298 = metadata !{i32 239, i32 3, metadata !1299, null}
!1299 = metadata !{i32 786443, metadata !146, metadata !798, i32 239, i32 3, i32 1, i32 214} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!1300 = metadata !{i32 239, i32 3, metadata !1301, null}
!1301 = metadata !{i32 786443, metadata !146, metadata !798, i32 239, i32 3, i32 3, i32 216} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!1302 = metadata !{i32 239, i32 3, metadata !1303, null}
!1303 = metadata !{i32 786443, metadata !146, metadata !1304, i32 239, i32 3, i32 4, i32 217} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!1304 = metadata !{i32 786443, metadata !146, metadata !798, i32 239, i32 3, i32 2, i32 215} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!1305 = metadata !{i32 240, i32 3, metadata !798, null}
!1306 = metadata !{i32 786689, metadata !638, metadata !"ls", metadata !147, i32 16777812, metadata !537, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ls] [line 596]
!1307 = metadata !{i32 596, i32 33, metadata !638, null}
!1308 = metadata !{i32 598, i32 3, metadata !638, null}
!1309 = metadata !{i32 598, i32 11, metadata !1310, null}
!1310 = metadata !{i32 786443, metadata !146, metadata !638, i32 598, i32 11, i32 1, i32 218} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!1311 = metadata !{i32 599, i32 9, metadata !1312, null}
!1312 = metadata !{i32 786443, metadata !146, metadata !1313, i32 599, i32 9, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!1313 = metadata !{i32 786443, metadata !146, metadata !638, i32 598, i32 32, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!1314 = metadata !{i32 600, i32 7, metadata !1315, null}
!1315 = metadata !{i32 786443, metadata !146, metadata !1312, i32 599, i32 35, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!1316 = metadata !{i32 601, i32 7, metadata !1315, null}
!1317 = metadata !{i32 603, i32 5, metadata !1313, null}
!1318 = metadata !{i32 604, i32 3, metadata !1313, null}
!1319 = metadata !{i32 605, i32 1, metadata !638, null}
!1320 = metadata !{i32 786689, metadata !634, metadata !"ls", metadata !147, i32 16777322, metadata !537, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ls] [line 106]
!1321 = metadata !{i32 106, i32 30, metadata !634, null}
!1322 = metadata !{i32 786689, metadata !634, metadata !"c", metadata !147, i32 33554538, metadata !181, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [c] [line 106]
!1323 = metadata !{i32 106, i32 38, metadata !634, null}
!1324 = metadata !{i32 107, i32 7, metadata !1325, null}
!1325 = metadata !{i32 786443, metadata !146, metadata !634, i32 107, i32 7, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!1326 = metadata !{i32 108, i32 5, metadata !1325, null}
!1327 = metadata !{i32 109, i32 1, metadata !634, null}
!1328 = metadata !{i32 786689, metadata !599, metadata !"ls", metadata !147, i32 16777766, metadata !537, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ls] [line 550]
!1329 = metadata !{i32 550, i32 35, metadata !599, null}
!1330 = metadata !{i32 786688, metadata !599, metadata !"L", metadata !147, i32 551, metadata !208, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [L] [line 551]
!1331 = metadata !{i32 551, i32 14, metadata !599, null}
!1332 = metadata !{i32 551, i32 3, metadata !599, null}
!1333 = metadata !{i32 786688, metadata !599, metadata !"fs", metadata !147, i32 552, metadata !597, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fs] [line 552]
!1334 = metadata !{i32 552, i32 14, metadata !599, null}
!1335 = metadata !{i32 552, i32 3, metadata !599, null}
!1336 = metadata !{i32 786688, metadata !599, metadata !"f", metadata !147, i32 553, metadata !562, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [f] [line 553]
!1337 = metadata !{i32 553, i32 10, metadata !599, null}
!1338 = metadata !{i32 553, i32 3, metadata !599, null}
!1339 = metadata !{i32 554, i32 3, metadata !599, null}
!1340 = metadata !{i32 555, i32 3, metadata !599, null}
!1341 = metadata !{i32 556, i32 3, metadata !599, null}
!1342 = metadata !{i32 556, i32 3, metadata !1343, null}
!1343 = metadata !{i32 786443, metadata !146, metadata !599, i32 556, i32 3, i32 1, i32 219} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!1344 = metadata !{i32 556, i32 3, metadata !1345, null}
!1345 = metadata !{i32 786443, metadata !146, metadata !599, i32 556, i32 3, i32 2, i32 220} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!1346 = metadata !{i32 556, i32 3, metadata !1347, null}
!1347 = metadata !{i32 786443, metadata !146, metadata !1348, i32 556, i32 3, i32 4, i32 222} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!1348 = metadata !{i32 786443, metadata !146, metadata !599, i32 556, i32 3, i32 3, i32 221} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!1349 = metadata !{i32 557, i32 3, metadata !599, null}
!1350 = metadata !{i32 558, i32 3, metadata !599, null}
!1351 = metadata !{i32 558, i32 3, metadata !1352, null}
!1352 = metadata !{i32 786443, metadata !146, metadata !599, i32 558, i32 3, i32 1, i32 223} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!1353 = metadata !{i32 558, i32 3, metadata !1354, null}
!1354 = metadata !{i32 786443, metadata !146, metadata !599, i32 558, i32 3, i32 2, i32 224} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!1355 = metadata !{i32 558, i32 3, metadata !1356, null}
!1356 = metadata !{i32 786443, metadata !146, metadata !1357, i32 558, i32 3, i32 4, i32 226} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!1357 = metadata !{i32 786443, metadata !146, metadata !599, i32 558, i32 3, i32 3, i32 225} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!1358 = metadata !{i32 559, i32 3, metadata !599, null}
!1359 = metadata !{i32 560, i32 3, metadata !599, null}
!1360 = metadata !{i32 560, i32 3, metadata !1361, null}
!1361 = metadata !{i32 786443, metadata !146, metadata !599, i32 560, i32 3, i32 1, i32 227} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!1362 = metadata !{i32 560, i32 3, metadata !1363, null}
!1363 = metadata !{i32 786443, metadata !146, metadata !599, i32 560, i32 3, i32 2, i32 228} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!1364 = metadata !{i32 560, i32 3, metadata !1365, null}
!1365 = metadata !{i32 786443, metadata !146, metadata !1366, i32 560, i32 3, i32 4, i32 230} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!1366 = metadata !{i32 786443, metadata !146, metadata !599, i32 560, i32 3, i32 3, i32 229} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!1367 = metadata !{i32 561, i32 3, metadata !599, null}
!1368 = metadata !{i32 562, i32 3, metadata !599, null}
!1369 = metadata !{i32 562, i32 3, metadata !1370, null}
!1370 = metadata !{i32 786443, metadata !146, metadata !599, i32 562, i32 3, i32 1, i32 231} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!1371 = metadata !{i32 562, i32 3, metadata !1372, null}
!1372 = metadata !{i32 786443, metadata !146, metadata !599, i32 562, i32 3, i32 2, i32 232} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!1373 = metadata !{i32 562, i32 3, metadata !1374, null}
!1374 = metadata !{i32 786443, metadata !146, metadata !1375, i32 562, i32 3, i32 4, i32 234} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!1375 = metadata !{i32 786443, metadata !146, metadata !599, i32 562, i32 3, i32 3, i32 233} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!1376 = metadata !{i32 563, i32 3, metadata !599, null}
!1377 = metadata !{i32 564, i32 3, metadata !599, null}
!1378 = metadata !{i32 565, i32 3, metadata !599, null}
!1379 = metadata !{i32 566, i32 3, metadata !599, null}
!1380 = metadata !{i32 567, i32 3, metadata !599, null}
!1381 = metadata !{i32 569, i32 3, metadata !599, null}
!1382 = metadata !{i32 570, i32 3, metadata !1383, null}
!1383 = metadata !{i32 786443, metadata !146, metadata !1384, i32 570, i32 3, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!1384 = metadata !{i32 786443, metadata !146, metadata !599, i32 570, i32 3, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!1385 = metadata !{i32 570, i32 3, metadata !1386, null}
!1386 = metadata !{i32 786443, metadata !146, metadata !1387, i32 570, i32 3, i32 1, i32 235} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!1387 = metadata !{i32 786443, metadata !146, metadata !1383, i32 570, i32 3, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!1388 = metadata !{i32 571, i32 1, metadata !599, null}
!1389 = metadata !{i32 786689, metadata !602, metadata !"fs", metadata !147, i32 16777687, metadata !597, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fs] [line 471]
!1390 = metadata !{i32 471, i32 36, metadata !602, null}
!1391 = metadata !{i32 786688, metadata !602, metadata !"bl", metadata !147, i32 472, metadata !614, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bl] [line 472]
!1392 = metadata !{i32 472, i32 13, metadata !602, null}
!1393 = metadata !{i32 472, i32 3, metadata !602, null}
!1394 = metadata !{i32 786688, metadata !602, metadata !"ls", metadata !147, i32 473, metadata !537, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ls] [line 473]
!1395 = metadata !{i32 473, i32 13, metadata !602, null}
!1396 = metadata !{i32 473, i32 3, metadata !602, null}
!1397 = metadata !{i32 474, i32 7, metadata !1398, null}
!1398 = metadata !{i32 786443, metadata !146, metadata !602, i32 474, i32 7, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!1399 = metadata !{i32 474, i32 7, metadata !1400, null}
!1400 = metadata !{i32 786443, metadata !146, metadata !1398, i32 474, i32 7, i32 1, i32 236} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!1401 = metadata !{i32 786688, metadata !1402, metadata !"j", metadata !147, i32 476, metadata !181, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 476]
!1402 = metadata !{i32 786443, metadata !146, metadata !1398, i32 474, i32 34, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!1403 = metadata !{i32 476, i32 9, metadata !1402, null}
!1404 = metadata !{i32 476, i32 13, metadata !1402, null}
!1405 = metadata !{i32 477, i32 5, metadata !1402, null}
!1406 = metadata !{i32 478, i32 5, metadata !1402, null}
!1407 = metadata !{i32 479, i32 3, metadata !1402, null}
!1408 = metadata !{i32 480, i32 7, metadata !1409, null}
!1409 = metadata !{i32 786443, metadata !146, metadata !602, i32 480, i32 7, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!1410 = metadata !{i32 481, i32 5, metadata !1409, null}
!1411 = metadata !{i32 482, i32 3, metadata !602, null}
!1412 = metadata !{i32 483, i32 3, metadata !602, null}
!1413 = metadata !{i32 485, i32 3, metadata !602, null}
!1414 = metadata !{i32 486, i32 3, metadata !602, null}
!1415 = metadata !{i32 487, i32 7, metadata !1416, null}
!1416 = metadata !{i32 786443, metadata !146, metadata !602, i32 487, i32 7, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!1417 = metadata !{i32 488, i32 5, metadata !1416, null}
!1418 = metadata !{i32 489, i32 12, metadata !1419, null}
!1419 = metadata !{i32 786443, metadata !146, metadata !1416, i32 489, i32 12, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!1420 = metadata !{i32 490, i32 5, metadata !1419, null}
!1421 = metadata !{i32 491, i32 1, metadata !602, null}
!1422 = metadata !{i32 786689, metadata !628, metadata !"ls", metadata !147, i32 16777668, metadata !537, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ls] [line 452]
!1423 = metadata !{i32 452, i32 35, metadata !628, null}
!1424 = metadata !{i32 786688, metadata !628, metadata !"n", metadata !147, i32 453, metadata !248, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 453]
!1425 = metadata !{i32 453, i32 12, metadata !628, null}
!1426 = metadata !{i32 453, i32 16, metadata !628, null}
!1427 = metadata !{i32 786688, metadata !628, metadata !"l", metadata !147, i32 454, metadata !181, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [l] [line 454]
!1428 = metadata !{i32 454, i32 7, metadata !628, null}
!1429 = metadata !{i32 454, i32 11, metadata !628, null}
!1430 = metadata !{i32 455, i32 3, metadata !628, null}
!1431 = metadata !{i32 456, i32 1, metadata !628, null}
!1432 = metadata !{i32 786689, metadata !625, metadata !"fs", metadata !147, i32 16777427, metadata !597, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fs] [line 211]
!1433 = metadata !{i32 211, i32 36, metadata !625, null}
!1434 = metadata !{i32 786689, metadata !625, metadata !"tolevel", metadata !147, i32 33554643, metadata !181, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tolevel] [line 211]
!1435 = metadata !{i32 211, i32 44, metadata !625, null}
!1436 = metadata !{i32 212, i32 3, metadata !625, null}
!1437 = metadata !{i32 213, i32 3, metadata !625, null}
!1438 = metadata !{i32 213, i32 3, metadata !1439, null}
!1439 = metadata !{i32 786443, metadata !146, metadata !625, i32 213, i32 3, i32 1, i32 237} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!1440 = metadata !{i32 214, i32 5, metadata !625, null}
!1441 = metadata !{i32 215, i32 1, metadata !625, null}
!1442 = metadata !{i32 786689, metadata !611, metadata !"fs", metadata !147, i32 16777635, metadata !597, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fs] [line 419]
!1443 = metadata !{i32 419, i32 38, metadata !611, null}
!1444 = metadata !{i32 786689, metadata !611, metadata !"bl", metadata !147, i32 33554851, metadata !614, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bl] [line 419]
!1445 = metadata !{i32 419, i32 52, metadata !611, null}
!1446 = metadata !{i32 786688, metadata !611, metadata !"i", metadata !147, i32 420, metadata !181, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 420]
!1447 = metadata !{i32 420, i32 7, metadata !611, null}
!1448 = metadata !{i32 420, i32 3, metadata !611, null}
!1449 = metadata !{i32 786688, metadata !611, metadata !"gl", metadata !147, i32 421, metadata !633, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gl] [line 421]
!1450 = metadata !{i32 421, i32 14, metadata !611, null}
!1451 = metadata !{i32 421, i32 3, metadata !611, null}
!1452 = metadata !{i32 424, i32 3, metadata !611, null}
!1453 = metadata !{i32 424, i32 3, metadata !1454, null}
!1454 = metadata !{i32 786443, metadata !146, metadata !611, i32 424, i32 3, i32 1, i32 238} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!1455 = metadata !{i32 786688, metadata !1456, metadata !"gt", metadata !147, i32 425, metadata !523, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gt] [line 425]
!1456 = metadata !{i32 786443, metadata !146, metadata !611, i32 424, i32 21, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!1457 = metadata !{i32 425, i32 16, metadata !1456, null}
!1458 = metadata !{i32 425, i32 5, metadata !1456, null}
!1459 = metadata !{i32 426, i32 9, metadata !1460, null}
!1460 = metadata !{i32 786443, metadata !146, metadata !1456, i32 426, i32 9, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!1461 = metadata !{i32 427, i32 11, metadata !1462, null}
!1462 = metadata !{i32 786443, metadata !146, metadata !1463, i32 427, i32 11, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!1463 = metadata !{i32 786443, metadata !146, metadata !1460, i32 426, i32 36, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!1464 = metadata !{i32 428, i32 9, metadata !1462, null}
!1465 = metadata !{i32 429, i32 7, metadata !1463, null}
!1466 = metadata !{i32 430, i32 5, metadata !1463, null}
!1467 = metadata !{i32 431, i32 10, metadata !1468, null}
!1468 = metadata !{i32 786443, metadata !146, metadata !1456, i32 431, i32 9, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!1469 = metadata !{i32 432, i32 7, metadata !1468, null}
!1470 = metadata !{i32 433, i32 3, metadata !1456, null}
!1471 = metadata !{i32 434, i32 1, metadata !611, null}
!1472 = metadata !{i32 786689, metadata !605, metadata !"ls", metadata !147, i32 16777678, metadata !537, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ls] [line 462]
!1473 = metadata !{i32 462, i32 37, metadata !605, null}
!1474 = metadata !{i32 786689, metadata !605, metadata !"gt", metadata !147, i32 33554894, metadata !523, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [gt] [line 462]
!1475 = metadata !{i32 462, i32 52, metadata !605, null}
!1476 = metadata !{i32 786688, metadata !605, metadata !"msg", metadata !147, i32 463, metadata !415, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [msg] [line 463]
!1477 = metadata !{i32 463, i32 15, metadata !605, null}
!1478 = metadata !{i32 463, i32 3, metadata !605, null}
!1479 = metadata !{i32 463, i32 3, metadata !1480, null}
!1480 = metadata !{i32 786443, metadata !146, metadata !605, i32 463, i32 3, i32 1, i32 239} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!1481 = metadata !{i32 463, i32 3, metadata !1482, null}
!1482 = metadata !{i32 786443, metadata !146, metadata !605, i32 463, i32 3, i32 2, i32 240} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!1483 = metadata !{i32 466, i32 9, metadata !605, null}
!1484 = metadata !{i32 467, i32 3, metadata !605, null}
!1485 = metadata !{i32 468, i32 1, metadata !605, null}
!1486 = metadata !{i32 786689, metadata !608, metadata !"ls", metadata !147, i32 16777283, metadata !537, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ls] [line 67]
!1487 = metadata !{i32 67, i32 36, metadata !608, null}
!1488 = metadata !{i32 786689, metadata !608, metadata !"msg", metadata !147, i32 33554499, metadata !415, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [msg] [line 67]
!1489 = metadata !{i32 67, i32 52, metadata !608, null}
!1490 = metadata !{i32 68, i32 3, metadata !608, null}
!1491 = metadata !{i32 69, i32 3, metadata !608, null}
!1492 = metadata !{i32 70, i32 1, metadata !608, null}
!1493 = metadata !{i32 786689, metadata !616, metadata !"ls", metadata !147, i32 16777579, metadata !537, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ls] [line 363]
!1494 = metadata !{i32 363, i32 33, metadata !616, null}
!1495 = metadata !{i32 786689, metadata !616, metadata !"g", metadata !147, i32 33554795, metadata !181, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [g] [line 363]
!1496 = metadata !{i32 363, i32 41, metadata !616, null}
!1497 = metadata !{i32 786688, metadata !616, metadata !"i", metadata !147, i32 364, metadata !181, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 364]
!1498 = metadata !{i32 364, i32 7, metadata !616, null}
!1499 = metadata !{i32 786688, metadata !616, metadata !"bl", metadata !147, i32 365, metadata !614, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bl] [line 365]
!1500 = metadata !{i32 365, i32 13, metadata !616, null}
!1501 = metadata !{i32 365, i32 3, metadata !616, null}
!1502 = metadata !{i32 786688, metadata !616, metadata !"dyd", metadata !147, i32 366, metadata !503, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dyd] [line 366]
!1503 = metadata !{i32 366, i32 12, metadata !616, null}
!1504 = metadata !{i32 366, i32 3, metadata !616, null}
!1505 = metadata !{i32 786688, metadata !616, metadata !"gt", metadata !147, i32 367, metadata !523, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gt] [line 367]
!1506 = metadata !{i32 367, i32 14, metadata !616, null}
!1507 = metadata !{i32 367, i32 3, metadata !616, null}
!1508 = metadata !{i32 369, i32 8, metadata !1509, null}
!1509 = metadata !{i32 786443, metadata !146, metadata !616, i32 369, i32 3, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!1510 = metadata !{i32 369, i32 8, metadata !1511, null}
!1511 = metadata !{i32 786443, metadata !146, metadata !1512, i32 369, i32 8, i32 2, i32 244} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!1512 = metadata !{i32 786443, metadata !146, metadata !1509, i32 369, i32 8, i32 1, i32 241} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!1513 = metadata !{i32 786688, metadata !1514, metadata !"lb", metadata !147, i32 370, metadata !523, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lb] [line 370]
!1514 = metadata !{i32 786443, metadata !146, metadata !1509, i32 369, i32 51, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!1515 = metadata !{i32 370, i32 16, metadata !1514, null}
!1516 = metadata !{i32 370, i32 5, metadata !1514, null}
!1517 = metadata !{i32 371, i32 9, metadata !1518, null}
!1518 = metadata !{i32 786443, metadata !146, metadata !1514, i32 371, i32 9, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!1519 = metadata !{i32 372, i32 11, metadata !1520, null}
!1520 = metadata !{i32 786443, metadata !146, metadata !1521, i32 372, i32 11, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!1521 = metadata !{i32 786443, metadata !146, metadata !1518, i32 371, i32 36, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!1522 = metadata !{i32 372, i32 11, metadata !1523, null}
!1523 = metadata !{i32 786443, metadata !146, metadata !1520, i32 372, i32 11, i32 1, i32 242} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!1524 = metadata !{i32 372, i32 11, metadata !1525, null}
!1525 = metadata !{i32 786443, metadata !146, metadata !1520, i32 372, i32 11, i32 2, i32 243} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!1526 = metadata !{i32 374, i32 9, metadata !1520, null}
!1527 = metadata !{i32 375, i32 7, metadata !1521, null}
!1528 = metadata !{i32 376, i32 7, metadata !1521, null}
!1529 = metadata !{i32 378, i32 3, metadata !1514, null}
!1530 = metadata !{i32 369, i32 46, metadata !1509, null}
!1531 = metadata !{i32 379, i32 3, metadata !616, null}
!1532 = metadata !{i32 380, i32 1, metadata !616, null}
!1533 = metadata !{i32 786689, metadata !619, metadata !"ls", metadata !147, i32 16777555, metadata !537, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ls] [line 339]
!1534 = metadata !{i32 339, i32 34, metadata !619, null}
!1535 = metadata !{i32 786689, metadata !619, metadata !"g", metadata !147, i32 33554771, metadata !181, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [g] [line 339]
!1536 = metadata !{i32 339, i32 42, metadata !619, null}
!1537 = metadata !{i32 786689, metadata !619, metadata !"label", metadata !147, i32 50331987, metadata !523, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [label] [line 339]
!1538 = metadata !{i32 339, i32 56, metadata !619, null}
!1539 = metadata !{i32 786688, metadata !619, metadata !"i", metadata !147, i32 340, metadata !181, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 340]
!1540 = metadata !{i32 340, i32 7, metadata !619, null}
!1541 = metadata !{i32 786688, metadata !619, metadata !"fs", metadata !147, i32 341, metadata !597, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fs] [line 341]
!1542 = metadata !{i32 341, i32 14, metadata !619, null}
!1543 = metadata !{i32 341, i32 3, metadata !619, null}
!1544 = metadata !{i32 786688, metadata !619, metadata !"gl", metadata !147, i32 342, metadata !633, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gl] [line 342]
!1545 = metadata !{i32 342, i32 14, metadata !619, null}
!1546 = metadata !{i32 342, i32 3, metadata !619, null}
!1547 = metadata !{i32 786688, metadata !619, metadata !"gt", metadata !147, i32 343, metadata !523, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gt] [line 343]
!1548 = metadata !{i32 343, i32 14, metadata !619, null}
!1549 = metadata !{i32 343, i32 3, metadata !619, null}
!1550 = metadata !{i32 345, i32 7, metadata !1551, null}
!1551 = metadata !{i32 786443, metadata !146, metadata !619, i32 345, i32 7, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!1552 = metadata !{i32 786688, metadata !1553, metadata !"vname", metadata !147, i32 346, metadata !248, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vname] [line 346]
!1553 = metadata !{i32 786443, metadata !146, metadata !1551, i32 345, i32 37, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!1554 = metadata !{i32 346, i32 14, metadata !1553, null}
!1555 = metadata !{i32 346, i32 22, metadata !1553, null}
!1556 = metadata !{i32 786688, metadata !1553, metadata !"msg", metadata !147, i32 347, metadata !415, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [msg] [line 347]
!1557 = metadata !{i32 347, i32 17, metadata !1553, null}
!1558 = metadata !{i32 347, i32 23, metadata !1553, null}
!1559 = metadata !{i32 350, i32 5, metadata !1553, null}
!1560 = metadata !{i32 352, i32 3, metadata !619, null}
!1561 = metadata !{i32 354, i32 8, metadata !1562, null}
!1562 = metadata !{i32 786443, metadata !146, metadata !619, i32 354, i32 3, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!1563 = metadata !{i32 354, i32 8, metadata !1564, null}
!1564 = metadata !{i32 786443, metadata !146, metadata !1565, i32 354, i32 8, i32 2, i32 246} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!1565 = metadata !{i32 786443, metadata !146, metadata !1562, i32 354, i32 8, i32 1, i32 245} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!1566 = metadata !{i32 355, i32 5, metadata !1562, null}
!1567 = metadata !{i32 354, i32 30, metadata !1562, null}
!1568 = metadata !{i32 356, i32 3, metadata !619, null}
!1569 = metadata !{i32 357, i32 1, metadata !619, null}
!1570 = metadata !{i32 786689, metadata !622, metadata !"fs", metadata !147, i32 16777411, metadata !597, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fs] [line 195]
!1571 = metadata !{i32 195, i32 38, metadata !622, null}
!1572 = metadata !{i32 786689, metadata !622, metadata !"i", metadata !147, i32 33554627, metadata !181, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [i] [line 195]
!1573 = metadata !{i32 195, i32 46, metadata !622, null}
!1574 = metadata !{i32 786688, metadata !622, metadata !"idx", metadata !147, i32 196, metadata !181, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [idx] [line 196]
!1575 = metadata !{i32 196, i32 7, metadata !622, null}
!1576 = metadata !{i32 196, i32 3, metadata !622, null}
!1577 = metadata !{i32 198, i32 3, metadata !622, null}
!1578 = metadata !{i32 786689, metadata !630, metadata !"ls", metadata !147, i32 16777599, metadata !537, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ls] [line 383]
!1579 = metadata !{i32 383, i32 37, metadata !630, null}
!1580 = metadata !{i32 786689, metadata !630, metadata !"l", metadata !147, i32 33554815, metadata !633, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [l] [line 383]
!1581 = metadata !{i32 383, i32 52, metadata !630, null}
!1582 = metadata !{i32 786689, metadata !630, metadata !"name", metadata !147, i32 50332031, metadata !248, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 383]
!1583 = metadata !{i32 383, i32 64, metadata !630, null}
!1584 = metadata !{i32 786689, metadata !630, metadata !"line", metadata !147, i32 67109248, metadata !181, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [line] [line 384]
!1585 = metadata !{i32 384, i32 31, metadata !630, null}
!1586 = metadata !{i32 786689, metadata !630, metadata !"pc", metadata !147, i32 83886464, metadata !181, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pc] [line 384]
!1587 = metadata !{i32 384, i32 41, metadata !630, null}
!1588 = metadata !{i32 786688, metadata !630, metadata !"n", metadata !147, i32 385, metadata !181, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 385]
!1589 = metadata !{i32 385, i32 7, metadata !630, null}
!1590 = metadata !{i32 385, i32 3, metadata !630, null}
!1591 = metadata !{i32 386, i32 3, metadata !1592, null}
!1592 = metadata !{i32 786443, metadata !146, metadata !630, i32 386, i32 3, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!1593 = metadata !{i32 386, i32 3, metadata !1594, null}
!1594 = metadata !{i32 786443, metadata !146, metadata !1592, i32 386, i32 3, i32 1, i32 247} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!1595 = metadata !{i32 388, i32 3, metadata !630, null}
!1596 = metadata !{i32 389, i32 3, metadata !630, null}
!1597 = metadata !{i32 390, i32 3, metadata !630, null}
!1598 = metadata !{i32 391, i32 3, metadata !630, null}
!1599 = metadata !{i32 392, i32 3, metadata !630, null}
!1600 = metadata !{i32 393, i32 3, metadata !630, null}
!1601 = metadata !{i32 786689, metadata !629, metadata !"ls", metadata !147, i32 16777617, metadata !537, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ls] [line 401]
!1602 = metadata !{i32 401, i32 34, metadata !629, null}
!1603 = metadata !{i32 786689, metadata !629, metadata !"lb", metadata !147, i32 33554833, metadata !523, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [lb] [line 401]
!1604 = metadata !{i32 401, i32 49, metadata !629, null}
!1605 = metadata !{i32 786688, metadata !629, metadata !"gl", metadata !147, i32 402, metadata !633, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gl] [line 402]
!1606 = metadata !{i32 402, i32 14, metadata !629, null}
!1607 = metadata !{i32 402, i32 3, metadata !629, null}
!1608 = metadata !{i32 786688, metadata !629, metadata !"i", metadata !147, i32 403, metadata !181, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 403]
!1609 = metadata !{i32 403, i32 7, metadata !629, null}
!1610 = metadata !{i32 403, i32 3, metadata !629, null}
!1611 = metadata !{i32 404, i32 3, metadata !629, null}
!1612 = metadata !{i32 404, i32 3, metadata !1613, null}
!1613 = metadata !{i32 786443, metadata !146, metadata !629, i32 404, i32 3, i32 1, i32 248} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!1614 = metadata !{i32 405, i32 9, metadata !1615, null}
!1615 = metadata !{i32 786443, metadata !146, metadata !1616, i32 405, i32 9, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!1616 = metadata !{i32 786443, metadata !146, metadata !629, i32 404, i32 21, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!1617 = metadata !{i32 406, i32 7, metadata !1615, null}
!1618 = metadata !{i32 408, i32 7, metadata !1615, null}
!1619 = metadata !{i32 409, i32 3, metadata !1616, null}
!1620 = metadata !{i32 410, i32 1, metadata !629, null}
!1621 = metadata !{i32 786689, metadata !637, metadata !"ls", metadata !147, i32 16777289, metadata !537, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ls] [line 73]
!1622 = metadata !{i32 73, i32 42, metadata !637, null}
!1623 = metadata !{i32 786689, metadata !637, metadata !"token", metadata !147, i32 33554505, metadata !181, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [token] [line 73]
!1624 = metadata !{i32 73, i32 50, metadata !637, null}
!1625 = metadata !{i32 74, i32 3, metadata !637, null}
!1626 = metadata !{i32 75, i32 7, metadata !637, null}
!1627 = metadata !{i32 75, i32 46, metadata !637, null}
!1628 = metadata !{i32 76, i32 1, metadata !637, null}
!1629 = metadata !{i32 786689, metadata !797, metadata !"ls", metadata !147, i32 16777801, metadata !537, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ls] [line 585]
!1630 = metadata !{i32 585, i32 36, metadata !797, null}
!1631 = metadata !{i32 786689, metadata !797, metadata !"withuntil", metadata !147, i32 33555017, metadata !181, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [withuntil] [line 585]
!1632 = metadata !{i32 585, i32 44, metadata !797, null}
!1633 = metadata !{i32 586, i32 3, metadata !797, null}
!1634 = metadata !{i32 589, i32 7, metadata !1635, null}
!1635 = metadata !{i32 786443, metadata !146, metadata !797, i32 586, i32 24, i32 0, i32 210} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!1636 = metadata !{i32 590, i32 20, metadata !1635, null}
!1637 = metadata !{i32 591, i32 14, metadata !1635, null}
!1638 = metadata !{i32 593, i32 1, metadata !797, null}
!1639 = metadata !{i32 786689, metadata !639, metadata !"ls", metadata !147, i32 16778755, metadata !537, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ls] [line 1539]
!1640 = metadata !{i32 1539, i32 34, metadata !639, null}
!1641 = metadata !{i32 786688, metadata !639, metadata !"line", metadata !147, i32 1540, metadata !181, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [line] [line 1540]
!1642 = metadata !{i32 1540, i32 7, metadata !639, null}
!1643 = metadata !{i32 1540, i32 3, metadata !639, null}
!1644 = metadata !{i32 1541, i32 3, metadata !639, null}
!1645 = metadata !{i32 1542, i32 3, metadata !639, null}
!1646 = metadata !{i32 1544, i32 7, metadata !1647, null}
!1647 = metadata !{i32 786443, metadata !146, metadata !1648, i32 1543, i32 15, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!1648 = metadata !{i32 786443, metadata !146, metadata !639, i32 1542, i32 24, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!1649 = metadata !{i32 1545, i32 7, metadata !1647, null}
!1650 = metadata !{i32 1548, i32 7, metadata !1651, null}
!1651 = metadata !{i32 786443, metadata !146, metadata !1648, i32 1547, i32 17, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!1652 = metadata !{i32 1549, i32 7, metadata !1651, null}
!1653 = metadata !{i32 1552, i32 7, metadata !1654, null}
!1654 = metadata !{i32 786443, metadata !146, metadata !1648, i32 1551, i32 20, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!1655 = metadata !{i32 1553, i32 7, metadata !1654, null}
!1656 = metadata !{i32 1556, i32 7, metadata !1657, null}
!1657 = metadata !{i32 786443, metadata !146, metadata !1648, i32 1555, i32 17, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!1658 = metadata !{i32 1557, i32 7, metadata !1657, null}
!1659 = metadata !{i32 1558, i32 7, metadata !1657, null}
!1660 = metadata !{i32 1559, i32 7, metadata !1657, null}
!1661 = metadata !{i32 1562, i32 7, metadata !1662, null}
!1662 = metadata !{i32 786443, metadata !146, metadata !1648, i32 1561, i32 18, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!1663 = metadata !{i32 1563, i32 7, metadata !1662, null}
!1664 = metadata !{i32 1566, i32 7, metadata !1665, null}
!1665 = metadata !{i32 786443, metadata !146, metadata !1648, i32 1565, i32 21, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!1666 = metadata !{i32 1567, i32 7, metadata !1665, null}
!1667 = metadata !{i32 1570, i32 7, metadata !1668, null}
!1668 = metadata !{i32 786443, metadata !146, metadata !1648, i32 1569, i32 23, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!1669 = metadata !{i32 1571, i32 7, metadata !1668, null}
!1670 = metadata !{i32 1574, i32 7, metadata !1671, null}
!1671 = metadata !{i32 786443, metadata !146, metadata !1648, i32 1573, i32 20, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!1672 = metadata !{i32 1575, i32 11, metadata !1673, null}
!1673 = metadata !{i32 786443, metadata !146, metadata !1671, i32 1575, i32 11, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!1674 = metadata !{i32 1576, i32 9, metadata !1673, null}
!1675 = metadata !{i32 1578, i32 9, metadata !1673, null}
!1676 = metadata !{i32 1579, i32 7, metadata !1671, null}
!1677 = metadata !{i32 1582, i32 7, metadata !1678, null}
!1678 = metadata !{i32 786443, metadata !146, metadata !1648, i32 1581, i32 22, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!1679 = metadata !{i32 1583, i32 7, metadata !1678, null}
!1680 = metadata !{i32 1583, i32 21, metadata !1678, null}
!1681 = metadata !{i32 1584, i32 7, metadata !1678, null}
!1682 = metadata !{i32 1587, i32 7, metadata !1683, null}
!1683 = metadata !{i32 786443, metadata !146, metadata !1648, i32 1586, i32 21, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!1684 = metadata !{i32 1588, i32 7, metadata !1683, null}
!1685 = metadata !{i32 1589, i32 7, metadata !1683, null}
!1686 = metadata !{i32 1593, i32 7, metadata !1687, null}
!1687 = metadata !{i32 786443, metadata !146, metadata !1648, i32 1592, i32 19, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!1688 = metadata !{i32 1593, i32 20, metadata !1687, null}
!1689 = metadata !{i32 1594, i32 7, metadata !1687, null}
!1690 = metadata !{i32 1597, i32 7, metadata !1691, null}
!1691 = metadata !{i32 786443, metadata !146, metadata !1648, i32 1596, i32 14, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!1692 = metadata !{i32 1598, i32 7, metadata !1691, null}
!1693 = metadata !{i32 1603, i32 3, metadata !639, null}
!1694 = metadata !{i32 1604, i32 3, metadata !639, null}
!1695 = metadata !{i32 1605, i32 1, metadata !639, null}
!1696 = metadata !{i32 786689, metadata !796, metadata !"ls", metadata !147, i32 16777545, metadata !537, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ls] [line 329]
!1697 = metadata !{i32 329, i32 35, metadata !796, null}
!1698 = metadata !{i32 786688, metadata !796, metadata !"L", metadata !147, i32 330, metadata !208, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [L] [line 330]
!1699 = metadata !{i32 330, i32 14, metadata !796, null}
!1700 = metadata !{i32 330, i32 3, metadata !796, null}
!1701 = metadata !{i32 331, i32 3, metadata !796, null}
!1702 = metadata !{i32 332, i32 3, metadata !796, null}
!1703 = metadata !{i32 333, i32 1, metadata !796, null}
!1704 = metadata !{i32 786689, metadata !792, metadata !"ls", metadata !147, i32 16778635, metadata !537, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ls] [line 1419]
!1705 = metadata !{i32 1419, i32 31, metadata !792, null}
!1706 = metadata !{i32 786689, metadata !792, metadata !"line", metadata !147, i32 33555851, metadata !181, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [line] [line 1419]
!1707 = metadata !{i32 1419, i32 39, metadata !792, null}
!1708 = metadata !{i32 786688, metadata !792, metadata !"fs", metadata !147, i32 1421, metadata !597, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fs] [line 1421]
!1709 = metadata !{i32 1421, i32 14, metadata !792, null}
!1710 = metadata !{i32 1421, i32 3, metadata !792, null}
!1711 = metadata !{i32 786688, metadata !792, metadata !"escapelist", metadata !147, i32 1422, metadata !181, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [escapelist] [line 1422]
!1712 = metadata !{i32 1422, i32 7, metadata !792, null}
!1713 = metadata !{i32 1422, i32 3, metadata !792, null}
!1714 = metadata !{i32 1423, i32 3, metadata !792, null}
!1715 = metadata !{i32 1424, i32 3, metadata !792, null}
!1716 = metadata !{i32 1424, i32 3, metadata !1717, null}
!1717 = metadata !{i32 786443, metadata !146, metadata !792, i32 1424, i32 3, i32 1, i32 249} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!1718 = metadata !{i32 1425, i32 5, metadata !792, null}
!1719 = metadata !{i32 1426, i32 7, metadata !1720, null}
!1720 = metadata !{i32 786443, metadata !146, metadata !792, i32 1426, i32 7, i32 0, i32 203} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!1721 = metadata !{i32 1427, i32 5, metadata !1720, null}
!1722 = metadata !{i32 1428, i32 3, metadata !792, null}
!1723 = metadata !{i32 1429, i32 3, metadata !792, null}
!1724 = metadata !{i32 1430, i32 1, metadata !792, null}
!1725 = metadata !{i32 786689, metadata !791, metadata !"ls", metadata !147, i32 16778459, metadata !537, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ls] [line 1243]
!1726 = metadata !{i32 1243, i32 34, metadata !791, null}
!1727 = metadata !{i32 786689, metadata !791, metadata !"line", metadata !147, i32 33555675, metadata !181, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [line] [line 1243]
!1728 = metadata !{i32 1243, i32 42, metadata !791, null}
!1729 = metadata !{i32 786688, metadata !791, metadata !"fs", metadata !147, i32 1245, metadata !597, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fs] [line 1245]
!1730 = metadata !{i32 1245, i32 14, metadata !791, null}
!1731 = metadata !{i32 1245, i32 3, metadata !791, null}
!1732 = metadata !{i32 786688, metadata !791, metadata !"whileinit", metadata !147, i32 1246, metadata !181, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [whileinit] [line 1246]
!1733 = metadata !{i32 1246, i32 7, metadata !791, null}
!1734 = metadata !{i32 786688, metadata !791, metadata !"condexit", metadata !147, i32 1247, metadata !181, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [condexit] [line 1247]
!1735 = metadata !{i32 1247, i32 7, metadata !791, null}
!1736 = metadata !{i32 786688, metadata !791, metadata !"bl", metadata !147, i32 1248, metadata !615, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bl] [line 1248]
!1737 = metadata !{i32 1248, i32 12, metadata !791, null}
!1738 = metadata !{i32 1249, i32 3, metadata !791, null}
!1739 = metadata !{i32 1250, i32 15, metadata !791, null}
!1740 = metadata !{i32 1251, i32 14, metadata !791, null}
!1741 = metadata !{i32 1252, i32 3, metadata !791, null}
!1742 = metadata !{i32 1253, i32 3, metadata !791, null}
!1743 = metadata !{i32 1254, i32 3, metadata !791, null}
!1744 = metadata !{i32 1255, i32 3, metadata !791, null}
!1745 = metadata !{i32 1256, i32 3, metadata !791, null}
!1746 = metadata !{i32 1257, i32 3, metadata !791, null}
!1747 = metadata !{i32 1258, i32 3, metadata !791, null}
!1748 = metadata !{i32 1259, i32 1, metadata !791, null}
!1749 = metadata !{i32 786689, metadata !790, metadata !"ls", metadata !147, i32 16778308, metadata !537, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ls] [line 1092]
!1750 = metadata !{i32 1092, i32 30, metadata !790, null}
!1751 = metadata !{i32 786688, metadata !790, metadata !"fs", metadata !147, i32 1094, metadata !597, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fs] [line 1094]
!1752 = metadata !{i32 1094, i32 14, metadata !790, null}
!1753 = metadata !{i32 1094, i32 3, metadata !790, null}
!1754 = metadata !{i32 786688, metadata !790, metadata !"bl", metadata !147, i32 1095, metadata !615, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bl] [line 1095]
!1755 = metadata !{i32 1095, i32 12, metadata !790, null}
!1756 = metadata !{i32 1096, i32 3, metadata !790, null}
!1757 = metadata !{i32 1097, i32 3, metadata !790, null}
!1758 = metadata !{i32 1098, i32 3, metadata !790, null}
!1759 = metadata !{i32 1099, i32 1, metadata !790, null}
!1760 = metadata !{i32 786689, metadata !787, metadata !"ls", metadata !147, i32 16777338, metadata !537, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ls] [line 122]
!1761 = metadata !{i32 122, i32 36, metadata !787, null}
!1762 = metadata !{i32 786689, metadata !787, metadata !"what", metadata !147, i32 33554554, metadata !181, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [what] [line 122]
!1763 = metadata !{i32 122, i32 44, metadata !787, null}
!1764 = metadata !{i32 786689, metadata !787, metadata !"who", metadata !147, i32 50331770, metadata !181, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [who] [line 122]
!1765 = metadata !{i32 122, i32 54, metadata !787, null}
!1766 = metadata !{i32 786689, metadata !787, metadata !"where", metadata !147, i32 67108986, metadata !181, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [where] [line 122]
!1767 = metadata !{i32 122, i32 63, metadata !787, null}
!1768 = metadata !{i32 123, i32 8, metadata !1769, null}
!1769 = metadata !{i32 786443, metadata !146, metadata !787, i32 123, i32 7, i32 0, i32 199} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!1770 = metadata !{i32 124, i32 9, metadata !1771, null}
!1771 = metadata !{i32 786443, metadata !146, metadata !1772, i32 124, i32 9, i32 0, i32 201} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!1772 = metadata !{i32 786443, metadata !146, metadata !1769, i32 123, i32 28, i32 0, i32 200} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!1773 = metadata !{i32 125, i32 7, metadata !1771, null}
!1774 = metadata !{i32 127, i32 7, metadata !1775, null}
!1775 = metadata !{i32 786443, metadata !146, metadata !1771, i32 126, i32 10, i32 0, i32 202} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!1776 = metadata !{i32 127, i32 28, metadata !1775, null}
!1777 = metadata !{i32 129, i32 15, metadata !1775, null}
!1778 = metadata !{i32 129, i32 41, metadata !1775, null}
!1779 = metadata !{i32 132, i32 1, metadata !787, null}
!1780 = metadata !{i32 786689, metadata !780, metadata !"ls", metadata !147, i32 16778582, metadata !537, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ls] [line 1366]
!1781 = metadata !{i32 1366, i32 32, metadata !780, null}
!1782 = metadata !{i32 786689, metadata !780, metadata !"line", metadata !147, i32 33555798, metadata !181, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [line] [line 1366]
!1783 = metadata !{i32 1366, i32 40, metadata !780, null}
!1784 = metadata !{i32 786688, metadata !780, metadata !"fs", metadata !147, i32 1368, metadata !597, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fs] [line 1368]
!1785 = metadata !{i32 1368, i32 14, metadata !780, null}
!1786 = metadata !{i32 1368, i32 3, metadata !780, null}
!1787 = metadata !{i32 786688, metadata !780, metadata !"varname", metadata !147, i32 1369, metadata !248, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [varname] [line 1369]
!1788 = metadata !{i32 1369, i32 12, metadata !780, null}
!1789 = metadata !{i32 786688, metadata !780, metadata !"bl", metadata !147, i32 1370, metadata !615, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bl] [line 1370]
!1790 = metadata !{i32 1370, i32 12, metadata !780, null}
!1791 = metadata !{i32 1371, i32 3, metadata !780, null}
!1792 = metadata !{i32 1372, i32 3, metadata !780, null}
!1793 = metadata !{i32 1373, i32 13, metadata !780, null}
!1794 = metadata !{i32 1374, i32 3, metadata !780, null}
!1795 = metadata !{i32 1375, i32 15, metadata !1796, null}
!1796 = metadata !{i32 786443, metadata !146, metadata !780, i32 1374, i32 24, i32 0, i32 193} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!1797 = metadata !{i32 1375, i32 42, metadata !1796, null}
!1798 = metadata !{i32 1376, i32 27, metadata !1796, null}
!1799 = metadata !{i32 1376, i32 49, metadata !1796, null}
!1800 = metadata !{i32 1377, i32 14, metadata !1796, null}
!1801 = metadata !{i32 1379, i32 3, metadata !780, null}
!1802 = metadata !{i32 1380, i32 3, metadata !780, null}
!1803 = metadata !{i32 1381, i32 1, metadata !780, null}
!1804 = metadata !{i32 786689, metadata !773, metadata !"ls", metadata !147, i32 16778478, metadata !537, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ls] [line 1262]
!1805 = metadata !{i32 1262, i32 35, metadata !773, null}
!1806 = metadata !{i32 786689, metadata !773, metadata !"line", metadata !147, i32 33555694, metadata !181, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [line] [line 1262]
!1807 = metadata !{i32 1262, i32 43, metadata !773, null}
!1808 = metadata !{i32 786688, metadata !773, metadata !"condexit", metadata !147, i32 1264, metadata !181, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [condexit] [line 1264]
!1809 = metadata !{i32 1264, i32 7, metadata !773, null}
!1810 = metadata !{i32 786688, metadata !773, metadata !"fs", metadata !147, i32 1265, metadata !597, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fs] [line 1265]
!1811 = metadata !{i32 1265, i32 14, metadata !773, null}
!1812 = metadata !{i32 1265, i32 3, metadata !773, null}
!1813 = metadata !{i32 786688, metadata !773, metadata !"repeat_init", metadata !147, i32 1266, metadata !181, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [repeat_init] [line 1266]
!1814 = metadata !{i32 1266, i32 7, metadata !773, null}
!1815 = metadata !{i32 1266, i32 21, metadata !773, null}
!1816 = metadata !{i32 786688, metadata !773, metadata !"bl1", metadata !147, i32 1267, metadata !615, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bl1] [line 1267]
!1817 = metadata !{i32 1267, i32 12, metadata !773, null}
!1818 = metadata !{i32 786688, metadata !773, metadata !"bl2", metadata !147, i32 1267, metadata !615, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bl2] [line 1267]
!1819 = metadata !{i32 1267, i32 17, metadata !773, null}
!1820 = metadata !{i32 1268, i32 3, metadata !773, null}
!1821 = metadata !{i32 1269, i32 3, metadata !773, null}
!1822 = metadata !{i32 1270, i32 3, metadata !773, null}
!1823 = metadata !{i32 1271, i32 3, metadata !773, null}
!1824 = metadata !{i32 1272, i32 3, metadata !773, null}
!1825 = metadata !{i32 1273, i32 14, metadata !773, null}
!1826 = metadata !{i32 1274, i32 7, metadata !1827, null}
!1827 = metadata !{i32 786443, metadata !146, metadata !773, i32 1274, i32 7, i32 0, i32 191} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!1828 = metadata !{i32 1275, i32 5, metadata !1827, null}
!1829 = metadata !{i32 1276, i32 3, metadata !773, null}
!1830 = metadata !{i32 1277, i32 3, metadata !773, null}
!1831 = metadata !{i32 1278, i32 3, metadata !773, null}
!1832 = metadata !{i32 1279, i32 1, metadata !773, null}
!1833 = metadata !{i32 786689, metadata !771, metadata !"ls", metadata !147, i32 16778694, metadata !537, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ls] [line 1478]
!1834 = metadata !{i32 1478, i32 33, metadata !771, null}
!1835 = metadata !{i32 786689, metadata !771, metadata !"line", metadata !147, i32 33555910, metadata !181, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [line] [line 1478]
!1836 = metadata !{i32 1478, i32 41, metadata !771, null}
!1837 = metadata !{i32 786688, metadata !771, metadata !"ismethod", metadata !147, i32 1480, metadata !181, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ismethod] [line 1480]
!1838 = metadata !{i32 1480, i32 7, metadata !771, null}
!1839 = metadata !{i32 786688, metadata !771, metadata !"v", metadata !147, i32 1481, metadata !649, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [v] [line 1481]
!1840 = metadata !{i32 1481, i32 11, metadata !771, null}
!1841 = metadata !{i32 786688, metadata !771, metadata !"b", metadata !147, i32 1481, metadata !649, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b] [line 1481]
!1842 = metadata !{i32 1481, i32 14, metadata !771, null}
!1843 = metadata !{i32 1482, i32 3, metadata !771, null}
!1844 = metadata !{i32 1483, i32 14, metadata !771, null}
!1845 = metadata !{i32 1484, i32 3, metadata !771, null}
!1846 = metadata !{i32 1485, i32 3, metadata !771, null}
!1847 = metadata !{i32 1486, i32 3, metadata !771, null}
!1848 = metadata !{i32 1487, i32 1, metadata !771, null}
!1849 = metadata !{i32 786689, metadata !770, metadata !"ls", metadata !147, i32 16777313, metadata !537, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ls] [line 97]
!1850 = metadata !{i32 97, i32 32, metadata !770, null}
!1851 = metadata !{i32 786689, metadata !770, metadata !"c", metadata !147, i32 33554529, metadata !181, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [c] [line 97]
!1852 = metadata !{i32 97, i32 40, metadata !770, null}
!1853 = metadata !{i32 98, i32 7, metadata !1854, null}
!1854 = metadata !{i32 786443, metadata !146, metadata !770, i32 98, i32 7, i32 0, i32 187} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!1855 = metadata !{i32 99, i32 5, metadata !1856, null}
!1856 = metadata !{i32 786443, metadata !146, metadata !1854, i32 98, i32 25, i32 0, i32 188} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!1857 = metadata !{i32 100, i32 5, metadata !1856, null}
!1858 = metadata !{i32 102, i32 8, metadata !1854, null}
!1859 = metadata !{i32 103, i32 1, metadata !770, null}
!1860 = metadata !{i32 786689, metadata !769, metadata !"ls", metadata !147, i32 16778649, metadata !537, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ls] [line 1433]
!1861 = metadata !{i32 1433, i32 34, metadata !769, null}
!1862 = metadata !{i32 786688, metadata !769, metadata !"b", metadata !147, i32 1434, metadata !649, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b] [line 1434]
!1863 = metadata !{i32 1434, i32 11, metadata !769, null}
!1864 = metadata !{i32 786688, metadata !769, metadata !"fs", metadata !147, i32 1435, metadata !597, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fs] [line 1435]
!1865 = metadata !{i32 1435, i32 14, metadata !769, null}
!1866 = metadata !{i32 1435, i32 3, metadata !769, null}
!1867 = metadata !{i32 1436, i32 3, metadata !769, null}
!1868 = metadata !{i32 1436, i32 20, metadata !769, null}
!1869 = metadata !{i32 1437, i32 3, metadata !769, null}
!1870 = metadata !{i32 1438, i32 3, metadata !769, null}
!1871 = metadata !{i32 1440, i32 3, metadata !769, null}
!1872 = metadata !{i32 1441, i32 1, metadata !769, null}
!1873 = metadata !{i32 786689, metadata !768, metadata !"ls", metadata !147, i32 16778660, metadata !537, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ls] [line 1444]
!1874 = metadata !{i32 1444, i32 34, metadata !768, null}
!1875 = metadata !{i32 786688, metadata !768, metadata !"nvars", metadata !147, i32 1446, metadata !181, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nvars] [line 1446]
!1876 = metadata !{i32 1446, i32 7, metadata !768, null}
!1877 = metadata !{i32 1446, i32 3, metadata !768, null}
!1878 = metadata !{i32 786688, metadata !768, metadata !"nexps", metadata !147, i32 1447, metadata !181, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nexps] [line 1447]
!1879 = metadata !{i32 1447, i32 7, metadata !768, null}
!1880 = metadata !{i32 786688, metadata !768, metadata !"e", metadata !147, i32 1448, metadata !649, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [e] [line 1448]
!1881 = metadata !{i32 1448, i32 11, metadata !768, null}
!1882 = metadata !{i32 1449, i32 3, metadata !768, null}
!1883 = metadata !{i32 1450, i32 5, metadata !1884, null}
!1884 = metadata !{i32 786443, metadata !146, metadata !768, i32 1449, i32 6, i32 0, i32 184} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!1885 = metadata !{i32 1450, i32 22, metadata !1884, null}
!1886 = metadata !{i32 1451, i32 5, metadata !1884, null}
!1887 = metadata !{i32 1452, i32 3, metadata !1884, null}
!1888 = metadata !{i32 1452, i32 12, metadata !1889, null}
!1889 = metadata !{i32 786443, metadata !146, metadata !768, i32 1452, i32 12, i32 1, i32 250} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!1890 = metadata !{i32 1453, i32 7, metadata !1891, null}
!1891 = metadata !{i32 786443, metadata !146, metadata !768, i32 1453, i32 7, i32 0, i32 185} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!1892 = metadata !{i32 1454, i32 13, metadata !1891, null}
!1893 = metadata !{i32 1456, i32 5, metadata !1894, null}
!1894 = metadata !{i32 786443, metadata !146, metadata !1891, i32 1455, i32 8, i32 0, i32 186} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!1895 = metadata !{i32 1457, i32 5, metadata !1894, null}
!1896 = metadata !{i32 1459, i32 3, metadata !768, null}
!1897 = metadata !{i32 1460, i32 3, metadata !768, null}
!1898 = metadata !{i32 1461, i32 1, metadata !768, null}
!1899 = metadata !{i32 786689, metadata !761, metadata !"ls", metadata !147, i32 16778441, metadata !537, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ls] [line 1225]
!1900 = metadata !{i32 1225, i32 34, metadata !761, null}
!1901 = metadata !{i32 786689, metadata !761, metadata !"label", metadata !147, i32 33555657, metadata !248, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [label] [line 1225]
!1902 = metadata !{i32 1225, i32 47, metadata !761, null}
!1903 = metadata !{i32 786689, metadata !761, metadata !"line", metadata !147, i32 50332873, metadata !181, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [line] [line 1225]
!1904 = metadata !{i32 1225, i32 58, metadata !761, null}
!1905 = metadata !{i32 786688, metadata !761, metadata !"fs", metadata !147, i32 1227, metadata !597, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fs] [line 1227]
!1906 = metadata !{i32 1227, i32 14, metadata !761, null}
!1907 = metadata !{i32 1227, i32 3, metadata !761, null}
!1908 = metadata !{i32 786688, metadata !761, metadata !"ll", metadata !147, i32 1228, metadata !633, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ll] [line 1228]
!1909 = metadata !{i32 1228, i32 14, metadata !761, null}
!1910 = metadata !{i32 1228, i32 3, metadata !761, null}
!1911 = metadata !{i32 786688, metadata !761, metadata !"l", metadata !147, i32 1229, metadata !181, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [l] [line 1229]
!1912 = metadata !{i32 1229, i32 7, metadata !761, null}
!1913 = metadata !{i32 1230, i32 3, metadata !761, null}
!1914 = metadata !{i32 1231, i32 3, metadata !761, null}
!1915 = metadata !{i32 1233, i32 7, metadata !761, null}
!1916 = metadata !{i32 1233, i32 42, metadata !761, null}
!1917 = metadata !{i32 1234, i32 3, metadata !761, null}
!1918 = metadata !{i32 1235, i32 7, metadata !1919, null}
!1919 = metadata !{i32 786443, metadata !146, metadata !761, i32 1235, i32 7, i32 0, i32 178} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!1920 = metadata !{i32 1237, i32 5, metadata !1921, null}
!1921 = metadata !{i32 786443, metadata !146, metadata !1919, i32 1235, i32 28, i32 0, i32 179} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!1922 = metadata !{i32 1238, i32 3, metadata !1921, null}
!1923 = metadata !{i32 1239, i32 3, metadata !761, null}
!1924 = metadata !{i32 1240, i32 1, metadata !761, null}
!1925 = metadata !{i32 786689, metadata !758, metadata !"ls", metadata !147, i32 16777351, metadata !537, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ls] [line 135]
!1926 = metadata !{i32 135, i32 42, metadata !758, null}
!1927 = metadata !{i32 786688, metadata !758, metadata !"ts", metadata !147, i32 136, metadata !248, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ts] [line 136]
!1928 = metadata !{i32 136, i32 12, metadata !758, null}
!1929 = metadata !{i32 137, i32 3, metadata !758, null}
!1930 = metadata !{i32 138, i32 3, metadata !758, null}
!1931 = metadata !{i32 139, i32 3, metadata !758, null}
!1932 = metadata !{i32 140, i32 3, metadata !758, null}
!1933 = metadata !{i32 786689, metadata !757, metadata !"ls", metadata !147, i32 16778722, metadata !537, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ls] [line 1506]
!1934 = metadata !{i32 1506, i32 32, metadata !757, null}
!1935 = metadata !{i32 786688, metadata !757, metadata !"fs", metadata !147, i32 1508, metadata !597, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fs] [line 1508]
!1936 = metadata !{i32 1508, i32 14, metadata !757, null}
!1937 = metadata !{i32 1508, i32 3, metadata !757, null}
!1938 = metadata !{i32 786688, metadata !757, metadata !"e", metadata !147, i32 1509, metadata !649, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [e] [line 1509]
!1939 = metadata !{i32 1509, i32 11, metadata !757, null}
!1940 = metadata !{i32 786688, metadata !757, metadata !"first", metadata !147, i32 1510, metadata !181, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [first] [line 1510]
!1941 = metadata !{i32 1510, i32 7, metadata !757, null}
!1942 = metadata !{i32 786688, metadata !757, metadata !"nret", metadata !147, i32 1510, metadata !181, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nret] [line 1510]
!1943 = metadata !{i32 1510, i32 14, metadata !757, null}
!1944 = metadata !{i32 1511, i32 7, metadata !1945, null}
!1945 = metadata !{i32 786443, metadata !146, metadata !757, i32 1511, i32 7, i32 0, i32 169} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!1946 = metadata !{i32 1511, i32 7, metadata !1947, null}
!1947 = metadata !{i32 786443, metadata !146, metadata !1945, i32 1511, i32 7, i32 1, i32 251} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!1948 = metadata !{i32 1512, i32 5, metadata !1945, null}
!1949 = metadata !{i32 1514, i32 12, metadata !1950, null}
!1950 = metadata !{i32 786443, metadata !146, metadata !1945, i32 1513, i32 8, i32 0, i32 170} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!1951 = metadata !{i32 1515, i32 9, metadata !1952, null}
!1952 = metadata !{i32 786443, metadata !146, metadata !1950, i32 1515, i32 9, i32 0, i32 171} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!1953 = metadata !{i32 1515, i32 9, metadata !1954, null}
!1954 = metadata !{i32 786443, metadata !146, metadata !1952, i32 1515, i32 9, i32 1, i32 252} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!1955 = metadata !{i32 1516, i32 7, metadata !1956, null}
!1956 = metadata !{i32 786443, metadata !146, metadata !1952, i32 1515, i32 26, i32 0, i32 172} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!1957 = metadata !{i32 1517, i32 11, metadata !1958, null}
!1958 = metadata !{i32 786443, metadata !146, metadata !1956, i32 1517, i32 11, i32 0, i32 173} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!1959 = metadata !{i32 1517, i32 11, metadata !1960, null}
!1960 = metadata !{i32 786443, metadata !146, metadata !1958, i32 1517, i32 11, i32 1, i32 253} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!1961 = metadata !{i32 1518, i32 9, metadata !1962, null}
!1962 = metadata !{i32 786443, metadata !146, metadata !1958, i32 1517, i32 38, i32 0, i32 174} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!1963 = metadata !{i32 1520, i32 7, metadata !1962, null}
!1964 = metadata !{i32 1521, i32 7, metadata !1956, null}
!1965 = metadata !{i32 1522, i32 7, metadata !1956, null}
!1966 = metadata !{i32 1523, i32 5, metadata !1956, null}
!1967 = metadata !{i32 1525, i32 11, metadata !1968, null}
!1968 = metadata !{i32 786443, metadata !146, metadata !1969, i32 1525, i32 11, i32 0, i32 176} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!1969 = metadata !{i32 786443, metadata !146, metadata !1952, i32 1524, i32 10, i32 0, i32 175} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!1970 = metadata !{i32 1526, i32 17, metadata !1968, null}
!1971 = metadata !{i32 1528, i32 9, metadata !1972, null}
!1972 = metadata !{i32 786443, metadata !146, metadata !1968, i32 1527, i32 12, i32 0, i32 177} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!1973 = metadata !{i32 1529, i32 9, metadata !1972, null}
!1974 = metadata !{i32 1534, i32 3, metadata !757, null}
!1975 = metadata !{i32 1535, i32 3, metadata !757, null}
!1976 = metadata !{i32 1536, i32 1, metadata !757, null}
!1977 = metadata !{i32 786689, metadata !756, metadata !"ls", metadata !147, i32 16778405, metadata !537, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ls] [line 1189]
!1978 = metadata !{i32 1189, i32 33, metadata !756, null}
!1979 = metadata !{i32 786689, metadata !756, metadata !"pc", metadata !147, i32 33555621, metadata !181, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pc] [line 1189]
!1980 = metadata !{i32 1189, i32 41, metadata !756, null}
!1981 = metadata !{i32 786688, metadata !756, metadata !"line", metadata !147, i32 1190, metadata !181, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [line] [line 1190]
!1982 = metadata !{i32 1190, i32 7, metadata !756, null}
!1983 = metadata !{i32 1190, i32 3, metadata !756, null}
!1984 = metadata !{i32 786688, metadata !756, metadata !"label", metadata !147, i32 1191, metadata !248, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [label] [line 1191]
!1985 = metadata !{i32 1191, i32 12, metadata !756, null}
!1986 = metadata !{i32 786688, metadata !756, metadata !"g", metadata !147, i32 1192, metadata !181, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [g] [line 1192]
!1987 = metadata !{i32 1192, i32 7, metadata !756, null}
!1988 = metadata !{i32 1193, i32 7, metadata !1989, null}
!1989 = metadata !{i32 786443, metadata !146, metadata !756, i32 1193, i32 7, i32 0, i32 167} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!1990 = metadata !{i32 1194, i32 13, metadata !1989, null}
!1991 = metadata !{i32 1196, i32 5, metadata !1992, null}
!1992 = metadata !{i32 786443, metadata !146, metadata !1989, i32 1195, i32 8, i32 0, i32 168} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!1993 = metadata !{i32 1197, i32 13, metadata !1992, null}
!1994 = metadata !{i32 1199, i32 7, metadata !756, null}
!1995 = metadata !{i32 1200, i32 3, metadata !756, null}
!1996 = metadata !{i32 1201, i32 1, metadata !756, null}
!1997 = metadata !{i32 786689, metadata !640, metadata !"ls", metadata !147, i32 16778706, metadata !537, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ls] [line 1490]
!1998 = metadata !{i32 1490, i32 33, metadata !640, null}
!1999 = metadata !{i32 786688, metadata !640, metadata !"fs", metadata !147, i32 1492, metadata !597, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fs] [line 1492]
!2000 = metadata !{i32 1492, i32 14, metadata !640, null}
!2001 = metadata !{i32 1492, i32 3, metadata !640, null}
!2002 = metadata !{i32 786688, metadata !640, metadata !"v", metadata !147, i32 1493, metadata !645, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [v] [line 1493]
!2003 = metadata !{i32 1493, i32 21, metadata !640, null}
!2004 = metadata !{i32 1494, i32 3, metadata !640, null}
!2005 = metadata !{i32 1495, i32 7, metadata !2006, null}
!2006 = metadata !{i32 786443, metadata !146, metadata !640, i32 1495, i32 7, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2007 = metadata !{i32 1495, i32 7, metadata !2008, null}
!2008 = metadata !{i32 786443, metadata !146, metadata !2006, i32 1495, i32 7, i32 1, i32 254} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2009 = metadata !{i32 1496, i32 5, metadata !2010, null}
!2010 = metadata !{i32 786443, metadata !146, metadata !2006, i32 1495, i32 49, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2011 = metadata !{i32 1497, i32 5, metadata !2010, null}
!2012 = metadata !{i32 1498, i32 3, metadata !2010, null}
!2013 = metadata !{i32 1500, i32 5, metadata !2014, null}
!2014 = metadata !{i32 786443, metadata !146, metadata !2015, i32 1500, i32 5, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2015 = metadata !{i32 786443, metadata !146, metadata !2016, i32 1500, i32 5, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2016 = metadata !{i32 786443, metadata !146, metadata !2006, i32 1499, i32 8, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2017 = metadata !{i32 1500, i32 5, metadata !2018, null}
!2018 = metadata !{i32 786443, metadata !146, metadata !2014, i32 1500, i32 5, i32 1, i32 255} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2019 = metadata !{i32 1501, i32 5, metadata !2016, null}
!2020 = metadata !{i32 1503, i32 1, metadata !640, null}
!2021 = metadata !{i32 786689, metadata !741, metadata !"ls", metadata !147, i32 16778107, metadata !537, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ls] [line 891]
!2022 = metadata !{i32 891, i32 36, metadata !741, null}
!2023 = metadata !{i32 786689, metadata !741, metadata !"v", metadata !147, i32 33555323, metadata !671, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [v] [line 891]
!2024 = metadata !{i32 891, i32 49, metadata !741, null}
!2025 = metadata !{i32 786688, metadata !741, metadata !"fs", metadata !147, i32 894, metadata !597, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fs] [line 894]
!2026 = metadata !{i32 894, i32 14, metadata !741, null}
!2027 = metadata !{i32 894, i32 3, metadata !741, null}
!2028 = metadata !{i32 786688, metadata !741, metadata !"line", metadata !147, i32 895, metadata !181, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [line] [line 895]
!2029 = metadata !{i32 895, i32 7, metadata !741, null}
!2030 = metadata !{i32 895, i32 3, metadata !741, null}
!2031 = metadata !{i32 896, i32 3, metadata !741, null}
!2032 = metadata !{i32 897, i32 3, metadata !2033, null}
!2033 = metadata !{i32 786443, metadata !146, metadata !741, i32 897, i32 3, i32 0, i32 129} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2034 = metadata !{i32 898, i32 5, metadata !2035, null}
!2035 = metadata !{i32 786443, metadata !146, metadata !2033, i32 897, i32 12, i32 0, i32 130} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2036 = metadata !{i32 900, i32 9, metadata !2037, null}
!2037 = metadata !{i32 786443, metadata !146, metadata !2038, i32 899, i32 17, i32 0, i32 132} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2038 = metadata !{i32 786443, metadata !146, metadata !2035, i32 898, i32 26, i32 0, i32 131} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2039 = metadata !{i32 901, i32 9, metadata !2037, null}
!2040 = metadata !{i32 786688, metadata !2041, metadata !"key", metadata !147, i32 904, metadata !649, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [key] [line 904]
!2041 = metadata !{i32 786443, metadata !146, metadata !2038, i32 903, i32 17, i32 0, i32 133} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2042 = metadata !{i32 904, i32 17, metadata !2041, null}
!2043 = metadata !{i32 905, i32 9, metadata !2041, null}
!2044 = metadata !{i32 906, i32 9, metadata !2041, null}
!2045 = metadata !{i32 907, i32 9, metadata !2041, null}
!2046 = metadata !{i32 908, i32 9, metadata !2041, null}
!2047 = metadata !{i32 786688, metadata !2048, metadata !"key", metadata !147, i32 911, metadata !649, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [key] [line 911]
!2048 = metadata !{i32 786443, metadata !146, metadata !2038, i32 910, i32 17, i32 0, i32 134} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2049 = metadata !{i32 911, i32 17, metadata !2048, null}
!2050 = metadata !{i32 912, i32 9, metadata !2048, null}
!2051 = metadata !{i32 913, i32 9, metadata !2048, null}
!2052 = metadata !{i32 914, i32 9, metadata !2048, null}
!2053 = metadata !{i32 915, i32 9, metadata !2048, null}
!2054 = metadata !{i32 916, i32 9, metadata !2048, null}
!2055 = metadata !{i32 919, i32 9, metadata !2056, null}
!2056 = metadata !{i32 786443, metadata !146, metadata !2038, i32 918, i32 43, i32 0, i32 135} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2057 = metadata !{i32 920, i32 9, metadata !2056, null}
!2058 = metadata !{i32 921, i32 9, metadata !2056, null}
!2059 = metadata !{i32 926, i32 1, metadata !741, null}
!2060 = metadata !{i32 925, i32 3, metadata !2035, null}
!2061 = metadata !{i32 786689, metadata !641, metadata !"ls", metadata !147, i32 16778362, metadata !537, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ls] [line 1146]
!2062 = metadata !{i32 1146, i32 35, metadata !641, null}
!2063 = metadata !{i32 786689, metadata !641, metadata !"lh", metadata !147, i32 33555578, metadata !644, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [lh] [line 1146]
!2064 = metadata !{i32 1146, i32 58, metadata !641, null}
!2065 = metadata !{i32 786689, metadata !641, metadata !"nvars", metadata !147, i32 50332794, metadata !181, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nvars] [line 1146]
!2066 = metadata !{i32 1146, i32 66, metadata !641, null}
!2067 = metadata !{i32 786688, metadata !641, metadata !"e", metadata !147, i32 1147, metadata !649, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [e] [line 1147]
!2068 = metadata !{i32 1147, i32 11, metadata !641, null}
!2069 = metadata !{i32 1148, i32 3, metadata !2070, null}
!2070 = metadata !{i32 786443, metadata !146, metadata !2071, i32 1148, i32 3, i32 0, i32 50} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2071 = metadata !{i32 786443, metadata !146, metadata !641, i32 1148, i32 3, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2072 = metadata !{i32 1148, i32 3, metadata !2073, null}
!2073 = metadata !{i32 786443, metadata !146, metadata !2070, i32 1148, i32 3, i32 1, i32 256} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2074 = metadata !{i32 1148, i32 3, metadata !2075, null}
!2075 = metadata !{i32 786443, metadata !146, metadata !2076, i32 1148, i32 3, i32 3, i32 258} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2076 = metadata !{i32 786443, metadata !146, metadata !2070, i32 1148, i32 3, i32 2, i32 257} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2077 = metadata !{i32 1149, i32 7, metadata !2078, null}
!2078 = metadata !{i32 786443, metadata !146, metadata !641, i32 1149, i32 7, i32 0, i32 51} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2079 = metadata !{i32 786688, metadata !2080, metadata !"nv", metadata !147, i32 1150, metadata !645, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nv] [line 1150]
!2080 = metadata !{i32 786443, metadata !146, metadata !2078, i32 1149, i32 26, i32 0, i32 52} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2081 = metadata !{i32 1150, i32 23, metadata !2080, null}
!2082 = metadata !{i32 1151, i32 5, metadata !2080, null}
!2083 = metadata !{i32 1152, i32 5, metadata !2080, null}
!2084 = metadata !{i32 1153, i32 9, metadata !2085, null}
!2085 = metadata !{i32 786443, metadata !146, metadata !2080, i32 1153, i32 9, i32 0, i32 53} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2086 = metadata !{i32 1154, i32 7, metadata !2085, null}
!2087 = metadata !{i32 1155, i32 5, metadata !2080, null}
!2088 = metadata !{i32 1157, i32 5, metadata !2080, null}
!2089 = metadata !{i32 1158, i32 3, metadata !2080, null}
!2090 = metadata !{i32 786688, metadata !2091, metadata !"nexps", metadata !147, i32 1160, metadata !181, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nexps] [line 1160]
!2091 = metadata !{i32 786443, metadata !146, metadata !2078, i32 1159, i32 8, i32 0, i32 54} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2092 = metadata !{i32 1160, i32 9, metadata !2091, null}
!2093 = metadata !{i32 1161, i32 5, metadata !2091, null}
!2094 = metadata !{i32 1162, i32 13, metadata !2091, null}
!2095 = metadata !{i32 1163, i32 9, metadata !2096, null}
!2096 = metadata !{i32 786443, metadata !146, metadata !2091, i32 1163, i32 9, i32 0, i32 55} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2097 = metadata !{i32 1164, i32 7, metadata !2098, null}
!2098 = metadata !{i32 786443, metadata !146, metadata !2096, i32 1163, i32 25, i32 0, i32 56} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2099 = metadata !{i32 1165, i32 11, metadata !2100, null}
!2100 = metadata !{i32 786443, metadata !146, metadata !2098, i32 1165, i32 11, i32 0, i32 57} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2101 = metadata !{i32 1166, i32 9, metadata !2100, null}
!2102 = metadata !{i32 1167, i32 5, metadata !2098, null}
!2103 = metadata !{i32 1169, i32 7, metadata !2104, null}
!2104 = metadata !{i32 786443, metadata !146, metadata !2096, i32 1168, i32 10, i32 0, i32 58} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2105 = metadata !{i32 1170, i32 7, metadata !2104, null}
!2106 = metadata !{i32 1171, i32 7, metadata !2104, null}
!2107 = metadata !{i32 1174, i32 3, metadata !641, null}
!2108 = metadata !{i32 1175, i32 3, metadata !641, null}
!2109 = metadata !{i32 1176, i32 1, metadata !641, null}
!2110 = metadata !{i32 1176, i32 1, metadata !2111, null}
!2111 = metadata !{i32 786443, metadata !146, metadata !641, i32 1176, i32 1, i32 1, i32 259} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2112 = metadata !{i32 786689, metadata !738, metadata !"ls", metadata !147, i32 16778334, metadata !537, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ls] [line 1118]
!2113 = metadata !{i32 1118, i32 39, metadata !738, null}
!2114 = metadata !{i32 786689, metadata !738, metadata !"lh", metadata !147, i32 33555550, metadata !644, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [lh] [line 1118]
!2115 = metadata !{i32 1118, i32 62, metadata !738, null}
!2116 = metadata !{i32 786689, metadata !738, metadata !"v", metadata !147, i32 50332766, metadata !671, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [v] [line 1118]
!2117 = metadata !{i32 1118, i32 75, metadata !738, null}
!2118 = metadata !{i32 786688, metadata !738, metadata !"fs", metadata !147, i32 1119, metadata !597, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fs] [line 1119]
!2119 = metadata !{i32 1119, i32 14, metadata !738, null}
!2120 = metadata !{i32 1119, i32 3, metadata !738, null}
!2121 = metadata !{i32 786688, metadata !738, metadata !"extra", metadata !147, i32 1120, metadata !181, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [extra] [line 1120]
!2122 = metadata !{i32 1120, i32 7, metadata !738, null}
!2123 = metadata !{i32 1120, i32 3, metadata !738, null}
!2124 = metadata !{i32 786688, metadata !738, metadata !"conflict", metadata !147, i32 1121, metadata !181, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [conflict] [line 1121]
!2125 = metadata !{i32 1121, i32 7, metadata !738, null}
!2126 = metadata !{i32 1121, i32 3, metadata !738, null}
!2127 = metadata !{i32 1122, i32 3, metadata !2128, null}
!2128 = metadata !{i32 786443, metadata !146, metadata !738, i32 1122, i32 3, i32 0, i32 119} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2129 = metadata !{i32 1122, i32 3, metadata !2130, null}
!2130 = metadata !{i32 786443, metadata !146, metadata !2131, i32 1122, i32 3, i32 2, i32 263} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2131 = metadata !{i32 786443, metadata !146, metadata !2128, i32 1122, i32 3, i32 1, i32 260} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2132 = metadata !{i32 1123, i32 9, metadata !2133, null}
!2133 = metadata !{i32 786443, metadata !146, metadata !2134, i32 1123, i32 9, i32 0, i32 121} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2134 = metadata !{i32 786443, metadata !146, metadata !2128, i32 1122, i32 29, i32 0, i32 120} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2135 = metadata !{i32 1125, i32 11, metadata !2136, null}
!2136 = metadata !{i32 786443, metadata !146, metadata !2137, i32 1125, i32 11, i32 0, i32 123} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2137 = metadata !{i32 786443, metadata !146, metadata !2133, i32 1123, i32 30, i32 0, i32 122} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2138 = metadata !{i32 1125, i32 11, metadata !2139, null}
!2139 = metadata !{i32 786443, metadata !146, metadata !2136, i32 1125, i32 11, i32 1, i32 261} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2140 = metadata !{i32 1126, i32 9, metadata !2141, null}
!2141 = metadata !{i32 786443, metadata !146, metadata !2136, i32 1125, i32 65, i32 0, i32 124} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2142 = metadata !{i32 1127, i32 9, metadata !2141, null}
!2143 = metadata !{i32 1128, i32 9, metadata !2141, null}
!2144 = metadata !{i32 1129, i32 7, metadata !2141, null}
!2145 = metadata !{i32 1131, i32 11, metadata !2146, null}
!2146 = metadata !{i32 786443, metadata !146, metadata !2137, i32 1131, i32 11, i32 0, i32 125} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2147 = metadata !{i32 1131, i32 11, metadata !2148, null}
!2148 = metadata !{i32 786443, metadata !146, metadata !2146, i32 1131, i32 11, i32 1, i32 262} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2149 = metadata !{i32 1132, i32 9, metadata !2150, null}
!2150 = metadata !{i32 786443, metadata !146, metadata !2146, i32 1131, i32 59, i32 0, i32 126} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2151 = metadata !{i32 1133, i32 9, metadata !2150, null}
!2152 = metadata !{i32 1134, i32 7, metadata !2150, null}
!2153 = metadata !{i32 1135, i32 5, metadata !2137, null}
!2154 = metadata !{i32 1136, i32 3, metadata !2134, null}
!2155 = metadata !{i32 1122, i32 14, metadata !2128, null}
!2156 = metadata !{i32 1137, i32 7, metadata !2157, null}
!2157 = metadata !{i32 786443, metadata !146, metadata !738, i32 1137, i32 7, i32 0, i32 127} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2158 = metadata !{i32 786688, metadata !2159, metadata !"op", metadata !147, i32 1139, metadata !2160, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [op] [line 1139]
!2159 = metadata !{i32 786443, metadata !146, metadata !2157, i32 1137, i32 17, i32 0, i32 128} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2160 = metadata !{i32 786454, metadata !94, null, metadata !"OpCode", i32 232, i64 0, i64 0, i64 0, i32 0, metadata !93} ; [ DW_TAG_typedef ] [OpCode] [line 232, size 0, align 0, offset 0] [from ]
!2161 = metadata !{i32 1139, i32 12, metadata !2159, null}
!2162 = metadata !{i32 1139, i32 5, metadata !2159, null}
!2163 = metadata !{i32 1140, i32 5, metadata !2159, null}
!2164 = metadata !{i32 1141, i32 5, metadata !2159, null}
!2165 = metadata !{i32 1142, i32 3, metadata !2159, null}
!2166 = metadata !{i32 1143, i32 1, metadata !738, null}
!2167 = metadata !{i32 786689, metadata !732, metadata !"fs", metadata !147, i32 16777308, metadata !597, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fs] [line 92]
!2168 = metadata !{i32 92, i32 36, metadata !732, null}
!2169 = metadata !{i32 786689, metadata !732, metadata !"v", metadata !147, i32 33554524, metadata !181, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [v] [line 92]
!2170 = metadata !{i32 92, i32 44, metadata !732, null}
!2171 = metadata !{i32 786689, metadata !732, metadata !"l", metadata !147, i32 50331740, metadata !181, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [l] [line 92]
!2172 = metadata !{i32 92, i32 51, metadata !732, null}
!2173 = metadata !{i32 786689, metadata !732, metadata !"what", metadata !147, i32 67108956, metadata !415, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [what] [line 92]
!2174 = metadata !{i32 92, i32 66, metadata !732, null}
!2175 = metadata !{i32 93, i32 7, metadata !2176, null}
!2176 = metadata !{i32 786443, metadata !146, metadata !732, i32 93, i32 7, i32 0, i32 118} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2177 = metadata !{i32 93, i32 14, metadata !2178, null}
!2178 = metadata !{i32 786443, metadata !146, metadata !2176, i32 93, i32 14, i32 1, i32 264} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2179 = metadata !{i32 94, i32 1, metadata !732, null}
!2180 = metadata !{i32 786689, metadata !731, metadata !"ls", metadata !147, i32 16777328, metadata !537, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ls] [line 112]
!2181 = metadata !{i32 112, i32 34, metadata !731, null}
!2182 = metadata !{i32 786689, metadata !731, metadata !"c", metadata !147, i32 33554544, metadata !181, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [c] [line 112]
!2183 = metadata !{i32 112, i32 42, metadata !731, null}
!2184 = metadata !{i32 113, i32 3, metadata !731, null}
!2185 = metadata !{i32 114, i32 3, metadata !731, null}
!2186 = metadata !{i32 115, i32 1, metadata !731, null}
!2187 = metadata !{i32 786689, metadata !672, metadata !"ls", metadata !147, i32 16778018, metadata !537, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ls] [line 802]
!2188 = metadata !{i32 802, i32 31, metadata !672, null}
!2189 = metadata !{i32 786689, metadata !672, metadata !"v", metadata !147, i32 33555234, metadata !671, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [v] [line 802]
!2190 = metadata !{i32 802, i32 44, metadata !672, null}
!2191 = metadata !{i32 786688, metadata !672, metadata !"n", metadata !147, i32 804, metadata !181, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 804]
!2192 = metadata !{i32 804, i32 7, metadata !672, null}
!2193 = metadata !{i32 804, i32 3, metadata !672, null}
!2194 = metadata !{i32 805, i32 3, metadata !672, null}
!2195 = metadata !{i32 806, i32 3, metadata !672, null}
!2196 = metadata !{i32 806, i32 10, metadata !2197, null}
!2197 = metadata !{i32 786443, metadata !146, metadata !672, i32 806, i32 10, i32 1, i32 265} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2198 = metadata !{i32 807, i32 5, metadata !2199, null}
!2199 = metadata !{i32 786443, metadata !146, metadata !672, i32 806, i32 29, i32 0, i32 67} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2200 = metadata !{i32 808, i32 5, metadata !2199, null}
!2201 = metadata !{i32 809, i32 5, metadata !2199, null}
!2202 = metadata !{i32 810, i32 3, metadata !2199, null}
!2203 = metadata !{i32 811, i32 3, metadata !672, null}
!2204 = metadata !{i32 786689, metadata !668, metadata !"ls", metadata !147, i32 16777525, metadata !537, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ls] [line 309]
!2205 = metadata !{i32 309, i32 38, metadata !668, null}
!2206 = metadata !{i32 786689, metadata !668, metadata !"nvars", metadata !147, i32 33554741, metadata !181, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nvars] [line 309]
!2207 = metadata !{i32 309, i32 46, metadata !668, null}
!2208 = metadata !{i32 786689, metadata !668, metadata !"nexps", metadata !147, i32 50331957, metadata !181, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nexps] [line 309]
!2209 = metadata !{i32 309, i32 57, metadata !668, null}
!2210 = metadata !{i32 786689, metadata !668, metadata !"e", metadata !147, i32 67109173, metadata !671, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [e] [line 309]
!2211 = metadata !{i32 309, i32 73, metadata !668, null}
!2212 = metadata !{i32 786688, metadata !668, metadata !"fs", metadata !147, i32 310, metadata !597, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fs] [line 310]
!2213 = metadata !{i32 310, i32 14, metadata !668, null}
!2214 = metadata !{i32 310, i32 3, metadata !668, null}
!2215 = metadata !{i32 786688, metadata !668, metadata !"extra", metadata !147, i32 311, metadata !181, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [extra] [line 311]
!2216 = metadata !{i32 311, i32 7, metadata !668, null}
!2217 = metadata !{i32 311, i32 3, metadata !668, null}
!2218 = metadata !{i32 312, i32 7, metadata !2219, null}
!2219 = metadata !{i32 786443, metadata !146, metadata !668, i32 312, i32 7, i32 0, i32 59} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2220 = metadata !{i32 312, i32 7, metadata !2221, null}
!2221 = metadata !{i32 786443, metadata !146, metadata !2219, i32 312, i32 7, i32 1, i32 266} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2222 = metadata !{i32 313, i32 5, metadata !2223, null}
!2223 = metadata !{i32 786443, metadata !146, metadata !2219, i32 312, i32 25, i32 0, i32 60} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2224 = metadata !{i32 314, i32 9, metadata !2225, null}
!2225 = metadata !{i32 786443, metadata !146, metadata !2223, i32 314, i32 9, i32 0, i32 61} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2226 = metadata !{i32 314, i32 20, metadata !2227, null}
!2227 = metadata !{i32 786443, metadata !146, metadata !2225, i32 314, i32 20, i32 1, i32 267} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2228 = metadata !{i32 315, i32 5, metadata !2223, null}
!2229 = metadata !{i32 316, i32 9, metadata !2230, null}
!2230 = metadata !{i32 786443, metadata !146, metadata !2223, i32 316, i32 9, i32 0, i32 62} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2231 = metadata !{i32 316, i32 20, metadata !2232, null}
!2232 = metadata !{i32 786443, metadata !146, metadata !2230, i32 316, i32 20, i32 1, i32 268} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2233 = metadata !{i32 317, i32 3, metadata !2223, null}
!2234 = metadata !{i32 319, i32 9, metadata !2235, null}
!2235 = metadata !{i32 786443, metadata !146, metadata !2236, i32 319, i32 9, i32 0, i32 64} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2236 = metadata !{i32 786443, metadata !146, metadata !2219, i32 318, i32 8, i32 0, i32 63} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2237 = metadata !{i32 319, i32 24, metadata !2238, null}
!2238 = metadata !{i32 786443, metadata !146, metadata !2235, i32 319, i32 24, i32 1, i32 269} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2239 = metadata !{i32 320, i32 9, metadata !2240, null}
!2240 = metadata !{i32 786443, metadata !146, metadata !2236, i32 320, i32 9, i32 0, i32 65} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2241 = metadata !{i32 786688, metadata !2242, metadata !"reg", metadata !147, i32 321, metadata !181, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [reg] [line 321]
!2242 = metadata !{i32 786443, metadata !146, metadata !2240, i32 320, i32 20, i32 0, i32 66} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2243 = metadata !{i32 321, i32 11, metadata !2242, null}
!2244 = metadata !{i32 321, i32 7, metadata !2242, null}
!2245 = metadata !{i32 322, i32 7, metadata !2242, null}
!2246 = metadata !{i32 323, i32 7, metadata !2242, null}
!2247 = metadata !{i32 324, i32 5, metadata !2242, null}
!2248 = metadata !{i32 326, i32 1, metadata !668, null}
!2249 = metadata !{i32 786689, metadata !675, metadata !"ls", metadata !147, i32 16778293, metadata !537, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ls] [line 1077]
!2250 = metadata !{i32 1077, i32 29, metadata !675, null}
!2251 = metadata !{i32 786689, metadata !675, metadata !"v", metadata !147, i32 33555509, metadata !671, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [v] [line 1077]
!2252 = metadata !{i32 1077, i32 42, metadata !675, null}
!2253 = metadata !{i32 1078, i32 3, metadata !675, null}
!2254 = metadata !{i32 1079, i32 1, metadata !675, null}
!2255 = metadata !{i32 786689, metadata !678, metadata !"ls", metadata !147, i32 16778263, metadata !537, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ls] [line 1047]
!2256 = metadata !{i32 1047, i32 34, metadata !678, null}
!2257 = metadata !{i32 786689, metadata !678, metadata !"v", metadata !147, i32 33555479, metadata !671, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [v] [line 1047]
!2258 = metadata !{i32 1047, i32 47, metadata !678, null}
!2259 = metadata !{i32 786689, metadata !678, metadata !"limit", metadata !147, i32 50332695, metadata !181, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [limit] [line 1047]
!2260 = metadata !{i32 1047, i32 54, metadata !678, null}
!2261 = metadata !{i32 786688, metadata !678, metadata !"op", metadata !147, i32 1048, metadata !681, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [op] [line 1048]
!2262 = metadata !{i32 1048, i32 10, metadata !678, null}
!2263 = metadata !{i32 786688, metadata !678, metadata !"uop", metadata !147, i32 1049, metadata !730, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [uop] [line 1049]
!2264 = metadata !{i32 1049, i32 9, metadata !678, null}
!2265 = metadata !{i32 1050, i32 3, metadata !678, null}
!2266 = metadata !{i32 1051, i32 9, metadata !678, null}
!2267 = metadata !{i32 1052, i32 7, metadata !2268, null}
!2268 = metadata !{i32 786443, metadata !146, metadata !678, i32 1052, i32 7, i32 0, i32 68} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2269 = metadata !{i32 786688, metadata !2270, metadata !"line", metadata !147, i32 1053, metadata !181, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [line] [line 1053]
!2270 = metadata !{i32 786443, metadata !146, metadata !2268, i32 1052, i32 27, i32 0, i32 69} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2271 = metadata !{i32 1053, i32 9, metadata !2270, null}
!2272 = metadata !{i32 1053, i32 5, metadata !2270, null}
!2273 = metadata !{i32 1054, i32 5, metadata !2270, null}
!2274 = metadata !{i32 1055, i32 5, metadata !2270, null}
!2275 = metadata !{i32 1056, i32 5, metadata !2270, null}
!2276 = metadata !{i32 1057, i32 3, metadata !2270, null}
!2277 = metadata !{i32 1058, i32 8, metadata !2268, null}
!2278 = metadata !{i32 1060, i32 8, metadata !678, null}
!2279 = metadata !{i32 1061, i32 3, metadata !678, null}
!2280 = metadata !{i32 1061, i32 3, metadata !2281, null}
!2281 = metadata !{i32 786443, metadata !146, metadata !678, i32 1061, i32 3, i32 1, i32 270} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2282 = metadata !{i32 1061, i32 3, metadata !2283, null}
!2283 = metadata !{i32 786443, metadata !146, metadata !678, i32 1061, i32 3, i32 2, i32 271} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2284 = metadata !{i32 1061, i32 3, metadata !2285, null}
!2285 = metadata !{i32 786443, metadata !146, metadata !678, i32 1061, i32 3, i32 3, i32 272} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2286 = metadata !{i32 786688, metadata !2287, metadata !"v2", metadata !147, i32 1062, metadata !649, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [v2] [line 1062]
!2287 = metadata !{i32 786443, metadata !146, metadata !678, i32 1061, i32 59, i32 0, i32 70} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2288 = metadata !{i32 1062, i32 13, metadata !2287, null}
!2289 = metadata !{i32 786688, metadata !2287, metadata !"nextop", metadata !147, i32 1063, metadata !681, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nextop] [line 1063]
!2290 = metadata !{i32 1063, i32 12, metadata !2287, null}
!2291 = metadata !{i32 786688, metadata !2287, metadata !"line", metadata !147, i32 1064, metadata !181, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [line] [line 1064]
!2292 = metadata !{i32 1064, i32 9, metadata !2287, null}
!2293 = metadata !{i32 1064, i32 5, metadata !2287, null}
!2294 = metadata !{i32 1065, i32 5, metadata !2287, null}
!2295 = metadata !{i32 1066, i32 5, metadata !2287, null}
!2296 = metadata !{i32 1068, i32 14, metadata !2287, null}
!2297 = metadata !{i32 1069, i32 5, metadata !2287, null}
!2298 = metadata !{i32 1070, i32 5, metadata !2287, null}
!2299 = metadata !{i32 1071, i32 3, metadata !2287, null}
!2300 = metadata !{i32 1072, i32 3, metadata !678, null}
!2301 = metadata !{i32 1073, i32 3, metadata !678, null}
!2302 = metadata !{i32 786689, metadata !727, metadata !"op", metadata !147, i32 16778201, metadata !181, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [op] [line 985]
!2303 = metadata !{i32 985, i32 28, metadata !727, null}
!2304 = metadata !{i32 986, i32 3, metadata !727, null}
!2305 = metadata !{i32 987, i32 18, metadata !2306, null}
!2306 = metadata !{i32 786443, metadata !146, metadata !727, i32 986, i32 15, i32 0, i32 117} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2307 = metadata !{i32 988, i32 15, metadata !2306, null}
!2308 = metadata !{i32 989, i32 15, metadata !2306, null}
!2309 = metadata !{i32 990, i32 15, metadata !2306, null}
!2310 = metadata !{i32 991, i32 14, metadata !2306, null}
!2311 = metadata !{i32 993, i32 1, metadata !727, null}
!2312 = metadata !{i32 786689, metadata !685, metadata !"ls", metadata !147, i32 16778145, metadata !537, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ls] [line 929]
!2313 = metadata !{i32 929, i32 34, metadata !685, null}
!2314 = metadata !{i32 786689, metadata !685, metadata !"v", metadata !147, i32 33555361, metadata !671, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [v] [line 929]
!2315 = metadata !{i32 929, i32 47, metadata !685, null}
!2316 = metadata !{i32 932, i32 3, metadata !685, null}
!2317 = metadata !{i32 934, i32 7, metadata !2318, null}
!2318 = metadata !{i32 786443, metadata !146, metadata !2319, i32 933, i32 18, i32 0, i32 73} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2319 = metadata !{i32 786443, metadata !146, metadata !685, i32 932, i32 24, i32 0, i32 72} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2320 = metadata !{i32 935, i32 7, metadata !2318, null}
!2321 = metadata !{i32 936, i32 7, metadata !2318, null}
!2322 = metadata !{i32 939, i32 7, metadata !2323, null}
!2323 = metadata !{i32 786443, metadata !146, metadata !2319, i32 938, i32 18, i32 0, i32 74} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2324 = metadata !{i32 940, i32 7, metadata !2323, null}
!2325 = metadata !{i32 941, i32 7, metadata !2323, null}
!2326 = metadata !{i32 944, i32 7, metadata !2327, null}
!2327 = metadata !{i32 786443, metadata !146, metadata !2319, i32 943, i32 21, i32 0, i32 75} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2328 = metadata !{i32 945, i32 7, metadata !2327, null}
!2329 = metadata !{i32 948, i32 7, metadata !2330, null}
!2330 = metadata !{i32 786443, metadata !146, metadata !2319, i32 947, i32 18, i32 0, i32 76} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2331 = metadata !{i32 949, i32 7, metadata !2330, null}
!2332 = metadata !{i32 952, i32 7, metadata !2333, null}
!2333 = metadata !{i32 786443, metadata !146, metadata !2319, i32 951, i32 19, i32 0, i32 77} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2334 = metadata !{i32 953, i32 7, metadata !2333, null}
!2335 = metadata !{i32 956, i32 7, metadata !2336, null}
!2336 = metadata !{i32 786443, metadata !146, metadata !2319, i32 955, i32 20, i32 0, i32 78} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2337 = metadata !{i32 957, i32 7, metadata !2336, null}
!2338 = metadata !{i32 786688, metadata !2339, metadata !"fs", metadata !147, i32 960, metadata !597, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fs] [line 960]
!2339 = metadata !{i32 786443, metadata !146, metadata !2319, i32 959, i32 19, i32 0, i32 79} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2340 = metadata !{i32 960, i32 18, metadata !2339, null}
!2341 = metadata !{i32 960, i32 7, metadata !2339, null}
!2342 = metadata !{i32 961, i32 7, metadata !2343, null}
!2343 = metadata !{i32 786443, metadata !146, metadata !2344, i32 961, i32 7, i32 0, i32 81} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2344 = metadata !{i32 786443, metadata !146, metadata !2339, i32 961, i32 7, i32 0, i32 80} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2345 = metadata !{i32 961, i32 7, metadata !2346, null}
!2346 = metadata !{i32 786443, metadata !146, metadata !2343, i32 961, i32 7, i32 1, i32 273} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2347 = metadata !{i32 963, i32 7, metadata !2339, null}
!2348 = metadata !{i32 964, i32 7, metadata !2339, null}
!2349 = metadata !{i32 964, i32 28, metadata !2339, null}
!2350 = metadata !{i32 965, i32 7, metadata !2339, null}
!2351 = metadata !{i32 968, i32 7, metadata !2352, null}
!2352 = metadata !{i32 786443, metadata !146, metadata !2319, i32 967, i32 15, i32 0, i32 82} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2353 = metadata !{i32 969, i32 7, metadata !2352, null}
!2354 = metadata !{i32 972, i32 7, metadata !2355, null}
!2355 = metadata !{i32 786443, metadata !146, metadata !2319, i32 971, i32 23, i32 0, i32 83} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2356 = metadata !{i32 973, i32 7, metadata !2355, null}
!2357 = metadata !{i32 974, i32 7, metadata !2355, null}
!2358 = metadata !{i32 977, i32 7, metadata !2359, null}
!2359 = metadata !{i32 786443, metadata !146, metadata !2319, i32 976, i32 14, i32 0, i32 84} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2360 = metadata !{i32 978, i32 7, metadata !2359, null}
!2361 = metadata !{i32 981, i32 3, metadata !685, null}
!2362 = metadata !{i32 982, i32 1, metadata !685, null}
!2363 = metadata !{i32 982, i32 1, metadata !2364, null}
!2364 = metadata !{i32 786443, metadata !146, metadata !685, i32 982, i32 1, i32 1, i32 274} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2365 = metadata !{i32 786689, metadata !682, metadata !"op", metadata !147, i32 16778212, metadata !181, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [op] [line 996]
!2366 = metadata !{i32 996, i32 30, metadata !682, null}
!2367 = metadata !{i32 997, i32 3, metadata !682, null}
!2368 = metadata !{i32 998, i32 15, metadata !2369, null}
!2369 = metadata !{i32 786443, metadata !146, metadata !682, i32 997, i32 15, i32 0, i32 71} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2370 = metadata !{i32 999, i32 15, metadata !2369, null}
!2371 = metadata !{i32 1000, i32 15, metadata !2369, null}
!2372 = metadata !{i32 1001, i32 15, metadata !2369, null}
!2373 = metadata !{i32 1002, i32 15, metadata !2369, null}
!2374 = metadata !{i32 1003, i32 15, metadata !2369, null}
!2375 = metadata !{i32 1004, i32 19, metadata !2369, null}
!2376 = metadata !{i32 1005, i32 15, metadata !2369, null}
!2377 = metadata !{i32 1006, i32 15, metadata !2369, null}
!2378 = metadata !{i32 1007, i32 15, metadata !2369, null}
!2379 = metadata !{i32 1008, i32 18, metadata !2369, null}
!2380 = metadata !{i32 1009, i32 18, metadata !2369, null}
!2381 = metadata !{i32 1010, i32 21, metadata !2369, null}
!2382 = metadata !{i32 1011, i32 17, metadata !2369, null}
!2383 = metadata !{i32 1012, i32 17, metadata !2369, null}
!2384 = metadata !{i32 1013, i32 15, metadata !2369, null}
!2385 = metadata !{i32 1014, i32 17, metadata !2369, null}
!2386 = metadata !{i32 1015, i32 15, metadata !2369, null}
!2387 = metadata !{i32 1016, i32 17, metadata !2369, null}
!2388 = metadata !{i32 1017, i32 18, metadata !2369, null}
!2389 = metadata !{i32 1018, i32 17, metadata !2369, null}
!2390 = metadata !{i32 1019, i32 14, metadata !2369, null}
!2391 = metadata !{i32 1021, i32 1, metadata !682, null}
!2392 = metadata !{i32 786689, metadata !724, metadata !"ls", metadata !147, i32 16777367, metadata !537, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ls] [line 151]
!2393 = metadata !{i32 151, i32 35, metadata !724, null}
!2394 = metadata !{i32 786689, metadata !724, metadata !"e", metadata !147, i32 33554583, metadata !671, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [e] [line 151]
!2395 = metadata !{i32 151, i32 48, metadata !724, null}
!2396 = metadata !{i32 786689, metadata !724, metadata !"s", metadata !147, i32 50331799, metadata !248, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 151]
!2397 = metadata !{i32 151, i32 60, metadata !724, null}
!2398 = metadata !{i32 152, i32 3, metadata !724, null}
!2399 = metadata !{i32 152, i32 19, metadata !724, null}
!2400 = metadata !{i32 153, i32 1, metadata !724, null}
!2401 = metadata !{i32 786689, metadata !704, metadata !"ls", metadata !147, i32 16777938, metadata !537, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ls] [line 722]
!2402 = metadata !{i32 722, i32 36, metadata !704, null}
!2403 = metadata !{i32 786689, metadata !704, metadata !"t", metadata !147, i32 33555154, metadata !671, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [t] [line 722]
!2404 = metadata !{i32 722, i32 49, metadata !704, null}
!2405 = metadata !{i32 786688, metadata !704, metadata !"fs", metadata !147, i32 725, metadata !597, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fs] [line 725]
!2406 = metadata !{i32 725, i32 14, metadata !704, null}
!2407 = metadata !{i32 725, i32 3, metadata !704, null}
!2408 = metadata !{i32 786688, metadata !704, metadata !"line", metadata !147, i32 726, metadata !181, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [line] [line 726]
!2409 = metadata !{i32 726, i32 7, metadata !704, null}
!2410 = metadata !{i32 726, i32 3, metadata !704, null}
!2411 = metadata !{i32 786688, metadata !704, metadata !"pc", metadata !147, i32 727, metadata !181, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pc] [line 727]
!2412 = metadata !{i32 727, i32 7, metadata !704, null}
!2413 = metadata !{i32 727, i32 12, metadata !704, null}
!2414 = metadata !{i32 786688, metadata !704, metadata !"cc", metadata !147, i32 728, metadata !709, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cc] [line 728]
!2415 = metadata !{i32 728, i32 22, metadata !704, null}
!2416 = metadata !{i32 729, i32 3, metadata !704, null}
!2417 = metadata !{i32 730, i32 3, metadata !704, null}
!2418 = metadata !{i32 731, i32 3, metadata !704, null}
!2419 = metadata !{i32 732, i32 3, metadata !704, null}
!2420 = metadata !{i32 733, i32 3, metadata !704, null}
!2421 = metadata !{i32 734, i32 3, metadata !704, null}
!2422 = metadata !{i32 735, i32 3, metadata !704, null}
!2423 = metadata !{i32 737, i32 9, metadata !2424, null}
!2424 = metadata !{i32 786443, metadata !146, metadata !2425, i32 737, i32 9, i32 0, i32 101} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2425 = metadata !{i32 786443, metadata !146, metadata !704, i32 735, i32 6, i32 0, i32 100} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2426 = metadata !{i32 737, i32 29, metadata !2427, null}
!2427 = metadata !{i32 786443, metadata !146, metadata !2424, i32 737, i32 29, i32 1, i32 275} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2428 = metadata !{i32 738, i32 5, metadata !2425, null}
!2429 = metadata !{i32 739, i32 5, metadata !2425, null}
!2430 = metadata !{i32 740, i32 3, metadata !2425, null}
!2431 = metadata !{i32 740, i32 12, metadata !2432, null}
!2432 = metadata !{i32 786443, metadata !146, metadata !704, i32 740, i32 12, i32 1, i32 276} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2433 = metadata !{i32 740, i32 33, metadata !2434, null}
!2434 = metadata !{i32 786443, metadata !146, metadata !704, i32 740, i32 33, i32 3, i32 278} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2435 = metadata !{i32 740, i32 33, metadata !2436, null}
!2436 = metadata !{i32 786443, metadata !146, metadata !2437, i32 740, i32 33, i32 4, i32 279} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2437 = metadata !{i32 786443, metadata !146, metadata !704, i32 740, i32 33, i32 2, i32 277} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2438 = metadata !{i32 741, i32 3, metadata !704, null}
!2439 = metadata !{i32 742, i32 3, metadata !704, null}
!2440 = metadata !{i32 743, i32 3, metadata !704, null}
!2441 = metadata !{i32 744, i32 3, metadata !704, null}
!2442 = metadata !{i32 745, i32 1, metadata !704, null}
!2443 = metadata !{i32 786689, metadata !686, metadata !"ls", metadata !147, i32 16777996, metadata !537, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ls] [line 780]
!2444 = metadata !{i32 780, i32 29, metadata !686, null}
!2445 = metadata !{i32 786689, metadata !686, metadata !"e", metadata !147, i32 33555212, metadata !671, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [e] [line 780]
!2446 = metadata !{i32 780, i32 42, metadata !686, null}
!2447 = metadata !{i32 786689, metadata !686, metadata !"ismethod", metadata !147, i32 50332428, metadata !181, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ismethod] [line 780]
!2448 = metadata !{i32 780, i32 49, metadata !686, null}
!2449 = metadata !{i32 786689, metadata !686, metadata !"line", metadata !147, i32 67109644, metadata !181, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [line] [line 780]
!2450 = metadata !{i32 780, i32 63, metadata !686, null}
!2451 = metadata !{i32 786688, metadata !686, metadata !"new_fs", metadata !147, i32 782, metadata !598, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [new_fs] [line 782]
!2452 = metadata !{i32 782, i32 13, metadata !686, null}
!2453 = metadata !{i32 786688, metadata !686, metadata !"bl", metadata !147, i32 783, metadata !615, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bl] [line 783]
!2454 = metadata !{i32 783, i32 12, metadata !686, null}
!2455 = metadata !{i32 784, i32 14, metadata !686, null}
!2456 = metadata !{i32 785, i32 3, metadata !686, null}
!2457 = metadata !{i32 786, i32 3, metadata !686, null}
!2458 = metadata !{i32 787, i32 3, metadata !686, null}
!2459 = metadata !{i32 788, i32 7, metadata !2460, null}
!2460 = metadata !{i32 786443, metadata !146, metadata !686, i32 788, i32 7, i32 0, i32 85} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2461 = metadata !{i32 789, i32 5, metadata !2462, null}
!2462 = metadata !{i32 786443, metadata !146, metadata !2460, i32 788, i32 17, i32 0, i32 86} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2463 = metadata !{i32 790, i32 5, metadata !2462, null}
!2464 = metadata !{i32 791, i32 3, metadata !2462, null}
!2465 = metadata !{i32 792, i32 3, metadata !686, null}
!2466 = metadata !{i32 793, i32 3, metadata !686, null}
!2467 = metadata !{i32 794, i32 3, metadata !686, null}
!2468 = metadata !{i32 795, i32 3, metadata !686, null}
!2469 = metadata !{i32 796, i32 3, metadata !686, null}
!2470 = metadata !{i32 797, i32 3, metadata !686, null}
!2471 = metadata !{i32 798, i32 3, metadata !686, null}
!2472 = metadata !{i32 799, i32 1, metadata !686, null}
!2473 = metadata !{i32 786689, metadata !701, metadata !"ls", metadata !147, i32 16777713, metadata !537, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ls] [line 497]
!2474 = metadata !{i32 497, i32 39, metadata !701, null}
!2475 = metadata !{i32 786688, metadata !701, metadata !"clp", metadata !147, i32 498, metadata !562, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [clp] [line 498]
!2476 = metadata !{i32 498, i32 10, metadata !701, null}
!2477 = metadata !{i32 786688, metadata !701, metadata !"L", metadata !147, i32 499, metadata !208, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [L] [line 499]
!2478 = metadata !{i32 499, i32 14, metadata !701, null}
!2479 = metadata !{i32 499, i32 3, metadata !701, null}
!2480 = metadata !{i32 786688, metadata !701, metadata !"fs", metadata !147, i32 500, metadata !597, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fs] [line 500]
!2481 = metadata !{i32 500, i32 14, metadata !701, null}
!2482 = metadata !{i32 500, i32 3, metadata !701, null}
!2483 = metadata !{i32 786688, metadata !701, metadata !"f", metadata !147, i32 501, metadata !562, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [f] [line 501]
!2484 = metadata !{i32 501, i32 10, metadata !701, null}
!2485 = metadata !{i32 501, i32 3, metadata !701, null}
!2486 = metadata !{i32 502, i32 7, metadata !2487, null}
!2487 = metadata !{i32 786443, metadata !146, metadata !701, i32 502, i32 7, i32 0, i32 97} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2488 = metadata !{i32 786688, metadata !2489, metadata !"oldsize", metadata !147, i32 503, metadata !181, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [oldsize] [line 503]
!2489 = metadata !{i32 786443, metadata !146, metadata !2487, i32 502, i32 27, i32 0, i32 98} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2490 = metadata !{i32 503, i32 9, metadata !2489, null}
!2491 = metadata !{i32 503, i32 5, metadata !2489, null}
!2492 = metadata !{i32 504, i32 5, metadata !2493, null}
!2493 = metadata !{i32 786443, metadata !146, metadata !2489, i32 504, i32 5, i32 0, i32 99} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2494 = metadata !{i32 504, i32 5, metadata !2495, null}
!2495 = metadata !{i32 786443, metadata !146, metadata !2493, i32 504, i32 5, i32 1, i32 280} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2496 = metadata !{i32 505, i32 5, metadata !2489, null}
!2497 = metadata !{i32 505, i32 5, metadata !2498, null}
!2498 = metadata !{i32 786443, metadata !146, metadata !2489, i32 505, i32 5, i32 1, i32 281} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2499 = metadata !{i32 506, i32 7, metadata !2489, null}
!2500 = metadata !{i32 507, i32 3, metadata !2489, null}
!2501 = metadata !{i32 508, i32 26, metadata !701, null}
!2502 = metadata !{i32 509, i32 3, metadata !701, null}
!2503 = metadata !{i32 509, i32 3, metadata !2504, null}
!2504 = metadata !{i32 786443, metadata !146, metadata !701, i32 509, i32 3, i32 1, i32 282} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2505 = metadata !{i32 509, i32 3, metadata !2506, null}
!2506 = metadata !{i32 786443, metadata !146, metadata !701, i32 509, i32 3, i32 3, i32 284} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2507 = metadata !{i32 509, i32 3, metadata !2508, null}
!2508 = metadata !{i32 786443, metadata !146, metadata !2509, i32 509, i32 3, i32 4, i32 285} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2509 = metadata !{i32 786443, metadata !146, metadata !701, i32 509, i32 3, i32 2, i32 283} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2510 = metadata !{i32 510, i32 3, metadata !701, null}
!2511 = metadata !{i32 786689, metadata !698, metadata !"ls", metadata !147, i32 16777403, metadata !537, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ls] [line 187]
!2512 = metadata !{i32 187, i32 45, metadata !698, null}
!2513 = metadata !{i32 786689, metadata !698, metadata !"name", metadata !147, i32 33554619, metadata !415, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 187]
!2514 = metadata !{i32 187, i32 61, metadata !698, null}
!2515 = metadata !{i32 786689, metadata !698, metadata !"sz", metadata !147, i32 50331835, metadata !231, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sz] [line 187]
!2516 = metadata !{i32 187, i32 74, metadata !698, null}
!2517 = metadata !{i32 188, i32 3, metadata !698, null}
!2518 = metadata !{i32 188, i32 20, metadata !698, null}
!2519 = metadata !{i32 189, i32 1, metadata !698, null}
!2520 = metadata !{i32 786689, metadata !697, metadata !"ls", metadata !147, i32 16777418, metadata !537, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ls] [line 202]
!2521 = metadata !{i32 202, i32 40, metadata !697, null}
!2522 = metadata !{i32 786689, metadata !697, metadata !"nvars", metadata !147, i32 33554634, metadata !181, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nvars] [line 202]
!2523 = metadata !{i32 202, i32 48, metadata !697, null}
!2524 = metadata !{i32 786688, metadata !697, metadata !"fs", metadata !147, i32 203, metadata !597, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fs] [line 203]
!2525 = metadata !{i32 203, i32 14, metadata !697, null}
!2526 = metadata !{i32 203, i32 3, metadata !697, null}
!2527 = metadata !{i32 204, i32 3, metadata !697, null}
!2528 = metadata !{i32 205, i32 3, metadata !2529, null}
!2529 = metadata !{i32 786443, metadata !146, metadata !697, i32 205, i32 3, i32 0, i32 95} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2530 = metadata !{i32 205, i32 3, metadata !2531, null}
!2531 = metadata !{i32 786443, metadata !146, metadata !2532, i32 205, i32 3, i32 2, i32 287} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2532 = metadata !{i32 786443, metadata !146, metadata !2529, i32 205, i32 3, i32 1, i32 286} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2533 = metadata !{i32 206, i32 5, metadata !2534, null}
!2534 = metadata !{i32 786443, metadata !146, metadata !2529, i32 205, i32 26, i32 0, i32 96} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2535 = metadata !{i32 207, i32 3, metadata !2534, null}
!2536 = metadata !{i32 205, i32 17, metadata !2529, null}
!2537 = metadata !{i32 208, i32 1, metadata !697, null}
!2538 = metadata !{i32 786689, metadata !690, metadata !"ls", metadata !147, i32 16777967, metadata !537, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ls] [line 751]
!2539 = metadata !{i32 751, i32 32, metadata !690, null}
!2540 = metadata !{i32 786688, metadata !690, metadata !"fs", metadata !147, i32 753, metadata !597, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fs] [line 753]
!2541 = metadata !{i32 753, i32 14, metadata !690, null}
!2542 = metadata !{i32 753, i32 3, metadata !690, null}
!2543 = metadata !{i32 786688, metadata !690, metadata !"f", metadata !147, i32 754, metadata !562, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [f] [line 754]
!2544 = metadata !{i32 754, i32 10, metadata !690, null}
!2545 = metadata !{i32 754, i32 3, metadata !690, null}
!2546 = metadata !{i32 786688, metadata !690, metadata !"nparams", metadata !147, i32 755, metadata !181, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nparams] [line 755]
!2547 = metadata !{i32 755, i32 7, metadata !690, null}
!2548 = metadata !{i32 755, i32 3, metadata !690, null}
!2549 = metadata !{i32 756, i32 3, metadata !690, null}
!2550 = metadata !{i32 757, i32 7, metadata !2551, null}
!2551 = metadata !{i32 786443, metadata !146, metadata !690, i32 757, i32 7, i32 0, i32 87} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2552 = metadata !{i32 758, i32 5, metadata !2553, null}
!2553 = metadata !{i32 786443, metadata !146, metadata !2551, i32 757, i32 27, i32 0, i32 88} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2554 = metadata !{i32 759, i32 7, metadata !2555, null}
!2555 = metadata !{i32 786443, metadata !146, metadata !2553, i32 758, i32 8, i32 0, i32 89} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2556 = metadata !{i32 761, i32 11, metadata !2557, null}
!2557 = metadata !{i32 786443, metadata !146, metadata !2558, i32 760, i32 23, i32 0, i32 91} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2558 = metadata !{i32 786443, metadata !146, metadata !2555, i32 759, i32 28, i32 0, i32 90} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2559 = metadata !{i32 761, i32 28, metadata !2557, null}
!2560 = metadata !{i32 762, i32 11, metadata !2557, null}
!2561 = metadata !{i32 763, i32 11, metadata !2557, null}
!2562 = metadata !{i32 766, i32 11, metadata !2563, null}
!2563 = metadata !{i32 786443, metadata !146, metadata !2558, i32 765, i32 23, i32 0, i32 92} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2564 = metadata !{i32 767, i32 11, metadata !2563, null}
!2565 = metadata !{i32 768, i32 11, metadata !2563, null}
!2566 = metadata !{i32 770, i32 18, metadata !2558, null}
!2567 = metadata !{i32 772, i32 5, metadata !2555, null}
!2568 = metadata !{i32 772, i32 5, metadata !2569, null}
!2569 = metadata !{i32 786443, metadata !146, metadata !2555, i32 772, i32 5, i32 1, i32 288} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2570 = metadata !{i32 772, i32 31, metadata !2571, null}
!2571 = metadata !{i32 786443, metadata !146, metadata !2553, i32 772, i32 31, i32 3, i32 290} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2572 = metadata !{i32 772, i32 31, metadata !2573, null}
!2573 = metadata !{i32 786443, metadata !146, metadata !2553, i32 772, i32 31, i32 2, i32 289} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2574 = metadata !{i32 773, i32 3, metadata !2553, null}
!2575 = metadata !{i32 774, i32 3, metadata !690, null}
!2576 = metadata !{i32 775, i32 3, metadata !690, null}
!2577 = metadata !{i32 776, i32 3, metadata !690, null}
!2578 = metadata !{i32 777, i32 1, metadata !690, null}
!2579 = metadata !{i32 786689, metadata !689, metadata !"ls", metadata !147, i32 16777736, metadata !537, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ls] [line 520]
!2580 = metadata !{i32 520, i32 36, metadata !689, null}
!2581 = metadata !{i32 786689, metadata !689, metadata !"v", metadata !147, i32 33554952, metadata !671, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [v] [line 520]
!2582 = metadata !{i32 520, i32 49, metadata !689, null}
!2583 = metadata !{i32 786688, metadata !689, metadata !"fs", metadata !147, i32 521, metadata !597, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fs] [line 521]
!2584 = metadata !{i32 521, i32 14, metadata !689, null}
!2585 = metadata !{i32 521, i32 3, metadata !689, null}
!2586 = metadata !{i32 522, i32 3, metadata !689, null}
!2587 = metadata !{i32 522, i32 27, metadata !689, null}
!2588 = metadata !{i32 523, i32 3, metadata !689, null}
!2589 = metadata !{i32 524, i32 1, metadata !689, null}
!2590 = metadata !{i32 786689, metadata !691, metadata !"ls", metadata !147, i32 16777391, metadata !537, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ls] [line 175]
!2591 = metadata !{i32 175, i32 37, metadata !691, null}
!2592 = metadata !{i32 786689, metadata !691, metadata !"name", metadata !147, i32 33554607, metadata !248, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 175]
!2593 = metadata !{i32 175, i32 50, metadata !691, null}
!2594 = metadata !{i32 786688, metadata !691, metadata !"fs", metadata !147, i32 176, metadata !597, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fs] [line 176]
!2595 = metadata !{i32 176, i32 14, metadata !691, null}
!2596 = metadata !{i32 176, i32 3, metadata !691, null}
!2597 = metadata !{i32 786688, metadata !691, metadata !"dyd", metadata !147, i32 177, metadata !503, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dyd] [line 177]
!2598 = metadata !{i32 177, i32 12, metadata !691, null}
!2599 = metadata !{i32 177, i32 3, metadata !691, null}
!2600 = metadata !{i32 786688, metadata !691, metadata !"reg", metadata !147, i32 178, metadata !181, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [reg] [line 178]
!2601 = metadata !{i32 178, i32 7, metadata !691, null}
!2602 = metadata !{i32 178, i32 13, metadata !691, null}
!2603 = metadata !{i32 179, i32 3, metadata !691, null}
!2604 = metadata !{i32 181, i32 3, metadata !2605, null}
!2605 = metadata !{i32 786443, metadata !146, metadata !691, i32 181, i32 3, i32 0, i32 93} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2606 = metadata !{i32 181, i32 3, metadata !2607, null}
!2607 = metadata !{i32 786443, metadata !146, metadata !2605, i32 181, i32 3, i32 1, i32 291} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2608 = metadata !{i32 183, i32 3, metadata !691, null}
!2609 = metadata !{i32 184, i32 1, metadata !691, null}
!2610 = metadata !{i32 786689, metadata !694, metadata !"ls", metadata !147, i32 16777377, metadata !537, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ls] [line 161]
!2611 = metadata !{i32 161, i32 40, metadata !694, null}
!2612 = metadata !{i32 786689, metadata !694, metadata !"varname", metadata !147, i32 33554593, metadata !248, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [varname] [line 161]
!2613 = metadata !{i32 161, i32 53, metadata !694, null}
!2614 = metadata !{i32 786688, metadata !694, metadata !"fs", metadata !147, i32 162, metadata !597, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fs] [line 162]
!2615 = metadata !{i32 162, i32 14, metadata !694, null}
!2616 = metadata !{i32 162, i32 3, metadata !694, null}
!2617 = metadata !{i32 786688, metadata !694, metadata !"f", metadata !147, i32 163, metadata !562, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [f] [line 163]
!2618 = metadata !{i32 163, i32 10, metadata !694, null}
!2619 = metadata !{i32 163, i32 3, metadata !694, null}
!2620 = metadata !{i32 786688, metadata !694, metadata !"oldsize", metadata !147, i32 164, metadata !181, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [oldsize] [line 164]
!2621 = metadata !{i32 164, i32 7, metadata !694, null}
!2622 = metadata !{i32 164, i32 3, metadata !694, null}
!2623 = metadata !{i32 165, i32 3, metadata !2624, null}
!2624 = metadata !{i32 786443, metadata !146, metadata !694, i32 165, i32 3, i32 0, i32 94} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2625 = metadata !{i32 165, i32 3, metadata !2626, null}
!2626 = metadata !{i32 786443, metadata !146, metadata !2624, i32 165, i32 3, i32 1, i32 292} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2627 = metadata !{i32 167, i32 3, metadata !694, null}
!2628 = metadata !{i32 167, i32 3, metadata !2629, null}
!2629 = metadata !{i32 786443, metadata !146, metadata !694, i32 167, i32 3, i32 1, i32 293} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2630 = metadata !{i32 168, i32 5, metadata !694, null}
!2631 = metadata !{i32 169, i32 3, metadata !694, null}
!2632 = metadata !{i32 170, i32 3, metadata !694, null}
!2633 = metadata !{i32 170, i32 3, metadata !2634, null}
!2634 = metadata !{i32 786443, metadata !146, metadata !694, i32 170, i32 3, i32 1, i32 294} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2635 = metadata !{i32 170, i32 3, metadata !2636, null}
!2636 = metadata !{i32 786443, metadata !146, metadata !694, i32 170, i32 3, i32 3, i32 296} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2637 = metadata !{i32 170, i32 3, metadata !2638, null}
!2638 = metadata !{i32 786443, metadata !146, metadata !2639, i32 170, i32 3, i32 4, i32 297} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2639 = metadata !{i32 786443, metadata !146, metadata !694, i32 170, i32 3, i32 2, i32 295} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2640 = metadata !{i32 171, i32 3, metadata !694, null}
!2641 = metadata !{i32 786689, metadata !723, metadata !"fs", metadata !147, i32 16777881, metadata !597, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fs] [line 665]
!2642 = metadata !{i32 665, i32 40, metadata !723, null}
!2643 = metadata !{i32 786689, metadata !723, metadata !"cc", metadata !147, i32 33555097, metadata !708, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cc] [line 665]
!2644 = metadata !{i32 665, i32 64, metadata !723, null}
!2645 = metadata !{i32 666, i32 7, metadata !2646, null}
!2646 = metadata !{i32 786443, metadata !146, metadata !723, i32 666, i32 7, i32 0, i32 114} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2647 = metadata !{i32 666, i32 25, metadata !2648, null}
!2648 = metadata !{i32 786443, metadata !146, metadata !2646, i32 666, i32 25, i32 1, i32 298} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2649 = metadata !{i32 667, i32 3, metadata !723, null}
!2650 = metadata !{i32 668, i32 3, metadata !723, null}
!2651 = metadata !{i32 669, i32 7, metadata !2652, null}
!2652 = metadata !{i32 786443, metadata !146, metadata !723, i32 669, i32 7, i32 0, i32 115} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2653 = metadata !{i32 670, i32 5, metadata !2654, null}
!2654 = metadata !{i32 786443, metadata !146, metadata !2652, i32 669, i32 41, i32 0, i32 116} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2655 = metadata !{i32 671, i32 5, metadata !2654, null}
!2656 = metadata !{i32 672, i32 3, metadata !2654, null}
!2657 = metadata !{i32 673, i32 1, metadata !723, null}
!2658 = metadata !{i32 786689, metadata !716, metadata !"ls", metadata !147, i32 16777916, metadata !537, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ls] [line 700]
!2659 = metadata !{i32 700, i32 30, metadata !716, null}
!2660 = metadata !{i32 786689, metadata !716, metadata !"cc", metadata !147, i32 33555132, metadata !708, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cc] [line 700]
!2661 = metadata !{i32 700, i32 54, metadata !716, null}
!2662 = metadata !{i32 702, i32 3, metadata !716, null}
!2663 = metadata !{i32 704, i32 11, metadata !2664, null}
!2664 = metadata !{i32 786443, metadata !146, metadata !2665, i32 704, i32 11, i32 0, i32 109} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2665 = metadata !{i32 786443, metadata !146, metadata !2666, i32 703, i32 19, i32 0, i32 108} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2666 = metadata !{i32 786443, metadata !146, metadata !716, i32 702, i32 23, i32 0, i32 107} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2667 = metadata !{i32 705, i32 9, metadata !2664, null}
!2668 = metadata !{i32 707, i32 9, metadata !2664, null}
!2669 = metadata !{i32 708, i32 7, metadata !2665, null}
!2670 = metadata !{i32 711, i32 7, metadata !2671, null}
!2671 = metadata !{i32 786443, metadata !146, metadata !2666, i32 710, i32 15, i32 0, i32 110} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2672 = metadata !{i32 712, i32 7, metadata !2671, null}
!2673 = metadata !{i32 715, i32 7, metadata !2674, null}
!2674 = metadata !{i32 786443, metadata !146, metadata !2666, i32 714, i32 14, i32 0, i32 111} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2675 = metadata !{i32 716, i32 7, metadata !2674, null}
!2676 = metadata !{i32 719, i32 1, metadata !716, null}
!2677 = metadata !{i32 786689, metadata !705, metadata !"fs", metadata !147, i32 16777892, metadata !597, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fs] [line 676]
!2678 = metadata !{i32 676, i32 39, metadata !705, null}
!2679 = metadata !{i32 786689, metadata !705, metadata !"cc", metadata !147, i32 33555108, metadata !708, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cc] [line 676]
!2680 = metadata !{i32 676, i32 63, metadata !705, null}
!2681 = metadata !{i32 677, i32 7, metadata !2682, null}
!2682 = metadata !{i32 786443, metadata !146, metadata !705, i32 677, i32 7, i32 0, i32 102} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2683 = metadata !{i32 677, i32 25, metadata !2684, null}
!2684 = metadata !{i32 786443, metadata !146, metadata !2682, i32 677, i32 25, i32 1, i32 299} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2685 = metadata !{i32 678, i32 7, metadata !2686, null}
!2686 = metadata !{i32 786443, metadata !146, metadata !705, i32 678, i32 7, i32 0, i32 103} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2687 = metadata !{i32 678, i32 7, metadata !2688, null}
!2688 = metadata !{i32 786443, metadata !146, metadata !2686, i32 678, i32 7, i32 1, i32 300} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2689 = metadata !{i32 679, i32 5, metadata !2690, null}
!2690 = metadata !{i32 786443, metadata !146, metadata !2686, i32 678, i32 28, i32 0, i32 104} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2691 = metadata !{i32 680, i32 5, metadata !2690, null}
!2692 = metadata !{i32 681, i32 5, metadata !2690, null}
!2693 = metadata !{i32 682, i32 3, metadata !2690, null}
!2694 = metadata !{i32 684, i32 9, metadata !2695, null}
!2695 = metadata !{i32 786443, metadata !146, metadata !2696, i32 684, i32 9, i32 0, i32 106} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2696 = metadata !{i32 786443, metadata !146, metadata !2686, i32 683, i32 8, i32 0, i32 105} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2697 = metadata !{i32 685, i32 7, metadata !2695, null}
!2698 = metadata !{i32 686, i32 5, metadata !2696, null}
!2699 = metadata !{i32 688, i32 1, metadata !705, null}
!2700 = metadata !{i32 786689, metadata !722, metadata !"ls", metadata !147, i32 16777907, metadata !537, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ls] [line 691]
!2701 = metadata !{i32 691, i32 34, metadata !722, null}
!2702 = metadata !{i32 786689, metadata !722, metadata !"cc", metadata !147, i32 33555123, metadata !708, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cc] [line 691]
!2703 = metadata !{i32 691, i32 58, metadata !722, null}
!2704 = metadata !{i32 693, i32 3, metadata !722, null}
!2705 = metadata !{i32 694, i32 3, metadata !722, null}
!2706 = metadata !{i32 695, i32 3, metadata !722, null}
!2707 = metadata !{i32 696, i32 3, metadata !722, null}
!2708 = metadata !{i32 697, i32 1, metadata !722, null}
!2709 = metadata !{i32 786689, metadata !719, metadata !"ls", metadata !147, i32 16777860, metadata !537, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ls] [line 644]
!2710 = metadata !{i32 644, i32 33, metadata !719, null}
!2711 = metadata !{i32 786689, metadata !719, metadata !"cc", metadata !147, i32 33555076, metadata !708, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cc] [line 644]
!2712 = metadata !{i32 644, i32 57, metadata !719, null}
!2713 = metadata !{i32 786688, metadata !719, metadata !"fs", metadata !147, i32 646, metadata !597, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fs] [line 646]
!2714 = metadata !{i32 646, i32 14, metadata !719, null}
!2715 = metadata !{i32 646, i32 3, metadata !719, null}
!2716 = metadata !{i32 786688, metadata !719, metadata !"reg", metadata !147, i32 647, metadata !181, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [reg] [line 647]
!2717 = metadata !{i32 647, i32 7, metadata !719, null}
!2718 = metadata !{i32 647, i32 3, metadata !719, null}
!2719 = metadata !{i32 786688, metadata !719, metadata !"key", metadata !147, i32 648, metadata !649, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [key] [line 648]
!2720 = metadata !{i32 648, i32 11, metadata !719, null}
!2721 = metadata !{i32 786688, metadata !719, metadata !"val", metadata !147, i32 648, metadata !649, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [val] [line 648]
!2722 = metadata !{i32 648, i32 16, metadata !719, null}
!2723 = metadata !{i32 786688, metadata !719, metadata !"rkkey", metadata !147, i32 649, metadata !181, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rkkey] [line 649]
!2724 = metadata !{i32 649, i32 7, metadata !719, null}
!2725 = metadata !{i32 650, i32 7, metadata !2726, null}
!2726 = metadata !{i32 786443, metadata !146, metadata !719, i32 650, i32 7, i32 0, i32 112} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2727 = metadata !{i32 651, i32 5, metadata !2728, null}
!2728 = metadata !{i32 786443, metadata !146, metadata !2726, i32 650, i32 31, i32 0, i32 113} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2729 = metadata !{i32 652, i32 5, metadata !2728, null}
!2730 = metadata !{i32 653, i32 3, metadata !2728, null}
!2731 = metadata !{i32 655, i32 5, metadata !2726, null}
!2732 = metadata !{i32 656, i32 3, metadata !719, null}
!2733 = metadata !{i32 657, i32 3, metadata !719, null}
!2734 = metadata !{i32 658, i32 11, metadata !719, null}
!2735 = metadata !{i32 659, i32 3, metadata !719, null}
!2736 = metadata !{i32 660, i32 3, metadata !719, null}
!2737 = metadata !{i32 660, i32 55, metadata !719, null}
!2738 = metadata !{i32 661, i32 3, metadata !719, null}
!2739 = metadata !{i32 662, i32 1, metadata !719, null}
!2740 = metadata !{i32 786689, metadata !721, metadata !"ls", metadata !147, i32 16777372, metadata !537, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ls] [line 156]
!2741 = metadata !{i32 156, i32 34, metadata !721, null}
!2742 = metadata !{i32 786689, metadata !721, metadata !"e", metadata !147, i32 33554588, metadata !671, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [e] [line 156]
!2743 = metadata !{i32 156, i32 47, metadata !721, null}
!2744 = metadata !{i32 157, i32 3, metadata !721, null}
!2745 = metadata !{i32 157, i32 21, metadata !721, null}
!2746 = metadata !{i32 158, i32 1, metadata !721, null}
!2747 = metadata !{i32 786689, metadata !720, metadata !"ls", metadata !147, i32 16777835, metadata !537, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ls] [line 619]
!2748 = metadata !{i32 619, i32 31, metadata !720, null}
!2749 = metadata !{i32 786689, metadata !720, metadata !"v", metadata !147, i32 33555051, metadata !671, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [v] [line 619]
!2750 = metadata !{i32 619, i32 44, metadata !720, null}
!2751 = metadata !{i32 621, i32 3, metadata !720, null}
!2752 = metadata !{i32 622, i32 3, metadata !720, null}
!2753 = metadata !{i32 623, i32 3, metadata !720, null}
!2754 = metadata !{i32 624, i32 3, metadata !720, null}
!2755 = metadata !{i32 625, i32 1, metadata !720, null}
!2756 = metadata !{i32 786689, metadata !735, metadata !"fs", metadata !147, i32 16777295, metadata !597, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fs] [line 79]
!2757 = metadata !{i32 79, i32 39, metadata !735, null}
!2758 = metadata !{i32 786689, metadata !735, metadata !"limit", metadata !147, i32 33554511, metadata !181, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [limit] [line 79]
!2759 = metadata !{i32 79, i32 47, metadata !735, null}
!2760 = metadata !{i32 786689, metadata !735, metadata !"what", metadata !147, i32 50331727, metadata !415, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [what] [line 79]
!2761 = metadata !{i32 79, i32 66, metadata !735, null}
!2762 = metadata !{i32 786688, metadata !735, metadata !"L", metadata !147, i32 80, metadata !208, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [L] [line 80]
!2763 = metadata !{i32 80, i32 14, metadata !735, null}
!2764 = metadata !{i32 80, i32 3, metadata !735, null}
!2765 = metadata !{i32 786688, metadata !735, metadata !"msg", metadata !147, i32 81, metadata !415, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [msg] [line 81]
!2766 = metadata !{i32 81, i32 15, metadata !735, null}
!2767 = metadata !{i32 786688, metadata !735, metadata !"line", metadata !147, i32 82, metadata !181, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [line] [line 82]
!2768 = metadata !{i32 82, i32 7, metadata !735, null}
!2769 = metadata !{i32 82, i32 3, metadata !735, null}
!2770 = metadata !{i32 786688, metadata !735, metadata !"where", metadata !147, i32 83, metadata !415, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [where] [line 83]
!2771 = metadata !{i32 83, i32 15, metadata !735, null}
!2772 = metadata !{i32 83, i32 3, metadata !735, null}
!2773 = metadata !{i32 83, i32 3, metadata !2774, null}
!2774 = metadata !{i32 786443, metadata !146, metadata !735, i32 83, i32 3, i32 1, i32 301} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2775 = metadata !{i32 85, i32 25, metadata !735, null}
!2776 = metadata !{i32 85, i32 25, metadata !2777, null}
!2777 = metadata !{i32 786443, metadata !146, metadata !735, i32 85, i32 25, i32 1, i32 302} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2778 = metadata !{i32 86, i32 9, metadata !735, null}
!2779 = metadata !{i32 88, i32 3, metadata !735, null}
!2780 = metadata !{i32 89, i32 1, metadata !735, null}
!2781 = metadata !{i32 786689, metadata !746, metadata !"ls", metadata !147, i32 16778085, metadata !537, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ls] [line 869]
!2782 = metadata !{i32 869, i32 35, metadata !746, null}
!2783 = metadata !{i32 786689, metadata !746, metadata !"v", metadata !147, i32 33555301, metadata !671, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [v] [line 869]
!2784 = metadata !{i32 869, i32 48, metadata !746, null}
!2785 = metadata !{i32 871, i32 3, metadata !746, null}
!2786 = metadata !{i32 786688, metadata !2787, metadata !"line", metadata !147, i32 873, metadata !181, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [line] [line 873]
!2787 = metadata !{i32 786443, metadata !146, metadata !2788, i32 872, i32 15, i32 0, i32 147} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2788 = metadata !{i32 786443, metadata !146, metadata !746, i32 871, i32 24, i32 0, i32 146} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2789 = metadata !{i32 873, i32 11, metadata !2787, null}
!2790 = metadata !{i32 873, i32 7, metadata !2787, null}
!2791 = metadata !{i32 874, i32 7, metadata !2787, null}
!2792 = metadata !{i32 875, i32 7, metadata !2787, null}
!2793 = metadata !{i32 876, i32 7, metadata !2787, null}
!2794 = metadata !{i32 877, i32 7, metadata !2787, null}
!2795 = metadata !{i32 878, i32 7, metadata !2787, null}
!2796 = metadata !{i32 881, i32 7, metadata !2797, null}
!2797 = metadata !{i32 786443, metadata !146, metadata !2788, i32 880, i32 19, i32 0, i32 148} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2798 = metadata !{i32 882, i32 7, metadata !2797, null}
!2799 = metadata !{i32 885, i32 7, metadata !2800, null}
!2800 = metadata !{i32 786443, metadata !146, metadata !2788, i32 884, i32 14, i32 0, i32 149} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2801 = metadata !{i32 888, i32 1, metadata !746, null}
!2802 = metadata !{i32 786689, metadata !745, metadata !"ls", metadata !147, i32 16777824, metadata !537, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ls] [line 608]
!2803 = metadata !{i32 608, i32 33, metadata !745, null}
!2804 = metadata !{i32 786689, metadata !745, metadata !"v", metadata !147, i32 33555040, metadata !671, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [v] [line 608]
!2805 = metadata !{i32 608, i32 46, metadata !745, null}
!2806 = metadata !{i32 786688, metadata !745, metadata !"fs", metadata !147, i32 610, metadata !597, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fs] [line 610]
!2807 = metadata !{i32 610, i32 14, metadata !745, null}
!2808 = metadata !{i32 610, i32 3, metadata !745, null}
!2809 = metadata !{i32 786688, metadata !745, metadata !"key", metadata !147, i32 611, metadata !649, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [key] [line 611]
!2810 = metadata !{i32 611, i32 11, metadata !745, null}
!2811 = metadata !{i32 612, i32 3, metadata !745, null}
!2812 = metadata !{i32 613, i32 3, metadata !745, null}
!2813 = metadata !{i32 614, i32 3, metadata !745, null}
!2814 = metadata !{i32 615, i32 3, metadata !745, null}
!2815 = metadata !{i32 616, i32 1, metadata !745, null}
!2816 = metadata !{i32 786689, metadata !742, metadata !"ls", metadata !147, i32 16778031, metadata !537, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ls] [line 815]
!2817 = metadata !{i32 815, i32 33, metadata !742, null}
!2818 = metadata !{i32 786689, metadata !742, metadata !"f", metadata !147, i32 33555247, metadata !671, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [f] [line 815]
!2819 = metadata !{i32 815, i32 46, metadata !742, null}
!2820 = metadata !{i32 786689, metadata !742, metadata !"line", metadata !147, i32 50332463, metadata !181, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [line] [line 815]
!2821 = metadata !{i32 815, i32 53, metadata !742, null}
!2822 = metadata !{i32 786688, metadata !742, metadata !"fs", metadata !147, i32 816, metadata !597, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fs] [line 816]
!2823 = metadata !{i32 816, i32 14, metadata !742, null}
!2824 = metadata !{i32 816, i32 3, metadata !742, null}
!2825 = metadata !{i32 786688, metadata !742, metadata !"args", metadata !147, i32 817, metadata !649, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [args] [line 817]
!2826 = metadata !{i32 817, i32 11, metadata !742, null}
!2827 = metadata !{i32 786688, metadata !742, metadata !"base", metadata !147, i32 818, metadata !181, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [base] [line 818]
!2828 = metadata !{i32 818, i32 7, metadata !742, null}
!2829 = metadata !{i32 786688, metadata !742, metadata !"nparams", metadata !147, i32 818, metadata !181, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nparams] [line 818]
!2830 = metadata !{i32 818, i32 13, metadata !742, null}
!2831 = metadata !{i32 819, i32 3, metadata !742, null}
!2832 = metadata !{i32 821, i32 7, metadata !2833, null}
!2833 = metadata !{i32 786443, metadata !146, metadata !2834, i32 820, i32 15, i32 0, i32 137} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2834 = metadata !{i32 786443, metadata !146, metadata !742, i32 819, i32 24, i32 0, i32 136} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2835 = metadata !{i32 822, i32 11, metadata !2836, null}
!2836 = metadata !{i32 786443, metadata !146, metadata !2833, i32 822, i32 11, i32 0, i32 138} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2837 = metadata !{i32 823, i32 9, metadata !2836, null}
!2838 = metadata !{i32 825, i32 9, metadata !2839, null}
!2839 = metadata !{i32 786443, metadata !146, metadata !2836, i32 824, i32 12, i32 0, i32 139} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2840 = metadata !{i32 826, i32 9, metadata !2839, null}
!2841 = metadata !{i32 828, i32 7, metadata !2833, null}
!2842 = metadata !{i32 829, i32 7, metadata !2833, null}
!2843 = metadata !{i32 832, i32 7, metadata !2844, null}
!2844 = metadata !{i32 786443, metadata !146, metadata !2834, i32 831, i32 15, i32 0, i32 140} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2845 = metadata !{i32 833, i32 7, metadata !2844, null}
!2846 = metadata !{i32 836, i32 7, metadata !2847, null}
!2847 = metadata !{i32 786443, metadata !146, metadata !2834, i32 835, i32 21, i32 0, i32 141} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2848 = metadata !{i32 837, i32 7, metadata !2847, null}
!2849 = metadata !{i32 838, i32 7, metadata !2847, null}
!2850 = metadata !{i32 841, i32 7, metadata !2851, null}
!2851 = metadata !{i32 786443, metadata !146, metadata !2834, i32 840, i32 14, i32 0, i32 142} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2852 = metadata !{i32 845, i32 3, metadata !742, null}
!2853 = metadata !{i32 846, i32 7, metadata !2854, null}
!2854 = metadata !{i32 786443, metadata !146, metadata !742, i32 846, i32 7, i32 0, i32 143} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2855 = metadata !{i32 846, i32 7, metadata !2856, null}
!2856 = metadata !{i32 786443, metadata !146, metadata !2854, i32 846, i32 7, i32 1, i32 303} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2857 = metadata !{i32 847, i32 5, metadata !2854, null}
!2858 = metadata !{i32 849, i32 9, metadata !2859, null}
!2859 = metadata !{i32 786443, metadata !146, metadata !2860, i32 849, i32 9, i32 0, i32 145} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2860 = metadata !{i32 786443, metadata !146, metadata !2854, i32 848, i32 8, i32 0, i32 144} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2861 = metadata !{i32 850, i32 7, metadata !2859, null}
!2862 = metadata !{i32 851, i32 5, metadata !2860, null}
!2863 = metadata !{i32 853, i32 3, metadata !742, null}
!2864 = metadata !{i32 853, i32 22, metadata !742, null}
!2865 = metadata !{i32 854, i32 3, metadata !742, null}
!2866 = metadata !{i32 855, i32 3, metadata !742, null}
!2867 = metadata !{i32 857, i32 1, metadata !742, null}
!2868 = metadata !{i32 786689, metadata !747, metadata !"ls", metadata !147, i32 16777511, metadata !537, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ls] [line 295]
!2869 = metadata !{i32 295, i32 34, metadata !747, null}
!2870 = metadata !{i32 786689, metadata !747, metadata !"var", metadata !147, i32 33554727, metadata !671, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [var] [line 295]
!2871 = metadata !{i32 295, i32 47, metadata !747, null}
!2872 = metadata !{i32 786688, metadata !747, metadata !"varname", metadata !147, i32 296, metadata !248, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [varname] [line 296]
!2873 = metadata !{i32 296, i32 12, metadata !747, null}
!2874 = metadata !{i32 296, i32 22, metadata !747, null}
!2875 = metadata !{i32 786688, metadata !747, metadata !"fs", metadata !147, i32 297, metadata !597, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fs] [line 297]
!2876 = metadata !{i32 297, i32 14, metadata !747, null}
!2877 = metadata !{i32 297, i32 3, metadata !747, null}
!2878 = metadata !{i32 298, i32 3, metadata !747, null}
!2879 = metadata !{i32 299, i32 7, metadata !2880, null}
!2880 = metadata !{i32 786443, metadata !146, metadata !747, i32 299, i32 7, i32 0, i32 150} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2881 = metadata !{i32 786688, metadata !2882, metadata !"key", metadata !147, i32 300, metadata !649, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [key] [line 300]
!2882 = metadata !{i32 786443, metadata !146, metadata !2880, i32 299, i32 24, i32 0, i32 151} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2883 = metadata !{i32 300, i32 13, metadata !2882, null}
!2884 = metadata !{i32 301, i32 5, metadata !2882, null}
!2885 = metadata !{i32 303, i32 5, metadata !2882, null}
!2886 = metadata !{i32 304, i32 5, metadata !2882, null}
!2887 = metadata !{i32 305, i32 3, metadata !2882, null}
!2888 = metadata !{i32 306, i32 1, metadata !747, null}
!2889 = metadata !{i32 786689, metadata !748, metadata !"fs", metadata !147, i32 16777486, metadata !597, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fs] [line 270]
!2890 = metadata !{i32 270, i32 38, metadata !748, null}
!2891 = metadata !{i32 786689, metadata !748, metadata !"n", metadata !147, i32 33554702, metadata !248, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 270]
!2892 = metadata !{i32 270, i32 51, metadata !748, null}
!2893 = metadata !{i32 786689, metadata !748, metadata !"var", metadata !147, i32 50331918, metadata !671, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [var] [line 270]
!2894 = metadata !{i32 270, i32 63, metadata !748, null}
!2895 = metadata !{i32 786689, metadata !748, metadata !"base", metadata !147, i32 67109134, metadata !181, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [base] [line 270]
!2896 = metadata !{i32 270, i32 72, metadata !748, null}
!2897 = metadata !{i32 271, i32 7, metadata !2898, null}
!2898 = metadata !{i32 786443, metadata !146, metadata !748, i32 271, i32 7, i32 0, i32 152} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2899 = metadata !{i32 272, i32 5, metadata !2898, null}
!2900 = metadata !{i32 786688, metadata !2901, metadata !"v", metadata !147, i32 274, metadata !181, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [v] [line 274]
!2901 = metadata !{i32 786443, metadata !146, metadata !2898, i32 273, i32 8, i32 0, i32 153} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2902 = metadata !{i32 274, i32 9, metadata !2901, null}
!2903 = metadata !{i32 274, i32 13, metadata !2901, null}
!2904 = metadata !{i32 275, i32 9, metadata !2905, null}
!2905 = metadata !{i32 786443, metadata !146, metadata !2901, i32 275, i32 9, i32 0, i32 154} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2906 = metadata !{i32 276, i32 7, metadata !2907, null}
!2907 = metadata !{i32 786443, metadata !146, metadata !2905, i32 275, i32 17, i32 0, i32 155} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2908 = metadata !{i32 277, i32 11, metadata !2909, null}
!2909 = metadata !{i32 786443, metadata !146, metadata !2907, i32 277, i32 11, i32 0, i32 156} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2910 = metadata !{i32 278, i32 9, metadata !2909, null}
!2911 = metadata !{i32 279, i32 5, metadata !2907, null}
!2912 = metadata !{i32 786688, metadata !2913, metadata !"idx", metadata !147, i32 281, metadata !181, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [idx] [line 281]
!2913 = metadata !{i32 786443, metadata !146, metadata !2905, i32 280, i32 10, i32 0, i32 157} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2914 = metadata !{i32 281, i32 11, metadata !2913, null}
!2915 = metadata !{i32 281, i32 17, metadata !2913, null}
!2916 = metadata !{i32 282, i32 11, metadata !2917, null}
!2917 = metadata !{i32 786443, metadata !146, metadata !2913, i32 282, i32 11, i32 0, i32 158} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2918 = metadata !{i32 283, i32 9, metadata !2919, null}
!2919 = metadata !{i32 786443, metadata !146, metadata !2917, i32 282, i32 20, i32 0, i32 159} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2920 = metadata !{i32 284, i32 13, metadata !2921, null}
!2921 = metadata !{i32 786443, metadata !146, metadata !2919, i32 284, i32 13, i32 0, i32 160} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2922 = metadata !{i32 285, i32 11, metadata !2921, null}
!2923 = metadata !{i32 287, i32 16, metadata !2919, null}
!2924 = metadata !{i32 288, i32 7, metadata !2919, null}
!2925 = metadata !{i32 289, i32 7, metadata !2913, null}
!2926 = metadata !{i32 292, i32 1, metadata !748, null}
!2927 = metadata !{i32 786689, metadata !755, metadata !"fs", metadata !147, i32 16777460, metadata !597, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fs] [line 244]
!2928 = metadata !{i32 244, i32 34, metadata !755, null}
!2929 = metadata !{i32 786689, metadata !755, metadata !"n", metadata !147, i32 33554676, metadata !248, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 244]
!2930 = metadata !{i32 244, i32 47, metadata !755, null}
!2931 = metadata !{i32 786688, metadata !755, metadata !"i", metadata !147, i32 245, metadata !181, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 245]
!2932 = metadata !{i32 245, i32 7, metadata !755, null}
!2933 = metadata !{i32 246, i32 8, metadata !2934, null}
!2934 = metadata !{i32 786443, metadata !146, metadata !755, i32 246, i32 3, i32 0, i32 164} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2935 = metadata !{i32 246, i32 8, metadata !2936, null}
!2936 = metadata !{i32 786443, metadata !146, metadata !2937, i32 246, i32 8, i32 2, i32 305} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2937 = metadata !{i32 786443, metadata !146, metadata !2934, i32 246, i32 8, i32 1, i32 304} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2938 = metadata !{i32 247, i32 9, metadata !2939, null}
!2939 = metadata !{i32 786443, metadata !146, metadata !2940, i32 247, i32 9, i32 0, i32 166} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2940 = metadata !{i32 786443, metadata !146, metadata !2934, i32 246, i32 52, i32 0, i32 165} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2941 = metadata !{i32 248, i32 7, metadata !2939, null}
!2942 = metadata !{i32 249, i32 3, metadata !2940, null}
!2943 = metadata !{i32 246, i32 47, metadata !2934, null}
!2944 = metadata !{i32 250, i32 3, metadata !755, null}
!2945 = metadata !{i32 251, i32 1, metadata !755, null}
!2946 = metadata !{i32 786689, metadata !754, metadata !"fs", metadata !147, i32 16777474, metadata !597, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fs] [line 258]
!2947 = metadata !{i32 258, i32 35, metadata !754, null}
!2948 = metadata !{i32 786689, metadata !754, metadata !"level", metadata !147, i32 33554690, metadata !181, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [level] [line 258]
!2949 = metadata !{i32 258, i32 43, metadata !754, null}
!2950 = metadata !{i32 786688, metadata !754, metadata !"bl", metadata !147, i32 259, metadata !614, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bl] [line 259]
!2951 = metadata !{i32 259, i32 13, metadata !754, null}
!2952 = metadata !{i32 259, i32 3, metadata !754, null}
!2953 = metadata !{i32 260, i32 3, metadata !754, null}
!2954 = metadata !{i32 260, i32 3, metadata !2955, null}
!2955 = metadata !{i32 786443, metadata !146, metadata !754, i32 260, i32 3, i32 1, i32 306} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2956 = metadata !{i32 261, i32 5, metadata !754, null}
!2957 = metadata !{i32 262, i32 3, metadata !754, null}
!2958 = metadata !{i32 263, i32 1, metadata !754, null}
!2959 = metadata !{i32 786689, metadata !751, metadata !"fs", metadata !147, i32 16777434, metadata !597, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fs] [line 218]
!2960 = metadata !{i32 218, i32 38, metadata !751, null}
!2961 = metadata !{i32 786689, metadata !751, metadata !"name", metadata !147, i32 33554650, metadata !248, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 218]
!2962 = metadata !{i32 218, i32 51, metadata !751, null}
!2963 = metadata !{i32 786688, metadata !751, metadata !"i", metadata !147, i32 219, metadata !181, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 219]
!2964 = metadata !{i32 219, i32 7, metadata !751, null}
!2965 = metadata !{i32 786688, metadata !751, metadata !"up", metadata !147, i32 220, metadata !465, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [up] [line 220]
!2966 = metadata !{i32 220, i32 14, metadata !751, null}
!2967 = metadata !{i32 220, i32 3, metadata !751, null}
!2968 = metadata !{i32 221, i32 8, metadata !2969, null}
!2969 = metadata !{i32 786443, metadata !146, metadata !751, i32 221, i32 3, i32 0, i32 161} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2970 = metadata !{i32 221, i32 8, metadata !2971, null}
!2971 = metadata !{i32 786443, metadata !146, metadata !2972, i32 221, i32 8, i32 2, i32 309} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2972 = metadata !{i32 786443, metadata !146, metadata !2969, i32 221, i32 8, i32 1, i32 307} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2973 = metadata !{i32 222, i32 9, metadata !2974, null}
!2974 = metadata !{i32 786443, metadata !146, metadata !2975, i32 222, i32 9, i32 0, i32 163} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2975 = metadata !{i32 786443, metadata !146, metadata !2969, i32 221, i32 34, i32 0, i32 162} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2976 = metadata !{i32 222, i32 34, metadata !2977, null}
!2977 = metadata !{i32 786443, metadata !146, metadata !2974, i32 222, i32 34, i32 1, i32 308} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2978 = metadata !{i32 223, i32 3, metadata !2975, null}
!2979 = metadata !{i32 221, i32 29, metadata !2969, null}
!2980 = metadata !{i32 224, i32 3, metadata !751, null}
!2981 = metadata !{i32 225, i32 1, metadata !751, null}
!2982 = metadata !{i32 786689, metadata !765, metadata !"fs", metadata !147, i32 16778421, metadata !597, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fs] [line 1205]
!2983 = metadata !{i32 1205, i32 39, metadata !765, null}
!2984 = metadata !{i32 786689, metadata !765, metadata !"ll", metadata !147, i32 33555637, metadata !633, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ll] [line 1205]
!2985 = metadata !{i32 1205, i32 54, metadata !765, null}
!2986 = metadata !{i32 786689, metadata !765, metadata !"label", metadata !147, i32 50332853, metadata !248, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [label] [line 1205]
!2987 = metadata !{i32 1205, i32 67, metadata !765, null}
!2988 = metadata !{i32 786688, metadata !765, metadata !"i", metadata !147, i32 1206, metadata !181, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 1206]
!2989 = metadata !{i32 1206, i32 7, metadata !765, null}
!2990 = metadata !{i32 1207, i32 8, metadata !2991, null}
!2991 = metadata !{i32 786443, metadata !146, metadata !765, i32 1207, i32 3, i32 0, i32 180} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2992 = metadata !{i32 1207, i32 8, metadata !2993, null}
!2993 = metadata !{i32 786443, metadata !146, metadata !2994, i32 1207, i32 8, i32 2, i32 311} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2994 = metadata !{i32 786443, metadata !146, metadata !2991, i32 1207, i32 8, i32 1, i32 310} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2995 = metadata !{i32 1208, i32 9, metadata !2996, null}
!2996 = metadata !{i32 786443, metadata !146, metadata !2997, i32 1208, i32 9, i32 0, i32 182} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2997 = metadata !{i32 786443, metadata !146, metadata !2991, i32 1207, i32 48, i32 0, i32 181} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!2998 = metadata !{i32 786688, metadata !2999, metadata !"msg", metadata !147, i32 1209, metadata !415, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [msg] [line 1209]
!2999 = metadata !{i32 786443, metadata !146, metadata !2996, i32 1208, i32 40, i32 0, i32 183} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!3000 = metadata !{i32 1209, i32 19, metadata !2999, null}
!3001 = metadata !{i32 1209, i32 25, metadata !2999, null}
!3002 = metadata !{i32 1212, i32 7, metadata !2999, null}
!3003 = metadata !{i32 1214, i32 3, metadata !2997, null}
!3004 = metadata !{i32 1207, i32 43, metadata !2991, null}
!3005 = metadata !{i32 1215, i32 1, metadata !765, null}
!3006 = metadata !{i32 786689, metadata !764, metadata !"ls", metadata !147, i32 16778435, metadata !537, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ls] [line 1219]
!3007 = metadata !{i32 1219, i32 37, metadata !764, null}
!3008 = metadata !{i32 1220, i32 3, metadata !764, null}
!3009 = metadata !{i32 1220, i32 3, metadata !3010, null}
!3010 = metadata !{i32 786443, metadata !146, metadata !764, i32 1220, i32 3, i32 1, i32 312} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!3011 = metadata !{i32 1220, i32 3, metadata !3012, null}
!3012 = metadata !{i32 786443, metadata !146, metadata !764, i32 1220, i32 3, i32 3, i32 314} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!3013 = metadata !{i32 1220, i32 3, metadata !3014, null}
!3014 = metadata !{i32 786443, metadata !146, metadata !3015, i32 1220, i32 3, i32 4, i32 315} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!3015 = metadata !{i32 786443, metadata !146, metadata !764, i32 1220, i32 3, i32 2, i32 313} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!3016 = metadata !{i32 1221, i32 5, metadata !764, null}
!3017 = metadata !{i32 1222, i32 1, metadata !764, null}
!3018 = metadata !{i32 786689, metadata !772, metadata !"ls", metadata !147, i32 16778680, metadata !537, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ls] [line 1464]
!3019 = metadata !{i32 1464, i32 32, metadata !772, null}
!3020 = metadata !{i32 786689, metadata !772, metadata !"v", metadata !147, i32 33555896, metadata !671, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [v] [line 1464]
!3021 = metadata !{i32 1464, i32 45, metadata !772, null}
!3022 = metadata !{i32 786688, metadata !772, metadata !"ismethod", metadata !147, i32 1466, metadata !181, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ismethod] [line 1466]
!3023 = metadata !{i32 1466, i32 7, metadata !772, null}
!3024 = metadata !{i32 1466, i32 3, metadata !772, null}
!3025 = metadata !{i32 1467, i32 3, metadata !772, null}
!3026 = metadata !{i32 1468, i32 3, metadata !772, null}
!3027 = metadata !{i32 1468, i32 3, metadata !3028, null}
!3028 = metadata !{i32 786443, metadata !146, metadata !772, i32 1468, i32 3, i32 1, i32 316} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!3029 = metadata !{i32 1469, i32 5, metadata !772, null}
!3030 = metadata !{i32 1470, i32 7, metadata !3031, null}
!3031 = metadata !{i32 786443, metadata !146, metadata !772, i32 1470, i32 7, i32 0, i32 189} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!3032 = metadata !{i32 1471, i32 5, metadata !3033, null}
!3033 = metadata !{i32 786443, metadata !146, metadata !3031, i32 1470, i32 27, i32 0, i32 190} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!3034 = metadata !{i32 1472, i32 5, metadata !3033, null}
!3035 = metadata !{i32 1473, i32 3, metadata !3033, null}
!3036 = metadata !{i32 1474, i32 3, metadata !772, null}
!3037 = metadata !{i32 786689, metadata !777, metadata !"fs", metadata !147, i32 16777653, metadata !597, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fs] [line 437]
!3038 = metadata !{i32 437, i32 36, metadata !777, null}
!3039 = metadata !{i32 786689, metadata !777, metadata !"bl", metadata !147, i32 33554869, metadata !614, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bl] [line 437]
!3040 = metadata !{i32 437, i32 50, metadata !777, null}
!3041 = metadata !{i32 786689, metadata !777, metadata !"isloop", metadata !147, i32 50332085, metadata !162, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [isloop] [line 437]
!3042 = metadata !{i32 437, i32 62, metadata !777, null}
!3043 = metadata !{i32 438, i32 3, metadata !777, null}
!3044 = metadata !{i32 439, i32 3, metadata !777, null}
!3045 = metadata !{i32 440, i32 3, metadata !777, null}
!3046 = metadata !{i32 441, i32 3, metadata !777, null}
!3047 = metadata !{i32 442, i32 3, metadata !777, null}
!3048 = metadata !{i32 443, i32 3, metadata !777, null}
!3049 = metadata !{i32 444, i32 3, metadata !777, null}
!3050 = metadata !{i32 446, i32 1, metadata !777, null}
!3051 = metadata !{i32 786689, metadata !774, metadata !"ls", metadata !147, i32 16778395, metadata !537, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ls] [line 1179]
!3052 = metadata !{i32 1179, i32 28, metadata !774, null}
!3053 = metadata !{i32 786688, metadata !774, metadata !"v", metadata !147, i32 1181, metadata !649, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [v] [line 1181]
!3054 = metadata !{i32 1181, i32 11, metadata !774, null}
!3055 = metadata !{i32 1182, i32 3, metadata !774, null}
!3056 = metadata !{i32 1183, i32 7, metadata !3057, null}
!3057 = metadata !{i32 786443, metadata !146, metadata !774, i32 1183, i32 7, i32 0, i32 192} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!3058 = metadata !{i32 1183, i32 20, metadata !3059, null}
!3059 = metadata !{i32 786443, metadata !146, metadata !3057, i32 1183, i32 20, i32 1, i32 317} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!3060 = metadata !{i32 1184, i32 3, metadata !774, null}
!3061 = metadata !{i32 1185, i32 3, metadata !774, null}
!3062 = metadata !{i32 786689, metadata !785, metadata !"ls", metadata !147, i32 16778535, metadata !537, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ls] [line 1319]
!3063 = metadata !{i32 1319, i32 31, metadata !785, null}
!3064 = metadata !{i32 786689, metadata !785, metadata !"varname", metadata !147, i32 33555751, metadata !248, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [varname] [line 1319]
!3065 = metadata !{i32 1319, i32 44, metadata !785, null}
!3066 = metadata !{i32 786689, metadata !785, metadata !"line", metadata !147, i32 50332967, metadata !181, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [line] [line 1319]
!3067 = metadata !{i32 1319, i32 57, metadata !785, null}
!3068 = metadata !{i32 786688, metadata !785, metadata !"fs", metadata !147, i32 1321, metadata !597, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fs] [line 1321]
!3069 = metadata !{i32 1321, i32 14, metadata !785, null}
!3070 = metadata !{i32 1321, i32 3, metadata !785, null}
!3071 = metadata !{i32 786688, metadata !785, metadata !"base", metadata !147, i32 1322, metadata !181, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [base] [line 1322]
!3072 = metadata !{i32 1322, i32 7, metadata !785, null}
!3073 = metadata !{i32 1322, i32 3, metadata !785, null}
!3074 = metadata !{i32 1323, i32 3, metadata !785, null}
!3075 = metadata !{i32 1324, i32 3, metadata !785, null}
!3076 = metadata !{i32 1325, i32 3, metadata !785, null}
!3077 = metadata !{i32 1326, i32 3, metadata !785, null}
!3078 = metadata !{i32 1327, i32 3, metadata !785, null}
!3079 = metadata !{i32 1328, i32 3, metadata !785, null}
!3080 = metadata !{i32 1329, i32 3, metadata !785, null}
!3081 = metadata !{i32 1330, i32 3, metadata !785, null}
!3082 = metadata !{i32 1331, i32 7, metadata !3083, null}
!3083 = metadata !{i32 786443, metadata !146, metadata !785, i32 1331, i32 7, i32 0, i32 197} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!3084 = metadata !{i32 1332, i32 5, metadata !3083, null}
!3085 = metadata !{i32 1334, i32 5, metadata !3086, null}
!3086 = metadata !{i32 786443, metadata !146, metadata !3083, i32 1333, i32 8, i32 0, i32 198} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!3087 = metadata !{i32 1334, i32 33, metadata !3086, null}
!3088 = metadata !{i32 1335, i32 5, metadata !3086, null}
!3089 = metadata !{i32 1337, i32 3, metadata !785, null}
!3090 = metadata !{i32 1338, i32 1, metadata !785, null}
!3091 = metadata !{i32 786689, metadata !781, metadata !"ls", metadata !147, i32 16778557, metadata !537, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ls] [line 1341]
!3092 = metadata !{i32 1341, i32 32, metadata !781, null}
!3093 = metadata !{i32 786689, metadata !781, metadata !"indexname", metadata !147, i32 33555773, metadata !248, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [indexname] [line 1341]
!3094 = metadata !{i32 1341, i32 45, metadata !781, null}
!3095 = metadata !{i32 786688, metadata !781, metadata !"fs", metadata !147, i32 1343, metadata !597, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fs] [line 1343]
!3096 = metadata !{i32 1343, i32 14, metadata !781, null}
!3097 = metadata !{i32 1343, i32 3, metadata !781, null}
!3098 = metadata !{i32 786688, metadata !781, metadata !"e", metadata !147, i32 1344, metadata !649, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [e] [line 1344]
!3099 = metadata !{i32 1344, i32 11, metadata !781, null}
!3100 = metadata !{i32 786688, metadata !781, metadata !"nvars", metadata !147, i32 1345, metadata !181, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nvars] [line 1345]
!3101 = metadata !{i32 1345, i32 7, metadata !781, null}
!3102 = metadata !{i32 1345, i32 3, metadata !781, null}
!3103 = metadata !{i32 786688, metadata !781, metadata !"line", metadata !147, i32 1346, metadata !181, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [line] [line 1346]
!3104 = metadata !{i32 1346, i32 7, metadata !781, null}
!3105 = metadata !{i32 786688, metadata !781, metadata !"base", metadata !147, i32 1347, metadata !181, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [base] [line 1347]
!3106 = metadata !{i32 1347, i32 7, metadata !781, null}
!3107 = metadata !{i32 1347, i32 3, metadata !781, null}
!3108 = metadata !{i32 1349, i32 3, metadata !781, null}
!3109 = metadata !{i32 1350, i32 3, metadata !781, null}
!3110 = metadata !{i32 1351, i32 3, metadata !781, null}
!3111 = metadata !{i32 1353, i32 3, metadata !781, null}
!3112 = metadata !{i32 1354, i32 3, metadata !781, null}
!3113 = metadata !{i32 1354, i32 10, metadata !3114, null}
!3114 = metadata !{i32 786443, metadata !146, metadata !781, i32 1354, i32 10, i32 1, i32 318} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!3115 = metadata !{i32 1355, i32 5, metadata !3116, null}
!3116 = metadata !{i32 786443, metadata !146, metadata !781, i32 1354, i32 29, i32 0, i32 194} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!3117 = metadata !{i32 1355, i32 22, metadata !3116, null}
!3118 = metadata !{i32 1356, i32 5, metadata !3116, null}
!3119 = metadata !{i32 1357, i32 3, metadata !3116, null}
!3120 = metadata !{i32 1358, i32 3, metadata !781, null}
!3121 = metadata !{i32 1359, i32 3, metadata !781, null}
!3122 = metadata !{i32 1360, i32 3, metadata !781, null}
!3123 = metadata !{i32 1360, i32 24, metadata !781, null}
!3124 = metadata !{i32 1361, i32 3, metadata !781, null}
!3125 = metadata !{i32 1362, i32 3, metadata !781, null}
!3126 = metadata !{i32 1363, i32 1, metadata !781, null}
!3127 = metadata !{i32 786689, metadata !782, metadata !"ls", metadata !147, i32 16778509, metadata !537, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ls] [line 1293]
!3128 = metadata !{i32 1293, i32 32, metadata !782, null}
!3129 = metadata !{i32 786689, metadata !782, metadata !"base", metadata !147, i32 33555725, metadata !181, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [base] [line 1293]
!3130 = metadata !{i32 1293, i32 40, metadata !782, null}
!3131 = metadata !{i32 786689, metadata !782, metadata !"line", metadata !147, i32 50332941, metadata !181, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [line] [line 1293]
!3132 = metadata !{i32 1293, i32 50, metadata !782, null}
!3133 = metadata !{i32 786689, metadata !782, metadata !"nvars", metadata !147, i32 67110157, metadata !181, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nvars] [line 1293]
!3134 = metadata !{i32 1293, i32 60, metadata !782, null}
!3135 = metadata !{i32 786689, metadata !782, metadata !"isnum", metadata !147, i32 83887373, metadata !181, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [isnum] [line 1293]
!3136 = metadata !{i32 1293, i32 71, metadata !782, null}
!3137 = metadata !{i32 786688, metadata !782, metadata !"bl", metadata !147, i32 1295, metadata !615, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bl] [line 1295]
!3138 = metadata !{i32 1295, i32 12, metadata !782, null}
!3139 = metadata !{i32 786688, metadata !782, metadata !"fs", metadata !147, i32 1296, metadata !597, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fs] [line 1296]
!3140 = metadata !{i32 1296, i32 14, metadata !782, null}
!3141 = metadata !{i32 1296, i32 3, metadata !782, null}
!3142 = metadata !{i32 786688, metadata !782, metadata !"prep", metadata !147, i32 1297, metadata !181, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [prep] [line 1297]
!3143 = metadata !{i32 1297, i32 7, metadata !782, null}
!3144 = metadata !{i32 786688, metadata !782, metadata !"endfor", metadata !147, i32 1297, metadata !181, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [endfor] [line 1297]
!3145 = metadata !{i32 1297, i32 13, metadata !782, null}
!3146 = metadata !{i32 1298, i32 3, metadata !782, null}
!3147 = metadata !{i32 1299, i32 3, metadata !782, null}
!3148 = metadata !{i32 1300, i32 3, metadata !782, null}
!3149 = metadata !{i32 1300, i32 18, metadata !3150, null}
!3150 = metadata !{i32 786443, metadata !146, metadata !782, i32 1300, i32 18, i32 1, i32 319} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!3151 = metadata !{i32 1300, i32 65, metadata !3152, null}
!3152 = metadata !{i32 786443, metadata !146, metadata !782, i32 1300, i32 65, i32 2, i32 320} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!3153 = metadata !{i32 1300, i32 65, metadata !782, null}
!3154 = metadata !{i32 1300, i32 65, metadata !3155, null}
!3155 = metadata !{i32 786443, metadata !146, metadata !3156, i32 1300, i32 65, i32 4, i32 322} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!3156 = metadata !{i32 786443, metadata !146, metadata !782, i32 1300, i32 65, i32 3, i32 321} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!3157 = metadata !{i32 1301, i32 3, metadata !782, null}
!3158 = metadata !{i32 1302, i32 3, metadata !782, null}
!3159 = metadata !{i32 1303, i32 3, metadata !782, null}
!3160 = metadata !{i32 1304, i32 3, metadata !782, null}
!3161 = metadata !{i32 1305, i32 3, metadata !782, null}
!3162 = metadata !{i32 1306, i32 3, metadata !782, null}
!3163 = metadata !{i32 1307, i32 7, metadata !3164, null}
!3164 = metadata !{i32 786443, metadata !146, metadata !782, i32 1307, i32 7, i32 0, i32 195} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!3165 = metadata !{i32 1308, i32 14, metadata !3164, null}
!3166 = metadata !{i32 1310, i32 5, metadata !3167, null}
!3167 = metadata !{i32 786443, metadata !146, metadata !3164, i32 1309, i32 8, i32 0, i32 196} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!3168 = metadata !{i32 1311, i32 5, metadata !3167, null}
!3169 = metadata !{i32 1312, i32 14, metadata !3167, null}
!3170 = metadata !{i32 1314, i32 3, metadata !782, null}
!3171 = metadata !{i32 1315, i32 3, metadata !782, null}
!3172 = metadata !{i32 1316, i32 1, metadata !782, null}
!3173 = metadata !{i32 786689, metadata !786, metadata !"ls", metadata !147, i32 16778498, metadata !537, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ls] [line 1282]
!3174 = metadata !{i32 1282, i32 28, metadata !786, null}
!3175 = metadata !{i32 786688, metadata !786, metadata !"e", metadata !147, i32 1283, metadata !649, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [e] [line 1283]
!3176 = metadata !{i32 1283, i32 11, metadata !786, null}
!3177 = metadata !{i32 786688, metadata !786, metadata !"reg", metadata !147, i32 1284, metadata !181, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [reg] [line 1284]
!3178 = metadata !{i32 1284, i32 7, metadata !786, null}
!3179 = metadata !{i32 1285, i32 3, metadata !786, null}
!3180 = metadata !{i32 1286, i32 3, metadata !786, null}
!3181 = metadata !{i32 1288, i32 3, metadata !786, null}
!3182 = metadata !{i32 1289, i32 3, metadata !786, null}
!3183 = metadata !{i32 786689, metadata !793, metadata !"ls", metadata !147, i32 16778600, metadata !537, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ls] [line 1384]
!3184 = metadata !{i32 1384, i32 40, metadata !793, null}
!3185 = metadata !{i32 786689, metadata !793, metadata !"escapelist", metadata !147, i32 33555816, metadata !455, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [escapelist] [line 1384]
!3186 = metadata !{i32 1384, i32 49, metadata !793, null}
!3187 = metadata !{i32 786688, metadata !793, metadata !"bl", metadata !147, i32 1386, metadata !615, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bl] [line 1386]
!3188 = metadata !{i32 1386, i32 12, metadata !793, null}
!3189 = metadata !{i32 786688, metadata !793, metadata !"fs", metadata !147, i32 1387, metadata !597, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fs] [line 1387]
!3190 = metadata !{i32 1387, i32 14, metadata !793, null}
!3191 = metadata !{i32 1387, i32 3, metadata !793, null}
!3192 = metadata !{i32 786688, metadata !793, metadata !"v", metadata !147, i32 1388, metadata !649, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [v] [line 1388]
!3193 = metadata !{i32 1388, i32 11, metadata !793, null}
!3194 = metadata !{i32 786688, metadata !793, metadata !"jf", metadata !147, i32 1389, metadata !181, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jf] [line 1389]
!3195 = metadata !{i32 1389, i32 7, metadata !793, null}
!3196 = metadata !{i32 1390, i32 3, metadata !793, null}
!3197 = metadata !{i32 1391, i32 3, metadata !793, null}
!3198 = metadata !{i32 1392, i32 3, metadata !793, null}
!3199 = metadata !{i32 1393, i32 7, metadata !3200, null}
!3200 = metadata !{i32 786443, metadata !146, metadata !793, i32 1393, i32 7, i32 0, i32 204} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!3201 = metadata !{i32 1393, i32 7, metadata !3202, null}
!3202 = metadata !{i32 786443, metadata !146, metadata !3200, i32 1393, i32 7, i32 1, i32 323} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!3203 = metadata !{i32 1394, i32 5, metadata !3204, null}
!3204 = metadata !{i32 786443, metadata !146, metadata !3200, i32 1393, i32 58, i32 0, i32 205} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!3205 = metadata !{i32 1395, i32 5, metadata !3204, null}
!3206 = metadata !{i32 1396, i32 5, metadata !3204, null}
!3207 = metadata !{i32 1397, i32 5, metadata !3204, null}
!3208 = metadata !{i32 1398, i32 9, metadata !3209, null}
!3209 = metadata !{i32 786443, metadata !146, metadata !3204, i32 1398, i32 9, i32 0, i32 206} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!3210 = metadata !{i32 1399, i32 7, metadata !3211, null}
!3211 = metadata !{i32 786443, metadata !146, metadata !3209, i32 1398, i32 30, i32 0, i32 207} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!3212 = metadata !{i32 1400, i32 7, metadata !3211, null}
!3213 = metadata !{i32 1403, i32 12, metadata !3209, null}
!3214 = metadata !{i32 1404, i32 3, metadata !3204, null}
!3215 = metadata !{i32 1406, i32 5, metadata !3216, null}
!3216 = metadata !{i32 786443, metadata !146, metadata !3200, i32 1405, i32 8, i32 0, i32 208} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!3217 = metadata !{i32 1407, i32 5, metadata !3216, null}
!3218 = metadata !{i32 1408, i32 5, metadata !3216, null}
!3219 = metadata !{i32 1410, i32 3, metadata !793, null}
!3220 = metadata !{i32 1411, i32 3, metadata !793, null}
!3221 = metadata !{i32 1412, i32 7, metadata !3222, null}
!3222 = metadata !{i32 786443, metadata !146, metadata !793, i32 1412, i32 7, i32 0, i32 209} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!3223 = metadata !{i32 1412, i32 7, metadata !3224, null}
!3224 = metadata !{i32 786443, metadata !146, metadata !3222, i32 1412, i32 7, i32 1, i32 324} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
!3225 = metadata !{i32 1414, i32 5, metadata !3222, null}
!3226 = metadata !{i32 1414, i32 33, metadata !3222, null}
!3227 = metadata !{i32 1415, i32 3, metadata !793, null}
!3228 = metadata !{i32 1416, i32 1, metadata !793, null}
!3229 = metadata !{i32 1416, i32 1, metadata !3230, null}
!3230 = metadata !{i32 786443, metadata !146, metadata !793, i32 1416, i32 1, i32 1, i32 325} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lparser.c]
