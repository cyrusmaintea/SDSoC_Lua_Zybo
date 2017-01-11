; ModuleID = 'C:/Users/DevolutionX/workspace/lua/src/lcorolib.c'
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-n32-S64"
target triple = "armv7--linux-gnueabihf"

%struct.luaL_Reg = type { i8*, i32 (%struct.lua_State*)* }
%struct.lua_State = type opaque
%struct.lua_Debug = type { i32, i8*, i8*, i8*, i8*, i32, i32, i32, i8, i8, i8, i8, [60 x i8], %struct.CallInfo* }
%struct.CallInfo = type opaque

@co_funcs = internal constant [8 x %struct.luaL_Reg] [%struct.luaL_Reg { i8* getelementptr inbounds ([7 x i8]* @.str, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_cocreate }, %struct.luaL_Reg { i8* getelementptr inbounds ([7 x i8]* @.str1, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_coresume }, %struct.luaL_Reg { i8* getelementptr inbounds ([8 x i8]* @.str2, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_corunning }, %struct.luaL_Reg { i8* getelementptr inbounds ([7 x i8]* @.str3, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_costatus }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8]* @.str4, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_cowrap }, %struct.luaL_Reg { i8* getelementptr inbounds ([6 x i8]* @.str5, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_yield }, %struct.luaL_Reg { i8* getelementptr inbounds ([12 x i8]* @.str6, i32 0, i32 0), i32 (%struct.lua_State*)* @luaB_yieldable }, %struct.luaL_Reg zeroinitializer], align 4
@.str = private unnamed_addr constant [7 x i8] c"create\00", align 1
@.str1 = private unnamed_addr constant [7 x i8] c"resume\00", align 1
@.str2 = private unnamed_addr constant [8 x i8] c"running\00", align 1
@.str3 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str4 = private unnamed_addr constant [5 x i8] c"wrap\00", align 1
@.str5 = private unnamed_addr constant [6 x i8] c"yield\00", align 1
@.str6 = private unnamed_addr constant [12 x i8] c"isyieldable\00", align 1
@.str7 = private unnamed_addr constant [29 x i8] c"too many arguments to resume\00", align 1
@.str8 = private unnamed_addr constant [29 x i8] c"cannot resume dead coroutine\00", align 1
@.str9 = private unnamed_addr constant [27 x i8] c"too many results to resume\00", align 1
@.str10 = private unnamed_addr constant [10 x i8] c"suspended\00", align 1
@.str11 = private unnamed_addr constant [7 x i8] c"normal\00", align 1
@.str12 = private unnamed_addr constant [5 x i8] c"dead\00", align 1
@.str13 = private unnamed_addr constant [16 x i8] c"thread expected\00", align 1

; Function Attrs: nounwind
define i32 @luaopen_coroutine(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !143), !dbg !144
  %2 = load %struct.lua_State** %1, align 4, !dbg !145
  call void @luaL_checkversion_(%struct.lua_State* %2, double 5.030000e+02, i32 136), !dbg !145
  %3 = load %struct.lua_State** %1, align 4, !dbg !145
  call void @lua_createtable(%struct.lua_State* %3, i32 0, i32 7), !dbg !145
  %4 = load %struct.lua_State** %1, align 4, !dbg !145
  call void @luaL_setfuncs(%struct.lua_State* %4, %struct.luaL_Reg* getelementptr inbounds ([8 x %struct.luaL_Reg]* @co_funcs, i32 0, i32 0), i32 0), !dbg !145
  ret i32 1, !dbg !146
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

declare void @luaL_checkversion_(%struct.lua_State*, double, i32) #2

declare void @lua_createtable(%struct.lua_State*, i32, i32) #2

declare void @luaL_setfuncs(%struct.lua_State*, %struct.luaL_Reg*, i32) #2

; Function Attrs: nounwind
define internal i32 @luaB_cocreate(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %NL = alloca %struct.lua_State*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !147), !dbg !148
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %NL}, metadata !149), !dbg !150
  %2 = load %struct.lua_State** %1, align 4, !dbg !151
  call void @luaL_checktype(%struct.lua_State* %2, i32 1, i32 6), !dbg !151
  %3 = load %struct.lua_State** %1, align 4, !dbg !152
  %4 = call %struct.lua_State* @lua_newthread(%struct.lua_State* %3), !dbg !152
  store %struct.lua_State* %4, %struct.lua_State** %NL, align 4, !dbg !152
  %5 = load %struct.lua_State** %1, align 4, !dbg !153
  call void @lua_pushvalue(%struct.lua_State* %5, i32 1), !dbg !153
  %6 = load %struct.lua_State** %1, align 4, !dbg !154
  %7 = load %struct.lua_State** %NL, align 4, !dbg !154
  call void @lua_xmove(%struct.lua_State* %6, %struct.lua_State* %7, i32 1), !dbg !154
  ret i32 1, !dbg !155
}

; Function Attrs: nounwind
define internal i32 @luaB_coresume(%struct.lua_State* %L) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.lua_State*, align 4
  %co = alloca %struct.lua_State*, align 4
  %r = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %2}, metadata !156), !dbg !157
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %co}, metadata !158), !dbg !159
  %3 = load %struct.lua_State** %2, align 4, !dbg !160
  %4 = call %struct.lua_State* @getco(%struct.lua_State* %3), !dbg !160
  store %struct.lua_State* %4, %struct.lua_State** %co, align 4, !dbg !160
  call void @llvm.dbg.declare(metadata !{i32* %r}, metadata !161), !dbg !162
  %5 = load %struct.lua_State** %2, align 4, !dbg !163
  %6 = load %struct.lua_State** %co, align 4, !dbg !163
  %7 = load %struct.lua_State** %2, align 4, !dbg !164
  %8 = call i32 @lua_gettop(%struct.lua_State* %7), !dbg !164
  %9 = sub nsw i32 %8, 1, !dbg !164
  %10 = call i32 @auxresume(%struct.lua_State* %5, %struct.lua_State* %6, i32 %9), !dbg !163
  store i32 %10, i32* %r, align 4, !dbg !163
  %11 = load i32* %r, align 4, !dbg !165
  %12 = icmp slt i32 %11, 0, !dbg !165
  br i1 %12, label %13, label %16, !dbg !165

; <label>:13                                      ; preds = %0
  %14 = load %struct.lua_State** %2, align 4, !dbg !167
  call void @lua_pushboolean(%struct.lua_State* %14, i32 0), !dbg !167
  %15 = load %struct.lua_State** %2, align 4, !dbg !169
  call void @lua_rotate(%struct.lua_State* %15, i32 -2, i32 1), !dbg !169
  store i32 2, i32* %1, !dbg !170
  br label %24, !dbg !170

; <label>:16                                      ; preds = %0
  %17 = load %struct.lua_State** %2, align 4, !dbg !171
  call void @lua_pushboolean(%struct.lua_State* %17, i32 1), !dbg !171
  %18 = load %struct.lua_State** %2, align 4, !dbg !173
  %19 = load i32* %r, align 4, !dbg !173
  %20 = add nsw i32 %19, 1, !dbg !173
  %21 = sub nsw i32 0, %20, !dbg !173
  call void @lua_rotate(%struct.lua_State* %18, i32 %21, i32 1), !dbg !173
  %22 = load i32* %r, align 4, !dbg !174
  %23 = add nsw i32 %22, 1, !dbg !174
  store i32 %23, i32* %1, !dbg !174
  br label %24, !dbg !174

; <label>:24                                      ; preds = %16, %13
  %25 = load i32* %1, !dbg !175
  ret i32 %25, !dbg !175
}

