; ModuleID = 'C:/Users/DevolutionX/workspace/lua/src/ltablib.c'
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-n32-S64"
target triple = "armv7--linux-gnueabihf"

%struct.luaL_Reg = type { i8*, i32 (%struct.lua_State*)* }
%struct.lua_State = type opaque
%struct.luaL_Buffer = type { i8*, i32, i32, %struct.lua_State*, [8192 x i8] }

@tab_funcs = internal constant [8 x %struct.luaL_Reg] [%struct.luaL_Reg { i8* getelementptr inbounds ([7 x i8]* @.str, i32 0, i32 0), i32 (%struct.lua_State*)* @tconcat }, %struct.luaL_Reg { i8* getelementptr inbounds ([7 x i8]* @.str1, i32 0, i32 0), i32 (%struct.lua_State*)* @tinsert }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8]* @.str2, i32 0, i32 0), i32 (%struct.lua_State*)* @pack }, %struct.luaL_Reg { i8* getelementptr inbounds ([7 x i8]* @.str3, i32 0, i32 0), i32 (%struct.lua_State*)* @unpack }, %struct.luaL_Reg { i8* getelementptr inbounds ([7 x i8]* @.str4, i32 0, i32 0), i32 (%struct.lua_State*)* @tremove }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8]* @.str5, i32 0, i32 0), i32 (%struct.lua_State*)* @tmove }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8]* @.str6, i32 0, i32 0), i32 (%struct.lua_State*)* @sort }, %struct.luaL_Reg zeroinitializer], align 4
@.str = private unnamed_addr constant [7 x i8] c"concat\00", align 1
@.str1 = private unnamed_addr constant [7 x i8] c"insert\00", align 1
@.str2 = private unnamed_addr constant [5 x i8] c"pack\00", align 1
@.str3 = private unnamed_addr constant [7 x i8] c"unpack\00", align 1
@.str4 = private unnamed_addr constant [7 x i8] c"remove\00", align 1
@.str5 = private unnamed_addr constant [5 x i8] c"move\00", align 1
@.str6 = private unnamed_addr constant [5 x i8] c"sort\00", align 1
@.str7 = private unnamed_addr constant [14 x i8] c"array too big\00", align 1
@.str8 = private unnamed_addr constant [35 x i8] c"invalid order function for sorting\00", align 1
@.str9 = private unnamed_addr constant [8 x i8] c"__index\00", align 1
@.str10 = private unnamed_addr constant [11 x i8] c"__newindex\00", align 1
@.str11 = private unnamed_addr constant [6 x i8] c"__len\00", align 1
@.str12 = private unnamed_addr constant [26 x i8] c"too many elements to move\00", align 1
@.str13 = private unnamed_addr constant [24 x i8] c"destination wrap around\00", align 1
@.str14 = private unnamed_addr constant [23 x i8] c"position out of bounds\00", align 1
@.str15 = private unnamed_addr constant [27 x i8] c"too many results to unpack\00", align 1
@.str16 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str17 = private unnamed_addr constant [38 x i8] c"wrong number of arguments to 'insert'\00", align 1
@.str18 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str19 = private unnamed_addr constant [53 x i8] c"invalid value (%s) at index %d in table for 'concat'\00", align 1

; Function Attrs: nounwind
define i32 @luaopen_table(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !231), !dbg !232
  %2 = load %struct.lua_State** %1, align 4, !dbg !233
  call void @luaL_checkversion_(%struct.lua_State* %2, double 5.030000e+02, i32 136), !dbg !233
  %3 = load %struct.lua_State** %1, align 4, !dbg !233
  call void @lua_createtable(%struct.lua_State* %3, i32 0, i32 7), !dbg !233
  %4 = load %struct.lua_State** %1, align 4, !dbg !233
  call void @luaL_setfuncs(%struct.lua_State* %4, %struct.luaL_Reg* getelementptr inbounds ([8 x %struct.luaL_Reg]* @tab_funcs, i32 0, i32 0), i32 0), !dbg !233
  ret i32 1, !dbg !234
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

declare void @luaL_checkversion_(%struct.lua_State*, double, i32) #2

declare void @lua_createtable(%struct.lua_State*, i32, i32) #2

declare void @luaL_setfuncs(%struct.lua_State*, %struct.luaL_Reg*, i32) #2

; Function Attrs: nounwind
define internal i32 @tconcat(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %b = alloca %struct.luaL_Buffer, align 4
  %last = alloca i64, align 8
  %lsep = alloca i32, align 4
  %sep = alloca i8*, align 4
  %i = alloca i64, align 8
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !235), !dbg !236
  call void @llvm.dbg.declare(metadata !{%struct.luaL_Buffer* %b}, metadata !237), !dbg !238
  call void @llvm.dbg.declare(metadata !{i64* %last}, metadata !239), !dbg !240
  %2 = load %struct.lua_State** %1, align 4, !dbg !241
  call void @checktab(%struct.lua_State* %2, i32 1, i32 5), !dbg !241
  %3 = load %struct.lua_State** %1, align 4, !dbg !241
  %4 = call i64 @luaL_len(%struct.lua_State* %3, i32 1), !dbg !241
  store i64 %4, i64* %last, align 8, !dbg !241
  call void @llvm.dbg.declare(metadata !{i32* %lsep}, metadata !242), !dbg !243
  call void @llvm.dbg.declare(metadata !{i8** %sep}, metadata !244), !dbg !245
  %5 = load %struct.lua_State** %1, align 4, !dbg !246
  %6 = call i8* @luaL_optlstring(%struct.lua_State* %5, i32 2, i8* getelementptr inbounds ([1 x i8]* @.str18, i32 0, i32 0), i32* %lsep), !dbg !246
  store i8* %6, i8** %sep, align 4, !dbg !246
  call void @llvm.dbg.declare(metadata !{i64* %i}, metadata !247), !dbg !248
  %7 = load %struct.lua_State** %1, align 4, !dbg !249
  %8 = call i64 @luaL_optinteger(%struct.lua_State* %7, i32 3, i64 1), !dbg !249
  store i64 %8, i64* %i, align 8, !dbg !249
  %9 = load %struct.lua_State** %1, align 4, !dbg !250
  %10 = load i64* %last, align 8, !dbg !250
  %11 = call i64 @luaL_optinteger(%struct.lua_State* %9, i32 4, i64 %10), !dbg !250
  store i64 %11, i64* %last, align 8, !dbg !250
  %12 = load %struct.lua_State** %1, align 4, !dbg !251
  call void @luaL_buffinit(%struct.lua_State* %12, %struct.luaL_Buffer* %b), !dbg !251
  br label %13, !dbg !252

; <label>:13                                      ; preds = %22, %0
  %14 = load i64* %i, align 8, !dbg !254
  %15 = load i64* %last, align 8, !dbg !254
  %16 = icmp slt i64 %14, %15, !dbg !254
  br i1 %16, label %17, label %25, !dbg !254

; <label>:17                                      ; preds = %13
  %18 = load %struct.lua_State** %1, align 4, !dbg !257
  %19 = load i64* %i, align 8, !dbg !257
  call void @addfield(%struct.lua_State* %18, %struct.luaL_Buffer* %b, i64 %19), !dbg !257
  %20 = load i8** %sep, align 4, !dbg !259
  %21 = load i32* %lsep, align 4, !dbg !259
  call void @luaL_addlstring(%struct.luaL_Buffer* %b, i8* %20, i32 %21), !dbg !259
  br label %22, !dbg !260

; <label>:22                                      ; preds = %17
  %23 = load i64* %i, align 8, !dbg !261
  %24 = add nsw i64 %23, 1, !dbg !261
  store i64 %24, i64* %i, align 8, !dbg !261
  br label %13, !dbg !261

; <label>:25                                      ; preds = %13
  %26 = load i64* %i, align 8, !dbg !262
  %27 = load i64* %last, align 8, !dbg !262
  %28 = icmp eq i64 %26, %27, !dbg !262
  br i1 %28, label %29, label %32, !dbg !262

; <label>:29                                      ; preds = %25
  %30 = load %struct.lua_State** %1, align 4, !dbg !264
  %31 = load i64* %i, align 8, !dbg !264
  call void @addfield(%struct.lua_State* %30, %struct.luaL_Buffer* %b, i64 %31), !dbg !264
  br label %32, !dbg !264

; <label>:32                                      ; preds = %29, %25
  call void @luaL_pushresult(%struct.luaL_Buffer* %b), !dbg !265
  ret i32 1, !dbg !266
}

; Function Attrs: nounwind
define internal i32 @tinsert(%struct.lua_State* %L) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.lua_State*, align 4
  %e = alloca i64, align 8
  %pos = alloca i64, align 8
  %i = alloca i64, align 8
  store %struct.lua_State* %L, %struct.lua_State** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %2}, metadata !267), !dbg !268
  call void @llvm.dbg.declare(metadata !{i64* %e}, metadata !269), !dbg !270
  %3 = load %struct.lua_State** %2, align 4, !dbg !271
  call void @checktab(%struct.lua_State* %3, i32 1, i32 7), !dbg !271
  %4 = load %struct.lua_State** %2, align 4, !dbg !271
  %5 = call i64 @luaL_len(%struct.lua_State* %4, i32 1), !dbg !271
  %6 = add nsw i64 %5, 1, !dbg !271
  store i64 %6, i64* %e, align 8, !dbg !271
  call void @llvm.dbg.declare(metadata !{i64* %pos}, metadata !272), !dbg !273
  %7 = load %struct.lua_State** %2, align 4, !dbg !274
  %8 = call i32 @lua_gettop(%struct.lua_State* %7), !dbg !274
  switch i32 %8, label %43 [
    i32 2, label %9
    i32 3, label %11
  ], !dbg !274

; <label>:9                                       ; preds = %0
  %10 = load i64* %e, align 8, !dbg !275
  store i64 %10, i64* %pos, align 8, !dbg !275
  br label %46, !dbg !278

; <label>:11                                      ; preds = %0
  call void @llvm.dbg.declare(metadata !{i64* %i}, metadata !279), !dbg !281
  %12 = load %struct.lua_State** %2, align 4, !dbg !282
  %13 = call i64 @luaL_checkinteger(%struct.lua_State* %12, i32 2), !dbg !282
  store i64 %13, i64* %pos, align 8, !dbg !282
  %14 = load i64* %pos, align 8, !dbg !283
  %15 = icmp sle i64 1, %14, !dbg !283
  br i1 %15, label %16, label %20, !dbg !283

; <label>:16                                      ; preds = %11
  %17 = load i64* %pos, align 8, !dbg !284
  %18 = load i64* %e, align 8, !dbg !284
  %19 = icmp sle i64 %17, %18, !dbg !284
  br i1 %19, label %24, label %20, !dbg !284

; <label>:20                                      ; preds = %16, %11
  %21 = load %struct.lua_State** %2, align 4, !dbg !286
  %22 = call i32 @luaL_argerror(%struct.lua_State* %21, i32 2, i8* getelementptr inbounds ([23 x i8]* @.str14, i32 0, i32 0)), !dbg !286
  %23 = icmp ne i32 %22, 0, !dbg !286
  br label %24, !dbg !286

; <label>:24                                      ; preds = %20, %16
  %25 = phi i1 [ true, %16 ], [ %23, %20 ]
  %26 = zext i1 %25 to i32, !dbg !289
  %27 = load i64* %e, align 8, !dbg !292
  store i64 %27, i64* %i, align 8, !dbg !292
  br label %28, !dbg !292

; <label>:28                                      ; preds = %39, %24
  %29 = load i64* %i, align 8, !dbg !294
  %30 = load i64* %pos, align 8, !dbg !294
  %31 = icmp sgt i64 %29, %30, !dbg !294
  br i1 %31, label %32, label %42, !dbg !294

; <label>:32                                      ; preds = %28
  %33 = load %struct.lua_State** %2, align 4, !dbg !297
  %34 = load i64* %i, align 8, !dbg !297
  %35 = sub nsw i64 %34, 1, !dbg !297
  %36 = call i32 @lua_geti(%struct.lua_State* %33, i32 1, i64 %35), !dbg !297
  %37 = load %struct.lua_State** %2, align 4, !dbg !299
  %38 = load i64* %i, align 8, !dbg !299
  call void @lua_seti(%struct.lua_State* %37, i32 1, i64 %38), !dbg !299
  br label %39, !dbg !300

; <label>:39                                      ; preds = %32
  %40 = load i64* %i, align 8, !dbg !301
  %41 = add nsw i64 %40, -1, !dbg !301
  store i64 %41, i64* %i, align 8, !dbg !301
  br label %28, !dbg !301

; <label>:42                                      ; preds = %28
  br label %46, !dbg !302

; <label>:43                                      ; preds = %0
  %44 = load %struct.lua_State** %2, align 4, !dbg !303
  %45 = call i32 (%struct.lua_State*, i8*, ...)* @luaL_error(%struct.lua_State* %44, i8* getelementptr inbounds ([38 x i8]* @.str17, i32 0, i32 0)), !dbg !303
  store i32 %45, i32* %1, !dbg !303
  br label %49, !dbg !303

; <label>:46                                      ; preds = %42, %9
  %47 = load %struct.lua_State** %2, align 4, !dbg !305
  %48 = load i64* %pos, align 8, !dbg !305
  call void @lua_seti(%struct.lua_State* %47, i32 1, i64 %48), !dbg !305
  store i32 0, i32* %1, !dbg !306
  br label %49, !dbg !306

; <label>:49                                      ; preds = %46, %43
  %50 = load i32* %1, !dbg !307
  ret i32 %50, !dbg !307
}

; Function Attrs: nounwind
define internal i32 @pack(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !308), !dbg !309
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !310), !dbg !311
  call void @llvm.dbg.declare(metadata !{i32* %n}, metadata !312), !dbg !313
  %2 = load %struct.lua_State** %1, align 4, !dbg !314
  %3 = call i32 @lua_gettop(%struct.lua_State* %2), !dbg !314
  store i32 %3, i32* %n, align 4, !dbg !314
  %4 = load %struct.lua_State** %1, align 4, !dbg !315
  %5 = load i32* %n, align 4, !dbg !315
  call void @lua_createtable(%struct.lua_State* %4, i32 %5, i32 1), !dbg !315
  %6 = load %struct.lua_State** %1, align 4, !dbg !316
  call void @lua_rotate(%struct.lua_State* %6, i32 1, i32 1), !dbg !316
  %7 = load i32* %n, align 4, !dbg !317
  store i32 %7, i32* %i, align 4, !dbg !317
  br label %8, !dbg !317

; <label>:8                                       ; preds = %15, %0
  %9 = load i32* %i, align 4, !dbg !319
  %10 = icmp sge i32 %9, 1, !dbg !319
  br i1 %10, label %11, label %18, !dbg !319

; <label>:11                                      ; preds = %8
  %12 = load %struct.lua_State** %1, align 4, !dbg !322
  %13 = load i32* %i, align 4, !dbg !322
  %14 = sext i32 %13 to i64, !dbg !322
  call void @lua_seti(%struct.lua_State* %12, i32 1, i64 %14), !dbg !322
  br label %15, !dbg !322

; <label>:15                                      ; preds = %11
  %16 = load i32* %i, align 4, !dbg !323
  %17 = add nsw i32 %16, -1, !dbg !323
  store i32 %17, i32* %i, align 4, !dbg !323
  br label %8, !dbg !323

; <label>:18                                      ; preds = %8
  %19 = load %struct.lua_State** %1, align 4, !dbg !324
  %20 = load i32* %n, align 4, !dbg !324
  %21 = sext i32 %20 to i64, !dbg !324
  call void @lua_pushinteger(%struct.lua_State* %19, i64 %21), !dbg !324
  %22 = load %struct.lua_State** %1, align 4, !dbg !325
  call void @lua_setfield(%struct.lua_State* %22, i32 1, i8* getelementptr inbounds ([2 x i8]* @.str16, i32 0, i32 0)), !dbg !325
  ret i32 1, !dbg !326
}

; Function Attrs: nounwind
define internal i32 @unpack(%struct.lua_State* %L) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.lua_State*, align 4
  %n = alloca i64, align 8
  %i = alloca i64, align 8
  %e = alloca i64, align 8
  store %struct.lua_State* %L, %struct.lua_State** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %2}, metadata !327), !dbg !328
  call void @llvm.dbg.declare(metadata !{i64* %n}, metadata !329), !dbg !332
  call void @llvm.dbg.declare(metadata !{i64* %i}, metadata !333), !dbg !334
  %3 = load %struct.lua_State** %2, align 4, !dbg !335
  %4 = call i64 @luaL_optinteger(%struct.lua_State* %3, i32 2, i64 1), !dbg !335
  store i64 %4, i64* %i, align 8, !dbg !335
  call void @llvm.dbg.declare(metadata !{i64* %e}, metadata !336), !dbg !337
  %5 = load %struct.lua_State** %2, align 4, !dbg !338
  %6 = call i32 @lua_type(%struct.lua_State* %5, i32 3), !dbg !338
  %7 = icmp sle i32 %6, 0, !dbg !338
  br i1 %7, label %8, label %11, !dbg !338

; <label>:8                                       ; preds = %0
  %9 = load %struct.lua_State** %2, align 4, !dbg !339
  %10 = call i64 @luaL_len(%struct.lua_State* %9, i32 1), !dbg !339
  br label %14, !dbg !339

; <label>:11                                      ; preds = %0
  %12 = load %struct.lua_State** %2, align 4, !dbg !341
  %13 = call i64 @luaL_checkinteger(%struct.lua_State* %12, i32 3), !dbg !341
  br label %14, !dbg !341

; <label>:14                                      ; preds = %11, %8
  %15 = phi i64 [ %10, %8 ], [ %13, %11 ], !dbg !338
  store i64 %15, i64* %e, align 8, !dbg !343
  %16 = load i64* %i, align 8, !dbg !346
  %17 = load i64* %e, align 8, !dbg !346
  %18 = icmp sgt i64 %16, %17, !dbg !346
  br i1 %18, label %19, label %20, !dbg !346

