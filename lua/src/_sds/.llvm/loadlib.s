; ModuleID = 'C:/Users/DevolutionX/workspace/lua/src/loadlib.c'
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-n32-S64"
target triple = "armv7--linux-gnueabihf"

%struct.luaL_Reg = type { i8*, i32 (%struct.lua_State*)* }
%struct.lua_State = type opaque
%struct.luaL_Buffer = type { i8*, i32, i32, %struct.lua_State*, [8192 x i8] }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i32, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i32, i32, [40 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@pk_funcs = internal constant [8 x %struct.luaL_Reg] [%struct.luaL_Reg { i8* getelementptr inbounds ([8 x i8]* @.str36, i32 0, i32 0), i32 (%struct.lua_State*)* @ll_loadlib }, %struct.luaL_Reg { i8* getelementptr inbounds ([11 x i8]* @.str37, i32 0, i32 0), i32 (%struct.lua_State*)* @ll_searchpath }, %struct.luaL_Reg { i8* getelementptr inbounds ([8 x i8]* @.str13, i32 0, i32 0), i32 (%struct.lua_State*)* null }, %struct.luaL_Reg { i8* getelementptr inbounds ([6 x i8]* @.str4, i32 0, i32 0), i32 (%struct.lua_State*)* null }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8]* @.str, i32 0, i32 0), i32 (%struct.lua_State*)* null }, %struct.luaL_Reg { i8* getelementptr inbounds ([10 x i8]* @.str15, i32 0, i32 0), i32 (%struct.lua_State*)* null }, %struct.luaL_Reg { i8* getelementptr inbounds ([7 x i8]* @.str11, i32 0, i32 0), i32 (%struct.lua_State*)* null }, %struct.luaL_Reg zeroinitializer], align 4
@.str = private unnamed_addr constant [5 x i8] c"path\00", align 1
@.str1 = private unnamed_addr constant [13 x i8] c"LUA_PATH_5_3\00", align 1
@.str2 = private unnamed_addr constant [9 x i8] c"LUA_PATH\00", align 1
@.str3 = private unnamed_addr constant [151 x i8] c"/usr/local/share/lua/5.3/?.lua;/usr/local/share/lua/5.3/?/init.lua;/usr/local/lib/lua/5.3/?.lua;/usr/local/lib/lua/5.3/?/init.lua;./?.lua;./?/init.lua\00", align 1
@.str4 = private unnamed_addr constant [6 x i8] c"cpath\00", align 1
@.str5 = private unnamed_addr constant [14 x i8] c"LUA_CPATH_5_3\00", align 1
@.str6 = private unnamed_addr constant [10 x i8] c"LUA_CPATH\00", align 1
@.str7 = private unnamed_addr constant [69 x i8] c"/usr/local/lib/lua/5.3/?.so;/usr/local/lib/lua/5.3/loadall.so;./?.so\00", align 1
@.str8 = private unnamed_addr constant [11 x i8] c"/\0A;\0A?\0A!\0A-\0A\00", align 1
@.str9 = private unnamed_addr constant [7 x i8] c"config\00", align 1
@.str10 = private unnamed_addr constant [8 x i8] c"_LOADED\00", align 1
@.str11 = private unnamed_addr constant [7 x i8] c"loaded\00", align 1
@.str12 = private unnamed_addr constant [9 x i8] c"_PRELOAD\00", align 1
@.str13 = private unnamed_addr constant [8 x i8] c"preload\00", align 1
@ll_funcs = internal constant [2 x %struct.luaL_Reg] [%struct.luaL_Reg { i8* getelementptr inbounds ([8 x i8]* @.str14, i32 0, i32 0), i32 (%struct.lua_State*)* @ll_require }, %struct.luaL_Reg zeroinitializer], align 4
@.str14 = private unnamed_addr constant [8 x i8] c"require\00", align 1
@.str15 = private unnamed_addr constant [10 x i8] c"searchers\00", align 1
@.str16 = private unnamed_addr constant [36 x i8] c"'package.searchers' must be a table\00", align 1
@.str17 = private unnamed_addr constant [25 x i8] c"module '%s' not found:%s\00", align 1
@.str18 = private unnamed_addr constant [3 x i8] c";;\00", align 1
@.str19 = private unnamed_addr constant [4 x i8] c";\01;\00", align 1
@.str20 = private unnamed_addr constant [2 x i8] c"\01\00", align 1
@.str21 = private unnamed_addr constant [10 x i8] c"LUA_NOENV\00", align 1
@createsearcherstable.searchers = internal constant [5 x i32 (%struct.lua_State*)*] [i32 (%struct.lua_State*)* @searcher_preload, i32 (%struct.lua_State*)* @searcher_Lua, i32 (%struct.lua_State*)* @searcher_C, i32 (%struct.lua_State*)* @searcher_Croot, i32 (%struct.lua_State*)* null], align 4
@.str22 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str23 = private unnamed_addr constant [30 x i8] c"\0A\09no module '%s' in file '%s'\00", align 1
@.str24 = private unnamed_addr constant [46 x i8] c"error loading module '%s' from file '%s':\0A\09%s\00", align 1
@.str25 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str26 = private unnamed_addr constant [2 x i8] c"_\00", align 1
@.str27 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str28 = private unnamed_addr constant [11 x i8] c"luaopen_%s\00", align 1
@.str29 = private unnamed_addr constant [59 x i8] c"dynamic libraries not enabled; check your Lua installation\00", align 1
@CLIBS = internal constant i32 0, align 4
@.str30 = private unnamed_addr constant [30 x i8] c"'package.%s' must be a string\00", align 1
@.str31 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str32 = private unnamed_addr constant [15 x i8] c"\0A\09no file '%s'\00", align 1
@.str33 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str34 = private unnamed_addr constant [2 x i8] c";\00", align 1
@.str35 = private unnamed_addr constant [33 x i8] c"\0A\09no field package.preload['%s']\00", align 1
@.str36 = private unnamed_addr constant [8 x i8] c"loadlib\00", align 1
@.str37 = private unnamed_addr constant [11 x i8] c"searchpath\00", align 1
@.str38 = private unnamed_addr constant [7 x i8] c"absent\00", align 1
@.str39 = private unnamed_addr constant [5 x i8] c"init\00", align 1
@.str40 = private unnamed_addr constant [5 x i8] c"__gc\00", align 1

; Function Attrs: nounwind
define i32 @luaopen_package(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !283), !dbg !284
  %2 = load %struct.lua_State** %1, align 4, !dbg !285
  call void @createclibstable(%struct.lua_State* %2), !dbg !285
  %3 = load %struct.lua_State** %1, align 4, !dbg !286
  call void @luaL_checkversion_(%struct.lua_State* %3, double 5.030000e+02, i32 136), !dbg !286
  %4 = load %struct.lua_State** %1, align 4, !dbg !286
  call void @lua_createtable(%struct.lua_State* %4, i32 0, i32 7), !dbg !286
  %5 = load %struct.lua_State** %1, align 4, !dbg !286
  call void @luaL_setfuncs(%struct.lua_State* %5, %struct.luaL_Reg* getelementptr inbounds ([8 x %struct.luaL_Reg]* @pk_funcs, i32 0, i32 0), i32 0), !dbg !286
  %6 = load %struct.lua_State** %1, align 4, !dbg !287
  call void @createsearcherstable(%struct.lua_State* %6), !dbg !287
  %7 = load %struct.lua_State** %1, align 4, !dbg !288
  call void @setpath(%struct.lua_State* %7, i8* getelementptr inbounds ([5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @.str2, i32 0, i32 0), i8* getelementptr inbounds ([151 x i8]* @.str3, i32 0, i32 0)), !dbg !288
  %8 = load %struct.lua_State** %1, align 4, !dbg !289
  call void @setpath(%struct.lua_State* %8, i8* getelementptr inbounds ([6 x i8]* @.str4, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @.str5, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @.str6, i32 0, i32 0), i8* getelementptr inbounds ([69 x i8]* @.str7, i32 0, i32 0)), !dbg !289
  %9 = load %struct.lua_State** %1, align 4, !dbg !290
  %10 = call i8* @lua_pushstring(%struct.lua_State* %9, i8* getelementptr inbounds ([11 x i8]* @.str8, i32 0, i32 0)), !dbg !290
  %11 = load %struct.lua_State** %1, align 4, !dbg !291
  call void @lua_setfield(%struct.lua_State* %11, i32 -2, i8* getelementptr inbounds ([7 x i8]* @.str9, i32 0, i32 0)), !dbg !291
  %12 = load %struct.lua_State** %1, align 4, !dbg !292
  %13 = call i32 @luaL_getsubtable(%struct.lua_State* %12, i32 -1001000, i8* getelementptr inbounds ([8 x i8]* @.str10, i32 0, i32 0)), !dbg !292
  %14 = load %struct.lua_State** %1, align 4, !dbg !293
  call void @lua_setfield(%struct.lua_State* %14, i32 -2, i8* getelementptr inbounds ([7 x i8]* @.str11, i32 0, i32 0)), !dbg !293
  %15 = load %struct.lua_State** %1, align 4, !dbg !294
  %16 = call i32 @luaL_getsubtable(%struct.lua_State* %15, i32 -1001000, i8* getelementptr inbounds ([9 x i8]* @.str12, i32 0, i32 0)), !dbg !294
  %17 = load %struct.lua_State** %1, align 4, !dbg !295
  call void @lua_setfield(%struct.lua_State* %17, i32 -2, i8* getelementptr inbounds ([8 x i8]* @.str13, i32 0, i32 0)), !dbg !295
  %18 = load %struct.lua_State** %1, align 4, !dbg !296
  %19 = call i32 @lua_rawgeti(%struct.lua_State* %18, i32 -1001000, i64 2), !dbg !296
  %20 = load %struct.lua_State** %1, align 4, !dbg !297
  call void @lua_pushvalue(%struct.lua_State* %20, i32 -2), !dbg !297
  %21 = load %struct.lua_State** %1, align 4, !dbg !298
  call void @luaL_setfuncs(%struct.lua_State* %21, %struct.luaL_Reg* getelementptr inbounds ([2 x %struct.luaL_Reg]* @ll_funcs, i32 0, i32 0), i32 1), !dbg !298
  %22 = load %struct.lua_State** %1, align 4, !dbg !299
  call void @lua_settop(%struct.lua_State* %22, i32 -2), !dbg !299
  ret i32 1, !dbg !300
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind
define internal void @createclibstable(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !301), !dbg !302
  %2 = load %struct.lua_State** %1, align 4, !dbg !303
  call void @lua_createtable(%struct.lua_State* %2, i32 0, i32 0), !dbg !303
  %3 = load %struct.lua_State** %1, align 4, !dbg !304
  call void @lua_createtable(%struct.lua_State* %3, i32 0, i32 1), !dbg !304
  %4 = load %struct.lua_State** %1, align 4, !dbg !305
  call void @lua_pushcclosure(%struct.lua_State* %4, i32 (%struct.lua_State*)* @gctm, i32 0), !dbg !305
  %5 = load %struct.lua_State** %1, align 4, !dbg !306
  call void @lua_setfield(%struct.lua_State* %5, i32 -2, i8* getelementptr inbounds ([5 x i8]* @.str40, i32 0, i32 0)), !dbg !306
  %6 = load %struct.lua_State** %1, align 4, !dbg !307
  %7 = call i32 @lua_setmetatable(%struct.lua_State* %6, i32 -2), !dbg !307
  %8 = load %struct.lua_State** %1, align 4, !dbg !308
  call void @lua_rawsetp(%struct.lua_State* %8, i32 -1001000, i8* bitcast (i32* @CLIBS to i8*)), !dbg !308
  ret void, !dbg !309
}

declare void @luaL_checkversion_(%struct.lua_State*, double, i32) #2

declare void @lua_createtable(%struct.lua_State*, i32, i32) #2

declare void @luaL_setfuncs(%struct.lua_State*, %struct.luaL_Reg*, i32) #2

; Function Attrs: nounwind
define internal void @createsearcherstable(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %i = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !310), !dbg !311
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !312), !dbg !313
  %2 = load %struct.lua_State** %1, align 4, !dbg !314
  call void @lua_createtable(%struct.lua_State* %2, i32 4, i32 0), !dbg !314
  store i32 0, i32* %i, align 4, !dbg !315
  br label %3, !dbg !315

; <label>:3                                       ; preds = %18, %0
  %4 = load i32* %i, align 4, !dbg !317
  %5 = getelementptr inbounds [5 x i32 (%struct.lua_State*)*]* @createsearcherstable.searchers, i32 0, i32 %4, !dbg !317
  %6 = load i32 (%struct.lua_State*)** %5, align 4, !dbg !317
  %7 = icmp ne i32 (%struct.lua_State*)* %6, null, !dbg !317
  br i1 %7, label %8, label %21, !dbg !317

; <label>:8                                       ; preds = %3
  %9 = load %struct.lua_State** %1, align 4, !dbg !320
  call void @lua_pushvalue(%struct.lua_State* %9, i32 -2), !dbg !320
  %10 = load %struct.lua_State** %1, align 4, !dbg !322
  %11 = load i32* %i, align 4, !dbg !322
  %12 = getelementptr inbounds [5 x i32 (%struct.lua_State*)*]* @createsearcherstable.searchers, i32 0, i32 %11, !dbg !322
  %13 = load i32 (%struct.lua_State*)** %12, align 4, !dbg !322
  call void @lua_pushcclosure(%struct.lua_State* %10, i32 (%struct.lua_State*)* %13, i32 1), !dbg !322
  %14 = load %struct.lua_State** %1, align 4, !dbg !323
  %15 = load i32* %i, align 4, !dbg !323
  %16 = add nsw i32 %15, 1, !dbg !323
  %17 = sext i32 %16 to i64, !dbg !323
  call void @lua_rawseti(%struct.lua_State* %14, i32 -2, i64 %17), !dbg !323
  br label %18, !dbg !324

; <label>:18                                      ; preds = %8
  %19 = load i32* %i, align 4, !dbg !325
  %20 = add nsw i32 %19, 1, !dbg !325
  store i32 %20, i32* %i, align 4, !dbg !325
  br label %3, !dbg !325

; <label>:21                                      ; preds = %3
  %22 = load %struct.lua_State** %1, align 4, !dbg !326
  call void @lua_setfield(%struct.lua_State* %22, i32 -2, i8* getelementptr inbounds ([10 x i8]* @.str15, i32 0, i32 0)), !dbg !326
  ret void, !dbg !327
}

; Function Attrs: nounwind
define internal void @setpath(%struct.lua_State* %L, i8* %fieldname, i8* %envname1, i8* %envname2, i8* %def) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca i8*, align 4
  %3 = alloca i8*, align 4
  %4 = alloca i8*, align 4
  %5 = alloca i8*, align 4
  %path = alloca i8*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !328), !dbg !329
  store i8* %fieldname, i8** %2, align 4
  call void @llvm.dbg.declare(metadata !{i8** %2}, metadata !330), !dbg !331
  store i8* %envname1, i8** %3, align 4
  call void @llvm.dbg.declare(metadata !{i8** %3}, metadata !332), !dbg !333
  store i8* %envname2, i8** %4, align 4
  call void @llvm.dbg.declare(metadata !{i8** %4}, metadata !334), !dbg !335
  store i8* %def, i8** %5, align 4
  call void @llvm.dbg.declare(metadata !{i8** %5}, metadata !336), !dbg !337
  call void @llvm.dbg.declare(metadata !{i8** %path}, metadata !338), !dbg !339
  %6 = load i8** %3, align 4, !dbg !340
  %7 = call i8* @getenv(i8* %6) #4, !dbg !340
  store i8* %7, i8** %path, align 4, !dbg !340
  %8 = load i8** %path, align 4, !dbg !341
  %9 = icmp eq i8* %8, null, !dbg !341
  br i1 %9, label %10, label %13, !dbg !341

; <label>:10                                      ; preds = %0
  %11 = load i8** %4, align 4, !dbg !343
  %12 = call i8* @getenv(i8* %11) #4, !dbg !343
  store i8* %12, i8** %path, align 4, !dbg !343
  br label %13, !dbg !343

; <label>:13                                      ; preds = %10, %0
  %14 = load i8** %path, align 4, !dbg !344
  %15 = icmp eq i8* %14, null, !dbg !344
  br i1 %15, label %20, label %16, !dbg !344

; <label>:16                                      ; preds = %13
  %17 = load %struct.lua_State** %1, align 4, !dbg !346
  %18 = call i32 @noenv(%struct.lua_State* %17), !dbg !346
  %19 = icmp ne i32 %18, 0, !dbg !346
  br i1 %19, label %20, label %24, !dbg !346

; <label>:20                                      ; preds = %16, %13
  %21 = load %struct.lua_State** %1, align 4, !dbg !348
  %22 = load i8** %5, align 4, !dbg !348
  %23 = call i8* @lua_pushstring(%struct.lua_State* %21, i8* %22), !dbg !348
  br label %34, !dbg !348

; <label>:24                                      ; preds = %16
  %25 = load %struct.lua_State** %1, align 4, !dbg !349
  %26 = load i8** %path, align 4, !dbg !349
  %27 = call i8* @luaL_gsub(%struct.lua_State* %25, i8* %26, i8* getelementptr inbounds ([3 x i8]* @.str18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str19, i32 0, i32 0)), !dbg !349
  store i8* %27, i8** %path, align 4, !dbg !349
  %28 = load %struct.lua_State** %1, align 4, !dbg !351
  %29 = load i8** %path, align 4, !dbg !351
  %30 = load i8** %5, align 4, !dbg !351
  %31 = call i8* @luaL_gsub(%struct.lua_State* %28, i8* %29, i8* getelementptr inbounds ([2 x i8]* @.str20, i32 0, i32 0), i8* %30), !dbg !351
  %32 = load %struct.lua_State** %1, align 4, !dbg !352
  call void @lua_rotate(%struct.lua_State* %32, i32 -2, i32 -1), !dbg !352
  %33 = load %struct.lua_State** %1, align 4, !dbg !352
  call void @lua_settop(%struct.lua_State* %33, i32 -2), !dbg !352
  br label %34

; <label>:34                                      ; preds = %24, %20
  %35 = load %struct.lua_State** %1, align 4, !dbg !353
  %36 = load i8** %2, align 4, !dbg !353
  call void @lua_setfield(%struct.lua_State* %35, i32 -2, i8* %36), !dbg !353
  ret void, !dbg !354
}

declare i8* @lua_pushstring(%struct.lua_State*, i8*) #2

declare void @lua_setfield(%struct.lua_State*, i32, i8*) #2

declare i32 @luaL_getsubtable(%struct.lua_State*, i32, i8*) #2

declare i32 @lua_rawgeti(%struct.lua_State*, i32, i64) #2

declare void @lua_pushvalue(%struct.lua_State*, i32) #2

declare void @lua_settop(%struct.lua_State*, i32) #2

; Function Attrs: nounwind
define internal i32 @ll_require(%struct.lua_State* %L) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.lua_State*, align 4
  %name = alloca i8*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %2}, metadata !355), !dbg !356
  call void @llvm.dbg.declare(metadata !{i8** %name}, metadata !357), !dbg !358
  %3 = load %struct.lua_State** %2, align 4, !dbg !359
  %4 = call i8* @luaL_checklstring(%struct.lua_State* %3, i32 1, i32* null), !dbg !359
  store i8* %4, i8** %name, align 4, !dbg !359
  %5 = load %struct.lua_State** %2, align 4, !dbg !360
  call void @lua_settop(%struct.lua_State* %5, i32 1), !dbg !360
  %6 = load %struct.lua_State** %2, align 4, !dbg !361
  %7 = call i32 @lua_getfield(%struct.lua_State* %6, i32 -1001000, i8* getelementptr inbounds ([8 x i8]* @.str10, i32 0, i32 0)), !dbg !361
  %8 = load %struct.lua_State** %2, align 4, !dbg !362
  %9 = load i8** %name, align 4, !dbg !362
  %10 = call i32 @lua_getfield(%struct.lua_State* %8, i32 2, i8* %9), !dbg !362
  %11 = load %struct.lua_State** %2, align 4, !dbg !363
  %12 = call i32 @lua_toboolean(%struct.lua_State* %11, i32 -1), !dbg !363
  %13 = icmp ne i32 %12, 0, !dbg !363
  br i1 %13, label %14, label %15, !dbg !363

; <label>:14                                      ; preds = %0
  store i32 1, i32* %1, !dbg !365
  br label %41, !dbg !365