; Function Attrs: nounwind
define internal i32 @luaB_corunning(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %ismain = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !176), !dbg !177
  call void @llvm.dbg.declare(metadata !{i32* %ismain}, metadata !178), !dbg !179
  %2 = load %struct.lua_State** %1, align 4, !dbg !180
  %3 = call i32 @lua_pushthread(%struct.lua_State* %2), !dbg !180
  store i32 %3, i32* %ismain, align 4, !dbg !180
  %4 = load %struct.lua_State** %1, align 4, !dbg !181
  %5 = load i32* %ismain, align 4, !dbg !181
  call void @lua_pushboolean(%struct.lua_State* %4, i32 %5), !dbg !181
  ret i32 2, !dbg !182
}

; Function Attrs: nounwind
define internal i32 @luaB_costatus(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %co = alloca %struct.lua_State*, align 4
  %ar = alloca %struct.lua_Debug, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !183), !dbg !184
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %co}, metadata !185), !dbg !186
  %2 = load %struct.lua_State** %1, align 4, !dbg !187
  %3 = call %struct.lua_State* @getco(%struct.lua_State* %2), !dbg !187
  store %struct.lua_State* %3, %struct.lua_State** %co, align 4, !dbg !187
  %4 = load %struct.lua_State** %1, align 4, !dbg !188
  %5 = load %struct.lua_State** %co, align 4, !dbg !188
  %6 = icmp eq %struct.lua_State* %4, %5, !dbg !188
  br i1 %6, label %7, label %10, !dbg !188

; <label>:7                                       ; preds = %0
  %8 = load %struct.lua_State** %1, align 4, !dbg !190
  %9 = call i8* @lua_pushstring(%struct.lua_State* %8, i8* getelementptr inbounds ([8 x i8]* @.str2, i32 0, i32 0)), !dbg !190
  br label %39, !dbg !190

; <label>:10                                      ; preds = %0
  %11 = load %struct.lua_State** %co, align 4, !dbg !192
  %12 = call i32 @lua_status(%struct.lua_State* %11), !dbg !192
  switch i32 %12, label %35 [
    i32 1, label %13
    i32 0, label %16
  ], !dbg !192

; <label>:13                                      ; preds = %10
  %14 = load %struct.lua_State** %1, align 4, !dbg !194
  %15 = call i8* @lua_pushstring(%struct.lua_State* %14, i8* getelementptr inbounds ([10 x i8]* @.str10, i32 0, i32 0)), !dbg !194
  br label %38, !dbg !196

; <label>:16                                      ; preds = %10
  call void @llvm.dbg.declare(metadata !{%struct.lua_Debug* %ar}, metadata !197), !dbg !222
  %17 = load %struct.lua_State** %co, align 4, !dbg !223
  %18 = call i32 @lua_getstack(%struct.lua_State* %17, i32 0, %struct.lua_Debug* %ar), !dbg !223
  %19 = icmp sgt i32 %18, 0, !dbg !223
  br i1 %19, label %20, label %23, !dbg !223

; <label>:20                                      ; preds = %16
  %21 = load %struct.lua_State** %1, align 4, !dbg !225
  %22 = call i8* @lua_pushstring(%struct.lua_State* %21, i8* getelementptr inbounds ([7 x i8]* @.str11, i32 0, i32 0)), !dbg !225
  br label %34, !dbg !225

; <label>:23                                      ; preds = %16
  %24 = load %struct.lua_State** %co, align 4, !dbg !226
  %25 = call i32 @lua_gettop(%struct.lua_State* %24), !dbg !226
  %26 = icmp eq i32 %25, 0, !dbg !226
  br i1 %26, label %27, label %30, !dbg !226

; <label>:27                                      ; preds = %23
  %28 = load %struct.lua_State** %1, align 4, !dbg !228
  %29 = call i8* @lua_pushstring(%struct.lua_State* %28, i8* getelementptr inbounds ([5 x i8]* @.str12, i32 0, i32 0)), !dbg !228
  br label %33, !dbg !228

; <label>:30                                      ; preds = %23
  %31 = load %struct.lua_State** %1, align 4, !dbg !229
  %32 = call i8* @lua_pushstring(%struct.lua_State* %31, i8* getelementptr inbounds ([10 x i8]* @.str10, i32 0, i32 0)), !dbg !229
  br label %33

; <label>:33                                      ; preds = %30, %27
  br label %34

; <label>:34                                      ; preds = %33, %20
  br label %38, !dbg !230

; <label>:35                                      ; preds = %10
  %36 = load %struct.lua_State** %1, align 4, !dbg !231
  %37 = call i8* @lua_pushstring(%struct.lua_State* %36, i8* getelementptr inbounds ([5 x i8]* @.str12, i32 0, i32 0)), !dbg !231
  br label %38, !dbg !232

; <label>:38                                      ; preds = %35, %34, %13
  br label %39

; <label>:39                                      ; preds = %38, %7
  ret i32 1, !dbg !233
}

; Function Attrs: nounwind
define internal i32 @luaB_cowrap(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !234), !dbg !235
  %2 = load %struct.lua_State** %1, align 4, !dbg !236
  %3 = call i32 @luaB_cocreate(%struct.lua_State* %2), !dbg !236
  %4 = load %struct.lua_State** %1, align 4, !dbg !237
  call void @lua_pushcclosure(%struct.lua_State* %4, i32 (%struct.lua_State*)* @luaB_auxwrap, i32 1), !dbg !237
  ret i32 1, !dbg !238
}

; Function Attrs: nounwind
define internal i32 @luaB_yield(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !239), !dbg !240
  %2 = load %struct.lua_State** %1, align 4, !dbg !241
  %3 = load %struct.lua_State** %1, align 4, !dbg !241
  %4 = call i32 @lua_gettop(%struct.lua_State* %3), !dbg !241
  %5 = call i32 @lua_yieldk(%struct.lua_State* %2, i32 %4, i32 0, i32 (%struct.lua_State*, i32, i32)* null), !dbg !241
  ret i32 %5, !dbg !241
}

; Function Attrs: nounwind
define internal i32 @luaB_yieldable(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !242), !dbg !243
  %2 = load %struct.lua_State** %1, align 4, !dbg !244
  %3 = load %struct.lua_State** %1, align 4, !dbg !245
  %4 = call i32 @lua_isyieldable(%struct.lua_State* %3), !dbg !245
  call void @lua_pushboolean(%struct.lua_State* %2, i32 %4), !dbg !244
  ret i32 1, !dbg !246
}

declare void @lua_pushboolean(%struct.lua_State*, i32) #2

declare i32 @lua_isyieldable(%struct.lua_State*) #2

declare i32 @lua_yieldk(%struct.lua_State*, i32, i32, i32 (%struct.lua_State*, i32, i32)*) #2

declare i32 @lua_gettop(%struct.lua_State*) #2

declare void @lua_pushcclosure(%struct.lua_State*, i32 (%struct.lua_State*)*, i32) #2