; <label>:19                                      ; preds = %14
  store i32 0, i32* %1, !dbg !348
  br label %54, !dbg !348

; <label>:20                                      ; preds = %14
  %21 = load i64* %e, align 8, !dbg !350
  %22 = load i64* %i, align 8, !dbg !350
  %23 = sub i64 %21, %22, !dbg !350
  store i64 %23, i64* %n, align 8, !dbg !350
  %24 = load i64* %n, align 8, !dbg !351
  %25 = icmp uge i64 %24, 2147483647, !dbg !351
  br i1 %25, label %33, label %26, !dbg !351

; <label>:26                                      ; preds = %20
  %27 = load %struct.lua_State** %2, align 4, !dbg !353
  %28 = load i64* %n, align 8, !dbg !353
  %29 = add i64 %28, 1, !dbg !353
  store i64 %29, i64* %n, align 8, !dbg !353
  %30 = trunc i64 %29 to i32, !dbg !353
  %31 = call i32 @lua_checkstack(%struct.lua_State* %27, i32 %30), !dbg !353
  %32 = icmp ne i32 %31, 0, !dbg !353
  br i1 %32, label %36, label %33, !dbg !353

; <label>:33                                      ; preds = %26, %20
  %34 = load %struct.lua_State** %2, align 4, !dbg !355
  %35 = call i32 (%struct.lua_State*, i8*, ...)* @luaL_error(%struct.lua_State* %34, i8* getelementptr inbounds ([27 x i8]* @.str15, i32 0, i32 0)), !dbg !355
  store i32 %35, i32* %1, !dbg !355
  br label %54, !dbg !355

; <label>:36                                      ; preds = %26
  br label %37, !dbg !356

; <label>:37                                      ; preds = %45, %36
  %38 = load i64* %i, align 8, !dbg !358
  %39 = load i64* %e, align 8, !dbg !358
  %40 = icmp slt i64 %38, %39, !dbg !358
  br i1 %40, label %41, label %48, !dbg !358

; <label>:41                                      ; preds = %37
  %42 = load %struct.lua_State** %2, align 4, !dbg !361
  %43 = load i64* %i, align 8, !dbg !361
  %44 = call i32 @lua_geti(%struct.lua_State* %42, i32 1, i64 %43), !dbg !361
  br label %45, !dbg !363

; <label>:45                                      ; preds = %41
  %46 = load i64* %i, align 8, !dbg !364
  %47 = add nsw i64 %46, 1, !dbg !364
  store i64 %47, i64* %i, align 8, !dbg !364
  br label %37, !dbg !364

; <label>:48                                      ; preds = %37
  %49 = load %struct.lua_State** %2, align 4, !dbg !365
  %50 = load i64* %e, align 8, !dbg !365
  %51 = call i32 @lua_geti(%struct.lua_State* %49, i32 1, i64 %50), !dbg !365
  %52 = load i64* %n, align 8, !dbg !366
  %53 = trunc i64 %52 to i32, !dbg !366
  store i32 %53, i32* %1, !dbg !366
  br label %54, !dbg !366

; <label>:54                                      ; preds = %48, %33, %19
  %55 = load i32* %1, !dbg !367
  ret i32 %55, !dbg !367
}

; Function Attrs: nounwind
define internal i32 @tremove(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %size = alloca i64, align 8
  %pos = alloca i64, align 8
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !368), !dbg !369
  call void @llvm.dbg.declare(metadata !{i64* %size}, metadata !370), !dbg !371
  %2 = load %struct.lua_State** %1, align 4, !dbg !372
  call void @checktab(%struct.lua_State* %2, i32 1, i32 7), !dbg !372
  %3 = load %struct.lua_State** %1, align 4, !dbg !372
  %4 = call i64 @luaL_len(%struct.lua_State* %3, i32 1), !dbg !372
  store i64 %4, i64* %size, align 8, !dbg !372
  call void @llvm.dbg.declare(metadata !{i64* %pos}, metadata !373), !dbg !374
  %5 = load %struct.lua_State** %1, align 4, !dbg !375
  %6 = load i64* %size, align 8, !dbg !375
  %7 = call i64 @luaL_optinteger(%struct.lua_State* %5, i32 2, i64 %6), !dbg !375
  store i64 %7, i64* %pos, align 8, !dbg !375
  %8 = load i64* %pos, align 8, !dbg !376
  %9 = load i64* %size, align 8, !dbg !376
  %10 = icmp ne i64 %8, %9, !dbg !376
  br i1 %10, label %11, label %26, !dbg !376

; <label>:11                                      ; preds = %0
  %12 = load i64* %pos, align 8, !dbg !378
  %13 = icmp sle i64 1, %12, !dbg !378
  br i1 %13, label %14, label %19, !dbg !378

; <label>:14                                      ; preds = %11
  %15 = load i64* %pos, align 8, !dbg !379
  %16 = load i64* %size, align 8, !dbg !379
  %17 = add nsw i64 %16, 1, !dbg !379
  %18 = icmp sle i64 %15, %17, !dbg !379
  br i1 %18, label %23, label %19, !dbg !379

; <label>:19                                      ; preds = %14, %11
  %20 = load %struct.lua_State** %1, align 4, !dbg !381
  %21 = call i32 @luaL_argerror(%struct.lua_State* %20, i32 1, i8* getelementptr inbounds ([23 x i8]* @.str14, i32 0, i32 0)), !dbg !381
  %22 = icmp ne i32 %21, 0, !dbg !381
  br label %23, !dbg !381

; <label>:23                                      ; preds = %19, %14
  %24 = phi i1 [ true, %14 ], [ %22, %19 ]
  %25 = zext i1 %24 to i32, !dbg !384
  br label %26, !dbg !384

; <label>:26                                      ; preds = %23, %0
  %27 = load %struct.lua_State** %1, align 4, !dbg !387
  %28 = load i64* %pos, align 8, !dbg !387
  %29 = call i32 @lua_geti(%struct.lua_State* %27, i32 1, i64 %28), !dbg !387
  br label %30, !dbg !388

; <label>:30                                      ; preds = %41, %26
  %31 = load i64* %pos, align 8, !dbg !390
  %32 = load i64* %size, align 8, !dbg !390
  %33 = icmp slt i64 %31, %32, !dbg !390
  br i1 %33, label %34, label %44, !dbg !390

; <label>:34                                      ; preds = %30
  %35 = load %struct.lua_State** %1, align 4, !dbg !393
  %36 = load i64* %pos, align 8, !dbg !393
  %37 = add nsw i64 %36, 1, !dbg !393
  %38 = call i32 @lua_geti(%struct.lua_State* %35, i32 1, i64 %37), !dbg !393
  %39 = load %struct.lua_State** %1, align 4, !dbg !395
  %40 = load i64* %pos, align 8, !dbg !395
  call void @lua_seti(%struct.lua_State* %39, i32 1, i64 %40), !dbg !395
  br label %41, !dbg !396

; <label>:41                                      ; preds = %34
  %42 = load i64* %pos, align 8, !dbg !397
  %43 = add nsw i64 %42, 1, !dbg !397
  store i64 %43, i64* %pos, align 8, !dbg !397
  br label %30, !dbg !397

; <label>:44                                      ; preds = %30
  %45 = load %struct.lua_State** %1, align 4, !dbg !398
  call void @lua_pushnil(%struct.lua_State* %45), !dbg !398
  %46 = load %struct.lua_State** %1, align 4, !dbg !399
  %47 = load i64* %pos, align 8, !dbg !399
  call void @lua_seti(%struct.lua_State* %46, i32 1, i64 %47), !dbg !399
  ret i32 1, !dbg !400
}

; Function Attrs: nounwind
define internal i32 @tmove(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %f = alloca i64, align 8
  %e = alloca i64, align 8
  %t = alloca i64, align 8
  %tt = alloca i32, align 4
  %n = alloca i64, align 8
  %i = alloca i64, align 8
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !401), !dbg !402
  call void @llvm.dbg.declare(metadata !{i64* %f}, metadata !403), !dbg !404
  %2 = load %struct.lua_State** %1, align 4, !dbg !405
  %3 = call i64 @luaL_checkinteger(%struct.lua_State* %2, i32 2), !dbg !405
  store i64 %3, i64* %f, align 8, !dbg !405
  call void @llvm.dbg.declare(metadata !{i64* %e}, metadata !406), !dbg !407
  %4 = load %struct.lua_State** %1, align 4, !dbg !408
  %5 = call i64 @luaL_checkinteger(%struct.lua_State* %4, i32 3), !dbg !408
  store i64 %5, i64* %e, align 8, !dbg !408
  call void @llvm.dbg.declare(metadata !{i64* %t}, metadata !409), !dbg !410
  %6 = load %struct.lua_State** %1, align 4, !dbg !411
  %7 = call i64 @luaL_checkinteger(%struct.lua_State* %6, i32 4), !dbg !411
  store i64 %7, i64* %t, align 8, !dbg !411
  call void @llvm.dbg.declare(metadata !{i32* %tt}, metadata !412), !dbg !413
  %8 = load %struct.lua_State** %1, align 4, !dbg !414
  %9 = call i32 @lua_type(%struct.lua_State* %8, i32 5), !dbg !414
  %10 = icmp sle i32 %9, 0, !dbg !414
  %11 = xor i1 %10, true, !dbg !414
  %12 = select i1 %11, i32 5, i32 1, !dbg !414
  store i32 %12, i32* %tt, align 4, !dbg !414
  %13 = load %struct.lua_State** %1, align 4, !dbg !415
  call void @checktab(%struct.lua_State* %13, i32 1, i32 1), !dbg !415
  %14 = load %struct.lua_State** %1, align 4, !dbg !416
  %15 = load i32* %tt, align 4, !dbg !416
  call void @checktab(%struct.lua_State* %14, i32 %15, i32 2), !dbg !416
  %16 = load i64* %e, align 8, !dbg !417
  %17 = load i64* %f, align 8, !dbg !417
  %18 = icmp sge i64 %16, %17, !dbg !417
  br i1 %18, label %19, label %107, !dbg !417

; <label>:19                                      ; preds = %0
  call void @llvm.dbg.declare(metadata !{i64* %n}, metadata !419), !dbg !421
  call void @llvm.dbg.declare(metadata !{i64* %i}, metadata !422), !dbg !423
  %20 = load i64* %f, align 8, !dbg !424
  %21 = icmp sgt i64 %20, 0, !dbg !424
  br i1 %21, label %31, label %22, !dbg !424

; <label>:22                                      ; preds = %19
  %23 = load i64* %e, align 8, !dbg !425
  %24 = load i64* %f, align 8, !dbg !425
  %25 = add nsw i64 9223372036854775807, %24, !dbg !425
  %26 = icmp slt i64 %23, %25, !dbg !425
  br i1 %26, label %31, label %27, !dbg !425

; <label>:27                                      ; preds = %22
  %28 = load %struct.lua_State** %1, align 4, !dbg !427
  %29 = call i32 @luaL_argerror(%struct.lua_State* %28, i32 3, i8* getelementptr inbounds ([26 x i8]* @.str12, i32 0, i32 0)), !dbg !427
  %30 = icmp ne i32 %29, 0, !dbg !427
  br label %31, !dbg !427

; <label>:31                                      ; preds = %27, %22, %19
  %32 = phi i1 [ true, %22 ], [ true, %19 ], [ %30, %27 ]
  %33 = zext i1 %32 to i32, !dbg !429
  %34 = load i64* %e, align 8, !dbg !433
  %35 = load i64* %f, align 8, !dbg !433
  %36 = sub nsw i64 %34, %35, !dbg !433
  %37 = add nsw i64 %36, 1, !dbg !433
  store i64 %37, i64* %n, align 8, !dbg !433
  %38 = load i64* %t, align 8, !dbg !434
  %39 = load i64* %n, align 8, !dbg !434
  %40 = sub nsw i64 9223372036854775807, %39, !dbg !434
  %41 = add nsw i64 %40, 1, !dbg !434
  %42 = icmp sle i64 %38, %41, !dbg !434
  br i1 %42, label %47, label %43, !dbg !434

; <label>:43                                      ; preds = %31
  %44 = load %struct.lua_State** %1, align 4, !dbg !435
  %45 = call i32 @luaL_argerror(%struct.lua_State* %44, i32 4, i8* getelementptr inbounds ([24 x i8]* @.str13, i32 0, i32 0)), !dbg !435
  %46 = icmp ne i32 %45, 0, !dbg !435
  br label %47, !dbg !435

; <label>:47                                      ; preds = %43, %31
  %48 = phi i1 [ true, %31 ], [ %46, %43 ]
  %49 = zext i1 %48 to i32, !dbg !437
  %50 = load i64* %t, align 8, !dbg !440
  %51 = load i64* %e, align 8, !dbg !440
  %52 = icmp sgt i64 %50, %51, !dbg !440
  br i1 %52, label %65, label %53, !dbg !440

; <label>:53                                      ; preds = %47
  %54 = load i64* %t, align 8, !dbg !442
  %55 = load i64* %f, align 8, !dbg !442
  %56 = icmp sle i64 %54, %55, !dbg !442
  br i1 %56, label %65, label %57, !dbg !442

; <label>:57                                      ; preds = %53
  %58 = load i32* %tt, align 4, !dbg !444
  %59 = icmp ne i32 %58, 1, !dbg !444
  br i1 %59, label %60, label %85, !dbg !444

; <label>:60                                      ; preds = %57
  %61 = load %struct.lua_State** %1, align 4, !dbg !446
  %62 = load i32* %tt, align 4, !dbg !446
  %63 = call i32 @lua_compare(%struct.lua_State* %61, i32 1, i32 %62, i32 0), !dbg !446
  %64 = icmp ne i32 %63, 0, !dbg !446
  br i1 %64, label %85, label %65, !dbg !446

; <label>:65                                      ; preds = %60, %53, %47
  store i64 0, i64* %i, align 8, !dbg !448
  br label %66, !dbg !448

; <label>:66                                      ; preds = %81, %65
  %67 = load i64* %i, align 8, !dbg !451
  %68 = load i64* %n, align 8, !dbg !451
  %69 = icmp slt i64 %67, %68, !dbg !451
  br i1 %69, label %70, label %84, !dbg !451

; <label>:70                                      ; preds = %66
  %71 = load %struct.lua_State** %1, align 4, !dbg !454
  %72 = load i64* %f, align 8, !dbg !454
  %73 = load i64* %i, align 8, !dbg !454
  %74 = add nsw i64 %72, %73, !dbg !454
  %75 = call i32 @lua_geti(%struct.lua_State* %71, i32 1, i64 %74), !dbg !454
  %76 = load %struct.lua_State** %1, align 4, !dbg !456
  %77 = load i32* %tt, align 4, !dbg !456
  %78 = load i64* %t, align 8, !dbg !456
  %79 = load i64* %i, align 8, !dbg !456
  %80 = add nsw i64 %78, %79, !dbg !456
  call void @lua_seti(%struct.lua_State* %76, i32 %77, i64 %80), !dbg !456
  br label %81, !dbg !457

; <label>:81                                      ; preds = %70
  %82 = load i64* %i, align 8, !dbg !458
  %83 = add nsw i64 %82, 1, !dbg !458
  store i64 %83, i64* %i, align 8, !dbg !458
  br label %66, !dbg !458

; <label>:84                                      ; preds = %66
  br label %106, !dbg !459

; <label>:85                                      ; preds = %60, %57
  %86 = load i64* %n, align 8, !dbg !460
  %87 = sub nsw i64 %86, 1, !dbg !460
  store i64 %87, i64* %i, align 8, !dbg !460
  br label %88, !dbg !460

; <label>:88                                      ; preds = %102, %85
  %89 = load i64* %i, align 8, !dbg !463
  %90 = icmp sge i64 %89, 0, !dbg !463
  br i1 %90, label %91, label %105, !dbg !463

; <label>:91                                      ; preds = %88
  %92 = load %struct.lua_State** %1, align 4, !dbg !466
  %93 = load i64* %f, align 8, !dbg !466
  %94 = load i64* %i, align 8, !dbg !466
  %95 = add nsw i64 %93, %94, !dbg !466
  %96 = call i32 @lua_geti(%struct.lua_State* %92, i32 1, i64 %95), !dbg !466
  %97 = load %struct.lua_State** %1, align 4, !dbg !468
  %98 = load i32* %tt, align 4, !dbg !468
  %99 = load i64* %t, align 8, !dbg !468
  %100 = load i64* %i, align 8, !dbg !468
  %101 = add nsw i64 %99, %100, !dbg !468
  call void @lua_seti(%struct.lua_State* %97, i32 %98, i64 %101), !dbg !468
  br label %102, !dbg !469

; <label>:102                                     ; preds = %91
  %103 = load i64* %i, align 8, !dbg !470
  %104 = add nsw i64 %103, -1, !dbg !470
  store i64 %104, i64* %i, align 8, !dbg !470
  br label %88, !dbg !470

; <label>:105                                     ; preds = %88
  br label %106

; <label>:106                                     ; preds = %105, %84
  br label %107, !dbg !471

; <label>:107                                     ; preds = %106, %0
  %108 = load %struct.lua_State** %1, align 4, !dbg !472
  %109 = load i32* %tt, align 4, !dbg !472
  call void @lua_pushvalue(%struct.lua_State* %108, i32 %109), !dbg !472
  ret i32 1, !dbg !473
}

; Function Attrs: nounwind
define internal i32 @sort(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %n = alloca i64, align 8
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !474), !dbg !475
  call void @llvm.dbg.declare(metadata !{i64* %n}, metadata !476), !dbg !477
  %2 = load %struct.lua_State** %1, align 4, !dbg !478
  call void @checktab(%struct.lua_State* %2, i32 1, i32 7), !dbg !478
  %3 = load %struct.lua_State** %1, align 4, !dbg !478
  %4 = call i64 @luaL_len(%struct.lua_State* %3, i32 1), !dbg !478
  store i64 %4, i64* %n, align 8, !dbg !478
  %5 = load i64* %n, align 8, !dbg !479
  %6 = icmp sgt i64 %5, 1, !dbg !479
  br i1 %6, label %7, label %27, !dbg !479