; <label>:15                                      ; preds = %0
  %16 = load %struct.lua_State** %2, align 4, !dbg !366
  call void @lua_settop(%struct.lua_State* %16, i32 -2), !dbg !366
  %17 = load %struct.lua_State** %2, align 4, !dbg !367
  %18 = load i8** %name, align 4, !dbg !367
  call void @findloader(%struct.lua_State* %17, i8* %18), !dbg !367
  %19 = load %struct.lua_State** %2, align 4, !dbg !368
  %20 = load i8** %name, align 4, !dbg !368
  %21 = call i8* @lua_pushstring(%struct.lua_State* %19, i8* %20), !dbg !368
  %22 = load %struct.lua_State** %2, align 4, !dbg !369
  call void @lua_rotate(%struct.lua_State* %22, i32 -2, i32 1), !dbg !369
  %23 = load %struct.lua_State** %2, align 4, !dbg !370
  call void @lua_callk(%struct.lua_State* %23, i32 2, i32 1, i32 0, i32 (%struct.lua_State*, i32, i32)* null), !dbg !370
  %24 = load %struct.lua_State** %2, align 4, !dbg !371
  %25 = call i32 @lua_type(%struct.lua_State* %24, i32 -1), !dbg !371
  %26 = icmp eq i32 %25, 0, !dbg !371
  br i1 %26, label %30, label %27, !dbg !371

; <label>:27                                      ; preds = %15
  %28 = load %struct.lua_State** %2, align 4, !dbg !373
  %29 = load i8** %name, align 4, !dbg !373
  call void @lua_setfield(%struct.lua_State* %28, i32 2, i8* %29), !dbg !373
  br label %30, !dbg !373

; <label>:30                                      ; preds = %27, %15
  %31 = load %struct.lua_State** %2, align 4, !dbg !374
  %32 = load i8** %name, align 4, !dbg !374
  %33 = call i32 @lua_getfield(%struct.lua_State* %31, i32 2, i8* %32), !dbg !374
  %34 = icmp eq i32 %33, 0, !dbg !374
  br i1 %34, label %35, label %40, !dbg !374

; <label>:35                                      ; preds = %30
  %36 = load %struct.lua_State** %2, align 4, !dbg !376
  call void @lua_pushboolean(%struct.lua_State* %36, i32 1), !dbg !376
  %37 = load %struct.lua_State** %2, align 4, !dbg !378
  call void @lua_pushvalue(%struct.lua_State* %37, i32 -1), !dbg !378
  %38 = load %struct.lua_State** %2, align 4, !dbg !379
  %39 = load i8** %name, align 4, !dbg !379
  call void @lua_setfield(%struct.lua_State* %38, i32 2, i8* %39), !dbg !379
  br label %40, !dbg !380

; <label>:40                                      ; preds = %35, %30
  store i32 1, i32* %1, !dbg !381
  br label %41, !dbg !381

; <label>:41                                      ; preds = %40, %14
  %42 = load i32* %1, !dbg !382
  ret i32 %42, !dbg !382
}

declare i8* @luaL_checklstring(%struct.lua_State*, i32, i32*) #2

declare i32 @lua_getfield(%struct.lua_State*, i32, i8*) #2

declare i32 @lua_toboolean(%struct.lua_State*, i32) #2

; Function Attrs: nounwind
define internal void @findloader(%struct.lua_State* %L, i8* %name) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca i8*, align 4
  %i = alloca i32, align 4
  %msg = alloca %struct.luaL_Buffer, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !383), !dbg !384
  store i8* %name, i8** %2, align 4
  call void @llvm.dbg.declare(metadata !{i8** %2}, metadata !385), !dbg !386
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !387), !dbg !388
  call void @llvm.dbg.declare(metadata !{%struct.luaL_Buffer* %msg}, metadata !389), !dbg !405
  %3 = load %struct.lua_State** %1, align 4, !dbg !406
  call void @luaL_buffinit(%struct.lua_State* %3, %struct.luaL_Buffer* %msg), !dbg !406
  %4 = load %struct.lua_State** %1, align 4, !dbg !407
  %5 = call i32 @lua_getfield(%struct.lua_State* %4, i32 -1001001, i8* getelementptr inbounds ([10 x i8]* @.str15, i32 0, i32 0)), !dbg !407
  %6 = icmp ne i32 %5, 5, !dbg !407
  br i1 %6, label %7, label %10, !dbg !407

; <label>:7                                       ; preds = %0
  %8 = load %struct.lua_State** %1, align 4, !dbg !409
  %9 = call i32 (%struct.lua_State*, i8*, ...)* @luaL_error(%struct.lua_State* %8, i8* getelementptr inbounds ([36 x i8]* @.str16, i32 0, i32 0)), !dbg !409
  br label %10, !dbg !409

; <label>:10                                      ; preds = %7, %0
  store i32 1, i32* %i, align 4, !dbg !410
  br label %11, !dbg !410

; <label>:11                                      ; preds = %43, %10
  %12 = load %struct.lua_State** %1, align 4, !dbg !412
  %13 = load i32* %i, align 4, !dbg !412
  %14 = sext i32 %13 to i64, !dbg !412
  %15 = call i32 @lua_rawgeti(%struct.lua_State* %12, i32 3, i64 %14), !dbg !412
  %16 = icmp eq i32 %15, 0, !dbg !412
  br i1 %16, label %17, label %24, !dbg !412

; <label>:17                                      ; preds = %11
  %18 = load %struct.lua_State** %1, align 4, !dbg !415
  call void @lua_settop(%struct.lua_State* %18, i32 -2), !dbg !415
  call void @luaL_pushresult(%struct.luaL_Buffer* %msg), !dbg !417
  %19 = load %struct.lua_State** %1, align 4, !dbg !418
  %20 = load i8** %2, align 4, !dbg !418
  %21 = load %struct.lua_State** %1, align 4, !dbg !419
  %22 = call i8* @lua_tolstring(%struct.lua_State* %21, i32 -1, i32* null), !dbg !419
  %23 = call i32 (%struct.lua_State*, i8*, ...)* @luaL_error(%struct.lua_State* %19, i8* getelementptr inbounds ([25 x i8]* @.str17, i32 0, i32 0), i8* %20, i8* %22), !dbg !418
  br label %24, !dbg !420

; <label>:24                                      ; preds = %17, %11
  %25 = load %struct.lua_State** %1, align 4, !dbg !421
  %26 = load i8** %2, align 4, !dbg !421
  %27 = call i8* @lua_pushstring(%struct.lua_State* %25, i8* %26), !dbg !421
  %28 = load %struct.lua_State** %1, align 4, !dbg !422
  call void @lua_callk(%struct.lua_State* %28, i32 1, i32 2, i32 0, i32 (%struct.lua_State*, i32, i32)* null), !dbg !422
  %29 = load %struct.lua_State** %1, align 4, !dbg !423
  %30 = call i32 @lua_type(%struct.lua_State* %29, i32 -2), !dbg !423
  %31 = icmp eq i32 %30, 6, !dbg !423
  br i1 %31, label %32, label %33, !dbg !423

; <label>:32                                      ; preds = %24
  ret void, !dbg !425

; <label>:33                                      ; preds = %24
  %34 = load %struct.lua_State** %1, align 4, !dbg !426
  %35 = call i32 @lua_isstring(%struct.lua_State* %34, i32 -2), !dbg !426
  %36 = icmp ne i32 %35, 0, !dbg !426
  br i1 %36, label %37, label %39, !dbg !426

; <label>:37                                      ; preds = %33
  %38 = load %struct.lua_State** %1, align 4, !dbg !428
  call void @lua_settop(%struct.lua_State* %38, i32 -2), !dbg !428
  call void @luaL_addvalue(%struct.luaL_Buffer* %msg), !dbg !430
  br label %41, !dbg !431

; <label>:39                                      ; preds = %33
  %40 = load %struct.lua_State** %1, align 4, !dbg !432
  call void @lua_settop(%struct.lua_State* %40, i32 -3), !dbg !432
  br label %41

; <label>:41                                      ; preds = %39, %37
  br label %42

; <label>:42                                      ; preds = %41
  br label %43, !dbg !433

; <label>:43                                      ; preds = %42
  %44 = load i32* %i, align 4, !dbg !434
  %45 = add nsw i32 %44, 1, !dbg !434
  store i32 %45, i32* %i, align 4, !dbg !434
  br label %11, !dbg !434
}

declare void @lua_rotate(%struct.lua_State*, i32, i32) #2

declare void @lua_callk(%struct.lua_State*, i32, i32, i32, i32 (%struct.lua_State*, i32, i32)*) #2

declare i32 @lua_type(%struct.lua_State*, i32) #2

declare void @lua_pushboolean(%struct.lua_State*, i32) #2

declare void @luaL_buffinit(%struct.lua_State*, %struct.luaL_Buffer*) #2

declare i32 @luaL_error(%struct.lua_State*, i8*, ...) #2

declare void @luaL_pushresult(%struct.luaL_Buffer*) #2

declare i8* @lua_tolstring(%struct.lua_State*, i32, i32*) #2

declare i32 @lua_isstring(%struct.lua_State*, i32) #2

declare void @luaL_addvalue(%struct.luaL_Buffer*) #2

; Function Attrs: nounwind
declare i8* @getenv(i8*) #0

; Function Attrs: nounwind
define internal i32 @noenv(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %b = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !435), !dbg !436
  call void @llvm.dbg.declare(metadata !{i32* %b}, metadata !437), !dbg !438
  %2 = load %struct.lua_State** %1, align 4, !dbg !439
  %3 = call i32 @lua_getfield(%struct.lua_State* %2, i32 -1001000, i8* getelementptr inbounds ([10 x i8]* @.str21, i32 0, i32 0)), !dbg !439
  %4 = load %struct.lua_State** %1, align 4, !dbg !440
  %5 = call i32 @lua_toboolean(%struct.lua_State* %4, i32 -1), !dbg !440
  store i32 %5, i32* %b, align 4, !dbg !440
  %6 = load %struct.lua_State** %1, align 4, !dbg !441
  call void @lua_settop(%struct.lua_State* %6, i32 -2), !dbg !441
  %7 = load i32* %b, align 4, !dbg !442
  ret i32 %7, !dbg !442
}

declare i8* @luaL_gsub(%struct.lua_State*, i8*, i8*, i8*) #2

; Function Attrs: nounwind
define internal i32 @searcher_preload(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %name = alloca i8*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !443), !dbg !444
  call void @llvm.dbg.declare(metadata !{i8** %name}, metadata !445), !dbg !446
  %2 = load %struct.lua_State** %1, align 4, !dbg !447
  %3 = call i8* @luaL_checklstring(%struct.lua_State* %2, i32 1, i32* null), !dbg !447
  store i8* %3, i8** %name, align 4, !dbg !447
  %4 = load %struct.lua_State** %1, align 4, !dbg !448
  %5 = call i32 @lua_getfield(%struct.lua_State* %4, i32 -1001000, i8* getelementptr inbounds ([9 x i8]* @.str12, i32 0, i32 0)), !dbg !448
  %6 = load %struct.lua_State** %1, align 4, !dbg !449
  %7 = load i8** %name, align 4, !dbg !449
  %8 = call i32 @lua_getfield(%struct.lua_State* %6, i32 -1, i8* %7), !dbg !449
  %9 = icmp eq i32 %8, 0, !dbg !449
  br i1 %9, label %10, label %14, !dbg !449

; <label>:10                                      ; preds = %0
  %11 = load %struct.lua_State** %1, align 4, !dbg !451
  %12 = load i8** %name, align 4, !dbg !451
  %13 = call i8* (%struct.lua_State*, i8*, ...)* @lua_pushfstring(%struct.lua_State* %11, i8* getelementptr inbounds ([33 x i8]* @.str35, i32 0, i32 0), i8* %12), !dbg !451
  br label %14, !dbg !451

; <label>:14                                      ; preds = %10, %0
  ret i32 1, !dbg !452
}

; Function Attrs: nounwind
define internal i32 @searcher_Lua(%struct.lua_State* %L) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.lua_State*, align 4
  %filename = alloca i8*, align 4
  %name = alloca i8*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %2}, metadata !453), !dbg !454
  call void @llvm.dbg.declare(metadata !{i8** %filename}, metadata !455), !dbg !456
  call void @llvm.dbg.declare(metadata !{i8** %name}, metadata !457), !dbg !458
  %3 = load %struct.lua_State** %2, align 4, !dbg !459
  %4 = call i8* @luaL_checklstring(%struct.lua_State* %3, i32 1, i32* null), !dbg !459
  store i8* %4, i8** %name, align 4, !dbg !459
  %5 = load %struct.lua_State** %2, align 4, !dbg !460
  %6 = load i8** %name, align 4, !dbg !460
  %7 = call i8* @findfile(%struct.lua_State* %5, i8* %6, i8* getelementptr inbounds ([5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str22, i32 0, i32 0)), !dbg !460
  store i8* %7, i8** %filename, align 4, !dbg !460
  %8 = load i8** %filename, align 4, !dbg !461
  %9 = icmp eq i8* %8, null, !dbg !461
  br i1 %9, label %10, label %11, !dbg !461

; <label>:10                                      ; preds = %0
  store i32 1, i32* %1, !dbg !463
  br label %20, !dbg !463

; <label>:11                                      ; preds = %0
  %12 = load %struct.lua_State** %2, align 4, !dbg !465
  %13 = load %struct.lua_State** %2, align 4, !dbg !466
  %14 = load i8** %filename, align 4, !dbg !466
  %15 = call i32 @luaL_loadfilex(%struct.lua_State* %13, i8* %14, i8* null), !dbg !466
  %16 = icmp eq i32 %15, 0, !dbg !466
  %17 = zext i1 %16 to i32, !dbg !466
  %18 = load i8** %filename, align 4, !dbg !465
  %19 = call i32 @checkload(%struct.lua_State* %12, i32 %17, i8* %18), !dbg !465
  store i32 %19, i32* %1, !dbg !465
  br label %20, !dbg !465

; <label>:20                                      ; preds = %11, %10
  %21 = load i32* %1, !dbg !467
  ret i32 %21, !dbg !467
}

; Function Attrs: nounwind
define internal i32 @searcher_C(%struct.lua_State* %L) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.lua_State*, align 4
  %name = alloca i8*, align 4
  %filename = alloca i8*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %2}, metadata !468), !dbg !469
  call void @llvm.dbg.declare(metadata !{i8** %name}, metadata !470), !dbg !471
  %3 = load %struct.lua_State** %2, align 4, !dbg !472
  %4 = call i8* @luaL_checklstring(%struct.lua_State* %3, i32 1, i32* null), !dbg !472
  store i8* %4, i8** %name, align 4, !dbg !472
  call void @llvm.dbg.declare(metadata !{i8** %filename}, metadata !473), !dbg !474
  %5 = load %struct.lua_State** %2, align 4, !dbg !475
  %6 = load i8** %name, align 4, !dbg !475
  %7 = call i8* @findfile(%struct.lua_State* %5, i8* %6, i8* getelementptr inbounds ([6 x i8]* @.str4, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str22, i32 0, i32 0)), !dbg !475
  store i8* %7, i8** %filename, align 4, !dbg !475
  %8 = load i8** %filename, align 4, !dbg !476
  %9 = icmp eq i8* %8, null, !dbg !476
  br i1 %9, label %10, label %11, !dbg !476

; <label>:10                                      ; preds = %0
  store i32 1, i32* %1, !dbg !478
  br label %21, !dbg !478

; <label>:11                                      ; preds = %0
  %12 = load %struct.lua_State** %2, align 4, !dbg !480
  %13 = load %struct.lua_State** %2, align 4, !dbg !481
  %14 = load i8** %filename, align 4, !dbg !481
  %15 = load i8** %name, align 4, !dbg !481
  %16 = call i32 @loadfunc(%struct.lua_State* %13, i8* %14, i8* %15), !dbg !481
  %17 = icmp eq i32 %16, 0, !dbg !481
  %18 = zext i1 %17 to i32, !dbg !481
  %19 = load i8** %filename, align 4, !dbg !480
  %20 = call i32 @checkload(%struct.lua_State* %12, i32 %18, i8* %19), !dbg !480
  store i32 %20, i32* %1, !dbg !480
  br label %21, !dbg !480

; <label>:21                                      ; preds = %11, %10
  %22 = load i32* %1, !dbg !482
  ret i32 %22, !dbg !482
}

; Function Attrs: nounwind
define internal i32 @searcher_Croot(%struct.lua_State* %L) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.lua_State*, align 4
  %filename = alloca i8*, align 4
  %name = alloca i8*, align 4
  %p = alloca i8*, align 4
  %stat = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %2}, metadata !483), !dbg !484
  call void @llvm.dbg.declare(metadata !{i8** %filename}, metadata !485), !dbg !486
  call void @llvm.dbg.declare(metadata !{i8** %name}, metadata !487), !dbg !488
  %3 = load %struct.lua_State** %2, align 4, !dbg !489
  %4 = call i8* @luaL_checklstring(%struct.lua_State* %3, i32 1, i32* null), !dbg !489
  store i8* %4, i8** %name, align 4, !dbg !489
  call void @llvm.dbg.declare(metadata !{i8** %p}, metadata !490), !dbg !491
  %5 = load i8** %name, align 4, !dbg !492
  %6 = call i8* @strchr(i8* %5, i32 46) #5, !dbg !492
  store i8* %6, i8** %p, align 4, !dbg !492
  call void @llvm.dbg.declare(metadata !{i32* %stat}, metadata !493), !dbg !494
  %7 = load i8** %p, align 4, !dbg !495
  %8 = icmp eq i8* %7, null, !dbg !495
  br i1 %8, label %9, label %10, !dbg !495

; <label>:9                                       ; preds = %0
  store i32 0, i32* %1, !dbg !497
  br label %48, !dbg !497

; <label>:10                                      ; preds = %0
  %11 = load %struct.lua_State** %2, align 4, !dbg !499
  %12 = load i8** %name, align 4, !dbg !499
  %13 = load i8** %p, align 4, !dbg !499
  %14 = load i8** %name, align 4, !dbg !499
  %15 = ptrtoint i8* %13 to i32, !dbg !499
  %16 = ptrtoint i8* %14 to i32, !dbg !499
  %17 = sub i32 %15, %16, !dbg !499
  %18 = call i8* @lua_pushlstring(%struct.lua_State* %11, i8* %12, i32 %17), !dbg !499
  %19 = load %struct.lua_State** %2, align 4, !dbg !500
  %20 = load %struct.lua_State** %2, align 4, !dbg !501
  %21 = call i8* @lua_tolstring(%struct.lua_State* %20, i32 -1, i32* null), !dbg !501
  %22 = call i8* @findfile(%struct.lua_State* %19, i8* %21, i8* getelementptr inbounds ([6 x i8]* @.str4, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str22, i32 0, i32 0)), !dbg !500
  store i8* %22, i8** %filename, align 4, !dbg !500
  %23 = load i8** %filename, align 4, !dbg !502
  %24 = icmp eq i8* %23, null, !dbg !502
  br i1 %24, label %25, label %26, !dbg !502

; <label>:25                                      ; preds = %10
  store i32 1, i32* %1, !dbg !504
  br label %48, !dbg !504

; <label>:26                                      ; preds = %10
  %27 = load %struct.lua_State** %2, align 4, !dbg !506
  %28 = load i8** %filename, align 4, !dbg !506
  %29 = load i8** %name, align 4, !dbg !506
  %30 = call i32 @loadfunc(%struct.lua_State* %27, i8* %28, i8* %29), !dbg !506
  store i32 %30, i32* %stat, align 4, !dbg !506
  %31 = icmp ne i32 %30, 0, !dbg !506
  br i1 %31, label %32, label %44, !dbg !506

; <label>:32                                      ; preds = %26
  %33 = load i32* %stat, align 4, !dbg !508
  %34 = icmp ne i32 %33, 2, !dbg !508
  br i1 %34, label %35, label %39, !dbg !508

; <label>:35                                      ; preds = %32
  %36 = load %struct.lua_State** %2, align 4, !dbg !511
  %37 = load i8** %filename, align 4, !dbg !511
  %38 = call i32 @checkload(%struct.lua_State* %36, i32 0, i8* %37), !dbg !511
  store i32 %38, i32* %1, !dbg !511
  br label %48, !dbg !511

; <label>:39                                      ; preds = %32
  %40 = load %struct.lua_State** %2, align 4, !dbg !512
  %41 = load i8** %name, align 4, !dbg !512
  %42 = load i8** %filename, align 4, !dbg !512
  %43 = call i8* (%struct.lua_State*, i8*, ...)* @lua_pushfstring(%struct.lua_State* %40, i8* getelementptr inbounds ([30 x i8]* @.str23, i32 0, i32 0), i8* %41, i8* %42), !dbg !512
  store i32 1, i32* %1, !dbg !514
  br label %48, !dbg !514

; <label>:44                                      ; preds = %26
  %45 = load %struct.lua_State** %2, align 4, !dbg !515
  %46 = load i8** %filename, align 4, !dbg !515
  %47 = call i8* @lua_pushstring(%struct.lua_State* %45, i8* %46), !dbg !515
  store i32 2, i32* %1, !dbg !516
  br label %48, !dbg !516

; <label>:48                                      ; preds = %44, %39, %35, %25, %9
  %49 = load i32* %1, !dbg !517
  ret i32 %49, !dbg !517
}

declare void @lua_pushcclosure(%struct.lua_State*, i32 (%struct.lua_State*)*, i32) #2

