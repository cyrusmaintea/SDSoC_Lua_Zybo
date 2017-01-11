; ModuleID = 'C:/Users/DevolutionX/workspace/lua/src/lutf8lib.c'
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-n32-S64"
target triple = "armv7--linux-gnueabihf"

%struct.luaL_Reg = type { i8*, i32 (%struct.lua_State*)* }
%struct.lua_State = type opaque
%struct.luaL_Buffer = type { i8*, i32, i32, %struct.lua_State*, [8192 x i8] }

@funcs = internal constant [7 x %struct.luaL_Reg] [%struct.luaL_Reg { i8* getelementptr inbounds ([7 x i8]* @.str2, i32 0, i32 0), i32 (%struct.lua_State*)* @byteoffset }, %struct.luaL_Reg { i8* getelementptr inbounds ([10 x i8]* @.str3, i32 0, i32 0), i32 (%struct.lua_State*)* @codepoint }, %struct.luaL_Reg { i8* getelementptr inbounds ([5 x i8]* @.str4, i32 0, i32 0), i32 (%struct.lua_State*)* @utfchar }, %struct.luaL_Reg { i8* getelementptr inbounds ([4 x i8]* @.str5, i32 0, i32 0), i32 (%struct.lua_State*)* @utflen }, %struct.luaL_Reg { i8* getelementptr inbounds ([6 x i8]* @.str6, i32 0, i32 0), i32 (%struct.lua_State*)* @iter_codes }, %struct.luaL_Reg { i8* getelementptr inbounds ([12 x i8]* @.str1, i32 0, i32 0), i32 (%struct.lua_State*)* null }, %struct.luaL_Reg zeroinitializer], align 4
@.str = private unnamed_addr constant [15 x i8] c"[\00-\7F\C2-\F4][\80-\BF]*\00", align 1
@.str1 = private unnamed_addr constant [12 x i8] c"charpattern\00", align 1
@.str2 = private unnamed_addr constant [7 x i8] c"offset\00", align 1
@.str3 = private unnamed_addr constant [10 x i8] c"codepoint\00", align 1
@.str4 = private unnamed_addr constant [5 x i8] c"char\00", align 1
@.str5 = private unnamed_addr constant [4 x i8] c"len\00", align 1
@.str6 = private unnamed_addr constant [6 x i8] c"codes\00", align 1
@.str7 = private unnamed_addr constant [19 x i8] c"invalid UTF-8 code\00", align 1
@utf8_decode.limits = internal constant [4 x i32] [i32 255, i32 127, i32 2047, i32 65535], align 4
@.str8 = private unnamed_addr constant [31 x i8] c"initial position out of string\00", align 1
@.str9 = private unnamed_addr constant [29 x i8] c"final position out of string\00", align 1
@.str10 = private unnamed_addr constant [19 x i8] c"value out of range\00", align 1
@.str11 = private unnamed_addr constant [3 x i8] c"%U\00", align 1
@.str12 = private unnamed_addr constant [13 x i8] c"out of range\00", align 1
@.str13 = private unnamed_addr constant [22 x i8] c"string slice too long\00", align 1
@.str14 = private unnamed_addr constant [22 x i8] c"position out of range\00", align 1
@.str15 = private unnamed_addr constant [40 x i8] c"initial position is a continuation byte\00", align 1

; Function Attrs: nounwind
define i32 @luaopen_utf8(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !149), !dbg !150
  %2 = load %struct.lua_State** %1, align 4, !dbg !151
  call void @luaL_checkversion_(%struct.lua_State* %2, double 5.030000e+02, i32 136), !dbg !151
  %3 = load %struct.lua_State** %1, align 4, !dbg !151
  call void @lua_createtable(%struct.lua_State* %3, i32 0, i32 6), !dbg !151
  %4 = load %struct.lua_State** %1, align 4, !dbg !151
  call void @luaL_setfuncs(%struct.lua_State* %4, %struct.luaL_Reg* getelementptr inbounds ([7 x %struct.luaL_Reg]* @funcs, i32 0, i32 0), i32 0), !dbg !151
  %5 = load %struct.lua_State** %1, align 4, !dbg !152
  %6 = call i8* @lua_pushlstring(%struct.lua_State* %5, i8* getelementptr inbounds ([15 x i8]* @.str, i32 0, i32 0), i32 14), !dbg !152
  %7 = load %struct.lua_State** %1, align 4, !dbg !153
  call void @lua_setfield(%struct.lua_State* %7, i32 -2, i8* getelementptr inbounds ([12 x i8]* @.str1, i32 0, i32 0)), !dbg !153
  ret i32 1, !dbg !154
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

declare void @luaL_checkversion_(%struct.lua_State*, double, i32) #2

declare void @lua_createtable(%struct.lua_State*, i32, i32) #2

declare void @luaL_setfuncs(%struct.lua_State*, %struct.luaL_Reg*, i32) #2

declare i8* @lua_pushlstring(%struct.lua_State*, i8*, i32) #2

declare void @lua_setfield(%struct.lua_State*, i32, i8*) #2

; Function Attrs: nounwind
define internal i32 @byteoffset(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %len = alloca i32, align 4
  %s = alloca i8*, align 4
  %n = alloca i64, align 8
  %posi = alloca i64, align 8
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !155), !dbg !156
  call void @llvm.dbg.declare(metadata !{i32* %len}, metadata !157), !dbg !158
  call void @llvm.dbg.declare(metadata !{i8** %s}, metadata !159), !dbg !160
  %2 = load %struct.lua_State** %1, align 4, !dbg !161
  %3 = call i8* @luaL_checklstring(%struct.lua_State* %2, i32 1, i32* %len), !dbg !161
  store i8* %3, i8** %s, align 4, !dbg !161
  call void @llvm.dbg.declare(metadata !{i64* %n}, metadata !162), !dbg !163
  %4 = load %struct.lua_State** %1, align 4, !dbg !164
  %5 = call i64 @luaL_checkinteger(%struct.lua_State* %4, i32 2), !dbg !164
  store i64 %5, i64* %n, align 8, !dbg !164
  call void @llvm.dbg.declare(metadata !{i64* %posi}, metadata !165), !dbg !166
  %6 = load i64* %n, align 8, !dbg !167
  %7 = icmp sge i64 %6, 0, !dbg !167
  br i1 %7, label %8, label %9, !dbg !167

; <label>:8                                       ; preds = %0
  br label %12, !dbg !168

; <label>:9                                       ; preds = %0
  %10 = load i32* %len, align 4, !dbg !170
  %11 = add i32 %10, 1, !dbg !170
  br label %12, !dbg !170

; <label>:12                                      ; preds = %9, %8
  %13 = phi i32 [ 1, %8 ], [ %11, %9 ], !dbg !167
  %14 = zext i32 %13 to i64, !dbg !172
  store i64 %14, i64* %posi, align 8, !dbg !172
  %15 = load %struct.lua_State** %1, align 4, !dbg !175
  %16 = load i64* %posi, align 8, !dbg !175
  %17 = call i64 @luaL_optinteger(%struct.lua_State* %15, i32 3, i64 %16), !dbg !175
  %18 = load i32* %len, align 4, !dbg !176
  %19 = call i64 @u_posrelat(i64 %17, i32 %18), !dbg !176
  store i64 %19, i64* %posi, align 8, !dbg !176
  %20 = load i64* %posi, align 8, !dbg !177
  %21 = icmp sle i64 1, %20, !dbg !177
  br i1 %21, label %22, label %28, !dbg !177

; <label>:22                                      ; preds = %12
  %23 = load i64* %posi, align 8, !dbg !178
  %24 = add nsw i64 %23, -1, !dbg !178
  store i64 %24, i64* %posi, align 8, !dbg !178
  %25 = load i32* %len, align 4, !dbg !178
  %26 = zext i32 %25 to i64, !dbg !178
  %27 = icmp sle i64 %24, %26, !dbg !178
  br i1 %27, label %32, label %28, !dbg !178

; <label>:28                                      ; preds = %22, %12
  %29 = load %struct.lua_State** %1, align 4, !dbg !180
  %30 = call i32 @luaL_argerror(%struct.lua_State* %29, i32 3, i8* getelementptr inbounds ([22 x i8]* @.str14, i32 0, i32 0)), !dbg !180
  %31 = icmp ne i32 %30, 0, !dbg !180
  br label %32, !dbg !180

; <label>:32                                      ; preds = %28, %22
  %33 = phi i1 [ true, %22 ], [ %31, %28 ]
  %34 = zext i1 %33 to i32, !dbg !183
  %35 = load i64* %n, align 8, !dbg !186
  %36 = icmp eq i64 %35, 0, !dbg !186
  br i1 %36, label %37, label %56, !dbg !186

; <label>:37                                      ; preds = %32
  br label %38, !dbg !188

; <label>:38                                      ; preds = %52, %37
  %39 = load i64* %posi, align 8, !dbg !190
  %40 = icmp sgt i64 %39, 0, !dbg !190
  br i1 %40, label %41, label %50, !dbg !190

; <label>:41                                      ; preds = %38
  %42 = load i8** %s, align 4, !dbg !193
  %43 = load i64* %posi, align 8, !dbg !193
  %44 = trunc i64 %43 to i32, !dbg !193
  %45 = getelementptr inbounds i8* %42, i32 %44, !dbg !193
  %46 = load i8* %45, align 1, !dbg !193
  %47 = zext i8 %46 to i32, !dbg !193
  %48 = and i32 %47, 192, !dbg !193
  %49 = icmp eq i32 %48, 128, !dbg !193
  br label %50

; <label>:50                                      ; preds = %41, %38
  %51 = phi i1 [ false, %38 ], [ %49, %41 ]
  br i1 %51, label %52, label %55, !dbg !195

; <label>:52                                      ; preds = %50
  %53 = load i64* %posi, align 8, !dbg !197
  %54 = add nsw i64 %53, -1, !dbg !197
  store i64 %54, i64* %posi, align 8, !dbg !197
  br label %38, !dbg !197

; <label>:55                                      ; preds = %50
  br label %133, !dbg !199

; <label>:56                                      ; preds = %32
  %57 = load i8** %s, align 4, !dbg !200
  %58 = load i64* %posi, align 8, !dbg !200
  %59 = trunc i64 %58 to i32, !dbg !200
  %60 = getelementptr inbounds i8* %57, i32 %59, !dbg !200
  %61 = load i8* %60, align 1, !dbg !200
  %62 = zext i8 %61 to i32, !dbg !200
  %63 = and i32 %62, 192, !dbg !200
  %64 = icmp eq i32 %63, 128, !dbg !200
  br i1 %64, label %65, label %68, !dbg !200

; <label>:65                                      ; preds = %56
  %66 = load %struct.lua_State** %1, align 4, !dbg !203
  %67 = call i32 (%struct.lua_State*, i8*, ...)* @luaL_error(%struct.lua_State* %66, i8* getelementptr inbounds ([40 x i8]* @.str15, i32 0, i32 0)), !dbg !203
  br label %68, !dbg !203

; <label>:68                                      ; preds = %65, %56
  %69 = load i64* %n, align 8, !dbg !204
  %70 = icmp slt i64 %69, 0, !dbg !204
  br i1 %70, label %71, label %102, !dbg !204

; <label>:71                                      ; preds = %68
  br label %72, !dbg !206

; <label>:72                                      ; preds = %98, %71
  %73 = load i64* %n, align 8, !dbg !208
  %74 = icmp slt i64 %73, 0, !dbg !208
  br i1 %74, label %75, label %78, !dbg !208

; <label>:75                                      ; preds = %72
  %76 = load i64* %posi, align 8, !dbg !210
  %77 = icmp sgt i64 %76, 0, !dbg !210
  br label %78

; <label>:78                                      ; preds = %75, %72
  %79 = phi i1 [ false, %72 ], [ %77, %75 ]
  br i1 %79, label %80, label %101, !dbg !212

; <label>:80                                      ; preds = %78
  br label %81, !dbg !214

; <label>:81                                      ; preds = %96, %80
  %82 = load i64* %posi, align 8, !dbg !216
  %83 = add nsw i64 %82, -1, !dbg !216
  store i64 %83, i64* %posi, align 8, !dbg !216
  br label %84, !dbg !218

; <label>:84                                      ; preds = %81
  %85 = load i64* %posi, align 8, !dbg !219
  %86 = icmp sgt i64 %85, 0, !dbg !219
  br i1 %86, label %87, label %96, !dbg !219

; <label>:87                                      ; preds = %84
  %88 = load i8** %s, align 4, !dbg !221
  %89 = load i64* %posi, align 8, !dbg !221
  %90 = trunc i64 %89 to i32, !dbg !221
  %91 = getelementptr inbounds i8* %88, i32 %90, !dbg !221
  %92 = load i8* %91, align 1, !dbg !221
  %93 = zext i8 %92 to i32, !dbg !221
  %94 = and i32 %93, 192, !dbg !221
  %95 = icmp eq i32 %94, 128, !dbg !221
  br label %96

; <label>:96                                      ; preds = %87, %84
  %97 = phi i1 [ false, %84 ], [ %95, %87 ]
  br i1 %97, label %81, label %98, !dbg !223

; <label>:98                                      ; preds = %96
  %99 = load i64* %n, align 8, !dbg !225
  %100 = add nsw i64 %99, 1, !dbg !225
  store i64 %100, i64* %n, align 8, !dbg !225
  br label %72, !dbg !226