; <label>:7                                       ; preds = %0
  %8 = load i64* %n, align 8, !dbg !481
  %9 = icmp slt i64 %8, 2147483647, !dbg !481
  br i1 %9, label %14, label %10, !dbg !481

; <label>:10                                      ; preds = %7
  %11 = load %struct.lua_State** %1, align 4, !dbg !483
  %12 = call i32 @luaL_argerror(%struct.lua_State* %11, i32 1, i8* getelementptr inbounds ([14 x i8]* @.str7, i32 0, i32 0)), !dbg !483
  %13 = icmp ne i32 %12, 0, !dbg !483
  br label %14, !dbg !483

; <label>:14                                      ; preds = %10, %7
  %15 = phi i1 [ true, %7 ], [ %13, %10 ]
  %16 = zext i1 %15 to i32, !dbg !485
  %17 = load %struct.lua_State** %1, align 4, !dbg !488
  %18 = call i32 @lua_type(%struct.lua_State* %17, i32 2), !dbg !488
  %19 = icmp sle i32 %18, 0, !dbg !488
  br i1 %19, label %22, label %20, !dbg !488

; <label>:20                                      ; preds = %14
  %21 = load %struct.lua_State** %1, align 4, !dbg !490
  call void @luaL_checktype(%struct.lua_State* %21, i32 2, i32 6), !dbg !490
  br label %22, !dbg !490

; <label>:22                                      ; preds = %20, %14
  %23 = load %struct.lua_State** %1, align 4, !dbg !491
  call void @lua_settop(%struct.lua_State* %23, i32 2), !dbg !491
  %24 = load %struct.lua_State** %1, align 4, !dbg !492
  %25 = load i64* %n, align 8, !dbg !492
  %26 = trunc i64 %25 to i32, !dbg !492
  call void @auxsort(%struct.lua_State* %24, i32 1, i32 %26, i32 0), !dbg !492
  br label %27, !dbg !493

; <label>:27                                      ; preds = %22, %0
  ret i32 0, !dbg !494
}

; Function Attrs: nounwind
define internal void @checktab(%struct.lua_State* %L, i32 %arg, i32 %what) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %n = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !495), !dbg !496
  store i32 %arg, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !497), !dbg !498
  store i32 %what, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !499), !dbg !500
  %4 = load %struct.lua_State** %1, align 4, !dbg !501
  %5 = load i32* %2, align 4, !dbg !501
  %6 = call i32 @lua_type(%struct.lua_State* %4, i32 %5), !dbg !501
  %7 = icmp ne i32 %6, 5, !dbg !501
  br i1 %7, label %8, label %52, !dbg !501

; <label>:8                                       ; preds = %0
  call void @llvm.dbg.declare(metadata !{i32* %n}, metadata !503), !dbg !505
  store i32 1, i32* %n, align 4, !dbg !506
  %9 = load %struct.lua_State** %1, align 4, !dbg !507
  %10 = load i32* %2, align 4, !dbg !507
  %11 = call i32 @lua_getmetatable(%struct.lua_State* %9, i32 %10), !dbg !507
  %12 = icmp ne i32 %11, 0, !dbg !507
  br i1 %12, label %13, label %48, !dbg !507

; <label>:13                                      ; preds = %8
  %14 = load i32* %3, align 4, !dbg !509
  %15 = and i32 %14, 1, !dbg !509
  %16 = icmp ne i32 %15, 0, !dbg !509
  br i1 %16, label %17, label %23, !dbg !509

; <label>:17                                      ; preds = %13
  %18 = load %struct.lua_State** %1, align 4, !dbg !511
  %19 = load i32* %n, align 4, !dbg !511
  %20 = add nsw i32 %19, 1, !dbg !511
  store i32 %20, i32* %n, align 4, !dbg !511
  %21 = call i32 @checkfield(%struct.lua_State* %18, i8* getelementptr inbounds ([8 x i8]* @.str9, i32 0, i32 0), i32 %20), !dbg !511
  %22 = icmp ne i32 %21, 0, !dbg !511
  br i1 %22, label %23, label %48, !dbg !511

; <label>:23                                      ; preds = %17, %13
  %24 = load i32* %3, align 4, !dbg !512
  %25 = and i32 %24, 2, !dbg !512
  %26 = icmp ne i32 %25, 0, !dbg !512
  br i1 %26, label %27, label %33, !dbg !512

; <label>:27                                      ; preds = %23
  %28 = load %struct.lua_State** %1, align 4, !dbg !514
  %29 = load i32* %n, align 4, !dbg !514
  %30 = add nsw i32 %29, 1, !dbg !514
  store i32 %30, i32* %n, align 4, !dbg !514
  %31 = call i32 @checkfield(%struct.lua_State* %28, i8* getelementptr inbounds ([11 x i8]* @.str10, i32 0, i32 0), i32 %30), !dbg !514
  %32 = icmp ne i32 %31, 0, !dbg !514
  br i1 %32, label %33, label %48, !dbg !514

; <label>:33                                      ; preds = %27, %23
  %34 = load i32* %3, align 4, !dbg !515
  %35 = and i32 %34, 4, !dbg !515
  %36 = icmp ne i32 %35, 0, !dbg !515
  br i1 %36, label %37, label %43, !dbg !515

; <label>:37                                      ; preds = %33
  %38 = load %struct.lua_State** %1, align 4, !dbg !517
  %39 = load i32* %n, align 4, !dbg !517
  %40 = add nsw i32 %39, 1, !dbg !517
  store i32 %40, i32* %n, align 4, !dbg !517
  %41 = call i32 @checkfield(%struct.lua_State* %38, i8* getelementptr inbounds ([6 x i8]* @.str11, i32 0, i32 0), i32 %40), !dbg !517
  %42 = icmp ne i32 %41, 0, !dbg !517
  br i1 %42, label %43, label %48, !dbg !517

; <label>:43                                      ; preds = %37, %33
  %44 = load %struct.lua_State** %1, align 4, !dbg !518
  %45 = load i32* %n, align 4, !dbg !518
  %46 = sub nsw i32 0, %45, !dbg !518
  %47 = sub nsw i32 %46, 1, !dbg !518
  call void @lua_settop(%struct.lua_State* %44, i32 %47), !dbg !518
  br label %51, !dbg !520

; <label>:48                                      ; preds = %37, %27, %17, %8
  %49 = load %struct.lua_State** %1, align 4, !dbg !521
  %50 = load i32* %2, align 4, !dbg !521
  call void @luaL_checktype(%struct.lua_State* %49, i32 %50, i32 5), !dbg !521
  br label %51

; <label>:51                                      ; preds = %48, %43
  br label %52, !dbg !522

; <label>:52                                      ; preds = %51, %0
  ret void, !dbg !523
}

declare i64 @luaL_len(%struct.lua_State*, i32) #2

declare i32 @luaL_argerror(%struct.lua_State*, i32, i8*) #2

declare i32 @lua_type(%struct.lua_State*, i32) #2

declare void @luaL_checktype(%struct.lua_State*, i32, i32) #2

declare void @lua_settop(%struct.lua_State*, i32) #2

; Function Attrs: nounwind
define internal void @auxsort(%struct.lua_State* %L, i32 %lo, i32 %up, i32 %rnd) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %p = alloca i32, align 4
  %n = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !524), !dbg !525
  store i32 %lo, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !526), !dbg !527
  store i32 %up, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !528), !dbg !529
  store i32 %rnd, i32* %4, align 4
  call void @llvm.dbg.declare(metadata !{i32* %4}, metadata !530), !dbg !531
  br label %5, !dbg !532

; <label>:5                                       ; preds = %146, %0
  %6 = load i32* %2, align 4, !dbg !533
  %7 = load i32* %3, align 4, !dbg !533
  %8 = icmp ult i32 %6, %7, !dbg !533
  br i1 %8, label %9, label %147, !dbg !533

; <label>:9                                       ; preds = %5
  call void @llvm.dbg.declare(metadata !{i32* %p}, metadata !535), !dbg !537
  call void @llvm.dbg.declare(metadata !{i32* %n}, metadata !538), !dbg !539
  %10 = load %struct.lua_State** %1, align 4, !dbg !540
  %11 = load i32* %2, align 4, !dbg !540
  %12 = zext i32 %11 to i64, !dbg !540
  %13 = call i32 @lua_geti(%struct.lua_State* %10, i32 1, i64 %12), !dbg !540
  %14 = load %struct.lua_State** %1, align 4, !dbg !541
  %15 = load i32* %3, align 4, !dbg !541
  %16 = zext i32 %15 to i64, !dbg !541
  %17 = call i32 @lua_geti(%struct.lua_State* %14, i32 1, i64 %16), !dbg !541
  %18 = load %struct.lua_State** %1, align 4, !dbg !542
  %19 = call i32 @sort_comp(%struct.lua_State* %18, i32 -1, i32 -2), !dbg !542
  %20 = icmp ne i32 %19, 0, !dbg !542
  br i1 %20, label %21, label %25, !dbg !542

; <label>:21                                      ; preds = %9
  %22 = load %struct.lua_State** %1, align 4, !dbg !544
  %23 = load i32* %2, align 4, !dbg !544
  %24 = load i32* %3, align 4, !dbg !544
  call void @set2(%struct.lua_State* %22, i32 %23, i32 %24), !dbg !544
  br label %27, !dbg !544

; <label>:25                                      ; preds = %9
  %26 = load %struct.lua_State** %1, align 4, !dbg !545
  call void @lua_settop(%struct.lua_State* %26, i32 -3), !dbg !545
  br label %27

; <label>:27                                      ; preds = %25, %21
  %28 = load i32* %3, align 4, !dbg !546
  %29 = load i32* %2, align 4, !dbg !546
  %30 = sub i32 %28, %29, !dbg !546
  %31 = icmp eq i32 %30, 1, !dbg !546
  br i1 %31, label %32, label %33, !dbg !546

; <label>:32                                      ; preds = %27
  br label %147, !dbg !548

; <label>:33                                      ; preds = %27
  %34 = load i32* %3, align 4, !dbg !549
  %35 = load i32* %2, align 4, !dbg !549
  %36 = sub i32 %34, %35, !dbg !549
  %37 = icmp ult i32 %36, 100, !dbg !549
  br i1 %37, label %41, label %38, !dbg !549

; <label>:38                                      ; preds = %33
  %39 = load i32* %4, align 4, !dbg !551
  %40 = icmp eq i32 %39, 0, !dbg !551
  br i1 %40, label %41, label %46, !dbg !551

; <label>:41                                      ; preds = %38, %33
  %42 = load i32* %2, align 4, !dbg !553
  %43 = load i32* %3, align 4, !dbg !553
  %44 = add i32 %42, %43, !dbg !553
  %45 = udiv i32 %44, 2, !dbg !553
  store i32 %45, i32* %p, align 4, !dbg !553
  br label %51, !dbg !553

; <label>:46                                      ; preds = %38
  %47 = load i32* %2, align 4, !dbg !554
  %48 = load i32* %3, align 4, !dbg !554
  %49 = load i32* %4, align 4, !dbg !554
  %50 = call i32 @choosePivot(i32 %47, i32 %48, i32 %49), !dbg !554
  store i32 %50, i32* %p, align 4, !dbg !554
  br label %51

; <label>:51                                      ; preds = %46, %41
  %52 = load %struct.lua_State** %1, align 4, !dbg !555
  %53 = load i32* %p, align 4, !dbg !555
  %54 = zext i32 %53 to i64, !dbg !555
  %55 = call i32 @lua_geti(%struct.lua_State* %52, i32 1, i64 %54), !dbg !555
  %56 = load %struct.lua_State** %1, align 4, !dbg !556
  %57 = load i32* %2, align 4, !dbg !556
  %58 = zext i32 %57 to i64, !dbg !556
  %59 = call i32 @lua_geti(%struct.lua_State* %56, i32 1, i64 %58), !dbg !556
  %60 = load %struct.lua_State** %1, align 4, !dbg !557
  %61 = call i32 @sort_comp(%struct.lua_State* %60, i32 -2, i32 -1), !dbg !557
  %62 = icmp ne i32 %61, 0, !dbg !557
  br i1 %62, label %63, label %67, !dbg !557

; <label>:63                                      ; preds = %51
  %64 = load %struct.lua_State** %1, align 4, !dbg !559
  %65 = load i32* %p, align 4, !dbg !559
  %66 = load i32* %2, align 4, !dbg !559
  call void @set2(%struct.lua_State* %64, i32 %65, i32 %66), !dbg !559
  br label %83, !dbg !559

; <label>:67                                      ; preds = %51
  %68 = load %struct.lua_State** %1, align 4, !dbg !560
  call void @lua_settop(%struct.lua_State* %68, i32 -2), !dbg !560
  %69 = load %struct.lua_State** %1, align 4, !dbg !562
  %70 = load i32* %3, align 4, !dbg !562
  %71 = zext i32 %70 to i64, !dbg !562
  %72 = call i32 @lua_geti(%struct.lua_State* %69, i32 1, i64 %71), !dbg !562
  %73 = load %struct.lua_State** %1, align 4, !dbg !563
  %74 = call i32 @sort_comp(%struct.lua_State* %73, i32 -1, i32 -2), !dbg !563
  %75 = icmp ne i32 %74, 0, !dbg !563
  br i1 %75, label %76, label %80, !dbg !563

; <label>:76                                      ; preds = %67
  %77 = load %struct.lua_State** %1, align 4, !dbg !565
  %78 = load i32* %p, align 4, !dbg !565
  %79 = load i32* %3, align 4, !dbg !565
  call void @set2(%struct.lua_State* %77, i32 %78, i32 %79), !dbg !565
  br label %82, !dbg !565

; <label>:80                                      ; preds = %67
  %81 = load %struct.lua_State** %1, align 4, !dbg !566
  call void @lua_settop(%struct.lua_State* %81, i32 -3), !dbg !566
  br label %82

; <label>:82                                      ; preds = %80, %76
  br label %83

; <label>:83                                      ; preds = %82, %63
  %84 = load i32* %3, align 4, !dbg !567
  %85 = load i32* %2, align 4, !dbg !567
  %86 = sub i32 %84, %85, !dbg !567
  %87 = icmp eq i32 %86, 2, !dbg !567
  br i1 %87, label %88, label %89, !dbg !567

; <label>:88                                      ; preds = %83
  br label %147, !dbg !569

; <label>:89                                      ; preds = %83
  %90 = load %struct.lua_State** %1, align 4, !dbg !570
  %91 = load i32* %p, align 4, !dbg !570
  %92 = zext i32 %91 to i64, !dbg !570
  %93 = call i32 @lua_geti(%struct.lua_State* %90, i32 1, i64 %92), !dbg !570
  %94 = load %struct.lua_State** %1, align 4, !dbg !571
  call void @lua_pushvalue(%struct.lua_State* %94, i32 -1), !dbg !571
  %95 = load %struct.lua_State** %1, align 4, !dbg !572
  %96 = load i32* %3, align 4, !dbg !572
  %97 = sub i32 %96, 1, !dbg !572
  %98 = zext i32 %97 to i64, !dbg !572
  %99 = call i32 @lua_geti(%struct.lua_State* %95, i32 1, i64 %98), !dbg !572
  %100 = load %struct.lua_State** %1, align 4, !dbg !573
  %101 = load i32* %p, align 4, !dbg !573
  %102 = load i32* %3, align 4, !dbg !573
  %103 = sub i32 %102, 1, !dbg !573
  call void @set2(%struct.lua_State* %100, i32 %101, i32 %103), !dbg !573
  %104 = load %struct.lua_State** %1, align 4, !dbg !574
  %105 = load i32* %2, align 4, !dbg !574
  %106 = load i32* %3, align 4, !dbg !574
  %107 = call i32 @partition(%struct.lua_State* %104, i32 %105, i32 %106), !dbg !574
  store i32 %107, i32* %p, align 4, !dbg !574
  %108 = load i32* %p, align 4, !dbg !575
  %109 = load i32* %2, align 4, !dbg !575
  %110 = sub i32 %108, %109, !dbg !575
  %111 = load i32* %3, align 4, !dbg !575
  %112 = load i32* %p, align 4, !dbg !575
  %113 = sub i32 %111, %112, !dbg !575
  %114 = icmp ult i32 %110, %113, !dbg !575
  br i1 %114, label %115, label %126, !dbg !575

; <label>:115                                     ; preds = %89
  %116 = load %struct.lua_State** %1, align 4, !dbg !577
  %117 = load i32* %2, align 4, !dbg !577
  %118 = load i32* %p, align 4, !dbg !577
  %119 = sub i32 %118, 1, !dbg !577
  %120 = load i32* %4, align 4, !dbg !577
  call void @auxsort(%struct.lua_State* %116, i32 %117, i32 %119, i32 %120), !dbg !577
  %121 = load i32* %p, align 4, !dbg !579
  %122 = load i32* %2, align 4, !dbg !579
  %123 = sub i32 %121, %122, !dbg !579
  store i32 %123, i32* %n, align 4, !dbg !579
  %124 = load i32* %p, align 4, !dbg !580
  %125 = add i32 %124, 1, !dbg !580
  store i32 %125, i32* %2, align 4, !dbg !580
  br label %137, !dbg !581

; <label>:126                                     ; preds = %89
  %127 = load %struct.lua_State** %1, align 4, !dbg !582
  %128 = load i32* %p, align 4, !dbg !582
  %129 = add i32 %128, 1, !dbg !582
  %130 = load i32* %3, align 4, !dbg !582
  %131 = load i32* %4, align 4, !dbg !582
  call void @auxsort(%struct.lua_State* %127, i32 %129, i32 %130, i32 %131), !dbg !582
  %132 = load i32* %3, align 4, !dbg !584
  %133 = load i32* %p, align 4, !dbg !584
  %134 = sub i32 %132, %133, !dbg !584
  store i32 %134, i32* %n, align 4, !dbg !584
  %135 = load i32* %p, align 4, !dbg !585
  %136 = sub i32 %135, 1, !dbg !585
  store i32 %136, i32* %3, align 4, !dbg !585
  br label %137

