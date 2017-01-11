; ModuleID = 'C:/Users/DevolutionX/workspace/lua/src/lbitlib.c'
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-n32-S64"
target triple = "armv7--linux-gnueabihf"

%struct.luaL_Reg = type { i8*, i32 (%struct.lua_State*)* }
%struct.lua_State = type opaque

@bitlib = internal constant [13 x %struct.luaL_Reg] [%struct.luaL_Reg { i8* getelementptr inbounds ([8 x i8]* @.str, i32 0, i32 0), i32 (%struct.lua_State*)* @b_arshift }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8]* @.str1, i32 0, i32 0), i32 (%struct.lua_State*)* @b_and }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8]* @.str2, i32 0, i32 0), i32 (%struct.lua_State*)* @b_not }, %struct.luaL_Reg { i8* getelementptr inbounds ([4 x i8]* @.str3, i32 0, i32 0), i32 (%struct.lua_State*)* @b_or }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8]* @.str4, i32 0, i32 0), i32 (%struct.lua_State*)* @b_xor }, %struct.luaL_Reg { i8* getelementptr inbounds ([6 x i8]* @.str5, i32 0, i32 0), i32 (%struct.lua_State*)* @b_test }, %struct.luaL_Reg { i8* getelementptr inbounds ([8 x i8]* @.str6, i32 0, i32 0), i32 (%struct.lua_State*)* @b_extract }, %struct.luaL_Reg { i8* getelementptr inbounds ([8 x i8]* @.str7, i32 0, i32 0), i32 (%struct.lua_State*)* @b_lrot }, %struct.luaL_Reg { i8* getelementptr inbounds ([7 x i8]* @.str8, i32 0, i32 0), i32 (%struct.lua_State*)* @b_lshift }, %struct.luaL_Reg { i8* getelementptr inbounds ([8 x i8]* @.str9, i32 0, i32 0), i32 (%struct.lua_State*)* @b_replace }, %struct.luaL_Reg { i8* getelementptr inbounds ([8 x i8]* @.str10, i32 0, i32 0), i32 (%struct.lua_State*)* @b_rrot }, %struct.luaL_Reg { i8* getelementptr inbounds ([7 x i8]* @.str11, i32 0, i32 0), i32 (%struct.lua_State*)* @b_rshift }, %struct.luaL_Reg zeroinitializer], align 4
@.str = private unnamed_addr constant [8 x i8] c"arshift\00", align 1
@.str1 = private unnamed_addr constant [5 x i8] c"band\00", align 1
@.str2 = private unnamed_addr constant [5 x i8] c"bnot\00", align 1
@.str3 = private unnamed_addr constant [4 x i8] c"bor\00", align 1
@.str4 = private unnamed_addr constant [5 x i8] c"bxor\00", align 1
@.str5 = private unnamed_addr constant [6 x i8] c"btest\00", align 1
@.str6 = private unnamed_addr constant [8 x i8] c"extract\00", align 1
@.str7 = private unnamed_addr constant [8 x i8] c"lrotate\00", align 1
@.str8 = private unnamed_addr constant [7 x i8] c"lshift\00", align 1
@.str9 = private unnamed_addr constant [8 x i8] c"replace\00", align 1
@.str10 = private unnamed_addr constant [8 x i8] c"rrotate\00", align 1
@.str11 = private unnamed_addr constant [7 x i8] c"rshift\00", align 1
@.str12 = private unnamed_addr constant [25 x i8] c"field cannot be negative\00", align 1
@.str13 = private unnamed_addr constant [23 x i8] c"width must be positive\00", align 1
@.str14 = private unnamed_addr constant [35 x i8] c"trying to access non-existent bits\00", align 1

; Function Attrs: nounwind
define i32 @luaopen_bit32(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !137), !dbg !138
  %2 = load %struct.lua_State** %1, align 4, !dbg !139
  call void @luaL_checkversion_(%struct.lua_State* %2, double 5.030000e+02, i32 136), !dbg !139
  %3 = load %struct.lua_State** %1, align 4, !dbg !139
  call void @lua_createtable(%struct.lua_State* %3, i32 0, i32 12), !dbg !139
  %4 = load %struct.lua_State** %1, align 4, !dbg !139
  call void @luaL_setfuncs(%struct.lua_State* %4, %struct.luaL_Reg* getelementptr inbounds ([13 x %struct.luaL_Reg]* @bitlib, i32 0, i32 0), i32 0), !dbg !139
  ret i32 1, !dbg !140
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

declare void @luaL_checkversion_(%struct.lua_State*, double, i32) #2

declare void @lua_createtable(%struct.lua_State*, i32, i32) #2

declare void @luaL_setfuncs(%struct.lua_State*, %struct.luaL_Reg*, i32) #2

; Function Attrs: nounwind
define internal i32 @b_arshift(%struct.lua_State* %L) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.lua_State*, align 4
  %r = alloca i64, align 8
  %i = alloca i64, align 8
  store %struct.lua_State* %L, %struct.lua_State** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %2}, metadata !141), !dbg !142
  call void @llvm.dbg.declare(metadata !{i64* %r}, metadata !143), !dbg !144
  %3 = load %struct.lua_State** %2, align 4, !dbg !145
  %4 = call i64 @luaL_checkinteger(%struct.lua_State* %3, i32 1), !dbg !145
  store i64 %4, i64* %r, align 8, !dbg !145
  call void @llvm.dbg.declare(metadata !{i64* %i}, metadata !146), !dbg !147
  %5 = load %struct.lua_State** %2, align 4, !dbg !148
  %6 = call i64 @luaL_checkinteger(%struct.lua_State* %5, i32 2), !dbg !148
  store i64 %6, i64* %i, align 8, !dbg !148
  %7 = load i64* %i, align 8, !dbg !149
  %8 = icmp slt i64 %7, 0, !dbg !149
  br i1 %8, label %13, label %9, !dbg !149

; <label>:9                                       ; preds = %0
  %10 = load i64* %r, align 8, !dbg !151
  %11 = and i64 %10, 2147483648, !dbg !151
  %12 = icmp ne i64 %11, 0, !dbg !151
  br i1 %12, label %19, label %13, !dbg !151

; <label>:13                                      ; preds = %9, %0
  %14 = load %struct.lua_State** %2, align 4, !dbg !153
  %15 = load i64* %r, align 8, !dbg !153
  %16 = load i64* %i, align 8, !dbg !153
  %17 = sub nsw i64 0, %16, !dbg !153
  %18 = call i32 @b_shift(%struct.lua_State* %14, i64 %15, i64 %17), !dbg !153
  store i32 %18, i32* %1, !dbg !153
  br label %35, !dbg !153

; <label>:19                                      ; preds = %9
  %20 = load i64* %i, align 8, !dbg !154
  %21 = icmp sge i64 %20, 32, !dbg !154
  br i1 %21, label %22, label %23, !dbg !154

; <label>:22                                      ; preds = %19
  store i64 4294967295, i64* %r, align 8, !dbg !157
  br label %32, !dbg !157

; <label>:23                                      ; preds = %19
  %24 = load i64* %r, align 8, !dbg !159
  %25 = load i64* %i, align 8, !dbg !159
  %26 = lshr i64 %24, %25, !dbg !159
  %27 = load i64* %i, align 8, !dbg !159
  %28 = lshr i64 4294967295, %27, !dbg !159
  %29 = xor i64 %28, -1, !dbg !159
  %30 = or i64 %26, %29, !dbg !159
  %31 = and i64 %30, 4294967295, !dbg !159
  store i64 %31, i64* %r, align 8, !dbg !159
  br label %32

; <label>:32                                      ; preds = %23, %22
  %33 = load %struct.lua_State** %2, align 4, !dbg !160
  %34 = load i64* %r, align 8, !dbg !160
  call void @lua_pushinteger(%struct.lua_State* %33, i64 %34), !dbg !160
  store i32 1, i32* %1, !dbg !161
  br label %35, !dbg !161

; <label>:35                                      ; preds = %32, %13
  %36 = load i32* %1, !dbg !162
  ret i32 %36, !dbg !162
}

; Function Attrs: nounwind
define internal i32 @b_and(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %r = alloca i64, align 8
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !163), !dbg !164
  call void @llvm.dbg.declare(metadata !{i64* %r}, metadata !165), !dbg !166
  %2 = load %struct.lua_State** %1, align 4, !dbg !167
  %3 = call i64 @andaux(%struct.lua_State* %2), !dbg !167
  store i64 %3, i64* %r, align 8, !dbg !167
  %4 = load %struct.lua_State** %1, align 4, !dbg !168
  %5 = load i64* %r, align 8, !dbg !168
  call void @lua_pushinteger(%struct.lua_State* %4, i64 %5), !dbg !168
  ret i32 1, !dbg !169
}