; Function Attrs: nounwind
define internal i32 @luaB_auxwrap(%struct.lua_State* %L) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.lua_State*, align 4
  %co = alloca %struct.lua_State*, align 4
  %r = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %2}, metadata !247), !dbg !248
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %co}, metadata !249), !dbg !250
  %3 = load %struct.lua_State** %2, align 4, !dbg !251
  %4 = call %struct.lua_State* @lua_tothread(%struct.lua_State* %3, i32 -1001001), !dbg !251
  store %struct.lua_State* %4, %struct.lua_State** %co, align 4, !dbg !251
  call void @llvm.dbg.declare(metadata !{i32* %r}, metadata !252), !dbg !253
  %5 = load %struct.lua_State** %2, align 4, !dbg !254
  %6 = load %struct.lua_State** %co, align 4, !dbg !254
  %7 = load %struct.lua_State** %2, align 4, !dbg !255
  %8 = call i32 @lua_gettop(%struct.lua_State* %7), !dbg !255
  %9 = call i32 @auxresume(%struct.lua_State* %5, %struct.lua_State* %6, i32 %8), !dbg !254
  store i32 %9, i32* %r, align 4, !dbg !254
  %10 = load i32* %r, align 4, !dbg !256
  %11 = icmp slt i32 %10, 0, !dbg !256
  br i1 %11, label %12, label %23, !dbg !256

; <label>:12                                      ; preds = %0
  %13 = load %struct.lua_State** %2, align 4, !dbg !258
  %14 = call i32 @lua_type(%struct.lua_State* %13, i32 -1), !dbg !258
  %15 = icmp eq i32 %14, 4, !dbg !258
  br i1 %15, label %16, label %20, !dbg !258

; <label>:16                                      ; preds = %12
  %17 = load %struct.lua_State** %2, align 4, !dbg !261
  call void @luaL_where(%struct.lua_State* %17, i32 1), !dbg !261
  %18 = load %struct.lua_State** %2, align 4, !dbg !263
  call void @lua_rotate(%struct.lua_State* %18, i32 -2, i32 1), !dbg !263
  %19 = load %struct.lua_State** %2, align 4, !dbg !264
  call void @lua_concat(%struct.lua_State* %19, i32 2), !dbg !264
  br label %20, !dbg !265

; <label>:20                                      ; preds = %16, %12
  %21 = load %struct.lua_State** %2, align 4, !dbg !266
  %22 = call i32 @lua_error(%struct.lua_State* %21), !dbg !266
  store i32 %22, i32* %1, !dbg !266
  br label %25, !dbg !266

; <label>:23                                      ; preds = %0
  %24 = load i32* %r, align 4, !dbg !267
  store i32 %24, i32* %1, !dbg !267
  br label %25, !dbg !267

; <label>:25                                      ; preds = %23, %20
  %26 = load i32* %1, !dbg !268
  ret i32 %26, !dbg !268
}

declare %struct.lua_State* @lua_tothread(%struct.lua_State*, i32) #2

; Function Attrs: nounwind
define internal i32 @auxresume(%struct.lua_State* %L, %struct.lua_State* %co, i32 %narg) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.lua_State*, align 4
  %3 = alloca %struct.lua_State*, align 4
  %4 = alloca i32, align 4
  %status = alloca i32, align 4
  %nres = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %2}, metadata !269), !dbg !270
  store %struct.lua_State* %co, %struct.lua_State** %3, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %3}, metadata !271), !dbg !272
  store i32 %narg, i32* %4, align 4
  call void @llvm.dbg.declare(metadata !{i32* %4}, metadata !273), !dbg !274
  call void @llvm.dbg.declare(metadata !{i32* %status}, metadata !275), !dbg !276
  %5 = load %struct.lua_State** %3, align 4, !dbg !277
  %6 = load i32* %4, align 4, !dbg !277
  %7 = call i32 @lua_checkstack(%struct.lua_State* %5, i32 %6), !dbg !277
  %8 = icmp ne i32 %7, 0, !dbg !277
  br i1 %8, label %12, label %9, !dbg !277

; <label>:9                                       ; preds = %0
  %10 = load %struct.lua_State** %2, align 4, !dbg !279
  %11 = call i8* @lua_pushstring(%struct.lua_State* %10, i8* getelementptr inbounds ([29 x i8]* @.str7, i32 0, i32 0)), !dbg !279
  store i32 -1, i32* %1, !dbg !281
  br label %59, !dbg !281

; <label>:12                                      ; preds = %0
  %13 = load %struct.lua_State** %3, align 4, !dbg !282
  %14 = call i32 @lua_status(%struct.lua_State* %13), !dbg !282
  %15 = icmp eq i32 %14, 0, !dbg !282
  br i1 %15, label %16, label %23, !dbg !282

; <label>:16                                      ; preds = %12
  %17 = load %struct.lua_State** %3, align 4, !dbg !284
  %18 = call i32 @lua_gettop(%struct.lua_State* %17), !dbg !284
  %19 = icmp eq i32 %18, 0, !dbg !284
  br i1 %19, label %20, label %23, !dbg !284

; <label>:20                                      ; preds = %16
  %21 = load %struct.lua_State** %2, align 4, !dbg !286
  %22 = call i8* @lua_pushstring(%struct.lua_State* %21, i8* getelementptr inbounds ([29 x i8]* @.str8, i32 0, i32 0)), !dbg !286
  store i32 -1, i32* %1, !dbg !288
  br label %59, !dbg !288

; <label>:23                                      ; preds = %16, %12
  %24 = load %struct.lua_State** %2, align 4, !dbg !289
  %25 = load %struct.lua_State** %3, align 4, !dbg !289
  %26 = load i32* %4, align 4, !dbg !289
  call void @lua_xmove(%struct.lua_State* %24, %struct.lua_State* %25, i32 %26), !dbg !289
  %27 = load %struct.lua_State** %3, align 4, !dbg !290
  %28 = load %struct.lua_State** %2, align 4, !dbg !290
  %29 = load i32* %4, align 4, !dbg !290
  %30 = call i32 @lua_resume(%struct.lua_State* %27, %struct.lua_State* %28, i32 %29), !dbg !290
  store i32 %30, i32* %status, align 4, !dbg !290
  %31 = load i32* %status, align 4, !dbg !291
  %32 = icmp eq i32 %31, 0, !dbg !291
  br i1 %32, label %36, label %33, !dbg !291

; <label>:33                                      ; preds = %23
  %34 = load i32* %status, align 4, !dbg !293
  %35 = icmp eq i32 %34, 1, !dbg !293
  br i1 %35, label %36, label %56, !dbg !293

; <label>:36                                      ; preds = %33, %23
  call void @llvm.dbg.declare(metadata !{i32* %nres}, metadata !295), !dbg !297
  %37 = load %struct.lua_State** %3, align 4, !dbg !298
  %38 = call i32 @lua_gettop(%struct.lua_State* %37), !dbg !298
  store i32 %38, i32* %nres, align 4, !dbg !298
  %39 = load %struct.lua_State** %2, align 4, !dbg !299
  %40 = load i32* %nres, align 4, !dbg !299
  %41 = add nsw i32 %40, 1, !dbg !299
  %42 = call i32 @lua_checkstack(%struct.lua_State* %39, i32 %41), !dbg !299
  %43 = icmp ne i32 %42, 0, !dbg !299
  br i1 %43, label %51, label %44, !dbg !299

; <label>:44                                      ; preds = %36
  %45 = load %struct.lua_State** %3, align 4, !dbg !301
  %46 = load i32* %nres, align 4, !dbg !301
  %47 = sub nsw i32 0, %46, !dbg !301
  %48 = sub nsw i32 %47, 1, !dbg !301
  call void @lua_settop(%struct.lua_State* %45, i32 %48), !dbg !301
  %49 = load %struct.lua_State** %2, align 4, !dbg !303
  %50 = call i8* @lua_pushstring(%struct.lua_State* %49, i8* getelementptr inbounds ([27 x i8]* @.str9, i32 0, i32 0)), !dbg !303
  store i32 -1, i32* %1, !dbg !304
  br label %59, !dbg !304