declare void @lua_rawseti(%struct.lua_State*, i32, i64) #2

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #3

declare i8* @lua_pushlstring(%struct.lua_State*, i8*, i32) #2

; Function Attrs: nounwind
define internal i8* @findfile(%struct.lua_State* %L, i8* %name, i8* %pname, i8* %dirsep) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca i8*, align 4
  %3 = alloca i8*, align 4
  %4 = alloca i8*, align 4
  %path = alloca i8*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !518), !dbg !519
  store i8* %name, i8** %2, align 4
  call void @llvm.dbg.declare(metadata !{i8** %2}, metadata !520), !dbg !521
  store i8* %pname, i8** %3, align 4
  call void @llvm.dbg.declare(metadata !{i8** %3}, metadata !522), !dbg !523
  store i8* %dirsep, i8** %4, align 4
  call void @llvm.dbg.declare(metadata !{i8** %4}, metadata !524), !dbg !525
  call void @llvm.dbg.declare(metadata !{i8** %path}, metadata !526), !dbg !527
  %5 = load %struct.lua_State** %1, align 4, !dbg !528
  %6 = load i8** %3, align 4, !dbg !528
  %7 = call i32 @lua_getfield(%struct.lua_State* %5, i32 -1001001, i8* %6), !dbg !528
  %8 = load %struct.lua_State** %1, align 4, !dbg !529
  %9 = call i8* @lua_tolstring(%struct.lua_State* %8, i32 -1, i32* null), !dbg !529
  store i8* %9, i8** %path, align 4, !dbg !529
  %10 = load i8** %path, align 4, !dbg !530
  %11 = icmp eq i8* %10, null, !dbg !530
  br i1 %11, label %12, label %16, !dbg !530

; <label>:12                                      ; preds = %0
  %13 = load %struct.lua_State** %1, align 4, !dbg !532
  %14 = load i8** %3, align 4, !dbg !532
  %15 = call i32 (%struct.lua_State*, i8*, ...)* @luaL_error(%struct.lua_State* %13, i8* getelementptr inbounds ([30 x i8]* @.str30, i32 0, i32 0), i8* %14), !dbg !532
  br label %16, !dbg !532

; <label>:16                                      ; preds = %12, %0
  %17 = load %struct.lua_State** %1, align 4, !dbg !533
  %18 = load i8** %2, align 4, !dbg !533
  %19 = load i8** %path, align 4, !dbg !533
  %20 = load i8** %4, align 4, !dbg !533
  %21 = call i8* @searchpath(%struct.lua_State* %17, i8* %18, i8* %19, i8* getelementptr inbounds ([2 x i8]* @.str25, i32 0, i32 0), i8* %20), !dbg !533
  ret i8* %21, !dbg !533
}

; Function Attrs: nounwind
define internal i32 @loadfunc(%struct.lua_State* %L, i8* %filename, i8* %modname) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.lua_State*, align 4
  %3 = alloca i8*, align 4
  %4 = alloca i8*, align 4
  %openfunc = alloca i8*, align 4
  %mark = alloca i8*, align 4
  %stat = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %2}, metadata !534), !dbg !535
  store i8* %filename, i8** %3, align 4
  call void @llvm.dbg.declare(metadata !{i8** %3}, metadata !536), !dbg !537
  store i8* %modname, i8** %4, align 4
  call void @llvm.dbg.declare(metadata !{i8** %4}, metadata !538), !dbg !539
  call void @llvm.dbg.declare(metadata !{i8** %openfunc}, metadata !540), !dbg !541
  call void @llvm.dbg.declare(metadata !{i8** %mark}, metadata !542), !dbg !543
  %5 = load %struct.lua_State** %2, align 4, !dbg !544
  %6 = load i8** %4, align 4, !dbg !544
  %7 = call i8* @luaL_gsub(%struct.lua_State* %5, i8* %6, i8* getelementptr inbounds ([2 x i8]* @.str25, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @.str26, i32 0, i32 0)), !dbg !544
  store i8* %7, i8** %4, align 4, !dbg !544
  %8 = load i8** %4, align 4, !dbg !545
  %9 = load i8* getelementptr inbounds ([2 x i8]* @.str27, i32 0, i32 0), align 1, !dbg !545
  %10 = zext i8 %9 to i32, !dbg !545
  %11 = call i8* @strchr(i8* %8, i32 %10) #5, !dbg !545
  store i8* %11, i8** %mark, align 4, !dbg !545
  %12 = load i8** %mark, align 4, !dbg !546
  %13 = icmp ne i8* %12, null, !dbg !546
  br i1 %13, label %14, label %37, !dbg !546

; <label>:14                                      ; preds = %0
  call void @llvm.dbg.declare(metadata !{i32* %stat}, metadata !548), !dbg !550
  %15 = load %struct.lua_State** %2, align 4, !dbg !551
  %16 = load i8** %4, align 4, !dbg !551
  %17 = load i8** %mark, align 4, !dbg !551
  %18 = load i8** %4, align 4, !dbg !551
  %19 = ptrtoint i8* %17 to i32, !dbg !551
  %20 = ptrtoint i8* %18 to i32, !dbg !551
  %21 = sub i32 %19, %20, !dbg !551
  %22 = call i8* @lua_pushlstring(%struct.lua_State* %15, i8* %16, i32 %21), !dbg !551
  store i8* %22, i8** %openfunc, align 4, !dbg !551
  %23 = load %struct.lua_State** %2, align 4, !dbg !552
  %24 = load i8** %openfunc, align 4, !dbg !552
  %25 = call i8* (%struct.lua_State*, i8*, ...)* @lua_pushfstring(%struct.lua_State* %23, i8* getelementptr inbounds ([11 x i8]* @.str28, i32 0, i32 0), i8* %24), !dbg !552
  store i8* %25, i8** %openfunc, align 4, !dbg !552
  %26 = load %struct.lua_State** %2, align 4, !dbg !553
  %27 = load i8** %3, align 4, !dbg !553
  %28 = load i8** %openfunc, align 4, !dbg !553
  %29 = call i32 @lookforfunc(%struct.lua_State* %26, i8* %27, i8* %28), !dbg !553
  store i32 %29, i32* %stat, align 4, !dbg !553
  %30 = load i32* %stat, align 4, !dbg !554
  %31 = icmp ne i32 %30, 2, !dbg !554
  br i1 %31, label %32, label %34, !dbg !554

; <label>:32                                      ; preds = %14
  %33 = load i32* %stat, align 4, !dbg !556
  store i32 %33, i32* %1, !dbg !556
  br label %45, !dbg !556

; <label>:34                                      ; preds = %14
  %35 = load i8** %mark, align 4, !dbg !558
  %36 = getelementptr inbounds i8* %35, i32 1, !dbg !558
  store i8* %36, i8** %4, align 4, !dbg !558
  br label %37, !dbg !559

; <label>:37                                      ; preds = %34, %0
  %38 = load %struct.lua_State** %2, align 4, !dbg !560
  %39 = load i8** %4, align 4, !dbg !560
  %40 = call i8* (%struct.lua_State*, i8*, ...)* @lua_pushfstring(%struct.lua_State* %38, i8* getelementptr inbounds ([11 x i8]* @.str28, i32 0, i32 0), i8* %39), !dbg !560
  store i8* %40, i8** %openfunc, align 4, !dbg !560
  %41 = load %struct.lua_State** %2, align 4, !dbg !561
  %42 = load i8** %3, align 4, !dbg !561
  %43 = load i8** %openfunc, align 4, !dbg !561
  %44 = call i32 @lookforfunc(%struct.lua_State* %41, i8* %42, i8* %43), !dbg !561
  store i32 %44, i32* %1, !dbg !561
  br label %45, !dbg !561

; <label>:45                                      ; preds = %37, %32
  %46 = load i32* %1, !dbg !562
  ret i32 %46, !dbg !562
}

; Function Attrs: nounwind
define internal i32 @checkload(%struct.lua_State* %L, i32 %stat, i8* %filename) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.lua_State*, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %2}, metadata !563), !dbg !564
  store i32 %stat, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !565), !dbg !566
  store i8* %filename, i8** %4, align 4
  call void @llvm.dbg.declare(metadata !{i8** %4}, metadata !567), !dbg !568
  %5 = load i32* %3, align 4, !dbg !569
  %6 = icmp ne i32 %5, 0, !dbg !569
  br i1 %6, label %7, label %11, !dbg !569

; <label>:7                                       ; preds = %0
  %8 = load %struct.lua_State** %2, align 4, !dbg !571
  %9 = load i8** %4, align 4, !dbg !571
  %10 = call i8* @lua_pushstring(%struct.lua_State* %8, i8* %9), !dbg !571
  store i32 2, i32* %1, !dbg !573
  br label %19, !dbg !573

; <label>:11                                      ; preds = %0
  %12 = load %struct.lua_State** %2, align 4, !dbg !574
  %13 = load %struct.lua_State** %2, align 4, !dbg !575
  %14 = call i8* @lua_tolstring(%struct.lua_State* %13, i32 1, i32* null), !dbg !575
  %15 = load i8** %4, align 4, !dbg !574
  %16 = load %struct.lua_State** %2, align 4, !dbg !576
  %17 = call i8* @lua_tolstring(%struct.lua_State* %16, i32 -1, i32* null), !dbg !576
  %18 = call i32 (%struct.lua_State*, i8*, ...)* @luaL_error(%struct.lua_State* %12, i8* getelementptr inbounds ([46 x i8]* @.str24, i32 0, i32 0), i8* %14, i8* %15, i8* %17), !dbg !574
  store i32 %18, i32* %1, !dbg !574
  br label %19, !dbg !574

; <label>:19                                      ; preds = %11, %7
  %20 = load i32* %1, !dbg !577
  ret i32 %20, !dbg !577
}

declare i8* @lua_pushfstring(%struct.lua_State*, i8*, ...) #2

; Function Attrs: nounwind
define internal i32 @lookforfunc(%struct.lua_State* %L, i8* %path, i8* %sym) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.lua_State*, align 4
  %3 = alloca i8*, align 4
  %4 = alloca i8*, align 4
  %reg = alloca i8*, align 4
  %f = alloca i32 (%struct.lua_State*)*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %2}, metadata !578), !dbg !579
  store i8* %path, i8** %3, align 4
  call void @llvm.dbg.declare(metadata !{i8** %3}, metadata !580), !dbg !581
  store i8* %sym, i8** %4, align 4
  call void @llvm.dbg.declare(metadata !{i8** %4}, metadata !582), !dbg !583
  call void @llvm.dbg.declare(metadata !{i8** %reg}, metadata !584), !dbg !585
  %5 = load %struct.lua_State** %2, align 4, !dbg !586
  %6 = load i8** %3, align 4, !dbg !586
  %7 = call i8* @checkclib(%struct.lua_State* %5, i8* %6), !dbg !586
  store i8* %7, i8** %reg, align 4, !dbg !586
  %8 = load i8** %reg, align 4, !dbg !587
  %9 = icmp eq i8* %8, null, !dbg !587
  br i1 %9, label %10, label %26, !dbg !587

; <label>:10                                      ; preds = %0
  %11 = load %struct.lua_State** %2, align 4, !dbg !589
  %12 = load i8** %3, align 4, !dbg !589
  %13 = load i8** %4, align 4, !dbg !589
  %14 = load i8* %13, align 1, !dbg !589
  %15 = zext i8 %14 to i32, !dbg !589
  %16 = icmp eq i32 %15, 42, !dbg !589
  %17 = zext i1 %16 to i32, !dbg !589
  %18 = call i8* @lsys_load(%struct.lua_State* %11, i8* %12, i32 %17), !dbg !589
  store i8* %18, i8** %reg, align 4, !dbg !589
  %19 = load i8** %reg, align 4, !dbg !591
  %20 = icmp eq i8* %19, null, !dbg !591
  br i1 %20, label %21, label %22, !dbg !591

; <label>:21                                      ; preds = %10
  store i32 1, i32* %1, !dbg !593
  br label %44, !dbg !593

; <label>:22                                      ; preds = %10
  %23 = load %struct.lua_State** %2, align 4, !dbg !595
  %24 = load i8** %3, align 4, !dbg !595
  %25 = load i8** %reg, align 4, !dbg !595
  call void @addtoclib(%struct.lua_State* %23, i8* %24, i8* %25), !dbg !595
  br label %26, !dbg !596

; <label>:26                                      ; preds = %22, %0
  %27 = load i8** %4, align 4, !dbg !597
  %28 = load i8* %27, align 1, !dbg !597
  %29 = zext i8 %28 to i32, !dbg !597
  %30 = icmp eq i32 %29, 42, !dbg !597
  br i1 %30, label %31, label %33, !dbg !597

; <label>:31                                      ; preds = %26
  %32 = load %struct.lua_State** %2, align 4, !dbg !599
  call void @lua_pushboolean(%struct.lua_State* %32, i32 1), !dbg !599
  store i32 0, i32* %1, !dbg !601
  br label %44, !dbg !601

; <label>:33                                      ; preds = %26
  call void @llvm.dbg.declare(metadata !{i32 (%struct.lua_State*)** %f}, metadata !602), !dbg !604
  %34 = load %struct.lua_State** %2, align 4, !dbg !605
  %35 = load i8** %reg, align 4, !dbg !605
  %36 = load i8** %4, align 4, !dbg !605
  %37 = call i32 (%struct.lua_State*)* (%struct.lua_State*, i8*, i8*)* @lsys_sym(%struct.lua_State* %34, i8* %35, i8* %36), !dbg !605
  store i32 (%struct.lua_State*)* %37, i32 (%struct.lua_State*)** %f, align 4, !dbg !605
  %38 = load i32 (%struct.lua_State*)** %f, align 4, !dbg !606
  %39 = icmp eq i32 (%struct.lua_State*)* %38, null, !dbg !606
  br i1 %39, label %40, label %41, !dbg !606

; <label>:40                                      ; preds = %33
  store i32 2, i32* %1, !dbg !608
  br label %44, !dbg !608

; <label>:41                                      ; preds = %33
  %42 = load %struct.lua_State** %2, align 4, !dbg !609
  %43 = load i32 (%struct.lua_State*)** %f, align 4, !dbg !609
  call void @lua_pushcclosure(%struct.lua_State* %42, i32 (%struct.lua_State*)* %43, i32 0), !dbg !609
  store i32 0, i32* %1, !dbg !610
  br label %44, !dbg !610

; <label>:44                                      ; preds = %41, %40, %31, %21
  %45 = load i32* %1, !dbg !611
  ret i32 %45, !dbg !611
}

; Function Attrs: nounwind
define internal i8* @checkclib(%struct.lua_State* %L, i8* %path) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca i8*, align 4
  %plib = alloca i8*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !612), !dbg !613
  store i8* %path, i8** %2, align 4
  call void @llvm.dbg.declare(metadata !{i8** %2}, metadata !614), !dbg !615
  call void @llvm.dbg.declare(metadata !{i8** %plib}, metadata !616), !dbg !617
  %3 = load %struct.lua_State** %1, align 4, !dbg !618
  %4 = call i32 @lua_rawgetp(%struct.lua_State* %3, i32 -1001000, i8* bitcast (i32* @CLIBS to i8*)), !dbg !618
  %5 = load %struct.lua_State** %1, align 4, !dbg !619
  %6 = load i8** %2, align 4, !dbg !619
  %7 = call i32 @lua_getfield(%struct.lua_State* %5, i32 -1, i8* %6), !dbg !619
  %8 = load %struct.lua_State** %1, align 4, !dbg !620
  %9 = call i8* @lua_touserdata(%struct.lua_State* %8, i32 -1), !dbg !620
  store i8* %9, i8** %plib, align 4, !dbg !620
  %10 = load %struct.lua_State** %1, align 4, !dbg !621
  call void @lua_settop(%struct.lua_State* %10, i32 -3), !dbg !621
  %11 = load i8** %plib, align 4, !dbg !622
  ret i8* %11, !dbg !622
}

; Function Attrs: nounwind
define internal i8* @lsys_load(%struct.lua_State* %L, i8* %path, i32 %seeglb) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca i8*, align 4
  %3 = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !623), !dbg !624
  store i8* %path, i8** %2, align 4
  call void @llvm.dbg.declare(metadata !{i8** %2}, metadata !625), !dbg !626
  store i32 %seeglb, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !627), !dbg !628
  %4 = load i8** %2, align 4, !dbg !629
  %5 = load i32* %3, align 4, !dbg !630
  %6 = load %struct.lua_State** %1, align 4, !dbg !631
  %7 = call i8* @lua_pushstring(%struct.lua_State* %6, i8* getelementptr inbounds ([59 x i8]* @.str29, i32 0, i32 0)), !dbg !631
  ret i8* null, !dbg !632
}

; Function Attrs: nounwind
define internal void @addtoclib(%struct.lua_State* %L, i8* %path, i8* %plib) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca i8*, align 4
  %3 = alloca i8*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !633), !dbg !634
  store i8* %path, i8** %2, align 4
  call void @llvm.dbg.declare(metadata !{i8** %2}, metadata !635), !dbg !636
  store i8* %plib, i8** %3, align 4
  call void @llvm.dbg.declare(metadata !{i8** %3}, metadata !637), !dbg !638
  %4 = load %struct.lua_State** %1, align 4, !dbg !639
  %5 = call i32 @lua_rawgetp(%struct.lua_State* %4, i32 -1001000, i8* bitcast (i32* @CLIBS to i8*)), !dbg !639
  %6 = load %struct.lua_State** %1, align 4, !dbg !640
  %7 = load i8** %3, align 4, !dbg !640
  call void @lua_pushlightuserdata(%struct.lua_State* %6, i8* %7), !dbg !640
  %8 = load %struct.lua_State** %1, align 4, !dbg !641
  call void @lua_pushvalue(%struct.lua_State* %8, i32 -1), !dbg !641
  %9 = load %struct.lua_State** %1, align 4, !dbg !642
  %10 = load i8** %2, align 4, !dbg !642
  call void @lua_setfield(%struct.lua_State* %9, i32 -3, i8* %10), !dbg !642
  %11 = load %struct.lua_State** %1, align 4, !dbg !643
  %12 = load %struct.lua_State** %1, align 4, !dbg !644
  %13 = call i64 @luaL_len(%struct.lua_State* %12, i32 -2), !dbg !644
  %14 = add nsw i64 %13, 1, !dbg !644
  call void @lua_rawseti(%struct.lua_State* %11, i32 -2, i64 %14), !dbg !643
  %15 = load %struct.lua_State** %1, align 4, !dbg !645
  call void @lua_settop(%struct.lua_State* %15, i32 -2), !dbg !645
  ret void, !dbg !646
}

; Function Attrs: nounwind
define internal i32 (%struct.lua_State*)* @lsys_sym(%struct.lua_State* %L, i8* %lib, i8* %sym) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca i8*, align 4
  %3 = alloca i8*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !647), !dbg !648
  store i8* %lib, i8** %2, align 4
  call void @llvm.dbg.declare(metadata !{i8** %2}, metadata !649), !dbg !650
  store i8* %sym, i8** %3, align 4
  call void @llvm.dbg.declare(metadata !{i8** %3}, metadata !651), !dbg !652
  %4 = load i8** %2, align 4, !dbg !653
  %5 = load i8** %3, align 4, !dbg !654
  %6 = load %struct.lua_State** %1, align 4, !dbg !655
  %7 = call i8* @lua_pushstring(%struct.lua_State* %6, i8* getelementptr inbounds ([59 x i8]* @.str29, i32 0, i32 0)), !dbg !655
  ret i32 (%struct.lua_State*)* null, !dbg !656
}

declare i32 @lua_rawgetp(%struct.lua_State*, i32, i8*) #2

declare void @lua_pushlightuserdata(%struct.lua_State*, i8*) #2

declare i64 @luaL_len(%struct.lua_State*, i32) #2

declare i8* @lua_touserdata(%struct.lua_State*, i32) #2

; Function Attrs: nounwind
define internal i8* @searchpath(%struct.lua_State* %L, i8* %name, i8* %path, i8* %sep, i8* %dirsep) #0 {
  %1 = alloca i8*, align 4
  %2 = alloca %struct.lua_State*, align 4
  %3 = alloca i8*, align 4
  %4 = alloca i8*, align 4
  %5 = alloca i8*, align 4
  %6 = alloca i8*, align 4
  %msg = alloca %struct.luaL_Buffer, align 4
  %filename = alloca i8*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %2}, metadata !657), !dbg !658
  store i8* %name, i8** %3, align 4
  call void @llvm.dbg.declare(metadata !{i8** %3}, metadata !659), !dbg !660
  store i8* %path, i8** %4, align 4
  call void @llvm.dbg.declare(metadata !{i8** %4}, metadata !661), !dbg !662
  store i8* %sep, i8** %5, align 4
  call void @llvm.dbg.declare(metadata !{i8** %5}, metadata !663), !dbg !664
  store i8* %dirsep, i8** %6, align 4
  call void @llvm.dbg.declare(metadata !{i8** %6}, metadata !665), !dbg !666
  call void @llvm.dbg.declare(metadata !{%struct.luaL_Buffer* %msg}, metadata !667), !dbg !668
  %7 = load %struct.lua_State** %2, align 4, !dbg !669
  call void @luaL_buffinit(%struct.lua_State* %7, %struct.luaL_Buffer* %msg), !dbg !669
  %8 = load i8** %5, align 4, !dbg !670
  %9 = load i8* %8, align 1, !dbg !670
  %10 = zext i8 %9 to i32, !dbg !670
  %11 = icmp ne i32 %10, 0, !dbg !670
  br i1 %11, label %12, label %18, !dbg !670