; Function Attrs: nounwind
define internal i32 @b_not(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %r = alloca i64, align 8
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !170), !dbg !171
  call void @llvm.dbg.declare(metadata !{i64* %r}, metadata !172), !dbg !173
  %2 = load %struct.lua_State** %1, align 4, !dbg !174
  %3 = call i64 @luaL_checkinteger(%struct.lua_State* %2, i32 1), !dbg !174
  %4 = xor i64 %3, -1, !dbg !174
  store i64 %4, i64* %r, align 8, !dbg !174
  %5 = load %struct.lua_State** %1, align 4, !dbg !175
  %6 = load i64* %r, align 8, !dbg !175
  %7 = and i64 %6, 4294967295, !dbg !175
  call void @lua_pushinteger(%struct.lua_State* %5, i64 %7), !dbg !175
  ret i32 1, !dbg !176
}

; Function Attrs: nounwind
define internal i32 @b_or(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %r = alloca i64, align 8
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !177), !dbg !178
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !179), !dbg !180
  call void @llvm.dbg.declare(metadata !{i32* %n}, metadata !181), !dbg !182
  %2 = load %struct.lua_State** %1, align 4, !dbg !183
  %3 = call i32 @lua_gettop(%struct.lua_State* %2), !dbg !183
  store i32 %3, i32* %n, align 4, !dbg !183
  call void @llvm.dbg.declare(metadata !{i64* %r}, metadata !184), !dbg !185
  store i64 0, i64* %r, align 8, !dbg !186
  store i32 1, i32* %i, align 4, !dbg !187
  br label %4, !dbg !187

; <label>:4                                       ; preds = %14, %0
  %5 = load i32* %i, align 4, !dbg !189
  %6 = load i32* %n, align 4, !dbg !189
  %7 = icmp sle i32 %5, %6, !dbg !189
  br i1 %7, label %8, label %17, !dbg !189

; <label>:8                                       ; preds = %4
  %9 = load %struct.lua_State** %1, align 4, !dbg !192
  %10 = load i32* %i, align 4, !dbg !192
  %11 = call i64 @luaL_checkinteger(%struct.lua_State* %9, i32 %10), !dbg !192
  %12 = load i64* %r, align 8, !dbg !192
  %13 = or i64 %12, %11, !dbg !192
  store i64 %13, i64* %r, align 8, !dbg !192
  br label %14, !dbg !192

; <label>:14                                      ; preds = %8
  %15 = load i32* %i, align 4, !dbg !193
  %16 = add nsw i32 %15, 1, !dbg !193
  store i32 %16, i32* %i, align 4, !dbg !193
  br label %4, !dbg !193

; <label>:17                                      ; preds = %4
  %18 = load %struct.lua_State** %1, align 4, !dbg !194
  %19 = load i64* %r, align 8, !dbg !194
  %20 = and i64 %19, 4294967295, !dbg !194
  call void @lua_pushinteger(%struct.lua_State* %18, i64 %20), !dbg !194
  ret i32 1, !dbg !195
}

; Function Attrs: nounwind
define internal i32 @b_xor(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %r = alloca i64, align 8
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !196), !dbg !197
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !198), !dbg !199
  call void @llvm.dbg.declare(metadata !{i32* %n}, metadata !200), !dbg !201
  %2 = load %struct.lua_State** %1, align 4, !dbg !202
  %3 = call i32 @lua_gettop(%struct.lua_State* %2), !dbg !202
  store i32 %3, i32* %n, align 4, !dbg !202
  call void @llvm.dbg.declare(metadata !{i64* %r}, metadata !203), !dbg !204
  store i64 0, i64* %r, align 8, !dbg !205
  store i32 1, i32* %i, align 4, !dbg !206
  br label %4, !dbg !206

; <label>:4                                       ; preds = %14, %0
  %5 = load i32* %i, align 4, !dbg !208
  %6 = load i32* %n, align 4, !dbg !208
  %7 = icmp sle i32 %5, %6, !dbg !208
  br i1 %7, label %8, label %17, !dbg !208

; <label>:8                                       ; preds = %4
  %9 = load %struct.lua_State** %1, align 4, !dbg !211
  %10 = load i32* %i, align 4, !dbg !211
  %11 = call i64 @luaL_checkinteger(%struct.lua_State* %9, i32 %10), !dbg !211
  %12 = load i64* %r, align 8, !dbg !211
  %13 = xor i64 %12, %11, !dbg !211
  store i64 %13, i64* %r, align 8, !dbg !211
  br label %14, !dbg !211

; <label>:14                                      ; preds = %8
  %15 = load i32* %i, align 4, !dbg !212
  %16 = add nsw i32 %15, 1, !dbg !212
  store i32 %16, i32* %i, align 4, !dbg !212
  br label %4, !dbg !212

; <label>:17                                      ; preds = %4
  %18 = load %struct.lua_State** %1, align 4, !dbg !213
  %19 = load i64* %r, align 8, !dbg !213
  %20 = and i64 %19, 4294967295, !dbg !213
  call void @lua_pushinteger(%struct.lua_State* %18, i64 %20), !dbg !213
  ret i32 1, !dbg !214
}

; Function Attrs: nounwind
define internal i32 @b_test(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %r = alloca i64, align 8
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !215), !dbg !216
  call void @llvm.dbg.declare(metadata !{i64* %r}, metadata !217), !dbg !218
  %2 = load %struct.lua_State** %1, align 4, !dbg !219
  %3 = call i64 @andaux(%struct.lua_State* %2), !dbg !219
  store i64 %3, i64* %r, align 8, !dbg !219
  %4 = load %struct.lua_State** %1, align 4, !dbg !220
  %5 = load i64* %r, align 8, !dbg !220
  %6 = icmp ne i64 %5, 0, !dbg !220
  %7 = zext i1 %6 to i32, !dbg !220
  call void @lua_pushboolean(%struct.lua_State* %4, i32 %7), !dbg !220
  ret i32 1, !dbg !221
}

; Function Attrs: nounwind
define internal i32 @b_extract(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %w = alloca i32, align 4
  %r = alloca i64, align 8
  %f = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !222), !dbg !223
  call void @llvm.dbg.declare(metadata !{i32* %w}, metadata !224), !dbg !225
  call void @llvm.dbg.declare(metadata !{i64* %r}, metadata !226), !dbg !227
  %2 = load %struct.lua_State** %1, align 4, !dbg !228
  %3 = call i64 @luaL_checkinteger(%struct.lua_State* %2, i32 1), !dbg !228
  %4 = and i64 %3, 4294967295, !dbg !228
  store i64 %4, i64* %r, align 8, !dbg !228
  call void @llvm.dbg.declare(metadata !{i32* %f}, metadata !229), !dbg !230
  %5 = load %struct.lua_State** %1, align 4, !dbg !231
  %6 = call i32 @fieldargs(%struct.lua_State* %5, i32 2, i32* %w), !dbg !231
  store i32 %6, i32* %f, align 4, !dbg !231
  %7 = load i64* %r, align 8, !dbg !232
  %8 = load i32* %f, align 4, !dbg !232
  %9 = zext i32 %8 to i64, !dbg !232
  %10 = lshr i64 %7, %9, !dbg !232
  %11 = load i32* %w, align 4, !dbg !232
  %12 = sub nsw i32 %11, 1, !dbg !232
  %13 = zext i32 %12 to i64, !dbg !232
  %14 = shl i64 8589934590, %13, !dbg !232
  %15 = xor i64 %14, -1, !dbg !232
  %16 = and i64 %10, %15, !dbg !232
  store i64 %16, i64* %r, align 8, !dbg !232
  %17 = load %struct.lua_State** %1, align 4, !dbg !233
  %18 = load i64* %r, align 8, !dbg !233
  call void @lua_pushinteger(%struct.lua_State* %17, i64 %18), !dbg !233
  ret i32 1, !dbg !234
}

; Function Attrs: nounwind
define internal i32 @b_lrot(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !235), !dbg !236
  %2 = load %struct.lua_State** %1, align 4, !dbg !237
  %3 = load %struct.lua_State** %1, align 4, !dbg !238
  %4 = call i64 @luaL_checkinteger(%struct.lua_State* %3, i32 2), !dbg !238
  %5 = call i32 @b_rot(%struct.lua_State* %2, i64 %4), !dbg !237
  ret i32 %5, !dbg !237
}