; <label>:101                                     ; preds = %78
  br label %132, !dbg !227

; <label>:102                                     ; preds = %68
  %103 = load i64* %n, align 8, !dbg !228
  %104 = add nsw i64 %103, -1, !dbg !228
  store i64 %104, i64* %n, align 8, !dbg !228
  br label %105, !dbg !230

; <label>:105                                     ; preds = %128, %102
  %106 = load i64* %n, align 8, !dbg !231
  %107 = icmp sgt i64 %106, 0, !dbg !231
  br i1 %107, label %108, label %113, !dbg !231

; <label>:108                                     ; preds = %105
  %109 = load i64* %posi, align 8, !dbg !233
  %110 = load i32* %len, align 4, !dbg !233
  %111 = zext i32 %110 to i64, !dbg !233
  %112 = icmp slt i64 %109, %111, !dbg !233
  br label %113

; <label>:113                                     ; preds = %108, %105
  %114 = phi i1 [ false, %105 ], [ %112, %108 ]
  br i1 %114, label %115, label %131, !dbg !235

; <label>:115                                     ; preds = %113
  br label %116, !dbg !237

; <label>:116                                     ; preds = %119, %115
  %117 = load i64* %posi, align 8, !dbg !239
  %118 = add nsw i64 %117, 1, !dbg !239
  store i64 %118, i64* %posi, align 8, !dbg !239
  br label %119, !dbg !241

; <label>:119                                     ; preds = %116
  %120 = load i8** %s, align 4, !dbg !242
  %121 = load i64* %posi, align 8, !dbg !242
  %122 = trunc i64 %121 to i32, !dbg !242
  %123 = getelementptr inbounds i8* %120, i32 %122, !dbg !242
  %124 = load i8* %123, align 1, !dbg !242
  %125 = zext i8 %124 to i32, !dbg !242
  %126 = and i32 %125, 192, !dbg !242
  %127 = icmp eq i32 %126, 128, !dbg !242
  br i1 %127, label %116, label %128, !dbg !242

; <label>:128                                     ; preds = %119
  %129 = load i64* %n, align 8, !dbg !244
  %130 = add nsw i64 %129, -1, !dbg !244
  store i64 %130, i64* %n, align 8, !dbg !244
  br label %105, !dbg !245

; <label>:131                                     ; preds = %113
  br label %132

; <label>:132                                     ; preds = %131, %101
  br label %133

; <label>:133                                     ; preds = %132, %55
  %134 = load i64* %n, align 8, !dbg !246
  %135 = icmp eq i64 %134, 0, !dbg !246
  br i1 %135, label %136, label %140, !dbg !246

; <label>:136                                     ; preds = %133
  %137 = load %struct.lua_State** %1, align 4, !dbg !248
  %138 = load i64* %posi, align 8, !dbg !248
  %139 = add nsw i64 %138, 1, !dbg !248
  call void @lua_pushinteger(%struct.lua_State* %137, i64 %139), !dbg !248
  br label %142, !dbg !248

; <label>:140                                     ; preds = %133
  %141 = load %struct.lua_State** %1, align 4, !dbg !249
  call void @lua_pushnil(%struct.lua_State* %141), !dbg !249
  br label %142

; <label>:142                                     ; preds = %140, %136
  ret i32 1, !dbg !250
}

; Function Attrs: nounwind
define internal i32 @codepoint(%struct.lua_State* %L) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.lua_State*, align 4
  %len = alloca i32, align 4
  %s = alloca i8*, align 4
  %posi = alloca i64, align 8
  %pose = alloca i64, align 8
  %n = alloca i32, align 4
  %se = alloca i8*, align 4
  %code = alloca i32, align 4
  store %struct.lua_State* %L, %struct.lua_State** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %2}, metadata !251), !dbg !252
  call void @llvm.dbg.declare(metadata !{i32* %len}, metadata !253), !dbg !254
  call void @llvm.dbg.declare(metadata !{i8** %s}, metadata !255), !dbg !256
  %3 = load %struct.lua_State** %2, align 4, !dbg !257
  %4 = call i8* @luaL_checklstring(%struct.lua_State* %3, i32 1, i32* %len), !dbg !257
  store i8* %4, i8** %s, align 4, !dbg !257
  call void @llvm.dbg.declare(metadata !{i64* %posi}, metadata !258), !dbg !259
  %5 = load %struct.lua_State** %2, align 4, !dbg !260
  %6 = call i64 @luaL_optinteger(%struct.lua_State* %5, i32 2, i64 1), !dbg !260
  %7 = load i32* %len, align 4, !dbg !261
  %8 = call i64 @u_posrelat(i64 %6, i32 %7), !dbg !261
  store i64 %8, i64* %posi, align 8, !dbg !261
  call void @llvm.dbg.declare(metadata !{i64* %pose}, metadata !262), !dbg !263
  %9 = load %struct.lua_State** %2, align 4, !dbg !264
  %10 = load i64* %posi, align 8, !dbg !264
  %11 = call i64 @luaL_optinteger(%struct.lua_State* %9, i32 3, i64 %10), !dbg !264
  %12 = load i32* %len, align 4, !dbg !265
  %13 = call i64 @u_posrelat(i64 %11, i32 %12), !dbg !265
  store i64 %13, i64* %pose, align 8, !dbg !265
  call void @llvm.dbg.declare(metadata !{i32* %n}, metadata !266), !dbg !267
  call void @llvm.dbg.declare(metadata !{i8** %se}, metadata !268), !dbg !269
  %14 = load i64* %posi, align 8, !dbg !270
  %15 = icmp sge i64 %14, 1, !dbg !270
  br i1 %15, label %20, label %16, !dbg !270

; <label>:16                                      ; preds = %0
  %17 = load %struct.lua_State** %2, align 4, !dbg !271
  %18 = call i32 @luaL_argerror(%struct.lua_State* %17, i32 2, i8* getelementptr inbounds ([13 x i8]* @.str12, i32 0, i32 0)), !dbg !271
  %19 = icmp ne i32 %18, 0, !dbg !271
  br label %20, !dbg !271

; <label>:20                                      ; preds = %16, %0
  %21 = phi i1 [ true, %0 ], [ %19, %16 ]
  %22 = zext i1 %21 to i32, !dbg !273
  %23 = load i64* %pose, align 8, !dbg !276
  %24 = load i32* %len, align 4, !dbg !276
  %25 = zext i32 %24 to i64, !dbg !276
  %26 = icmp sle i64 %23, %25, !dbg !276
  br i1 %26, label %31, label %27, !dbg !276

; <label>:27                                      ; preds = %20
  %28 = load %struct.lua_State** %2, align 4, !dbg !277
  %29 = call i32 @luaL_argerror(%struct.lua_State* %28, i32 3, i8* getelementptr inbounds ([13 x i8]* @.str12, i32 0, i32 0)), !dbg !277
  %30 = icmp ne i32 %29, 0, !dbg !277
  br label %31, !dbg !277

; <label>:31                                      ; preds = %27, %20
  %32 = phi i1 [ true, %20 ], [ %30, %27 ]
  %33 = zext i1 %32 to i32, !dbg !279
  %34 = load i64* %posi, align 8, !dbg !282
  %35 = load i64* %pose, align 8, !dbg !282
  %36 = icmp sgt i64 %34, %35, !dbg !282
  br i1 %36, label %37, label %38, !dbg !282

; <label>:37                                      ; preds = %31
  store i32 0, i32* %1, !dbg !284
  br label %83, !dbg !284

; <label>:38                                      ; preds = %31
  %39 = load i64* %pose, align 8, !dbg !286
  %40 = load i64* %posi, align 8, !dbg !286
  %41 = sub nsw i64 %39, %40, !dbg !286
  %42 = icmp sge i64 %41, 2147483647, !dbg !286
  br i1 %42, label %43, label %46, !dbg !286

; <label>:43                                      ; preds = %38
  %44 = load %struct.lua_State** %2, align 4, !dbg !288
  %45 = call i32 (%struct.lua_State*, i8*, ...)* @luaL_error(%struct.lua_State* %44, i8* getelementptr inbounds ([22 x i8]* @.str13, i32 0, i32 0)), !dbg !288
  store i32 %45, i32* %1, !dbg !288
  br label %83, !dbg !288

; <label>:46                                      ; preds = %38
  %47 = load i64* %pose, align 8, !dbg !289
  %48 = load i64* %posi, align 8, !dbg !289
  %49 = sub nsw i64 %47, %48, !dbg !289
  %50 = trunc i64 %49 to i32, !dbg !289
  %51 = add nsw i32 %50, 1, !dbg !289
  store i32 %51, i32* %n, align 4, !dbg !289
  %52 = load %struct.lua_State** %2, align 4, !dbg !290
  %53 = load i32* %n, align 4, !dbg !290
  call void @luaL_checkstack(%struct.lua_State* %52, i32 %53, i8* getelementptr inbounds ([22 x i8]* @.str13, i32 0, i32 0)), !dbg !290
  store i32 0, i32* %n, align 4, !dbg !291
  %54 = load i8** %s, align 4, !dbg !292
  %55 = load i64* %pose, align 8, !dbg !292
  %56 = trunc i64 %55 to i32, !dbg !292
  %57 = getelementptr inbounds i8* %54, i32 %56, !dbg !292
  store i8* %57, i8** %se, align 4, !dbg !292
  %58 = load i64* %posi, align 8, !dbg !293
  %59 = sub nsw i64 %58, 1, !dbg !293
  %60 = load i8** %s, align 4, !dbg !293
  %61 = trunc i64 %59 to i32, !dbg !293
  %62 = getelementptr inbounds i8* %60, i32 %61, !dbg !293
  store i8* %62, i8** %s, align 4, !dbg !293
  br label %63, !dbg !293

; <label>:63                                      ; preds = %75, %46
  %64 = load i8** %s, align 4, !dbg !295
  %65 = load i8** %se, align 4, !dbg !295
  %66 = icmp ult i8* %64, %65, !dbg !295
  br i1 %66, label %67, label %81, !dbg !295

; <label>:67                                      ; preds = %63
  call void @llvm.dbg.declare(metadata !{i32* %code}, metadata !297), !dbg !299
  %68 = load i8** %s, align 4, !dbg !300
  %69 = call i8* @utf8_decode(i8* %68, i32* %code), !dbg !300
  store i8* %69, i8** %s, align 4, !dbg !300
  %70 = load i8** %s, align 4, !dbg !301
  %71 = icmp eq i8* %70, null, !dbg !301
  br i1 %71, label %72, label %75, !dbg !301

; <label>:72                                      ; preds = %67
  %73 = load %struct.lua_State** %2, align 4, !dbg !303
  %74 = call i32 (%struct.lua_State*, i8*, ...)* @luaL_error(%struct.lua_State* %73, i8* getelementptr inbounds ([19 x i8]* @.str7, i32 0, i32 0)), !dbg !303
  store i32 %74, i32* %1, !dbg !303
  br label %83, !dbg !303

; <label>:75                                      ; preds = %67
  %76 = load %struct.lua_State** %2, align 4, !dbg !304
  %77 = load i32* %code, align 4, !dbg !304
  %78 = sext i32 %77 to i64, !dbg !304
  call void @lua_pushinteger(%struct.lua_State* %76, i64 %78), !dbg !304
  %79 = load i32* %n, align 4, !dbg !305
  %80 = add nsw i32 %79, 1, !dbg !305
  store i32 %80, i32* %n, align 4, !dbg !305
  br label %63, !dbg !306

; <label>:81                                      ; preds = %63
  %82 = load i32* %n, align 4, !dbg !307
  store i32 %82, i32* %1, !dbg !307
  br label %83, !dbg !307

; <label>:83                                      ; preds = %81, %72, %43, %37
  %84 = load i32* %1, !dbg !308
  ret i32 %84, !dbg !308
}

; Function Attrs: nounwind
define internal i32 @utfchar(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %b = alloca %struct.luaL_Buffer, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !309), !dbg !310
  call void @llvm.dbg.declare(metadata !{i32* %n}, metadata !311), !dbg !312
  %2 = load %struct.lua_State** %1, align 4, !dbg !313
  %3 = call i32 @lua_gettop(%struct.lua_State* %2), !dbg !313
  store i32 %3, i32* %n, align 4, !dbg !313
  %4 = load i32* %n, align 4, !dbg !314
  %5 = icmp eq i32 %4, 1, !dbg !314
  br i1 %5, label %6, label %8, !dbg !314

; <label>:6                                       ; preds = %0
  %7 = load %struct.lua_State** %1, align 4, !dbg !316
  call void @pushutfchar(%struct.lua_State* %7, i32 1), !dbg !316
  br label %21, !dbg !316

; <label>:8                                       ; preds = %0
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !317), !dbg !319
  call void @llvm.dbg.declare(metadata !{%struct.luaL_Buffer* %b}, metadata !320), !dbg !333
  %9 = load %struct.lua_State** %1, align 4, !dbg !334
  call void @luaL_buffinit(%struct.lua_State* %9, %struct.luaL_Buffer* %b), !dbg !334
  store i32 1, i32* %i, align 4, !dbg !335
  br label %10, !dbg !335