; <label>:51                                      ; preds = %36
  %52 = load %struct.lua_State** %3, align 4, !dbg !305
  %53 = load %struct.lua_State** %2, align 4, !dbg !305
  %54 = load i32* %nres, align 4, !dbg !305
  call void @lua_xmove(%struct.lua_State* %52, %struct.lua_State* %53, i32 %54), !dbg !305
  %55 = load i32* %nres, align 4, !dbg !306
  store i32 %55, i32* %1, !dbg !306
  br label %59, !dbg !306

; <label>:56                                      ; preds = %33
  %57 = load %struct.lua_State** %3, align 4, !dbg !307
  %58 = load %struct.lua_State** %2, align 4, !dbg !307
  call void @lua_xmove(%struct.lua_State* %57, %struct.lua_State* %58, i32 1), !dbg !307
  store i32 -1, i32* %1, !dbg !309
  br label %59, !dbg !309

; <label>:59                                      ; preds = %56, %51, %44, %20, %9
  %60 = load i32* %1, !dbg !310
  ret i32 %60, !dbg !310
}

declare i32 @lua_type(%struct.lua_State*, i32) #2

declare void @luaL_where(%struct.lua_State*, i32) #2

declare void @lua_rotate(%struct.lua_State*, i32, i32) #2

declare void @lua_concat(%struct.lua_State*, i32) #2

declare i32 @lua_error(%struct.lua_State*) #2

declare i32 @lua_checkstack(%struct.lua_State*, i32) #2

declare i8* @lua_pushstring(%struct.lua_State*, i8*) #2

declare i32 @lua_status(%struct.lua_State*) #2

declare void @lua_xmove(%struct.lua_State*, %struct.lua_State*, i32) #2

declare i32 @lua_resume(%struct.lua_State*, %struct.lua_State*, i32) #2

declare void @lua_settop(%struct.lua_State*, i32) #2

; Function Attrs: nounwind
define internal %struct.lua_State* @getco(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %co = alloca %struct.lua_State*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !311), !dbg !312
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %co}, metadata !313), !dbg !314
  %2 = load %struct.lua_State** %1, align 4, !dbg !315
  %3 = call %struct.lua_State* @lua_tothread(%struct.lua_State* %2, i32 1), !dbg !315
  store %struct.lua_State* %3, %struct.lua_State** %co, align 4, !dbg !315
  %4 = load %struct.lua_State** %co, align 4, !dbg !316
  %5 = icmp ne %struct.lua_State* %4, null, !dbg !316
  br i1 %5, label %10, label %6, !dbg !316

; <label>:6                                       ; preds = %0
  %7 = load %struct.lua_State** %1, align 4, !dbg !317
  %8 = call i32 @luaL_argerror(%struct.lua_State* %7, i32 1, i8* getelementptr inbounds ([16 x i8]* @.str13, i32 0, i32 0)), !dbg !317
  %9 = icmp ne i32 %8, 0, !dbg !317
  br label %10, !dbg !317

; <label>:10                                      ; preds = %6, %0
  %11 = phi i1 [ true, %0 ], [ %9, %6 ]
  %12 = zext i1 %11 to i32, !dbg !319
  %13 = load %struct.lua_State** %co, align 4, !dbg !322
  ret %struct.lua_State* %13, !dbg !322
}

declare i32 @lua_getstack(%struct.lua_State*, i32, %struct.lua_Debug*) #2

declare i32 @luaL_argerror(%struct.lua_State*, i32, i8*) #2

declare i32 @lua_pushthread(%struct.lua_State*) #2

declare void @luaL_checktype(%struct.lua_State*, i32, i32) #2

declare %struct.lua_State* @lua_newthread(%struct.lua_State*) #2