; Function Attrs: nounwind
define internal i32 @b_lshift(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !239), !dbg !240
  %2 = load %struct.lua_State** %1, align 4, !dbg !241
  %3 = load %struct.lua_State** %1, align 4, !dbg !242
  %4 = call i64 @luaL_checkinteger(%struct.lua_State* %3, i32 1), !dbg !242
  %5 = load %struct.lua_State** %1, align 4, !dbg !243
  %6 = call i64 @luaL_checkinteger(%struct.lua_State* %5, i32 2), !dbg !243
  %7 = call i32 @b_shift(%struct.lua_State* %2, i64 %4, i64 %6), !dbg !241
  ret i32 %7, !dbg !241
}

; Function Attrs: nounwind
define internal i32 @b_replace(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %w = alloca i32, align 4
  %r = alloca i64, align 8
  %v = alloca i64, align 8
  %f = alloca i32, align 4
  %m = alloca i64, align 8
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !244), !dbg !245
  call void @llvm.dbg.declare(metadata !{i32* %w}, metadata !246), !dbg !247
  call void @llvm.dbg.declare(metadata !{i64* %r}, metadata !248), !dbg !249
  %2 = load %struct.lua_State** %1, align 4, !dbg !250
  %3 = call i64 @luaL_checkinteger(%struct.lua_State* %2, i32 1), !dbg !250
  %4 = and i64 %3, 4294967295, !dbg !250
  store i64 %4, i64* %r, align 8, !dbg !250
  call void @llvm.dbg.declare(metadata !{i64* %v}, metadata !251), !dbg !252
  %5 = load %struct.lua_State** %1, align 4, !dbg !253
  %6 = call i64 @luaL_checkinteger(%struct.lua_State* %5, i32 2), !dbg !253
  %7 = and i64 %6, 4294967295, !dbg !253
  store i64 %7, i64* %v, align 8, !dbg !253
  call void @llvm.dbg.declare(metadata !{i32* %f}, metadata !254), !dbg !255
  %8 = load %struct.lua_State** %1, align 4, !dbg !256
  %9 = call i32 @fieldargs(%struct.lua_State* %8, i32 3, i32* %w), !dbg !256
  store i32 %9, i32* %f, align 4, !dbg !256
  call void @llvm.dbg.declare(metadata !{i64* %m}, metadata !257), !dbg !258
  %10 = load i32* %w, align 4, !dbg !259
  %11 = sub nsw i32 %10, 1, !dbg !259
  %12 = zext i32 %11 to i64, !dbg !259
  %13 = shl i64 8589934590, %12, !dbg !259
  %14 = xor i64 %13, -1, !dbg !259
  store i64 %14, i64* %m, align 8, !dbg !259
  %15 = load i64* %r, align 8, !dbg !260
  %16 = load i64* %m, align 8, !dbg !260
  %17 = load i32* %f, align 4, !dbg !260
  %18 = zext i32 %17 to i64, !dbg !260
  %19 = shl i64 %16, %18, !dbg !260
  %20 = xor i64 %19, -1, !dbg !260
  %21 = and i64 %15, %20, !dbg !260
  %22 = load i64* %v, align 8, !dbg !260
  %23 = load i64* %m, align 8, !dbg !260
  %24 = and i64 %22, %23, !dbg !260
  %25 = load i32* %f, align 4, !dbg !260
  %26 = zext i32 %25 to i64, !dbg !260
  %27 = shl i64 %24, %26, !dbg !260
  %28 = or i64 %21, %27, !dbg !260
  store i64 %28, i64* %r, align 8, !dbg !260
  %29 = load %struct.lua_State** %1, align 4, !dbg !261
  %30 = load i64* %r, align 8, !dbg !261
  call void @lua_pushinteger(%struct.lua_State* %29, i64 %30), !dbg !261
  ret i32 1, !dbg !262
}

; Function Attrs: nounwind
define internal i32 @b_rrot(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !263), !dbg !264
  %2 = load %struct.lua_State** %1, align 4, !dbg !265
  %3 = load %struct.lua_State** %1, align 4, !dbg !266
  %4 = call i64 @luaL_checkinteger(%struct.lua_State* %3, i32 2), !dbg !266
  %5 = sub nsw i64 0, %4, !dbg !266
  %6 = call i32 @b_rot(%struct.lua_State* %2, i64 %5), !dbg !265
  ret i32 %6, !dbg !265
}

; Function Attrs: nounwind
define internal i32 @b_rshift(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !267), !dbg !268
  %2 = load %struct.lua_State** %1, align 4, !dbg !269
  %3 = load %struct.lua_State** %1, align 4, !dbg !270
  %4 = call i64 @luaL_checkinteger(%struct.lua_State* %3, i32 1), !dbg !270
  %5 = load %struct.lua_State** %1, align 4, !dbg !271
  %6 = call i64 @luaL_checkinteger(%struct.lua_State* %5, i32 2), !dbg !271
  %7 = sub nsw i64 0, %6, !dbg !271
  %8 = call i32 @b_shift(%struct.lua_State* %2, i64 %4, i64 %7), !dbg !269
  ret i32 %8, !dbg !269
}

; Function Attrs: nounwind
define internal i32 @b_shift(%struct.lua_State* %L, i64 %r, i64 %i) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !272), !dbg !273
  store i64 %r, i64* %2, align 8
  call void @llvm.dbg.declare(metadata !{i64* %2}, metadata !274), !dbg !275
  store i64 %i, i64* %3, align 8
  call void @llvm.dbg.declare(metadata !{i64* %3}, metadata !276), !dbg !277
  %4 = load i64* %3, align 8, !dbg !278
  %5 = icmp slt i64 %4, 0, !dbg !278
  br i1 %5, label %6, label %19, !dbg !278

; <label>:6                                       ; preds = %0
  %7 = load i64* %3, align 8, !dbg !280
  %8 = sub nsw i64 0, %7, !dbg !280
  store i64 %8, i64* %3, align 8, !dbg !280
  %9 = load i64* %2, align 8, !dbg !282
  %10 = and i64 %9, 4294967295, !dbg !282
  store i64 %10, i64* %2, align 8, !dbg !282
  %11 = load i64* %3, align 8, !dbg !283
  %12 = icmp sge i64 %11, 32, !dbg !283
  br i1 %12, label %13, label %14, !dbg !283

; <label>:13                                      ; preds = %6
  store i64 0, i64* %2, align 8, !dbg !285
  br label %18, !dbg !285

; <label>:14                                      ; preds = %6
  %15 = load i64* %3, align 8, !dbg !287
  %16 = load i64* %2, align 8, !dbg !287
  %17 = lshr i64 %16, %15, !dbg !287
  store i64 %17, i64* %2, align 8, !dbg !287
  br label %18

; <label>:18                                      ; preds = %14, %13
  br label %30, !dbg !288

; <label>:19                                      ; preds = %0
  %20 = load i64* %3, align 8, !dbg !289
  %21 = icmp sge i64 %20, 32, !dbg !289
  br i1 %21, label %22, label %23, !dbg !289

; <label>:22                                      ; preds = %19
  store i64 0, i64* %2, align 8, !dbg !292
  br label %27, !dbg !292

; <label>:23                                      ; preds = %19
  %24 = load i64* %3, align 8, !dbg !294
  %25 = load i64* %2, align 8, !dbg !294
  %26 = shl i64 %25, %24, !dbg !294
  store i64 %26, i64* %2, align 8, !dbg !294
  br label %27

; <label>:27                                      ; preds = %23, %22
  %28 = load i64* %2, align 8, !dbg !295
  %29 = and i64 %28, 4294967295, !dbg !295
  store i64 %29, i64* %2, align 8, !dbg !295
  br label %30

; <label>:30                                      ; preds = %27, %18
  %31 = load %struct.lua_State** %1, align 4, !dbg !296
  %32 = load i64* %2, align 8, !dbg !296
  call void @lua_pushinteger(%struct.lua_State* %31, i64 %32), !dbg !296
  ret i32 1, !dbg !297
}

declare i64 @luaL_checkinteger(%struct.lua_State*, i32) #2

declare void @lua_pushinteger(%struct.lua_State*, i64) #2