; <label>:10                                      ; preds = %17, %8
  %11 = load i32* %i, align 4, !dbg !337
  %12 = load i32* %n, align 4, !dbg !337
  %13 = icmp sle i32 %11, %12, !dbg !337
  br i1 %13, label %14, label %20, !dbg !337

; <label>:14                                      ; preds = %10
  %15 = load %struct.lua_State** %1, align 4, !dbg !340
  %16 = load i32* %i, align 4, !dbg !340
  call void @pushutfchar(%struct.lua_State* %15, i32 %16), !dbg !340
  call void @luaL_addvalue(%struct.luaL_Buffer* %b), !dbg !342
  br label %17, !dbg !343

; <label>:17                                      ; preds = %14
  %18 = load i32* %i, align 4, !dbg !344
  %19 = add nsw i32 %18, 1, !dbg !344
  store i32 %19, i32* %i, align 4, !dbg !344
  br label %10, !dbg !344

; <label>:20                                      ; preds = %10
  call void @luaL_pushresult(%struct.luaL_Buffer* %b), !dbg !345
  br label %21

; <label>:21                                      ; preds = %20, %6
  ret i32 1, !dbg !346
}

; Function Attrs: nounwind
define internal i32 @utflen(%struct.lua_State* %L) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.lua_State*, align 4
  %n = alloca i32, align 4
  %len = alloca i32, align 4
  %s = alloca i8*, align 4
  %posi = alloca i64, align 8
  %posj = alloca i64, align 8
  %s1 = alloca i8*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %2}, metadata !347), !dbg !348
  call void @llvm.dbg.declare(metadata !{i32* %n}, metadata !349), !dbg !350
  store i32 0, i32* %n, align 4, !dbg !351
  call void @llvm.dbg.declare(metadata !{i32* %len}, metadata !352), !dbg !353
  call void @llvm.dbg.declare(metadata !{i8** %s}, metadata !354), !dbg !355
  %3 = load %struct.lua_State** %2, align 4, !dbg !356
  %4 = call i8* @luaL_checklstring(%struct.lua_State* %3, i32 1, i32* %len), !dbg !356
  store i8* %4, i8** %s, align 4, !dbg !356
  call void @llvm.dbg.declare(metadata !{i64* %posi}, metadata !357), !dbg !358
  %5 = load %struct.lua_State** %2, align 4, !dbg !359
  %6 = call i64 @luaL_optinteger(%struct.lua_State* %5, i32 2, i64 1), !dbg !359
  %7 = load i32* %len, align 4, !dbg !360
  %8 = call i64 @u_posrelat(i64 %6, i32 %7), !dbg !360
  store i64 %8, i64* %posi, align 8, !dbg !360
  call void @llvm.dbg.declare(metadata !{i64* %posj}, metadata !361), !dbg !362
  %9 = load %struct.lua_State** %2, align 4, !dbg !363
  %10 = call i64 @luaL_optinteger(%struct.lua_State* %9, i32 3, i64 -1), !dbg !363
  %11 = load i32* %len, align 4, !dbg !364
  %12 = call i64 @u_posrelat(i64 %10, i32 %11), !dbg !364
  store i64 %12, i64* %posj, align 8, !dbg !364
  %13 = load i64* %posi, align 8, !dbg !365
  %14 = icmp sle i64 1, %13, !dbg !365
  br i1 %14, label %15, label %21, !dbg !365

; <label>:15                                      ; preds = %0
  %16 = load i64* %posi, align 8, !dbg !366
  %17 = add nsw i64 %16, -1, !dbg !366
  store i64 %17, i64* %posi, align 8, !dbg !366
  %18 = load i32* %len, align 4, !dbg !366
  %19 = zext i32 %18 to i64, !dbg !366
  %20 = icmp sle i64 %17, %19, !dbg !366
  br i1 %20, label %25, label %21, !dbg !366

; <label>:21                                      ; preds = %15, %0
  %22 = load %struct.lua_State** %2, align 4, !dbg !368
  %23 = call i32 @luaL_argerror(%struct.lua_State* %22, i32 2, i8* getelementptr inbounds ([31 x i8]* @.str8, i32 0, i32 0)), !dbg !368
  %24 = icmp ne i32 %23, 0, !dbg !368
  br label %25, !dbg !368

; <label>:25                                      ; preds = %21, %15
  %26 = phi i1 [ true, %15 ], [ %24, %21 ]
  %27 = zext i1 %26 to i32, !dbg !371
  %28 = load i64* %posj, align 8, !dbg !374
  %29 = add nsw i64 %28, -1, !dbg !374
  store i64 %29, i64* %posj, align 8, !dbg !374
  %30 = load i32* %len, align 4, !dbg !374
  %31 = zext i32 %30 to i64, !dbg !374
  %32 = icmp slt i64 %29, %31, !dbg !374
  br i1 %32, label %37, label %33, !dbg !374

; <label>:33                                      ; preds = %25
  %34 = load %struct.lua_State** %2, align 4, !dbg !375
  %35 = call i32 @luaL_argerror(%struct.lua_State* %34, i32 3, i8* getelementptr inbounds ([29 x i8]* @.str9, i32 0, i32 0)), !dbg !375
  %36 = icmp ne i32 %35, 0, !dbg !375
  br label %37, !dbg !375

; <label>:37                                      ; preds = %33, %25
  %38 = phi i1 [ true, %25 ], [ %36, %33 ]
  %39 = zext i1 %38 to i32, !dbg !377
  br label %40, !dbg !380

; <label>:40                                      ; preds = %57, %37
  %41 = load i64* %posi, align 8, !dbg !381
  %42 = load i64* %posj, align 8, !dbg !381
  %43 = icmp sle i64 %41, %42, !dbg !381
  br i1 %43, label %44, label %66, !dbg !381

; <label>:44                                      ; preds = %40
  call void @llvm.dbg.declare(metadata !{i8** %s1}, metadata !383), !dbg !385
  %45 = load i8** %s, align 4, !dbg !386
  %46 = load i64* %posi, align 8, !dbg !386
  %47 = trunc i64 %46 to i32, !dbg !386
  %48 = getelementptr inbounds i8* %45, i32 %47, !dbg !386
  %49 = call i8* @utf8_decode(i8* %48, i32* null), !dbg !386
  store i8* %49, i8** %s1, align 4, !dbg !386
  %50 = load i8** %s1, align 4, !dbg !387
  %51 = icmp eq i8* %50, null, !dbg !387
  br i1 %51, label %52, label %57, !dbg !387

; <label>:52                                      ; preds = %44
  %53 = load %struct.lua_State** %2, align 4, !dbg !389
  call void @lua_pushnil(%struct.lua_State* %53), !dbg !389
  %54 = load %struct.lua_State** %2, align 4, !dbg !391
  %55 = load i64* %posi, align 8, !dbg !391
  %56 = add nsw i64 %55, 1, !dbg !391
  call void @lua_pushinteger(%struct.lua_State* %54, i64 %56), !dbg !391
  store i32 2, i32* %1, !dbg !392
  br label %70, !dbg !392

; <label>:57                                      ; preds = %44
  %58 = load i8** %s1, align 4, !dbg !393
  %59 = load i8** %s, align 4, !dbg !393
  %60 = ptrtoint i8* %58 to i32, !dbg !393
  %61 = ptrtoint i8* %59 to i32, !dbg !393
  %62 = sub i32 %60, %61, !dbg !393
  %63 = sext i32 %62 to i64, !dbg !393
  store i64 %63, i64* %posi, align 8, !dbg !393
  %64 = load i32* %n, align 4, !dbg !394
  %65 = add nsw i32 %64, 1, !dbg !394
  store i32 %65, i32* %n, align 4, !dbg !394
  br label %40, !dbg !395

; <label>:66                                      ; preds = %40
  %67 = load %struct.lua_State** %2, align 4, !dbg !396
  %68 = load i32* %n, align 4, !dbg !396
  %69 = sext i32 %68 to i64, !dbg !396
  call void @lua_pushinteger(%struct.lua_State* %67, i64 %69), !dbg !396
  store i32 1, i32* %1, !dbg !397
  br label %70, !dbg !397

; <label>:70                                      ; preds = %66, %52
  %71 = load i32* %1, !dbg !398
  ret i32 %71, !dbg !398
}

; Function Attrs: nounwind
define internal i32 @iter_codes(%struct.lua_State* %L) #0 {
  %1 = alloca %struct.lua_State*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !399), !dbg !400
  %2 = load %struct.lua_State** %1, align 4, !dbg !401
  %3 = call i8* @luaL_checklstring(%struct.lua_State* %2, i32 1, i32* null), !dbg !401
  %4 = load %struct.lua_State** %1, align 4, !dbg !402
  call void @lua_pushcclosure(%struct.lua_State* %4, i32 (%struct.lua_State*)* @iter_aux, i32 0), !dbg !402
  %5 = load %struct.lua_State** %1, align 4, !dbg !403
  call void @lua_pushvalue(%struct.lua_State* %5, i32 1), !dbg !403
  %6 = load %struct.lua_State** %1, align 4, !dbg !404
  call void @lua_pushinteger(%struct.lua_State* %6, i64 0), !dbg !404
  ret i32 3, !dbg !405
}

declare i8* @luaL_checklstring(%struct.lua_State*, i32, i32*) #2

declare void @lua_pushcclosure(%struct.lua_State*, i32 (%struct.lua_State*)*, i32) #2

; Function Attrs: nounwind
define internal i32 @iter_aux(%struct.lua_State* %L) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.lua_State*, align 4
  %len = alloca i32, align 4
  %s = alloca i8*, align 4
  %n = alloca i64, align 8
  %code = alloca i32, align 4
  %next = alloca i8*, align 4
  store %struct.lua_State* %L, %struct.lua_State** %2, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %2}, metadata !406), !dbg !407
  call void @llvm.dbg.declare(metadata !{i32* %len}, metadata !408), !dbg !409
  call void @llvm.dbg.declare(metadata !{i8** %s}, metadata !410), !dbg !411
  %3 = load %struct.lua_State** %2, align 4, !dbg !412
  %4 = call i8* @luaL_checklstring(%struct.lua_State* %3, i32 1, i32* %len), !dbg !412
  store i8* %4, i8** %s, align 4, !dbg !412
  call void @llvm.dbg.declare(metadata !{i64* %n}, metadata !413), !dbg !414
  %5 = load %struct.lua_State** %2, align 4, !dbg !415
  %6 = call i64 @lua_tointegerx(%struct.lua_State* %5, i32 2, i32* null), !dbg !415
  %7 = sub nsw i64 %6, 1, !dbg !415
  store i64 %7, i64* %n, align 8, !dbg !415
  %8 = load i64* %n, align 8, !dbg !416
  %9 = icmp slt i64 %8, 0, !dbg !416
  br i1 %9, label %10, label %11, !dbg !416

; <label>:10                                      ; preds = %0
  store i64 0, i64* %n, align 8, !dbg !418
  br label %33, !dbg !418

; <label>:11                                      ; preds = %0
  %12 = load i64* %n, align 8, !dbg !419
  %13 = load i32* %len, align 4, !dbg !419
  %14 = zext i32 %13 to i64, !dbg !419
  %15 = icmp slt i64 %12, %14, !dbg !419
  br i1 %15, label %16, label %32, !dbg !419

; <label>:16                                      ; preds = %11
  %17 = load i64* %n, align 8, !dbg !421
  %18 = add nsw i64 %17, 1, !dbg !421
  store i64 %18, i64* %n, align 8, !dbg !421
  br label %19, !dbg !423

; <label>:19                                      ; preds = %28, %16
  %20 = load i8** %s, align 4, !dbg !424
  %21 = load i64* %n, align 8, !dbg !424
  %22 = trunc i64 %21 to i32, !dbg !424
  %23 = getelementptr inbounds i8* %20, i32 %22, !dbg !424
  %24 = load i8* %23, align 1, !dbg !424
  %25 = zext i8 %24 to i32, !dbg !424
  %26 = and i32 %25, 192, !dbg !424
  %27 = icmp eq i32 %26, 128, !dbg !424
  br i1 %27, label %28, label %31, !dbg !424

; <label>:28                                      ; preds = %19
  %29 = load i64* %n, align 8, !dbg !427
  %30 = add nsw i64 %29, 1, !dbg !427
  store i64 %30, i64* %n, align 8, !dbg !427
  br label %19, !dbg !427

; <label>:31                                      ; preds = %19
  br label %32, !dbg !429

; <label>:32                                      ; preds = %31, %11
  br label %33

; <label>:33                                      ; preds = %32, %10
  %34 = load i64* %n, align 8, !dbg !430
  %35 = load i32* %len, align 4, !dbg !430
  %36 = zext i32 %35 to i64, !dbg !430
  %37 = icmp sge i64 %34, %36, !dbg !430
  br i1 %37, label %38, label %39, !dbg !430

; <label>:38                                      ; preds = %33
  store i32 0, i32* %1, !dbg !432
  br label %63, !dbg !432