; <label>:137                                     ; preds = %126, %115
  %138 = load i32* %3, align 4, !dbg !586
  %139 = load i32* %2, align 4, !dbg !586
  %140 = sub i32 %138, %139, !dbg !586
  %141 = udiv i32 %140, 128, !dbg !586
  %142 = load i32* %n, align 4, !dbg !586
  %143 = icmp ugt i32 %141, %142, !dbg !586
  br i1 %143, label %144, label %146, !dbg !586

; <label>:144                                     ; preds = %137
  %145 = call i32 @l_randomizePivot(), !dbg !588
  store i32 %145, i32* %4, align 4, !dbg !588
  br label %146, !dbg !588

; <label>:146                                     ; preds = %144, %137
  br label %5, !dbg !589

; <label>:147                                     ; preds = %32, %88, %5
  ret void, !dbg !590
}

declare i32 @lua_geti(%struct.lua_State*, i32, i64) #2

; Function Attrs: nounwind
define internal i32 @sort_comp(%struct.lua_State* %L, i32 %a, i32 %b) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.lua_State*, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %res = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %2}, metadata !591), !dbg !592
  store i32 %a, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !593), !dbg !594
  store i32 %b, i32* %4, align 4
  call void @llvm.dbg.declare(metadata !{i32* %4}, metadata !595), !dbg !596
  %5 = load %struct.lua_State** %2, align 4, !dbg !597
  %6 = call i32 @lua_type(%struct.lua_State* %5, i32 2), !dbg !597
  %7 = icmp eq i32 %6, 0, !dbg !597
  br i1 %7, label %8, label %13, !dbg !597

; <label>:8                                       ; preds = %0
  %9 = load %struct.lua_State** %2, align 4, !dbg !599
  %10 = load i32* %3, align 4, !dbg !599
  %11 = load i32* %4, align 4, !dbg !599
  %12 = call i32 @lua_compare(%struct.lua_State* %9, i32 %10, i32 %11, i32 1), !dbg !599
  store i32 %12, i32* %1, !dbg !599
  br label %26, !dbg !599

; <label>:13                                      ; preds = %0
  call void @llvm.dbg.declare(metadata !{i32* %res}, metadata !600), !dbg !602
  %14 = load %struct.lua_State** %2, align 4, !dbg !603
  call void @lua_pushvalue(%struct.lua_State* %14, i32 2), !dbg !603
  %15 = load %struct.lua_State** %2, align 4, !dbg !604
  %16 = load i32* %3, align 4, !dbg !604
  %17 = sub nsw i32 %16, 1, !dbg !604
  call void @lua_pushvalue(%struct.lua_State* %15, i32 %17), !dbg !604
  %18 = load %struct.lua_State** %2, align 4, !dbg !605
  %19 = load i32* %4, align 4, !dbg !605
  %20 = sub nsw i32 %19, 2, !dbg !605
  call void @lua_pushvalue(%struct.lua_State* %18, i32 %20), !dbg !605
  %21 = load %struct.lua_State** %2, align 4, !dbg !606
  call void @lua_callk(%struct.lua_State* %21, i32 2, i32 1, i32 0, i32 (%struct.lua_State*, i32, i32)* null), !dbg !606
  %22 = load %struct.lua_State** %2, align 4, !dbg !607
  %23 = call i32 @lua_toboolean(%struct.lua_State* %22, i32 -1), !dbg !607
  store i32 %23, i32* %res, align 4, !dbg !607
  %24 = load %struct.lua_State** %2, align 4, !dbg !608
  call void @lua_settop(%struct.lua_State* %24, i32 -2), !dbg !608
  %25 = load i32* %res, align 4, !dbg !609
  store i32 %25, i32* %1, !dbg !609
  br label %26, !dbg !609

; <label>:26                                      ; preds = %13, %8
  %27 = load i32* %1, !dbg !610
  ret i32 %27, !dbg !610
}

; Function Attrs: nounwind
define internal void @set2(%struct.lua_State* %L, i32 %i, i32 %j) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !611), !dbg !612
  store i32 %i, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !613), !dbg !614
  store i32 %j, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !615), !dbg !616
  %4 = load %struct.lua_State** %1, align 4, !dbg !617
  %5 = load i32* %2, align 4, !dbg !617
  %6 = zext i32 %5 to i64, !dbg !617
  call void @lua_seti(%struct.lua_State* %4, i32 1, i64 %6), !dbg !617
  %7 = load %struct.lua_State** %1, align 4, !dbg !618
  %8 = load i32* %3, align 4, !dbg !618
  %9 = zext i32 %8 to i64, !dbg !618
  call void @lua_seti(%struct.lua_State* %7, i32 1, i64 %9), !dbg !618
  ret void, !dbg !619
}

; Function Attrs: nounwind
define internal i32 @choosePivot(i32 %lo, i32 %up, i32 %rnd) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %r4 = alloca i32, align 4
  %p = alloca i32, align 4
  store i32 %lo, i32* %1, align 4
  call void @llvm.dbg.declare(metadata !{i32* %1}, metadata !620), !dbg !621
  store i32 %up, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !622), !dbg !623
  store i32 %rnd, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !624), !dbg !625
  call void @llvm.dbg.declare(metadata !{i32* %r4}, metadata !626), !dbg !627
  %4 = load i32* %2, align 4, !dbg !628
  %5 = load i32* %1, align 4, !dbg !628
  %6 = sub i32 %4, %5, !dbg !628
  %7 = udiv i32 %6, 4, !dbg !628
  store i32 %7, i32* %r4, align 4, !dbg !628
  call void @llvm.dbg.declare(metadata !{i32* %p}, metadata !629), !dbg !630
  %8 = load i32* %3, align 4, !dbg !631
  %9 = load i32* %r4, align 4, !dbg !631
  %10 = mul i32 %9, 2, !dbg !631
  %11 = urem i32 %8, %10, !dbg !631
  %12 = load i32* %1, align 4, !dbg !631
  %13 = load i32* %r4, align 4, !dbg !631
  %14 = add i32 %12, %13, !dbg !631
  %15 = add i32 %11, %14, !dbg !631
  store i32 %15, i32* %p, align 4, !dbg !631
  %16 = load i32* %p, align 4, !dbg !632
  ret i32 %16, !dbg !632
}

declare void @lua_pushvalue(%struct.lua_State*, i32) #2

; Function Attrs: nounwind
define internal i32 @partition(%struct.lua_State* %L, i32 %lo, i32 %up) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !633), !dbg !634
  store i32 %lo, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !635), !dbg !636
  store i32 %up, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !637), !dbg !638
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !639), !dbg !640
  %4 = load i32* %2, align 4, !dbg !641
  store i32 %4, i32* %i, align 4, !dbg !641
  call void @llvm.dbg.declare(metadata !{i32* %j}, metadata !642), !dbg !643
  %5 = load i32* %3, align 4, !dbg !644
  %6 = sub i32 %5, 1, !dbg !644
  store i32 %6, i32* %j, align 4, !dbg !644
  br label %7, !dbg !645

; <label>:7                                       ; preds = %57, %0
  br label %8, !dbg !647

; <label>:8                                       ; preds = %25, %7
  %9 = load %struct.lua_State** %1, align 4, !dbg !649
  %10 = load i32* %i, align 4, !dbg !649
  %11 = add i32 %10, 1, !dbg !649
  store i32 %11, i32* %i, align 4, !dbg !649
  %12 = zext i32 %11 to i64, !dbg !649
  %13 = call i32 @lua_geti(%struct.lua_State* %9, i32 1, i64 %12), !dbg !649
  %14 = load %struct.lua_State** %1, align 4, !dbg !651
  %15 = call i32 @sort_comp(%struct.lua_State* %14, i32 -1, i32 -2), !dbg !651
  %16 = icmp ne i32 %15, 0, !dbg !651
  br i1 %16, label %17, label %27, !dbg !651

; <label>:17                                      ; preds = %8
  %18 = load i32* %i, align 4, !dbg !652
  %19 = load i32* %3, align 4, !dbg !652
  %20 = sub i32 %19, 1, !dbg !652
  %21 = icmp eq i32 %18, %20, !dbg !652
  br i1 %21, label %22, label %25, !dbg !652

; <label>:22                                      ; preds = %17
  %23 = load %struct.lua_State** %1, align 4, !dbg !655
  %24 = call i32 (%struct.lua_State*, i8*, ...)* @luaL_error(%struct.lua_State* %23, i8* getelementptr inbounds ([35 x i8]* @.str8, i32 0, i32 0)), !dbg !655
  br label %25, !dbg !655

; <label>:25                                      ; preds = %22, %17
  %26 = load %struct.lua_State** %1, align 4, !dbg !656
  call void @lua_settop(%struct.lua_State* %26, i32 -2), !dbg !656
  br label %8, !dbg !657

; <label>:27                                      ; preds = %8
  br label %28, !dbg !658

; <label>:28                                      ; preds = %44, %27
  %29 = load %struct.lua_State** %1, align 4, !dbg !659
  %30 = load i32* %j, align 4, !dbg !659
  %31 = add i32 %30, -1, !dbg !659
  store i32 %31, i32* %j, align 4, !dbg !659
  %32 = zext i32 %31 to i64, !dbg !659
  %33 = call i32 @lua_geti(%struct.lua_State* %29, i32 1, i64 %32), !dbg !659
  %34 = load %struct.lua_State** %1, align 4, !dbg !661
  %35 = call i32 @sort_comp(%struct.lua_State* %34, i32 -3, i32 -1), !dbg !661
  %36 = icmp ne i32 %35, 0, !dbg !661
  br i1 %36, label %37, label %46, !dbg !661

; <label>:37                                      ; preds = %28
  %38 = load i32* %j, align 4, !dbg !662
  %39 = load i32* %i, align 4, !dbg !662
  %40 = icmp ult i32 %38, %39, !dbg !662
  br i1 %40, label %41, label %44, !dbg !662

; <label>:41                                      ; preds = %37
  %42 = load %struct.lua_State** %1, align 4, !dbg !665
  %43 = call i32 (%struct.lua_State*, i8*, ...)* @luaL_error(%struct.lua_State* %42, i8* getelementptr inbounds ([35 x i8]* @.str8, i32 0, i32 0)), !dbg !665
  br label %44, !dbg !665

; <label>:44                                      ; preds = %41, %37
  %45 = load %struct.lua_State** %1, align 4, !dbg !666
  call void @lua_settop(%struct.lua_State* %45, i32 -2), !dbg !666
  br label %28, !dbg !667

; <label>:46                                      ; preds = %28
  %47 = load i32* %j, align 4, !dbg !668
  %48 = load i32* %i, align 4, !dbg !668
  %49 = icmp ult i32 %47, %48, !dbg !668
  br i1 %49, label %50, label %57, !dbg !668

; <label>:50                                      ; preds = %46
  %51 = load %struct.lua_State** %1, align 4, !dbg !670
  call void @lua_settop(%struct.lua_State* %51, i32 -2), !dbg !670
  %52 = load %struct.lua_State** %1, align 4, !dbg !672
  %53 = load i32* %3, align 4, !dbg !672
  %54 = sub i32 %53, 1, !dbg !672
  %55 = load i32* %i, align 4, !dbg !672
  call void @set2(%struct.lua_State* %52, i32 %54, i32 %55), !dbg !672
  %56 = load i32* %i, align 4, !dbg !673
  ret i32 %56, !dbg !673

; <label>:57                                      ; preds = %46
  %58 = load %struct.lua_State** %1, align 4, !dbg !674
  %59 = load i32* %i, align 4, !dbg !674
  %60 = load i32* %j, align 4, !dbg !674
  call void @set2(%struct.lua_State* %58, i32 %59, i32 %60), !dbg !674
  br label %7, !dbg !675
}

; Function Attrs: nounwind
define internal i32 @l_randomizePivot() #0 {
  %c = alloca i32, align 4
  %t = alloca i32, align 4
  %buff = alloca [2 x i32], align 4
  %i = alloca i32, align 4
  %rnd = alloca i32, align 4
  call void @llvm.dbg.declare(metadata !{i32* %c}, metadata !676), !dbg !682
  %1 = call i32 @clock() #3, !dbg !683
  store i32 %1, i32* %c, align 4, !dbg !683
  call void @llvm.dbg.declare(metadata !{i32* %t}, metadata !684), !dbg !687
  %2 = call i32 @time(i32* null) #3, !dbg !688
  store i32 %2, i32* %t, align 4, !dbg !688
  call void @llvm.dbg.declare(metadata !{[2 x i32]* %buff}, metadata !689), !dbg !693
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !694), !dbg !695
  call void @llvm.dbg.declare(metadata !{i32* %rnd}, metadata !696), !dbg !697
  store i32 0, i32* %rnd, align 4, !dbg !698
  %3 = bitcast [2 x i32]* %buff to i8*, !dbg !699
  %4 = bitcast i32* %c to i8*, !dbg !699
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %3, i8* %4, i32 4, i32 4, i1 false), !dbg !699
  %5 = getelementptr inbounds [2 x i32]* %buff, i32 0, i32 0, !dbg !700
  %6 = getelementptr inbounds i32* %5, i32 1, !dbg !700
  %7 = bitcast i32* %6 to i8*, !dbg !700
  %8 = bitcast i32* %t to i8*, !dbg !700
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %7, i8* %8, i32 4, i32 4, i1 false), !dbg !700
  store i32 0, i32* %i, align 4, !dbg !701
  br label %9, !dbg !701

; <label>:9                                       ; preds = %18, %0
  %10 = load i32* %i, align 4, !dbg !703
  %11 = icmp ult i32 %10, 2, !dbg !703
  br i1 %11, label %12, label %21, !dbg !703

; <label>:12                                      ; preds = %9
  %13 = load i32* %i, align 4, !dbg !706
  %14 = getelementptr inbounds [2 x i32]* %buff, i32 0, i32 %13, !dbg !706
  %15 = load i32* %14, align 4, !dbg !706
  %16 = load i32* %rnd, align 4, !dbg !706
  %17 = add i32 %16, %15, !dbg !706
  store i32 %17, i32* %rnd, align 4, !dbg !706
  br label %18, !dbg !706

; <label>:18                                      ; preds = %12
  %19 = load i32* %i, align 4, !dbg !707
  %20 = add i32 %19, 1, !dbg !707
  store i32 %20, i32* %i, align 4, !dbg !707
  br label %9, !dbg !707

; <label>:21                                      ; preds = %9
  %22 = load i32* %rnd, align 4, !dbg !708
  ret i32 %22, !dbg !708
}

; Function Attrs: nounwind
declare i32 @clock() #0

; Function Attrs: nounwind
declare i32 @time(i32*) #0

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture, i8* nocapture readonly, i32, i32, i1) #3

declare i32 @luaL_error(%struct.lua_State*, i8*, ...) #2

declare void @lua_seti(%struct.lua_State*, i32, i64) #2

declare i32 @lua_compare(%struct.lua_State*, i32, i32, i32) #2

declare void @lua_callk(%struct.lua_State*, i32, i32, i32, i32 (%struct.lua_State*, i32, i32)*) #2

declare i32 @lua_toboolean(%struct.lua_State*, i32) #2

declare i32 @lua_getmetatable(%struct.lua_State*, i32) #2

; Function Attrs: nounwind
define internal i32 @checkfield(%struct.lua_State* %L, i8* %key, i32 %n) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca i8*, align 4
  %3 = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !709), !dbg !710
  store i8* %key, i8** %2, align 4
  call void @llvm.dbg.declare(metadata !{i8** %2}, metadata !711), !dbg !712
  store i32 %n, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !713), !dbg !714
  %4 = load %struct.lua_State** %1, align 4, !dbg !715
  %5 = load i8** %2, align 4, !dbg !715
  %6 = call i8* @lua_pushstring(%struct.lua_State* %4, i8* %5), !dbg !715
  %7 = load %struct.lua_State** %1, align 4, !dbg !716
  %8 = load i32* %3, align 4, !dbg !716
  %9 = sub nsw i32 0, %8, !dbg !716
  %10 = call i32 @lua_rawget(%struct.lua_State* %7, i32 %9), !dbg !716
  %11 = icmp ne i32 %10, 0, !dbg !716
  %12 = zext i1 %11 to i32, !dbg !716
  ret i32 %12, !dbg !716
}

declare i8* @lua_pushstring(%struct.lua_State*, i8*) #2

declare i32 @lua_rawget(%struct.lua_State*, i32) #2

declare i64 @luaL_checkinteger(%struct.lua_State*, i32) #2

declare i64 @luaL_optinteger(%struct.lua_State*, i32, i64) #2

declare void @lua_pushnil(%struct.lua_State*) #2

declare i32 @lua_checkstack(%struct.lua_State*, i32) #2

declare i32 @lua_gettop(%struct.lua_State*) #2

declare void @lua_rotate(%struct.lua_State*, i32, i32) #2

declare void @lua_pushinteger(%struct.lua_State*, i64) #2

declare void @lua_setfield(%struct.lua_State*, i32, i8*) #2

declare i8* @luaL_optlstring(%struct.lua_State*, i32, i8*, i32*) #2

declare void @luaL_buffinit(%struct.lua_State*, %struct.luaL_Buffer*) #2

; Function Attrs: nounwind
define internal void @addfield(%struct.lua_State* %L, %struct.luaL_Buffer* %b, i64 %i) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca %struct.luaL_Buffer*, align 4
  %3 = alloca i64, align 8
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !717), !dbg !718
  store %struct.luaL_Buffer* %b, %struct.luaL_Buffer** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.luaL_Buffer** %2}, metadata !719), !dbg !720
  store i64 %i, i64* %3, align 8
  call void @llvm.dbg.declare(metadata !{i64* %3}, metadata !721), !dbg !722
  %4 = load %struct.lua_State** %1, align 4, !dbg !723
  %5 = load i64* %3, align 8, !dbg !723
  %6 = call i32 @lua_geti(%struct.lua_State* %4, i32 1, i64 %5), !dbg !723
  %7 = load %struct.lua_State** %1, align 4, !dbg !724
  %8 = call i32 @lua_isstring(%struct.lua_State* %7, i32 -1), !dbg !724
  %9 = icmp ne i32 %8, 0, !dbg !724
  br i1 %9, label %18, label %10, !dbg !724