; Function Attrs: nounwind
define internal i32 @b_rot(%struct.lua_State* %L, i64 %d) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca i64, align 8
  %r = alloca i64, align 8
  %i = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !298), !dbg !299
  store i64 %d, i64* %2, align 8
  call void @llvm.dbg.declare(metadata !{i64* %2}, metadata !300), !dbg !301
  call void @llvm.dbg.declare(metadata !{i64* %r}, metadata !302), !dbg !303
  %3 = load %struct.lua_State** %1, align 4, !dbg !304
  %4 = call i64 @luaL_checkinteger(%struct.lua_State* %3, i32 1), !dbg !304
  store i64 %4, i64* %r, align 8, !dbg !304
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !305), !dbg !306
  %5 = load i64* %2, align 8, !dbg !307
  %6 = and i64 %5, 31, !dbg !307
  %7 = trunc i64 %6 to i32, !dbg !307
  store i32 %7, i32* %i, align 4, !dbg !307
  %8 = load i64* %r, align 8, !dbg !308
  %9 = and i64 %8, 4294967295, !dbg !308
  store i64 %9, i64* %r, align 8, !dbg !308
  %10 = load i32* %i, align 4, !dbg !309
  %11 = icmp ne i32 %10, 0, !dbg !309
  br i1 %11, label %12, label %23, !dbg !309

; <label>:12                                      ; preds = %0
  %13 = load i64* %r, align 8, !dbg !311
  %14 = load i32* %i, align 4, !dbg !311
  %15 = zext i32 %14 to i64, !dbg !311
  %16 = shl i64 %13, %15, !dbg !311
  %17 = load i64* %r, align 8, !dbg !311
  %18 = load i32* %i, align 4, !dbg !311
  %19 = sub nsw i32 32, %18, !dbg !311
  %20 = zext i32 %19 to i64, !dbg !311
  %21 = lshr i64 %17, %20, !dbg !311
  %22 = or i64 %16, %21, !dbg !311
  store i64 %22, i64* %r, align 8, !dbg !311
  br label %23, !dbg !311

; <label>:23                                      ; preds = %12, %0
  %24 = load %struct.lua_State** %1, align 4, !dbg !312
  %25 = load i64* %r, align 8, !dbg !312
  %26 = and i64 %25, 4294967295, !dbg !312
  call void @lua_pushinteger(%struct.lua_State* %24, i64 %26), !dbg !312
  ret i32 1, !dbg !313
}

; Function Attrs: nounwind
define internal i32 @fieldargs(%struct.lua_State* %L, i32 %farg, i32* %width) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 4
  %f = alloca i64, align 8
  %w = alloca i64, align 8
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !314), !dbg !315
  store i32 %farg, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !316), !dbg !317
  store i32* %width, i32** %3, align 4
  call void @llvm.dbg.declare(metadata !{i32** %3}, metadata !318), !dbg !319
  call void @llvm.dbg.declare(metadata !{i64* %f}, metadata !320), !dbg !321
  %4 = load %struct.lua_State** %1, align 4, !dbg !322
  %5 = load i32* %2, align 4, !dbg !322
  %6 = call i64 @luaL_checkinteger(%struct.lua_State* %4, i32 %5), !dbg !322
  store i64 %6, i64* %f, align 8, !dbg !322
  call void @llvm.dbg.declare(metadata !{i64* %w}, metadata !323), !dbg !324
  %7 = load %struct.lua_State** %1, align 4, !dbg !325
  %8 = load i32* %2, align 4, !dbg !325
  %9 = add nsw i32 %8, 1, !dbg !325
  %10 = call i64 @luaL_optinteger(%struct.lua_State* %7, i32 %9, i64 1), !dbg !325
  store i64 %10, i64* %w, align 8, !dbg !325
  %11 = load i64* %f, align 8, !dbg !326
  %12 = icmp sle i64 0, %11, !dbg !326
  br i1 %12, label %18, label %13, !dbg !326

; <label>:13                                      ; preds = %0
  %14 = load %struct.lua_State** %1, align 4, !dbg !327
  %15 = load i32* %2, align 4, !dbg !327
  %16 = call i32 @luaL_argerror(%struct.lua_State* %14, i32 %15, i8* getelementptr inbounds ([25 x i8]* @.str12, i32 0, i32 0)), !dbg !327
  %17 = icmp ne i32 %16, 0, !dbg !327
  br label %18, !dbg !327

; <label>:18                                      ; preds = %13, %0
  %19 = phi i1 [ true, %0 ], [ %17, %13 ]
  %20 = zext i1 %19 to i32, !dbg !329
  %21 = load i64* %w, align 8, !dbg !332
  %22 = icmp slt i64 0, %21, !dbg !332
  br i1 %22, label %29, label %23, !dbg !332

; <label>:23                                      ; preds = %18
  %24 = load %struct.lua_State** %1, align 4, !dbg !333
  %25 = load i32* %2, align 4, !dbg !333
  %26 = add nsw i32 %25, 1, !dbg !333
  %27 = call i32 @luaL_argerror(%struct.lua_State* %24, i32 %26, i8* getelementptr inbounds ([23 x i8]* @.str13, i32 0, i32 0)), !dbg !333
  %28 = icmp ne i32 %27, 0, !dbg !333
  br label %29, !dbg !333

; <label>:29                                      ; preds = %23, %18
  %30 = phi i1 [ true, %18 ], [ %28, %23 ]
  %31 = zext i1 %30 to i32, !dbg !335
  %32 = load i64* %f, align 8, !dbg !338
  %33 = load i64* %w, align 8, !dbg !338
  %34 = add nsw i64 %32, %33, !dbg !338
  %35 = icmp sgt i64 %34, 32, !dbg !338
  br i1 %35, label %36, label %39, !dbg !338

; <label>:36                                      ; preds = %29
  %37 = load %struct.lua_State** %1, align 4, !dbg !340
  %38 = call i32 (%struct.lua_State*, i8*, ...)* @luaL_error(%struct.lua_State* %37, i8* getelementptr inbounds ([35 x i8]* @.str14, i32 0, i32 0)), !dbg !340
  br label %39, !dbg !340

; <label>:39                                      ; preds = %36, %29
  %40 = load i64* %w, align 8, !dbg !341
  %41 = trunc i64 %40 to i32, !dbg !341
  %42 = load i32** %3, align 4, !dbg !341
  store i32 %41, i32* %42, align 4, !dbg !341
  %43 = load i64* %f, align 8, !dbg !342
  %44 = trunc i64 %43 to i32, !dbg !342
  ret i32 %44, !dbg !342
}

declare i64 @luaL_optinteger(%struct.lua_State*, i32, i64) #2

declare i32 @luaL_argerror(%struct.lua_State*, i32, i8*) #2

declare i32 @luaL_error(%struct.lua_State*, i8*, ...) #2

; Function Attrs: nounwind
define internal i64 @andaux(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %r = alloca i64, align 8
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !343), !dbg !344
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !345), !dbg !346
  call void @llvm.dbg.declare(metadata !{i32* %n}, metadata !347), !dbg !348
  %2 = load %struct.lua_State** %1, align 4, !dbg !349
  %3 = call i32 @lua_gettop(%struct.lua_State* %2), !dbg !349
  store i32 %3, i32* %n, align 4, !dbg !349
  call void @llvm.dbg.declare(metadata !{i64* %r}, metadata !350), !dbg !351
  store i64 -1, i64* %r, align 8, !dbg !352
  store i32 1, i32* %i, align 4, !dbg !353
  br label %4, !dbg !353

; <label>:4                                       ; preds = %14, %0
  %5 = load i32* %i, align 4, !dbg !355
  %6 = load i32* %n, align 4, !dbg !355
  %7 = icmp sle i32 %5, %6, !dbg !355
  br i1 %7, label %8, label %17, !dbg !355

; <label>:8                                       ; preds = %4
  %9 = load %struct.lua_State** %1, align 4, !dbg !358
  %10 = load i32* %i, align 4, !dbg !358
  %11 = call i64 @luaL_checkinteger(%struct.lua_State* %9, i32 %10), !dbg !358
  %12 = load i64* %r, align 8, !dbg !358
  %13 = and i64 %12, %11, !dbg !358
  store i64 %13, i64* %r, align 8, !dbg !358
  br label %14, !dbg !358

; <label>:14                                      ; preds = %8
  %15 = load i32* %i, align 4, !dbg !359
  %16 = add nsw i32 %15, 1, !dbg !359
  store i32 %16, i32* %i, align 4, !dbg !359
  br label %4, !dbg !359

; <label>:17                                      ; preds = %4
  %18 = load i64* %r, align 8, !dbg !360
  %19 = and i64 %18, 4294967295, !dbg !360
  ret i64 %19, !dbg !360
}

declare void @lua_pushboolean(%struct.lua_State*, i32) #2