; <label>:39                                      ; preds = %33
  call void @llvm.dbg.declare(metadata !{i32* %code}, metadata !433), !dbg !435
  call void @llvm.dbg.declare(metadata !{i8** %next}, metadata !436), !dbg !437
  %40 = load i8** %s, align 4, !dbg !438
  %41 = load i64* %n, align 8, !dbg !438
  %42 = trunc i64 %41 to i32, !dbg !438
  %43 = getelementptr inbounds i8* %40, i32 %42, !dbg !438
  %44 = call i8* @utf8_decode(i8* %43, i32* %code), !dbg !438
  store i8* %44, i8** %next, align 4, !dbg !438
  %45 = load i8** %next, align 4, !dbg !439
  %46 = icmp eq i8* %45, null, !dbg !439
  br i1 %46, label %53, label %47, !dbg !439

; <label>:47                                      ; preds = %39
  %48 = load i8** %next, align 4, !dbg !441
  %49 = load i8* %48, align 1, !dbg !441
  %50 = zext i8 %49 to i32, !dbg !441
  %51 = and i32 %50, 192, !dbg !441
  %52 = icmp eq i32 %51, 128, !dbg !441
  br i1 %52, label %53, label %56, !dbg !441

; <label>:53                                      ; preds = %47, %39
  %54 = load %struct.lua_State** %2, align 4, !dbg !443
  %55 = call i32 (%struct.lua_State*, i8*, ...)* @luaL_error(%struct.lua_State* %54, i8* getelementptr inbounds ([19 x i8]* @.str7, i32 0, i32 0)), !dbg !443
  store i32 %55, i32* %1, !dbg !443
  br label %63, !dbg !443

; <label>:56                                      ; preds = %47
  %57 = load %struct.lua_State** %2, align 4, !dbg !444
  %58 = load i64* %n, align 8, !dbg !444
  %59 = add nsw i64 %58, 1, !dbg !444
  call void @lua_pushinteger(%struct.lua_State* %57, i64 %59), !dbg !444
  %60 = load %struct.lua_State** %2, align 4, !dbg !445
  %61 = load i32* %code, align 4, !dbg !445
  %62 = sext i32 %61 to i64, !dbg !445
  call void @lua_pushinteger(%struct.lua_State* %60, i64 %62), !dbg !445
  store i32 2, i32* %1, !dbg !446
  br label %63, !dbg !446

; <label>:63                                      ; preds = %56, %53, %38
  %64 = load i32* %1, !dbg !447
  ret i32 %64, !dbg !447
}

declare void @lua_pushvalue(%struct.lua_State*, i32) #2

declare void @lua_pushinteger(%struct.lua_State*, i64) #2

declare i64 @lua_tointegerx(%struct.lua_State*, i32, i32*) #2

; Function Attrs: nounwind
define internal i8* @utf8_decode(i8* %o, i32* %val) #0 {
  %1 = alloca i8*, align 4
  %2 = alloca i8*, align 4
  %3 = alloca i32*, align 4
  %s = alloca i8*, align 4
  %c = alloca i32, align 4
  %res = alloca i32, align 4
  %count = alloca i32, align 4
  %cc = alloca i32, align 4
  store i8* %o, i8** %2, align 4
  call void @llvm.dbg.declare(metadata !{i8** %2}, metadata !448), !dbg !449
  store i32* %val, i32** %3, align 4
  call void @llvm.dbg.declare(metadata !{i32** %3}, metadata !450), !dbg !451
  call void @llvm.dbg.declare(metadata !{i8** %s}, metadata !452), !dbg !456
  %4 = load i8** %2, align 4, !dbg !457
  store i8* %4, i8** %s, align 4, !dbg !457
  call void @llvm.dbg.declare(metadata !{i32* %c}, metadata !458), !dbg !459
  %5 = load i8** %s, align 4, !dbg !460
  %6 = getelementptr inbounds i8* %5, i32 0, !dbg !460
  %7 = load i8* %6, align 1, !dbg !460
  %8 = zext i8 %7 to i32, !dbg !460
  store i32 %8, i32* %c, align 4, !dbg !460
  call void @llvm.dbg.declare(metadata !{i32* %res}, metadata !461), !dbg !462
  store i32 0, i32* %res, align 4, !dbg !463
  %9 = load i32* %c, align 4, !dbg !464
  %10 = icmp ult i32 %9, 128, !dbg !464
  br i1 %10, label %11, label %13, !dbg !464

; <label>:11                                      ; preds = %0
  %12 = load i32* %c, align 4, !dbg !466
  store i32 %12, i32* %res, align 4, !dbg !466
  br label %61, !dbg !466

; <label>:13                                      ; preds = %0
  call void @llvm.dbg.declare(metadata !{i32* %count}, metadata !467), !dbg !469
  store i32 0, i32* %count, align 4, !dbg !470
  br label %14, !dbg !471

; <label>:14                                      ; preds = %29, %13
  %15 = load i32* %c, align 4, !dbg !472
  %16 = and i32 %15, 64, !dbg !472
  %17 = icmp ne i32 %16, 0, !dbg !472
  br i1 %17, label %18, label %37, !dbg !472

; <label>:18                                      ; preds = %14
  call void @llvm.dbg.declare(metadata !{i32* %cc}, metadata !474), !dbg !476
  %19 = load i32* %count, align 4, !dbg !477
  %20 = add nsw i32 %19, 1, !dbg !477
  store i32 %20, i32* %count, align 4, !dbg !477
  %21 = load i8** %s, align 4, !dbg !477
  %22 = getelementptr inbounds i8* %21, i32 %20, !dbg !477
  %23 = load i8* %22, align 1, !dbg !477
  %24 = zext i8 %23 to i32, !dbg !477
  store i32 %24, i32* %cc, align 4, !dbg !477
  %25 = load i32* %cc, align 4, !dbg !478
  %26 = and i32 %25, 192, !dbg !478
  %27 = icmp ne i32 %26, 128, !dbg !478
  br i1 %27, label %28, label %29, !dbg !478

; <label>:28                                      ; preds = %18
  store i8* null, i8** %1, !dbg !480
  br label %70, !dbg !480

; <label>:29                                      ; preds = %18
  %30 = load i32* %res, align 4, !dbg !481
  %31 = shl i32 %30, 6, !dbg !481
  %32 = load i32* %cc, align 4, !dbg !481
  %33 = and i32 %32, 63, !dbg !481
  %34 = or i32 %31, %33, !dbg !481
  store i32 %34, i32* %res, align 4, !dbg !481
  %35 = load i32* %c, align 4, !dbg !482
  %36 = shl i32 %35, 1, !dbg !482
  store i32 %36, i32* %c, align 4, !dbg !482
  br label %14, !dbg !483

; <label>:37                                      ; preds = %14
  %38 = load i32* %c, align 4, !dbg !484
  %39 = and i32 %38, 127, !dbg !484
  %40 = load i32* %count, align 4, !dbg !484
  %41 = mul nsw i32 %40, 5, !dbg !484
  %42 = shl i32 %39, %41, !dbg !484
  %43 = load i32* %res, align 4, !dbg !484
  %44 = or i32 %43, %42, !dbg !484
  store i32 %44, i32* %res, align 4, !dbg !484
  %45 = load i32* %count, align 4, !dbg !485
  %46 = icmp sgt i32 %45, 3, !dbg !485
  br i1 %46, label %56, label %47, !dbg !485

; <label>:47                                      ; preds = %37
  %48 = load i32* %res, align 4, !dbg !487
  %49 = icmp ugt i32 %48, 1114111, !dbg !487
  br i1 %49, label %56, label %50, !dbg !487

; <label>:50                                      ; preds = %47
  %51 = load i32* %res, align 4, !dbg !489
  %52 = load i32* %count, align 4, !dbg !489
  %53 = getelementptr inbounds [4 x i32]* @utf8_decode.limits, i32 0, i32 %52, !dbg !489
  %54 = load i32* %53, align 4, !dbg !489
  %55 = icmp ule i32 %51, %54, !dbg !489
  br i1 %55, label %56, label %57, !dbg !489

; <label>:56                                      ; preds = %50, %47, %37
  store i8* null, i8** %1, !dbg !491
  br label %70, !dbg !491

; <label>:57                                      ; preds = %50
  %58 = load i32* %count, align 4, !dbg !492
  %59 = load i8** %s, align 4, !dbg !492
  %60 = getelementptr inbounds i8* %59, i32 %58, !dbg !492
  store i8* %60, i8** %s, align 4, !dbg !492
  br label %61

; <label>:61                                      ; preds = %57, %11
  %62 = load i32** %3, align 4, !dbg !493
  %63 = icmp ne i32* %62, null, !dbg !493
  br i1 %63, label %64, label %67, !dbg !493

; <label>:64                                      ; preds = %61
  %65 = load i32* %res, align 4, !dbg !495
  %66 = load i32** %3, align 4, !dbg !495
  store i32 %65, i32* %66, align 4, !dbg !495
  br label %67, !dbg !495

; <label>:67                                      ; preds = %64, %61
  %68 = load i8** %s, align 4, !dbg !497
  %69 = getelementptr inbounds i8* %68, i32 1, !dbg !497
  store i8* %69, i8** %1, !dbg !497
  br label %70, !dbg !497

; <label>:70                                      ; preds = %67, %56, %28
  %71 = load i8** %1, !dbg !498
  ret i8* %71, !dbg !498
}

declare i32 @luaL_error(%struct.lua_State*, i8*, ...) #2

; Function Attrs: nounwind
define internal i64 @u_posrelat(i64 %pos, i32 %len) #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  store i64 %pos, i64* %2, align 8
  call void @llvm.dbg.declare(metadata !{i64* %2}, metadata !499), !dbg !500
  store i32 %len, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !501), !dbg !502
  %4 = load i64* %2, align 8, !dbg !503
  %5 = icmp sge i64 %4, 0, !dbg !503
  br i1 %5, label %6, label %8, !dbg !503

; <label>:6                                       ; preds = %0
  %7 = load i64* %2, align 8, !dbg !505
  store i64 %7, i64* %1, !dbg !505
  br label %21, !dbg !505

; <label>:8                                       ; preds = %0
  %9 = load i64* %2, align 8, !dbg !507
  %10 = trunc i64 %9 to i32, !dbg !507
  %11 = sub i32 0, %10, !dbg !507
  %12 = load i32* %3, align 4, !dbg !507
  %13 = icmp ugt i32 %11, %12, !dbg !507
  br i1 %13, label %14, label %15, !dbg !507

; <label>:14                                      ; preds = %8
  store i64 0, i64* %1, !dbg !509
  br label %21, !dbg !509

; <label>:15                                      ; preds = %8
  %16 = load i32* %3, align 4, !dbg !511
  %17 = zext i32 %16 to i64, !dbg !511
  %18 = load i64* %2, align 8, !dbg !511
  %19 = add nsw i64 %17, %18, !dbg !511
  %20 = add nsw i64 %19, 1, !dbg !511
  store i64 %20, i64* %1, !dbg !511
  br label %21, !dbg !511

; <label>:21                                      ; preds = %15, %14, %6
  %22 = load i64* %1, !dbg !512
  ret i64 %22, !dbg !512
}

declare i64 @luaL_optinteger(%struct.lua_State*, i32, i64) #2

declare i32 @luaL_argerror(%struct.lua_State*, i32, i8*) #2

declare void @lua_pushnil(%struct.lua_State*) #2

declare i32 @lua_gettop(%struct.lua_State*) #2

; Function Attrs: nounwind
define internal void @pushutfchar(%struct.lua_State* %L, i32 %arg) #0 {
  %1 = alloca %struct.lua_State*, align 4
  %2 = alloca i32, align 4
  %code = alloca i64, align 8
  store %struct.lua_State* %L, %struct.lua_State** %1, align 4
  call void @llvm.dbg.declare(metadata !{%struct.lua_State** %1}, metadata !513), !dbg !514
  store i32 %arg, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !515), !dbg !516
  call void @llvm.dbg.declare(metadata !{i64* %code}, metadata !517), !dbg !518
  %3 = load %struct.lua_State** %1, align 4, !dbg !519
  %4 = load i32* %2, align 4, !dbg !519
  %5 = call i64 @luaL_checkinteger(%struct.lua_State* %3, i32 %4), !dbg !519
  store i64 %5, i64* %code, align 8, !dbg !519
  %6 = load i64* %code, align 8, !dbg !520
  %7 = icmp sle i64 0, %6, !dbg !520
  br i1 %7, label %8, label %11, !dbg !520

; <label>:8                                       ; preds = %0
  %9 = load i64* %code, align 8, !dbg !521
  %10 = icmp sle i64 %9, 1114111, !dbg !521
  br i1 %10, label %16, label %11, !dbg !521

; <label>:11                                      ; preds = %8, %0
  %12 = load %struct.lua_State** %1, align 4, !dbg !523
  %13 = load i32* %2, align 4, !dbg !523
  %14 = call i32 @luaL_argerror(%struct.lua_State* %12, i32 %13, i8* getelementptr inbounds ([19 x i8]* @.str10, i32 0, i32 0)), !dbg !523
  %15 = icmp ne i32 %14, 0, !dbg !523
  br label %16, !dbg !523

; <label>:16                                      ; preds = %11, %8
  %17 = phi i1 [ true, %8 ], [ %15, %11 ]
  %18 = zext i1 %17 to i32, !dbg !526
  %19 = load %struct.lua_State** %1, align 4, !dbg !529
  %20 = load i64* %code, align 8, !dbg !529
  %21 = trunc i64 %20 to i32, !dbg !529
  %22 = call i8* (%struct.lua_State*, i8*, ...)* @lua_pushfstring(%struct.lua_State* %19, i8* getelementptr inbounds ([3 x i8]* @.str11, i32 0, i32 0), i32 %21), !dbg !529
  ret void, !dbg !530
}