; <label>:12                                      ; preds = %0
  %13 = load %struct.lua_State** %2, align 4, !dbg !672
  %14 = load i8** %3, align 4, !dbg !672
  %15 = load i8** %5, align 4, !dbg !672
  %16 = load i8** %6, align 4, !dbg !672
  %17 = call i8* @luaL_gsub(%struct.lua_State* %13, i8* %14, i8* %15, i8* %16), !dbg !672
  store i8* %17, i8** %3, align 4, !dbg !672
  br label %18, !dbg !672

; <label>:18                                      ; preds = %12, %0
  br label %19, !dbg !673

; <label>:19                                      ; preds = %37, %18
  %20 = load %struct.lua_State** %2, align 4, !dbg !674
  %21 = load i8** %4, align 4, !dbg !674
  %22 = call i8* @pushnexttemplate(%struct.lua_State* %20, i8* %21), !dbg !674
  store i8* %22, i8** %4, align 4, !dbg !674
  %23 = icmp ne i8* %22, null, !dbg !674
  br i1 %23, label %24, label %43, !dbg !674

; <label>:24                                      ; preds = %19
  call void @llvm.dbg.declare(metadata !{i8** %filename}, metadata !676), !dbg !678
  %25 = load %struct.lua_State** %2, align 4, !dbg !679
  %26 = load %struct.lua_State** %2, align 4, !dbg !680
  %27 = call i8* @lua_tolstring(%struct.lua_State* %26, i32 -1, i32* null), !dbg !680
  %28 = load i8** %3, align 4, !dbg !679
  %29 = call i8* @luaL_gsub(%struct.lua_State* %25, i8* %27, i8* getelementptr inbounds ([2 x i8]* @.str31, i32 0, i32 0), i8* %28), !dbg !679
  store i8* %29, i8** %filename, align 4, !dbg !679
  %30 = load %struct.lua_State** %2, align 4, !dbg !681
  call void @lua_rotate(%struct.lua_State* %30, i32 -2, i32 -1), !dbg !681
  %31 = load %struct.lua_State** %2, align 4, !dbg !681
  call void @lua_settop(%struct.lua_State* %31, i32 -2), !dbg !681
  %32 = load i8** %filename, align 4, !dbg !682
  %33 = call i32 @readable(i8* %32), !dbg !682
  %34 = icmp ne i32 %33, 0, !dbg !682
  br i1 %34, label %35, label %37, !dbg !682

; <label>:35                                      ; preds = %24
  %36 = load i8** %filename, align 4, !dbg !684
  store i8* %36, i8** %1, !dbg !684
  br label %44, !dbg !684

; <label>:37                                      ; preds = %24
  %38 = load %struct.lua_State** %2, align 4, !dbg !685
  %39 = load i8** %filename, align 4, !dbg !685
  %40 = call i8* (%struct.lua_State*, i8*, ...)* @lua_pushfstring(%struct.lua_State* %38, i8* getelementptr inbounds ([15 x i8]* @.str32, i32 0, i32 0), i8* %39), !dbg !685
  %41 = load %struct.lua_State** %2, align 4, !dbg !686
  call void @lua_rotate(%struct.lua_State* %41, i32 -2, i32 -1), !dbg !686
  %42 = load %struct.lua_State** %2, align 4, !dbg !686
  call void @lua_settop(%struct.lua_State* %42, i32 -2), !dbg !686
  call void @luaL_addvalue(%struct.luaL_Buffer* %msg), !dbg !687
  br label %19, !dbg !688

; <label>:43                                      ; preds = %19
  call void @luaL_pushresult(%struct.luaL_Buffer* %msg), !dbg !689
  store i8* null, i8** %1, !dbg !690
  br label %44, !dbg !690

; <label>:44                                      ; preds = %43, %35
  %45 = load i8** %1, !dbg !691
  ret i8* %45, !dbg !691
}

; Function Attrs: nounwind
define internal i8* @pushnexttemplate(%struct.lua_State* %L, i8* %path) #0 {
  %1 = alloca i8*, align 4
  %2 = alloca %struct.lua_State*, align 4
  %3 = alloca i8*, align 4
  %l = alloca i8*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %2}, metadata !692), !dbg !693
  store i8* %path, i8** %3, align 4
  call void @llvm.dbg.declare(metadata !{i8** %3}, metadata !694), !dbg !695
  call void @llvm.dbg.declare(metadata !{i8** %l}, metadata !696), !dbg !697
  br label %4, !dbg !698

; <label>:4                                       ; preds = %11, %0
  %5 = load i8** %3, align 4, !dbg !699
  %6 = load i8* %5, align 1, !dbg !699
  %7 = zext i8 %6 to i32, !dbg !699
  %8 = load i8* getelementptr inbounds ([2 x i8]* @.str34, i32 0, i32 0), align 1, !dbg !699
  %9 = zext i8 %8 to i32, !dbg !699
  %10 = icmp eq i32 %7, %9, !dbg !699
  br i1 %10, label %11, label %14, !dbg !699

; <label>:11                                      ; preds = %4
  %12 = load i8** %3, align 4, !dbg !702
  %13 = getelementptr inbounds i8* %12, i32 1, !dbg !702
  store i8* %13, i8** %3, align 4, !dbg !702
  br label %4, !dbg !702

; <label>:14                                      ; preds = %4
  %15 = load i8** %3, align 4, !dbg !704
  %16 = load i8* %15, align 1, !dbg !704
  %17 = zext i8 %16 to i32, !dbg !704
  %18 = icmp eq i32 %17, 0, !dbg !704
  br i1 %18, label %19, label %20, !dbg !704

; <label>:19                                      ; preds = %14
  store i8* null, i8** %1, !dbg !706
  br label %42, !dbg !706

; <label>:20                                      ; preds = %14
  %21 = load i8** %3, align 4, !dbg !708
  %22 = load i8* getelementptr inbounds ([2 x i8]* @.str34, i32 0, i32 0), align 1, !dbg !708
  %23 = zext i8 %22 to i32, !dbg !708
  %24 = call i8* @strchr(i8* %21, i32 %23) #5, !dbg !708
  store i8* %24, i8** %l, align 4, !dbg !708
  %25 = load i8** %l, align 4, !dbg !709
  %26 = icmp eq i8* %25, null, !dbg !709
  br i1 %26, label %27, label %32, !dbg !709

; <label>:27                                      ; preds = %20
  %28 = load i8** %3, align 4, !dbg !711
  %29 = load i8** %3, align 4, !dbg !713
  %30 = call i32 @strlen(i8* %29) #5, !dbg !713
  %31 = getelementptr inbounds i8* %28, i32 %30, !dbg !713
  store i8* %31, i8** %l, align 4, !dbg !713
  br label %32, !dbg !713

; <label>:32                                      ; preds = %27, %20
  %33 = load %struct.lua_State** %2, align 4, !dbg !714
  %34 = load i8** %3, align 4, !dbg !714
  %35 = load i8** %l, align 4, !dbg !714
  %36 = load i8** %3, align 4, !dbg !714
  %37 = ptrtoint i8* %35 to i32, !dbg !714
  %38 = ptrtoint i8* %36 to i32, !dbg !714
  %39 = sub i32 %37, %38, !dbg !714
  %40 = call i8* @lua_pushlstring(%struct.lua_State* %33, i8* %34, i32 %39), !dbg !714
  %41 = load i8** %l, align 4, !dbg !715
  store i8* %41, i8** %1, !dbg !715
  br label %42, !dbg !715

; <label>:42                                      ; preds = %32, %19
  %43 = load i8** %1, !dbg !716
  ret i8* %43, !dbg !716
}

; Function Attrs: nounwind
define internal i32 @readable(i8* %filename) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 4
  %f = alloca %struct._IO_FILE*, align 4
  store i8* %filename, i8** %2, align 4
  call void @llvm.dbg.declare(metadata !{i8** %2}, metadata !717), !dbg !718
  call void @llvm.dbg.declare(metadata !{%struct._IO_FILE** %f}, metadata !719), !dbg !778
  %3 = load i8** %2, align 4, !dbg !779
  %4 = call %struct._IO_FILE* @fopen64(i8* %3, i8* getelementptr inbounds ([2 x i8]* @.str33, i32 0, i32 0)), !dbg !779
  store %struct._IO_FILE* %4, %struct._IO_FILE** %f, align 4, !dbg !779
  %5 = load %struct._IO_FILE** %f, align 4, !dbg !780
  %6 = icmp eq %struct._IO_FILE* %5, null, !dbg !780
  br i1 %6, label %7, label %8, !dbg !780

; <label>:7                                       ; preds = %0
  store i32 0, i32* %1, !dbg !782
  br label %11, !dbg !782

; <label>:8                                       ; preds = %0
  %9 = load %struct._IO_FILE** %f, align 4, !dbg !784
  %10 = call i32 @fclose(%struct._IO_FILE* %9), !dbg !784
  store i32 1, i32* %1, !dbg !785
  br label %11, !dbg !785

; <label>:11                                      ; preds = %8, %7
  %12 = load i32* %1, !dbg !786
  ret i32 %12, !dbg !786
}

declare %struct._IO_FILE* @fopen64(i8*, i8*) #2

declare i32 @fclose(%struct._IO_FILE*) #2

; Function Attrs: nounwind readonly
declare i32 @strlen(i8*) #3

declare i32 @luaL_loadfilex(%struct.lua_State*, i8*, i8*) #2

; Function Attrs: nounwind
define internal i32 @ll_loadlib(%struct.lua_State* %L) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.lua_State*, align 4
  %path = alloca i8*, align 4
  %init = alloca i8*, align 4
  %stat = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %2}, metadata !787), !dbg !788
  call void @llvm.dbg.declare(metadata !{i8** %path}, metadata !789), !dbg !790
  %3 = load %struct.lua_State** %2, align 4, !dbg !791
  %4 = call i8* @luaL_checklstring(%struct.lua_State* %3, i32 1, i32* null), !dbg !791
  store i8* %4, i8** %path, align 4, !dbg !791
  call void @llvm.dbg.declare(metadata !{i8** %init}, metadata !792), !dbg !793
  %5 = load %struct.lua_State** %2, align 4, !dbg !794
  %6 = call i8* @luaL_checklstring(%struct.lua_State* %5, i32 2, i32* null), !dbg !794
  store i8* %6, i8** %init, align 4, !dbg !794
  call void @llvm.dbg.declare(metadata !{i32* %stat}, metadata !795), !dbg !796
  %7 = load %struct.lua_State** %2, align 4, !dbg !797
  %8 = load i8** %path, align 4, !dbg !797
  %9 = load i8** %init, align 4, !dbg !797
  %10 = call i32 @lookforfunc(%struct.lua_State* %7, i8* %8, i8* %9), !dbg !797
  store i32 %10, i32* %stat, align 4, !dbg !797
  %11 = load i32* %stat, align 4, !dbg !798
  %12 = icmp eq i32 %11, 0, !dbg !798
  br i1 %12, label %13, label %14, !dbg !798

; <label>:13                                      ; preds = %0
  store i32 1, i32* %1, !dbg !800
  br label %22, !dbg !800

; <label>:14                                      ; preds = %0
  %15 = load %struct.lua_State** %2, align 4, !dbg !801
  call void @lua_pushnil(%struct.lua_State* %15), !dbg !801
  %16 = load %struct.lua_State** %2, align 4, !dbg !803
  call void @lua_rotate(%struct.lua_State* %16, i32 -2, i32 1), !dbg !803
  %17 = load %struct.lua_State** %2, align 4, !dbg !804
  %18 = load i32* %stat, align 4, !dbg !804
  %19 = icmp eq i32 %18, 1, !dbg !804
  %20 = select i1 %19, i8* getelementptr inbounds ([7 x i8]* @.str38, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @.str39, i32 0, i32 0), !dbg !804
  %21 = call i8* @lua_pushstring(%struct.lua_State* %17, i8* %20), !dbg !804
  store i32 3, i32* %1, !dbg !805
  br label %22, !dbg !805

; <label>:22                                      ; preds = %14, %13
  %23 = load i32* %1, !dbg !806
  ret i32 %23, !dbg !806
}

; Function Attrs: nounwind
define internal i32 @ll_searchpath(%struct.lua_State* %L) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.lua_State*, align 4
  %f = alloca i8*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %2}, metadata !807), !dbg !808
  call void @llvm.dbg.declare(metadata !{i8** %f}, metadata !809), !dbg !810
  %3 = load %struct.lua_State** %2, align 4, !dbg !811
  %4 = load %struct.lua_State** %2, align 4, !dbg !812
  %5 = call i8* @luaL_checklstring(%struct.lua_State* %4, i32 1, i32* null), !dbg !812
  %6 = load %struct.lua_State** %2, align 4, !dbg !813
  %7 = call i8* @luaL_checklstring(%struct.lua_State* %6, i32 2, i32* null), !dbg !813
  %8 = load %struct.lua_State** %2, align 4, !dbg !814
  %9 = call i8* @luaL_optlstring(%struct.lua_State* %8, i32 3, i8* getelementptr inbounds ([2 x i8]* @.str25, i32 0, i32 0), i32* null), !dbg !814
  %10 = load %struct.lua_State** %2, align 4, !dbg !815
  %11 = call i8* @luaL_optlstring(%struct.lua_State* %10, i32 4, i8* getelementptr inbounds ([2 x i8]* @.str22, i32 0, i32 0), i32* null), !dbg !815
  %12 = call i8* @searchpath(%struct.lua_State* %3, i8* %5, i8* %7, i8* %9, i8* %11), !dbg !811
  store i8* %12, i8** %f, align 4, !dbg !811
  %13 = load i8** %f, align 4, !dbg !816
  %14 = icmp ne i8* %13, null, !dbg !816
  br i1 %14, label %15, label %16, !dbg !816

; <label>:15                                      ; preds = %0
  store i32 1, i32* %1, !dbg !818
  br label %19, !dbg !818

; <label>:16                                      ; preds = %0
  %17 = load %struct.lua_State** %2, align 4, !dbg !820
  call void @lua_pushnil(%struct.lua_State* %17), !dbg !820
  %18 = load %struct.lua_State** %2, align 4, !dbg !822
  call void @lua_rotate(%struct.lua_State* %18, i32 -2, i32 1), !dbg !822
  store i32 2, i32* %1, !dbg !823
  br label %19, !dbg !823

; <label>:19                                      ; preds = %16, %15
  %20 = load i32* %1, !dbg !824
  ret i32 %20, !dbg !824
}

declare i8* @luaL_optlstring(%struct.lua_State*, i32, i8*, i32*) #2

declare void @lua_pushnil(%struct.lua_State*) #2

; Function Attrs: nounwind
define internal i32 @gctm(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %n = alloca i64, align 8
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !825), !dbg !826
  call void @llvm.dbg.declare(metadata !{i64* %n}, metadata !827), !dbg !829
  %2 = load %struct.lua_State** %1, align 4, !dbg !830
  %3 = call i64 @luaL_len(%struct.lua_State* %2, i32 1), !dbg !830
  store i64 %3, i64* %n, align 8, !dbg !830
  br label %4, !dbg !831

; <label>:4                                       ; preds = %14, %0
  %5 = load i64* %n, align 8, !dbg !833
  %6 = icmp sge i64 %5, 1, !dbg !833
  br i1 %6, label %7, label %17, !dbg !833

; <label>:7                                       ; preds = %4
  %8 = load %struct.lua_State** %1, align 4, !dbg !836
  %9 = load i64* %n, align 8, !dbg !836
  %10 = call i32 @lua_rawgeti(%struct.lua_State* %8, i32 1, i64 %9), !dbg !836
  %11 = load %struct.lua_State** %1, align 4, !dbg !838
  %12 = call i8* @lua_touserdata(%struct.lua_State* %11, i32 -1), !dbg !838
  call void @lsys_unloadlib(i8* %12), !dbg !839
  %13 = load %struct.lua_State** %1, align 4, !dbg !840
  call void @lua_settop(%struct.lua_State* %13, i32 -2), !dbg !840
  br label %14, !dbg !841

; <label>:14                                      ; preds = %7
  %15 = load i64* %n, align 8, !dbg !842
  %16 = add nsw i64 %15, -1, !dbg !842
  store i64 %16, i64* %n, align 8, !dbg !842
  br label %4, !dbg !842

; <label>:17                                      ; preds = %4
  ret i32 0, !dbg !843
}

declare i32 @lua_setmetatable(%struct.lua_State*, i32) #2

declare void @lua_rawsetp(%struct.lua_State*, i32, i8*) #2