declare i32 @lua_gettop(%struct.lua_State*) #2

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!xidane.fname = !{!60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113}
!xidane.function_declaration_type = !{!60, !114, !62, !115, !64, !116, !66, !117, !68, !114, !70, !114, !72, !114, !74, !114, !76, !114, !78, !114, !80, !114, !82, !114, !84, !114, !86, !114, !88, !114, !90, !114, !92, !118, !94, !119, !96, !120, !98, !121, !100, !122, !102, !123, !104, !124, !106, !125, !108, !126, !110, !127, !112, !114}
!xidane.function_declaration_filename = !{!60, !128, !62, !129, !64, !130, !66, !129, !68, !131, !70, !131, !72, !131, !74, !131, !76, !131, !78, !131, !80, !131, !82, !131, !84, !131, !86, !131, !88, !131, !90, !131, !92, !131, !94, !129, !96, !130, !98, !131, !100, !131, !102, !129, !104, !129, !106, !129, !108, !131, !110, !130, !112, !130}
!xidane.ExternC = !{!60, !62, !64, !66, !94, !96, !102, !104, !106, !110, !112}
!llvm.module.flags = !{!132, !133, !134, !135}
!llvm.ident = !{!136}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.0 (tags/RELEASE_350/final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !43, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src\lbitlib.c] [DW_LANG_C99]
!1 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src\5Clbitlib.c", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!2 = metadata !{}
!3 = metadata !{metadata !4, metadata !14, metadata !15, metadata !22, metadata !23, metadata !26, metadata !27, metadata !31, metadata !32, metadata !33, metadata !34, metadata !35, metadata !38, metadata !39, metadata !40, metadata !41, metadata !42}
!4 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"luaopen_bit32", metadata !"luaopen_bit32", metadata !"", i32 220, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @luaopen_bit32, null, null, metadata !2, i32 220} ; [ DW_TAG_subprogram ] [line 220] [def] [luaopen_bit32]
!5 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lbitlib.c", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!6 = metadata !{i32 786473, metadata !5}          ; [ DW_TAG_file_type ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lbitlib.c]
!7 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!8 = metadata !{metadata !9, metadata !10}
!9 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!10 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !11} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from lua_State]
!11 = metadata !{i32 786454, metadata !12, null, metadata !"lua_State", i32 56, i64 0, i64 0, i64 0, i32 0, metadata !13} ; [ DW_TAG_typedef ] [lua_State] [line 56, size 0, align 0, offset 0] [from lua_State]
!12 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lua.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!13 = metadata !{i32 786451, metadata !12, null, metadata !"lua_State", i32 56, i64 0, i64 0, i32 0, i32 4, null, null, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [lua_State] [line 56, size 0, align 0, offset 0] [decl] [from ]
!14 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"b_rshift", metadata !"b_rshift", metadata !"", i32 121, metadata !7, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @b_rshift, null, null, metadata !2, i32 121} ; [ DW_TAG_subprogram ] [line 121] [local] [def] [b_rshift]
!15 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"b_shift", metadata !"b_shift", metadata !"", i32 99, metadata !16, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*, i64, i64)* @b_shift, null, null, metadata !2, i32 99} ; [ DW_TAG_subprogram ] [line 99] [local] [def] [b_shift]
!16 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !17, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!17 = metadata !{metadata !9, metadata !10, metadata !18, metadata !20}
!18 = metadata !{i32 786454, metadata !12, null, metadata !"lua_Unsigned", i32 96, i64 0, i64 0, i64 0, i32 0, metadata !19} ; [ DW_TAG_typedef ] [lua_Unsigned] [line 96, size 0, align 0, offset 0] [from long long unsigned int]
!19 = metadata !{i32 786468, null, null, metadata !"long long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!20 = metadata !{i32 786454, metadata !12, null, metadata !"lua_Integer", i32 93, i64 0, i64 0, i64 0, i32 0, metadata !21} ; [ DW_TAG_typedef ] [lua_Integer] [line 93, size 0, align 0, offset 0] [from long long int]
!21 = metadata !{i32 786468, null, null, metadata !"long long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!22 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"b_rrot", metadata !"b_rrot", metadata !"", i32 157, metadata !7, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @b_rrot, null, null, metadata !2, i32 157} ; [ DW_TAG_subprogram ] [line 157] [local] [def] [b_rrot]
!23 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"b_rot", metadata !"b_rot", metadata !"", i32 141, metadata !24, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*, i64)* @b_rot, null, null, metadata !2, i32 141} ; [ DW_TAG_subprogram ] [line 141] [local] [def] [b_rot]
!24 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !25, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!25 = metadata !{metadata !9, metadata !10, metadata !20}
!26 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"b_replace", metadata !"b_replace", metadata !"", i32 190, metadata !7, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @b_replace, null, null, metadata !2, i32 190} ; [ DW_TAG_subprogram ] [line 190] [local] [def] [b_replace]
!27 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"fieldargs", metadata !"fieldargs", metadata !"", i32 168, metadata !28, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*, i32, i32*)* @fieldargs, null, null, metadata !2, i32 168} ; [ DW_TAG_subprogram ] [line 168] [local] [def] [fieldargs]
!28 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !29, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!29 = metadata !{metadata !9, metadata !10, metadata !9, metadata !30}
!30 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from int]
!31 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"b_lshift", metadata !"b_lshift", metadata !"", i32 116, metadata !7, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @b_lshift, null, null, metadata !2, i32 116} ; [ DW_TAG_subprogram ] [line 116] [local] [def] [b_lshift]
!32 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"b_lrot", metadata !"b_lrot", metadata !"", i32 152, metadata !7, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @b_lrot, null, null, metadata !2, i32 152} ; [ DW_TAG_subprogram ] [line 152] [local] [def] [b_lrot]
!33 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"b_extract", metadata !"b_extract", metadata !"", i32 180, metadata !7, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @b_extract, null, null, metadata !2, i32 180} ; [ DW_TAG_subprogram ] [line 180] [local] [def] [b_extract]
!34 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"b_test", metadata !"b_test", metadata !"", i32 65, metadata !7, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @b_test, null, null, metadata !2, i32 65} ; [ DW_TAG_subprogram ] [line 65] [local] [def] [b_test]
!35 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"andaux", metadata !"andaux", metadata !"", i32 49, metadata !36, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i64 (%struct.lua_State*)* @andaux, null, null, metadata !2, i32 49} ; [ DW_TAG_subprogram ] [line 49] [local] [def] [andaux]
!36 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !37, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!37 = metadata !{metadata !18, metadata !10}
!38 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"b_xor", metadata !"b_xor", metadata !"", i32 82, metadata !7, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @b_xor, null, null, metadata !2, i32 82} ; [ DW_TAG_subprogram ] [line 82] [local] [def] [b_xor]
!39 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"b_or", metadata !"b_or", metadata !"", i32 72, metadata !7, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @b_or, null, null, metadata !2, i32 72} ; [ DW_TAG_subprogram ] [line 72] [local] [def] [b_or]
!40 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"b_not", metadata !"b_not", metadata !"", i32 92, metadata !7, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @b_not, null, null, metadata !2, i32 92} ; [ DW_TAG_subprogram ] [line 92] [local] [def] [b_not]
!41 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"b_and", metadata !"b_and", metadata !"", i32 58, metadata !7, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @b_and, null, null, metadata !2, i32 58} ; [ DW_TAG_subprogram ] [line 58] [local] [def] [b_and]
!42 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"b_arshift", metadata !"b_arshift", metadata !"", i32 126, metadata !7, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @b_arshift, null, null, metadata !2, i32 126} ; [ DW_TAG_subprogram ] [line 126] [local] [def] [b_arshift]
!43 = metadata !{metadata !44}
!44 = metadata !{i32 786484, i32 0, null, metadata !"bitlib", metadata !"bitlib", metadata !"", metadata !6, i32 202, metadata !45, i32 1, i32 1, [13 x %struct.luaL_Reg]* @bitlib, null} ; [ DW_TAG_variable ] [bitlib] [line 202] [local] [def]
!45 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 832, i64 32, i32 0, i32 0, metadata !46, metadata !58, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 832, align 32, offset 0] [from ]
!46 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !47} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from luaL_Reg]
!47 = metadata !{i32 786454, metadata !48, null, metadata !"luaL_Reg", i32 26, i64 0, i64 0, i64 0, i32 0, metadata !49} ; [ DW_TAG_typedef ] [luaL_Reg] [line 26, size 0, align 0, offset 0] [from luaL_Reg]
!48 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lauxlib.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!49 = metadata !{i32 786451, metadata !48, null, metadata !"luaL_Reg", i32 23, i64 64, i64 32, i32 0, i32 0, null, metadata !50, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [luaL_Reg] [line 23, size 64, align 32, offset 0] [def] [from ]
!50 = metadata !{metadata !51, metadata !55}
!51 = metadata !{i32 786445, metadata !48, metadata !49, metadata !"name", i32 24, i64 32, i64 32, i64 0, i32 0, metadata !52} ; [ DW_TAG_member ] [name] [line 24, size 32, align 32, offset 0] [from ]
!52 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !53} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!53 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !54} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!54 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!55 = metadata !{i32 786445, metadata !48, metadata !49, metadata !"func", i32 25, i64 32, i64 32, i64 32, i32 0, metadata !56} ; [ DW_TAG_member ] [func] [line 25, size 32, align 32, offset 32] [from lua_CFunction]
!56 = metadata !{i32 786454, metadata !12, null, metadata !"lua_CFunction", i32 105, i64 0, i64 0, i64 0, i32 0, metadata !57} ; [ DW_TAG_typedef ] [lua_CFunction] [line 105, size 0, align 0, offset 0] [from ]
!57 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !7} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!58 = metadata !{metadata !59}
!59 = metadata !{i32 786465, i64 0, i64 13}       ; [ DW_TAG_subrange_type ] [0, 12]
!60 = metadata !{i32 (%struct.lua_State*)* @luaopen_bit32}
!61 = metadata !{metadata !"luaopen_bit32"}
!62 = metadata !{void (%struct.lua_State*, double, i32)* @luaL_checkversion_}
!63 = metadata !{metadata !"luaL_checkversion_"}
!64 = metadata !{void (%struct.lua_State*, i32, i32)* @lua_createtable}
!65 = metadata !{metadata !"lua_createtable"}
!66 = metadata !{void (%struct.lua_State*, %struct.luaL_Reg*, i32)* @luaL_setfuncs}
!67 = metadata !{metadata !"luaL_setfuncs"}
!68 = metadata !{i32 (%struct.lua_State*)* @b_arshift}
!69 = metadata !{metadata !"b_arshift"}
!70 = metadata !{i32 (%struct.lua_State*)* @b_and}
!71 = metadata !{metadata !"b_and"}
!72 = metadata !{i32 (%struct.lua_State*)* @b_not}
!73 = metadata !{metadata !"b_not"}
!74 = metadata !{i32 (%struct.lua_State*)* @b_or}
!75 = metadata !{metadata !"b_or"}
!76 = metadata !{i32 (%struct.lua_State*)* @b_xor}
!77 = metadata !{metadata !"b_xor"}
!78 = metadata !{i32 (%struct.lua_State*)* @b_test}
!79 = metadata !{metadata !"b_test"}
!80 = metadata !{i32 (%struct.lua_State*)* @b_extract}
!81 = metadata !{metadata !"b_extract"}
!82 = metadata !{i32 (%struct.lua_State*)* @b_lrot}
!83 = metadata !{metadata !"b_lrot"}
!84 = metadata !{i32 (%struct.lua_State*)* @b_lshift}
!85 = metadata !{metadata !"b_lshift"}
!86 = metadata !{i32 (%struct.lua_State*)* @b_replace}
!87 = metadata !{metadata !"b_replace"}
!88 = metadata !{i32 (%struct.lua_State*)* @b_rrot}
!89 = metadata !{metadata !"b_rrot"}
!90 = metadata !{i32 (%struct.lua_State*)* @b_rshift}
!91 = metadata !{metadata !"b_rshift"}
!92 = metadata !{i32 (%struct.lua_State*, i64, i64)* @b_shift}
!93 = metadata !{metadata !"b_shift"}
!94 = metadata !{i64 (%struct.lua_State*, i32)* @luaL_checkinteger}
!95 = metadata !{metadata !"luaL_checkinteger"}
!96 = metadata !{void (%struct.lua_State*, i64)* @lua_pushinteger}
!97 = metadata !{metadata !"lua_pushinteger"}
!98 = metadata !{i32 (%struct.lua_State*, i64)* @b_rot}
!99 = metadata !{metadata !"b_rot"}
!100 = metadata !{i32 (%struct.lua_State*, i32, i32*)* @fieldargs}
!101 = metadata !{metadata !"fieldargs"}
!102 = metadata !{i64 (%struct.lua_State*, i32, i64)* @luaL_optinteger}
!103 = metadata !{metadata !"luaL_optinteger"}
!104 = metadata !{i32 (%struct.lua_State*, i32, i8*)* @luaL_argerror}
!105 = metadata !{metadata !"luaL_argerror"}
!106 = metadata !{i32 (%struct.lua_State*, i8*, ...)* @luaL_error}
!107 = metadata !{metadata !"luaL_error"}
!108 = metadata !{i64 (%struct.lua_State*)* @andaux}
!109 = metadata !{metadata !"andaux"}
!110 = metadata !{void (%struct.lua_State*, i32)* @lua_pushboolean}
!111 = metadata !{metadata !"lua_pushboolean"}
!112 = metadata !{i32 (%struct.lua_State*)* @lua_gettop}
!113 = metadata !{metadata !"lua_gettop"}
!114 = metadata !{metadata !"int.lua_State *.1"}
!115 = metadata !{metadata !"void.lua_State *.1.lua_Number.0.size_t.0"}
!116 = metadata !{metadata !"void.lua_State *.1.int.0.int.0"}
!117 = metadata !{metadata !"void.lua_State *.1.const luaL_Reg *.1.int.0"}
!118 = metadata !{metadata !"int.lua_State *.1.lua_Unsigned.0.lua_Integer.0"}
!119 = metadata !{metadata !"lua_Integer.lua_State *.1.int.0"}
!120 = metadata !{metadata !"void.lua_State *.1.lua_Integer.0"}
!121 = metadata !{metadata !"int.lua_State *.1.lua_Integer.0"}
!122 = metadata !{metadata !"int.lua_State *.1.int.0.int *.1"}
!123 = metadata !{metadata !"lua_Integer.lua_State *.1.int.0.lua_Integer.0"}
!124 = metadata !{metadata !"int.lua_State *.1.int.0.const char *.1"}
!125 = metadata !{metadata !"int.lua_State *.1.const char *.1"}
!126 = metadata !{metadata !"lua_Unsigned.lua_State *.1"}
!127 = metadata !{metadata !"void.lua_State *.1.int.0"}
!128 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lualib.h"}
!129 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lauxlib.h"}
!130 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lua.h"}
!131 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lbitlib.c"}
!132 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!133 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!134 = metadata !{i32 1, metadata !"wchar_size", i32 4}
!135 = metadata !{i32 1, metadata !"min_enum_size", i32 4}
!136 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
!137 = metadata !{i32 786689, metadata !4, metadata !"L", metadata !6, i32 16777436, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 220]
!138 = metadata !{i32 220, i32 42, metadata !4, null}
!139 = metadata !{i32 221, i32 3, metadata !4, null}
!140 = metadata !{i32 222, i32 3, metadata !4, null}
!141 = metadata !{i32 786689, metadata !42, metadata !"L", metadata !6, i32 16777342, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 126]
!142 = metadata !{i32 126, i32 34, metadata !42, null}
!143 = metadata !{i32 786688, metadata !42, metadata !"r", metadata !6, i32 127, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 127]
!144 = metadata !{i32 127, i32 16, metadata !42, null}
!145 = metadata !{i32 127, i32 20, metadata !42, null}
!146 = metadata !{i32 786688, metadata !42, metadata !"i", metadata !6, i32 128, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 128]
!147 = metadata !{i32 128, i32 15, metadata !42, null}
!148 = metadata !{i32 128, i32 19, metadata !42, null}
!149 = metadata !{i32 129, i32 7, metadata !150, null}
!150 = metadata !{i32 786443, metadata !5, metadata !42, i32 129, i32 7, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lbitlib.c]
!151 = metadata !{i32 129, i32 7, metadata !152, null}
!152 = metadata !{i32 786443, metadata !5, metadata !150, i32 129, i32 7, i32 1, i32 13} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lbitlib.c]
!153 = metadata !{i32 130, i32 12, metadata !150, null}
!154 = metadata !{i32 132, i32 9, metadata !155, null}
!155 = metadata !{i32 786443, metadata !5, metadata !156, i32 132, i32 9, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lbitlib.c]
!156 = metadata !{i32 786443, metadata !5, metadata !150, i32 131, i32 8, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lbitlib.c]
!157 = metadata !{i32 132, i32 25, metadata !158, null}
!158 = metadata !{i32 786443, metadata !5, metadata !155, i32 132, i32 25, i32 1, i32 14} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lbitlib.c]
!159 = metadata !{i32 134, i32 7, metadata !155, null}
!160 = metadata !{i32 135, i32 5, metadata !156, null}
!161 = metadata !{i32 136, i32 5, metadata !156, null}
!162 = metadata !{i32 138, i32 1, metadata !42, null}
!163 = metadata !{i32 786689, metadata !41, metadata !"L", metadata !6, i32 16777274, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 58]
!164 = metadata !{i32 58, i32 30, metadata !41, null} ; [ DW_TAG_imported_module ]
!165 = metadata !{i32 786688, metadata !41, metadata !"r", metadata !6, i32 59, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 59]
!166 = metadata !{i32 59, i32 16, metadata !41, null}
!167 = metadata !{i32 59, i32 20, metadata !41, null}
!168 = metadata !{i32 60, i32 3, metadata !41, null}
!169 = metadata !{i32 61, i32 3, metadata !41, null}
!170 = metadata !{i32 786689, metadata !40, metadata !"L", metadata !6, i32 16777308, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 92]
!171 = metadata !{i32 92, i32 30, metadata !40, null}
!172 = metadata !{i32 786688, metadata !40, metadata !"r", metadata !6, i32 93, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 93]
!173 = metadata !{i32 93, i32 16, metadata !40, null}
!174 = metadata !{i32 93, i32 21, metadata !40, null}
!175 = metadata !{i32 94, i32 3, metadata !40, null}
!176 = metadata !{i32 95, i32 3, metadata !40, null}
!177 = metadata !{i32 786689, metadata !39, metadata !"L", metadata !6, i32 16777288, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 72]
!178 = metadata !{i32 72, i32 29, metadata !39, null}
!179 = metadata !{i32 786688, metadata !39, metadata !"i", metadata !6, i32 73, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 73]
!180 = metadata !{i32 73, i32 7, metadata !39, null}
!181 = metadata !{i32 786688, metadata !39, metadata !"n", metadata !6, i32 73, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 73]
!182 = metadata !{i32 73, i32 10, metadata !39, null}
!183 = metadata !{i32 73, i32 14, metadata !39, null}
!184 = metadata !{i32 786688, metadata !39, metadata !"r", metadata !6, i32 74, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 74]
!185 = metadata !{i32 74, i32 16, metadata !39, null}
!186 = metadata !{i32 74, i32 3, metadata !39, null}
!187 = metadata !{i32 75, i32 8, metadata !188, null}
!188 = metadata !{i32 786443, metadata !5, metadata !39, i32 75, i32 3, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lbitlib.c]
!189 = metadata !{i32 75, i32 8, metadata !190, null}
!190 = metadata !{i32 786443, metadata !5, metadata !191, i32 75, i32 8, i32 2, i32 16} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lbitlib.c]
!191 = metadata !{i32 786443, metadata !5, metadata !188, i32 75, i32 8, i32 1, i32 15} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lbitlib.c]
!192 = metadata !{i32 76, i32 10, metadata !188, null}
!193 = metadata !{i32 75, i32 23, metadata !188, null}
!194 = metadata !{i32 77, i32 3, metadata !39, null}
!195 = metadata !{i32 78, i32 3, metadata !39, null}
!196 = metadata !{i32 786689, metadata !38, metadata !"L", metadata !6, i32 16777298, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 82]
!197 = metadata !{i32 82, i32 30, metadata !38, null}
!198 = metadata !{i32 786688, metadata !38, metadata !"i", metadata !6, i32 83, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 83]
!199 = metadata !{i32 83, i32 7, metadata !38, null}
!200 = metadata !{i32 786688, metadata !38, metadata !"n", metadata !6, i32 83, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 83]
!201 = metadata !{i32 83, i32 10, metadata !38, null}
!202 = metadata !{i32 83, i32 14, metadata !38, null}
!203 = metadata !{i32 786688, metadata !38, metadata !"r", metadata !6, i32 84, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 84]
!204 = metadata !{i32 84, i32 16, metadata !38, null}
!205 = metadata !{i32 84, i32 3, metadata !38, null}
!206 = metadata !{i32 85, i32 8, metadata !207, null}
!207 = metadata !{i32 786443, metadata !5, metadata !38, i32 85, i32 3, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lbitlib.c]
!208 = metadata !{i32 85, i32 8, metadata !209, null}
!209 = metadata !{i32 786443, metadata !5, metadata !210, i32 85, i32 8, i32 2, i32 18} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lbitlib.c]
!210 = metadata !{i32 786443, metadata !5, metadata !207, i32 85, i32 8, i32 1, i32 17} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lbitlib.c]
!211 = metadata !{i32 86, i32 10, metadata !207, null}
!212 = metadata !{i32 85, i32 23, metadata !207, null}
!213 = metadata !{i32 87, i32 3, metadata !38, null}
!214 = metadata !{i32 88, i32 3, metadata !38, null}
!215 = metadata !{i32 786689, metadata !34, metadata !"L", metadata !6, i32 16777281, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 65]
!216 = metadata !{i32 65, i32 31, metadata !34, null}
!217 = metadata !{i32 786688, metadata !34, metadata !"r", metadata !6, i32 66, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 66]
!218 = metadata !{i32 66, i32 16, metadata !34, null}
!219 = metadata !{i32 66, i32 20, metadata !34, null}
!220 = metadata !{i32 67, i32 3, metadata !34, null}
!221 = metadata !{i32 68, i32 3, metadata !34, null}
!222 = metadata !{i32 786689, metadata !33, metadata !"L", metadata !6, i32 16777396, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 180]
!223 = metadata !{i32 180, i32 34, metadata !33, null}
!224 = metadata !{i32 786688, metadata !33, metadata !"w", metadata !6, i32 181, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [w] [line 181]
!225 = metadata !{i32 181, i32 7, metadata !33, null}
!226 = metadata !{i32 786688, metadata !33, metadata !"r", metadata !6, i32 182, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 182]
!227 = metadata !{i32 182, i32 16, metadata !33, null}
!228 = metadata !{i32 182, i32 20, metadata !33, null}
!229 = metadata !{i32 786688, metadata !33, metadata !"f", metadata !6, i32 183, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [f] [line 183]
!230 = metadata !{i32 183, i32 7, metadata !33, null}
!231 = metadata !{i32 183, i32 11, metadata !33, null}
!232 = metadata !{i32 184, i32 3, metadata !33, null}
!233 = metadata !{i32 185, i32 3, metadata !33, null}
!234 = metadata !{i32 186, i32 3, metadata !33, null}
!235 = metadata !{i32 786689, metadata !32, metadata !"L", metadata !6, i32 16777368, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 152]
!236 = metadata !{i32 152, i32 31, metadata !32, null}
!237 = metadata !{i32 153, i32 10, metadata !32, null}
!238 = metadata !{i32 153, i32 19, metadata !32, null}
!239 = metadata !{i32 786689, metadata !31, metadata !"L", metadata !6, i32 16777332, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 116]
!240 = metadata !{i32 116, i32 33, metadata !31, null}
!241 = metadata !{i32 117, i32 10, metadata !31, null}
!242 = metadata !{i32 117, i32 21, metadata !31, null}
!243 = metadata !{i32 117, i32 42, metadata !31, null}
!244 = metadata !{i32 786689, metadata !26, metadata !"L", metadata !6, i32 16777406, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 190]
!245 = metadata !{i32 190, i32 34, metadata !26, null}
!246 = metadata !{i32 786688, metadata !26, metadata !"w", metadata !6, i32 191, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [w] [line 191]
!247 = metadata !{i32 191, i32 7, metadata !26, null}
!248 = metadata !{i32 786688, metadata !26, metadata !"r", metadata !6, i32 192, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 192]
!249 = metadata !{i32 192, i32 16, metadata !26, null}
!250 = metadata !{i32 192, i32 20, metadata !26, null}
!251 = metadata !{i32 786688, metadata !26, metadata !"v", metadata !6, i32 193, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [v] [line 193]
!252 = metadata !{i32 193, i32 16, metadata !26, null}
!253 = metadata !{i32 193, i32 20, metadata !26, null}
!254 = metadata !{i32 786688, metadata !26, metadata !"f", metadata !6, i32 194, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [f] [line 194]
!255 = metadata !{i32 194, i32 7, metadata !26, null}
!256 = metadata !{i32 194, i32 11, metadata !26, null}
!257 = metadata !{i32 786688, metadata !26, metadata !"m", metadata !6, i32 195, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [m] [line 195]
!258 = metadata !{i32 195, i32 16, metadata !26, null}
!259 = metadata !{i32 195, i32 3, metadata !26, null}
!260 = metadata !{i32 196, i32 3, metadata !26, null}
!261 = metadata !{i32 197, i32 3, metadata !26, null}
!262 = metadata !{i32 198, i32 3, metadata !26, null}
!263 = metadata !{i32 786689, metadata !22, metadata !"L", metadata !6, i32 16777373, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 157]
!264 = metadata !{i32 157, i32 31, metadata !22, null}
!265 = metadata !{i32 158, i32 10, metadata !22, null}
!266 = metadata !{i32 158, i32 20, metadata !22, null}
!267 = metadata !{i32 786689, metadata !14, metadata !"L", metadata !6, i32 16777337, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 121]
!268 = metadata !{i32 121, i32 33, metadata !14, null}
!269 = metadata !{i32 122, i32 10, metadata !14, null}
!270 = metadata !{i32 122, i32 21, metadata !14, null}
!271 = metadata !{i32 122, i32 43, metadata !14, null}
!272 = metadata !{i32 786689, metadata !15, metadata !"L", metadata !6, i32 16777315, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 99]
!273 = metadata !{i32 99, i32 32, metadata !15, null}
!274 = metadata !{i32 786689, metadata !15, metadata !"r", metadata !6, i32 33554531, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [r] [line 99]
!275 = metadata !{i32 99, i32 48, metadata !15, null}
!276 = metadata !{i32 786689, metadata !15, metadata !"i", metadata !6, i32 50331747, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [i] [line 99]
!277 = metadata !{i32 99, i32 63, metadata !15, null}
!278 = metadata !{i32 100, i32 7, metadata !279, null}
!279 = metadata !{i32 786443, metadata !5, metadata !15, i32 100, i32 7, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lbitlib.c]
!280 = metadata !{i32 101, i32 5, metadata !281, null}
!281 = metadata !{i32 786443, metadata !5, metadata !279, i32 100, i32 14, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lbitlib.c]
!282 = metadata !{i32 102, i32 5, metadata !281, null}
!283 = metadata !{i32 103, i32 9, metadata !284, null}
!284 = metadata !{i32 786443, metadata !5, metadata !281, i32 103, i32 9, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lbitlib.c]
!285 = metadata !{i32 103, i32 25, metadata !286, null}
!286 = metadata !{i32 786443, metadata !5, metadata !284, i32 103, i32 25, i32 1, i32 19} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lbitlib.c]
!287 = metadata !{i32 104, i32 10, metadata !284, null}
!288 = metadata !{i32 105, i32 3, metadata !281, null}
!289 = metadata !{i32 107, i32 9, metadata !290, null}
!290 = metadata !{i32 786443, metadata !5, metadata !291, i32 107, i32 9, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lbitlib.c]
!291 = metadata !{i32 786443, metadata !5, metadata !279, i32 106, i32 8, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lbitlib.c]
!292 = metadata !{i32 107, i32 25, metadata !293, null}
!293 = metadata !{i32 786443, metadata !5, metadata !290, i32 107, i32 25, i32 1, i32 20} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lbitlib.c]
!294 = metadata !{i32 108, i32 10, metadata !290, null}
!295 = metadata !{i32 109, i32 5, metadata !291, null}
!296 = metadata !{i32 111, i32 3, metadata !15, null}
!297 = metadata !{i32 112, i32 3, metadata !15, null}
!298 = metadata !{i32 786689, metadata !23, metadata !"L", metadata !6, i32 16777357, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 141]
!299 = metadata !{i32 141, i32 30, metadata !23, null}
!300 = metadata !{i32 786689, metadata !23, metadata !"d", metadata !6, i32 33554573, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [d] [line 141]
!301 = metadata !{i32 141, i32 45, metadata !23, null}
!302 = metadata !{i32 786688, metadata !23, metadata !"r", metadata !6, i32 142, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 142]
!303 = metadata !{i32 142, i32 16, metadata !23, null}
!304 = metadata !{i32 142, i32 20, metadata !23, null}
!305 = metadata !{i32 786688, metadata !23, metadata !"i", metadata !6, i32 143, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 143]
!306 = metadata !{i32 143, i32 7, metadata !23, null}
!307 = metadata !{i32 143, i32 3, metadata !23, null}
!308 = metadata !{i32 144, i32 3, metadata !23, null}
!309 = metadata !{i32 145, i32 7, metadata !310, null}
!310 = metadata !{i32 786443, metadata !5, metadata !23, i32 145, i32 7, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lbitlib.c]
!311 = metadata !{i32 146, i32 5, metadata !310, null}
!312 = metadata !{i32 147, i32 3, metadata !23, null}
!313 = metadata !{i32 148, i32 3, metadata !23, null}
!314 = metadata !{i32 786689, metadata !27, metadata !"L", metadata !6, i32 16777384, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 168]
!315 = metadata !{i32 168, i32 34, metadata !27, null}
!316 = metadata !{i32 786689, metadata !27, metadata !"farg", metadata !6, i32 33554600, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [farg] [line 168]
!317 = metadata !{i32 168, i32 41, metadata !27, null}
!318 = metadata !{i32 786689, metadata !27, metadata !"width", metadata !6, i32 50331816, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [width] [line 168]
!319 = metadata !{i32 168, i32 52, metadata !27, null}
!320 = metadata !{i32 786688, metadata !27, metadata !"f", metadata !6, i32 169, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [f] [line 169]
!321 = metadata !{i32 169, i32 15, metadata !27, null}
!322 = metadata !{i32 169, i32 19, metadata !27, null}
!323 = metadata !{i32 786688, metadata !27, metadata !"w", metadata !6, i32 170, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [w] [line 170]
!324 = metadata !{i32 170, i32 15, metadata !27, null}
!325 = metadata !{i32 170, i32 19, metadata !27, null}
!326 = metadata !{i32 171, i32 3, metadata !27, null}
!327 = metadata !{i32 171, i32 3, metadata !328, null}
!328 = metadata !{i32 786443, metadata !5, metadata !27, i32 171, i32 3, i32 2, i32 22} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lbitlib.c]
!329 = metadata !{i32 171, i32 3, metadata !330, null}
!330 = metadata !{i32 786443, metadata !5, metadata !331, i32 171, i32 3, i32 3, i32 23} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lbitlib.c]
!331 = metadata !{i32 786443, metadata !5, metadata !27, i32 171, i32 3, i32 1, i32 21} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lbitlib.c]
!332 = metadata !{i32 172, i32 3, metadata !27, null}
!333 = metadata !{i32 172, i32 3, metadata !334, null}
!334 = metadata !{i32 786443, metadata !5, metadata !27, i32 172, i32 3, i32 2, i32 25} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lbitlib.c]
!335 = metadata !{i32 172, i32 3, metadata !336, null}
!336 = metadata !{i32 786443, metadata !5, metadata !337, i32 172, i32 3, i32 3, i32 26} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lbitlib.c]
!337 = metadata !{i32 786443, metadata !5, metadata !27, i32 172, i32 3, i32 1, i32 24} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lbitlib.c]
!338 = metadata !{i32 173, i32 7, metadata !339, null}
!339 = metadata !{i32 786443, metadata !5, metadata !27, i32 173, i32 7, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lbitlib.c]
!340 = metadata !{i32 174, i32 5, metadata !339, null}
!341 = metadata !{i32 175, i32 3, metadata !27, null}
!342 = metadata !{i32 176, i32 3, metadata !27, null}
!343 = metadata !{i32 786689, metadata !35, metadata !"L", metadata !6, i32 16777265, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 49]
!344 = metadata !{i32 49, i32 40, metadata !35, null}
!345 = metadata !{i32 786688, metadata !35, metadata !"i", metadata !6, i32 50, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 50]
!346 = metadata !{i32 50, i32 7, metadata !35, null}
!347 = metadata !{i32 786688, metadata !35, metadata !"n", metadata !6, i32 50, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 50]
!348 = metadata !{i32 50, i32 10, metadata !35, null}
!349 = metadata !{i32 50, i32 14, metadata !35, null}
!350 = metadata !{i32 786688, metadata !35, metadata !"r", metadata !6, i32 51, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 51]
!351 = metadata !{i32 51, i32 16, metadata !35, null}
!352 = metadata !{i32 51, i32 3, metadata !35, null}
!353 = metadata !{i32 52, i32 8, metadata !354, null}
!354 = metadata !{i32 786443, metadata !5, metadata !35, i32 52, i32 3, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lbitlib.c]
!355 = metadata !{i32 52, i32 8, metadata !356, null}
!356 = metadata !{i32 786443, metadata !5, metadata !357, i32 52, i32 8, i32 2, i32 28} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lbitlib.c]
!357 = metadata !{i32 786443, metadata !5, metadata !354, i32 52, i32 8, i32 1, i32 27} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lbitlib.c]
!358 = metadata !{i32 53, i32 10, metadata !354, null}
!359 = metadata !{i32 52, i32 23, metadata !354, null}
!360 = metadata !{i32 54, i32 3, metadata !35, null}