declare void @lua_pushvalue(%struct.lua_State*, i32) #2

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!xidane.fname = !{!45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118}
!xidane.function_declaration_type = !{!45, !119, !47, !120, !49, !121, !51, !122, !53, !119, !55, !119, !57, !119, !59, !119, !61, !119, !63, !119, !65, !119, !67, !123, !69, !119, !71, !124, !73, !119, !75, !125, !77, !119, !79, !126, !81, !127, !83, !128, !85, !123, !87, !121, !89, !123, !91, !119, !93, !128, !95, !129, !97, !119, !99, !130, !101, !127, !103, !123, !105, !131, !107, !132, !109, !133, !111, !119, !113, !121, !115, !131, !117, !123}
!xidane.function_declaration_filename = !{!45, !134, !47, !135, !49, !136, !51, !135, !53, !137, !55, !137, !57, !137, !59, !137, !61, !137, !63, !137, !65, !137, !67, !136, !69, !136, !71, !136, !73, !136, !75, !136, !77, !137, !79, !136, !81, !137, !83, !136, !85, !135, !87, !136, !89, !136, !91, !136, !93, !136, !95, !136, !97, !136, !99, !136, !101, !136, !103, !136, !105, !137, !107, !136, !109, !135, !111, !136, !113, !135, !115, !136, !117, !136}
!xidane.ExternC = !{!45, !47, !49, !51, !67, !69, !71, !73, !75, !79, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !107, !109, !111, !113, !115, !117}
!llvm.module.flags = !{!138, !139, !140, !141}
!llvm.ident = !{!142}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.0 (tags/RELEASE_350/final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !28, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src\lcorolib.c] [DW_LANG_C99]
!1 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src\5Clcorolib.c", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!2 = metadata !{}
!3 = metadata !{metadata !4, metadata !14, metadata !15, metadata !16, metadata !17, metadata !18, metadata !21, metadata !22, metadata !25, metadata !26, metadata !27}
!4 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"luaopen_coroutine", metadata !"luaopen_coroutine", metadata !"", i32 164, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @luaopen_coroutine, null, null, metadata !2, i32 164} ; [ DW_TAG_subprogram ] [line 164] [def] [luaopen_coroutine]
!5 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lcorolib.c", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!6 = metadata !{i32 786473, metadata !5}          ; [ DW_TAG_file_type ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcorolib.c]
!7 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!8 = metadata !{metadata !9, metadata !10}
!9 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!10 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !11} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from lua_State]
!11 = metadata !{i32 786454, metadata !12, null, metadata !"lua_State", i32 56, i64 0, i64 0, i64 0, i32 0, metadata !13} ; [ DW_TAG_typedef ] [lua_State] [line 56, size 0, align 0, offset 0] [from lua_State]
!12 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lua.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!13 = metadata !{i32 786451, metadata !12, null, metadata !"lua_State", i32 56, i64 0, i64 0, i32 0, i32 4, null, null, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [lua_State] [line 56, size 0, align 0, offset 0] [decl] [from ]
!14 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"luaB_yieldable", metadata !"luaB_yieldable", metadata !"", i32 138, metadata !7, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @luaB_yieldable, null, null, metadata !2, i32 138} ; [ DW_TAG_subprogram ] [line 138] [local] [def] [luaB_yieldable]
!15 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"luaB_yield", metadata !"luaB_yield", metadata !"", i32 106, metadata !7, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @luaB_yield, null, null, metadata !2, i32 106} ; [ DW_TAG_subprogram ] [line 106] [local] [def] [luaB_yield]
!16 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"luaB_cowrap", metadata !"luaB_cowrap", metadata !"", i32 99, metadata !7, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @luaB_cowrap, null, null, metadata !2, i32 99} ; [ DW_TAG_subprogram ] [line 99] [local] [def] [luaB_cowrap]
!17 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"luaB_auxwrap", metadata !"luaB_auxwrap", metadata !"", i32 74, metadata !7, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @luaB_auxwrap, null, null, metadata !2, i32 74} ; [ DW_TAG_subprogram ] [line 74] [local] [def] [luaB_auxwrap]
!18 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"auxresume", metadata !"auxresume", metadata !"", i32 28, metadata !19, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*, %struct.lua_State*, i32)* @auxresume, null, null, metadata !2, i32 28} ; [ DW_TAG_subprogram ] [line 28] [local] [def] [auxresume]
!19 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !20, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!20 = metadata !{metadata !9, metadata !10, metadata !10, metadata !9}
!21 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"luaB_costatus", metadata !"luaB_costatus", metadata !"", i32 111, metadata !7, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @luaB_costatus, null, null, metadata !2, i32 111} ; [ DW_TAG_subprogram ] [line 111] [local] [def] [luaB_costatus]
!22 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"getco", metadata !"getco", metadata !"", i32 21, metadata !23, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, %struct.lua_State* (%struct.lua_State*)* @getco, null, null, metadata !2, i32 21} ; [ DW_TAG_subprogram ] [line 21] [local] [def] [getco]
!23 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !24, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!24 = metadata !{metadata !10, metadata !10}
!25 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"luaB_corunning", metadata !"luaB_corunning", metadata !"", i32 144, metadata !7, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @luaB_corunning, null, null, metadata !2, i32 144} ; [ DW_TAG_subprogram ] [line 144] [local] [def] [luaB_corunning]
!26 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"luaB_coresume", metadata !"luaB_coresume", metadata !"", i32 57, metadata !7, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @luaB_coresume, null, null, metadata !2, i32 57} ; [ DW_TAG_subprogram ] [line 57] [local] [def] [luaB_coresume]
!27 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"luaB_cocreate", metadata !"luaB_cocreate", metadata !"", i32 89, metadata !7, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @luaB_cocreate, null, null, metadata !2, i32 89} ; [ DW_TAG_subprogram ] [line 89] [local] [def] [luaB_cocreate]
!28 = metadata !{metadata !29}
!29 = metadata !{i32 786484, i32 0, null, metadata !"co_funcs", metadata !"co_funcs", metadata !"", metadata !6, i32 151, metadata !30, i32 1, i32 1, [8 x %struct.luaL_Reg]* @co_funcs, null} ; [ DW_TAG_variable ] [co_funcs] [line 151] [local] [def]
!30 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 512, i64 32, i32 0, i32 0, metadata !31, metadata !43, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 512, align 32, offset 0] [from ]
!31 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !32} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from luaL_Reg]
!32 = metadata !{i32 786454, metadata !33, null, metadata !"luaL_Reg", i32 26, i64 0, i64 0, i64 0, i32 0, metadata !34} ; [ DW_TAG_typedef ] [luaL_Reg] [line 26, size 0, align 0, offset 0] [from luaL_Reg]
!33 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lauxlib.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!34 = metadata !{i32 786451, metadata !33, null, metadata !"luaL_Reg", i32 23, i64 64, i64 32, i32 0, i32 0, null, metadata !35, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [luaL_Reg] [line 23, size 64, align 32, offset 0] [def] [from ]
!35 = metadata !{metadata !36, metadata !40}
!36 = metadata !{i32 786445, metadata !33, metadata !34, metadata !"name", i32 24, i64 32, i64 32, i64 0, i32 0, metadata !37} ; [ DW_TAG_member ] [name] [line 24, size 32, align 32, offset 0] [from ]
!37 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !38} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!38 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !39} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!39 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!40 = metadata !{i32 786445, metadata !33, metadata !34, metadata !"func", i32 25, i64 32, i64 32, i64 32, i32 0, metadata !41} ; [ DW_TAG_member ] [func] [line 25, size 32, align 32, offset 32] [from lua_CFunction]
!41 = metadata !{i32 786454, metadata !12, null, metadata !"lua_CFunction", i32 105, i64 0, i64 0, i64 0, i32 0, metadata !42} ; [ DW_TAG_typedef ] [lua_CFunction] [line 105, size 0, align 0, offset 0] [from ]
!42 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !7} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!43 = metadata !{metadata !44}
!44 = metadata !{i32 786465, i64 0, i64 8}        ; [ DW_TAG_subrange_type ] [0, 7]
!45 = metadata !{i32 (%struct.lua_State*)* @luaopen_coroutine}
!46 = metadata !{metadata !"luaopen_coroutine"}
!47 = metadata !{void (%struct.lua_State*, double, i32)* @luaL_checkversion_}
!48 = metadata !{metadata !"luaL_checkversion_"}
!49 = metadata !{void (%struct.lua_State*, i32, i32)* @lua_createtable}
!50 = metadata !{metadata !"lua_createtable"}
!51 = metadata !{void (%struct.lua_State*, %struct.luaL_Reg*, i32)* @luaL_setfuncs}
!52 = metadata !{metadata !"luaL_setfuncs"}
!53 = metadata !{i32 (%struct.lua_State*)* @luaB_cocreate}
!54 = metadata !{metadata !"luaB_cocreate"}
!55 = metadata !{i32 (%struct.lua_State*)* @luaB_coresume}
!56 = metadata !{metadata !"luaB_coresume"}
!57 = metadata !{i32 (%struct.lua_State*)* @luaB_corunning}
!58 = metadata !{metadata !"luaB_corunning"}
!59 = metadata !{i32 (%struct.lua_State*)* @luaB_costatus}
!60 = metadata !{metadata !"luaB_costatus"}
!61 = metadata !{i32 (%struct.lua_State*)* @luaB_cowrap}
!62 = metadata !{metadata !"luaB_cowrap"}
!63 = metadata !{i32 (%struct.lua_State*)* @luaB_yield}
!64 = metadata !{metadata !"luaB_yield"}
!65 = metadata !{i32 (%struct.lua_State*)* @luaB_yieldable}
!66 = metadata !{metadata !"luaB_yieldable"}
!67 = metadata !{void (%struct.lua_State*, i32)* @lua_pushboolean}
!68 = metadata !{metadata !"lua_pushboolean"}
!69 = metadata !{i32 (%struct.lua_State*)* @lua_isyieldable}
!70 = metadata !{metadata !"lua_isyieldable"}
!71 = metadata !{i32 (%struct.lua_State*, i32, i32, i32 (%struct.lua_State*, i32, i32)*)* @lua_yieldk}
!72 = metadata !{metadata !"lua_yieldk"}
!73 = metadata !{i32 (%struct.lua_State*)* @lua_gettop}
!74 = metadata !{metadata !"lua_gettop"}
!75 = metadata !{void (%struct.lua_State*, i32 (%struct.lua_State*)*, i32)* @lua_pushcclosure}
!76 = metadata !{metadata !"lua_pushcclosure"}
!77 = metadata !{i32 (%struct.lua_State*)* @luaB_auxwrap}
!78 = metadata !{metadata !"luaB_auxwrap"}
!79 = metadata !{%struct.lua_State* (%struct.lua_State*, i32)* @lua_tothread}
!80 = metadata !{metadata !"lua_tothread"}
!81 = metadata !{i32 (%struct.lua_State*, %struct.lua_State*, i32)* @auxresume}
!82 = metadata !{metadata !"auxresume"}
!83 = metadata !{i32 (%struct.lua_State*, i32)* @lua_type}
!84 = metadata !{metadata !"lua_type"}
!85 = metadata !{void (%struct.lua_State*, i32)* @luaL_where}
!86 = metadata !{metadata !"luaL_where"}
!87 = metadata !{void (%struct.lua_State*, i32, i32)* @lua_rotate}
!88 = metadata !{metadata !"lua_rotate"}
!89 = metadata !{void (%struct.lua_State*, i32)* @lua_concat}
!90 = metadata !{metadata !"lua_concat"}
!91 = metadata !{i32 (%struct.lua_State*)* @lua_error}
!92 = metadata !{metadata !"lua_error"}
!93 = metadata !{i32 (%struct.lua_State*, i32)* @lua_checkstack}
!94 = metadata !{metadata !"lua_checkstack"}
!95 = metadata !{i8* (%struct.lua_State*, i8*)* @lua_pushstring}
!96 = metadata !{metadata !"lua_pushstring"}
!97 = metadata !{i32 (%struct.lua_State*)* @lua_status}
!98 = metadata !{metadata !"lua_status"}
!99 = metadata !{void (%struct.lua_State*, %struct.lua_State*, i32)* @lua_xmove}
!100 = metadata !{metadata !"lua_xmove"}
!101 = metadata !{i32 (%struct.lua_State*, %struct.lua_State*, i32)* @lua_resume}
!102 = metadata !{metadata !"lua_resume"}
!103 = metadata !{void (%struct.lua_State*, i32)* @lua_settop}
!104 = metadata !{metadata !"lua_settop"}
!105 = metadata !{%struct.lua_State* (%struct.lua_State*)* @getco}
!106 = metadata !{metadata !"getco"}
!107 = metadata !{i32 (%struct.lua_State*, i32, %struct.lua_Debug*)* @lua_getstack}
!108 = metadata !{metadata !"lua_getstack"}
!109 = metadata !{i32 (%struct.lua_State*, i32, i8*)* @luaL_argerror}
!110 = metadata !{metadata !"luaL_argerror"}
!111 = metadata !{i32 (%struct.lua_State*)* @lua_pushthread}
!112 = metadata !{metadata !"lua_pushthread"}
!113 = metadata !{void (%struct.lua_State*, i32, i32)* @luaL_checktype}
!114 = metadata !{metadata !"luaL_checktype"}
!115 = metadata !{%struct.lua_State* (%struct.lua_State*)* @lua_newthread}
!116 = metadata !{metadata !"lua_newthread"}
!117 = metadata !{void (%struct.lua_State*, i32)* @lua_pushvalue}
!118 = metadata !{metadata !"lua_pushvalue"}
!119 = metadata !{metadata !"int.lua_State *.1"}
!120 = metadata !{metadata !"void.lua_State *.1.lua_Number.0.size_t.0"}
!121 = metadata !{metadata !"void.lua_State *.1.int.0.int.0"}
!122 = metadata !{metadata !"void.lua_State *.1.const luaL_Reg *.1.int.0"}
!123 = metadata !{metadata !"void.lua_State *.1.int.0"}
!124 = metadata !{metadata !"int.lua_State *.1.int.0.lua_KContext.0.lua_KFunction.1"}
!125 = metadata !{metadata !"void.lua_State *.1.lua_CFunction.1.int.0"}
!126 = metadata !{metadata !"lua_State .lua_State *.1.int.0"}
!127 = metadata !{metadata !"int.lua_State *.1.lua_State *.1.int.0"}
!128 = metadata !{metadata !"int.lua_State *.1.int.0"}
!129 = metadata !{metadata !"const char .lua_State *.1.const char *.1"}
!130 = metadata !{metadata !"void.lua_State *.1.lua_State *.1.int.0"}
!131 = metadata !{metadata !"lua_State .lua_State *.1"}
!132 = metadata !{metadata !"int.lua_State *.1.int.0.lua_Debug *.1"}
!133 = metadata !{metadata !"int.lua_State *.1.int.0.const char *.1"}
!134 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lualib.h"}
!135 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lauxlib.h"}
!136 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lua.h"}
!137 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lcorolib.c"}
!138 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!139 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!140 = metadata !{i32 1, metadata !"wchar_size", i32 4}
!141 = metadata !{i32 1, metadata !"min_enum_size", i32 4}
!142 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
!143 = metadata !{i32 786689, metadata !4, metadata !"L", metadata !6, i32 16777380, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 164]
!144 = metadata !{i32 164, i32 46, metadata !4, null}
!145 = metadata !{i32 165, i32 3, metadata !4, null}
!146 = metadata !{i32 166, i32 3, metadata !4, null}
!147 = metadata !{i32 786689, metadata !27, metadata !"L", metadata !6, i32 16777305, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 89]
!148 = metadata !{i32 89, i32 38, metadata !27, null}
!149 = metadata !{i32 786688, metadata !27, metadata !"NL", metadata !6, i32 90, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [NL] [line 90]
!150 = metadata !{i32 90, i32 14, metadata !27, null}
!151 = metadata !{i32 91, i32 3, metadata !27, null}
!152 = metadata !{i32 92, i32 8, metadata !27, null}
!153 = metadata !{i32 93, i32 3, metadata !27, null}
!154 = metadata !{i32 94, i32 3, metadata !27, null}
!155 = metadata !{i32 95, i32 3, metadata !27, null}
!156 = metadata !{i32 786689, metadata !26, metadata !"L", metadata !6, i32 16777273, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 57]
!157 = metadata !{i32 57, i32 38, metadata !26, null}
!158 = metadata !{i32 786688, metadata !26, metadata !"co", metadata !6, i32 58, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [co] [line 58]
!159 = metadata !{i32 58, i32 14, metadata !26, null} ; [ DW_TAG_imported_module ]
!160 = metadata !{i32 58, i32 19, metadata !26, null} ; [ DW_TAG_imported_module ]
!161 = metadata !{i32 786688, metadata !26, metadata !"r", metadata !6, i32 59, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 59]
!162 = metadata !{i32 59, i32 7, metadata !26, null}
!163 = metadata !{i32 60, i32 7, metadata !26, null}
!164 = metadata !{i32 60, i32 24, metadata !26, null}
!165 = metadata !{i32 61, i32 7, metadata !166, null}
!166 = metadata !{i32 786443, metadata !5, metadata !26, i32 61, i32 7, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcorolib.c]
!167 = metadata !{i32 62, i32 5, metadata !168, null}
!168 = metadata !{i32 786443, metadata !5, metadata !166, i32 61, i32 14, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcorolib.c]
!169 = metadata !{i32 63, i32 5, metadata !168, null}
!170 = metadata !{i32 64, i32 5, metadata !168, null}
!171 = metadata !{i32 67, i32 5, metadata !172, null}
!172 = metadata !{i32 786443, metadata !5, metadata !166, i32 66, i32 8, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcorolib.c]
!173 = metadata !{i32 68, i32 5, metadata !172, null}
!174 = metadata !{i32 69, i32 5, metadata !172, null}
!175 = metadata !{i32 71, i32 1, metadata !26, null}
!176 = metadata !{i32 786689, metadata !25, metadata !"L", metadata !6, i32 16777360, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 144]
!177 = metadata !{i32 144, i32 39, metadata !25, null}
!178 = metadata !{i32 786688, metadata !25, metadata !"ismain", metadata !6, i32 145, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ismain] [line 145]
!179 = metadata !{i32 145, i32 7, metadata !25, null}
!180 = metadata !{i32 145, i32 16, metadata !25, null}
!181 = metadata !{i32 146, i32 3, metadata !25, null}
!182 = metadata !{i32 147, i32 3, metadata !25, null}
!183 = metadata !{i32 786689, metadata !21, metadata !"L", metadata !6, i32 16777327, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 111]
!184 = metadata !{i32 111, i32 38, metadata !21, null}
!185 = metadata !{i32 786688, metadata !21, metadata !"co", metadata !6, i32 112, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [co] [line 112]
!186 = metadata !{i32 112, i32 14, metadata !21, null}
!187 = metadata !{i32 112, i32 19, metadata !21, null}
!188 = metadata !{i32 113, i32 7, metadata !189, null}
!189 = metadata !{i32 786443, metadata !5, metadata !21, i32 113, i32 7, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcorolib.c]
!190 = metadata !{i32 113, i32 16, metadata !191, null}
!191 = metadata !{i32 786443, metadata !5, metadata !189, i32 113, i32 16, i32 1, i32 22} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcorolib.c]
!192 = metadata !{i32 115, i32 13, metadata !193, null}
!193 = metadata !{i32 786443, metadata !5, metadata !189, i32 114, i32 8, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcorolib.c]
!194 = metadata !{i32 117, i32 9, metadata !195, null}
!195 = metadata !{i32 786443, metadata !5, metadata !193, i32 115, i32 29, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcorolib.c]
!196 = metadata !{i32 118, i32 9, metadata !195, null}
!197 = metadata !{i32 786688, metadata !198, metadata !"ar", metadata !6, i32 120, metadata !199, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ar] [line 120]
!198 = metadata !{i32 786443, metadata !5, metadata !195, i32 119, i32 20, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcorolib.c]
!199 = metadata !{i32 786454, metadata !12, null, metadata !"lua_Debug", i32 417, i64 0, i64 0, i64 0, i32 0, metadata !200} ; [ DW_TAG_typedef ] [lua_Debug] [line 417, size 0, align 0, offset 0] [from lua_Debug]
!200 = metadata !{i32 786451, metadata !12, null, metadata !"lua_Debug", i32 441, i64 800, i64 32, i32 0, i32 0, null, metadata !201, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [lua_Debug] [line 441, size 800, align 32, offset 0] [def] [from ]
!201 = metadata !{metadata !202, metadata !203, metadata !204, metadata !205, metadata !206, metadata !207, metadata !208, metadata !209, metadata !210, metadata !212, metadata !213, metadata !214, metadata !215, metadata !219}
!202 = metadata !{i32 786445, metadata !12, metadata !200, metadata !"event", i32 442, i64 32, i64 32, i64 0, i32 0, metadata !9} ; [ DW_TAG_member ] [event] [line 442, size 32, align 32, offset 0] [from int]
!203 = metadata !{i32 786445, metadata !12, metadata !200, metadata !"name", i32 443, i64 32, i64 32, i64 32, i32 0, metadata !37} ; [ DW_TAG_member ] [name] [line 443, size 32, align 32, offset 32] [from ]
!204 = metadata !{i32 786445, metadata !12, metadata !200, metadata !"namewhat", i32 444, i64 32, i64 32, i64 64, i32 0, metadata !37} ; [ DW_TAG_member ] [namewhat] [line 444, size 32, align 32, offset 64] [from ]
!205 = metadata !{i32 786445, metadata !12, metadata !200, metadata !"what", i32 445, i64 32, i64 32, i64 96, i32 0, metadata !37} ; [ DW_TAG_member ] [what] [line 445, size 32, align 32, offset 96] [from ]
!206 = metadata !{i32 786445, metadata !12, metadata !200, metadata !"source", i32 446, i64 32, i64 32, i64 128, i32 0, metadata !37} ; [ DW_TAG_member ] [source] [line 446, size 32, align 32, offset 128] [from ]
!207 = metadata !{i32 786445, metadata !12, metadata !200, metadata !"currentline", i32 447, i64 32, i64 32, i64 160, i32 0, metadata !9} ; [ DW_TAG_member ] [currentline] [line 447, size 32, align 32, offset 160] [from int]
!208 = metadata !{i32 786445, metadata !12, metadata !200, metadata !"linedefined", i32 448, i64 32, i64 32, i64 192, i32 0, metadata !9} ; [ DW_TAG_member ] [linedefined] [line 448, size 32, align 32, offset 192] [from int]
!209 = metadata !{i32 786445, metadata !12, metadata !200, metadata !"lastlinedefined", i32 449, i64 32, i64 32, i64 224, i32 0, metadata !9} ; [ DW_TAG_member ] [lastlinedefined] [line 449, size 32, align 32, offset 224] [from int]
!210 = metadata !{i32 786445, metadata !12, metadata !200, metadata !"nups", i32 450, i64 8, i64 8, i64 256, i32 0, metadata !211} ; [ DW_TAG_member ] [nups] [line 450, size 8, align 8, offset 256] [from unsigned char]
!211 = metadata !{i32 786468, null, null, metadata !"unsigned char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [unsigned char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!212 = metadata !{i32 786445, metadata !12, metadata !200, metadata !"nparams", i32 451, i64 8, i64 8, i64 264, i32 0, metadata !211} ; [ DW_TAG_member ] [nparams] [line 451, size 8, align 8, offset 264] [from unsigned char]
!213 = metadata !{i32 786445, metadata !12, metadata !200, metadata !"isvararg", i32 452, i64 8, i64 8, i64 272, i32 0, metadata !39} ; [ DW_TAG_member ] [isvararg] [line 452, size 8, align 8, offset 272] [from char]
!214 = metadata !{i32 786445, metadata !12, metadata !200, metadata !"istailcall", i32 453, i64 8, i64 8, i64 280, i32 0, metadata !39} ; [ DW_TAG_member ] [istailcall] [line 453, size 8, align 8, offset 280] [from char]
!215 = metadata !{i32 786445, metadata !12, metadata !200, metadata !"short_src", i32 454, i64 480, i64 8, i64 288, i32 0, metadata !216} ; [ DW_TAG_member ] [short_src] [line 454, size 480, align 8, offset 288] [from ]
!216 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 480, i64 8, i32 0, i32 0, metadata !39, metadata !217, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 480, align 8, offset 0] [from char]
!217 = metadata !{metadata !218}
!218 = metadata !{i32 786465, i64 0, i64 60}      ; [ DW_TAG_subrange_type ] [0, 59]
!219 = metadata !{i32 786445, metadata !12, metadata !200, metadata !"i_ci", i32 456, i64 32, i64 32, i64 768, i32 0, metadata !220} ; [ DW_TAG_member ] [i_ci] [line 456, size 32, align 32, offset 768] [from ]
!220 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !221} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from CallInfo]
!221 = metadata !{i32 786451, metadata !12, null, metadata !"CallInfo", i32 456, i64 0, i64 0, i32 0, i32 4, null, null, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [CallInfo] [line 456, size 0, align 0, offset 0] [decl] [from ]
!222 = metadata !{i32 120, i32 19, metadata !198, null}
!223 = metadata !{i32 121, i32 13, metadata !224, null}
!224 = metadata !{i32 786443, metadata !5, metadata !198, i32 121, i32 13, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcorolib.c]
!225 = metadata !{i32 122, i32 11, metadata !224, null}
!226 = metadata !{i32 123, i32 18, metadata !227, null}
!227 = metadata !{i32 786443, metadata !5, metadata !224, i32 123, i32 18, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcorolib.c]
!228 = metadata !{i32 124, i32 13, metadata !227, null}
!229 = metadata !{i32 126, i32 11, metadata !227, null}
!230 = metadata !{i32 127, i32 9, metadata !198, null}
!231 = metadata !{i32 130, i32 9, metadata !195, null}
!232 = metadata !{i32 131, i32 9, metadata !195, null}
!233 = metadata !{i32 134, i32 3, metadata !21, null}
!234 = metadata !{i32 786689, metadata !16, metadata !"L", metadata !6, i32 16777315, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 99]
!235 = metadata !{i32 99, i32 36, metadata !16, null}
!236 = metadata !{i32 100, i32 3, metadata !16, null}
!237 = metadata !{i32 101, i32 3, metadata !16, null}
!238 = metadata !{i32 102, i32 3, metadata !16, null}
!239 = metadata !{i32 786689, metadata !15, metadata !"L", metadata !6, i32 16777322, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 106]
!240 = metadata !{i32 106, i32 35, metadata !15, null}
!241 = metadata !{i32 107, i32 10, metadata !15, null}
!242 = metadata !{i32 786689, metadata !14, metadata !"L", metadata !6, i32 16777354, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 138]
!243 = metadata !{i32 138, i32 39, metadata !14, null}
!244 = metadata !{i32 139, i32 3, metadata !14, null}
!245 = metadata !{i32 139, i32 22, metadata !14, null}
!246 = metadata !{i32 140, i32 3, metadata !14, null}
!247 = metadata !{i32 786689, metadata !17, metadata !"L", metadata !6, i32 16777290, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 74]
!248 = metadata !{i32 74, i32 37, metadata !17, null}
!249 = metadata !{i32 786688, metadata !17, metadata !"co", metadata !6, i32 75, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [co] [line 75]
!250 = metadata !{i32 75, i32 14, metadata !17, null}
!251 = metadata !{i32 75, i32 19, metadata !17, null}
!252 = metadata !{i32 786688, metadata !17, metadata !"r", metadata !6, i32 76, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 76]
!253 = metadata !{i32 76, i32 7, metadata !17, null}
!254 = metadata !{i32 76, i32 11, metadata !17, null}
!255 = metadata !{i32 76, i32 28, metadata !17, null}
!256 = metadata !{i32 77, i32 7, metadata !257, null}
!257 = metadata !{i32 786443, metadata !5, metadata !17, i32 77, i32 7, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcorolib.c]
!258 = metadata !{i32 78, i32 9, metadata !259, null}
!259 = metadata !{i32 786443, metadata !5, metadata !260, i32 78, i32 9, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcorolib.c]
!260 = metadata !{i32 786443, metadata !5, metadata !257, i32 77, i32 14, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcorolib.c]
!261 = metadata !{i32 79, i32 7, metadata !262, null}
!262 = metadata !{i32 786443, metadata !5, metadata !259, i32 78, i32 41, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcorolib.c]
!263 = metadata !{i32 80, i32 7, metadata !262, null}
!264 = metadata !{i32 81, i32 7, metadata !262, null}
!265 = metadata !{i32 82, i32 5, metadata !262, null}
!266 = metadata !{i32 83, i32 12, metadata !260, null}
!267 = metadata !{i32 85, i32 3, metadata !17, null}
!268 = metadata !{i32 86, i32 1, metadata !17, null}
!269 = metadata !{i32 786689, metadata !18, metadata !"L", metadata !6, i32 16777244, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 28]
!270 = metadata !{i32 28, i32 34, metadata !18, null}
!271 = metadata !{i32 786689, metadata !18, metadata !"co", metadata !6, i32 33554460, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [co] [line 28]
!272 = metadata !{i32 28, i32 48, metadata !18, null}
!273 = metadata !{i32 786689, metadata !18, metadata !"narg", metadata !6, i32 50331676, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [narg] [line 28]
!274 = metadata !{i32 28, i32 56, metadata !18, null}
!275 = metadata !{i32 786688, metadata !18, metadata !"status", metadata !6, i32 29, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [status] [line 29]
!276 = metadata !{i32 29, i32 7, metadata !18, null}
!277 = metadata !{i32 30, i32 8, metadata !278, null}
!278 = metadata !{i32 786443, metadata !5, metadata !18, i32 30, i32 7, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcorolib.c]
!279 = metadata !{i32 31, i32 5, metadata !280, null}
!280 = metadata !{i32 786443, metadata !5, metadata !278, i32 30, i32 34, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcorolib.c]
!281 = metadata !{i32 32, i32 5, metadata !280, null}
!282 = metadata !{i32 34, i32 7, metadata !283, null}
!283 = metadata !{i32 786443, metadata !5, metadata !18, i32 34, i32 7, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcorolib.c]
!284 = metadata !{i32 34, i32 35, metadata !285, null}
!285 = metadata !{i32 786443, metadata !5, metadata !283, i32 34, i32 35, i32 1, i32 23} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcorolib.c]
!286 = metadata !{i32 35, i32 5, metadata !287, null}
!287 = metadata !{i32 786443, metadata !5, metadata !283, i32 34, i32 56, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcorolib.c]
!288 = metadata !{i32 36, i32 5, metadata !287, null}
!289 = metadata !{i32 38, i32 3, metadata !18, null}
!290 = metadata !{i32 39, i32 12, metadata !18, null}
!291 = metadata !{i32 40, i32 7, metadata !292, null}
!292 = metadata !{i32 786443, metadata !5, metadata !18, i32 40, i32 7, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcorolib.c]
!293 = metadata !{i32 40, i32 7, metadata !294, null}
!294 = metadata !{i32 786443, metadata !5, metadata !292, i32 40, i32 7, i32 1, i32 24} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcorolib.c]
!295 = metadata !{i32 786688, metadata !296, metadata !"nres", metadata !6, i32 41, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nres] [line 41]
!296 = metadata !{i32 786443, metadata !5, metadata !292, i32 40, i32 48, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcorolib.c]
!297 = metadata !{i32 41, i32 9, metadata !296, null}
!298 = metadata !{i32 41, i32 16, metadata !296, null}
!299 = metadata !{i32 42, i32 10, metadata !300, null}
!300 = metadata !{i32 786443, metadata !5, metadata !296, i32 42, i32 9, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcorolib.c]
!301 = metadata !{i32 43, i32 7, metadata !302, null}
!302 = metadata !{i32 786443, metadata !5, metadata !300, i32 42, i32 39, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcorolib.c]
!303 = metadata !{i32 44, i32 7, metadata !302, null}
!304 = metadata !{i32 45, i32 7, metadata !302, null}
!305 = metadata !{i32 47, i32 5, metadata !296, null}
!306 = metadata !{i32 48, i32 5, metadata !296, null}
!307 = metadata !{i32 51, i32 5, metadata !308, null}
!308 = metadata !{i32 786443, metadata !5, metadata !292, i32 50, i32 8, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcorolib.c]
!309 = metadata !{i32 52, i32 5, metadata !308, null}
!310 = metadata !{i32 54, i32 1, metadata !18, null}
!311 = metadata !{i32 786689, metadata !22, metadata !"L", metadata !6, i32 16777237, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 21]
!312 = metadata !{i32 21, i32 37, metadata !22, null}
!313 = metadata !{i32 786688, metadata !22, metadata !"co", metadata !6, i32 22, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [co] [line 22]
!314 = metadata !{i32 22, i32 14, metadata !22, null}
!315 = metadata !{i32 22, i32 19, metadata !22, null}
!316 = metadata !{i32 23, i32 3, metadata !22, null}
!317 = metadata !{i32 23, i32 3, metadata !318, null}
!318 = metadata !{i32 786443, metadata !5, metadata !22, i32 23, i32 3, i32 2, i32 26} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcorolib.c]
!319 = metadata !{i32 23, i32 3, metadata !320, null}
!320 = metadata !{i32 786443, metadata !5, metadata !321, i32 23, i32 3, i32 3, i32 27} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcorolib.c]
!321 = metadata !{i32 786443, metadata !5, metadata !22, i32 23, i32 3, i32 1, i32 25} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lcorolib.c]
!322 = metadata !{i32 24, i32 3, metadata !22, null}