; <label>:10                                      ; preds = %0
  %11 = load %struct.lua_State** %1, align 4, !dbg !726
  %12 = load %struct.lua_State** %1, align 4, !dbg !727
  %13 = load %struct.lua_State** %1, align 4, !dbg !727
  %14 = call i32 @lua_type(%struct.lua_State* %13, i32 -1), !dbg !727
  %15 = call i8* @lua_typename(%struct.lua_State* %12, i32 %14), !dbg !727
  %16 = load i64* %3, align 8, !dbg !726
  %17 = call i32 (%struct.lua_State*, i8*, ...)* @luaL_error(%struct.lua_State* %11, i8* getelementptr inbounds ([53 x i8]* @.str19, i32 0, i32 0), i8* %15, i64 %16), !dbg !726
  br label %18, !dbg !726

; <label>:18                                      ; preds = %10, %0
  %19 = load %struct.luaL_Buffer** %2, align 4, !dbg !728
  call void @luaL_addvalue(%struct.luaL_Buffer* %19), !dbg !728
  ret void, !dbg !729
}

declare void @luaL_addlstring(%struct.luaL_Buffer*, i8*, i32) #2

declare void @luaL_pushresult(%struct.luaL_Buffer*) #2

declare i32 @lua_isstring(%struct.lua_State*, i32) #2

declare i8* @lua_typename(%struct.lua_State*, i32) #2