; Function Attrs: nounwind
define internal void @lsys_unloadlib(i8* %lib) #0 {
  %1 = alloca i8*, align 4
  store i8* %lib, i8** %1, align 4
  call void @llvm.dbg.declare(metadata !{i8** %1}, metadata !844), !dbg !845
  %2 = load i8** %1, align 4, !dbg !846
  ret void, !dbg !847
}

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!xidane.fname = !{!96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229}
!xidane.function_declaration_type = !{!96, !230, !98, !231, !100, !232, !102, !233, !104, !234, !106, !231, !108, !235, !110, !236, !112, !237, !114, !238, !116, !239, !118, !240, !120, !240, !122, !230, !124, !241, !126, !238, !128, !242, !130, !243, !132, !233, !134, !244, !136, !242, !138, !240, !140, !245, !142, !246, !144, !247, !146, !241, !148, !242, !150, !247, !152, !248, !154, !230, !156, !249, !158, !230, !160, !230, !162, !230, !164, !230, !166, !250, !168, !251, !170, !252, !172, !253, !174, !249, !176, !254, !178, !238, !180, !236, !182, !254, !184, !255, !186, !256, !188, !257, !190, !258, !192, !259, !194, !260, !196, !261, !198, !262, !200, !263, !202, !236, !204, !264, !206, !265, !208, !266, !210, !267, !212, !254, !214, !230, !216, !230, !218, !268, !220, !231, !222, !230, !224, !242, !226, !269, !228, !270}
!xidane.function_declaration_filename = !{!96, !271, !98, !272, !100, !273, !102, !274, !104, !273, !106, !272, !108, !272, !110, !274, !112, !274, !114, !273, !116, !274, !118, !274, !120, !274, !122, !272, !124, !273, !126, !274, !128, !274, !130, !272, !132, !274, !134, !274, !136, !274, !138, !274, !140, !273, !142, !273, !144, !273, !146, !274, !148, !274, !150, !273, !152, !275, !154, !272, !156, !273, !158, !272, !160, !272, !162, !272, !164, !272, !166, !274, !168, !274, !170, !276, !172, !274, !174, !272, !176, !272, !178, !272, !180, !274, !182, !272, !184, !272, !186, !272, !188, !272, !190, !272, !192, !274, !194, !274, !196, !273, !198, !274, !200, !272, !202, !272, !204, !272, !206, !277, !208, !277, !210, !276, !212, !273, !214, !272, !216, !272, !218, !273, !220, !274, !222, !272, !224, !274, !226, !274, !228, !272}
!xidane.ExternC = !{!96, !100, !102, !104, !110, !112, !114, !116, !118, !120, !124, !126, !128, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !156, !166, !168, !170, !172, !180, !192, !194, !196, !198, !206, !208, !210, !212, !218, !220, !224, !226}
!llvm.module.flags = !{!278, !279, !280, !281}
!llvm.ident = !{!282}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.0 (tags/RELEASE_350/final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !73, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src\loadlib.c] [DW_LANG_C99]
!1 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src\5Cloadlib.c", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!2 = metadata !{}
!3 = metadata !{metadata !4, metadata !14, metadata !15, metadata !21, metadata !24, metadata !25, metadata !28, metadata !29, metadata !32, metadata !35, metadata !36, metadata !42, metadata !45, metadata !48, metadata !51, metadata !54, metadata !57, metadata !60, metadata !63, metadata !64, metadata !65, metadata !66, metadata !67, metadata !68, metadata !69, metadata !70}
!4 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"luaopen_package", metadata !"luaopen_package", metadata !"", i32 763, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @luaopen_package, null, null, metadata !2, i32 763} ; [ DW_TAG_subprogram ] [line 763] [def] [luaopen_package]
!5 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/loadlib.c", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!6 = metadata !{i32 786473, metadata !5}          ; [ DW_TAG_file_type ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/loadlib.c]
!7 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!8 = metadata !{metadata !9, metadata !10}
!9 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!10 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !11} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from lua_State]
!11 = metadata !{i32 786454, metadata !12, null, metadata !"lua_State", i32 56, i64 0, i64 0, i64 0, i32 0, metadata !13} ; [ DW_TAG_typedef ] [lua_State] [line 56, size 0, align 0, offset 0] [from lua_State]
!12 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lua.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!13 = metadata !{i32 786451, metadata !12, null, metadata !"lua_State", i32 56, i64 0, i64 0, i32 0, i32 4, null, null, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [lua_State] [line 56, size 0, align 0, offset 0] [decl] [from ]
!14 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"ll_require", metadata !"ll_require", metadata !"", i32 558, metadata !7, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @ll_require, null, null, metadata !2, i32 558} ; [ DW_TAG_subprogram ] [line 558] [local] [def] [ll_require]
!15 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"findloader", metadata !"findloader", metadata !"", i32 530, metadata !16, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.lua_State*, i8*)* @findloader, null, null, metadata !2, i32 530} ; [ DW_TAG_subprogram ] [line 530] [local] [def] [findloader]
!16 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !17, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!17 = metadata !{null, metadata !10, metadata !18}
!18 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !19} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!19 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !20} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!20 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!21 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"setpath", metadata !"setpath", metadata !"", i32 685, metadata !22, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.lua_State*, i8*, i8*, i8*, i8*)* @setpath, null, null, metadata !2, i32 686} ; [ DW_TAG_subprogram ] [line 685] [local] [def] [scope 686] [setpath]
!22 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !23, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!23 = metadata !{null, metadata !10, metadata !18, metadata !18, metadata !18, metadata !18}
!24 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"noenv", metadata !"noenv", metadata !"", i32 676, metadata !7, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @noenv, null, null, metadata !2, i32 676} ; [ DW_TAG_subprogram ] [line 676] [local] [def] [noenv]
!25 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"createsearcherstable", metadata !"createsearcherstable", metadata !"", i32 729, metadata !26, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.lua_State*)* @createsearcherstable, null, null, metadata !2, i32 729} ; [ DW_TAG_subprogram ] [line 729] [local] [def] [createsearcherstable]
!26 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !27, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!27 = metadata !{null, metadata !10}
!28 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"searcher_Croot", metadata !"searcher_Croot", metadata !"", i32 499, metadata !7, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @searcher_Croot, null, null, metadata !2, i32 499} ; [ DW_TAG_subprogram ] [line 499] [local] [def] [searcher_Croot]
!29 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"checkload", metadata !"checkload", metadata !"", i32 445, metadata !30, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*, i32, i8*)* @checkload, null, null, metadata !2, i32 445} ; [ DW_TAG_subprogram ] [line 445] [local] [def] [checkload]
!30 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !31, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!31 = metadata !{metadata !9, metadata !10, metadata !9, metadata !18}
!32 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"loadfunc", metadata !"loadfunc", metadata !"", i32 473, metadata !33, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*, i8*, i8*)* @loadfunc, null, null, metadata !2, i32 473} ; [ DW_TAG_subprogram ] [line 473] [local] [def] [loadfunc]
!33 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !34, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!34 = metadata !{metadata !9, metadata !10, metadata !18, metadata !18}
!35 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"lookforfunc", metadata !"lookforfunc", metadata !"", i32 333, metadata !33, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*, i8*, i8*)* @lookforfunc, null, null, metadata !2, i32 333} ; [ DW_TAG_subprogram ] [line 333] [local] [def] [lookforfunc]
!36 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"lsys_sym", metadata !"lsys_sym", metadata !"", i32 265, metadata !37, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* (%struct.lua_State*, i8*, i8*)* @lsys_sym, null, null, metadata !2, i32 265} ; [ DW_TAG_subprogram ] [line 265] [local] [def] [lsys_sym]
!37 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !38, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!38 = metadata !{metadata !39, metadata !10, metadata !41, metadata !18}
!39 = metadata !{i32 786454, metadata !12, null, metadata !"lua_CFunction", i32 105, i64 0, i64 0, i64 0, i32 0, metadata !40} ; [ DW_TAG_typedef ] [lua_CFunction] [line 105, size 0, align 0, offset 0] [from ]
!40 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !7} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!41 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!42 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"addtoclib", metadata !"addtoclib", metadata !"", i32 292, metadata !43, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.lua_State*, i8*, i8*)* @addtoclib, null, null, metadata !2, i32 292} ; [ DW_TAG_subprogram ] [line 292] [local] [def] [addtoclib]
!43 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !44, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!44 = metadata !{null, metadata !10, metadata !18, metadata !41}
!45 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"lsys_load", metadata !"lsys_load", metadata !"", i32 258, metadata !46, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (%struct.lua_State*, i8*, i32)* @lsys_load, null, null, metadata !2, i32 258} ; [ DW_TAG_subprogram ] [line 258] [local] [def] [lsys_load]
!46 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !47, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!47 = metadata !{metadata !41, metadata !10, metadata !18, metadata !9}
!48 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"checkclib", metadata !"checkclib", metadata !"", i32 278, metadata !49, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (%struct.lua_State*, i8*)* @checkclib, null, null, metadata !2, i32 278} ; [ DW_TAG_subprogram ] [line 278] [local] [def] [checkclib]
!49 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !50, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!50 = metadata !{metadata !41, metadata !10, metadata !18}
!51 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"findfile", metadata !"findfile", metadata !"", i32 433, metadata !52, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (%struct.lua_State*, i8*, i8*, i8*)* @findfile, null, null, metadata !2, i32 435} ; [ DW_TAG_subprogram ] [line 433] [local] [def] [scope 435] [findfile]
!52 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !53, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!53 = metadata !{metadata !18, metadata !10, metadata !18, metadata !18, metadata !18}
!54 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"searchpath", metadata !"searchpath", metadata !"", i32 396, metadata !55, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (%struct.lua_State*, i8*, i8*, i8*, i8*)* @searchpath, null, null, metadata !2, i32 399} ; [ DW_TAG_subprogram ] [line 396] [local] [def] [scope 399] [searchpath]
!55 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !56, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!56 = metadata !{metadata !18, metadata !10, metadata !18, metadata !18, metadata !18, metadata !18}
!57 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"readable", metadata !"readable", metadata !"", i32 377, metadata !58, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i8*)* @readable, null, null, metadata !2, i32 377} ; [ DW_TAG_subprogram ] [line 377] [local] [def] [readable]
!58 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !59, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!59 = metadata !{metadata !9, metadata !18}
!60 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"pushnexttemplate", metadata !"pushnexttemplate", metadata !"", i32 385, metadata !61, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (%struct.lua_State*, i8*)* @pushnexttemplate, null, null, metadata !2, i32 385} ; [ DW_TAG_subprogram ] [line 385] [local] [def] [pushnexttemplate]
!61 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !62, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!62 = metadata !{metadata !18, metadata !10, metadata !18}
!63 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"searcher_C", metadata !"searcher_C", metadata !"", i32 491, metadata !7, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @searcher_C, null, null, metadata !2, i32 491} ; [ DW_TAG_subprogram ] [line 491] [local] [def] [searcher_C]
!64 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"searcher_Lua", metadata !"searcher_Lua", metadata !"", i32 456, metadata !7, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @searcher_Lua, null, null, metadata !2, i32 456} ; [ DW_TAG_subprogram ] [line 456] [local] [def] [searcher_Lua]
!65 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"searcher_preload", metadata !"searcher_preload", metadata !"", i32 521, metadata !7, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @searcher_preload, null, null, metadata !2, i32 521} ; [ DW_TAG_subprogram ] [line 521] [local] [def] [searcher_preload]
!66 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"ll_searchpath", metadata !"ll_searchpath", metadata !"", i32 419, metadata !7, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @ll_searchpath, null, null, metadata !2, i32 419} ; [ DW_TAG_subprogram ] [line 419] [local] [def] [ll_searchpath]
!67 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"ll_loadlib", metadata !"ll_loadlib", metadata !"", i32 354, metadata !7, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @ll_loadlib, null, null, metadata !2, i32 354} ; [ DW_TAG_subprogram ] [line 354] [local] [def] [ll_loadlib]
!68 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"createclibstable", metadata !"createclibstable", metadata !"", i32 753, metadata !26, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.lua_State*)* @createclibstable, null, null, metadata !2, i32 753} ; [ DW_TAG_subprogram ] [line 753] [local] [def] [createclibstable]
!69 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"gctm", metadata !"gctm", metadata !"", i32 306, metadata !7, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @gctm, null, null, metadata !2, i32 306} ; [ DW_TAG_subprogram ] [line 306] [local] [def] [gctm]
!70 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"lsys_unloadlib", metadata !"lsys_unloadlib", metadata !"", i32 253, metadata !71, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i8*)* @lsys_unloadlib, null, null, metadata !2, i32 253} ; [ DW_TAG_subprogram ] [line 253] [local] [def] [lsys_unloadlib]
!71 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !72, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!72 = metadata !{null, metadata !41}
!73 = metadata !{metadata !74, metadata !85, metadata !90, metadata !92}
!74 = metadata !{i32 786484, i32 0, null, metadata !"ll_funcs", metadata !"ll_funcs", metadata !"", metadata !6, i32 720, metadata !75, i32 1, i32 1, [2 x %struct.luaL_Reg]* @ll_funcs, null} ; [ DW_TAG_variable ] [ll_funcs] [line 720] [local] [def]
!75 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 128, i64 32, i32 0, i32 0, metadata !76, metadata !83, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 128, align 32, offset 0] [from ]
!76 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !77} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from luaL_Reg]
!77 = metadata !{i32 786454, metadata !78, null, metadata !"luaL_Reg", i32 26, i64 0, i64 0, i64 0, i32 0, metadata !79} ; [ DW_TAG_typedef ] [luaL_Reg] [line 26, size 0, align 0, offset 0] [from luaL_Reg]
!78 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lauxlib.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!79 = metadata !{i32 786451, metadata !78, null, metadata !"luaL_Reg", i32 23, i64 64, i64 32, i32 0, i32 0, null, metadata !80, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [luaL_Reg] [line 23, size 64, align 32, offset 0] [def] [from ]
!80 = metadata !{metadata !81, metadata !82}
!81 = metadata !{i32 786445, metadata !78, metadata !79, metadata !"name", i32 24, i64 32, i64 32, i64 0, i32 0, metadata !18} ; [ DW_TAG_member ] [name] [line 24, size 32, align 32, offset 0] [from ]
!82 = metadata !{i32 786445, metadata !78, metadata !79, metadata !"func", i32 25, i64 32, i64 32, i64 32, i32 0, metadata !39} ; [ DW_TAG_member ] [func] [line 25, size 32, align 32, offset 32] [from lua_CFunction]
!83 = metadata !{metadata !84}
!84 = metadata !{i32 786465, i64 0, i64 2}        ; [ DW_TAG_subrange_type ] [0, 1]
!85 = metadata !{i32 786484, i32 0, metadata !25, metadata !"searchers", metadata !"searchers", metadata !"", metadata !6, i32 730, metadata !86, i32 1, i32 1, [5 x i32 (%struct.lua_State*)*]* @createsearcherstable.searchers, null} ; [ DW_TAG_variable ] [searchers] [line 730] [local] [def]
!86 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 160, i64 32, i32 0, i32 0, metadata !87, metadata !88, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 160, align 32, offset 0] [from ]
!87 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !39} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from lua_CFunction]
!88 = metadata !{metadata !89}
!89 = metadata !{i32 786465, i64 0, i64 5}        ; [ DW_TAG_subrange_type ] [0, 4]
!90 = metadata !{i32 786484, i32 0, null, metadata !"CLIBS", metadata !"CLIBS", metadata !"", metadata !6, i32 93, metadata !91, i32 1, i32 1, i32* @CLIBS, null} ; [ DW_TAG_variable ] [CLIBS] [line 93] [local] [def]
!91 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !9} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from int]
!92 = metadata !{i32 786484, i32 0, null, metadata !"pk_funcs", metadata !"pk_funcs", metadata !"", metadata !6, i32 704, metadata !93, i32 1, i32 1, [8 x %struct.luaL_Reg]* @pk_funcs, null} ; [ DW_TAG_variable ] [pk_funcs] [line 704] [local] [def]
!93 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 512, i64 32, i32 0, i32 0, metadata !76, metadata !94, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 512, align 32, offset 0] [from ]
!94 = metadata !{metadata !95}
!95 = metadata !{i32 786465, i64 0, i64 8}        ; [ DW_TAG_subrange_type ] [0, 7]
!96 = metadata !{i32 (%struct.lua_State*)* @luaopen_package}
!97 = metadata !{metadata !"luaopen_package"}
!98 = metadata !{void (%struct.lua_State*)* @createclibstable}
!99 = metadata !{metadata !"createclibstable"}
!100 = metadata !{void (%struct.lua_State*, double, i32)* @luaL_checkversion_}
!101 = metadata !{metadata !"luaL_checkversion_"}
!102 = metadata !{void (%struct.lua_State*, i32, i32)* @lua_createtable}
!103 = metadata !{metadata !"lua_createtable"}
!104 = metadata !{void (%struct.lua_State*, %struct.luaL_Reg*, i32)* @luaL_setfuncs}
!105 = metadata !{metadata !"luaL_setfuncs"}
!106 = metadata !{void (%struct.lua_State*)* @createsearcherstable}
!107 = metadata !{metadata !"createsearcherstable"}
!108 = metadata !{void (%struct.lua_State*, i8*, i8*, i8*, i8*)* @setpath}
!109 = metadata !{metadata !"setpath"}
!110 = metadata !{i8* (%struct.lua_State*, i8*)* @lua_pushstring}
!111 = metadata !{metadata !"lua_pushstring"}
!112 = metadata !{void (%struct.lua_State*, i32, i8*)* @lua_setfield}
!113 = metadata !{metadata !"lua_setfield"}
!114 = metadata !{i32 (%struct.lua_State*, i32, i8*)* @luaL_getsubtable}
!115 = metadata !{metadata !"luaL_getsubtable"}
!116 = metadata !{i32 (%struct.lua_State*, i32, i64)* @lua_rawgeti}
!117 = metadata !{metadata !"lua_rawgeti"}
!118 = metadata !{void (%struct.lua_State*, i32)* @lua_pushvalue}
!119 = metadata !{metadata !"lua_pushvalue"}
!120 = metadata !{void (%struct.lua_State*, i32)* @lua_settop}
!121 = metadata !{metadata !"lua_settop"}
!122 = metadata !{i32 (%struct.lua_State*)* @ll_require}
!123 = metadata !{metadata !"ll_require"}
!124 = metadata !{i8* (%struct.lua_State*, i32, i32*)* @luaL_checklstring}
!125 = metadata !{metadata !"luaL_checklstring"}
!126 = metadata !{i32 (%struct.lua_State*, i32, i8*)* @lua_getfield}
!127 = metadata !{metadata !"lua_getfield"}
!128 = metadata !{i32 (%struct.lua_State*, i32)* @lua_toboolean}
!129 = metadata !{metadata !"lua_toboolean"}
!130 = metadata !{void (%struct.lua_State*, i8*)* @findloader}
!131 = metadata !{metadata !"findloader"}
!132 = metadata !{void (%struct.lua_State*, i32, i32)* @lua_rotate}
!133 = metadata !{metadata !"lua_rotate"}
!134 = metadata !{void (%struct.lua_State*, i32, i32, i32, i32 (%struct.lua_State*, i32, i32)*)* @lua_callk}
!135 = metadata !{metadata !"lua_callk"}
!136 = metadata !{i32 (%struct.lua_State*, i32)* @lua_type}
!137 = metadata !{metadata !"lua_type"}
!138 = metadata !{void (%struct.lua_State*, i32)* @lua_pushboolean}
!139 = metadata !{metadata !"lua_pushboolean"}
!140 = metadata !{void (%struct.lua_State*, %struct.luaL_Buffer*)* @luaL_buffinit}
!141 = metadata !{metadata !"luaL_buffinit"}
!142 = metadata !{i32 (%struct.lua_State*, i8*, ...)* @luaL_error}
!143 = metadata !{metadata !"luaL_error"}
!144 = metadata !{void (%struct.luaL_Buffer*)* @luaL_pushresult}
!145 = metadata !{metadata !"luaL_pushresult"}
!146 = metadata !{i8* (%struct.lua_State*, i32, i32*)* @lua_tolstring}
!147 = metadata !{metadata !"lua_tolstring"}
!148 = metadata !{i32 (%struct.lua_State*, i32)* @lua_isstring}
!149 = metadata !{metadata !"lua_isstring"}
!150 = metadata !{void (%struct.luaL_Buffer*)* @luaL_addvalue}
!151 = metadata !{metadata !"luaL_addvalue"}
!152 = metadata !{i8* (i8*)* @getenv}
!153 = metadata !{metadata !"getenv"}
!154 = metadata !{i32 (%struct.lua_State*)* @noenv}
!155 = metadata !{metadata !"noenv"}
!156 = metadata !{i8* (%struct.lua_State*, i8*, i8*, i8*)* @luaL_gsub}
!157 = metadata !{metadata !"luaL_gsub"}
!158 = metadata !{i32 (%struct.lua_State*)* @searcher_preload}
!159 = metadata !{metadata !"searcher_preload"}
!160 = metadata !{i32 (%struct.lua_State*)* @searcher_Lua}
!161 = metadata !{metadata !"searcher_Lua"}
!162 = metadata !{i32 (%struct.lua_State*)* @searcher_C}
!163 = metadata !{metadata !"searcher_C"}
!164 = metadata !{i32 (%struct.lua_State*)* @searcher_Croot}
!165 = metadata !{metadata !"searcher_Croot"}
!166 = metadata !{void (%struct.lua_State*, i32 (%struct.lua_State*)*, i32)* @lua_pushcclosure}
!167 = metadata !{metadata !"lua_pushcclosure"}
!168 = metadata !{void (%struct.lua_State*, i32, i64)* @lua_rawseti}
!169 = metadata !{metadata !"lua_rawseti"}
!170 = metadata !{i8* (i8*, i32)* @strchr}
!171 = metadata !{metadata !"strchr"}
!172 = metadata !{i8* (%struct.lua_State*, i8*, i32)* @lua_pushlstring}
!173 = metadata !{metadata !"lua_pushlstring"}
!174 = metadata !{i8* (%struct.lua_State*, i8*, i8*, i8*)* @findfile}
!175 = metadata !{metadata !"findfile"}
!176 = metadata !{i32 (%struct.lua_State*, i8*, i8*)* @loadfunc}
!177 = metadata !{metadata !"loadfunc"}
!178 = metadata !{i32 (%struct.lua_State*, i32, i8*)* @checkload}
!179 = metadata !{metadata !"checkload"}
!180 = metadata !{i8* (%struct.lua_State*, i8*, ...)* @lua_pushfstring}
!181 = metadata !{metadata !"lua_pushfstring"}
!182 = metadata !{i32 (%struct.lua_State*, i8*, i8*)* @lookforfunc}
!183 = metadata !{metadata !"lookforfunc"}
!184 = metadata !{i8* (%struct.lua_State*, i8*)* @checkclib}
!185 = metadata !{metadata !"checkclib"}
!186 = metadata !{i8* (%struct.lua_State*, i8*, i32)* @lsys_load}
!187 = metadata !{metadata !"lsys_load"}
!188 = metadata !{void (%struct.lua_State*, i8*, i8*)* @addtoclib}
!189 = metadata !{metadata !"addtoclib"}
!190 = metadata !{i32 (%struct.lua_State*)* (%struct.lua_State*, i8*, i8*)* @lsys_sym}
!191 = metadata !{metadata !"lsys_sym"}
!192 = metadata !{i32 (%struct.lua_State*, i32, i8*)* @lua_rawgetp}
!193 = metadata !{metadata !"lua_rawgetp"}
!194 = metadata !{void (%struct.lua_State*, i8*)* @lua_pushlightuserdata}
!195 = metadata !{metadata !"lua_pushlightuserdata"}
!196 = metadata !{i64 (%struct.lua_State*, i32)* @luaL_len}
!197 = metadata !{metadata !"luaL_len"}
!198 = metadata !{i8* (%struct.lua_State*, i32)* @lua_touserdata}
!199 = metadata !{metadata !"lua_touserdata"}
!200 = metadata !{i8* (%struct.lua_State*, i8*, i8*, i8*, i8*)* @searchpath}
!201 = metadata !{metadata !"searchpath"}
!202 = metadata !{i8* (%struct.lua_State*, i8*)* @pushnexttemplate}
!203 = metadata !{metadata !"pushnexttemplate"}
!204 = metadata !{i32 (i8*)* @readable}
!205 = metadata !{metadata !"readable"}
!206 = metadata !{%struct._IO_FILE* (i8*, i8*)* @fopen64}
!207 = metadata !{metadata !"fopen"}
!208 = metadata !{i32 (%struct._IO_FILE*)* @fclose}
!209 = metadata !{metadata !"fclose"}
!210 = metadata !{i32 (i8*)* @strlen}
!211 = metadata !{metadata !"strlen"}
!212 = metadata !{i32 (%struct.lua_State*, i8*, i8*)* @luaL_loadfilex}
!213 = metadata !{metadata !"luaL_loadfilex"}
!214 = metadata !{i32 (%struct.lua_State*)* @ll_loadlib}
!215 = metadata !{metadata !"ll_loadlib"}
!216 = metadata !{i32 (%struct.lua_State*)* @ll_searchpath}
!217 = metadata !{metadata !"ll_searchpath"}
!218 = metadata !{i8* (%struct.lua_State*, i32, i8*, i32*)* @luaL_optlstring}
!219 = metadata !{metadata !"luaL_optlstring"}
!220 = metadata !{void (%struct.lua_State*)* @lua_pushnil}
!221 = metadata !{metadata !"lua_pushnil"}
!222 = metadata !{i32 (%struct.lua_State*)* @gctm}
!223 = metadata !{metadata !"gctm"}
!224 = metadata !{i32 (%struct.lua_State*, i32)* @lua_setmetatable}
!225 = metadata !{metadata !"lua_setmetatable"}
!226 = metadata !{void (%struct.lua_State*, i32, i8*)* @lua_rawsetp}
!227 = metadata !{metadata !"lua_rawsetp"}
!228 = metadata !{void (i8*)* @lsys_unloadlib}
!229 = metadata !{metadata !"lsys_unloadlib"}
!230 = metadata !{metadata !"int.lua_State *.1"}
!231 = metadata !{metadata !"void.lua_State *.1"}
!232 = metadata !{metadata !"void.lua_State *.1.lua_Number.0.size_t.0"}
!233 = metadata !{metadata !"void.lua_State *.1.int.0.int.0"}
!234 = metadata !{metadata !"void.lua_State *.1.const luaL_Reg *.1.int.0"}
!235 = metadata !{metadata !"void.lua_State *.1.const char *.1.const char *.1.const char *.1.const char *.1"}
!236 = metadata !{metadata !"const char .lua_State *.1.const char *.1"}
!237 = metadata !{metadata !"void.lua_State *.1.int.0.const char *.1"}
!238 = metadata !{metadata !"int.lua_State *.1.int.0.const char *.1"}
!239 = metadata !{metadata !"int.lua_State *.1.int.0.lua_Integer.0"}
!240 = metadata !{metadata !"void.lua_State *.1.int.0"}
!241 = metadata !{metadata !"const char .lua_State *.1.int.0.size_t *.1"}
!242 = metadata !{metadata !"int.lua_State *.1.int.0"}
!243 = metadata !{metadata !"void.lua_State *.1.const char *.1"}
!244 = metadata !{metadata !"void.lua_State *.1.int.0.int.0.lua_KContext.0.lua_KFunction.1"}
!245 = metadata !{metadata !"void.lua_State *.1.luaL_Buffer *.1"}
!246 = metadata !{metadata !"int.lua_State *.1.const char *.1"}
!247 = metadata !{metadata !"void.luaL_Buffer *.1"}
!248 = metadata !{metadata !"char .const char *.1"}
!249 = metadata !{metadata !"const char .lua_State *.1.const char *.1.const char *.1.const char *.1"}
!250 = metadata !{metadata !"void.lua_State *.1.lua_CFunction.1.int.0"}
!251 = metadata !{metadata !"void.lua_State *.1.int.0.lua_Integer.0"}
!252 = metadata !{metadata !"char .const char *.1.int.0"}
!253 = metadata !{metadata !"const char .lua_State *.1.const char *.1.size_t.0"}
!254 = metadata !{metadata !"int.lua_State *.1.const char *.1.const char *.1"}
!255 = metadata !{metadata !"void .lua_State *.1.const char *.1"}
!256 = metadata !{metadata !"void .lua_State *.1.const char *.1.int.0"}
!257 = metadata !{metadata !"void.lua_State *.1.const char *.1.void *.1"}
!258 = metadata !{metadata !"lua_CFunction.lua_State *.1.void *.1.const char *.1"}
!259 = metadata !{metadata !"int.lua_State *.1.int.0.const void *.1"}
!260 = metadata !{metadata !"void.lua_State *.1.void *.1"}
!261 = metadata !{metadata !"lua_Integer.lua_State *.1.int.0"}
!262 = metadata !{metadata !"void .lua_State *.1.int.0"}
!263 = metadata !{metadata !"const char .lua_State *.1.const char *.1.const char *.1.const char *.1.const char *.1"}
!264 = metadata !{metadata !"int.const char *.1"}
!265 = metadata !{metadata !"FILE .const char *restrict.1.const char *restrict.1"}
!266 = metadata !{metadata !"int.FILE *.1"}
!267 = metadata !{metadata !"unsigned int.const char *.1"}
!268 = metadata !{metadata !"const char .lua_State *.1.int.0.const char *.1.size_t *.1"}
!269 = metadata !{metadata !"void.lua_State *.1.int.0.const void *.1"}
!270 = metadata !{metadata !"void.void *.1"}
!271 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lualib.h"}
!272 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/loadlib.c"}
!273 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lauxlib.h"}
!274 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lua.h"}
!275 = metadata !{metadata !"D:/Xilinx/SDx/2016.3/SDK/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include\5Cstdlib.h"}
!276 = metadata !{metadata !"D:/Xilinx/SDx/2016.3/SDK/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include\5Cstring.h"}
!277 = metadata !{metadata !"D:/Xilinx/SDx/2016.3/SDK/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include\5Cstdio.h"}
!278 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!279 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!280 = metadata !{i32 1, metadata !"wchar_size", i32 4}
!281 = metadata !{i32 1, metadata !"min_enum_size", i32 4}
!282 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
!283 = metadata !{i32 786689, metadata !4, metadata !"L", metadata !6, i32 16777979, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 763]
!284 = metadata !{i32 763, i32 44, metadata !4, null}
!285 = metadata !{i32 764, i32 3, metadata !4, null}
!286 = metadata !{i32 765, i32 3, metadata !4, null}
!287 = metadata !{i32 766, i32 3, metadata !4, null}
!288 = metadata !{i32 768, i32 3, metadata !4, null}
!289 = metadata !{i32 770, i32 3, metadata !4, null}
!290 = metadata !{i32 772, i32 3, metadata !4, null}
!291 = metadata !{i32 774, i32 3, metadata !4, null}
!292 = metadata !{i32 776, i32 3, metadata !4, null}
!293 = metadata !{i32 777, i32 3, metadata !4, null}
!294 = metadata !{i32 779, i32 3, metadata !4, null}
!295 = metadata !{i32 780, i32 3, metadata !4, null}
!296 = metadata !{i32 781, i32 3, metadata !4, null}
!297 = metadata !{i32 782, i32 3, metadata !4, null}
!298 = metadata !{i32 783, i32 3, metadata !4, null}
!299 = metadata !{i32 784, i32 3, metadata !4, null}
!300 = metadata !{i32 785, i32 3, metadata !4, null}
!301 = metadata !{i32 786689, metadata !68, metadata !"L", metadata !6, i32 16777969, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 753]
!302 = metadata !{i32 753, i32 42, metadata !68, null}
!303 = metadata !{i32 754, i32 3, metadata !68, null}
!304 = metadata !{i32 755, i32 3, metadata !68, null}
!305 = metadata !{i32 756, i32 3, metadata !68, null}
!306 = metadata !{i32 757, i32 3, metadata !68, null}
!307 = metadata !{i32 758, i32 3, metadata !68, null}
!308 = metadata !{i32 759, i32 3, metadata !68, null}
!309 = metadata !{i32 760, i32 1, metadata !68, null}
!310 = metadata !{i32 786689, metadata !25, metadata !"L", metadata !6, i32 16777945, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 729]
!311 = metadata !{i32 729, i32 46, metadata !25, null}
!312 = metadata !{i32 786688, metadata !25, metadata !"i", metadata !6, i32 732, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 732]
!313 = metadata !{i32 732, i32 7, metadata !25, null}
!314 = metadata !{i32 734, i32 3, metadata !25, null}
!315 = metadata !{i32 736, i32 8, metadata !316, null}
!316 = metadata !{i32 786443, metadata !5, metadata !25, i32 736, i32 3, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/loadlib.c]
!317 = metadata !{i32 736, i32 8, metadata !318, null}
!318 = metadata !{i32 786443, metadata !5, metadata !319, i32 736, i32 8, i32 2, i32 52} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/loadlib.c]
!319 = metadata !{i32 786443, metadata !5, metadata !316, i32 736, i32 8, i32 1, i32 51} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/loadlib.c]
!320 = metadata !{i32 737, i32 5, metadata !321, null}
!321 = metadata !{i32 786443, metadata !5, metadata !316, i32 736, i32 40, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/loadlib.c]
!322 = metadata !{i32 738, i32 5, metadata !321, null}
!323 = metadata !{i32 739, i32 5, metadata !321, null}
!324 = metadata !{i32 740, i32 3, metadata !321, null}
!325 = metadata !{i32 736, i32 35, metadata !316, null}
!326 = metadata !{i32 745, i32 3, metadata !25, null}
!327 = metadata !{i32 746, i32 1, metadata !25, null}
!328 = metadata !{i32 786689, metadata !21, metadata !"L", metadata !6, i32 16777901, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 685]
!329 = metadata !{i32 685, i32 33, metadata !21, null}
!330 = metadata !{i32 786689, metadata !21, metadata !"fieldname", metadata !6, i32 33555117, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fieldname] [line 685]
!331 = metadata !{i32 685, i32 48, metadata !21, null}
!332 = metadata !{i32 786689, metadata !21, metadata !"envname1", metadata !6, i32 50332333, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [envname1] [line 685]
!333 = metadata !{i32 685, i32 71, metadata !21, null}
!334 = metadata !{i32 786689, metadata !21, metadata !"envname2", metadata !6, i32 67109550, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [envname2] [line 686]
!335 = metadata !{i32 686, i32 48, metadata !21, null}
!336 = metadata !{i32 786689, metadata !21, metadata !"def", metadata !6, i32 83886766, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [def] [line 686]
!337 = metadata !{i32 686, i32 70, metadata !21, null}
!338 = metadata !{i32 786688, metadata !21, metadata !"path", metadata !6, i32 687, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [path] [line 687]
!339 = metadata !{i32 687, i32 15, metadata !21, null}
!340 = metadata !{i32 687, i32 22, metadata !21, null}
!341 = metadata !{i32 688, i32 7, metadata !342, null}
!342 = metadata !{i32 786443, metadata !5, metadata !21, i32 688, i32 7, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/loadlib.c]
!343 = metadata !{i32 689, i32 12, metadata !342, null}
!344 = metadata !{i32 690, i32 7, metadata !345, null}
!345 = metadata !{i32 786443, metadata !5, metadata !21, i32 690, i32 7, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/loadlib.c]
!346 = metadata !{i32 690, i32 23, metadata !347, null}
!347 = metadata !{i32 786443, metadata !5, metadata !345, i32 690, i32 23, i32 1, i32 53} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/loadlib.c]
!348 = metadata !{i32 691, i32 5, metadata !345, null}
!349 = metadata !{i32 694, i32 12, metadata !350, null}
!350 = metadata !{i32 786443, metadata !5, metadata !345, i32 692, i32 8, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/loadlib.c]
!351 = metadata !{i32 696, i32 5, metadata !350, null}
!352 = metadata !{i32 697, i32 5, metadata !350, null}
!353 = metadata !{i32 700, i32 3, metadata !21, null}
!354 = metadata !{i32 701, i32 1, metadata !21, null}
!355 = metadata !{i32 786689, metadata !14, metadata !"L", metadata !6, i32 16777774, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 558]
!356 = metadata !{i32 558, i32 35, metadata !14, null}
!357 = metadata !{i32 786688, metadata !14, metadata !"name", metadata !6, i32 559, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [name] [line 559]
!358 = metadata !{i32 559, i32 15, metadata !14, null}
!359 = metadata !{i32 559, i32 22, metadata !14, null}
!360 = metadata !{i32 560, i32 3, metadata !14, null}
!361 = metadata !{i32 561, i32 3, metadata !14, null}
!362 = metadata !{i32 562, i32 3, metadata !14, null}
!363 = metadata !{i32 563, i32 7, metadata !364, null}
!364 = metadata !{i32 786443, metadata !5, metadata !14, i32 563, i32 7, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/loadlib.c]
!365 = metadata !{i32 564, i32 5, metadata !364, null}
!366 = metadata !{i32 566, i32 3, metadata !14, null}
!367 = metadata !{i32 567, i32 3, metadata !14, null}
!368 = metadata !{i32 568, i32 3, metadata !14, null}
!369 = metadata !{i32 569, i32 3, metadata !14, null}
!370 = metadata !{i32 570, i32 3, metadata !14, null}
!371 = metadata !{i32 571, i32 8, metadata !372, null}
!372 = metadata !{i32 786443, metadata !5, metadata !14, i32 571, i32 7, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/loadlib.c]
!373 = metadata !{i32 572, i32 5, metadata !372, null}
!374 = metadata !{i32 573, i32 7, metadata !375, null}
!375 = metadata !{i32 786443, metadata !5, metadata !14, i32 573, i32 7, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/loadlib.c]
!376 = metadata !{i32 574, i32 5, metadata !377, null}
!377 = metadata !{i32 786443, metadata !5, metadata !375, i32 573, i32 45, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/loadlib.c]
!378 = metadata !{i32 575, i32 5, metadata !377, null}
!379 = metadata !{i32 576, i32 5, metadata !377, null}
!380 = metadata !{i32 577, i32 3, metadata !377, null}
!381 = metadata !{i32 578, i32 3, metadata !14, null}
!382 = metadata !{i32 579, i32 1, metadata !14, null}
!383 = metadata !{i32 786689, metadata !15, metadata !"L", metadata !6, i32 16777746, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 530]
!384 = metadata !{i32 530, i32 36, metadata !15, null}
!385 = metadata !{i32 786689, metadata !15, metadata !"name", metadata !6, i32 33554962, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 530]
!386 = metadata !{i32 530, i32 51, metadata !15, null}
!387 = metadata !{i32 786688, metadata !15, metadata !"i", metadata !6, i32 531, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 531]
!388 = metadata !{i32 531, i32 7, metadata !15, null}
!389 = metadata !{i32 786688, metadata !15, metadata !"msg", metadata !6, i32 532, metadata !390, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [msg] [line 532]
!390 = metadata !{i32 786454, metadata !78, null, metadata !"luaL_Buffer", i32 146, i64 0, i64 0, i64 0, i32 0, metadata !391} ; [ DW_TAG_typedef ] [luaL_Buffer] [line 146, size 0, align 0, offset 0] [from luaL_Buffer]
!391 = metadata !{i32 786451, metadata !78, null, metadata !"luaL_Buffer", i32 140, i64 65664, i64 32, i32 0, i32 0, null, metadata !392, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [luaL_Buffer] [line 140, size 65664, align 32, offset 0] [def] [from ]
!392 = metadata !{metadata !393, metadata !395, metadata !399, metadata !400, metadata !401}
!393 = metadata !{i32 786445, metadata !78, metadata !391, metadata !"b", i32 141, i64 32, i64 32, i64 0, i32 0, metadata !394} ; [ DW_TAG_member ] [b] [line 141, size 32, align 32, offset 0] [from ]
!394 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !20} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from char]
!395 = metadata !{i32 786445, metadata !78, metadata !391, metadata !"size", i32 142, i64 32, i64 32, i64 32, i32 0, metadata !396} ; [ DW_TAG_member ] [size] [line 142, size 32, align 32, offset 32] [from size_t]
!396 = metadata !{i32 786454, metadata !397, null, metadata !"size_t", i32 216, i64 0, i64 0, i64 0, i32 0, metadata !398} ; [ DW_TAG_typedef ] [size_t] [line 216, size 0, align 0, offset 0] [from unsigned int]
!397 = metadata !{metadata !"D:/Xilinx/SDx/2016.3/SDK/gnu/aarch32/nt/gcc-arm-linux-gnueabi/lib/gcc/arm-linux-gnueabihf/5.2.1/include\5Cstddef.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!398 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!399 = metadata !{i32 786445, metadata !78, metadata !391, metadata !"n", i32 143, i64 32, i64 32, i64 64, i32 0, metadata !396} ; [ DW_TAG_member ] [n] [line 143, size 32, align 32, offset 64] [from size_t]
!400 = metadata !{i32 786445, metadata !78, metadata !391, metadata !"L", i32 144, i64 32, i64 32, i64 96, i32 0, metadata !10} ; [ DW_TAG_member ] [L] [line 144, size 32, align 32, offset 96] [from ]
!401 = metadata !{i32 786445, metadata !78, metadata !391, metadata !"initb", i32 145, i64 65536, i64 8, i64 128, i32 0, metadata !402} ; [ DW_TAG_member ] [initb] [line 145, size 65536, align 8, offset 128] [from ]
!402 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 65536, i64 8, i32 0, i32 0, metadata !20, metadata !403, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 65536, align 8, offset 0] [from char]
!403 = metadata !{metadata !404}
!404 = metadata !{i32 786465, i64 0, i64 8192}    ; [ DW_TAG_subrange_type ] [0, 8191]
!405 = metadata !{i32 532, i32 15, metadata !15, null}
!406 = metadata !{i32 533, i32 3, metadata !15, null}
!407 = metadata !{i32 535, i32 7, metadata !408, null}
!408 = metadata !{i32 786443, metadata !5, metadata !15, i32 535, i32 7, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/loadlib.c]
!409 = metadata !{i32 536, i32 5, metadata !408, null}
!410 = metadata !{i32 538, i32 8, metadata !411, null}
!411 = metadata !{i32 786443, metadata !5, metadata !15, i32 538, i32 3, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/loadlib.c]
!412 = metadata !{i32 539, i32 9, metadata !413, null}
!413 = metadata !{i32 786443, metadata !5, metadata !414, i32 539, i32 9, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/loadlib.c]
!414 = metadata !{i32 786443, metadata !5, metadata !411, i32 538, i32 22, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/loadlib.c]
!415 = metadata !{i32 540, i32 7, metadata !416, null}
!416 = metadata !{i32 786443, metadata !5, metadata !413, i32 539, i32 43, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/loadlib.c]
!417 = metadata !{i32 541, i32 7, metadata !416, null}
!418 = metadata !{i32 542, i32 7, metadata !416, null}
!419 = metadata !{i32 542, i32 55, metadata !416, null}
!420 = metadata !{i32 543, i32 5, metadata !416, null}
!421 = metadata !{i32 544, i32 5, metadata !414, null}
!422 = metadata !{i32 545, i32 5, metadata !414, null}
!423 = metadata !{i32 546, i32 9, metadata !424, null}
!424 = metadata !{i32 786443, metadata !5, metadata !414, i32 546, i32 9, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/loadlib.c]
!425 = metadata !{i32 555, i32 1, metadata !15, null}
!426 = metadata !{i32 548, i32 14, metadata !427, null}
!427 = metadata !{i32 786443, metadata !5, metadata !424, i32 548, i32 14, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/loadlib.c]
!428 = metadata !{i32 549, i32 7, metadata !429, null}
!429 = metadata !{i32 786443, metadata !5, metadata !427, i32 548, i32 35, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/loadlib.c]
!430 = metadata !{i32 550, i32 7, metadata !429, null}
!431 = metadata !{i32 551, i32 5, metadata !429, null}
!432 = metadata !{i32 553, i32 7, metadata !427, null}
!433 = metadata !{i32 554, i32 3, metadata !414, null}
!434 = metadata !{i32 538, i32 17, metadata !411, null}
!435 = metadata !{i32 786689, metadata !24, metadata !"L", metadata !6, i32 16777892, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 676]
!436 = metadata !{i32 676, i32 30, metadata !24, null}
!437 = metadata !{i32 786688, metadata !24, metadata !"b", metadata !6, i32 677, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b] [line 677]
!438 = metadata !{i32 677, i32 7, metadata !24, null}
!439 = metadata !{i32 678, i32 3, metadata !24, null}
!440 = metadata !{i32 679, i32 7, metadata !24, null}
!441 = metadata !{i32 680, i32 3, metadata !24, null}
!442 = metadata !{i32 681, i32 3, metadata !24, null}
!443 = metadata !{i32 786689, metadata !65, metadata !"L", metadata !6, i32 16777737, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 521]
!444 = metadata !{i32 521, i32 41, metadata !65, null}
!445 = metadata !{i32 786688, metadata !65, metadata !"name", metadata !6, i32 522, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [name] [line 522]
!446 = metadata !{i32 522, i32 15, metadata !65, null}
!447 = metadata !{i32 522, i32 22, metadata !65, null}
!448 = metadata !{i32 523, i32 3, metadata !65, null}
!449 = metadata !{i32 524, i32 7, metadata !450, null}
!450 = metadata !{i32 786443, metadata !5, metadata !65, i32 524, i32 7, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/loadlib.c]
!451 = metadata !{i32 525, i32 5, metadata !450, null}
!452 = metadata !{i32 526, i32 3, metadata !65, null}
!453 = metadata !{i32 786689, metadata !64, metadata !"L", metadata !6, i32 16777672, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 456]
!454 = metadata !{i32 456, i32 37, metadata !64, null}
!455 = metadata !{i32 786688, metadata !64, metadata !"filename", metadata !6, i32 457, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [filename] [line 457]
!456 = metadata !{i32 457, i32 15, metadata !64, null}
!457 = metadata !{i32 786688, metadata !64, metadata !"name", metadata !6, i32 458, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [name] [line 458]
!458 = metadata !{i32 458, i32 15, metadata !64, null}
!459 = metadata !{i32 458, i32 22, metadata !64, null}
!460 = metadata !{i32 459, i32 14, metadata !64, null}
!461 = metadata !{i32 460, i32 7, metadata !462, null}
!462 = metadata !{i32 786443, metadata !5, metadata !64, i32 460, i32 7, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/loadlib.c]
!463 = metadata !{i32 460, i32 25, metadata !464, null}
!464 = metadata !{i32 786443, metadata !5, metadata !462, i32 460, i32 25, i32 1, i32 54} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/loadlib.c]
!465 = metadata !{i32 461, i32 10, metadata !64, null}
!466 = metadata !{i32 461, i32 24, metadata !64, null}
!467 = metadata !{i32 462, i32 1, metadata !64, null}
!468 = metadata !{i32 786689, metadata !63, metadata !"L", metadata !6, i32 16777707, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 491]
!469 = metadata !{i32 491, i32 35, metadata !63, null}
!470 = metadata !{i32 786688, metadata !63, metadata !"name", metadata !6, i32 492, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [name] [line 492]
!471 = metadata !{i32 492, i32 15, metadata !63, null}
!472 = metadata !{i32 492, i32 22, metadata !63, null}
!473 = metadata !{i32 786688, metadata !63, metadata !"filename", metadata !6, i32 493, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [filename] [line 493]
!474 = metadata !{i32 493, i32 15, metadata !63, null}
!475 = metadata !{i32 493, i32 26, metadata !63, null}
!476 = metadata !{i32 494, i32 7, metadata !477, null}
!477 = metadata !{i32 786443, metadata !5, metadata !63, i32 494, i32 7, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/loadlib.c]
!478 = metadata !{i32 494, i32 25, metadata !479, null}
!479 = metadata !{i32 786443, metadata !5, metadata !477, i32 494, i32 25, i32 1, i32 55} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/loadlib.c]
!480 = metadata !{i32 495, i32 10, metadata !63, null}
!481 = metadata !{i32 495, i32 24, metadata !63, null}
!482 = metadata !{i32 496, i32 1, metadata !63, null}
!483 = metadata !{i32 786689, metadata !28, metadata !"L", metadata !6, i32 16777715, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 499]
!484 = metadata !{i32 499, i32 39, metadata !28, null}
!485 = metadata !{i32 786688, metadata !28, metadata !"filename", metadata !6, i32 500, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [filename] [line 500]
!486 = metadata !{i32 500, i32 15, metadata !28, null}
!487 = metadata !{i32 786688, metadata !28, metadata !"name", metadata !6, i32 501, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [name] [line 501]
!488 = metadata !{i32 501, i32 15, metadata !28, null}
!489 = metadata !{i32 501, i32 22, metadata !28, null}
!490 = metadata !{i32 786688, metadata !28, metadata !"p", metadata !6, i32 502, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 502]
!491 = metadata !{i32 502, i32 15, metadata !28, null}
!492 = metadata !{i32 502, i32 19, metadata !28, null}
!493 = metadata !{i32 786688, metadata !28, metadata !"stat", metadata !6, i32 503, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [stat] [line 503]
!494 = metadata !{i32 503, i32 7, metadata !28, null}
!495 = metadata !{i32 504, i32 7, metadata !496, null}
!496 = metadata !{i32 786443, metadata !5, metadata !28, i32 504, i32 7, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/loadlib.c]
!497 = metadata !{i32 504, i32 18, metadata !498, null}
!498 = metadata !{i32 786443, metadata !5, metadata !496, i32 504, i32 18, i32 1, i32 56} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/loadlib.c]
!499 = metadata !{i32 505, i32 3, metadata !28, null}
!500 = metadata !{i32 506, i32 14, metadata !28, null}
!501 = metadata !{i32 506, i32 26, metadata !28, null}
!502 = metadata !{i32 507, i32 7, metadata !503, null}
!503 = metadata !{i32 786443, metadata !5, metadata !28, i32 507, i32 7, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/loadlib.c]
!504 = metadata !{i32 507, i32 25, metadata !505, null}
!505 = metadata !{i32 786443, metadata !5, metadata !503, i32 507, i32 25, i32 1, i32 57} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/loadlib.c]
!506 = metadata !{i32 508, i32 15, metadata !507, null}
!507 = metadata !{i32 786443, metadata !5, metadata !28, i32 508, i32 7, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/loadlib.c]
!508 = metadata !{i32 509, i32 9, metadata !509, null}
!509 = metadata !{i32 786443, metadata !5, metadata !510, i32 509, i32 9, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/loadlib.c]
!510 = metadata !{i32 786443, metadata !5, metadata !507, i32 508, i32 50, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/loadlib.c]
!511 = metadata !{i32 510, i32 14, metadata !509, null}
!512 = metadata !{i32 512, i32 7, metadata !513, null}
!513 = metadata !{i32 786443, metadata !5, metadata !509, i32 511, i32 10, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/loadlib.c]
!514 = metadata !{i32 513, i32 7, metadata !513, null}
!515 = metadata !{i32 516, i32 3, metadata !28, null}
!516 = metadata !{i32 517, i32 3, metadata !28, null}
!517 = metadata !{i32 518, i32 1, metadata !28, null}
!518 = metadata !{i32 786689, metadata !51, metadata !"L", metadata !6, i32 16777649, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 433]
!519 = metadata !{i32 433, i32 41, metadata !51, null}
!520 = metadata !{i32 786689, metadata !51, metadata !"name", metadata !6, i32 33554865, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 433]
!521 = metadata !{i32 433, i32 56, metadata !51, null}
!522 = metadata !{i32 786689, metadata !51, metadata !"pname", metadata !6, i32 50332082, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pname] [line 434]
!523 = metadata !{i32 434, i32 56, metadata !51, null}
!524 = metadata !{i32 786689, metadata !51, metadata !"dirsep", metadata !6, i32 67109299, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dirsep] [line 435]
!525 = metadata !{i32 435, i32 56, metadata !51, null}
!526 = metadata !{i32 786688, metadata !51, metadata !"path", metadata !6, i32 436, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [path] [line 436]
!527 = metadata !{i32 436, i32 15, metadata !51, null}
!528 = metadata !{i32 437, i32 3, metadata !51, null}
!529 = metadata !{i32 438, i32 10, metadata !51, null}
!530 = metadata !{i32 439, i32 7, metadata !531, null}
!531 = metadata !{i32 786443, metadata !5, metadata !51, i32 439, i32 7, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/loadlib.c]
!532 = metadata !{i32 440, i32 5, metadata !531, null}
!533 = metadata !{i32 441, i32 10, metadata !51, null}
!534 = metadata !{i32 786689, metadata !32, metadata !"L", metadata !6, i32 16777689, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 473]
!535 = metadata !{i32 473, i32 33, metadata !32, null}
!536 = metadata !{i32 786689, metadata !32, metadata !"filename", metadata !6, i32 33554905, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [filename] [line 473]
!537 = metadata !{i32 473, i32 48, metadata !32, null}
!538 = metadata !{i32 786689, metadata !32, metadata !"modname", metadata !6, i32 50332121, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [modname] [line 473]
!539 = metadata !{i32 473, i32 70, metadata !32, null}
!540 = metadata !{i32 786688, metadata !32, metadata !"openfunc", metadata !6, i32 474, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [openfunc] [line 474]
!541 = metadata !{i32 474, i32 15, metadata !32, null}
!542 = metadata !{i32 786688, metadata !32, metadata !"mark", metadata !6, i32 475, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mark] [line 475]
!543 = metadata !{i32 475, i32 15, metadata !32, null}
!544 = metadata !{i32 476, i32 13, metadata !32, null}
!545 = metadata !{i32 477, i32 10, metadata !32, null}
!546 = metadata !{i32 478, i32 7, metadata !547, null}
!547 = metadata !{i32 786443, metadata !5, metadata !32, i32 478, i32 7, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/loadlib.c]
!548 = metadata !{i32 786688, metadata !549, metadata !"stat", metadata !6, i32 479, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [stat] [line 479]
!549 = metadata !{i32 786443, metadata !5, metadata !547, i32 478, i32 13, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/loadlib.c]
!550 = metadata !{i32 479, i32 9, metadata !549, null}
!551 = metadata !{i32 480, i32 16, metadata !549, null}
!552 = metadata !{i32 481, i32 16, metadata !549, null}
!553 = metadata !{i32 482, i32 12, metadata !549, null}
!554 = metadata !{i32 483, i32 9, metadata !555, null}
!555 = metadata !{i32 786443, metadata !5, metadata !549, i32 483, i32 9, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/loadlib.c]
!556 = metadata !{i32 483, i32 26, metadata !557, null}
!557 = metadata !{i32 786443, metadata !5, metadata !555, i32 483, i32 26, i32 1, i32 58} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/loadlib.c]
!558 = metadata !{i32 484, i32 5, metadata !549, null}
!559 = metadata !{i32 485, i32 3, metadata !549, null}
!560 = metadata !{i32 486, i32 14, metadata !32, null}
!561 = metadata !{i32 487, i32 10, metadata !32, null}
!562 = metadata !{i32 488, i32 1, metadata !32, null}
!563 = metadata !{i32 786689, metadata !29, metadata !"L", metadata !6, i32 16777661, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 445]
!564 = metadata !{i32 445, i32 34, metadata !29, null}
!565 = metadata !{i32 786689, metadata !29, metadata !"stat", metadata !6, i32 33554877, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [stat] [line 445]
!566 = metadata !{i32 445, i32 41, metadata !29, null}
!567 = metadata !{i32 786689, metadata !29, metadata !"filename", metadata !6, i32 50332093, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [filename] [line 445]
!568 = metadata !{i32 445, i32 59, metadata !29, null}
!569 = metadata !{i32 446, i32 7, metadata !570, null}
!570 = metadata !{i32 786443, metadata !5, metadata !29, i32 446, i32 7, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/loadlib.c]
!571 = metadata !{i32 447, i32 5, metadata !572, null}
!572 = metadata !{i32 786443, metadata !5, metadata !570, i32 446, i32 13, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/loadlib.c]
!573 = metadata !{i32 448, i32 5, metadata !572, null}
!574 = metadata !{i32 451, i32 12, metadata !570, null}
!575 = metadata !{i32 452, i32 27, metadata !570, null}
!576 = metadata !{i32 452, i32 57, metadata !570, null}
!577 = metadata !{i32 453, i32 1, metadata !29, null}
!578 = metadata !{i32 786689, metadata !35, metadata !"L", metadata !6, i32 16777549, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 333]
!579 = metadata !{i32 333, i32 36, metadata !35, null}
!580 = metadata !{i32 786689, metadata !35, metadata !"path", metadata !6, i32 33554765, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [path] [line 333]
!581 = metadata !{i32 333, i32 51, metadata !35, null}
!582 = metadata !{i32 786689, metadata !35, metadata !"sym", metadata !6, i32 50331981, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sym] [line 333]
!583 = metadata !{i32 333, i32 69, metadata !35, null}
!584 = metadata !{i32 786688, metadata !35, metadata !"reg", metadata !6, i32 334, metadata !41, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [reg] [line 334]
!585 = metadata !{i32 334, i32 9, metadata !35, null}
!586 = metadata !{i32 334, i32 15, metadata !35, null}
!587 = metadata !{i32 335, i32 7, metadata !588, null}
!588 = metadata !{i32 786443, metadata !5, metadata !35, i32 335, i32 7, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/loadlib.c]
!589 = metadata !{i32 336, i32 11, metadata !590, null}
!590 = metadata !{i32 786443, metadata !5, metadata !588, i32 335, i32 20, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/loadlib.c]
!591 = metadata !{i32 337, i32 9, metadata !592, null}
!592 = metadata !{i32 786443, metadata !5, metadata !590, i32 337, i32 9, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/loadlib.c]
!593 = metadata !{i32 337, i32 22, metadata !594, null}
!594 = metadata !{i32 786443, metadata !5, metadata !592, i32 337, i32 22, i32 1, i32 59} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/loadlib.c]
!595 = metadata !{i32 338, i32 5, metadata !590, null}
!596 = metadata !{i32 339, i32 3, metadata !590, null}
!597 = metadata !{i32 340, i32 7, metadata !598, null}
!598 = metadata !{i32 786443, metadata !5, metadata !35, i32 340, i32 7, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/loadlib.c]
!599 = metadata !{i32 341, i32 5, metadata !600, null}
!600 = metadata !{i32 786443, metadata !5, metadata !598, i32 340, i32 20, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/loadlib.c]
!601 = metadata !{i32 342, i32 5, metadata !600, null}
!602 = metadata !{i32 786688, metadata !603, metadata !"f", metadata !6, i32 345, metadata !39, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [f] [line 345]
!603 = metadata !{i32 786443, metadata !5, metadata !598, i32 344, i32 8, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/loadlib.c]
!604 = metadata !{i32 345, i32 19, metadata !603, null}
!605 = metadata !{i32 345, i32 23, metadata !603, null}
!606 = metadata !{i32 346, i32 9, metadata !607, null}
!607 = metadata !{i32 786443, metadata !5, metadata !603, i32 346, i32 9, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/loadlib.c]
!608 = metadata !{i32 347, i32 7, metadata !607, null}
!609 = metadata !{i32 348, i32 5, metadata !603, null}
!610 = metadata !{i32 349, i32 5, metadata !603, null}
!611 = metadata !{i32 351, i32 1, metadata !35, null}
!612 = metadata !{i32 786689, metadata !48, metadata !"L", metadata !6, i32 16777494, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 278]
!613 = metadata !{i32 278, i32 36, metadata !48, null}
!614 = metadata !{i32 786689, metadata !48, metadata !"path", metadata !6, i32 33554710, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [path] [line 278]
!615 = metadata !{i32 278, i32 51, metadata !48, null}
!616 = metadata !{i32 786688, metadata !48, metadata !"plib", metadata !6, i32 279, metadata !41, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [plib] [line 279]
!617 = metadata !{i32 279, i32 9, metadata !48, null}
!618 = metadata !{i32 280, i32 3, metadata !48, null}
!619 = metadata !{i32 281, i32 3, metadata !48, null}
!620 = metadata !{i32 282, i32 10, metadata !48, null}
!621 = metadata !{i32 283, i32 3, metadata !48, null}
!622 = metadata !{i32 284, i32 3, metadata !48, null}
!623 = metadata !{i32 786689, metadata !45, metadata !"L", metadata !6, i32 16777474, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 258]
!624 = metadata !{i32 258, i32 36, metadata !45, null}
!625 = metadata !{i32 786689, metadata !45, metadata !"path", metadata !6, i32 33554690, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [path] [line 258]
!626 = metadata !{i32 258, i32 51, metadata !45, null}
!627 = metadata !{i32 786689, metadata !45, metadata !"seeglb", metadata !6, i32 50331906, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [seeglb] [line 258]
!628 = metadata !{i32 258, i32 61, metadata !45, null}
!629 = metadata !{i32 259, i32 3, metadata !45, null}
!630 = metadata !{i32 259, i32 17, metadata !45, null}
!631 = metadata !{i32 260, i32 3, metadata !45, null}
!632 = metadata !{i32 261, i32 3, metadata !45, null}
!633 = metadata !{i32 786689, metadata !42, metadata !"L", metadata !6, i32 16777508, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 292]
!634 = metadata !{i32 292, i32 35, metadata !42, null}
!635 = metadata !{i32 786689, metadata !42, metadata !"path", metadata !6, i32 33554724, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [path] [line 292]
!636 = metadata !{i32 292, i32 50, metadata !42, null}
!637 = metadata !{i32 786689, metadata !42, metadata !"plib", metadata !6, i32 50331940, metadata !41, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [plib] [line 292]
!638 = metadata !{i32 292, i32 62, metadata !42, null}
!639 = metadata !{i32 293, i32 3, metadata !42, null}
!640 = metadata !{i32 294, i32 3, metadata !42, null}
!641 = metadata !{i32 295, i32 3, metadata !42, null}
!642 = metadata !{i32 296, i32 3, metadata !42, null}
!643 = metadata !{i32 297, i32 3, metadata !42, null}
!644 = metadata !{i32 297, i32 22, metadata !42, null}
!645 = metadata !{i32 298, i32 3, metadata !42, null}
!646 = metadata !{i32 299, i32 1, metadata !42, null}
!647 = metadata !{i32 786689, metadata !36, metadata !"L", metadata !6, i32 16777481, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 265]
!648 = metadata !{i32 265, i32 43, metadata !36, null}
!649 = metadata !{i32 786689, metadata !36, metadata !"lib", metadata !6, i32 33554697, metadata !41, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [lib] [line 265]
!650 = metadata !{i32 265, i32 52, metadata !36, null}
!651 = metadata !{i32 786689, metadata !36, metadata !"sym", metadata !6, i32 50331913, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sym] [line 265]
!652 = metadata !{i32 265, i32 69, metadata !36, null}
!653 = metadata !{i32 266, i32 3, metadata !36, null}
!654 = metadata !{i32 266, i32 16, metadata !36, null}
!655 = metadata !{i32 267, i32 3, metadata !36, null}
!656 = metadata !{i32 268, i32 3, metadata !36, null}
!657 = metadata !{i32 786689, metadata !54, metadata !"L", metadata !6, i32 16777612, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 396]
!658 = metadata !{i32 396, i32 43, metadata !54, null}
!659 = metadata !{i32 786689, metadata !54, metadata !"name", metadata !6, i32 33554828, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 396]
!660 = metadata !{i32 396, i32 58, metadata !54, null}
!661 = metadata !{i32 786689, metadata !54, metadata !"path", metadata !6, i32 50332045, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [path] [line 397]
!662 = metadata !{i32 397, i32 58, metadata !54, null}
!663 = metadata !{i32 786689, metadata !54, metadata !"sep", metadata !6, i32 67109262, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sep] [line 398]
!664 = metadata !{i32 398, i32 58, metadata !54, null}
!665 = metadata !{i32 786689, metadata !54, metadata !"dirsep", metadata !6, i32 83886479, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dirsep] [line 399]
!666 = metadata !{i32 399, i32 58, metadata !54, null}
!667 = metadata !{i32 786688, metadata !54, metadata !"msg", metadata !6, i32 400, metadata !390, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [msg] [line 400]
!668 = metadata !{i32 400, i32 15, metadata !54, null}
!669 = metadata !{i32 401, i32 3, metadata !54, null}
!670 = metadata !{i32 402, i32 7, metadata !671, null}
!671 = metadata !{i32 786443, metadata !5, metadata !54, i32 402, i32 7, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/loadlib.c]
!672 = metadata !{i32 403, i32 12, metadata !671, null}
!673 = metadata !{i32 404, i32 3, metadata !54, null}
!674 = metadata !{i32 404, i32 18, metadata !675, null}
!675 = metadata !{i32 786443, metadata !5, metadata !54, i32 404, i32 18, i32 1, i32 60} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/loadlib.c]
!676 = metadata !{i32 786688, metadata !677, metadata !"filename", metadata !6, i32 405, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [filename] [line 405]
!677 = metadata !{i32 786443, metadata !5, metadata !54, i32 404, i32 54, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/loadlib.c]
!678 = metadata !{i32 405, i32 17, metadata !677, null}
!679 = metadata !{i32 405, i32 28, metadata !677, null}
!680 = metadata !{i32 405, i32 41, metadata !677, null}
!681 = metadata !{i32 407, i32 5, metadata !677, null}
!682 = metadata !{i32 408, i32 9, metadata !683, null}
!683 = metadata !{i32 786443, metadata !5, metadata !677, i32 408, i32 9, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/loadlib.c]
!684 = metadata !{i32 409, i32 7, metadata !683, null}
!685 = metadata !{i32 410, i32 5, metadata !677, null}
!686 = metadata !{i32 411, i32 5, metadata !677, null}
!687 = metadata !{i32 412, i32 5, metadata !677, null}
!688 = metadata !{i32 413, i32 3, metadata !677, null}
!689 = metadata !{i32 414, i32 3, metadata !54, null}
!690 = metadata !{i32 415, i32 3, metadata !54, null}
!691 = metadata !{i32 416, i32 1, metadata !54, null}
!692 = metadata !{i32 786689, metadata !60, metadata !"L", metadata !6, i32 16777601, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 385]
!693 = metadata !{i32 385, i32 49, metadata !60, null}
!694 = metadata !{i32 786689, metadata !60, metadata !"path", metadata !6, i32 33554817, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [path] [line 385]
!695 = metadata !{i32 385, i32 64, metadata !60, null}
!696 = metadata !{i32 786688, metadata !60, metadata !"l", metadata !6, i32 386, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [l] [line 386]
!697 = metadata !{i32 386, i32 15, metadata !60, null}
!698 = metadata !{i32 387, i32 3, metadata !60, null}
!699 = metadata !{i32 387, i32 3, metadata !700, null}
!700 = metadata !{i32 786443, metadata !5, metadata !701, i32 387, i32 3, i32 3, i32 63} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/loadlib.c]
!701 = metadata !{i32 786443, metadata !5, metadata !60, i32 387, i32 3, i32 1, i32 61} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/loadlib.c]
!702 = metadata !{i32 387, i32 34, metadata !703, null}
!703 = metadata !{i32 786443, metadata !5, metadata !60, i32 387, i32 34, i32 2, i32 62} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/loadlib.c]
!704 = metadata !{i32 388, i32 7, metadata !705, null}
!705 = metadata !{i32 786443, metadata !5, metadata !60, i32 388, i32 7, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/loadlib.c]
!706 = metadata !{i32 388, i32 22, metadata !707, null}
!707 = metadata !{i32 786443, metadata !5, metadata !705, i32 388, i32 22, i32 1, i32 64} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/loadlib.c]
!708 = metadata !{i32 389, i32 7, metadata !60, null}
!709 = metadata !{i32 390, i32 7, metadata !710, null}
!710 = metadata !{i32 786443, metadata !5, metadata !60, i32 390, i32 7, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/loadlib.c]
!711 = metadata !{i32 390, i32 18, metadata !712, null}
!712 = metadata !{i32 786443, metadata !5, metadata !710, i32 390, i32 18, i32 1, i32 65} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/loadlib.c]
!713 = metadata !{i32 390, i32 29, metadata !710, null}
!714 = metadata !{i32 391, i32 3, metadata !60, null}
!715 = metadata !{i32 392, i32 3, metadata !60, null}
!716 = metadata !{i32 393, i32 1, metadata !60, null}
!717 = metadata !{i32 786689, metadata !57, metadata !"filename", metadata !6, i32 16777593, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [filename] [line 377]
!718 = metadata !{i32 377, i32 34, metadata !57, null}
!719 = metadata !{i32 786688, metadata !57, metadata !"f", metadata !6, i32 378, metadata !720, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [f] [line 378]
!720 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !721} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from FILE]
!721 = metadata !{i32 786454, metadata !722, null, metadata !"FILE", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !723} ; [ DW_TAG_typedef ] [FILE] [line 48, size 0, align 0, offset 0] [from _IO_FILE]
!722 = metadata !{metadata !"D:/Xilinx/SDx/2016.3/SDK/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include\5Cstdio.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!723 = metadata !{i32 786451, metadata !724, null, metadata !"_IO_FILE", i32 245, i64 1216, i64 64, i32 0, i32 0, null, metadata !725, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [_IO_FILE] [line 245, size 1216, align 64, offset 0] [def] [from ]
!724 = metadata !{metadata !"D:/Xilinx/SDx/2016.3/SDK/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include\5Clibio.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!725 = metadata !{metadata !726, metadata !727, metadata !728, metadata !729, metadata !730, metadata !731, metadata !732, metadata !733, metadata !734, metadata !735, metadata !736, metadata !737, metadata !738, metadata !746, metadata !747, metadata !748, metadata !749, metadata !753, metadata !755, metadata !757, metadata !761, metadata !764, metadata !768, metadata !769, metadata !770, metadata !771, metadata !772, metadata !773, metadata !774}
!726 = metadata !{i32 786445, metadata !724, metadata !723, metadata !"_flags", i32 246, i64 32, i64 32, i64 0, i32 0, metadata !9} ; [ DW_TAG_member ] [_flags] [line 246, size 32, align 32, offset 0] [from int]
!727 = metadata !{i32 786445, metadata !724, metadata !723, metadata !"_IO_read_ptr", i32 251, i64 32, i64 32, i64 32, i32 0, metadata !394} ; [ DW_TAG_member ] [_IO_read_ptr] [line 251, size 32, align 32, offset 32] [from ]
!728 = metadata !{i32 786445, metadata !724, metadata !723, metadata !"_IO_read_end", i32 252, i64 32, i64 32, i64 64, i32 0, metadata !394} ; [ DW_TAG_member ] [_IO_read_end] [line 252, size 32, align 32, offset 64] [from ]
!729 = metadata !{i32 786445, metadata !724, metadata !723, metadata !"_IO_read_base", i32 253, i64 32, i64 32, i64 96, i32 0, metadata !394} ; [ DW_TAG_member ] [_IO_read_base] [line 253, size 32, align 32, offset 96] [from ]
!730 = metadata !{i32 786445, metadata !724, metadata !723, metadata !"_IO_write_base", i32 254, i64 32, i64 32, i64 128, i32 0, metadata !394} ; [ DW_TAG_member ] [_IO_write_base] [line 254, size 32, align 32, offset 128] [from ]
!731 = metadata !{i32 786445, metadata !724, metadata !723, metadata !"_IO_write_ptr", i32 255, i64 32, i64 32, i64 160, i32 0, metadata !394} ; [ DW_TAG_member ] [_IO_write_ptr] [line 255, size 32, align 32, offset 160] [from ]
!732 = metadata !{i32 786445, metadata !724, metadata !723, metadata !"_IO_write_end", i32 256, i64 32, i64 32, i64 192, i32 0, metadata !394} ; [ DW_TAG_member ] [_IO_write_end] [line 256, size 32, align 32, offset 192] [from ]
!733 = metadata !{i32 786445, metadata !724, metadata !723, metadata !"_IO_buf_base", i32 257, i64 32, i64 32, i64 224, i32 0, metadata !394} ; [ DW_TAG_member ] [_IO_buf_base] [line 257, size 32, align 32, offset 224] [from ]
!734 = metadata !{i32 786445, metadata !724, metadata !723, metadata !"_IO_buf_end", i32 258, i64 32, i64 32, i64 256, i32 0, metadata !394} ; [ DW_TAG_member ] [_IO_buf_end] [line 258, size 32, align 32, offset 256] [from ]
!735 = metadata !{i32 786445, metadata !724, metadata !723, metadata !"_IO_save_base", i32 260, i64 32, i64 32, i64 288, i32 0, metadata !394} ; [ DW_TAG_member ] [_IO_save_base] [line 260, size 32, align 32, offset 288] [from ]
!736 = metadata !{i32 786445, metadata !724, metadata !723, metadata !"_IO_backup_base", i32 261, i64 32, i64 32, i64 320, i32 0, metadata !394} ; [ DW_TAG_member ] [_IO_backup_base] [line 261, size 32, align 32, offset 320] [from ]
!737 = metadata !{i32 786445, metadata !724, metadata !723, metadata !"_IO_save_end", i32 262, i64 32, i64 32, i64 352, i32 0, metadata !394} ; [ DW_TAG_member ] [_IO_save_end] [line 262, size 32, align 32, offset 352] [from ]
!738 = metadata !{i32 786445, metadata !724, metadata !723, metadata !"_markers", i32 264, i64 32, i64 32, i64 384, i32 0, metadata !739} ; [ DW_TAG_member ] [_markers] [line 264, size 32, align 32, offset 384] [from ]
!739 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !740} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from _IO_marker]
!740 = metadata !{i32 786451, metadata !724, null, metadata !"_IO_marker", i32 160, i64 96, i64 32, i32 0, i32 0, null, metadata !741, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [_IO_marker] [line 160, size 96, align 32, offset 0] [def] [from ]
!741 = metadata !{metadata !742, metadata !743, metadata !745}
!742 = metadata !{i32 786445, metadata !724, metadata !740, metadata !"_next", i32 161, i64 32, i64 32, i64 0, i32 0, metadata !739} ; [ DW_TAG_member ] [_next] [line 161, size 32, align 32, offset 0] [from ]
!743 = metadata !{i32 786445, metadata !724, metadata !740, metadata !"_sbuf", i32 162, i64 32, i64 32, i64 32, i32 0, metadata !744} ; [ DW_TAG_member ] [_sbuf] [line 162, size 32, align 32, offset 32] [from ]
!744 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !723} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from _IO_FILE]
!745 = metadata !{i32 786445, metadata !724, metadata !740, metadata !"_pos", i32 166, i64 32, i64 32, i64 64, i32 0, metadata !9} ; [ DW_TAG_member ] [_pos] [line 166, size 32, align 32, offset 64] [from int]
!746 = metadata !{i32 786445, metadata !724, metadata !723, metadata !"_chain", i32 266, i64 32, i64 32, i64 416, i32 0, metadata !744} ; [ DW_TAG_member ] [_chain] [line 266, size 32, align 32, offset 416] [from ]
!747 = metadata !{i32 786445, metadata !724, metadata !723, metadata !"_fileno", i32 268, i64 32, i64 32, i64 448, i32 0, metadata !9} ; [ DW_TAG_member ] [_fileno] [line 268, size 32, align 32, offset 448] [from int]
!748 = metadata !{i32 786445, metadata !724, metadata !723, metadata !"_flags2", i32 272, i64 32, i64 32, i64 480, i32 0, metadata !9} ; [ DW_TAG_member ] [_flags2] [line 272, size 32, align 32, offset 480] [from int]
!749 = metadata !{i32 786445, metadata !724, metadata !723, metadata !"_old_offset", i32 274, i64 32, i64 32, i64 512, i32 0, metadata !750} ; [ DW_TAG_member ] [_old_offset] [line 274, size 32, align 32, offset 512] [from __off_t]
!750 = metadata !{i32 786454, metadata !751, null, metadata !"__off_t", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !752} ; [ DW_TAG_typedef ] [__off_t] [line 131, size 0, align 0, offset 0] [from long int]
!751 = metadata !{metadata !"D:/Xilinx/SDx/2016.3/SDK/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include\5Cbits/types.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!752 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!753 = metadata !{i32 786445, metadata !724, metadata !723, metadata !"_cur_column", i32 278, i64 16, i64 16, i64 544, i32 0, metadata !754} ; [ DW_TAG_member ] [_cur_column] [line 278, size 16, align 16, offset 544] [from unsigned short]
!754 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!755 = metadata !{i32 786445, metadata !724, metadata !723, metadata !"_vtable_offset", i32 279, i64 8, i64 8, i64 560, i32 0, metadata !756} ; [ DW_TAG_member ] [_vtable_offset] [line 279, size 8, align 8, offset 560] [from signed char]
!756 = metadata !{i32 786468, null, null, metadata !"signed char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [signed char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!757 = metadata !{i32 786445, metadata !724, metadata !723, metadata !"_shortbuf", i32 280, i64 8, i64 8, i64 568, i32 0, metadata !758} ; [ DW_TAG_member ] [_shortbuf] [line 280, size 8, align 8, offset 568] [from ]
!758 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8, i64 8, i32 0, i32 0, metadata !20, metadata !759, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 8, align 8, offset 0] [from char]
!759 = metadata !{metadata !760}
!760 = metadata !{i32 786465, i64 0, i64 1}       ; [ DW_TAG_subrange_type ] [0, 0]
!761 = metadata !{i32 786445, metadata !724, metadata !723, metadata !"_lock", i32 284, i64 32, i64 32, i64 576, i32 0, metadata !762} ; [ DW_TAG_member ] [_lock] [line 284, size 32, align 32, offset 576] [from ]
!762 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !763} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from _IO_lock_t]
!763 = metadata !{i32 786454, metadata !724, null, metadata !"_IO_lock_t", i32 154, i64 0, i64 0, i64 0, i32 0, null} ; [ DW_TAG_typedef ] [_IO_lock_t] [line 154, size 0, align 0, offset 0] [from ]
!764 = metadata !{i32 786445, metadata !724, metadata !723, metadata !"_offset", i32 293, i64 64, i64 64, i64 640, i32 0, metadata !765} ; [ DW_TAG_member ] [_offset] [line 293, size 64, align 64, offset 640] [from __off64_t]
!765 = metadata !{i32 786454, metadata !751, null, metadata !"__off64_t", i32 132, i64 0, i64 0, i64 0, i32 0, metadata !766} ; [ DW_TAG_typedef ] [__off64_t] [line 132, size 0, align 0, offset 0] [from __quad_t]
!766 = metadata !{i32 786454, metadata !751, null, metadata !"__quad_t", i32 55, i64 0, i64 0, i64 0, i32 0, metadata !767} ; [ DW_TAG_typedef ] [__quad_t] [line 55, size 0, align 0, offset 0] [from long long int]
!767 = metadata !{i32 786468, null, null, metadata !"long long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!768 = metadata !{i32 786445, metadata !724, metadata !723, metadata !"__pad1", i32 302, i64 32, i64 32, i64 704, i32 0, metadata !41} ; [ DW_TAG_member ] [__pad1] [line 302, size 32, align 32, offset 704] [from ]
!769 = metadata !{i32 786445, metadata !724, metadata !723, metadata !"__pad2", i32 303, i64 32, i64 32, i64 736, i32 0, metadata !41} ; [ DW_TAG_member ] [__pad2] [line 303, size 32, align 32, offset 736] [from ]
!770 = metadata !{i32 786445, metadata !724, metadata !723, metadata !"__pad3", i32 304, i64 32, i64 32, i64 768, i32 0, metadata !41} ; [ DW_TAG_member ] [__pad3] [line 304, size 32, align 32, offset 768] [from ]
!771 = metadata !{i32 786445, metadata !724, metadata !723, metadata !"__pad4", i32 305, i64 32, i64 32, i64 800, i32 0, metadata !41} ; [ DW_TAG_member ] [__pad4] [line 305, size 32, align 32, offset 800] [from ]
!772 = metadata !{i32 786445, metadata !724, metadata !723, metadata !"__pad5", i32 306, i64 32, i64 32, i64 832, i32 0, metadata !396} ; [ DW_TAG_member ] [__pad5] [line 306, size 32, align 32, offset 832] [from size_t]
!773 = metadata !{i32 786445, metadata !724, metadata !723, metadata !"_mode", i32 308, i64 32, i64 32, i64 864, i32 0, metadata !9} ; [ DW_TAG_member ] [_mode] [line 308, size 32, align 32, offset 864] [from int]
!774 = metadata !{i32 786445, metadata !724, metadata !723, metadata !"_unused2", i32 310, i64 320, i64 8, i64 896, i32 0, metadata !775} ; [ DW_TAG_member ] [_unused2] [line 310, size 320, align 8, offset 896] [from ]
!775 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 320, i64 8, i32 0, i32 0, metadata !20, metadata !776, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 320, align 8, offset 0] [from char]
!776 = metadata !{metadata !777}
!777 = metadata !{i32 786465, i64 0, i64 40}      ; [ DW_TAG_subrange_type ] [0, 39]
!778 = metadata !{i32 378, i32 9, metadata !57, null}
!779 = metadata !{i32 378, i32 13, metadata !57, null}
!780 = metadata !{i32 379, i32 7, metadata !781, null}
!781 = metadata !{i32 786443, metadata !5, metadata !57, i32 379, i32 7, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/loadlib.c]
!782 = metadata !{i32 379, i32 18, metadata !783, null}
!783 = metadata !{i32 786443, metadata !5, metadata !781, i32 379, i32 18, i32 1, i32 66} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/loadlib.c]
!784 = metadata !{i32 380, i32 3, metadata !57, null}
!785 = metadata !{i32 381, i32 3, metadata !57, null}
!786 = metadata !{i32 382, i32 1, metadata !57, null}
!787 = metadata !{i32 786689, metadata !67, metadata !"L", metadata !6, i32 16777570, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 354]
!788 = metadata !{i32 354, i32 35, metadata !67, null}
!789 = metadata !{i32 786688, metadata !67, metadata !"path", metadata !6, i32 355, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [path] [line 355]
!790 = metadata !{i32 355, i32 15, metadata !67, null}
!791 = metadata !{i32 355, i32 22, metadata !67, null}
!792 = metadata !{i32 786688, metadata !67, metadata !"init", metadata !6, i32 356, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [init] [line 356]
!793 = metadata !{i32 356, i32 15, metadata !67, null}
!794 = metadata !{i32 356, i32 22, metadata !67, null}
!795 = metadata !{i32 786688, metadata !67, metadata !"stat", metadata !6, i32 357, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [stat] [line 357]
!796 = metadata !{i32 357, i32 7, metadata !67, null}
!797 = metadata !{i32 357, i32 14, metadata !67, null}
!798 = metadata !{i32 358, i32 7, metadata !799, null}
!799 = metadata !{i32 786443, metadata !5, metadata !67, i32 358, i32 7, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/loadlib.c]
!800 = metadata !{i32 359, i32 5, metadata !799, null}
!801 = metadata !{i32 361, i32 5, metadata !802, null}
!802 = metadata !{i32 786443, metadata !5, metadata !799, i32 360, i32 8, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/loadlib.c]
!803 = metadata !{i32 362, i32 5, metadata !802, null}
!804 = metadata !{i32 363, i32 5, metadata !802, null}
!805 = metadata !{i32 364, i32 5, metadata !802, null}
!806 = metadata !{i32 366, i32 1, metadata !67, null}
!807 = metadata !{i32 786689, metadata !66, metadata !"L", metadata !6, i32 16777635, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 419]
!808 = metadata !{i32 419, i32 38, metadata !66, null}
!809 = metadata !{i32 786688, metadata !66, metadata !"f", metadata !6, i32 420, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [f] [line 420]
!810 = metadata !{i32 420, i32 15, metadata !66, null}
!811 = metadata !{i32 420, i32 19, metadata !66, null}
!812 = metadata !{i32 420, i32 33, metadata !66, null}
!813 = metadata !{i32 421, i32 33, metadata !66, null}
!814 = metadata !{i32 422, i32 33, metadata !66, null}
!815 = metadata !{i32 423, i32 33, metadata !66, null}
!816 = metadata !{i32 424, i32 7, metadata !817, null}
!817 = metadata !{i32 786443, metadata !5, metadata !66, i32 424, i32 7, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/loadlib.c]
!818 = metadata !{i32 424, i32 18, metadata !819, null}
!819 = metadata !{i32 786443, metadata !5, metadata !817, i32 424, i32 18, i32 1, i32 67} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/loadlib.c]
!820 = metadata !{i32 426, i32 5, metadata !821, null}
!821 = metadata !{i32 786443, metadata !5, metadata !817, i32 425, i32 8, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/loadlib.c]
!822 = metadata !{i32 427, i32 5, metadata !821, null}
!823 = metadata !{i32 428, i32 5, metadata !821, null}
!824 = metadata !{i32 430, i32 1, metadata !66, null}
!825 = metadata !{i32 786689, metadata !69, metadata !"L", metadata !6, i32 16777522, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 306]
!826 = metadata !{i32 306, i32 29, metadata !69, null}
!827 = metadata !{i32 786688, metadata !69, metadata !"n", metadata !6, i32 307, metadata !828, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 307]
!828 = metadata !{i32 786454, metadata !12, null, metadata !"lua_Integer", i32 93, i64 0, i64 0, i64 0, i32 0, metadata !767} ; [ DW_TAG_typedef ] [lua_Integer] [line 93, size 0, align 0, offset 0] [from long long int]
!829 = metadata !{i32 307, i32 15, metadata !69, null}
!830 = metadata !{i32 307, i32 19, metadata !69, null}
!831 = metadata !{i32 308, i32 3, metadata !832, null}
!832 = metadata !{i32 786443, metadata !5, metadata !69, i32 308, i32 3, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/loadlib.c]
!833 = metadata !{i32 308, i32 3, metadata !834, null}
!834 = metadata !{i32 786443, metadata !5, metadata !835, i32 308, i32 3, i32 2, i32 69} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/loadlib.c]
!835 = metadata !{i32 786443, metadata !5, metadata !832, i32 308, i32 3, i32 1, i32 68} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/loadlib.c]
!836 = metadata !{i32 309, i32 5, metadata !837, null}
!837 = metadata !{i32 786443, metadata !5, metadata !832, i32 308, i32 23, i32 0, i32 50} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/loadlib.c]
!838 = metadata !{i32 310, i32 20, metadata !837, null}
!839 = metadata !{i32 310, i32 5, metadata !837, null}
!840 = metadata !{i32 311, i32 5, metadata !837, null}
!841 = metadata !{i32 312, i32 3, metadata !837, null}
!842 = metadata !{i32 308, i32 18, metadata !832, null}
!843 = metadata !{i32 313, i32 3, metadata !69, null}
!844 = metadata !{i32 786689, metadata !70, metadata !"lib", metadata !6, i32 16777469, metadata !41, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [lib] [line 253]
!845 = metadata !{i32 253, i32 35, metadata !70, null}
!846 = metadata !{i32 254, i32 3, metadata !70, null}
!847 = metadata !{i32 255, i32 1, metadata !70, null}