declare void @luaL_buffinit(%struct.lua_State*, %struct.luaL_Buffer*) #2

declare void @luaL_addvalue(%struct.luaL_Buffer*) #2

declare void @luaL_pushresult(%struct.luaL_Buffer*) #2

declare i64 @luaL_checkinteger(%struct.lua_State*, i32) #2

declare i8* @lua_pushfstring(%struct.lua_State*, i8*, ...) #2

declare void @luaL_checkstack(%struct.lua_State*, i32, i8*) #2

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!xidane.fname = !{!57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118}
!xidane.function_declaration_type = !{!57, !119, !59, !120, !61, !121, !63, !122, !65, !123, !67, !124, !69, !119, !71, !119, !73, !119, !75, !119, !77, !119, !79, !125, !81, !126, !83, !119, !85, !127, !87, !128, !89, !129, !91, !130, !93, !131, !95, !132, !97, !133, !99, !134, !101, !135, !103, !119, !105, !127, !107, !136, !109, !137, !111, !137, !113, !138, !115, !139, !117, !124}
!xidane.function_declaration_filename = !{!57, !140, !59, !141, !61, !142, !63, !141, !65, !142, !67, !142, !69, !143, !71, !143, !73, !143, !75, !143, !77, !143, !79, !141, !81, !142, !83, !143, !85, !142, !87, !142, !89, !142, !91, !143, !93, !141, !95, !143, !97, !141, !99, !141, !101, !142, !103, !142, !105, !143, !107, !141, !109, !141, !111, !141, !113, !141, !115, !142, !117, !141}
!xidane.ExternC = !{!57, !59, !61, !63, !65, !67, !79, !81, !85, !87, !89, !93, !97, !99, !101, !103, !107, !109, !111, !113, !115, !117}
!llvm.module.flags = !{!144, !145, !146, !147}
!llvm.ident = !{!148}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.0 (tags/RELEASE_350/final)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !38, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src\lutf8lib.c] [DW_LANG_C99]
!1 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src\5Clutf8lib.c", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!2 = metadata !{}
!3 = metadata !{metadata !4, metadata !14, metadata !15, metadata !16, metadata !23, metadata !24, metadata !32, metadata !33, metadata !36, metadata !37}
!4 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"luaopen_utf8", metadata !"luaopen_utf8", metadata !"", i32 250, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @luaopen_utf8, null, null, metadata !2, i32 250} ; [ DW_TAG_subprogram ] [line 250] [def] [luaopen_utf8]
!5 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lutf8lib.c", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!6 = metadata !{i32 786473, metadata !5}          ; [ DW_TAG_file_type ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lutf8lib.c]
!7 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!8 = metadata !{metadata !9, metadata !10}
!9 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!10 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !11} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from lua_State]
!11 = metadata !{i32 786454, metadata !12, null, metadata !"lua_State", i32 56, i64 0, i64 0, i64 0, i32 0, metadata !13} ; [ DW_TAG_typedef ] [lua_State] [line 56, size 0, align 0, offset 0] [from lua_State]
!12 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lua.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!13 = metadata !{i32 786451, metadata !12, null, metadata !"lua_State", i32 56, i64 0, i64 0, i32 0, i32 4, null, null, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [lua_State] [line 56, size 0, align 0, offset 0] [decl] [from ]
!14 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"iter_codes", metadata !"iter_codes", metadata !"", i32 225, metadata !7, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @iter_codes, null, null, metadata !2, i32 225} ; [ DW_TAG_subprogram ] [line 225] [local] [def] [iter_codes]
!15 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"iter_aux", metadata !"iter_aux", metadata !"", i32 201, metadata !7, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @iter_aux, null, null, metadata !2, i32 201} ; [ DW_TAG_subprogram ] [line 201] [local] [def] [iter_aux]
!16 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"utf8_decode", metadata !"utf8_decode", metadata !"", i32 40, metadata !17, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i8* (i8*, i32*)* @utf8_decode, null, null, metadata !2, i32 40} ; [ DW_TAG_subprogram ] [line 40] [local] [def] [utf8_decode]
!17 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !18, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!18 = metadata !{metadata !19, metadata !19, metadata !22}
!19 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !20} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!20 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !21} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!21 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!22 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from int]
!23 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"utflen", metadata !"utflen", metadata !"", i32 71, metadata !7, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @utflen, null, null, metadata !2, i32 71} ; [ DW_TAG_subprogram ] [line 71] [local] [def] [utflen]
!24 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"u_posrelat", metadata !"u_posrelat", metadata !"", i32 30, metadata !25, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i64 (i64, i32)* @u_posrelat, null, null, metadata !2, i32 30} ; [ DW_TAG_subprogram ] [line 30] [local] [def] [u_posrelat]
!25 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !26, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!26 = metadata !{metadata !27, metadata !27, metadata !29}
!27 = metadata !{i32 786454, metadata !12, null, metadata !"lua_Integer", i32 93, i64 0, i64 0, i64 0, i32 0, metadata !28} ; [ DW_TAG_typedef ] [lua_Integer] [line 93, size 0, align 0, offset 0] [from long long int]
!28 = metadata !{i32 786468, null, null, metadata !"long long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!29 = metadata !{i32 786454, metadata !30, null, metadata !"size_t", i32 216, i64 0, i64 0, i64 0, i32 0, metadata !31} ; [ DW_TAG_typedef ] [size_t] [line 216, size 0, align 0, offset 0] [from unsigned int]
!30 = metadata !{metadata !"D:/Xilinx/SDx/2016.3/SDK/gnu/aarch32/nt/gcc-arm-linux-gnueabi/lib/gcc/arm-linux-gnueabihf/5.2.1/include\5Cstddef.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!31 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!32 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"utfchar", metadata !"utfchar", metadata !"", i32 138, metadata !7, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @utfchar, null, null, metadata !2, i32 138} ; [ DW_TAG_subprogram ] [line 138] [local] [def] [utfchar]
!33 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"pushutfchar", metadata !"pushutfchar", metadata !"", i32 128, metadata !34, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%struct.lua_State*, i32)* @pushutfchar, null, null, metadata !2, i32 128} ; [ DW_TAG_subprogram ] [line 128] [local] [def] [pushutfchar]
!34 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !35, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!35 = metadata !{null, metadata !10, metadata !9}
!36 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"codepoint", metadata !"codepoint", metadata !"", i32 100, metadata !7, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @codepoint, null, null, metadata !2, i32 100} ; [ DW_TAG_subprogram ] [line 100] [local] [def] [codepoint]
!37 = metadata !{i32 786478, metadata !5, metadata !6, metadata !"byteoffset", metadata !"byteoffset", metadata !"", i32 160, metadata !7, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (%struct.lua_State*)* @byteoffset, null, null, metadata !2, i32 160} ; [ DW_TAG_subprogram ] [line 160] [local] [def] [byteoffset]
!38 = metadata !{metadata !39, metadata !52}
!39 = metadata !{i32 786484, i32 0, null, metadata !"funcs", metadata !"funcs", metadata !"", metadata !6, i32 238, metadata !40, i32 1, i32 1, [7 x %struct.luaL_Reg]* @funcs, null} ; [ DW_TAG_variable ] [funcs] [line 238] [local] [def]
!40 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 448, i64 32, i32 0, i32 0, metadata !41, metadata !50, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 448, align 32, offset 0] [from ]
!41 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !42} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from luaL_Reg]
!42 = metadata !{i32 786454, metadata !43, null, metadata !"luaL_Reg", i32 26, i64 0, i64 0, i64 0, i32 0, metadata !44} ; [ DW_TAG_typedef ] [luaL_Reg] [line 26, size 0, align 0, offset 0] [from luaL_Reg]
!43 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lauxlib.h", metadata !"C:\5CUsers\5CDevolutionX\5Cworkspace\5Clua\5Csrc"}
!44 = metadata !{i32 786451, metadata !43, null, metadata !"luaL_Reg", i32 23, i64 64, i64 32, i32 0, i32 0, null, metadata !45, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [luaL_Reg] [line 23, size 64, align 32, offset 0] [def] [from ]
!45 = metadata !{metadata !46, metadata !47}
!46 = metadata !{i32 786445, metadata !43, metadata !44, metadata !"name", i32 24, i64 32, i64 32, i64 0, i32 0, metadata !19} ; [ DW_TAG_member ] [name] [line 24, size 32, align 32, offset 0] [from ]
!47 = metadata !{i32 786445, metadata !43, metadata !44, metadata !"func", i32 25, i64 32, i64 32, i64 32, i32 0, metadata !48} ; [ DW_TAG_member ] [func] [line 25, size 32, align 32, offset 32] [from lua_CFunction]
!48 = metadata !{i32 786454, metadata !12, null, metadata !"lua_CFunction", i32 105, i64 0, i64 0, i64 0, i32 0, metadata !49} ; [ DW_TAG_typedef ] [lua_CFunction] [line 105, size 0, align 0, offset 0] [from ]
!49 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !7} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!50 = metadata !{metadata !51}
!51 = metadata !{i32 786465, i64 0, i64 7}        ; [ DW_TAG_subrange_type ] [0, 6]
!52 = metadata !{i32 786484, i32 0, metadata !16, metadata !"limits", metadata !"limits", metadata !"", metadata !6, i32 41, metadata !53, i32 1, i32 1, [4 x i32]* @utf8_decode.limits, null} ; [ DW_TAG_variable ] [limits] [line 41] [local] [def]
!53 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 128, i64 32, i32 0, i32 0, metadata !54, metadata !55, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 128, align 32, offset 0] [from ]
!54 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !31} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from unsigned int]
!55 = metadata !{metadata !56}
!56 = metadata !{i32 786465, i64 0, i64 4}        ; [ DW_TAG_subrange_type ] [0, 3]
!57 = metadata !{i32 (%struct.lua_State*)* @luaopen_utf8}
!58 = metadata !{metadata !"luaopen_utf8"}
!59 = metadata !{void (%struct.lua_State*, double, i32)* @luaL_checkversion_}
!60 = metadata !{metadata !"luaL_checkversion_"}
!61 = metadata !{void (%struct.lua_State*, i32, i32)* @lua_createtable}
!62 = metadata !{metadata !"lua_createtable"}
!63 = metadata !{void (%struct.lua_State*, %struct.luaL_Reg*, i32)* @luaL_setfuncs}
!64 = metadata !{metadata !"luaL_setfuncs"}
!65 = metadata !{i8* (%struct.lua_State*, i8*, i32)* @lua_pushlstring}
!66 = metadata !{metadata !"lua_pushlstring"}
!67 = metadata !{void (%struct.lua_State*, i32, i8*)* @lua_setfield}
!68 = metadata !{metadata !"lua_setfield"}
!69 = metadata !{i32 (%struct.lua_State*)* @byteoffset}
!70 = metadata !{metadata !"byteoffset"}
!71 = metadata !{i32 (%struct.lua_State*)* @codepoint}
!72 = metadata !{metadata !"codepoint"}
!73 = metadata !{i32 (%struct.lua_State*)* @utfchar}
!74 = metadata !{metadata !"utfchar"}
!75 = metadata !{i32 (%struct.lua_State*)* @utflen}
!76 = metadata !{metadata !"utflen"}
!77 = metadata !{i32 (%struct.lua_State*)* @iter_codes}
!78 = metadata !{metadata !"iter_codes"}
!79 = metadata !{i8* (%struct.lua_State*, i32, i32*)* @luaL_checklstring}
!80 = metadata !{metadata !"luaL_checklstring"}
!81 = metadata !{void (%struct.lua_State*, i32 (%struct.lua_State*)*, i32)* @lua_pushcclosure}
!82 = metadata !{metadata !"lua_pushcclosure"}
!83 = metadata !{i32 (%struct.lua_State*)* @iter_aux}
!84 = metadata !{metadata !"iter_aux"}
!85 = metadata !{void (%struct.lua_State*, i32)* @lua_pushvalue}
!86 = metadata !{metadata !"lua_pushvalue"}
!87 = metadata !{void (%struct.lua_State*, i64)* @lua_pushinteger}
!88 = metadata !{metadata !"lua_pushinteger"}
!89 = metadata !{i64 (%struct.lua_State*, i32, i32*)* @lua_tointegerx}
!90 = metadata !{metadata !"lua_tointegerx"}
!91 = metadata !{i8* (i8*, i32*)* @utf8_decode}
!92 = metadata !{metadata !"utf8_decode"}
!93 = metadata !{i32 (%struct.lua_State*, i8*, ...)* @luaL_error}
!94 = metadata !{metadata !"luaL_error"}
!95 = metadata !{i64 (i64, i32)* @u_posrelat}
!96 = metadata !{metadata !"u_posrelat"}
!97 = metadata !{i64 (%struct.lua_State*, i32, i64)* @luaL_optinteger}
!98 = metadata !{metadata !"luaL_optinteger"}
!99 = metadata !{i32 (%struct.lua_State*, i32, i8*)* @luaL_argerror}
!100 = metadata !{metadata !"luaL_argerror"}
!101 = metadata !{void (%struct.lua_State*)* @lua_pushnil}
!102 = metadata !{metadata !"lua_pushnil"}
!103 = metadata !{i32 (%struct.lua_State*)* @lua_gettop}
!104 = metadata !{metadata !"lua_gettop"}
!105 = metadata !{void (%struct.lua_State*, i32)* @pushutfchar}
!106 = metadata !{metadata !"pushutfchar"}
!107 = metadata !{void (%struct.lua_State*, %struct.luaL_Buffer*)* @luaL_buffinit}
!108 = metadata !{metadata !"luaL_buffinit"}
!109 = metadata !{void (%struct.luaL_Buffer*)* @luaL_addvalue}
!110 = metadata !{metadata !"luaL_addvalue"}
!111 = metadata !{void (%struct.luaL_Buffer*)* @luaL_pushresult}
!112 = metadata !{metadata !"luaL_pushresult"}
!113 = metadata !{i64 (%struct.lua_State*, i32)* @luaL_checkinteger}
!114 = metadata !{metadata !"luaL_checkinteger"}
!115 = metadata !{i8* (%struct.lua_State*, i8*, ...)* @lua_pushfstring}
!116 = metadata !{metadata !"lua_pushfstring"}
!117 = metadata !{void (%struct.lua_State*, i32, i8*)* @luaL_checkstack}
!118 = metadata !{metadata !"luaL_checkstack"}
!119 = metadata !{metadata !"int.lua_State *.1"}
!120 = metadata !{metadata !"void.lua_State *.1.lua_Number.0.size_t.0"}
!121 = metadata !{metadata !"void.lua_State *.1.int.0.int.0"}
!122 = metadata !{metadata !"void.lua_State *.1.const luaL_Reg *.1.int.0"}
!123 = metadata !{metadata !"const char .lua_State *.1.const char *.1.size_t.0"}
!124 = metadata !{metadata !"void.lua_State *.1.int.0.const char *.1"}
!125 = metadata !{metadata !"const char .lua_State *.1.int.0.size_t *.1"}
!126 = metadata !{metadata !"void.lua_State *.1.lua_CFunction.1.int.0"}
!127 = metadata !{metadata !"void.lua_State *.1.int.0"}
!128 = metadata !{metadata !"void.lua_State *.1.lua_Integer.0"}
!129 = metadata !{metadata !"lua_Integer.lua_State *.1.int.0.int *.1"}
!130 = metadata !{metadata !"const char .const char *.1.int *.1"}
!131 = metadata !{metadata !"int.lua_State *.1.const char *.1"}
!132 = metadata !{metadata !"lua_Integer.lua_Integer.0.size_t.0"}
!133 = metadata !{metadata !"lua_Integer.lua_State *.1.int.0.lua_Integer.0"}
!134 = metadata !{metadata !"int.lua_State *.1.int.0.const char *.1"}
!135 = metadata !{metadata !"void.lua_State *.1"}
!136 = metadata !{metadata !"void.lua_State *.1.luaL_Buffer *.1"}
!137 = metadata !{metadata !"void.luaL_Buffer *.1"}
!138 = metadata !{metadata !"lua_Integer.lua_State *.1.int.0"}
!139 = metadata !{metadata !"const char .lua_State *.1.const char *.1"}
!140 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lualib.h"}
!141 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lauxlib.h"}
!142 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lua.h"}
!143 = metadata !{metadata !"C:/Users/DevolutionX/workspace/lua/src/lutf8lib.c"}
!144 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!145 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!146 = metadata !{i32 1, metadata !"wchar_size", i32 4}
!147 = metadata !{i32 1, metadata !"min_enum_size", i32 4}
!148 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
!149 = metadata !{i32 786689, metadata !4, metadata !"L", metadata !6, i32 16777466, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 250]
!150 = metadata !{i32 250, i32 41, metadata !4, null}
!151 = metadata !{i32 251, i32 3, metadata !4, null}
!152 = metadata !{i32 252, i32 3, metadata !4, null}
!153 = metadata !{i32 253, i32 3, metadata !4, null}
!154 = metadata !{i32 254, i32 3, metadata !4, null}
!155 = metadata !{i32 786689, metadata !37, metadata !"L", metadata !6, i32 16777376, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 160]
!156 = metadata !{i32 160, i32 35, metadata !37, null}
!157 = metadata !{i32 786688, metadata !37, metadata !"len", metadata !6, i32 161, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [len] [line 161]
!158 = metadata !{i32 161, i32 10, metadata !37, null}
!159 = metadata !{i32 786688, metadata !37, metadata !"s", metadata !6, i32 162, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s] [line 162]
!160 = metadata !{i32 162, i32 15, metadata !37, null}
!161 = metadata !{i32 162, i32 19, metadata !37, null}
!162 = metadata !{i32 786688, metadata !37, metadata !"n", metadata !6, i32 163, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 163]
!163 = metadata !{i32 163, i32 15, metadata !37, null}
!164 = metadata !{i32 163, i32 20, metadata !37, null}
!165 = metadata !{i32 786688, metadata !37, metadata !"posi", metadata !6, i32 164, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [posi] [line 164]
!166 = metadata !{i32 164, i32 15, metadata !37, null}
!167 = metadata !{i32 164, i32 3, metadata !37, null}
!168 = metadata !{i32 164, i32 3, metadata !169, null}
!169 = metadata !{i32 786443, metadata !5, metadata !37, i32 164, i32 3, i32 1, i32 38} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lutf8lib.c]
!170 = metadata !{i32 164, i32 3, metadata !171, null}
!171 = metadata !{i32 786443, metadata !5, metadata !37, i32 164, i32 3, i32 2, i32 39} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lutf8lib.c]
!172 = metadata !{i32 164, i32 3, metadata !173, null}
!173 = metadata !{i32 786443, metadata !5, metadata !174, i32 164, i32 3, i32 4, i32 41} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lutf8lib.c]
!174 = metadata !{i32 786443, metadata !5, metadata !37, i32 164, i32 3, i32 3, i32 40} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lutf8lib.c]
!175 = metadata !{i32 165, i32 21, metadata !37, null}
!176 = metadata !{i32 165, i32 10, metadata !37, null}
!177 = metadata !{i32 166, i32 3, metadata !37, null}
!178 = metadata !{i32 166, i32 3, metadata !179, null}
!179 = metadata !{i32 786443, metadata !5, metadata !37, i32 166, i32 3, i32 1, i32 42} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lutf8lib.c]
!180 = metadata !{i32 166, i32 3, metadata !181, null}
!181 = metadata !{i32 786443, metadata !5, metadata !182, i32 166, i32 3, i32 4, i32 45} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lutf8lib.c]
!182 = metadata !{i32 786443, metadata !5, metadata !37, i32 166, i32 3, i32 2, i32 43} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lutf8lib.c]
!183 = metadata !{i32 166, i32 3, metadata !184, null}
!184 = metadata !{i32 786443, metadata !5, metadata !185, i32 166, i32 3, i32 5, i32 46} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lutf8lib.c]
!185 = metadata !{i32 786443, metadata !5, metadata !37, i32 166, i32 3, i32 3, i32 44} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lutf8lib.c]
!186 = metadata !{i32 168, i32 7, metadata !187, null}
!187 = metadata !{i32 786443, metadata !5, metadata !37, i32 168, i32 7, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lutf8lib.c]
!188 = metadata !{i32 170, i32 5, metadata !189, null}
!189 = metadata !{i32 786443, metadata !5, metadata !187, i32 168, i32 15, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lutf8lib.c]
!190 = metadata !{i32 170, i32 5, metadata !191, null}
!191 = metadata !{i32 786443, metadata !5, metadata !192, i32 170, i32 5, i32 5, i32 51} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lutf8lib.c]
!192 = metadata !{i32 786443, metadata !5, metadata !189, i32 170, i32 5, i32 1, i32 47} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lutf8lib.c]
!193 = metadata !{i32 170, i32 5, metadata !194, null}
!194 = metadata !{i32 786443, metadata !5, metadata !189, i32 170, i32 5, i32 2, i32 48} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lutf8lib.c]
!195 = metadata !{i32 170, i32 5, metadata !196, null}
!196 = metadata !{i32 786443, metadata !5, metadata !189, i32 170, i32 5, i32 3, i32 49} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lutf8lib.c]
!197 = metadata !{i32 170, i32 42, metadata !198, null}
!198 = metadata !{i32 786443, metadata !5, metadata !189, i32 170, i32 42, i32 4, i32 50} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lutf8lib.c]
!199 = metadata !{i32 171, i32 3, metadata !189, null}
!200 = metadata !{i32 173, i32 9, metadata !201, null}
!201 = metadata !{i32 786443, metadata !5, metadata !202, i32 173, i32 9, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lutf8lib.c]
!202 = metadata !{i32 786443, metadata !5, metadata !187, i32 172, i32 8, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lutf8lib.c]
!203 = metadata !{i32 174, i32 7, metadata !201, null}
!204 = metadata !{i32 175, i32 9, metadata !205, null}
!205 = metadata !{i32 786443, metadata !5, metadata !202, i32 175, i32 9, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lutf8lib.c]
!206 = metadata !{i32 176, i32 8, metadata !207, null}
!207 = metadata !{i32 786443, metadata !5, metadata !205, i32 175, i32 16, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lutf8lib.c]
!208 = metadata !{i32 176, i32 8, metadata !209, null}
!209 = metadata !{i32 786443, metadata !5, metadata !207, i32 176, i32 8, i32 1, i32 52} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lutf8lib.c]
!210 = metadata !{i32 176, i32 8, metadata !211, null}
!211 = metadata !{i32 786443, metadata !5, metadata !207, i32 176, i32 8, i32 2, i32 53} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lutf8lib.c]
!212 = metadata !{i32 176, i32 8, metadata !213, null}
!213 = metadata !{i32 786443, metadata !5, metadata !207, i32 176, i32 8, i32 3, i32 54} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lutf8lib.c]
!214 = metadata !{i32 177, i32 10, metadata !215, null}
!215 = metadata !{i32 786443, metadata !5, metadata !207, i32 176, i32 34, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lutf8lib.c]
!216 = metadata !{i32 178, i32 12, metadata !217, null}
!217 = metadata !{i32 786443, metadata !5, metadata !215, i32 177, i32 13, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lutf8lib.c]
!218 = metadata !{i32 179, i32 10, metadata !217, null}
!219 = metadata !{i32 179, i32 10, metadata !220, null}
!220 = metadata !{i32 786443, metadata !5, metadata !217, i32 179, i32 10, i32 1, i32 55} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lutf8lib.c]
!221 = metadata !{i32 179, i32 10, metadata !222, null}
!222 = metadata !{i32 786443, metadata !5, metadata !217, i32 179, i32 10, i32 2, i32 56} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lutf8lib.c]
!223 = metadata !{i32 179, i32 10, metadata !224, null}
!224 = metadata !{i32 786443, metadata !5, metadata !217, i32 179, i32 10, i32 3, i32 57} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lutf8lib.c]
!225 = metadata !{i32 180, i32 10, metadata !215, null}
!226 = metadata !{i32 181, i32 8, metadata !215, null}
!227 = metadata !{i32 182, i32 6, metadata !207, null}
!228 = metadata !{i32 184, i32 8, metadata !229, null}
!229 = metadata !{i32 786443, metadata !5, metadata !205, i32 183, i32 11, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lutf8lib.c]
!230 = metadata !{i32 185, i32 8, metadata !229, null}
!231 = metadata !{i32 185, i32 8, metadata !232, null}
!232 = metadata !{i32 786443, metadata !5, metadata !229, i32 185, i32 8, i32 1, i32 58} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lutf8lib.c]
!233 = metadata !{i32 185, i32 8, metadata !234, null}
!234 = metadata !{i32 786443, metadata !5, metadata !229, i32 185, i32 8, i32 2, i32 59} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lutf8lib.c]
!235 = metadata !{i32 185, i32 8, metadata !236, null}
!236 = metadata !{i32 786443, metadata !5, metadata !229, i32 185, i32 8, i32 3, i32 60} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lutf8lib.c]
!237 = metadata !{i32 186, i32 10, metadata !238, null}
!238 = metadata !{i32 786443, metadata !5, metadata !229, i32 185, i32 49, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lutf8lib.c]
!239 = metadata !{i32 187, i32 12, metadata !240, null}
!240 = metadata !{i32 786443, metadata !5, metadata !238, i32 186, i32 13, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lutf8lib.c]
!241 = metadata !{i32 188, i32 10, metadata !240, null}
!242 = metadata !{i32 188, i32 10, metadata !243, null}
!243 = metadata !{i32 786443, metadata !5, metadata !240, i32 188, i32 10, i32 1, i32 61} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lutf8lib.c]
!244 = metadata !{i32 189, i32 10, metadata !238, null}
!245 = metadata !{i32 190, i32 8, metadata !238, null}
!246 = metadata !{i32 193, i32 7, metadata !247, null}
!247 = metadata !{i32 786443, metadata !5, metadata !37, i32 193, i32 7, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lutf8lib.c]
!248 = metadata !{i32 194, i32 5, metadata !247, null}
!249 = metadata !{i32 196, i32 5, metadata !247, null}
!250 = metadata !{i32 197, i32 3, metadata !37, null}
!251 = metadata !{i32 786689, metadata !36, metadata !"L", metadata !6, i32 16777316, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 100]
!252 = metadata !{i32 100, i32 34, metadata !36, null}
!253 = metadata !{i32 786688, metadata !36, metadata !"len", metadata !6, i32 101, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [len] [line 101]
!254 = metadata !{i32 101, i32 10, metadata !36, null}
!255 = metadata !{i32 786688, metadata !36, metadata !"s", metadata !6, i32 102, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s] [line 102]
!256 = metadata !{i32 102, i32 15, metadata !36, null}
!257 = metadata !{i32 102, i32 19, metadata !36, null}
!258 = metadata !{i32 786688, metadata !36, metadata !"posi", metadata !6, i32 103, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [posi] [line 103]
!259 = metadata !{i32 103, i32 15, metadata !36, null}
!260 = metadata !{i32 103, i32 33, metadata !36, null}
!261 = metadata !{i32 103, i32 22, metadata !36, null}
!262 = metadata !{i32 786688, metadata !36, metadata !"pose", metadata !6, i32 104, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pose] [line 104]
!263 = metadata !{i32 104, i32 15, metadata !36, null}
!264 = metadata !{i32 104, i32 33, metadata !36, null}
!265 = metadata !{i32 104, i32 22, metadata !36, null}
!266 = metadata !{i32 786688, metadata !36, metadata !"n", metadata !6, i32 105, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 105]
!267 = metadata !{i32 105, i32 7, metadata !36, null}
!268 = metadata !{i32 786688, metadata !36, metadata !"se", metadata !6, i32 106, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [se] [line 106]
!269 = metadata !{i32 106, i32 15, metadata !36, null}
!270 = metadata !{i32 107, i32 3, metadata !36, null}
!271 = metadata !{i32 107, i32 3, metadata !272, null}
!272 = metadata !{i32 786443, metadata !5, metadata !36, i32 107, i32 3, i32 2, i32 63} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lutf8lib.c]
!273 = metadata !{i32 107, i32 3, metadata !274, null}
!274 = metadata !{i32 786443, metadata !5, metadata !275, i32 107, i32 3, i32 3, i32 64} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lutf8lib.c]
!275 = metadata !{i32 786443, metadata !5, metadata !36, i32 107, i32 3, i32 1, i32 62} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lutf8lib.c]
!276 = metadata !{i32 108, i32 3, metadata !36, null}
!277 = metadata !{i32 108, i32 3, metadata !278, null}
!278 = metadata !{i32 786443, metadata !5, metadata !36, i32 108, i32 3, i32 2, i32 66} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lutf8lib.c]
!279 = metadata !{i32 108, i32 3, metadata !280, null}
!280 = metadata !{i32 786443, metadata !5, metadata !281, i32 108, i32 3, i32 3, i32 67} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lutf8lib.c]
!281 = metadata !{i32 786443, metadata !5, metadata !36, i32 108, i32 3, i32 1, i32 65} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lutf8lib.c]
!282 = metadata !{i32 109, i32 7, metadata !283, null}
!283 = metadata !{i32 786443, metadata !5, metadata !36, i32 109, i32 7, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lutf8lib.c]
!284 = metadata !{i32 109, i32 20, metadata !285, null}
!285 = metadata !{i32 786443, metadata !5, metadata !283, i32 109, i32 20, i32 1, i32 68} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lutf8lib.c]
!286 = metadata !{i32 110, i32 7, metadata !287, null}
!287 = metadata !{i32 786443, metadata !5, metadata !36, i32 110, i32 7, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lutf8lib.c]
!288 = metadata !{i32 111, i32 12, metadata !287, null}
!289 = metadata !{i32 112, i32 3, metadata !36, null}
!290 = metadata !{i32 113, i32 3, metadata !36, null}
!291 = metadata !{i32 114, i32 3, metadata !36, null}
!292 = metadata !{i32 115, i32 3, metadata !36, null}
!293 = metadata !{i32 116, i32 8, metadata !294, null}
!294 = metadata !{i32 786443, metadata !5, metadata !36, i32 116, i32 3, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lutf8lib.c]
!295 = metadata !{i32 116, i32 8, metadata !296, null}
!296 = metadata !{i32 786443, metadata !5, metadata !294, i32 116, i32 8, i32 1, i32 69} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lutf8lib.c]
!297 = metadata !{i32 786688, metadata !298, metadata !"code", metadata !6, i32 117, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [code] [line 117]
!298 = metadata !{i32 786443, metadata !5, metadata !294, i32 116, i32 32, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lutf8lib.c]
!299 = metadata !{i32 117, i32 9, metadata !298, null}
!300 = metadata !{i32 118, i32 9, metadata !298, null}
!301 = metadata !{i32 119, i32 9, metadata !302, null}
!302 = metadata !{i32 786443, metadata !5, metadata !298, i32 119, i32 9, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lutf8lib.c]
!303 = metadata !{i32 120, i32 14, metadata !302, null}
!304 = metadata !{i32 121, i32 5, metadata !298, null}
!305 = metadata !{i32 122, i32 5, metadata !298, null}
!306 = metadata !{i32 123, i32 3, metadata !298, null}
!307 = metadata !{i32 124, i32 3, metadata !36, null}
!308 = metadata !{i32 125, i32 1, metadata !36, null}
!309 = metadata !{i32 786689, metadata !32, metadata !"L", metadata !6, i32 16777354, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 138]
!310 = metadata !{i32 138, i32 32, metadata !32, null}
!311 = metadata !{i32 786688, metadata !32, metadata !"n", metadata !6, i32 139, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 139]
!312 = metadata !{i32 139, i32 7, metadata !32, null}
!313 = metadata !{i32 139, i32 11, metadata !32, null}
!314 = metadata !{i32 140, i32 7, metadata !315, null}
!315 = metadata !{i32 786443, metadata !5, metadata !32, i32 140, i32 7, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lutf8lib.c]
!316 = metadata !{i32 141, i32 5, metadata !315, null}
!317 = metadata !{i32 786688, metadata !318, metadata !"i", metadata !6, i32 143, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 143]
!318 = metadata !{i32 786443, metadata !5, metadata !315, i32 142, i32 8, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lutf8lib.c]
!319 = metadata !{i32 143, i32 9, metadata !318, null}
!320 = metadata !{i32 786688, metadata !318, metadata !"b", metadata !6, i32 144, metadata !321, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b] [line 144]
!321 = metadata !{i32 786454, metadata !43, null, metadata !"luaL_Buffer", i32 146, i64 0, i64 0, i64 0, i32 0, metadata !322} ; [ DW_TAG_typedef ] [luaL_Buffer] [line 146, size 0, align 0, offset 0] [from luaL_Buffer]
!322 = metadata !{i32 786451, metadata !43, null, metadata !"luaL_Buffer", i32 140, i64 65664, i64 32, i32 0, i32 0, null, metadata !323, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [luaL_Buffer] [line 140, size 65664, align 32, offset 0] [def] [from ]
!323 = metadata !{metadata !324, metadata !326, metadata !327, metadata !328, metadata !329}
!324 = metadata !{i32 786445, metadata !43, metadata !322, metadata !"b", i32 141, i64 32, i64 32, i64 0, i32 0, metadata !325} ; [ DW_TAG_member ] [b] [line 141, size 32, align 32, offset 0] [from ]
!325 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !21} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from char]
!326 = metadata !{i32 786445, metadata !43, metadata !322, metadata !"size", i32 142, i64 32, i64 32, i64 32, i32 0, metadata !29} ; [ DW_TAG_member ] [size] [line 142, size 32, align 32, offset 32] [from size_t]
!327 = metadata !{i32 786445, metadata !43, metadata !322, metadata !"n", i32 143, i64 32, i64 32, i64 64, i32 0, metadata !29} ; [ DW_TAG_member ] [n] [line 143, size 32, align 32, offset 64] [from size_t]
!328 = metadata !{i32 786445, metadata !43, metadata !322, metadata !"L", i32 144, i64 32, i64 32, i64 96, i32 0, metadata !10} ; [ DW_TAG_member ] [L] [line 144, size 32, align 32, offset 96] [from ]
!329 = metadata !{i32 786445, metadata !43, metadata !322, metadata !"initb", i32 145, i64 65536, i64 8, i64 128, i32 0, metadata !330} ; [ DW_TAG_member ] [initb] [line 145, size 65536, align 8, offset 128] [from ]
!330 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 65536, i64 8, i32 0, i32 0, metadata !21, metadata !331, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 65536, align 8, offset 0] [from char]
!331 = metadata !{metadata !332}
!332 = metadata !{i32 786465, i64 0, i64 8192}    ; [ DW_TAG_subrange_type ] [0, 8191]
!333 = metadata !{i32 144, i32 17, metadata !318, null}
!334 = metadata !{i32 145, i32 5, metadata !318, null}
!335 = metadata !{i32 146, i32 10, metadata !336, null}
!336 = metadata !{i32 786443, metadata !5, metadata !318, i32 146, i32 5, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lutf8lib.c]
!337 = metadata !{i32 146, i32 10, metadata !338, null}
!338 = metadata !{i32 786443, metadata !5, metadata !339, i32 146, i32 10, i32 2, i32 71} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lutf8lib.c]
!339 = metadata !{i32 786443, metadata !5, metadata !336, i32 146, i32 10, i32 1, i32 70} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lutf8lib.c]
!340 = metadata !{i32 147, i32 7, metadata !341, null}
!341 = metadata !{i32 786443, metadata !5, metadata !336, i32 146, i32 30, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lutf8lib.c]
!342 = metadata !{i32 148, i32 7, metadata !341, null}
!343 = metadata !{i32 149, i32 5, metadata !341, null}
!344 = metadata !{i32 146, i32 25, metadata !336, null}
!345 = metadata !{i32 150, i32 5, metadata !318, null}
!346 = metadata !{i32 152, i32 3, metadata !32, null}
!347 = metadata !{i32 786689, metadata !23, metadata !"L", metadata !6, i32 16777287, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 71]
!348 = metadata !{i32 71, i32 31, metadata !23, null}
!349 = metadata !{i32 786688, metadata !23, metadata !"n", metadata !6, i32 72, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 72]
!350 = metadata !{i32 72, i32 7, metadata !23, null}
!351 = metadata !{i32 72, i32 3, metadata !23, null}
!352 = metadata !{i32 786688, metadata !23, metadata !"len", metadata !6, i32 73, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [len] [line 73]
!353 = metadata !{i32 73, i32 10, metadata !23, null}
!354 = metadata !{i32 786688, metadata !23, metadata !"s", metadata !6, i32 74, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s] [line 74]
!355 = metadata !{i32 74, i32 15, metadata !23, null}
!356 = metadata !{i32 74, i32 19, metadata !23, null}
!357 = metadata !{i32 786688, metadata !23, metadata !"posi", metadata !6, i32 75, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [posi] [line 75]
!358 = metadata !{i32 75, i32 15, metadata !23, null}
!359 = metadata !{i32 75, i32 33, metadata !23, null}
!360 = metadata !{i32 75, i32 22, metadata !23, null}
!361 = metadata !{i32 786688, metadata !23, metadata !"posj", metadata !6, i32 76, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [posj] [line 76]
!362 = metadata !{i32 76, i32 15, metadata !23, null}
!363 = metadata !{i32 76, i32 33, metadata !23, null}
!364 = metadata !{i32 76, i32 22, metadata !23, null}
!365 = metadata !{i32 77, i32 3, metadata !23, null}
!366 = metadata !{i32 77, i32 3, metadata !367, null}
!367 = metadata !{i32 786443, metadata !5, metadata !23, i32 77, i32 3, i32 1, i32 72} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lutf8lib.c]
!368 = metadata !{i32 77, i32 3, metadata !369, null}
!369 = metadata !{i32 786443, metadata !5, metadata !370, i32 77, i32 3, i32 4, i32 75} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lutf8lib.c]
!370 = metadata !{i32 786443, metadata !5, metadata !23, i32 77, i32 3, i32 2, i32 73} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lutf8lib.c]
!371 = metadata !{i32 77, i32 3, metadata !372, null}
!372 = metadata !{i32 786443, metadata !5, metadata !373, i32 77, i32 3, i32 5, i32 76} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lutf8lib.c]
!373 = metadata !{i32 786443, metadata !5, metadata !23, i32 77, i32 3, i32 3, i32 74} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lutf8lib.c]
!374 = metadata !{i32 79, i32 3, metadata !23, null}
!375 = metadata !{i32 79, i32 3, metadata !376, null}
!376 = metadata !{i32 786443, metadata !5, metadata !23, i32 79, i32 3, i32 2, i32 78} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lutf8lib.c]
!377 = metadata !{i32 79, i32 3, metadata !378, null}
!378 = metadata !{i32 786443, metadata !5, metadata !379, i32 79, i32 3, i32 3, i32 79} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lutf8lib.c]
!379 = metadata !{i32 786443, metadata !5, metadata !23, i32 79, i32 3, i32 1, i32 77} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lutf8lib.c]
!380 = metadata !{i32 81, i32 3, metadata !23, null}
!381 = metadata !{i32 81, i32 3, metadata !382, null}
!382 = metadata !{i32 786443, metadata !5, metadata !23, i32 81, i32 3, i32 1, i32 80} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lutf8lib.c]
!383 = metadata !{i32 786688, metadata !384, metadata !"s1", metadata !6, i32 82, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s1] [line 82]
!384 = metadata !{i32 786443, metadata !5, metadata !23, i32 81, i32 24, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lutf8lib.c]
!385 = metadata !{i32 82, i32 17, metadata !384, null}
!386 = metadata !{i32 82, i32 22, metadata !384, null}
!387 = metadata !{i32 83, i32 9, metadata !388, null}
!388 = metadata !{i32 786443, metadata !5, metadata !384, i32 83, i32 9, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lutf8lib.c]
!389 = metadata !{i32 84, i32 7, metadata !390, null}
!390 = metadata !{i32 786443, metadata !5, metadata !388, i32 83, i32 21, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lutf8lib.c]
!391 = metadata !{i32 85, i32 7, metadata !390, null}
!392 = metadata !{i32 86, i32 7, metadata !390, null}
!393 = metadata !{i32 88, i32 5, metadata !384, null}
!394 = metadata !{i32 89, i32 5, metadata !384, null}
!395 = metadata !{i32 90, i32 3, metadata !384, null}
!396 = metadata !{i32 91, i32 3, metadata !23, null}
!397 = metadata !{i32 92, i32 3, metadata !23, null}
!398 = metadata !{i32 93, i32 1, metadata !23, null}
!399 = metadata !{i32 786689, metadata !14, metadata !"L", metadata !6, i32 16777441, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 225]
!400 = metadata !{i32 225, i32 35, metadata !14, null}
!401 = metadata !{i32 226, i32 3, metadata !14, null}
!402 = metadata !{i32 227, i32 3, metadata !14, null}
!403 = metadata !{i32 228, i32 3, metadata !14, null}
!404 = metadata !{i32 229, i32 3, metadata !14, null}
!405 = metadata !{i32 230, i32 3, metadata !14, null}
!406 = metadata !{i32 786689, metadata !15, metadata !"L", metadata !6, i32 16777417, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 201]
!407 = metadata !{i32 201, i32 33, metadata !15, null}
!408 = metadata !{i32 786688, metadata !15, metadata !"len", metadata !6, i32 202, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [len] [line 202]
!409 = metadata !{i32 202, i32 10, metadata !15, null}
!410 = metadata !{i32 786688, metadata !15, metadata !"s", metadata !6, i32 203, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s] [line 203]
!411 = metadata !{i32 203, i32 15, metadata !15, null}
!412 = metadata !{i32 203, i32 19, metadata !15, null}
!413 = metadata !{i32 786688, metadata !15, metadata !"n", metadata !6, i32 204, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 204]
!414 = metadata !{i32 204, i32 15, metadata !15, null}
!415 = metadata !{i32 204, i32 19, metadata !15, null}
!416 = metadata !{i32 205, i32 7, metadata !417, null}
!417 = metadata !{i32 786443, metadata !5, metadata !15, i32 205, i32 7, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lutf8lib.c]
!418 = metadata !{i32 206, i32 5, metadata !417, null}
!419 = metadata !{i32 207, i32 12, metadata !420, null}
!420 = metadata !{i32 786443, metadata !5, metadata !417, i32 207, i32 12, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lutf8lib.c]
!421 = metadata !{i32 208, i32 5, metadata !422, null}
!422 = metadata !{i32 786443, metadata !5, metadata !420, i32 207, i32 34, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lutf8lib.c]
!423 = metadata !{i32 209, i32 5, metadata !422, null}
!424 = metadata !{i32 209, i32 5, metadata !425, null}
!425 = metadata !{i32 786443, metadata !5, metadata !426, i32 209, i32 5, i32 3, i32 83} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lutf8lib.c]
!426 = metadata !{i32 786443, metadata !5, metadata !422, i32 209, i32 5, i32 1, i32 81} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lutf8lib.c]
!427 = metadata !{i32 209, i32 27, metadata !428, null}
!428 = metadata !{i32 786443, metadata !5, metadata !422, i32 209, i32 27, i32 2, i32 82} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lutf8lib.c]
!429 = metadata !{i32 210, i32 3, metadata !422, null}
!430 = metadata !{i32 211, i32 7, metadata !431, null}
!431 = metadata !{i32 786443, metadata !5, metadata !15, i32 211, i32 7, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lutf8lib.c]
!432 = metadata !{i32 212, i32 5, metadata !431, null}
!433 = metadata !{i32 786688, metadata !434, metadata !"code", metadata !6, i32 214, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [code] [line 214]
!434 = metadata !{i32 786443, metadata !5, metadata !431, i32 213, i32 8, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lutf8lib.c]
!435 = metadata !{i32 214, i32 9, metadata !434, null}
!436 = metadata !{i32 786688, metadata !434, metadata !"next", metadata !6, i32 215, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [next] [line 215]
!437 = metadata !{i32 215, i32 17, metadata !434, null}
!438 = metadata !{i32 215, i32 24, metadata !434, null}
!439 = metadata !{i32 216, i32 9, metadata !440, null}
!440 = metadata !{i32 786443, metadata !5, metadata !434, i32 216, i32 9, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lutf8lib.c]
!441 = metadata !{i32 216, i32 9, metadata !442, null}
!442 = metadata !{i32 786443, metadata !5, metadata !440, i32 216, i32 9, i32 1, i32 84} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lutf8lib.c]
!443 = metadata !{i32 217, i32 14, metadata !440, null}
!444 = metadata !{i32 218, i32 5, metadata !434, null}
!445 = metadata !{i32 219, i32 5, metadata !434, null}
!446 = metadata !{i32 220, i32 5, metadata !434, null}
!447 = metadata !{i32 222, i32 1, metadata !15, null}
!448 = metadata !{i32 786689, metadata !16, metadata !"o", metadata !6, i32 16777256, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [o] [line 40]
!449 = metadata !{i32 40, i32 45, metadata !16, null}
!450 = metadata !{i32 786689, metadata !16, metadata !"val", metadata !6, i32 33554472, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [val] [line 40]
!451 = metadata !{i32 40, i32 53, metadata !16, null}
!452 = metadata !{i32 786688, metadata !16, metadata !"s", metadata !6, i32 42, metadata !453, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s] [line 42]
!453 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 32, i64 32, i64 0, i32 0, metadata !454} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!454 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !455} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from unsigned char]
!455 = metadata !{i32 786468, null, null, metadata !"unsigned char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [unsigned char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!456 = metadata !{i32 42, i32 24, metadata !16, null}
!457 = metadata !{i32 42, i32 3, metadata !16, null}
!458 = metadata !{i32 786688, metadata !16, metadata !"c", metadata !6, i32 43, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c] [line 43]
!459 = metadata !{i32 43, i32 16, metadata !16, null}
!460 = metadata !{i32 43, i32 3, metadata !16, null}
!461 = metadata !{i32 786688, metadata !16, metadata !"res", metadata !6, i32 44, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [res] [line 44]
!462 = metadata !{i32 44, i32 16, metadata !16, null}
!463 = metadata !{i32 44, i32 3, metadata !16, null}
!464 = metadata !{i32 45, i32 7, metadata !465, null}
!465 = metadata !{i32 786443, metadata !5, metadata !16, i32 45, i32 7, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lutf8lib.c]
!466 = metadata !{i32 46, i32 5, metadata !465, null}
!467 = metadata !{i32 786688, metadata !468, metadata !"count", metadata !6, i32 48, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [count] [line 48]
!468 = metadata !{i32 786443, metadata !5, metadata !465, i32 47, i32 8, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lutf8lib.c]
!469 = metadata !{i32 48, i32 9, metadata !468, null}
!470 = metadata !{i32 48, i32 5, metadata !468, null}
!471 = metadata !{i32 49, i32 5, metadata !468, null}
!472 = metadata !{i32 49, i32 5, metadata !473, null}
!473 = metadata !{i32 786443, metadata !5, metadata !468, i32 49, i32 5, i32 1, i32 85} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lutf8lib.c]
!474 = metadata !{i32 786688, metadata !475, metadata !"cc", metadata !6, i32 50, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cc] [line 50]
!475 = metadata !{i32 786443, metadata !5, metadata !468, i32 49, i32 22, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lutf8lib.c]
!476 = metadata !{i32 50, i32 11, metadata !475, null}
!477 = metadata !{i32 50, i32 7, metadata !475, null}
!478 = metadata !{i32 51, i32 11, metadata !479, null}
!479 = metadata !{i32 786443, metadata !5, metadata !475, i32 51, i32 11, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lutf8lib.c]
!480 = metadata !{i32 52, i32 9, metadata !479, null}
!481 = metadata !{i32 53, i32 7, metadata !475, null}
!482 = metadata !{i32 54, i32 7, metadata !475, null}
!483 = metadata !{i32 55, i32 5, metadata !475, null}
!484 = metadata !{i32 56, i32 5, metadata !468, null}
!485 = metadata !{i32 57, i32 9, metadata !486, null}
!486 = metadata !{i32 786443, metadata !5, metadata !468, i32 57, i32 9, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lutf8lib.c]
!487 = metadata !{i32 57, i32 9, metadata !488, null}
!488 = metadata !{i32 786443, metadata !5, metadata !486, i32 57, i32 9, i32 1, i32 86} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lutf8lib.c]
!489 = metadata !{i32 57, i32 9, metadata !490, null}
!490 = metadata !{i32 786443, metadata !5, metadata !486, i32 57, i32 9, i32 2, i32 87} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lutf8lib.c]
!491 = metadata !{i32 58, i32 7, metadata !486, null} ; [ DW_TAG_imported_module ]
!492 = metadata !{i32 59, i32 5, metadata !468, null}
!493 = metadata !{i32 61, i32 7, metadata !494, null}
!494 = metadata !{i32 786443, metadata !5, metadata !16, i32 61, i32 7, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lutf8lib.c]
!495 = metadata !{i32 61, i32 12, metadata !496, null}
!496 = metadata !{i32 786443, metadata !5, metadata !494, i32 61, i32 12, i32 1, i32 88} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lutf8lib.c]
!497 = metadata !{i32 62, i32 3, metadata !16, null}
!498 = metadata !{i32 63, i32 1, metadata !16, null}
!499 = metadata !{i32 786689, metadata !24, metadata !"pos", metadata !6, i32 16777246, metadata !27, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pos] [line 30]
!500 = metadata !{i32 30, i32 44, metadata !24, null}
!501 = metadata !{i32 786689, metadata !24, metadata !"len", metadata !6, i32 33554462, metadata !29, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [len] [line 30]
!502 = metadata !{i32 30, i32 56, metadata !24, null}
!503 = metadata !{i32 31, i32 7, metadata !504, null}
!504 = metadata !{i32 786443, metadata !5, metadata !24, i32 31, i32 7, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lutf8lib.c]
!505 = metadata !{i32 31, i32 17, metadata !506, null}
!506 = metadata !{i32 786443, metadata !5, metadata !504, i32 31, i32 17, i32 1, i32 89} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lutf8lib.c]
!507 = metadata !{i32 32, i32 12, metadata !508, null}
!508 = metadata !{i32 786443, metadata !5, metadata !504, i32 32, i32 12, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lutf8lib.c]
!509 = metadata !{i32 32, i32 36, metadata !510, null}
!510 = metadata !{i32 786443, metadata !5, metadata !508, i32 32, i32 36, i32 1, i32 90} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lutf8lib.c]
!511 = metadata !{i32 33, i32 8, metadata !508, null}
!512 = metadata !{i32 34, i32 1, metadata !24, null}
!513 = metadata !{i32 786689, metadata !33, metadata !"L", metadata !6, i32 16777344, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [L] [line 128]
!514 = metadata !{i32 128, i32 37, metadata !33, null}
!515 = metadata !{i32 786689, metadata !33, metadata !"arg", metadata !6, i32 33554560, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [arg] [line 128]
!516 = metadata !{i32 128, i32 44, metadata !33, null}
!517 = metadata !{i32 786688, metadata !33, metadata !"code", metadata !6, i32 129, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [code] [line 129]
!518 = metadata !{i32 129, i32 15, metadata !33, null}
!519 = metadata !{i32 129, i32 22, metadata !33, null}
!520 = metadata !{i32 130, i32 3, metadata !33, null}
!521 = metadata !{i32 130, i32 3, metadata !522, null}
!522 = metadata !{i32 786443, metadata !5, metadata !33, i32 130, i32 3, i32 1, i32 91} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lutf8lib.c]
!523 = metadata !{i32 130, i32 3, metadata !524, null}
!524 = metadata !{i32 786443, metadata !5, metadata !525, i32 130, i32 3, i32 4, i32 94} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lutf8lib.c]
!525 = metadata !{i32 786443, metadata !5, metadata !33, i32 130, i32 3, i32 2, i32 92} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lutf8lib.c]
!526 = metadata !{i32 130, i32 3, metadata !527, null}
!527 = metadata !{i32 786443, metadata !5, metadata !528, i32 130, i32 3, i32 5, i32 95} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lutf8lib.c]
!528 = metadata !{i32 786443, metadata !5, metadata !33, i32 130, i32 3, i32 3, i32 93} ; [ DW_TAG_lexical_block ] [C:\Users\DevolutionX\workspace\lua\src/C:/Users/DevolutionX/workspace/lua/src/lutf8lib.c]
!529 = metadata !{i32 131, i32 3, metadata !33, null}
!530 = metadata !{i32 132, i32 1, metadata !33, null}