declare void @luaL_addvalue(%struct.luaL_Buffer*) #2

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!xidane.fname = !{!84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187}
!xidane.function_declaration_type = !{!84, !188, !86, !189, !88, !190, !90, !191, !92, !188, !94, !188, !96, !188, !98, !188, !100, !188, !102, !188, !104, !188, !106, !190, !108, !192, !110, !193, !112, !194, !114, !190, !116, !195, !118, !196, !120, !197, !122, !198, !124, !199, !126, !200, !128, !195, !130, !201, !132, !202, !134, !203, !136, !204, !138, !205, !140, !206, !142, !207, !144, !208, !146, !194, !148, !194, !150, !209, !152, !210, !154, !194, !156, !192, !158, !211, !160, !212, !162, !194, !164, !188, !166, !190, !168, !213, !170, !214, !172, !215, !174, !216, !176, !217, !178, !218, !180, !219, !182, !194, !184, !220, !186, !219}
!xidane.function_declaration_filename = !{!84, !221, !86, !222, !88, !223, !90, !222, !92, !224, !94, !224, !96, !224, !98, !224, !100, !224, !102, !224, !104, !224, !106, !224, !108, !222, !110, !222, !112, !223, !114, !222, !116, !223, !118, !224, !120, !223, !122, !224, !124, !224, !126, !224, !128, !223, !130, !224, !132, !224, !134, !225, !136, !225, !138, !222, !140, !223, !142, !223, !144, !223, !146, !223, !148, !223, !150, !224, !152, !223, !154, !223, !156, !222, !158, !222, !160, !223, !162, !223, !164, !223, !166, !223, !168, !223, !170, !223, !172, !222, !174, !222, !176, !224, !178, !222, !180, !222, !182, !223, !184, !223, !186, !222}
!xidane.ExternC = !{!84, !86, !88, !90, !108, !110, !112, !114, !116, !120, !128, !134, !136, !138, !140, !142, !144, !146, !148, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !178, !180, !182, !184, !186}
!llvm.module.flags = !{!226, !227, !228, !229}
!llvm.ident = !{!230}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.0 (tags/RELEASE_350/final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !71, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src\ltablib.c] [DW_LANG_C99]
!1 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src\5Cltablib.c", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!2 = metadata !{}
!3 = metadata !{metadata !4, metadata !14, metadata !15, metadata !20, metadata !23, metadata !26, metadata !29, metadata !32, metadata !35, metadata !38, metadata !44, metadata !45, metadata !46, metadata !47, metadata !48, metadata !49, metadata !50}
!4 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"luaopen_table", metadata !"luaopen_table", metadata !"", i32 441, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @luaopen_table, null, null, metadata !2, i32 441} ; [ DW_TAG_subprogram ] [line 441] [def] [luaopen_table]
!5 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/ltablib.c", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!6 = metadata !{i32 786473, metadata !5}          ; [ DW_TAG_file_type ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltablib.c]
!7 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!8 = metadata !{metadata !9, metadata !10}
!9 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!10 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !11} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from lua_State]
!11 = metadata !{i32 786454, metadata !12, null, metadata !"lua_State", i32 56, i64 0, i64 0, i64 0, i32 0, metadata !13} ; [ DW_TAG_typedef ] [lua_State] [line 56, size 0, align 0, offset 0] [from lua_State]
!12 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lua.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!13 = metadata !{i32 786451, metadata !12, null, metadata !"lua_State", i32 56, i64 0, i64 0, i32 0, i32 4, null, null, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [lua_State] [line 56, size 0, align 0, offset 0] [decl] [from ]
!14 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"sort", metadata !"sort", metadata !"", i32 411, metadata !7, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @sort, null, null, metadata !2, i32 411} ; [ DW_TAG_subprogram ] [line 411] [local] [def] [sort]
!15 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"auxsort", metadata !"auxsort", metadata !"", i32 357, metadata !16, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.lua_State*, i32, i32, i32)* @auxsort, null, null, metadata !2, i32 358} ; [ DW_TAG_subprogram ] [line 357] [local] [def] [scope 358] [auxsort]
!16 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !17, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!17 = metadata !{null, metadata !10, metadata !18, metadata !18, metadata !19}
!18 = metadata !{i32 786454, metadata !5, null, metadata !"IdxT", i32 236, i64 0, i64 0, i64 0, i32 0, metadata !19} ; [ DW_TAG_typedef ] [IdxT] [line 236, size 0, align 0, offset 0] [from unsigned int]
!19 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!20 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"l_randomizePivot", metadata !"l_randomizePivot", metadata !"", i32 258, metadata !21, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 ()* @l_randomizePivot, null, null, metadata !2, i32 258} ; [ DW_TAG_subprogram ] [line 258] [local] [def] [l_randomizePivot]
!21 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !22, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!22 = metadata !{metadata !19}
!23 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"partition", metadata !"partition", metadata !"", i32 310, metadata !24, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*, i32, i32)* @partition, null, null, metadata !2, i32 310} ; [ DW_TAG_subprogram ] [line 310] [local] [def] [partition]
!24 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !25, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!25 = metadata !{metadata !18, metadata !10, metadata !18, metadata !18}
!26 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"choosePivot", metadata !"choosePivot", metadata !"", i32 346, metadata !27, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i32, i32)* @choosePivot, null, null, metadata !2, i32 346} ; [ DW_TAG_subprogram ] [line 346] [local] [def] [choosePivot]
!27 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !28, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!28 = metadata !{metadata !18, metadata !18, metadata !18, metadata !19}
!29 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"set2", metadata !"set2", metadata !"", i32 277, metadata !30, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.lua_State*, i32, i32)* @set2, null, null, metadata !2, i32 277} ; [ DW_TAG_subprogram ] [line 277] [local] [def] [set2]
!30 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !31, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!31 = metadata !{null, metadata !10, metadata !18, metadata !18}
!32 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"sort_comp", metadata !"sort_comp", metadata !"", i32 287, metadata !33, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*, i32, i32)* @sort_comp, null, null, metadata !2, i32 287} ; [ DW_TAG_subprogram ] [line 287] [local] [def] [sort_comp]
!33 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !34, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!34 = metadata !{metadata !9, metadata !10, metadata !9, metadata !9}
!35 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"checktab", metadata !"checktab", metadata !"", i32 46, metadata !36, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.lua_State*, i32, i32)* @checktab, null, null, metadata !2, i32 46} ; [ DW_TAG_subprogram ] [line 46] [local] [def] [checktab]
!36 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !37, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!37 = metadata !{null, metadata !10, metadata !9, metadata !9}
!38 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"checkfield", metadata !"checkfield", metadata !"", i32 36, metadata !39, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*, i8*, i32)* @checkfield, null, null, metadata !2, i32 36} ; [ DW_TAG_subprogram ] [line 36] [local] [def] [checkfield]
!39 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !40, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!40 = metadata !{metadata !9, metadata !10, metadata !41, metadata !9}
!41 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !42} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!42 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !43} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!43 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!44 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"tmove", metadata !"tmove", metadata !"", i32 128, metadata !7, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @tmove, null, null, metadata !2, i32 128} ; [ DW_TAG_subprogram ] [line 128] [local] [def] [tmove]
!45 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"tremove", metadata !"tremove", metadata !"", i32 106, metadata !7, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @tremove, null, null, metadata !2, i32 106} ; [ DW_TAG_subprogram ] [line 106] [local] [def] [tremove]
!46 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"unpack", metadata !"unpack", metadata !"", i32 207, metadata !7, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @unpack, null, null, metadata !2, i32 207} ; [ DW_TAG_subprogram ] [line 207] [local] [def] [unpack]
!47 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"pack", metadata !"pack", metadata !"", i32 194, metadata !7, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @pack, null, null, metadata !2, i32 194} ; [ DW_TAG_subprogram ] [line 194] [local] [def] [pack]
!48 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"tinsert", metadata !"tinsert", metadata !"", i32 79, metadata !7, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @tinsert, null, null, metadata !2, i32 79} ; [ DW_TAG_subprogram ] [line 79] [local] [def] [tinsert]
!49 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"tconcat", metadata !"tconcat", metadata !"", i32 169, metadata !7, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @tconcat, null, null, metadata !2, i32 169} ; [ DW_TAG_subprogram ] [line 169] [local] [def] [tconcat]
!50 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"addfield", metadata !"addfield", metadata !"", i32 160, metadata !51, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.lua_State*, %struct.luaL_Buffer*, i64)* @addfield, null, null, metadata !2, i32 160} ; [ DW_TAG_subprogram ] [line 160] [local] [def] [addfield]
!51 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !52, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!52 = metadata !{null, metadata !10, metadata !53, metadata !69}
!53 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !54} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from luaL_Buffer]
!54 = metadata !{i32 786454, metadata !55, null, metadata !"luaL_Buffer", i32 146, i64 0, i64 0, i64 0, i32 0, metadata !56} ; [ DW_TAG_typedef ] [luaL_Buffer] [line 146, size 0, align 0, offset 0] [from luaL_Buffer]
!55 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lauxlib.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!56 = metadata !{i32 786451, metadata !55, null, metadata !"luaL_Buffer", i32 140, i64 65664, i64 32, i32 0, i32 0, null, metadata !57, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [luaL_Buffer] [line 140, size 65664, align 32, offset 0] [def] [from ]
!57 = metadata !{metadata !58, metadata !60, metadata !63, metadata !64, metadata !65}
!58 = metadata !{i32 786445, metadata !55, metadata !56, metadata !"b", i32 141, i64 32, i64 32, i64 0, i32 0, metadata !59} ; [ DW_TAG_member ] [b] [line 141, size 32, align 32, offset 0] [from ]
!59 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !43} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from char]
!60 = metadata !{i32 786445, metadata !55, metadata !56, metadata !"size", i32 142, i64 32, i64 32, i64 32, i32 0, metadata !61} ; [ DW_TAG_member ] [size] [line 142, size 32, align 32, offset 32] [from size_t]
!61 = metadata !{i32 786454, metadata !62, null, metadata !"size_t", i32 216, i64 0, i64 0, i64 0, i32 0, metadata !19} ; [ DW_TAG_typedef ] [size_t] [line 216, size 0, align 0, offset 0] [from unsigned int]
!62 = metadata !{metadata !"D:/Xilinx/SDx/2016.3/SDK/gnu/aarch32/nt/gcc-arm-linux-gnueabi/lib/gcc/arm-linux-gnueabihf/5.2.1/include\5Cstddef.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!63 = metadata !{i32 786445, metadata !55, metadata !56, metadata !"n", i32 143, i64 32, i64 32, i64 64, i32 0, metadata !61} ; [ DW_TAG_member ] [n] [line 143, size 32, align 32, offset 64] [from size_t]
!64 = metadata !{i32 786445, metadata !55, metadata !56, metadata !"L", i32 144, i64 32, i64 32, i64 96, i32 0, metadata !10} ; [ DW_TAG_member ] [L] [line 144, size 32, align 32, offset 96] [from ]
!65 = metadata !{i32 786445, metadata !55, metadata !56, metadata !"initb", i32 145, i64 65536, i64 8, i64 128, i32 0, metadata !66} ; [ DW_TAG_member ] [initb] [line 145, size 65536, align 8, offset 128] [from ]
!66 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 65536, i64 8, i32 0, i32 0, metadata !43, metadata !67, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 65536, align 8, offset 0] [from char]
!67 = metadata !{metadata !68}
!68 = metadata !{i32 786465, i64 0, i64 8192}     ; [ DW_TAG_subrange_type ] [0, 8191]
!69 = metadata !{i32 786454, metadata !12, null, metadata !"lua_Integer", i32 93, i64 0, i64 0, i64 0, i32 0, metadata !70} ; [ DW_TAG_typedef ] [lua_Integer] [line 93, size 0, align 0, offset 0] [from long long int]
!70 = metadata !{i32 786468, null, null, metadata !"long long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!71 = metadata !{metadata !72}
!72 = metadata !{i32 786484, i32 0, null, metadata !"tab_funcs", metadata !"tab_funcs", metadata !"", metadata !6, i32 426, metadata !73, i32 1, i32 1, [8 x %struct.luaL_Reg]* @tab_funcs, null} ; [ DW_TAG_variable ] [tab_funcs] [line 426] [local] [def]
!73 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 512, i64 32, i32 0, i32 0, metadata !74, metadata !82, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 512, align 32, offset 0] [from ]
!74 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !75} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from luaL_Reg]
!75 = metadata !{i32 786454, metadata !55, null, metadata !"luaL_Reg", i32 26, i64 0, i64 0, i64 0, i32 0, metadata !76} ; [ DW_TAG_typedef ] [luaL_Reg] [line 26, size 0, align 0, offset 0] [from luaL_Reg]
!76 = metadata !{i32 786451, metadata !55, null, metadata !"luaL_Reg", i32 23, i64 64, i64 32, i32 0, i32 0, null, metadata !77, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [luaL_Reg] [line 23, size 64, align 32, offset 0] [def] [from ]
!77 = metadata !{metadata !78, metadata !79}
!78 = metadata !{i32 786445, metadata !55, metadata !76, metadata !"name", i32 24, i64 32, i64 32, i64 0, i32 0, metadata !41} ; [ DW_TAG_member ] [name] [line 24, size 32, align 32, offset 0] [from ]
!79 = metadata !{i32 786445, metadata !55, metadata !76, metadata !"func", i32 25, i64 32, i64 32, i64 32, i32 0, metadata !80} ; [ DW_TAG_member ] [func] [line 25, size 32, align 32, offset 32] [from lua_CFunction]
!80 = metadata !{i32 786454, metadata !12, null, metadata !"lua_CFunction", i32 105, i64 0, i64 0, i64 0, i32 0, metadata !81} ; [ DW_TAG_typedef ] [lua_CFunction] [line 105, size 0, align 0, offset 0] [from ]
!81 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !7} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!82 = metadata !{metadata !83}
!83 = metadata !{i32 786465, i64 0, i64 8}        ; [ DW_TAG_subrange_type ] [0, 7]
!84 = metadata !{i32 (%struct.lua_State*)* @luaopen_table}
!85 = metadata !{metadata !"luaopen_table"}
!86 = metadata !{void (%struct.lua_State*, double, i32)* @luaL_checkversion_}
!87 = metadata !{metadata !"luaL_checkversion_"}
!88 = metadata !{void (%struct.lua_State*, i32, i32)* @lua_createtable}
!89 = metadata !{metadata !"lua_createtable"}
!90 = metadata !{void (%struct.lua_State*, %struct.luaL_Reg*, i32)* @luaL_setfuncs}
!91 = metadata !{metadata !"luaL_setfuncs"}
!92 = metadata !{i32 (%struct.lua_State*)* @tconcat}
!93 = metadata !{metadata !"tconcat"}
!94 = metadata !{i32 (%struct.lua_State*)* @tinsert}
!95 = metadata !{metadata !"tinsert"}
!96 = metadata !{i32 (%struct.lua_State*)* @pack}
!97 = metadata !{metadata !"pack"}
!98 = metadata !{i32 (%struct.lua_State*)* @unpack}
!99 = metadata !{metadata !"unpack"}
!100 = metadata !{i32 (%struct.lua_State*)* @tremove}
!101 = metadata !{metadata !"tremove"}
!102 = metadata !{i32 (%struct.lua_State*)* @tmove}
!103 = metadata !{metadata !"tmove"}
!104 = metadata !{i32 (%struct.lua_State*)* @sort}
!105 = metadata !{metadata !"sort"}
!106 = metadata !{void (%struct.lua_State*, i32, i32)* @checktab}
!107 = metadata !{metadata !"checktab"}
!108 = metadata !{i64 (%struct.lua_State*, i32)* @luaL_len}
!109 = metadata !{metadata !"luaL_len"}
!110 = metadata !{i32 (%struct.lua_State*, i32, i8*)* @luaL_argerror}
!111 = metadata !{metadata !"luaL_argerror"}
!112 = metadata !{i32 (%struct.lua_State*, i32)* @lua_type}
!113 = metadata !{metadata !"lua_type"}
!114 = metadata !{void (%struct.lua_State*, i32, i32)* @luaL_checktype}
!115 = metadata !{metadata !"luaL_checktype"}
!116 = metadata !{void (%struct.lua_State*, i32)* @lua_settop}
!117 = metadata !{metadata !"lua_settop"}
!118 = metadata !{void (%struct.lua_State*, i32, i32, i32)* @auxsort}
!119 = metadata !{metadata !"auxsort"}
!120 = metadata !{i32 (%struct.lua_State*, i32, i64)* @lua_geti}
!121 = metadata !{metadata !"lua_geti"}
!122 = metadata !{i32 (%struct.lua_State*, i32, i32)* @sort_comp}
!123 = metadata !{metadata !"sort_comp"}
!124 = metadata !{void (%struct.lua_State*, i32, i32)* @set2}
!125 = metadata !{metadata !"set2"}
!126 = metadata !{i32 (i32, i32, i32)* @choosePivot}
!127 = metadata !{metadata !"choosePivot"}
!128 = metadata !{void (%struct.lua_State*, i32)* @lua_pushvalue}
!129 = metadata !{metadata !"lua_pushvalue"}
!130 = metadata !{i32 (%struct.lua_State*, i32, i32)* @partition}
!131 = metadata !{metadata !"partition"}
!132 = metadata !{i32 ()* @l_randomizePivot}
!133 = metadata !{metadata !"l_randomizePivot"}
!134 = metadata !{i32 ()* @clock}
!135 = metadata !{metadata !"clock"}
!136 = metadata !{i32 (i32*)* @time}
!137 = metadata !{metadata !"time"}
!138 = metadata !{i32 (%struct.lua_State*, i8*, ...)* @luaL_error}
!139 = metadata !{metadata !"luaL_error"}
!140 = metadata !{void (%struct.lua_State*, i32, i64)* @lua_seti}
!141 = metadata !{metadata !"lua_seti"}
!142 = metadata !{i32 (%struct.lua_State*, i32, i32, i32)* @lua_compare}
!143 = metadata !{metadata !"lua_compare"}
!144 = metadata !{void (%struct.lua_State*, i32, i32, i32, i32 (%struct.lua_State*, i32, i32)*)* @lua_callk}
!145 = metadata !{metadata !"lua_callk"}
!146 = metadata !{i32 (%struct.lua_State*, i32)* @lua_toboolean}
!147 = metadata !{metadata !"lua_toboolean"}
!148 = metadata !{i32 (%struct.lua_State*, i32)* @lua_getmetatable}
!149 = metadata !{metadata !"lua_getmetatable"}
!150 = metadata !{i32 (%struct.lua_State*, i8*, i32)* @checkfield}
!151 = metadata !{metadata !"checkfield"}
!152 = metadata !{i8* (%struct.lua_State*, i8*)* @lua_pushstring}
!153 = metadata !{metadata !"lua_pushstring"}
!154 = metadata !{i32 (%struct.lua_State*, i32)* @lua_rawget}
!155 = metadata !{metadata !"lua_rawget"}
!156 = metadata !{i64 (%struct.lua_State*, i32)* @luaL_checkinteger}
!157 = metadata !{metadata !"luaL_checkinteger"}
!158 = metadata !{i64 (%struct.lua_State*, i32, i64)* @luaL_optinteger}
!159 = metadata !{metadata !"luaL_optinteger"}
!160 = metadata !{void (%struct.lua_State*)* @lua_pushnil}
!161 = metadata !{metadata !"lua_pushnil"}
!162 = metadata !{i32 (%struct.lua_State*, i32)* @lua_checkstack}
!163 = metadata !{metadata !"lua_checkstack"}
!164 = metadata !{i32 (%struct.lua_State*)* @lua_gettop}
!165 = metadata !{metadata !"lua_gettop"}
!166 = metadata !{void (%struct.lua_State*, i32, i32)* @lua_rotate}
!167 = metadata !{metadata !"lua_rotate"}
!168 = metadata !{void (%struct.lua_State*, i64)* @lua_pushinteger}
!169 = metadata !{metadata !"lua_pushinteger"}
!170 = metadata !{void (%struct.lua_State*, i32, i8*)* @lua_setfield}
!171 = metadata !{metadata !"lua_setfield"}
!172 = metadata !{i8* (%struct.lua_State*, i32, i8*, i32*)* @luaL_optlstring}
!173 = metadata !{metadata !"luaL_optlstring"}
!174 = metadata !{void (%struct.lua_State*, %struct.luaL_Buffer*)* @luaL_buffinit}
!175 = metadata !{metadata !"luaL_buffinit"}
!176 = metadata !{void (%struct.lua_State*, %struct.luaL_Buffer*, i64)* @addfield}
!177 = metadata !{metadata !"addfield"}
!178 = metadata !{void (%struct.luaL_Buffer*, i8*, i32)* @luaL_addlstring}
!179 = metadata !{metadata !"luaL_addlstring"}
!180 = metadata !{void (%struct.luaL_Buffer*)* @luaL_pushresult}
!181 = metadata !{metadata !"luaL_pushresult"}
!182 = metadata !{i32 (%struct.lua_State*, i32)* @lua_isstring}
!183 = metadata !{metadata !"lua_isstring"}
!184 = metadata !{i8* (%struct.lua_State*, i32)* @lua_typename}
!185 = metadata !{metadata !"lua_typename"}
!186 = metadata !{void (%struct.luaL_Buffer*)* @luaL_addvalue}
!187 = metadata !{metadata !"luaL_addvalue"}
!188 = metadata !{metadata !"int.lua_State *.1"}
!189 = metadata !{metadata !"void.lua_State *.1.lua_Number.0.size_t.0"}
!190 = metadata !{metadata !"void.lua_State *.1.int.0.int.0"}
!191 = metadata !{metadata !"void.lua_State *.1.const luaL_Reg *.1.int.0"}
!192 = metadata !{metadata !"lua_Integer.lua_State *.1.int.0"}
!193 = metadata !{metadata !"int.lua_State *.1.int.0.const char *.1"}
!194 = metadata !{metadata !"int.lua_State *.1.int.0"}
!195 = metadata !{metadata !"void.lua_State *.1.int.0"}
!196 = metadata !{metadata !"void.lua_State *.1.IdxT.0.IdxT.0.unsigned int.0"}
!197 = metadata !{metadata !"int.lua_State *.1.int.0.lua_Integer.0"}
!198 = metadata !{metadata !"int.lua_State *.1.int.0.int.0"}
!199 = metadata !{metadata !"void.lua_State *.1.IdxT.0.IdxT.0"}
!200 = metadata !{metadata !"IdxT.IdxT.0.IdxT.0.unsigned int.0"}
!201 = metadata !{metadata !"IdxT.lua_State *.1.IdxT.0.IdxT.0"}
!202 = metadata !{metadata !"unsigned int."}
!203 = metadata !{metadata !"clock_t."}
!204 = metadata !{metadata !"time_t.time_t *.1"}
!205 = metadata !{metadata !"int.lua_State *.1.const char *.1"}
!206 = metadata !{metadata !"void.lua_State *.1.int.0.lua_Integer.0"}
!207 = metadata !{metadata !"int.lua_State *.1.int.0.int.0.int.0"}
!208 = metadata !{metadata !"void.lua_State *.1.int.0.int.0.lua_KContext.0.lua_KFunction.1"}
!209 = metadata !{metadata !"int.lua_State *.1.const char *.1.int.0"}
!210 = metadata !{metadata !"const char .lua_State *.1.const char *.1"}
!211 = metadata !{metadata !"lua_Integer.lua_State *.1.int.0.lua_Integer.0"}
!212 = metadata !{metadata !"void.lua_State *.1"}
!213 = metadata !{metadata !"void.lua_State *.1.lua_Integer.0"}
!214 = metadata !{metadata !"void.lua_State *.1.int.0.const char *.1"}
!215 = metadata !{metadata !"const char .lua_State *.1.int.0.const char *.1.size_t *.1"}
!216 = metadata !{metadata !"void.lua_State *.1.luaL_Buffer *.1"}
!217 = metadata !{metadata !"void.lua_State *.1.luaL_Buffer *.1.lua_Integer.0"}
!218 = metadata !{metadata !"void.luaL_Buffer *.1.const char *.1.size_t.0"}
!219 = metadata !{metadata !"void.luaL_Buffer *.1"}
!220 = metadata !{metadata !"const char .lua_State *.1.int.0"}
!221 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lualib.h"}
!222 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lauxlib.h"}
!223 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lua.h"}
!224 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/ltablib.c"}
!225 = metadata !{metadata !"D:/Xilinx/SDx/2016.3/SDK/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include\5Ctime.h"}
!226 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!227 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!228 = metadata !{i32 1, metadata !"wchar_size", i32 4}
!229 = metadata !{i32 1, metadata !"min_enum_size", i32 4}
!230 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
!231 = metadata !{i32 786689, metadata !4, metadata !"L", metadata !6, i32 16777657, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 441]
!232 = metadata !{i32 441, i32 42, metadata !4, null}
!233 = metadata !{i32 442, i32 3, metadata !4, null}
!234 = metadata !{i32 448, i32 3, metadata !4, null}
!235 = metadata !{i32 786689, metadata !49, metadata !"L", metadata !6, i32 16777385, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 169]
!236 = metadata !{i32 169, i32 32, metadata !49, null}
!237 = metadata !{i32 786688, metadata !49, metadata !"b", metadata !6, i32 170, metadata !54, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b] [line 170]
!238 = metadata !{i32 170, i32 15, metadata !49, null}
!239 = metadata !{i32 786688, metadata !49, metadata !"last", metadata !6, i32 171, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [last] [line 171]
!240 = metadata !{i32 171, i32 15, metadata !49, null}
!241 = metadata !{i32 171, i32 22, metadata !49, null}
!242 = metadata !{i32 786688, metadata !49, metadata !"lsep", metadata !6, i32 172, metadata !61, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lsep] [line 172]
!243 = metadata !{i32 172, i32 10, metadata !49, null}
!244 = metadata !{i32 786688, metadata !49, metadata !"sep", metadata !6, i32 173, metadata !41, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sep] [line 173]
!245 = metadata !{i32 173, i32 15, metadata !49, null}
!246 = metadata !{i32 173, i32 21, metadata !49, null}
!247 = metadata !{i32 786688, metadata !49, metadata !"i", metadata !6, i32 174, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 174]
!248 = metadata !{i32 174, i32 15, metadata !49, null}
!249 = metadata !{i32 174, i32 19, metadata !49, null}
!250 = metadata !{i32 175, i32 10, metadata !49, null}
!251 = metadata !{i32 176, i32 3, metadata !49, null}
!252 = metadata !{i32 177, i32 3, metadata !253, null}
!253 = metadata !{i32 786443, metadata !5, metadata !49, i32 177, i32 3, i32 0, i32 53} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltablib.c]
!254 = metadata !{i32 177, i32 3, metadata !255, null}
!255 = metadata !{i32 786443, metadata !5, metadata !256, i32 177, i32 3, i32 2, i32 58} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltablib.c]
!256 = metadata !{i32 786443, metadata !5, metadata !253, i32 177, i32 3, i32 1, i32 57} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltablib.c]
!257 = metadata !{i32 178, i32 5, metadata !258, null}
!258 = metadata !{i32 786443, metadata !5, metadata !253, i32 177, i32 25, i32 0, i32 54} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltablib.c]
!259 = metadata !{i32 179, i32 5, metadata !258, null}
!260 = metadata !{i32 180, i32 3, metadata !258, null}
!261 = metadata !{i32 177, i32 20, metadata !253, null}
!262 = metadata !{i32 181, i32 7, metadata !263, null}
!263 = metadata !{i32 786443, metadata !5, metadata !49, i32 181, i32 7, i32 0, i32 55} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltablib.c]
!264 = metadata !{i32 182, i32 5, metadata !263, null}
!265 = metadata !{i32 183, i32 3, metadata !49, null}
!266 = metadata !{i32 184, i32 3, metadata !49, null}
!267 = metadata !{i32 786689, metadata !48, metadata !"L", metadata !6, i32 16777295, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 79]
!268 = metadata !{i32 79, i32 32, metadata !48, null}
!269 = metadata !{i32 786688, metadata !48, metadata !"e", metadata !6, i32 80, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [e] [line 80]
!270 = metadata !{i32 80, i32 15, metadata !48, null}
!271 = metadata !{i32 80, i32 19, metadata !48, null}
!272 = metadata !{i32 786688, metadata !48, metadata !"pos", metadata !6, i32 81, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pos] [line 81]
!273 = metadata !{i32 81, i32 15, metadata !48, null}
!274 = metadata !{i32 82, i32 11, metadata !48, null}
!275 = metadata !{i32 84, i32 7, metadata !276, null}
!276 = metadata !{i32 786443, metadata !5, metadata !277, i32 83, i32 13, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltablib.c]
!277 = metadata !{i32 786443, metadata !5, metadata !48, i32 82, i32 26, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltablib.c]
!278 = metadata !{i32 85, i32 7, metadata !276, null}
!279 = metadata !{i32 786688, metadata !280, metadata !"i", metadata !6, i32 88, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 88]
!280 = metadata !{i32 786443, metadata !5, metadata !277, i32 87, i32 13, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltablib.c]
!281 = metadata !{i32 88, i32 19, metadata !280, null}
!282 = metadata !{i32 89, i32 13, metadata !280, null}
!283 = metadata !{i32 90, i32 7, metadata !280, null}
!284 = metadata !{i32 90, i32 7, metadata !285, null}
!285 = metadata !{i32 786443, metadata !5, metadata !280, i32 90, i32 7, i32 1, i32 59} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltablib.c]
!286 = metadata !{i32 90, i32 7, metadata !287, null}
!287 = metadata !{i32 786443, metadata !5, metadata !288, i32 90, i32 7, i32 4, i32 62} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltablib.c]
!288 = metadata !{i32 786443, metadata !5, metadata !280, i32 90, i32 7, i32 2, i32 60} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltablib.c]
!289 = metadata !{i32 90, i32 7, metadata !290, null}
!290 = metadata !{i32 786443, metadata !5, metadata !291, i32 90, i32 7, i32 5, i32 63} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltablib.c]
!291 = metadata !{i32 786443, metadata !5, metadata !280, i32 90, i32 7, i32 3, i32 61} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltablib.c]
!292 = metadata !{i32 91, i32 12, metadata !293, null}
!293 = metadata !{i32 786443, metadata !5, metadata !280, i32 91, i32 7, i32 0, i32 50} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltablib.c]
!294 = metadata !{i32 91, i32 12, metadata !295, null}
!295 = metadata !{i32 786443, metadata !5, metadata !296, i32 91, i32 12, i32 2, i32 65} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltablib.c]
!296 = metadata !{i32 786443, metadata !5, metadata !293, i32 91, i32 12, i32 1, i32 64} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltablib.c]
!297 = metadata !{i32 92, i32 9, metadata !298, null}
!298 = metadata !{i32 786443, metadata !5, metadata !293, i32 91, i32 33, i32 0, i32 51} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltablib.c]
!299 = metadata !{i32 93, i32 9, metadata !298, null}
!300 = metadata !{i32 94, i32 7, metadata !298, null}
!301 = metadata !{i32 91, i32 28, metadata !293, null}
!302 = metadata !{i32 95, i32 7, metadata !280, null}
!303 = metadata !{i32 98, i32 14, metadata !304, null}
!304 = metadata !{i32 786443, metadata !5, metadata !277, i32 97, i32 14, i32 0, i32 52} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltablib.c]
!305 = metadata !{i32 101, i32 3, metadata !48, null}
!306 = metadata !{i32 102, i32 3, metadata !48, null}
!307 = metadata !{i32 103, i32 1, metadata !48, null}
!308 = metadata !{i32 786689, metadata !47, metadata !"L", metadata !6, i32 16777410, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 194]
!309 = metadata !{i32 194, i32 29, metadata !47, null}
!310 = metadata !{i32 786688, metadata !47, metadata !"i", metadata !6, i32 195, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 195]
!311 = metadata !{i32 195, i32 7, metadata !47, null}
!312 = metadata !{i32 786688, metadata !47, metadata !"n", metadata !6, i32 196, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 196]
!313 = metadata !{i32 196, i32 7, metadata !47, null}
!314 = metadata !{i32 196, i32 11, metadata !47, null}
!315 = metadata !{i32 197, i32 3, metadata !47, null}
!316 = metadata !{i32 198, i32 3, metadata !47, null}
!317 = metadata !{i32 199, i32 8, metadata !318, null}
!318 = metadata !{i32 786443, metadata !5, metadata !47, i32 199, i32 3, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltablib.c]
!319 = metadata !{i32 199, i32 8, metadata !320, null}
!320 = metadata !{i32 786443, metadata !5, metadata !321, i32 199, i32 8, i32 2, i32 67} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltablib.c]
!321 = metadata !{i32 786443, metadata !5, metadata !318, i32 199, i32 8, i32 1, i32 66} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltablib.c]
!322 = metadata !{i32 200, i32 5, metadata !318, null}
!323 = metadata !{i32 199, i32 23, metadata !318, null}
!324 = metadata !{i32 201, i32 3, metadata !47, null}
!325 = metadata !{i32 202, i32 3, metadata !47, null}
!326 = metadata !{i32 203, i32 3, metadata !47, null}
!327 = metadata !{i32 786689, metadata !46, metadata !"L", metadata !6, i32 16777423, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 207]
!328 = metadata !{i32 207, i32 31, metadata !46, null}
!329 = metadata !{i32 786688, metadata !46, metadata !"n", metadata !6, i32 208, metadata !330, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 208]
!330 = metadata !{i32 786454, metadata !12, null, metadata !"lua_Unsigned", i32 96, i64 0, i64 0, i64 0, i32 0, metadata !331} ; [ DW_TAG_typedef ] [lua_Unsigned] [line 96, size 0, align 0, offset 0] [from long long unsigned int]
!331 = metadata !{i32 786468, null, null, metadata !"long long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!332 = metadata !{i32 208, i32 16, metadata !46, null}
!333 = metadata !{i32 786688, metadata !46, metadata !"i", metadata !6, i32 209, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 209]
!334 = metadata !{i32 209, i32 15, metadata !46, null}
!335 = metadata !{i32 209, i32 19, metadata !46, null}
!336 = metadata !{i32 786688, metadata !46, metadata !"e", metadata !6, i32 210, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [e] [line 210]
!337 = metadata !{i32 210, i32 15, metadata !46, null}
!338 = metadata !{i32 210, i32 19, metadata !46, null}
!339 = metadata !{i32 210, i32 19, metadata !340, null}
!340 = metadata !{i32 786443, metadata !5, metadata !46, i32 210, i32 19, i32 1, i32 68} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltablib.c]
!341 = metadata !{i32 210, i32 19, metadata !342, null}
!342 = metadata !{i32 786443, metadata !5, metadata !46, i32 210, i32 19, i32 2, i32 69} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltablib.c]
!343 = metadata !{i32 210, i32 19, metadata !344, null}
!344 = metadata !{i32 786443, metadata !5, metadata !345, i32 210, i32 19, i32 4, i32 71} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltablib.c]
!345 = metadata !{i32 786443, metadata !5, metadata !46, i32 210, i32 19, i32 3, i32 70} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltablib.c]
!346 = metadata !{i32 211, i32 7, metadata !347, null}
!347 = metadata !{i32 786443, metadata !5, metadata !46, i32 211, i32 7, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltablib.c]
!348 = metadata !{i32 211, i32 14, metadata !349, null}
!349 = metadata !{i32 786443, metadata !5, metadata !347, i32 211, i32 14, i32 1, i32 72} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltablib.c]
!350 = metadata !{i32 212, i32 3, metadata !46, null}
!351 = metadata !{i32 213, i32 7, metadata !352, null}
!352 = metadata !{i32 786443, metadata !5, metadata !46, i32 213, i32 7, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltablib.c]
!353 = metadata !{i32 213, i32 39, metadata !354, null}
!354 = metadata !{i32 786443, metadata !5, metadata !352, i32 213, i32 39, i32 1, i32 73} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltablib.c]
!355 = metadata !{i32 214, i32 12, metadata !352, null}
!356 = metadata !{i32 215, i32 3, metadata !357, null}
!357 = metadata !{i32 786443, metadata !5, metadata !46, i32 215, i32 3, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltablib.c]
!358 = metadata !{i32 215, i32 3, metadata !359, null}
!359 = metadata !{i32 786443, metadata !5, metadata !360, i32 215, i32 3, i32 2, i32 75} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltablib.c]
!360 = metadata !{i32 786443, metadata !5, metadata !357, i32 215, i32 3, i32 1, i32 74} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltablib.c]
!361 = metadata !{i32 216, i32 5, metadata !362, null}
!362 = metadata !{i32 786443, metadata !5, metadata !357, i32 215, i32 22, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltablib.c]
!363 = metadata !{i32 217, i32 3, metadata !362, null}
!364 = metadata !{i32 215, i32 17, metadata !357, null}
!365 = metadata !{i32 218, i32 3, metadata !46, null}
!366 = metadata !{i32 219, i32 3, metadata !46, null}
!367 = metadata !{i32 220, i32 1, metadata !46, null}
!368 = metadata !{i32 786689, metadata !45, metadata !"L", metadata !6, i32 16777322, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 106]
!369 = metadata !{i32 106, i32 32, metadata !45, null}
!370 = metadata !{i32 786688, metadata !45, metadata !"size", metadata !6, i32 107, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [size] [line 107]
!371 = metadata !{i32 107, i32 15, metadata !45, null}
!372 = metadata !{i32 107, i32 22, metadata !45, null}
!373 = metadata !{i32 786688, metadata !45, metadata !"pos", metadata !6, i32 108, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pos] [line 108]
!374 = metadata !{i32 108, i32 15, metadata !45, null}
!375 = metadata !{i32 108, i32 21, metadata !45, null}
!376 = metadata !{i32 109, i32 7, metadata !377, null}
!377 = metadata !{i32 786443, metadata !5, metadata !45, i32 109, i32 7, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltablib.c]
!378 = metadata !{i32 110, i32 5, metadata !377, null}
!379 = metadata !{i32 110, i32 5, metadata !380, null}
!380 = metadata !{i32 786443, metadata !5, metadata !377, i32 110, i32 5, i32 1, i32 76} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltablib.c]
!381 = metadata !{i32 110, i32 5, metadata !382, null}
!382 = metadata !{i32 786443, metadata !5, metadata !383, i32 110, i32 5, i32 4, i32 79} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltablib.c]
!383 = metadata !{i32 786443, metadata !5, metadata !377, i32 110, i32 5, i32 2, i32 77} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltablib.c]
!384 = metadata !{i32 110, i32 5, metadata !385, null}
!385 = metadata !{i32 786443, metadata !5, metadata !386, i32 110, i32 5, i32 5, i32 80} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltablib.c]
!386 = metadata !{i32 786443, metadata !5, metadata !377, i32 110, i32 5, i32 3, i32 78} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltablib.c]
!387 = metadata !{i32 111, i32 3, metadata !45, null}
!388 = metadata !{i32 112, i32 3, metadata !389, null}
!389 = metadata !{i32 786443, metadata !5, metadata !45, i32 112, i32 3, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltablib.c]
!390 = metadata !{i32 112, i32 3, metadata !391, null}
!391 = metadata !{i32 786443, metadata !5, metadata !392, i32 112, i32 3, i32 2, i32 82} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltablib.c]
!392 = metadata !{i32 786443, metadata !5, metadata !389, i32 112, i32 3, i32 1, i32 81} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltablib.c]
!393 = metadata !{i32 113, i32 5, metadata !394, null}
!394 = metadata !{i32 786443, metadata !5, metadata !389, i32 112, i32 30, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltablib.c]
!395 = metadata !{i32 114, i32 5, metadata !394, null}
!396 = metadata !{i32 115, i32 3, metadata !394, null}
!397 = metadata !{i32 112, i32 23, metadata !389, null}
!398 = metadata !{i32 116, i32 3, metadata !45, null}
!399 = metadata !{i32 117, i32 3, metadata !45, null}
!400 = metadata !{i32 118, i32 3, metadata !45, null}
!401 = metadata !{i32 786689, metadata !44, metadata !"L", metadata !6, i32 16777344, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 128]
!402 = metadata !{i32 128, i32 30, metadata !44, null}
!403 = metadata !{i32 786688, metadata !44, metadata !"f", metadata !6, i32 129, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [f] [line 129]
!404 = metadata !{i32 129, i32 15, metadata !44, null}
!405 = metadata !{i32 129, i32 19, metadata !44, null}
!406 = metadata !{i32 786688, metadata !44, metadata !"e", metadata !6, i32 130, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [e] [line 130]
!407 = metadata !{i32 130, i32 15, metadata !44, null}
!408 = metadata !{i32 130, i32 19, metadata !44, null}
!409 = metadata !{i32 786688, metadata !44, metadata !"t", metadata !6, i32 131, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [t] [line 131]
!410 = metadata !{i32 131, i32 15, metadata !44, null}
!411 = metadata !{i32 131, i32 19, metadata !44, null}
!412 = metadata !{i32 786688, metadata !44, metadata !"tt", metadata !6, i32 132, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tt] [line 132]
!413 = metadata !{i32 132, i32 7, metadata !44, null}
!414 = metadata !{i32 132, i32 13, metadata !44, null}
!415 = metadata !{i32 133, i32 3, metadata !44, null}
!416 = metadata !{i32 134, i32 3, metadata !44, null}
!417 = metadata !{i32 135, i32 7, metadata !418, null}
!418 = metadata !{i32 786443, metadata !5, metadata !44, i32 135, i32 7, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltablib.c]
!419 = metadata !{i32 786688, metadata !420, metadata !"n", metadata !6, i32 136, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 136]
!420 = metadata !{i32 786443, metadata !5, metadata !418, i32 135, i32 15, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltablib.c]
!421 = metadata !{i32 136, i32 17, metadata !420, null}
!422 = metadata !{i32 786688, metadata !420, metadata !"i", metadata !6, i32 136, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 136]
!423 = metadata !{i32 136, i32 20, metadata !420, null}
!424 = metadata !{i32 137, i32 5, metadata !420, null}
!425 = metadata !{i32 137, i32 5, metadata !426, null}
!426 = metadata !{i32 786443, metadata !5, metadata !420, i32 137, i32 5, i32 2, i32 84} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltablib.c]
!427 = metadata !{i32 137, i32 5, metadata !428, null}
!428 = metadata !{i32 786443, metadata !5, metadata !420, i32 137, i32 5, i32 4, i32 86} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltablib.c]
!429 = metadata !{i32 137, i32 5, metadata !430, null}
!430 = metadata !{i32 786443, metadata !5, metadata !431, i32 137, i32 5, i32 5, i32 87} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltablib.c]
!431 = metadata !{i32 786443, metadata !5, metadata !432, i32 137, i32 5, i32 3, i32 85} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltablib.c]
!432 = metadata !{i32 786443, metadata !5, metadata !420, i32 137, i32 5, i32 1, i32 83} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltablib.c]
!433 = metadata !{i32 139, i32 5, metadata !420, null}
!434 = metadata !{i32 140, i32 5, metadata !420, null}
!435 = metadata !{i32 140, i32 5, metadata !436, null}
!436 = metadata !{i32 786443, metadata !5, metadata !420, i32 140, i32 5, i32 2, i32 89} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltablib.c]
!437 = metadata !{i32 140, i32 5, metadata !438, null}
!438 = metadata !{i32 786443, metadata !5, metadata !439, i32 140, i32 5, i32 3, i32 90} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltablib.c]
!439 = metadata !{i32 786443, metadata !5, metadata !420, i32 140, i32 5, i32 1, i32 88} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltablib.c]
!440 = metadata !{i32 142, i32 9, metadata !441, null}
!441 = metadata !{i32 786443, metadata !5, metadata !420, i32 142, i32 9, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltablib.c]
!442 = metadata !{i32 142, i32 9, metadata !443, null}
!443 = metadata !{i32 786443, metadata !5, metadata !441, i32 142, i32 9, i32 1, i32 91} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltablib.c]
!444 = metadata !{i32 142, i32 9, metadata !445, null}
!445 = metadata !{i32 786443, metadata !5, metadata !441, i32 142, i32 9, i32 2, i32 92} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltablib.c]
!446 = metadata !{i32 142, i32 41, metadata !447, null}
!447 = metadata !{i32 786443, metadata !5, metadata !441, i32 142, i32 41, i32 3, i32 93} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltablib.c]
!448 = metadata !{i32 143, i32 12, metadata !449, null}
!449 = metadata !{i32 786443, metadata !5, metadata !450, i32 143, i32 7, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltablib.c]
!450 = metadata !{i32 786443, metadata !5, metadata !441, i32 142, i32 75, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltablib.c]
!451 = metadata !{i32 143, i32 12, metadata !452, null}
!452 = metadata !{i32 786443, metadata !5, metadata !453, i32 143, i32 12, i32 2, i32 95} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltablib.c]
!453 = metadata !{i32 786443, metadata !5, metadata !449, i32 143, i32 12, i32 1, i32 94} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltablib.c]
!454 = metadata !{i32 144, i32 9, metadata !455, null}
!455 = metadata !{i32 786443, metadata !5, metadata !449, i32 143, i32 31, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltablib.c]
!456 = metadata !{i32 145, i32 9, metadata !455, null}
!457 = metadata !{i32 146, i32 7, metadata !455, null}
!458 = metadata !{i32 143, i32 26, metadata !449, null}
!459 = metadata !{i32 147, i32 5, metadata !450, null}
!460 = metadata !{i32 149, i32 12, metadata !461, null}
!461 = metadata !{i32 786443, metadata !5, metadata !462, i32 149, i32 7, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltablib.c]
!462 = metadata !{i32 786443, metadata !5, metadata !441, i32 148, i32 10, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltablib.c]
!463 = metadata !{i32 149, i32 12, metadata !464, null}
!464 = metadata !{i32 786443, metadata !5, metadata !465, i32 149, i32 12, i32 2, i32 97} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltablib.c]
!465 = metadata !{i32 786443, metadata !5, metadata !461, i32 149, i32 12, i32 1, i32 96} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltablib.c]
!466 = metadata !{i32 150, i32 9, metadata !467, null}
!467 = metadata !{i32 786443, metadata !5, metadata !461, i32 149, i32 36, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltablib.c]
!468 = metadata !{i32 151, i32 9, metadata !467, null}
!469 = metadata !{i32 152, i32 7, metadata !467, null}
!470 = metadata !{i32 149, i32 31, metadata !461, null}
!471 = metadata !{i32 154, i32 3, metadata !420, null}
!472 = metadata !{i32 155, i32 3, metadata !44, null}
!473 = metadata !{i32 156, i32 3, metadata !44, null}
!474 = metadata !{i32 786689, metadata !14, metadata !"L", metadata !6, i32 16777627, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 411]
!475 = metadata !{i32 411, i32 29, metadata !14, null}
!476 = metadata !{i32 786688, metadata !14, metadata !"n", metadata !6, i32 412, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 412]
!477 = metadata !{i32 412, i32 15, metadata !14, null}
!478 = metadata !{i32 412, i32 19, metadata !14, null}
!479 = metadata !{i32 413, i32 7, metadata !480, null}
!480 = metadata !{i32 786443, metadata !5, metadata !14, i32 413, i32 7, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltablib.c]
!481 = metadata !{i32 414, i32 5, metadata !482, null}
!482 = metadata !{i32 786443, metadata !5, metadata !480, i32 413, i32 14, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltablib.c]
!483 = metadata !{i32 414, i32 5, metadata !484, null}
!484 = metadata !{i32 786443, metadata !5, metadata !482, i32 414, i32 5, i32 2, i32 99} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltablib.c]
!485 = metadata !{i32 414, i32 5, metadata !486, null}
!486 = metadata !{i32 786443, metadata !5, metadata !487, i32 414, i32 5, i32 3, i32 100} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltablib.c]
!487 = metadata !{i32 786443, metadata !5, metadata !482, i32 414, i32 5, i32 1, i32 98} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltablib.c]
!488 = metadata !{i32 415, i32 10, metadata !489, null}
!489 = metadata !{i32 786443, metadata !5, metadata !482, i32 415, i32 9, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltablib.c]
!490 = metadata !{i32 416, i32 7, metadata !489, null}
!491 = metadata !{i32 417, i32 5, metadata !482, null}
!492 = metadata !{i32 418, i32 5, metadata !482, null}
!493 = metadata !{i32 419, i32 3, metadata !482, null}
!494 = metadata !{i32 420, i32 3, metadata !14, null}
!495 = metadata !{i32 786689, metadata !35, metadata !"L", metadata !6, i32 16777262, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 46]
!496 = metadata !{i32 46, i32 34, metadata !35, null}
!497 = metadata !{i32 786689, metadata !35, metadata !"arg", metadata !6, i32 33554478, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [arg] [line 46]
!498 = metadata !{i32 46, i32 41, metadata !35, null}
!499 = metadata !{i32 786689, metadata !35, metadata !"what", metadata !6, i32 50331694, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [what] [line 46]
!500 = metadata !{i32 46, i32 50, metadata !35, null}
!501 = metadata !{i32 47, i32 7, metadata !502, null}
!502 = metadata !{i32 786443, metadata !5, metadata !35, i32 47, i32 7, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltablib.c]
!503 = metadata !{i32 786688, metadata !504, metadata !"n", metadata !6, i32 48, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 48]
!504 = metadata !{i32 786443, metadata !5, metadata !502, i32 47, i32 39, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltablib.c]
!505 = metadata !{i32 48, i32 9, metadata !504, null}
!506 = metadata !{i32 48, i32 5, metadata !504, null}
!507 = metadata !{i32 49, i32 9, metadata !508, null}
!508 = metadata !{i32 786443, metadata !5, metadata !504, i32 49, i32 9, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltablib.c]
!509 = metadata !{i32 49, i32 9, metadata !510, null}
!510 = metadata !{i32 786443, metadata !5, metadata !508, i32 49, i32 9, i32 1, i32 101} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltablib.c]
!511 = metadata !{i32 50, i32 29, metadata !508, null}
!512 = metadata !{i32 50, i32 29, metadata !513, null}
!513 = metadata !{i32 786443, metadata !5, metadata !508, i32 50, i32 29, i32 1, i32 102} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltablib.c]
!514 = metadata !{i32 51, i32 29, metadata !508, null}
!515 = metadata !{i32 51, i32 29, metadata !516, null}
!516 = metadata !{i32 786443, metadata !5, metadata !508, i32 51, i32 29, i32 1, i32 103} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltablib.c]
!517 = metadata !{i32 52, i32 29, metadata !508, null}
!518 = metadata !{i32 53, i32 7, metadata !519, null}
!519 = metadata !{i32 786443, metadata !5, metadata !508, i32 52, i32 59, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltablib.c]
!520 = metadata !{i32 54, i32 5, metadata !519, null}
!521 = metadata !{i32 56, i32 7, metadata !508, null}
!522 = metadata !{i32 57, i32 3, metadata !504, null}
!523 = metadata !{i32 58, i32 1, metadata !35, null} ; [ DW_TAG_imported_module ]
!524 = metadata !{i32 786689, metadata !15, metadata !"L", metadata !6, i32 16777573, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 357]
!525 = metadata !{i32 357, i32 33, metadata !15, null}
!526 = metadata !{i32 786689, metadata !15, metadata !"lo", metadata !6, i32 33554789, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [lo] [line 357]
!527 = metadata !{i32 357, i32 41, metadata !15, null}
!528 = metadata !{i32 786689, metadata !15, metadata !"up", metadata !6, i32 50332005, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [up] [line 357]
!529 = metadata !{i32 357, i32 50, metadata !15, null}
!530 = metadata !{i32 786689, metadata !15, metadata !"rnd", metadata !6, i32 67109222, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rnd] [line 358]
!531 = metadata !{i32 358, i32 49, metadata !15, null}
!532 = metadata !{i32 359, i32 3, metadata !15, null}
!533 = metadata !{i32 359, i32 3, metadata !534, null}
!534 = metadata !{i32 786443, metadata !5, metadata !15, i32 359, i32 3, i32 1, i32 104} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltablib.c]
!535 = metadata !{i32 786688, metadata !536, metadata !"p", metadata !6, i32 360, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 360]
!536 = metadata !{i32 786443, metadata !5, metadata !15, i32 359, i32 19, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltablib.c]
!537 = metadata !{i32 360, i32 10, metadata !536, null}
!538 = metadata !{i32 786688, metadata !536, metadata !"n", metadata !6, i32 361, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 361]
!539 = metadata !{i32 361, i32 10, metadata !536, null}
!540 = metadata !{i32 363, i32 5, metadata !536, null}
!541 = metadata !{i32 364, i32 5, metadata !536, null}
!542 = metadata !{i32 365, i32 9, metadata !543, null}
!543 = metadata !{i32 786443, metadata !5, metadata !536, i32 365, i32 9, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltablib.c]
!544 = metadata !{i32 366, i32 7, metadata !543, null}
!545 = metadata !{i32 368, i32 7, metadata !543, null}
!546 = metadata !{i32 369, i32 9, metadata !547, null}
!547 = metadata !{i32 786443, metadata !5, metadata !536, i32 369, i32 9, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltablib.c]
!548 = metadata !{i32 370, i32 7, metadata !547, null}
!549 = metadata !{i32 371, i32 9, metadata !550, null}
!550 = metadata !{i32 786443, metadata !5, metadata !536, i32 371, i32 9, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltablib.c]
!551 = metadata !{i32 371, i32 9, metadata !552, null}
!552 = metadata !{i32 786443, metadata !5, metadata !550, i32 371, i32 9, i32 1, i32 105} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltablib.c]
!553 = metadata !{i32 372, i32 7, metadata !550, null}
!554 = metadata !{i32 374, i32 11, metadata !550, null}
!555 = metadata !{i32 375, i32 5, metadata !536, null}
!556 = metadata !{i32 376, i32 5, metadata !536, null}
!557 = metadata !{i32 377, i32 9, metadata !558, null}
!558 = metadata !{i32 786443, metadata !5, metadata !536, i32 377, i32 9, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltablib.c]
!559 = metadata !{i32 378, i32 7, metadata !558, null}
!560 = metadata !{i32 380, i32 7, metadata !561, null}
!561 = metadata !{i32 786443, metadata !5, metadata !558, i32 379, i32 10, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltablib.c]
!562 = metadata !{i32 381, i32 7, metadata !561, null}
!563 = metadata !{i32 382, i32 11, metadata !564, null}
!564 = metadata !{i32 786443, metadata !5, metadata !561, i32 382, i32 11, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltablib.c]
!565 = metadata !{i32 383, i32 9, metadata !564, null}
!566 = metadata !{i32 385, i32 9, metadata !564, null}
!567 = metadata !{i32 387, i32 9, metadata !568, null}
!568 = metadata !{i32 786443, metadata !5, metadata !536, i32 387, i32 9, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltablib.c]
!569 = metadata !{i32 388, i32 7, metadata !568, null}
!570 = metadata !{i32 389, i32 5, metadata !536, null}
!571 = metadata !{i32 390, i32 5, metadata !536, null}
!572 = metadata !{i32 391, i32 5, metadata !536, null}
!573 = metadata !{i32 392, i32 5, metadata !536, null}
!574 = metadata !{i32 393, i32 9, metadata !536, null}
!575 = metadata !{i32 395, i32 9, metadata !576, null}
!576 = metadata !{i32 786443, metadata !5, metadata !536, i32 395, i32 9, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltablib.c]
!577 = metadata !{i32 396, i32 7, metadata !578, null}
!578 = metadata !{i32 786443, metadata !5, metadata !576, i32 395, i32 26, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltablib.c]
!579 = metadata !{i32 397, i32 7, metadata !578, null}
!580 = metadata !{i32 398, i32 7, metadata !578, null}
!581 = metadata !{i32 399, i32 5, metadata !578, null}
!582 = metadata !{i32 401, i32 7, metadata !583, null}
!583 = metadata !{i32 786443, metadata !5, metadata !576, i32 400, i32 10, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltablib.c]
!584 = metadata !{i32 402, i32 7, metadata !583, null}
!585 = metadata !{i32 403, i32 7, metadata !583, null}
!586 = metadata !{i32 405, i32 9, metadata !587, null}
!587 = metadata !{i32 786443, metadata !5, metadata !536, i32 405, i32 9, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltablib.c]
!588 = metadata !{i32 406, i32 13, metadata !587, null}
!589 = metadata !{i32 407, i32 3, metadata !536, null}
!590 = metadata !{i32 408, i32 1, metadata !15, null}
!591 = metadata !{i32 786689, metadata !32, metadata !"L", metadata !6, i32 16777503, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 287]
!592 = metadata !{i32 287, i32 34, metadata !32, null}
!593 = metadata !{i32 786689, metadata !32, metadata !"a", metadata !6, i32 33554719, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 287]
!594 = metadata !{i32 287, i32 41, metadata !32, null}
!595 = metadata !{i32 786689, metadata !32, metadata !"b", metadata !6, i32 50331935, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b] [line 287]
!596 = metadata !{i32 287, i32 48, metadata !32, null}
!597 = metadata !{i32 288, i32 7, metadata !598, null}
!598 = metadata !{i32 786443, metadata !5, metadata !32, i32 288, i32 7, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltablib.c]
!599 = metadata !{i32 289, i32 12, metadata !598, null}
!600 = metadata !{i32 786688, metadata !601, metadata !"res", metadata !6, i32 291, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [res] [line 291]
!601 = metadata !{i32 786443, metadata !5, metadata !598, i32 290, i32 8, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltablib.c]
!602 = metadata !{i32 291, i32 9, metadata !601, null}
!603 = metadata !{i32 292, i32 5, metadata !601, null}
!604 = metadata !{i32 293, i32 5, metadata !601, null}
!605 = metadata !{i32 294, i32 5, metadata !601, null}
!606 = metadata !{i32 295, i32 5, metadata !601, null}
!607 = metadata !{i32 296, i32 11, metadata !601, null}
!608 = metadata !{i32 297, i32 5, metadata !601, null}
!609 = metadata !{i32 298, i32 5, metadata !601, null}
!610 = metadata !{i32 300, i32 1, metadata !32, null}
!611 = metadata !{i32 786689, metadata !29, metadata !"L", metadata !6, i32 16777493, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 277]
!612 = metadata !{i32 277, i32 30, metadata !29, null}
!613 = metadata !{i32 786689, metadata !29, metadata !"i", metadata !6, i32 33554709, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [i] [line 277]
!614 = metadata !{i32 277, i32 38, metadata !29, null}
!615 = metadata !{i32 786689, metadata !29, metadata !"j", metadata !6, i32 50331925, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [j] [line 277]
!616 = metadata !{i32 277, i32 46, metadata !29, null}
!617 = metadata !{i32 278, i32 3, metadata !29, null}
!618 = metadata !{i32 279, i32 3, metadata !29, null}
!619 = metadata !{i32 280, i32 1, metadata !29, null}
!620 = metadata !{i32 786689, metadata !26, metadata !"lo", metadata !6, i32 16777562, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [lo] [line 346]
!621 = metadata !{i32 346, i32 31, metadata !26, null}
!622 = metadata !{i32 786689, metadata !26, metadata !"up", metadata !6, i32 33554778, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [up] [line 346]
!623 = metadata !{i32 346, i32 40, metadata !26, null}
!624 = metadata !{i32 786689, metadata !26, metadata !"rnd", metadata !6, i32 50331994, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rnd] [line 346]
!625 = metadata !{i32 346, i32 57, metadata !26, null}
!626 = metadata !{i32 786688, metadata !26, metadata !"r4", metadata !6, i32 347, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r4] [line 347]
!627 = metadata !{i32 347, i32 8, metadata !26, null}
!628 = metadata !{i32 347, i32 3, metadata !26, null}
!629 = metadata !{i32 786688, metadata !26, metadata !"p", metadata !6, i32 348, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 348]
!630 = metadata !{i32 348, i32 8, metadata !26, null}
!631 = metadata !{i32 348, i32 3, metadata !26, null}
!632 = metadata !{i32 350, i32 3, metadata !26, null}
!633 = metadata !{i32 786689, metadata !23, metadata !"L", metadata !6, i32 16777526, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 310]
!634 = metadata !{i32 310, i32 35, metadata !23, null}
!635 = metadata !{i32 786689, metadata !23, metadata !"lo", metadata !6, i32 33554742, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [lo] [line 310]
!636 = metadata !{i32 310, i32 43, metadata !23, null}
!637 = metadata !{i32 786689, metadata !23, metadata !"up", metadata !6, i32 50331958, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [up] [line 310]
!638 = metadata !{i32 310, i32 52, metadata !23, null}
!639 = metadata !{i32 786688, metadata !23, metadata !"i", metadata !6, i32 311, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 311]
!640 = metadata !{i32 311, i32 8, metadata !23, null}
!641 = metadata !{i32 311, i32 3, metadata !23, null}
!642 = metadata !{i32 786688, metadata !23, metadata !"j", metadata !6, i32 312, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 312]
!643 = metadata !{i32 312, i32 8, metadata !23, null}
!644 = metadata !{i32 312, i32 3, metadata !23, null}
!645 = metadata !{i32 314, i32 3, metadata !646, null}
!646 = metadata !{i32 786443, metadata !5, metadata !23, i32 314, i32 3, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltablib.c]
!647 = metadata !{i32 316, i32 5, metadata !648, null}
!648 = metadata !{i32 786443, metadata !5, metadata !646, i32 314, i32 12, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltablib.c]
!649 = metadata !{i32 316, i32 12, metadata !650, null}
!650 = metadata !{i32 786443, metadata !5, metadata !648, i32 316, i32 12, i32 1, i32 106} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltablib.c]
!651 = metadata !{i32 316, i32 33, metadata !648, null}
!652 = metadata !{i32 317, i32 11, metadata !653, null}
!653 = metadata !{i32 786443, metadata !5, metadata !654, i32 317, i32 11, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltablib.c]
!654 = metadata !{i32 786443, metadata !5, metadata !648, i32 316, i32 55, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltablib.c]
!655 = metadata !{i32 318, i32 9, metadata !653, null}
!656 = metadata !{i32 319, i32 7, metadata !654, null}
!657 = metadata !{i32 320, i32 5, metadata !654, null}
!658 = metadata !{i32 323, i32 5, metadata !648, null}
!659 = metadata !{i32 323, i32 12, metadata !660, null}
!660 = metadata !{i32 786443, metadata !5, metadata !648, i32 323, i32 12, i32 1, i32 107} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltablib.c]
!661 = metadata !{i32 323, i32 33, metadata !648, null}
!662 = metadata !{i32 324, i32 11, metadata !663, null}
!663 = metadata !{i32 786443, metadata !5, metadata !664, i32 324, i32 11, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltablib.c]
!664 = metadata !{i32 786443, metadata !5, metadata !648, i32 323, i32 55, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltablib.c]
!665 = metadata !{i32 325, i32 9, metadata !663, null}
!666 = metadata !{i32 326, i32 7, metadata !664, null}
!667 = metadata !{i32 327, i32 5, metadata !664, null}
!668 = metadata !{i32 329, i32 9, metadata !669, null}
!669 = metadata !{i32 786443, metadata !5, metadata !648, i32 329, i32 9, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltablib.c]
!670 = metadata !{i32 331, i32 7, metadata !671, null}
!671 = metadata !{i32 786443, metadata !5, metadata !669, i32 329, i32 16, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltablib.c]
!672 = metadata !{i32 333, i32 7, metadata !671, null}
!673 = metadata !{i32 334, i32 7, metadata !671, null}
!674 = metadata !{i32 337, i32 5, metadata !648, null}
!675 = metadata !{i32 338, i32 3, metadata !648, null}
!676 = metadata !{i32 786688, metadata !20, metadata !"c", metadata !6, i32 259, metadata !677, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c] [line 259]
!677 = metadata !{i32 786454, metadata !678, null, metadata !"clock_t", i32 59, i64 0, i64 0, i64 0, i32 0, metadata !679} ; [ DW_TAG_typedef ] [clock_t] [line 59, size 0, align 0, offset 0] [from __clock_t]
!678 = metadata !{metadata !"D:/Xilinx/SDx/2016.3/SDK/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include\5Ctime.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!679 = metadata !{i32 786454, metadata !680, null, metadata !"__clock_t", i32 135, i64 0, i64 0, i64 0, i32 0, metadata !681} ; [ DW_TAG_typedef ] [__clock_t] [line 135, size 0, align 0, offset 0] [from long int]
!680 = metadata !{metadata !"D:/Xilinx/SDx/2016.3/SDK/gnu/aarch32/nt/gcc-arm-linux-gnueabi/arm-linux-gnueabihf/libc/usr/include\5Cbits/types.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!681 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!682 = metadata !{i32 259, i32 11, metadata !20, null}
!683 = metadata !{i32 259, i32 15, metadata !20, null}
!684 = metadata !{i32 786688, metadata !20, metadata !"t", metadata !6, i32 260, metadata !685, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [t] [line 260]
!685 = metadata !{i32 786454, metadata !678, null, metadata !"time_t", i32 75, i64 0, i64 0, i64 0, i32 0, metadata !686} ; [ DW_TAG_typedef ] [time_t] [line 75, size 0, align 0, offset 0] [from __time_t]
!686 = metadata !{i32 786454, metadata !680, null, metadata !"__time_t", i32 139, i64 0, i64 0, i64 0, i32 0, metadata !681} ; [ DW_TAG_typedef ] [__time_t] [line 139, size 0, align 0, offset 0] [from long int]
!687 = metadata !{i32 260, i32 10, metadata !20, null}
!688 = metadata !{i32 260, i32 14, metadata !20, null}
!689 = metadata !{i32 786688, metadata !20, metadata !"buff", metadata !6, i32 261, metadata !690, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buff] [line 261]
!690 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 64, i64 32, i32 0, i32 0, metadata !19, metadata !691, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 64, align 32, offset 0] [from unsigned int]
!691 = metadata !{metadata !692}
!692 = metadata !{i32 786465, i64 0, i64 2}       ; [ DW_TAG_subrange_type ] [0, 1]
!693 = metadata !{i32 261, i32 16, metadata !20, null}
!694 = metadata !{i32 786688, metadata !20, metadata !"i", metadata !6, i32 262, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 262]
!695 = metadata !{i32 262, i32 16, metadata !20, null}
!696 = metadata !{i32 786688, metadata !20, metadata !"rnd", metadata !6, i32 262, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rnd] [line 262]
!697 = metadata !{i32 262, i32 19, metadata !20, null}
!698 = metadata !{i32 262, i32 3, metadata !20, null}
!699 = metadata !{i32 263, i32 3, metadata !20, null}
!700 = metadata !{i32 264, i32 3, metadata !20, null}
!701 = metadata !{i32 265, i32 8, metadata !702, null}
!702 = metadata !{i32 786443, metadata !5, metadata !20, i32 265, i32 3, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltablib.c]
!703 = metadata !{i32 265, i32 8, metadata !704, null}
!704 = metadata !{i32 786443, metadata !5, metadata !705, i32 265, i32 8, i32 2, i32 109} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltablib.c]
!705 = metadata !{i32 786443, metadata !5, metadata !702, i32 265, i32 8, i32 1, i32 108} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltablib.c]
!706 = metadata !{i32 266, i32 5, metadata !702, null}
!707 = metadata !{i32 265, i32 30, metadata !702, null}
!708 = metadata !{i32 267, i32 3, metadata !20, null}
!709 = metadata !{i32 786689, metadata !38, metadata !"L", metadata !6, i32 16777252, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 36]
!710 = metadata !{i32 36, i32 35, metadata !38, null}
!711 = metadata !{i32 786689, metadata !38, metadata !"key", metadata !6, i32 33554468, metadata !41, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [key] [line 36]
!712 = metadata !{i32 36, i32 50, metadata !38, null}
!713 = metadata !{i32 786689, metadata !38, metadata !"n", metadata !6, i32 50331684, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 36]
!714 = metadata !{i32 36, i32 59, metadata !38, null}
!715 = metadata !{i32 37, i32 3, metadata !38, null}
!716 = metadata !{i32 38, i32 11, metadata !38, null}
!717 = metadata !{i32 786689, metadata !50, metadata !"L", metadata !6, i32 16777376, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 160]
!718 = metadata !{i32 160, i32 34, metadata !50, null}
!719 = metadata !{i32 786689, metadata !50, metadata !"b", metadata !6, i32 33554592, metadata !53, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b] [line 160]
!720 = metadata !{i32 160, i32 50, metadata !50, null}
!721 = metadata !{i32 786689, metadata !50, metadata !"i", metadata !6, i32 50331808, metadata !69, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [i] [line 160]
!722 = metadata !{i32 160, i32 65, metadata !50, null}
!723 = metadata !{i32 161, i32 3, metadata !50, null}
!724 = metadata !{i32 162, i32 8, metadata !725, null}
!725 = metadata !{i32 786443, metadata !5, metadata !50, i32 162, i32 7, i32 0, i32 56} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/ltablib.c]
!726 = metadata !{i32 163, i32 5, metadata !725, null}
!727 = metadata !{i32 164, i32 19, metadata !725, null}
!728 = metadata !{i32 165, i32 3, metadata !50, null}
!729 = metadata !{i32 166, i32 1, metadata !50, null}
